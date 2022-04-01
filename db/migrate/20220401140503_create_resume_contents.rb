class CreateResumeContents < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_contents do |t|
      t.string :title
      t.string :description
      t.string :type
      t.string :date

      t.timestamps
    end
  end
end
