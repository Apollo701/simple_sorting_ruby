=begin
INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following

70.920 -38.797 14.354 99.323 90.374 7.581
-37.507 -3.263 40.079 27.999 65.213 -55.552

OUTPUT SAMPLE:

Print sorted numbers in the following way. Please note, that you need to print the numbers till the 3rd digit after the dot including trailing zeros.

-38.797 7.581 14.354 70.920 90.374 99.323
-55.552 -37.507 -3.263 27.999 40.079 65.213
=end

def simple_sorting
  File.readlines(ARGV.first).map do |file|
    line = file.split.map(&:to_f).sort
    line.each do |line|
      printf("%.3f ", line)
    end
    puts
  end
end
simple_sorting