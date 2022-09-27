class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :jwt_authenticatable,
         :recoverable, :rememberable, :validatable,
         jwt_revocation_strategy: JwtDenylist
      
enum role: %i[client cuisinier serveur gerant]
end
