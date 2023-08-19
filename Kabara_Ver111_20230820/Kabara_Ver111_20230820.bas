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
300 '2023.08.20:Ver111_20230820
310 Version$ = "Ver:1.1.1_20230820"
320 'Gazo file Folder
330 Gazo$ = "./data/Picture/"
340 'Voice files 2023
350 Voice$ = "./data/Voice/Voice/"
360 'BirtheyeChart Data:20230626
370 Birth_eye_chart$ = "./data/chart_data/"
380 'Data File
390 Data$ = "./data/data/"
400 '変数定義 パート
410 b=0:c=0
420 dim buf_name1$(10),buf_name2$(10)
430 dim buffer(9),buf_chart$(26,2)
440 'ビジネスの相性　データー
450 dim Buffer_Business_Aisyou$(12,12)
460 '生れた年代
470 dim buf_year(4):buf_year$=""
480 dim buf_month(2)
490 dim buf_day(2)
500 '生れた月
510 buf_Month$ = ""
520 '生れた日
530 buf_Day$ = ""
540 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
550 dim buffer_name$(3)
560 '1-1.上司の誕生日(数値データー)
570 dim buf_Jyoushi_Born_Day(3)
580 '1-2.上司の数秘ナンバー(数値データー)
590 buf_Jyoushi_Kabara_Num = 0
600 '2-1.部下の誕生日(数値データー)
610 dim buf_Buka_Born_Day(3)
620 '2-2.部下の数秘ナンバー(数秘データー)
630 buf_Buka_Kabara_Num = 0
640 count=0
650 '部下の数秘ナンバー
660 'File 読み込み
670 '1.ビジネスの相性占い
680 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
690 for i=0 to 11
700 for j=0 to 11
710 input #1,a$
720 Buffer_Business_Aisyou$(j,i) = a$
730 next j
740 next i
750 close #1
760 '2.Birth Eye chart$
770 '2.バーズアイグリッドを読み込む
780 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
790 for j=0 to 25
800 for i=0 to 1
810 input #1,a$
820 buf_chart$(j,i) = a$
830 next i
840 next j
850 close #1
860 'File 読み込み　ここまで
870 'Main画面
880 screen 1,1,1,1
890 Main_Screen:
900 cls 3:
910 No=0
920 gload Gazo$ + "Selection.png",1,5,200
930 gload Gazo$ + "Selection.png",1,5,300
940 gload Gazo$ + "Selection.png",1,5,400
950 gload Gazo$ + "Selection.png",1,5,500
960 '4
970 gload Gazo$ + "Selection.png",1,35,300
980 '5
990 gload Gazo$ + "Selection.png",1,35,400
1000 '6
1010 gload Gazo$ + "Selection.png",1,35,500
1020 '7
1030 gload Gazo$ + "Selection.png",1,70,300
1040 '8
1050 gload Gazo$ + "Selection.png",1,70,400
1060 '9
1070 gload Gazo$ + "Selection.png",1,70,500
1080 '10
1090 gload Gazo$ + "Selection.png",1,110,300
1100 '11
1110 gload Gazo$ + "Selection.png",1,110,400
1120 '12
1130 gload Gazo$ + "Selection.png",1,110,500
1140 '13:0
1150 gload Gazo$ + "Selection.png",1,150,400
1160 gload Gazo$ + "Selection.png",1,200,400
1170 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1180 gload Gazo$ + "downscreen.png",0,0,800
1190 sp_def 0,(5,300),32,32
1200 sp_def 1,(5,400),32,32
1210 sp_def 2,(5,500),32,32
1220 sp_def 3,(5,600),32,32
1230 '1
1240 sp_def 4,(35,300),32,32
1250 '2
1260 sp_def 5,(35,400),32,32
1270 '3
1280 sp_def 6,(35,500),32,32
1290 '4
1300 sp_def 7,(70,300),32,32
1310 '5
1320 sp_def 8,(70,400),32,32
1330 '6
1340 sp_def 9,(70,500),32,32
1350 '7
1360 sp_def 10,(110,300),32,32
1370 '8
1380 sp_def 11,(110,400),32,32
1390 '9
1400 sp_def 12,(110,400),32,32
1410 sp_def 13,(150,400),32,32
1420 sp_def 14,(200,400),32,32
1430 'Sprite OFF
1440 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1450 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1460 sp_put 0,(5,300),0,0
1470 sp_put 1,(5,400),1,0
1480 sp_put 2,(5,500),2,0
1490 sp_put 3,(5,600),3,0
1500 '1
1510 sp_put 4,(130,300),4,0
1520 '2
1530 sp_put 5,(130,400),5,0
1540 '3
1550 sp_put 6,(130,500),6,0
1560 '4
1570 sp_put 7,(340,300),7,0
1580 '5
1590 sp_put 8,(340,400),8,0
1600 '6
1610 sp_put 9,(340,500),9,0
1620 '7
1630 sp_put 10,(540,300),10,0
1640 '8
1650 sp_put 11,(540,400),11,0
1660 '9
1670 sp_put 12,(540,500),12,0
1680 '
1690 sp_put 13,(340,600),13,0
1700 sp_put 14,(540,600),14,0
1710 Main_Top:
1720 'Main Message 2023.06.07
1730 '再生を止める
1740 play ""
1750 init "kb:4"
1760 'font 32:
1770 font 48
1780 print chr$(13) + chr$(13) + chr$(13)
1790 color rgb(217,255,212)
1800 print "番号を選んでください" + chr$(13)
1810 '0
1820 print " :1.数秘術占い" + chr$(13)
1830 '1
1840 print " :2.設 定" + chr$(13)
1850 '2
1860 print " :3.ヘルプ" + chr$(13)
1870 '3
1880 print " :4.(プログラムを)終了する" + chr$(13)
1890 COLOR rgb(0,0,0):No=0
1900 locate 1,15
1910 print "                                       "
1920 locate 1,15:print "1.数秘術占いを選択"
1930 play Voice$ + "Voice_Main_Message_20230607.mp3"
1940 Main_Screen_Select:
1950 y = 0:key$ = "":bg = 0:bg2=0
1960 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
1970 y = stick(1)
1980 '"May (2023)"
1990 key$ = inkey$
2000 bg = strig(1)
2010 bg2 = strig(0)
2020 pause 2
2030 wend
2040 '1.
2050 'ジョイパッドのソース ソート　ここから
2060 'カーソル　下 or 十字キー下
2070 if ((y = 1) or (key$ = chr$(31))) then
2080 select case No
2090 case 0:
2100 '1
2110 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2120 case 1:
2130 '2
2140 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2150 case 2:
2160 '3
2170 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2180 case 3:
2190 '0
2200 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2210 end select
2220 endif
2230 '2.
2240 'カーソル　上　or 十字キー  上
2250 if ((y = -1) or (key$ = chr$(30))) then
2260 select case No
2270 case 0:
2280 '3
2290 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2300 case 1:
2310 '0
2320 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2330 case 2:
2340 '1
2350 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2360 case 3:
2370 '2
2380 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2390 end select
2400 endif
2410 'ジョイパッド　ソース 部分　ここまで
2420 'ジョイパッド右　　or Enter key 決定
2430 if ((bg = 2) OR (key$ = chr$(13))) then
2440 select case No
2450 case 0:
2460 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2470 case 1:
2480 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2490 case 2:
2500 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2510 case 3:
2520 play "":pause 200
2530 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2540 end select
2550 endif
2560 if (bg2 = 2) then
2570 play "":pause 200
2580 play Voice$ + "Voice_Main_Message_20230607.mp3"
2590 goto Main_Screen_Select:
2600 endif
2610 'Version
2620 Version:
2630 cls 3:PLAY ""
2640 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2650 gload Gazo$ + "downscreen.png",0,0,800
2660 init"kb:4":font 32
2670 'talk"バージョン情報です"
2680 'Message :Version
2690 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2700 locate 0,5
2710 color rgb(0,0,0)
2720 print "・Title:数秘術占い";chr$(13)
2730 print "・" + Version$ + chr$(13)
2740 print "・Author:licksjp"+chr$(13)
2750 print "・E-mail:licksjp@gmail.com" + chr$(13)
2760 locate 0,18
2770 print "(C)licksjp All rights " + chr$(13)
2780 locate 13,19
2790 print "reserved since 2009"+chr$(13)
2800 locate 0,23
2810 color rgb(255,255,255)
2820 print "ジョイパッドの右を押してください"
2830 Versionn_Selection:
2840 bg = 0:key$ = "":bg2 = 0
2850 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2860 bg = strig(1)
2870 key$ = inkey$
2880 bg2 = strig(0)
2890 pause 2
2900 wend
2910 if ((bg = 2) or (key$ = chr$(13))) then
2920 pause 200:cls 4:goto Main_Screen:
2930 endif
2940 if (bg2=2) then
2950 play "":pause 200
2960 play Voice$ + "Voice_Version_Message_20230607.mp3"
2970 goto Versionn_Selection:
2980 endif
2990 '1.数秘ナンバーを求める
3000 '誕生日入力(生れた年代)
3010 Input_Seireki:
3020 cls 3:play "":count=0:count2=0
3030 'No=-1:Okのとき
3040 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3050 for i=0 to 3
3060 buf_year(i)=0
3070 next i
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
5660 count =2
5670 goto Input_Seireki2:
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
6150 if (No = -1) then
6160 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
6170 count=0
6180 locate 2,3
6190 color rgb(255,255,255)
6200 print "                                      "
6210 locate 2,3
6220 print "生まれた年代（西暦4桁):";buf_year$
6230 goto Input_Seireki2:
6240 else
6250 '(buf_year=0) then
6260 buf_year=0:buf_year$="****"
6270 goto Input_Seireki2:
6280 'endif
6290 endif
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
9360 if (No = -1) then
9370 buf_month=0:buf_Month$="**"
9380 count=0
9390 goto rewrite:
9400 else
9410 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9420 buf_month=0:buf_Month$="**"
9430 locate 2,3
9440 color rgb(255,255,255)
9450 print "                                       "
9460 goto rewrite:
9470 if (No>12) then
9480 ui_msg"値が範囲外です。"
9490 goto rewrite:
9500 endif
9510 endif
9520 endif
9530 rewrite:
9540 locate 2,3
9550 color rgb(255,255,255)
9560 print "                                      "
9570 locate 2,3
9580 print "生まれた月(1月~12月):";buf_Month$
9590 goto Input_Born_Month2:
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
12270 '10以下のとき
12280 if (buf_day < 10) then
12290 sp_on 14,0
12300 goto complate:
12310 endif
12320 else
12330 'c=No
12340 buf_day = c * 10 + No
12350 buf_Day$ =str$(buf_day)
12360 locate 2,3
12370 color Rgb(255,255,255)
12380 print "生まれた日(1日~31日):";buf_Day$
12390 goto Input_Born_Day2:
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
12520 if ((buf_day > 0) and (buf_day < 32)) then
12530 sp_on 14,0
12540 goto complate:
12550 else
12560 goto Input_Born_Day2:
12570 endif
12580 'Okボタン以外を押したとき
12590 else
12600 c=val(buf_Day$)
12610 buf_day = c * 10 + No
12620 buf_Day$ = str$(buf_day)
12630 locate 2,3
12640 print "生まれた日(1日~31日):";buf_Day$
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
12970 if (No=-1) then
12980 'buf_day=0:buf_Day$="**"
12990 if (buf_day>=1 and buf_day<=31) then
13000 count=0
13010 buf_day=0:buf_Day$="**"
13020 'goto rewrite_day:
13030 else
13040 buf_day=0:buf_Day$="**"
13050 ui_msg"値が範囲外です"
13060 endif
13070 goto rewrite_day:
13080 else
13090 goto rewrite_day:
13100 endif
13110 rewrite_day:
13120 locate 2,3
13130 color rgb(255,255,255)
13140 print "                                      "
13150 locate 2,3
13160 print "生まれた日(1日~31日):";buf_Day$
13170 goto Input_Born_Day2:
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
16000 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
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
16130 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
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
19350 locate 0,1
19360 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
19370 color rgb(255,255,255):
19380 locate 0,3
19390 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
19400 print "入れてください" + chr$(13)
19410 Input "1人目の名前:",name$
19420 color rgb(0,0,0)
19430 locate 0,15:print "                                     "
19440 locate 0,15:print "1人目の名前を入力してエンターキー":cls 3
19450 'buffer_name$(0):1人目の名前
19460 buffer_name$(0) = name$:
19470 goto Business_Aishou_Input_2_Parson:
19480 '2.2人目のビジネスの相性 名前入力 2人目
19490 Business_Aishou_Input_2_Parson:
19500 cls 3:init "kb:2":name$ = "":No=0
19510 gload Gazo$ + "Screen1.png",0,0,0
19520 color rgb(255,0,0)
19530 'Title
19540 locate 0,1
19550 print "ビジネスの相性　2人目"
19560 locate 0,3
19570 color rgb(255,255,255)
19580 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
19590 print "入れてください" + chr$(13)
19600 color rgb(255,255,255)
19610 Input "2人目の名前:",name$
19620 color rgb(0,0,0)
19630 locate 0,15:print "                                              "
19640 locate 0,15:print "2人目の名前を入力してエンター ":cls 3
19650 '2人目
19660 '2人目の名前を入れるに代入
19670 buffer_name$(1) = name$:
19680 goto Select_jyoushi:
19690 '3.上司の選択
19700 Select_jyoushi:
19710 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19720 init "kb:4":No=0
19730 color rgb(255,255,255)
19740 locate 0,4:print "名前から上司の方を選んでください"
19750 locate 0,6
19760 print " :";buffer_name$(0);"が上 司";chr$(13)
19770 locate 0,8
19780 print " :";buffer_name$(1);"が上 司";chr$(13)
19790 locate 0,15:
19800 print "                                     "
19810 locate 0,15:color rgb(0,0,0)
19820 print "上司の方を選んで右の丸ボタン"
19830 sp_on 0,1:sp_on 1,0:sp_on 2,0
19840 Select_jyoushi2:
19850 'ここでNo=0をおいてはいけない
19860 y=0:key$="":bg=0:
19870 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
19880 y = stick(1)
19890 key$ = inkey$
19900 bg = strig(1)
19910 pause 5
19920 wend
19930 '1.カーソル下の処理　or 十字キーの下処理
19940 if ((key$ = chr$(31)) or (y = 1)) then
19950 select case No
19960 case 0:
19970 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
19980 case 1:
19990 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20000 end select
20010 endif
20020 '2.カーソル上処理　or 十字キーの上の処理
20030 if ((key$ = chr$(30)) or (y = -1)) then
20040 select case No
20050 case 0:
20060 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20070 case 1:
20080 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
20090 end select
20100 endif
20110 if ((key$ = chr$(13)) or (bg = 2)) then
20120 select case No
20130 case 0:
20140 '上司(name1)を配列に代入
20150 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20160 case 1:
20170 '上司（name2)を配列に代入
20180 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20190 end select
20200 endif
20210 '3.決定ボタン　Enter or 右の丸ボタン
20220 '1.誕生日入力
20230 '1-1.生まれた年を入力
20240 'Jyoushi_born_year:
20250 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
20260 '---------------------------------------------'
20270 '誕生日入力(生れた年代)
20280 Jyoushi_Input_Seireki:
20290 'buf_Jyoushi_Born_Year:上司の生まれた年代
20300 'buf_Jyoushi_Born_Day(0) = born_year
20310 cls 3:play "":count=0:count2=0
20320 init"kb:4"
20330 'No=-1:Okのとき
20340 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
20350 for i=0 to 3
20360 buf_Jyoushi_Born_Day(i)=0
20370 next i
20380 gload Gazo$ + "Screen1.png",0,0,0
20390 gload Gazo$ + "downscreen.png",0,0,800
20400 'Init"kb:2"
20410 '音声ファイル再生 2023.06.07
20420 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
20430 font 48
20440 locate 0,1
20450 '文字色：黒　 color rgb(0,0,0)
20460 color rgb(255,255,255)
20470 print "上司の生まれた年代を入れて下さい" + chr$(13)
20480 color rgb(255,255,255)
20490 locate 2,3
20500 print "上司の生まれた年代(西暦4桁):";buf_year$
20510 color rgb(255,0,0)
20520 'locate 4,6:print ":7"
20530 'locate 9,6:print ":8"
20540 'locate 12,6:print ":9"
20550 locate 4,6
20560 print ":7  :8  :9" + chr$(13)
20570 color rgb(255,0,0)
20580 locate 4,8
20590 print ":4  :5  :6" + chr$(13)
20600 color rgb(255,0,0)
20610 locate 4,10
20620 print ":1  :2  :3" + chr$(13)
20630 locate 4,12
20640 print "    :0"
20650 locate 12,12
20660 color rgb(0,0,255)
20670 print ":Ok"
20680 sp_on 4,0: sp_on 5,0:sp_on 6,0
20690 sp_on 7,0:sp_on 8,0:sp_on 9,0
20700 sp_on 10,0:sp_on 11,0:sp_on 12,0
20710 sp_on 13,0:sp_on 14,1
20720 Jyoushi_Input_Seireki2:
20730 key$="":bg=0:y=0:y2=0:bg2=0:
20740 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
20750 key$ = inkey$
20760 bg = strig(1)
20770 y = stick(1)
20780 y2 = stick(0)
20790 bg2=strig(0)
20800 pause 5
20810 wend
20820 '十字キー　ここから
20830 '上の矢印　または、十字キー上
20840 if ((y = -1) or (key$ = chr$(30))) then
20850 select case No
20860 'No=-1:okのとき:初期の状態
20870 '0kボタンから３に移動
20880 '上に行く 処理
20890 case -1:
20900 No=3:sp_on 12,1:sp_on 14,0
20910 pause 200:goto Jyoushi_Input_Seireki2:
20920 '選択肢:3
20930 '3ボタンから 6に移動
20940 case 3:
20950 No=6:sp_on 12,0:sp_on 11,1
20960 pause 200:goto Jyoushi_Input_Seireki2:
20970 '6ボタンから ９に移動
20980 case 6:
20990 No=9:sp_on 10,1:sp_on 11,0
21000 pause 200:goto Jyoushi_Input_Seireki2:
21010 '6ボタンから ９に移動　ここまで
21020 '9で上を押して何もしない
21030 case 9:
21040 '何もしない
21050 No=9
21060 pause 200:goto Jyoushi_Input_Seireki2:
21070 '9で上を押しても何もしない　ここまで
21080 '上　 0ボタンから2ボタン
21090 'sp_on 6,1:1
21100 'sp_on 8,1:5
21110 'sp_on 7,1:7
21120 case 0:
21130 No=2:sp_on 13,0:sp_on 9,1:
21140 pause 200:goto Jyoushi_Input_Seireki2:
21150 '上  0ボタンから2ボタン　ここまで
21160 '2から５になる 上
21170 case 2:
21180 No=5:sp_on 8,1:sp_on 9,0:
21190 pause 200:goto Jyoushi_Input_Seireki2:
21200 case 5:
21210 No=8:sp_on 7,1:sp_on 8,0
21220 pause 200:goto Jyoushi_Input_Seireki2:
21230 case 8:
21240 pause 200:goto Jyoushi_Input_Seireki2:
21250 case 1:
21260 No=4:sp_on 5,1:sp_on 6,0
21270 pause 200:goto Jyoushi_Input_Seireki2:
21280 case 4:
21290 No=7:sp_on 4,1:sp_on 5,0
21300 pause 200:goto Jyoushi_Input_Seireki2:
21310 case 7:
21320 pause 200:goto Jyoushi_Input_Seireki2:
21330 end select
21340 endif
21350 '左３　ここまで
21360 '下の矢印
21370 '中央 2
21380 if ((y=1) or (key$ = chr$(31))) then
21390 select case No
21400 '9から６に下げる
21410 case 9:
21420 No=6:sp_on 11,1:sp_on 10,0
21430 pause 200:goto Jyoushi_Input_Seireki2:
21440 '6から３に下げる
21450 case 6:
21460 No=3:sp_on 12,1:sp_on 11,0
21470 pause 200:goto Jyoushi_Input_Seireki2:
21480 '3から０ｋに変える
21490 case 3:
21500 No=-1:sp_on 14,1:sp_on 12,0
21510 pause 200:goto Jyoushi_Input_Seireki2:
21520 'Okから下のボタンを押しても何もしない
21530 case -1:
21540 pause 200:goto Jyoushi_Input_Seireki2:
21550 case 8:
21560 No=5:sp_on 8,1:sp_on 7,0
21570 pause 200:goto Jyoushi_Input_Seireki2:
21580 case 5:
21590 No=2:sp_on 9,1:sp_on 8,0
21600 pause 200:goto Jyoushi_Input_Seireki2:
21610 case 2:
21620 No=0:sp_on 13,1:sp_on 9,0
21630 pause 200:goto Jyoushi_Input_Seireki2:
21640 case 0:
21650 pause 200:goto Jyoushi_Input_Seireki2:
21660 case 7:
21670 No=4:sp_on 5,1:sp_on 4,0
21680 pause 200:goto Jyoushi_Input_Seireki2:
21690 case 4:
21700 No=1:sp_on 6,1:sp_on 5,0
21710 pause 200:goto Jyoushi_Input_Seireki2:
21720 case 1:
21730 pause 200:goto Jyoushi_Input_Seireki2:
21740 end select
21750 endif
21760 '左へボタン 十字キー　左　or 　カーソル左
21770 if ((y2 = -1) or (key$ = chr$(29))) then
21780 select case No
21790 'Ok ボタン  Okから　左　０に行く
21800 case -1:
21810 No=0:sp_on 13,1:sp_on 14,0
21820 pause 200:goto Jyoushi_Input_Seireki2:
21830 '0 ボタン  左　何もしない
21840 case 0:
21850 pause 200:goto Jyoushi_Input_Seireki2:
21860 case 3:
21870 No=2:sp_on 9,1:sp_on 12,0:
21880 pause 200:goto Jyoushi_Input_Seireki2:
21890 case 2:
21900 No=1:sp_on 6,1:sp_on 9,0:
21910 pause 200:goto Jyoushi_Input_Seireki2:
21920 case 1:
21930 pause 200:goto Jyoushi_Input_Seireki2:
21940 case 6:
21950 No=5:sp_on 8,1:sp_on 11,0
21960 pause 200:goto Jyoushi_Input_Seireki2:
21970 case 5:
21980 No=4:sp_on 5,1:sp_on 8,0
21990 pause 200:goto Jyoushi_Input_Seireki2:
22000 case 4:
22010 pause 200:goto Jyoushi_Input_Seireki2:
22020 case 9:
22030 No=8:sp_on 7,1:sp_on 10,0
22040 pause 200:goto Jyoushi_Input_Seireki2:
22050 case 8:
22060 No=7:sp_on 4,1:sp_on 7,0
22070 pause 200:goto Jyoushi_Input_Seireki2:
22080 case 7:
22090 pause 200:goto Jyoushi_Input_Seireki2:
22100 end select
22110 endif
22120 '右  十字キー　右　or カーソル　右
22130 if ((y2 = 1) or (key$ = chr$(28))) then
22140 select case No
22150 '0ボタンからokボタン右に移動
22160 case 0:
22170 No=-1:sp_on 14,1:sp_on 13,0
22180 pause 200:goto Jyoushi_Input_Seireki2:
22190 '0ボタンからokボタン 右に移動　ここまで
22200 'OKボタンで右を押して何もしない
22210 case -1:
22220 pause 200:goto Jyoushi_Input_Seireki2:
22230 case 1:
22240 No=2:sp_on 9,1:sp_on 6,0
22250 pause 200:goto Jyoushi_Input_Seireki2:
22260 case 2:
22270 No=3:sp_on 12,1:sp_on 9,0
22280 pause 200:goto Jyoushi_Input_Seireki2:
22290 case 3:
22300 pause 200:goto Jyoushi_Input_Seireki2:
22310 case 4:
22320 No=5:sp_on 8,1:sp_on 5,0
22330 pause 200:goto Jyoushi_Input_Seireki2:
22340 case 5:
22350 No=6:sp_on 11,1:sp_on 8,0
22360 pause 200:goto Jyoushi_Input_Seireki2:
22370 case 7:
22380 No=8:sp_on 7,1:sp_on 4,0
22390 pause 200:goto Jyoushi_Input_Seireki2:
22400 case 8:
22410 No=9:sp_on 10,1:sp_on 7,0
22420 pause 200:goto Jyoushi_Input_Seireki2:
22430 case 9:
22440 pause 200:goto Jyoushi_Input_Seireki2:
22450 case 6:
22460 pause 200:goto Jyoushi_Input_Seireki2:
22470 end select
22480 'Okから右ボタンを押して何もしない ここまで
22490 endif
22500 '十字キー　ここまで
22510 if ((bg=2) or (key$=chr$(13))) then
22520 select case count
22530 case 0:
22540 count=1
22550 if (No=-1) then
22560 count=0
22570 buf_Jyoushi_Born_Day(0)=No
22580 'Okボタンを押したとき
22590 goto Jyoushi_Input_Seireki2:
22600 else
22610 'Okボタン以外が押されたとき
22620 if (No>=1 and No<=2) then
22630 buf_year$="":buf_year$=str$(No)
22640 buf_year=No
22650 buf_Jyoushi_Born_Day(0)=No
22660 locate 2,3
22670 color rgb(255,255,255)
22680 print "上司の生まれた年代(西暦4桁):";buf_year$
22690 goto Jyoushi_Input_Seireki2:
22700 else
22710 count=0
22720 ui_msg"数字が範囲外になります。"
22730 buf_year$="":buf_year=0
22740 goto Jyoushi_Input_Seireki2:
22750 endif
22760 endif
22770 case 1:
22780 count = 2
22790 if (No = -1) then
22800 count = 1
22810 goto Jyoushi_Input_Seireki2:
22820 else
22830 b = val(buf_year$)
22840 buf_year = b * 10 + No
22850 buf_year$ = str$(buf_year)
22860 buf_Jyoushi_Born_Day(0)=buf_year
22870 locate 2,3
22880 color rgb(255,255,255)
22890 print "                                                                "
22900 locate 2,3
22910 print "上司の生まれた年代(西暦4桁):"+buf_year$
22920 'if (No = -1) then
22930 'count=1
22940 goto Jyoushi_Input_Seireki2:
22950 endif
22960 case 2:
22970 count=3
22980 if (No=-1) then
22990 count =2
23000 goto Jyoushi_Input_Seireki2:
23010 else
23020 b = val(buf_year$)
23030 buf_year = b*10 + No
23040 buf_year$ = str$(buf_year)
23050 buf_Jyoushi_Born_Day(0) = buf_year
23060 locate 2,3
23070 color rgb(255,255,255)
23080 print "                                        "
23090 locate 2,3
23100 print "上司の生まれた年代(西暦4桁):";buf_year$
23110 goto Jyoushi_Input_Seireki2:
23120 endif
23130 case 3:
23140 count=4
23150 if (No = -1) then
23160 count=3
23170 goto Jyoushi_Input_Seireki2:
23180 else
23190 b = val(buf_year$)
23200 buf_year=b*10+No
23210 buf_year$=str$(buf_year)
23220 buf_Jyoushi_Born_Day(0)=buf_year
23230 locate 2,3
23240 color RGB(255,255,255)
23250 print "                                      "
23260 locate 2,3
23270 print "上司の生まれた年代(西暦4桁):";buf_year$
23280 buf_year=val(buf_year$)
23290 'year=val(buf_year$)
23300 'if (No=-1) then
23310 'goto Input_Born_Month:
23320 'else
23330 goto Jyoushi_Input_Seireki2:
23340 endif
23350 case 4:
23360 'bufyear=buf_year
23370 if (No=-1) then
23380 buf_year = val(buf_year$)
23390 buf_Jyoushi_Born_Day(0)=buf_year
23400 sp_on 14,0
23410 goto Jyoushi_Input_Born_Month:
23420 else
23430 goto Jyoushi_Input_Seireki2:
23440 endif
23450 end select
23460 endif
23470 if (bg2 = 2) then
23480 select case count2
23490 case 0:
23500 if (No = -1) then
23510 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
23520 count=0
23530 locate 2,3
23540 color rgb(255,255,255)
23550 print "                                      "
23560 locate 2,3
23570 print "上司の生まれた年代（西暦4桁):"+buf_year$
23580 goto Jyoushi_Input_Seireki2:
23590 else
23600 '(buf_year=0) then
23610 buf_year=0:buf_year$="****"
23620 locate 2,3
23630 print "                                       "
23640 locate 2,3
23650 print "上司の生まれた年代(西暦4桁):"+buf_year$
23660 goto Jyoushi_Input_Seireki2:
23670 'endif
23680 endif
23690 end select
23700 endif
23710 'Input"上司の生れた年代(4桁,〜2025年):",year
23720 'if year > 2025 then goto Jyoushi_Input_Seireki:
23730 'if year = 123 then cls 3:cls 4:goto Main_Screen:
23740 '"4桁目"
23750 'bufyear4 = fix(year / 1000)
23760 '"3桁目"
23770 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
23780 '"2桁目"
23790 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
23800 '"1桁目"
23810 'bufyear1 = fix((year - ((bufyear4*
23820 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
23830 '2.生まれた月を入力
23840 Jyoushi_Input_Born_Month:
23850 cls 3:play "":count=0:count2=0
23860 'No=-1:Okのとき
23870 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
23880 for i=0 to 1
23890 buf_month(i)=0
23900 next i
23910 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
23920 gload Gazo$ + "Screen1.png",0,0,0
23930 gload Gazo$ + "downscreen.png",0,0,800
23940 'Init"kb:4"
23950 '音声ファイル再生 2023.06.07
23960 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
23970 font 48
23980 locate 0,1
23990 '文字色：黒　 color rgb(0,0,0)
24000 '文字色:白
24010 color rgb(255,255,255)
24020 print "上司の生まれた月を入れて下さい" + chr$(13)
24030 '文字色:白
24040 color rgb(255,255,255)
24050 locate 2,3
24060 '文字色:白
24070 print "上司の生まれた月(1月~12月):";buf_Month$
24080 color rgb(255,0,0)
24090 'locate 4,6:print ":7"
24100 'locate 9,6:print ":8"
24110 'locate 12,6:print ":9"
24120 locate 4,6
24130 '文字色:赤
24140 print ":7  :8  :9" + chr$(13)
24150 color rgb(255,0,0)
24160 locate 4,8
24170 print ":4  :5  :6" + chr$(13)
24180 color rgb(255,0,0)
24190 locate 4,10
24200 print ":1  :2  :3" + chr$(13)
24210 locate 4,12
24220 print "    :0"
24230 locate 12,12
24240 color rgb(0,0,255)
24250 print ":Ok"
24260 sp_on 4,0: sp_on 5,0:sp_on 6,0
24270 sp_on 7,0:sp_on 8,0:sp_on 9,0
24280 sp_on 10,0:sp_on 11,0:sp_on 12,0
24290 sp_on 13,0:sp_on 14,1
24300 Jyoushi_Input_Born_Month2:
24310 key$="":bg=0:y=0:y2=0:bg2=0
24320 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
24330 key$ = inkey$
24340 bg = strig(1)
24350 y = stick(1)
24360 y2 = stick(0)
24370 bg2 = strig(0)
24380 pause 5
24390 wend
24400 '十字キー　ここから
24410 '上の矢印　または、十字キー上
24420 if ((y = -1) or (key$ = chr$(30))) then
24430 select case No
24440 'No=-1:okのとき:初期の状態
24450 '0kボタンから３に移動
24460 '上に行く 処理
24470 case -1:
24480 No=3:sp_on 12,1:sp_on 14,0
24490 pause 200:goto Jyoushi_Input_Born_Month2:
24500 '選択肢:3
24510 '3ボタンから 6に移動
24520 case 3:
24530 No=6:sp_on 12,0:sp_on 11,1
24540 pause 200:goto Jyoushi_Input_Born_Month2:
24550 '6ボタンから ９に移動
24560 case 6:
24570 No=9:sp_on 10,1:sp_on 11,0
24580 pause 200:goto Jyoushi_Input_Born_Month2:
24590 '6ボタンから ９に移動　ここまで
24600 '9で上を押して何もしない
24610 case 9:
24620 '何もしない
24630 No=9
24640 pause 200:goto Jyoushi_Input_Born_Month2:
24650 '9で上を押しても何もしない　ここまで
24660 '上　 0ボタンから2ボタン
24670 'sp_on 6,1:1
24680 'sp_on 8,1:5
24690 'sp_on 7,1:7
24700 case 0:
24710 No=2:sp_on 13,0:sp_on 9,1:
24720 pause 200:goto Jyoushi_Input_Born_Month2:
24730 '上  0ボタンから2ボタン　ここまで
24740 '2から５になる 上
24750 case 2:
24760 No=5:sp_on 8,1:sp_on 9,0:
24770 pause 200:goto Jyoushi_Input_Born_Month2:
24780 case 5:
24790 No=8:sp_on 7,1:sp_on 8,0
24800 pause 200:goto Jyoushi_Input_Born_Month2:
24810 case 8:
24820 pause 200:goto Input_Born_Month2:
24830 case 1:
24840 No=4:sp_on 5,1:sp_on 6,0
24850 pause 200:goto Jyoushi_Input_Born_Month2:
24860 case 4:
24870 No=7:sp_on 4,1:sp_on 5,0
24880 pause 200:goto Jyoushi_Input_Born_Month2:
24890 case 7:
24900 pause 200:goto Input_Born_Month2:
24910 end select
24920 endif
24930 '左３　ここまで
24940 '下の矢印
24950 '中央 2
24960 if ((y=1) or (key$ = chr$(31))) then
24970 select case No
24980 '9から６に下げる
24990 case 9:
25000 No=6:sp_on 11,1:sp_on 10,0
25010 pause 200:goto Jyoushi_Input_Born_Month2:
25020 '6から３に下げる
25030 case 6:
25040 No=3:sp_on 12,1:sp_on 11,0
25050 pause 200:goto Jyoushi_Input_Born_Month2:
25060 '3から０ｋに変える
25070 case 3:
25080 No=-1:sp_on 14,1:sp_on 12,0
25090 pause 200:goto Jyoushi_Input_Born_Month2:
25100 'Okから下のボタンを押しても何もしない
25110 case -1:
25120 pause 200:goto Jyoushi_Input_Born_Month2:
25130 case 8:
25140 No=5:sp_on 8,1:sp_on 7,0
25150 pause 200:goto Jyoushi_Input_Born_Month2:
25160 case 5:
25170 No=2:sp_on 9,1:sp_on 8,0
25180 pause 200:goto Jyoushi_Input_Born_Month2:
25190 case 2:
25200 No=0:sp_on 13,1:sp_on 9,0
25210 pause 200:goto Jyoushi_Input_Born_Month2:
25220 case 0:
25230 pause 200:goto Jyoushi_Input_Born_Month2:
25240 case 7:
25250 No=4:sp_on 5,1:sp_on 4,0
25260 pause 200:goto Jyoushi_Input_Born_Month2:
25270 case 4:
25280 No=1:sp_on 6,1:sp_on 5,0
25290 pause 200:goto Jyoushi_Input_Born_Month2:
25300 case 1:
25310 pause 200:goto Jyoushi_Input_Born_Month2:
25320 end select
25330 endif
25340 '左へボタン 十字キー　左　or 　カーソル左
25350 if ((y2 = -1) or (key$ = chr$(29))) then
25360 select case No
25370 'Ok ボタン  Okから　左　０に行く
25380 case -1:
25390 No=0:sp_on 13,1:sp_on 14,0
25400 pause 200:goto Jyoushi_Input_Born_Month2:
25410 '0 ボタン  左　何もしない
25420 case 0:
25430 pause 200:goto Jyoushi_Input_Born_Month2:
25440 case 3:
25450 No=2:sp_on 9,1:sp_on 12,0:
25460 pause 200:goto Jyoushi_Input_Born_Month2:
25470 case 2:
25480 No=1:sp_on 6,1:sp_on 9,0:
25490 pause 200:goto Jyoushi_Input_Born_Month2:
25500 case 1:
25510 pause 200:goto Jyoushi_Input_Born_Month2:
25520 case 6:
25530 No=5:sp_on 8,1:sp_on 11,0
25540 pause 200:goto Jyoushi_Input_Born_Month2:
25550 case 5:
25560 No=4:sp_on 5,1:sp_on 8,0
25570 pause 200:goto Jyoushi_Input_Born_Month2:
25580 case 4:
25590 pause 200:goto Jyoushi_Input_Born_Month2:
25600 case 9:
25610 No=8:sp_on 7,1:sp_on 10,0
25620 pause 200:goto Input_Born_Month2:
25630 case 8:
25640 No=7:sp_on 4,1:sp_on 7,0
25650 pause 200:goto Jyoushi_Input_Born_Month2:
25660 case 7:
25670 pause 200:goto Jyoushi_Input_Born_Month2:
25680 end select
25690 endif
25700 '右  十字キー　右　or カーソル　右
25710 if ((y2 = 1) or (key$ = chr$(28))) then
25720 select case No
25730 '0ボタンからokボタン右に移動
25740 case 0:
25750 No=-1:sp_on 14,1:sp_on 13,0
25760 pause 200:goto Jyoushi_Input_Born_Month2:
25770 '0ボタンからokボタン 右に移動　ここまで
25780 'OKボタンで右を押して何もしない
25790 case -1:
25800 pause 200:goto Jyoushi_Input_Born_Month2:
25810 case 1:
25820 No=2:sp_on 9,1:sp_on 6,0
25830 pause 200:goto Jyoushi_Input_Born_Month2:
25840 case 2:
25850 No=3:sp_on 12,1:sp_on 9,0
25860 pause 200:goto Jyoushi_Input_Born_Month2:
25870 case 3:
25880 pause 200:goto Jyoushi_Input_Born_Month2:
25890 case 4:
25900 No=5:sp_on 8,1:sp_on 5,0
25910 pause 200:goto Jyoushi_Input_Born_Month2:
25920 case 5:
25930 No=6:sp_on 11,1:sp_on 8,0
25940 pause 200:goto Jyoushi_Input_Born_Month2:
25950 case 7:
25960 No=8:sp_on 7,1:sp_on 4,0
25970 pause 200:goto Jyoushi_Input_Born_Month2:
25980 case 8:
25990 No=9:sp_on 10,1:sp_on 7,0
26000 pause 200:goto Jyoushi_Input_Born_Month2:
26010 case 9:
26020 pause 200:goto Jyoushi_Input_Born_Month2:
26030 case 6:
26040 pause 200:goto Jyoushi_Input_Born_Month2:
26050 end select
26060 'Okから右ボタンを押して何もしない ここまで
26070 endif
26080 '十字キー　ここまで
26090 '右の丸ボタン　決定キー
26100 if ((bg=2) or (key$=chr$(13))) then
26110 select case count
26120 case 0:
26130 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
26140 locate 2,3
26150 color RGB(255,255,255)
26160 print "生まれた月(1月~12月):";buf_Month$
26170 goto Jyoushi_Input_Born_Month2:
26180 case 1:
26190 count = 2:c = No
26200 c = val(buf_Month$)
26210 if (No = -1) then
26220 'count=0
26230 month=buf_month
26240 buf_month=val(buf_Month$)
26250 month=buf_month
26260 buf_Jyoushi_Born_Day(1)=month
26270 '生まれた日に飛ぶ
26280 goto Jyoushi_Input_Born_Day:
26290 else
26300 buf_month = c*10 + No
26310 buf_Month$= str$(buf_month)
26320 buf_Jyoushi_Born_Day(1)=buf_month
26330 locate 2,3
26340 color Rgb(255,255,255)
26350 print "上司の生まれた月(1月~12月):";buf_Month$
26360 goto Jyoushi_Input_Born_Month2:
26370 endif
26380 case 2:
26390 count=3
26400 'c= val(buf_Month$)
26410 'buf_month = c*10 + No
26420 'buf_Month$ = str$(buf_month)
26430 'locate 2,3
26440 'print "上司の生まれた月(1月～12月):";buf_Month$
26450 'goto Jyoushi_Input_Born_Month2:
26460 'case 3:
26470 'count=4
26480 'b=val(buf_month$)
26490 'buf_month=c*10+No
26500 'buf_Month$=str$(buf_month)
26510 'locate 2,3
26520 'print "上司の生まれた月(1月～12月):";buf_Month$
26530 'buf_month=val(buf_Month$)
26540 'year=val(buf_year$)
26550 if (No=-1) then
26560 goto Jyoushi_Input_Born_Day:
26570 else
26580 goto Jyoushi_Input_Born_Month2:
26590 endif
26600 'case 4:
26610 'bufyear=buf_year
26620 'if (No=-1) then
26630 'buf_month = val(buf_Month$)
26640 'month = buf_month
26650 'sp_on 14,0
26660 'goto Input_Born_Day:
26670 'else
26680 'goto Input_Born_Month2:
26690 'endif
26700 end select
26710 endif
26720 '左の丸ボタン　キャンセル
26730 if (bg2=2) then
26740 select case count2
26750 case 0:
26760 if (No = -1) then
26770 buf_month=0:buf_Month$="**"
26780 count=0
26790 goto rewrite2:
26800 else
26810 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
26820 buf_month = 0:buf_Month$ = "**"
26830 locate 2,3
26840 color rgb(255,255,255)
26850 print "                                       "
26860 goto rewrite2:
26870 if (No>12) then
26880 ui_msg"値が範囲外です。"
26890 goto rewrite2:
26900 endif
26910 endif
26920 endif
26930 rewrite2:
26940 locate 2,2
26950 color rgb(255,255,255)
26960 print "                                      "
26970 locate 2,2
26980 print "上司の生まれた月(1月~12月):";buf_Month$
26990 goto Jyoushi_Input_Born_Month2:
27000 end select
27010 'endif
27020 endif
27030 end
27040 'end
27050 '生れた日を入力
27060 Jyoushi_Input_Born_Day:
27070 '生まれた日入力
27080 cls 3:play ""
27090 'No=-1:Okのとき
27100 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
27110 for i=0 to 1
27120 buf_day(i)=0
27130 next i
27140 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27150 gload Gazo$ + "Screen1.png",0,0,0
27160 gload Gazo$ + "downscreen.png",0,0,800
27170 'Init"kb:2"
27180 '音声ファイル再生 2023.06.07
27190 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
27200 font 48
27210 locate 0,1
27220 '文字色：黒　 color rgb(0,0,0)
27230 color rgb(255,255,255)
27240 print "上司の生まれた日を入れて下さい" + chr$(13)
27250 locate 2,3
27260 color rgb(255,255,255)
27270 print "                                      "
27280 locate 2,3
27290 print "上司の生まれた日(1日~31日):";buf_Day$
27300 color rgb(255,0,0)
27310 'locate 4,6:print ":7"
27320 'locate 9,6:print ":8"
27330 'locate 12,6:print ":9"
27340 locate 4,6
27350 print ":7  :8  :9" + chr$(13)
27360 color rgb(255,0,0)
27370 locate 4,8
27380 print ":4  :5  :6" + chr$(13)
27390 color rgb(255,0,0)
27400 locate 4,10
27410 print ":1  :2  :3" + chr$(13)
27420 locate 4,12
27430 print "    :0"
27440 locate 12,12
27450 color rgb(0,0,255)
27460 print ":Ok"
27470 sp_on 4,0: sp_on 5,0:sp_on 6,0
27480 sp_on 7,0:sp_on 8,0:sp_on 9,0
27490 sp_on 10,0:sp_on 11,0:sp_on 12,0
27500 sp_on 13,0:sp_on 14,1
27510 Jyoushi_Input_Born_Day2:
27520 key$="":bg=0:y=0:y2=0:bg2=0:
27530 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27540 key$ = inkey$
27550 bg = strig(1)
27560 y = stick(1)
27570 y2 = stick(0)
27580 bg2 = strig(0)
27590 pause 5
27600 wend
27610 '十字キー　ここから
27620 '上の矢印　または、十字キー上
27630 if ((y = -1) or (key$ = chr$(30))) then
27640 select case No
27650 'No=-1:okのとき:初期の状態
27660 '0kボタンから３に移動
27670 '上に行く 処理
27680 case -1:
27690 No=3:sp_on 12,1:sp_on 14,0
27700 pause 200:goto Jyoushi_Input_Born_Day2:
27710 '選択肢:3
27720 '3ボタンから 6に移動
27730 case 3:
27740 No=6:sp_on 12,0:sp_on 11,1
27750 pause 200:goto Jyoushi_Input_Born_Day2:
27760 '6ボタンから ９に移動
27770 case 6:
27780 No=9:sp_on 10,1:sp_on 11,0
27790 pause 200:goto Jyoushi_Input_Born_Day2:
27800 '6ボタンから ９に移動　ここまで
27810 '9で上を押して何もしない
27820 case 9:
27830 '何もしない
27840 No=9
27850 pause 200:goto Jyoushi_Input_Born_Day2:
27860 '9で上を押しても何もしない　ここまで
27870 '上　 0ボタンから2ボタン
27880 'sp_on 6,1:1
27890 'sp_on 8,1:5
27900 'sp_on 7,1:7
27910 case 0:
27920 No=2:sp_on 13,0:sp_on 9,1:
27930 pause 200:goto Jyoushi_Input_Born_Day2:
27940 '上  0ボタンから2ボタン　ここまで
27950 '2から５になる 上
27960 case 2:
27970 No=5:sp_on 8,1:sp_on 9,0:
27980 pause 200:goto Jyoushi_Input_Born_Day2:
27990 case 5:
28000 No=8:sp_on 7,1:sp_on 8,0
28010 pause 200:goto Jyoushi_Input_Born_Day2:
28020 case 8:
28030 pause 200:goto Jyoushi_Input_Born_Day2:
28040 case 1:
28050 No=4:sp_on 5,1:sp_on 6,0
28060 pause 200:goto Jyoushi_Input_Born_Day2:
28070 case 4:
28080 No=7:sp_on 4,1:sp_on 5,0
28090 pause 200:goto Jyoushi_Input_Born_Day2:
28100 case 7:
28110 pause 200:goto Jyoushi_Input_Born_Day2:
28120 end select
28130 endif
28140 '左３　ここまで
28150 '下の矢印
28160 '中央 2
28170 if ((y=1) or (key$ = chr$(31))) then
28180 select case No
28190 '9から６に下げる
28200 case 9:
28210 No=6:sp_on 11,1:sp_on 10,0
28220 pause 200:goto Jyoushi_Input_Born_Day2:
28230 '6から３に下げる
28240 case 6:
28250 No=3:sp_on 12,1:sp_on 11,0
28260 pause 200:goto Jyoushi_Input_Born_Day2:
28270 '3から０ｋに変える
28280 case 3:
28290 No=-1:sp_on 14,1:sp_on 12,0
28300 pause 200:goto Jyoushi_Input_Born_Day2:
28310 'Okから下のボタンを押しても何もしない
28320 case -1:
28330 pause 200:goto Jyoushi_Input_Born_Day2:
28340 case 8:
28350 No=5:sp_on 8,1:sp_on 7,0
28360 pause 200:goto Jyoushi_Input_Born_Day2:
28370 case 5:
28380 No=2:sp_on 9,1:sp_on 8,0
28390 pause 200:goto Jyoushi_Input_Born_Day2:
28400 case 2:
28410 No=0:sp_on 13,1:sp_on 9,0
28420 pause 200:goto Jyoushi_Input_Born_Day2:
28430 case 0:
28440 pause 200:goto Jyoushi_Input_Born_Day2:
28450 case 7:
28460 No=4:sp_on 5,1:sp_on 4,0
28470 pause 200:goto Jyoushi_Input_Born_Day2:
28480 case 4:
28490 No=1:sp_on 6,1:sp_on 5,0
28500 pause 200:goto Jyoushi_Input_Born_Day2:
28510 case 1:
28520 pause 200:goto Jyoushi_Input_Born_Day2:
28530 end select
28540 endif
28550 '左へボタン 十字キー　左　or 　カーソル左
28560 if ((y2 = -1) or (key$ = chr$(29))) then
28570 select case No
28580 'Ok ボタン  Okから　左　０に行く
28590 case -1:
28600 No=0:sp_on 13,1:sp_on 14,0
28610 pause 200:goto Jyoushi_Input_Born_Day2:
28620 '0 ボタン  左　何もしない
28630 case 0:
28640 pause 200:goto Jyoushi_Input_Born_Day2:
28650 case 3:
28660 No=2:sp_on 9,1:sp_on 12,0:
28670 pause 200:goto Jyoushi_Input_Born_Day2:
28680 case 2:
28690 No=1:sp_on 6,1:sp_on 9,0:
28700 pause 200:goto Jyoushi_Input_Born_Day2:
28710 case 1:
28720 pause 200:goto Jyoushi_Input_Born_Day2:
28730 case 6:
28740 No=5:sp_on 8,1:sp_on 11,0
28750 pause 200:goto Jyoushi_Input_Born_Day2:
28760 case 5:
28770 No=4:sp_on 5,1:sp_on 8,0
28780 pause 200:goto Jyoushi_Input_Born_Day2:
28790 case 4:
28800 pause 200:goto Jyoushi_Input_Born_Day2:
28810 case 9:
28820 No=8:sp_on 7,1:sp_on 10,0
28830 pause 200:goto Jyoushi_Input_Born_Day2:
28840 case 8:
28850 No=7:sp_on 4,1:sp_on 7,0
28860 pause 200:goto Jyoushi_Input_Born_Day2:
28870 case 7:
28880 pause 200:goto Jyoushi_Input_Born_Day2:
28890 end select
28900 endif
28910 '右  十字キー　右　or カーソル　右
28920 if ((y2 = 1) or (key$ = chr$(28))) then
28930 select case No
28940 '0ボタンからokボタン右に移動
28950 case 0:
28960 No=-1:sp_on 14,1:sp_on 13,0
28970 pause 200:goto Jyoushi_Input_Born_Day2:
28980 '0ボタンからokボタン 右に移動　ここまで
28990 'OKボタンで右を押して何もしない
29000 case -1:
29010 pause 200:goto Jyoushi_Input_Born_Day2:
29020 case 1:
29030 No=2:sp_on 9,1:sp_on 6,0
29040 pause 200:goto Jyoushi_Input_Born_Day2:
29050 case 2:
29060 No=3:sp_on 12,1:sp_on 9,0
29070 pause 200:goto Jyoushi_Input_Born_Day2:
29080 case 3:
29090 pause 200:goto Jyoushi_Input_Born_Day2:
29100 case 4:
29110 No=5:sp_on 8,1:sp_on 5,0
29120 pause 200:goto Jyoushi_Input_Born_Day2:
29130 case 5:
29140 No=6:sp_on 11,1:sp_on 8,0
29150 pause 200:goto Jyoushi_Input_Born_Day2:
29160 case 7:
29170 No=8:sp_on 7,1:sp_on 4,0
29180 pause 200:goto Jyoushi_Input_Born_Day2:
29190 case 8:
29200 No=9:sp_on 10,1:sp_on 7,0
29210 pause 200:goto Jyoushi_Input_Born_Day2:
29220 case 9:
29230 pause 200:goto Jyoushi_Input_Born_Day2:
29240 case 6:
29250 pause 200:goto Jyoushi_Input_Born_Day2:
29260 end select
29270 'Okから右ボタンを押して何もしない ここまで
29280 endif
29290 '十字キー　ここまで
29300 '右の丸ボタンを押したとき
29310 if ((bg = 2) or (key$ = chr$(13))) then
29320 'count :決定ボタンを押した回数
29330 select case (count)
29340 '1桁目入力
29350 case 0:
29360 count = 1:
29370 if (No = -1) then
29380 '1桁目　OKでは何もしない
29390 goto check2:
29400 else
29410 'ok以外のボタンを押したとき
29420 buf_day = No:buf_Day$=str$(No)
29430 buf_Jyoushi_Born_Day(2)=buf_day
29440 c=No
29450 locate 2,3
29460 print "                                      "
29470 color RGB(255,255,255)
29480 locate 2,3
29490 print "上司の生まれた日(1日~31日):"+buf_Day$
29500 endif
29510 check2:
29520 if (No >= 1 and No <= 9) then
29530 sp_on 14,0
29540 goto Jyoushi_Input_Born_Day2:
29550 else
29560 sp_on 14,0
29570 goto complate_jyoushi:
29580 'end
29590 endif
29600 case 1:
29610 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
29620 count = 2:
29630 'locate 2,3
29640 'color RGB(255,255,255)
29650 'print "生まれた日(1日~31日):";buf_Day$
29660 'Okボタンを押したときの処理
29670 '入力値　10未満のとき
29680 c = buf_day
29690 'if (No = -1) then
29700 'c=buf_day
29710 'buf_day = c
29720 'buf_Day$ = str$(buf_day)
29730 '10以下のとき
29740 'if (buf_day < 10) then
29750 sp_on 14,0
29760 'goto complate2:
29770 'end
29780 'endif
29790 'else
29800 'c=No
29810 buf_day = c * 10 + No
29820 buf_Day$ = str$(buf_day)
29830 buf_Jyoushi_Born_Day(2)=buf_day
29840 locate 2,3
29850 print "                                           "
29860 locate 2,3
29870 color Rgb(255,255,255)
29880 print "上司の生まれた日(1日~31日):"+buf_Day$
29890 goto Jyoushi_Input_Born_Day2:
29900 'goto complate2:
29910 'endif
29920 'endif
29930 '生まれた日　2桁目の数字　or 1桁の数字 + ok
29940 case 2:
29950 'count=0
29960 'c=val(buf_Day$)
29970 'buf_day=c*10+No
29980 'buf_Day$=str$(buf_day)
29990 'day=buf_day
30000 'locate 2,3
30010 'print "生まれた日(1日〜31日):";buf_Day$
30020 'No=-1:ok ボタンを押したとき
30030 if (No = -1) then
30040 'if ((buf_day > 0) and (buf_day < 32)) then
30050 sp_on 14,0
30060 goto complate_jyoushi:
30070 'end
30080 'else
30090 'goto Jyoushi_Input_Born_Day2:
30100 endif
30110 'Okボタン以外を押したとき
30120 'else
30130 'c=val(buf_Day$)
30140 'buf_day = c * 10 + No
30150 'buf_Day$ = str$(buf_day)
30160 'locate 2,3
30170 'print "生まれた日(1日~31日):";buf_Day$
30180 'goto Jyoushi_Input_Born_Day2:
30190 'endif
30200 case 3:
30210 count=4
30220 'c=val(buf_day$)
30230 'buf_day=c*10+No
30240 'buf_day$=str$(buf_day)
30250 'locate 2,3
30260 'print "生まれた日を入れてください:";buf_day$
30270 'year=val(buf_year$)
30280 if (No = -1) then
30290 'goto Jyoushi_Input_Born_Day:
30300 sp_on 14,0:
30310 goto complate_jyoushi:
30320 else
30330 'goto Jyoushi_Input_Born_Month2:
30340 'endif
30350 'case 4:
30360 'bufyear=buf_year
30370 'if (No=-1) then
30380 'buf_day = val(buf_day$)
30390 'bufday = buf_day
30400 'sp_on 14,0
30410 goto complate_jyoushi:
30420 'else
30430 'goto Jyoushi_Input_Born_Day2:
30440 endif
30450 end select
30460 endif
30470 if (bg2=2) then
30480 select case count2
30490 case 0:
30500 if (No=-1) then
30510 buf_day=0:buf_Day$="**"
30520 if (buf_day>=1 and buf_day<=31) then
30530 count=0
30540 buf_day=0:buf_Day$="**"
30550 goto rewrite_day3:
30560 else
30570 buf_day=0:buf_Day$="**"
30580 ui_msg"値が範囲外です"
30590 endif
30600 goto rewrite_day3:
30610 else
30620 goto rewrite_day3:
30630 endif
30640 rewrite_day3:
30650 locate 2,3
30660 color rgb(255,255,255)
30670 print "                                      "
30680 locate 2,3
30690 print "生まれた日(1日~31日):"+buf_Day$
30700 goto Jyoushi_Input_Born_Day2:
30710 end select
30720 endif
30730 '--------------------------------------------'
30740 'locate 2,0:color rgb(255,0,0)
30750 'print "上司の生まれた年代を入力"
30760 'color rgb(255,255,255)
30770 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
30780 'locate 2,4:Input "上司の生まれた年:",born_year
30790 '誕生日データーを配列に代入
30800 'buf_Jyoushi_Born_Year:上司の生まれた年代
30810 'buf_Jyoushi_Born_Day(0) = born_year
30820 'born_year = 0
30830 '---------------------------------------------'
30840 'goto Jyoushi_born_month:
30850 '1-2.生まれた月を入力
30860 'Jyoushi_born_month:
30870 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
30880 'init "kb:4"
30890 'locate 2,1:
30900 'color rgb(255,0,0)
30910 'print "上司の生まれた月入力"
30920 'color rgb(255,255,255)
30930 'locate 2,4:print "生まれた月を入力してください"
30940 'locate 2,5
30950 'Input "上司の生まれ月:",born_month
30960 'buf_Jyoushi_Born_Day(1) = born_month
30970 'born_month = 0
30980 'goto Jyoushi_born_day:
30990 'buf_Jyoushi_Born_day
31000 '1-3.生まれた日を入力
31010 'Jyoushi_born_day:
31020 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31030 'init "kb:4"
31040 'locate 2,1:color rgb(255,0,0)
31050 'print "上司の生まれた日　入力"
31060 'locate 2,4:color rgb(255,255,255)
31070 'print "生まれた日を入力してください"
31080 'locate 2,5
31090 'Input "上司の生まれた日:",born_day
31100 'buf_Jyoushi_Born_Day(2) = born_day
31110 'born_day = 0
31120 'goto buka_born_year:
31130 '2.部下の誕生日入力
31140 '2-1.生まれた年を入力
31150 'buka_born_year:
31160 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31170 'init "kb:2"
31180 'locate 1,1:color rgb(255,0,0)
31190 'print "部下の生まれた年代入力"
31200 'locate 0,4:color rgb(255,255,255)
31210 'print "部下の生まれた年（西暦4桁）を入れてください"
31220 'locate 0,5
31230 'Input "部下の生まれた年(西暦4桁):",born_year
31240 'buf_Buka_Born_Day(0) = born_year
31250 'born_year = 0
31260 '2-2.生まれた月を入力
31270 'buka_born_month:
31280 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31290 'init "kb:2"
31300 'locate 2,1:color rgb(255,0,0)
31310 'print "部下の生まれた月 入力"
31320 'locate 2,4:color rgb(255,255,255)
31330 'print "部下の生まれた月を入力してください"
31340 'locate 2,5:Input "部下の生まれた月:",born_month
31350 'buf_Buka_Born_Day(1) = born_month
31360 '2-3.生まれた日を入力
31370 'buka_born_day:
31380 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31390 'init "kb:2"
31400 'locate 2,1:color rgb(255,0,0)
31410 'print "生まれた日入力"
31420 'color rgb(255,255,255)
31430 'locate 2,4:print "生まれた日を入力してください"
31440 'locate 2,5:Input "部下の生まれた日:",born_day
31450 'buf_Buka_Born_Day(2) = born_day
31460 'born_day=0:goto Result_Business_Aisyou:
31470 '--------------------------------------------'
31480 complate_jyoushi:
31490 a=buf_Jyoushi_Born_Day(0):b=buf_Jyoushi_Born_Day(1):c=buf_Jyoushi_Born_Day(2)
31500 buf_Jyoushi = Kabara_Num(a,b,c)
31510 a_1=buf_Jyoushi
31520 goto Buka_Input_Seireki:
31530 '--------------------------------------------'
31540 '部下'
31550 '1.部下の生まれた年代'
31560 Buka_Input_Seireki:
31570 cls 3:play "":count=0:count2=0
31580 init"kb:4"
31590 'No=-1:Okのとき
31600 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****"
31610 for i=0 to 3
31620 buf_Buka_Born_Day(i)=0
31630 next i
31640 gload Gazo$ + "Screen1.png",0,0,0
31650 gload Gazo$ + "downscreen.png",0,0,800
31660 'Init"kb:2"
31670 '音声ファイル再生 2023.06.07
31680 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
31690 font 48
31700 locate 0,1
31710 '文字色：黒　 color rgb(0,0,0)
31720 color rgb(255,255,255)
31730 print "部下の生まれた年代を入れて下さい" + chr$(13)
31740 color rgb(255,255,255)
31750 locate 2,3
31760 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
31770 color rgb(255,0,0)
31780 'locate 4,6:print ":7"
31790 'locate 9,6:print ":8"
31800 'locate 12,6:print ":9"
31810 locate 4,6
31820 print ":7  :8  :9" + chr$(13)
31830 color rgb(255,0,0)
31840 locate 4,8
31850 print ":4  :5  :6" + chr$(13)
31860 color rgb(255,0,0)
31870 locate 4,10
31880 print ":1  :2  :3" + chr$(13)
31890 locate 4,12
31900 print "    :0"
31910 locate 12,12
31920 color rgb(0,0,255)
31930 print ":Ok"
31940 sp_on 4,0: sp_on 5,0:sp_on 6,0
31950 sp_on 7,0:sp_on 8,0:sp_on 9,0
31960 sp_on 10,0:sp_on 11,0:sp_on 12,0
31970 sp_on 13,0:sp_on 14,1
31980 Buka_Input_Seireki2:
31990 key$="":bg=0:y=0:y2=0:bg2=0:
32000 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
32010 key$ = inkey$
32020 bg = strig(1)
32030 y = stick(1)
32040 y2 = stick(0)
32050 bg2=strig(0)
32060 pause 5
32070 wend
32080 '十字キー　ここから
32090 '上の矢印　または、十字キー上
32100 if ((y = -1) or (key$ = chr$(30))) then
32110 select case No
32120 'No=-1:okのとき:初期の状態
32130 '0kボタンから３に移動
32140 '上に行く 処理
32150 case -1:
32160 No=3:sp_on 12,1:sp_on 14,0
32170 pause 200:goto Buka_Input_Seireki2:
32180 '選択肢:3
32190 '3ボタンから 6に移動
32200 case 3:
32210 No=6:sp_on 12,0:sp_on 11,1
32220 pause 200:goto Buka_Input_Seireki2:
32230 '6ボタンから ９に移動
32240 case 6:
32250 No=9:sp_on 10,1:sp_on 11,0
32260 pause 200:goto Buka_Input_Seireki2:
32270 '6ボタンから ９に移動　ここまで
32280 '9で上を押して何もしない
32290 case 9:
32300 '何もしない
32310 No=9
32320 pause 200:goto Buka_Input_Seireki2:
32330 '9で上を押しても何もしない　ここまで
32340 '上　 0ボタンから2ボタン
32350 'sp_on 6,1:1
32360 'sp_on 8,1:5
32370 'sp_on 7,1:7
32380 case 0:
32390 No=2:sp_on 13,0:sp_on 9,1:
32400 pause 200:goto Buka_Input_Seireki2:
32410 '上  0ボタンから2ボタン　ここまで
32420 '2から５になる 上
32430 case 2:
32440 No=5:sp_on 8,1:sp_on 9,0:
32450 pause 200:goto Buka_Input_Seireki2:
32460 case 5:
32470 No=8:sp_on 7,1:sp_on 8,0
32480 pause 200:goto Buka_Input_Seireki2:
32490 case 8:
32500 pause 200:goto Buka_Input_Seireki2:
32510 case 1:
32520 No=4:sp_on 5,1:sp_on 6,0
32530 pause 200:goto Buka_Input_Seireki2:
32540 case 4:
32550 No=7:sp_on 4,1:sp_on 5,0
32560 pause 200:goto Buka_Input_Seireki2:
32570 case 7:
32580 pause 200:goto Buka_Input_Seireki2:
32590 end select
32600 endif
32610 '左３　ここまで
32620 '下の矢印
32630 '中央 2
32640 if ((y=1) or (key$ = chr$(31))) then
32650 select case No
32660 '9から６に下げる
32670 case 9:
32680 No=6:sp_on 11,1:sp_on 10,0
32690 pause 200:goto Buka_Input_Seireki2:
32700 '6から３に下げる
32710 case 6:
32720 No=3:sp_on 12,1:sp_on 11,0
32730 pause 200:goto Buka_Input_Seireki2:
32740 '3から０ｋに変える
32750 case 3:
32760 No=-1:sp_on 14,1:sp_on 12,0
32770 pause 200:goto Buka_Input_Seireki2:
32780 'Okから下のボタンを押しても何もしない
32790 case -1:
32800 pause 200:goto Buka_Input_Seireki2:
32810 case 8:
32820 No=5:sp_on 8,1:sp_on 7,0
32830 pause 200:goto Buka_Input_Seireki2:
32840 case 5:
32850 No=2:sp_on 9,1:sp_on 8,0
32860 pause 200:goto Buka_Input_Seireki2:
32870 case 2:
32880 No=0:sp_on 13,1:sp_on 9,0
32890 pause 200:goto Buka_Input_Seireki2:
32900 case 0:
32910 pause 200:goto Buka_Input_Seireki2:
32920 case 7:
32930 No=4:sp_on 5,1:sp_on 4,0
32940 pause 200:goto Buka_Input_Seireki2:
32950 case 4:
32960 No=1:sp_on 6,1:sp_on 5,0
32970 pause 200:goto Buka_Input_Seireki2:
32980 case 1:
32990 pause 200:goto Buka_Input_Seireki2:
33000 end select
33010 endif
33020 '左へボタン 十字キー　左　or 　カーソル左
33030 if ((y2 = -1) or (key$ = chr$(29))) then
33040 select case No
33050 'Ok ボタン  Okから　左　０に行く
33060 case -1:
33070 No=0:sp_on 13,1:sp_on 14,0
33080 pause 200:goto Buka_Input_Seireki2:
33090 '0 ボタン  左　何もしない
33100 case 0:
33110 pause 200:goto Buka_Input_Seireki2:
33120 case 3:
33130 No=2:sp_on 9,1:sp_on 12,0:
33140 pause 200:goto Buka_Input_Seireki2:
33150 case 2:
33160 No=1:sp_on 6,1:sp_on 9,0:
33170 pause 200:goto Buka_Input_Seireki2:
33180 case 1:
33190 pause 200:goto Buka_Input_Seireki2:
33200 case 6:
33210 No=5:sp_on 8,1:sp_on 11,0
33220 pause 200:goto Buka_Input_Seireki2:
33230 case 5:
33240 No=4:sp_on 5,1:sp_on 8,0
33250 pause 200:goto Buka_Input_Seireki2:
33260 case 4:
33270 pause 200:goto Buka_Input_Seireki2:
33280 case 9:
33290 No=8:sp_on 7,1:sp_on 10,0
33300 pause 200:goto Buka_Input_Seireki2:
33310 case 8:
33320 No=7:sp_on 4,1:sp_on 7,0
33330 pause 200:goto Buka_Input_Seireki2:
33340 case 7:
33350 pause 200:goto Buka_Input_Seireki2:
33360 end select
33370 endif
33380 '右  十字キー　右　or カーソル　右
33390 if ((y2 = 1) or (key$ = chr$(28))) then
33400 select case No
33410 '0ボタンからokボタン右に移動
33420 case 0:
33430 No=-1:sp_on 14,1:sp_on 13,0
33440 pause 200:goto Buka_Input_Seireki2:
33450 '0ボタンからokボタン 右に移動　ここまで
33460 'OKボタンで右を押して何もしない
33470 case -1:
33480 pause 200:goto Buka_Input_Seireki2:
33490 case 1:
33500 No=2:sp_on 9,1:sp_on 6,0
33510 pause 200:goto Buka_Input_Seireki2:
33520 case 2:
33530 No=3:sp_on 12,1:sp_on 9,0
33540 pause 200:goto Buka_Input_Seireki2:
33550 case 3:
33560 pause 200:goto Buka_Input_Seireki2:
33570 case 4:
33580 No=5:sp_on 8,1:sp_on 5,0
33590 pause 200:goto Buka_Input_Seireki2:
33600 case 5:
33610 No=6:sp_on 11,1:sp_on 8,0
33620 pause 200:goto Buka_Input_Seireki2:
33630 case 7:
33640 No=8:sp_on 7,1:sp_on 4,0
33650 pause 200:goto Buka_Input_Seireki2:
33660 case 8:
33670 No=9:sp_on 10,1:sp_on 7,0
33680 pause 200:goto Buka_Input_Seireki2:
33690 case 9:
33700 pause 200:goto Buka_Input_Seireki2:
33710 case 6:
33720 pause 200:goto Buka_Input_Seireki2:
33730 end select
33740 'Okから右ボタンを押して何もしない ここまで
33750 endif
33760 '十字キー　ここまで
33770 if ((bg=2) or (key$=chr$(13))) then
33780 select case count
33790 case 0:
33800 count=1
33810 if (No=-1) then
33820 count=0
33830 'Okボタンを押したとき
33840 goto Buka_Input_Seireki2:
33850 else
33860 'Okボタン以外が押されたとき
33870 if (No>=1 and No<=2) then
33880 buf_buka_year$="":buf_buka_year$=str$(No)
33890 buf_buka_year=No
33900 buf_Buka_Born_Day(0)=buf_buka_year
33910 locate 2,3
33920 color rgb(255,255,255)
33930 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
33940 goto Buka_Input_Seireki2:
33950 else
33960 count=0
33970 ui_msg"数字が範囲外になります。"
33980 buf_buka_year$="":buf_buka_year=0
33990 goto Buka_Input_Seireki2:
34000 endif
34010 endif
34020 case 1:
34030 count = 2
34040 if (No = -1) then
34050 count = 1
34060 goto Buka_Input_Seireki2:
34070 else
34080 b = val(buf_buka_year$)
34090 buf_buka_year = b * 10 + No
34100 buf_buka_year$ = str$(buf_buka_year)
34110 buf_Buka_Born_Day(0)=buf_buka_year
34120 locate 2,3
34130 color rgb(255,255,255)
34140 print "                                                                "
34150 locate 2,3
34160 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34170 'if (No = -1) then
34180 'count=1
34190 goto Buka_Input_Seireki2:
34200 endif
34210 case 2:
34220 count=3
34230 if (No=-1) then
34240 count =2
34250 goto Buka_Input_Seireki2:
34260 else
34270 b = val(buf_buka_year$)
34280 buf_buka_year = b*10 + No
34290 buf_buka_year$ = str$(buf_buka_year)
34300 locate 2,3
34310 color rgb(255,255,255)
34320 print "                                        "
34330 locate 2,3
34340 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
34350 goto Buka_Input_Seireki2:
34360 endif
34370 case 3:
34380 count=4
34390 if (No = -1) then
34400 count=3
34410 goto Buka_Input_Seireki2:
34420 else
34430 b = buf_buka_year
34440 buf_buka_year=b*10+No
34450 buf_buka_year$=str$(buf_buka_year)
34460 locate 2,3
34470 color RGB(255,255,255)
34480 print "                                      "
34490 locate 2,3
34500 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34510 buf_year=val(buf_year$)
34520 'year=val(buf_year$)
34530 'if (No=-1) then
34540 'goto Input_Born_Month:
34550 'else
34560 goto Buka_Input_Seireki2:
34570 endif
34580 case 4:
34590 'bufyear=buf_year
34600 if (No=-1) then
34610 buf_year = val(buf_year$)
34620 bufyear = buf_year
34630 sp_on 14,0
34640 goto Buka_Input_Born_Month:
34650 else
34660 goto Buka_Input_Seireki2:
34670 endif
34680 end select
34690 endif
34700 if (bg2 = 2) then
34710 select case count2
34720 case 0:
34730 if (No = -1) then
34740 buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
34750 count=0
34760 locate 2,3
34770 color rgb(255,255,255)
34780 print "                                      "
34790 locate 2,3
34800 print "部下の生まれた年代（西暦4桁):";buf_buka_year$
34810 goto Buka_Input_Seireki2:
34820 else
34830 '(buf_year=0) then
34840 buf_buka_year=0:buf_buka_year$="****"
34850 goto Buka_Input_Seireki2:
34860 'endif
34870 endif
34880 end select
34890 endif
34900 end
34910 'Input"部下の生れた年代(4桁,〜2025年):",year
34920 'if year > 2025 then goto Jyoushi_Input_Seireki:
34930 'if year = 123 then cls 3:cls 4:goto Main_Screen:
34940 '"4桁目"
34950 'bufyear4 = fix(year / 1000)
34960 '"3桁目"
34970 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
34980 '"2桁目"
34990 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
35000 '"1桁目"
35010 'bufyear1 = fix((year - ((bufyear4*
35020 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
35030 '1.部下の生まれた年代'
35040 '2.部下の生まれた月'
35050 Buka_Input_Born_Month:
35060 cls 3:play "":count=0:count2=0
35070 'No=-1:Okのとき
35080 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
35090 for i=0 to 1
35100 buf_month(i)=0
35110 next i
35120 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
35130 gload Gazo$ + "Screen1.png",0,0,0
35140 gload Gazo$ + "downscreen.png",0,0,800
35150 'Init"kb:4"
35160 '音声ファイル再生 2023.06.07
35170 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
35180 font 48
35190 locate 0,1
35200 '文字色：黒　 color rgb(0,0,0)
35210 '文字色:白
35220 color rgb(255,255,255)
35230 print "部下の生まれた月を入れて下さい" + chr$(13)
35240 '文字色:白
35250 color rgb(255,255,255)
35260 locate 2,3
35270 '文字色:白
35280 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
35290 color rgb(255,0,0)
35300 'locate 4,6:print ":7"
35310 'locate 9,6:print ":8"
35320 'locate 12,6:print ":9"
35330 locate 4,6
35340 '文字色:赤
35350 print ":7  :8  :9" + chr$(13)
35360 color rgb(255,0,0)
35370 locate 4,8
35380 print ":4  :5  :6" + chr$(13)
35390 color rgb(255,0,0)
35400 locate 4,10
35410 print ":1  :2  :3" + chr$(13)
35420 locate 4,12
35430 print "    :0"
35440 locate 12,12
35450 color rgb(0,0,255)
35460 print ":Ok"
35470 sp_on 4,0: sp_on 5,0:sp_on 6,0
35480 sp_on 7,0:sp_on 8,0:sp_on 9,0
35490 sp_on 10,0:sp_on 11,0:sp_on 12,0
35500 sp_on 13,0:sp_on 14,1
35510 Buka_Input_Born_Month2:
35520 key$="":bg=0:y=0:y2=0:bg2=0
35530 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
35540 key$ = inkey$
35550 bg = strig(1)
35560 y = stick(1)
35570 y2 = stick(0)
35580 bg2 = strig(0)
35590 pause 5
35600 wend
35610 '十字キー　ここから
35620 '上の矢印　または、十字キー上
35630 if ((y = -1) or (key$ = chr$(30))) then
35640 select case No
35650 'No=-1:okのとき:初期の状態
35660 '0kボタンから３に移動
35670 '上に行く 処理
35680 case -1:
35690 No=3:sp_on 12,1:sp_on 14,0
35700 pause 200:goto Buka_Input_Born_Month2:
35710 '選択肢:3
35720 '3ボタンから 6に移動
35730 case 3:
35740 No=6:sp_on 12,0:sp_on 11,1
35750 pause 200:goto Buka_Input_Born_Month2:
35760 '6ボタンから ９に移動
35770 case 6:
35780 No=9:sp_on 10,1:sp_on 11,0
35790 pause 200:goto Buka_Input_Born_Month2:
35800 '6ボタンから ９に移動　ここまで
35810 '9で上を押して何もしない
35820 case 9:
35830 '何もしない
35840 No=9
35850 pause 200:goto Buka_Input_Born_Month2:
35860 '9で上を押しても何もしない　ここまで
35870 '上　 0ボタンから2ボタン
35880 'sp_on 6,1:1
35890 'sp_on 8,1:5
35900 'sp_on 7,1:7
35910 case 0:
35920 No=2:sp_on 13,0:sp_on 9,1:
35930 pause 200:goto Buka_Input_Born_Month2:
35940 '上  0ボタンから2ボタン　ここまで
35950 '2から５になる 上
35960 case 2:
35970 No=5:sp_on 8,1:sp_on 9,0:
35980 pause 200:goto Buka_Input_Born_Month2:
35990 case 5:
36000 No=8:sp_on 7,1:sp_on 8,0
36010 pause 200:goto Buka_Input_Born_Month2:
36020 case 8:
36030 pause 200:goto Buka_Input_Born_Month2:
36040 case 1:
36050 No=4:sp_on 5,1:sp_on 6,0
36060 pause 200:goto Buka_Input_Born_Month2:
36070 case 4:
36080 No=7:sp_on 4,1:sp_on 5,0
36090 pause 200:goto Buka_Input_Born_Month2:
36100 case 7:
36110 pause 200:goto Buka_Input_Born_Month2:
36120 end select
36130 endif
36140 '左３　ここまで
36150 '下の矢印
36160 '中央 2
36170 if ((y=1) or (key$ = chr$(31))) then
36180 select case No
36190 '9から６に下げる
36200 case 9:
36210 No=6:sp_on 11,1:sp_on 10,0
36220 pause 200:goto Buka_Input_Born_Month2:
36230 '6から３に下げる
36240 case 6:
36250 No=3:sp_on 12,1:sp_on 11,0
36260 pause 200:goto Buka_Input_Born_Month2:
36270 '3から０ｋに変える
36280 case 3:
36290 No=-1:sp_on 14,1:sp_on 12,0
36300 pause 200:goto Buka_Input_Born_Month2:
36310 'Okから下のボタンを押しても何もしない
36320 case -1:
36330 pause 200:goto Buka_Input_Born_Month2:
36340 case 8:
36350 No=5:sp_on 8,1:sp_on 7,0
36360 pause 200:goto Buka_Input_Born_Month2:
36370 case 5:
36380 No=2:sp_on 9,1:sp_on 8,0
36390 pause 200:goto Buka_Input_Born_Month2:
36400 case 2:
36410 No=0:sp_on 13,1:sp_on 9,0
36420 pause 200:goto Buka_Input_Born_Month2:
36430 case 0:
36440 pause 200:goto Buka_Input_Born_Month2:
36450 case 7:
36460 No=4:sp_on 5,1:sp_on 4,0
36470 pause 200:goto Buka_Input_Born_Month2:
36480 case 4:
36490 No=1:sp_on 6,1:sp_on 5,0
36500 pause 200:goto Buka_Input_Born_Month2:
36510 case 1:
36520 pause 200:goto Buka_Input_Born_Month2:
36530 end select
36540 endif
36550 '左へボタン 十字キー　左　or 　カーソル左
36560 if ((y2 = -1) or (key$ = chr$(29))) then
36570 select case No
36580 'Ok ボタン  Okから　左　０に行く
36590 case -1:
36600 No=0:sp_on 13,1:sp_on 14,0
36610 pause 200:goto Buka_Input_Born_Month2:
36620 '0 ボタン  左　何もしない
36630 case 0:
36640 pause 200:goto Buka_Input_Born_Month2:
36650 case 3:
36660 No=2:sp_on 9,1:sp_on 12,0:
36670 pause 200:goto Buka_Input_Born_Month2:
36680 case 2:
36690 No=1:sp_on 6,1:sp_on 9,0:
36700 pause 200:goto Buka_Input_Born_Month2:
36710 case 1:
36720 pause 200:goto Buka_Input_Born_Month2:
36730 case 6:
36740 No=5:sp_on 8,1:sp_on 11,0
36750 pause 200:goto Buka_Input_Born_Month2:
36760 case 5:
36770 No=4:sp_on 5,1:sp_on 8,0
36780 pause 200:goto Buka_Input_Born_Month2:
36790 case 4:
36800 pause 200:goto Buka_Input_Born_Month2:
36810 case 9:
36820 No=8:sp_on 7,1:sp_on 10,0
36830 pause 200:goto Buka_Input_Born_Month2:
36840 case 8:
36850 No=7:sp_on 4,1:sp_on 7,0
36860 pause 200:goto Buka_Input_Born_Month2:
36870 case 7:
36880 pause 200:goto Buka_Input_Born_Month2:
36890 end select
36900 endif
36910 '右  十字キー　右　or カーソル　右
36920 if ((y2 = 1) or (key$ = chr$(28))) then
36930 select case No
36940 '0ボタンからokボタン右に移動
36950 case 0:
36960 No=-1:sp_on 14,1:sp_on 13,0
36970 pause 200:goto Buka_Input_Born_Month2:
36980 '0ボタンからokボタン 右に移動　ここまで
36990 'OKボタンで右を押して何もしない
37000 case -1:
37010 pause 200:goto Buka_Input_Born_Month2:
37020 case 1:
37030 No=2:sp_on 9,1:sp_on 6,0
37040 pause 200:goto Buka_Input_Born_Month2:
37050 case 2:
37060 No=3:sp_on 12,1:sp_on 9,0
37070 pause 200:goto Buka_Input_Born_Month2:
37080 case 3:
37090 pause 200:goto Buka_Input_Born_Month2:
37100 case 4:
37110 No=5:sp_on 8,1:sp_on 5,0
37120 pause 200:goto Buka_Input_Born_Month2:
37130 case 5:
37140 No=6:sp_on 11,1:sp_on 8,0
37150 pause 200:goto Buka_Input_Born_Month2:
37160 case 7:
37170 No=8:sp_on 7,1:sp_on 4,0
37180 pause 200:goto Buka_Input_Born_Month2:
37190 case 8:
37200 No=9:sp_on 10,1:sp_on 7,0
37210 pause 200:goto Buka_Input_Born_Month2:
37220 case 9:
37230 pause 200:goto Buka_Input_Born_Month2:
37240 case 6:
37250 pause 200:goto Buka_Input_Born_Month2:
37260 end select
37270 'Okから右ボタンを押して何もしない ここまで
37280 endif
37290 '十字キー　ここまで
37300 '右の丸ボタン　決定キー
37310 if ((bg=2) or (key$=chr$(13))) then
37320 select case count
37330 case 0:
37340 count=1:buf_buka_Month$="**":buf_buka_Month$=str$(No):buf_buka_month=No
37350 buf_Buka_Born_Day(1)=buf_buka_month
37360 locate 2,3
37370 color RGB(255,255,255)
37380 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
37390 goto Buka_Input_Born_Month2:
37400 case 1:
37410 count = 2:c = No
37420 c = val(buf_buka_Month$)
37430 if (No = -1) then
37440 'count=0
37450 month=buf_buka_month
37460 buf_buka_month=val(buf_buka_Month$)
37470 month=buf_buka_month
37480 '生まれた日に飛ぶ
37490 goto Buka_Input_Born_Day:
37500 else
37510 buf_buka_month = c*10 + No
37520 buf_buka_Month$= str$(buf_buka_month)
37530 buf_Buka_Born_Day(1)=buf_buka_month
37540 locate 2,3
37550 color Rgb(255,255,255)
37560 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
37570 goto Buka_Input_Born_Month2:
37580 endif
37590 case 2:
37600 count=3
37610 'c= val(buf_Month$)
37620 'buf_month = c*10 + No
37630 'buf_Month$ = str$(buf_month)
37640 'locate 2,3
37650 'print "部下の生まれた月(1月～12月):";buf_Month$
37660 'goto Buka_Input_Born_Month2:
37670 'case 3:
37680 'count=4
37690 'b=val(buf_month$)
37700 'buf_month=c*10+No
37710 'buf_Month$=str$(buf_month)
37720 'locate 2,3
37730 'print "部下の生まれた月(1月～12月):";buf_Month$
37740 'buf_month=val(buf_Month$)
37750 'year=val(buf_year$)
37760 if (No=-1) then
37770 goto Buka_Input_Born_Day:
37780 else
37790 'goto Input_Born_Month2:
37800 endif
37810 'case 4:
37820 'bufyear=buf_year
37830 'if (No=-1) then
37840 'buf_month = val(buf_Month$)
37850 'month = buf_month
37860 'sp_on 14,0
37870 'goto Input_Born_Day:
37880 'else
37890 'goto Input_Born_Month2:
37900 'endif
37910 end select
37920 endif
37930 '左の丸ボタン　キャンセル
37940 if (bg2=2) then
37950 select case count2
37960 case 0:
37970 if (No = -1) then
37980 buf_buka_month=0:buf_buka_Month$="**"
37990 count=0
38000 goto rewrite2:
38010 else
38020 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
38030 buf_month=0:buf_Month$="**"
38040 locate 2,3
38050 color rgb(255,255,255)
38060 print "                                       "
38070 goto rewrite2:
38080 if (No>12) then
38090 ui_msg"値が範囲外です。"
38100 goto rewrite2:
38110 endif
38120 endif
38130 endif
38140 rewrite2:
38150 locate 2,3
38160 color rgb(255,255,255)
38170 print "                                      "
38180 locate 2,3
38190 print "部下の生まれた月(1月~12月):";buf_buka_Month$
38200 goto Buka_Input_Born_Month2:
38210 end select
38220 'endif
38230 endif
38240 end
38250 '2.部下の生まれた月'
38260 '3.部下の生まれた日'
38270 '生れた日を入力
38280 Buka_Input_Born_Day:
38290 '生まれた日入力
38300 cls 3:play ""
38310 'No=-1:Okのとき
38320 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
38330 for i=0 to 1
38340 buf_day(i)=0
38350 next i
38360 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
38370 gload Gazo$ + "Screen1.png",0,0,0
38380 gload Gazo$ + "downscreen.png",0,0,800
38390 'Init"kb:2"
38400 '音声ファイル再生 2023.06.07
38410 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
38420 font 48
38430 locate 0,1
38440 '文字色：黒　 color rgb(0,0,0)
38450 color rgb(255,255,255)
38460 print "部下の生まれた日を入れて下さい" + chr$(13)
38470 color rgb(255,255,255)
38480 locate 2,3
38490 print "部下の生まれた日(1日~31日):";buf_Day$
38500 color rgb(255,0,0)
38510 'locate 4,6:print ":7"
38520 'locate 9,6:print ":8"
38530 'locate 12,6:print ":9"
38540 locate 4,6
38550 print ":7  :8  :9" + chr$(13)
38560 color rgb(255,0,0)
38570 locate 4,8
38580 print ":4  :5  :6" + chr$(13)
38590 color rgb(255,0,0)
38600 locate 4,10
38610 print ":1  :2  :3" + chr$(13)
38620 locate 4,12
38630 print "    :0"
38640 locate 12,12
38650 color rgb(0,0,255)
38660 print ":Ok"
38670 sp_on 4,0: sp_on 5,0:sp_on 6,0
38680 sp_on 7,0:sp_on 8,0:sp_on 9,0
38690 sp_on 10,0:sp_on 11,0:sp_on 12,0
38700 sp_on 13,0:sp_on 14,1
38710 Buka_Input_Born_Day2:
38720 key$="":bg=0:y=0:y2=0:bg2=0
38730 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38740 key$ = inkey$
38750 bg = strig(1)
38760 y = stick(1)
38770 y2 = stick(0)
38780 bg2 = strig(0)
38790 pause 5
38800 wend
38810 '十字キー　ここから
38820 '上の矢印　または、十字キー上
38830 if ((y = -1) or (key$ = chr$(30))) then
38840 select case No
38850 'No=-1:okのとき:初期の状態
38860 '0kボタンから３に移動
38870 '上に行く 処理
38880 case -1:
38890 No=3:sp_on 12,1:sp_on 14,0
38900 pause 200:goto Buka_Input_Born_Day2:
38910 '選択肢:3
38920 '3ボタンから 6に移動
38930 case 3:
38940 No=6:sp_on 12,0:sp_on 11,1
38950 pause 200:goto Buka_Input_Born_Day2:
38960 '6ボタンから ９に移動
38970 case 6:
38980 No=9:sp_on 10,1:sp_on 11,0
38990 pause 200:goto Buka_Input_Born_Day2:
39000 '6ボタンから ９に移動　ここまで
39010 '9で上を押して何もしない
39020 case 9:
39030 '何もしない
39040 No=9
39050 pause 200:goto Buka_Input_Born_Day2:
39060 '9で上を押しても何もしない　ここまで
39070 '上　 0ボタンから2ボタン
39080 'sp_on 6,1:1
39090 'sp_on 8,1:5
39100 'sp_on 7,1:7
39110 case 0:
39120 No=2:sp_on 13,0:sp_on 9,1:
39130 pause 200:goto Buka_Input_Born_Day2:
39140 '上  0ボタンから2ボタン　ここまで
39150 '2から５になる 上
39160 case 2:
39170 No=5:sp_on 8,1:sp_on 9,0:
39180 pause 200:goto Buka_Input_Born_Day2:
39190 case 5:
39200 No=8:sp_on 7,1:sp_on 8,0
39210 pause 200:goto Buka_Input_Born_Day2:
39220 case 8:
39230 pause 200:goto Buka_Input_Born_Day2:
39240 case 1:
39250 No=4:sp_on 5,1:sp_on 6,0
39260 pause 200:goto Buka_Input_Born_Day2:
39270 case 4:
39280 No=7:sp_on 4,1:sp_on 5,0
39290 pause 200:goto Buka_Input_Born_Day2:
39300 case 7:
39310 pause 200:goto Buka_Input_Born_Day2:
39320 end select
39330 endif
39340 '左３　ここまで
39350 '下の矢印
39360 '中央 2
39370 if ((y=1) or (key$ = chr$(31))) then
39380 select case No
39390 '9から６に下げる
39400 case 9:
39410 No=6:sp_on 11,1:sp_on 10,0
39420 pause 200:goto Buka_Input_Born_Day2:
39430 '6から３に下げる
39440 case 6:
39450 No=3:sp_on 12,1:sp_on 11,0
39460 pause 200:goto Buka_Input_Born_Day2:
39470 '3から０ｋに変える
39480 case 3:
39490 No=-1:sp_on 14,1:sp_on 12,0
39500 pause 200:goto Buka_Input_Born_Day2:
39510 'Okから下のボタンを押しても何もしない
39520 case -1:
39530 pause 200:goto Buka_Input_Born_Day2:
39540 case 8:
39550 No=5:sp_on 8,1:sp_on 7,0
39560 pause 200:goto Buka_Input_Born_Day2:
39570 case 5:
39580 No=2:sp_on 9,1:sp_on 8,0
39590 pause 200:goto Buka_Input_Born_Day2:
39600 case 2:
39610 No=0:sp_on 13,1:sp_on 9,0
39620 pause 200:goto Buka_Input_Born_Day2:
39630 case 0:
39640 pause 200:goto Buka_Input_Born_Day2:
39650 case 7:
39660 No=4:sp_on 5,1:sp_on 4,0
39670 pause 200:goto Buka_Input_Born_Day2:
39680 case 4:
39690 No=1:sp_on 6,1:sp_on 5,0
39700 pause 200:goto Buka_Input_Born_Day2:
39710 case 1:
39720 pause 200:goto Buka_Input_Born_Day2:
39730 end select
39740 endif
39750 '左へボタン 十字キー　左　or 　カーソル左
39760 if ((y2 = -1) or (key$ = chr$(29))) then
39770 select case No
39780 'Ok ボタン  Okから　左　０に行く
39790 case -1:
39800 No=0:sp_on 13,1:sp_on 14,0
39810 pause 200:goto Buka_Input_Born_Day2:
39820 '0 ボタン  左　何もしない
39830 case 0:
39840 pause 200:goto Buka_Input_Born_Day2:
39850 case 3:
39860 No=2:sp_on 9,1:sp_on 12,0:
39870 pause 200:goto Buka_Input_Born_Day2:
39880 case 2:
39890 No=1:sp_on 6,1:sp_on 9,0:
39900 pause 200:goto Buka_Input_Born_Day2:
39910 case 1:
39920 pause 200:goto Buka_Input_Born_Day2:
39930 case 6:
39940 No=5:sp_on 8,1:sp_on 11,0
39950 pause 200:goto Buka_Input_Born_Day2:
39960 case 5:
39970 No=4:sp_on 5,1:sp_on 8,0
39980 pause 200:goto Buka_Input_Born_Day2:
39990 case 4:
40000 pause 200:goto Buka_Input_Born_Day2:
40010 case 9:
40020 No=8:sp_on 7,1:sp_on 10,0
40030 pause 200:goto Buka_Input_Born_Day2:
40040 case 8:
40050 No=7:sp_on 4,1:sp_on 7,0
40060 pause 200:goto Buka_Input_Born_Day2:
40070 case 7:
40080 pause 200:goto Buka_Input_Born_Day2:
40090 end select
40100 endif
40110 '右  十字キー　右　or カーソル　右
40120 if ((y2 = 1) or (key$ = chr$(28))) then
40130 select case No
40140 '0ボタンからokボタン右に移動
40150 case 0:
40160 No=-1:sp_on 14,1:sp_on 13,0
40170 pause 200:goto Buka_Input_Born_Day2:
40180 '0ボタンからokボタン 右に移動　ここまで
40190 'OKボタンで右を押して何もしない
40200 case -1:
40210 pause 200:goto Buka_Input_Born_Day2:
40220 case 1:
40230 No=2:sp_on 9,1:sp_on 6,0
40240 pause 200:goto Buka_Input_Born_Day2:
40250 case 2:
40260 No=3:sp_on 12,1:sp_on 9,0
40270 pause 200:goto Buka_Input_Born_Day2:
40280 case 3:
40290 pause 200:goto Buka_Input_Born_Day2:
40300 case 4:
40310 No=5:sp_on 8,1:sp_on 5,0
40320 pause 200:goto Buka_Input_Born_Day2:
40330 case 5:
40340 No=6:sp_on 11,1:sp_on 8,0
40350 pause 200:goto Buka_Input_Born_Day2:
40360 case 7:
40370 No=8:sp_on 7,1:sp_on 4,0
40380 pause 200:goto Buka_Input_Born_Day2:
40390 case 8:
40400 No=9:sp_on 10,1:sp_on 7,0
40410 pause 200:goto Buka_Input_Born_Day2:
40420 case 9:
40430 pause 200:goto Buka_Input_Born_Day2:
40440 case 6:
40450 pause 200:goto Buka_Input_Born_Day2:
40460 end select
40470 'Okから右ボタンを押して何もしない ここまで
40480 endif
40490 '十字キー　ここまで
40500 '右の丸ボタンを押したとき
40510 if ((bg = 2) or (key$ = chr$(13))) then
40520 'count :決定ボタンを押した回数
40530 select case (count)
40540 '1桁目入力
40550 case 0:
40560 count = 1:
40570 if (No = -1) then
40580 '1桁目　OKでは何もしない
40590 'goto check:
40600 else
40610 'ok以外のボタンを押したとき
40620 buf_buka_day = No:buf_buka_Day$=str$(No)
40630 c=No
40640 buf_Buka_Born_Day(2)=buf_buka_day
40650 locate 2,3
40660 color RGB(255,255,255)
40670 print "部下の生まれた日(1日~31日):";buf_buka_Day$
40680 endif
40690 check2:
40700 if (No >= 1 and No <= 9) then
40710 sp_on 14,0
40720 goto Buka_Input_Born_Day2:
40730 else
40740 sp_on 14,0
40750 goto Result_Business_Aisyou:
40760 end
40770 endif
40780 case 1:
40790 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
40800 count = 2:
40810 'locate 2,3
40820 'color RGB(255,255,255)
40830 'print "生まれた日(1日~31日):";buf_Day$
40840 'Okボタンを押したときの処理
40850 '入力値　10未満のとき
40860 'c = buf_day
40870 if (No = -1) then
40880 'c=buf_day
40890 ' buf_day = c
40900 'buf_Day$ = str$(buf_day)
40910 '10以下のとき
40920 if (buf_day < 10) then
40930 sp_on 14,0
40940 goto Result_Business_Aisyou:
40950 end
40960 endif
40970 else
40980 sp_on 14,0
40990 'c=No
41000 buf_buka_day = c * 10 + No
41010 buf_buka_Day$ =str$(buf_buka_day)
41020 buf_Buka_Born_Day(2)=buf_buka_day
41030 locate 2,3
41040 color Rgb(255,255,255)
41050 print "生まれた日(1日~31日):"+buf_buka_Day$
41060 goto Buka_Input_Born_Day2:
41070 endif
41080 '生まれた日　2桁目の数字　or 1桁の数字 + ok
41090 case 2:
41100 count=0
41110 'c=val(buf_Day$)
41120 'buf_day=c*10+No
41130 'buf_Day$=str$(buf_day)
41140 'day=buf_day
41150 'locate 2,3
41160 'print "生まれた日(1日〜31日):";buf_Day$
41170 'No=-1:ok ボタンを押したとき
41180 if (No = -1) then
41190 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
41200 sp_on 14,0
41210 goto Result_Business_Aisyou:
41220 else
41230 goto Buka_Input_Born_Day2:
41240 endif
41250 'Okボタン以外を押したとき
41260 else
41270 c=val(buf_buka_Day$)
41280 buf_buka_day = c * 10 + No
41290 buf_buka_Day$ = str$(buf_buka_day)
41300 locate 2,3
41310 print "生まれた日(1日~31日):"+buf_buka_Day$
41320 goto Buka_Input_Born_Day2:
41330 endif
41340 case 3:
41350 count=4
41360 'c=val(buf_day$)
41370 'buf_day=c*10+No
41380 'buf_day$=str$(buf_day)
41390 'locate 2,3
41400 'print "生まれた日を入れてください:";buf_day$
41410 'year=val(buf_year$)
41420 if (No = -1) then
41430 'goto Buka_Input_Born_Day:
41440 sp_on 14,0:
41450 goto complate_jyoushi:
41460 else
41470 goto Buka_Input_Born_Month2:
41480 endif
41490 'case 4:
41500 'bufyear=buf_year
41510 'if (No=-1) then
41520 'buf_day = val(buf_day$)
41530 'bufday = buf_day
41540 'sp_on 14,0
41550 goto complate_jyoushi:
41560 'else
41570 'goto Buka_Input_Born_Day2:
41580 'endif
41590 end select
41600 endif
41610 if (bg2=2) then
41620 select case count2
41630 case 0:
41640 if (No=-1) then
41650 'buf_day=0:buf_Day$="**"
41660 if (buf_buka_day>=1 and buf_buka_day<=31) then
41670 count=0
41680 buf_buka_day=0:buf_buka_Day$="**"
41690 goto rewrite_day3:
41700 else
41710 buf_buka_day=0:buf_buka_Day$="**"
41720 ui_msg"値が範囲外です"
41730 endif
41740 goto rewrite_day3:
41750 else
41760 goto rewrite_day3:
41770 endif
41780 rewrite_day3:
41790 locate 2,3
41800 color rgb(255,255,255)
41810 print "                                      "
41820 locate 2,3
41830 print "生まれた日(1日~31日):"+buf_buka_Day$
41840 goto Buka_Input_Born_Day2:
41850 end select
41860 endif
41870 '3.部下の生まれた日'
41880 '部下'
41890 '--------------------------------------------'
41900 'ビジネの相性　結果表示
41910 Result_Business_Aisyou:
41920 cls 3:init "kb:4"
41930 a=0:b=0:c=0:d=0:e=0:f=0
41940 bg=0:key$=""
41950 gload Gazo$+"Screen1.png",0,0,0
41960 sp_on 14,0
41970 d = buf_Buka_Born_Day(0):e=buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
41980 buf_Buka = Kabara_Num(e,f,g)
41990 a_2=buf_Buka
42000 Result_Aisyou$=Kabara_Aisyou$(a_1,a_2)
42010 locate 2,1
42020 color rgb(255,0,0)
42030 print "●.相性診断結果１"
42040 locate 2,4:
42050 color rgb(255,255,255)
42060 print "1.上司の名前:";buffer_name$(0)
42070 locate 2,6
42080 print "2.上司の数秘:";buf_Jyoushi
42090 locate 2,8
42100 print "3.部下の名前:";buffer_name$(1)
42110 locate 2,10
42120 print "4.部下の数秘:";buf_Buka
42130 locate 2,12
42140 print "5.上司と部下の相性:";Result_Aisyou$
42150 locate 1,15
42160 color rgb(0,0,0)
42170 print "右の丸ボタン:メイン画面"
42180 while ((bg <> 2) and (key$ <> chr$(13)))
42190 bg = strig(1)
42200 key$ = inkey$
42210 pause 5
42220 wend
42230 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
42240 '自作関数 ここから
42250 'カバラ数（数秘番号を求める）
42260 func Kabara_Num(buffer_Year,month,day)
42270 'if ((a > 1900) and (a < 3000)) then
42280 'a1:4桁のうちの1桁目を求める
42290 '例 a1:1234の4が1桁目
42300 'a2:4桁のうちの2桁目を求める
42310 '例:a2:1234の3が2桁目
42320 'a3:4桁のうちの3桁目を求める
42330 '例 a3:1234の2が3桁目
42340 'a4:4桁のうちの4桁目を求める
42350 '例 a4:1234の1が4桁目
42360 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
42370 Year = buffer_Year
42380 a4 = fix(Year / 1000)
42390 a3 = fix(Year / 100) - (a4 * 10)
42400 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
42410 a1 = fix(Year - (a4 * 1000 + a3 * 100+ a2 * 10))
42420 a_ = a1 + a2 + a3 + a4 +month+day
42430 'a1=0:a2=0:a3=0:a4=0
42440 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
42450 buffer = a_
42460 'else
42470 goto recomp2:
42480 'if (a_ = 10) then
42490 '  buffer = 1
42500 endif
42510 recomp2:
42520 a1=0:a2=0
42530 a1 = fix(a_/10)
42540 a2 = fix(a_-a1*10)
42550 a_ = a1 + a2
42560 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
42570 goto Res2:
42580 '  if ((a_>11) and (a_<99)) then
42590 else
42600 goto recomp2:
42610 endif
42620 '     a1 = fix(a_ / 10)
42630 '     a2 = a_ - (a1 * 10)
42640 '     a_ = a1 + a2
42650 '     buffer = a_
42660 'endif
42670 'else
42680 '    bffer = a_
42690 'endif
42700 'endif
42710 'else
42720 'talk "プログラムを終了します。"
42730 'end
42740 'endif
42750 'kabara = 10
42760 Res2:
42770 kabara = a_
42780 endfunc kabara
42790 func Kabara_Aisyou$(buff1,buff2)
42800 a=0:b=0
42810 if ((buff1 > 0 and buff1 < 10)) then
42820 a = buff1
42830 else
42840 Select case buff1
42850 case 11:
42860 buff1=9:a=buff1
42870 case 22:
42880 buff1=10:a=buff1
42890 end select
42900 endif
42910 if ((buff2 > 0 and buff2 < 10)) then
42920 b = buff2
42930 else
42940 select case buff2
42950 case 11:
42960 buff2=9:b=buff2
42970 case 12:
42980 buff2=10:b=buff2
42990 end select
43000 endif
43010 Aisyou$ = Buffer_Business_Aisyou$(a,b)
43020 endfunc Aisyou$
43030 '=============================
43040 '自作関数 ここまで
43050 '1.数秘術　トップ画面
43060 '
43070 'Data_eraseを一番最後に持ってくる
43080 '=============================
43090 Data_erase:
43100 'メモリー削除
43110 erase buf_name1$
43120 erase buf_name2$
43130 erase buffer
43140 erase buf_chart$
43150 erase Buffer_Business_Aisyou$
43160 erase buffer_name$
43170 '上司の誕生日
43180 erase buf_Jyoushi_Born_Day
43190 '部下の誕生日
43200 erase buf_Buka_Born_Day
43210 erase buf_year
43220 return
