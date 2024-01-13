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
530 'AC.2024
540 '2024.01.07:Ver131_20240107
550 '2024.01.14:Ver132_20240114
560 Version$ = "Ver:1.3.2_20240114"
570 'Gazo Folder Japan
580 Gazo$ = "./data/Picture/"
590 'Gazo Folder English
600 Gazo_Eng$ = "./data/Picture/English/"
610 'Voice Folder 2023
620 Voice$ = "./data/Voice/Voice/"
630 'BirtheyeChart Data:20230626
640 Birth_eye_chart$ = "./data/chart_data/"
650 'Data Folder
660 Data$ = "./data/data/"
670 'Business Aisyou 結果説明保存フォルダ
680 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
690 'Save BirdsEyeGrit List Folder
700 Save_data_Birdseye$ = "./data/Parsonal_data/"
710 '変数定義 パート
720 b=0:c=0:n=0
730 'dim buffer_List$(11,1)
740 dim buf_name1$(10),buf_name2$(10)
750 dim buffer(9),buf_chart$(26,2)
760 'ビジネスの相性　データー
770 dim Buffer_Business_Aisyou$(12,12)
780 '男女の相性
790 dim Buffer_Bitween_sexes_Aisyou$(12,12)
800 '生れた年代
810 dim buf_year(4):buf_year$ = ""
820 dim buf_month(2)
830 dim buf_day(2)
840 'フォーカスライン　配列
850 dim Forcus1_buffer$(3)
860 dim Forcus2_buffer$(3)
870 dim Forcus3_buffer$(2)
880 '生れた月
890 buf_Month$ = ""
900 '生れた日
910 buf_Day$ = ""
920 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
930 dim buffer_name$(3)
940 '1-1.上司の誕生日(数値データー)
950 dim buf_Jyoushi_Born_Day(3)
960 '1-2.上司の数秘ナンバー(数値データー)
970 buf_Jyoushi_Kabara_Num = 0
980 '2-1.部下の誕生日(数値データー)
990 dim buf_Buka_Born_Day(3)
1000 '2-2.部下の数秘ナンバー(数秘データー)
1010 buf_Buka_Kabara_Num = 0
1020 dim buf_male_year(4)
1030 dim buf_male_month(2)
1040 dim buf_male_Born_Day(2)
1050 dim buf_feMale_Born_Day(2)
1060 dim buf_female_day(2)
1070 count=0
1080 'Birds Eye List 配列
1090 dim List$(6)
1100 '部下の数秘ナンバー
1110 'File 読み込み
1120 '1.ビジネスの相性占い
1130 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1140 for i=0 to 11
1150 for j=0 to 11
1160 input #1,a$
1170 Buffer_Business_Aisyou$(j,i) = a$
1180 next j
1190 next i
1200 close #1
1210 '2.男女の相性占い
1220 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1230 for i=0 to 11
1240 for j=0 to 11
1250 input #1,a$
1260 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1270 next j
1280 next i
1290 close #1
1300 '2.Birth Eye chart$
1310 '2.バーズアイグリッドを読み込む
1320 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1330 for j=0 to 25
1340 for i=0 to 1
1350 input #1,a$
1360 buf_chart$(j,i) = a$
1370 next i
1380 next j
1390 close #1
1400 'File 読み込み　ここまで
1410 'Main画面
1420 screen 1,1,1,1
1430 Main_Screen:
1440 cls 3:
1450 No=0
1460 gload Gazo$ + "Selection.png",1,5,200
1470 gload Gazo$ + "Selection.png",1,5,300
1480 gload Gazo$ + "Selection.png",1,5,400
1490 gload Gazo$ + "Selection.png",1,5,500
1500 '4
1510 gload Gazo$ + "Selection.png",1,35,300
1520 '5
1530 gload Gazo$ + "Selection.png",1,35,400
1540 '6
1550 gload Gazo$ + "Selection.png",1,35,500
1560 '7
1570 gload Gazo$ + "Selection.png",1,70,300
1580 '8
1590 gload Gazo$ + "Selection.png",1,70,400
1600 '9
1610 gload Gazo$ + "Selection.png",1,70,500
1620 '10
1630 gload Gazo$ + "Selection.png",1,110,300
1640 '11
1650 gload Gazo$ + "Selection.png",1,110,400
1660 '12
1670 gload Gazo$ + "Selection.png",1,110,500
1680 '13:0
1690 gload Gazo$ + "Selection.png",1,150,400
1700 gload Gazo$ + "Selection.png",1,200,400
1710 if ex_info$(1) <> "JP" then
1720 '英語　トップ画面
1730 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
1740 else
1750 '日本語トップスクリーン
1760 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1770 endif
1780 '選択肢の丸
1790 gload Gazo$ + "downscreen.png",0,0,800
1800 sp_def 0,(5,300),32,32
1810 sp_def 1,(5,400),32,32
1820 sp_def 2,(5,500),32,32
1830 sp_def 3,(5,600),32,32
1840 '1
1850 sp_def 4,(35,300),32,32
1860 '2
1870 sp_def 5,(35,400),32,32
1880 '3
1890 sp_def 6,(35,500),32,32
1900 '4
1910 sp_def 7,(70,300),32,32
1920 '5
1930 sp_def 8,(70,400),32,32
1940 '6
1950 sp_def 9,(70,500),32,32
1960 '7
1970 sp_def 10,(110,300),32,32
1980 '8
1990 sp_def 11,(110,400),32,32
2000 '9
2010 sp_def 12,(110,400),32,32
2020 sp_def 13,(150,400),32,32
2030 sp_def 14,(200,400),32,32
2040 'Sprite OFF
2050 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
2060 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
2070 sp_put 0,(5,300),0,0
2080 sp_put 1,(5,400),1,0
2090 sp_put 2,(5,500),2,0
2100 sp_put 3,(5,600),3,0
2110 '1
2120 sp_put 4,(130,300),4,0
2130 '2
2140 sp_put 5,(130,400),5,0
2150 '3
2160 sp_put 6,(130,500),6,0
2170 '4
2180 sp_put 7,(340,300),7,0
2190 '5
2200 sp_put 8,(340,400),8,0
2210 '6
2220 sp_put 9,(340,500),9,0
2230 '7
2240 sp_put 10,(540,300),10,0
2250 '8
2260 sp_put 11,(540,400),11,0
2270 '9
2280 sp_put 12,(540,500),12,0
2290 '
2300 sp_put 13,(340,600),13,0
2310 sp_put 14,(540,600),14,0
2320 Main_Top:
2330 'Main Message 2023.06.07
2340 '再生を止める
2350 play ""
2360 init "kb:4"
2370 'font 32:
2380 font 48
2390 if ex_info$(1) <> "JP" then
2400 '1.英語表示ターム
2410 print chr$(13) + chr$(13) + chr$(13)
2420 color rgb(217,255,212)
2430 print "Please Select Number?" + chr$(13)
2440 '0
2450 print " :1.Kabara Fortune Telling" + chr$(13)
2460 '1
2470 print " :2.Setting" + chr$(13)
2480 '2
2490 print " :3.Help" + chr$(13)
2500 '3
2510 print " :4.(Finishing) Program" + chr$(13)
2520 COLOR rgb(0,0,0):No=0
2530 locate 1,15
2540 print "                                       "
2550 locate 1,15
2560 print "1.It has Selected Kabara Fortune Telling"
2570 '1.英語表示ターム
2580 '---------音声 日本語　英語に変える----------------
2590 'play Voice$ + "Voice_Main_Message_20230607.mp3"
2600 '---------音声 日本語　英語に変える----------------
2610 else
2620 '2.日本語表示ターム
2630 print chr$(13) + chr$(13) + chr$(13)
2640 color rgb(217,255,212)
2650 print "番号を選んでください" + chr$(13)
2660 '0
2670 print " :1.数秘術占い" + chr$(13)
2680 '1
2690 print " :2.設 定" + chr$(13)
2700 '2
2710 print " :3.ヘルプ" + chr$(13)
2720 '3
2730 print " :4.(プログラムを)終了する" + chr$(13)
2740 COLOR rgb(0,0,0):No=0
2750 locate 1,15
2760 print "                                       "
2770 locate 1,15:print "1.数秘術占いを選択"
2780 play Voice$ + "Voice_Main_Message_20230607.mp3"
2790 '2.日本語表示ターム
2800 endif
2810 Main_Screen_Select:
2820 y = 0:key$ = "":bg = 0:bg2=0
2830 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2840 y = stick(1)
2850 '"May (2023)"
2860 key$ = inkey$
2870 bg = strig(1)
2880 bg2 = strig(0)
2890 pause 200
2900 wend
2910 '1.
2920 'ジョイパッドのソース ソート　ここから
2930 'カーソル　下 or 十字キー下
2940 if ((y = 1) or (key$ = chr$(31))) then
2950 select case No
2960 case 0:
2970 '1
2980 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2990 case 1:
3000 '2
3010 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3020 case 2:
3030 '3
3040 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3050 case 3:
3060 '0
3070 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
3080 end select
3090 endif
3100 '2.
3110 'カーソル　上　or 十字キー  上
3120 if ((y = -1) or (key$ = chr$(30))) then
3130 select case No
3140 case 0:
3150 '3
3160 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3170 case 1:
3180 '0
3190 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
3200 case 2:
3210 '1
3220 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3230 case 3:
3240 '2
3250 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3260 end select
3270 endif
3280 'ジョイパッド　ソース 部分　ここまで
3290 'ジョイパッド右　　or Enter key 決定
3300 if ((bg = 2) OR (key$ = chr$(13))) then
3310 select case No
3320 case 0:
3330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
3340 case 1:
3350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
3360 case 2:
3370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
3380 case 3:
3390 play "":pause 200
3400 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
3410 end select
3420 endif
3430 if (bg2 = 2) then
3440 play "":pause 200
3450 play Voice$ + "Voice_Main_Message_20230607.mp3"
3460 goto Main_Screen_Select:
3470 endif
3480 'Version
3490 Version:
3500 cls 3:PLAY ""
3510 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3520 gload Gazo$ + "downscreen.png",0,0,800
3530 init"kb:4":font 32+8
3540 'talk"バージョン情報です"
3550 'Message :Version
3560 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3570 locate 0,3
3580 color rgb(0,0,0)
3590 print "・Title:数秘術占い";chr$(13)
3600 print "・" + Version$ + chr$(13)
3610 print "・Author:licksjp"+chr$(13)
3620 print "・E-mail:licksjp@gmail.com" + chr$(13)
3630 locate 0,12
3640 print "(C)licksjp All rights " + chr$(13)
3650 locate 7,13
3660 print "reserved since 2009"+chr$(13)
3670 locate 0,18
3680 color rgb(255,255,255)
3690 print "ジョイパッドの右を押してください"
3700 Versionn_Selection:
3710 bg = 0:key$ = "":bg2 = 0
3720 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3730 bg = strig(1)
3740 key$ = inkey$
3750 bg2 = strig(0)
3760 pause 200
3770 wend
3780 if ((bg = 2) or (key$ = chr$(13))) then
3790 pause 200:cls 4:goto Main_Screen:
3800 endif
3810 if (bg2=2) then
3820 play "":pause 200
3830 play Voice$ + "Voice_Version_Message_20230607.mp3"
3840 goto Versionn_Selection:
3850 endif
3860 '1.数秘ナンバーを求める
3870 '誕生日入力(生れた年代)
3880 Input_Seireki:
3890 cls 3:play "":count=0:count2=0
3900 'No = -1:Okのとき
3910 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3920 for i=0 to 3
3930 buf_year(i)=0
3940 next i
3950 gload Gazo$ + "Screen2.png",0,0,0
3960 gload Gazo$ + "downscreen.png",0,0,800
3970 'Init"kb:2"
3980 '音声ファイル再生 2023.06.07
3990 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
4000 font 48
4010 locate 0,1
4020 if ex_info$(1) <> "JP" then
4030 color rgb(255,255,255)
4040 color rgb(255,255,255)
4050 print "Input Born Year?" + chr$(13)
4060 color rgb(255,255,255)
4070 locate 2,3
4080 print "Your Born Year(4 dedgit for AC):" + buf_year$
4090 else
4100 '文字色：黒　 color rgb(0,0,0)
4110 color rgb(255,255,255)
4120 print "生まれた年代を入れて下さい" + chr$(13)
4130 color rgb(255,255,255)
4140 locate 2,3
4150 print "生まれた年代(西暦4桁):" + buf_year$
4160 endif
4170 '=============================
4180 'テンキーの色(1~９)　白 ,決定ボタン　青
4190 '=============================
4200 color rgb(255,255,255)
4210 'locate 4,6:print ":7"
4220 'locate 9,6:print ":8"
4230 'locate 12,6:print ":9"
4240 'locate 4,6
4250 'print ":7  :8  :9" + chr$(13)
4260 'color rgb(255,255,255)
4270 'locate 4,8
4280 'print ":4  :5  :6" + chr$(13)
4290 'color rgb(255,255,255)
4300 'locate 4,10
4310 'print ":1  :2  :3" + chr$(13)
4320 'locate 4,12
4330 'print "    :0"
4340 'locate 12,12
4350 'color rgb(255,0,0)
4360 'print ":Ok"
4370 sp_on 4,0: sp_on 5,0:sp_on 6,0
4380 sp_on 7,0:sp_on 8,0:sp_on 9,0
4390 sp_on 10,0:sp_on 11,0:sp_on 12,0
4400 sp_on 13,0:sp_on 14,1
4410 Input_Seireki2:
4420 key$="":bg=0:y=0:y2=0:bg2=0:
4430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
4440 key$ = inkey$
4450 bg = strig(1)
4460 y = stick(1)
4470 y2 = stick(0)
4480 bg2 = strig(0)
4490 pause 200
4500 wend
4510 '十字キー　ここから
4520 '上の矢印　または、十字キー上
4530 if ((y = -1) or (key$ = chr$(30))) then
4540 select case No
4550 'No=-1:okのとき:初期の状態
4560 '0kボタンから３に移動
4570 '上に行く 処理
4580 case -1:
4590 No=3:sp_on 12,1:sp_on 14,0
4600 pause 200:goto Input_Seireki2:
4610 '選択肢:3
4620 '3ボタンから 6に移動
4630 case 3:
4640 No=6:sp_on 12,0:sp_on 11,1
4650 pause 200:goto Input_Seireki2:
4660 '6ボタンから ９に移動
4670 case 6:
4680 No=9:sp_on 10,1:sp_on 11,0
4690 pause 200:goto Input_Seireki2:
4700 '6ボタンから ９に移動　ここまで
4710 '9で上を押して何もしない
4720 case 9:
4730 '何もしない
4740 No=9
4750 pause 200:goto Input_Seireki2:
4760 '9で上を押しても何もしない　ここまで
4770 '上　 0ボタンから2ボタン
4780 'sp_on 6,1:1
4790 'sp_on 8,1:5
4800 'sp_on 7,1:7
4810 case 0:
4820 No=2:sp_on 13,0:sp_on 9,1:
4830 pause 200:goto Input_Seireki2:
4840 '上  0ボタンから2ボタン　ここまで
4850 '2から５になる 上
4860 case 2:
4870 No=5:sp_on 8,1:sp_on 9,0:
4880 pause 200:goto Input_Seireki2:
4890 case 5:
4900 No=8:sp_on 7,1:sp_on 8,0
4910 pause 200:goto Input_Seireki2:
4920 case 8:
4930 pause 200:goto Input_Seireki2:
4940 case 1:
4950 No=4:sp_on 5,1:sp_on 6,0
4960 pause 200:goto Input_Seireki2:
4970 case 4:
4980 No=7:sp_on 4,1:sp_on 5,0
4990 pause 200:goto Input_Seireki2:
5000 case 7:
5010 pause 200:goto Input_Seireki2:
5020 end select
5030 endif
5040 '左３　ここまで
5050 '下の矢印
5060 '中央 2
5070 if ((y=1) or (key$ = chr$(31))) then
5080 select case No
5090 '9から６に下げる
5100 case 9:
5110 No=6:sp_on 11,1:sp_on 10,0
5120 pause 200:goto Input_Seireki2:
5130 '6から３に下げる
5140 case 6:
5150 No=3:sp_on 12,1:sp_on 11,0
5160 pause 200:goto Input_Seireki2:
5170 '3から０ｋに変える
5180 case 3:
5190 No=-1:sp_on 14,1:sp_on 12,0
5200 pause 200:goto Input_Seireki2:
5210 'Okから下のボタンを押しても何もしない
5220 case -1:
5230 pause 200:goto Input_Seireki2:
5240 case 8:
5250 No=5:sp_on 8,1:sp_on 7,0
5260 pause 200:goto Input_Seireki2:
5270 case 5:
5280 No=2:sp_on 9,1:sp_on 8,0
5290 pause 200:goto Input_Seireki2:
5300 case 2:
5310 No=0:sp_on 13,1:sp_on 9,0
5320 pause 200:goto Input_Seireki2:
5330 case 0:
5340 pause 200:goto Input_Seireki2:
5350 case 7:
5360 No=4:sp_on 5,1:sp_on 4,0
5370 pause 200:goto Input_Seireki2:
5380 case 4:
5390 No=1:sp_on 6,1:sp_on 5,0
5400 pause 200:goto Input_Seireki2:
5410 case 1:
5420 pause 200:goto Input_Seireki2:
5430 end select
5440 endif
5450 '左へボタン 十字キー　左　or 　カーソル左
5460 if ((y2 = -1) or (key$ = chr$(29))) then
5470 select case No
5480 'Ok ボタン  Okから　左　０に行く
5490 case -1:
5500 No=0:sp_on 13,1:sp_on 14,0
5510 pause 200:goto Input_Seireki2:
5520 '0 ボタン  左　何もしない
5530 case 0:
5540 pause 200:goto Input_Seireki2:
5550 case 3:
5560 No=2:sp_on 9,1:sp_on 12,0:
5570 pause 200:goto Input_Seireki2:
5580 case 2:
5590 No=1:sp_on 6,1:sp_on 9,0:
5600 pause 200:goto Input_Seireki2:
5610 case 1:
5620 pause 200:goto Input_Seireki2:
5630 case 6:
5640 No=5:sp_on 8,1:sp_on 11,0
5650 pause 200:goto Input_Seireki2:
5660 case 5:
5670 No=4:sp_on 5,1:sp_on 8,0
5680 pause 200:goto Input_Seireki2:
5690 case 4:
5700 pause 200:goto Input_Seireki2:
5710 case 9:
5720 No=8:sp_on 7,1:sp_on 10,0
5730 pause 200:goto Input_Seireki2:
5740 case 8:
5750 No=7:sp_on 4,1:sp_on 7,0
5760 pause 200:goto Input_Seireki2:
5770 case 7:
5780 pause 200:goto Input_Seireki2:
5790 end select
5800 endif
5810 '右  十字キー　右　or カーソル　右
5820 if ((y2 = 1) or (key$ = chr$(28))) then
5830 select case No
5840 '0ボタンからokボタン右に移動
5850 case 0:
5860 No=-1:sp_on 14,1:sp_on 13,0
5870 pause 200:goto Input_Seireki2:
5880 '0ボタンからokボタン 右に移動　ここまで
5890 'OKボタンで右を押して何もしない
5900 case -1:
5910 pause 200:goto Input_Seireki2:
5920 case 1:
5930 No=2:sp_on 9,1:sp_on 6,0
5940 pause 200:goto Input_Seireki2:
5950 case 2:
5960 No=3:sp_on 12,1:sp_on 9,0
5970 pause 200:goto Input_Seireki2:
5980 case 3:
5990 pause 200:goto Input_Seireki2:
6000 case 4:
6010 No=5:sp_on 8,1:sp_on 5,0
6020 pause 200:goto Input_Seireki2:
6030 case 5:
6040 No=6:sp_on 11,1:sp_on 8,0
6050 pause 200:goto Input_Seireki2:
6060 case 7:
6070 No=8:sp_on 7,1:sp_on 4,0
6080 pause 200:goto Input_Seireki2:
6090 case 8:
6100 No=9:sp_on 10,1:sp_on 7,0
6110 pause 200:goto Input_Seireki2:
6120 case 9:
6130 pause 200:goto Input_Seireki2:
6140 case 6:
6150 pause 200:goto Input_Seireki2:
6160 end select
6170 'Okから右ボタンを押して何もしない ここまで
6180 endif
6190 '十字キー　ここまで
6200 if ((bg=2) or (key$=chr$(13))) then
6210 select case count
6220 case 0:
6230 count=1
6240 if (No=-1) then
6250 count=0
6260 'Okボタンを押したとき
6270 goto Input_Seireki2:
6280 else
6290 '===================================
6300 'Okボタン以外が押されたとき  1桁目の入力
6310 '===================================
6320 count2=1
6330 if (No >= 1 and No <= 2) then
6340 buf_year$="":buf_year$ = str$(No)
6350 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
6360 if ex_info$(1) <> "JP" then
6370 n1= len("Input Born Year?(4 dedgit):")
6380 else
6390 n1 = len("生まれた年代(西暦4桁):")
6400 endif
6410 locate 2,3
6420 color rgb(255,255,255)
6430 if ex_info$(1) <> "JP" then
6440 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
6450 else
6460 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
6470 endif
6480 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
6490 'print "生まれた年代(西暦4桁):";buf_year2$
6500 print buf_Born_Year_line$
6510 goto Input_Seireki2:
6520 else
6530 count=0
6540 ui_msg"数字が範囲外になります。"
6550 buf_year$="":buf_year=0
6560 goto Input_Seireki2:
6570 endif
6580 endif
6590 case 1:
6600 count = 2
6610 if (No = -1) then
6620 count = 1
6630 goto Input_Seireki2:
6640 else
6650 count2 = 1
6660 b = val(buf_year$)
6670 buf_year = b * 10 + No
6680 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6690 locate 2,3
6700 color rgb(255,255,255)
6710 print "                                                                "
6720 locate 2,3
6730 if ex_info$(1) <> "JP" then
6740 print "Input Born Year(4 dedgit):";buf_year$
6750 else
6760 print "生まれた年代(西暦4桁):";buf_year2$
6770 endif
6780 'if (No = -1) then
6790 'count=1
6800 goto Input_Seireki2:
6810 endif
6820 case 2:
6830 count=3
6840 if (No=-1) then
6850 count =2
6860 goto Input_Seireki2:
6870 else
6880 b = val(buf_year$)
6890 buf_year = b*10 + No
6900 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6910 locate 2,3
6920 color rgb(255,255,255)
6930 print "                                        "
6940 locate 2,3
6950 if ex_info$(1) <> "JP" then
6960 print "Input Born Year?(4 dedgit):";buf_year$
6970 else
6980 print "生まれた年代(西暦4桁):";buf_year2$
6990 endif
7000 goto Input_Seireki2:
7010 endif
7020 case 3:
7030 count=4
7040 if (No = -1) then
7050 count=3
7060 goto Input_Seireki2:
7070 else
7080 b = val(buf_year$)
7090 buf_year = b * 10 + No
7100 buf_year$ = str$(buf_year)
7110 locate 2,3
7120 color RGB(255,255,255)
7130 print "                                      "
7140 locate 2,3
7150 if ex_info$(1) <> "JP" then
7160 print "Input Born Year?(4 dedgit):";buf_year$
7170 else
7180 print "生まれた年代(西暦4桁):";buf_year$
7190 endif
7200 buf_year=val(buf_year$)
7210 'year=val(buf_year$)
7220 'if (No=-1) then
7230 'goto Input_Born_Month:
7240 'else
7250 goto Input_Seireki2:
7260 endif
7270 case 4:
7280 'bufyear=buf_year
7290 if (No = -1) then
7300 buf_year = val(buf_year$)
7310 bufyear = buf_year
7320 sp_on 14,0
7330 goto Input_Born_Month:
7340 else
7350 goto Input_Seireki2:
7360 endif
7370 end select
7380 endif
7390 '=========================
7400 'bg2　キャンセルボタン
7410 '=========================
7420 if (bg2 = 2) then
7430 select case count2
7440 case 0:
7450 'Okボタンを押したときの処理
7460 if (No = -1) then
7470 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
7480 'count = 0
7490 locate 2,3
7500 color rgb(255,255,255)
7510 print "                                      "
7520 locate 2,3
7530 if ex_info$(1) <> "JP" then
7540 print "Input Born Year?(4 dedgit):";buf_year$
7550 else
7560 print "生まれた年代（西暦4桁):";buf_year$
7570 endif
7580 '=============================
7590 'case 0:前の画面に戻る 数秘術トップメニュー
7600 '=============================
7610 sp_on 14,0:goto Kabara_TopScreen:
7620 else
7630 'count=0
7640 '(buf_year=0) then
7650 buf_year = 0:buf_year$ = string$(4,"*")
7660 goto Input_Seireki2:
7670 'endif
7680 endif
7690 case 1:
7700 if (No = -1) then
7710 count2 = 0:count = 0
7720 buf$=right$(buf_year$,1)
7730 if (val(buf$) >= 1 and val(buf$) <= 9) then
7740 buf_year$ = "****":buf_year=0
7750 color rgb(255,255,255)
7760 locate 0,3:
7770 print "                                      "
7780 locate 2,3
7790 if ex_info$(1) <> "JP" then
7800 print "Input Born Year(4 dedgit):";buf_year$
7810 else
7820 print "生まれた年代（西暦4桁):" + buf_year$
7830 endif
7840 goto Input_Seireki2:
7850 endif
7860 else
7870 endif
7880 end select
7890 endif
7900 end
7910 'Input"生れた年代(4桁,〜2025年):",year
7920 'if year > 2025 then goto Input_Seireki:
7930 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7940 '"4桁目"
7950 'bufyear4 = fix(year / 1000)
7960 '"3桁目"
7970 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
7980 '"2桁目"
7990 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
8000 '"1桁目"
8010 'bufyear1 = fix((year - ((bufyear4*
8020 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
8030 '生れた月を入力
8040 Input_Born_Month:
8050 cls 3:play "":count=0:count2=0
8060 'No=-1:Okのとき
8070 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
8080 for i=0 to 1
8090 buf_month(i)=0
8100 next i
8110 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
8120 gload Gazo$ + "Screen2.png",0,0,0
8130 gload Gazo$ + "downscreen.png",0,0,800
8140 'Init"kb:2"
8150 if ex_info$(1) <> "JP" then
8160 else
8170 '音声ファイル再生 2023.06.07
8180 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
8190 endif
8200 font 48
8210 locate 0,1
8220 '文字色：黒　 color rgb(0,0,0)
8230 if ex_info$(1) <> "JP" then
8240 '英語パート
8250 '文字色:白
8260 color rgb(255,255,255)
8270 print "Input Born Month?(1~12):" + chr$(13)
8280 '文字色:白
8290 color rgb(255,255,255)
8300 locate 2,3
8310 '文字色:白
8320 print "Your Born Month?(1~12):";buf_Month$
8330 color rgb(255,255,255)
8340 else
8350 '日本語パート
8360 color rgb(255,255,255)
8370 print "生まれた月を入れて下さい" + chr$(13)
8380 '文字色:白
8390 color rgb(255,255,255)
8400 locate 2,3
8410 '文字色:白
8420 print "生まれた月(1月~12月):";buf_Month$
8430 color rgb(255,255,255)
8440 endif
8450 'locate 4,6:print ":7"
8460 'locate 9,6:print ":8"
8470 'locate 12,6:print ":9"
8480 'locate 4,6
8490 '文字色:赤
8500 'print ":7  :8  :9" + chr$(13)
8510 'color rgb(255,255,255)
8520 'locate 4,8
8530 'print ":4  :5  :6" + chr$(13)
8540 'color rgb(255,255,255)
8550 'locate 4,10
8560 'print ":1  :2  :3" + chr$(13)
8570 'locate 4,12
8580 'print "    :0"
8590 'locate 12,12
8600 'color rgb(255,0,0)
8610 'print ":Ok"
8620 sp_on 4,0: sp_on 5,0:sp_on 6,0
8630 sp_on 7,0:sp_on 8,0:sp_on 9,0
8640 sp_on 10,0:sp_on 11,0:sp_on 12,0
8650 sp_on 13,0:sp_on 14,1
8660 Input_Born_Month2:
8670 key$="":bg=0:y=0:y2=0:bg2=0
8680 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
8690 key$ = inkey$
8700 bg = strig(1)
8710 y = stick(1)
8720 y2 = stick(0)
8730 bg2 = strig(0)
8740 pause 5
8750 wend
8760 '十字キー　ここから
8770 '上の矢印　または、十字キー上
8780 if ((y = -1) or (key$ = chr$(30))) then
8790 select case No
8800 'No=-1:okのとき:初期の状態
8810 '0kボタンから３に移動
8820 '上に行く 処理
8830 case -1:
8840 No=3:sp_on 12,1:sp_on 14,0
8850 pause 200:goto Input_Born_Month2:
8860 '選択肢:3
8870 '3ボタンから 6に移動
8880 case 3:
8890 No=6:sp_on 12,0:sp_on 11,1
8900 pause 200:goto Input_Born_Month2:
8910 '6ボタンから ９に移動
8920 case 6:
8930 No=9:sp_on 10,1:sp_on 11,0
8940 pause 200:goto Input_Born_Month2:
8950 '6ボタンから ９に移動　ここまで
8960 '9で上を押して何もしない
8970 case 9:
8980 '何もしない
8990 No=9
9000 pause 200:goto Input_Born_Month2:
9010 '9で上を押しても何もしない　ここまで
9020 '上　 0ボタンから2ボタン
9030 'sp_on 6,1:1
9040 'sp_on 8,1:5
9050 'sp_on 7,1:7
9060 case 0:
9070 No=2:sp_on 13,0:sp_on 9,1:
9080 pause 200:goto Input_Born_Month2:
9090 '上  0ボタンから2ボタン　ここまで
9100 '2から５になる 上
9110 case 2:
9120 No=5:sp_on 8,1:sp_on 9,0:
9130 pause 200:goto Input_Born_Month2:
9140 case 5:
9150 No=8:sp_on 7,1:sp_on 8,0
9160 pause 200:goto Input_Born_Month2:
9170 case 8:
9180 pause 200:goto Input_Born_Month2:
9190 case 1:
9200 No=4:sp_on 5,1:sp_on 6,0
9210 pause 200:goto Input_Born_Month2:
9220 case 4:
9230 No=7:sp_on 4,1:sp_on 5,0
9240 pause 200:goto Input_Born_Month2:
9250 case 7:
9260 pause 200:goto Input_Born_Month2:
9270 end select
9280 endif
9290 '左３　ここまで
9300 '下の矢印
9310 '中央 2
9320 if ((y=1) or (key$ = chr$(31))) then
9330 select case No
9340 '9から６に下げる
9350 case 9:
9360 No=6:sp_on 11,1:sp_on 10,0
9370 pause 200:goto Input_Born_Month2:
9380 '6から３に下げる
9390 case 6:
9400 No=3:sp_on 12,1:sp_on 11,0
9410 pause 200:goto Input_Born_Month2:
9420 '3から０ｋに変える
9430 case 3:
9440 No=-1:sp_on 14,1:sp_on 12,0
9450 pause 200:goto Input_Born_Month2:
9460 'Okから下のボタンを押しても何もしない
9470 case -1:
9480 pause 200:goto Input_Born_Month2:
9490 case 8:
9500 No=5:sp_on 8,1:sp_on 7,0
9510 pause 200:goto Input_Born_Month2:
9520 case 5:
9530 No=2:sp_on 9,1:sp_on 8,0
9540 pause 200:goto Input_Born_Month2:
9550 case 2:
9560 No=0:sp_on 13,1:sp_on 9,0
9570 pause 200:goto Input_Born_Month2:
9580 case 0:
9590 pause 200:goto Input_Born_Month2:
9600 case 7:
9610 No=4:sp_on 5,1:sp_on 4,0
9620 pause 200:goto Input_Born_Month2:
9630 case 4:
9640 No=1:sp_on 6,1:sp_on 5,0
9650 pause 200:goto Input_Born_Month2:
9660 case 1:
9670 pause 200:goto Input_Born_Month2:
9680 end select
9690 endif
9700 '左へボタン 十字キー　左　or 　カーソル左
9710 if ((y2 = -1) or (key$ = chr$(29))) then
9720 select case No
9730 'Ok ボタン  Okから　左　０に行く
9740 case -1:
9750 No=0:sp_on 13,1:sp_on 14,0
9760 pause 200:goto Input_Born_Month2:
9770 '0 ボタン  左　何もしない
9780 case 0:
9790 pause 200:goto Input_Born_Month2:
9800 case 3:
9810 No=2:sp_on 9,1:sp_on 12,0:
9820 pause 200:goto Input_Born_Month2:
9830 case 2:
9840 No=1:sp_on 6,1:sp_on 9,0:
9850 pause 200:goto Input_Born_Month2:
9860 case 1:
9870 pause 200:goto Input_Born_Month2:
9880 case 6:
9890 No=5:sp_on 8,1:sp_on 11,0
9900 pause 200:goto Input_Born_Month2:
9910 case 5:
9920 No=4:sp_on 5,1:sp_on 8,0
9930 pause 200:goto Input_Born_Month2:
9940 case 4:
9950 pause 200:goto Input_Born_Month2:
9960 case 9:
9970 No=8:sp_on 7,1:sp_on 10,0
9980 pause 200:goto Input_Born_Month2:
9990 case 8:
10000 No=7:sp_on 4,1:sp_on 7,0
10010 pause 200:goto Input_Born_Month2:
10020 case 7:
10030 pause 200:goto Input_Born_Month2:
10040 end select
10050 endif
10060 '右  十字キー　右　or カーソル　右
10070 if ((y2 = 1) or (key$ = chr$(28))) then
10080 select case No
10090 '0ボタンからokボタン右に移動
10100 case 0:
10110 No=-1:sp_on 14,1:sp_on 13,0
10120 pause 200:goto Input_Born_Month2:
10130 '0ボタンからokボタン 右に移動　ここまで
10140 'OKボタンで右を押して何もしない
10150 case -1:
10160 pause 200:goto Input_Born_Month2:
10170 case 1:
10180 No=2:sp_on 9,1:sp_on 6,0
10190 pause 200:goto Input_Born_Month2:
10200 case 2:
10210 No=3:sp_on 12,1:sp_on 9,0
10220 pause 200:goto Input_Born_Month2:
10230 case 3:
10240 pause 200:goto Input_Born_Month2:
10250 case 4:
10260 No=5:sp_on 8,1:sp_on 5,0
10270 pause 200:goto Input_Born_Month2:
10280 case 5:
10290 No=6:sp_on 11,1:sp_on 8,0
10300 pause 200:goto Input_Born_Month2:
10310 case 7:
10320 No=8:sp_on 7,1:sp_on 4,0
10330 pause 200:goto Input_Born_Month2:
10340 case 8:
10350 No=9:sp_on 10,1:sp_on 7,0
10360 pause 200:goto Input_Born_Month2:
10370 case 9:
10380 pause 200:goto Input_Born_Month2:
10390 case 6:
10400 pause 200:goto Input_Born_Month2:
10410 end select
10420 'Okから右ボタンを押して何もしない ここまで
10430 endif
10440 '十字キー　ここまで
10450 '右の丸ボタン　決定キー
10460 if ((bg=2) or (key$=chr$(13))) then
10470 select case count
10480 case 0:
10490 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
10500 if (buf_month = 1 or buf_month = 2) then
10510 locate 2,3
10520 color RGB(255,255,255)
10530 if ex_info$(1) <> "JP" then
10540 print "Input Born Month(1~12):";buf_Month$
10550 else
10560 print "生まれた月(1月~12月):";buf_Month2$
10570 endif
10580 else
10590 locate 2,3
10600 color Rgb(255,255,255)
10610 if ex_info$(1) <> "JP" then
10620 print "Input Born Month(1~12):";buf_Month$
10630 else
10640 print "生まれた月(1月~12月):";buf_Month$
10650 endif
10660 endif
10670 goto Input_Born_Month2:
10680 case 1:
10690 count = 2:c = No
10700 c = val(buf_Month$)
10710 if (No = -1) then
10720 'if No=1 or No=2 then
10730 'endif
10740 month = buf_month
10750 buf_month=val(buf_Month$)
10760 month=buf_month
10770 '生まれた日に飛ぶ
10780 goto Input_Born_Day:
10790 else
10800 buf_month = c*10 + No
10810 buf_Month$= str$(buf_month)
10820 locate 2,3
10830 color Rgb(255,255,255)
10840 if ex_info$(1) <> "JP" then
10850 print "Input Born Month(1~12):";buf_Month$
10860 else
10870 print "生まれた月(1月~12月):";buf_Month$
10880 endif
10890 goto Input_Born_Month2:
10900 endif
10910 case 2:
10920 count=3:count2=1
10930 'c= val(buf_Month$)
10940 'buf_month = c*10 + No
10950 'buf_Month$ = str$(buf_month)
10960 'locate 2,3
10970 'print "生まれた月(1月～12月):";buf_Month$
10980 'goto Input_Born_Month2:
10990 'case 3:
11000 'count=4
11010 'b=val(buf_month$)
11020 'buf_month=c*10+No
11030 'buf_Month$=str$(buf_month)
11040 'locate 2,3
11050 'print "生まれた月(1月～12月):";buf_Month$
11060 'buf_month=val(buf_Month$)
11070 'year=val(buf_year$)
11080 if (No=-1) then
11090 goto Input_Born_Day:
11100 else
11110 'goto Input_Born_Month2:
11120 endif
11130 'case 4:
11140 'bufyear=buf_year
11150 'if (No=-1) then
11160 'buf_month = val(buf_Month$)
11170 'month = buf_month
11180 'sp_on 14,0
11190 'goto Input_Born_Day:
11200 'else
11210 'goto Input_Born_Month2:
11220 'endif
11230 end select
11240 endif
11250 '左の丸ボタン　キャンセル
11260 if (bg2=2) then
11270 select case count2
11280 case 0:
11290 if (No = -1) then
11300 buf_month=0:buf_Month$="**"
11310 count2=0:count=0
11320 locate 0,3:print "                                   "
11330 if ex_info$(1) <> "JP" then
11340 print "Input Born Month?(1~12):";buf_Month$
11350 else
11360 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
11370 endif
11380 'if (buf_month > 1) then
11390 sp_on 14,0:goto Input_Born_Month2:
11400 'goto rewrite:
11410 else
11420 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
11430 buf_month=0:buf_Month$="**"
11440 locate 2,3
11450 color rgb(255,255,255)
11460 print "                                       "
11470 goto rewrite:
11480 if (No>2) then
11490 ui_msg"値が範囲外です。"
11500 goto rewrite:
11510 endif
11520 endif
11530 'endif
11540 rewrite:
11550 locate 2,3
11560 color rgb(255,255,255)
11570 print "                                      "
11580 locate 2,3
11590 if ex_info$(1) <> "JP" then
11600 print "Input Born Month?(1~12):";buf_Month$
11610 else
11620 print "生まれた月(1月~12月):";buf_Month$
11630 endif
11640 goto Input_Born_Month2:
11650 endif
11660 case 1:
11670 buf_Month$="**":buf_month=0
11680 if No=-1 then
11690 count2=2:count=0
11700 locate 0,3
11710 print "                                      "
11720 locate 2,3:
11730 if ex_info$(1) <> "JP" then
11740 print "Input Born Month?(1~12):";buf_Month$
11750 else
11760 print "生まれた月(1月~12月):" + buf_Month$
11770 endif
11780 goto Input_Born_Month2:
11790 endif
11800 case 2:
11810 sp_on 14,0:goto Input_Seireki:
11820 end select
11830 endif
11840 'endif
11850 end
11860 'end
11870 '生れた日を入力
11880 Input_Born_Day:
11890 '生まれた日入力
11900 cls 3:play ""
11910 'No=-1:Okのとき
11920 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
11930 for i=0 to 1
11940 buf_day(i)=0
11950 next i
11960 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11970 gload Gazo$ + "Screen2.png",0,0,0
11980 gload Gazo$ + "downscreen.png",0,0,800
11990 'Init"kb:2"
12000 if ex_info$(1) <> "JP" then
12010 '英語音声パート
12020 else
12030 '日本語音声パート
12040 '音声ファイル再生 2023.06.07
12050 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
12060 endif
12070 font 48
12080 if ex_info$(1) <> "JP" then
12090 locate 0,1
12100 '文字色：黒　 color rgb(0,0,0)
12110 color rgb(255,255,255)
12120 print "Input Born day?" + chr$(13)
12130 color rgb(255,255,255)
12140 locate 2,3
12150 print "Born Day(1~31):";buf_Day$
12160 else
12170 locate 0,1
12180 '文字色：黒　 color rgb(0,0,0)
12190 color rgb(255,255,255)
12200 print "生まれた日を入れて下さい" + chr$(13)
12210 color rgb(255,255,255)
12220 locate 2,3
12230 print "生まれた日(1日~31日):";buf_Day$
12240 endif
12250 'color rgb(255,255,255)
12260 'locate 4,6:print ":7"
12270 'locate 9,6:print ":8"
12280 'locate 12,6:print ":9"
12290 'locate 4,6
12300 'print ":7  :8  :9" + chr$(13)
12310 '=======================
12320 'テンキー　色　白　決定ボタン　青
12330 '=======================
12340 'color rgb(255,255,255)
12350 'locate 4,8
12360 'print ":4  :5  :6" + chr$(13)
12370 'color rgb(255,255,255)
12380 'locate 4,10
12390 'print ":1  :2  :3" + chr$(13)
12400 'locate 4,12
12410 'print "    :0"
12420 'locate 12,12
12430 'color rgb(255,0,0)
12440 'print ":Ok"
12450 sp_on 4,0: sp_on 5,0:sp_on 6,0
12460 sp_on 7,0:sp_on 8,0:sp_on 9,0
12470 sp_on 10,0:sp_on 11,0:sp_on 12,0
12480 sp_on 13,0:sp_on 14,1
12490 Input_Born_Day2:
12500 key$="":bg=0:y=0:y2=0:bg2=0
12510 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12520 key$ = inkey$
12530 bg = strig(1)
12540 y = stick(1)
12550 y2 = stick(0)
12560 bg2 = strig(0)
12570 pause 5
12580 wend
12590 '十字キー　ここから
12600 '上の矢印　または、十字キー上
12610 if ((y = -1) or (key$ = chr$(30))) then
12620 select case No
12630 'No=-1:okのとき:初期の状態
12640 '0kボタンから３に移動
12650 '上に行く 処理
12660 case -1:
12670 No=3:sp_on 12,1:sp_on 14,0
12680 pause 200:goto Input_Born_Day2:
12690 '選択肢:3
12700 '3ボタンから 6に移動
12710 case 3:
12720 No=6:sp_on 12,0:sp_on 11,1
12730 pause 200:goto Input_Born_Day2:
12740 '6ボタンから ９に移動
12750 case 6:
12760 No=9:sp_on 10,1:sp_on 11,0
12770 pause 200:goto Input_Born_Day2:
12780 '6ボタンから ９に移動　ここまで
12790 '9で上を押して何もしない
12800 case 9:
12810 '何もしない
12820 No=9
12830 pause 200:goto Input_Born_Day2:
12840 '9で上を押しても何もしない　ここまで
12850 '上　 0ボタンから2ボタン
12860 'sp_on 6,1:1
12870 'sp_on 8,1:5
12880 'sp_on 7,1:7
12890 case 0:
12900 No=2:sp_on 13,0:sp_on 9,1:
12910 pause 200:goto Input_Born_Day2:
12920 '上  0ボタンから2ボタン　ここまで
12930 '2から５になる 上
12940 case 2:
12950 No=5:sp_on 8,1:sp_on 9,0:
12960 pause 200:goto Input_Born_Day2:
12970 case 5:
12980 No=8:sp_on 7,1:sp_on 8,0
12990 pause 200:goto Input_Born_Day2:
13000 case 8:
13010 pause 200:goto Input_Born_Day2:
13020 case 1:
13030 No=4:sp_on 5,1:sp_on 6,0
13040 pause 200:goto Input_Born_Day2:
13050 case 4:
13060 No=7:sp_on 4,1:sp_on 5,0
13070 pause 200:goto Input_Born_Day2:
13080 case 7:
13090 pause 200:goto Input_Born_Day2:
13100 end select
13110 endif
13120 '左３　ここまで
13130 '下の矢印
13140 '中央 2
13150 if ((y=1) or (key$ = chr$(31))) then
13160 select case No
13170 '9から６に下げる
13180 case 9:
13190 No=6:sp_on 11,1:sp_on 10,0
13200 pause 200:goto Input_Born_Day2:
13210 '6から３に下げる
13220 case 6:
13230 No=3:sp_on 12,1:sp_on 11,0
13240 pause 200:goto Input_Born_Day2:
13250 '3から０ｋに変える
13260 case 3:
13270 No=-1:sp_on 14,1:sp_on 12,0
13280 pause 200:goto Input_Born_Day2:
13290 'Okから下のボタンを押しても何もしない
13300 case -1:
13310 pause 200:goto Input_Born_Day2:
13320 case 8:
13330 No=5:sp_on 8,1:sp_on 7,0
13340 pause 200:goto Input_Born_Day2:
13350 case 5:
13360 No=2:sp_on 9,1:sp_on 8,0
13370 pause 200:goto Input_Born_Day2:
13380 case 2:
13390 No=0:sp_on 13,1:sp_on 9,0
13400 pause 200:goto Input_Born_Day2:
13410 case 0:
13420 pause 200:goto Input_Born_Day2:
13430 case 7:
13440 No=4:sp_on 5,1:sp_on 4,0
13450 pause 200:goto Input_Born_Day2:
13460 case 4:
13470 No=1:sp_on 6,1:sp_on 5,0
13480 pause 200:goto Input_Born_Day2:
13490 case 1:
13500 pause 200:goto Input_Born_Day2:
13510 end select
13520 endif
13530 '左へボタン 十字キー　左　or 　カーソル左
13540 if ((y2 = -1) or (key$ = chr$(29))) then
13550 select case No
13560 'Ok ボタン  Okから　左　０に行く
13570 case -1:
13580 No=0:sp_on 13,1:sp_on 14,0
13590 pause 200:goto Input_Born_Day2:
13600 '0 ボタン  左　何もしない
13610 case 0:
13620 pause 200:goto Input_Born_Day2:
13630 case 3:
13640 No=2:sp_on 9,1:sp_on 12,0:
13650 pause 200:goto Input_Born_Day2:
13660 case 2:
13670 No=1:sp_on 6,1:sp_on 9,0:
13680 pause 200:goto Input_Born_Day2:
13690 case 1:
13700 pause 200:goto Input_Born_Day2:
13710 case 6:
13720 No=5:sp_on 8,1:sp_on 11,0
13730 pause 200:goto Input_Born_Day2:
13740 case 5:
13750 No=4:sp_on 5,1:sp_on 8,0
13760 pause 200:goto Input_Born_Day2:
13770 case 4:
13780 pause 200:goto Input_Born_Day2:
13790 case 9:
13800 No=8:sp_on 7,1:sp_on 10,0
13810 pause 200:goto Input_Born_Day2:
13820 case 8:
13830 No=7:sp_on 4,1:sp_on 7,0
13840 pause 200:goto Input_Born_Day2:
13850 case 7:
13860 pause 200:goto Input_Born_Day2:
13870 end select
13880 endif
13890 '右  十字キー　右　or カーソル　右
13900 if ((y2 = 1) or (key$ = chr$(28))) then
13910 select case No
13920 '0ボタンからokボタン右に移動
13930 case 0:
13940 No=-1:sp_on 14,1:sp_on 13,0
13950 pause 200:goto Input_Born_Day2:
13960 '0ボタンからokボタン 右に移動　ここまで
13970 'OKボタンで右を押して何もしない
13980 case -1:
13990 pause 200:goto Input_Born_Day2:
14000 case 1:
14010 No=2:sp_on 9,1:sp_on 6,0
14020 pause 200:goto Input_Born_Day2:
14030 case 2:
14040 No=3:sp_on 12,1:sp_on 9,0
14050 pause 200:goto Input_Born_Day2:
14060 case 3:
14070 pause 200:goto Input_Born_Day2:
14080 case 4:
14090 No=5:sp_on 8,1:sp_on 5,0
14100 pause 200:goto Input_Born_Day2:
14110 case 5:
14120 No=6:sp_on 11,1:sp_on 8,0
14130 pause 200:goto Input_Born_Day2:
14140 case 7:
14150 No=8:sp_on 7,1:sp_on 4,0
14160 pause 200:goto Input_Born_Day2:
14170 case 8:
14180 No=9:sp_on 10,1:sp_on 7,0
14190 pause 200:goto Input_Born_Day2:
14200 case 9:
14210 pause 200:goto Input_Born_Day2:
14220 case 6:
14230 pause 200:goto Input_Born_Day2:
14240 end select
14250 'Okから右ボタンを押して何もしない ここまで
14260 endif
14270 '十字キー　ここまで
14280 '右の丸ボタンを押したとき
14290 if ((bg = 2) or (key$ = chr$(13))) then
14300 'count :決定ボタンを押した回数
14310 select case (count mod 3)
14320 '1桁目入力
14330 case 0:
14340 count = 1:
14350 if (No = -1) then
14360 '1桁目　OKでは何もしない
14370 'goto check:
14380 else
14390 'ok以外のボタンを押したとき
14400 buf_day = No:buf_Day$ = str$(No)
14410 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
14420 locate 2,3
14430 color RGB(255,255,255)
14440 if ex_info$(1) <> "JP" then
14450 print "Input Born Day(1~31):";buf_Day2$
14460 else
14470 print "生まれた日(1日~31日):";buf_Day2$
14480 endif
14490 endif
14500 check:
14510 if (No >= 1 and No <= 9) then
14520 sp_on 14,0
14530 goto Input_Born_Day2:
14540 else
14550 sp_on 14,0
14560 goto complate:
14570 endif
14580 case 1:
14590 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
14600 count = 2:
14610 'locate 2,3
14620 'color RGB(255,255,255)
14630 'print "生まれた日(1日~31日):";buf_Day$
14640 'Okボタンを押したときの処理
14650 '入力値　10未満のとき
14660 'c = buf_day
14670 if (No = -1) then
14680 'c=buf_day
14690 ' buf_day = c
14700 'buf_Day$ = str$(buf_day)
14710 '10以下のとき
14720 if (buf_day < 10) then
14730 sp_on 14,0
14740 goto complate:
14750 endif
14760 else
14770 'c = No
14780 buf_day = c * 10 + No
14790 'buf_day = c
14800 buf_Day$ =str$(buf_day)
14810 locate 2,3
14820 color Rgb(255,255,255)
14830 if ex_info$(1) <> "JP" then
14840 print "Input Born Day(1~31):";buf_Day$
14850 else
14860 print "生まれた日(1日~31日):";buf_Day$
14870 endif
14880 goto Input_Born_Day2:
14890 endif
14900 '生まれた日　2桁目の数字　or 1桁の数字 + ok
14910 case 2:
14920 count=0
14930 'c=val(buf_Day$)
14940 'buf_day=c*10+No
14950 'buf_Day$=str$(buf_day)
14960 'day=buf_day
14970 'locate 2,3
14980 'print "生まれた日(1日〜31日):";buf_Day$
14990 'No=-1:ok ボタンを押したとき
15000 if (No = -1) then
15010 if ((buf_day > 0) and (buf_day < 32)) then
15020 sp_on 14,0
15030 goto complate:
15040 else
15050 goto Input_Born_Day2:
15060 endif
15070 'Okボタン以外を押したとき
15080 else
15090 c=val(buf_Day$)
15100 buf_day = c * 10 + No
15110 buf_Day$ = str$(buf_day)
15120 locate 2,3
15130 if ex_info$(1) <> "JP" then
15140 print "Input Born Day?(1~31):";buf_Day$
15150 else
15160 print "生まれた日(1日~31日):";buf_Day$
15170 endif
15180 'goto Input_Born_Day2:
15190 endif
15200 case 3:
15210 count = 4
15220 c=val(buf_day$)
15230 buf_day = c * 10 + No
15240 buf_day$ = str$(buf_day)
15250 locate 2,3
15260 if ex_info$(1) <> "JP" then
15270 print "Input Born Day?(1~31):";buf_Day$
15280 else
15290 print "生まれた日を入れてください(1日~31日):";buf_Day$
15300 endif
15310 year = val(buf_year$)
15320 if (No = -1) then
15330 'goto Input_Born_Day:
15340 sp_on 14,0:No=0
15350 goto complate:
15360 else
15370 goto Input_Born_Month2:
15380 endif
15390 'case 4:
15400 'bufyear=buf_year
15410 'if (No=-1) then
15420 'buf_day = val(buf_day$)
15430 'bufday = buf_day
15440 'sp_on 14,0
15450 'goto complate:
15460 'else
15470 'goto Input_Born_Day2:
15480 'endif
15490 end select
15500 endif
15510 if (bg2=2) then
15520 select case count2
15530 case 0:
15540 if (No=-1) then
15550 'buf_day=0:buf_Day$="**"
15560 if (buf_day>=1 and buf_day<=31) then
15570 count=0:No=0
15580 buf_day=0:buf_Day$="**"
15590 'goto rewrite_day:
15600 else
15610 buf_day=0:buf_Day$="**"
15620 ui_msg"値が範囲外です"
15630 endif
15640 goto rewrite_day:
15650 else
15660 goto rewrite_day:
15670 endif
15680 rewrite_day:
15690 locate 2,3
15700 color rgb(255,255,255)
15710 print "                                      "
15720 locate 2,3
15730 if ex_info$(1)<>"JP" then
15740 print "Born Day(1~31):";buf_Day$
15750 else
15760 print "生まれた日(1日~31日):";buf_Day$
15770 endif
15780 goto Input_Born_Day2:
15790 end select
15800 endif
15810 '--------------------------Input_Born_Day:-------------------------------------------
15820 complate:
15830 suhiNo = buf_year + buf_month + buf_day
15840 'if (suhiNo < 1000) then
15850 a1 = fix(suhiNo / 1000)
15860 a2 = fix(suhiNo/100) - (a1 * 10)
15870 a3 = fix(suhiNo/10)-(a1*100+a2*10)
15880 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
15890 'endif
15900 bufsuhiNo = a1+a2+a3+a4
15910 recomp:
15920 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
15930 'bufsuhiNo=a6
15940 goto Kabara_Result_Screen:
15950 else
15960 a5 = fix(bufsuhiNo / 10)
15970 a6 = bufsuhiNo - a5 * 10
15980 bufsuhiNo = a6 + a5
15990 if (bufsuhiNo = 10) then
16000 bufsuhiNo=1
16010 endif
16020 goto Kabara_Result_Screen:
16030 endif
16040 Kabara_Result_Screen:
16050 cls 3:
16060 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
16070 gload Gazo$ + "downscreen.png",0,0,800
16080 init "kb:4"
16090 '
16100 play ""
16110 select case (bufsuhiNo)
16120 case 1:
16130 play Voice$ + "Result_Kabara_1_20230607.mp3"
16140 case 2:
16150 play Voice$ + "Result_Kabara_2_20231112.mp3"
16160 case 3:
16170 play Voice$ + "Result_Kabara_3_20230607.mp3"
16180 case 4:
16190 play Voice$ + "Result_Kabara_4_20230607.mp3"
16200 case 5:
16210 play Voice$ + "Result_Kabara_5_20231112.mp3"
16220 case 6:
16230 play Voice$ + "Result_Kabara_6_20230607.mp3"
16240 case 7:
16250 play Voice$ + "Result_Kabara_7_20230607.mp3"
16260 case 8:
16270 play Voice$ + "Result_Kabara_8_20230607.mp3"
16280 case 9:
16290 play Voice$ + "Result_Kabara_9_20230607.mp3"
16300 case 11:
16310 play Voice$ + "Result_Kabara_11_20230607.mp3"
16320 case 22:
16330 play Voice$ + "Result_Kabara_22_20230607.mp3"
16340 case 33:
16350 play Voice$ + "Result_Kabara_33_20230607.mp3"
16360 end select
16370 font 48
16380 key$ = "":bg = 0:bg2=0
16390 'COLOR rgb(255,255,255)
16400 'print "●診断結果"+chr$(13)
16410 locate 0,2
16420 if ex_info$(1)<>"JP" then
16430 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
16440 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
16450 locate 0,15:
16460 color rgb(255,255,255)
16470 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
16480 else
16490 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
16500 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
16510 locate 0,15:
16520 color rgb(255,255,255)
16530 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
16540 endif
16550 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16560 key$ = inkey$
16570 bg = strig(1)
16580 bg2 = strig(0)
16590 pause 200
16600 wend
16610 'Enter or JoyPad right
16620 if ((key$ = chr$(13)) or (bg = 2)) then
16630 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
16640 endif
16650 if ((bg2=2)) then
16660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
16670 endif
16680 'suhiNo1 = fix(bufsuhiNo / 10)
16690 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
16700 'bufsuhiNo = suhiNo1 + suhiNo2
16710 'goto recomp:
16720 'endif
16730 'print chr$(13)
16740 'color rgb(255,0,0)
16750 'print"トップ:エンターキー,S or s:保存"+chr$(13)
16760 'key$ = input$(1)
16770 'if key$ = chr$(13) then goto Main_Screen:
16780 '"Menu2 占いのルール"
16790 Suhi_Rule:
16800 '数秘術占いルールの表示
16810 cls 3:play "":init"kb:4"
16820 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
16830 gload Gazo$ + "downscreen.png",0,0,800
16840 'cls 3:
16850 'line (0,0) - (1500,60),rgb(0,0,255),bf
16860 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
16870 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
16880 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
16890 locate 0,2:Font 48
16900 print chr$(13) + chr$(13)
16910 color rgb(0,0,0)
16920 print "誕生日を単数変換します";chr$(13)
16930 print "数字の範囲:1~９,11,22,33";chr$(13)
16940 print "例:1973年11月22日の場合";chr$(13)
16950 print "1+9+7+3+11+22=53 ";chr$(13)
16960 print "→ 5 + 3 = 8" + chr$(13)
16970 print "故に8が数秘ナンバーになります";chr$(13)
16980 locate 0,15
16990 color rgb(255,255,255)
17000 print "ジョイパッドの右を押してください"
17010 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17020 '"key$ = input$(1)"
17030 '"if key$ = chr$(13) then goto Main_Screen:"
17040 suhi_rule_selection:
17050 bg = 0:key$ = "":bg2=0
17060 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
17070 bg = strig(1)
17080 key$ = inkey$
17090 bg2=strig(0)
17100 pause 200
17110 wend
17120 if ((bg = 2) or (key$ = chr$(13))) then
17130 pause 200:cls 4:goto Main_Screen:
17140 endif
17150 if (bg2=2) then
17160 play "":pause 200
17170 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17180 goto suhi_rule_selection:
17190 endif
17200 '2.設定
17210 '2-1.トップ画面に戻る
17220 Setting:
17230 cls 3:init"kb:4":font 48:No=0
17240 play ""
17250 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17260 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
17270 gload Gazo$ + "downscreen.png",0,0,800
17280 print chr$(13) + chr$(13) + chr$(13)
17290 color rgb(255,255,255):sp_on 0,1:
17300 print "番号を選んでください" + chr$(13)
17310 print " :1.トップ画面に戻る"+ chr$(13)
17320 print " :2.バーズアイグリッドデータリスト" + chr$(13)
17330 print " :3.未実装" + chr$(13)
17340 print " :4.未実装" + chr$(13)
17350 color rgb(0,0,0)
17360 locate 1,15:print "1.トップ画面に戻るを選択"
17370 Setting_Selection:
17380 y=0:key$="":bg=0:bg2=0
17390 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
17400 y=stick(1)
17410 key$ = inkey$
17420 bg=strig(1)
17430 bg2 = strig(0)
17440 pause 200
17450 wend
17460 if ((bg = 2) or (key$ = chr$(13))) then
17470 select case No
17480 case 0:
17490 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 3:goto Main_Screen:
17500 case 1:
17510 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto BirdsEyeGrid_Entry:
17520 end select
17530 endif
17540 if (bg2 = 2) then
17550 play "":pause 200
17560 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17570 goto Setting_Selection:
17580 endif
17590 if (y=1) or (y=-1) then
17600 select case No
17610 case 0:
17620 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:goto Setting_Selection:
17630 case else:
17640 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:pause 200:goto Setting_Selection:
17650 end select
17660 'ase else:
17670 endif
17680 '3.Help
17690 '3-1.ルールの表示
17700 '3-2.バージョン
17710 '3-3.トップに戻る
17720 Help:
17730 cls 3:Font 48:No=0
17740 play ""
17750 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
17760 gload Gazo$ + "downscreen.png",0,0,800
17770 color rgb(255,255,255)
17780 print chr$(13)+chr$(13)+chr$(13)
17790 print "番号を選んでください"+chr$(13)
17800 print " :1.ルールの表示" + chr$(13)
17810 print " :2.バージョンの表示" + chr$(13)
17820 print " :3.参考文献" + chr$(13)
17830 print " :4.トップ画面に戻る" + chr$(13)
17840 color rgb(0,0,0)
17850 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
17860 locate 1,15
17870 print "                                      "
17880 locate 1,15
17890 print "1.ルールの表示を選択"
17900 init"kb:4"
17910 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
17920 Help_Select:
17930 bg=0:key$="":y=0:bg2=0
17940 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
17950 y = stick(1)
17960 key$ = inkey$
17970 bg = strig(1)
17980 bg2 = strig(0)
17990 pause 200
18000 wend
18010 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
18020 if ((y = 1) or (key$ = chr$(31))) then
18030 select case No
18040 case 0:
18050 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
18060 case 1:
18070 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18080 case 2:
18090 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
18100 case 3:
18110 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
18120 end select
18130 endif
18140 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
18150 if ((y = -1) or (key$ = chr$(30))) then
18160 select case No
18170 case 0:
18180 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
18190 case 1:
18200 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
18210 case 2:
18220 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
18230 case 3:
18240 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18250 end select
18260 endif
18270 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
18280 if ((bg = 2) or (key$ = chr$(13))) then
18290 select case No
18300 case 0:
18310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
18320 case 1:
18330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
18340 case 2:
18350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
18360 '3:Top画面に行く
18370 case 3:
18380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
18390 end select
18400 endif
18410 if (bg2 = 2) then
18420 play "":pause 200
18430 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
18440 goto Help_Select:
18450 endif
18460 '数秘術占い　トップ画面
18470 Kabara_TopScreen:
18480 cls 3:play ""
18490 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
18500 gload Gazo$ + "downscreen.png",0,0,800
18510 play Voice$ + "KabaraTop_Selection_20230721.mp3"
18520 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
18530 init"kb:4":No=0
18540 color rgb(255,255,255)
18550 print chr$(13)+chr$(13)+chr$(13)
18560 print "番号を選んでください" + chr$(13)
18570 print " :1.数秘術占い" + chr$(13)
18580 print " :2.バーズアイグリット" + chr$(13)
18590 print " :3.相性占い" + chr$(13)
18600 print " :4.トップ画面に戻る" + chr$(13)
18610 color rgb(0,0,0)
18620 locate 1,15:print "1.数秘術占いを選択"
18630 Kabara_TopScreen2:
18640 y = 0:bg = 0:key$ = "":bg2 = 0
18650 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
18660 key$ = inkey$
18670 bg = strig(1)
18680 y = stick(1)
18690 bg2 = strig(0)
18700 pause 5
18710 wend
18720 '選択ボタン
18730 'カーソル　と　ジョイパッド　の下
18740 if ((y = 1) or (key$ = chr$(31))) then
18750 select case No
18760 case 2:
18770 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
18780 case 3:
18790 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
18800 case 0:
18810 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
18820 case 1:
18830 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
18840 end select
18850 endif
18860 'カーソル　上
18870 if ((y=-1) or (key$=chr$(30))) then
18880 select case No
18890 case 0:
18900 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
18910 case 1:
18920 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
18930 case 2:
18940 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
18950 case 3:
18960 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
18970 end select
18980 endif
18990 '決定ボタン
19000 'ジョイパッドの右　or  Enter key
19010 if ((bg = 2) or (key$ = chr$(13))) then
19020 select case No
19030 case 0:
19040 '1.数秘術占い
19050 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
19060 case 3:
19070 '4.メイン画面にいく
19080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
19090 case 1:
19100 '2.バースアイグリッド
19110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
19120 case 2:
19130 '3.相性占い
19140 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
19150 end select
19160 endif
19170 if (bg2 = 2) then
19180 play "":pause 200
19190 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
19200 goto Kabara_TopScreen2:
19210 endif
19220 '1.バースアイグリット　名入力
19230 Inputname1:
19240 cls 3:init"kb:4":font 48
19250 bg=0:key$="":y=0:No=-1:name1$="":i=1
19260 gload Gazo$ + "Selection.png",1,10,100
19270 'Line 1:☓
19280 'A:選択肢
19290 sp_def 15,(50,250),16,16
19300 'B:選択肢
19310 sp_def 16,(200,250),16,16
19320 'C:選択肢
19330 sp_def 17,(350,250),16,16
19340 'D:選択肢
19350 sp_def 18,(500,250),16,16
19360 'E:選択肢
19370 sp_def 19,(630,250),16,16
19380 'F:選択肢
19390 sp_def 20,(780,250),16,16
19400 'G:選択肢
19410 sp_def 21,(930,250),16,16
19420 'Line 2:☓
19430 'H:選択肢
19440 sp_def 22,(50,345),16,16
19450 'I:選択肢
19460 sp_def 23,(200,345),16,16
19470 'J:選択肢
19480 sp_def 24,(350,345),16,16
19490 'K:選択肢
19500 sp_def 25,(500,345),16,16
19510 'L:選択肢
19520 sp_def 26,(630,345),16,16
19530 'M:選択肢
19540 sp_def 27,(780,345),16,16
19550 'N:選択肢
19560 sp_def 28,(930,345),16,16
19570 'Line 3:☓
19580 'O:選択肢
19590 sp_def 29,(50,440),16,16
19600 'P:選択肢
19610 sp_def 30,(200,440),16,16
19620 'Q:選択肢
19630 sp_def 31,(350,440),16,16
19640 'R:選択肢
19650 sp_def 32,(500,440),16,16
19660 'S:選択肢
19670 sp_def 33,(630,440),16,16
19680 'T:選択肢
19690 sp_def 34,(780,440),16,16
19700 'U:選択肢
19710 sp_def 35,(930,440),16,16
19720 'Line 4:◯
19730 'V:選択肢
19740 sp_def 36,(50,535),16,16
19750 'W:選択肢
19760 sp_def 37,(200,535),16,16
19770 'X:選択肢
19780 sp_def 38,(350,535),16,16
19790 'Y:選択肢
19800 sp_def 39,(500,535),16,16
19810 'Z:選択肢
19820 sp_def 40,(630,535),16,16
19830 'Ok:選択肢
19840 sp_def 41,(780,535),16,16
19850 'sp_def 42,(930,535),16,16
19860 'Line 1
19870 'A
19880 sp_on 15,0
19890 'B
19900 sp_on 16,0
19910 'C
19920 sp_on 17,0
19930 'D
19940 sp_on 18,0
19950 'E
19960 sp_on 19,0
19970 'F
19980 sp_on 20,0
19990 'G
20000 sp_on 21,0
20010 'Line 1
20020 'Line 2
20030 'H
20040 sp_on 22,0
20050 'I
20060 sp_on 23,0
20070 'J
20080 sp_on 24,0
20090 'K
20100 sp_on 25,0
20110 'L
20120 sp_on 26,0
20130 'M
20140 sp_on 27,0
20150 'N
20160 sp_on 28,0
20170 'Line 2
20180 'Line 3
20190 'O
20200 sp_on 29,0
20210 'P
20220 sp_on 30,0
20230 'Q
20240 sp_on 31,0
20250 'R
20260 sp_on 32,0
20270 'S
20280 sp_on 33,0
20290 'T
20300 sp_on 34,0
20310 'U
20320 sp_on 35,0
20330 'Line 3
20340 'Line 4
20350 'V
20360 sp_on 36,0
20370 'W
20380 sp_on 37,0
20390 'X
20400 sp_on 38,0
20410 'Y
20420 sp_on 39,0
20430 'Z
20440 sp_on 40,0
20450 'Ok
20460 sp_on 41,1
20470 'Line 4
20480 'sp_on 42,1
20490 'Line 1
20500 'sp_put 15,(50,250),0,0
20510 'sp_put 16,(200,250),0,0
20520 'sp_put 17,(350,250),0,0
20530 'sp_put 18,(500,250),0,0
20540 'sp_put 19,(630,250),0,0
20550 'sp_put 20,(780,250),0,0
20560 'sp_put 21,(930,250),0,0
20570 'Line 2
20580 'sp_put 22,(50,345),0,0
20590 'sp_put 23,(200,345),0,0
20600 'sp_put 24,(350,345),0,0
20610 'sp_put 25,(500,345),0,0
20620 'sp_put 26,(630,345),0,0
20630 'sp_put 27,(780,345),0,0
20640 'sp_put 28,(930,345),0,0
20650 'Line 3
20660 'sp_put 29,(50,440),0,0
20670 'sp_put 30,(200,440),0,0
20680 'sp_put 31,(350,440),0,0
20690 'sp_put 32,(500,440),0,0
20700 'sp_put 33,(630,440),0,0
20710 'sp_put 34,(780,440),0,0
20720 'sp_put 35,(930,440),0,0
20730 'Line 4
20740 'sp_put 36,(50,535),0,0
20750 'sp_put 37,(200,535),0,0
20760 'sp_put 38,(350,535),0,0
20770 'sp_put 39,(500,535),0,0
20780 'sp_put 40,(630,535),0,0
20790 sp_put 41,(780,535),0,0
20800 'sp_put 42,(930,536),0,0
20810 gload Gazo$ + "Screen1.png",0,0,0
20820 color rgb(255,255,255)
20830 locate 1,3
20840 print "名前の姓をアルファベットで入力してください"
20850 locate 1,5
20860 print " A  B  C  D  E  F  G"
20870 locate 1,7
20880 print " H  I  J  K  L  M  N"
20890 locate 1,9
20900 print " O  P  Q  R  S  T  U"
20910 locate 1,11
20920 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
20930 locate 1,15:color rgb(0,0,0)
20940 print "名前の姓:" + name1$
20950 select_name1:
20960 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
20970 '有効ボタン
20980 '1.決定ボタン(bg:2)
20990 '2.Enter Key$:chr$(13)
21000 '3.カーソル上 (chr$(31))
21010 '4.カーソル　左 (chr$(29))
21020 '5.ジョイパッド　上 (y:1)
21030 '6:ジョイパッド　左 (y2:-1)
21040 '7:ジョイパッド　下 (y:-1)
21050 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
21060 key$ = inkey$
21070 'ジョイパッドの決定:bg
21080 bg = strig(1)
21090 y = stick(1)
21100 y2 = stick(0)
21110 pause 200
21120 wend
21130 '====================================
21140 'Birds Eye Grid 名前入力
21150 '入力スタイル　アルファベット入力
21160 'sp_on:　スプライトのオンオフ
21170 'sp_put :表示位置
21180 'No:ボタン番号
21190 '====================================
21200 'カーソルで下に行く
21210 if ((y=-1) or (key$=chr$(31))) then
21220 select case No
21230 '1.Ok ボタン
21240 'sp_on スプライトのオンオフ
21250 'sp_put スプライトを表示
21260 case -1:
21270 '1.アルファベット　入力ボタン
21280 '実装未完全なので終了
21290 'Ok → T ○ :No:20=T
21300 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21310 'T  → M ○
21320 case 20:
21330 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21340 'M  →　F ○
21350 case 13:
21360 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21370 'F  → Ok
21380 case 6:
21390 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
21400 end select
21410 endif
21420 '2.決定ボタン
21430 if ((key$ = chr$(13)) OR  (bg = 2)) then
21440 select case No
21450 case -1:
21460 'スプライトをOFFにする
21470 sp_on 41,0
21480 end select
21490 endif
21500 '3.カーソル　左
21510 if (key$ = chr$(29) or (y2 =-1)) then
21520 select case No
21530 'Line 4
21540 'Line 4
21550 '1.
21560 'Z:-1 :Ok ボタン
21570 'Ok → Z
21580 case -1:
21590 'Ok →　Z
21600 'Ok ボタン OFF,Z Button ON
21610 'No=26:Z
21620 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21630 '2.
21640 '26:Zボタン Z→ Y
21650 case 26:
21660 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21670 '3.
21680 '25:Yボタン  Y → X
21690 case 25:
21700 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21710 '4
21720 '24:Xボタン X → W
21730 case 24:
21740 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21750 '23:Wボタン X → W
21760 '5
21770 case 23:
21780 '22:Vボタン W → V
21790 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
21800 case 22:
21810 '-1:V→ Ok
21820 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
21830 'Line 3
21840 case 20:
21850 '33:T34  → S:33 :◯
21860 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21870 case 19:
21880 '32:S:33 → R:32 :◯
21890 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21900 case 18:
21910 '31:R:32 → Q:31 :◯
21920 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21930 '30:O → P :◯
21940 case 17:
21950 '30:Q:31 → P:30 :◯
21960 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
21970 case 16:
21980 '29:P:30 → O:29 :◯
21990 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
22000 case 15:
22010 '28:O:29 → U:21  :◯
22020 'O:OFF,U:ON
22030 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
22040 '27:U:21 → T:20  :◯
22050 case 21:
22060 'U:OFF:T:ON
22070 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
22080 'Line 2
22090 '26:M:13 → L:12 : ○
22100 case 13:
22110 'M:OFF,L:ON
22120 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
22130 '25:L:12 → K:11 : ○
22140 case 12:
22150 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
22160 '24:K:11 → J:10 : ○
22170 case 11:
22180 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
22190 '23:J:10 → I:9  : ○
22200 case 10:
22210 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
22220 '22:I:9 → H:8    :○
22230 case 9:
22240 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
22250 '21:H:8 → N:14:   :○
22260 case 8:
22270 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
22280 '20:N:14 → M:13:   :○
22290 case 14:
22300 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
22310 '●.Line 1:
22320 '19:F:20 → E:19 : ☓
22330 'F:OFF,E:ON
22340 case 6:
22350 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
22360 '18:E → D
22370 'E:OFF,D:ON
22380 case 5:
22390 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
22400 '17:D → C
22410 'D:OFF,C:ON
22420 case 4:
22430 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
22440 case 3:
22450 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
22460 case 2:
22470 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
22480 case 1:
22490 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
22500 case 7:
22510 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
22520 end select
22530 endif
22540 '上から下の方向
22550 if ((key$ = chr$(31)) or  (y = 1)) then
22560 select case No
22570 '●.1
22580 '1:A→H
22590 case 1:
22600 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
22610 '2:H→O
22620 case 8:
22630 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
22640 '3:O→V
22650 case 15:
22660 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
22670 '4:V→A
22680 case 22:
22690 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
22700 '●.2
22710 '5.B→I
22720 case 2:
22730 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
22740 '6.I→P
22750 case 9:
22760 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
22770 '7.P→W
22780 case 16:
22790 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
22800 '8.W→B
22810 case 23:
22820 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
22830 '●.3
22840 '9.C→J
22850 case 3:
22860 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
22870 '10.J→Q
22880 case 10:
22890 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
22900 '11.Q→X
22910 case 17:
22920 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
22930 '12.X→C
22940 case 24:
22950 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
22960 '●.4
22970 '13.D→K
22980 case 4:
22990 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
23000 '14.K→R
23010 case 11:
23020 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
23030 '15.R→Y
23040 case 18:
23050 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
23060 '16.Y→D
23070 case 25:
23080 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
23090 '●.5
23100 '17.E→L
23110 case 5:
23120 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
23130 '18.L→S
23140 case 12:
23150 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
23160 '19.S→Z
23170 case 19:
23180 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
23190 '20.Z→E
23200 case 26:
23210 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
23220 '●.6
23230 '21.F→M
23240 case 6:
23250 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
23260 '22.M→T
23270 case 13:
23280 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
23290 '23.T→Ok
23300 case 20:
23310 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
23320 '24.Ok→F
23330 case -1:
23340 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
23350 '●.7
23360 '25.G→N
23370 case 7:
23380 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
23390 '26.N→U
23400 case 14:
23410 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
23420 '27.U→G
23430 case 21:
23440 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
23450 end select
23460 endif
23470 '決定ボタン　で名前の姓に文字を追加。
23480 if (key$ = chr$(13) or bg = 2) then
23490 select case No
23500 'Okボタン
23510 case -1:
23520 goto Inputname2:
23530 'Aの文字
23540 case 1:
23550 'if len(n$)=0 then
23560 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
23570 'else
23580 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
23590 'endif
23600 goto select_name1:
23610 case 2:
23620 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
23630 end select
23640 endif
23650 Input_name1_Birdseye:
23660 cls 3:init "kb:2":play ""
23670 gload Gazo$ + "Input_Birtheye2.png",0,0,0
23680 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
23690 color rgb(255,255,255)
23700 locate 1,2:print "名前をアルファベットで入れてください"
23710 color rgb(0,0,0)
23720 locate 1,5:Input "名前（姓の部分）:",name1$
23730 '27.U→G
23740 'locate 1,5:print "Hit any key"
23750 n1 = len(name1$)
23760 if (n1 < 11) then
23770 for i=1 to n1
23780 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
23790 next i
23800 endif
23810 goto Inputname2:
23820 '2.グリッドアイ　姓の入力
23830 'end
23840 Inputname2:
23850 cls 3:init"kb:2":font 48:play ""
23860 gload Gazo$ + "Input_Birtheye1.png",0,0,0
23870 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
23880 color rgb(255,255,255)
23890 locate 1,2:print "名前をアルファベットで入れてください"
23900 color rgb(0,0,0)
23910 locate 1,5:Input "名前(名の部分):",name2$
23920 n2 = len(name2$)
23930 for i=1 to n2
23940 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
23950 next i
23960 '計算領域
23970 Complate:
23980 'name1
23990 for i=0 to 25
24000 for n=1 to len(name1$)
24010 if (buf_chart$(i,0) = buf_name1$(n-1)) then
24020 b = val(buf_chart$(i,1))
24030 buffer(b-1) = buffer(b-1) + 1
24040 endif
24050 next n
24060 next i
24070 'name2
24080 for i=0 to 25
24090 for n=1 to len(name2$)
24100 if (buf_chart$(i,0) = buf_name2$(n-1)) then
24110 c = val(buf_chart$(i,1))
24120 buffer(c - 1) = buffer(c - 1) + 1
24130 endif
24140 next n
24150 next i
24160 '結果表示領域
24170 Result_Birtheye1:
24180 cls 3:init"kb:4":No=0:play "":'音を止める
24190 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
24200 gload Gazo$ + "downscreen.png",0,0,800
24210 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
24220 color rgb(255,255,255)
24230 '1の表示
24240 locate 3,14:print buffer(0);
24250 '2の表示
24260 locate 3,9:print buffer(1);
24270 '3の表示
24280 locate 3,5:print buffer(2);
24290 '4の表示
24300 locate 10,14:print buffer(3);
24310 '5の表示
24320 locate 10,9:print buffer(4);
24330 '6の表示
24340 locate 10,5:print buffer(5);
24350 '7の表示
24360 locate 15,14:print buffer(6);
24370 '8の表示
24380 locate 15,9:print buffer(7);
24390 '9の表示
24400 locate 15,5:print buffer(8);
24410 'name を大文字に変換
24420 locate 5,3:print ucase$(name1$ + name2$)
24430 color rgb(0,0,0)
24440 'bg:右のボタン  ,bg2:左のボタン
24450 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
24460 bg=0:key$="":bg2=0
24470 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
24480 'Enterと決定ボタン
24490 key$ = inkey$
24500 '右ボタン:1
24510 bg = strig(1)
24520 '左の丸ボタン:0
24530 bg2=strig(0)
24540 pause 200
24550 wend
24560 if ((bg=2) or (key$=chr$(13))) then
24570 'データーをクリアしてトップ画面に行く
24580 'for i=0 to 8
24590 'buffer(i)=0
24600 'next i
24610 'for n=0 to 9
24620 'buf_name1$(n) = ""
24630 'buf_name2$(n) = ""
24640 'next n
24650 'Topに行く
24660 'goto Main_Screen:
24670 'メニューを開く
24680 'goto BirdsEye_Result2:
24690 'Menu(ui_select) リストに飛ぶ
24700 goto Result_Birtheye_List1:
24710 endif
24720 if (bg2=2) then
24730 'データーをクリアする
24740 for i=0 to 8
24750 buffer(i)=0
24760 next i
24770 for n=0 to 9
24780 buf_name1$(n)=""
24790 buf_name2$(n)=""
24800 next n
24810 goto Main_Screen:
24820 endif
24830 'goto Result_Birtheye1:
24840 'Result_Birtheye2:
24850 'cls 3:color rgb(255,255,255)
24860 'end
24870 'Memory 消去
24880 '
24890 '横のフォーカスライン
24900 BirdsEye_Result2:
24910 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
24920 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
24930 Forcus1_buffer$(2)="○"
24940 else
24950 Forcus1_buffer$(2)="☓"
24960 endif
24970 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
24980 Forcus1_buffer$(1)="○"
24990 else
25000 Forcus1_buffer$(1) = "☓"
25010 endif
25020 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
25030 Forcus1_buffer$(0)="○"
25040 else
25050 Forcus1_buffer$(0)="☓"
25060 endif
25070 gload Gazo$ + "Screen1.png",0,0,0
25080 color rgb(255,0,0):
25090 locate 1,1
25100 print "バーズアイグリッド(フォーカスライン1)"
25110 color rgb(255,255,255)
25120 locate 1,3:
25130 print "●.横のフォーカスライン"
25140 locate 1,5
25150 print "1.切れ者ライン:"+Forcus1_buffer$(2)
25160 locate 1,7
25170 print "2.調停者ライン:"+Forcus1_buffer$(1)
25180 locate 1,9
25190 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
25200 color rgb(0,0,0)
25210 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
25220 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
25230 key$ = inkey$
25240 bg = strig(1)
25250 bg2 = strig(0)
25260 pause 200
25270 wend
25280 if ((bg=2) or (key$=chr$(13))) then
25290 goto BirdsEye_Result3:
25300 endif
25310 if (bg2=2) then
25320 for i=0 to 8
25330 buffer(i)=0
25340 next i
25350 goto Main_Screen:
25360 endif
25370 BirdsEye_Result3:
25380 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
25390 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
25400 Forcus2_buffer$(2)="○"
25410 else
25420 Forcus2_buffer$(2)="☓"
25430 endif
25440 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
25450 Forcus2_buffer$(1)="○"
25460 else
25470 Forcus2_buffer$(1) = "☓"
25480 endif
25490 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
25500 Forcus2_buffer$(0)="○"
25510 else
25520 Forcus2_buffer$(0)="☓"
25530 endif
25540 gload Gazo$ + "Screen1.png",0,0,0
25550 color rgb(255,0,0):
25560 locate 1,1
25570 print "バーズアイグリッド(フォーカスライン2)"
25580 color rgb(255,255,255)
25590 locate 1,3
25600 print "●.縦のフォーカスライン"
25610 locate 1,5
25620 print "1.表現者ライン:" + Forcus2_buffer$(2)
25630 locate 1,7
25640 print "2.司令塔ライン:" + Forcus2_buffer$(1)
25650 locate 1,9
25660 print "3.指導者ライン:" + Forcus2_buffer$(0)
25670 color rgb(0,0,0)
25680 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
25690 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
25700 key$ = inkey$
25710 bg = strig(1)
25720 bg2 = strig(0)
25730 pause 200
25740 wend
25750 if ((bg = 2) or (key$ = chr$(13))) then
25760 goto BirdsEye_Result4:
25770 endif
25780 if (bg2=2) then
25790 for i=0 to 8
25800 buffer(i)=0
25810 next i
25820 goto Main_Screen:
25830 endif
25840 BirdsEye_Result4:
25850 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
25860 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
25870 Forcus3_buffer$(1) = "○"
25880 else
25890 Forcus3_buffer$(1) = "☓"
25900 endif
25910 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
25920 Forcus3_buffer$(0) = "○"
25930 else
25940 Forcus3_buffer$(0) = "☓"
25950 endif
25960 gload Gazo$ + "Screen1.png",0,0,0
25970 color rgb(255,0,0):
25980 locate 1,1
25990 print "バーズアイグリッド(フォーカスライン3)"
26000 color rgb(255,255,255)
26010 locate 1,3:
26020 print "●.斜めのフォーカスライン"
26030 locate 1,5
26040 print "1.成功者ライン:"+Forcus3_buffer$(1)
26050 locate 1,7
26060 print "2.セレブライン:"+Forcus3_buffer$(0)
26070 color rgb(0,0,0)
26080 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
26090 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
26100 key$ = inkey$
26110 bg = strig(1)
26120 bg2 = strig(0)
26130 pause 200
26140 wend
26150 if ((bg=2) or (key$=chr$(13))) then
26160 goto Result_Birtheye1:
26170 endif
26180 if (bg2=2) then
26190 'データークリア
26200 for i=0 to 8
26210 buffer(i) = 0
26220 next i
26230 goto Main_Screen:
26240 endif
26250 References1:
26260 cls 3:key$ = "":bg = 0:play "":font 48-16
26270 gload Gazo$ + "Reference1_20230703.png",0,0,0
26280 gload Gazo$ + "downscreen.png",0,0,800
26290 print chr$(13)+chr$(13)+chr$(13)
26300 color rgb(0,0,0)
26310 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
26320 print "Author:carol Adrinne,PhD"+chr$(13)
26330 print "出版社:幻冬舎" + chr$(13)
26340 print "HP:www.carolAdrienne.jp/"+chr$(13)
26350 print "ISBN:978-4-344-01394-0"+chr$(13)
26360 print "定価:1500円 + 税"+chr$(13)
26370 color rgb(255,255,255)
26380 locate 1,23
26390 print "ジョイパッド右：次へ"
26400 while (key$ <> chr$(13) and bg <> 2)
26410 bg = strig(1)
26420 key$ = inkey$
26430 pause 200
26440 wend
26450 '
26460 if ((bg = 2) or (key$ = chr$(13))) then
26470 pause 200:goto References2:
26480 endif
26490 'ユダヤの秘儀 カバラ大占術
26500 References2:
26510 cls 3:play "":bg = 0:key$ = ""
26520 gload Gazo$ + "Reference2_20230703.png",0,0,0
26530 gload Gazo$ + "downscreen.png",0,0,800
26540 '参考文献２
26550 'カバラ大占術
26560 print chr$(13) + chr$(13) + chr$(13)
26570 color  rgb(0,0,0):font 48-16
26580 locate 1,3
26590 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
26600 print "著者：浅野　八郎" + chr$(13)
26610 print "出版社:NON BOOK" + chr$(13)
26620 print "ISBN:4-396-10364-6" + chr$(13)
26630 print "定価:829円 + 税"
26640 color rgb(255,255,255)
26650 locate 1,23
26660 print "ジョイパッド右：トップへ行く"
26670 while ((key$ <> chr$(13)) and (bg <> 2))
26680 bg = strig(1)
26690 key$ = inkey$
26700 pause 200
26710 wend
26720 if ((bg = 2) or (key$ = chr$(13))) then
26730 pause 200:goto Main_Screen:
26740 endif
26750 end
26760 '1.数秘術　トップ画面
26770 Kabara_First_Top:
26780 cls 3:color rgb(255,255,255):play ""
26790 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
26800 gload Gazo$ + "downscreen.png",0,0,800
26810 No=0:init"kb:4"
26820 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
26830 print chr$(13);chr$(13)
26840 color rgb(255,255,255)
26850 locate 3,4:No=0
26860 print "番号選んでください" + chr$(13)
26870 print " :1.数秘術占い" + chr$(13)
26880 print " :2.トップ画面に戻る" + chr$(13)
26890 color rgb(0,0,0)
26900 sp_on 0,1
26910 locate 1,15:print "1.数秘術番号を求めるを選択"
26920 'KeyBord:true
26930 'Joy Pad:true
26940 '上、下:true
26950 '
26960 'ｂｇ：決定ボタン
26970 'カーソル　上
26980 'カーソル　下
26990 Kabara_First_Top2:
27000 key$ = "":bg = 0:y = 0:
27010 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
27020 key$ = inkey$
27030 bg = strig(1)
27040 y = stick(1)
27050 'PauseでCPUを休める
27060 pause 5
27070 wend
27080 '1.カーソル　下 処理 chr$(31)
27090 'カーソル　下
27100 if ((key$ = chr$(31)) or (y = 1)) then
27110 select case No
27120 '
27130 case 1:
27140 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
27150 case 0:
27160 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
27170 'case 2:
27180 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
27190 end select
27200 endif
27210 '2.カーソル　上 処理 chr$(30)
27220 if ((key$ = chr$(30)) or (y = -1)) then
27230 select case No
27240 case 0:
27250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
27260 case 1:
27270 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
27280 'case 2:
27290 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
27300 end select
27310 endif
27320 '3.決定 処理  bg:2 or Enter key:chr$(13)
27330 if ((bg = 2) or (key$ = chr$(13))) then
27340 select case No
27350 case 0:
27360 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
27370 goto Kabara_TopScreen:
27380 'case 1:
27390 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
27400 case 1:
27410 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
27420 end select
27430 endif
27440 '
27450 'Kabara 相性占い トップ画面
27460 Kabara_Aishou_Top:
27470 cls 3:y=0:key$="":bg=0:No=0
27480 play ""
27490 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
27500 gload Gazo$ + "downscreen.png",0,0,800
27510 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
27520 print chr$(13) + chr$(13)
27530 locate 0,4:color rgb(255,255,255)
27540 'print "Ok"
27550 '
27560 print "番号を選んでください" + chr$(13)
27570 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
27580 print " :2.ビジネスの相性占い" + chr$(13)
27590 print " :3.トップ画面に戻る" + chr$(13)
27600 sp_on 0,1:sp_on 1,0:sp_on 2,0
27610 color rgb(0,0,0)
27620 locate 1,15:print "1.男女2人の相性占いを選択"
27630 Kabara_Aishou_Top2:
27640 key$ = "":y = 0:bg = 0:
27650 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
27660 'ジョイパッド(右) ,十字キー (上下)
27670 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
27680 y = stick(1)
27690 key$ = inkey$
27700 bg = strig(1)
27710 pause 200
27720 wend
27730 'カーソル　下 or 十字キー　下
27740 if ((key$ = chr$(31)) or (y = 1)) then
27750 select case No
27760 '選択肢　1 - 2に変更
27770 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
27780 'ok
27790 case 0:
27800 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
27810 '選択肢　2 - 3に変更
27820 case 1:
27830 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
27840 'リリース時 case 2コメント解除
27850 case 2:
27860 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
27870 case else:
27880 goto Kabara_Aishou_Top2:
27890 end select
27900 endif
27910 '十字キー　上　、カーソル　上
27920 if ((key$ = chr$(30)) or (y = -1)) then
27930 select case No
27940 case 0:
27950 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
27960 case 1:
27970 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
27980 case 2:
27990 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
28000 case else:
28010 goto Kabara_Aishou_Top2:
28020 end select
28030 endif
28040 '十字キー　上下:選択
28050 'ジョイパッド 右:決定
28060 if ((bg = 2) or (key$ = chr$(13))) then
28070 select case No
28080 '1.男女の相性
28090 case 0:
28100 '男女の相性占い(未実装)トップ画面に飛ぶ
28110 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
28120 '2ビジネスの相性
28130 case 1:
28140 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
28150 case 2:
28160 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
28170 end select
28180 endif
28190 '0.男女の相性　トップ画面　ここから
28200 Danjyo_Aisyou_Top:
28210 cls 3:y=0:key$="":bg=0:No=0
28220 play ""
28230 gload Gazo$ + "Screen1.png",0,0,0
28240 gload Gazo$ + "downscreen.png",0,0,800
28250 print chr$(13) + chr$(13)
28260 locate 0,4:color rgb(255,255,255)
28270 'print "Ok"
28280 '
28290 print "番号を選んでください" + chr$(13)
28300 print " :1.自分と異性の相性(未実装)" + chr$(13)
28310 print " :2.男女2人の相性" + chr$(13)
28320 print " :3.トップ画面に戻る" + chr$(13)
28330 sp_on 0,1:sp_on 1,0:sp_on 2,0
28340 color rgb(0,0,0)
28350 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
28360 Danjyo_Aisyou_Top2:
28370 key$ = "":y = 0:bg = 0:
28380 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
28390 'ジョイパッド(右) ,十字キー (上下)
28400 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
28410 y = stick(1)
28420 key$ = inkey$
28430 bg = strig(1)
28440 pause 200
28450 wend
28460 'カーソル　下 or 十字キー　下
28470 if ((key$ = chr$(31)) or (y = 1)) then
28480 select case No
28490 '選択肢　1 - 2に変更
28500 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
28510 'ok
28520 case 0:
28530 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
28540 '選択肢　2 - 3に変更
28550 case 1:
28560 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
28570 'リリース時 case 2コメント解除
28580 case 2:
28590 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
28600 case else:
28610 goto Kabara_Aishou_Top2:
28620 end select
28630 endif
28640 '十字キー　上　、カーソル　上
28650 if ((key$ = chr$(30)) or (y = -1)) then
28660 select case No
28670 case 0:
28680 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
28690 case 1:
28700 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
28710 case 2:
28720 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
28730 case else:
28740 goto Kabara_Aishou_Top2:
28750 end select
28760 endif
28770 '十字キー　上下:選択
28780 'ジョイパッド 右:決定
28790 if ((bg = 2) or (key$ = chr$(13))) then
28800 select case No
28810 '1.自分と異性の相性
28820 case 0:
28830 '未実装
28840 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
28850 '2男女の相性 男性の名前入力に飛ぶ
28860 case 1:
28870 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
28880 case 2:
28890 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
28900 end select
28910 endif
28920 '0.男女の相性　トップ画面　ここまで
28930 '1.男女の相性 ここから
28940 '1-1.男性の名前を入力
28950 Danjyo_Aisyou_Input_Name_male:
28960 No=0:color RGB(255,255,255)
28970 '入力:キーボード
28980 cls 3:init "kb:2"
28990 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
29000 gload Gazo$ + "downscreen.png",0,0,800
29010 for i=0 to 3
29020 buf_male_year(i)=0
29030 next i
29040 play "":color rgb(255,0,0):male_name$ = ""
29050 locate 0,1
29060 print "男性の相性" + chr$(13) + chr$(13)
29070 color rgb(255,255,255):
29080 locate 0,3
29090 print "男性の相性を求めます。男性の名前を" + chr$(13)
29100 print "入れてください" + chr$(13)
29110 locate 0,15:color rgb(0,0,0)
29120 Input "男性の名前:",male_name$
29130 '-------------------------------------------
29140 '1-2:男性の生まれた年代
29150 Danjyo_Aisyou_Input_Born_Year:
29160 No=0:color RGB(255,255,255)
29170 cls 3:init "kb:4"
29180 gload Gazo$ + "Screen1.png",0,0,0
29190 gload Gazo$ + "downscreen.png",0,0,800
29200 play "":color rgb(255,0,0)
29210 '-------------------------------------------
29220 font 48
29230 locate 0,1
29240 '文字色：黒　 color rgb(0,0,0)
29250 color rgb(255,255,255)
29260 print "男性の生まれた年代を入れて下さい" + chr$(13)
29270 color rgb(255,255,255)
29280 locate 1,3
29290 print "男性の生まれた年代(西暦4桁):";buf_male_year$
29300 color rgb(255,255,255)
29310 'locate 4,6:print ":7"
29320 'locate 9,6:print ":8"
29330 'locate 12,6:print ":9"
29340 locate 4,6
29350 print ":7  :8  :9" + chr$(13)
29360 color rgb(255,255,255)
29370 locate 4,8
29380 print ":4  :5  :6" + chr$(13)
29390 color rgb(255,255,255)
29400 locate 4,10
29410 print ":1  :2  :3" + chr$(13)
29420 locate 4,12
29430 print "    :0"
29440 locate 12,12
29450 color rgb(0,0,255)
29460 print ":Ok"
29470 sp_on 4,0: sp_on 5,0:sp_on 6,0
29480 sp_on 7,0:sp_on 8,0:sp_on 9,0
29490 sp_on 10,0:sp_on 11,0:sp_on 12,0
29500 sp_on 13,0:sp_on 14,1
29510 '-------------------------------------------------------------------------------------
29520 Danjyo_Aisyou_Input_Male_Born_Year2:
29530 key$="":bg=0:y=0:y2=0:bg2=0:
29540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
29550 key$ = inkey$
29560 bg = strig(1)
29570 y = stick(1)
29580 y2 = stick(0)
29590 bg2=strig(0)
29600 pause 200
29610 wend
29620 '十字キー　ここから
29630 '上の矢印　または、十字キー上
29640 if ((y = -1) or (key$ = chr$(30))) then
29650 select case No
29660 'No=-1:okのとき:初期の状態
29670 '0kボタンから３に移動
29680 '上に行く 処理
29690 case -1:
29700 No=3:sp_on 12,1:sp_on 14,0
29710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29720 '選択肢:3
29730 '3ボタンから 6に移動
29740 case 3:
29750 No=6:sp_on 12,0:sp_on 11,1
29760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29770 '6ボタンから ９に移動
29780 case 6:
29790 No=9:sp_on 10,1:sp_on 11,0
29800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29810 '6ボタンから ９に移動　ここまで
29820 '9で上を押して何もしない
29830 case 9:
29840 '何もしない
29850 No=9
29860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29870 '9で上を押しても何もしない　ここまで
29880 '上　 0ボタンから2ボタン
29890 'sp_on 6,1:1
29900 'sp_on 8,1:5
29910 'sp_on 7,1:7
29920 case 0:
29930 No=2:sp_on 13,0:sp_on 9,1:
29940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29950 '上  0ボタンから2ボタン　ここまで
29960 '2から５になる 上
29970 case 2:
29980 No=5:sp_on 8,1:sp_on 9,0:
29990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30000 case 5:
30010 No=8:sp_on 7,1:sp_on 8,0
30020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30030 case 8:
30040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30050 case 1:
30060 No=4:sp_on 5,1:sp_on 6,0
30070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30080 case 4:
30090 No=7:sp_on 4,1:sp_on 5,0
30100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30110 case 7:
30120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30130 end select
30140 endif
30150 '左３　ここまで
30160 '下の矢印
30170 '中央 2
30180 if ((y=1) or (key$ = chr$(31))) then
30190 select case No
30200 '9から６に下げる
30210 case 9:
30220 No=6:sp_on 11,1:sp_on 10,0
30230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30240 '6から３に下げる
30250 case 6:
30260 No=3:sp_on 12,1:sp_on 11,0
30270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30280 '3から０ｋに変える
30290 case 3:
30300 No=-1:sp_on 14,1:sp_on 12,0
30310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30320 'Okから下のボタンを押しても何もしない
30330 case -1:
30340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30350 case 8:
30360 No=5:sp_on 8,1:sp_on 7,0
30370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30380 case 5:
30390 No=2:sp_on 9,1:sp_on 8,0
30400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30410 case 2:
30420 No=0:sp_on 13,1:sp_on 9,0
30430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30440 case 0:
30450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30460 case 7:
30470 No=4:sp_on 5,1:sp_on 4,0
30480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30490 case 4:
30500 No=1:sp_on 6,1:sp_on 5,0
30510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30520 case 1:
30530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30540 end select
30550 endif
30560 '左へボタン 十字キー　左　or 　カーソル左
30570 if ((y2 = -1) or (key$ = chr$(29))) then
30580 select case No
30590 'Ok ボタン  Okから　左　０に行く
30600 case -1:
30610 No=0:sp_on 13,1:sp_on 14,0
30620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30630 '0 ボタン  左　何もしない
30640 case 0:
30650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30660 case 3:
30670 No=2:sp_on 9,1:sp_on 12,0:
30680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30690 case 2:
30700 No=1:sp_on 6,1:sp_on 9,0:
30710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30720 case 1:
30730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30740 case 6:
30750 No=5:sp_on 8,1:sp_on 11,0
30760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30770 case 5:
30780 No=4:sp_on 5,1:sp_on 8,0
30790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30800 case 4:
30810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30820 case 9:
30830 No=8:sp_on 7,1:sp_on 10,0
30840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30850 case 8:
30860 No=7:sp_on 4,1:sp_on 7,0
30870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30880 case 7:
30890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30900 end select
30910 endif
30920 '右  十字キー　右　or カーソル　右
30930 if ((y2 = 1) or (key$ = chr$(28))) then
30940 select case No
30950 '0ボタンからokボタン右に移動
30960 case 0:
30970 No=-1:sp_on 14,1:sp_on 13,0
30980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30990 '0ボタンからokボタン 右に移動　ここまで
31000 'OKボタンで右を押して何もしない
31010 case -1:
31020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31030 case 1:
31040 No=2:sp_on 9,1:sp_on 6,0
31050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31060 case 2:
31070 No=3:sp_on 12,1:sp_on 9,0
31080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31090 case 3:
31100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31110 case 4:
31120 No=5:sp_on 8,1:sp_on 5,0
31130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31140 case 5:
31150 No=6:sp_on 11,1:sp_on 8,0
31160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31170 case 7:
31180 No=8:sp_on 7,1:sp_on 4,0
31190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31200 case 8:
31210 No=9:sp_on 10,1:sp_on 7,0
31220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31230 case 9:
31240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31250 case 6:
31260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31270 end select
31280 'Okから右ボタンを押して何もしない ここまで
31290 endif
31300 '十字キー　ここまで
31310 '==============================
31320 'ここから
31330 '==============================
31340 if ((bg = 2) or (key$ = chr$(13))) then
31350 select case count
31360 case 0:
31370 count = 1
31380 if (No = -1) then
31390 count = 0:No=0
31400 buf_male_year(0) = No
31410 'Okボタンを押したとき
31420 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31430 else
31440 'Okボタン以外が押されたとき
31450 if (No >= 1 and No <= 2) then
31460 buf_year$="":buf_year$ = str$(No) + "***"
31470 buf_year = No:a= No
31480 buf_Jyoushi_Born_Day(0) = No
31490 locate 1,3
31500 color rgb(255,255,255)
31510 print "男性の生まれた年代(西暦4桁):";buf_year$
31520 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31530 else
31540 count=0
31550 ui_msg"数字が範囲外になります。"
31560 buf_year$="":buf_year=0
31570 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31580 endif
31590 endif
31600 case 1:
31610 count = 2
31620 if (No = -1) then
31630 count = 1
31640 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31650 else
31660 buf_year = a * 10 + No
31670 b=buf_year
31680 buf_year$ = str$(buf_year) + "**"
31690 buf_male_year(0)=buf_year
31700 locate 1,3
31710 color rgb(255,255,255)
31720 print "                                                                "
31730 locate 1,3
31740 print "男性の生まれた年代(西暦4桁):" + buf_year$
31750 'if (No = -1) then
31760 'count=1
31770 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31780 endif
31790 case 2:
31800 count=3
31810 if (No=-1) then
31820 count =2
31830 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31840 else
31850 buf_year = b * 10 + No
31860 c=buf_year
31870 buf_year$ = str$(buf_year) + "*"
31880 buf_male_year(0) = buf_year
31890 locate 1,3
31900 color rgb(255,255,255)
31910 print "                                        "
31920 locate 1,3
31930 print "男性の生まれた年代(西暦4桁):";buf_year$
31940 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31950 endif
31960 case 3:
31970 count=4
31980 if (No = -1) then
31990 No=0
32000 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32010 else
32020 buf_year = c * 10 + No
32030 buf_year$ = str$(buf_year)
32040 buf_male_year(0) = buf_year
32050 locate 1,3
32060 color RGB(255,255,255)
32070 print "                                      "
32080 locate 1,3
32090 print "男性の生まれた年代(西暦4桁):";buf_year$
32100 buf_year=val(buf_year$)
32110 'year=val(buf_year$)
32120 'if (No=-1) then
32130 'goto Input_Born_Month:
32140 'else
32150 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32160 endif
32170 case 4:
32180 'bufyear=buf_year
32190 if (No=-1) then
32200 buf_year = val(buf_year$)
32210 buf_male_year(0)=buf_year
32220 sp_on 14,0:No=0
32230 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32240 else
32250 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32260 endif
32270 end select
32280 endif
32290 '===========================
32300 'ここまでを部下のところにコピーする.
32310 '===========================
32320 if (bg2 = 2) then
32330 select case count2
32340 case 0:
32350 if (No = -1) then
32360 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
32370 count=0
32380 locate 1,3
32390 color rgb(255,255,255)
32400 print "                                      "
32410 locate 1,3
32420 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
32430 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32440 else
32450 '(buf_year=0) then
32460 buf_male_year=0:buf_male_year$="****"
32470 locate 1,3
32480 print "                                       "
32490 locate 1,3
32500 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
32510 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32520 'endif
32530 endif
32540 end select
32550 endif
32560 '-------生まれた年代　男性-------------
32570 '-------生まれた月　男性-------------
32580 '1-2:男性の生まれた月
32590 Danjyo_Aisyou_Input_Male_Born_Month:
32600 cls 3:play "":count=0:count2=0
32610 'No=-1:Okのとき
32620 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
32630 for i=0 to 1
32640 buf_male_month(i)=0
32650 next i
32660 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
32670 gload Gazo$ + "Screen1.png",0,0,0
32680 gload Gazo$ + "downscreen.png",0,0,800
32690 'Init"kb:4"
32700 '音声ファイル再生 2023.06.07
32710 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
32720 font 48
32730 locate 0,1
32740 '文字色：黒　 color rgb(0,0,0)
32750 '文字色:白
32760 color rgb(255,255,255)
32770 print "男性の生まれた月を入れて下さい" + chr$(13)
32780 '文字色:白
32790 color rgb(255,255,255)
32800 locate 1,3
32810 '文字色:白
32820 print "男性の生まれた月(1月~12月):"+buf_male_Month$
32830 color rgb(255,255,255)
32840 'locate 4,6:print ":7"
32850 'locate 9,6:print ":8"
32860 'locate 12,6:print ":9"
32870 locate 4,6
32880 '文字色:赤
32890 print ":7  :8  :9" + chr$(13)
32900 color rgb(255,255,255)
32910 locate 4,8
32920 print ":4  :5  :6" + chr$(13)
32930 color rgb(255,255,255)
32940 locate 4,10
32950 print ":1  :2  :3" + chr$(13)
32960 locate 4,12
32970 print "    :0"
32980 locate 12,12
32990 color rgb(0,0,255)
33000 print ":Ok"
33010 sp_on 4,0: sp_on 5,0:sp_on 6,0
33020 sp_on 7,0:sp_on 8,0:sp_on 9,0
33030 sp_on 10,0:sp_on 11,0:sp_on 12,0
33040 sp_on 13,0:sp_on 14,1
33050 '----------------------------------------------------------------------------------------
33060 Danjyo_Aisyou_Input_Male_Born_Month2:
33070 key$="":bg=0:y=0:y2=0:bg2=0
33080 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33090 key$ = inkey$
33100 bg = strig(1)
33110 y = stick(1)
33120 y2 = stick(0)
33130 bg2 = strig(0)
33140 pause 5
33150 wend
33160 '十字キー　ここから
33170 '上の矢印　または、十字キー上
33180 if ((y = -1) or (key$ = chr$(30))) then
33190 select case No
33200 'No=-1:okのとき:初期の状態
33210 '0kボタンから３に移動
33220 '上に行く 処理
33230 case -1:
33240 No=3:sp_on 12,1:sp_on 14,0
33250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33260 '選択肢:3
33270 '3ボタンから 6に移動
33280 case 3:
33290 No=6:sp_on 12,0:sp_on 11,1
33300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33310 '6ボタンから ９に移動
33320 case 6:
33330 No=9:sp_on 10,1:sp_on 11,0
33340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33350 '6ボタンから ９に移動　ここまで
33360 '9で上を押して何もしない
33370 case 9:
33380 '何もしない
33390 No=9
33400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33410 '9で上を押しても何もしない　ここまで
33420 '上　 0ボタンから2ボタン
33430 'sp_on 6,1:1
33440 'sp_on 8,1:5
33450 'sp_on 7,1:7
33460 case 0:
33470 No=2:sp_on 13,0:sp_on 9,1:
33480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33490 '上  0ボタンから2ボタン　ここまで
33500 '2から５になる 上
33510 case 2:
33520 No=5:sp_on 8,1:sp_on 9,0:
33530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33540 case 5:
33550 No=8:sp_on 7,1:sp_on 8,0
33560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33570 case 8:
33580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33590 case 1:
33600 No=4:sp_on 5,1:sp_on 6,0
33610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33620 case 4:
33630 No=7:sp_on 4,1:sp_on 5,0
33640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33650 case 7:
33660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33670 end select
33680 endif
33690 '左３　ここまで
33700 '下の矢印
33710 '中央 2
33720 if ((y=1) or (key$ = chr$(31))) then
33730 select case No
33740 '9から６に下げる
33750 case 9:
33760 No=6:sp_on 11,1:sp_on 10,0
33770 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
33780 '6から３に下げる
33790 case 6:
33800 No=3:sp_on 12,1:sp_on 11,0
33810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33820 '3から０ｋに変える
33830 case 3:
33840 No=-1:sp_on 14,1:sp_on 12,0
33850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33860 'Okから下のボタンを押しても何もしない
33870 case -1:
33880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33890 case 8:
33900 No=5:sp_on 8,1:sp_on 7,0
33910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33920 case 5:
33930 No=2:sp_on 9,1:sp_on 8,0
33940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33950 case 2:
33960 No=0:sp_on 13,1:sp_on 9,0
33970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33980 case 0:
33990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34000 case 7:
34010 No=4:sp_on 5,1:sp_on 4,0
34020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34030 case 4:
34040 No=1:sp_on 6,1:sp_on 5,0
34050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34060 case 1:
34070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34080 end select
34090 endif
34100 '左へボタン 十字キー　左　or 　カーソル左
34110 if ((y2 = -1) or (key$ = chr$(29))) then
34120 select case No
34130 'Ok ボタン  Okから　左　０に行く
34140 case -1:
34150 No=0:sp_on 13,1:sp_on 14,0
34160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34170 '0 ボタン  左　何もしない
34180 case 0:
34190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34200 case 3:
34210 No=2:sp_on 9,1:sp_on 12,0:
34220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34230 case 2:
34240 No=1:sp_on 6,1:sp_on 9,0:
34250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34260 case 1:
34270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34280 case 6:
34290 No=5:sp_on 8,1:sp_on 11,0
34300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34310 case 5:
34320 No=4:sp_on 5,1:sp_on 8,0
34330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34340 case 4:
34350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34360 case 9:
34370 No=8:sp_on 7,1:sp_on 10,0
34380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34390 case 8:
34400 No=7:sp_on 4,1:sp_on 7,0
34410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34420 case 7:
34430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34440 end select
34450 endif
34460 '右  十字キー　右　or カーソル　右
34470 if ((y2 = 1) or (key$ = chr$(28))) then
34480 select case No
34490 '0ボタンからokボタン右に移動
34500 case 0:
34510 No=-1:sp_on 14,1:sp_on 13,0
34520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34530 '0ボタンからokボタン 右に移動　ここまで
34540 'OKボタンで右を押して何もしない
34550 case -1:
34560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34570 case 1:
34580 No=2:sp_on 9,1:sp_on 6,0
34590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34600 case 2:
34610 No=3:sp_on 12,1:sp_on 9,0
34620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34630 case 3:
34640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34650 case 4:
34660 No=5:sp_on 8,1:sp_on 5,0
34670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34680 case 5:
34690 No=6:sp_on 11,1:sp_on 8,0
34700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34710 case 7:
34720 No=8:sp_on 7,1:sp_on 4,0
34730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34740 case 8:
34750 No=9:sp_on 10,1:sp_on 7,0
34760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34770 case 9:
34780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34790 case 6:
34800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34810 end select
34820 'Okから右ボタンを押して何もしない ここまで
34830 endif
34840 '十字キー　ここまで
34850 '右の丸ボタン + Enter key 決定キー
34860 if ((bg=2) or (key$=chr$(13))) then
34870 select case count
34880 case 0:
34890 if (No=-1) then No=0
34900 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
34910 if (buf_male_month > 1 and buf_male_month < 10)  then
34920 buf_male_Month$ = str$(buf_male_month)
34930 'buf_month=No
34940 endif
34950 if (buf_male_month = 1)  then
34960 buf_male_Month$ = str$(buf_male_month) + "*"
34970 'c=buf_month
34980 endif
34990 locate 1,3
35000 print "                                     "
35010 color RGB(255,255,255)
35020 locate 1,3
35030 print "男性の生まれた月(1月~12月):" + buf_male_Month$
35040 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35050 case 1:
35060 count = 2:
35070 'c = val(buf_Month$)
35080 if (No = -1) then
35090 'count=0
35100 No=0
35110 month=buf_male_month
35120 buf_male_month=val(buf_male_Month$)
35130 month=buf_male_month
35140 buf_Jyoushi_Born_Day(1)=month
35150 '生まれた日に飛ぶ
35160 goto Danjyo_Aisyou_Input_Male_Born_Day:
35170 else
35180 buf_male_month = c*10 + No
35190 'if (buf_month = 1) then
35200 'buf_Month$ = str$(buf_month)
35210 'endif
35220 buf_male_Month$ = str$(buf_male_month)
35230 buf_Jyoushi_Born_Day(1) = buf_male_month
35240 locate 0,3
35250 print "                                           "
35260 locate 1,3
35270 color Rgb(255,255,255)
35280 print "男性の生まれた月(1月~12月):" + buf_male_Month$
35290 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35300 endif
35310 case 2:
35320 '==================================
35330 '何もしない
35340 'coun = 2
35350 '==================================
35360 'c= val(buf_Month$)
35370 'buf_month = c*10 + No
35380 'buf_Month$ = str$(buf_month)
35390 'locate 2,3
35400 'print "上司の生まれた月(1月～12月):";buf_Month$
35410 'goto Jyoushi_Input_Born_Month2:
35420 'case 3:
35430 'count=4
35440 'b=val(buf_month$)
35450 'buf_month=c*10+No
35460 'buf_Month$=str$(buf_month)
35470 'locate 2,3
35480 'print "上司の生まれた月(1月～12月):";buf_Month$
35490 'buf_month=val(buf_Month$)
35500 'year=val(buf_year$)
35510 if (No=-1) then
35520 No=0
35530 goto Danjyo_Aisyou_Input_Male_Born_Day:
35540 else
35550 goto Danjyo_Aisyou_Input_Male_Born_Day2:
35560 endif
35570 'case 4:
35580 'bufyear=buf_year
35590 'if (No=-1) then
35600 'buf_month = val(buf_Month$)
35610 'month = buf_month
35620 'sp_on 14,0
35630 'goto Input_Born_Day:
35640 'else
35650 'goto Input_Born_Month2:
35660 'endif
35670 end select
35680 endif
35690 '左の丸ボタン　キャンセル
35700 if (bg2=2) then
35710 select case count2
35720 case 0:
35730 if (No = -1) then
35740 buf_male_month=0:buf_male_Month$="**"
35750 count=0
35760 'goto rewrite2:
35770 else
35780 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
35790 buf_male_month = 0:buf_male_Month$ = "**"
35800 locate 0,3
35810 color rgb(255,255,255)
35820 print "                                       "
35830 goto rewrite2:
35840 if (No>12) then
35850 ui_msg"値が範囲外です。"
35860 goto rewrite2:
35870 endif
35880 endif
35890 endif
35900 rewrite2:
35910 locate 2,3
35920 color rgb(255,255,255)
35930 print "                                      "
35940 locate 2,3
35950 print "男性の生まれた月(1月~12月):"+buf_male_Month$
35960 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35970 end select
35980 'endif
35990 endif
36000 end
36010 '-------生まれた月　男性 ここまで-------------
36020 '-------生まれた日　男性 ここから-------------
36030 Danjyo_Aisyou_Input_Male_Born_Day:
36040 cls 3:play "":count=0:count2=0
36050 'No=-1:Okのとき
36060 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
36070 for i=0 to 1
36080 buf_day(i)=0
36090 next i
36100 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
36110 gload Gazo$ + "Screen1.png",0,0,0
36120 gload Gazo$ + "downscreen.png",0,0,800
36130 'Init"kb:4"
36140 '音声ファイル再生 2023.06.07
36150 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
36160 font 48
36170 locate 0,1
36180 '文字色：黒　 color rgb(0,0,0)
36190 '文字色:白
36200 color rgb(255,255,255)
36210 print "男性の生まれた日を入れて下さい" + chr$(13)
36220 '文字色:白
36230 color rgb(255,255,255)
36240 locate 1,3
36250 '文字色:白
36260 print "男性の生まれた日(1月~31月):" + buf_Day$
36270 color rgb(255,255,255)
36280 'locate 4,6:print ":7"
36290 'locate 9,6:print ":8"
36300 'locate 12,6:print ":9"
36310 locate 4,6
36320 '文字色:赤
36330 print ":7  :8  :9" + chr$(13)
36340 color rgb(255,255,255)
36350 locate 4,8
36360 print ":4  :5  :6" + chr$(13)
36370 color rgb(255,255,255)
36380 locate 4,10
36390 print ":1  :2  :3" + chr$(13)
36400 locate 4,12
36410 print "    :0"
36420 locate 12,12
36430 color rgb(0,0,255)
36440 print ":Ok"
36450 sp_on 4,0: sp_on 5,0:sp_on 6,0
36460 sp_on 7,0:sp_on 8,0:sp_on 9,0
36470 sp_on 10,0:sp_on 11,0:sp_on 12,0
36480 sp_on 13,0:sp_on 14,1
36490 '-------------------------------------------------
36500 Danjyo_Aisyou_Input_Male_Born_Day2:
36510 key$="":bg=0:y=0:y2=0:bg2=0
36520 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
36530 key$ = inkey$
36540 bg = strig(1)
36550 y = stick(1)
36560 y2 = stick(0)
36570 bg2 = strig(0)
36580 pause 5
36590 wend
36600 '十字キー　ここから
36610 '上の矢印　または、十字キー上
36620 if ((y = -1) or (key$ = chr$(30))) then
36630 select case No
36640 'No=-1:okのとき:初期の状態
36650 '0kボタンから３に移動
36660 '上に行く 処理
36670 case -1:
36680 No=3:sp_on 12,1:sp_on 14,0
36690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36700 '選択肢:3
36710 '3ボタンから 6に移動
36720 case 3:
36730 No=6:sp_on 12,0:sp_on 11,1
36740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36750 '6ボタンから ９に移動
36760 case 6:
36770 No=9:sp_on 10,1:sp_on 11,0
36780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36790 '6ボタンから ９に移動　ここまで
36800 '9で上を押して何もしない
36810 case 9:
36820 '何もしない
36830 No=9
36840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36850 '9で上を押しても何もしない　ここまで
36860 '上　 0ボタンから2ボタン
36870 'sp_on 6,1:1
36880 'sp_on 8,1:5
36890 'sp_on 7,1:7
36900 case 0:
36910 No=2:sp_on 13,0:sp_on 9,1:
36920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36930 '上  0ボタンから2ボタン　ここまで
36940 '2から５になる 上
36950 case 2:
36960 No=5:sp_on 8,1:sp_on 9,0:
36970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36980 case 5:
36990 No=8:sp_on 7,1:sp_on 8,0
37000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37010 case 8:
37020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37030 case 1:
37040 No=4:sp_on 5,1:sp_on 6,0
37050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37060 case 4:
37070 No=7:sp_on 4,1:sp_on 5,0
37080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37090 case 7:
37100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37110 end select
37120 endif
37130 '左３　ここまで
37140 '下の矢印
37150 '中央 2
37160 if ((y=1) or (key$ = chr$(31))) then
37170 select case No
37180 '9から６に下げる
37190 case 9:
37200 No=6:sp_on 11,1:sp_on 10,0
37210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37220 '6から３に下げる
37230 case 6:
37240 No=3:sp_on 12,1:sp_on 11,0
37250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37260 '3から０ｋに変える
37270 case 3:
37280 No=-1:sp_on 14,1:sp_on 12,0
37290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37300 'Okから下のボタンを押しても何もしない
37310 case -1:
37320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37330 case 8:
37340 No=5:sp_on 8,1:sp_on 7,0
37350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37360 case 5:
37370 No=2:sp_on 9,1:sp_on 8,0
37380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37390 case 2:
37400 No=0:sp_on 13,1:sp_on 9,0
37410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37420 case 0:
37430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37440 case 7:
37450 No=4:sp_on 5,1:sp_on 4,0
37460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37470 case 4:
37480 No=1:sp_on 6,1:sp_on 5,0
37490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37500 case 1:
37510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37520 end select
37530 endif
37540 '左へボタン 十字キー　左　or 　カーソル左
37550 if ((y2 = -1) or (key$ = chr$(29))) then
37560 select case No
37570 'Ok ボタン  Okから　左　０に行く
37580 case -1:
37590 No=0:sp_on 13,1:sp_on 14,0
37600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37610 '0 ボタン  左　何もしない
37620 case 0:
37630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37640 case 3:
37650 No=2:sp_on 9,1:sp_on 12,0:
37660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37670 case 2:
37680 No=1:sp_on 6,1:sp_on 9,0:
37690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37700 case 1:
37710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37720 case 6:
37730 No=5:sp_on 8,1:sp_on 11,0
37740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37750 case 5:
37760 No=4:sp_on 5,1:sp_on 8,0
37770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37780 case 4:
37790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37800 case 9:
37810 No=8:sp_on 7,1:sp_on 10,0
37820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37830 case 8:
37840 No=7:sp_on 4,1:sp_on 7,0
37850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37860 case 7:
37870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37880 end select
37890 endif
37900 '右  十字キー　右　or カーソル　右
37910 if ((y2 = 1) or (key$ = chr$(28))) then
37920 select case No
37930 '0ボタンからokボタン右に移動
37940 case 0:
37950 No=-1:sp_on 14,1:sp_on 13,0
37960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37970 '0ボタンからokボタン 右に移動　ここまで
37980 'OKボタンで右を押して何もしない
37990 case -1:
38000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38010 case 1:
38020 No=2:sp_on 9,1:sp_on 6,0
38030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38040 case 2:
38050 No=3:sp_on 12,1:sp_on 9,0
38060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38070 case 3:
38080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38090 case 4:
38100 No=5:sp_on 8,1:sp_on 5,0
38110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38120 case 5:
38130 No=6:sp_on 11,1:sp_on 8,0
38140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38150 case 7:
38160 No=8:sp_on 7,1:sp_on 4,0
38170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38180 case 8:
38190 No=9:sp_on 10,1:sp_on 7,0
38200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38210 case 9:
38220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38230 case 6:
38240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38250 end select
38260 'Okから右ボタンを押して何もしない ここまで
38270 endif
38280 '十字キー　ここまで
38290 '右の丸ボタン + Enter key 決定キー
38300 if ((bg=2) or (key$=chr$(13))) then
38310 select case count
38320 case 0:
38330 if (No=-1) then No=0
38340 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
38350 if (buf_male_day > 1 and buf_male_day < 10)  then
38360 buf_male_Day$ = str$(buf_male_day)
38370 'buf_month=No
38380 endif
38390 if (buf_male_day = 1)  then
38400 buf_male_Day$ = str$(buf_male_day) + "*"
38410 'c=buf_month
38420 endif
38430 locate 1,3
38440 print "                                     "
38450 color RGB(255,255,255)
38460 locate 1,3
38470 print "男性の生まれた日(1月~31月):" + buf_male_Day$
38480 goto Danjyo_Aisyou_Input_Male_Born_Day2:
38490 case 1:
38500 count = 2:
38510 'c = val(buf_Month$)
38520 if (No = -1) then
38530 'count=0
38540 No=0
38550 day=buf_male_Day
38560 buf_male_Day=val(buf_male_Day$)
38570 day=buf_male_Day
38580 buf_Jyoushi_Born_Day(2)=day
38590 '生まれた日に飛ぶ
38600 goto Danjyo_Aisyou_Input_Male_Born_Day:
38610 else
38620 buf_male_Day = c*10 + No
38630 'if (buf_month = 1) then
38640 'buf_Month$ = str$(buf_month)
38650 'endif
38660 buf_male_Day$ = str$(buf_male_Day)
38670 buf_male_Born_Day(2) = buf_male_Day:
38680 locate 0,3
38690 print "                                           "
38700 locate 1,3
38710 color Rgb(255,255,255)
38720 print "男性の生まれた月(1月~12月):" + buf_male_Day$
38730 goto Danjyo_Aisyou_Input_Male_Born_Day2:
38740 endif
38750 case 2:
38760 '==================================
38770 '何もしない
38780 'coun = 2
38790 '==================================
38800 'c= val(buf_Month$)
38810 'buf_month = c*10 + No
38820 'buf_Month$ = str$(buf_month)
38830 'locate 2,3
38840 'print "上司の生まれた月(1月～12月):";buf_Month$
38850 'goto Jyoushi_Input_Born_Month2:
38860 'case 3:
38870 'count=4
38880 'b=val(buf_month$)
38890 'buf_month=c*10+No
38900 'buf_Month$=str$(buf_month)
38910 'locate 2,3
38920 'print "上司の生まれた月(1月～12月):";buf_Month$
38930 'buf_month=val(buf_Month$)
38940 'year=val(buf_year$)
38950 if (No=-1) then
38960 No=0
38970 goto Danjyo_Aisyou_Input_Male_Born_Day:
38980 else
38990 goto Danjyo_Aisyou_Input_Male_Born_Day2:
39000 endif
39010 'case 4:
39020 'bufyear=buf_year
39030 'if (No=-1) then
39040 'buf_month = val(buf_Month$)
39050 'month = buf_month
39060 'sp_on 14,0
39070 'goto Input_Born_Day:
39080 'else
39090 'goto Input_Born_Month2:
39100 'endif
39110 end select
39120 endif
39130 '左の丸ボタン　キャンセル
39140 if (bg2=2) then
39150 select case count2
39160 case 0:
39170 if (No = -1) then
39180 buf_male_day=0:buf_male_Day$="**"
39190 count=0
39200 'goto rewrite2:
39210 else
39220 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
39230 buf_male_day = 0:buf_male_Day$ = "**"
39240 locate 0,3
39250 color rgb(255,255,255)
39260 print "                                       "
39270 goto rewrite2:
39280 if (No>12) then
39290 ui_msg"値が範囲外です。"
39300 goto rewrite2:
39310 endif
39320 endif
39330 endif
39340 rewrite2:
39350 locate 2,3
39360 color rgb(255,255,255)
39370 print "                                      "
39380 locate 2,3
39390 print "男性の生まれた日(1月~31月):"+buf_male_Day$
39400 goto Danjyo_Aisyou_Input_Male_Born_Day2:
39410 end select
39420 'endif
39430 endif
39440 end
39450 '-------生まれた日　女性　ここまで-------------
39460 '1-1.女性の名前を入力
39470 Danjyo_Aisyou_Input_Name_female:
39480 No=0:color RGB(255,255,255)
39490 '入力:キーボード
39500 cls 3:init "kb:2"
39510 gload Gazo$ + "Screen1.png",0,0,0
39520 gload Gazo$ + "downscreen.png",0,0,800
39530 play "":color rgb(255,0,0):female_name$ = ""
39540 locate 0,1
39550 print "女性の相性" + chr$(13) + chr$(13)
39560 color rgb(255,255,255):
39570 locate 0,3
39580 print "女性の相性を求めます。男性の名前を" + chr$(13)
39590 print "入れてください" + chr$(13)
39600 locate 0,15:color rgb(0,0,0)
39610 Input "女性の名前:",female_name$
39620 '-------------------------------------------
39630 '-------生まれた年代　女性 ここから-------------
39640 Danjyo_Aisyou_Input_feMale_Born_Year:
39650 cls 3:play "":count=0:count2=0
39660 'No=-1:Okのとき
39670 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
39680 for i=0 to 1
39690 buf_day(i)=0
39700 next i
39710 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
39720 gload Gazo$ + "Screen1.png",0,0,0
39730 gload Gazo$ + "downscreen.png",0,0,800
39740 'Init"kb:4"
39750 '音声ファイル再生 2023.06.07
39760 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
39770 font 48
39780 locate 0,1
39790 '文字色：黒　 color rgb(0,0,0)
39800 '文字色:白
39810 color rgb(255,255,255)
39820 print "女性の生まれた年代を入れて下さい" + chr$(13)
39830 '文字色:白
39840 color rgb(255,255,255)
39850 locate 1,3
39860 '文字色:白
39870 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
39880 color rgb(255,255,255)
39890 'locate 4,6:print ":7"
39900 'locate 9,6:print ":8"
39910 'locate 12,6:print ":9"
39920 locate 4,6
39930 '文字色:赤
39940 print ":7  :8  :9" + chr$(13)
39950 color rgb(255,255,255)
39960 locate 4,8
39970 print ":4  :5  :6" + chr$(13)
39980 color rgb(255,255,255)
39990 locate 4,10
40000 print ":1  :2  :3" + chr$(13)
40010 locate 4,12
40020 print "    :0"
40030 locate 12,12
40040 color rgb(0,0,255)
40050 print ":Ok"
40060 sp_on 4,0: sp_on 5,0:sp_on 6,0
40070 sp_on 7,0:sp_on 8,0:sp_on 9,0
40080 sp_on 10,0:sp_on 11,0:sp_on 12,0
40090 sp_on 13,0:sp_on 14,1
40100 '---------------------------------------------
40110 Danjyo_Aisyou_Input_feMale_Born_Year2:
40120 key$="":bg=0:y=0:y2=0:bg2=0:
40130 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
40140 key$ = inkey$
40150 bg = strig(1)
40160 y = stick(1)
40170 y2 = stick(0)
40180 bg2=strig(0)
40190 pause 5
40200 wend
40210 '十字キー　ここから
40220 '上の矢印　または、十字キー上
40230 if ((y = -1) or (key$ = chr$(30))) then
40240 select case No
40250 'No=-1:okのとき:初期の状態
40260 '0kボタンから３に移動
40270 '上に行く 処理
40280 case -1:
40290 No=3:sp_on 12,1:sp_on 14,0
40300 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
40310 '選択肢:3
40320 '3ボタンから 6に移動
40330 case 3:
40340 No=6:sp_on 12,0:sp_on 11,1
40350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40360 '6ボタンから ９に移動
40370 case 6:
40380 No=9:sp_on 10,1:sp_on 11,0
40390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40400 '6ボタンから ９に移動　ここまで
40410 '9で上を押して何もしない
40420 case 9:
40430 '何もしない
40440 No=9
40450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40460 '9で上を押しても何もしない　ここまで
40470 '上　 0ボタンから2ボタン
40480 'sp_on 6,1:1
40490 'sp_on 8,1:5
40500 'sp_on 7,1:7
40510 case 0:
40520 No=2:sp_on 13,0:sp_on 9,1:
40530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40540 '上  0ボタンから2ボタン　ここまで
40550 '2から５になる 上
40560 case 2:
40570 No=5:sp_on 8,1:sp_on 9,0:
40580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40590 case 5:
40600 No=8:sp_on 7,1:sp_on 8,0
40610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40620 case 8:
40630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40640 case 1:
40650 No=4:sp_on 5,1:sp_on 6,0
40660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40670 case 4:
40680 No=7:sp_on 4,1:sp_on 5,0
40690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40700 case 7:
40710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40720 end select
40730 endif
40740 '左３　ここまで
40750 '下の矢印
40760 '中央 2
40770 if ((y=1) or (key$ = chr$(31))) then
40780 select case No
40790 '9から６に下げる
40800 case 9:
40810 No=6:sp_on 11,1:sp_on 10,0
40820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40830 '6から３に下げる
40840 case 6:
40850 No=3:sp_on 12,1:sp_on 11,0
40860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40870 '3から０ｋに変える
40880 case 3:
40890 No=-1:sp_on 14,1:sp_on 12,0
40900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40910 'Okから下のボタンを押しても何もしない
40920 case -1:
40930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40940 case 8:
40950 No=5:sp_on 8,1:sp_on 7,0
40960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40970 case 5:
40980 No=2:sp_on 9,1:sp_on 8,0
40990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41000 case 2:
41010 No=0:sp_on 13,1:sp_on 9,0
41020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41030 case 0:
41040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41050 case 7:
41060 No=4:sp_on 5,1:sp_on 4,0
41070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41080 case 4:
41090 No=1:sp_on 6,1:sp_on 5,0
41100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41110 case 1:
41120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41130 end select
41140 endif
41150 '左へボタン 十字キー　左　or 　カーソル左
41160 if ((y2 = -1) or (key$ = chr$(29))) then
41170 select case No
41180 'Ok ボタン  Okから　左　０に行く
41190 case -1:
41200 No=0:sp_on 13,1:sp_on 14,0
41210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41220 '0 ボタン  左　何もしない
41230 case 0:
41240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41250 case 3:
41260 No=2:sp_on 9,1:sp_on 12,0:
41270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41280 case 2:
41290 No=1:sp_on 6,1:sp_on 9,0:
41300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41310 case 1:
41320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41330 case 6:
41340 No=5:sp_on 8,1:sp_on 11,0
41350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41360 case 5:
41370 No=4:sp_on 5,1:sp_on 8,0
41380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41390 case 4:
41400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41410 case 9:
41420 No=8:sp_on 7,1:sp_on 10,0
41430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41440 case 8:
41450 No=7:sp_on 4,1:sp_on 7,0
41460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41470 case 7:
41480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41490 end select
41500 endif
41510 '右  十字キー　右　or カーソル　右
41520 if ((y2 = 1) or (key$ = chr$(28))) then
41530 select case No
41540 '0ボタンからokボタン右に移動
41550 case 0:
41560 No=-1:sp_on 14,1:sp_on 13,0
41570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41580 '0ボタンからokボタン 右に移動　ここまで
41590 'OKボタンで右を押して何もしない
41600 case -1:
41610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41620 case 1:
41630 No=2:sp_on 9,1:sp_on 6,0
41640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41650 case 2:
41660 No=3:sp_on 12,1:sp_on 9,0
41670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41680 case 3:
41690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41700 case 4:
41710 No=5:sp_on 8,1:sp_on 5,0
41720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41730 case 5:
41740 No=6:sp_on 11,1:sp_on 8,0
41750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41760 case 7:
41770 No=8:sp_on 7,1:sp_on 4,0
41780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41790 case 8:
41800 No=9:sp_on 10,1:sp_on 7,0
41810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41820 case 9:
41830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41840 case 6:
41850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41860 end select
41870 'Okから右ボタンを押して何もしない ここまで
41880 endif
41890 '十字キー　ここまで
41900 '==============================
41910 'ここから
41920 '==============================
41930 if ((bg = 2) or (key$ = chr$(13))) then
41940 select case count
41950 case 0:
41960 count = 1
41970 if (No = -1) then
41980 count = 0:No=0
41990 buf_feMale_Born_Day(0) = No
42000 'Okボタンを押したとき
42010 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42020 else
42030 'Okボタン以外が押されたとき
42040 if (No >= 1 and No <= 2) then
42050 buf_female_year$="":buf_female_year$ = str$(No) + "***"
42060 buf_female_year = No:a= No
42070 buf_Jyoushi_Born_Day(0) = No
42080 locate 1,3
42090 color rgb(255,255,255)
42100 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42110 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42120 else
42130 count=0
42140 ui_msg"数字が範囲外になります。"
42150 buf_female_year$="":buf_female_year=0
42160 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42170 endif
42180 endif
42190 case 1:
42200 count = 2
42210 if (No = -1) then
42220 count = 1
42230 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42240 else
42250 buf_female_year = a * 10 + No
42260 b=buf_female_year
42270 buf_year$ = str$(buf_female_year) + "**"
42280 buf_Jyoushi_Born_Day(0)=buf_female_year
42290 locate 1,3
42300 color rgb(255,255,255)
42310 print "                                                                "
42320 locate 1,3
42330 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
42340 'if (No = -1) then
42350 'count=1
42360 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42370 endif
42380 case 2:
42390 count=3
42400 if (No=-1) then
42410 count =2
42420 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42430 else
42440 buf_female_year = b * 10 + No
42450 c=buf_female_year
42460 buf_female_year$ = str$(buf_female_year) + "*"
42470 buf_Jyoushi_Born_Day(0) = buf_female_year
42480 locate 1,3
42490 color rgb(255,255,255)
42500 print "                                        "
42510 locate 1,3
42520 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42530 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42540 endif
42550 case 3:
42560 count=4
42570 if (No = -1) then
42580 No=0
42590 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42600 else
42610 buf_female_year = c * 10 + No
42620 buf_female_year$ = str$(buf_female_year)
42630 buf_Jyoushi_Born_Day(0) = buf_female_year
42640 locate 1,3
42650 color RGB(255,255,255)
42660 print "                                      "
42670 locate 1,3
42680 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42690 buf_female_year=val(buf_female_year$)
42700 'year=val(buf_year$)
42710 'if (No=-1) then
42720 'goto Input_Born_Month:
42730 'else
42740 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42750 endif
42760 case 4:
42770 'bufyear=buf_year
42780 if (No=-1) then
42790 buf_female_year = val(buf_female_year$)
42800 buf_Jyoushi_Born_Day(0)=buf_female_year
42810 sp_on 14,0:No=0
42820 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42830 else
42840 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42850 endif
42860 end select
42870 endif
42880 '===========================
42890 'ここまでを部下のところにコピーする.
42900 '===========================
42910 if (bg2 = 2) then
42920 select case count2
42930 case 0:
42940 if (No = -1) then
42950 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
42960 count=0
42970 locate 1,3
42980 color rgb(255,255,255)
42990 print "                                      "
43000 locate 1,3
43010 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
43020 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
43030 else
43040 '(buf_year=0) then
43050 buf_female_year=0:buf_year$="****"
43060 locate 1,3
43070 print "                                       "
43080 locate 1,3
43090 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
43100 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
43110 'endif
43120 endif
43130 end select
43140 endif
43150 '-------生まれた年代　女性 ここまで-------------
43160 '-------生まれた月　女性 ここまで--------------
43170 Danjyo_Aisyou_Input_feMale_Born_Month:
43180 cls 3:play "":count=0:count2=0
43190 'No=-1:Okのとき
43200 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
43210 for i=0 to 1
43220 buf_month(i)=0
43230 next i
43240 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43250 gload Gazo$ + "Screen1.png",0,0,0
43260 gload Gazo$ + "downscreen.png",0,0,800
43270 'Init"kb:4"
43280 '音声ファイル再生 2023.06.07
43290 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
43300 font 48
43310 locate 0,1
43320 '文字色：黒　 color rgb(0,0,0)
43330 '文字色:白
43340 color rgb(255,255,255)
43350 print "女性の生まれた月を入れて下さい" + chr$(13)
43360 '文字色:白
43370 color rgb(255,255,255)
43380 locate 1,3
43390 '文字色:白
43400 print "女性の生まれた月(1月~12月):"+buf_female_Month$
43410 color rgb(255,255,255)
43420 'locate 4,6:print ":7"
43430 'locate 9,6:print ":8"
43440 'locate 12,6:print ":9"
43450 locate 4,6
43460 '文字色:赤
43470 print ":7  :8  :9" + chr$(13)
43480 color rgb(255,255,255)
43490 locate 4,8
43500 print ":4  :5  :6" + chr$(13)
43510 color rgb(255,255,255)
43520 locate 4,10
43530 print ":1  :2  :3" + chr$(13)
43540 locate 4,12
43550 print "    :0"
43560 locate 12,12
43570 color rgb(0,0,255)
43580 print ":Ok"
43590 sp_on 4,0: sp_on 5,0:sp_on 6,0
43600 sp_on 7,0:sp_on 8,0:sp_on 9,0
43610 sp_on 10,0:sp_on 11,0:sp_on 12,0
43620 sp_on 13,0:sp_on 14,1
43630 '---------------------------------------------
43640 Danjyo_Aisyou_Input_feMale_Born_Month2:
43650 key$="":bg=0:y=0:y2=0:bg2=0
43660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43670 key$ = inkey$
43680 bg = strig(1)
43690 y = stick(1)
43700 y2 = stick(0)
43710 bg2 = strig(0)
43720 pause 5
43730 wend
43740 '十字キー　ここから
43750 '上の矢印　または、十字キー上
43760 if ((y = -1) or (key$ = chr$(30))) then
43770 select case No
43780 'No=-1:okのとき:初期の状態
43790 '0kボタンから３に移動
43800 '上に行く 処理
43810 case -1:
43820 No=3:sp_on 12,1:sp_on 14,0
43830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43840 '選択肢:3
43850 '3ボタンから 6に移動
43860 case 3:
43870 No=6:sp_on 12,0:sp_on 11,1
43880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43890 '6ボタンから ９に移動
43900 case 6:
43910 No=9:sp_on 10,1:sp_on 11,0
43920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43930 '6ボタンから ９に移動　ここまで
43940 '9で上を押して何もしない
43950 case 9:
43960 '何もしない
43970 No=9
43980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43990 '9で上を押しても何もしない　ここまで
44000 '上　 0ボタンから2ボタン
44010 'sp_on 6,1:1
44020 'sp_on 8,1:5
44030 'sp_on 7,1:7
44040 case 0:
44050 No=2:sp_on 13,0:sp_on 9,1:
44060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44070 '上  0ボタンから2ボタン　ここまで
44080 '2から５になる 上
44090 case 2:
44100 No=5:sp_on 8,1:sp_on 9,0:
44110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44120 case 5:
44130 No=8:sp_on 7,1:sp_on 8,0
44140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44150 case 8:
44160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44170 case 1:
44180 No=4:sp_on 5,1:sp_on 6,0
44190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44200 case 4:
44210 No=7:sp_on 4,1:sp_on 5,0
44220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44230 case 7:
44240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44250 end select
44260 endif
44270 '左３　ここまで
44280 '下の矢印
44290 '中央 2
44300 if ((y=1) or (key$ = chr$(31))) then
44310 select case No
44320 '9から６に下げる
44330 case 9:
44340 No=6:sp_on 11,1:sp_on 10,0
44350 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
44360 '6から３に下げる
44370 case 6:
44380 No=3:sp_on 12,1:sp_on 11,0
44390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44400 '3から０ｋに変える
44410 case 3:
44420 No=-1:sp_on 14,1:sp_on 12,0
44430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44440 'Okから下のボタンを押しても何もしない
44450 case -1:
44460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44470 case 8:
44480 No=5:sp_on 8,1:sp_on 7,0
44490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44500 case 5:
44510 No=2:sp_on 9,1:sp_on 8,0
44520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44530 case 2:
44540 No=0:sp_on 13,1:sp_on 9,0
44550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44560 case 0:
44570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44580 case 7:
44590 No=4:sp_on 5,1:sp_on 4,0
44600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44610 case 4:
44620 No=1:sp_on 6,1:sp_on 5,0
44630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44640 case 1:
44650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44660 end select
44670 endif
44680 '左へボタン 十字キー　左　or 　カーソル左
44690 if ((y2 = -1) or (key$ = chr$(29))) then
44700 select case No
44710 'Ok ボタン  Okから　左　０に行く
44720 case -1:
44730 No=0:sp_on 13,1:sp_on 14,0
44740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44750 '0 ボタン  左　何もしない
44760 case 0:
44770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44780 case 3:
44790 No=2:sp_on 9,1:sp_on 12,0:
44800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44810 case 2:
44820 No=1:sp_on 6,1:sp_on 9,0:
44830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44840 case 1:
44850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44860 case 6:
44870 No=5:sp_on 8,1:sp_on 11,0
44880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44890 case 5:
44900 No=4:sp_on 5,1:sp_on 8,0
44910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44920 case 4:
44930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44940 case 9:
44950 No=8:sp_on 7,1:sp_on 10,0
44960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44970 case 8:
44980 No=7:sp_on 4,1:sp_on 7,0
44990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45000 case 7:
45010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45020 end select
45030 endif
45040 '右  十字キー　右　or カーソル　右
45050 if ((y2 = 1) or (key$ = chr$(28))) then
45060 select case No
45070 '0ボタンからokボタン右に移動
45080 case 0:
45090 No=-1:sp_on 14,1:sp_on 13,0
45100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45110 '0ボタンからokボタン 右に移動　ここまで
45120 'OKボタンで右を押して何もしない
45130 case -1:
45140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45150 case 1:
45160 No=2:sp_on 9,1:sp_on 6,0
45170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45180 case 2:
45190 No=3:sp_on 12,1:sp_on 9,0
45200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45210 case 3:
45220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45230 case 4:
45240 No=5:sp_on 8,1:sp_on 5,0
45250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45260 case 5:
45270 No=6:sp_on 11,1:sp_on 8,0
45280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45290 case 7:
45300 No=8:sp_on 7,1:sp_on 4,0
45310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45320 case 8:
45330 No=9:sp_on 10,1:sp_on 7,0
45340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45350 case 9:
45360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45370 case 6:
45380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45390 end select
45400 'Okから右ボタンを押して何もしない ここまで
45410 endif
45420 '十字キー　ここまで
45430 '右の丸ボタン + Enter key 決定キー
45440 if ((bg=2) or (key$=chr$(13))) then
45450 select case count
45460 case 0:
45470 if (No=-1) then No=0
45480 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
45490 if (buf_female_month > 1 and buf_female_month < 10)  then
45500 buf_female_Month$ = str$(buf_female_month)
45510 'buf_month=No
45520 endif
45530 if (buf_female_month = 1)  then
45540 buf_female_Month$ = str$(buf_female_month) + "*"
45550 'c=buf_month
45560 endif
45570 locate 1,3
45580 print "                                     "
45590 color RGB(255,255,255)
45600 locate 1,3
45610 print "女性の生まれた月(1月~12月):" + buf_female_Month$
45620 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45630 case 1:
45640 count = 2:
45650 'c = val(buf_Month$)
45660 if (No = -1) then
45670 'count=0
45680 No=0
45690 month=buf_female_month
45700 buf_female_month=val(buf_female_Month$)
45710 month=buf_female_month
45720 buf_Jyoushi_Born_Day(1)=month
45730 '生まれた日に飛ぶ
45740 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45750 else
45760 buf_female_month = c*10 + No
45770 'if (buf_month = 1) then
45780 'buf_Month$ = str$(buf_month)
45790 'endif
45800 buf_female_Month$ = str$(buf_female_month)
45810 buf_Jyoushi_Born_Day(1) = buf_female_month
45820 locate 0,3
45830 print "                                           "
45840 locate 1,3
45850 color Rgb(255,255,255)
45860 print "女性の生まれた月(1月~12月):" + buf_female_Month$
45870 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45880 endif
45890 case 2:
45900 '==================================
45910 '何もしない
45920 'coun = 2
45930 '==================================
45940 'c= val(buf_Month$)
45950 'buf_month = c*10 + No
45960 'buf_Month$ = str$(buf_month)
45970 'locate 2,3
45980 'print "上司の生まれた月(1月～12月):";buf_Month$
45990 'goto Jyoushi_Input_Born_Month2:
46000 'case 3:
46010 'count=4
46020 'b=val(buf_month$)
46030 'buf_month=c*10+No
46040 'buf_Month$=str$(buf_month)
46050 'locate 2,3
46060 'print "上司の生まれた月(1月～12月):";buf_Month$
46070 'buf_month=val(buf_Month$)
46080 'year=val(buf_year$)
46090 if (No=-1) then
46100 No=0
46110 goto Danjyo_Aisyou_Input_Male_Born_Day:
46120 else
46130 goto Danjyo_Aisyou_Input_Male_Born_Day2:
46140 endif
46150 'case 4:
46160 'bufyear=buf_year
46170 'if (No=-1) then
46180 'buf_month = val(buf_Month$)
46190 'month = buf_month
46200 'sp_on 14,0
46210 'goto Input_Born_Day:
46220 'else
46230 'goto Input_Born_Month2:
46240 'endif
46250 end select
46260 endif
46270 '左の丸ボタン　キャンセル
46280 if (bg2=2) then
46290 select case count2
46300 case 0:
46310 if (No = -1) then
46320 buf_female_month=0:buf_female_Month$="**"
46330 count=0
46340 'goto rewrite2:
46350 else
46360 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
46370 buf_female_month = 0:buf_female_Month$ = "**"
46380 locate 0,3
46390 color rgb(255,255,255)
46400 print "                                       "
46410 goto rewrite2:
46420 if (No>12) then
46430 ui_msg"値が範囲外です。"
46440 goto rewrite2:
46450 endif
46460 endif
46470 endif
46480 rewrite2:
46490 locate 2,3
46500 color rgb(255,255,255)
46510 print "                                      "
46520 locate 2,3
46530 print "女性の生まれた月(1月~12月):"+buf_female_Month$
46540 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
46550 end select
46560 'endif
46570 endif
46580 end
46590 '-------生まれた月　女性 ここまで-------------
46600 '-------生まれた日　女性 ここまで-------------
46610 Danjyo_Aisyou_Input_feMale_Born_Day:
46620 cls 3:play "":count=0:count2=0
46630 'No=-1:Okのとき
46640 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
46650 for i=0 to 1
46660 buf_female_day(i)=0
46670 next i
46680 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46690 gload Gazo$ + "Screen1.png",0,0,0
46700 gload Gazo$ + "downscreen.png",0,0,800
46710 'Init"kb:4"
46720 '音声ファイル再生 2023.06.07
46730 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
46740 font 48
46750 locate 0,1
46760 '文字色：黒　 color rgb(0,0,0)
46770 '文字色:白
46780 color rgb(255,255,255)
46790 print "女性の生まれた日を入れて下さい" + chr$(13)
46800 '文字色:白
46810 color rgb(255,255,255)
46820 locate 1,3
46830 '文字色:白
46840 print "女性の生まれた日(1月~31月):" + buf_female_Day$
46850 color rgb(255,255,255)
46860 'locate 4,6:print ":7"
46870 'locate 9,6:print ":8"
46880 'locate 12,6:print ":9"
46890 locate 4,6
46900 '文字色:赤
46910 print ":7  :8  :9" + chr$(13)
46920 color rgb(255,255,255)
46930 locate 4,8
46940 print ":4  :5  :6" + chr$(13)
46950 color rgb(255,255,255)
46960 locate 4,10
46970 print ":1  :2  :3" + chr$(13)
46980 locate 4,12
46990 print "    :0"
47000 locate 12,12
47010 color rgb(0,0,255)
47020 print ":Ok"
47030 sp_on 4,0: sp_on 5,0:sp_on 6,0
47040 sp_on 7,0:sp_on 8,0:sp_on 9,0
47050 sp_on 10,0:sp_on 11,0:sp_on 12,0
47060 sp_on 13,0:sp_on 14,1
47070 '---------------------------------------------
47080 Danjyo_Aisyou_Input_feMale_Born_Day2:
47090 key$="":bg=0:y=0:y2=0:bg2=0
47100 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
47110 key$ = inkey$
47120 bg = strig(1)
47130 y = stick(1)
47140 y2 = stick(0)
47150 bg2 = strig(0)
47160 pause 5
47170 wend
47180 '十字キー　ここから
47190 '上の矢印　または、十字キー上
47200 if ((y = -1) or (key$ = chr$(30))) then
47210 select case No
47220 'No=-1:okのとき:初期の状態
47230 '0kボタンから３に移動
47240 '上に行く 処理
47250 case -1:
47260 No=3:sp_on 12,1:sp_on 14,0
47270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47280 '選択肢:3
47290 '3ボタンから 6に移動
47300 case 3:
47310 No=6:sp_on 12,0:sp_on 11,1
47320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47330 '6ボタンから ９に移動
47340 case 6:
47350 No=9:sp_on 10,1:sp_on 11,0
47360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47370 '6ボタンから ９に移動　ここまで
47380 '9で上を押して何もしない
47390 case 9:
47400 '何もしない
47410 No=9
47420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47430 '9で上を押しても何もしない　ここまで
47440 '上　 0ボタンから2ボタン
47450 'sp_on 6,1:1
47460 'sp_on 8,1:5
47470 'sp_on 7,1:7
47480 case 0:
47490 No=2:sp_on 13,0:sp_on 9,1:
47500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47510 '上  0ボタンから2ボタン　ここまで
47520 '2から５になる 上
47530 case 2:
47540 No=5:sp_on 8,1:sp_on 9,0:
47550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47560 case 5:
47570 No=8:sp_on 7,1:sp_on 8,0
47580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47590 case 8:
47600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47610 case 1:
47620 No=4:sp_on 5,1:sp_on 6,0
47630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47640 case 4:
47650 No=7:sp_on 4,1:sp_on 5,0
47660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47670 case 7:
47680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47690 end select
47700 endif
47710 '左３　ここまで
47720 '下の矢印
47730 '中央 2
47740 if ((y=1) or (key$ = chr$(31))) then
47750 select case No
47760 '9から６に下げる
47770 case 9:
47780 No=6:sp_on 11,1:sp_on 10,0
47790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47800 '6から３に下げる
47810 case 6:
47820 No=3:sp_on 12,1:sp_on 11,0
47830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47840 '3から０ｋに変える
47850 case 3:
47860 No=-1:sp_on 14,1:sp_on 12,0
47870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47880 'Okから下のボタンを押しても何もしない
47890 case -1:
47900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47910 case 8:
47920 No=5:sp_on 8,1:sp_on 7,0
47930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47940 case 5:
47950 No=2:sp_on 9,1:sp_on 8,0
47960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47970 case 2:
47980 No=0:sp_on 13,1:sp_on 9,0
47990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48000 case 0:
48010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48020 case 7:
48030 No=4:sp_on 5,1:sp_on 4,0
48040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48050 case 4:
48060 No=1:sp_on 6,1:sp_on 5,0
48070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48080 case 1:
48090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48100 end select
48110 endif
48120 '左へボタン 十字キー　左　or 　カーソル左
48130 if ((y2 = -1) or (key$ = chr$(29))) then
48140 select case No
48150 'Ok ボタン  Okから　左　０に行く
48160 case -1:
48170 No=0:sp_on 13,1:sp_on 14,0
48180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48190 '0 ボタン  左　何もしない
48200 case 0:
48210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48220 case 3:
48230 No=2:sp_on 9,1:sp_on 12,0:
48240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48250 case 2:
48260 No=1:sp_on 6,1:sp_on 9,0:
48270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48280 case 1:
48290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48300 case 6:
48310 No=5:sp_on 8,1:sp_on 11,0
48320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48330 case 5:
48340 No=4:sp_on 5,1:sp_on 8,0
48350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48360 case 4:
48370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48380 case 9:
48390 No=8:sp_on 7,1:sp_on 10,0
48400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48410 case 8:
48420 No=7:sp_on 4,1:sp_on 7,0
48430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48440 case 7:
48450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48460 end select
48470 endif
48480 '右  十字キー　右　or カーソル　右
48490 if ((y2 = 1) or (key$ = chr$(28))) then
48500 select case No
48510 '0ボタンからokボタン右に移動
48520 case 0:
48530 No=-1:sp_on 14,1:sp_on 13,0
48540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48550 '0ボタンからokボタン 右に移動　ここまで
48560 'OKボタンで右を押して何もしない
48570 case -1:
48580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48590 case 1:
48600 No=2:sp_on 9,1:sp_on 6,0
48610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48620 case 2:
48630 No=3:sp_on 12,1:sp_on 9,0
48640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48650 case 3:
48660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48670 case 4:
48680 No=5:sp_on 8,1:sp_on 5,0
48690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48700 case 5:
48710 No=6:sp_on 11,1:sp_on 8,0
48720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48730 case 7:
48740 No=8:sp_on 7,1:sp_on 4,0
48750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48760 case 8:
48770 No=9:sp_on 10,1:sp_on 7,0
48780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48790 case 9:
48800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48810 case 6:
48820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48830 end select
48840 'Okから右ボタンを押して何もしない ここまで
48850 endif
48860 '十字キー　ここまで
48870 '右の丸ボタン + Enter key 決定キー
48880 if ((bg=2) or (key$=chr$(13))) then
48890 select case count
48900 case 0:
48910 if (No=-1) then No=0
48920 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
48930 if (buf_female_day > 1 and buf_female_day < 10)  then
48940 buf_female_Day$ = str$(buf_female_day)
48950 'buf_month=No
48960 endif
48970 if (buf_female_day = 1)  then
48980 buf_female_Day$ = str$(buf_female_day) + "*"
48990 'c=buf_month
49000 endif
49010 locate 1,3
49020 print "                                     "
49030 color RGB(255,255,255)
49040 locate 1,3
49050 print "女性の生まれた日(1月~31月):" + buf_female_Day$
49060 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49070 case 1:
49080 count = 2:
49090 'c = val(buf_Month$)
49100 if (No = -1) then
49110 'count=0
49120 No=0
49130 day=buf_female_day
49140 buf_female_day=val(buf_female_day$)
49150 day=bu_female_day
49160 buf_female_day(1)=day
49170 '生まれた日に飛ぶ
49180 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49190 else
49200 bu_female_day = c*10 + No
49210 'if (buf_month = 1) then
49220 'buf_Month$ = str$(buf_month)
49230 'endif
49240 buf_female_day$ = str$(buf_female_day)
49250 buf_female_day(1) = buf_female_day
49260 locate 0,3
49270 print "                                           "
49280 locate 1,3
49290 color Rgb(255,255,255)
49300 print "女性の生まれた日(1月~31月):" + buf_female_Day$
49310 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49320 endif
49330 case 2:
49340 '==================================
49350 '何もしない
49360 'coun = 2
49370 '==================================
49380 'c= val(buf_Month$)
49390 'buf_month = c*10 + No
49400 'buf_Month$ = str$(buf_month)
49410 'locate 2,3
49420 'print "上司の生まれた月(1月～12月):";buf_Month$
49430 'goto Jyoushi_Input_Born_Month2:
49440 'case 3:
49450 'count=4
49460 'b=val(buf_month$)
49470 'buf_month=c*10+No
49480 'buf_Month$=str$(buf_month)
49490 'locate 2,3
49500 'print "上司の生まれた月(1月～12月):";buf_Month$
49510 'buf_month=val(buf_Month$)
49520 'year=val(buf_year$)
49530 if (No=-1) then
49540 No=0
49550 goto Danjyo_Aisyou_Input_Male_Born_Day:
49560 else
49570 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49580 endif
49590 'case 4:
49600 'bufyear=buf_year
49610 'if (No=-1) then
49620 'buf_month = val(buf_Month$)
49630 'month = buf_month
49640 'sp_on 14,0
49650 'goto Input_Born_Day:
49660 'else
49670 'goto Input_Born_Month2:
49680 'endif
49690 end select
49700 endif
49710 '左の丸ボタン　キャンセル
49720 if (bg2=2) then
49730 select case count2
49740 case 0:
49750 if (No = -1) then
49760 buf_female_day=0:buf_female_Day$="**"
49770 count=0
49780 'goto rewrite2:
49790 else
49800 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
49810 buf_female_day = 0:buf_female_Day$ = "**"
49820 locate 0,3
49830 color rgb(255,255,255)
49840 print "                                       "
49850 goto rewrite2:
49860 if (No>12) then
49870 ui_msg"値が範囲外です。"
49880 goto rewrite2:
49890 endif
49900 endif
49910 endif
49920 rewrite2:
49930 locate 2,3
49940 color rgb(255,255,255)
49950 print "                                      "
49960 locate 2,3
49970 print "女性の生まれた日(1月~31月):"+buf_female_Day$
49980 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49990 end select
50000 'endif
50010 endif
50020 end
50030 '-------生まれた日　女性 ここまで-------------
50040 '1.男女の相性 ここまで
50050 '2.ビジネスの相性　
50060 '1.1人目のビジネスの相性　名前入力　1人目
50070 Business_Aishou_Input_1_parson:
50080 No=0:color RGB(255,255,255)
50090 cls 3:init "kb:2"
50100 gload Gazo$ + "Screen1.png",0,0,0
50110 gload Gazo$ + "downscreen.png",0,0,800
50120 play "":color rgb(255,0,0):name$ = ""
50130 locate 0,1
50140 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
50150 color rgb(255,255,255):
50160 locate 0,3
50170 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
50180 print "入れてください" + chr$(13)
50190 locate 0,15:color rgb(0,0,0)
50200 Input "1人目の名前:",name$
50210 'color rgb(0,0,0)
50220 'locate 0,13:print "                                     "
50230 'locate 0,13:print "1人目の名前を入力してエンターキー":
50240 'buffer_name$(0):1人目の名前
50250 buffer_name$(0) = name$:
50260 goto Business_Aishou_Input_2_Parson:
50270 '2.2人目のビジネスの相性 名前入力 2人目
50280 Business_Aishou_Input_2_Parson:
50290 cls 3:init "kb:2":name$ = "":No=0
50300 gload Gazo$ + "Screen1.png",0,0,0
50310 gload Gazo$ + "downscreen.png",0,0,800
50320 color rgb(255,0,0)
50330 'Title
50340 locate 0,1
50350 print "ビジネスの相性　2人目"
50360 locate 0,3
50370 color rgb(255,255,255)
50380 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
50390 print "入れてください" + chr$(13)
50400 locate 0,15:color rgb(0,0,0)
50410 Input "2人目の名前:",name$
50420 'color rgb(0,0,0)
50430 'locate 0,15:print "                                              "
50440 'locate 0,15:print "2人目の名前を入力してエンター ":
50450 '2人目
50460 '2人目の名前を入れるに代入
50470 buffer_name$(1) = name$:
50480 goto Select_jyoushi:
50490 '3.上司の選択
50500 Select_jyoushi:
50510 cls 3:gload Gazo$ + "Screen1.png",0,0,0
50520 gload Gazo$ + "downscreen.png",0,0,800
50530 init "kb:4":No=0
50540 color rgb(0,0,255)
50550 locate 1,1
50560 print "上司の選択"
50570 color rgb(255,255,255)
50580 locate 0,4:print "名前から上司の方を選んでください"
50590 locate 0,6
50600 print " :";buffer_name$(0);"が上 司";chr$(13)
50610 locate 0,8
50620 print " :";buffer_name$(1);"が上 司";chr$(13)
50630 locate 0,15:
50640 print "                                     "
50650 locate 0,15:color rgb(0,0,0)
50660 print "上司の方を選んで右の丸ボタン"
50670 sp_on 0,1:sp_on 1,0:sp_on 2,0
50680 Select_jyoushi2:
50690 'ここでNo=0をおいてはいけない
50700 y=0:key$="":bg=0:
50710 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
50720 y = stick(1)
50730 key$ = inkey$
50740 bg = strig(1)
50750 pause 5
50760 wend
50770 '1.カーソル下の処理　or 十字キーの下処理
50780 if ((key$ = chr$(31)) or (y = 1)) then
50790 select case No
50800 case 0:
50810 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
50820 case 1:
50830 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
50840 end select
50850 endif
50860 '2.カーソル上処理　or 十字キーの上の処理
50870 if ((key$ = chr$(30)) or (y = -1)) then
50880 select case No
50890 case 0:
50900 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
50910 case 1:
50920 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
50930 end select
50940 endif
50950 if ((key$ = chr$(13)) or (bg = 2)) then
50960 select case No
50970 case 0:
50980 '上司(name1)を配列に代入
50990 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
51000 case 1:
51010 '上司（name2)を配列に代入
51020 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
51030 end select
51040 endif
51050 '3.決定ボタン　Enter or 右の丸ボタン
51060 '1.誕生日入力
51070 '1-1.生まれた年を入力
51080 'Jyoushi_born_year:
51090 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
51100 '---------------------------------------------'
51110 '誕生日入力(生れた年代)
51120 Jyoushi_Input_Seireki:
51130 'buf_Jyoushi_Born_Year:上司の生まれた年代
51140 'buf_Jyoushi_Born_Day(0) = born_year
51150 cls 3:play "":count=0:count2=0
51160 init"kb:4"
51170 'No=-1:Okのとき
51180 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
51190 for i=0 to 3
51200 buf_Jyoushi_Born_Day(i)=0
51210 next i
51220 gload Gazo$ + "Screen2.png",0,0,0
51230 gload Gazo$ + "downscreen.png",0,0,800
51240 'Init"kb:2"
51250 '音声ファイル再生 2023.06.07
51260 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
51270 font 48
51280 locate 0,1
51290 '文字色：黒　 color rgb(0,0,0)
51300 color rgb(255,255,255)
51310 print "上司の生まれた年代を入れて下さい" + chr$(13)
51320 color rgb(255,255,255)
51330 locate 1,3
51340 print "上司の生まれた年代(西暦4桁):";buf_year$
51350 color rgb(255,255,255)
51360 'locate 4,6:print ":7"
51370 'locate 9,6:print ":8"
51380 'locate 12,6:print ":9"
51390 'locate 4,6
51400 'print ":7  :8  :9" + chr$(13)
51410 'color rgb(255,255,255)
51420 'locate 4,8
51430 'print ":4  :5  :6" + chr$(13)
51440 'color rgb(255,255,255)
51450 'locate 4,10
51460 'print ":1  :2  :3" + chr$(13)
51470 'locate 4,12
51480 'print "    :0"
51490 'locate 12,12
51500 'color rgb(0,0,255)
51510 'print ":Ok"
51520 sp_on 4,0: sp_on 5,0:sp_on 6,0
51530 sp_on 7,0:sp_on 8,0:sp_on 9,0
51540 sp_on 10,0:sp_on 11,0:sp_on 12,0
51550 sp_on 13,0:sp_on 14,1
51560 Jyoushi_Input_Seireki2:
51570 key$="":bg=0:y=0:y2=0:bg2=0:
51580 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
51590 key$ = inkey$
51600 bg = strig(1)
51610 y = stick(1)
51620 y2 = stick(0)
51630 bg2=strig(0)
51640 pause 5
51650 wend
51660 '十字キー　ここから
51670 '上の矢印　または、十字キー上
51680 if ((y = -1) or (key$ = chr$(30))) then
51690 select case No
51700 'No=-1:okのとき:初期の状態
51710 '0kボタンから３に移動
51720 '上に行く 処理
51730 case -1:
51740 No=3:sp_on 12,1:sp_on 14,0
51750 pause 200:goto Jyoushi_Input_Seireki2:
51760 '選択肢:3
51770 '3ボタンから 6に移動
51780 case 3:
51790 No=6:sp_on 12,0:sp_on 11,1
51800 pause 200:goto Jyoushi_Input_Seireki2:
51810 '6ボタンから ９に移動
51820 case 6:
51830 No=9:sp_on 10,1:sp_on 11,0
51840 pause 200:goto Jyoushi_Input_Seireki2:
51850 '6ボタンから ９に移動　ここまで
51860 '9で上を押して何もしない
51870 case 9:
51880 '何もしない
51890 No=9
51900 pause 200:goto Jyoushi_Input_Seireki2:
51910 '9で上を押しても何もしない　ここまで
51920 '上　 0ボタンから2ボタン
51930 'sp_on 6,1:1
51940 'sp_on 8,1:5
51950 'sp_on 7,1:7
51960 case 0:
51970 No=2:sp_on 13,0:sp_on 9,1:
51980 pause 200:goto Jyoushi_Input_Seireki2:
51990 '上  0ボタンから2ボタン　ここまで
52000 '2から５になる 上
52010 case 2:
52020 No=5:sp_on 8,1:sp_on 9,0:
52030 pause 200:goto Jyoushi_Input_Seireki2:
52040 case 5:
52050 No=8:sp_on 7,1:sp_on 8,0
52060 pause 200:goto Jyoushi_Input_Seireki2:
52070 case 8:
52080 pause 200:goto Jyoushi_Input_Seireki2:
52090 case 1:
52100 No=4:sp_on 5,1:sp_on 6,0
52110 pause 200:goto Jyoushi_Input_Seireki2:
52120 case 4:
52130 No=7:sp_on 4,1:sp_on 5,0
52140 pause 200:goto Jyoushi_Input_Seireki2:
52150 case 7:
52160 pause 200:goto Jyoushi_Input_Seireki2:
52170 end select
52180 endif
52190 '左３　ここまで
52200 '下の矢印
52210 '中央 2
52220 if ((y=1) or (key$ = chr$(31))) then
52230 select case No
52240 '9から６に下げる
52250 case 9:
52260 No=6:sp_on 11,1:sp_on 10,0
52270 pause 200:goto Jyoushi_Input_Seireki2:
52280 '6から３に下げる
52290 case 6:
52300 No=3:sp_on 12,1:sp_on 11,0
52310 pause 200:goto Jyoushi_Input_Seireki2:
52320 '3から０ｋに変える
52330 case 3:
52340 No=-1:sp_on 14,1:sp_on 12,0
52350 pause 200:goto Jyoushi_Input_Seireki2:
52360 'Okから下のボタンを押しても何もしない
52370 case -1:
52380 pause 200:goto Jyoushi_Input_Seireki2:
52390 case 8:
52400 No=5:sp_on 8,1:sp_on 7,0
52410 pause 200:goto Jyoushi_Input_Seireki2:
52420 case 5:
52430 No=2:sp_on 9,1:sp_on 8,0
52440 pause 200:goto Jyoushi_Input_Seireki2:
52450 case 2:
52460 No=0:sp_on 13,1:sp_on 9,0
52470 pause 200:goto Jyoushi_Input_Seireki2:
52480 case 0:
52490 pause 200:goto Jyoushi_Input_Seireki2:
52500 case 7:
52510 No=4:sp_on 5,1:sp_on 4,0
52520 pause 200:goto Jyoushi_Input_Seireki2:
52530 case 4:
52540 No=1:sp_on 6,1:sp_on 5,0
52550 pause 200:goto Jyoushi_Input_Seireki2:
52560 case 1:
52570 pause 200:goto Jyoushi_Input_Seireki2:
52580 end select
52590 endif
52600 '左へボタン 十字キー　左　or 　カーソル左
52610 if ((y2 = -1) or (key$ = chr$(29))) then
52620 select case No
52630 'Ok ボタン  Okから　左　０に行く
52640 case -1:
52650 No=0:sp_on 13,1:sp_on 14,0
52660 pause 200:goto Jyoushi_Input_Seireki2:
52670 '0 ボタン  左　何もしない
52680 case 0:
52690 pause 200:goto Jyoushi_Input_Seireki2:
52700 case 3:
52710 No=2:sp_on 9,1:sp_on 12,0:
52720 pause 200:goto Jyoushi_Input_Seireki2:
52730 case 2:
52740 No=1:sp_on 6,1:sp_on 9,0:
52750 pause 200:goto Jyoushi_Input_Seireki2:
52760 case 1:
52770 pause 200:goto Jyoushi_Input_Seireki2:
52780 case 6:
52790 No=5:sp_on 8,1:sp_on 11,0
52800 pause 200:goto Jyoushi_Input_Seireki2:
52810 case 5:
52820 No=4:sp_on 5,1:sp_on 8,0
52830 pause 200:goto Jyoushi_Input_Seireki2:
52840 case 4:
52850 pause 200:goto Jyoushi_Input_Seireki2:
52860 case 9:
52870 No=8:sp_on 7,1:sp_on 10,0
52880 pause 200:goto Jyoushi_Input_Seireki2:
52890 case 8:
52900 No=7:sp_on 4,1:sp_on 7,0
52910 pause 200:goto Jyoushi_Input_Seireki2:
52920 case 7:
52930 pause 200:goto Jyoushi_Input_Seireki2:
52940 end select
52950 endif
52960 '右  十字キー　右　or カーソル　右
52970 if ((y2 = 1) or (key$ = chr$(28))) then
52980 select case No
52990 '0ボタンからokボタン右に移動
53000 case 0:
53010 No=-1:sp_on 14,1:sp_on 13,0
53020 pause 200:goto Jyoushi_Input_Seireki2:
53030 '0ボタンからokボタン 右に移動　ここまで
53040 'OKボタンで右を押して何もしない
53050 case -1:
53060 pause 200:goto Jyoushi_Input_Seireki2:
53070 case 1:
53080 No=2:sp_on 9,1:sp_on 6,0
53090 pause 200:goto Jyoushi_Input_Seireki2:
53100 case 2:
53110 No=3:sp_on 12,1:sp_on 9,0
53120 pause 200:goto Jyoushi_Input_Seireki2:
53130 case 3:
53140 pause 200:goto Jyoushi_Input_Seireki2:
53150 case 4:
53160 No=5:sp_on 8,1:sp_on 5,0
53170 pause 200:goto Jyoushi_Input_Seireki2:
53180 case 5:
53190 No=6:sp_on 11,1:sp_on 8,0
53200 pause 200:goto Jyoushi_Input_Seireki2:
53210 case 7:
53220 No=8:sp_on 7,1:sp_on 4,0
53230 pause 200:goto Jyoushi_Input_Seireki2:
53240 case 8:
53250 No=9:sp_on 10,1:sp_on 7,0
53260 pause 200:goto Jyoushi_Input_Seireki2:
53270 case 9:
53280 pause 200:goto Jyoushi_Input_Seireki2:
53290 case 6:
53300 pause 200:goto Jyoushi_Input_Seireki2:
53310 end select
53320 'Okから右ボタンを押して何もしない ここまで
53330 endif
53340 '十字キー　ここまで
53350 '==============================
53360 'ここから
53370 '==============================
53380 if ((bg = 2) or (key$ = chr$(13))) then
53390 select case count
53400 case 0:
53410 count = 1
53420 if (No = -1) then
53430 count = 0:No=0
53440 buf_Jyoushi_Born_Day(0) = No
53450 'Okボタンを押したとき
53460 goto Jyoushi_Input_Seireki2:
53470 else
53480 'Okボタン以外が押されたとき
53490 if (No >= 1 and No <= 2) then
53500 buf_year$="":buf_year$ = str$(No) + "***"
53510 buf_year = No:a= No
53520 buf_Jyoushi_Born_Day(0) = No
53530 locate 1,3
53540 color rgb(255,255,255)
53550 print "上司の生まれた年代(西暦4桁):";buf_year$
53560 goto Jyoushi_Input_Seireki2:
53570 else
53580 count=0
53590 ui_msg"数字が範囲外になります。"
53600 buf_year$="":buf_year=0
53610 goto Jyoushi_Input_Seireki2:
53620 endif
53630 endif
53640 case 1:
53650 count = 2
53660 if (No = -1) then
53670 count = 1
53680 goto Jyoushi_Input_Seireki2:
53690 else
53700 buf_year = a * 10 + No
53710 b=buf_year
53720 buf_year$ = str$(buf_year) + "**"
53730 buf_Jyoushi_Born_Day(0)=buf_year
53740 locate 1,3
53750 color rgb(255,255,255)
53760 print "                                                                "
53770 locate 1,3
53780 print "上司の生まれた年代(西暦4桁):" + buf_year$
53790 'if (No = -1) then
53800 'count=1
53810 goto Jyoushi_Input_Seireki2:
53820 endif
53830 case 2:
53840 count=3
53850 if (No=-1) then
53860 count =2
53870 goto Jyoushi_Input_Seireki2:
53880 else
53890 buf_year = b * 10 + No
53900 c=buf_year
53910 buf_year$ = str$(buf_year) + "*"
53920 buf_Jyoushi_Born_Day(0) = buf_year
53930 locate 1,3
53940 color rgb(255,255,255)
53950 print "                                        "
53960 locate 1,3
53970 print "上司の生まれた年代(西暦4桁):";buf_year$
53980 goto Jyoushi_Input_Seireki2:
53990 endif
54000 case 3:
54010 count=4
54020 if (No = -1) then
54030 No=0
54040 goto Jyoushi_Input_Seireki2:
54050 else
54060 buf_year = c * 10 + No
54070 buf_year$ = str$(buf_year)
54080 buf_Jyoushi_Born_Day(0) = buf_year
54090 locate 1,3
54100 color RGB(255,255,255)
54110 print "                                      "
54120 locate 1,3
54130 print "上司の生まれた年代(西暦4桁):";buf_year$
54140 buf_year=val(buf_year$)
54150 'year=val(buf_year$)
54160 'if (No=-1) then
54170 'goto Input_Born_Month:
54180 'else
54190 goto Jyoushi_Input_Seireki2:
54200 endif
54210 case 4:
54220 'bufyear=buf_year
54230 if (No=-1) then
54240 buf_year = val(buf_year$)
54250 buf_Jyoushi_Born_Day(0)=buf_year
54260 sp_on 14,0:No=0
54270 goto Jyoushi_Input_Born_Month:
54280 else
54290 goto Jyoushi_Input_Seireki2:
54300 endif
54310 end select
54320 endif
54330 '===========================
54340 'ここまでを部下のところにコピーする.
54350 '===========================
54360 if (bg2 = 2) then
54370 select case count2
54380 case 0:
54390 if (No = -1) then
54400 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
54410 count=0
54420 locate 1,3
54430 color rgb(255,255,255)
54440 print "                                      "
54450 locate 1,3
54460 print "上司の生まれた年代（西暦4桁):" + buf_year$
54470 goto Jyoushi_Input_Seireki2:
54480 else
54490 '(buf_year=0) then
54500 buf_year=0:buf_year$="****"
54510 locate 1,3
54520 print "                                       "
54530 locate 1,3
54540 print "上司の生まれた年代(西暦4桁):"+buf_year$
54550 goto Jyoushi_Input_Seireki2:
54560 'endif
54570 endif
54580 end select
54590 endif
54600 'Input"上司の生れた年代(4桁,〜2025年):",year
54610 'if year > 2025 then goto Jyoushi_Input_Seireki:
54620 'if year = 123 then cls 3:cls 4:goto Main_Screen:
54630 '"4桁目"
54640 'bufyear4 = fix(year / 1000)
54650 '"3桁目"
54660 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
54670 '"2桁目"
54680 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
54690 '"1桁目"
54700 'bufyear1 = fix((year - ((bufyear4*
54710 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
54720 '2.生まれた月を入力
54730 Jyoushi_Input_Born_Month:
54740 cls 3:play "":count=0:count2=0
54750 'No=-1:Okのとき
54760 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
54770 for i=0 to 1
54780 buf_month(i)=0
54790 next i
54800 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
54810 gload Gazo$ + "Screen2.png",0,0,0
54820 gload Gazo$ + "downscreen.png",0,0,800
54830 'Init"kb:4"
54840 '音声ファイル再生 2023.06.07
54850 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
54860 font 48
54870 locate 0,1
54880 '文字色：黒　 color rgb(0,0,0)
54890 '文字色:白
54900 color rgb(255,255,255)
54910 print "上司の生まれた月を入れて下さい" + chr$(13)
54920 '文字色:白
54930 color rgb(255,255,255)
54940 locate 1,3
54950 '文字色:白
54960 print "上司の生まれた月(1月~12月):"+buf_Month$
54970 color rgb(255,255,255)
54980 'locate 4,6:print ":7"
54990 'locate 9,6:print ":8"
55000 'locate 12,6:print ":9"
55010 'locate 4,6
55020 '文字色:赤
55030 'print ":7  :8  :9" + chr$(13)
55040 'color rgb(255,255,255)
55050 'locate 4,8
55060 'print ":4  :5  :6" + chr$(13)
55070 'color rgb(255,255,255)
55080 'locate 4,10
55090 'print ":1  :2  :3" + chr$(13)
55100 'locate 4,12
55110 'print "    :0"
55120 'locate 12,12
55130 'color rgb(0,0,255)
55140 'print ":Ok"
55150 sp_on 4,0: sp_on 5,0:sp_on 6,0
55160 sp_on 7,0:sp_on 8,0:sp_on 9,0
55170 sp_on 10,0:sp_on 11,0:sp_on 12,0
55180 sp_on 13,0:sp_on 14,1
55190 Jyoushi_Input_Born_Month2:
55200 key$="":bg=0:y=0:y2=0:bg2=0
55210 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
55220 key$ = inkey$
55230 bg = strig(1)
55240 y = stick(1)
55250 y2 = stick(0)
55260 bg2 = strig(0)
55270 pause 5
55280 wend
55290 '十字キー　ここから
55300 '上の矢印　または、十字キー上
55310 if ((y = -1) or (key$ = chr$(30))) then
55320 select case No
55330 'No=-1:okのとき:初期の状態
55340 '0kボタンから３に移動
55350 '上に行く 処理
55360 case -1:
55370 No=3:sp_on 12,1:sp_on 14,0
55380 pause 200:goto Jyoushi_Input_Born_Month2:
55390 '選択肢:3
55400 '3ボタンから 6に移動
55410 case 3:
55420 No=6:sp_on 12,0:sp_on 11,1
55430 pause 200:goto Jyoushi_Input_Born_Month2:
55440 '6ボタンから ９に移動
55450 case 6:
55460 No=9:sp_on 10,1:sp_on 11,0
55470 pause 200:goto Jyoushi_Input_Born_Month2:
55480 '6ボタンから ９に移動　ここまで
55490 '9で上を押して何もしない
55500 case 9:
55510 '何もしない
55520 No=9
55530 pause 200:goto Jyoushi_Input_Born_Month2:
55540 '9で上を押しても何もしない　ここまで
55550 '上　 0ボタンから2ボタン
55560 'sp_on 6,1:1
55570 'sp_on 8,1:5
55580 'sp_on 7,1:7
55590 case 0:
55600 No=2:sp_on 13,0:sp_on 9,1:
55610 pause 200:goto Jyoushi_Input_Born_Month2:
55620 '上  0ボタンから2ボタン　ここまで
55630 '2から５になる 上
55640 case 2:
55650 No=5:sp_on 8,1:sp_on 9,0:
55660 pause 200:goto Jyoushi_Input_Born_Month2:
55670 case 5:
55680 No=8:sp_on 7,1:sp_on 8,0
55690 pause 200:goto Jyoushi_Input_Born_Month2:
55700 case 8:
55710 pause 200:goto Input_Born_Month2:
55720 case 1:
55730 No=4:sp_on 5,1:sp_on 6,0
55740 pause 200:goto Jyoushi_Input_Born_Month2:
55750 case 4:
55760 No=7:sp_on 4,1:sp_on 5,0
55770 pause 200:goto Jyoushi_Input_Born_Month2:
55780 case 7:
55790 pause 200:goto Input_Born_Month2:
55800 end select
55810 endif
55820 '左３　ここまで
55830 '下の矢印
55840 '中央 2
55850 if ((y=1) or (key$ = chr$(31))) then
55860 select case No
55870 '9から６に下げる
55880 case 9:
55890 No=6:sp_on 11,1:sp_on 10,0
55900 pause 200:goto Jyoushi_Input_Born_Month2:
55910 '6から３に下げる
55920 case 6:
55930 No=3:sp_on 12,1:sp_on 11,0
55940 pause 200:goto Jyoushi_Input_Born_Month2:
55950 '3から０ｋに変える
55960 case 3:
55970 No=-1:sp_on 14,1:sp_on 12,0
55980 pause 200:goto Jyoushi_Input_Born_Month2:
55990 'Okから下のボタンを押しても何もしない
56000 case -1:
56010 pause 200:goto Jyoushi_Input_Born_Month2:
56020 case 8:
56030 No=5:sp_on 8,1:sp_on 7,0
56040 pause 200:goto Jyoushi_Input_Born_Month2:
56050 case 5:
56060 No=2:sp_on 9,1:sp_on 8,0
56070 pause 200:goto Jyoushi_Input_Born_Month2:
56080 case 2:
56090 No=0:sp_on 13,1:sp_on 9,0
56100 pause 200:goto Jyoushi_Input_Born_Month2:
56110 case 0:
56120 pause 200:goto Jyoushi_Input_Born_Month2:
56130 case 7:
56140 No=4:sp_on 5,1:sp_on 4,0
56150 pause 200:goto Jyoushi_Input_Born_Month2:
56160 case 4:
56170 No=1:sp_on 6,1:sp_on 5,0
56180 pause 200:goto Jyoushi_Input_Born_Month2:
56190 case 1:
56200 pause 200:goto Jyoushi_Input_Born_Month2:
56210 end select
56220 endif
56230 '左へボタン 十字キー　左　or 　カーソル左
56240 if ((y2 = -1) or (key$ = chr$(29))) then
56250 select case No
56260 'Ok ボタン  Okから　左　０に行く
56270 case -1:
56280 No=0:sp_on 13,1:sp_on 14,0
56290 pause 200:goto Jyoushi_Input_Born_Month2:
56300 '0 ボタン  左　何もしない
56310 case 0:
56320 pause 200:goto Jyoushi_Input_Born_Month2:
56330 case 3:
56340 No=2:sp_on 9,1:sp_on 12,0:
56350 pause 200:goto Jyoushi_Input_Born_Month2:
56360 case 2:
56370 No=1:sp_on 6,1:sp_on 9,0:
56380 pause 200:goto Jyoushi_Input_Born_Month2:
56390 case 1:
56400 pause 200:goto Jyoushi_Input_Born_Month2:
56410 case 6:
56420 No=5:sp_on 8,1:sp_on 11,0
56430 pause 200:goto Jyoushi_Input_Born_Month2:
56440 case 5:
56450 No=4:sp_on 5,1:sp_on 8,0
56460 pause 200:goto Jyoushi_Input_Born_Month2:
56470 case 4:
56480 pause 200:goto Jyoushi_Input_Born_Month2:
56490 case 9:
56500 No=8:sp_on 7,1:sp_on 10,0
56510 pause 200:goto Input_Born_Month2:
56520 case 8:
56530 No=7:sp_on 4,1:sp_on 7,0
56540 pause 200:goto Jyoushi_Input_Born_Month2:
56550 case 7:
56560 pause 200:goto Jyoushi_Input_Born_Month2:
56570 end select
56580 endif
56590 '右  十字キー　右　or カーソル　右
56600 if ((y2 = 1) or (key$ = chr$(28))) then
56610 select case No
56620 '0ボタンからokボタン右に移動
56630 case 0:
56640 No=-1:sp_on 14,1:sp_on 13,0
56650 pause 200:goto Jyoushi_Input_Born_Month2:
56660 '0ボタンからokボタン 右に移動　ここまで
56670 'OKボタンで右を押して何もしない
56680 case -1:
56690 pause 200:goto Jyoushi_Input_Born_Month2:
56700 case 1:
56710 No=2:sp_on 9,1:sp_on 6,0
56720 pause 200:goto Jyoushi_Input_Born_Month2:
56730 case 2:
56740 No=3:sp_on 12,1:sp_on 9,0
56750 pause 200:goto Jyoushi_Input_Born_Month2:
56760 case 3:
56770 pause 200:goto Jyoushi_Input_Born_Month2:
56780 case 4:
56790 No=5:sp_on 8,1:sp_on 5,0
56800 pause 200:goto Jyoushi_Input_Born_Month2:
56810 case 5:
56820 No=6:sp_on 11,1:sp_on 8,0
56830 pause 200:goto Jyoushi_Input_Born_Month2:
56840 case 7:
56850 No=8:sp_on 7,1:sp_on 4,0
56860 pause 200:goto Jyoushi_Input_Born_Month2:
56870 case 8:
56880 No=9:sp_on 10,1:sp_on 7,0
56890 pause 200:goto Jyoushi_Input_Born_Month2:
56900 case 9:
56910 pause 200:goto Jyoushi_Input_Born_Month2:
56920 case 6:
56930 pause 200:goto Jyoushi_Input_Born_Month2:
56940 end select
56950 'Okから右ボタンを押して何もしない ここまで
56960 endif
56970 '十字キー　ここまで
56980 '右の丸ボタン + Enter key 決定キー
56990 if ((bg=2) or (key$=chr$(13))) then
57000 select case count
57010 case 0:
57020 if (No=-1) then No=0
57030 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
57040 if (buf_month > 1 and buf_month < 10)  then
57050 buf_Month$ = str$(buf_month)
57060 'buf_month=No
57070 endif
57080 if (buf_month = 1)  then
57090 buf_Month$ = str$(buf_month) + "*"
57100 'c=buf_month
57110 endif
57120 locate 1,3
57130 print "                                     "
57140 color RGB(255,255,255)
57150 locate 1,3
57160 print "上司の生まれた月(1月~12月):" + buf_Month$
57170 goto Jyoushi_Input_Born_Month2:
57180 case 1:
57190 count = 2:
57200 'c = val(buf_Month$)
57210 if (No = -1) then
57220 'count=0
57230 No=0
57240 month=buf_month
57250 buf_month=val(buf_Month$)
57260 month=buf_month
57270 buf_Jyoushi_Born_Day(1)=month
57280 '生まれた日に飛ぶ
57290 goto Jyoushi_Input_Born_Day:
57300 else
57310 buf_month = c*10 + No
57320 'if (buf_month = 1) then
57330 'buf_Month$ = str$(buf_month)
57340 'endif
57350 buf_Month$ = str$(buf_month)
57360 buf_Jyoushi_Born_Day(1) = buf_month
57370 locate 0,3
57380 print "                                           "
57390 locate 1,3
57400 color Rgb(255,255,255)
57410 print "上司の生まれた月(1月~12月):" + buf_Month$
57420 goto Jyoushi_Input_Born_Month2:
57430 endif
57440 case 2:
57450 '==================================
57460 '何もしない
57470 'coun = 2
57480 '==================================
57490 'c= val(buf_Month$)
57500 'buf_month = c*10 + No
57510 'buf_Month$ = str$(buf_month)
57520 'locate 2,3
57530 'print "上司の生まれた月(1月～12月):";buf_Month$
57540 'goto Jyoushi_Input_Born_Month2:
57550 'case 3:
57560 'count=4
57570 'b=val(buf_month$)
57580 'buf_month=c*10+No
57590 'buf_Month$=str$(buf_month)
57600 'locate 2,3
57610 'print "上司の生まれた月(1月～12月):";buf_Month$
57620 'buf_month=val(buf_Month$)
57630 'year=val(buf_year$)
57640 if (No=-1) then
57650 No=0
57660 goto Jyoushi_Input_Born_Day:
57670 else
57680 goto Jyoushi_Input_Born_Month2:
57690 endif
57700 'case 4:
57710 'bufyear=buf_year
57720 'if (No=-1) then
57730 'buf_month = val(buf_Month$)
57740 'month = buf_month
57750 'sp_on 14,0
57760 'goto Input_Born_Day:
57770 'else
57780 'goto Input_Born_Month2:
57790 'endif
57800 end select
57810 endif
57820 '左の丸ボタン　キャンセル
57830 if (bg2=2) then
57840 select case count2
57850 case 0:
57860 if (No = -1) then
57870 buf_month=0:buf_Month$="**"
57880 count=0
57890 'goto rewrite2:
57900 else
57910 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
57920 buf_month = 0:buf_Month$ = "**"
57930 locate 0,3
57940 color rgb(255,255,255)
57950 print "                                       "
57960 goto rewrite2:
57970 if (No>12) then
57980 ui_msg"値が範囲外です。"
57990 goto rewrite2:
58000 endif
58010 endif
58020 endif
58030 rewrite2:
58040 locate 2,3
58050 color rgb(255,255,255)
58060 print "                                      "
58070 locate 2,3
58080 print "上司の生まれた月(1月~12月):"+buf_Month$
58090 goto Jyoushi_Input_Born_Month2:
58100 end select
58110 'endif
58120 endif
58130 end
58140 'end
58150 '生れた日を入力
58160 Jyoushi_Input_Born_Day:
58170 '生まれた日入力
58180 cls 3:play ""
58190 'No=-1:Okのとき
58200 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
58210 for i=0 to 1
58220 buf_day(i)=0
58230 next i
58240 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
58250 gload Gazo$ + "Screen2.png",0,0,0
58260 gload Gazo$ + "downscreen.png",0,0,800
58270 'Init"kb:2"
58280 '音声ファイル再生 2023.06.07
58290 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
58300 font 48
58310 locate 1,1
58320 '文字色：黒　 color rgb(0,0,0)
58330 color rgb(255,255,255)
58340 print "上司の生まれた日を入れて下さい" + chr$(13)
58350 locate 1,3
58360 color rgb(255,255,255)
58370 print "                                      "
58380 locate 1,3
58390 print "上司の生まれた日(1日~31日):"+buf_Day$
58400 color rgb(255,255,255)
58410 'locate 4,6:print ":7"
58420 'locate 9,6:print ":8"
58430 'locate 12,6:print ":9"
58440 'locate 4,6
58450 'print ":7  :8  :9" + chr$(13)
58460 'color rgb(255,255,255)
58470 'locate 4,8
58480 'print ":4  :5  :6" + chr$(13)
58490 'color rgb(255,255,255)
58500 'locate 4,10
58510 'print ":1  :2  :3" + chr$(13)
58520 'locate 4,12
58530 'print "    :0"
58540 'locate 12,12
58550 'color rgb(0,0,255)
58560 'print ":Ok"
58570 sp_on 4,0: sp_on 5,0:sp_on 6,0
58580 sp_on 7,0:sp_on 8,0:sp_on 9,0
58590 sp_on 10,0:sp_on 11,0:sp_on 12,0
58600 sp_on 13,0:sp_on 14,1
58610 Jyoushi_Input_Born_Day2:
58620 key$="":bg=0:y=0:y2=0:bg2=0:
58630 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
58640 key$ = inkey$
58650 bg = strig(1)
58660 y = stick(1)
58670 y2 = stick(0)
58680 bg2 = strig(0)
58690 pause 5
58700 wend
58710 '十字キー　ここから
58720 '上の矢印　または、十字キー上
58730 if ((y = -1) or (key$ = chr$(30))) then
58740 select case No
58750 'No=-1:okのとき:初期の状態
58760 '0kボタンから３に移動
58770 '上に行く 処理
58780 case -1:
58790 No=3:sp_on 12,1:sp_on 14,0
58800 pause 200:goto Jyoushi_Input_Born_Day2:
58810 '選択肢:3
58820 '3ボタンから 6に移動
58830 case 3:
58840 No=6:sp_on 12,0:sp_on 11,1
58850 pause 200:goto Jyoushi_Input_Born_Day2:
58860 '6ボタンから ９に移動
58870 case 6:
58880 No=9:sp_on 10,1:sp_on 11,0
58890 pause 200:goto Jyoushi_Input_Born_Day2:
58900 '6ボタンから ９に移動　ここまで
58910 '9で上を押して何もしない
58920 case 9:
58930 '何もしない
58940 No=9
58950 pause 200:goto Jyoushi_Input_Born_Day2:
58960 '9で上を押しても何もしない　ここまで
58970 '上　 0ボタンから2ボタン
58980 'sp_on 6,1:1
58990 'sp_on 8,1:5
59000 'sp_on 7,1:7
59010 case 0:
59020 No=2:sp_on 13,0:sp_on 9,1:
59030 pause 200:goto Jyoushi_Input_Born_Day2:
59040 '上  0ボタンから2ボタン　ここまで
59050 '2から５になる 上
59060 case 2:
59070 No=5:sp_on 8,1:sp_on 9,0:
59080 pause 200:goto Jyoushi_Input_Born_Day2:
59090 case 5:
59100 No=8:sp_on 7,1:sp_on 8,0
59110 pause 200:goto Jyoushi_Input_Born_Day2:
59120 case 8:
59130 pause 200:goto Jyoushi_Input_Born_Day2:
59140 case 1:
59150 No=4:sp_on 5,1:sp_on 6,0
59160 pause 200:goto Jyoushi_Input_Born_Day2:
59170 case 4:
59180 No=7:sp_on 4,1:sp_on 5,0
59190 pause 200:goto Jyoushi_Input_Born_Day2:
59200 case 7:
59210 pause 200:goto Jyoushi_Input_Born_Day2:
59220 end select
59230 endif
59240 '左３　ここまで
59250 '下の矢印
59260 '中央 2
59270 if ((y=1) or (key$ = chr$(31))) then
59280 select case No
59290 '9から６に下げる
59300 case 9:
59310 No=6:sp_on 11,1:sp_on 10,0
59320 pause 200:goto Jyoushi_Input_Born_Day2:
59330 '6から３に下げる
59340 case 6:
59350 No=3:sp_on 12,1:sp_on 11,0
59360 pause 200:goto Jyoushi_Input_Born_Day2:
59370 '3から０ｋに変える
59380 case 3:
59390 No=-1:sp_on 14,1:sp_on 12,0
59400 pause 200:goto Jyoushi_Input_Born_Day2:
59410 'Okから下のボタンを押しても何もしない
59420 case -1:
59430 pause 200:goto Jyoushi_Input_Born_Day2:
59440 case 8:
59450 No=5:sp_on 8,1:sp_on 7,0
59460 pause 200:goto Jyoushi_Input_Born_Day2:
59470 case 5:
59480 No=2:sp_on 9,1:sp_on 8,0
59490 pause 200:goto Jyoushi_Input_Born_Day2:
59500 case 2:
59510 No=0:sp_on 13,1:sp_on 9,0
59520 pause 200:goto Jyoushi_Input_Born_Day2:
59530 case 0:
59540 pause 200:goto Jyoushi_Input_Born_Day2:
59550 case 7:
59560 No=4:sp_on 5,1:sp_on 4,0
59570 pause 200:goto Jyoushi_Input_Born_Day2:
59580 case 4:
59590 No=1:sp_on 6,1:sp_on 5,0
59600 pause 200:goto Jyoushi_Input_Born_Day2:
59610 case 1:
59620 pause 200:goto Jyoushi_Input_Born_Day2:
59630 end select
59640 endif
59650 '左へボタン 十字キー　左　or 　カーソル左
59660 if ((y2 = -1) or (key$ = chr$(29))) then
59670 select case No
59680 'Ok ボタン  Okから　左　０に行く
59690 case -1:
59700 No=0:sp_on 13,1:sp_on 14,0
59710 pause 200:goto Jyoushi_Input_Born_Day2:
59720 '0 ボタン  左　何もしない
59730 case 0:
59740 pause 200:goto Jyoushi_Input_Born_Day2:
59750 case 3:
59760 No=2:sp_on 9,1:sp_on 12,0:
59770 pause 200:goto Jyoushi_Input_Born_Day2:
59780 case 2:
59790 No=1:sp_on 6,1:sp_on 9,0:
59800 pause 200:goto Jyoushi_Input_Born_Day2:
59810 case 1:
59820 pause 200:goto Jyoushi_Input_Born_Day2:
59830 case 6:
59840 No=5:sp_on 8,1:sp_on 11,0
59850 pause 200:goto Jyoushi_Input_Born_Day2:
59860 case 5:
59870 No=4:sp_on 5,1:sp_on 8,0
59880 pause 200:goto Jyoushi_Input_Born_Day2:
59890 case 4:
59900 pause 200:goto Jyoushi_Input_Born_Day2:
59910 case 9:
59920 No=8:sp_on 7,1:sp_on 10,0
59930 pause 200:goto Jyoushi_Input_Born_Day2:
59940 case 8:
59950 No=7:sp_on 4,1:sp_on 7,0
59960 pause 200:goto Jyoushi_Input_Born_Day2:
59970 case 7:
59980 pause 200:goto Jyoushi_Input_Born_Day2:
59990 end select
60000 endif
60010 '右  十字キー　右　or カーソル　右
60020 if ((y2 = 1) or (key$ = chr$(28))) then
60030 select case No
60040 '0ボタンからokボタン右に移動
60050 case 0:
60060 No=-1:sp_on 14,1:sp_on 13,0
60070 pause 200:goto Jyoushi_Input_Born_Day2:
60080 '0ボタンからokボタン 右に移動　ここまで
60090 'OKボタンで右を押して何もしない
60100 case -1:
60110 pause 200:goto Jyoushi_Input_Born_Day2:
60120 case 1:
60130 No=2:sp_on 9,1:sp_on 6,0
60140 pause 200:goto Jyoushi_Input_Born_Day2:
60150 case 2:
60160 No=3:sp_on 12,1:sp_on 9,0
60170 pause 200:goto Jyoushi_Input_Born_Day2:
60180 case 3:
60190 pause 200:goto Jyoushi_Input_Born_Day2:
60200 case 4:
60210 No=5:sp_on 8,1:sp_on 5,0
60220 pause 200:goto Jyoushi_Input_Born_Day2:
60230 case 5:
60240 No=6:sp_on 11,1:sp_on 8,0
60250 pause 200:goto Jyoushi_Input_Born_Day2:
60260 case 7:
60270 No=8:sp_on 7,1:sp_on 4,0
60280 pause 200:goto Jyoushi_Input_Born_Day2:
60290 case 8:
60300 No=9:sp_on 10,1:sp_on 7,0
60310 pause 200:goto Jyoushi_Input_Born_Day2:
60320 case 9:
60330 pause 200:goto Jyoushi_Input_Born_Day2:
60340 case 6:
60350 pause 200:goto Jyoushi_Input_Born_Day2:
60360 end select
60370 'Okから右ボタンを押して何もしない ここまで
60380 endif
60390 '十字キー　ここまで
60400 '右の丸ボタンを押したとき
60410 if ((bg = 2) or (key$ = chr$(13))) then
60420 'count :決定ボタンを押した回数
60430 select case (count)
60440 '1桁目入力
60450 case 0:
60460 count = 1:
60470 if (No = -1) then
60480 '1桁目　OKでは何もしない
60490 No=c
60500 'goto Jyoushi_Input_Born_Day2:
60510 else
60520 'ok以外のボタンを押したとき
60530 buf_day = No:buf_Day$ = str$(No)
60540 buf_Jyoushi_Born_Day(2)=buf_day
60550 c=No
60560 locate 1,3
60570 print "                                      "
60580 color RGB(255,255,255)
60590 locate 1,3
60600 print "上司の生まれた日(1日~31日):" + buf_Day$
60610 endif
60620 'check2:
60630 'if (buf_day >= 1 and buf_day <= 9) then
60640 'sp_on 14,0
60650 'goto complate_jyoushi:
60660 'else
60670 'sp_on 14,0
60680 goto Jyoushi_Input_Born_Day2:
60690 'end
60700 'endif
60710 case 1:
60720 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
60730 count = 2:
60740 'locate 2,3
60750 'color RGB(255,255,255)
60760 'print "生まれた日(1日~31日):";buf_Day$
60770 'Okボタンを押したときの処理
60780 '入力値　10未満のとき
60790 'buf_day = c * 10 + No
60800 if (No = -1) then
60810 c=buf_day:No=0
60820 'buf_day = c
60830 buf_Day$ = str$(buf_day)
60840 '10以下のとき
60850 'if (buf_day < 10) then
60860 sp_on 14,0
60870 goto complate_jyoushi:
60880 'end
60890 'endif
60900 else
60910 'c=No
60920 buf_day = c * 10 + No
60930 buf_Day$ = str$(buf_day)
60940 'buf_day = c:buf_Day$=str$(buf_day)
60950 buf_Jyoushi_Born_Day(2)=buf_day
60960 locate 1,3
60970 print "                                           "
60980 locate 1,3
60990 color Rgb(255,255,255)
61000 print "上司の生まれた日(1日~31日):" + buf_Day$
61010 goto Jyoushi_Input_Born_Day2:
61020 'goto
61030 endif
61040 'endif
61050 '生まれた日　2桁目の数字　or 1桁の数字 + ok
61060 case 2:
61070 'buf_day = c * 10 + No
61080 'buf_Jyoushi_Born_Day(2)=buf_day
61090 'locate 1,3
61100 'print "                                      "
61110 'locate 1,3
61120 'locate 2,3
61130 'print "生まれた日(1日〜31日):";buf_Day
61140 'No=-1:ok ボタンを押したとき
61150 if (No = -1) then
61160 'if ((buf_day > 0) and (buf_day < 32)) then
61170 No=0
61180 sp_on 14,0
61190 goto complate_jyoushi:
61200 'end
61210 else
61220 goto Jyoushi_Input_Born_Day2:
61230 'endif
61240 'Okボタン以外を押したとき
61250 'else
61260 'c=val(buf_Day$)
61270 'buf_day = c * 10 + No
61280 'buf_Jyoushi_Born_Day(2) = buf_day
61290 'buf_Day$ = str$(buf_day)
61300 'locate 1,3
61310 'print "上司の生まれた日(1日~31日):";buf_Day$
61320 'goto Jyoushi_Input_Born_Day2:
61330 endif
61340 'case 3:
61350 'count=4
61360 'c=val(buf_day$)
61370 'buf_day=c*10+No
61380 'buf_day$=str$(buf_day)
61390 'locate 2,3
61400 'print "生まれた日を入れてください:";buf_day$
61410 'year=val(buf_year$)
61420 'if (No = -1) then
61430 'goto Jyoushi_Input_Born_Day:
61440 'sp_on 14,0:
61450 'goto complate_jyoushi:
61460 'else
61470 'goto Jyoushi_Input_Born_Month2:
61480 'endif
61490 'case 4:
61500 'bufyear=buf_year
61510 'if (No=-1) then
61520 'buf_day = val(buf_day$)
61530 'bufday = buf_day
61540 'sp_on 14,0
61550 'goto Jyoushi_Input_Born_Day2:
61560 'else
61570 'goto Jyoushi_Input_Born_Day2:
61580 'endif
61590 end select
61600 endif
61610 if (bg2=2) then
61620 select case count2
61630 case 0:
61640 if (No=-1) then
61650 buf_day=0:buf_Day$="**":No=0
61660 if (buf_day >= 1 and buf_day <= 31) then
61670 count=0
61680 buf_day=0:buf_Day$ = "**"
61690 goto rewrite_day3:
61700 else
61710 buf_day=0:buf_Day$ = "**"
61720 ui_msg"値が範囲外です"
61730 endif
61740 goto rewrite_day3:
61750 else
61760 goto rewrite_day3:
61770 endif
61780 rewrite_day3:
61790 locate 2,3
61800 color rgb(255,255,255)
61810 print "                                      "
61820 locate 2,3
61830 print "生まれた日(1日~31日):" + buf_Day$
61840 goto Jyoushi_Input_Born_Day2:
61850 end select
61860 endif
61870 '--------------------------------------------'
61880 'locate 2,0:color rgb(255,0,0)
61890 'print "上司の生まれた年代を入力"
61900 'color rgb(255,255,255)
61910 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
61920 'locate 2,4:Input "上司の生まれた年:",born_year
61930 '誕生日データーを配列に代入
61940 'buf_Jyoushi_Born_Year:上司の生まれた年代
61950 'buf_Jyoushi_Born_Day(0) = born_year
61960 'born_year = 0
61970 '---------------------------------------------'
61980 'goto Jyoushi_born_month:
61990 '1-2.生まれた月を入力
62000 'Jyoushi_born_month:
62010 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62020 'init "kb:4"
62030 'locate 2,1:
62040 'color rgb(255,0,0)
62050 'print "上司の生まれた月入力"
62060 'color rgb(255,255,255)
62070 'locate 2,4:print "生まれた月を入力してください"
62080 'locate 2,5
62090 'Input "上司の生まれ月:",born_month
62100 'buf_Jyoushi_Born_Day(1) = born_month
62110 'born_month = 0
62120 'goto Jyoushi_born_day:
62130 'buf_Jyoushi_Born_day
62140 '1-3.生まれた日を入力
62150 'Jyoushi_born_day:
62160 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62170 'init "kb:4"
62180 'locate 2,1:color rgb(255,0,0)
62190 'print "上司の生まれた日　入力"
62200 'locate 2,4:color rgb(255,255,255)
62210 'print "生まれた日を入力してください"
62220 'locate 2,5
62230 'Input "上司の生まれた日:",born_day
62240 'buf_Jyoushi_Born_Day(2) = born_day
62250 'born_day = 0
62260 'goto buka_born_year:
62270 '2.部下の誕生日入力
62280 '2-1.生まれた年を入力
62290 'buka_born_year:
62300 'cls 3:gload Gazo$+"Screen1.png",0,0,0
62310 'init "kb:2"
62320 'locate 1,1:color rgb(255,0,0)
62330 'print "部下の生まれた年代入力"
62340 'locate 0,4:color rgb(255,255,255)
62350 'print "部下の生まれた年（西暦4桁）を入れてください"
62360 'locate 0,5
62370 'Input "部下の生まれた年(西暦4桁):",born_year
62380 'buf_Buka_Born_Day(0) = born_year
62390 'born_year = 0
62400 '2-2.生まれた月を入力
62410 'buka_born_month:
62420 'cls 3:gload Gazo$+"Screen1.png",0,0,0
62430 'init "kb:2"
62440 'locate 2,1:color rgb(255,0,0)
62450 'print "部下の生まれた月 入力"
62460 'locate 2,4:color rgb(255,255,255)
62470 'print "部下の生まれた月を入力してください"
62480 'locate 2,5:Input "部下の生まれた月:",born_month
62490 'buf_Buka_Born_Day(1) = born_month
62500 '2-3.生まれた日を入力
62510 'buka_born_day:
62520 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62530 'init "kb:2"
62540 'locate 2,1:color rgb(255,0,0)
62550 'print "生まれた日入力"
62560 'color rgb(255,255,255)
62570 'locate 2,4:print "生まれた日を入力してください"
62580 'locate 2,5:Input "部下の生まれた日:",born_day
62590 'buf_Buka_Born_Day(2) = born_day
62600 'born_day=0:goto Result_Business_Aisyou:
62610 '--------------------------------------------'
62620 complate_jyoushi:
62630 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
62640 buf_Jyoushi = Kabara_Num(a,b,c)
62650 a_1=buf_Jyoushi
62660 goto Buka_Input_Seireki:
62670 '--------------------------------------------'
62680 '部下'
62690 '1.部下の生まれた年代'
62700 Buka_Input_Seireki:
62710 cls 3:play "":count=0:count2=0
62720 init"kb:4"
62730 'No=-1:Okのとき
62740 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
62750 for i=0 to 3
62760 buf_Buka_Born_Day(i)=0
62770 next i
62780 gload Gazo$ + "Screen2.png",0,0,0
62790 gload Gazo$ + "downscreen.png",0,0,800
62800 'Init"kb:2"
62810 '音声ファイル再生 2023.06.07
62820 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
62830 font 48
62840 locate 0,1
62850 '文字色：黒　 color rgb(0,0,0)
62860 color rgb(255,255,255)
62870 print "部下の生まれた年代を入れて下さい" + chr$(13)
62880 color rgb(255,255,255)
62890 locate 1,3
62900 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
62910 color rgb(255,255,255)
62920 'locate 4,6:print ":7"
62930 'locate 9,6:print ":8"
62940 'locate 12,6:print ":9"
62950 'locate 4,6
62960 'print ":7  :8  :9" + chr$(13)
62970 'color rgb(255,255,255)
62980 'locate 4,8
62990 'print ":4  :5  :6" + chr$(13)
63000 'color rgb(255,255,255)
63010 'locate 4,10
63020 'print ":1  :2  :3" + chr$(13)
63030 'locate 4,12
63040 'print "    :0"
63050 'locate 12,12
63060 'color rgb(0,0,255)
63070 'print ":Ok"
63080 sp_on 4,0: sp_on 5,0:sp_on 6,0
63090 sp_on 7,0:sp_on 8,0:sp_on 9,0
63100 sp_on 10,0:sp_on 11,0:sp_on 12,0
63110 sp_on 13,0:sp_on 14,1
63120 Buka_Input_Seireki2:
63130 key$="":bg=0:y=0:y2=0:bg2=0:
63140 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63150 key$ = inkey$
63160 bg = strig(1)
63170 y = stick(1)
63180 y2 = stick(0)
63190 bg2=strig(0)
63200 pause 5
63210 wend
63220 '十字キー　ここから
63230 '上の矢印　または、十字キー上
63240 if ((y = -1) or (key$ = chr$(30))) then
63250 select case No
63260 'No=-1:okのとき:初期の状態
63270 '0kボタンから３に移動
63280 '上に行く 処理
63290 case -1:
63300 No=3:sp_on 12,1:sp_on 14,0
63310 pause 200:goto Buka_Input_Seireki2:
63320 '選択肢:3
63330 '3ボタンから 6に移動
63340 case 3:
63350 No=6:sp_on 12,0:sp_on 11,1
63360 pause 200:goto Buka_Input_Seireki2:
63370 '6ボタンから ９に移動
63380 case 6:
63390 No=9:sp_on 10,1:sp_on 11,0
63400 pause 200:goto Buka_Input_Seireki2:
63410 '6ボタンから ９に移動　ここまで
63420 '9で上を押して何もしない
63430 case 9:
63440 '何もしない
63450 No=9
63460 pause 200:goto Buka_Input_Seireki2:
63470 '9で上を押しても何もしない　ここまで
63480 '上　 0ボタンから2ボタン
63490 'sp_on 6,1:1
63500 'sp_on 8,1:5
63510 'sp_on 7,1:7
63520 case 0:
63530 No=2:sp_on 13,0:sp_on 9,1:
63540 pause 200:goto Buka_Input_Seireki2:
63550 '上  0ボタンから2ボタン　ここまで
63560 '2から５になる 上
63570 case 2:
63580 No=5:sp_on 8,1:sp_on 9,0:
63590 pause 200:goto Buka_Input_Seireki2:
63600 case 5:
63610 No=8:sp_on 7,1:sp_on 8,0
63620 pause 200:goto Buka_Input_Seireki2:
63630 case 8:
63640 pause 200:goto Buka_Input_Seireki2:
63650 case 1:
63660 No=4:sp_on 5,1:sp_on 6,0
63670 pause 200:goto Buka_Input_Seireki2:
63680 case 4:
63690 No=7:sp_on 4,1:sp_on 5,0
63700 pause 200:goto Buka_Input_Seireki2:
63710 case 7:
63720 pause 200:goto Buka_Input_Seireki2:
63730 end select
63740 endif
63750 '左３　ここまで
63760 '下の矢印
63770 '中央 2
63780 if ((y=1) or (key$ = chr$(31))) then
63790 select case No
63800 '9から６に下げる
63810 case 9:
63820 No=6:sp_on 11,1:sp_on 10,0
63830 pause 200:goto Buka_Input_Seireki2:
63840 '6から３に下げる
63850 case 6:
63860 No=3:sp_on 12,1:sp_on 11,0
63870 pause 200:goto Buka_Input_Seireki2:
63880 '3から０ｋに変える
63890 case 3:
63900 No=-1:sp_on 14,1:sp_on 12,0
63910 pause 200:goto Buka_Input_Seireki2:
63920 'Okから下のボタンを押しても何もしない
63930 case -1:
63940 pause 200:goto Buka_Input_Seireki2:
63950 case 8:
63960 No=5:sp_on 8,1:sp_on 7,0
63970 pause 200:goto Buka_Input_Seireki2:
63980 case 5:
63990 No=2:sp_on 9,1:sp_on 8,0
64000 pause 200:goto Buka_Input_Seireki2:
64010 case 2:
64020 No=0:sp_on 13,1:sp_on 9,0
64030 pause 200:goto Buka_Input_Seireki2:
64040 case 0:
64050 pause 200:goto Buka_Input_Seireki2:
64060 case 7:
64070 No=4:sp_on 5,1:sp_on 4,0
64080 pause 200:goto Buka_Input_Seireki2:
64090 case 4:
64100 No=1:sp_on 6,1:sp_on 5,0
64110 pause 200:goto Buka_Input_Seireki2:
64120 case 1:
64130 pause 200:goto Buka_Input_Seireki2:
64140 end select
64150 endif
64160 '左へボタン 十字キー　左　or 　カーソル左
64170 if ((y2 = -1) or (key$ = chr$(29))) then
64180 select case No
64190 'Ok ボタン  Okから　左　０に行く
64200 case -1:
64210 No=0:sp_on 13,1:sp_on 14,0
64220 pause 200:goto Buka_Input_Seireki2:
64230 '0 ボタン  左　何もしない
64240 case 0:
64250 pause 200:goto Buka_Input_Seireki2:
64260 case 3:
64270 No=2:sp_on 9,1:sp_on 12,0:
64280 pause 200:goto Buka_Input_Seireki2:
64290 case 2:
64300 No=1:sp_on 6,1:sp_on 9,0:
64310 pause 200:goto Buka_Input_Seireki2:
64320 case 1:
64330 pause 200:goto Buka_Input_Seireki2:
64340 case 6:
64350 No=5:sp_on 8,1:sp_on 11,0
64360 pause 200:goto Buka_Input_Seireki2:
64370 case 5:
64380 No=4:sp_on 5,1:sp_on 8,0
64390 pause 200:goto Buka_Input_Seireki2:
64400 case 4:
64410 pause 200:goto Buka_Input_Seireki2:
64420 case 9:
64430 No=8:sp_on 7,1:sp_on 10,0
64440 pause 200:goto Buka_Input_Seireki2:
64450 case 8:
64460 No=7:sp_on 4,1:sp_on 7,0
64470 pause 200:goto Buka_Input_Seireki2:
64480 case 7:
64490 pause 200:goto Buka_Input_Seireki2:
64500 end select
64510 endif
64520 '右  十字キー　右　or カーソル　右
64530 if ((y2 = 1) or (key$ = chr$(28))) then
64540 select case No
64550 '0ボタンからokボタン右に移動
64560 case 0:
64570 No=-1:sp_on 14,1:sp_on 13,0
64580 pause 200:goto Buka_Input_Seireki2:
64590 '0ボタンからokボタン 右に移動　ここまで
64600 'OKボタンで右を押して何もしない
64610 case -1:
64620 pause 200:goto Buka_Input_Seireki2:
64630 case 1:
64640 No=2:sp_on 9,1:sp_on 6,0
64650 pause 200:goto Buka_Input_Seireki2:
64660 case 2:
64670 No=3:sp_on 12,1:sp_on 9,0
64680 pause 200:goto Buka_Input_Seireki2:
64690 case 3:
64700 pause 200:goto Buka_Input_Seireki2:
64710 case 4:
64720 No=5:sp_on 8,1:sp_on 5,0
64730 pause 200:goto Buka_Input_Seireki2:
64740 case 5:
64750 No=6:sp_on 11,1:sp_on 8,0
64760 pause 200:goto Buka_Input_Seireki2:
64770 case 7:
64780 No=8:sp_on 7,1:sp_on 4,0
64790 pause 200:goto Buka_Input_Seireki2:
64800 case 8:
64810 No=9:sp_on 10,1:sp_on 7,0
64820 pause 200:goto Buka_Input_Seireki2:
64830 case 9:
64840 pause 200:goto Buka_Input_Seireki2:
64850 case 6:
64860 pause 200:goto Buka_Input_Seireki2:
64870 end select
64880 'Okから右ボタンを押して何もしない ここまで
64890 endif
64900 '十字キー　ここまで
64910 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
64920 'ここからコメント
64930 '右の丸ボタン決定を押した数:count
64940 'if ((bg=2) or (key$=chr$(13))) then
64950 'select case count
64960 'case 0:
64970 'count=1
64980 'if (No = -1) then
64990 'count = 0
65000 'Okボタンを押したとき
65010 '
65020 'goto Buka_Input_Seireki2:
65030 'else
65040 'Okボタン以外が押されたとき
65050 'if (No >= 1 and No <= 2) then
65060 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
65070 'buf_buka_year = No
65080 'buf_Buka_Born_Day(0) = bufyear
65090 'locate 2,3
65100 'color rgb(255,255,255)
65110 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65120 'goto Buka_Input_Seireki2:
65130 'else
65140 'count=0
65150 'ui_msg"数字が範囲外になります。"
65160 'buf_buka_year$ ="":buf_buka_year=0
65170 'goto Buka_Input_Seireki2:
65180 'endif
65190 'endif
65200 'case 1:
65210 'count = 2
65220 'if (No = -1) then
65230 'count = 1
65240 'goto Buka_Input_Seireki2:
65250 'else
65260 'b = val(buf_buka_year$)
65270 'buf_buka_year = b * 10 + No
65280 'buf_buka_year$ = str$(buf_buka_year)
65290 'buf_Buka_Born_Day(0) = bufyear
65300 'locate 1,3
65310 'color rgb(255,255,255)
65320 'print "                                                                "
65330 'locate 1,3
65340 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65350 'if (No = -1) then
65360 'count=1
65370 'goto Buka_Input_Seireki2:
65380 'endif
65390 'case 2:
65400 'count = 3
65410 'if (No = -1) then
65420 'count = 2
65430 'buf_Buka_Born_Day(0)=bufyear
65440 'goto Buka_Input_Seireki2:
65450 'else
65460 'b = val(buf_buka_year$)
65470 'buf_buka_year = b*10 + No
65480 'buf_buka_year$ = str$(buf_buka_year)
65490 'locate 1,3
65500 'color rgb(255,255,255)
65510 'print "                                        "
65520 'locate 1,3
65530 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
65540 'goto Buka_Input_Seireki2:
65550 'endif
65560 'case 3:
65570 'count=4
65580 'if (No = -1) then
65590 'count=3
65600 'goto Buka_Input_Seireki2:
65610 'else
65620 'b = buf_buka_year
65630 'buf_buka_year = b * 10 + No
65640 'buf_buka_year$=str$(buf_buka_year)
65650 'locate 1,3
65660 'color RGB(255,255,255)
65670 'print "                                      "
65680 'locate 1,3
65690 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65700 'buf_year=val(buf_year$)
65710 'year=val(buf_year$)
65720 'if (No=-1) then
65730 'goto Input_Born_Month:
65740 'else
65750 'goto Buka_Input_Seireki2:
65760 'endif
65770 'case 4:
65780 'bufyear=buf_year
65790 'if (No=-1) then
65800 'buf_year = val(buf_year$)
65810 'bufyear = buf_year
65820 'sp_on 14,0
65830 'goto Buka_Input_Born_Month:
65840 'else
65850 'goto Buka_Input_Seireki2:
65860 'endif
65870 'end select
65880 'endif
65890 'if (bg2 = 2) then
65900 'select case count2
65910 'case 0:
65920 'if (No = -1) then
65930 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
65940 'count=0
65950 'locate 1,3
65960 'color rgb(255,255,255)
65970 'print "                                      "
65980 'locate 1,3
65990 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
66000 'goto Buka_Input_Seireki2:
66010 'else
66020 '(buf_year=0) then
66030 'buf_buka_year=0:buf_buka_year$="****"
66040 'goto Buka_Input_Seireki2:
66050 'endif
66060 'endif
66070 'end select
66080 'endif
66090 'end
66100 'ここまでコメント
66110 '================================================================
66120 if ((bg=2) or (key$=chr$(13))) then
66130 select case count
66140 case 0:
66150 count = 1
66160 if (No=-1) then
66170 count = 0
66180 buf_Buka_Born_Day(0) = No
66190 'Okボタンを押したとき
66200 goto Buka_Input_Seireki2:
66210 else
66220 'Okボタン以外が押されたとき
66230 if (No>=1 and No<=2) then
66240 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
66250 buf_buka_year = No
66260 buf_Buka_Born_Day(0) = No
66270 locate 1,3
66280 color rgb(255,255,255)
66290 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66300 goto Buka_Input_Seireki2:
66310 else
66320 count=0
66330 ui_msg"数字が範囲外になります。"
66340 buf_buka_year$="":buf_buka_year=0
66350 goto Buka_Input_Seireki2:
66360 endif
66370 endif
66380 case 1:
66390 count = 2
66400 if (No = -1) then
66410 count = 1
66420 goto Buka_Input_Seireki2:
66430 else
66440 'b = val(buf_buka_year$)
66450 buf_buka_year = a * 10 + No
66460 b=buf_buka_year
66470 buf_buka_year$ = str$(buf_buka_year)+"**"
66480 buf_Buka_Born_Day(0)=buf_buka_year
66490 locate 1,3
66500 color rgb(255,255,255)
66510 print "                                                                "
66520 locate 1,3
66530 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
66540 'if (No = -1) then
66550 'count=1
66560 goto Buka_Input_Seireki2:
66570 endif
66580 case 2:
66590 count=3
66600 if (No=-1) then
66610 count =2:No=0
66620 goto Buka_Input_Seireki2:
66630 else
66640 'b = val(buf_buka_year$)
66650 buf_buka_year = b * 10 + No
66660 c = buf_buka_year
66670 buf_buka_year$ = str$(buf_buka_year) + "*"
66680 buf_Buka_Born_Day(0) = buf_buka_year
66690 locate 1,3
66700 color rgb(255,255,255)
66710 print "                                        "
66720 locate 1,3
66730 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66740 goto Buka_Input_Seireki2:
66750 endif
66760 case 3:
66770 count=4
66780 if (No = -1) then
66790 'count=3:No=0
66800 goto Buka_Input_Seireki2:
66810 else
66820 'b = val(buf_buka_year$)
66830 buf_buka_year=c * 10 + No
66840 buf_buka_year$=str$(buf_buka_year)
66850 buf_Buka_Born_Day(0)=buf_buka_year
66860 locate 1,3
66870 color RGB(255,255,255)
66880 print "                                      "
66890 locate 1,3
66900 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66910 buf_buka_year=val(buf_buka_year$)
66920 'year=val(buf_year$)
66930 'if (No=-1) then
66940 'goto Input_Born_Month:
66950 'else
66960 goto Buka_Input_Seireki2:
66970 endif
66980 case 4:
66990 'bufyear=buf_year
67000 if (No = -1) then
67010 buf_buka_year = val(buf_buka_year$)
67020 buf_Buka_Born_Day(0)=buf_buka_year
67030 sp_on 14,0
67040 goto Buka_Input_Born_Month:
67050 else
67060 goto Buka_Input_Seireki2:
67070 endif
67080 end select
67090 endif
67100 '================================================================
67110 'ここにコピーする。
67120 '================================================================
67130 'Input"部下の生れた年代(4桁,〜2025年):",year
67140 'if year > 2025 then goto Jyoushi_Input_Seireki:
67150 'if year = 123 then cls 3:cls 4:goto Main_Screen:
67160 '"4桁目"
67170 'bufyear4 = fix(year / 1000)
67180 '"3桁目"
67190 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
67200 '"2桁目"
67210 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
67220 '"1桁目"
67230 'bufyear1 = fix((year - ((bufyear4*
67240 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
67250 '1.部下の生まれた年代'
67260 '2.部下の生まれた月'
67270 Buka_Input_Born_Month:
67280 cls 3:play "":count=0:count2=0
67290 'No=-1:Okのとき
67300 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
67310 for i=0 to 1
67320 buf_month(i)=0
67330 next i
67340 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
67350 gload Gazo$ + "Screen2.png",0,0,0
67360 gload Gazo$ + "downscreen.png",0,0,800
67370 'Init"kb:4"
67380 '音声ファイル再生 2023.06.07
67390 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
67400 font 48
67410 locate 0,1
67420 '文字色：黒　 color rgb(0,0,0)
67430 '文字色:白
67440 color rgb(255,255,255)
67450 print "部下の生まれた月を入れて下さい" + chr$(13)
67460 '文字色:白
67470 color rgb(255,255,255)
67480 locate 1,3
67490 '文字色:白
67500 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
67510 color rgb(255,255,255)
67520 'locate 4,6:print ":7"
67530 'locate 9,6:print ":8"
67540 'locate 12,6:print ":9"
67550 'locate 4,6
67560 '文字色:赤
67570 'print ":7  :8  :9" + chr$(13)
67580 'color rgb(255,255,255)
67590 'locate 4,8
67600 'print ":4  :5  :6" + chr$(13)
67610 'color rgb(255,255,255)
67620 'locate 4,10
67630 'print ":1  :2  :3" + chr$(13)
67640 'locate 4,12
67650 'print "    :0"
67660 'locate 12,12
67670 'color rgb(0,0,255)
67680 'print ":Ok"
67690 sp_on 4,0: sp_on 5,0:sp_on 6,0
67700 sp_on 7,0:sp_on 8,0:sp_on 9,0
67710 sp_on 10,0:sp_on 11,0:sp_on 12,0
67720 sp_on 13,0:sp_on 14,1
67730 Buka_Input_Born_Month2:
67740 key$="":bg=0:y=0:y2=0:bg2=0
67750 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
67760 key$ = inkey$
67770 bg = strig(1)
67780 y = stick(1)
67790 y2 = stick(0)
67800 bg2 = strig(0)
67810 pause 5
67820 wend
67830 '十字キー　ここから
67840 '上の矢印　または、十字キー上
67850 if ((y = -1) or (key$ = chr$(30))) then
67860 select case No
67870 'No=-1:okのとき:初期の状態
67880 '0kボタンから３に移動
67890 '上に行く 処理
67900 case -1:
67910 No=3:sp_on 12,1:sp_on 14,0
67920 pause 200:goto Buka_Input_Born_Month2:
67930 '選択肢:3
67940 '3ボタンから 6に移動
67950 case 3:
67960 No=6:sp_on 12,0:sp_on 11,1
67970 pause 200:goto Buka_Input_Born_Month2:
67980 '6ボタンから ９に移動
67990 case 6:
68000 No=9:sp_on 10,1:sp_on 11,0
68010 pause 200:goto Buka_Input_Born_Month2:
68020 '6ボタンから ９に移動　ここまで
68030 '9で上を押して何もしない
68040 case 9:
68050 '何もしない
68060 No=9
68070 pause 200:goto Buka_Input_Born_Month2:
68080 '9で上を押しても何もしない　ここまで
68090 '上　 0ボタンから2ボタン
68100 'sp_on 6,1:1
68110 'sp_on 8,1:5
68120 'sp_on 7,1:7
68130 case 0:
68140 No=2:sp_on 13,0:sp_on 9,1:
68150 pause 200:goto Buka_Input_Born_Month2:
68160 '上  0ボタンから2ボタン　ここまで
68170 '2から５になる 上
68180 case 2:
68190 No=5:sp_on 8,1:sp_on 9,0:
68200 pause 200:goto Buka_Input_Born_Month2:
68210 case 5:
68220 No=8:sp_on 7,1:sp_on 8,0
68230 pause 200:goto Buka_Input_Born_Month2:
68240 case 8:
68250 pause 200:goto Buka_Input_Born_Month2:
68260 case 1:
68270 No=4:sp_on 5,1:sp_on 6,0
68280 pause 200:goto Buka_Input_Born_Month2:
68290 case 4:
68300 No=7:sp_on 4,1:sp_on 5,0
68310 pause 200:goto Buka_Input_Born_Month2:
68320 case 7:
68330 pause 200:goto Buka_Input_Born_Month2:
68340 end select
68350 endif
68360 '左３　ここまで
68370 '下の矢印
68380 '中央 2
68390 if ((y=1) or (key$ = chr$(31))) then
68400 select case No
68410 '9から６に下げる
68420 case 9:
68430 No=6:sp_on 11,1:sp_on 10,0
68440 pause 200:goto Buka_Input_Born_Month2:
68450 '6から３に下げる
68460 case 6:
68470 No=3:sp_on 12,1:sp_on 11,0
68480 pause 200:goto Buka_Input_Born_Month2:
68490 '3から０ｋに変える
68500 case 3:
68510 No=-1:sp_on 14,1:sp_on 12,0
68520 pause 200:goto Buka_Input_Born_Month2:
68530 'Okから下のボタンを押しても何もしない
68540 case -1:
68550 pause 200:goto Buka_Input_Born_Month2:
68560 case 8:
68570 No=5:sp_on 8,1:sp_on 7,0
68580 pause 200:goto Buka_Input_Born_Month2:
68590 case 5:
68600 No=2:sp_on 9,1:sp_on 8,0
68610 pause 200:goto Buka_Input_Born_Month2:
68620 case 2:
68630 No=0:sp_on 13,1:sp_on 9,0
68640 pause 200:goto Buka_Input_Born_Month2:
68650 case 0:
68660 pause 200:goto Buka_Input_Born_Month2:
68670 case 7:
68680 No=4:sp_on 5,1:sp_on 4,0
68690 pause 200:goto Buka_Input_Born_Month2:
68700 case 4:
68710 No=1:sp_on 6,1:sp_on 5,0
68720 pause 200:goto Buka_Input_Born_Month2:
68730 case 1:
68740 pause 200:goto Buka_Input_Born_Month2:
68750 end select
68760 endif
68770 '左へボタン 十字キー　左　or 　カーソル左
68780 if ((y2 = -1) or (key$ = chr$(29))) then
68790 select case No
68800 'Ok ボタン  Okから　左　０に行く
68810 case -1:
68820 No=0:sp_on 13,1:sp_on 14,0
68830 pause 200:goto Buka_Input_Born_Month2:
68840 '0 ボタン  左　何もしない
68850 case 0:
68860 pause 200:goto Buka_Input_Born_Month2:
68870 case 3:
68880 No=2:sp_on 9,1:sp_on 12,0:
68890 pause 200:goto Buka_Input_Born_Month2:
68900 case 2:
68910 No=1:sp_on 6,1:sp_on 9,0:
68920 pause 200:goto Buka_Input_Born_Month2:
68930 case 1:
68940 pause 200:goto Buka_Input_Born_Month2:
68950 case 6:
68960 No=5:sp_on 8,1:sp_on 11,0
68970 pause 200:goto Buka_Input_Born_Month2:
68980 case 5:
68990 No=4:sp_on 5,1:sp_on 8,0
69000 pause 200:goto Buka_Input_Born_Month2:
69010 case 4:
69020 pause 200:goto Buka_Input_Born_Month2:
69030 case 9:
69040 No=8:sp_on 7,1:sp_on 10,0
69050 pause 200:goto Buka_Input_Born_Month2:
69060 case 8:
69070 No=7:sp_on 4,1:sp_on 7,0
69080 pause 200:goto Buka_Input_Born_Month2:
69090 case 7:
69100 pause 200:goto Buka_Input_Born_Month2:
69110 end select
69120 endif
69130 '右  十字キー　右　or カーソル　右
69140 if ((y2 = 1) or (key$ = chr$(28))) then
69150 select case No
69160 '0ボタンからokボタン右に移動
69170 case 0:
69180 No=-1:sp_on 14,1:sp_on 13,0
69190 pause 200:goto Buka_Input_Born_Month2:
69200 '0ボタンからokボタン 右に移動　ここまで
69210 'OKボタンで右を押して何もしない
69220 case -1:
69230 pause 200:goto Buka_Input_Born_Month2:
69240 case 1:
69250 No=2:sp_on 9,1:sp_on 6,0
69260 pause 200:goto Buka_Input_Born_Month2:
69270 case 2:
69280 No=3:sp_on 12,1:sp_on 9,0
69290 pause 200:goto Buka_Input_Born_Month2:
69300 case 3:
69310 pause 200:goto Buka_Input_Born_Month2:
69320 case 4:
69330 No=5:sp_on 8,1:sp_on 5,0
69340 pause 200:goto Buka_Input_Born_Month2:
69350 case 5:
69360 No=6:sp_on 11,1:sp_on 8,0
69370 pause 200:goto Buka_Input_Born_Month2:
69380 case 7:
69390 No=8:sp_on 7,1:sp_on 4,0
69400 pause 200:goto Buka_Input_Born_Month2:
69410 case 8:
69420 No=9:sp_on 10,1:sp_on 7,0
69430 pause 200:goto Buka_Input_Born_Month2:
69440 case 9:
69450 pause 200:goto Buka_Input_Born_Month2:
69460 case 6:
69470 pause 200:goto Buka_Input_Born_Month2:
69480 end select
69490 'Okから右ボタンを押して何もしない ここまで
69500 endif
69510 '十字キー　ここまで
69520 '右の丸ボタン　決定キー
69530 if ((bg=2) or (key$=chr$(13))) then
69540 select case count
69550 case 0:
69560 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
69570 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
69580 locate 1,3
69590 color RGB(255,255,255)
69600 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
69610 goto Buka_Input_Born_Month2:
69620 case 1:
69630 count = 2:buf_buka_month=a*10+No
69640 if (No = -1) then
69650 'count=0
69660 month=buf_buka_month
69670 buf_buka_month=val(buf_buka_Month$)
69680 month=buf_buka_month
69690 '生まれた日に飛ぶ
69700 goto Buka_Input_Born_Day:
69710 else
69720 buf_buka_month = a * 10 + No
69730 buf_buka_Month$ = str$(buf_buka_month)
69740 buf_Buka_Born_Day(1) = buf_buka_month
69750 locate 1,3
69760 color Rgb(255,255,255)
69770 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
69780 goto Buka_Input_Born_Month2:
69790 endif
69800 case 2:
69810 count=3
69820 'c= val(buf_Month$)
69830 'buf_month = c*10 + No
69840 'buf_Month$ = str$(buf_month)
69850 'locate 2,3
69860 'print "部下の生まれた月(1月～12月):";buf_Month$
69870 'goto Buka_Input_Born_Month2:
69880 'case 3:
69890 'count=4
69900 'b=val(buf_month$)
69910 'buf_month=c*10+No
69920 'buf_Month$=str$(buf_month)
69930 'locate 2,3
69940 'print "部下の生まれた月(1月～12月):";buf_Month$
69950 'buf_month=val(buf_Month$)
69960 'year=val(buf_year$)
69970 if (No=-1) then
69980 goto Buka_Input_Born_Day:
69990 else
70000 goto Input_Born_Month2:
70010 endif
70020 'case 4:
70030 'bufyear=buf_year
70040 'if (No=-1) then
70050 'buf_month = val(buf_Month$)
70060 'month = buf_month
70070 'sp_on 14,0
70080 'goto Input_Born_Day:
70090 'else
70100 'goto Input_Born_Month2:
70110 'endif
70120 end select
70130 endif
70140 '左の丸ボタン　キャンセル
70150 if (bg2=2) then
70160 select case count2
70170 case 0:
70180 if (No = -1) then
70190 buf_buka_month=0:buf_buka_Month$="**"
70200 count=0
70210 goto rewrite2:
70220 else
70230 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
70240 buf_month=0:buf_Month$="**"
70250 locate 2,3
70260 color rgb(255,255,255)
70270 print "                                       "
70280 goto rewrite2:
70290 if (No>12) then
70300 ui_msg"値が範囲外です。"
70310 goto rewrite2:
70320 endif
70330 endif
70340 endif
70350 rewrite2:
70360 locate 2,3
70370 color rgb(255,255,255)
70380 print "                                      "
70390 locate 2,3
70400 print "部下の生まれた月(1月~12月):";buf_buka_Month$
70410 goto Buka_Input_Born_Month2:
70420 end select
70430 'endif
70440 endif
70450 end
70460 '2.部下の生まれた月'
70470 '3.部下の生まれた日'
70480 '生れた日を入力
70490 Buka_Input_Born_Day:
70500 '生まれた日入力
70510 cls 3:play ""
70520 'No=-1:Okのとき
70530 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
70540 for i=0 to 1
70550 buf_day(i)=0
70560 next i
70570 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
70580 gload Gazo$ + "Screen2.png",0,0,0
70590 gload Gazo$ + "downscreen.png",0,0,800
70600 'Init"kb:2"
70610 '音声ファイル再生 2023.06.07
70620 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
70630 font 48
70640 locate 0,1
70650 '文字色：黒　 color rgb(0,0,0)
70660 color rgb(255,255,255)
70670 print "部下の生まれた日を入れて下さい" + chr$(13)
70680 color rgb(255,255,255)
70690 locate 1,3
70700 print "部下の生まれた日(1日~31日):";buf_Day$
70710 color rgb(255,255,255)
70720 'locate 4,6:print ":7"
70730 'locate 9,6:print ":8"
70740 'locate 12,6:print ":9"
70750 'locate 4,6
70760 'print ":7  :8  :9" + chr$(13)
70770 'color rgb(255,255,255)
70780 'locate 4,8
70790 'print ":4  :5  :6" + chr$(13)
70800 'color rgb(255,255,255)
70810 'locate 4,10
70820 'print ":1  :2  :3" + chr$(13)
70830 'locate 4,12
70840 'print "    :0"
70850 'locate 12,12
70860 'color rgb(0,0,255)
70870 'print ":Ok"
70880 sp_on 4,0: sp_on 5,0:sp_on 6,0
70890 sp_on 7,0:sp_on 8,0:sp_on 9,0
70900 sp_on 10,0:sp_on 11,0:sp_on 12,0
70910 sp_on 13,0:sp_on 14,1
70920 Buka_Input_Born_Day2:
70930 '
70940 key$="":bg=0:y=0:y2=0:bg2=0
70950 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
70960 key$ = inkey$
70970 bg = strig(1)
70980 y = stick(1)
70990 y2 = stick(0)
71000 bg2 = strig(0)
71010 pause 200
71020 wend
71030 '十字キー　ここから
71040 '上の矢印　または、十字キー上
71050 if ((y = -1) or (key$ = chr$(30))) then
71060 select case No
71070 'No=-1:okのとき:初期の状態
71080 '0kボタンから３に移動
71090 '上に行く 処理
71100 case -1:
71110 No=3:sp_on 12,1:sp_on 14,0
71120 pause 200:goto Buka_Input_Born_Day2:
71130 '選択肢:3
71140 '3ボタンから 6に移動
71150 case 3:
71160 No=6:sp_on 12,0:sp_on 11,1
71170 pause 200:goto Buka_Input_Born_Day2:
71180 '6ボタンから ９に移動
71190 case 6:
71200 No=9:sp_on 10,1:sp_on 11,0
71210 pause 200:goto Buka_Input_Born_Day2:
71220 '6ボタンから ９に移動　ここまで
71230 '9で上を押して何もしない
71240 case 9:
71250 '何もしない
71260 No=9
71270 pause 200:goto Buka_Input_Born_Day2:
71280 '9で上を押しても何もしない　ここまで
71290 '上　 0ボタンから2ボタン
71300 'sp_on 6,1:1
71310 'sp_on 8,1:5
71320 'sp_on 7,1:7
71330 case 0:
71340 No=2:sp_on 13,0:sp_on 9,1:
71350 pause 200:goto Buka_Input_Born_Day2:
71360 '上  0ボタンから2ボタン　ここまで
71370 '2から５になる 上
71380 case 2:
71390 No=5:sp_on 8,1:sp_on 9,0:
71400 pause 200:goto Buka_Input_Born_Day2:
71410 case 5:
71420 No=8:sp_on 7,1:sp_on 8,0
71430 pause 200:goto Buka_Input_Born_Day2:
71440 case 8:
71450 pause 200:goto Buka_Input_Born_Day2:
71460 case 1:
71470 No=4:sp_on 5,1:sp_on 6,0
71480 pause 200:goto Buka_Input_Born_Day2:
71490 case 4:
71500 No=7:sp_on 4,1:sp_on 5,0
71510 pause 200:goto Buka_Input_Born_Day2:
71520 case 7:
71530 pause 200:goto Buka_Input_Born_Day2:
71540 end select
71550 endif
71560 '左３　ここまで
71570 '下の矢印
71580 '中央 2
71590 if ((y=1) or (key$ = chr$(31))) then
71600 select case No
71610 '9から６に下げる
71620 case 9:
71630 No=6:sp_on 11,1:sp_on 10,0
71640 pause 200:goto Buka_Input_Born_Day2:
71650 '6から３に下げる
71660 case 6:
71670 No=3:sp_on 12,1:sp_on 11,0
71680 pause 200:goto Buka_Input_Born_Day2:
71690 '3から０ｋに変える
71700 case 3:
71710 No=-1:sp_on 14,1:sp_on 12,0
71720 pause 200:goto Buka_Input_Born_Day2:
71730 'Okから下のボタンを押しても何もしない
71740 case -1:
71750 pause 200:goto Buka_Input_Born_Day2:
71760 case 8:
71770 No=5:sp_on 8,1:sp_on 7,0
71780 pause 200:goto Buka_Input_Born_Day2:
71790 case 5:
71800 No=2:sp_on 9,1:sp_on 8,0
71810 pause 200:goto Buka_Input_Born_Day2:
71820 case 2:
71830 No=0:sp_on 13,1:sp_on 9,0
71840 pause 200:goto Buka_Input_Born_Day2:
71850 case 0:
71860 pause 200:goto Buka_Input_Born_Day2:
71870 case 7:
71880 No=4:sp_on 5,1:sp_on 4,0
71890 pause 200:goto Buka_Input_Born_Day2:
71900 case 4:
71910 No=1:sp_on 6,1:sp_on 5,0
71920 pause 200:goto Buka_Input_Born_Day2:
71930 case 1:
71940 pause 200:goto Buka_Input_Born_Day2:
71950 end select
71960 endif
71970 '左へボタン 十字キー　左　or 　カーソル左
71980 if ((y2 = -1) or (key$ = chr$(29))) then
71990 select case No
72000 'Ok ボタン  Okから　左　０に行く
72010 case -1:
72020 No=0:sp_on 13,1:sp_on 14,0
72030 pause 200:goto Buka_Input_Born_Day2:
72040 '0 ボタン  左　何もしない
72050 case 0:
72060 pause 200:goto Buka_Input_Born_Day2:
72070 case 3:
72080 No=2:sp_on 9,1:sp_on 12,0:
72090 pause 200:goto Buka_Input_Born_Day2:
72100 case 2:
72110 No=1:sp_on 6,1:sp_on 9,0:
72120 pause 200:goto Buka_Input_Born_Day2:
72130 case 1:
72140 pause 200:goto Buka_Input_Born_Day2:
72150 case 6:
72160 No=5:sp_on 8,1:sp_on 11,0
72170 pause 200:goto Buka_Input_Born_Day2:
72180 case 5:
72190 No=4:sp_on 5,1:sp_on 8,0
72200 pause 200:goto Buka_Input_Born_Day2:
72210 case 4:
72220 pause 200:goto Buka_Input_Born_Day2:
72230 case 9:
72240 No=8:sp_on 7,1:sp_on 10,0
72250 pause 200:goto Buka_Input_Born_Day2:
72260 case 8:
72270 No=7:sp_on 4,1:sp_on 7,0
72280 pause 200:goto Buka_Input_Born_Day2:
72290 case 7:
72300 pause 200:goto Buka_Input_Born_Day2:
72310 end select
72320 endif
72330 '右  十字キー　右　or カーソル　右
72340 if ((y2 = 1) or (key$ = chr$(28))) then
72350 select case No
72360 '0ボタンからokボタン右に移動
72370 case 0:
72380 No=-1:sp_on 14,1:sp_on 13,0
72390 pause 200:goto Buka_Input_Born_Day2:
72400 '0ボタンからokボタン 右に移動　ここまで
72410 'OKボタンで右を押して何もしない
72420 case -1:
72430 pause 200:goto Buka_Input_Born_Day2:
72440 case 1:
72450 No=2:sp_on 9,1:sp_on 6,0
72460 pause 200:goto Buka_Input_Born_Day2:
72470 case 2:
72480 No=3:sp_on 12,1:sp_on 9,0
72490 pause 200:goto Buka_Input_Born_Day2:
72500 case 3:
72510 pause 200:goto Buka_Input_Born_Day2:
72520 case 4:
72530 No=5:sp_on 8,1:sp_on 5,0
72540 pause 200:goto Buka_Input_Born_Day2:
72550 case 5:
72560 No=6:sp_on 11,1:sp_on 8,0
72570 pause 200:goto Buka_Input_Born_Day2:
72580 case 7:
72590 No=8:sp_on 7,1:sp_on 4,0
72600 pause 200:goto Buka_Input_Born_Day2:
72610 case 8:
72620 No=9:sp_on 10,1:sp_on 7,0
72630 pause 200:goto Buka_Input_Born_Day2:
72640 case 9:
72650 pause 200:goto Buka_Input_Born_Day2:
72660 case 6:
72670 pause 200:goto Buka_Input_Born_Day2:
72680 end select
72690 'Okから右ボタンを押して何もしない ここまで
72700 endif
72710 '十字キー　ここまで
72720 '右の丸ボタンを押したとき
72730 if ((bg = 2) or (key$ = chr$(13))) then
72740 'count :決定ボタンを押した回数
72750 select case (count)
72760 '1桁目入力
72770 case 0:
72780 count = 1:
72790 if (No = -1) then
72800 '1桁目　OKでは何もしない
72810 'goto check:
72820 No=0
72830 else
72840 'ok以外のボタンを押したとき
72850 buf_buka_day = No:buf_buka_Day$ = str$(No)
72860 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
72870 buf_buka_Day$ = str$(No) + "*"
72880 endif
72890 a=No
72900 buf_Buka_Born_Day(2) = buf_buka_day
72910 locate 1,3
72920 print"                                      "
72930 color RGB(255,255,255)
72940 locate 1,3
72950 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
72960 endif
72970 check2:
72980 if (No >= 1 and No <= 9) then
72990 sp_on 14,0
73000 goto Buka_Input_Born_Day2:
73010 else
73020 sp_on 14,0
73030 goto Result_Business_Aisyou:
73040 end
73050 endif
73060 case 1:
73070 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
73080 count = 2:
73090 'locate 2,3
73100 'color RGB(255,255,255)
73110 'print "生まれた日(1日~31日):";buf_Day$
73120 'Okボタンを押したときの処理
73130 '入力値　10未満のとき
73140 'c = buf_day
73150 if (No = -1) then
73160 'c=buf_day
73170 ' buf_day = c
73180 'buf_Day$ = str$(buf_day)
73190 '10以下のとき
73200 No=0
73210 if (buf_day < 10) then
73220 sp_on 14,0
73230 goto Result_Business_Aisyou:
73240 end
73250 endif
73260 else
73270 sp_on 14,0
73280 'c=No
73290 buf_buka_day = a * 10 + No
73300 buf_buka_Day$ = str$(buf_buka_day)
73310 buf_Buka_Born_Day(2) = buf_buka_day
73320 locate 0,3
73330 color Rgb(255,255,255)
73340 print "                                       "
73350 locate 1,3
73360 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
73370 goto Buka_Input_Born_Day2:
73380 endif
73390 '生まれた日　2桁目の数字　or 1桁の数字 + ok
73400 case 2:
73410 count=0
73420 'c=val(buf_Day$)
73430 'buf_day=c*10+No
73440 'buf_Day$=str$(buf_day)
73450 'day=buf_day
73460 'locate 2,3
73470 'print "生まれた日(1日〜31日):";buf_Day$
73480 'No=-1:ok ボタンを押したとき
73490 if (No = -1) then No=0
73500 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
73510 sp_on 14,0
73520 goto Result_Business_Aisyou:
73530 else
73540 goto Buka_Input_Born_Day2:
73550 endif
73560 'Okボタン以外を押したとき
73570 else
73580 c=val(buf_buka_Day$)
73590 buf_buka_day = c * 10 + No
73600 buf_buka_Day$ = str$(buf_buka_day)
73610 locate 1,3
73620 print "                "
73630 locate 1,3
73640 print "生まれた日(1日~31日):"+buf_buka_Day$
73650 goto Buka_Input_Born_Day2:
73660 'endif
73670 case 3:
73680 count=4
73690 'c=val(buf_day$)
73700 'buf_day=c*10+No
73710 'buf_day$=str$(buf_day)
73720 'locate 2,3
73730 'print "生まれた日を入れてください:";buf_day$
73740 'year=val(buf_year$)
73750 if (No = -1) then
73760 'goto Buka_Input_Born_Day:
73770 sp_on 14,0:
73780 goto complate_jyoushi:
73790 else
73800 goto Buka_Input_Born_Month2:
73810 endif
73820 'case 4:
73830 'bufyear=buf_year
73840 'if (No=-1) then
73850 'buf_day = val(buf_day$)
73860 'bufday = buf_day
73870 'sp_on 14,0
73880 goto complate_jyoushi:
73890 'else
73900 'goto Buka_Input_Born_Day2:
73910 'endif
73920 end select
73930 endif
73940 if (bg2=2) then
73950 select case count2
73960 case 0:
73970 if (No=-1) then
73980 'buf_day=0:buf_Day$="**"
73990 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
74000 count=0
74010 buf_buka_day=0:buf_buka_Day$="**"
74020 goto rewrite_day3:
74030 else
74040 buf_buka_day=0:buf_buka_Day$="**"
74050 ui_msg"値が範囲外です"
74060 endif
74070 goto rewrite_day3:
74080 else
74090 goto rewrite_day3:
74100 endif
74110 rewrite_day3:
74120 locate 2,3
74130 color rgb(255,255,255)
74140 print "                                      "
74150 locate 1,3
74160 print "生まれた日(1日~31日):"+buf_buka_Day$
74170 goto Buka_Input_Born_Day2:
74180 end select
74190 endif
74200 '3.部下の生まれた日'
74210 '部下'
74220 '--------------------------------------------'
74230 'ビジネの相性　結果表示
74240 Result_Business_Aisyou:
74250 cls 3:init "kb:4"
74260 a=0:b=0:c=0:d=0:e=0:f=0
74270 bg=0:key$=""
74280 gload Gazo$ + "Screen1.png",0,0,0
74290 gload Gazo$ + "downscreen.png",0,0,800
74300 sp_on 14,0
74310 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
74320 buf_Buka = Kabara_Num(d,e,f)
74330 a_2 = buf_Buka
74340 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
74350 locate 0,1
74360 color rgb(255,0,0)
74370 print "●.相性診断結果１"
74380 locate 0,4:
74390 color rgb(255,255,255)
74400 print "1.上司の名前:";buffer_name$(0)
74410 locate 0,6
74420 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
74430 locate 0,8
74440 print "2.部下の名前:";buffer_name$(1)
74450 locate 0,10
74460 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
74470 locate 0,12
74480 print "3.上司と部下の相性:";Result_Aisyou$
74490 locate 1,15
74500 color rgb(0,0,0)
74510 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
74520 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
74530 bg = strig(1)
74540 key$ = inkey$
74550 bg2 = strig(0)
74560 pause 5
74570 wend
74580 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
74590 if (bg2 = 2) then
74600 cls 3:goto Business_Aishou_Input_1_parson:
74610 endif
74620 'ビジネスの相性占い　結果2　説明
74630 Result_Business_Aisyou2:
74640 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
74650 gload Gazo$ + "Screen1.png",0,0,0
74660 locate 0,1
74670 color rgb(255,0,0)
74680 print "●.相性の説明"
74690 color rgb(255,255,255)
74700 locate 0,4
74710 print "相性:";Result_Aisyou$
74720 locate 0,6:
74730 print "相性の説明:";buf$
74740 locate 0,15
74750 color rgb(0,0,0)
74760 print "右の丸ボタン:トップ,左のボタン:前の画面"
74770 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
74780 bg = strig(1)
74790 bg2 = strig(0)
74800 key$ = inkey$
74810 pause 100
74820 wend
74830 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
74840 if ((bg2 = 2)) then goto Result_Business_Aisyou:
74850 'Birds Eye Menu List
74860 Result_Birtheye_List1:
74870 'dim List$(4) Topに定義
74880 List$(0) = "1.バーズアイグリッドをもう一度診断"
74890 List$(1) = "2.診断結果"
74900 List$(2) = "3.データーを保存"
74910 List$(3) = "4.トップ画面に戻る"
74920 Birds_List1 = ui_select("List$","Menu")
74930 select case (Birds_List1)
74940 case 0: '1.もう一度診断
74950 for i=0 to 8
74960 buffer(i)=0
74970 next i
74980 goto Input_name1_Birdseye:
74990 case 1: '2.次へ行く
75000 gosub BirdsEye_Result2:
75010 case 2: '3.データーを保存
75020 ui_msg "データーを保存します"
75030 goto BirdsEye_Save_data:
75040 case 3: '4.トップに戻る
75050 for i=0 to 8
75060 buffer(i)=0
75070 next i
75080 goto Main_Screen:
75090 end select
75100 'BirdsEye Data Save
75110 BirdsEye_Save_data:
75120 if dir$(Save_data_Birdseye$) = "" then
75130 Mkdir Save_data_Birdseye$
75140 endif
75150 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
75160 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
75170 close #1
75180 ui_msg "データーを保存しました"
75190 goto Result_Birtheye_List1:
75200 'return
75210 '自作関数 ここから
75220 BirdsEyeGrid_Entry:
75230 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
75240 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
75250 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
75260 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
75270 locate 1,4:print "右の丸:メイン画面へ行く"
75280 else
75290 flag=1
75300 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
75310 while (eof(1)=0)
75320 line input #1,a$
75330 n = n + 1
75340 wend
75350 close #1
75360 'endif
75370 talk "登録件数は"+str$(n)+"件です。"
75380 locate 1,2:print "登録件数は";str$(n);"件です"
75390 locate 1,4:print "左の丸：メイン画面へ行く"
75400 endif
75410 Entry_Count:
75420 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
75430 key$ = inkey$
75440 bg = strig(1)
75450 bg2 = strig(0)
75460 pause 200
75470 wend
75480 if ((bg = 2) or (key$ = chr$(13))) then
75490 if (n = 0) then
75500 '登録件数　０件のとき　メイン画面に行く
75510 goto Main_Screen:
75520 else
75530 '登録件数1件以上　次へ行く
75540 'ここを変更する
75550 goto Entry_List:
75560 endif
75570 endif
75580 if (bg2 = 2) then
75590 if (n > 0) then
75600 goto Main_Screen:
75610 else
75620 goto Entry_Count:
75630 endif
75640 endif
75650 Entry_List:
75660 cls 3:play"":color rgb(255,255,255)
75670 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
75680 dim buffer_List$(11,n)
75690 'ファイル読み込み ここから
75700 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
75710 for i=0 to 10
75720 for j=0 to n-1
75730 input #1,a$
75740 buffer_List$(i,j)=a$
75750 next j
75760 next i
75770 close #1
75780 'erase buffer_List$
75790 'color rgb(255,255,255)
75800 i=0:key$="":bg=0:init"kb:4":bg2=0
75810 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
75820 key$ = inkey$
75830 bg = strig(1)
75840 bg2=strig(0)
75850 pause 200
75860 wend
75870 color rgb(0,0,0)
75880 locate 1,15:print "次へ"
75890 'show_ListData:
75900 'j=0
75910 repeat (j=0)
75920 show_ListData:
75930 cls
75940 color rgb(255,255,255)
75950 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
75960 '1の文字データー
75970 locate 4,14:print buffer_List$(2,j)
75980 '2の文字データー
75990 locate 4,9:print buffer_List$(3,j)
76000 '3の文字データー
76010 locate 4,5:print buffer_List$(4,j)
76020 '4の文字データー
76030 locate 11,14:print buffer_List$(5,j)
76040 '5の文字データー
76050 locate 11,9:PRINT buffer_List$(6,j)
76060 '6の文字データー
76070 locate 11,5:print buffer_List$(7,j)
76080 '7の文字データー
76090 locate 16,14:print buffer_List$(8,j)
76100 '8の文字データー
76110 locate 16,9:print buffer_List$(9,j)
76120 '9の文字データー
76130 locate 16,5:print buffer_List$(10,j)
76140 color rgb(0,0,0)
76150 locate 1,15:print "右の丸：次へ"
76160 if (bg=2 or key$=chr$(13)) then
76170 j=j+1
76180 endif
76190 if (bg2=2) then
76200 goto Main_Screen:
76210 endif
76220 until (j=n)
76230 'erase buffer_List$:
76240 goto show_ListData:
76250 'ファイル読み込み　ここまで
76260 func read_explain$(ba$)
76270 d$=""
76280 buf_String$=""
76290 if ba$="A" then
76300 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
76310 line input #1,a$
76320 a1$=mid$(a$,1,12)
76330 a2$=mid$(a$,13,17)
76340 a3$=mid$(a$,30,17)
76350 a4$=mid$(a$,47,18)
76360 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
76370 buf_String$ = a5$
76380 close #1
76390 endif
76400 if ba$="B"  then
76410 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
76420 line input #1,b$
76430 b1$=mid$(b$,1,15)
76440 b2$=mid$(b$,16,21)
76450 'b3$=mid$(b$,33,3)
76460 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
76470 buf_String$ = b4$
76480 close #1
76490 endif
76500 if ba$="C"  then
76510 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
76520 line input #1,c$
76530 c1$ = Mid$(c$,1,15)
76540 c2$ = Mid$(c$,16,33)
76550 c3$ = c1$ + chr$(13) + c2$
76560 buf_String$ = c3$
76570 close #1
76580 endif
76590 if ba$="D" then
76600 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
76610 line input #1,d$
76620 d1$=mid$(d$,1,15)
76630 d2$=mid$(d$,16,22)
76640 d3$=mid$(d$,38,7)
76650 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
76660 buf_String$ = d4$
76670 close #1
76680 endif
76690 if ba$="E"  then
76700 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
76710 line input #1,e$
76720 e1$=Mid$(e$,1,16)
76730 e2$=Mid$(e$,17,16)
76740 e3$=Mid$(e$,33,12)
76750 e4$=Mid$(e$,45,17)
76760 e5$=Mid$(e$,62,17)
76770 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
76780 buf_String$ = e6$
76790 close #1
76800 endif
76810 if ba$="F" then
76820 '改行を追加して表示を調整
76830 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
76840 line input #1,f$
76850 f1$=Mid$(f$,1,15)
76860 f2$=Mid$(f$,16,12)
76870 buf_String$ = f1$+chr$(13)+f2$
76880 close #1
76890 endif
76900 if ba$="G" then
76910 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
76920 line input #1,g$
76930 g1$ = mid$(g$,1,16)
76940 g2$ = mid$(g$,17,18)
76950 g3$ = mid$(g$,36,21)
76960 g4$ = mid$(g$,56,6)
76970 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
76980 buf_String$ = g5$
76990 close #1
77000 endif
77010 if ba$="H" then
77020 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
77030 line input #1,h$
77040 h1$=Mid$(h$,1,17)
77050 h2$=Mid$(h$,18,21)
77060 h3$=Mid$(h$,39,20)
77070 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
77080 buf_String$ = h$
77090 close #1
77100 endif
77110 if ba$ = "I" then
77120 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
77130 line input #1,i$
77140 i1$=Mid$(i$,1,10)
77150 i2$=Mid$(i$,11,13)
77160 i3$=Mid$(i$,25,16)
77170 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
77180 buf_String$ = i$
77190 close #1
77200 endif
77210 buffer$ = buf_String$
77220 endfunc buffer$
77230 'カバラ数（数秘番号を求める）
77240 func Kabara_Num(buffer_Year,month,day)
77250 '=============================
77260 'a1:4桁のうちの1桁目を求める
77270 '例 a1:1234の4が1桁目
77280 'a2:4桁のうちの2桁目を求める
77290 '例:a2:1234の3が2桁目
77300 'a3:4桁のうちの3桁目を求める
77310 '例 a3:1234の2が3桁目
77320 'a4:4桁のうちの4桁目を求める
77330 '例 a4:1234の1が4桁目
77340 '==============================
77350 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
77360 Year = buffer_Year
77370 '処理1　整数部分を取り出す。
77380 a4 = fix(Year / 1000)
77390 a3 = fix(Year / 100) - (a4 * 10)
77400 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
77410 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
77420 '処理　２　取り出した整数部分を足す。
77430 a_ = a1 + a2 + a3 + a4 +month + day
77440 'a1=0:a2=0:a3=0:a4=0
77450 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
77460 buffer = a_
77470 'else
77480 goto recomp2:
77490 'if (a_ = 10) then
77500 '  buffer = 1
77510 endif
77520 recomp2:
77530 a5=0:a6=0
77540 a5 = fix(a_ / 10)
77550 a6 = (a_) - (a5 * 10)
77560 a_ = a5 + a6
77570 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
77580 '結果に行く
77590 goto Res2:
77600 '  if ((a_>11) and (a_<99)) then
77610 else
77620 '再度計算
77630 goto recomp2:
77640 endif
77650 '     a1 = fix(a_ / 10)
77660 '     a2 = a_ - (a1 * 10)
77670 '     a_ = a1 + a2
77680 '     buffer = a_
77690 'endif
77700 'else
77710 '    bffer = a_
77720 'endif
77730 'endif
77740 'else
77750 'talk "プログラムを終了します。"
77760 'end
77770 'endif
77780 'kabara = 10
77790 Res2:
77800 kabara = a_
77810 endfunc kabara
77820 func Kabara_Aisyou$(buff1,buff2)
77830 a=0:b=0
77840 '範囲　1~9
77850 if ((buff1 > 0 and buff1 < 10)) then
77860 a = buff1
77870 else
77880 Select case buff1
77890 case 11:
77900 buff1=9:a=buff1
77910 case 22:
77920 buff1=10:a=buff1
77930 end select
77940 endif
77950 '範囲　１~９
77960 if ((buff2 > 0 and buff2 < 10)) then
77970 b = buff2
77980 else
77990 select case buff2
78000 case 11:
78010 buff2=9:b=buff2
78020 case 12:
78030 buff2=10:b=buff2
78040 end select
78050 endif
78060 Aisyou$ = Buffer_Business_Aisyou$(a,b)
78070 endfunc Aisyou$
78080 '=============================
78090 '自作関数 ここまで
78100 '1.数秘術　トップ画面
78110 '
78120 'Data_eraseを一番最後に持ってくる
78130 '=============================
78140 Data_erase:
78150 'メモリー削除
78160 erase buf_male_year
78170 erase buf_male_month
78180 erase buf_male_Born_Day
78190 erase buf_feMale_Born_Day
78200 erase buf_female_day
78210 erase buf_name1$
78220 erase buf_name2$
78230 erase buffer
78240 erase buf_chart$
78250 erase Buffer_Business_Aisyou$
78260 erase buffer_name$
78270 '上司の誕生日
78280 erase buf_Jyoushi_Born_Day
78290 '部下の誕生日
78300 erase buf_Buka_Born_Day
78310 erase buf_year
78320 erase buf_month
78330 erase buf_day
78340 'フォーカスライン
78350 erase Forcus1_buffer$
78360 erase Forcus2_buffer$
78370 erase Forcus3_buffer$
78380 'erase buffer_List$
78390 'Birds eye List Data 配列
78400 erase List$
78410 buffer$ = ""
78420 buf$ = ""
78430 buf_year$ = ""
78440 buf_Jyoushi_Kabara_Num = 0
78450 buf_Buka_Kabara_Num = 0
78460 count = 0
78470 buf_Month$ = ""
78480 buf_Day$ = ""
78490 b=0
78500 c=0
78510 return
