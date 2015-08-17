def change_position(arr,a,b)
      arr = arr.to_a #array or hash

      from = arr.find_index{|m,k|m.to_s == a } #get position from a 
      to = arr.find_index{|m,k|m.to_s == b } #get position from b

      if from and to
        arr = arr.insert(to, arr.delete_at(from)) #change positions
      end

      arr = arr.to_h
      arr
end
