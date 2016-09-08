class Recipe < ActiveRecord::Base

  belongs_to :category

  def self.get_all_names
    all.collect(&:name)
  end

end
