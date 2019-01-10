class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.int :author_id
      t.int :post_id

      t.timestamps
    end
  end
end
