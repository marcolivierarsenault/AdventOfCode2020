result = {}
DATE = 2020

val1 = 0
val2 = 0

THRESHOLD = 1000
small_numbers = []
big_numbers = {}

q2_v1 = 0
q2_v2 = 0
q2_big = 0


File.foreach("input.txt") { 
    |line| 
    val =  line.to_i
    diff = DATE - val
    if result[val].nil?
        result[diff] = val
    else
        val1 = val
        val2 = diff
    end

    if val <= THRESHOLD
        small_numbers.push(val)
    else
        big_numbers[val] = val
    end
}
puts "-----PART ONE-----"
puts "the multiplication is " + (val1 * val2).to_s
puts "First Value is " + val1.to_s
puts "second Value is " + val2.to_s


small_numbers.each { |i| 
    small_numbers.each { |j| 
        if !big_numbers[DATE - i - j].nil?
            q2_v1 = i
            q2_v2 = j
            q2_big = DATE - i - j
        end
    }
}

puts "-----PART TWO-----"
puts "the multiplication is " + (q2_v1 * q2_v2 * q2_big).to_s
puts "First Value is " + q2_v1.to_s
puts "second Value is " + q2_v2.to_s
puts "second Value is " + q2_big.to_s