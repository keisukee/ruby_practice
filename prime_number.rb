include Math

#素数の配列を返すメソッド
def fetch_prime_list(max)
  table = Array.new(max + 1,true)
  prime_list = []

  (2..max).each do |num|
      if table[num] == true
        prime_list << num
      k = num * num
      while k <= max
        table[k] = false
        k += num
      end
    end
  end
  return prime_list
end

#配列を返すメソッド
p fetch_prime_list(100)
