class BirthdayDatabase
  attr_reader :friend

  def store_birthday(friend, day, month, year)
    @friend = friend
    "Stored #{friend}: #{day} #{month} #{year}"
  end

  def print_birthday(friend)
    @friend
  end
end
