class SecretHandshake
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def commands
    secret_handshakes = []
    secret_handshakes << "wink" if number[-1] == "1" 
    secret_handshakes << "double blink" if number[-2] == "1"
    secret_handshakes << "close your eyes" if number[-3] == "1"
    secret_handshakes << "jump" if number[-4] == "1"
    secret_handshakes.reverse! if number[-5] == "1" #double blink, wink
    secret_handshakes
  end

end

# handshake = SecretHandshake.new("1")
# handshake.commands
