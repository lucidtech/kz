class UserKey < ActiveRecord::Base

  belongs_to :user
  validates_uniqueness_of :identifier

  before_create do |keyz|
    root_aes = OpenSSL::Cipher::Cipher.new('aes-256-cbc')
    iv = root_aes.random_iv
    iv64 = [iv].pack('m').strip
    key = root_aes.random_key
    key64 = [key].pack('m').strip
    keyz.cipher_type = 'AES-256-CBC'
    keyz.cipher_key = key64
    keyz.cipher_iv = iv64
  end


end
