'(プログラムを)終了するを選択
cls 3
'AC.2019
'数秘術占い 2019.08.16
'改変履歴
'AC.2021
'"2021.03.31 α版 画面背景アップデート"
'"2021.04.02 β版 更にアップデート音声追加"
'"2021.04.03 β2版 画面表示拡張"
'AC.2023
'"2023.05.20 β3版　入力方式拡張"
'Version 更新履歴
'2023.06.04:Ver100_20230604
'2023.06.11:Ver101_20230611
'2023.06.18:Ver102_20230618
'2023.06.25:Ver103_20230625
'2023.07.02:Ver104_20230702
'2023.07.09:Ver105_20230709
'2023.07.16:Ver106_20230716
'2023.07.23:Ver107_20230723
'2023.07.30:Ver108_20230730
'2023.08.06:Ver109_20230806
'2023.08.13:Ver110_20230813
'2023.08.20:Ver111_20230820
'2023.08.27:Ver112_20230827
'2023.09.03:Ver113_20230903
'2023.09.10:Ver114_20230910
'2023.09.17:Ver115_20230917
'2023.09.24:Ver116_20230924
'2023.10.01:Ver117_20231001
'2023.10.08:Ver118_20231008
'2023.10.15:Ver119_20231015
'2023.10.22:Ver120_20231022
'2023.10.29:Ver121_20231029
'2023.11.05:Ver122_20231105
'2023.11.12:Ver123_20231112
'2023.11.19:Ver124_20231119
'2023.11.26:Ver125_20231126
'2023.12.03:Ver126_20231203
'2023.12.10:Ver127_20231210
'2023.12.17:Ver128_20231217
'2023.12.24:Ver129_20231224
'2023.12.31:Ver130_20231231
'AC.2024.01(Jan)
'2024.01.07:Ver131_20240107
'2024.01.14:Ver132_20240114
'2024.01.21:Ver133_20240121
'2024.01.28:Ver134_20240128
'AC.2024.02(Feb)
'2024.02.04:Ver135_20240204
'2024.02.11:Ver136_20240211
'2024.02.18:Ver137_20240218
'2024.02.25:Ver138_20240225
'AC.2024.03 (March)
'2024.03.03:Ver139_20240303
'2024.03.11 Ver140_20240311
Version$ = "Ver:1.4.0_20240311a"
'Gazo Folder Japan
Gazo$ = "./data/Picture/"
'Gazo Size folder
Gazo_1920x1200$ = "./1920x1200/"
Gazo_WXGA$ = "./907x680/"
'Gazo Folder English
Gazo_Eng$ = "./data/Picture/English/"
'Voice Folder 2023
Voice$ = "./data/Voice/Voice/"
'BirtheyeChart Data:20230626
Birth_eye_chart$ = "./data/chart_data/"
'Data Folder
Data$ = "./data/data/"
'Business Aisyou 結果説明保存フォルダ
Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
'Save BirdsEyeGrit List Folder
Save_data_Birdseye$ = "./data/Parsonal_data/"
'変数定義 パート
b=0:c=0:n=0:count=0
'***********************************************************
'1.WXGAの時
'(1200 x 800)
'***********************************************************
if (((size(1) <= 1200) and (size(1) <= 800))) then
X=5:Y=200
FONT=32
'***********************************************************
'1.WXGAの時
'(1200 x 800)
'***********************************************************
else
'***********************************************************
'2.WUXGAの時(WXGA以外の時)
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
X=5:Y=300
FONT=48
'***********************************************************
'2.WUXGAの時(WXGA以外の時)
'(1920 x 1200)
'***********************************************************
endif
'dim buffer_List$(11,1)
dim buf_name1$(10),buf_name2$(10)
dim buffer(9),buf_chart$(26,2)
'ビジネスの相性　データー
dim Buffer_Business_Aisyou$(12,12)
'男女の相性
dim Buffer_Bitween_sexes_Aisyou$(12,12)
'生れた年代
dim buf_year(4):buf_year$ = ""
dim buf_month(2)
dim buf_day(2)
'フォーカスライン　配列
dim Forcus1_buffer$(3)
dim Forcus2_buffer$(3)
dim Forcus3_buffer$(2)
'生れた月
buf_Month$ = ""
'生れた日
buf_Day$ = ""
'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
dim buffer_name$(3)
'1-1.上司の誕生日(数値データー)
dim buf_Jyoushi_Born_Day(3)
'1-2.上司の数秘ナンバー(数値データー)
buf_Jyoushi_Kabara_Num = 0
'2-1.部下の誕生日(数値データー)
dim buf_Buka_Born_Day(3)
'2-2.部下の数秘ナンバー(数秘データー)
buf_Buka_Kabara_Num = 0
dim buf_male_year(4)
dim buf_male_month(2)
dim buf_male_Born_Day(2)
dim buf_feMale_Born_Day(2)
dim buf_female_day(2)
count=0
'Birds Eye List 配列
dim List$(6)
'部下の数秘ナンバー
'File 読み込み
'1.ビジネスの相性占い
open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
for i=0 to 11
for j=0 to 11
input #1,a$
Buffer_Business_Aisyou$(j,i) = a$
next j
next i
close #1
'2.男女の相性占い
open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
for i=0 to 11
for j=0 to 11
input #1,a$
Buffer_Bitween_sexes_Aisyou$(j,i) = a$
next j
next i
close #1
'2.Birth Eye chart$
'2.バーズアイグリッドを読み込む
open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
for j=0 to 25
for i=0 to 1
input #1,a$
buf_chart$(j,i) = a$
next i
next j
close #1
'File 読み込み　ここまで
'Main画面
screen 1,1,1,1
Main_Screen:
cls 3:
No=0
'***********************************************************
'1.WXGAの時
'(1200 x 800)
'***********************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + "Selection.png",1,5,220
gload Gazo$ + "Selection.png",1,5,320
gload Gazo$ + "Selection.png",1,5,420
gload Gazo$ + "Selection.png",1,5,520
'***********************************************************
'1(4)
gload Gazo$ + "Selection.png",1,130,420
'2(5)
gload Gazo$ + "Selection.png",1,280,420
'3(6)
gload Gazo$ + "Selection.png",1,430,420
'4(7)
gload Gazo$ + "Selection.png",1,130,330
'5(8)
gload Gazo$ + "Selection.png",1,280,330
'6(9)
'gload Gazo$ + "Selection.png",1,70,500
gload Gazo$ + "Selection.png",1,430,330
'7(10)
gload Gazo$ + "Selection.png",1,130,250
'8(11)
gload Gazo$ + "Selection.png",1,280,250
'9(12)
gload Gazo$ + "Selection.png",1,430,250
'0(13)
gload Gazo$ + "Selection.png",1,280,495
'14:(-1)OK ボタン
gload Gazo$ + "Selection.png",1,430,495
'***********************************************************
'1.WXGAの時
'(1200 x 800)
'***********************************************************
else
'***********************************************************
'2.WXGA(1200 x 800)以外の時
'(1920 x 1200)のサイズ
'***********************************************************
gload Gazo$ + "Selection.png",1,5,200
gload Gazo$ + "Selection.png",1,5,300
gload Gazo$ + "Selection.png",1,5,400
gload Gazo$ + "Selection.png",1,5,500
'4:1
gload Gazo$ + "Selection.png",1,35,300
'5:2
gload Gazo$ + "Selection.png",1,35,400
'6:3
gload Gazo$ + "Selection.png",1,35,500
'7:4
gload Gazo$ + "Selection.png",1,70,300
'8:5
gload Gazo$ + "Selection.png",1,70,400
'9:6
gload Gazo$ + "Selection.png",1,70,500
'10:7
gload Gazo$ + "Selection.png",1,430,295
'11:8
gload Gazo$ + "Selection.png",1,430,420
'12:9
gload Gazo$ + "Selection.png",1,430,440
'13:0
gload Gazo$ + "Selection.png",1,150,400
'-1:Ok
gload Gazo$ + "Selection.png",1,200,400
'***********************************************************
'2.WXGA(1200 x 800)以外の時
'(1920 x 1200)のサイズ
'***********************************************************
endif
if ex_info$(1) <> "JP" then
'英語　トップ画面
gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
'put@(0,0),1280,800,(1080,800)
else
'**********************************************************
'［機能］　グラフィックバッファ（2番目の座標）からグラフィック画面（1番目の座標）へ画像データを引き出します。
'
'　［書式］　PUT@(x1,y1),w1,h1,(x2,y2)[,[w2],[h2][,描画モード]]
'　［説明］
'　　w1,w2=横サイズ h1,h2= 縦サイズ
'　　転写元と転写先のサイズが異なる場合、拡大縮小描画されます。
'　　各種重ね合わせの方式は pen命令で設定することができます。
'　　<描画モード>の指定で次の選択ができます。
'　　 0. グラフィックバッファからグラフィック画面への描画。
'　　 1. グラフィック画面からグラフィック画面への描画。
'　　 2. グラフィックバッファからグラフィックバッファへの描画。
'***********************************************************'
'*************************************************************************************************
'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
'日本語トップスクリーン
'gload Gazo$ + "TopScreen_20230310.png",0,0,0
'else
'1.WXGAの時
'************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ + "Screen1_907x680_20240214.png",0,0,0
else
'************************************************************************************************
'2.WXGA以外の時
'************************************************************************************************
gload Gazo$ + "TopScreen_20230310.png",0,0,0
endif
'put@(0,0),1280,800,(1080,800),,,0
endif
'***********************************************************************************************
'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
'***********************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
'************************************************************************************************
'WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
sp_def 0,(5,220),32,32
sp_def 1,(5,320),32,32
sp_def 2,(5,420),32,32
sp_def 3,(5,520),32,32
'1(4)
sp_def 4,(130,420),32,32
'2(5)
sp_def 5,(280,420),32,32
'3(6)
sp_def 6,(430,420),32,32
'4(7)
sp_def 7,(130,330),32,32
'5(8)
sp_def 8,(280,330),32,32
'6(9)
sp_def 9,(430,330),32,32
'9(10)
sp_def 10,(130,250),32,32
'6(11)
sp_def 11,(280,250),32,32
'9(12)
sp_def 12,(430,250),32,32
sp_def 13,(280,495),32,32
'14:OK ボタン (-1)
sp_def 14,(430,495),32,32
'Sprite OFF
sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
sp_put 0,(5,220),0,0
sp_put 1,(5,320),1,0
sp_put 2,(4,420),2,0
sp_put 3,(5,520),3,0
'1
sp_put 4,(130,420),4,0
'2
sp_put 5,(280,420),5,0
'3
sp_put 6,(430,420),6,0
'4
sp_put 7,(130,330),7,0
'5
sp_put 8,(280,330),8,0
'6
sp_put 9,(430,330),9,0
'7
sp_put 10,(130,250),10,0
'8
sp_put 11,(280,250),11,0
'9
sp_put 12,(430,250),12,0
'0
sp_put 13,(280,495),13,0
'14:OK ボタン
sp_put 14,(430,495),14,0
'************************************************************************************************
'WXGAの場合　ここまで (1280 x 800)
'************************************************************************************************
else
'選択肢の丸
'************************************************************************************************
'WUXGAの場合　ここから (1920 x 1200)
'************************************************************************************************
gload Gazo$ + "downscreen.png",0,0,800
sp_def 0,(5,300),32,32
sp_def 1,(5,400),32,32
sp_def 2,(5,500),32,32
sp_def 3,(5,600),32,32
'1
sp_def 4,(35,300),32,32
'2
sp_def 5,(35,400),32,32
'3
sp_def 6,(35,500),32,32
'4
sp_def 7,(70,300),32,32
'5
sp_def 8,(70,400),32,32
'6
sp_def 9,(70,500),32,32
'7
sp_def 10,(110,300),32,32
'8
sp_def 11,(110,400),32,32
'9
sp_def 12,(110,400),32,32
sp_def 13,(150,400),32,32
sp_def 14,(200,400),32,32
'Sprite OFF
sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
sp_put 0,(5,300),0,0
sp_put 1,(5,400),1,0
sp_put 2,(5,500),2,0
sp_put 3,(5,600),3,0
'1
sp_put 4,(130,300),4,0
'2
sp_put 5,(130,400),5,0
'3
sp_put 6,(130,500),6,0
'4
sp_put 7,(340,300),7,0
'5
sp_put 8,(340,400),8,0
'6
sp_put 9,(340,500),9,0
'7
sp_put 10,(540,300),10,0
'8
sp_put 11,(540,400),11,0
'9
sp_put 12,(540,500),12,0
'0
sp_put 13,(340,600),13,0
sp_put 14,(540,600),14,0
'************************************************************************************************
'WUXGAの場合　ここまで  (1920 x 1200)
'************************************************************************************************
endif
Main_Top:
'Main Message 2023.06.07
'再生を止める
play ""
init "kb:4"
'font 32:
font 40
if ex_info$(1) <> "JP" then
'1.英語表示ターム
print chr$(13) + chr$(13) + chr$(13)
color rgb(217,255,212)
print "Please Select Number?" + chr$(13)+chr$(13)
'0
print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
'1
print " :2.Setting" + chr$(13)+chr$(13)
'2
print " :3.Help" + chr$(13)
'3
print " :4.(Finishing)Program" + chr$(13)
COLOR rgb(0,0,0):No=0
locate 1,15
print "                                        "
locate 1,15
print "1.It has Selected Kabara Fortune Telling"
'1.英語表示ターム
'---------音声 日本語　英語に変える----------------
'play Voice$ + "Voice_Main_Message_20230607.mp3"
'---------音声 日本語　英語に変える----------------
else
'2.日本語表示ターム
'Main_Screen_Select:
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
font FONT
color rgb(217,255,212)
locate 1,5
print "番号を選んでください"
'0
locate 1,7
print " :1.数秘術占い"
'1
locate 1,10
print " :2.設 定"
'2
locate 1,13
print " :3.ヘルプ"
'3
locate 1,16
print " :4.(プログラムを)終了する"
COLOR rgb(0,0,0):No=0
'locate 1,15
'3行下げる
if (count = 0) then
locate 1,19
print "           "
locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択"
play Voice$ + "Voice_Main_Message_20230607.mp3"
endif
'************************************************************************************************
'1.WXGAの場合　ここまで (1280 x 800)
'************************************************************************************************
'2.日本語表示ターム
else
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
'************************************************************************************************
font FONT
print chr$(13) + chr$(13) + chr$(13)
color rgb(217,255,212)
print "番号を選んでください" + chr$(13)
'0
print " :1.数秘術占い" + chr$(13)
'1
print " :2.設 定" + chr$(13)
'2
print " :3.ヘルプ" + chr$(13)
'3
print " :4.(プログラムを)終了する" + chr$(13)
COLOR rgb(0,0,0):No=0
'locate 1,15
'3行下げる
if count=0 then
locate 1,15
print "           "
locate 1,15:color rgb(0,0,0):print "1.数秘術占いを選択"
play Voice$ + "Voice_Main_Message_20230607.mp3"
endif
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
'************************************************************************************************
endif
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
'************************************************************************************************
endif
Main_Screen_Select:
y = 0:key$ = "":bg = 0:bg2=0
while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
y = stick(1)
'"May (2023)"
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
'*******************************************************************************************************************************
'  WUXGA(1920 x 1200)
'  X=5:Y=300
'  WXGA (1280 x 800)
'  X=5:Y=200
'*******************************************************************************************************************************
'1.
'ジョイパッドのソース ソート　ここから
'カーソル　下 or 十字キー下
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
'1
No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:count = count + 1:beep:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":count=cunt+1:goto Main_Screen_Select:
case 1:
'2
No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                                 ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":count=count+1:goto Main_Screen_Select:
case 2:
'3
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:color rgb(0,0,0):print "4.(プログラムを)終了するを選択":count=count+1:goto Main_Screen_Select:
case 3:
'0
No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(X,Y+20),0,0:beep:pause 200:count = count + 1:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択":count=count+1:goto Main_Screen_Select:
end select
endif
'2.
'カーソル　上　or 十字キー  上
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
'3
No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:COLOR rgb(0,0,0):print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
case 1:
'0
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:COLOR rgb(0,0,0):print  "1.数秘術占いを選択":goto Main_Screen_Select:
case 2:
'1
No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":goto Main_Screen_Select:
case 3:
'2
No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                   ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":goto Main_Screen_Select:
end select
endif
'ジョイパッド　ソース 部分　ここまで
'ジョイパッド右　　or Enter key 決定
if ((bg = 2) OR (key$ = chr$(13))) then
select case No
case 0:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen: 'Kabara_First_Top:
case 1:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
case 2:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
case 3:
play "":pause 200
play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:font 16:end
end select
endif
if (bg2 = 2) then
play "":pause 200
play Voice$ + "Voice_Main_Message_20230607.mp3"
goto Main_Screen_Select:
endif
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
'************************************************************************************************
else
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
'1
No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
case 1:
'2
No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
case 2:
'3
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
case 3:
'0
No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
end select
endif
'2.
'カーソル　上　or 十字キー  上
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
'3
No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
case 1:
'0
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
case 2:
'1
No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
case 3:
'2
No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
end select
endif
'ジョイパッド　ソース 部分　ここまで
'ジョイパッド右　　or Enter key 決定
if ((bg = 2) OR (key$ = chr$(13))) then
select case No
case 0:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen:  'Kabara_First_Top:
case 1:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
case 2:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
case 3:
play "":pause 200
play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
end select
endif
if (bg2 = 2) then
play "":pause 200
play Voice$ + "Voice_Main_Message_20230607.mp3"
goto Main_Screen_Select:
endif
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
'************************************************************************************************
endif
'Version
Version:
cls 3:PLAY ""
if ((size(0) <= 1280) and (size(1) <= 800)) then
'************************************************************************************************
'1.WXGA ここから (1280 x 800)
'************************************************************************************************
gload Gazo$   + Gazo_WXGA$ + "VersionScreen_918x680_20240219.png",0,0,0
'************************************************************************************************
'1.WXGA ここまで (1280 x 800)
'************************************************************************************************
else
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
'************************************************************************************************
gload Gazo$  + "VersionScreen_20230601.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'************************************************************************************************
'2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
'************************************************************************************************
endif
init"kb:4":font FONT
'talk"バージョン情報です"
'Message :Version
play Voice$ +  "Voice_Version_Message_20230607.mp3"
if ((size(0) <= 1280) and (size(1) <= 800)) then
color rgb(0,0,255)
locate 1,5
print "・Title:数秘術占い";chr$(13)
locate 1,8
print "・" + Version$ + chr$(13)
locate 1,10
print "・Author:licksjp"+chr$(13)
locate 1,13
print "・E-mail:licksjp@gmail.com" + chr$(13)
locate 0,15
print "(C)licksjp All rights " + chr$(13)
locate 7,16
print "reserved since 2009"+chr$(13)
locate 0,19
color rgb(0,0,0)
print "ジョイパッドの右を押してください"
else
locate 0,3
color rgb(0,0,255)
print "・Title:数秘術占い";chr$(13)
print "・" + Version$ + chr$(13)
print "・Author:licksjp"+chr$(13)
print "・E-mail:licksjp@gmail.com" + chr$(13)
locate 0,12
print "(C)licksjp All rights " + chr$(13)
locate 7,13
print "reserved since 2009"+chr$(13)
locate 0,18
color rgb(255,255,255)
print "ジョイパッドの右を押してください"
endif
Versionn_Selection:
bg = 0:key$ = "":bg2 = 0
while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
bg = strig(1)
key$ = inkey$
bg2 = strig(0)
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then
cls 4:goto Main_Screen:
endif
if (bg2=2) then
play "":pause 200
play Voice$ + "Voice_Version_Message_20230607.mp3"
goto Versionn_Selection:
endif
'1.数秘ナンバーを求める
'誕生日入力(生れた年代)
Input_Seireki:
'************************************************************************************************
'1.WXGAの時1200x800の時
'************************************************************************************************
'************************************************************************************************
'2.WUXGAの時1920x1200の時
'************************************************************************************************
cls 3:play "":count=0:count2=0
'No = -1:Okのとき
init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
'************************************************************************************************
'配列buf_year(4)を0で埋める。:データー初期化 ここから
'************************************************************************************************
for i=0 to 3
buf_year(i)=0
next i
'************************************************************************************************
'配列buf_year(4)を0で埋める。 :データー初期化　ここまで
'************************************************************************************************
'************************************************************************************************
'1.WXGAの時1200x800の時
'************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png",0,0,0
else
'************************************************************************************************
'2.WUXGAの時1920x1200の時
'************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'************************************************************************************************
'2.WUXGAの時1920x1200の時
'************************************************************************************************
endif
'Init"kb:2"
'音声ファイル再生 2023.06.07
play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
font FONT
locate 0,1
if ex_info$(1) <> "JP" then
color rgb(255,255,255)
color rgb(255,255,255)
print "Input Born Year?" + chr$(13)
color rgb(255,255,255)
locate 2,4
print "Your Born Year(4 dedgit for AC):" + buf_year$
else
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "生まれた年代を入れて下さい" + chr$(13)
color rgb(255,255,255)
locate 2,4
print "生まれた年代(西暦4桁):" + buf_year$
endif
'=============================
'テンキーの色(1~９)　白 ,決定ボタン　青
'=============================
color rgb(255,255,255)
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Input_Seireki2:
key$="":bg=0:y=0:y2=0:bg2=0:
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 6,1:sp_on 14,0:beep
pause 200:goto Input_Seireki2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 9,1:sp_on 6,0:beep
pause 200:goto Input_Seireki2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 12,1:sp_on 9,0:beep
pause 200:goto Input_Seireki2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
beep:pause 200:goto Input_Seireki2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 5,1:beep
pause 200:goto Input_Seireki2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 5,0:beep
pause 200:goto Input_Seireki2:
case 5:
No=8:sp_on 11,1:sp_on 8,0:beep
pause 200:goto Input_Seireki2:
case 8:
beep:pause 200:goto Input_Seireki2:
case 1:
No=4:sp_on 7,1:sp_on 4,0:beep
pause 200:goto Input_Seireki2:
case 4:
No=7:sp_on 10,1:sp_on 7,0:beep
pause 200:goto Input_Seireki2:
case 7:
beep:pause 200:goto Input_Seireki2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 12,0:sp_on 9,1:beep
pause 200:goto Input_Seireki2:
'6から３に下げる
case 6:
No=3:sp_on 9,0:sp_on 6,1:beep
pause 200:goto Input_Seireki2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 6,0:beep
pause 200:goto Input_Seireki2:
'Okから下のボタンを押しても何もしない
case -1:
beep:pause 200:goto Input_Seireki2:
case 8:
No=5:sp_on 8,1:sp_on 11,0:beep
pause 200:goto Input_Seireki2:
case 5:
No=2:sp_on 5,1:sp_on 8,0:beep
pause 200:goto Input_Seireki2:
case 2:
No=0:sp_on 13,1:sp_on 5,0:beep
pause 200:goto Input_Seireki2:
case 0:
beep:pause 200:goto Input_Seireki2:
case 7:
No=4:sp_on 7,1:sp_on 10,0:beep
pause 200:goto Input_Seireki2:
case 4:
No=1:sp_on 4,1:sp_on 7,0:beep
pause 200:goto Input_Seireki2:
case 1:
beep:pause 200:goto Input_Seireki2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0:beep
pause 200:goto Input_Seireki2:
'0 ボタン  左　何もしない
case 0:
beep:pause 200:goto Input_Seireki2:
case 3:
No=2:sp_on 5,1:sp_on 6,0:beep
pause 200:goto Input_Seireki2:
case 2:
No=1:sp_on 5,0:sp_on 4,1:beep
pause 200:goto Input_Seireki2:
case 1:
beep:pause 200:goto Input_Seireki2:
case 6:
No=5:sp_on 8,1:sp_on 9,0:beep
pause 200:goto Input_Seireki2:
case 5:
No=4:sp_on 7,1:sp_on 8,0:beep
pause 200:goto Input_Seireki2:
case 4:
beep:pause 200:goto Input_Seireki2:
case 9:
No=8:sp_on 11,1:sp_on 12,0:beep
pause 200:goto Input_Seireki2:
case 8:
No=7:sp_on 10,1:sp_on 11,0:beep
pause 200:goto Input_Seireki2:
case 7:
beep:pause 200:goto Input_Seireki2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0:beep
pause 200:goto Input_Seireki2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Input_Seireki2:
case 1:
No=2:sp_on 5,1:sp_on 4,0:beep
pause 200:goto Input_Seireki2:
case 2:
No=3:sp_on 6,1:sp_on 5,0
beep:pause 200:goto Input_Seireki2:
case 3:
beep:pause 200:goto Input_Seireki2:
case 4:
No=5:sp_on 8,1:sp_on 7,0:beep
pause 200:goto Input_Seireki2:
case 5:
No=6:sp_on 9,1:sp_on 8,0:beep
pause 200:goto Input_Seireki2:
case 7:
No=8:sp_on 11,1:sp_on 10,0:beep
pause 200:goto Input_Seireki2:
case 8:
No=9:sp_on 12,1:sp_on 11,0:beep
pause 200:goto Input_Seireki2:
case 9:
beep:pause 200:goto Input_Seireki2:
case 6:
beep:pause 200:goto Input_Seireki2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
count=1
if (No=-1) then
count=0
'Okボタンを押したとき
goto Input_Seireki2:
else
'===================================
'Okボタン以外が押されたとき  1桁目の入力
'===================================
count2=1
if (No >= 1 and No <= 2) then
buf_year$="":buf_year$ = str$(No)
buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
if ex_info$(1) <> "JP" then
n1= len("Input Born Year?(4 dedgit):")
else
n1 = len("生まれた年代(西暦4桁):")
endif
locate 2,4
color rgb(255,255,255)
if ex_info$(1) <> "JP" then
buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
else
buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
endif
'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
'print "生まれた年代(西暦4桁):";buf_year2$
print buf_Born_Year_line$
goto Input_Seireki2:
else
count=0
ui_msg"数字が範囲外になります。"
buf_year$="":buf_year=0
goto Input_Seireki2:
endif
endif
case 1:
count = 2
if (No = -1) then
count = 1
goto Input_Seireki2:
else
count2 = 1
b = val(buf_year$)
buf_year = b * 10 + No
buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
locate 2,4
color rgb(255,255,255)
print "                                                                "
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Year(4 dedgit):";buf_year$
else
print "生まれた年代(西暦4桁):";buf_year2$
endif
'if (No = -1) then
'count=1
goto Input_Seireki2:
endif
case 2:
count=3
if (No=-1) then
count =2
goto Input_Seireki2:
else
b = val(buf_year$)
buf_year = b*10 + No
buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
locate 2,4
color rgb(255,255,255)
print "                                        "
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Year?(4 dedgit):";buf_year$
else
print "生まれた年代(西暦4桁):";buf_year2$
endif
goto Input_Seireki2:
endif
case 3:
count=4
if (No = -1) then
count=3
goto Input_Seireki2:
else
b = val(buf_year$)
buf_year = b * 10 + No
buf_year$ = str$(buf_year)
locate 2,4
color RGB(255,255,255)
print "                                      "
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Year?(4 dedgit):";buf_year$
else
print "生まれた年代(西暦4桁):";buf_year$
endif
buf_year=val(buf_year$)
'year=val(buf_year$)
'if (No=-1) then
'goto Input_Born_Month:
'else
goto Input_Seireki2:
endif
case 4:
'bufyear=buf_year
if (No = -1) then
buf_year = val(buf_year$)
bufyear = buf_year
sp_on 14,0
goto Input_Born_Month:
else
goto Input_Seireki2:
endif
end select
endif
'=========================
'bg2　キャンセルボタン
'=========================
if (bg2 = 2) then
select case count2
case 0:
'Okボタンを押したときの処理
if (No = -1) then
buf_year=0:buf_year$=(""):buf_year$=trim$("****")
'count = 0
locate 2,4
color rgb(255,255,255)
print "                                      "
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Year?(4 dedgit):";buf_year$
else
print "生まれた年代（西暦4桁):";buf_year$
endif
'=============================
'case 0:前の画面に戻る 数秘術トップメニュー
'=============================
sp_on 14,0:goto Kabara_TopScreen:
else
'count=0
'(buf_year=0) then
buf_year = 0:buf_year$ = string$(4,"*")
goto Input_Seireki2:
'endif
endif
case 1:
if (No = -1) then
count2 = 0:count = 0
buf$=right$(buf_year$,1)
if (val(buf$) >= 1 and val(buf$) <= 9) then
buf_year$ = "****":buf_year=0
color rgb(255,255,255)
locate 0,4:
print "                                      "
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Year(4 dedgit):";buf_year$
else
print "生まれた年代（西暦4桁):" + buf_year$
endif
goto Input_Seireki2:
endif
else
endif
end select
endif
end
'Input"生れた年代(4桁,〜2025年):",year
'if year > 2025 then goto Input_Seireki:
'if year = 123 then cls 3:cls 4:goto Main_Screen:
'"4桁目"
'bufyear4 = fix(year / 1000)
'"3桁目"
'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
'"2桁目"
'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
'"1桁目"
'bufyear1 = fix((year - ((bufyear4*
'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
'生れた月を入力
Input_Born_Month:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
for i=0 to 1
buf_month(i)=0
next i
'***********************************************************
'1.WXGAの時 ここから
'(1200 x 800)
'***********************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ +"Screen2_907x680_20240216.png",0,0,0
'***********************************************************
'1.WXGAの時　ここまで
'(1200 x 800)
'***********************************************************
else
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここから
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここまで
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
endif
'Init"kb:2"
if ex_info$(1) <> "JP" then
else
'音声ファイル再生 2023.06.07
play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
endif
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
if ex_info$(1) <> "JP" then
'英語パート
'文字色:白
color rgb(255,255,255)
print "Input Born Month?(1~12):" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 2,4
'文字色:白
print "Your Born Month?(1~12):";buf_Month$
color rgb(255,255,255)
else
'日本語パート
color rgb(255,255,255)
print "生まれた月を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 2,4
'文字色:白
print "生まれた月(1月~12月):";buf_Month$
color rgb(255,255,255)
endif
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'文字色:赤
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(255,0,0)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Input_Born_Month2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
if ((size(0) <= 1280) and (size(1) <= 800)) then
'***********************************************************
'1.WXGAの時 ここから
'(1200 x 800)
'***********************************************************
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 6,1:sp_on 14,0:beep
pause 200:goto Input_Born_Month2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 9,1:sp_on 6,0:beep
pause 200:goto Input_Born_Month2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 12,1:sp_on 9,0:beep
pause 200:goto Input_Born_Month2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
beep:pause 200:goto Input_Born_Month2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 5,1:beep
pause 200:goto Input_Born_Month2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 5,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=8:sp_on 11,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 8:
beep:pause 200:goto Input_Born_Month2:
case 1:
No=4:sp_on 7,1:sp_on 4,0:beep
pause 200:goto Input_Born_Month2:
case 4:
No=7:sp_on 10,1:sp_on 7,0:beep
pause 200:goto Input_Born_Month2:
case 7:
beep:pause 200:goto Input_Born_Month2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 12,0:sp_on 9,1:beep
pause 200:goto Input_Born_Month2:
'6から３に下げる
case 6:
No=3:sp_on 9,0:sp_on 6,1:beep
pause 200:goto Input_Born_Month2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 6,0:beep
pause 200:gotoInput_Born_Month2:
'Okから下のボタンを押しても何もしない
case -1:
beep:pause 200:goto Input_Born_Month2:
case 8:
No=5:sp_on 8,1:sp_on 11,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=2:sp_on 5,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 2:
No=0:sp_on 13,1:sp_on 5,0:beep
pause 200:goto Input_Born_Month2:
case 0:
beep:pause 200:goto Input_Born_Month2:
case 7:
No=4:sp_on 7,1:sp_on 10,0:beep
pause 200:goto Input_Born_Month2:
case 4:
No=1:sp_on 4,1:sp_on 7,0:beep
pause 200:goto Input_Born_Month2:
case 1:
beep:pause 200:goto Input_Born_Month2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0:beep
pause 200:goto Input_Born_Month2:
'0 ボタン  左　何もしない
case 0:
beep:pause 200:goto Input_Born_Month2:
case 3:
No=2:sp_on 5,1:sp_on 6,0:beep
pause 200:goto Input_Born_Month2:
case 2:
No=1:sp_on 5,0:sp_on 4,1:beep
pause 200:goto Input_Born_Month2:
case 1:
beep:pause 200:goto Input_Born_Month2:
case 6:
No=5:sp_on 8,1:sp_on 9,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=4:sp_on 7,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 4:
beep:pause 200:goto Input_Born_Month2:
case 9:
No=8:sp_on 11,1:sp_on 12,0:beep
pause 200:goto Input_Born_Month2:
case 8:
No=7:sp_on 10,1:sp_on 11,0:beep
pause 200:goto Input_Born_Month2:
case 7:
beep:pause 200:goto Input_Born_Month2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0:beep
pause 200:goto Input_Born_Month2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Input_Born_Month2:
case 1:
No=2:sp_on 5,1:sp_on 4,0:beep
pause 200:goto Input_Born_Month2:
case 2:
No=3:sp_on 6,1:sp_on 5,0
beep:pause 200:goto Input_Born_Month2:
case 3:
beep:pause 200:goto Input_Born_Month2:
case 4:
No=5:sp_on 8,1:sp_on 7,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=6:sp_on 9,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 7:
No=8:sp_on 11,1:sp_on 10,0:beep
pause 200:goto Input_Born_Month2:
case 8:
No=9:sp_on 12,1:sp_on 11,0:beep
pause 200:goto Input_Born_Month2:
case 9:
beep:pause 200:goto Input_Born_Month2:
case 6:
beep:pause 200:goto Input_Born_Month2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'***********************************************************
'1.WXGAの時 ここまで
'(1200 x 800)
'***********************************************************
else
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここから
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0:BEEP
pause 200:goto Input_Born_Month2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1:beep
pause 200:goto Input_Born_Month2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0:beep
pause 200:goto Input_Born_Month2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
beep:pause 200:goto Input_Born_Month2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:beep
pause 200:goto Input_Born_Month2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=8:sp_on 7,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 8:
beep:pause 200:goto Input_Born_Month2:
case 1:
No=4:sp_on 5,1:sp_on 6,0:beep
pause 200:goto Input_Born_Month2:
case 4:
No=7:sp_on 4,1:sp_on 5,0:beep
pause 200:goto Input_Born_Month2:
case 7:
beep:pause 200:goto Input_Born_Month2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0:beep
pause 200:goto Input_Born_Month2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0:beep
pause 200:goto Input_Born_Month2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0:beep
pause 200:goto Input_Born_Month2:
'Okから下のボタンを押しても何もしない
case -1:
beep:pause 200:goto Input_Born_Month2:
case 8:
No=5:sp_on 8,1:sp_on 7,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=2:sp_on 9,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 2:
No=0:sp_on 13,1:sp_on 9,0:beep
pause 200:goto Input_Born_Month2:
case 0:
beep:pause 200:goto Input_Born_Month2:
case 7:
No=4:sp_on 5,1:sp_on 4,0:beep
pause 200:goto Input_Born_Month2:
case 4:
No=1:sp_on 6,1:sp_on 5,0:beep
pause 200:goto Input_Born_Month2:
case 1:
beep:pause 200:goto Input_Born_Month2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
beep:pause 200:goto Input_Born_Month2:
'0 ボタン  左　何もしない
case 0:
beep:pause 200:goto Input_Born_Month2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:beep
pause 200:goto Input_Born_Month2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:beep
pause 200:goto Input_Born_Month2:
case 1:
beep:pause 200:goto Input_Born_Month2:
case 6:
No=5:sp_on 8,1:sp_on 11,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=4:sp_on 5,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 4:
beep:pause 200:goto Input_Born_Month2:
case 9:
No=8:sp_on 7,1:sp_on 10,0:beep
pause 200:goto Input_Born_Month2:
case 8:
No=7:sp_on 4,1:sp_on 7,0:beep
pause 200:goto Input_Born_Month2:
case 7:
beep:pause 200:goto Input_Born_Month2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0:beep
pause 200:goto Input_Born_Month2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
beep:pause 200:goto Input_Born_Month2:
case 1:
No=2:sp_on 9,1:sp_on 6,0:beep
pause 200:goto Input_Born_Month2:
case 2:
No=3:sp_on 12,1:sp_on 9,0:beep
pause 200:goto Input_Born_Month2:
case 3:
beep:pause 200:goto Input_Born_Month2:
case 4:
No=5:sp_on 8,1:sp_on 5,0:beep
pause 200:goto Input_Born_Month2:
case 5:
No=6:sp_on 11,1:sp_on 8,0:beep
pause 200:goto Input_Born_Month2:
case 7:
No=8:sp_on 7,1:sp_on 4,0:beep
pause 200:goto Input_Born_Month2:
case 8:
No=9:sp_on 10,1:sp_on 7,0:beep
pause 200:goto Input_Born_Month2:
case 9:
beep:pause 200:goto Input_Born_Month2:
case 6:
beep:pause 200:goto Input_Born_Month2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここまで
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
endif
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここまで
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
'十字キー　ここまで
'右の丸ボタン　決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
if (buf_month = 1 or buf_month = 2) then
locate 2,3
color RGB(255,255,255)
if ex_info$(1) <> "JP" then
print "Input Born Month(1~12):";buf_Month$
else
print "生まれた月(1月~12月):";buf_Month2$
endif
else
locate 2,3
color Rgb(255,255,255)
if ex_info$(1) <> "JP" then
print "Input Born Month(1~12):";buf_Month$
else
print "生まれた月(1月~12月):";buf_Month$
endif
endif
goto Input_Born_Month2:
case 1:
count = 2:c = No
c = val(buf_Month$)
if (No = -1) then
'if No=1 or No=2 then
'endif
month = buf_month
buf_month=val(buf_Month$)
month=buf_month
'生まれた日に飛ぶ
goto Input_Born_Day:
else
buf_month = c*10 + No
buf_Month$= str$(buf_month)
locate 2,3
color Rgb(255,255,255)
if ex_info$(1) <> "JP" then
print "Input Born Month(1~12):";buf_Month$
else
print "生まれた月(1月~12月):";buf_Month$
endif
goto Input_Born_Month2:
endif
case 2:
count=3:count2=1
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "生まれた月(1月～12月):";buf_Month$
'goto Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
goto Input_Born_Day:
else
'goto Input_Born_Month2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_month=0:buf_Month$="**"
count2=0:count=0
locate 0,3:print "                                   "
if ex_info$(1) <> "JP" then
print "Input Born Month?(1~12):";buf_Month$
else
locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
endif
'if (buf_month > 1) then
sp_on 14,0:goto Input_Born_Month2:
'goto rewrite:
else
if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
buf_month=0:buf_Month$="**"
locate 2,3
color rgb(255,255,255)
print "                                       "
goto rewrite:
if (No>2) then
if ex_info$(1) <> "JP" then
ui_msg "The value is out of range"
else
ui_msg "値が範囲外です。"
endif
goto rewrite:
endif
endif
'endif
rewrite:
locate 2,4
color rgb(255,255,255)
print "                                      "
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Month?(1~12):";buf_Month$
else
print "生まれた月(1月~12月):";buf_Month$
endif
goto Input_Born_Month2:
endif
case 1:
buf_Month$="**":buf_month=0
if No=-1 then
count2=2:count=0
locate 0,4
print "                                      "
locate 2,4:
if ex_info$(1) <> "JP" then
print "Input Born Month?(1~12):";buf_Month$
else
print "生まれた月(1月~12月):" + buf_Month$
endif
goto Input_Born_Month2:
endif
case 2:
sp_on 14,0:goto Input_Seireki:
end select
endif
'endif
end
'end
'生れた日を入力
Input_Born_Day:
'生まれた日入力
cls 3:play ""
'No=-1:Okのとき
init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
for i=0 to 1
buf_day(i)=0
next i
'***********************************************************
'1.WXGAの時 ここから
'(1200 x 800)
'***********************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png",0,0,0
'***********************************************************
'1.WXGAの時　ここまで
'(1200 x 800)
'***********************************************************
else
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここから
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここまで
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
endif
'Init"kb:2"
if ex_info$(1) <> "JP" then
'英語音声パート
else
'日本語音声パート
'音声ファイル再生 2023.06.07
play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
endif
font 48
if ex_info$(1) <> "JP" then
locate 0,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "Input Born day?" + chr$(13)
color rgb(255,255,255)
locate 2,4
print "Born Day(1~31):";buf_Day$
else
locate 0,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "生まれた日を入れて下さい" + chr$(13)
color rgb(255,255,255)
locate 2,4
print "生まれた日(1日~31日):";buf_Day$
endif
'color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'print ":7  :8  :9" + chr$(13)
'=======================
'テンキー　色　白　決定ボタン　青
'=======================
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(255,0,0)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Input_Born_Day2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
if ((size(0) <= 1280) and (size(1) <= 800)) then
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 6,1:sp_on 14,0:beep
pause 200:goto Input_Born_Day2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 9,1:sp_on 6,0:beep
pause 200:goto Input_Born_Day2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 12,1:sp_on 9,0:beep
pause 200:goto Input_Born_Day2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
beep:pause 200:goto Input_Born_Day2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 5,1:beep
pause 200:goto Input_Born_Day2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 5,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=8:sp_on 11,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 8:
beep:pause 200:goto Input_Born_Day2:
case 1:
No=4:sp_on 7,1:sp_on 4,0:beep
pause 200:goto Input_Born_Day2:
case 4:
No=7:sp_on 10,1:sp_on 7,0:beep
pause 200:goto Input_Born_Day2:
case 7:
beep:pause 200:goto Input_Born_Day2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 12,0:sp_on 9,1:beep
pause 200:goto Input_Born_Day2:
'6から３に下げる
case 6:
No=3:sp_on 9,0:sp_on 6,1:beep
pause 200:goto Input_Born_Day2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 6,0:beep
pause 200:goto Input_Born_Day2:
'Okから下のボタンを押しても何もしない
case -1:
beep:pause 200:goto Input_Born_Day2:
case 8:
No=5:sp_on 8,1:sp_on 11,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=2:sp_on 5,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 2:
No=0:sp_on 13,1:sp_on 5,0:beep
pause 200:goto Input_Born_Day2:
case 0:
beep:pause 200:goto Input_Born_Day2:
case 7:
No=4:sp_on 7,1:sp_on 10,0:beep
pause 200:goto Input_Born_Day2:
case 4:
No=1:sp_on 4,1:sp_on 7,0:beep
pause 200:goto Input_Born_Day2:
case 1:
beep:pause 200:goto Input_Born_Day2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0:beep
pause 200:goto Input_Born_Day2:
'0 ボタン  左　何もしない
case 0:
beep:pause 200:goto Input_Born_Day2:
case 3:
No=2:sp_on 5,1:sp_on 6,0:beep
pause 200:goto Input_Born_Day2:
case 2:
No=1:sp_on 5,0:sp_on 4,1:beep
pause 200:goto Input_Born_Day2:
case 1:
beep:pause 200:goto Input_Born_Day2:
case 6:
No=5:sp_on 8,1:sp_on 9,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=4:sp_on 7,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 4:
beep:pause 200:goto Input_Born_Day2:
case 9:
No=8:sp_on 11,1:sp_on 12,0:beep
pause 200:goto Input_Born_Day2:
case 8:
No=7:sp_on 10,1:sp_on 11,0:beep
pause 200:goto Input_Born_Day2:
case 7:
beep:pause 200:goto Input_Born_Day2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0:beep
pause 200:goto Input_Born_Day2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Input_Born_Day2:
case 1:
No=2:sp_on 5,1:sp_on 4,0:beep
pause 200:goto Input_Born_Day2:
case 2:
No=3:sp_on 6,1:sp_on 5,0
beep:pause 200:goto Input_Born_Day2:
case 3:
beep:pause 200:goto Input_Born_Day2:
case 4:
No=5:sp_on 8,1:sp_on 7,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=6:sp_on 9,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 7:
No=8:sp_on 11,1:sp_on 10,0:beep
pause 200:goto Input_Born_Day2:
case 8:
No=9:sp_on 12,1:sp_on 11,0:beep
pause 200:goto Input_Born_Day2:
case 9:
beep:pause 200:goto Input_Born_Day2:
case 6:
beep:pause 200:goto Input_Born_Day2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
else
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここから
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0:beep
pause 200:goto Input_Born_Day2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1:beep
pause 200:goto Input_Born_Day2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0:beep
pause 200:goto Input_Born_Day2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
beep:pause 200:goto Input_Born_Day2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:beep
pause 200:goto Input_Born_Day2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=8:sp_on 7,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 8:
beep:pause 200:goto Input_Born_Day2:
case 1:
No=4:sp_on 5,1:sp_on 6,0:beep
pause 200:goto Input_Born_Day2:
case 4:
No=7:sp_on 4,1:sp_on 5,0:beep
pause 200:goto Input_Born_Day2:
case 7:
beep:pause 200:goto Input_Born_Day2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0:beep
pause 200:goto Input_Born_Day2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0:beep
pause 200:goto Input_Born_Day2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0:beep
pause 200:goto Input_Born_Day2:
'Okから下のボタンを押しても何もしない
case -1:
beep:pause 200:goto Input_Born_Day2:
case 8:
No=5:sp_on 8,1:sp_on 7,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=2:sp_on 9,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 2:
No=0:sp_on 13,1:sp_on 9,0:beep
pause 200:goto Input_Born_Day2:
case 0:
beep:pause 200:goto Input_Born_Day2:
case 7:
No=4:sp_on 5,1:sp_on 4,0:beep
pause 200:goto Input_Born_Day2:
case 4:
No=1:sp_on 6,1:sp_on 5,0:beep
pause 200:goto Input_Born_Day2:
case 1:
beep:pause 200:goto Input_Born_Day2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0:beep
pause 200:goto Input_Born_Day2:
'0 ボタン  左　何もしない
case 0:
beep:pause 200:goto Input_Born_Day2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:beep
pause 200:goto Input_Born_Day2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:beep
pause 200:goto Input_Born_Day2:
case 1:
pause 200:goto Input_Born_Day2:
case 6:
No=5:sp_on 8,1:sp_on 11,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=4:sp_on 5,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 4:
beep:pause 200:goto Input_Born_Day2:
case 9:
No=8:sp_on 7,1:sp_on 10,0:beep
pause 200:goto Input_Born_Day2:
case 8:
No=7:sp_on 4,1:sp_on 7,0:beep
pause 200:goto Input_Born_Day2:
case 7:
beep:pause 200:goto Input_Born_Day2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0:beep
pause 200:goto Input_Born_Day2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
beep:pause 200:goto Input_Born_Day2:
case 1:
No=2:sp_on 9,1:sp_on 6,0:beep
pause 200:goto Input_Born_Day2:
case 2:
No=3:sp_on 12,1:sp_on 9,0:beep
pause 200:goto Input_Born_Day2:
case 3:
beep:pause 200:goto Input_Born_Day2:
case 4:
No=5:sp_on 8,1:sp_on 5,0:beep
pause 200:goto Input_Born_Day2:
case 5:
No=6:sp_on 11,1:sp_on 8,0:beep
pause 200:goto Input_Born_Day2:
case 7:
No=8:sp_on 7,1:sp_on 4,0:beep
pause 200:goto Input_Born_Day2:
case 8:
No=9:sp_on 10,1:sp_on 7,0:beep
pause 200:goto Input_Born_Day2:
case 9:
beep:pause 200:goto Input_Born_Day2:
case 6:
beep:pause 200:goto Input_Born_Day2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'***********************************************************
'2.WUXGAの時(WXGA以外の時)　ここまで
'(1920 gload Gazo$ + "Selection.png",1,60,240
'***********************************************************
endif
'十字キー　ここまで
'右の丸ボタンを押したとき
if ((bg = 2) or (key$ = chr$(13))) then
'count :決定ボタンを押した回数
select case (count mod 3)
'1桁目入力
case 0:
count = 1:
if (No = -1) then
'1桁目　OKでは何もしない
'goto check:
else
'ok以外のボタンを押したとき
buf_day = No:buf_Day$ = str$(No)
c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
locate 2,3
color RGB(255,255,255)
if ex_info$(1) <> "JP" then
print "Input Born Day(1~31):";buf_Day2$
else
print "生まれた日(1日~31日):";buf_Day2$
endif
endif
check:
if (No >= 1 and No <= 9) then
sp_on 14,0
goto Input_Born_Day2:
else
sp_on 14,0
goto complate:
endif
case 1:
'10未満の数字ボタン+okボタン or 2桁目の数字ボタン
count = 2:
'locate 2,3
'color RGB(255,255,255)
'print "生まれた日(1日~31日):";buf_Day$
'Okボタンを押したときの処理
'入力値　10未満のとき
'c = buf_day
if (No = -1) then
'c=buf_day
' buf_day = c
'buf_Day$ = str$(buf_day)
'10以下のとき
if (buf_day < 10) then
sp_on 14,0
goto complate:
endif
else
'c = No
buf_day = c * 10 + No
'buf_day = c
buf_Day$ =str$(buf_day)
locate 2,4
color Rgb(255,255,255)
if ex_info$(1) <> "JP" then
print "Input Born Day(1~31):";buf_Day$
else
print "生まれた日(1日~31日):";buf_Day$
endif
goto Input_Born_Day2:
endif
'生まれた日　2桁目の数字　or 1桁の数字 + ok
case 2:
count=0
'c=val(buf_Day$)
'buf_day=c*10+No
'buf_Day$=str$(buf_day)
'day=buf_day
'locate 2,3
'print "生まれた日(1日〜31日):";buf_Day$
'No=-1:ok ボタンを押したとき
if (No = -1) then
if ((buf_day > 0) and (buf_day < 32)) then
sp_on 14,0
goto complate:
else
goto Input_Born_Day2:
endif
'Okボタン以外を押したとき
else
c=val(buf_Day$)
buf_day = c * 10 + No
buf_Day$ = str$(buf_day)
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Day?(1~31):";buf_Day$
else
print "生まれた日(1日~31日):";buf_Day$
endif
'goto Input_Born_Day2:
endif
case 3:
count = 4
c=val(buf_day$)
buf_day = c * 10 + No
buf_day$ = str$(buf_day)
locate 2,4
if ex_info$(1) <> "JP" then
print "Input Born Day?(1~31):";buf_Day$
else
print "生まれた日を入れてください(1日~31日):";buf_Day$
endif
year = val(buf_year$)
if (No = -1) then
'goto Input_Born_Day:
sp_on 14,0:No=0
goto complate:
else
goto Input_Born_Month2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_day = val(buf_day$)
'bufday = buf_day
'sp_on 14,0
'goto complate:
'else
'goto Input_Born_Day2:
'endif
end select
endif
if (bg2=2) then
select case count2
case 0:
if (No=-1) then
'buf_day=0:buf_Day$="**"
if (buf_day>=1 and buf_day<=31) then
count=0:No=0
buf_day=0:buf_Day$="**"
'goto rewrite_day:
else
buf_day=0:buf_Day$="**"
ui_msg"値が範囲外です"
endif
goto rewrite_day:
else
goto rewrite_day:
endif
rewrite_day:
locate 2,4
color rgb(255,255,255)
print "                                      "
locate 2,4
if ex_info$(1)<>"JP" then
print "Born Day(1~31):";buf_Day$
else
print "生まれた日(1日~31日):";buf_Day$
endif
goto Input_Born_Day2:
end select
endif
'--------------------------Input_Born_Day:-------------------------------------------
complate:
suhiNo = buf_year + buf_month + buf_day
'if (suhiNo < 1000) then
a1 = fix(suhiNo / 1000)
a2 = fix(suhiNo/100) - (a1 * 10)
a3 = fix(suhiNo/10)-(a1*100+a2*10)
a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
'endif
bufsuhiNo = a1 + a2 + a3 + a4
recomp:
if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
'bufsuhiNo=a6
goto Kabara_Result_Screen:
else
a5 = fix(bufsuhiNo / 10)
a6 = bufsuhiNo - a5 * 10
bufsuhiNo = a6 + a5
if (bufsuhiNo = 10) then
bufsuhiNo=1
endif
goto Kabara_Result_Screen:
endif
Kabara_Result_Screen:
cls 3:
'****************************************************************************************************
'1.WUXGA(1920x1200)の時
'****************************************************************************************************
gload Gazo$ + "ResultScreen_20230601.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'1.WUXGA(1920x1200)の時
'****************************************************************************************************
init "kb:4"
'
play ""
select case (bufsuhiNo)
case 1:
'****************************************************************************************************
'1.数秘ナンバー 1
'****************************************************************************************************
play Voice$ + "Result_Kabara_1_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 1
'****************************************************************************************************
case 2:
'****************************************************************************************************
'1.数秘ナンバー 2
'****************************************************************************************************
play Voice$ + "Result_Kabara_2_20231112.mp3"
'****************************************************************************************************
'1.数秘ナンバー 2
'****************************************************************************************************
case 3:
'****************************************************************************************************
'1.数秘ナンバー 3
'****************************************************************************************************
play Voice$ + "Result_Kabara_3_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 3
'****************************************************************************************************
case 4:
'****************************************************************************************************
'1.数秘ナンバー 4
'****************************************************************************************************
play Voice$ + "Result_Kabara_4_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 4
'****************************************************************************************************
case 5:
'****************************************************************************************************
'1.数秘ナンバー 5
'****************************************************************************************************
play Voice$ + "Result_Kabara_5_20231112.mp3"
'****************************************************************************************************
'1.数秘ナンバー 5
'****************************************************************************************************
case 6:
'****************************************************************************************************
'1.数秘ナンバー 6
'****************************************************************************************************
play Voice$ + "Result_Kabara_6_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 6
'****************************************************************************************************
case 7:
'****************************************************************************************************
'1.数秘ナンバー 7
'****************************************************************************************************
play Voice$ + "Result_Kabara_7_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 7
'****************************************************************************************************
case 8:
'****************************************************************************************************
'1.数秘ナンバー 8
'****************************************************************************************************
play Voice$ + "Result_Kabara_8_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 8
'****************************************************************************************************
case 9:
'****************************************************************************************************
'1.数秘ナンバー 9
'****************************************************************************************************
play Voice$ + "Result_Kabara_9_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 9
'****************************************************************************************************
case 11:
'****************************************************************************************************
'1.数秘ナンバー 11
'****************************************************************************************************
play Voice$ + "Result_Kabara_11_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 11
'****************************************************************************************************
case 22:
'****************************************************************************************************
'1.数秘ナンバー 22
'****************************************************************************************************
play Voice$ + "Result_Kabara_22_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 22
'****************************************************************************************************
case 33:
'****************************************************************************************************
'1.数秘ナンバー 33
'****************************************************************************************************
play Voice$ + "Result_Kabara_33_20230607.mp3"
'****************************************************************************************************
'1.数秘ナンバー 33
'****************************************************************************************************
end select
'****************************************************************************************************
'
'****************************************************************************************************
font 48
'****************************************************************************************************
'
'****************************************************************************************************
key$ = "":bg = 0:bg2=0
'COLOR rgb(255,255,255)
'print "●診断結果"+chr$(13)
locate 0,2
if ex_info$(1)<>"JP" then
color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
locate 0,15:
color rgb(255,255,255)
print "Left button：Retry,Right Button：Main Screen" + chr$(13)
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
locate 0,15:
color rgb(255,255,255)
print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
'Enter or JoyPad right
if ((key$ = chr$(13)) or (bg = 2)) then
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
endif
if ((bg2=2)) then
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
endif
'suhiNo1 = fix(bufsuhiNo / 10)
'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
'bufsuhiNo = suhiNo1 + suhiNo2
'goto recomp:
'endif
'print chr$(13)
'color rgb(255,0,0)
'print"トップ:エンターキー,S or s:保存"+chr$(13)
'key$ = input$(1)
'if key$ = chr$(13) then goto Main_Screen:
'"Menu2 占いのルール"
Suhi_Rule:
'数秘術占いルールの表示
cls 3:play "":init"kb:4"
if ((size(0)<=1280) and (size(1)<=800)) then
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$  + Gazo_WXGA$ +  "KabaraRuleScreen_864x640_20240219.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
'cls 3:
'line (0,0) - (1500,60),rgb(0,0,255),bf
'line (0,60) - (1500,60*9),rgb(127,255,212),bf
'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
if ex_info$(1)<>"JP" then
locate 0,2:Font 48
print chr$(13) + chr$(13)
color rgb(0,0,0)
print "We will convert your birth date to a single number.";chr$(13)
print "Number range: 1~9, 11, 22, 33";chr$(13)
print "Example: If your birth date is 22nd November 1973";chr$(13)
print "1+9+7+3+11+22=53 ";chr$(13)
print "→ 5 + 3 = 8" + chr$(13)
print "So, your numerology number is 8.";chr$(13)
locate 0,15
color rgb(255,255,255)
print "Please press the right on the joystick"
play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
else
Font Font
if ((size(0)<=1280) and (size(1)<=800)) then
'************************************************************************************************
'1.WXGAの時1200x800の時
'************************************************************************************************
color rgb(0,0,0)
locate 1,5:print "誕生日を単数変換します";chr$(13)
locate 1,7:print "数字の範囲:1~９,11,22,33";chr$(13)
locate 1,9:print "例:1973年11月22日の場合";chr$(13)
locate 1,11:print "1+9+7+3+11+22=53 ";chr$(13)
locate 1,13:print "→ 5 + 3 = 8" + chr$(13)
locate 1,15:print "故に8が数秘ナンバーになります";chr$(13)
locate 0,19:color rgb(255,255,255)
print "ジョイパッドの右を押してください"
'************************************************************************************************
'1.WXGAの時1200x800の時
'************************************************************************************************
else
'****************************************************************************************************
'2.WUXG(1920x1200)の時ここから
'****************************************************************************************************
print chr$(13) + chr$(13)
color rgb(0,0,0)
print "誕生日を単数変換します";chr$(13)
print "数字の範囲:1~９,11,22,33";chr$(13)
print "例:1973年11月22日の場合";chr$(13)
print "1+9+7+3+11+22=53 ";chr$(13)
print "→ 5 + 3 = 8" + chr$(13)
print "故に8が数秘ナンバーになります";chr$(13)
locate 0,15
color rgb(255,255,255)
print "ジョイパッドの右を押してください"
'****************************************************************************************************
'2.WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
endif
'"key$ = input$(1)"
'"if key$ = chr$(13) then goto Main_Screen:"
suhi_rule_selection:
bg = 0:key$ = "":bg2=0
while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
bg = strig(1)
key$ = inkey$
bg2=strig(0)
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then
pause 200:cls 4:goto Main_Screen:
endif
if (bg2=2) then
play "":pause 200
play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
goto suhi_rule_selection:
endif
'2.設定 ここから
'2-1.トップ画面に戻る
Setting:
cls 3:init"kb:4":font 48:No=0
play ""
play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
'****************************************************************************************************
'W(1280x 800)の時ここから
'****************************************************************************************************
if (size(0)<=1280 and size(1)<=800) then
gload Gazo$ + Gazo_WXGA$ + "Screen1_Setting_Top_907x680_20240221.png",0,0,0
'****************************************************************************************************
'W(1280 x800)の時ここまで
'****************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
if (size(0)<=1280 and size(1)<=800) then
font FONT:color rgb(255,255,255):cls
sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:
'****************************************************************************************************
'(1280x800)の時 ここから
'****************************************************************************************************
locate 1,5:
print "番号を選んでください"
locate 1,7:
print " :1.トップ画面に戻る"
locate 1,10:
print " :2.バーズアイグリッドデーターリスト"
locate 1,13:
print " :3.未実装" + chr$(13)
locate 1,16:
print " :4.未実装" + chr$(13)
color rgb(0,0,0):locate 1,19:
print "1.トップ画面に戻るを選択"
'****************************************************************************************************
'(1280x800)の時 ここまで
'****************************************************************************************************
else
font FONT
print chr$(13) + chr$(13) + chr$(13)
color rgb(255,255,255):sp_on 0,1:
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
print "番号を選んでください" + chr$(13)
print " :1.トップ画面に戻る"+ chr$(13)
print " :2.バーズアイグリッドデーターリスト" + chr$(13)
print " :3.未実装" + chr$(13)
print " :4.未実装" + chr$(13)
color rgb(0,0,0)
locate 1,15:print "1.トップ画面に戻るを選択"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
Setting_Selection:
y=0:key$="":bg=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
y=stick(1)
key$ = inkey$
bg=strig(1)
bg2 = strig(0)
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then
select case No
case 0:
sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
case 1:
sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
end select
endif
if (bg2 = 2) then
play "":pause 200
play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
goto Setting_Selection:
endif
'****************************************************************************************************
'(1280x800)の時 ここから
'****************************************************************************************************
if (size(0) <= 1280 and size(1) <= 800) then
if ((y=1) or (y=-1)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                    ":locate 1,19:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
case else:
No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.トップ画面に戻るを選択":goto Setting_Selection:
end select
'****************************************************************************************************
'(1280x800)の時 ここまで
'****************************************************************************************************
endif
else
'****************************************************************************************************
'(1920x1280)の時 ここから
'****************************************************************************************************
if ((y=1) or (y=-1)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
case else:
No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
end select
endif
'****************************************************************************************************
'(1920x1200)の時 ここまで
'****************************************************************************************************
endif
'2.設定 ここまで
'3.Help
'3-1.ルールの表示
'3-2.バージョン
'3-3.トップに戻る
Help:
cls 3:Font 48:No=0
play ""
'****************************************************************************************************
''WXGAの場合　ここから (1280 x 800)
'****************************************************************************************************
if ((size(0)<=1280) and (size(1)<=800)) then
gload Gazo$ + Gazo_WXGA$ + "TopScreen_Help_907x680_20240216.png",0,0,0
'****************************************************************************************************
''WXGAの場合　ここまで (1280 x 800)
'****************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
if ex_info$(1)<>"JP" then
font FONT
color rgb(255,255,255)
print chr$(13)+chr$(13)+chr$(13)
print "Please select a number"+chr$(13)
print " :1. Rules for Explain" + chr$(13)
print " :2. Display Version" + chr$(13)
print " :3. References" + chr$(13)
print " :4. Return to Top Screen" + chr$(13)
else
if ((size(0)<=1280) and (size(1)<=800)) then
color rgb(255,255,255)
font FONT
locate 1,5
print "番号を選んでください"
locate 1,7
print " :1.ルールの説明"
locate 1,10
print " :2.バージョンの表示"
locate 1,13
print " :3.参考文献"
locate 1,16
print " :4.トップ画面に戻る"
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
font FONT
color rgb(255,255,255)
print chr$(13)+chr$(13)+chr$(13)
print "番号を選んでください"+chr$(13)
print " :1.ルールの説明" + chr$(13)
print " :2.バージョンの表示" + chr$(13)
print " :3.参考文献" + chr$(13)
print " :4.トップ画面に戻る" + chr$(13)
endif
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
color rgb(0,0,0)
if ((size(0) <= 1280) and (size(1) <= 800)) then
sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
locate 1,19
print "                                  "
if ex_info$(1) <> "JP" then
print "1. Select Rules for Explain"
else
if count=0 then
locate 1,19
print "1.ルールの説明を選択"
endif
endif
'************************************************************************************************
'1.WXGAの場合　ここまで (1280 x 800)
'************************************************************************************************
else
'*************************************************************************************************
'2.WUXG(1920x1200)の時ここから
'**************************************************************************************************
'color rgb(0,0,0)
sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
locate 1,15
print "                                  "
if ex_info$(1) <> "JP" then
print "1. Select Rules for Explain"
else
locate 1,15
print "1.ルールの説明を選択"
endif
'****************************************************************************************************
'2.WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
init"kb:4"
play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
Help_Select:
bg=0:key$="":y=0:bg2=0
while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
y = stick(1)
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if ex_info$(1)<>"JP" then
'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
case 1:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
case 2:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
case 3:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
end select
endif
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "4.Return to Top Screen":goto Help_Select:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "1.Select Rules for Explain":goto Help_Select:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,19:print "                                        ":locate 1,19:print "2.Display Version":goto Help_Select:
case 3:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,19:print "                                              ":locate 1,19:print "3.References":goto Help_Select:
end select
'************************************************************************************************
'1.WXGAの場合　ここまで (1280 x 800)
'************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
case 3:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
end select
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
else
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y + 120),1,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バージョンの表示を選択":goto Help_Select:
case 1:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y + 220),2,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
case 2:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y + 320),0,0:count = count + 1:beep:pause 200:locate 1,19:gosub Help_Top_ReCheck:color rgb(0,0,0):print "                                      ":locate 1,19:print "4.トップ画面に戻る":goto Help_Select:
case 3:
'****************************
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y + 20),0,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
'****************************
end select
endif
'************************************************************************************************
'1.WXGAの場合　ここまで (1280 x 800)
'************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
case 1:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
case 2:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
case 3:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
end select
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y+320),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Help_Select:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0,0):locate 1,15:print "                                      ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                        ":locate 1,19:print "2.バージョンの表示を選択":goto Help_Select:
case 3:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y+220),2,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
end select
endif
'************************************************************************************************
'1.WXGAの場合　ここから (1280 x 800)
'************************************************************************************************
else
'************************************************************************************************
'WUXG(1920x1200)の時ここから
'************************************************************************************************
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
case 3:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
end select
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
endif
'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
if ((bg = 2) or (key$ = chr$(13))) then
select case No
case 0:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop: 'Suhi_Rule:
case 1:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
case 2:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
'3:Top画面に行く
case 3:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
end select
endif
if (bg2 = 2) then
play "":pause 200
play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
goto Help_Select:
endif
'ルールの説明　トップ画面
Suhi_Rule_explainTop:
'**********************************************************
cls 3:No=0
play ""
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'背景画像
'****************************************************************************************************
Font FONT
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ + "Rule_explain_TopScreen_907x680_20240218.png",0,0,0
else
gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'背景画像
'****************************************************************************************************
if ex_info$(1)<>"JP" then
color rgb(255,255,255)
print chr$(13)+chr$(13)+chr$(13)
print "Please select a number"+chr$(13)
print " :1.How to Kabara" + chr$(13)
print " :2. Explain for BirdseyeGrid" + chr$(13)
print " :3. Return to Top Screen" + chr$(13)
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
'****************************************************************************************************
'Top画面メニュー表示文字　ここから
'****************************************************************************************************
'***************************************************************************************************
'WXGA(1200x800)の時 ここから
'***************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
color rgb(255,255,255)
locate 1,5
print "番号を選んでください"
locate 1,7:    '〇
print " :1.数秘術のやり方"
locate 1,10:   '〇
print " :2.バーズアイグリットの説明"
locate 1,13:    '〇
print " :3.トップ画面に戻る"
'***************************************************************************************************
'WXGA(1200x800)の時 ここまで
'***************************************************************************************************
else
'***************************************************************************************************
'WXGA(1200x800) 以外の時 ここから
'***************************************************************************************************
color rgb(255,255,255)
print chr$(13)+chr$(13)+chr$(13)
print "番号を選んでください"+chr$(13)
print " :1.数秘術のやり方" + chr$(13)
print " :2.バーズアイグリットの説明" + chr$(13)
print " :3.トップ画面に戻る" + chr$(13)
'***************************************************************************************************
'WXGA(1200x800) 以外の時 ここまで
'***************************************************************************************************
'****************************************************************************************************
'Top画面メニュー表示文字　ここまで
'****************************************************************************************************
endif
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
color rgb(0,0,0)
sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
locate 1,15
print "                                  "
if ex_info$(1) <> "JP" then
print "                                  "
print ":1.How to Kabara"
else
if ((size(0) <= 1280) and (size(1) <= 800)) then
if count=0 then
'****************************************************************************************************
'共通部分 WXGA ここから
'****************************************************************************************************
locate 1,19
print ":1.数秘術のやり方"
'****************************************************************************************************
'共通部分 WXGA ここまで
'****************************************************************************************************
endif
else
if count = 0 then
'****************************************************************************************************
'共通部分 WUXGA ここから
'****************************************************************************************************
locate 1,15
print ":1.数秘術のやり方"
'****************************************************************************************************
'共通部分 WUXGA ここまで
'****************************************************************************************************
endif
endif
init "kb:4"
play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
Suhi_Rule_explainTop2:
bg=0:key$="":y=0:bg2=0
while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
y = stick(1)
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if ex_info$(1)<>"JP" then
'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
case 2:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
end select
endif
'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,Y+220),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
case 3:
No=0:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,Y+20),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
end select
endif
else
'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
'*******************************************************************************************************
'WXGA 1200x 800 日本語
'*******************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(x,Y+120),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
case 2:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
end select
endif
'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=2:sp_on 1,0:sp_on 0,0:sp_on 2,1:sp_on 0,0:sp_put 2,(5,Y+220),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                        ":locate 1,19:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
case 2:
No=1:sp_on 1,1:sp_on 1,0:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y+120),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
end select
endif
endif
'*******************************************************************************************************
'WXGA 1200x 800 ここまで 日本語
'*******************************************************************************************************
else
'*******************************************************************************************************
'WXGA 1200x 800 以外　ここから
'*******************************************************************************************************
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
case 1:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
case 2:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
end select
endif
'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
if ((y = -1) or (key$ = chr$(30))) then
select case No
case 0:
No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
case 1:
No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
case 2:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
end select
endif
endif
'******************************************************************************************************
'WXGA 1200x 800 以外　ここまで
'******************************************************************************************************
endif
'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
'*******************************************************************************************************
'決定ボタンを押したときの処理　共通部分　ここから
'********************************************************************************************************
'********************************************************************************************************
'bg:右の丸ボタン　chr$(13):Enter Key
'********************************************************************************************************
if ((bg = 2) or (key$ = chr$(13))) then
select case No
case 0:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule: ' 1.数秘ルールの説明
case 1:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain1: '2.バーズアイグリットの説明
'3:Top画面に行く
case 2:
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen: '3.メイン画面に行く
end select
endif
'********************************************************************************************************
'決定ボタンを押したときの処理　共通部分　ここまで
'*********************************************************************************************************
if (bg2 = 2) then
play "":pause 200
play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
goto Suhi_Rule_explainTop2:
endif
'**********************************************************
'バーズアイグリットの説明1
'Help-
'**********************************************************
BirdsEyeGrid_Explain1:
'●.初期設定
cls 3:Font FONT:No=0:bg=0:key$="":bg2=0
play "":'音を停める
'バーズアイグリット基本チャートを表示　　ここから
if ex_info$(1) <> "JP" then
'英語ファイル
else
if ((size(0)<=1280) and (size(1)<=800)) then
gload Gazo$ + Gazo_WXGA$ + "BirdsEyeGrid_Explain1_Chart_907x680_20240219.png",0,0,0
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
'日本語ファイル
gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
'バーズアイグリット基本チャートを表示　　ここまで
endif
'ジョイパッドの右で次へ行く
while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if (bg=2 or key$=chr$(13)) then
'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
'goto バーズアイグリット説明の2番目に行く
end
endif
if (bg2 = 2 or key$ = "") then
'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
'goto Top画面に行く
goto Main_Screen:
'end
endif
'**********************************************************
'バーズアイグリットの説明2
'Help-
'**********************************************************
BirdsEyeGrid_Explain2:
'●.初期設定
cls 3:Font 48:No = 0:bg = 0:key$ = "":bg2 = 0
play "":'音を停める
'バーズアイグリット基本チャートを表示　　ここから
if ex_info$(1) <> "JP" then
'英語ファイル
else
'日本語ファイル
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "BirdsEyeGrid_Exaple1_Chart_20240202.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'バーズアイグリット基本チャートを表示　　ここまで
endif
'ジョイパッドの右で次へ行く
while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if (bg = 2 or key$ = chr$(13)) then
'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
'goto バーズアイグリット説明の3番目に行く
end
endif
if (bg2 = 2 or key$ = "") then
'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
'goto Top画面に行く
goto Main_Screen:
'end
endif
'**********************************************************
'数秘術占い　トップ画面
Kabara_TopScreen:
cls 3:play ""
if ((size(0)<=1280) and (size(1)<=800)) then
'***********************************************************
'1280x800ここから
'***********************************************************
gload Gazo$ + Gazo_WXGA$ + "Kabara_TopScreen_853x640_20240223.png",0,0,0
'************************************************************
'1280x800ここまで
'************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
play Voice$ + "KabaraTop_Selection_20230721.mp3"
sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
init"kb:4":No=0
if ex_info$(1)<>"JP" then
color rgb(255,255,255)
print chr$(13)+chr$(13)+chr$(13)
print "Please select a number" + chr$(13)
print " :1.Numerology" + chr$(13)
print " :2.Bird's Eye Grid" + chr$(13)
print " :3.Compatibility Divination" + chr$(13)
print " :4.Return to Top Screen" + chr$(13)
color rgb(0,0,0)
locate 1,15:print "1. Select Numerology"
else
if ((size(0)<=1280) and (size(1)<=800)) then
'***************************************************************************************************
'1280 x800 ここから
'***************************************************************************************************
color rgb(255,255,255):font FONT
locate 1,5
print "番号を選んでください" + chr$(13)
locate 1,7
print " :1.数秘術占い" + chr$(13)
locate 1,10
print " :2.バーズアイグリット" + chr$(13)
locate 1,13
print " :3.相性占い" + chr$(13)
locate 1,16
print " :4.トップ画面に戻る" + chr$(13)
color rgb(0,0,0)
locate 1,18:print "1.数秘術占いを選択"
'***************************************************************************************************
'1280 x800 ここまで
'***************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
color rgb(255,255,255):font FONT
print chr$(13)+chr$(13)+chr$(13)
print "番号を選んでください" + chr$(13)
print " :1.数秘術占い" + chr$(13)
print " :2.バーズアイグリット" + chr$(13)
print " :3.相性占い" + chr$(13)
print " :4.トップ画面に戻る" + chr$(13)
color rgb(0,0,0)
locate 1,15:print "1.数秘術占いを選択"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
endif
Kabara_TopScreen2:
y = 0:bg = 0:key$ = "":bg2 = 0
while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
bg2 = strig(0)
pause 200
wend
'選択ボタン
'カーソル下 　と　ジョイパッド　の下
if ex_info$(1)<>"JP" then
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 2:
No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
case 3:
No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
end select
endif
else
if ((size(0) <= 1280) and (size(1) <= 800)) then
'******************************************************************************************************
'1280x800ここから
'*****************************************************************************************************
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 2:
No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                    ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
case 3:
No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0): locate 1,18:print"                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                              ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
end select
endif
'カーソル　上  or  ジョイパッド　上
if ((y=-1) or (key$=chr$(30))) then
select case No
case 0:
No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
case 3:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                       ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
end select
endif
'*****************************************************************************************************
'1280 x800 ここまで
'******************************************************************************************************
else
'******************************************************************************************************
'1920x1280 ここから
'******************************************************************************************************
if ((y = 1) or (key$ = chr$(31))) then
select case No
case 2:
No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
case 3:
No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
end select
endif
'カーソル　上  or  ジョイパッド　上
if ((y=-1) or (key$=chr$(30))) then
select case No
case 0:
No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
case 3:
No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
end select
endif
endif
'******************************************************************************************************
'1920x 1280 ここまで
'******************************************************************************************************
endif
'決定ボタン
'ジョイパッドの右　or  Enter key
if ((bg = 2) or (key$ = chr$(13))) then
select case No
case 0:
'1.数秘術占い
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
case 3:
'4.メイン画面にいく
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
case 1:
'2.バースアイグリッド
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
case 2:
'3.相性占い
sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
end select
endif
if (bg2 = 2) then
play "":pause 200
play Voice$ + "Voice_Kabara_Top_20230621.mp3"
goto Kabara_TopScreen2:
endif
'1.バースアイグリット　名入力
Inputname1:
cls 3:init"kb:4":
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
font 48
bg=0:key$="":y=0:No=-1:name1$="":i=1
gload Gazo$ + "Selection.png",1,10,100
'Line 1:☓
'A:選択肢
sp_def 15,(50,250),16,16
'B:選択肢
sp_def 16,(200,250),16,16
'C:選択肢
sp_def 17,(350,250),16,16
'D:選択肢
sp_def 18,(500,250),16,16
'E:選択肢
sp_def 19,(630,250),16,16
'F:選択肢
sp_def 20,(780,250),16,16
'G:選択肢
sp_def 21,(930,250),16,16
'Line 2:☓
'H:選択肢
sp_def 22,(50,345),16,16
'I:選択肢
sp_def 23,(200,345),16,16
'J:選択肢
sp_def 24,(350,345),16,16
'K:選択肢
sp_def 25,(500,345),16,16
'L:選択肢
sp_def 26,(630,345),16,16
'M:選択肢
sp_def 27,(780,345),16,16
'N:選択肢
sp_def 28,(930,345),16,16
'Line 3:☓
'O:選択肢
sp_def 29,(50,440),16,16
'P:選択肢
sp_def 30,(200,440),16,16
'Q:選択肢
sp_def 31,(350,440),16,16
'R:選択肢
sp_def 32,(500,440),16,16
'S:選択肢
sp_def 33,(630,440),16,16
'T:選択肢
sp_def 34,(780,440),16,16
'U:選択肢
sp_def 35,(930,440),16,16
'Line 4:◯
'V:選択肢
sp_def 36,(50,535),16,16
'W:選択肢
sp_def 37,(200,535),16,16
'X:選択肢
sp_def 38,(350,535),16,16
'Y:選択肢
sp_def 39,(500,535),16,16
'Z:選択肢
sp_def 40,(630,535),16,16
'Ok:選択肢
sp_def 41,(780,535),16,16
'sp_def 42,(930,535),16,16
'Line 1
'A
sp_on 15,0
'B
sp_on 16,0
'C
sp_on 17,0
'D
sp_on 18,0
'E
sp_on 19,0
'F
sp_on 20,0
'G
sp_on 21,0
'Line 1
'Line 2
'H
sp_on 22,0
'I
sp_on 23,0
'J
sp_on 24,0
'K
sp_on 25,0
'L
sp_on 26,0
'M
sp_on 27,0
'N
sp_on 28,0
'Line 2
'Line 3
'O
sp_on 29,0
'P
sp_on 30,0
'Q
sp_on 31,0
'R
sp_on 32,0
'S
sp_on 33,0
'T
sp_on 34,0
'U
sp_on 35,0
'Line 3
'Line 4
'V
sp_on 36,0
'W
sp_on 37,0
'X
sp_on 38,0
'Y
sp_on 39,0
'Z
sp_on 40,0
'Ok
sp_on 41,1
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Line 4
'sp_on 42,1
'Line 1
'sp_put 15,(50,250),0,0
'sp_put 16,(200,250),0,0
'sp_put 17,(350,250),0,0
'sp_put 18,(500,250),0,0
'sp_put 19,(630,250),0,0
'sp_put 20,(780,250),0,0
'sp_put 21,(930,250),0,0
'Line 2
'sp_put 22,(50,345),0,0
'sp_put 23,(200,345),0,0
'sp_put 24,(350,345),0,0
'sp_put 25,(500,345),0,0
'sp_put 26,(630,345),0,0
'sp_put 27,(780,345),0,0
'sp_put 28,(930,345),0,0
'Line 3
'sp_put 29,(50,440),0,0
'sp_put 30,(200,440),0,0
'sp_put 31,(350,440),0,0
'sp_put 32,(500,440),0,0
'sp_put 33,(630,440),0,0
'sp_put 34,(780,440),0,0
'sp_put 35,(930,440),0,0
'Line 4
'sp_put 36,(50,535),0,0
'sp_put 37,(200,535),0,0
'sp_put 38,(350,535),0,0
'sp_put 39,(500,535),0,0
'sp_put 40,(630,535),0,0
sp_put 41,(780,535),0,0
'sp_put 42,(930,536),0,0
gload Gazo$ + "Screen1.png",0,0,0
color rgb(255,255,255)
locate 1,3
print "名前の姓をアルファベットで入力してください"
locate 1,5
print " A  B  C  D  E  F  G"
locate 1,7
print " H  I  J  K  L  M  N"
locate 1,9
print " O  P  Q  R  S  T  U"
locate 1,11
print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
locate 1,15:color rgb(0,0,0)
print "名前の姓:" + name1$
select_name1:
bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
'有効ボタン
'1.決定ボタン(bg:2)
'2.Enter Key$:chr$(13)
'3.カーソル上 (chr$(31))
'4.カーソル　左 (chr$(29))
'5.ジョイパッド　上 (y:1)
'6:ジョイパッド　左 (y2:-1)
'7:ジョイパッド　下 (y:-1)
while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
key$ = inkey$
'ジョイパッドの決定:bg
bg = strig(1)
y = stick(1)
y2 = stick(0)
pause 200
wend
'====================================
'Birds Eye Grid 名前入力
'入力スタイル　アルファベット入力
'sp_on:　スプライトのオンオフ
'sp_put :表示位置
'No:ボタン番号
'====================================
'カーソルで下に行く
if ((y=-1) or (key$=chr$(31))) then
select case No
'1.Ok ボタン
'sp_on スプライトのオンオフ
'sp_put スプライトを表示
case -1:
'1.アルファベット　入力ボタン
'実装未完全なので終了
'Ok → T ○ :No:20=T
No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
'T  → M ○
case 20:
No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
'M  →　F ○
case 13:
No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
'F  → Ok
case 6:
No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
end select
endif
'2.決定ボタン
if ((key$ = chr$(13)) OR  (bg = 2)) then
select case No
case -1:
'スプライトをOFFにする
sp_on 41,0
end select
endif
'3.カーソル　左
if (key$ = chr$(29) or (y2 =-1)) then
select case No
'Line 4
'Line 4
'1.
'Z:-1 :Ok ボタン
'Ok → Z
case -1:
'Ok →　Z
'Ok ボタン OFF,Z Button ON
'No=26:Z
No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
'2.
'26:Zボタン Z→ Y
case 26:
No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
'3.
'25:Yボタン  Y → X
case 25:
No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
'4
'24:Xボタン X → W
case 24:
No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
'23:Wボタン X → W
'5
case 23:
'22:Vボタン W → V
No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
case 22:
'-1:V→ Ok
No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
'Line 3
case 20:
'33:T34  → S:33 :◯
No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
case 19:
'32:S:33 → R:32 :◯
No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
case 18:
'31:R:32 → Q:31 :◯
No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
'30:O → P :◯
case 17:
'30:Q:31 → P:30 :◯
No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
case 16:
'29:P:30 → O:29 :◯
No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
case 15:
'28:O:29 → U:21  :◯
'O:OFF,U:ON
No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
'27:U:21 → T:20  :◯
case 21:
'U:OFF:T:ON
No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
'Line 2
'26:M:13 → L:12 : ○
case 13:
'M:OFF,L:ON
No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
'25:L:12 → K:11 : ○
case 12:
No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
'24:K:11 → J:10 : ○
case 11:
No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
'23:J:10 → I:9  : ○
case 10:
No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
'22:I:9 → H:8    :○
case 9:
No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
'21:H:8 → N:14:   :○
case 8:
No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
'20:N:14 → M:13:   :○
case 14:
No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
'●.Line 1:
'19:F:20 → E:19 : ☓
'F:OFF,E:ON
case 6:
No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
'18:E → D
'E:OFF,D:ON
case 5:
No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
'17:D → C
'D:OFF,C:ON
case 4:
No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
case 3:
No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
case 2:
No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
case 1:
No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
case 7:
No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
end select
endif
'上から下の方向
if ((key$ = chr$(31)) or  (y = 1)) then
select case No
'●.1
'1:A→H
case 1:
No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
'2:H→O
case 8:
No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
'3:O→V
case 15:
No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
'4:V→A
case 22:
No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
'●.2
'5.B→I
case 2:
No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
'6.I→P
case 9:
No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
'7.P→W
case 16:
No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
'8.W→B
case 23:
No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
'●.3
'9.C→J
case 3:
No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
'10.J→Q
case 10:
No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
'11.Q→X
case 17:
No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
'12.X→C
case 24:
No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
'●.4
'13.D→K
case 4:
No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
'14.K→R
case 11:
No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
'15.R→Y
case 18:
No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
'16.Y→D
case 25:
No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
'●.5
'17.E→L
case 5:
No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
'18.L→S
case 12:
No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
'19.S→Z
case 19:
No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
'20.Z→E
case 26:
No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
'●.6
'21.F→M
case 6:
No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
'22.M→T
case 13:
No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
'23.T→Ok
case 20:
No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
'24.Ok→F
case -1:
No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
'●.7
'25.G→N
case 7:
No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
'26.N→U
case 14:
No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
'27.U→G
case 21:
No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
end select
endif
'決定ボタン　で名前の姓に文字を追加。
if (key$ = chr$(13) or bg = 2) then
select case No
'Okボタン
case -1:
goto Inputname2:
'Aの文字
case 1:
'if len(n$)=0 then
n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
'else
'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
'endif
goto select_name1:
case 2:
n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
end select
endif
Input_name1_Birdseye:
cls 3:init "kb:2":play ""
gload Gazo$ + "Input_Birtheye2.png",0,0,0
if ex_info$(1)<>"JP" then
play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
color rgb(0,0,255)
locate 1,2:print "Please enter your name in English"
color rgb(0,0,0)
locate 1,5:Input "Name (Surname):",name1$
else
'****************************************************************************************************
'共通部分　ここから
'****************************************************************************************************
play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
color rgb(0,0,255)
locate 1,2:print "名前をアルファベットで入れてください"
color rgb(0,0,0)
locate 1,5:Input "名前（姓の部分）:",name1$
'****************************************************************************************************
'共通部分　ここまで
'****************************************************************************************************
endif
'27.U→G
'locate 1,5:print "Hit any key"
n1 = len(name1$)
if (n1 < 11) then
for i=1 to n1
buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
next i
endif
goto Inputname2:
'2.グリッドアイ　姓の入力
'end
Inputname2:
cls 3:init"kb:2":font 48:play ""
gload Gazo$ + "Input_Birtheye1.png",0,0,0
if ex_info$(1)<>"JP" then
play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
color rgb(0,0,255)
locate 1,2:print "Please enter your name in English"
color rgb(0,0,0)
locate 1,5:Input "Name (First name):",name2$
n2 = len(name2$)
for i=1 to n2
buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
next i
else
'****************************************************************************************************
'共通部分　ここから
'****************************************************************************************************
play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
color rgb(0,0,255)
locate 1,2:print "名前をアルファベットで入れてください"
color rgb(0,0,0)
locate 1,5:Input "名前(名の部分):",name2$
n2 = len(name2$)
for i=1 to n2
buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
next i
'****************************************************************************************************
'共通部分　ここまで
'****************************************************************************************************
endif
'****************************************************************************************************
'計算領域　ここから
'****************************************************************************************************
Complate:
'name1
for i=0 to 25
for n=1 to len(name1$)
if (buf_chart$(i,0) = buf_name1$(n-1)) then
b = val(buf_chart$(i,1))
buffer(b-1) = buffer(b-1) + 1
endif
next n
next i
'name2
for i=0 to 25
for n=1 to len(name2$)
if (buf_chart$(i,0) = buf_name2$(n-1)) then
c = val(buf_chart$(i,1))
buffer(c - 1) = buffer(c - 1) + 1
endif
next n
next i
'****************************************************************************************************
'計算領域 ここまで
'****************************************************************************************************
'****************************************************************************************************
'結果表示領域
'****************************************************************************************************
Result_Birtheye1:
cls 3:init"kb:4":No=0:play "":'音を止める
'****************************************************************************************************
'1280x800　ここから
'****************************************************************************************************
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x640_20240223.png",0,0,0
'****************************************************************************************************
'1280x800　ここまで
'****************************************************************************************************
else
'****************************************************************************************************
'1920x1280　ここから
'****************************************************************************************************
gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'1920x1280　ここまで
'****************************************************************************************************
endif
play Voice$ + "Result_Birdseyegrid_20231120.mp3"
color rgb(255,255,255)
'1の表示
locate 3,14:print buffer(0);
'2の表示
locate 3,9:print buffer(1);
'3の表示
locate 3,5:print buffer(2);
'4の表示
locate 10,14:print buffer(3);
'5の表示
locate 10,9:print buffer(4);
'6の表示
locate 10,5:print buffer(5);
'7の表示
locate 15,14:print buffer(6);
'8の表示
locate 15,9:print buffer(7);
'9の表示
locate 15,5:print buffer(8);
'name を大文字に変換
locate 5,3:print ucase$(name1$ + name2$)
color rgb(0,0,0)
'bg:右のボタン  ,bg2:左のボタン
if ex_info$(1)<>"JP" then
color rgb(255,255,255)
print "Left circle: Main Screen, Right circle: Open Menu"
else
locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
endif
bg=0:key$="":bg2=0
while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
'Enterと決定ボタン
key$ = inkey$
'右ボタン:1
bg = strig(1)
'左の丸ボタン:0
bg2=strig(0)
pause 200
wend
if ((bg=2) or (key$=chr$(13))) then
'データーをクリアしてトップ画面に行く
'for i=0 to 8
'buffer(i)=0
'next i
'for n=0 to 9
'buf_name1$(n) = ""
'buf_name2$(n) = ""
'next n
'Topに行く
'goto Main_Screen:
'メニューを開く
'goto BirdsEye_Result2:
'Menu(ui_select) リストに飛ぶ
goto Result_Birtheye_List1:
endif
if (bg2=2) then
'データーをクリアする
for i=0 to 8
buffer(i)=0
next i
for n=0 to 9
buf_name1$(n)=""
buf_name2$(n)=""
next n
goto Main_Screen:
endif
'goto Result_Birtheye1:
'Result_Birtheye2:
'cls 3:color rgb(255,255,255)
'end
'Memory 消去
'****************************************************************************************************
'結果表示領域　ここまで
'****************************************************************************************************
'横のフォーカスライン
BirdsEye_Result2:
cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
Forcus1_buffer$(2)="○"
else
Forcus1_buffer$(2)="☓"
endif
if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
Forcus1_buffer$(1)="○"
else
Forcus1_buffer$(1) = "☓"
endif
if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
Forcus1_buffer$(0)="○"
else
Forcus1_buffer$(0)="☓"
endif
gload Gazo$ + "Screen1.png",0,0,0
if ex_info$(1)<>"JP" then
color rgb(255,0,0):
locate 1,1
print "Bird's Eye Grid (Focus Line 1)"
color rgb(255,255,255)
locate 1,3:
print "●. Horizontal Focus Line"
locate 1,5
print "1. Sharp Line:"+Forcus1_buffer$(2)
locate 1,7
print "2. Mediator Line:"+Forcus1_buffer$(1)
locate 1,9
print "3. Steady Line:"+Forcus1_buffer$(0)
color rgb(0,0,0)
locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
else
color rgb(255,0,0):
locate 1,1
print "バーズアイグリッド(フォーカスライン1)"
color rgb(255,255,255)
locate 1,3:
print "●.横のフォーカスライン"
locate 1,5
print "1.切れ者ライン:"+Forcus1_buffer$(2)
locate 1,7
print "2.調停者ライン:"+Forcus1_buffer$(1)
locate 1,9
print "3.しっかり者ライン:"+Forcus1_buffer$(0)
color rgb(0,0,0)
locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
endif
while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if ((bg=2) or (key$=chr$(13))) then
goto BirdsEye_Result3:
endif
if (bg2=2) then
for i=0 to 8
buffer(i)=0
next i
goto Main_Screen:
endif
BirdsEye_Result3:
cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
Forcus2_buffer$(2)="○"
else
Forcus2_buffer$(2)="☓"
endif
if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
Forcus2_buffer$(1)="○"
else
Forcus2_buffer$(1) = "☓"
endif
if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
Forcus2_buffer$(0)="○"
else
Forcus2_buffer$(0)="☓"
endif
gload Gazo$ + "Screen1.png",0,0,0
if ex_info$(1)<>"JP" then
color rgb(255,0,0):
locate 1,1
print "Bird's Eye Grid (Focus Line 2)"
color rgb(255,255,255)
locate 1,3
print "●. Vertical Focus Line"
locate 1,5
print "1. Expresser Line:" + Forcus2_buffer$(2)
locate 1,7
print "2. Commander Line:" + Forcus2_buffer$(1)
locate 1,9
print "3. Leader Line:" + Forcus2_buffer$(0)
color rgb(0,0,0)
locate 0,15:print "Right circle: Next, Left circle: Retest "
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
color rgb(255,0,0):
locate 1,1
print "バーズアイグリッド(フォーカスライン2)"
color rgb(255,255,255)
locate 1,3
print "●.縦のフォーカスライン"
locate 1,5
print "1.表現者ライン:" + Forcus2_buffer$(2)
locate 1,7
print "2.司令塔ライン:" + Forcus2_buffer$(1)
locate 1,9
print "3.指導者ライン:" + Forcus2_buffer$(0)
color rgb(0,0,0)
locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
endif
while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then
goto BirdsEye_Result4:
endif
if (bg2=2) then
for i=0 to 8
buffer(i)=0
next i
goto Main_Screen:
endif
BirdsEye_Result4:
cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
Forcus3_buffer$(1) = "○"
else
Forcus3_buffer$(1) = "☓"
endif
if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
Forcus3_buffer$(0) = "○"
else
Forcus3_buffer$(0) = "☓"
endif
gload Gazo$ + "Screen1.png",0,0,0
if ex_info$(1)<>"JP" then
color rgb(255,0,0):
locate 1,1
print "Bird's Eye Grid (Focus Line 3)"
color rgb(255,255,255)
locate 1,3:
print "●. Diagonal Focus Line"
locate 1,5
print "1. Success Line:"+Forcus3_buffer$(1)
locate 1,7
print "2. Celebrity Line:"+Forcus3_buffer$(0)
color rgb(0,0,0)
locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
color rgb(255,0,0):
locate 1,1
print "バーズアイグリッド(フォーカスライン3)"
color rgb(255,255,255)
locate 1,3:
print "●.斜めのフォーカスライン"
locate 1,5
print "1.成功者ライン:"+Forcus3_buffer$(1)
locate 1,7
print "2.セレブライン:"+Forcus3_buffer$(0)
color rgb(0,0,0)
locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
'*************************************************************************************************
'WUXG(1920x1200)の時ここまで
'*************************************************************************************************
endif
while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if ((bg=2) or (key$=chr$(13))) then
goto Result_Birtheye1:
endif
if (bg2=2) then
'データークリア
for i=0 to 8
buffer(i) = 0
next i
goto Main_Screen:
endif
References1:
cls 3:key$ = "":bg = 0:play "":
font 48-8
if ((size(0) <= 1280) and (size(1) <= 800)) then
gload Gazo$ + Gazo_WXGA$ +  "Reference1_864x640_20240219.png",0,0,0
else
gload Gazo$ + "Reference1_20230703.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
endif
if ex_info$(1)<>"JP" then
print chr$(13)+chr$(13)+chr$(13)
color rgb(0,0,255)
print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
print "・Author: Carol Adrienne, Ph.D" + chr$(13)
print "・Publisher: Gento-sha" + chr$(13)
print "・Website: www.carolAdrienne.jp/" + chr$(13)
print "・ISBN: 978-4-344-01394-0" + chr$(13)
print "・Price: 1500 yen + tax" + chr$(13)
color rgb(255,255,255)
locate 1,18
print "Right joystick: Next"
else
'****************************************************************************************************
'(1200x800)の時ここから
'****************************************************************************************************
if ((size(0)<=1280) and (size(1)<=800)) then
font FONT
color rgb(0,0,255)
locate 1,5:
print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
locate 1,7:
print "・Author:carol Adrinne,PhD"+chr$(13)
locate 1,9:
print "・出版社:幻冬舎" + chr$(13)
locate 1,11:
print "・HP:www.carolAdrienne.jp/"+chr$(13)
locate 1,13:
print "・ISBN:978-4-344-01394-0"+chr$(13)
locate 1,15
print "・定価:1500円 + 税"+chr$(13)
color rgb(255,255,255)
locate 1,18
print "ジョイパッド右：次へ"
'****************************************************************************************************
'(1200x800)の時ここまで
'****************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
font FONT
print chr$(13)+chr$(13)+chr$(13)
color rgb(0,0,255)
print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
print "・Author:carol Adrinne,PhD"+chr$(13)
print "・出版社:幻冬舎" + chr$(13)
print "・HP:www.carolAdrienne.jp/"+chr$(13)
print "・ISBN:978-4-344-01394-0"+chr$(13)
print "・定価:1500円 + 税"+chr$(13)
color rgb(255,255,255)
locate 1,18
print "ジョイパッド右：次へ"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
endif
while (key$ <> chr$(13) and bg <> 2)
bg = strig(1)
key$ = inkey$
pause 200
wend
'
if ((bg = 2) or (key$ = chr$(13))) then
pause 200:goto References2:
endif
'ユダヤの秘儀 カバラ大占術
References2:
cls 3:play "":bg = 0:key$ = ""
if ((size(0)<=1280) and (size(1)<=800)) then
gload Gazo$ + Gazo_WXGA$ +  "Reference2_864x640_20240219.png",0,0,0
else
gload Gazo$ + "Reference2_20230703.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
endif
'参考文献２
'カバラ大占術
if ex_info$(1)<>"JP" then
print chr$(13) + chr$(13) + chr$(13)
color  rgb(0,0,255):font 48-8
locate 1,3
print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
print "・Author: Hironari Asano" + chr$(13)
print "・Publisher: NON BOOK" + chr$(13)
print "・ISBN: 4-396-10364-6" + chr$(13)
print "・Price: 829 yen + tax"
color rgb(255,255,255)
locate 1,18
print "Right joystick: Return to top"
else
'****************************************************************************************************
'(1200x800)の時 ここから
'****************************************************************************************************
if ((size(0)<=1280) and (size(1)<=800)) then
font FONT
color  rgb(0,0,255):
locate 1,5:print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
locate 1,7:print "・著者：浅野 八郎" + chr$(13)
locate 1,9:print "・出版社:NON BOOK" + chr$(13)
locate 1,11:print "・ISBN:4-396-10364-6" + chr$(13)
locate 1,13:print "・定価:829円 + 税"
color rgb(255,255,255)
locate 1,18
print "ジョイパッド右：トップへ行く"
'****************************************************************************************************
'(1200x800)の時 ここまで
'****************************************************************************************************
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
color  rgb(0,0,255):font FONT
print chr$(13) + chr$(13) + chr$(13)
locate 1,3
print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
print "・著者：浅野　八郎" + chr$(13)
print "・出版社:NON BOOK" + chr$(13)
print "・ISBN:4-396-10364-6" + chr$(13)
print "・定価:829円 + 税"
color rgb(255,255,255)
locate 1,18
print "ジョイパッド右：トップへ行く"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
endif
while ((key$ <> chr$(13)) and (bg <> 2))
bg = strig(1)
key$ = inkey$
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then
pause 200:goto Main_Screen:
endif
end
'1.数秘術　トップ画面
Kabara_First_Top:
cls 3:color rgb(255,255,255):play ""
gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
No=0:init"kb:4"
Play Voice$ + "KabaraTop_Selection_20230721.mp3"
if ex_info$(1)<>"JP" then
print chr$(13);chr$(13)
color rgb(255,255,255)
locate 3,4:No=0
print "Please select a number" + chr$(13)
print " :1. Numerology" + chr$(13)
print " :2. Return to the top screen" + chr$(13)
color rgb(0,0,0)
sp_on 0,1
locate 1,15:print "1. Select Numerology"
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
print chr$(13);chr$(13)
color rgb(255,255,255)
locate 3,4:No=0
print "番号選んでください" + chr$(13)
print " :1.数秘術占い" + chr$(13)
print " :2.トップ画面に戻る" + chr$(13)
color rgb(0,0,0)
sp_on 0,1
locate 1,15:print "1.数秘術番号を求めるを選択"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
'KeyBord:true
'Joy Pad:true
'上、下:true
'
'ｂｇ：決定ボタン
'カーソル　上
'カーソル　下
Kabara_First_Top2:
key$ = "":bg = 0:y = 0:
while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
key$ = inkey$
bg = strig(1)
y = stick(1)
'PauseでCPUを休める
pause 5
wend
'1.カーソル　下 処理 chr$(31)
'カーソル　下
if ex_info$(1) <> "JP" then
if ((key$ = chr$(31)) or (y = 1)) then
select case No
'
case 1:
No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
'case 2:
'       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
end select
endif
else
if ((key$ = chr$(31)) or (y = 1)) then
select case No
'
case 1:
No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
'case 2:
'       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
end select
endif
'2.カーソル　上 処理 chr$(30)
if ((key$ = chr$(30)) or (y = -1)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
case 1:
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
'case 2:
'      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
end select
endif
endif
'3.決定 処理  bg:2 or Enter key:chr$(13)
if ((bg = 2) or (key$ = chr$(13))) then
select case No
case 0:
sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
goto Kabara_TopScreen:
'case 1:
'    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
case 1:
sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
end select
endif
'
'Kabara 相性占い トップ画面
Kabara_Aishou_Top:
cls 3:y=0:key$="":bg=0:No=0
play ""
gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
if ex_info$(1)<>"JP" then
play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
print chr$(13) + chr$(13)
locate 0,4:color rgb(255,255,255)
print "Please select a number" + chr$(13)
print " :1. Compatibility fortune-telling ...." + chr$(13)
print " :2. Business compatibility fortune-telling" + chr$(13)
print " :3. Return to the top screen" + chr$(13)
sp_on 0,1:sp_on 1,0:sp_on 2,0
color rgb(0,0,0)
locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
else
play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
print chr$(13) + chr$(13)
locate 0,4:color rgb(255,255,255)
'print "Ok"
'
print "番号を選んでください" + chr$(13)
print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
print " :2.ビジネスの相性占い" + chr$(13)
print " :3.トップ画面に戻る" + chr$(13)
sp_on 0,1:sp_on 1,0:sp_on 2,0
color rgb(0,0,0)
locate 1,15:print "1.男女2人の相性占いを選択"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
Kabara_Aishou_Top2:
key$ = "":y = 0:bg = 0:
while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
'ジョイパッド(右) ,十字キー (上下)
'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
y = stick(1)
key$ = inkey$
bg = strig(1)
pause 200
wend
'カーソル　下 or 十字キー　下
if ex_info$(1)<>"JP" then
if ((key$ = chr$(31)) or (y = 1)) then
select case No
'Option change 1 - 2
'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
'ok
case 0:
No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
'Option change 2 - 3
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
'Release time case 2 comment release
case 2:
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
if ((key$ = chr$(30)) or (y = -1)) then
select case No
case 0:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
else
if ((key$ = chr$(31)) or (y = 1)) then
select case No
'選択肢　1 - 2に変更
'case 0 1.男女の相性占い => 2.ビジネスの相性占い
'ok
case 0:
No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
'選択肢　2 - 3に変更
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
'リリース時 case 2コメント解除
case 2:
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
'十字キー　上　、カーソル　上
if ((key$ = chr$(30)) or (y = -1)) then
select case No
case 0:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
endif
'十字キー　上下:選択
'ジョイパッド 右:決定
if ((bg = 2) or (key$ = chr$(13))) then
select case No
'1.男女の相性
case 0:
'男女の相性占い(未実装)トップ画面に飛ぶ
cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
'2ビジネスの相性
case 1:
cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
case 2:
sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
end select
endif
'0.男女の相性　トップ画面　ここから
Danjyo_Aisyou_Top:
cls 3:y=0:key$="":bg=0:No=0
play ""
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
if ex_info$(1)<>"JP" then
print chr$(13) + chr$(13)
locate 0,4:color rgb(255,255,255)
print "Please select a number" + chr$(13)
print " :1. Compatibility with a person of ...." + chr$(13)
print " :2. Compatibility between two people" + chr$(13)
print " :3. Return to the top screen" + chr$(13)
sp_on 0,1:sp_on 1,0:sp_on 2,0
color rgb(0,0,0)
locate 1,15:print "1. Compatibility with a person of ...."
else
print chr$(13) + chr$(13)
locate 0,4:color rgb(255,255,255)
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
print "番号を選んでください" + chr$(13)
print " :1.自分と異性の相性(未実装)" + chr$(13)
print " :2.男女2人の相性" + chr$(13)
print " :3.トップ画面に戻る" + chr$(13)
sp_on 0,1:sp_on 1,0:sp_on 2,0
color rgb(0,0,0)
locate 1,15:print "1.自分と異性の相性(未実装)を選択"
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
Danjyo_Aisyou_Top2:
key$ = "":y = 0:bg = 0:
while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
'ジョイパッド(右) ,十字キー (上下)
'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
y = stick(1)
key$ = inkey$
bg = strig(1)
pause 200
wend
if ex_info$(1)<>"JP" then
'Cursor down or arrow key down
if ((key$ = chr$(31)) or (y = 1)) then
select case No
'Option 1 - 2 change
'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
'ok
case 0:
No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
'Option 2 - 3 change
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
'Release time case 2 comment release
case 2:
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
'Arrow key up, cursor up
if ((key$ = chr$(30)) or (y = -1)) then
select case No
case 0:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
else
'カーソル　下 or 十字キー　下
if ((key$ = chr$(31)) or (y = 1)) then
select case No
'選択肢　1 - 2に変更
'case 0 1.男女の相性占い => 2.ビジネスの相性占い
'ok
case 0:
No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
'選択肢　2 - 3に変更
case 1:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
'リリース時 case 2コメント解除
case 2:
No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
'十字キー　上　、カーソル　上
if ((key$ = chr$(30)) or (y = -1)) then
select case No
case 0:
No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
case 2:
No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
case else:
goto Kabara_Aishou_Top2:
end select
endif
endif
end
'十字キー　上下:選択
'ジョイパッド 右:決定
if ((bg = 2) or (key$ = chr$(13))) then
select case No
'1.自分と異性の相性
case 0:
'未実装
cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
'2男女の相性 男性の名前入力に飛ぶ
case 1:
cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
case 2:
sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
end select
endif
'0.男女の相性　トップ画面　ここまで
'1.男女の相性 ここから
'1-1.男性の名前を入力
Danjyo_Aisyou_Input_Name_male:
No=0:color RGB(255,255,255)
'入力:キーボード
cls 3:init "kb:2"
gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
for i=0 to 3
buf_male_year(i)=0
next i
if ex_info$(1)<>"JP" then
play "":color rgb(255,0,0):male_name$ = ""
locate 0,1
print "Male Compatibility" + chr$(13) + chr$(13)
color rgb(255,255,255):
locate 0,3
print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
locate 0,15:color rgb(0,0,0)
Input "Man's Name:",male_name$
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
play "":color rgb(255,0,0):male_name$ = ""
locate 0,1
print "男性の相性" + chr$(13) + chr$(13)
color rgb(255,255,255):
locate 0,3
print "男性の相性を求めます。男性の名前を" + chr$(13)
print "入れてください" + chr$(13)
locate 0,15:color rgb(0,0,0)
Input "男性の名前:",male_name$
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
'-------------------------------------------
'1-2:男性の生まれた年代
Danjyo_Aisyou_Input_Born_Year:
No=0:color RGB(255,255,255)
cls 3:init "kb:4"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
play "":color rgb(255,0,0)
'-------------------------------------------
font 48
if ex_info$(1)<>"JP" then
locate 0,1
color rgb(255,255,255)
print "Please enter the man's birth year" + chr$(13)
color rgb(255,255,255)
locate 1,3
print "Man's Birth Year (4 digits):";buf_male_year$
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
locate 0,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "男性の生まれた年代を入れて下さい" + chr$(13)
color rgb(255,255,255)
locate 1,3
print "男性の生まれた年代(西暦4桁):";buf_male_year$
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
endif
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
locate 4,6
print ":7  :8  :9" + chr$(13)
color rgb(255,255,255)
locate 4,8
print ":4  :5  :6" + chr$(13)
color rgb(255,255,255)
locate 4,10
print ":1  :2  :3" + chr$(13)
locate 4,12
print "    :0"
locate 12,12
color rgb(0,0,255)
print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
'-------------------------------------------------------------------------------------
Danjyo_Aisyou_Input_Male_Born_Year2:
key$="":bg=0:y=0:y2=0:bg2=0:
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2=strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 8:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 4:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 3:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 9:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
case 6:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'==============================
'ここから
'==============================
if ((bg = 2) or (key$ = chr$(13))) then
select case count
case 0:
count = 1
if (No = -1) then
count = 0:No=0
buf_male_year(0) = No
'Okボタンを押したとき
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
'Okボタン以外が押されたとき
if (No >= 1 and No <= 2) then
buf_year$="":buf_year$ = str$(No) + "***"
buf_year = No:a= No
buf_Jyoushi_Born_Day(0) = No
if ex_info$(1)<>"JP" then
locate 1,3
color rgb(255,255,255)
print "Year of birth of the male (4 digits AD):";buf_year$
else
count=0
ui_msg"The number is out of range."
endif
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
locate 1,3
color rgb(255,255,255)
print "男性の生まれた年代(西暦4桁):";buf_year$
goto Danjyo_Aisyou_Input_Male_Born_Year2:
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
else
count=0
ui_msg"数字が範囲外になります。"
endif
buf_year$="":buf_year=0
goto Danjyo_Aisyou_Input_Male_Born_Year2:
endif
'endif
case 1:
count = 2
if (No = -1) then
count = 1
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
buf_year = a * 10 + No
b=buf_year
buf_year$ = str$(buf_year) + "**"
buf_male_year(0)=buf_year
locate 1,3
color rgb(255,255,255)
print "                                                                "
locate 1,3
print "男性の生まれた年代(西暦4桁):" + buf_year$
'if (No = -1) then
'count=1
goto Danjyo_Aisyou_Input_Male_Born_Year2:
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
case 2:
count=3
if (No=-1) then
count =2
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
buf_year = b * 10 + No
c=buf_year
buf_year$ = str$(buf_year) + "*"
buf_male_year(0) = buf_year
locate 1,3
color rgb(255,255,255)
print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
if ex_info$(1)<>"JP" then
locate 1,3
print "Year of birth of the male (4 digits AD):";buf_year$
else
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
locate 1,3
print "男性の生まれた年代(西暦4桁):";buf_year$
goto Danjyo_Aisyou_Input_Male_Born_Year2:
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
endif
endif
case 3:
count=4
if (No = -1) then
No=0
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
buf_year = c * 10 + No
buf_year$ = str$(buf_year)
buf_male_year(0) = buf_year
if ex_info$(1)<>"JP" then
locate 1,3
color RGB(255,255,255)
print "                                      "
locate 1,3
print "Year of birth of the male (4 digits AD):";buf_year$
else
locate 1,3
color RGB(255,255,255)
print "                                      "
locate 1,3
print "男性の生まれた年代(西暦4桁):";buf_year$
endif
buf_year=val(buf_year$)
'year=val(buf_year$)
'if (No=-1) then
'goto Input_Born_Month:
'else
goto Danjyo_Aisyou_Input_Male_Born_Year2:
endif
case 4:
'bufyear=buf_year
if (No=-1) then
buf_year = val(buf_year$)
buf_male_year(0)=buf_year
sp_on 14,0:No=0
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
goto Danjyo_Aisyou_Input_Male_Born_Year2:
endif
end select
endif
'===========================
'ここまでを部下のところにコピーする.
'===========================
if (bg2 = 2) then
select case count2
case 0:
if (No = -1) then
buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
count=0
if ex_info$(1)<>"JP" then
locate 1,3
color rgb(255,255,255)
print "                                      "
locate 1,3
print "Year of birth of the male (4 digits AD):" + buf_male_year$
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
'(buf_year=0) then
buf_male_year=0:buf_male_year$="****"
locate 1,3
print "                                       "
locate 1,3
print "Year of birth of the male (4 digits AD):"+buf_male_year$
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
locate 1,3
color rgb(255,255,255)
print "                                      "
locate 1,3
print "男性の生まれた年代（西暦4桁):" + buf_male_year$
goto Danjyo_Aisyou_Input_Male_Born_Year2:
else
'(buf_year=0) then
buf_male_year=0:buf_male_year$="****"
locate 1,3
print "                                       "
locate 1,3
print "男性の生まれた年代(西暦4桁):"+buf_male_year$
goto Danjyo_Aisyou_Input_Male_Born_Year2:
endif
endif
end select
endif
'-------生まれた年代　男性-------------
'-------生まれた月　男性-------------
'1-2:男性の生まれた月
Danjyo_Aisyou_Input_Male_Born_Month:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
for i=0 to 1
buf_male_month(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
font 48
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "男性の生まれた月を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "男性の生まれた月(1月~12月):"+buf_male_Month$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
locate 4,6
'文字色:赤
print ":7  :8  :9" + chr$(13)
color rgb(255,255,255)
locate 4,8
print ":4  :5  :6" + chr$(13)
color rgb(255,255,255)
locate 4,10
print ":1  :2  :3" + chr$(13)
locate 4,12
print "    :0"
locate 12,12
color rgb(0,0,255)
print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
'----------------------------------------------------------------------------------------
Danjyo_Aisyou_Input_Male_Born_Month2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 8:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 4:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 3:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 9:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 6:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタン + Enter key 決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
if (No=-1) then No=0
count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
if (buf_male_month > 1 and buf_male_month < 10)  then
buf_male_Month$ = str$(buf_male_month)
'buf_month=No
endif
if (buf_male_month = 1)  then
buf_male_Month$ = str$(buf_male_month) + "*"
'c=buf_month
endif
locate 1,3
print "                                     "
color RGB(255,255,255)
locate 1,3
print "男性の生まれた月(1月~12月):" + buf_male_Month$
goto Danjyo_Aisyou_Input_Male_Born_Month2:
case 1:
count = 2:
'c = val(buf_Month$)
if (No = -1) then
'count=0
No=0
month=buf_male_month
buf_male_month=val(buf_male_Month$)
month=buf_male_month
buf_Jyoushi_Born_Day(1)=month
'生まれた日に飛ぶ
goto Danjyo_Aisyou_Input_Male_Born_Day:
else
buf_male_month = c*10 + No
'if (buf_month = 1) then
'buf_Month$ = str$(buf_month)
'endif
buf_male_Month$ = str$(buf_male_month)
buf_Jyoushi_Born_Day(1) = buf_male_month
locate 0,3
print "                                           "
locate 1,3
color Rgb(255,255,255)
print "男性の生まれた月(1月~12月):" + buf_male_Month$
goto Danjyo_Aisyou_Input_Male_Born_Month2:
endif
case 2:
'==================================
'何もしない
'coun = 2
'==================================
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'goto Jyoushi_Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
No=0
goto Danjyo_Aisyou_Input_Male_Born_Day:
else
goto Danjyo_Aisyou_Input_Male_Born_Day2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_male_month=0:buf_male_Month$="**"
count=0
'goto rewrite2:
else
if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
buf_male_month = 0:buf_male_Month$ = "**"
locate 0,3
color rgb(255,255,255)
print "                                       "
goto rewrite2:
if (No>12) then
ui_msg"値が範囲外です。"
goto rewrite2:
endif
endif
endif
rewrite2:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "男性の生まれた月(1月~12月):"+buf_male_Month$
goto Danjyo_Aisyou_Input_Male_Born_Month2:
end select
'endif
endif
end
'-------生まれた月　男性 ここまで-------------
'-------生まれた日　男性 ここから-------------
Danjyo_Aisyou_Input_Male_Born_Day:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
for i=0 to 1
buf_day(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "男性の生まれた日を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "男性の生まれた日(1月~31月):" + buf_Day$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
locate 4,6
'文字色:赤
print ":7  :8  :9" + chr$(13)
color rgb(255,255,255)
locate 4,8
print ":4  :5  :6" + chr$(13)
color rgb(255,255,255)
locate 4,10
print ":1  :2  :3" + chr$(13)
locate 4,12
print "    :0"
locate 12,12
color rgb(0,0,255)
print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
'-------------------------------------------------
Danjyo_Aisyou_Input_Male_Born_Day2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 8:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 4:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 3:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 9:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 6:
pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタン + Enter key 決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
if (No=-1) then No=0
count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
if (buf_male_day > 1 and buf_male_day < 10)  then
buf_male_Day$ = str$(buf_male_day)
'buf_month=No
endif
if (buf_male_day = 1)  then
buf_male_Day$ = str$(buf_male_day) + "*"
'c=buf_month
endif
locate 1,3
print "                                     "
color RGB(255,255,255)
locate 1,3
print "男性の生まれた日(1月~31月):" + buf_male_Day$
goto Danjyo_Aisyou_Input_Male_Born_Day2:
case 1:
count = 2:
'c = val(buf_Month$)
if (No = -1) then
'count=0
No=0
day=buf_male_Day
buf_male_Day=val(buf_male_Day$)
day=buf_male_Day
buf_Jyoushi_Born_Day(2)=day
'生まれた日に飛ぶ
goto Danjyo_Aisyou_Input_Male_Born_Day:
else
buf_male_Day = c*10 + No
'if (buf_month = 1) then
'buf_Month$ = str$(buf_month)
'endif
buf_male_Day$ = str$(buf_male_Day)
buf_male_Born_Day(2) = buf_male_Day:
locate 0,3
print "                                           "
locate 1,3
color Rgb(255,255,255)
print "男性の生まれた月(1月~12月):" + buf_male_Day$
goto Danjyo_Aisyou_Input_Male_Born_Day2:
endif
case 2:
'==================================
'何もしない
'coun = 2
'==================================
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'goto Jyoushi_Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
No=0
goto Danjyo_Aisyou_Input_Male_Born_Day:
else
goto Danjyo_Aisyou_Input_Male_Born_Day2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_male_day=0:buf_male_Day$="**"
count=0
'goto rewrite2:
else
if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
buf_male_day = 0:buf_male_Day$ = "**"
locate 0,3
color rgb(255,255,255)
print "                                       "
goto rewrite2:
if (No>12) then
ui_msg"値が範囲外です。"
goto rewrite2:
endif
endif
endif
rewrite2:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "男性の生まれた日(1月~31月):"+buf_male_Day$
goto Danjyo_Aisyou_Input_Male_Born_Day2:
end select
'endif
endif
end
'-------生まれた日　女性　ここまで-------------
'1-1.女性の名前を入力
Danjyo_Aisyou_Input_Name_female:
No=0:color RGB(255,255,255)
'入力:キーボード
cls 3:init "kb:2"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
play "":color rgb(255,0,0):female_name$ = ""
locate 0,1
print "女性の相性" + chr$(13) + chr$(13)
color rgb(255,255,255):
locate 0,3
print "女性の相性を求めます。男性の名前を" + chr$(13)
print "入れてください" + chr$(13)
locate 0,15:color rgb(0,0,0)
Input "女性の名前:",female_name$
'-------------------------------------------
'-------生まれた年代　女性 ここから-------------
Danjyo_Aisyou_Input_feMale_Born_Year:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
for i=0 to 1
buf_day(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
font 48
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "女性の生まれた年代を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
locate 4,6
'文字色:赤
print ":7  :8  :9" + chr$(13)
color rgb(255,255,255)
locate 4,8
print ":4  :5  :6" + chr$(13)
color rgb(255,255,255)
locate 4,10
print ":1  :2  :3" + chr$(13)
locate 4,12
print "    :0"
locate 12,12
color rgb(0,0,255)
print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
'---------------------------------------------
Danjyo_Aisyou_Input_feMale_Born_Year2:
key$="":bg=0:y=0:y2=0:bg2=0:
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2=strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 8:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 4:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 3:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 9:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
case 6:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'==============================
'ここから
'==============================
if ((bg = 2) or (key$ = chr$(13))) then
select case count
case 0:
count = 1
if (No = -1) then
count = 0:No=0
buf_feMale_Born_Day(0) = No
'Okボタンを押したとき
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
'Okボタン以外が押されたとき
if (No >= 1 and No <= 2) then
buf_female_year$="":buf_female_year$ = str$(No) + "***"
buf_female_year = No:a= No
buf_Jyoushi_Born_Day(0) = No
locate 1,3
color rgb(255,255,255)
print "女性の生まれた年代(西暦4桁):";buf_female_year$
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
count=0
ui_msg"数字が範囲外になります。"
buf_female_year$="":buf_female_year=0
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
endif
endif
case 1:
count = 2
if (No = -1) then
count = 1
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
buf_female_year = a * 10 + No
b=buf_female_year
buf_year$ = str$(buf_female_year) + "**"
buf_Jyoushi_Born_Day(0)=buf_female_year
locate 1,3
color rgb(255,255,255)
print "                                                                "
locate 1,3
print "女性の生まれた年代(西暦4桁):" + buf_female_year$
'if (No = -1) then
'count=1
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
endif
case 2:
count=3
if (No=-1) then
count =2
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
buf_female_year = b * 10 + No
c=buf_female_year
buf_female_year$ = str$(buf_female_year) + "*"
buf_Jyoushi_Born_Day(0) = buf_female_year
locate 1,3
color rgb(255,255,255)
print "                                        "
locate 1,3
print "女性の生まれた年代(西暦4桁):";buf_female_year$
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
endif
case 3:
count=4
if (No = -1) then
No=0
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
buf_female_year = c * 10 + No
buf_female_year$ = str$(buf_female_year)
buf_Jyoushi_Born_Day(0) = buf_female_year
locate 1,3
color RGB(255,255,255)
print "                                      "
locate 1,3
print "女性の生まれた年代(西暦4桁):";buf_female_year$
buf_female_year=val(buf_female_year$)
'year=val(buf_year$)
'if (No=-1) then
'goto Input_Born_Month:
'else
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
endif
case 4:
'bufyear=buf_year
if (No=-1) then
buf_female_year = val(buf_female_year$)
buf_Jyoushi_Born_Day(0)=buf_female_year
sp_on 14,0:No=0
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
endif
end select
endif
'===========================
'ここまでを部下のところにコピーする.
'===========================
if (bg2 = 2) then
select case count2
case 0:
if (No = -1) then
buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
count=0
locate 1,3
color rgb(255,255,255)
print "                                      "
locate 1,3
print "女性の生まれた年代（西暦4桁):" + buf_female_year$
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
else
'(buf_year=0) then
buf_female_year=0:buf_year$="****"
locate 1,3
print "                                       "
locate 1,3
print "女性の生まれた年代(西暦4桁):"+buf_female_year$
goto Danjyo_Aisyou_Input_feMale_Born_Year2:
'endif
endif
end select
endif
'-------生まれた年代　女性 ここまで-------------
'-------生まれた月　女性 ここまで--------------
Danjyo_Aisyou_Input_feMale_Born_Month:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
for i=0 to 1
buf_month(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "女性の生まれた月を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "女性の生まれた月(1月~12月):"+buf_female_Month$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
locate 4,6
'文字色:赤
print ":7  :8  :9" + chr$(13)
color rgb(255,255,255)
locate 4,8
print ":4  :5  :6" + chr$(13)
color rgb(255,255,255)
locate 4,10
print ":1  :2  :3" + chr$(13)
locate 4,12
print "    :0"
locate 12,12
color rgb(0,0,255)
print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
'---------------------------------------------
Danjyo_Aisyou_Input_feMale_Born_Month2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 8:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 4:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 3:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 9:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 6:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタン + Enter key 決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
if (No=-1) then No=0
count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
if (buf_female_month > 1 and buf_female_month < 10)  then
buf_female_Month$ = str$(buf_female_month)
'buf_month=No
endif
if (buf_female_month = 1)  then
buf_female_Month$ = str$(buf_female_month) + "*"
'c=buf_month
endif
locate 1,3
print "                                     "
color RGB(255,255,255)
locate 1,3
print "女性の生まれた月(1月~12月):" + buf_female_Month$
goto Danjyo_Aisyou_Input_feMale_Born_Month2:
case 1:
count = 2:
'c = val(buf_Month$)
if (No = -1) then
'count=0
No=0
month=buf_female_month
buf_female_month=val(buf_female_Month$)
month=buf_female_month
buf_Jyoushi_Born_Day(1)=month
'生まれた日に飛ぶ
goto Danjyo_Aisyou_Input_feMale_Born_Month2:
else
buf_female_month = c*10 + No
'if (buf_month = 1) then
'buf_Month$ = str$(buf_month)
'endif
buf_female_Month$ = str$(buf_female_month)
buf_Jyoushi_Born_Day(1) = buf_female_month
locate 0,3
print "                                           "
locate 1,3
color Rgb(255,255,255)
print "女性の生まれた月(1月~12月):" + buf_female_Month$
goto Danjyo_Aisyou_Input_feMale_Born_Month2:
endif
case 2:
'==================================
'何もしない
'coun = 2
'==================================
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'goto Jyoushi_Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
No=0
goto Danjyo_Aisyou_Input_Male_Born_Day:
else
goto Danjyo_Aisyou_Input_Male_Born_Day2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_female_month=0:buf_female_Month$="**"
count=0
'goto rewrite2:
else
if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
buf_female_month = 0:buf_female_Month$ = "**"
locate 0,3
color rgb(255,255,255)
print "                                       "
goto rewrite2:
if (No>12) then
ui_msg"値が範囲外です。"
goto rewrite2:
endif
endif
endif
rewrite2:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "女性の生まれた月(1月~12月):"+buf_female_Month$
goto Danjyo_Aisyou_Input_feMale_Born_Month2:
end select
'endif
endif
end
'-------生まれた月　女性 ここまで-------------
'-------生まれた日　女性 ここまで-------------
Danjyo_Aisyou_Input_feMale_Born_Day:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
for i=0 to 1
buf_female_day(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "女性の生まれた日を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "女性の生まれた日(1月~31月):" + buf_female_Day$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
locate 4,6
'文字色:赤
print ":7  :8  :9" + chr$(13)
color rgb(255,255,255)
locate 4,8
print ":4  :5  :6" + chr$(13)
color rgb(255,255,255)
locate 4,10
print ":1  :2  :3" + chr$(13)
locate 4,12
print "    :0"
locate 12,12
color rgb(0,0,255)
print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
'---------------------------------------------
Danjyo_Aisyou_Input_feMale_Born_Day2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 8:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 4:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 7:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 3:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 9:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 6:
pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタン + Enter key 決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
if (No=-1) then No=0
count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
if (buf_female_day > 1 and buf_female_day < 10)  then
buf_female_Day$ = str$(buf_female_day)
'buf_month=No
endif
if (buf_female_day = 1)  then
buf_female_Day$ = str$(buf_female_day) + "*"
'c=buf_month
endif
locate 1,3
print "                                     "
color RGB(255,255,255)
locate 1,3
print "女性の生まれた日(1月~31月):" + buf_female_Day$
goto Danjyo_Aisyou_Input_feMale_Born_Day2:
case 1:
count = 2:
'c = val(buf_Month$)
if (No = -1) then
'count=0
No=0
day=buf_female_day
buf_female_day=val(buf_female_day$)
day=bu_female_day
buf_female_day(1)=day
'生まれた日に飛ぶ
goto Danjyo_Aisyou_Input_feMale_Born_Day2:
else
bu_female_day = c*10 + No
'if (buf_month = 1) then
'buf_Month$ = str$(buf_month)
'endif
buf_female_day$ = str$(buf_female_day)
buf_female_day(1) = buf_female_day
locate 0,3
print "                                           "
locate 1,3
color Rgb(255,255,255)
print "女性の生まれた日(1月~31月):" + buf_female_Day$
goto Danjyo_Aisyou_Input_feMale_Born_Day2:
endif
case 2:
'==================================
'何もしない
'coun = 2
'==================================
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'goto Jyoushi_Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
No=0
goto Danjyo_Aisyou_Input_Male_Born_Day:
else
goto Danjyo_Aisyou_Input_feMale_Born_Day2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_female_day=0:buf_female_Day$="**"
count=0
'goto rewrite2:
else
if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
buf_female_day = 0:buf_female_Day$ = "**"
locate 0,3
color rgb(255,255,255)
print "                                       "
goto rewrite2:
if (No>12) then
ui_msg"値が範囲外です。"
goto rewrite2:
endif
endif
endif
rewrite2:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "女性の生まれた日(1月~31月):"+buf_female_Day$
goto Danjyo_Aisyou_Input_feMale_Born_Day2:
end select
'endif
endif
end
'-------生まれた日　女性 ここまで-------------
'1.男女の相性 ここまで
'2.ビジネスの相性　
'1.1人目のビジネスの相性　名前入力　1人目
Business_Aishou_Input_1_parson:
No=0:color RGB(255,255,255)
cls 3:init "kb:2"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
play "":color rgb(255,0,0):name$ = ""
locate 0,1
print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
color rgb(255,255,255):
locate 0,3
print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
print "入れてください" + chr$(13)
locate 0,15:color rgb(0,0,0)
Input "1人目の名前:",name$
'color rgb(0,0,0)
'locate 0,13:print "                                     "
'locate 0,13:print "1人目の名前を入力してエンターキー":
'buffer_name$(0):1人目の名前
buffer_name$(0) = name$:
goto Business_Aishou_Input_2_Parson:
'2.2人目のビジネスの相性 名前入力 2人目
Business_Aishou_Input_2_Parson:
cls 3:init "kb:2":name$ = "":No=0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
color rgb(255,0,0)
'Title
locate 0,1
print "ビジネスの相性　2人目"
locate 0,3
color rgb(255,255,255)
print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
print "入れてください" + chr$(13)
locate 0,15:color rgb(0,0,0)
Input "2人目の名前:",name$
'color rgb(0,0,0)
'locate 0,15:print "                                              "
'locate 0,15:print "2人目の名前を入力してエンター ":
'2人目
'2人目の名前を入れるに代入
buffer_name$(1) = name$:
goto Select_jyoushi:
'3.上司の選択
Select_jyoushi:
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
cls 3:gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
init "kb:4":No=0
color rgb(0,0,255)
locate 1,1
print "上司の選択"
color rgb(255,255,255)
locate 0,4:print "名前から上司の方を選んでください"
locate 0,6
print " :";buffer_name$(0);"が上 司";chr$(13)
locate 0,8
print " :";buffer_name$(1);"が上 司";chr$(13)
locate 0,15:
print "                                     "
locate 0,15:color rgb(0,0,0)
print "上司の方を選んで右の丸ボタン"
sp_on 0,1:sp_on 1,0:sp_on 2,0
Select_jyoushi2:
'ここでNo=0をおいてはいけない
y=0:key$="":bg=0:
while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
y = stick(1)
key$ = inkey$
bg = strig(1)
pause 5
wend
'1.カーソル下の処理　or 十字キーの下処理
if ((key$ = chr$(31)) or (y = 1)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
case 1:
No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
end select
endif
'2.カーソル上処理　or 十字キーの上の処理
if ((key$ = chr$(30)) or (y = -1)) then
select case No
case 0:
No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
case 1:
No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
end select
endif
if ((key$ = chr$(13)) or (bg = 2)) then
select case No
case 0:
'上司(name1)を配列に代入
buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
case 1:
'上司（name2)を配列に代入
buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
end select
endif
'3.決定ボタン　Enter or 右の丸ボタン
'1.誕生日入力
'1-1.生まれた年を入力
'Jyoushi_born_year:
'cls 3:gload Gazo$ + "Screen1.png",0,0,0
'---------------------------------------------'
'誕生日入力(生れた年代)
Jyoushi_Input_Seireki:
'buf_Jyoushi_Born_Year:上司の生まれた年代
'buf_Jyoushi_Born_Day(0) = born_year
cls 3:play "":count=0:count2=0
init"kb:4"
'No=-1:Okのとき
:key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
for i=0 to 3
buf_Jyoushi_Born_Day(i)=0
next i
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:2"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "上司の生まれた年代を入れて下さい" + chr$(13)
color rgb(255,255,255)
locate 1,3
print "上司の生まれた年代(西暦4桁):";buf_year$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(0,0,255)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Jyoushi_Input_Seireki2:
key$="":bg=0:y=0:y2=0:bg2=0:
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2=strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Jyoushi_Input_Seireki2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Jyoushi_Input_Seireki2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Seireki2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Jyoushi_Input_Seireki2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Jyoushi_Input_Seireki2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Jyoushi_Input_Seireki2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Seireki2:
case 8:
pause 200:goto Jyoushi_Input_Seireki2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Jyoushi_Input_Seireki2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Seireki2:
case 7:
pause 200:goto Jyoushi_Input_Seireki2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Jyoushi_Input_Seireki2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Seireki2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Jyoushi_Input_Seireki2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Jyoushi_Input_Seireki2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Seireki2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Seireki2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Jyoushi_Input_Seireki2:
case 0:
pause 200:goto Jyoushi_Input_Seireki2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Jyoushi_Input_Seireki2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Seireki2:
case 1:
pause 200:goto Jyoushi_Input_Seireki2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Jyoushi_Input_Seireki2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Jyoushi_Input_Seireki2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Jyoushi_Input_Seireki2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Jyoushi_Input_Seireki2:
case 1:
pause 200:goto Jyoushi_Input_Seireki2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Seireki2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Seireki2:
case 4:
pause 200:goto Jyoushi_Input_Seireki2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Jyoushi_Input_Seireki2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Seireki2:
case 7:
pause 200:goto Jyoushi_Input_Seireki2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Jyoushi_Input_Seireki2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Jyoushi_Input_Seireki2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Jyoushi_Input_Seireki2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Jyoushi_Input_Seireki2:
case 3:
pause 200:goto Jyoushi_Input_Seireki2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Seireki2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Seireki2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Jyoushi_Input_Seireki2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Seireki2:
case 9:
pause 200:goto Jyoushi_Input_Seireki2:
case 6:
pause 200:goto Jyoushi_Input_Seireki2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'==============================
'ここから
'==============================
if ((bg = 2) or (key$ = chr$(13))) then
select case count
case 0:
count = 1
if (No = -1) then
count = 0:No=0
buf_Jyoushi_Born_Day(0) = No
'Okボタンを押したとき
goto Jyoushi_Input_Seireki2:
else
'Okボタン以外が押されたとき
if (No >= 1 and No <= 2) then
buf_year$="":buf_year$ = str$(No) + "***"
buf_year = No:a= No
buf_Jyoushi_Born_Day(0) = No
locate 1,3
color rgb(255,255,255)
print "上司の生まれた年代(西暦4桁):";buf_year$
goto Jyoushi_Input_Seireki2:
else
count=0
ui_msg"数字が範囲外になります。"
buf_year$="":buf_year=0
goto Jyoushi_Input_Seireki2:
endif
endif
case 1:
count = 2
if (No = -1) then
count = 1
goto Jyoushi_Input_Seireki2:
else
buf_year = a * 10 + No
b=buf_year
buf_year$ = str$(buf_year) + "**"
buf_Jyoushi_Born_Day(0)=buf_year
locate 1,3
color rgb(255,255,255)
print "                                                                "
locate 1,3
print "上司の生まれた年代(西暦4桁):" + buf_year$
'if (No = -1) then
'count=1
goto Jyoushi_Input_Seireki2:
endif
case 2:
count=3
if (No=-1) then
count =2
goto Jyoushi_Input_Seireki2:
else
buf_year = b * 10 + No
c=buf_year
buf_year$ = str$(buf_year) + "*"
buf_Jyoushi_Born_Day(0) = buf_year
locate 1,3
color rgb(255,255,255)
print "                                        "
locate 1,3
print "上司の生まれた年代(西暦4桁):";buf_year$
goto Jyoushi_Input_Seireki2:
endif
case 3:
count=4
if (No = -1) then
No=0
goto Jyoushi_Input_Seireki2:
else
buf_year = c * 10 + No
buf_year$ = str$(buf_year)
buf_Jyoushi_Born_Day(0) = buf_year
locate 1,3
color RGB(255,255,255)
print "                                      "
locate 1,3
print "上司の生まれた年代(西暦4桁):";buf_year$
buf_year=val(buf_year$)
'year=val(buf_year$)
'if (No=-1) then
'goto Input_Born_Month:
'else
goto Jyoushi_Input_Seireki2:
endif
case 4:
'bufyear=buf_year
if (No=-1) then
buf_year = val(buf_year$)
buf_Jyoushi_Born_Day(0)=buf_year
sp_on 14,0:No=0
goto Jyoushi_Input_Born_Month:
else
goto Jyoushi_Input_Seireki2:
endif
end select
endif
'===========================
'ここまでを部下のところにコピーする.
'===========================
if (bg2 = 2) then
select case count2
case 0:
if (No = -1) then
buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
count=0
locate 1,3
color rgb(255,255,255)
print "                                      "
locate 1,3
print "上司の生まれた年代（西暦4桁):" + buf_year$
goto Jyoushi_Input_Seireki2:
else
'(buf_year=0) then
buf_year=0:buf_year$="****"
locate 1,3
print "                                       "
locate 1,3
print "上司の生まれた年代(西暦4桁):"+buf_year$
goto Jyoushi_Input_Seireki2:
'endif
endif
end select
endif
'Input"上司の生れた年代(4桁,〜2025年):",year
'if year > 2025 then goto Jyoushi_Input_Seireki:
'if year = 123 then cls 3:cls 4:goto Main_Screen:
'"4桁目"
'bufyear4 = fix(year / 1000)
'"3桁目"
'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
'"2桁目"
'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
'"1桁目"
'bufyear1 = fix((year - ((bufyear4*
'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
'2.生まれた月を入力
Jyoushi_Input_Born_Month:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
for i=0 to 1
buf_month(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "上司の生まれた月を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "上司の生まれた月(1月~12月):"+buf_Month$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'文字色:赤
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(0,0,255)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Jyoushi_Input_Born_Month2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Jyoushi_Input_Born_Month2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Jyoushi_Input_Born_Month2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Born_Month2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Jyoushi_Input_Born_Month2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Jyoushi_Input_Born_Month2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Jyoushi_Input_Born_Month2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 8:
pause 200:goto Input_Born_Month2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 7:
pause 200:goto Input_Born_Month2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Jyoushi_Input_Born_Month2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Born_Month2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Jyoushi_Input_Born_Month2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Jyoushi_Input_Born_Month2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 0:
pause 200:goto Jyoushi_Input_Born_Month2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 1:
pause 200:goto Jyoushi_Input_Born_Month2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Jyoushi_Input_Born_Month2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Jyoushi_Input_Born_Month2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Jyoushi_Input_Born_Month2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Jyoushi_Input_Born_Month2:
case 1:
pause 200:goto Jyoushi_Input_Born_Month2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 4:
pause 200:goto Jyoushi_Input_Born_Month2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Input_Born_Month2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 7:
pause 200:goto Jyoushi_Input_Born_Month2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Jyoushi_Input_Born_Month2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Jyoushi_Input_Born_Month2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 3:
pause 200:goto Jyoushi_Input_Born_Month2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Born_Month2:
case 9:
pause 200:goto Jyoushi_Input_Born_Month2:
case 6:
pause 200:goto Jyoushi_Input_Born_Month2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタン + Enter key 決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
if (No=-1) then No=0
count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
if (buf_month > 1 and buf_month < 10)  then
buf_Month$ = str$(buf_month)
'buf_month=No
endif
if (buf_month = 1)  then
buf_Month$ = str$(buf_month) + "*"
'c=buf_month
endif
locate 1,3
print "                                     "
color RGB(255,255,255)
locate 1,3
print "上司の生まれた月(1月~12月):" + buf_Month$
goto Jyoushi_Input_Born_Month2:
case 1:
count = 2:
'c = val(buf_Month$)
if (No = -1) then
'count=0
No=0
month=buf_month
buf_month=val(buf_Month$)
month=buf_month
buf_Jyoushi_Born_Day(1)=month
'生まれた日に飛ぶ
goto Jyoushi_Input_Born_Day:
else
buf_month = c*10 + No
'if (buf_month = 1) then
'buf_Month$ = str$(buf_month)
'endif
buf_Month$ = str$(buf_month)
buf_Jyoushi_Born_Day(1) = buf_month
locate 0,3
print "                                           "
locate 1,3
color Rgb(255,255,255)
print "上司の生まれた月(1月~12月):" + buf_Month$
goto Jyoushi_Input_Born_Month2:
endif
case 2:
'==================================
'何もしない
'coun = 2
'==================================
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'goto Jyoushi_Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "上司の生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
No=0
goto Jyoushi_Input_Born_Day:
else
goto Jyoushi_Input_Born_Month2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_month=0:buf_Month$="**"
count=0
'goto rewrite2:
else
if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
buf_month = 0:buf_Month$ = "**"
locate 0,3
color rgb(255,255,255)
print "                                       "
goto rewrite2:
if (No>12) then
ui_msg"値が範囲外です。"
goto rewrite2:
endif
endif
endif
rewrite2:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "上司の生まれた月(1月~12月):"+buf_Month$
goto Jyoushi_Input_Born_Month2:
end select
'endif
endif
end
'end
'生れた日を入力
Jyoushi_Input_Born_Day:
'生まれた日入力
cls 3:play ""
'No=-1:Okのとき
init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
for i=0 to 1
buf_day(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:2"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
font 48
locate 1,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "上司の生まれた日を入れて下さい" + chr$(13)
locate 1,3
color rgb(255,255,255)
print "                                      "
locate 1,3
print "上司の生まれた日(1日~31日):"+buf_Day$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(0,0,255)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Jyoushi_Input_Born_Day2:
key$="":bg=0:y=0:y2=0:bg2=0:
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Jyoushi_Input_Born_Day2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Jyoushi_Input_Born_Day2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Born_Day2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Jyoushi_Input_Born_Day2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Jyoushi_Input_Born_Day2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Jyoushi_Input_Born_Day2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 8:
pause 200:goto Jyoushi_Input_Born_Day2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 7:
pause 200:goto Jyoushi_Input_Born_Day2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Jyoushi_Input_Born_Day2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Born_Day2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Jyoushi_Input_Born_Day2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Jyoushi_Input_Born_Day2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 0:
pause 200:goto Jyoushi_Input_Born_Day2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 1:
pause 200:goto Jyoushi_Input_Born_Day2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Jyoushi_Input_Born_Day2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Jyoushi_Input_Born_Day2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Jyoushi_Input_Born_Day2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Jyoushi_Input_Born_Day2:
case 1:
pause 200:goto Jyoushi_Input_Born_Day2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 4:
pause 200:goto Jyoushi_Input_Born_Day2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 7:
pause 200:goto Jyoushi_Input_Born_Day2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Jyoushi_Input_Born_Day2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Jyoushi_Input_Born_Day2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 3:
pause 200:goto Jyoushi_Input_Born_Day2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Jyoushi_Input_Born_Day2:
case 9:
pause 200:goto Jyoushi_Input_Born_Day2:
case 6:
pause 200:goto Jyoushi_Input_Born_Day2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタンを押したとき
if ((bg = 2) or (key$ = chr$(13))) then
'count :決定ボタンを押した回数
select case (count)
'1桁目入力
case 0:
count = 1:
if (No = -1) then
'1桁目　OKでは何もしない
No=c
'goto Jyoushi_Input_Born_Day2:
else
'ok以外のボタンを押したとき
buf_day = No:buf_Day$ = str$(No)
buf_Jyoushi_Born_Day(2)=buf_day
c=No
locate 1,3
print "                                      "
color RGB(255,255,255)
locate 1,3
print "上司の生まれた日(1日~31日):" + buf_Day$
endif
'check2:
'if (buf_day >= 1 and buf_day <= 9) then
'sp_on 14,0
'goto complate_jyoushi:
'else
'sp_on 14,0
goto Jyoushi_Input_Born_Day2:
'end
'endif
case 1:
'10未満の数字ボタン+okボタン or 2桁目の数字ボタン
count = 2:
'locate 2,3
'color RGB(255,255,255)
'print "生まれた日(1日~31日):";buf_Day$
'Okボタンを押したときの処理
'入力値　10未満のとき
'buf_day = c * 10 + No
if (No = -1) then
c=buf_day:No=0
'buf_day = c
buf_Day$ = str$(buf_day)
'10以下のとき
'if (buf_day < 10) then
sp_on 14,0
goto complate_jyoushi:
'end
'endif
else
'c=No
buf_day = c * 10 + No
buf_Day$ = str$(buf_day)
'buf_day = c:buf_Day$=str$(buf_day)
buf_Jyoushi_Born_Day(2)=buf_day
locate 1,3
print "                                           "
locate 1,3
color Rgb(255,255,255)
print "上司の生まれた日(1日~31日):" + buf_Day$
goto Jyoushi_Input_Born_Day2:
'goto
endif
'endif
'生まれた日　2桁目の数字　or 1桁の数字 + ok
case 2:
'buf_day = c * 10 + No
'buf_Jyoushi_Born_Day(2)=buf_day
'locate 1,3
'print "                                      "
'locate 1,3
'locate 2,3
'print "生まれた日(1日〜31日):";buf_Day
'No=-1:ok ボタンを押したとき
if (No = -1) then
'if ((buf_day > 0) and (buf_day < 32)) then
No=0
sp_on 14,0
goto complate_jyoushi:
'end
else
goto Jyoushi_Input_Born_Day2:
'endif
'Okボタン以外を押したとき
'else
'c=val(buf_Day$)
'buf_day = c * 10 + No
'buf_Jyoushi_Born_Day(2) = buf_day
'buf_Day$ = str$(buf_day)
'locate 1,3
'print "上司の生まれた日(1日~31日):";buf_Day$
'goto Jyoushi_Input_Born_Day2:
endif
'case 3:
'count=4
'c=val(buf_day$)
'buf_day=c*10+No
'buf_day$=str$(buf_day)
'locate 2,3
'print "生まれた日を入れてください:";buf_day$
'year=val(buf_year$)
'if (No = -1) then
'goto Jyoushi_Input_Born_Day:
'sp_on 14,0:
'goto complate_jyoushi:
'else
'goto Jyoushi_Input_Born_Month2:
'endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_day = val(buf_day$)
'bufday = buf_day
'sp_on 14,0
'goto Jyoushi_Input_Born_Day2:
'else
'goto Jyoushi_Input_Born_Day2:
'endif
end select
endif
if (bg2=2) then
select case count2
case 0:
if (No=-1) then
buf_day=0:buf_Day$="**":No=0
if (buf_day >= 1 and buf_day <= 31) then
count=0
buf_day=0:buf_Day$ = "**"
goto rewrite_day3:
else
buf_day=0:buf_Day$ = "**"
ui_msg"値が範囲外です"
endif
goto rewrite_day3:
else
goto rewrite_day3:
endif
rewrite_day3:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "生まれた日(1日~31日):" + buf_Day$
goto Jyoushi_Input_Born_Day2:
end select
endif
'--------------------------------------------'
'locate 2,0:color rgb(255,0,0)
'print "上司の生まれた年代を入力"
'color rgb(255,255,255)
'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
'locate 2,4:Input "上司の生まれた年:",born_year
'誕生日データーを配列に代入
'buf_Jyoushi_Born_Year:上司の生まれた年代
'buf_Jyoushi_Born_Day(0) = born_year
'born_year = 0
'---------------------------------------------'
'goto Jyoushi_born_month:
'1-2.生まれた月を入力
'Jyoushi_born_month:
'cls 3:gload Gazo$ + "Screen1.png",0,0,0
'init "kb:4"
'locate 2,1:
'color rgb(255,0,0)
'print "上司の生まれた月入力"
'color rgb(255,255,255)
'locate 2,4:print "生まれた月を入力してください"
'locate 2,5
'Input "上司の生まれ月:",born_month
'buf_Jyoushi_Born_Day(1) = born_month
'born_month = 0
'goto Jyoushi_born_day:
'buf_Jyoushi_Born_day
'1-3.生まれた日を入力
'Jyoushi_born_day:
'cls 3:gload Gazo$ + "Screen1.png",0,0,0
'init "kb:4"
'locate 2,1:color rgb(255,0,0)
'print "上司の生まれた日　入力"
'locate 2,4:color rgb(255,255,255)
'print "生まれた日を入力してください"
'locate 2,5
'Input "上司の生まれた日:",born_day
'buf_Jyoushi_Born_Day(2) = born_day
'born_day = 0
'goto buka_born_year:
'2.部下の誕生日入力
'2-1.生まれた年を入力
'buka_born_year:
'cls 3:gload Gazo$+"Screen1.png",0,0,0
'init "kb:2"
'locate 1,1:color rgb(255,0,0)
'print "部下の生まれた年代入力"
'locate 0,4:color rgb(255,255,255)
'print "部下の生まれた年（西暦4桁）を入れてください"
'locate 0,5
'Input "部下の生まれた年(西暦4桁):",born_year
'buf_Buka_Born_Day(0) = born_year
'born_year = 0
'2-2.生まれた月を入力
'buka_born_month:
'cls 3:gload Gazo$+"Screen1.png",0,0,0
'init "kb:2"
'locate 2,1:color rgb(255,0,0)
'print "部下の生まれた月 入力"
'locate 2,4:color rgb(255,255,255)
'print "部下の生まれた月を入力してください"
'locate 2,5:Input "部下の生まれた月:",born_month
'buf_Buka_Born_Day(1) = born_month
'2-3.生まれた日を入力
'buka_born_day:
'cls 3:gload Gazo$ + "Screen1.png",0,0,0
'init "kb:2"
'locate 2,1:color rgb(255,0,0)
'print "生まれた日入力"
'color rgb(255,255,255)
'locate 2,4:print "生まれた日を入力してください"
'locate 2,5:Input "部下の生まれた日:",born_day
'buf_Buka_Born_Day(2) = born_day
'born_day=0:goto Result_Business_Aisyou:
'--------------------------------------------'
complate_jyoushi:
a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
buf_Jyoushi = Kabara_Num(a,b,c)
a_1=buf_Jyoushi
goto Buka_Input_Seireki:
'--------------------------------------------'
'部下'
'1.部下の生まれた年代'
Buka_Input_Seireki:
cls 3:play "":count=0:count2=0
init"kb:4"
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
for i=0 to 3
buf_Buka_Born_Day(i)=0
next i
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:2"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "部下の生まれた年代を入れて下さい" + chr$(13)
color rgb(255,255,255)
locate 1,3
print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(0,0,255)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Buka_Input_Seireki2:
key$="":bg=0:y=0:y2=0:bg2=0:
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2=strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Buka_Input_Seireki2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Buka_Input_Seireki2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Buka_Input_Seireki2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Buka_Input_Seireki2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Buka_Input_Seireki2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Buka_Input_Seireki2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Buka_Input_Seireki2:
case 8:
pause 200:goto Buka_Input_Seireki2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Buka_Input_Seireki2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Buka_Input_Seireki2:
case 7:
pause 200:goto Buka_Input_Seireki2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Buka_Input_Seireki2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Buka_Input_Seireki2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Buka_Input_Seireki2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Buka_Input_Seireki2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Buka_Input_Seireki2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Buka_Input_Seireki2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Buka_Input_Seireki2:
case 0:
pause 200:goto Buka_Input_Seireki2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Buka_Input_Seireki2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Buka_Input_Seireki2:
case 1:
pause 200:goto Buka_Input_Seireki2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Buka_Input_Seireki2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Buka_Input_Seireki2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Buka_Input_Seireki2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Buka_Input_Seireki2:
case 1:
pause 200:goto Buka_Input_Seireki2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Buka_Input_Seireki2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Buka_Input_Seireki2:
case 4:
pause 200:goto Buka_Input_Seireki2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Buka_Input_Seireki2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Buka_Input_Seireki2:
case 7:
pause 200:goto Buka_Input_Seireki2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Buka_Input_Seireki2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Buka_Input_Seireki2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Buka_Input_Seireki2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Buka_Input_Seireki2:
case 3:
pause 200:goto Buka_Input_Seireki2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Buka_Input_Seireki2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Buka_Input_Seireki2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Buka_Input_Seireki2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Buka_Input_Seireki2:
case 9:
pause 200:goto Buka_Input_Seireki2:
case 6:
pause 200:goto Buka_Input_Seireki2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
'ここからコメント
'右の丸ボタン決定を押した数:count
'if ((bg=2) or (key$=chr$(13))) then
'select case count
'case 0:
'count=1
'if (No = -1) then
'count = 0
'Okボタンを押したとき
'
'goto Buka_Input_Seireki2:
'else
'Okボタン以外が押されたとき
'if (No >= 1 and No <= 2) then
'buf_buka_year$ = "":buf_buka_year$ = str$(No)
'buf_buka_year = No
'buf_Buka_Born_Day(0) = bufyear
'locate 2,3
'color rgb(255,255,255)
'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
'goto Buka_Input_Seireki2:
'else
'count=0
'ui_msg"数字が範囲外になります。"
'buf_buka_year$ ="":buf_buka_year=0
'goto Buka_Input_Seireki2:
'endif
'endif
'case 1:
'count = 2
'if (No = -1) then
'count = 1
'goto Buka_Input_Seireki2:
'else
'b = val(buf_buka_year$)
'buf_buka_year = b * 10 + No
'buf_buka_year$ = str$(buf_buka_year)
'buf_Buka_Born_Day(0) = bufyear
'locate 1,3
'color rgb(255,255,255)
'print "                                                                "
'locate 1,3
'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
'if (No = -1) then
'count=1
'goto Buka_Input_Seireki2:
'endif
'case 2:
'count = 3
'if (No = -1) then
'count = 2
'buf_Buka_Born_Day(0)=bufyear
'goto Buka_Input_Seireki2:
'else
'b = val(buf_buka_year$)
'buf_buka_year = b*10 + No
'buf_buka_year$ = str$(buf_buka_year)
'locate 1,3
'color rgb(255,255,255)
'print "                                        "
'locate 1,3
'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
'goto Buka_Input_Seireki2:
'endif
'case 3:
'count=4
'if (No = -1) then
'count=3
'goto Buka_Input_Seireki2:
'else
'b = buf_buka_year
'buf_buka_year = b * 10 + No
'buf_buka_year$=str$(buf_buka_year)
'locate 1,3
'color RGB(255,255,255)
'print "                                      "
'locate 1,3
'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
'buf_year=val(buf_year$)
'year=val(buf_year$)
'if (No=-1) then
'goto Input_Born_Month:
'else
'goto Buka_Input_Seireki2:
'endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_year = val(buf_year$)
'bufyear = buf_year
'sp_on 14,0
'goto Buka_Input_Born_Month:
'else
'goto Buka_Input_Seireki2:
'endif
'end select
'endif
'if (bg2 = 2) then
'select case count2
'case 0:
'if (No = -1) then
'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
'count=0
'locate 1,3
'color rgb(255,255,255)
'print "                                      "
'locate 1,3
'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
'goto Buka_Input_Seireki2:
'else
'(buf_year=0) then
'buf_buka_year=0:buf_buka_year$="****"
'goto Buka_Input_Seireki2:
'endif
'endif
'end select
'endif
'end
'ここまでコメント
'================================================================
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
count = 1
if (No=-1) then
count = 0
buf_Buka_Born_Day(0) = No
'Okボタンを押したとき
goto Buka_Input_Seireki2:
else
'Okボタン以外が押されたとき
if (No>=1 and No<=2) then
buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
buf_buka_year = No
buf_Buka_Born_Day(0) = No
locate 1,3
color rgb(255,255,255)
print "部下の生まれた年代(西暦4桁):";buf_buka_year$
goto Buka_Input_Seireki2:
else
count=0
ui_msg"数字が範囲外になります。"
buf_buka_year$="":buf_buka_year=0
goto Buka_Input_Seireki2:
endif
endif
case 1:
count = 2
if (No = -1) then
count = 1
goto Buka_Input_Seireki2:
else
'b = val(buf_buka_year$)
buf_buka_year = a * 10 + No
b=buf_buka_year
buf_buka_year$ = str$(buf_buka_year)+"**"
buf_Buka_Born_Day(0)=buf_buka_year
locate 1,3
color rgb(255,255,255)
print "                                                                "
locate 1,3
print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
'if (No = -1) then
'count=1
goto Buka_Input_Seireki2:
endif
case 2:
count=3
if (No=-1) then
count =2:No=0
goto Buka_Input_Seireki2:
else
'b = val(buf_buka_year$)
buf_buka_year = b * 10 + No
c = buf_buka_year
buf_buka_year$ = str$(buf_buka_year) + "*"
buf_Buka_Born_Day(0) = buf_buka_year
locate 1,3
color rgb(255,255,255)
print "                                        "
locate 1,3
print "部下の生まれた年代(西暦4桁):";buf_buka_year$
goto Buka_Input_Seireki2:
endif
case 3:
count=4
if (No = -1) then
'count=3:No=0
goto Buka_Input_Seireki2:
else
'b = val(buf_buka_year$)
buf_buka_year=c * 10 + No
buf_buka_year$=str$(buf_buka_year)
buf_Buka_Born_Day(0)=buf_buka_year
locate 1,3
color RGB(255,255,255)
print "                                      "
locate 1,3
print "部下の生まれた年代(西暦4桁):";buf_buka_year$
buf_buka_year=val(buf_buka_year$)
'year=val(buf_year$)
'if (No=-1) then
'goto Input_Born_Month:
'else
goto Buka_Input_Seireki2:
endif
case 4:
'bufyear=buf_year
if (No = -1) then
buf_buka_year = val(buf_buka_year$)
buf_Buka_Born_Day(0)=buf_buka_year
sp_on 14,0
goto Buka_Input_Born_Month:
else
goto Buka_Input_Seireki2:
endif
end select
endif
'================================================================
'ここにコピーする。
'================================================================
'Input"部下の生れた年代(4桁,〜2025年):",year
'if year > 2025 then goto Jyoushi_Input_Seireki:
'if year = 123 then cls 3:cls 4:goto Main_Screen:
'"4桁目"
'bufyear4 = fix(year / 1000)
'"3桁目"
'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
'"2桁目"
'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
'"1桁目"
'bufyear1 = fix((year - ((bufyear4*
'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
'1.部下の生まれた年代'
'2.部下の生まれた月'
Buka_Input_Born_Month:
cls 3:play "":count=0:count2=0
'No=-1:Okのとき
key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
for i=0 to 1
buf_month(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
'Init"kb:4"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
font 48
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
locate 0,1
'文字色：黒　 color rgb(0,0,0)
'文字色:白
color rgb(255,255,255)
print "部下の生まれた月を入れて下さい" + chr$(13)
'文字色:白
color rgb(255,255,255)
locate 1,3
'文字色:白
print "部下の生まれた月(1月~12月):"+buf_buka_Month$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'文字色:赤
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(0,0,255)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Buka_Input_Born_Month2:
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Buka_Input_Born_Month2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Buka_Input_Born_Month2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Buka_Input_Born_Month2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Buka_Input_Born_Month2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Buka_Input_Born_Month2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Buka_Input_Born_Month2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Month2:
case 8:
pause 200:goto Buka_Input_Born_Month2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Buka_Input_Born_Month2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Buka_Input_Born_Month2:
case 7:
pause 200:goto Buka_Input_Born_Month2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Buka_Input_Born_Month2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Buka_Input_Born_Month2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Buka_Input_Born_Month2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Buka_Input_Born_Month2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Buka_Input_Born_Month2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Month2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Buka_Input_Born_Month2:
case 0:
pause 200:goto Buka_Input_Born_Month2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Buka_Input_Born_Month2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Buka_Input_Born_Month2:
case 1:
pause 200:goto Buka_Input_Born_Month2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Buka_Input_Born_Month2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Buka_Input_Born_Month2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Buka_Input_Born_Month2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Buka_Input_Born_Month2:
case 1:
pause 200:goto Buka_Input_Born_Month2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Buka_Input_Born_Month2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Month2:
case 4:
pause 200:goto Buka_Input_Born_Month2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Buka_Input_Born_Month2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Buka_Input_Born_Month2:
case 7:
pause 200:goto Buka_Input_Born_Month2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Buka_Input_Born_Month2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Buka_Input_Born_Month2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Buka_Input_Born_Month2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Buka_Input_Born_Month2:
case 3:
pause 200:goto Buka_Input_Born_Month2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Buka_Input_Born_Month2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Month2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Buka_Input_Born_Month2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Buka_Input_Born_Month2:
case 9:
pause 200:goto Buka_Input_Born_Month2:
case 6:
pause 200:goto Buka_Input_Born_Month2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタン　決定キー
if ((bg=2) or (key$=chr$(13))) then
select case count
case 0:
count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
locate 1,3
color RGB(255,255,255)
print "部下の生まれた月(1月~12月):"+buf_buka_Month$
goto Buka_Input_Born_Month2:
case 1:
count = 2:buf_buka_month=a*10+No
if (No = -1) then
'count=0
month=buf_buka_month
buf_buka_month=val(buf_buka_Month$)
month=buf_buka_month
'生まれた日に飛ぶ
goto Buka_Input_Born_Day:
else
buf_buka_month = a * 10 + No
buf_buka_Month$ = str$(buf_buka_month)
buf_Buka_Born_Day(1) = buf_buka_month
locate 1,3
color Rgb(255,255,255)
print "部下の生まれた月(1月~12月):" + buf_buka_Month$
goto Buka_Input_Born_Month2:
endif
case 2:
count=3
'c= val(buf_Month$)
'buf_month = c*10 + No
'buf_Month$ = str$(buf_month)
'locate 2,3
'print "部下の生まれた月(1月～12月):";buf_Month$
'goto Buka_Input_Born_Month2:
'case 3:
'count=4
'b=val(buf_month$)
'buf_month=c*10+No
'buf_Month$=str$(buf_month)
'locate 2,3
'print "部下の生まれた月(1月～12月):";buf_Month$
'buf_month=val(buf_Month$)
'year=val(buf_year$)
if (No=-1) then
goto Buka_Input_Born_Day:
else
goto Input_Born_Month2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_month = val(buf_Month$)
'month = buf_month
'sp_on 14,0
'goto Input_Born_Day:
'else
'goto Input_Born_Month2:
'endif
end select
endif
'左の丸ボタン　キャンセル
if (bg2=2) then
select case count2
case 0:
if (No = -1) then
buf_buka_month=0:buf_buka_Month$="**"
count=0
goto rewrite2:
else
if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
buf_month=0:buf_Month$="**"
locate 2,3
color rgb(255,255,255)
print "                                       "
goto rewrite2:
if (No>12) then
ui_msg"値が範囲外です。"
goto rewrite2:
endif
endif
endif
rewrite2:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 2,3
print "部下の生まれた月(1月~12月):";buf_buka_Month$
goto Buka_Input_Born_Month2:
end select
'endif
endif
end
'2.部下の生まれた月'
'3.部下の生まれた日'
'生れた日を入力
Buka_Input_Born_Day:
'生まれた日入力
cls 3:play ""
'No=-1:Okのとき
init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
for i=0 to 1
buf_day(i)=0
next i
'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen2.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここまで
'****************************************************************************************************
'Init"kb:2"
'音声ファイル再生 2023.06.07
play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
font 48
locate 0,1
'文字色：黒　 color rgb(0,0,0)
color rgb(255,255,255)
print "部下の生まれた日を入れて下さい" + chr$(13)
color rgb(255,255,255)
locate 1,3
print "部下の生まれた日(1日~31日):";buf_Day$
color rgb(255,255,255)
'locate 4,6:print ":7"
'locate 9,6:print ":8"
'locate 12,6:print ":9"
'locate 4,6
'print ":7  :8  :9" + chr$(13)
'color rgb(255,255,255)
'locate 4,8
'print ":4  :5  :6" + chr$(13)
'color rgb(255,255,255)
'locate 4,10
'print ":1  :2  :3" + chr$(13)
'locate 4,12
'print "    :0"
'locate 12,12
'color rgb(0,0,255)
'print ":Ok"
sp_on 4,0: sp_on 5,0:sp_on 6,0
sp_on 7,0:sp_on 8,0:sp_on 9,0
sp_on 10,0:sp_on 11,0:sp_on 12,0
sp_on 13,0:sp_on 14,1
Buka_Input_Born_Day2:
'
key$="":bg=0:y=0:y2=0:bg2=0
while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
key$ = inkey$
bg = strig(1)
y = stick(1)
y2 = stick(0)
bg2 = strig(0)
pause 200
wend
'十字キー　ここから
'上の矢印　または、十字キー上
if ((y = -1) or (key$ = chr$(30))) then
select case No
'No=-1:okのとき:初期の状態
'0kボタンから３に移動
'上に行く 処理
case -1:
No=3:sp_on 12,1:sp_on 14,0
pause 200:goto Buka_Input_Born_Day2:
'選択肢:3
'3ボタンから 6に移動
case 3:
No=6:sp_on 12,0:sp_on 11,1
pause 200:goto Buka_Input_Born_Day2:
'6ボタンから ９に移動
case 6:
No=9:sp_on 10,1:sp_on 11,0
pause 200:goto Buka_Input_Born_Day2:
'6ボタンから ９に移動　ここまで
'9で上を押して何もしない
case 9:
'何もしない
No=9
pause 200:goto Buka_Input_Born_Day2:
'9で上を押しても何もしない　ここまで
'上　 0ボタンから2ボタン
'sp_on 6,1:1
'sp_on 8,1:5
'sp_on 7,1:7
case 0:
No=2:sp_on 13,0:sp_on 9,1:
pause 200:goto Buka_Input_Born_Day2:
'上  0ボタンから2ボタン　ここまで
'2から５になる 上
case 2:
No=5:sp_on 8,1:sp_on 9,0:
pause 200:goto Buka_Input_Born_Day2:
case 5:
No=8:sp_on 7,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Day2:
case 8:
pause 200:goto Buka_Input_Born_Day2:
case 1:
No=4:sp_on 5,1:sp_on 6,0
pause 200:goto Buka_Input_Born_Day2:
case 4:
No=7:sp_on 4,1:sp_on 5,0
pause 200:goto Buka_Input_Born_Day2:
case 7:
pause 200:goto Buka_Input_Born_Day2:
end select
endif
'左３　ここまで
'下の矢印
'中央 2
if ((y=1) or (key$ = chr$(31))) then
select case No
'9から６に下げる
case 9:
No=6:sp_on 11,1:sp_on 10,0
pause 200:goto Buka_Input_Born_Day2:
'6から３に下げる
case 6:
No=3:sp_on 12,1:sp_on 11,0
pause 200:goto Buka_Input_Born_Day2:
'3から０ｋに変える
case 3:
No=-1:sp_on 14,1:sp_on 12,0
pause 200:goto Buka_Input_Born_Day2:
'Okから下のボタンを押しても何もしない
case -1:
pause 200:goto Buka_Input_Born_Day2:
case 8:
No=5:sp_on 8,1:sp_on 7,0
pause 200:goto Buka_Input_Born_Day2:
case 5:
No=2:sp_on 9,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Day2:
case 2:
No=0:sp_on 13,1:sp_on 9,0
pause 200:goto Buka_Input_Born_Day2:
case 0:
pause 200:goto Buka_Input_Born_Day2:
case 7:
No=4:sp_on 5,1:sp_on 4,0
pause 200:goto Buka_Input_Born_Day2:
case 4:
No=1:sp_on 6,1:sp_on 5,0
pause 200:goto Buka_Input_Born_Day2:
case 1:
pause 200:goto Buka_Input_Born_Day2:
end select
endif
'左へボタン 十字キー　左　or 　カーソル左
if ((y2 = -1) or (key$ = chr$(29))) then
select case No
'Ok ボタン  Okから　左　０に行く
case -1:
No=0:sp_on 13,1:sp_on 14,0
pause 200:goto Buka_Input_Born_Day2:
'0 ボタン  左　何もしない
case 0:
pause 200:goto Buka_Input_Born_Day2:
case 3:
No=2:sp_on 9,1:sp_on 12,0:
pause 200:goto Buka_Input_Born_Day2:
case 2:
No=1:sp_on 6,1:sp_on 9,0:
pause 200:goto Buka_Input_Born_Day2:
case 1:
pause 200:goto Buka_Input_Born_Day2:
case 6:
No=5:sp_on 8,1:sp_on 11,0
pause 200:goto Buka_Input_Born_Day2:
case 5:
No=4:sp_on 5,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Day2:
case 4:
pause 200:goto Buka_Input_Born_Day2:
case 9:
No=8:sp_on 7,1:sp_on 10,0
pause 200:goto Buka_Input_Born_Day2:
case 8:
No=7:sp_on 4,1:sp_on 7,0
pause 200:goto Buka_Input_Born_Day2:
case 7:
pause 200:goto Buka_Input_Born_Day2:
end select
endif
'右  十字キー　右　or カーソル　右
if ((y2 = 1) or (key$ = chr$(28))) then
select case No
'0ボタンからokボタン右に移動
case 0:
No=-1:sp_on 14,1:sp_on 13,0
pause 200:goto Buka_Input_Born_Day2:
'0ボタンからokボタン 右に移動　ここまで
'OKボタンで右を押して何もしない
case -1:
pause 200:goto Buka_Input_Born_Day2:
case 1:
No=2:sp_on 9,1:sp_on 6,0
pause 200:goto Buka_Input_Born_Day2:
case 2:
No=3:sp_on 12,1:sp_on 9,0
pause 200:goto Buka_Input_Born_Day2:
case 3:
pause 200:goto Buka_Input_Born_Day2:
case 4:
No=5:sp_on 8,1:sp_on 5,0
pause 200:goto Buka_Input_Born_Day2:
case 5:
No=6:sp_on 11,1:sp_on 8,0
pause 200:goto Buka_Input_Born_Day2:
case 7:
No=8:sp_on 7,1:sp_on 4,0
pause 200:goto Buka_Input_Born_Day2:
case 8:
No=9:sp_on 10,1:sp_on 7,0
pause 200:goto Buka_Input_Born_Day2:
case 9:
pause 200:goto Buka_Input_Born_Day2:
case 6:
pause 200:goto Buka_Input_Born_Day2:
end select
'Okから右ボタンを押して何もしない ここまで
endif
'十字キー　ここまで
'右の丸ボタンを押したとき
if ((bg = 2) or (key$ = chr$(13))) then
'count :決定ボタンを押した回数
select case (count)
'1桁目入力
case 0:
count = 1:
if (No = -1) then
'1桁目　OKでは何もしない
'goto check:
No=0
else
'ok以外のボタンを押したとき
buf_buka_day = No:buf_buka_Day$ = str$(No)
if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
buf_buka_Day$ = str$(No) + "*"
endif
a=No
buf_Buka_Born_Day(2) = buf_buka_day
locate 1,3
print"                                      "
color RGB(255,255,255)
locate 1,3
print "部下の生まれた日(1日~31日):" + buf_buka_Day$
endif
check2:
if (No >= 1 and No <= 9) then
sp_on 14,0
goto Buka_Input_Born_Day2:
else
sp_on 14,0
goto Result_Business_Aisyou:
end
endif
case 1:
'10未満の数字ボタン+okボタン or 2桁目の数字ボタン
count = 2:
'locate 2,3
'color RGB(255,255,255)
'print "生まれた日(1日~31日):";buf_Day$
'Okボタンを押したときの処理
'入力値　10未満のとき
'c = buf_day
if (No = -1) then
'c=buf_day
' buf_day = c
'buf_Day$ = str$(buf_day)
'10以下のとき
No=0
if (buf_day < 10) then
sp_on 14,0
goto Result_Business_Aisyou:
end
endif
else
sp_on 14,0
'c=No
buf_buka_day = a * 10 + No
buf_buka_Day$ = str$(buf_buka_day)
buf_Buka_Born_Day(2) = buf_buka_day
locate 0,3
color Rgb(255,255,255)
print "                                       "
locate 1,3
print "部下の生まれた日(1日~31日):" + buf_buka_Day$
goto Buka_Input_Born_Day2:
endif
'生まれた日　2桁目の数字　or 1桁の数字 + ok
case 2:
count=0
'c=val(buf_Day$)
'buf_day=c*10+No
'buf_Day$=str$(buf_day)
'day=buf_day
'locate 2,3
'print "生まれた日(1日〜31日):";buf_Day$
'No=-1:ok ボタンを押したとき
if (No = -1) then No=0
if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
sp_on 14,0
goto Result_Business_Aisyou:
else
goto Buka_Input_Born_Day2:
endif
'Okボタン以外を押したとき
else
c=val(buf_buka_Day$)
buf_buka_day = c * 10 + No
buf_buka_Day$ = str$(buf_buka_day)
locate 1,3
print "                "
locate 1,3
print "生まれた日(1日~31日):"+buf_buka_Day$
goto Buka_Input_Born_Day2:
'endif
case 3:
count=4
'c=val(buf_day$)
'buf_day=c*10+No
'buf_day$=str$(buf_day)
'locate 2,3
'print "生まれた日を入れてください:";buf_day$
'year=val(buf_year$)
if (No = -1) then
'goto Buka_Input_Born_Day:
sp_on 14,0:
goto complate_jyoushi:
else
goto Buka_Input_Born_Month2:
endif
'case 4:
'bufyear=buf_year
'if (No=-1) then
'buf_day = val(buf_day$)
'bufday = buf_day
'sp_on 14,0
goto complate_jyoushi:
'else
'goto Buka_Input_Born_Day2:
'endif
end select
endif
if (bg2=2) then
select case count2
case 0:
if (No=-1) then
'buf_day=0:buf_Day$="**"
if (buf_buka_day >= 1 and buf_buka_day <= 31) then
count=0
buf_buka_day=0:buf_buka_Day$="**"
goto rewrite_day3:
else
buf_buka_day=0:buf_buka_Day$="**"
ui_msg"値が範囲外です"
endif
goto rewrite_day3:
else
goto rewrite_day3:
endif
rewrite_day3:
locate 2,3
color rgb(255,255,255)
print "                                      "
locate 1,3
print "生まれた日(1日~31日):"+buf_buka_Day$
goto Buka_Input_Born_Day2:
end select
endif
'3.部下の生まれた日'
'部下'
'--------------------------------------------'
'ビジネの相性　結果表示
Result_Business_Aisyou:
cls 3:init "kb:4"
a=0:b=0:c=0:d=0:e=0:f=0
bg=0:key$=""
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
gload Gazo$ + "Screen1.png",0,0,0
gload Gazo$ + "downscreen.png",0,0,800
'****************************************************************************************************
'WUXG(1920x1200)の時ここから
'****************************************************************************************************
sp_on 14,0
d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
buf_Buka = Kabara_Num(d,e,f)
a_2 = buf_Buka
Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
locate 0,1
color rgb(255,0,0)
print "●.相性診断結果１"
locate 0,4:
color rgb(255,255,255)
print "1.上司の名前:";buffer_name$(0)
locate 0,6
print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
locate 0,8
print "2.部下の名前:";buffer_name$(1)
locate 0,10
print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
locate 0,12
print "3.上司と部下の相性:";Result_Aisyou$
locate 1,15
color rgb(0,0,0)
print "丸ボタン右:相性の説明,丸ボタン左:再診断"
while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
bg = strig(1)
key$ = inkey$
bg2 = strig(0)
pause 5
wend
if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
if (bg2 = 2) then
cls 3:goto Business_Aishou_Input_1_parson:
endif
'ビジネスの相性占い　結果2　説明
Result_Business_Aisyou2:
cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
gload Gazo$ + "Screen1.png",0,0,0
locate 0,1
color rgb(255,0,0)
print "●.相性の説明"
color rgb(255,255,255)
locate 0,4
print "相性:";Result_Aisyou$
locate 0,6:
print "相性の説明:";buf$
locate 0,15
color rgb(0,0,0)
print "右の丸ボタン:トップ,左のボタン:前の画面"
while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
bg = strig(1)
bg2 = strig(0)
key$ = inkey$
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
if ((bg2 = 2)) then goto Result_Business_Aisyou:
'Birds Eye Menu List
Result_Birtheye_List1:
'dim List$(4) Topに定義
List$(0) = "1.バーズアイグリッドをもう一度診断"
List$(1) = "2.診断結果"
List$(2) = "3.データーを保存"
List$(3) = "4.トップ画面に戻る"
Birds_List1 = ui_select("List$","Menu")
select case (Birds_List1)
case 0: '1.もう一度診断
for i=0 to 8
buffer(i)=0
next i
goto Input_name1_Birdseye:
case 1: '2.次へ行く
gosub BirdsEye_Result2:
case 2: '3.データーを保存
ui_msg "データーを保存します"
goto BirdsEye_Save_data:
case 3: '4.トップに戻る
for i=0 to 8
buffer(i)=0
next i
goto Main_Screen:
end select
'BirdsEye Data Save
BirdsEye_Save_data:
if dir$(Save_data_Birdseye$) = "" then
Mkdir Save_data_Birdseye$
endif
open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
close #1
ui_msg "データーを保存しました"
goto Result_Birtheye_List1:
'return
'自作関数 ここから
BirdsEyeGrid_Entry:
cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
'****************************************************************************************************
'WUXG(1920x1200)の時 1280x 800の時共通　ここから
'****************************************************************************************************
gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
'****************************************************************************************************
'WUXG(1920x1200)の時 1280x 800の時共通 ここまで
'****************************************************************************************************
font FONT
if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
locate 1,4:print "右の丸:メイン画面へ行く"
else
flag=1
open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
while (eof(1)=0)
line input #1,a$
n = n + 1
wend
close #1
'endif
talk "登録件数は"+str$(n)+"件です。"
if ((size(0)<=1280) and (size(1)<=800)) then
'*****************************************************************************************************
'1280x800の時　ここから
'*****************************************************************************************************
locate 1,3:print "登録件数は";str$(n);"件です"
locate 1,6:print "左の丸：メイン画面へ行く"
'*****************************************************************************************************
'1280x800の時　ここまで
'*****************************************************************************************************
else
'*****************************************************************************************************
'WUXG(1920x1280)の時　ここから
'*****************************************************************************************************
locate 1,2:print "登録件数は";str$(n);"件です"
locate 1,4:print "左の丸：メイン画面へ行く"
'*****************************************************************************************************
'WUXG(1920x1280)の時　ここまで
'*****************************************************************************************************
endif
endif
Entry_Count:
while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
key$ = inkey$
bg = strig(1)
bg2 = strig(0)
pause 200
wend
if ((bg = 2) or (key$ = chr$(13))) then
if (n = 0) then
'登録件数　０件のとき　メイン画面に行く
goto Main_Screen:
else
'登録件数1件以上　次へ行く
'ここを変更する
goto Entry_List:
endif
endif
if (bg2 = 2) then
if (n > 0) then
goto Main_Screen:
else
goto Entry_Count:
endif
endif
Entry_List:
cls 3:play"":color rgb(255,255,255):init "kb:4"
if ((size(0)<=1280) and (size(1)<=800)) then
gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x680_20240222.png",0,0,0
else
gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
endif
dim buffer_List$(11,n)
'ファイル読み込み ここから
open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
for i=0 to 10
for j=0 to n-1
input #1,a$
buffer_List$(i,j)=a$
next j
next i
close #1
'erase buffer_List$
'color rgb(255,255,255)
i=0:key$="":bg=0:init"kb:4":bg2=0
while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
key$ = inkey$
bg = strig(1)
bg2=strig(0)
pause 200
wend
color rgb(0,0,0)
locate 1,15:print "次へ"
'show_ListData:
'j=0
repeat (j=0)
show_ListData:
cls
color rgb(255,255,255)
locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
'1の文字データー
locate 4,14:print buffer_List$(2,j)
'2の文字データー
locate 4,9:print buffer_List$(3,j)
'3の文字データー
locate 4,5:print buffer_List$(4,j)
'4の文字データー
locate 11,14:print buffer_List$(5,j)
'5の文字データー
locate 11,9:PRINT buffer_List$(6,j)
'6の文字データー
locate 11,5:print buffer_List$(7,j)
'7の文字データー
locate 16,14:print buffer_List$(8,j)
'8の文字データー
locate 16,9:print buffer_List$(9,j)
'9の文字データー
locate 16,5:print buffer_List$(10,j)
color rgb(0,0,0)
locate 1,15:print "右の丸：次へ"
if (bg=2 or key$=chr$(13)) then
j=j+1
endif
if (bg2=2) then
goto Main_Screen:
endif
until (j=n)
'erase buffer_List$:
goto show_ListData:
'ファイル読み込み　ここまで
func read_explain$(ba$)
d$=""
buf_String$=""
if ba$="A" then
open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
line input #1,a$
a1$=mid$(a$,1,12)
a2$=mid$(a$,13,17)
a3$=mid$(a$,30,17)
a4$=mid$(a$,47,18)
a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
buf_String$ = a5$
close #1
endif
if ba$="B"  then
open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
line input #1,b$
b1$=mid$(b$,1,15)
b2$=mid$(b$,16,21)
'b3$=mid$(b$,33,3)
b4$ = b1$ + chr$(13) + b2$ + chr$(13)
buf_String$ = b4$
close #1
endif
if ba$="C"  then
open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
line input #1,c$
c1$ = Mid$(c$,1,15)
c2$ = Mid$(c$,16,33)
c3$ = c1$ + chr$(13) + c2$
buf_String$ = c3$
close #1
endif
if ba$="D" then
open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
line input #1,d$
d1$=mid$(d$,1,15)
d2$=mid$(d$,16,22)
d3$=mid$(d$,38,7)
d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
buf_String$ = d4$
close #1
endif
if ba$="E"  then
open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
line input #1,e$
e1$=Mid$(e$,1,16)
e2$=Mid$(e$,17,16)
e3$=Mid$(e$,33,12)
e4$=Mid$(e$,45,17)
e5$=Mid$(e$,62,17)
e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
buf_String$ = e6$
close #1
endif
if ba$="F" then
'改行を追加して表示を調整
open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
line input #1,f$
f1$=Mid$(f$,1,15)
f2$=Mid$(f$,16,12)
buf_String$ = f1$+chr$(13)+f2$
close #1
endif
if ba$="G" then
open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
line input #1,g$
g1$ = mid$(g$,1,16)
g2$ = mid$(g$,17,18)
g3$ = mid$(g$,36,21)
g4$ = mid$(g$,56,6)
g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
buf_String$ = g5$
close #1
endif
if ba$="H" then
open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
line input #1,h$
h1$=Mid$(h$,1,17)
h2$=Mid$(h$,18,21)
h3$=Mid$(h$,39,20)
h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
buf_String$ = h$
close #1
endif
if ba$ = "I" then
open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
line input #1,i$
i1$=Mid$(i$,1,10)
i2$=Mid$(i$,11,13)
i3$=Mid$(i$,25,16)
i$=i1$+chr$(13)+i2$+chr$(13)+i3$
buf_String$ = i$
close #1
endif
buffer$ = buf_String$
endfunc buffer$
'カバラ数（数秘番号を求める）
func Kabara_Num(buffer_Year,month,day)
'=============================
'a1:4桁のうちの1桁目を求める
'例 a1:1234の4が1桁目
'a2:4桁のうちの2桁目を求める
'例:a2:1234の3が2桁目
'a3:4桁のうちの3桁目を求める
'例 a3:1234の2が3桁目
'a4:4桁のうちの4桁目を求める
'例 a4:1234の1が4桁目
'==============================
a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
Year = buffer_Year
'処理1　整数部分を取り出す。
a4 = fix(Year / 1000)
a3 = fix(Year / 100) - (a4 * 10)
a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
'処理　２　取り出した整数部分を足す。
a_ = a1 + a2 + a3 + a4 +month + day
'a1=0:a2=0:a3=0:a4=0
if ((a_ = 11) or (a_ > 1 and a _< 9)) then
buffer = a_
'else
goto recomp2:
'if (a_ = 10) then
'  buffer = 1
endif
recomp2:
a5=0:a6=0
a5 = fix(a_ / 10)
a6 = (a_) - (a5 * 10)
a_ = a5 + a6
if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
'結果に行く
goto Res2:
'  if ((a_>11) and (a_<99)) then
else
'再度計算
goto recomp2:
endif
'     a1 = fix(a_ / 10)
'     a2 = a_ - (a1 * 10)
'     a_ = a1 + a2
'     buffer = a_
'endif
'else
'    bffer = a_
'endif
'endif
'else
'talk "プログラムを終了します。"
'end
'endif
'kabara = 10
Res2:
kabara = a_
endfunc kabara
func Kabara_Aisyou$(buff1,buff2)
a=0:b=0
'範囲　1~9
if ((buff1 > 0 and buff1 < 10)) then
a = buff1
else
Select case buff1
case 11:
buff1=9:a=buff1
case 22:
buff1=10:a=buff1
end select
endif
'範囲　１~９
if ((buff2 > 0 and buff2 < 10)) then
b = buff2
else
select case buff2
case 11:
buff2=9:b=buff2
case 12:
buff2=10:b=buff2
end select
endif
Aisyou$ = Buffer_Business_Aisyou$(a,b)
endfunc Aisyou$
'**********************************************************
'0-0.Top Screen Recheck: ここから
'**********************************************************
TopScreenRecheck:
color rgb(217,255,212)
locate 1,3:print  "                            "
locate 1,4:print  "                            "
locate 1,5
print "番号を選んでください"
locate 1,6:print  "                            "
locate 1,7:print  " :1.数秘術占い"
locate 1,8:print  "                            "
locate 1,9:print  "                            "
locate 1,10:print  "                            "
locate 1,10:print  " :2.設 定"
locate 1,11:print  "                            "
locate 1,12:print  "                            "
locate 1,13:print  " :3.ヘルプ"
locate 1,14:print  "                            "
locate 1,15:print  "                            "
locate 1,16:print  "                            "
locate 1,16:print  " :4.(プログラムを)終了する"
locate 1,17:print  "                            "
locate 1,18:print  "                            "
return
'**********************************************************
'0-0.Top Screen Recheck:　ここまで
'**********************************************************
'***********************************************************
'1-1.数秘術トップ画面 ここから
'**********************************************************
Kabara_TopScreen_Recheck:
color rgb(255,255,255):font FONT
locate 1,5
print "番号を選んでください" + chr$(13)
locate 1,7
print " :1.数秘術占い" + chr$(13)
locate 1,10
print " :2.バーズアイグリット" + chr$(13)
locate 1,13
print " :3.相性占い" + chr$(13)
locate 1,16
print " :4.トップ画面に戻る" + chr$(13)
return
'***************************************************************
'1-1.数秘術トップ画面　ここまで
'*************************************************************
'**********************************************************
'2-1 Setting Top Screen ここから
'**********************************************************
Setting_Recheck:
cls:color rgb(255,255,255)
locate 1,3:print  "                            "
locate 1,4:print  "                            "
locate 1,5:
print "番号を選んでください"
locate 1,6:print  "                            "
locate 1,7:
print " :1.トップ画面に戻る"
locate 1,8:print  "                            "
locate 1,9:print  "                            "
locate 1,10:
print " :2.バーズアイグリッドデーターリスト"
locate 1,11:print  "                            "
locate 1,12:print  "                            "
locate 1,13:
print " :3.未実装" + chr$(13)
locate 1,14:print  "                            "
locate 1,15:print  "                            "
locate 1,16:
print " :4.未実装" + chr$(13)
locate 1,17:print  "                            "
locate 1,18:print  "                            "
return
'**********************************************************
'2-1 Setting Top Screen ここまで
'**********************************************************
'**********************************************************
'3-1Help Top ReCheck ここから
'**********************************************************
Help_Top_ReCheck:
font FONT
color rgb(217,255,212)
locate 1,3:print  "                       "
locate 1,4:print  "                       "
locate 1,5:print "番号を選んでください"
locate 1,6:print  "                       "
'0
locate 1,7:print " :1.ルールの説明"
'1
locate 1,8:print  "                       "
locate 1,9:print  "                       "
locate 1,10:print " :2.バージョンの表示"
locate 1,11:print  "                      "
locate 1,12:print  "                      "
'2
locate 1,13:print " :3.参考文献"
locate 1,14:print  "                      "
locate 1,15:print  "                      "
'3
locate 1,16:print " :4.トップ画面に戻る"
return
'**********************************************************
'3-1.Help Top ReCheckここまで
'**********************************************************
'***********************************************************
'**********************************************************
Suhi_Rule_Screen_Recheck:
color rgb(255,255,255)
font FONT
locate 1,3:print  "                       "
locate 1,4:print  "                       "
locate 1,5
print "番号を選んでください"
locate 1,6:print  "                       "
locate 1,7:    '〇
print " :1.数秘術のやり方"
locate 1,8:print  "                       "
locate 1,9:print  "                       "
locate 1,10:   '〇
print " :2.バーズアイグリットの説明"
locate 1,11:print  "                       "
locate 1,12:print  "                       "
locate 1,13:    '〇
print " :3.トップ画面に戻る"
locate 1,14:print  "                       "
locate 1,15:print  "                       "
return
'=============================
'自作関数 ここまで
'1.数秘術　トップ画面
'
'Data_eraseを一番最後に持ってくる
'=============================
Data_erase:
'メモリー削除
erase buf_male_year
erase buf_male_month
erase buf_male_Born_Day
erase buf_feMale_Born_Day
erase buf_female_day
erase buf_name1$
erase buf_name2$
erase buffer
erase buf_chart$
erase Buffer_Business_Aisyou$
erase buffer_name$
'上司の誕生日
erase buf_Jyoushi_Born_Day
'部下の誕生日
erase buf_Buka_Born_Day
erase buf_year
erase buf_month
erase buf_day
'フォーカスライン
erase Forcus1_buffer$
erase Forcus2_buffer$
erase Forcus3_buffer$
'erase buffer_List$
'Birds eye List Data 配列
erase List$
buffer$ = ""
buf$ = ""
buf_year$ = ""
buf_Jyoushi_Kabara_Num = 0
buf_Buka_Kabara_Num = 0
count = 0
buf_Month$ = ""
buf_Day$ = ""
b=0
c=0
No=0
count=0
return
