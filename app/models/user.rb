class User < ActiveRecord::Base
    after_create :assign_role

    def assign_role
        add_role(:user)
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :apartments
  rolify
end
