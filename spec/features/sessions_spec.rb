# frozen_string_literal: true
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

    # check for session content
    expect(session_1).to have_slide_1_content
    sessions.next
    expect(session_1).to have_slide_2_content
    sessions.next
    expect(session_1).to have_slide_3_content
    sessions.next
    expect(session_1).to have_slide_4_content
    sessions.next
    expect(session_1).to have_slide_5_content
    sessions.next
    expect(session_1).to have_slide_6_content
    sessions.next
    expect(session_1).to have_slide_7_content
    sessions.next
    expect(session_1).to have_slide_8_content
    sessions.next
    expect(session_1).to have_slide_9_content
    sessions.next

    # check the activity planning functionality
    expect(session_1).to be_on_activity_planning_slide
    sessions.next
    expect(session_1).to have_nothing_planned_alert
    sessions.previous
    expect(session_1).to be_on_activity_planning_slide
    sessions.plan_activity
    sessions.next
    expect(session_1).to have_planned_activity_alert
    sessions.next
    expect(session_1).to have_responses_saved

    # go home
    sessions.select_home_button
    expect(sessions).to have_title_present_on_home(session_1)
  end

  # these no longer work as is
  scenario 'Participant reads all sessions' do
    sessions.update_start_date_by(44)
    sessions.open_menu

    expect(sessions).to have_unread_sessions(18)

    (0..17).each do |i|
      puts "reads session #{i + 1}" # if failure, we know when
      sessions.read_session(i)
      sessions.scroll_to_and_click_home_button
      sessions.open_menu

      expect(sessions).to have_unread_sessions((18 - i) - 1)
    end
  end

  scenario 'Participant sees appropriate sessions, opens current session, ' \
           'sees appropriate content' do
    days = [1, 3, 6, 8, 10, 13, 15, 17, 20, 22, 24, 27, 29, 31, 34, 36, 38]
    session = [session_1, session_2, session_3, session_4, session_5,
               session_6, session_7, session_8, session_9, session_10,
               session_11, session_12, session_13, session_14, session_15,
               session_16, session_17, session_18]

    days.zip(session) do |day, lesson|
      puts "sees #{lesson} content" # if failure, we know where
      sessions.update_start_date_by(day)
      sessions.open_menu

      expect(sessions).to_not have_session_present(lesson)

      sessions.open_session(lesson)

      expect(lesson).to have_session_content

      sessions.scroll_to_and_click_home_button

      expect(sessions).to have_title_present_on_home(lesson)
    end

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
