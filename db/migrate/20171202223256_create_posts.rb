class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	t.text :body
    	t.string :author
    	t.integer :authorise, default: 0

    	t.timestamps
    end
  end
end
