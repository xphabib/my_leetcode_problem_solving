# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
    sorted_box_types = box_types.sort_by{|x, y| y}.reverse
    result = 0
    sorted_box_types.each do |x, y|
        if truck_size > 0
            if truck_size > x
                result = result + (x * y)
                truck_size = truck_size - x
            elsif truck_size <= x
                result = result + (truck_size * y)
                truck_size = 0
            end
        else
            break
        end
    end
    result
end

# box_types = [[1,3],[2,2],[3,1]] 
# truck_size = 4
boxTypes = [[4,2],[5,5],[4,1],[1,4],[2,5],[1,3],[5,3],[1,5],[5,5],[1,1]]
truckSize = 24


p maximum_units(boxTypes, truckSize)