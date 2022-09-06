def create_phone_number(array)
  p "(#{array[0..2].join}) #{array[3..5].join}-#{array[6..-1].join}"
end

create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
