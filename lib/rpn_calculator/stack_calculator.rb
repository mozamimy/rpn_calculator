module RpnCalculator
  class StackCalculator
    def initialize(formula)
       @formula = formula
       @stack = []
    end

    def calc
      @formula.each do |e|
        if numeric?(e)
          @stack.push(e)
        else
          op1 = @stack.pop.to_f
          op2 = @stack.pop.to_f
          result = op2.send(e, op1)

          @stack.push(result)
        end
      end

      @stack.first
    end

    private

    def numeric?(s)
      begin
        Float(s)
        true
      rescue ArgumentError
        false
      end
    end
  end
end
