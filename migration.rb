require './database_configuration.rb'


class DepartmentsAndEmployeesMigration < ActiveRecord::Migration

  def change
    create_table :departments do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :employees do |t|
      t.references :departments
      t.string :name
      t.string :email
      t.string :phone
      t.decimal :salary, precision: 8, scale: 2
      t.text :review
      t.timestamps null: false
    end
  end
end
