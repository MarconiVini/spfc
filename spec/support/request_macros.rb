module RequestMacros
  def login
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryGirl.create(:user)
    user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    #sign_in user
  end

  def login_admin
    binding.pry
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    admin_attr = attributes_for(:admin)
    admin = Admin.create(admin_attr)
    post admin_session_path admin_attr
    follow_redirect!
  end

  def login_user(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    #sign_in user
  end
end