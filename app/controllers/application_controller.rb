class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :index
  def home
  end
end
