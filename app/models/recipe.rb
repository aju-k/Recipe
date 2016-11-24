class Recipe < ActiveRecord::Base

  belongs_to :category
  has_attached_file :picture, styles: {medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  def self.get_all_names
    all.collect(&:name)
  end

end