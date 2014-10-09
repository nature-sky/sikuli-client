require 'mechanize'

latest_date = Mechanize.new.get('http://localhost:3000/latest/date.txt').body
file_check = File.file?("test.txt.tar.bz2")

if file_check == true
  file_date = File.new("test.txt.tar.bz2").mtime.to_s
  File.open('test.txt.tar.bz2', 'w') { |f| f << Mechanize.new.get('http://localhost:3000/latest/script.zip').body } if latest_date > file_date
else
  File.open('test.txt.tar.bz2', 'w') { |f| f << Mechanize.new.get('http://localhost:3000/latest/script.zip').body }
end

