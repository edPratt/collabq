# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

@postfixes = ['.com', '.net', '.org', '.me']
@orgs = ['gmail', 'comcast', 'yahoo', 'youtube']
@names = ['jeffybear', 'skinnycal', 'scoobasteve', 'hal']
@email_pswd = []
for i in @names do
  @email = i + "@" + @orgs.sample + @postfixes.sample
  User.create!({:email => @email, :password => 'qwertyuiop', :password_confirmation => 'qwertyuiop'})
  @email_pswd.push([@email, 'qwertyuiop'])
end

User.create!({:email => "epratt8181@gmail.com", :password => 'qwertyuiop', :password_confirmation => 'qwertyuiop'})

@user_ids = [1, 2, 3, 4, 5]
@lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
for i in 1..50 do
  Question.create!({:user_id => @user_ids.sample, :body => @lorem})
end

@lorems = ["Et harum quidem rerum facilis est et expedita distinctio.", "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.", ""]
for i in 1..50 do
  Answer.create!({:question_id => i, :body => @lorems.sample})
end


# Question.delete_all

# for i in 1...50 do
#   @rand_word = RandomWord.nouns.next
#   @rand_hour_rate = rand(10..50)
#   @rand_tax_rate = rand(1..7)
#   Job.create(title: @rand_word, hour_rate: @rand_hour_rate, tax_rate: @rand_tax_rate)
# end
