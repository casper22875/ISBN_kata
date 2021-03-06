def isbn_check(isbn_number)
	
	no_spaces_or_dashes = remove_spaces_and_dashes(isbn_number)
	
		if no_spaces_or_dashes.length == 10
			check_digit_contains_x(no_spaces_or_dashes)
			if test_for_non_numeric_characters(no_spaces_or_dashes)
			@output = false
    else
  check_digit_validity(no_spaces_or_dashes) 
    end
  
  if no_spaces_or_dashes.length == 13
	check_digit_contains_x(no_spaces_or_dashes)
    if test_for_non_numeric_characters(no_spaces_or_dashes)
      @output = false
    if check_digit_valid_13(no_spaces_or_dashes)
	else 
	false
				end
			end
		end
	end
end		
		

def remove_spaces_and_dashes(isbn_number)
#input is string and output is string
	disallowed_characters = [" ","-"]
	
	disallowed_characters.each do |n|
		isbn_number.delete! n if isbn_number.include? n
	end
	isbn_number
end

def verify_length(isbn_number)
	if isbn_number.length == 10
		true
	elsif isbn_number.length == 13
		true
	else
		false
	end
end


def isbn_number_array(isbn_number)
	 isbn_number.split('')
end

def check_digit_validity(isbn_array)
	array=[]
	isbn_array.each do|value|
	array<<value.to_i end
	
	sum=0
		array.each.with_index do|value,index|
		break if index == 9
		sum += (value*(index+1))
		end
	check_digit = sum%11
	check_digit == array[9]
		
			end
		
def check_digit_contains_x(isbn_number_string)
#input is string output is array of strings
		isbn_number=isbn_number_string.split ''
		
		if isbn_number[9]== 'X' or isbn_number[9]== 'x'
		isbn_number[9]="10"
		end
		
		isbn_number
	end

def test_for_non_numeric_characters(isbn_number)
#input is array of strings 
   isbn_number.to_s #converts array of strings into a single string 
  
  if  isbn_number =~ /\D/      #match any character that is not a digit
    #return
      false
  else
    #return
      true
  end 
end	
	
	
def check_digit_valid_13(isbn_number)
	isbn_number=isbn_number.split ''
	array=[]
		
		isbn_number.each do |value|
		array << value.to_i
		end
	sum=0
	check_digit = 0
	
			array.each_with_index do |value,index|
				break if index == 12
				if index % 2 == 0
				sum += value * 1
				else
				sum += value * 3
				end
			end
			sum=sum % 10
			check_digit = (10-sum)
			
			if check_digit == 10
			check_digit = 0
			end
			
		array[12] == check_digit
	end
	

