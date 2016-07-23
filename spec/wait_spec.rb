require 'spec_helper'

# extracted from https://github.com/watir/watirspec
describe Watir::Wait do
  describe "#timer" do
    it "returns Timecop::Timer" do
      expect(Watir::Wait.timer).to be_a(Watir::Timecop::Timer)
    end
  end

  describe "#until" do
    it "waits until the block returns true" do
      expect(Watir::Wait.until(0.5) { true }).to eq(true)
    end

    it "times out" do
      expect {Watir::Wait.until(0.5) { false }}.to raise_error(Watir::Wait::TimeoutError)
    end

    it "times out with a custom message" do
      expect {
        Watir::Wait.until(0.5, "oops") { false }
      }.to raise_error(Watir::Wait::TimeoutError, "timed out after 0.5 seconds, oops")
    end
  end

  describe "#while" do
    it "waits while the block returns true" do
      expect(Watir::Wait.while(0.5) { false }).to be_nil
    end

    it "times out" do
      expect {Watir::Wait.while(0.5) { true }}.to raise_error(Watir::Wait::TimeoutError)
    end

    it "times out with a custom message" do
      expect {
        Watir::Wait.while(0.5, "oops") { true }
      }.to raise_error(Watir::Wait::TimeoutError, "timed out after 0.5 seconds, oops")
    end
  end
end
