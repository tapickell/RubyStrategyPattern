require "strategy.rb"

describe ContextClass do

  before(:each) do
    @strategy = mock "Strategy"
    @text = "This is my test string of text."
    @context = ContextClass.new
  end

  describe "#text=" do
    it "should be able to store a string of text" do
      @context.text = @text
      @context.text.should == @text
    end
  end

  describe "#strategy=" do
    it "should be able to store a strategy" do
      @context.strategy = @strategy
      @context.strategy.should be @strategy
    end
  end

  describe "#output" do
    it "should output the text according to the strategy" do
      @text = "This is my test string of text."
      @strategyOne = StrategyOne.new
      @strategyTwo = StrategyTwo.new
      @context.text = @text
      @context.strategy = @strategyOne
      @context.output.should == @text.reverse
      @context.strategy = @strategyTwo
      @context.output.should == @text.upcase
    end
  end

end

describe StrategyOne do

  before(:each) do
    @strategy = StrategyOne.new
    @text = "This is my test string of text."
    @context = ContextClass.new
    @context.text = @text
    @context.strategy = @strategy
  end

  it "should respond to call" do
    @strategy.should respond_to :call
  end

  describe "#call" do
    it "should return formatted text" do
      @strategy.call(@context).should == @text.reverse
    end
  end

end

describe StrategyTwo do

  before(:each) do
    @strategy = StrategyTwo.new
    @text = "This is my test string of text."
    @context = ContextClass.new
    @context.text = @text
    @context.strategy = @strategy
  end

  it "should respond to call" do
    @strategy.should respond_to :call
  end

  describe "#call" do
    it "should return formatted text" do
      @strategy.call(@context).should == @text.upcase
    end
  end

end