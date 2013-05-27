require "strategy.rb"

describe ContextClass do

  before(:each) do
    @strategy = mock "Strategy"
    @text = "This is my test string of text."
    @context = ContextClass.new(@strategy)
  end

  it "should store a strategy on initialization" do
    @context.strategy.should be @strategy
  end

  it "should be able to store a string of text" do
    @context.text = @text
    @context.text.should == @text
  end
  

end

describe StrategyOne do

end

describe StrategyTwo do

end