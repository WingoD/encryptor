require "rubygems"
require "minitest/autorun"
require './encryptor'
class EncryptorTest < MiniTest::Unit::TestCase
  def setup
    true
  end

  def test_encrypt
    assert a = Encryptor.new
    assert_equal("Uryy!", a.encrypt(13, "Hello"))
  end

  def test_decrypt
    assert a = Encryptor.new
    assert_equal("Hello", a.decrypt(13, "Uryy!"))
  end
end
