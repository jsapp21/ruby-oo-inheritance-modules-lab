# any instances of seld need to be removed on modules
# extend keyword is responsible for defining the method

module Memorable

  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

  end # end ClassMethods

  module InstanceMethods

    # if you needed to remove self here, how would you? 
    # but why does this pass like this?
    def initialize
      self.class.all << self
    end

    def to_param
      name.downcase.gsub(' ', '-')
    end

  end # end InstanceMethods

end