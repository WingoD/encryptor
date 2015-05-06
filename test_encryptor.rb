require "rubygems"
require "minitest/autorun"
require './encryptor'
class EncryptorTest < MiniTest::Unit::TestCase
  def setup
    true
  end

  def test_encrypt
    assert a = Encryptor.new
    assert_equal("Uryy{", a.encrypt(13, "Hello"))
    assert true
  end
end
