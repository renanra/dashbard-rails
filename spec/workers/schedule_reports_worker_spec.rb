require 'spec_helper'
require 'sidekiq/testing'

describe ScheduleReportsWorker do
  it "should add to sidekiq queue all the projects" do
    projects = create_list(:project, 3)
    projects.map! { |project| project.attributes }

    expect {
      ScheduleReportsWorker.schedule(projects)
    }.to change(ReportWorker.jobs, :size).by(3)
  end
end
