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
　

# 環境

OS: macOS Catalina

Ruby: v2.6.3
　

# 起動手順

```
$ git clone https://github.com/project-sa-git/ip_check.git

$ cd ip_check

$ ruby valida_ip_check.rb
```
　

# 個人開発手順(Gitコマンド含む)

```
1.【GitHub】Issues 新規タスク作成
https://github.com/project-sa-git/ip_check/issues

2.【ローカル】新規ブランチ作成 - GitHubにプッシュ
（例）
$ git checkout -b add_judgment
$ git add .
$ git commit -m "add-Type&change-txt"
$ git push origin HEAD

3.【GitHub】コード確認・プルリクエスト承認後、masterへマージ

4.【GitHub】Issues タスクclose

5.【ローカル】プルして確認、ブランチを削除
$ git checkout master
$ git pull origin master
$ git branch -d add_judgment

※ 以下、ループ
```
　
　
# 参考

[class IPAddr (Ruby 2.7.0 公式リファレンス)](https://docs.ruby-lang.org/ja/latest/class/IPAddr.html)

[Ruby / Railsで文字列がIPアドレスとして適切かどうかチェックする](https://web-salad.hateblo.jp/entry/2014/02/26/222947)

[【Ruby】対象のIPアドレスがプライベートIPアドレスかどうか確認する](https://qiita.com/studio3104/items/14b506626ab0ba06c527)