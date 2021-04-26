def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep Beep!"
end

def use_headlights(brightness = "low-beams")
  puts "Turning on the #{brightness} headlights"
  puts "Watch out for the deer!"
end

sound_horn
accelerate
use_headlights("brights")