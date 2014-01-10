# Get keys of a hash whose values equal to given arguments.
require 'debugger'
# Code:
class Hash
  def keys_of(*args)
    ans = []
    args.each do |arg|
      self.each do |k, v|
        ans << k if v == arg
      end
    end
    ans
  end
end