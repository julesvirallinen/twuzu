require 'rails_helper'

RSpec.describe "tzeets/index", type: :view do
  before(:each) do
    assign(:tzeets, [
      Tzeet.create!(
        :text => "Text",
        :user => nil
      ),
      Tzeet.create!(
        :text => "Text",
        :user => nil
      )
    ])
  end

  it "renders a list of tzeets" do
    render
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
