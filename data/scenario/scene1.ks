;ティラノスクリプトTITLE変更

*start

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="pictoroom.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;picto
[chara_new  name="picto" storage="chara/picto/normal.png" jname="ピクト"  ]
;キャラクターの表情登録
[chara_face name="picto" face="angry" storage="chara/picto/angry.png"]
[chara_face name="picto" face="doki" storage="chara/picto/doki.png"]
[chara_face name="picto" face="happy" storage="chara/picto/happy.png"]
[chara_face name="picto" face="sad" storage="chara/picto/sad.png"]
#プレイヤー
ゲームの進行度によって[p]
タイトル画面を変えるにはどうすれば良いんだろう...[p]

;キャラクター登場
[chara_show  name="picto" face="default" left=820 top=50]
#ピクト
やぁ！私はピクト。[p]
ふむ、タイトル画面を進行度に応じて変えたいのだね[p]
百聞は一見に如かず、とりあえず見本を見せよう[p]
タイトルを変える選択肢を選びたまえ[p]

[glink  color="black"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="タイトル画面1つ目に移行！（白黒タイトル画面）"  target="*selectone"]
[glink  color="black"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="タイトル画面2つ目に移行！（カラフルなタイトル画面）"  target="*selectdouble"]
[s]
[jump target=*gamestart]
*selectone
[clearvar]
[jump target=*gamestart]
*selectdouble
[eval exp="sf.check=1"]
*gamestart
[chara_mod name="picto" face="happy"]
既にタイトルは変わっているよ[p]
ゲームをリロードしてタイトルを見てみると良い[p]