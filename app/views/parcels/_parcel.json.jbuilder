json.extract! parcel, :id, :recipient_name, :recipient_address, :recipient_contact, :weight, :from, :destination, :total_cost, :order_status, :created_at, :updated_at
json.url parcel_url(parcel, format: :json)
