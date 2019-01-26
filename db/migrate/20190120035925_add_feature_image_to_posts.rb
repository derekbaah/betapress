class AddFeatureImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :featureimage, :string
  end
end
