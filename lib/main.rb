require 'colorize'
require 'json'
require_relative 'draw_hangman'

# load words
words = File.readlines('google-10000-english-no-swears.txt')

# take random word
secret_word = ''
secret_word = words[Random.rand(words.length)].chomp until secret_word.chomp.length.between?(5, 12)

# generate guess for player
guessed_word = '_' * secret_word.length
guesses = []
guessed_letter = ''
wrong_tries = 0

# ask for loading save if exist
if File.exist?('save.json')
  print 'Load saved game? (Y/N): '
  load_game = gets.to_s.chomp.downcase[0] == 'y'

  if load_game
    save = JSON.parse(File.read('save.json'), {:symbolize_names => true})
    secret_word = save[:secret_word]
    wrong_tries = save[:wrong_tries]
    guesses = save[:guesses]

    guessed_word = '_' * secret_word.length
    guesses.each do |guess|
      secret_word.split('').each_with_index { |letter, i| guessed_word[i] = guess[:letter] if guess[:letter] == letter }
    end
  end
end

# play game until win or lose
while wrong_tries < 10 && guessed_word != secret_word
  draw_hangman(wrong_tries)

  # print guessed letters
  print 'Guessed letters: '
  guesses.each { |guess| print guess[:letter].colorize(:color => (guess[:correct]) ? :green : :red) }
  puts ''

  # print word with correctly guessed letters
  print 'Word: '
  puts guessed_word.split('').join(' ')

  # get letter from user
  print 'Guess letter (put ! to save game and quit): '
  guessed_letter = ''
  guessed_letter = gets.chomp.downcase[0] until guessed_letter.to_s.match?(/[a-z!]/)

  # save game and quit if letter is '!'
  if guessed_letter == '!'
    File.open('save.json', 'w') do |file|
      save = {
        secret_word: secret_word,
        wrong_tries: wrong_tries,
        guesses: guesses
      }

      file.puts JSON.dump save
    end
    break
  end

  # save guess and put correctly guessed letter in word
  guesses << { letter: guessed_letter, correct: secret_word.include?(guessed_letter) }
  secret_word.split('').each_with_index { |letter, i| guessed_word[i] = guessed_letter if guessed_letter == letter }

  wrong_tries += guesses[-1][:correct] ? 0 : 1
end

# print save, win or lose message
if guessed_letter == '!'
  puts 'Game saved'
elsif guessed_word != secret_word
  draw_hangman(wrong_tries)
  puts "You lost. The word was #{secret_word}"
else
  puts "You win. The word was #{secret_word}"
end
