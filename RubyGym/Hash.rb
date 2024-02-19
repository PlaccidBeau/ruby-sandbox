#nameOne = ["Osi", "24", "Songwriter"]
#nameTwo = ["Lia", "32", "Engineer"]
name = ["Osi","Lia"].sample
user_info = Hash.new #{}
if name == "Osi"
nameOne = ["Osi", 24, "Songwriter"]
#user_info[:name1]= nameOne[0]
#user_info[:age1]= nameOne[1]
#user_info[:occupation1]= nameOne[2]
#pp "#{user_info[:name1]} #{user_info[:age1]} #{user_info[:occupation1]}"
pp "#{user_info[:name]} #{user_info[:age]} #{user_info[:occupation]}"

elsif name == "Lia"
#	nameTwo = ["Lia", 32, "Engineer"]
#	user_info[:name2]= nameTwo[0]
#user_info[:age2]= nameTwo[1]
#user_info[:occupation2]= nameTwo[2]
#pp "#{user_info[:name]} #{user_info[:age]} #{user_info[:occupation]}"
end
