class ScheduleReportsWorker
  include Sidekiq::Worker

  def perform(time)
    5
  end
end
