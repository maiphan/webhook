class HomeController < ActionController::Base
  protect_from_forgery with: :null_session

  def index

  end

  def payload
    debugger
    request.body.rewind
    payload_body = request.body.read
    verify_signature(payload_body)
    push = JSON.parse(params[:payload])
    puts "I got some JSON: #{push.inspect}"
    system "bundle exec coleslaw --token DjpBxEx_dL3Z5VK8Y2py xruywz4pyMSTzmJfUEzz"
  end

  def verify_signature(payload_body)
    signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), ENV['SECRET_TOKEN'], payload_body)
    return halt 500, "Signatures didn't match!" unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
  end
end
