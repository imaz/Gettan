# encoding: UTF-8
# language: ja

前提 /^システムの "([^"]*)" が表示されている$/ do |page_name|
	visit path_to(page_name)
end

もし /^ユーザは "([^"]*)" のリンクをクリックする$/ do |link_name|
	click_link link_name
end

ならば /^システムは "([^"]*)" ページを表示する$/ do |page_name|
	page.should have_css("h2", text: page_name)
end

ならば /^システムは "([^"]*)" のエラーメッセージを表示する$/ do |message|
  find("#error_message").should have_content(message)
end

前提 /^以下の科目情報が登録されていること:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

ならば /^以下の科目情報を表示すること:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

