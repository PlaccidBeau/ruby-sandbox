inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers
count = 0
for num in numbers do
  if num.to_i.odd?
    count += num.to_i
  end
end
pp count
#pp numbers[0].to_i + numbers[2].to_i
# write your program below
