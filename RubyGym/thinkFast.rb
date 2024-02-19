require 'date'
unpredictable_inputs = [
  # "Hello!",
  #  rand(100),
  #  :GOODBYE,
  # nil,
  #  true,
  #  false,
    # Time.now
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

def isEven(variables)
  unless variables == true || false
    if variables == true
    return 'you can pass'
    end
    if variables == false
    return 'you can not pass'
    end
  end
  if variables.class == Time
    # return "hiiii"
    return "#{variables.strftime("%A").downcase}"
  end
  unless variables.odd? || variables.even?
    if variables.odd?
  # if variables == 1 || (variables - 1) % 2 == 0
    return "#{variables} is odd"
    end
    if variables.even? # % 2 == 0
    return "#{variables} is even"
    end
  end
  if variables == "Hello!"
    return "hello!"
  end
  if variables == :GOODBYE
    return ":#{variables.downcase}"
  end
  if variables.class == Hash
    return "#{variables[:city]}, #{variables[:state]}, #{variables[:zip]}"
  end
  
end


some_random_input = unpredictable_inputs.sample
pp some_random_input

me = isEven(some_random_input)
pp me
# pp 2.even?
# cheese = { :city => "Chicago", :state => "IL", :zip => 60654 }
# pp "#{cheese[:city]}, #{cheese[:state]}, #{cheese[:zip]}"
if some_random_input.class == String
  puts some_random_input.downcase
elsif
  some_random_input.class == Time
  puts Time.now.strftime("%A").downcase 
elsif
  some_random_input.class == Integer
  if some_random_input.even?
  puts "#{some_random_input} is even"
  else
  puts "#{some_random_input} is odd"
  end
elsif
  some_random_input.class == Symbol
  puts ":#{some_random_input}".downcase
elsif
  some_random_input == nil
  puts "no object provided"
elsif
  some_random_input == true
  puts "you may pass"
elsif
  some_random_input == false
  puts "you may not pass"
else
pp some_random_input.keys
  
end
