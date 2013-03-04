class ScheduleReportsWorker
  def self.schedule(projects)
    projects.each do |project|
      ReportWorker.perform_async(project)
    end
  end
end
