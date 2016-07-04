module.exports = (robot) ->

  railsstack = [
    "https://read.codaisseur.com/topics/day-11-users-with-devise/articles/lab-2-postal-ii-authorization-with-cancancan",
  ]
  sinatrastack = [
    "https://read.codaisseur.com/topics/ruby/articles/2-contact-manager-in-sinatra#2",
  ]
  devisestack = [
    "https://read.codaisseur.com/topics/devise/articles/setting-up-authentication-with-devise",
  ]

  robot.hear /Stack -l/i, (msg) ->
    msg.send "You can choose between stack setups for: "
    msg.send "- Cancancan"
    msg.send "- Sinatra"
    msg.send "- Devise"
    msg.send "Type: 'Stack show ...' to call the language you need."

  robot.hear /Stack show (.*)/i, (msg) ->
    languageType = msg.match[1]
    if languageType is "cancancan"
      msg.send "Basic Cancancan stack setup: #{railsstack}"
    else if languageType is "sinatra"
      msg.send "Basic Sinatra stack setup: #{sinatrastack}"
    else if languageType is "devise"
      msg.send "Basic Devise stack setup: #{devisestack}"
    else
      msg.reply "I don't know anything about the Stack '#{languageType}' "
