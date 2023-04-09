require 'rails_helper'

RSpec.describe "gps/index", type: :view do
  before(:each) do
    assign(:gps, [
      Gp.create!(
        container_no: "Container No",
        weight: 2.5,
        vehicle_reg: "Vehicle Reg",
        hauller: "Hauller",
        is_approved: false,
        customer: "Customer",
        line: "Line",
        size: "Size",
        depot: "Depot",
        sheet: "Sheet"
      ),
      Gp.create!(
        container_no: "Container No",
        weight: 2.5,
        vehicle_reg: "Vehicle Reg",
        hauller: "Hauller",
        is_approved: false,
        customer: "Customer",
        line: "Line",
        size: "Size",
        depot: "Depot",
        sheet: "Sheet"
      )
    ])
  end

  it "renders a list of gps" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Container No".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Vehicle Reg".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Hauller".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Customer".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Line".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Size".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Depot".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Sheet".to_s), count: 2
  end
end
