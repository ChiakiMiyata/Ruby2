puts "じゃんけん..."

def janken

  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  player = gets.to_i
  program = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  if player == 3
    puts "終了します"
    exit
  elsif player > 3
    puts "値を選び直してください"
    return true
  end

  puts "ホイ！"
  puts "---------------"
  puts "あなた:#{jankens[player]}を出しました"
  puts "相手:#{jankens[program]}を出しました"
  puts "---------------"

  if player == program
    puts "あいこで..."
    return true

  elsif (player == 0 && program == 1) || (player == 1 && program == 2) || (player == 2 && program == 0)
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    player_hoi = gets.to_i
    program_hoi = rand(4)

    hois = ["上", "下", "左", "右"]

    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{hois[player_hoi]}"
    puts "相手:#{hois[program_hoi]}"
    puts "---------------"

    if player_hoi == program_hoi
      puts "あなたの勝ちです"
      exit
    else
      puts "じゃんけん..."
      return true
    end

  else
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    player_hoi = gets.to_i
    program_hoi = rand(4)

    hois = ["上", "下", "左", "右"]

    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{hois[player_hoi]}"
    puts "相手:#{hois[program_hoi]}"
    puts "---------------"

    if player_hoi == program_hoi
      puts "あなたの負けです"
      exit
    else
      puts "じゃんけん..."
      return true
    end
  end

end

next_game = true

while next_game
  next_game = janken
end

