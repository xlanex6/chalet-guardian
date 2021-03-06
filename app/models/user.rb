class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :job_alerts
  has_many :connection_jobs
  belongs_to :job_categorie

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:linkedin]

  def self.find_for_linkedin_oauth(auth)

    user_params = {
      uid: auth.uid,
      provider: auth.provider,
      email: auth.info.email,
      first_name: auth.info.first_name,
      last_name: auth.info.last_name,
      picture_url: auth.info.image,
      token: auth.credentials.token,
      token_expiry: Time.now + auth.extra.access_token.params[:oauth_expires_in].to_i.seconds
    }

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

end
