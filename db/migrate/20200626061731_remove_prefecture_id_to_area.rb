class RemovePrefectureIdToArea < ActiveRecord::Migration[5.2]
  def change
    remove_column :areas, :prefecture_id
  end
end
