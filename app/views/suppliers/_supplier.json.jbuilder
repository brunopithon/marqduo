json.extract! supplier, :id, :company, :responsible, :activity, :commission, :email, :phone_number_1, :phone_number_2, :address, :obs, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
