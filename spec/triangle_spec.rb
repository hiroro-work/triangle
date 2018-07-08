require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect{Triangle.new(%w(2, 3)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 3, 4, 5)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(a, 3, 4)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(2, b, 4)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 3, c)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(0, 3, 4)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 0, 4)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 3, 0)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(1, 2, 3)).run}.to output("三角形じゃないです＞＜\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 3, 4)).run}.to output("不等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(4, 2, 3)).run}.to output("不等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(12, 13, 14)).run}.to output("不等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(1, 2, 2)).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 1, 2)).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(2, 2, 1)).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(10, 30, 30)).run}.to output("二等辺三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(1, 1, 1)).run}.to output("正三角形ですね！\n").to_stdout }
  specify { expect{Triangle.new(%w(100, 100, 100)).run}.to output("正三角形ですね！\n").to_stdout }
end
