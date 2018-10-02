
def sort_array_asc(array)
  array.sort!
end
def sort_array_desc(array)
   array.sort! { |x,y| y <=> x }
end

def sort_array_char_count(word_array)
  word_array.sort do |word1,word2|
    if word1.length == word2.length
      0
    elsif word1.length > word2.length
      1
    elsif word1.length < word2.length
      -1
    end
  end
end

def swap_elements(array)
  array.size.times do |index|
    if index==1
      temp = array[index]
      array[index]=array[index+1]
      array[index+1]=temp
    end
  end
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.collect do |word|
     word_array=word.split("")
     word_array[2]="$"
     word_array.join("")
  end
end
def sum_array(num_array)
  num_array.inject(0) {|sum,num| sum + num}
end
  def find_a(array)
    array.select {|element| element[0]=="a"}
  end


  def add_s(array)
    count = 0
    array.collect do |word|
      word_array=word.split("")
      if count !=1
       word_array.push("s")
     end
      count +=1
   word_array.join("")
    end
  end