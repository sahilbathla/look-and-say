module Series
  def look_and_say_series(input, options = { limit: 5 })
    raise 'non empty string expected' if !input.is_a? String || input.length.zero?
    options[:limit].to_i.times do
      input = look_and_say(input)
      puts input
    end
  end

  def look_and_say(input)
    previous_char = input[0].chr #.chr for ruby 1.8.7
    count, output = 0, ''
    input.each_char do |current_char|
      unless previous_char == current_char
        output << "#{ count }#{ previous_char }"
        count, previous_char = 0, current_char
      end
      count += 1
    end
    output << "#{ count }#{ previous_char }"
  end
end