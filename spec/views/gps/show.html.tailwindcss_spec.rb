require 'rails_helper'

RSpec.describe 'gps/show', type: :view do
  before(:each) do
    assign(:gp, Gp.create!(
                  container_no: 'Container No',
                  weight: 2.5,
                  vehicle_reg: 'Vehicle Reg',
                  hauller: 'Hauller',
                  is_approved: false,
                  customer: 'Customer',
                  line: 'Line',
                  size: 'Size',
                  depot: 'Depot',
                  sheet: 'Sheet'
                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Container No/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Vehicle Reg/)
    expect(rendered).to match(/Hauller/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Customer/)
    expect(rendered).to match(/Line/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Depot/)
    expect(rendered).to match(/Sheet/)
  end
end
