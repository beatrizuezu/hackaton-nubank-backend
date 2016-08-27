class AddSkillsToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :skills_users do |t|
      t.belongs_to :skill, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
