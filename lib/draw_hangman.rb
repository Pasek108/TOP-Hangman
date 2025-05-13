def draw_hangman(step)
  #     _____
  #    | /   |
  #    |/    𑢵
  #    |    /|\
  #    |    / \
  # ___|___

  case step
  when 0
    puts '            '
    puts '            '
    puts '            '
    puts '            '
    puts '            '
    puts '_______     '
  when 1
    puts '            '
    puts '   |        '
    puts '   |        '
    puts '   |        '
    puts '   |        '
    puts '___|___     '
  when 2
    puts '    _____   '
    puts '   |        '
    puts '   |        '
    puts '   |        '
    puts '   |        '
    puts '___|___     '
  when 3
    puts '    _____   '
    puts '   | /      '
    puts '   |/       '
    puts '   |        '
    puts '   |        '
    puts '___|___     '
  when 4
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/       '
    puts '   |        '
    puts '   |        '
    puts '___|___     '
  when 5
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/    𑢵  '
    puts '   |        '
    puts '   |        '
    puts '___|___     '
  when 6
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/    𑢵  '
    puts '   |     |  '
    puts '   |        '
    puts '___|___     '
  when 7
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/    𑢵  '
    puts '   |    /|  '
    puts '   |        '
    puts '___|___     '
  when 8
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/    𑢵  '
    puts '   |    /|\\'
    puts '   |        '
    puts '___|___     '
  when 9
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/    𑢵  '
    puts '   |    /|\\'
    puts '   |    /   '
    puts '___|___     '
  when 10
    puts '    _____   '
    puts '   | /   |  '
    puts '   |/    𑢵  '
    puts '   |    /|\\'
    puts '   |    / \\'
    puts '___|___     '
  end
end
