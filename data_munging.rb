# write a program to output day number (column 1) with smallest temperature spread)

# find way to store data for each day
# sort through data to find temperature spread for each day (2nd column - 3rd column)
# pull lowest number and return it

days = [
  {day: 1, max: 88, min: 59}, 
  {day: 2, max: 76, min: 63},
  {day: 3, max: 77, min: 55},
  {day: 4, max: 77, min: 59},
  {day: 5, max: 90, min: 66},
  {day: 6, max: 81, min: 61}, 
  {day: 7, max: 73, min: 57},
  {day: 8, max: 75, min: 54},
  {day: 9, max: 86, min: 32},
  {day: 10, max: 84, min: 64},
  {day: 11, max: 91, min: 59}, 
  {day: 12, max: 88, min: 73},
  {day: 13, max: 70, min: 59},
  {day: 14, max: 61, min: 59},
  {day: 15, max: 70, min: 59},
  {day: 16, max: 79, min: 59}, 
  {day: 17, max: 81, min: 57},
  {day: 18, max: 79, min: 55},
  {day: 19, max: 81, min: 55},
  {day: 20, max: 84, min: 55},
  {day: 21, max: 86, min: 59}, 
  {day: 22, max: 90, min: 63},
  {day: 23, max: 90, min: 55},
  {day: 24, max: 90, min: 55},
  {day: 25, max: 90, min: 55},
  {day: 26, max: 90, min: 59}, 
  {day: 27, max: 90, min: 63},
  {day: 28, max: 97, min: 55},
  {day: 29, max: 77, min: 55},
  {day: 30, max: 77, min: 55}
]

i = 0
while i < days.length - 1
  if (days[i][:max] - days[i][:min]) < (days[i+1][:max] - days[i+1][:min])
    minimum_spread = days[i][:day]
  else
    minimum_spread = days[i+1][:day]
  end
  i += 1
end

p minimum_spread