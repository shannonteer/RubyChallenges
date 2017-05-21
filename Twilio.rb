require 'rubygems'
require 'twilio-ruby'

account_sid = "ACd470255845513c7874627a81a99ea640"
auth_token = "76f2fbd62135a75704ff7adaffbbe06c"

client = Twilio::REST::Client.new(account_sid, auth_token)


puts 'Ask me a question'

answer = gets

message_list = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes definitely', 'You may rely on it', 'As I see it, yes', 'Most likely', 'Outlook good', 'Yes', 'Signs point to yes', 'Reply hazy try again', 'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', 'Do not count on it', 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubtful']

random_number = rand(max=message_list.length)

eight_ball_message = message_list[random_number]

puts eight_ball_message

message = client.account.messages.create(
    :from => '+1 512-942-0840',
    :to =>'+1 512-635-8286',
    :body => "The answer to your question: #{answer} is: #{eight_ball_message}!"
)
puts message.to