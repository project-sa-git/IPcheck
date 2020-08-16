# ip_check

テキストファイルを読み込み、IPアドレスのバリデーションおよびGlobal / Privateを判定

　
  
# 出力例

```
IPアドレスの判定一覧
ーーーー
Input IP : 10.10.10.10
Validate : OK
Type     : Private
ーーーー

ーーーー
Input IP : 30
Validate : Error
Type     : -
ーーーー

ーーーー
Input IP : 193.168.100.0
Validate : OK
Type     : Global
ーーーー

ーーーー
Input IP : 5555.5555.5555.5555.5555
Validate : Error
Type     : -
ーーーー

```
