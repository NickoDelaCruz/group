class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:name, {:presence => true})
  before_save(:capitalize_letter)

  def capitalize_letter
    self.name = name.split.map(&:capitalize).join(' ')
  end
end
