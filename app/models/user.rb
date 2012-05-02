class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :avatar, :avatar_cache, :remove_avatar, :remote_avatar_url
  serialize :data

  mount_uploader :avatar, AvatarUploader

  def admin?
    role == 'admin'
  end
end
