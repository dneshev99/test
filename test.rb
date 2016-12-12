require 'csv'

csv=ARGV[0]

result=0
digit=false

CSV.foreach(csv) do |row|
if /^[0-9]$/.match(row[1].to_s)

elsif row[0].to_i > 17 

	result+=row[2].to_i
puts row[2].to_i
end
end


puts result
