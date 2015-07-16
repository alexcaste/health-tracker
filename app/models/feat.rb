class Feat < ActiveRecord::Base
  has_many :users,  :through => :days

  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.jpg"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.creator_check (current_user)

    Feat.all.each do |feat|
      if feat.creator_id == current_user
        return true
      end
    end
  end


end
