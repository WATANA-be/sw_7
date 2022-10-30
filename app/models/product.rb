class Product < ApplicationRecord
    has_one :cartitem, dependent: :destroy
end
