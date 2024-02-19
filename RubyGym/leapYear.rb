years = [
  1700,
  1940,
  2038
]
year = years.sample
# write your program below
# if the year is not divisible by 4 no
# or year isnt divisible by 400 no

years.push(2016, 1804, 1800, 2200)
pp years
year = 2200
pp year
leapYear = "#{year} is a leap year!"
nope = "#{year} is not a leap year"
if year % 400 == 0
	pp leapYear
elsif
	if year % 4 == 0  && year % 100 != 0
    pp leapYear
  else
    pp nope
  end
else
  pp nope
end
