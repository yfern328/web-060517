# use iteration to add each element to the flag colors array
country = {}
country[:flag_colors] = []
colors = ['red', 'white', 'blue']
colors.each do |color|
  country[:flag_colors] << color
end

p country[:flag_colors]

instructors = {:avi=> {:age=>31, :fav_color=>"black", :places=>["long island"]},
:steven=> {:age=>29, :fav_color=>"orange", :places=>["colorado", 'new jersey'],
  :hobbies=>"baseball"}}

# 1. print out avi's age

p instructors[:avi][:age]

# 2. Print out each person's name

instructors.keys.map {|name| puts name.to_s.capitalize}

# 3. Then print out each person's age and their favorite color
  # puts "Avi is 31 and his favorite color is black"
  # puts "Steven is 29 and his favorite color is orange"

instructors.each {|k,v| puts "#{k.capitalize} is #{v[:age]} and his favorite color is #{v[:fav_color]}"}

#4. Print out places
# puts "Avi is 31 and he is from long island"
# puts "Steven is 29 and he is from colorado and new jersey"

instructors.each do |k,v|
  if v[:places].length > 1
    puts "#{k.capitalize} is #{v[:age]} and he is from #{v[:places].join(" and ")}"
  else
    puts "#{k.capitalize} is #{v[:age]} and he is from #{v[:places].join}"
  end
end

# 5. Capitalize all of the places and print them out as well
 # puts "Avi is 31 and he is from long island"
# puts "Steven is 29 and he is from colorado and new jersey"

instructors.each do |k,v|
  if v[:places].length > 1
    #puts "#{k.capitalize} is #{v[:age]} and he is from #{v[:places].map {|place| place.capitalize}.join(" and ")}"
    puts "#{k.capitalize} is #{v[:age]} and he is from #{v[:places].map {|place| place.split.map {|word| word.capitalize}.join(" ")}.join(" and ")}"
  else
    puts "#{k.capitalize} is #{v[:age]} and he is from #{v[:places].map {|place| place.split.map {|word| word.capitalize}.join(" ")}.join}"
  end
end
