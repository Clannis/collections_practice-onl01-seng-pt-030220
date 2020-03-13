require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a < b
      1
    elsif a > b
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  temp = array[2]
  array[2] = array[1]
  array[1] = temp
  array
end

def swap_elements3(array, index, destination_index)
  temp = array[destination_index]
  array[destination_index] = array[index]
  array[index] = temp
  array
end

def reverse_array(array)
  reversed_array = []
  array.each do |item|
    reversed_array.unshift(item)
  end
  reversed_array
end

def kesha_maker(array)
  kesha_array = array.collect do |item|
    item.split("") do |char|
      binding.pry
      char[3] = "$"
    end
    item.join("")
    puts item
  end
  kesha_array
end

array = ["Kesha", "Meow", "WAS"]
kesha_maker(array)
