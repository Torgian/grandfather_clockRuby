def dingdong (&block)
  hour_now = Time.new.hour
  convert_hour = hour_now - 12
  if hour_now > 12
    hour_now = convert_hour
  end

  hour_now.times do
    block.call
  end
end

dingdong do
  puts "DONG!"
end