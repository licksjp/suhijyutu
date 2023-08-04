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
290 Version$ = "Ver:1.0.9_20230806"
300 'Gazo file Folder
310 Gazo$ = "./data/Picture/"
320 'Voice files 2023
330 Voice$ = "./data/Voice/Voice/"
340 'BirtheyeChart Data:20230626
350 Birth_eye_chart$ = "./data/chart_data/"
360 'Data File
370 Data$ = "./data/data/"
380 '変数定義 パート
390 b=0:c=0
400 dim buf_name1$(10),buf_name2$(10)
410 dim buffer(9),buf_chart$(26,2)
420 'ビジネスの相性　データー
430 dim Buffer_Business_Aisyou$(12,12)
440 '生れた年代
450 dim buf_year(4):buf_year$=""
460 dim buf_month(2)
470 dim buf_day(2)
480 '生れた月
490 buf_Month$ = ""
500 '生れた日
510 buf_Day$ = ""
520 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
530 dim buffer_name$(3)
540 '1-1.上司の誕生日(数値データー)
550 dim buf_Jyoushi_Born_Day(3)
560 '1-2.上司の数秘ナンバー(数値データー)
570 buf_Jyoushi_Kabara_Num = 0
580 '2-1.部下の誕生日(数値データー)
590 dim buf_Buka_Born_Day(3)
600 '2-2.部下の数秘ナンバー(数秘データー)
610 buf_Buka_Kabara_Num = 0
620 count=0
630 '部下の数秘ナンバー
640 'File 読み込み
650 '1.ビジネスの相性占い
660 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
670 for i=0 to 11
680 for j=0 to 11
690 input #1,a$
700 Buffer_Business_Aisyou$(i,j) = a$
710 next j
720 next i
730 close #1
740 '2.Birth Eye chart$
750 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
760 for j=0 to 25
770 for i=0 to 1
780 input #1,a$
790 buf_chart$(j,i) = a$
800 next i
810 next j
820 close #1
830 'File 読み込み　ここまで
840 'Main画面
850 screen 1,1,1,1
860 Main_Screen:
870 cls 3:
880 No=0
890 gload Gazo$ + "Selection.png",1,5,200
900 gload Gazo$ + "Selection.png",1,5,300
910 gload Gazo$ + "Selection.png",1,5,400
920 gload Gazo$ + "Selection.png",1,5,500
930 '4
940 gload Gazo$ + "Selection.png",1,35,300
950 '5
960 gload Gazo$ + "Selection.png",1,35,400
970 '6
980 gload Gazo$ + "Selection.png",1,35,500
990 '7
1000 gload Gazo$ + "Selection.png",1,70,300
1010 '8
1020 gload Gazo$ + "Selection.png",1,70,400
1030 '9
1040 gload Gazo$ + "Selection.png",1,70,500
1050 '10
1060 gload Gazo$ + "Selection.png",1,110,300
1070 '11
1080 gload Gazo$ + "Selection.png",1,110,400
1090 '12
1100 gload Gazo$ + "Selection.png",1,110,500
1110 '13:0
1120 gload Gazo$ + "Selection.png",1,150,400
1130 gload Gazo$ + "Selection.png",1,200,400
1140 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1150 gload Gazo$ + "downscreen.png",0,0,800
1160 sp_def 0,(5,300),32,32
1170 sp_def 1,(5,400),32,32
1180 sp_def 2,(5,500),32,32
1190 sp_def 3,(5,600),32,32
1200 '1
1210 sp_def 4,(35,300),32,32
1220 '2
1230 sp_def 5,(35,400),32,32
1240 '3
1250 sp_def 6,(35,500),32,32
1260 '4
1270 sp_def 7,(70,300),32,32
1280 '5
1290 sp_def 8,(70,400),32,32
1300 '6
1310 sp_def 9,(70,500),32,32
1320 '7
1330 sp_def 10,(110,300),32,32
1340 '8
1350 sp_def 11,(110,400),32,32
1360 '9
1370 sp_def 12,(110,400),32,32
1380 sp_def 13,(150,400),32,32
1390 sp_def 14,(200,400),32,32
1400 'Sprite OFF
1410 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1420 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1430 sp_put 0,(5,300),0,0
1440 sp_put 1,(5,400),1,0
1450 sp_put 2,(5,500),2,0
1460 sp_put 3,(5,600),3,0
1470 '1
1480 sp_put 4,(130,300),4,0
1490 '2
1500 sp_put 5,(130,400),5,0
1510 '3
1520 sp_put 6,(130,500),6,0
1530 '4
1540 sp_put 7,(340,300),7,0
1550 '5
1560 sp_put 8,(340,400),8,0
1570 '6
1580 sp_put 9,(340,500),9,0
1590 '7
1600 sp_put 10,(540,300),10,0
1610 '8
1620 sp_put 11,(540,400),11,0
1630 '9
1640 sp_put 12,(540,500),12,0
1650 '
1660 sp_put 13,(340,600),13,0
1670 sp_put 14,(540,600),14,0
1680 Main_Top:
1690 'Main Message 2023.06.07
1700 '再生を止める
1710 play ""
1720 init "kb:4"
1730 'font 32:
1740 font 48
1750 print chr$(13) + chr$(13) + chr$(13)
1760 color rgb(217,255,212)
1770 print "番号を選んでください" + chr$(13)
1780 '0
1790 print " :1.数秘術占い" + chr$(13)
1800 '1
1810 print " :2.設 定" + chr$(13)
1820 '2
1830 print " :3.ヘルプ" + chr$(13)
1840 '3
1850 print " :4.(プログラムを)終了する" + chr$(13)
1860 COLOR rgb(0,0,0):No=0
1870 locate 1,15
1880 print "                                       "
1890 locate 1,15:print "1.数秘術占いを選択"
1900 play Voice$ + "Voice_Main_Message_20230607.mp3"
1910 Main_Screen_Select:
1920 y = 0:key$ = "":bg = 0:bg2=0
1930 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
1940 y = stick(1)
1950 '"May (2023)"
1960 key$ = inkey$
1970 bg = strig(1)
1980 bg2 = strig(0)
1990 pause 2
2000 wend
2010 '1.
2020 'ジョイパッドのソース ソート　ここから
2030 'カーソル　下 or 十字キー下
2040 if ((y = 1) or (key$ = chr$(31))) then
2050 select case No
2060 case 0:
2070 '1
2080 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2090 case 1:
2100 '2
2110 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2120 case 2:
2130 '3
2140 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2150 case 3:
2160 '0
2170 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2180 end select
2190 endif
2200 '2.
2210 'カーソル　上　or 十字キー  上
2220 if ((y = -1) or (key$ = chr$(30))) then
2230 select case No
2240 case 0:
2250 '3
2260 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2270 case 1:
2280 '0
2290 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2300 case 2:
2310 '1
2320 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2330 case 3:
2340 '2
2350 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2360 end select
2370 endif
2380 'ジョイパッド　ソース 部分　ここまで
2390 'ジョイパッド右　　or Enter key 決定
2400 if ((bg = 2) OR (key$ = chr$(13))) then
2410 select case No
2420 case 0:
2430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2440 case 1:
2450 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2460 case 2:
2470 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2480 case 3:
2490 play "":pause 200
2500 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2510 end select
2520 endif
2530 if (bg2 = 2) then
2540 play "":pause 200
2550 play Voice$ + "Voice_Main_Message_20230607.mp3"
2560 goto Main_Screen_Select:
2570 endif
2580 'Version
2590 Version:
2600 cls 3:PLAY ""
2610 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2620 gload Gazo$ + "downscreen.png",0,0,800
2630 init"kb:4":font 32
2640 'talk"バージョン情報です"
2650 'Message :Version
2660 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2670 locate 0,5
2680 color rgb(0,0,0)
2690 print "・Title:数秘術占い";chr$(13)
2700 print "・" + Version$ + chr$(13)
2710 print "・Author:licksjp"+chr$(13)
2720 print "・E-mail:licksjp@gmail.com" + chr$(13)
2730 locate 0,18
2740 print "(C)licksjp All rights " + chr$(13)
2750 locate 13,19
2760 print "reserved since 2009"+chr$(13)
2770 locate 0,23
2780 color rgb(255,255,255)
2790 print "ジョイパッドの右を押してください"
2800 Versionn_Selection:
2810 bg = 0:key$ = "":bg2 = 0
2820 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2830 bg = strig(1)
2840 key$ = inkey$
2850 bg2 = strig(0)
2860 pause 2
2870 wend
2880 if ((bg = 2) or (key$ = chr$(13))) then
2890 pause 200:cls 4:goto Main_Screen:
2900 endif
2910 if (bg2=2) then
2920 play "":pause 200
2930 play Voice$ + "Voice_Version_Message_20230607.mp3"
2940 goto Versionn_Selection:
2950 endif
2960 '1.数秘ナンバーを求める
2970 '誕生日入力(生れた年代)
2980 Input_Seireki:
2990 cls 3:play "":count=0
3000 'No=-1:Okのとき
3010 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3020 for i=0 to 3
3030 buf_year(i)=0
3040 next i
3050 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
3060 gload Gazo$ + "Screen1.png",0,0,0
3070 gload Gazo$ + "downscreen.png",0,0,800
3080 'Init"kb:2"
3090 '音声ファイル再生 2023.06.07
3100 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3110 font 48
3120 locate 0,1
3130 '文字色：黒　 color rgb(0,0,0)
3140 color rgb(255,255,255)
3150 print "生まれた年代を入れて下さい" + chr$(13)
3160 color rgb(255,255,255)
3170 locate 2,3
3180 print "生まれた年代(西暦4桁):";buf_year$
3190 color rgb(255,0,0)
3200 'locate 4,6:print ":7"
3210 'locate 9,6:print ":8"
3220 'locate 12,6:print ":9"
3230 locate 4,6
3240 print ":7  :8  :9" + chr$(13)
3250 color rgb(255,0,0)
3260 locate 4,8
3270 print ":4  :5  :6" + chr$(13)
3280 color rgb(255,0,0)
3290 locate 4,10
3300 print ":1  :2  :3" + chr$(13)
3310 locate 4,12
3320 print "    :0"
3330 locate 12,12
3340 color rgb(0,0,255)
3350 print ":Ok"
3360 sp_on 4,0: sp_on 5,0:sp_on 6,0
3370 sp_on 7,0:sp_on 8,0:sp_on 9,0
3380 sp_on 10,0:sp_on 11,0:sp_on 12,0
3390 sp_on 13,0:sp_on 14,1
3400 Input_Seireki2:
3410 key$="":bg=0:y=0:y2=0
3420 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)))
3430 key$ = inkey$
3440 bg = strig(1)
3450 y = stick(1)
3460 y2 = stick(0)
3470 pause 5
3480 wend
3490 '十字キー　ここから
3500 '上の矢印　または、十字キー上
3510 if ((y = -1) or (key$ = chr$(30))) then
3520 select case No
3530 'No=-1:okのとき:初期の状態
3540 '0kボタンから３に移動
3550 '上に行く 処理
3560 case -1:
3570 No=3:sp_on 12,1:sp_on 14,0
3580 pause 200:goto Input_Seireki2:
3590 '選択肢:3
3600 '3ボタンから 6に移動
3610 case 3:
3620 No=6:sp_on 12,0:sp_on 11,1
3630 pause 200:goto Input_Seireki2:
3640 '6ボタンから ９に移動
3650 case 6:
3660 No=9:sp_on 10,1:sp_on 11,0
3670 pause 200:goto Input_Seireki2:
3680 '6ボタンから ９に移動　ここまで
3690 '9で上を押して何もしない
3700 case 9:
3710 '何もしない
3720 No=9
3730 pause 200:goto Input_Seireki2:
3740 '9で上を押しても何もしない　ここまで
3750 '上　 0ボタンから2ボタン
3760 'sp_on 6,1:1
3770 'sp_on 8,1:5
3780 'sp_on 7,1:7
3790 case 0:
3800 No=2:sp_on 13,0:sp_on 9,1:
3810 pause 200:goto Input_Seireki2:
3820 '上  0ボタンから2ボタン　ここまで
3830 '2から５になる 上
3840 case 2:
3850 No=5:sp_on 8,1:sp_on 9,0:
3860 pause 200:goto Input_Seireki2:
3870 case 5:
3880 No=8:sp_on 7,1:sp_on 8,0
3890 pause 200:goto Input_Seireki2:
3900 case 8:
3910 pause 200:goto Input_Seireki2:
3920 case 1:
3930 No=4:sp_on 5,1:sp_on 6,0
3940 pause 200:goto Input_Seireki2:
3950 case 4:
3960 No=7:sp_on 4,1:sp_on 5,0
3970 pause 200:goto Input_Seireki2:
3980 case 7:
3990 pause 200:goto Input_Seireki2:
4000 end select
4010 endif
4020 '左３　ここまで
4030 '下の矢印
4040 '中央 2
4050 if ((y=1) or (key$ = chr$(31))) then
4060 select case No
4070 '9から６に下げる
4080 case 9:
4090 No=6:sp_on 11,1:sp_on 10,0
4100 pause 200:goto Input_Seireki2:
4110 '6から３に下げる
4120 case 6:
4130 No=3:sp_on 12,1:sp_on 11,0
4140 pause 200:goto Input_Seireki2:
4150 '3から０ｋに変える
4160 case 3:
4170 No=-1:sp_on 14,1:sp_on 12,0
4180 pause 200:goto Input_Seireki2:
4190 'Okから下のボタンを押しても何もしない
4200 case -1:
4210 pause 200:goto Input_Seireki2:
4220 case 8:
4230 No=5:sp_on 8,1:sp_on 7,0
4240 pause 200:goto Input_Seireki2:
4250 case 5:
4260 No=2:sp_on 9,1:sp_on 8,0
4270 pause 200:goto Input_Seireki2:
4280 case 2:
4290 No=0:sp_on 13,1:sp_on 9,0
4300 pause 200:goto Input_Seireki2:
4310 case 0:
4320 pause 200:goto Input_Seireki2:
4330 case 7:
4340 No=4:sp_on 5,1:sp_on 4,0
4350 pause 200:goto Input_Seireki2:
4360 case 4:
4370 No=1:sp_on 6,1:sp_on 5,0
4380 pause 200:goto Input_Seireki2:
4390 case 1:
4400 pause 200:goto Input_Seireki2:
4410 end select
4420 endif
4430 '左へボタン 十字キー　左　or 　カーソル左
4440 if ((y2 = -1) or (key$ = chr$(29))) then
4450 select case No
4460 'Ok ボタン  Okから　左　０に行く
4470 case -1:
4480 No=0:sp_on 13,1:sp_on 14,0
4490 pause 200:goto Input_Seireki2:
4500 '0 ボタン  左　何もしない
4510 case 0:
4520 pause 200:goto Input_Seireki2:
4530 case 3:
4540 No=2:sp_on 9,1:sp_on 12,0:
4550 pause 200:goto Input_Seireki2:
4560 case 2:
4570 No=1:sp_on 6,1:sp_on 9,0:
4580 pause 200:goto Input_Seireki2:
4590 case 1:
4600 pause 200:goto Input_Seireki2:
4610 case 6:
4620 No=5:sp_on 8,1:sp_on 11,0
4630 pause 200:goto Input_Seireki2:
4640 case 5:
4650 No=4:sp_on 5,1:sp_on 8,0
4660 pause 200:goto Input_Seireki2:
4670 case 4:
4680 pause 200:goto Input_Seireki2:
4690 case 9:
4700 No=8:sp_on 7,1:sp_on 10,0
4710 pause 200:goto Input_Seireki2:
4720 case 8:
4730 No=7:sp_on 4,1:sp_on 7,0
4740 pause 200:goto Input_Seireki2:
4750 case 7:
4760 pause 200:goto Input_Seireki2:
4770 end select
4780 endif
4790 '右  十字キー　右　or カーソル　右
4800 if ((y2 = 1) or (key$ = chr$(28))) then
4810 select case No
4820 '0ボタンからokボタン右に移動
4830 case 0:
4840 No=-1:sp_on 14,1:sp_on 13,0
4850 pause 200:goto Input_Seireki2:
4860 '0ボタンからokボタン 右に移動　ここまで
4870 'OKボタンで右を押して何もしない
4880 case -1:
4890 pause 200:goto Input_Seireki2:
4900 case 1:
4910 No=2:sp_on 9,1:sp_on 6,0
4920 pause 200:goto Input_Seireki2:
4930 case 2:
4940 No=3:sp_on 12,1:sp_on 9,0
4950 pause 200:goto Input_Seireki2:
4960 case 3:
4970 pause 200:goto Input_Seireki2:
4980 case 4:
4990 No=5:sp_on 8,1:sp_on 5,0
5000 pause 200:goto Input_Seireki2:
5010 case 5:
5020 No=6:sp_on 11,1:sp_on 8,0
5030 pause 200:goto Input_Seireki2:
5040 case 7:
5050 No=8:sp_on 7,1:sp_on 4,0
5060 pause 200:goto Input_Seireki2:
5070 case 8:
5080 No=9:sp_on 10,1:sp_on 7,0
5090 pause 200:goto Input_Seireki2:
5100 case 9:
5110 pause 200:goto Input_Seireki2:
5120 case 6:
5130 pause 200:goto Input_Seireki2:
5140 end select
5150 'Okから右ボタンを押して何もしない ここまで
5160 endif
5170 '十字キー　ここまで
5180 if ((bg=2) or (key$=chr$(13))) then
5190 select case count
5200 case 0:
5210 count=1
5220 if (No=-1) then
5230 count=0
5240 'Okボタンを押したとき
5250 goto Input_Seireki2:
5260 else
5270 'Okボタン以外が押されたとき
5280 buf_year$="":buf_year$=str$(No)
5290 locate 2,3
5300 color rgb(255,255,255)
5310 print "生まれた年代(西暦4桁):";buf_year$
5320 goto Input_Seireki2:
5330 endif
5340 case 1:
5350 count = 2
5360 if (No = -1) then
5370 count = 1
5380 goto Input_Seireki2:
5390 else
5400 b = val(buf_year$)
5410 buf_year = b * 10 + No
5420 buf_year$ = str$(buf_year)
5430 locate 2,3
5440 color rgb(255,255,255)
5450 print "生まれた年代(西暦4桁):";buf_year$
5460 'if (No = -1) then
5470 'count=1
5480 goto Input_Seireki2:
5490 endif
5500 case 2:
5510 count=3
5520 if (No=-1) then
5530  count =2
5540  goto Input_Seireki2:
5550 else
5560 b = val(buf_year$)
5570 buf_year = b*10 + No
5580 buf_year$ = str$(buf_year)
5590 locate 2,3
5600 color rgb(255,255,255)
5610 print "生まれた年代(西暦4桁):";buf_year$
5620 goto Input_Seireki2:
5630 endif
5640 case 3:
5650 count=4
5660 if (No=-1) then
5670 count=3
5680 goto Input_Seireki2:
5690 else
5700 b=val(buf_year$)
5710 buf_year=b*10+No
5720 buf_year$=str$(buf_year)
5730 locate 2,3
5740 color RGB(255,255,255)
5750 print "生まれた年代(西暦4桁):";buf_year$
5760 buf_year=val(buf_year$)
5770 'year=val(buf_year$)
5780 'if (No=-1) then
5790 'goto Input_Born_Month:
5800 'else
5810 goto Input_Seireki2:
5820 endif
5830 case 4:
5840 'bufyear=buf_year
5850 if (No=-1) then
5860 buf_year = val(buf_year$)
5870 bufyear = buf_year
5880 sp_on 14,0
5890 goto Input_Born_Month:
5900 else
5910 goto Input_Seireki2:
5920 endif
5930 end select
5940 endif
5950 end
5960 'Input"生れた年代(4桁,〜2025年):",year
5970 'if year > 2025 then goto Input_Seireki:
5980 'if year = 123 then cls 3:cls 4:goto Main_Screen:
5990 '"4桁目"
6000 'bufyear4 = fix(year / 1000)
6010 '"3桁目"
6020 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6030 '"2桁目"
6040 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6050 '"1桁目"
6060 'bufyear1 = fix((year - ((bufyear4*
6070 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6080 '生れた月を入力
6090 Input_Born_Month:
6100 cls 3:play "":count=0
6110 'No=-1:Okのとき
6120 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6130 for i=0 to 1
6140 buf_month(i)=0
6150 next i
6160 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6170 gload Gazo$ + "Screen1.png",0,0,0
6180 gload Gazo$ + "downscreen.png",0,0,800
6190 'Init"kb:2"
6200 '音声ファイル再生 2023.06.07
6210 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
6220 font 48
6230 locate 0,1
6240 '文字色：黒　 color rgb(0,0,0)
6250 '文字色:白
6260 color rgb(255,255,255)
6270 print "生まれた月を入れて下さい" + chr$(13)
6280 '文字色:白
6290 color rgb(255,255,255)
6300 locate 2,3
6310 '文字色:白
6320 print "生まれた月(1月~12月):";buf_Month$
6330 color rgb(255,0,0)
6340 'locate 4,6:print ":7"
6350 'locate 9,6:print ":8"
6360 'locate 12,6:print ":9"
6370 locate 4,6
6380 '文字色:赤
6390 print ":7  :8  :9" + chr$(13)
6400 color rgb(255,0,0)
6410 locate 4,8
6420 print ":4  :5  :6" + chr$(13)
6430 color rgb(255,0,0)
6440 locate 4,10
6450 print ":1  :2  :3" + chr$(13)
6460 locate 4,12
6470 print "    :0"
6480 locate 12,12
6490 color rgb(0,0,255)
6500 print ":Ok"
6510 sp_on 4,0: sp_on 5,0:sp_on 6,0
6520 sp_on 7,0:sp_on 8,0:sp_on 9,0
6530 sp_on 10,0:sp_on 11,0:sp_on 12,0
6540 sp_on 13,0:sp_on 14,1
6550 Input_Born_Month2:
6560 key$="":bg=0:y=0:y2=0
6570 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)))
6580 key$ = inkey$
6590 bg = strig(1)
6600 y = stick(1)
6610 y2 = stick(0)
6620 pause 5
6630 wend
6640 '十字キー　ここから
6650 '上の矢印　または、十字キー上
6660 if ((y = -1) or (key$ = chr$(30))) then
6670 select case No
6680 'No=-1:okのとき:初期の状態
6690 '0kボタンから３に移動
6700 '上に行く 処理
6710 case -1:
6720 No=3:sp_on 12,1:sp_on 14,0
6730 pause 200:goto Input_Born_Month2:
6740 '選択肢:3
6750 '3ボタンから 6に移動
6760 case 3:
6770 No=6:sp_on 12,0:sp_on 11,1
6780 pause 200:goto Input_Born_Month2:
6790 '6ボタンから ９に移動
6800 case 6:
6810 No=9:sp_on 10,1:sp_on 11,0
6820 pause 200:goto Input_Born_Month2:
6830 '6ボタンから ９に移動　ここまで
6840 '9で上を押して何もしない
6850 case 9:
6860 '何もしない
6870 No=9
6880 pause 200:goto Input_Born_Month2:
6890 '9で上を押しても何もしない　ここまで
6900 '上　 0ボタンから2ボタン
6910 'sp_on 6,1:1
6920 'sp_on 8,1:5
6930 'sp_on 7,1:7
6940 case 0:
6950 No=2:sp_on 13,0:sp_on 9,1:
6960 pause 200:goto Input_Born_Month2:
6970 '上  0ボタンから2ボタン　ここまで
6980 '2から５になる 上
6990 case 2:
7000 No=5:sp_on 8,1:sp_on 9,0:
7010 pause 200:goto Input_Born_Month2:
7020 case 5:
7030 No=8:sp_on 7,1:sp_on 8,0
7040 pause 200:goto Input_Born_Month2:
7050 case 8:
7060 pause 200:goto Input_Born_Month2:
7070 case 1:
7080 No=4:sp_on 5,1:sp_on 6,0
7090 pause 200:goto Input_Born_Month2:
7100 case 4:
7110 No=7:sp_on 4,1:sp_on 5,0
7120 pause 200:goto Input_Born_Month2:
7130 case 7:
7140 pause 200:goto Input_Born_Month2:
7150 end select
7160 endif
7170 '左３　ここまで
7180 '下の矢印
7190 '中央 2
7200 if ((y=1) or (key$ = chr$(31))) then
7210 select case No
7220 '9から６に下げる
7230 case 9:
7240 No=6:sp_on 11,1:sp_on 10,0
7250 pause 200:goto Input_Born_Month2:
7260 '6から３に下げる
7270 case 6:
7280 No=3:sp_on 12,1:sp_on 11,0
7290 pause 200:goto Input_Born_Month2:
7300 '3から０ｋに変える
7310 case 3:
7320 No=-1:sp_on 14,1:sp_on 12,0
7330 pause 200:goto Input_Born_Month2:
7340 'Okから下のボタンを押しても何もしない
7350 case -1:
7360 pause 200:goto Input_Born_Month2:
7370 case 8:
7380 No=5:sp_on 8,1:sp_on 7,0
7390 pause 200:goto Input_Born_Month2:
7400 case 5:
7410 No=2:sp_on 9,1:sp_on 8,0
7420 pause 200:goto Input_Born_Month2:
7430 case 2:
7440 No=0:sp_on 13,1:sp_on 9,0
7450 pause 200:goto Input_Born_Month2:
7460 case 0:
7470 pause 200:goto Input_Born_Month2:
7480 case 7:
7490 No=4:sp_on 5,1:sp_on 4,0
7500 pause 200:goto Input_Born_Month2:
7510 case 4:
7520 No=1:sp_on 6,1:sp_on 5,0
7530 pause 200:goto Input_Born_Month2:
7540 case 1:
7550 pause 200:goto Input_Born_Month2:
7560 end select
7570 endif
7580 '左へボタン 十字キー　左　or 　カーソル左
7590 if ((y2 = -1) or (key$ = chr$(29))) then
7600 select case No
7610 'Ok ボタン  Okから　左　０に行く
7620 case -1:
7630 No=0:sp_on 13,1:sp_on 14,0
7640 pause 200:goto Input_Born_Month2:
7650 '0 ボタン  左　何もしない
7660 case 0:
7670 pause 200:goto Input_Born_Month2:
7680 case 3:
7690 No=2:sp_on 9,1:sp_on 12,0:
7700 pause 200:goto Input_Born_Month2:
7710 case 2:
7720 No=1:sp_on 6,1:sp_on 9,0:
7730 pause 200:goto Input_Born_Month2:
7740 case 1:
7750 pause 200:goto Input_Born_Month2:
7760 case 6:
7770 No=5:sp_on 8,1:sp_on 11,0
7780 pause 200:goto Input_Born_Month2:
7790 case 5:
7800 No=4:sp_on 5,1:sp_on 8,0
7810 pause 200:goto Input_Born_Month2:
7820 case 4:
7830 pause 200:goto Input_Born_Month2:
7840 case 9:
7850 No=8:sp_on 7,1:sp_on 10,0
7860 pause 200:goto Input_Born_Month2:
7870 case 8:
7880 No=7:sp_on 4,1:sp_on 7,0
7890 pause 200:goto Input_Born_Month2:
7900 case 7:
7910 pause 200:goto Input_Born_Month2:
7920 end select
7930 endif
7940 '右  十字キー　右　or カーソル　右
7950 if ((y2 = 1) or (key$ = chr$(28))) then
7960 select case No
7970 '0ボタンからokボタン右に移動
7980 case 0:
7990 No=-1:sp_on 14,1:sp_on 13,0
8000 pause 200:goto Input_Born_Month2:
8010 '0ボタンからokボタン 右に移動　ここまで
8020 'OKボタンで右を押して何もしない
8030 case -1:
8040 pause 200:goto Input_Born_Month2:
8050 case 1:
8060 No=2:sp_on 9,1:sp_on 6,0
8070 pause 200:goto Input_Born_Month2:
8080 case 2:
8090 No=3:sp_on 12,1:sp_on 9,0
8100 pause 200:goto Input_Born_Month2:
8110 case 3:
8120 pause 200:goto Input_Born_Month2:
8130 case 4:
8140 No=5:sp_on 8,1:sp_on 5,0
8150 pause 200:goto Input_Born_Month2:
8160 case 5:
8170 No=6:sp_on 11,1:sp_on 8,0
8180 pause 200:goto Input_Born_Month2:
8190 case 7:
8200 No=8:sp_on 7,1:sp_on 4,0
8210 pause 200:goto Input_Born_Month2:
8220 case 8:
8230 No=9:sp_on 10,1:sp_on 7,0
8240 pause 200:goto Input_Born_Month2:
8250 case 9:
8260 pause 200:goto Input_Born_Month2:
8270 case 6:
8280 pause 200:goto Input_Born_Month2:
8290 end select
8300 'Okから右ボタンを押して何もしない ここまで
8310 endif
8320 '十字キー　ここまで
8330 '右の丸ボタン　決定キー
8340 if ((bg=2) or (key$=chr$(13))) then
8350 select case count
8360 case 0:
8370 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
8380 locate 2,3
8390 color RGB(255,255,255)
8400 print "生まれた月(1月~12月):";buf_Month$
8410 goto Input_Born_Month2:
8420 case 1:
8430 count = 2:c = No
8440 c = val(buf_Month$)
8450 if (No = -1) then
8460 'count=0
8470 month=buf_month
8480 buf_month=val(buf_Month$)
8490 month=buf_month
8500 '生まれた日に飛ぶ
8510 goto Input_Born_Day:
8520 else
8530 buf_month = c*10 + No
8540 buf_Month$= str$(buf_month)
8550 locate 2,3
8560 color Rgb(255,255,255)
8570 print "生まれた月(1月~12月):";buf_Month$
8580 goto Input_Born_Month2:
8590 endif
8600 case 2:
8610 count=3
8620 'c= val(buf_Month$)
8630 'buf_month = c*10 + No
8640 'buf_Month$ = str$(buf_month)
8650 'locate 2,3
8660 'print "生まれた月(1月～12月):";buf_Month$
8670 'goto Input_Born_Month2:
8680 'case 3:
8690 'count=4
8700 'b=val(buf_month$)
8710 'buf_month=c*10+No
8720 'buf_Month$=str$(buf_month)
8730 'locate 2,3
8740 'print "生まれた月(1月～12月):";buf_Month$
8750 'buf_month=val(buf_Month$)
8760 'year=val(buf_year$)
8770 if (No=-1) then
8780 goto Input_Born_Day:
8790 else
8800 'goto Input_Born_Month2:
8810 endif
8820 'case 4:
8830 'bufyear=buf_year
8840 'if (No=-1) then
8850 'buf_month = val(buf_Month$)
8860 'month = buf_month
8870 'sp_on 14,0
8880 'goto Input_Born_Day:
8890 'else
8900 'goto Input_Born_Month2:
8910 'endif
8920 end select
8930 endif
8940 'end
8950 '生れた日を入力
8960 Input_Born_Day:
8970 '生まれた日入力
8980 cls 3:play ""
8990 'No=-1:Okのとき
9000 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0
9010 for i=0 to 1
9020 buf_day(i)=0
9030 next i
9040 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
9050 gload Gazo$ + "Screen1.png",0,0,0
9060 gload Gazo$ + "downscreen.png",0,0,800
9070 'Init"kb:2"
9080 '音声ファイル再生 2023.06.07
9090 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
9100 font 48
9110 locate 0,1
9120 '文字色：黒　 color rgb(0,0,0)
9130 color rgb(255,255,255)
9140 print "生まれた日を入れて下さい" + chr$(13)
9150 color rgb(255,255,255)
9160 locate 2,3
9170 print "生まれた日(1日~31日):";buf_Day$
9180 color rgb(255,0,0)
9190 'locate 4,6:print ":7"
9200 'locate 9,6:print ":8"
9210 'locate 12,6:print ":9"
9220 locate 4,6
9230 print ":7  :8  :9" + chr$(13)
9240 color rgb(255,0,0)
9250 locate 4,8
9260 print ":4  :5  :6" + chr$(13)
9270 color rgb(255,0,0)
9280 locate 4,10
9290 print ":1  :2  :3" + chr$(13)
9300 locate 4,12
9310 print "    :0"
9320 locate 12,12
9330 color rgb(0,0,255)
9340 print ":Ok"
9350 sp_on 4,0: sp_on 5,0:sp_on 6,0
9360 sp_on 7,0:sp_on 8,0:sp_on 9,0
9370 sp_on 10,0:sp_on 11,0:sp_on 12,0
9380 sp_on 13,0:sp_on 14,1
9390 Input_Born_Day2:
9400 key$="":bg=0:y=0:y2=0
9410 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)))
9420 key$ = inkey$
9430 bg = strig(1)
9440 y = stick(1)
9450 y2 = stick(0)
9460 pause 5
9470 wend
9480 '十字キー　ここから
9490 '上の矢印　または、十字キー上
9500 if ((y = -1) or (key$ = chr$(30))) then
9510 select case No
9520 'No=-1:okのとき:初期の状態
9530 '0kボタンから３に移動
9540 '上に行く 処理
9550 case -1:
9560 No=3:sp_on 12,1:sp_on 14,0
9570 pause 200:goto Input_Born_Day2:
9580 '選択肢:3
9590 '3ボタンから 6に移動
9600 case 3:
9610 No=6:sp_on 12,0:sp_on 11,1
9620 pause 200:goto Input_Born_Day2:
9630 '6ボタンから ９に移動
9640 case 6:
9650 No=9:sp_on 10,1:sp_on 11,0
9660 pause 200:goto Input_Born_Day2:
9670 '6ボタンから ９に移動　ここまで
9680 '9で上を押して何もしない
9690 case 9:
9700 '何もしない
9710 No=9
9720 pause 200:goto Input_Born_Day2:
9730 '9で上を押しても何もしない　ここまで
9740 '上　 0ボタンから2ボタン
9750 'sp_on 6,1:1
9760 'sp_on 8,1:5
9770 'sp_on 7,1:7
9780 case 0:
9790 No=2:sp_on 13,0:sp_on 9,1:
9800 pause 200:goto Input_Born_Day2:
9810 '上  0ボタンから2ボタン　ここまで
9820 '2から５になる 上
9830 case 2:
9840 No=5:sp_on 8,1:sp_on 9,0:
9850 pause 200:goto Input_Born_Day2:
9860 case 5:
9870 No=8:sp_on 7,1:sp_on 8,0
9880 pause 200:goto Input_Born_Day2:
9890 case 8:
9900 pause 200:goto Input_Born_Day2:
9910 case 1:
9920 No=4:sp_on 5,1:sp_on 6,0
9930 pause 200:goto Input_Born_Day2:
9940 case 4:
9950 No=7:sp_on 4,1:sp_on 5,0
9960 pause 200:goto Input_Born_Day2:
9970 case 7:
9980 pause 200:goto Input_Born_Day2:
9990 end select
10000 endif
10010 '左３　ここまで
10020 '下の矢印
10030 '中央 2
10040 if ((y=1) or (key$ = chr$(31))) then
10050 select case No
10060 '9から６に下げる
10070 case 9:
10080 No=6:sp_on 11,1:sp_on 10,0
10090 pause 200:goto Input_Born_Day2:
10100 '6から３に下げる
10110 case 6:
10120 No=3:sp_on 12,1:sp_on 11,0
10130 pause 200:goto Input_Born_Day2:
10140 '3から０ｋに変える
10150 case 3:
10160 No=-1:sp_on 14,1:sp_on 12,0
10170 pause 200:goto Input_Born_Day2:
10180 'Okから下のボタンを押しても何もしない
10190 case -1:
10200 pause 200:goto Input_Born_Day2:
10210 case 8:
10220 No=5:sp_on 8,1:sp_on 7,0
10230 pause 200:goto Input_Born_Day2:
10240 case 5:
10250 No=2:sp_on 9,1:sp_on 8,0
10260 pause 200:goto Input_Born_Day2:
10270 case 2:
10280 No=0:sp_on 13,1:sp_on 9,0
10290 pause 200:goto Input_Born_Day2:
10300 case 0:
10310 pause 200:goto Input_Born_Day2:
10320 case 7:
10330 No=4:sp_on 5,1:sp_on 4,0
10340 pause 200:goto Input_Born_Day2:
10350 case 4:
10360 No=1:sp_on 6,1:sp_on 5,0
10370 pause 200:goto Input_Born_Day2:
10380 case 1:
10390 pause 200:goto Input_Born_Day2:
10400 end select
10410 endif
10420 '左へボタン 十字キー　左　or 　カーソル左
10430 if ((y2 = -1) or (key$ = chr$(29))) then
10440 select case No
10450 'Ok ボタン  Okから　左　０に行く
10460 case -1:
10470 No=0:sp_on 13,1:sp_on 14,0
10480 pause 200:goto Input_Born_Day2:
10490 '0 ボタン  左　何もしない
10500 case 0:
10510 pause 200:goto Input_Born_Day2:
10520 case 3:
10530 No=2:sp_on 9,1:sp_on 12,0:
10540 pause 200:goto Input_Born_Day2:
10550 case 2:
10560 No=1:sp_on 6,1:sp_on 9,0:
10570 pause 200:goto Input_Born_Day2:
10580 case 1:
10590 pause 200:goto Input_Born_Day2:
10600 case 6:
10610 No=5:sp_on 8,1:sp_on 11,0
10620 pause 200:goto Input_Born_Day2:
10630 case 5:
10640 No=4:sp_on 5,1:sp_on 8,0
10650 pause 200:goto Input_Born_Day2:
10660 case 4:
10670 pause 200:goto Input_Born_Day2:
10680 case 9:
10690 No=8:sp_on 7,1:sp_on 10,0
10700 pause 200:goto Input_Born_Day2:
10710 case 8:
10720 No=7:sp_on 4,1:sp_on 7,0
10730 pause 200:goto Input_Born_Day2:
10740 case 7:
10750 pause 200:goto Input_Born_Day2:
10760 end select
10770 endif
10780 '右  十字キー　右　or カーソル　右
10790 if ((y2 = 1) or (key$ = chr$(28))) then
10800 select case No
10810 '0ボタンからokボタン右に移動
10820 case 0:
10830 No=-1:sp_on 14,1:sp_on 13,0
10840 pause 200:goto Input_Born_Day2:
10850 '0ボタンからokボタン 右に移動　ここまで
10860 'OKボタンで右を押して何もしない
10870 case -1:
10880 pause 200:goto Input_Born_Day2:
10890 case 1:
10900 No=2:sp_on 9,1:sp_on 6,0
10910 pause 200:goto Input_Born_Day2:
10920 case 2:
10930 No=3:sp_on 12,1:sp_on 9,0
10940 pause 200:goto Input_Born_Day2:
10950 case 3:
10960 pause 200:goto Input_Born_Day2:
10970 case 4:
10980 No=5:sp_on 8,1:sp_on 5,0
10990 pause 200:goto Input_Born_Day2:
11000 case 5:
11010 No=6:sp_on 11,1:sp_on 8,0
11020 pause 200:goto Input_Born_Day2:
11030 case 7:
11040 No=8:sp_on 7,1:sp_on 4,0
11050 pause 200:goto Input_Born_Day2:
11060 case 8:
11070 No=9:sp_on 10,1:sp_on 7,0
11080 pause 200:goto Input_Born_Day2:
11090 case 9:
11100 pause 200:goto Input_Born_Day2:
11110 case 6:
11120 pause 200:goto Input_Born_Day2:
11130 end select
11140 'Okから右ボタンを押して何もしない ここまで
11150 endif
11160 '十字キー　ここまで
11170 '右の丸ボタンを押したとき
11180 if ((bg = 2) or (key$ = chr$(13))) then
11190 'count :決定ボタンを押した回数
11200 select case (count mod 3)
11210 '1桁目入力
11220 case 0:
11230 count = 1:
11240 if (No = -1) then
11250 '1桁目　OKでは何もしない
11260 'goto check:
11270 else
11280 'ok以外のボタンを押したとき
11290 buf_day = No:buf_Day$=str$(No)
11300 c=No
11310 locate 2,3
11320 color RGB(255,255,255)
11330 print "生まれた日(1日~31日):";buf_Day$
11340 endif
11350 check:
11360 if (No >= 1 and No <= 9) then
11370 sp_on 14,0
11380 goto Input_Born_Day2:
11390 else
11400 sp_on 14,0
11410 goto complate:
11420 endif
11430 case 1:
11440 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
11450 count = 2:
11460 'locate 2,3
11470 'color RGB(255,255,255)
11480 'print "生まれた日(1日~31日):";buf_Day$
11490 'Okボタンを押したときの処理
11500 '入力値　10未満のとき
11510 'c = buf_day
11520 if (No = -1) then
11530 'c=buf_day
11540 ' buf_day = c
11550 'buf_Day$ = str$(buf_day)
11560  '10以下のとき
11570  if (buf_day < 10) then
11580     sp_on 14,0
11590     goto complate:
11600  endif
11610 else
11620  'c=No
11630  buf_day = c * 10 + No
11640  buf_Day$ =str$(buf_day)
11650  locate 2,3
11660  color Rgb(255,255,255)
11670  print "生まれた日(1日~31日):";buf_Day$
11680  goto Input_Born_Day2:
11690 endif
11700 '生まれた日　2桁目の数字　or 1桁の数字 + ok
11710 case 2:
11720 count=0
11730 'c=val(buf_Day$)
11740 'buf_day=c*10+No
11750 'buf_Day$=str$(buf_day)
11760 'day=buf_day
11770 'locate 2,3
11780 'print "生まれた日(1日〜31日):";buf_Day$
11790 'No=-1:ok ボタンを押したとき
11800 if (No = -1) then
11810  if ((buf_day > 0) and (buf_day < 32)) then
11820   sp_on 14,0
11830   goto complate:
11840  else
11850   goto Input_Born_Day2:
11860  endif
11870 'Okボタン以外を押したとき
11880 else
11890  c=val(buf_Day$)
11900  buf_day = c * 10 + No
11910  buf_Day$ = str$(buf_day)
11920  locate 2,3
11930  print "生まれた日(1日~31日):";buf_Day$
11940 'goto Input_Born_Day2:
11950 endif
11960 case 3:
11970 count=4
11980 'c=val(buf_day$)
11990 'buf_day=c*10+No
12000 'buf_day$=str$(buf_day)
12010 'locate 2,3
12020 'print "生まれた日を入れてください:";buf_day$
12030 'year=val(buf_year$)
12040 if (No = -1) then
12050 'goto Input_Born_Day:
12060 sp_on 14,0:
12070 goto complate:
12080 else
12090 goto Input_Born_Month2:
12100 endif
12110 'case 4:
12120 'bufyear=buf_year
12130 'if (No=-1) then
12140 'buf_day = val(buf_day$)
12150 'bufday = buf_day
12160 'sp_on 14,0
12170 'goto complate:
12180 'else
12190 'goto Input_Born_Day2:
12200 'endif
12210 end select
12220 endif
12230 '--------------------------Input_Born_Day:-------------------------------------------
12240 complate:
12250 suhiNo = buf_year + buf_month + buf_day
12260 'if (suhiNo < 1000) then
12270 a1 = fix(suhiNo / 1000)
12280 a2 = fix(suhiNo/100) - (a1 * 10)
12290 a3 = fix(suhiNo/10)-(a1*100+a2*10)
12300 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
12310 'endif
12320 bufsuhiNo = a1+a2+a3+a4
12330 recomp:
12340 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
12350 'bufsuhiNo=a6
12360 goto Kabara_Result_Screen:
12370 else
12380 a5 = fix(bufsuhiNo / 10)
12390 a6 = bufsuhiNo - a5 * 10
12400 bufsuhiNo = a6 + a5
12410 if (bufsuhiNo = 10) then
12420 bufsuhiNo=1
12430 endif
12440 goto Kabara_Result_Screen:
12450 endif
12460 Kabara_Result_Screen:
12470 cls 3:
12480 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
12490 gload Gazo$ + "downscreen.png",0,0,800
12500 init "kb:4"
12510 '
12520 play ""
12530 select case (bufsuhiNo)
12540 case 1:
12550 play Voice$ + "Result_Kabara_1_20230607.mp3"
12560 case 2:
12570 play Voice$ + "Result_Kabara_2_20230607.mp3"
12580 case 3:
12590 play Voice$ + "Result_Kabara_3_20230607.mp3"
12600 case 4:
12610 play Voice$ + "Result_Kabara_4_20230607.mp3"
12620 case 5:
12630 play Voice$ + "Result_Kabara_5_20230607.mp3"
12640 case 6:
12650 play Voice$ + "Result_Kabara_6_20230607.mp3"
12660 case 7:
12670 play Voice$ + "Result_Kabara_7_20230607.mp3"
12680 case 8:
12690 play Voice$ + "Result_Kabara_8_20230607.mp3"
12700 case 9:
12710 play Voice$ + "Result_Kabara_9_20230607.mp3"
12720 case 11:
12730 play Voice$ + "Result_Kabara_11_20230607.mp3"
12740 case 22:
12750 play Voice$ + "Result_Kabara_22_20230607.mp3"
12760 case 33:
12770 play Voice$ + "Result_Kabara_33_20230607.mp3"
12780 end select
12790 font 48
12800 key$ = "":bg = 0:
12810 'COLOR rgb(255,255,255)
12820 'print "●診断結果"+chr$(13)
12830 locate 0,2
12840 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
12850 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
12860 locate 1,15:
12870 color rgb(255,255,255)
12880 print "ジョイパッドの右:トップメニュー" + chr$(13)
12890 while ((key$ <> chr$(13)) and (bg <> 2))
12900 key$ = inkey$
12910 bg = strig(1)
12920 pause 2
12930 wend
12940 'Enter or JoyPad right
12950 if ((key$ = chr$(13)) or (bg = 2)) then
12960 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
12970 endif
12980 'else
12990 'suhiNo1 = fix(bufsuhiNo / 10)
13000 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
13010 'bufsuhiNo = suhiNo1 + suhiNo2
13020 'goto recomp:
13030 'endif
13040 'print chr$(13)
13050 'color rgb(255,0,0)
13060 'print"トップ:エンターキー,S or s:保存"+chr$(13)
13070 'key$ = input$(1)
13080 'if key$ = chr$(13) then goto Main_Screen:
13090 '"Menu2 占いのルール"
13100 Suhi_Rule:
13110 '数秘術占いルールの表示
13120 cls 3:play "":init"kb:4"
13130 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
13140 gload Gazo$ + "downscreen.png",0,0,800
13150 'cls 3:
13160 'line (0,0) - (1500,60),rgb(0,0,255),bf
13170 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
13180 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
13190 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
13200 locate 0,2:Font 48
13210 print chr$(13) + chr$(13)
13220 color rgb(0,0,0)
13230 print "誕生日を単数変換します";chr$(13)
13240 print "数字の範囲:1~９,11,22,33";chr$(13)
13250 print "例:1973年11月22日の場合";chr$(13)
13260 print "1+9+7+3+11+22=53 ";chr$(13)
13270 print "→ 5 + 3 = 8" + chr$(13)
13280 print "故に8が数秘ナンバーになります";chr$(13)
13290 locate 0,15
13300 color rgb(255,255,255)
13310 print "ジョイパッドの右を押してください"
13320 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
13330 '"key$ = input$(1)"
13340 '"if key$ = chr$(13) then goto Main_Screen:"
13350 suhi_rule_selection:
13360 bg = 0:key$ = "":bg2=0
13370 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
13380 bg = strig(1)
13390 key$ = inkey$
13400 bg2=strig(0)
13410 pause 2
13420 wend
13430 if ((bg = 2) or (key$ = chr$(13))) then
13440 pause 200:cls 4:goto Main_Screen:
13450 endif
13460 if (bg2=2) then
13470 play "":pause 200
13480 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
13490 goto suhi_rule_selection:
13500 endif
13510 '2.設定
13520 '2-1.トップ画面に戻る
13530 Setting:
13540 cls 3:init"kb:4":font 48:No=0
13550 play ""
13560 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
13570 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
13580 gload Gazo$ + "downscreen.png",0,0,800
13590 print chr$(13) + chr$(13) + chr$(13)
13600 color rgb(255,255,255):sp_on 0,1:
13610 print "番号を選んでください" + chr$(13)
13620 print " :1.トップ画面に戻る"+ chr$(13)
13630 print " :2.未実装" + chr$(13)
13640 print " :3.未実装" + chr$(13)
13650 print " :4.未実装" + chr$(13)
13660 color rgb(0,0,0)
13670 locate 1,15:print "1.トップ画面に戻るを選択"
13680 Setting_Selection:
13690 y=0:key$="":bg=0:bg2=0
13700 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
13710 'y=stick(1)
13720 key$ = inkey$
13730 bg=strig(1)
13740 bg2 = strig(0)
13750 pause 2
13760 wend
13770 if ((bg = 2) or (key$ = chr$(13))) then
13780 select case No
13790 case 0:
13800 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
13810 end select
13820 endif
13830 if (bg2 = 2) then
13840 play "":pause 200
13850 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
13860 goto Setting_Selection:
13870 endif
13880 '3.Help
13890 '3-1.ルールの表示
13900 '3-2.バージョン
13910 '3-3.トップに戻る
13920 Help:
13930 cls 3:Font 48:No=0
13940 play ""
13950 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
13960 gload Gazo$ + "downscreen.png",0,0,800
13970 color rgb(255,255,255)
13980 print chr$(13)+chr$(13)+chr$(13)
13990 print "番号を選んでください"+chr$(13)
14000 print " :1.ルールの表示" + chr$(13)
14010 print " :2.バージョンの表示" + chr$(13)
14020 print " :3.参考文献" + chr$(13)
14030 print " :4.トップ画面に戻る" + chr$(13)
14040 color rgb(0,0,0)
14050 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
14060 locate 1,15
14070 print "                                      "
14080 locate 1,15
14090 print "1.ルールの表示を選択"
14100 init"kb:4"
14110 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
14120 Help_Select:
14130 bg=0:key$="":y=0:bg2=0
14140 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
14150 y = stick(1)
14160 key$ = inkey$
14170 bg = strig(1)
14180 bg2 = strig(0)
14190 pause 2
14200 wend
14210 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
14220 if ((y = 1) or (key$ = chr$(31))) then
14230 select case No
14240 case 0:
14250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
14260 case 1:
14270 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
14280 case 2:
14290 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
14300 case 3:
14310 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
14320 end select
14330 endif
14340 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
14350 if ((y = -1) or (key$ = chr$(30))) then
14360 select case No
14370 case 0:
14380 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
14390 case 1:
14400 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
14410 case 2:
14420 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
14430 case 3:
14440 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
14450 end select
14460 endif
14470 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
14480 if ((bg = 2) or (key$ = chr$(13))) then
14490 select case No
14500 case 0:
14510 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
14520 case 1:
14530 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
14540 case 2:
14550 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
14560 '3:Top画面に行く
14570 case 3:
14580 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
14590 end select
14600 endif
14610 if (bg2 = 2) then
14620 play "":pause 200
14630 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
14640 goto Help_Select:
14650 endif
14660 '数秘術占い　トップ画面
14670 Kabara_TopScreen:
14680 cls 3:play ""
14690 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
14700 gload Gazo$ + "downscreen.png",0,0,800
14710 play Voice$ + "KabaraTop_Selection_20230721.mp3"
14720 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
14730 init"kb:4":No=0
14740 color rgb(255,255,255)
14750 print chr$(13)+chr$(13)+chr$(13)
14760 print "番号を選んでください" + chr$(13)
14770 print " :1.数秘術占い" + chr$(13)
14780 print " :2.バーズアイグリット" + chr$(13)
14790 print " :3.相性占い" + chr$(13)
14800 print " :4.トップ画面に戻る" + chr$(13)
14810 color rgb(0,0,0)
14820 locate 1,15:print "1.数秘番号を求めるを選択"
14830 Kabara_TopScreen2:
14840 y = 0:bg = 0:key$ = "":bg2 = 0
14850 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14860 key$ = inkey$
14870 bg = strig(1)
14880 y = stick(1)
14890 bg2 = strig(0)
14900 pause 2
14910 wend
14920 '選択ボタン
14930 'カーソル　と　ジョイパッド　の下
14940 if ((y = 1) or (key$ = chr$(31))) then
14950 select case No
14960 case 1:
14970 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
14980 case 3:
14990 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
15000 case 0:
15010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
15020 end select
15030 endif
15040 'カーソル　上
15050 if ((y=-1) or (key$=chr$(30))) then
15060 select case No
15070 case 0:
15080 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
15090 case 1:
15100 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
15110 case 3:
15120 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
15130 case 0:
15140 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_on 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
15150 end select
15160 endif
15170 '決定ボタン
15180 'ジョイパッドの右　or  Enter key
15190 if ((bg = 2) or (key$ = chr$(13))) then
15200 select case No
15210 case 0:
15220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
15230 case 3:
15240 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
15250 case else:
15260 play"":sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
15270 end select
15280 endif
15290 if (bg2 = 2) then
15300 play "":pause 200
15310 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
15320 goto Kabara_TopScreen2:
15330 endif
15340 '1.バースアイグリット　名入力
15350 Inputname1:
15360 cls 3:init"kb:2":font 48
15370 gload Gazo$ + "Input_Birtheye2.png",0,0,0
15380 color rgb(255,255,255)
15390 locate 1,2:print "名前をアルファベットで入れてください"
15400 color rgb(0,0,0)
15410 locate 1,5:Input "名前（姓の部分）:",name1$
15420 'locate 1,5:print "Hit any key"
15430 n1 = len(name1$)
15440 if (n1 < 11) then
15450 for i=1 to n1
15460 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
15470 next i
15480 endif
15490 'if b$=chr$(13) then goto Inputname2:
15500 '2.グリッドアイ　姓の入力
15510 Inputname2:
15520 cls 3:init"kb:2":font 48
15530 gload Gazo$ + "Input_Birtheye1.png",0,0,0
15540 color rgb(255,255,255)
15550 locate 1,2:print "名前をアルファベットで入れてください"
15560 color rgb(0,0,0)
15570 locate 1,5:Input "名前(名の部分):",name2$
15580 n2=len(name2$)
15590 for i=1 to n2
15600 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
15610 next i
15620 '計算領域
15630 Complate:
15640 'name1
15650 for i=0 to 25
15660 for n=1 to len(name1$)
15670 if (buf_chart$(i,0) = buf_name1$(n-1)) then
15680 b = val(buf_chart$(i,1))
15690 buffer(b-1) = buffer(b-1) + 1
15700 endif
15710 next n
15720 next i
15730 'name2
15740 for i=0 to 25
15750 for n=1 to len(name2$)
15760 if (buf_chart$(i,0) = buf_name2$(n-1)) then
15770 c = val(buf_chart$(i,1))
15780 buffer(c - 1) = buffer(c - 1) + 1
15790 endif
15800 next n
15810 next i
15820 '結果表示領域
15830 Result_Birtheye1:
15840 cls 3:init"kb:4":No=0
15850 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
15860 gload Gazo$ + "downscreen.png",0,0,800
15870 color rgb(255,255,255)
15880 '1の表示
15890 locate 3,14:print buffer(0);
15900 '2の表示
15910 locate 3,9:print buffer(1);
15920 '3の表示
15930 locate 3,5:print buffer(2);
15940 '4の表示
15950 locate 10,14:print buffer(3);
15960 '5の表示
15970 locate 10,9:print buffer(4);
15980 '6の表示
15990 locate 10,5:print buffer(5);
16000 '7の表示
16010 locate 15,14:print buffer(6);
16020 '8の表示
16030 locate 15,9:print buffer(7);
16040 '9の表示
16050 locate 15,5:print buffer(8);
16060 'name を大文字に変換
16070 locate 5,3:print ucase$(name1$ + name2$)
16080 color rgb(0,0,0)
16090 locate 2,15:print "右の丸ボタン:トップ画面"
16100 bg=0:key$="":
16110 while ((bg <> 2) and (key$ <> chr$(13)))
16120 'Enterと決定ボタン
16130 key$ = inkey$
16140 bg = strig(1)
16150 pause 200
16160 wend
16170 if ((bg=2) or (key$=chr$(13))) then
16180 'データーをクリアしてトップ画面に行く
16190 for i=0 to 8
16200 buffer(i)=0
16210 next i
16220 for n=0 to 9
16230 buf_name1$(n) = ""
16240 buf_name2$(n) = ""
16250 next n
16260 'Topに行く
16270 goto Main_Screen:
16280 endif
16290 'goto Result_Birtheye1:
16300 'Result_Birtheye2:
16310 'cls 3:color rgb(255,255,255)
16320 'end
16330 'Memory 消去
16340 '
16350 References1:
16360 cls 3:key$="":bg=0:play "":font 48-16
16370 gload Gazo$ + "Reference1_20230703.png",0,0,0
16380 print chr$(13)+chr$(13)+chr$(13)
16390 color rgb(0,0,0)
16400 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
16410 print "Author:carol Adrinne,PhD"+chr$(13)
16420 print "出版社:幻冬舎" + chr$(13)
16430 print "HP:www.carolAdrienne.jp/"+chr$(13)
16440 print "ISBN:978-4-344-01394-0"+chr$(13)
16450 print "定価:1500円 + 税"+chr$(13)
16460 color rgb(255,255,255)
16470 locate 1,23
16480 print "ジョイパッド右：次へ"
16490 while (key$ <> chr$(13) and bg <> 2)
16500 bg = strig(1)
16510 key$ = inkey$
16520 wend
16530 '
16540 if ((bg = 2) or (key$ = chr$(13))) then
16550 pause 200:goto References2:
16560 endif
16570 'ユダヤの秘儀 カバラ大占術
16580 References2:
16590 cls 3:play "":bg = 0:key$ = ""
16600 gload Gazo$ + "Reference2_20230703.png",0,0,0
16610 '参考文献２
16620 'カバラ大占術
16630 print chr$(13) + chr$(13) + chr$(13)
16640 color  rgb(0,0,0):font 48-16
16650 locate 1,3
16660 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
16670 print "著者：浅野　八郎" + chr$(13)
16680 print "出版社:NON BOOK" + chr$(13)
16690 print "ISBN:4-396-10364-6" + chr$(13)
16700 print "定価:829円 + 税"
16710 color rgb(255,255,255)
16720 locate 1,23
16730 print "ジョイパッド右：トップへ行く"
16740 while ((key$ <> chr$(13)) and (bg <> 2))
16750 bg = strig(1)
16760 key$ = inkey$
16770 wend
16780 if ((bg = 2) or (key$ = chr$(13))) then
16790 pause 200:goto Main_Screen:
16800 endif
16810 end
16820 '1.数秘術　トップ画面
16830 Kabara_First_Top:
16840 cls 3:color rgb(255,255,255):play ""
16850 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
16860 gload Gazo$ + "downscreen.png",0,0,800
16870 No=0:init"kb:4"
16880 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
16890 print chr$(13);chr$(13)
16900 color rgb(255,255,255)
16910 locate 3,4:No=0
16920 print "番号選んでください" + chr$(13)
16930 print " :1.数秘術占い" + chr$(13)
16940 print " :2.トップ画面に戻る" + chr$(13)
16950 color rgb(0,0,0)
16960 sp_on 0,1
16970 locate 1,15:print "1.数秘術番号を求めるを選択"
16980 'KeyBord:true
16990 'Joy Pad:true
17000 '上、下:true
17010 '
17020 'ｂｇ：決定ボタン
17030 'カーソル　上
17040 'カーソル　下
17050 Kabara_First_Top2:
17060 key$ = "":bg = 0:y = 0:
17070 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
17080 key$ = inkey$
17090 bg = strig(1)
17100 y = stick(1)
17110 'PauseでCPUを休める
17120 pause 5
17130 wend
17140 '1.カーソル　下 処理 chr$(31)
17150 'カーソル　下
17160 if ((key$ = chr$(31)) or (y = 1)) then
17170 select case No
17180 '
17190 case 1:
17200 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
17210 case 0:
17220 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
17230 'case 2:
17240 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
17250 end select
17260 endif
17270 '2.カーソル　上 処理 chr$(30)
17280 if ((key$ = chr$(30)) or (y = -1)) then
17290 select case No
17300 case 0:
17310 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
17320 case 1:
17330 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
17340 'case 2:
17350 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
17360 end select
17370 endif
17380 '3.決定 処理  bg:2 or Enter key:chr$(13)
17390 if ((bg = 2) or (key$ = chr$(13))) then
17400 select case No
17410 case 0:
17420 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
17430 goto Kabara_TopScreen:
17440 'case 1:
17450 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
17460 case 1:
17470 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
17480 end select
17490 endif
17500 '
17510 'Kabara 相性占い トップ画面
17520 Kabara_Aishou_Top:
17530 cls 3:y=0:key$="":bg=0:No=0
17540 play ""
17550 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
17560 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
17570 print chr$(13) + chr$(13)
17580 locate 0,4:color rgb(255,255,255)
17590 'print "Ok"
17600 '
17610 print "番号を選んでください" + chr$(13)
17620 print " :1.男女2人の相性(未実装)" + chr$(13)
17630 print " :2.ビジネスの相性(未実装)" + chr$(13)
17640 print " :3.トップ画面に戻る" + chr$(13)
17650 sp_on 0,1:sp_on 1,0:sp_on 2,0
17660 color rgb(0,0,0)
17670 locate 1,15:print "1.男女2人の相性占いを選択"
17680 Kabara_Aishou_Top2:
17690 key$ = "":y = 0:bg = 0:
17700 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
17710 'ジョイパッド(右) ,十字キー (上下)
17720 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
17730 y = stick(1)
17740 key$ = inkey$
17750 bg = strig(1)
17760 pause 5
17770 wend
17780 'カーソル　下 or 十字キー　下
17790 if ((key$ = chr$(31)) or (y = 1)) then
17800 select case No
17810 '選択肢　1 - 2に変更
17820 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
17830 'ok
17840 case 0:
17850 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
17860 '選択肢　2 - 3に変更
17870 case 1:
17880 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
17890 'リリース時 case 2コメント解除
17900 case 2:
17910 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
17920 case else:
17930 goto Kabara_Aishou_Top2:
17940 end select
17950 endif
17960 '十字キー　上　、カーソル　上
17970 if ((key$ = chr$(30)) or (y = -1)) then
17980 select case No
17990 case 0:
18000 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
18010 case 1:
18020 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
18030 case 2:
18040 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
18050 case else:
18060 goto Kabara_Aishou_Top2:
18070 end select
18080 endif
18090 '十字キー　上下:選択
18100 'ジョイパッド 右:決定
18110 if ((bg = 2) or (key$ = chr$(13))) then
18120 select case No
18130 '1.男女の相性
18140 case 0:
18150 ui_msg "未実装だよー,終了するよ":cls 3::color rgb(255,255,255):end
18160 '2ビジネスの相性
18170 case 1:
18180 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
18190 case 2:
18200 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
18210 end select
18220 endif
18230 'ビジネスの相性　
18240 '1.1人目のビジネスの相性　名前入力　1人目
18250 Business_Aishou_Input_1_parson:
18260 No=0:color RGB(255,255,255)
18270 cls 3:init "kb:2"
18280 gload Gazo$ + "Screen1.png",0,0,0
18290 play "":color rgb(255,0,0):name$ = ""
18300 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
18310 color rgb(255,255,255):
18320 locate 0,4
18330 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
18340 print "入れてください" + chr$(13)
18350 Input "1人目の名前:",name$
18360 color rgb(0,0,0)
18370 locate 0,15:print "                                     "
18380 locate 0,15:print "1人目の名前を入力してエンターキー":cls 3
18390 'buffer_name$(0):1人目の名前
18400 buffer_name$(0) = name$:
18410 goto Business_Aishou_Input_2_Parson:
18420 '2.2人目のビジネスの相性 名前入力 2人目
18430 Business_Aishou_Input_2_Parson:
18440 cls 3:init "kb:2":name$ = "":No=0
18450 gload Gazo$ + "Screen1.png",0,0,0
18460 color rgb(255,0,0)
18470 'Title
18480 print "ビジネスの相性　2人目" + chr$(13) + chr$(13)
18490 locate 0,4
18500 color rgb(255,255,255)
18510 print "ビジネスの相性を求めます。2人目の相性を" + chr$(13)
18520 print "入れてください" + chr$(13)
18530 color rgb(255,255,255)
18540 Input "2人目の名前:",name$
18550 color rgb(0,0,0)
18560 locate 0,15:print "                                       "
18570 locate 0,15:print "2人目の名前を入力してエンター ":cls 3
18580 '2人目
18590 '2人目の名前を入れるに代入
18600 buffer_name$(1) = name$:
18610 goto Select_jyoushi:
18620 '3.上司の選択
18630 Select_jyoushi:
18640 cls 3:gload Gazo$ + "Screen1.png",0,0,0
18650 init "kb:4":No=0
18660 color rgb(255,255,255)
18670 locate 0,4:print "名前から上司の方を選んでください"
18680 locate 0,6
18690 print " :";buffer_name$(0);"が上 司";chr$(13)
18700 locate 0,8
18710 print " :";buffer_name$(1);"が上 司";chr$(13)
18720 locate 0,15:
18730 print "                                     "
18740 locate 0,15:color rgb(0,0,0)
18750 print "上司の方を選んで右の丸ボタン"
18760 sp_on 0,1:sp_on 1,0:sp_on 2,0
18770 Select_jyoushi2:
18780 'ここでNo=0をおいてはいけない
18790 y=0:key$="":bg=0:
18800 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
18810 y = stick(1)
18820 key$ = inkey$
18830 bg = strig(1)
18840 pause 5
18850 wend
18860 '1.カーソル下の処理　or 十字キーの下処理
18870 if ((key$ = chr$(31)) or (y = 1)) then
18880 select case No
18890 case 0:
18900 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
18910 case 1:
18920 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
18930 end select
18940 endif
18950 '2.カーソル上処理　or 十字キーの上の処理
18960 if ((key$ = chr$(30)) or (y = -1)) then
18970 select case No
18980 case 0:
18990 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
19000 case 1:
19010 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
19020 end select
19030 endif
19040 if ((key$ = chr$(13)) or (bg = 2)) then
19050 select case No
19060 case 0:
19070 '上司(name1)を配列に代入
19080 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_born_year:
19090 case 1:
19100 '上司（name2)を配列に代入
19110 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):goto Jyoushi_born_year:
19120 end select
19130 endif
19140 '3.決定ボタン　Enter or 右の丸ボタン
19150 '1.誕生日入力
19160 '1-1.生まれた年を入力
19170 Jyoushi_born_year:
19180 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19190 init "kb:2"
19200 locate 2,1:color rgb(255,0,0)
19210 print "上司の生まれた年代を入力"
19220 color rgb(255,255,255)
19230 locate 2,4:print "生まれた年代を西暦4桁で入れてください"
19240 locate 2,5:Input "上司の生まれた年:",born_year
19250 '誕生日データーを配列に代入
19260 'buf_Jyoushi_Born_Year:上司の生まれた年代
19270 buf_Jyoushi_Born_Day(0) = born_year
19280 'born_year = 0
19290 goto Jyoushi_born_month:
19300 '1-2.生まれた月を入力
19310 Jyoushi_born_month:
19320 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19330 init "kb:2"
19340 locate 2,1:
19350 color rgb(255,0,0)
19360 print "上司の生まれた月入力"
19370 color rgb(255,255,255)
19380 locate 2,4:print "生まれた月を入力してください"
19390 locate 2,5
19400 Input "上司の生まれ月:",born_month
19410 buf_Jyoushi_Born_Day(1) = born_month
19420 'born_month = 0
19430 goto Jyoushi_born_day:
19440 'buf_Jyoushi_Born_day
19450 '1-3.生まれた日を入力
19460 Jyoushi_born_day:
19470 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19480 init "kb:2"
19490 locate 2,1:color rgb(255,0,0)
19500 print "上司の生まれた日　入力"
19510 locate 2,4:color rgb(255,255,255)
19520 print "生まれた日を入力してください"
19530 locate 2,5
19540 Input "上司の生まれた日:",born_day
19550 buf_Jyoushi_Born_Day(2) = born_day
19560 born_day = 0
19570 goto buka_born_year:
19580 '2.部下の誕生日入力
19590 '2-1.生まれた年を入力
19600 buka_born_year:
19610 cls 3:gload Gazo$+"Screen1.png",0,0,0
19620 init "kb:2"
19630 locate 1,1:color rgb(255,0,0)
19640 print "部下の生まれた年代入力"
19650 locate 0,4:color rgb(255,255,255)
19660 print "部下の生まれた年（西暦4桁）を入れてください"
19670 locate 0,5
19680 Input "部下の生まれた年(西暦4桁):",born_year
19690 buf_Buka_Born_Day(0) = born_year
19700 born_year = 0
19710 '2-2.生まれた月を入力
19720 buka_born_month:
19730 cls 3:gload Gazo$+"Screen1.png",0,0,0
19740 init "kb:2"
19750 locate 2,1:color rgb(255,0,0)
19760 print "部下の生まれた月 入力"
19770 locate 2,4:color rgb(255,255,255)
19780 print "部下の生まれた月を入力してください"
19790 locate 2,5:Input "部下の生まれた月:",born_month
19800 buf_Buka_Born_Day(1) = born_month
19810 '2-3.生まれた日を入力
19820 buka_born_day:
19830 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19840 init "kb:2"
19850 locate 2,1:color rgb(255,0,0)
19860 print "生まれた日入力"
19870 color rgb(255,255,255)
19880 locate 2,4:print "生まれた日を入力してください"
19890 locate 2,5:Input "部下の生まれた日:",born_day
19900 buf_Buka_Born_Day(2) = born_day
19910 born_day=0
19920 cls 3:
19930 a = 1973
19940 Num = Kabara_Num(a)
19950 print "Num =";Num
19960 print "a=";a
19970 end
19980 '自作関数 ここから
19990 'カバラ数（数秘番号を求める）
20000 func Kabara_Num(buffer_Year)
20010 'if ((a > 1900) and (a < 3000)) then
20020 'a1:4桁のうちの1桁目を求める
20030 '例 a1:1234の4が1桁目
20040 'a2:4桁のうちの2桁目を求める
20050 '例:a2:1234の3が2桁目
20060 'a3:4桁のうちの3桁目を求める
20070 '例 a3:1234の2が3桁目
20080 'a4:4桁のうちの4桁目を求める
20090 '例 a4:1234の1が4桁目
20100 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
20110 Year=buffer_Year
20120 a4 = fix(Year / 1000)
20130 a3 = fix(Year / 100) - a4 * 10
20140 a2 = fix(Year / 10) - a4 * 100 + a3 * 10
20150 a1 = Year - (Year - fix(Year - (a4 * 1000 + a3 * 100)))
20160 a_ = a1 + a2 + a3 + a4
20170 'a1=0:a2=0:a3=0:a4=0
20180 'if ((a_ = 11) or (a_ > 1 and a _< 9)) then
20190 'buffer = a_
20200 'else
20210 'if (a_ = 10) then
20220 '  buffer = 1
20230 'else
20240 '  if ((a_>11) and (a_<99)) then
20250 '     a1 = fix(a_ / 10)
20260 '     a2 = a_ - (a1 * 10)
20270 '     a_ = a1 + a2
20280 '     buffer = a_
20290 '  endif
20300 'else
20310 '    bffer = a_
20320 'endif
20330 'endif
20340 'else
20350 'talk "プログラムを終了します。"
20360 'end
20370 'endif
20380 kabara = 10
20390 kabara = buffer
20400 endfunc kabara
20410 func Kabara_Aisyou$(a,b)
20420 endfunc Aisyou$
20430 '自作関数 ここまで
20440 '1.数秘術　トップ画面
20450 '
20460 'Data_eraseを一番最後に持ってくる
20470 Data_erase:
20480 erase buf_name1$
20490 'メモリー削除
20500 erase buf_name2$
20510 erase buffer
20520 erase buf_chart$
20530 erase Buffer_Business_Aisyou$
20540 erase buffer_name$
20550 'erase buf_Jyoushi_Born_Year
20560 'erase buf_Jyoushi_Born_Month
20570 erase buf_Jyoushi_Born_Day
20580 'erase buf_Buka_Born_Year
20590 'erase buf_Buka_Born_Month
20600 erase buf_Buka_Born_Day
20610 erase buf_year
20620 return
