require 'rails_helper'

RSpec.describe FiltersController, type: :controller do
  describe "#show" do
    let(:kases) { ["Case1", "Case2"] }
    let(:filter) { "A filter" }
    subject { get :show, id: 10 }

    before do
      expect(Filter).to receive(:all) { {} }
      expect(Label).to receive(:all) { {} }
    end

    it "loads the filter and all the cases associated with that filter" do

      expect(Filter).to receive(:find).with("10"){ filter }
      expect(Case).to receive(:by_filter).with("10"){ kases }
      subject
      expect(assigns(:filter) ).to eq filter
      expect(assigns(:cases) ).to eq kases
    end
  end
end
