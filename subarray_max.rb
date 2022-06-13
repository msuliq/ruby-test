# Найдите непрерывный подмассив в массиве (содержащем как минимум 1 элемент), 
# который имеет максимальную сумму элементов.
# Пример: [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4] должно вернуть [4, -1, 2, 1].

arr = [-1, -13, -2, 1, -3, 4, -1, 2, 1, -5, 4]

def max_subsum(arr)
    (0...arr.length).flat_map { |i| (i...arr.length).map { |j| i..j } }.inject([arr[0], 0..0]) { |max, i| arr[i].inject(:+) > max.first ? [arr[i].inject(:+),i ]: max }.last
end
p arr.slice(max_subsum(arr))