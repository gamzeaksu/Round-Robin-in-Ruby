def update (remBt, wt, q, bt,t, i)
  if i<9
    if remBt[i]>0
      if remBt[i]>q
        remBt[i]=remBt[i]-q
        t+=q
        return update(remBt, wt, q ,bt,t,i+1)
      else
        t=t.to_i+ remBt[i]
        wt[i]=t.to_i-bt[i]
        remBt[i] = 0
        return update(remBt,wt, q, bt,t,i+1)
      end
      return t
    end
    return t
  end
  return t
end

def f (list)
  if list[0] == 0 && list[1] == 0 && list[2]== 0 && list[3] == 0 && list[4] == 0 && list[5] == 0 && list[6] == 0 && list[7] == 0 && list[8] == 0
    return false
  else
    return true
  end
end

def RoundRobin(bt, wt, q)
  n=bt.length
  remBt=Array.new(n)
  for i in 0..(n-1)
    remBt[i]=bt[i]
  end
  t=0
  while(f(remBt))
    t=update(remBt,wt,q,bt,t,0)
  end
  return wt
end


  puts "Round Robin Algoritm"
  wt=[0,0,0,0,0,0,0,0,0]
  bt=[20,17,16,14,11,10,5,3,1]
  q=3
  RoundRobin(bt,wt,q)