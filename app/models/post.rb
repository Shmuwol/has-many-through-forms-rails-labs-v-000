class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories, reject_if: :all_blank


  # def categories_attributes=(categories_hashes)
  #
  #   categories_hashes.each do |i, categories_attributes|
  #     if categories_attributes[:name].present?
  #       category = Category.find_or_create_by(name: categories_attributes[:name])
  #       if !self.categories.include?(category)
  #         self.post_categories.build(category: category)
  #       end
  #     end
  #   end
  #
  # end


end
