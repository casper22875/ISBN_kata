def isbn_check(isbn_number)
	no_dashes_isbn_number =dash_removal_from_isbn(isbn_number)
	no_spaces_or_dashes_isbn_number=dash_removal_from_isbn(no_dashes_isbn_number)
	
		if verify_length(no_spaces_or_dashes_isbn_number) == true
		array_isbn=isbn_number_array(isbn_number)
		check_digit_validity(array_isbn)
		true
		else 
		false
	end
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

def dash_removal_from_isbn(isbn_number)
	if isbn_number.include?"-"
		isbn_number.delete!"-"
		else 
		isbn_number
	end
end

def space_removal_from_isbn(isbn_number)
	if  isbn_number.include?" "
		isbn_number.delete!" "
	end
end

def isbn_number_array(isbn_number)
	 isbn_number.split("")
end

def check_digit_validity(isbn_array_strings)
	array=[]
	isbn_array_strings.each do|value|
	array<<value.to_i end
	
	sum=0
		array.each.with_index do|value,index|
		break if index == 9
		sum += (value*(index+1))
		end
	check_digit = sum%11
	check_digit == array[9]
		
			end
		
	