class ContextClass
  attr_reader :strategy, :text

  def text=(text)
    @text = text
  end

  def strategy=(strategy)
    @strategy = strategy
  end

  def output
    @strategy.call(self)
  end

end

class StrategyOne

  def call(context)
    context.text.reverse
  end

end

class StrategyTwo

  def call(context)
    context.text.upcase
  end

end