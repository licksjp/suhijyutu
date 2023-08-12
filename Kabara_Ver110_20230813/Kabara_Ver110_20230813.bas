100 '(プログラムを)終了するを選択
110 cls 3
120 '数秘術占い 2019.08.16
130 '改変履歴
140 '"2021.03.31 α版 画面背景アップデート"
150 '"2021.04.02 β版 更にアップデート音声追加"
160 '"2021.04.03 β2版 画面表示拡張"
170 '"2023.05.20 β3版　入力方式拡張"
180 'Version 更新履歴
190 '2023.06.04:Ver100_20230604
200 '2023.06.11:Ver101_20230611
210 '2023.06.18:Ver102_20230618
220 '2023.06.25:Ver103_20230625
230 '2023.07.02:Ver104_20230702
240 '2023.07.09:Ver105_20230709
250 '2023.07.16:Ver106_20230716
260 '2023.07.23:Ver107_20230723
270 '2023.07.30:Ver108_20230730
280 '2023.08.06:Ver109_20230806
290 '2023.08.13:Ver110_20230813
300 Version$ = "Ver:1.1.0_20230813"
310 'Gazo file Folder
320 Gazo$ = "./data/Picture/"
330 'Voice files 2023
340 Voice$ = "./data/Voice/Voice/"
350 'BirtheyeChart Data:20230626
360 Birth_eye_chart$ = "./data/chart_data/"
370 'Data File
380 Data$ = "./data/data/"
390 '変数定義 パート
400 b=0:c=0
410 dim buf_name1$(10),buf_name2$(10)
420 dim buffer(9),buf_chart$(26,2)
430 'ビジネスの相性　データー
440 dim Buffer_Business_Aisyou$(12,12)
450 '生れた年代
460 dim buf_year(4):buf_year$=""
470 dim buf_month(2)
480 dim buf_day(2)
490 '生れた月
500 buf_Month$ = ""
510 '生れた日
520 buf_Day$ = ""
530 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
540 dim buffer_name$(3)
550 '1-1.上司の誕生日(数値データー)
560 dim buf_Jyoushi_Born_Day(3)
570 '1-2.上司の数秘ナンバー(数値データー)
580 buf_Jyoushi_Kabara_Num = 0
590 '2-1.部下の誕生日(数値データー)
600 dim buf_Buka_Born_Day(3)
610 '2-2.部下の数秘ナンバー(数秘データー)
620 buf_Buka_Kabara_Num = 0
630 count=0
640 '部下の数秘ナンバー
650 'File 読み込み
660 '1.ビジネスの相性占い
670 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
680 for i=0 to 11
690 for j=0 to 11
700 input #1,a$
710 Buffer_Business_Aisyou$(j,i) = a$
720 next j
730 next i
740 close #1
750 '2.Birth Eye chart$
760 '2.バーズアイグリッドを読み込む
770 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
780 for j=0 to 25
790 for i=0 to 1
800 input #1,a$
810 buf_chart$(j,i) = a$
820 next i
830 next j
840 close #1
850 'File 読み込み　ここまで
860 'Main画面
870 screen 1,1,1,1
880 Main_Screen:
890 cls 3:
900 No=0
910 gload Gazo$ + "Selection.png",1,5,200
920 gload Gazo$ + "Selection.png",1,5,300
930 gload Gazo$ + "Selection.png",1,5,400
940 gload Gazo$ + "Selection.png",1,5,500
950 '4
960 gload Gazo$ + "Selection.png",1,35,300
970 '5
980 gload Gazo$ + "Selection.png",1,35,400
990 '6
1000 gload Gazo$ + "Selection.png",1,35,500
1010 '7
1020 gload Gazo$ + "Selection.png",1,70,300
1030 '8
1040 gload Gazo$ + "Selection.png",1,70,400
1050 '9
1060 gload Gazo$ + "Selection.png",1,70,500
1070 '10
1080 gload Gazo$ + "Selection.png",1,110,300
1090 '11
1100 gload Gazo$ + "Selection.png",1,110,400
1110 '12
1120 gload Gazo$ + "Selection.png",1,110,500
1130 '13:0
1140 gload Gazo$ + "Selection.png",1,150,400
1150 gload Gazo$ + "Selection.png",1,200,400
1160 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1170 gload Gazo$ + "downscreen.png",0,0,800
1180 sp_def 0,(5,300),32,32
1190 sp_def 1,(5,400),32,32
1200 sp_def 2,(5,500),32,32
1210 sp_def 3,(5,600),32,32
1220 '1
1230 sp_def 4,(35,300),32,32
1240 '2
1250 sp_def 5,(35,400),32,32
1260 '3
1270 sp_def 6,(35,500),32,32
1280 '4
1290 sp_def 7,(70,300),32,32
1300 '5
1310 sp_def 8,(70,400),32,32
1320 '6
1330 sp_def 9,(70,500),32,32
1340 '7
1350 sp_def 10,(110,300),32,32
1360 '8
1370 sp_def 11,(110,400),32,32
1380 '9
1390 sp_def 12,(110,400),32,32
1400 sp_def 13,(150,400),32,32
1410 sp_def 14,(200,400),32,32
1420 'Sprite OFF
1430 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1440 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1450 sp_put 0,(5,300),0,0
1460 sp_put 1,(5,400),1,0
1470 sp_put 2,(5,500),2,0
1480 sp_put 3,(5,600),3,0
1490 '1
1500 sp_put 4,(130,300),4,0
1510 '2
1520 sp_put 5,(130,400),5,0
1530 '3
1540 sp_put 6,(130,500),6,0
1550 '4
1560 sp_put 7,(340,300),7,0
1570 '5
1580 sp_put 8,(340,400),8,0
1590 '6
1600 sp_put 9,(340,500),9,0
1610 '7
1620 sp_put 10,(540,300),10,0
1630 '8
1640 sp_put 11,(540,400),11,0
1650 '9
1660 sp_put 12,(540,500),12,0
1670 '
1680 sp_put 13,(340,600),13,0
1690 sp_put 14,(540,600),14,0
1700 Main_Top:
1710 'Main Message 2023.06.07
1720 '再生を止める
1730 play ""
1740 init "kb:4"
1750 'font 32:
1760 font 48
1770 print chr$(13) + chr$(13) + chr$(13)
1780 color rgb(217,255,212)
1790 print "番号を選んでください" + chr$(13)
1800 '0
1810 print " :1.数秘術占い" + chr$(13)
1820 '1
1830 print " :2.設 定" + chr$(13)
1840 '2
1850 print " :3.ヘルプ" + chr$(13)
1860 '3
1870 print " :4.(プログラムを)終了する" + chr$(13)
1880 COLOR rgb(0,0,0):No=0
1890 locate 1,15
1900 print "                                       "
1910 locate 1,15:print "1.数秘術占いを選択"
1920 play Voice$ + "Voice_Main_Message_20230607.mp3"
1930 Main_Screen_Select:
1940 y = 0:key$ = "":bg = 0:bg2=0
1950 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
1960 y = stick(1)
1970 '"May (2023)"
1980 key$ = inkey$
1990 bg = strig(1)
2000 bg2 = strig(0)
2010 pause 2
2020 wend
2030 '1.
2040 'ジョイパッドのソース ソート　ここから
2050 'カーソル　下 or 十字キー下
2060 if ((y = 1) or (key$ = chr$(31))) then
2070 select case No
2080 case 0:
2090 '1
2100 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2110 case 1:
2120 '2
2130 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2140 case 2:
2150 '3
2160 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2170 case 3:
2180 '0
2190 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2200 end select
2210 endif
2220 '2.
2230 'カーソル　上　or 十字キー  上
2240 if ((y = -1) or (key$ = chr$(30))) then
2250 select case No
2260 case 0:
2270 '3
2280 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2290 case 1:
2300 '0
2310 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2320 case 2:
2330 '1
2340 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2350 case 3:
2360 '2
2370 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2380 end select
2390 endif
2400 'ジョイパッド　ソース 部分　ここまで
2410 'ジョイパッド右　　or Enter key 決定
2420 if ((bg = 2) OR (key$ = chr$(13))) then
2430 select case No
2440 case 0:
2450 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2460 case 1:
2470 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2480 case 2:
2490 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2500 case 3:
2510 play "":pause 200
2520 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2530 end select
2540 endif
2550 if (bg2 = 2) then
2560 play "":pause 200
2570 play Voice$ + "Voice_Main_Message_20230607.mp3"
2580 goto Main_Screen_Select:
2590 endif
2600 'Version
2610 Version:
2620 cls 3:PLAY ""
2630 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2640 gload Gazo$ + "downscreen.png",0,0,800
2650 init"kb:4":font 32
2660 'talk"バージョン情報です"
2670 'Message :Version
2680 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2690 locate 0,5
2700 color rgb(0,0,0)
2710 print "・Title:数秘術占い";chr$(13)
2720 print "・" + Version$ + chr$(13)
2730 print "・Author:licksjp"+chr$(13)
2740 print "・E-mail:licksjp@gmail.com" + chr$(13)
2750 locate 0,18
2760 print "(C)licksjp All rights " + chr$(13)
2770 locate 13,19
2780 print "reserved since 2009"+chr$(13)
2790 locate 0,23
2800 color rgb(255,255,255)
2810 print "ジョイパッドの右を押してください"
2820 Versionn_Selection:
2830 bg = 0:key$ = "":bg2 = 0
2840 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2850 bg = strig(1)
2860 key$ = inkey$
2870 bg2 = strig(0)
2880 pause 2
2890 wend
2900 if ((bg = 2) or (key$ = chr$(13))) then
2910 pause 200:cls 4:goto Main_Screen:
2920 endif
2930 if (bg2=2) then
2940 play "":pause 200
2950 play Voice$ + "Voice_Version_Message_20230607.mp3"
2960 goto Versionn_Selection:
2970 endif
2980 '1.数秘ナンバーを求める
2990 '誕生日入力(生れた年代)
3000 Input_Seireki:
3010 cls 3:play "":count=0:count2=0
3020 'No=-1:Okのとき
3030 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3040 for i=0 to 3
3050 buf_year(i)=0
3060 next i
3070 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
3080 gload Gazo$ + "Screen1.png",0,0,0
3090 gload Gazo$ + "downscreen.png",0,0,800
3100 'Init"kb:2"
3110 '音声ファイル再生 2023.06.07
3120 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3130 font 48
3140 locate 0,1
3150 '文字色：黒　 color rgb(0,0,0)
3160 color rgb(255,255,255)
3170 print "生まれた年代を入れて下さい" + chr$(13)
3180 color rgb(255,255,255)
3190 locate 2,3
3200 print "生まれた年代(西暦4桁):";buf_year$
3210 color rgb(255,0,0)
3220 'locate 4,6:print ":7"
3230 'locate 9,6:print ":8"
3240 'locate 12,6:print ":9"
3250 locate 4,6
3260 print ":7  :8  :9" + chr$(13)
3270 color rgb(255,0,0)
3280 locate 4,8
3290 print ":4  :5  :6" + chr$(13)
3300 color rgb(255,0,0)
3310 locate 4,10
3320 print ":1  :2  :3" + chr$(13)
3330 locate 4,12
3340 print "    :0"
3350 locate 12,12
3360 color rgb(0,0,255)
3370 print ":Ok"
3380 sp_on 4,0: sp_on 5,0:sp_on 6,0
3390 sp_on 7,0:sp_on 8,0:sp_on 9,0
3400 sp_on 10,0:sp_on 11,0:sp_on 12,0
3410 sp_on 13,0:sp_on 14,1
3420 Input_Seireki2:
3430 key$="":bg=0:y=0:y2=0:bg2=0:
3440 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3450 key$ = inkey$
3460 bg = strig(1)
3470 y = stick(1)
3480 y2 = stick(0)
3490 bg2=strig(0)
3500 pause 5
3510 wend
3520 '十字キー　ここから
3530 '上の矢印　または、十字キー上
3540 if ((y = -1) or (key$ = chr$(30))) then
3550 select case No
3560 'No=-1:okのとき:初期の状態
3570 '0kボタンから３に移動
3580 '上に行く 処理
3590 case -1:
3600 No=3:sp_on 12,1:sp_on 14,0
3610 pause 200:goto Input_Seireki2:
3620 '選択肢:3
3630 '3ボタンから 6に移動
3640 case 3:
3650 No=6:sp_on 12,0:sp_on 11,1
3660 pause 200:goto Input_Seireki2:
3670 '6ボタンから ９に移動
3680 case 6:
3690 No=9:sp_on 10,1:sp_on 11,0
3700 pause 200:goto Input_Seireki2:
3710 '6ボタンから ９に移動　ここまで
3720 '9で上を押して何もしない
3730 case 9:
3740 '何もしない
3750 No=9
3760 pause 200:goto Input_Seireki2:
3770 '9で上を押しても何もしない　ここまで
3780 '上　 0ボタンから2ボタン
3790 'sp_on 6,1:1
3800 'sp_on 8,1:5
3810 'sp_on 7,1:7
3820 case 0:
3830 No=2:sp_on 13,0:sp_on 9,1:
3840 pause 200:goto Input_Seireki2:
3850 '上  0ボタンから2ボタン　ここまで
3860 '2から５になる 上
3870 case 2:
3880 No=5:sp_on 8,1:sp_on 9,0:
3890 pause 200:goto Input_Seireki2:
3900 case 5:
3910 No=8:sp_on 7,1:sp_on 8,0
3920 pause 200:goto Input_Seireki2:
3930 case 8:
3940 pause 200:goto Input_Seireki2:
3950 case 1:
3960 No=4:sp_on 5,1:sp_on 6,0
3970 pause 200:goto Input_Seireki2:
3980 case 4:
3990 No=7:sp_on 4,1:sp_on 5,0
4000 pause 200:goto Input_Seireki2:
4010 case 7:
4020 pause 200:goto Input_Seireki2:
4030 end select
4040 endif
4050 '左３　ここまで
4060 '下の矢印
4070 '中央 2
4080 if ((y=1) or (key$ = chr$(31))) then
4090 select case No
4100 '9から６に下げる
4110 case 9:
4120 No=6:sp_on 11,1:sp_on 10,0
4130 pause 200:goto Input_Seireki2:
4140 '6から３に下げる
4150 case 6:
4160 No=3:sp_on 12,1:sp_on 11,0
4170 pause 200:goto Input_Seireki2:
4180 '3から０ｋに変える
4190 case 3:
4200 No=-1:sp_on 14,1:sp_on 12,0
4210 pause 200:goto Input_Seireki2:
4220 'Okから下のボタンを押しても何もしない
4230 case -1:
4240 pause 200:goto Input_Seireki2:
4250 case 8:
4260 No=5:sp_on 8,1:sp_on 7,0
4270 pause 200:goto Input_Seireki2:
4280 case 5:
4290 No=2:sp_on 9,1:sp_on 8,0
4300 pause 200:goto Input_Seireki2:
4310 case 2:
4320 No=0:sp_on 13,1:sp_on 9,0
4330 pause 200:goto Input_Seireki2:
4340 case 0:
4350 pause 200:goto Input_Seireki2:
4360 case 7:
4370 No=4:sp_on 5,1:sp_on 4,0
4380 pause 200:goto Input_Seireki2:
4390 case 4:
4400 No=1:sp_on 6,1:sp_on 5,0
4410 pause 200:goto Input_Seireki2:
4420 case 1:
4430 pause 200:goto Input_Seireki2:
4440 end select
4450 endif
4460 '左へボタン 十字キー　左　or 　カーソル左
4470 if ((y2 = -1) or (key$ = chr$(29))) then
4480 select case No
4490 'Ok ボタン  Okから　左　０に行く
4500 case -1:
4510 No=0:sp_on 13,1:sp_on 14,0
4520 pause 200:goto Input_Seireki2:
4530 '0 ボタン  左　何もしない
4540 case 0:
4550 pause 200:goto Input_Seireki2:
4560 case 3:
4570 No=2:sp_on 9,1:sp_on 12,0:
4580 pause 200:goto Input_Seireki2:
4590 case 2:
4600 No=1:sp_on 6,1:sp_on 9,0:
4610 pause 200:goto Input_Seireki2:
4620 case 1:
4630 pause 200:goto Input_Seireki2:
4640 case 6:
4650 No=5:sp_on 8,1:sp_on 11,0
4660 pause 200:goto Input_Seireki2:
4670 case 5:
4680 No=4:sp_on 5,1:sp_on 8,0
4690 pause 200:goto Input_Seireki2:
4700 case 4:
4710 pause 200:goto Input_Seireki2:
4720 case 9:
4730 No=8:sp_on 7,1:sp_on 10,0
4740 pause 200:goto Input_Seireki2:
4750 case 8:
4760 No=7:sp_on 4,1:sp_on 7,0
4770 pause 200:goto Input_Seireki2:
4780 case 7:
4790 pause 200:goto Input_Seireki2:
4800 end select
4810 endif
4820 '右  十字キー　右　or カーソル　右
4830 if ((y2 = 1) or (key$ = chr$(28))) then
4840 select case No
4850 '0ボタンからokボタン右に移動
4860 case 0:
4870 No=-1:sp_on 14,1:sp_on 13,0
4880 pause 200:goto Input_Seireki2:
4890 '0ボタンからokボタン 右に移動　ここまで
4900 'OKボタンで右を押して何もしない
4910 case -1:
4920 pause 200:goto Input_Seireki2:
4930 case 1:
4940 No=2:sp_on 9,1:sp_on 6,0
4950 pause 200:goto Input_Seireki2:
4960 case 2:
4970 No=3:sp_on 12,1:sp_on 9,0
4980 pause 200:goto Input_Seireki2:
4990 case 3:
5000 pause 200:goto Input_Seireki2:
5010 case 4:
5020 No=5:sp_on 8,1:sp_on 5,0
5030 pause 200:goto Input_Seireki2:
5040 case 5:
5050 No=6:sp_on 11,1:sp_on 8,0
5060 pause 200:goto Input_Seireki2:
5070 case 7:
5080 No=8:sp_on 7,1:sp_on 4,0
5090 pause 200:goto Input_Seireki2:
5100 case 8:
5110 No=9:sp_on 10,1:sp_on 7,0
5120 pause 200:goto Input_Seireki2:
5130 case 9:
5140 pause 200:goto Input_Seireki2:
5150 case 6:
5160 pause 200:goto Input_Seireki2:
5170 end select
5180 'Okから右ボタンを押して何もしない ここまで
5190 endif
5200 '十字キー　ここまで
5210 if ((bg=2) or (key$=chr$(13))) then
5220 select case count
5230 case 0:
5240 count=1
5250 if (No=-1) then
5260 count=0
5270 'Okボタンを押したとき
5280 goto Input_Seireki2:
5290 else
5300 'Okボタン以外が押されたとき
5310 if (No>=1 and No<=2) then
5320 buf_year$="":buf_year$=str$(No)
5330 buf_year=No
5340 locate 2,3
5350 color rgb(255,255,255)
5360 print "生まれた年代(西暦4桁):";buf_year$
5370 goto Input_Seireki2:
5380 else
5390 count=0
5400 ui_msg"数字が範囲外になります。"
5410 buf_year$="":buf_year=0
5420 goto Input_Seireki2:
5430 endif
5440 endif
5450 case 1:
5460 count = 2
5470 if (No = -1) then
5480 count = 1
5490 goto Input_Seireki2:
5500 else
5510 b = val(buf_year$)
5520 buf_year = b * 10 + No
5530 buf_year$ = str$(buf_year)
5540 locate 2,3
5550 color rgb(255,255,255)
5560 print "                                                                "
5570 locate 2,3
5580 print "生まれた年代(西暦4桁):";buf_year$
5590 'if (No = -1) then
5600 'count=1
5610 goto Input_Seireki2:
5620 endif
5630 case 2:
5640 count=3
5650 if (No=-1) then
5660  count =2
5670  goto Input_Seireki2:
5680 else
5690 b = val(buf_year$)
5700 buf_year = b*10 + No
5710 buf_year$ = str$(buf_year)
5720 locate 2,3
5730 color rgb(255,255,255)
5740 print "                                        "
5750 locate 2,3
5760 print "生まれた年代(西暦4桁):";buf_year$
5770 goto Input_Seireki2:
5780 endif
5790 case 3:
5800 count=4
5810 if (No = -1) then
5820 count=3
5830 goto Input_Seireki2:
5840 else
5850 b = val(buf_year$)
5860 buf_year=b*10+No
5870 buf_year$=str$(buf_year)
5880 locate 2,3
5890 color RGB(255,255,255)
5900 print "                                      "
5910 locate 2,3
5920 print "生まれた年代(西暦4桁):";buf_year$
5930 buf_year=val(buf_year$)
5940 'year=val(buf_year$)
5950 'if (No=-1) then
5960 'goto Input_Born_Month:
5970 'else
5980 goto Input_Seireki2:
5990 endif
6000 case 4:
6010 'bufyear=buf_year
6020 if (No=-1) then
6030 buf_year = val(buf_year$)
6040 bufyear = buf_year
6050 sp_on 14,0
6060 goto Input_Born_Month:
6070 else
6080 goto Input_Seireki2:
6090 endif
6100 end select
6110 endif
6120 if (bg2 = 2) then
6130 select case count2
6140 case 0:
6150        if (No = -1) then
6160        buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
6170        count=0
6180        locate 2,3
6190        color rgb(255,255,255)
6200        print "                                      "
6210        locate 2,3
6220        print "生まれた年代（西暦4桁):";buf_year$
6230        goto Input_Seireki2:
6240        else
6250        '(buf_year=0) then
6260        buf_year=0:buf_year$="****"
6270        goto Input_Seireki2:
6280        'endif
6290        endif
6300 end select
6310 endif
6320 end
6330 'Input"生れた年代(4桁,〜2025年):",year
6340 'if year > 2025 then goto Input_Seireki:
6350 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6360 '"4桁目"
6370 'bufyear4 = fix(year / 1000)
6380 '"3桁目"
6390 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6400 '"2桁目"
6410 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6420 '"1桁目"
6430 'bufyear1 = fix((year - ((bufyear4*
6440 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6450 '生れた月を入力
6460 Input_Born_Month:
6470 cls 3:play "":count=0:count2=0
6480 'No=-1:Okのとき
6490 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6500 for i=0 to 1
6510 buf_month(i)=0
6520 next i
6530 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6540 gload Gazo$ + "Screen1.png",0,0,0
6550 gload Gazo$ + "downscreen.png",0,0,800
6560 'Init"kb:2"
6570 '音声ファイル再生 2023.06.07
6580 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
6590 font 48
6600 locate 0,1
6610 '文字色：黒　 color rgb(0,0,0)
6620 '文字色:白
6630 color rgb(255,255,255)
6640 print "生まれた月を入れて下さい" + chr$(13)
6650 '文字色:白
6660 color rgb(255,255,255)
6670 locate 2,3
6680 '文字色:白
6690 print "生まれた月(1月~12月):";buf_Month$
6700 color rgb(255,0,0)
6710 'locate 4,6:print ":7"
6720 'locate 9,6:print ":8"
6730 'locate 12,6:print ":9"
6740 locate 4,6
6750 '文字色:赤
6760 print ":7  :8  :9" + chr$(13)
6770 color rgb(255,0,0)
6780 locate 4,8
6790 print ":4  :5  :6" + chr$(13)
6800 color rgb(255,0,0)
6810 locate 4,10
6820 print ":1  :2  :3" + chr$(13)
6830 locate 4,12
6840 print "    :0"
6850 locate 12,12
6860 color rgb(0,0,255)
6870 print ":Ok"
6880 sp_on 4,0: sp_on 5,0:sp_on 6,0
6890 sp_on 7,0:sp_on 8,0:sp_on 9,0
6900 sp_on 10,0:sp_on 11,0:sp_on 12,0
6910 sp_on 13,0:sp_on 14,1
6920 Input_Born_Month2:
6930 key$="":bg=0:y=0:y2=0:bg2=0
6940 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
6950 key$ = inkey$
6960 bg = strig(1)
6970 y = stick(1)
6980 y2 = stick(0)
6990 bg2 = strig(0)
7000 pause 5
7010 wend
7020 '十字キー　ここから
7030 '上の矢印　または、十字キー上
7040 if ((y = -1) or (key$ = chr$(30))) then
7050 select case No
7060 'No=-1:okのとき:初期の状態
7070 '0kボタンから３に移動
7080 '上に行く 処理
7090 case -1:
7100 No=3:sp_on 12,1:sp_on 14,0
7110 pause 200:goto Input_Born_Month2:
7120 '選択肢:3
7130 '3ボタンから 6に移動
7140 case 3:
7150 No=6:sp_on 12,0:sp_on 11,1
7160 pause 200:goto Input_Born_Month2:
7170 '6ボタンから ９に移動
7180 case 6:
7190 No=9:sp_on 10,1:sp_on 11,0
7200 pause 200:goto Input_Born_Month2:
7210 '6ボタンから ９に移動　ここまで
7220 '9で上を押して何もしない
7230 case 9:
7240 '何もしない
7250 No=9
7260 pause 200:goto Input_Born_Month2:
7270 '9で上を押しても何もしない　ここまで
7280 '上　 0ボタンから2ボタン
7290 'sp_on 6,1:1
7300 'sp_on 8,1:5
7310 'sp_on 7,1:7
7320 case 0:
7330 No=2:sp_on 13,0:sp_on 9,1:
7340 pause 200:goto Input_Born_Month2:
7350 '上  0ボタンから2ボタン　ここまで
7360 '2から５になる 上
7370 case 2:
7380 No=5:sp_on 8,1:sp_on 9,0:
7390 pause 200:goto Input_Born_Month2:
7400 case 5:
7410 No=8:sp_on 7,1:sp_on 8,0
7420 pause 200:goto Input_Born_Month2:
7430 case 8:
7440 pause 200:goto Input_Born_Month2:
7450 case 1:
7460 No=4:sp_on 5,1:sp_on 6,0
7470 pause 200:goto Input_Born_Month2:
7480 case 4:
7490 No=7:sp_on 4,1:sp_on 5,0
7500 pause 200:goto Input_Born_Month2:
7510 case 7:
7520 pause 200:goto Input_Born_Month2:
7530 end select
7540 endif
7550 '左３　ここまで
7560 '下の矢印
7570 '中央 2
7580 if ((y=1) or (key$ = chr$(31))) then
7590 select case No
7600 '9から６に下げる
7610 case 9:
7620 No=6:sp_on 11,1:sp_on 10,0
7630 pause 200:goto Input_Born_Month2:
7640 '6から３に下げる
7650 case 6:
7660 No=3:sp_on 12,1:sp_on 11,0
7670 pause 200:goto Input_Born_Month2:
7680 '3から０ｋに変える
7690 case 3:
7700 No=-1:sp_on 14,1:sp_on 12,0
7710 pause 200:goto Input_Born_Month2:
7720 'Okから下のボタンを押しても何もしない
7730 case -1:
7740 pause 200:goto Input_Born_Month2:
7750 case 8:
7760 No=5:sp_on 8,1:sp_on 7,0
7770 pause 200:goto Input_Born_Month2:
7780 case 5:
7790 No=2:sp_on 9,1:sp_on 8,0
7800 pause 200:goto Input_Born_Month2:
7810 case 2:
7820 No=0:sp_on 13,1:sp_on 9,0
7830 pause 200:goto Input_Born_Month2:
7840 case 0:
7850 pause 200:goto Input_Born_Month2:
7860 case 7:
7870 No=4:sp_on 5,1:sp_on 4,0
7880 pause 200:goto Input_Born_Month2:
7890 case 4:
7900 No=1:sp_on 6,1:sp_on 5,0
7910 pause 200:goto Input_Born_Month2:
7920 case 1:
7930 pause 200:goto Input_Born_Month2:
7940 end select
7950 endif
7960 '左へボタン 十字キー　左　or 　カーソル左
7970 if ((y2 = -1) or (key$ = chr$(29))) then
7980 select case No
7990 'Ok ボタン  Okから　左　０に行く
8000 case -1:
8010 No=0:sp_on 13,1:sp_on 14,0
8020 pause 200:goto Input_Born_Month2:
8030 '0 ボタン  左　何もしない
8040 case 0:
8050 pause 200:goto Input_Born_Month2:
8060 case 3:
8070 No=2:sp_on 9,1:sp_on 12,0:
8080 pause 200:goto Input_Born_Month2:
8090 case 2:
8100 No=1:sp_on 6,1:sp_on 9,0:
8110 pause 200:goto Input_Born_Month2:
8120 case 1:
8130 pause 200:goto Input_Born_Month2:
8140 case 6:
8150 No=5:sp_on 8,1:sp_on 11,0
8160 pause 200:goto Input_Born_Month2:
8170 case 5:
8180 No=4:sp_on 5,1:sp_on 8,0
8190 pause 200:goto Input_Born_Month2:
8200 case 4:
8210 pause 200:goto Input_Born_Month2:
8220 case 9:
8230 No=8:sp_on 7,1:sp_on 10,0
8240 pause 200:goto Input_Born_Month2:
8250 case 8:
8260 No=7:sp_on 4,1:sp_on 7,0
8270 pause 200:goto Input_Born_Month2:
8280 case 7:
8290 pause 200:goto Input_Born_Month2:
8300 end select
8310 endif
8320 '右  十字キー　右　or カーソル　右
8330 if ((y2 = 1) or (key$ = chr$(28))) then
8340 select case No
8350 '0ボタンからokボタン右に移動
8360 case 0:
8370 No=-1:sp_on 14,1:sp_on 13,0
8380 pause 200:goto Input_Born_Month2:
8390 '0ボタンからokボタン 右に移動　ここまで
8400 'OKボタンで右を押して何もしない
8410 case -1:
8420 pause 200:goto Input_Born_Month2:
8430 case 1:
8440 No=2:sp_on 9,1:sp_on 6,0
8450 pause 200:goto Input_Born_Month2:
8460 case 2:
8470 No=3:sp_on 12,1:sp_on 9,0
8480 pause 200:goto Input_Born_Month2:
8490 case 3:
8500 pause 200:goto Input_Born_Month2:
8510 case 4:
8520 No=5:sp_on 8,1:sp_on 5,0
8530 pause 200:goto Input_Born_Month2:
8540 case 5:
8550 No=6:sp_on 11,1:sp_on 8,0
8560 pause 200:goto Input_Born_Month2:
8570 case 7:
8580 No=8:sp_on 7,1:sp_on 4,0
8590 pause 200:goto Input_Born_Month2:
8600 case 8:
8610 No=9:sp_on 10,1:sp_on 7,0
8620 pause 200:goto Input_Born_Month2:
8630 case 9:
8640 pause 200:goto Input_Born_Month2:
8650 case 6:
8660 pause 200:goto Input_Born_Month2:
8670 end select
8680 'Okから右ボタンを押して何もしない ここまで
8690 endif
8700 '十字キー　ここまで
8710 '右の丸ボタン　決定キー
8720 if ((bg=2) or (key$=chr$(13))) then
8730 select case count
8740 case 0:
8750 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
8760 locate 2,3
8770 color RGB(255,255,255)
8780 print "生まれた月(1月~12月):";buf_Month$
8790 goto Input_Born_Month2:
8800 case 1:
8810 count = 2:c = No
8820 c = val(buf_Month$)
8830 if (No = -1) then
8840 'count=0
8850 month=buf_month
8860 buf_month=val(buf_Month$)
8870 month=buf_month
8880 '生まれた日に飛ぶ
8890 goto Input_Born_Day:
8900 else
8910 buf_month = c*10 + No
8920 buf_Month$= str$(buf_month)
8930 locate 2,3
8940 color Rgb(255,255,255)
8950 print "生まれた月(1月~12月):";buf_Month$
8960 goto Input_Born_Month2:
8970 endif
8980 case 2:
8990 count=3
9000 'c= val(buf_Month$)
9010 'buf_month = c*10 + No
9020 'buf_Month$ = str$(buf_month)
9030 'locate 2,3
9040 'print "生まれた月(1月～12月):";buf_Month$
9050 'goto Input_Born_Month2:
9060 'case 3:
9070 'count=4
9080 'b=val(buf_month$)
9090 'buf_month=c*10+No
9100 'buf_Month$=str$(buf_month)
9110 'locate 2,3
9120 'print "生まれた月(1月～12月):";buf_Month$
9130 'buf_month=val(buf_Month$)
9140 'year=val(buf_year$)
9150 if (No=-1) then
9160 goto Input_Born_Day:
9170 else
9180 'goto Input_Born_Month2:
9190 endif
9200 'case 4:
9210 'bufyear=buf_year
9220 'if (No=-1) then
9230 'buf_month = val(buf_Month$)
9240 'month = buf_month
9250 'sp_on 14,0
9260 'goto Input_Born_Day:
9270 'else
9280 'goto Input_Born_Month2:
9290 'endif
9300 end select
9310 endif
9320 '左の丸ボタン　キャンセル
9330 if (bg2=2) then
9340 select case count2
9350 case 0:
9360       if (No = -1) then
9370          buf_month=0:buf_Month$="**"
9380       count=0
9390       goto rewrite:
9400       else
9410       if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9420          buf_month=0:buf_Month$="**"
9430          locate 2,3
9440          color rgb(255,255,255)
9450          print "                                       "
9460          goto rewrite:
9470       if (No>12) then
9480          ui_msg"値が範囲外です。"
9490         goto rewrite:
9500       endif
9510       endif
9520       endif
9530  rewrite:
9540       locate 2,3
9550       color rgb(255,255,255)
9560       print "                                      "
9570       locate 2,3
9580       print "生まれた月(1月~12月):";buf_Month$
9590       goto Input_Born_Month2:
9600 end select
9610 'endif
9620 endif
9630 end
9640 'end
9650 '生れた日を入力
9660 Input_Born_Day:
9670 '生まれた日入力
9680 cls 3:play ""
9690 'No=-1:Okのとき
9700 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
9710 for i=0 to 1
9720 buf_day(i)=0
9730 next i
9740 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
9750 gload Gazo$ + "Screen1.png",0,0,0
9760 gload Gazo$ + "downscreen.png",0,0,800
9770 'Init"kb:2"
9780 '音声ファイル再生 2023.06.07
9790 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
9800 font 48
9810 locate 0,1
9820 '文字色：黒　 color rgb(0,0,0)
9830 color rgb(255,255,255)
9840 print "生まれた日を入れて下さい" + chr$(13)
9850 color rgb(255,255,255)
9860 locate 2,3
9870 print "生まれた日(1日~31日):";buf_Day$
9880 color rgb(255,0,0)
9890 'locate 4,6:print ":7"
9900 'locate 9,6:print ":8"
9910 'locate 12,6:print ":9"
9920 locate 4,6
9930 print ":7  :8  :9" + chr$(13)
9940 color rgb(255,0,0)
9950 locate 4,8
9960 print ":4  :5  :6" + chr$(13)
9970 color rgb(255,0,0)
9980 locate 4,10
9990 print ":1  :2  :3" + chr$(13)
10000 locate 4,12
10010 print "    :0"
10020 locate 12,12
10030 color rgb(0,0,255)
10040 print ":Ok"
10050 sp_on 4,0: sp_on 5,0:sp_on 6,0
10060 sp_on 7,0:sp_on 8,0:sp_on 9,0
10070 sp_on 10,0:sp_on 11,0:sp_on 12,0
10080 sp_on 13,0:sp_on 14,1
10090 Input_Born_Day2:
10100 key$="":bg=0:y=0:y2=0:bg2=0
10110 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10120 key$ = inkey$
10130 bg = strig(1)
10140 y = stick(1)
10150 y2 = stick(0)
10160 bg2 = strig(0)
10170 pause 5
10180 wend
10190 '十字キー　ここから
10200 '上の矢印　または、十字キー上
10210 if ((y = -1) or (key$ = chr$(30))) then
10220 select case No
10230 'No=-1:okのとき:初期の状態
10240 '0kボタンから３に移動
10250 '上に行く 処理
10260 case -1:
10270 No=3:sp_on 12,1:sp_on 14,0
10280 pause 200:goto Input_Born_Day2:
10290 '選択肢:3
10300 '3ボタンから 6に移動
10310 case 3:
10320 No=6:sp_on 12,0:sp_on 11,1
10330 pause 200:goto Input_Born_Day2:
10340 '6ボタンから ９に移動
10350 case 6:
10360 No=9:sp_on 10,1:sp_on 11,0
10370 pause 200:goto Input_Born_Day2:
10380 '6ボタンから ９に移動　ここまで
10390 '9で上を押して何もしない
10400 case 9:
10410 '何もしない
10420 No=9
10430 pause 200:goto Input_Born_Day2:
10440 '9で上を押しても何もしない　ここまで
10450 '上　 0ボタンから2ボタン
10460 'sp_on 6,1:1
10470 'sp_on 8,1:5
10480 'sp_on 7,1:7
10490 case 0:
10500 No=2:sp_on 13,0:sp_on 9,1:
10510 pause 200:goto Input_Born_Day2:
10520 '上  0ボタンから2ボタン　ここまで
10530 '2から５になる 上
10540 case 2:
10550 No=5:sp_on 8,1:sp_on 9,0:
10560 pause 200:goto Input_Born_Day2:
10570 case 5:
10580 No=8:sp_on 7,1:sp_on 8,0
10590 pause 200:goto Input_Born_Day2:
10600 case 8:
10610 pause 200:goto Input_Born_Day2:
10620 case 1:
10630 No=4:sp_on 5,1:sp_on 6,0
10640 pause 200:goto Input_Born_Day2:
10650 case 4:
10660 No=7:sp_on 4,1:sp_on 5,0
10670 pause 200:goto Input_Born_Day2:
10680 case 7:
10690 pause 200:goto Input_Born_Day2:
10700 end select
10710 endif
10720 '左３　ここまで
10730 '下の矢印
10740 '中央 2
10750 if ((y=1) or (key$ = chr$(31))) then
10760 select case No
10770 '9から６に下げる
10780 case 9:
10790 No=6:sp_on 11,1:sp_on 10,0
10800 pause 200:goto Input_Born_Day2:
10810 '6から３に下げる
10820 case 6:
10830 No=3:sp_on 12,1:sp_on 11,0
10840 pause 200:goto Input_Born_Day2:
10850 '3から０ｋに変える
10860 case 3:
10870 No=-1:sp_on 14,1:sp_on 12,0
10880 pause 200:goto Input_Born_Day2:
10890 'Okから下のボタンを押しても何もしない
10900 case -1:
10910 pause 200:goto Input_Born_Day2:
10920 case 8:
10930 No=5:sp_on 8,1:sp_on 7,0
10940 pause 200:goto Input_Born_Day2:
10950 case 5:
10960 No=2:sp_on 9,1:sp_on 8,0
10970 pause 200:goto Input_Born_Day2:
10980 case 2:
10990 No=0:sp_on 13,1:sp_on 9,0
11000 pause 200:goto Input_Born_Day2:
11010 case 0:
11020 pause 200:goto Input_Born_Day2:
11030 case 7:
11040 No=4:sp_on 5,1:sp_on 4,0
11050 pause 200:goto Input_Born_Day2:
11060 case 4:
11070 No=1:sp_on 6,1:sp_on 5,0
11080 pause 200:goto Input_Born_Day2:
11090 case 1:
11100 pause 200:goto Input_Born_Day2:
11110 end select
11120 endif
11130 '左へボタン 十字キー　左　or 　カーソル左
11140 if ((y2 = -1) or (key$ = chr$(29))) then
11150 select case No
11160 'Ok ボタン  Okから　左　０に行く
11170 case -1:
11180 No=0:sp_on 13,1:sp_on 14,0
11190 pause 200:goto Input_Born_Day2:
11200 '0 ボタン  左　何もしない
11210 case 0:
11220 pause 200:goto Input_Born_Day2:
11230 case 3:
11240 No=2:sp_on 9,1:sp_on 12,0:
11250 pause 200:goto Input_Born_Day2:
11260 case 2:
11270 No=1:sp_on 6,1:sp_on 9,0:
11280 pause 200:goto Input_Born_Day2:
11290 case 1:
11300 pause 200:goto Input_Born_Day2:
11310 case 6:
11320 No=5:sp_on 8,1:sp_on 11,0
11330 pause 200:goto Input_Born_Day2:
11340 case 5:
11350 No=4:sp_on 5,1:sp_on 8,0
11360 pause 200:goto Input_Born_Day2:
11370 case 4:
11380 pause 200:goto Input_Born_Day2:
11390 case 9:
11400 No=8:sp_on 7,1:sp_on 10,0
11410 pause 200:goto Input_Born_Day2:
11420 case 8:
11430 No=7:sp_on 4,1:sp_on 7,0
11440 pause 200:goto Input_Born_Day2:
11450 case 7:
11460 pause 200:goto Input_Born_Day2:
11470 end select
11480 endif
11490 '右  十字キー　右　or カーソル　右
11500 if ((y2 = 1) or (key$ = chr$(28))) then
11510 select case No
11520 '0ボタンからokボタン右に移動
11530 case 0:
11540 No=-1:sp_on 14,1:sp_on 13,0
11550 pause 200:goto Input_Born_Day2:
11560 '0ボタンからokボタン 右に移動　ここまで
11570 'OKボタンで右を押して何もしない
11580 case -1:
11590 pause 200:goto Input_Born_Day2:
11600 case 1:
11610 No=2:sp_on 9,1:sp_on 6,0
11620 pause 200:goto Input_Born_Day2:
11630 case 2:
11640 No=3:sp_on 12,1:sp_on 9,0
11650 pause 200:goto Input_Born_Day2:
11660 case 3:
11670 pause 200:goto Input_Born_Day2:
11680 case 4:
11690 No=5:sp_on 8,1:sp_on 5,0
11700 pause 200:goto Input_Born_Day2:
11710 case 5:
11720 No=6:sp_on 11,1:sp_on 8,0
11730 pause 200:goto Input_Born_Day2:
11740 case 7:
11750 No=8:sp_on 7,1:sp_on 4,0
11760 pause 200:goto Input_Born_Day2:
11770 case 8:
11780 No=9:sp_on 10,1:sp_on 7,0
11790 pause 200:goto Input_Born_Day2:
11800 case 9:
11810 pause 200:goto Input_Born_Day2:
11820 case 6:
11830 pause 200:goto Input_Born_Day2:
11840 end select
11850 'Okから右ボタンを押して何もしない ここまで
11860 endif
11870 '十字キー　ここまで
11880 '右の丸ボタンを押したとき
11890 if ((bg = 2) or (key$ = chr$(13))) then
11900 'count :決定ボタンを押した回数
11910 select case (count mod 3)
11920 '1桁目入力
11930 case 0:
11940 count = 1:
11950 if (No = -1) then
11960 '1桁目　OKでは何もしない
11970 'goto check:
11980 else
11990 'ok以外のボタンを押したとき
12000 buf_day = No:buf_Day$=str$(No)
12010 c=No
12020 locate 2,3
12030 color RGB(255,255,255)
12040 print "生まれた日(1日~31日):";buf_Day$
12050 endif
12060 check:
12070 if (No >= 1 and No <= 9) then
12080 sp_on 14,0
12090 goto Input_Born_Day2:
12100 else
12110 sp_on 14,0
12120 goto complate:
12130 endif
12140 case 1:
12150 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12160 count = 2:
12170 'locate 2,3
12180 'color RGB(255,255,255)
12190 'print "生まれた日(1日~31日):";buf_Day$
12200 'Okボタンを押したときの処理
12210 '入力値　10未満のとき
12220 'c = buf_day
12230 if (No = -1) then
12240 'c=buf_day
12250 ' buf_day = c
12260 'buf_Day$ = str$(buf_day)
12270  '10以下のとき
12280  if (buf_day < 10) then
12290     sp_on 14,0
12300     goto complate:
12310  endif
12320 else
12330  'c=No
12340  buf_day = c * 10 + No
12350  buf_Day$ =str$(buf_day)
12360  locate 2,3
12370  color Rgb(255,255,255)
12380  print "生まれた日(1日~31日):";buf_Day$
12390  goto Input_Born_Day2:
12400 endif
12410 '生まれた日　2桁目の数字　or 1桁の数字 + ok
12420 case 2:
12430 count=0
12440 'c=val(buf_Day$)
12450 'buf_day=c*10+No
12460 'buf_Day$=str$(buf_day)
12470 'day=buf_day
12480 'locate 2,3
12490 'print "生まれた日(1日〜31日):";buf_Day$
12500 'No=-1:ok ボタンを押したとき
12510 if (No = -1) then
12520  if ((buf_day > 0) and (buf_day < 32)) then
12530   sp_on 14,0
12540   goto complate:
12550  else
12560   goto Input_Born_Day2:
12570  endif
12580 'Okボタン以外を押したとき
12590 else
12600  c=val(buf_Day$)
12610  buf_day = c * 10 + No
12620  buf_Day$ = str$(buf_day)
12630  locate 2,3
12640  print "生まれた日(1日~31日):";buf_Day$
12650 'goto Input_Born_Day2:
12660 endif
12670 case 3:
12680 count=4
12690 'c=val(buf_day$)
12700 'buf_day=c*10+No
12710 'buf_day$=str$(buf_day)
12720 'locate 2,3
12730 'print "生まれた日を入れてください:";buf_day$
12740 'year=val(buf_year$)
12750 if (No = -1) then
12760 'goto Input_Born_Day:
12770 sp_on 14,0:
12780 goto complate:
12790 else
12800 goto Input_Born_Month2:
12810 endif
12820 'case 4:
12830 'bufyear=buf_year
12840 'if (No=-1) then
12850 'buf_day = val(buf_day$)
12860 'bufday = buf_day
12870 'sp_on 14,0
12880 'goto complate:
12890 'else
12900 'goto Input_Born_Day2:
12910 'endif
12920 end select
12930 endif
12940 if (bg2=2) then
12950 select case count2
12960 case 0:
12970       if (No=-1) then
12980       'buf_day=0:buf_Day$="**"
12990       if (buf_day>=1 and buf_day<=31) then
13000       count=0
13010       buf_day=0:buf_Day$="**"
13020       'goto rewrite_day:
13030       else
13040       buf_day=0:buf_Day$="**"
13050       ui_msg"値が範囲外です"
13060       endif
13070       goto rewrite_day:
13080       else
13090       goto rewrite_day:
13100       endif
13110  rewrite_day:
13120       locate 2,3
13130       color rgb(255,255,255)
13140       print "                                      "
13150       locate 2,3
13160       print "生まれた日(1日~31日):";buf_Day$
13170       goto Input_Born_Day2:
13180 end select
13190 endif
13200 '--------------------------Input_Born_Day:-------------------------------------------
13210 complate:
13220 suhiNo = buf_year + buf_month + buf_day
13230 'if (suhiNo < 1000) then
13240 a1 = fix(suhiNo / 1000)
13250 a2 = fix(suhiNo/100) - (a1 * 10)
13260 a3 = fix(suhiNo/10)-(a1*100+a2*10)
13270 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
13280 'endif
13290 bufsuhiNo = a1+a2+a3+a4
13300 recomp:
13310 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
13320 'bufsuhiNo=a6
13330 goto Kabara_Result_Screen:
13340 else
13350 a5 = fix(bufsuhiNo / 10)
13360 a6 = bufsuhiNo - a5 * 10
13370 bufsuhiNo = a6 + a5
13380 if (bufsuhiNo = 10) then
13390 bufsuhiNo=1
13400 endif
13410 goto Kabara_Result_Screen:
13420 endif
13430 Kabara_Result_Screen:
13440 cls 3:
13450 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
13460 gload Gazo$ + "downscreen.png",0,0,800
13470 init "kb:4"
13480 '
13490 play ""
13500 select case (bufsuhiNo)
13510 case 1:
13520 play Voice$ + "Result_Kabara_1_20230607.mp3"
13530 case 2:
13540 play Voice$ + "Result_Kabara_2_20230607.mp3"
13550 case 3:
13560 play Voice$ + "Result_Kabara_3_20230607.mp3"
13570 case 4:
13580 play Voice$ + "Result_Kabara_4_20230607.mp3"
13590 case 5:
13600 play Voice$ + "Result_Kabara_5_20230607.mp3"
13610 case 6:
13620 play Voice$ + "Result_Kabara_6_20230607.mp3"
13630 case 7:
13640 play Voice$ + "Result_Kabara_7_20230607.mp3"
13650 case 8:
13660 play Voice$ + "Result_Kabara_8_20230607.mp3"
13670 case 9:
13680 play Voice$ + "Result_Kabara_9_20230607.mp3"
13690 case 11:
13700 play Voice$ + "Result_Kabara_11_20230607.mp3"
13710 case 22:
13720 play Voice$ + "Result_Kabara_22_20230607.mp3"
13730 case 33:
13740 play Voice$ + "Result_Kabara_33_20230607.mp3"
13750 end select
13760 font 48
13770 key$ = "":bg = 0:
13780 'COLOR rgb(255,255,255)
13790 'print "●診断結果"+chr$(13)
13800 locate 0,2
13810 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
13820 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
13830 locate 1,15:
13840 color rgb(255,255,255)
13850 print "ジョイパッドの右:トップメニュー" + chr$(13)
13860 while ((key$ <> chr$(13)) and (bg <> 2))
13870 key$ = inkey$
13880 bg = strig(1)
13890 pause 2
13900 wend
13910 'Enter or JoyPad right
13920 if ((key$ = chr$(13)) or (bg = 2)) then
13930 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
13940 endif
13950 'else
13960 'suhiNo1 = fix(bufsuhiNo / 10)
13970 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
13980 'bufsuhiNo = suhiNo1 + suhiNo2
13990 'goto recomp:
14000 'endif
14010 'print chr$(13)
14020 'color rgb(255,0,0)
14030 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14040 'key$ = input$(1)
14050 'if key$ = chr$(13) then goto Main_Screen:
14060 '"Menu2 占いのルール"
14070 Suhi_Rule:
14080 '数秘術占いルールの表示
14090 cls 3:play "":init"kb:4"
14100 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14110 gload Gazo$ + "downscreen.png",0,0,800
14120 'cls 3:
14130 'line (0,0) - (1500,60),rgb(0,0,255),bf
14140 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14150 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14160 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14170 locate 0,2:Font 48
14180 print chr$(13) + chr$(13)
14190 color rgb(0,0,0)
14200 print "誕生日を単数変換します";chr$(13)
14210 print "数字の範囲:1~９,11,22,33";chr$(13)
14220 print "例:1973年11月22日の場合";chr$(13)
14230 print "1+9+7+3+11+22=53 ";chr$(13)
14240 print "→ 5 + 3 = 8" + chr$(13)
14250 print "故に8が数秘ナンバーになります";chr$(13)
14260 locate 0,15
14270 color rgb(255,255,255)
14280 print "ジョイパッドの右を押してください"
14290 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14300 '"key$ = input$(1)"
14310 '"if key$ = chr$(13) then goto Main_Screen:"
14320 suhi_rule_selection:
14330 bg = 0:key$ = "":bg2=0
14340 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
14350 bg = strig(1)
14360 key$ = inkey$
14370 bg2=strig(0)
14380 pause 2
14390 wend
14400 if ((bg = 2) or (key$ = chr$(13))) then
14410 pause 200:cls 4:goto Main_Screen:
14420 endif
14430 if (bg2=2) then
14440 play "":pause 200
14450 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14460 goto suhi_rule_selection:
14470 endif
14480 '2.設定
14490 '2-1.トップ画面に戻る
14500 Setting:
14510 cls 3:init"kb:4":font 48:No=0
14520 play ""
14530 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14540 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
14550 gload Gazo$ + "downscreen.png",0,0,800
14560 print chr$(13) + chr$(13) + chr$(13)
14570 color rgb(255,255,255):sp_on 0,1:
14580 print "番号を選んでください" + chr$(13)
14590 print " :1.トップ画面に戻る"+ chr$(13)
14600 print " :2.未実装" + chr$(13)
14610 print " :3.未実装" + chr$(13)
14620 print " :4.未実装" + chr$(13)
14630 color rgb(0,0,0)
14640 locate 1,15:print "1.トップ画面に戻るを選択"
14650 Setting_Selection:
14660 y=0:key$="":bg=0:bg2=0
14670 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
14680 'y=stick(1)
14690 key$ = inkey$
14700 bg=strig(1)
14710 bg2 = strig(0)
14720 pause 2
14730 wend
14740 if ((bg = 2) or (key$ = chr$(13))) then
14750 select case No
14760 case 0:
14770 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
14780 end select
14790 endif
14800 if (bg2 = 2) then
14810 play "":pause 200
14820 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14830 goto Setting_Selection:
14840 endif
14850 '3.Help
14860 '3-1.ルールの表示
14870 '3-2.バージョン
14880 '3-3.トップに戻る
14890 Help:
14900 cls 3:Font 48:No=0
14910 play ""
14920 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
14930 gload Gazo$ + "downscreen.png",0,0,800
14940 color rgb(255,255,255)
14950 print chr$(13)+chr$(13)+chr$(13)
14960 print "番号を選んでください"+chr$(13)
14970 print " :1.ルールの表示" + chr$(13)
14980 print " :2.バージョンの表示" + chr$(13)
14990 print " :3.参考文献" + chr$(13)
15000 print " :4.トップ画面に戻る" + chr$(13)
15010 color rgb(0,0,0)
15020 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15030 locate 1,15
15040 print "                                      "
15050 locate 1,15
15060 print "1.ルールの表示を選択"
15070 init"kb:4"
15080 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15090 Help_Select:
15100 bg=0:key$="":y=0:bg2=0
15110 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15120 y = stick(1)
15130 key$ = inkey$
15140 bg = strig(1)
15150 bg2 = strig(0)
15160 pause 2
15170 wend
15180 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15190 if ((y = 1) or (key$ = chr$(31))) then
15200 select case No
15210 case 0:
15220 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
15230 case 1:
15240 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
15250 case 2:
15260 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
15270 case 3:
15280 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15290 end select
15300 endif
15310 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
15320 if ((y = -1) or (key$ = chr$(30))) then
15330 select case No
15340 case 0:
15350 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
15360 case 1:
15370 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15380 case 2:
15390 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
15400 case 3:
15410 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
15420 end select
15430 endif
15440 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
15450 if ((bg = 2) or (key$ = chr$(13))) then
15460 select case No
15470 case 0:
15480 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
15490 case 1:
15500 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
15510 case 2:
15520 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
15530 '3:Top画面に行く
15540 case 3:
15550 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
15560 end select
15570 endif
15580 if (bg2 = 2) then
15590 play "":pause 200
15600 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15610 goto Help_Select:
15620 endif
15630 '数秘術占い　トップ画面
15640 Kabara_TopScreen:
15650 cls 3:play ""
15660 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
15670 gload Gazo$ + "downscreen.png",0,0,800
15680 play Voice$ + "KabaraTop_Selection_20230721.mp3"
15690 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
15700 init"kb:4":No=0
15710 color rgb(255,255,255)
15720 print chr$(13)+chr$(13)+chr$(13)
15730 print "番号を選んでください" + chr$(13)
15740 print " :1.数秘術占い" + chr$(13)
15750 print " :2.バーズアイグリット" + chr$(13)
15760 print " :3.相性占い" + chr$(13)
15770 print " :4.トップ画面に戻る" + chr$(13)
15780 color rgb(0,0,0)
15790 locate 1,15:print "1.数秘術占いを選択"
15800 Kabara_TopScreen2:
15810 y = 0:bg = 0:key$ = "":bg2 = 0
15820 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
15830 key$ = inkey$
15840 bg = strig(1)
15850 y = stick(1)
15860 bg2 = strig(0)
15870 pause 2
15880 wend
15890 '選択ボタン
15900 'カーソル　と　ジョイパッド　の下
15910 if ((y = 1) or (key$ = chr$(31))) then
15920 select case No
15930 case 2:
15940 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
15950 case 3:
15960 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
15970 case 0:
15980 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
15990 case 1:
16000  No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16010 end select
16020 endif
16030 'カーソル　上
16040 if ((y=-1) or (key$=chr$(30))) then
16050 select case No
16060 case 0:
16070 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16080 case 1:
16090 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16100 case 2:
16110 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16120 case 3:
16130       No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16140 end select
16150 endif
16160 '決定ボタン
16170 'ジョイパッドの右　or  Enter key
16180 if ((bg = 2) or (key$ = chr$(13))) then
16190 select case No
16200 case 0:
16210 '1.数秘術占い
16220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
16230 case 3:
16240 '4.メイン画面にいく
16250 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
16260 case 1:
16270 '2.バースアイグリッド
16280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
16290 case 2:
16300 '3.相性占い
16310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
16320 end select
16330 endif
16340 if (bg2 = 2) then
16350 play "":pause 200
16360 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
16370 goto Kabara_TopScreen2:
16380 endif
16390 '1.バースアイグリット　名入力
16400 Inputname1:
16410 cls 3:init"kb:2":font 48
16420 gload Gazo$ + "Input_Birtheye2.png",0,0,0
16430 color rgb(255,255,255)
16440 locate 1,2:print "名前をアルファベットで入れてください"
16450 color rgb(0,0,0)
16460 locate 1,5:Input "名前（姓の部分）:",name1$
16470 'locate 1,5:print "Hit any key"
16480 n1 = len(name1$)
16490 if (n1 < 11) then
16500 for i=1 to n1
16510 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
16520 next i
16530 endif
16540 'if b$=chr$(13) then goto Inputname2:
16550 '2.グリッドアイ　姓の入力
16560 Inputname2:
16570 cls 3:init"kb:2":font 48
16580 gload Gazo$ + "Input_Birtheye1.png",0,0,0
16590 color rgb(255,255,255)
16600 locate 1,2:print "名前をアルファベットで入れてください"
16610 color rgb(0,0,0)
16620 locate 1,5:Input "名前(名の部分):",name2$
16630 n2=len(name2$)
16640 for i=1 to n2
16650 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
16660 next i
16670 '計算領域
16680 Complate:
16690 'name1
16700 for i=0 to 25
16710 for n=1 to len(name1$)
16720 if (buf_chart$(i,0) = buf_name1$(n-1)) then
16730 b = val(buf_chart$(i,1))
16740 buffer(b-1) = buffer(b-1) + 1
16750 endif
16760 next n
16770 next i
16780 'name2
16790 for i=0 to 25
16800 for n=1 to len(name2$)
16810 if (buf_chart$(i,0) = buf_name2$(n-1)) then
16820 c = val(buf_chart$(i,1))
16830 buffer(c - 1) = buffer(c - 1) + 1
16840 endif
16850 next n
16860 next i
16870 '結果表示領域
16880 Result_Birtheye1:
16890 cls 3:init"kb:4":No=0
16900 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
16910 gload Gazo$ + "downscreen.png",0,0,800
16920 color rgb(255,255,255)
16930 '1の表示
16940 locate 3,14:print buffer(0);
16950 '2の表示
16960 locate 3,9:print buffer(1);
16970 '3の表示
16980 locate 3,5:print buffer(2);
16990 '4の表示
17000 locate 10,14:print buffer(3);
17010 '5の表示
17020 locate 10,9:print buffer(4);
17030 '6の表示
17040 locate 10,5:print buffer(5);
17050 '7の表示
17060 locate 15,14:print buffer(6);
17070 '8の表示
17080 locate 15,9:print buffer(7);
17090 '9の表示
17100 locate 15,5:print buffer(8);
17110 'name を大文字に変換
17120 locate 5,3:print ucase$(name1$ + name2$)
17130 color rgb(0,0,0)
17140 locate 2,15:print "右の丸ボタン:トップ画面"
17150 bg=0:key$="":
17160 while ((bg <> 2) and (key$ <> chr$(13)))
17170 'Enterと決定ボタン
17180 key$ = inkey$
17190 bg = strig(1)
17200 pause 200
17210 wend
17220 if ((bg=2) or (key$=chr$(13))) then
17230 'データーをクリアしてトップ画面に行く
17240 for i=0 to 8
17250 buffer(i)=0
17260 next i
17270 for n=0 to 9
17280 buf_name1$(n) = ""
17290 buf_name2$(n) = ""
17300 next n
17310 'Topに行く
17320 goto Main_Screen:
17330 endif
17340 'goto Result_Birtheye1:
17350 'Result_Birtheye2:
17360 'cls 3:color rgb(255,255,255)
17370 'end
17380 'Memory 消去
17390 '
17400 References1:
17410 cls 3:key$="":bg=0:play "":font 48-16
17420 gload Gazo$ + "Reference1_20230703.png",0,0,0
17430 print chr$(13)+chr$(13)+chr$(13)
17440 color rgb(0,0,0)
17450 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
17460 print "Author:carol Adrinne,PhD"+chr$(13)
17470 print "出版社:幻冬舎" + chr$(13)
17480 print "HP:www.carolAdrienne.jp/"+chr$(13)
17490 print "ISBN:978-4-344-01394-0"+chr$(13)
17500 print "定価:1500円 + 税"+chr$(13)
17510 color rgb(255,255,255)
17520 locate 1,23
17530 print "ジョイパッド右：次へ"
17540 while (key$ <> chr$(13) and bg <> 2)
17550 bg = strig(1)
17560 key$ = inkey$
17570 wend
17580 '
17590 if ((bg = 2) or (key$ = chr$(13))) then
17600 pause 200:goto References2:
17610 endif
17620 'ユダヤの秘儀 カバラ大占術
17630 References2:
17640 cls 3:play "":bg = 0:key$ = ""
17650 gload Gazo$ + "Reference2_20230703.png",0,0,0
17660 '参考文献２
17670 'カバラ大占術
17680 print chr$(13) + chr$(13) + chr$(13)
17690 color  rgb(0,0,0):font 48-16
17700 locate 1,3
17710 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
17720 print "著者：浅野　八郎" + chr$(13)
17730 print "出版社:NON BOOK" + chr$(13)
17740 print "ISBN:4-396-10364-6" + chr$(13)
17750 print "定価:829円 + 税"
17760 color rgb(255,255,255)
17770 locate 1,23
17780 print "ジョイパッド右：トップへ行く"
17790 while ((key$ <> chr$(13)) and (bg <> 2))
17800 bg = strig(1)
17810 key$ = inkey$
17820 wend
17830 if ((bg = 2) or (key$ = chr$(13))) then
17840 pause 200:goto Main_Screen:
17850 endif
17860 end
17870 '1.数秘術　トップ画面
17880 Kabara_First_Top:
17890 cls 3:color rgb(255,255,255):play ""
17900 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
17910 gload Gazo$ + "downscreen.png",0,0,800
17920 No=0:init"kb:4"
17930 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
17940 print chr$(13);chr$(13)
17950 color rgb(255,255,255)
17960 locate 3,4:No=0
17970 print "番号選んでください" + chr$(13)
17980 print " :1.数秘術占い" + chr$(13)
17990 print " :2.トップ画面に戻る" + chr$(13)
18000 color rgb(0,0,0)
18010 sp_on 0,1
18020 locate 1,15:print "1.数秘術番号を求めるを選択"
18030 'KeyBord:true
18040 'Joy Pad:true
18050 '上、下:true
18060 '
18070 'ｂｇ：決定ボタン
18080 'カーソル　上
18090 'カーソル　下
18100 Kabara_First_Top2:
18110 key$ = "":bg = 0:y = 0:
18120 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
18130 key$ = inkey$
18140 bg = strig(1)
18150 y = stick(1)
18160 'PauseでCPUを休める
18170 pause 5
18180 wend
18190 '1.カーソル　下 処理 chr$(31)
18200 'カーソル　下
18210 if ((key$ = chr$(31)) or (y = 1)) then
18220 select case No
18230 '
18240 case 1:
18250 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
18260 case 0:
18270 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18280 'case 2:
18290 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
18300 end select
18310 endif
18320 '2.カーソル　上 処理 chr$(30)
18330 if ((key$ = chr$(30)) or (y = -1)) then
18340 select case No
18350 case 0:
18360 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18370 case 1:
18380 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
18390 'case 2:
18400 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
18410 end select
18420 endif
18430 '3.決定 処理  bg:2 or Enter key:chr$(13)
18440 if ((bg = 2) or (key$ = chr$(13))) then
18450 select case No
18460 case 0:
18470 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
18480 goto Kabara_TopScreen:
18490 'case 1:
18500 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
18510 case 1:
18520 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
18530 end select
18540 endif
18550 '
18560 'Kabara 相性占い トップ画面
18570 Kabara_Aishou_Top:
18580 cls 3:y=0:key$="":bg=0:No=0
18590 play ""
18600 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
18610 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
18620 print chr$(13) + chr$(13)
18630 locate 0,4:color rgb(255,255,255)
18640 'print "Ok"
18650 '
18660 print "番号を選んでください" + chr$(13)
18670 print " :1.男女2人の相性(未実装)" + chr$(13)
18680 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
18690 print " :3.トップ画面に戻る" + chr$(13)
18700 sp_on 0,1:sp_on 1,0:sp_on 2,0
18710 color rgb(0,0,0)
18720 locate 1,15:print "1.男女2人の相性占いを選択"
18730 Kabara_Aishou_Top2:
18740 key$ = "":y = 0:bg = 0:
18750 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
18760 'ジョイパッド(右) ,十字キー (上下)
18770 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
18780 y = stick(1)
18790 key$ = inkey$
18800 bg = strig(1)
18810 pause 5
18820 wend
18830 'カーソル　下 or 十字キー　下
18840 if ((key$ = chr$(31)) or (y = 1)) then
18850 select case No
18860 '選択肢　1 - 2に変更
18870 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
18880 'ok
18890 case 0:
18900 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
18910 '選択肢　2 - 3に変更
18920 case 1:
18930 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
18940 'リリース時 case 2コメント解除
18950 case 2:
18960 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
18970 case else:
18980 goto Kabara_Aishou_Top2:
18990 end select
19000 endif
19010 '十字キー　上　、カーソル　上
19020 if ((key$ = chr$(30)) or (y = -1)) then
19030 select case No
19040 case 0:
19050 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
19060 case 1:
19070 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
19080 case 2:
19090 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19100 case else:
19110 goto Kabara_Aishou_Top2:
19120 end select
19130 endif
19140 '十字キー　上下:選択
19150 'ジョイパッド 右:決定
19160 if ((bg = 2) or (key$ = chr$(13))) then
19170 select case No
19180 '1.男女の相性
19190 case 0:
19200 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:color rgb(255,255,255):end
19210 '2ビジネスの相性
19220 case 1:
19230 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
19240 case 2:
19250 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
19260 end select
19270 endif
19280 'ビジネスの相性　
19290 '1.1人目のビジネスの相性　名前入力　1人目
19300 Business_Aishou_Input_1_parson:
19310 No=0:color RGB(255,255,255)
19320 cls 3:init "kb:2"
19330 gload Gazo$ + "Screen1.png",0,0,0
19340 play "":color rgb(255,0,0):name$ = ""
19350 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
19360 color rgb(255,255,255):
19370 locate 0,4
19380 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
19390 print "入れてください" + chr$(13)
19400 Input "1人目の名前:",name$
19410 color rgb(0,0,0)
19420 locate 0,15:print "                                     "
19430 locate 0,15:print "1人目の名前を入力してエンターキー":cls 3
19440 'buffer_name$(0):1人目の名前
19450 buffer_name$(0) = name$:
19460 goto Business_Aishou_Input_2_Parson:
19470 '2.2人目のビジネスの相性 名前入力 2人目
19480 Business_Aishou_Input_2_Parson:
19490 cls 3:init "kb:2":name$ = "":No=0
19500 gload Gazo$ + "Screen1.png",0,0,0
19510 color rgb(255,0,0)
19520 'Title
19530 print "ビジネスの相性　2人目" + chr$(13) + chr$(13)
19540 locate 0,4
19550 color rgb(255,255,255)
19560 print "ビジネスの相性を求めます。2人目の相性を" + chr$(13)
19570 print "入れてください" + chr$(13)
19580 color rgb(255,255,255)
19590 Input "2人目の名前:",name$
19600 color rgb(0,0,0)
19610 locate 0,15:print "                                       "
19620 locate 0,15:print "2人目の名前を入力してエンター ":cls 3
19630 '2人目
19640 '2人目の名前を入れるに代入
19650 buffer_name$(1) = name$:
19660 goto Select_jyoushi:
19670 '3.上司の選択
19680 Select_jyoushi:
19690 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19700 init "kb:4":No=0
19710 color rgb(255,255,255)
19720 locate 0,4:print "名前から上司の方を選んでください"
19730 locate 0,6
19740 print " :";buffer_name$(0);"が上 司";chr$(13)
19750 locate 0,8
19760 print " :";buffer_name$(1);"が上 司";chr$(13)
19770 locate 0,15:
19780 print "                                     "
19790 locate 0,15:color rgb(0,0,0)
19800 print "上司の方を選んで右の丸ボタン"
19810 sp_on 0,1:sp_on 1,0:sp_on 2,0
19820 Select_jyoushi2:
19830 'ここでNo=0をおいてはいけない
19840 y=0:key$="":bg=0:
19850 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
19860 y = stick(1)
19870 key$ = inkey$
19880 bg = strig(1)
19890 pause 5
19900 wend
19910 '1.カーソル下の処理　or 十字キーの下処理
19920 if ((key$ = chr$(31)) or (y = 1)) then
19930 select case No
19940 case 0:
19950 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
19960 case 1:
19970 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
19980 end select
19990 endif
20000 '2.カーソル上処理　or 十字キーの上の処理
20010 if ((key$ = chr$(30)) or (y = -1)) then
20020 select case No
20030 case 0:
20040 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20050 case 1:
20060 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
20070 end select
20080 endif
20090 if ((key$ = chr$(13)) or (bg = 2)) then
20100 select case No
20110 case 0:
20120 '上司(name1)を配列に代入
20130 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_born_year:
20140 case 1:
20150 '上司（name2)を配列に代入
20160 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):goto Jyoushi_born_year:
20170 end select
20180 endif
20190 '3.決定ボタン　Enter or 右の丸ボタン
20200 '1.誕生日入力
20210 '1-1.生まれた年を入力
20220 Jyoushi_born_year:
20230 cls 3:gload Gazo$ + "Screen1.png",0,0,0
20240 init "kb:2"
20250 locate 2,1:color rgb(255,0,0)
20260 print "上司の生まれた年代を入力"
20270 color rgb(255,255,255)
20280 locate 2,4:print "生まれた年代を西暦4桁で入れてください"
20290 locate 2,5:Input "上司の生まれた年:",born_year
20300 '誕生日データーを配列に代入
20310 'buf_Jyoushi_Born_Year:上司の生まれた年代
20320 buf_Jyoushi_Born_Day(0) = born_year
20330 'born_year = 0
20340 goto Jyoushi_born_month:
20350 '1-2.生まれた月を入力
20360 Jyoushi_born_month:
20370 cls 3:gload Gazo$ + "Screen1.png",0,0,0
20380 init "kb:2"
20390 locate 2,1:
20400 color rgb(255,0,0)
20410 print "上司の生まれた月入力"
20420 color rgb(255,255,255)
20430 locate 2,4:print "生まれた月を入力してください"
20440 locate 2,5
20450 Input "上司の生まれ月:",born_month
20460 buf_Jyoushi_Born_Day(1) = born_month
20470 'born_month = 0
20480 goto Jyoushi_born_day:
20490 'buf_Jyoushi_Born_day
20500 '1-3.生まれた日を入力
20510 Jyoushi_born_day:
20520 cls 3:gload Gazo$ + "Screen1.png",0,0,0
20530 init "kb:2"
20540 locate 2,1:color rgb(255,0,0)
20550 print "上司の生まれた日　入力"
20560 locate 2,4:color rgb(255,255,255)
20570 print "生まれた日を入力してください"
20580 locate 2,5
20590 Input "上司の生まれた日:",born_day
20600 buf_Jyoushi_Born_Day(2) = born_day
20610 born_day = 0
20620 goto buka_born_year:
20630 '2.部下の誕生日入力
20640 '2-1.生まれた年を入力
20650 buka_born_year:
20660 cls 3:gload Gazo$+"Screen1.png",0,0,0
20670 init "kb:2"
20680 locate 1,1:color rgb(255,0,0)
20690 print "部下の生まれた年代入力"
20700 locate 0,4:color rgb(255,255,255)
20710 print "部下の生まれた年（西暦4桁）を入れてください"
20720 locate 0,5
20730 Input "部下の生まれた年(西暦4桁):",born_year
20740 buf_Buka_Born_Day(0) = born_year
20750 born_year = 0
20760 '2-2.生まれた月を入力
20770 buka_born_month:
20780 cls 3:gload Gazo$+"Screen1.png",0,0,0
20790 init "kb:2"
20800 locate 2,1:color rgb(255,0,0)
20810 print "部下の生まれた月 入力"
20820 locate 2,4:color rgb(255,255,255)
20830 print "部下の生まれた月を入力してください"
20840 locate 2,5:Input "部下の生まれた月:",born_month
20850 buf_Buka_Born_Day(1) = born_month
20860 '2-3.生まれた日を入力
20870 buka_born_day:
20880 cls 3:gload Gazo$ + "Screen1.png",0,0,0
20890 init "kb:2"
20900 locate 2,1:color rgb(255,0,0)
20910 print "生まれた日入力"
20920 color rgb(255,255,255)
20930 locate 2,4:print "生まれた日を入力してください"
20940 locate 2,5:Input "部下の生まれた日:",born_day
20950 buf_Buka_Born_Day(2) = born_day
20960 born_day=0:goto Result_Business_Aisyou:
20970 'ビジネの相性　結果表示
20980 Result_Business_Aisyou:
20990 cls 3:init"kb:4"
21000 a=0:b=0:c=0:d=0:e=0:f=0
21010 bg=0
21020 gload Gazo$+"Screen1.png",0,0,0
21030 a=buf_Jyoushi_Born_Day(0):b=buf_Jyoushi_Born_Day(1):c=buf_Jyoushi_Born_Day(2)
21040 d = buf_Buka_Born_Day(0):e=buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
21050 buf_Jyoushi = Kabara_Num(a,b,c)
21060 buf_Buka = Kabara_Num(e,f,g)
21070 a_1=buf_Jyoushi
21080 a_2=buf_Buka
21090 Result_Aisyou$=Kabara_Aisyou$(a_1,a_2)
21100 locate 2,1
21110 color rgb(255,0,0)
21120 print "●.相性診断結果１"
21130 locate 2,4:
21140 color rgb(255,255,255)
21150 print "1.上司の名前:";buffer_name$(0)
21160 locate 2,6
21170 print "2.上司の数秘:";buf_Jyoushi
21180 locate 2,8
21190 print "3.部下の名前:";buffer_name$(1)
21200 locate 2,10
21210 print "4.部下の数秘:";buf_Buka
21220 locate 2,12
21230 print "5.上司と部下の相性:";Result_Aisyou$
21240 locate 1,15
21250 color rgb(0,0,0)
21260 print "右の丸ボタン:メイン画面"
21270 while (bg <> 2)
21280 bg = strig(1)
21290 wend
21300 if (bg = 2) then goto Main_Screen:
21310 '自作関数 ここから
21320 'カバラ数（数秘番号を求める）
21330 func Kabara_Num(buffer_Year,month,day)
21340 'if ((a > 1900) and (a < 3000)) then
21350 'a1:4桁のうちの1桁目を求める
21360 '例 a1:1234の4が1桁目
21370 'a2:4桁のうちの2桁目を求める
21380 '例:a2:1234の3が2桁目
21390 'a3:4桁のうちの3桁目を求める
21400 '例 a3:1234の2が3桁目
21410 'a4:4桁のうちの4桁目を求める
21420 '例 a4:1234の1が4桁目
21430 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
21440 Year = buffer_Year
21450 a4 = fix(Year / 1000)
21460 a3 = fix(Year / 100) - (a4 * 10)
21470 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
21480 a1 = fix(Year - (a4 * 1000 + a3 * 100+ a2 * 10))
21490 a_ = a1 + a2 + a3 + a4 +month+day
21500 'a1=0:a2=0:a3=0:a4=0
21510 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
21520 buffer = a_
21530 'else
21540 goto recomp2:
21550 'if (a_ = 10) then
21560 '  buffer = 1
21570 endif
21580 recomp2:
21590 a1=0:a2=0
21600 a1 = fix(a_/10)
21610 a2 = fix(a_-a1*10)
21620 a_ = a1 + a2
21630 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
21640  goto Res2:
21650 '  if ((a_>11) and (a_<99)) then
21660 else
21670 goto recomp2:
21680 endif
21690 '     a1 = fix(a_ / 10)
21700 '     a2 = a_ - (a1 * 10)
21710 '     a_ = a1 + a2
21720 '     buffer = a_
21730 'endif
21740 'else
21750 '    bffer = a_
21760 'endif
21770 'endif
21780 'else
21790 'talk "プログラムを終了します。"
21800 'end
21810 'endif
21820 'kabara = 10
21830 Res2:
21840 kabara = a_
21850 endfunc kabara
21860 func Kabara_Aisyou$(buff1,buff2)
21870 a=0:b=0
21880 if ((buff1 > 0 and buff1 < 10)) then
21890 a = buff1
21900 else
21910 Select case buff1
21920 case 11:
21930        buff1=9:a=buff1
21940 case 22:
21950        buff1=10:a=buff1
21960 end select
21970 endif
21980 if ((buff2 > 0 and buff2 < 10)) then
21990  b = buff2
22000 else
22010 select case buff2
22020   case 11:
22030          buff2=9:b=buff2
22040   case 12:
22050          buff2=10:b=buff2
22060 end select
22070 endif
22080 Aisyou$ = Buffer_Business_Aisyou$(a,b)
22090 endfunc Aisyou$
22100 '自作関数 ここまで
22110 '1.数秘術　トップ画面
22120 '
22130 'Data_eraseを一番最後に持ってくる
22140 Data_erase:
22150 erase buf_name1$
22160 'メモリー削除
22170 erase buf_name2$
22180 erase buffer
22190 erase buf_chart$
22200 erase Buffer_Business_Aisyou$
22210 erase buffer_name$
22220 'erase buf_Jyoushi_Born_Year
22230 'erase buf_Jyoushi_Born_Month
22240 '上司の誕生日
22250 erase buf_Jyoushi_Born_Day
22260 'erase buf_Buka_Born_Year
22270 'erase buf_Buka_Born_Month
22280 '部下の誕生日
22290 erase buf_Buka_Born_Day
22300 erase buf_year
22310 return
