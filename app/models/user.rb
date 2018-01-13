class User < ApplicationRecord
  has_many :stairwalks
  has_many :goals


  def walk_count
    stairwalks.count.to_s
  end



  def stair_count
    (stairwalks.count*91*2).to_s
  end

  def walks_since(date)
    stairwalks.where("date >= ?", date).count
  end

  def total_walks_past(days)
    stairwalks.where("date > ?", Time.now-days.days).count.to_s
  end

  def walks_on_date(date)
    s = stairwalks.where("date = ?", date).count
    if s>0
      s.to_s
    end
  end


end
