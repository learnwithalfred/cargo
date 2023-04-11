json.extract! gp, :id, :container_no, :weight, :vehicle_reg, :hauller, :is_approved, :customer, :date_in, :date_out,
              :line, :size, :depot, :sheet, :created_at, :updated_at
json.url gp_url(gp, format: :json)
