class ApplicationController < ActionController::Base
	before_action :set_request_timestamp
 
  protected
 
  def set_request_timestamp
    @request_timestamp = Time.now
  end
end
