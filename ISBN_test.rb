require_relative "ISBN.rb"
require "minitest/autorun"

class Isbn_verify<Minitest::Test

def test_for_valid_amount_of_digits
	assert_equal(true,verify_length("2471958697"))
	assert_equal(false,verify_length("10293847570"))
	assert_equal(true,verify_length("0-321-14653-0"))
end

def test_to_check_for_dash_removal
	assert_equal("0321146530",dash_removal_from_isbn("0-321-14653-0"))
end













end