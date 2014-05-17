require 'rubygems'
require 'jmx'
require 'rmi'

class HitBean < RubyDynamicMBean
  def initialize(name,desc)
    super name, desc
    @hits = 0
  end

  def hit!
    @hits += 1
  end

  # rest of implementation goes here..
end
