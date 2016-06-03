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

  scenario 'Participant reads session, plans activity, responds to feedback' do
    sessions.start_session_from_home

    # check for session content
    expect(session_1).to have_slide_1_content

    # confirm you cannot scroll in lesson
    sessions.scroll_down
    expect(session_1).to_not have_slide_2_content

    # complete check of content
    sessions.click_next
    expect(session_1).to have_slide_2_content
    sessions.click_next
    expect(session_1).to have_slide_3_content
    sessions.click_next
    expect(session_1).to have_slide_4_content
    sessions.click_next
    expect(session_1).to have_slide_5_content
    sessions.click_next
    expect(session_1).to have_slide_6_content
    sessions.click_next
    expect(session_1).to have_slide_7_content
    sessions.click_next
    expect(session_1).to have_slide_8_content
    sessions.click_next
    expect(session_1).to have_slide_9_content
    sessions.click_next

    # check the activity planning functionality
    expect(session_1).to be_on_activity_planning_slide
    sessions.click_next
    expect(sessions).to have_no_response_alert
    sessions.click_previous
    expect(session_1).to be_on_activity_planning_slide
    sessions.plan_activity
    sessions.click_next
    expect(session_1).to have_planned_activity_alert
    sessions.click_next
    expect(session_1).to have_responses_saved

    # confirm you cannot update responses
    sessions.click_previous
    sessions.click_previous
    expect { sessions.plan_activity }.to raise_error(Capybara::ElementNotFound)

    # go home
    sessions.click_through_lesson
    sessions.select_home_button
    expect(sessions).to have_title_present_on_home(session_1)

    # check activity planning feedback
    today = Date.today
    sessions.update_planned_activity(planned_date: (today - 2),
                                     follow_up_date: (today + 1))
    sessions.start_session_from_home
    expect(sessions).to_not have_feedback_question
    sessions.go_back

    sessions.update_planned_activity(planned_date: (today - 3),
                                     follow_up_date: today)
    sessions.start_session_from_home
    expect(sessions).to have_feedback_question
    sessions.click_next
    expect(sessions).to have_no_response_alert
    sessions.click_previous
    sessions.respond_yes_to_planning_feedback
    expect(sessions).to have_yes_feedback_follow_up_questions
    sessions.respond_to_feedback_follow_up_questions
    sessions.click_next

    sessions.click_previous
    sessions.click_previous
    sessions.respond_no_to_planning_feedback
    expect(sessions).to have_no_feedback_follow_up
  end

  scenario 'Participant reads all sessions, sees the status update once read' do
    sessions.update_start_date_by(44)
    sessions.open_menu

    expect(sessions).to have_unread_sessions(18)

    (0..17).each do |i|
      puts "reads session #{i + 1}" # if failure, we know when
      sessions.read_session(i)
      sessions.click_through_lesson
      sessions.select_home_button
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

    (0..16).each do |i|
      puts "sees session #{i + 1} content" # if failure, we know where
      sessions.update_start_date_by(days[i])
      sessions.open_menu

      expect(sessions).to_not have_session_present(session[i + 1])

      sessions.open_session(session[i])

      # expect(lesson).to have_session_content

      sessions.click_through_lesson
      sessions.select_home_button

      expect(sessions).to have_title_present_on_home(session[i])
    end

    puts 'sees session 18 content'
    sessions.update_start_date_by(41)
    sessions.open_menu
    sessions.open_session(session_18)

    # expect(session_18).to have_session_content

    sessions.click_through_lesson
    sessions.select_home_button

    expect(sessions).to have_title_present_on_home(session_18)
  end
end
