require 'rails_helper'

RSpec.describe "send_histories/show", type: :view do
  before(:each) do
    @send_history = assign(:send_history, SendHistory.create!(
      :from_user_id => 2,
      :to_user_id => 3,
      :amount => 4,
      :send_type => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
