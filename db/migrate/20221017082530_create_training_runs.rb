class CreateTrainingRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :training_runs do |t|
      t.string :name
      t.date :date
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
