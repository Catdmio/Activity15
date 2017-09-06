def show_stock_by_product
	lines = File.open('Productos.txt', 'r').readlines
	new_lines = []
	lines.each { |line| new_lines.push(line.split(', ').map(&:chomp)) }
		print new_lines

		new_lines.each do |details|
			name = details.shift
			sum = get_sum(details)
			puts "El stock del producto #{name} es #{sum}"
		end
end

def get_sum(details)
	details.each do |ele|
		unless ele == "NR"
			sum += ele.to_i
		end
	end
		return sum
	end



while option != 6
	puts
