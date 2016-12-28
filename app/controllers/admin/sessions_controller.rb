class Admin::SessionsController < Devise::SessionsController
  #helper :sessions
  layout "admin/admin_login"#, only: [:login, :sign_up]

  def sign_up
    @user = User.new
  end

  def after_sign_out_path_for(resource_or_scope)
    case resource_or_scope
      when :admin then new_admin_session_path
    end
  end
  def after_sign_in_path_for(resource_or_scope)
    case resource_or_scope.class
      when Admin then admin_dashboard_path
    end
  end
end


