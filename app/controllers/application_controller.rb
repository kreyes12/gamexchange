class ApplicationController < ActionController::Base
  helper_method :default_avatar_path

  def default_avatar_path
    "/images/defaultAvatar.jpg"
  end
end
