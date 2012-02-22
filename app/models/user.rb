class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :admin, :data, :avatar, :avatar_cache, :remove_avatar, :remote_avatar_url
  serialize :data

  mount_uploader :avatar, AvatarUploader

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    if user = User.where(:email => access_token.info.email).first
      user
    else
      User.create!(:email => access_token.info.email, :password => Devise.friendly_token[0, 20], :remote_avatar_url => access_token.info.image, :data => access_token.to_hash)
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
        user.email = data['email']
      end
    end
  end
end
