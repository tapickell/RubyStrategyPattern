class ContextClass
  attr_accessor :strategy, :text

  def initialize(strategy = nil)
    @strategy = strategy
  end

  def text=(text)
    @text = text
  end

end

class StrategyOne

end

class StrategyTwo

end