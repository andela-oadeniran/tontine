class JsonWebToken
  HMAC_SECRET = ENV['SECRET_KEY_BASE']

  def self.encode(payload, expiration = 24.hours.from_now)
    payload[:exp] = expiration.to_i
    JWT.encode(payload, HMAC_SECRET)
  end

  def self.decode(payload)
    body = JWT.decode(payload, HMAC_SECRET)[0]
    HashWithIndifferentAccess.new body
  rescue JWT::DecodeError => e
    raise ExceptionHandler::InvalidToken, e.message
  end
end
