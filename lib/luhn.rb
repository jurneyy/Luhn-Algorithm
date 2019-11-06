module Luhn
  def self.is_valid?(number)
    card_number = number.to_s.reverse
    card_number.each_char.with_index do |ch, i|
    	if i % 2 != 0
    		puts ch, i
    		puts
    	end
    end 
  end
end



Luhn.is_valid?(4194560385008504)







=begin

Step 1 - break the credit card into its individual digits.


Convert "number" to string & reverse stored in variable card_number


Step 2 - Start from the right, double every second digit (i.e., digit 2, 4, 6 etc.).

A. Solved by reversing the string. 
B. Properties of a string (length, integers) On the odd indexes we know we're on every other number 

"String": {
	length: 6, 
	s: 0, 
	t: 1, 
	r: 2, 
	i: 3, 

}

Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.


A. Double the number, check if its greater than or equal to 10. take the value and subtract 9 from it.


Step 4 - Sum the digits.

A. Outside of the loop
B. 2nd loop iterate through the string, take each character convert it to an integer and add it to our sum. 
Sum will start index 0 and also be equal to 0 and you will be adding to the sum inside of the loop. 


Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.

A. True or false check. Sum % 10 = 0 




The number 4194560385008504 is an example of a credit card that passes the Luhn algorithm (although it's not actually an issued card).

The number 4194560385008505 is an example of a credit card that fails the Luhn algorithm. 

=end 