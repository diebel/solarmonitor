# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# simple test
#every 1.minute do
#  command "echo 'Querying PVS6' >> #{path}/log/cron.log" 
#end

# Use this on the command line to update crontab
# whenever --update-crontab --set environment='development'

# specify default log location
set :output, "#{path}/log/cron.log"

# query PVS6
every 15.minute do
  #command "echo 'Querying PVS6' >> #{path}/log/cron.log" 
  runner "Reading.create!"
end

