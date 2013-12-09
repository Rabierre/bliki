class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, {:id => false, :primary_key => :name} do |t|
        t.string :name
        t.string :description
    end
  end
end
