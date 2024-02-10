100 '(プログラムを)終了するを選択
110 cls 3
120 'AC.2019
130 '数秘術占い 2019.08.16
140 '改変履歴
150 'AC.2021
160 '"2021.03.31 α版 画面背景アップデート"
170 '"2021.04.02 β版 更にアップデート音声追加"
180 '"2021.04.03 β2版 画面表示拡張"
190 'AC.2023
200 '"2023.05.20 β3版　入力方式拡張"
210 'Version 更新履歴
220 '2023.06.04:Ver100_20230604
230 '2023.06.11:Ver101_20230611
240 '2023.06.18:Ver102_20230618
250 '2023.06.25:Ver103_20230625
260 '2023.07.02:Ver104_20230702
270 '2023.07.09:Ver105_20230709
280 '2023.07.16:Ver106_20230716
290 '2023.07.23:Ver107_20230723
300 '2023.07.30:Ver108_20230730
310 '2023.08.06:Ver109_20230806
320 '2023.08.13:Ver110_20230813
330 '2023.08.20:Ver111_20230820
340 '2023.08.27:Ver112_20230827
350 '2023.09.03:Ver113_20230903
360 '2023.09.10:Ver114_20230910
370 '2023.09.17:Ver115_20230917
380 '2023.09.24:Ver116_20230924
390 '2023.10.01:Ver117_20231001
400 '2023.10.08:Ver118_20231008
410 '2023.10.15:Ver119_20231015
420 '2023.10.22:Ver120_20231022
430 '2023.10.29:Ver121_20231029
440 '2023.11.05:Ver122_20231105
450 '2023.11.12:Ver123_20231112
460 '2023.11.19:Ver124_20231119
470 '2023.11.26:Ver125_20231126
480 '2023.12.03:Ver126_20231203
490 '2023.12.10:Ver127_20231210
500 '2023.12.17:Ver128_20231217
510 '2023.12.24:Ver129_20231224
520 '2023.12.31:Ver130_20231231
530 'AC.2024.01(Jan)
540 '2024.01.07:Ver131_20240107
550 '2024.01.14:Ver132_20240114
560 '2024.01.21:Ver133_20240121
570 '2024.01.28:Ver134_20240128
580 'AC.2024.02(Feb)
590 '2024.02.04:Ver136_20240204
600 '2024.02.11:Ver135_20240211
610 Version$ = "Ver:1.3.6_20240211"
620 'Gazo Folder Japan
630 Gazo$ = "./data/Picture/"
640 'Gazo Folder English
650 Gazo_Eng$ = "./data/Picture/English/"
660 'Voice Folder 2023
670 Voice$ = "./data/Voice/Voice/"
680 'BirtheyeChart Data:20230626
690 Birth_eye_chart$ = "./data/chart_data/"
700 'Data Folder
710 Data$ = "./data/data/"
720 'Business Aisyou 結果説明保存フォルダ
730 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
740 'Save BirdsEyeGrit List Folder
750 Save_data_Birdseye$ = "./data/Parsonal_data/"
760 '変数定義 パート
770 b=0:c=0:n=0
780 'dim buffer_List$(11,1)
790 dim buf_name1$(10),buf_name2$(10)
800 dim buffer(9),buf_chart$(26,2)
810 'ビジネスの相性　データー
820 dim Buffer_Business_Aisyou$(12,12)
830 '男女の相性
840 dim Buffer_Bitween_sexes_Aisyou$(12,12)
850 '生れた年代
860 dim buf_year(4):buf_year$ = ""
870 dim buf_month(2)
880 dim buf_day(2)
890 'フォーカスライン　配列
900 dim Forcus1_buffer$(3)
910 dim Forcus2_buffer$(3)
920 dim Forcus3_buffer$(2)
930 '生れた月
940 buf_Month$ = ""
950 '生れた日
960 buf_Day$ = ""
970 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
980 dim buffer_name$(3)
990 '1-1.上司の誕生日(数値データー)
1000 dim buf_Jyoushi_Born_Day(3)
1010 '1-2.上司の数秘ナンバー(数値データー)
1020 buf_Jyoushi_Kabara_Num = 0
1030 '2-1.部下の誕生日(数値データー)
1040 dim buf_Buka_Born_Day(3)
1050 '2-2.部下の数秘ナンバー(数秘データー)
1060 buf_Buka_Kabara_Num = 0
1070 dim buf_male_year(4)
1080 dim buf_male_month(2)
1090 dim buf_male_Born_Day(2)
1100 dim buf_feMale_Born_Day(2)
1110 dim buf_female_day(2)
1120 count=0
1130 'Birds Eye List 配列
1140 dim List$(6)
1150 '部下の数秘ナンバー
1160 'File 読み込み
1170 '1.ビジネスの相性占い
1180 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1190 for i=0 to 11
1200 for j=0 to 11
1210 input #1,a$
1220 Buffer_Business_Aisyou$(j,i) = a$
1230 next j
1240 next i
1250 close #1
1260 '2.男女の相性占い
1270 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1280 for i=0 to 11
1290 for j=0 to 11
1300 input #1,a$
1310 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1320 next j
1330 next i
1340 close #1
1350 '2.Birth Eye chart$
1360 '2.バーズアイグリッドを読み込む
1370 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1380 for j=0 to 25
1390 for i=0 to 1
1400 input #1,a$
1410 buf_chart$(j,i) = a$
1420 next i
1430 next j
1440 close #1
1450 'File 読み込み　ここまで
1460 'Main画面
1470 screen 1,1,1,1
1480 Main_Screen:
1490 cls 3:
1500 No=0
1510 gload Gazo$ + "Selection.png",1,5,200
1520 gload Gazo$ + "Selection.png",1,5,300
1530 gload Gazo$ + "Selection.png",1,5,400
1540 gload Gazo$ + "Selection.png",1,5,500
1550 '4
1560 gload Gazo$ + "Selection.png",1,35,300
1570 '5
1580 gload Gazo$ + "Selection.png",1,35,400
1590 '6
1600 gload Gazo$ + "Selection.png",1,35,500
1610 '7
1620 gload Gazo$ + "Selection.png",1,70,300
1630 '8
1640 gload Gazo$ + "Selection.png",1,70,400
1650 '9
1660 gload Gazo$ + "Selection.png",1,70,500
1670 '10
1680 gload Gazo$ + "Selection.png",1,110,300
1690 '11
1700 gload Gazo$ + "Selection.png",1,110,400
1710 '12
1720 gload Gazo$ + "Selection.png",1,110,500
1730 '13:0
1740 gload Gazo$ + "Selection.png",1,150,400
1750 gload Gazo$ + "Selection.png",1,200,400
1760 if ex_info$(1) <> "JP" then
1770 '英語　トップ画面
1780 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
1790 put@(0,0),1280,800,(1080,800)
1800 else
1810 '**********************************************************
1820 '［機能］　グラフィックバッファ（2番目の座標）からグラフィック画面（1番目の座標）へ画像データを引き出します。
1830 '
1840 '　［書式］　PUT@(x1,y1),w1,h1,(x2,y2)[,[w2],[h2][,描画モード]]
1850 '　［説明］
1860 '　　w1,w2=横サイズ h1,h2= 縦サイズ
1870 '　　転写元と転写先のサイズが異なる場合、拡大縮小描画されます。
1880 '　　各種重ね合わせの方式は pen命令で設定することができます。
1890 '　　<描画モード>の指定で次の選択ができます。
1900 '　　 0. グラフィックバッファからグラフィック画面への描画。
1910 '　　 1. グラフィック画面からグラフィック画面への描画。
1920 '　　 2. グラフィックバッファからグラフィックバッファへの描画。
1930 '***********************************************************'
1940 '日本語トップスクリーン
1950 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1960 'put@(0,0),1280,800,(1080,800)
1970 endif
1980 '選択肢の丸
1990 gload Gazo$ + "downscreen.png",0,0,800
2000 sp_def 0,(5,300),32,32
2010 sp_def 1,(5,400),32,32
2020 sp_def 2,(5,500),32,32
2030 sp_def 3,(5,600),32,32
2040 '1
2050 sp_def 4,(35,300),32,32
2060 '2
2070 sp_def 5,(35,400),32,32
2080 '3
2090 sp_def 6,(35,500),32,32
2100 '4
2110 sp_def 7,(70,300),32,32
2120 '5
2130 sp_def 8,(70,400),32,32
2140 '6
2150 sp_def 9,(70,500),32,32
2160 '7
2170 sp_def 10,(110,300),32,32
2180 '8
2190 sp_def 11,(110,400),32,32
2200 '9
2210 sp_def 12,(110,400),32,32
2220 sp_def 13,(150,400),32,32
2230 sp_def 14,(200,400),32,32
2240 'Sprite OFF
2250 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
2260 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
2270 sp_put 0,(5,300),0,0
2280 sp_put 1,(5,400),1,0
2290 sp_put 2,(5,500),2,0
2300 sp_put 3,(5,600),3,0
2310 '1
2320 sp_put 4,(130,300),4,0
2330 '2
2340 sp_put 5,(130,400),5,0
2350 '3
2360 sp_put 6,(130,500),6,0
2370 '4
2380 sp_put 7,(340,300),7,0
2390 '5
2400 sp_put 8,(340,400),8,0
2410 '6
2420 sp_put 9,(340,500),9,0
2430 '7
2440 sp_put 10,(540,300),10,0
2450 '8
2460 sp_put 11,(540,400),11,0
2470 '9
2480 sp_put 12,(540,500),12,0
2490 '
2500 sp_put 13,(340,600),13,0
2510 sp_put 14,(540,600),14,0
2520 Main_Top:
2530 'Main Message 2023.06.07
2540 '再生を止める
2550 play ""
2560 init "kb:4"
2570 'font 32:
2580 font 40
2590 if ex_info$(1) <> "JP" then
2600 '1.英語表示ターム
2610 print chr$(13) + chr$(13) + chr$(13)
2620 color rgb(217,255,212)
2630 print "Please Select Number?" + chr$(13)+chr$(13)
2640 '0
2650 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
2660 '1
2670 print " :2.Setting" + chr$(13)+chr$(13)
2680 '2
2690 print " :3.Help" + chr$(13)
2700 '3
2710 print " :4.(Finishing)Program" + chr$(13)
2720 COLOR rgb(0,0,0):No=0
2730 locate 1,18
2740 print "                                        "
2750 locate 1,18
2760 print "1.It has Selected Kabara Fortune Telling"
2770 '1.英語表示ターム
2780 '---------音声 日本語　英語に変える----------------
2790 'play Voice$ + "Voice_Main_Message_20230607.mp3"
2800 '---------音声 日本語　英語に変える----------------
2810 else
2820 '2.日本語表示ターム
2830 font 48
2840 print chr$(13) + chr$(13) + chr$(13)
2850 color rgb(217,255,212)
2860 print "番号を選んでください" + chr$(13)
2870 '0
2880 print " :1.数秘術占い" + chr$(13)
2890 '1
2900 print " :2.設 定" + chr$(13)
2910 '2
2920 print " :3.ヘルプ" + chr$(13)
2930 '3
2940 print " :4.(プログラムを)終了する" + chr$(13)
2950 COLOR rgb(0,0,0):No=0
2960 locate 1,15
2970 print "                                       "
2980 locate 1,15:print "1.数秘術占いを選択"
2990 play Voice$ + "Voice_Main_Message_20230607.mp3"
3000 '2.日本語表示ターム
3010 endif
3020 Main_Screen_Select:
3030 y = 0:key$ = "":bg = 0:bg2=0
3040 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
3050 y = stick(1)
3060 '"May (2023)"
3070 key$ = inkey$
3080 bg = strig(1)
3090 bg2 = strig(0)
3100 pause 200
3110 wend
3120 '1.
3130 'ジョイパッドのソース ソート　ここから
3140 'カーソル　下 or 十字キー下
3150 if ((y = 1) or (key$ = chr$(31))) then
3160 select case No
3170 case 0:
3180 '1
3190 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3200 case 1:
3210 '2
3220 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3230 case 2:
3240 '3
3250 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3260 case 3:
3270 '0
3280 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
3290 end select
3300 endif
3310 '2.
3320 'カーソル　上　or 十字キー  上
3330 if ((y = -1) or (key$ = chr$(30))) then
3340 select case No
3350 case 0:
3360 '3
3370 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3380 case 1:
3390 '0
3400 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
3410 case 2:
3420 '1
3430 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3440 case 3:
3450 '2
3460 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3470 end select
3480 endif
3490 'ジョイパッド　ソース 部分　ここまで
3500 'ジョイパッド右　　or Enter key 決定
3510 if ((bg = 2) OR (key$ = chr$(13))) then
3520 select case No
3530 case 0:
3540 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
3550 case 1:
3560 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
3570 case 2:
3580 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
3590 case 3:
3600 play "":pause 200
3610 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
3620 end select
3630 endif
3640 if (bg2 = 2) then
3650 play "":pause 200
3660 play Voice$ + "Voice_Main_Message_20230607.mp3"
3670 goto Main_Screen_Select:
3680 endif
3690 'Version
3700 Version:
3710 cls 3:PLAY ""
3720 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3730 gload Gazo$ + "downscreen.png",0,0,800
3740 init"kb:4":font 32+8
3750 'talk"バージョン情報です"
3760 'Message :Version
3770 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3780 locate 0,3
3790 color rgb(0,0,255)
3800 print "・Title:数秘術占い";chr$(13)
3810 print "・" + Version$ + chr$(13)
3820 print "・Author:licksjp"+chr$(13)
3830 print "・E-mail:licksjp@gmail.com" + chr$(13)
3840 locate 0,12
3850 print "(C)licksjp All rights " + chr$(13)
3860 locate 7,13
3870 print "reserved since 2009"+chr$(13)
3880 locate 0,18
3890 color rgb(255,255,255)
3900 print "ジョイパッドの右を押してください"
3910 Versionn_Selection:
3920 bg = 0:key$ = "":bg2 = 0
3930 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3940 bg = strig(1)
3950 key$ = inkey$
3960 bg2 = strig(0)
3970 pause 200
3980 wend
3990 if ((bg = 2) or (key$ = chr$(13))) then
4000 cls 4:goto Main_Screen:
4010 endif
4020 if (bg2=2) then
4030 play "":pause 200
4040 play Voice$ + "Voice_Version_Message_20230607.mp3"
4050 goto Versionn_Selection:
4060 endif
4070 '1.数秘ナンバーを求める
4080 '誕生日入力(生れた年代)
4090 Input_Seireki:
4100 cls 3:play "":count=0:count2=0
4110 'No = -1:Okのとき
4120 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
4130 for i=0 to 3
4140 buf_year(i)=0
4150 next i
4160 gload Gazo$ + "Screen2.png",0,0,0
4170 gload Gazo$ + "downscreen.png",0,0,800
4180 'Init"kb:2"
4190 '音声ファイル再生 2023.06.07
4200 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
4210 font 48
4220 locate 0,1
4230 if ex_info$(1) <> "JP" then
4240 color rgb(255,255,255)
4250 color rgb(255,255,255)
4260 print "Input Born Year?" + chr$(13)
4270 color rgb(255,255,255)
4280 locate 2,3
4290 print "Your Born Year(4 dedgit for AC):" + buf_year$
4300 else
4310 '文字色：黒　 color rgb(0,0,0)
4320 color rgb(255,255,255)
4330 print "生まれた年代を入れて下さい" + chr$(13)
4340 color rgb(255,255,255)
4350 locate 2,3
4360 print "生まれた年代(西暦4桁):" + buf_year$
4370 endif
4380 '=============================
4390 'テンキーの色(1~９)　白 ,決定ボタン　青
4400 '=============================
4410 color rgb(255,255,255)
4420 'locate 4,6:print ":7"
4430 'locate 9,6:print ":8"
4440 'locate 12,6:print ":9"
4450 'locate 4,6
4460 'print ":7  :8  :9" + chr$(13)
4470 'color rgb(255,255,255)
4480 'locate 4,8
4490 'print ":4  :5  :6" + chr$(13)
4500 'color rgb(255,255,255)
4510 'locate 4,10
4520 'print ":1  :2  :3" + chr$(13)
4530 'locate 4,12
4540 'print "    :0"
4550 'locate 12,12
4560 'color rgb(255,0,0)
4570 'print ":Ok"
4580 sp_on 4,0: sp_on 5,0:sp_on 6,0
4590 sp_on 7,0:sp_on 8,0:sp_on 9,0
4600 sp_on 10,0:sp_on 11,0:sp_on 12,0
4610 sp_on 13,0:sp_on 14,1
4620 Input_Seireki2:
4630 key$="":bg=0:y=0:y2=0:bg2=0:
4640 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
4650 key$ = inkey$
4660 bg = strig(1)
4670 y = stick(1)
4680 y2 = stick(0)
4690 bg2 = strig(0)
4700 pause 200
4710 wend
4720 '十字キー　ここから
4730 '上の矢印　または、十字キー上
4740 if ((y = -1) or (key$ = chr$(30))) then
4750 select case No
4760 'No=-1:okのとき:初期の状態
4770 '0kボタンから３に移動
4780 '上に行く 処理
4790 case -1:
4800 No=3:sp_on 12,1:sp_on 14,0:beep
4810 pause 200:goto Input_Seireki2:
4820 '選択肢:3
4830 '3ボタンから 6に移動
4840 case 3:
4850 No=6:sp_on 12,0:sp_on 11,1:beep
4860 pause 200:goto Input_Seireki2:
4870 '6ボタンから ９に移動
4880 case 6:
4890 No=9:sp_on 10,1:sp_on 11,0:beep
4900 pause 200:goto Input_Seireki2:
4910 '6ボタンから ９に移動　ここまで
4920 '9で上を押して何もしない
4930 case 9:
4940 '何もしない
4950 No=9
4960 beep:pause 200:goto Input_Seireki2:
4970 '9で上を押しても何もしない　ここまで
4980 '上　 0ボタンから2ボタン
4990 'sp_on 6,1:1
5000 'sp_on 8,1:5
5010 'sp_on 7,1:7
5020 case 0:
5030 No=2:sp_on 13,0:sp_on 9,1:beep
5040 pause 200:goto Input_Seireki2:
5050 '上  0ボタンから2ボタン　ここまで
5060 '2から５になる 上
5070 case 2:
5080 No=5:sp_on 8,1:sp_on 9,0:beep
5090 pause 200:goto Input_Seireki2:
5100 case 5:
5110 No=8:sp_on 7,1:sp_on 8,0:beep
5120 pause 200:goto Input_Seireki2:
5130 case 8:
5140 beep:pause 200:goto Input_Seireki2:
5150 case 1:
5160 No=4:sp_on 5,1:sp_on 6,0:beep
5170 pause 200:goto Input_Seireki2:
5180 case 4:
5190 No=7:sp_on 4,1:sp_on 5,0:beep
5200 pause 200:goto Input_Seireki2:
5210 case 7:
5220 beep:pause 200:goto Input_Seireki2:
5230 end select
5240 endif
5250 '左３　ここまで
5260 '下の矢印
5270 '中央 2
5280 if ((y=1) or (key$ = chr$(31))) then
5290 select case No
5300 '9から６に下げる
5310 case 9:
5320 No=6:sp_on 11,1:sp_on 10,0:beep
5330 pause 200:goto Input_Seireki2:
5340 '6から３に下げる
5350 case 6:
5360 No=3:sp_on 12,1:sp_on 11,0:beep
5370 pause 200:goto Input_Seireki2:
5380 '3から０ｋに変える
5390 case 3:
5400 No=-1:sp_on 14,1:sp_on 12,0:beep
5410 pause 200:goto Input_Seireki2:
5420 'Okから下のボタンを押しても何もしない
5430 case -1:
5440 beep:pause 200:goto Input_Seireki2:
5450 case 8:
5460 No=5:sp_on 8,1:sp_on 7,0:beep
5470 pause 200:goto Input_Seireki2:
5480 case 5:
5490 No=2:sp_on 9,1:sp_on 8,0:beep
5500 pause 200:goto Input_Seireki2:
5510 case 2:
5520 No=0:sp_on 13,1:sp_on 9,0:beep
5530 pause 200:goto Input_Seireki2:
5540 case 0:
5550 beep:pause 200:goto Input_Seireki2:
5560 case 7:
5570 No=4:sp_on 5,1:sp_on 4,0:beep
5580 pause 200:goto Input_Seireki2:
5590 case 4:
5600 No=1:sp_on 6,1:sp_on 5,0:beep
5610 pause 200:goto Input_Seireki2:
5620 case 1:
5630 beep:pause 200:goto Input_Seireki2:
5640 end select
5650 endif
5660 '左へボタン 十字キー　左　or 　カーソル左
5670 if ((y2 = -1) or (key$ = chr$(29))) then
5680 select case No
5690 'Ok ボタン  Okから　左　０に行く
5700 case -1:
5710 No=0:sp_on 13,1:sp_on 14,0:beep
5720 pause 200:goto Input_Seireki2:
5730 '0 ボタン  左　何もしない
5740 case 0:
5750 beep:pause 200:goto Input_Seireki2:
5760 case 3:
5770 No=2:sp_on 9,1:sp_on 12,0:beep
5780 pause 200:goto Input_Seireki2:
5790 case 2:
5800 No=1:sp_on 6,1:sp_on 9,0:beep
5810 pause 200:goto Input_Seireki2:
5820 case 1:
5830 beep:pause 200:goto Input_Seireki2:
5840 case 6:
5850 No=5:sp_on 8,1:sp_on 11,0:beep
5860 pause 200:goto Input_Seireki2:
5870 case 5:
5880 No=4:sp_on 5,1:sp_on 8,0:beep
5890 pause 200:goto Input_Seireki2:
5900 case 4:
5910 beep:pause 200:goto Input_Seireki2:
5920 case 9:
5930 No=8:sp_on 7,1:sp_on 10,0:beep
5940 pause 200:goto Input_Seireki2:
5950 case 8:
5960 No=7:sp_on 4,1:sp_on 7,0:beep
5970 pause 200:goto Input_Seireki2:
5980 case 7:
5990 beep:pause 200:goto Input_Seireki2:
6000 end select
6010 endif
6020 '右  十字キー　右　or カーソル　右
6030 if ((y2 = 1) or (key$ = chr$(28))) then
6040 select case No
6050 '0ボタンからokボタン右に移動
6060 case 0:
6070 No=-1:sp_on 14,1:sp_on 13,0:beep
6080 pause 200:goto Input_Seireki2:
6090 '0ボタンからokボタン 右に移動　ここまで
6100 'OKボタンで右を押して何もしない
6110 case -1:
6120 pause 200:goto Input_Seireki2:
6130 case 1:
6140 No=2:sp_on 9,1:sp_on 6,0:beep
6150 pause 200:goto Input_Seireki2:
6160 case 2:
6170 No=3:sp_on 12,1:sp_on 9,0
6180 beep:pause 200:goto Input_Seireki2:
6190 case 3:
6200 beep:pause 200:goto Input_Seireki2:
6210 case 4:
6220 No=5:sp_on 8,1:sp_on 5,0:beep
6230 pause 200:goto Input_Seireki2:
6240 case 5:
6250 No=6:sp_on 11,1:sp_on 8,0:beep
6260 pause 200:goto Input_Seireki2:
6270 case 7:
6280 No=8:sp_on 7,1:sp_on 4,0:beep
6290 pause 200:goto Input_Seireki2:
6300 case 8:
6310 No=9:sp_on 10,1:sp_on 7,0:beep
6320 pause 200:goto Input_Seireki2:
6330 case 9:
6340 beep:pause 200:goto Input_Seireki2:
6350 case 6:
6360 beep:pause 200:goto Input_Seireki2:
6370 end select
6380 'Okから右ボタンを押して何もしない ここまで
6390 endif
6400 '十字キー　ここまで
6410 if ((bg=2) or (key$=chr$(13))) then
6420 select case count
6430 case 0:
6440 count=1
6450 if (No=-1) then
6460 count=0
6470 'Okボタンを押したとき
6480 goto Input_Seireki2:
6490 else
6500 '===================================
6510 'Okボタン以外が押されたとき  1桁目の入力
6520 '===================================
6530 count2=1
6540 if (No >= 1 and No <= 2) then
6550 buf_year$="":buf_year$ = str$(No)
6560 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
6570 if ex_info$(1) <> "JP" then
6580 n1= len("Input Born Year?(4 dedgit):")
6590 else
6600 n1 = len("生まれた年代(西暦4桁):")
6610 endif
6620 locate 2,3
6630 color rgb(255,255,255)
6640 if ex_info$(1) <> "JP" then
6650 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
6660 else
6670 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
6680 endif
6690 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
6700 'print "生まれた年代(西暦4桁):";buf_year2$
6710 print buf_Born_Year_line$
6720 goto Input_Seireki2:
6730 else
6740 count=0
6750 ui_msg"数字が範囲外になります。"
6760 buf_year$="":buf_year=0
6770 goto Input_Seireki2:
6780 endif
6790 endif
6800 case 1:
6810 count = 2
6820 if (No = -1) then
6830 count = 1
6840 goto Input_Seireki2:
6850 else
6860 count2 = 1
6870 b = val(buf_year$)
6880 buf_year = b * 10 + No
6890 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6900 locate 2,3
6910 color rgb(255,255,255)
6920 print "                                                                "
6930 locate 2,3
6940 if ex_info$(1) <> "JP" then
6950 print "Input Born Year(4 dedgit):";buf_year$
6960 else
6970 print "生まれた年代(西暦4桁):";buf_year2$
6980 endif
6990 'if (No = -1) then
7000 'count=1
7010 goto Input_Seireki2:
7020 endif
7030 case 2:
7040 count=3
7050 if (No=-1) then
7060 count =2
7070 goto Input_Seireki2:
7080 else
7090 b = val(buf_year$)
7100 buf_year = b*10 + No
7110 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
7120 locate 2,3
7130 color rgb(255,255,255)
7140 print "                                        "
7150 locate 2,3
7160 if ex_info$(1) <> "JP" then
7170 print "Input Born Year?(4 dedgit):";buf_year$
7180 else
7190 print "生まれた年代(西暦4桁):";buf_year2$
7200 endif
7210 goto Input_Seireki2:
7220 endif
7230 case 3:
7240 count=4
7250 if (No = -1) then
7260 count=3
7270 goto Input_Seireki2:
7280 else
7290 b = val(buf_year$)
7300 buf_year = b * 10 + No
7310 buf_year$ = str$(buf_year)
7320 locate 2,3
7330 color RGB(255,255,255)
7340 print "                                      "
7350 locate 2,3
7360 if ex_info$(1) <> "JP" then
7370 print "Input Born Year?(4 dedgit):";buf_year$
7380 else
7390 print "生まれた年代(西暦4桁):";buf_year$
7400 endif
7410 buf_year=val(buf_year$)
7420 'year=val(buf_year$)
7430 'if (No=-1) then
7440 'goto Input_Born_Month:
7450 'else
7460 goto Input_Seireki2:
7470 endif
7480 case 4:
7490 'bufyear=buf_year
7500 if (No = -1) then
7510 buf_year = val(buf_year$)
7520 bufyear = buf_year
7530 sp_on 14,0
7540 goto Input_Born_Month:
7550 else
7560 goto Input_Seireki2:
7570 endif
7580 end select
7590 endif
7600 '=========================
7610 'bg2　キャンセルボタン
7620 '=========================
7630 if (bg2 = 2) then
7640 select case count2
7650 case 0:
7660 'Okボタンを押したときの処理
7670 if (No = -1) then
7680 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
7690 'count = 0
7700 locate 2,3
7710 color rgb(255,255,255)
7720 print "                                      "
7730 locate 2,3
7740 if ex_info$(1) <> "JP" then
7750 print "Input Born Year?(4 dedgit):";buf_year$
7760 else
7770 print "生まれた年代（西暦4桁):";buf_year$
7780 endif
7790 '=============================
7800 'case 0:前の画面に戻る 数秘術トップメニュー
7810 '=============================
7820 sp_on 14,0:goto Kabara_TopScreen:
7830 else
7840 'count=0
7850 '(buf_year=0) then
7860 buf_year = 0:buf_year$ = string$(4,"*")
7870 goto Input_Seireki2:
7880 'endif
7890 endif
7900 case 1:
7910 if (No = -1) then
7920 count2 = 0:count = 0
7930 buf$=right$(buf_year$,1)
7940 if (val(buf$) >= 1 and val(buf$) <= 9) then
7950 buf_year$ = "****":buf_year=0
7960 color rgb(255,255,255)
7970 locate 0,3:
7980 print "                                      "
7990 locate 2,3
8000 if ex_info$(1) <> "JP" then
8010 print "Input Born Year(4 dedgit):";buf_year$
8020 else
8030 print "生まれた年代（西暦4桁):" + buf_year$
8040 endif
8050 goto Input_Seireki2:
8060 endif
8070 else
8080 endif
8090 end select
8100 endif
8110 end
8120 'Input"生れた年代(4桁,〜2025年):",year
8130 'if year > 2025 then goto Input_Seireki:
8140 'if year = 123 then cls 3:cls 4:goto Main_Screen:
8150 '"4桁目"
8160 'bufyear4 = fix(year / 1000)
8170 '"3桁目"
8180 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
8190 '"2桁目"
8200 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
8210 '"1桁目"
8220 'bufyear1 = fix((year - ((bufyear4*
8230 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
8240 '生れた月を入力
8250 Input_Born_Month:
8260 cls 3:play "":count=0:count2=0
8270 'No=-1:Okのとき
8280 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
8290 for i=0 to 1
8300 buf_month(i)=0
8310 next i
8320 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
8330 gload Gazo$ + "Screen2.png",0,0,0
8340 gload Gazo$ + "downscreen.png",0,0,800
8350 'Init"kb:2"
8360 if ex_info$(1) <> "JP" then
8370 else
8380 '音声ファイル再生 2023.06.07
8390 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
8400 endif
8410 font 48
8420 locate 0,1
8430 '文字色：黒　 color rgb(0,0,0)
8440 if ex_info$(1) <> "JP" then
8450 '英語パート
8460 '文字色:白
8470 color rgb(255,255,255)
8480 print "Input Born Month?(1~12):" + chr$(13)
8490 '文字色:白
8500 color rgb(255,255,255)
8510 locate 2,3
8520 '文字色:白
8530 print "Your Born Month?(1~12):";buf_Month$
8540 color rgb(255,255,255)
8550 else
8560 '日本語パート
8570 color rgb(255,255,255)
8580 print "生まれた月を入れて下さい" + chr$(13)
8590 '文字色:白
8600 color rgb(255,255,255)
8610 locate 2,3
8620 '文字色:白
8630 print "生まれた月(1月~12月):";buf_Month$
8640 color rgb(255,255,255)
8650 endif
8660 'locate 4,6:print ":7"
8670 'locate 9,6:print ":8"
8680 'locate 12,6:print ":9"
8690 'locate 4,6
8700 '文字色:赤
8710 'print ":7  :8  :9" + chr$(13)
8720 'color rgb(255,255,255)
8730 'locate 4,8
8740 'print ":4  :5  :6" + chr$(13)
8750 'color rgb(255,255,255)
8760 'locate 4,10
8770 'print ":1  :2  :3" + chr$(13)
8780 'locate 4,12
8790 'print "    :0"
8800 'locate 12,12
8810 'color rgb(255,0,0)
8820 'print ":Ok"
8830 sp_on 4,0: sp_on 5,0:sp_on 6,0
8840 sp_on 7,0:sp_on 8,0:sp_on 9,0
8850 sp_on 10,0:sp_on 11,0:sp_on 12,0
8860 sp_on 13,0:sp_on 14,1
8870 Input_Born_Month2:
8880 key$="":bg=0:y=0:y2=0:bg2=0
8890 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
8900 key$ = inkey$
8910 bg = strig(1)
8920 y = stick(1)
8930 y2 = stick(0)
8940 bg2 = strig(0)
8950 pause 200
8960 wend
8970 '十字キー　ここから
8980 '上の矢印　または、十字キー上
8990 if ((y = -1) or (key$ = chr$(30))) then
9000 select case No
9010 'No=-1:okのとき:初期の状態
9020 '0kボタンから３に移動
9030 '上に行く 処理
9040 case -1:
9050 No=3:sp_on 12,1:sp_on 14,0:BEEP
9060 pause 200:goto Input_Born_Month2:
9070 '選択肢:3
9080 '3ボタンから 6に移動
9090 case 3:
9100 No=6:sp_on 12,0:sp_on 11,1:beep
9110 pause 200:goto Input_Born_Month2:
9120 '6ボタンから ９に移動
9130 case 6:
9140 No=9:sp_on 10,1:sp_on 11,0:beep
9150 pause 200:goto Input_Born_Month2:
9160 '6ボタンから ９に移動　ここまで
9170 '9で上を押して何もしない
9180 case 9:
9190 '何もしない
9200 No=9
9210 beep:pause 200:goto Input_Born_Month2:
9220 '9で上を押しても何もしない　ここまで
9230 '上　 0ボタンから2ボタン
9240 'sp_on 6,1:1
9250 'sp_on 8,1:5
9260 'sp_on 7,1:7
9270 case 0:
9280 No=2:sp_on 13,0:sp_on 9,1:beep
9290 pause 200:goto Input_Born_Month2:
9300 '上  0ボタンから2ボタン　ここまで
9310 '2から５になる 上
9320 case 2:
9330 No=5:sp_on 8,1:sp_on 9,0:beep
9340 pause 200:goto Input_Born_Month2:
9350 case 5:
9360 No=8:sp_on 7,1:sp_on 8,0:beep
9370 pause 200:goto Input_Born_Month2:
9380 case 8:
9390 beep:pause 200:goto Input_Born_Month2:
9400 case 1:
9410 No=4:sp_on 5,1:sp_on 6,0:beep
9420 pause 200:goto Input_Born_Month2:
9430 case 4:
9440 No=7:sp_on 4,1:sp_on 5,0:beep
9450 pause 200:goto Input_Born_Month2:
9460 case 7:
9470 beep:pause 200:goto Input_Born_Month2:
9480 end select
9490 endif
9500 '左３　ここまで
9510 '下の矢印
9520 '中央 2
9530 if ((y=1) or (key$ = chr$(31))) then
9540 select case No
9550 '9から６に下げる
9560 case 9:
9570 No=6:sp_on 11,1:sp_on 10,0:beep
9580 pause 200:goto Input_Born_Month2:
9590 '6から３に下げる
9600 case 6:
9610 No=3:sp_on 12,1:sp_on 11,0:beep
9620 pause 200:goto Input_Born_Month2:
9630 '3から０ｋに変える
9640 case 3:
9650 No=-1:sp_on 14,1:sp_on 12,0:beep
9660 pause 200:goto Input_Born_Month2:
9670 'Okから下のボタンを押しても何もしない
9680 case -1:
9690 beep:pause 200:goto Input_Born_Month2:
9700 case 8:
9710 No=5:sp_on 8,1:sp_on 7,0:beep
9720 pause 200:goto Input_Born_Month2:
9730 case 5:
9740 No=2:sp_on 9,1:sp_on 8,0:beep
9750 pause 200:goto Input_Born_Month2:
9760 case 2:
9770 No=0:sp_on 13,1:sp_on 9,0:beep
9780 pause 200:goto Input_Born_Month2:
9790 case 0:
9800 beep:pause 200:goto Input_Born_Month2:
9810 case 7:
9820 No=4:sp_on 5,1:sp_on 4,0:beep
9830 pause 200:goto Input_Born_Month2:
9840 case 4:
9850 No=1:sp_on 6,1:sp_on 5,0:beep
9860 pause 200:goto Input_Born_Month2:
9870 case 1:
9880 beep:pause 200:goto Input_Born_Month2:
9890 end select
9900 endif
9910 '左へボタン 十字キー　左　or 　カーソル左
9920 if ((y2 = -1) or (key$ = chr$(29))) then
9930 select case No
9940 'Ok ボタン  Okから　左　０に行く
9950 case -1:
9960 No=0:sp_on 13,1:sp_on 14,0
9970 beep:pause 200:goto Input_Born_Month2:
9980 '0 ボタン  左　何もしない
9990 case 0:
10000 beep:pause 200:goto Input_Born_Month2:
10010 case 3:
10020 No=2:sp_on 9,1:sp_on 12,0:beep
10030 pause 200:goto Input_Born_Month2:
10040 case 2:
10050 No=1:sp_on 6,1:sp_on 9,0:beep
10060 pause 200:goto Input_Born_Month2:
10070 case 1:
10080 beep:pause 200:goto Input_Born_Month2:
10090 case 6:
10100 No=5:sp_on 8,1:sp_on 11,0:beep
10110 pause 200:goto Input_Born_Month2:
10120 case 5:
10130 No=4:sp_on 5,1:sp_on 8,0:beep
10140 pause 200:goto Input_Born_Month2:
10150 case 4:
10160 beep:pause 200:goto Input_Born_Month2:
10170 case 9:
10180 No=8:sp_on 7,1:sp_on 10,0:beep
10190 pause 200:goto Input_Born_Month2:
10200 case 8:
10210 No=7:sp_on 4,1:sp_on 7,0:beep
10220 pause 200:goto Input_Born_Month2:
10230 case 7:
10240 beep:pause 200:goto Input_Born_Month2:
10250 end select
10260 endif
10270 '右  十字キー　右　or カーソル　右
10280 if ((y2 = 1) or (key$ = chr$(28))) then
10290 select case No
10300 '0ボタンからokボタン右に移動
10310 case 0:
10320 No=-1:sp_on 14,1:sp_on 13,0:beep
10330 pause 200:goto Input_Born_Month2:
10340 '0ボタンからokボタン 右に移動　ここまで
10350 'OKボタンで右を押して何もしない
10360 case -1:
10370 beep:pause 200:goto Input_Born_Month2:
10380 case 1:
10390 No=2:sp_on 9,1:sp_on 6,0:beep
10400 pause 200:goto Input_Born_Month2:
10410 case 2:
10420 No=3:sp_on 12,1:sp_on 9,0:beep
10430 pause 200:goto Input_Born_Month2:
10440 case 3:
10450 beep:pause 200:goto Input_Born_Month2:
10460 case 4:
10470 No=5:sp_on 8,1:sp_on 5,0:beep
10480 pause 200:goto Input_Born_Month2:
10490 case 5:
10500 No=6:sp_on 11,1:sp_on 8,0:beep
10510 pause 200:goto Input_Born_Month2:
10520 case 7:
10530 No=8:sp_on 7,1:sp_on 4,0:beep
10540 pause 200:goto Input_Born_Month2:
10550 case 8:
10560 No=9:sp_on 10,1:sp_on 7,0:beep
10570 pause 200:goto Input_Born_Month2:
10580 case 9:
10590 beep:pause 200:goto Input_Born_Month2:
10600 case 6:
10610 beep:pause 200:goto Input_Born_Month2:
10620 end select
10630 'Okから右ボタンを押して何もしない ここまで
10640 endif
10650 '十字キー　ここまで
10660 '右の丸ボタン　決定キー
10670 if ((bg=2) or (key$=chr$(13))) then
10680 select case count
10690 case 0:
10700 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
10710 if (buf_month = 1 or buf_month = 2) then
10720 locate 2,3
10730 color RGB(255,255,255)
10740 if ex_info$(1) <> "JP" then
10750 print "Input Born Month(1~12):";buf_Month$
10760 else
10770 print "生まれた月(1月~12月):";buf_Month2$
10780 endif
10790 else
10800 locate 2,3
10810 color Rgb(255,255,255)
10820 if ex_info$(1) <> "JP" then
10830 print "Input Born Month(1~12):";buf_Month$
10840 else
10850 print "生まれた月(1月~12月):";buf_Month$
10860 endif
10870 endif
10880 goto Input_Born_Month2:
10890 case 1:
10900 count = 2:c = No
10910 c = val(buf_Month$)
10920 if (No = -1) then
10930 'if No=1 or No=2 then
10940 'endif
10950 month = buf_month
10960 buf_month=val(buf_Month$)
10970 month=buf_month
10980 '生まれた日に飛ぶ
10990 goto Input_Born_Day:
11000 else
11010 buf_month = c*10 + No
11020 buf_Month$= str$(buf_month)
11030 locate 2,3
11040 color Rgb(255,255,255)
11050 if ex_info$(1) <> "JP" then
11060 print "Input Born Month(1~12):";buf_Month$
11070 else
11080 print "生まれた月(1月~12月):";buf_Month$
11090 endif
11100 goto Input_Born_Month2:
11110 endif
11120 case 2:
11130 count=3:count2=1
11140 'c= val(buf_Month$)
11150 'buf_month = c*10 + No
11160 'buf_Month$ = str$(buf_month)
11170 'locate 2,3
11180 'print "生まれた月(1月～12月):";buf_Month$
11190 'goto Input_Born_Month2:
11200 'case 3:
11210 'count=4
11220 'b=val(buf_month$)
11230 'buf_month=c*10+No
11240 'buf_Month$=str$(buf_month)
11250 'locate 2,3
11260 'print "生まれた月(1月～12月):";buf_Month$
11270 'buf_month=val(buf_Month$)
11280 'year=val(buf_year$)
11290 if (No=-1) then
11300 goto Input_Born_Day:
11310 else
11320 'goto Input_Born_Month2:
11330 endif
11340 'case 4:
11350 'bufyear=buf_year
11360 'if (No=-1) then
11370 'buf_month = val(buf_Month$)
11380 'month = buf_month
11390 'sp_on 14,0
11400 'goto Input_Born_Day:
11410 'else
11420 'goto Input_Born_Month2:
11430 'endif
11440 end select
11450 endif
11460 '左の丸ボタン　キャンセル
11470 if (bg2=2) then
11480 select case count2
11490 case 0:
11500 if (No = -1) then
11510 buf_month=0:buf_Month$="**"
11520 count2=0:count=0
11530 locate 0,3:print "                                   "
11540 if ex_info$(1) <> "JP" then
11550 print "Input Born Month?(1~12):";buf_Month$
11560 else
11570 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
11580 endif
11590 'if (buf_month > 1) then
11600 sp_on 14,0:goto Input_Born_Month2:
11610 'goto rewrite:
11620 else
11630 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
11640 buf_month=0:buf_Month$="**"
11650 locate 2,3
11660 color rgb(255,255,255)
11670 print "                                       "
11680 goto rewrite:
11690 if (No>2) then
11700 if ex_info$(1) <> "JP" then
11710 ui_msg "The value is out of range"
11720 else
11730 ui_msg "値が範囲外です。"
11740 endif
11750 goto rewrite:
11760 endif
11770 endif
11780 'endif
11790 rewrite:
11800 locate 2,3
11810 color rgb(255,255,255)
11820 print "                                      "
11830 locate 2,3
11840 if ex_info$(1) <> "JP" then
11850 print "Input Born Month?(1~12):";buf_Month$
11860 else
11870 print "生まれた月(1月~12月):";buf_Month$
11880 endif
11890 goto Input_Born_Month2:
11900 endif
11910 case 1:
11920 buf_Month$="**":buf_month=0
11930 if No=-1 then
11940 count2=2:count=0
11950 locate 0,3
11960 print "                                      "
11970 locate 2,3:
11980 if ex_info$(1) <> "JP" then
11990 print "Input Born Month?(1~12):";buf_Month$
12000 else
12010 print "生まれた月(1月~12月):" + buf_Month$
12020 endif
12030 goto Input_Born_Month2:
12040 endif
12050 case 2:
12060 sp_on 14,0:goto Input_Seireki:
12070 end select
12080 endif
12090 'endif
12100 end
12110 'end
12120 '生れた日を入力
12130 Input_Born_Day:
12140 '生まれた日入力
12150 cls 3:play ""
12160 'No=-1:Okのとき
12170 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
12180 for i=0 to 1
12190 buf_day(i)=0
12200 next i
12210 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
12220 gload Gazo$ + "Screen2.png",0,0,0
12230 gload Gazo$ + "downscreen.png",0,0,800
12240 'Init"kb:2"
12250 if ex_info$(1) <> "JP" then
12260 '英語音声パート
12270 else
12280 '日本語音声パート
12290 '音声ファイル再生 2023.06.07
12300 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
12310 endif
12320 font 48
12330 if ex_info$(1) <> "JP" then
12340 locate 0,1
12350 '文字色：黒　 color rgb(0,0,0)
12360 color rgb(255,255,255)
12370 print "Input Born day?" + chr$(13)
12380 color rgb(255,255,255)
12390 locate 2,3
12400 print "Born Day(1~31):";buf_Day$
12410 else
12420 locate 0,1
12430 '文字色：黒　 color rgb(0,0,0)
12440 color rgb(255,255,255)
12450 print "生まれた日を入れて下さい" + chr$(13)
12460 color rgb(255,255,255)
12470 locate 2,3
12480 print "生まれた日(1日~31日):";buf_Day$
12490 endif
12500 'color rgb(255,255,255)
12510 'locate 4,6:print ":7"
12520 'locate 9,6:print ":8"
12530 'locate 12,6:print ":9"
12540 'locate 4,6
12550 'print ":7  :8  :9" + chr$(13)
12560 '=======================
12570 'テンキー　色　白　決定ボタン　青
12580 '=======================
12590 'color rgb(255,255,255)
12600 'locate 4,8
12610 'print ":4  :5  :6" + chr$(13)
12620 'color rgb(255,255,255)
12630 'locate 4,10
12640 'print ":1  :2  :3" + chr$(13)
12650 'locate 4,12
12660 'print "    :0"
12670 'locate 12,12
12680 'color rgb(255,0,0)
12690 'print ":Ok"
12700 sp_on 4,0: sp_on 5,0:sp_on 6,0
12710 sp_on 7,0:sp_on 8,0:sp_on 9,0
12720 sp_on 10,0:sp_on 11,0:sp_on 12,0
12730 sp_on 13,0:sp_on 14,1
12740 Input_Born_Day2:
12750 key$="":bg=0:y=0:y2=0:bg2=0
12760 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12770 key$ = inkey$
12780 bg = strig(1)
12790 y = stick(1)
12800 y2 = stick(0)
12810 bg2 = strig(0)
12820 pause 200
12830 wend
12840 '十字キー　ここから
12850 '上の矢印　または、十字キー上
12860 if ((y = -1) or (key$ = chr$(30))) then
12870 select case No
12880 'No=-1:okのとき:初期の状態
12890 '0kボタンから３に移動
12900 '上に行く 処理
12910 case -1:
12920 No=3:sp_on 12,1:sp_on 14,0:beep
12930 pause 200:goto Input_Born_Day2:
12940 '選択肢:3
12950 '3ボタンから 6に移動
12960 case 3:
12970 No=6:sp_on 12,0:sp_on 11,1:beep
12980 pause 200:goto Input_Born_Day2:
12990 '6ボタンから ９に移動
13000 case 6:
13010 No=9:sp_on 10,1:sp_on 11,0:beep
13020 pause 200:goto Input_Born_Day2:
13030 '6ボタンから ９に移動　ここまで
13040 '9で上を押して何もしない
13050 case 9:
13060 '何もしない
13070 No=9
13080 beep:pause 200:goto Input_Born_Day2:
13090 '9で上を押しても何もしない　ここまで
13100 '上　 0ボタンから2ボタン
13110 'sp_on 6,1:1
13120 'sp_on 8,1:5
13130 'sp_on 7,1:7
13140 case 0:
13150 No=2:sp_on 13,0:sp_on 9,1:beep
13160 pause 200:goto Input_Born_Day2:
13170 '上  0ボタンから2ボタン　ここまで
13180 '2から５になる 上
13190 case 2:
13200 No=5:sp_on 8,1:sp_on 9,0:beep
13210 pause 200:goto Input_Born_Day2:
13220 case 5:
13230 No=8:sp_on 7,1:sp_on 8,0:beep
13240 pause 200:goto Input_Born_Day2:
13250 case 8:
13260 beep:pause 200:goto Input_Born_Day2:
13270 case 1:
13280 No=4:sp_on 5,1:sp_on 6,0:beep
13290 pause 200:goto Input_Born_Day2:
13300 case 4:
13310 No=7:sp_on 4,1:sp_on 5,0:beep
13320 pause 200:goto Input_Born_Day2:
13330 case 7:
13340 beep:pause 200:goto Input_Born_Day2:
13350 end select
13360 endif
13370 '左３　ここまで
13380 '下の矢印
13390 '中央 2
13400 if ((y=1) or (key$ = chr$(31))) then
13410 select case No
13420 '9から６に下げる
13430 case 9:
13440 No=6:sp_on 11,1:sp_on 10,0:beep
13450 pause 200:goto Input_Born_Day2:
13460 '6から３に下げる
13470 case 6:
13480 No=3:sp_on 12,1:sp_on 11,0:beep
13490 pause 200:goto Input_Born_Day2:
13500 '3から０ｋに変える
13510 case 3:
13520 No=-1:sp_on 14,1:sp_on 12,0:beep
13530 pause 200:goto Input_Born_Day2:
13540 'Okから下のボタンを押しても何もしない
13550 case -1:
13560 beep:pause 200:goto Input_Born_Day2:
13570 case 8:
13580 No=5:sp_on 8,1:sp_on 7,0:beep
13590 pause 200:goto Input_Born_Day2:
13600 case 5:
13610 No=2:sp_on 9,1:sp_on 8,0:beep
13620 pause 200:goto Input_Born_Day2:
13630 case 2:
13640 No=0:sp_on 13,1:sp_on 9,0:beep
13650 pause 200:goto Input_Born_Day2:
13660 case 0:
13670 beep:pause 200:goto Input_Born_Day2:
13680 case 7:
13690 No=4:sp_on 5,1:sp_on 4,0:beep
13700 pause 200:goto Input_Born_Day2:
13710 case 4:
13720 No=1:sp_on 6,1:sp_on 5,0:beep
13730 pause 200:goto Input_Born_Day2:
13740 case 1:
13750 beep:pause 200:goto Input_Born_Day2:
13760 end select
13770 endif
13780 '左へボタン 十字キー　左　or 　カーソル左
13790 if ((y2 = -1) or (key$ = chr$(29))) then
13800 select case No
13810 'Ok ボタン  Okから　左　０に行く
13820 case -1:
13830 No=0:sp_on 13,1:sp_on 14,0:beep
13840 pause 200:goto Input_Born_Day2:
13850 '0 ボタン  左　何もしない
13860 case 0:
13870 beep:pause 200:goto Input_Born_Day2:
13880 case 3:
13890 No=2:sp_on 9,1:sp_on 12,0:beep
13900 pause 200:goto Input_Born_Day2:
13910 case 2:
13920 No=1:sp_on 6,1:sp_on 9,0:beep
13930 pause 200:goto Input_Born_Day2:
13940 case 1:
13950 pause 200:goto Input_Born_Day2:
13960 case 6:
13970 No=5:sp_on 8,1:sp_on 11,0:beep
13980 pause 200:goto Input_Born_Day2:
13990 case 5:
14000 No=4:sp_on 5,1:sp_on 8,0:beep
14010 pause 200:goto Input_Born_Day2:
14020 case 4:
14030 beep:pause 200:goto Input_Born_Day2:
14040 case 9:
14050 No=8:sp_on 7,1:sp_on 10,0:beep
14060 pause 200:goto Input_Born_Day2:
14070 case 8:
14080 No=7:sp_on 4,1:sp_on 7,0:beep
14090 pause 200:goto Input_Born_Day2:
14100 case 7:
14110 beep:pause 200:goto Input_Born_Day2:
14120 end select
14130 endif
14140 '右  十字キー　右　or カーソル　右
14150 if ((y2 = 1) or (key$ = chr$(28))) then
14160 select case No
14170 '0ボタンからokボタン右に移動
14180 case 0:
14190 No=-1:sp_on 14,1:sp_on 13,0:beep
14200 pause 200:goto Input_Born_Day2:
14210 '0ボタンからokボタン 右に移動　ここまで
14220 'OKボタンで右を押して何もしない
14230 case -1:
14240 beep:pause 200:goto Input_Born_Day2:
14250 case 1:
14260 No=2:sp_on 9,1:sp_on 6,0:beep
14270 pause 200:goto Input_Born_Day2:
14280 case 2:
14290 No=3:sp_on 12,1:sp_on 9,0:beep
14300 pause 200:goto Input_Born_Day2:
14310 case 3:
14320 beep:pause 200:goto Input_Born_Day2:
14330 case 4:
14340 No=5:sp_on 8,1:sp_on 5,0:beep
14350 pause 200:goto Input_Born_Day2:
14360 case 5:
14370 No=6:sp_on 11,1:sp_on 8,0:beep
14380 pause 200:goto Input_Born_Day2:
14390 case 7:
14400 No=8:sp_on 7,1:sp_on 4,0:beep
14410 pause 200:goto Input_Born_Day2:
14420 case 8:
14430 No=9:sp_on 10,1:sp_on 7,0:beep
14440 pause 200:goto Input_Born_Day2:
14450 case 9:
14460 beep:pause 200:goto Input_Born_Day2:
14470 case 6:
14480 beep:pause 200:goto Input_Born_Day2:
14490 end select
14500 'Okから右ボタンを押して何もしない ここまで
14510 endif
14520 '十字キー　ここまで
14530 '右の丸ボタンを押したとき
14540 if ((bg = 2) or (key$ = chr$(13))) then
14550 'count :決定ボタンを押した回数
14560 select case (count mod 3)
14570 '1桁目入力
14580 case 0:
14590 count = 1:
14600 if (No = -1) then
14610 '1桁目　OKでは何もしない
14620 'goto check:
14630 else
14640 'ok以外のボタンを押したとき
14650 buf_day = No:buf_Day$ = str$(No)
14660 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
14670 locate 2,3
14680 color RGB(255,255,255)
14690 if ex_info$(1) <> "JP" then
14700 print "Input Born Day(1~31):";buf_Day2$
14710 else
14720 print "生まれた日(1日~31日):";buf_Day2$
14730 endif
14740 endif
14750 check:
14760 if (No >= 1 and No <= 9) then
14770 sp_on 14,0
14780 goto Input_Born_Day2:
14790 else
14800 sp_on 14,0
14810 goto complate:
14820 endif
14830 case 1:
14840 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
14850 count = 2:
14860 'locate 2,3
14870 'color RGB(255,255,255)
14880 'print "生まれた日(1日~31日):";buf_Day$
14890 'Okボタンを押したときの処理
14900 '入力値　10未満のとき
14910 'c = buf_day
14920 if (No = -1) then
14930 'c=buf_day
14940 ' buf_day = c
14950 'buf_Day$ = str$(buf_day)
14960 '10以下のとき
14970 if (buf_day < 10) then
14980 sp_on 14,0
14990 goto complate:
15000 endif
15010 else
15020 'c = No
15030 buf_day = c * 10 + No
15040 'buf_day = c
15050 buf_Day$ =str$(buf_day)
15060 locate 2,3
15070 color Rgb(255,255,255)
15080 if ex_info$(1) <> "JP" then
15090 print "Input Born Day(1~31):";buf_Day$
15100 else
15110 print "生まれた日(1日~31日):";buf_Day$
15120 endif
15130 goto Input_Born_Day2:
15140 endif
15150 '生まれた日　2桁目の数字　or 1桁の数字 + ok
15160 case 2:
15170 count=0
15180 'c=val(buf_Day$)
15190 'buf_day=c*10+No
15200 'buf_Day$=str$(buf_day)
15210 'day=buf_day
15220 'locate 2,3
15230 'print "生まれた日(1日〜31日):";buf_Day$
15240 'No=-1:ok ボタンを押したとき
15250 if (No = -1) then
15260 if ((buf_day > 0) and (buf_day < 32)) then
15270 sp_on 14,0
15280 goto complate:
15290 else
15300 goto Input_Born_Day2:
15310 endif
15320 'Okボタン以外を押したとき
15330 else
15340 c=val(buf_Day$)
15350 buf_day = c * 10 + No
15360 buf_Day$ = str$(buf_day)
15370 locate 2,3
15380 if ex_info$(1) <> "JP" then
15390 print "Input Born Day?(1~31):";buf_Day$
15400 else
15410 print "生まれた日(1日~31日):";buf_Day$
15420 endif
15430 'goto Input_Born_Day2:
15440 endif
15450 case 3:
15460 count = 4
15470 c=val(buf_day$)
15480 buf_day = c * 10 + No
15490 buf_day$ = str$(buf_day)
15500 locate 2,3
15510 if ex_info$(1) <> "JP" then
15520 print "Input Born Day?(1~31):";buf_Day$
15530 else
15540 print "生まれた日を入れてください(1日~31日):";buf_Day$
15550 endif
15560 year = val(buf_year$)
15570 if (No = -1) then
15580 'goto Input_Born_Day:
15590 sp_on 14,0:No=0
15600 goto complate:
15610 else
15620 goto Input_Born_Month2:
15630 endif
15640 'case 4:
15650 'bufyear=buf_year
15660 'if (No=-1) then
15670 'buf_day = val(buf_day$)
15680 'bufday = buf_day
15690 'sp_on 14,0
15700 'goto complate:
15710 'else
15720 'goto Input_Born_Day2:
15730 'endif
15740 end select
15750 endif
15760 if (bg2=2) then
15770 select case count2
15780 case 0:
15790 if (No=-1) then
15800 'buf_day=0:buf_Day$="**"
15810 if (buf_day>=1 and buf_day<=31) then
15820 count=0:No=0
15830 buf_day=0:buf_Day$="**"
15840 'goto rewrite_day:
15850 else
15860 buf_day=0:buf_Day$="**"
15870 ui_msg"値が範囲外です"
15880 endif
15890 goto rewrite_day:
15900 else
15910 goto rewrite_day:
15920 endif
15930 rewrite_day:
15940 locate 2,3
15950 color rgb(255,255,255)
15960 print "                                      "
15970 locate 2,3
15980 if ex_info$(1)<>"JP" then
15990 print "Born Day(1~31):";buf_Day$
16000 else
16010 print "生まれた日(1日~31日):";buf_Day$
16020 endif
16030 goto Input_Born_Day2:
16040 end select
16050 endif
16060 '--------------------------Input_Born_Day:-------------------------------------------
16070 complate:
16080 suhiNo = buf_year + buf_month + buf_day
16090 'if (suhiNo < 1000) then
16100 a1 = fix(suhiNo / 1000)
16110 a2 = fix(suhiNo/100) - (a1 * 10)
16120 a3 = fix(suhiNo/10)-(a1*100+a2*10)
16130 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
16140 'endif
16150 bufsuhiNo = a1+a2+a3+a4
16160 recomp:
16170 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
16180 'bufsuhiNo=a6
16190 goto Kabara_Result_Screen:
16200 else
16210 a5 = fix(bufsuhiNo / 10)
16220 a6 = bufsuhiNo - a5 * 10
16230 bufsuhiNo = a6 + a5
16240 if (bufsuhiNo = 10) then
16250 bufsuhiNo=1
16260 endif
16270 goto Kabara_Result_Screen:
16280 endif
16290 Kabara_Result_Screen:
16300 cls 3:
16310 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
16320 gload Gazo$ + "downscreen.png",0,0,800
16330 init "kb:4"
16340 '
16350 play ""
16360 select case (bufsuhiNo)
16370 case 1:
16380 play Voice$ + "Result_Kabara_1_20230607.mp3"
16390 case 2:
16400 play Voice$ + "Result_Kabara_2_20231112.mp3"
16410 case 3:
16420 play Voice$ + "Result_Kabara_3_20230607.mp3"
16430 case 4:
16440 play Voice$ + "Result_Kabara_4_20230607.mp3"
16450 case 5:
16460 play Voice$ + "Result_Kabara_5_20231112.mp3"
16470 case 6:
16480 play Voice$ + "Result_Kabara_6_20230607.mp3"
16490 case 7:
16500 play Voice$ + "Result_Kabara_7_20230607.mp3"
16510 case 8:
16520 play Voice$ + "Result_Kabara_8_20230607.mp3"
16530 case 9:
16540 play Voice$ + "Result_Kabara_9_20230607.mp3"
16550 case 11:
16560 play Voice$ + "Result_Kabara_11_20230607.mp3"
16570 case 22:
16580 play Voice$ + "Result_Kabara_22_20230607.mp3"
16590 case 33:
16600 play Voice$ + "Result_Kabara_33_20230607.mp3"
16610 end select
16620 font 48
16630 key$ = "":bg = 0:bg2=0
16640 'COLOR rgb(255,255,255)
16650 'print "●診断結果"+chr$(13)
16660 locate 0,2
16670 if ex_info$(1)<>"JP" then
16680 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
16690 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
16700 locate 0,15:
16710 color rgb(255,255,255)
16720 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
16730 else
16740 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
16750 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
16760 locate 0,15:
16770 color rgb(255,255,255)
16780 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
16790 endif
16800 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16810 key$ = inkey$
16820 bg = strig(1)
16830 bg2 = strig(0)
16840 pause 200
16850 wend
16860 'Enter or JoyPad right
16870 if ((key$ = chr$(13)) or (bg = 2)) then
16880 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
16890 endif
16900 if ((bg2=2)) then
16910 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
16920 endif
16930 'suhiNo1 = fix(bufsuhiNo / 10)
16940 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
16950 'bufsuhiNo = suhiNo1 + suhiNo2
16960 'goto recomp:
16970 'endif
16980 'print chr$(13)
16990 'color rgb(255,0,0)
17000 'print"トップ:エンターキー,S or s:保存"+chr$(13)
17010 'key$ = input$(1)
17020 'if key$ = chr$(13) then goto Main_Screen:
17030 '"Menu2 占いのルール"
17040 Suhi_Rule:
17050 '数秘術占いルールの表示
17060 cls 3:play "":init"kb:4"
17070 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
17080 gload Gazo$ + "downscreen.png",0,0,800
17090 'cls 3:
17100 'line (0,0) - (1500,60),rgb(0,0,255),bf
17110 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
17120 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
17130 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
17140 if ex_info$(1)<>"JP" then
17150 locate 0,2:Font 48
17160 print chr$(13) + chr$(13)
17170 color rgb(0,0,0)
17180 print "We will convert your birth date to a single number.";chr$(13)
17190 print "Number range: 1~9, 11, 22, 33";chr$(13)
17200 print "Example: If your birth date is 22nd November 1973";chr$(13)
17210 print "1+9+7+3+11+22=53 ";chr$(13)
17220 print "→ 5 + 3 = 8" + chr$(13)
17230 print "So, your numerology number is 8.";chr$(13)
17240 locate 0,15
17250 color rgb(255,255,255)
17260 print "Please press the right on the joystick"
17270 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17280 else
17290 locate 0,2:Font 48
17300 print chr$(13) + chr$(13)
17310 color rgb(0,0,0)
17320 print "誕生日を単数変換します";chr$(13)
17330 print "数字の範囲:1~９,11,22,33";chr$(13)
17340 print "例:1973年11月22日の場合";chr$(13)
17350 print "1+9+7+3+11+22=53 ";chr$(13)
17360 print "→ 5 + 3 = 8" + chr$(13)
17370 print "故に8が数秘ナンバーになります";chr$(13)
17380 locate 0,15
17390 color rgb(255,255,255)
17400 print "ジョイパッドの右を押してください"
17410 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17420 endif
17430 '"key$ = input$(1)"
17440 '"if key$ = chr$(13) then goto Main_Screen:"
17450 suhi_rule_selection:
17460 bg = 0:key$ = "":bg2=0
17470 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
17480 bg = strig(1)
17490 key$ = inkey$
17500 bg2=strig(0)
17510 pause 200
17520 wend
17530 if ((bg = 2) or (key$ = chr$(13))) then
17540 pause 200:cls 4:goto Main_Screen:
17550 endif
17560 if (bg2=2) then
17570 play "":pause 200
17580 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17590 goto suhi_rule_selection:
17600 endif
17610 '2.設定
17620 '2-1.トップ画面に戻る
17630 Setting:
17640 cls 3:init"kb:4":font 48:No=0
17650 play ""
17660 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17670 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
17680 gload Gazo$ + "downscreen.png",0,0,800
17690 print chr$(13) + chr$(13) + chr$(13)
17700 color rgb(255,255,255):sp_on 0,1:
17710 print "番号を選んでください" + chr$(13)
17720 print " :1.トップ画面に戻る"+ chr$(13)
17730 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
17740 print " :3.未実装" + chr$(13)
17750 print " :4.未実装" + chr$(13)
17760 color rgb(0,0,0)
17770 locate 1,15:print "1.トップ画面に戻るを選択"
17780 Setting_Selection:
17790 y=0:key$="":bg=0:bg2=0
17800 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
17810 y=stick(1)
17820 key$ = inkey$
17830 bg=strig(1)
17840 bg2 = strig(0)
17850 pause 200
17860 wend
17870 if ((bg = 2) or (key$ = chr$(13))) then
17880 select case No
17890 case 0:
17900 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
17910 case 1:
17920 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
17930 end select
17940 endif
17950 if (bg2 = 2) then
17960 play "":pause 200
17970 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17980 goto Setting_Selection:
17990 endif
18000 if ((y=1) or (y=-1)) then
18010 select case No
18020 case 0:
18030 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
18040 case else:
18050 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
18060 end select
18070 'ase else:
18080 endif
18090 '3.Help
18100 '3-1.ルールの表示
18110 '3-2.バージョン
18120 '3-3.トップに戻る
18130 Help:
18140 cls 3:Font 48:No=0
18150 play ""
18160 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
18170 gload Gazo$ + "downscreen.png",0,0,800
18180 if ex_info$(1)<>"JP" then
18190 color rgb(255,255,255)
18200 print chr$(13)+chr$(13)+chr$(13)
18210 print "Please select a number"+chr$(13)
18220 print " :1. Rules for Explain" + chr$(13)
18230 print " :2. Display Version" + chr$(13)
18240 print " :3. References" + chr$(13)
18250 print " :4. Return to Top Screen" + chr$(13)
18260 else
18270 color rgb(255,255,255)
18280 print chr$(13)+chr$(13)+chr$(13)
18290 print "番号を選んでください"+chr$(13)
18300 print " :1.ルールの説明" + chr$(13)
18310 print " :2.バージョンの表示" + chr$(13)
18320 print " :3.参考文献" + chr$(13)
18330 print " :4.トップ画面に戻る" + chr$(13)
18340 endif
18350 color rgb(0,0,0)
18360 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
18370 locate 1,15
18380 print "                                  "
18390 if ex_info$(1)<>"JP" then
18400 print "1. Select Rules for Explain"
18410 else
18420 locate 1,15
18430 print "1.ルールの説明を選択"
18440 endif
18450 init"kb:4"
18460 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
18470 Help_Select:
18480 bg=0:key$="":y=0:bg2=0
18490 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
18500 y = stick(1)
18510 key$ = inkey$
18520 bg = strig(1)
18530 bg2 = strig(0)
18540 pause 200
18550 wend
18560 if ex_info$(1)<>"JP" then
18570 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
18580 if ((y = 1) or (key$ = chr$(31))) then
18590 select case No
18600 case 0:
18610 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
18620 case 1:
18630 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
18640 case 2:
18650 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
18660 case 3:
18670 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
18680 end select
18690 endif
18700 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
18710 if ((y = -1) or (key$ = chr$(30))) then
18720 select case No
18730 case 0:
18740 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
18750 case 1:
18760 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
18770 case 2:
18780 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
18790 case 3:
18800 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
18810 end select
18820 endif
18830 else
18840 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
18850 if ((y = 1) or (key$ = chr$(31))) then
18860 select case No
18870 case 0:
18880 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
18890 case 1:
18900 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18910 case 2:
18920 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
18930 case 3:
18940 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
18950 end select
18960 endif
18970 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
18980 if ((y = -1) or (key$ = chr$(30))) then
18990 select case No
19000 case 0:
19010 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
19020 case 1:
19030 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
19040 case 2:
19050 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
19060 case 3:
19070 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
19080 end select
19090 endif
19100 endif
19110 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
19120 if ((bg = 2) or (key$ = chr$(13))) then
19130 select case No
19140 case 0:
19150 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto  Suhi_Rule_explainTop:     'Suhi_Rule:
19160 case 1:
19170 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
19180 case 2:
19190 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
19200 '3:Top画面に行く
19210 case 3:
19220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
19230 end select
19240 endif
19250 if (bg2 = 2) then
19260 play "":pause 200
19270 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
19280 goto Help_Select:
19290 endif
19300 'ルールの説明　トップ画面
19310 Suhi_Rule_explainTop:
19320 '**********************************************************
19330 cls 3:Font 48:No=0
19340 play ""
19350 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
19360 gload Gazo$ + "downscreen.png",0,0,800
19370 if ex_info$(1)<>"JP" then
19380 color rgb(255,255,255)
19390 print chr$(13)+chr$(13)+chr$(13)
19400 print "Please select a number"+chr$(13)
19410 print " :1.How to Kabara" + chr$(13)
19420 print " :2. Explain for BirdseyeGrid" + chr$(13)
19430 print " :3. Return to Top Screen" + chr$(13)
19440 else
19450 color rgb(255,255,255)
19460 print chr$(13)+chr$(13)+chr$(13)
19470 print "番号を選んでください"+chr$(13)
19480 print " :1.数秘術のやり方" + chr$(13)
19490 print " :2.バーズアイグリットの説明" + chr$(13)
19500 print " :3.トップ画面に戻る" + chr$(13)
19510 endif
19520 color rgb(0,0,0)
19530 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
19540 locate 1,15
19550 print "                                  "
19560 if ex_info$(1)<>"JP" then
19570 print "                                  "
19580 print ":1.How to Kabara"
19590 else
19600 locate 1,15
19610 print ":1.数秘術のやり方"
19620 endif
19630 init"kb:4"
19640 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
19650 Help_Select:
19660 bg=0:key$="":y=0:bg2=0
19670 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
19680 y = stick(1)
19690 key$ = inkey$
19700 bg = strig(1)
19710 bg2 = strig(0)
19720 pause 200
19730 wend
19740 if ex_info$(1)<>"JP" then
19750 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
19760 if ((y = 1) or (key$ = chr$(31))) then
19770 select case No
19780 case 0:
19790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Help_Select:
19800 case 1:
19810 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Help_Select:
19820 case 2:
19830 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Help_Select:
19840 end select
19850 endif
19860 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
19870 if ((y = -1) or (key$ = chr$(30))) then
19880 select case No
19890 case 0:
19900 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Help_Select:
19910 case 2:
19920 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Help_Select:
19930 case 3:
19940 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Help_Select:
19950 end select
19960 endif
19970 else
19980 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
19990 if ((y = 1) or (key$ = chr$(31))) then
20000 select case No
20010 case 0:
20020 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Help_Select:
20030 case 1:
20040 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Help_Select:
20050 case 2:
20060 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Help_Select:
20070 end select
20080 endif
20090 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
20100 if ((y = -1) or (key$ = chr$(30))) then
20110 select case No
20120 case 0:
20130 No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Help_Select:
20140 case 1:
20150 No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Help_Select:
20160 case 2:
20170 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Help_Select
20180 end select
20190 endif
20200 endif
20210 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
20220 if ((bg = 2) or (key$ = chr$(13))) then
20230 select case No
20240 case 0:
20250 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop:     'Suhi_Rule:
20260 case 1:
20270 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule:
20280 '3:Top画面に行く
20290 case 2:
20300 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
20310 end select
20320 endif
20330 if (bg2 = 2) then
20340 play "":pause 200
20350 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
20360 goto Help_Select:
20370 endif
20380 '**********************************************************
20390 end
20400 '数秘術占い　トップ画面
20410 Kabara_TopScreen:
20420 cls 3:play ""
20430 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
20440 gload Gazo$ + "downscreen.png",0,0,800
20450 play Voice$ + "KabaraTop_Selection_20230721.mp3"
20460 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
20470 init"kb:4":No=0
20480 if ex_info$(1)<>"JP" then
20490 color rgb(255,255,255)
20500 print chr$(13)+chr$(13)+chr$(13)
20510 print "Please select a number" + chr$(13)
20520 print " :1.Numerology" + chr$(13)
20530 print " :2.Bird's Eye Grid" + chr$(13)
20540 print " :3.Compatibility Divination" + chr$(13)
20550 print " :4.Return to Top Screen" + chr$(13)
20560 color rgb(0,0,0)
20570 locate 1,15:print "1. Select Numerology"
20580 else
20590 color rgb(255,255,255)
20600 print chr$(13)+chr$(13)+chr$(13)
20610 print "番号を選んでください" + chr$(13)
20620 print " :1.数秘術占い" + chr$(13)
20630 print " :2.バーズアイグリット" + chr$(13)
20640 print " :3.相性占い" + chr$(13)
20650 print " :4.トップ画面に戻る" + chr$(13)
20660 color rgb(0,0,0)
20670 locate 1,15:print "1.数秘術占いを選択"
20680 endif
20690 Kabara_TopScreen2:
20700 y = 0:bg = 0:key$ = "":bg2 = 0
20710 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
20720 key$ = inkey$
20730 bg = strig(1)
20740 y = stick(1)
20750 bg2 = strig(0)
20760 pause 200
20770 wend
20780 '選択ボタン
20790 'カーソル下 　と　ジョイパッド　の下
20800 if ex_info$(1)<>"JP" then
20810 if ((y = 1) or (key$ = chr$(31))) then
20820 select case No
20830 case 2:
20840 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
20850 case 3:
20860 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
20870 case 0:
20880 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
20890 case 1:
20900 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
20910 end select
20920 endif
20930 else
20940 if ((y = 1) or (key$ = chr$(31))) then
20950 select case No
20960 case 2:
20970 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
20980 case 3:
20990 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
21000 case 0:
21010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
21020 case 1:
21030 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
21040 end select
21050 endif
21060 'カーソル　上  or  ジョイパッド　上
21070 if ((y=-1) or (key$=chr$(30))) then
21080 select case No
21090 case 0:
21100 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
21110 case 1:
21120 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
21130 case 2:
21140 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
21150 case 3:
21160 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
21170 end select
21180 endif
21190 endif
21200 '決定ボタン
21210 'ジョイパッドの右　or  Enter key
21220 if ((bg = 2) or (key$ = chr$(13))) then
21230 select case No
21240 case 0:
21250 '1.数秘術占い
21260 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
21270 case 3:
21280 '4.メイン画面にいく
21290 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
21300 case 1:
21310 '2.バースアイグリッド
21320 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
21330 case 2:
21340 '3.相性占い
21350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
21360 end select
21370 endif
21380 if (bg2 = 2) then
21390 play "":pause 200
21400 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
21410 goto Kabara_TopScreen2:
21420 endif
21430 '1.バースアイグリット　名入力
21440 Inputname1:
21450 cls 3:init"kb:4":font 48
21460 bg=0:key$="":y=0:No=-1:name1$="":i=1
21470 gload Gazo$ + "Selection.png",1,10,100
21480 'Line 1:☓
21490 'A:選択肢
21500 sp_def 15,(50,250),16,16
21510 'B:選択肢
21520 sp_def 16,(200,250),16,16
21530 'C:選択肢
21540 sp_def 17,(350,250),16,16
21550 'D:選択肢
21560 sp_def 18,(500,250),16,16
21570 'E:選択肢
21580 sp_def 19,(630,250),16,16
21590 'F:選択肢
21600 sp_def 20,(780,250),16,16
21610 'G:選択肢
21620 sp_def 21,(930,250),16,16
21630 'Line 2:☓
21640 'H:選択肢
21650 sp_def 22,(50,345),16,16
21660 'I:選択肢
21670 sp_def 23,(200,345),16,16
21680 'J:選択肢
21690 sp_def 24,(350,345),16,16
21700 'K:選択肢
21710 sp_def 25,(500,345),16,16
21720 'L:選択肢
21730 sp_def 26,(630,345),16,16
21740 'M:選択肢
21750 sp_def 27,(780,345),16,16
21760 'N:選択肢
21770 sp_def 28,(930,345),16,16
21780 'Line 3:☓
21790 'O:選択肢
21800 sp_def 29,(50,440),16,16
21810 'P:選択肢
21820 sp_def 30,(200,440),16,16
21830 'Q:選択肢
21840 sp_def 31,(350,440),16,16
21850 'R:選択肢
21860 sp_def 32,(500,440),16,16
21870 'S:選択肢
21880 sp_def 33,(630,440),16,16
21890 'T:選択肢
21900 sp_def 34,(780,440),16,16
21910 'U:選択肢
21920 sp_def 35,(930,440),16,16
21930 'Line 4:◯
21940 'V:選択肢
21950 sp_def 36,(50,535),16,16
21960 'W:選択肢
21970 sp_def 37,(200,535),16,16
21980 'X:選択肢
21990 sp_def 38,(350,535),16,16
22000 'Y:選択肢
22010 sp_def 39,(500,535),16,16
22020 'Z:選択肢
22030 sp_def 40,(630,535),16,16
22040 'Ok:選択肢
22050 sp_def 41,(780,535),16,16
22060 'sp_def 42,(930,535),16,16
22070 'Line 1
22080 'A
22090 sp_on 15,0
22100 'B
22110 sp_on 16,0
22120 'C
22130 sp_on 17,0
22140 'D
22150 sp_on 18,0
22160 'E
22170 sp_on 19,0
22180 'F
22190 sp_on 20,0
22200 'G
22210 sp_on 21,0
22220 'Line 1
22230 'Line 2
22240 'H
22250 sp_on 22,0
22260 'I
22270 sp_on 23,0
22280 'J
22290 sp_on 24,0
22300 'K
22310 sp_on 25,0
22320 'L
22330 sp_on 26,0
22340 'M
22350 sp_on 27,0
22360 'N
22370 sp_on 28,0
22380 'Line 2
22390 'Line 3
22400 'O
22410 sp_on 29,0
22420 'P
22430 sp_on 30,0
22440 'Q
22450 sp_on 31,0
22460 'R
22470 sp_on 32,0
22480 'S
22490 sp_on 33,0
22500 'T
22510 sp_on 34,0
22520 'U
22530 sp_on 35,0
22540 'Line 3
22550 'Line 4
22560 'V
22570 sp_on 36,0
22580 'W
22590 sp_on 37,0
22600 'X
22610 sp_on 38,0
22620 'Y
22630 sp_on 39,0
22640 'Z
22650 sp_on 40,0
22660 'Ok
22670 sp_on 41,1
22680 'Line 4
22690 'sp_on 42,1
22700 'Line 1
22710 'sp_put 15,(50,250),0,0
22720 'sp_put 16,(200,250),0,0
22730 'sp_put 17,(350,250),0,0
22740 'sp_put 18,(500,250),0,0
22750 'sp_put 19,(630,250),0,0
22760 'sp_put 20,(780,250),0,0
22770 'sp_put 21,(930,250),0,0
22780 'Line 2
22790 'sp_put 22,(50,345),0,0
22800 'sp_put 23,(200,345),0,0
22810 'sp_put 24,(350,345),0,0
22820 'sp_put 25,(500,345),0,0
22830 'sp_put 26,(630,345),0,0
22840 'sp_put 27,(780,345),0,0
22850 'sp_put 28,(930,345),0,0
22860 'Line 3
22870 'sp_put 29,(50,440),0,0
22880 'sp_put 30,(200,440),0,0
22890 'sp_put 31,(350,440),0,0
22900 'sp_put 32,(500,440),0,0
22910 'sp_put 33,(630,440),0,0
22920 'sp_put 34,(780,440),0,0
22930 'sp_put 35,(930,440),0,0
22940 'Line 4
22950 'sp_put 36,(50,535),0,0
22960 'sp_put 37,(200,535),0,0
22970 'sp_put 38,(350,535),0,0
22980 'sp_put 39,(500,535),0,0
22990 'sp_put 40,(630,535),0,0
23000 sp_put 41,(780,535),0,0
23010 'sp_put 42,(930,536),0,0
23020 gload Gazo$ + "Screen1.png",0,0,0
23030 color rgb(255,255,255)
23040 locate 1,3
23050 print "名前の姓をアルファベットで入力してください"
23060 locate 1,5
23070 print " A  B  C  D  E  F  G"
23080 locate 1,7
23090 print " H  I  J  K  L  M  N"
23100 locate 1,9
23110 print " O  P  Q  R  S  T  U"
23120 locate 1,11
23130 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
23140 locate 1,15:color rgb(0,0,0)
23150 print "名前の姓:" + name1$
23160 select_name1:
23170 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
23180 '有効ボタン
23190 '1.決定ボタン(bg:2)
23200 '2.Enter Key$:chr$(13)
23210 '3.カーソル上 (chr$(31))
23220 '4.カーソル　左 (chr$(29))
23230 '5.ジョイパッド　上 (y:1)
23240 '6:ジョイパッド　左 (y2:-1)
23250 '7:ジョイパッド　下 (y:-1)
23260 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
23270 key$ = inkey$
23280 'ジョイパッドの決定:bg
23290 bg = strig(1)
23300 y = stick(1)
23310 y2 = stick(0)
23320 pause 200
23330 wend
23340 '====================================
23350 'Birds Eye Grid 名前入力
23360 '入力スタイル　アルファベット入力
23370 'sp_on:　スプライトのオンオフ
23380 'sp_put :表示位置
23390 'No:ボタン番号
23400 '====================================
23410 'カーソルで下に行く
23420 if ((y=-1) or (key$=chr$(31))) then
23430 select case No
23440 '1.Ok ボタン
23450 'sp_on スプライトのオンオフ
23460 'sp_put スプライトを表示
23470 case -1:
23480 '1.アルファベット　入力ボタン
23490 '実装未完全なので終了
23500 'Ok → T ○ :No:20=T
23510 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
23520 'T  → M ○
23530 case 20:
23540 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
23550 'M  →　F ○
23560 case 13:
23570 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
23580 'F  → Ok
23590 case 6:
23600 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
23610 end select
23620 endif
23630 '2.決定ボタン
23640 if ((key$ = chr$(13)) OR  (bg = 2)) then
23650 select case No
23660 case -1:
23670 'スプライトをOFFにする
23680 sp_on 41,0
23690 end select
23700 endif
23710 '3.カーソル　左
23720 if (key$ = chr$(29) or (y2 =-1)) then
23730 select case No
23740 'Line 4
23750 'Line 4
23760 '1.
23770 'Z:-1 :Ok ボタン
23780 'Ok → Z
23790 case -1:
23800 'Ok →　Z
23810 'Ok ボタン OFF,Z Button ON
23820 'No=26:Z
23830 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
23840 '2.
23850 '26:Zボタン Z→ Y
23860 case 26:
23870 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
23880 '3.
23890 '25:Yボタン  Y → X
23900 case 25:
23910 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
23920 '4
23930 '24:Xボタン X → W
23940 case 24:
23950 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
23960 '23:Wボタン X → W
23970 '5
23980 case 23:
23990 '22:Vボタン W → V
24000 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
24010 case 22:
24020 '-1:V→ Ok
24030 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
24040 'Line 3
24050 case 20:
24060 '33:T34  → S:33 :◯
24070 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
24080 case 19:
24090 '32:S:33 → R:32 :◯
24100 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
24110 case 18:
24120 '31:R:32 → Q:31 :◯
24130 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
24140 '30:O → P :◯
24150 case 17:
24160 '30:Q:31 → P:30 :◯
24170 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
24180 case 16:
24190 '29:P:30 → O:29 :◯
24200 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
24210 case 15:
24220 '28:O:29 → U:21  :◯
24230 'O:OFF,U:ON
24240 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
24250 '27:U:21 → T:20  :◯
24260 case 21:
24270 'U:OFF:T:ON
24280 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
24290 'Line 2
24300 '26:M:13 → L:12 : ○
24310 case 13:
24320 'M:OFF,L:ON
24330 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
24340 '25:L:12 → K:11 : ○
24350 case 12:
24360 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
24370 '24:K:11 → J:10 : ○
24380 case 11:
24390 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
24400 '23:J:10 → I:9  : ○
24410 case 10:
24420 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
24430 '22:I:9 → H:8    :○
24440 case 9:
24450 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
24460 '21:H:8 → N:14:   :○
24470 case 8:
24480 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
24490 '20:N:14 → M:13:   :○
24500 case 14:
24510 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
24520 '●.Line 1:
24530 '19:F:20 → E:19 : ☓
24540 'F:OFF,E:ON
24550 case 6:
24560 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
24570 '18:E → D
24580 'E:OFF,D:ON
24590 case 5:
24600 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
24610 '17:D → C
24620 'D:OFF,C:ON
24630 case 4:
24640 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
24650 case 3:
24660 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
24670 case 2:
24680 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
24690 case 1:
24700 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
24710 case 7:
24720 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
24730 end select
24740 endif
24750 '上から下の方向
24760 if ((key$ = chr$(31)) or  (y = 1)) then
24770 select case No
24780 '●.1
24790 '1:A→H
24800 case 1:
24810 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
24820 '2:H→O
24830 case 8:
24840 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
24850 '3:O→V
24860 case 15:
24870 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
24880 '4:V→A
24890 case 22:
24900 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
24910 '●.2
24920 '5.B→I
24930 case 2:
24940 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
24950 '6.I→P
24960 case 9:
24970 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
24980 '7.P→W
24990 case 16:
25000 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
25010 '8.W→B
25020 case 23:
25030 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
25040 '●.3
25050 '9.C→J
25060 case 3:
25070 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
25080 '10.J→Q
25090 case 10:
25100 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
25110 '11.Q→X
25120 case 17:
25130 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
25140 '12.X→C
25150 case 24:
25160 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
25170 '●.4
25180 '13.D→K
25190 case 4:
25200 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
25210 '14.K→R
25220 case 11:
25230 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
25240 '15.R→Y
25250 case 18:
25260 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
25270 '16.Y→D
25280 case 25:
25290 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
25300 '●.5
25310 '17.E→L
25320 case 5:
25330 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
25340 '18.L→S
25350 case 12:
25360 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
25370 '19.S→Z
25380 case 19:
25390 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
25400 '20.Z→E
25410 case 26:
25420 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
25430 '●.6
25440 '21.F→M
25450 case 6:
25460 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
25470 '22.M→T
25480 case 13:
25490 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
25500 '23.T→Ok
25510 case 20:
25520 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
25530 '24.Ok→F
25540 case -1:
25550 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
25560 '●.7
25570 '25.G→N
25580 case 7:
25590 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
25600 '26.N→U
25610 case 14:
25620 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
25630 '27.U→G
25640 case 21:
25650 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
25660 end select
25670 endif
25680 '決定ボタン　で名前の姓に文字を追加。
25690 if (key$ = chr$(13) or bg = 2) then
25700 select case No
25710 'Okボタン
25720 case -1:
25730 goto Inputname2:
25740 'Aの文字
25750 case 1:
25760 'if len(n$)=0 then
25770 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
25780 'else
25790 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
25800 'endif
25810 goto select_name1:
25820 case 2:
25830 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
25840 end select
25850 endif
25860 Input_name1_Birdseye:
25870 cls 3:init "kb:2":play ""
25880 gload Gazo$ + "Input_Birtheye2.png",0,0,0
25890 if ex_info$(1)<>"JP" then
25900 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
25910 color rgb(0,0,255)
25920 locate 1,2:print "Please enter your name in English"
25930 color rgb(0,0,0)
25940 locate 1,5:Input "Name (Surname):",name1$
25950 else
25960 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
25970 color rgb(0,0,255)
25980 locate 1,2:print "名前をアルファベットで入れてください"
25990 color rgb(0,0,0)
26000 locate 1,5:Input "名前（姓の部分）:",name1$
26010 endif
26020 '27.U→G
26030 'locate 1,5:print "Hit any key"
26040 n1 = len(name1$)
26050 if (n1 < 11) then
26060 for i=1 to n1
26070 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
26080 next i
26090 endif
26100 goto Inputname2:
26110 '2.グリッドアイ　姓の入力
26120 'end
26130 Inputname2:
26140 cls 3:init"kb:2":font 48:play ""
26150 gload Gazo$ + "Input_Birtheye1.png",0,0,0
26160 if ex_info$(1)<>"JP" then
26170 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
26180 color rgb(0,0,255)
26190 locate 1,2:print "Please enter your name in English"
26200 color rgb(0,0,0)
26210 locate 1,5:Input "Name (First name):",name2$
26220 n2 = len(name2$)
26230 for i=1 to n2
26240 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
26250 next i
26260 else
26270 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
26280 color rgb(0,0,255)
26290 locate 1,2:print "名前をアルファベットで入れてください"
26300 color rgb(0,0,0)
26310 locate 1,5:Input "名前(名の部分):",name2$
26320 n2 = len(name2$)
26330 for i=1 to n2
26340 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
26350 next i
26360 endif
26370 '計算領域
26380 Complate:
26390 'name1
26400 for i=0 to 25
26410 for n=1 to len(name1$)
26420 if (buf_chart$(i,0) = buf_name1$(n-1)) then
26430 b = val(buf_chart$(i,1))
26440 buffer(b-1) = buffer(b-1) + 1
26450 endif
26460 next n
26470 next i
26480 'name2
26490 for i=0 to 25
26500 for n=1 to len(name2$)
26510 if (buf_chart$(i,0) = buf_name2$(n-1)) then
26520 c = val(buf_chart$(i,1))
26530 buffer(c - 1) = buffer(c - 1) + 1
26540 endif
26550 next n
26560 next i
26570 '結果表示領域
26580 Result_Birtheye1:
26590 cls 3:init"kb:4":No=0:play "":'音を止める
26600 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
26610 gload Gazo$ + "downscreen.png",0,0,800
26620 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
26630 color rgb(255,255,255)
26640 '1の表示
26650 locate 3,14:print buffer(0);
26660 '2の表示
26670 locate 3,9:print buffer(1);
26680 '3の表示
26690 locate 3,5:print buffer(2);
26700 '4の表示
26710 locate 10,14:print buffer(3);
26720 '5の表示
26730 locate 10,9:print buffer(4);
26740 '6の表示
26750 locate 10,5:print buffer(5);
26760 '7の表示
26770 locate 15,14:print buffer(6);
26780 '8の表示
26790 locate 15,9:print buffer(7);
26800 '9の表示
26810 locate 15,5:print buffer(8);
26820 'name を大文字に変換
26830 locate 5,3:print ucase$(name1$ + name2$)
26840 color rgb(0,0,0)
26850 'bg:右のボタン  ,bg2:左のボタン
26860 if ex_info$(1)<>"JP" then
26870 color rgb(255,255,255)
26880 print "Left circle: Main Screen, Right circle: Open Menu"
26890 else
26900 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
26910 endif
26920 bg=0:key$="":bg2=0
26930 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
26940 'Enterと決定ボタン
26950 key$ = inkey$
26960 '右ボタン:1
26970 bg = strig(1)
26980 '左の丸ボタン:0
26990 bg2=strig(0)
27000 pause 200
27010 wend
27020 if ((bg=2) or (key$=chr$(13))) then
27030 'データーをクリアしてトップ画面に行く
27040 'for i=0 to 8
27050 'buffer(i)=0
27060 'next i
27070 'for n=0 to 9
27080 'buf_name1$(n) = ""
27090 'buf_name2$(n) = ""
27100 'next n
27110 'Topに行く
27120 'goto Main_Screen:
27130 'メニューを開く
27140 'goto BirdsEye_Result2:
27150 'Menu(ui_select) リストに飛ぶ
27160 goto Result_Birtheye_List1:
27170 endif
27180 if (bg2=2) then
27190 'データーをクリアする
27200 for i=0 to 8
27210 buffer(i)=0
27220 next i
27230 for n=0 to 9
27240 buf_name1$(n)=""
27250 buf_name2$(n)=""
27260 next n
27270 goto Main_Screen:
27280 endif
27290 'goto Result_Birtheye1:
27300 'Result_Birtheye2:
27310 'cls 3:color rgb(255,255,255)
27320 'end
27330 'Memory 消去
27340 '
27350 '横のフォーカスライン
27360 BirdsEye_Result2:
27370 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
27380 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
27390 Forcus1_buffer$(2)="○"
27400 else
27410 Forcus1_buffer$(2)="☓"
27420 endif
27430 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
27440 Forcus1_buffer$(1)="○"
27450 else
27460 Forcus1_buffer$(1) = "☓"
27470 endif
27480 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
27490 Forcus1_buffer$(0)="○"
27500 else
27510 Forcus1_buffer$(0)="☓"
27520 endif
27530 gload Gazo$ + "Screen1.png",0,0,0
27540 if ex_info$(1)<>"JP" then
27550 color rgb(255,0,0):
27560 locate 1,1
27570 print "Bird's Eye Grid (Focus Line 1)"
27580 color rgb(255,255,255)
27590 locate 1,3:
27600 print "●. Horizontal Focus Line"
27610 locate 1,5
27620 print "1. Sharp Line:"+Forcus1_buffer$(2)
27630 locate 1,7
27640 print "2. Mediator Line:"+Forcus1_buffer$(1)
27650 locate 1,9
27660 print "3. Steady Line:"+Forcus1_buffer$(0)
27670 color rgb(0,0,0)
27680 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
27690 else
27700 color rgb(255,0,0):
27710 locate 1,1
27720 print "バーズアイグリッド(フォーカスライン1)"
27730 color rgb(255,255,255)
27740 locate 1,3:
27750 print "●.横のフォーカスライン"
27760 locate 1,5
27770 print "1.切れ者ライン:"+Forcus1_buffer$(2)
27780 locate 1,7
27790 print "2.調停者ライン:"+Forcus1_buffer$(1)
27800 locate 1,9
27810 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
27820 color rgb(0,0,0)
27830 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
27840 endif
27850 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
27860 key$ = inkey$
27870 bg = strig(1)
27880 bg2 = strig(0)
27890 pause 200
27900 wend
27910 if ((bg=2) or (key$=chr$(13))) then
27920 goto BirdsEye_Result3:
27930 endif
27940 if (bg2=2) then
27950 for i=0 to 8
27960 buffer(i)=0
27970 next i
27980 goto Main_Screen:
27990 endif
28000 BirdsEye_Result3:
28010 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
28020 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
28030 Forcus2_buffer$(2)="○"
28040 else
28050 Forcus2_buffer$(2)="☓"
28060 endif
28070 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
28080 Forcus2_buffer$(1)="○"
28090 else
28100 Forcus2_buffer$(1) = "☓"
28110 endif
28120 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
28130 Forcus2_buffer$(0)="○"
28140 else
28150 Forcus2_buffer$(0)="☓"
28160 endif
28170 gload Gazo$ + "Screen1.png",0,0,0
28180 if ex_info$(1)<>"JP" then
28190 color rgb(255,0,0):
28200 locate 1,1
28210 print "Bird's Eye Grid (Focus Line 2)"
28220 color rgb(255,255,255)
28230 locate 1,3
28240 print "●. Vertical Focus Line"
28250 locate 1,5
28260 print "1. Expresser Line:" + Forcus2_buffer$(2)
28270 locate 1,7
28280 print "2. Commander Line:" + Forcus2_buffer$(1)
28290 locate 1,9
28300 print "3. Leader Line:" + Forcus2_buffer$(0)
28310 color rgb(0,0,0)
28320 locate 0,15:print "Right circle: Next, Left circle: Retest "
28330 else
28340 color rgb(255,0,0):
28350 locate 1,1
28360 print "バーズアイグリッド(フォーカスライン2)"
28370 color rgb(255,255,255)
28380 locate 1,3
28390 print "●.縦のフォーカスライン"
28400 locate 1,5
28410 print "1.表現者ライン:" + Forcus2_buffer$(2)
28420 locate 1,7
28430 print "2.司令塔ライン:" + Forcus2_buffer$(1)
28440 locate 1,9
28450 print "3.指導者ライン:" + Forcus2_buffer$(0)
28460 color rgb(0,0,0)
28470 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
28480 endif
28490 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
28500 key$ = inkey$
28510 bg = strig(1)
28520 bg2 = strig(0)
28530 pause 200
28540 wend
28550 if ((bg = 2) or (key$ = chr$(13))) then
28560 goto BirdsEye_Result4:
28570 endif
28580 if (bg2=2) then
28590 for i=0 to 8
28600 buffer(i)=0
28610 next i
28620 goto Main_Screen:
28630 endif
28640 BirdsEye_Result4:
28650 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
28660 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
28670 Forcus3_buffer$(1) = "○"
28680 else
28690 Forcus3_buffer$(1) = "☓"
28700 endif
28710 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
28720 Forcus3_buffer$(0) = "○"
28730 else
28740 Forcus3_buffer$(0) = "☓"
28750 endif
28760 gload Gazo$ + "Screen1.png",0,0,0
28770 if ex_info$(1)<>"JP" then
28780 color rgb(255,0,0):
28790 locate 1,1
28800 print "Bird's Eye Grid (Focus Line 3)"
28810 color rgb(255,255,255)
28820 locate 1,3:
28830 print "●. Diagonal Focus Line"
28840 locate 1,5
28850 print "1. Success Line:"+Forcus3_buffer$(1)
28860 locate 1,7
28870 print "2. Celebrity Line:"+Forcus3_buffer$(0)
28880 color rgb(0,0,0)
28890 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
28900 else
28910 color rgb(255,0,0):
28920 locate 1,1
28930 print "バーズアイグリッド(フォーカスライン3)"
28940 color rgb(255,255,255)
28950 locate 1,3:
28960 print "●.斜めのフォーカスライン"
28970 locate 1,5
28980 print "1.成功者ライン:"+Forcus3_buffer$(1)
28990 locate 1,7
29000 print "2.セレブライン:"+Forcus3_buffer$(0)
29010 color rgb(0,0,0)
29020 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
29030 endif
29040 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
29050 key$ = inkey$
29060 bg = strig(1)
29070 bg2 = strig(0)
29080 pause 200
29090 wend
29100 if ((bg=2) or (key$=chr$(13))) then
29110 goto Result_Birtheye1:
29120 endif
29130 if (bg2=2) then
29140 'データークリア
29150 for i=0 to 8
29160 buffer(i) = 0
29170 next i
29180 goto Main_Screen:
29190 endif
29200 References1:
29210 cls 3:key$ = "":bg = 0:play "":font 48-8
29220 gload Gazo$ + "Reference1_20230703.png",0,0,0
29230 gload Gazo$ + "downscreen.png",0,0,800
29240 if ex_info$(1)<>"JP" then
29250 print chr$(13)+chr$(13)+chr$(13)
29260 color rgb(0,0,255)
29270 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
29280 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
29290 print "・Publisher: Gento-sha" + chr$(13)
29300 print "・Website: www.carolAdrienne.jp/" + chr$(13)
29310 print "・ISBN: 978-4-344-01394-0" + chr$(13)
29320 print "・Price: 1500 yen + tax" + chr$(13)
29330 color rgb(255,255,255)
29340 locate 1,18
29350 print "Right joystick: Next"
29360 else
29370 print chr$(13)+chr$(13)+chr$(13)
29380 color rgb(0,0,255)
29390 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
29400 print "・Author:carol Adrinne,PhD"+chr$(13)
29410 print "・出版社:幻冬舎" + chr$(13)
29420 print "・HP:www.carolAdrienne.jp/"+chr$(13)
29430 print "・ISBN:978-4-344-01394-0"+chr$(13)
29440 print "・定価:1500円 + 税"+chr$(13)
29450 color rgb(255,255,255)
29460 locate 1,18
29470 print "ジョイパッド右：次へ"
29480 endif
29490 while (key$ <> chr$(13) and bg <> 2)
29500 bg = strig(1)
29510 key$ = inkey$
29520 pause 200
29530 wend
29540 '
29550 if ((bg = 2) or (key$ = chr$(13))) then
29560 pause 200:goto References2:
29570 endif
29580 'ユダヤの秘儀 カバラ大占術
29590 References2:
29600 cls 3:play "":bg = 0:key$ = ""
29610 gload Gazo$ + "Reference2_20230703.png",0,0,0
29620 gload Gazo$ + "downscreen.png",0,0,800
29630 '参考文献２
29640 'カバラ大占術
29650 if ex_info$(1)<>"JP" then
29660 print chr$(13) + chr$(13) + chr$(13)
29670 color  rgb(0,0,255):font 48-8
29680 locate 1,3
29690 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
29700 print "・Author: Hironari Asano" + chr$(13)
29710 print "・Publisher: NON BOOK" + chr$(13)
29720 print "・ISBN: 4-396-10364-6" + chr$(13)
29730 print "・Price: 829 yen + tax"
29740 color rgb(255,255,255)
29750 locate 1,18
29760 print "Right joystick: Return to top"
29770 else
29780 print chr$(13) + chr$(13) + chr$(13)
29790 color  rgb(0,0,255):font 48-8
29800 locate 1,3
29810 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
29820 print "・著者：浅野　八郎" + chr$(13)
29830 print "・出版社:NON BOOK" + chr$(13)
29840 print "・ISBN:4-396-10364-6" + chr$(13)
29850 print "・定価:829円 + 税"
29860 color rgb(255,255,255)
29870 locate 1,18
29880 print "ジョイパッド右：トップへ行く"
29890 endif
29900 while ((key$ <> chr$(13)) and (bg <> 2))
29910 bg = strig(1)
29920 key$ = inkey$
29930 pause 200
29940 wend
29950 if ((bg = 2) or (key$ = chr$(13))) then
29960 pause 200:goto Main_Screen:
29970 endif
29980 end
29990 '1.数秘術　トップ画面
30000 Kabara_First_Top:
30010 cls 3:color rgb(255,255,255):play ""
30020 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
30030 gload Gazo$ + "downscreen.png",0,0,800
30040 No=0:init"kb:4"
30050 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
30060 if ex_info$(1)<>"JP" then
30070 print chr$(13);chr$(13)
30080 color rgb(255,255,255)
30090 locate 3,4:No=0
30100 print "Please select a number" + chr$(13)
30110 print " :1. Numerology" + chr$(13)
30120 print " :2. Return to the top screen" + chr$(13)
30130 color rgb(0,0,0)
30140 sp_on 0,1
30150 locate 1,15:print "1. Select Numerology"
30160 else
30170 print chr$(13);chr$(13)
30180 color rgb(255,255,255)
30190 locate 3,4:No=0
30200 print "番号選んでください" + chr$(13)
30210 print " :1.数秘術占い" + chr$(13)
30220 print " :2.トップ画面に戻る" + chr$(13)
30230 color rgb(0,0,0)
30240 sp_on 0,1
30250 locate 1,15:print "1.数秘術番号を求めるを選択"
30260 endif
30270 'KeyBord:true
30280 'Joy Pad:true
30290 '上、下:true
30300 '
30310 'ｂｇ：決定ボタン
30320 'カーソル　上
30330 'カーソル　下
30340 Kabara_First_Top2:
30350 key$ = "":bg = 0:y = 0:
30360 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
30370 key$ = inkey$
30380 bg = strig(1)
30390 y = stick(1)
30400 'PauseでCPUを休める
30410 pause 5
30420 wend
30430 '1.カーソル　下 処理 chr$(31)
30440 'カーソル　下
30450 if ex_info$(1)<>"JP" then
30460 if ((key$ = chr$(31)) or (y = 1)) then
30470 select case No
30480 '
30490 case 1:
30500 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
30510 case 0:
30520 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
30530 'case 2:
30540 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
30550 end select
30560 endif
30570 else
30580 if ((key$ = chr$(31)) or (y = 1)) then
30590 select case No
30600 '
30610 case 1:
30620 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
30630 case 0:
30640 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
30650 'case 2:
30660 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
30670 end select
30680 endif
30690 '2.カーソル　上 処理 chr$(30)
30700 if ((key$ = chr$(30)) or (y = -1)) then
30710 select case No
30720 case 0:
30730 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
30740 case 1:
30750 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
30760 'case 2:
30770 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
30780 end select
30790 endif
30800 endif
30810 '3.決定 処理  bg:2 or Enter key:chr$(13)
30820 if ((bg = 2) or (key$ = chr$(13))) then
30830 select case No
30840 case 0:
30850 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
30860 goto Kabara_TopScreen:
30870 'case 1:
30880 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
30890 case 1:
30900 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
30910 end select
30920 endif
30930 '
30940 'Kabara 相性占い トップ画面
30950 Kabara_Aishou_Top:
30960 cls 3:y=0:key$="":bg=0:No=0
30970 play ""
30980 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
30990 gload Gazo$ + "downscreen.png",0,0,800
31000 if ex_info$(1)<>"JP" then
31010 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
31020 print chr$(13) + chr$(13)
31030 locate 0,4:color rgb(255,255,255)
31040 print "Please select a number" + chr$(13)
31050 print " :1. Compatibility fortune-telling ...." + chr$(13)
31060 print " :2. Business compatibility fortune-telling" + chr$(13)
31070 print " :3. Return to the top screen" + chr$(13)
31080 sp_on 0,1:sp_on 1,0:sp_on 2,0
31090 color rgb(0,0,0)
31100 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
31110 else
31120 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
31130 print chr$(13) + chr$(13)
31140 locate 0,4:color rgb(255,255,255)
31150 'print "Ok"
31160 '
31170 print "番号を選んでください" + chr$(13)
31180 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
31190 print " :2.ビジネスの相性占い" + chr$(13)
31200 print " :3.トップ画面に戻る" + chr$(13)
31210 sp_on 0,1:sp_on 1,0:sp_on 2,0
31220 color rgb(0,0,0)
31230 locate 1,15:print "1.男女2人の相性占いを選択"
31240 endif
31250 Kabara_Aishou_Top2:
31260 key$ = "":y = 0:bg = 0:
31270 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
31280 'ジョイパッド(右) ,十字キー (上下)
31290 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
31300 y = stick(1)
31310 key$ = inkey$
31320 bg = strig(1)
31330 pause 200
31340 wend
31350 'カーソル　下 or 十字キー　下
31360 if ex_info$(1)<>"JP" then
31370 if ((key$ = chr$(31)) or (y = 1)) then
31380 select case No
31390 'Option change 1 - 2
31400 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
31410 'ok
31420 case 0:
31430 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
31440 'Option change 2 - 3
31450 case 1:
31460 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
31470 'Release time case 2 comment release
31480 case 2:
31490 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
31500 case else:
31510 goto Kabara_Aishou_Top2:
31520 end select
31530 endif
31540 if ((key$ = chr$(30)) or (y = -1)) then
31550 select case No
31560 case 0:
31570 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
31580 case 1:
31590 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
31600 case 2:
31610 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
31620 case else:
31630 goto Kabara_Aishou_Top2:
31640 end select
31650 endif
31660 else
31670 if ((key$ = chr$(31)) or (y = 1)) then
31680 select case No
31690 '選択肢　1 - 2に変更
31700 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
31710 'ok
31720 case 0:
31730 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
31740 '選択肢　2 - 3に変更
31750 case 1:
31760 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
31770 'リリース時 case 2コメント解除
31780 case 2:
31790 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
31800 case else:
31810 goto Kabara_Aishou_Top2:
31820 end select
31830 endif
31840 '十字キー　上　、カーソル　上
31850 if ((key$ = chr$(30)) or (y = -1)) then
31860 select case No
31870 case 0:
31880 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
31890 case 1:
31900 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
31910 case 2:
31920 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
31930 case else:
31940 goto Kabara_Aishou_Top2:
31950 end select
31960 endif
31970 endif
31980 '十字キー　上下:選択
31990 'ジョイパッド 右:決定
32000 if ((bg = 2) or (key$ = chr$(13))) then
32010 select case No
32020 '1.男女の相性
32030 case 0:
32040 '男女の相性占い(未実装)トップ画面に飛ぶ
32050 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
32060 '2ビジネスの相性
32070 case 1:
32080 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
32090 case 2:
32100 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
32110 end select
32120 endif
32130 '0.男女の相性　トップ画面　ここから
32140 Danjyo_Aisyou_Top:
32150 cls 3:y=0:key$="":bg=0:No=0
32160 play ""
32170 gload Gazo$ + "Screen1.png",0,0,0
32180 gload Gazo$ + "downscreen.png",0,0,800
32190 if ex_info$(1)<>"JP" then
32200 print chr$(13) + chr$(13)
32210 locate 0,4:color rgb(255,255,255)
32220 print "Please select a number" + chr$(13)
32230 print " :1. Compatibility with a person of ...." + chr$(13)
32240 print " :2. Compatibility between two people" + chr$(13)
32250 print " :3. Return to the top screen" + chr$(13)
32260 sp_on 0,1:sp_on 1,0:sp_on 2,0
32270 color rgb(0,0,0)
32280 locate 1,15:print "1. Compatibility with a person of ...."
32290 else
32300 print chr$(13) + chr$(13)
32310 locate 0,4:color rgb(255,255,255)
32320 'print "Ok"
32330 '
32340 print "番号を選んでください" + chr$(13)
32350 print " :1.自分と異性の相性(未実装)" + chr$(13)
32360 print " :2.男女2人の相性" + chr$(13)
32370 print " :3.トップ画面に戻る" + chr$(13)
32380 sp_on 0,1:sp_on 1,0:sp_on 2,0
32390 color rgb(0,0,0)
32400 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
32410 endif
32420 Danjyo_Aisyou_Top2:
32430 key$ = "":y = 0:bg = 0:
32440 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
32450 'ジョイパッド(右) ,十字キー (上下)
32460 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
32470 y = stick(1)
32480 key$ = inkey$
32490 bg = strig(1)
32500 pause 200
32510 wend
32520 if ex_info$(1)<>"JP" then
32530 'Cursor down or arrow key down
32540 if ((key$ = chr$(31)) or (y = 1)) then
32550 select case No
32560 'Option 1 - 2 change
32570 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
32580 'ok
32590 case 0:
32600 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
32610 'Option 2 - 3 change
32620 case 1:
32630 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
32640 'Release time case 2 comment release
32650 case 2:
32660 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
32670 case else:
32680 goto Kabara_Aishou_Top2:
32690 end select
32700 endif
32710 'Arrow key up, cursor up
32720 if ((key$ = chr$(30)) or (y = -1)) then
32730 select case No
32740 case 0:
32750 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
32760 case 1:
32770 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
32780 case 2:
32790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
32800 case else:
32810 goto Kabara_Aishou_Top2:
32820 end select
32830 endif
32840 else
32850 'カーソル　下 or 十字キー　下
32860 if ((key$ = chr$(31)) or (y = 1)) then
32870 select case No
32880 '選択肢　1 - 2に変更
32890 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
32900 'ok
32910 case 0:
32920 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
32930 '選択肢　2 - 3に変更
32940 case 1:
32950 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
32960 'リリース時 case 2コメント解除
32970 case 2:
32980 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
32990 case else:
33000 goto Kabara_Aishou_Top2:
33010 end select
33020 endif
33030 '十字キー　上　、カーソル　上
33040 if ((key$ = chr$(30)) or (y = -1)) then
33050 select case No
33060 case 0:
33070 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
33080 case 1:
33090 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
33100 case 2:
33110 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
33120 case else:
33130 goto Kabara_Aishou_Top2:
33140 end select
33150 endif
33160 endif
33170 end
33180 '十字キー　上下:選択
33190 'ジョイパッド 右:決定
33200 if ((bg = 2) or (key$ = chr$(13))) then
33210 select case No
33220 '1.自分と異性の相性
33230 case 0:
33240 '未実装
33250 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
33260 '2男女の相性 男性の名前入力に飛ぶ
33270 case 1:
33280 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
33290 case 2:
33300 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
33310 end select
33320 endif
33330 '0.男女の相性　トップ画面　ここまで
33340 '1.男女の相性 ここから
33350 '1-1.男性の名前を入力
33360 Danjyo_Aisyou_Input_Name_male:
33370 No=0:color RGB(255,255,255)
33380 '入力:キーボード
33390 cls 3:init "kb:2"
33400 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
33410 gload Gazo$ + "downscreen.png",0,0,800
33420 for i=0 to 3
33430 buf_male_year(i)=0
33440 next i
33450 if ex_info$(1)<>"JP" then
33460 play "":color rgb(255,0,0):male_name$ = ""
33470 locate 0,1
33480 print "Male Compatibility" + chr$(13) + chr$(13)
33490 color rgb(255,255,255):
33500 locate 0,3
33510 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
33520 locate 0,15:color rgb(0,0,0)
33530 Input "Man's Name:",male_name$
33540 else
33550 play "":color rgb(255,0,0):male_name$ = ""
33560 locate 0,1
33570 print "男性の相性" + chr$(13) + chr$(13)
33580 color rgb(255,255,255):
33590 locate 0,3
33600 print "男性の相性を求めます。男性の名前を" + chr$(13)
33610 print "入れてください" + chr$(13)
33620 locate 0,15:color rgb(0,0,0)
33630 Input "男性の名前:",male_name$
33640 endif
33650 '-------------------------------------------
33660 '1-2:男性の生まれた年代
33670 Danjyo_Aisyou_Input_Born_Year:
33680 No=0:color RGB(255,255,255)
33690 cls 3:init "kb:4"
33700 gload Gazo$ + "Screen1.png",0,0,0
33710 gload Gazo$ + "downscreen.png",0,0,800
33720 play "":color rgb(255,0,0)
33730 '-------------------------------------------
33740 font 48
33750 if ex_info$(1)<>"JP" then
33760 locate 0,1
33770 color rgb(255,255,255)
33780 print "Please enter the man's birth year" + chr$(13)
33790 color rgb(255,255,255)
33800 locate 1,3
33810 print "Man's Birth Year (4 digits):";buf_male_year$
33820 else
33830 locate 0,1
33840 '文字色：黒　 color rgb(0,0,0)
33850 color rgb(255,255,255)
33860 print "男性の生まれた年代を入れて下さい" + chr$(13)
33870 color rgb(255,255,255)
33880 locate 1,3
33890 print "男性の生まれた年代(西暦4桁):";buf_male_year$
33900 endif
33910 color rgb(255,255,255)
33920 'locate 4,6:print ":7"
33930 'locate 9,6:print ":8"
33940 'locate 12,6:print ":9"
33950 locate 4,6
33960 print ":7  :8  :9" + chr$(13)
33970 color rgb(255,255,255)
33980 locate 4,8
33990 print ":4  :5  :6" + chr$(13)
34000 color rgb(255,255,255)
34010 locate 4,10
34020 print ":1  :2  :3" + chr$(13)
34030 locate 4,12
34040 print "    :0"
34050 locate 12,12
34060 color rgb(0,0,255)
34070 print ":Ok"
34080 sp_on 4,0: sp_on 5,0:sp_on 6,0
34090 sp_on 7,0:sp_on 8,0:sp_on 9,0
34100 sp_on 10,0:sp_on 11,0:sp_on 12,0
34110 sp_on 13,0:sp_on 14,1
34120 '-------------------------------------------------------------------------------------
34130 Danjyo_Aisyou_Input_Male_Born_Year2:
34140 key$="":bg=0:y=0:y2=0:bg2=0:
34150 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34160 key$ = inkey$
34170 bg = strig(1)
34180 y = stick(1)
34190 y2 = stick(0)
34200 bg2=strig(0)
34210 pause 200
34220 wend
34230 '十字キー　ここから
34240 '上の矢印　または、十字キー上
34250 if ((y = -1) or (key$ = chr$(30))) then
34260 select case No
34270 'No=-1:okのとき:初期の状態
34280 '0kボタンから３に移動
34290 '上に行く 処理
34300 case -1:
34310 No=3:sp_on 12,1:sp_on 14,0
34320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34330 '選択肢:3
34340 '3ボタンから 6に移動
34350 case 3:
34360 No=6:sp_on 12,0:sp_on 11,1
34370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34380 '6ボタンから ９に移動
34390 case 6:
34400 No=9:sp_on 10,1:sp_on 11,0
34410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34420 '6ボタンから ９に移動　ここまで
34430 '9で上を押して何もしない
34440 case 9:
34450 '何もしない
34460 No=9
34470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34480 '9で上を押しても何もしない　ここまで
34490 '上　 0ボタンから2ボタン
34500 'sp_on 6,1:1
34510 'sp_on 8,1:5
34520 'sp_on 7,1:7
34530 case 0:
34540 No=2:sp_on 13,0:sp_on 9,1:
34550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34560 '上  0ボタンから2ボタン　ここまで
34570 '2から５になる 上
34580 case 2:
34590 No=5:sp_on 8,1:sp_on 9,0:
34600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34610 case 5:
34620 No=8:sp_on 7,1:sp_on 8,0
34630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34640 case 8:
34650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34660 case 1:
34670 No=4:sp_on 5,1:sp_on 6,0
34680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34690 case 4:
34700 No=7:sp_on 4,1:sp_on 5,0
34710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34720 case 7:
34730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34740 end select
34750 endif
34760 '左３　ここまで
34770 '下の矢印
34780 '中央 2
34790 if ((y=1) or (key$ = chr$(31))) then
34800 select case No
34810 '9から６に下げる
34820 case 9:
34830 No=6:sp_on 11,1:sp_on 10,0
34840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34850 '6から３に下げる
34860 case 6:
34870 No=3:sp_on 12,1:sp_on 11,0
34880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34890 '3から０ｋに変える
34900 case 3:
34910 No=-1:sp_on 14,1:sp_on 12,0
34920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34930 'Okから下のボタンを押しても何もしない
34940 case -1:
34950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34960 case 8:
34970 No=5:sp_on 8,1:sp_on 7,0
34980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34990 case 5:
35000 No=2:sp_on 9,1:sp_on 8,0
35010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35020 case 2:
35030 No=0:sp_on 13,1:sp_on 9,0
35040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35050 case 0:
35060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35070 case 7:
35080 No=4:sp_on 5,1:sp_on 4,0
35090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35100 case 4:
35110 No=1:sp_on 6,1:sp_on 5,0
35120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35130 case 1:
35140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35150 end select
35160 endif
35170 '左へボタン 十字キー　左　or 　カーソル左
35180 if ((y2 = -1) or (key$ = chr$(29))) then
35190 select case No
35200 'Ok ボタン  Okから　左　０に行く
35210 case -1:
35220 No=0:sp_on 13,1:sp_on 14,0
35230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35240 '0 ボタン  左　何もしない
35250 case 0:
35260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35270 case 3:
35280 No=2:sp_on 9,1:sp_on 12,0:
35290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35300 case 2:
35310 No=1:sp_on 6,1:sp_on 9,0:
35320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35330 case 1:
35340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35350 case 6:
35360 No=5:sp_on 8,1:sp_on 11,0
35370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35380 case 5:
35390 No=4:sp_on 5,1:sp_on 8,0
35400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35410 case 4:
35420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35430 case 9:
35440 No=8:sp_on 7,1:sp_on 10,0
35450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35460 case 8:
35470 No=7:sp_on 4,1:sp_on 7,0
35480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35490 case 7:
35500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35510 end select
35520 endif
35530 '右  十字キー　右　or カーソル　右
35540 if ((y2 = 1) or (key$ = chr$(28))) then
35550 select case No
35560 '0ボタンからokボタン右に移動
35570 case 0:
35580 No=-1:sp_on 14,1:sp_on 13,0
35590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35600 '0ボタンからokボタン 右に移動　ここまで
35610 'OKボタンで右を押して何もしない
35620 case -1:
35630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35640 case 1:
35650 No=2:sp_on 9,1:sp_on 6,0
35660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35670 case 2:
35680 No=3:sp_on 12,1:sp_on 9,0
35690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35700 case 3:
35710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35720 case 4:
35730 No=5:sp_on 8,1:sp_on 5,0
35740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35750 case 5:
35760 No=6:sp_on 11,1:sp_on 8,0
35770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35780 case 7:
35790 No=8:sp_on 7,1:sp_on 4,0
35800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35810 case 8:
35820 No=9:sp_on 10,1:sp_on 7,0
35830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35840 case 9:
35850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35860 case 6:
35870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35880 end select
35890 'Okから右ボタンを押して何もしない ここまで
35900 endif
35910 '十字キー　ここまで
35920 '==============================
35930 'ここから
35940 '==============================
35950 if ((bg = 2) or (key$ = chr$(13))) then
35960 select case count
35970 case 0:
35980 count = 1
35990 if (No = -1) then
36000 count = 0:No=0
36010 buf_male_year(0) = No
36020 'Okボタンを押したとき
36030 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36040 else
36050 'Okボタン以外が押されたとき
36060 if (No >= 1 and No <= 2) then
36070 buf_year$="":buf_year$ = str$(No) + "***"
36080 buf_year = No:a= No
36090 buf_Jyoushi_Born_Day(0) = No
36100 if ex_info$(1)<>"JP" then
36110 locate 1,3
36120 color rgb(255,255,255)
36130 print "Year of birth of the male (4 digits AD):";buf_year$
36140 else
36150 count=0
36160 ui_msg"The number is out of range."
36170 endif
36180 else
36190 locate 1,3
36200 color rgb(255,255,255)
36210 print "男性の生まれた年代(西暦4桁):";buf_year$
36220 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36230 else
36240 count=0
36250 ui_msg"数字が範囲外になります。"
36260 endif
36270 buf_year$="":buf_year=0
36280 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36290 endif
36300 'endif
36310 case 1:
36320 count = 2
36330 if (No = -1) then
36340 count = 1
36350 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36360 else
36370 buf_year = a * 10 + No
36380 b=buf_year
36390 buf_year$ = str$(buf_year) + "**"
36400 buf_male_year(0)=buf_year
36410 locate 1,3
36420 color rgb(255,255,255)
36430 print "                                                                "
36440 locate 1,3
36450 print "男性の生まれた年代(西暦4桁):" + buf_year$
36460 'if (No = -1) then
36470 'count=1
36480 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36490 endif
36500 case 2:
36510 count=3
36520 if (No=-1) then
36530 count =2
36540 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36550 else
36560 buf_year = b * 10 + No
36570 c=buf_year
36580 buf_year$ = str$(buf_year) + "*"
36590 buf_male_year(0) = buf_year
36600 locate 1,3
36610 color rgb(255,255,255)
36620 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
36630 if ex_info$(1)<>"JP" then
36640 locate 1,3
36650 print "Year of birth of the male (4 digits AD):";buf_year$
36660 else
36670 locate 1,3
36680 print "男性の生まれた年代(西暦4桁):";buf_year$
36690 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36700 endif
36710 endif
36720 case 3:
36730 count=4
36740 if (No = -1) then
36750 No=0
36760 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36770 else
36780 buf_year = c * 10 + No
36790 buf_year$ = str$(buf_year)
36800 buf_male_year(0) = buf_year
36810 if ex_info$(1)<>"JP" then
36820 locate 1,3
36830 color RGB(255,255,255)
36840 print "                                      "
36850 locate 1,3
36860 print "Year of birth of the male (4 digits AD):";buf_year$
36870 else
36880 locate 1,3
36890 color RGB(255,255,255)
36900 print "                                      "
36910 locate 1,3
36920 print "男性の生まれた年代(西暦4桁):";buf_year$
36930 endif
36940 buf_year=val(buf_year$)
36950 'year=val(buf_year$)
36960 'if (No=-1) then
36970 'goto Input_Born_Month:
36980 'else
36990 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37000 endif
37010 case 4:
37020 'bufyear=buf_year
37030 if (No=-1) then
37040 buf_year = val(buf_year$)
37050 buf_male_year(0)=buf_year
37060 sp_on 14,0:No=0
37070 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37080 else
37090 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37100 endif
37110 end select
37120 endif
37130 '===========================
37140 'ここまでを部下のところにコピーする.
37150 '===========================
37160 if (bg2 = 2) then
37170 select case count2
37180 case 0:
37190 if (No = -1) then
37200 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
37210 count=0
37220 if ex_info$(1)<>"JP" then
37230 locate 1,3
37240 color rgb(255,255,255)
37250 print "                                      "
37260 locate 1,3
37270 print "Year of birth of the male (4 digits AD):" + buf_male_year$
37280 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37290 else
37300 '(buf_year=0) then
37310 buf_male_year=0:buf_male_year$="****"
37320 locate 1,3
37330 print "                                       "
37340 locate 1,3
37350 print "Year of birth of the male (4 digits AD):"+buf_male_year$
37360 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37370 else
37380 locate 1,3
37390 color rgb(255,255,255)
37400 print "                                      "
37410 locate 1,3
37420 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
37430 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37440 else
37450 '(buf_year=0) then
37460 buf_male_year=0:buf_male_year$="****"
37470 locate 1,3
37480 print "                                       "
37490 locate 1,3
37500 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
37510 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37520 endif
37530 endif
37540 end select
37550 endif
37560 '-------生まれた年代　男性-------------
37570 '-------生まれた月　男性-------------
37580 '1-2:男性の生まれた月
37590 Danjyo_Aisyou_Input_Male_Born_Month:
37600 cls 3:play "":count=0:count2=0
37610 'No=-1:Okのとき
37620 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
37630 for i=0 to 1
37640 buf_male_month(i)=0
37650 next i
37660 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
37670 gload Gazo$ + "Screen1.png",0,0,0
37680 gload Gazo$ + "downscreen.png",0,0,800
37690 'Init"kb:4"
37700 '音声ファイル再生 2023.06.07
37710 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
37720 font 48
37730 locate 0,1
37740 '文字色：黒　 color rgb(0,0,0)
37750 '文字色:白
37760 color rgb(255,255,255)
37770 print "男性の生まれた月を入れて下さい" + chr$(13)
37780 '文字色:白
37790 color rgb(255,255,255)
37800 locate 1,3
37810 '文字色:白
37820 print "男性の生まれた月(1月~12月):"+buf_male_Month$
37830 color rgb(255,255,255)
37840 'locate 4,6:print ":7"
37850 'locate 9,6:print ":8"
37860 'locate 12,6:print ":9"
37870 locate 4,6
37880 '文字色:赤
37890 print ":7  :8  :9" + chr$(13)
37900 color rgb(255,255,255)
37910 locate 4,8
37920 print ":4  :5  :6" + chr$(13)
37930 color rgb(255,255,255)
37940 locate 4,10
37950 print ":1  :2  :3" + chr$(13)
37960 locate 4,12
37970 print "    :0"
37980 locate 12,12
37990 color rgb(0,0,255)
38000 print ":Ok"
38010 sp_on 4,0: sp_on 5,0:sp_on 6,0
38020 sp_on 7,0:sp_on 8,0:sp_on 9,0
38030 sp_on 10,0:sp_on 11,0:sp_on 12,0
38040 sp_on 13,0:sp_on 14,1
38050 '----------------------------------------------------------------------------------------
38060 Danjyo_Aisyou_Input_Male_Born_Month2:
38070 key$="":bg=0:y=0:y2=0:bg2=0
38080 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38090 key$ = inkey$
38100 bg = strig(1)
38110 y = stick(1)
38120 y2 = stick(0)
38130 bg2 = strig(0)
38140 pause 200
38150 wend
38160 '十字キー　ここから
38170 '上の矢印　または、十字キー上
38180 if ((y = -1) or (key$ = chr$(30))) then
38190 select case No
38200 'No=-1:okのとき:初期の状態
38210 '0kボタンから３に移動
38220 '上に行く 処理
38230 case -1:
38240 No=3:sp_on 12,1:sp_on 14,0
38250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38260 '選択肢:3
38270 '3ボタンから 6に移動
38280 case 3:
38290 No=6:sp_on 12,0:sp_on 11,1
38300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38310 '6ボタンから ９に移動
38320 case 6:
38330 No=9:sp_on 10,1:sp_on 11,0
38340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38350 '6ボタンから ９に移動　ここまで
38360 '9で上を押して何もしない
38370 case 9:
38380 '何もしない
38390 No=9
38400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38410 '9で上を押しても何もしない　ここまで
38420 '上　 0ボタンから2ボタン
38430 'sp_on 6,1:1
38440 'sp_on 8,1:5
38450 'sp_on 7,1:7
38460 case 0:
38470 No=2:sp_on 13,0:sp_on 9,1:
38480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38490 '上  0ボタンから2ボタン　ここまで
38500 '2から５になる 上
38510 case 2:
38520 No=5:sp_on 8,1:sp_on 9,0:
38530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38540 case 5:
38550 No=8:sp_on 7,1:sp_on 8,0
38560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38570 case 8:
38580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38590 case 1:
38600 No=4:sp_on 5,1:sp_on 6,0
38610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38620 case 4:
38630 No=7:sp_on 4,1:sp_on 5,0
38640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38650 case 7:
38660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38670 end select
38680 endif
38690 '左３　ここまで
38700 '下の矢印
38710 '中央 2
38720 if ((y=1) or (key$ = chr$(31))) then
38730 select case No
38740 '9から６に下げる
38750 case 9:
38760 No=6:sp_on 11,1:sp_on 10,0
38770 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
38780 '6から３に下げる
38790 case 6:
38800 No=3:sp_on 12,1:sp_on 11,0
38810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38820 '3から０ｋに変える
38830 case 3:
38840 No=-1:sp_on 14,1:sp_on 12,0
38850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38860 'Okから下のボタンを押しても何もしない
38870 case -1:
38880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38890 case 8:
38900 No=5:sp_on 8,1:sp_on 7,0
38910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38920 case 5:
38930 No=2:sp_on 9,1:sp_on 8,0
38940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38950 case 2:
38960 No=0:sp_on 13,1:sp_on 9,0
38970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38980 case 0:
38990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39000 case 7:
39010 No=4:sp_on 5,1:sp_on 4,0
39020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39030 case 4:
39040 No=1:sp_on 6,1:sp_on 5,0
39050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39060 case 1:
39070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39080 end select
39090 endif
39100 '左へボタン 十字キー　左　or 　カーソル左
39110 if ((y2 = -1) or (key$ = chr$(29))) then
39120 select case No
39130 'Ok ボタン  Okから　左　０に行く
39140 case -1:
39150 No=0:sp_on 13,1:sp_on 14,0
39160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39170 '0 ボタン  左　何もしない
39180 case 0:
39190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39200 case 3:
39210 No=2:sp_on 9,1:sp_on 12,0:
39220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39230 case 2:
39240 No=1:sp_on 6,1:sp_on 9,0:
39250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39260 case 1:
39270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39280 case 6:
39290 No=5:sp_on 8,1:sp_on 11,0
39300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39310 case 5:
39320 No=4:sp_on 5,1:sp_on 8,0
39330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39340 case 4:
39350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39360 case 9:
39370 No=8:sp_on 7,1:sp_on 10,0
39380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39390 case 8:
39400 No=7:sp_on 4,1:sp_on 7,0
39410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39420 case 7:
39430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39440 end select
39450 endif
39460 '右  十字キー　右　or カーソル　右
39470 if ((y2 = 1) or (key$ = chr$(28))) then
39480 select case No
39490 '0ボタンからokボタン右に移動
39500 case 0:
39510 No=-1:sp_on 14,1:sp_on 13,0
39520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39530 '0ボタンからokボタン 右に移動　ここまで
39540 'OKボタンで右を押して何もしない
39550 case -1:
39560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39570 case 1:
39580 No=2:sp_on 9,1:sp_on 6,0
39590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39600 case 2:
39610 No=3:sp_on 12,1:sp_on 9,0
39620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39630 case 3:
39640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39650 case 4:
39660 No=5:sp_on 8,1:sp_on 5,0
39670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39680 case 5:
39690 No=6:sp_on 11,1:sp_on 8,0
39700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39710 case 7:
39720 No=8:sp_on 7,1:sp_on 4,0
39730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39740 case 8:
39750 No=9:sp_on 10,1:sp_on 7,0
39760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39770 case 9:
39780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39790 case 6:
39800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39810 end select
39820 'Okから右ボタンを押して何もしない ここまで
39830 endif
39840 '十字キー　ここまで
39850 '右の丸ボタン + Enter key 決定キー
39860 if ((bg=2) or (key$=chr$(13))) then
39870 select case count
39880 case 0:
39890 if (No=-1) then No=0
39900 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
39910 if (buf_male_month > 1 and buf_male_month < 10)  then
39920 buf_male_Month$ = str$(buf_male_month)
39930 'buf_month=No
39940 endif
39950 if (buf_male_month = 1)  then
39960 buf_male_Month$ = str$(buf_male_month) + "*"
39970 'c=buf_month
39980 endif
39990 locate 1,3
40000 print "                                     "
40010 color RGB(255,255,255)
40020 locate 1,3
40030 print "男性の生まれた月(1月~12月):" + buf_male_Month$
40040 goto Danjyo_Aisyou_Input_Male_Born_Month2:
40050 case 1:
40060 count = 2:
40070 'c = val(buf_Month$)
40080 if (No = -1) then
40090 'count=0
40100 No=0
40110 month=buf_male_month
40120 buf_male_month=val(buf_male_Month$)
40130 month=buf_male_month
40140 buf_Jyoushi_Born_Day(1)=month
40150 '生まれた日に飛ぶ
40160 goto Danjyo_Aisyou_Input_Male_Born_Day:
40170 else
40180 buf_male_month = c*10 + No
40190 'if (buf_month = 1) then
40200 'buf_Month$ = str$(buf_month)
40210 'endif
40220 buf_male_Month$ = str$(buf_male_month)
40230 buf_Jyoushi_Born_Day(1) = buf_male_month
40240 locate 0,3
40250 print "                                           "
40260 locate 1,3
40270 color Rgb(255,255,255)
40280 print "男性の生まれた月(1月~12月):" + buf_male_Month$
40290 goto Danjyo_Aisyou_Input_Male_Born_Month2:
40300 endif
40310 case 2:
40320 '==================================
40330 '何もしない
40340 'coun = 2
40350 '==================================
40360 'c= val(buf_Month$)
40370 'buf_month = c*10 + No
40380 'buf_Month$ = str$(buf_month)
40390 'locate 2,3
40400 'print "上司の生まれた月(1月～12月):";buf_Month$
40410 'goto Jyoushi_Input_Born_Month2:
40420 'case 3:
40430 'count=4
40440 'b=val(buf_month$)
40450 'buf_month=c*10+No
40460 'buf_Month$=str$(buf_month)
40470 'locate 2,3
40480 'print "上司の生まれた月(1月～12月):";buf_Month$
40490 'buf_month=val(buf_Month$)
40500 'year=val(buf_year$)
40510 if (No=-1) then
40520 No=0
40530 goto Danjyo_Aisyou_Input_Male_Born_Day:
40540 else
40550 goto Danjyo_Aisyou_Input_Male_Born_Day2:
40560 endif
40570 'case 4:
40580 'bufyear=buf_year
40590 'if (No=-1) then
40600 'buf_month = val(buf_Month$)
40610 'month = buf_month
40620 'sp_on 14,0
40630 'goto Input_Born_Day:
40640 'else
40650 'goto Input_Born_Month2:
40660 'endif
40670 end select
40680 endif
40690 '左の丸ボタン　キャンセル
40700 if (bg2=2) then
40710 select case count2
40720 case 0:
40730 if (No = -1) then
40740 buf_male_month=0:buf_male_Month$="**"
40750 count=0
40760 'goto rewrite2:
40770 else
40780 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
40790 buf_male_month = 0:buf_male_Month$ = "**"
40800 locate 0,3
40810 color rgb(255,255,255)
40820 print "                                       "
40830 goto rewrite2:
40840 if (No>12) then
40850 ui_msg"値が範囲外です。"
40860 goto rewrite2:
40870 endif
40880 endif
40890 endif
40900 rewrite2:
40910 locate 2,3
40920 color rgb(255,255,255)
40930 print "                                      "
40940 locate 2,3
40950 print "男性の生まれた月(1月~12月):"+buf_male_Month$
40960 goto Danjyo_Aisyou_Input_Male_Born_Month2:
40970 end select
40980 'endif
40990 endif
41000 end
41010 '-------生まれた月　男性 ここまで-------------
41020 '-------生まれた日　男性 ここから-------------
41030 Danjyo_Aisyou_Input_Male_Born_Day:
41040 cls 3:play "":count=0:count2=0
41050 'No=-1:Okのとき
41060 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
41070 for i=0 to 1
41080 buf_day(i)=0
41090 next i
41100 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41110 gload Gazo$ + "Screen1.png",0,0,0
41120 gload Gazo$ + "downscreen.png",0,0,800
41130 'Init"kb:4"
41140 '音声ファイル再生 2023.06.07
41150 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
41160 font 48
41170 locate 0,1
41180 '文字色：黒　 color rgb(0,0,0)
41190 '文字色:白
41200 color rgb(255,255,255)
41210 print "男性の生まれた日を入れて下さい" + chr$(13)
41220 '文字色:白
41230 color rgb(255,255,255)
41240 locate 1,3
41250 '文字色:白
41260 print "男性の生まれた日(1月~31月):" + buf_Day$
41270 color rgb(255,255,255)
41280 'locate 4,6:print ":7"
41290 'locate 9,6:print ":8"
41300 'locate 12,6:print ":9"
41310 locate 4,6
41320 '文字色:赤
41330 print ":7  :8  :9" + chr$(13)
41340 color rgb(255,255,255)
41350 locate 4,8
41360 print ":4  :5  :6" + chr$(13)
41370 color rgb(255,255,255)
41380 locate 4,10
41390 print ":1  :2  :3" + chr$(13)
41400 locate 4,12
41410 print "    :0"
41420 locate 12,12
41430 color rgb(0,0,255)
41440 print ":Ok"
41450 sp_on 4,0: sp_on 5,0:sp_on 6,0
41460 sp_on 7,0:sp_on 8,0:sp_on 9,0
41470 sp_on 10,0:sp_on 11,0:sp_on 12,0
41480 sp_on 13,0:sp_on 14,1
41490 '-------------------------------------------------
41500 Danjyo_Aisyou_Input_Male_Born_Day2:
41510 key$="":bg=0:y=0:y2=0:bg2=0
41520 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
41530 key$ = inkey$
41540 bg = strig(1)
41550 y = stick(1)
41560 y2 = stick(0)
41570 bg2 = strig(0)
41580 pause 200
41590 wend
41600 '十字キー　ここから
41610 '上の矢印　または、十字キー上
41620 if ((y = -1) or (key$ = chr$(30))) then
41630 select case No
41640 'No=-1:okのとき:初期の状態
41650 '0kボタンから３に移動
41660 '上に行く 処理
41670 case -1:
41680 No=3:sp_on 12,1:sp_on 14,0
41690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41700 '選択肢:3
41710 '3ボタンから 6に移動
41720 case 3:
41730 No=6:sp_on 12,0:sp_on 11,1
41740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41750 '6ボタンから ９に移動
41760 case 6:
41770 No=9:sp_on 10,1:sp_on 11,0
41780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41790 '6ボタンから ９に移動　ここまで
41800 '9で上を押して何もしない
41810 case 9:
41820 '何もしない
41830 No=9
41840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41850 '9で上を押しても何もしない　ここまで
41860 '上　 0ボタンから2ボタン
41870 'sp_on 6,1:1
41880 'sp_on 8,1:5
41890 'sp_on 7,1:7
41900 case 0:
41910 No=2:sp_on 13,0:sp_on 9,1:
41920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41930 '上  0ボタンから2ボタン　ここまで
41940 '2から５になる 上
41950 case 2:
41960 No=5:sp_on 8,1:sp_on 9,0:
41970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41980 case 5:
41990 No=8:sp_on 7,1:sp_on 8,0
42000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42010 case 8:
42020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42030 case 1:
42040 No=4:sp_on 5,1:sp_on 6,0
42050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42060 case 4:
42070 No=7:sp_on 4,1:sp_on 5,0
42080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42090 case 7:
42100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42110 end select
42120 endif
42130 '左３　ここまで
42140 '下の矢印
42150 '中央 2
42160 if ((y=1) or (key$ = chr$(31))) then
42170 select case No
42180 '9から６に下げる
42190 case 9:
42200 No=6:sp_on 11,1:sp_on 10,0
42210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42220 '6から３に下げる
42230 case 6:
42240 No=3:sp_on 12,1:sp_on 11,0
42250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42260 '3から０ｋに変える
42270 case 3:
42280 No=-1:sp_on 14,1:sp_on 12,0
42290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42300 'Okから下のボタンを押しても何もしない
42310 case -1:
42320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42330 case 8:
42340 No=5:sp_on 8,1:sp_on 7,0
42350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42360 case 5:
42370 No=2:sp_on 9,1:sp_on 8,0
42380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42390 case 2:
42400 No=0:sp_on 13,1:sp_on 9,0
42410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42420 case 0:
42430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42440 case 7:
42450 No=4:sp_on 5,1:sp_on 4,0
42460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42470 case 4:
42480 No=1:sp_on 6,1:sp_on 5,0
42490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42500 case 1:
42510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42520 end select
42530 endif
42540 '左へボタン 十字キー　左　or 　カーソル左
42550 if ((y2 = -1) or (key$ = chr$(29))) then
42560 select case No
42570 'Ok ボタン  Okから　左　０に行く
42580 case -1:
42590 No=0:sp_on 13,1:sp_on 14,0
42600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42610 '0 ボタン  左　何もしない
42620 case 0:
42630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42640 case 3:
42650 No=2:sp_on 9,1:sp_on 12,0:
42660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42670 case 2:
42680 No=1:sp_on 6,1:sp_on 9,0:
42690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42700 case 1:
42710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42720 case 6:
42730 No=5:sp_on 8,1:sp_on 11,0
42740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42750 case 5:
42760 No=4:sp_on 5,1:sp_on 8,0
42770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42780 case 4:
42790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42800 case 9:
42810 No=8:sp_on 7,1:sp_on 10,0
42820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42830 case 8:
42840 No=7:sp_on 4,1:sp_on 7,0
42850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42860 case 7:
42870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42880 end select
42890 endif
42900 '右  十字キー　右　or カーソル　右
42910 if ((y2 = 1) or (key$ = chr$(28))) then
42920 select case No
42930 '0ボタンからokボタン右に移動
42940 case 0:
42950 No=-1:sp_on 14,1:sp_on 13,0
42960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42970 '0ボタンからokボタン 右に移動　ここまで
42980 'OKボタンで右を押して何もしない
42990 case -1:
43000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43010 case 1:
43020 No=2:sp_on 9,1:sp_on 6,0
43030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43040 case 2:
43050 No=3:sp_on 12,1:sp_on 9,0
43060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43070 case 3:
43080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43090 case 4:
43100 No=5:sp_on 8,1:sp_on 5,0
43110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43120 case 5:
43130 No=6:sp_on 11,1:sp_on 8,0
43140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43150 case 7:
43160 No=8:sp_on 7,1:sp_on 4,0
43170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43180 case 8:
43190 No=9:sp_on 10,1:sp_on 7,0
43200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43210 case 9:
43220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43230 case 6:
43240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43250 end select
43260 'Okから右ボタンを押して何もしない ここまで
43270 endif
43280 '十字キー　ここまで
43290 '右の丸ボタン + Enter key 決定キー
43300 if ((bg=2) or (key$=chr$(13))) then
43310 select case count
43320 case 0:
43330 if (No=-1) then No=0
43340 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
43350 if (buf_male_day > 1 and buf_male_day < 10)  then
43360 buf_male_Day$ = str$(buf_male_day)
43370 'buf_month=No
43380 endif
43390 if (buf_male_day = 1)  then
43400 buf_male_Day$ = str$(buf_male_day) + "*"
43410 'c=buf_month
43420 endif
43430 locate 1,3
43440 print "                                     "
43450 color RGB(255,255,255)
43460 locate 1,3
43470 print "男性の生まれた日(1月~31月):" + buf_male_Day$
43480 goto Danjyo_Aisyou_Input_Male_Born_Day2:
43490 case 1:
43500 count = 2:
43510 'c = val(buf_Month$)
43520 if (No = -1) then
43530 'count=0
43540 No=0
43550 day=buf_male_Day
43560 buf_male_Day=val(buf_male_Day$)
43570 day=buf_male_Day
43580 buf_Jyoushi_Born_Day(2)=day
43590 '生まれた日に飛ぶ
43600 goto Danjyo_Aisyou_Input_Male_Born_Day:
43610 else
43620 buf_male_Day = c*10 + No
43630 'if (buf_month = 1) then
43640 'buf_Month$ = str$(buf_month)
43650 'endif
43660 buf_male_Day$ = str$(buf_male_Day)
43670 buf_male_Born_Day(2) = buf_male_Day:
43680 locate 0,3
43690 print "                                           "
43700 locate 1,3
43710 color Rgb(255,255,255)
43720 print "男性の生まれた月(1月~12月):" + buf_male_Day$
43730 goto Danjyo_Aisyou_Input_Male_Born_Day2:
43740 endif
43750 case 2:
43760 '==================================
43770 '何もしない
43780 'coun = 2
43790 '==================================
43800 'c= val(buf_Month$)
43810 'buf_month = c*10 + No
43820 'buf_Month$ = str$(buf_month)
43830 'locate 2,3
43840 'print "上司の生まれた月(1月～12月):";buf_Month$
43850 'goto Jyoushi_Input_Born_Month2:
43860 'case 3:
43870 'count=4
43880 'b=val(buf_month$)
43890 'buf_month=c*10+No
43900 'buf_Month$=str$(buf_month)
43910 'locate 2,3
43920 'print "上司の生まれた月(1月～12月):";buf_Month$
43930 'buf_month=val(buf_Month$)
43940 'year=val(buf_year$)
43950 if (No=-1) then
43960 No=0
43970 goto Danjyo_Aisyou_Input_Male_Born_Day:
43980 else
43990 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44000 endif
44010 'case 4:
44020 'bufyear=buf_year
44030 'if (No=-1) then
44040 'buf_month = val(buf_Month$)
44050 'month = buf_month
44060 'sp_on 14,0
44070 'goto Input_Born_Day:
44080 'else
44090 'goto Input_Born_Month2:
44100 'endif
44110 end select
44120 endif
44130 '左の丸ボタン　キャンセル
44140 if (bg2=2) then
44150 select case count2
44160 case 0:
44170 if (No = -1) then
44180 buf_male_day=0:buf_male_Day$="**"
44190 count=0
44200 'goto rewrite2:
44210 else
44220 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
44230 buf_male_day = 0:buf_male_Day$ = "**"
44240 locate 0,3
44250 color rgb(255,255,255)
44260 print "                                       "
44270 goto rewrite2:
44280 if (No>12) then
44290 ui_msg"値が範囲外です。"
44300 goto rewrite2:
44310 endif
44320 endif
44330 endif
44340 rewrite2:
44350 locate 2,3
44360 color rgb(255,255,255)
44370 print "                                      "
44380 locate 2,3
44390 print "男性の生まれた日(1月~31月):"+buf_male_Day$
44400 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44410 end select
44420 'endif
44430 endif
44440 end
44450 '-------生まれた日　女性　ここまで-------------
44460 '1-1.女性の名前を入力
44470 Danjyo_Aisyou_Input_Name_female:
44480 No=0:color RGB(255,255,255)
44490 '入力:キーボード
44500 cls 3:init "kb:2"
44510 gload Gazo$ + "Screen1.png",0,0,0
44520 gload Gazo$ + "downscreen.png",0,0,800
44530 play "":color rgb(255,0,0):female_name$ = ""
44540 locate 0,1
44550 print "女性の相性" + chr$(13) + chr$(13)
44560 color rgb(255,255,255):
44570 locate 0,3
44580 print "女性の相性を求めます。男性の名前を" + chr$(13)
44590 print "入れてください" + chr$(13)
44600 locate 0,15:color rgb(0,0,0)
44610 Input "女性の名前:",female_name$
44620 '-------------------------------------------
44630 '-------生まれた年代　女性 ここから-------------
44640 Danjyo_Aisyou_Input_feMale_Born_Year:
44650 cls 3:play "":count=0:count2=0
44660 'No=-1:Okのとき
44670 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
44680 for i=0 to 1
44690 buf_day(i)=0
44700 next i
44710 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
44720 gload Gazo$ + "Screen1.png",0,0,0
44730 gload Gazo$ + "downscreen.png",0,0,800
44740 'Init"kb:4"
44750 '音声ファイル再生 2023.06.07
44760 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
44770 font 48
44780 locate 0,1
44790 '文字色：黒　 color rgb(0,0,0)
44800 '文字色:白
44810 color rgb(255,255,255)
44820 print "女性の生まれた年代を入れて下さい" + chr$(13)
44830 '文字色:白
44840 color rgb(255,255,255)
44850 locate 1,3
44860 '文字色:白
44870 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
44880 color rgb(255,255,255)
44890 'locate 4,6:print ":7"
44900 'locate 9,6:print ":8"
44910 'locate 12,6:print ":9"
44920 locate 4,6
44930 '文字色:赤
44940 print ":7  :8  :9" + chr$(13)
44950 color rgb(255,255,255)
44960 locate 4,8
44970 print ":4  :5  :6" + chr$(13)
44980 color rgb(255,255,255)
44990 locate 4,10
45000 print ":1  :2  :3" + chr$(13)
45010 locate 4,12
45020 print "    :0"
45030 locate 12,12
45040 color rgb(0,0,255)
45050 print ":Ok"
45060 sp_on 4,0: sp_on 5,0:sp_on 6,0
45070 sp_on 7,0:sp_on 8,0:sp_on 9,0
45080 sp_on 10,0:sp_on 11,0:sp_on 12,0
45090 sp_on 13,0:sp_on 14,1
45100 '---------------------------------------------
45110 Danjyo_Aisyou_Input_feMale_Born_Year2:
45120 key$="":bg=0:y=0:y2=0:bg2=0:
45130 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45140 key$ = inkey$
45150 bg = strig(1)
45160 y = stick(1)
45170 y2 = stick(0)
45180 bg2=strig(0)
45190 pause 200
45200 wend
45210 '十字キー　ここから
45220 '上の矢印　または、十字キー上
45230 if ((y = -1) or (key$ = chr$(30))) then
45240 select case No
45250 'No=-1:okのとき:初期の状態
45260 '0kボタンから３に移動
45270 '上に行く 処理
45280 case -1:
45290 No=3:sp_on 12,1:sp_on 14,0
45300 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
45310 '選択肢:3
45320 '3ボタンから 6に移動
45330 case 3:
45340 No=6:sp_on 12,0:sp_on 11,1
45350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45360 '6ボタンから ９に移動
45370 case 6:
45380 No=9:sp_on 10,1:sp_on 11,0
45390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45400 '6ボタンから ９に移動　ここまで
45410 '9で上を押して何もしない
45420 case 9:
45430 '何もしない
45440 No=9
45450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45460 '9で上を押しても何もしない　ここまで
45470 '上　 0ボタンから2ボタン
45480 'sp_on 6,1:1
45490 'sp_on 8,1:5
45500 'sp_on 7,1:7
45510 case 0:
45520 No=2:sp_on 13,0:sp_on 9,1:
45530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45540 '上  0ボタンから2ボタン　ここまで
45550 '2から５になる 上
45560 case 2:
45570 No=5:sp_on 8,1:sp_on 9,0:
45580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45590 case 5:
45600 No=8:sp_on 7,1:sp_on 8,0
45610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45620 case 8:
45630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45640 case 1:
45650 No=4:sp_on 5,1:sp_on 6,0
45660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45670 case 4:
45680 No=7:sp_on 4,1:sp_on 5,0
45690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45700 case 7:
45710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45720 end select
45730 endif
45740 '左３　ここまで
45750 '下の矢印
45760 '中央 2
45770 if ((y=1) or (key$ = chr$(31))) then
45780 select case No
45790 '9から６に下げる
45800 case 9:
45810 No=6:sp_on 11,1:sp_on 10,0
45820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45830 '6から３に下げる
45840 case 6:
45850 No=3:sp_on 12,1:sp_on 11,0
45860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45870 '3から０ｋに変える
45880 case 3:
45890 No=-1:sp_on 14,1:sp_on 12,0
45900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45910 'Okから下のボタンを押しても何もしない
45920 case -1:
45930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45940 case 8:
45950 No=5:sp_on 8,1:sp_on 7,0
45960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45970 case 5:
45980 No=2:sp_on 9,1:sp_on 8,0
45990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46000 case 2:
46010 No=0:sp_on 13,1:sp_on 9,0
46020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46030 case 0:
46040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46050 case 7:
46060 No=4:sp_on 5,1:sp_on 4,0
46070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46080 case 4:
46090 No=1:sp_on 6,1:sp_on 5,0
46100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46110 case 1:
46120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46130 end select
46140 endif
46150 '左へボタン 十字キー　左　or 　カーソル左
46160 if ((y2 = -1) or (key$ = chr$(29))) then
46170 select case No
46180 'Ok ボタン  Okから　左　０に行く
46190 case -1:
46200 No=0:sp_on 13,1:sp_on 14,0
46210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46220 '0 ボタン  左　何もしない
46230 case 0:
46240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46250 case 3:
46260 No=2:sp_on 9,1:sp_on 12,0:
46270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46280 case 2:
46290 No=1:sp_on 6,1:sp_on 9,0:
46300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46310 case 1:
46320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46330 case 6:
46340 No=5:sp_on 8,1:sp_on 11,0
46350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46360 case 5:
46370 No=4:sp_on 5,1:sp_on 8,0
46380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46390 case 4:
46400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46410 case 9:
46420 No=8:sp_on 7,1:sp_on 10,0
46430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46440 case 8:
46450 No=7:sp_on 4,1:sp_on 7,0
46460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46470 case 7:
46480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46490 end select
46500 endif
46510 '右  十字キー　右　or カーソル　右
46520 if ((y2 = 1) or (key$ = chr$(28))) then
46530 select case No
46540 '0ボタンからokボタン右に移動
46550 case 0:
46560 No=-1:sp_on 14,1:sp_on 13,0
46570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46580 '0ボタンからokボタン 右に移動　ここまで
46590 'OKボタンで右を押して何もしない
46600 case -1:
46610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46620 case 1:
46630 No=2:sp_on 9,1:sp_on 6,0
46640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46650 case 2:
46660 No=3:sp_on 12,1:sp_on 9,0
46670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46680 case 3:
46690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46700 case 4:
46710 No=5:sp_on 8,1:sp_on 5,0
46720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46730 case 5:
46740 No=6:sp_on 11,1:sp_on 8,0
46750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46760 case 7:
46770 No=8:sp_on 7,1:sp_on 4,0
46780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46790 case 8:
46800 No=9:sp_on 10,1:sp_on 7,0
46810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46820 case 9:
46830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46840 case 6:
46850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46860 end select
46870 'Okから右ボタンを押して何もしない ここまで
46880 endif
46890 '十字キー　ここまで
46900 '==============================
46910 'ここから
46920 '==============================
46930 if ((bg = 2) or (key$ = chr$(13))) then
46940 select case count
46950 case 0:
46960 count = 1
46970 if (No = -1) then
46980 count = 0:No=0
46990 buf_feMale_Born_Day(0) = No
47000 'Okボタンを押したとき
47010 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47020 else
47030 'Okボタン以外が押されたとき
47040 if (No >= 1 and No <= 2) then
47050 buf_female_year$="":buf_female_year$ = str$(No) + "***"
47060 buf_female_year = No:a= No
47070 buf_Jyoushi_Born_Day(0) = No
47080 locate 1,3
47090 color rgb(255,255,255)
47100 print "女性の生まれた年代(西暦4桁):";buf_female_year$
47110 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47120 else
47130 count=0
47140 ui_msg"数字が範囲外になります。"
47150 buf_female_year$="":buf_female_year=0
47160 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47170 endif
47180 endif
47190 case 1:
47200 count = 2
47210 if (No = -1) then
47220 count = 1
47230 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47240 else
47250 buf_female_year = a * 10 + No
47260 b=buf_female_year
47270 buf_year$ = str$(buf_female_year) + "**"
47280 buf_Jyoushi_Born_Day(0)=buf_female_year
47290 locate 1,3
47300 color rgb(255,255,255)
47310 print "                                                                "
47320 locate 1,3
47330 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
47340 'if (No = -1) then
47350 'count=1
47360 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47370 endif
47380 case 2:
47390 count=3
47400 if (No=-1) then
47410 count =2
47420 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47430 else
47440 buf_female_year = b * 10 + No
47450 c=buf_female_year
47460 buf_female_year$ = str$(buf_female_year) + "*"
47470 buf_Jyoushi_Born_Day(0) = buf_female_year
47480 locate 1,3
47490 color rgb(255,255,255)
47500 print "                                        "
47510 locate 1,3
47520 print "女性の生まれた年代(西暦4桁):";buf_female_year$
47530 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47540 endif
47550 case 3:
47560 count=4
47570 if (No = -1) then
47580 No=0
47590 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47600 else
47610 buf_female_year = c * 10 + No
47620 buf_female_year$ = str$(buf_female_year)
47630 buf_Jyoushi_Born_Day(0) = buf_female_year
47640 locate 1,3
47650 color RGB(255,255,255)
47660 print "                                      "
47670 locate 1,3
47680 print "女性の生まれた年代(西暦4桁):";buf_female_year$
47690 buf_female_year=val(buf_female_year$)
47700 'year=val(buf_year$)
47710 'if (No=-1) then
47720 'goto Input_Born_Month:
47730 'else
47740 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47750 endif
47760 case 4:
47770 'bufyear=buf_year
47780 if (No=-1) then
47790 buf_female_year = val(buf_female_year$)
47800 buf_Jyoushi_Born_Day(0)=buf_female_year
47810 sp_on 14,0:No=0
47820 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47830 else
47840 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47850 endif
47860 end select
47870 endif
47880 '===========================
47890 'ここまでを部下のところにコピーする.
47900 '===========================
47910 if (bg2 = 2) then
47920 select case count2
47930 case 0:
47940 if (No = -1) then
47950 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
47960 count=0
47970 locate 1,3
47980 color rgb(255,255,255)
47990 print "                                      "
48000 locate 1,3
48010 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
48020 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
48030 else
48040 '(buf_year=0) then
48050 buf_female_year=0:buf_year$="****"
48060 locate 1,3
48070 print "                                       "
48080 locate 1,3
48090 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
48100 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
48110 'endif
48120 endif
48130 end select
48140 endif
48150 '-------生まれた年代　女性 ここまで-------------
48160 '-------生まれた月　女性 ここまで--------------
48170 Danjyo_Aisyou_Input_feMale_Born_Month:
48180 cls 3:play "":count=0:count2=0
48190 'No=-1:Okのとき
48200 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
48210 for i=0 to 1
48220 buf_month(i)=0
48230 next i
48240 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
48250 gload Gazo$ + "Screen1.png",0,0,0
48260 gload Gazo$ + "downscreen.png",0,0,800
48270 'Init"kb:4"
48280 '音声ファイル再生 2023.06.07
48290 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
48300 font 48
48310 locate 0,1
48320 '文字色：黒　 color rgb(0,0,0)
48330 '文字色:白
48340 color rgb(255,255,255)
48350 print "女性の生まれた月を入れて下さい" + chr$(13)
48360 '文字色:白
48370 color rgb(255,255,255)
48380 locate 1,3
48390 '文字色:白
48400 print "女性の生まれた月(1月~12月):"+buf_female_Month$
48410 color rgb(255,255,255)
48420 'locate 4,6:print ":7"
48430 'locate 9,6:print ":8"
48440 'locate 12,6:print ":9"
48450 locate 4,6
48460 '文字色:赤
48470 print ":7  :8  :9" + chr$(13)
48480 color rgb(255,255,255)
48490 locate 4,8
48500 print ":4  :5  :6" + chr$(13)
48510 color rgb(255,255,255)
48520 locate 4,10
48530 print ":1  :2  :3" + chr$(13)
48540 locate 4,12
48550 print "    :0"
48560 locate 12,12
48570 color rgb(0,0,255)
48580 print ":Ok"
48590 sp_on 4,0: sp_on 5,0:sp_on 6,0
48600 sp_on 7,0:sp_on 8,0:sp_on 9,0
48610 sp_on 10,0:sp_on 11,0:sp_on 12,0
48620 sp_on 13,0:sp_on 14,1
48630 '---------------------------------------------
48640 Danjyo_Aisyou_Input_feMale_Born_Month2:
48650 key$="":bg=0:y=0:y2=0:bg2=0
48660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
48670 key$ = inkey$
48680 bg = strig(1)
48690 y = stick(1)
48700 y2 = stick(0)
48710 bg2 = strig(0)
48720 pause 200
48730 wend
48740 '十字キー　ここから
48750 '上の矢印　または、十字キー上
48760 if ((y = -1) or (key$ = chr$(30))) then
48770 select case No
48780 'No=-1:okのとき:初期の状態
48790 '0kボタンから３に移動
48800 '上に行く 処理
48810 case -1:
48820 No=3:sp_on 12,1:sp_on 14,0
48830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48840 '選択肢:3
48850 '3ボタンから 6に移動
48860 case 3:
48870 No=6:sp_on 12,0:sp_on 11,1
48880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48890 '6ボタンから ９に移動
48900 case 6:
48910 No=9:sp_on 10,1:sp_on 11,0
48920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48930 '6ボタンから ９に移動　ここまで
48940 '9で上を押して何もしない
48950 case 9:
48960 '何もしない
48970 No=9
48980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48990 '9で上を押しても何もしない　ここまで
49000 '上　 0ボタンから2ボタン
49010 'sp_on 6,1:1
49020 'sp_on 8,1:5
49030 'sp_on 7,1:7
49040 case 0:
49050 No=2:sp_on 13,0:sp_on 9,1:
49060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49070 '上  0ボタンから2ボタン　ここまで
49080 '2から５になる 上
49090 case 2:
49100 No=5:sp_on 8,1:sp_on 9,0:
49110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49120 case 5:
49130 No=8:sp_on 7,1:sp_on 8,0
49140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49150 case 8:
49160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49170 case 1:
49180 No=4:sp_on 5,1:sp_on 6,0
49190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49200 case 4:
49210 No=7:sp_on 4,1:sp_on 5,0
49220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49230 case 7:
49240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49250 end select
49260 endif
49270 '左３　ここまで
49280 '下の矢印
49290 '中央 2
49300 if ((y=1) or (key$ = chr$(31))) then
49310 select case No
49320 '9から６に下げる
49330 case 9:
49340 No=6:sp_on 11,1:sp_on 10,0
49350 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
49360 '6から３に下げる
49370 case 6:
49380 No=3:sp_on 12,1:sp_on 11,0
49390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49400 '3から０ｋに変える
49410 case 3:
49420 No=-1:sp_on 14,1:sp_on 12,0
49430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49440 'Okから下のボタンを押しても何もしない
49450 case -1:
49460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49470 case 8:
49480 No=5:sp_on 8,1:sp_on 7,0
49490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49500 case 5:
49510 No=2:sp_on 9,1:sp_on 8,0
49520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49530 case 2:
49540 No=0:sp_on 13,1:sp_on 9,0
49550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49560 case 0:
49570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49580 case 7:
49590 No=4:sp_on 5,1:sp_on 4,0
49600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49610 case 4:
49620 No=1:sp_on 6,1:sp_on 5,0
49630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49640 case 1:
49650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49660 end select
49670 endif
49680 '左へボタン 十字キー　左　or 　カーソル左
49690 if ((y2 = -1) or (key$ = chr$(29))) then
49700 select case No
49710 'Ok ボタン  Okから　左　０に行く
49720 case -1:
49730 No=0:sp_on 13,1:sp_on 14,0
49740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49750 '0 ボタン  左　何もしない
49760 case 0:
49770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49780 case 3:
49790 No=2:sp_on 9,1:sp_on 12,0:
49800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49810 case 2:
49820 No=1:sp_on 6,1:sp_on 9,0:
49830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49840 case 1:
49850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49860 case 6:
49870 No=5:sp_on 8,1:sp_on 11,0
49880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49890 case 5:
49900 No=4:sp_on 5,1:sp_on 8,0
49910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49920 case 4:
49930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49940 case 9:
49950 No=8:sp_on 7,1:sp_on 10,0
49960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49970 case 8:
49980 No=7:sp_on 4,1:sp_on 7,0
49990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50000 case 7:
50010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50020 end select
50030 endif
50040 '右  十字キー　右　or カーソル　右
50050 if ((y2 = 1) or (key$ = chr$(28))) then
50060 select case No
50070 '0ボタンからokボタン右に移動
50080 case 0:
50090 No=-1:sp_on 14,1:sp_on 13,0
50100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50110 '0ボタンからokボタン 右に移動　ここまで
50120 'OKボタンで右を押して何もしない
50130 case -1:
50140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50150 case 1:
50160 No=2:sp_on 9,1:sp_on 6,0
50170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50180 case 2:
50190 No=3:sp_on 12,1:sp_on 9,0
50200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50210 case 3:
50220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50230 case 4:
50240 No=5:sp_on 8,1:sp_on 5,0
50250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50260 case 5:
50270 No=6:sp_on 11,1:sp_on 8,0
50280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50290 case 7:
50300 No=8:sp_on 7,1:sp_on 4,0
50310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50320 case 8:
50330 No=9:sp_on 10,1:sp_on 7,0
50340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50350 case 9:
50360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50370 case 6:
50380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50390 end select
50400 'Okから右ボタンを押して何もしない ここまで
50410 endif
50420 '十字キー　ここまで
50430 '右の丸ボタン + Enter key 決定キー
50440 if ((bg=2) or (key$=chr$(13))) then
50450 select case count
50460 case 0:
50470 if (No=-1) then No=0
50480 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
50490 if (buf_female_month > 1 and buf_female_month < 10)  then
50500 buf_female_Month$ = str$(buf_female_month)
50510 'buf_month=No
50520 endif
50530 if (buf_female_month = 1)  then
50540 buf_female_Month$ = str$(buf_female_month) + "*"
50550 'c=buf_month
50560 endif
50570 locate 1,3
50580 print "                                     "
50590 color RGB(255,255,255)
50600 locate 1,3
50610 print "女性の生まれた月(1月~12月):" + buf_female_Month$
50620 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50630 case 1:
50640 count = 2:
50650 'c = val(buf_Month$)
50660 if (No = -1) then
50670 'count=0
50680 No=0
50690 month=buf_female_month
50700 buf_female_month=val(buf_female_Month$)
50710 month=buf_female_month
50720 buf_Jyoushi_Born_Day(1)=month
50730 '生まれた日に飛ぶ
50740 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50750 else
50760 buf_female_month = c*10 + No
50770 'if (buf_month = 1) then
50780 'buf_Month$ = str$(buf_month)
50790 'endif
50800 buf_female_Month$ = str$(buf_female_month)
50810 buf_Jyoushi_Born_Day(1) = buf_female_month
50820 locate 0,3
50830 print "                                           "
50840 locate 1,3
50850 color Rgb(255,255,255)
50860 print "女性の生まれた月(1月~12月):" + buf_female_Month$
50870 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50880 endif
50890 case 2:
50900 '==================================
50910 '何もしない
50920 'coun = 2
50930 '==================================
50940 'c= val(buf_Month$)
50950 'buf_month = c*10 + No
50960 'buf_Month$ = str$(buf_month)
50970 'locate 2,3
50980 'print "上司の生まれた月(1月～12月):";buf_Month$
50990 'goto Jyoushi_Input_Born_Month2:
51000 'case 3:
51010 'count=4
51020 'b=val(buf_month$)
51030 'buf_month=c*10+No
51040 'buf_Month$=str$(buf_month)
51050 'locate 2,3
51060 'print "上司の生まれた月(1月～12月):";buf_Month$
51070 'buf_month=val(buf_Month$)
51080 'year=val(buf_year$)
51090 if (No=-1) then
51100 No=0
51110 goto Danjyo_Aisyou_Input_Male_Born_Day:
51120 else
51130 goto Danjyo_Aisyou_Input_Male_Born_Day2:
51140 endif
51150 'case 4:
51160 'bufyear=buf_year
51170 'if (No=-1) then
51180 'buf_month = val(buf_Month$)
51190 'month = buf_month
51200 'sp_on 14,0
51210 'goto Input_Born_Day:
51220 'else
51230 'goto Input_Born_Month2:
51240 'endif
51250 end select
51260 endif
51270 '左の丸ボタン　キャンセル
51280 if (bg2=2) then
51290 select case count2
51300 case 0:
51310 if (No = -1) then
51320 buf_female_month=0:buf_female_Month$="**"
51330 count=0
51340 'goto rewrite2:
51350 else
51360 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
51370 buf_female_month = 0:buf_female_Month$ = "**"
51380 locate 0,3
51390 color rgb(255,255,255)
51400 print "                                       "
51410 goto rewrite2:
51420 if (No>12) then
51430 ui_msg"値が範囲外です。"
51440 goto rewrite2:
51450 endif
51460 endif
51470 endif
51480 rewrite2:
51490 locate 2,3
51500 color rgb(255,255,255)
51510 print "                                      "
51520 locate 2,3
51530 print "女性の生まれた月(1月~12月):"+buf_female_Month$
51540 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
51550 end select
51560 'endif
51570 endif
51580 end
51590 '-------生まれた月　女性 ここまで-------------
51600 '-------生まれた日　女性 ここまで-------------
51610 Danjyo_Aisyou_Input_feMale_Born_Day:
51620 cls 3:play "":count=0:count2=0
51630 'No=-1:Okのとき
51640 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
51650 for i=0 to 1
51660 buf_female_day(i)=0
51670 next i
51680 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
51690 gload Gazo$ + "Screen1.png",0,0,0
51700 gload Gazo$ + "downscreen.png",0,0,800
51710 'Init"kb:4"
51720 '音声ファイル再生 2023.06.07
51730 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
51740 font 48
51750 locate 0,1
51760 '文字色：黒　 color rgb(0,0,0)
51770 '文字色:白
51780 color rgb(255,255,255)
51790 print "女性の生まれた日を入れて下さい" + chr$(13)
51800 '文字色:白
51810 color rgb(255,255,255)
51820 locate 1,3
51830 '文字色:白
51840 print "女性の生まれた日(1月~31月):" + buf_female_Day$
51850 color rgb(255,255,255)
51860 'locate 4,6:print ":7"
51870 'locate 9,6:print ":8"
51880 'locate 12,6:print ":9"
51890 locate 4,6
51900 '文字色:赤
51910 print ":7  :8  :9" + chr$(13)
51920 color rgb(255,255,255)
51930 locate 4,8
51940 print ":4  :5  :6" + chr$(13)
51950 color rgb(255,255,255)
51960 locate 4,10
51970 print ":1  :2  :3" + chr$(13)
51980 locate 4,12
51990 print "    :0"
52000 locate 12,12
52010 color rgb(0,0,255)
52020 print ":Ok"
52030 sp_on 4,0: sp_on 5,0:sp_on 6,0
52040 sp_on 7,0:sp_on 8,0:sp_on 9,0
52050 sp_on 10,0:sp_on 11,0:sp_on 12,0
52060 sp_on 13,0:sp_on 14,1
52070 '---------------------------------------------
52080 Danjyo_Aisyou_Input_feMale_Born_Day2:
52090 key$="":bg=0:y=0:y2=0:bg2=0
52100 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
52110 key$ = inkey$
52120 bg = strig(1)
52130 y = stick(1)
52140 y2 = stick(0)
52150 bg2 = strig(0)
52160 pause 200
52170 wend
52180 '十字キー　ここから
52190 '上の矢印　または、十字キー上
52200 if ((y = -1) or (key$ = chr$(30))) then
52210 select case No
52220 'No=-1:okのとき:初期の状態
52230 '0kボタンから３に移動
52240 '上に行く 処理
52250 case -1:
52260 No=3:sp_on 12,1:sp_on 14,0
52270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52280 '選択肢:3
52290 '3ボタンから 6に移動
52300 case 3:
52310 No=6:sp_on 12,0:sp_on 11,1
52320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52330 '6ボタンから ９に移動
52340 case 6:
52350 No=9:sp_on 10,1:sp_on 11,0
52360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52370 '6ボタンから ９に移動　ここまで
52380 '9で上を押して何もしない
52390 case 9:
52400 '何もしない
52410 No=9
52420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52430 '9で上を押しても何もしない　ここまで
52440 '上　 0ボタンから2ボタン
52450 'sp_on 6,1:1
52460 'sp_on 8,1:5
52470 'sp_on 7,1:7
52480 case 0:
52490 No=2:sp_on 13,0:sp_on 9,1:
52500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52510 '上  0ボタンから2ボタン　ここまで
52520 '2から５になる 上
52530 case 2:
52540 No=5:sp_on 8,1:sp_on 9,0:
52550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52560 case 5:
52570 No=8:sp_on 7,1:sp_on 8,0
52580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52590 case 8:
52600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52610 case 1:
52620 No=4:sp_on 5,1:sp_on 6,0
52630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52640 case 4:
52650 No=7:sp_on 4,1:sp_on 5,0
52660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52670 case 7:
52680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52690 end select
52700 endif
52710 '左３　ここまで
52720 '下の矢印
52730 '中央 2
52740 if ((y=1) or (key$ = chr$(31))) then
52750 select case No
52760 '9から６に下げる
52770 case 9:
52780 No=6:sp_on 11,1:sp_on 10,0
52790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52800 '6から３に下げる
52810 case 6:
52820 No=3:sp_on 12,1:sp_on 11,0
52830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52840 '3から０ｋに変える
52850 case 3:
52860 No=-1:sp_on 14,1:sp_on 12,0
52870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52880 'Okから下のボタンを押しても何もしない
52890 case -1:
52900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52910 case 8:
52920 No=5:sp_on 8,1:sp_on 7,0
52930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52940 case 5:
52950 No=2:sp_on 9,1:sp_on 8,0
52960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52970 case 2:
52980 No=0:sp_on 13,1:sp_on 9,0
52990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53000 case 0:
53010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53020 case 7:
53030 No=4:sp_on 5,1:sp_on 4,0
53040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53050 case 4:
53060 No=1:sp_on 6,1:sp_on 5,0
53070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53080 case 1:
53090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53100 end select
53110 endif
53120 '左へボタン 十字キー　左　or 　カーソル左
53130 if ((y2 = -1) or (key$ = chr$(29))) then
53140 select case No
53150 'Ok ボタン  Okから　左　０に行く
53160 case -1:
53170 No=0:sp_on 13,1:sp_on 14,0
53180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53190 '0 ボタン  左　何もしない
53200 case 0:
53210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53220 case 3:
53230 No=2:sp_on 9,1:sp_on 12,0:
53240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53250 case 2:
53260 No=1:sp_on 6,1:sp_on 9,0:
53270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53280 case 1:
53290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53300 case 6:
53310 No=5:sp_on 8,1:sp_on 11,0
53320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53330 case 5:
53340 No=4:sp_on 5,1:sp_on 8,0
53350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53360 case 4:
53370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53380 case 9:
53390 No=8:sp_on 7,1:sp_on 10,0
53400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53410 case 8:
53420 No=7:sp_on 4,1:sp_on 7,0
53430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53440 case 7:
53450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53460 end select
53470 endif
53480 '右  十字キー　右　or カーソル　右
53490 if ((y2 = 1) or (key$ = chr$(28))) then
53500 select case No
53510 '0ボタンからokボタン右に移動
53520 case 0:
53530 No=-1:sp_on 14,1:sp_on 13,0
53540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53550 '0ボタンからokボタン 右に移動　ここまで
53560 'OKボタンで右を押して何もしない
53570 case -1:
53580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53590 case 1:
53600 No=2:sp_on 9,1:sp_on 6,0
53610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53620 case 2:
53630 No=3:sp_on 12,1:sp_on 9,0
53640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53650 case 3:
53660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53670 case 4:
53680 No=5:sp_on 8,1:sp_on 5,0
53690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53700 case 5:
53710 No=6:sp_on 11,1:sp_on 8,0
53720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53730 case 7:
53740 No=8:sp_on 7,1:sp_on 4,0
53750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53760 case 8:
53770 No=9:sp_on 10,1:sp_on 7,0
53780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53790 case 9:
53800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53810 case 6:
53820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53830 end select
53840 'Okから右ボタンを押して何もしない ここまで
53850 endif
53860 '十字キー　ここまで
53870 '右の丸ボタン + Enter key 決定キー
53880 if ((bg=2) or (key$=chr$(13))) then
53890 select case count
53900 case 0:
53910 if (No=-1) then No=0
53920 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
53930 if (buf_female_day > 1 and buf_female_day < 10)  then
53940 buf_female_Day$ = str$(buf_female_day)
53950 'buf_month=No
53960 endif
53970 if (buf_female_day = 1)  then
53980 buf_female_Day$ = str$(buf_female_day) + "*"
53990 'c=buf_month
54000 endif
54010 locate 1,3
54020 print "                                     "
54030 color RGB(255,255,255)
54040 locate 1,3
54050 print "女性の生まれた日(1月~31月):" + buf_female_Day$
54060 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54070 case 1:
54080 count = 2:
54090 'c = val(buf_Month$)
54100 if (No = -1) then
54110 'count=0
54120 No=0
54130 day=buf_female_day
54140 buf_female_day=val(buf_female_day$)
54150 day=bu_female_day
54160 buf_female_day(1)=day
54170 '生まれた日に飛ぶ
54180 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54190 else
54200 bu_female_day = c*10 + No
54210 'if (buf_month = 1) then
54220 'buf_Month$ = str$(buf_month)
54230 'endif
54240 buf_female_day$ = str$(buf_female_day)
54250 buf_female_day(1) = buf_female_day
54260 locate 0,3
54270 print "                                           "
54280 locate 1,3
54290 color Rgb(255,255,255)
54300 print "女性の生まれた日(1月~31月):" + buf_female_Day$
54310 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54320 endif
54330 case 2:
54340 '==================================
54350 '何もしない
54360 'coun = 2
54370 '==================================
54380 'c= val(buf_Month$)
54390 'buf_month = c*10 + No
54400 'buf_Month$ = str$(buf_month)
54410 'locate 2,3
54420 'print "上司の生まれた月(1月～12月):";buf_Month$
54430 'goto Jyoushi_Input_Born_Month2:
54440 'case 3:
54450 'count=4
54460 'b=val(buf_month$)
54470 'buf_month=c*10+No
54480 'buf_Month$=str$(buf_month)
54490 'locate 2,3
54500 'print "上司の生まれた月(1月～12月):";buf_Month$
54510 'buf_month=val(buf_Month$)
54520 'year=val(buf_year$)
54530 if (No=-1) then
54540 No=0
54550 goto Danjyo_Aisyou_Input_Male_Born_Day:
54560 else
54570 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54580 endif
54590 'case 4:
54600 'bufyear=buf_year
54610 'if (No=-1) then
54620 'buf_month = val(buf_Month$)
54630 'month = buf_month
54640 'sp_on 14,0
54650 'goto Input_Born_Day:
54660 'else
54670 'goto Input_Born_Month2:
54680 'endif
54690 end select
54700 endif
54710 '左の丸ボタン　キャンセル
54720 if (bg2=2) then
54730 select case count2
54740 case 0:
54750 if (No = -1) then
54760 buf_female_day=0:buf_female_Day$="**"
54770 count=0
54780 'goto rewrite2:
54790 else
54800 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
54810 buf_female_day = 0:buf_female_Day$ = "**"
54820 locate 0,3
54830 color rgb(255,255,255)
54840 print "                                       "
54850 goto rewrite2:
54860 if (No>12) then
54870 ui_msg"値が範囲外です。"
54880 goto rewrite2:
54890 endif
54900 endif
54910 endif
54920 rewrite2:
54930 locate 2,3
54940 color rgb(255,255,255)
54950 print "                                      "
54960 locate 2,3
54970 print "女性の生まれた日(1月~31月):"+buf_female_Day$
54980 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54990 end select
55000 'endif
55010 endif
55020 end
55030 '-------生まれた日　女性 ここまで-------------
55040 '1.男女の相性 ここまで
55050 '2.ビジネスの相性　
55060 '1.1人目のビジネスの相性　名前入力　1人目
55070 Business_Aishou_Input_1_parson:
55080 No=0:color RGB(255,255,255)
55090 cls 3:init "kb:2"
55100 gload Gazo$ + "Screen1.png",0,0,0
55110 gload Gazo$ + "downscreen.png",0,0,800
55120 play "":color rgb(255,0,0):name$ = ""
55130 locate 0,1
55140 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
55150 color rgb(255,255,255):
55160 locate 0,3
55170 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
55180 print "入れてください" + chr$(13)
55190 locate 0,15:color rgb(0,0,0)
55200 Input "1人目の名前:",name$
55210 'color rgb(0,0,0)
55220 'locate 0,13:print "                                     "
55230 'locate 0,13:print "1人目の名前を入力してエンターキー":
55240 'buffer_name$(0):1人目の名前
55250 buffer_name$(0) = name$:
55260 goto Business_Aishou_Input_2_Parson:
55270 '2.2人目のビジネスの相性 名前入力 2人目
55280 Business_Aishou_Input_2_Parson:
55290 cls 3:init "kb:2":name$ = "":No=0
55300 gload Gazo$ + "Screen1.png",0,0,0
55310 gload Gazo$ + "downscreen.png",0,0,800
55320 color rgb(255,0,0)
55330 'Title
55340 locate 0,1
55350 print "ビジネスの相性　2人目"
55360 locate 0,3
55370 color rgb(255,255,255)
55380 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
55390 print "入れてください" + chr$(13)
55400 locate 0,15:color rgb(0,0,0)
55410 Input "2人目の名前:",name$
55420 'color rgb(0,0,0)
55430 'locate 0,15:print "                                              "
55440 'locate 0,15:print "2人目の名前を入力してエンター ":
55450 '2人目
55460 '2人目の名前を入れるに代入
55470 buffer_name$(1) = name$:
55480 goto Select_jyoushi:
55490 '3.上司の選択
55500 Select_jyoushi:
55510 cls 3:gload Gazo$ + "Screen1.png",0,0,0
55520 gload Gazo$ + "downscreen.png",0,0,800
55530 init "kb:4":No=0
55540 color rgb(0,0,255)
55550 locate 1,1
55560 print "上司の選択"
55570 color rgb(255,255,255)
55580 locate 0,4:print "名前から上司の方を選んでください"
55590 locate 0,6
55600 print " :";buffer_name$(0);"が上 司";chr$(13)
55610 locate 0,8
55620 print " :";buffer_name$(1);"が上 司";chr$(13)
55630 locate 0,15:
55640 print "                                     "
55650 locate 0,15:color rgb(0,0,0)
55660 print "上司の方を選んで右の丸ボタン"
55670 sp_on 0,1:sp_on 1,0:sp_on 2,0
55680 Select_jyoushi2:
55690 'ここでNo=0をおいてはいけない
55700 y=0:key$="":bg=0:
55710 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
55720 y = stick(1)
55730 key$ = inkey$
55740 bg = strig(1)
55750 pause 5
55760 wend
55770 '1.カーソル下の処理　or 十字キーの下処理
55780 if ((key$ = chr$(31)) or (y = 1)) then
55790 select case No
55800 case 0:
55810 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
55820 case 1:
55830 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
55840 end select
55850 endif
55860 '2.カーソル上処理　or 十字キーの上の処理
55870 if ((key$ = chr$(30)) or (y = -1)) then
55880 select case No
55890 case 0:
55900 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
55910 case 1:
55920 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
55930 end select
55940 endif
55950 if ((key$ = chr$(13)) or (bg = 2)) then
55960 select case No
55970 case 0:
55980 '上司(name1)を配列に代入
55990 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
56000 case 1:
56010 '上司（name2)を配列に代入
56020 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
56030 end select
56040 endif
56050 '3.決定ボタン　Enter or 右の丸ボタン
56060 '1.誕生日入力
56070 '1-1.生まれた年を入力
56080 'Jyoushi_born_year:
56090 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
56100 '---------------------------------------------'
56110 '誕生日入力(生れた年代)
56120 Jyoushi_Input_Seireki:
56130 'buf_Jyoushi_Born_Year:上司の生まれた年代
56140 'buf_Jyoushi_Born_Day(0) = born_year
56150 cls 3:play "":count=0:count2=0
56160 init"kb:4"
56170 'No=-1:Okのとき
56180 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
56190 for i=0 to 3
56200 buf_Jyoushi_Born_Day(i)=0
56210 next i
56220 gload Gazo$ + "Screen2.png",0,0,0
56230 gload Gazo$ + "downscreen.png",0,0,800
56240 'Init"kb:2"
56250 '音声ファイル再生 2023.06.07
56260 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
56270 font 48
56280 locate 0,1
56290 '文字色：黒　 color rgb(0,0,0)
56300 color rgb(255,255,255)
56310 print "上司の生まれた年代を入れて下さい" + chr$(13)
56320 color rgb(255,255,255)
56330 locate 1,3
56340 print "上司の生まれた年代(西暦4桁):";buf_year$
56350 color rgb(255,255,255)
56360 'locate 4,6:print ":7"
56370 'locate 9,6:print ":8"
56380 'locate 12,6:print ":9"
56390 'locate 4,6
56400 'print ":7  :8  :9" + chr$(13)
56410 'color rgb(255,255,255)
56420 'locate 4,8
56430 'print ":4  :5  :6" + chr$(13)
56440 'color rgb(255,255,255)
56450 'locate 4,10
56460 'print ":1  :2  :3" + chr$(13)
56470 'locate 4,12
56480 'print "    :0"
56490 'locate 12,12
56500 'color rgb(0,0,255)
56510 'print ":Ok"
56520 sp_on 4,0: sp_on 5,0:sp_on 6,0
56530 sp_on 7,0:sp_on 8,0:sp_on 9,0
56540 sp_on 10,0:sp_on 11,0:sp_on 12,0
56550 sp_on 13,0:sp_on 14,1
56560 Jyoushi_Input_Seireki2:
56570 key$="":bg=0:y=0:y2=0:bg2=0:
56580 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
56590 key$ = inkey$
56600 bg = strig(1)
56610 y = stick(1)
56620 y2 = stick(0)
56630 bg2=strig(0)
56640 pause 200
56650 wend
56660 '十字キー　ここから
56670 '上の矢印　または、十字キー上
56680 if ((y = -1) or (key$ = chr$(30))) then
56690 select case No
56700 'No=-1:okのとき:初期の状態
56710 '0kボタンから３に移動
56720 '上に行く 処理
56730 case -1:
56740 No=3:sp_on 12,1:sp_on 14,0
56750 pause 200:goto Jyoushi_Input_Seireki2:
56760 '選択肢:3
56770 '3ボタンから 6に移動
56780 case 3:
56790 No=6:sp_on 12,0:sp_on 11,1
56800 pause 200:goto Jyoushi_Input_Seireki2:
56810 '6ボタンから ９に移動
56820 case 6:
56830 No=9:sp_on 10,1:sp_on 11,0
56840 pause 200:goto Jyoushi_Input_Seireki2:
56850 '6ボタンから ９に移動　ここまで
56860 '9で上を押して何もしない
56870 case 9:
56880 '何もしない
56890 No=9
56900 pause 200:goto Jyoushi_Input_Seireki2:
56910 '9で上を押しても何もしない　ここまで
56920 '上　 0ボタンから2ボタン
56930 'sp_on 6,1:1
56940 'sp_on 8,1:5
56950 'sp_on 7,1:7
56960 case 0:
56970 No=2:sp_on 13,0:sp_on 9,1:
56980 pause 200:goto Jyoushi_Input_Seireki2:
56990 '上  0ボタンから2ボタン　ここまで
57000 '2から５になる 上
57010 case 2:
57020 No=5:sp_on 8,1:sp_on 9,0:
57030 pause 200:goto Jyoushi_Input_Seireki2:
57040 case 5:
57050 No=8:sp_on 7,1:sp_on 8,0
57060 pause 200:goto Jyoushi_Input_Seireki2:
57070 case 8:
57080 pause 200:goto Jyoushi_Input_Seireki2:
57090 case 1:
57100 No=4:sp_on 5,1:sp_on 6,0
57110 pause 200:goto Jyoushi_Input_Seireki2:
57120 case 4:
57130 No=7:sp_on 4,1:sp_on 5,0
57140 pause 200:goto Jyoushi_Input_Seireki2:
57150 case 7:
57160 pause 200:goto Jyoushi_Input_Seireki2:
57170 end select
57180 endif
57190 '左３　ここまで
57200 '下の矢印
57210 '中央 2
57220 if ((y=1) or (key$ = chr$(31))) then
57230 select case No
57240 '9から６に下げる
57250 case 9:
57260 No=6:sp_on 11,1:sp_on 10,0
57270 pause 200:goto Jyoushi_Input_Seireki2:
57280 '6から３に下げる
57290 case 6:
57300 No=3:sp_on 12,1:sp_on 11,0
57310 pause 200:goto Jyoushi_Input_Seireki2:
57320 '3から０ｋに変える
57330 case 3:
57340 No=-1:sp_on 14,1:sp_on 12,0
57350 pause 200:goto Jyoushi_Input_Seireki2:
57360 'Okから下のボタンを押しても何もしない
57370 case -1:
57380 pause 200:goto Jyoushi_Input_Seireki2:
57390 case 8:
57400 No=5:sp_on 8,1:sp_on 7,0
57410 pause 200:goto Jyoushi_Input_Seireki2:
57420 case 5:
57430 No=2:sp_on 9,1:sp_on 8,0
57440 pause 200:goto Jyoushi_Input_Seireki2:
57450 case 2:
57460 No=0:sp_on 13,1:sp_on 9,0
57470 pause 200:goto Jyoushi_Input_Seireki2:
57480 case 0:
57490 pause 200:goto Jyoushi_Input_Seireki2:
57500 case 7:
57510 No=4:sp_on 5,1:sp_on 4,0
57520 pause 200:goto Jyoushi_Input_Seireki2:
57530 case 4:
57540 No=1:sp_on 6,1:sp_on 5,0
57550 pause 200:goto Jyoushi_Input_Seireki2:
57560 case 1:
57570 pause 200:goto Jyoushi_Input_Seireki2:
57580 end select
57590 endif
57600 '左へボタン 十字キー　左　or 　カーソル左
57610 if ((y2 = -1) or (key$ = chr$(29))) then
57620 select case No
57630 'Ok ボタン  Okから　左　０に行く
57640 case -1:
57650 No=0:sp_on 13,1:sp_on 14,0
57660 pause 200:goto Jyoushi_Input_Seireki2:
57670 '0 ボタン  左　何もしない
57680 case 0:
57690 pause 200:goto Jyoushi_Input_Seireki2:
57700 case 3:
57710 No=2:sp_on 9,1:sp_on 12,0:
57720 pause 200:goto Jyoushi_Input_Seireki2:
57730 case 2:
57740 No=1:sp_on 6,1:sp_on 9,0:
57750 pause 200:goto Jyoushi_Input_Seireki2:
57760 case 1:
57770 pause 200:goto Jyoushi_Input_Seireki2:
57780 case 6:
57790 No=5:sp_on 8,1:sp_on 11,0
57800 pause 200:goto Jyoushi_Input_Seireki2:
57810 case 5:
57820 No=4:sp_on 5,1:sp_on 8,0
57830 pause 200:goto Jyoushi_Input_Seireki2:
57840 case 4:
57850 pause 200:goto Jyoushi_Input_Seireki2:
57860 case 9:
57870 No=8:sp_on 7,1:sp_on 10,0
57880 pause 200:goto Jyoushi_Input_Seireki2:
57890 case 8:
57900 No=7:sp_on 4,1:sp_on 7,0
57910 pause 200:goto Jyoushi_Input_Seireki2:
57920 case 7:
57930 pause 200:goto Jyoushi_Input_Seireki2:
57940 end select
57950 endif
57960 '右  十字キー　右　or カーソル　右
57970 if ((y2 = 1) or (key$ = chr$(28))) then
57980 select case No
57990 '0ボタンからokボタン右に移動
58000 case 0:
58010 No=-1:sp_on 14,1:sp_on 13,0
58020 pause 200:goto Jyoushi_Input_Seireki2:
58030 '0ボタンからokボタン 右に移動　ここまで
58040 'OKボタンで右を押して何もしない
58050 case -1:
58060 pause 200:goto Jyoushi_Input_Seireki2:
58070 case 1:
58080 No=2:sp_on 9,1:sp_on 6,0
58090 pause 200:goto Jyoushi_Input_Seireki2:
58100 case 2:
58110 No=3:sp_on 12,1:sp_on 9,0
58120 pause 200:goto Jyoushi_Input_Seireki2:
58130 case 3:
58140 pause 200:goto Jyoushi_Input_Seireki2:
58150 case 4:
58160 No=5:sp_on 8,1:sp_on 5,0
58170 pause 200:goto Jyoushi_Input_Seireki2:
58180 case 5:
58190 No=6:sp_on 11,1:sp_on 8,0
58200 pause 200:goto Jyoushi_Input_Seireki2:
58210 case 7:
58220 No=8:sp_on 7,1:sp_on 4,0
58230 pause 200:goto Jyoushi_Input_Seireki2:
58240 case 8:
58250 No=9:sp_on 10,1:sp_on 7,0
58260 pause 200:goto Jyoushi_Input_Seireki2:
58270 case 9:
58280 pause 200:goto Jyoushi_Input_Seireki2:
58290 case 6:
58300 pause 200:goto Jyoushi_Input_Seireki2:
58310 end select
58320 'Okから右ボタンを押して何もしない ここまで
58330 endif
58340 '十字キー　ここまで
58350 '==============================
58360 'ここから
58370 '==============================
58380 if ((bg = 2) or (key$ = chr$(13))) then
58390 select case count
58400 case 0:
58410 count = 1
58420 if (No = -1) then
58430 count = 0:No=0
58440 buf_Jyoushi_Born_Day(0) = No
58450 'Okボタンを押したとき
58460 goto Jyoushi_Input_Seireki2:
58470 else
58480 'Okボタン以外が押されたとき
58490 if (No >= 1 and No <= 2) then
58500 buf_year$="":buf_year$ = str$(No) + "***"
58510 buf_year = No:a= No
58520 buf_Jyoushi_Born_Day(0) = No
58530 locate 1,3
58540 color rgb(255,255,255)
58550 print "上司の生まれた年代(西暦4桁):";buf_year$
58560 goto Jyoushi_Input_Seireki2:
58570 else
58580 count=0
58590 ui_msg"数字が範囲外になります。"
58600 buf_year$="":buf_year=0
58610 goto Jyoushi_Input_Seireki2:
58620 endif
58630 endif
58640 case 1:
58650 count = 2
58660 if (No = -1) then
58670 count = 1
58680 goto Jyoushi_Input_Seireki2:
58690 else
58700 buf_year = a * 10 + No
58710 b=buf_year
58720 buf_year$ = str$(buf_year) + "**"
58730 buf_Jyoushi_Born_Day(0)=buf_year
58740 locate 1,3
58750 color rgb(255,255,255)
58760 print "                                                                "
58770 locate 1,3
58780 print "上司の生まれた年代(西暦4桁):" + buf_year$
58790 'if (No = -1) then
58800 'count=1
58810 goto Jyoushi_Input_Seireki2:
58820 endif
58830 case 2:
58840 count=3
58850 if (No=-1) then
58860 count =2
58870 goto Jyoushi_Input_Seireki2:
58880 else
58890 buf_year = b * 10 + No
58900 c=buf_year
58910 buf_year$ = str$(buf_year) + "*"
58920 buf_Jyoushi_Born_Day(0) = buf_year
58930 locate 1,3
58940 color rgb(255,255,255)
58950 print "                                        "
58960 locate 1,3
58970 print "上司の生まれた年代(西暦4桁):";buf_year$
58980 goto Jyoushi_Input_Seireki2:
58990 endif
59000 case 3:
59010 count=4
59020 if (No = -1) then
59030 No=0
59040 goto Jyoushi_Input_Seireki2:
59050 else
59060 buf_year = c * 10 + No
59070 buf_year$ = str$(buf_year)
59080 buf_Jyoushi_Born_Day(0) = buf_year
59090 locate 1,3
59100 color RGB(255,255,255)
59110 print "                                      "
59120 locate 1,3
59130 print "上司の生まれた年代(西暦4桁):";buf_year$
59140 buf_year=val(buf_year$)
59150 'year=val(buf_year$)
59160 'if (No=-1) then
59170 'goto Input_Born_Month:
59180 'else
59190 goto Jyoushi_Input_Seireki2:
59200 endif
59210 case 4:
59220 'bufyear=buf_year
59230 if (No=-1) then
59240 buf_year = val(buf_year$)
59250 buf_Jyoushi_Born_Day(0)=buf_year
59260 sp_on 14,0:No=0
59270 goto Jyoushi_Input_Born_Month:
59280 else
59290 goto Jyoushi_Input_Seireki2:
59300 endif
59310 end select
59320 endif
59330 '===========================
59340 'ここまでを部下のところにコピーする.
59350 '===========================
59360 if (bg2 = 2) then
59370 select case count2
59380 case 0:
59390 if (No = -1) then
59400 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
59410 count=0
59420 locate 1,3
59430 color rgb(255,255,255)
59440 print "                                      "
59450 locate 1,3
59460 print "上司の生まれた年代（西暦4桁):" + buf_year$
59470 goto Jyoushi_Input_Seireki2:
59480 else
59490 '(buf_year=0) then
59500 buf_year=0:buf_year$="****"
59510 locate 1,3
59520 print "                                       "
59530 locate 1,3
59540 print "上司の生まれた年代(西暦4桁):"+buf_year$
59550 goto Jyoushi_Input_Seireki2:
59560 'endif
59570 endif
59580 end select
59590 endif
59600 'Input"上司の生れた年代(4桁,〜2025年):",year
59610 'if year > 2025 then goto Jyoushi_Input_Seireki:
59620 'if year = 123 then cls 3:cls 4:goto Main_Screen:
59630 '"4桁目"
59640 'bufyear4 = fix(year / 1000)
59650 '"3桁目"
59660 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
59670 '"2桁目"
59680 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
59690 '"1桁目"
59700 'bufyear1 = fix((year - ((bufyear4*
59710 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
59720 '2.生まれた月を入力
59730 Jyoushi_Input_Born_Month:
59740 cls 3:play "":count=0:count2=0
59750 'No=-1:Okのとき
59760 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
59770 for i=0 to 1
59780 buf_month(i)=0
59790 next i
59800 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
59810 gload Gazo$ + "Screen2.png",0,0,0
59820 gload Gazo$ + "downscreen.png",0,0,800
59830 'Init"kb:4"
59840 '音声ファイル再生 2023.06.07
59850 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
59860 font 48
59870 locate 0,1
59880 '文字色：黒　 color rgb(0,0,0)
59890 '文字色:白
59900 color rgb(255,255,255)
59910 print "上司の生まれた月を入れて下さい" + chr$(13)
59920 '文字色:白
59930 color rgb(255,255,255)
59940 locate 1,3
59950 '文字色:白
59960 print "上司の生まれた月(1月~12月):"+buf_Month$
59970 color rgb(255,255,255)
59980 'locate 4,6:print ":7"
59990 'locate 9,6:print ":8"
60000 'locate 12,6:print ":9"
60010 'locate 4,6
60020 '文字色:赤
60030 'print ":7  :8  :9" + chr$(13)
60040 'color rgb(255,255,255)
60050 'locate 4,8
60060 'print ":4  :5  :6" + chr$(13)
60070 'color rgb(255,255,255)
60080 'locate 4,10
60090 'print ":1  :2  :3" + chr$(13)
60100 'locate 4,12
60110 'print "    :0"
60120 'locate 12,12
60130 'color rgb(0,0,255)
60140 'print ":Ok"
60150 sp_on 4,0: sp_on 5,0:sp_on 6,0
60160 sp_on 7,0:sp_on 8,0:sp_on 9,0
60170 sp_on 10,0:sp_on 11,0:sp_on 12,0
60180 sp_on 13,0:sp_on 14,1
60190 Jyoushi_Input_Born_Month2:
60200 key$="":bg=0:y=0:y2=0:bg2=0
60210 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
60220 key$ = inkey$
60230 bg = strig(1)
60240 y = stick(1)
60250 y2 = stick(0)
60260 bg2 = strig(0)
60270 pause 200
60280 wend
60290 '十字キー　ここから
60300 '上の矢印　または、十字キー上
60310 if ((y = -1) or (key$ = chr$(30))) then
60320 select case No
60330 'No=-1:okのとき:初期の状態
60340 '0kボタンから３に移動
60350 '上に行く 処理
60360 case -1:
60370 No=3:sp_on 12,1:sp_on 14,0
60380 pause 200:goto Jyoushi_Input_Born_Month2:
60390 '選択肢:3
60400 '3ボタンから 6に移動
60410 case 3:
60420 No=6:sp_on 12,0:sp_on 11,1
60430 pause 200:goto Jyoushi_Input_Born_Month2:
60440 '6ボタンから ９に移動
60450 case 6:
60460 No=9:sp_on 10,1:sp_on 11,0
60470 pause 200:goto Jyoushi_Input_Born_Month2:
60480 '6ボタンから ９に移動　ここまで
60490 '9で上を押して何もしない
60500 case 9:
60510 '何もしない
60520 No=9
60530 pause 200:goto Jyoushi_Input_Born_Month2:
60540 '9で上を押しても何もしない　ここまで
60550 '上　 0ボタンから2ボタン
60560 'sp_on 6,1:1
60570 'sp_on 8,1:5
60580 'sp_on 7,1:7
60590 case 0:
60600 No=2:sp_on 13,0:sp_on 9,1:
60610 pause 200:goto Jyoushi_Input_Born_Month2:
60620 '上  0ボタンから2ボタン　ここまで
60630 '2から５になる 上
60640 case 2:
60650 No=5:sp_on 8,1:sp_on 9,0:
60660 pause 200:goto Jyoushi_Input_Born_Month2:
60670 case 5:
60680 No=8:sp_on 7,1:sp_on 8,0
60690 pause 200:goto Jyoushi_Input_Born_Month2:
60700 case 8:
60710 pause 200:goto Input_Born_Month2:
60720 case 1:
60730 No=4:sp_on 5,1:sp_on 6,0
60740 pause 200:goto Jyoushi_Input_Born_Month2:
60750 case 4:
60760 No=7:sp_on 4,1:sp_on 5,0
60770 pause 200:goto Jyoushi_Input_Born_Month2:
60780 case 7:
60790 pause 200:goto Input_Born_Month2:
60800 end select
60810 endif
60820 '左３　ここまで
60830 '下の矢印
60840 '中央 2
60850 if ((y=1) or (key$ = chr$(31))) then
60860 select case No
60870 '9から６に下げる
60880 case 9:
60890 No=6:sp_on 11,1:sp_on 10,0
60900 pause 200:goto Jyoushi_Input_Born_Month2:
60910 '6から３に下げる
60920 case 6:
60930 No=3:sp_on 12,1:sp_on 11,0
60940 pause 200:goto Jyoushi_Input_Born_Month2:
60950 '3から０ｋに変える
60960 case 3:
60970 No=-1:sp_on 14,1:sp_on 12,0
60980 pause 200:goto Jyoushi_Input_Born_Month2:
60990 'Okから下のボタンを押しても何もしない
61000 case -1:
61010 pause 200:goto Jyoushi_Input_Born_Month2:
61020 case 8:
61030 No=5:sp_on 8,1:sp_on 7,0
61040 pause 200:goto Jyoushi_Input_Born_Month2:
61050 case 5:
61060 No=2:sp_on 9,1:sp_on 8,0
61070 pause 200:goto Jyoushi_Input_Born_Month2:
61080 case 2:
61090 No=0:sp_on 13,1:sp_on 9,0
61100 pause 200:goto Jyoushi_Input_Born_Month2:
61110 case 0:
61120 pause 200:goto Jyoushi_Input_Born_Month2:
61130 case 7:
61140 No=4:sp_on 5,1:sp_on 4,0
61150 pause 200:goto Jyoushi_Input_Born_Month2:
61160 case 4:
61170 No=1:sp_on 6,1:sp_on 5,0
61180 pause 200:goto Jyoushi_Input_Born_Month2:
61190 case 1:
61200 pause 200:goto Jyoushi_Input_Born_Month2:
61210 end select
61220 endif
61230 '左へボタン 十字キー　左　or 　カーソル左
61240 if ((y2 = -1) or (key$ = chr$(29))) then
61250 select case No
61260 'Ok ボタン  Okから　左　０に行く
61270 case -1:
61280 No=0:sp_on 13,1:sp_on 14,0
61290 pause 200:goto Jyoushi_Input_Born_Month2:
61300 '0 ボタン  左　何もしない
61310 case 0:
61320 pause 200:goto Jyoushi_Input_Born_Month2:
61330 case 3:
61340 No=2:sp_on 9,1:sp_on 12,0:
61350 pause 200:goto Jyoushi_Input_Born_Month2:
61360 case 2:
61370 No=1:sp_on 6,1:sp_on 9,0:
61380 pause 200:goto Jyoushi_Input_Born_Month2:
61390 case 1:
61400 pause 200:goto Jyoushi_Input_Born_Month2:
61410 case 6:
61420 No=5:sp_on 8,1:sp_on 11,0
61430 pause 200:goto Jyoushi_Input_Born_Month2:
61440 case 5:
61450 No=4:sp_on 5,1:sp_on 8,0
61460 pause 200:goto Jyoushi_Input_Born_Month2:
61470 case 4:
61480 pause 200:goto Jyoushi_Input_Born_Month2:
61490 case 9:
61500 No=8:sp_on 7,1:sp_on 10,0
61510 pause 200:goto Input_Born_Month2:
61520 case 8:
61530 No=7:sp_on 4,1:sp_on 7,0
61540 pause 200:goto Jyoushi_Input_Born_Month2:
61550 case 7:
61560 pause 200:goto Jyoushi_Input_Born_Month2:
61570 end select
61580 endif
61590 '右  十字キー　右　or カーソル　右
61600 if ((y2 = 1) or (key$ = chr$(28))) then
61610 select case No
61620 '0ボタンからokボタン右に移動
61630 case 0:
61640 No=-1:sp_on 14,1:sp_on 13,0
61650 pause 200:goto Jyoushi_Input_Born_Month2:
61660 '0ボタンからokボタン 右に移動　ここまで
61670 'OKボタンで右を押して何もしない
61680 case -1:
61690 pause 200:goto Jyoushi_Input_Born_Month2:
61700 case 1:
61710 No=2:sp_on 9,1:sp_on 6,0
61720 pause 200:goto Jyoushi_Input_Born_Month2:
61730 case 2:
61740 No=3:sp_on 12,1:sp_on 9,0
61750 pause 200:goto Jyoushi_Input_Born_Month2:
61760 case 3:
61770 pause 200:goto Jyoushi_Input_Born_Month2:
61780 case 4:
61790 No=5:sp_on 8,1:sp_on 5,0
61800 pause 200:goto Jyoushi_Input_Born_Month2:
61810 case 5:
61820 No=6:sp_on 11,1:sp_on 8,0
61830 pause 200:goto Jyoushi_Input_Born_Month2:
61840 case 7:
61850 No=8:sp_on 7,1:sp_on 4,0
61860 pause 200:goto Jyoushi_Input_Born_Month2:
61870 case 8:
61880 No=9:sp_on 10,1:sp_on 7,0
61890 pause 200:goto Jyoushi_Input_Born_Month2:
61900 case 9:
61910 pause 200:goto Jyoushi_Input_Born_Month2:
61920 case 6:
61930 pause 200:goto Jyoushi_Input_Born_Month2:
61940 end select
61950 'Okから右ボタンを押して何もしない ここまで
61960 endif
61970 '十字キー　ここまで
61980 '右の丸ボタン + Enter key 決定キー
61990 if ((bg=2) or (key$=chr$(13))) then
62000 select case count
62010 case 0:
62020 if (No=-1) then No=0
62030 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
62040 if (buf_month > 1 and buf_month < 10)  then
62050 buf_Month$ = str$(buf_month)
62060 'buf_month=No
62070 endif
62080 if (buf_month = 1)  then
62090 buf_Month$ = str$(buf_month) + "*"
62100 'c=buf_month
62110 endif
62120 locate 1,3
62130 print "                                     "
62140 color RGB(255,255,255)
62150 locate 1,3
62160 print "上司の生まれた月(1月~12月):" + buf_Month$
62170 goto Jyoushi_Input_Born_Month2:
62180 case 1:
62190 count = 2:
62200 'c = val(buf_Month$)
62210 if (No = -1) then
62220 'count=0
62230 No=0
62240 month=buf_month
62250 buf_month=val(buf_Month$)
62260 month=buf_month
62270 buf_Jyoushi_Born_Day(1)=month
62280 '生まれた日に飛ぶ
62290 goto Jyoushi_Input_Born_Day:
62300 else
62310 buf_month = c*10 + No
62320 'if (buf_month = 1) then
62330 'buf_Month$ = str$(buf_month)
62340 'endif
62350 buf_Month$ = str$(buf_month)
62360 buf_Jyoushi_Born_Day(1) = buf_month
62370 locate 0,3
62380 print "                                           "
62390 locate 1,3
62400 color Rgb(255,255,255)
62410 print "上司の生まれた月(1月~12月):" + buf_Month$
62420 goto Jyoushi_Input_Born_Month2:
62430 endif
62440 case 2:
62450 '==================================
62460 '何もしない
62470 'coun = 2
62480 '==================================
62490 'c= val(buf_Month$)
62500 'buf_month = c*10 + No
62510 'buf_Month$ = str$(buf_month)
62520 'locate 2,3
62530 'print "上司の生まれた月(1月～12月):";buf_Month$
62540 'goto Jyoushi_Input_Born_Month2:
62550 'case 3:
62560 'count=4
62570 'b=val(buf_month$)
62580 'buf_month=c*10+No
62590 'buf_Month$=str$(buf_month)
62600 'locate 2,3
62610 'print "上司の生まれた月(1月～12月):";buf_Month$
62620 'buf_month=val(buf_Month$)
62630 'year=val(buf_year$)
62640 if (No=-1) then
62650 No=0
62660 goto Jyoushi_Input_Born_Day:
62670 else
62680 goto Jyoushi_Input_Born_Month2:
62690 endif
62700 'case 4:
62710 'bufyear=buf_year
62720 'if (No=-1) then
62730 'buf_month = val(buf_Month$)
62740 'month = buf_month
62750 'sp_on 14,0
62760 'goto Input_Born_Day:
62770 'else
62780 'goto Input_Born_Month2:
62790 'endif
62800 end select
62810 endif
62820 '左の丸ボタン　キャンセル
62830 if (bg2=2) then
62840 select case count2
62850 case 0:
62860 if (No = -1) then
62870 buf_month=0:buf_Month$="**"
62880 count=0
62890 'goto rewrite2:
62900 else
62910 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
62920 buf_month = 0:buf_Month$ = "**"
62930 locate 0,3
62940 color rgb(255,255,255)
62950 print "                                       "
62960 goto rewrite2:
62970 if (No>12) then
62980 ui_msg"値が範囲外です。"
62990 goto rewrite2:
63000 endif
63010 endif
63020 endif
63030 rewrite2:
63040 locate 2,3
63050 color rgb(255,255,255)
63060 print "                                      "
63070 locate 2,3
63080 print "上司の生まれた月(1月~12月):"+buf_Month$
63090 goto Jyoushi_Input_Born_Month2:
63100 end select
63110 'endif
63120 endif
63130 end
63140 'end
63150 '生れた日を入力
63160 Jyoushi_Input_Born_Day:
63170 '生まれた日入力
63180 cls 3:play ""
63190 'No=-1:Okのとき
63200 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
63210 for i=0 to 1
63220 buf_day(i)=0
63230 next i
63240 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
63250 gload Gazo$ + "Screen2.png",0,0,0
63260 gload Gazo$ + "downscreen.png",0,0,800
63270 'Init"kb:2"
63280 '音声ファイル再生 2023.06.07
63290 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
63300 font 48
63310 locate 1,1
63320 '文字色：黒　 color rgb(0,0,0)
63330 color rgb(255,255,255)
63340 print "上司の生まれた日を入れて下さい" + chr$(13)
63350 locate 1,3
63360 color rgb(255,255,255)
63370 print "                                      "
63380 locate 1,3
63390 print "上司の生まれた日(1日~31日):"+buf_Day$
63400 color rgb(255,255,255)
63410 'locate 4,6:print ":7"
63420 'locate 9,6:print ":8"
63430 'locate 12,6:print ":9"
63440 'locate 4,6
63450 'print ":7  :8  :9" + chr$(13)
63460 'color rgb(255,255,255)
63470 'locate 4,8
63480 'print ":4  :5  :6" + chr$(13)
63490 'color rgb(255,255,255)
63500 'locate 4,10
63510 'print ":1  :2  :3" + chr$(13)
63520 'locate 4,12
63530 'print "    :0"
63540 'locate 12,12
63550 'color rgb(0,0,255)
63560 'print ":Ok"
63570 sp_on 4,0: sp_on 5,0:sp_on 6,0
63580 sp_on 7,0:sp_on 8,0:sp_on 9,0
63590 sp_on 10,0:sp_on 11,0:sp_on 12,0
63600 sp_on 13,0:sp_on 14,1
63610 Jyoushi_Input_Born_Day2:
63620 key$="":bg=0:y=0:y2=0:bg2=0:
63630 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63640 key$ = inkey$
63650 bg = strig(1)
63660 y = stick(1)
63670 y2 = stick(0)
63680 bg2 = strig(0)
63690 pause 200
63700 wend
63710 '十字キー　ここから
63720 '上の矢印　または、十字キー上
63730 if ((y = -1) or (key$ = chr$(30))) then
63740 select case No
63750 'No=-1:okのとき:初期の状態
63760 '0kボタンから３に移動
63770 '上に行く 処理
63780 case -1:
63790 No=3:sp_on 12,1:sp_on 14,0
63800 pause 200:goto Jyoushi_Input_Born_Day2:
63810 '選択肢:3
63820 '3ボタンから 6に移動
63830 case 3:
63840 No=6:sp_on 12,0:sp_on 11,1
63850 pause 200:goto Jyoushi_Input_Born_Day2:
63860 '6ボタンから ９に移動
63870 case 6:
63880 No=9:sp_on 10,1:sp_on 11,0
63890 pause 200:goto Jyoushi_Input_Born_Day2:
63900 '6ボタンから ９に移動　ここまで
63910 '9で上を押して何もしない
63920 case 9:
63930 '何もしない
63940 No=9
63950 pause 200:goto Jyoushi_Input_Born_Day2:
63960 '9で上を押しても何もしない　ここまで
63970 '上　 0ボタンから2ボタン
63980 'sp_on 6,1:1
63990 'sp_on 8,1:5
64000 'sp_on 7,1:7
64010 case 0:
64020 No=2:sp_on 13,0:sp_on 9,1:
64030 pause 200:goto Jyoushi_Input_Born_Day2:
64040 '上  0ボタンから2ボタン　ここまで
64050 '2から５になる 上
64060 case 2:
64070 No=5:sp_on 8,1:sp_on 9,0:
64080 pause 200:goto Jyoushi_Input_Born_Day2:
64090 case 5:
64100 No=8:sp_on 7,1:sp_on 8,0
64110 pause 200:goto Jyoushi_Input_Born_Day2:
64120 case 8:
64130 pause 200:goto Jyoushi_Input_Born_Day2:
64140 case 1:
64150 No=4:sp_on 5,1:sp_on 6,0
64160 pause 200:goto Jyoushi_Input_Born_Day2:
64170 case 4:
64180 No=7:sp_on 4,1:sp_on 5,0
64190 pause 200:goto Jyoushi_Input_Born_Day2:
64200 case 7:
64210 pause 200:goto Jyoushi_Input_Born_Day2:
64220 end select
64230 endif
64240 '左３　ここまで
64250 '下の矢印
64260 '中央 2
64270 if ((y=1) or (key$ = chr$(31))) then
64280 select case No
64290 '9から６に下げる
64300 case 9:
64310 No=6:sp_on 11,1:sp_on 10,0
64320 pause 200:goto Jyoushi_Input_Born_Day2:
64330 '6から３に下げる
64340 case 6:
64350 No=3:sp_on 12,1:sp_on 11,0
64360 pause 200:goto Jyoushi_Input_Born_Day2:
64370 '3から０ｋに変える
64380 case 3:
64390 No=-1:sp_on 14,1:sp_on 12,0
64400 pause 200:goto Jyoushi_Input_Born_Day2:
64410 'Okから下のボタンを押しても何もしない
64420 case -1:
64430 pause 200:goto Jyoushi_Input_Born_Day2:
64440 case 8:
64450 No=5:sp_on 8,1:sp_on 7,0
64460 pause 200:goto Jyoushi_Input_Born_Day2:
64470 case 5:
64480 No=2:sp_on 9,1:sp_on 8,0
64490 pause 200:goto Jyoushi_Input_Born_Day2:
64500 case 2:
64510 No=0:sp_on 13,1:sp_on 9,0
64520 pause 200:goto Jyoushi_Input_Born_Day2:
64530 case 0:
64540 pause 200:goto Jyoushi_Input_Born_Day2:
64550 case 7:
64560 No=4:sp_on 5,1:sp_on 4,0
64570 pause 200:goto Jyoushi_Input_Born_Day2:
64580 case 4:
64590 No=1:sp_on 6,1:sp_on 5,0
64600 pause 200:goto Jyoushi_Input_Born_Day2:
64610 case 1:
64620 pause 200:goto Jyoushi_Input_Born_Day2:
64630 end select
64640 endif
64650 '左へボタン 十字キー　左　or 　カーソル左
64660 if ((y2 = -1) or (key$ = chr$(29))) then
64670 select case No
64680 'Ok ボタン  Okから　左　０に行く
64690 case -1:
64700 No=0:sp_on 13,1:sp_on 14,0
64710 pause 200:goto Jyoushi_Input_Born_Day2:
64720 '0 ボタン  左　何もしない
64730 case 0:
64740 pause 200:goto Jyoushi_Input_Born_Day2:
64750 case 3:
64760 No=2:sp_on 9,1:sp_on 12,0:
64770 pause 200:goto Jyoushi_Input_Born_Day2:
64780 case 2:
64790 No=1:sp_on 6,1:sp_on 9,0:
64800 pause 200:goto Jyoushi_Input_Born_Day2:
64810 case 1:
64820 pause 200:goto Jyoushi_Input_Born_Day2:
64830 case 6:
64840 No=5:sp_on 8,1:sp_on 11,0
64850 pause 200:goto Jyoushi_Input_Born_Day2:
64860 case 5:
64870 No=4:sp_on 5,1:sp_on 8,0
64880 pause 200:goto Jyoushi_Input_Born_Day2:
64890 case 4:
64900 pause 200:goto Jyoushi_Input_Born_Day2:
64910 case 9:
64920 No=8:sp_on 7,1:sp_on 10,0
64930 pause 200:goto Jyoushi_Input_Born_Day2:
64940 case 8:
64950 No=7:sp_on 4,1:sp_on 7,0
64960 pause 200:goto Jyoushi_Input_Born_Day2:
64970 case 7:
64980 pause 200:goto Jyoushi_Input_Born_Day2:
64990 end select
65000 endif
65010 '右  十字キー　右　or カーソル　右
65020 if ((y2 = 1) or (key$ = chr$(28))) then
65030 select case No
65040 '0ボタンからokボタン右に移動
65050 case 0:
65060 No=-1:sp_on 14,1:sp_on 13,0
65070 pause 200:goto Jyoushi_Input_Born_Day2:
65080 '0ボタンからokボタン 右に移動　ここまで
65090 'OKボタンで右を押して何もしない
65100 case -1:
65110 pause 200:goto Jyoushi_Input_Born_Day2:
65120 case 1:
65130 No=2:sp_on 9,1:sp_on 6,0
65140 pause 200:goto Jyoushi_Input_Born_Day2:
65150 case 2:
65160 No=3:sp_on 12,1:sp_on 9,0
65170 pause 200:goto Jyoushi_Input_Born_Day2:
65180 case 3:
65190 pause 200:goto Jyoushi_Input_Born_Day2:
65200 case 4:
65210 No=5:sp_on 8,1:sp_on 5,0
65220 pause 200:goto Jyoushi_Input_Born_Day2:
65230 case 5:
65240 No=6:sp_on 11,1:sp_on 8,0
65250 pause 200:goto Jyoushi_Input_Born_Day2:
65260 case 7:
65270 No=8:sp_on 7,1:sp_on 4,0
65280 pause 200:goto Jyoushi_Input_Born_Day2:
65290 case 8:
65300 No=9:sp_on 10,1:sp_on 7,0
65310 pause 200:goto Jyoushi_Input_Born_Day2:
65320 case 9:
65330 pause 200:goto Jyoushi_Input_Born_Day2:
65340 case 6:
65350 pause 200:goto Jyoushi_Input_Born_Day2:
65360 end select
65370 'Okから右ボタンを押して何もしない ここまで
65380 endif
65390 '十字キー　ここまで
65400 '右の丸ボタンを押したとき
65410 if ((bg = 2) or (key$ = chr$(13))) then
65420 'count :決定ボタンを押した回数
65430 select case (count)
65440 '1桁目入力
65450 case 0:
65460 count = 1:
65470 if (No = -1) then
65480 '1桁目　OKでは何もしない
65490 No=c
65500 'goto Jyoushi_Input_Born_Day2:
65510 else
65520 'ok以外のボタンを押したとき
65530 buf_day = No:buf_Day$ = str$(No)
65540 buf_Jyoushi_Born_Day(2)=buf_day
65550 c=No
65560 locate 1,3
65570 print "                                      "
65580 color RGB(255,255,255)
65590 locate 1,3
65600 print "上司の生まれた日(1日~31日):" + buf_Day$
65610 endif
65620 'check2:
65630 'if (buf_day >= 1 and buf_day <= 9) then
65640 'sp_on 14,0
65650 'goto complate_jyoushi:
65660 'else
65670 'sp_on 14,0
65680 goto Jyoushi_Input_Born_Day2:
65690 'end
65700 'endif
65710 case 1:
65720 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
65730 count = 2:
65740 'locate 2,3
65750 'color RGB(255,255,255)
65760 'print "生まれた日(1日~31日):";buf_Day$
65770 'Okボタンを押したときの処理
65780 '入力値　10未満のとき
65790 'buf_day = c * 10 + No
65800 if (No = -1) then
65810 c=buf_day:No=0
65820 'buf_day = c
65830 buf_Day$ = str$(buf_day)
65840 '10以下のとき
65850 'if (buf_day < 10) then
65860 sp_on 14,0
65870 goto complate_jyoushi:
65880 'end
65890 'endif
65900 else
65910 'c=No
65920 buf_day = c * 10 + No
65930 buf_Day$ = str$(buf_day)
65940 'buf_day = c:buf_Day$=str$(buf_day)
65950 buf_Jyoushi_Born_Day(2)=buf_day
65960 locate 1,3
65970 print "                                           "
65980 locate 1,3
65990 color Rgb(255,255,255)
66000 print "上司の生まれた日(1日~31日):" + buf_Day$
66010 goto Jyoushi_Input_Born_Day2:
66020 'goto
66030 endif
66040 'endif
66050 '生まれた日　2桁目の数字　or 1桁の数字 + ok
66060 case 2:
66070 'buf_day = c * 10 + No
66080 'buf_Jyoushi_Born_Day(2)=buf_day
66090 'locate 1,3
66100 'print "                                      "
66110 'locate 1,3
66120 'locate 2,3
66130 'print "生まれた日(1日〜31日):";buf_Day
66140 'No=-1:ok ボタンを押したとき
66150 if (No = -1) then
66160 'if ((buf_day > 0) and (buf_day < 32)) then
66170 No=0
66180 sp_on 14,0
66190 goto complate_jyoushi:
66200 'end
66210 else
66220 goto Jyoushi_Input_Born_Day2:
66230 'endif
66240 'Okボタン以外を押したとき
66250 'else
66260 'c=val(buf_Day$)
66270 'buf_day = c * 10 + No
66280 'buf_Jyoushi_Born_Day(2) = buf_day
66290 'buf_Day$ = str$(buf_day)
66300 'locate 1,3
66310 'print "上司の生まれた日(1日~31日):";buf_Day$
66320 'goto Jyoushi_Input_Born_Day2:
66330 endif
66340 'case 3:
66350 'count=4
66360 'c=val(buf_day$)
66370 'buf_day=c*10+No
66380 'buf_day$=str$(buf_day)
66390 'locate 2,3
66400 'print "生まれた日を入れてください:";buf_day$
66410 'year=val(buf_year$)
66420 'if (No = -1) then
66430 'goto Jyoushi_Input_Born_Day:
66440 'sp_on 14,0:
66450 'goto complate_jyoushi:
66460 'else
66470 'goto Jyoushi_Input_Born_Month2:
66480 'endif
66490 'case 4:
66500 'bufyear=buf_year
66510 'if (No=-1) then
66520 'buf_day = val(buf_day$)
66530 'bufday = buf_day
66540 'sp_on 14,0
66550 'goto Jyoushi_Input_Born_Day2:
66560 'else
66570 'goto Jyoushi_Input_Born_Day2:
66580 'endif
66590 end select
66600 endif
66610 if (bg2=2) then
66620 select case count2
66630 case 0:
66640 if (No=-1) then
66650 buf_day=0:buf_Day$="**":No=0
66660 if (buf_day >= 1 and buf_day <= 31) then
66670 count=0
66680 buf_day=0:buf_Day$ = "**"
66690 goto rewrite_day3:
66700 else
66710 buf_day=0:buf_Day$ = "**"
66720 ui_msg"値が範囲外です"
66730 endif
66740 goto rewrite_day3:
66750 else
66760 goto rewrite_day3:
66770 endif
66780 rewrite_day3:
66790 locate 2,3
66800 color rgb(255,255,255)
66810 print "                                      "
66820 locate 2,3
66830 print "生まれた日(1日~31日):" + buf_Day$
66840 goto Jyoushi_Input_Born_Day2:
66850 end select
66860 endif
66870 '--------------------------------------------'
66880 'locate 2,0:color rgb(255,0,0)
66890 'print "上司の生まれた年代を入力"
66900 'color rgb(255,255,255)
66910 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
66920 'locate 2,4:Input "上司の生まれた年:",born_year
66930 '誕生日データーを配列に代入
66940 'buf_Jyoushi_Born_Year:上司の生まれた年代
66950 'buf_Jyoushi_Born_Day(0) = born_year
66960 'born_year = 0
66970 '---------------------------------------------'
66980 'goto Jyoushi_born_month:
66990 '1-2.生まれた月を入力
67000 'Jyoushi_born_month:
67010 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
67020 'init "kb:4"
67030 'locate 2,1:
67040 'color rgb(255,0,0)
67050 'print "上司の生まれた月入力"
67060 'color rgb(255,255,255)
67070 'locate 2,4:print "生まれた月を入力してください"
67080 'locate 2,5
67090 'Input "上司の生まれ月:",born_month
67100 'buf_Jyoushi_Born_Day(1) = born_month
67110 'born_month = 0
67120 'goto Jyoushi_born_day:
67130 'buf_Jyoushi_Born_day
67140 '1-3.生まれた日を入力
67150 'Jyoushi_born_day:
67160 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
67170 'init "kb:4"
67180 'locate 2,1:color rgb(255,0,0)
67190 'print "上司の生まれた日　入力"
67200 'locate 2,4:color rgb(255,255,255)
67210 'print "生まれた日を入力してください"
67220 'locate 2,5
67230 'Input "上司の生まれた日:",born_day
67240 'buf_Jyoushi_Born_Day(2) = born_day
67250 'born_day = 0
67260 'goto buka_born_year:
67270 '2.部下の誕生日入力
67280 '2-1.生まれた年を入力
67290 'buka_born_year:
67300 'cls 3:gload Gazo$+"Screen1.png",0,0,0
67310 'init "kb:2"
67320 'locate 1,1:color rgb(255,0,0)
67330 'print "部下の生まれた年代入力"
67340 'locate 0,4:color rgb(255,255,255)
67350 'print "部下の生まれた年（西暦4桁）を入れてください"
67360 'locate 0,5
67370 'Input "部下の生まれた年(西暦4桁):",born_year
67380 'buf_Buka_Born_Day(0) = born_year
67390 'born_year = 0
67400 '2-2.生まれた月を入力
67410 'buka_born_month:
67420 'cls 3:gload Gazo$+"Screen1.png",0,0,0
67430 'init "kb:2"
67440 'locate 2,1:color rgb(255,0,0)
67450 'print "部下の生まれた月 入力"
67460 'locate 2,4:color rgb(255,255,255)
67470 'print "部下の生まれた月を入力してください"
67480 'locate 2,5:Input "部下の生まれた月:",born_month
67490 'buf_Buka_Born_Day(1) = born_month
67500 '2-3.生まれた日を入力
67510 'buka_born_day:
67520 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
67530 'init "kb:2"
67540 'locate 2,1:color rgb(255,0,0)
67550 'print "生まれた日入力"
67560 'color rgb(255,255,255)
67570 'locate 2,4:print "生まれた日を入力してください"
67580 'locate 2,5:Input "部下の生まれた日:",born_day
67590 'buf_Buka_Born_Day(2) = born_day
67600 'born_day=0:goto Result_Business_Aisyou:
67610 '--------------------------------------------'
67620 complate_jyoushi:
67630 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
67640 buf_Jyoushi = Kabara_Num(a,b,c)
67650 a_1=buf_Jyoushi
67660 goto Buka_Input_Seireki:
67670 '--------------------------------------------'
67680 '部下'
67690 '1.部下の生まれた年代'
67700 Buka_Input_Seireki:
67710 cls 3:play "":count=0:count2=0
67720 init"kb:4"
67730 'No=-1:Okのとき
67740 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
67750 for i=0 to 3
67760 buf_Buka_Born_Day(i)=0
67770 next i
67780 gload Gazo$ + "Screen2.png",0,0,0
67790 gload Gazo$ + "downscreen.png",0,0,800
67800 'Init"kb:2"
67810 '音声ファイル再生 2023.06.07
67820 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
67830 font 48
67840 locate 0,1
67850 '文字色：黒　 color rgb(0,0,0)
67860 color rgb(255,255,255)
67870 print "部下の生まれた年代を入れて下さい" + chr$(13)
67880 color rgb(255,255,255)
67890 locate 1,3
67900 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
67910 color rgb(255,255,255)
67920 'locate 4,6:print ":7"
67930 'locate 9,6:print ":8"
67940 'locate 12,6:print ":9"
67950 'locate 4,6
67960 'print ":7  :8  :9" + chr$(13)
67970 'color rgb(255,255,255)
67980 'locate 4,8
67990 'print ":4  :5  :6" + chr$(13)
68000 'color rgb(255,255,255)
68010 'locate 4,10
68020 'print ":1  :2  :3" + chr$(13)
68030 'locate 4,12
68040 'print "    :0"
68050 'locate 12,12
68060 'color rgb(0,0,255)
68070 'print ":Ok"
68080 sp_on 4,0: sp_on 5,0:sp_on 6,0
68090 sp_on 7,0:sp_on 8,0:sp_on 9,0
68100 sp_on 10,0:sp_on 11,0:sp_on 12,0
68110 sp_on 13,0:sp_on 14,1
68120 Buka_Input_Seireki2:
68130 key$="":bg=0:y=0:y2=0:bg2=0:
68140 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
68150 key$ = inkey$
68160 bg = strig(1)
68170 y = stick(1)
68180 y2 = stick(0)
68190 bg2=strig(0)
68200 pause 200
68210 wend
68220 '十字キー　ここから
68230 '上の矢印　または、十字キー上
68240 if ((y = -1) or (key$ = chr$(30))) then
68250 select case No
68260 'No=-1:okのとき:初期の状態
68270 '0kボタンから３に移動
68280 '上に行く 処理
68290 case -1:
68300 No=3:sp_on 12,1:sp_on 14,0
68310 pause 200:goto Buka_Input_Seireki2:
68320 '選択肢:3
68330 '3ボタンから 6に移動
68340 case 3:
68350 No=6:sp_on 12,0:sp_on 11,1
68360 pause 200:goto Buka_Input_Seireki2:
68370 '6ボタンから ９に移動
68380 case 6:
68390 No=9:sp_on 10,1:sp_on 11,0
68400 pause 200:goto Buka_Input_Seireki2:
68410 '6ボタンから ９に移動　ここまで
68420 '9で上を押して何もしない
68430 case 9:
68440 '何もしない
68450 No=9
68460 pause 200:goto Buka_Input_Seireki2:
68470 '9で上を押しても何もしない　ここまで
68480 '上　 0ボタンから2ボタン
68490 'sp_on 6,1:1
68500 'sp_on 8,1:5
68510 'sp_on 7,1:7
68520 case 0:
68530 No=2:sp_on 13,0:sp_on 9,1:
68540 pause 200:goto Buka_Input_Seireki2:
68550 '上  0ボタンから2ボタン　ここまで
68560 '2から５になる 上
68570 case 2:
68580 No=5:sp_on 8,1:sp_on 9,0:
68590 pause 200:goto Buka_Input_Seireki2:
68600 case 5:
68610 No=8:sp_on 7,1:sp_on 8,0
68620 pause 200:goto Buka_Input_Seireki2:
68630 case 8:
68640 pause 200:goto Buka_Input_Seireki2:
68650 case 1:
68660 No=4:sp_on 5,1:sp_on 6,0
68670 pause 200:goto Buka_Input_Seireki2:
68680 case 4:
68690 No=7:sp_on 4,1:sp_on 5,0
68700 pause 200:goto Buka_Input_Seireki2:
68710 case 7:
68720 pause 200:goto Buka_Input_Seireki2:
68730 end select
68740 endif
68750 '左３　ここまで
68760 '下の矢印
68770 '中央 2
68780 if ((y=1) or (key$ = chr$(31))) then
68790 select case No
68800 '9から６に下げる
68810 case 9:
68820 No=6:sp_on 11,1:sp_on 10,0
68830 pause 200:goto Buka_Input_Seireki2:
68840 '6から３に下げる
68850 case 6:
68860 No=3:sp_on 12,1:sp_on 11,0
68870 pause 200:goto Buka_Input_Seireki2:
68880 '3から０ｋに変える
68890 case 3:
68900 No=-1:sp_on 14,1:sp_on 12,0
68910 pause 200:goto Buka_Input_Seireki2:
68920 'Okから下のボタンを押しても何もしない
68930 case -1:
68940 pause 200:goto Buka_Input_Seireki2:
68950 case 8:
68960 No=5:sp_on 8,1:sp_on 7,0
68970 pause 200:goto Buka_Input_Seireki2:
68980 case 5:
68990 No=2:sp_on 9,1:sp_on 8,0
69000 pause 200:goto Buka_Input_Seireki2:
69010 case 2:
69020 No=0:sp_on 13,1:sp_on 9,0
69030 pause 200:goto Buka_Input_Seireki2:
69040 case 0:
69050 pause 200:goto Buka_Input_Seireki2:
69060 case 7:
69070 No=4:sp_on 5,1:sp_on 4,0
69080 pause 200:goto Buka_Input_Seireki2:
69090 case 4:
69100 No=1:sp_on 6,1:sp_on 5,0
69110 pause 200:goto Buka_Input_Seireki2:
69120 case 1:
69130 pause 200:goto Buka_Input_Seireki2:
69140 end select
69150 endif
69160 '左へボタン 十字キー　左　or 　カーソル左
69170 if ((y2 = -1) or (key$ = chr$(29))) then
69180 select case No
69190 'Ok ボタン  Okから　左　０に行く
69200 case -1:
69210 No=0:sp_on 13,1:sp_on 14,0
69220 pause 200:goto Buka_Input_Seireki2:
69230 '0 ボタン  左　何もしない
69240 case 0:
69250 pause 200:goto Buka_Input_Seireki2:
69260 case 3:
69270 No=2:sp_on 9,1:sp_on 12,0:
69280 pause 200:goto Buka_Input_Seireki2:
69290 case 2:
69300 No=1:sp_on 6,1:sp_on 9,0:
69310 pause 200:goto Buka_Input_Seireki2:
69320 case 1:
69330 pause 200:goto Buka_Input_Seireki2:
69340 case 6:
69350 No=5:sp_on 8,1:sp_on 11,0
69360 pause 200:goto Buka_Input_Seireki2:
69370 case 5:
69380 No=4:sp_on 5,1:sp_on 8,0
69390 pause 200:goto Buka_Input_Seireki2:
69400 case 4:
69410 pause 200:goto Buka_Input_Seireki2:
69420 case 9:
69430 No=8:sp_on 7,1:sp_on 10,0
69440 pause 200:goto Buka_Input_Seireki2:
69450 case 8:
69460 No=7:sp_on 4,1:sp_on 7,0
69470 pause 200:goto Buka_Input_Seireki2:
69480 case 7:
69490 pause 200:goto Buka_Input_Seireki2:
69500 end select
69510 endif
69520 '右  十字キー　右　or カーソル　右
69530 if ((y2 = 1) or (key$ = chr$(28))) then
69540 select case No
69550 '0ボタンからokボタン右に移動
69560 case 0:
69570 No=-1:sp_on 14,1:sp_on 13,0
69580 pause 200:goto Buka_Input_Seireki2:
69590 '0ボタンからokボタン 右に移動　ここまで
69600 'OKボタンで右を押して何もしない
69610 case -1:
69620 pause 200:goto Buka_Input_Seireki2:
69630 case 1:
69640 No=2:sp_on 9,1:sp_on 6,0
69650 pause 200:goto Buka_Input_Seireki2:
69660 case 2:
69670 No=3:sp_on 12,1:sp_on 9,0
69680 pause 200:goto Buka_Input_Seireki2:
69690 case 3:
69700 pause 200:goto Buka_Input_Seireki2:
69710 case 4:
69720 No=5:sp_on 8,1:sp_on 5,0
69730 pause 200:goto Buka_Input_Seireki2:
69740 case 5:
69750 No=6:sp_on 11,1:sp_on 8,0
69760 pause 200:goto Buka_Input_Seireki2:
69770 case 7:
69780 No=8:sp_on 7,1:sp_on 4,0
69790 pause 200:goto Buka_Input_Seireki2:
69800 case 8:
69810 No=9:sp_on 10,1:sp_on 7,0
69820 pause 200:goto Buka_Input_Seireki2:
69830 case 9:
69840 pause 200:goto Buka_Input_Seireki2:
69850 case 6:
69860 pause 200:goto Buka_Input_Seireki2:
69870 end select
69880 'Okから右ボタンを押して何もしない ここまで
69890 endif
69900 '十字キー　ここまで
69910 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
69920 'ここからコメント
69930 '右の丸ボタン決定を押した数:count
69940 'if ((bg=2) or (key$=chr$(13))) then
69950 'select case count
69960 'case 0:
69970 'count=1
69980 'if (No = -1) then
69990 'count = 0
70000 'Okボタンを押したとき
70010 '
70020 'goto Buka_Input_Seireki2:
70030 'else
70040 'Okボタン以外が押されたとき
70050 'if (No >= 1 and No <= 2) then
70060 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
70070 'buf_buka_year = No
70080 'buf_Buka_Born_Day(0) = bufyear
70090 'locate 2,3
70100 'color rgb(255,255,255)
70110 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
70120 'goto Buka_Input_Seireki2:
70130 'else
70140 'count=0
70150 'ui_msg"数字が範囲外になります。"
70160 'buf_buka_year$ ="":buf_buka_year=0
70170 'goto Buka_Input_Seireki2:
70180 'endif
70190 'endif
70200 'case 1:
70210 'count = 2
70220 'if (No = -1) then
70230 'count = 1
70240 'goto Buka_Input_Seireki2:
70250 'else
70260 'b = val(buf_buka_year$)
70270 'buf_buka_year = b * 10 + No
70280 'buf_buka_year$ = str$(buf_buka_year)
70290 'buf_Buka_Born_Day(0) = bufyear
70300 'locate 1,3
70310 'color rgb(255,255,255)
70320 'print "                                                                "
70330 'locate 1,3
70340 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
70350 'if (No = -1) then
70360 'count=1
70370 'goto Buka_Input_Seireki2:
70380 'endif
70390 'case 2:
70400 'count = 3
70410 'if (No = -1) then
70420 'count = 2
70430 'buf_Buka_Born_Day(0)=bufyear
70440 'goto Buka_Input_Seireki2:
70450 'else
70460 'b = val(buf_buka_year$)
70470 'buf_buka_year = b*10 + No
70480 'buf_buka_year$ = str$(buf_buka_year)
70490 'locate 1,3
70500 'color rgb(255,255,255)
70510 'print "                                        "
70520 'locate 1,3
70530 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
70540 'goto Buka_Input_Seireki2:
70550 'endif
70560 'case 3:
70570 'count=4
70580 'if (No = -1) then
70590 'count=3
70600 'goto Buka_Input_Seireki2:
70610 'else
70620 'b = buf_buka_year
70630 'buf_buka_year = b * 10 + No
70640 'buf_buka_year$=str$(buf_buka_year)
70650 'locate 1,3
70660 'color RGB(255,255,255)
70670 'print "                                      "
70680 'locate 1,3
70690 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
70700 'buf_year=val(buf_year$)
70710 'year=val(buf_year$)
70720 'if (No=-1) then
70730 'goto Input_Born_Month:
70740 'else
70750 'goto Buka_Input_Seireki2:
70760 'endif
70770 'case 4:
70780 'bufyear=buf_year
70790 'if (No=-1) then
70800 'buf_year = val(buf_year$)
70810 'bufyear = buf_year
70820 'sp_on 14,0
70830 'goto Buka_Input_Born_Month:
70840 'else
70850 'goto Buka_Input_Seireki2:
70860 'endif
70870 'end select
70880 'endif
70890 'if (bg2 = 2) then
70900 'select case count2
70910 'case 0:
70920 'if (No = -1) then
70930 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
70940 'count=0
70950 'locate 1,3
70960 'color rgb(255,255,255)
70970 'print "                                      "
70980 'locate 1,3
70990 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
71000 'goto Buka_Input_Seireki2:
71010 'else
71020 '(buf_year=0) then
71030 'buf_buka_year=0:buf_buka_year$="****"
71040 'goto Buka_Input_Seireki2:
71050 'endif
71060 'endif
71070 'end select
71080 'endif
71090 'end
71100 'ここまでコメント
71110 '================================================================
71120 if ((bg=2) or (key$=chr$(13))) then
71130 select case count
71140 case 0:
71150 count = 1
71160 if (No=-1) then
71170 count = 0
71180 buf_Buka_Born_Day(0) = No
71190 'Okボタンを押したとき
71200 goto Buka_Input_Seireki2:
71210 else
71220 'Okボタン以外が押されたとき
71230 if (No>=1 and No<=2) then
71240 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
71250 buf_buka_year = No
71260 buf_Buka_Born_Day(0) = No
71270 locate 1,3
71280 color rgb(255,255,255)
71290 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
71300 goto Buka_Input_Seireki2:
71310 else
71320 count=0
71330 ui_msg"数字が範囲外になります。"
71340 buf_buka_year$="":buf_buka_year=0
71350 goto Buka_Input_Seireki2:
71360 endif
71370 endif
71380 case 1:
71390 count = 2
71400 if (No = -1) then
71410 count = 1
71420 goto Buka_Input_Seireki2:
71430 else
71440 'b = val(buf_buka_year$)
71450 buf_buka_year = a * 10 + No
71460 b=buf_buka_year
71470 buf_buka_year$ = str$(buf_buka_year)+"**"
71480 buf_Buka_Born_Day(0)=buf_buka_year
71490 locate 1,3
71500 color rgb(255,255,255)
71510 print "                                                                "
71520 locate 1,3
71530 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
71540 'if (No = -1) then
71550 'count=1
71560 goto Buka_Input_Seireki2:
71570 endif
71580 case 2:
71590 count=3
71600 if (No=-1) then
71610 count =2:No=0
71620 goto Buka_Input_Seireki2:
71630 else
71640 'b = val(buf_buka_year$)
71650 buf_buka_year = b * 10 + No
71660 c = buf_buka_year
71670 buf_buka_year$ = str$(buf_buka_year) + "*"
71680 buf_Buka_Born_Day(0) = buf_buka_year
71690 locate 1,3
71700 color rgb(255,255,255)
71710 print "                                        "
71720 locate 1,3
71730 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
71740 goto Buka_Input_Seireki2:
71750 endif
71760 case 3:
71770 count=4
71780 if (No = -1) then
71790 'count=3:No=0
71800 goto Buka_Input_Seireki2:
71810 else
71820 'b = val(buf_buka_year$)
71830 buf_buka_year=c * 10 + No
71840 buf_buka_year$=str$(buf_buka_year)
71850 buf_Buka_Born_Day(0)=buf_buka_year
71860 locate 1,3
71870 color RGB(255,255,255)
71880 print "                                      "
71890 locate 1,3
71900 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
71910 buf_buka_year=val(buf_buka_year$)
71920 'year=val(buf_year$)
71930 'if (No=-1) then
71940 'goto Input_Born_Month:
71950 'else
71960 goto Buka_Input_Seireki2:
71970 endif
71980 case 4:
71990 'bufyear=buf_year
72000 if (No = -1) then
72010 buf_buka_year = val(buf_buka_year$)
72020 buf_Buka_Born_Day(0)=buf_buka_year
72030 sp_on 14,0
72040 goto Buka_Input_Born_Month:
72050 else
72060 goto Buka_Input_Seireki2:
72070 endif
72080 end select
72090 endif
72100 '================================================================
72110 'ここにコピーする。
72120 '================================================================
72130 'Input"部下の生れた年代(4桁,〜2025年):",year
72140 'if year > 2025 then goto Jyoushi_Input_Seireki:
72150 'if year = 123 then cls 3:cls 4:goto Main_Screen:
72160 '"4桁目"
72170 'bufyear4 = fix(year / 1000)
72180 '"3桁目"
72190 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
72200 '"2桁目"
72210 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
72220 '"1桁目"
72230 'bufyear1 = fix((year - ((bufyear4*
72240 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
72250 '1.部下の生まれた年代'
72260 '2.部下の生まれた月'
72270 Buka_Input_Born_Month:
72280 cls 3:play "":count=0:count2=0
72290 'No=-1:Okのとき
72300 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
72310 for i=0 to 1
72320 buf_month(i)=0
72330 next i
72340 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
72350 gload Gazo$ + "Screen2.png",0,0,0
72360 gload Gazo$ + "downscreen.png",0,0,800
72370 'Init"kb:4"
72380 '音声ファイル再生 2023.06.07
72390 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
72400 font 48
72410 locate 0,1
72420 '文字色：黒　 color rgb(0,0,0)
72430 '文字色:白
72440 color rgb(255,255,255)
72450 print "部下の生まれた月を入れて下さい" + chr$(13)
72460 '文字色:白
72470 color rgb(255,255,255)
72480 locate 1,3
72490 '文字色:白
72500 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
72510 color rgb(255,255,255)
72520 'locate 4,6:print ":7"
72530 'locate 9,6:print ":8"
72540 'locate 12,6:print ":9"
72550 'locate 4,6
72560 '文字色:赤
72570 'print ":7  :8  :9" + chr$(13)
72580 'color rgb(255,255,255)
72590 'locate 4,8
72600 'print ":4  :5  :6" + chr$(13)
72610 'color rgb(255,255,255)
72620 'locate 4,10
72630 'print ":1  :2  :3" + chr$(13)
72640 'locate 4,12
72650 'print "    :0"
72660 'locate 12,12
72670 'color rgb(0,0,255)
72680 'print ":Ok"
72690 sp_on 4,0: sp_on 5,0:sp_on 6,0
72700 sp_on 7,0:sp_on 8,0:sp_on 9,0
72710 sp_on 10,0:sp_on 11,0:sp_on 12,0
72720 sp_on 13,0:sp_on 14,1
72730 Buka_Input_Born_Month2:
72740 key$="":bg=0:y=0:y2=0:bg2=0
72750 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72760 key$ = inkey$
72770 bg = strig(1)
72780 y = stick(1)
72790 y2 = stick(0)
72800 bg2 = strig(0)
72810 pause 200
72820 wend
72830 '十字キー　ここから
72840 '上の矢印　または、十字キー上
72850 if ((y = -1) or (key$ = chr$(30))) then
72860 select case No
72870 'No=-1:okのとき:初期の状態
72880 '0kボタンから３に移動
72890 '上に行く 処理
72900 case -1:
72910 No=3:sp_on 12,1:sp_on 14,0
72920 pause 200:goto Buka_Input_Born_Month2:
72930 '選択肢:3
72940 '3ボタンから 6に移動
72950 case 3:
72960 No=6:sp_on 12,0:sp_on 11,1
72970 pause 200:goto Buka_Input_Born_Month2:
72980 '6ボタンから ９に移動
72990 case 6:
73000 No=9:sp_on 10,1:sp_on 11,0
73010 pause 200:goto Buka_Input_Born_Month2:
73020 '6ボタンから ９に移動　ここまで
73030 '9で上を押して何もしない
73040 case 9:
73050 '何もしない
73060 No=9
73070 pause 200:goto Buka_Input_Born_Month2:
73080 '9で上を押しても何もしない　ここまで
73090 '上　 0ボタンから2ボタン
73100 'sp_on 6,1:1
73110 'sp_on 8,1:5
73120 'sp_on 7,1:7
73130 case 0:
73140 No=2:sp_on 13,0:sp_on 9,1:
73150 pause 200:goto Buka_Input_Born_Month2:
73160 '上  0ボタンから2ボタン　ここまで
73170 '2から５になる 上
73180 case 2:
73190 No=5:sp_on 8,1:sp_on 9,0:
73200 pause 200:goto Buka_Input_Born_Month2:
73210 case 5:
73220 No=8:sp_on 7,1:sp_on 8,0
73230 pause 200:goto Buka_Input_Born_Month2:
73240 case 8:
73250 pause 200:goto Buka_Input_Born_Month2:
73260 case 1:
73270 No=4:sp_on 5,1:sp_on 6,0
73280 pause 200:goto Buka_Input_Born_Month2:
73290 case 4:
73300 No=7:sp_on 4,1:sp_on 5,0
73310 pause 200:goto Buka_Input_Born_Month2:
73320 case 7:
73330 pause 200:goto Buka_Input_Born_Month2:
73340 end select
73350 endif
73360 '左３　ここまで
73370 '下の矢印
73380 '中央 2
73390 if ((y=1) or (key$ = chr$(31))) then
73400 select case No
73410 '9から６に下げる
73420 case 9:
73430 No=6:sp_on 11,1:sp_on 10,0
73440 pause 200:goto Buka_Input_Born_Month2:
73450 '6から３に下げる
73460 case 6:
73470 No=3:sp_on 12,1:sp_on 11,0
73480 pause 200:goto Buka_Input_Born_Month2:
73490 '3から０ｋに変える
73500 case 3:
73510 No=-1:sp_on 14,1:sp_on 12,0
73520 pause 200:goto Buka_Input_Born_Month2:
73530 'Okから下のボタンを押しても何もしない
73540 case -1:
73550 pause 200:goto Buka_Input_Born_Month2:
73560 case 8:
73570 No=5:sp_on 8,1:sp_on 7,0
73580 pause 200:goto Buka_Input_Born_Month2:
73590 case 5:
73600 No=2:sp_on 9,1:sp_on 8,0
73610 pause 200:goto Buka_Input_Born_Month2:
73620 case 2:
73630 No=0:sp_on 13,1:sp_on 9,0
73640 pause 200:goto Buka_Input_Born_Month2:
73650 case 0:
73660 pause 200:goto Buka_Input_Born_Month2:
73670 case 7:
73680 No=4:sp_on 5,1:sp_on 4,0
73690 pause 200:goto Buka_Input_Born_Month2:
73700 case 4:
73710 No=1:sp_on 6,1:sp_on 5,0
73720 pause 200:goto Buka_Input_Born_Month2:
73730 case 1:
73740 pause 200:goto Buka_Input_Born_Month2:
73750 end select
73760 endif
73770 '左へボタン 十字キー　左　or 　カーソル左
73780 if ((y2 = -1) or (key$ = chr$(29))) then
73790 select case No
73800 'Ok ボタン  Okから　左　０に行く
73810 case -1:
73820 No=0:sp_on 13,1:sp_on 14,0
73830 pause 200:goto Buka_Input_Born_Month2:
73840 '0 ボタン  左　何もしない
73850 case 0:
73860 pause 200:goto Buka_Input_Born_Month2:
73870 case 3:
73880 No=2:sp_on 9,1:sp_on 12,0:
73890 pause 200:goto Buka_Input_Born_Month2:
73900 case 2:
73910 No=1:sp_on 6,1:sp_on 9,0:
73920 pause 200:goto Buka_Input_Born_Month2:
73930 case 1:
73940 pause 200:goto Buka_Input_Born_Month2:
73950 case 6:
73960 No=5:sp_on 8,1:sp_on 11,0
73970 pause 200:goto Buka_Input_Born_Month2:
73980 case 5:
73990 No=4:sp_on 5,1:sp_on 8,0
74000 pause 200:goto Buka_Input_Born_Month2:
74010 case 4:
74020 pause 200:goto Buka_Input_Born_Month2:
74030 case 9:
74040 No=8:sp_on 7,1:sp_on 10,0
74050 pause 200:goto Buka_Input_Born_Month2:
74060 case 8:
74070 No=7:sp_on 4,1:sp_on 7,0
74080 pause 200:goto Buka_Input_Born_Month2:
74090 case 7:
74100 pause 200:goto Buka_Input_Born_Month2:
74110 end select
74120 endif
74130 '右  十字キー　右　or カーソル　右
74140 if ((y2 = 1) or (key$ = chr$(28))) then
74150 select case No
74160 '0ボタンからokボタン右に移動
74170 case 0:
74180 No=-1:sp_on 14,1:sp_on 13,0
74190 pause 200:goto Buka_Input_Born_Month2:
74200 '0ボタンからokボタン 右に移動　ここまで
74210 'OKボタンで右を押して何もしない
74220 case -1:
74230 pause 200:goto Buka_Input_Born_Month2:
74240 case 1:
74250 No=2:sp_on 9,1:sp_on 6,0
74260 pause 200:goto Buka_Input_Born_Month2:
74270 case 2:
74280 No=3:sp_on 12,1:sp_on 9,0
74290 pause 200:goto Buka_Input_Born_Month2:
74300 case 3:
74310 pause 200:goto Buka_Input_Born_Month2:
74320 case 4:
74330 No=5:sp_on 8,1:sp_on 5,0
74340 pause 200:goto Buka_Input_Born_Month2:
74350 case 5:
74360 No=6:sp_on 11,1:sp_on 8,0
74370 pause 200:goto Buka_Input_Born_Month2:
74380 case 7:
74390 No=8:sp_on 7,1:sp_on 4,0
74400 pause 200:goto Buka_Input_Born_Month2:
74410 case 8:
74420 No=9:sp_on 10,1:sp_on 7,0
74430 pause 200:goto Buka_Input_Born_Month2:
74440 case 9:
74450 pause 200:goto Buka_Input_Born_Month2:
74460 case 6:
74470 pause 200:goto Buka_Input_Born_Month2:
74480 end select
74490 'Okから右ボタンを押して何もしない ここまで
74500 endif
74510 '十字キー　ここまで
74520 '右の丸ボタン　決定キー
74530 if ((bg=2) or (key$=chr$(13))) then
74540 select case count
74550 case 0:
74560 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
74570 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
74580 locate 1,3
74590 color RGB(255,255,255)
74600 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
74610 goto Buka_Input_Born_Month2:
74620 case 1:
74630 count = 2:buf_buka_month=a*10+No
74640 if (No = -1) then
74650 'count=0
74660 month=buf_buka_month
74670 buf_buka_month=val(buf_buka_Month$)
74680 month=buf_buka_month
74690 '生まれた日に飛ぶ
74700 goto Buka_Input_Born_Day:
74710 else
74720 buf_buka_month = a * 10 + No
74730 buf_buka_Month$ = str$(buf_buka_month)
74740 buf_Buka_Born_Day(1) = buf_buka_month
74750 locate 1,3
74760 color Rgb(255,255,255)
74770 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
74780 goto Buka_Input_Born_Month2:
74790 endif
74800 case 2:
74810 count=3
74820 'c= val(buf_Month$)
74830 'buf_month = c*10 + No
74840 'buf_Month$ = str$(buf_month)
74850 'locate 2,3
74860 'print "部下の生まれた月(1月～12月):";buf_Month$
74870 'goto Buka_Input_Born_Month2:
74880 'case 3:
74890 'count=4
74900 'b=val(buf_month$)
74910 'buf_month=c*10+No
74920 'buf_Month$=str$(buf_month)
74930 'locate 2,3
74940 'print "部下の生まれた月(1月～12月):";buf_Month$
74950 'buf_month=val(buf_Month$)
74960 'year=val(buf_year$)
74970 if (No=-1) then
74980 goto Buka_Input_Born_Day:
74990 else
75000 goto Input_Born_Month2:
75010 endif
75020 'case 4:
75030 'bufyear=buf_year
75040 'if (No=-1) then
75050 'buf_month = val(buf_Month$)
75060 'month = buf_month
75070 'sp_on 14,0
75080 'goto Input_Born_Day:
75090 'else
75100 'goto Input_Born_Month2:
75110 'endif
75120 end select
75130 endif
75140 '左の丸ボタン　キャンセル
75150 if (bg2=2) then
75160 select case count2
75170 case 0:
75180 if (No = -1) then
75190 buf_buka_month=0:buf_buka_Month$="**"
75200 count=0
75210 goto rewrite2:
75220 else
75230 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
75240 buf_month=0:buf_Month$="**"
75250 locate 2,3
75260 color rgb(255,255,255)
75270 print "                                       "
75280 goto rewrite2:
75290 if (No>12) then
75300 ui_msg"値が範囲外です。"
75310 goto rewrite2:
75320 endif
75330 endif
75340 endif
75350 rewrite2:
75360 locate 2,3
75370 color rgb(255,255,255)
75380 print "                                      "
75390 locate 2,3
75400 print "部下の生まれた月(1月~12月):";buf_buka_Month$
75410 goto Buka_Input_Born_Month2:
75420 end select
75430 'endif
75440 endif
75450 end
75460 '2.部下の生まれた月'
75470 '3.部下の生まれた日'
75480 '生れた日を入力
75490 Buka_Input_Born_Day:
75500 '生まれた日入力
75510 cls 3:play ""
75520 'No=-1:Okのとき
75530 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
75540 for i=0 to 1
75550 buf_day(i)=0
75560 next i
75570 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
75580 gload Gazo$ + "Screen2.png",0,0,0
75590 gload Gazo$ + "downscreen.png",0,0,800
75600 'Init"kb:2"
75610 '音声ファイル再生 2023.06.07
75620 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
75630 font 48
75640 locate 0,1
75650 '文字色：黒　 color rgb(0,0,0)
75660 color rgb(255,255,255)
75670 print "部下の生まれた日を入れて下さい" + chr$(13)
75680 color rgb(255,255,255)
75690 locate 1,3
75700 print "部下の生まれた日(1日~31日):";buf_Day$
75710 color rgb(255,255,255)
75720 'locate 4,6:print ":7"
75730 'locate 9,6:print ":8"
75740 'locate 12,6:print ":9"
75750 'locate 4,6
75760 'print ":7  :8  :9" + chr$(13)
75770 'color rgb(255,255,255)
75780 'locate 4,8
75790 'print ":4  :5  :6" + chr$(13)
75800 'color rgb(255,255,255)
75810 'locate 4,10
75820 'print ":1  :2  :3" + chr$(13)
75830 'locate 4,12
75840 'print "    :0"
75850 'locate 12,12
75860 'color rgb(0,0,255)
75870 'print ":Ok"
75880 sp_on 4,0: sp_on 5,0:sp_on 6,0
75890 sp_on 7,0:sp_on 8,0:sp_on 9,0
75900 sp_on 10,0:sp_on 11,0:sp_on 12,0
75910 sp_on 13,0:sp_on 14,1
75920 Buka_Input_Born_Day2:
75930 '
75940 key$="":bg=0:y=0:y2=0:bg2=0
75950 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
75960 key$ = inkey$
75970 bg = strig(1)
75980 y = stick(1)
75990 y2 = stick(0)
76000 bg2 = strig(0)
76010 pause 200
76020 wend
76030 '十字キー　ここから
76040 '上の矢印　または、十字キー上
76050 if ((y = -1) or (key$ = chr$(30))) then
76060 select case No
76070 'No=-1:okのとき:初期の状態
76080 '0kボタンから３に移動
76090 '上に行く 処理
76100 case -1:
76110 No=3:sp_on 12,1:sp_on 14,0
76120 pause 200:goto Buka_Input_Born_Day2:
76130 '選択肢:3
76140 '3ボタンから 6に移動
76150 case 3:
76160 No=6:sp_on 12,0:sp_on 11,1
76170 pause 200:goto Buka_Input_Born_Day2:
76180 '6ボタンから ９に移動
76190 case 6:
76200 No=9:sp_on 10,1:sp_on 11,0
76210 pause 200:goto Buka_Input_Born_Day2:
76220 '6ボタンから ９に移動　ここまで
76230 '9で上を押して何もしない
76240 case 9:
76250 '何もしない
76260 No=9
76270 pause 200:goto Buka_Input_Born_Day2:
76280 '9で上を押しても何もしない　ここまで
76290 '上　 0ボタンから2ボタン
76300 'sp_on 6,1:1
76310 'sp_on 8,1:5
76320 'sp_on 7,1:7
76330 case 0:
76340 No=2:sp_on 13,0:sp_on 9,1:
76350 pause 200:goto Buka_Input_Born_Day2:
76360 '上  0ボタンから2ボタン　ここまで
76370 '2から５になる 上
76380 case 2:
76390 No=5:sp_on 8,1:sp_on 9,0:
76400 pause 200:goto Buka_Input_Born_Day2:
76410 case 5:
76420 No=8:sp_on 7,1:sp_on 8,0
76430 pause 200:goto Buka_Input_Born_Day2:
76440 case 8:
76450 pause 200:goto Buka_Input_Born_Day2:
76460 case 1:
76470 No=4:sp_on 5,1:sp_on 6,0
76480 pause 200:goto Buka_Input_Born_Day2:
76490 case 4:
76500 No=7:sp_on 4,1:sp_on 5,0
76510 pause 200:goto Buka_Input_Born_Day2:
76520 case 7:
76530 pause 200:goto Buka_Input_Born_Day2:
76540 end select
76550 endif
76560 '左３　ここまで
76570 '下の矢印
76580 '中央 2
76590 if ((y=1) or (key$ = chr$(31))) then
76600 select case No
76610 '9から６に下げる
76620 case 9:
76630 No=6:sp_on 11,1:sp_on 10,0
76640 pause 200:goto Buka_Input_Born_Day2:
76650 '6から３に下げる
76660 case 6:
76670 No=3:sp_on 12,1:sp_on 11,0
76680 pause 200:goto Buka_Input_Born_Day2:
76690 '3から０ｋに変える
76700 case 3:
76710 No=-1:sp_on 14,1:sp_on 12,0
76720 pause 200:goto Buka_Input_Born_Day2:
76730 'Okから下のボタンを押しても何もしない
76740 case -1:
76750 pause 200:goto Buka_Input_Born_Day2:
76760 case 8:
76770 No=5:sp_on 8,1:sp_on 7,0
76780 pause 200:goto Buka_Input_Born_Day2:
76790 case 5:
76800 No=2:sp_on 9,1:sp_on 8,0
76810 pause 200:goto Buka_Input_Born_Day2:
76820 case 2:
76830 No=0:sp_on 13,1:sp_on 9,0
76840 pause 200:goto Buka_Input_Born_Day2:
76850 case 0:
76860 pause 200:goto Buka_Input_Born_Day2:
76870 case 7:
76880 No=4:sp_on 5,1:sp_on 4,0
76890 pause 200:goto Buka_Input_Born_Day2:
76900 case 4:
76910 No=1:sp_on 6,1:sp_on 5,0
76920 pause 200:goto Buka_Input_Born_Day2:
76930 case 1:
76940 pause 200:goto Buka_Input_Born_Day2:
76950 end select
76960 endif
76970 '左へボタン 十字キー　左　or 　カーソル左
76980 if ((y2 = -1) or (key$ = chr$(29))) then
76990 select case No
77000 'Ok ボタン  Okから　左　０に行く
77010 case -1:
77020 No=0:sp_on 13,1:sp_on 14,0
77030 pause 200:goto Buka_Input_Born_Day2:
77040 '0 ボタン  左　何もしない
77050 case 0:
77060 pause 200:goto Buka_Input_Born_Day2:
77070 case 3:
77080 No=2:sp_on 9,1:sp_on 12,0:
77090 pause 200:goto Buka_Input_Born_Day2:
77100 case 2:
77110 No=1:sp_on 6,1:sp_on 9,0:
77120 pause 200:goto Buka_Input_Born_Day2:
77130 case 1:
77140 pause 200:goto Buka_Input_Born_Day2:
77150 case 6:
77160 No=5:sp_on 8,1:sp_on 11,0
77170 pause 200:goto Buka_Input_Born_Day2:
77180 case 5:
77190 No=4:sp_on 5,1:sp_on 8,0
77200 pause 200:goto Buka_Input_Born_Day2:
77210 case 4:
77220 pause 200:goto Buka_Input_Born_Day2:
77230 case 9:
77240 No=8:sp_on 7,1:sp_on 10,0
77250 pause 200:goto Buka_Input_Born_Day2:
77260 case 8:
77270 No=7:sp_on 4,1:sp_on 7,0
77280 pause 200:goto Buka_Input_Born_Day2:
77290 case 7:
77300 pause 200:goto Buka_Input_Born_Day2:
77310 end select
77320 endif
77330 '右  十字キー　右　or カーソル　右
77340 if ((y2 = 1) or (key$ = chr$(28))) then
77350 select case No
77360 '0ボタンからokボタン右に移動
77370 case 0:
77380 No=-1:sp_on 14,1:sp_on 13,0
77390 pause 200:goto Buka_Input_Born_Day2:
77400 '0ボタンからokボタン 右に移動　ここまで
77410 'OKボタンで右を押して何もしない
77420 case -1:
77430 pause 200:goto Buka_Input_Born_Day2:
77440 case 1:
77450 No=2:sp_on 9,1:sp_on 6,0
77460 pause 200:goto Buka_Input_Born_Day2:
77470 case 2:
77480 No=3:sp_on 12,1:sp_on 9,0
77490 pause 200:goto Buka_Input_Born_Day2:
77500 case 3:
77510 pause 200:goto Buka_Input_Born_Day2:
77520 case 4:
77530 No=5:sp_on 8,1:sp_on 5,0
77540 pause 200:goto Buka_Input_Born_Day2:
77550 case 5:
77560 No=6:sp_on 11,1:sp_on 8,0
77570 pause 200:goto Buka_Input_Born_Day2:
77580 case 7:
77590 No=8:sp_on 7,1:sp_on 4,0
77600 pause 200:goto Buka_Input_Born_Day2:
77610 case 8:
77620 No=9:sp_on 10,1:sp_on 7,0
77630 pause 200:goto Buka_Input_Born_Day2:
77640 case 9:
77650 pause 200:goto Buka_Input_Born_Day2:
77660 case 6:
77670 pause 200:goto Buka_Input_Born_Day2:
77680 end select
77690 'Okから右ボタンを押して何もしない ここまで
77700 endif
77710 '十字キー　ここまで
77720 '右の丸ボタンを押したとき
77730 if ((bg = 2) or (key$ = chr$(13))) then
77740 'count :決定ボタンを押した回数
77750 select case (count)
77760 '1桁目入力
77770 case 0:
77780 count = 1:
77790 if (No = -1) then
77800 '1桁目　OKでは何もしない
77810 'goto check:
77820 No=0
77830 else
77840 'ok以外のボタンを押したとき
77850 buf_buka_day = No:buf_buka_Day$ = str$(No)
77860 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
77870 buf_buka_Day$ = str$(No) + "*"
77880 endif
77890 a=No
77900 buf_Buka_Born_Day(2) = buf_buka_day
77910 locate 1,3
77920 print"                                      "
77930 color RGB(255,255,255)
77940 locate 1,3
77950 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
77960 endif
77970 check2:
77980 if (No >= 1 and No <= 9) then
77990 sp_on 14,0
78000 goto Buka_Input_Born_Day2:
78010 else
78020 sp_on 14,0
78030 goto Result_Business_Aisyou:
78040 end
78050 endif
78060 case 1:
78070 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
78080 count = 2:
78090 'locate 2,3
78100 'color RGB(255,255,255)
78110 'print "生まれた日(1日~31日):";buf_Day$
78120 'Okボタンを押したときの処理
78130 '入力値　10未満のとき
78140 'c = buf_day
78150 if (No = -1) then
78160 'c=buf_day
78170 ' buf_day = c
78180 'buf_Day$ = str$(buf_day)
78190 '10以下のとき
78200 No=0
78210 if (buf_day < 10) then
78220 sp_on 14,0
78230 goto Result_Business_Aisyou:
78240 end
78250 endif
78260 else
78270 sp_on 14,0
78280 'c=No
78290 buf_buka_day = a * 10 + No
78300 buf_buka_Day$ = str$(buf_buka_day)
78310 buf_Buka_Born_Day(2) = buf_buka_day
78320 locate 0,3
78330 color Rgb(255,255,255)
78340 print "                                       "
78350 locate 1,3
78360 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
78370 goto Buka_Input_Born_Day2:
78380 endif
78390 '生まれた日　2桁目の数字　or 1桁の数字 + ok
78400 case 2:
78410 count=0
78420 'c=val(buf_Day$)
78430 'buf_day=c*10+No
78440 'buf_Day$=str$(buf_day)
78450 'day=buf_day
78460 'locate 2,3
78470 'print "生まれた日(1日〜31日):";buf_Day$
78480 'No=-1:ok ボタンを押したとき
78490 if (No = -1) then No=0
78500 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
78510 sp_on 14,0
78520 goto Result_Business_Aisyou:
78530 else
78540 goto Buka_Input_Born_Day2:
78550 endif
78560 'Okボタン以外を押したとき
78570 else
78580 c=val(buf_buka_Day$)
78590 buf_buka_day = c * 10 + No
78600 buf_buka_Day$ = str$(buf_buka_day)
78610 locate 1,3
78620 print "                "
78630 locate 1,3
78640 print "生まれた日(1日~31日):"+buf_buka_Day$
78650 goto Buka_Input_Born_Day2:
78660 'endif
78670 case 3:
78680 count=4
78690 'c=val(buf_day$)
78700 'buf_day=c*10+No
78710 'buf_day$=str$(buf_day)
78720 'locate 2,3
78730 'print "生まれた日を入れてください:";buf_day$
78740 'year=val(buf_year$)
78750 if (No = -1) then
78760 'goto Buka_Input_Born_Day:
78770 sp_on 14,0:
78780 goto complate_jyoushi:
78790 else
78800 goto Buka_Input_Born_Month2:
78810 endif
78820 'case 4:
78830 'bufyear=buf_year
78840 'if (No=-1) then
78850 'buf_day = val(buf_day$)
78860 'bufday = buf_day
78870 'sp_on 14,0
78880 goto complate_jyoushi:
78890 'else
78900 'goto Buka_Input_Born_Day2:
78910 'endif
78920 end select
78930 endif
78940 if (bg2=2) then
78950 select case count2
78960 case 0:
78970 if (No=-1) then
78980 'buf_day=0:buf_Day$="**"
78990 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
79000 count=0
79010 buf_buka_day=0:buf_buka_Day$="**"
79020 goto rewrite_day3:
79030 else
79040 buf_buka_day=0:buf_buka_Day$="**"
79050 ui_msg"値が範囲外です"
79060 endif
79070 goto rewrite_day3:
79080 else
79090 goto rewrite_day3:
79100 endif
79110 rewrite_day3:
79120 locate 2,3
79130 color rgb(255,255,255)
79140 print "                                      "
79150 locate 1,3
79160 print "生まれた日(1日~31日):"+buf_buka_Day$
79170 goto Buka_Input_Born_Day2:
79180 end select
79190 endif
79200 '3.部下の生まれた日'
79210 '部下'
79220 '--------------------------------------------'
79230 'ビジネの相性　結果表示
79240 Result_Business_Aisyou:
79250 cls 3:init "kb:4"
79260 a=0:b=0:c=0:d=0:e=0:f=0
79270 bg=0:key$=""
79280 gload Gazo$ + "Screen1.png",0,0,0
79290 gload Gazo$ + "downscreen.png",0,0,800
79300 sp_on 14,0
79310 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
79320 buf_Buka = Kabara_Num(d,e,f)
79330 a_2 = buf_Buka
79340 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
79350 locate 0,1
79360 color rgb(255,0,0)
79370 print "●.相性診断結果１"
79380 locate 0,4:
79390 color rgb(255,255,255)
79400 print "1.上司の名前:";buffer_name$(0)
79410 locate 0,6
79420 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
79430 locate 0,8
79440 print "2.部下の名前:";buffer_name$(1)
79450 locate 0,10
79460 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
79470 locate 0,12
79480 print "3.上司と部下の相性:";Result_Aisyou$
79490 locate 1,15
79500 color rgb(0,0,0)
79510 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
79520 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
79530 bg = strig(1)
79540 key$ = inkey$
79550 bg2 = strig(0)
79560 pause 5
79570 wend
79580 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
79590 if (bg2 = 2) then
79600 cls 3:goto Business_Aishou_Input_1_parson:
79610 endif
79620 'ビジネスの相性占い　結果2　説明
79630 Result_Business_Aisyou2:
79640 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
79650 gload Gazo$ + "Screen1.png",0,0,0
79660 locate 0,1
79670 color rgb(255,0,0)
79680 print "●.相性の説明"
79690 color rgb(255,255,255)
79700 locate 0,4
79710 print "相性:";Result_Aisyou$
79720 locate 0,6:
79730 print "相性の説明:";buf$
79740 locate 0,15
79750 color rgb(0,0,0)
79760 print "右の丸ボタン:トップ,左のボタン:前の画面"
79770 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
79780 bg = strig(1)
79790 bg2 = strig(0)
79800 key$ = inkey$
79810 pause 200
79820 wend
79830 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
79840 if ((bg2 = 2)) then goto Result_Business_Aisyou:
79850 'Birds Eye Menu List
79860 Result_Birtheye_List1:
79870 'dim List$(4) Topに定義
79880 List$(0) = "1.バーズアイグリッドをもう一度診断"
79890 List$(1) = "2.診断結果"
79900 List$(2) = "3.データーを保存"
79910 List$(3) = "4.トップ画面に戻る"
79920 Birds_List1 = ui_select("List$","Menu")
79930 select case (Birds_List1)
79940 case 0: '1.もう一度診断
79950 for i=0 to 8
79960 buffer(i)=0
79970 next i
79980 goto Input_name1_Birdseye:
79990 case 1: '2.次へ行く
80000 gosub BirdsEye_Result2:
80010 case 2: '3.データーを保存
80020 ui_msg "データーを保存します"
80030 goto BirdsEye_Save_data:
80040 case 3: '4.トップに戻る
80050 for i=0 to 8
80060 buffer(i)=0
80070 next i
80080 goto Main_Screen:
80090 end select
80100 'BirdsEye Data Save
80110 BirdsEye_Save_data:
80120 if dir$(Save_data_Birdseye$) = "" then
80130 Mkdir Save_data_Birdseye$
80140 endif
80150 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
80160 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
80170 close #1
80180 ui_msg "データーを保存しました"
80190 goto Result_Birtheye_List1:
80200 'return
80210 '自作関数 ここから
80220 BirdsEyeGrid_Entry:
80230 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
80240 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
80250 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
80260 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
80270 locate 1,4:print "右の丸:メイン画面へ行く"
80280 else
80290 flag=1
80300 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
80310 while (eof(1)=0)
80320 line input #1,a$
80330 n = n + 1
80340 wend
80350 close #1
80360 'endif
80370 talk "登録件数は"+str$(n)+"件です。"
80380 locate 1,2:print "登録件数は";str$(n);"件です"
80390 locate 1,4:print "左の丸：メイン画面へ行く"
80400 endif
80410 Entry_Count:
80420 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
80430 key$ = inkey$
80440 bg = strig(1)
80450 bg2 = strig(0)
80460 pause 200
80470 wend
80480 if ((bg = 2) or (key$ = chr$(13))) then
80490 if (n = 0) then
80500 '登録件数　０件のとき　メイン画面に行く
80510 goto Main_Screen:
80520 else
80530 '登録件数1件以上　次へ行く
80540 'ここを変更する
80550 goto Entry_List:
80560 endif
80570 endif
80580 if (bg2 = 2) then
80590 if (n > 0) then
80600 goto Main_Screen:
80610 else
80620 goto Entry_Count:
80630 endif
80640 endif
80650 Entry_List:
80660 cls 3:play"":color rgb(255,255,255)
80670 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
80680 dim buffer_List$(11,n)
80690 'ファイル読み込み ここから
80700 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
80710 for i=0 to 10
80720 for j=0 to n-1
80730 input #1,a$
80740 buffer_List$(i,j)=a$
80750 next j
80760 next i
80770 close #1
80780 'erase buffer_List$
80790 'color rgb(255,255,255)
80800 i=0:key$="":bg=0:init"kb:4":bg2=0
80810 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
80820 key$ = inkey$
80830 bg = strig(1)
80840 bg2=strig(0)
80850 pause 200
80860 wend
80870 color rgb(0,0,0)
80880 locate 1,15:print "次へ"
80890 'show_ListData:
80900 'j=0
80910 repeat (j=0)
80920 show_ListData:
80930 cls
80940 color rgb(255,255,255)
80950 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
80960 '1の文字データー
80970 locate 4,14:print buffer_List$(2,j)
80980 '2の文字データー
80990 locate 4,9:print buffer_List$(3,j)
81000 '3の文字データー
81010 locate 4,5:print buffer_List$(4,j)
81020 '4の文字データー
81030 locate 11,14:print buffer_List$(5,j)
81040 '5の文字データー
81050 locate 11,9:PRINT buffer_List$(6,j)
81060 '6の文字データー
81070 locate 11,5:print buffer_List$(7,j)
81080 '7の文字データー
81090 locate 16,14:print buffer_List$(8,j)
81100 '8の文字データー
81110 locate 16,9:print buffer_List$(9,j)
81120 '9の文字データー
81130 locate 16,5:print buffer_List$(10,j)
81140 color rgb(0,0,0)
81150 locate 1,15:print "右の丸：次へ"
81160 if (bg=2 or key$=chr$(13)) then
81170 j=j+1
81180 endif
81190 if (bg2=2) then
81200 goto Main_Screen:
81210 endif
81220 until (j=n)
81230 'erase buffer_List$:
81240 goto show_ListData:
81250 'ファイル読み込み　ここまで
81260 func read_explain$(ba$)
81270 d$=""
81280 buf_String$=""
81290 if ba$="A" then
81300 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
81310 line input #1,a$
81320 a1$=mid$(a$,1,12)
81330 a2$=mid$(a$,13,17)
81340 a3$=mid$(a$,30,17)
81350 a4$=mid$(a$,47,18)
81360 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
81370 buf_String$ = a5$
81380 close #1
81390 endif
81400 if ba$="B"  then
81410 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
81420 line input #1,b$
81430 b1$=mid$(b$,1,15)
81440 b2$=mid$(b$,16,21)
81450 'b3$=mid$(b$,33,3)
81460 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
81470 buf_String$ = b4$
81480 close #1
81490 endif
81500 if ba$="C"  then
81510 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
81520 line input #1,c$
81530 c1$ = Mid$(c$,1,15)
81540 c2$ = Mid$(c$,16,33)
81550 c3$ = c1$ + chr$(13) + c2$
81560 buf_String$ = c3$
81570 close #1
81580 endif
81590 if ba$="D" then
81600 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
81610 line input #1,d$
81620 d1$=mid$(d$,1,15)
81630 d2$=mid$(d$,16,22)
81640 d3$=mid$(d$,38,7)
81650 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
81660 buf_String$ = d4$
81670 close #1
81680 endif
81690 if ba$="E"  then
81700 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
81710 line input #1,e$
81720 e1$=Mid$(e$,1,16)
81730 e2$=Mid$(e$,17,16)
81740 e3$=Mid$(e$,33,12)
81750 e4$=Mid$(e$,45,17)
81760 e5$=Mid$(e$,62,17)
81770 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
81780 buf_String$ = e6$
81790 close #1
81800 endif
81810 if ba$="F" then
81820 '改行を追加して表示を調整
81830 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
81840 line input #1,f$
81850 f1$=Mid$(f$,1,15)
81860 f2$=Mid$(f$,16,12)
81870 buf_String$ = f1$+chr$(13)+f2$
81880 close #1
81890 endif
81900 if ba$="G" then
81910 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
81920 line input #1,g$
81930 g1$ = mid$(g$,1,16)
81940 g2$ = mid$(g$,17,18)
81950 g3$ = mid$(g$,36,21)
81960 g4$ = mid$(g$,56,6)
81970 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
81980 buf_String$ = g5$
81990 close #1
82000 endif
82010 if ba$="H" then
82020 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
82030 line input #1,h$
82040 h1$=Mid$(h$,1,17)
82050 h2$=Mid$(h$,18,21)
82060 h3$=Mid$(h$,39,20)
82070 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
82080 buf_String$ = h$
82090 close #1
82100 endif
82110 if ba$ = "I" then
82120 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
82130 line input #1,i$
82140 i1$=Mid$(i$,1,10)
82150 i2$=Mid$(i$,11,13)
82160 i3$=Mid$(i$,25,16)
82170 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
82180 buf_String$ = i$
82190 close #1
82200 endif
82210 buffer$ = buf_String$
82220 endfunc buffer$
82230 'カバラ数（数秘番号を求める）
82240 func Kabara_Num(buffer_Year,month,day)
82250 '=============================
82260 'a1:4桁のうちの1桁目を求める
82270 '例 a1:1234の4が1桁目
82280 'a2:4桁のうちの2桁目を求める
82290 '例:a2:1234の3が2桁目
82300 'a3:4桁のうちの3桁目を求める
82310 '例 a3:1234の2が3桁目
82320 'a4:4桁のうちの4桁目を求める
82330 '例 a4:1234の1が4桁目
82340 '==============================
82350 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
82360 Year = buffer_Year
82370 '処理1　整数部分を取り出す。
82380 a4 = fix(Year / 1000)
82390 a3 = fix(Year / 100) - (a4 * 10)
82400 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
82410 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
82420 '処理　２　取り出した整数部分を足す。
82430 a_ = a1 + a2 + a3 + a4 +month + day
82440 'a1=0:a2=0:a3=0:a4=0
82450 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
82460 buffer = a_
82470 'else
82480 goto recomp2:
82490 'if (a_ = 10) then
82500 '  buffer = 1
82510 endif
82520 recomp2:
82530 a5=0:a6=0
82540 a5 = fix(a_ / 10)
82550 a6 = (a_) - (a5 * 10)
82560 a_ = a5 + a6
82570 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
82580 '結果に行く
82590 goto Res2:
82600 '  if ((a_>11) and (a_<99)) then
82610 else
82620 '再度計算
82630 goto recomp2:
82640 endif
82650 '     a1 = fix(a_ / 10)
82660 '     a2 = a_ - (a1 * 10)
82670 '     a_ = a1 + a2
82680 '     buffer = a_
82690 'endif
82700 'else
82710 '    bffer = a_
82720 'endif
82730 'endif
82740 'else
82750 'talk "プログラムを終了します。"
82760 'end
82770 'endif
82780 'kabara = 10
82790 Res2:
82800 kabara = a_
82810 endfunc kabara
82820 func Kabara_Aisyou$(buff1,buff2)
82830 a=0:b=0
82840 '範囲　1~9
82850 if ((buff1 > 0 and buff1 < 10)) then
82860 a = buff1
82870 else
82880 Select case buff1
82890 case 11:
82900 buff1=9:a=buff1
82910 case 22:
82920 buff1=10:a=buff1
82930 end select
82940 endif
82950 '範囲　１~９
82960 if ((buff2 > 0 and buff2 < 10)) then
82970 b = buff2
82980 else
82990 select case buff2
83000 case 11:
83010 buff2=9:b=buff2
83020 case 12:
83030 buff2=10:b=buff2
83040 end select
83050 endif
83060 Aisyou$ = Buffer_Business_Aisyou$(a,b)
83070 endfunc Aisyou$
83080 '=============================
83090 '自作関数 ここまで
83100 '1.数秘術　トップ画面
83110 '
83120 'Data_eraseを一番最後に持ってくる
83130 '=============================
83140 Data_erase:
83150 'メモリー削除
83160 erase buf_male_year
83170 erase buf_male_month
83180 erase buf_male_Born_Day
83190 erase buf_feMale_Born_Day
83200 erase buf_female_day
83210 erase buf_name1$
83220 erase buf_name2$
83230 erase buffer
83240 erase buf_chart$
83250 erase Buffer_Business_Aisyou$
83260 erase buffer_name$
83270 '上司の誕生日
83280 erase buf_Jyoushi_Born_Day
83290 '部下の誕生日
83300 erase buf_Buka_Born_Day
83310 erase buf_year
83320 erase buf_month
83330 erase buf_day
83340 'フォーカスライン
83350 erase Forcus1_buffer$
83360 erase Forcus2_buffer$
83370 erase Forcus3_buffer$
83380 'erase buffer_List$
83390 'Birds eye List Data 配列
83400 erase List$
83410 buffer$ = ""
83420 buf$ = ""
83430 buf_year$ = ""
83440 buf_Jyoushi_Kabara_Num = 0
83450 buf_Buka_Kabara_Num = 0
83460 count = 0
83470 buf_Month$ = ""
83480 buf_Day$ = ""
83490 b=0
83500 c=0
83510 No=0
83520 return
