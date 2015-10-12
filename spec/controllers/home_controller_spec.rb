require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "#index" do
    let(:labels) { ["label1", "label2"] }
    let(:filters) { ["filter1", "filter2"] }

    it "loads the filters and the labels" do
      expect(Filter).to receive(:all) { filters }
      expect(Label).to receive(:all) { labels }
      get :index
    end
  end
end
