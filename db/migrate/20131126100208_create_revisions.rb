class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.text :body
      t.references :post, index: true

      t.timestamps
    end
  end
end
