def line(deli)
  deli_line = deli.map.with_index do |person, index|
    "#{index + 1}. #{person}"
  end
  if deli.size == 0
    puts "The line is currently empty."
  else 
    puts "The line is currently: #{deli_line.join(" ")}"
  end
end

def take_a_number(deli, customer)
  if deli.size == 0
    deli << customer
    puts "Welcome, #{customer}. You are number 1 in line."
  else
    deli.push(customer)
    puts "Welcome, #{customer}. You are number #{deli.size} in line."
  end
end

def now_serving(deli)
  if deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    serving = deli.shift
    puts "Currently serving #{serving}."
  end
end