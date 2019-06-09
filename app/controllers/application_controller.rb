class ApplicationController < ActionController::Base
  set_current_tenant_through_filter
  before_action :find_current_tenant

  def find_current_tenant
    if current_user.nil?
      flash[:warning] = "You must sign in before doing this."
      authenticate_user!
    else
      current_account = Account.find(current_user.account_id)
      set_current_tenant(current_account)
    end
  end
end
