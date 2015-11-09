require 'rails_helper'

RSpec.describe "species/index", type: :view do
  before(:each) do
    assign(:species, [
      Species.create!(
        :animal => "Animal"
      ),
      Species.create!(
        :animal => "Animal"
      )
    ])
  end

  it "renders a list of species" do
    render
    assert_select "tr>td", :text => "Animal".to_s, :count => 2
  end
end
