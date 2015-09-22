def isbn_check(isbn_number)
	remove_dashes_from_isbn
	verify_length
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
	end
end

def space_removal_from_isbn(isbn_number)
	if isbn_number.include?" "
		isbn_number.delete!" "
	end
end
