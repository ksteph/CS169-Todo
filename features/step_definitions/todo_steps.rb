Given /^the following tasks:$/ do |tasks|
  tasks.hashes.each do |task|
    Todo.create(task)
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^(?:|I )should see a check?(.*) next to "([^"]*)"$/ do |check_type, task|
  check_class = nil

  case check_type
  when 'box'
    check_class = 'unchecked'
  when 'mark'
    check_class = 'check'
  else
    check_class = 'check'
  end
  assert(page.body =~ /<tr>.*#{check_class}(?:(?!<\/tr>).)*?#{task}.*?<\/tr>/m, "No check#{check_type} next to \"#{task}\"!")
end
