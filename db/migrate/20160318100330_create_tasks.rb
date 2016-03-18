require_relative '../seeds'

class CreateTasks < ActiveRecord::Migration
	def change
		create_table :tasks do |t|

			t.string :name
			t.string :phone
			t.string :address
			t.timestamp
		end
	end
end
