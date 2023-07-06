
def insertion_sort(list)
  size = list.size
  (1...size).each do |i|
    value = list[i]
    j = i - 1
    while j > 0 && list[j] > value
      list[j + 1] = list[j]
      j -= 1
    end

    list[j + 1] = value
  end

  list
end

# TODO: add tests