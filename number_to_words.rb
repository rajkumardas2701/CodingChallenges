def number_to_words(number)
  if number < 0 
      return 'Please enter a number that isn\'t a negative'
  end
  if number == 0 
      return 'zero'
  end
  numString = ''
  onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenPlace = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  left = number
  write = left / 1000/1000
  left = left - write * 1000*1000
  if write > 0
      millions = number_to_words(write)
      numString = numString + millions + ' million'
      if left > 0
          numString = numString + ' '
      end
  end
  write = left / 1000
  left = left - write * 1000
  if write > 0
      thousands = number_to_words(write)
      numString = numString + thousands + ' thousand'
      if left > 0
          numString = numString + ' '
      end
  end
  write = left / 100
  left = left - write * 100
  if write > 0
      hundreds = number_to_words(write)
      numString = numString + hundreds + ' hundred'
      if left > 0
          numString = numString + ' '
      end
  end
  write = left / 10
  left = left - write * 10
  if write > 0
      if (write == 1 and left > 0)
          numString = numString + teenPlace[left-1]
          left = 0
      else 
          numString = numString + tensPlace[write-1]
      end
      if left > 0 
          numString = numString + '-'
      end
  end
  write = left
  left = 0
  if write > 0
      numString = numString + onesPlace[write-1]
  end
  numString
end

number = 1234567
p number_to_words(number)
