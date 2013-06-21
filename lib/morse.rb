
require 'ext/string'
require 'morse/version'
require 'morse/codetables'

module Morse
  include CodeTables

  def to_morse(lang, skip_invalid = false)
    transcode(lang, skip_invalid, false)
  end

  def from_morse(lang, skip_invalid = false)
    transcode(lang, skip_invalid, true)
  end

  private

  def to_char_array(encoded)
    string = self.upcase
    encoded ? string.split : string.split('')
  end

  def transcode(lang, skip_invalid, encoded)
    arr = to_char_array(encoded).map do |c|
      CODE_TABLES[lang][encoded][c] || (c unless skip_invalid)
    end

    encoded ? arr.join : arr.join(' ')
  end

  String.send(:include, Morse)
end
