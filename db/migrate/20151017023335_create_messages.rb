class CreateMessages < ActiveRecord::Migration
	def up
		create_table :messages do |t|
			t.string :from
			t.string :to
			t.string :content
		end
  end
	
	def down
		drop_table :messages
	end
end
