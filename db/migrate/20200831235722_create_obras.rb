class CreateObras < ActiveRecord::Migration[6.0]
  def change
    create_table :obras do |t|
      t.string :titulo
      t.string :autor

      t.timestamps
    end
  end
end
