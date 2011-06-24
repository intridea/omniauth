require 'omniauth/core'

module OmniAuth
  module Strategies
    autoload :OAuth,              'omniauth/strategies/oauth'
    autoload :OAuth2,             'omniauth/strategies/oauth2'
    autoload :XAuth,              'omniauth/strategies/xauth'

    autoload :Bitly,              'omniauth/strategies/bitly'
    autoload :Blogger,            'omniauth/strategies/blogger'
    autoload :ConstantContact,    'omniauth/strategies/constant_contact'
    autoload :Dailymile,          'omniauth/strategies/dailymile'
    autoload :Doit,               'omniauth/strategies/doit'
    autoload :Dopplr,             'omniauth/strategies/dopplr'
    autoload :Douban,             'omniauth/strategies/douban'
    autoload :Dropbox,            'omniauth/strategies/dropbox'
    autoload :Evernote,           'omniauth/strategies/evernote'
    autoload :Facebook,           'omniauth/strategies/facebook'
    autoload :Foursquare,         'omniauth/strategies/foursquare'
    autoload :GitHub,             'omniauth/strategies/github'
    autoload :Goodreads,          'omniauth/strategies/goodreads'
    autoload :Google,             'omniauth/strategies/google'
    autoload :GoogleHealth,       'omniauth/strategies/google_health'
    autoload :GoogleHealthSandbox,'omniauth/strategies/google_health_sandbox'
    autoload :Gowalla,            'omniauth/strategies/gowalla'
    autoload :Hyves,              'omniauth/strategies/hyves'
    autoload :Identica,           'omniauth/strategies/identica'
    autoload :Instagram,          'omniauth/strategies/instagram'
    autoload :Instapaper,         'omniauth/strategies/instapaper'
    autoload :LinkedIn,           'omniauth/strategies/linked_in'
    autoload :Mailru,             'omniauth/strategies/mailru'
    autoload :Meetup,             'omniauth/strategies/meetup'
    autoload :Miso,               'omniauth/strategies/miso'
    autoload :Mixi,               'omniauth/strategies/mixi'
    autoload :Netflix,            'omniauth/strategies/netflix'
    autoload :Qzone,              'omniauth/strategies/qzone'
    autoload :Plurk,              'omniauth/strategies/plurk'
    autoload :Rdio,               'omniauth/strategies/rdio'
    autoload :Renren,             'omniauth/strategies/renren'
    autoload :Salesforce,         'omniauth/strategies/salesforce'
    autoload :SmugMug,            'omniauth/strategies/smug_mug'
    autoload :SoundCloud,         'omniauth/strategies/sound_cloud'
    autoload :T163,               'omniauth/strategies/t163'
    autoload :TB,                 'omniauth/strategies/taobao'
    autoload :Teambox,            'omniauth/strategies/teambox'
    autoload :ThirtySevenSignals, 'omniauth/strategies/thirty_seven_signals'
    autoload :Tqq,                'omniauth/strategies/tqq'
    autoload :TradeMe,            'omniauth/strategies/trade_me'
    autoload :TripIt,             'omniauth/strategies/trip_it'
    autoload :Tsina,              'omniauth/strategies/tsina'
    autoload :Tsohu,              'omniauth/strategies/tsohu'
    autoload :Tumblr,             'omniauth/strategies/tumblr'
    autoload :Twitter,            'omniauth/strategies/twitter'
    autoload :TypePad,            'omniauth/strategies/type_pad'
    autoload :Vimeo,              'omniauth/strategies/vimeo'
    autoload :Vkontakte,          'omniauth/strategies/vkontakte'
    autoload :WePay,              'omniauth/strategies/we_pay'
    autoload :Yahoo,              'omniauth/strategies/yahoo'
    autoload :Yammer,             'omniauth/strategies/yammer'
    autoload :YouTube,            'omniauth/strategies/you_tube'
  end
end
