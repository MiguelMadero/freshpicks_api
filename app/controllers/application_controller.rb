class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :prepare_for_mobile
  helper_method :current_user, :mobile_device?

  def index
    if mobile_device?
      redirect_to :controller=> "mobile"
    elsif(current_user && current_user.is_admin?)
      redirect_to :controller=>"climbs", :action=>"index"
    else
      redirect_to :controller=>"ascents", :action=>"index"
    end
  end

  private

  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    #request.format = :mobile if mobile_device?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"

    flash[:error] = "Access denied."
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content, :status => :forbidden }
    end
  end
end
