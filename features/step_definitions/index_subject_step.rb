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
	table.hashes.each{|data|
		Subject.create!(name: data["科目"], credits: data["単位"].to_i, attendance: data["最低面接時間"].to_i)
	}
end

ならば /^以下の科目情報を表示すること:$/ do |table|
	table.hashes.each{|data|
		page.should have_content(data["科目"])
		page.should have_content(data["単位"])
		page.should have_content(data["最低面接時間"])
	}
end

