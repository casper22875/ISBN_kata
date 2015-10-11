require_relative "ISBN.rb"
require "minitest/autorun"

class Isbn_verify<Minitest::Test

def test_for_valid_amount_of_digits
	assert_equal(true,verify_length("2471958697"))
	assert_equal(false,verify_length("10293847570"))
	assert_equal(true,verify_length("0-321-14653-0"))
end

def test_to_check_for_dash_removal
	assert_equal("0321146530",remove_spaces_and_dashes_from_isbn("0-321-14653-0"))
end

def test_to_check_for_space_removal
	assert_equal("0321146530",remove_spaces_and_dashes_from_isbn("0 321 14653 0"))
end

def test_for_string_conversion
	assert_equal(["1","2","3","4","5","6","7","8","9","1"],isbn_number_array("1234567891"))
end

def test_for_10_digit_math
	assert_equal(true,check_digit_validity(["0","4","7","1","9","5","8","6","9","7"]))
	assert_equal(false,check_digit_validity(["1","3","4","5","6","3","2","1","8"]))
	assert_equal(true,check_digit_validity(["0","3","2","1","1","4","6","5","3","0"]))
end

def test_for_everything_thus_far
	results=isbn_check("12 3123123 1")
	results2=isbn_check("0-321@14653-0")
	results5=isbn_check("2334567")
		assert_equal(false,results)
		assert_equal(false,results2)
		assert_equal(false,results5)
	results3=isbn_check("0471958697")
	results4=isbn_check("0-321-14653-0")
		assert_equal(true,results3)
		assert_equal(true,results4)
end

def test_for_an_X
	assert_equal(true,check_digit_contains_x("080442957X"))
end

def test_to_check_for_13_digits
	assert_equal(true,check_digit_valid_13("9780470059029"))
	assert_equal(false,check_digit_valid_13("9780470009029"))
end








end