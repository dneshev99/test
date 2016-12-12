require 'csv'
require 'json'

csv = ARGV[0]
json = ARGV[1]
product=1
there=false

parsed_json = JSON.parse(File.read(json))

parsed_json.each do |key, value|

CSV.foreach(csv)do|row|
if row[1].to_s==key.to_s
there=true
break
end
end

if there==false
product*=value.to_i
end
end

puts product

