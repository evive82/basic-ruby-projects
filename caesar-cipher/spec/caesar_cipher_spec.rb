require 'spec_helper'
require_relative '../caesar_cipher'

RSpec.describe 'Caesar cipher' do
  describe 'shift each letter in a string by a given number' do
    it 'shifts a single word by 5' do
      expect(caesar_cipher('hello', 5)).to eq('mjqqt')
    end

    it 'shifts a word by 9 and wraps letters' do
      expect(caesar_cipher('caesars', 9)).to eq('ljnbjab')
    end

    it 'shifts a phrase with capitals by 8' do
      expect(caesar_cipher('BlahBlahBlah', 8)).to eq('JtipJtipJtip')
    end

    it 'shifts a sentence with capitals and punctuation by 13' do
      input = 'Hello, this is a Caesar Cipher test.'
      expected_output = 'Uryyb, guvf vf n Pnrfne Pvcure grfg.'
      expect(caesar_cipher(input, 13)).to eq(expected_output)
    end

    it 'shifts multiple sentences with caps and punctuation by 73' do
      input = 'This is a dumb sentence, with a really dumb shift number, to ' \
              'test the Caesar Cipher. Isn\'t it great?'
      expected_output = 'Ocdn dn v yphw nziozixz, rdoc v mzvggt yphw ncdao ' \
                        'iphwzm, oj ozno ocz Xvznvm Xdkczm. Dni\'o do bmzvo?'
      expect(caesar_cipher(input, 73)).to eq(expected_output)
    end
  end
end
