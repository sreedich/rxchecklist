class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :checklists
  has_many :checklist_runs
  has_many :completed_checklists, 
    through: :checklist_runs,
    readonly: true, 
    source: :checklist 

    #inverse, destroy dependency 

end
