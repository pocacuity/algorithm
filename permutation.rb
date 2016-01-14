$a = ['a','b','c']

def not_recursive(a = [])
  n = a.length - 1

  loop do
    p a

    # find max j in which aj > aj+1 from end -> begin
    j = n - 1
    j -= 1 while a[j] > a[j + 1]

    # find max k in which aj > ak from end -> begin
    k = n
    k -= 1 while a[j] > a[k]

    a[j], a[k] = a[k], a[j]
    a[j + 1..n] = a[j + 1..n].reverse
    break if j < 0
  end
end

def binary(a = [])
  n = a.length - 1

  loop do
    p a
    i = n + 1
    a[i] = 0 while a[i-=1] == 1
    a[i] = 1
    break if i < 0
  end
end

# puts not_recursive $a
puts binary [0,0,0,0]
