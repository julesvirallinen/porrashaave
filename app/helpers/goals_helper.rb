module GoalsHelper

  def days_left(goal)
    (goal.end - Date.today).to_i
  end

  def walks_per_day(goal)
    ((goal.goal-progress(goal))/days_left(goal).to_f).round(2)
  end

  def progress(goal)
    goal.user.walks_since(goal.start)
  end

  def goal_info(goal)
    if progress(goal) >= goal.goal
      'Onnistuit! Tee uusi haaste ja haasta kaverisi! :)))'
    else
      progress(goal).to_s  + '/' + goal.goal.to_s + ' Jäljellä per päivä: ' + walks_per_day(goal).to_s
    end
  end

  def goal_dates(goal)
    goal.start.strftime('%d.%m') + ' - ' + goal.end.strftime('%d.%m')
  end

  def title_and_goal(goal)
    goal.title + ' (' + goal.goal.to_s + ' kävelyä.) '
  end

end
