require 'ipaddr'

# 判定メソッド
def valid_ip?(str)
  !!IPAddr.new(str) rescue false
end

# ファイルを読み込んで空配列に格納
ary = []
File.foreach("samp_ip.txt"){|line|
  ary << line.chomp
}

# IPアドレスの判定
for var in ary do
  p valid_ip?(var)
end