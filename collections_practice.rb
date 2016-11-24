# your code goes here
def begins_with_r(tools)
  if tools.all? { |word| word[0] == "r" }
    return true
  else
    return false
  end
end

def contain_a(array)
  array.select do |word|
  word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
  word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select do |x|
    x.is_a?(String)
  end
end

# def count_elements(names)
#   count = Hash.new(0)
#   names.each do |name|
#     count[name] += 1
#   # #count = hash[count.map { |k, v| k = :name, v = :count }]
#   # end
#   #return count
#   end
# end

def count_elements(names)
  hash = Hash.new(0)
  a = names
  hash = a.group_by(&:itself).map { |k, v| k.merge(count: v.length) }
  return hash
end


def merge_data(arr1,arr2)
	merged_data =[]
	arr1.each_index do |i|
		arr2[0].keys.each do |name|
			merged_data << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
		end
	end
	merged_data
end



def find_cool(hash)
  hash.select do |hash, value|
    hash[:temperature] == "cool"
  end
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
  end
end
