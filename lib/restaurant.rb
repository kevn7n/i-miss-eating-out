class Restaurant
  attr_reader :dishes,
              :name,
              :opening_time

  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    # @closing_time = closingunced_close
  end

  def closing_time(hours_open)
    @closing_time = (hours_open + opening_time.to_i).to_s + opening_time[-3..-1]
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def menu_dish_names
    # couldn't make work(?) => @dishes.map {|dish| dish.upcase }
    @temp_dishes = []
    @dishes.each {|dish| @temp_dishes << dish.upcase }
    @dishes = @temp_dishes
  end

  def announce_closing_time(announced_close)
    closing_time = closing_time(announced_close)
    if (announced_close + opening_time.to_i) < 12
      "#{name} will be closing at #{closing_time}AM"
    else
      closing_time = (closing_time.to_i - 12).to_s + opening_time[-3..-1]
      "#{name} will be closing at #{closing_time}PM"
    end
  end

end
