class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
		 :omniauthable, :omniauth_providers => [:google_oauth2]
  has_many :inscricoes         

 def self.from_omniauth(auth)
  	where(provider: auth.provider, uid: auth.uid).first_or_create do |usuario|
    	usuario.provider = auth.provider
    	usuario.uid = auth.uid
    	usuario.email = auth.info.email
    	usuario.password = Devise.friendly_token[0,20]
  	end
  end
end