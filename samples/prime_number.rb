include Math
require 'benchmark'

#素数の配列を返すメソッド
def fetch_prime_numbers(n)
  numbers = (2..n).to_a
  primes == []
  loop do
    d = numbers.shift
    break if d == nil
    primes << d
    to_delete = []
    numbers.each do |x|
      to_delete << x if x % d == 0
    end
    numbers -= to_delete
  end
  p primes
end

puts Benchmark.measure{ fetch_prime_numbers(1000) }
