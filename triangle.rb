class Triangle
  def initialize(sides)
    @sides = sides.join.split(',')
  end

  def triangle?()
    unless @sides.size == 3 then
      return false
    end

    sides_i = []
    @sides.each do |side|
      unless "#{side}" =~ /\A[1-9][0-9]*\z/ then
        return false
      else
        sides_i << side.to_i
      end
    end

    sides_i.sort!
    if sides_i[0] <= 0 or sides_i[0] + sides_i[1] <= sides_i[2] then
      return false
    end
    true
  end

  def run()
    unless triangle? then
      puts "三角形じゃないです＞＜"
      return
    end

    case @sides.uniq.size
    when 1
      puts "正三角形ですね！"
    when 2
      puts "二等辺三角形ですね！"
    when 3
      puts "不等辺三角形ですね！"
    end
  end
end

if __FILE__ == $0
  Triangle.new(ARGV).run
end
