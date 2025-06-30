json.extract! invoice, :id, :customer_name, :total, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
