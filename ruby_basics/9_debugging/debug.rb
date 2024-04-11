def isogram?(string)
  original_length = string.length
  p original_length
  string_array = string.downcase.split
  p string_array
  unique_length = string_array.uniq.length
  p unique_length
  original_length == unique_length
end

p isogram?("Odin")

puts "Using puts:"
puts []
p "Using p:"
p []

def is_isogram?(string)
  # Use a set to efficiently store unique characters
  seen = Set.new

  # Iterate over each character in the downcased string
  string.downcase.chars.each do |char|
    # Check if the character is alphanumeric and already exists in the set
    if char.match?(/\w/) && seen.include?(char)
      return false
    end

    # Add the character to the set
    seen.add(char)
  end

  # If all characters are unique, return true
  true
end

p is_isogram?("Odin")
