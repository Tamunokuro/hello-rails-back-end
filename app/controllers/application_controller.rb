class ApplicationController < ActionController::API
  def cors_preflight_check
    headers['Access-Control-Allow-Origin'] = '*' # Replace with your desired origin(s)
    headers['Access-Control-Allow-Methods'] = 'GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] =
      'Content-Type, Authorization, X-Requested-With, X-HTTP-Method-Override, Accept, access-control-allow-origin'
    head :ok
  end
end
