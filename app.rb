require_relative './app/models/task'
require 'sqlite3'
require 'byebug'

# Pre-configurations (Change if you want an awesome difficulty assessment)
# require_relative 'config/application'


# Your Code begins from this line onwards #
class Contact
	def self.list

	task = Task.pluck(:id, :name, :phone, :address)

	# p task

	end
	# list

	def self.add(name, phone, address)
	task = Task.create(name: name, phone: phone, address: address)

	# p task
	end

	def self.delete
		puts "which user id would u like to delete?"
		input = gets.chomp
		if task = Task.find_by(id: input)
		task.delete
		else
			puts "Hey, Something went wrong! I can't find that USER! Are you sure that is the right ID?"
		end
	end

	def self.update
			
			puts "what would you like to update?"
			choices = {"1" => "name", "2" => "phone", "3" => "address"}
			puts choices
			input = gets.chomp
				case input
				when "1"
					puts "whose name would u like to update?"
					name = gets.chomp
					task = Task.find_by(name: "#{name}")
					puts "change to?"
					input2 = gets.chomp
					task.name = "#{input2}"
					task.save
				when "2"
					puts "whose phone would u like to change?"
					name = gets.chomp
					task = Task.find_by(name: "#{name}")
					puts "change to?"
					input2 = gets.chomp
					task.phone = "#{input2}"
					task.save
				when '3'
					puts "whose address would u like to change?"
					name = gets.chomp
					task = Task.find_by(name: "#{name}")
					puts "change to?"
					input2 = gets.chomp
					task.address = "#{input2}"
					task.save
				else
					puts "Hey, cant you read? there is no such choice!"
				end
			
			

			
	end
	
	# def self.upgrade_table
	# 	puts "what attribute would u like to add?"
	# 	input = gets.chomp
	# 	add_column :"#{input}"
	# end


end

		


