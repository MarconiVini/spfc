class Admin
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  field :name, type: String
  field :email, type: String
  field :encrypted_password 
  field :remember_created_at
  field :current_sign_in_at
  field :last_sign_in_at
  field :current_sign_in_ip
  field :last_sign_in_ip
  field :sign_in_count
  field :reset_password_token
  field :reset_password_sent_at
end
