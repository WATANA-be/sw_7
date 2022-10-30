class Cart < ApplicationRecord
    has_many :cartitem, dependent: :destroy
end
