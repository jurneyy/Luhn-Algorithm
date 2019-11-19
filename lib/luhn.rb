module Luhn
  def self.is_valid?(number)
  	sum = 0
    card_number = number.to_s.reverse
    card_number.each_char.with_index do |ch, i|
    	if i % 2 != 0
    		double = ch.to_i * 2 
    		if double >= 10 
    			double -= 9 
    			sum += double 
    		else 
    			sum += double 
    		end 
    	else 
    		even = ch.to_i
    		sum += even 
    	end 
    end 
    puts sum
    return sum % 10 == 0 
  end
end


puts Luhn.is_valid?(4194560385008504)



#The number 4194560385008504 is an example of a credit card that passes the Luhn algorithm (although it's not actually an issued card).

#The number 4194560385008505 is an example of a credit card that fails the Luhn algorithm. 