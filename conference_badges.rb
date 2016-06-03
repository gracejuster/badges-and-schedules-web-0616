def badge_maker(string)
  badge_message = "Hello, my name is #{string}."
end

def batch_badge_creator(array) 
  badges_array = []
  array.each do |name|
    badge = badge_maker(name)
    badges_array = badges_array.push(badge)
  end
  return badges_array
end

def assign_rooms(array) 
  assignment_array = []
  array.each do |name|
    room = array.index(name) 
    room = room + 1
    assignment_message = "Hello, #{name}! You'll be assigned to room #{room}!"
    assignment_array = assignment_array.push(assignment_message)
  end
  return assignment_array
end

def printer(array)
  messages1 = batch_badge_creator(array)
  messages2 = assign_rooms(array)
  allmessages = messages1.concat(messages2)
  allmessages.each do |message|
    puts message
  end
end
