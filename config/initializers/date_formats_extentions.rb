# encoding:UTF-8
Time::DATE_FORMATS.merge!(
  :timetable => lambda{|t| t.strftime("%Y-%m-%d (#{%w(日 月 火 水 木 金 土)[t.wday]})") }
)
