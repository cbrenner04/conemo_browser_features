# filename: ./spec/support/sessions_helper.rb

require './lib/pages/sessions'
Dir['./lib/pages/sessions/*.rb'].each { |file| require file }

def sessions
  @sessions ||= Sessions.new
end

def session_1
  @session_1 ||= Sessions::SessionOne.new
end

def session_2
  @session_2 ||= Sessions::SessionTwo.new
end

def session_3
  @session_3 ||= Sessions::SessionThree.new
end

def session_4
  @session_4 ||= Sessions::SessionFour.new
end

def session_5
  @session_5 ||= Sessions::SessionFive.new
end

def session_6
  @session_6 ||= Sessions::SessionSix.new
end

def session_7
  @session_7 ||= Sessions::SessionSeven.new
end

def session_8
  @session_8 ||= Sessions::SessionEight.new
end

def session_9
  @session_9 ||= Sessions::SessionNine.new
end

def session_10
  @session_10 ||= Sessions::SessionTen.new
end

def session_11
  @session_11 ||= Sessions::SessionEleven.new
end

def session_12
  @session_12 ||= Sessions::SessionTwelve.new
end

def session_13
  @session_13 ||= Sessions::SessionThirteen.new
end

def session_14
  @session_14 ||= Sessions::SessionFourteen.new
end

def session_15
  @session_15 ||= Sessions::SessionFifteen.new
end

def session_16
  @session_16 ||= Sessions::SessionSixteen.new
end

def session_17
  @session_17 ||= Sessions::SessionSeventeen.new
end

def session_18
  @session_18 ||= Sessions::SessionEighteen.new
end
