require 'ipaddr'

# バリデーション判定メソッド
def valid_ip?(str)
  !!IPAddr.new(str) rescue false
end

# プライベートネットワーク範囲の判定メソッド
def private_network?(ipaddr)
  [
    IPAddr.new('10.0.0.0/8'),
    IPAddr.new('172.16.0.0/12'),
    IPAddr.new('192.168.0.0/16')
  ].any? {|i| i.include? ipaddr }
end


# リストファイルを読み込んで空配列に格納
array = []
File.foreach("samp_ip.txt"){|line|
  array << line.chomp
}

# IPアドレスの判定（メイン処理）
puts "IPアドレスの判定一覧"
for var in array do
  puts "ーーーー"
  puts "Input IP : #{var}"
  if valid_ip?(var)
    puts "Validate : OK"
    if private_network?(var)
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