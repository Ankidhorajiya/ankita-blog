class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable , :confirmable,
         :omniauthable

  def  self.find_or_create_from_auth_hash(auth_hash)
    user = where(provider: auth_hash.provider , uid:auth_hash.uid).first_or_create
    user.update(
      name: auth_hash.info.name,
      token: auth.credentials.token,
      
      )
    user
  end

  end        
