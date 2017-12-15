class User < ApplicationRecord
  has_many :stairwalks
  has_many :goals


  def walk_count
    stairwalks.count.to_s
  end

  def stair_count
    (stairwalks.count*91*2).to_s
  end
end
