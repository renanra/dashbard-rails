class PrintTimeWorker
  include Sidekiq::Worker

  def perform(time)
    `touch ~/#{time}.txt`
  end
end
