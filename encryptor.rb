require 'pp'

class Encryptor
  def cipher(rotation) #should  be a number#
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def crypt(rotation, message)
    characters = message.split("")
    encrypted = characters.collect do |character|
      a = (cipher(rotation))[character]
    end
    encrypted_message = encrypted.join
  end

  def encrypt(rotation, message)
    crypt(rotation, message)
  end

  def decrypt(rotation, message)
    crypt(-rotation, message)
  end
end
