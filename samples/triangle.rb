class Triangle
  def self.judge_triangle(a, b, c)
    if c > (a - b).abs && c < (a + b).abs
      if a == b && b == c
        "正三角形ですね！"
      elsif a == b || b == c || c == a
        "二等辺三角形ですね！"
      else
        "不等辺三角形ですね！"
      end
    else
      "三角形じゃないです＞＜"
    end
  end
end

puts(Triangle.judge_triangle(ARGV[1], ARGV[2], ARGV[3]))
