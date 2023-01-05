# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    first = 0
    last = nums.length - 1

    while(first <= last)
        mid = (first + (last - first)/2)
        p mid
        first = first + 1
        last = last - 1
    end
end

nums = [5,7,7,8,8,10,11]
target = 8
p search_range(nums, target)