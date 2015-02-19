class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_alert_death

  def index
  end

  def attorneys
  end

  def offices
  end

  def check_alert_death
    Alert.all.each do |alert|
      if Time.now > alert.created_at + alert.hours_to_live.hours
        alert.destroy
      end
    end
  end

end
