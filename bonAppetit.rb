def bonAppetit(bill, k, b)
  result = bill.sum
  final = (result - bill[k]) / 2
  charged = result / 2
  if final == b
      puts 'Bon Appetit'
  else
      puts charged - final
  end
end