require_relative "../main"

class FrequenciesAnalyzer
  MIN_LENGTH = 3
  REPLACE_MAP = {
    "\u015F" => 's',
    "\u0163" => 't',
    "\u0103" => 'a',
    "\u00E2" => 'a',
    "\u00A0" => '', #HTML nbsp
    "\u201E" => '', #Open quotes
    "\u201D" => '', #Close quotes
    "\u00EE" => 'i',
    /[\d\(\)\.\,\;]/ => ''
  }

  def run
    #
  end

  def extract_frequency content
    words = content.split(' ')
    frequency = Hash.new(0)

    words.each do |word|
      normalized = normalize(word)
      next unless normalized.size >= MIN_LENGTH
      next if normalized.include? '-'
      frequency[normalized] += 1
    end

    frequency
  end

  def normalize word
    result = word.mb_chars.downcase.to_s

    REPLACE_MAP.each do |key, replacement|
      result.gsub! key, replacement
    end

    result
  end
end

if __FILE__ == $0
  FrequenciesAnalyzer.new.run
end
