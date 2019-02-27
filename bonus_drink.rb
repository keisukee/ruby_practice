class BonusDrink
  def self.total_drink(n)
    if n < 3 && n > 0
      n
    elsif n >= 3
      i = 0
      i += n
      while n >= 3
        n -= 2
        i += 1
      end
      i
    else
      return "自然数を入力してください"
    end
  end
end

BonusDrink.total_drink(100)
