class HomeController < ActionController::Base
  skip_before_action :verify_authenticity_token, only: [:payload]

  def index

  end

  def payload
    request.body.rewind
    payload_body = request.body.read
    verify_signature(payload_body)
    puts "ha"
    # push = JSON.parse(params[:payload])
    # puts "I got some JSON: #{push.inspect}"
    system "bundle exec coleslaw --token DjpBxEx_dL3Z5VK8Y2py xruywz4pyMSTzmJfUEzz"
  end

  private

  def verify_signature(payload_body)
    secret = 'c5bec9beeb43d8c419c203bcf7b4600d7ea6ed24'
    signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), secret, payload_body)
    return halt 500, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
  end
end
