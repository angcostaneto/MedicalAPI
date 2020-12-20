# frozen_string_literal: true
require 'net/http'
require 'uri'

module JsonWebTokenModule
  class JsonWebToken
    def self.verify(token)
      JWT.decode(
        token,
        nil,
        true, # Verify the signature of this token
        algorithm: 'RS256',
        iss: Rails.application.credentials.dig(:auth0, :domain),
        verify_iss: true,
        aud: Rails.application.credentials.dig(:auth0, :api_identifier),
        verify_aud: true
      ) do |header|
        jwks_hash[header['kid']]
      end
    end

    # Check if the token is valid, using the JSON Web Key Set (JWKS) for Auth0 account.
    def self.jwks_hash
      jwks_raw = Net::HTTP.get URI("#{Rails.application.credentials.dig(:auth0, :domain)}.well-known/jwks.json")
      jwks_keys = Array(JSON.parse(jwks_raw)['keys'])
      Hash[
        jwks_keys
        .map do |k|
          [
            k['kid'],
            OpenSSL::X509::Certificate.new(
              Base64.decode64(k['x5c'].first)
            ).public_key
          ]
        end
      ]
    end

    def self.token_user
      url = URI("#{Rails.application.credentials.dig(:auth0, :domain)}oauth/token")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Post.new(url)
      request['content-type'] = 'application/json'

      request.body = "{\"client_id\":\"#{Rails.application.credentials.dig(:auth0, :client_id)}\",\"client_secret\":\"#{Rails.application.credentials.dig(:auth0, :client_secret)}\",\"audience\":\"#{Rails.application.credentials.dig(:auth0, :api_identifier)}\",\"grant_type\":\"client_credentials\"}"

      response = http.request(request)
      response.read_body
    end

    def self.revoke_token_user(token)
      url = URI("#{Rails.application.credentials.dig(:auth0, :domain)}oauth/revoke")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Post.new(url)
      request['content-type'] = 'application/json'

      request.body = "{\"client_id\":\"#{Rails.application.credentials.dig(:auth0, :client_id)}\",\"client_secret\":\"#{Rails.application.credentials.dig(:auth0, :client_secret)}\",\"audience\":\"#{Rails.application.credentials.dig(:auth0, :api_identifier)}\",\"token\": \"#{token}\"}"

      response = http.request(request)
      response.read_body
    end
  end
end
