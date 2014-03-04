require 'watir-webdriver'
require 'watir-timecop/timer.rb'

Watir::Wait.timer = Watir::Timecop::Timer.new
