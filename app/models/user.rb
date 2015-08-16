class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles
  belongs_to :user_type

  def is_an_editor?
    return self.user_type == UserType.where(name:"editor").first
  end
end
