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
590 '2024.02.04:Ver135_20240204
600 Version$ = "Ver:1.3.5_20240204"
610 'Gazo Folder Japan
620 Gazo$ = "./data/Picture/"
630 'Gazo Folder English
640 Gazo_Eng$ = "./data/Picture/English/"
650 'Voice Folder 2023
660 Voice$ = "./data/Voice/Voice/"
670 'BirtheyeChart Data:20230626
680 Birth_eye_chart$ = "./data/chart_data/"
690 'Data Folder
700 Data$ = "./data/data/"
710 'Business Aisyou 結果説明保存フォルダ
720 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
730 'Save BirdsEyeGrit List Folder
740 Save_data_Birdseye$ = "./data/Parsonal_data/"
750 '変数定義 パート
760 b=0:c=0:n=0
770 'dim buffer_List$(11,1)
780 dim buf_name1$(10),buf_name2$(10)
790 dim buffer(9),buf_chart$(26,2)
800 'ビジネスの相性　データー
810 dim Buffer_Business_Aisyou$(12,12)
820 '男女の相性
830 dim Buffer_Bitween_sexes_Aisyou$(12,12)
840 '生れた年代
850 dim buf_year(4):buf_year$ = ""
860 dim buf_month(2)
870 dim buf_day(2)
880 'フォーカスライン　配列
890 dim Forcus1_buffer$(3)
900 dim Forcus2_buffer$(3)
910 dim Forcus3_buffer$(2)
920 '生れた月
930 buf_Month$ = ""
940 '生れた日
950 buf_Day$ = ""
960 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
970 dim buffer_name$(3)
980 '1-1.上司の誕生日(数値データー)
990 dim buf_Jyoushi_Born_Day(3)
1000 '1-2.上司の数秘ナンバー(数値データー)
1010 buf_Jyoushi_Kabara_Num = 0
1020 '2-1.部下の誕生日(数値データー)
1030 dim buf_Buka_Born_Day(3)
1040 '2-2.部下の数秘ナンバー(数秘データー)
1050 buf_Buka_Kabara_Num = 0
1060 dim buf_male_year(4)
1070 dim buf_male_month(2)
1080 dim buf_male_Born_Day(2)
1090 dim buf_feMale_Born_Day(2)
1100 dim buf_female_day(2)
1110 count=0
1120 'Birds Eye List 配列
1130 dim List$(6)
1140 '部下の数秘ナンバー
1150 'File 読み込み
1160 '1.ビジネスの相性占い
1170 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1180 for i=0 to 11
1190 for j=0 to 11
1200 input #1,a$
1210 Buffer_Business_Aisyou$(j,i) = a$
1220 next j
1230 next i
1240 close #1
1250 '2.男女の相性占い
1260 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1270 for i=0 to 11
1280 for j=0 to 11
1290 input #1,a$
1300 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1310 next j
1320 next i
1330 close #1
1340 '2.Birth Eye chart$
1350 '2.バーズアイグリッドを読み込む
1360 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1370 for j=0 to 25
1380 for i=0 to 1
1390 input #1,a$
1400 buf_chart$(j,i) = a$
1410 next i
1420 next j
1430 close #1
1440 'File 読み込み　ここまで
1450 'Main画面
1460 screen 1,1,1,1
1470 Main_Screen:
1480 cls 3:
1490 No=0
1500 gload Gazo$ + "Selection.png",1,5,200
1510 gload Gazo$ + "Selection.png",1,5,300
1520 gload Gazo$ + "Selection.png",1,5,400
1530 gload Gazo$ + "Selection.png",1,5,500
1540 '4
1550 gload Gazo$ + "Selection.png",1,35,300
1560 '5
1570 gload Gazo$ + "Selection.png",1,35,400
1580 '6
1590 gload Gazo$ + "Selection.png",1,35,500
1600 '7
1610 gload Gazo$ + "Selection.png",1,70,300
1620 '8
1630 gload Gazo$ + "Selection.png",1,70,400
1640 '9
1650 gload Gazo$ + "Selection.png",1,70,500
1660 '10
1670 gload Gazo$ + "Selection.png",1,110,300
1680 '11
1690 gload Gazo$ + "Selection.png",1,110,400
1700 '12
1710 gload Gazo$ + "Selection.png",1,110,500
1720 '13:0
1730 gload Gazo$ + "Selection.png",1,150,400
1740 gload Gazo$ + "Selection.png",1,200,400
1750 if ex_info$(1) <> "JP" then
1760 '英語　トップ画面
1770 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
1780 else
1790 '日本語トップスクリーン
1800 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1810 endif
1820 '選択肢の丸
1830 gload Gazo$ + "downscreen.png",0,0,800
1840 sp_def 0,(5,300),32,32
1850 sp_def 1,(5,400),32,32
1860 sp_def 2,(5,500),32,32
1870 sp_def 3,(5,600),32,32
1880 '1
1890 sp_def 4,(35,300),32,32
1900 '2
1910 sp_def 5,(35,400),32,32
1920 '3
1930 sp_def 6,(35,500),32,32
1940 '4
1950 sp_def 7,(70,300),32,32
1960 '5
1970 sp_def 8,(70,400),32,32
1980 '6
1990 sp_def 9,(70,500),32,32
2000 '7
2010 sp_def 10,(110,300),32,32
2020 '8
2030 sp_def 11,(110,400),32,32
2040 '9
2050 sp_def 12,(110,400),32,32
2060 sp_def 13,(150,400),32,32
2070 sp_def 14,(200,400),32,32
2080 'Sprite OFF
2090 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
2100 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
2110 sp_put 0,(5,300),0,0
2120 sp_put 1,(5,400),1,0
2130 sp_put 2,(5,500),2,0
2140 sp_put 3,(5,600),3,0
2150 '1
2160 sp_put 4,(130,300),4,0
2170 '2
2180 sp_put 5,(130,400),5,0
2190 '3
2200 sp_put 6,(130,500),6,0
2210 '4
2220 sp_put 7,(340,300),7,0
2230 '5
2240 sp_put 8,(340,400),8,0
2250 '6
2260 sp_put 9,(340,500),9,0
2270 '7
2280 sp_put 10,(540,300),10,0
2290 '8
2300 sp_put 11,(540,400),11,0
2310 '9
2320 sp_put 12,(540,500),12,0
2330 '
2340 sp_put 13,(340,600),13,0
2350 sp_put 14,(540,600),14,0
2360 Main_Top:
2370 'Main Message 2023.06.07
2380 '再生を止める
2390 play ""
2400 init "kb:4"
2410 'font 32:
2420 font 40
2430 if ex_info$(1) <> "JP" then
2440 '1.英語表示ターム
2450 print chr$(13) + chr$(13) + chr$(13)
2460 color rgb(217,255,212)
2470 print "Please Select Number?" + chr$(13)+chr$(13)
2480 '0
2490 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
2500 '1
2510 print " :2.Setting" + chr$(13)+chr$(13)
2520 '2
2530 print " :3.Help" + chr$(13)
2540 '3
2550 print " :4.(Finishing)Program" + chr$(13)
2560 COLOR rgb(0,0,0):No=0
2570 locate 1,18
2580 print "                                        "
2590 locate 1,18
2600 print "1.It has Selected Kabara Fortune Telling"
2610 '1.英語表示ターム
2620 '---------音声 日本語　英語に変える----------------
2630 'play Voice$ + "Voice_Main_Message_20230607.mp3"
2640 '---------音声 日本語　英語に変える----------------
2650 else
2660 '2.日本語表示ターム
2670 font 48
2680 print chr$(13) + chr$(13) + chr$(13)
2690 color rgb(217,255,212)
2700 print "番号を選んでください" + chr$(13)
2710 '0
2720 print " :1.数秘術占い" + chr$(13)
2730 '1
2740 print " :2.設 定" + chr$(13)
2750 '2
2760 print " :3.ヘルプ" + chr$(13)
2770 '3
2780 print " :4.(プログラムを)終了する" + chr$(13)
2790 COLOR rgb(0,0,0):No=0
2800 locate 1,15
2810 print "                                       "
2820 locate 1,15:print "1.数秘術占いを選択"
2830 play Voice$ + "Voice_Main_Message_20230607.mp3"
2840 '2.日本語表示ターム
2850 endif
2860 Main_Screen_Select:
2870 y = 0:key$ = "":bg = 0:bg2=0
2880 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2890 y = stick(1)
2900 '"May (2023)"
2910 key$ = inkey$
2920 bg = strig(1)
2930 bg2 = strig(0)
2940 pause 200
2950 wend
2960 '1.
2970 'ジョイパッドのソース ソート　ここから
2980 'カーソル　下 or 十字キー下
2990 if ((y = 1) or (key$ = chr$(31))) then
3000 select case No
3010 case 0:
3020 '1
3030 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3040 case 1:
3050 '2
3060 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3070 case 2:
3080 '3
3090 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3100 case 3:
3110 '0
3120 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
3130 end select
3140 endif
3150 '2.
3160 'カーソル　上　or 十字キー  上
3170 if ((y = -1) or (key$ = chr$(30))) then
3180 select case No
3190 case 0:
3200 '3
3210 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
3220 case 1:
3230 '0
3240 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
3250 case 2:
3260 '1
3270 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
3280 case 3:
3290 '2
3300 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
3310 end select
3320 endif
3330 'ジョイパッド　ソース 部分　ここまで
3340 'ジョイパッド右　　or Enter key 決定
3350 if ((bg = 2) OR (key$ = chr$(13))) then
3360 select case No
3370 case 0:
3380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
3390 case 1:
3400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
3410 case 2:
3420 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
3430 case 3:
3440 play "":pause 200
3450 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
3460 end select
3470 endif
3480 if (bg2 = 2) then
3490 play "":pause 200
3500 play Voice$ + "Voice_Main_Message_20230607.mp3"
3510 goto Main_Screen_Select:
3520 endif
3530 'Version
3540 Version:
3550 cls 3:PLAY ""
3560 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3570 gload Gazo$ + "downscreen.png",0,0,800
3580 init"kb:4":font 32+8
3590 'talk"バージョン情報です"
3600 'Message :Version
3610 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3620 locate 0,3
3630 color rgb(0,0,255)
3640 print "・Title:数秘術占い";chr$(13)
3650 print "・" + Version$ + chr$(13)
3660 print "・Author:licksjp"+chr$(13)
3670 print "・E-mail:licksjp@gmail.com" + chr$(13)
3680 locate 0,12
3690 print "(C)licksjp All rights " + chr$(13)
3700 locate 7,13
3710 print "reserved since 2009"+chr$(13)
3720 locate 0,18
3730 color rgb(255,255,255)
3740 print "ジョイパッドの右を押してください"
3750 Versionn_Selection:
3760 bg = 0:key$ = "":bg2 = 0
3770 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3780 bg = strig(1)
3790 key$ = inkey$
3800 bg2 = strig(0)
3810 pause 200
3820 wend
3830 if ((bg = 2) or (key$ = chr$(13))) then
3840 cls 4:goto Main_Screen:
3850 endif
3860 if (bg2=2) then
3870 play "":pause 200
3880 play Voice$ + "Voice_Version_Message_20230607.mp3"
3890 goto Versionn_Selection:
3900 endif
3910 '1.数秘ナンバーを求める
3920 '誕生日入力(生れた年代)
3930 Input_Seireki:
3940 cls 3:play "":count=0:count2=0
3950 'No = -1:Okのとき
3960 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3970 for i=0 to 3
3980 buf_year(i)=0
3990 next i
4000 gload Gazo$ + "Screen2.png",0,0,0
4010 gload Gazo$ + "downscreen.png",0,0,800
4020 'Init"kb:2"
4030 '音声ファイル再生 2023.06.07
4040 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
4050 font 48
4060 locate 0,1
4070 if ex_info$(1) <> "JP" then
4080 color rgb(255,255,255)
4090 color rgb(255,255,255)
4100 print "Input Born Year?" + chr$(13)
4110 color rgb(255,255,255)
4120 locate 2,3
4130 print "Your Born Year(4 dedgit for AC):" + buf_year$
4140 else
4150 '文字色：黒　 color rgb(0,0,0)
4160 color rgb(255,255,255)
4170 print "生まれた年代を入れて下さい" + chr$(13)
4180 color rgb(255,255,255)
4190 locate 2,3
4200 print "生まれた年代(西暦4桁):" + buf_year$
4210 endif
4220 '=============================
4230 'テンキーの色(1~９)　白 ,決定ボタン　青
4240 '=============================
4250 color rgb(255,255,255)
4260 'locate 4,6:print ":7"
4270 'locate 9,6:print ":8"
4280 'locate 12,6:print ":9"
4290 'locate 4,6
4300 'print ":7  :8  :9" + chr$(13)
4310 'color rgb(255,255,255)
4320 'locate 4,8
4330 'print ":4  :5  :6" + chr$(13)
4340 'color rgb(255,255,255)
4350 'locate 4,10
4360 'print ":1  :2  :3" + chr$(13)
4370 'locate 4,12
4380 'print "    :0"
4390 'locate 12,12
4400 'color rgb(255,0,0)
4410 'print ":Ok"
4420 sp_on 4,0: sp_on 5,0:sp_on 6,0
4430 sp_on 7,0:sp_on 8,0:sp_on 9,0
4440 sp_on 10,0:sp_on 11,0:sp_on 12,0
4450 sp_on 13,0:sp_on 14,1
4460 Input_Seireki2:
4470 key$="":bg=0:y=0:y2=0:bg2=0:
4480 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
4490 key$ = inkey$
4500 bg = strig(1)
4510 y = stick(1)
4520 y2 = stick(0)
4530 bg2 = strig(0)
4540 pause 200
4550 wend
4560 '十字キー　ここから
4570 '上の矢印　または、十字キー上
4580 if ((y = -1) or (key$ = chr$(30))) then
4590 select case No
4600 'No=-1:okのとき:初期の状態
4610 '0kボタンから３に移動
4620 '上に行く 処理
4630 case -1:
4640 No=3:sp_on 12,1:sp_on 14,0:beep
4650 pause 200:goto Input_Seireki2:
4660 '選択肢:3
4670 '3ボタンから 6に移動
4680 case 3:
4690 No=6:sp_on 12,0:sp_on 11,1:beep
4700 pause 200:goto Input_Seireki2:
4710 '6ボタンから ９に移動
4720 case 6:
4730 No=9:sp_on 10,1:sp_on 11,0:beep
4740 pause 200:goto Input_Seireki2:
4750 '6ボタンから ９に移動　ここまで
4760 '9で上を押して何もしない
4770 case 9:
4780 '何もしない
4790 No=9
4800 beep:pause 200:goto Input_Seireki2:
4810 '9で上を押しても何もしない　ここまで
4820 '上　 0ボタンから2ボタン
4830 'sp_on 6,1:1
4840 'sp_on 8,1:5
4850 'sp_on 7,1:7
4860 case 0:
4870 No=2:sp_on 13,0:sp_on 9,1:beep
4880 pause 200:goto Input_Seireki2:
4890 '上  0ボタンから2ボタン　ここまで
4900 '2から５になる 上
4910 case 2:
4920 No=5:sp_on 8,1:sp_on 9,0:beep
4930 pause 200:goto Input_Seireki2:
4940 case 5:
4950 No=8:sp_on 7,1:sp_on 8,0:beep
4960 pause 200:goto Input_Seireki2:
4970 case 8:
4980 beep:pause 200:goto Input_Seireki2:
4990 case 1:
5000 No=4:sp_on 5,1:sp_on 6,0:beep
5010 pause 200:goto Input_Seireki2:
5020 case 4:
5030 No=7:sp_on 4,1:sp_on 5,0:beep
5040 pause 200:goto Input_Seireki2:
5050 case 7:
5060 beep:pause 200:goto Input_Seireki2:
5070 end select
5080 endif
5090 '左３　ここまで
5100 '下の矢印
5110 '中央 2
5120 if ((y=1) or (key$ = chr$(31))) then
5130 select case No
5140 '9から６に下げる
5150 case 9:
5160 No=6:sp_on 11,1:sp_on 10,0:beep
5170 pause 200:goto Input_Seireki2:
5180 '6から３に下げる
5190 case 6:
5200 No=3:sp_on 12,1:sp_on 11,0:beep
5210 pause 200:goto Input_Seireki2:
5220 '3から０ｋに変える
5230 case 3:
5240 No=-1:sp_on 14,1:sp_on 12,0:beep
5250 pause 200:goto Input_Seireki2:
5260 'Okから下のボタンを押しても何もしない
5270 case -1:
5280 beep:pause 200:goto Input_Seireki2:
5290 case 8:
5300 No=5:sp_on 8,1:sp_on 7,0:beep
5310 pause 200:goto Input_Seireki2:
5320 case 5:
5330 No=2:sp_on 9,1:sp_on 8,0:beep
5340 pause 200:goto Input_Seireki2:
5350 case 2:
5360 No=0:sp_on 13,1:sp_on 9,0:beep
5370 pause 200:goto Input_Seireki2:
5380 case 0:
5390 beep:pause 200:goto Input_Seireki2:
5400 case 7:
5410 No=4:sp_on 5,1:sp_on 4,0:beep
5420 pause 200:goto Input_Seireki2:
5430 case 4:
5440 No=1:sp_on 6,1:sp_on 5,0:beep
5450 pause 200:goto Input_Seireki2:
5460 case 1:
5470 beep:pause 200:goto Input_Seireki2:
5480 end select
5490 endif
5500 '左へボタン 十字キー　左　or 　カーソル左
5510 if ((y2 = -1) or (key$ = chr$(29))) then
5520 select case No
5530 'Ok ボタン  Okから　左　０に行く
5540 case -1:
5550 No=0:sp_on 13,1:sp_on 14,0:beep
5560 pause 200:goto Input_Seireki2:
5570 '0 ボタン  左　何もしない
5580 case 0:
5590 beep:pause 200:goto Input_Seireki2:
5600 case 3:
5610 No=2:sp_on 9,1:sp_on 12,0:beep
5620 pause 200:goto Input_Seireki2:
5630 case 2:
5640 No=1:sp_on 6,1:sp_on 9,0:beep
5650 pause 200:goto Input_Seireki2:
5660 case 1:
5670 beep:pause 200:goto Input_Seireki2:
5680 case 6:
5690 No=5:sp_on 8,1:sp_on 11,0:beep
5700 pause 200:goto Input_Seireki2:
5710 case 5:
5720 No=4:sp_on 5,1:sp_on 8,0:beep
5730 pause 200:goto Input_Seireki2:
5740 case 4:
5750 beep:pause 200:goto Input_Seireki2:
5760 case 9:
5770 No=8:sp_on 7,1:sp_on 10,0:beep
5780 pause 200:goto Input_Seireki2:
5790 case 8:
5800 No=7:sp_on 4,1:sp_on 7,0:beep
5810 pause 200:goto Input_Seireki2:
5820 case 7:
5830 beep:pause 200:goto Input_Seireki2:
5840 end select
5850 endif
5860 '右  十字キー　右　or カーソル　右
5870 if ((y2 = 1) or (key$ = chr$(28))) then
5880 select case No
5890 '0ボタンからokボタン右に移動
5900 case 0:
5910 No=-1:sp_on 14,1:sp_on 13,0:beep
5920 pause 200:goto Input_Seireki2:
5930 '0ボタンからokボタン 右に移動　ここまで
5940 'OKボタンで右を押して何もしない
5950 case -1:
5960 pause 200:goto Input_Seireki2:
5970 case 1:
5980 No=2:sp_on 9,1:sp_on 6,0:beep
5990 pause 200:goto Input_Seireki2:
6000 case 2:
6010 No=3:sp_on 12,1:sp_on 9,0
6020 beep:pause 200:goto Input_Seireki2:
6030 case 3:
6040 beep:pause 200:goto Input_Seireki2:
6050 case 4:
6060 No=5:sp_on 8,1:sp_on 5,0:beep
6070 pause 200:goto Input_Seireki2:
6080 case 5:
6090 No=6:sp_on 11,1:sp_on 8,0:beep
6100 pause 200:goto Input_Seireki2:
6110 case 7:
6120 No=8:sp_on 7,1:sp_on 4,0:beep
6130 pause 200:goto Input_Seireki2:
6140 case 8:
6150 No=9:sp_on 10,1:sp_on 7,0:beep
6160 pause 200:goto Input_Seireki2:
6170 case 9:
6180 beep:pause 200:goto Input_Seireki2:
6190 case 6:
6200 beep:pause 200:goto Input_Seireki2:
6210 end select
6220 'Okから右ボタンを押して何もしない ここまで
6230 endif
6240 '十字キー　ここまで
6250 if ((bg=2) or (key$=chr$(13))) then
6260 select case count
6270 case 0:
6280 count=1
6290 if (No=-1) then
6300 count=0
6310 'Okボタンを押したとき
6320 goto Input_Seireki2:
6330 else
6340 '===================================
6350 'Okボタン以外が押されたとき  1桁目の入力
6360 '===================================
6370 count2=1
6380 if (No >= 1 and No <= 2) then
6390 buf_year$="":buf_year$ = str$(No)
6400 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
6410 if ex_info$(1) <> "JP" then
6420 n1= len("Input Born Year?(4 dedgit):")
6430 else
6440 n1 = len("生まれた年代(西暦4桁):")
6450 endif
6460 locate 2,3
6470 color rgb(255,255,255)
6480 if ex_info$(1) <> "JP" then
6490 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
6500 else
6510 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
6520 endif
6530 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
6540 'print "生まれた年代(西暦4桁):";buf_year2$
6550 print buf_Born_Year_line$
6560 goto Input_Seireki2:
6570 else
6580 count=0
6590 ui_msg"数字が範囲外になります。"
6600 buf_year$="":buf_year=0
6610 goto Input_Seireki2:
6620 endif
6630 endif
6640 case 1:
6650 count = 2
6660 if (No = -1) then
6670 count = 1
6680 goto Input_Seireki2:
6690 else
6700 count2 = 1
6710 b = val(buf_year$)
6720 buf_year = b * 10 + No
6730 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6740 locate 2,3
6750 color rgb(255,255,255)
6760 print "                                                                "
6770 locate 2,3
6780 if ex_info$(1) <> "JP" then
6790 print "Input Born Year(4 dedgit):";buf_year$
6800 else
6810 print "生まれた年代(西暦4桁):";buf_year2$
6820 endif
6830 'if (No = -1) then
6840 'count=1
6850 goto Input_Seireki2:
6860 endif
6870 case 2:
6880 count=3
6890 if (No=-1) then
6900 count =2
6910 goto Input_Seireki2:
6920 else
6930 b = val(buf_year$)
6940 buf_year = b*10 + No
6950 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6960 locate 2,3
6970 color rgb(255,255,255)
6980 print "                                        "
6990 locate 2,3
7000 if ex_info$(1) <> "JP" then
7010 print "Input Born Year?(4 dedgit):";buf_year$
7020 else
7030 print "生まれた年代(西暦4桁):";buf_year2$
7040 endif
7050 goto Input_Seireki2:
7060 endif
7070 case 3:
7080 count=4
7090 if (No = -1) then
7100 count=3
7110 goto Input_Seireki2:
7120 else
7130 b = val(buf_year$)
7140 buf_year = b * 10 + No
7150 buf_year$ = str$(buf_year)
7160 locate 2,3
7170 color RGB(255,255,255)
7180 print "                                      "
7190 locate 2,3
7200 if ex_info$(1) <> "JP" then
7210 print "Input Born Year?(4 dedgit):";buf_year$
7220 else
7230 print "生まれた年代(西暦4桁):";buf_year$
7240 endif
7250 buf_year=val(buf_year$)
7260 'year=val(buf_year$)
7270 'if (No=-1) then
7280 'goto Input_Born_Month:
7290 'else
7300 goto Input_Seireki2:
7310 endif
7320 case 4:
7330 'bufyear=buf_year
7340 if (No = -1) then
7350 buf_year = val(buf_year$)
7360 bufyear = buf_year
7370 sp_on 14,0
7380 goto Input_Born_Month:
7390 else
7400 goto Input_Seireki2:
7410 endif
7420 end select
7430 endif
7440 '=========================
7450 'bg2　キャンセルボタン
7460 '=========================
7470 if (bg2 = 2) then
7480 select case count2
7490 case 0:
7500 'Okボタンを押したときの処理
7510 if (No = -1) then
7520 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
7530 'count = 0
7540 locate 2,3
7550 color rgb(255,255,255)
7560 print "                                      "
7570 locate 2,3
7580 if ex_info$(1) <> "JP" then
7590 print "Input Born Year?(4 dedgit):";buf_year$
7600 else
7610 print "生まれた年代（西暦4桁):";buf_year$
7620 endif
7630 '=============================
7640 'case 0:前の画面に戻る 数秘術トップメニュー
7650 '=============================
7660 sp_on 14,0:goto Kabara_TopScreen:
7670 else
7680 'count=0
7690 '(buf_year=0) then
7700 buf_year = 0:buf_year$ = string$(4,"*")
7710 goto Input_Seireki2:
7720 'endif
7730 endif
7740 case 1:
7750 if (No = -1) then
7760 count2 = 0:count = 0
7770 buf$=right$(buf_year$,1)
7780 if (val(buf$) >= 1 and val(buf$) <= 9) then
7790 buf_year$ = "****":buf_year=0
7800 color rgb(255,255,255)
7810 locate 0,3:
7820 print "                                      "
7830 locate 2,3
7840 if ex_info$(1) <> "JP" then
7850 print "Input Born Year(4 dedgit):";buf_year$
7860 else
7870 print "生まれた年代（西暦4桁):" + buf_year$
7880 endif
7890 goto Input_Seireki2:
7900 endif
7910 else
7920 endif
7930 end select
7940 endif
7950 end
7960 'Input"生れた年代(4桁,〜2025年):",year
7970 'if year > 2025 then goto Input_Seireki:
7980 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7990 '"4桁目"
8000 'bufyear4 = fix(year / 1000)
8010 '"3桁目"
8020 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
8030 '"2桁目"
8040 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
8050 '"1桁目"
8060 'bufyear1 = fix((year - ((bufyear4*
8070 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
8080 '生れた月を入力
8090 Input_Born_Month:
8100 cls 3:play "":count=0:count2=0
8110 'No=-1:Okのとき
8120 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
8130 for i=0 to 1
8140 buf_month(i)=0
8150 next i
8160 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
8170 gload Gazo$ + "Screen2.png",0,0,0
8180 gload Gazo$ + "downscreen.png",0,0,800
8190 'Init"kb:2"
8200 if ex_info$(1) <> "JP" then
8210 else
8220 '音声ファイル再生 2023.06.07
8230 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
8240 endif
8250 font 48
8260 locate 0,1
8270 '文字色：黒　 color rgb(0,0,0)
8280 if ex_info$(1) <> "JP" then
8290 '英語パート
8300 '文字色:白
8310 color rgb(255,255,255)
8320 print "Input Born Month?(1~12):" + chr$(13)
8330 '文字色:白
8340 color rgb(255,255,255)
8350 locate 2,3
8360 '文字色:白
8370 print "Your Born Month?(1~12):";buf_Month$
8380 color rgb(255,255,255)
8390 else
8400 '日本語パート
8410 color rgb(255,255,255)
8420 print "生まれた月を入れて下さい" + chr$(13)
8430 '文字色:白
8440 color rgb(255,255,255)
8450 locate 2,3
8460 '文字色:白
8470 print "生まれた月(1月~12月):";buf_Month$
8480 color rgb(255,255,255)
8490 endif
8500 'locate 4,6:print ":7"
8510 'locate 9,6:print ":8"
8520 'locate 12,6:print ":9"
8530 'locate 4,6
8540 '文字色:赤
8550 'print ":7  :8  :9" + chr$(13)
8560 'color rgb(255,255,255)
8570 'locate 4,8
8580 'print ":4  :5  :6" + chr$(13)
8590 'color rgb(255,255,255)
8600 'locate 4,10
8610 'print ":1  :2  :3" + chr$(13)
8620 'locate 4,12
8630 'print "    :0"
8640 'locate 12,12
8650 'color rgb(255,0,0)
8660 'print ":Ok"
8670 sp_on 4,0:sp_on 5,0:sp_on 6,0
8680 sp_on 7,0:sp_on 8,0:sp_on 9,0
8690 sp_on 10,0:sp_on 11,0:sp_on 12,0
8700 sp_on 13,0:sp_on 14,1
8710 Input_Born_Month2:
8720 key$="":bg=0:y=0:y2=0:bg2=0
8730 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
8740 key$ = inkey$
8750 bg = strig(1)
8760 y = stick(1)
8770 y2 = stick(0)
8780 bg2 = strig(0)
8790 pause 200
8800 wend
8810 '十字キー　ここから
8820 '上の矢印　または、十字キー上
8830 if ((y = -1) or (key$ = chr$(30))) then
8840 select case No
8850 'No=-1:okのとき:初期の状態
8860 '0kボタンから３に移動
8870 '上に行く 処理
8880 case -1:
8890 No=3:sp_on 12,1:sp_on 14,0:BEEP
8900 pause 200:goto Input_Born_Month2:
8910 '選択肢:3
8920 '3ボタンから 6に移動
8930 case 3:
8940 No=6:sp_on 12,0:sp_on 11,1:beep
8950 pause 200:goto Input_Born_Month2:
8960 '6ボタンから ９に移動
8970 case 6:
8980 No=9:sp_on 10,1:sp_on 11,0:beep
8990 pause 200:goto Input_Born_Month2:
9000 '6ボタンから ９に移動　ここまで
9010 '9で上を押して何もしない
9020 case 9:
9030 '何もしない
9040 No=9
9050 beep:pause 200:goto Input_Born_Month2:
9060 '9で上を押しても何もしない　ここまで
9070 '上　 0ボタンから2ボタン
9080 'sp_on 6,1:1
9090 'sp_on 8,1:5
9100 'sp_on 7,1:7
9110 case 0:
9120 No=2:sp_on 13,0:sp_on 9,1:beep
9130 pause 200:goto Input_Born_Month2:
9140 '上  0ボタンから2ボタン　ここまで
9150 '2から５になる 上
9160 case 2:
9170 No=5:sp_on 8,1:sp_on 9,0:beep
9180 pause 200:goto Input_Born_Month2:
9190 case 5:
9200 No=8:sp_on 7,1:sp_on 8,0:beep
9210 pause 200:goto Input_Born_Month2:
9220 case 8:
9230 beep:pause 200:goto Input_Born_Month2:
9240 case 1:
9250 No=4:sp_on 5,1:sp_on 6,0:beep
9260 pause 200:goto Input_Born_Month2:
9270 case 4:
9280 No=7:sp_on 4,1:sp_on 5,0:beep
9290 pause 200:goto Input_Born_Month2:
9300 case 7:
9310 beep:pause 200:goto Input_Born_Month2:
9320 end select
9330 endif
9340 '左３　ここまで
9350 '下の矢印
9360 '中央 2
9370 if ((y=1) or (key$ = chr$(31))) then
9380 select case No
9390 '9から６に下げる
9400 case 9:
9410 No=6:sp_on 11,1:sp_on 10,0:beep
9420 pause 200:goto Input_Born_Month2:
9430 '6から３に下げる
9440 case 6:
9450 No=3:sp_on 12,1:sp_on 11,0:beep
9460 pause 200:goto Input_Born_Month2:
9470 '3から０ｋに変える
9480 case 3:
9490 No=-1:sp_on 14,1:sp_on 12,0:beep
9500 pause 200:goto Input_Born_Month2:
9510 'Okから下のボタンを押しても何もしない
9520 case -1:
9530 beep:pause 200:goto Input_Born_Month2:
9540 case 8:
9550 No=5:sp_on 8,1:sp_on 7,0:beep
9560 pause 200:goto Input_Born_Month2:
9570 case 5:
9580 No=2:sp_on 9,1:sp_on 8,0:beep
9590 pause 200:goto Input_Born_Month2:
9600 case 2:
9610 No=0:sp_on 13,1:sp_on 9,0:beep
9620 pause 200:goto Input_Born_Month2:
9630 case 0:
9640 beep:pause 200:goto Input_Born_Month2:
9650 case 7:
9660 No=4:sp_on 5,1:sp_on 4,0:beep
9670 pause 200:goto Input_Born_Month2:
9680 case 4:
9690 No=1:sp_on 6,1:sp_on 5,0:beep
9700 pause 200:goto Input_Born_Month2:
9710 case 1:
9720 beep:pause 200:goto Input_Born_Month2:
9730 end select
9740 endif
9750 '左へボタン 十字キー　左　or 　カーソル左
9760 if ((y2 = -1) or (key$ = chr$(29))) then
9770 select case No
9780 'Ok ボタン  Okから　左　０に行く
9790 case -1:
9800 No=0:sp_on 13,1:sp_on 14,0
9810 beep:pause 200:goto Input_Born_Month2:
9820 '0 ボタン  左　何もしない
9830 case 0:
9840 beep:pause 200:goto Input_Born_Month2:
9850 case 3:
9860 No=2:sp_on 9,1:sp_on 12,0:beep
9870 pause 200:goto Input_Born_Month2:
9880 case 2:
9890 No=1:sp_on 6,1:sp_on 9,0:beep
9900 pause 200:goto Input_Born_Month2:
9910 case 1:
9920 beep:pause 200:goto Input_Born_Month2:
9930 case 6:
9940 No=5:sp_on 8,1:sp_on 11,0:beep
9950 pause 200:goto Input_Born_Month2:
9960 case 5:
9970 No=4:sp_on 5,1:sp_on 8,0:beep
9980 pause 200:goto Input_Born_Month2:
9990 case 4:
10000 beep:pause 200:goto Input_Born_Month2:
10010 case 9:
10020 No=8:sp_on 7,1:sp_on 10,0:beep
10030 pause 200:goto Input_Born_Month2:
10040 case 8:
10050 No=7:sp_on 4,1:sp_on 7,0:beep
10060 pause 200:goto Input_Born_Month2:
10070 case 7:
10080 beep:pause 200:goto Input_Born_Month2:
10090 end select
10100 endif
10110 '右  十字キー　右　or カーソル　右
10120 if ((y2 = 1) or (key$ = chr$(28))) then
10130 select case No
10140 '0ボタンからokボタン右に移動
10150 case 0:
10160 No=-1:sp_on 14,1:sp_on 13,0:beep
10170 pause 200:goto Input_Born_Month2:
10180 '0ボタンからokボタン 右に移動　ここまで
10190 'OKボタンで右を押して何もしない
10200 case -1:
10210 beep:pause 200:goto Input_Born_Month2:
10220 case 1:
10230 No=2:sp_on 9,1:sp_on 6,0:beep
10240 pause 200:goto Input_Born_Month2:
10250 case 2:
10260 No=3:sp_on 12,1:sp_on 9,0:beep
10270 pause 200:goto Input_Born_Month2:
10280 case 3:
10290 beep:pause 200:goto Input_Born_Month2:
10300 case 4:
10310 No=5:sp_on 8,1:sp_on 5,0:beep
10320 pause 200:goto Input_Born_Month2:
10330 case 5:
10340 No=6:sp_on 11,1:sp_on 8,0:beep
10350 pause 200:goto Input_Born_Month2:
10360 case 7:
10370 No=8:sp_on 7,1:sp_on 4,0:beep
10380 pause 200:goto Input_Born_Month2:
10390 case 8:
10400 No=9:sp_on 10,1:sp_on 7,0:beep
10410 pause 200:goto Input_Born_Month2:
10420 case 9:
10430 beep:pause 200:goto Input_Born_Month2:
10440 case 6:
10450 beep:pause 200:goto Input_Born_Month2:
10460 end select
10470 'Okから右ボタンを押して何もしない ここまで
10480 endif
10490 '十字キー　ここまで
10500 '右の丸ボタン　決定キー
10510 if ((bg=2) or (key$=chr$(13))) then
10520 select case count
10530 case 0:
10540 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
10550 if (buf_month = 1 or buf_month = 2) then
10560 locate 2,3
10570 color RGB(255,255,255)
10580 if ex_info$(1) <> "JP" then
10590 print "Input Born Month(1~12):";buf_Month$
10600 else
10610 print "生まれた月(1月~12月):";buf_Month2$
10620 endif
10630 else
10640 locate 2,3
10650 color Rgb(255,255,255)
10660 if ex_info$(1) <> "JP" then
10670 print "Input Born Month(1~12):";buf_Month$
10680 else
10690 print "生まれた月(1月~12月):";buf_Month$
10700 endif
10710 endif
10720 goto Input_Born_Month2:
10730 case 1:
10740 count = 2:c = No
10750 c = val(buf_Month$)
10760 if (No = -1) then
10770 'if No=1 or No=2 then
10780 'endif
10790 month = buf_month
10800 buf_month=val(buf_Month$)
10810 month=buf_month
10820 '生まれた日に飛ぶ
10830 goto Input_Born_Day:
10840 else
10850 buf_month = c*10 + No
10860 buf_Month$= str$(buf_month)
10870 locate 2,3
10880 color Rgb(255,255,255)
10890 if ex_info$(1) <> "JP" then
10900 print "Input Born Month(1~12):";buf_Month$
10910 else
10920 print "生まれた月(1月~12月):";buf_Month$
10930 endif
10940 goto Input_Born_Month2:
10950 endif
10960 case 2:
10970 count=3:count2=1
10980 'c= val(buf_Month$)
10990 'buf_month = c*10 + No
11000 'buf_Month$ = str$(buf_month)
11010 'locate 2,3
11020 'print "生まれた月(1月～12月):";buf_Month$
11030 'goto Input_Born_Month2:
11040 'case 3:
11050 'count=4
11060 'b=val(buf_month$)
11070 'buf_month=c*10+No
11080 'buf_Month$=str$(buf_month)
11090 'locate 2,3
11100 'print "生まれた月(1月～12月):";buf_Month$
11110 'buf_month=val(buf_Month$)
11120 'year=val(buf_year$)
11130 if (No=-1) then
11140 goto Input_Born_Day:
11150 else
11160 'goto Input_Born_Month2:
11170 endif
11180 'case 4:
11190 'bufyear=buf_year
11200 'if (No=-1) then
11210 'buf_month = val(buf_Month$)
11220 'month = buf_month
11230 'sp_on 14,0
11240 'goto Input_Born_Day:
11250 'else
11260 'goto Input_Born_Month2:
11270 'endif
11280 end select
11290 endif
11300 '左の丸ボタン　キャンセル
11310 if (bg2=2) then
11320 select case count2
11330 case 0:
11340 if (No = -1) then
11350 buf_month=0:buf_Month$="**"
11360 count2=0:count=0
11370 locate 0,3:print "                                   "
11380 if ex_info$(1) <> "JP" then
11390 print "Input Born Month?(1~12):";buf_Month$
11400 else
11410 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
11420 endif
11430 'if (buf_month > 1) then
11440 sp_on 14,0:goto Input_Born_Month2:
11450 'goto rewrite:
11460 else
11470 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
11480 buf_month=0:buf_Month$="**"
11490 locate 2,3
11500 color rgb(255,255,255)
11510 print "                                       "
11520 goto rewrite:
11530 if (No>2) then
11540 if ex_info$(1) <> "JP" then
11550 ui_msg "The value is out of range"
11560 else
11570 ui_msg "値が範囲外です。"
11580 endif
11590 goto rewrite:
11600 endif
11610 endif
11620 'endif
11630 rewrite:
11640 locate 2,3
11650 color rgb(255,255,255)
11660 print "                                      "
11670 locate 2,3
11680 if ex_info$(1) <> "JP" then
11690 print "Input Born Month?(1~12):";buf_Month$
11700 else
11710 print "生まれた月(1月~12月):";buf_Month$
11720 endif
11730 goto Input_Born_Month2:
11740 endif
11750 case 1:
11760 buf_Month$="**":buf_month=0
11770 if No=-1 then
11780 count2=2:count=0
11790 locate 0,3
11800 print "                                      "
11810 locate 2,3:
11820 if ex_info$(1) <> "JP" then
11830 print "Input Born Month?(1~12):";buf_Month$
11840 else
11850 print "生まれた月(1月~12月):" + buf_Month$
11860 endif
11870 goto Input_Born_Month2:
11880 endif
11890 case 2:
11900 sp_on 14,0:goto Input_Seireki:
11910 end select
11920 endif
11930 'endif
11940 end
11950 'end
11960 '生れた日を入力
11970 Input_Born_Day:
11980 '生まれた日入力
11990 cls 3:play ""
12000 'No=-1:Okのとき
12010 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
12020 for i=0 to 1
12030 buf_day(i)=0
12040 next i
12050 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
12060 gload Gazo$ + "Screen2.png",0,0,0
12070 gload Gazo$ + "downscreen.png",0,0,800
12080 'Init"kb:2"
12090 if ex_info$(1) <> "JP" then
12100 '英語音声パート
12110 else
12120 '日本語音声パート
12130 '音声ファイル再生 2023.06.07
12140 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
12150 endif
12160 font 48
12170 if ex_info$(1) <> "JP" then
12180 locate 0,1
12190 '文字色：黒　 color rgb(0,0,0)
12200 color rgb(255,255,255)
12210 print "Input Born day?" + chr$(13)
12220 color rgb(255,255,255)
12230 locate 2,3
12240 print "Born Day(1~31):";buf_Day$
12250 else
12260 locate 0,1
12270 '文字色：黒　 color rgb(0,0,0)
12280 color rgb(255,255,255)
12290 print "生まれた日を入れて下さい" + chr$(13)
12300 color rgb(255,255,255)
12310 locate 2,3
12320 print "生まれた日(1日~31日):";buf_Day$
12330 endif
12340 'color rgb(255,255,255)
12350 'locate 4,6:print ":7"
12360 'locate 9,6:print ":8"
12370 'locate 12,6:print ":9"
12380 'locate 4,6
12390 'print ":7  :8  :9" + chr$(13)
12400 '=======================
12410 'テンキー　色　白　決定ボタン　青
12420 '=======================
12430 'color rgb(255,255,255)
12440 'locate 4,8
12450 'print ":4  :5  :6" + chr$(13)
12460 'color rgb(255,255,255)
12470 'locate 4,10
12480 'print ":1  :2  :3" + chr$(13)
12490 'locate 4,12
12500 'print "    :0"
12510 'locate 12,12
12520 'color rgb(255,0,0)
12530 'print ":Ok"
12540 sp_on 4,0: sp_on 5,0:sp_on 6,0
12550 sp_on 7,0:sp_on 8,0:sp_on 9,0
12560 sp_on 10,0:sp_on 11,0:sp_on 12,0
12570 sp_on 13,0:sp_on 14,1
12580 Input_Born_Day2:
12590 key$="":bg=0:y=0:y2=0:bg2=0
12600 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12610 key$ = inkey$
12620 bg = strig(1)
12630 y = stick(1)
12640 y2 = stick(0)
12650 bg2 = strig(0)
12660 pause 200
12670 wend
12680 '十字キー　ここから
12690 '上の矢印　または、十字キー上
12700 if ((y = -1) or (key$ = chr$(30))) then
12710 select case No
12720 'No=-1:okのとき:初期の状態
12730 '0kボタンから３に移動
12740 '上に行く 処理
12750 case -1:
12760 No=3:sp_on 12,1:sp_on 14,0:beep
12770 pause 200:goto Input_Born_Day2:
12780 '選択肢:3
12790 '3ボタンから 6に移動
12800 case 3:
12810 No=6:sp_on 12,0:sp_on 11,1:beep
12820 pause 200:goto Input_Born_Day2:
12830 '6ボタンから ９に移動
12840 case 6:
12850 No=9:sp_on 10,1:sp_on 11,0:beep
12860 pause 200:goto Input_Born_Day2:
12870 '6ボタンから ９に移動　ここまで
12880 '9で上を押して何もしない
12890 case 9:
12900 '何もしない
12910 No=9
12920 beep:pause 200:goto Input_Born_Day2:
12930 '9で上を押しても何もしない　ここまで
12940 '上　 0ボタンから2ボタン
12950 'sp_on 6,1:1
12960 'sp_on 8,1:5
12970 'sp_on 7,1:7
12980 case 0:
12990 No=2:sp_on 13,0:sp_on 9,1:beep
13000 pause 200:goto Input_Born_Day2:
13010 '上  0ボタンから2ボタン　ここまで
13020 '2から５になる 上
13030 case 2:
13040 No=5:sp_on 8,1:sp_on 9,0:beep
13050 pause 200:goto Input_Born_Day2:
13060 case 5:
13070 No=8:sp_on 7,1:sp_on 8,0:beep
13080 pause 200:goto Input_Born_Day2:
13090 case 8:
13100 beep:pause 200:goto Input_Born_Day2:
13110 case 1:
13120 No=4:sp_on 5,1:sp_on 6,0:beep
13130 pause 200:goto Input_Born_Day2:
13140 case 4:
13150 No=7:sp_on 4,1:sp_on 5,0:beep
13160 pause 200:goto Input_Born_Day2:
13170 case 7:
13180 beep:pause 200:goto Input_Born_Day2:
13190 end select
13200 endif
13210 '左３　ここまで
13220 '下の矢印
13230 '中央 2
13240 if ((y=1) or (key$ = chr$(31))) then
13250 select case No
13260 '9から６に下げる
13270 case 9:
13280 No=6:sp_on 11,1:sp_on 10,0:beep
13290 pause 200:goto Input_Born_Day2:
13300 '6から３に下げる
13310 case 6:
13320 No=3:sp_on 12,1:sp_on 11,0:beep
13330 pause 200:goto Input_Born_Day2:
13340 '3から０ｋに変える
13350 case 3:
13360 No=-1:sp_on 14,1:sp_on 12,0:beep
13370 pause 200:goto Input_Born_Day2:
13380 'Okから下のボタンを押しても何もしない
13390 case -1:
13400 beep:pause 200:goto Input_Born_Day2:
13410 case 8:
13420 No=5:sp_on 8,1:sp_on 7,0:beep
13430 pause 200:goto Input_Born_Day2:
13440 case 5:
13450 No=2:sp_on 9,1:sp_on 8,0:beep
13460 pause 200:goto Input_Born_Day2:
13470 case 2:
13480 No=0:sp_on 13,1:sp_on 9,0:beep
13490 pause 200:goto Input_Born_Day2:
13500 case 0:
13510 beep:pause 200:goto Input_Born_Day2:
13520 case 7:
13530 No=4:sp_on 5,1:sp_on 4,0:beep
13540 pause 200:goto Input_Born_Day2:
13550 case 4:
13560 No=1:sp_on 6,1:sp_on 5,0:beep
13570 pause 200:goto Input_Born_Day2:
13580 case 1:
13590 beep:pause 200:goto Input_Born_Day2:
13600 end select
13610 endif
13620 '左へボタン 十字キー　左　or 　カーソル左
13630 if ((y2 = -1) or (key$ = chr$(29))) then
13640 select case No
13650 'Ok ボタン  Okから　左　０に行く
13660 case -1:
13670 No=0:sp_on 13,1:sp_on 14,0:beep
13680 pause 200:goto Input_Born_Day2:
13690 '0 ボタン  左　何もしない
13700 case 0:
13710 beep:pause 200:goto Input_Born_Day2:
13720 case 3:
13730 No=2:sp_on 9,1:sp_on 12,0:beep
13740 pause 200:goto Input_Born_Day2:
13750 case 2:
13760 No=1:sp_on 6,1:sp_on 9,0:beep
13770 pause 200:goto Input_Born_Day2:
13780 case 1:
13790 pause 200:goto Input_Born_Day2:
13800 case 6:
13810 No=5:sp_on 8,1:sp_on 11,0:beep
13820 pause 200:goto Input_Born_Day2:
13830 case 5:
13840 No=4:sp_on 5,1:sp_on 8,0:beep
13850 pause 200:goto Input_Born_Day2:
13860 case 4:
13870 beep:pause 200:goto Input_Born_Day2:
13880 case 9:
13890 No=8:sp_on 7,1:sp_on 10,0:beep
13900 pause 200:goto Input_Born_Day2:
13910 case 8:
13920 No=7:sp_on 4,1:sp_on 7,0:beep
13930 pause 200:goto Input_Born_Day2:
13940 case 7:
13950 beep:pause 200:goto Input_Born_Day2:
13960 end select
13970 endif
13980 '右  十字キー　右　or カーソル　右
13990 if ((y2 = 1) or (key$ = chr$(28))) then
14000 select case No
14010 '0ボタンからokボタン右に移動
14020 case 0:
14030 No=-1:sp_on 14,1:sp_on 13,0:beep
14040 pause 200:goto Input_Born_Day2:
14050 '0ボタンからokボタン 右に移動　ここまで
14060 'OKボタンで右を押して何もしない
14070 case -1:
14080 beep:pause 200:goto Input_Born_Day2:
14090 case 1:
14100 No=2:sp_on 9,1:sp_on 6,0:beep
14110 pause 200:goto Input_Born_Day2:
14120 case 2:
14130 No=3:sp_on 12,1:sp_on 9,0:beep
14140 pause 200:goto Input_Born_Day2:
14150 case 3:
14160 beep:pause 200:goto Input_Born_Day2:
14170 case 4:
14180 No=5:sp_on 8,1:sp_on 5,0:beep
14190 pause 200:goto Input_Born_Day2:
14200 case 5:
14210 No=6:sp_on 11,1:sp_on 8,0:beep
14220 pause 200:goto Input_Born_Day2:
14230 case 7:
14240 No=8:sp_on 7,1:sp_on 4,0:beep
14250 pause 200:goto Input_Born_Day2:
14260 case 8:
14270 No=9:sp_on 10,1:sp_on 7,0:beep
14280 pause 200:goto Input_Born_Day2:
14290 case 9:
14300 beep:pause 200:goto Input_Born_Day2:
14310 case 6:
14320 beep:pause 200:goto Input_Born_Day2:
14330 end select
14340 'Okから右ボタンを押して何もしない ここまで
14350 endif
14360 '十字キー　ここまで
14370 '右の丸ボタンを押したとき
14380 if ((bg = 2) or (key$ = chr$(13))) then
14390 'count :決定ボタンを押した回数
14400 select case (count mod 3)
14410 '1桁目入力
14420 case 0:
14430 count = 1:
14440 if (No = -1) then
14450 '1桁目　OKでは何もしない
14460 'goto check:
14470 else
14480 'ok以外のボタンを押したとき
14490 buf_day = No:buf_Day$ = str$(No)
14500 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
14510 locate 2,3
14520 color RGB(255,255,255)
14530 if ex_info$(1) <> "JP" then
14540 print "Input Born Day(1~31):";buf_Day2$
14550 else
14560 print "生まれた日(1日~31日):";buf_Day2$
14570 endif
14580 endif
14590 check:
14600 if (No >= 1 and No <= 9) then
14610 sp_on 14,0
14620 goto Input_Born_Day2:
14630 else
14640 sp_on 14,0
14650 goto complate:
14660 endif
14670 case 1:
14680 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
14690 count = 2:
14700 'locate 2,3
14710 'color RGB(255,255,255)
14720 'print "生まれた日(1日~31日):";buf_Day$
14730 'Okボタンを押したときの処理
14740 '入力値　10未満のとき
14750 'c = buf_day
14760 if (No = -1) then
14770 'c=buf_day
14780 ' buf_day = c
14790 'buf_Day$ = str$(buf_day)
14800 '10以下のとき
14810 if (buf_day < 10) then
14820 sp_on 14,0
14830 goto complate:
14840 endif
14850 else
14860 'c = No
14870 buf_day = c * 10 + No
14880 'buf_day = c
14890 buf_Day$ =str$(buf_day)
14900 locate 2,3
14910 color Rgb(255,255,255)
14920 if ex_info$(1) <> "JP" then
14930 print "Input Born Day(1~31):";buf_Day$
14940 else
14950 print "生まれた日(1日~31日):";buf_Day$
14960 endif
14970 goto Input_Born_Day2:
14980 endif
14990 '生まれた日　2桁目の数字　or 1桁の数字 + ok
15000 case 2:
15010 count=0
15020 'c=val(buf_Day$)
15030 'buf_day=c*10+No
15040 'buf_Day$=str$(buf_day)
15050 'day=buf_day
15060 'locate 2,3
15070 'print "生まれた日(1日〜31日):";buf_Day$
15080 'No=-1:ok ボタンを押したとき
15090 if (No = -1) then
15100 if ((buf_day > 0) and (buf_day < 32)) then
15110 sp_on 14,0
15120 goto complate:
15130 else
15140 goto Input_Born_Day2:
15150 endif
15160 'Okボタン以外を押したとき
15170 else
15180 c=val(buf_Day$)
15190 buf_day = c * 10 + No
15200 buf_Day$ = str$(buf_day)
15210 locate 2,3
15220 if ex_info$(1) <> "JP" then
15230 print "Input Born Day?(1~31):";buf_Day$
15240 else
15250 print "生まれた日(1日~31日):";buf_Day$
15260 endif
15270 'goto Input_Born_Day2:
15280 endif
15290 case 3:
15300 count = 4
15310 c=val(buf_day$)
15320 buf_day = c * 10 + No
15330 buf_day$ = str$(buf_day)
15340 locate 2,3
15350 if ex_info$(1) <> "JP" then
15360 print "Input Born Day?(1~31):";buf_Day$
15370 else
15380 print "生まれた日を入れてください(1日~31日):";buf_Day$
15390 endif
15400 year = val(buf_year$)
15410 if (No = -1) then
15420 'goto Input_Born_Day:
15430 sp_on 14,0:No=0
15440 goto complate:
15450 else
15460 goto Input_Born_Month2:
15470 endif
15480 'case 4:
15490 'bufyear=buf_year
15500 'if (No=-1) then
15510 'buf_day = val(buf_day$)
15520 'bufday = buf_day
15530 'sp_on 14,0
15540 'goto complate:
15550 'else
15560 'goto Input_Born_Day2:
15570 'endif
15580 end select
15590 endif
15600 if (bg2=2) then
15610 select case count2
15620 case 0:
15630 if (No=-1) then
15640 'buf_day=0:buf_Day$="**"
15650 if (buf_day>=1 and buf_day<=31) then
15660 count=0:No=0
15670 buf_day=0:buf_Day$="**"
15680 'goto rewrite_day:
15690 else
15700 buf_day=0:buf_Day$="**"
15710 ui_msg"値が範囲外です"
15720 endif
15730 goto rewrite_day:
15740 else
15750 goto rewrite_day:
15760 endif
15770 rewrite_day:
15780 locate 2,3
15790 color rgb(255,255,255)
15800 print "                                      "
15810 locate 2,3
15820 if ex_info$(1)<>"JP" then
15830 print "Born Day(1~31):";buf_Day$
15840 else
15850 print "生まれた日(1日~31日):";buf_Day$
15860 endif
15870 goto Input_Born_Day2:
15880 end select
15890 endif
15900 '--------------------------Input_Born_Day:-------------------------------------------
15910 complate:
15920 suhiNo = buf_year + buf_month + buf_day
15930 'if (suhiNo < 1000) then
15940 a1 = fix(suhiNo / 1000)
15950 a2 = fix(suhiNo/100) - (a1 * 10)
15960 a3 = fix(suhiNo/10)-(a1*100+a2*10)
15970 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
15980 'endif
15990 bufsuhiNo = a1+a2+a3+a4
16000 recomp:
16010 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
16020 'bufsuhiNo=a6
16030 goto Kabara_Result_Screen:
16040 else
16050 a5 = fix(bufsuhiNo / 10)
16060 a6 = bufsuhiNo - a5 * 10
16070 bufsuhiNo = a6 + a5
16080 if (bufsuhiNo = 10) then
16090 bufsuhiNo=1
16100 endif
16110 goto Kabara_Result_Screen:
16120 endif
16130 Kabara_Result_Screen:
16140 cls 3:
16150 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
16160 gload Gazo$ + "downscreen.png",0,0,800
16170 init "kb:4"
16180 '
16190 play ""
16200 select case (bufsuhiNo)
16210 case 1:
16220 play Voice$ + "Result_Kabara_1_20230607.mp3"
16230 case 2:
16240 play Voice$ + "Result_Kabara_2_20231112.mp3"
16250 case 3:
16260 play Voice$ + "Result_Kabara_3_20230607.mp3"
16270 case 4:
16280 play Voice$ + "Result_Kabara_4_20230607.mp3"
16290 case 5:
16300 play Voice$ + "Result_Kabara_5_20231112.mp3"
16310 case 6:
16320 play Voice$ + "Result_Kabara_6_20230607.mp3"
16330 case 7:
16340 play Voice$ + "Result_Kabara_7_20230607.mp3"
16350 case 8:
16360 play Voice$ + "Result_Kabara_8_20230607.mp3"
16370 case 9:
16380 play Voice$ + "Result_Kabara_9_20230607.mp3"
16390 case 11:
16400 play Voice$ + "Result_Kabara_11_20230607.mp3"
16410 case 22:
16420 play Voice$ + "Result_Kabara_22_20230607.mp3"
16430 case 33:
16440 play Voice$ + "Result_Kabara_33_20230607.mp3"
16450 end select
16460 font 48
16470 key$ = "":bg = 0:bg2=0
16480 'COLOR rgb(255,255,255)
16490 'print "●診断結果"+chr$(13)
16500 locate 0,2
16510 if ex_info$(1)<>"JP" then
16520 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
16530 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
16540 locate 0,15:
16550 color rgb(255,255,255)
16560 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
16570 else
16580 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
16590 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
16600 locate 0,15:
16610 color rgb(255,255,255)
16620 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
16630 endif
16640 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16650 key$ = inkey$
16660 bg = strig(1)
16670 bg2 = strig(0)
16680 pause 200
16690 wend
16700 'Enter or JoyPad right
16710 if ((key$ = chr$(13)) or (bg = 2)) then
16720 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
16730 endif
16740 if ((bg2=2)) then
16750 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
16760 endif
16770 'suhiNo1 = fix(bufsuhiNo / 10)
16780 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
16790 'bufsuhiNo = suhiNo1 + suhiNo2
16800 'goto recomp:
16810 'endif
16820 'print chr$(13)
16830 'color rgb(255,0,0)
16840 'print"トップ:エンターキー,S or s:保存"+chr$(13)
16850 'key$ = input$(1)
16860 'if key$ = chr$(13) then goto Main_Screen:
16870 '"Menu2 占いのルール"
16880 Suhi_Rule:
16890 '数秘術占いルールの表示
16900 cls 3:play "":init"kb:4"
16910 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
16920 gload Gazo$ + "downscreen.png",0,0,800
16930 'cls 3:
16940 'line (0,0) - (1500,60),rgb(0,0,255),bf
16950 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
16960 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
16970 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
16980 if ex_info$(1)<>"JP" then
16990 locate 0,2:Font 48
17000 print chr$(13) + chr$(13)
17010 color rgb(0,0,0)
17020 print "We will convert your birth date to a single number.";chr$(13)
17030 print "Number range: 1~9, 11, 22, 33";chr$(13)
17040 print "Example: If your birth date is 22nd November 1973";chr$(13)
17050 print "1+9+7+3+11+22=53 ";chr$(13)
17060 print "→ 5 + 3 = 8" + chr$(13)
17070 print "So, your numerology number is 8.";chr$(13)
17080 locate 0,15
17090 color rgb(255,255,255)
17100 print "Please press the right on the joystick"
17110 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17120 else
17130 locate 0,2:Font 48
17140 print chr$(13) + chr$(13)
17150 color rgb(0,0,0)
17160 print "誕生日を単数変換します";chr$(13)
17170 print "数字の範囲:1~９,11,22,33";chr$(13)
17180 print "例:1973年11月22日の場合";chr$(13)
17190 print "1+9+7+3+11+22=53 ";chr$(13)
17200 print "→ 5 + 3 = 8" + chr$(13)
17210 print "故に8が数秘ナンバーになります";chr$(13)
17220 locate 0,15
17230 color rgb(255,255,255)
17240 print "ジョイパッドの右を押してください"
17250 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17260 endif
17270 '"key$ = input$(1)"
17280 '"if key$ = chr$(13) then goto Main_Screen:"
17290 suhi_rule_selection:
17300 bg = 0:key$ = "":bg2=0
17310 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
17320 bg = strig(1)
17330 key$ = inkey$
17340 bg2=strig(0)
17350 pause 200
17360 wend
17370 if ((bg = 2) or (key$ = chr$(13))) then
17380 pause 200:cls 4:goto Main_Screen:
17390 endif
17400 if (bg2=2) then
17410 play "":pause 200
17420 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
17430 goto suhi_rule_selection:
17440 endif
17450 '2.設定
17460 '2-1.トップ画面に戻る
17470 Setting:
17480 cls 3:init"kb:4":font 48:No=0
17490 play ""
17500 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17510 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
17520 gload Gazo$ + "downscreen.png",0,0,800
17530 print chr$(13) + chr$(13) + chr$(13)
17540 color rgb(255,255,255):sp_on 0,1:
17550 print "番号を選んでください" + chr$(13)
17560 print " :1.トップ画面に戻る"+ chr$(13)
17570 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
17580 print " :3.未実装" + chr$(13)
17590 print " :4.未実装" + chr$(13)
17600 color rgb(0,0,0)
17610 locate 1,15:print "1.トップ画面に戻るを選択"
17620 Setting_Selection:
17630 y=0:key$="":bg=0:bg2=0
17640 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
17650 y=stick(1)
17660 key$ = inkey$
17670 bg=strig(1)
17680 bg2 = strig(0)
17690 pause 200
17700 wend
17710 if ((bg = 2) or (key$ = chr$(13))) then
17720 select case No
17730 case 0:
17740 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
17750 case 1:
17760 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
17770 end select
17780 endif
17790 if (bg2 = 2) then
17800 play "":pause 200
17810 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
17820 goto Setting_Selection:
17830 endif
17840 if ((y=1) or (y=-1)) then
17850 select case No
17860 case 0:
17870 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
17880 case else:
17890 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
17900 end select
17910 'ase else:
17920 endif
17930 '3.Help
17940 '3-1.ルールの表示
17950 '3-2.バージョン
17960 '3-3.トップに戻る
17970 Help:
17980 cls 3:Font 48:No=0
17990 play ""
18000 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
18010 gload Gazo$ + "downscreen.png",0,0,800
18020 if ex_info$(1)<>"JP" then
18030 color rgb(255,255,255)
18040 print chr$(13)+chr$(13)+chr$(13)
18050 print "Please select a number"+chr$(13)
18060 print " :1. Rules for Explain" + chr$(13)
18070 print " :2. Display Version" + chr$(13)
18080 print " :3. References" + chr$(13)
18090 print " :4. Return to Top Screen" + chr$(13)
18100 else
18110 color rgb(255,255,255)
18120 print chr$(13)+chr$(13)+chr$(13)
18130 print "番号を選んでください"+chr$(13)
18140 print " :1.ルールの説明" + chr$(13)
18150 print " :2.バージョンの表示" + chr$(13)
18160 print " :3.参考文献" + chr$(13)
18170 print " :4.トップ画面に戻る" + chr$(13)
18180 endif
18190 color rgb(0,0,0)
18200 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
18210 locate 1,15
18220 print "                                  "
18230 if ex_info$(1)<>"JP" then
18240 print "1. Select Rules for Explain"
18250 else
18260 locate 1,15
18270 print "1.ルールの説明を選択"
18280 endif
18290 init"kb:4"
18300 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
18310 Help_Select:
18320 bg=0:key$="":y=0:bg2=0
18330 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
18340 y = stick(1)
18350 key$ = inkey$
18360 bg = strig(1)
18370 bg2 = strig(0)
18380 pause 200
18390 wend
18400 if ex_info$(1)<>"JP" then
18410 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
18420 if ((y = 1) or (key$ = chr$(31))) then
18430 select case No
18440 case 0:
18450 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
18460 case 1:
18470 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
18480 case 2:
18490 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
18500 case 3:
18510 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
18520 end select
18530 endif
18540 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
18550 if ((y = -1) or (key$ = chr$(30))) then
18560 select case No
18570 case 0:
18580 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
18590 case 1:
18600 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
18610 case 2:
18620 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
18630 case 3:
18640 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
18650 end select
18660 endif
18670 else
18680 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
18690 if ((y = 1) or (key$ = chr$(31))) then
18700 select case No
18710 case 0:
18720 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
18730 case 1:
18740 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18750 case 2:
18760 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
18770 case 3:
18780 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
18790 end select
18800 endif
18810 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
18820 if ((y = -1) or (key$ = chr$(30))) then
18830 select case No
18840 case 0:
18850 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
18860 case 1:
18870 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
18880 case 2:
18890 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
18900 case 3:
18910 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
18920 end select
18930 endif
18940 endif
18950 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
18960 if ((bg = 2) or (key$ = chr$(13))) then
18970 select case No
18980 case 0:
18990 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop:     'Suhi_Rule:
19000 case 1:
19010 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
19020 case 2:
19030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
19040 '3:Top画面に行く
19050 case 3:
19060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
19070 end select
19080 endif
19090 if (bg2 = 2) then
19100 play "":pause 200
19110 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
19120 goto Help_Select:
19130 endif
19140 'ルールの説明　トップ画面
19150 Suhi_Rule_explainTop:
19160 '**********************************************************
19170 cls 3:Font 48:No=0
19180 play ""
19190 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
19200 gload Gazo$ + "downscreen.png",0,0,800
19210 if ex_info$(1)<>"JP" then
19220 color rgb(255,255,255)
19230 print chr$(13)+chr$(13)+chr$(13)
19240 print "Please select a number"+chr$(13)
19250 print " :1.How to Kabara" + chr$(13)
19260 print " :2. Explain for BirdseyeGrid" + chr$(13)
19270 print " :3. Return to Top Screen" + chr$(13)
19280 else
19290 color rgb(255,255,255)
19300 print chr$(13)+chr$(13)+chr$(13)
19310 print "番号を選んでください"+chr$(13)
19320 print " :1.数秘術のやり方" + chr$(13)
19330 print " :2.バーズアイグリットの説明" + chr$(13)
19340 print " :3.トップ画面に戻る" + chr$(13)
19350 endif
19360 color rgb(0,0,0)
19370 sp_on 0,1:sp_on 1,0:sp_on 2,0
19380 locate 1,15
19390 print "                                  "
19400 if ex_info$(1)<>"JP" then
19410 print "                                  "
19420 print ":1.How to Kabara"
19430 else
19440 locate 1,15
19450 print ":1.数秘術のやり方"
19460 endif
19470 init"kb:4"
19480 'play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
19490 Suhi_Rule_explain2:
19500 bg=0:key$="":y=0:bg2=0
19510 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
19520 y = stick(1)
19530 key$ = inkey$
19540 bg = strig(1)
19550 bg2 = strig(0)
19560 pause 200
19570 wend
19580 if ex_info$(1) <> "JP" then
19590 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
19600 if ((y = 1) or (key$ = chr$(31))) then
19610 select case No
19620 case 0:
19630 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Help_Select:
19640 case 1:
19650 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Help_Select:
19660 case 2:
19670 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Help_Select:
19680 end select
19690 endif
19700 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
19710 if ((y = -1) or (key$ = chr$(30))) then
19720 select case No
19730 case 0:
19740 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Help_Select:
19750 case 2:
19760 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Help_Select:
19770 case 3:
19780 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Help_Select:
19790 end select
19800 endif
19810 else
19820 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
19830 if ((y = 1) or (key$ = chr$(31))) then
19840 select case No
19850 case 0:
19860 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explain2:
19870 case 1:
19880 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explain2:
19890 case 2:
19900 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explain2:
19910 end select
19920 endif
19930 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
19940 if ((y = -1) or (key$ = chr$(30))) then
19950 select case No
19960 case 1:
19970 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explain2:
19980 case 2:
19990 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explain2:
20000 case 0:
20010 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行くを選択":goto Suhi_Rule_explain2
20020 end select
20030 endif
20040 endif
20050 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
20060 if ((bg = 2) or (key$ = chr$(13))) then
20070 select case No
20080 case 0:
20090 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule:
20100 case 1:
20110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain_chart:
20120 '3:Top画面に行く
20130 case 2:
20140 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
20150 end select
20160 endif
20170 if (bg2 = 2) then
20180 play "":pause 200
20190 'play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
20200 goto Help_Select:
20210 endif
20220 '**********************************************************
20230 '**************
20240 BirdsEyeGrid_Explain_chart:
20250 cls 3:gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png":No=0:bg=0:key$=""
20260 while ((bg <> 2) and (key$ <> chr$(13)))
20270 bg=strig(0)
20280 key$=inkey$
20290 pause 200
20300 wend
20310 if ((bg=2) or (key$=chr$(13)))  then
20320 goto Main_Screen:
20330 endif
20340 '**************
20350 end
20360 '数秘術占い　トップ画面
20370 Kabara_TopScreen:
20380 cls 3:play ""
20390 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
20400 gload Gazo$ + "downscreen.png",0,0,800
20410 play Voice$ + "KabaraTop_Selection_20230721.mp3"
20420 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
20430 init"kb:4":No=0
20440 if ex_info$(1)<>"JP" then
20450 color rgb(255,255,255)
20460 print chr$(13)+chr$(13)+chr$(13)
20470 print "Please select a number" + chr$(13)
20480 print " :1.Numerology" + chr$(13)
20490 print " :2.Bird's Eye Grid" + chr$(13)
20500 print " :3.Compatibility Divination" + chr$(13)
20510 print " :4.Return to Top Screen" + chr$(13)
20520 color rgb(0,0,0)
20530 locate 1,15:print "1. Select Numerology"
20540 else
20550 color rgb(255,255,255)
20560 print chr$(13)+chr$(13)+chr$(13)
20570 print "番号を選んでください" + chr$(13)
20580 print " :1.数秘術占い" + chr$(13)
20590 print " :2.バーズアイグリット" + chr$(13)
20600 print " :3.相性占い" + chr$(13)
20610 print " :4.トップ画面に戻る" + chr$(13)
20620 color rgb(0,0,0)
20630 locate 1,15:print "1.数秘術占いを選択"
20640 endif
20650 Kabara_TopScreen2:
20660 y = 0:bg = 0:key$ = "":bg2 = 0
20670 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
20680 key$ = inkey$
20690 bg = strig(1)
20700 y = stick(1)
20710 bg2 = strig(0)
20720 pause 200
20730 wend
20740 '選択ボタン
20750 'カーソル下 　と　ジョイパッド　の下
20760 if ex_info$(1)<>"JP" then
20770 if ((y = 1) or (key$ = chr$(31))) then
20780 select case No
20790 case 2:
20800 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
20810 case 3:
20820 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
20830 case 0:
20840 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
20850 case 1:
20860 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
20870 end select
20880 endif
20890 else
20900 if ((y = 1) or (key$ = chr$(31))) then
20910 select case No
20920 case 2:
20930 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
20940 case 3:
20950 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
20960 case 0:
20970 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
20980 case 1:
20990 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
21000 end select
21010 endif
21020 'カーソル　上  or  ジョイパッド　上
21030 if ((y=-1) or (key$=chr$(30))) then
21040 select case No
21050 case 0:
21060 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
21070 case 1:
21080 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
21090 case 2:
21100 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
21110 case 3:
21120 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
21130 end select
21140 endif
21150 endif
21160 '決定ボタン
21170 'ジョイパッドの右　or  Enter key
21180 if ((bg = 2) or (key$ = chr$(13))) then
21190 select case No
21200 case 0:
21210 '1.数秘術占い
21220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
21230 case 3:
21240 '4.メイン画面にいく
21250 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
21260 case 1:
21270 '2.バースアイグリッド
21280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
21290 case 2:
21300 '3.相性占い
21310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
21320 end select
21330 endif
21340 if (bg2 = 2) then
21350 play "":pause 200
21360 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
21370 goto Kabara_TopScreen2:
21380 endif
21390 '1.バースアイグリット　名入力
21400 Inputname1:
21410 cls 3:init"kb:4":font 48
21420 bg=0:key$="":y=0:No=-1:name1$="":i=1
21430 gload Gazo$ + "Selection.png",1,10,100
21440 'Line 1:☓
21450 'A:選択肢
21460 sp_def 15,(50,250),16,16
21470 'B:選択肢
21480 sp_def 16,(200,250),16,16
21490 'C:選択肢
21500 sp_def 17,(350,250),16,16
21510 'D:選択肢
21520 sp_def 18,(500,250),16,16
21530 'E:選択肢
21540 sp_def 19,(630,250),16,16
21550 'F:選択肢
21560 sp_def 20,(780,250),16,16
21570 'G:選択肢
21580 sp_def 21,(930,250),16,16
21590 'Line 2:☓
21600 'H:選択肢
21610 sp_def 22,(50,345),16,16
21620 'I:選択肢
21630 sp_def 23,(200,345),16,16
21640 'J:選択肢
21650 sp_def 24,(350,345),16,16
21660 'K:選択肢
21670 sp_def 25,(500,345),16,16
21680 'L:選択肢
21690 sp_def 26,(630,345),16,16
21700 'M:選択肢
21710 sp_def 27,(780,345),16,16
21720 'N:選択肢
21730 sp_def 28,(930,345),16,16
21740 'Line 3:☓
21750 'O:選択肢
21760 sp_def 29,(50,440),16,16
21770 'P:選択肢
21780 sp_def 30,(200,440),16,16
21790 'Q:選択肢
21800 sp_def 31,(350,440),16,16
21810 'R:選択肢
21820 sp_def 32,(500,440),16,16
21830 'S:選択肢
21840 sp_def 33,(630,440),16,16
21850 'T:選択肢
21860 sp_def 34,(780,440),16,16
21870 'U:選択肢
21880 sp_def 35,(930,440),16,16
21890 'Line 4:◯
21900 'V:選択肢
21910 sp_def 36,(50,535),16,16
21920 'W:選択肢
21930 sp_def 37,(200,535),16,16
21940 'X:選択肢
21950 sp_def 38,(350,535),16,16
21960 'Y:選択肢
21970 sp_def 39,(500,535),16,16
21980 'Z:選択肢
21990 sp_def 40,(630,535),16,16
22000 'Ok:選択肢
22010 sp_def 41,(780,535),16,16
22020 'sp_def 42,(930,535),16,16
22030 'Line 1
22040 'A
22050 sp_on 15,0
22060 'B
22070 sp_on 16,0
22080 'C
22090 sp_on 17,0
22100 'D
22110 sp_on 18,0
22120 'E
22130 sp_on 19,0
22140 'F
22150 sp_on 20,0
22160 'G
22170 sp_on 21,0
22180 'Line 1
22190 'Line 2
22200 'H
22210 sp_on 22,0
22220 'I
22230 sp_on 23,0
22240 'J
22250 sp_on 24,0
22260 'K
22270 sp_on 25,0
22280 'L
22290 sp_on 26,0
22300 'M
22310 sp_on 27,0
22320 'N
22330 sp_on 28,0
22340 'Line 2
22350 'Line 3
22360 'O
22370 sp_on 29,0
22380 'P
22390 sp_on 30,0
22400 'Q
22410 sp_on 31,0
22420 'R
22430 sp_on 32,0
22440 'S
22450 sp_on 33,0
22460 'T
22470 sp_on 34,0
22480 'U
22490 sp_on 35,0
22500 'Line 3
22510 'Line 4
22520 'V
22530 sp_on 36,0
22540 'W
22550 sp_on 37,0
22560 'X
22570 sp_on 38,0
22580 'Y
22590 sp_on 39,0
22600 'Z
22610 sp_on 40,0
22620 'Ok
22630 sp_on 41,1
22640 'Line 4
22650 'sp_on 42,1
22660 'Line 1
22670 'sp_put 15,(50,250),0,0
22680 'sp_put 16,(200,250),0,0
22690 'sp_put 17,(350,250),0,0
22700 'sp_put 18,(500,250),0,0
22710 'sp_put 19,(630,250),0,0
22720 'sp_put 20,(780,250),0,0
22730 'sp_put 21,(930,250),0,0
22740 'Line 2
22750 'sp_put 22,(50,345),0,0
22760 'sp_put 23,(200,345),0,0
22770 'sp_put 24,(350,345),0,0
22780 'sp_put 25,(500,345),0,0
22790 'sp_put 26,(630,345),0,0
22800 'sp_put 27,(780,345),0,0
22810 'sp_put 28,(930,345),0,0
22820 'Line 3
22830 'sp_put 29,(50,440),0,0
22840 'sp_put 30,(200,440),0,0
22850 'sp_put 31,(350,440),0,0
22860 'sp_put 32,(500,440),0,0
22870 'sp_put 33,(630,440),0,0
22880 'sp_put 34,(780,440),0,0
22890 'sp_put 35,(930,440),0,0
22900 'Line 4
22910 'sp_put 36,(50,535),0,0
22920 'sp_put 37,(200,535),0,0
22930 'sp_put 38,(350,535),0,0
22940 'sp_put 39,(500,535),0,0
22950 'sp_put 40,(630,535),0,0
22960 sp_put 41,(780,535),0,0
22970 'sp_put 42,(930,536),0,0
22980 gload Gazo$ + "Screen1.png",0,0,0
22990 color rgb(255,255,255)
23000 locate 1,3
23010 print "名前の姓をアルファベットで入力してください"
23020 locate 1,5
23030 print " A  B  C  D  E  F  G"
23040 locate 1,7
23050 print " H  I  J  K  L  M  N"
23060 locate 1,9
23070 print " O  P  Q  R  S  T  U"
23080 locate 1,11
23090 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
23100 locate 1,15:color rgb(0,0,0)
23110 print "名前の姓:" + name1$
23120 select_name1:
23130 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
23140 '有効ボタン
23150 '1.決定ボタン(bg:2)
23160 '2.Enter Key$:chr$(13)
23170 '3.カーソル上 (chr$(31))
23180 '4.カーソル　左 (chr$(29))
23190 '5.ジョイパッド　上 (y:1)
23200 '6:ジョイパッド　左 (y2:-1)
23210 '7:ジョイパッド　下 (y:-1)
23220 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
23230 key$ = inkey$
23240 'ジョイパッドの決定:bg
23250 bg = strig(1)
23260 y = stick(1)
23270 y2 = stick(0)
23280 pause 200
23290 wend
23300 '====================================
23310 'Birds Eye Grid 名前入力
23320 '入力スタイル　アルファベット入力
23330 'sp_on:　スプライトのオンオフ
23340 'sp_put :表示位置
23350 'No:ボタン番号
23360 '====================================
23370 'カーソルで下に行く
23380 if ((y=-1) or (key$=chr$(31))) then
23390 select case No
23400 '1.Ok ボタン
23410 'sp_on スプライトのオンオフ
23420 'sp_put スプライトを表示
23430 case -1:
23440 '1.アルファベット　入力ボタン
23450 '実装未完全なので終了
23460 'Ok → T ○ :No:20=T
23470 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
23480 'T  → M ○
23490 case 20:
23500 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
23510 'M  →　F ○
23520 case 13:
23530 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
23540 'F  → Ok
23550 case 6:
23560 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
23570 end select
23580 endif
23590 '2.決定ボタン
23600 if ((key$ = chr$(13)) OR  (bg = 2)) then
23610 select case No
23620 case -1:
23630 'スプライトをOFFにする
23640 sp_on 41,0
23650 end select
23660 endif
23670 '3.カーソル　左
23680 if (key$ = chr$(29) or (y2 =-1)) then
23690 select case No
23700 'Line 4
23710 'Line 4
23720 '1.
23730 'Z:-1 :Ok ボタン
23740 'Ok → Z
23750 case -1:
23760 'Ok →　Z
23770 'Ok ボタン OFF,Z Button ON
23780 'No=26:Z
23790 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
23800 '2.
23810 '26:Zボタン Z→ Y
23820 case 26:
23830 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
23840 '3.
23850 '25:Yボタン  Y → X
23860 case 25:
23870 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
23880 '4
23890 '24:Xボタン X → W
23900 case 24:
23910 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
23920 '23:Wボタン X → W
23930 '5
23940 case 23:
23950 '22:Vボタン W → V
23960 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
23970 case 22:
23980 '-1:V→ Ok
23990 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
24000 'Line 3
24010 case 20:
24020 '33:T34  → S:33 :◯
24030 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
24040 case 19:
24050 '32:S:33 → R:32 :◯
24060 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
24070 case 18:
24080 '31:R:32 → Q:31 :◯
24090 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
24100 '30:O → P :◯
24110 case 17:
24120 '30:Q:31 → P:30 :◯
24130 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
24140 case 16:
24150 '29:P:30 → O:29 :◯
24160 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
24170 case 15:
24180 '28:O:29 → U:21  :◯
24190 'O:OFF,U:ON
24200 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
24210 '27:U:21 → T:20  :◯
24220 case 21:
24230 'U:OFF:T:ON
24240 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
24250 'Line 2
24260 '26:M:13 → L:12 : ○
24270 case 13:
24280 'M:OFF,L:ON
24290 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
24300 '25:L:12 → K:11 : ○
24310 case 12:
24320 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
24330 '24:K:11 → J:10 : ○
24340 case 11:
24350 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
24360 '23:J:10 → I:9  : ○
24370 case 10:
24380 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
24390 '22:I:9 → H:8    :○
24400 case 9:
24410 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
24420 '21:H:8 → N:14:   :○
24430 case 8:
24440 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
24450 '20:N:14 → M:13:   :○
24460 case 14:
24470 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
24480 '●.Line 1:
24490 '19:F:20 → E:19 : ☓
24500 'F:OFF,E:ON
24510 case 6:
24520 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
24530 '18:E → D
24540 'E:OFF,D:ON
24550 case 5:
24560 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
24570 '17:D → C
24580 'D:OFF,C:ON
24590 case 4:
24600 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
24610 case 3:
24620 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
24630 case 2:
24640 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
24650 case 1:
24660 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
24670 case 7:
24680 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
24690 end select
24700 endif
24710 '上から下の方向
24720 if ((key$ = chr$(31)) or  (y = 1)) then
24730 select case No
24740 '●.1
24750 '1:A→H
24760 case 1:
24770 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
24780 '2:H→O
24790 case 8:
24800 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
24810 '3:O→V
24820 case 15:
24830 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
24840 '4:V→A
24850 case 22:
24860 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
24870 '●.2
24880 '5.B→I
24890 case 2:
24900 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
24910 '6.I→P
24920 case 9:
24930 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
24940 '7.P→W
24950 case 16:
24960 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
24970 '8.W→B
24980 case 23:
24990 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
25000 '●.3
25010 '9.C→J
25020 case 3:
25030 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
25040 '10.J→Q
25050 case 10:
25060 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
25070 '11.Q→X
25080 case 17:
25090 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
25100 '12.X→C
25110 case 24:
25120 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
25130 '●.4
25140 '13.D→K
25150 case 4:
25160 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
25170 '14.K→R
25180 case 11:
25190 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
25200 '15.R→Y
25210 case 18:
25220 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
25230 '16.Y→D
25240 case 25:
25250 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
25260 '●.5
25270 '17.E→L
25280 case 5:
25290 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
25300 '18.L→S
25310 case 12:
25320 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
25330 '19.S→Z
25340 case 19:
25350 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
25360 '20.Z→E
25370 case 26:
25380 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
25390 '●.6
25400 '21.F→M
25410 case 6:
25420 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
25430 '22.M→T
25440 case 13:
25450 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
25460 '23.T→Ok
25470 case 20:
25480 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
25490 '24.Ok→F
25500 case -1:
25510 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
25520 '●.7
25530 '25.G→N
25540 case 7:
25550 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
25560 '26.N→U
25570 case 14:
25580 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
25590 '27.U→G
25600 case 21:
25610 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
25620 end select
25630 endif
25640 '決定ボタン　で名前の姓に文字を追加。
25650 if (key$ = chr$(13) or bg = 2) then
25660 select case No
25670 'Okボタン
25680 case -1:
25690 goto Inputname2:
25700 'Aの文字
25710 case 1:
25720 'if len(n$)=0 then
25730 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
25740 'else
25750 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
25760 'endif
25770 goto select_name1:
25780 case 2:
25790 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
25800 end select
25810 endif
25820 Input_name1_Birdseye:
25830 cls 3:init "kb:2":play ""
25840 gload Gazo$ + "Input_Birtheye2.png",0,0,0
25850 if ex_info$(1)<>"JP" then
25860 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
25870 color rgb(0,0,255)
25880 locate 1,2:print "Please enter your name in English"
25890 color rgb(0,0,0)
25900 locate 1,5:Input "Name (Surname):",name1$
25910 else
25920 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
25930 color rgb(0,0,255)
25940 locate 1,2:print "名前をアルファベットで入れてください"
25950 color rgb(0,0,0)
25960 locate 1,5:Input "名前（姓の部分）:",name1$
25970 endif
25980 '27.U→G
25990 'locate 1,5:print "Hit any key"
26000 n1 = len(name1$)
26010 if (n1 < 11) then
26020 for i=1 to n1
26030 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
26040 next i
26050 endif
26060 goto Inputname2:
26070 '2.グリッドアイ　姓の入力
26080 'end
26090 Inputname2:
26100 cls 3:init"kb:2":font 48:play ""
26110 gload Gazo$ + "Input_Birtheye1.png",0,0,0
26120 if ex_info$(1)<>"JP" then
26130 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
26140 color rgb(0,0,255)
26150 locate 1,2:print "Please enter your name in English"
26160 color rgb(0,0,0)
26170 locate 1,5:Input "Name (First name):",name2$
26180 n2 = len(name2$)
26190 for i=1 to n2
26200 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
26210 next i
26220 else
26230 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
26240 color rgb(0,0,255)
26250 locate 1,2:print "名前をアルファベットで入れてください"
26260 color rgb(0,0,0)
26270 locate 1,5:Input "名前(名の部分):",name2$
26280 n2 = len(name2$)
26290 for i=1 to n2
26300 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
26310 next i
26320 endif
26330 '計算領域
26340 Complate:
26350 'name1
26360 for i=0 to 25
26370 for n=1 to len(name1$)
26380 if (buf_chart$(i,0) = buf_name1$(n-1)) then
26390 b = val(buf_chart$(i,1))
26400 buffer(b-1) = buffer(b-1) + 1
26410 endif
26420 next n
26430 next i
26440 'name2
26450 for i=0 to 25
26460 for n=1 to len(name2$)
26470 if (buf_chart$(i,0) = buf_name2$(n-1)) then
26480 c = val(buf_chart$(i,1))
26490 buffer(c - 1) = buffer(c - 1) + 1
26500 endif
26510 next n
26520 next i
26530 '結果表示領域
26540 Result_Birtheye1:
26550 cls 3:init"kb:4":No=0:play "":'音を止める
26560 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
26570 gload Gazo$ + "downscreen.png",0,0,800
26580 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
26590 color rgb(255,255,255)
26600 '1の表示
26610 locate 3,14:print buffer(0);
26620 '2の表示
26630 locate 3,9:print buffer(1);
26640 '3の表示
26650 locate 3,5:print buffer(2);
26660 '4の表示
26670 locate 10,14:print buffer(3);
26680 '5の表示
26690 locate 10,9:print buffer(4);
26700 '6の表示
26710 locate 10,5:print buffer(5);
26720 '7の表示
26730 locate 15,14:print buffer(6);
26740 '8の表示
26750 locate 15,9:print buffer(7);
26760 '9の表示
26770 locate 15,5:print buffer(8);
26780 'name を大文字に変換
26790 locate 5,3:print ucase$(name1$ + name2$)
26800 color rgb(0,0,0)
26810 'bg:右のボタン  ,bg2:左のボタン
26820 if ex_info$(1)<>"JP" then
26830 color rgb(255,255,255)
26840 print "Left circle: Main Screen, Right circle: Open Menu"
26850 else
26860 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
26870 endif
26880 bg=0:key$="":bg2=0
26890 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
26900 'Enterと決定ボタン
26910 key$ = inkey$
26920 '右ボタン:1
26930 bg = strig(1)
26940 '左の丸ボタン:0
26950 bg2=strig(0)
26960 pause 200
26970 wend
26980 if ((bg=2) or (key$=chr$(13))) then
26990 'データーをクリアしてトップ画面に行く
27000 'for i=0 to 8
27010 'buffer(i)=0
27020 'next i
27030 'for n=0 to 9
27040 'buf_name1$(n) = ""
27050 'buf_name2$(n) = ""
27060 'next n
27070 'Topに行く
27080 'goto Main_Screen:
27090 'メニューを開く
27100 'goto BirdsEye_Result2:
27110 'Menu(ui_select) リストに飛ぶ
27120 goto Result_Birtheye_List1:
27130 endif
27140 if (bg2=2) then
27150 'データーをクリアする
27160 for i=0 to 8
27170 buffer(i)=0
27180 next i
27190 for n=0 to 9
27200 buf_name1$(n)=""
27210 buf_name2$(n)=""
27220 next n
27230 goto Main_Screen:
27240 endif
27250 'goto Result_Birtheye1:
27260 'Result_Birtheye2:
27270 'cls 3:color rgb(255,255,255)
27280 'end
27290 'Memory 消去
27300 '
27310 '横のフォーカスライン
27320 BirdsEye_Result2:
27330 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
27340 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
27350 Forcus1_buffer$(2)="○"
27360 else
27370 Forcus1_buffer$(2)="☓"
27380 endif
27390 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
27400 Forcus1_buffer$(1)="○"
27410 else
27420 Forcus1_buffer$(1) = "☓"
27430 endif
27440 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
27450 Forcus1_buffer$(0)="○"
27460 else
27470 Forcus1_buffer$(0)="☓"
27480 endif
27490 gload Gazo$ + "Screen1.png",0,0,0
27500 if ex_info$(1)<>"JP" then
27510 color rgb(255,0,0):
27520 locate 1,1
27530 print "Bird's Eye Grid (Focus Line 1)"
27540 color rgb(255,255,255)
27550 locate 1,3:
27560 print "●. Horizontal Focus Line"
27570 locate 1,5
27580 print "1. Sharp Line:"+Forcus1_buffer$(2)
27590 locate 1,7
27600 print "2. Mediator Line:"+Forcus1_buffer$(1)
27610 locate 1,9
27620 print "3. Steady Line:"+Forcus1_buffer$(0)
27630 color rgb(0,0,0)
27640 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
27650 else
27660 color rgb(255,0,0):
27670 locate 1,1
27680 print "バーズアイグリッド(フォーカスライン1)"
27690 color rgb(255,255,255)
27700 locate 1,3:
27710 print "●.横のフォーカスライン"
27720 locate 1,5
27730 print "1.切れ者ライン:"+Forcus1_buffer$(2)
27740 locate 1,7
27750 print "2.調停者ライン:"+Forcus1_buffer$(1)
27760 locate 1,9
27770 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
27780 color rgb(0,0,0)
27790 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
27800 endif
27810 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
27820 key$ = inkey$
27830 bg = strig(1)
27840 bg2 = strig(0)
27850 pause 200
27860 wend
27870 if ((bg=2) or (key$=chr$(13))) then
27880 goto BirdsEye_Result3:
27890 endif
27900 if (bg2=2) then
27910 for i=0 to 8
27920 buffer(i)=0
27930 next i
27940 goto Main_Screen:
27950 endif
27960 BirdsEye_Result3:
27970 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
27980 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
27990 Forcus2_buffer$(2)="○"
28000 else
28010 Forcus2_buffer$(2)="☓"
28020 endif
28030 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
28040 Forcus2_buffer$(1)="○"
28050 else
28060 Forcus2_buffer$(1) = "☓"
28070 endif
28080 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
28090 Forcus2_buffer$(0)="○"
28100 else
28110 Forcus2_buffer$(0)="☓"
28120 endif
28130 gload Gazo$ + "Screen1.png",0,0,0
28140 if ex_info$(1)<>"JP" then
28150 color rgb(255,0,0):
28160 locate 1,1
28170 print "Bird's Eye Grid (Focus Line 2)"
28180 color rgb(255,255,255)
28190 locate 1,3
28200 print "●. Vertical Focus Line"
28210 locate 1,5
28220 print "1. Expresser Line:" + Forcus2_buffer$(2)
28230 locate 1,7
28240 print "2. Commander Line:" + Forcus2_buffer$(1)
28250 locate 1,9
28260 print "3. Leader Line:" + Forcus2_buffer$(0)
28270 color rgb(0,0,0)
28280 locate 0,15:print "Right circle: Next, Left circle: Retest "
28290 else
28300 color rgb(255,0,0):
28310 locate 1,1
28320 print "バーズアイグリッド(フォーカスライン2)"
28330 color rgb(255,255,255)
28340 locate 1,3
28350 print "●.縦のフォーカスライン"
28360 locate 1,5
28370 print "1.表現者ライン:" + Forcus2_buffer$(2)
28380 locate 1,7
28390 print "2.司令塔ライン:" + Forcus2_buffer$(1)
28400 locate 1,9
28410 print "3.指導者ライン:" + Forcus2_buffer$(0)
28420 color rgb(0,0,0)
28430 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
28440 endif
28450 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
28460 key$ = inkey$
28470 bg = strig(1)
28480 bg2 = strig(0)
28490 pause 200
28500 wend
28510 if ((bg = 2) or (key$ = chr$(13))) then
28520 goto BirdsEye_Result4:
28530 endif
28540 if (bg2=2) then
28550 for i=0 to 8
28560 buffer(i)=0
28570 next i
28580 goto Main_Screen:
28590 endif
28600 BirdsEye_Result4:
28610 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
28620 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
28630 Forcus3_buffer$(1) = "○"
28640 else
28650 Forcus3_buffer$(1) = "☓"
28660 endif
28670 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
28680 Forcus3_buffer$(0) = "○"
28690 else
28700 Forcus3_buffer$(0) = "☓"
28710 endif
28720 gload Gazo$ + "Screen1.png",0,0,0
28730 if ex_info$(1)<>"JP" then
28740 color rgb(255,0,0):
28750 locate 1,1
28760 print "Bird's Eye Grid (Focus Line 3)"
28770 color rgb(255,255,255)
28780 locate 1,3:
28790 print "●. Diagonal Focus Line"
28800 locate 1,5
28810 print "1. Success Line:"+Forcus3_buffer$(1)
28820 locate 1,7
28830 print "2. Celebrity Line:"+Forcus3_buffer$(0)
28840 color rgb(0,0,0)
28850 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
28860 else
28870 color rgb(255,0,0):
28880 locate 1,1
28890 print "バーズアイグリッド(フォーカスライン3)"
28900 color rgb(255,255,255)
28910 locate 1,3:
28920 print "●.斜めのフォーカスライン"
28930 locate 1,5
28940 print "1.成功者ライン:"+Forcus3_buffer$(1)
28950 locate 1,7
28960 print "2.セレブライン:"+Forcus3_buffer$(0)
28970 color rgb(0,0,0)
28980 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
28990 endif
29000 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
29010 key$ = inkey$
29020 bg = strig(1)
29030 bg2 = strig(0)
29040 pause 200
29050 wend
29060 if ((bg=2) or (key$=chr$(13))) then
29070 goto Result_Birtheye1:
29080 endif
29090 if (bg2=2) then
29100 'データークリア
29110 for i=0 to 8
29120 buffer(i) = 0
29130 next i
29140 goto Main_Screen:
29150 endif
29160 References1:
29170 cls 3:key$ = "":bg = 0:play "":font 48-8
29180 gload Gazo$ + "Reference1_20230703.png",0,0,0
29190 gload Gazo$ + "downscreen.png",0,0,800
29200 if ex_info$(1)<>"JP" then
29210 print chr$(13)+chr$(13)+chr$(13)
29220 color rgb(0,0,255)
29230 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
29240 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
29250 print "・Publisher: Gento-sha" + chr$(13)
29260 print "・Website: www.carolAdrienne.jp/" + chr$(13)
29270 print "・ISBN: 978-4-344-01394-0" + chr$(13)
29280 print "・Price: 1500 yen + tax" + chr$(13)
29290 color rgb(255,255,255)
29300 locate 1,18
29310 print "Right joystick: Next"
29320 else
29330 print chr$(13)+chr$(13)+chr$(13)
29340 color rgb(0,0,255)
29350 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
29360 print "・Author:carol Adrinne,PhD"+chr$(13)
29370 print "・出版社:幻冬舎" + chr$(13)
29380 print "・HP:www.carolAdrienne.jp/"+chr$(13)
29390 print "・ISBN:978-4-344-01394-0"+chr$(13)
29400 print "・定価:1500円 + 税"+chr$(13)
29410 color rgb(255,255,255)
29420 locate 1,18
29430 print "ジョイパッド右：次へ"
29440 endif
29450 while (key$ <> chr$(13) and bg <> 2)
29460 bg = strig(1)
29470 key$ = inkey$
29480 pause 200
29490 wend
29500 '
29510 if ((bg = 2) or (key$ = chr$(13))) then
29520 pause 200:goto References2:
29530 endif
29540 'ユダヤの秘儀 カバラ大占術
29550 References2:
29560 cls 3:play "":bg = 0:key$ = ""
29570 gload Gazo$ + "Reference2_20230703.png",0,0,0
29580 gload Gazo$ + "downscreen.png",0,0,800
29590 '参考文献２
29600 'カバラ大占術
29610 if ex_info$(1)<>"JP" then
29620 print chr$(13) + chr$(13) + chr$(13)
29630 color  rgb(0,0,255):font 48-8
29640 locate 1,3
29650 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
29660 print "・Author: Hironari Asano" + chr$(13)
29670 print "・Publisher: NON BOOK" + chr$(13)
29680 print "・ISBN: 4-396-10364-6" + chr$(13)
29690 print "・Price: 829 yen + tax"
29700 color rgb(255,255,255)
29710 locate 1,18
29720 print "Right joystick: Return to top"
29730 else
29740 print chr$(13) + chr$(13) + chr$(13)
29750 color  rgb(0,0,255):font 48-8
29760 locate 1,3
29770 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
29780 print "・著者：浅野　八郎" + chr$(13)
29790 print "・出版社:NON BOOK" + chr$(13)
29800 print "・ISBN:4-396-10364-6" + chr$(13)
29810 print "・定価:829円 + 税"
29820 color rgb(255,255,255)
29830 locate 1,18
29840 print "ジョイパッド右：トップへ行く"
29850 endif
29860 while ((key$ <> chr$(13)) and (bg <> 2))
29870 bg = strig(1)
29880 key$ = inkey$
29890 pause 200
29900 wend
29910 if ((bg = 2) or (key$ = chr$(13))) then
29920 pause 200:goto Main_Screen:
29930 endif
29940 end
29950 '1.数秘術　トップ画面
29960 Kabara_First_Top:
29970 cls 3:color rgb(255,255,255):play ""
29980 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
29990 gload Gazo$ + "downscreen.png",0,0,800
30000 No=0:init"kb:4"
30010 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
30020 if ex_info$(1)<>"JP" then
30030 print chr$(13);chr$(13)
30040 color rgb(255,255,255)
30050 locate 3,4:No=0
30060 print "Please select a number" + chr$(13)
30070 print " :1. Numerology" + chr$(13)
30080 print " :2. Return to the top screen" + chr$(13)
30090 color rgb(0,0,0)
30100 sp_on 0,1
30110 locate 1,15:print "1. Select Numerology"
30120 else
30130 print chr$(13);chr$(13)
30140 color rgb(255,255,255)
30150 locate 3,4:No=0
30160 print "番号選んでください" + chr$(13)
30170 print " :1.数秘術占い" + chr$(13)
30180 print " :2.トップ画面に戻る" + chr$(13)
30190 color rgb(0,0,0)
30200 sp_on 0,1
30210 locate 1,15:print "1.数秘術番号を求めるを選択"
30220 endif
30230 'KeyBord:true
30240 'Joy Pad:true
30250 '上、下:true
30260 '
30270 'ｂｇ：決定ボタン
30280 'カーソル　上
30290 'カーソル　下
30300 Kabara_First_Top2:
30310 key$ = "":bg = 0:y = 0:
30320 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
30330 key$ = inkey$
30340 bg = strig(1)
30350 y = stick(1)
30360 'PauseでCPUを休める
30370 pause 5
30380 wend
30390 '1.カーソル　下 処理 chr$(31)
30400 'カーソル　下
30410 if ex_info$(1)<>"JP" then
30420 if ((key$ = chr$(31)) or (y = 1)) then
30430 select case No
30440 '
30450 case 1:
30460 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
30470 case 0:
30480 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
30490 'case 2:
30500 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
30510 end select
30520 endif
30530 else
30540 if ((key$ = chr$(31)) or (y = 1)) then
30550 select case No
30560 '
30570 case 1:
30580 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
30590 case 0:
30600 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
30610 'case 2:
30620 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
30630 end select
30640 endif
30650 '2.カーソル　上 処理 chr$(30)
30660 if ((key$ = chr$(30)) or (y = -1)) then
30670 select case No
30680 case 0:
30690 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
30700 case 1:
30710 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
30720 'case 2:
30730 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
30740 end select
30750 endif
30760 endif
30770 '3.決定 処理  bg:2 or Enter key:chr$(13)
30780 if ((bg = 2) or (key$ = chr$(13))) then
30790 select case No
30800 case 0:
30810 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
30820 goto Kabara_TopScreen:
30830 'case 1:
30840 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
30850 case 1:
30860 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
30870 end select
30880 endif
30890 '
30900 'Kabara 相性占い トップ画面
30910 Kabara_Aishou_Top:
30920 cls 3:y=0:key$="":bg=0:No=0
30930 play ""
30940 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
30950 gload Gazo$ + "downscreen.png",0,0,800
30960 if ex_info$(1)<>"JP" then
30970 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
30980 print chr$(13) + chr$(13)
30990 locate 0,4:color rgb(255,255,255)
31000 print "Please select a number" + chr$(13)
31010 print " :1. Compatibility fortune-telling ...." + chr$(13)
31020 print " :2. Business compatibility fortune-telling" + chr$(13)
31030 print " :3. Return to the top screen" + chr$(13)
31040 sp_on 0,1:sp_on 1,0:sp_on 2,0
31050 color rgb(0,0,0)
31060 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
31070 else
31080 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
31090 print chr$(13) + chr$(13)
31100 locate 0,4:color rgb(255,255,255)
31110 'print "Ok"
31120 '
31130 print "番号を選んでください" + chr$(13)
31140 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
31150 print " :2.ビジネスの相性占い" + chr$(13)
31160 print " :3.トップ画面に戻る" + chr$(13)
31170 sp_on 0,1:sp_on 1,0:sp_on 2,0
31180 color rgb(0,0,0)
31190 locate 1,15:print "1.男女2人の相性占いを選択"
31200 endif
31210 Kabara_Aishou_Top2:
31220 key$ = "":y = 0:bg = 0:
31230 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
31240 'ジョイパッド(右) ,十字キー (上下)
31250 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
31260 y = stick(1)
31270 key$ = inkey$
31280 bg = strig(1)
31290 pause 200
31300 wend
31310 'カーソル　下 or 十字キー　下
31320 if ex_info$(1)<>"JP" then
31330 if ((key$ = chr$(31)) or (y = 1)) then
31340 select case No
31350 'Option change 1 - 2
31360 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
31370 'ok
31380 case 0:
31390 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
31400 'Option change 2 - 3
31410 case 1:
31420 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
31430 'Release time case 2 comment release
31440 case 2:
31450 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
31460 case else:
31470 goto Kabara_Aishou_Top2:
31480 end select
31490 endif
31500 if ((key$ = chr$(30)) or (y = -1)) then
31510 select case No
31520 case 0:
31530 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
31540 case 1:
31550 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
31560 case 2:
31570 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
31580 case else:
31590 goto Kabara_Aishou_Top2:
31600 end select
31610 endif
31620 else
31630 if ((key$ = chr$(31)) or (y = 1)) then
31640 select case No
31650 '選択肢　1 - 2に変更
31660 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
31670 'ok
31680 case 0:
31690 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
31700 '選択肢　2 - 3に変更
31710 case 1:
31720 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
31730 'リリース時 case 2コメント解除
31740 case 2:
31750 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
31760 case else:
31770 goto Kabara_Aishou_Top2:
31780 end select
31790 endif
31800 '十字キー　上　、カーソル　上
31810 if ((key$ = chr$(30)) or (y = -1)) then
31820 select case No
31830 case 0:
31840 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
31850 case 1:
31860 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
31870 case 2:
31880 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
31890 case else:
31900 goto Kabara_Aishou_Top2:
31910 end select
31920 endif
31930 endif
31940 '十字キー　上下:選択
31950 'ジョイパッド 右:決定
31960 if ((bg = 2) or (key$ = chr$(13))) then
31970 select case No
31980 '1.男女の相性
31990 case 0:
32000 '男女の相性占い(未実装)トップ画面に飛ぶ
32010 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
32020 '2ビジネスの相性
32030 case 1:
32040 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
32050 case 2:
32060 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
32070 end select
32080 endif
32090 '0.男女の相性　トップ画面　ここから
32100 Danjyo_Aisyou_Top:
32110 cls 3:y=0:key$="":bg=0:No=0
32120 play ""
32130 gload Gazo$ + "Screen1.png",0,0,0
32140 gload Gazo$ + "downscreen.png",0,0,800
32150 if ex_info$(1)<>"JP" then
32160 print chr$(13) + chr$(13)
32170 locate 0,4:color rgb(255,255,255)
32180 print "Please select a number" + chr$(13)
32190 print " :1. Compatibility with a person of ...." + chr$(13)
32200 print " :2. Compatibility between two people" + chr$(13)
32210 print " :3. Return to the top screen" + chr$(13)
32220 sp_on 0,1:sp_on 1,0:sp_on 2,0
32230 color rgb(0,0,0)
32240 locate 1,15:print "1. Compatibility with a person of ...."
32250 else
32260 print chr$(13) + chr$(13)
32270 locate 0,4:color rgb(255,255,255)
32280 'print "Ok"
32290 '
32300 print "番号を選んでください" + chr$(13)
32310 print " :1.自分と異性の相性(未実装)" + chr$(13)
32320 print " :2.男女2人の相性" + chr$(13)
32330 print " :3.トップ画面に戻る" + chr$(13)
32340 sp_on 0,1:sp_on 1,0:sp_on 2,0
32350 color rgb(0,0,0)
32360 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
32370 endif
32380 Danjyo_Aisyou_Top2:
32390 key$ = "":y = 0:bg = 0:
32400 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
32410 'ジョイパッド(右) ,十字キー (上下)
32420 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
32430 y = stick(1)
32440 key$ = inkey$
32450 bg = strig(1)
32460 pause 200
32470 wend
32480 if ex_info$(1)<>"JP" then
32490 'Cursor down or arrow key down
32500 if ((key$ = chr$(31)) or (y = 1)) then
32510 select case No
32520 'Option 1 - 2 change
32530 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
32540 'ok
32550 case 0:
32560 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
32570 'Option 2 - 3 change
32580 case 1:
32590 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
32600 'Release time case 2 comment release
32610 case 2:
32620 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
32630 case else:
32640 goto Kabara_Aishou_Top2:
32650 end select
32660 endif
32670 'Arrow key up, cursor up
32680 if ((key$ = chr$(30)) or (y = -1)) then
32690 select case No
32700 case 0:
32710 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
32720 case 1:
32730 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
32740 case 2:
32750 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
32760 case else:
32770 goto Kabara_Aishou_Top2:
32780 end select
32790 endif
32800 else
32810 'カーソル　下 or 十字キー　下
32820 if ((key$ = chr$(31)) or (y = 1)) then
32830 select case No
32840 '選択肢　1 - 2に変更
32850 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
32860 'ok
32870 case 0:
32880 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
32890 '選択肢　2 - 3に変更
32900 case 1:
32910 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
32920 'リリース時 case 2コメント解除
32930 case 2:
32940 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
32950 case else:
32960 goto Kabara_Aishou_Top2:
32970 end select
32980 endif
32990 '十字キー　上　、カーソル　上
33000 if ((key$ = chr$(30)) or (y = -1)) then
33010 select case No
33020 case 0:
33030 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
33040 case 1:
33050 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
33060 case 2:
33070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
33080 case else:
33090 goto Kabara_Aishou_Top2:
33100 end select
33110 endif
33120 endif
33130 end
33140 '十字キー　上下:選択
33150 'ジョイパッド 右:決定
33160 if ((bg = 2) or (key$ = chr$(13))) then
33170 select case No
33180 '1.自分と異性の相性
33190 case 0:
33200 '未実装
33210 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
33220 '2男女の相性 男性の名前入力に飛ぶ
33230 case 1:
33240 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
33250 case 2:
33260 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
33270 end select
33280 endif
33290 '0.男女の相性　トップ画面　ここまで
33300 '1.男女の相性 ここから
33310 '1-1.男性の名前を入力
33320 Danjyo_Aisyou_Input_Name_male:
33330 No=0:color RGB(255,255,255)
33340 '入力:キーボード
33350 cls 3:init "kb:2"
33360 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
33370 gload Gazo$ + "downscreen.png",0,0,800
33380 for i=0 to 3
33390 buf_male_year(i)=0
33400 next i
33410 if ex_info$(1)<>"JP" then
33420 play "":color rgb(255,0,0):male_name$ = ""
33430 locate 0,1
33440 print "Male Compatibility" + chr$(13) + chr$(13)
33450 color rgb(255,255,255):
33460 locate 0,3
33470 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
33480 locate 0,15:color rgb(0,0,0)
33490 Input "Man's Name:",male_name$
33500 else
33510 play "":color rgb(255,0,0):male_name$ = ""
33520 locate 0,1
33530 print "男性の相性" + chr$(13) + chr$(13)
33540 color rgb(255,255,255):
33550 locate 0,3
33560 print "男性の相性を求めます。男性の名前を" + chr$(13)
33570 print "入れてください" + chr$(13)
33580 locate 0,15:color rgb(0,0,0)
33590 Input "男性の名前:",male_name$
33600 endif
33610 '-------------------------------------------
33620 '1-2:男性の生まれた年代
33630 Danjyo_Aisyou_Input_Born_Year:
33640 No=0:color RGB(255,255,255)
33650 cls 3:init "kb:4"
33660 gload Gazo$ + "Screen1.png",0,0,0
33670 gload Gazo$ + "downscreen.png",0,0,800
33680 play "":color rgb(255,0,0)
33690 '-------------------------------------------
33700 font 48
33710 if ex_info$(1)<>"JP" then
33720 locate 0,1
33730 color rgb(255,255,255)
33740 print "Please enter the man's birth year" + chr$(13)
33750 color rgb(255,255,255)
33760 locate 1,3
33770 print "Man's Birth Year (4 digits):";buf_male_year$
33780 else
33790 locate 0,1
33800 '文字色：黒　 color rgb(0,0,0)
33810 color rgb(255,255,255)
33820 print "男性の生まれた年代を入れて下さい" + chr$(13)
33830 color rgb(255,255,255)
33840 locate 1,3
33850 print "男性の生まれた年代(西暦4桁):";buf_male_year$
33860 endif
33870 color rgb(255,255,255)
33880 'locate 4,6:print ":7"
33890 'locate 9,6:print ":8"
33900 'locate 12,6:print ":9"
33910 locate 4,6
33920 print ":7  :8  :9" + chr$(13)
33930 color rgb(255,255,255)
33940 locate 4,8
33950 print ":4  :5  :6" + chr$(13)
33960 color rgb(255,255,255)
33970 locate 4,10
33980 print ":1  :2  :3" + chr$(13)
33990 locate 4,12
34000 print "    :0"
34010 locate 12,12
34020 color rgb(0,0,255)
34030 print ":Ok"
34040 sp_on 4,0: sp_on 5,0:sp_on 6,0
34050 sp_on 7,0:sp_on 8,0:sp_on 9,0
34060 sp_on 10,0:sp_on 11,0:sp_on 12,0
34070 sp_on 13,0:sp_on 14,1
34080 '-------------------------------------------------------------------------------------
34090 Danjyo_Aisyou_Input_Male_Born_Year2:
34100 key$="":bg=0:y=0:y2=0:bg2=0:
34110 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34120 key$ = inkey$
34130 bg = strig(1)
34140 y = stick(1)
34150 y2 = stick(0)
34160 bg2=strig(0)
34170 pause 200
34180 wend
34190 '十字キー　ここから
34200 '上の矢印　または、十字キー上
34210 if ((y = -1) or (key$ = chr$(30))) then
34220 select case No
34230 'No=-1:okのとき:初期の状態
34240 '0kボタンから３に移動
34250 '上に行く 処理
34260 case -1:
34270 No=3:sp_on 12,1:sp_on 14,0
34280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34290 '選択肢:3
34300 '3ボタンから 6に移動
34310 case 3:
34320 No=6:sp_on 12,0:sp_on 11,1
34330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34340 '6ボタンから ９に移動
34350 case 6:
34360 No=9:sp_on 10,1:sp_on 11,0
34370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34380 '6ボタンから ９に移動　ここまで
34390 '9で上を押して何もしない
34400 case 9:
34410 '何もしない
34420 No=9
34430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34440 '9で上を押しても何もしない　ここまで
34450 '上　 0ボタンから2ボタン
34460 'sp_on 6,1:1
34470 'sp_on 8,1:5
34480 'sp_on 7,1:7
34490 case 0:
34500 No=2:sp_on 13,0:sp_on 9,1:
34510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34520 '上  0ボタンから2ボタン　ここまで
34530 '2から５になる 上
34540 case 2:
34550 No=5:sp_on 8,1:sp_on 9,0:
34560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34570 case 5:
34580 No=8:sp_on 7,1:sp_on 8,0
34590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34600 case 8:
34610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34620 case 1:
34630 No=4:sp_on 5,1:sp_on 6,0
34640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34650 case 4:
34660 No=7:sp_on 4,1:sp_on 5,0
34670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34680 case 7:
34690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34700 end select
34710 endif
34720 '左３　ここまで
34730 '下の矢印
34740 '中央 2
34750 if ((y=1) or (key$ = chr$(31))) then
34760 select case No
34770 '9から６に下げる
34780 case 9:
34790 No=6:sp_on 11,1:sp_on 10,0
34800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34810 '6から３に下げる
34820 case 6:
34830 No=3:sp_on 12,1:sp_on 11,0
34840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34850 '3から０ｋに変える
34860 case 3:
34870 No=-1:sp_on 14,1:sp_on 12,0
34880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34890 'Okから下のボタンを押しても何もしない
34900 case -1:
34910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34920 case 8:
34930 No=5:sp_on 8,1:sp_on 7,0
34940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34950 case 5:
34960 No=2:sp_on 9,1:sp_on 8,0
34970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
34980 case 2:
34990 No=0:sp_on 13,1:sp_on 9,0
35000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35010 case 0:
35020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35030 case 7:
35040 No=4:sp_on 5,1:sp_on 4,0
35050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35060 case 4:
35070 No=1:sp_on 6,1:sp_on 5,0
35080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35090 case 1:
35100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35110 end select
35120 endif
35130 '左へボタン 十字キー　左　or 　カーソル左
35140 if ((y2 = -1) or (key$ = chr$(29))) then
35150 select case No
35160 'Ok ボタン  Okから　左　０に行く
35170 case -1:
35180 No=0:sp_on 13,1:sp_on 14,0
35190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35200 '0 ボタン  左　何もしない
35210 case 0:
35220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35230 case 3:
35240 No=2:sp_on 9,1:sp_on 12,0:
35250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35260 case 2:
35270 No=1:sp_on 6,1:sp_on 9,0:
35280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35290 case 1:
35300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35310 case 6:
35320 No=5:sp_on 8,1:sp_on 11,0
35330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35340 case 5:
35350 No=4:sp_on 5,1:sp_on 8,0
35360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35370 case 4:
35380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35390 case 9:
35400 No=8:sp_on 7,1:sp_on 10,0
35410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35420 case 8:
35430 No=7:sp_on 4,1:sp_on 7,0
35440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35450 case 7:
35460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35470 end select
35480 endif
35490 '右  十字キー　右　or カーソル　右
35500 if ((y2 = 1) or (key$ = chr$(28))) then
35510 select case No
35520 '0ボタンからokボタン右に移動
35530 case 0:
35540 No=-1:sp_on 14,1:sp_on 13,0
35550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35560 '0ボタンからokボタン 右に移動　ここまで
35570 'OKボタンで右を押して何もしない
35580 case -1:
35590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35600 case 1:
35610 No=2:sp_on 9,1:sp_on 6,0
35620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35630 case 2:
35640 No=3:sp_on 12,1:sp_on 9,0
35650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35660 case 3:
35670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35680 case 4:
35690 No=5:sp_on 8,1:sp_on 5,0
35700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35710 case 5:
35720 No=6:sp_on 11,1:sp_on 8,0
35730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35740 case 7:
35750 No=8:sp_on 7,1:sp_on 4,0
35760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35770 case 8:
35780 No=9:sp_on 10,1:sp_on 7,0
35790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35800 case 9:
35810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35820 case 6:
35830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
35840 end select
35850 'Okから右ボタンを押して何もしない ここまで
35860 endif
35870 '十字キー　ここまで
35880 '==============================
35890 'ここから
35900 '==============================
35910 if ((bg = 2) or (key$ = chr$(13))) then
35920 select case count
35930 case 0:
35940 count = 1
35950 if (No = -1) then
35960 count = 0:No=0
35970 buf_male_year(0) = No
35980 'Okボタンを押したとき
35990 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36000 else
36010 'Okボタン以外が押されたとき
36020 if (No >= 1 and No <= 2) then
36030 buf_year$="":buf_year$ = str$(No) + "***"
36040 buf_year = No:a= No
36050 buf_Jyoushi_Born_Day(0) = No
36060 if ex_info$(1)<>"JP" then
36070 locate 1,3
36080 color rgb(255,255,255)
36090 print "Year of birth of the male (4 digits AD):";buf_year$
36100 else
36110 count=0
36120 ui_msg"The number is out of range."
36130 endif
36140 else
36150 locate 1,3
36160 color rgb(255,255,255)
36170 print "男性の生まれた年代(西暦4桁):";buf_year$
36180 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36190 else
36200 count=0
36210 ui_msg"数字が範囲外になります。"
36220 endif
36230 buf_year$="":buf_year=0
36240 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36250 endif
36260 'endif
36270 case 1:
36280 count = 2
36290 if (No = -1) then
36300 count = 1
36310 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36320 else
36330 buf_year = a * 10 + No
36340 b=buf_year
36350 buf_year$ = str$(buf_year) + "**"
36360 buf_male_year(0)=buf_year
36370 locate 1,3
36380 color rgb(255,255,255)
36390 print "                                                                "
36400 locate 1,3
36410 print "男性の生まれた年代(西暦4桁):" + buf_year$
36420 'if (No = -1) then
36430 'count=1
36440 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36450 endif
36460 case 2:
36470 count=3
36480 if (No=-1) then
36490 count =2
36500 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36510 else
36520 buf_year = b * 10 + No
36530 c=buf_year
36540 buf_year$ = str$(buf_year) + "*"
36550 buf_male_year(0) = buf_year
36560 locate 1,3
36570 color rgb(255,255,255)
36580 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
36590 if ex_info$(1)<>"JP" then
36600 locate 1,3
36610 print "Year of birth of the male (4 digits AD):";buf_year$
36620 else
36630 locate 1,3
36640 print "男性の生まれた年代(西暦4桁):";buf_year$
36650 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36660 endif
36670 endif
36680 case 3:
36690 count=4
36700 if (No = -1) then
36710 No=0
36720 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36730 else
36740 buf_year = c * 10 + No
36750 buf_year$ = str$(buf_year)
36760 buf_male_year(0) = buf_year
36770 if ex_info$(1)<>"JP" then
36780 locate 1,3
36790 color RGB(255,255,255)
36800 print "                                      "
36810 locate 1,3
36820 print "Year of birth of the male (4 digits AD):";buf_year$
36830 else
36840 locate 1,3
36850 color RGB(255,255,255)
36860 print "                                      "
36870 locate 1,3
36880 print "男性の生まれた年代(西暦4桁):";buf_year$
36890 endif
36900 buf_year=val(buf_year$)
36910 'year=val(buf_year$)
36920 'if (No=-1) then
36930 'goto Input_Born_Month:
36940 'else
36950 goto Danjyo_Aisyou_Input_Male_Born_Year2:
36960 endif
36970 case 4:
36980 'bufyear=buf_year
36990 if (No=-1) then
37000 buf_year = val(buf_year$)
37010 buf_male_year(0)=buf_year
37020 sp_on 14,0:No=0
37030 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37040 else
37050 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37060 endif
37070 end select
37080 endif
37090 '===========================
37100 'ここまでを部下のところにコピーする.
37110 '===========================
37120 if (bg2 = 2) then
37130 select case count2
37140 case 0:
37150 if (No = -1) then
37160 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
37170 count=0
37180 if ex_info$(1)<>"JP" then
37190 locate 1,3
37200 color rgb(255,255,255)
37210 print "                                      "
37220 locate 1,3
37230 print "Year of birth of the male (4 digits AD):" + buf_male_year$
37240 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37250 else
37260 '(buf_year=0) then
37270 buf_male_year=0:buf_male_year$="****"
37280 locate 1,3
37290 print "                                       "
37300 locate 1,3
37310 print "Year of birth of the male (4 digits AD):"+buf_male_year$
37320 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37330 else
37340 locate 1,3
37350 color rgb(255,255,255)
37360 print "                                      "
37370 locate 1,3
37380 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
37390 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37400 else
37410 '(buf_year=0) then
37420 buf_male_year=0:buf_male_year$="****"
37430 locate 1,3
37440 print "                                       "
37450 locate 1,3
37460 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
37470 goto Danjyo_Aisyou_Input_Male_Born_Year2:
37480 endif
37490 endif
37500 end select
37510 endif
37520 '-------生まれた年代　男性-------------
37530 '-------生まれた月　男性-------------
37540 '1-2:男性の生まれた月
37550 Danjyo_Aisyou_Input_Male_Born_Month:
37560 cls 3:play "":count=0:count2=0
37570 'No=-1:Okのとき
37580 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
37590 for i=0 to 1
37600 buf_male_month(i)=0
37610 next i
37620 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
37630 gload Gazo$ + "Screen1.png",0,0,0
37640 gload Gazo$ + "downscreen.png",0,0,800
37650 'Init"kb:4"
37660 '音声ファイル再生 2023.06.07
37670 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
37680 font 48
37690 locate 0,1
37700 '文字色：黒　 color rgb(0,0,0)
37710 '文字色:白
37720 color rgb(255,255,255)
37730 print "男性の生まれた月を入れて下さい" + chr$(13)
37740 '文字色:白
37750 color rgb(255,255,255)
37760 locate 1,3
37770 '文字色:白
37780 print "男性の生まれた月(1月~12月):"+buf_male_Month$
37790 color rgb(255,255,255)
37800 'locate 4,6:print ":7"
37810 'locate 9,6:print ":8"
37820 'locate 12,6:print ":9"
37830 locate 4,6
37840 '文字色:赤
37850 print ":7  :8  :9" + chr$(13)
37860 color rgb(255,255,255)
37870 locate 4,8
37880 print ":4  :5  :6" + chr$(13)
37890 color rgb(255,255,255)
37900 locate 4,10
37910 print ":1  :2  :3" + chr$(13)
37920 locate 4,12
37930 print "    :0"
37940 locate 12,12
37950 color rgb(0,0,255)
37960 print ":Ok"
37970 sp_on 4,0: sp_on 5,0:sp_on 6,0
37980 sp_on 7,0:sp_on 8,0:sp_on 9,0
37990 sp_on 10,0:sp_on 11,0:sp_on 12,0
38000 sp_on 13,0:sp_on 14,1
38010 '----------------------------------------------------------------------------------------
38020 Danjyo_Aisyou_Input_Male_Born_Month2:
38030 key$="":bg=0:y=0:y2=0:bg2=0
38040 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38050 key$ = inkey$
38060 bg = strig(1)
38070 y = stick(1)
38080 y2 = stick(0)
38090 bg2 = strig(0)
38100 pause 200
38110 wend
38120 '十字キー　ここから
38130 '上の矢印　または、十字キー上
38140 if ((y = -1) or (key$ = chr$(30))) then
38150 select case No
38160 'No=-1:okのとき:初期の状態
38170 '0kボタンから３に移動
38180 '上に行く 処理
38190 case -1:
38200 No=3:sp_on 12,1:sp_on 14,0
38210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38220 '選択肢:3
38230 '3ボタンから 6に移動
38240 case 3:
38250 No=6:sp_on 12,0:sp_on 11,1
38260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38270 '6ボタンから ９に移動
38280 case 6:
38290 No=9:sp_on 10,1:sp_on 11,0
38300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38310 '6ボタンから ９に移動　ここまで
38320 '9で上を押して何もしない
38330 case 9:
38340 '何もしない
38350 No=9
38360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38370 '9で上を押しても何もしない　ここまで
38380 '上　 0ボタンから2ボタン
38390 'sp_on 6,1:1
38400 'sp_on 8,1:5
38410 'sp_on 7,1:7
38420 case 0:
38430 No=2:sp_on 13,0:sp_on 9,1:
38440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38450 '上  0ボタンから2ボタン　ここまで
38460 '2から５になる 上
38470 case 2:
38480 No=5:sp_on 8,1:sp_on 9,0:
38490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38500 case 5:
38510 No=8:sp_on 7,1:sp_on 8,0
38520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38530 case 8:
38540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38550 case 1:
38560 No=4:sp_on 5,1:sp_on 6,0
38570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38580 case 4:
38590 No=7:sp_on 4,1:sp_on 5,0
38600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38610 case 7:
38620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38630 end select
38640 endif
38650 '左３　ここまで
38660 '下の矢印
38670 '中央 2
38680 if ((y=1) or (key$ = chr$(31))) then
38690 select case No
38700 '9から６に下げる
38710 case 9:
38720 No=6:sp_on 11,1:sp_on 10,0
38730 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
38740 '6から３に下げる
38750 case 6:
38760 No=3:sp_on 12,1:sp_on 11,0
38770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38780 '3から０ｋに変える
38790 case 3:
38800 No=-1:sp_on 14,1:sp_on 12,0
38810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38820 'Okから下のボタンを押しても何もしない
38830 case -1:
38840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38850 case 8:
38860 No=5:sp_on 8,1:sp_on 7,0
38870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38880 case 5:
38890 No=2:sp_on 9,1:sp_on 8,0
38900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38910 case 2:
38920 No=0:sp_on 13,1:sp_on 9,0
38930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38940 case 0:
38950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38960 case 7:
38970 No=4:sp_on 5,1:sp_on 4,0
38980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
38990 case 4:
39000 No=1:sp_on 6,1:sp_on 5,0
39010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39020 case 1:
39030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39040 end select
39050 endif
39060 '左へボタン 十字キー　左　or 　カーソル左
39070 if ((y2 = -1) or (key$ = chr$(29))) then
39080 select case No
39090 'Ok ボタン  Okから　左　０に行く
39100 case -1:
39110 No=0:sp_on 13,1:sp_on 14,0
39120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39130 '0 ボタン  左　何もしない
39140 case 0:
39150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39160 case 3:
39170 No=2:sp_on 9,1:sp_on 12,0:
39180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39190 case 2:
39200 No=1:sp_on 6,1:sp_on 9,0:
39210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39220 case 1:
39230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39240 case 6:
39250 No=5:sp_on 8,1:sp_on 11,0
39260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39270 case 5:
39280 No=4:sp_on 5,1:sp_on 8,0
39290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39300 case 4:
39310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39320 case 9:
39330 No=8:sp_on 7,1:sp_on 10,0
39340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39350 case 8:
39360 No=7:sp_on 4,1:sp_on 7,0
39370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39380 case 7:
39390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39400 end select
39410 endif
39420 '右  十字キー　右　or カーソル　右
39430 if ((y2 = 1) or (key$ = chr$(28))) then
39440 select case No
39450 '0ボタンからokボタン右に移動
39460 case 0:
39470 No=-1:sp_on 14,1:sp_on 13,0
39480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39490 '0ボタンからokボタン 右に移動　ここまで
39500 'OKボタンで右を押して何もしない
39510 case -1:
39520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39530 case 1:
39540 No=2:sp_on 9,1:sp_on 6,0
39550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39560 case 2:
39570 No=3:sp_on 12,1:sp_on 9,0
39580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39590 case 3:
39600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39610 case 4:
39620 No=5:sp_on 8,1:sp_on 5,0
39630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39640 case 5:
39650 No=6:sp_on 11,1:sp_on 8,0
39660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39670 case 7:
39680 No=8:sp_on 7,1:sp_on 4,0
39690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39700 case 8:
39710 No=9:sp_on 10,1:sp_on 7,0
39720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39730 case 9:
39740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39750 case 6:
39760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
39770 end select
39780 'Okから右ボタンを押して何もしない ここまで
39790 endif
39800 '十字キー　ここまで
39810 '右の丸ボタン + Enter key 決定キー
39820 if ((bg=2) or (key$=chr$(13))) then
39830 select case count
39840 case 0:
39850 if (No=-1) then No=0
39860 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
39870 if (buf_male_month > 1 and buf_male_month < 10)  then
39880 buf_male_Month$ = str$(buf_male_month)
39890 'buf_month=No
39900 endif
39910 if (buf_male_month = 1)  then
39920 buf_male_Month$ = str$(buf_male_month) + "*"
39930 'c=buf_month
39940 endif
39950 locate 1,3
39960 print "                                     "
39970 color RGB(255,255,255)
39980 locate 1,3
39990 print "男性の生まれた月(1月~12月):" + buf_male_Month$
40000 goto Danjyo_Aisyou_Input_Male_Born_Month2:
40010 case 1:
40020 count = 2:
40030 'c = val(buf_Month$)
40040 if (No = -1) then
40050 'count=0
40060 No=0
40070 month=buf_male_month
40080 buf_male_month=val(buf_male_Month$)
40090 month=buf_male_month
40100 buf_Jyoushi_Born_Day(1)=month
40110 '生まれた日に飛ぶ
40120 goto Danjyo_Aisyou_Input_Male_Born_Day:
40130 else
40140 buf_male_month = c*10 + No
40150 'if (buf_month = 1) then
40160 'buf_Month$ = str$(buf_month)
40170 'endif
40180 buf_male_Month$ = str$(buf_male_month)
40190 buf_Jyoushi_Born_Day(1) = buf_male_month
40200 locate 0,3
40210 print "                                           "
40220 locate 1,3
40230 color Rgb(255,255,255)
40240 print "男性の生まれた月(1月~12月):" + buf_male_Month$
40250 goto Danjyo_Aisyou_Input_Male_Born_Month2:
40260 endif
40270 case 2:
40280 '==================================
40290 '何もしない
40300 'coun = 2
40310 '==================================
40320 'c= val(buf_Month$)
40330 'buf_month = c*10 + No
40340 'buf_Month$ = str$(buf_month)
40350 'locate 2,3
40360 'print "上司の生まれた月(1月～12月):";buf_Month$
40370 'goto Jyoushi_Input_Born_Month2:
40380 'case 3:
40390 'count=4
40400 'b=val(buf_month$)
40410 'buf_month=c*10+No
40420 'buf_Month$=str$(buf_month)
40430 'locate 2,3
40440 'print "上司の生まれた月(1月～12月):";buf_Month$
40450 'buf_month=val(buf_Month$)
40460 'year=val(buf_year$)
40470 if (No=-1) then
40480 No=0
40490 goto Danjyo_Aisyou_Input_Male_Born_Day:
40500 else
40510 goto Danjyo_Aisyou_Input_Male_Born_Day2:
40520 endif
40530 'case 4:
40540 'bufyear=buf_year
40550 'if (No=-1) then
40560 'buf_month = val(buf_Month$)
40570 'month = buf_month
40580 'sp_on 14,0
40590 'goto Input_Born_Day:
40600 'else
40610 'goto Input_Born_Month2:
40620 'endif
40630 end select
40640 endif
40650 '左の丸ボタン　キャンセル
40660 if (bg2=2) then
40670 select case count2
40680 case 0:
40690 if (No = -1) then
40700 buf_male_month=0:buf_male_Month$="**"
40710 count=0
40720 'goto rewrite2:
40730 else
40740 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
40750 buf_male_month = 0:buf_male_Month$ = "**"
40760 locate 0,3
40770 color rgb(255,255,255)
40780 print "                                       "
40790 goto rewrite2:
40800 if (No>12) then
40810 ui_msg"値が範囲外です。"
40820 goto rewrite2:
40830 endif
40840 endif
40850 endif
40860 rewrite2:
40870 locate 2,3
40880 color rgb(255,255,255)
40890 print "                                      "
40900 locate 2,3
40910 print "男性の生まれた月(1月~12月):"+buf_male_Month$
40920 goto Danjyo_Aisyou_Input_Male_Born_Month2:
40930 end select
40940 'endif
40950 endif
40960 end
40970 '-------生まれた月　男性 ここまで-------------
40980 '-------生まれた日　男性 ここから-------------
40990 Danjyo_Aisyou_Input_Male_Born_Day:
41000 cls 3:play "":count=0:count2=0
41010 'No=-1:Okのとき
41020 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
41030 for i=0 to 1
41040 buf_day(i)=0
41050 next i
41060 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41070 gload Gazo$ + "Screen1.png",0,0,0
41080 gload Gazo$ + "downscreen.png",0,0,800
41090 'Init"kb:4"
41100 '音声ファイル再生 2023.06.07
41110 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
41120 font 48
41130 locate 0,1
41140 '文字色：黒　 color rgb(0,0,0)
41150 '文字色:白
41160 color rgb(255,255,255)
41170 print "男性の生まれた日を入れて下さい" + chr$(13)
41180 '文字色:白
41190 color rgb(255,255,255)
41200 locate 1,3
41210 '文字色:白
41220 print "男性の生まれた日(1月~31月):" + buf_Day$
41230 color rgb(255,255,255)
41240 'locate 4,6:print ":7"
41250 'locate 9,6:print ":8"
41260 'locate 12,6:print ":9"
41270 locate 4,6
41280 '文字色:赤
41290 print ":7  :8  :9" + chr$(13)
41300 color rgb(255,255,255)
41310 locate 4,8
41320 print ":4  :5  :6" + chr$(13)
41330 color rgb(255,255,255)
41340 locate 4,10
41350 print ":1  :2  :3" + chr$(13)
41360 locate 4,12
41370 print "    :0"
41380 locate 12,12
41390 color rgb(0,0,255)
41400 print ":Ok"
41410 sp_on 4,0: sp_on 5,0:sp_on 6,0
41420 sp_on 7,0:sp_on 8,0:sp_on 9,0
41430 sp_on 10,0:sp_on 11,0:sp_on 12,0
41440 sp_on 13,0:sp_on 14,1
41450 '-------------------------------------------------
41460 Danjyo_Aisyou_Input_Male_Born_Day2:
41470 key$="":bg=0:y=0:y2=0:bg2=0
41480 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
41490 key$ = inkey$
41500 bg = strig(1)
41510 y = stick(1)
41520 y2 = stick(0)
41530 bg2 = strig(0)
41540 pause 200
41550 wend
41560 '十字キー　ここから
41570 '上の矢印　または、十字キー上
41580 if ((y = -1) or (key$ = chr$(30))) then
41590 select case No
41600 'No=-1:okのとき:初期の状態
41610 '0kボタンから３に移動
41620 '上に行く 処理
41630 case -1:
41640 No=3:sp_on 12,1:sp_on 14,0
41650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41660 '選択肢:3
41670 '3ボタンから 6に移動
41680 case 3:
41690 No=6:sp_on 12,0:sp_on 11,1
41700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41710 '6ボタンから ９に移動
41720 case 6:
41730 No=9:sp_on 10,1:sp_on 11,0
41740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41750 '6ボタンから ９に移動　ここまで
41760 '9で上を押して何もしない
41770 case 9:
41780 '何もしない
41790 No=9
41800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41810 '9で上を押しても何もしない　ここまで
41820 '上　 0ボタンから2ボタン
41830 'sp_on 6,1:1
41840 'sp_on 8,1:5
41850 'sp_on 7,1:7
41860 case 0:
41870 No=2:sp_on 13,0:sp_on 9,1:
41880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41890 '上  0ボタンから2ボタン　ここまで
41900 '2から５になる 上
41910 case 2:
41920 No=5:sp_on 8,1:sp_on 9,0:
41930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41940 case 5:
41950 No=8:sp_on 7,1:sp_on 8,0
41960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41970 case 8:
41980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
41990 case 1:
42000 No=4:sp_on 5,1:sp_on 6,0
42010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42020 case 4:
42030 No=7:sp_on 4,1:sp_on 5,0
42040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42050 case 7:
42060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42070 end select
42080 endif
42090 '左３　ここまで
42100 '下の矢印
42110 '中央 2
42120 if ((y=1) or (key$ = chr$(31))) then
42130 select case No
42140 '9から６に下げる
42150 case 9:
42160 No=6:sp_on 11,1:sp_on 10,0
42170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42180 '6から３に下げる
42190 case 6:
42200 No=3:sp_on 12,1:sp_on 11,0
42210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42220 '3から０ｋに変える
42230 case 3:
42240 No=-1:sp_on 14,1:sp_on 12,0
42250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42260 'Okから下のボタンを押しても何もしない
42270 case -1:
42280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42290 case 8:
42300 No=5:sp_on 8,1:sp_on 7,0
42310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42320 case 5:
42330 No=2:sp_on 9,1:sp_on 8,0
42340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42350 case 2:
42360 No=0:sp_on 13,1:sp_on 9,0
42370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42380 case 0:
42390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42400 case 7:
42410 No=4:sp_on 5,1:sp_on 4,0
42420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42430 case 4:
42440 No=1:sp_on 6,1:sp_on 5,0
42450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42460 case 1:
42470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42480 end select
42490 endif
42500 '左へボタン 十字キー　左　or 　カーソル左
42510 if ((y2 = -1) or (key$ = chr$(29))) then
42520 select case No
42530 'Ok ボタン  Okから　左　０に行く
42540 case -1:
42550 No=0:sp_on 13,1:sp_on 14,0
42560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42570 '0 ボタン  左　何もしない
42580 case 0:
42590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42600 case 3:
42610 No=2:sp_on 9,1:sp_on 12,0:
42620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42630 case 2:
42640 No=1:sp_on 6,1:sp_on 9,0:
42650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42660 case 1:
42670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42680 case 6:
42690 No=5:sp_on 8,1:sp_on 11,0
42700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42710 case 5:
42720 No=4:sp_on 5,1:sp_on 8,0
42730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42740 case 4:
42750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42760 case 9:
42770 No=8:sp_on 7,1:sp_on 10,0
42780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42790 case 8:
42800 No=7:sp_on 4,1:sp_on 7,0
42810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42820 case 7:
42830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42840 end select
42850 endif
42860 '右  十字キー　右　or カーソル　右
42870 if ((y2 = 1) or (key$ = chr$(28))) then
42880 select case No
42890 '0ボタンからokボタン右に移動
42900 case 0:
42910 No=-1:sp_on 14,1:sp_on 13,0
42920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42930 '0ボタンからokボタン 右に移動　ここまで
42940 'OKボタンで右を押して何もしない
42950 case -1:
42960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
42970 case 1:
42980 No=2:sp_on 9,1:sp_on 6,0
42990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43000 case 2:
43010 No=3:sp_on 12,1:sp_on 9,0
43020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43030 case 3:
43040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43050 case 4:
43060 No=5:sp_on 8,1:sp_on 5,0
43070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43080 case 5:
43090 No=6:sp_on 11,1:sp_on 8,0
43100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43110 case 7:
43120 No=8:sp_on 7,1:sp_on 4,0
43130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43140 case 8:
43150 No=9:sp_on 10,1:sp_on 7,0
43160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43170 case 9:
43180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43190 case 6:
43200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
43210 end select
43220 'Okから右ボタンを押して何もしない ここまで
43230 endif
43240 '十字キー　ここまで
43250 '右の丸ボタン + Enter key 決定キー
43260 if ((bg=2) or (key$=chr$(13))) then
43270 select case count
43280 case 0:
43290 if (No=-1) then No=0
43300 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
43310 if (buf_male_day > 1 and buf_male_day < 10)  then
43320 buf_male_Day$ = str$(buf_male_day)
43330 'buf_month=No
43340 endif
43350 if (buf_male_day = 1)  then
43360 buf_male_Day$ = str$(buf_male_day) + "*"
43370 'c=buf_month
43380 endif
43390 locate 1,3
43400 print "                                     "
43410 color RGB(255,255,255)
43420 locate 1,3
43430 print "男性の生まれた日(1月~31月):" + buf_male_Day$
43440 goto Danjyo_Aisyou_Input_Male_Born_Day2:
43450 case 1:
43460 count = 2:
43470 'c = val(buf_Month$)
43480 if (No = -1) then
43490 'count=0
43500 No=0
43510 day=buf_male_Day
43520 buf_male_Day=val(buf_male_Day$)
43530 day=buf_male_Day
43540 buf_Jyoushi_Born_Day(2)=day
43550 '生まれた日に飛ぶ
43560 goto Danjyo_Aisyou_Input_Male_Born_Day:
43570 else
43580 buf_male_Day = c*10 + No
43590 'if (buf_month = 1) then
43600 'buf_Month$ = str$(buf_month)
43610 'endif
43620 buf_male_Day$ = str$(buf_male_Day)
43630 buf_male_Born_Day(2) = buf_male_Day:
43640 locate 0,3
43650 print "                                           "
43660 locate 1,3
43670 color Rgb(255,255,255)
43680 print "男性の生まれた月(1月~12月):" + buf_male_Day$
43690 goto Danjyo_Aisyou_Input_Male_Born_Day2:
43700 endif
43710 case 2:
43720 '==================================
43730 '何もしない
43740 'coun = 2
43750 '==================================
43760 'c= val(buf_Month$)
43770 'buf_month = c*10 + No
43780 'buf_Month$ = str$(buf_month)
43790 'locate 2,3
43800 'print "上司の生まれた月(1月～12月):";buf_Month$
43810 'goto Jyoushi_Input_Born_Month2:
43820 'case 3:
43830 'count=4
43840 'b=val(buf_month$)
43850 'buf_month=c*10+No
43860 'buf_Month$=str$(buf_month)
43870 'locate 2,3
43880 'print "上司の生まれた月(1月～12月):";buf_Month$
43890 'buf_month=val(buf_Month$)
43900 'year=val(buf_year$)
43910 if (No=-1) then
43920 No=0
43930 goto Danjyo_Aisyou_Input_Male_Born_Day:
43940 else
43950 goto Danjyo_Aisyou_Input_Male_Born_Day2:
43960 endif
43970 'case 4:
43980 'bufyear=buf_year
43990 'if (No=-1) then
44000 'buf_month = val(buf_Month$)
44010 'month = buf_month
44020 'sp_on 14,0
44030 'goto Input_Born_Day:
44040 'else
44050 'goto Input_Born_Month2:
44060 'endif
44070 end select
44080 endif
44090 '左の丸ボタン　キャンセル
44100 if (bg2=2) then
44110 select case count2
44120 case 0:
44130 if (No = -1) then
44140 buf_male_day=0:buf_male_Day$="**"
44150 count=0
44160 'goto rewrite2:
44170 else
44180 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
44190 buf_male_day = 0:buf_male_Day$ = "**"
44200 locate 0,3
44210 color rgb(255,255,255)
44220 print "                                       "
44230 goto rewrite2:
44240 if (No>12) then
44250 ui_msg"値が範囲外です。"
44260 goto rewrite2:
44270 endif
44280 endif
44290 endif
44300 rewrite2:
44310 locate 2,3
44320 color rgb(255,255,255)
44330 print "                                      "
44340 locate 2,3
44350 print "男性の生まれた日(1月~31月):"+buf_male_Day$
44360 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44370 end select
44380 'endif
44390 endif
44400 end
44410 '-------生まれた日　女性　ここまで-------------
44420 '1-1.女性の名前を入力
44430 Danjyo_Aisyou_Input_Name_female:
44440 No=0:color RGB(255,255,255)
44450 '入力:キーボード
44460 cls 3:init "kb:2"
44470 gload Gazo$ + "Screen1.png",0,0,0
44480 gload Gazo$ + "downscreen.png",0,0,800
44490 play "":color rgb(255,0,0):female_name$ = ""
44500 locate 0,1
44510 print "女性の相性" + chr$(13) + chr$(13)
44520 color rgb(255,255,255):
44530 locate 0,3
44540 print "女性の相性を求めます。男性の名前を" + chr$(13)
44550 print "入れてください" + chr$(13)
44560 locate 0,15:color rgb(0,0,0)
44570 Input "女性の名前:",female_name$
44580 '-------------------------------------------
44590 '-------生まれた年代　女性 ここから-------------
44600 Danjyo_Aisyou_Input_feMale_Born_Year:
44610 cls 3:play "":count=0:count2=0
44620 'No=-1:Okのとき
44630 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
44640 for i=0 to 1
44650 buf_day(i)=0
44660 next i
44670 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
44680 gload Gazo$ + "Screen1.png",0,0,0
44690 gload Gazo$ + "downscreen.png",0,0,800
44700 'Init"kb:4"
44710 '音声ファイル再生 2023.06.07
44720 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
44730 font 48
44740 locate 0,1
44750 '文字色：黒　 color rgb(0,0,0)
44760 '文字色:白
44770 color rgb(255,255,255)
44780 print "女性の生まれた年代を入れて下さい" + chr$(13)
44790 '文字色:白
44800 color rgb(255,255,255)
44810 locate 1,3
44820 '文字色:白
44830 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
44840 color rgb(255,255,255)
44850 'locate 4,6:print ":7"
44860 'locate 9,6:print ":8"
44870 'locate 12,6:print ":9"
44880 locate 4,6
44890 '文字色:赤
44900 print ":7  :8  :9" + chr$(13)
44910 color rgb(255,255,255)
44920 locate 4,8
44930 print ":4  :5  :6" + chr$(13)
44940 color rgb(255,255,255)
44950 locate 4,10
44960 print ":1  :2  :3" + chr$(13)
44970 locate 4,12
44980 print "    :0"
44990 locate 12,12
45000 color rgb(0,0,255)
45010 print ":Ok"
45020 sp_on 4,0: sp_on 5,0:sp_on 6,0
45030 sp_on 7,0:sp_on 8,0:sp_on 9,0
45040 sp_on 10,0:sp_on 11,0:sp_on 12,0
45050 sp_on 13,0:sp_on 14,1
45060 '---------------------------------------------
45070 Danjyo_Aisyou_Input_feMale_Born_Year2:
45080 key$="":bg=0:y=0:y2=0:bg2=0:
45090 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45100 key$ = inkey$
45110 bg = strig(1)
45120 y = stick(1)
45130 y2 = stick(0)
45140 bg2=strig(0)
45150 pause 200
45160 wend
45170 '十字キー　ここから
45180 '上の矢印　または、十字キー上
45190 if ((y = -1) or (key$ = chr$(30))) then
45200 select case No
45210 'No=-1:okのとき:初期の状態
45220 '0kボタンから３に移動
45230 '上に行く 処理
45240 case -1:
45250 No=3:sp_on 12,1:sp_on 14,0
45260 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
45270 '選択肢:3
45280 '3ボタンから 6に移動
45290 case 3:
45300 No=6:sp_on 12,0:sp_on 11,1
45310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45320 '6ボタンから ９に移動
45330 case 6:
45340 No=9:sp_on 10,1:sp_on 11,0
45350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45360 '6ボタンから ９に移動　ここまで
45370 '9で上を押して何もしない
45380 case 9:
45390 '何もしない
45400 No=9
45410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45420 '9で上を押しても何もしない　ここまで
45430 '上　 0ボタンから2ボタン
45440 'sp_on 6,1:1
45450 'sp_on 8,1:5
45460 'sp_on 7,1:7
45470 case 0:
45480 No=2:sp_on 13,0:sp_on 9,1:
45490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45500 '上  0ボタンから2ボタン　ここまで
45510 '2から５になる 上
45520 case 2:
45530 No=5:sp_on 8,1:sp_on 9,0:
45540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45550 case 5:
45560 No=8:sp_on 7,1:sp_on 8,0
45570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45580 case 8:
45590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45600 case 1:
45610 No=4:sp_on 5,1:sp_on 6,0
45620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45630 case 4:
45640 No=7:sp_on 4,1:sp_on 5,0
45650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45660 case 7:
45670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45680 end select
45690 endif
45700 '左３　ここまで
45710 '下の矢印
45720 '中央 2
45730 if ((y=1) or (key$ = chr$(31))) then
45740 select case No
45750 '9から６に下げる
45760 case 9:
45770 No=6:sp_on 11,1:sp_on 10,0
45780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45790 '6から３に下げる
45800 case 6:
45810 No=3:sp_on 12,1:sp_on 11,0
45820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45830 '3から０ｋに変える
45840 case 3:
45850 No=-1:sp_on 14,1:sp_on 12,0
45860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45870 'Okから下のボタンを押しても何もしない
45880 case -1:
45890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45900 case 8:
45910 No=5:sp_on 8,1:sp_on 7,0
45920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45930 case 5:
45940 No=2:sp_on 9,1:sp_on 8,0
45950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45960 case 2:
45970 No=0:sp_on 13,1:sp_on 9,0
45980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
45990 case 0:
46000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46010 case 7:
46020 No=4:sp_on 5,1:sp_on 4,0
46030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46040 case 4:
46050 No=1:sp_on 6,1:sp_on 5,0
46060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46070 case 1:
46080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46090 end select
46100 endif
46110 '左へボタン 十字キー　左　or 　カーソル左
46120 if ((y2 = -1) or (key$ = chr$(29))) then
46130 select case No
46140 'Ok ボタン  Okから　左　０に行く
46150 case -1:
46160 No=0:sp_on 13,1:sp_on 14,0
46170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46180 '0 ボタン  左　何もしない
46190 case 0:
46200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46210 case 3:
46220 No=2:sp_on 9,1:sp_on 12,0:
46230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46240 case 2:
46250 No=1:sp_on 6,1:sp_on 9,0:
46260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46270 case 1:
46280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46290 case 6:
46300 No=5:sp_on 8,1:sp_on 11,0
46310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46320 case 5:
46330 No=4:sp_on 5,1:sp_on 8,0
46340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46350 case 4:
46360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46370 case 9:
46380 No=8:sp_on 7,1:sp_on 10,0
46390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46400 case 8:
46410 No=7:sp_on 4,1:sp_on 7,0
46420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46430 case 7:
46440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46450 end select
46460 endif
46470 '右  十字キー　右　or カーソル　右
46480 if ((y2 = 1) or (key$ = chr$(28))) then
46490 select case No
46500 '0ボタンからokボタン右に移動
46510 case 0:
46520 No=-1:sp_on 14,1:sp_on 13,0
46530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46540 '0ボタンからokボタン 右に移動　ここまで
46550 'OKボタンで右を押して何もしない
46560 case -1:
46570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46580 case 1:
46590 No=2:sp_on 9,1:sp_on 6,0
46600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46610 case 2:
46620 No=3:sp_on 12,1:sp_on 9,0
46630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46640 case 3:
46650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46660 case 4:
46670 No=5:sp_on 8,1:sp_on 5,0
46680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46690 case 5:
46700 No=6:sp_on 11,1:sp_on 8,0
46710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46720 case 7:
46730 No=8:sp_on 7,1:sp_on 4,0
46740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46750 case 8:
46760 No=9:sp_on 10,1:sp_on 7,0
46770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46780 case 9:
46790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46800 case 6:
46810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46820 end select
46830 'Okから右ボタンを押して何もしない ここまで
46840 endif
46850 '十字キー　ここまで
46860 '==============================
46870 'ここから
46880 '==============================
46890 if ((bg = 2) or (key$ = chr$(13))) then
46900 select case count
46910 case 0:
46920 count = 1
46930 if (No = -1) then
46940 count = 0:No=0
46950 buf_feMale_Born_Day(0) = No
46960 'Okボタンを押したとき
46970 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
46980 else
46990 'Okボタン以外が押されたとき
47000 if (No >= 1 and No <= 2) then
47010 buf_female_year$="":buf_female_year$ = str$(No) + "***"
47020 buf_female_year = No:a= No
47030 buf_Jyoushi_Born_Day(0) = No
47040 locate 1,3
47050 color rgb(255,255,255)
47060 print "女性の生まれた年代(西暦4桁):";buf_female_year$
47070 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47080 else
47090 count=0
47100 ui_msg"数字が範囲外になります。"
47110 buf_female_year$="":buf_female_year=0
47120 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47130 endif
47140 endif
47150 case 1:
47160 count = 2
47170 if (No = -1) then
47180 count = 1
47190 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47200 else
47210 buf_female_year = a * 10 + No
47220 b=buf_female_year
47230 buf_year$ = str$(buf_female_year) + "**"
47240 buf_Jyoushi_Born_Day(0)=buf_female_year
47250 locate 1,3
47260 color rgb(255,255,255)
47270 print "                                                                "
47280 locate 1,3
47290 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
47300 'if (No = -1) then
47310 'count=1
47320 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47330 endif
47340 case 2:
47350 count=3
47360 if (No=-1) then
47370 count =2
47380 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47390 else
47400 buf_female_year = b * 10 + No
47410 c=buf_female_year
47420 buf_female_year$ = str$(buf_female_year) + "*"
47430 buf_Jyoushi_Born_Day(0) = buf_female_year
47440 locate 1,3
47450 color rgb(255,255,255)
47460 print "                                        "
47470 locate 1,3
47480 print "女性の生まれた年代(西暦4桁):";buf_female_year$
47490 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47500 endif
47510 case 3:
47520 count=4
47530 if (No = -1) then
47540 No=0
47550 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47560 else
47570 buf_female_year = c * 10 + No
47580 buf_female_year$ = str$(buf_female_year)
47590 buf_Jyoushi_Born_Day(0) = buf_female_year
47600 locate 1,3
47610 color RGB(255,255,255)
47620 print "                                      "
47630 locate 1,3
47640 print "女性の生まれた年代(西暦4桁):";buf_female_year$
47650 buf_female_year=val(buf_female_year$)
47660 'year=val(buf_year$)
47670 'if (No=-1) then
47680 'goto Input_Born_Month:
47690 'else
47700 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47710 endif
47720 case 4:
47730 'bufyear=buf_year
47740 if (No=-1) then
47750 buf_female_year = val(buf_female_year$)
47760 buf_Jyoushi_Born_Day(0)=buf_female_year
47770 sp_on 14,0:No=0
47780 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47790 else
47800 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47810 endif
47820 end select
47830 endif
47840 '===========================
47850 'ここまでを部下のところにコピーする.
47860 '===========================
47870 if (bg2 = 2) then
47880 select case count2
47890 case 0:
47900 if (No = -1) then
47910 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
47920 count=0
47930 locate 1,3
47940 color rgb(255,255,255)
47950 print "                                      "
47960 locate 1,3
47970 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
47980 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
47990 else
48000 '(buf_year=0) then
48010 buf_female_year=0:buf_year$="****"
48020 locate 1,3
48030 print "                                       "
48040 locate 1,3
48050 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
48060 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
48070 'endif
48080 endif
48090 end select
48100 endif
48110 '-------生まれた年代　女性 ここまで-------------
48120 '-------生まれた月　女性 ここまで--------------
48130 Danjyo_Aisyou_Input_feMale_Born_Month:
48140 cls 3:play "":count=0:count2=0
48150 'No=-1:Okのとき
48160 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
48170 for i=0 to 1
48180 buf_month(i)=0
48190 next i
48200 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
48210 gload Gazo$ + "Screen1.png",0,0,0
48220 gload Gazo$ + "downscreen.png",0,0,800
48230 'Init"kb:4"
48240 '音声ファイル再生 2023.06.07
48250 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
48260 font 48
48270 locate 0,1
48280 '文字色：黒　 color rgb(0,0,0)
48290 '文字色:白
48300 color rgb(255,255,255)
48310 print "女性の生まれた月を入れて下さい" + chr$(13)
48320 '文字色:白
48330 color rgb(255,255,255)
48340 locate 1,3
48350 '文字色:白
48360 print "女性の生まれた月(1月~12月):"+buf_female_Month$
48370 color rgb(255,255,255)
48380 'locate 4,6:print ":7"
48390 'locate 9,6:print ":8"
48400 'locate 12,6:print ":9"
48410 locate 4,6
48420 '文字色:赤
48430 print ":7  :8  :9" + chr$(13)
48440 color rgb(255,255,255)
48450 locate 4,8
48460 print ":4  :5  :6" + chr$(13)
48470 color rgb(255,255,255)
48480 locate 4,10
48490 print ":1  :2  :3" + chr$(13)
48500 locate 4,12
48510 print "    :0"
48520 locate 12,12
48530 color rgb(0,0,255)
48540 print ":Ok"
48550 sp_on 4,0: sp_on 5,0:sp_on 6,0
48560 sp_on 7,0:sp_on 8,0:sp_on 9,0
48570 sp_on 10,0:sp_on 11,0:sp_on 12,0
48580 sp_on 13,0:sp_on 14,1
48590 '---------------------------------------------
48600 Danjyo_Aisyou_Input_feMale_Born_Month2:
48610 key$="":bg=0:y=0:y2=0:bg2=0
48620 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
48630 key$ = inkey$
48640 bg = strig(1)
48650 y = stick(1)
48660 y2 = stick(0)
48670 bg2 = strig(0)
48680 pause 200
48690 wend
48700 '十字キー　ここから
48710 '上の矢印　または、十字キー上
48720 if ((y = -1) or (key$ = chr$(30))) then
48730 select case No
48740 'No=-1:okのとき:初期の状態
48750 '0kボタンから３に移動
48760 '上に行く 処理
48770 case -1:
48780 No=3:sp_on 12,1:sp_on 14,0
48790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48800 '選択肢:3
48810 '3ボタンから 6に移動
48820 case 3:
48830 No=6:sp_on 12,0:sp_on 11,1
48840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48850 '6ボタンから ９に移動
48860 case 6:
48870 No=9:sp_on 10,1:sp_on 11,0
48880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48890 '6ボタンから ９に移動　ここまで
48900 '9で上を押して何もしない
48910 case 9:
48920 '何もしない
48930 No=9
48940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
48950 '9で上を押しても何もしない　ここまで
48960 '上　 0ボタンから2ボタン
48970 'sp_on 6,1:1
48980 'sp_on 8,1:5
48990 'sp_on 7,1:7
49000 case 0:
49010 No=2:sp_on 13,0:sp_on 9,1:
49020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49030 '上  0ボタンから2ボタン　ここまで
49040 '2から５になる 上
49050 case 2:
49060 No=5:sp_on 8,1:sp_on 9,0:
49070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49080 case 5:
49090 No=8:sp_on 7,1:sp_on 8,0
49100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49110 case 8:
49120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49130 case 1:
49140 No=4:sp_on 5,1:sp_on 6,0
49150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49160 case 4:
49170 No=7:sp_on 4,1:sp_on 5,0
49180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49190 case 7:
49200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49210 end select
49220 endif
49230 '左３　ここまで
49240 '下の矢印
49250 '中央 2
49260 if ((y=1) or (key$ = chr$(31))) then
49270 select case No
49280 '9から６に下げる
49290 case 9:
49300 No=6:sp_on 11,1:sp_on 10,0
49310 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
49320 '6から３に下げる
49330 case 6:
49340 No=3:sp_on 12,1:sp_on 11,0
49350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49360 '3から０ｋに変える
49370 case 3:
49380 No=-1:sp_on 14,1:sp_on 12,0
49390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49400 'Okから下のボタンを押しても何もしない
49410 case -1:
49420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49430 case 8:
49440 No=5:sp_on 8,1:sp_on 7,0
49450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49460 case 5:
49470 No=2:sp_on 9,1:sp_on 8,0
49480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49490 case 2:
49500 No=0:sp_on 13,1:sp_on 9,0
49510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49520 case 0:
49530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49540 case 7:
49550 No=4:sp_on 5,1:sp_on 4,0
49560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49570 case 4:
49580 No=1:sp_on 6,1:sp_on 5,0
49590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49600 case 1:
49610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49620 end select
49630 endif
49640 '左へボタン 十字キー　左　or 　カーソル左
49650 if ((y2 = -1) or (key$ = chr$(29))) then
49660 select case No
49670 'Ok ボタン  Okから　左　０に行く
49680 case -1:
49690 No=0:sp_on 13,1:sp_on 14,0
49700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49710 '0 ボタン  左　何もしない
49720 case 0:
49730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49740 case 3:
49750 No=2:sp_on 9,1:sp_on 12,0:
49760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49770 case 2:
49780 No=1:sp_on 6,1:sp_on 9,0:
49790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49800 case 1:
49810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49820 case 6:
49830 No=5:sp_on 8,1:sp_on 11,0
49840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49850 case 5:
49860 No=4:sp_on 5,1:sp_on 8,0
49870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49880 case 4:
49890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49900 case 9:
49910 No=8:sp_on 7,1:sp_on 10,0
49920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49930 case 8:
49940 No=7:sp_on 4,1:sp_on 7,0
49950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49960 case 7:
49970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
49980 end select
49990 endif
50000 '右  十字キー　右　or カーソル　右
50010 if ((y2 = 1) or (key$ = chr$(28))) then
50020 select case No
50030 '0ボタンからokボタン右に移動
50040 case 0:
50050 No=-1:sp_on 14,1:sp_on 13,0
50060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50070 '0ボタンからokボタン 右に移動　ここまで
50080 'OKボタンで右を押して何もしない
50090 case -1:
50100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50110 case 1:
50120 No=2:sp_on 9,1:sp_on 6,0
50130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50140 case 2:
50150 No=3:sp_on 12,1:sp_on 9,0
50160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50170 case 3:
50180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50190 case 4:
50200 No=5:sp_on 8,1:sp_on 5,0
50210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50220 case 5:
50230 No=6:sp_on 11,1:sp_on 8,0
50240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50250 case 7:
50260 No=8:sp_on 7,1:sp_on 4,0
50270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50280 case 8:
50290 No=9:sp_on 10,1:sp_on 7,0
50300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50310 case 9:
50320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50330 case 6:
50340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50350 end select
50360 'Okから右ボタンを押して何もしない ここまで
50370 endif
50380 '十字キー　ここまで
50390 '右の丸ボタン + Enter key 決定キー
50400 if ((bg=2) or (key$=chr$(13))) then
50410 select case count
50420 case 0:
50430 if (No=-1) then No=0
50440 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
50450 if (buf_female_month > 1 and buf_female_month < 10)  then
50460 buf_female_Month$ = str$(buf_female_month)
50470 'buf_month=No
50480 endif
50490 if (buf_female_month = 1)  then
50500 buf_female_Month$ = str$(buf_female_month) + "*"
50510 'c=buf_month
50520 endif
50530 locate 1,3
50540 print "                                     "
50550 color RGB(255,255,255)
50560 locate 1,3
50570 print "女性の生まれた月(1月~12月):" + buf_female_Month$
50580 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50590 case 1:
50600 count = 2:
50610 'c = val(buf_Month$)
50620 if (No = -1) then
50630 'count=0
50640 No=0
50650 month=buf_female_month
50660 buf_female_month=val(buf_female_Month$)
50670 month=buf_female_month
50680 buf_Jyoushi_Born_Day(1)=month
50690 '生まれた日に飛ぶ
50700 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50710 else
50720 buf_female_month = c*10 + No
50730 'if (buf_month = 1) then
50740 'buf_Month$ = str$(buf_month)
50750 'endif
50760 buf_female_Month$ = str$(buf_female_month)
50770 buf_Jyoushi_Born_Day(1) = buf_female_month
50780 locate 0,3
50790 print "                                           "
50800 locate 1,3
50810 color Rgb(255,255,255)
50820 print "女性の生まれた月(1月~12月):" + buf_female_Month$
50830 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
50840 endif
50850 case 2:
50860 '==================================
50870 '何もしない
50880 'coun = 2
50890 '==================================
50900 'c= val(buf_Month$)
50910 'buf_month = c*10 + No
50920 'buf_Month$ = str$(buf_month)
50930 'locate 2,3
50940 'print "上司の生まれた月(1月～12月):";buf_Month$
50950 'goto Jyoushi_Input_Born_Month2:
50960 'case 3:
50970 'count=4
50980 'b=val(buf_month$)
50990 'buf_month=c*10+No
51000 'buf_Month$=str$(buf_month)
51010 'locate 2,3
51020 'print "上司の生まれた月(1月～12月):";buf_Month$
51030 'buf_month=val(buf_Month$)
51040 'year=val(buf_year$)
51050 if (No=-1) then
51060 No=0
51070 goto Danjyo_Aisyou_Input_Male_Born_Day:
51080 else
51090 goto Danjyo_Aisyou_Input_Male_Born_Day2:
51100 endif
51110 'case 4:
51120 'bufyear=buf_year
51130 'if (No=-1) then
51140 'buf_month = val(buf_Month$)
51150 'month = buf_month
51160 'sp_on 14,0
51170 'goto Input_Born_Day:
51180 'else
51190 'goto Input_Born_Month2:
51200 'endif
51210 end select
51220 endif
51230 '左の丸ボタン　キャンセル
51240 if (bg2=2) then
51250 select case count2
51260 case 0:
51270 if (No = -1) then
51280 buf_female_month=0:buf_female_Month$="**"
51290 count=0
51300 'goto rewrite2:
51310 else
51320 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
51330 buf_female_month = 0:buf_female_Month$ = "**"
51340 locate 0,3
51350 color rgb(255,255,255)
51360 print "                                       "
51370 goto rewrite2:
51380 if (No>12) then
51390 ui_msg"値が範囲外です。"
51400 goto rewrite2:
51410 endif
51420 endif
51430 endif
51440 rewrite2:
51450 locate 2,3
51460 color rgb(255,255,255)
51470 print "                                      "
51480 locate 2,3
51490 print "女性の生まれた月(1月~12月):"+buf_female_Month$
51500 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
51510 end select
51520 'endif
51530 endif
51540 end
51550 '-------生まれた月　女性 ここまで-------------
51560 '-------生まれた日　女性 ここまで-------------
51570 Danjyo_Aisyou_Input_feMale_Born_Day:
51580 cls 3:play "":count=0:count2=0
51590 'No=-1:Okのとき
51600 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
51610 for i=0 to 1
51620 buf_female_day(i)=0
51630 next i
51640 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
51650 gload Gazo$ + "Screen1.png",0,0,0
51660 gload Gazo$ + "downscreen.png",0,0,800
51670 'Init"kb:4"
51680 '音声ファイル再生 2023.06.07
51690 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
51700 font 48
51710 locate 0,1
51720 '文字色：黒　 color rgb(0,0,0)
51730 '文字色:白
51740 color rgb(255,255,255)
51750 print "女性の生まれた日を入れて下さい" + chr$(13)
51760 '文字色:白
51770 color rgb(255,255,255)
51780 locate 1,3
51790 '文字色:白
51800 print "女性の生まれた日(1月~31月):" + buf_female_Day$
51810 color rgb(255,255,255)
51820 'locate 4,6:print ":7"
51830 'locate 9,6:print ":8"
51840 'locate 12,6:print ":9"
51850 locate 4,6
51860 '文字色:赤
51870 print ":7  :8  :9" + chr$(13)
51880 color rgb(255,255,255)
51890 locate 4,8
51900 print ":4  :5  :6" + chr$(13)
51910 color rgb(255,255,255)
51920 locate 4,10
51930 print ":1  :2  :3" + chr$(13)
51940 locate 4,12
51950 print "    :0"
51960 locate 12,12
51970 color rgb(0,0,255)
51980 print ":Ok"
51990 sp_on 4,0: sp_on 5,0:sp_on 6,0
52000 sp_on 7,0:sp_on 8,0:sp_on 9,0
52010 sp_on 10,0:sp_on 11,0:sp_on 12,0
52020 sp_on 13,0:sp_on 14,1
52030 '---------------------------------------------
52040 Danjyo_Aisyou_Input_feMale_Born_Day2:
52050 key$="":bg=0:y=0:y2=0:bg2=0
52060 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
52070 key$ = inkey$
52080 bg = strig(1)
52090 y = stick(1)
52100 y2 = stick(0)
52110 bg2 = strig(0)
52120 pause 200
52130 wend
52140 '十字キー　ここから
52150 '上の矢印　または、十字キー上
52160 if ((y = -1) or (key$ = chr$(30))) then
52170 select case No
52180 'No=-1:okのとき:初期の状態
52190 '0kボタンから３に移動
52200 '上に行く 処理
52210 case -1:
52220 No=3:sp_on 12,1:sp_on 14,0
52230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52240 '選択肢:3
52250 '3ボタンから 6に移動
52260 case 3:
52270 No=6:sp_on 12,0:sp_on 11,1
52280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52290 '6ボタンから ９に移動
52300 case 6:
52310 No=9:sp_on 10,1:sp_on 11,0
52320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52330 '6ボタンから ９に移動　ここまで
52340 '9で上を押して何もしない
52350 case 9:
52360 '何もしない
52370 No=9
52380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52390 '9で上を押しても何もしない　ここまで
52400 '上　 0ボタンから2ボタン
52410 'sp_on 6,1:1
52420 'sp_on 8,1:5
52430 'sp_on 7,1:7
52440 case 0:
52450 No=2:sp_on 13,0:sp_on 9,1:
52460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52470 '上  0ボタンから2ボタン　ここまで
52480 '2から５になる 上
52490 case 2:
52500 No=5:sp_on 8,1:sp_on 9,0:
52510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52520 case 5:
52530 No=8:sp_on 7,1:sp_on 8,0
52540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52550 case 8:
52560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52570 case 1:
52580 No=4:sp_on 5,1:sp_on 6,0
52590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52600 case 4:
52610 No=7:sp_on 4,1:sp_on 5,0
52620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52630 case 7:
52640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52650 end select
52660 endif
52670 '左３　ここまで
52680 '下の矢印
52690 '中央 2
52700 if ((y=1) or (key$ = chr$(31))) then
52710 select case No
52720 '9から６に下げる
52730 case 9:
52740 No=6:sp_on 11,1:sp_on 10,0
52750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52760 '6から３に下げる
52770 case 6:
52780 No=3:sp_on 12,1:sp_on 11,0
52790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52800 '3から０ｋに変える
52810 case 3:
52820 No=-1:sp_on 14,1:sp_on 12,0
52830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52840 'Okから下のボタンを押しても何もしない
52850 case -1:
52860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52870 case 8:
52880 No=5:sp_on 8,1:sp_on 7,0
52890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52900 case 5:
52910 No=2:sp_on 9,1:sp_on 8,0
52920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52930 case 2:
52940 No=0:sp_on 13,1:sp_on 9,0
52950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52960 case 0:
52970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
52980 case 7:
52990 No=4:sp_on 5,1:sp_on 4,0
53000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53010 case 4:
53020 No=1:sp_on 6,1:sp_on 5,0
53030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53040 case 1:
53050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53060 end select
53070 endif
53080 '左へボタン 十字キー　左　or 　カーソル左
53090 if ((y2 = -1) or (key$ = chr$(29))) then
53100 select case No
53110 'Ok ボタン  Okから　左　０に行く
53120 case -1:
53130 No=0:sp_on 13,1:sp_on 14,0
53140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53150 '0 ボタン  左　何もしない
53160 case 0:
53170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53180 case 3:
53190 No=2:sp_on 9,1:sp_on 12,0:
53200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53210 case 2:
53220 No=1:sp_on 6,1:sp_on 9,0:
53230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53240 case 1:
53250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53260 case 6:
53270 No=5:sp_on 8,1:sp_on 11,0
53280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53290 case 5:
53300 No=4:sp_on 5,1:sp_on 8,0
53310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53320 case 4:
53330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53340 case 9:
53350 No=8:sp_on 7,1:sp_on 10,0
53360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53370 case 8:
53380 No=7:sp_on 4,1:sp_on 7,0
53390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53400 case 7:
53410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53420 end select
53430 endif
53440 '右  十字キー　右　or カーソル　右
53450 if ((y2 = 1) or (key$ = chr$(28))) then
53460 select case No
53470 '0ボタンからokボタン右に移動
53480 case 0:
53490 No=-1:sp_on 14,1:sp_on 13,0
53500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53510 '0ボタンからokボタン 右に移動　ここまで
53520 'OKボタンで右を押して何もしない
53530 case -1:
53540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53550 case 1:
53560 No=2:sp_on 9,1:sp_on 6,0
53570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53580 case 2:
53590 No=3:sp_on 12,1:sp_on 9,0
53600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53610 case 3:
53620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53630 case 4:
53640 No=5:sp_on 8,1:sp_on 5,0
53650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53660 case 5:
53670 No=6:sp_on 11,1:sp_on 8,0
53680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53690 case 7:
53700 No=8:sp_on 7,1:sp_on 4,0
53710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53720 case 8:
53730 No=9:sp_on 10,1:sp_on 7,0
53740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53750 case 9:
53760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53770 case 6:
53780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
53790 end select
53800 'Okから右ボタンを押して何もしない ここまで
53810 endif
53820 '十字キー　ここまで
53830 '右の丸ボタン + Enter key 決定キー
53840 if ((bg=2) or (key$=chr$(13))) then
53850 select case count
53860 case 0:
53870 if (No=-1) then No=0
53880 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
53890 if (buf_female_day > 1 and buf_female_day < 10)  then
53900 buf_female_Day$ = str$(buf_female_day)
53910 'buf_month=No
53920 endif
53930 if (buf_female_day = 1)  then
53940 buf_female_Day$ = str$(buf_female_day) + "*"
53950 'c=buf_month
53960 endif
53970 locate 1,3
53980 print "                                     "
53990 color RGB(255,255,255)
54000 locate 1,3
54010 print "女性の生まれた日(1月~31月):" + buf_female_Day$
54020 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54030 case 1:
54040 count = 2:
54050 'c = val(buf_Month$)
54060 if (No = -1) then
54070 'count=0
54080 No=0
54090 day=buf_female_day
54100 buf_female_day=val(buf_female_day$)
54110 day=bu_female_day
54120 buf_female_day(1)=day
54130 '生まれた日に飛ぶ
54140 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54150 else
54160 bu_female_day = c*10 + No
54170 'if (buf_month = 1) then
54180 'buf_Month$ = str$(buf_month)
54190 'endif
54200 buf_female_day$ = str$(buf_female_day)
54210 buf_female_day(1) = buf_female_day
54220 locate 0,3
54230 print "                                           "
54240 locate 1,3
54250 color Rgb(255,255,255)
54260 print "女性の生まれた日(1月~31月):" + buf_female_Day$
54270 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54280 endif
54290 case 2:
54300 '==================================
54310 '何もしない
54320 'coun = 2
54330 '==================================
54340 'c= val(buf_Month$)
54350 'buf_month = c*10 + No
54360 'buf_Month$ = str$(buf_month)
54370 'locate 2,3
54380 'print "上司の生まれた月(1月～12月):";buf_Month$
54390 'goto Jyoushi_Input_Born_Month2:
54400 'case 3:
54410 'count=4
54420 'b=val(buf_month$)
54430 'buf_month=c*10+No
54440 'buf_Month$=str$(buf_month)
54450 'locate 2,3
54460 'print "上司の生まれた月(1月～12月):";buf_Month$
54470 'buf_month=val(buf_Month$)
54480 'year=val(buf_year$)
54490 if (No=-1) then
54500 No=0
54510 goto Danjyo_Aisyou_Input_Male_Born_Day:
54520 else
54530 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54540 endif
54550 'case 4:
54560 'bufyear=buf_year
54570 'if (No=-1) then
54580 'buf_month = val(buf_Month$)
54590 'month = buf_month
54600 'sp_on 14,0
54610 'goto Input_Born_Day:
54620 'else
54630 'goto Input_Born_Month2:
54640 'endif
54650 end select
54660 endif
54670 '左の丸ボタン　キャンセル
54680 if (bg2=2) then
54690 select case count2
54700 case 0:
54710 if (No = -1) then
54720 buf_female_day=0:buf_female_Day$="**"
54730 count=0
54740 'goto rewrite2:
54750 else
54760 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
54770 buf_female_day = 0:buf_female_Day$ = "**"
54780 locate 0,3
54790 color rgb(255,255,255)
54800 print "                                       "
54810 goto rewrite2:
54820 if (No>12) then
54830 ui_msg"値が範囲外です。"
54840 goto rewrite2:
54850 endif
54860 endif
54870 endif
54880 rewrite2:
54890 locate 2,3
54900 color rgb(255,255,255)
54910 print "                                      "
54920 locate 2,3
54930 print "女性の生まれた日(1月~31月):"+buf_female_Day$
54940 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
54950 end select
54960 'endif
54970 endif
54980 end
54990 '-------生まれた日　女性 ここまで-------------
55000 '1.男女の相性 ここまで
55010 '2.ビジネスの相性　
55020 '1.1人目のビジネスの相性　名前入力　1人目
55030 Business_Aishou_Input_1_parson:
55040 No=0:color RGB(255,255,255)
55050 cls 3:init "kb:2"
55060 gload Gazo$ + "Screen1.png",0,0,0
55070 gload Gazo$ + "downscreen.png",0,0,800
55080 play "":color rgb(255,0,0):name$ = ""
55090 locate 0,1
55100 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
55110 color rgb(255,255,255):
55120 locate 0,3
55130 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
55140 print "入れてください" + chr$(13)
55150 locate 0,15:color rgb(0,0,0)
55160 Input "1人目の名前:",name$
55170 'color rgb(0,0,0)
55180 'locate 0,13:print "                                     "
55190 'locate 0,13:print "1人目の名前を入力してエンターキー":
55200 'buffer_name$(0):1人目の名前
55210 buffer_name$(0) = name$:
55220 goto Business_Aishou_Input_2_Parson:
55230 '2.2人目のビジネスの相性 名前入力 2人目
55240 Business_Aishou_Input_2_Parson:
55250 cls 3:init "kb:2":name$ = "":No=0
55260 gload Gazo$ + "Screen1.png",0,0,0
55270 gload Gazo$ + "downscreen.png",0,0,800
55280 color rgb(255,0,0)
55290 'Title
55300 locate 0,1
55310 print "ビジネスの相性　2人目"
55320 locate 0,3
55330 color rgb(255,255,255)
55340 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
55350 print "入れてください" + chr$(13)
55360 locate 0,15:color rgb(0,0,0)
55370 Input "2人目の名前:",name$
55380 'color rgb(0,0,0)
55390 'locate 0,15:print "                                              "
55400 'locate 0,15:print "2人目の名前を入力してエンター ":
55410 '2人目
55420 '2人目の名前を入れるに代入
55430 buffer_name$(1) = name$:
55440 goto Select_jyoushi:
55450 '3.上司の選択
55460 Select_jyoushi:
55470 cls 3:gload Gazo$ + "Screen1.png",0,0,0
55480 gload Gazo$ + "downscreen.png",0,0,800
55490 init "kb:4":No=0
55500 color rgb(0,0,255)
55510 locate 1,1
55520 print "上司の選択"
55530 color rgb(255,255,255)
55540 locate 0,4:print "名前から上司の方を選んでください"
55550 locate 0,6
55560 print " :";buffer_name$(0);"が上 司";chr$(13)
55570 locate 0,8
55580 print " :";buffer_name$(1);"が上 司";chr$(13)
55590 locate 0,15:
55600 print "                                     "
55610 locate 0,15:color rgb(0,0,0)
55620 print "上司の方を選んで右の丸ボタン"
55630 sp_on 0,1:sp_on 1,0:sp_on 2,0
55640 Select_jyoushi2:
55650 'ここでNo=0をおいてはいけない
55660 y=0:key$="":bg=0:
55670 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
55680 y = stick(1)
55690 key$ = inkey$
55700 bg = strig(1)
55710 pause 5
55720 wend
55730 '1.カーソル下の処理　or 十字キーの下処理
55740 if ((key$ = chr$(31)) or (y = 1)) then
55750 select case No
55760 case 0:
55770 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
55780 case 1:
55790 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
55800 end select
55810 endif
55820 '2.カーソル上処理　or 十字キーの上の処理
55830 if ((key$ = chr$(30)) or (y = -1)) then
55840 select case No
55850 case 0:
55860 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
55870 case 1:
55880 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
55890 end select
55900 endif
55910 if ((key$ = chr$(13)) or (bg = 2)) then
55920 select case No
55930 case 0:
55940 '上司(name1)を配列に代入
55950 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
55960 case 1:
55970 '上司（name2)を配列に代入
55980 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
55990 end select
56000 endif
56010 '3.決定ボタン　Enter or 右の丸ボタン
56020 '1.誕生日入力
56030 '1-1.生まれた年を入力
56040 'Jyoushi_born_year:
56050 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
56060 '---------------------------------------------'
56070 '誕生日入力(生れた年代)
56080 Jyoushi_Input_Seireki:
56090 'buf_Jyoushi_Born_Year:上司の生まれた年代
56100 'buf_Jyoushi_Born_Day(0) = born_year
56110 cls 3:play "":count=0:count2=0
56120 init"kb:4"
56130 'No=-1:Okのとき
56140 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
56150 for i=0 to 3
56160 buf_Jyoushi_Born_Day(i)=0
56170 next i
56180 gload Gazo$ + "Screen2.png",0,0,0
56190 gload Gazo$ + "downscreen.png",0,0,800
56200 'Init"kb:2"
56210 '音声ファイル再生 2023.06.07
56220 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
56230 font 48
56240 locate 0,1
56250 '文字色：黒　 color rgb(0,0,0)
56260 color rgb(255,255,255)
56270 print "上司の生まれた年代を入れて下さい" + chr$(13)
56280 color rgb(255,255,255)
56290 locate 1,3
56300 print "上司の生まれた年代(西暦4桁):";buf_year$
56310 color rgb(255,255,255)
56320 'locate 4,6:print ":7"
56330 'locate 9,6:print ":8"
56340 'locate 12,6:print ":9"
56350 'locate 4,6
56360 'print ":7  :8  :9" + chr$(13)
56370 'color rgb(255,255,255)
56380 'locate 4,8
56390 'print ":4  :5  :6" + chr$(13)
56400 'color rgb(255,255,255)
56410 'locate 4,10
56420 'print ":1  :2  :3" + chr$(13)
56430 'locate 4,12
56440 'print "    :0"
56450 'locate 12,12
56460 'color rgb(0,0,255)
56470 'print ":Ok"
56480 sp_on 4,0: sp_on 5,0:sp_on 6,0
56490 sp_on 7,0:sp_on 8,0:sp_on 9,0
56500 sp_on 10,0:sp_on 11,0:sp_on 12,0
56510 sp_on 13,0:sp_on 14,1
56520 Jyoushi_Input_Seireki2:
56530 key$="":bg=0:y=0:y2=0:bg2=0:
56540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
56550 key$ = inkey$
56560 bg = strig(1)
56570 y = stick(1)
56580 y2 = stick(0)
56590 bg2=strig(0)
56600 pause 200
56610 wend
56620 '十字キー　ここから
56630 '上の矢印　または、十字キー上
56640 if ((y = -1) or (key$ = chr$(30))) then
56650 select case No
56660 'No=-1:okのとき:初期の状態
56670 '0kボタンから３に移動
56680 '上に行く 処理
56690 case -1:
56700 No=3:sp_on 12,1:sp_on 14,0
56710 pause 200:goto Jyoushi_Input_Seireki2:
56720 '選択肢:3
56730 '3ボタンから 6に移動
56740 case 3:
56750 No=6:sp_on 12,0:sp_on 11,1
56760 pause 200:goto Jyoushi_Input_Seireki2:
56770 '6ボタンから ９に移動
56780 case 6:
56790 No=9:sp_on 10,1:sp_on 11,0
56800 pause 200:goto Jyoushi_Input_Seireki2:
56810 '6ボタンから ９に移動　ここまで
56820 '9で上を押して何もしない
56830 case 9:
56840 '何もしない
56850 No=9
56860 pause 200:goto Jyoushi_Input_Seireki2:
56870 '9で上を押しても何もしない　ここまで
56880 '上　 0ボタンから2ボタン
56890 'sp_on 6,1:1
56900 'sp_on 8,1:5
56910 'sp_on 7,1:7
56920 case 0:
56930 No=2:sp_on 13,0:sp_on 9,1:
56940 pause 200:goto Jyoushi_Input_Seireki2:
56950 '上  0ボタンから2ボタン　ここまで
56960 '2から５になる 上
56970 case 2:
56980 No=5:sp_on 8,1:sp_on 9,0:
56990 pause 200:goto Jyoushi_Input_Seireki2:
57000 case 5:
57010 No=8:sp_on 7,1:sp_on 8,0
57020 pause 200:goto Jyoushi_Input_Seireki2:
57030 case 8:
57040 pause 200:goto Jyoushi_Input_Seireki2:
57050 case 1:
57060 No=4:sp_on 5,1:sp_on 6,0
57070 pause 200:goto Jyoushi_Input_Seireki2:
57080 case 4:
57090 No=7:sp_on 4,1:sp_on 5,0
57100 pause 200:goto Jyoushi_Input_Seireki2:
57110 case 7:
57120 pause 200:goto Jyoushi_Input_Seireki2:
57130 end select
57140 endif
57150 '左３　ここまで
57160 '下の矢印
57170 '中央 2
57180 if ((y=1) or (key$ = chr$(31))) then
57190 select case No
57200 '9から６に下げる
57210 case 9:
57220 No=6:sp_on 11,1:sp_on 10,0
57230 pause 200:goto Jyoushi_Input_Seireki2:
57240 '6から３に下げる
57250 case 6:
57260 No=3:sp_on 12,1:sp_on 11,0
57270 pause 200:goto Jyoushi_Input_Seireki2:
57280 '3から０ｋに変える
57290 case 3:
57300 No=-1:sp_on 14,1:sp_on 12,0
57310 pause 200:goto Jyoushi_Input_Seireki2:
57320 'Okから下のボタンを押しても何もしない
57330 case -1:
57340 pause 200:goto Jyoushi_Input_Seireki2:
57350 case 8:
57360 No=5:sp_on 8,1:sp_on 7,0
57370 pause 200:goto Jyoushi_Input_Seireki2:
57380 case 5:
57390 No=2:sp_on 9,1:sp_on 8,0
57400 pause 200:goto Jyoushi_Input_Seireki2:
57410 case 2:
57420 No=0:sp_on 13,1:sp_on 9,0
57430 pause 200:goto Jyoushi_Input_Seireki2:
57440 case 0:
57450 pause 200:goto Jyoushi_Input_Seireki2:
57460 case 7:
57470 No=4:sp_on 5,1:sp_on 4,0
57480 pause 200:goto Jyoushi_Input_Seireki2:
57490 case 4:
57500 No=1:sp_on 6,1:sp_on 5,0
57510 pause 200:goto Jyoushi_Input_Seireki2:
57520 case 1:
57530 pause 200:goto Jyoushi_Input_Seireki2:
57540 end select
57550 endif
57560 '左へボタン 十字キー　左　or 　カーソル左
57570 if ((y2 = -1) or (key$ = chr$(29))) then
57580 select case No
57590 'Ok ボタン  Okから　左　０に行く
57600 case -1:
57610 No=0:sp_on 13,1:sp_on 14,0
57620 pause 200:goto Jyoushi_Input_Seireki2:
57630 '0 ボタン  左　何もしない
57640 case 0:
57650 pause 200:goto Jyoushi_Input_Seireki2:
57660 case 3:
57670 No=2:sp_on 9,1:sp_on 12,0:
57680 pause 200:goto Jyoushi_Input_Seireki2:
57690 case 2:
57700 No=1:sp_on 6,1:sp_on 9,0:
57710 pause 200:goto Jyoushi_Input_Seireki2:
57720 case 1:
57730 pause 200:goto Jyoushi_Input_Seireki2:
57740 case 6:
57750 No=5:sp_on 8,1:sp_on 11,0
57760 pause 200:goto Jyoushi_Input_Seireki2:
57770 case 5:
57780 No=4:sp_on 5,1:sp_on 8,0
57790 pause 200:goto Jyoushi_Input_Seireki2:
57800 case 4:
57810 pause 200:goto Jyoushi_Input_Seireki2:
57820 case 9:
57830 No=8:sp_on 7,1:sp_on 10,0
57840 pause 200:goto Jyoushi_Input_Seireki2:
57850 case 8:
57860 No=7:sp_on 4,1:sp_on 7,0
57870 pause 200:goto Jyoushi_Input_Seireki2:
57880 case 7:
57890 pause 200:goto Jyoushi_Input_Seireki2:
57900 end select
57910 endif
57920 '右  十字キー　右　or カーソル　右
57930 if ((y2 = 1) or (key$ = chr$(28))) then
57940 select case No
57950 '0ボタンからokボタン右に移動
57960 case 0:
57970 No=-1:sp_on 14,1:sp_on 13,0
57980 pause 200:goto Jyoushi_Input_Seireki2:
57990 '0ボタンからokボタン 右に移動　ここまで
58000 'OKボタンで右を押して何もしない
58010 case -1:
58020 pause 200:goto Jyoushi_Input_Seireki2:
58030 case 1:
58040 No=2:sp_on 9,1:sp_on 6,0
58050 pause 200:goto Jyoushi_Input_Seireki2:
58060 case 2:
58070 No=3:sp_on 12,1:sp_on 9,0
58080 pause 200:goto Jyoushi_Input_Seireki2:
58090 case 3:
58100 pause 200:goto Jyoushi_Input_Seireki2:
58110 case 4:
58120 No=5:sp_on 8,1:sp_on 5,0
58130 pause 200:goto Jyoushi_Input_Seireki2:
58140 case 5:
58150 No=6:sp_on 11,1:sp_on 8,0
58160 pause 200:goto Jyoushi_Input_Seireki2:
58170 case 7:
58180 No=8:sp_on 7,1:sp_on 4,0
58190 pause 200:goto Jyoushi_Input_Seireki2:
58200 case 8:
58210 No=9:sp_on 10,1:sp_on 7,0
58220 pause 200:goto Jyoushi_Input_Seireki2:
58230 case 9:
58240 pause 200:goto Jyoushi_Input_Seireki2:
58250 case 6:
58260 pause 200:goto Jyoushi_Input_Seireki2:
58270 end select
58280 'Okから右ボタンを押して何もしない ここまで
58290 endif
58300 '十字キー　ここまで
58310 '==============================
58320 'ここから
58330 '==============================
58340 if ((bg = 2) or (key$ = chr$(13))) then
58350 select case count
58360 case 0:
58370 count = 1
58380 if (No = -1) then
58390 count = 0:No=0
58400 buf_Jyoushi_Born_Day(0) = No
58410 'Okボタンを押したとき
58420 goto Jyoushi_Input_Seireki2:
58430 else
58440 'Okボタン以外が押されたとき
58450 if (No >= 1 and No <= 2) then
58460 buf_year$="":buf_year$ = str$(No) + "***"
58470 buf_year = No:a= No
58480 buf_Jyoushi_Born_Day(0) = No
58490 locate 1,3
58500 color rgb(255,255,255)
58510 print "上司の生まれた年代(西暦4桁):";buf_year$
58520 goto Jyoushi_Input_Seireki2:
58530 else
58540 count=0
58550 ui_msg"数字が範囲外になります。"
58560 buf_year$="":buf_year=0
58570 goto Jyoushi_Input_Seireki2:
58580 endif
58590 endif
58600 case 1:
58610 count = 2
58620 if (No = -1) then
58630 count = 1
58640 goto Jyoushi_Input_Seireki2:
58650 else
58660 buf_year = a * 10 + No
58670 b=buf_year
58680 buf_year$ = str$(buf_year) + "**"
58690 buf_Jyoushi_Born_Day(0)=buf_year
58700 locate 1,3
58710 color rgb(255,255,255)
58720 print "                                                                "
58730 locate 1,3
58740 print "上司の生まれた年代(西暦4桁):" + buf_year$
58750 'if (No = -1) then
58760 'count=1
58770 goto Jyoushi_Input_Seireki2:
58780 endif
58790 case 2:
58800 count=3
58810 if (No=-1) then
58820 count =2
58830 goto Jyoushi_Input_Seireki2:
58840 else
58850 buf_year = b * 10 + No
58860 c=buf_year
58870 buf_year$ = str$(buf_year) + "*"
58880 buf_Jyoushi_Born_Day(0) = buf_year
58890 locate 1,3
58900 color rgb(255,255,255)
58910 print "                                        "
58920 locate 1,3
58930 print "上司の生まれた年代(西暦4桁):";buf_year$
58940 goto Jyoushi_Input_Seireki2:
58950 endif
58960 case 3:
58970 count=4
58980 if (No = -1) then
58990 No=0
59000 goto Jyoushi_Input_Seireki2:
59010 else
59020 buf_year = c * 10 + No
59030 buf_year$ = str$(buf_year)
59040 buf_Jyoushi_Born_Day(0) = buf_year
59050 locate 1,3
59060 color RGB(255,255,255)
59070 print "                                      "
59080 locate 1,3
59090 print "上司の生まれた年代(西暦4桁):";buf_year$
59100 buf_year=val(buf_year$)
59110 'year=val(buf_year$)
59120 'if (No=-1) then
59130 'goto Input_Born_Month:
59140 'else
59150 goto Jyoushi_Input_Seireki2:
59160 endif
59170 case 4:
59180 'bufyear=buf_year
59190 if (No=-1) then
59200 buf_year = val(buf_year$)
59210 buf_Jyoushi_Born_Day(0)=buf_year
59220 sp_on 14,0:No=0
59230 goto Jyoushi_Input_Born_Month:
59240 else
59250 goto Jyoushi_Input_Seireki2:
59260 endif
59270 end select
59280 endif
59290 '===========================
59300 'ここまでを部下のところにコピーする.
59310 '===========================
59320 if (bg2 = 2) then
59330 select case count2
59340 case 0:
59350 if (No = -1) then
59360 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
59370 count=0
59380 locate 1,3
59390 color rgb(255,255,255)
59400 print "                                      "
59410 locate 1,3
59420 print "上司の生まれた年代（西暦4桁):" + buf_year$
59430 goto Jyoushi_Input_Seireki2:
59440 else
59450 '(buf_year=0) then
59460 buf_year=0:buf_year$="****"
59470 locate 1,3
59480 print "                                       "
59490 locate 1,3
59500 print "上司の生まれた年代(西暦4桁):"+buf_year$
59510 goto Jyoushi_Input_Seireki2:
59520 'endif
59530 endif
59540 end select
59550 endif
59560 'Input"上司の生れた年代(4桁,〜2025年):",year
59570 'if year > 2025 then goto Jyoushi_Input_Seireki:
59580 'if year = 123 then cls 3:cls 4:goto Main_Screen:
59590 '"4桁目"
59600 'bufyear4 = fix(year / 1000)
59610 '"3桁目"
59620 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
59630 '"2桁目"
59640 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
59650 '"1桁目"
59660 'bufyear1 = fix((year - ((bufyear4*
59670 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
59680 '2.生まれた月を入力
59690 Jyoushi_Input_Born_Month:
59700 cls 3:play "":count=0:count2=0
59710 'No=-1:Okのとき
59720 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
59730 for i=0 to 1
59740 buf_month(i)=0
59750 next i
59760 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
59770 gload Gazo$ + "Screen2.png",0,0,0
59780 gload Gazo$ + "downscreen.png",0,0,800
59790 'Init"kb:4"
59800 '音声ファイル再生 2023.06.07
59810 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
59820 font 48
59830 locate 0,1
59840 '文字色：黒　 color rgb(0,0,0)
59850 '文字色:白
59860 color rgb(255,255,255)
59870 print "上司の生まれた月を入れて下さい" + chr$(13)
59880 '文字色:白
59890 color rgb(255,255,255)
59900 locate 1,3
59910 '文字色:白
59920 print "上司の生まれた月(1月~12月):"+buf_Month$
59930 color rgb(255,255,255)
59940 'locate 4,6:print ":7"
59950 'locate 9,6:print ":8"
59960 'locate 12,6:print ":9"
59970 'locate 4,6
59980 '文字色:赤
59990 'print ":7  :8  :9" + chr$(13)
60000 'color rgb(255,255,255)
60010 'locate 4,8
60020 'print ":4  :5  :6" + chr$(13)
60030 'color rgb(255,255,255)
60040 'locate 4,10
60050 'print ":1  :2  :3" + chr$(13)
60060 'locate 4,12
60070 'print "    :0"
60080 'locate 12,12
60090 'color rgb(0,0,255)
60100 'print ":Ok"
60110 sp_on 4,0: sp_on 5,0:sp_on 6,0
60120 sp_on 7,0:sp_on 8,0:sp_on 9,0
60130 sp_on 10,0:sp_on 11,0:sp_on 12,0
60140 sp_on 13,0:sp_on 14,1
60150 Jyoushi_Input_Born_Month2:
60160 key$="":bg=0:y=0:y2=0:bg2=0
60170 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
60180 key$ = inkey$
60190 bg = strig(1)
60200 y = stick(1)
60210 y2 = stick(0)
60220 bg2 = strig(0)
60230 pause 200
60240 wend
60250 '十字キー　ここから
60260 '上の矢印　または、十字キー上
60270 if ((y = -1) or (key$ = chr$(30))) then
60280 select case No
60290 'No=-1:okのとき:初期の状態
60300 '0kボタンから３に移動
60310 '上に行く 処理
60320 case -1:
60330 No=3:sp_on 12,1:sp_on 14,0
60340 pause 200:goto Jyoushi_Input_Born_Month2:
60350 '選択肢:3
60360 '3ボタンから 6に移動
60370 case 3:
60380 No=6:sp_on 12,0:sp_on 11,1
60390 pause 200:goto Jyoushi_Input_Born_Month2:
60400 '6ボタンから ９に移動
60410 case 6:
60420 No=9:sp_on 10,1:sp_on 11,0
60430 pause 200:goto Jyoushi_Input_Born_Month2:
60440 '6ボタンから ９に移動　ここまで
60450 '9で上を押して何もしない
60460 case 9:
60470 '何もしない
60480 No=9
60490 pause 200:goto Jyoushi_Input_Born_Month2:
60500 '9で上を押しても何もしない　ここまで
60510 '上　 0ボタンから2ボタン
60520 'sp_on 6,1:1
60530 'sp_on 8,1:5
60540 'sp_on 7,1:7
60550 case 0:
60560 No=2:sp_on 13,0:sp_on 9,1:
60570 pause 200:goto Jyoushi_Input_Born_Month2:
60580 '上  0ボタンから2ボタン　ここまで
60590 '2から５になる 上
60600 case 2:
60610 No=5:sp_on 8,1:sp_on 9,0:
60620 pause 200:goto Jyoushi_Input_Born_Month2:
60630 case 5:
60640 No=8:sp_on 7,1:sp_on 8,0
60650 pause 200:goto Jyoushi_Input_Born_Month2:
60660 case 8:
60670 pause 200:goto Input_Born_Month2:
60680 case 1:
60690 No=4:sp_on 5,1:sp_on 6,0
60700 pause 200:goto Jyoushi_Input_Born_Month2:
60710 case 4:
60720 No=7:sp_on 4,1:sp_on 5,0
60730 pause 200:goto Jyoushi_Input_Born_Month2:
60740 case 7:
60750 pause 200:goto Input_Born_Month2:
60760 end select
60770 endif
60780 '左３　ここまで
60790 '下の矢印
60800 '中央 2
60810 if ((y=1) or (key$ = chr$(31))) then
60820 select case No
60830 '9から６に下げる
60840 case 9:
60850 No=6:sp_on 11,1:sp_on 10,0
60860 pause 200:goto Jyoushi_Input_Born_Month2:
60870 '6から３に下げる
60880 case 6:
60890 No=3:sp_on 12,1:sp_on 11,0
60900 pause 200:goto Jyoushi_Input_Born_Month2:
60910 '3から０ｋに変える
60920 case 3:
60930 No=-1:sp_on 14,1:sp_on 12,0
60940 pause 200:goto Jyoushi_Input_Born_Month2:
60950 'Okから下のボタンを押しても何もしない
60960 case -1:
60970 pause 200:goto Jyoushi_Input_Born_Month2:
60980 case 8:
60990 No=5:sp_on 8,1:sp_on 7,0
61000 pause 200:goto Jyoushi_Input_Born_Month2:
61010 case 5:
61020 No=2:sp_on 9,1:sp_on 8,0
61030 pause 200:goto Jyoushi_Input_Born_Month2:
61040 case 2:
61050 No=0:sp_on 13,1:sp_on 9,0
61060 pause 200:goto Jyoushi_Input_Born_Month2:
61070 case 0:
61080 pause 200:goto Jyoushi_Input_Born_Month2:
61090 case 7:
61100 No=4:sp_on 5,1:sp_on 4,0
61110 pause 200:goto Jyoushi_Input_Born_Month2:
61120 case 4:
61130 No=1:sp_on 6,1:sp_on 5,0
61140 pause 200:goto Jyoushi_Input_Born_Month2:
61150 case 1:
61160 pause 200:goto Jyoushi_Input_Born_Month2:
61170 end select
61180 endif
61190 '左へボタン 十字キー　左　or 　カーソル左
61200 if ((y2 = -1) or (key$ = chr$(29))) then
61210 select case No
61220 'Ok ボタン  Okから　左　０に行く
61230 case -1:
61240 No=0:sp_on 13,1:sp_on 14,0
61250 pause 200:goto Jyoushi_Input_Born_Month2:
61260 '0 ボタン  左　何もしない
61270 case 0:
61280 pause 200:goto Jyoushi_Input_Born_Month2:
61290 case 3:
61300 No=2:sp_on 9,1:sp_on 12,0:
61310 pause 200:goto Jyoushi_Input_Born_Month2:
61320 case 2:
61330 No=1:sp_on 6,1:sp_on 9,0:
61340 pause 200:goto Jyoushi_Input_Born_Month2:
61350 case 1:
61360 pause 200:goto Jyoushi_Input_Born_Month2:
61370 case 6:
61380 No=5:sp_on 8,1:sp_on 11,0
61390 pause 200:goto Jyoushi_Input_Born_Month2:
61400 case 5:
61410 No=4:sp_on 5,1:sp_on 8,0
61420 pause 200:goto Jyoushi_Input_Born_Month2:
61430 case 4:
61440 pause 200:goto Jyoushi_Input_Born_Month2:
61450 case 9:
61460 No=8:sp_on 7,1:sp_on 10,0
61470 pause 200:goto Input_Born_Month2:
61480 case 8:
61490 No=7:sp_on 4,1:sp_on 7,0
61500 pause 200:goto Jyoushi_Input_Born_Month2:
61510 case 7:
61520 pause 200:goto Jyoushi_Input_Born_Month2:
61530 end select
61540 endif
61550 '右  十字キー　右　or カーソル　右
61560 if ((y2 = 1) or (key$ = chr$(28))) then
61570 select case No
61580 '0ボタンからokボタン右に移動
61590 case 0:
61600 No=-1:sp_on 14,1:sp_on 13,0
61610 pause 200:goto Jyoushi_Input_Born_Month2:
61620 '0ボタンからokボタン 右に移動　ここまで
61630 'OKボタンで右を押して何もしない
61640 case -1:
61650 pause 200:goto Jyoushi_Input_Born_Month2:
61660 case 1:
61670 No=2:sp_on 9,1:sp_on 6,0
61680 pause 200:goto Jyoushi_Input_Born_Month2:
61690 case 2:
61700 No=3:sp_on 12,1:sp_on 9,0
61710 pause 200:goto Jyoushi_Input_Born_Month2:
61720 case 3:
61730 pause 200:goto Jyoushi_Input_Born_Month2:
61740 case 4:
61750 No=5:sp_on 8,1:sp_on 5,0
61760 pause 200:goto Jyoushi_Input_Born_Month2:
61770 case 5:
61780 No=6:sp_on 11,1:sp_on 8,0
61790 pause 200:goto Jyoushi_Input_Born_Month2:
61800 case 7:
61810 No=8:sp_on 7,1:sp_on 4,0
61820 pause 200:goto Jyoushi_Input_Born_Month2:
61830 case 8:
61840 No=9:sp_on 10,1:sp_on 7,0
61850 pause 200:goto Jyoushi_Input_Born_Month2:
61860 case 9:
61870 pause 200:goto Jyoushi_Input_Born_Month2:
61880 case 6:
61890 pause 200:goto Jyoushi_Input_Born_Month2:
61900 end select
61910 'Okから右ボタンを押して何もしない ここまで
61920 endif
61930 '十字キー　ここまで
61940 '右の丸ボタン + Enter key 決定キー
61950 if ((bg=2) or (key$=chr$(13))) then
61960 select case count
61970 case 0:
61980 if (No=-1) then No=0
61990 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
62000 if (buf_month > 1 and buf_month < 10)  then
62010 buf_Month$ = str$(buf_month)
62020 'buf_month=No
62030 endif
62040 if (buf_month = 1)  then
62050 buf_Month$ = str$(buf_month) + "*"
62060 'c=buf_month
62070 endif
62080 locate 1,3
62090 print "                                     "
62100 color RGB(255,255,255)
62110 locate 1,3
62120 print "上司の生まれた月(1月~12月):" + buf_Month$
62130 goto Jyoushi_Input_Born_Month2:
62140 case 1:
62150 count = 2:
62160 'c = val(buf_Month$)
62170 if (No = -1) then
62180 'count=0
62190 No=0
62200 month=buf_month
62210 buf_month=val(buf_Month$)
62220 month=buf_month
62230 buf_Jyoushi_Born_Day(1)=month
62240 '生まれた日に飛ぶ
62250 goto Jyoushi_Input_Born_Day:
62260 else
62270 buf_month = c*10 + No
62280 'if (buf_month = 1) then
62290 'buf_Month$ = str$(buf_month)
62300 'endif
62310 buf_Month$ = str$(buf_month)
62320 buf_Jyoushi_Born_Day(1) = buf_month
62330 locate 0,3
62340 print "                                           "
62350 locate 1,3
62360 color Rgb(255,255,255)
62370 print "上司の生まれた月(1月~12月):" + buf_Month$
62380 goto Jyoushi_Input_Born_Month2:
62390 endif
62400 case 2:
62410 '==================================
62420 '何もしない
62430 'coun = 2
62440 '==================================
62450 'c= val(buf_Month$)
62460 'buf_month = c*10 + No
62470 'buf_Month$ = str$(buf_month)
62480 'locate 2,3
62490 'print "上司の生まれた月(1月～12月):";buf_Month$
62500 'goto Jyoushi_Input_Born_Month2:
62510 'case 3:
62520 'count=4
62530 'b=val(buf_month$)
62540 'buf_month=c*10+No
62550 'buf_Month$=str$(buf_month)
62560 'locate 2,3
62570 'print "上司の生まれた月(1月～12月):";buf_Month$
62580 'buf_month=val(buf_Month$)
62590 'year=val(buf_year$)
62600 if (No=-1) then
62610 No=0
62620 goto Jyoushi_Input_Born_Day:
62630 else
62640 goto Jyoushi_Input_Born_Month2:
62650 endif
62660 'case 4:
62670 'bufyear=buf_year
62680 'if (No=-1) then
62690 'buf_month = val(buf_Month$)
62700 'month = buf_month
62710 'sp_on 14,0
62720 'goto Input_Born_Day:
62730 'else
62740 'goto Input_Born_Month2:
62750 'endif
62760 end select
62770 endif
62780 '左の丸ボタン　キャンセル
62790 if (bg2=2) then
62800 select case count2
62810 case 0:
62820 if (No = -1) then
62830 buf_month=0:buf_Month$="**"
62840 count=0
62850 'goto rewrite2:
62860 else
62870 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
62880 buf_month = 0:buf_Month$ = "**"
62890 locate 0,3
62900 color rgb(255,255,255)
62910 print "                                       "
62920 goto rewrite2:
62930 if (No>12) then
62940 ui_msg"値が範囲外です。"
62950 goto rewrite2:
62960 endif
62970 endif
62980 endif
62990 rewrite2:
63000 locate 2,3
63010 color rgb(255,255,255)
63020 print "                                      "
63030 locate 2,3
63040 print "上司の生まれた月(1月~12月):"+buf_Month$
63050 goto Jyoushi_Input_Born_Month2:
63060 end select
63070 'endif
63080 endif
63090 end
63100 'end
63110 '生れた日を入力
63120 Jyoushi_Input_Born_Day:
63130 '生まれた日入力
63140 cls 3:play ""
63150 'No=-1:Okのとき
63160 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
63170 for i=0 to 1
63180 buf_day(i)=0
63190 next i
63200 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
63210 gload Gazo$ + "Screen2.png",0,0,0
63220 gload Gazo$ + "downscreen.png",0,0,800
63230 'Init"kb:2"
63240 '音声ファイル再生 2023.06.07
63250 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
63260 font 48
63270 locate 1,1
63280 '文字色：黒　 color rgb(0,0,0)
63290 color rgb(255,255,255)
63300 print "上司の生まれた日を入れて下さい" + chr$(13)
63310 locate 1,3
63320 color rgb(255,255,255)
63330 print "                                      "
63340 locate 1,3
63350 print "上司の生まれた日(1日~31日):"+buf_Day$
63360 color rgb(255,255,255)
63370 'locate 4,6:print ":7"
63380 'locate 9,6:print ":8"
63390 'locate 12,6:print ":9"
63400 'locate 4,6
63410 'print ":7  :8  :9" + chr$(13)
63420 'color rgb(255,255,255)
63430 'locate 4,8
63440 'print ":4  :5  :6" + chr$(13)
63450 'color rgb(255,255,255)
63460 'locate 4,10
63470 'print ":1  :2  :3" + chr$(13)
63480 'locate 4,12
63490 'print "    :0"
63500 'locate 12,12
63510 'color rgb(0,0,255)
63520 'print ":Ok"
63530 sp_on 4,0: sp_on 5,0:sp_on 6,0
63540 sp_on 7,0:sp_on 8,0:sp_on 9,0
63550 sp_on 10,0:sp_on 11,0:sp_on 12,0
63560 sp_on 13,0:sp_on 14,1
63570 Jyoushi_Input_Born_Day2:
63580 key$="":bg=0:y=0:y2=0:bg2=0:
63590 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63600 key$ = inkey$
63610 bg = strig(1)
63620 y = stick(1)
63630 y2 = stick(0)
63640 bg2 = strig(0)
63650 pause 200
63660 wend
63670 '十字キー　ここから
63680 '上の矢印　または、十字キー上
63690 if ((y = -1) or (key$ = chr$(30))) then
63700 select case No
63710 'No=-1:okのとき:初期の状態
63720 '0kボタンから３に移動
63730 '上に行く 処理
63740 case -1:
63750 No=3:sp_on 12,1:sp_on 14,0
63760 pause 200:goto Jyoushi_Input_Born_Day2:
63770 '選択肢:3
63780 '3ボタンから 6に移動
63790 case 3:
63800 No=6:sp_on 12,0:sp_on 11,1
63810 pause 200:goto Jyoushi_Input_Born_Day2:
63820 '6ボタンから ９に移動
63830 case 6:
63840 No=9:sp_on 10,1:sp_on 11,0
63850 pause 200:goto Jyoushi_Input_Born_Day2:
63860 '6ボタンから ９に移動　ここまで
63870 '9で上を押して何もしない
63880 case 9:
63890 '何もしない
63900 No=9
63910 pause 200:goto Jyoushi_Input_Born_Day2:
63920 '9で上を押しても何もしない　ここまで
63930 '上　 0ボタンから2ボタン
63940 'sp_on 6,1:1
63950 'sp_on 8,1:5
63960 'sp_on 7,1:7
63970 case 0:
63980 No=2:sp_on 13,0:sp_on 9,1:
63990 pause 200:goto Jyoushi_Input_Born_Day2:
64000 '上  0ボタンから2ボタン　ここまで
64010 '2から５になる 上
64020 case 2:
64030 No=5:sp_on 8,1:sp_on 9,0:
64040 pause 200:goto Jyoushi_Input_Born_Day2:
64050 case 5:
64060 No=8:sp_on 7,1:sp_on 8,0
64070 pause 200:goto Jyoushi_Input_Born_Day2:
64080 case 8:
64090 pause 200:goto Jyoushi_Input_Born_Day2:
64100 case 1:
64110 No=4:sp_on 5,1:sp_on 6,0
64120 pause 200:goto Jyoushi_Input_Born_Day2:
64130 case 4:
64140 No=7:sp_on 4,1:sp_on 5,0
64150 pause 200:goto Jyoushi_Input_Born_Day2:
64160 case 7:
64170 pause 200:goto Jyoushi_Input_Born_Day2:
64180 end select
64190 endif
64200 '左３　ここまで
64210 '下の矢印
64220 '中央 2
64230 if ((y=1) or (key$ = chr$(31))) then
64240 select case No
64250 '9から６に下げる
64260 case 9:
64270 No=6:sp_on 11,1:sp_on 10,0
64280 pause 200:goto Jyoushi_Input_Born_Day2:
64290 '6から３に下げる
64300 case 6:
64310 No=3:sp_on 12,1:sp_on 11,0
64320 pause 200:goto Jyoushi_Input_Born_Day2:
64330 '3から０ｋに変える
64340 case 3:
64350 No=-1:sp_on 14,1:sp_on 12,0
64360 pause 200:goto Jyoushi_Input_Born_Day2:
64370 'Okから下のボタンを押しても何もしない
64380 case -1:
64390 pause 200:goto Jyoushi_Input_Born_Day2:
64400 case 8:
64410 No=5:sp_on 8,1:sp_on 7,0
64420 pause 200:goto Jyoushi_Input_Born_Day2:
64430 case 5:
64440 No=2:sp_on 9,1:sp_on 8,0
64450 pause 200:goto Jyoushi_Input_Born_Day2:
64460 case 2:
64470 No=0:sp_on 13,1:sp_on 9,0
64480 pause 200:goto Jyoushi_Input_Born_Day2:
64490 case 0:
64500 pause 200:goto Jyoushi_Input_Born_Day2:
64510 case 7:
64520 No=4:sp_on 5,1:sp_on 4,0
64530 pause 200:goto Jyoushi_Input_Born_Day2:
64540 case 4:
64550 No=1:sp_on 6,1:sp_on 5,0
64560 pause 200:goto Jyoushi_Input_Born_Day2:
64570 case 1:
64580 pause 200:goto Jyoushi_Input_Born_Day2:
64590 end select
64600 endif
64610 '左へボタン 十字キー　左　or 　カーソル左
64620 if ((y2 = -1) or (key$ = chr$(29))) then
64630 select case No
64640 'Ok ボタン  Okから　左　０に行く
64650 case -1:
64660 No=0:sp_on 13,1:sp_on 14,0
64670 pause 200:goto Jyoushi_Input_Born_Day2:
64680 '0 ボタン  左　何もしない
64690 case 0:
64700 pause 200:goto Jyoushi_Input_Born_Day2:
64710 case 3:
64720 No=2:sp_on 9,1:sp_on 12,0:
64730 pause 200:goto Jyoushi_Input_Born_Day2:
64740 case 2:
64750 No=1:sp_on 6,1:sp_on 9,0:
64760 pause 200:goto Jyoushi_Input_Born_Day2:
64770 case 1:
64780 pause 200:goto Jyoushi_Input_Born_Day2:
64790 case 6:
64800 No=5:sp_on 8,1:sp_on 11,0
64810 pause 200:goto Jyoushi_Input_Born_Day2:
64820 case 5:
64830 No=4:sp_on 5,1:sp_on 8,0
64840 pause 200:goto Jyoushi_Input_Born_Day2:
64850 case 4:
64860 pause 200:goto Jyoushi_Input_Born_Day2:
64870 case 9:
64880 No=8:sp_on 7,1:sp_on 10,0
64890 pause 200:goto Jyoushi_Input_Born_Day2:
64900 case 8:
64910 No=7:sp_on 4,1:sp_on 7,0
64920 pause 200:goto Jyoushi_Input_Born_Day2:
64930 case 7:
64940 pause 200:goto Jyoushi_Input_Born_Day2:
64950 end select
64960 endif
64970 '右  十字キー　右　or カーソル　右
64980 if ((y2 = 1) or (key$ = chr$(28))) then
64990 select case No
65000 '0ボタンからokボタン右に移動
65010 case 0:
65020 No=-1:sp_on 14,1:sp_on 13,0
65030 pause 200:goto Jyoushi_Input_Born_Day2:
65040 '0ボタンからokボタン 右に移動　ここまで
65050 'OKボタンで右を押して何もしない
65060 case -1:
65070 pause 200:goto Jyoushi_Input_Born_Day2:
65080 case 1:
65090 No=2:sp_on 9,1:sp_on 6,0
65100 pause 200:goto Jyoushi_Input_Born_Day2:
65110 case 2:
65120 No=3:sp_on 12,1:sp_on 9,0
65130 pause 200:goto Jyoushi_Input_Born_Day2:
65140 case 3:
65150 pause 200:goto Jyoushi_Input_Born_Day2:
65160 case 4:
65170 No=5:sp_on 8,1:sp_on 5,0
65180 pause 200:goto Jyoushi_Input_Born_Day2:
65190 case 5:
65200 No=6:sp_on 11,1:sp_on 8,0
65210 pause 200:goto Jyoushi_Input_Born_Day2:
65220 case 7:
65230 No=8:sp_on 7,1:sp_on 4,0
65240 pause 200:goto Jyoushi_Input_Born_Day2:
65250 case 8:
65260 No=9:sp_on 10,1:sp_on 7,0
65270 pause 200:goto Jyoushi_Input_Born_Day2:
65280 case 9:
65290 pause 200:goto Jyoushi_Input_Born_Day2:
65300 case 6:
65310 pause 200:goto Jyoushi_Input_Born_Day2:
65320 end select
65330 'Okから右ボタンを押して何もしない ここまで
65340 endif
65350 '十字キー　ここまで
65360 '右の丸ボタンを押したとき
65370 if ((bg = 2) or (key$ = chr$(13))) then
65380 'count :決定ボタンを押した回数
65390 select case (count)
65400 '1桁目入力
65410 case 0:
65420 count = 1:
65430 if (No = -1) then
65440 '1桁目　OKでは何もしない
65450 No=c
65460 'goto Jyoushi_Input_Born_Day2:
65470 else
65480 'ok以外のボタンを押したとき
65490 buf_day = No:buf_Day$ = str$(No)
65500 buf_Jyoushi_Born_Day(2)=buf_day
65510 c=No
65520 locate 1,3
65530 print "                                      "
65540 color RGB(255,255,255)
65550 locate 1,3
65560 print "上司の生まれた日(1日~31日):" + buf_Day$
65570 endif
65580 'check2:
65590 'if (buf_day >= 1 and buf_day <= 9) then
65600 'sp_on 14,0
65610 'goto complate_jyoushi:
65620 'else
65630 'sp_on 14,0
65640 goto Jyoushi_Input_Born_Day2:
65650 'end
65660 'endif
65670 case 1:
65680 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
65690 count = 2:
65700 'locate 2,3
65710 'color RGB(255,255,255)
65720 'print "生まれた日(1日~31日):";buf_Day$
65730 'Okボタンを押したときの処理
65740 '入力値　10未満のとき
65750 'buf_day = c * 10 + No
65760 if (No = -1) then
65770 c=buf_day:No=0
65780 'buf_day = c
65790 buf_Day$ = str$(buf_day)
65800 '10以下のとき
65810 'if (buf_day < 10) then
65820 sp_on 14,0
65830 goto complate_jyoushi:
65840 'end
65850 'endif
65860 else
65870 'c=No
65880 buf_day = c * 10 + No
65890 buf_Day$ = str$(buf_day)
65900 'buf_day = c:buf_Day$=str$(buf_day)
65910 buf_Jyoushi_Born_Day(2)=buf_day
65920 locate 1,3
65930 print "                                           "
65940 locate 1,3
65950 color Rgb(255,255,255)
65960 print "上司の生まれた日(1日~31日):" + buf_Day$
65970 goto Jyoushi_Input_Born_Day2:
65980 'goto
65990 endif
66000 'endif
66010 '生まれた日　2桁目の数字　or 1桁の数字 + ok
66020 case 2:
66030 'buf_day = c * 10 + No
66040 'buf_Jyoushi_Born_Day(2)=buf_day
66050 'locate 1,3
66060 'print "                                      "
66070 'locate 1,3
66080 'locate 2,3
66090 'print "生まれた日(1日〜31日):";buf_Day
66100 'No=-1:ok ボタンを押したとき
66110 if (No = -1) then
66120 'if ((buf_day > 0) and (buf_day < 32)) then
66130 No=0
66140 sp_on 14,0
66150 goto complate_jyoushi:
66160 'end
66170 else
66180 goto Jyoushi_Input_Born_Day2:
66190 'endif
66200 'Okボタン以外を押したとき
66210 'else
66220 'c=val(buf_Day$)
66230 'buf_day = c * 10 + No
66240 'buf_Jyoushi_Born_Day(2) = buf_day
66250 'buf_Day$ = str$(buf_day)
66260 'locate 1,3
66270 'print "上司の生まれた日(1日~31日):";buf_Day$
66280 'goto Jyoushi_Input_Born_Day2:
66290 endif
66300 'case 3:
66310 'count=4
66320 'c=val(buf_day$)
66330 'buf_day=c*10+No
66340 'buf_day$=str$(buf_day)
66350 'locate 2,3
66360 'print "生まれた日を入れてください:";buf_day$
66370 'year=val(buf_year$)
66380 'if (No = -1) then
66390 'goto Jyoushi_Input_Born_Day:
66400 'sp_on 14,0:
66410 'goto complate_jyoushi:
66420 'else
66430 'goto Jyoushi_Input_Born_Month2:
66440 'endif
66450 'case 4:
66460 'bufyear=buf_year
66470 'if (No=-1) then
66480 'buf_day = val(buf_day$)
66490 'bufday = buf_day
66500 'sp_on 14,0
66510 'goto Jyoushi_Input_Born_Day2:
66520 'else
66530 'goto Jyoushi_Input_Born_Day2:
66540 'endif
66550 end select
66560 endif
66570 if (bg2=2) then
66580 select case count2
66590 case 0:
66600 if (No=-1) then
66610 buf_day=0:buf_Day$="**":No=0
66620 if (buf_day >= 1 and buf_day <= 31) then
66630 count=0
66640 buf_day=0:buf_Day$ = "**"
66650 goto rewrite_day3:
66660 else
66670 buf_day=0:buf_Day$ = "**"
66680 ui_msg"値が範囲外です"
66690 endif
66700 goto rewrite_day3:
66710 else
66720 goto rewrite_day3:
66730 endif
66740 rewrite_day3:
66750 locate 2,3
66760 color rgb(255,255,255)
66770 print "                                      "
66780 locate 2,3
66790 print "生まれた日(1日~31日):" + buf_Day$
66800 goto Jyoushi_Input_Born_Day2:
66810 end select
66820 endif
66830 '--------------------------------------------'
66840 'locate 2,0:color rgb(255,0,0)
66850 'print "上司の生まれた年代を入力"
66860 'color rgb(255,255,255)
66870 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
66880 'locate 2,4:Input "上司の生まれた年:",born_year
66890 '誕生日データーを配列に代入
66900 'buf_Jyoushi_Born_Year:上司の生まれた年代
66910 'buf_Jyoushi_Born_Day(0) = born_year
66920 'born_year = 0
66930 '---------------------------------------------'
66940 'goto Jyoushi_born_month:
66950 '1-2.生まれた月を入力
66960 'Jyoushi_born_month:
66970 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
66980 'init "kb:4"
66990 'locate 2,1:
67000 'color rgb(255,0,0)
67010 'print "上司の生まれた月入力"
67020 'color rgb(255,255,255)
67030 'locate 2,4:print "生まれた月を入力してください"
67040 'locate 2,5
67050 'Input "上司の生まれ月:",born_month
67060 'buf_Jyoushi_Born_Day(1) = born_month
67070 'born_month = 0
67080 'goto Jyoushi_born_day:
67090 'buf_Jyoushi_Born_day
67100 '1-3.生まれた日を入力
67110 'Jyoushi_born_day:
67120 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
67130 'init "kb:4"
67140 'locate 2,1:color rgb(255,0,0)
67150 'print "上司の生まれた日　入力"
67160 'locate 2,4:color rgb(255,255,255)
67170 'print "生まれた日を入力してください"
67180 'locate 2,5
67190 'Input "上司の生まれた日:",born_day
67200 'buf_Jyoushi_Born_Day(2) = born_day
67210 'born_day = 0
67220 'goto buka_born_year:
67230 '2.部下の誕生日入力
67240 '2-1.生まれた年を入力
67250 'buka_born_year:
67260 'cls 3:gload Gazo$+"Screen1.png",0,0,0
67270 'init "kb:2"
67280 'locate 1,1:color rgb(255,0,0)
67290 'print "部下の生まれた年代入力"
67300 'locate 0,4:color rgb(255,255,255)
67310 'print "部下の生まれた年（西暦4桁）を入れてください"
67320 'locate 0,5
67330 'Input "部下の生まれた年(西暦4桁):",born_year
67340 'buf_Buka_Born_Day(0) = born_year
67350 'born_year = 0
67360 '2-2.生まれた月を入力
67370 'buka_born_month:
67380 'cls 3:gload Gazo$+"Screen1.png",0,0,0
67390 'init "kb:2"
67400 'locate 2,1:color rgb(255,0,0)
67410 'print "部下の生まれた月 入力"
67420 'locate 2,4:color rgb(255,255,255)
67430 'print "部下の生まれた月を入力してください"
67440 'locate 2,5:Input "部下の生まれた月:",born_month
67450 'buf_Buka_Born_Day(1) = born_month
67460 '2-3.生まれた日を入力
67470 'buka_born_day:
67480 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
67490 'init "kb:2"
67500 'locate 2,1:color rgb(255,0,0)
67510 'print "生まれた日入力"
67520 'color rgb(255,255,255)
67530 'locate 2,4:print "生まれた日を入力してください"
67540 'locate 2,5:Input "部下の生まれた日:",born_day
67550 'buf_Buka_Born_Day(2) = born_day
67560 'born_day=0:goto Result_Business_Aisyou:
67570 '--------------------------------------------'
67580 complate_jyoushi:
67590 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
67600 buf_Jyoushi = Kabara_Num(a,b,c)
67610 a_1=buf_Jyoushi
67620 goto Buka_Input_Seireki:
67630 '--------------------------------------------'
67640 '部下'
67650 '1.部下の生まれた年代'
67660 Buka_Input_Seireki:
67670 cls 3:play "":count=0:count2=0
67680 init"kb:4"
67690 'No=-1:Okのとき
67700 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
67710 for i=0 to 3
67720 buf_Buka_Born_Day(i)=0
67730 next i
67740 gload Gazo$ + "Screen2.png",0,0,0
67750 gload Gazo$ + "downscreen.png",0,0,800
67760 'Init"kb:2"
67770 '音声ファイル再生 2023.06.07
67780 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
67790 font 48
67800 locate 0,1
67810 '文字色：黒　 color rgb(0,0,0)
67820 color rgb(255,255,255)
67830 print "部下の生まれた年代を入れて下さい" + chr$(13)
67840 color rgb(255,255,255)
67850 locate 1,3
67860 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
67870 color rgb(255,255,255)
67880 'locate 4,6:print ":7"
67890 'locate 9,6:print ":8"
67900 'locate 12,6:print ":9"
67910 'locate 4,6
67920 'print ":7  :8  :9" + chr$(13)
67930 'color rgb(255,255,255)
67940 'locate 4,8
67950 'print ":4  :5  :6" + chr$(13)
67960 'color rgb(255,255,255)
67970 'locate 4,10
67980 'print ":1  :2  :3" + chr$(13)
67990 'locate 4,12
68000 'print "    :0"
68010 'locate 12,12
68020 'color rgb(0,0,255)
68030 'print ":Ok"
68040 sp_on 4,0: sp_on 5,0:sp_on 6,0
68050 sp_on 7,0:sp_on 8,0:sp_on 9,0
68060 sp_on 10,0:sp_on 11,0:sp_on 12,0
68070 sp_on 13,0:sp_on 14,1
68080 Buka_Input_Seireki2:
68090 key$="":bg=0:y=0:y2=0:bg2=0:
68100 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
68110 key$ = inkey$
68120 bg = strig(1)
68130 y = stick(1)
68140 y2 = stick(0)
68150 bg2=strig(0)
68160 pause 200
68170 wend
68180 '十字キー　ここから
68190 '上の矢印　または、十字キー上
68200 if ((y = -1) or (key$ = chr$(30))) then
68210 select case No
68220 'No=-1:okのとき:初期の状態
68230 '0kボタンから３に移動
68240 '上に行く 処理
68250 case -1:
68260 No=3:sp_on 12,1:sp_on 14,0
68270 pause 200:goto Buka_Input_Seireki2:
68280 '選択肢:3
68290 '3ボタンから 6に移動
68300 case 3:
68310 No=6:sp_on 12,0:sp_on 11,1
68320 pause 200:goto Buka_Input_Seireki2:
68330 '6ボタンから ９に移動
68340 case 6:
68350 No=9:sp_on 10,1:sp_on 11,0
68360 pause 200:goto Buka_Input_Seireki2:
68370 '6ボタンから ９に移動　ここまで
68380 '9で上を押して何もしない
68390 case 9:
68400 '何もしない
68410 No=9
68420 pause 200:goto Buka_Input_Seireki2:
68430 '9で上を押しても何もしない　ここまで
68440 '上　 0ボタンから2ボタン
68450 'sp_on 6,1:1
68460 'sp_on 8,1:5
68470 'sp_on 7,1:7
68480 case 0:
68490 No=2:sp_on 13,0:sp_on 9,1:
68500 pause 200:goto Buka_Input_Seireki2:
68510 '上  0ボタンから2ボタン　ここまで
68520 '2から５になる 上
68530 case 2:
68540 No=5:sp_on 8,1:sp_on 9,0:
68550 pause 200:goto Buka_Input_Seireki2:
68560 case 5:
68570 No=8:sp_on 7,1:sp_on 8,0
68580 pause 200:goto Buka_Input_Seireki2:
68590 case 8:
68600 pause 200:goto Buka_Input_Seireki2:
68610 case 1:
68620 No=4:sp_on 5,1:sp_on 6,0
68630 pause 200:goto Buka_Input_Seireki2:
68640 case 4:
68650 No=7:sp_on 4,1:sp_on 5,0
68660 pause 200:goto Buka_Input_Seireki2:
68670 case 7:
68680 pause 200:goto Buka_Input_Seireki2:
68690 end select
68700 endif
68710 '左３　ここまで
68720 '下の矢印
68730 '中央 2
68740 if ((y=1) or (key$ = chr$(31))) then
68750 select case No
68760 '9から６に下げる
68770 case 9:
68780 No=6:sp_on 11,1:sp_on 10,0
68790 pause 200:goto Buka_Input_Seireki2:
68800 '6から３に下げる
68810 case 6:
68820 No=3:sp_on 12,1:sp_on 11,0
68830 pause 200:goto Buka_Input_Seireki2:
68840 '3から０ｋに変える
68850 case 3:
68860 No=-1:sp_on 14,1:sp_on 12,0
68870 pause 200:goto Buka_Input_Seireki2:
68880 'Okから下のボタンを押しても何もしない
68890 case -1:
68900 pause 200:goto Buka_Input_Seireki2:
68910 case 8:
68920 No=5:sp_on 8,1:sp_on 7,0
68930 pause 200:goto Buka_Input_Seireki2:
68940 case 5:
68950 No=2:sp_on 9,1:sp_on 8,0
68960 pause 200:goto Buka_Input_Seireki2:
68970 case 2:
68980 No=0:sp_on 13,1:sp_on 9,0
68990 pause 200:goto Buka_Input_Seireki2:
69000 case 0:
69010 pause 200:goto Buka_Input_Seireki2:
69020 case 7:
69030 No=4:sp_on 5,1:sp_on 4,0
69040 pause 200:goto Buka_Input_Seireki2:
69050 case 4:
69060 No=1:sp_on 6,1:sp_on 5,0
69070 pause 200:goto Buka_Input_Seireki2:
69080 case 1:
69090 pause 200:goto Buka_Input_Seireki2:
69100 end select
69110 endif
69120 '左へボタン 十字キー　左　or 　カーソル左
69130 if ((y2 = -1) or (key$ = chr$(29))) then
69140 select case No
69150 'Ok ボタン  Okから　左　０に行く
69160 case -1:
69170 No=0:sp_on 13,1:sp_on 14,0
69180 pause 200:goto Buka_Input_Seireki2:
69190 '0 ボタン  左　何もしない
69200 case 0:
69210 pause 200:goto Buka_Input_Seireki2:
69220 case 3:
69230 No=2:sp_on 9,1:sp_on 12,0:
69240 pause 200:goto Buka_Input_Seireki2:
69250 case 2:
69260 No=1:sp_on 6,1:sp_on 9,0:
69270 pause 200:goto Buka_Input_Seireki2:
69280 case 1:
69290 pause 200:goto Buka_Input_Seireki2:
69300 case 6:
69310 No=5:sp_on 8,1:sp_on 11,0
69320 pause 200:goto Buka_Input_Seireki2:
69330 case 5:
69340 No=4:sp_on 5,1:sp_on 8,0
69350 pause 200:goto Buka_Input_Seireki2:
69360 case 4:
69370 pause 200:goto Buka_Input_Seireki2:
69380 case 9:
69390 No=8:sp_on 7,1:sp_on 10,0
69400 pause 200:goto Buka_Input_Seireki2:
69410 case 8:
69420 No=7:sp_on 4,1:sp_on 7,0
69430 pause 200:goto Buka_Input_Seireki2:
69440 case 7:
69450 pause 200:goto Buka_Input_Seireki2:
69460 end select
69470 endif
69480 '右  十字キー　右　or カーソル　右
69490 if ((y2 = 1) or (key$ = chr$(28))) then
69500 select case No
69510 '0ボタンからokボタン右に移動
69520 case 0:
69530 No=-1:sp_on 14,1:sp_on 13,0
69540 pause 200:goto Buka_Input_Seireki2:
69550 '0ボタンからokボタン 右に移動　ここまで
69560 'OKボタンで右を押して何もしない
69570 case -1:
69580 pause 200:goto Buka_Input_Seireki2:
69590 case 1:
69600 No=2:sp_on 9,1:sp_on 6,0
69610 pause 200:goto Buka_Input_Seireki2:
69620 case 2:
69630 No=3:sp_on 12,1:sp_on 9,0
69640 pause 200:goto Buka_Input_Seireki2:
69650 case 3:
69660 pause 200:goto Buka_Input_Seireki2:
69670 case 4:
69680 No=5:sp_on 8,1:sp_on 5,0
69690 pause 200:goto Buka_Input_Seireki2:
69700 case 5:
69710 No=6:sp_on 11,1:sp_on 8,0
69720 pause 200:goto Buka_Input_Seireki2:
69730 case 7:
69740 No=8:sp_on 7,1:sp_on 4,0
69750 pause 200:goto Buka_Input_Seireki2:
69760 case 8:
69770 No=9:sp_on 10,1:sp_on 7,0
69780 pause 200:goto Buka_Input_Seireki2:
69790 case 9:
69800 pause 200:goto Buka_Input_Seireki2:
69810 case 6:
69820 pause 200:goto Buka_Input_Seireki2:
69830 end select
69840 'Okから右ボタンを押して何もしない ここまで
69850 endif
69860 '十字キー　ここまで
69870 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
69880 'ここからコメント
69890 '右の丸ボタン決定を押した数:count
69900 'if ((bg=2) or (key$=chr$(13))) then
69910 'select case count
69920 'case 0:
69930 'count=1
69940 'if (No = -1) then
69950 'count = 0
69960 'Okボタンを押したとき
69970 '
69980 'goto Buka_Input_Seireki2:
69990 'else
70000 'Okボタン以外が押されたとき
70010 'if (No >= 1 and No <= 2) then
70020 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
70030 'buf_buka_year = No
70040 'buf_Buka_Born_Day(0) = bufyear
70050 'locate 2,3
70060 'color rgb(255,255,255)
70070 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
70080 'goto Buka_Input_Seireki2:
70090 'else
70100 'count=0
70110 'ui_msg"数字が範囲外になります。"
70120 'buf_buka_year$ ="":buf_buka_year=0
70130 'goto Buka_Input_Seireki2:
70140 'endif
70150 'endif
70160 'case 1:
70170 'count = 2
70180 'if (No = -1) then
70190 'count = 1
70200 'goto Buka_Input_Seireki2:
70210 'else
70220 'b = val(buf_buka_year$)
70230 'buf_buka_year = b * 10 + No
70240 'buf_buka_year$ = str$(buf_buka_year)
70250 'buf_Buka_Born_Day(0) = bufyear
70260 'locate 1,3
70270 'color rgb(255,255,255)
70280 'print "                                                                "
70290 'locate 1,3
70300 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
70310 'if (No = -1) then
70320 'count=1
70330 'goto Buka_Input_Seireki2:
70340 'endif
70350 'case 2:
70360 'count = 3
70370 'if (No = -1) then
70380 'count = 2
70390 'buf_Buka_Born_Day(0)=bufyear
70400 'goto Buka_Input_Seireki2:
70410 'else
70420 'b = val(buf_buka_year$)
70430 'buf_buka_year = b*10 + No
70440 'buf_buka_year$ = str$(buf_buka_year)
70450 'locate 1,3
70460 'color rgb(255,255,255)
70470 'print "                                        "
70480 'locate 1,3
70490 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
70500 'goto Buka_Input_Seireki2:
70510 'endif
70520 'case 3:
70530 'count=4
70540 'if (No = -1) then
70550 'count=3
70560 'goto Buka_Input_Seireki2:
70570 'else
70580 'b = buf_buka_year
70590 'buf_buka_year = b * 10 + No
70600 'buf_buka_year$=str$(buf_buka_year)
70610 'locate 1,3
70620 'color RGB(255,255,255)
70630 'print "                                      "
70640 'locate 1,3
70650 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
70660 'buf_year=val(buf_year$)
70670 'year=val(buf_year$)
70680 'if (No=-1) then
70690 'goto Input_Born_Month:
70700 'else
70710 'goto Buka_Input_Seireki2:
70720 'endif
70730 'case 4:
70740 'bufyear=buf_year
70750 'if (No=-1) then
70760 'buf_year = val(buf_year$)
70770 'bufyear = buf_year
70780 'sp_on 14,0
70790 'goto Buka_Input_Born_Month:
70800 'else
70810 'goto Buka_Input_Seireki2:
70820 'endif
70830 'end select
70840 'endif
70850 'if (bg2 = 2) then
70860 'select case count2
70870 'case 0:
70880 'if (No = -1) then
70890 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
70900 'count=0
70910 'locate 1,3
70920 'color rgb(255,255,255)
70930 'print "                                      "
70940 'locate 1,3
70950 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
70960 'goto Buka_Input_Seireki2:
70970 'else
70980 '(buf_year=0) then
70990 'buf_buka_year=0:buf_buka_year$="****"
71000 'goto Buka_Input_Seireki2:
71010 'endif
71020 'endif
71030 'end select
71040 'endif
71050 'end
71060 'ここまでコメント
71070 '================================================================
71080 if ((bg=2) or (key$=chr$(13))) then
71090 select case count
71100 case 0:
71110 count = 1
71120 if (No=-1) then
71130 count = 0
71140 buf_Buka_Born_Day(0) = No
71150 'Okボタンを押したとき
71160 goto Buka_Input_Seireki2:
71170 else
71180 'Okボタン以外が押されたとき
71190 if (No>=1 and No<=2) then
71200 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
71210 buf_buka_year = No
71220 buf_Buka_Born_Day(0) = No
71230 locate 1,3
71240 color rgb(255,255,255)
71250 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
71260 goto Buka_Input_Seireki2:
71270 else
71280 count=0
71290 ui_msg"数字が範囲外になります。"
71300 buf_buka_year$="":buf_buka_year=0
71310 goto Buka_Input_Seireki2:
71320 endif
71330 endif
71340 case 1:
71350 count = 2
71360 if (No = -1) then
71370 count = 1
71380 goto Buka_Input_Seireki2:
71390 else
71400 'b = val(buf_buka_year$)
71410 buf_buka_year = a * 10 + No
71420 b=buf_buka_year
71430 buf_buka_year$ = str$(buf_buka_year)+"**"
71440 buf_Buka_Born_Day(0)=buf_buka_year
71450 locate 1,3
71460 color rgb(255,255,255)
71470 print "                                                                "
71480 locate 1,3
71490 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
71500 'if (No = -1) then
71510 'count=1
71520 goto Buka_Input_Seireki2:
71530 endif
71540 case 2:
71550 count=3
71560 if (No=-1) then
71570 count =2:No=0
71580 goto Buka_Input_Seireki2:
71590 else
71600 'b = val(buf_buka_year$)
71610 buf_buka_year = b * 10 + No
71620 c = buf_buka_year
71630 buf_buka_year$ = str$(buf_buka_year) + "*"
71640 buf_Buka_Born_Day(0) = buf_buka_year
71650 locate 1,3
71660 color rgb(255,255,255)
71670 print "                                        "
71680 locate 1,3
71690 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
71700 goto Buka_Input_Seireki2:
71710 endif
71720 case 3:
71730 count=4
71740 if (No = -1) then
71750 'count=3:No=0
71760 goto Buka_Input_Seireki2:
71770 else
71780 'b = val(buf_buka_year$)
71790 buf_buka_year=c * 10 + No
71800 buf_buka_year$=str$(buf_buka_year)
71810 buf_Buka_Born_Day(0)=buf_buka_year
71820 locate 1,3
71830 color RGB(255,255,255)
71840 print "                                      "
71850 locate 1,3
71860 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
71870 buf_buka_year=val(buf_buka_year$)
71880 'year=val(buf_year$)
71890 'if (No=-1) then
71900 'goto Input_Born_Month:
71910 'else
71920 goto Buka_Input_Seireki2:
71930 endif
71940 case 4:
71950 'bufyear=buf_year
71960 if (No = -1) then
71970 buf_buka_year = val(buf_buka_year$)
71980 buf_Buka_Born_Day(0)=buf_buka_year
71990 sp_on 14,0
72000 goto Buka_Input_Born_Month:
72010 else
72020 goto Buka_Input_Seireki2:
72030 endif
72040 end select
72050 endif
72060 '================================================================
72070 'ここにコピーする。
72080 '================================================================
72090 'Input"部下の生れた年代(4桁,〜2025年):",year
72100 'if year > 2025 then goto Jyoushi_Input_Seireki:
72110 'if year = 123 then cls 3:cls 4:goto Main_Screen:
72120 '"4桁目"
72130 'bufyear4 = fix(year / 1000)
72140 '"3桁目"
72150 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
72160 '"2桁目"
72170 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
72180 '"1桁目"
72190 'bufyear1 = fix((year - ((bufyear4*
72200 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
72210 '1.部下の生まれた年代'
72220 '2.部下の生まれた月'
72230 Buka_Input_Born_Month:
72240 cls 3:play "":count=0:count2=0
72250 'No=-1:Okのとき
72260 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
72270 for i=0 to 1
72280 buf_month(i)=0
72290 next i
72300 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
72310 gload Gazo$ + "Screen2.png",0,0,0
72320 gload Gazo$ + "downscreen.png",0,0,800
72330 'Init"kb:4"
72340 '音声ファイル再生 2023.06.07
72350 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
72360 font 48
72370 locate 0,1
72380 '文字色：黒　 color rgb(0,0,0)
72390 '文字色:白
72400 color rgb(255,255,255)
72410 print "部下の生まれた月を入れて下さい" + chr$(13)
72420 '文字色:白
72430 color rgb(255,255,255)
72440 locate 1,3
72450 '文字色:白
72460 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
72470 color rgb(255,255,255)
72480 'locate 4,6:print ":7"
72490 'locate 9,6:print ":8"
72500 'locate 12,6:print ":9"
72510 'locate 4,6
72520 '文字色:赤
72530 'print ":7  :8  :9" + chr$(13)
72540 'color rgb(255,255,255)
72550 'locate 4,8
72560 'print ":4  :5  :6" + chr$(13)
72570 'color rgb(255,255,255)
72580 'locate 4,10
72590 'print ":1  :2  :3" + chr$(13)
72600 'locate 4,12
72610 'print "    :0"
72620 'locate 12,12
72630 'color rgb(0,0,255)
72640 'print ":Ok"
72650 sp_on 4,0: sp_on 5,0:sp_on 6,0
72660 sp_on 7,0:sp_on 8,0:sp_on 9,0
72670 sp_on 10,0:sp_on 11,0:sp_on 12,0
72680 sp_on 13,0:sp_on 14,1
72690 Buka_Input_Born_Month2:
72700 key$="":bg=0:y=0:y2=0:bg2=0
72710 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72720 key$ = inkey$
72730 bg = strig(1)
72740 y = stick(1)
72750 y2 = stick(0)
72760 bg2 = strig(0)
72770 pause 200
72780 wend
72790 '十字キー　ここから
72800 '上の矢印　または、十字キー上
72810 if ((y = -1) or (key$ = chr$(30))) then
72820 select case No
72830 'No=-1:okのとき:初期の状態
72840 '0kボタンから３に移動
72850 '上に行く 処理
72860 case -1:
72870 No=3:sp_on 12,1:sp_on 14,0
72880 pause 200:goto Buka_Input_Born_Month2:
72890 '選択肢:3
72900 '3ボタンから 6に移動
72910 case 3:
72920 No=6:sp_on 12,0:sp_on 11,1
72930 pause 200:goto Buka_Input_Born_Month2:
72940 '6ボタンから ９に移動
72950 case 6:
72960 No=9:sp_on 10,1:sp_on 11,0
72970 pause 200:goto Buka_Input_Born_Month2:
72980 '6ボタンから ９に移動　ここまで
72990 '9で上を押して何もしない
73000 case 9:
73010 '何もしない
73020 No=9
73030 pause 200:goto Buka_Input_Born_Month2:
73040 '9で上を押しても何もしない　ここまで
73050 '上　 0ボタンから2ボタン
73060 'sp_on 6,1:1
73070 'sp_on 8,1:5
73080 'sp_on 7,1:7
73090 case 0:
73100 No=2:sp_on 13,0:sp_on 9,1:
73110 pause 200:goto Buka_Input_Born_Month2:
73120 '上  0ボタンから2ボタン　ここまで
73130 '2から５になる 上
73140 case 2:
73150 No=5:sp_on 8,1:sp_on 9,0:
73160 pause 200:goto Buka_Input_Born_Month2:
73170 case 5:
73180 No=8:sp_on 7,1:sp_on 8,0
73190 pause 200:goto Buka_Input_Born_Month2:
73200 case 8:
73210 pause 200:goto Buka_Input_Born_Month2:
73220 case 1:
73230 No=4:sp_on 5,1:sp_on 6,0
73240 pause 200:goto Buka_Input_Born_Month2:
73250 case 4:
73260 No=7:sp_on 4,1:sp_on 5,0
73270 pause 200:goto Buka_Input_Born_Month2:
73280 case 7:
73290 pause 200:goto Buka_Input_Born_Month2:
73300 end select
73310 endif
73320 '左３　ここまで
73330 '下の矢印
73340 '中央 2
73350 if ((y=1) or (key$ = chr$(31))) then
73360 select case No
73370 '9から６に下げる
73380 case 9:
73390 No=6:sp_on 11,1:sp_on 10,0
73400 pause 200:goto Buka_Input_Born_Month2:
73410 '6から３に下げる
73420 case 6:
73430 No=3:sp_on 12,1:sp_on 11,0
73440 pause 200:goto Buka_Input_Born_Month2:
73450 '3から０ｋに変える
73460 case 3:
73470 No=-1:sp_on 14,1:sp_on 12,0
73480 pause 200:goto Buka_Input_Born_Month2:
73490 'Okから下のボタンを押しても何もしない
73500 case -1:
73510 pause 200:goto Buka_Input_Born_Month2:
73520 case 8:
73530 No=5:sp_on 8,1:sp_on 7,0
73540 pause 200:goto Buka_Input_Born_Month2:
73550 case 5:
73560 No=2:sp_on 9,1:sp_on 8,0
73570 pause 200:goto Buka_Input_Born_Month2:
73580 case 2:
73590 No=0:sp_on 13,1:sp_on 9,0
73600 pause 200:goto Buka_Input_Born_Month2:
73610 case 0:
73620 pause 200:goto Buka_Input_Born_Month2:
73630 case 7:
73640 No=4:sp_on 5,1:sp_on 4,0
73650 pause 200:goto Buka_Input_Born_Month2:
73660 case 4:
73670 No=1:sp_on 6,1:sp_on 5,0
73680 pause 200:goto Buka_Input_Born_Month2:
73690 case 1:
73700 pause 200:goto Buka_Input_Born_Month2:
73710 end select
73720 endif
73730 '左へボタン 十字キー　左　or 　カーソル左
73740 if ((y2 = -1) or (key$ = chr$(29))) then
73750 select case No
73760 'Ok ボタン  Okから　左　０に行く
73770 case -1:
73780 No=0:sp_on 13,1:sp_on 14,0
73790 pause 200:goto Buka_Input_Born_Month2:
73800 '0 ボタン  左　何もしない
73810 case 0:
73820 pause 200:goto Buka_Input_Born_Month2:
73830 case 3:
73840 No=2:sp_on 9,1:sp_on 12,0:
73850 pause 200:goto Buka_Input_Born_Month2:
73860 case 2:
73870 No=1:sp_on 6,1:sp_on 9,0:
73880 pause 200:goto Buka_Input_Born_Month2:
73890 case 1:
73900 pause 200:goto Buka_Input_Born_Month2:
73910 case 6:
73920 No=5:sp_on 8,1:sp_on 11,0
73930 pause 200:goto Buka_Input_Born_Month2:
73940 case 5:
73950 No=4:sp_on 5,1:sp_on 8,0
73960 pause 200:goto Buka_Input_Born_Month2:
73970 case 4:
73980 pause 200:goto Buka_Input_Born_Month2:
73990 case 9:
74000 No=8:sp_on 7,1:sp_on 10,0
74010 pause 200:goto Buka_Input_Born_Month2:
74020 case 8:
74030 No=7:sp_on 4,1:sp_on 7,0
74040 pause 200:goto Buka_Input_Born_Month2:
74050 case 7:
74060 pause 200:goto Buka_Input_Born_Month2:
74070 end select
74080 endif
74090 '右  十字キー　右　or カーソル　右
74100 if ((y2 = 1) or (key$ = chr$(28))) then
74110 select case No
74120 '0ボタンからokボタン右に移動
74130 case 0:
74140 No=-1:sp_on 14,1:sp_on 13,0
74150 pause 200:goto Buka_Input_Born_Month2:
74160 '0ボタンからokボタン 右に移動　ここまで
74170 'OKボタンで右を押して何もしない
74180 case -1:
74190 pause 200:goto Buka_Input_Born_Month2:
74200 case 1:
74210 No=2:sp_on 9,1:sp_on 6,0
74220 pause 200:goto Buka_Input_Born_Month2:
74230 case 2:
74240 No=3:sp_on 12,1:sp_on 9,0
74250 pause 200:goto Buka_Input_Born_Month2:
74260 case 3:
74270 pause 200:goto Buka_Input_Born_Month2:
74280 case 4:
74290 No=5:sp_on 8,1:sp_on 5,0
74300 pause 200:goto Buka_Input_Born_Month2:
74310 case 5:
74320 No=6:sp_on 11,1:sp_on 8,0
74330 pause 200:goto Buka_Input_Born_Month2:
74340 case 7:
74350 No=8:sp_on 7,1:sp_on 4,0
74360 pause 200:goto Buka_Input_Born_Month2:
74370 case 8:
74380 No=9:sp_on 10,1:sp_on 7,0
74390 pause 200:goto Buka_Input_Born_Month2:
74400 case 9:
74410 pause 200:goto Buka_Input_Born_Month2:
74420 case 6:
74430 pause 200:goto Buka_Input_Born_Month2:
74440 end select
74450 'Okから右ボタンを押して何もしない ここまで
74460 endif
74470 '十字キー　ここまで
74480 '右の丸ボタン　決定キー
74490 if ((bg=2) or (key$=chr$(13))) then
74500 select case count
74510 case 0:
74520 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
74530 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
74540 locate 1,3
74550 color RGB(255,255,255)
74560 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
74570 goto Buka_Input_Born_Month2:
74580 case 1:
74590 count = 2:buf_buka_month=a*10+No
74600 if (No = -1) then
74610 'count=0
74620 month=buf_buka_month
74630 buf_buka_month=val(buf_buka_Month$)
74640 month=buf_buka_month
74650 '生まれた日に飛ぶ
74660 goto Buka_Input_Born_Day:
74670 else
74680 buf_buka_month = a * 10 + No
74690 buf_buka_Month$ = str$(buf_buka_month)
74700 buf_Buka_Born_Day(1) = buf_buka_month
74710 locate 1,3
74720 color Rgb(255,255,255)
74730 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
74740 goto Buka_Input_Born_Month2:
74750 endif
74760 case 2:
74770 count=3
74780 'c= val(buf_Month$)
74790 'buf_month = c*10 + No
74800 'buf_Month$ = str$(buf_month)
74810 'locate 2,3
74820 'print "部下の生まれた月(1月～12月):";buf_Month$
74830 'goto Buka_Input_Born_Month2:
74840 'case 3:
74850 'count=4
74860 'b=val(buf_month$)
74870 'buf_month=c*10+No
74880 'buf_Month$=str$(buf_month)
74890 'locate 2,3
74900 'print "部下の生まれた月(1月～12月):";buf_Month$
74910 'buf_month=val(buf_Month$)
74920 'year=val(buf_year$)
74930 if (No=-1) then
74940 goto Buka_Input_Born_Day:
74950 else
74960 goto Input_Born_Month2:
74970 endif
74980 'case 4:
74990 'bufyear=buf_year
75000 'if (No=-1) then
75010 'buf_month = val(buf_Month$)
75020 'month = buf_month
75030 'sp_on 14,0
75040 'goto Input_Born_Day:
75050 'else
75060 'goto Input_Born_Month2:
75070 'endif
75080 end select
75090 endif
75100 '左の丸ボタン　キャンセル
75110 if (bg2=2) then
75120 select case count2
75130 case 0:
75140 if (No = -1) then
75150 buf_buka_month=0:buf_buka_Month$="**"
75160 count=0
75170 goto rewrite2:
75180 else
75190 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
75200 buf_month=0:buf_Month$="**"
75210 locate 2,3
75220 color rgb(255,255,255)
75230 print "                                       "
75240 goto rewrite2:
75250 if (No>12) then
75260 ui_msg"値が範囲外です。"
75270 goto rewrite2:
75280 endif
75290 endif
75300 endif
75310 rewrite2:
75320 locate 2,3
75330 color rgb(255,255,255)
75340 print "                                      "
75350 locate 2,3
75360 print "部下の生まれた月(1月~12月):";buf_buka_Month$
75370 goto Buka_Input_Born_Month2:
75380 end select
75390 'endif
75400 endif
75410 end
75420 '2.部下の生まれた月'
75430 '3.部下の生まれた日'
75440 '生れた日を入力
75450 Buka_Input_Born_Day:
75460 '生まれた日入力
75470 cls 3:play ""
75480 'No=-1:Okのとき
75490 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
75500 for i=0 to 1
75510 buf_day(i)=0
75520 next i
75530 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
75540 gload Gazo$ + "Screen2.png",0,0,0
75550 gload Gazo$ + "downscreen.png",0,0,800
75560 'Init"kb:2"
75570 '音声ファイル再生 2023.06.07
75580 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
75590 font 48
75600 locate 0,1
75610 '文字色：黒　 color rgb(0,0,0)
75620 color rgb(255,255,255)
75630 print "部下の生まれた日を入れて下さい" + chr$(13)
75640 color rgb(255,255,255)
75650 locate 1,3
75660 print "部下の生まれた日(1日~31日):";buf_Day$
75670 color rgb(255,255,255)
75680 'locate 4,6:print ":7"
75690 'locate 9,6:print ":8"
75700 'locate 12,6:print ":9"
75710 'locate 4,6
75720 'print ":7  :8  :9" + chr$(13)
75730 'color rgb(255,255,255)
75740 'locate 4,8
75750 'print ":4  :5  :6" + chr$(13)
75760 'color rgb(255,255,255)
75770 'locate 4,10
75780 'print ":1  :2  :3" + chr$(13)
75790 'locate 4,12
75800 'print "    :0"
75810 'locate 12,12
75820 'color rgb(0,0,255)
75830 'print ":Ok"
75840 sp_on 4,0: sp_on 5,0:sp_on 6,0
75850 sp_on 7,0:sp_on 8,0:sp_on 9,0
75860 sp_on 10,0:sp_on 11,0:sp_on 12,0
75870 sp_on 13,0:sp_on 14,1
75880 Buka_Input_Born_Day2:
75890 '
75900 key$="":bg=0:y=0:y2=0:bg2=0
75910 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
75920 key$ = inkey$
75930 bg = strig(1)
75940 y = stick(1)
75950 y2 = stick(0)
75960 bg2 = strig(0)
75970 pause 200
75980 wend
75990 '十字キー　ここから
76000 '上の矢印　または、十字キー上
76010 if ((y = -1) or (key$ = chr$(30))) then
76020 select case No
76030 'No=-1:okのとき:初期の状態
76040 '0kボタンから３に移動
76050 '上に行く 処理
76060 case -1:
76070 No=3:sp_on 12,1:sp_on 14,0
76080 pause 200:goto Buka_Input_Born_Day2:
76090 '選択肢:3
76100 '3ボタンから 6に移動
76110 case 3:
76120 No=6:sp_on 12,0:sp_on 11,1
76130 pause 200:goto Buka_Input_Born_Day2:
76140 '6ボタンから ９に移動
76150 case 6:
76160 No=9:sp_on 10,1:sp_on 11,0
76170 pause 200:goto Buka_Input_Born_Day2:
76180 '6ボタンから ９に移動　ここまで
76190 '9で上を押して何もしない
76200 case 9:
76210 '何もしない
76220 No=9
76230 pause 200:goto Buka_Input_Born_Day2:
76240 '9で上を押しても何もしない　ここまで
76250 '上　 0ボタンから2ボタン
76260 'sp_on 6,1:1
76270 'sp_on 8,1:5
76280 'sp_on 7,1:7
76290 case 0:
76300 No=2:sp_on 13,0:sp_on 9,1:
76310 pause 200:goto Buka_Input_Born_Day2:
76320 '上  0ボタンから2ボタン　ここまで
76330 '2から５になる 上
76340 case 2:
76350 No=5:sp_on 8,1:sp_on 9,0:
76360 pause 200:goto Buka_Input_Born_Day2:
76370 case 5:
76380 No=8:sp_on 7,1:sp_on 8,0
76390 pause 200:goto Buka_Input_Born_Day2:
76400 case 8:
76410 pause 200:goto Buka_Input_Born_Day2:
76420 case 1:
76430 No=4:sp_on 5,1:sp_on 6,0
76440 pause 200:goto Buka_Input_Born_Day2:
76450 case 4:
76460 No=7:sp_on 4,1:sp_on 5,0
76470 pause 200:goto Buka_Input_Born_Day2:
76480 case 7:
76490 pause 200:goto Buka_Input_Born_Day2:
76500 end select
76510 endif
76520 '左３　ここまで
76530 '下の矢印
76540 '中央 2
76550 if ((y=1) or (key$ = chr$(31))) then
76560 select case No
76570 '9から６に下げる
76580 case 9:
76590 No=6:sp_on 11,1:sp_on 10,0
76600 pause 200:goto Buka_Input_Born_Day2:
76610 '6から３に下げる
76620 case 6:
76630 No=3:sp_on 12,1:sp_on 11,0
76640 pause 200:goto Buka_Input_Born_Day2:
76650 '3から０ｋに変える
76660 case 3:
76670 No=-1:sp_on 14,1:sp_on 12,0
76680 pause 200:goto Buka_Input_Born_Day2:
76690 'Okから下のボタンを押しても何もしない
76700 case -1:
76710 pause 200:goto Buka_Input_Born_Day2:
76720 case 8:
76730 No=5:sp_on 8,1:sp_on 7,0
76740 pause 200:goto Buka_Input_Born_Day2:
76750 case 5:
76760 No=2:sp_on 9,1:sp_on 8,0
76770 pause 200:goto Buka_Input_Born_Day2:
76780 case 2:
76790 No=0:sp_on 13,1:sp_on 9,0
76800 pause 200:goto Buka_Input_Born_Day2:
76810 case 0:
76820 pause 200:goto Buka_Input_Born_Day2:
76830 case 7:
76840 No=4:sp_on 5,1:sp_on 4,0
76850 pause 200:goto Buka_Input_Born_Day2:
76860 case 4:
76870 No=1:sp_on 6,1:sp_on 5,0
76880 pause 200:goto Buka_Input_Born_Day2:
76890 case 1:
76900 pause 200:goto Buka_Input_Born_Day2:
76910 end select
76920 endif
76930 '左へボタン 十字キー　左　or 　カーソル左
76940 if ((y2 = -1) or (key$ = chr$(29))) then
76950 select case No
76960 'Ok ボタン  Okから　左　０に行く
76970 case -1:
76980 No=0:sp_on 13,1:sp_on 14,0
76990 pause 200:goto Buka_Input_Born_Day2:
77000 '0 ボタン  左　何もしない
77010 case 0:
77020 pause 200:goto Buka_Input_Born_Day2:
77030 case 3:
77040 No=2:sp_on 9,1:sp_on 12,0:
77050 pause 200:goto Buka_Input_Born_Day2:
77060 case 2:
77070 No=1:sp_on 6,1:sp_on 9,0:
77080 pause 200:goto Buka_Input_Born_Day2:
77090 case 1:
77100 pause 200:goto Buka_Input_Born_Day2:
77110 case 6:
77120 No=5:sp_on 8,1:sp_on 11,0
77130 pause 200:goto Buka_Input_Born_Day2:
77140 case 5:
77150 No=4:sp_on 5,1:sp_on 8,0
77160 pause 200:goto Buka_Input_Born_Day2:
77170 case 4:
77180 pause 200:goto Buka_Input_Born_Day2:
77190 case 9:
77200 No=8:sp_on 7,1:sp_on 10,0
77210 pause 200:goto Buka_Input_Born_Day2:
77220 case 8:
77230 No=7:sp_on 4,1:sp_on 7,0
77240 pause 200:goto Buka_Input_Born_Day2:
77250 case 7:
77260 pause 200:goto Buka_Input_Born_Day2:
77270 end select
77280 endif
77290 '右  十字キー　右　or カーソル　右
77300 if ((y2 = 1) or (key$ = chr$(28))) then
77310 select case No
77320 '0ボタンからokボタン右に移動
77330 case 0:
77340 No=-1:sp_on 14,1:sp_on 13,0
77350 pause 200:goto Buka_Input_Born_Day2:
77360 '0ボタンからokボタン 右に移動　ここまで
77370 'OKボタンで右を押して何もしない
77380 case -1:
77390 pause 200:goto Buka_Input_Born_Day2:
77400 case 1:
77410 No=2:sp_on 9,1:sp_on 6,0
77420 pause 200:goto Buka_Input_Born_Day2:
77430 case 2:
77440 No=3:sp_on 12,1:sp_on 9,0
77450 pause 200:goto Buka_Input_Born_Day2:
77460 case 3:
77470 pause 200:goto Buka_Input_Born_Day2:
77480 case 4:
77490 No=5:sp_on 8,1:sp_on 5,0
77500 pause 200:goto Buka_Input_Born_Day2:
77510 case 5:
77520 No=6:sp_on 11,1:sp_on 8,0
77530 pause 200:goto Buka_Input_Born_Day2:
77540 case 7:
77550 No=8:sp_on 7,1:sp_on 4,0
77560 pause 200:goto Buka_Input_Born_Day2:
77570 case 8:
77580 No=9:sp_on 10,1:sp_on 7,0
77590 pause 200:goto Buka_Input_Born_Day2:
77600 case 9:
77610 pause 200:goto Buka_Input_Born_Day2:
77620 case 6:
77630 pause 200:goto Buka_Input_Born_Day2:
77640 end select
77650 'Okから右ボタンを押して何もしない ここまで
77660 endif
77670 '十字キー　ここまで
77680 '右の丸ボタンを押したとき
77690 if ((bg = 2) or (key$ = chr$(13))) then
77700 'count :決定ボタンを押した回数
77710 select case (count)
77720 '1桁目入力
77730 case 0:
77740 count = 1:
77750 if (No = -1) then
77760 '1桁目　OKでは何もしない
77770 'goto check:
77780 No=0
77790 else
77800 'ok以外のボタンを押したとき
77810 buf_buka_day = No:buf_buka_Day$ = str$(No)
77820 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
77830 buf_buka_Day$ = str$(No) + "*"
77840 endif
77850 a=No
77860 buf_Buka_Born_Day(2) = buf_buka_day
77870 locate 1,3
77880 print"                                      "
77890 color RGB(255,255,255)
77900 locate 1,3
77910 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
77920 endif
77930 check2:
77940 if (No >= 1 and No <= 9) then
77950 sp_on 14,0
77960 goto Buka_Input_Born_Day2:
77970 else
77980 sp_on 14,0
77990 goto Result_Business_Aisyou:
78000 end
78010 endif
78020 case 1:
78030 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
78040 count = 2:
78050 'locate 2,3
78060 'color RGB(255,255,255)
78070 'print "生まれた日(1日~31日):";buf_Day$
78080 'Okボタンを押したときの処理
78090 '入力値　10未満のとき
78100 'c = buf_day
78110 if (No = -1) then
78120 'c=buf_day
78130 ' buf_day = c
78140 'buf_Day$ = str$(buf_day)
78150 '10以下のとき
78160 No=0
78170 if (buf_day < 10) then
78180 sp_on 14,0
78190 goto Result_Business_Aisyou:
78200 end
78210 endif
78220 else
78230 sp_on 14,0
78240 'c=No
78250 buf_buka_day = a * 10 + No
78260 buf_buka_Day$ = str$(buf_buka_day)
78270 buf_Buka_Born_Day(2) = buf_buka_day
78280 locate 0,3
78290 color Rgb(255,255,255)
78300 print "                                       "
78310 locate 1,3
78320 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
78330 goto Buka_Input_Born_Day2:
78340 endif
78350 '生まれた日　2桁目の数字　or 1桁の数字 + ok
78360 case 2:
78370 count=0
78380 'c=val(buf_Day$)
78390 'buf_day=c*10+No
78400 'buf_Day$=str$(buf_day)
78410 'day=buf_day
78420 'locate 2,3
78430 'print "生まれた日(1日〜31日):";buf_Day$
78440 'No=-1:ok ボタンを押したとき
78450 if (No = -1) then No=0
78460 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
78470 sp_on 14,0
78480 goto Result_Business_Aisyou:
78490 else
78500 goto Buka_Input_Born_Day2:
78510 endif
78520 'Okボタン以外を押したとき
78530 else
78540 c=val(buf_buka_Day$)
78550 buf_buka_day = c * 10 + No
78560 buf_buka_Day$ = str$(buf_buka_day)
78570 locate 1,3
78580 print "                "
78590 locate 1,3
78600 print "生まれた日(1日~31日):"+buf_buka_Day$
78610 goto Buka_Input_Born_Day2:
78620 'endif
78630 case 3:
78640 count=4
78650 'c=val(buf_day$)
78660 'buf_day=c*10+No
78670 'buf_day$=str$(buf_day)
78680 'locate 2,3
78690 'print "生まれた日を入れてください:";buf_day$
78700 'year=val(buf_year$)
78710 if (No = -1) then
78720 'goto Buka_Input_Born_Day:
78730 sp_on 14,0:
78740 goto complate_jyoushi:
78750 else
78760 goto Buka_Input_Born_Month2:
78770 endif
78780 'case 4:
78790 'bufyear=buf_year
78800 'if (No=-1) then
78810 'buf_day = val(buf_day$)
78820 'bufday = buf_day
78830 'sp_on 14,0
78840 goto complate_jyoushi:
78850 'else
78860 'goto Buka_Input_Born_Day2:
78870 'endif
78880 end select
78890 endif
78900 if (bg2=2) then
78910 select case count2
78920 case 0:
78930 if (No=-1) then
78940 'buf_day=0:buf_Day$="**"
78950 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
78960 count=0
78970 buf_buka_day=0:buf_buka_Day$="**"
78980 goto rewrite_day3:
78990 else
79000 buf_buka_day=0:buf_buka_Day$="**"
79010 ui_msg"値が範囲外です"
79020 endif
79030 goto rewrite_day3:
79040 else
79050 goto rewrite_day3:
79060 endif
79070 rewrite_day3:
79080 locate 2,3
79090 color rgb(255,255,255)
79100 print "                                      "
79110 locate 1,3
79120 print "生まれた日(1日~31日):"+buf_buka_Day$
79130 goto Buka_Input_Born_Day2:
79140 end select
79150 endif
79160 '3.部下の生まれた日'
79170 '部下'
79180 '--------------------------------------------'
79190 'ビジネの相性　結果表示
79200 Result_Business_Aisyou:
79210 cls 3:init "kb:4"
79220 a=0:b=0:c=0:d=0:e=0:f=0
79230 bg=0:key$=""
79240 gload Gazo$ + "Screen1.png",0,0,0
79250 gload Gazo$ + "downscreen.png",0,0,800
79260 sp_on 14,0
79270 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
79280 buf_Buka = Kabara_Num(d,e,f)
79290 a_2 = buf_Buka
79300 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
79310 locate 0,1
79320 color rgb(255,0,0)
79330 print "●.相性診断結果１"
79340 locate 0,4:
79350 color rgb(255,255,255)
79360 print "1.上司の名前:";buffer_name$(0)
79370 locate 0,6
79380 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
79390 locate 0,8
79400 print "2.部下の名前:";buffer_name$(1)
79410 locate 0,10
79420 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
79430 locate 0,12
79440 print "3.上司と部下の相性:";Result_Aisyou$
79450 locate 1,15
79460 color rgb(0,0,0)
79470 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
79480 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
79490 bg = strig(1)
79500 key$ = inkey$
79510 bg2 = strig(0)
79520 pause 5
79530 wend
79540 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
79550 if (bg2 = 2) then
79560 cls 3:goto Business_Aishou_Input_1_parson:
79570 endif
79580 'ビジネスの相性占い　結果2　説明
79590 Result_Business_Aisyou2:
79600 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
79610 gload Gazo$ + "Screen1.png",0,0,0
79620 locate 0,1
79630 color rgb(255,0,0)
79640 print "●.相性の説明"
79650 color rgb(255,255,255)
79660 locate 0,4
79670 print "相性:";Result_Aisyou$
79680 locate 0,6:
79690 print "相性の説明:";buf$
79700 locate 0,15
79710 color rgb(0,0,0)
79720 print "右の丸ボタン:トップ,左のボタン:前の画面"
79730 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
79740 bg = strig(1)
79750 bg2 = strig(0)
79760 key$ = inkey$
79770 pause 200
79780 wend
79790 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
79800 if ((bg2 = 2)) then goto Result_Business_Aisyou:
79810 'Birds Eye Menu List
79820 Result_Birtheye_List1:
79830 'dim List$(4) Topに定義
79840 List$(0) = "1.バーズアイグリッドをもう一度診断"
79850 List$(1) = "2.診断結果"
79860 List$(2) = "3.データーを保存"
79870 List$(3) = "4.トップ画面に戻る"
79880 Birds_List1 = ui_select("List$","Menu")
79890 select case (Birds_List1)
79900 case 0: '1.もう一度診断
79910 for i=0 to 8
79920 buffer(i)=0
79930 next i
79940 goto Input_name1_Birdseye:
79950 case 1: '2.次へ行く
79960 gosub BirdsEye_Result2:
79970 case 2: '3.データーを保存
79980 ui_msg "データーを保存します"
79990 goto BirdsEye_Save_data:
80000 case 3: '4.トップに戻る
80010 for i=0 to 8
80020 buffer(i)=0
80030 next i
80040 goto Main_Screen:
80050 end select
80060 'BirdsEye Data Save
80070 BirdsEye_Save_data:
80080 if dir$(Save_data_Birdseye$) = "" then
80090 Mkdir Save_data_Birdseye$
80100 endif
80110 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
80120 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
80130 close #1
80140 ui_msg "データーを保存しました"
80150 goto Result_Birtheye_List1:
80160 'return
80170 '自作関数 ここから
80180 BirdsEyeGrid_Entry:
80190 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
80200 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
80210 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
80220 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
80230 locate 1,4:print "右の丸:メイン画面へ行く"
80240 else
80250 flag=1
80260 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
80270 while (eof(1)=0)
80280 line input #1,a$
80290 n = n + 1
80300 wend
80310 close #1
80320 'endif
80330 talk "登録件数は"+str$(n)+"件です。"
80340 locate 1,2:print "登録件数は";str$(n);"件です"
80350 locate 1,4:print "左の丸：メイン画面へ行く"
80360 endif
80370 Entry_Count:
80380 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
80390 key$ = inkey$
80400 bg = strig(1)
80410 bg2 = strig(0)
80420 pause 200
80430 wend
80440 if ((bg = 2) or (key$ = chr$(13))) then
80450 if (n = 0) then
80460 '登録件数　０件のとき　メイン画面に行く
80470 goto Main_Screen:
80480 else
80490 '登録件数1件以上　次へ行く
80500 'ここを変更する
80510 goto Entry_List:
80520 endif
80530 endif
80540 if (bg2 = 2) then
80550 if (n > 0) then
80560 goto Main_Screen:
80570 else
80580 goto Entry_Count:
80590 endif
80600 endif
80610 Entry_List:
80620 cls 3:play"":color rgb(255,255,255)
80630 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
80640 dim buffer_List$(11,n)
80650 'ファイル読み込み ここから
80660 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
80670 for i=0 to 10
80680 for j=0 to n-1
80690 input #1,a$
80700 buffer_List$(i,j)=a$
80710 next j
80720 next i
80730 close #1
80740 'erase buffer_List$
80750 'color rgb(255,255,255)
80760 i=0:key$="":bg=0:init"kb:4":bg2=0
80770 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
80780 key$ = inkey$
80790 bg = strig(1)
80800 bg2=strig(0)
80810 pause 200
80820 wend
80830 color rgb(0,0,0)
80840 locate 1,15:print "次へ"
80850 'show_ListData:
80860 'j=0
80870 repeat (j=0)
80880 show_ListData:
80890 cls
80900 color rgb(255,255,255)
80910 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
80920 '1の文字データー
80930 locate 4,14:print buffer_List$(2,j)
80940 '2の文字データー
80950 locate 4,9:print buffer_List$(3,j)
80960 '3の文字データー
80970 locate 4,5:print buffer_List$(4,j)
80980 '4の文字データー
80990 locate 11,14:print buffer_List$(5,j)
81000 '5の文字データー
81010 locate 11,9:PRINT buffer_List$(6,j)
81020 '6の文字データー
81030 locate 11,5:print buffer_List$(7,j)
81040 '7の文字データー
81050 locate 16,14:print buffer_List$(8,j)
81060 '8の文字データー
81070 locate 16,9:print buffer_List$(9,j)
81080 '9の文字データー
81090 locate 16,5:print buffer_List$(10,j)
81100 color rgb(0,0,0)
81110 locate 1,15:print "右の丸：次へ"
81120 if (bg=2 or key$=chr$(13)) then
81130 j=j+1
81140 endif
81150 if (bg2=2) then
81160 goto Main_Screen:
81170 endif
81180 until (j=n)
81190 'erase buffer_List$:
81200 goto show_ListData:
81210 'ファイル読み込み　ここまで
81220 func read_explain$(ba$)
81230 d$=""
81240 buf_String$=""
81250 if ba$="A" then
81260 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
81270 line input #1,a$
81280 a1$=mid$(a$,1,12)
81290 a2$=mid$(a$,13,17)
81300 a3$=mid$(a$,30,17)
81310 a4$=mid$(a$,47,18)
81320 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
81330 buf_String$ = a5$
81340 close #1
81350 endif
81360 if ba$="B"  then
81370 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
81380 line input #1,b$
81390 b1$=mid$(b$,1,15)
81400 b2$=mid$(b$,16,21)
81410 'b3$=mid$(b$,33,3)
81420 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
81430 buf_String$ = b4$
81440 close #1
81450 endif
81460 if ba$="C"  then
81470 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
81480 line input #1,c$
81490 c1$ = Mid$(c$,1,15)
81500 c2$ = Mid$(c$,16,33)
81510 c3$ = c1$ + chr$(13) + c2$
81520 buf_String$ = c3$
81530 close #1
81540 endif
81550 if ba$="D" then
81560 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
81570 line input #1,d$
81580 d1$=mid$(d$,1,15)
81590 d2$=mid$(d$,16,22)
81600 d3$=mid$(d$,38,7)
81610 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
81620 buf_String$ = d4$
81630 close #1
81640 endif
81650 if ba$="E"  then
81660 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
81670 line input #1,e$
81680 e1$=Mid$(e$,1,16)
81690 e2$=Mid$(e$,17,16)
81700 e3$=Mid$(e$,33,12)
81710 e4$=Mid$(e$,45,17)
81720 e5$=Mid$(e$,62,17)
81730 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
81740 buf_String$ = e6$
81750 close #1
81760 endif
81770 if ba$="F" then
81780 '改行を追加して表示を調整
81790 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
81800 line input #1,f$
81810 f1$=Mid$(f$,1,15)
81820 f2$=Mid$(f$,16,12)
81830 buf_String$ = f1$+chr$(13)+f2$
81840 close #1
81850 endif
81860 if ba$="G" then
81870 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
81880 line input #1,g$
81890 g1$ = mid$(g$,1,16)
81900 g2$ = mid$(g$,17,18)
81910 g3$ = mid$(g$,36,21)
81920 g4$ = mid$(g$,56,6)
81930 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
81940 buf_String$ = g5$
81950 close #1
81960 endif
81970 if ba$="H" then
81980 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
81990 line input #1,h$
82000 h1$=Mid$(h$,1,17)
82010 h2$=Mid$(h$,18,21)
82020 h3$=Mid$(h$,39,20)
82030 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
82040 buf_String$ = h$
82050 close #1
82060 endif
82070 if ba$ = "I" then
82080 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
82090 line input #1,i$
82100 i1$=Mid$(i$,1,10)
82110 i2$=Mid$(i$,11,13)
82120 i3$=Mid$(i$,25,16)
82130 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
82140 buf_String$ = i$
82150 close #1
82160 endif
82170 buffer$ = buf_String$
82180 endfunc buffer$
82190 'カバラ数（数秘番号を求める）
82200 func Kabara_Num(buffer_Year,month,day)
82210 '=============================
82220 'a1:4桁のうちの1桁目を求める
82230 '例 a1:1234の4が1桁目
82240 'a2:4桁のうちの2桁目を求める
82250 '例:a2:1234の3が2桁目
82260 'a3:4桁のうちの3桁目を求める
82270 '例 a3:1234の2が3桁目
82280 'a4:4桁のうちの4桁目を求める
82290 '例 a4:1234の1が4桁目
82300 '==============================
82310 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
82320 Year = buffer_Year
82330 '処理1　整数部分を取り出す。
82340 a4 = fix(Year / 1000)
82350 a3 = fix(Year / 100) - (a4 * 10)
82360 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
82370 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
82380 '処理　２　取り出した整数部分を足す。
82390 a_ = a1 + a2 + a3 + a4 +month + day
82400 'a1=0:a2=0:a3=0:a4=0
82410 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
82420 buffer = a_
82430 'else
82440 goto recomp2:
82450 'if (a_ = 10) then
82460 '  buffer = 1
82470 endif
82480 recomp2:
82490 a5=0:a6=0
82500 a5 = fix(a_ / 10)
82510 a6 = (a_) - (a5 * 10)
82520 a_ = a5 + a6
82530 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
82540 '結果に行く
82550 goto Res2:
82560 '  if ((a_>11) and (a_<99)) then
82570 else
82580 '再度計算
82590 goto recomp2:
82600 endif
82610 '     a1 = fix(a_ / 10)
82620 '     a2 = a_ - (a1 * 10)
82630 '     a_ = a1 + a2
82640 '     buffer = a_
82650 'endif
82660 'else
82670 '    bffer = a_
82680 'endif
82690 'endif
82700 'else
82710 'talk "プログラムを終了します。"
82720 'end
82730 'endif
82740 'kabara = 10
82750 Res2:
82760 kabara = a_
82770 endfunc kabara
82780 func Kabara_Aisyou$(buff1,buff2)
82790 a=0:b=0
82800 '範囲　1~9
82810 if ((buff1 > 0 and buff1 < 10)) then
82820 a = buff1
82830 else
82840 Select case buff1
82850 case 11:
82860 buff1=9:a=buff1
82870 case 22:
82880 buff1=10:a=buff1
82890 end select
82900 endif
82910 '範囲　１~９
82920 if ((buff2 > 0 and buff2 < 10)) then
82930 b = buff2
82940 else
82950 select case buff2
82960 case 11:
82970 buff2=9:b=buff2
82980 case 12:
82990 buff2=10:b=buff2
83000 end select
83010 endif
83020 Aisyou$ = Buffer_Business_Aisyou$(a,b)
83030 endfunc Aisyou$
83040 '=============================
83050 '自作関数 ここまで
83060 '1.数秘術　トップ画面
83070 '
83080 'Data_eraseを一番最後に持ってくる
83090 '=============================
83100 Data_erase:
83110 'メモリー削除
83120 erase buf_male_year
83130 erase buf_male_month
83140 erase buf_male_Born_Day
83150 erase buf_feMale_Born_Day
83160 erase buf_female_day
83170 erase buf_name1$
83180 erase buf_name2$
83190 erase buffer
83200 erase buf_chart$
83210 erase Buffer_Business_Aisyou$
83220 erase buffer_name$
83230 '上司の誕生日
83240 erase buf_Jyoushi_Born_Day
83250 '部下の誕生日
83260 erase buf_Buka_Born_Day
83270 erase buf_year
83280 erase buf_month
83290 erase buf_day
83300 'フォーカスライン
83310 erase Forcus1_buffer$
83320 erase Forcus2_buffer$
83330 erase Forcus3_buffer$
83340 'erase buffer_List$
83350 'Birds eye List Data 配列
83360 erase List$
83370 buffer$ = ""
83380 buf$ = ""
83390 buf_year$ = ""
83400 buf_Jyoushi_Kabara_Num = 0
83410 buf_Buka_Kabara_Num = 0
83420 count = 0
83430 buf_Month$ = ""
83440 buf_Day$ = ""
83450 b=0
83460 c=0
83470 No=0
83480 return
