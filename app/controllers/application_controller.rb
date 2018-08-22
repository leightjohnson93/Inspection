class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "Revision", password: "Resolution123"
end
