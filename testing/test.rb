string = "This is a string! It has three sentences. Right?"

array = string.split(" ")

newArray = []

array.collect do |i| 
  if i.end_with?("!") or i.end_with?("?") or i.end_with?(".")
    newArray.push(i)
  end
end

print newArray.length