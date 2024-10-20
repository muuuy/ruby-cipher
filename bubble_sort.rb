def bubble_sort(nums)
  n = nums.length

  (n - 1).times do |i|
    (n - 1 - i).times do |j|
      if nums[j] > nums[j + 1]
        nums[j], nums[j + 1] = nums[j + 1], nums[j]
      end
    end
  end

  nums
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
