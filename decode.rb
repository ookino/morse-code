require 'pry'

MORSE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  if MORSE.key? char
    MORSE[char]
  else
    'Input is not morse code'
  end
end

def decode_word(word)
  word_arr = []
  binding.pry
  word.split.each do |_n|
    word_arr.push(MORSE)
  end
  word_arr.join
end

def decode_message(msg)
  morse_msg = ''
  msg.strip.tr('/', ' ').split('   ').each do |n|
    morse_msg += "#{decode_word(n)} "
  end
  morse_msg
end

print decode_char('.-')
print decode_word('-- -.--')
print decode_message('-- -.--   -. .- -- .')
print decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
