# filename: ./spec/features/sessions_spec.rb

require './lib/pages/configuration'
require './spec/support/session_helper.rb'

def configuration
  configuration ||= Configuration.new
end

feature 'Participant engages with sessions' do
  background do
    configuration.configure_user
  end

  after do
    configuration.clear_data
  end

  scenario 'Participant navigates to sessions menu' do
    sessions.open
    expect(page).to have_css('h1', text: 'Sesiones')
  end

  context 'Participant sees appropriate sessions, opens current session,' do
    days = [1, 3, 6, 8, 10, 13, 15, 17, 20, 22, 24, 27, 29, 31, 34, 36, 38]
    current_session = [session_1, session_2, session_3, session_4, session_5,
                       session_6, session_7, session_8, session_9, session_10,
                       session_11, session_12, session_13, session_14,
                       session_15, session_16, session_17]
    next_session = [session_2, session_3, session_4, session_5, session_6,
                    session_7, session_8, session_9, session_10, session_11,
                    session_12, session_13, session_14, session_15, session_16,
                    session_17, session_18]
    n = 1
    days.zip(current_session, next_session) do |x, y, z|
      scenario "sees session #{n} content" do
        sessions.update_start_date_by(x)
        sessions.open
        expect(z).to_not be_present
        y.open
        expect(y).to have_session_content
      end
      n += 1
    end

    scenario 'sees session 18 content' do
      sessions.update_start_date_by(41)
      sessions.open
      session_18.open
      expect(session_18).to have_session_content
    end
  end
end
