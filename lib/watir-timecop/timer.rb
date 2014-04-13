require 'timeout'

module Watir
  module Timecop
    class Timer

      #
      # Executes given block until it returns true or exceeds timeout.
      # It is different from default Watir::Wait::Timer implementation
      # since we use `Timeout.timeour` rather than `Time.now` to determine if
      # waiting has exceeded timeout. Usage of `Time.now` is not compatible
      # with Timecop gem - we may never exceed the timeout if it's stubbed.
      #
      # @param [Fixnum] timeout
      # @yield block
      # @api private
      #

      def wait(timeout, &block)
        Timeout.timeout(timeout) do
          (timeout / Watir::Wait::INTERVAL).to_i.times &block
        end
      rescue Timeout::Error
        false
      end

    end # Timer
  end # Timecop
end # Watir
