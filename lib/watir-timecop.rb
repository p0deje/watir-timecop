require 'watir-webdriver'
require 'watir-timecop/timer'

Watir::Wait.timer = Watir::Timecop::Timer.new
