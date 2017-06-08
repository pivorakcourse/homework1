VARIANT = 5

LETTER_START_POINT = 65
LETTER_END_POINT = 90
# pattern = 'AC-1234567-ABC'

def sequence_nature(pattern='AC-1234567-ABC', index=0)
  if pattern[index].match /[a-z]|[A-Z]/ # pattern[/[a-z]|[A-Z]/]
    'letter'
  elsif pattern[index].match /[0-9]/
    'number'
  else
    'error'
  end
end

def pattern_parser(pattern='AC-1234567-ABC')
  pattern_info = []
  if pattern.length > 0
    dash_index = { :prev => -1, :current => -1}
    part_nature = ''
    while dash_index[:current]
      part_nature = sequence_nature(pattern, dash_index[:prev]+1)
      dash_index[:current] = pattern.index('-', dash_index[:prev]+1)
      
      if part_nature != 'error' && dash_index[:current]
        pattern_info << [part_nature, dash_index[:current] - dash_index[:prev] - 1]
      elsif dash_index[:current] == nil
        pattern_info << [part_nature, pattern.length - dash_index[:prev] - 1]
      else
        'error'
      end
      
      dash_index[:prev] = dash_index[:current]
    end

    return pattern_info
  else
    'error'
  end

end

def pattern_randomizer(pattern='AC-1234567-ABC')
  pattern_info = pattern_parser(pattern)
  result = ''
  pattern_info.each do |part|
    if part[0] == 'letter'
      part[1].times { result += rand(LETTER_START_POINT..LETTER_END_POINT).chr}
    elsif part[0] == 'number'
      part[1].times {result += rand(0..9).to_s}
    else
      'error'
    end
    result += '-'
  end
  result.chop!
end


def generate
  pattern_randomizer  
end

