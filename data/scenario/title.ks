
[cm]

@clearstack
[if exp="sf.check==1"]
@bg storage ="titleTwo.jpg" time=100
[else]
@bg storage ="titleOne.jpg" time=100
[endif]
@wait time = 200

*start 

[button x=440 y=460 graphic="title/button_start_picto.png" enterimg="title/button_start2_picto.png"  target="gamestart"]
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"