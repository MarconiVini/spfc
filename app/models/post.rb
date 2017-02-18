class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :body,    type: String
  field :title,   type: String
  slug :title

  belongs_to :adm_owner, :class_name => "Admin", optional: true
  belongs_to :user_owner, :class_name => "User", optional: true

  def owner
    self.user_owner.nil? ? self.adm_owner : self.user_owner
  end
end