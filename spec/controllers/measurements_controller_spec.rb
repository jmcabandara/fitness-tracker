require 'spec_helper'

describe MeasurementsController do
  before do
    sign_in FactoryGirl.create(:user)
    @track = FactoryGirl.create(:track, program: FactoryGirl.create(:program_with_steps))
  end

  describe "#create" do
    context "with success" do
      before do
        post :create, track_id: @track.id, measurement: {chest: 1, arms: 2, waist: 3, hips: 4, thighs: 5, weight: 6}
      end

      it { expect(response).to redirect_to(@track) }
    end

    context "failed" do
      before do
        post :create, track_id: @track.id, measurement: {chest: nil, arms: nil, waist: nil, hips: nil, thighs: nil, weight: nil}
      end

      it { expect(response).to be_success }
      it { expect(response).not_to be_redirect }
      it { expect(response).to render_template("tracks/show")}
    end
  end
end
