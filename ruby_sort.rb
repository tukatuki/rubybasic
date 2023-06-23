# テスト用の配列
array = [3, 5, 9, 7, 1]

def quick_sort(array)
  return array if array.length <= 1

  pivot = array.sample
  smaller = []
  greater = []
  equal = []

  array.each do |element|
    if element < pivot
      smaller << element
    elsif element > pivot
      greater << element
    else
      equal << element
    end
  end

  quick_sort(smaller) + equal + quick_sort(greater)
end

# クイックソートを実行
sorted_array = quick_sort(array)

puts sorted_array