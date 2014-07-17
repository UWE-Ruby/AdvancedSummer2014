require "#{File.dirname(__FILE__)}/message"

describe "Message" do
	
	describe "step one" do
		before :each do 
			@message = Message.new("Mischief managed!")
		end

		it "should be all caps" do
			@message.all_caps.should == "MISCHIEF MANAGED!"
		end

		it "should not have any non-alphabet characters" do
			@message.discard_nonAZ.should_not include('!')
		end

		it "should have a space after every 5 characters" do
			@message.five_split.sample.length.should_not > 5
		end

		it "should add Xs if the last group is < 5 characters" do
			@message.all_caps
			@message.discard_nonAZ
			@message.five_split
			@message.x_padding.pop == "dXXXX"
		end

		it "should take care of everything in the step_one method" do
			@message.step_one.should == "MISCH IEFMA NAGED"
		end
	end
end