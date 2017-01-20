class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, type: String
  belongs_to :owner, :class_name => "User"#, :inverse_of => :post
end