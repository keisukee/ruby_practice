class BonusDrink
  def self.total_drink(n)
    if n < 3 && n > 0
      n
    elsif n >= 3
      total = 0
      total += n
      while n >= 3
        n -= 2
        total += 1
      end
      total
    else
      return "自然数を入力してください"
    end
  end
end
