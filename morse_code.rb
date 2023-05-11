MORSE_CODE = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z"
}.freeze

def decode_char(code)
  MORSE_CODE[code]
end

def decode_word(code)
  code.split.map { |char| decode_char(char) }.join
end

def decode(code)
  code.split("   ").map { |word| decode_word(word) }.join(" ")
end

puts decode("-- -.--   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# => "ABDUCT FULL OF BEERS"
