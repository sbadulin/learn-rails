class Owner

  def name
    name = 'Sergey Badulin'
  end

  def birthdate
    birthdate = Date.new(1982, 6, 27)
  end

  def countdown
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      countdown = (birthday - today).to_i
    else
      countdown = (birthday.next_year - today).to_i
    end
  end

  def birthday_formatted
    birthdate.to_formatted_s(:long_ordinal)
  end

end
