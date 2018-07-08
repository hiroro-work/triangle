require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect{Triangle.new("2, 3".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("2, 3, 4, 5".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("a, 3, 4".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("2, b, 4".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("2, 3, c".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("0, 3, 4".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("2, 0, 4".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("2, 3, 0".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("1, 2, 3".split).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new("2, 3, 4".split).run}.to output("不等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("4, 2, 3".split).run}.to output("不等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("12, 13, 14".split).run}.to output("不等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("1, 2, 2".split).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("2, 1, 2".split).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("2, 2, 1".split).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("10, 30, 30".split).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("1, 1, 1".split).run}.to output("正三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new("100, 100, 100".split).run}.to output("正三角形ですね！\n").to_stdout }
end
