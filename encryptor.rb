require 'pp'

class Encryptor
  def cipher(rotation) #should  be a number#
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end
  def encrypt(rotation, message)
    characters = message.split("")
    encrypted = characters.collect do |character|
      a = (cipher(rotation))[character]
    end
    encrypted_message = encrypted.join
  end
  def decrypt(rotation, encrypted_message)
    encrypt(encrypted_message)
  end
end
