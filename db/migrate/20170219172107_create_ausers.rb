class CreateAusers < ActiveRecord::Migration[5.0]
  def change
    create_table :ausers do |t|

      t.timestamps
    end
  end
end
