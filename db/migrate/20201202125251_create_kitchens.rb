class CreateKitchens < ActiveRecord::Migration[6.0]
  def change
    create_table :kitchens do |t|

      t.timestamps
    end
  end
end
