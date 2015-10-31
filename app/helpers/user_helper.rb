module UserHelper
  def exists?(item)
    item == nil ? false : true
  end

  def experience_for_next_level(level)
    (level - 10) * 50
  end

end
