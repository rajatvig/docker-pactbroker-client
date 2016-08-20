require 'pact_broker/client/tasks'

PactBroker::Client::PublicationTask.new do | task |
  task.consumer_version = ENV['CONSUMER_VERSION']
  task.pattern = '/pacts/*.json'
  task.pact_broker_base_url = ENV['URI_BROKER']
end
