def make_file
	fname = "sample.txt"
	somefile=File.open(fname,"w")
	somefile.puts "Hello file!"
	somefile.close
end

make_file

def read_write
	file=File.open("sample.txt","r")
	contents=file.read
	
	filename= "sample2.txt"
	somefile = File.open(filename, "w")
	somefile.puts contents
	somefile.close

end

read_write
