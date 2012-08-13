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

  every 1.day, :at => '12:05 am' do
    if Date.today.day == 1
      runner "Engineer.check_expiry_of_proposals"
    end
    rake "clear_expired_sessions"
  end


# Learn more: http://github.com/javan/whenever
