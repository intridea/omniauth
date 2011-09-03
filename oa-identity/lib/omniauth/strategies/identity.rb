module OmniAuth
  module Strategies
    # The identity strategy allows you to provide simple internal 
    # user authentication using the same process flow that you
    # use for external OmniAuth providers.
    class Identity
      include OmniAuth::Strategy
 
      # @option options [Symbol] :name The name you want to use for this strategy.
      # @option options [Symbol] :model The class you wish to use as the identity model.
      # @option options [Array] :fields ([:name, :email]) Required information at identity registration.
      def initialize(app, options = {})
        options[:fields] ||= [:name, :email]
        super(app, options[:name] || :identity, options.dup)
      end

      def request_phase
        OmniAuth::Form.build(
          :title => (options[:title] || "Identity Verification"),
          :url => callback_path
        ) do |f|
          f.text_field 'Login', 'auth_key'
          f.password_field 'Password', 'password'
          f.html "<p align='center'><a href='#{registration_path}'>Create an Identity</a></p>"
        end.to_response 
      end

      def callback_phase
        return fail!(:invalid_credentials) unless identity
        super
      end

      def other_phase
        if on_registration_path?
          if request.get?
            registration_form
          elsif request.post?
            registration_phase
          end
        else
          call_app!
        end
      end

      def registration_form
        OmniAuth::Form.build(:title => 'Register Identity') do |f|
          options[:fields].each do |field|
            f.text_field field.to_s.capitalize, field.to_s
          end
          f.password_field 'Password', 'password'
          f.password_field 'Confirm Password', 'password_confirmation'
        end.to_response
      end

      def registration_phase
        attributes = (options[:fields] + [:password, :password_confirmation]).inject({}){|h,k| h[k] = request[k.to_s]; h}
        @identity = model.create(attributes)
        if @identity.persisted?
          env['PATH_INFO'] = callback_path
          callback_phase
        else
          if options[:on_failed_registration]
            self.env['omniauth.identity'] = @identity
            options[:on_failed_registration].call(self.env)
          else
            registration_form
          end
        end
      end

      def auth_hash 
        {
          'provider' => name.to_s,
          'uid' => identity.uid,
          'user_info' => identity.user_info
        }
      end
      
      def registration_path
        options[:registration_path] || "#{path_prefix}/#{name}/register"
      end

      def on_registration_path?
        on_path?(registration_path)
      end

      def identity
        @identity ||= model.authenticate(request['auth_key'], request['password'])
      end

      def model
        options[:model] || ::Identity
      end
    end
  end
end
