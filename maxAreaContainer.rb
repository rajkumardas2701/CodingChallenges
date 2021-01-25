def maxAreaContainer(height)
  min = 0
  output = 0
  for i in 0...height.length
    length = 0
    for j in (i+1)...height.length
      length += 1
      height[i] < height[j] ? min = height[i] : min = height[j]
      res = min * length
      if res > output
        output = res 
      end
      min = 0
    end
  end
  return output
end

height = [1,8,6,2,5,4,8,3,7]
# height = [4,3,2,1,4]
# height = [1,2,1]

puts maxAreaContainer(height)