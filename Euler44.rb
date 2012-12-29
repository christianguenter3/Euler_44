class Pentagonal
  def self.get_pentagonal(limit)
    1.upto(limit) do |x|
      yield x * (3 * x - 1) / 2 if block_given?
    end
  end
end

class Integer
  def pent?
    ((1+Math.sqrt(1+24*self.abs))/6)%1 == 0
  end
end

class Euler44

  
  def find_result
    pen_num = Array.new
    Pentagonal.get_pentagonal(3000){|x| pen_num << x}
    
    d = nil
    pen_num.each do |x|
      pen_num.each do |y|        
        if (x - y).pent? && (x + y).pent?
          d = (x - y).abs if d == nil || d > (x - y).abs
        end
      end
    end
    return d
  end
end
