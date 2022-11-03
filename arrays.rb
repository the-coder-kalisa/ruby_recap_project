File.open("names.txt", "a+") do |file|
    file.write("\nusername = giovanni")
    puts file.read
end