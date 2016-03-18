require 'csv'
require_relative '../app/models/task'

class YellowPagesImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    
    csv.each do |row|
      attribute_hash = {}
      row.each do |field, value|
      attribute_hash[field] = value
        # TODO: begin
        # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
        # TODO: end
      end
      task = Task.create(attribute_hash)
    end
  end
end

# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
