# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  color      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: :true, uniqueness: :true
  validates :name, length: 3..40
end
