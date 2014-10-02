require 'mechanize'

File.open('date_result.html', 'w') { |f| f << Mechanize.new.get('http://localhost:3000/latest/date').body }
