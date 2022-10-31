class Parcel < ApplicationRecord
    validates :recipient_name, :recipient_address, :recipient_contact, :weight, :from, :destination, presence: true
end
