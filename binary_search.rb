a = [5,7,7,8,8,10,12,14,18,19,22,24,25,26]
t = 24
l = 10
h = a.length - 1
mid = (l + (h - l)/2) 

while(l < h)
    mid = (l + (h - l)/2)

    if a[mid] < t
        l = mid + 1
    else
        h = mid
    end
end

p h