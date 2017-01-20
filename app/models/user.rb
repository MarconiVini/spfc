class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  field :name, type: String
  field :email, type: String
  field :encrypted_password

  has_many :posts, validate: false
  
  def login
    
  end
end
