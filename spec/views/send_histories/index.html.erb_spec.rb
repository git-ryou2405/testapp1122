require 'rails_helper'

RSpec.describe "send_histories/index", type: :view do
  before(:each) do
    assign(:send_histories, [
      SendHistory.create!(
        :from_user_id => 2,
        :to_user_id => 3,
        :amount => 4,
        :send_type => 5
      ),
      SendHistory.create!(
        :from_user_id => 2,
        :to_user_id => 3,
        :amount => 4,
        :send_type => 5
      )
    ])
  end

  it "renders a list of send_histories" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
