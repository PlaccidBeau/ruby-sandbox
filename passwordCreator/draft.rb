
# // def run
# // loop do
# // puts "\n"
# // Welcome to passwordCreator
# // Input 1 to create password
# // Input 2 to to show all stored passwords
# // Input 3 to end program
# // Please select an option:
# // option = get.chomp.to_i
# // puts "\n"
# // case option
# // when 1
  # create_password
# // when 2
  # show_all_passwords
# // when 3
  # puts "Until next time human"
  # break
  # else
  # puts "Invalid input, Try again"
  # end
  # end
  # end
  class Pwbody
    attr_accessor :login, :password
  
    def initialize(login, password)
      @login = login
      @password = password
    end
  
    def to_s
      "#{login} - #{@password}"
    end
  end
