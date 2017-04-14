# frozen_string_literal: true

require "rails_helper"

feature "Collection show page:" do
  let!(:recording) do
    AudioRecording.create(title: ["Any rags"],
                          description: ["Baritone solo with orchestra accompaniment."],
                          admin_policy_id: AdminPolicy::PUBLIC_POLICY_ID)
  end
  let(:user) { create :user }

  before do
    login_as user
  end

  scenario "show the page" do
    visit catalog_ark_path("ark:", "99999", recording.id)
    expect(page).to have_content "Any rags"
    expect(page).to have_content "Baritone solo with orchestra accompaniment."
  end
end
