require 'rails_helper'

RSpec.describe "tzeets/show", type: :view do
  before(:each) do
    @tzeet = assign(:tzeet, Tzeet.create!(
      :text => "Text",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
  end
end
