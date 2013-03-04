class ReportWorker
  include Sidekiq::Worker
  sidekiq_options :queue => :report

  def perform(time)
    5
  end
end
