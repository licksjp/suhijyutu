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
570 '2024.01.28:Ver134_20240128
580 Version$ = "Ver:1.3.4_20240128"
590 'Gazo Folder Japan
600 Gazo$ = "./data/Picture/"
610 'Gazo Folder English
620 Gazo_Eng$ = "./data/Picture/English/"
630 'Voice Folder 2023
640 Voice$ = "./data/Voice/Voice/"
650 'BirtheyeChart Data:20230626
660 Birth_eye_chart$ = "./data/chart_data/"
670 'Data Folder
680 Data$ = "./data/data/"
690 'Business Aisyou 結果説明保存フォルダ
700 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
710 'Save BirdsEyeGrit List Folder
720 Save_data_Birdseye$ = "./data/Parsonal_data/"
730 '変数定義 パート
740 b=0:c=0:n=0
750 'dim buffer_List$(11,1)
760 dim buf_name1$(10),buf_name2$(10)
770 dim buffer(9),buf_chart$(26,2)
780 'ビジネスの相性　データー
790 dim Buffer_Business_Aisyou$(12,12)
800 '男女の相性
810 dim Buffer_Bitween_sexes_Aisyou$(12,12)
820 '生れた年代
830 dim buf_year(4):buf_year$ = ""
840 dim buf_month(2)
850 dim buf_day(2)
860 'フォーカスライン　配列
870 dim Forcus1_buffer$(3)
880 dim Forcus2_buffer$(3)
890 dim Forcus3_buffer$(2)
900 '生れた月
910 buf_Month$ = ""
920 '生れた日
930 buf_Day$ = ""
940 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
950 dim buffer_name$(3)
960 '1-1.上司の誕生日(数値データー)
970 dim buf_Jyoushi_Born_Day(3)
980 '1-2.上司の数秘ナンバー(数値データー)
990 buf_Jyoushi_Kabara_Num = 0
1000 '2-1.部下の誕生日(数値データー)
1010 dim buf_Buka_Born_Day(3)
1020 '2-2.部下の数秘ナンバー(数秘データー)
1030 buf_Buka_Kabara_Num = 0
1040 dim buf_male_year(4)
1050 dim buf_male_month(2)
1060 dim buf_male_Born_Day(2)
1070 dim buf_feMale_Born_Day(2)
1080 dim buf_female_day(2)
1090 count=0
1100 'Birds Eye List 配列
1110 dim List$(6)
1120 '部下の数秘ナンバー
1130 'File 読み込み
1140 '1.ビジネスの相性占い
1150 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1160 for i=0 to 11
1170 for j=0 to 11
1180 input #1,a$
1190 Buffer_Business_Aisyou$(j,i) = a$
1200 next j
1210 next i
1220 close #1
1230 '2.男女の相性占い
1240 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1250 for i=0 to 11
1260 for j=0 to 11
1270 input #1,a$
1280 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1290 next j
1300 next i
1310 close #1
1320 '2.Birth Eye chart$
1330 '2.バーズアイグリッドを読み込む
1340 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1350 for j=0 to 25
1360 for i=0 to 1
1370 input #1,a$
1380 buf_chart$(j,i) = a$
1390 next i
1400 next j
1410 close #1
1420 'File 読み込み　ここまで
1430 'Main画面
1440 screen 1,1,1,1
1450 Main_Screen:
1460 cls 3:
1470 No=0
1480 gload Gazo$ + "Selection.png",1,5,200
1490 gload Gazo$ + "Selection.png",1,5,300
1500 gload Gazo$ + "Selection.png",1,5,400
1510 gload Gazo$ + "Selection.png",1,5,500
1520 '4
1530 gload Gazo$ + "Selection.png",1,35,300
1540 '5
1550 gload Gazo$ + "Selection.png",1,35,400
1560 '6
1570 gload Gazo$ + "Selection.png",1,35,500
1580 '7
1590 gload Gazo$ + "Selection.png",1,70,300
1600 '8
1610 gload Gazo$ + "Selection.png",1,70,400
1620 '9
1630 gload Gazo$ + "Selection.png",1,70,500
1640 '10
1650 gload Gazo$ + "Selection.png",1,110,300
1660 '11
1670 gload Gazo$ + "Selection.png",1,110,400
1680 '12
1690 gload Gazo$ + "Selection.png",1,110,500
1700 '13:0
1710 gload Gazo$ + "Selection.png",1,150,400
1720 gload Gazo$ + "Selection.png",1,200,400
1730 if ex_info$(1) <> "JP" then
1740 '英語　トップ画面
1750 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
1760 else
1770 '日本語トップスクリーン
1780 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1790 endif
1800 '選択肢の丸
1810 gload Gazo$ + "downscreen.png",0,0,800
1820 sp_def 0,(5,300),32,32
1830 sp_def 1,(5,400),32,32
1840 sp_def 2,(5,500),32,32
1850 sp_def 3,(5,600),32,32
1860 '1
1870 sp_def 4,(35,300),32,32
1880 '2
1890 sp_def 5,(35,400),32,32
1900 '3
1910 sp_def 6,(35,500),32,32
1920 '4
1930 sp_def 7,(70,300),32,32
1940 '5
1950 sp_def 8,(70,400),32,32
1960 '6
1970 sp_def 9,(70,500),32,32
1980 '7
1990 sp_def 10,(110,300),32,32
2000 '8
2010 sp_def 11,(110,400),32,32
2020 '9
2030 sp_def 12,(110,400),32,32
2040 sp_def 13,(150,400),32,32
2050 sp_def 14,(200,400),32,32
2060 'Sprite OFF
2070 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
2080 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
2090 sp_put 0,(5,300),0,0
2100 sp_put 1,(5,400),1,0
2110 sp_put 2,(5,500),2,0
2120 sp_put 3,(5,600),3,0
2130 '1
2140 sp_put 4,(130,300),4,0
2150 '2
2160 sp_put 5,(130,400),5,0
2170 '3
2180 sp_put 6,(130,500),6,0
2190 '4
2200 sp_put 7,(340,300),7,0
2210 '5
2220 sp_put 8,(340,400),8,0
2230 '6
2240 sp_put 9,(340,500),9,0
2250 '7
2260 sp_put 10,(540,300),10,0
2270 '8
2280 sp_put 11,(540,400),11,0
2290 '9
2300 sp_put 12,(540,500),12,0
2310 '
2320 sp_put 13,(340,600),13,0
2330 sp_put 14,(540,600),14,0
2340 Main_Top:
2350 'Main Message 2023.06.07
2360 '再生を止める
2370 play ""
2380 init "kb:4"
2390 'font 32:
2400 font 40
2410 if ex_info$(1) <> "JP" then
2420 '1.英語表示ターム
2430 print chr$(13) + chr$(13) + chr$(13)
2440 color rgb(217,255,212)
2450 print "Please Select Number?" + chr$(13)+chr$(13)
2460 '0
2470 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
2480 '1
2490 print " :2.Setting" + chr$(13)+chr$(13)
2500 '2
2510 print " :3.Help" + chr$(13)
2520 '3
2530 print " :4.(Finishing)Program" + chr$(13)
2540 COLOR rgb(0,0,0):No=0
2550 locate 1,18
2560 print "                                        "
2570 locate 1,18
2580 print "1.It has Selected Kabara Fortune Telling"
2590 '1.英語表示ターム
2600 '---------音声 日本語　英語に変える----------------
2610 'play Voice$ + "Voice_Main_Message_20230607.mp3"
2620 '---------音声 日本語　英語に変える----------------
2630 else
2640 '2.日本語表示ターム
2650 font 48
2660 print chr$(13) + chr$(13) + chr$(13)
2670 color rgb(217,255,212)
2680 print "番号を選んでください" + chr$(13)
2690 '0
2700 print " :1.数秘術占い" + chr$(13)
2710 '1
2720 print " :2.設 定" + chr$(13)
2730 '2
2740 print " :3.ヘルプ" + chr$(13)
2750 '3
2760 print " :4.(プログラムを)終了する" + chr$(13)
2770 COLOR rgb(0,0,0):No=0
2780 locate 1,15
2790 print "                                       "
2800 locate 1,15:print "1.数秘術占いを選択"
2810 play Voice$ + "Voice_Main_Message_20230607.mp3"
2820 '2.日本語表示ターム
2830 endif
2840 Main_Screen_Select:
2850 y = 0:key$ = "":bg = 0:bg2=0
2860 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2870 y = stick(1)
2880 '"May (2023)"
2890 key$ = inkey$
2900 bg = strig(1)
2910 bg2 = strig(0)
2920 pause 200
2930 wend
2940 '1.
2950 'ジョイパッドのソース ソート　ここから
2960 'カーソル　下 or 十字キー下
2970 if ((y = 1) or (key$ = chr$(31))) then
2980 select case No
2990 case 0:
3000 '1
3010 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3020 case 1:
3030 '2
3040 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3050 case 2:
3060 '3
3070 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3080 case 3:
3090 '0
3100 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
3110 end select
3120 endif
3130 '2.
3140 'カーソル　上　or 十字キー  上
3150 if ((y = -1) or (key$ = chr$(30))) then
3160 select case No
3170 case 0:
3180 '3
3190 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3200 case 1:
3210 '0
3220 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
3230 case 2:
3240 '1
3250 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3260 case 3:
3270 '2
3280 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3290 end select
3300 endif
3310 'ジョイパッド　ソース 部分　ここまで
3320 'ジョイパッド右　　or Enter key 決定
3330 if ((bg = 2) OR (key$ = chr$(13))) then
3340 select case No
3350 case 0:
3360 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
3370 case 1:
3380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
3390 case 2:
3400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
3410 case 3:
3420 play "":pause 200
3430 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
3440 end select
3450 endif
3460 if (bg2 = 2) then
3470 play "":pause 200
3480 play Voice$ + "Voice_Main_Message_20230607.mp3"
3490 goto Main_Screen_Select:
3500 endif
3510 'Version
3520 Version:
3530 cls 3:PLAY ""
3540 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3550 gload Gazo$ + "downscreen.png",0,0,800
3560 init"kb:4":font 32+8
3570 'talk"バージョン情報です"
3580 'Message :Version
3590 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3600 locate 0,3
3610 color rgb(0,0,255)
3620 print "・Title:数秘術占い";chr$(13)
3630 print "・" + Version$ + chr$(13)
3640 print "・Author:licksjp"+chr$(13)
3650 print "・E-mail:licksjp@gmail.com" + chr$(13)
3660 locate 0,12
3670 print "(C)licksjp All rights " + chr$(13)
3680 locate 7,13
3690 print "reserved since 2009"+chr$(13)
3700 locate 0,18
3710 color rgb(255,255,255)
3720 print "ジョイパッドの右を押してください"
3730 Versionn_Selection:
3740 bg = 0:key$ = "":bg2 = 0
3750 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3760 bg = strig(1)
3770 key$ = inkey$
3780 bg2 = strig(0)
3790 pause 200
3800 wend
3810 if ((bg = 2) or (key$ = chr$(13))) then
3820 cls 4:goto Main_Screen:
3830 endif
3840 if (bg2=2) then
3850 play "":pause 200
3860 play Voice$ + "Voice_Version_Message_20230607.mp3"
3870 goto Versionn_Selection:
3880 endif
3890 '1.数秘ナンバーを求める
3900 '誕生日入力(生れた年代)
3910 Input_Seireki:
3920 cls 3:play "":count=0:count2=0
3930 'No = -1:Okのとき
3940 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3950 for i=0 to 3
3960 buf_year(i)=0
3970 next i
3980 gload Gazo$ + "Screen2.png",0,0,0
3990 gload Gazo$ + "downscreen.png",0,0,800
4000 'Init"kb:2"
4010 '音声ファイル再生 2023.06.07
4020 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
4030 font 48
4040 locate 0,1
4050 if ex_info$(1) <> "JP" then
4060 color rgb(255,255,255)
4070 color rgb(255,255,255)
4080 print "Input Born Year?" + chr$(13)
4090 color rgb(255,255,255)
4100 locate 2,3
4110 print "Your Born Year(4 dedgit for AC):" + buf_year$
4120 else
4130 '文字色：黒　 color rgb(0,0,0)
4140 color rgb(255,255,255)
4150 print "生まれた年代を入れて下さい" + chr$(13)
4160 color rgb(255,255,255)
4170 locate 2,3
4180 print "生まれた年代(西暦4桁):" + buf_year$
4190 endif
4200 '=============================
4210 'テンキーの色(1~９)　白 ,決定ボタン　青
4220 '=============================
4230 color rgb(255,255,255)
4240 'locate 4,6:print ":7"
4250 'locate 9,6:print ":8"
4260 'locate 12,6:print ":9"
4270 'locate 4,6
4280 'print ":7  :8  :9" + chr$(13)
4290 'color rgb(255,255,255)
4300 'locate 4,8
4310 'print ":4  :5  :6" + chr$(13)
4320 'color rgb(255,255,255)
4330 'locate 4,10
4340 'print ":1  :2  :3" + chr$(13)
4350 'locate 4,12
4360 'print "    :0"
4370 'locate 12,12
4380 'color rgb(255,0,0)
4390 'print ":Ok"
4400 sp_on 4,0: sp_on 5,0:sp_on 6,0
4410 sp_on 7,0:sp_on 8,0:sp_on 9,0
4420 sp_on 10,0:sp_on 11,0:sp_on 12,0
4430 sp_on 13,0:sp_on 14,1
4440 Input_Seireki2:
4450 key$="":bg=0:y=0:y2=0:bg2=0:
4460 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
4470 key$ = inkey$
4480 bg = strig(1)
4490 y = stick(1)
4500 y2 = stick(0)
4510 bg2 = strig(0)
4520 pause 200
4530 wend
4540 '十字キー　ここから
4550 '上の矢印　または、十字キー上
4560 if ((y = -1) or (key$ = chr$(30))) then
4570 select case No
4580 'No=-1:okのとき:初期の状態
4590 '0kボタンから３に移動
4600 '上に行く 処理
4610 case -1:
4620 No=3:sp_on 12,1:sp_on 14,0:beep
4630 pause 200:goto Input_Seireki2:
4640 '選択肢:3
4650 '3ボタンから 6に移動
4660 case 3:
4670 No=6:sp_on 12,0:sp_on 11,1:beep
4680 pause 200:goto Input_Seireki2:
4690 '6ボタンから ９に移動
4700 case 6:
4710 No=9:sp_on 10,1:sp_on 11,0:beep
4720 pause 200:goto Input_Seireki2:
4730 '6ボタンから ９に移動　ここまで
4740 '9で上を押して何もしない
4750 case 9:
4760 '何もしない
4770 No=9
4780 beep:pause 200:goto Input_Seireki2:
4790 '9で上を押しても何もしない　ここまで
4800 '上　 0ボタンから2ボタン
4810 'sp_on 6,1:1
4820 'sp_on 8,1:5
4830 'sp_on 7,1:7
4840 case 0:
4850 No=2:sp_on 13,0:sp_on 9,1:beep
4860 pause 200:goto Input_Seireki2:
4870 '上  0ボタンから2ボタン　ここまで
4880 '2から５になる 上
4890 case 2:
4900 No=5:sp_on 8,1:sp_on 9,0:beep
4910 pause 200:goto Input_Seireki2:
4920 case 5:
4930 No=8:sp_on 7,1:sp_on 8,0:beep
4940 pause 200:goto Input_Seireki2:
4950 case 8:
4960 beep:pause 200:goto Input_Seireki2:
4970 case 1:
4980 No=4:sp_on 5,1:sp_on 6,0:beep
4990 pause 200:goto Input_Seireki2:
5000 case 4:
5010 No=7:sp_on 4,1:sp_on 5,0:beep
5020 pause 200:goto Input_Seireki2:
5030 case 7:
5040 beep:pause 200:goto Input_Seireki2:
5050 end select
5060 endif
5070 '左３　ここまで
5080 '下の矢印
5090 '中央 2
5100 if ((y=1) or (key$ = chr$(31))) then
5110 select case No
5120 '9から６に下げる
5130 case 9:
5140 No=6:sp_on 11,1:sp_on 10,0:beep
5150 pause 200:goto Input_Seireki2:
5160 '6から３に下げる
5170 case 6:
5180 No=3:sp_on 12,1:sp_on 11,0:beep
5190 pause 200:goto Input_Seireki2:
5200 '3から０ｋに変える
5210 case 3:
5220 No=-1:sp_on 14,1:sp_on 12,0:beep
5230 pause 200:goto Input_Seireki2:
5240 'Okから下のボタンを押しても何もしない
5250 case -1:
5260 beep:pause 200:goto Input_Seireki2:
5270 case 8:
5280 No=5:sp_on 8,1:sp_on 7,0:beep
5290 pause 200:goto Input_Seireki2:
5300 case 5:
5310 No=2:sp_on 9,1:sp_on 8,0:beep
5320 pause 200:goto Input_Seireki2:
5330 case 2:
5340 No=0:sp_on 13,1:sp_on 9,0:beep
5350 pause 200:goto Input_Seireki2:
5360 case 0:
5370 beep:pause 200:goto Input_Seireki2:
5380 case 7:
5390 No=4:sp_on 5,1:sp_on 4,0:beep
5400 pause 200:goto Input_Seireki2:
5410 case 4:
5420 No=1:sp_on 6,1:sp_on 5,0:beep
5430 pause 200:goto Input_Seireki2:
5440 case 1:
5450 beep:pause 200:goto Input_Seireki2:
5460 end select
5470 endif
5480 '左へボタン 十字キー　左　or 　カーソル左
5490 if ((y2 = -1) or (key$ = chr$(29))) then
5500 select case No
5510 'Ok ボタン  Okから　左　０に行く
5520 case -1:
5530 No=0:sp_on 13,1:sp_on 14,0:beep
5540 pause 200:goto Input_Seireki2:
5550 '0 ボタン  左　何もしない
5560 case 0:
5570 beep:pause 200:goto Input_Seireki2:
5580 case 3:
5590 No=2:sp_on 9,1:sp_on 12,0:beep
5600 pause 200:goto Input_Seireki2:
5610 case 2:
5620 No=1:sp_on 6,1:sp_on 9,0:beep
5630 pause 200:goto Input_Seireki2:
5640 case 1:
5650 beep:pause 200:goto Input_Seireki2:
5660 case 6:
5670 No=5:sp_on 8,1:sp_on 11,0:beep
5680 pause 200:goto Input_Seireki2:
5690 case 5:
5700 No=4:sp_on 5,1:sp_on 8,0:beep
5710 pause 200:goto Input_Seireki2:
5720 case 4:
5730 beep:pause 200:goto Input_Seireki2:
5740 case 9:
5750 No=8:sp_on 7,1:sp_on 10,0:beep
5760 pause 200:goto Input_Seireki2:
5770 case 8:
5780 No=7:sp_on 4,1:sp_on 7,0:beep
5790 pause 200:goto Input_Seireki2:
5800 case 7:
5810 beep:pause 200:goto Input_Seireki2:
5820 end select
5830 endif
5840 '右  十字キー　右　or カーソル　右
5850 if ((y2 = 1) or (key$ = chr$(28))) then
5860 select case No
5870 '0ボタンからokボタン右に移動
5880 case 0:
5890 No=-1:sp_on 14,1:sp_on 13,0:beep
5900 pause 200:goto Input_Seireki2:
5910 '0ボタンからokボタン 右に移動　ここまで
5920 'OKボタンで右を押して何もしない
5930 case -1:
5940 pause 200:goto Input_Seireki2:
5950 case 1:
5960 No=2:sp_on 9,1:sp_on 6,0:beep
5970 pause 200:goto Input_Seireki2:
5980 case 2:
5990 No=3:sp_on 12,1:sp_on 9,0
6000 beep:pause 200:goto Input_Seireki2:
6010 case 3:
6020 beep:pause 200:goto Input_Seireki2:
6030 case 4:
6040 No=5:sp_on 8,1:sp_on 5,0:beep
6050 pause 200:goto Input_Seireki2:
6060 case 5:
6070 No=6:sp_on 11,1:sp_on 8,0:beep
6080 pause 200:goto Input_Seireki2:
6090 case 7:
6100 No=8:sp_on 7,1:sp_on 4,0:beep
6110 pause 200:goto Input_Seireki2:
6120 case 8:
6130 No=9:sp_on 10,1:sp_on 7,0:beep
6140 pause 200:goto Input_Seireki2:
6150 case 9:
6160 beep:pause 200:goto Input_Seireki2:
6170 case 6:
6180 beep:pause 200:goto Input_Seireki2:
6190 end select
6200 'Okから右ボタンを押して何もしない ここまで
6210 endif
6220 '十字キー　ここまで
6230 if ((bg=2) or (key$=chr$(13))) then
6240 select case count
6250 case 0:
6260 count=1
6270 if (No=-1) then
6280 count=0
6290 'Okボタンを押したとき
6300 goto Input_Seireki2:
6310 else
6320 '===================================
6330 'Okボタン以外が押されたとき  1桁目の入力
6340 '===================================
6350 count2=1
6360 if (No >= 1 and No <= 2) then
6370 buf_year$="":buf_year$ = str$(No)
6380 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
6390 if ex_info$(1) <> "JP" then
6400 n1= len("Input Born Year?(4 dedgit):")
6410 else
6420 n1 = len("生まれた年代(西暦4桁):")
6430 endif
6440 locate 2,3
6450 color rgb(255,255,255)
6460 if ex_info$(1) <> "JP" then
6470 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
6480 else
6490 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
6500 endif
6510 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
6520 'print "生まれた年代(西暦4桁):";buf_year2$
6530 print buf_Born_Year_line$
6540 goto Input_Seireki2:
6550 else
6560 count=0
6570 ui_msg"数字が範囲外になります。"
6580 buf_year$="":buf_year=0
6590 goto Input_Seireki2:
6600 endif
6610 endif
6620 case 1:
6630 count = 2
6640 if (No = -1) then
6650 count = 1
6660 goto Input_Seireki2:
6670 else
6680 count2 = 1
6690 b = val(buf_year$)
6700 buf_year = b * 10 + No
6710 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6720 locate 2,3
6730 color rgb(255,255,255)
6740 print "                                                                "
6750 locate 2,3
6760 if ex_info$(1) <> "JP" then
6770 print "Input Born Year(4 dedgit):";buf_year$
6780 else
6790 print "生まれた年代(西暦4桁):";buf_year2$
6800 endif
6810 'if (No = -1) then
6820 'count=1
6830 goto Input_Seireki2:
6840 endif
6850 case 2:
6860 count=3
6870 if (No=-1) then
6880 count =2
6890 goto Input_Seireki2:
6900 else
6910 b = val(buf_year$)
6920 buf_year = b*10 + No
6930 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6940 locate 2,3
6950 color rgb(255,255,255)
6960 print "                                        "
6970 locate 2,3
6980 if ex_info$(1) <> "JP" then
6990 print "Input Born Year?(4 dedgit):";buf_year$
7000 else
7010 print "生まれた年代(西暦4桁):";buf_year2$
7020 endif
7030 goto Input_Seireki2:
7040 endif
7050 case 3:
7060 count=4
7070 if (No = -1) then
7080 count=3
7090 goto Input_Seireki2:
7100 else
7110 b = val(buf_year$)
7120 buf_year = b * 10 + No
7130 buf_year$ = str$(buf_year)
7140 locate 2,3
7150 color RGB(255,255,255)
7160 print "                                      "
7170 locate 2,3
7180 if ex_info$(1) <> "JP" then
7190 print "Input Born Year?(4 dedgit):";buf_year$
7200 else
7210 print "生まれた年代(西暦4桁):";buf_year$
7220 endif
7230 buf_year=val(buf_year$)
7240 'year=val(buf_year$)
7250 'if (No=-1) then
7260 'goto Input_Born_Month:
7270 'else
7280 goto Input_Seireki2:
7290 endif
7300 case 4:
7310 'bufyear=buf_year
7320 if (No = -1) then
7330 buf_year = val(buf_year$)
7340 bufyear = buf_year
7350 sp_on 14,0
7360 goto Input_Born_Month:
7370 else
7380 goto Input_Seireki2:
7390 endif
7400 end select
7410 endif
7420 '=========================
7430 'bg2　キャンセルボタン
7440 '=========================
7450 if (bg2 = 2) then
7460 select case count2
7470 case 0:
7480 'Okボタンを押したときの処理
7490 if (No = -1) then
7500 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
7510 'count = 0
7520 locate 2,3
7530 color rgb(255,255,255)
7540 print "                                      "
7550 locate 2,3
7560 if ex_info$(1) <> "JP" then
7570 print "Input Born Year?(4 dedgit):";buf_year$
7580 else
7590 print "生まれた年代（西暦4桁):";buf_year$
7600 endif
7610 '=============================
7620 'case 0:前の画面に戻る 数秘術トップメニュー
7630 '=============================
7640 sp_on 14,0:goto Kabara_TopScreen:
7650 else
7660 'count=0
7670 '(buf_year=0) then
7680 buf_year = 0:buf_year$ = string$(4,"*")
7690 goto Input_Seireki2:
7700 'endif
7710 endif
7720 case 1:
7730 if (No = -1) then
7740 count2 = 0:count = 0
7750 buf$=right$(buf_year$,1)
7760 if (val(buf$) >= 1 and val(buf$) <= 9) then
7770 buf_year$ = "****":buf_year=0
7780 color rgb(255,255,255)
7790 locate 0,3:
7800 print "                                      "
7810 locate 2,3
7820 if ex_info$(1) <> "JP" then
7830 print "Input Born Year(4 dedgit):";buf_year$
7840 else
7850 print "生まれた年代（西暦4桁):" + buf_year$
7860 endif
7870 goto Input_Seireki2:
7880 endif
7890 else
7900 endif
7910 end select
7920 endif
7930 end
7940 'Input"生れた年代(4桁,〜2025年):",year
7950 'if year > 2025 then goto Input_Seireki:
7960 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7970 '"4桁目"
7980 'bufyear4 = fix(year / 1000)
7990 '"3桁目"
8000 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
8010 '"2桁目"
8020 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
8030 '"1桁目"
8040 'bufyear1 = fix((year - ((bufyear4*
8050 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
8060 '生れた月を入力
8070 Input_Born_Month:
8080 cls 3:play "":count=0:count2=0
8090 'No=-1:Okのとき
8100 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
8110 for i=0 to 1
8120 buf_month(i)=0
8130 next i
8140 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
8150 gload Gazo$ + "Screen2.png",0,0,0
8160 gload Gazo$ + "downscreen.png",0,0,800
8170 'Init"kb:2"
8180 if ex_info$(1) <> "JP" then
8190 else
8200 '音声ファイル再生 2023.06.07
8210 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
8220 endif
8230 font 48
8240 locate 0,1
8250 '文字色：黒　 color rgb(0,0,0)
8260 if ex_info$(1) <> "JP" then
8270 '英語パート
8280 '文字色:白
8290 color rgb(255,255,255)
8300 print "Input Born Month?(1~12):" + chr$(13)
8310 '文字色:白
8320 color rgb(255,255,255)
8330 locate 2,3
8340 '文字色:白
8350 print "Your Born Month?(1~12):";buf_Month$
8360 color rgb(255,255,255)
8370 else
8380 '日本語パート
8390 color rgb(255,255,255)
8400 print "生まれた月を入れて下さい" + chr$(13)
8410 '文字色:白
8420 color rgb(255,255,255)
8430 locate 2,3
8440 '文字色:白
8450 print "生まれた月(1月~12月):";buf_Month$
8460 color rgb(255,255,255)
8470 endif
8480 'locate 4,6:print ":7"
8490 'locate 9,6:print ":8"
8500 'locate 12,6:print ":9"
8510 'locate 4,6
8520 '文字色:赤
8530 'print ":7  :8  :9" + chr$(13)
8540 'color rgb(255,255,255)
8550 'locate 4,8
8560 'print ":4  :5  :6" + chr$(13)
8570 'color rgb(255,255,255)
8580 'locate 4,10
8590 'print ":1  :2  :3" + chr$(13)
8600 'locate 4,12
8610 'print "    :0"
8620 'locate 12,12
8630 'color rgb(255,0,0)
8640 'print ":Ok"
8650 sp_on 4,0: sp_on 5,0:sp_on 6,0
8660 sp_on 7,0:sp_on 8,0:sp_on 9,0
8670 sp_on 10,0:sp_on 11,0:sp_on 12,0
8680 sp_on 13,0:sp_on 14,1
8690 Input_Born_Month2:
8700 key$="":bg=0:y=0:y2=0:bg2=0
8710 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
8720 key$ = inkey$
8730 bg = strig(1)
8740 y = stick(1)
8750 y2 = stick(0)
8760 bg2 = strig(0)
8770 pause 200
8780 wend
8790 '十字キー　ここから
8800 '上の矢印　または、十字キー上
8810 if ((y = -1) or (key$ = chr$(30))) then
8820 select case No
8830 'No=-1:okのとき:初期の状態
8840 '0kボタンから３に移動
8850 '上に行く 処理
8860 case -1:
8870 No=3:sp_on 12,1:sp_on 14,0:BEEP
8880 pause 200:goto Input_Born_Month2:
8890 '選択肢:3
8900 '3ボタンから 6に移動
8910 case 3:
8920 No=6:sp_on 12,0:sp_on 11,1:beep
8930 pause 200:goto Input_Born_Month2:
8940 '6ボタンから ９に移動
8950 case 6:
8960 No=9:sp_on 10,1:sp_on 11,0:beep
8970 pause 200:goto Input_Born_Month2:
8980 '6ボタンから ９に移動　ここまで
8990 '9で上を押して何もしない
9000 case 9:
9010 '何もしない
9020 No=9
9030 beep:pause 200:goto Input_Born_Month2:
9040 '9で上を押しても何もしない　ここまで
9050 '上　 0ボタンから2ボタン
9060 'sp_on 6,1:1
9070 'sp_on 8,1:5
9080 'sp_on 7,1:7
9090 case 0:
9100 No=2:sp_on 13,0:sp_on 9,1:beep
9110 pause 200:goto Input_Born_Month2:
9120 '上  0ボタンから2ボタン　ここまで
9130 '2から５になる 上
9140 case 2:
9150 No=5:sp_on 8,1:sp_on 9,0:beep
9160 pause 200:goto Input_Born_Month2:
9170 case 5:
9180 No=8:sp_on 7,1:sp_on 8,0:beep
9190 pause 200:goto Input_Born_Month2:
9200 case 8:
9210 beep:pause 200:goto Input_Born_Month2:
9220 case 1:
9230 No=4:sp_on 5,1:sp_on 6,0:beep
9240 pause 200:goto Input_Born_Month2:
9250 case 4:
9260 No=7:sp_on 4,1:sp_on 5,0:beep
9270 pause 200:goto Input_Born_Month2:
9280 case 7:
9290 beep:pause 200:goto Input_Born_Month2:
9300 end select
9310 endif
9320 '左３　ここまで
9330 '下の矢印
9340 '中央 2
9350 if ((y=1) or (key$ = chr$(31))) then
9360 select case No
9370 '9から６に下げる
9380 case 9:
9390 No=6:sp_on 11,1:sp_on 10,0:beep
9400 pause 200:goto Input_Born_Month2:
9410 '6から３に下げる
9420 case 6:
9430 No=3:sp_on 12,1:sp_on 11,0:beep
9440 pause 200:goto Input_Born_Month2:
9450 '3から０ｋに変える
9460 case 3:
9470 No=-1:sp_on 14,1:sp_on 12,0:beep
9480 pause 200:goto Input_Born_Month2:
9490 'Okから下のボタンを押しても何もしない
9500 case -1:
9510 beep:pause 200:goto Input_Born_Month2:
9520 case 8:
9530 No=5:sp_on 8,1:sp_on 7,0:beep
9540 pause 200:goto Input_Born_Month2:
9550 case 5:
9560 No=2:sp_on 9,1:sp_on 8,0:beep
9570 pause 200:goto Input_Born_Month2:
9580 case 2:
9590 No=0:sp_on 13,1:sp_on 9,0:beep
9600 pause 200:goto Input_Born_Month2:
9610 case 0:
9620 beep:pause 200:goto Input_Born_Month2:
9630 case 7:
9640 No=4:sp_on 5,1:sp_on 4,0:beep
9650 pause 200:goto Input_Born_Month2:
9660 case 4:
9670 No=1:sp_on 6,1:sp_on 5,0:beep
9680 pause 200:goto Input_Born_Month2:
9690 case 1:
9700 beep:pause 200:goto Input_Born_Month2:
9710 end select
9720 endif
9730 '左へボタン 十字キー　左　or 　カーソル左
9740 if ((y2 = -1) or (key$ = chr$(29))) then
9750 select case No
9760 'Ok ボタン  Okから　左　０に行く
9770 case -1:
9780 No=0:sp_on 13,1:sp_on 14,0
9790 beep:pause 200:goto Input_Born_Month2:
9800 '0 ボタン  左　何もしない
9810 case 0:
9820 beep:pause 200:goto Input_Born_Month2:
9830 case 3:
9840 No=2:sp_on 9,1:sp_on 12,0:beep
9850 pause 200:goto Input_Born_Month2:
9860 case 2:
9870 No=1:sp_on 6,1:sp_on 9,0:beep
9880 pause 200:goto Input_Born_Month2:
9890 case 1:
9900 beep:pause 200:goto Input_Born_Month2:
9910 case 6:
9920 No=5:sp_on 8,1:sp_on 11,0:beep
9930 pause 200:goto Input_Born_Month2:
9940 case 5:
9950 No=4:sp_on 5,1:sp_on 8,0:beep
9960 pause 200:goto Input_Born_Month2:
9970 case 4:
9980 beep:pause 200:goto Input_Born_Month2:
9990 case 9:
10000 No=8:sp_on 7,1:sp_on 10,0:beep
10010 pause 200:goto Input_Born_Month2:
10020 case 8:
10030 No=7:sp_on 4,1:sp_on 7,0:beep
10040 pause 200:goto Input_Born_Month2:
10050 case 7:
10060 beep:pause 200:goto Input_Born_Month2:
10070 end select
10080 endif
10090 '右  十字キー　右　or カーソル　右
10100 if ((y2 = 1) or (key$ = chr$(28))) then
10110 select case No
10120 '0ボタンからokボタン右に移動
10130 case 0:
10140 No=-1:sp_on 14,1:sp_on 13,0:beep
10150 pause 200:goto Input_Born_Month2:
10160 '0ボタンからokボタン 右に移動　ここまで
10170 'OKボタンで右を押して何もしない
10180 case -1:
10190 beep:pause 200:goto Input_Born_Month2:
10200 case 1:
10210 No=2:sp_on 9,1:sp_on 6,0:beep
10220 pause 200:goto Input_Born_Month2:
10230 case 2:
10240 No=3:sp_on 12,1:sp_on 9,0:beep
10250 pause 200:goto Input_Born_Month2:
10260 case 3:
10270 beep:pause 200:goto Input_Born_Month2:
10280 case 4:
10290 No=5:sp_on 8,1:sp_on 5,0:beep
10300 pause 200:goto Input_Born_Month2:
10310 case 5:
10320 No=6:sp_on 11,1:sp_on 8,0:beep
10330 pause 200:goto Input_Born_Month2:
10340 case 7:
10350 No=8:sp_on 7,1:sp_on 4,0:beep
10360 pause 200:goto Input_Born_Month2:
10370 case 8:
10380 No=9:sp_on 10,1:sp_on 7,0:beep
10390 pause 200:goto Input_Born_Month2:
10400 case 9:
10410 beep:pause 200:goto Input_Born_Month2:
10420 case 6:
10430 beep:pause 200:goto Input_Born_Month2:
10440 end select
10450 'Okから右ボタンを押して何もしない ここまで
10460 endif
10470 '十字キー　ここまで
10480 '右の丸ボタン　決定キー
10490 if ((bg=2) or (key$=chr$(13))) then
10500 select case count
10510 case 0:
10520 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
10530 if (buf_month = 1 or buf_month = 2) then
10540 locate 2,3
10550 color RGB(255,255,255)
10560 if ex_info$(1) <> "JP" then
10570 print "Input Born Month(1~12):";buf_Month$
10580 else
10590 print "生まれた月(1月~12月):";buf_Month2$
10600 endif
10610 else
10620 locate 2,3
10630 color Rgb(255,255,255)
10640 if ex_info$(1) <> "JP" then
10650 print "Input Born Month(1~12):";buf_Month$
10660 else
10670 print "生まれた月(1月~12月):";buf_Month$
10680 endif
10690 endif
10700 goto Input_Born_Month2:
10710 case 1:
10720 count = 2:c = No
10730 c = val(buf_Month$)
10740 if (No = -1) then
10750 'if No=1 or No=2 then
10760 'endif
10770 month = buf_month
10780 buf_month=val(buf_Month$)
10790 month=buf_month
10800 '生まれた日に飛ぶ
10810 goto Input_Born_Day:
10820 else
10830 buf_month = c*10 + No
10840 buf_Month$= str$(buf_month)
10850 locate 2,3
10860 color Rgb(255,255,255)
10870 if ex_info$(1) <> "JP" then
10880 print "Input Born Month(1~12):";buf_Month$
10890 else
10900 print "生まれた月(1月~12月):";buf_Month$
10910 endif
10920 goto Input_Born_Month2:
10930 endif
10940 case 2:
10950 count=3:count2=1
10960 'c= val(buf_Month$)
10970 'buf_month = c*10 + No
10980 'buf_Month$ = str$(buf_month)
10990 'locate 2,3
11000 'print "生まれた月(1月～12月):";buf_Month$
11010 'goto Input_Born_Month2:
11020 'case 3:
11030 'count=4
11040 'b=val(buf_month$)
11050 'buf_month=c*10+No
11060 'buf_Month$=str$(buf_month)
11070 'locate 2,3
11080 'print "生まれた月(1月～12月):";buf_Month$
11090 'buf_month=val(buf_Month$)
11100 'year=val(buf_year$)
11110 if (No=-1) then
11120 goto Input_Born_Day:
11130 else
11140 'goto Input_Born_Month2:
11150 endif
11160 'case 4:
11170 'bufyear=buf_year
11180 'if (No=-1) then
11190 'buf_month = val(buf_Month$)
11200 'month = buf_month
11210 'sp_on 14,0
11220 'goto Input_Born_Day:
11230 'else
11240 'goto Input_Born_Month2:
11250 'endif
11260 end select
11270 endif
11280 '左の丸ボタン　キャンセル
11290 if (bg2=2) then
11300 select case count2
11310 case 0:
11320 if (No = -1) then
11330 buf_month=0:buf_Month$="**"
11340 count2=0:count=0
11350 locate 0,3:print "                                   "
11360 if ex_info$(1) <> "JP" then
11370 print "Input Born Month?(1~12):";buf_Month$
11380 else
11390 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
11400 endif
11410 'if (buf_month > 1) then
11420 sp_on 14,0:goto Input_Born_Month2:
11430 'goto rewrite:
11440 else
11450 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
11460 buf_month=0:buf_Month$="**"
11470 locate 2,3
11480 color rgb(255,255,255)
11490 print "                                       "
11500 goto rewrite:
11510 if (No>2) then
11520 ui_msg"値が範囲外です。"
11530 goto rewrite:
11540 endif
11550 endif
11560 'endif
11570 rewrite:
11580 locate 2,3
11590 color rgb(255,255,255)
11600 print "                                      "
11610 locate 2,3
11620 if ex_info$(1) <> "JP" then
11630 print "Input Born Month?(1~12):";buf_Month$
11640 else
11650 print "生まれた月(1月~12月):";buf_Month$
11660 endif
11670 goto Input_Born_Month2:
11680 endif
11690 case 1:
11700 buf_Month$="**":buf_month=0
11710 if No=-1 then
11720 count2=2:count=0
11730 locate 0,3
11740 print "                                      "
11750 locate 2,3:
11760 if ex_info$(1) <> "JP" then
11770 print "Input Born Month?(1~12):";buf_Month$
11780 else
11790 print "生まれた月(1月~12月):" + buf_Month$
11800 endif
11810 goto Input_Born_Month2:
11820 endif
11830 case 2:
11840 sp_on 14,0:goto Input_Seireki:
11850 end select
11860 endif
11870 'endif
11880 end
11890 'end
11900 '生れた日を入力
11910 Input_Born_Day:
11920 '生まれた日入力
11930 cls 3:play ""
11940 'No=-1:Okのとき
11950 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
11960 for i=0 to 1
11970 buf_day(i)=0
11980 next i
11990 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
12000 gload Gazo$ + "Screen2.png",0,0,0
12010 gload Gazo$ + "downscreen.png",0,0,800
12020 'Init"kb:2"
12030 if ex_info$(1) <> "JP" then
12040 '英語音声パート
12050 else
12060 '日本語音声パート
12070 '音声ファイル再生 2023.06.07
12080 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
12090 endif
12100 font 48
12110 if ex_info$(1) <> "JP" then
12120 locate 0,1
12130 '文字色：黒　 color rgb(0,0,0)
12140 color rgb(255,255,255)
12150 print "Input Born day?" + chr$(13)
12160 color rgb(255,255,255)
12170 locate 2,3
12180 print "Born Day(1~31):";buf_Day$
12190 else
12200 locate 0,1
12210 '文字色：黒　 color rgb(0,0,0)
12220 color rgb(255,255,255)
12230 print "生まれた日を入れて下さい" + chr$(13)
12240 color rgb(255,255,255)
12250 locate 2,3
12260 print "生まれた日(1日~31日):";buf_Day$
12270 endif
12280 'color rgb(255,255,255)
12290 'locate 4,6:print ":7"
12300 'locate 9,6:print ":8"
12310 'locate 12,6:print ":9"
12320 'locate 4,6
12330 'print ":7  :8  :9" + chr$(13)
12340 '=======================
12350 'テンキー　色　白　決定ボタン　青
12360 '=======================
12370 'color rgb(255,255,255)
12380 'locate 4,8
12390 'print ":4  :5  :6" + chr$(13)
12400 'color rgb(255,255,255)
12410 'locate 4,10
12420 'print ":1  :2  :3" + chr$(13)
12430 'locate 4,12
12440 'print "    :0"
12450 'locate 12,12
12460 'color rgb(255,0,0)
12470 'print ":Ok"
12480 sp_on 4,0: sp_on 5,0:sp_on 6,0
12490 sp_on 7,0:sp_on 8,0:sp_on 9,0
12500 sp_on 10,0:sp_on 11,0:sp_on 12,0
12510 sp_on 13,0:sp_on 14,1
12520 Input_Born_Day2:
12530 key$="":bg=0:y=0:y2=0:bg2=0
12540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12550 key$ = inkey$
12560 bg = strig(1)
12570 y = stick(1)
12580 y2 = stick(0)
12590 bg2 = strig(0)
12600 pause 200
12610 wend
12620 '十字キー　ここから
12630 '上の矢印　または、十字キー上
12640 if ((y = -1) or (key$ = chr$(30))) then
12650 select case No
12660 'No=-1:okのとき:初期の状態
12670 '0kボタンから３に移動
12680 '上に行く 処理
12690 case -1:
12700 No=3:sp_on 12,1:sp_on 14,0:beep
12710 pause 200:goto Input_Born_Day2:
12720 '選択肢:3
12730 '3ボタンから 6に移動
12740 case 3:
12750 No=6:sp_on 12,0:sp_on 11,1:beep
12760 pause 200:goto Input_Born_Day2:
12770 '6ボタンから ９に移動
12780 case 6:
12790 No=9:sp_on 10,1:sp_on 11,0:beep
12800 pause 200:goto Input_Born_Day2:
12810 '6ボタンから ９に移動　ここまで
12820 '9で上を押して何もしない
12830 case 9:
12840 '何もしない
12850 No=9
12860 beep:pause 200:goto Input_Born_Day2:
12870 '9で上を押しても何もしない　ここまで
12880 '上　 0ボタンから2ボタン
12890 'sp_on 6,1:1
12900 'sp_on 8,1:5
12910 'sp_on 7,1:7
12920 case 0:
12930 No=2:sp_on 13,0:sp_on 9,1:beep
12940 pause 200:goto Input_Born_Day2:
12950 '上  0ボタンから2ボタン　ここまで
12960 '2から５になる 上
12970 case 2:
12980 No=5:sp_on 8,1:sp_on 9,0:beep
12990 pause 200:goto Input_Born_Day2:
13000 case 5:
13010 No=8:sp_on 7,1:sp_on 8,0:beep
13020 pause 200:goto Input_Born_Day2:
13030 case 8:
13040 beep:pause 200:goto Input_Born_Day2:
13050 case 1:
13060 No=4:sp_on 5,1:sp_on 6,0:beep
13070 pause 200:goto Input_Born_Day2:
13080 case 4:
13090 No=7:sp_on 4,1:sp_on 5,0:beep
13100 pause 200:goto Input_Born_Day2:
13110 case 7:
13120 beep:pause 200:goto Input_Born_Day2:
13130 end select
13140 endif
13150 '左３　ここまで
13160 '下の矢印
13170 '中央 2
13180 if ((y=1) or (key$ = chr$(31))) then
13190 select case No
13200 '9から６に下げる
13210 case 9:
13220 No=6:sp_on 11,1:sp_on 10,0:beep
13230 pause 200:goto Input_Born_Day2:
13240 '6から３に下げる
13250 case 6:
13260 No=3:sp_on 12,1:sp_on 11,0:beep
13270 pause 200:goto Input_Born_Day2:
13280 '3から０ｋに変える
13290 case 3:
13300 No=-1:sp_on 14,1:sp_on 12,0:beep
13310 pause 200:goto Input_Born_Day2:
13320 'Okから下のボタンを押しても何もしない
13330 case -1:
13340 beep:pause 200:goto Input_Born_Day2:
13350 case 8:
13360 No=5:sp_on 8,1:sp_on 7,0:beep
13370 pause 200:goto Input_Born_Day2:
13380 case 5:
13390 No=2:sp_on 9,1:sp_on 8,0:beep
13400 pause 200:goto Input_Born_Day2:
13410 case 2:
13420 No=0:sp_on 13,1:sp_on 9,0:beep
13430 pause 200:goto Input_Born_Day2:
13440 case 0:
13450 beep:pause 200:goto Input_Born_Day2:
13460 case 7:
13470 No=4:sp_on 5,1:sp_on 4,0:beep
13480 pause 200:goto Input_Born_Day2:
13490 case 4:
13500 No=1:sp_on 6,1:sp_on 5,0:beep
13510 pause 200:goto Input_Born_Day2:
13520 case 1:
13530 beep:pause 200:goto Input_Born_Day2:
13540 end select
13550 endif
13560 '左へボタン 十字キー　左　or 　カーソル左
13570 if ((y2 = -1) or (key$ = chr$(29))) then
13580 select case No
13590 'Ok ボタン  Okから　左　０に行く
13600 case -1:
13610 No=0:sp_on 13,1:sp_on 14,0:beep
13620 pause 200:goto Input_Born_Day2:
13630 '0 ボタン  左　何もしない
13640 case 0:
13650 beep:pause 200:goto Input_Born_Day2:
13660 case 3:
13670 No=2:sp_on 9,1:sp_on 12,0:beep
13680 pause 200:goto Input_Born_Day2:
13690 case 2:
13700 No=1:sp_on 6,1:sp_on 9,0:beep
13710 pause 200:goto Input_Born_Day2:
13720 case 1:
13730 pause 200:goto Input_Born_Day2:
13740 case 6:
13750 No=5:sp_on 8,1:sp_on 11,0:beep
13760 pause 200:goto Input_Born_Day2:
13770 case 5:
13780 No=4:sp_on 5,1:sp_on 8,0:beep
13790 pause 200:goto Input_Born_Day2:
13800 case 4:
13810 beep:pause 200:goto Input_Born_Day2:
13820 case 9:
13830 No=8:sp_on 7,1:sp_on 10,0:beep
13840 pause 200:goto Input_Born_Day2:
13850 case 8:
13860 No=7:sp_on 4,1:sp_on 7,0:beep
13870 pause 200:goto Input_Born_Day2:
13880 case 7:
13890 beep:pause 200:goto Input_Born_Day2:
13900 end select
13910 endif
13920 '右  十字キー　右　or カーソル　右
13930 if ((y2 = 1) or (key$ = chr$(28))) then
13940 select case No
13950 '0ボタンからokボタン右に移動
13960 case 0:
13970 No=-1:sp_on 14,1:sp_on 13,0:beep
13980 pause 200:goto Input_Born_Day2:
13990 '0ボタンからokボタン 右に移動　ここまで
14000 'OKボタンで右を押して何もしない
14010 case -1:
14020 beep:pause 200:goto Input_Born_Day2:
14030 case 1:
14040 No=2:sp_on 9,1:sp_on 6,0:beep
14050 pause 200:goto Input_Born_Day2:
14060 case 2:
14070 No=3:sp_on 12,1:sp_on 9,0:beep
14080 pause 200:goto Input_Born_Day2:
14090 case 3:
14100 beep:pause 200:goto Input_Born_Day2:
14110 case 4:
14120 No=5:sp_on 8,1:sp_on 5,0:beep
14130 pause 200:goto Input_Born_Day2:
14140 case 5:
14150 No=6:sp_on 11,1:sp_on 8,0:beep
14160 pause 200:goto Input_Born_Day2:
14170 case 7:
14180 No=8:sp_on 7,1:sp_on 4,0:beep
14190 pause 200:goto Input_Born_Day2:
14200 case 8:
14210 No=9:sp_on 10,1:sp_on 7,0:beep
14220 pause 200:goto Input_Born_Day2:
14230 case 9:
14240 beep:pause 200:goto Input_Born_Day2:
14250 case 6:
14260 beep:pause 200:goto Input_Born_Day2:
14270 end select
14280 'Okから右ボタンを押して何もしない ここまで
14290 endif
14300 '十字キー　ここまで
14310 '右の丸ボタンを押したとき
14320 if ((bg = 2) or (key$ = chr$(13))) then
14330 'count :決定ボタンを押した回数
14340 select case (count mod 3)
14350 '1桁目入力
14360 case 0:
14370 count = 1:
14380 if (No = -1) then
14390 '1桁目　OKでは何もしない
14400 'goto check:
14410 else
14420 'ok以外のボタンを押したとき
14430 buf_day = No:buf_Day$ = str$(No)
14440 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
14450 locate 2,3
14460 color RGB(255,255,255)
14470 if ex_info$(1) <> "JP" then
14480 print "Input Born Day(1~31):";buf_Day2$
14490 else
14500 print "生まれた日(1日~31日):";buf_Day2$
14510 endif
14520 endif
14530 check:
14540 if (No >= 1 and No <= 9) then
14550 sp_on 14,0
14560 goto Input_Born_Day2:
14570 else
14580 sp_on 14,0
14590 goto complate:
14600 endif
14610 case 1:
14620 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
14630 count = 2:
14640 'locate 2,3
14650 'color RGB(255,255,255)
14660 'print "生まれた日(1日~31日):";buf_Day$
14670 'Okボタンを押したときの処理
14680 '入力値　10未満のとき
14690 'c = buf_day
14700 if (No = -1) then
14710 'c=buf_day
14720 ' buf_day = c
14730 'buf_Day$ = str$(buf_day)
14740 '10以下のとき
14750 if (buf_day < 10) then
14760 sp_on 14,0
14770 goto complate:
14780 endif
14790 else
14800 'c = No
14810 buf_day = c * 10 + No
14820 'buf_day = c
14830 buf_Day$ =str$(buf_day)
14840 locate 2,3
14850 color Rgb(255,255,255)
14860 if ex_info$(1) <> "JP" then
14870 print "Input Born Day(1~31):";buf_Day$
14880 else
14890 print "生まれた日(1日~31日):";buf_Day$
14900 endif
14910 goto Input_Born_Day2:
14920 endif
14930 '生まれた日　2桁目の数字　or 1桁の数字 + ok
14940 case 2:
14950 count=0
14960 'c=val(buf_Day$)
14970 'buf_day=c*10+No
14980 'buf_Day$=str$(buf_day)
14990 'day=buf_day
15000 'locate 2,3
15010 'print "生まれた日(1日〜31日):";buf_Day$
15020 'No=-1:ok ボタンを押したとき
15030 if (No = -1) then
15040 if ((buf_day > 0) and (buf_day < 32)) then
15050 sp_on 14,0
15060 goto complate:
15070 else
15080 goto Input_Born_Day2:
15090 endif
15100 'Okボタン以外を押したとき
15110 else
15120 c=val(buf_Day$)
15130 buf_day = c * 10 + No
15140 buf_Day$ = str$(buf_day)
15150 locate 2,3
15160 if ex_info$(1) <> "JP" then
15170 print "Input Born Day?(1~31):";buf_Day$
15180 else
15190 print "生まれた日(1日~31日):";buf_Day$
15200 endif
15210 'goto Input_Born_Day2:
15220 endif
15230 case 3:
15240 count = 4
15250 c=val(buf_day$)
15260 buf_day = c * 10 + No
15270 buf_day$ = str$(buf_day)
15280 locate 2,3
15290 if ex_info$(1) <> "JP" then
15300 print "Input Born Day?(1~31):";buf_Day$
15310 else
15320 print "生まれた日を入れてください(1日~31日):";buf_Day$
15330 endif
15340 year = val(buf_year$)
15350 if (No = -1) then
15360 'goto Input_Born_Day:
15370 sp_on 14,0:No=0
15380 goto complate:
15390 else
15400 goto Input_Born_Month2:
15410 endif
15420 'case 4:
15430 'bufyear=buf_year
15440 'if (No=-1) then
15450 'buf_day = val(buf_day$)
15460 'bufday = buf_day
15470 'sp_on 14,0
15480 'goto complate:
15490 'else
15500 'goto Input_Born_Day2:
15510 'endif
15520 end select
15530 endif
15540 if (bg2=2) then
15550 select case count2
15560 case 0:
15570 if (No=-1) then
15580 'buf_day=0:buf_Day$="**"
15590 if (buf_day>=1 and buf_day<=31) then
15600 count=0:No=0
15610 buf_day=0:buf_Day$="**"
15620 'goto rewrite_day:
15630 else
15640 buf_day=0:buf_Day$="**"
15650 ui_msg"値が範囲外です"
15660 endif
15670 goto rewrite_day:
15680 else
15690 goto rewrite_day:
15700 endif
15710 rewrite_day:
15720 locate 2,3
15730 color rgb(255,255,255)
15740 print "                                      "
15750 locate 2,3
15760 if ex_info$(1)<>"JP" then
15770 print "Born Day(1~31):";buf_Day$
15780 else
15790 print "生まれた日(1日~31日):";buf_Day$
15800 endif
15810 goto Input_Born_Day2:
15820 end select
15830 endif
15840 '--------------------------Input_Born_Day:-------------------------------------------
15850 complate:
15860 suhiNo = buf_year + buf_month + buf_day
15870 'if (suhiNo < 1000) then
15880 a1 = fix(suhiNo / 1000)
15890 a2 = fix(suhiNo/100) - (a1 * 10)
15900 a3 = fix(suhiNo/10)-(a1*100+a2*10)
15910 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
15920 'endif
15930 bufsuhiNo = a1+a2+a3+a4
15940 recomp:
15950 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
15960 'bufsuhiNo=a6
15970 goto Kabara_Result_Screen:
15980 else
15990 a5 = fix(bufsuhiNo / 10)
16000 a6 = bufsuhiNo - a5 * 10
16010 bufsuhiNo = a6 + a5
16020 if (bufsuhiNo = 10) then
16030 bufsuhiNo=1
16040 endif
16050 goto Kabara_Result_Screen:
16060 endif
16070 Kabara_Result_Screen:
16080 cls 3:
16090 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
16100 gload Gazo$ + "downscreen.png",0,0,800
16110 init "kb:4"
16120 '
16130 play ""
16140 select case (bufsuhiNo)
16150 case 1:
16160 play Voice$ + "Result_Kabara_1_20230607.mp3"
16170 case 2:
16180 play Voice$ + "Result_Kabara_2_20231112.mp3"
16190 case 3:
16200 play Voice$ + "Result_Kabara_3_20230607.mp3"
16210 case 4:
16220 play Voice$ + "Result_Kabara_4_20230607.mp3"
16230 case 5:
16240 play Voice$ + "Result_Kabara_5_20231112.mp3"
16250 case 6:
16260 play Voice$ + "Result_Kabara_6_20230607.mp3"
16270 case 7:
16280 play Voice$ + "Result_Kabara_7_20230607.mp3"
16290 case 8:
16300 play Voice$ + "Result_Kabara_8_20230607.mp3"
16310 case 9:
16320 play Voice$ + "Result_Kabara_9_20230607.mp3"
16330 case 11:
16340 play Voice$ + "Result_Kabara_11_20230607.mp3"
16350 case 22:
16360 play Voice$ + "Result_Kabara_22_20230607.mp3"
16370 case 33:
16380 play Voice$ + "Result_Kabara_33_20230607.mp3"
16390 end select
16400 font 48
16410 key$ = "":bg = 0:bg2=0
16420 'COLOR rgb(255,255,255)
16430 'print "●診断結果"+chr$(13)
16440 locate 0,2
16450 if ex_info$(1)<>"JP" then
16460 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
16470 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
16480 locate 0,15:
16490 color rgb(255,255,255)
16500 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
16510 else
16520 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
16530 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
16540 locate 0,15:
16550 color rgb(255,255,255)
16560 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
16570 endif
16580 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16590 key$ = inkey$
16600 bg = strig(1)
16610 bg2 = strig(0)
16620 pause 200
16630 wend
16640 'Enter or JoyPad right
16650 if ((key$ = chr$(13)) or (bg = 2)) then
16660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
16670 endif
16680 if ((bg2=2)) then
16690 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
16700 endif
16710 'suhiNo1 = fix(bufsuhiNo / 10)
16720 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
16730 'bufsuhiNo = suhiNo1 + suhiNo2
16740 'goto recomp:
16750 'endif
16760 'print chr$(13)
16770 'color rgb(255,0,0)
16780 'print"トップ:エンターキー,S or s:保存"+chr$(13)
16790 'key$ = input$(1)
16800 'if key$ = chr$(13) then goto Main_Screen:
16810 '"Menu2 占いのルール"
16820 Suhi_Rule:
16830 '数秘術占いルールの表示
16840 cls 3:play "":init"kb:4"
16850 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
16860 gload Gazo$ + "downscreen.png",0,0,800
16870 'cls 3:
16880 'line (0,0) - (1500,60),rgb(0,0,255),bf
16890 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
16900 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
16910 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
16920 locate 0,2:Font 48
16930 print chr$(13) + chr$(13)
16940 color rgb(0,0,0)
16950 print "誕生日を単数変換します";chr$(13)
16960 print "数字の範囲:1~９,11,22,33";chr$(13)
16970 print "例:1973年11月22日の場合";chr$(13)
16980 print "1+9+7+3+11+22=53 ";chr$(13)
16990 print "→ 5 + 3 = 8" + chr$(13)
17000 print "故に8が数秘ナンバーになります";chr$(13)
17010 locate 0,15
17020 color rgb(255,255,255)
17030 print "ジョイパッドの右を押してください"
17040 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17050 '"key$ = input$(1)"
17060 '"if key$ = chr$(13) then goto Main_Screen:"
17070 suhi_rule_selection:
17080 bg = 0:key$ = "":bg2=0
17090 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
17100 bg = strig(1)
17110 key$ = inkey$
17120 bg2=strig(0)
17130 pause 200
17140 wend
17150 if ((bg = 2) or (key$ = chr$(13))) then
17160 pause 200:cls 4:goto Main_Screen:
17170 endif
17180 if (bg2=2) then
17190 play "":pause 200
17200 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17210 goto suhi_rule_selection:
17220 endif
17230 '2.設定
17240 '2-1.トップ画面に戻る
17250 Setting:
17260 cls 3:init"kb:4":font 48:No=0
17270 play ""
17280 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17290 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
17300 gload Gazo$ + "downscreen.png",0,0,800
17310 print chr$(13) + chr$(13) + chr$(13)
17320 color rgb(255,255,255):sp_on 0,1:
17330 print "番号を選んでください" + chr$(13)
17340 print " :1.トップ画面に戻る"+ chr$(13)
17350 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
17360 print " :3.未実装" + chr$(13)
17370 print " :4.未実装" + chr$(13)
17380 color rgb(0,0,0)
17390 locate 1,15:print "1.トップ画面に戻るを選択"
17400 Setting_Selection:
17410 y=0:key$="":bg=0:bg2=0
17420 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
17430 y=stick(1)
17440 key$ = inkey$
17450 bg=strig(1)
17460 bg2 = strig(0)
17470 pause 200
17480 wend
17490 if ((bg = 2) or (key$ = chr$(13))) then
17500 select case No
17510 case 0:
17520 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
17530 case 1:
17540 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
17550 end select
17560 endif
17570 if (bg2 = 2) then
17580 play "":pause 200
17590 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17600 goto Setting_Selection:
17610 endif
17620 if ((y=1) or (y=-1)) then
17630 select case No
17640 case 0:
17650 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
17660 case else:
17670 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
17680 end select
17690 'ase else:
17700 endif
17710 '3.Help
17720 '3-1.ルールの表示
17730 '3-2.バージョン
17740 '3-3.トップに戻る
17750 Help:
17760 cls 3:Font 48:No=0
17770 play ""
17780 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
17790 gload Gazo$ + "downscreen.png",0,0,800
17800 color rgb(255,255,255)
17810 print chr$(13)+chr$(13)+chr$(13)
17820 print "番号を選んでください"+chr$(13)
17830 print " :1.ルールの表示" + chr$(13)
17840 print " :2.バージョンの表示" + chr$(13)
17850 print " :3.参考文献" + chr$(13)
17860 print " :4.トップ画面に戻る" + chr$(13)
17870 color rgb(0,0,0)
17880 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
17890 locate 1,15
17900 print "                                      "
17910 locate 1,15
17920 print "1.ルールの表示を選択"
17930 init"kb:4"
17940 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
17950 Help_Select:
17960 bg=0:key$="":y=0:bg2=0
17970 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
17980 y = stick(1)
17990 key$ = inkey$
18000 bg = strig(1)
18010 bg2 = strig(0)
18020 pause 200
18030 wend
18040 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
18050 if ((y = 1) or (key$ = chr$(31))) then
18060 select case No
18070 case 0:
18080 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
18090 case 1:
18100 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18110 case 2:
18120 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
18130 case 3:
18140 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
18150 end select
18160 endif
18170 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
18180 if ((y = -1) or (key$ = chr$(30))) then
18190 select case No
18200 case 0:
18210 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
18220 case 1:
18230 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
18240 case 2:
18250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
18260 case 3:
18270 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18280 end select
18290 endif
18300 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
18310 if ((bg = 2) or (key$ = chr$(13))) then
18320 select case No
18330 case 0:
18340 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule:
18350 case 1:
18360 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
18370 case 2:
18380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
18390 '3:Top画面に行く
18400 case 3:
18410 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
18420 end select
18430 endif
18440 if (bg2 = 2) then
18450 play "":pause 200
18460 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
18470 goto Help_Select:
18480 endif
18490 '数秘術占い　トップ画面
18500 Kabara_TopScreen:
18510 cls 3:play ""
18520 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
18530 gload Gazo$ + "downscreen.png",0,0,800
18540 play Voice$ + "KabaraTop_Selection_20230721.mp3"
18550 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
18560 init"kb:4":No=0
18570 color rgb(255,255,255)
18580 print chr$(13)+chr$(13)+chr$(13)
18590 print "番号を選んでください" + chr$(13)
18600 print " :1.数秘術占い" + chr$(13)
18610 print " :2.バーズアイグリット" + chr$(13)
18620 print " :3.相性占い" + chr$(13)
18630 print " :4.トップ画面に戻る" + chr$(13)
18640 color rgb(0,0,0)
18650 locate 1,15:print "1.数秘術占いを選択"
18660 Kabara_TopScreen2:
18670 y = 0:bg = 0:key$ = "":bg2 = 0
18680 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
18690 key$ = inkey$
18700 bg = strig(1)
18710 y = stick(1)
18720 bg2 = strig(0)
18730 pause 200
18740 wend
18750 '選択ボタン
18760 'カーソル下 　と　ジョイパッド　の下
18770 if ((y = 1) or (key$ = chr$(31))) then
18780 select case No
18790 case 2:
18800 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
18810 case 3:
18820 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
18830 case 0:
18840 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
18850 case 1:
18860 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
18870 end select
18880 endif
18890 'カーソル　上  or  ジョイパッド　上
18900 if ((y=-1) or (key$=chr$(30))) then
18910 select case No
18920 case 0:
18930 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
18940 case 1:
18950 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
18960 case 2:
18970 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
18980 case 3:
18990 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
19000 end select
19010 endif
19020 '決定ボタン
19030 'ジョイパッドの右　or  Enter key
19040 if ((bg = 2) or (key$ = chr$(13))) then
19050 select case No
19060 case 0:
19070 '1.数秘術占い
19080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
19090 case 3:
19100 '4.メイン画面にいく
19110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
19120 case 1:
19130 '2.バースアイグリッド
19140 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
19150 case 2:
19160 '3.相性占い
19170 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
19180 end select
19190 endif
19200 if (bg2 = 2) then
19210 play "":pause 200
19220 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
19230 goto Kabara_TopScreen2:
19240 endif
19250 '1.バースアイグリット　名入力
19260 Inputname1:
19270 cls 3:init"kb:4":font 48
19280 bg=0:key$="":y=0:No=-1:name1$="":i=1
19290 gload Gazo$ + "Selection.png",1,10,100
19300 'Line 1:☓
19310 'A:選択肢
19320 sp_def 15,(50,250),16,16
19330 'B:選択肢
19340 sp_def 16,(200,250),16,16
19350 'C:選択肢
19360 sp_def 17,(350,250),16,16
19370 'D:選択肢
19380 sp_def 18,(500,250),16,16
19390 'E:選択肢
19400 sp_def 19,(630,250),16,16
19410 'F:選択肢
19420 sp_def 20,(780,250),16,16
19430 'G:選択肢
19440 sp_def 21,(930,250),16,16
19450 'Line 2:☓
19460 'H:選択肢
19470 sp_def 22,(50,345),16,16
19480 'I:選択肢
19490 sp_def 23,(200,345),16,16
19500 'J:選択肢
19510 sp_def 24,(350,345),16,16
19520 'K:選択肢
19530 sp_def 25,(500,345),16,16
19540 'L:選択肢
19550 sp_def 26,(630,345),16,16
19560 'M:選択肢
19570 sp_def 27,(780,345),16,16
19580 'N:選択肢
19590 sp_def 28,(930,345),16,16
19600 'Line 3:☓
19610 'O:選択肢
19620 sp_def 29,(50,440),16,16
19630 'P:選択肢
19640 sp_def 30,(200,440),16,16
19650 'Q:選択肢
19660 sp_def 31,(350,440),16,16
19670 'R:選択肢
19680 sp_def 32,(500,440),16,16
19690 'S:選択肢
19700 sp_def 33,(630,440),16,16
19710 'T:選択肢
19720 sp_def 34,(780,440),16,16
19730 'U:選択肢
19740 sp_def 35,(930,440),16,16
19750 'Line 4:◯
19760 'V:選択肢
19770 sp_def 36,(50,535),16,16
19780 'W:選択肢
19790 sp_def 37,(200,535),16,16
19800 'X:選択肢
19810 sp_def 38,(350,535),16,16
19820 'Y:選択肢
19830 sp_def 39,(500,535),16,16
19840 'Z:選択肢
19850 sp_def 40,(630,535),16,16
19860 'Ok:選択肢
19870 sp_def 41,(780,535),16,16
19880 'sp_def 42,(930,535),16,16
19890 'Line 1
19900 'A
19910 sp_on 15,0
19920 'B
19930 sp_on 16,0
19940 'C
19950 sp_on 17,0
19960 'D
19970 sp_on 18,0
19980 'E
19990 sp_on 19,0
20000 'F
20010 sp_on 20,0
20020 'G
20030 sp_on 21,0
20040 'Line 1
20050 'Line 2
20060 'H
20070 sp_on 22,0
20080 'I
20090 sp_on 23,0
20100 'J
20110 sp_on 24,0
20120 'K
20130 sp_on 25,0
20140 'L
20150 sp_on 26,0
20160 'M
20170 sp_on 27,0
20180 'N
20190 sp_on 28,0
20200 'Line 2
20210 'Line 3
20220 'O
20230 sp_on 29,0
20240 'P
20250 sp_on 30,0
20260 'Q
20270 sp_on 31,0
20280 'R
20290 sp_on 32,0
20300 'S
20310 sp_on 33,0
20320 'T
20330 sp_on 34,0
20340 'U
20350 sp_on 35,0
20360 'Line 3
20370 'Line 4
20380 'V
20390 sp_on 36,0
20400 'W
20410 sp_on 37,0
20420 'X
20430 sp_on 38,0
20440 'Y
20450 sp_on 39,0
20460 'Z
20470 sp_on 40,0
20480 'Ok
20490 sp_on 41,1
20500 'Line 4
20510 'sp_on 42,1
20520 'Line 1
20530 'sp_put 15,(50,250),0,0
20540 'sp_put 16,(200,250),0,0
20550 'sp_put 17,(350,250),0,0
20560 'sp_put 18,(500,250),0,0
20570 'sp_put 19,(630,250),0,0
20580 'sp_put 20,(780,250),0,0
20590 'sp_put 21,(930,250),0,0
20600 'Line 2
20610 'sp_put 22,(50,345),0,0
20620 'sp_put 23,(200,345),0,0
20630 'sp_put 24,(350,345),0,0
20640 'sp_put 25,(500,345),0,0
20650 'sp_put 26,(630,345),0,0
20660 'sp_put 27,(780,345),0,0
20670 'sp_put 28,(930,345),0,0
20680 'Line 3
20690 'sp_put 29,(50,440),0,0
20700 'sp_put 30,(200,440),0,0
20710 'sp_put 31,(350,440),0,0
20720 'sp_put 32,(500,440),0,0
20730 'sp_put 33,(630,440),0,0
20740 'sp_put 34,(780,440),0,0
20750 'sp_put 35,(930,440),0,0
20760 'Line 4
20770 'sp_put 36,(50,535),0,0
20780 'sp_put 37,(200,535),0,0
20790 'sp_put 38,(350,535),0,0
20800 'sp_put 39,(500,535),0,0
20810 'sp_put 40,(630,535),0,0
20820 sp_put 41,(780,535),0,0
20830 'sp_put 42,(930,536),0,0
20840 gload Gazo$ + "Screen1.png",0,0,0
20850 color rgb(255,255,255)
20860 locate 1,3
20870 print "名前の姓をアルファベットで入力してください"
20880 locate 1,5
20890 print " A  B  C  D  E  F  G"
20900 locate 1,7
20910 print " H  I  J  K  L  M  N"
20920 locate 1,9
20930 print " O  P  Q  R  S  T  U"
20940 locate 1,11
20950 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
20960 locate 1,15:color rgb(0,0,0)
20970 print "名前の姓:" + name1$
20980 select_name1:
20990 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
21000 '有効ボタン
21010 '1.決定ボタン(bg:2)
21020 '2.Enter Key$:chr$(13)
21030 '3.カーソル上 (chr$(31))
21040 '4.カーソル　左 (chr$(29))
21050 '5.ジョイパッド　上 (y:1)
21060 '6:ジョイパッド　左 (y2:-1)
21070 '7:ジョイパッド　下 (y:-1)
21080 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
21090 key$ = inkey$
21100 'ジョイパッドの決定:bg
21110 bg = strig(1)
21120 y = stick(1)
21130 y2 = stick(0)
21140 pause 200
21150 wend
21160 '====================================
21170 'Birds Eye Grid 名前入力
21180 '入力スタイル　アルファベット入力
21190 'sp_on:　スプライトのオンオフ
21200 'sp_put :表示位置
21210 'No:ボタン番号
21220 '====================================
21230 'カーソルで下に行く
21240 if ((y=-1) or (key$=chr$(31))) then
21250 select case No
21260 '1.Ok ボタン
21270 'sp_on スプライトのオンオフ
21280 'sp_put スプライトを表示
21290 case -1:
21300 '1.アルファベット　入力ボタン
21310 '実装未完全なので終了
21320 'Ok → T ○ :No:20=T
21330 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21340 'T  → M ○
21350 case 20:
21360 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21370 'M  →　F ○
21380 case 13:
21390 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21400 'F  → Ok
21410 case 6:
21420 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
21430 end select
21440 endif
21450 '2.決定ボタン
21460 if ((key$ = chr$(13)) OR  (bg = 2)) then
21470 select case No
21480 case -1:
21490 'スプライトをOFFにする
21500 sp_on 41,0
21510 end select
21520 endif
21530 '3.カーソル　左
21540 if (key$ = chr$(29) or (y2 =-1)) then
21550 select case No
21560 'Line 4
21570 'Line 4
21580 '1.
21590 'Z:-1 :Ok ボタン
21600 'Ok → Z
21610 case -1:
21620 'Ok →　Z
21630 'Ok ボタン OFF,Z Button ON
21640 'No=26:Z
21650 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21660 '2.
21670 '26:Zボタン Z→ Y
21680 case 26:
21690 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21700 '3.
21710 '25:Yボタン  Y → X
21720 case 25:
21730 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21740 '4
21750 '24:Xボタン X → W
21760 case 24:
21770 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21780 '23:Wボタン X → W
21790 '5
21800 case 23:
21810 '22:Vボタン W → V
21820 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
21830 case 22:
21840 '-1:V→ Ok
21850 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
21860 'Line 3
21870 case 20:
21880 '33:T34  → S:33 :◯
21890 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21900 case 19:
21910 '32:S:33 → R:32 :◯
21920 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21930 case 18:
21940 '31:R:32 → Q:31 :◯
21950 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21960 '30:O → P :◯
21970 case 17:
21980 '30:Q:31 → P:30 :◯
21990 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
22000 case 16:
22010 '29:P:30 → O:29 :◯
22020 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
22030 case 15:
22040 '28:O:29 → U:21  :◯
22050 'O:OFF,U:ON
22060 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
22070 '27:U:21 → T:20  :◯
22080 case 21:
22090 'U:OFF:T:ON
22100 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
22110 'Line 2
22120 '26:M:13 → L:12 : ○
22130 case 13:
22140 'M:OFF,L:ON
22150 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
22160 '25:L:12 → K:11 : ○
22170 case 12:
22180 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
22190 '24:K:11 → J:10 : ○
22200 case 11:
22210 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
22220 '23:J:10 → I:9  : ○
22230 case 10:
22240 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
22250 '22:I:9 → H:8    :○
22260 case 9:
22270 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
22280 '21:H:8 → N:14:   :○
22290 case 8:
22300 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
22310 '20:N:14 → M:13:   :○
22320 case 14:
22330 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
22340 '●.Line 1:
22350 '19:F:20 → E:19 : ☓
22360 'F:OFF,E:ON
22370 case 6:
22380 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
22390 '18:E → D
22400 'E:OFF,D:ON
22410 case 5:
22420 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
22430 '17:D → C
22440 'D:OFF,C:ON
22450 case 4:
22460 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
22470 case 3:
22480 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
22490 case 2:
22500 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
22510 case 1:
22520 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
22530 case 7:
22540 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
22550 end select
22560 endif
22570 '上から下の方向
22580 if ((key$ = chr$(31)) or  (y = 1)) then
22590 select case No
22600 '●.1
22610 '1:A→H
22620 case 1:
22630 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
22640 '2:H→O
22650 case 8:
22660 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
22670 '3:O→V
22680 case 15:
22690 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
22700 '4:V→A
22710 case 22:
22720 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
22730 '●.2
22740 '5.B→I
22750 case 2:
22760 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
22770 '6.I→P
22780 case 9:
22790 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
22800 '7.P→W
22810 case 16:
22820 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
22830 '8.W→B
22840 case 23:
22850 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
22860 '●.3
22870 '9.C→J
22880 case 3:
22890 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
22900 '10.J→Q
22910 case 10:
22920 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
22930 '11.Q→X
22940 case 17:
22950 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
22960 '12.X→C
22970 case 24:
22980 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
22990 '●.4
23000 '13.D→K
23010 case 4:
23020 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
23030 '14.K→R
23040 case 11:
23050 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
23060 '15.R→Y
23070 case 18:
23080 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
23090 '16.Y→D
23100 case 25:
23110 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
23120 '●.5
23130 '17.E→L
23140 case 5:
23150 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
23160 '18.L→S
23170 case 12:
23180 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
23190 '19.S→Z
23200 case 19:
23210 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
23220 '20.Z→E
23230 case 26:
23240 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
23250 '●.6
23260 '21.F→M
23270 case 6:
23280 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
23290 '22.M→T
23300 case 13:
23310 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
23320 '23.T→Ok
23330 case 20:
23340 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
23350 '24.Ok→F
23360 case -1:
23370 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
23380 '●.7
23390 '25.G→N
23400 case 7:
23410 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
23420 '26.N→U
23430 case 14:
23440 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
23450 '27.U→G
23460 case 21:
23470 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
23480 end select
23490 endif
23500 '決定ボタン　で名前の姓に文字を追加。
23510 if (key$ = chr$(13) or bg = 2) then
23520 select case No
23530 'Okボタン
23540 case -1:
23550 goto Inputname2:
23560 'Aの文字
23570 case 1:
23580 'if len(n$)=0 then
23590 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
23600 'else
23610 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
23620 'endif
23630 goto select_name1:
23640 case 2:
23650 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
23660 end select
23670 endif
23680 Input_name1_Birdseye:
23690 cls 3:init "kb:2":play ""
23700 gload Gazo$ + "Input_Birtheye2.png",0,0,0
23710 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
23720 color rgb(0,0,255)
23730 locate 1,2:print "名前をアルファベットで入れてください"
23740 color rgb(0,0,0)
23750 locate 1,5:Input "名前（姓の部分）:",name1$
23760 '27.U→G
23770 'locate 1,5:print "Hit any key"
23780 n1 = len(name1$)
23790 if (n1 < 11) then
23800 for i=1 to n1
23810 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
23820 next i
23830 endif
23840 goto Inputname2:
23850 '2.グリッドアイ　姓の入力
23860 'end
23870 Inputname2:
23880 cls 3:init"kb:2":font 48:play ""
23890 gload Gazo$ + "Input_Birtheye1.png",0,0,0
23900 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
23910 color rgb(0,0,255)
23920 locate 1,2:print "名前をアルファベットで入れてください"
23930 color rgb(0,0,0)
23940 locate 1,5:Input "名前(名の部分):",name2$
23950 n2 = len(name2$)
23960 for i=1 to n2
23970 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
23980 next i
23990 '計算領域
24000 Complate:
24010 'name1
24020 for i=0 to 25
24030 for n=1 to len(name1$)
24040 if (buf_chart$(i,0) = buf_name1$(n-1)) then
24050 b = val(buf_chart$(i,1))
24060 buffer(b-1) = buffer(b-1) + 1
24070 endif
24080 next n
24090 next i
24100 'name2
24110 for i=0 to 25
24120 for n=1 to len(name2$)
24130 if (buf_chart$(i,0) = buf_name2$(n-1)) then
24140 c = val(buf_chart$(i,1))
24150 buffer(c - 1) = buffer(c - 1) + 1
24160 endif
24170 next n
24180 next i
24190 '結果表示領域
24200 Result_Birtheye1:
24210 cls 3:init"kb:4":No=0:play "":'音を止める
24220 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
24230 gload Gazo$ + "downscreen.png",0,0,800
24240 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
24250 color rgb(255,255,255)
24260 '1の表示
24270 locate 3,14:print buffer(0);
24280 '2の表示
24290 locate 3,9:print buffer(1);
24300 '3の表示
24310 locate 3,5:print buffer(2);
24320 '4の表示
24330 locate 10,14:print buffer(3);
24340 '5の表示
24350 locate 10,9:print buffer(4);
24360 '6の表示
24370 locate 10,5:print buffer(5);
24380 '7の表示
24390 locate 15,14:print buffer(6);
24400 '8の表示
24410 locate 15,9:print buffer(7);
24420 '9の表示
24430 locate 15,5:print buffer(8);
24440 'name を大文字に変換
24450 locate 5,3:print ucase$(name1$ + name2$)
24460 color rgb(0,0,0)
24470 'bg:右のボタン  ,bg2:左のボタン
24480 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
24490 bg=0:key$="":bg2=0
24500 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
24510 'Enterと決定ボタン
24520 key$ = inkey$
24530 '右ボタン:1
24540 bg = strig(1)
24550 '左の丸ボタン:0
24560 bg2=strig(0)
24570 pause 200
24580 wend
24590 if ((bg=2) or (key$=chr$(13))) then
24600 'データーをクリアしてトップ画面に行く
24610 'for i=0 to 8
24620 'buffer(i)=0
24630 'next i
24640 'for n=0 to 9
24650 'buf_name1$(n) = ""
24660 'buf_name2$(n) = ""
24670 'next n
24680 'Topに行く
24690 'goto Main_Screen:
24700 'メニューを開く
24710 'goto BirdsEye_Result2:
24720 'Menu(ui_select) リストに飛ぶ
24730 goto Result_Birtheye_List1:
24740 endif
24750 if (bg2=2) then
24760 'データーをクリアする
24770 for i=0 to 8
24780 buffer(i)=0
24790 next i
24800 for n=0 to 9
24810 buf_name1$(n)=""
24820 buf_name2$(n)=""
24830 next n
24840 goto Main_Screen:
24850 endif
24860 'goto Result_Birtheye1:
24870 'Result_Birtheye2:
24880 'cls 3:color rgb(255,255,255)
24890 'end
24900 'Memory 消去
24910 '
24920 '横のフォーカスライン
24930 BirdsEye_Result2:
24940 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
24950 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
24960 Forcus1_buffer$(2)="○"
24970 else
24980 Forcus1_buffer$(2)="☓"
24990 endif
25000 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
25010 Forcus1_buffer$(1)="○"
25020 else
25030 Forcus1_buffer$(1) = "☓"
25040 endif
25050 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
25060 Forcus1_buffer$(0)="○"
25070 else
25080 Forcus1_buffer$(0)="☓"
25090 endif
25100 gload Gazo$ + "Screen1.png",0,0,0
25110 color rgb(255,0,0):
25120 locate 1,1
25130 print "バーズアイグリッド(フォーカスライン1)"
25140 color rgb(255,255,255)
25150 locate 1,3:
25160 print "●.横のフォーカスライン"
25170 locate 1,5
25180 print "1.切れ者ライン:"+Forcus1_buffer$(2)
25190 locate 1,7
25200 print "2.調停者ライン:"+Forcus1_buffer$(1)
25210 locate 1,9
25220 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
25230 color rgb(0,0,0)
25240 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
25250 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
25260 key$ = inkey$
25270 bg = strig(1)
25280 bg2 = strig(0)
25290 pause 200
25300 wend
25310 if ((bg=2) or (key$=chr$(13))) then
25320 goto BirdsEye_Result3:
25330 endif
25340 if (bg2=2) then
25350 for i=0 to 8
25360 buffer(i)=0
25370 next i
25380 goto Main_Screen:
25390 endif
25400 BirdsEye_Result3:
25410 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
25420 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
25430 Forcus2_buffer$(2)="○"
25440 else
25450 Forcus2_buffer$(2)="☓"
25460 endif
25470 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
25480 Forcus2_buffer$(1)="○"
25490 else
25500 Forcus2_buffer$(1) = "☓"
25510 endif
25520 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
25530 Forcus2_buffer$(0)="○"
25540 else
25550 Forcus2_buffer$(0)="☓"
25560 endif
25570 gload Gazo$ + "Screen1.png",0,0,0
25580 color rgb(255,0,0):
25590 locate 1,1
25600 print "バーズアイグリッド(フォーカスライン2)"
25610 color rgb(255,255,255)
25620 locate 1,3
25630 print "●.縦のフォーカスライン"
25640 locate 1,5
25650 print "1.表現者ライン:" + Forcus2_buffer$(2)
25660 locate 1,7
25670 print "2.司令塔ライン:" + Forcus2_buffer$(1)
25680 locate 1,9
25690 print "3.指導者ライン:" + Forcus2_buffer$(0)
25700 color rgb(0,0,0)
25710 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
25720 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
25730 key$ = inkey$
25740 bg = strig(1)
25750 bg2 = strig(0)
25760 pause 200
25770 wend
25780 if ((bg = 2) or (key$ = chr$(13))) then
25790 goto BirdsEye_Result4:
25800 endif
25810 if (bg2=2) then
25820 for i=0 to 8
25830 buffer(i)=0
25840 next i
25850 goto Main_Screen:
25860 endif
25870 BirdsEye_Result4:
25880 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
25890 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
25900 Forcus3_buffer$(1) = "○"
25910 else
25920 Forcus3_buffer$(1) = "☓"
25930 endif
25940 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
25950 Forcus3_buffer$(0) = "○"
25960 else
25970 Forcus3_buffer$(0) = "☓"
25980 endif
25990 gload Gazo$ + "Screen1.png",0,0,0
26000 color rgb(255,0,0):
26010 locate 1,1
26020 print "バーズアイグリッド(フォーカスライン3)"
26030 color rgb(255,255,255)
26040 locate 1,3:
26050 print "●.斜めのフォーカスライン"
26060 locate 1,5
26070 print "1.成功者ライン:"+Forcus3_buffer$(1)
26080 locate 1,7
26090 print "2.セレブライン:"+Forcus3_buffer$(0)
26100 color rgb(0,0,0)
26110 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
26120 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
26130 key$ = inkey$
26140 bg = strig(1)
26150 bg2 = strig(0)
26160 pause 200
26170 wend
26180 if ((bg=2) or (key$=chr$(13))) then
26190 goto Result_Birtheye1:
26200 endif
26210 if (bg2=2) then
26220 'データークリア
26230 for i=0 to 8
26240 buffer(i) = 0
26250 next i
26260 goto Main_Screen:
26270 endif
26280 References1:
26290 cls 3:key$ = "":bg = 0:play "":font 48-8
26300 gload Gazo$ + "Reference1_20230703.png",0,0,0
26310 gload Gazo$ + "downscreen.png",0,0,800
26320 print chr$(13)+chr$(13)+chr$(13)
26330 color rgb(0,0,255)
26340 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
26350 print "・Author:carol Adrinne,PhD"+chr$(13)
26360 print "・出版社:幻冬舎" + chr$(13)
26370 print "・HP:www.carolAdrienne.jp/"+chr$(13)
26380 print "・ISBN:978-4-344-01394-0"+chr$(13)
26390 print "・定価:1500円 + 税"+chr$(13)
26400 color rgb(255,255,255)
26410 locate 1,18
26420 print "ジョイパッド右：次へ"
26430 while (key$ <> chr$(13) and bg <> 2)
26440 bg = strig(1)
26450 key$ = inkey$
26460 pause 200
26470 wend
26480 '
26490 if ((bg = 2) or (key$ = chr$(13))) then
26500 pause 200:goto References2:
26510 endif
26520 'ユダヤの秘儀 カバラ大占術
26530 References2:
26540 cls 3:play "":bg = 0:key$ = ""
26550 gload Gazo$ + "Reference2_20230703.png",0,0,0
26560 gload Gazo$ + "downscreen.png",0,0,800
26570 '参考文献２
26580 'カバラ大占術
26590 print chr$(13) + chr$(13) + chr$(13)
26600 color  rgb(0,0,255):font 48-8
26610 locate 1,3
26620 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
26630 print "・著者：浅野　八郎" + chr$(13)
26640 print "・出版社:NON BOOK" + chr$(13)
26650 print "・ISBN:4-396-10364-6" + chr$(13)
26660 print "・定価:829円 + 税"
26670 color rgb(255,255,255)
26680 locate 1,18
26690 print "ジョイパッド右：トップへ行く"
26700 while ((key$ <> chr$(13)) and (bg <> 2))
26710 bg = strig(1)
26720 key$ = inkey$
26730 pause 200
26740 wend
26750 if ((bg = 2) or (key$ = chr$(13))) then
26760 pause 200:goto Main_Screen:
26770 endif
26780 end
26790 '1.数秘術　トップ画面
26800 Kabara_First_Top:
26810 cls 3:color rgb(255,255,255):play ""
26820 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
26830 gload Gazo$ + "downscreen.png",0,0,800
26840 No=0:init"kb:4"
26850 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
26860 print chr$(13);chr$(13)
26870 color rgb(255,255,255)
26880 locate 3,4:No=0
26890 print "番号選んでください" + chr$(13)
26900 print " :1.数秘術占い" + chr$(13)
26910 print " :2.トップ画面に戻る" + chr$(13)
26920 color rgb(0,0,0)
26930 sp_on 0,1
26940 locate 1,15:print "1.数秘術番号を求めるを選択"
26950 'KeyBord:true
26960 'Joy Pad:true
26970 '上、下:true
26980 '
26990 'ｂｇ：決定ボタン
27000 'カーソル　上
27010 'カーソル　下
27020 Kabara_First_Top2:
27030 key$ = "":bg = 0:y = 0:
27040 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
27050 key$ = inkey$
27060 bg = strig(1)
27070 y = stick(1)
27080 'PauseでCPUを休める
27090 pause 5
27100 wend
27110 '1.カーソル　下 処理 chr$(31)
27120 'カーソル　下
27130 if ((key$ = chr$(31)) or (y = 1)) then
27140 select case No
27150 '
27160 case 1:
27170 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
27180 case 0:
27190 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
27200 'case 2:
27210 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
27220 end select
27230 endif
27240 '2.カーソル　上 処理 chr$(30)
27250 if ((key$ = chr$(30)) or (y = -1)) then
27260 select case No
27270 case 0:
27280 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
27290 case 1:
27300 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
27310 'case 2:
27320 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
27330 end select
27340 endif
27350 '3.決定 処理  bg:2 or Enter key:chr$(13)
27360 if ((bg = 2) or (key$ = chr$(13))) then
27370 select case No
27380 case 0:
27390 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
27400 goto Kabara_TopScreen:
27410 'case 1:
27420 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
27430 case 1:
27440 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
27450 end select
27460 endif
27470 '
27480 'Kabara 相性占い トップ画面
27490 Kabara_Aishou_Top:
27500 cls 3:y=0:key$="":bg=0:No=0
27510 play ""
27520 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
27530 gload Gazo$ + "downscreen.png",0,0,800
27540 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
27550 print chr$(13) + chr$(13)
27560 locate 0,4:color rgb(255,255,255)
27570 'print "Ok"
27580 '
27590 print "番号を選んでください" + chr$(13)
27600 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
27610 print " :2.ビジネスの相性占い" + chr$(13)
27620 print " :3.トップ画面に戻る" + chr$(13)
27630 sp_on 0,1:sp_on 1,0:sp_on 2,0
27640 color rgb(0,0,0)
27650 locate 1,15:print "1.男女2人の相性占いを選択"
27660 Kabara_Aishou_Top2:
27670 key$ = "":y = 0:bg = 0:
27680 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
27690 'ジョイパッド(右) ,十字キー (上下)
27700 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
27710 y = stick(1)
27720 key$ = inkey$
27730 bg = strig(1)
27740 pause 200
27750 wend
27760 'カーソル　下 or 十字キー　下
27770 if ((key$ = chr$(31)) or (y = 1)) then
27780 select case No
27790 '選択肢　1 - 2に変更
27800 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
27810 'ok
27820 case 0:
27830 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
27840 '選択肢　2 - 3に変更
27850 case 1:
27860 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
27870 'リリース時 case 2コメント解除
27880 case 2:
27890 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
27900 case else:
27910 goto Kabara_Aishou_Top2:
27920 end select
27930 endif
27940 '十字キー　上　、カーソル　上
27950 if ((key$ = chr$(30)) or (y = -1)) then
27960 select case No
27970 case 0:
27980 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
27990 case 1:
28000 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
28010 case 2:
28020 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
28030 case else:
28040 goto Kabara_Aishou_Top2:
28050 end select
28060 endif
28070 '十字キー　上下:選択
28080 'ジョイパッド 右:決定
28090 if ((bg = 2) or (key$ = chr$(13))) then
28100 select case No
28110 '1.男女の相性
28120 case 0:
28130 '男女の相性占い(未実装)トップ画面に飛ぶ
28140 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
28150 '2ビジネスの相性
28160 case 1:
28170 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
28180 case 2:
28190 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
28200 end select
28210 endif
28220 '0.男女の相性　トップ画面　ここから
28230 Danjyo_Aisyou_Top:
28240 cls 3:y=0:key$="":bg=0:No=0
28250 play ""
28260 gload Gazo$ + "Screen1.png",0,0,0
28270 gload Gazo$ + "downscreen.png",0,0,800
28280 print chr$(13) + chr$(13)
28290 locate 0,4:color rgb(255,255,255)
28300 'print "Ok"
28310 '
28320 print "番号を選んでください" + chr$(13)
28330 print " :1.自分と異性の相性(未実装)" + chr$(13)
28340 print " :2.男女2人の相性" + chr$(13)
28350 print " :3.トップ画面に戻る" + chr$(13)
28360 sp_on 0,1:sp_on 1,0:sp_on 2,0
28370 color rgb(0,0,0)
28380 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
28390 Danjyo_Aisyou_Top2:
28400 key$ = "":y = 0:bg = 0:
28410 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
28420 'ジョイパッド(右) ,十字キー (上下)
28430 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
28440 y = stick(1)
28450 key$ = inkey$
28460 bg = strig(1)
28470 pause 200
28480 wend
28490 'カーソル　下 or 十字キー　下
28500 if ((key$ = chr$(31)) or (y = 1)) then
28510 select case No
28520 '選択肢　1 - 2に変更
28530 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
28540 'ok
28550 case 0:
28560 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
28570 '選択肢　2 - 3に変更
28580 case 1:
28590 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
28600 'リリース時 case 2コメント解除
28610 case 2:
28620 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
28630 case else:
28640 goto Kabara_Aishou_Top2:
28650 end select
28660 endif
28670 '十字キー　上　、カーソル　上
28680 if ((key$ = chr$(30)) or (y = -1)) then
28690 select case No
28700 case 0:
28710 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
28720 case 1:
28730 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
28740 case 2:
28750 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
28760 case else:
28770 goto Kabara_Aishou_Top2:
28780 end select
28790 endif
28800 '十字キー　上下:選択
28810 'ジョイパッド 右:決定
28820 if ((bg = 2) or (key$ = chr$(13))) then
28830 select case No
28840 '1.自分と異性の相性
28850 case 0:
28860 '未実装
28870 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
28880 '2男女の相性 男性の名前入力に飛ぶ
28890 case 1:
28900 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
28910 case 2:
28920 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
28930 end select
28940 endif
28950 '0.男女の相性　トップ画面　ここまで
28960 '1.男女の相性 ここから
28970 '1-1.男性の名前を入力
28980 Danjyo_Aisyou_Input_Name_male:
28990 No=0:color RGB(255,255,255)
29000 '入力:キーボード
29010 cls 3:init "kb:2"
29020 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
29030 gload Gazo$ + "downscreen.png",0,0,800
29040 for i=0 to 3
29050 buf_male_year(i)=0
29060 next i
29070 play "":color rgb(255,0,0):male_name$ = ""
29080 locate 0,1
29090 print "男性の相性" + chr$(13) + chr$(13)
29100 color rgb(255,255,255):
29110 locate 0,3
29120 print "男性の相性を求めます。男性の名前を" + chr$(13)
29130 print "入れてください" + chr$(13)
29140 locate 0,15:color rgb(0,0,0)
29150 Input "男性の名前:",male_name$
29160 '-------------------------------------------
29170 '1-2:男性の生まれた年代
29180 Danjyo_Aisyou_Input_Born_Year:
29190 No=0:color RGB(255,255,255)
29200 cls 3:init "kb:4"
29210 gload Gazo$ + "Screen1.png",0,0,0
29220 gload Gazo$ + "downscreen.png",0,0,800
29230 play "":color rgb(255,0,0)
29240 '-------------------------------------------
29250 font 48
29260 locate 0,1
29270 '文字色：黒　 color rgb(0,0,0)
29280 color rgb(255,255,255)
29290 print "男性の生まれた年代を入れて下さい" + chr$(13)
29300 color rgb(255,255,255)
29310 locate 1,3
29320 print "男性の生まれた年代(西暦4桁):";buf_male_year$
29330 color rgb(255,255,255)
29340 'locate 4,6:print ":7"
29350 'locate 9,6:print ":8"
29360 'locate 12,6:print ":9"
29370 locate 4,6
29380 print ":7  :8  :9" + chr$(13)
29390 color rgb(255,255,255)
29400 locate 4,8
29410 print ":4  :5  :6" + chr$(13)
29420 color rgb(255,255,255)
29430 locate 4,10
29440 print ":1  :2  :3" + chr$(13)
29450 locate 4,12
29460 print "    :0"
29470 locate 12,12
29480 color rgb(0,0,255)
29490 print ":Ok"
29500 sp_on 4,0: sp_on 5,0:sp_on 6,0
29510 sp_on 7,0:sp_on 8,0:sp_on 9,0
29520 sp_on 10,0:sp_on 11,0:sp_on 12,0
29530 sp_on 13,0:sp_on 14,1
29540 '-------------------------------------------------------------------------------------
29550 Danjyo_Aisyou_Input_Male_Born_Year2:
29560 key$="":bg=0:y=0:y2=0:bg2=0:
29570 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
29580 key$ = inkey$
29590 bg = strig(1)
29600 y = stick(1)
29610 y2 = stick(0)
29620 bg2=strig(0)
29630 pause 200
29640 wend
29650 '十字キー　ここから
29660 '上の矢印　または、十字キー上
29670 if ((y = -1) or (key$ = chr$(30))) then
29680 select case No
29690 'No=-1:okのとき:初期の状態
29700 '0kボタンから３に移動
29710 '上に行く 処理
29720 case -1:
29730 No=3:sp_on 12,1:sp_on 14,0
29740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29750 '選択肢:3
29760 '3ボタンから 6に移動
29770 case 3:
29780 No=6:sp_on 12,0:sp_on 11,1
29790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29800 '6ボタンから ９に移動
29810 case 6:
29820 No=9:sp_on 10,1:sp_on 11,0
29830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29840 '6ボタンから ９に移動　ここまで
29850 '9で上を押して何もしない
29860 case 9:
29870 '何もしない
29880 No=9
29890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29900 '9で上を押しても何もしない　ここまで
29910 '上　 0ボタンから2ボタン
29920 'sp_on 6,1:1
29930 'sp_on 8,1:5
29940 'sp_on 7,1:7
29950 case 0:
29960 No=2:sp_on 13,0:sp_on 9,1:
29970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29980 '上  0ボタンから2ボタン　ここまで
29990 '2から５になる 上
30000 case 2:
30010 No=5:sp_on 8,1:sp_on 9,0:
30020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30030 case 5:
30040 No=8:sp_on 7,1:sp_on 8,0
30050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30060 case 8:
30070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30080 case 1:
30090 No=4:sp_on 5,1:sp_on 6,0
30100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30110 case 4:
30120 No=7:sp_on 4,1:sp_on 5,0
30130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30140 case 7:
30150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30160 end select
30170 endif
30180 '左３　ここまで
30190 '下の矢印
30200 '中央 2
30210 if ((y=1) or (key$ = chr$(31))) then
30220 select case No
30230 '9から６に下げる
30240 case 9:
30250 No=6:sp_on 11,1:sp_on 10,0
30260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30270 '6から３に下げる
30280 case 6:
30290 No=3:sp_on 12,1:sp_on 11,0
30300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30310 '3から０ｋに変える
30320 case 3:
30330 No=-1:sp_on 14,1:sp_on 12,0
30340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30350 'Okから下のボタンを押しても何もしない
30360 case -1:
30370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30380 case 8:
30390 No=5:sp_on 8,1:sp_on 7,0
30400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30410 case 5:
30420 No=2:sp_on 9,1:sp_on 8,0
30430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30440 case 2:
30450 No=0:sp_on 13,1:sp_on 9,0
30460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30470 case 0:
30480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30490 case 7:
30500 No=4:sp_on 5,1:sp_on 4,0
30510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30520 case 4:
30530 No=1:sp_on 6,1:sp_on 5,0
30540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30550 case 1:
30560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30570 end select
30580 endif
30590 '左へボタン 十字キー　左　or 　カーソル左
30600 if ((y2 = -1) or (key$ = chr$(29))) then
30610 select case No
30620 'Ok ボタン  Okから　左　０に行く
30630 case -1:
30640 No=0:sp_on 13,1:sp_on 14,0
30650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30660 '0 ボタン  左　何もしない
30670 case 0:
30680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30690 case 3:
30700 No=2:sp_on 9,1:sp_on 12,0:
30710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30720 case 2:
30730 No=1:sp_on 6,1:sp_on 9,0:
30740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30750 case 1:
30760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30770 case 6:
30780 No=5:sp_on 8,1:sp_on 11,0
30790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30800 case 5:
30810 No=4:sp_on 5,1:sp_on 8,0
30820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30830 case 4:
30840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30850 case 9:
30860 No=8:sp_on 7,1:sp_on 10,0
30870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30880 case 8:
30890 No=7:sp_on 4,1:sp_on 7,0
30900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30910 case 7:
30920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
30930 end select
30940 endif
30950 '右  十字キー　右　or カーソル　右
30960 if ((y2 = 1) or (key$ = chr$(28))) then
30970 select case No
30980 '0ボタンからokボタン右に移動
30990 case 0:
31000 No=-1:sp_on 14,1:sp_on 13,0
31010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31020 '0ボタンからokボタン 右に移動　ここまで
31030 'OKボタンで右を押して何もしない
31040 case -1:
31050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31060 case 1:
31070 No=2:sp_on 9,1:sp_on 6,0
31080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31090 case 2:
31100 No=3:sp_on 12,1:sp_on 9,0
31110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31120 case 3:
31130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31140 case 4:
31150 No=5:sp_on 8,1:sp_on 5,0
31160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31170 case 5:
31180 No=6:sp_on 11,1:sp_on 8,0
31190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31200 case 7:
31210 No=8:sp_on 7,1:sp_on 4,0
31220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31230 case 8:
31240 No=9:sp_on 10,1:sp_on 7,0
31250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31260 case 9:
31270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31280 case 6:
31290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
31300 end select
31310 'Okから右ボタンを押して何もしない ここまで
31320 endif
31330 '十字キー　ここまで
31340 '==============================
31350 'ここから
31360 '==============================
31370 if ((bg = 2) or (key$ = chr$(13))) then
31380 select case count
31390 case 0:
31400 count = 1
31410 if (No = -1) then
31420 count = 0:No=0
31430 buf_male_year(0) = No
31440 'Okボタンを押したとき
31450 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31460 else
31470 'Okボタン以外が押されたとき
31480 if (No >= 1 and No <= 2) then
31490 buf_year$="":buf_year$ = str$(No) + "***"
31500 buf_year = No:a= No
31510 buf_Jyoushi_Born_Day(0) = No
31520 locate 1,3
31530 color rgb(255,255,255)
31540 print "男性の生まれた年代(西暦4桁):";buf_year$
31550 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31560 else
31570 count=0
31580 ui_msg"数字が範囲外になります。"
31590 buf_year$="":buf_year=0
31600 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31610 endif
31620 endif
31630 case 1:
31640 count = 2
31650 if (No = -1) then
31660 count = 1
31670 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31680 else
31690 buf_year = a * 10 + No
31700 b=buf_year
31710 buf_year$ = str$(buf_year) + "**"
31720 buf_male_year(0)=buf_year
31730 locate 1,3
31740 color rgb(255,255,255)
31750 print "                                                                "
31760 locate 1,3
31770 print "男性の生まれた年代(西暦4桁):" + buf_year$
31780 'if (No = -1) then
31790 'count=1
31800 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31810 endif
31820 case 2:
31830 count=3
31840 if (No=-1) then
31850 count =2
31860 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31870 else
31880 buf_year = b * 10 + No
31890 c=buf_year
31900 buf_year$ = str$(buf_year) + "*"
31910 buf_male_year(0) = buf_year
31920 locate 1,3
31930 color rgb(255,255,255)
31940 print "                                        "
31950 locate 1,3
31960 print "男性の生まれた年代(西暦4桁):";buf_year$
31970 goto Danjyo_Aisyou_Input_Male_Born_Year2:
31980 endif
31990 case 3:
32000 count=4
32010 if (No = -1) then
32020 No=0
32030 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32040 else
32050 buf_year = c * 10 + No
32060 buf_year$ = str$(buf_year)
32070 buf_male_year(0) = buf_year
32080 locate 1,3
32090 color RGB(255,255,255)
32100 print "                                      "
32110 locate 1,3
32120 print "男性の生まれた年代(西暦4桁):";buf_year$
32130 buf_year=val(buf_year$)
32140 'year=val(buf_year$)
32150 'if (No=-1) then
32160 'goto Input_Born_Month:
32170 'else
32180 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32190 endif
32200 case 4:
32210 'bufyear=buf_year
32220 if (No=-1) then
32230 buf_year = val(buf_year$)
32240 buf_male_year(0)=buf_year
32250 sp_on 14,0:No=0
32260 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32270 else
32280 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32290 endif
32300 end select
32310 endif
32320 '===========================
32330 'ここまでを部下のところにコピーする.
32340 '===========================
32350 if (bg2 = 2) then
32360 select case count2
32370 case 0:
32380 if (No = -1) then
32390 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
32400 count=0
32410 locate 1,3
32420 color rgb(255,255,255)
32430 print "                                      "
32440 locate 1,3
32450 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
32460 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32470 else
32480 '(buf_year=0) then
32490 buf_male_year=0:buf_male_year$="****"
32500 locate 1,3
32510 print "                                       "
32520 locate 1,3
32530 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
32540 goto Danjyo_Aisyou_Input_Male_Born_Year2:
32550 'endif
32560 endif
32570 end select
32580 endif
32590 '-------生まれた年代　男性-------------
32600 '-------生まれた月　男性-------------
32610 '1-2:男性の生まれた月
32620 Danjyo_Aisyou_Input_Male_Born_Month:
32630 cls 3:play "":count=0:count2=0
32640 'No=-1:Okのとき
32650 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
32660 for i=0 to 1
32670 buf_male_month(i)=0
32680 next i
32690 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
32700 gload Gazo$ + "Screen1.png",0,0,0
32710 gload Gazo$ + "downscreen.png",0,0,800
32720 'Init"kb:4"
32730 '音声ファイル再生 2023.06.07
32740 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
32750 font 48
32760 locate 0,1
32770 '文字色：黒　 color rgb(0,0,0)
32780 '文字色:白
32790 color rgb(255,255,255)
32800 print "男性の生まれた月を入れて下さい" + chr$(13)
32810 '文字色:白
32820 color rgb(255,255,255)
32830 locate 1,3
32840 '文字色:白
32850 print "男性の生まれた月(1月~12月):"+buf_male_Month$
32860 color rgb(255,255,255)
32870 'locate 4,6:print ":7"
32880 'locate 9,6:print ":8"
32890 'locate 12,6:print ":9"
32900 locate 4,6
32910 '文字色:赤
32920 print ":7  :8  :9" + chr$(13)
32930 color rgb(255,255,255)
32940 locate 4,8
32950 print ":4  :5  :6" + chr$(13)
32960 color rgb(255,255,255)
32970 locate 4,10
32980 print ":1  :2  :3" + chr$(13)
32990 locate 4,12
33000 print "    :0"
33010 locate 12,12
33020 color rgb(0,0,255)
33030 print ":Ok"
33040 sp_on 4,0: sp_on 5,0:sp_on 6,0
33050 sp_on 7,0:sp_on 8,0:sp_on 9,0
33060 sp_on 10,0:sp_on 11,0:sp_on 12,0
33070 sp_on 13,0:sp_on 14,1
33080 '----------------------------------------------------------------------------------------
33090 Danjyo_Aisyou_Input_Male_Born_Month2:
33100 key$="":bg=0:y=0:y2=0:bg2=0
33110 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33120 key$ = inkey$
33130 bg = strig(1)
33140 y = stick(1)
33150 y2 = stick(0)
33160 bg2 = strig(0)
33170 pause 200
33180 wend
33190 '十字キー　ここから
33200 '上の矢印　または、十字キー上
33210 if ((y = -1) or (key$ = chr$(30))) then
33220 select case No
33230 'No=-1:okのとき:初期の状態
33240 '0kボタンから３に移動
33250 '上に行く 処理
33260 case -1:
33270 No=3:sp_on 12,1:sp_on 14,0
33280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33290 '選択肢:3
33300 '3ボタンから 6に移動
33310 case 3:
33320 No=6:sp_on 12,0:sp_on 11,1
33330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33340 '6ボタンから ９に移動
33350 case 6:
33360 No=9:sp_on 10,1:sp_on 11,0
33370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33380 '6ボタンから ９に移動　ここまで
33390 '9で上を押して何もしない
33400 case 9:
33410 '何もしない
33420 No=9
33430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33440 '9で上を押しても何もしない　ここまで
33450 '上　 0ボタンから2ボタン
33460 'sp_on 6,1:1
33470 'sp_on 8,1:5
33480 'sp_on 7,1:7
33490 case 0:
33500 No=2:sp_on 13,0:sp_on 9,1:
33510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33520 '上  0ボタンから2ボタン　ここまで
33530 '2から５になる 上
33540 case 2:
33550 No=5:sp_on 8,1:sp_on 9,0:
33560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33570 case 5:
33580 No=8:sp_on 7,1:sp_on 8,0
33590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33600 case 8:
33610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33620 case 1:
33630 No=4:sp_on 5,1:sp_on 6,0
33640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33650 case 4:
33660 No=7:sp_on 4,1:sp_on 5,0
33670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33680 case 7:
33690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33700 end select
33710 endif
33720 '左３　ここまで
33730 '下の矢印
33740 '中央 2
33750 if ((y=1) or (key$ = chr$(31))) then
33760 select case No
33770 '9から６に下げる
33780 case 9:
33790 No=6:sp_on 11,1:sp_on 10,0
33800 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
33810 '6から３に下げる
33820 case 6:
33830 No=3:sp_on 12,1:sp_on 11,0
33840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33850 '3から０ｋに変える
33860 case 3:
33870 No=-1:sp_on 14,1:sp_on 12,0
33880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33890 'Okから下のボタンを押しても何もしない
33900 case -1:
33910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33920 case 8:
33930 No=5:sp_on 8,1:sp_on 7,0
33940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33950 case 5:
33960 No=2:sp_on 9,1:sp_on 8,0
33970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33980 case 2:
33990 No=0:sp_on 13,1:sp_on 9,0
34000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34010 case 0:
34020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34030 case 7:
34040 No=4:sp_on 5,1:sp_on 4,0
34050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34060 case 4:
34070 No=1:sp_on 6,1:sp_on 5,0
34080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34090 case 1:
34100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34110 end select
34120 endif
34130 '左へボタン 十字キー　左　or 　カーソル左
34140 if ((y2 = -1) or (key$ = chr$(29))) then
34150 select case No
34160 'Ok ボタン  Okから　左　０に行く
34170 case -1:
34180 No=0:sp_on 13,1:sp_on 14,0
34190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34200 '0 ボタン  左　何もしない
34210 case 0:
34220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34230 case 3:
34240 No=2:sp_on 9,1:sp_on 12,0:
34250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34260 case 2:
34270 No=1:sp_on 6,1:sp_on 9,0:
34280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34290 case 1:
34300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34310 case 6:
34320 No=5:sp_on 8,1:sp_on 11,0
34330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34340 case 5:
34350 No=4:sp_on 5,1:sp_on 8,0
34360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34370 case 4:
34380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34390 case 9:
34400 No=8:sp_on 7,1:sp_on 10,0
34410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34420 case 8:
34430 No=7:sp_on 4,1:sp_on 7,0
34440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34450 case 7:
34460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34470 end select
34480 endif
34490 '右  十字キー　右　or カーソル　右
34500 if ((y2 = 1) or (key$ = chr$(28))) then
34510 select case No
34520 '0ボタンからokボタン右に移動
34530 case 0:
34540 No=-1:sp_on 14,1:sp_on 13,0
34550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34560 '0ボタンからokボタン 右に移動　ここまで
34570 'OKボタンで右を押して何もしない
34580 case -1:
34590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34600 case 1:
34610 No=2:sp_on 9,1:sp_on 6,0
34620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34630 case 2:
34640 No=3:sp_on 12,1:sp_on 9,0
34650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34660 case 3:
34670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34680 case 4:
34690 No=5:sp_on 8,1:sp_on 5,0
34700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34710 case 5:
34720 No=6:sp_on 11,1:sp_on 8,0
34730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34740 case 7:
34750 No=8:sp_on 7,1:sp_on 4,0
34760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34770 case 8:
34780 No=9:sp_on 10,1:sp_on 7,0
34790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34800 case 9:
34810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34820 case 6:
34830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
34840 end select
34850 'Okから右ボタンを押して何もしない ここまで
34860 endif
34870 '十字キー　ここまで
34880 '右の丸ボタン + Enter key 決定キー
34890 if ((bg=2) or (key$=chr$(13))) then
34900 select case count
34910 case 0:
34920 if (No=-1) then No=0
34930 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
34940 if (buf_male_month > 1 and buf_male_month < 10)  then
34950 buf_male_Month$ = str$(buf_male_month)
34960 'buf_month=No
34970 endif
34980 if (buf_male_month = 1)  then
34990 buf_male_Month$ = str$(buf_male_month) + "*"
35000 'c=buf_month
35010 endif
35020 locate 1,3
35030 print "                                     "
35040 color RGB(255,255,255)
35050 locate 1,3
35060 print "男性の生まれた月(1月~12月):" + buf_male_Month$
35070 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35080 case 1:
35090 count = 2:
35100 'c = val(buf_Month$)
35110 if (No = -1) then
35120 'count=0
35130 No=0
35140 month=buf_male_month
35150 buf_male_month=val(buf_male_Month$)
35160 month=buf_male_month
35170 buf_Jyoushi_Born_Day(1)=month
35180 '生まれた日に飛ぶ
35190 goto Danjyo_Aisyou_Input_Male_Born_Day:
35200 else
35210 buf_male_month = c*10 + No
35220 'if (buf_month = 1) then
35230 'buf_Month$ = str$(buf_month)
35240 'endif
35250 buf_male_Month$ = str$(buf_male_month)
35260 buf_Jyoushi_Born_Day(1) = buf_male_month
35270 locate 0,3
35280 print "                                           "
35290 locate 1,3
35300 color Rgb(255,255,255)
35310 print "男性の生まれた月(1月~12月):" + buf_male_Month$
35320 goto Danjyo_Aisyou_Input_Male_Born_Month2:
35330 endif
35340 case 2:
35350 '==================================
35360 '何もしない
35370 'coun = 2
35380 '==================================
35390 'c= val(buf_Month$)
35400 'buf_month = c*10 + No
35410 'buf_Month$ = str$(buf_month)
35420 'locate 2,3
35430 'print "上司の生まれた月(1月～12月):";buf_Month$
35440 'goto Jyoushi_Input_Born_Month2:
35450 'case 3:
35460 'count=4
35470 'b=val(buf_month$)
35480 'buf_month=c*10+No
35490 'buf_Month$=str$(buf_month)
35500 'locate 2,3
35510 'print "上司の生まれた月(1月～12月):";buf_Month$
35520 'buf_month=val(buf_Month$)
35530 'year=val(buf_year$)
35540 if (No=-1) then
35550 No=0
35560 goto Danjyo_Aisyou_Input_Male_Born_Day:
35570 else
35580 goto Danjyo_Aisyou_Input_Male_Born_Day2:
35590 endif
35600 'case 4:
35610 'bufyear=buf_year
35620 'if (No=-1) then
35630 'buf_month = val(buf_Month$)
35640 'month = buf_month
35650 'sp_on 14,0
35660 'goto Input_Born_Day:
35670 'else
35680 'goto Input_Born_Month2:
35690 'endif
35700 end select
35710 endif
35720 '左の丸ボタン　キャンセル
35730 if (bg2=2) then
35740 select case count2
35750 case 0:
35760 if (No = -1) then
35770 buf_male_month=0:buf_male_Month$="**"
35780 count=0
35790 'goto rewrite2:
35800 else
35810 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
35820 buf_male_month = 0:buf_male_Month$ = "**"
35830 locate 0,3
35840 color rgb(255,255,255)
35850 print "                                       "
35860 goto rewrite2:
35870 if (No>12) then
35880 ui_msg"値が範囲外です。"
35890 goto rewrite2:
35900 endif
35910 endif
35920 endif
35930 rewrite2:
35940 locate 2,3
35950 color rgb(255,255,255)
35960 print "                                      "
35970 locate 2,3
35980 print "男性の生まれた月(1月~12月):"+buf_male_Month$
35990 goto Danjyo_Aisyou_Input_Male_Born_Month2:
36000 end select
36010 'endif
36020 endif
36030 end
36040 '-------生まれた月　男性 ここまで-------------
36050 '-------生まれた日　男性 ここから-------------
36060 Danjyo_Aisyou_Input_Male_Born_Day:
36070 cls 3:play "":count=0:count2=0
36080 'No=-1:Okのとき
36090 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
36100 for i=0 to 1
36110 buf_day(i)=0
36120 next i
36130 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
36140 gload Gazo$ + "Screen1.png",0,0,0
36150 gload Gazo$ + "downscreen.png",0,0,800
36160 'Init"kb:4"
36170 '音声ファイル再生 2023.06.07
36180 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
36190 font 48
36200 locate 0,1
36210 '文字色：黒　 color rgb(0,0,0)
36220 '文字色:白
36230 color rgb(255,255,255)
36240 print "男性の生まれた日を入れて下さい" + chr$(13)
36250 '文字色:白
36260 color rgb(255,255,255)
36270 locate 1,3
36280 '文字色:白
36290 print "男性の生まれた日(1月~31月):" + buf_Day$
36300 color rgb(255,255,255)
36310 'locate 4,6:print ":7"
36320 'locate 9,6:print ":8"
36330 'locate 12,6:print ":9"
36340 locate 4,6
36350 '文字色:赤
36360 print ":7  :8  :9" + chr$(13)
36370 color rgb(255,255,255)
36380 locate 4,8
36390 print ":4  :5  :6" + chr$(13)
36400 color rgb(255,255,255)
36410 locate 4,10
36420 print ":1  :2  :3" + chr$(13)
36430 locate 4,12
36440 print "    :0"
36450 locate 12,12
36460 color rgb(0,0,255)
36470 print ":Ok"
36480 sp_on 4,0: sp_on 5,0:sp_on 6,0
36490 sp_on 7,0:sp_on 8,0:sp_on 9,0
36500 sp_on 10,0:sp_on 11,0:sp_on 12,0
36510 sp_on 13,0:sp_on 14,1
36520 '-------------------------------------------------
36530 Danjyo_Aisyou_Input_Male_Born_Day2:
36540 key$="":bg=0:y=0:y2=0:bg2=0
36550 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
36560 key$ = inkey$
36570 bg = strig(1)
36580 y = stick(1)
36590 y2 = stick(0)
36600 bg2 = strig(0)
36610 pause 200
36620 wend
36630 '十字キー　ここから
36640 '上の矢印　または、十字キー上
36650 if ((y = -1) or (key$ = chr$(30))) then
36660 select case No
36670 'No=-1:okのとき:初期の状態
36680 '0kボタンから３に移動
36690 '上に行く 処理
36700 case -1:
36710 No=3:sp_on 12,1:sp_on 14,0
36720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36730 '選択肢:3
36740 '3ボタンから 6に移動
36750 case 3:
36760 No=6:sp_on 12,0:sp_on 11,1
36770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36780 '6ボタンから ９に移動
36790 case 6:
36800 No=9:sp_on 10,1:sp_on 11,0
36810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36820 '6ボタンから ９に移動　ここまで
36830 '9で上を押して何もしない
36840 case 9:
36850 '何もしない
36860 No=9
36870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36880 '9で上を押しても何もしない　ここまで
36890 '上　 0ボタンから2ボタン
36900 'sp_on 6,1:1
36910 'sp_on 8,1:5
36920 'sp_on 7,1:7
36930 case 0:
36940 No=2:sp_on 13,0:sp_on 9,1:
36950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36960 '上  0ボタンから2ボタン　ここまで
36970 '2から５になる 上
36980 case 2:
36990 No=5:sp_on 8,1:sp_on 9,0:
37000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37010 case 5:
37020 No=8:sp_on 7,1:sp_on 8,0
37030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37040 case 8:
37050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37060 case 1:
37070 No=4:sp_on 5,1:sp_on 6,0
37080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37090 case 4:
37100 No=7:sp_on 4,1:sp_on 5,0
37110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37120 case 7:
37130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37140 end select
37150 endif
37160 '左３　ここまで
37170 '下の矢印
37180 '中央 2
37190 if ((y=1) or (key$ = chr$(31))) then
37200 select case No
37210 '9から６に下げる
37220 case 9:
37230 No=6:sp_on 11,1:sp_on 10,0
37240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37250 '6から３に下げる
37260 case 6:
37270 No=3:sp_on 12,1:sp_on 11,0
37280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37290 '3から０ｋに変える
37300 case 3:
37310 No=-1:sp_on 14,1:sp_on 12,0
37320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37330 'Okから下のボタンを押しても何もしない
37340 case -1:
37350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37360 case 8:
37370 No=5:sp_on 8,1:sp_on 7,0
37380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37390 case 5:
37400 No=2:sp_on 9,1:sp_on 8,0
37410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37420 case 2:
37430 No=0:sp_on 13,1:sp_on 9,0
37440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37450 case 0:
37460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37470 case 7:
37480 No=4:sp_on 5,1:sp_on 4,0
37490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37500 case 4:
37510 No=1:sp_on 6,1:sp_on 5,0
37520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37530 case 1:
37540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37550 end select
37560 endif
37570 '左へボタン 十字キー　左　or 　カーソル左
37580 if ((y2 = -1) or (key$ = chr$(29))) then
37590 select case No
37600 'Ok ボタン  Okから　左　０に行く
37610 case -1:
37620 No=0:sp_on 13,1:sp_on 14,0
37630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37640 '0 ボタン  左　何もしない
37650 case 0:
37660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37670 case 3:
37680 No=2:sp_on 9,1:sp_on 12,0:
37690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37700 case 2:
37710 No=1:sp_on 6,1:sp_on 9,0:
37720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37730 case 1:
37740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37750 case 6:
37760 No=5:sp_on 8,1:sp_on 11,0
37770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37780 case 5:
37790 No=4:sp_on 5,1:sp_on 8,0
37800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37810 case 4:
37820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37830 case 9:
37840 No=8:sp_on 7,1:sp_on 10,0
37850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37860 case 8:
37870 No=7:sp_on 4,1:sp_on 7,0
37880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37890 case 7:
37900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
37910 end select
37920 endif
37930 '右  十字キー　右　or カーソル　右
37940 if ((y2 = 1) or (key$ = chr$(28))) then
37950 select case No
37960 '0ボタンからokボタン右に移動
37970 case 0:
37980 No=-1:sp_on 14,1:sp_on 13,0
37990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38000 '0ボタンからokボタン 右に移動　ここまで
38010 'OKボタンで右を押して何もしない
38020 case -1:
38030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38040 case 1:
38050 No=2:sp_on 9,1:sp_on 6,0
38060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38070 case 2:
38080 No=3:sp_on 12,1:sp_on 9,0
38090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38100 case 3:
38110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38120 case 4:
38130 No=5:sp_on 8,1:sp_on 5,0
38140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38150 case 5:
38160 No=6:sp_on 11,1:sp_on 8,0
38170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38180 case 7:
38190 No=8:sp_on 7,1:sp_on 4,0
38200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38210 case 8:
38220 No=9:sp_on 10,1:sp_on 7,0
38230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38240 case 9:
38250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38260 case 6:
38270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
38280 end select
38290 'Okから右ボタンを押して何もしない ここまで
38300 endif
38310 '十字キー　ここまで
38320 '右の丸ボタン + Enter key 決定キー
38330 if ((bg=2) or (key$=chr$(13))) then
38340 select case count
38350 case 0:
38360 if (No=-1) then No=0
38370 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
38380 if (buf_male_day > 1 and buf_male_day < 10)  then
38390 buf_male_Day$ = str$(buf_male_day)
38400 'buf_month=No
38410 endif
38420 if (buf_male_day = 1)  then
38430 buf_male_Day$ = str$(buf_male_day) + "*"
38440 'c=buf_month
38450 endif
38460 locate 1,3
38470 print "                                     "
38480 color RGB(255,255,255)
38490 locate 1,3
38500 print "男性の生まれた日(1月~31月):" + buf_male_Day$
38510 goto Danjyo_Aisyou_Input_Male_Born_Day2:
38520 case 1:
38530 count = 2:
38540 'c = val(buf_Month$)
38550 if (No = -1) then
38560 'count=0
38570 No=0
38580 day=buf_male_Day
38590 buf_male_Day=val(buf_male_Day$)
38600 day=buf_male_Day
38610 buf_Jyoushi_Born_Day(2)=day
38620 '生まれた日に飛ぶ
38630 goto Danjyo_Aisyou_Input_Male_Born_Day:
38640 else
38650 buf_male_Day = c*10 + No
38660 'if (buf_month = 1) then
38670 'buf_Month$ = str$(buf_month)
38680 'endif
38690 buf_male_Day$ = str$(buf_male_Day)
38700 buf_male_Born_Day(2) = buf_male_Day:
38710 locate 0,3
38720 print "                                           "
38730 locate 1,3
38740 color Rgb(255,255,255)
38750 print "男性の生まれた月(1月~12月):" + buf_male_Day$
38760 goto Danjyo_Aisyou_Input_Male_Born_Day2:
38770 endif
38780 case 2:
38790 '==================================
38800 '何もしない
38810 'coun = 2
38820 '==================================
38830 'c= val(buf_Month$)
38840 'buf_month = c*10 + No
38850 'buf_Month$ = str$(buf_month)
38860 'locate 2,3
38870 'print "上司の生まれた月(1月～12月):";buf_Month$
38880 'goto Jyoushi_Input_Born_Month2:
38890 'case 3:
38900 'count=4
38910 'b=val(buf_month$)
38920 'buf_month=c*10+No
38930 'buf_Month$=str$(buf_month)
38940 'locate 2,3
38950 'print "上司の生まれた月(1月～12月):";buf_Month$
38960 'buf_month=val(buf_Month$)
38970 'year=val(buf_year$)
38980 if (No=-1) then
38990 No=0
39000 goto Danjyo_Aisyou_Input_Male_Born_Day:
39010 else
39020 goto Danjyo_Aisyou_Input_Male_Born_Day2:
39030 endif
39040 'case 4:
39050 'bufyear=buf_year
39060 'if (No=-1) then
39070 'buf_month = val(buf_Month$)
39080 'month = buf_month
39090 'sp_on 14,0
39100 'goto Input_Born_Day:
39110 'else
39120 'goto Input_Born_Month2:
39130 'endif
39140 end select
39150 endif
39160 '左の丸ボタン　キャンセル
39170 if (bg2=2) then
39180 select case count2
39190 case 0:
39200 if (No = -1) then
39210 buf_male_day=0:buf_male_Day$="**"
39220 count=0
39230 'goto rewrite2:
39240 else
39250 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
39260 buf_male_day = 0:buf_male_Day$ = "**"
39270 locate 0,3
39280 color rgb(255,255,255)
39290 print "                                       "
39300 goto rewrite2:
39310 if (No>12) then
39320 ui_msg"値が範囲外です。"
39330 goto rewrite2:
39340 endif
39350 endif
39360 endif
39370 rewrite2:
39380 locate 2,3
39390 color rgb(255,255,255)
39400 print "                                      "
39410 locate 2,3
39420 print "男性の生まれた日(1月~31月):"+buf_male_Day$
39430 goto Danjyo_Aisyou_Input_Male_Born_Day2:
39440 end select
39450 'endif
39460 endif
39470 end
39480 '-------生まれた日　女性　ここまで-------------
39490 '1-1.女性の名前を入力
39500 Danjyo_Aisyou_Input_Name_female:
39510 No=0:color RGB(255,255,255)
39520 '入力:キーボード
39530 cls 3:init "kb:2"
39540 gload Gazo$ + "Screen1.png",0,0,0
39550 gload Gazo$ + "downscreen.png",0,0,800
39560 play "":color rgb(255,0,0):female_name$ = ""
39570 locate 0,1
39580 print "女性の相性" + chr$(13) + chr$(13)
39590 color rgb(255,255,255):
39600 locate 0,3
39610 print "女性の相性を求めます。男性の名前を" + chr$(13)
39620 print "入れてください" + chr$(13)
39630 locate 0,15:color rgb(0,0,0)
39640 Input "女性の名前:",female_name$
39650 '-------------------------------------------
39660 '-------生まれた年代　女性 ここから-------------
39670 Danjyo_Aisyou_Input_feMale_Born_Year:
39680 cls 3:play "":count=0:count2=0
39690 'No=-1:Okのとき
39700 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
39710 for i=0 to 1
39720 buf_day(i)=0
39730 next i
39740 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
39750 gload Gazo$ + "Screen1.png",0,0,0
39760 gload Gazo$ + "downscreen.png",0,0,800
39770 'Init"kb:4"
39780 '音声ファイル再生 2023.06.07
39790 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
39800 font 48
39810 locate 0,1
39820 '文字色：黒　 color rgb(0,0,0)
39830 '文字色:白
39840 color rgb(255,255,255)
39850 print "女性の生まれた年代を入れて下さい" + chr$(13)
39860 '文字色:白
39870 color rgb(255,255,255)
39880 locate 1,3
39890 '文字色:白
39900 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
39910 color rgb(255,255,255)
39920 'locate 4,6:print ":7"
39930 'locate 9,6:print ":8"
39940 'locate 12,6:print ":9"
39950 locate 4,6
39960 '文字色:赤
39970 print ":7  :8  :9" + chr$(13)
39980 color rgb(255,255,255)
39990 locate 4,8
40000 print ":4  :5  :6" + chr$(13)
40010 color rgb(255,255,255)
40020 locate 4,10
40030 print ":1  :2  :3" + chr$(13)
40040 locate 4,12
40050 print "    :0"
40060 locate 12,12
40070 color rgb(0,0,255)
40080 print ":Ok"
40090 sp_on 4,0: sp_on 5,0:sp_on 6,0
40100 sp_on 7,0:sp_on 8,0:sp_on 9,0
40110 sp_on 10,0:sp_on 11,0:sp_on 12,0
40120 sp_on 13,0:sp_on 14,1
40130 '---------------------------------------------
40140 Danjyo_Aisyou_Input_feMale_Born_Year2:
40150 key$="":bg=0:y=0:y2=0:bg2=0:
40160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
40170 key$ = inkey$
40180 bg = strig(1)
40190 y = stick(1)
40200 y2 = stick(0)
40210 bg2=strig(0)
40220 pause 200
40230 wend
40240 '十字キー　ここから
40250 '上の矢印　または、十字キー上
40260 if ((y = -1) or (key$ = chr$(30))) then
40270 select case No
40280 'No=-1:okのとき:初期の状態
40290 '0kボタンから３に移動
40300 '上に行く 処理
40310 case -1:
40320 No=3:sp_on 12,1:sp_on 14,0
40330 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
40340 '選択肢:3
40350 '3ボタンから 6に移動
40360 case 3:
40370 No=6:sp_on 12,0:sp_on 11,1
40380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40390 '6ボタンから ９に移動
40400 case 6:
40410 No=9:sp_on 10,1:sp_on 11,0
40420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40430 '6ボタンから ９に移動　ここまで
40440 '9で上を押して何もしない
40450 case 9:
40460 '何もしない
40470 No=9
40480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40490 '9で上を押しても何もしない　ここまで
40500 '上　 0ボタンから2ボタン
40510 'sp_on 6,1:1
40520 'sp_on 8,1:5
40530 'sp_on 7,1:7
40540 case 0:
40550 No=2:sp_on 13,0:sp_on 9,1:
40560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40570 '上  0ボタンから2ボタン　ここまで
40580 '2から５になる 上
40590 case 2:
40600 No=5:sp_on 8,1:sp_on 9,0:
40610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40620 case 5:
40630 No=8:sp_on 7,1:sp_on 8,0
40640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40650 case 8:
40660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40670 case 1:
40680 No=4:sp_on 5,1:sp_on 6,0
40690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40700 case 4:
40710 No=7:sp_on 4,1:sp_on 5,0
40720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40730 case 7:
40740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40750 end select
40760 endif
40770 '左３　ここまで
40780 '下の矢印
40790 '中央 2
40800 if ((y=1) or (key$ = chr$(31))) then
40810 select case No
40820 '9から６に下げる
40830 case 9:
40840 No=6:sp_on 11,1:sp_on 10,0
40850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40860 '6から３に下げる
40870 case 6:
40880 No=3:sp_on 12,1:sp_on 11,0
40890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40900 '3から０ｋに変える
40910 case 3:
40920 No=-1:sp_on 14,1:sp_on 12,0
40930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40940 'Okから下のボタンを押しても何もしない
40950 case -1:
40960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40970 case 8:
40980 No=5:sp_on 8,1:sp_on 7,0
40990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41000 case 5:
41010 No=2:sp_on 9,1:sp_on 8,0
41020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41030 case 2:
41040 No=0:sp_on 13,1:sp_on 9,0
41050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41060 case 0:
41070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41080 case 7:
41090 No=4:sp_on 5,1:sp_on 4,0
41100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41110 case 4:
41120 No=1:sp_on 6,1:sp_on 5,0
41130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41140 case 1:
41150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41160 end select
41170 endif
41180 '左へボタン 十字キー　左　or 　カーソル左
41190 if ((y2 = -1) or (key$ = chr$(29))) then
41200 select case No
41210 'Ok ボタン  Okから　左　０に行く
41220 case -1:
41230 No=0:sp_on 13,1:sp_on 14,0
41240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41250 '0 ボタン  左　何もしない
41260 case 0:
41270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41280 case 3:
41290 No=2:sp_on 9,1:sp_on 12,0:
41300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41310 case 2:
41320 No=1:sp_on 6,1:sp_on 9,0:
41330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41340 case 1:
41350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41360 case 6:
41370 No=5:sp_on 8,1:sp_on 11,0
41380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41390 case 5:
41400 No=4:sp_on 5,1:sp_on 8,0
41410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41420 case 4:
41430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41440 case 9:
41450 No=8:sp_on 7,1:sp_on 10,0
41460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41470 case 8:
41480 No=7:sp_on 4,1:sp_on 7,0
41490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41500 case 7:
41510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41520 end select
41530 endif
41540 '右  十字キー　右　or カーソル　右
41550 if ((y2 = 1) or (key$ = chr$(28))) then
41560 select case No
41570 '0ボタンからokボタン右に移動
41580 case 0:
41590 No=-1:sp_on 14,1:sp_on 13,0
41600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41610 '0ボタンからokボタン 右に移動　ここまで
41620 'OKボタンで右を押して何もしない
41630 case -1:
41640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41650 case 1:
41660 No=2:sp_on 9,1:sp_on 6,0
41670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41680 case 2:
41690 No=3:sp_on 12,1:sp_on 9,0
41700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41710 case 3:
41720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41730 case 4:
41740 No=5:sp_on 8,1:sp_on 5,0
41750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41760 case 5:
41770 No=6:sp_on 11,1:sp_on 8,0
41780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41790 case 7:
41800 No=8:sp_on 7,1:sp_on 4,0
41810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41820 case 8:
41830 No=9:sp_on 10,1:sp_on 7,0
41840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41850 case 9:
41860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41870 case 6:
41880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41890 end select
41900 'Okから右ボタンを押して何もしない ここまで
41910 endif
41920 '十字キー　ここまで
41930 '==============================
41940 'ここから
41950 '==============================
41960 if ((bg = 2) or (key$ = chr$(13))) then
41970 select case count
41980 case 0:
41990 count = 1
42000 if (No = -1) then
42010 count = 0:No=0
42020 buf_feMale_Born_Day(0) = No
42030 'Okボタンを押したとき
42040 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42050 else
42060 'Okボタン以外が押されたとき
42070 if (No >= 1 and No <= 2) then
42080 buf_female_year$="":buf_female_year$ = str$(No) + "***"
42090 buf_female_year = No:a= No
42100 buf_Jyoushi_Born_Day(0) = No
42110 locate 1,3
42120 color rgb(255,255,255)
42130 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42140 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42150 else
42160 count=0
42170 ui_msg"数字が範囲外になります。"
42180 buf_female_year$="":buf_female_year=0
42190 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42200 endif
42210 endif
42220 case 1:
42230 count = 2
42240 if (No = -1) then
42250 count = 1
42260 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42270 else
42280 buf_female_year = a * 10 + No
42290 b=buf_female_year
42300 buf_year$ = str$(buf_female_year) + "**"
42310 buf_Jyoushi_Born_Day(0)=buf_female_year
42320 locate 1,3
42330 color rgb(255,255,255)
42340 print "                                                                "
42350 locate 1,3
42360 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
42370 'if (No = -1) then
42380 'count=1
42390 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42400 endif
42410 case 2:
42420 count=3
42430 if (No=-1) then
42440 count =2
42450 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42460 else
42470 buf_female_year = b * 10 + No
42480 c=buf_female_year
42490 buf_female_year$ = str$(buf_female_year) + "*"
42500 buf_Jyoushi_Born_Day(0) = buf_female_year
42510 locate 1,3
42520 color rgb(255,255,255)
42530 print "                                        "
42540 locate 1,3
42550 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42560 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42570 endif
42580 case 3:
42590 count=4
42600 if (No = -1) then
42610 No=0
42620 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42630 else
42640 buf_female_year = c * 10 + No
42650 buf_female_year$ = str$(buf_female_year)
42660 buf_Jyoushi_Born_Day(0) = buf_female_year
42670 locate 1,3
42680 color RGB(255,255,255)
42690 print "                                      "
42700 locate 1,3
42710 print "女性の生まれた年代(西暦4桁):";buf_female_year$
42720 buf_female_year=val(buf_female_year$)
42730 'year=val(buf_year$)
42740 'if (No=-1) then
42750 'goto Input_Born_Month:
42760 'else
42770 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42780 endif
42790 case 4:
42800 'bufyear=buf_year
42810 if (No=-1) then
42820 buf_female_year = val(buf_female_year$)
42830 buf_Jyoushi_Born_Day(0)=buf_female_year
42840 sp_on 14,0:No=0
42850 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42860 else
42870 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
42880 endif
42890 end select
42900 endif
42910 '===========================
42920 'ここまでを部下のところにコピーする.
42930 '===========================
42940 if (bg2 = 2) then
42950 select case count2
42960 case 0:
42970 if (No = -1) then
42980 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
42990 count=0
43000 locate 1,3
43010 color rgb(255,255,255)
43020 print "                                      "
43030 locate 1,3
43040 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
43050 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
43060 else
43070 '(buf_year=0) then
43080 buf_female_year=0:buf_year$="****"
43090 locate 1,3
43100 print "                                       "
43110 locate 1,3
43120 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
43130 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
43140 'endif
43150 endif
43160 end select
43170 endif
43180 '-------生まれた年代　女性 ここまで-------------
43190 '-------生まれた月　女性 ここまで--------------
43200 Danjyo_Aisyou_Input_feMale_Born_Month:
43210 cls 3:play "":count=0:count2=0
43220 'No=-1:Okのとき
43230 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
43240 for i=0 to 1
43250 buf_month(i)=0
43260 next i
43270 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43280 gload Gazo$ + "Screen1.png",0,0,0
43290 gload Gazo$ + "downscreen.png",0,0,800
43300 'Init"kb:4"
43310 '音声ファイル再生 2023.06.07
43320 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
43330 font 48
43340 locate 0,1
43350 '文字色：黒　 color rgb(0,0,0)
43360 '文字色:白
43370 color rgb(255,255,255)
43380 print "女性の生まれた月を入れて下さい" + chr$(13)
43390 '文字色:白
43400 color rgb(255,255,255)
43410 locate 1,3
43420 '文字色:白
43430 print "女性の生まれた月(1月~12月):"+buf_female_Month$
43440 color rgb(255,255,255)
43450 'locate 4,6:print ":7"
43460 'locate 9,6:print ":8"
43470 'locate 12,6:print ":9"
43480 locate 4,6
43490 '文字色:赤
43500 print ":7  :8  :9" + chr$(13)
43510 color rgb(255,255,255)
43520 locate 4,8
43530 print ":4  :5  :6" + chr$(13)
43540 color rgb(255,255,255)
43550 locate 4,10
43560 print ":1  :2  :3" + chr$(13)
43570 locate 4,12
43580 print "    :0"
43590 locate 12,12
43600 color rgb(0,0,255)
43610 print ":Ok"
43620 sp_on 4,0: sp_on 5,0:sp_on 6,0
43630 sp_on 7,0:sp_on 8,0:sp_on 9,0
43640 sp_on 10,0:sp_on 11,0:sp_on 12,0
43650 sp_on 13,0:sp_on 14,1
43660 '---------------------------------------------
43670 Danjyo_Aisyou_Input_feMale_Born_Month2:
43680 key$="":bg=0:y=0:y2=0:bg2=0
43690 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43700 key$ = inkey$
43710 bg = strig(1)
43720 y = stick(1)
43730 y2 = stick(0)
43740 bg2 = strig(0)
43750 pause 200
43760 wend
43770 '十字キー　ここから
43780 '上の矢印　または、十字キー上
43790 if ((y = -1) or (key$ = chr$(30))) then
43800 select case No
43810 'No=-1:okのとき:初期の状態
43820 '0kボタンから３に移動
43830 '上に行く 処理
43840 case -1:
43850 No=3:sp_on 12,1:sp_on 14,0
43860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43870 '選択肢:3
43880 '3ボタンから 6に移動
43890 case 3:
43900 No=6:sp_on 12,0:sp_on 11,1
43910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43920 '6ボタンから ９に移動
43930 case 6:
43940 No=9:sp_on 10,1:sp_on 11,0
43950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43960 '6ボタンから ９に移動　ここまで
43970 '9で上を押して何もしない
43980 case 9:
43990 '何もしない
44000 No=9
44010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44020 '9で上を押しても何もしない　ここまで
44030 '上　 0ボタンから2ボタン
44040 'sp_on 6,1:1
44050 'sp_on 8,1:5
44060 'sp_on 7,1:7
44070 case 0:
44080 No=2:sp_on 13,0:sp_on 9,1:
44090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44100 '上  0ボタンから2ボタン　ここまで
44110 '2から５になる 上
44120 case 2:
44130 No=5:sp_on 8,1:sp_on 9,0:
44140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44150 case 5:
44160 No=8:sp_on 7,1:sp_on 8,0
44170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44180 case 8:
44190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44200 case 1:
44210 No=4:sp_on 5,1:sp_on 6,0
44220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44230 case 4:
44240 No=7:sp_on 4,1:sp_on 5,0
44250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44260 case 7:
44270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44280 end select
44290 endif
44300 '左３　ここまで
44310 '下の矢印
44320 '中央 2
44330 if ((y=1) or (key$ = chr$(31))) then
44340 select case No
44350 '9から６に下げる
44360 case 9:
44370 No=6:sp_on 11,1:sp_on 10,0
44380 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
44390 '6から３に下げる
44400 case 6:
44410 No=3:sp_on 12,1:sp_on 11,0
44420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44430 '3から０ｋに変える
44440 case 3:
44450 No=-1:sp_on 14,1:sp_on 12,0
44460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44470 'Okから下のボタンを押しても何もしない
44480 case -1:
44490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44500 case 8:
44510 No=5:sp_on 8,1:sp_on 7,0
44520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44530 case 5:
44540 No=2:sp_on 9,1:sp_on 8,0
44550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44560 case 2:
44570 No=0:sp_on 13,1:sp_on 9,0
44580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44590 case 0:
44600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44610 case 7:
44620 No=4:sp_on 5,1:sp_on 4,0
44630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44640 case 4:
44650 No=1:sp_on 6,1:sp_on 5,0
44660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44670 case 1:
44680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44690 end select
44700 endif
44710 '左へボタン 十字キー　左　or 　カーソル左
44720 if ((y2 = -1) or (key$ = chr$(29))) then
44730 select case No
44740 'Ok ボタン  Okから　左　０に行く
44750 case -1:
44760 No=0:sp_on 13,1:sp_on 14,0
44770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44780 '0 ボタン  左　何もしない
44790 case 0:
44800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44810 case 3:
44820 No=2:sp_on 9,1:sp_on 12,0:
44830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44840 case 2:
44850 No=1:sp_on 6,1:sp_on 9,0:
44860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44870 case 1:
44880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44890 case 6:
44900 No=5:sp_on 8,1:sp_on 11,0
44910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44920 case 5:
44930 No=4:sp_on 5,1:sp_on 8,0
44940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44950 case 4:
44960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44970 case 9:
44980 No=8:sp_on 7,1:sp_on 10,0
44990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45000 case 8:
45010 No=7:sp_on 4,1:sp_on 7,0
45020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45030 case 7:
45040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45050 end select
45060 endif
45070 '右  十字キー　右　or カーソル　右
45080 if ((y2 = 1) or (key$ = chr$(28))) then
45090 select case No
45100 '0ボタンからokボタン右に移動
45110 case 0:
45120 No=-1:sp_on 14,1:sp_on 13,0
45130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45140 '0ボタンからokボタン 右に移動　ここまで
45150 'OKボタンで右を押して何もしない
45160 case -1:
45170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45180 case 1:
45190 No=2:sp_on 9,1:sp_on 6,0
45200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45210 case 2:
45220 No=3:sp_on 12,1:sp_on 9,0
45230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45240 case 3:
45250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45260 case 4:
45270 No=5:sp_on 8,1:sp_on 5,0
45280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45290 case 5:
45300 No=6:sp_on 11,1:sp_on 8,0
45310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45320 case 7:
45330 No=8:sp_on 7,1:sp_on 4,0
45340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45350 case 8:
45360 No=9:sp_on 10,1:sp_on 7,0
45370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45380 case 9:
45390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45400 case 6:
45410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45420 end select
45430 'Okから右ボタンを押して何もしない ここまで
45440 endif
45450 '十字キー　ここまで
45460 '右の丸ボタン + Enter key 決定キー
45470 if ((bg=2) or (key$=chr$(13))) then
45480 select case count
45490 case 0:
45500 if (No=-1) then No=0
45510 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
45520 if (buf_female_month > 1 and buf_female_month < 10)  then
45530 buf_female_Month$ = str$(buf_female_month)
45540 'buf_month=No
45550 endif
45560 if (buf_female_month = 1)  then
45570 buf_female_Month$ = str$(buf_female_month) + "*"
45580 'c=buf_month
45590 endif
45600 locate 1,3
45610 print "                                     "
45620 color RGB(255,255,255)
45630 locate 1,3
45640 print "女性の生まれた月(1月~12月):" + buf_female_Month$
45650 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45660 case 1:
45670 count = 2:
45680 'c = val(buf_Month$)
45690 if (No = -1) then
45700 'count=0
45710 No=0
45720 month=buf_female_month
45730 buf_female_month=val(buf_female_Month$)
45740 month=buf_female_month
45750 buf_Jyoushi_Born_Day(1)=month
45760 '生まれた日に飛ぶ
45770 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45780 else
45790 buf_female_month = c*10 + No
45800 'if (buf_month = 1) then
45810 'buf_Month$ = str$(buf_month)
45820 'endif
45830 buf_female_Month$ = str$(buf_female_month)
45840 buf_Jyoushi_Born_Day(1) = buf_female_month
45850 locate 0,3
45860 print "                                           "
45870 locate 1,3
45880 color Rgb(255,255,255)
45890 print "女性の生まれた月(1月~12月):" + buf_female_Month$
45900 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
45910 endif
45920 case 2:
45930 '==================================
45940 '何もしない
45950 'coun = 2
45960 '==================================
45970 'c= val(buf_Month$)
45980 'buf_month = c*10 + No
45990 'buf_Month$ = str$(buf_month)
46000 'locate 2,3
46010 'print "上司の生まれた月(1月～12月):";buf_Month$
46020 'goto Jyoushi_Input_Born_Month2:
46030 'case 3:
46040 'count=4
46050 'b=val(buf_month$)
46060 'buf_month=c*10+No
46070 'buf_Month$=str$(buf_month)
46080 'locate 2,3
46090 'print "上司の生まれた月(1月～12月):";buf_Month$
46100 'buf_month=val(buf_Month$)
46110 'year=val(buf_year$)
46120 if (No=-1) then
46130 No=0
46140 goto Danjyo_Aisyou_Input_Male_Born_Day:
46150 else
46160 goto Danjyo_Aisyou_Input_Male_Born_Day2:
46170 endif
46180 'case 4:
46190 'bufyear=buf_year
46200 'if (No=-1) then
46210 'buf_month = val(buf_Month$)
46220 'month = buf_month
46230 'sp_on 14,0
46240 'goto Input_Born_Day:
46250 'else
46260 'goto Input_Born_Month2:
46270 'endif
46280 end select
46290 endif
46300 '左の丸ボタン　キャンセル
46310 if (bg2=2) then
46320 select case count2
46330 case 0:
46340 if (No = -1) then
46350 buf_female_month=0:buf_female_Month$="**"
46360 count=0
46370 'goto rewrite2:
46380 else
46390 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
46400 buf_female_month = 0:buf_female_Month$ = "**"
46410 locate 0,3
46420 color rgb(255,255,255)
46430 print "                                       "
46440 goto rewrite2:
46450 if (No>12) then
46460 ui_msg"値が範囲外です。"
46470 goto rewrite2:
46480 endif
46490 endif
46500 endif
46510 rewrite2:
46520 locate 2,3
46530 color rgb(255,255,255)
46540 print "                                      "
46550 locate 2,3
46560 print "女性の生まれた月(1月~12月):"+buf_female_Month$
46570 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
46580 end select
46590 'endif
46600 endif
46610 end
46620 '-------生まれた月　女性 ここまで-------------
46630 '-------生まれた日　女性 ここまで-------------
46640 Danjyo_Aisyou_Input_feMale_Born_Day:
46650 cls 3:play "":count=0:count2=0
46660 'No=-1:Okのとき
46670 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
46680 for i=0 to 1
46690 buf_female_day(i)=0
46700 next i
46710 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46720 gload Gazo$ + "Screen1.png",0,0,0
46730 gload Gazo$ + "downscreen.png",0,0,800
46740 'Init"kb:4"
46750 '音声ファイル再生 2023.06.07
46760 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
46770 font 48
46780 locate 0,1
46790 '文字色：黒　 color rgb(0,0,0)
46800 '文字色:白
46810 color rgb(255,255,255)
46820 print "女性の生まれた日を入れて下さい" + chr$(13)
46830 '文字色:白
46840 color rgb(255,255,255)
46850 locate 1,3
46860 '文字色:白
46870 print "女性の生まれた日(1月~31月):" + buf_female_Day$
46880 color rgb(255,255,255)
46890 'locate 4,6:print ":7"
46900 'locate 9,6:print ":8"
46910 'locate 12,6:print ":9"
46920 locate 4,6
46930 '文字色:赤
46940 print ":7  :8  :9" + chr$(13)
46950 color rgb(255,255,255)
46960 locate 4,8
46970 print ":4  :5  :6" + chr$(13)
46980 color rgb(255,255,255)
46990 locate 4,10
47000 print ":1  :2  :3" + chr$(13)
47010 locate 4,12
47020 print "    :0"
47030 locate 12,12
47040 color rgb(0,0,255)
47050 print ":Ok"
47060 sp_on 4,0: sp_on 5,0:sp_on 6,0
47070 sp_on 7,0:sp_on 8,0:sp_on 9,0
47080 sp_on 10,0:sp_on 11,0:sp_on 12,0
47090 sp_on 13,0:sp_on 14,1
47100 '---------------------------------------------
47110 Danjyo_Aisyou_Input_feMale_Born_Day2:
47120 key$="":bg=0:y=0:y2=0:bg2=0
47130 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
47140 key$ = inkey$
47150 bg = strig(1)
47160 y = stick(1)
47170 y2 = stick(0)
47180 bg2 = strig(0)
47190 pause 200
47200 wend
47210 '十字キー　ここから
47220 '上の矢印　または、十字キー上
47230 if ((y = -1) or (key$ = chr$(30))) then
47240 select case No
47250 'No=-1:okのとき:初期の状態
47260 '0kボタンから３に移動
47270 '上に行く 処理
47280 case -1:
47290 No=3:sp_on 12,1:sp_on 14,0
47300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47310 '選択肢:3
47320 '3ボタンから 6に移動
47330 case 3:
47340 No=6:sp_on 12,0:sp_on 11,1
47350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47360 '6ボタンから ９に移動
47370 case 6:
47380 No=9:sp_on 10,1:sp_on 11,0
47390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47400 '6ボタンから ９に移動　ここまで
47410 '9で上を押して何もしない
47420 case 9:
47430 '何もしない
47440 No=9
47450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47460 '9で上を押しても何もしない　ここまで
47470 '上　 0ボタンから2ボタン
47480 'sp_on 6,1:1
47490 'sp_on 8,1:5
47500 'sp_on 7,1:7
47510 case 0:
47520 No=2:sp_on 13,0:sp_on 9,1:
47530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47540 '上  0ボタンから2ボタン　ここまで
47550 '2から５になる 上
47560 case 2:
47570 No=5:sp_on 8,1:sp_on 9,0:
47580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47590 case 5:
47600 No=8:sp_on 7,1:sp_on 8,0
47610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47620 case 8:
47630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47640 case 1:
47650 No=4:sp_on 5,1:sp_on 6,0
47660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47670 case 4:
47680 No=7:sp_on 4,1:sp_on 5,0
47690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47700 case 7:
47710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47720 end select
47730 endif
47740 '左３　ここまで
47750 '下の矢印
47760 '中央 2
47770 if ((y=1) or (key$ = chr$(31))) then
47780 select case No
47790 '9から６に下げる
47800 case 9:
47810 No=6:sp_on 11,1:sp_on 10,0
47820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47830 '6から３に下げる
47840 case 6:
47850 No=3:sp_on 12,1:sp_on 11,0
47860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47870 '3から０ｋに変える
47880 case 3:
47890 No=-1:sp_on 14,1:sp_on 12,0
47900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47910 'Okから下のボタンを押しても何もしない
47920 case -1:
47930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47940 case 8:
47950 No=5:sp_on 8,1:sp_on 7,0
47960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47970 case 5:
47980 No=2:sp_on 9,1:sp_on 8,0
47990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48000 case 2:
48010 No=0:sp_on 13,1:sp_on 9,0
48020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48030 case 0:
48040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48050 case 7:
48060 No=4:sp_on 5,1:sp_on 4,0
48070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48080 case 4:
48090 No=1:sp_on 6,1:sp_on 5,0
48100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48110 case 1:
48120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48130 end select
48140 endif
48150 '左へボタン 十字キー　左　or 　カーソル左
48160 if ((y2 = -1) or (key$ = chr$(29))) then
48170 select case No
48180 'Ok ボタン  Okから　左　０に行く
48190 case -1:
48200 No=0:sp_on 13,1:sp_on 14,0
48210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48220 '0 ボタン  左　何もしない
48230 case 0:
48240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48250 case 3:
48260 No=2:sp_on 9,1:sp_on 12,0:
48270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48280 case 2:
48290 No=1:sp_on 6,1:sp_on 9,0:
48300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48310 case 1:
48320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48330 case 6:
48340 No=5:sp_on 8,1:sp_on 11,0
48350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48360 case 5:
48370 No=4:sp_on 5,1:sp_on 8,0
48380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48390 case 4:
48400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48410 case 9:
48420 No=8:sp_on 7,1:sp_on 10,0
48430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48440 case 8:
48450 No=7:sp_on 4,1:sp_on 7,0
48460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48470 case 7:
48480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48490 end select
48500 endif
48510 '右  十字キー　右　or カーソル　右
48520 if ((y2 = 1) or (key$ = chr$(28))) then
48530 select case No
48540 '0ボタンからokボタン右に移動
48550 case 0:
48560 No=-1:sp_on 14,1:sp_on 13,0
48570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48580 '0ボタンからokボタン 右に移動　ここまで
48590 'OKボタンで右を押して何もしない
48600 case -1:
48610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48620 case 1:
48630 No=2:sp_on 9,1:sp_on 6,0
48640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48650 case 2:
48660 No=3:sp_on 12,1:sp_on 9,0
48670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48680 case 3:
48690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48700 case 4:
48710 No=5:sp_on 8,1:sp_on 5,0
48720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48730 case 5:
48740 No=6:sp_on 11,1:sp_on 8,0
48750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48760 case 7:
48770 No=8:sp_on 7,1:sp_on 4,0
48780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48790 case 8:
48800 No=9:sp_on 10,1:sp_on 7,0
48810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48820 case 9:
48830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48840 case 6:
48850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48860 end select
48870 'Okから右ボタンを押して何もしない ここまで
48880 endif
48890 '十字キー　ここまで
48900 '右の丸ボタン + Enter key 決定キー
48910 if ((bg=2) or (key$=chr$(13))) then
48920 select case count
48930 case 0:
48940 if (No=-1) then No=0
48950 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
48960 if (buf_female_day > 1 and buf_female_day < 10)  then
48970 buf_female_Day$ = str$(buf_female_day)
48980 'buf_month=No
48990 endif
49000 if (buf_female_day = 1)  then
49010 buf_female_Day$ = str$(buf_female_day) + "*"
49020 'c=buf_month
49030 endif
49040 locate 1,3
49050 print "                                     "
49060 color RGB(255,255,255)
49070 locate 1,3
49080 print "女性の生まれた日(1月~31月):" + buf_female_Day$
49090 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49100 case 1:
49110 count = 2:
49120 'c = val(buf_Month$)
49130 if (No = -1) then
49140 'count=0
49150 No=0
49160 day=buf_female_day
49170 buf_female_day=val(buf_female_day$)
49180 day=bu_female_day
49190 buf_female_day(1)=day
49200 '生まれた日に飛ぶ
49210 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49220 else
49230 bu_female_day = c*10 + No
49240 'if (buf_month = 1) then
49250 'buf_Month$ = str$(buf_month)
49260 'endif
49270 buf_female_day$ = str$(buf_female_day)
49280 buf_female_day(1) = buf_female_day
49290 locate 0,3
49300 print "                                           "
49310 locate 1,3
49320 color Rgb(255,255,255)
49330 print "女性の生まれた日(1月~31月):" + buf_female_Day$
49340 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49350 endif
49360 case 2:
49370 '==================================
49380 '何もしない
49390 'coun = 2
49400 '==================================
49410 'c= val(buf_Month$)
49420 'buf_month = c*10 + No
49430 'buf_Month$ = str$(buf_month)
49440 'locate 2,3
49450 'print "上司の生まれた月(1月～12月):";buf_Month$
49460 'goto Jyoushi_Input_Born_Month2:
49470 'case 3:
49480 'count=4
49490 'b=val(buf_month$)
49500 'buf_month=c*10+No
49510 'buf_Month$=str$(buf_month)
49520 'locate 2,3
49530 'print "上司の生まれた月(1月～12月):";buf_Month$
49540 'buf_month=val(buf_Month$)
49550 'year=val(buf_year$)
49560 if (No=-1) then
49570 No=0
49580 goto Danjyo_Aisyou_Input_Male_Born_Day:
49590 else
49600 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
49610 endif
49620 'case 4:
49630 'bufyear=buf_year
49640 'if (No=-1) then
49650 'buf_month = val(buf_Month$)
49660 'month = buf_month
49670 'sp_on 14,0
49680 'goto Input_Born_Day:
49690 'else
49700 'goto Input_Born_Month2:
49710 'endif
49720 end select
49730 endif
49740 '左の丸ボタン　キャンセル
49750 if (bg2=2) then
49760 select case count2
49770 case 0:
49780 if (No = -1) then
49790 buf_female_day=0:buf_female_Day$="**"
49800 count=0
49810 'goto rewrite2:
49820 else
49830 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
49840 buf_female_day = 0:buf_female_Day$ = "**"
49850 locate 0,3
49860 color rgb(255,255,255)
49870 print "                                       "
49880 goto rewrite2:
49890 if (No>12) then
49900 ui_msg"値が範囲外です。"
49910 goto rewrite2:
49920 endif
49930 endif
49940 endif
49950 rewrite2:
49960 locate 2,3
49970 color rgb(255,255,255)
49980 print "                                      "
49990 locate 2,3
50000 print "女性の生まれた日(1月~31月):"+buf_female_Day$
50010 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
50020 end select
50030 'endif
50040 endif
50050 end
50060 '-------生まれた日　女性 ここまで-------------
50070 '1.男女の相性 ここまで
50080 '2.ビジネスの相性　
50090 '1.1人目のビジネスの相性　名前入力　1人目
50100 Business_Aishou_Input_1_parson:
50110 No=0:color RGB(255,255,255)
50120 cls 3:init "kb:2"
50130 gload Gazo$ + "Screen1.png",0,0,0
50140 gload Gazo$ + "downscreen.png",0,0,800
50150 play "":color rgb(255,0,0):name$ = ""
50160 locate 0,1
50170 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
50180 color rgb(255,255,255):
50190 locate 0,3
50200 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
50210 print "入れてください" + chr$(13)
50220 locate 0,15:color rgb(0,0,0)
50230 Input "1人目の名前:",name$
50240 'color rgb(0,0,0)
50250 'locate 0,13:print "                                     "
50260 'locate 0,13:print "1人目の名前を入力してエンターキー":
50270 'buffer_name$(0):1人目の名前
50280 buffer_name$(0) = name$:
50290 goto Business_Aishou_Input_2_Parson:
50300 '2.2人目のビジネスの相性 名前入力 2人目
50310 Business_Aishou_Input_2_Parson:
50320 cls 3:init "kb:2":name$ = "":No=0
50330 gload Gazo$ + "Screen1.png",0,0,0
50340 gload Gazo$ + "downscreen.png",0,0,800
50350 color rgb(255,0,0)
50360 'Title
50370 locate 0,1
50380 print "ビジネスの相性　2人目"
50390 locate 0,3
50400 color rgb(255,255,255)
50410 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
50420 print "入れてください" + chr$(13)
50430 locate 0,15:color rgb(0,0,0)
50440 Input "2人目の名前:",name$
50450 'color rgb(0,0,0)
50460 'locate 0,15:print "                                              "
50470 'locate 0,15:print "2人目の名前を入力してエンター ":
50480 '2人目
50490 '2人目の名前を入れるに代入
50500 buffer_name$(1) = name$:
50510 goto Select_jyoushi:
50520 '3.上司の選択
50530 Select_jyoushi:
50540 cls 3:gload Gazo$ + "Screen1.png",0,0,0
50550 gload Gazo$ + "downscreen.png",0,0,800
50560 init "kb:4":No=0
50570 color rgb(0,0,255)
50580 locate 1,1
50590 print "上司の選択"
50600 color rgb(255,255,255)
50610 locate 0,4:print "名前から上司の方を選んでください"
50620 locate 0,6
50630 print " :";buffer_name$(0);"が上 司";chr$(13)
50640 locate 0,8
50650 print " :";buffer_name$(1);"が上 司";chr$(13)
50660 locate 0,15:
50670 print "                                     "
50680 locate 0,15:color rgb(0,0,0)
50690 print "上司の方を選んで右の丸ボタン"
50700 sp_on 0,1:sp_on 1,0:sp_on 2,0
50710 Select_jyoushi2:
50720 'ここでNo=0をおいてはいけない
50730 y=0:key$="":bg=0:
50740 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
50750 y = stick(1)
50760 key$ = inkey$
50770 bg = strig(1)
50780 pause 5
50790 wend
50800 '1.カーソル下の処理　or 十字キーの下処理
50810 if ((key$ = chr$(31)) or (y = 1)) then
50820 select case No
50830 case 0:
50840 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
50850 case 1:
50860 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
50870 end select
50880 endif
50890 '2.カーソル上処理　or 十字キーの上の処理
50900 if ((key$ = chr$(30)) or (y = -1)) then
50910 select case No
50920 case 0:
50930 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
50940 case 1:
50950 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
50960 end select
50970 endif
50980 if ((key$ = chr$(13)) or (bg = 2)) then
50990 select case No
51000 case 0:
51010 '上司(name1)を配列に代入
51020 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
51030 case 1:
51040 '上司（name2)を配列に代入
51050 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
51060 end select
51070 endif
51080 '3.決定ボタン　Enter or 右の丸ボタン
51090 '1.誕生日入力
51100 '1-1.生まれた年を入力
51110 'Jyoushi_born_year:
51120 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
51130 '---------------------------------------------'
51140 '誕生日入力(生れた年代)
51150 Jyoushi_Input_Seireki:
51160 'buf_Jyoushi_Born_Year:上司の生まれた年代
51170 'buf_Jyoushi_Born_Day(0) = born_year
51180 cls 3:play "":count=0:count2=0
51190 init"kb:4"
51200 'No=-1:Okのとき
51210 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
51220 for i=0 to 3
51230 buf_Jyoushi_Born_Day(i)=0
51240 next i
51250 gload Gazo$ + "Screen2.png",0,0,0
51260 gload Gazo$ + "downscreen.png",0,0,800
51270 'Init"kb:2"
51280 '音声ファイル再生 2023.06.07
51290 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
51300 font 48
51310 locate 0,1
51320 '文字色：黒　 color rgb(0,0,0)
51330 color rgb(255,255,255)
51340 print "上司の生まれた年代を入れて下さい" + chr$(13)
51350 color rgb(255,255,255)
51360 locate 1,3
51370 print "上司の生まれた年代(西暦4桁):";buf_year$
51380 color rgb(255,255,255)
51390 'locate 4,6:print ":7"
51400 'locate 9,6:print ":8"
51410 'locate 12,6:print ":9"
51420 'locate 4,6
51430 'print ":7  :8  :9" + chr$(13)
51440 'color rgb(255,255,255)
51450 'locate 4,8
51460 'print ":4  :5  :6" + chr$(13)
51470 'color rgb(255,255,255)
51480 'locate 4,10
51490 'print ":1  :2  :3" + chr$(13)
51500 'locate 4,12
51510 'print "    :0"
51520 'locate 12,12
51530 'color rgb(0,0,255)
51540 'print ":Ok"
51550 sp_on 4,0: sp_on 5,0:sp_on 6,0
51560 sp_on 7,0:sp_on 8,0:sp_on 9,0
51570 sp_on 10,0:sp_on 11,0:sp_on 12,0
51580 sp_on 13,0:sp_on 14,1
51590 Jyoushi_Input_Seireki2:
51600 key$="":bg=0:y=0:y2=0:bg2=0:
51610 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
51620 key$ = inkey$
51630 bg = strig(1)
51640 y = stick(1)
51650 y2 = stick(0)
51660 bg2=strig(0)
51670 pause 200
51680 wend
51690 '十字キー　ここから
51700 '上の矢印　または、十字キー上
51710 if ((y = -1) or (key$ = chr$(30))) then
51720 select case No
51730 'No=-1:okのとき:初期の状態
51740 '0kボタンから３に移動
51750 '上に行く 処理
51760 case -1:
51770 No=3:sp_on 12,1:sp_on 14,0
51780 pause 200:goto Jyoushi_Input_Seireki2:
51790 '選択肢:3
51800 '3ボタンから 6に移動
51810 case 3:
51820 No=6:sp_on 12,0:sp_on 11,1
51830 pause 200:goto Jyoushi_Input_Seireki2:
51840 '6ボタンから ９に移動
51850 case 6:
51860 No=9:sp_on 10,1:sp_on 11,0
51870 pause 200:goto Jyoushi_Input_Seireki2:
51880 '6ボタンから ９に移動　ここまで
51890 '9で上を押して何もしない
51900 case 9:
51910 '何もしない
51920 No=9
51930 pause 200:goto Jyoushi_Input_Seireki2:
51940 '9で上を押しても何もしない　ここまで
51950 '上　 0ボタンから2ボタン
51960 'sp_on 6,1:1
51970 'sp_on 8,1:5
51980 'sp_on 7,1:7
51990 case 0:
52000 No=2:sp_on 13,0:sp_on 9,1:
52010 pause 200:goto Jyoushi_Input_Seireki2:
52020 '上  0ボタンから2ボタン　ここまで
52030 '2から５になる 上
52040 case 2:
52050 No=5:sp_on 8,1:sp_on 9,0:
52060 pause 200:goto Jyoushi_Input_Seireki2:
52070 case 5:
52080 No=8:sp_on 7,1:sp_on 8,0
52090 pause 200:goto Jyoushi_Input_Seireki2:
52100 case 8:
52110 pause 200:goto Jyoushi_Input_Seireki2:
52120 case 1:
52130 No=4:sp_on 5,1:sp_on 6,0
52140 pause 200:goto Jyoushi_Input_Seireki2:
52150 case 4:
52160 No=7:sp_on 4,1:sp_on 5,0
52170 pause 200:goto Jyoushi_Input_Seireki2:
52180 case 7:
52190 pause 200:goto Jyoushi_Input_Seireki2:
52200 end select
52210 endif
52220 '左３　ここまで
52230 '下の矢印
52240 '中央 2
52250 if ((y=1) or (key$ = chr$(31))) then
52260 select case No
52270 '9から６に下げる
52280 case 9:
52290 No=6:sp_on 11,1:sp_on 10,0
52300 pause 200:goto Jyoushi_Input_Seireki2:
52310 '6から３に下げる
52320 case 6:
52330 No=3:sp_on 12,1:sp_on 11,0
52340 pause 200:goto Jyoushi_Input_Seireki2:
52350 '3から０ｋに変える
52360 case 3:
52370 No=-1:sp_on 14,1:sp_on 12,0
52380 pause 200:goto Jyoushi_Input_Seireki2:
52390 'Okから下のボタンを押しても何もしない
52400 case -1:
52410 pause 200:goto Jyoushi_Input_Seireki2:
52420 case 8:
52430 No=5:sp_on 8,1:sp_on 7,0
52440 pause 200:goto Jyoushi_Input_Seireki2:
52450 case 5:
52460 No=2:sp_on 9,1:sp_on 8,0
52470 pause 200:goto Jyoushi_Input_Seireki2:
52480 case 2:
52490 No=0:sp_on 13,1:sp_on 9,0
52500 pause 200:goto Jyoushi_Input_Seireki2:
52510 case 0:
52520 pause 200:goto Jyoushi_Input_Seireki2:
52530 case 7:
52540 No=4:sp_on 5,1:sp_on 4,0
52550 pause 200:goto Jyoushi_Input_Seireki2:
52560 case 4:
52570 No=1:sp_on 6,1:sp_on 5,0
52580 pause 200:goto Jyoushi_Input_Seireki2:
52590 case 1:
52600 pause 200:goto Jyoushi_Input_Seireki2:
52610 end select
52620 endif
52630 '左へボタン 十字キー　左　or 　カーソル左
52640 if ((y2 = -1) or (key$ = chr$(29))) then
52650 select case No
52660 'Ok ボタン  Okから　左　０に行く
52670 case -1:
52680 No=0:sp_on 13,1:sp_on 14,0
52690 pause 200:goto Jyoushi_Input_Seireki2:
52700 '0 ボタン  左　何もしない
52710 case 0:
52720 pause 200:goto Jyoushi_Input_Seireki2:
52730 case 3:
52740 No=2:sp_on 9,1:sp_on 12,0:
52750 pause 200:goto Jyoushi_Input_Seireki2:
52760 case 2:
52770 No=1:sp_on 6,1:sp_on 9,0:
52780 pause 200:goto Jyoushi_Input_Seireki2:
52790 case 1:
52800 pause 200:goto Jyoushi_Input_Seireki2:
52810 case 6:
52820 No=5:sp_on 8,1:sp_on 11,0
52830 pause 200:goto Jyoushi_Input_Seireki2:
52840 case 5:
52850 No=4:sp_on 5,1:sp_on 8,0
52860 pause 200:goto Jyoushi_Input_Seireki2:
52870 case 4:
52880 pause 200:goto Jyoushi_Input_Seireki2:
52890 case 9:
52900 No=8:sp_on 7,1:sp_on 10,0
52910 pause 200:goto Jyoushi_Input_Seireki2:
52920 case 8:
52930 No=7:sp_on 4,1:sp_on 7,0
52940 pause 200:goto Jyoushi_Input_Seireki2:
52950 case 7:
52960 pause 200:goto Jyoushi_Input_Seireki2:
52970 end select
52980 endif
52990 '右  十字キー　右　or カーソル　右
53000 if ((y2 = 1) or (key$ = chr$(28))) then
53010 select case No
53020 '0ボタンからokボタン右に移動
53030 case 0:
53040 No=-1:sp_on 14,1:sp_on 13,0
53050 pause 200:goto Jyoushi_Input_Seireki2:
53060 '0ボタンからokボタン 右に移動　ここまで
53070 'OKボタンで右を押して何もしない
53080 case -1:
53090 pause 200:goto Jyoushi_Input_Seireki2:
53100 case 1:
53110 No=2:sp_on 9,1:sp_on 6,0
53120 pause 200:goto Jyoushi_Input_Seireki2:
53130 case 2:
53140 No=3:sp_on 12,1:sp_on 9,0
53150 pause 200:goto Jyoushi_Input_Seireki2:
53160 case 3:
53170 pause 200:goto Jyoushi_Input_Seireki2:
53180 case 4:
53190 No=5:sp_on 8,1:sp_on 5,0
53200 pause 200:goto Jyoushi_Input_Seireki2:
53210 case 5:
53220 No=6:sp_on 11,1:sp_on 8,0
53230 pause 200:goto Jyoushi_Input_Seireki2:
53240 case 7:
53250 No=8:sp_on 7,1:sp_on 4,0
53260 pause 200:goto Jyoushi_Input_Seireki2:
53270 case 8:
53280 No=9:sp_on 10,1:sp_on 7,0
53290 pause 200:goto Jyoushi_Input_Seireki2:
53300 case 9:
53310 pause 200:goto Jyoushi_Input_Seireki2:
53320 case 6:
53330 pause 200:goto Jyoushi_Input_Seireki2:
53340 end select
53350 'Okから右ボタンを押して何もしない ここまで
53360 endif
53370 '十字キー　ここまで
53380 '==============================
53390 'ここから
53400 '==============================
53410 if ((bg = 2) or (key$ = chr$(13))) then
53420 select case count
53430 case 0:
53440 count = 1
53450 if (No = -1) then
53460 count = 0:No=0
53470 buf_Jyoushi_Born_Day(0) = No
53480 'Okボタンを押したとき
53490 goto Jyoushi_Input_Seireki2:
53500 else
53510 'Okボタン以外が押されたとき
53520 if (No >= 1 and No <= 2) then
53530 buf_year$="":buf_year$ = str$(No) + "***"
53540 buf_year = No:a= No
53550 buf_Jyoushi_Born_Day(0) = No
53560 locate 1,3
53570 color rgb(255,255,255)
53580 print "上司の生まれた年代(西暦4桁):";buf_year$
53590 goto Jyoushi_Input_Seireki2:
53600 else
53610 count=0
53620 ui_msg"数字が範囲外になります。"
53630 buf_year$="":buf_year=0
53640 goto Jyoushi_Input_Seireki2:
53650 endif
53660 endif
53670 case 1:
53680 count = 2
53690 if (No = -1) then
53700 count = 1
53710 goto Jyoushi_Input_Seireki2:
53720 else
53730 buf_year = a * 10 + No
53740 b=buf_year
53750 buf_year$ = str$(buf_year) + "**"
53760 buf_Jyoushi_Born_Day(0)=buf_year
53770 locate 1,3
53780 color rgb(255,255,255)
53790 print "                                                                "
53800 locate 1,3
53810 print "上司の生まれた年代(西暦4桁):" + buf_year$
53820 'if (No = -1) then
53830 'count=1
53840 goto Jyoushi_Input_Seireki2:
53850 endif
53860 case 2:
53870 count=3
53880 if (No=-1) then
53890 count =2
53900 goto Jyoushi_Input_Seireki2:
53910 else
53920 buf_year = b * 10 + No
53930 c=buf_year
53940 buf_year$ = str$(buf_year) + "*"
53950 buf_Jyoushi_Born_Day(0) = buf_year
53960 locate 1,3
53970 color rgb(255,255,255)
53980 print "                                        "
53990 locate 1,3
54000 print "上司の生まれた年代(西暦4桁):";buf_year$
54010 goto Jyoushi_Input_Seireki2:
54020 endif
54030 case 3:
54040 count=4
54050 if (No = -1) then
54060 No=0
54070 goto Jyoushi_Input_Seireki2:
54080 else
54090 buf_year = c * 10 + No
54100 buf_year$ = str$(buf_year)
54110 buf_Jyoushi_Born_Day(0) = buf_year
54120 locate 1,3
54130 color RGB(255,255,255)
54140 print "                                      "
54150 locate 1,3
54160 print "上司の生まれた年代(西暦4桁):";buf_year$
54170 buf_year=val(buf_year$)
54180 'year=val(buf_year$)
54190 'if (No=-1) then
54200 'goto Input_Born_Month:
54210 'else
54220 goto Jyoushi_Input_Seireki2:
54230 endif
54240 case 4:
54250 'bufyear=buf_year
54260 if (No=-1) then
54270 buf_year = val(buf_year$)
54280 buf_Jyoushi_Born_Day(0)=buf_year
54290 sp_on 14,0:No=0
54300 goto Jyoushi_Input_Born_Month:
54310 else
54320 goto Jyoushi_Input_Seireki2:
54330 endif
54340 end select
54350 endif
54360 '===========================
54370 'ここまでを部下のところにコピーする.
54380 '===========================
54390 if (bg2 = 2) then
54400 select case count2
54410 case 0:
54420 if (No = -1) then
54430 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
54440 count=0
54450 locate 1,3
54460 color rgb(255,255,255)
54470 print "                                      "
54480 locate 1,3
54490 print "上司の生まれた年代（西暦4桁):" + buf_year$
54500 goto Jyoushi_Input_Seireki2:
54510 else
54520 '(buf_year=0) then
54530 buf_year=0:buf_year$="****"
54540 locate 1,3
54550 print "                                       "
54560 locate 1,3
54570 print "上司の生まれた年代(西暦4桁):"+buf_year$
54580 goto Jyoushi_Input_Seireki2:
54590 'endif
54600 endif
54610 end select
54620 endif
54630 'Input"上司の生れた年代(4桁,〜2025年):",year
54640 'if year > 2025 then goto Jyoushi_Input_Seireki:
54650 'if year = 123 then cls 3:cls 4:goto Main_Screen:
54660 '"4桁目"
54670 'bufyear4 = fix(year / 1000)
54680 '"3桁目"
54690 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
54700 '"2桁目"
54710 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
54720 '"1桁目"
54730 'bufyear1 = fix((year - ((bufyear4*
54740 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
54750 '2.生まれた月を入力
54760 Jyoushi_Input_Born_Month:
54770 cls 3:play "":count=0:count2=0
54780 'No=-1:Okのとき
54790 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
54800 for i=0 to 1
54810 buf_month(i)=0
54820 next i
54830 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
54840 gload Gazo$ + "Screen2.png",0,0,0
54850 gload Gazo$ + "downscreen.png",0,0,800
54860 'Init"kb:4"
54870 '音声ファイル再生 2023.06.07
54880 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
54890 font 48
54900 locate 0,1
54910 '文字色：黒　 color rgb(0,0,0)
54920 '文字色:白
54930 color rgb(255,255,255)
54940 print "上司の生まれた月を入れて下さい" + chr$(13)
54950 '文字色:白
54960 color rgb(255,255,255)
54970 locate 1,3
54980 '文字色:白
54990 print "上司の生まれた月(1月~12月):"+buf_Month$
55000 color rgb(255,255,255)
55010 'locate 4,6:print ":7"
55020 'locate 9,6:print ":8"
55030 'locate 12,6:print ":9"
55040 'locate 4,6
55050 '文字色:赤
55060 'print ":7  :8  :9" + chr$(13)
55070 'color rgb(255,255,255)
55080 'locate 4,8
55090 'print ":4  :5  :6" + chr$(13)
55100 'color rgb(255,255,255)
55110 'locate 4,10
55120 'print ":1  :2  :3" + chr$(13)
55130 'locate 4,12
55140 'print "    :0"
55150 'locate 12,12
55160 'color rgb(0,0,255)
55170 'print ":Ok"
55180 sp_on 4,0: sp_on 5,0:sp_on 6,0
55190 sp_on 7,0:sp_on 8,0:sp_on 9,0
55200 sp_on 10,0:sp_on 11,0:sp_on 12,0
55210 sp_on 13,0:sp_on 14,1
55220 Jyoushi_Input_Born_Month2:
55230 key$="":bg=0:y=0:y2=0:bg2=0
55240 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
55250 key$ = inkey$
55260 bg = strig(1)
55270 y = stick(1)
55280 y2 = stick(0)
55290 bg2 = strig(0)
55300 pause 200
55310 wend
55320 '十字キー　ここから
55330 '上の矢印　または、十字キー上
55340 if ((y = -1) or (key$ = chr$(30))) then
55350 select case No
55360 'No=-1:okのとき:初期の状態
55370 '0kボタンから３に移動
55380 '上に行く 処理
55390 case -1:
55400 No=3:sp_on 12,1:sp_on 14,0
55410 pause 200:goto Jyoushi_Input_Born_Month2:
55420 '選択肢:3
55430 '3ボタンから 6に移動
55440 case 3:
55450 No=6:sp_on 12,0:sp_on 11,1
55460 pause 200:goto Jyoushi_Input_Born_Month2:
55470 '6ボタンから ９に移動
55480 case 6:
55490 No=9:sp_on 10,1:sp_on 11,0
55500 pause 200:goto Jyoushi_Input_Born_Month2:
55510 '6ボタンから ９に移動　ここまで
55520 '9で上を押して何もしない
55530 case 9:
55540 '何もしない
55550 No=9
55560 pause 200:goto Jyoushi_Input_Born_Month2:
55570 '9で上を押しても何もしない　ここまで
55580 '上　 0ボタンから2ボタン
55590 'sp_on 6,1:1
55600 'sp_on 8,1:5
55610 'sp_on 7,1:7
55620 case 0:
55630 No=2:sp_on 13,0:sp_on 9,1:
55640 pause 200:goto Jyoushi_Input_Born_Month2:
55650 '上  0ボタンから2ボタン　ここまで
55660 '2から５になる 上
55670 case 2:
55680 No=5:sp_on 8,1:sp_on 9,0:
55690 pause 200:goto Jyoushi_Input_Born_Month2:
55700 case 5:
55710 No=8:sp_on 7,1:sp_on 8,0
55720 pause 200:goto Jyoushi_Input_Born_Month2:
55730 case 8:
55740 pause 200:goto Input_Born_Month2:
55750 case 1:
55760 No=4:sp_on 5,1:sp_on 6,0
55770 pause 200:goto Jyoushi_Input_Born_Month2:
55780 case 4:
55790 No=7:sp_on 4,1:sp_on 5,0
55800 pause 200:goto Jyoushi_Input_Born_Month2:
55810 case 7:
55820 pause 200:goto Input_Born_Month2:
55830 end select
55840 endif
55850 '左３　ここまで
55860 '下の矢印
55870 '中央 2
55880 if ((y=1) or (key$ = chr$(31))) then
55890 select case No
55900 '9から６に下げる
55910 case 9:
55920 No=6:sp_on 11,1:sp_on 10,0
55930 pause 200:goto Jyoushi_Input_Born_Month2:
55940 '6から３に下げる
55950 case 6:
55960 No=3:sp_on 12,1:sp_on 11,0
55970 pause 200:goto Jyoushi_Input_Born_Month2:
55980 '3から０ｋに変える
55990 case 3:
56000 No=-1:sp_on 14,1:sp_on 12,0
56010 pause 200:goto Jyoushi_Input_Born_Month2:
56020 'Okから下のボタンを押しても何もしない
56030 case -1:
56040 pause 200:goto Jyoushi_Input_Born_Month2:
56050 case 8:
56060 No=5:sp_on 8,1:sp_on 7,0
56070 pause 200:goto Jyoushi_Input_Born_Month2:
56080 case 5:
56090 No=2:sp_on 9,1:sp_on 8,0
56100 pause 200:goto Jyoushi_Input_Born_Month2:
56110 case 2:
56120 No=0:sp_on 13,1:sp_on 9,0
56130 pause 200:goto Jyoushi_Input_Born_Month2:
56140 case 0:
56150 pause 200:goto Jyoushi_Input_Born_Month2:
56160 case 7:
56170 No=4:sp_on 5,1:sp_on 4,0
56180 pause 200:goto Jyoushi_Input_Born_Month2:
56190 case 4:
56200 No=1:sp_on 6,1:sp_on 5,0
56210 pause 200:goto Jyoushi_Input_Born_Month2:
56220 case 1:
56230 pause 200:goto Jyoushi_Input_Born_Month2:
56240 end select
56250 endif
56260 '左へボタン 十字キー　左　or 　カーソル左
56270 if ((y2 = -1) or (key$ = chr$(29))) then
56280 select case No
56290 'Ok ボタン  Okから　左　０に行く
56300 case -1:
56310 No=0:sp_on 13,1:sp_on 14,0
56320 pause 200:goto Jyoushi_Input_Born_Month2:
56330 '0 ボタン  左　何もしない
56340 case 0:
56350 pause 200:goto Jyoushi_Input_Born_Month2:
56360 case 3:
56370 No=2:sp_on 9,1:sp_on 12,0:
56380 pause 200:goto Jyoushi_Input_Born_Month2:
56390 case 2:
56400 No=1:sp_on 6,1:sp_on 9,0:
56410 pause 200:goto Jyoushi_Input_Born_Month2:
56420 case 1:
56430 pause 200:goto Jyoushi_Input_Born_Month2:
56440 case 6:
56450 No=5:sp_on 8,1:sp_on 11,0
56460 pause 200:goto Jyoushi_Input_Born_Month2:
56470 case 5:
56480 No=4:sp_on 5,1:sp_on 8,0
56490 pause 200:goto Jyoushi_Input_Born_Month2:
56500 case 4:
56510 pause 200:goto Jyoushi_Input_Born_Month2:
56520 case 9:
56530 No=8:sp_on 7,1:sp_on 10,0
56540 pause 200:goto Input_Born_Month2:
56550 case 8:
56560 No=7:sp_on 4,1:sp_on 7,0
56570 pause 200:goto Jyoushi_Input_Born_Month2:
56580 case 7:
56590 pause 200:goto Jyoushi_Input_Born_Month2:
56600 end select
56610 endif
56620 '右  十字キー　右　or カーソル　右
56630 if ((y2 = 1) or (key$ = chr$(28))) then
56640 select case No
56650 '0ボタンからokボタン右に移動
56660 case 0:
56670 No=-1:sp_on 14,1:sp_on 13,0
56680 pause 200:goto Jyoushi_Input_Born_Month2:
56690 '0ボタンからokボタン 右に移動　ここまで
56700 'OKボタンで右を押して何もしない
56710 case -1:
56720 pause 200:goto Jyoushi_Input_Born_Month2:
56730 case 1:
56740 No=2:sp_on 9,1:sp_on 6,0
56750 pause 200:goto Jyoushi_Input_Born_Month2:
56760 case 2:
56770 No=3:sp_on 12,1:sp_on 9,0
56780 pause 200:goto Jyoushi_Input_Born_Month2:
56790 case 3:
56800 pause 200:goto Jyoushi_Input_Born_Month2:
56810 case 4:
56820 No=5:sp_on 8,1:sp_on 5,0
56830 pause 200:goto Jyoushi_Input_Born_Month2:
56840 case 5:
56850 No=6:sp_on 11,1:sp_on 8,0
56860 pause 200:goto Jyoushi_Input_Born_Month2:
56870 case 7:
56880 No=8:sp_on 7,1:sp_on 4,0
56890 pause 200:goto Jyoushi_Input_Born_Month2:
56900 case 8:
56910 No=9:sp_on 10,1:sp_on 7,0
56920 pause 200:goto Jyoushi_Input_Born_Month2:
56930 case 9:
56940 pause 200:goto Jyoushi_Input_Born_Month2:
56950 case 6:
56960 pause 200:goto Jyoushi_Input_Born_Month2:
56970 end select
56980 'Okから右ボタンを押して何もしない ここまで
56990 endif
57000 '十字キー　ここまで
57010 '右の丸ボタン + Enter key 決定キー
57020 if ((bg=2) or (key$=chr$(13))) then
57030 select case count
57040 case 0:
57050 if (No=-1) then No=0
57060 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
57070 if (buf_month > 1 and buf_month < 10)  then
57080 buf_Month$ = str$(buf_month)
57090 'buf_month=No
57100 endif
57110 if (buf_month = 1)  then
57120 buf_Month$ = str$(buf_month) + "*"
57130 'c=buf_month
57140 endif
57150 locate 1,3
57160 print "                                     "
57170 color RGB(255,255,255)
57180 locate 1,3
57190 print "上司の生まれた月(1月~12月):" + buf_Month$
57200 goto Jyoushi_Input_Born_Month2:
57210 case 1:
57220 count = 2:
57230 'c = val(buf_Month$)
57240 if (No = -1) then
57250 'count=0
57260 No=0
57270 month=buf_month
57280 buf_month=val(buf_Month$)
57290 month=buf_month
57300 buf_Jyoushi_Born_Day(1)=month
57310 '生まれた日に飛ぶ
57320 goto Jyoushi_Input_Born_Day:
57330 else
57340 buf_month = c*10 + No
57350 'if (buf_month = 1) then
57360 'buf_Month$ = str$(buf_month)
57370 'endif
57380 buf_Month$ = str$(buf_month)
57390 buf_Jyoushi_Born_Day(1) = buf_month
57400 locate 0,3
57410 print "                                           "
57420 locate 1,3
57430 color Rgb(255,255,255)
57440 print "上司の生まれた月(1月~12月):" + buf_Month$
57450 goto Jyoushi_Input_Born_Month2:
57460 endif
57470 case 2:
57480 '==================================
57490 '何もしない
57500 'coun = 2
57510 '==================================
57520 'c= val(buf_Month$)
57530 'buf_month = c*10 + No
57540 'buf_Month$ = str$(buf_month)
57550 'locate 2,3
57560 'print "上司の生まれた月(1月～12月):";buf_Month$
57570 'goto Jyoushi_Input_Born_Month2:
57580 'case 3:
57590 'count=4
57600 'b=val(buf_month$)
57610 'buf_month=c*10+No
57620 'buf_Month$=str$(buf_month)
57630 'locate 2,3
57640 'print "上司の生まれた月(1月～12月):";buf_Month$
57650 'buf_month=val(buf_Month$)
57660 'year=val(buf_year$)
57670 if (No=-1) then
57680 No=0
57690 goto Jyoushi_Input_Born_Day:
57700 else
57710 goto Jyoushi_Input_Born_Month2:
57720 endif
57730 'case 4:
57740 'bufyear=buf_year
57750 'if (No=-1) then
57760 'buf_month = val(buf_Month$)
57770 'month = buf_month
57780 'sp_on 14,0
57790 'goto Input_Born_Day:
57800 'else
57810 'goto Input_Born_Month2:
57820 'endif
57830 end select
57840 endif
57850 '左の丸ボタン　キャンセル
57860 if (bg2=2) then
57870 select case count2
57880 case 0:
57890 if (No = -1) then
57900 buf_month=0:buf_Month$="**"
57910 count=0
57920 'goto rewrite2:
57930 else
57940 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
57950 buf_month = 0:buf_Month$ = "**"
57960 locate 0,3
57970 color rgb(255,255,255)
57980 print "                                       "
57990 goto rewrite2:
58000 if (No>12) then
58010 ui_msg"値が範囲外です。"
58020 goto rewrite2:
58030 endif
58040 endif
58050 endif
58060 rewrite2:
58070 locate 2,3
58080 color rgb(255,255,255)
58090 print "                                      "
58100 locate 2,3
58110 print "上司の生まれた月(1月~12月):"+buf_Month$
58120 goto Jyoushi_Input_Born_Month2:
58130 end select
58140 'endif
58150 endif
58160 end
58170 'end
58180 '生れた日を入力
58190 Jyoushi_Input_Born_Day:
58200 '生まれた日入力
58210 cls 3:play ""
58220 'No=-1:Okのとき
58230 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
58240 for i=0 to 1
58250 buf_day(i)=0
58260 next i
58270 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
58280 gload Gazo$ + "Screen2.png",0,0,0
58290 gload Gazo$ + "downscreen.png",0,0,800
58300 'Init"kb:2"
58310 '音声ファイル再生 2023.06.07
58320 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
58330 font 48
58340 locate 1,1
58350 '文字色：黒　 color rgb(0,0,0)
58360 color rgb(255,255,255)
58370 print "上司の生まれた日を入れて下さい" + chr$(13)
58380 locate 1,3
58390 color rgb(255,255,255)
58400 print "                                      "
58410 locate 1,3
58420 print "上司の生まれた日(1日~31日):"+buf_Day$
58430 color rgb(255,255,255)
58440 'locate 4,6:print ":7"
58450 'locate 9,6:print ":8"
58460 'locate 12,6:print ":9"
58470 'locate 4,6
58480 'print ":7  :8  :9" + chr$(13)
58490 'color rgb(255,255,255)
58500 'locate 4,8
58510 'print ":4  :5  :6" + chr$(13)
58520 'color rgb(255,255,255)
58530 'locate 4,10
58540 'print ":1  :2  :3" + chr$(13)
58550 'locate 4,12
58560 'print "    :0"
58570 'locate 12,12
58580 'color rgb(0,0,255)
58590 'print ":Ok"
58600 sp_on 4,0: sp_on 5,0:sp_on 6,0
58610 sp_on 7,0:sp_on 8,0:sp_on 9,0
58620 sp_on 10,0:sp_on 11,0:sp_on 12,0
58630 sp_on 13,0:sp_on 14,1
58640 Jyoushi_Input_Born_Day2:
58650 key$="":bg=0:y=0:y2=0:bg2=0:
58660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
58670 key$ = inkey$
58680 bg = strig(1)
58690 y = stick(1)
58700 y2 = stick(0)
58710 bg2 = strig(0)
58720 pause 200
58730 wend
58740 '十字キー　ここから
58750 '上の矢印　または、十字キー上
58760 if ((y = -1) or (key$ = chr$(30))) then
58770 select case No
58780 'No=-1:okのとき:初期の状態
58790 '0kボタンから３に移動
58800 '上に行く 処理
58810 case -1:
58820 No=3:sp_on 12,1:sp_on 14,0
58830 pause 200:goto Jyoushi_Input_Born_Day2:
58840 '選択肢:3
58850 '3ボタンから 6に移動
58860 case 3:
58870 No=6:sp_on 12,0:sp_on 11,1
58880 pause 200:goto Jyoushi_Input_Born_Day2:
58890 '6ボタンから ９に移動
58900 case 6:
58910 No=9:sp_on 10,1:sp_on 11,0
58920 pause 200:goto Jyoushi_Input_Born_Day2:
58930 '6ボタンから ９に移動　ここまで
58940 '9で上を押して何もしない
58950 case 9:
58960 '何もしない
58970 No=9
58980 pause 200:goto Jyoushi_Input_Born_Day2:
58990 '9で上を押しても何もしない　ここまで
59000 '上　 0ボタンから2ボタン
59010 'sp_on 6,1:1
59020 'sp_on 8,1:5
59030 'sp_on 7,1:7
59040 case 0:
59050 No=2:sp_on 13,0:sp_on 9,1:
59060 pause 200:goto Jyoushi_Input_Born_Day2:
59070 '上  0ボタンから2ボタン　ここまで
59080 '2から５になる 上
59090 case 2:
59100 No=5:sp_on 8,1:sp_on 9,0:
59110 pause 200:goto Jyoushi_Input_Born_Day2:
59120 case 5:
59130 No=8:sp_on 7,1:sp_on 8,0
59140 pause 200:goto Jyoushi_Input_Born_Day2:
59150 case 8:
59160 pause 200:goto Jyoushi_Input_Born_Day2:
59170 case 1:
59180 No=4:sp_on 5,1:sp_on 6,0
59190 pause 200:goto Jyoushi_Input_Born_Day2:
59200 case 4:
59210 No=7:sp_on 4,1:sp_on 5,0
59220 pause 200:goto Jyoushi_Input_Born_Day2:
59230 case 7:
59240 pause 200:goto Jyoushi_Input_Born_Day2:
59250 end select
59260 endif
59270 '左３　ここまで
59280 '下の矢印
59290 '中央 2
59300 if ((y=1) or (key$ = chr$(31))) then
59310 select case No
59320 '9から６に下げる
59330 case 9:
59340 No=6:sp_on 11,1:sp_on 10,0
59350 pause 200:goto Jyoushi_Input_Born_Day2:
59360 '6から３に下げる
59370 case 6:
59380 No=3:sp_on 12,1:sp_on 11,0
59390 pause 200:goto Jyoushi_Input_Born_Day2:
59400 '3から０ｋに変える
59410 case 3:
59420 No=-1:sp_on 14,1:sp_on 12,0
59430 pause 200:goto Jyoushi_Input_Born_Day2:
59440 'Okから下のボタンを押しても何もしない
59450 case -1:
59460 pause 200:goto Jyoushi_Input_Born_Day2:
59470 case 8:
59480 No=5:sp_on 8,1:sp_on 7,0
59490 pause 200:goto Jyoushi_Input_Born_Day2:
59500 case 5:
59510 No=2:sp_on 9,1:sp_on 8,0
59520 pause 200:goto Jyoushi_Input_Born_Day2:
59530 case 2:
59540 No=0:sp_on 13,1:sp_on 9,0
59550 pause 200:goto Jyoushi_Input_Born_Day2:
59560 case 0:
59570 pause 200:goto Jyoushi_Input_Born_Day2:
59580 case 7:
59590 No=4:sp_on 5,1:sp_on 4,0
59600 pause 200:goto Jyoushi_Input_Born_Day2:
59610 case 4:
59620 No=1:sp_on 6,1:sp_on 5,0
59630 pause 200:goto Jyoushi_Input_Born_Day2:
59640 case 1:
59650 pause 200:goto Jyoushi_Input_Born_Day2:
59660 end select
59670 endif
59680 '左へボタン 十字キー　左　or 　カーソル左
59690 if ((y2 = -1) or (key$ = chr$(29))) then
59700 select case No
59710 'Ok ボタン  Okから　左　０に行く
59720 case -1:
59730 No=0:sp_on 13,1:sp_on 14,0
59740 pause 200:goto Jyoushi_Input_Born_Day2:
59750 '0 ボタン  左　何もしない
59760 case 0:
59770 pause 200:goto Jyoushi_Input_Born_Day2:
59780 case 3:
59790 No=2:sp_on 9,1:sp_on 12,0:
59800 pause 200:goto Jyoushi_Input_Born_Day2:
59810 case 2:
59820 No=1:sp_on 6,1:sp_on 9,0:
59830 pause 200:goto Jyoushi_Input_Born_Day2:
59840 case 1:
59850 pause 200:goto Jyoushi_Input_Born_Day2:
59860 case 6:
59870 No=5:sp_on 8,1:sp_on 11,0
59880 pause 200:goto Jyoushi_Input_Born_Day2:
59890 case 5:
59900 No=4:sp_on 5,1:sp_on 8,0
59910 pause 200:goto Jyoushi_Input_Born_Day2:
59920 case 4:
59930 pause 200:goto Jyoushi_Input_Born_Day2:
59940 case 9:
59950 No=8:sp_on 7,1:sp_on 10,0
59960 pause 200:goto Jyoushi_Input_Born_Day2:
59970 case 8:
59980 No=7:sp_on 4,1:sp_on 7,0
59990 pause 200:goto Jyoushi_Input_Born_Day2:
60000 case 7:
60010 pause 200:goto Jyoushi_Input_Born_Day2:
60020 end select
60030 endif
60040 '右  十字キー　右　or カーソル　右
60050 if ((y2 = 1) or (key$ = chr$(28))) then
60060 select case No
60070 '0ボタンからokボタン右に移動
60080 case 0:
60090 No=-1:sp_on 14,1:sp_on 13,0
60100 pause 200:goto Jyoushi_Input_Born_Day2:
60110 '0ボタンからokボタン 右に移動　ここまで
60120 'OKボタンで右を押して何もしない
60130 case -1:
60140 pause 200:goto Jyoushi_Input_Born_Day2:
60150 case 1:
60160 No=2:sp_on 9,1:sp_on 6,0
60170 pause 200:goto Jyoushi_Input_Born_Day2:
60180 case 2:
60190 No=3:sp_on 12,1:sp_on 9,0
60200 pause 200:goto Jyoushi_Input_Born_Day2:
60210 case 3:
60220 pause 200:goto Jyoushi_Input_Born_Day2:
60230 case 4:
60240 No=5:sp_on 8,1:sp_on 5,0
60250 pause 200:goto Jyoushi_Input_Born_Day2:
60260 case 5:
60270 No=6:sp_on 11,1:sp_on 8,0
60280 pause 200:goto Jyoushi_Input_Born_Day2:
60290 case 7:
60300 No=8:sp_on 7,1:sp_on 4,0
60310 pause 200:goto Jyoushi_Input_Born_Day2:
60320 case 8:
60330 No=9:sp_on 10,1:sp_on 7,0
60340 pause 200:goto Jyoushi_Input_Born_Day2:
60350 case 9:
60360 pause 200:goto Jyoushi_Input_Born_Day2:
60370 case 6:
60380 pause 200:goto Jyoushi_Input_Born_Day2:
60390 end select
60400 'Okから右ボタンを押して何もしない ここまで
60410 endif
60420 '十字キー　ここまで
60430 '右の丸ボタンを押したとき
60440 if ((bg = 2) or (key$ = chr$(13))) then
60450 'count :決定ボタンを押した回数
60460 select case (count)
60470 '1桁目入力
60480 case 0:
60490 count = 1:
60500 if (No = -1) then
60510 '1桁目　OKでは何もしない
60520 No=c
60530 'goto Jyoushi_Input_Born_Day2:
60540 else
60550 'ok以外のボタンを押したとき
60560 buf_day = No:buf_Day$ = str$(No)
60570 buf_Jyoushi_Born_Day(2)=buf_day
60580 c=No
60590 locate 1,3
60600 print "                                      "
60610 color RGB(255,255,255)
60620 locate 1,3
60630 print "上司の生まれた日(1日~31日):" + buf_Day$
60640 endif
60650 'check2:
60660 'if (buf_day >= 1 and buf_day <= 9) then
60670 'sp_on 14,0
60680 'goto complate_jyoushi:
60690 'else
60700 'sp_on 14,0
60710 goto Jyoushi_Input_Born_Day2:
60720 'end
60730 'endif
60740 case 1:
60750 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
60760 count = 2:
60770 'locate 2,3
60780 'color RGB(255,255,255)
60790 'print "生まれた日(1日~31日):";buf_Day$
60800 'Okボタンを押したときの処理
60810 '入力値　10未満のとき
60820 'buf_day = c * 10 + No
60830 if (No = -1) then
60840 c=buf_day:No=0
60850 'buf_day = c
60860 buf_Day$ = str$(buf_day)
60870 '10以下のとき
60880 'if (buf_day < 10) then
60890 sp_on 14,0
60900 goto complate_jyoushi:
60910 'end
60920 'endif
60930 else
60940 'c=No
60950 buf_day = c * 10 + No
60960 buf_Day$ = str$(buf_day)
60970 'buf_day = c:buf_Day$=str$(buf_day)
60980 buf_Jyoushi_Born_Day(2)=buf_day
60990 locate 1,3
61000 print "                                           "
61010 locate 1,3
61020 color Rgb(255,255,255)
61030 print "上司の生まれた日(1日~31日):" + buf_Day$
61040 goto Jyoushi_Input_Born_Day2:
61050 'goto
61060 endif
61070 'endif
61080 '生まれた日　2桁目の数字　or 1桁の数字 + ok
61090 case 2:
61100 'buf_day = c * 10 + No
61110 'buf_Jyoushi_Born_Day(2)=buf_day
61120 'locate 1,3
61130 'print "                                      "
61140 'locate 1,3
61150 'locate 2,3
61160 'print "生まれた日(1日〜31日):";buf_Day
61170 'No=-1:ok ボタンを押したとき
61180 if (No = -1) then
61190 'if ((buf_day > 0) and (buf_day < 32)) then
61200 No=0
61210 sp_on 14,0
61220 goto complate_jyoushi:
61230 'end
61240 else
61250 goto Jyoushi_Input_Born_Day2:
61260 'endif
61270 'Okボタン以外を押したとき
61280 'else
61290 'c=val(buf_Day$)
61300 'buf_day = c * 10 + No
61310 'buf_Jyoushi_Born_Day(2) = buf_day
61320 'buf_Day$ = str$(buf_day)
61330 'locate 1,3
61340 'print "上司の生まれた日(1日~31日):";buf_Day$
61350 'goto Jyoushi_Input_Born_Day2:
61360 endif
61370 'case 3:
61380 'count=4
61390 'c=val(buf_day$)
61400 'buf_day=c*10+No
61410 'buf_day$=str$(buf_day)
61420 'locate 2,3
61430 'print "生まれた日を入れてください:";buf_day$
61440 'year=val(buf_year$)
61450 'if (No = -1) then
61460 'goto Jyoushi_Input_Born_Day:
61470 'sp_on 14,0:
61480 'goto complate_jyoushi:
61490 'else
61500 'goto Jyoushi_Input_Born_Month2:
61510 'endif
61520 'case 4:
61530 'bufyear=buf_year
61540 'if (No=-1) then
61550 'buf_day = val(buf_day$)
61560 'bufday = buf_day
61570 'sp_on 14,0
61580 'goto Jyoushi_Input_Born_Day2:
61590 'else
61600 'goto Jyoushi_Input_Born_Day2:
61610 'endif
61620 end select
61630 endif
61640 if (bg2=2) then
61650 select case count2
61660 case 0:
61670 if (No=-1) then
61680 buf_day=0:buf_Day$="**":No=0
61690 if (buf_day >= 1 and buf_day <= 31) then
61700 count=0
61710 buf_day=0:buf_Day$ = "**"
61720 goto rewrite_day3:
61730 else
61740 buf_day=0:buf_Day$ = "**"
61750 ui_msg"値が範囲外です"
61760 endif
61770 goto rewrite_day3:
61780 else
61790 goto rewrite_day3:
61800 endif
61810 rewrite_day3:
61820 locate 2,3
61830 color rgb(255,255,255)
61840 print "                                      "
61850 locate 2,3
61860 print "生まれた日(1日~31日):" + buf_Day$
61870 goto Jyoushi_Input_Born_Day2:
61880 end select
61890 endif
61900 '--------------------------------------------'
61910 'locate 2,0:color rgb(255,0,0)
61920 'print "上司の生まれた年代を入力"
61930 'color rgb(255,255,255)
61940 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
61950 'locate 2,4:Input "上司の生まれた年:",born_year
61960 '誕生日データーを配列に代入
61970 'buf_Jyoushi_Born_Year:上司の生まれた年代
61980 'buf_Jyoushi_Born_Day(0) = born_year
61990 'born_year = 0
62000 '---------------------------------------------'
62010 'goto Jyoushi_born_month:
62020 '1-2.生まれた月を入力
62030 'Jyoushi_born_month:
62040 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62050 'init "kb:4"
62060 'locate 2,1:
62070 'color rgb(255,0,0)
62080 'print "上司の生まれた月入力"
62090 'color rgb(255,255,255)
62100 'locate 2,4:print "生まれた月を入力してください"
62110 'locate 2,5
62120 'Input "上司の生まれ月:",born_month
62130 'buf_Jyoushi_Born_Day(1) = born_month
62140 'born_month = 0
62150 'goto Jyoushi_born_day:
62160 'buf_Jyoushi_Born_day
62170 '1-3.生まれた日を入力
62180 'Jyoushi_born_day:
62190 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62200 'init "kb:4"
62210 'locate 2,1:color rgb(255,0,0)
62220 'print "上司の生まれた日　入力"
62230 'locate 2,4:color rgb(255,255,255)
62240 'print "生まれた日を入力してください"
62250 'locate 2,5
62260 'Input "上司の生まれた日:",born_day
62270 'buf_Jyoushi_Born_Day(2) = born_day
62280 'born_day = 0
62290 'goto buka_born_year:
62300 '2.部下の誕生日入力
62310 '2-1.生まれた年を入力
62320 'buka_born_year:
62330 'cls 3:gload Gazo$+"Screen1.png",0,0,0
62340 'init "kb:2"
62350 'locate 1,1:color rgb(255,0,0)
62360 'print "部下の生まれた年代入力"
62370 'locate 0,4:color rgb(255,255,255)
62380 'print "部下の生まれた年（西暦4桁）を入れてください"
62390 'locate 0,5
62400 'Input "部下の生まれた年(西暦4桁):",born_year
62410 'buf_Buka_Born_Day(0) = born_year
62420 'born_year = 0
62430 '2-2.生まれた月を入力
62440 'buka_born_month:
62450 'cls 3:gload Gazo$+"Screen1.png",0,0,0
62460 'init "kb:2"
62470 'locate 2,1:color rgb(255,0,0)
62480 'print "部下の生まれた月 入力"
62490 'locate 2,4:color rgb(255,255,255)
62500 'print "部下の生まれた月を入力してください"
62510 'locate 2,5:Input "部下の生まれた月:",born_month
62520 'buf_Buka_Born_Day(1) = born_month
62530 '2-3.生まれた日を入力
62540 'buka_born_day:
62550 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
62560 'init "kb:2"
62570 'locate 2,1:color rgb(255,0,0)
62580 'print "生まれた日入力"
62590 'color rgb(255,255,255)
62600 'locate 2,4:print "生まれた日を入力してください"
62610 'locate 2,5:Input "部下の生まれた日:",born_day
62620 'buf_Buka_Born_Day(2) = born_day
62630 'born_day=0:goto Result_Business_Aisyou:
62640 '--------------------------------------------'
62650 complate_jyoushi:
62660 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
62670 buf_Jyoushi = Kabara_Num(a,b,c)
62680 a_1=buf_Jyoushi
62690 goto Buka_Input_Seireki:
62700 '--------------------------------------------'
62710 '部下'
62720 '1.部下の生まれた年代'
62730 Buka_Input_Seireki:
62740 cls 3:play "":count=0:count2=0
62750 init"kb:4"
62760 'No=-1:Okのとき
62770 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
62780 for i=0 to 3
62790 buf_Buka_Born_Day(i)=0
62800 next i
62810 gload Gazo$ + "Screen2.png",0,0,0
62820 gload Gazo$ + "downscreen.png",0,0,800
62830 'Init"kb:2"
62840 '音声ファイル再生 2023.06.07
62850 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
62860 font 48
62870 locate 0,1
62880 '文字色：黒　 color rgb(0,0,0)
62890 color rgb(255,255,255)
62900 print "部下の生まれた年代を入れて下さい" + chr$(13)
62910 color rgb(255,255,255)
62920 locate 1,3
62930 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
62940 color rgb(255,255,255)
62950 'locate 4,6:print ":7"
62960 'locate 9,6:print ":8"
62970 'locate 12,6:print ":9"
62980 'locate 4,6
62990 'print ":7  :8  :9" + chr$(13)
63000 'color rgb(255,255,255)
63010 'locate 4,8
63020 'print ":4  :5  :6" + chr$(13)
63030 'color rgb(255,255,255)
63040 'locate 4,10
63050 'print ":1  :2  :3" + chr$(13)
63060 'locate 4,12
63070 'print "    :0"
63080 'locate 12,12
63090 'color rgb(0,0,255)
63100 'print ":Ok"
63110 sp_on 4,0: sp_on 5,0:sp_on 6,0
63120 sp_on 7,0:sp_on 8,0:sp_on 9,0
63130 sp_on 10,0:sp_on 11,0:sp_on 12,0
63140 sp_on 13,0:sp_on 14,1
63150 Buka_Input_Seireki2:
63160 key$="":bg=0:y=0:y2=0:bg2=0:
63170 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63180 key$ = inkey$
63190 bg = strig(1)
63200 y = stick(1)
63210 y2 = stick(0)
63220 bg2=strig(0)
63230 pause 200
63240 wend
63250 '十字キー　ここから
63260 '上の矢印　または、十字キー上
63270 if ((y = -1) or (key$ = chr$(30))) then
63280 select case No
63290 'No=-1:okのとき:初期の状態
63300 '0kボタンから３に移動
63310 '上に行く 処理
63320 case -1:
63330 No=3:sp_on 12,1:sp_on 14,0
63340 pause 200:goto Buka_Input_Seireki2:
63350 '選択肢:3
63360 '3ボタンから 6に移動
63370 case 3:
63380 No=6:sp_on 12,0:sp_on 11,1
63390 pause 200:goto Buka_Input_Seireki2:
63400 '6ボタンから ９に移動
63410 case 6:
63420 No=9:sp_on 10,1:sp_on 11,0
63430 pause 200:goto Buka_Input_Seireki2:
63440 '6ボタンから ９に移動　ここまで
63450 '9で上を押して何もしない
63460 case 9:
63470 '何もしない
63480 No=9
63490 pause 200:goto Buka_Input_Seireki2:
63500 '9で上を押しても何もしない　ここまで
63510 '上　 0ボタンから2ボタン
63520 'sp_on 6,1:1
63530 'sp_on 8,1:5
63540 'sp_on 7,1:7
63550 case 0:
63560 No=2:sp_on 13,0:sp_on 9,1:
63570 pause 200:goto Buka_Input_Seireki2:
63580 '上  0ボタンから2ボタン　ここまで
63590 '2から５になる 上
63600 case 2:
63610 No=5:sp_on 8,1:sp_on 9,0:
63620 pause 200:goto Buka_Input_Seireki2:
63630 case 5:
63640 No=8:sp_on 7,1:sp_on 8,0
63650 pause 200:goto Buka_Input_Seireki2:
63660 case 8:
63670 pause 200:goto Buka_Input_Seireki2:
63680 case 1:
63690 No=4:sp_on 5,1:sp_on 6,0
63700 pause 200:goto Buka_Input_Seireki2:
63710 case 4:
63720 No=7:sp_on 4,1:sp_on 5,0
63730 pause 200:goto Buka_Input_Seireki2:
63740 case 7:
63750 pause 200:goto Buka_Input_Seireki2:
63760 end select
63770 endif
63780 '左３　ここまで
63790 '下の矢印
63800 '中央 2
63810 if ((y=1) or (key$ = chr$(31))) then
63820 select case No
63830 '9から６に下げる
63840 case 9:
63850 No=6:sp_on 11,1:sp_on 10,0
63860 pause 200:goto Buka_Input_Seireki2:
63870 '6から３に下げる
63880 case 6:
63890 No=3:sp_on 12,1:sp_on 11,0
63900 pause 200:goto Buka_Input_Seireki2:
63910 '3から０ｋに変える
63920 case 3:
63930 No=-1:sp_on 14,1:sp_on 12,0
63940 pause 200:goto Buka_Input_Seireki2:
63950 'Okから下のボタンを押しても何もしない
63960 case -1:
63970 pause 200:goto Buka_Input_Seireki2:
63980 case 8:
63990 No=5:sp_on 8,1:sp_on 7,0
64000 pause 200:goto Buka_Input_Seireki2:
64010 case 5:
64020 No=2:sp_on 9,1:sp_on 8,0
64030 pause 200:goto Buka_Input_Seireki2:
64040 case 2:
64050 No=0:sp_on 13,1:sp_on 9,0
64060 pause 200:goto Buka_Input_Seireki2:
64070 case 0:
64080 pause 200:goto Buka_Input_Seireki2:
64090 case 7:
64100 No=4:sp_on 5,1:sp_on 4,0
64110 pause 200:goto Buka_Input_Seireki2:
64120 case 4:
64130 No=1:sp_on 6,1:sp_on 5,0
64140 pause 200:goto Buka_Input_Seireki2:
64150 case 1:
64160 pause 200:goto Buka_Input_Seireki2:
64170 end select
64180 endif
64190 '左へボタン 十字キー　左　or 　カーソル左
64200 if ((y2 = -1) or (key$ = chr$(29))) then
64210 select case No
64220 'Ok ボタン  Okから　左　０に行く
64230 case -1:
64240 No=0:sp_on 13,1:sp_on 14,0
64250 pause 200:goto Buka_Input_Seireki2:
64260 '0 ボタン  左　何もしない
64270 case 0:
64280 pause 200:goto Buka_Input_Seireki2:
64290 case 3:
64300 No=2:sp_on 9,1:sp_on 12,0:
64310 pause 200:goto Buka_Input_Seireki2:
64320 case 2:
64330 No=1:sp_on 6,1:sp_on 9,0:
64340 pause 200:goto Buka_Input_Seireki2:
64350 case 1:
64360 pause 200:goto Buka_Input_Seireki2:
64370 case 6:
64380 No=5:sp_on 8,1:sp_on 11,0
64390 pause 200:goto Buka_Input_Seireki2:
64400 case 5:
64410 No=4:sp_on 5,1:sp_on 8,0
64420 pause 200:goto Buka_Input_Seireki2:
64430 case 4:
64440 pause 200:goto Buka_Input_Seireki2:
64450 case 9:
64460 No=8:sp_on 7,1:sp_on 10,0
64470 pause 200:goto Buka_Input_Seireki2:
64480 case 8:
64490 No=7:sp_on 4,1:sp_on 7,0
64500 pause 200:goto Buka_Input_Seireki2:
64510 case 7:
64520 pause 200:goto Buka_Input_Seireki2:
64530 end select
64540 endif
64550 '右  十字キー　右　or カーソル　右
64560 if ((y2 = 1) or (key$ = chr$(28))) then
64570 select case No
64580 '0ボタンからokボタン右に移動
64590 case 0:
64600 No=-1:sp_on 14,1:sp_on 13,0
64610 pause 200:goto Buka_Input_Seireki2:
64620 '0ボタンからokボタン 右に移動　ここまで
64630 'OKボタンで右を押して何もしない
64640 case -1:
64650 pause 200:goto Buka_Input_Seireki2:
64660 case 1:
64670 No=2:sp_on 9,1:sp_on 6,0
64680 pause 200:goto Buka_Input_Seireki2:
64690 case 2:
64700 No=3:sp_on 12,1:sp_on 9,0
64710 pause 200:goto Buka_Input_Seireki2:
64720 case 3:
64730 pause 200:goto Buka_Input_Seireki2:
64740 case 4:
64750 No=5:sp_on 8,1:sp_on 5,0
64760 pause 200:goto Buka_Input_Seireki2:
64770 case 5:
64780 No=6:sp_on 11,1:sp_on 8,0
64790 pause 200:goto Buka_Input_Seireki2:
64800 case 7:
64810 No=8:sp_on 7,1:sp_on 4,0
64820 pause 200:goto Buka_Input_Seireki2:
64830 case 8:
64840 No=9:sp_on 10,1:sp_on 7,0
64850 pause 200:goto Buka_Input_Seireki2:
64860 case 9:
64870 pause 200:goto Buka_Input_Seireki2:
64880 case 6:
64890 pause 200:goto Buka_Input_Seireki2:
64900 end select
64910 'Okから右ボタンを押して何もしない ここまで
64920 endif
64930 '十字キー　ここまで
64940 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
64950 'ここからコメント
64960 '右の丸ボタン決定を押した数:count
64970 'if ((bg=2) or (key$=chr$(13))) then
64980 'select case count
64990 'case 0:
65000 'count=1
65010 'if (No = -1) then
65020 'count = 0
65030 'Okボタンを押したとき
65040 '
65050 'goto Buka_Input_Seireki2:
65060 'else
65070 'Okボタン以外が押されたとき
65080 'if (No >= 1 and No <= 2) then
65090 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
65100 'buf_buka_year = No
65110 'buf_Buka_Born_Day(0) = bufyear
65120 'locate 2,3
65130 'color rgb(255,255,255)
65140 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65150 'goto Buka_Input_Seireki2:
65160 'else
65170 'count=0
65180 'ui_msg"数字が範囲外になります。"
65190 'buf_buka_year$ ="":buf_buka_year=0
65200 'goto Buka_Input_Seireki2:
65210 'endif
65220 'endif
65230 'case 1:
65240 'count = 2
65250 'if (No = -1) then
65260 'count = 1
65270 'goto Buka_Input_Seireki2:
65280 'else
65290 'b = val(buf_buka_year$)
65300 'buf_buka_year = b * 10 + No
65310 'buf_buka_year$ = str$(buf_buka_year)
65320 'buf_Buka_Born_Day(0) = bufyear
65330 'locate 1,3
65340 'color rgb(255,255,255)
65350 'print "                                                                "
65360 'locate 1,3
65370 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65380 'if (No = -1) then
65390 'count=1
65400 'goto Buka_Input_Seireki2:
65410 'endif
65420 'case 2:
65430 'count = 3
65440 'if (No = -1) then
65450 'count = 2
65460 'buf_Buka_Born_Day(0)=bufyear
65470 'goto Buka_Input_Seireki2:
65480 'else
65490 'b = val(buf_buka_year$)
65500 'buf_buka_year = b*10 + No
65510 'buf_buka_year$ = str$(buf_buka_year)
65520 'locate 1,3
65530 'color rgb(255,255,255)
65540 'print "                                        "
65550 'locate 1,3
65560 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
65570 'goto Buka_Input_Seireki2:
65580 'endif
65590 'case 3:
65600 'count=4
65610 'if (No = -1) then
65620 'count=3
65630 'goto Buka_Input_Seireki2:
65640 'else
65650 'b = buf_buka_year
65660 'buf_buka_year = b * 10 + No
65670 'buf_buka_year$=str$(buf_buka_year)
65680 'locate 1,3
65690 'color RGB(255,255,255)
65700 'print "                                      "
65710 'locate 1,3
65720 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65730 'buf_year=val(buf_year$)
65740 'year=val(buf_year$)
65750 'if (No=-1) then
65760 'goto Input_Born_Month:
65770 'else
65780 'goto Buka_Input_Seireki2:
65790 'endif
65800 'case 4:
65810 'bufyear=buf_year
65820 'if (No=-1) then
65830 'buf_year = val(buf_year$)
65840 'bufyear = buf_year
65850 'sp_on 14,0
65860 'goto Buka_Input_Born_Month:
65870 'else
65880 'goto Buka_Input_Seireki2:
65890 'endif
65900 'end select
65910 'endif
65920 'if (bg2 = 2) then
65930 'select case count2
65940 'case 0:
65950 'if (No = -1) then
65960 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
65970 'count=0
65980 'locate 1,3
65990 'color rgb(255,255,255)
66000 'print "                                      "
66010 'locate 1,3
66020 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
66030 'goto Buka_Input_Seireki2:
66040 'else
66050 '(buf_year=0) then
66060 'buf_buka_year=0:buf_buka_year$="****"
66070 'goto Buka_Input_Seireki2:
66080 'endif
66090 'endif
66100 'end select
66110 'endif
66120 'end
66130 'ここまでコメント
66140 '================================================================
66150 if ((bg=2) or (key$=chr$(13))) then
66160 select case count
66170 case 0:
66180 count = 1
66190 if (No=-1) then
66200 count = 0
66210 buf_Buka_Born_Day(0) = No
66220 'Okボタンを押したとき
66230 goto Buka_Input_Seireki2:
66240 else
66250 'Okボタン以外が押されたとき
66260 if (No>=1 and No<=2) then
66270 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
66280 buf_buka_year = No
66290 buf_Buka_Born_Day(0) = No
66300 locate 1,3
66310 color rgb(255,255,255)
66320 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66330 goto Buka_Input_Seireki2:
66340 else
66350 count=0
66360 ui_msg"数字が範囲外になります。"
66370 buf_buka_year$="":buf_buka_year=0
66380 goto Buka_Input_Seireki2:
66390 endif
66400 endif
66410 case 1:
66420 count = 2
66430 if (No = -1) then
66440 count = 1
66450 goto Buka_Input_Seireki2:
66460 else
66470 'b = val(buf_buka_year$)
66480 buf_buka_year = a * 10 + No
66490 b=buf_buka_year
66500 buf_buka_year$ = str$(buf_buka_year)+"**"
66510 buf_Buka_Born_Day(0)=buf_buka_year
66520 locate 1,3
66530 color rgb(255,255,255)
66540 print "                                                                "
66550 locate 1,3
66560 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
66570 'if (No = -1) then
66580 'count=1
66590 goto Buka_Input_Seireki2:
66600 endif
66610 case 2:
66620 count=3
66630 if (No=-1) then
66640 count =2:No=0
66650 goto Buka_Input_Seireki2:
66660 else
66670 'b = val(buf_buka_year$)
66680 buf_buka_year = b * 10 + No
66690 c = buf_buka_year
66700 buf_buka_year$ = str$(buf_buka_year) + "*"
66710 buf_Buka_Born_Day(0) = buf_buka_year
66720 locate 1,3
66730 color rgb(255,255,255)
66740 print "                                        "
66750 locate 1,3
66760 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66770 goto Buka_Input_Seireki2:
66780 endif
66790 case 3:
66800 count=4
66810 if (No = -1) then
66820 'count=3:No=0
66830 goto Buka_Input_Seireki2:
66840 else
66850 'b = val(buf_buka_year$)
66860 buf_buka_year=c * 10 + No
66870 buf_buka_year$=str$(buf_buka_year)
66880 buf_Buka_Born_Day(0)=buf_buka_year
66890 locate 1,3
66900 color RGB(255,255,255)
66910 print "                                      "
66920 locate 1,3
66930 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
66940 buf_buka_year=val(buf_buka_year$)
66950 'year=val(buf_year$)
66960 'if (No=-1) then
66970 'goto Input_Born_Month:
66980 'else
66990 goto Buka_Input_Seireki2:
67000 endif
67010 case 4:
67020 'bufyear=buf_year
67030 if (No = -1) then
67040 buf_buka_year = val(buf_buka_year$)
67050 buf_Buka_Born_Day(0)=buf_buka_year
67060 sp_on 14,0
67070 goto Buka_Input_Born_Month:
67080 else
67090 goto Buka_Input_Seireki2:
67100 endif
67110 end select
67120 endif
67130 '================================================================
67140 'ここにコピーする。
67150 '================================================================
67160 'Input"部下の生れた年代(4桁,〜2025年):",year
67170 'if year > 2025 then goto Jyoushi_Input_Seireki:
67180 'if year = 123 then cls 3:cls 4:goto Main_Screen:
67190 '"4桁目"
67200 'bufyear4 = fix(year / 1000)
67210 '"3桁目"
67220 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
67230 '"2桁目"
67240 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
67250 '"1桁目"
67260 'bufyear1 = fix((year - ((bufyear4*
67270 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
67280 '1.部下の生まれた年代'
67290 '2.部下の生まれた月'
67300 Buka_Input_Born_Month:
67310 cls 3:play "":count=0:count2=0
67320 'No=-1:Okのとき
67330 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
67340 for i=0 to 1
67350 buf_month(i)=0
67360 next i
67370 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
67380 gload Gazo$ + "Screen2.png",0,0,0
67390 gload Gazo$ + "downscreen.png",0,0,800
67400 'Init"kb:4"
67410 '音声ファイル再生 2023.06.07
67420 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
67430 font 48
67440 locate 0,1
67450 '文字色：黒　 color rgb(0,0,0)
67460 '文字色:白
67470 color rgb(255,255,255)
67480 print "部下の生まれた月を入れて下さい" + chr$(13)
67490 '文字色:白
67500 color rgb(255,255,255)
67510 locate 1,3
67520 '文字色:白
67530 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
67540 color rgb(255,255,255)
67550 'locate 4,6:print ":7"
67560 'locate 9,6:print ":8"
67570 'locate 12,6:print ":9"
67580 'locate 4,6
67590 '文字色:赤
67600 'print ":7  :8  :9" + chr$(13)
67610 'color rgb(255,255,255)
67620 'locate 4,8
67630 'print ":4  :5  :6" + chr$(13)
67640 'color rgb(255,255,255)
67650 'locate 4,10
67660 'print ":1  :2  :3" + chr$(13)
67670 'locate 4,12
67680 'print "    :0"
67690 'locate 12,12
67700 'color rgb(0,0,255)
67710 'print ":Ok"
67720 sp_on 4,0: sp_on 5,0:sp_on 6,0
67730 sp_on 7,0:sp_on 8,0:sp_on 9,0
67740 sp_on 10,0:sp_on 11,0:sp_on 12,0
67750 sp_on 13,0:sp_on 14,1
67760 Buka_Input_Born_Month2:
67770 key$="":bg=0:y=0:y2=0:bg2=0
67780 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
67790 key$ = inkey$
67800 bg = strig(1)
67810 y = stick(1)
67820 y2 = stick(0)
67830 bg2 = strig(0)
67840 pause 200
67850 wend
67860 '十字キー　ここから
67870 '上の矢印　または、十字キー上
67880 if ((y = -1) or (key$ = chr$(30))) then
67890 select case No
67900 'No=-1:okのとき:初期の状態
67910 '0kボタンから３に移動
67920 '上に行く 処理
67930 case -1:
67940 No=3:sp_on 12,1:sp_on 14,0
67950 pause 200:goto Buka_Input_Born_Month2:
67960 '選択肢:3
67970 '3ボタンから 6に移動
67980 case 3:
67990 No=6:sp_on 12,0:sp_on 11,1
68000 pause 200:goto Buka_Input_Born_Month2:
68010 '6ボタンから ９に移動
68020 case 6:
68030 No=9:sp_on 10,1:sp_on 11,0
68040 pause 200:goto Buka_Input_Born_Month2:
68050 '6ボタンから ９に移動　ここまで
68060 '9で上を押して何もしない
68070 case 9:
68080 '何もしない
68090 No=9
68100 pause 200:goto Buka_Input_Born_Month2:
68110 '9で上を押しても何もしない　ここまで
68120 '上　 0ボタンから2ボタン
68130 'sp_on 6,1:1
68140 'sp_on 8,1:5
68150 'sp_on 7,1:7
68160 case 0:
68170 No=2:sp_on 13,0:sp_on 9,1:
68180 pause 200:goto Buka_Input_Born_Month2:
68190 '上  0ボタンから2ボタン　ここまで
68200 '2から５になる 上
68210 case 2:
68220 No=5:sp_on 8,1:sp_on 9,0:
68230 pause 200:goto Buka_Input_Born_Month2:
68240 case 5:
68250 No=8:sp_on 7,1:sp_on 8,0
68260 pause 200:goto Buka_Input_Born_Month2:
68270 case 8:
68280 pause 200:goto Buka_Input_Born_Month2:
68290 case 1:
68300 No=4:sp_on 5,1:sp_on 6,0
68310 pause 200:goto Buka_Input_Born_Month2:
68320 case 4:
68330 No=7:sp_on 4,1:sp_on 5,0
68340 pause 200:goto Buka_Input_Born_Month2:
68350 case 7:
68360 pause 200:goto Buka_Input_Born_Month2:
68370 end select
68380 endif
68390 '左３　ここまで
68400 '下の矢印
68410 '中央 2
68420 if ((y=1) or (key$ = chr$(31))) then
68430 select case No
68440 '9から６に下げる
68450 case 9:
68460 No=6:sp_on 11,1:sp_on 10,0
68470 pause 200:goto Buka_Input_Born_Month2:
68480 '6から３に下げる
68490 case 6:
68500 No=3:sp_on 12,1:sp_on 11,0
68510 pause 200:goto Buka_Input_Born_Month2:
68520 '3から０ｋに変える
68530 case 3:
68540 No=-1:sp_on 14,1:sp_on 12,0
68550 pause 200:goto Buka_Input_Born_Month2:
68560 'Okから下のボタンを押しても何もしない
68570 case -1:
68580 pause 200:goto Buka_Input_Born_Month2:
68590 case 8:
68600 No=5:sp_on 8,1:sp_on 7,0
68610 pause 200:goto Buka_Input_Born_Month2:
68620 case 5:
68630 No=2:sp_on 9,1:sp_on 8,0
68640 pause 200:goto Buka_Input_Born_Month2:
68650 case 2:
68660 No=0:sp_on 13,1:sp_on 9,0
68670 pause 200:goto Buka_Input_Born_Month2:
68680 case 0:
68690 pause 200:goto Buka_Input_Born_Month2:
68700 case 7:
68710 No=4:sp_on 5,1:sp_on 4,0
68720 pause 200:goto Buka_Input_Born_Month2:
68730 case 4:
68740 No=1:sp_on 6,1:sp_on 5,0
68750 pause 200:goto Buka_Input_Born_Month2:
68760 case 1:
68770 pause 200:goto Buka_Input_Born_Month2:
68780 end select
68790 endif
68800 '左へボタン 十字キー　左　or 　カーソル左
68810 if ((y2 = -1) or (key$ = chr$(29))) then
68820 select case No
68830 'Ok ボタン  Okから　左　０に行く
68840 case -1:
68850 No=0:sp_on 13,1:sp_on 14,0
68860 pause 200:goto Buka_Input_Born_Month2:
68870 '0 ボタン  左　何もしない
68880 case 0:
68890 pause 200:goto Buka_Input_Born_Month2:
68900 case 3:
68910 No=2:sp_on 9,1:sp_on 12,0:
68920 pause 200:goto Buka_Input_Born_Month2:
68930 case 2:
68940 No=1:sp_on 6,1:sp_on 9,0:
68950 pause 200:goto Buka_Input_Born_Month2:
68960 case 1:
68970 pause 200:goto Buka_Input_Born_Month2:
68980 case 6:
68990 No=5:sp_on 8,1:sp_on 11,0
69000 pause 200:goto Buka_Input_Born_Month2:
69010 case 5:
69020 No=4:sp_on 5,1:sp_on 8,0
69030 pause 200:goto Buka_Input_Born_Month2:
69040 case 4:
69050 pause 200:goto Buka_Input_Born_Month2:
69060 case 9:
69070 No=8:sp_on 7,1:sp_on 10,0
69080 pause 200:goto Buka_Input_Born_Month2:
69090 case 8:
69100 No=7:sp_on 4,1:sp_on 7,0
69110 pause 200:goto Buka_Input_Born_Month2:
69120 case 7:
69130 pause 200:goto Buka_Input_Born_Month2:
69140 end select
69150 endif
69160 '右  十字キー　右　or カーソル　右
69170 if ((y2 = 1) or (key$ = chr$(28))) then
69180 select case No
69190 '0ボタンからokボタン右に移動
69200 case 0:
69210 No=-1:sp_on 14,1:sp_on 13,0
69220 pause 200:goto Buka_Input_Born_Month2:
69230 '0ボタンからokボタン 右に移動　ここまで
69240 'OKボタンで右を押して何もしない
69250 case -1:
69260 pause 200:goto Buka_Input_Born_Month2:
69270 case 1:
69280 No=2:sp_on 9,1:sp_on 6,0
69290 pause 200:goto Buka_Input_Born_Month2:
69300 case 2:
69310 No=3:sp_on 12,1:sp_on 9,0
69320 pause 200:goto Buka_Input_Born_Month2:
69330 case 3:
69340 pause 200:goto Buka_Input_Born_Month2:
69350 case 4:
69360 No=5:sp_on 8,1:sp_on 5,0
69370 pause 200:goto Buka_Input_Born_Month2:
69380 case 5:
69390 No=6:sp_on 11,1:sp_on 8,0
69400 pause 200:goto Buka_Input_Born_Month2:
69410 case 7:
69420 No=8:sp_on 7,1:sp_on 4,0
69430 pause 200:goto Buka_Input_Born_Month2:
69440 case 8:
69450 No=9:sp_on 10,1:sp_on 7,0
69460 pause 200:goto Buka_Input_Born_Month2:
69470 case 9:
69480 pause 200:goto Buka_Input_Born_Month2:
69490 case 6:
69500 pause 200:goto Buka_Input_Born_Month2:
69510 end select
69520 'Okから右ボタンを押して何もしない ここまで
69530 endif
69540 '十字キー　ここまで
69550 '右の丸ボタン　決定キー
69560 if ((bg=2) or (key$=chr$(13))) then
69570 select case count
69580 case 0:
69590 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
69600 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
69610 locate 1,3
69620 color RGB(255,255,255)
69630 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
69640 goto Buka_Input_Born_Month2:
69650 case 1:
69660 count = 2:buf_buka_month=a*10+No
69670 if (No = -1) then
69680 'count=0
69690 month=buf_buka_month
69700 buf_buka_month=val(buf_buka_Month$)
69710 month=buf_buka_month
69720 '生まれた日に飛ぶ
69730 goto Buka_Input_Born_Day:
69740 else
69750 buf_buka_month = a * 10 + No
69760 buf_buka_Month$ = str$(buf_buka_month)
69770 buf_Buka_Born_Day(1) = buf_buka_month
69780 locate 1,3
69790 color Rgb(255,255,255)
69800 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
69810 goto Buka_Input_Born_Month2:
69820 endif
69830 case 2:
69840 count=3
69850 'c= val(buf_Month$)
69860 'buf_month = c*10 + No
69870 'buf_Month$ = str$(buf_month)
69880 'locate 2,3
69890 'print "部下の生まれた月(1月～12月):";buf_Month$
69900 'goto Buka_Input_Born_Month2:
69910 'case 3:
69920 'count=4
69930 'b=val(buf_month$)
69940 'buf_month=c*10+No
69950 'buf_Month$=str$(buf_month)
69960 'locate 2,3
69970 'print "部下の生まれた月(1月～12月):";buf_Month$
69980 'buf_month=val(buf_Month$)
69990 'year=val(buf_year$)
70000 if (No=-1) then
70010 goto Buka_Input_Born_Day:
70020 else
70030 goto Input_Born_Month2:
70040 endif
70050 'case 4:
70060 'bufyear=buf_year
70070 'if (No=-1) then
70080 'buf_month = val(buf_Month$)
70090 'month = buf_month
70100 'sp_on 14,0
70110 'goto Input_Born_Day:
70120 'else
70130 'goto Input_Born_Month2:
70140 'endif
70150 end select
70160 endif
70170 '左の丸ボタン　キャンセル
70180 if (bg2=2) then
70190 select case count2
70200 case 0:
70210 if (No = -1) then
70220 buf_buka_month=0:buf_buka_Month$="**"
70230 count=0
70240 goto rewrite2:
70250 else
70260 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
70270 buf_month=0:buf_Month$="**"
70280 locate 2,3
70290 color rgb(255,255,255)
70300 print "                                       "
70310 goto rewrite2:
70320 if (No>12) then
70330 ui_msg"値が範囲外です。"
70340 goto rewrite2:
70350 endif
70360 endif
70370 endif
70380 rewrite2:
70390 locate 2,3
70400 color rgb(255,255,255)
70410 print "                                      "
70420 locate 2,3
70430 print "部下の生まれた月(1月~12月):";buf_buka_Month$
70440 goto Buka_Input_Born_Month2:
70450 end select
70460 'endif
70470 endif
70480 end
70490 '2.部下の生まれた月'
70500 '3.部下の生まれた日'
70510 '生れた日を入力
70520 Buka_Input_Born_Day:
70530 '生まれた日入力
70540 cls 3:play ""
70550 'No=-1:Okのとき
70560 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
70570 for i=0 to 1
70580 buf_day(i)=0
70590 next i
70600 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
70610 gload Gazo$ + "Screen2.png",0,0,0
70620 gload Gazo$ + "downscreen.png",0,0,800
70630 'Init"kb:2"
70640 '音声ファイル再生 2023.06.07
70650 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
70660 font 48
70670 locate 0,1
70680 '文字色：黒　 color rgb(0,0,0)
70690 color rgb(255,255,255)
70700 print "部下の生まれた日を入れて下さい" + chr$(13)
70710 color rgb(255,255,255)
70720 locate 1,3
70730 print "部下の生まれた日(1日~31日):";buf_Day$
70740 color rgb(255,255,255)
70750 'locate 4,6:print ":7"
70760 'locate 9,6:print ":8"
70770 'locate 12,6:print ":9"
70780 'locate 4,6
70790 'print ":7  :8  :9" + chr$(13)
70800 'color rgb(255,255,255)
70810 'locate 4,8
70820 'print ":4  :5  :6" + chr$(13)
70830 'color rgb(255,255,255)
70840 'locate 4,10
70850 'print ":1  :2  :3" + chr$(13)
70860 'locate 4,12
70870 'print "    :0"
70880 'locate 12,12
70890 'color rgb(0,0,255)
70900 'print ":Ok"
70910 sp_on 4,0: sp_on 5,0:sp_on 6,0
70920 sp_on 7,0:sp_on 8,0:sp_on 9,0
70930 sp_on 10,0:sp_on 11,0:sp_on 12,0
70940 sp_on 13,0:sp_on 14,1
70950 Buka_Input_Born_Day2:
70960 '
70970 key$="":bg=0:y=0:y2=0:bg2=0
70980 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
70990 key$ = inkey$
71000 bg = strig(1)
71010 y = stick(1)
71020 y2 = stick(0)
71030 bg2 = strig(0)
71040 pause 200
71050 wend
71060 '十字キー　ここから
71070 '上の矢印　または、十字キー上
71080 if ((y = -1) or (key$ = chr$(30))) then
71090 select case No
71100 'No=-1:okのとき:初期の状態
71110 '0kボタンから３に移動
71120 '上に行く 処理
71130 case -1:
71140 No=3:sp_on 12,1:sp_on 14,0
71150 pause 200:goto Buka_Input_Born_Day2:
71160 '選択肢:3
71170 '3ボタンから 6に移動
71180 case 3:
71190 No=6:sp_on 12,0:sp_on 11,1
71200 pause 200:goto Buka_Input_Born_Day2:
71210 '6ボタンから ９に移動
71220 case 6:
71230 No=9:sp_on 10,1:sp_on 11,0
71240 pause 200:goto Buka_Input_Born_Day2:
71250 '6ボタンから ９に移動　ここまで
71260 '9で上を押して何もしない
71270 case 9:
71280 '何もしない
71290 No=9
71300 pause 200:goto Buka_Input_Born_Day2:
71310 '9で上を押しても何もしない　ここまで
71320 '上　 0ボタンから2ボタン
71330 'sp_on 6,1:1
71340 'sp_on 8,1:5
71350 'sp_on 7,1:7
71360 case 0:
71370 No=2:sp_on 13,0:sp_on 9,1:
71380 pause 200:goto Buka_Input_Born_Day2:
71390 '上  0ボタンから2ボタン　ここまで
71400 '2から５になる 上
71410 case 2:
71420 No=5:sp_on 8,1:sp_on 9,0:
71430 pause 200:goto Buka_Input_Born_Day2:
71440 case 5:
71450 No=8:sp_on 7,1:sp_on 8,0
71460 pause 200:goto Buka_Input_Born_Day2:
71470 case 8:
71480 pause 200:goto Buka_Input_Born_Day2:
71490 case 1:
71500 No=4:sp_on 5,1:sp_on 6,0
71510 pause 200:goto Buka_Input_Born_Day2:
71520 case 4:
71530 No=7:sp_on 4,1:sp_on 5,0
71540 pause 200:goto Buka_Input_Born_Day2:
71550 case 7:
71560 pause 200:goto Buka_Input_Born_Day2:
71570 end select
71580 endif
71590 '左３　ここまで
71600 '下の矢印
71610 '中央 2
71620 if ((y=1) or (key$ = chr$(31))) then
71630 select case No
71640 '9から６に下げる
71650 case 9:
71660 No=6:sp_on 11,1:sp_on 10,0
71670 pause 200:goto Buka_Input_Born_Day2:
71680 '6から３に下げる
71690 case 6:
71700 No=3:sp_on 12,1:sp_on 11,0
71710 pause 200:goto Buka_Input_Born_Day2:
71720 '3から０ｋに変える
71730 case 3:
71740 No=-1:sp_on 14,1:sp_on 12,0
71750 pause 200:goto Buka_Input_Born_Day2:
71760 'Okから下のボタンを押しても何もしない
71770 case -1:
71780 pause 200:goto Buka_Input_Born_Day2:
71790 case 8:
71800 No=5:sp_on 8,1:sp_on 7,0
71810 pause 200:goto Buka_Input_Born_Day2:
71820 case 5:
71830 No=2:sp_on 9,1:sp_on 8,0
71840 pause 200:goto Buka_Input_Born_Day2:
71850 case 2:
71860 No=0:sp_on 13,1:sp_on 9,0
71870 pause 200:goto Buka_Input_Born_Day2:
71880 case 0:
71890 pause 200:goto Buka_Input_Born_Day2:
71900 case 7:
71910 No=4:sp_on 5,1:sp_on 4,0
71920 pause 200:goto Buka_Input_Born_Day2:
71930 case 4:
71940 No=1:sp_on 6,1:sp_on 5,0
71950 pause 200:goto Buka_Input_Born_Day2:
71960 case 1:
71970 pause 200:goto Buka_Input_Born_Day2:
71980 end select
71990 endif
72000 '左へボタン 十字キー　左　or 　カーソル左
72010 if ((y2 = -1) or (key$ = chr$(29))) then
72020 select case No
72030 'Ok ボタン  Okから　左　０に行く
72040 case -1:
72050 No=0:sp_on 13,1:sp_on 14,0
72060 pause 200:goto Buka_Input_Born_Day2:
72070 '0 ボタン  左　何もしない
72080 case 0:
72090 pause 200:goto Buka_Input_Born_Day2:
72100 case 3:
72110 No=2:sp_on 9,1:sp_on 12,0:
72120 pause 200:goto Buka_Input_Born_Day2:
72130 case 2:
72140 No=1:sp_on 6,1:sp_on 9,0:
72150 pause 200:goto Buka_Input_Born_Day2:
72160 case 1:
72170 pause 200:goto Buka_Input_Born_Day2:
72180 case 6:
72190 No=5:sp_on 8,1:sp_on 11,0
72200 pause 200:goto Buka_Input_Born_Day2:
72210 case 5:
72220 No=4:sp_on 5,1:sp_on 8,0
72230 pause 200:goto Buka_Input_Born_Day2:
72240 case 4:
72250 pause 200:goto Buka_Input_Born_Day2:
72260 case 9:
72270 No=8:sp_on 7,1:sp_on 10,0
72280 pause 200:goto Buka_Input_Born_Day2:
72290 case 8:
72300 No=7:sp_on 4,1:sp_on 7,0
72310 pause 200:goto Buka_Input_Born_Day2:
72320 case 7:
72330 pause 200:goto Buka_Input_Born_Day2:
72340 end select
72350 endif
72360 '右  十字キー　右　or カーソル　右
72370 if ((y2 = 1) or (key$ = chr$(28))) then
72380 select case No
72390 '0ボタンからokボタン右に移動
72400 case 0:
72410 No=-1:sp_on 14,1:sp_on 13,0
72420 pause 200:goto Buka_Input_Born_Day2:
72430 '0ボタンからokボタン 右に移動　ここまで
72440 'OKボタンで右を押して何もしない
72450 case -1:
72460 pause 200:goto Buka_Input_Born_Day2:
72470 case 1:
72480 No=2:sp_on 9,1:sp_on 6,0
72490 pause 200:goto Buka_Input_Born_Day2:
72500 case 2:
72510 No=3:sp_on 12,1:sp_on 9,0
72520 pause 200:goto Buka_Input_Born_Day2:
72530 case 3:
72540 pause 200:goto Buka_Input_Born_Day2:
72550 case 4:
72560 No=5:sp_on 8,1:sp_on 5,0
72570 pause 200:goto Buka_Input_Born_Day2:
72580 case 5:
72590 No=6:sp_on 11,1:sp_on 8,0
72600 pause 200:goto Buka_Input_Born_Day2:
72610 case 7:
72620 No=8:sp_on 7,1:sp_on 4,0
72630 pause 200:goto Buka_Input_Born_Day2:
72640 case 8:
72650 No=9:sp_on 10,1:sp_on 7,0
72660 pause 200:goto Buka_Input_Born_Day2:
72670 case 9:
72680 pause 200:goto Buka_Input_Born_Day2:
72690 case 6:
72700 pause 200:goto Buka_Input_Born_Day2:
72710 end select
72720 'Okから右ボタンを押して何もしない ここまで
72730 endif
72740 '十字キー　ここまで
72750 '右の丸ボタンを押したとき
72760 if ((bg = 2) or (key$ = chr$(13))) then
72770 'count :決定ボタンを押した回数
72780 select case (count)
72790 '1桁目入力
72800 case 0:
72810 count = 1:
72820 if (No = -1) then
72830 '1桁目　OKでは何もしない
72840 'goto check:
72850 No=0
72860 else
72870 'ok以外のボタンを押したとき
72880 buf_buka_day = No:buf_buka_Day$ = str$(No)
72890 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
72900 buf_buka_Day$ = str$(No) + "*"
72910 endif
72920 a=No
72930 buf_Buka_Born_Day(2) = buf_buka_day
72940 locate 1,3
72950 print"                                      "
72960 color RGB(255,255,255)
72970 locate 1,3
72980 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
72990 endif
73000 check2:
73010 if (No >= 1 and No <= 9) then
73020 sp_on 14,0
73030 goto Buka_Input_Born_Day2:
73040 else
73050 sp_on 14,0
73060 goto Result_Business_Aisyou:
73070 end
73080 endif
73090 case 1:
73100 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
73110 count = 2:
73120 'locate 2,3
73130 'color RGB(255,255,255)
73140 'print "生まれた日(1日~31日):";buf_Day$
73150 'Okボタンを押したときの処理
73160 '入力値　10未満のとき
73170 'c = buf_day
73180 if (No = -1) then
73190 'c=buf_day
73200 ' buf_day = c
73210 'buf_Day$ = str$(buf_day)
73220 '10以下のとき
73230 No=0
73240 if (buf_day < 10) then
73250 sp_on 14,0
73260 goto Result_Business_Aisyou:
73270 end
73280 endif
73290 else
73300 sp_on 14,0
73310 'c=No
73320 buf_buka_day = a * 10 + No
73330 buf_buka_Day$ = str$(buf_buka_day)
73340 buf_Buka_Born_Day(2) = buf_buka_day
73350 locate 0,3
73360 color Rgb(255,255,255)
73370 print "                                       "
73380 locate 1,3
73390 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
73400 goto Buka_Input_Born_Day2:
73410 endif
73420 '生まれた日　2桁目の数字　or 1桁の数字 + ok
73430 case 2:
73440 count=0
73450 'c=val(buf_Day$)
73460 'buf_day=c*10+No
73470 'buf_Day$=str$(buf_day)
73480 'day=buf_day
73490 'locate 2,3
73500 'print "生まれた日(1日〜31日):";buf_Day$
73510 'No=-1:ok ボタンを押したとき
73520 if (No = -1) then No=0
73530 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
73540 sp_on 14,0
73550 goto Result_Business_Aisyou:
73560 else
73570 goto Buka_Input_Born_Day2:
73580 endif
73590 'Okボタン以外を押したとき
73600 else
73610 c=val(buf_buka_Day$)
73620 buf_buka_day = c * 10 + No
73630 buf_buka_Day$ = str$(buf_buka_day)
73640 locate 1,3
73650 print "                "
73660 locate 1,3
73670 print "生まれた日(1日~31日):"+buf_buka_Day$
73680 goto Buka_Input_Born_Day2:
73690 'endif
73700 case 3:
73710 count=4
73720 'c=val(buf_day$)
73730 'buf_day=c*10+No
73740 'buf_day$=str$(buf_day)
73750 'locate 2,3
73760 'print "生まれた日を入れてください:";buf_day$
73770 'year=val(buf_year$)
73780 if (No = -1) then
73790 'goto Buka_Input_Born_Day:
73800 sp_on 14,0:
73810 goto complate_jyoushi:
73820 else
73830 goto Buka_Input_Born_Month2:
73840 endif
73850 'case 4:
73860 'bufyear=buf_year
73870 'if (No=-1) then
73880 'buf_day = val(buf_day$)
73890 'bufday = buf_day
73900 'sp_on 14,0
73910 goto complate_jyoushi:
73920 'else
73930 'goto Buka_Input_Born_Day2:
73940 'endif
73950 end select
73960 endif
73970 if (bg2=2) then
73980 select case count2
73990 case 0:
74000 if (No=-1) then
74010 'buf_day=0:buf_Day$="**"
74020 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
74030 count=0
74040 buf_buka_day=0:buf_buka_Day$="**"
74050 goto rewrite_day3:
74060 else
74070 buf_buka_day=0:buf_buka_Day$="**"
74080 ui_msg"値が範囲外です"
74090 endif
74100 goto rewrite_day3:
74110 else
74120 goto rewrite_day3:
74130 endif
74140 rewrite_day3:
74150 locate 2,3
74160 color rgb(255,255,255)
74170 print "                                      "
74180 locate 1,3
74190 print "生まれた日(1日~31日):"+buf_buka_Day$
74200 goto Buka_Input_Born_Day2:
74210 end select
74220 endif
74230 '3.部下の生まれた日'
74240 '部下'
74250 '--------------------------------------------'
74260 'ビジネの相性　結果表示
74270 Result_Business_Aisyou:
74280 cls 3:init "kb:4"
74290 a=0:b=0:c=0:d=0:e=0:f=0
74300 bg=0:key$=""
74310 gload Gazo$ + "Screen1.png",0,0,0
74320 gload Gazo$ + "downscreen.png",0,0,800
74330 sp_on 14,0
74340 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
74350 buf_Buka = Kabara_Num(d,e,f)
74360 a_2 = buf_Buka
74370 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
74380 locate 0,1
74390 color rgb(255,0,0)
74400 print "●.相性診断結果１"
74410 locate 0,4:
74420 color rgb(255,255,255)
74430 print "1.上司の名前:";buffer_name$(0)
74440 locate 0,6
74450 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
74460 locate 0,8
74470 print "2.部下の名前:";buffer_name$(1)
74480 locate 0,10
74490 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
74500 locate 0,12
74510 print "3.上司と部下の相性:";Result_Aisyou$
74520 locate 1,15
74530 color rgb(0,0,0)
74540 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
74550 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
74560 bg = strig(1)
74570 key$ = inkey$
74580 bg2 = strig(0)
74590 pause 5
74600 wend
74610 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
74620 if (bg2 = 2) then
74630 cls 3:goto Business_Aishou_Input_1_parson:
74640 endif
74650 'ビジネスの相性占い　結果2　説明
74660 Result_Business_Aisyou2:
74670 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
74680 gload Gazo$ + "Screen1.png",0,0,0
74690 locate 0,1
74700 color rgb(255,0,0)
74710 print "●.相性の説明"
74720 color rgb(255,255,255)
74730 locate 0,4
74740 print "相性:";Result_Aisyou$
74750 locate 0,6:
74760 print "相性の説明:";buf$
74770 locate 0,15
74780 color rgb(0,0,0)
74790 print "右の丸ボタン:トップ,左のボタン:前の画面"
74800 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
74810 bg = strig(1)
74820 bg2 = strig(0)
74830 key$ = inkey$
74840 pause 200
74850 wend
74860 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
74870 if ((bg2 = 2)) then goto Result_Business_Aisyou:
74880 'Birds Eye Menu List
74890 Result_Birtheye_List1:
74900 'dim List$(4) Topに定義
74910 List$(0) = "1.バーズアイグリッドをもう一度診断"
74920 List$(1) = "2.診断結果"
74930 List$(2) = "3.データーを保存"
74940 List$(3) = "4.トップ画面に戻る"
74950 Birds_List1 = ui_select("List$","Menu")
74960 select case (Birds_List1)
74970 case 0: '1.もう一度診断
74980 for i=0 to 8
74990 buffer(i)=0
75000 next i
75010 goto Input_name1_Birdseye:
75020 case 1: '2.次へ行く
75030 gosub BirdsEye_Result2:
75040 case 2: '3.データーを保存
75050 ui_msg "データーを保存します"
75060 goto BirdsEye_Save_data:
75070 case 3: '4.トップに戻る
75080 for i=0 to 8
75090 buffer(i)=0
75100 next i
75110 goto Main_Screen:
75120 end select
75130 'BirdsEye Data Save
75140 BirdsEye_Save_data:
75150 if dir$(Save_data_Birdseye$) = "" then
75160 Mkdir Save_data_Birdseye$
75170 endif
75180 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
75190 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
75200 close #1
75210 ui_msg "データーを保存しました"
75220 goto Result_Birtheye_List1:
75230 'return
75240 '自作関数 ここから
75250 BirdsEyeGrid_Entry:
75260 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
75270 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
75280 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
75290 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
75300 locate 1,4:print "右の丸:メイン画面へ行く"
75310 else
75320 flag=1
75330 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
75340 while (eof(1)=0)
75350 line input #1,a$
75360 n = n + 1
75370 wend
75380 close #1
75390 'endif
75400 talk "登録件数は"+str$(n)+"件です。"
75410 locate 1,2:print "登録件数は";str$(n);"件です"
75420 locate 1,4:print "左の丸：メイン画面へ行く"
75430 endif
75440 Entry_Count:
75450 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
75460 key$ = inkey$
75470 bg = strig(1)
75480 bg2 = strig(0)
75490 pause 200
75500 wend
75510 if ((bg = 2) or (key$ = chr$(13))) then
75520 if (n = 0) then
75530 '登録件数　０件のとき　メイン画面に行く
75540 goto Main_Screen:
75550 else
75560 '登録件数1件以上　次へ行く
75570 'ここを変更する
75580 goto Entry_List:
75590 endif
75600 endif
75610 if (bg2 = 2) then
75620 if (n > 0) then
75630 goto Main_Screen:
75640 else
75650 goto Entry_Count:
75660 endif
75670 endif
75680 Entry_List:
75690 cls 3:play"":color rgb(255,255,255)
75700 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
75710 dim buffer_List$(11,n)
75720 'ファイル読み込み ここから
75730 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
75740 for i=0 to 10
75750 for j=0 to n-1
75760 input #1,a$
75770 buffer_List$(i,j)=a$
75780 next j
75790 next i
75800 close #1
75810 'erase buffer_List$
75820 'color rgb(255,255,255)
75830 i=0:key$="":bg=0:init"kb:4":bg2=0
75840 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
75850 key$ = inkey$
75860 bg = strig(1)
75870 bg2=strig(0)
75880 pause 200
75890 wend
75900 color rgb(0,0,0)
75910 locate 1,15:print "次へ"
75920 'show_ListData:
75930 'j=0
75940 repeat (j=0)
75950 show_ListData:
75960 cls
75970 color rgb(255,255,255)
75980 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
75990 '1の文字データー
76000 locate 4,14:print buffer_List$(2,j)
76010 '2の文字データー
76020 locate 4,9:print buffer_List$(3,j)
76030 '3の文字データー
76040 locate 4,5:print buffer_List$(4,j)
76050 '4の文字データー
76060 locate 11,14:print buffer_List$(5,j)
76070 '5の文字データー
76080 locate 11,9:PRINT buffer_List$(6,j)
76090 '6の文字データー
76100 locate 11,5:print buffer_List$(7,j)
76110 '7の文字データー
76120 locate 16,14:print buffer_List$(8,j)
76130 '8の文字データー
76140 locate 16,9:print buffer_List$(9,j)
76150 '9の文字データー
76160 locate 16,5:print buffer_List$(10,j)
76170 color rgb(0,0,0)
76180 locate 1,15:print "右の丸：次へ"
76190 if (bg=2 or key$=chr$(13)) then
76200 j=j+1
76210 endif
76220 if (bg2=2) then
76230 goto Main_Screen:
76240 endif
76250 until (j=n)
76260 'erase buffer_List$:
76270 goto show_ListData:
76280 'ファイル読み込み　ここまで
76290 func read_explain$(ba$)
76300 d$=""
76310 buf_String$=""
76320 if ba$="A" then
76330 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
76340 line input #1,a$
76350 a1$=mid$(a$,1,12)
76360 a2$=mid$(a$,13,17)
76370 a3$=mid$(a$,30,17)
76380 a4$=mid$(a$,47,18)
76390 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
76400 buf_String$ = a5$
76410 close #1
76420 endif
76430 if ba$="B"  then
76440 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
76450 line input #1,b$
76460 b1$=mid$(b$,1,15)
76470 b2$=mid$(b$,16,21)
76480 'b3$=mid$(b$,33,3)
76490 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
76500 buf_String$ = b4$
76510 close #1
76520 endif
76530 if ba$="C"  then
76540 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
76550 line input #1,c$
76560 c1$ = Mid$(c$,1,15)
76570 c2$ = Mid$(c$,16,33)
76580 c3$ = c1$ + chr$(13) + c2$
76590 buf_String$ = c3$
76600 close #1
76610 endif
76620 if ba$="D" then
76630 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
76640 line input #1,d$
76650 d1$=mid$(d$,1,15)
76660 d2$=mid$(d$,16,22)
76670 d3$=mid$(d$,38,7)
76680 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
76690 buf_String$ = d4$
76700 close #1
76710 endif
76720 if ba$="E"  then
76730 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
76740 line input #1,e$
76750 e1$=Mid$(e$,1,16)
76760 e2$=Mid$(e$,17,16)
76770 e3$=Mid$(e$,33,12)
76780 e4$=Mid$(e$,45,17)
76790 e5$=Mid$(e$,62,17)
76800 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
76810 buf_String$ = e6$
76820 close #1
76830 endif
76840 if ba$="F" then
76850 '改行を追加して表示を調整
76860 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
76870 line input #1,f$
76880 f1$=Mid$(f$,1,15)
76890 f2$=Mid$(f$,16,12)
76900 buf_String$ = f1$+chr$(13)+f2$
76910 close #1
76920 endif
76930 if ba$="G" then
76940 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
76950 line input #1,g$
76960 g1$ = mid$(g$,1,16)
76970 g2$ = mid$(g$,17,18)
76980 g3$ = mid$(g$,36,21)
76990 g4$ = mid$(g$,56,6)
77000 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
77010 buf_String$ = g5$
77020 close #1
77030 endif
77040 if ba$="H" then
77050 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
77060 line input #1,h$
77070 h1$=Mid$(h$,1,17)
77080 h2$=Mid$(h$,18,21)
77090 h3$=Mid$(h$,39,20)
77100 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
77110 buf_String$ = h$
77120 close #1
77130 endif
77140 if ba$ = "I" then
77150 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
77160 line input #1,i$
77170 i1$=Mid$(i$,1,10)
77180 i2$=Mid$(i$,11,13)
77190 i3$=Mid$(i$,25,16)
77200 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
77210 buf_String$ = i$
77220 close #1
77230 endif
77240 buffer$ = buf_String$
77250 endfunc buffer$
77260 'カバラ数（数秘番号を求める）
77270 func Kabara_Num(buffer_Year,month,day)
77280 '=============================
77290 'a1:4桁のうちの1桁目を求める
77300 '例 a1:1234の4が1桁目
77310 'a2:4桁のうちの2桁目を求める
77320 '例:a2:1234の3が2桁目
77330 'a3:4桁のうちの3桁目を求める
77340 '例 a3:1234の2が3桁目
77350 'a4:4桁のうちの4桁目を求める
77360 '例 a4:1234の1が4桁目
77370 '==============================
77380 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
77390 Year = buffer_Year
77400 '処理1　整数部分を取り出す。
77410 a4 = fix(Year / 1000)
77420 a3 = fix(Year / 100) - (a4 * 10)
77430 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
77440 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
77450 '処理　２　取り出した整数部分を足す。
77460 a_ = a1 + a2 + a3 + a4 +month + day
77470 'a1=0:a2=0:a3=0:a4=0
77480 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
77490 buffer = a_
77500 'else
77510 goto recomp2:
77520 'if (a_ = 10) then
77530 '  buffer = 1
77540 endif
77550 recomp2:
77560 a5=0:a6=0
77570 a5 = fix(a_ / 10)
77580 a6 = (a_) - (a5 * 10)
77590 a_ = a5 + a6
77600 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
77610 '結果に行く
77620 goto Res2:
77630 '  if ((a_>11) and (a_<99)) then
77640 else
77650 '再度計算
77660 goto recomp2:
77670 endif
77680 '     a1 = fix(a_ / 10)
77690 '     a2 = a_ - (a1 * 10)
77700 '     a_ = a1 + a2
77710 '     buffer = a_
77720 'endif
77730 'else
77740 '    bffer = a_
77750 'endif
77760 'endif
77770 'else
77780 'talk "プログラムを終了します。"
77790 'end
77800 'endif
77810 'kabara = 10
77820 Res2:
77830 kabara = a_
77840 endfunc kabara
77850 func Kabara_Aisyou$(buff1,buff2)
77860 a=0:b=0
77870 '範囲　1~9
77880 if ((buff1 > 0 and buff1 < 10)) then
77890 a = buff1
77900 else
77910 Select case buff1
77920 case 11:
77930 buff1=9:a=buff1
77940 case 22:
77950 buff1=10:a=buff1
77960 end select
77970 endif
77980 '範囲　１~９
77990 if ((buff2 > 0 and buff2 < 10)) then
78000 b = buff2
78010 else
78020 select case buff2
78030 case 11:
78040 buff2=9:b=buff2
78050 case 12:
78060 buff2=10:b=buff2
78070 end select
78080 endif
78090 Aisyou$ = Buffer_Business_Aisyou$(a,b)
78100 endfunc Aisyou$
78110 '=============================
78120 '自作関数 ここまで
78130 '1.数秘術　トップ画面
78140 '
78150 'Data_eraseを一番最後に持ってくる
78160 '=============================
78170 Data_erase:
78180 'メモリー削除
78190 erase buf_male_year
78200 erase buf_male_month
78210 erase buf_male_Born_Day
78220 erase buf_feMale_Born_Day
78230 erase buf_female_day
78240 erase buf_name1$
78250 erase buf_name2$
78260 erase buffer
78270 erase buf_chart$
78280 erase Buffer_Business_Aisyou$
78290 erase buffer_name$
78300 '上司の誕生日
78310 erase buf_Jyoushi_Born_Day
78320 '部下の誕生日
78330 erase buf_Buka_Born_Day
78340 erase buf_year
78350 erase buf_month
78360 erase buf_day
78370 'フォーカスライン
78380 erase Forcus1_buffer$
78390 erase Forcus2_buffer$
78400 erase Forcus3_buffer$
78410 'erase buffer_List$
78420 'Birds eye List Data 配列
78430 erase List$
78440 buffer$ = ""
78450 buf$ = ""
78460 buf_year$ = ""
78470 buf_Jyoushi_Kabara_Num = 0
78480 buf_Buka_Kabara_Num = 0
78490 count = 0
78500 buf_Month$ = ""
78510 buf_Day$ = ""
78520 b=0
78530 c=0
78540 No=0
78550 return
