require 'csv'
require_relative "ISBN.rb"

def read_from_isbn_file
	file_old = File.open("input_isbn_file.csv","r")
	file_name = "test_output.csv"
	file_new = File.open(file_name, "w")
	file_old.each do |line|isbn_check(line)
		file_new.puts line.chomp + "," + validate
		
		end
	file_new.close
end

def validate
		["valid" , "invalid"].sample
	
	end

isbn_check(read_from_isbn_file)	
	
	
	
	# def print_valid_isbns_to_screen
		# puts "The following ISBNs are valid"
		# CSV.foreach("test_output.csv") do |checked_isbns|
			# if checked_isbns[1] == "valid"
			# puts checked_isbns[0]
			# end
		# end
	# end
	
read_from_isbn_file

# print_valid_isbns_to_screen