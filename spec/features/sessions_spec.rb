# filename: ./spec/features/sessions_spec.rb

require './spec/support/session_helper.rb'

feature 'Participant engages with sessions' do
  scenario 'Participant navigates to sessions menu' do
    sessions.open_menu

    expect(sessions).to have_menu_title

    home.return_home

    expect(home).to be_visible
  end

  scenario 'Participant starts session from home page' do
    sessions.start_session_from_home

    expect(session_1).to have_session_content
  end

  scenario 'Participant reads all sessions' do
    sessions.update_start_date_by(44)
    sessions.open_menu

    expect(sessions).to have_unread_sessions(18)

    begin
      num_left ||= 17
      sess_num ||= 0
      puts "reads session #{sess_num + 1}" # if failure, we know where
      sessions.read_session(sess_num)
      sessions.scroll_to_and_click_home_button
      sessions.open_menu

      expect(sessions).to have_unread_sessions(num_left)

      num_left -= 1
      sess_num += 1
    end until num_left < 0
  end

  scenario 'Participant sees appropriate sessions, opens current session, ' \
           'sees appropriate content' do
    days = [1, 3, 6, 8, 10, 13, 15, 17, 20, 22, 24, 27, 29, 31, 34, 36, 38]
    session = [session_1, session_2, session_3, session_4, session_5,
               session_6, session_7, session_8, session_9, session_10,
               session_11, session_12, session_13, session_14, session_15,
               session_16, session_17, session_18]

    begin
      n ||= 0
      puts "sees session #{n + 1} content" # if failure, we know where
      sessions.update_start_date_by(days[n])
      sessions.open_menu

      expect(sessions).to_not have_session_present(session[n + 1])

      sessions.open_session(session[n])

      expect(session[n]).to have_session_content

      sessions.scroll_to_and_click_home_button

      expect(sessions).to have_title_present_on_home(session[n])
      n += 1
    end until n > 16

    puts 'sees session 18 content'
    sessions.update_start_date_by(41)
    sessions.open_menu
    sessions.open_session(session_18)

    expect(session_18).to have_session_content

    sessions.scroll_to_and_click_home_button

    expect(sessions).to have_title_present_on_home(session_18)
  end

  scenario 'Participant responds to activity planning and feedback' do
    sessions.update_start_date_by(18)
    sessions.open_menu
    sessions.open_session(session_1)
    sessions.scroll_to_last_slide
    sessions.plan_activity
    sessions.select_home_button

    sessions.open_menu
    sessions.open_session(session_3)
    sessions.respond_yes_to_planning_feedback
    sessions.scroll_to_last_slide
    sessions.plan_activity
    sessions.select_home_button

    sessions.open_menu
    sessions.open_session(session_4)
    sessions.respond_no_to_planning_feedback
  end
end
