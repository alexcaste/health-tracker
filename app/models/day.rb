class Day < ActiveRecord::Base
  belongs_to :user
  belongs_to :feat
  belongs_to :obstacle

  def self.find_days (current_user)
    day_array = []
    Day.all.each do |day|
      if day.user_id == current_user
        day_array.push(day)
      end
    end
    return day_array
  end

  def self.find_feats (current_user)
    day_array = []
    Day.all.each do |day|
      if day.feat_id != nil && day.user_id == current_user
        day_array.push(day)
      end
    end
    return day_array
  end

  def self.find_obstacles (current_user)
    day_array = []
    Day.all.each do |day|
      if day.obstacle_id != nil && day.user_id == current_user
        day_array.push(day)
      end
    end
    return day_array
  end

end
