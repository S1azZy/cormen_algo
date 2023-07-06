
class SelectionSort
  def call(list)
    size = list.size
    (0...size).each do |i|
      current = list[i]
      min_index = i

      ((i + 1)...size).each do |j|
        if list[j] < current
          current = list[j]
          min_index = j
        end
      end

      list[min_index], list[i] = list[i], list[min_index]
    end

    list
  end
end
