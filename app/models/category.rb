class Category < ActiveRecord::Base

  has_many :recipes

  def self.get_all_categories
    select(:name).where(status: ACTIVE).collect(&:name)
  end


end
