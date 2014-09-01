class HomeController < ActionController::Base
  protect_from_forgery with: :null_session

  def index

  end

  def payload
    request.body.rewind
    payload_body = request.body.read
    debugger
    verify_signature(payload_body)
    push = JSON.parse(params[:payload])
    puts "I got some JSON: #{push.inspect}"
    system "bundle exec coleslaw --token DjpBxEx_dL3Z5VK8Y2py xruywz4pyMSTzmJfUEzz"
  end

  def verify_signature(payload_body)
    debugger
    secret = 'c5bec9beeb43d8c419c203bcf7b4600d7ea6ed24'
    signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), secret, payload_body)
    return halt 500, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
  end
end
