module StairwalksHelper
  def total_walks
    Stairwalk.all.count
  end

  def total_walks_days(days)
    Stairwalk.all.where("date > ?", Time.now-days.days).count
  end



  def stairs(n)
    n.to_i*182
  end

end
