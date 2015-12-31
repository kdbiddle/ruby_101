#return the sum of all multiples of 3 and 5 up to 1000
def problem_one(n)
	i = 0
	total = 0
	while i<n do
		if (i%3==0 or i%5==0)
			total += i
		end
		i += 1
	end
	puts total
end

problem_one(1000)

#returns the sum of the even numbers of the fibonacci sequence up to 4,000,000
def problem_two(n)
	total = 0
	fibonacci_sequence = [1,2]
	x = 1
	y = 0
	while fibonacci_sequence[x]<n do
		value = fibonacci_sequence[x] + fibonacci_sequence[x-1]
		fibonacci_sequence.push(value)
		x+=1
	end 
	while y<fibonacci_sequence.length do
		if (fibonacci_sequence[y] % 2 == 0) then
			total += fibonacci_sequence[y]
		else
			nil
		end
		y+=1
	end
	puts total
end

problem_two(4000000)

#returns the largest prime factor of 9,999,999
def problem_three(n)
	all_factors = []
	prime_factors = []
	x = 1
	while x<n do
		if n % x == 0 then
		all_factors.push(x)
		end
		x+=1
	end
	
	def is_prime(n)
		primality = true
		y=2
		while y<Math.sqrt(n) do
			if n%y == 0 then
				primality = false
			end
			y+=1
		end
		return primality
	end

	z=0
	while z<all_factors.length do
		if is_prime(all_factors[z]) == true then
			prime_factors.push(all_factors[z])
		end
		z+=1
	end
	puts prime_factors.last
end

problem_three(9999999)