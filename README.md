# アプリ名
shogi-league

# 概要
<p>オンライン将棋大会の対戦記録が行えます。総当たりリーグ戦の結果を手軽に記入し、棋譜も保存できます。また、その棋譜をAIで解析することもできます。</p>

# 本番環境
http://54.238.77.96/
<p>ユーザー名：zengoma</p>
<p>パスワード：114514</p>

# 制作背景
<p>藤井聡太プロの影響で、将棋界が盛り上がっています。ところが、最近では将棋大会が中止になるばかりです。そこで、オンライン将棋大会の機会が増えてきましたが、対戦結果や棋譜の共有が困難で、紙に書いて写メを送ったりしていると手間がかかります。そこで、Webアプリケーションで運営を自動化できると考え、総当たりリーグのアプリケーションを開発しました。</p>

# DEMO
## 勝敗記入
![Videotogif](https://user-images.githubusercontent.com/69504629/96793385-3e8b3780-1437-11eb-83a0-7892946e01b3.gif)
## 棋譜提出
![Videotogif (2)](https://user-images.githubusercontent.com/69504629/97051907-04e33980-15bb-11eb-8bf2-7e9f397894ea.gif)

# 説明動画
https://youtu.be/9ctYxvujiaE

# 工夫したポイント
<p>リーグ戦の結果記入をクリックだけで済むように実装しました。例えば、AさんがBさんに勝利した場合、AさんとBさんの対戦のマス目をクリックすると「○」が付き、反対側のマス目に「●」が自動で付きます。そして、棋譜入力欄も設け、入力後は「○」か「●」をクリックすると、その対戦棋譜を閲覧することができます。さらに、その棋譜をAIに接続して解析することもできるので、１局の振り返りも可能です。</p>

# 使用技術（開発環境）
Ruby/Ruby on Rails/HTML/CSS/JavaScript/MySQL/Github/Visual Studio Code

# DB設計
## members テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| name        | string | null: false |
| account     | string |             |
| achievement | text   |             |


### Association

- has_many :results

## results テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| member | references | null: false |
| op_id  | integer    | null: false |
| result | string     |             |

### Association

- belongs_to :member

## kifusテーブル

| Column    | Type    | Options     |
| --------- | ------- | ----------- |
| date      | date    | null: false |
| sente_id  | integer | null: false |
| gote_id   | integer | null: false |
| result_id | integer | null: false |
| kifu      | text    | null: false |

# CLEARDB_DATABASE_URL
mysql://b4dad2c65586d9:437bc68f@us-cdbr-east-02.cleardb.com/heroku_a4d662ee57bacbd?reconnect=true

## ホスト
us-cdbr-east-02.cleardb.com

## ユーザー名
b4dad2c65586d9

## パスワード
437bc68f

## データベース
heroku_a4d662ee57bacbd

<!-- <%# 10人 %>
<td id="op_<%= i + 1 %>_1" data-id="<%= (i * 10) + 1 %>_<%= (10 * (i * 10 + 1)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 1).result %></td>
<td id="op_<%= i + 1 %>_2" data-id="<%= (i * 10) + 2 %>_<%= (10 * (i * 10 + 2)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 2).result %></td>
<td id="op_<%= i + 1 %>_3" data-id="<%= (i * 10) + 3 %>_<%= (10 * (i * 10 + 3)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 3).result %></td>
<td id="op_<%= i + 1 %>_4" data-id="<%= (i * 10) + 4 %>_<%= (10 * (i * 10 + 4)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 4).result %></td>
<td id="op_<%= i + 1 %>_5" data-id="<%= (i * 10) + 5 %>_<%= (10 * (i * 10 + 5)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 5).result %></td>
<td id="op_<%= i + 1 %>_6" data-id="<%= (i * 10) + 6 %>_<%= (10 * (i * 10 + 6)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 6).result %></td>
<td id="op_<%= i + 1 %>_7" data-id="<%= (i * 10) + 7 %>_<%= (10 * (i * 10 + 7)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 7).result %></td>
<td id="op_<%= i + 1 %>_8" data-id="<%= (i * 10) + 8 %>_<%= (10 * (i * 10 + 8)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 8).result %></td>
<td id="op_<%= i + 1 %>_9" data-id="<%= (i * 10) + 9 %>_<%= (10 * (i * 10 + 9)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 9).result %></td>
<td id="op_<%= i + 1 %>_10" data-id="<%= (i * 10) + 10 %>_<%= (10 * (i * 10 + 10)) - (100 * i + (9 - i)) %>"><%= Result.find((i * 10) + 10).result %></td> -->

<!-- <%# 11人 %>
<td id="op_<%= i + 1 %>_1" data-id="<%= (i * 11) + 1 %>_<%= (11 * (i * 11 + 1)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 1).result %></td>
<td id="op_<%= i + 1 %>_2" data-id="<%= (i * 11) + 2 %>_<%= (11 * (i * 11 + 2)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 2).result %></td>
<td id="op_<%= i + 1 %>_3" data-id="<%= (i * 11) + 3 %>_<%= (11 * (i * 11 + 3)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 3).result %></td>
<td id="op_<%= i + 1 %>_4" data-id="<%= (i * 11) + 4 %>_<%= (11 * (i * 11 + 4)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 4).result %></td>
<td id="op_<%= i + 1 %>_5" data-id="<%= (i * 11) + 5 %>_<%= (11 * (i * 11 + 5)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 5).result %></td>
<td id="op_<%= i + 1 %>_6" data-id="<%= (i * 11) + 6 %>_<%= (11 * (i * 11 + 6)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 6).result %></td>
<td id="op_<%= i + 1 %>_7" data-id="<%= (i * 11) + 7 %>_<%= (11 * (i * 11 + 7)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 7).result %></td>
<td id="op_<%= i + 1 %>_8" data-id="<%= (i * 11) + 8 %>_<%= (11 * (i * 11 + 8)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 8).result %></td>
<td id="op_<%= i + 1 %>_9" data-id="<%= (i * 11) + 9 %>_<%= (11 * (i * 11 + 9)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 9).result %></td>
<td id="op_<%= i + 1 %>_10" data-id="<%= (i * 11) + 10 %>_<%= (11 * (i * 11 + 10)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 10).result %></td>
<td id="op_<%= i + 1 %>_11" data-id="<%= (i * 11) + 11 %>_<%= (11 * (i * 11 + 11)) - (121 * i + (10 - i)) %>"><%= Result.find((i * 11) + 11).result %></td> -->

<!-- <%# 12人 %>
<td id="op_<%= i + 1 %>_1" data-id="<%= (i * 12) + 1 %>_<%= (12 * (i * 12 + 1)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 1).result %></td>
<td id="op_<%= i + 1 %>_2" data-id="<%= (i * 12) + 2 %>_<%= (12 * (i * 12 + 2)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 2).result %></td>
<td id="op_<%= i + 1 %>_3" data-id="<%= (i * 12) + 3 %>_<%= (12 * (i * 12 + 3)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 3).result %></td>
<td id="op_<%= i + 1 %>_4" data-id="<%= (i * 12) + 4 %>_<%= (12 * (i * 12 + 4)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 4).result %></td>
<td id="op_<%= i + 1 %>_5" data-id="<%= (i * 12) + 5 %>_<%= (12 * (i * 12 + 5)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 5).result %></td>
<td id="op_<%= i + 1 %>_6" data-id="<%= (i * 12) + 6 %>_<%= (12 * (i * 12 + 6)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 6).result %></td>
<td id="op_<%= i + 1 %>_7" data-id="<%= (i * 12) + 7 %>_<%= (12 * (i * 12 + 7)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 7).result %></td>
<td id="op_<%= i + 1 %>_8" data-id="<%= (i * 12) + 8 %>_<%= (12 * (i * 12 + 8)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 8).result %></td>
<td id="op_<%= i + 1 %>_9" data-id="<%= (i * 12) + 9 %>_<%= (12 * (i * 12 + 9)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 9).result %></td>
<td id="op_<%= i + 1 %>_11" data-id="<%= (i * 12) + 10 %>_<%= (12 * (i * 12 + 10)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 10).result %></td>
<td id="op_<%= i + 1 %>_12" data-id="<%= (i * 12) + 11 %>_<%= (12 * (i * 12 + 11)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 11).result %></td>
<td id="op_<%= i + 1 %>_12" data-id="<%= (i * 12) + 12 %>_<%= (12 * (i * 12 + 12)) - (144 * i + (11 - i)) %>"><%= Result.find((i * 12) + 12).result %></td> -->

<!-- <%# 13人 %>
<td id="op_<%= i + 1 %>_1" data-id="<%= (i * 13) + 1 %>_<%= (13 * (i * 13 + 1)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 1).result %></td>
<td id="op_<%= i + 1 %>_2" data-id="<%= (i * 13) + 2 %>_<%= (13 * (i * 13 + 2)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 2).result %></td>
<td id="op_<%= i + 1 %>_3" data-id="<%= (i * 13) + 3 %>_<%= (13 * (i * 13 + 3)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 3).result %></td>
<td id="op_<%= i + 1 %>_4" data-id="<%= (i * 13) + 4 %>_<%= (13 * (i * 13 + 4)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 4).result %></td>
<td id="op_<%= i + 1 %>_5" data-id="<%= (i * 13) + 5 %>_<%= (13 * (i * 13 + 5)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 5).result %></td>
<td id="op_<%= i + 1 %>_6" data-id="<%= (i * 13) + 6 %>_<%= (13 * (i * 13 + 6)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 6).result %></td>
<td id="op_<%= i + 1 %>_7" data-id="<%= (i * 13) + 7 %>_<%= (13 * (i * 13 + 7)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 7).result %></td>
<td id="op_<%= i + 1 %>_8" data-id="<%= (i * 13) + 8 %>_<%= (13 * (i * 13 + 8)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 8).result %></td>
<td id="op_<%= i + 1 %>_9" data-id="<%= (i * 13) + 9 %>_<%= (13 * (i * 13 + 9)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 9).result %></td>
<td id="op_<%= i + 1 %>_10" data-id="<%= (i * 13) + 10 %>_<%= (13 * (i * 13 + 10)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 10).result %></td>
<td id="op_<%= i + 1 %>_11" data-id="<%= (i * 13) + 11 %>_<%= (13 * (i * 13 + 11)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 11).result %></td>
<td id="op_<%= i + 1 %>_12" data-id="<%= (i * 13) + 12 %>_<%= (13 * (i * 13 + 12)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 12).result %></td>
<td id="op_<%= i + 1 %>_13" data-id="<%= (i * 13) + 13 %>_<%= (13 * (i * 13 + 13)) - (169 * i + (12 - i)) %>"><%= Result.find((i * 13) + 13).result %></td> -->