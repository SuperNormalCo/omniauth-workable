require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Workable < OmniAuth::Strategies::OAuth2
      option :client_options, {
        site: 'https://www.workable.com',
        authorize_url: 'https://www.workable.com/oauth/authorize',
        token_url: 'https://oauth.workable.com/oauth/token'
      }

      def request_phase
        super
      end

      def callback_phase
        super
      end

      def callback_url
        options[:redirect_uri] || "https://api.supernormal.com/auth/workable/callback"
      end
    end
  end
end
