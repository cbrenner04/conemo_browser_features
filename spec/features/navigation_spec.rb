# filename: ./spec/features/navigation_spec.rb

require './lib/pages/configuration'
require './lib/pages/home'
require './lib/pages/instructions'
require './lib/pages/training'

def configuration
  configuration ||= Configuration.new
end

def home
  home ||= Home.new
end

def instructions
  instructions ||= Instructions.new
end

def training
  training ||= Training.new
end

# this is purely to cover pages not covered in the other specs
feature 'Participant navigates to available pages in app' do
  background do
    configuration.configure_user
  end

  after do
    configuration.clear_data
  end

  scenario 'Participant navigates to instructions page' do
    instructions.open
    expect(instructions).to be_present
    home.return_home
    expect(home).to be_visible
  end

  scenario 'Participant navigates to training page' do 
    training.open
    expect(training).to be_present
    home.return_home
    expect(home).to be_visible
  end
end
