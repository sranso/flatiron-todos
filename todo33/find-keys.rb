# Get keys of a hash whose values equal to given arguments.
require 'debugger'
# Code:
class Hash
  def keys_of(*args)
    ans = []
    self.each do |k, v|
      args.each do |arg|
        ans << k if v == arg
      end
    end
    ans
  end
end
