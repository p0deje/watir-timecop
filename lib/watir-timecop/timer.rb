module Watir
  module Timecop
    class Timer

      #
      # Executes given block until it returns true or exceeds timeout.
      # It is different from default Watir::Wait::Timer implementation
      # since it does not use `Time.now` to determine if
      # waiting has exceeded timeout. Usage of `Time.now` is not compatible
      # with Timecop gem - we may never exceed the timeout if it's stubbed.
      #
      # @param [Fixnum] timeout
      # @yield block
      # @api private
      #

      def wait(timeout, &block)
        counter = 0
        until counter >= timeout
          yield(block)
          sleep Watir::Wait::INTERVAL
          counter += Watir::Wait::INTERVAL
        end
      end

    end # Timer
  end # Timecop
end # Watir
