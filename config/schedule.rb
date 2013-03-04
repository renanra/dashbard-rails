every 1.minutes do
  runner "PrintTimeWorker.perform_async(#{Time.now.to_i})"
end
