require 'mechanize'

latest_date = Mechanize.new.get('http://localhost:3000/latest/date').body
file_check = File.file?("./script_result.html")
if(file_check == true)
    file_date = File.new("./script_result.html").mtime.to_s

    if(latest_date > file_date)
        File.open('script_result.html', 'w') { |f| f << Mechanize.new.get('http://localhost:3000/latest/script').body }
    end
elsif
    File.open('script_result.html', 'w') { |f| f << Mechanize.new.get('http://localhost:3000/latest/script').body }
end

