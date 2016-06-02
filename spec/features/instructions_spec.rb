# frozen_string_literal: true
# filename: ./spec/features/instructions_spec.rb

require './lib/pages/instructions'

def instructions
  @instructions ||= Instructions.new
end

feature 'Instructions' do
  scenario 'Participant navigates to instructions page' do
    instructions.open

    expect(instructions).to be_present

    home.return_home

    expect(home).to be_visible
  end
end
