def firstDuplicate(a)
  dup = ''
    for i in 0...a.length
      if dup == a[i]
          return a[i]
      else
          dup = a[i]
      end
    end
  dup
end

a = [2, 1, 3, 5, 3, 2]

p firstDuplicate(a)