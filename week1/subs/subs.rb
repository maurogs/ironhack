
class Time_forward
	
	def initialize (file, ms)
		@file = IO.read(file)
		@ms = ms
	end
	
	def arrow (line)
		time_line = line.split(' --> ')
		dig = time_line.map {|x| x.split(':')}
		dig.map! {|x,y,z|					
			z = (z.delete(',').to_f) + @ms
			z = (z / 1000).to_s
			z = z.gsub('.', ',')
			x+":"+y+":"+z
		}
		@salida= dig.join(' --> ')	
		puts salida	
	end

	
	def start
		
			new_file=File.open('newsub.srt','w') 
		
		@file.each_line do |line|
			if line.include?"-->"			
				arrow line
				new_file.write(@salida)
			else
			new_file.write(line)
			end
		end
			new_file.close()
	end
	
	
	
end

time=Time_forward.new("subs.srt",2500)
time.start

