# frozen_string_literal: true
require 'slack-ruby-bot'

module SlackMessageForwarder
  class Bot < SlackRubyBot::Bot
    match /#{ENV["KEY_PHRASE"]}/ do |client, data, match|
      client.say(text: "https://#{client.store.teams[data[:team]][:domain]}.slack.com/archives/#{data[:channel]}/p#{data[:event_ts].delete('.')}", channel: ENV["FORWARDEE_CHANNEL_ID"])
    end
  end
end

SlackMessageForwarder::Bot.run
