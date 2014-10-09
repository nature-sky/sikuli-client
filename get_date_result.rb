require 'mechanize'

File.open('date_result.txt', 'w') { |f| f << Mechanize.new.get('http://localhost:3000/latest/date.txt').body }
