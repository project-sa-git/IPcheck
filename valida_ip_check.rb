require 'ipaddr'

# バリデーション判定メソッド
def valid_ip?(str)
  !!IPAddr.new(str) rescue false
end

# プライベートネットワーク範囲の判定メソッド
def private_ip?(ip)
  IPAddr.new("10.0.0.0/8").include?(ip) ||
  IPAddr.new("172.16.0.0/12").include?(ip) ||
  IPAddr.new("192.168.0.0/16").include?(ip)
end

# リストファイルを読み込んで空配列に格納
array = []
File.foreach("samp_ip.txt"){|line|
  array << line.chomp
}

# IPアドレスの判定（メイン処理）
puts "IPアドレスの判定一覧"
for num in array do
  puts "ーーーー"
  puts "Input IP : #{num}"
  if valid_ip?(num)
    puts "Validate : OK"
    if private_ip?(num)
      puts "Type     : Private"
    else
      puts "Type     : Global"
    end
  else
    puts "Validate : Error"  
    puts "Type     : -"
  end
  puts "ーーーー"
  puts ""
end