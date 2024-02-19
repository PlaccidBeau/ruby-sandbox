strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " ",
  'game 1 12 58 09 '
]
string = strings.sample
pp string
# write your program below
letterCount = 0
spaceCount = 0
digitCount = 0
# //Turn String into Array
# //
# //
char_array = string.chars
# pp char_array
# //
# //
if char_array == [" "]
  #
else
for char in char_array
  # Integer?
  # if char.match(/[0-9]/) 
if char =~ /[0-9]/ 
    digitCount += 1
  
#   String?
elsif char =~ /[A-Za-z]/
    letterCount += 1
  
  # Space?
elsif char == " "
    spaceCount += 1
  end
end
end
# //
# //

pp "Number of letters in the string is : #{letterCount}"
pp "Number of spaces in the string is : #{spaceCount}"
pp "Number of digits in the string is : #{digitCount}"
