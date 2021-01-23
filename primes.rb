def get_prime(up_to)
    arr = (2..up_to).select { |num| (2...num).all? { |div| (num % div).positive? } }
    puts arr.reject {|a| a%10 == 7}
end

get_prime(60)