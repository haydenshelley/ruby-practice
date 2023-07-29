# write a program to output day number (column 1) with smallest temperature spread)

# find way to store data for each day
# sort through data to find temperature spread for each day (2nd column - 3rd column)
# pull lowest number and return it

input = File.open('./weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map{|l| l.split.map(&:to_f) }
p array[2][1]
p array[2][2]
spread = array[2][1] - array[2][2]
p spread

# i = 0
# while i < days.length - 1
#   if (days[i][:max] - days[i][:min]) < (days[i+1][:max] - days[i+1][:min])
#     minimum_spread = days[i][:day]
#   else
#     minimum_spread = days[i+1][:day]
#   end
#   i += 1
# end

# p minimum_spread