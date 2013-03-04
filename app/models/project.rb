class Project < ActiveRecord::Base
  attr_accessible :git_url, :name, :path

  validates :name, :git_url, :path, presence: true

  has_and_belongs_to_many :metrics
end
