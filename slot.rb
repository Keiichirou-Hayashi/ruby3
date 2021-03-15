  @nokori_coin = 100
  @point = 0

  #コイン・ポイント
def coin_point
  puts "残りは#{@nokori_coin}枚です"
  puts "獲得ポイントは#{@point}ポイントです"
end

#コイン投入
def putin
  while true
    @num1, @num2, @num3, @num4, @num5, @num6 , @num7, @num8, @num9 = 
    [rand(1..9), rand(1..9), rand(1..9), rand(1..9), rand(1..9), rand(1..9), rand(1..9), rand(1..9), rand(1..9)]
    @game_coin = [5, 10, 20, "やめとく"]
    puts "何コイン入れますか？\n0(5コイン) 1(10コイン) 2(20コイン) 3(やめとく)"
    puts "---------------------"
    @coin = gets.to_i
    status_coin = @nokori_coin
    
    if @coin > 3 
      puts "0〜3のいずれかを選んでください"
      puts "-------------------------"
    elsif @coin == 3
      puts "また遊ぼう"
      exit
    elsif status_coin < @game_coin[@coin]
      puts "コインが足りません"
    elsif @coin < 3
      break
    end
  end
end

#スロット開始
def slot
  puts "エンターを3回押しましょう"
  puts "---------------------"
  puts = gets
  puts "アター"
  puts "|#{@num1}|||\n|#{@num2}|||\n|#{@num3}|||"
  puts "---------------------"
  puts = gets
  puts "アターー"
  puts "|#{@num1}|#{@num4}||\n|#{@num2}|#{@num5}||\n|#{@num3}|#{@num6}||"
  puts "---------------------"
  puts = gets
  puts "ホー・・・アターーーー！！！"
  puts "|#{@num1}|#{@num4}|#{@num7}|\n|#{@num2}|#{@num5}|#{@num8}|\n|#{@num3}|#{@num6}|#{@num9}|"
  puts "---------------------"
end

#スロット結果
def result
  if (@num1 == 7 && @num4 == 7 && @num7 == 7) ||
     (@num2 == 7 && @num5 == 7 && @num8 == 7) || 
     (@num3 == 7 && @num6 == 7 && @num9 == 7) 
    puts "7が揃いました。\n100コイン獲得\n500ポイント獲得"
    puts "--------------------"
    @nokori_coin = @nokori_coin + 100 - @game_coin[@coin]
    @point += 500
  elsif ((@num1 == @num4) && (@num4 == @num7)) || 
        ((@num2 == @num5) && (@num5 == @num8)) || 
        ((@num3 == @num6) && (@num6 == @num9))
    puts "数字が揃いました。\n50コイン獲得\n100ポイント獲得"
    puts "--------------------"
    @nokori_coin = @nokori_coin + 100 - @game_coin[@coin]
    @point += 100
    puts "------------------"
  else
    @nokori_coin = @nokori_coin - @game_coin[@coin]
  end
end

#コインが無くなった時の処理
def game_end
  if @nokori_coin > 0
    puts "次！"
    puts "------------------"
  elsif @nokori_coin <= 0
    puts "コインが0枚になっちゃったのか。。。また遊びにきてね！"
    exit
  end
end






  loop do
  status = coin_point
  start = putin
  game = slot
  result_game = result
  end_game = game_end
end

