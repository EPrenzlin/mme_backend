class Exemption < ApplicationRecord

    validates :name, presence: { message: "Company name must be provided" }
    validates :isin, uniqueness:true, length: { minimum: 12, maximum: 12 }
    validates :stock_market, length: {minimum: 3}

end
