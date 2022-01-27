require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_i
 
if memo_type == 1
      puts "拡張子を除いたファイル名を入力してください"
      new_file = gets
      CSV.open("#{new_file}.csv",'w') do |csv|
      puts "メモしたい内容を記入してください"
      puts "メモが終わりましたらEnterキーを押してください"
      new_contents = gets
      CSV.open("#{new_file}.csv",'w') do |csv|
      csv << [new_contents]
      puts "メモが完了しました"
   end
end
elsif memo_type == 2
      puts "拡張子を除いたメモを追加したいファイル名を入力してください"
      new_file = gets
      puts "メモに追加したい内容を入力してください"
      puts "メモが終わりましたらEnterキーを押してください"
      new_contents = gets
     CSV.open("#{new_file}.csv",'a') do |csv|
     csv << [new_contents]
     puts "メモに追加しました"
   end
end