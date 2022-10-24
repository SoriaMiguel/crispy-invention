class CreateYouTeeEffs < ActiveRecord::Migration[7.0]
  def change
    create_table :you_tee_effs do |t|
      t.text :text, null: false

      t.timestamps
    end
  end
end
