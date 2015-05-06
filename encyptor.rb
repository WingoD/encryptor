class Encryptor
  def cipher{ 'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g', 'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k','y' => 'l', 'z' => 'm'}
  end
  def encrypt(message)
    letters = message.split
    encrypted = letters.collect do |letters|
      letters.downcase
      cipher[letters]
    end
    encrypted_message = encrypted.join
  end
  def decrypt(message)
    encrypt[message]
  end
end
