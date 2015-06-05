#did a rails g migration to create this file, renamed the difficulty symbol

class ChangeDifficultyLevelToDifficulty < ActiveRecord::Migration
  def change
  	rename_column :ghosts, :difficulty_level, :difficulty
  end
end
