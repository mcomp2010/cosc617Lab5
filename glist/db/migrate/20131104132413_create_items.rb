class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :list, index: true
      t.string :title

      t.timestamps
    end
  end
end
