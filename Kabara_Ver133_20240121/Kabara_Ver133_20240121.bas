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
560 '2024.01.21:Ver133_20240121
570 Version$ = "Ver:1.3.3_20240121"
580 'Gazo Folder Japan
590 Gazo$ = "./data/Picture/"
600 'Gazo Folder English
610 Gazo_Eng$ = "./data/Picture/English/"
620 'Voice Folder 2023
630 Voice$ = "./data/Voice/Voice/"
640 'BirtheyeChart Data:20230626
650 Birth_eye_chart$ = "./data/chart_data/"
660 'Data Folder
670 Data$ = "./data/data/"
680 'Business Aisyou 結果説明保存フォルダ
690 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
700 'Save BirdsEyeGrit List Folder
710 Save_data_Birdseye$ = "./data/Parsonal_data/"
720 '変数定義 パート
730 b=0:c=0:n=0
740 'dim buffer_List$(11,1)
750 dim buf_name1$(10),buf_name2$(10)
760 dim buffer(9),buf_chart$(26,2)
770 'ビジネスの相性　データー
780 dim Buffer_Business_Aisyou$(12,12)
790 '男女の相性
800 dim Buffer_Bitween_sexes_Aisyou$(12,12)
810 '生れた年代
820 dim buf_year(4):buf_year$ = ""
830 dim buf_month(2)
840 dim buf_day(2)
850 'フォーカスライン　配列
860 dim Forcus1_buffer$(3)
870 dim Forcus2_buffer$(3)
880 dim Forcus3_buffer$(2)
890 '生れた月
900 buf_Month$ = ""
910 '生れた日
920 buf_Day$ = ""
930 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
940 dim buffer_name$(3)
950 '1-1.上司の誕生日(数値データー)
960 dim buf_Jyoushi_Born_Day(3)
970 '1-2.上司の数秘ナンバー(数値データー)
980 buf_Jyoushi_Kabara_Num = 0
990 '2-1.部下の誕生日(数値データー)
1000 dim buf_Buka_Born_Day(3)
1010 '2-2.部下の数秘ナンバー(数秘データー)
1020 buf_Buka_Kabara_Num = 0
1030 dim buf_male_year(4)
1040 dim buf_male_month(2)
1050 dim buf_male_Born_Day(2)
1060 dim buf_feMale_Born_Day(2)
1070 dim buf_female_day(2)
1080 count=0
1090 'Birds Eye List 配列
1100 dim List$(6)
1110 '部下の数秘ナンバー
1120 'File 読み込み
1130 '1.ビジネスの相性占い
1140 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1150 for i=0 to 11
1160 for j=0 to 11
1170 input #1,a$
1180 Buffer_Business_Aisyou$(j,i) = a$
1190 next j
1200 next i
1210 close #1
1220 '2.男女の相性占い
1230 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1240 for i=0 to 11
1250 for j=0 to 11
1260 input #1,a$
1270 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1280 next j
1290 next i
1300 close #1
1310 '2.Birth Eye chart$
1320 '2.バーズアイグリッドを読み込む
1330 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1340 for j=0 to 25
1350 for i=0 to 1
1360 input #1,a$
1370 buf_chart$(j,i) = a$
1380 next i
1390 next j
1400 close #1
1410 'File 読み込み　ここまで
1420 'Main画面
1430 screen 1,1,1,1
1440 Main_Screen:
1450 cls 3:
1460 No=0
1470 gload Gazo$ + "Selection.png",1,5,200
1480 gload Gazo$ + "Selection.png",1,5,300
1490 gload Gazo$ + "Selection.png",1,5,400
1500 gload Gazo$ + "Selection.png",1,5,500
1510 '4
1520 gload Gazo$ + "Selection.png",1,35,300
1530 '5
1540 gload Gazo$ + "Selection.png",1,35,400
1550 '6
1560 gload Gazo$ + "Selection.png",1,35,500
1570 '7
1580 gload Gazo$ + "Selection.png",1,70,300
1590 '8
1600 gload Gazo$ + "Selection.png",1,70,400
1610 '9
1620 gload Gazo$ + "Selection.png",1,70,500
1630 '10
1640 gload Gazo$ + "Selection.png",1,110,300
1650 '11
1660 gload Gazo$ + "Selection.png",1,110,400
1670 '12
1680 gload Gazo$ + "Selection.png",1,110,500
1690 '13:0
1700 gload Gazo$ + "Selection.png",1,150,400
1710 gload Gazo$ + "Selection.png",1,200,400
1720 if ex_info$(1) <> "JP" then
1730 '英語　トップ画面
1740 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
1750 else
1760 '日本語トップスクリーン
1770 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1780 endif
1790 '選択肢の丸
1800 gload Gazo$ + "downscreen.png",0,0,800
1810 sp_def 0,(5,300),32,32
1820 sp_def 1,(5,400),32,32
1830 sp_def 2,(5,500),32,32
1840 sp_def 3,(5,600),32,32
1850 '1
1860 sp_def 4,(35,300),32,32
1870 '2
1880 sp_def 5,(35,400),32,32
1890 '3
1900 sp_def 6,(35,500),32,32
1910 '4
1920 sp_def 7,(70,300),32,32
1930 '5
1940 sp_def 8,(70,400),32,32
1950 '6
1960 sp_def 9,(70,500),32,32
1970 '7
1980 sp_def 10,(110,300),32,32
1990 '8
2000 sp_def 11,(110,400),32,32
2010 '9
2020 sp_def 12,(110,400),32,32
2030 sp_def 13,(150,400),32,32
2040 sp_def 14,(200,400),32,32
2050 'Sprite OFF
2060 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
2070 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
2080 sp_put 0,(5,300),0,0
2090 sp_put 1,(5,400),1,0
2100 sp_put 2,(5,500),2,0
2110 sp_put 3,(5,600),3,0
2120 '1
2130 sp_put 4,(130,300),4,0
2140 '2
2150 sp_put 5,(130,400),5,0
2160 '3
2170 sp_put 6,(130,500),6,0
2180 '4
2190 sp_put 7,(340,300),7,0
2200 '5
2210 sp_put 8,(340,400),8,0
2220 '6
2230 sp_put 9,(340,500),9,0
2240 '7
2250 sp_put 10,(540,300),10,0
2260 '8
2270 sp_put 11,(540,400),11,0
2280 '9
2290 sp_put 12,(540,500),12,0
2300 '
2310 sp_put 13,(340,600),13,0
2320 sp_put 14,(540,600),14,0
2330 Main_Top:
2340 'Main Message 2023.06.07
2350 '再生を止める
2360 play ""
2370 init "kb:4"
2380 'font 32:
2390 font 40
2400 if ex_info$(1) <> "JP" then
2410 '1.英語表示ターム
2420 print chr$(13) + chr$(13) + chr$(13)
2430 color rgb(217,255,212)
2440 print "Please Select Number?" + chr$(13)+chr$(13)
2450 '0
2460 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
2470 '1
2480 print " :2.Setting" + chr$(13)+chr$(13)
2490 '2
2500 print " :3.Help" + chr$(13)
2510 '3
2520 print " :4.(Finishing)Program" + chr$(13)
2530 COLOR rgb(0,0,0):No=0
2540 locate 1,18
2550 print "                                        "
2560 locate 1,18
2570 print "1.It has Selected Kabara Fortune Telling"
2580 '1.英語表示ターム
2590 '---------音声 日本語　英語に変える----------------
2600 'play Voice$ + "Voice_Main_Message_20230607.mp3"
2610 '---------音声 日本語　英語に変える----------------
2620 else
2630 '2.日本語表示ターム
2640 font 48
2650 print chr$(13) + chr$(13) + chr$(13)
2660 color rgb(217,255,212)
2670 print "番号を選んでください" + chr$(13)
2680 '0
2690 print " :1.数秘術占い" + chr$(13)
2700 '1
2710 print " :2.設 定" + chr$(13)
2720 '2
2730 print " :3.ヘルプ" + chr$(13)
2740 '3
2750 print " :4.(プログラムを)終了する" + chr$(13)
2760 COLOR rgb(0,0,0):No=0
2770 locate 1,15
2780 print "                                       "
2790 locate 1,15:print "1.数秘術占いを選択"
2800 play Voice$ + "Voice_Main_Message_20230607.mp3"
2810 '2.日本語表示ターム
2820 endif
2830 Main_Screen_Select:
2840 y = 0:key$ = "":bg = 0:bg2=0
2850 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2860 y = stick(1)
2870 '"May (2023)"
2880 key$ = inkey$
2890 bg = strig(1)
2900 bg2 = strig(0)
2910 pause 200
2920 wend
2930 '1.
2940 'ジョイパッドのソース ソート　ここから
2950 'カーソル　下 or 十字キー下
2960 if ((y = 1) or (key$ = chr$(31))) then
2970 select case No
2980 case 0:
2990 '1
3000 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3010 case 1:
3020 '2
3030 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3040 case 2:
3050 '3
3060 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3070 case 3:
3080 '0
3090 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
3100 end select
3110 endif
3120 '2.
3130 'カーソル　上　or 十字キー  上
3140 if ((y = -1) or (key$ = chr$(30))) then
3150 select case No
3160 case 0:
3170 '3
3180 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3190 case 1:
3200 '0
3210 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
3220 case 2:
3230 '1
3240 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3250 case 3:
3260 '2
3270 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3280 end select
3290 endif
3300 'ジョイパッド　ソース 部分　ここまで
3310 'ジョイパッド右　　or Enter key 決定
3320 if ((bg = 2) OR (key$ = chr$(13))) then
3330 select case No
3340 case 0:
3350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
3360 case 1:
3370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
3380 case 2:
3390 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
3400 case 3:
3410 play "":pause 200
3420 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
3430 end select
3440 endif
3450 if (bg2 = 2) then
3460 play "":pause 200
3470 play Voice$ + "Voice_Main_Message_20230607.mp3"
3480 goto Main_Screen_Select:
3490 endif
3500 'Version
3510 Version:
3520 cls 3:PLAY ""
3530 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3540 gload Gazo$ + "downscreen.png",0,0,800
3550 init"kb:4":font 32+8
3560 'talk"バージョン情報です"
3570 'Message :Version
3580 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3590 locate 0,3
3600 color rgb(0,0,0)
3610 print "・Title:数秘術占い";chr$(13)
3620 print "・" + Version$ + chr$(13)
3630 print "・Author:licksjp"+chr$(13)
3640 print "・E-mail:licksjp@gmail.com" + chr$(13)
3650 locate 0,12
3660 print "(C)licksjp All rights " + chr$(13)
3670 locate 7,13
3680 print "reserved since 2009"+chr$(13)
3690 locate 0,18
3700 color rgb(255,255,255)
3710 print "ジョイパッドの右を押してください"
3720 Versionn_Selection:
3730 bg = 0:key$ = "":bg2 = 0
3740 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3750 bg = strig(1)
3760 key$ = inkey$
3770 bg2 = strig(0)
3780 pause 200
3790 wend
3800 if ((bg = 2) or (key$ = chr$(13))) then
3810 cls 4:goto Main_Screen:
3820 endif
3830 if (bg2=2) then
3840 play "":pause 200
3850 play Voice$ + "Voice_Version_Message_20230607.mp3"
3860 goto Versionn_Selection:
3870 endif
3880 '1.数秘ナンバーを求める
3890 '誕生日入力(生れた年代)
3900 Input_Seireki:
3910 cls 3:play "":count=0:count2=0
3920 'No = -1:Okのとき
3930 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3940 for i=0 to 3
3950 buf_year(i)=0
3960 next i
3970 gload Gazo$ + "Screen2.png",0,0,0
3980 gload Gazo$ + "downscreen.png",0,0,800
3990 'Init"kb:2"
4000 '音声ファイル再生 2023.06.07
4010 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
4020 font 48
4030 locate 0,1
4040 if ex_info$(1) <> "JP" then
4050 color rgb(255,255,255)
4060 color rgb(255,255,255)
4070 print "Input Born Year?" + chr$(13)
4080 color rgb(255,255,255)
4090 locate 2,3
4100 print "Your Born Year(4 dedgit for AC):" + buf_year$
4110 else
4120 '文字色：黒　 color rgb(0,0,0)
4130 color rgb(255,255,255)
4140 print "生まれた年代を入れて下さい" + chr$(13)
4150 color rgb(255,255,255)
4160 locate 2,3
4170 print "生まれた年代(西暦4桁):" + buf_year$
4180 endif
4190 '=============================
4200 'テンキーの色(1~９)　白 ,決定ボタン　青
4210 '=============================
4220 color rgb(255,255,255)
4230 'locate 4,6:print ":7"
4240 'locate 9,6:print ":8"
4250 'locate 12,6:print ":9"
4260 'locate 4,6
4270 'print ":7  :8  :9" + chr$(13)
4280 'color rgb(255,255,255)
4290 'locate 4,8
4300 'print ":4  :5  :6" + chr$(13)
4310 'color rgb(255,255,255)
4320 'locate 4,10
4330 'print ":1  :2  :3" + chr$(13)
4340 'locate 4,12
4350 'print "    :0"
4360 'locate 12,12
4370 'color rgb(255,0,0)
4380 'print ":Ok"
4390 sp_on 4,0: sp_on 5,0:sp_on 6,0
4400 sp_on 7,0:sp_on 8,0:sp_on 9,0
4410 sp_on 10,0:sp_on 11,0:sp_on 12,0
4420 sp_on 13,0:sp_on 14,1
4430 Input_Seireki2:
4440 key$="":bg=0:y=0:y2=0:bg2=0:
4450 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
4460 key$ = inkey$
4470 bg = strig(1)
4480 y = stick(1)
4490 y2 = stick(0)
4500 bg2 = strig(0)
4510 pause 200
4520 wend
4530 '十字キー　ここから
4540 '上の矢印　または、十字キー上
4550 if ((y = -1) or (key$ = chr$(30))) then
4560 select case No
4570 'No=-1:okのとき:初期の状態
4580 '0kボタンから３に移動
4590 '上に行く 処理
4600 case -1:
4610 No=3:sp_on 12,1:sp_on 14,0
4620 pause 200:goto Input_Seireki2:
4630 '選択肢:3
4640 '3ボタンから 6に移動
4650 case 3:
4660 No=6:sp_on 12,0:sp_on 11,1
4670 pause 200:goto Input_Seireki2:
4680 '6ボタンから ９に移動
4690 case 6:
4700 No=9:sp_on 10,1:sp_on 11,0
4710 pause 200:goto Input_Seireki2:
4720 '6ボタンから ９に移動　ここまで
4730 '9で上を押して何もしない
4740 case 9:
4750 '何もしない
4760 No=9
4770 pause 200:goto Input_Seireki2:
4780 '9で上を押しても何もしない　ここまで
4790 '上　 0ボタンから2ボタン
4800 'sp_on 6,1:1
4810 'sp_on 8,1:5
4820 'sp_on 7,1:7
4830 case 0:
4840 No=2:sp_on 13,0:sp_on 9,1:
4850 pause 200:goto Input_Seireki2:
4860 '上  0ボタンから2ボタン　ここまで
4870 '2から５になる 上
4880 case 2:
4890 No=5:sp_on 8,1:sp_on 9,0:
4900 pause 200:goto Input_Seireki2:
4910 case 5:
4920 No=8:sp_on 7,1:sp_on 8,0
4930 pause 200:goto Input_Seireki2:
4940 case 8:
4950 pause 200:goto Input_Seireki2:
4960 case 1:
4970 No=4:sp_on 5,1:sp_on 6,0
4980 pause 200:goto Input_Seireki2:
4990 case 4:
5000 No=7:sp_on 4,1:sp_on 5,0
5010 pause 200:goto Input_Seireki2:
5020 case 7:
5030 pause 200:goto Input_Seireki2:
5040 end select
5050 endif
5060 '左３　ここまで
5070 '下の矢印
5080 '中央 2
5090 if ((y=1) or (key$ = chr$(31))) then
5100 select case No
5110 '9から６に下げる
5120 case 9:
5130 No=6:sp_on 11,1:sp_on 10,0
5140 pause 200:goto Input_Seireki2:
5150 '6から３に下げる
5160 case 6:
5170 No=3:sp_on 12,1:sp_on 11,0
5180 pause 200:goto Input_Seireki2:
5190 '3から０ｋに変える
5200 case 3:
5210 No=-1:sp_on 14,1:sp_on 12,0
5220 pause 200:goto Input_Seireki2:
5230 'Okから下のボタンを押しても何もしない
5240 case -1:
5250 pause 200:goto Input_Seireki2:
5260 case 8:
5270 No=5:sp_on 8,1:sp_on 7,0
5280 pause 200:goto Input_Seireki2:
5290 case 5:
5300 No=2:sp_on 9,1:sp_on 8,0
5310 pause 200:goto Input_Seireki2:
5320 case 2:
5330 No=0:sp_on 13,1:sp_on 9,0
5340 pause 200:goto Input_Seireki2:
5350 case 0:
5360 pause 200:goto Input_Seireki2:
5370 case 7:
5380 No=4:sp_on 5,1:sp_on 4,0
5390 pause 200:goto Input_Seireki2:
5400 case 4:
5410 No=1:sp_on 6,1:sp_on 5,0
5420 pause 200:goto Input_Seireki2:
5430 case 1:
5440 pause 200:goto Input_Seireki2:
5450 end select
5460 endif
5470 '左へボタン 十字キー　左　or 　カーソル左
5480 if ((y2 = -1) or (key$ = chr$(29))) then
5490 select case No
5500 'Ok ボタン  Okから　左　０に行く
5510 case -1:
5520 No=0:sp_on 13,1:sp_on 14,0
5530 pause 200:goto Input_Seireki2:
5540 '0 ボタン  左　何もしない
5550 case 0:
5560 pause 200:goto Input_Seireki2:
5570 case 3:
5580 No=2:sp_on 9,1:sp_on 12,0:
5590 pause 200:goto Input_Seireki2:
5600 case 2:
5610 No=1:sp_on 6,1:sp_on 9,0:
5620 pause 200:goto Input_Seireki2:
5630 case 1:
5640 pause 200:goto Input_Seireki2:
5650 case 6:
5660 No=5:sp_on 8,1:sp_on 11,0
5670 pause 200:goto Input_Seireki2:
5680 case 5:
5690 No=4:sp_on 5,1:sp_on 8,0
5700 pause 200:goto Input_Seireki2:
5710 case 4:
5720 pause 200:goto Input_Seireki2:
5730 case 9:
5740 No=8:sp_on 7,1:sp_on 10,0
5750 pause 200:goto Input_Seireki2:
5760 case 8:
5770 No=7:sp_on 4,1:sp_on 7,0
5780 pause 200:goto Input_Seireki2:
5790 case 7:
5800 pause 200:goto Input_Seireki2:
5810 end select
5820 endif
5830 '右  十字キー　右　or カーソル　右
5840 if ((y2 = 1) or (key$ = chr$(28))) then
5850 select case No
5860 '0ボタンからokボタン右に移動
5870 case 0:
5880 No=-1:sp_on 14,1:sp_on 13,0
5890 pause 200:goto Input_Seireki2:
5900 '0ボタンからokボタン 右に移動　ここまで
5910 'OKボタンで右を押して何もしない
5920 case -1:
5930 pause 200:goto Input_Seireki2:
5940 case 1:
5950 No=2:sp_on 9,1:sp_on 6,0
5960 pause 200:goto Input_Seireki2:
5970 case 2:
5980 No=3:sp_on 12,1:sp_on 9,0
5990 pause 200:goto Input_Seireki2:
6000 case 3:
6010 pause 200:goto Input_Seireki2:
6020 case 4:
6030 No=5:sp_on 8,1:sp_on 5,0
6040 pause 200:goto Input_Seireki2:
6050 case 5:
6060 No=6:sp_on 11,1:sp_on 8,0
6070 pause 200:goto Input_Seireki2:
6080 case 7:
6090 No=8:sp_on 7,1:sp_on 4,0
6100 pause 200:goto Input_Seireki2:
6110 case 8:
6120 No=9:sp_on 10,1:sp_on 7,0
6130 pause 200:goto Input_Seireki2:
6140 case 9:
6150 pause 200:goto Input_Seireki2:
6160 case 6:
6170 pause 200:goto Input_Seireki2:
6180 end select
6190 'Okから右ボタンを押して何もしない ここまで
6200 endif
6210 '十字キー　ここまで
6220 if ((bg=2) or (key$=chr$(13))) then
6230 select case count
6240 case 0:
6250 count=1
6260 if (No=-1) then
6270 count=0
6280 'Okボタンを押したとき
6290 goto Input_Seireki2:
6300 else
6310 '===================================
6320 'Okボタン以外が押されたとき  1桁目の入力
6330 '===================================
6340 count2=1
6350 if (No >= 1 and No <= 2) then
6360 buf_year$="":buf_year$ = str$(No)
6370 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
6380 if ex_info$(1) <> "JP" then
6390 n1= len("Input Born Year?(4 dedgit):")
6400 else
6410 n1 = len("生まれた年代(西暦4桁):")
6420 endif
6430 locate 2,3
6440 color rgb(255,255,255)
6450 if ex_info$(1) <> "JP" then
6460 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
6470 else
6480 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
6490 endif
6500 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
6510 'print "生まれた年代(西暦4桁):";buf_year2$
6520 print buf_Born_Year_line$
6530 goto Input_Seireki2:
6540 else
6550 count=0
6560 ui_msg"数字が範囲外になります。"
6570 buf_year$="":buf_year=0
6580 goto Input_Seireki2:
6590 endif
6600 endif
6610 case 1:
6620 count = 2
6630 if (No = -1) then
6640 count = 1
6650 goto Input_Seireki2:
6660 else
6670 count2 = 1
6680 b = val(buf_year$)
6690 buf_year = b * 10 + No
6700 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6710 locate 2,3
6720 color rgb(255,255,255)
6730 print "                                                                "
6740 locate 2,3
6750 if ex_info$(1) <> "JP" then
6760 print "Input Born Year(4 dedgit):";buf_year$
6770 else
6780 print "生まれた年代(西暦4桁):";buf_year2$
6790 endif
6800 'if (No = -1) then
6810 'count=1
6820 goto Input_Seireki2:
6830 endif
6840 case 2:
6850 count=3
6860 if (No=-1) then
6870 count =2
6880 goto Input_Seireki2:
6890 else
6900 b = val(buf_year$)
6910 buf_year = b*10 + No
6920 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6930 locate 2,3
6940 color rgb(255,255,255)
6950 print "                                        "
6960 locate 2,3
6970 if ex_info$(1) <> "JP" then
6980 print "Input Born Year?(4 dedgit):";buf_year$
6990 else
7000 print "生まれた年代(西暦4桁):";buf_year2$
7010 endif
7020 goto Input_Seireki2:
7030 endif
7040 case 3:
7050 count=4
7060 if (No = -1) then
7070 count=3
7080 goto Input_Seireki2:
7090 else
7100 b = val(buf_year$)
7110 buf_year = b * 10 + No
7120 buf_year$ = str$(buf_year)
7130 locate 2,3
7140 color RGB(255,255,255)
7150 print "                                      "
7160 locate 2,3
7170 if ex_info$(1) <> "JP" then
7180 print "Input Born Year?(4 dedgit):";buf_year$
7190 else
7200 print "生まれた年代(西暦4桁):";buf_year$
7210 endif
7220 buf_year=val(buf_year$)
7230 'year=val(buf_year$)
7240 'if (No=-1) then
7250 'goto Input_Born_Month:
7260 'else
7270 goto Input_Seireki2:
7280 endif
7290 case 4:
7300 'bufyear=buf_year
7310 if (No = -1) then
7320 buf_year = val(buf_year$)
7330 bufyear = buf_year
7340 sp_on 14,0
7350 goto Input_Born_Month:
7360 else
7370 goto Input_Seireki2:
7380 endif
7390 end select
7400 endif
7410 '=========================
7420 'bg2　キャンセルボタン
7430 '=========================
7440 if (bg2 = 2) then
7450 select case count2
7460 case 0:
7470 'Okボタンを押したときの処理
7480 if (No = -1) then
7490 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
7500 'count = 0
7510 locate 2,3
7520 color rgb(255,255,255)
7530 print "                                      "
7540 locate 2,3
7550 if ex_info$(1) <> "JP" then
7560 print "Input Born Year?(4 dedgit):";buf_year$
7570 else
7580 print "生まれた年代（西暦4桁):";buf_year$
7590 endif
7600 '=============================
7610 'case 0:前の画面に戻る 数秘術トップメニュー
7620 '=============================
7630 sp_on 14,0:goto Kabara_TopScreen:
7640 else
7650 'count=0
7660 '(buf_year=0) then
7670 buf_year = 0:buf_year$ = string$(4,"*")
7680 goto Input_Seireki2:
7690 'endif
7700 endif
7710 case 1:
7720 if (No = -1) then
7730 count2 = 0:count = 0
7740 buf$=right$(buf_year$,1)
7750 if (val(buf$) >= 1 and val(buf$) <= 9) then
7760 buf_year$ = "****":buf_year=0
7770 color rgb(255,255,255)
7780 locate 0,3:
7790 print "                                      "
7800 locate 2,3
7810 if ex_info$(1) <> "JP" then
7820 print "Input Born Year(4 dedgit):";buf_year$
7830 else
7840 print "生まれた年代（西暦4桁):" + buf_year$
7850 endif
7860 goto Input_Seireki2:
7870 endif
7880 else
7890 endif
7900 end select
7910 endif
7920 end
7930 'Input"生れた年代(4桁,〜2025年):",year
7940 'if year > 2025 then goto Input_Seireki:
7950 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7960 '"4桁目"
7970 'bufyear4 = fix(year / 1000)
7980 '"3桁目"
7990 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
8000 '"2桁目"
8010 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
8020 '"1桁目"
8030 'bufyear1 = fix((year - ((bufyear4*
8040 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
8050 '生れた月を入力
8060 Input_Born_Month:
8070 cls 3:play "":count=0:count2=0
8080 'No=-1:Okのとき
8090 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
8100 for i=0 to 1
8110 buf_month(i)=0
8120 next i
8130 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
8140 gload Gazo$ + "Screen2.png",0,0,0
8150 gload Gazo$ + "downscreen.png",0,0,800
8160 'Init"kb:2"
8170 if ex_info$(1) <> "JP" then
8180 else
8190 '音声ファイル再生 2023.06.07
8200 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
8210 endif
8220 font 48
8230 locate 0,1
8240 '文字色：黒　 color rgb(0,0,0)
8250 if ex_info$(1) <> "JP" then
8260 '英語パート
8270 '文字色:白
8280 color rgb(255,255,255)
8290 print "Input Born Month?(1~12):" + chr$(13)
8300 '文字色:白
8310 color rgb(255,255,255)
8320 locate 2,3
8330 '文字色:白
8340 print "Your Born Month?(1~12):";buf_Month$
8350 color rgb(255,255,255)
8360 else
8370 '日本語パート
8380 color rgb(255,255,255)
8390 print "生まれた月を入れて下さい" + chr$(13)
8400 '文字色:白
8410 color rgb(255,255,255)
8420 locate 2,3
8430 '文字色:白
8440 print "生まれた月(1月~12月):";buf_Month$
8450 color rgb(255,255,255)
8460 endif
8470 'locate 4,6:print ":7"
8480 'locate 9,6:print ":8"
8490 'locate 12,6:print ":9"
8500 'locate 4,6
8510 '文字色:赤
8520 'print ":7  :8  :9" + chr$(13)
8530 'color rgb(255,255,255)
8540 'locate 4,8
8550 'print ":4  :5  :6" + chr$(13)
8560 'color rgb(255,255,255)
8570 'locate 4,10
8580 'print ":1  :2  :3" + chr$(13)
8590 'locate 4,12
8600 'print "    :0"
8610 'locate 12,12
8620 'color rgb(255,0,0)
8630 'print ":Ok"
8640 sp_on 4,0: sp_on 5,0:sp_on 6,0
8650 sp_on 7,0:sp_on 8,0:sp_on 9,0
8660 sp_on 10,0:sp_on 11,0:sp_on 12,0
8670 sp_on 13,0:sp_on 14,1
8680 Input_Born_Month2:
8690 key$="":bg=0:y=0:y2=0:bg2=0
8700 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
8710 key$ = inkey$
8720 bg = strig(1)
8730 y = stick(1)
8740 y2 = stick(0)
8750 bg2 = strig(0)
8760 pause 200
8770 wend
8780 '十字キー　ここから
8790 '上の矢印　または、十字キー上
8800 if ((y = -1) or (key$ = chr$(30))) then
8810 select case No
8820 'No=-1:okのとき:初期の状態
8830 '0kボタンから３に移動
8840 '上に行く 処理
8850 case -1:
8860 No=3:sp_on 12,1:sp_on 14,0
8870 pause 200:goto Input_Born_Month2:
8880 '選択肢:3
8890 '3ボタンから 6に移動
8900 case 3:
8910 No=6:sp_on 12,0:sp_on 11,1
8920 pause 200:goto Input_Born_Month2:
8930 '6ボタンから ９に移動
8940 case 6:
8950 No=9:sp_on 10,1:sp_on 11,0
8960 pause 200:goto Input_Born_Month2:
8970 '6ボタンから ９に移動　ここまで
8980 '9で上を押して何もしない
8990 case 9:
9000 '何もしない
9010 No=9
9020 pause 200:goto Input_Born_Month2:
9030 '9で上を押しても何もしない　ここまで
9040 '上　 0ボタンから2ボタン
9050 'sp_on 6,1:1
9060 'sp_on 8,1:5
9070 'sp_on 7,1:7
9080 case 0:
9090 No=2:sp_on 13,0:sp_on 9,1:
9100 pause 200:goto Input_Born_Month2:
9110 '上  0ボタンから2ボタン　ここまで
9120 '2から５になる 上
9130 case 2:
9140 No=5:sp_on 8,1:sp_on 9,0:
9150 pause 200:goto Input_Born_Month2:
9160 case 5:
9170 No=8:sp_on 7,1:sp_on 8,0
9180 pause 200:goto Input_Born_Month2:
9190 case 8:
9200 pause 200:goto Input_Born_Month2:
9210 case 1:
9220 No=4:sp_on 5,1:sp_on 6,0
9230 pause 200:goto Input_Born_Month2:
9240 case 4:
9250 No=7:sp_on 4,1:sp_on 5,0
9260 pause 200:goto Input_Born_Month2:
9270 case 7:
9280 pause 200:goto Input_Born_Month2:
9290 end select
9300 endif
9310 '左３　ここまで
9320 '下の矢印
9330 '中央 2
9340 if ((y=1) or (key$ = chr$(31))) then
9350 select case No
9360 '9から６に下げる
9370 case 9:
9380 No=6:sp_on 11,1:sp_on 10,0
9390 pause 200:goto Input_Born_Month2:
9400 '6から３に下げる
9410 case 6:
9420 No=3:sp_on 12,1:sp_on 11,0
9430 pause 200:goto Input_Born_Month2:
9440 '3から０ｋに変える
9450 case 3:
9460 No=-1:sp_on 14,1:sp_on 12,0
9470 pause 200:goto Input_Born_Month2:
9480 'Okから下のボタンを押しても何もしない
9490 case -1:
9500 pause 200:goto Input_Born_Month2:
9510 case 8:
9520 No=5:sp_on 8,1:sp_on 7,0
9530 pause 200:goto Input_Born_Month2:
9540 case 5:
9550 No=2:sp_on 9,1:sp_on 8,0
9560 pause 200:goto Input_Born_Month2:
9570 case 2:
9580 No=0:sp_on 13,1:sp_on 9,0
9590 pause 200:goto Input_Born_Month2:
9600 case 0:
9610 pause 200:goto Input_Born_Month2:
9620 case 7:
9630 No=4:sp_on 5,1:sp_on 4,0
9640 pause 200:goto Input_Born_Month2:
9650 case 4:
9660 No=1:sp_on 6,1:sp_on 5,0
9670 pause 200:goto Input_Born_Month2:
9680 case 1:
9690 pause 200:goto Input_Born_Month2:
9700 end select
9710 endif
9720 '左へボタン 十字キー　左　or 　カーソル左
9730 if ((y2 = -1) or (key$ = chr$(29))) then
9740 select case No
9750 'Ok ボタン  Okから　左　０に行く
9760 case -1:
9770 No=0:sp_on 13,1:sp_on 14,0
9780 pause 200:goto Input_Born_Month2:
9790 '0 ボタン  左　何もしない
9800 case 0:
9810 pause 200:goto Input_Born_Month2:
9820 case 3:
9830 No=2:sp_on 9,1:sp_on 12,0:
9840 pause 200:goto Input_Born_Month2:
9850 case 2:
9860 No=1:sp_on 6,1:sp_on 9,0:
9870 pause 200:goto Input_Born_Month2:
9880 case 1:
9890 pause 200:goto Input_Born_Month2:
9900 case 6:
9910 No=5:sp_on 8,1:sp_on 11,0
9920 pause 200:goto Input_Born_Month2:
9930 case 5:
9940 No=4:sp_on 5,1:sp_on 8,0
9950 pause 200:goto Input_Born_Month2:
9960 case 4:
9970 pause 200:goto Input_Born_Month2:
9980 case 9:
9990 No=8:sp_on 7,1:sp_on 10,0
10000 pause 200:goto Input_Born_Month2:
10010 case 8:
10020 No=7:sp_on 4,1:sp_on 7,0
10030 pause 200:goto Input_Born_Month2:
10040 case 7:
10050 pause 200:goto Input_Born_Month2:
10060 end select
10070 endif
10080 '右  十字キー　右　or カーソル　右
10090 if ((y2 = 1) or (key$ = chr$(28))) then
10100 select case No
10110 '0ボタンからokボタン右に移動
10120 case 0:
10130 No=-1:sp_on 14,1:sp_on 13,0
10140 pause 200:goto Input_Born_Month2:
10150 '0ボタンからokボタン 右に移動　ここまで
10160 'OKボタンで右を押して何もしない
10170 case -1:
10180 pause 200:goto Input_Born_Month2:
10190 case 1:
10200 No=2:sp_on 9,1:sp_on 6,0
10210 pause 200:goto Input_Born_Month2:
10220 case 2:
10230 No=3:sp_on 12,1:sp_on 9,0
10240 pause 200:goto Input_Born_Month2:
10250 case 3:
10260 pause 200:goto Input_Born_Month2:
10270 case 4:
10280 No=5:sp_on 8,1:sp_on 5,0
10290 pause 200:goto Input_Born_Month2:
10300 case 5:
10310 No=6:sp_on 11,1:sp_on 8,0
10320 pause 200:goto Input_Born_Month2:
10330 case 7:
10340 No=8:sp_on 7,1:sp_on 4,0
10350 pause 200:goto Input_Born_Month2:
10360 case 8:
10370 No=9:sp_on 10,1:sp_on 7,0
10380 pause 200:goto Input_Born_Month2:
10390 case 9:
10400 pause 200:goto Input_Born_Month2:
10410 case 6:
10420 pause 200:goto Input_Born_Month2:
10430 end select
10440 'Okから右ボタンを押して何もしない ここまで
10450 endif
10460 '十字キー　ここまで
10470 '右の丸ボタン　決定キー
10480 if ((bg=2) or (key$=chr$(13))) then
10490 select case count
10500 case 0:
10510 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
10520 if (buf_month = 1 or buf_month = 2) then
10530 locate 2,3
10540 color RGB(255,255,255)
10550 if ex_info$(1) <> "JP" then
10560 print "Input Born Month(1~12):";buf_Month$
10570 else
10580 print "生まれた月(1月~12月):";buf_Month2$
10590 endif
10600 else
10610 locate 2,3
10620 color Rgb(255,255,255)
10630 if ex_info$(1) <> "JP" then
10640 print "Input Born Month(1~12):";buf_Month$
10650 else
10660 print "生まれた月(1月~12月):";buf_Month$
10670 endif
10680 endif
10690 goto Input_Born_Month2:
10700 case 1:
10710 count = 2:c = No
10720 c = val(buf_Month$)
10730 if (No = -1) then
10740 'if No=1 or No=2 then
10750 'endif
10760 month = buf_month
10770 buf_month=val(buf_Month$)
10780 month=buf_month
10790 '生まれた日に飛ぶ
10800 goto Input_Born_Day:
10810 else
10820 buf_month = c*10 + No
10830 buf_Month$= str$(buf_month)
10840 locate 2,3
10850 color Rgb(255,255,255)
10860 if ex_info$(1) <> "JP" then
10870 print "Input Born Month(1~12):";buf_Month$
10880 else
10890 print "生まれた月(1月~12月):";buf_Month$
10900 endif
10910 goto Input_Born_Month2:
10920 endif
10930 case 2:
10940 count=3:count2=1
10950 'c= val(buf_Month$)
10960 'buf_month = c*10 + No
10970 'buf_Month$ = str$(buf_month)
10980 'locate 2,3
10990 'print "生まれた月(1月～12月):";buf_Month$
11000 'goto Input_Born_Month2:
11010 'case 3:
11020 'count=4
11030 'b=val(buf_month$)
11040 'buf_month=c*10+No
11050 'buf_Month$=str$(buf_month)
11060 'locate 2,3
11070 'print "生まれた月(1月～12月):";buf_Month$
11080 'buf_month=val(buf_Month$)
11090 'year=val(buf_year$)
11100 if (No=-1) then
11110 goto Input_Born_Day:
11120 else
11130 'goto Input_Born_Month2:
11140 endif
11150 'case 4:
11160 'bufyear=buf_year
11170 'if (No=-1) then
11180 'buf_month = val(buf_Month$)
11190 'month = buf_month
11200 'sp_on 14,0
11210 'goto Input_Born_Day:
11220 'else
11230 'goto Input_Born_Month2:
11240 'endif
11250 end select
11260 endif
11270 '左の丸ボタン　キャンセル
11280 if (bg2=2) then
11290 select case count2
11300 case 0:
11310 if (No = -1) then
11320 buf_month=0:buf_Month$="**"
11330 count2=0:count=0
11340 locate 0,3:print "                                   "
11350 if ex_info$(1) <> "JP" then
11360 print "Input Born Month?(1~12):";buf_Month$
11370 else
11380 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
11390 endif
11400 'if (buf_month > 1) then
11410 sp_on 14,0:goto Input_Born_Month2:
11420 'goto rewrite:
11430 else
11440 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
11450 buf_month=0:buf_Month$="**"
11460 locate 2,3
11470 color rgb(255,255,255)
11480 print "                                       "
11490 goto rewrite:
11500 if (No>2) then
11510 ui_msg"値が範囲外です。"
11520 goto rewrite:
11530 endif
11540 endif
11550 'endif
11560 rewrite:
11570 locate 2,3
11580 color rgb(255,255,255)
11590 print "                                      "
11600 locate 2,3
11610 if ex_info$(1) <> "JP" then
11620 print "Input Born Month?(1~12):";buf_Month$
11630 else
11640 print "生まれた月(1月~12月):";buf_Month$
11650 endif
11660 goto Input_Born_Month2:
11670 endif
11680 case 1:
11690 buf_Month$="**":buf_month=0
11700 if No=-1 then
11710 count2=2:count=0
11720 locate 0,3
11730 print "                                      "
11740 locate 2,3:
11750 if ex_info$(1) <> "JP" then
11760 print "Input Born Month?(1~12):";buf_Month$
11770 else
11780 print "生まれた月(1月~12月):" + buf_Month$
11790 endif
11800 goto Input_Born_Month2:
11810 endif
11820 case 2:
11830 sp_on 14,0:goto Input_Seireki:
11840 end select
11850 endif
11860 'endif
11870 end
11880 'end
11890 '生れた日を入力
11900 Input_Born_Day:
11910 '生まれた日入力
11920 cls 3:play ""
11930 'No=-1:Okのとき
11940 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
11950 for i=0 to 1
11960 buf_day(i)=0
11970 next i
11980 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11990 gload Gazo$ + "Screen2.png",0,0,0
12000 gload Gazo$ + "downscreen.png",0,0,800
12010 'Init"kb:2"
12020 if ex_info$(1) <> "JP" then
12030 '英語音声パート
12040 else
12050 '日本語音声パート
12060 '音声ファイル再生 2023.06.07
12070 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
12080 endif
12090 font 48
12100 if ex_info$(1) <> "JP" then
12110 locate 0,1
12120 '文字色：黒　 color rgb(0,0,0)
12130 color rgb(255,255,255)
12140 print "Input Born day?" + chr$(13)
12150 color rgb(255,255,255)
12160 locate 2,3
12170 print "Born Day(1~31):";buf_Day$
12180 else
12190 locate 0,1
12200 '文字色：黒　 color rgb(0,0,0)
12210 color rgb(255,255,255)
12220 print "生まれた日を入れて下さい" + chr$(13)
12230 color rgb(255,255,255)
12240 locate 2,3
12250 print "生まれた日(1日~31日):";buf_Day$
12260 endif
12270 'color rgb(255,255,255)
12280 'locate 4,6:print ":7"
12290 'locate 9,6:print ":8"
12300 'locate 12,6:print ":9"
12310 'locate 4,6
12320 'print ":7  :8  :9" + chr$(13)
12330 '=======================
12340 'テンキー　色　白　決定ボタン　青
12350 '=======================
12360 'color rgb(255,255,255)
12370 'locate 4,8
12380 'print ":4  :5  :6" + chr$(13)
12390 'color rgb(255,255,255)
12400 'locate 4,10
12410 'print ":1  :2  :3" + chr$(13)
12420 'locate 4,12
12430 'print "    :0"
12440 'locate 12,12
12450 'color rgb(255,0,0)
12460 'print ":Ok"
12470 sp_on 4,0: sp_on 5,0:sp_on 6,0
12480 sp_on 7,0:sp_on 8,0:sp_on 9,0
12490 sp_on 10,0:sp_on 11,0:sp_on 12,0
12500 sp_on 13,0:sp_on 14,1
12510 Input_Born_Day2:
12520 key$="":bg=0:y=0:y2=0:bg2=0
12530 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12540 key$ = inkey$
12550 bg = strig(1)
12560 y = stick(1)
12570 y2 = stick(0)
12580 bg2 = strig(0)
12590 pause 200
12600 wend
12610 '十字キー　ここから
12620 '上の矢印　または、十字キー上
12630 if ((y = -1) or (key$ = chr$(30))) then
12640 select case No
12650 'No=-1:okのとき:初期の状態
12660 '0kボタンから３に移動
12670 '上に行く 処理
12680 case -1:
12690 No=3:sp_on 12,1:sp_on 14,0
12700 pause 200:goto Input_Born_Day2:
12710 '選択肢:3
12720 '3ボタンから 6に移動
12730 case 3:
12740 No=6:sp_on 12,0:sp_on 11,1
12750 pause 200:goto Input_Born_Day2:
12760 '6ボタンから ９に移動
12770 case 6:
12780 No=9:sp_on 10,1:sp_on 11,0
12790 pause 200:goto Input_Born_Day2:
12800 '6ボタンから ９に移動　ここまで
12810 '9で上を押して何もしない
12820 case 9:
12830 '何もしない
12840 No=9
12850 pause 200:goto Input_Born_Day2:
12860 '9で上を押しても何もしない　ここまで
12870 '上　 0ボタンから2ボタン
12880 'sp_on 6,1:1
12890 'sp_on 8,1:5
12900 'sp_on 7,1:7
12910 case 0:
12920 No=2:sp_on 13,0:sp_on 9,1:
12930 pause 200:goto Input_Born_Day2:
12940 '上  0ボタンから2ボタン　ここまで
12950 '2から５になる 上
12960 case 2:
12970 No=5:sp_on 8,1:sp_on 9,0:
12980 pause 200:goto Input_Born_Day2:
12990 case 5:
13000 No=8:sp_on 7,1:sp_on 8,0
13010 pause 200:goto Input_Born_Day2:
13020 case 8:
13030 pause 200:goto Input_Born_Day2:
13040 case 1:
13050 No=4:sp_on 5,1:sp_on 6,0
13060 pause 200:goto Input_Born_Day2:
13070 case 4:
13080 No=7:sp_on 4,1:sp_on 5,0
13090 pause 200:goto Input_Born_Day2:
13100 case 7:
13110 pause 200:goto Input_Born_Day2:
13120 end select
13130 endif
13140 '左３　ここまで
13150 '下の矢印
13160 '中央 2
13170 if ((y=1) or (key$ = chr$(31))) then
13180 select case No
13190 '9から６に下げる
13200 case 9:
13210 No=6:sp_on 11,1:sp_on 10,0
13220 pause 200:goto Input_Born_Day2:
13230 '6から３に下げる
13240 case 6:
13250 No=3:sp_on 12,1:sp_on 11,0
13260 pause 200:goto Input_Born_Day2:
13270 '3から０ｋに変える
13280 case 3:
13290 No=-1:sp_on 14,1:sp_on 12,0
13300 pause 200:goto Input_Born_Day2:
13310 'Okから下のボタンを押しても何もしない
13320 case -1:
13330 pause 200:goto Input_Born_Day2:
13340 case 8:
13350 No=5:sp_on 8,1:sp_on 7,0
13360 pause 200:goto Input_Born_Day2:
13370 case 5:
13380 No=2:sp_on 9,1:sp_on 8,0
13390 pause 200:goto Input_Born_Day2:
13400 case 2:
13410 No=0:sp_on 13,1:sp_on 9,0
13420 pause 200:goto Input_Born_Day2:
13430 case 0:
13440 pause 200:goto Input_Born_Day2:
13450 case 7:
13460 No=4:sp_on 5,1:sp_on 4,0
13470 pause 200:goto Input_Born_Day2:
13480 case 4:
13490 No=1:sp_on 6,1:sp_on 5,0
13500 pause 200:goto Input_Born_Day2:
13510 case 1:
13520 pause 200:goto Input_Born_Day2:
13530 end select
13540 endif
13550 '左へボタン 十字キー　左　or 　カーソル左
13560 if ((y2 = -1) or (key$ = chr$(29))) then
13570 select case No
13580 'Ok ボタン  Okから　左　０に行く
13590 case -1:
13600 No=0:sp_on 13,1:sp_on 14,0
13610 pause 200:goto Input_Born_Day2:
13620 '0 ボタン  左　何もしない
13630 case 0:
13640 pause 200:goto Input_Born_Day2:
13650 case 3:
13660 No=2:sp_on 9,1:sp_on 12,0:
13670 pause 200:goto Input_Born_Day2:
13680 case 2:
13690 No=1:sp_on 6,1:sp_on 9,0:
13700 pause 200:goto Input_Born_Day2:
13710 case 1:
13720 pause 200:goto Input_Born_Day2:
13730 case 6:
13740 No=5:sp_on 8,1:sp_on 11,0
13750 pause 200:goto Input_Born_Day2:
13760 case 5:
13770 No=4:sp_on 5,1:sp_on 8,0
13780 pause 200:goto Input_Born_Day2:
13790 case 4:
13800 pause 200:goto Input_Born_Day2:
13810 case 9:
13820 No=8:sp_on 7,1:sp_on 10,0
13830 pause 200:goto Input_Born_Day2:
13840 case 8:
13850 No=7:sp_on 4,1:sp_on 7,0
13860 pause 200:goto Input_Born_Day2:
13870 case 7:
13880 pause 200:goto Input_Born_Day2:
13890 end select
13900 endif
13910 '右  十字キー　右　or カーソル　右
13920 if ((y2 = 1) or (key$ = chr$(28))) then
13930 select case No
13940 '0ボタンからokボタン右に移動
13950 case 0:
13960 No=-1:sp_on 14,1:sp_on 13,0
13970 pause 200:goto Input_Born_Day2:
13980 '0ボタンからokボタン 右に移動　ここまで
13990 'OKボタンで右を押して何もしない
14000 case -1:
14010 pause 200:goto Input_Born_Day2:
14020 case 1:
14030 No=2:sp_on 9,1:sp_on 6,0
14040 pause 200:goto Input_Born_Day2:
14050 case 2:
14060 No=3:sp_on 12,1:sp_on 9,0
14070 pause 200:goto Input_Born_Day2:
14080 case 3:
14090 pause 200:goto Input_Born_Day2:
14100 case 4:
14110 No=5:sp_on 8,1:sp_on 5,0
14120 pause 200:goto Input_Born_Day2:
14130 case 5:
14140 No=6:sp_on 11,1:sp_on 8,0
14150 pause 200:goto Input_Born_Day2:
14160 case 7:
14170 No=8:sp_on 7,1:sp_on 4,0
14180 pause 200:goto Input_Born_Day2:
14190 case 8:
14200 No=9:sp_on 10,1:sp_on 7,0
14210 pause 200:goto Input_Born_Day2:
14220 case 9:
14230 pause 200:goto Input_Born_Day2:
14240 case 6:
14250 pause 200:goto Input_Born_Day2:
14260 end select
14270 'Okから右ボタンを押して何もしない ここまで
14280 endif
14290 '十字キー　ここまで
14300 '右の丸ボタンを押したとき
14310 if ((bg = 2) or (key$ = chr$(13))) then
14320 'count :決定ボタンを押した回数
14330 select case (count mod 3)
14340 '1桁目入力
14350 case 0:
14360 count = 1:
14370 if (No = -1) then
14380 '1桁目　OKでは何もしない
14390 'goto check:
14400 else
14410 'ok以外のボタンを押したとき
14420 buf_day = No:buf_Day$ = str$(No)
14430 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
14440 locate 2,3
14450 color RGB(255,255,255)
14460 if ex_info$(1) <> "JP" then
14470 print "Input Born Day(1~31):";buf_Day2$
14480 else
14490 print "生まれた日(1日~31日):";buf_Day2$
14500 endif
14510 endif
14520 check:
14530 if (No >= 1 and No <= 9) then
14540 sp_on 14,0
14550 goto Input_Born_Day2:
14560 else
14570 sp_on 14,0
14580 goto complate:
14590 endif
14600 case 1:
14610 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
14620 count = 2:
14630 'locate 2,3
14640 'color RGB(255,255,255)
14650 'print "生まれた日(1日~31日):";buf_Day$
14660 'Okボタンを押したときの処理
14670 '入力値　10未満のとき
14680 'c = buf_day
14690 if (No = -1) then
14700 'c=buf_day
14710 ' buf_day = c
14720 'buf_Day$ = str$(buf_day)
14730 '10以下のとき
14740 if (buf_day < 10) then
14750 sp_on 14,0
14760 goto complate:
14770 endif
14780 else
14790 'c = No
14800 buf_day = c * 10 + No
14810 'buf_day = c
14820 buf_Day$ =str$(buf_day)
14830 locate 2,3
14840 color Rgb(255,255,255)
14850 if ex_info$(1) <> "JP" then
14860 print "Input Born Day(1~31):";buf_Day$
14870 else
14880 print "生まれた日(1日~31日):";buf_Day$
14890 endif
14900 goto Input_Born_Day2:
14910 endif
14920 '生まれた日　2桁目の数字　or 1桁の数字 + ok
14930 case 2:
14940 count=0
14950 'c=val(buf_Day$)
14960 'buf_day=c*10+No
14970 'buf_Day$=str$(buf_day)
14980 'day=buf_day
14990 'locate 2,3
15000 'print "生まれた日(1日〜31日):";buf_Day$
15010 'No=-1:ok ボタンを押したとき
15020 if (No = -1) then
15030 if ((buf_day > 0) and (buf_day < 32)) then
15040 sp_on 14,0
15050 goto complate:
15060 else
15070 goto Input_Born_Day2:
15080 endif
15090 'Okボタン以外を押したとき
15100 else
15110 c=val(buf_Day$)
15120 buf_day = c * 10 + No
15130 buf_Day$ = str$(buf_day)
15140 locate 2,3
15150 if ex_info$(1) <> "JP" then
15160 print "Input Born Day?(1~31):";buf_Day$
15170 else
15180 print "生まれた日(1日~31日):";buf_Day$
15190 endif
15200 'goto Input_Born_Day2:
15210 endif
15220 case 3:
15230 count = 4
15240 c=val(buf_day$)
15250 buf_day = c * 10 + No
15260 buf_day$ = str$(buf_day)
15270 locate 2,3
15280 if ex_info$(1) <> "JP" then
15290 print "Input Born Day?(1~31):";buf_Day$
15300 else
15310 print "生まれた日を入れてください(1日~31日):";buf_Day$
15320 endif
15330 year = val(buf_year$)
15340 if (No = -1) then
15350 'goto Input_Born_Day:
15360 sp_on 14,0:No=0
15370 goto complate:
15380 else
15390 goto Input_Born_Month2:
15400 endif
15410 'case 4:
15420 'bufyear=buf_year
15430 'if (No=-1) then
15440 'buf_day = val(buf_day$)
15450 'bufday = buf_day
15460 'sp_on 14,0
15470 'goto complate:
15480 'else
15490 'goto Input_Born_Day2:
15500 'endif
15510 end select
15520 endif
15530 if (bg2=2) then
15540 select case count2
15550 case 0:
15560 if (No=-1) then
15570 'buf_day=0:buf_Day$="**"
15580 if (buf_day>=1 and buf_day<=31) then
15590 count=0:No=0
15600 buf_day=0:buf_Day$="**"
15610 'goto rewrite_day:
15620 else
15630 buf_day=0:buf_Day$="**"
15640 ui_msg"値が範囲外です"
15650 endif
15660 goto rewrite_day:
15670 else
15680 goto rewrite_day:
15690 endif
15700 rewrite_day:
15710 locate 2,3
15720 color rgb(255,255,255)
15730 print "                                      "
15740 locate 2,3
15750 if ex_info$(1)<>"JP" then
15760 print "Born Day(1~31):";buf_Day$
15770 else
15780 print "生まれた日(1日~31日):";buf_Day$
15790 endif
15800 goto Input_Born_Day2:
15810 end select
15820 endif
15830 '--------------------------Input_Born_Day:-------------------------------------------
15840 complate:
15850 suhiNo = buf_year + buf_month + buf_day
15860 'if (suhiNo < 1000) then
15870 a1 = fix(suhiNo / 1000)
15880 a2 = fix(suhiNo/100) - (a1 * 10)
15890 a3 = fix(suhiNo/10)-(a1*100+a2*10)
15900 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
15910 'endif
15920 bufsuhiNo = a1+a2+a3+a4
15930 recomp:
15940 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
15950 'bufsuhiNo=a6
15960 goto Kabara_Result_Screen:
15970 else
15980 a5 = fix(bufsuhiNo / 10)
15990 a6 = bufsuhiNo - a5 * 10
16000 bufsuhiNo = a6 + a5
16010 if (bufsuhiNo = 10) then
16020 bufsuhiNo=1
16030 endif
16040 goto Kabara_Result_Screen:
16050 endif
16060 Kabara_Result_Screen:
16070 cls 3:
16080 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
16090 gload Gazo$ + "downscreen.png",0,0,800
16100 init "kb:4"
16110 '
16120 play ""
16130 select case (bufsuhiNo)
16140 case 1:
16150 play Voice$ + "Result_Kabara_1_20230607.mp3"
16160 case 2:
16170 play Voice$ + "Result_Kabara_2_20231112.mp3"
16180 case 3:
16190 play Voice$ + "Result_Kabara_3_20230607.mp3"
16200 case 4:
16210 play Voice$ + "Result_Kabara_4_20230607.mp3"
16220 case 5:
16230 play Voice$ + "Result_Kabara_5_20231112.mp3"
16240 case 6:
16250 play Voice$ + "Result_Kabara_6_20230607.mp3"
16260 case 7:
16270 play Voice$ + "Result_Kabara_7_20230607.mp3"
16280 case 8:
16290 play Voice$ + "Result_Kabara_8_20230607.mp3"
16300 case 9:
16310 play Voice$ + "Result_Kabara_9_20230607.mp3"
16320 case 11:
16330 play Voice$ + "Result_Kabara_11_20230607.mp3"
16340 case 22:
16350 play Voice$ + "Result_Kabara_22_20230607.mp3"
16360 case 33:
16370 play Voice$ + "Result_Kabara_33_20230607.mp3"
16380 end select
16390 font 48
16400 key$ = "":bg = 0:bg2=0
16410 'COLOR rgb(255,255,255)
16420 'print "●診断結果"+chr$(13)
16430 locate 0,2
16440 if ex_info$(1)<>"JP" then
16450 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
16460 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
16470 locate 0,15:
16480 color rgb(255,255,255)
16490 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
16500 else
16510 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
16520 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
16530 locate 0,15:
16540 color rgb(255,255,255)
16550 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
16560 endif
16570 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16580 key$ = inkey$
16590 bg = strig(1)
16600 bg2 = strig(0)
16610 pause 200
16620 wend
16630 'Enter or JoyPad right
16640 if ((key$ = chr$(13)) or (bg = 2)) then
16650 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
16660 endif
16670 if ((bg2=2)) then
16680 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
16690 endif
16700 'suhiNo1 = fix(bufsuhiNo / 10)
16710 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
16720 'bufsuhiNo = suhiNo1 + suhiNo2
16730 'goto recomp:
16740 'endif
16750 'print chr$(13)
16760 'color rgb(255,0,0)
16770 'print"トップ:エンターキー,S or s:保存"+chr$(13)
16780 'key$ = input$(1)
16790 'if key$ = chr$(13) then goto Main_Screen:
16800 '"Menu2 占いのルール"
16810 Suhi_Rule:
16820 '数秘術占いルールの表示
16830 cls 3:play "":init"kb:4"
16840 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
16850 gload Gazo$ + "downscreen.png",0,0,800
16860 'cls 3:
16870 'line (0,0) - (1500,60),rgb(0,0,255),bf
16880 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
16890 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
16900 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
16910 locate 0,2:Font 48
16920 print chr$(13) + chr$(13)
16930 color rgb(0,0,0)
16940 print "誕生日を単数変換します";chr$(13)
16950 print "数字の範囲:1~９,11,22,33";chr$(13)
16960 print "例:1973年11月22日の場合";chr$(13)
16970 print "1+9+7+3+11+22=53 ";chr$(13)
16980 print "→ 5 + 3 = 8" + chr$(13)
16990 print "故に8が数秘ナンバーになります";chr$(13)
17000 locate 0,15
17010 color rgb(255,255,255)
17020 print "ジョイパッドの右を押してください"
17030 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17040 '"key$ = input$(1)"
17050 '"if key$ = chr$(13) then goto Main_Screen:"
17060 suhi_rule_selection:
17070 bg = 0:key$ = "":bg2=0
17080 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
17090 bg = strig(1)
17100 key$ = inkey$
17110 bg2=strig(0)
17120 pause 200
17130 wend
17140 if ((bg = 2) or (key$ = chr$(13))) then
17150 pause 200:cls 4:goto Main_Screen:
17160 endif
17170 if (bg2=2) then
17180 play "":pause 200
17190 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17200 goto suhi_rule_selection:
17210 endif
17220 '2.設定
17230 '2-1.トップ画面に戻る
17240 Setting:
17250 cls 3:init"kb:4":font 48:No=0
17260 play ""
17270 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17280 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
17290 gload Gazo$ + "downscreen.png",0,0,800
17300 print chr$(13) + chr$(13) + chr$(13)
17310 color rgb(255,255,255):sp_on 0,1:
17320 print "番号を選んでください" + chr$(13)
17330 print " :1.トップ画面に戻る"+ chr$(13)
17340 print " :2.バーズアイグリッドデータリスト" + chr$(13)
17350 print " :3.未実装" + chr$(13)
17360 print " :4.未実装" + chr$(13)
17370 color rgb(0,0,0)
17380 locate 1,15:print "1.トップ画面に戻るを選択"
17390 Setting_Selection:
17400 y=0:key$="":bg=0:bg2=0
17410 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
17420 y=stick(1)
17430 key$ = inkey$
17440 bg=strig(1)
17450 bg2 = strig(0)
17460 pause 200
17470 wend
17480 if ((bg = 2) or (key$ = chr$(13))) then
17490 select case No
17500 case 0:
17510 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 3:goto Main_Screen:
17520 case 1:
17530 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto BirdsEyeGrid_Entry:
17540 end select
17550 endif
17560 if (bg2 = 2) then
17570 play "":pause 200
17580 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17590 goto Setting_Selection:
17600 endif
17610 if ((y=1) or (y=-1)) then
17620 select case No
17630 case 0:
17640 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:goto Setting_Selection:
17650 case else:
17660 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:pause 200:goto Setting_Selection:
17670 end select
17680 'ase else:
17690 endif
17700 '3.Help
17710 '3-1.ルールの表示
17720 '3-2.バージョン
17730 '3-3.トップに戻る
17740 Help:
17750 cls 3:Font 48:No=0
17760 play ""
17770 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
17780 gload Gazo$ + "downscreen.png",0,0,800
17790 color rgb(255,255,255)
17800 print chr$(13)+chr$(13)+chr$(13)
17810 print "番号を選んでください"+chr$(13)
17820 print " :1.ルールの表示" + chr$(13)
17830 print " :2.バージョンの表示" + chr$(13)
17840 print " :3.参考文献" + chr$(13)
17850 print " :4.トップ画面に戻る" + chr$(13)
17860 color rgb(0,0,0)
17870 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
17880 locate 1,15
17890 print "                                      "
17900 locate 1,15
17910 print "1.ルールの表示を選択"
17920 init"kb:4"
17930 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
17940 Help_Select:
17950 bg=0:key$="":y=0:bg2=0
17960 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
17970 y = stick(1)
17980 key$ = inkey$
17990 bg = strig(1)
18000 bg2 = strig(0)
18010 pause 200
18020 wend
18030 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
18040 if ((y = 1) or (key$ = chr$(31))) then
18050 select case No
18060 case 0:
18070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
18080 case 1:
18090 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18100 case 2:
18110 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
18120 case 3:
18130 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
18140 end select
18150 endif
18160 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
18170 if ((y = -1) or (key$ = chr$(30))) then
18180 select case No
18190 case 0:
18200 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
18210 case 1:
18220 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
18230 case 2:
18240 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
18250 case 3:
18260 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18270 end select
18280 endif
18290 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
18300 if ((bg = 2) or (key$ = chr$(13))) then
18310 select case No
18320 case 0:
18330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule:
18340 case 1:
18350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
18360 case 2:
18370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
18380 '3:Top画面に行く
18390 case 3:
18400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
18410 end select
18420 endif
18430 if (bg2 = 2) then
18440 play "":pause 200
18450 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
18460 goto Help_Select:
18470 endif
18480 '数秘術占い　トップ画面
18490 Kabara_TopScreen:
18500 cls 3:play ""
18510 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
18520 gload Gazo$ + "downscreen.png",0,0,800
18530 play Voice$ + "KabaraTop_Selection_20230721.mp3"
18540 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
18550 init"kb:4":No=0
18560 color rgb(255,255,255)
18570 print chr$(13)+chr$(13)+chr$(13)
18580 print "番号を選んでください" + chr$(13)
18590 print " :1.数秘術占い" + chr$(13)
18600 print " :2.バーズアイグリット" + chr$(13)
18610 print " :3.相性占い" + chr$(13)
18620 print " :4.トップ画面に戻る" + chr$(13)
18630 color rgb(0,0,0)
18640 locate 1,15:print "1.数秘術占いを選択"
18650 Kabara_TopScreen2:
18660 y = 0:bg = 0:key$ = "":bg2 = 0
18670 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
18680 key$ = inkey$
18690 bg = strig(1)
18700 y = stick(1)
18710 bg2 = strig(0)
18720 pause 200
18730 wend
18740 '選択ボタン
18750 'カーソル下 　と　ジョイパッド　の下
18760 if ((y = 1) or (key$ = chr$(31))) then
18770 select case No
18780 case 2:
18790 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
18800 case 3:
18810 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
18820 case 0:
18830 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
18840 case 1:
18850 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
18860 end select
18870 endif
18880 'カーソル　上  or  ジョイパッド　上
18890 if ((y=-1) or (key$=chr$(30))) then
18900 select case No
18910 case 0:
18920 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
18930 case 1:
18940 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
18950 case 2:
18960 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
18970 case 3:
18980 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
18990 end select
19000 endif
19010 '決定ボタン
19020 'ジョイパッドの右　or  Enter key
19030 if ((bg = 2) or (key$ = chr$(13))) then
19040 select case No
19050 case 0:
19060 '1.数秘術占い
19070 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
19080 case 3:
19090 '4.メイン画面にいく
19100 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
19110 case 1:
19120 '2.バースアイグリッド
19130 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
19140 case 2:
19150 '3.相性占い
19160 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
19170 end select
19180 endif
19190 if (bg2 = 2) then
19200 play "":pause 200
19210 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
19220 goto Kabara_TopScreen2:
19230 endif
19240 '1.バースアイグリット　名入力
19250 Inputname1:
19260 cls 3:init"kb:4":font 48
19270 bg=0:key$="":y=0:No=-1:name1$="":i=1
19280 gload Gazo$ + "Selection.png",1,10,100
19290 'Line 1:☓
19300 'A:選択肢
19310 sp_def 15,(50,250),16,16
19320 'B:選択肢
19330 sp_def 16,(200,250),16,16
19340 'C:選択肢
19350 sp_def 17,(350,250),16,16
19360 'D:選択肢
19370 sp_def 18,(500,250),16,16
19380 'E:選択肢
19390 sp_def 19,(630,250),16,16
19400 'F:選択肢
19410 sp_def 20,(780,250),16,16
19420 'G:選択肢
19430 sp_def 21,(930,250),16,16
19440 'Line 2:☓
19450 'H:選択肢
19460 sp_def 22,(50,345),16,16
19470 'I:選択肢
19480 sp_def 23,(200,345),16,16
19490 'J:選択肢
19500 sp_def 24,(350,345),16,16
19510 'K:選択肢
19520 sp_def 25,(500,345),16,16
19530 'L:選択肢
19540 sp_def 26,(630,345),16,16
19550 'M:選択肢
19560 sp_def 27,(780,345),16,16
19570 'N:選択肢
19580 sp_def 28,(930,345),16,16
19590 'Line 3:☓
19600 'O:選択肢
19610 sp_def 29,(50,440),16,16
19620 'P:選択肢
19630 sp_def 30,(200,440),16,16
19640 'Q:選択肢
19650 sp_def 31,(350,440),16,16
19660 'R:選択肢
19670 sp_def 32,(500,440),16,16
19680 'S:選択肢
19690 sp_def 33,(630,440),16,16
19700 'T:選択肢
19710 sp_def 34,(780,440),16,16
19720 'U:選択肢
19730 sp_def 35,(930,440),16,16
19740 'Line 4:◯
19750 'V:選択肢
19760 sp_def 36,(50,535),16,16
19770 'W:選択肢
19780 sp_def 37,(200,535),16,16
19790 'X:選択肢
19800 sp_def 38,(350,535),16,16
19810 'Y:選択肢
19820 sp_def 39,(500,535),16,16
19830 'Z:選択肢
19840 sp_def 40,(630,535),16,16
19850 'Ok:選択肢
19860 sp_def 41,(780,535),16,16
19870 'sp_def 42,(930,535),16,16
19880 'Line 1
19890 'A
19900 sp_on 15,0
19910 'B
19920 sp_on 16,0
19930 'C
19940 sp_on 17,0
19950 'D
19960 sp_on 18,0
19970 'E
19980 sp_on 19,0
19990 'F
20000 sp_on 20,0
20010 'G
20020 sp_on 21,0
20030 'Line 1
20040 'Line 2
20050 'H
20060 sp_on 22,0
20070 'I
20080 sp_on 23,0
20090 'J
20100 sp_on 24,0
20110 'K
20120 sp_on 25,0
20130 'L
20140 sp_on 26,0
20150 'M
20160 sp_on 27,0
20170 'N
20180 sp_on 28,0
20190 'Line 2
20200 'Line 3
20210 'O
20220 sp_on 29,0
20230 'P
20240 sp_on 30,0
20250 'Q
20260 sp_on 31,0
20270 'R
20280 sp_on 32,0
20290 'S
20300 sp_on 33,0
20310 'T
20320 sp_on 34,0
20330 'U
20340 sp_on 35,0
20350 'Line 3
20360 'Line 4
20370 'V
20380 sp_on 36,0
20390 'W
20400 sp_on 37,0
20410 'X
20420 sp_on 38,0
20430 'Y
20440 sp_on 39,0
20450 'Z
20460 sp_on 40,0
20470 'Ok
20480 sp_on 41,1
20490 'Line 4
20500 'sp_on 42,1
20510 'Line 1
20520 'sp_put 15,(50,250),0,0
20530 'sp_put 16,(200,250),0,0
20540 'sp_put 17,(350,250),0,0
20550 'sp_put 18,(500,250),0,0
20560 'sp_put 19,(630,250),0,0
20570 'sp_put 20,(780,250),0,0
20580 'sp_put 21,(930,250),0,0
20590 'Line 2
20600 'sp_put 22,(50,345),0,0
20610 'sp_put 23,(200,345),0,0
20620 'sp_put 24,(350,345),0,0
20630 'sp_put 25,(500,345),0,0
20640 'sp_put 26,(630,345),0,0
20650 'sp_put 27,(780,345),0,0
20660 'sp_put 28,(930,345),0,0
20670 'Line 3
20680 'sp_put 29,(50,440),0,0
20690 'sp_put 30,(200,440),0,0
20700 'sp_put 31,(350,440),0,0
20710 'sp_put 32,(500,440),0,0
20720 'sp_put 33,(630,440),0,0
20730 'sp_put 34,(780,440),0,0
20740 'sp_put 35,(930,440),0,0
20750 'Line 4
20760 'sp_put 36,(50,535),0,0
20770 'sp_put 37,(200,535),0,0
20780 'sp_put 38,(350,535),0,0
20790 'sp_put 39,(500,535),0,0
20800 'sp_put 40,(630,535),0,0
20810 sp_put 41,(780,535),0,0
20820 'sp_put 42,(930,536),0,0
20830 gload Gazo$ + "Screen1.png",0,0,0
20840 color rgb(255,255,255)
20850 locate 1,3
20860 print "名前の姓をアルファベットで入力してください"
20870 locate 1,5
20880 print " A  B  C  D  E  F  G"
20890 locate 1,7
20900 print " H  I  J  K  L  M  N"
20910 locate 1,9
20920 print " O  P  Q  R  S  T  U"
20930 locate 1,11
20940 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
20950 locate 1,15:color rgb(0,0,0)
20960 print "名前の姓:" + name1$
20970 select_name1:
20980 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
20990 '有効ボタン
21000 '1.決定ボタン(bg:2)
21010 '2.Enter Key$:chr$(13)
21020 '3.カーソル上 (chr$(31))
21030 '4.カーソル　左 (chr$(29))
21040 '5.ジョイパッド　上 (y:1)
21050 '6:ジョイパッド　左 (y2:-1)
21060 '7:ジョイパッド　下 (y:-1)
21070 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
21080 key$ = inkey$
21090 'ジョイパッドの決定:bg
21100 bg = strig(1)
21110 y = stick(1)
21120 y2 = stick(0)
21130 pause 200
21140 wend
21150 '====================================
21160 'Birds Eye Grid 名前入力
21170 '入力スタイル　アルファベット入力
21180 'sp_on:　スプライトのオンオフ
21190 'sp_put :表示位置
21200 'No:ボタン番号
21210 '====================================
21220 'カーソルで下に行く
21230 if ((y=-1) or (key$=chr$(31))) then
21240 select case No
21250 '1.Ok ボタン
21260 'sp_on スプライトのオンオフ
21270 'sp_put スプライトを表示
21280 case -1:
21290 '1.アルファベット　入力ボタン
21300 '実装未完全なので終了
21310 'Ok → T ○ :No:20=T
21320 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21330 'T  → M ○
21340 case 20:
21350 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21360 'M  →　F ○
21370 case 13:
21380 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21390 'F  → Ok
21400 case 6:
21410 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
21420 end select
21430 endif
21440 '2.決定ボタン
21450 if ((key$ = chr$(13)) OR  (bg = 2)) then
21460 select case No
21470 case -1:
21480 'スプライトをOFFにする
21490 sp_on 41,0
21500 end select
21510 endif
21520 '3.カーソル　左
21530 if (key$ = chr$(29) or (y2 =-1)) then
21540 select case No
21550 'Line 4
21560 'Line 4
21570 '1.
21580 'Z:-1 :Ok ボタン
21590 'Ok → Z
21600 case -1:
21610 'Ok →　Z
21620 'Ok ボタン OFF,Z Button ON
21630 'No=26:Z
21640 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21650 '2.
21660 '26:Zボタン Z→ Y
21670 case 26:
21680 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21690 '3.
21700 '25:Yボタン  Y → X
21710 case 25:
21720 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21730 '4
21740 '24:Xボタン X → W
21750 case 24:
21760 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21770 '23:Wボタン X → W
21780 '5
21790 case 23:
21800 '22:Vボタン W → V
21810 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
21820 case 22:
21830 '-1:V→ Ok
21840 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
21850 'Line 3
21860 case 20:
21870 '33:T34  → S:33 :◯
21880 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21890 case 19:
21900 '32:S:33 → R:32 :◯
21910 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21920 case 18:
21930 '31:R:32 → Q:31 :◯
21940 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21950 '30:O → P :◯
21960 case 17:
21970 '30:Q:31 → P:30 :◯
21980 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
21990 case 16:
22000 '29:P:30 → O:29 :◯
22010 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
22020 case 15:
22030 '28:O:29 → U:21  :◯
22040 'O:OFF,U:ON
22050 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
22060 '27:U:21 → T:20  :◯
22070 case 21:
22080 'U:OFF:T:ON
22090 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
22100 'Line 2
22110 '26:M:13 → L:12 : ○
22120 case 13:
22130 'M:OFF,L:ON
22140 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
22150 '25:L:12 → K:11 : ○
22160 case 12:
22170 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
22180 '24:K:11 → J:10 : ○
22190 case 11:
22200 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
22210 '23:J:10 → I:9  : ○
22220 case 10:
22230 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
22240 '22:I:9 → H:8    :○
22250 case 9:
22260 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
22270 '21:H:8 → N:14:   :○
22280 case 8:
22290 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
22300 '20:N:14 → M:13:   :○
22310 case 14:
22320 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
22330 '●.Line 1:
22340 '19:F:20 → E:19 : ☓
22350 'F:OFF,E:ON
22360 case 6:
22370 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
22380 '18:E → D
22390 'E:OFF,D:ON
22400 case 5:
22410 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
22420 '17:D → C
22430 'D:OFF,C:ON
22440 case 4:
22450 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
22460 case 3:
22470 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
22480 case 2:
22490 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
22500 case 1:
22510 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
22520 case 7:
22530 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
22540 end select
22550 endif
22560 '上から下の方向
22570 if ((key$ = chr$(31)) or  (y = 1)) then
22580 select case No
22590 '●.1
22600 '1:A→H
22610 case 1:
22620 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
22630 '2:H→O
22640 case 8:
22650 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
22660 '3:O→V
22670 case 15:
22680 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
22690 '4:V→A
22700 case 22:
22710 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
22720 '●.2
22730 '5.B→I
22740 case 2:
22750 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
22760 '6.I→P
22770 case 9:
22780 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
22790 '7.P→W
22800 case 16:
22810 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
22820 '8.W→B
22830 case 23:
22840 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
22850 '●.3
22860 '9.C→J
22870 case 3:
22880 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
22890 '10.J→Q
22900 case 10:
22910 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
22920 '11.Q→X
22930 case 17:
22940 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
22950 '12.X→C
22960 case 24:
22970 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
22980 '●.4
22990 '13.D→K
23000 case 4:
23010 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
23020 '14.K→R
23030 case 11:
23040 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
23050 '15.R→Y
23060 case 18:
23070 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
23080 '16.Y→D
23090 case 25:
23100 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
23110 '●.5
23120 '17.E→L
23130 case 5:
23140 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
23150 '18.L→S
23160 case 12:
23170 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
23180 '19.S→Z
23190 case 19:
23200 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
23210 '20.Z→E
23220 case 26:
23230 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
23240 '●.6
23250 '21.F→M
23260 case 6:
23270 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
23280 '22.M→T
23290 case 13:
23300 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
23310 '23.T→Ok
23320 case 20:
23330 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
23340 '24.Ok→F
23350 case -1:
23360 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
23370 '●.7
23380 '25.G→N
23390 case 7:
23400 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
23410 '26.N→U
23420 case 14:
23430 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
23440 '27.U→G
23450 case 21:
23460 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
23470 end select
23480 endif
23490 '決定ボタン　で名前の姓に文字を追加。
23500 if (key$ = chr$(13) or bg = 2) then
23510 select case No
23520 'Okボタン
23530 case -1:
23540 goto Inputname2:
23550 'Aの文字
23560 case 1:
23570 'if len(n$)=0 then
23580 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
23590 'else
23600 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
23610 'endif
23620 goto select_name1:
23630 case 2:
23640 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
23650 end select
23660 endif
23670 Input_name1_Birdseye:
23680 cls 3:init "kb:2":play ""
23690 gload Gazo$ + "Input_Birtheye2.png",0,0,0
23700 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
23710 color rgb(255,255,255)
23720 locate 1,2:print "名前をアルファベットで入れてください"
23730 color rgb(0,0,0)
23740 locate 1,5:Input "名前（姓の部分）:",name1$
23750 '27.U→G
23760 'locate 1,5:print "Hit any key"
23770 n1 = len(name1$)
23780 if (n1 < 11) then
23790 for i=1 to n1
23800 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
23810 next i
23820 endif
23830 goto Inputname2:
23840 '2.グリッドアイ　姓の入力
23850 'end
23860 Inputname2:
23870 cls 3:init"kb:2":font 48:play ""
23880 gload Gazo$ + "Input_Birtheye1.png",0,0,0
23890 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
23900 color rgb(255,255,255)
23910 locate 1,2:print "名前をアルファベットで入れてください"
23920 color rgb(0,0,0)
23930 locate 1,5:Input "名前(名の部分):",name2$
23940 n2 = len(name2$)
23950 for i=1 to n2
23960 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
23970 next i
23980 '計算領域
23990 Complate:
24000 'name1
24010 for i=0 to 25
24020 for n=1 to len(name1$)
24030 if (buf_chart$(i,0) = buf_name1$(n-1)) then
24040 b = val(buf_chart$(i,1))
24050 buffer(b-1) = buffer(b-1) + 1
24060 endif
24070 next n
24080 next i
24090 'name2
24100 for i=0 to 25
24110 for n=1 to len(name2$)
24120 if (buf_chart$(i,0) = buf_name2$(n-1)) then
24130 c = val(buf_chart$(i,1))
24140 buffer(c - 1) = buffer(c - 1) + 1
24150 endif
24160 next n
24170 next i
24180 '結果表示領域
24190 Result_Birtheye1:
24200 cls 3:init"kb:4":No=0:play "":'音を止める
24210 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
24220 gload Gazo$ + "downscreen.png",0,0,800
24230 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
24240 color rgb(255,255,255)
24250 '1の表示
24260 locate 3,14:print buffer(0);
24270 '2の表示
24280 locate 3,9:print buffer(1);
24290 '3の表示
24300 locate 3,5:print buffer(2);
24310 '4の表示
24320 locate 10,14:print buffer(3);
24330 '5の表示
24340 locate 10,9:print buffer(4);
24350 '6の表示
24360 locate 10,5:print buffer(5);
24370 '7の表示
24380 locate 15,14:print buffer(6);
24390 '8の表示
24400 locate 15,9:print buffer(7);
24410 '9の表示
24420 locate 15,5:print buffer(8);
24430 'name を大文字に変換
24440 locate 5,3:print ucase$(name1$ + name2$)
24450 color rgb(0,0,0)
24460 'bg:右のボタン  ,bg2:左のボタン
24470 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
24480 bg=0:key$="":bg2=0
24490 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
24500 'Enterと決定ボタン
24510 key$ = inkey$
24520 '右ボタン:1
24530 bg = strig(1)
24540 '左の丸ボタン:0
24550 bg2=strig(0)
24560 pause 200
24570 wend
24580 if ((bg=2) or (key$=chr$(13))) then
24590 'データーをクリアしてトップ画面に行く
24600 'for i=0 to 8
24610 'buffer(i)=0
24620 'next i
24630 'for n=0 to 9
24640 'buf_name1$(n) = ""
24650 'buf_name2$(n) = ""
24660 'next n
24670 'Topに行く
24680 'goto Main_Screen:
24690 'メニューを開く
24700 'goto BirdsEye_Result2:
24710 'Menu(ui_select) リストに飛ぶ
24720 goto Result_Birtheye_List1:
24730 endif
24740 if (bg2=2) then
24750 'データーをクリアする
24760 for i=0 to 8
24770 buffer(i)=0
24780 next i
24790 for n=0 to 9
24800 buf_name1$(n)=""
24810 buf_name2$(n)=""
24820 next n
24830 goto Main_Screen:
24840 endif
24850 'goto Result_Birtheye1:
24860 'Result_Birtheye2:
24870 'cls 3:color rgb(255,255,255)
24880 'end
24890 'Memory 消去
24900 '
24910 '横のフォーカスライン
24920 BirdsEye_Result2:
24930 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
24940 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
24950 Forcus1_buffer$(2)="○"
24960 else
24970 Forcus1_buffer$(2)="☓"
24980 endif
24990 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
25000 Forcus1_buffer$(1)="○"
25010 else
25020 Forcus1_buffer$(1) = "☓"
25030 endif
25040 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
25050 Forcus1_buffer$(0)="○"
25060 else
25070 Forcus1_buffer$(0)="☓"
25080 endif
25090 gload Gazo$ + "Screen1.png",0,0,0
25100 color rgb(255,0,0):
25110 locate 1,1
25120 print "バーズアイグリッド(フォーカスライン1)"
25130 color rgb(255,255,255)
25140 locate 1,3:
25150 print "●.横のフォーカスライン"
25160 locate 1,5
25170 print "1.切れ者ライン:"+Forcus1_buffer$(2)
25180 locate 1,7
25190 print "2.調停者ライン:"+Forcus1_buffer$(1)
25200 locate 1,9
25210 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
25220 color rgb(0,0,0)
25230 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
25240 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
25250 key$ = inkey$
25260 bg = strig(1)
25270 bg2 = strig(0)
25280 pause 200
25290 wend
25300 if ((bg=2) or (key$=chr$(13))) then
25310 goto BirdsEye_Result3:
25320 endif
25330 if (bg2=2) then
25340 for i=0 to 8
25350 buffer(i)=0
25360 next i
25370 goto Main_Screen:
25380 endif
25390 BirdsEye_Result3:
25400 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
25410 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
25420 Forcus2_buffer$(2)="○"
25430 else
25440 Forcus2_buffer$(2)="☓"
25450 endif
25460 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
25470 Forcus2_buffer$(1)="○"
25480 else
25490 Forcus2_buffer$(1) = "☓"
25500 endif
25510 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
25520 Forcus2_buffer$(0)="○"
25530 else
25540 Forcus2_buffer$(0)="☓"
25550 endif
25560 gload Gazo$ + "Screen1.png",0,0,0
25570 color rgb(255,0,0):
25580 locate 1,1
25590 print "バーズアイグリッド(フォーカスライン2)"
25600 color rgb(255,255,255)
25610 locate 1,3
25620 print "●.縦のフォーカスライン"
25630 locate 1,5
25640 print "1.表現者ライン:" + Forcus2_buffer$(2)
25650 locate 1,7
25660 print "2.司令塔ライン:" + Forcus2_buffer$(1)
25670 locate 1,9
25680 print "3.指導者ライン:" + Forcus2_buffer$(0)
25690 color rgb(0,0,0)
25700 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
25710 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
25720 key$ = inkey$
25730 bg = strig(1)
25740 bg2 = strig(0)
25750 pause 200
25760 wend
25770 if ((bg = 2) or (key$ = chr$(13))) then
25780 goto BirdsEye_Result4:
25790 endif
25800 if (bg2=2) then
25810 for i=0 to 8
25820 buffer(i)=0
25830 next i
25840 goto Main_Screen:
25850 endif
25860 BirdsEye_Result4:
25870 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
25880 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
25890 Forcus3_buffer$(1) = "○"
25900 else
25910 Forcus3_buffer$(1) = "☓"
25920 endif
25930 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
25940 Forcus3_buffer$(0) = "○"
25950 else
25960 Forcus3_buffer$(0) = "☓"
25970 endif
25980 gload Gazo$ + "Screen1.png",0,0,0
25990 color rgb(255,0,0):
26000 locate 1,1
26010 print "バーズアイグリッド(フォーカスライン3)"
26020 color rgb(255,255,255)
26030 locate 1,3:
26040 print "●.斜めのフォーカスライン"
26050 locate 1,5
26060 print "1.成功者ライン:"+Forcus3_buffer$(1)
26070 locate 1,7
26080 print "2.セレブライン:"+Forcus3_buffer$(0)
26090 color rgb(0,0,0)
26100 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
26110 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
26120 key$ = inkey$
26130 bg = strig(1)
26140 bg2 = strig(0)
26150 pause 200
26160 wend
26170 if ((bg=2) or (key$=chr$(13))) then
26180 goto Result_Birtheye1:
26190 endif
26200 if (bg2=2) then
26210 'データークリア
26220 for i=0 to 8
26230 buffer(i) = 0
26240 next i
26250 goto Main_Screen:
26260 endif
26270 References1:
26280 cls 3:key$ = "":bg = 0:play "":font 48-16
26290 gload Gazo$ + "Reference1_20230703.png",0,0,0
26300 gload Gazo$ + "downscreen.png",0,0,800
26310 print chr$(13)+chr$(13)+chr$(13)
26320 color rgb(0,0,0)
26330 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
26340 print "Author:carol Adrinne,PhD"+chr$(13)
26350 print "出版社:幻冬舎" + chr$(13)
26360 print "HP:www.carolAdrienne.jp/"+chr$(13)
26370 print "ISBN:978-4-344-01394-0"+chr$(13)
26380 print "定価:1500円 + 税"+chr$(13)
26390 color rgb(255,255,255)
26400 locate 1,23
26410 print "ジョイパッド右：次へ"
26420 while (key$ <> chr$(13) and bg <> 2)
26430 bg = strig(1)
26440 key$ = inkey$
26450 pause 200
26460 wend
26470 '
26480 if ((bg = 2) or (key$ = chr$(13))) then
26490 pause 200:goto References2:
26500 endif
26510 'ユダヤの秘儀 カバラ大占術
26520 References2:
26530 cls 3:play "":bg = 0:key$ = ""
26540 gload Gazo$ + "Reference2_20230703.png",0,0,0
26550 gload Gazo$ + "downscreen.png",0,0,800
26560 '参考文献２
26570 'カバラ大占術
26580 print chr$(13) + chr$(13) + chr$(13)
26590 color  rgb(0,0,0):font 48-16
26600 locate 1,3
26610 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
26620 print "著者：浅野　八郎" + chr$(13)
26630 print "出版社:NON BOOK" + chr$(13)
26640 print "ISBN:4-396-10364-6" + chr$(13)
26650 print "定価:829円 + 税"
26660 color rgb(255,255,255)
26670 locate 1,23
26680 print "ジョイパッド右：トップへ行く"
26690 while ((key$ <> chr$(13)) and (bg <> 2))
26700 bg = strig(1)
26710 key$ = inkey$
26720 pause 200
26730 wend
26740 if ((bg = 2) or (key$ = chr$(13))) then
26750 pause 200:goto Main_Screen:
26760 endif
26770 end
26780 '1.数秘術　トップ画面
26790 Kabara_First_Top:
26800 cls 3:color rgb(255,255,255):play ""
26810 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
26820 gload Gazo$ + "downscreen.png",0,0,800
26830 No=0:init"kb:4"
26840 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
26850 print chr$(13);chr$(13)
26860 color rgb(255,255,255)
26870 locate 3,4:No=0
26880 print "番号選んでください" + chr$(13)
26890 print " :1.数秘術占い" + chr$(13)
26900 print " :2.トップ画面に戻る" + chr$(13)
26910 color rgb(0,0,0)
26920 sp_on 0,1
26930 locate 1,15:print "1.数秘術番号を求めるを選択"
26940 'KeyBord:true
26950 'Joy Pad:true
26960 '上、下:true
26970 '
26980 'ｂｇ：決定ボタン
26990 'カーソル　上
27000 'カーソル　下
27010 Kabara_First_Top2:
27020 key$ = "":bg = 0:y = 0:
27030 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
27040 key$ = inkey$
27050 bg = strig(1)
27060 y = stick(1)
27070 'PauseでCPUを休める
27080 pause 5
27090 wend
27100 '1.カーソル　下 処理 chr$(31)
27110 'カーソル　下
27120 if ((key$ = chr$(31)) or (y = 1)) then
27130 select case No
27140 '
27150 case 1:
27160 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
27170 case 0:
27180 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
27190 'case 2:
27200 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
27210 end select
27220 endif
27230 '2.カーソル　上 処理 chr$(30)
27240 if ((key$ = chr$(30)) or (y = -1)) then
27250 select case No
27260 case 0:
27270 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
27280 case 1:
27290 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
27300 'case 2:
27310 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
27320 end select
27330 endif
27340 '3.決定 処理  bg:2 or Enter key:chr$(13)
27350 if ((bg = 2) or (key$ = chr$(13))) then
27360 select case No
27370 case 0:
27380 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
27390 goto Kabara_TopScreen:
27400 'case 1:
27410 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
27420 case 1:
27430 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
27440 end select
27450 endif
27460 '
27470 'Kabara 相性占い トップ画面
27480 Kabara_Aishou_Top:
27490 cls 3:y=0:key$="":bg=0:No=0
27500 play ""
27510 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
27520 gload Gazo$ + "downscreen.png",0,0,800
27530 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
27540 print chr$(13) + chr$(13)
27550 locate 0,4:color rgb(255,255,255)
27560 'print "Ok"
27570 '
27580 print "番号を選んでください" + chr$(13)
27590 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
27600 print " :2.ビジネスの相性占い" + chr$(13)
27610 print " :3.トップ画面に戻る" + chr$(13)
27620 sp_on 0,1:sp_on 1,0:sp_on 2,0
27630 color rgb(0,0,0)
27640 locate 1,15:print "1.男女2人の相性占いを選択"
27650 Kabara_Aishou_Top2:
27660 key$ = "":y = 0:bg = 0:
27670 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
27680 'ジョイパッド(右) ,十字キー (上下)
27690 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
27700 y = stick(1)
27710 key$ = inkey$
27720 bg = strig(1)
27730 pause 200
27740 wend
27750 'カーソル　下 or 十字キー　下
27760 if ((key$ = chr$(31)) or (y = 1)) then
27770 select case No
27780 '選択肢　1 - 2に変更
27790 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
27800 'ok
27810 case 0:
27820 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
27830 '選択肢　2 - 3に変更
27840 case 1:
27850 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
27860 'リリース時 case 2コメント解除
27870 case 2:
27880 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
27890 case else:
27900 goto Kabara_Aishou_Top2:
27910 end select
27920 endif
27930 '十字キー　上　、カーソル　上
27940 if ((key$ = chr$(30)) or (y = -1)) then
27950 select case No
27960 case 0:
27970 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
27980 case 1:
27990 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
28000 case 2:
28010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
28020 case else:
28030 goto Kabara_Aishou_Top2:
28040 end select
28050 endif
28060 '十字キー　上下:選択
28070 'ジョイパッド 右:決定
28080 if ((bg = 2) or (key$ = chr$(13))) then
28090 select case No
28100 '1.男女の相性
28110 case 0:
28120 '男女の相性占い(未実装)トップ画面に飛ぶ
28130 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
28140 '2ビジネスの相性
28150 case 1:
28160 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
28170 case 2:
28180 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
28190 end select
28200 endif
28210 '0.男女の相性　トップ画面　ここから
28220 Danjyo_Aisyou_Top:
28230 cls 3:y=0:key$="":bg=0:No=0
28240 play ""
28250 gload Gazo$ + "Screen1.png",0,0,0
28260 gload Gazo$ + "downscreen.png",0,0,800
28270 print chr$(13) + chr$(13)
28280 locate 0,4:color rgb(255,255,255)
28290 'print "Ok"
28300 '
28310 print "番号を選んでください" + chr$(13)
28320 print " :1.自分と異性の相性(未実装)" + chr$(13)
28330 print " :2.男女2人の相性" + chr$(13)
28340 print " :3.トップ画面に戻る" + chr$(13)
28350 sp_on 0,1:sp_on 1,0:sp_on 2,0
28360 color rgb(0,0,0)
28370 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
28380 Danjyo_Aisyou_Top2:
28390 key$ = "":y = 0:bg = 0:
28400 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
28410 'ジョイパッド(右) ,十字キー (上下)
28420 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
28430 y = stick(1)
28440 key$ = inkey$
28450 bg = strig(1)
28460 pause 200
28470 wend
28480 'カーソル　下 or 十字キー　下
28490 if ((key$ = chr$(31)) or (y = 1)) then
28500 select case No
28510 '選択肢　1 - 2に変更
28520 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
28530 'ok
28540 case 0:
28550 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
28560 '選択肢　2 - 3に変更
28570 case 1:
28580 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
28590 'リリース時 case 2コメント解除
28600 case 2:
28610 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
28620 case else:
28630 goto Kabara_Aishou_Top2:
28640 end select
28650 endif
28660 '十字キー　上　、カーソル　上
28670 if ((key$ = chr$(30)) or (y = -1)) then
28680 select case No
28690 case 0:
28700 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
28710 case 1:
28720 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
28730 case 2:
28740 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
28750 case else:
28760 goto Kabara_Aishou_Top2:
28770 end select
28780 endif
28790 '十字キー　上下:選択
28800 'ジョイパッド 右:決定
28810 if ((bg = 2) or (key$ = chr$(13))) then
28820 select case No
28830 '1.自分と異性の相性
28840 case 0:
28850 '未実装
28860 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
28870 '2男女の相性 男性の名前入力に飛ぶ
28880 case 1:
28890 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
28900 case 2:
28910 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
28920 end select
28930 endif
28940 '0.男女の相性　トップ画面　ここまで
28950 '1.男女の相性 ここから
28960 '1-1.男性の名前を入力
28970 Danjyo_Aisyou_Input_Name_male:
28980 No=0:color RGB(255,255,255)
28990 '入力:キーボード
29000 cls 3:init "kb:2"
29010 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
29020 gload Gazo$ + "downscreen.png",0,0,800
29030 for i=0 to 3
29040 buf_male_year(i)=0
29050 next i
29060 play "":color rgb(255,0,0):male_name$ = ""
29070 locate 0,1
29080 print "男性の相性" + chr$(13) + chr$(13)
29090 color rgb(255,255,255):
29100 locate 0,3
29110 print "男性の相性を求めます。男性の名前を" + chr$(13)
29120 print "入れてください" + chr$(13)
29130 locate 0,15:color rgb(0,0,0)
29140 Input "男性の名前:",male_name$
29150 '-------------------------------------------
29160 '1-2:男性の生まれた年代
29170 Danjyo_Aisyou_Input_Born_Year:
29180 No=0:color RGB(255,255,255)
29190 cls 3:init "kb:4"
29200 gload Gazo$ + "Screen1.png",0,0,0
29210 gload Gazo$ + "downscreen.png",0,0,800
29220 play "":color rgb(255,0,0)
29230 '-------------------------------------------
29240 font 48
29250 locate 0,1
29260 '文字色：黒　 color rgb(0,0,0)
29270 color rgb(255,255,255)
29280 print "男性の生まれた年代を入れて下さい" + chr$(13)
29290 color rgb(255,255,255)
29300 locate 1,3
29310 print "男性の生まれた年代(西暦4桁):";buf_male_year$
29320 color rgb(255,255,255)
29330 'locate 4,6:print ":7"
29340 'locate 9,6:print ":8"
29350 'locate 12,6:print ":9"
29360 locate 4,6
29370 print ":7  :8  :9" + chr$(13)
29380 color rgb(255,255,255)
29390 locate 4,8
29400 print ":4  :5  :6" + chr$(13)
29410 color rgb(255,255,255)
29420 locate 4,10
29430 print ":1  :2  :3" + chr$(13)
29440 locate 4,12
29450 print "    :0"
29460 locate 12,12
29470 color rgb(0,0,255)
29480 print ":Ok"
29490 sp_on 4,0: sp_on 5,0:sp_on 6,0
29500 sp_on 7,0:sp_on 8,0:sp_on 9,0
29510 sp_on 10,0:sp_on 11,0:sp_on 12,0
29520 sp_on 13,0:sp_on 14,1
29530 '-------------------------------------------------------------------------------------
29540 Danjyo_Aisyou_Input_Male_Born_Year2:
29550 key$="":bg=0:y=0:y2=0:bg2=0:
29560 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
29570 key$ = inkey$
29580 bg = strig(1)
29590 y = stick(1)
29600 y2 = stick(0)
29610 bg2=strig(0)
29620 pause 200
29630 wend
29640 '十字キー　ここから
29650 '上の矢印　または、十字キー上
29660 if ((y = -1) or (key$ = chr$(30))) then
29670 select case No
29680 'No=-1:okのとき:初期の状態
29690 '0kボタンから３に移動
29700 '上に行く 処理
29710 case -1:
29720 No=3:sp_on 12,1:sp_on 14,0
29730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29740 '選択肢:3
29750 '3ボタンから 6に移動
29760 case 3:
29770 No=6:sp_on 12,0:sp_on 11,1
29780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29790 '6ボタンから ９に移動
29800 case 6:
29810 No=9:sp_on 10,1:sp_on 11,0
29820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29830 '6ボタンから ９に移動　ここまで
29840 '9で上を押して何もしない
29850 case 9:
29860 '何もしない
29870 No=9
29880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29890 '9で上を押しても何もしない　ここまで
29900 '上　 0ボタンから2ボタン
29910 'sp_on 6,1:1
29920 'sp_on 8,1:5
29930 'sp_on 7,1:7
29940 case 0:
29950 No=2:sp_on 13,0:sp_on 9,1:
29960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29970 '上  0ボタンから2ボタン　ここまで
29980 '2から５になる 上
29990 case 2:
30000 No=5:sp_on 8,1:sp_on 9,0:
30010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30020 case 5:
30030 No=8:sp_on 7,1:sp_on 8,0
30040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30050 case 8:
30060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30070 case 1:
30080 No=4:sp_on 5,1:sp_on 6,0
30090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30100 case 4:
30110 No=7:sp_on 4,1:sp_on 5,0
30120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30130 case 7:
30140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30150 end select
30160 endif
30170 '左３　ここまで
30180 '下の矢印
30190 '中央 2
30200 if ((y=1) or (key$ = chr$(31))) then
30210 select case No
30220 '9から６に下げる
30230 case 9:
30240 No=6:sp_on 11,1:sp_on 10,0
30250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30260 '6から３に下げる
30270 case 6:
30280 No=3:sp_on 12,1:sp_on 11,0
30290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30300 '3から０ｋに変える
30310 case 3:
30320 No=-1:sp_on 14,1:sp_on 12,0
30330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30340 'Okから下のボタンを押しても何もしない
30350 case -1:
30360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30370 case 8:
30380 No=5:sp_on 8,1:sp_on 7,0
30390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30400 case 5:
30410 No=2:sp_on 9,1:sp_on 8,0
30420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30430 case 2:
30440 No=0:sp_on 13,1:sp_on 9,0
30450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30460 case 0:
30470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30480 case 7:
30490 No=4:sp_on 5,1:sp_on 4,0
30500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30510 case 4:
30520 No=1:sp_on 6,1:sp_on 5,0
30530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30540 case 1:
30550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30560 end select
30570 endif
30580 '左へボタン 十字キー　左　or 　カーソル左
30590 if ((y2 = -1) or (key$ = chr$(29))) then
30600 select case No
30610 'Ok ボタン  Okから　左　０に行く
30620 case -1:
30630 No=0:sp_on 13,1:sp_on 14,0
30640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30650 '0 ボタン  左　何もしない
30660 case 0:
30670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30680 case 3:
30690 No=2:sp_on 9,1:sp_on 12,0:
30700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30710 case 2:
30720 No=1:sp_on 6,1:sp_on 9,0:
30730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30740 case 1:
30750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30760 case 6:
30770 No=5:sp_on 8,1:sp_on 11,0
30780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30790 case 5:
30800 No=4:sp_on 5,1:sp_on 8,0
30810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30820 case 4:
30830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30840 case 9:
30850 No=8:sp_on 7,1:sp_on 10,0
30860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30870 case 8:
30880 No=7:sp_on 4,1:sp_on 7,0
30890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30900 case 7:
30910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30920 end select
30930 endif
30940 '右  十字キー　右　or カーソル　右
30950 if ((y2 = 1) or (key$ = chr$(28))) then
30960 select case No
30970 '0ボタンからokボタン右に移動
30980 case 0:
30990 No=-1:sp_on 14,1:sp_on 13,0
31000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31010 '0ボタンからokボタン 右に移動　ここまで
31020 'OKボタンで右を押して何もしない
31030 case -1:
31040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31050 case 1:
31060 No=2:sp_on 9,1:sp_on 6,0
31070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31080 case 2:
31090 No=3:sp_on 12,1:sp_on 9,0
31100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31110 case 3:
31120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31130 case 4:
31140 No=5:sp_on 8,1:sp_on 5,0
31150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31160 case 5:
31170 No=6:sp_on 11,1:sp_on 8,0
31180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31190 case 7:
31200 No=8:sp_on 7,1:sp_on 4,0
31210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31220 case 8:
31230 No=9:sp_on 10,1:sp_on 7,0
31240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31250 case 9:
31260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31270 case 6:
31280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31290 end select
31300 'Okから右ボタンを押して何もしない ここまで
31310 endif
31320 '十字キー　ここまで
31330 '==============================
31340 'ここから
31350 '==============================
31360 if ((bg = 2) or (key$ = chr$(13))) then
31370 select case count
31380 case 0:
31390 count = 1
31400 if (No = -1) then
31410 count = 0:No=0
31420 buf_male_year(0) = No
31430 'Okボタンを押したとき
31440 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31450 else
31460 'Okボタン以外が押されたとき
31470 if (No >= 1 and No <= 2) then
31480 buf_year$="":buf_year$ = str$(No) + "***"
31490 buf_year = No:a= No
31500 buf_Jyoushi_Born_Day(0) = No
31510 locate 1,3
31520 color rgb(255,255,255)
31530 print "男性の生まれた年代(西暦4桁):";buf_year$
31540 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31550 else
31560 count=0
31570 ui_msg"数字が範囲外になります。"
31580 buf_year$="":buf_year=0
31590 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31600 endif
31610 endif
31620 case 1:
31630 count = 2
31640 if (No = -1) then
31650 count = 1
31660 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31670 else
31680 buf_year = a * 10 + No
31690 b=buf_year
31700 buf_year$ = str$(buf_year) + "**"
31710 buf_male_year(0)=buf_year
31720 locate 1,3
31730 color rgb(255,255,255)
31740 print "                                                                "
31750 locate 1,3
31760 print "男性の生まれた年代(西暦4桁):" + buf_year$
31770 'if (No = -1) then
31780 'count=1
31790 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31800 endif
31810 case 2:
31820 count=3
31830 if (No=-1) then
31840 count =2
31850 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31860 else
31870 buf_year = b * 10 + No
31880 c=buf_year
31890 buf_year$ = str$(buf_year) + "*"
31900 buf_male_year(0) = buf_year
31910 locate 1,3
31920 color rgb(255,255,255)
31930 print "                                        "
31940 locate 1,3
31950 print "男性の生まれた年代(西暦4桁):";buf_year$
31960 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31970 endif
31980 case 3:
31990 count=4
32000 if (No = -1) then
32010 No=0
32020 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32030 else
32040 buf_year = c * 10 + No
32050 buf_year$ = str$(buf_year)
32060 buf_male_year(0) = buf_year
32070 locate 1,3
32080 color RGB(255,255,255)
32090 print "                                      "
32100 locate 1,3
32110 print "男性の生まれた年代(西暦4桁):";buf_year$
32120 buf_year=val(buf_year$)
32130 'year=val(buf_year$)
32140 'if (No=-1) then
32150 'goto Input_Born_Month:
32160 'else
32170 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32180 endif
32190 case 4:
32200 'bufyear=buf_year
32210 if (No=-1) then
32220 buf_year = val(buf_year$)
32230 buf_male_year(0)=buf_year
32240 sp_on 14,0:No=0
32250 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32260 else
32270 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32280 endif
32290 end select
32300 endif
32310 '===========================
32320 'ここまでを部下のところにコピーする.
32330 '===========================
32340 if (bg2 = 2) then
32350 select case count2
32360 case 0:
32370 if (No = -1) then
32380 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
32390 count=0
32400 locate 1,3
32410 color rgb(255,255,255)
32420 print "                                      "
32430 locate 1,3
32440 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
32450 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32460 else
32470 '(buf_year=0) then
32480 buf_male_year=0:buf_male_year$="****"
32490 locate 1,3
32500 print "                                       "
32510 locate 1,3
32520 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
32530 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32540 'endif
32550 endif
32560 end select
32570 endif
32580 '-------生まれた年代　男性-------------
32590 '-------生まれた月　男性-------------
32600 '1-2:男性の生まれた月
32610 Danjyo_Aisyou_Input_Male_Born_Month:
32620 cls 3:play "":count=0:count2=0
32630 'No=-1:Okのとき
32640 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
32650 for i=0 to 1
32660 buf_male_month(i)=0
32670 next i
32680 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
32690 gload Gazo$ + "Screen1.png",0,0,0
32700 gload Gazo$ + "downscreen.png",0,0,800
32710 'Init"kb:4"
32720 '音声ファイル再生 2023.06.07
32730 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
32740 font 48
32750 locate 0,1
32760 '文字色：黒　 color rgb(0,0,0)
32770 '文字色:白
32780 color rgb(255,255,255)
32790 print "男性の生まれた月を入れて下さい" + chr$(13)
32800 '文字色:白
32810 color rgb(255,255,255)
32820 locate 1,3
32830 '文字色:白
32840 print "男性の生まれた月(1月~12月):"+buf_male_Month$
32850 color rgb(255,255,255)
32860 'locate 4,6:print ":7"
32870 'locate 9,6:print ":8"
32880 'locate 12,6:print ":9"
32890 locate 4,6
32900 '文字色:赤
32910 print ":7  :8  :9" + chr$(13)
32920 color rgb(255,255,255)
32930 locate 4,8
32940 print ":4  :5  :6" + chr$(13)
32950 color rgb(255,255,255)
32960 locate 4,10
32970 print ":1  :2  :3" + chr$(13)
32980 locate 4,12
32990 print "    :0"
33000 locate 12,12
33010 color rgb(0,0,255)
33020 print ":Ok"
33030 sp_on 4,0: sp_on 5,0:sp_on 6,0
33040 sp_on 7,0:sp_on 8,0:sp_on 9,0
33050 sp_on 10,0:sp_on 11,0:sp_on 12,0
33060 sp_on 13,0:sp_on 14,1
33070 '----------------------------------------------------------------------------------------
33080 Danjyo_Aisyou_Input_Male_Born_Month2:
33090 key$="":bg=0:y=0:y2=0:bg2=0
33100 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33110 key$ = inkey$
33120 bg = strig(1)
33130 y = stick(1)
33140 y2 = stick(0)
33150 bg2 = strig(0)
33160 pause 200
33170 wend
33180 '十字キー　ここから
33190 '上の矢印　または、十字キー上
33200 if ((y = -1) or (key$ = chr$(30))) then
33210 select case No
33220 'No=-1:okのとき:初期の状態
33230 '0kボタンから３に移動
33240 '上に行く 処理
33250 case -1:
33260 No=3:sp_on 12,1:sp_on 14,0
33270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33280 '選択肢:3
33290 '3ボタンから 6に移動
33300 case 3:
33310 No=6:sp_on 12,0:sp_on 11,1
33320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33330 '6ボタンから ９に移動
33340 case 6:
33350 No=9:sp_on 10,1:sp_on 11,0
33360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33370 '6ボタンから ９に移動　ここまで
33380 '9で上を押して何もしない
33390 case 9:
33400 '何もしない
33410 No=9
33420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33430 '9で上を押しても何もしない　ここまで
33440 '上　 0ボタンから2ボタン
33450 'sp_on 6,1:1
33460 'sp_on 8,1:5
33470 'sp_on 7,1:7
33480 case 0:
33490 No=2:sp_on 13,0:sp_on 9,1:
33500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33510 '上  0ボタンから2ボタン　ここまで
33520 '2から５になる 上
33530 case 2:
33540 No=5:sp_on 8,1:sp_on 9,0:
33550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33560 case 5:
33570 No=8:sp_on 7,1:sp_on 8,0
33580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33590 case 8:
33600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33610 case 1:
33620 No=4:sp_on 5,1:sp_on 6,0
33630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33640 case 4:
33650 No=7:sp_on 4,1:sp_on 5,0
33660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33670 case 7:
33680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33690 end select
33700 endif
33710 '左３　ここまで
33720 '下の矢印
33730 '中央 2
33740 if ((y=1) or (key$ = chr$(31))) then
33750 select case No
33760 '9から６に下げる
33770 case 9:
33780 No=6:sp_on 11,1:sp_on 10,0
33790 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
33800 '6から３に下げる
33810 case 6:
33820 No=3:sp_on 12,1:sp_on 11,0
33830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33840 '3から０ｋに変える
33850 case 3:
33860 No=-1:sp_on 14,1:sp_on 12,0
33870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33880 'Okから下のボタンを押しても何もしない
33890 case -1:
33900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33910 case 8:
33920 No=5:sp_on 8,1:sp_on 7,0
33930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33940 case 5:
33950 No=2:sp_on 9,1:sp_on 8,0
33960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33970 case 2:
33980 No=0:sp_on 13,1:sp_on 9,0
33990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34000 case 0:
34010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34020 case 7:
34030 No=4:sp_on 5,1:sp_on 4,0
34040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34050 case 4:
34060 No=1:sp_on 6,1:sp_on 5,0
34070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34080 case 1:
34090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34100 end select
34110 endif
34120 '左へボタン 十字キー　左　or 　カーソル左
34130 if ((y2 = -1) or (key$ = chr$(29))) then
34140 select case No
34150 'Ok ボタン  Okから　左　０に行く
34160 case -1:
34170 No=0:sp_on 13,1:sp_on 14,0
34180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34190 '0 ボタン  左　何もしない
34200 case 0:
34210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34220 case 3:
34230 No=2:sp_on 9,1:sp_on 12,0:
34240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34250 case 2:
34260 No=1:sp_on 6,1:sp_on 9,0:
34270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34280 case 1:
34290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34300 case 6:
34310 No=5:sp_on 8,1:sp_on 11,0
34320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34330 case 5:
34340 No=4:sp_on 5,1:sp_on 8,0
34350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34360 case 4:
34370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34380 case 9:
34390 No=8:sp_on 7,1:sp_on 10,0
34400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34410 case 8:
34420 No=7:sp_on 4,1:sp_on 7,0
34430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34440 case 7:
34450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34460 end select
34470 endif
34480 '右  十字キー　右　or カーソル　右
34490 if ((y2 = 1) or (key$ = chr$(28))) then
34500 select case No
34510 '0ボタンからokボタン右に移動
34520 case 0:
34530 No=-1:sp_on 14,1:sp_on 13,0
34540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34550 '0ボタンからokボタン 右に移動　ここまで
34560 'OKボタンで右を押して何もしない
34570 case -1:
34580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34590 case 1:
34600 No=2:sp_on 9,1:sp_on 6,0
34610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34620 case 2:
34630 No=3:sp_on 12,1:sp_on 9,0
34640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34650 case 3:
34660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34670 case 4:
34680 No=5:sp_on 8,1:sp_on 5,0
34690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34700 case 5:
34710 No=6:sp_on 11,1:sp_on 8,0
34720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34730 case 7:
34740 No=8:sp_on 7,1:sp_on 4,0
34750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34760 case 8:
34770 No=9:sp_on 10,1:sp_on 7,0
34780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34790 case 9:
34800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34810 case 6:
34820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34830 end select
34840 'Okから右ボタンを押して何もしない ここまで
34850 endif
34860 '十字キー　ここまで
34870 '右の丸ボタン + Enter key 決定キー
34880 if ((bg=2) or (key$=chr$(13))) then
34890 select case count
34900 case 0:
34910 if (No=-1) then No=0
34920 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
34930 if (buf_male_month > 1 and buf_male_month < 10)  then
34940 buf_male_Month$ = str$(buf_male_month)
34950 'buf_month=No
34960 endif
34970 if (buf_male_month = 1)  then
34980 buf_male_Month$ = str$(buf_male_month) + "*"
34990 'c=buf_month
35000 endif
35010 locate 1,3
35020 print "                                     "
35030 color RGB(255,255,255)
35040 locate 1,3
35050 print "男性の生まれた月(1月~12月):" + buf_male_Month$
35060 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35070 case 1:
35080 count = 2:
35090 'c = val(buf_Month$)
35100 if (No = -1) then
35110 'count=0
35120 No=0
35130 month=buf_male_month
35140 buf_male_month=val(buf_male_Month$)
35150 month=buf_male_month
35160 buf_Jyoushi_Born_Day(1)=month
35170 '生まれた日に飛ぶ
35180 goto Danjyo_Aisyou_Input_Male_Born_Day:
35190 else
35200 buf_male_month = c*10 + No
35210 'if (buf_month = 1) then
35220 'buf_Month$ = str$(buf_month)
35230 'endif
35240 buf_male_Month$ = str$(buf_male_month)
35250 buf_Jyoushi_Born_Day(1) = buf_male_month
35260 locate 0,3
35270 print "                                           "
35280 locate 1,3
35290 color Rgb(255,255,255)
35300 print "男性の生まれた月(1月~12月):" + buf_male_Month$
35310 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35320 endif
35330 case 2:
35340 '==================================
35350 '何もしない
35360 'coun = 2
35370 '==================================
35380 'c= val(buf_Month$)
35390 'buf_month = c*10 + No
35400 'buf_Month$ = str$(buf_month)
35410 'locate 2,3
35420 'print "上司の生まれた月(1月～12月):";buf_Month$
35430 'goto Jyoushi_Input_Born_Month2:
35440 'case 3:
35450 'count=4
35460 'b=val(buf_month$)
35470 'buf_month=c*10+No
35480 'buf_Month$=str$(buf_month)
35490 'locate 2,3
35500 'print "上司の生まれた月(1月～12月):";buf_Month$
35510 'buf_month=val(buf_Month$)
35520 'year=val(buf_year$)
35530 if (No=-1) then
35540 No=0
35550 goto Danjyo_Aisyou_Input_Male_Born_Day:
35560 else
35570 goto Danjyo_Aisyou_Input_Male_Born_Day2:
35580 endif
35590 'case 4:
35600 'bufyear=buf_year
35610 'if (No=-1) then
35620 'buf_month = val(buf_Month$)
35630 'month = buf_month
35640 'sp_on 14,0
35650 'goto Input_Born_Day:
35660 'else
35670 'goto Input_Born_Month2:
35680 'endif
35690 end select
35700 endif
35710 '左の丸ボタン　キャンセル
35720 if (bg2=2) then
35730 select case count2
35740 case 0:
35750 if (No = -1) then
35760 buf_male_month=0:buf_male_Month$="**"
35770 count=0
35780 'goto rewrite2:
35790 else
35800 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
35810 buf_male_month = 0:buf_male_Month$ = "**"
35820 locate 0,3
35830 color rgb(255,255,255)
35840 print "                                       "
35850 goto rewrite2:
35860 if (No>12) then
35870 ui_msg"値が範囲外です。"
35880 goto rewrite2:
35890 endif
35900 endif
35910 endif
35920 rewrite2:
35930 locate 2,3
35940 color rgb(255,255,255)
35950 print "                                      "
35960 locate 2,3
35970 print "男性の生まれた月(1月~12月):"+buf_male_Month$
35980 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35990 end select
36000 'endif
36010 endif
36020 end
36030 '-------生まれた月　男性 ここまで-------------
36040 '-------生まれた日　男性 ここから-------------
36050 Danjyo_Aisyou_Input_Male_Born_Day:
36060 cls 3:play "":count=0:count2=0
36070 'No=-1:Okのとき
36080 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
36090 for i=0 to 1
36100 buf_day(i)=0
36110 next i
36120 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
36130 gload Gazo$ + "Screen1.png",0,0,0
36140 gload Gazo$ + "downscreen.png",0,0,800
36150 'Init"kb:4"
36160 '音声ファイル再生 2023.06.07
36170 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
36180 font 48
36190 locate 0,1
36200 '文字色：黒　 color rgb(0,0,0)
36210 '文字色:白
36220 color rgb(255,255,255)
36230 print "男性の生まれた日を入れて下さい" + chr$(13)
36240 '文字色:白
36250 color rgb(255,255,255)
36260 locate 1,3
36270 '文字色:白
36280 print "男性の生まれた日(1月~31月):" + buf_Day$
36290 color rgb(255,255,255)
36300 'locate 4,6:print ":7"
36310 'locate 9,6:print ":8"
36320 'locate 12,6:print ":9"
36330 locate 4,6
36340 '文字色:赤
36350 print ":7  :8  :9" + chr$(13)
36360 color rgb(255,255,255)
36370 locate 4,8
36380 print ":4  :5  :6" + chr$(13)
36390 color rgb(255,255,255)
36400 locate 4,10
36410 print ":1  :2  :3" + chr$(13)
36420 locate 4,12
36430 print "    :0"
36440 locate 12,12
36450 color rgb(0,0,255)
36460 print ":Ok"
36470 sp_on 4,0: sp_on 5,0:sp_on 6,0
36480 sp_on 7,0:sp_on 8,0:sp_on 9,0
36490 sp_on 10,0:sp_on 11,0:sp_on 12,0
36500 sp_on 13,0:sp_on 14,1
36510 '-------------------------------------------------
36520 Danjyo_Aisyou_Input_Male_Born_Day2:
36530 key$="":bg=0:y=0:y2=0:bg2=0
36540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
36550 key$ = inkey$
36560 bg = strig(1)
36570 y = stick(1)
36580 y2 = stick(0)
36590 bg2 = strig(0)
36600 pause 200
36610 wend
36620 '十字キー　ここから
36630 '上の矢印　または、十字キー上
36640 if ((y = -1) or (key$ = chr$(30))) then
36650 select case No
36660 'No=-1:okのとき:初期の状態
36670 '0kボタンから３に移動
36680 '上に行く 処理
36690 case -1:
36700 No=3:sp_on 12,1:sp_on 14,0
36710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36720 '選択肢:3
36730 '3ボタンから 6に移動
36740 case 3:
36750 No=6:sp_on 12,0:sp_on 11,1
36760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36770 '6ボタンから ９に移動
36780 case 6:
36790 No=9:sp_on 10,1:sp_on 11,0
36800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36810 '6ボタンから ９に移動　ここまで
36820 '9で上を押して何もしない
36830 case 9:
36840 '何もしない
36850 No=9
36860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36870 '9で上を押しても何もしない　ここまで
36880 '上　 0ボタンから2ボタン
36890 'sp_on 6,1:1
36900 'sp_on 8,1:5
36910 'sp_on 7,1:7
36920 case 0:
36930 No=2:sp_on 13,0:sp_on 9,1:
36940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36950 '上  0ボタンから2ボタン　ここまで
36960 '2から５になる 上
36970 case 2:
36980 No=5:sp_on 8,1:sp_on 9,0:
36990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37000 case 5:
37010 No=8:sp_on 7,1:sp_on 8,0
37020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37030 case 8:
37040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37050 case 1:
37060 No=4:sp_on 5,1:sp_on 6,0
37070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37080 case 4:
37090 No=7:sp_on 4,1:sp_on 5,0
37100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37110 case 7:
37120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37130 end select
37140 endif
37150 '左３　ここまで
37160 '下の矢印
37170 '中央 2
37180 if ((y=1) or (key$ = chr$(31))) then
37190 select case No
37200 '9から６に下げる
37210 case 9:
37220 No=6:sp_on 11,1:sp_on 10,0
37230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37240 '6から３に下げる
37250 case 6:
37260 No=3:sp_on 12,1:sp_on 11,0
37270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37280 '3から０ｋに変える
37290 case 3:
37300 No=-1:sp_on 14,1:sp_on 12,0
37310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37320 'Okから下のボタンを押しても何もしない
37330 case -1:
37340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37350 case 8:
37360 No=5:sp_on 8,1:sp_on 7,0
37370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37380 case 5:
37390 No=2:sp_on 9,1:sp_on 8,0
37400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37410 case 2:
37420 No=0:sp_on 13,1:sp_on 9,0
37430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37440 case 0:
37450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37460 case 7:
37470 No=4:sp_on 5,1:sp_on 4,0
37480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37490 case 4:
37500 No=1:sp_on 6,1:sp_on 5,0
37510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37520 case 1:
37530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37540 end select
37550 endif
37560 '左へボタン 十字キー　左　or 　カーソル左
37570 if ((y2 = -1) or (key$ = chr$(29))) then
37580 select case No
37590 'Ok ボタン  Okから　左　０に行く
37600 case -1:
37610 No=0:sp_on 13,1:sp_on 14,0
37620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37630 '0 ボタン  左　何もしない
37640 case 0:
37650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37660 case 3:
37670 No=2:sp_on 9,1:sp_on 12,0:
37680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37690 case 2:
37700 No=1:sp_on 6,1:sp_on 9,0:
37710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37720 case 1:
37730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37740 case 6:
37750 No=5:sp_on 8,1:sp_on 11,0
37760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37770 case 5:
37780 No=4:sp_on 5,1:sp_on 8,0
37790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37800 case 4:
37810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37820 case 9:
37830 No=8:sp_on 7,1:sp_on 10,0
37840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37850 case 8:
37860 No=7:sp_on 4,1:sp_on 7,0
37870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37880 case 7:
37890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37900 end select
37910 endif
37920 '右  十字キー　右　or カーソル　右
37930 if ((y2 = 1) or (key$ = chr$(28))) then
37940 select case No
37950 '0ボタンからokボタン右に移動
37960 case 0:
37970 No=-1:sp_on 14,1:sp_on 13,0
37980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37990 '0ボタンからokボタン 右に移動　ここまで
38000 'OKボタンで右を押して何もしない
38010 case -1:
38020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38030 case 1:
38040 No=2:sp_on 9,1:sp_on 6,0
38050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38060 case 2:
38070 No=3:sp_on 12,1:sp_on 9,0
38080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38090 case 3:
38100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38110 case 4:
38120 No=5:sp_on 8,1:sp_on 5,0
38130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38140 case 5:
38150 No=6:sp_on 11,1:sp_on 8,0
38160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38170 case 7:
38180 No=8:sp_on 7,1:sp_on 4,0
38190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38200 case 8:
38210 No=9:sp_on 10,1:sp_on 7,0
38220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38230 case 9:
38240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38250 case 6:
38260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38270 end select
38280 'Okから右ボタンを押して何もしない ここまで
38290 endif
38300 '十字キー　ここまで
38310 '右の丸ボタン + Enter key 決定キー
38320 if ((bg=2) or (key$=chr$(13))) then
38330 select case count
38340 case 0:
38350 if (No=-1) then No=0
38360 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
38370 if (buf_male_day > 1 and buf_male_day < 10)  then
38380 buf_male_Day$ = str$(buf_male_day)
38390 'buf_month=No
38400 endif
38410 if (buf_male_day = 1)  then
38420 buf_male_Day$ = str$(buf_male_day) + "*"
38430 'c=buf_month
38440 endif
38450 locate 1,3
38460 print "                                     "
38470 color RGB(255,255,255)
38480 locate 1,3
38490 print "男性の生まれた日(1月~31月):" + buf_male_Day$
38500 goto Danjyo_Aisyou_Input_Male_Born_Day2:
38510 case 1:
38520 count = 2:
38530 'c = val(buf_Month$)
38540 if (No = -1) then
38550 'count=0
38560 No=0
38570 day=buf_male_Day
38580 buf_male_Day=val(buf_male_Day$)
38590 day=buf_male_Day
38600 buf_Jyoushi_Born_Day(2)=day
38610 '生まれた日に飛ぶ
38620 goto Danjyo_Aisyou_Input_Male_Born_Day:
38630 else
38640 buf_male_Day = c*10 + No
38650 'if (buf_month = 1) then
38660 'buf_Month$ = str$(buf_month)
38670 'endif
38680 buf_male_Day$ = str$(buf_male_Day)
38690 buf_male_Born_Day(2) = buf_male_Day:
38700 locate 0,3
38710 print "                                           "
38720 locate 1,3
38730 color Rgb(255,255,255)
38740 print "男性の生まれた月(1月~12月):" + buf_male_Day$
38750 goto Danjyo_Aisyou_Input_Male_Born_Day2:
38760 endif
38770 case 2:
38780 '==================================
38790 '何もしない
38800 'coun = 2
38810 '==================================
38820 'c= val(buf_Month$)
38830 'buf_month = c*10 + No
38840 'buf_Month$ = str$(buf_month)
38850 'locate 2,3
38860 'print "上司の生まれた月(1月～12月):";buf_Month$
38870 'goto Jyoushi_Input_Born_Month2:
38880 'case 3:
38890 'count=4
38900 'b=val(buf_month$)
38910 'buf_month=c*10+No
38920 'buf_Month$=str$(buf_month)
38930 'locate 2,3
38940 'print "上司の生まれた月(1月～12月):";buf_Month$
38950 'buf_month=val(buf_Month$)
38960 'year=val(buf_year$)
38970 if (No=-1) then
38980 No=0
38990 goto Danjyo_Aisyou_Input_Male_Born_Day:
39000 else
39010 goto Danjyo_Aisyou_Input_Male_Born_Day2:
39020 endif
39030 'case 4:
39040 'bufyear=buf_year
39050 'if (No=-1) then
39060 'buf_month = val(buf_Month$)
39070 'month = buf_month
39080 'sp_on 14,0
39090 'goto Input_Born_Day:
39100 'else
39110 'goto Input_Born_Month2:
39120 'endif
39130 end select
39140 endif
39150 '左の丸ボタン　キャンセル
39160 if (bg2=2) then
39170 select case count2
39180 case 0:
39190 if (No = -1) then
39200 buf_male_day=0:buf_male_Day$="**"
39210 count=0
39220 'goto rewrite2:
39230 else
39240 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
39250 buf_male_day = 0:buf_male_Day$ = "**"
39260 locate 0,3
39270 color rgb(255,255,255)
39280 print "                                       "
39290 goto rewrite2:
39300 if (No>12) then
39310 ui_msg"値が範囲外です。"
39320 goto rewrite2:
39330 endif
39340 endif
39350 endif
39360 rewrite2:
39370 locate 2,3
39380 color rgb(255,255,255)
39390 print "                                      "
39400 locate 2,3
39410 print "男性の生まれた日(1月~31月):"+buf_male_Day$
39420 goto Danjyo_Aisyou_Input_Male_Born_Day2:
39430 end select
39440 'endif
39450 endif
39460 end
39470 '-------生まれた日　女性　ここまで-------------
39480 '1-1.女性の名前を入力
39490 Danjyo_Aisyou_Input_Name_female:
39500 No=0:color RGB(255,255,255)
39510 '入力:キーボード
39520 cls 3:init "kb:2"
39530 gload Gazo$ + "Screen1.png",0,0,0
39540 gload Gazo$ + "downscreen.png",0,0,800
39550 play "":color rgb(255,0,0):female_name$ = ""
39560 locate 0,1
39570 print "女性の相性" + chr$(13) + chr$(13)
39580 color rgb(255,255,255):
39590 locate 0,3
39600 print "女性の相性を求めます。男性の名前を" + chr$(13)
39610 print "入れてください" + chr$(13)
39620 locate 0,15:color rgb(0,0,0)
39630 Input "女性の名前:",female_name$
39640 '-------------------------------------------
39650 '-------生まれた年代　女性 ここから-------------
39660 Danjyo_Aisyou_Input_feMale_Born_Year:
39670 cls 3:play "":count=0:count2=0
39680 'No=-1:Okのとき
39690 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
39700 for i=0 to 1
39710 buf_day(i)=0
39720 next i
39730 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
39740 gload Gazo$ + "Screen1.png",0,0,0
39750 gload Gazo$ + "downscreen.png",0,0,800
39760 'Init"kb:4"
39770 '音声ファイル再生 2023.06.07
39780 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
39790 font 48
39800 locate 0,1
39810 '文字色：黒　 color rgb(0,0,0)
39820 '文字色:白
39830 color rgb(255,255,255)
39840 print "女性の生まれた年代を入れて下さい" + chr$(13)
39850 '文字色:白
39860 color rgb(255,255,255)
39870 locate 1,3
39880 '文字色:白
39890 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
39900 color rgb(255,255,255)
39910 'locate 4,6:print ":7"
39920 'locate 9,6:print ":8"
39930 'locate 12,6:print ":9"
39940 locate 4,6
39950 '文字色:赤
39960 print ":7  :8  :9" + chr$(13)
39970 color rgb(255,255,255)
39980 locate 4,8
39990 print ":4  :5  :6" + chr$(13)
40000 color rgb(255,255,255)
40010 locate 4,10
40020 print ":1  :2  :3" + chr$(13)
40030 locate 4,12
40040 print "    :0"
40050 locate 12,12
40060 color rgb(0,0,255)
40070 print ":Ok"
40080 sp_on 4,0: sp_on 5,0:sp_on 6,0
40090 sp_on 7,0:sp_on 8,0:sp_on 9,0
40100 sp_on 10,0:sp_on 11,0:sp_on 12,0
40110 sp_on 13,0:sp_on 14,1
40120 '---------------------------------------------
40130 Danjyo_Aisyou_Input_feMale_Born_Year2:
40140 key$="":bg=0:y=0:y2=0:bg2=0:
40150 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
40160 key$ = inkey$
40170 bg = strig(1)
40180 y = stick(1)
40190 y2 = stick(0)
40200 bg2=strig(0)
40210 pause 200
40220 wend
40230 '十字キー　ここから
40240 '上の矢印　または、十字キー上
40250 if ((y = -1) or (key$ = chr$(30))) then
40260 select case No
40270 'No=-1:okのとき:初期の状態
40280 '0kボタンから３に移動
40290 '上に行く 処理
40300 case -1:
40310 No=3:sp_on 12,1:sp_on 14,0
40320 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
40330 '選択肢:3
40340 '3ボタンから 6に移動
40350 case 3:
40360 No=6:sp_on 12,0:sp_on 11,1
40370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40380 '6ボタンから ９に移動
40390 case 6:
40400 No=9:sp_on 10,1:sp_on 11,0
40410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40420 '6ボタンから ９に移動　ここまで
40430 '9で上を押して何もしない
40440 case 9:
40450 '何もしない
40460 No=9
40470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40480 '9で上を押しても何もしない　ここまで
40490 '上　 0ボタンから2ボタン
40500 'sp_on 6,1:1
40510 'sp_on 8,1:5
40520 'sp_on 7,1:7
40530 case 0:
40540 No=2:sp_on 13,0:sp_on 9,1:
40550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40560 '上  0ボタンから2ボタン　ここまで
40570 '2から５になる 上
40580 case 2:
40590 No=5:sp_on 8,1:sp_on 9,0:
40600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40610 case 5:
40620 No=8:sp_on 7,1:sp_on 8,0
40630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40640 case 8:
40650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40660 case 1:
40670 No=4:sp_on 5,1:sp_on 6,0
40680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40690 case 4:
40700 No=7:sp_on 4,1:sp_on 5,0
40710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40720 case 7:
40730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40740 end select
40750 endif
40760 '左３　ここまで
40770 '下の矢印
40780 '中央 2
40790 if ((y=1) or (key$ = chr$(31))) then
40800 select case No
40810 '9から６に下げる
40820 case 9:
40830 No=6:sp_on 11,1:sp_on 10,0
40840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40850 '6から３に下げる
40860 case 6:
40870 No=3:sp_on 12,1:sp_on 11,0
40880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40890 '3から０ｋに変える
40900 case 3:
40910 No=-1:sp_on 14,1:sp_on 12,0
40920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40930 'Okから下のボタンを押しても何もしない
40940 case -1:
40950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40960 case 8:
40970 No=5:sp_on 8,1:sp_on 7,0
40980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40990 case 5:
41000 No=2:sp_on 9,1:sp_on 8,0
41010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41020 case 2:
41030 No=0:sp_on 13,1:sp_on 9,0
41040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41050 case 0:
41060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41070 case 7:
41080 No=4:sp_on 5,1:sp_on 4,0
41090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41100 case 4:
41110 No=1:sp_on 6,1:sp_on 5,0
41120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41130 case 1:
41140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41150 end select
41160 endif
41170 '左へボタン 十字キー　左　or 　カーソル左
41180 if ((y2 = -1) or (key$ = chr$(29))) then
41190 select case No
41200 'Ok ボタン  Okから　左　０に行く
41210 case -1:
41220 No=0:sp_on 13,1:sp_on 14,0
41230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41240 '0 ボタン  左　何もしない
41250 case 0:
41260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41270 case 3:
41280 No=2:sp_on 9,1:sp_on 12,0:
41290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41300 case 2:
41310 No=1:sp_on 6,1:sp_on 9,0:
41320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41330 case 1:
41340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41350 case 6:
41360 No=5:sp_on 8,1:sp_on 11,0
41370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41380 case 5:
41390 No=4:sp_on 5,1:sp_on 8,0
41400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41410 case 4:
41420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41430 case 9:
41440 No=8:sp_on 7,1:sp_on 10,0
41450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41460 case 8:
41470 No=7:sp_on 4,1:sp_on 7,0
41480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41490 case 7:
41500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41510 end select
41520 endif
41530 '右  十字キー　右　or カーソル　右
41540 if ((y2 = 1) or (key$ = chr$(28))) then
41550 select case No
41560 '0ボタンからokボタン右に移動
41570 case 0:
41580 No=-1:sp_on 14,1:sp_on 13,0
41590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41600 '0ボタンからokボタン 右に移動　ここまで
41610 'OKボタンで右を押して何もしない
41620 case -1:
41630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41640 case 1:
41650 No=2:sp_on 9,1:sp_on 6,0
41660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41670 case 2:
41680 No=3:sp_on 12,1:sp_on 9,0
41690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41700 case 3:
41710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41720 case 4:
41730 No=5:sp_on 8,1:sp_on 5,0
41740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41750 case 5:
41760 No=6:sp_on 11,1:sp_on 8,0
41770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41780 case 7:
41790 No=8:sp_on 7,1:sp_on 4,0
41800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41810 case 8:
41820 No=9:sp_on 10,1:sp_on 7,0
41830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41840 case 9:
41850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41860 case 6:
41870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41880 end select
41890 'Okから右ボタンを押して何もしない ここまで
41900 endif
41910 '十字キー　ここまで
41920 '==============================
41930 'ここから
41940 '==============================
41950 if ((bg = 2) or (key$ = chr$(13))) then
41960 select case count
41970 case 0:
41980 count = 1
41990 if (No = -1) then
42000 count = 0:No=0
42010 buf_feMale_Born_Day(0) = No
42020 'Okボタンを押したとき
42030 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42040 else
42050 'Okボタン以外が押されたとき
42060 if (No >= 1 and No <= 2) then
42070 buf_female_year$="":buf_female_year$ = str$(No) + "***"
42080 buf_female_year = No:a= No
42090 buf_Jyoushi_Born_Day(0) = No
42100 locate 1,3
42110 color rgb(255,255,255)
42120 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42130 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42140 else
42150 count=0
42160 ui_msg"数字が範囲外になります。"
42170 buf_female_year$="":buf_female_year=0
42180 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42190 endif
42200 endif
42210 case 1:
42220 count = 2
42230 if (No = -1) then
42240 count = 1
42250 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42260 else
42270 buf_female_year = a * 10 + No
42280 b=buf_female_year
42290 buf_year$ = str$(buf_female_year) + "**"
42300 buf_Jyoushi_Born_Day(0)=buf_female_year
42310 locate 1,3
42320 color rgb(255,255,255)
42330 print "                                                                "
42340 locate 1,3
42350 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
42360 'if (No = -1) then
42370 'count=1
42380 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42390 endif
42400 case 2:
42410 count=3
42420 if (No=-1) then
42430 count =2
42440 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42450 else
42460 buf_female_year = b * 10 + No
42470 c=buf_female_year
42480 buf_female_year$ = str$(buf_female_year) + "*"
42490 buf_Jyoushi_Born_Day(0) = buf_female_year
42500 locate 1,3
42510 color rgb(255,255,255)
42520 print "                                        "
42530 locate 1,3
42540 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42550 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42560 endif
42570 case 3:
42580 count=4
42590 if (No = -1) then
42600 No=0
42610 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42620 else
42630 buf_female_year = c * 10 + No
42640 buf_female_year$ = str$(buf_female_year)
42650 buf_Jyoushi_Born_Day(0) = buf_female_year
42660 locate 1,3
42670 color RGB(255,255,255)
42680 print "                                      "
42690 locate 1,3
42700 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42710 buf_female_year=val(buf_female_year$)
42720 'year=val(buf_year$)
42730 'if (No=-1) then
42740 'goto Input_Born_Month:
42750 'else
42760 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42770 endif
42780 case 4:
42790 'bufyear=buf_year
42800 if (No=-1) then
42810 buf_female_year = val(buf_female_year$)
42820 buf_Jyoushi_Born_Day(0)=buf_female_year
42830 sp_on 14,0:No=0
42840 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42850 else
42860 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42870 endif
42880 end select
42890 endif
42900 '===========================
42910 'ここまでを部下のところにコピーする.
42920 '===========================
42930 if (bg2 = 2) then
42940 select case count2
42950 case 0:
42960 if (No = -1) then
42970 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
42980 count=0
42990 locate 1,3
43000 color rgb(255,255,255)
43010 print "                                      "
43020 locate 1,3
43030 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
43040 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
43050 else
43060 '(buf_year=0) then
43070 buf_female_year=0:buf_year$="****"
43080 locate 1,3
43090 print "                                       "
43100 locate 1,3
43110 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
43120 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
43130 'endif
43140 endif
43150 end select
43160 endif
43170 '-------生まれた年代　女性 ここまで-------------
43180 '-------生まれた月　女性 ここまで--------------
43190 Danjyo_Aisyou_Input_feMale_Born_Month:
43200 cls 3:play "":count=0:count2=0
43210 'No=-1:Okのとき
43220 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
43230 for i=0 to 1
43240 buf_month(i)=0
43250 next i
43260 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43270 gload Gazo$ + "Screen1.png",0,0,0
43280 gload Gazo$ + "downscreen.png",0,0,800
43290 'Init"kb:4"
43300 '音声ファイル再生 2023.06.07
43310 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
43320 font 48
43330 locate 0,1
43340 '文字色：黒　 color rgb(0,0,0)
43350 '文字色:白
43360 color rgb(255,255,255)
43370 print "女性の生まれた月を入れて下さい" + chr$(13)
43380 '文字色:白
43390 color rgb(255,255,255)
43400 locate 1,3
43410 '文字色:白
43420 print "女性の生まれた月(1月~12月):"+buf_female_Month$
43430 color rgb(255,255,255)
43440 'locate 4,6:print ":7"
43450 'locate 9,6:print ":8"
43460 'locate 12,6:print ":9"
43470 locate 4,6
43480 '文字色:赤
43490 print ":7  :8  :9" + chr$(13)
43500 color rgb(255,255,255)
43510 locate 4,8
43520 print ":4  :5  :6" + chr$(13)
43530 color rgb(255,255,255)
43540 locate 4,10
43550 print ":1  :2  :3" + chr$(13)
43560 locate 4,12
43570 print "    :0"
43580 locate 12,12
43590 color rgb(0,0,255)
43600 print ":Ok"
43610 sp_on 4,0: sp_on 5,0:sp_on 6,0
43620 sp_on 7,0:sp_on 8,0:sp_on 9,0
43630 sp_on 10,0:sp_on 11,0:sp_on 12,0
43640 sp_on 13,0:sp_on 14,1
43650 '---------------------------------------------
43660 Danjyo_Aisyou_Input_feMale_Born_Month2:
43670 key$="":bg=0:y=0:y2=0:bg2=0
43680 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43690 key$ = inkey$
43700 bg = strig(1)
43710 y = stick(1)
43720 y2 = stick(0)
43730 bg2 = strig(0)
43740 pause 200
43750 wend
43760 '十字キー　ここから
43770 '上の矢印　または、十字キー上
43780 if ((y = -1) or (key$ = chr$(30))) then
43790 select case No
43800 'No=-1:okのとき:初期の状態
43810 '0kボタンから３に移動
43820 '上に行く 処理
43830 case -1:
43840 No=3:sp_on 12,1:sp_on 14,0
43850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43860 '選択肢:3
43870 '3ボタンから 6に移動
43880 case 3:
43890 No=6:sp_on 12,0:sp_on 11,1
43900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43910 '6ボタンから ９に移動
43920 case 6:
43930 No=9:sp_on 10,1:sp_on 11,0
43940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43950 '6ボタンから ９に移動　ここまで
43960 '9で上を押して何もしない
43970 case 9:
43980 '何もしない
43990 No=9
44000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44010 '9で上を押しても何もしない　ここまで
44020 '上　 0ボタンから2ボタン
44030 'sp_on 6,1:1
44040 'sp_on 8,1:5
44050 'sp_on 7,1:7
44060 case 0:
44070 No=2:sp_on 13,0:sp_on 9,1:
44080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44090 '上  0ボタンから2ボタン　ここまで
44100 '2から５になる 上
44110 case 2:
44120 No=5:sp_on 8,1:sp_on 9,0:
44130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44140 case 5:
44150 No=8:sp_on 7,1:sp_on 8,0
44160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44170 case 8:
44180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44190 case 1:
44200 No=4:sp_on 5,1:sp_on 6,0
44210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44220 case 4:
44230 No=7:sp_on 4,1:sp_on 5,0
44240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44250 case 7:
44260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44270 end select
44280 endif
44290 '左３　ここまで
44300 '下の矢印
44310 '中央 2
44320 if ((y=1) or (key$ = chr$(31))) then
44330 select case No
44340 '9から６に下げる
44350 case 9:
44360 No=6:sp_on 11,1:sp_on 10,0
44370 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
44380 '6から３に下げる
44390 case 6:
44400 No=3:sp_on 12,1:sp_on 11,0
44410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44420 '3から０ｋに変える
44430 case 3:
44440 No=-1:sp_on 14,1:sp_on 12,0
44450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44460 'Okから下のボタンを押しても何もしない
44470 case -1:
44480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44490 case 8:
44500 No=5:sp_on 8,1:sp_on 7,0
44510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44520 case 5:
44530 No=2:sp_on 9,1:sp_on 8,0
44540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44550 case 2:
44560 No=0:sp_on 13,1:sp_on 9,0
44570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44580 case 0:
44590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44600 case 7:
44610 No=4:sp_on 5,1:sp_on 4,0
44620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44630 case 4:
44640 No=1:sp_on 6,1:sp_on 5,0
44650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44660 case 1:
44670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44680 end select
44690 endif
44700 '左へボタン 十字キー　左　or 　カーソル左
44710 if ((y2 = -1) or (key$ = chr$(29))) then
44720 select case No
44730 'Ok ボタン  Okから　左　０に行く
44740 case -1:
44750 No=0:sp_on 13,1:sp_on 14,0
44760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44770 '0 ボタン  左　何もしない
44780 case 0:
44790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44800 case 3:
44810 No=2:sp_on 9,1:sp_on 12,0:
44820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44830 case 2:
44840 No=1:sp_on 6,1:sp_on 9,0:
44850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44860 case 1:
44870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44880 case 6:
44890 No=5:sp_on 8,1:sp_on 11,0
44900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44910 case 5:
44920 No=4:sp_on 5,1:sp_on 8,0
44930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44940 case 4:
44950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44960 case 9:
44970 No=8:sp_on 7,1:sp_on 10,0
44980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44990 case 8:
45000 No=7:sp_on 4,1:sp_on 7,0
45010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45020 case 7:
45030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45040 end select
45050 endif
45060 '右  十字キー　右　or カーソル　右
45070 if ((y2 = 1) or (key$ = chr$(28))) then
45080 select case No
45090 '0ボタンからokボタン右に移動
45100 case 0:
45110 No=-1:sp_on 14,1:sp_on 13,0
45120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45130 '0ボタンからokボタン 右に移動　ここまで
45140 'OKボタンで右を押して何もしない
45150 case -1:
45160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45170 case 1:
45180 No=2:sp_on 9,1:sp_on 6,0
45190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45200 case 2:
45210 No=3:sp_on 12,1:sp_on 9,0
45220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45230 case 3:
45240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45250 case 4:
45260 No=5:sp_on 8,1:sp_on 5,0
45270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45280 case 5:
45290 No=6:sp_on 11,1:sp_on 8,0
45300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45310 case 7:
45320 No=8:sp_on 7,1:sp_on 4,0
45330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45340 case 8:
45350 No=9:sp_on 10,1:sp_on 7,0
45360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45370 case 9:
45380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45390 case 6:
45400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45410 end select
45420 'Okから右ボタンを押して何もしない ここまで
45430 endif
45440 '十字キー　ここまで
45450 '右の丸ボタン + Enter key 決定キー
45460 if ((bg=2) or (key$=chr$(13))) then
45470 select case count
45480 case 0:
45490 if (No=-1) then No=0
45500 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
45510 if (buf_female_month > 1 and buf_female_month < 10)  then
45520 buf_female_Month$ = str$(buf_female_month)
45530 'buf_month=No
45540 endif
45550 if (buf_female_month = 1)  then
45560 buf_female_Month$ = str$(buf_female_month) + "*"
45570 'c=buf_month
45580 endif
45590 locate 1,3
45600 print "                                     "
45610 color RGB(255,255,255)
45620 locate 1,3
45630 print "女性の生まれた月(1月~12月):" + buf_female_Month$
45640 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45650 case 1:
45660 count = 2:
45670 'c = val(buf_Month$)
45680 if (No = -1) then
45690 'count=0
45700 No=0
45710 month=buf_female_month
45720 buf_female_month=val(buf_female_Month$)
45730 month=buf_female_month
45740 buf_Jyoushi_Born_Day(1)=month
45750 '生まれた日に飛ぶ
45760 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45770 else
45780 buf_female_month = c*10 + No
45790 'if (buf_month = 1) then
45800 'buf_Month$ = str$(buf_month)
45810 'endif
45820 buf_female_Month$ = str$(buf_female_month)
45830 buf_Jyoushi_Born_Day(1) = buf_female_month
45840 locate 0,3
45850 print "                                           "
45860 locate 1,3
45870 color Rgb(255,255,255)
45880 print "女性の生まれた月(1月~12月):" + buf_female_Month$
45890 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45900 endif
45910 case 2:
45920 '==================================
45930 '何もしない
45940 'coun = 2
45950 '==================================
45960 'c= val(buf_Month$)
45970 'buf_month = c*10 + No
45980 'buf_Month$ = str$(buf_month)
45990 'locate 2,3
46000 'print "上司の生まれた月(1月～12月):";buf_Month$
46010 'goto Jyoushi_Input_Born_Month2:
46020 'case 3:
46030 'count=4
46040 'b=val(buf_month$)
46050 'buf_month=c*10+No
46060 'buf_Month$=str$(buf_month)
46070 'locate 2,3
46080 'print "上司の生まれた月(1月～12月):";buf_Month$
46090 'buf_month=val(buf_Month$)
46100 'year=val(buf_year$)
46110 if (No=-1) then
46120 No=0
46130 goto Danjyo_Aisyou_Input_Male_Born_Day:
46140 else
46150 goto Danjyo_Aisyou_Input_Male_Born_Day2:
46160 endif
46170 'case 4:
46180 'bufyear=buf_year
46190 'if (No=-1) then
46200 'buf_month = val(buf_Month$)
46210 'month = buf_month
46220 'sp_on 14,0
46230 'goto Input_Born_Day:
46240 'else
46250 'goto Input_Born_Month2:
46260 'endif
46270 end select
46280 endif
46290 '左の丸ボタン　キャンセル
46300 if (bg2=2) then
46310 select case count2
46320 case 0:
46330 if (No = -1) then
46340 buf_female_month=0:buf_female_Month$="**"
46350 count=0
46360 'goto rewrite2:
46370 else
46380 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
46390 buf_female_month = 0:buf_female_Month$ = "**"
46400 locate 0,3
46410 color rgb(255,255,255)
46420 print "                                       "
46430 goto rewrite2:
46440 if (No>12) then
46450 ui_msg"値が範囲外です。"
46460 goto rewrite2:
46470 endif
46480 endif
46490 endif
46500 rewrite2:
46510 locate 2,3
46520 color rgb(255,255,255)
46530 print "                                      "
46540 locate 2,3
46550 print "女性の生まれた月(1月~12月):"+buf_female_Month$
46560 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
46570 end select
46580 'endif
46590 endif
46600 end
46610 '-------生まれた月　女性 ここまで-------------
46620 '-------生まれた日　女性 ここまで-------------
46630 Danjyo_Aisyou_Input_feMale_Born_Day:
46640 cls 3:play "":count=0:count2=0
46650 'No=-1:Okのとき
46660 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
46670 for i=0 to 1
46680 buf_female_day(i)=0
46690 next i
46700 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46710 gload Gazo$ + "Screen1.png",0,0,0
46720 gload Gazo$ + "downscreen.png",0,0,800
46730 'Init"kb:4"
46740 '音声ファイル再生 2023.06.07
46750 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
46760 font 48
46770 locate 0,1
46780 '文字色：黒　 color rgb(0,0,0)
46790 '文字色:白
46800 color rgb(255,255,255)
46810 print "女性の生まれた日を入れて下さい" + chr$(13)
46820 '文字色:白
46830 color rgb(255,255,255)
46840 locate 1,3
46850 '文字色:白
46860 print "女性の生まれた日(1月~31月):" + buf_female_Day$
46870 color rgb(255,255,255)
46880 'locate 4,6:print ":7"
46890 'locate 9,6:print ":8"
46900 'locate 12,6:print ":9"
46910 locate 4,6
46920 '文字色:赤
46930 print ":7  :8  :9" + chr$(13)
46940 color rgb(255,255,255)
46950 locate 4,8
46960 print ":4  :5  :6" + chr$(13)
46970 color rgb(255,255,255)
46980 locate 4,10
46990 print ":1  :2  :3" + chr$(13)
47000 locate 4,12
47010 print "    :0"
47020 locate 12,12
47030 color rgb(0,0,255)
47040 print ":Ok"
47050 sp_on 4,0: sp_on 5,0:sp_on 6,0
47060 sp_on 7,0:sp_on 8,0:sp_on 9,0
47070 sp_on 10,0:sp_on 11,0:sp_on 12,0
47080 sp_on 13,0:sp_on 14,1
47090 '---------------------------------------------
47100 Danjyo_Aisyou_Input_feMale_Born_Day2:
47110 key$="":bg=0:y=0:y2=0:bg2=0
47120 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
47130 key$ = inkey$
47140 bg = strig(1)
47150 y = stick(1)
47160 y2 = stick(0)
47170 bg2 = strig(0)
47180 pause 200
47190 wend
47200 '十字キー　ここから
47210 '上の矢印　または、十字キー上
47220 if ((y = -1) or (key$ = chr$(30))) then
47230 select case No
47240 'No=-1:okのとき:初期の状態
47250 '0kボタンから３に移動
47260 '上に行く 処理
47270 case -1:
47280 No=3:sp_on 12,1:sp_on 14,0
47290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47300 '選択肢:3
47310 '3ボタンから 6に移動
47320 case 3:
47330 No=6:sp_on 12,0:sp_on 11,1
47340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47350 '6ボタンから ９に移動
47360 case 6:
47370 No=9:sp_on 10,1:sp_on 11,0
47380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47390 '6ボタンから ９に移動　ここまで
47400 '9で上を押して何もしない
47410 case 9:
47420 '何もしない
47430 No=9
47440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47450 '9で上を押しても何もしない　ここまで
47460 '上　 0ボタンから2ボタン
47470 'sp_on 6,1:1
47480 'sp_on 8,1:5
47490 'sp_on 7,1:7
47500 case 0:
47510 No=2:sp_on 13,0:sp_on 9,1:
47520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47530 '上  0ボタンから2ボタン　ここまで
47540 '2から５になる 上
47550 case 2:
47560 No=5:sp_on 8,1:sp_on 9,0:
47570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47580 case 5:
47590 No=8:sp_on 7,1:sp_on 8,0
47600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47610 case 8:
47620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47630 case 1:
47640 No=4:sp_on 5,1:sp_on 6,0
47650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47660 case 4:
47670 No=7:sp_on 4,1:sp_on 5,0
47680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47690 case 7:
47700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47710 end select
47720 endif
47730 '左３　ここまで
47740 '下の矢印
47750 '中央 2
47760 if ((y=1) or (key$ = chr$(31))) then
47770 select case No
47780 '9から６に下げる
47790 case 9:
47800 No=6:sp_on 11,1:sp_on 10,0
47810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47820 '6から３に下げる
47830 case 6:
47840 No=3:sp_on 12,1:sp_on 11,0
47850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47860 '3から０ｋに変える
47870 case 3:
47880 No=-1:sp_on 14,1:sp_on 12,0
47890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47900 'Okから下のボタンを押しても何もしない
47910 case -1:
47920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47930 case 8:
47940 No=5:sp_on 8,1:sp_on 7,0
47950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47960 case 5:
47970 No=2:sp_on 9,1:sp_on 8,0
47980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47990 case 2:
48000 No=0:sp_on 13,1:sp_on 9,0
48010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48020 case 0:
48030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48040 case 7:
48050 No=4:sp_on 5,1:sp_on 4,0
48060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48070 case 4:
48080 No=1:sp_on 6,1:sp_on 5,0
48090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48100 case 1:
48110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48120 end select
48130 endif
48140 '左へボタン 十字キー　左　or 　カーソル左
48150 if ((y2 = -1) or (key$ = chr$(29))) then
48160 select case No
48170 'Ok ボタン  Okから　左　０に行く
48180 case -1:
48190 No=0:sp_on 13,1:sp_on 14,0
48200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48210 '0 ボタン  左　何もしない
48220 case 0:
48230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48240 case 3:
48250 No=2:sp_on 9,1:sp_on 12,0:
48260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48270 case 2:
48280 No=1:sp_on 6,1:sp_on 9,0:
48290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48300 case 1:
48310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48320 case 6:
48330 No=5:sp_on 8,1:sp_on 11,0
48340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48350 case 5:
48360 No=4:sp_on 5,1:sp_on 8,0
48370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48380 case 4:
48390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48400 case 9:
48410 No=8:sp_on 7,1:sp_on 10,0
48420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48430 case 8:
48440 No=7:sp_on 4,1:sp_on 7,0
48450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48460 case 7:
48470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48480 end select
48490 endif
48500 '右  十字キー　右　or カーソル　右
48510 if ((y2 = 1) or (key$ = chr$(28))) then
48520 select case No
48530 '0ボタンからokボタン右に移動
48540 case 0:
48550 No=-1:sp_on 14,1:sp_on 13,0
48560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48570 '0ボタンからokボタン 右に移動　ここまで
48580 'OKボタンで右を押して何もしない
48590 case -1:
48600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48610 case 1:
48620 No=2:sp_on 9,1:sp_on 6,0
48630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48640 case 2:
48650 No=3:sp_on 12,1:sp_on 9,0
48660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48670 case 3:
48680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48690 case 4:
48700 No=5:sp_on 8,1:sp_on 5,0
48710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48720 case 5:
48730 No=6:sp_on 11,1:sp_on 8,0
48740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48750 case 7:
48760 No=8:sp_on 7,1:sp_on 4,0
48770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48780 case 8:
48790 No=9:sp_on 10,1:sp_on 7,0
48800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48810 case 9:
48820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48830 case 6:
48840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48850 end select
48860 'Okから右ボタンを押して何もしない ここまで
48870 endif
48880 '十字キー　ここまで
48890 '右の丸ボタン + Enter key 決定キー
48900 if ((bg=2) or (key$=chr$(13))) then
48910 select case count
48920 case 0:
48930 if (No=-1) then No=0
48940 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
48950 if (buf_female_day > 1 and buf_female_day < 10)  then
48960 buf_female_Day$ = str$(buf_female_day)
48970 'buf_month=No
48980 endif
48990 if (buf_female_day = 1)  then
49000 buf_female_Day$ = str$(buf_female_day) + "*"
49010 'c=buf_month
49020 endif
49030 locate 1,3
49040 print "                                     "
49050 color RGB(255,255,255)
49060 locate 1,3
49070 print "女性の生まれた日(1月~31月):" + buf_female_Day$
49080 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49090 case 1:
49100 count = 2:
49110 'c = val(buf_Month$)
49120 if (No = -1) then
49130 'count=0
49140 No=0
49150 day=buf_female_day
49160 buf_female_day=val(buf_female_day$)
49170 day=bu_female_day
49180 buf_female_day(1)=day
49190 '生まれた日に飛ぶ
49200 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49210 else
49220 bu_female_day = c*10 + No
49230 'if (buf_month = 1) then
49240 'buf_Month$ = str$(buf_month)
49250 'endif
49260 buf_female_day$ = str$(buf_female_day)
49270 buf_female_day(1) = buf_female_day
49280 locate 0,3
49290 print "                                           "
49300 locate 1,3
49310 color Rgb(255,255,255)
49320 print "女性の生まれた日(1月~31月):" + buf_female_Day$
49330 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49340 endif
49350 case 2:
49360 '==================================
49370 '何もしない
49380 'coun = 2
49390 '==================================
49400 'c= val(buf_Month$)
49410 'buf_month = c*10 + No
49420 'buf_Month$ = str$(buf_month)
49430 'locate 2,3
49440 'print "上司の生まれた月(1月～12月):";buf_Month$
49450 'goto Jyoushi_Input_Born_Month2:
49460 'case 3:
49470 'count=4
49480 'b=val(buf_month$)
49490 'buf_month=c*10+No
49500 'buf_Month$=str$(buf_month)
49510 'locate 2,3
49520 'print "上司の生まれた月(1月～12月):";buf_Month$
49530 'buf_month=val(buf_Month$)
49540 'year=val(buf_year$)
49550 if (No=-1) then
49560 No=0
49570 goto Danjyo_Aisyou_Input_Male_Born_Day:
49580 else
49590 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49600 endif
49610 'case 4:
49620 'bufyear=buf_year
49630 'if (No=-1) then
49640 'buf_month = val(buf_Month$)
49650 'month = buf_month
49660 'sp_on 14,0
49670 'goto Input_Born_Day:
49680 'else
49690 'goto Input_Born_Month2:
49700 'endif
49710 end select
49720 endif
49730 '左の丸ボタン　キャンセル
49740 if (bg2=2) then
49750 select case count2
49760 case 0:
49770 if (No = -1) then
49780 buf_female_day=0:buf_female_Day$="**"
49790 count=0
49800 'goto rewrite2:
49810 else
49820 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
49830 buf_female_day = 0:buf_female_Day$ = "**"
49840 locate 0,3
49850 color rgb(255,255,255)
49860 print "                                       "
49870 goto rewrite2:
49880 if (No>12) then
49890 ui_msg"値が範囲外です。"
49900 goto rewrite2:
49910 endif
49920 endif
49930 endif
49940 rewrite2:
49950 locate 2,3
49960 color rgb(255,255,255)
49970 print "                                      "
49980 locate 2,3
49990 print "女性の生まれた日(1月~31月):"+buf_female_Day$
50000 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
50010 end select
50020 'endif
50030 endif
50040 end
50050 '-------生まれた日　女性 ここまで-------------
50060 '1.男女の相性 ここまで
50070 '2.ビジネスの相性　
50080 '1.1人目のビジネスの相性　名前入力　1人目
50090 Business_Aishou_Input_1_parson:
50100 No=0:color RGB(255,255,255)
50110 cls 3:init "kb:2"
50120 gload Gazo$ + "Screen1.png",0,0,0
50130 gload Gazo$ + "downscreen.png",0,0,800
50140 play "":color rgb(255,0,0):name$ = ""
50150 locate 0,1
50160 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
50170 color rgb(255,255,255):
50180 locate 0,3
50190 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
50200 print "入れてください" + chr$(13)
50210 locate 0,15:color rgb(0,0,0)
50220 Input "1人目の名前:",name$
50230 'color rgb(0,0,0)
50240 'locate 0,13:print "                                     "
50250 'locate 0,13:print "1人目の名前を入力してエンターキー":
50260 'buffer_name$(0):1人目の名前
50270 buffer_name$(0) = name$:
50280 goto Business_Aishou_Input_2_Parson:
50290 '2.2人目のビジネスの相性 名前入力 2人目
50300 Business_Aishou_Input_2_Parson:
50310 cls 3:init "kb:2":name$ = "":No=0
50320 gload Gazo$ + "Screen1.png",0,0,0
50330 gload Gazo$ + "downscreen.png",0,0,800
50340 color rgb(255,0,0)
50350 'Title
50360 locate 0,1
50370 print "ビジネスの相性　2人目"
50380 locate 0,3
50390 color rgb(255,255,255)
50400 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
50410 print "入れてください" + chr$(13)
50420 locate 0,15:color rgb(0,0,0)
50430 Input "2人目の名前:",name$
50440 'color rgb(0,0,0)
50450 'locate 0,15:print "                                              "
50460 'locate 0,15:print "2人目の名前を入力してエンター ":
50470 '2人目
50480 '2人目の名前を入れるに代入
50490 buffer_name$(1) = name$:
50500 goto Select_jyoushi:
50510 '3.上司の選択
50520 Select_jyoushi:
50530 cls 3:gload Gazo$ + "Screen1.png",0,0,0
50540 gload Gazo$ + "downscreen.png",0,0,800
50550 init "kb:4":No=0
50560 color rgb(0,0,255)
50570 locate 1,1
50580 print "上司の選択"
50590 color rgb(255,255,255)
50600 locate 0,4:print "名前から上司の方を選んでください"
50610 locate 0,6
50620 print " :";buffer_name$(0);"が上 司";chr$(13)
50630 locate 0,8
50640 print " :";buffer_name$(1);"が上 司";chr$(13)
50650 locate 0,15:
50660 print "                                     "
50670 locate 0,15:color rgb(0,0,0)
50680 print "上司の方を選んで右の丸ボタン"
50690 sp_on 0,1:sp_on 1,0:sp_on 2,0
50700 Select_jyoushi2:
50710 'ここでNo=0をおいてはいけない
50720 y=0:key$="":bg=0:
50730 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
50740 y = stick(1)
50750 key$ = inkey$
50760 bg = strig(1)
50770 pause 5
50780 wend
50790 '1.カーソル下の処理　or 十字キーの下処理
50800 if ((key$ = chr$(31)) or (y = 1)) then
50810 select case No
50820 case 0:
50830 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
50840 case 1:
50850 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
50860 end select
50870 endif
50880 '2.カーソル上処理　or 十字キーの上の処理
50890 if ((key$ = chr$(30)) or (y = -1)) then
50900 select case No
50910 case 0:
50920 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
50930 case 1:
50940 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
50950 end select
50960 endif
50970 if ((key$ = chr$(13)) or (bg = 2)) then
50980 select case No
50990 case 0:
51000 '上司(name1)を配列に代入
51010 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
51020 case 1:
51030 '上司（name2)を配列に代入
51040 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
51050 end select
51060 endif
51070 '3.決定ボタン　Enter or 右の丸ボタン
51080 '1.誕生日入力
51090 '1-1.生まれた年を入力
51100 'Jyoushi_born_year:
51110 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
51120 '---------------------------------------------'
51130 '誕生日入力(生れた年代)
51140 Jyoushi_Input_Seireki:
51150 'buf_Jyoushi_Born_Year:上司の生まれた年代
51160 'buf_Jyoushi_Born_Day(0) = born_year
51170 cls 3:play "":count=0:count2=0
51180 init"kb:4"
51190 'No=-1:Okのとき
51200 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
51210 for i=0 to 3
51220 buf_Jyoushi_Born_Day(i)=0
51230 next i
51240 gload Gazo$ + "Screen2.png",0,0,0
51250 gload Gazo$ + "downscreen.png",0,0,800
51260 'Init"kb:2"
51270 '音声ファイル再生 2023.06.07
51280 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
51290 font 48
51300 locate 0,1
51310 '文字色：黒　 color rgb(0,0,0)
51320 color rgb(255,255,255)
51330 print "上司の生まれた年代を入れて下さい" + chr$(13)
51340 color rgb(255,255,255)
51350 locate 1,3
51360 print "上司の生まれた年代(西暦4桁):";buf_year$
51370 color rgb(255,255,255)
51380 'locate 4,6:print ":7"
51390 'locate 9,6:print ":8"
51400 'locate 12,6:print ":9"
51410 'locate 4,6
51420 'print ":7  :8  :9" + chr$(13)
51430 'color rgb(255,255,255)
51440 'locate 4,8
51450 'print ":4  :5  :6" + chr$(13)
51460 'color rgb(255,255,255)
51470 'locate 4,10
51480 'print ":1  :2  :3" + chr$(13)
51490 'locate 4,12
51500 'print "    :0"
51510 'locate 12,12
51520 'color rgb(0,0,255)
51530 'print ":Ok"
51540 sp_on 4,0: sp_on 5,0:sp_on 6,0
51550 sp_on 7,0:sp_on 8,0:sp_on 9,0
51560 sp_on 10,0:sp_on 11,0:sp_on 12,0
51570 sp_on 13,0:sp_on 14,1
51580 Jyoushi_Input_Seireki2:
51590 key$="":bg=0:y=0:y2=0:bg2=0:
51600 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
51610 key$ = inkey$
51620 bg = strig(1)
51630 y = stick(1)
51640 y2 = stick(0)
51650 bg2=strig(0)
51660 pause 200
51670 wend
51680 '十字キー　ここから
51690 '上の矢印　または、十字キー上
51700 if ((y = -1) or (key$ = chr$(30))) then
51710 select case No
51720 'No=-1:okのとき:初期の状態
51730 '0kボタンから３に移動
51740 '上に行く 処理
51750 case -1:
51760 No=3:sp_on 12,1:sp_on 14,0
51770 pause 200:goto Jyoushi_Input_Seireki2:
51780 '選択肢:3
51790 '3ボタンから 6に移動
51800 case 3:
51810 No=6:sp_on 12,0:sp_on 11,1
51820 pause 200:goto Jyoushi_Input_Seireki2:
51830 '6ボタンから ９に移動
51840 case 6:
51850 No=9:sp_on 10,1:sp_on 11,0
51860 pause 200:goto Jyoushi_Input_Seireki2:
51870 '6ボタンから ９に移動　ここまで
51880 '9で上を押して何もしない
51890 case 9:
51900 '何もしない
51910 No=9
51920 pause 200:goto Jyoushi_Input_Seireki2:
51930 '9で上を押しても何もしない　ここまで
51940 '上　 0ボタンから2ボタン
51950 'sp_on 6,1:1
51960 'sp_on 8,1:5
51970 'sp_on 7,1:7
51980 case 0:
51990 No=2:sp_on 13,0:sp_on 9,1:
52000 pause 200:goto Jyoushi_Input_Seireki2:
52010 '上  0ボタンから2ボタン　ここまで
52020 '2から５になる 上
52030 case 2:
52040 No=5:sp_on 8,1:sp_on 9,0:
52050 pause 200:goto Jyoushi_Input_Seireki2:
52060 case 5:
52070 No=8:sp_on 7,1:sp_on 8,0
52080 pause 200:goto Jyoushi_Input_Seireki2:
52090 case 8:
52100 pause 200:goto Jyoushi_Input_Seireki2:
52110 case 1:
52120 No=4:sp_on 5,1:sp_on 6,0
52130 pause 200:goto Jyoushi_Input_Seireki2:
52140 case 4:
52150 No=7:sp_on 4,1:sp_on 5,0
52160 pause 200:goto Jyoushi_Input_Seireki2:
52170 case 7:
52180 pause 200:goto Jyoushi_Input_Seireki2:
52190 end select
52200 endif
52210 '左３　ここまで
52220 '下の矢印
52230 '中央 2
52240 if ((y=1) or (key$ = chr$(31))) then
52250 select case No
52260 '9から６に下げる
52270 case 9:
52280 No=6:sp_on 11,1:sp_on 10,0
52290 pause 200:goto Jyoushi_Input_Seireki2:
52300 '6から３に下げる
52310 case 6:
52320 No=3:sp_on 12,1:sp_on 11,0
52330 pause 200:goto Jyoushi_Input_Seireki2:
52340 '3から０ｋに変える
52350 case 3:
52360 No=-1:sp_on 14,1:sp_on 12,0
52370 pause 200:goto Jyoushi_Input_Seireki2:
52380 'Okから下のボタンを押しても何もしない
52390 case -1:
52400 pause 200:goto Jyoushi_Input_Seireki2:
52410 case 8:
52420 No=5:sp_on 8,1:sp_on 7,0
52430 pause 200:goto Jyoushi_Input_Seireki2:
52440 case 5:
52450 No=2:sp_on 9,1:sp_on 8,0
52460 pause 200:goto Jyoushi_Input_Seireki2:
52470 case 2:
52480 No=0:sp_on 13,1:sp_on 9,0
52490 pause 200:goto Jyoushi_Input_Seireki2:
52500 case 0:
52510 pause 200:goto Jyoushi_Input_Seireki2:
52520 case 7:
52530 No=4:sp_on 5,1:sp_on 4,0
52540 pause 200:goto Jyoushi_Input_Seireki2:
52550 case 4:
52560 No=1:sp_on 6,1:sp_on 5,0
52570 pause 200:goto Jyoushi_Input_Seireki2:
52580 case 1:
52590 pause 200:goto Jyoushi_Input_Seireki2:
52600 end select
52610 endif
52620 '左へボタン 十字キー　左　or 　カーソル左
52630 if ((y2 = -1) or (key$ = chr$(29))) then
52640 select case No
52650 'Ok ボタン  Okから　左　０に行く
52660 case -1:
52670 No=0:sp_on 13,1:sp_on 14,0
52680 pause 200:goto Jyoushi_Input_Seireki2:
52690 '0 ボタン  左　何もしない
52700 case 0:
52710 pause 200:goto Jyoushi_Input_Seireki2:
52720 case 3:
52730 No=2:sp_on 9,1:sp_on 12,0:
52740 pause 200:goto Jyoushi_Input_Seireki2:
52750 case 2:
52760 No=1:sp_on 6,1:sp_on 9,0:
52770 pause 200:goto Jyoushi_Input_Seireki2:
52780 case 1:
52790 pause 200:goto Jyoushi_Input_Seireki2:
52800 case 6:
52810 No=5:sp_on 8,1:sp_on 11,0
52820 pause 200:goto Jyoushi_Input_Seireki2:
52830 case 5:
52840 No=4:sp_on 5,1:sp_on 8,0
52850 pause 200:goto Jyoushi_Input_Seireki2:
52860 case 4:
52870 pause 200:goto Jyoushi_Input_Seireki2:
52880 case 9:
52890 No=8:sp_on 7,1:sp_on 10,0
52900 pause 200:goto Jyoushi_Input_Seireki2:
52910 case 8:
52920 No=7:sp_on 4,1:sp_on 7,0
52930 pause 200:goto Jyoushi_Input_Seireki2:
52940 case 7:
52950 pause 200:goto Jyoushi_Input_Seireki2:
52960 end select
52970 endif
52980 '右  十字キー　右　or カーソル　右
52990 if ((y2 = 1) or (key$ = chr$(28))) then
53000 select case No
53010 '0ボタンからokボタン右に移動
53020 case 0:
53030 No=-1:sp_on 14,1:sp_on 13,0
53040 pause 200:goto Jyoushi_Input_Seireki2:
53050 '0ボタンからokボタン 右に移動　ここまで
53060 'OKボタンで右を押して何もしない
53070 case -1:
53080 pause 200:goto Jyoushi_Input_Seireki2:
53090 case 1:
53100 No=2:sp_on 9,1:sp_on 6,0
53110 pause 200:goto Jyoushi_Input_Seireki2:
53120 case 2:
53130 No=3:sp_on 12,1:sp_on 9,0
53140 pause 200:goto Jyoushi_Input_Seireki2:
53150 case 3:
53160 pause 200:goto Jyoushi_Input_Seireki2:
53170 case 4:
53180 No=5:sp_on 8,1:sp_on 5,0
53190 pause 200:goto Jyoushi_Input_Seireki2:
53200 case 5:
53210 No=6:sp_on 11,1:sp_on 8,0
53220 pause 200:goto Jyoushi_Input_Seireki2:
53230 case 7:
53240 No=8:sp_on 7,1:sp_on 4,0
53250 pause 200:goto Jyoushi_Input_Seireki2:
53260 case 8:
53270 No=9:sp_on 10,1:sp_on 7,0
53280 pause 200:goto Jyoushi_Input_Seireki2:
53290 case 9:
53300 pause 200:goto Jyoushi_Input_Seireki2:
53310 case 6:
53320 pause 200:goto Jyoushi_Input_Seireki2:
53330 end select
53340 'Okから右ボタンを押して何もしない ここまで
53350 endif
53360 '十字キー　ここまで
53370 '==============================
53380 'ここから
53390 '==============================
53400 if ((bg = 2) or (key$ = chr$(13))) then
53410 select case count
53420 case 0:
53430 count = 1
53440 if (No = -1) then
53450 count = 0:No=0
53460 buf_Jyoushi_Born_Day(0) = No
53470 'Okボタンを押したとき
53480 goto Jyoushi_Input_Seireki2:
53490 else
53500 'Okボタン以外が押されたとき
53510 if (No >= 1 and No <= 2) then
53520 buf_year$="":buf_year$ = str$(No) + "***"
53530 buf_year = No:a= No
53540 buf_Jyoushi_Born_Day(0) = No
53550 locate 1,3
53560 color rgb(255,255,255)
53570 print "上司の生まれた年代(西暦4桁):";buf_year$
53580 goto Jyoushi_Input_Seireki2:
53590 else
53600 count=0
53610 ui_msg"数字が範囲外になります。"
53620 buf_year$="":buf_year=0
53630 goto Jyoushi_Input_Seireki2:
53640 endif
53650 endif
53660 case 1:
53670 count = 2
53680 if (No = -1) then
53690 count = 1
53700 goto Jyoushi_Input_Seireki2:
53710 else
53720 buf_year = a * 10 + No
53730 b=buf_year
53740 buf_year$ = str$(buf_year) + "**"
53750 buf_Jyoushi_Born_Day(0)=buf_year
53760 locate 1,3
53770 color rgb(255,255,255)
53780 print "                                                                "
53790 locate 1,3
53800 print "上司の生まれた年代(西暦4桁):" + buf_year$
53810 'if (No = -1) then
53820 'count=1
53830 goto Jyoushi_Input_Seireki2:
53840 endif
53850 case 2:
53860 count=3
53870 if (No=-1) then
53880 count =2
53890 goto Jyoushi_Input_Seireki2:
53900 else
53910 buf_year = b * 10 + No
53920 c=buf_year
53930 buf_year$ = str$(buf_year) + "*"
53940 buf_Jyoushi_Born_Day(0) = buf_year
53950 locate 1,3
53960 color rgb(255,255,255)
53970 print "                                        "
53980 locate 1,3
53990 print "上司の生まれた年代(西暦4桁):";buf_year$
54000 goto Jyoushi_Input_Seireki2:
54010 endif
54020 case 3:
54030 count=4
54040 if (No = -1) then
54050 No=0
54060 goto Jyoushi_Input_Seireki2:
54070 else
54080 buf_year = c * 10 + No
54090 buf_year$ = str$(buf_year)
54100 buf_Jyoushi_Born_Day(0) = buf_year
54110 locate 1,3
54120 color RGB(255,255,255)
54130 print "                                      "
54140 locate 1,3
54150 print "上司の生まれた年代(西暦4桁):";buf_year$
54160 buf_year=val(buf_year$)
54170 'year=val(buf_year$)
54180 'if (No=-1) then
54190 'goto Input_Born_Month:
54200 'else
54210 goto Jyoushi_Input_Seireki2:
54220 endif
54230 case 4:
54240 'bufyear=buf_year
54250 if (No=-1) then
54260 buf_year = val(buf_year$)
54270 buf_Jyoushi_Born_Day(0)=buf_year
54280 sp_on 14,0:No=0
54290 goto Jyoushi_Input_Born_Month:
54300 else
54310 goto Jyoushi_Input_Seireki2:
54320 endif
54330 end select
54340 endif
54350 '===========================
54360 'ここまでを部下のところにコピーする.
54370 '===========================
54380 if (bg2 = 2) then
54390 select case count2
54400 case 0:
54410 if (No = -1) then
54420 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
54430 count=0
54440 locate 1,3
54450 color rgb(255,255,255)
54460 print "                                      "
54470 locate 1,3
54480 print "上司の生まれた年代（西暦4桁):" + buf_year$
54490 goto Jyoushi_Input_Seireki2:
54500 else
54510 '(buf_year=0) then
54520 buf_year=0:buf_year$="****"
54530 locate 1,3
54540 print "                                       "
54550 locate 1,3
54560 print "上司の生まれた年代(西暦4桁):"+buf_year$
54570 goto Jyoushi_Input_Seireki2:
54580 'endif
54590 endif
54600 end select
54610 endif
54620 'Input"上司の生れた年代(4桁,〜2025年):",year
54630 'if year > 2025 then goto Jyoushi_Input_Seireki:
54640 'if year = 123 then cls 3:cls 4:goto Main_Screen:
54650 '"4桁目"
54660 'bufyear4 = fix(year / 1000)
54670 '"3桁目"
54680 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
54690 '"2桁目"
54700 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
54710 '"1桁目"
54720 'bufyear1 = fix((year - ((bufyear4*
54730 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
54740 '2.生まれた月を入力
54750 Jyoushi_Input_Born_Month:
54760 cls 3:play "":count=0:count2=0
54770 'No=-1:Okのとき
54780 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
54790 for i=0 to 1
54800 buf_month(i)=0
54810 next i
54820 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
54830 gload Gazo$ + "Screen2.png",0,0,0
54840 gload Gazo$ + "downscreen.png",0,0,800
54850 'Init"kb:4"
54860 '音声ファイル再生 2023.06.07
54870 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
54880 font 48
54890 locate 0,1
54900 '文字色：黒　 color rgb(0,0,0)
54910 '文字色:白
54920 color rgb(255,255,255)
54930 print "上司の生まれた月を入れて下さい" + chr$(13)
54940 '文字色:白
54950 color rgb(255,255,255)
54960 locate 1,3
54970 '文字色:白
54980 print "上司の生まれた月(1月~12月):"+buf_Month$
54990 color rgb(255,255,255)
55000 'locate 4,6:print ":7"
55010 'locate 9,6:print ":8"
55020 'locate 12,6:print ":9"
55030 'locate 4,6
55040 '文字色:赤
55050 'print ":7  :8  :9" + chr$(13)
55060 'color rgb(255,255,255)
55070 'locate 4,8
55080 'print ":4  :5  :6" + chr$(13)
55090 'color rgb(255,255,255)
55100 'locate 4,10
55110 'print ":1  :2  :3" + chr$(13)
55120 'locate 4,12
55130 'print "    :0"
55140 'locate 12,12
55150 'color rgb(0,0,255)
55160 'print ":Ok"
55170 sp_on 4,0: sp_on 5,0:sp_on 6,0
55180 sp_on 7,0:sp_on 8,0:sp_on 9,0
55190 sp_on 10,0:sp_on 11,0:sp_on 12,0
55200 sp_on 13,0:sp_on 14,1
55210 Jyoushi_Input_Born_Month2:
55220 key$="":bg=0:y=0:y2=0:bg2=0
55230 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
55240 key$ = inkey$
55250 bg = strig(1)
55260 y = stick(1)
55270 y2 = stick(0)
55280 bg2 = strig(0)
55290 pause 200
55300 wend
55310 '十字キー　ここから
55320 '上の矢印　または、十字キー上
55330 if ((y = -1) or (key$ = chr$(30))) then
55340 select case No
55350 'No=-1:okのとき:初期の状態
55360 '0kボタンから３に移動
55370 '上に行く 処理
55380 case -1:
55390 No=3:sp_on 12,1:sp_on 14,0
55400 pause 200:goto Jyoushi_Input_Born_Month2:
55410 '選択肢:3
55420 '3ボタンから 6に移動
55430 case 3:
55440 No=6:sp_on 12,0:sp_on 11,1
55450 pause 200:goto Jyoushi_Input_Born_Month2:
55460 '6ボタンから ９に移動
55470 case 6:
55480 No=9:sp_on 10,1:sp_on 11,0
55490 pause 200:goto Jyoushi_Input_Born_Month2:
55500 '6ボタンから ９に移動　ここまで
55510 '9で上を押して何もしない
55520 case 9:
55530 '何もしない
55540 No=9
55550 pause 200:goto Jyoushi_Input_Born_Month2:
55560 '9で上を押しても何もしない　ここまで
55570 '上　 0ボタンから2ボタン
55580 'sp_on 6,1:1
55590 'sp_on 8,1:5
55600 'sp_on 7,1:7
55610 case 0:
55620 No=2:sp_on 13,0:sp_on 9,1:
55630 pause 200:goto Jyoushi_Input_Born_Month2:
55640 '上  0ボタンから2ボタン　ここまで
55650 '2から５になる 上
55660 case 2:
55670 No=5:sp_on 8,1:sp_on 9,0:
55680 pause 200:goto Jyoushi_Input_Born_Month2:
55690 case 5:
55700 No=8:sp_on 7,1:sp_on 8,0
55710 pause 200:goto Jyoushi_Input_Born_Month2:
55720 case 8:
55730 pause 200:goto Input_Born_Month2:
55740 case 1:
55750 No=4:sp_on 5,1:sp_on 6,0
55760 pause 200:goto Jyoushi_Input_Born_Month2:
55770 case 4:
55780 No=7:sp_on 4,1:sp_on 5,0
55790 pause 200:goto Jyoushi_Input_Born_Month2:
55800 case 7:
55810 pause 200:goto Input_Born_Month2:
55820 end select
55830 endif
55840 '左３　ここまで
55850 '下の矢印
55860 '中央 2
55870 if ((y=1) or (key$ = chr$(31))) then
55880 select case No
55890 '9から６に下げる
55900 case 9:
55910 No=6:sp_on 11,1:sp_on 10,0
55920 pause 200:goto Jyoushi_Input_Born_Month2:
55930 '6から３に下げる
55940 case 6:
55950 No=3:sp_on 12,1:sp_on 11,0
55960 pause 200:goto Jyoushi_Input_Born_Month2:
55970 '3から０ｋに変える
55980 case 3:
55990 No=-1:sp_on 14,1:sp_on 12,0
56000 pause 200:goto Jyoushi_Input_Born_Month2:
56010 'Okから下のボタンを押しても何もしない
56020 case -1:
56030 pause 200:goto Jyoushi_Input_Born_Month2:
56040 case 8:
56050 No=5:sp_on 8,1:sp_on 7,0
56060 pause 200:goto Jyoushi_Input_Born_Month2:
56070 case 5:
56080 No=2:sp_on 9,1:sp_on 8,0
56090 pause 200:goto Jyoushi_Input_Born_Month2:
56100 case 2:
56110 No=0:sp_on 13,1:sp_on 9,0
56120 pause 200:goto Jyoushi_Input_Born_Month2:
56130 case 0:
56140 pause 200:goto Jyoushi_Input_Born_Month2:
56150 case 7:
56160 No=4:sp_on 5,1:sp_on 4,0
56170 pause 200:goto Jyoushi_Input_Born_Month2:
56180 case 4:
56190 No=1:sp_on 6,1:sp_on 5,0
56200 pause 200:goto Jyoushi_Input_Born_Month2:
56210 case 1:
56220 pause 200:goto Jyoushi_Input_Born_Month2:
56230 end select
56240 endif
56250 '左へボタン 十字キー　左　or 　カーソル左
56260 if ((y2 = -1) or (key$ = chr$(29))) then
56270 select case No
56280 'Ok ボタン  Okから　左　０に行く
56290 case -1:
56300 No=0:sp_on 13,1:sp_on 14,0
56310 pause 200:goto Jyoushi_Input_Born_Month2:
56320 '0 ボタン  左　何もしない
56330 case 0:
56340 pause 200:goto Jyoushi_Input_Born_Month2:
56350 case 3:
56360 No=2:sp_on 9,1:sp_on 12,0:
56370 pause 200:goto Jyoushi_Input_Born_Month2:
56380 case 2:
56390 No=1:sp_on 6,1:sp_on 9,0:
56400 pause 200:goto Jyoushi_Input_Born_Month2:
56410 case 1:
56420 pause 200:goto Jyoushi_Input_Born_Month2:
56430 case 6:
56440 No=5:sp_on 8,1:sp_on 11,0
56450 pause 200:goto Jyoushi_Input_Born_Month2:
56460 case 5:
56470 No=4:sp_on 5,1:sp_on 8,0
56480 pause 200:goto Jyoushi_Input_Born_Month2:
56490 case 4:
56500 pause 200:goto Jyoushi_Input_Born_Month2:
56510 case 9:
56520 No=8:sp_on 7,1:sp_on 10,0
56530 pause 200:goto Input_Born_Month2:
56540 case 8:
56550 No=7:sp_on 4,1:sp_on 7,0
56560 pause 200:goto Jyoushi_Input_Born_Month2:
56570 case 7:
56580 pause 200:goto Jyoushi_Input_Born_Month2:
56590 end select
56600 endif
56610 '右  十字キー　右　or カーソル　右
56620 if ((y2 = 1) or (key$ = chr$(28))) then
56630 select case No
56640 '0ボタンからokボタン右に移動
56650 case 0:
56660 No=-1:sp_on 14,1:sp_on 13,0
56670 pause 200:goto Jyoushi_Input_Born_Month2:
56680 '0ボタンからokボタン 右に移動　ここまで
56690 'OKボタンで右を押して何もしない
56700 case -1:
56710 pause 200:goto Jyoushi_Input_Born_Month2:
56720 case 1:
56730 No=2:sp_on 9,1:sp_on 6,0
56740 pause 200:goto Jyoushi_Input_Born_Month2:
56750 case 2:
56760 No=3:sp_on 12,1:sp_on 9,0
56770 pause 200:goto Jyoushi_Input_Born_Month2:
56780 case 3:
56790 pause 200:goto Jyoushi_Input_Born_Month2:
56800 case 4:
56810 No=5:sp_on 8,1:sp_on 5,0
56820 pause 200:goto Jyoushi_Input_Born_Month2:
56830 case 5:
56840 No=6:sp_on 11,1:sp_on 8,0
56850 pause 200:goto Jyoushi_Input_Born_Month2:
56860 case 7:
56870 No=8:sp_on 7,1:sp_on 4,0
56880 pause 200:goto Jyoushi_Input_Born_Month2:
56890 case 8:
56900 No=9:sp_on 10,1:sp_on 7,0
56910 pause 200:goto Jyoushi_Input_Born_Month2:
56920 case 9:
56930 pause 200:goto Jyoushi_Input_Born_Month2:
56940 case 6:
56950 pause 200:goto Jyoushi_Input_Born_Month2:
56960 end select
56970 'Okから右ボタンを押して何もしない ここまで
56980 endif
56990 '十字キー　ここまで
57000 '右の丸ボタン + Enter key 決定キー
57010 if ((bg=2) or (key$=chr$(13))) then
57020 select case count
57030 case 0:
57040 if (No=-1) then No=0
57050 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
57060 if (buf_month > 1 and buf_month < 10)  then
57070 buf_Month$ = str$(buf_month)
57080 'buf_month=No
57090 endif
57100 if (buf_month = 1)  then
57110 buf_Month$ = str$(buf_month) + "*"
57120 'c=buf_month
57130 endif
57140 locate 1,3
57150 print "                                     "
57160 color RGB(255,255,255)
57170 locate 1,3
57180 print "上司の生まれた月(1月~12月):" + buf_Month$
57190 goto Jyoushi_Input_Born_Month2:
57200 case 1:
57210 count = 2:
57220 'c = val(buf_Month$)
57230 if (No = -1) then
57240 'count=0
57250 No=0
57260 month=buf_month
57270 buf_month=val(buf_Month$)
57280 month=buf_month
57290 buf_Jyoushi_Born_Day(1)=month
57300 '生まれた日に飛ぶ
57310 goto Jyoushi_Input_Born_Day:
57320 else
57330 buf_month = c*10 + No
57340 'if (buf_month = 1) then
57350 'buf_Month$ = str$(buf_month)
57360 'endif
57370 buf_Month$ = str$(buf_month)
57380 buf_Jyoushi_Born_Day(1) = buf_month
57390 locate 0,3
57400 print "                                           "
57410 locate 1,3
57420 color Rgb(255,255,255)
57430 print "上司の生まれた月(1月~12月):" + buf_Month$
57440 goto Jyoushi_Input_Born_Month2:
57450 endif
57460 case 2:
57470 '==================================
57480 '何もしない
57490 'coun = 2
57500 '==================================
57510 'c= val(buf_Month$)
57520 'buf_month = c*10 + No
57530 'buf_Month$ = str$(buf_month)
57540 'locate 2,3
57550 'print "上司の生まれた月(1月～12月):";buf_Month$
57560 'goto Jyoushi_Input_Born_Month2:
57570 'case 3:
57580 'count=4
57590 'b=val(buf_month$)
57600 'buf_month=c*10+No
57610 'buf_Month$=str$(buf_month)
57620 'locate 2,3
57630 'print "上司の生まれた月(1月～12月):";buf_Month$
57640 'buf_month=val(buf_Month$)
57650 'year=val(buf_year$)
57660 if (No=-1) then
57670 No=0
57680 goto Jyoushi_Input_Born_Day:
57690 else
57700 goto Jyoushi_Input_Born_Month2:
57710 endif
57720 'case 4:
57730 'bufyear=buf_year
57740 'if (No=-1) then
57750 'buf_month = val(buf_Month$)
57760 'month = buf_month
57770 'sp_on 14,0
57780 'goto Input_Born_Day:
57790 'else
57800 'goto Input_Born_Month2:
57810 'endif
57820 end select
57830 endif
57840 '左の丸ボタン　キャンセル
57850 if (bg2=2) then
57860 select case count2
57870 case 0:
57880 if (No = -1) then
57890 buf_month=0:buf_Month$="**"
57900 count=0
57910 'goto rewrite2:
57920 else
57930 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
57940 buf_month = 0:buf_Month$ = "**"
57950 locate 0,3
57960 color rgb(255,255,255)
57970 print "                                       "
57980 goto rewrite2:
57990 if (No>12) then
58000 ui_msg"値が範囲外です。"
58010 goto rewrite2:
58020 endif
58030 endif
58040 endif
58050 rewrite2:
58060 locate 2,3
58070 color rgb(255,255,255)
58080 print "                                      "
58090 locate 2,3
58100 print "上司の生まれた月(1月~12月):"+buf_Month$
58110 goto Jyoushi_Input_Born_Month2:
58120 end select
58130 'endif
58140 endif
58150 end
58160 'end
58170 '生れた日を入力
58180 Jyoushi_Input_Born_Day:
58190 '生まれた日入力
58200 cls 3:play ""
58210 'No=-1:Okのとき
58220 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
58230 for i=0 to 1
58240 buf_day(i)=0
58250 next i
58260 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
58270 gload Gazo$ + "Screen2.png",0,0,0
58280 gload Gazo$ + "downscreen.png",0,0,800
58290 'Init"kb:2"
58300 '音声ファイル再生 2023.06.07
58310 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
58320 font 48
58330 locate 1,1
58340 '文字色：黒　 color rgb(0,0,0)
58350 color rgb(255,255,255)
58360 print "上司の生まれた日を入れて下さい" + chr$(13)
58370 locate 1,3
58380 color rgb(255,255,255)
58390 print "                                      "
58400 locate 1,3
58410 print "上司の生まれた日(1日~31日):"+buf_Day$
58420 color rgb(255,255,255)
58430 'locate 4,6:print ":7"
58440 'locate 9,6:print ":8"
58450 'locate 12,6:print ":9"
58460 'locate 4,6
58470 'print ":7  :8  :9" + chr$(13)
58480 'color rgb(255,255,255)
58490 'locate 4,8
58500 'print ":4  :5  :6" + chr$(13)
58510 'color rgb(255,255,255)
58520 'locate 4,10
58530 'print ":1  :2  :3" + chr$(13)
58540 'locate 4,12
58550 'print "    :0"
58560 'locate 12,12
58570 'color rgb(0,0,255)
58580 'print ":Ok"
58590 sp_on 4,0: sp_on 5,0:sp_on 6,0
58600 sp_on 7,0:sp_on 8,0:sp_on 9,0
58610 sp_on 10,0:sp_on 11,0:sp_on 12,0
58620 sp_on 13,0:sp_on 14,1
58630 Jyoushi_Input_Born_Day2:
58640 key$="":bg=0:y=0:y2=0:bg2=0:
58650 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
58660 key$ = inkey$
58670 bg = strig(1)
58680 y = stick(1)
58690 y2 = stick(0)
58700 bg2 = strig(0)
58710 pause 200
58720 wend
58730 '十字キー　ここから
58740 '上の矢印　または、十字キー上
58750 if ((y = -1) or (key$ = chr$(30))) then
58760 select case No
58770 'No=-1:okのとき:初期の状態
58780 '0kボタンから３に移動
58790 '上に行く 処理
58800 case -1:
58810 No=3:sp_on 12,1:sp_on 14,0
58820 pause 200:goto Jyoushi_Input_Born_Day2:
58830 '選択肢:3
58840 '3ボタンから 6に移動
58850 case 3:
58860 No=6:sp_on 12,0:sp_on 11,1
58870 pause 200:goto Jyoushi_Input_Born_Day2:
58880 '6ボタンから ９に移動
58890 case 6:
58900 No=9:sp_on 10,1:sp_on 11,0
58910 pause 200:goto Jyoushi_Input_Born_Day2:
58920 '6ボタンから ９に移動　ここまで
58930 '9で上を押して何もしない
58940 case 9:
58950 '何もしない
58960 No=9
58970 pause 200:goto Jyoushi_Input_Born_Day2:
58980 '9で上を押しても何もしない　ここまで
58990 '上　 0ボタンから2ボタン
59000 'sp_on 6,1:1
59010 'sp_on 8,1:5
59020 'sp_on 7,1:7
59030 case 0:
59040 No=2:sp_on 13,0:sp_on 9,1:
59050 pause 200:goto Jyoushi_Input_Born_Day2:
59060 '上  0ボタンから2ボタン　ここまで
59070 '2から５になる 上
59080 case 2:
59090 No=5:sp_on 8,1:sp_on 9,0:
59100 pause 200:goto Jyoushi_Input_Born_Day2:
59110 case 5:
59120 No=8:sp_on 7,1:sp_on 8,0
59130 pause 200:goto Jyoushi_Input_Born_Day2:
59140 case 8:
59150 pause 200:goto Jyoushi_Input_Born_Day2:
59160 case 1:
59170 No=4:sp_on 5,1:sp_on 6,0
59180 pause 200:goto Jyoushi_Input_Born_Day2:
59190 case 4:
59200 No=7:sp_on 4,1:sp_on 5,0
59210 pause 200:goto Jyoushi_Input_Born_Day2:
59220 case 7:
59230 pause 200:goto Jyoushi_Input_Born_Day2:
59240 end select
59250 endif
59260 '左３　ここまで
59270 '下の矢印
59280 '中央 2
59290 if ((y=1) or (key$ = chr$(31))) then
59300 select case No
59310 '9から６に下げる
59320 case 9:
59330 No=6:sp_on 11,1:sp_on 10,0
59340 pause 200:goto Jyoushi_Input_Born_Day2:
59350 '6から３に下げる
59360 case 6:
59370 No=3:sp_on 12,1:sp_on 11,0
59380 pause 200:goto Jyoushi_Input_Born_Day2:
59390 '3から０ｋに変える
59400 case 3:
59410 No=-1:sp_on 14,1:sp_on 12,0
59420 pause 200:goto Jyoushi_Input_Born_Day2:
59430 'Okから下のボタンを押しても何もしない
59440 case -1:
59450 pause 200:goto Jyoushi_Input_Born_Day2:
59460 case 8:
59470 No=5:sp_on 8,1:sp_on 7,0
59480 pause 200:goto Jyoushi_Input_Born_Day2:
59490 case 5:
59500 No=2:sp_on 9,1:sp_on 8,0
59510 pause 200:goto Jyoushi_Input_Born_Day2:
59520 case 2:
59530 No=0:sp_on 13,1:sp_on 9,0
59540 pause 200:goto Jyoushi_Input_Born_Day2:
59550 case 0:
59560 pause 200:goto Jyoushi_Input_Born_Day2:
59570 case 7:
59580 No=4:sp_on 5,1:sp_on 4,0
59590 pause 200:goto Jyoushi_Input_Born_Day2:
59600 case 4:
59610 No=1:sp_on 6,1:sp_on 5,0
59620 pause 200:goto Jyoushi_Input_Born_Day2:
59630 case 1:
59640 pause 200:goto Jyoushi_Input_Born_Day2:
59650 end select
59660 endif
59670 '左へボタン 十字キー　左　or 　カーソル左
59680 if ((y2 = -1) or (key$ = chr$(29))) then
59690 select case No
59700 'Ok ボタン  Okから　左　０に行く
59710 case -1:
59720 No=0:sp_on 13,1:sp_on 14,0
59730 pause 200:goto Jyoushi_Input_Born_Day2:
59740 '0 ボタン  左　何もしない
59750 case 0:
59760 pause 200:goto Jyoushi_Input_Born_Day2:
59770 case 3:
59780 No=2:sp_on 9,1:sp_on 12,0:
59790 pause 200:goto Jyoushi_Input_Born_Day2:
59800 case 2:
59810 No=1:sp_on 6,1:sp_on 9,0:
59820 pause 200:goto Jyoushi_Input_Born_Day2:
59830 case 1:
59840 pause 200:goto Jyoushi_Input_Born_Day2:
59850 case 6:
59860 No=5:sp_on 8,1:sp_on 11,0
59870 pause 200:goto Jyoushi_Input_Born_Day2:
59880 case 5:
59890 No=4:sp_on 5,1:sp_on 8,0
59900 pause 200:goto Jyoushi_Input_Born_Day2:
59910 case 4:
59920 pause 200:goto Jyoushi_Input_Born_Day2:
59930 case 9:
59940 No=8:sp_on 7,1:sp_on 10,0
59950 pause 200:goto Jyoushi_Input_Born_Day2:
59960 case 8:
59970 No=7:sp_on 4,1:sp_on 7,0
59980 pause 200:goto Jyoushi_Input_Born_Day2:
59990 case 7:
60000 pause 200:goto Jyoushi_Input_Born_Day2:
60010 end select
60020 endif
60030 '右  十字キー　右　or カーソル　右
60040 if ((y2 = 1) or (key$ = chr$(28))) then
60050 select case No
60060 '0ボタンからokボタン右に移動
60070 case 0:
60080 No=-1:sp_on 14,1:sp_on 13,0
60090 pause 200:goto Jyoushi_Input_Born_Day2:
60100 '0ボタンからokボタン 右に移動　ここまで
60110 'OKボタンで右を押して何もしない
60120 case -1:
60130 pause 200:goto Jyoushi_Input_Born_Day2:
60140 case 1:
60150 No=2:sp_on 9,1:sp_on 6,0
60160 pause 200:goto Jyoushi_Input_Born_Day2:
60170 case 2:
60180 No=3:sp_on 12,1:sp_on 9,0
60190 pause 200:goto Jyoushi_Input_Born_Day2:
60200 case 3:
60210 pause 200:goto Jyoushi_Input_Born_Day2:
60220 case 4:
60230 No=5:sp_on 8,1:sp_on 5,0
60240 pause 200:goto Jyoushi_Input_Born_Day2:
60250 case 5:
60260 No=6:sp_on 11,1:sp_on 8,0
60270 pause 200:goto Jyoushi_Input_Born_Day2:
60280 case 7:
60290 No=8:sp_on 7,1:sp_on 4,0
60300 pause 200:goto Jyoushi_Input_Born_Day2:
60310 case 8:
60320 No=9:sp_on 10,1:sp_on 7,0
60330 pause 200:goto Jyoushi_Input_Born_Day2:
60340 case 9:
60350 pause 200:goto Jyoushi_Input_Born_Day2:
60360 case 6:
60370 pause 200:goto Jyoushi_Input_Born_Day2:
60380 end select
60390 'Okから右ボタンを押して何もしない ここまで
60400 endif
60410 '十字キー　ここまで
60420 '右の丸ボタンを押したとき
60430 if ((bg = 2) or (key$ = chr$(13))) then
60440 'count :決定ボタンを押した回数
60450 select case (count)
60460 '1桁目入力
60470 case 0:
60480 count = 1:
60490 if (No = -1) then
60500 '1桁目　OKでは何もしない
60510 No=c
60520 'goto Jyoushi_Input_Born_Day2:
60530 else
60540 'ok以外のボタンを押したとき
60550 buf_day = No:buf_Day$ = str$(No)
60560 buf_Jyoushi_Born_Day(2)=buf_day
60570 c=No
60580 locate 1,3
60590 print "                                      "
60600 color RGB(255,255,255)
60610 locate 1,3
60620 print "上司の生まれた日(1日~31日):" + buf_Day$
60630 endif
60640 'check2:
60650 'if (buf_day >= 1 and buf_day <= 9) then
60660 'sp_on 14,0
60670 'goto complate_jyoushi:
60680 'else
60690 'sp_on 14,0
60700 goto Jyoushi_Input_Born_Day2:
60710 'end
60720 'endif
60730 case 1:
60740 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
60750 count = 2:
60760 'locate 2,3
60770 'color RGB(255,255,255)
60780 'print "生まれた日(1日~31日):";buf_Day$
60790 'Okボタンを押したときの処理
60800 '入力値　10未満のとき
60810 'buf_day = c * 10 + No
60820 if (No = -1) then
60830 c=buf_day:No=0
60840 'buf_day = c
60850 buf_Day$ = str$(buf_day)
60860 '10以下のとき
60870 'if (buf_day < 10) then
60880 sp_on 14,0
60890 goto complate_jyoushi:
60900 'end
60910 'endif
60920 else
60930 'c=No
60940 buf_day = c * 10 + No
60950 buf_Day$ = str$(buf_day)
60960 'buf_day = c:buf_Day$=str$(buf_day)
60970 buf_Jyoushi_Born_Day(2)=buf_day
60980 locate 1,3
60990 print "                                           "
61000 locate 1,3
61010 color Rgb(255,255,255)
61020 print "上司の生まれた日(1日~31日):" + buf_Day$
61030 goto Jyoushi_Input_Born_Day2:
61040 'goto
61050 endif
61060 'endif
61070 '生まれた日　2桁目の数字　or 1桁の数字 + ok
61080 case 2:
61090 'buf_day = c * 10 + No
61100 'buf_Jyoushi_Born_Day(2)=buf_day
61110 'locate 1,3
61120 'print "                                      "
61130 'locate 1,3
61140 'locate 2,3
61150 'print "生まれた日(1日〜31日):";buf_Day
61160 'No=-1:ok ボタンを押したとき
61170 if (No = -1) then
61180 'if ((buf_day > 0) and (buf_day < 32)) then
61190 No=0
61200 sp_on 14,0
61210 goto complate_jyoushi:
61220 'end
61230 else
61240 goto Jyoushi_Input_Born_Day2:
61250 'endif
61260 'Okボタン以外を押したとき
61270 'else
61280 'c=val(buf_Day$)
61290 'buf_day = c * 10 + No
61300 'buf_Jyoushi_Born_Day(2) = buf_day
61310 'buf_Day$ = str$(buf_day)
61320 'locate 1,3
61330 'print "上司の生まれた日(1日~31日):";buf_Day$
61340 'goto Jyoushi_Input_Born_Day2:
61350 endif
61360 'case 3:
61370 'count=4
61380 'c=val(buf_day$)
61390 'buf_day=c*10+No
61400 'buf_day$=str$(buf_day)
61410 'locate 2,3
61420 'print "生まれた日を入れてください:";buf_day$
61430 'year=val(buf_year$)
61440 'if (No = -1) then
61450 'goto Jyoushi_Input_Born_Day:
61460 'sp_on 14,0:
61470 'goto complate_jyoushi:
61480 'else
61490 'goto Jyoushi_Input_Born_Month2:
61500 'endif
61510 'case 4:
61520 'bufyear=buf_year
61530 'if (No=-1) then
61540 'buf_day = val(buf_day$)
61550 'bufday = buf_day
61560 'sp_on 14,0
61570 'goto Jyoushi_Input_Born_Day2:
61580 'else
61590 'goto Jyoushi_Input_Born_Day2:
61600 'endif
61610 end select
61620 endif
61630 if (bg2=2) then
61640 select case count2
61650 case 0:
61660 if (No=-1) then
61670 buf_day=0:buf_Day$="**":No=0
61680 if (buf_day >= 1 and buf_day <= 31) then
61690 count=0
61700 buf_day=0:buf_Day$ = "**"
61710 goto rewrite_day3:
61720 else
61730 buf_day=0:buf_Day$ = "**"
61740 ui_msg"値が範囲外です"
61750 endif
61760 goto rewrite_day3:
61770 else
61780 goto rewrite_day3:
61790 endif
61800 rewrite_day3:
61810 locate 2,3
61820 color rgb(255,255,255)
61830 print "                                      "
61840 locate 2,3
61850 print "生まれた日(1日~31日):" + buf_Day$
61860 goto Jyoushi_Input_Born_Day2:
61870 end select
61880 endif
61890 '--------------------------------------------'
61900 'locate 2,0:color rgb(255,0,0)
61910 'print "上司の生まれた年代を入力"
61920 'color rgb(255,255,255)
61930 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
61940 'locate 2,4:Input "上司の生まれた年:",born_year
61950 '誕生日データーを配列に代入
61960 'buf_Jyoushi_Born_Year:上司の生まれた年代
61970 'buf_Jyoushi_Born_Day(0) = born_year
61980 'born_year = 0
61990 '---------------------------------------------'
62000 'goto Jyoushi_born_month:
62010 '1-2.生まれた月を入力
62020 'Jyoushi_born_month:
62030 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62040 'init "kb:4"
62050 'locate 2,1:
62060 'color rgb(255,0,0)
62070 'print "上司の生まれた月入力"
62080 'color rgb(255,255,255)
62090 'locate 2,4:print "生まれた月を入力してください"
62100 'locate 2,5
62110 'Input "上司の生まれ月:",born_month
62120 'buf_Jyoushi_Born_Day(1) = born_month
62130 'born_month = 0
62140 'goto Jyoushi_born_day:
62150 'buf_Jyoushi_Born_day
62160 '1-3.生まれた日を入力
62170 'Jyoushi_born_day:
62180 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62190 'init "kb:4"
62200 'locate 2,1:color rgb(255,0,0)
62210 'print "上司の生まれた日　入力"
62220 'locate 2,4:color rgb(255,255,255)
62230 'print "生まれた日を入力してください"
62240 'locate 2,5
62250 'Input "上司の生まれた日:",born_day
62260 'buf_Jyoushi_Born_Day(2) = born_day
62270 'born_day = 0
62280 'goto buka_born_year:
62290 '2.部下の誕生日入力
62300 '2-1.生まれた年を入力
62310 'buka_born_year:
62320 'cls 3:gload Gazo$+"Screen1.png",0,0,0
62330 'init "kb:2"
62340 'locate 1,1:color rgb(255,0,0)
62350 'print "部下の生まれた年代入力"
62360 'locate 0,4:color rgb(255,255,255)
62370 'print "部下の生まれた年（西暦4桁）を入れてください"
62380 'locate 0,5
62390 'Input "部下の生まれた年(西暦4桁):",born_year
62400 'buf_Buka_Born_Day(0) = born_year
62410 'born_year = 0
62420 '2-2.生まれた月を入力
62430 'buka_born_month:
62440 'cls 3:gload Gazo$+"Screen1.png",0,0,0
62450 'init "kb:2"
62460 'locate 2,1:color rgb(255,0,0)
62470 'print "部下の生まれた月 入力"
62480 'locate 2,4:color rgb(255,255,255)
62490 'print "部下の生まれた月を入力してください"
62500 'locate 2,5:Input "部下の生まれた月:",born_month
62510 'buf_Buka_Born_Day(1) = born_month
62520 '2-3.生まれた日を入力
62530 'buka_born_day:
62540 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62550 'init "kb:2"
62560 'locate 2,1:color rgb(255,0,0)
62570 'print "生まれた日入力"
62580 'color rgb(255,255,255)
62590 'locate 2,4:print "生まれた日を入力してください"
62600 'locate 2,5:Input "部下の生まれた日:",born_day
62610 'buf_Buka_Born_Day(2) = born_day
62620 'born_day=0:goto Result_Business_Aisyou:
62630 '--------------------------------------------'
62640 complate_jyoushi:
62650 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
62660 buf_Jyoushi = Kabara_Num(a,b,c)
62670 a_1=buf_Jyoushi
62680 goto Buka_Input_Seireki:
62690 '--------------------------------------------'
62700 '部下'
62710 '1.部下の生まれた年代'
62720 Buka_Input_Seireki:
62730 cls 3:play "":count=0:count2=0
62740 init"kb:4"
62750 'No=-1:Okのとき
62760 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
62770 for i=0 to 3
62780 buf_Buka_Born_Day(i)=0
62790 next i
62800 gload Gazo$ + "Screen2.png",0,0,0
62810 gload Gazo$ + "downscreen.png",0,0,800
62820 'Init"kb:2"
62830 '音声ファイル再生 2023.06.07
62840 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
62850 font 48
62860 locate 0,1
62870 '文字色：黒　 color rgb(0,0,0)
62880 color rgb(255,255,255)
62890 print "部下の生まれた年代を入れて下さい" + chr$(13)
62900 color rgb(255,255,255)
62910 locate 1,3
62920 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
62930 color rgb(255,255,255)
62940 'locate 4,6:print ":7"
62950 'locate 9,6:print ":8"
62960 'locate 12,6:print ":9"
62970 'locate 4,6
62980 'print ":7  :8  :9" + chr$(13)
62990 'color rgb(255,255,255)
63000 'locate 4,8
63010 'print ":4  :5  :6" + chr$(13)
63020 'color rgb(255,255,255)
63030 'locate 4,10
63040 'print ":1  :2  :3" + chr$(13)
63050 'locate 4,12
63060 'print "    :0"
63070 'locate 12,12
63080 'color rgb(0,0,255)
63090 'print ":Ok"
63100 sp_on 4,0: sp_on 5,0:sp_on 6,0
63110 sp_on 7,0:sp_on 8,0:sp_on 9,0
63120 sp_on 10,0:sp_on 11,0:sp_on 12,0
63130 sp_on 13,0:sp_on 14,1
63140 Buka_Input_Seireki2:
63150 key$="":bg=0:y=0:y2=0:bg2=0:
63160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63170 key$ = inkey$
63180 bg = strig(1)
63190 y = stick(1)
63200 y2 = stick(0)
63210 bg2=strig(0)
63220 pause 200
63230 wend
63240 '十字キー　ここから
63250 '上の矢印　または、十字キー上
63260 if ((y = -1) or (key$ = chr$(30))) then
63270 select case No
63280 'No=-1:okのとき:初期の状態
63290 '0kボタンから３に移動
63300 '上に行く 処理
63310 case -1:
63320 No=3:sp_on 12,1:sp_on 14,0
63330 pause 200:goto Buka_Input_Seireki2:
63340 '選択肢:3
63350 '3ボタンから 6に移動
63360 case 3:
63370 No=6:sp_on 12,0:sp_on 11,1
63380 pause 200:goto Buka_Input_Seireki2:
63390 '6ボタンから ９に移動
63400 case 6:
63410 No=9:sp_on 10,1:sp_on 11,0
63420 pause 200:goto Buka_Input_Seireki2:
63430 '6ボタンから ９に移動　ここまで
63440 '9で上を押して何もしない
63450 case 9:
63460 '何もしない
63470 No=9
63480 pause 200:goto Buka_Input_Seireki2:
63490 '9で上を押しても何もしない　ここまで
63500 '上　 0ボタンから2ボタン
63510 'sp_on 6,1:1
63520 'sp_on 8,1:5
63530 'sp_on 7,1:7
63540 case 0:
63550 No=2:sp_on 13,0:sp_on 9,1:
63560 pause 200:goto Buka_Input_Seireki2:
63570 '上  0ボタンから2ボタン　ここまで
63580 '2から５になる 上
63590 case 2:
63600 No=5:sp_on 8,1:sp_on 9,0:
63610 pause 200:goto Buka_Input_Seireki2:
63620 case 5:
63630 No=8:sp_on 7,1:sp_on 8,0
63640 pause 200:goto Buka_Input_Seireki2:
63650 case 8:
63660 pause 200:goto Buka_Input_Seireki2:
63670 case 1:
63680 No=4:sp_on 5,1:sp_on 6,0
63690 pause 200:goto Buka_Input_Seireki2:
63700 case 4:
63710 No=7:sp_on 4,1:sp_on 5,0
63720 pause 200:goto Buka_Input_Seireki2:
63730 case 7:
63740 pause 200:goto Buka_Input_Seireki2:
63750 end select
63760 endif
63770 '左３　ここまで
63780 '下の矢印
63790 '中央 2
63800 if ((y=1) or (key$ = chr$(31))) then
63810 select case No
63820 '9から６に下げる
63830 case 9:
63840 No=6:sp_on 11,1:sp_on 10,0
63850 pause 200:goto Buka_Input_Seireki2:
63860 '6から３に下げる
63870 case 6:
63880 No=3:sp_on 12,1:sp_on 11,0
63890 pause 200:goto Buka_Input_Seireki2:
63900 '3から０ｋに変える
63910 case 3:
63920 No=-1:sp_on 14,1:sp_on 12,0
63930 pause 200:goto Buka_Input_Seireki2:
63940 'Okから下のボタンを押しても何もしない
63950 case -1:
63960 pause 200:goto Buka_Input_Seireki2:
63970 case 8:
63980 No=5:sp_on 8,1:sp_on 7,0
63990 pause 200:goto Buka_Input_Seireki2:
64000 case 5:
64010 No=2:sp_on 9,1:sp_on 8,0
64020 pause 200:goto Buka_Input_Seireki2:
64030 case 2:
64040 No=0:sp_on 13,1:sp_on 9,0
64050 pause 200:goto Buka_Input_Seireki2:
64060 case 0:
64070 pause 200:goto Buka_Input_Seireki2:
64080 case 7:
64090 No=4:sp_on 5,1:sp_on 4,0
64100 pause 200:goto Buka_Input_Seireki2:
64110 case 4:
64120 No=1:sp_on 6,1:sp_on 5,0
64130 pause 200:goto Buka_Input_Seireki2:
64140 case 1:
64150 pause 200:goto Buka_Input_Seireki2:
64160 end select
64170 endif
64180 '左へボタン 十字キー　左　or 　カーソル左
64190 if ((y2 = -1) or (key$ = chr$(29))) then
64200 select case No
64210 'Ok ボタン  Okから　左　０に行く
64220 case -1:
64230 No=0:sp_on 13,1:sp_on 14,0
64240 pause 200:goto Buka_Input_Seireki2:
64250 '0 ボタン  左　何もしない
64260 case 0:
64270 pause 200:goto Buka_Input_Seireki2:
64280 case 3:
64290 No=2:sp_on 9,1:sp_on 12,0:
64300 pause 200:goto Buka_Input_Seireki2:
64310 case 2:
64320 No=1:sp_on 6,1:sp_on 9,0:
64330 pause 200:goto Buka_Input_Seireki2:
64340 case 1:
64350 pause 200:goto Buka_Input_Seireki2:
64360 case 6:
64370 No=5:sp_on 8,1:sp_on 11,0
64380 pause 200:goto Buka_Input_Seireki2:
64390 case 5:
64400 No=4:sp_on 5,1:sp_on 8,0
64410 pause 200:goto Buka_Input_Seireki2:
64420 case 4:
64430 pause 200:goto Buka_Input_Seireki2:
64440 case 9:
64450 No=8:sp_on 7,1:sp_on 10,0
64460 pause 200:goto Buka_Input_Seireki2:
64470 case 8:
64480 No=7:sp_on 4,1:sp_on 7,0
64490 pause 200:goto Buka_Input_Seireki2:
64500 case 7:
64510 pause 200:goto Buka_Input_Seireki2:
64520 end select
64530 endif
64540 '右  十字キー　右　or カーソル　右
64550 if ((y2 = 1) or (key$ = chr$(28))) then
64560 select case No
64570 '0ボタンからokボタン右に移動
64580 case 0:
64590 No=-1:sp_on 14,1:sp_on 13,0
64600 pause 200:goto Buka_Input_Seireki2:
64610 '0ボタンからokボタン 右に移動　ここまで
64620 'OKボタンで右を押して何もしない
64630 case -1:
64640 pause 200:goto Buka_Input_Seireki2:
64650 case 1:
64660 No=2:sp_on 9,1:sp_on 6,0
64670 pause 200:goto Buka_Input_Seireki2:
64680 case 2:
64690 No=3:sp_on 12,1:sp_on 9,0
64700 pause 200:goto Buka_Input_Seireki2:
64710 case 3:
64720 pause 200:goto Buka_Input_Seireki2:
64730 case 4:
64740 No=5:sp_on 8,1:sp_on 5,0
64750 pause 200:goto Buka_Input_Seireki2:
64760 case 5:
64770 No=6:sp_on 11,1:sp_on 8,0
64780 pause 200:goto Buka_Input_Seireki2:
64790 case 7:
64800 No=8:sp_on 7,1:sp_on 4,0
64810 pause 200:goto Buka_Input_Seireki2:
64820 case 8:
64830 No=9:sp_on 10,1:sp_on 7,0
64840 pause 200:goto Buka_Input_Seireki2:
64850 case 9:
64860 pause 200:goto Buka_Input_Seireki2:
64870 case 6:
64880 pause 200:goto Buka_Input_Seireki2:
64890 end select
64900 'Okから右ボタンを押して何もしない ここまで
64910 endif
64920 '十字キー　ここまで
64930 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
64940 'ここからコメント
64950 '右の丸ボタン決定を押した数:count
64960 'if ((bg=2) or (key$=chr$(13))) then
64970 'select case count
64980 'case 0:
64990 'count=1
65000 'if (No = -1) then
65010 'count = 0
65020 'Okボタンを押したとき
65030 '
65040 'goto Buka_Input_Seireki2:
65050 'else
65060 'Okボタン以外が押されたとき
65070 'if (No >= 1 and No <= 2) then
65080 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
65090 'buf_buka_year = No
65100 'buf_Buka_Born_Day(0) = bufyear
65110 'locate 2,3
65120 'color rgb(255,255,255)
65130 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65140 'goto Buka_Input_Seireki2:
65150 'else
65160 'count=0
65170 'ui_msg"数字が範囲外になります。"
65180 'buf_buka_year$ ="":buf_buka_year=0
65190 'goto Buka_Input_Seireki2:
65200 'endif
65210 'endif
65220 'case 1:
65230 'count = 2
65240 'if (No = -1) then
65250 'count = 1
65260 'goto Buka_Input_Seireki2:
65270 'else
65280 'b = val(buf_buka_year$)
65290 'buf_buka_year = b * 10 + No
65300 'buf_buka_year$ = str$(buf_buka_year)
65310 'buf_Buka_Born_Day(0) = bufyear
65320 'locate 1,3
65330 'color rgb(255,255,255)
65340 'print "                                                                "
65350 'locate 1,3
65360 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65370 'if (No = -1) then
65380 'count=1
65390 'goto Buka_Input_Seireki2:
65400 'endif
65410 'case 2:
65420 'count = 3
65430 'if (No = -1) then
65440 'count = 2
65450 'buf_Buka_Born_Day(0)=bufyear
65460 'goto Buka_Input_Seireki2:
65470 'else
65480 'b = val(buf_buka_year$)
65490 'buf_buka_year = b*10 + No
65500 'buf_buka_year$ = str$(buf_buka_year)
65510 'locate 1,3
65520 'color rgb(255,255,255)
65530 'print "                                        "
65540 'locate 1,3
65550 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
65560 'goto Buka_Input_Seireki2:
65570 'endif
65580 'case 3:
65590 'count=4
65600 'if (No = -1) then
65610 'count=3
65620 'goto Buka_Input_Seireki2:
65630 'else
65640 'b = buf_buka_year
65650 'buf_buka_year = b * 10 + No
65660 'buf_buka_year$=str$(buf_buka_year)
65670 'locate 1,3
65680 'color RGB(255,255,255)
65690 'print "                                      "
65700 'locate 1,3
65710 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65720 'buf_year=val(buf_year$)
65730 'year=val(buf_year$)
65740 'if (No=-1) then
65750 'goto Input_Born_Month:
65760 'else
65770 'goto Buka_Input_Seireki2:
65780 'endif
65790 'case 4:
65800 'bufyear=buf_year
65810 'if (No=-1) then
65820 'buf_year = val(buf_year$)
65830 'bufyear = buf_year
65840 'sp_on 14,0
65850 'goto Buka_Input_Born_Month:
65860 'else
65870 'goto Buka_Input_Seireki2:
65880 'endif
65890 'end select
65900 'endif
65910 'if (bg2 = 2) then
65920 'select case count2
65930 'case 0:
65940 'if (No = -1) then
65950 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
65960 'count=0
65970 'locate 1,3
65980 'color rgb(255,255,255)
65990 'print "                                      "
66000 'locate 1,3
66010 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
66020 'goto Buka_Input_Seireki2:
66030 'else
66040 '(buf_year=0) then
66050 'buf_buka_year=0:buf_buka_year$="****"
66060 'goto Buka_Input_Seireki2:
66070 'endif
66080 'endif
66090 'end select
66100 'endif
66110 'end
66120 'ここまでコメント
66130 '================================================================
66140 if ((bg=2) or (key$=chr$(13))) then
66150 select case count
66160 case 0:
66170 count = 1
66180 if (No=-1) then
66190 count = 0
66200 buf_Buka_Born_Day(0) = No
66210 'Okボタンを押したとき
66220 goto Buka_Input_Seireki2:
66230 else
66240 'Okボタン以外が押されたとき
66250 if (No>=1 and No<=2) then
66260 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
66270 buf_buka_year = No
66280 buf_Buka_Born_Day(0) = No
66290 locate 1,3
66300 color rgb(255,255,255)
66310 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66320 goto Buka_Input_Seireki2:
66330 else
66340 count=0
66350 ui_msg"数字が範囲外になります。"
66360 buf_buka_year$="":buf_buka_year=0
66370 goto Buka_Input_Seireki2:
66380 endif
66390 endif
66400 case 1:
66410 count = 2
66420 if (No = -1) then
66430 count = 1
66440 goto Buka_Input_Seireki2:
66450 else
66460 'b = val(buf_buka_year$)
66470 buf_buka_year = a * 10 + No
66480 b=buf_buka_year
66490 buf_buka_year$ = str$(buf_buka_year)+"**"
66500 buf_Buka_Born_Day(0)=buf_buka_year
66510 locate 1,3
66520 color rgb(255,255,255)
66530 print "                                                                "
66540 locate 1,3
66550 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
66560 'if (No = -1) then
66570 'count=1
66580 goto Buka_Input_Seireki2:
66590 endif
66600 case 2:
66610 count=3
66620 if (No=-1) then
66630 count =2:No=0
66640 goto Buka_Input_Seireki2:
66650 else
66660 'b = val(buf_buka_year$)
66670 buf_buka_year = b * 10 + No
66680 c = buf_buka_year
66690 buf_buka_year$ = str$(buf_buka_year) + "*"
66700 buf_Buka_Born_Day(0) = buf_buka_year
66710 locate 1,3
66720 color rgb(255,255,255)
66730 print "                                        "
66740 locate 1,3
66750 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66760 goto Buka_Input_Seireki2:
66770 endif
66780 case 3:
66790 count=4
66800 if (No = -1) then
66810 'count=3:No=0
66820 goto Buka_Input_Seireki2:
66830 else
66840 'b = val(buf_buka_year$)
66850 buf_buka_year=c * 10 + No
66860 buf_buka_year$=str$(buf_buka_year)
66870 buf_Buka_Born_Day(0)=buf_buka_year
66880 locate 1,3
66890 color RGB(255,255,255)
66900 print "                                      "
66910 locate 1,3
66920 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66930 buf_buka_year=val(buf_buka_year$)
66940 'year=val(buf_year$)
66950 'if (No=-1) then
66960 'goto Input_Born_Month:
66970 'else
66980 goto Buka_Input_Seireki2:
66990 endif
67000 case 4:
67010 'bufyear=buf_year
67020 if (No = -1) then
67030 buf_buka_year = val(buf_buka_year$)
67040 buf_Buka_Born_Day(0)=buf_buka_year
67050 sp_on 14,0
67060 goto Buka_Input_Born_Month:
67070 else
67080 goto Buka_Input_Seireki2:
67090 endif
67100 end select
67110 endif
67120 '================================================================
67130 'ここにコピーする。
67140 '================================================================
67150 'Input"部下の生れた年代(4桁,〜2025年):",year
67160 'if year > 2025 then goto Jyoushi_Input_Seireki:
67170 'if year = 123 then cls 3:cls 4:goto Main_Screen:
67180 '"4桁目"
67190 'bufyear4 = fix(year / 1000)
67200 '"3桁目"
67210 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
67220 '"2桁目"
67230 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
67240 '"1桁目"
67250 'bufyear1 = fix((year - ((bufyear4*
67260 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
67270 '1.部下の生まれた年代'
67280 '2.部下の生まれた月'
67290 Buka_Input_Born_Month:
67300 cls 3:play "":count=0:count2=0
67310 'No=-1:Okのとき
67320 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
67330 for i=0 to 1
67340 buf_month(i)=0
67350 next i
67360 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
67370 gload Gazo$ + "Screen2.png",0,0,0
67380 gload Gazo$ + "downscreen.png",0,0,800
67390 'Init"kb:4"
67400 '音声ファイル再生 2023.06.07
67410 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
67420 font 48
67430 locate 0,1
67440 '文字色：黒　 color rgb(0,0,0)
67450 '文字色:白
67460 color rgb(255,255,255)
67470 print "部下の生まれた月を入れて下さい" + chr$(13)
67480 '文字色:白
67490 color rgb(255,255,255)
67500 locate 1,3
67510 '文字色:白
67520 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
67530 color rgb(255,255,255)
67540 'locate 4,6:print ":7"
67550 'locate 9,6:print ":8"
67560 'locate 12,6:print ":9"
67570 'locate 4,6
67580 '文字色:赤
67590 'print ":7  :8  :9" + chr$(13)
67600 'color rgb(255,255,255)
67610 'locate 4,8
67620 'print ":4  :5  :6" + chr$(13)
67630 'color rgb(255,255,255)
67640 'locate 4,10
67650 'print ":1  :2  :3" + chr$(13)
67660 'locate 4,12
67670 'print "    :0"
67680 'locate 12,12
67690 'color rgb(0,0,255)
67700 'print ":Ok"
67710 sp_on 4,0: sp_on 5,0:sp_on 6,0
67720 sp_on 7,0:sp_on 8,0:sp_on 9,0
67730 sp_on 10,0:sp_on 11,0:sp_on 12,0
67740 sp_on 13,0:sp_on 14,1
67750 Buka_Input_Born_Month2:
67760 key$="":bg=0:y=0:y2=0:bg2=0
67770 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
67780 key$ = inkey$
67790 bg = strig(1)
67800 y = stick(1)
67810 y2 = stick(0)
67820 bg2 = strig(0)
67830 pause 200
67840 wend
67850 '十字キー　ここから
67860 '上の矢印　または、十字キー上
67870 if ((y = -1) or (key$ = chr$(30))) then
67880 select case No
67890 'No=-1:okのとき:初期の状態
67900 '0kボタンから３に移動
67910 '上に行く 処理
67920 case -1:
67930 No=3:sp_on 12,1:sp_on 14,0
67940 pause 200:goto Buka_Input_Born_Month2:
67950 '選択肢:3
67960 '3ボタンから 6に移動
67970 case 3:
67980 No=6:sp_on 12,0:sp_on 11,1
67990 pause 200:goto Buka_Input_Born_Month2:
68000 '6ボタンから ９に移動
68010 case 6:
68020 No=9:sp_on 10,1:sp_on 11,0
68030 pause 200:goto Buka_Input_Born_Month2:
68040 '6ボタンから ９に移動　ここまで
68050 '9で上を押して何もしない
68060 case 9:
68070 '何もしない
68080 No=9
68090 pause 200:goto Buka_Input_Born_Month2:
68100 '9で上を押しても何もしない　ここまで
68110 '上　 0ボタンから2ボタン
68120 'sp_on 6,1:1
68130 'sp_on 8,1:5
68140 'sp_on 7,1:7
68150 case 0:
68160 No=2:sp_on 13,0:sp_on 9,1:
68170 pause 200:goto Buka_Input_Born_Month2:
68180 '上  0ボタンから2ボタン　ここまで
68190 '2から５になる 上
68200 case 2:
68210 No=5:sp_on 8,1:sp_on 9,0:
68220 pause 200:goto Buka_Input_Born_Month2:
68230 case 5:
68240 No=8:sp_on 7,1:sp_on 8,0
68250 pause 200:goto Buka_Input_Born_Month2:
68260 case 8:
68270 pause 200:goto Buka_Input_Born_Month2:
68280 case 1:
68290 No=4:sp_on 5,1:sp_on 6,0
68300 pause 200:goto Buka_Input_Born_Month2:
68310 case 4:
68320 No=7:sp_on 4,1:sp_on 5,0
68330 pause 200:goto Buka_Input_Born_Month2:
68340 case 7:
68350 pause 200:goto Buka_Input_Born_Month2:
68360 end select
68370 endif
68380 '左３　ここまで
68390 '下の矢印
68400 '中央 2
68410 if ((y=1) or (key$ = chr$(31))) then
68420 select case No
68430 '9から６に下げる
68440 case 9:
68450 No=6:sp_on 11,1:sp_on 10,0
68460 pause 200:goto Buka_Input_Born_Month2:
68470 '6から３に下げる
68480 case 6:
68490 No=3:sp_on 12,1:sp_on 11,0
68500 pause 200:goto Buka_Input_Born_Month2:
68510 '3から０ｋに変える
68520 case 3:
68530 No=-1:sp_on 14,1:sp_on 12,0
68540 pause 200:goto Buka_Input_Born_Month2:
68550 'Okから下のボタンを押しても何もしない
68560 case -1:
68570 pause 200:goto Buka_Input_Born_Month2:
68580 case 8:
68590 No=5:sp_on 8,1:sp_on 7,0
68600 pause 200:goto Buka_Input_Born_Month2:
68610 case 5:
68620 No=2:sp_on 9,1:sp_on 8,0
68630 pause 200:goto Buka_Input_Born_Month2:
68640 case 2:
68650 No=0:sp_on 13,1:sp_on 9,0
68660 pause 200:goto Buka_Input_Born_Month2:
68670 case 0:
68680 pause 200:goto Buka_Input_Born_Month2:
68690 case 7:
68700 No=4:sp_on 5,1:sp_on 4,0
68710 pause 200:goto Buka_Input_Born_Month2:
68720 case 4:
68730 No=1:sp_on 6,1:sp_on 5,0
68740 pause 200:goto Buka_Input_Born_Month2:
68750 case 1:
68760 pause 200:goto Buka_Input_Born_Month2:
68770 end select
68780 endif
68790 '左へボタン 十字キー　左　or 　カーソル左
68800 if ((y2 = -1) or (key$ = chr$(29))) then
68810 select case No
68820 'Ok ボタン  Okから　左　０に行く
68830 case -1:
68840 No=0:sp_on 13,1:sp_on 14,0
68850 pause 200:goto Buka_Input_Born_Month2:
68860 '0 ボタン  左　何もしない
68870 case 0:
68880 pause 200:goto Buka_Input_Born_Month2:
68890 case 3:
68900 No=2:sp_on 9,1:sp_on 12,0:
68910 pause 200:goto Buka_Input_Born_Month2:
68920 case 2:
68930 No=1:sp_on 6,1:sp_on 9,0:
68940 pause 200:goto Buka_Input_Born_Month2:
68950 case 1:
68960 pause 200:goto Buka_Input_Born_Month2:
68970 case 6:
68980 No=5:sp_on 8,1:sp_on 11,0
68990 pause 200:goto Buka_Input_Born_Month2:
69000 case 5:
69010 No=4:sp_on 5,1:sp_on 8,0
69020 pause 200:goto Buka_Input_Born_Month2:
69030 case 4:
69040 pause 200:goto Buka_Input_Born_Month2:
69050 case 9:
69060 No=8:sp_on 7,1:sp_on 10,0
69070 pause 200:goto Buka_Input_Born_Month2:
69080 case 8:
69090 No=7:sp_on 4,1:sp_on 7,0
69100 pause 200:goto Buka_Input_Born_Month2:
69110 case 7:
69120 pause 200:goto Buka_Input_Born_Month2:
69130 end select
69140 endif
69150 '右  十字キー　右　or カーソル　右
69160 if ((y2 = 1) or (key$ = chr$(28))) then
69170 select case No
69180 '0ボタンからokボタン右に移動
69190 case 0:
69200 No=-1:sp_on 14,1:sp_on 13,0
69210 pause 200:goto Buka_Input_Born_Month2:
69220 '0ボタンからokボタン 右に移動　ここまで
69230 'OKボタンで右を押して何もしない
69240 case -1:
69250 pause 200:goto Buka_Input_Born_Month2:
69260 case 1:
69270 No=2:sp_on 9,1:sp_on 6,0
69280 pause 200:goto Buka_Input_Born_Month2:
69290 case 2:
69300 No=3:sp_on 12,1:sp_on 9,0
69310 pause 200:goto Buka_Input_Born_Month2:
69320 case 3:
69330 pause 200:goto Buka_Input_Born_Month2:
69340 case 4:
69350 No=5:sp_on 8,1:sp_on 5,0
69360 pause 200:goto Buka_Input_Born_Month2:
69370 case 5:
69380 No=6:sp_on 11,1:sp_on 8,0
69390 pause 200:goto Buka_Input_Born_Month2:
69400 case 7:
69410 No=8:sp_on 7,1:sp_on 4,0
69420 pause 200:goto Buka_Input_Born_Month2:
69430 case 8:
69440 No=9:sp_on 10,1:sp_on 7,0
69450 pause 200:goto Buka_Input_Born_Month2:
69460 case 9:
69470 pause 200:goto Buka_Input_Born_Month2:
69480 case 6:
69490 pause 200:goto Buka_Input_Born_Month2:
69500 end select
69510 'Okから右ボタンを押して何もしない ここまで
69520 endif
69530 '十字キー　ここまで
69540 '右の丸ボタン　決定キー
69550 if ((bg=2) or (key$=chr$(13))) then
69560 select case count
69570 case 0:
69580 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
69590 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
69600 locate 1,3
69610 color RGB(255,255,255)
69620 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
69630 goto Buka_Input_Born_Month2:
69640 case 1:
69650 count = 2:buf_buka_month=a*10+No
69660 if (No = -1) then
69670 'count=0
69680 month=buf_buka_month
69690 buf_buka_month=val(buf_buka_Month$)
69700 month=buf_buka_month
69710 '生まれた日に飛ぶ
69720 goto Buka_Input_Born_Day:
69730 else
69740 buf_buka_month = a * 10 + No
69750 buf_buka_Month$ = str$(buf_buka_month)
69760 buf_Buka_Born_Day(1) = buf_buka_month
69770 locate 1,3
69780 color Rgb(255,255,255)
69790 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
69800 goto Buka_Input_Born_Month2:
69810 endif
69820 case 2:
69830 count=3
69840 'c= val(buf_Month$)
69850 'buf_month = c*10 + No
69860 'buf_Month$ = str$(buf_month)
69870 'locate 2,3
69880 'print "部下の生まれた月(1月～12月):";buf_Month$
69890 'goto Buka_Input_Born_Month2:
69900 'case 3:
69910 'count=4
69920 'b=val(buf_month$)
69930 'buf_month=c*10+No
69940 'buf_Month$=str$(buf_month)
69950 'locate 2,3
69960 'print "部下の生まれた月(1月～12月):";buf_Month$
69970 'buf_month=val(buf_Month$)
69980 'year=val(buf_year$)
69990 if (No=-1) then
70000 goto Buka_Input_Born_Day:
70010 else
70020 goto Input_Born_Month2:
70030 endif
70040 'case 4:
70050 'bufyear=buf_year
70060 'if (No=-1) then
70070 'buf_month = val(buf_Month$)
70080 'month = buf_month
70090 'sp_on 14,0
70100 'goto Input_Born_Day:
70110 'else
70120 'goto Input_Born_Month2:
70130 'endif
70140 end select
70150 endif
70160 '左の丸ボタン　キャンセル
70170 if (bg2=2) then
70180 select case count2
70190 case 0:
70200 if (No = -1) then
70210 buf_buka_month=0:buf_buka_Month$="**"
70220 count=0
70230 goto rewrite2:
70240 else
70250 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
70260 buf_month=0:buf_Month$="**"
70270 locate 2,3
70280 color rgb(255,255,255)
70290 print "                                       "
70300 goto rewrite2:
70310 if (No>12) then
70320 ui_msg"値が範囲外です。"
70330 goto rewrite2:
70340 endif
70350 endif
70360 endif
70370 rewrite2:
70380 locate 2,3
70390 color rgb(255,255,255)
70400 print "                                      "
70410 locate 2,3
70420 print "部下の生まれた月(1月~12月):";buf_buka_Month$
70430 goto Buka_Input_Born_Month2:
70440 end select
70450 'endif
70460 endif
70470 end
70480 '2.部下の生まれた月'
70490 '3.部下の生まれた日'
70500 '生れた日を入力
70510 Buka_Input_Born_Day:
70520 '生まれた日入力
70530 cls 3:play ""
70540 'No=-1:Okのとき
70550 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
70560 for i=0 to 1
70570 buf_day(i)=0
70580 next i
70590 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
70600 gload Gazo$ + "Screen2.png",0,0,0
70610 gload Gazo$ + "downscreen.png",0,0,800
70620 'Init"kb:2"
70630 '音声ファイル再生 2023.06.07
70640 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
70650 font 48
70660 locate 0,1
70670 '文字色：黒　 color rgb(0,0,0)
70680 color rgb(255,255,255)
70690 print "部下の生まれた日を入れて下さい" + chr$(13)
70700 color rgb(255,255,255)
70710 locate 1,3
70720 print "部下の生まれた日(1日~31日):";buf_Day$
70730 color rgb(255,255,255)
70740 'locate 4,6:print ":7"
70750 'locate 9,6:print ":8"
70760 'locate 12,6:print ":9"
70770 'locate 4,6
70780 'print ":7  :8  :9" + chr$(13)
70790 'color rgb(255,255,255)
70800 'locate 4,8
70810 'print ":4  :5  :6" + chr$(13)
70820 'color rgb(255,255,255)
70830 'locate 4,10
70840 'print ":1  :2  :3" + chr$(13)
70850 'locate 4,12
70860 'print "    :0"
70870 'locate 12,12
70880 'color rgb(0,0,255)
70890 'print ":Ok"
70900 sp_on 4,0: sp_on 5,0:sp_on 6,0
70910 sp_on 7,0:sp_on 8,0:sp_on 9,0
70920 sp_on 10,0:sp_on 11,0:sp_on 12,0
70930 sp_on 13,0:sp_on 14,1
70940 Buka_Input_Born_Day2:
70950 '
70960 key$="":bg=0:y=0:y2=0:bg2=0
70970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
70980 key$ = inkey$
70990 bg = strig(1)
71000 y = stick(1)
71010 y2 = stick(0)
71020 bg2 = strig(0)
71030 pause 200
71040 wend
71050 '十字キー　ここから
71060 '上の矢印　または、十字キー上
71070 if ((y = -1) or (key$ = chr$(30))) then
71080 select case No
71090 'No=-1:okのとき:初期の状態
71100 '0kボタンから３に移動
71110 '上に行く 処理
71120 case -1:
71130 No=3:sp_on 12,1:sp_on 14,0
71140 pause 200:goto Buka_Input_Born_Day2:
71150 '選択肢:3
71160 '3ボタンから 6に移動
71170 case 3:
71180 No=6:sp_on 12,0:sp_on 11,1
71190 pause 200:goto Buka_Input_Born_Day2:
71200 '6ボタンから ９に移動
71210 case 6:
71220 No=9:sp_on 10,1:sp_on 11,0
71230 pause 200:goto Buka_Input_Born_Day2:
71240 '6ボタンから ９に移動　ここまで
71250 '9で上を押して何もしない
71260 case 9:
71270 '何もしない
71280 No=9
71290 pause 200:goto Buka_Input_Born_Day2:
71300 '9で上を押しても何もしない　ここまで
71310 '上　 0ボタンから2ボタン
71320 'sp_on 6,1:1
71330 'sp_on 8,1:5
71340 'sp_on 7,1:7
71350 case 0:
71360 No=2:sp_on 13,0:sp_on 9,1:
71370 pause 200:goto Buka_Input_Born_Day2:
71380 '上  0ボタンから2ボタン　ここまで
71390 '2から５になる 上
71400 case 2:
71410 No=5:sp_on 8,1:sp_on 9,0:
71420 pause 200:goto Buka_Input_Born_Day2:
71430 case 5:
71440 No=8:sp_on 7,1:sp_on 8,0
71450 pause 200:goto Buka_Input_Born_Day2:
71460 case 8:
71470 pause 200:goto Buka_Input_Born_Day2:
71480 case 1:
71490 No=4:sp_on 5,1:sp_on 6,0
71500 pause 200:goto Buka_Input_Born_Day2:
71510 case 4:
71520 No=7:sp_on 4,1:sp_on 5,0
71530 pause 200:goto Buka_Input_Born_Day2:
71540 case 7:
71550 pause 200:goto Buka_Input_Born_Day2:
71560 end select
71570 endif
71580 '左３　ここまで
71590 '下の矢印
71600 '中央 2
71610 if ((y=1) or (key$ = chr$(31))) then
71620 select case No
71630 '9から６に下げる
71640 case 9:
71650 No=6:sp_on 11,1:sp_on 10,0
71660 pause 200:goto Buka_Input_Born_Day2:
71670 '6から３に下げる
71680 case 6:
71690 No=3:sp_on 12,1:sp_on 11,0
71700 pause 200:goto Buka_Input_Born_Day2:
71710 '3から０ｋに変える
71720 case 3:
71730 No=-1:sp_on 14,1:sp_on 12,0
71740 pause 200:goto Buka_Input_Born_Day2:
71750 'Okから下のボタンを押しても何もしない
71760 case -1:
71770 pause 200:goto Buka_Input_Born_Day2:
71780 case 8:
71790 No=5:sp_on 8,1:sp_on 7,0
71800 pause 200:goto Buka_Input_Born_Day2:
71810 case 5:
71820 No=2:sp_on 9,1:sp_on 8,0
71830 pause 200:goto Buka_Input_Born_Day2:
71840 case 2:
71850 No=0:sp_on 13,1:sp_on 9,0
71860 pause 200:goto Buka_Input_Born_Day2:
71870 case 0:
71880 pause 200:goto Buka_Input_Born_Day2:
71890 case 7:
71900 No=4:sp_on 5,1:sp_on 4,0
71910 pause 200:goto Buka_Input_Born_Day2:
71920 case 4:
71930 No=1:sp_on 6,1:sp_on 5,0
71940 pause 200:goto Buka_Input_Born_Day2:
71950 case 1:
71960 pause 200:goto Buka_Input_Born_Day2:
71970 end select
71980 endif
71990 '左へボタン 十字キー　左　or 　カーソル左
72000 if ((y2 = -1) or (key$ = chr$(29))) then
72010 select case No
72020 'Ok ボタン  Okから　左　０に行く
72030 case -1:
72040 No=0:sp_on 13,1:sp_on 14,0
72050 pause 200:goto Buka_Input_Born_Day2:
72060 '0 ボタン  左　何もしない
72070 case 0:
72080 pause 200:goto Buka_Input_Born_Day2:
72090 case 3:
72100 No=2:sp_on 9,1:sp_on 12,0:
72110 pause 200:goto Buka_Input_Born_Day2:
72120 case 2:
72130 No=1:sp_on 6,1:sp_on 9,0:
72140 pause 200:goto Buka_Input_Born_Day2:
72150 case 1:
72160 pause 200:goto Buka_Input_Born_Day2:
72170 case 6:
72180 No=5:sp_on 8,1:sp_on 11,0
72190 pause 200:goto Buka_Input_Born_Day2:
72200 case 5:
72210 No=4:sp_on 5,1:sp_on 8,0
72220 pause 200:goto Buka_Input_Born_Day2:
72230 case 4:
72240 pause 200:goto Buka_Input_Born_Day2:
72250 case 9:
72260 No=8:sp_on 7,1:sp_on 10,0
72270 pause 200:goto Buka_Input_Born_Day2:
72280 case 8:
72290 No=7:sp_on 4,1:sp_on 7,0
72300 pause 200:goto Buka_Input_Born_Day2:
72310 case 7:
72320 pause 200:goto Buka_Input_Born_Day2:
72330 end select
72340 endif
72350 '右  十字キー　右　or カーソル　右
72360 if ((y2 = 1) or (key$ = chr$(28))) then
72370 select case No
72380 '0ボタンからokボタン右に移動
72390 case 0:
72400 No=-1:sp_on 14,1:sp_on 13,0
72410 pause 200:goto Buka_Input_Born_Day2:
72420 '0ボタンからokボタン 右に移動　ここまで
72430 'OKボタンで右を押して何もしない
72440 case -1:
72450 pause 200:goto Buka_Input_Born_Day2:
72460 case 1:
72470 No=2:sp_on 9,1:sp_on 6,0
72480 pause 200:goto Buka_Input_Born_Day2:
72490 case 2:
72500 No=3:sp_on 12,1:sp_on 9,0
72510 pause 200:goto Buka_Input_Born_Day2:
72520 case 3:
72530 pause 200:goto Buka_Input_Born_Day2:
72540 case 4:
72550 No=5:sp_on 8,1:sp_on 5,0
72560 pause 200:goto Buka_Input_Born_Day2:
72570 case 5:
72580 No=6:sp_on 11,1:sp_on 8,0
72590 pause 200:goto Buka_Input_Born_Day2:
72600 case 7:
72610 No=8:sp_on 7,1:sp_on 4,0
72620 pause 200:goto Buka_Input_Born_Day2:
72630 case 8:
72640 No=9:sp_on 10,1:sp_on 7,0
72650 pause 200:goto Buka_Input_Born_Day2:
72660 case 9:
72670 pause 200:goto Buka_Input_Born_Day2:
72680 case 6:
72690 pause 200:goto Buka_Input_Born_Day2:
72700 end select
72710 'Okから右ボタンを押して何もしない ここまで
72720 endif
72730 '十字キー　ここまで
72740 '右の丸ボタンを押したとき
72750 if ((bg = 2) or (key$ = chr$(13))) then
72760 'count :決定ボタンを押した回数
72770 select case (count)
72780 '1桁目入力
72790 case 0:
72800 count = 1:
72810 if (No = -1) then
72820 '1桁目　OKでは何もしない
72830 'goto check:
72840 No=0
72850 else
72860 'ok以外のボタンを押したとき
72870 buf_buka_day = No:buf_buka_Day$ = str$(No)
72880 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
72890 buf_buka_Day$ = str$(No) + "*"
72900 endif
72910 a=No
72920 buf_Buka_Born_Day(2) = buf_buka_day
72930 locate 1,3
72940 print"                                      "
72950 color RGB(255,255,255)
72960 locate 1,3
72970 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
72980 endif
72990 check2:
73000 if (No >= 1 and No <= 9) then
73010 sp_on 14,0
73020 goto Buka_Input_Born_Day2:
73030 else
73040 sp_on 14,0
73050 goto Result_Business_Aisyou:
73060 end
73070 endif
73080 case 1:
73090 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
73100 count = 2:
73110 'locate 2,3
73120 'color RGB(255,255,255)
73130 'print "生まれた日(1日~31日):";buf_Day$
73140 'Okボタンを押したときの処理
73150 '入力値　10未満のとき
73160 'c = buf_day
73170 if (No = -1) then
73180 'c=buf_day
73190 ' buf_day = c
73200 'buf_Day$ = str$(buf_day)
73210 '10以下のとき
73220 No=0
73230 if (buf_day < 10) then
73240 sp_on 14,0
73250 goto Result_Business_Aisyou:
73260 end
73270 endif
73280 else
73290 sp_on 14,0
73300 'c=No
73310 buf_buka_day = a * 10 + No
73320 buf_buka_Day$ = str$(buf_buka_day)
73330 buf_Buka_Born_Day(2) = buf_buka_day
73340 locate 0,3
73350 color Rgb(255,255,255)
73360 print "                                       "
73370 locate 1,3
73380 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
73390 goto Buka_Input_Born_Day2:
73400 endif
73410 '生まれた日　2桁目の数字　or 1桁の数字 + ok
73420 case 2:
73430 count=0
73440 'c=val(buf_Day$)
73450 'buf_day=c*10+No
73460 'buf_Day$=str$(buf_day)
73470 'day=buf_day
73480 'locate 2,3
73490 'print "生まれた日(1日〜31日):";buf_Day$
73500 'No=-1:ok ボタンを押したとき
73510 if (No = -1) then No=0
73520 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
73530 sp_on 14,0
73540 goto Result_Business_Aisyou:
73550 else
73560 goto Buka_Input_Born_Day2:
73570 endif
73580 'Okボタン以外を押したとき
73590 else
73600 c=val(buf_buka_Day$)
73610 buf_buka_day = c * 10 + No
73620 buf_buka_Day$ = str$(buf_buka_day)
73630 locate 1,3
73640 print "                "
73650 locate 1,3
73660 print "生まれた日(1日~31日):"+buf_buka_Day$
73670 goto Buka_Input_Born_Day2:
73680 'endif
73690 case 3:
73700 count=4
73710 'c=val(buf_day$)
73720 'buf_day=c*10+No
73730 'buf_day$=str$(buf_day)
73740 'locate 2,3
73750 'print "生まれた日を入れてください:";buf_day$
73760 'year=val(buf_year$)
73770 if (No = -1) then
73780 'goto Buka_Input_Born_Day:
73790 sp_on 14,0:
73800 goto complate_jyoushi:
73810 else
73820 goto Buka_Input_Born_Month2:
73830 endif
73840 'case 4:
73850 'bufyear=buf_year
73860 'if (No=-1) then
73870 'buf_day = val(buf_day$)
73880 'bufday = buf_day
73890 'sp_on 14,0
73900 goto complate_jyoushi:
73910 'else
73920 'goto Buka_Input_Born_Day2:
73930 'endif
73940 end select
73950 endif
73960 if (bg2=2) then
73970 select case count2
73980 case 0:
73990 if (No=-1) then
74000 'buf_day=0:buf_Day$="**"
74010 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
74020 count=0
74030 buf_buka_day=0:buf_buka_Day$="**"
74040 goto rewrite_day3:
74050 else
74060 buf_buka_day=0:buf_buka_Day$="**"
74070 ui_msg"値が範囲外です"
74080 endif
74090 goto rewrite_day3:
74100 else
74110 goto rewrite_day3:
74120 endif
74130 rewrite_day3:
74140 locate 2,3
74150 color rgb(255,255,255)
74160 print "                                      "
74170 locate 1,3
74180 print "生まれた日(1日~31日):"+buf_buka_Day$
74190 goto Buka_Input_Born_Day2:
74200 end select
74210 endif
74220 '3.部下の生まれた日'
74230 '部下'
74240 '--------------------------------------------'
74250 'ビジネの相性　結果表示
74260 Result_Business_Aisyou:
74270 cls 3:init "kb:4"
74280 a=0:b=0:c=0:d=0:e=0:f=0
74290 bg=0:key$=""
74300 gload Gazo$ + "Screen1.png",0,0,0
74310 gload Gazo$ + "downscreen.png",0,0,800
74320 sp_on 14,0
74330 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
74340 buf_Buka = Kabara_Num(d,e,f)
74350 a_2 = buf_Buka
74360 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
74370 locate 0,1
74380 color rgb(255,0,0)
74390 print "●.相性診断結果１"
74400 locate 0,4:
74410 color rgb(255,255,255)
74420 print "1.上司の名前:";buffer_name$(0)
74430 locate 0,6
74440 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
74450 locate 0,8
74460 print "2.部下の名前:";buffer_name$(1)
74470 locate 0,10
74480 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
74490 locate 0,12
74500 print "3.上司と部下の相性:";Result_Aisyou$
74510 locate 1,15
74520 color rgb(0,0,0)
74530 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
74540 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
74550 bg = strig(1)
74560 key$ = inkey$
74570 bg2 = strig(0)
74580 pause 5
74590 wend
74600 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
74610 if (bg2 = 2) then
74620 cls 3:goto Business_Aishou_Input_1_parson:
74630 endif
74640 'ビジネスの相性占い　結果2　説明
74650 Result_Business_Aisyou2:
74660 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
74670 gload Gazo$ + "Screen1.png",0,0,0
74680 locate 0,1
74690 color rgb(255,0,0)
74700 print "●.相性の説明"
74710 color rgb(255,255,255)
74720 locate 0,4
74730 print "相性:";Result_Aisyou$
74740 locate 0,6:
74750 print "相性の説明:";buf$
74760 locate 0,15
74770 color rgb(0,0,0)
74780 print "右の丸ボタン:トップ,左のボタン:前の画面"
74790 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
74800 bg = strig(1)
74810 bg2 = strig(0)
74820 key$ = inkey$
74830 pause 200
74840 wend
74850 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
74860 if ((bg2 = 2)) then goto Result_Business_Aisyou:
74870 'Birds Eye Menu List
74880 Result_Birtheye_List1:
74890 'dim List$(4) Topに定義
74900 List$(0) = "1.バーズアイグリッドをもう一度診断"
74910 List$(1) = "2.診断結果"
74920 List$(2) = "3.データーを保存"
74930 List$(3) = "4.トップ画面に戻る"
74940 Birds_List1 = ui_select("List$","Menu")
74950 select case (Birds_List1)
74960 case 0: '1.もう一度診断
74970 for i=0 to 8
74980 buffer(i)=0
74990 next i
75000 goto Input_name1_Birdseye:
75010 case 1: '2.次へ行く
75020 gosub BirdsEye_Result2:
75030 case 2: '3.データーを保存
75040 ui_msg "データーを保存します"
75050 goto BirdsEye_Save_data:
75060 case 3: '4.トップに戻る
75070 for i=0 to 8
75080 buffer(i)=0
75090 next i
75100 goto Main_Screen:
75110 end select
75120 'BirdsEye Data Save
75130 BirdsEye_Save_data:
75140 if dir$(Save_data_Birdseye$) = "" then
75150 Mkdir Save_data_Birdseye$
75160 endif
75170 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
75180 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
75190 close #1
75200 ui_msg "データーを保存しました"
75210 goto Result_Birtheye_List1:
75220 'return
75230 '自作関数 ここから
75240 BirdsEyeGrid_Entry:
75250 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
75260 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
75270 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
75280 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
75290 locate 1,4:print "右の丸:メイン画面へ行く"
75300 else
75310 flag=1
75320 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
75330 while (eof(1)=0)
75340 line input #1,a$
75350 n = n + 1
75360 wend
75370 close #1
75380 'endif
75390 talk "登録件数は"+str$(n)+"件です。"
75400 locate 1,2:print "登録件数は";str$(n);"件です"
75410 locate 1,4:print "左の丸：メイン画面へ行く"
75420 endif
75430 Entry_Count:
75440 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
75450 key$ = inkey$
75460 bg = strig(1)
75470 bg2 = strig(0)
75480 pause 200
75490 wend
75500 if ((bg = 2) or (key$ = chr$(13))) then
75510 if (n = 0) then
75520 '登録件数　０件のとき　メイン画面に行く
75530 goto Main_Screen:
75540 else
75550 '登録件数1件以上　次へ行く
75560 'ここを変更する
75570 goto Entry_List:
75580 endif
75590 endif
75600 if (bg2 = 2) then
75610 if (n > 0) then
75620 goto Main_Screen:
75630 else
75640 goto Entry_Count:
75650 endif
75660 endif
75670 Entry_List:
75680 cls 3:play"":color rgb(255,255,255)
75690 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
75700 dim buffer_List$(11,n)
75710 'ファイル読み込み ここから
75720 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
75730 for i=0 to 10
75740 for j=0 to n-1
75750 input #1,a$
75760 buffer_List$(i,j)=a$
75770 next j
75780 next i
75790 close #1
75800 'erase buffer_List$
75810 'color rgb(255,255,255)
75820 i=0:key$="":bg=0:init"kb:4":bg2=0
75830 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
75840 key$ = inkey$
75850 bg = strig(1)
75860 bg2=strig(0)
75870 pause 200
75880 wend
75890 color rgb(0,0,0)
75900 locate 1,15:print "次へ"
75910 'show_ListData:
75920 'j=0
75930 repeat (j=0)
75940 show_ListData:
75950 cls
75960 color rgb(255,255,255)
75970 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
75980 '1の文字データー
75990 locate 4,14:print buffer_List$(2,j)
76000 '2の文字データー
76010 locate 4,9:print buffer_List$(3,j)
76020 '3の文字データー
76030 locate 4,5:print buffer_List$(4,j)
76040 '4の文字データー
76050 locate 11,14:print buffer_List$(5,j)
76060 '5の文字データー
76070 locate 11,9:PRINT buffer_List$(6,j)
76080 '6の文字データー
76090 locate 11,5:print buffer_List$(7,j)
76100 '7の文字データー
76110 locate 16,14:print buffer_List$(8,j)
76120 '8の文字データー
76130 locate 16,9:print buffer_List$(9,j)
76140 '9の文字データー
76150 locate 16,5:print buffer_List$(10,j)
76160 color rgb(0,0,0)
76170 locate 1,15:print "右の丸：次へ"
76180 if (bg=2 or key$=chr$(13)) then
76190 j=j+1
76200 endif
76210 if (bg2=2) then
76220 goto Main_Screen:
76230 endif
76240 until (j=n)
76250 'erase buffer_List$:
76260 goto show_ListData:
76270 'ファイル読み込み　ここまで
76280 func read_explain$(ba$)
76290 d$=""
76300 buf_String$=""
76310 if ba$="A" then
76320 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
76330 line input #1,a$
76340 a1$=mid$(a$,1,12)
76350 a2$=mid$(a$,13,17)
76360 a3$=mid$(a$,30,17)
76370 a4$=mid$(a$,47,18)
76380 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
76390 buf_String$ = a5$
76400 close #1
76410 endif
76420 if ba$="B"  then
76430 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
76440 line input #1,b$
76450 b1$=mid$(b$,1,15)
76460 b2$=mid$(b$,16,21)
76470 'b3$=mid$(b$,33,3)
76480 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
76490 buf_String$ = b4$
76500 close #1
76510 endif
76520 if ba$="C"  then
76530 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
76540 line input #1,c$
76550 c1$ = Mid$(c$,1,15)
76560 c2$ = Mid$(c$,16,33)
76570 c3$ = c1$ + chr$(13) + c2$
76580 buf_String$ = c3$
76590 close #1
76600 endif
76610 if ba$="D" then
76620 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
76630 line input #1,d$
76640 d1$=mid$(d$,1,15)
76650 d2$=mid$(d$,16,22)
76660 d3$=mid$(d$,38,7)
76670 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
76680 buf_String$ = d4$
76690 close #1
76700 endif
76710 if ba$="E"  then
76720 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
76730 line input #1,e$
76740 e1$=Mid$(e$,1,16)
76750 e2$=Mid$(e$,17,16)
76760 e3$=Mid$(e$,33,12)
76770 e4$=Mid$(e$,45,17)
76780 e5$=Mid$(e$,62,17)
76790 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
76800 buf_String$ = e6$
76810 close #1
76820 endif
76830 if ba$="F" then
76840 '改行を追加して表示を調整
76850 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
76860 line input #1,f$
76870 f1$=Mid$(f$,1,15)
76880 f2$=Mid$(f$,16,12)
76890 buf_String$ = f1$+chr$(13)+f2$
76900 close #1
76910 endif
76920 if ba$="G" then
76930 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
76940 line input #1,g$
76950 g1$ = mid$(g$,1,16)
76960 g2$ = mid$(g$,17,18)
76970 g3$ = mid$(g$,36,21)
76980 g4$ = mid$(g$,56,6)
76990 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
77000 buf_String$ = g5$
77010 close #1
77020 endif
77030 if ba$="H" then
77040 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
77050 line input #1,h$
77060 h1$=Mid$(h$,1,17)
77070 h2$=Mid$(h$,18,21)
77080 h3$=Mid$(h$,39,20)
77090 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
77100 buf_String$ = h$
77110 close #1
77120 endif
77130 if ba$ = "I" then
77140 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
77150 line input #1,i$
77160 i1$=Mid$(i$,1,10)
77170 i2$=Mid$(i$,11,13)
77180 i3$=Mid$(i$,25,16)
77190 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
77200 buf_String$ = i$
77210 close #1
77220 endif
77230 buffer$ = buf_String$
77240 endfunc buffer$
77250 'カバラ数（数秘番号を求める）
77260 func Kabara_Num(buffer_Year,month,day)
77270 '=============================
77280 'a1:4桁のうちの1桁目を求める
77290 '例 a1:1234の4が1桁目
77300 'a2:4桁のうちの2桁目を求める
77310 '例:a2:1234の3が2桁目
77320 'a3:4桁のうちの3桁目を求める
77330 '例 a3:1234の2が3桁目
77340 'a4:4桁のうちの4桁目を求める
77350 '例 a4:1234の1が4桁目
77360 '==============================
77370 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
77380 Year = buffer_Year
77390 '処理1　整数部分を取り出す。
77400 a4 = fix(Year / 1000)
77410 a3 = fix(Year / 100) - (a4 * 10)
77420 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
77430 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
77440 '処理　２　取り出した整数部分を足す。
77450 a_ = a1 + a2 + a3 + a4 +month + day
77460 'a1=0:a2=0:a3=0:a4=0
77470 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
77480 buffer = a_
77490 'else
77500 goto recomp2:
77510 'if (a_ = 10) then
77520 '  buffer = 1
77530 endif
77540 recomp2:
77550 a5=0:a6=0
77560 a5 = fix(a_ / 10)
77570 a6 = (a_) - (a5 * 10)
77580 a_ = a5 + a6
77590 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
77600 '結果に行く
77610 goto Res2:
77620 '  if ((a_>11) and (a_<99)) then
77630 else
77640 '再度計算
77650 goto recomp2:
77660 endif
77670 '     a1 = fix(a_ / 10)
77680 '     a2 = a_ - (a1 * 10)
77690 '     a_ = a1 + a2
77700 '     buffer = a_
77710 'endif
77720 'else
77730 '    bffer = a_
77740 'endif
77750 'endif
77760 'else
77770 'talk "プログラムを終了します。"
77780 'end
77790 'endif
77800 'kabara = 10
77810 Res2:
77820 kabara = a_
77830 endfunc kabara
77840 func Kabara_Aisyou$(buff1,buff2)
77850 a=0:b=0
77860 '範囲　1~9
77870 if ((buff1 > 0 and buff1 < 10)) then
77880 a = buff1
77890 else
77900 Select case buff1
77910 case 11:
77920 buff1=9:a=buff1
77930 case 22:
77940 buff1=10:a=buff1
77950 end select
77960 endif
77970 '範囲　１~９
77980 if ((buff2 > 0 and buff2 < 10)) then
77990 b = buff2
78000 else
78010 select case buff2
78020 case 11:
78030 buff2=9:b=buff2
78040 case 12:
78050 buff2=10:b=buff2
78060 end select
78070 endif
78080 Aisyou$ = Buffer_Business_Aisyou$(a,b)
78090 endfunc Aisyou$
78100 '=============================
78110 '自作関数 ここまで
78120 '1.数秘術　トップ画面
78130 '
78140 'Data_eraseを一番最後に持ってくる
78150 '=============================
78160 Data_erase:
78170 'メモリー削除
78180 erase buf_male_year
78190 erase buf_male_month
78200 erase buf_male_Born_Day
78210 erase buf_feMale_Born_Day
78220 erase buf_female_day
78230 erase buf_name1$
78240 erase buf_name2$
78250 erase buffer
78260 erase buf_chart$
78270 erase Buffer_Business_Aisyou$
78280 erase buffer_name$
78290 '上司の誕生日
78300 erase buf_Jyoushi_Born_Day
78310 '部下の誕生日
78320 erase buf_Buka_Born_Day
78330 erase buf_year
78340 erase buf_month
78350 erase buf_day
78360 'フォーカスライン
78370 erase Forcus1_buffer$
78380 erase Forcus2_buffer$
78390 erase Forcus3_buffer$
78400 'erase buffer_List$
78410 'Birds eye List Data 配列
78420 erase List$
78430 buffer$ = ""
78440 buf$ = ""
78450 buf_year$ = ""
78460 buf_Jyoushi_Kabara_Num = 0
78470 buf_Buka_Kabara_Num = 0
78480 count = 0
78490 buf_Month$ = ""
78500 buf_Day$ = ""
78510 b=0
78520 c=0
78530 No=0
78540 return
