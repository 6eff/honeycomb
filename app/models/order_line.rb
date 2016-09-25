class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :material, optional: true
  belongs_to :broadcaster, optional: true

end
