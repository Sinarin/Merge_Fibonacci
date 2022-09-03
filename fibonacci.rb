def fib(n)
  array = []
  for i in 0...n
    if i == 0
      array << 0
    elsif i == 1
      array << 1
    else
      array << (array[i-1] + array[i-2])
    end
  end
  array
end


def fib_rec(n, arr = [0])
  if n == 0
    arr
  elsif n < 2
    arr << n
  else
    fib_rec(n-1, arr)
    arr << arr[n-2] + arr[n-1]
  end
end

def fib_rec_one_line(n, arr = [0])
  n == 0 ? arr : n == 1 ? arr << n : fib_rec(n - 1, arr); arr << arr[n-2] + arr[n-1]
end


print fib_rec_one_line(8)