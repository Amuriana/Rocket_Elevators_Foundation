SecureHeaders::Configuration.default do |config|
    config.cookies = {
      secure: true,# mark all cookies as "Secure"
      httponly: true, # mark all cookies as "HttpOnly"
      samesite: {
        strict: true# mark all cookies as SameSite=strict
      }
    }
    config.csp = {
      default_src: %w('self'),
      script_src: %w('self' 'unsafe-inline' 'unsafe-eval'),
      img_src: %w('self' *),
      media_src: ['*'],
      style_src: %w(* 'unsafe-inline')
    }
  end
  