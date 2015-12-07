class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_data
    url = open("http://newbiecoderwarehouse.github.io/design-inspiration-api/apis/typography.json").read
    json_data = JSON.parse(url)
    @content = json_data["results"]
 end
end
