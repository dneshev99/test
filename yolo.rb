require 'csv'

csv = ARGV[0]
result=0
CSV.foreach(csv) do |row|
if row[0].to_i > 17 && row[1].include?'tues'
result+=row[2].to_i
end
end

puts result
