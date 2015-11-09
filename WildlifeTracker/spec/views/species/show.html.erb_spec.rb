require 'rails_helper'

RSpec.describe "species/show", type: :view do
  before(:each) do
    @species = assign(:species, Species.create!(
      :animal => "Animal"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Animal/)
  end
end
