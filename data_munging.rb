# write a program to output day number (column 1) with smallest temperature spread)

# find way to store data for each day
# sort through data to find temperature spread for each day (2nd column - 3rd column)
# pull lowest number and return it

input = File.open('./weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map{|l| l.split.map(&:to_f) }

min_spread = 100000
i = 2
while i < array.length 
  spread = (array[i][1]) - (array[i][2])
  if spread < min_spread
    min_spread = spread
    day = array[i][0]
  end
  i += 1
end

puts min_spread
puts day