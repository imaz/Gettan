# encoding: UTF-8
# language: ja

前提 /^システムの "([^"]*)" が表示されている$/ do |page_name|
	visit path_to(page_name)
end

もし /^ユーザは "([^"]*)" のリンクをクリックする$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

ならば /^システムは "([^"]*)" ページを表示する$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

