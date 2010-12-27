require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    User.create!(:name => "Example User",
                 :email => "example@example.com",
                 :mailable => "false",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password  = "password"
      mailable = "false"
      User.create!(:name => name,
                   :email => email,
                   :mailable => mailable,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end
