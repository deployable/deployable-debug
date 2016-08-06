$debug = false
$trace = false


module Deployable; end


module Deployable::Debug

  def debug *vals
    return unless $debug
    if block_given?  
      yield  
    else
      #text = vals[0]
      log 'debug', *vals
    end
  end

  def trace *vals
    return unless $trace
    if block_given?
      yield  
    else
      #log 'trace', text, vals[1..-1].join('] [')
      log 'trace', *vals
    end  
  end

  def log *vals
    binding.pry
    str = ''
    if vals.length == 1
      vals[1] = ''
    elsif vals.length > 2 
      str = vals[2..-1].join('] [')
    end
    printf "%-5s: %s [%s]\n", vals[0], vals[1], str
  end

end


module Deployable::Debug::Id

  def debug *vals
    return unless $debug
    if block_given?  
      yield  
    else
      text = vals[0]
      printf "debug %12s: %-16s [%s]\n", @id, text, vals[1..-1].join('] [')
    end
  end

  def trace *vals
    return unless $trace
    if block_given?
      yield  
    else
      text = vals[0]
      printf "trace %12s: %-16s [%s]\n", @id, text, vals[1..-1].join('] [')
    end  
  end

end

