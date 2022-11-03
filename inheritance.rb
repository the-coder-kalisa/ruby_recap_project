class Chef
  def make_chicken
    puts 'The chief makes chicken'
  end

  def make_salad
    puts 'the chief makes salad'
  end

  def make_special_dish
    puts 'the chief makes bbq ribs'
  end
end

class ItalianChef < Chef
    def make_special_dish
        puts "the chef makes eggplant parm"
    end
    def make_pasta
        puts "The chief make pasta"
        
    end
end

class ClassName
    def initialize
        
    end
end

italian_chef = ItalianChef.new()
italian_chef.make_special_dish
