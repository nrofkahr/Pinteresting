class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Requires Name field to be present
  validates :name, presence: true
  
  								#User deletes account and also deletes pins
  has_many :pins, dependent: :destroy
end
