class Encryptor
  def cipher(rotation) #should  be a number#
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end
  def encrypt(message)
    characters = message.split
    encrypted = characters.collect do |character|
      cipher[character]
    end
    encrypted_message = encrypted.join
  end
  def decrypt(encrypted_message)
    encrypt[encrypted_message]
  end
end
