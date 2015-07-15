class User < ActiveRecord::Base
  enum_accessor :gender, [:Female, :Male]

  has_many :obstacles,  :through => :days
  has_many :feats, :through =>:days

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
