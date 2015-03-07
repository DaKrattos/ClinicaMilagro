class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name,     presence: true
  validates :identi,   presence: true, length: {minimum: 6}, numericality: { only_integer: true }
  validates :lastname, presence: true
end
