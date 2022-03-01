def fibs (times, seq = [0, 1])
  if times == 0
    return nil
  elsif times == 1
    return [seq[0]]
  elsif times == 2
    return seq
  else 
    until seq.length == times
      sum = seq[-1] + seq[-2]
      seq << sum
    end
    return seq
  end
end

p fibs(9)

# fibonacci but recursive 

def fibs_rec(times)
  if times == 0
    return nil
  elsif times == 1
    return [0]
  elsif times == 2
    return [0, 1]
  else 
    old = fibs_rec(times - 1)  # goes inwards until times is one of the conditions, then builds back up 
    old << (old[-1] + old[-2])
  end
end

p fibs_rec(9)