# filename: ./spec/features/sessions_spec.rb

require './lib/content/session_1'
require './lib/pages/configuration'
require './lib/pages/sessions'
require './lib/pages/sessions/session_1'

def configuration
  configuration ||= Configuration.new
end

def sessions
  sessions ||= Sessions.new
end

def session_1
  session_1 ||= Sessions::SessionOne.new
end


feature 'Participant engages with sessions' do
  background do
    configuration.configure_user
    sessions.open
  end

  after do
    execute_script("indexedDB.deleteDatabase('conemo'); localStorage.clear()")
  end

  scenario 'Participant navigates to sessions menu' do
    expect(page).to have_css('h1', text: 'Sesiones')
  end

  scenario 'Participant navigates to first session' do
    session_1.open
    expect(session_1_content).to have_content
  end
end
