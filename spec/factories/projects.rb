# encoding: utf-8

FactoryGirl.define do
  factory :project do
    name "Comentários"
    git_url "git://github.com/globo/thumbor"
    path "/app"
  end
end
