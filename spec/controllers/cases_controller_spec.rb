require 'rails_helper'

RSpec.describe CasesController, type: :controller do
  describe "#update" do
    let(:id) { 1010 }
    let(:label_id) { 2020 }

    it "adds the label to the case" do
      expect(Case).to receive(:add_label)
      post :update, id: id, label_id: label_id
    end
  end
end
