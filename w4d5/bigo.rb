a=['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']


 def sluggish_octopus(array)
    fish=""
    array.each_with_index do |ele1, idx1|
        array.each_with_index do |ele2,idx2|
            ele1.length > ele2.length ? fish=ele1 : fish=ele2
        end
    end
    fish
 end

 def dominant_octopus(arr)

    first=arr[0]

    left= arr[1..-1].select{|ele| ele.length < first.length}




 end