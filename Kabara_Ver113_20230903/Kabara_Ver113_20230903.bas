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
310 '2023.08.27:Ver112_20230827
320 '2023.09.03:Ver113_20230903
330 Version$ = "Ver:1.1.3_20230903"
340 'Gazo file Folder
350 Gazo$ = "./data/Picture/"
360 'Voice files 2023
370 Voice$ = "./data/Voice/Voice/"
380 'BirtheyeChart Data:20230626
390 Birth_eye_chart$ = "./data/chart_data/"
400 'Data File
410 Data$ = "./data/data/"
420 'Business Aisyou 結果説明保存フォルダ
430 Business_Aisyou_Explain$="./data/data/Business_Aisyou/"
440 '変数定義 パート
450 b=0:c=0
460 dim buf_name1$(10),buf_name2$(10)
470 dim buffer(9),buf_chart$(26,2)
480 'ビジネスの相性　データー
490 dim Buffer_Business_Aisyou$(12,12)
500 '生れた年代
510 dim buf_year(4):buf_year$=""
520 dim buf_month(2)
530 dim buf_day(2)
540 '生れた月
550 buf_Month$ = ""
560 '生れた日
570 buf_Day$ = ""
580 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
590 dim buffer_name$(3)
600 '1-1.上司の誕生日(数値データー)
610 dim buf_Jyoushi_Born_Day(3)
620 '1-2.上司の数秘ナンバー(数値データー)
630 buf_Jyoushi_Kabara_Num = 0
640 '2-1.部下の誕生日(数値データー)
650 dim buf_Buka_Born_Day(3)
660 '2-2.部下の数秘ナンバー(数秘データー)
670 buf_Buka_Kabara_Num = 0
680 count=0
690 '部下の数秘ナンバー
700 'File 読み込み
710 '1.ビジネスの相性占い
720 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
730 for i=0 to 11
740 for j=0 to 11
750 input #1,a$
760 Buffer_Business_Aisyou$(j,i) = a$
770 next j
780 next i
790 close #1
800 '2.Birth Eye chart$
810 '2.バーズアイグリッドを読み込む
820 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
830 for j=0 to 25
840 for i=0 to 1
850 input #1,a$
860 buf_chart$(j,i) = a$
870 next i
880 next j
890 close #1
900 'File 読み込み　ここまで
910 'Main画面
920 screen 1,1,1,1
930 Main_Screen:
940 cls 3:
950 No=0
960 gload Gazo$ + "Selection.png",1,5,200
970 gload Gazo$ + "Selection.png",1,5,300
980 gload Gazo$ + "Selection.png",1,5,400
990 gload Gazo$ + "Selection.png",1,5,500
1000 '4
1010 gload Gazo$ + "Selection.png",1,35,300
1020 '5
1030 gload Gazo$ + "Selection.png",1,35,400
1040 '6
1050 gload Gazo$ + "Selection.png",1,35,500
1060 '7
1070 gload Gazo$ + "Selection.png",1,70,300
1080 '8
1090 gload Gazo$ + "Selection.png",1,70,400
1100 '9
1110 gload Gazo$ + "Selection.png",1,70,500
1120 '10
1130 gload Gazo$ + "Selection.png",1,110,300
1140 '11
1150 gload Gazo$ + "Selection.png",1,110,400
1160 '12
1170 gload Gazo$ + "Selection.png",1,110,500
1180 '13:0
1190 gload Gazo$ + "Selection.png",1,150,400
1200 gload Gazo$ + "Selection.png",1,200,400
1210 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1220 gload Gazo$ + "downscreen.png",0,0,800
1230 sp_def 0,(5,300),32,32
1240 sp_def 1,(5,400),32,32
1250 sp_def 2,(5,500),32,32
1260 sp_def 3,(5,600),32,32
1270 '1
1280 sp_def 4,(35,300),32,32
1290 '2
1300 sp_def 5,(35,400),32,32
1310 '3
1320 sp_def 6,(35,500),32,32
1330 '4
1340 sp_def 7,(70,300),32,32
1350 '5
1360 sp_def 8,(70,400),32,32
1370 '6
1380 sp_def 9,(70,500),32,32
1390 '7
1400 sp_def 10,(110,300),32,32
1410 '8
1420 sp_def 11,(110,400),32,32
1430 '9
1440 sp_def 12,(110,400),32,32
1450 sp_def 13,(150,400),32,32
1460 sp_def 14,(200,400),32,32
1470 'Sprite OFF
1480 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1490 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1500 sp_put 0,(5,300),0,0
1510 sp_put 1,(5,400),1,0
1520 sp_put 2,(5,500),2,0
1530 sp_put 3,(5,600),3,0
1540 '1
1550 sp_put 4,(130,300),4,0
1560 '2
1570 sp_put 5,(130,400),5,0
1580 '3
1590 sp_put 6,(130,500),6,0
1600 '4
1610 sp_put 7,(340,300),7,0
1620 '5
1630 sp_put 8,(340,400),8,0
1640 '6
1650 sp_put 9,(340,500),9,0
1660 '7
1670 sp_put 10,(540,300),10,0
1680 '8
1690 sp_put 11,(540,400),11,0
1700 '9
1710 sp_put 12,(540,500),12,0
1720 '
1730 sp_put 13,(340,600),13,0
1740 sp_put 14,(540,600),14,0
1750 Main_Top:
1760 'Main Message 2023.06.07
1770 '再生を止める
1780 play ""
1790 init "kb:4"
1800 'font 32:
1810 font 48
1820 print chr$(13) + chr$(13) + chr$(13)
1830 color rgb(217,255,212)
1840 print "番号を選んでください" + chr$(13)
1850 '0
1860 print " :1.数秘術占い" + chr$(13)
1870 '1
1880 print " :2.設 定" + chr$(13)
1890 '2
1900 print " :3.ヘルプ" + chr$(13)
1910 '3
1920 print " :4.(プログラムを)終了する" + chr$(13)
1930 COLOR rgb(0,0,0):No=0
1940 locate 1,15
1950 print "                                       "
1960 locate 1,15:print "1.数秘術占いを選択"
1970 play Voice$ + "Voice_Main_Message_20230607.mp3"
1980 Main_Screen_Select:
1990 y = 0:key$ = "":bg = 0:bg2=0
2000 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2010 y = stick(1)
2020 '"May (2023)"
2030 key$ = inkey$
2040 bg = strig(1)
2050 bg2 = strig(0)
2060 pause 2
2070 wend
2080 '1.
2090 'ジョイパッドのソース ソート　ここから
2100 'カーソル　下 or 十字キー下
2110 if ((y = 1) or (key$ = chr$(31))) then
2120 select case No
2130 case 0:
2140 '1
2150 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2160 case 1:
2170 '2
2180 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2190 case 2:
2200 '3
2210 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2220 case 3:
2230 '0
2240 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2250 end select
2260 endif
2270 '2.
2280 'カーソル　上　or 十字キー  上
2290 if ((y = -1) or (key$ = chr$(30))) then
2300 select case No
2310 case 0:
2320 '3
2330 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2340 case 1:
2350 '0
2360 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2370 case 2:
2380 '1
2390 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2400 case 3:
2410 '2
2420 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2430 end select
2440 endif
2450 'ジョイパッド　ソース 部分　ここまで
2460 'ジョイパッド右　　or Enter key 決定
2470 if ((bg = 2) OR (key$ = chr$(13))) then
2480 select case No
2490 case 0:
2500 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2510 case 1:
2520 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2530 case 2:
2540 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2550 case 3:
2560 play "":pause 200
2570 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2580 end select
2590 endif
2600 if (bg2 = 2) then
2610 play "":pause 200
2620 play Voice$ + "Voice_Main_Message_20230607.mp3"
2630 goto Main_Screen_Select:
2640 endif
2650 'Version
2660 Version:
2670 cls 3:PLAY ""
2680 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2690 gload Gazo$ + "downscreen.png",0,0,800
2700 init"kb:4":font 32
2710 'talk"バージョン情報です"
2720 'Message :Version
2730 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2740 locate 0,5
2750 color rgb(0,0,0)
2760 print "・Title:数秘術占い";chr$(13)
2770 print "・" + Version$ + chr$(13)
2780 print "・Author:licksjp"+chr$(13)
2790 print "・E-mail:licksjp@gmail.com" + chr$(13)
2800 locate 0,18
2810 print "(C)licksjp All rights " + chr$(13)
2820 locate 13,19
2830 print "reserved since 2009"+chr$(13)
2840 locate 0,23
2850 color rgb(255,255,255)
2860 print "ジョイパッドの右を押してください"
2870 Versionn_Selection:
2880 bg = 0:key$ = "":bg2 = 0
2890 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2900 bg = strig(1)
2910 key$ = inkey$
2920 bg2 = strig(0)
2930 pause 2
2940 wend
2950 if ((bg = 2) or (key$ = chr$(13))) then
2960 pause 200:cls 4:goto Main_Screen:
2970 endif
2980 if (bg2=2) then
2990 play "":pause 200
3000 play Voice$ + "Voice_Version_Message_20230607.mp3"
3010 goto Versionn_Selection:
3020 endif
3030 '1.数秘ナンバーを求める
3040 '誕生日入力(生れた年代)
3050 Input_Seireki:
3060 cls 3:play "":count=0:count2=0
3070 'No=-1:Okのとき
3080 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3090 for i=0 to 3
3100 buf_year(i)=0
3110 next i
3120 gload Gazo$ + "Screen1.png",0,0,0
3130 gload Gazo$ + "downscreen.png",0,0,800
3140 'Init"kb:2"
3150 '音声ファイル再生 2023.06.07
3160 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3170 font 48
3180 locate 0,1
3190 '文字色：黒　 color rgb(0,0,0)
3200 color rgb(255,255,255)
3210 print "生まれた年代を入れて下さい" + chr$(13)
3220 color rgb(255,255,255)
3230 locate 2,3
3240 print "生まれた年代(西暦4桁):";buf_year$
3250 color rgb(255,0,0)
3260 'locate 4,6:print ":7"
3270 'locate 9,6:print ":8"
3280 'locate 12,6:print ":9"
3290 locate 4,6
3300 print ":7  :8  :9" + chr$(13)
3310 color rgb(255,0,0)
3320 locate 4,8
3330 print ":4  :5  :6" + chr$(13)
3340 color rgb(255,0,0)
3350 locate 4,10
3360 print ":1  :2  :3" + chr$(13)
3370 locate 4,12
3380 print "    :0"
3390 locate 12,12
3400 color rgb(0,0,255)
3410 print ":Ok"
3420 sp_on 4,0: sp_on 5,0:sp_on 6,0
3430 sp_on 7,0:sp_on 8,0:sp_on 9,0
3440 sp_on 10,0:sp_on 11,0:sp_on 12,0
3450 sp_on 13,0:sp_on 14,1
3460 Input_Seireki2:
3470 key$="":bg=0:y=0:y2=0:bg2=0:
3480 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3490 key$ = inkey$
3500 bg = strig(1)
3510 y = stick(1)
3520 y2 = stick(0)
3530 bg2=strig(0)
3540 pause 5
3550 wend
3560 '十字キー　ここから
3570 '上の矢印　または、十字キー上
3580 if ((y = -1) or (key$ = chr$(30))) then
3590 select case No
3600 'No=-1:okのとき:初期の状態
3610 '0kボタンから３に移動
3620 '上に行く 処理
3630 case -1:
3640 No=3:sp_on 12,1:sp_on 14,0
3650 pause 200:goto Input_Seireki2:
3660 '選択肢:3
3670 '3ボタンから 6に移動
3680 case 3:
3690 No=6:sp_on 12,0:sp_on 11,1
3700 pause 200:goto Input_Seireki2:
3710 '6ボタンから ９に移動
3720 case 6:
3730 No=9:sp_on 10,1:sp_on 11,0
3740 pause 200:goto Input_Seireki2:
3750 '6ボタンから ９に移動　ここまで
3760 '9で上を押して何もしない
3770 case 9:
3780 '何もしない
3790 No=9
3800 pause 200:goto Input_Seireki2:
3810 '9で上を押しても何もしない　ここまで
3820 '上　 0ボタンから2ボタン
3830 'sp_on 6,1:1
3840 'sp_on 8,1:5
3850 'sp_on 7,1:7
3860 case 0:
3870 No=2:sp_on 13,0:sp_on 9,1:
3880 pause 200:goto Input_Seireki2:
3890 '上  0ボタンから2ボタン　ここまで
3900 '2から５になる 上
3910 case 2:
3920 No=5:sp_on 8,1:sp_on 9,0:
3930 pause 200:goto Input_Seireki2:
3940 case 5:
3950 No=8:sp_on 7,1:sp_on 8,0
3960 pause 200:goto Input_Seireki2:
3970 case 8:
3980 pause 200:goto Input_Seireki2:
3990 case 1:
4000 No=4:sp_on 5,1:sp_on 6,0
4010 pause 200:goto Input_Seireki2:
4020 case 4:
4030 No=7:sp_on 4,1:sp_on 5,0
4040 pause 200:goto Input_Seireki2:
4050 case 7:
4060 pause 200:goto Input_Seireki2:
4070 end select
4080 endif
4090 '左３　ここまで
4100 '下の矢印
4110 '中央 2
4120 if ((y=1) or (key$ = chr$(31))) then
4130 select case No
4140 '9から６に下げる
4150 case 9:
4160 No=6:sp_on 11,1:sp_on 10,0
4170 pause 200:goto Input_Seireki2:
4180 '6から３に下げる
4190 case 6:
4200 No=3:sp_on 12,1:sp_on 11,0
4210 pause 200:goto Input_Seireki2:
4220 '3から０ｋに変える
4230 case 3:
4240 No=-1:sp_on 14,1:sp_on 12,0
4250 pause 200:goto Input_Seireki2:
4260 'Okから下のボタンを押しても何もしない
4270 case -1:
4280 pause 200:goto Input_Seireki2:
4290 case 8:
4300 No=5:sp_on 8,1:sp_on 7,0
4310 pause 200:goto Input_Seireki2:
4320 case 5:
4330 No=2:sp_on 9,1:sp_on 8,0
4340 pause 200:goto Input_Seireki2:
4350 case 2:
4360 No=0:sp_on 13,1:sp_on 9,0
4370 pause 200:goto Input_Seireki2:
4380 case 0:
4390 pause 200:goto Input_Seireki2:
4400 case 7:
4410 No=4:sp_on 5,1:sp_on 4,0
4420 pause 200:goto Input_Seireki2:
4430 case 4:
4440 No=1:sp_on 6,1:sp_on 5,0
4450 pause 200:goto Input_Seireki2:
4460 case 1:
4470 pause 200:goto Input_Seireki2:
4480 end select
4490 endif
4500 '左へボタン 十字キー　左　or 　カーソル左
4510 if ((y2 = -1) or (key$ = chr$(29))) then
4520 select case No
4530 'Ok ボタン  Okから　左　０に行く
4540 case -1:
4550 No=0:sp_on 13,1:sp_on 14,0
4560 pause 200:goto Input_Seireki2:
4570 '0 ボタン  左　何もしない
4580 case 0:
4590 pause 200:goto Input_Seireki2:
4600 case 3:
4610 No=2:sp_on 9,1:sp_on 12,0:
4620 pause 200:goto Input_Seireki2:
4630 case 2:
4640 No=1:sp_on 6,1:sp_on 9,0:
4650 pause 200:goto Input_Seireki2:
4660 case 1:
4670 pause 200:goto Input_Seireki2:
4680 case 6:
4690 No=5:sp_on 8,1:sp_on 11,0
4700 pause 200:goto Input_Seireki2:
4710 case 5:
4720 No=4:sp_on 5,1:sp_on 8,0
4730 pause 200:goto Input_Seireki2:
4740 case 4:
4750 pause 200:goto Input_Seireki2:
4760 case 9:
4770 No=8:sp_on 7,1:sp_on 10,0
4780 pause 200:goto Input_Seireki2:
4790 case 8:
4800 No=7:sp_on 4,1:sp_on 7,0
4810 pause 200:goto Input_Seireki2:
4820 case 7:
4830 pause 200:goto Input_Seireki2:
4840 end select
4850 endif
4860 '右  十字キー　右　or カーソル　右
4870 if ((y2 = 1) or (key$ = chr$(28))) then
4880 select case No
4890 '0ボタンからokボタン右に移動
4900 case 0:
4910 No=-1:sp_on 14,1:sp_on 13,0
4920 pause 200:goto Input_Seireki2:
4930 '0ボタンからokボタン 右に移動　ここまで
4940 'OKボタンで右を押して何もしない
4950 case -1:
4960 pause 200:goto Input_Seireki2:
4970 case 1:
4980 No=2:sp_on 9,1:sp_on 6,0
4990 pause 200:goto Input_Seireki2:
5000 case 2:
5010 No=3:sp_on 12,1:sp_on 9,0
5020 pause 200:goto Input_Seireki2:
5030 case 3:
5040 pause 200:goto Input_Seireki2:
5050 case 4:
5060 No=5:sp_on 8,1:sp_on 5,0
5070 pause 200:goto Input_Seireki2:
5080 case 5:
5090 No=6:sp_on 11,1:sp_on 8,0
5100 pause 200:goto Input_Seireki2:
5110 case 7:
5120 No=8:sp_on 7,1:sp_on 4,0
5130 pause 200:goto Input_Seireki2:
5140 case 8:
5150 No=9:sp_on 10,1:sp_on 7,0
5160 pause 200:goto Input_Seireki2:
5170 case 9:
5180 pause 200:goto Input_Seireki2:
5190 case 6:
5200 pause 200:goto Input_Seireki2:
5210 end select
5220 'Okから右ボタンを押して何もしない ここまで
5230 endif
5240 '十字キー　ここまで
5250 if ((bg=2) or (key$=chr$(13))) then
5260 select case count
5270 case 0:
5280 count=1
5290 if (No=-1) then
5300 count=0
5310 'Okボタンを押したとき
5320 goto Input_Seireki2:
5330 else
5340 'Okボタン以外が押されたとき
5350 if (No>=1 and No<=2) then
5360 buf_year$="":buf_year$=str$(No)
5370 buf_year=No
5380 locate 2,3
5390 color rgb(255,255,255)
5400 print "生まれた年代(西暦4桁):";buf_year$
5410 goto Input_Seireki2:
5420 else
5430 count=0
5440 ui_msg"数字が範囲外になります。"
5450 buf_year$="":buf_year=0
5460 goto Input_Seireki2:
5470 endif
5480 endif
5490 case 1:
5500 count = 2
5510 if (No = -1) then
5520 count = 1
5530 goto Input_Seireki2:
5540 else
5550 b = val(buf_year$)
5560 buf_year = b * 10 + No
5570 buf_year$ = str$(buf_year)
5580 locate 2,3
5590 color rgb(255,255,255)
5600 print "                                                                "
5610 locate 2,3
5620 print "生まれた年代(西暦4桁):";buf_year$
5630 'if (No = -1) then
5640 'count=1
5650 goto Input_Seireki2:
5660 endif
5670 case 2:
5680 count=3
5690 if (No=-1) then
5700 count =2
5710 goto Input_Seireki2:
5720 else
5730 b = val(buf_year$)
5740 buf_year = b*10 + No
5750 buf_year$ = str$(buf_year)
5760 locate 2,3
5770 color rgb(255,255,255)
5780 print "                                        "
5790 locate 2,3
5800 print "生まれた年代(西暦4桁):";buf_year$
5810 goto Input_Seireki2:
5820 endif
5830 case 3:
5840 count=4
5850 if (No = -1) then
5860 count=3
5870 goto Input_Seireki2:
5880 else
5890 b = val(buf_year$)
5900 buf_year=b*10+No
5910 buf_year$=str$(buf_year)
5920 locate 2,3
5930 color RGB(255,255,255)
5940 print "                                      "
5950 locate 2,3
5960 print "生まれた年代(西暦4桁):";buf_year$
5970 buf_year=val(buf_year$)
5980 'year=val(buf_year$)
5990 'if (No=-1) then
6000 'goto Input_Born_Month:
6010 'else
6020 goto Input_Seireki2:
6030 endif
6040 case 4:
6050 'bufyear=buf_year
6060 if (No=-1) then
6070 buf_year = val(buf_year$)
6080 bufyear = buf_year
6090 sp_on 14,0
6100 goto Input_Born_Month:
6110 else
6120 goto Input_Seireki2:
6130 endif
6140 end select
6150 endif
6160 if (bg2 = 2) then
6170 select case count2
6180 case 0:
6190 if (No = -1) then
6200 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
6210 count=0
6220 locate 2,3
6230 color rgb(255,255,255)
6240 print "                                      "
6250 locate 2,3
6260 print "生まれた年代（西暦4桁):";buf_year$
6270 goto Input_Seireki2:
6280 else
6290 '(buf_year=0) then
6300 buf_year=0:buf_year$="****"
6310 goto Input_Seireki2:
6320 'endif
6330 endif
6340 end select
6350 endif
6360 end
6370 'Input"生れた年代(4桁,〜2025年):",year
6380 'if year > 2025 then goto Input_Seireki:
6390 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6400 '"4桁目"
6410 'bufyear4 = fix(year / 1000)
6420 '"3桁目"
6430 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6440 '"2桁目"
6450 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6460 '"1桁目"
6470 'bufyear1 = fix((year - ((bufyear4*
6480 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6490 '生れた月を入力
6500 Input_Born_Month:
6510 cls 3:play "":count=0:count2=0
6520 'No=-1:Okのとき
6530 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6540 for i=0 to 1
6550 buf_month(i)=0
6560 next i
6570 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6580 gload Gazo$ + "Screen1.png",0,0,0
6590 gload Gazo$ + "downscreen.png",0,0,800
6600 'Init"kb:2"
6610 '音声ファイル再生 2023.06.07
6620 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
6630 font 48
6640 locate 0,1
6650 '文字色：黒　 color rgb(0,0,0)
6660 '文字色:白
6670 color rgb(255,255,255)
6680 print "生まれた月を入れて下さい" + chr$(13)
6690 '文字色:白
6700 color rgb(255,255,255)
6710 locate 2,3
6720 '文字色:白
6730 print "生まれた月(1月~12月):";buf_Month$
6740 color rgb(255,0,0)
6750 'locate 4,6:print ":7"
6760 'locate 9,6:print ":8"
6770 'locate 12,6:print ":9"
6780 locate 4,6
6790 '文字色:赤
6800 print ":7  :8  :9" + chr$(13)
6810 color rgb(255,0,0)
6820 locate 4,8
6830 print ":4  :5  :6" + chr$(13)
6840 color rgb(255,0,0)
6850 locate 4,10
6860 print ":1  :2  :3" + chr$(13)
6870 locate 4,12
6880 print "    :0"
6890 locate 12,12
6900 color rgb(0,0,255)
6910 print ":Ok"
6920 sp_on 4,0: sp_on 5,0:sp_on 6,0
6930 sp_on 7,0:sp_on 8,0:sp_on 9,0
6940 sp_on 10,0:sp_on 11,0:sp_on 12,0
6950 sp_on 13,0:sp_on 14,1
6960 Input_Born_Month2:
6970 key$="":bg=0:y=0:y2=0:bg2=0
6980 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
6990 key$ = inkey$
7000 bg = strig(1)
7010 y = stick(1)
7020 y2 = stick(0)
7030 bg2 = strig(0)
7040 pause 5
7050 wend
7060 '十字キー　ここから
7070 '上の矢印　または、十字キー上
7080 if ((y = -1) or (key$ = chr$(30))) then
7090 select case No
7100 'No=-1:okのとき:初期の状態
7110 '0kボタンから３に移動
7120 '上に行く 処理
7130 case -1:
7140 No=3:sp_on 12,1:sp_on 14,0
7150 pause 200:goto Input_Born_Month2:
7160 '選択肢:3
7170 '3ボタンから 6に移動
7180 case 3:
7190 No=6:sp_on 12,0:sp_on 11,1
7200 pause 200:goto Input_Born_Month2:
7210 '6ボタンから ９に移動
7220 case 6:
7230 No=9:sp_on 10,1:sp_on 11,0
7240 pause 200:goto Input_Born_Month2:
7250 '6ボタンから ９に移動　ここまで
7260 '9で上を押して何もしない
7270 case 9:
7280 '何もしない
7290 No=9
7300 pause 200:goto Input_Born_Month2:
7310 '9で上を押しても何もしない　ここまで
7320 '上　 0ボタンから2ボタン
7330 'sp_on 6,1:1
7340 'sp_on 8,1:5
7350 'sp_on 7,1:7
7360 case 0:
7370 No=2:sp_on 13,0:sp_on 9,1:
7380 pause 200:goto Input_Born_Month2:
7390 '上  0ボタンから2ボタン　ここまで
7400 '2から５になる 上
7410 case 2:
7420 No=5:sp_on 8,1:sp_on 9,0:
7430 pause 200:goto Input_Born_Month2:
7440 case 5:
7450 No=8:sp_on 7,1:sp_on 8,0
7460 pause 200:goto Input_Born_Month2:
7470 case 8:
7480 pause 200:goto Input_Born_Month2:
7490 case 1:
7500 No=4:sp_on 5,1:sp_on 6,0
7510 pause 200:goto Input_Born_Month2:
7520 case 4:
7530 No=7:sp_on 4,1:sp_on 5,0
7540 pause 200:goto Input_Born_Month2:
7550 case 7:
7560 pause 200:goto Input_Born_Month2:
7570 end select
7580 endif
7590 '左３　ここまで
7600 '下の矢印
7610 '中央 2
7620 if ((y=1) or (key$ = chr$(31))) then
7630 select case No
7640 '9から６に下げる
7650 case 9:
7660 No=6:sp_on 11,1:sp_on 10,0
7670 pause 200:goto Input_Born_Month2:
7680 '6から３に下げる
7690 case 6:
7700 No=3:sp_on 12,1:sp_on 11,0
7710 pause 200:goto Input_Born_Month2:
7720 '3から０ｋに変える
7730 case 3:
7740 No=-1:sp_on 14,1:sp_on 12,0
7750 pause 200:goto Input_Born_Month2:
7760 'Okから下のボタンを押しても何もしない
7770 case -1:
7780 pause 200:goto Input_Born_Month2:
7790 case 8:
7800 No=5:sp_on 8,1:sp_on 7,0
7810 pause 200:goto Input_Born_Month2:
7820 case 5:
7830 No=2:sp_on 9,1:sp_on 8,0
7840 pause 200:goto Input_Born_Month2:
7850 case 2:
7860 No=0:sp_on 13,1:sp_on 9,0
7870 pause 200:goto Input_Born_Month2:
7880 case 0:
7890 pause 200:goto Input_Born_Month2:
7900 case 7:
7910 No=4:sp_on 5,1:sp_on 4,0
7920 pause 200:goto Input_Born_Month2:
7930 case 4:
7940 No=1:sp_on 6,1:sp_on 5,0
7950 pause 200:goto Input_Born_Month2:
7960 case 1:
7970 pause 200:goto Input_Born_Month2:
7980 end select
7990 endif
8000 '左へボタン 十字キー　左　or 　カーソル左
8010 if ((y2 = -1) or (key$ = chr$(29))) then
8020 select case No
8030 'Ok ボタン  Okから　左　０に行く
8040 case -1:
8050 No=0:sp_on 13,1:sp_on 14,0
8060 pause 200:goto Input_Born_Month2:
8070 '0 ボタン  左　何もしない
8080 case 0:
8090 pause 200:goto Input_Born_Month2:
8100 case 3:
8110 No=2:sp_on 9,1:sp_on 12,0:
8120 pause 200:goto Input_Born_Month2:
8130 case 2:
8140 No=1:sp_on 6,1:sp_on 9,0:
8150 pause 200:goto Input_Born_Month2:
8160 case 1:
8170 pause 200:goto Input_Born_Month2:
8180 case 6:
8190 No=5:sp_on 8,1:sp_on 11,0
8200 pause 200:goto Input_Born_Month2:
8210 case 5:
8220 No=4:sp_on 5,1:sp_on 8,0
8230 pause 200:goto Input_Born_Month2:
8240 case 4:
8250 pause 200:goto Input_Born_Month2:
8260 case 9:
8270 No=8:sp_on 7,1:sp_on 10,0
8280 pause 200:goto Input_Born_Month2:
8290 case 8:
8300 No=7:sp_on 4,1:sp_on 7,0
8310 pause 200:goto Input_Born_Month2:
8320 case 7:
8330 pause 200:goto Input_Born_Month2:
8340 end select
8350 endif
8360 '右  十字キー　右　or カーソル　右
8370 if ((y2 = 1) or (key$ = chr$(28))) then
8380 select case No
8390 '0ボタンからokボタン右に移動
8400 case 0:
8410 No=-1:sp_on 14,1:sp_on 13,0
8420 pause 200:goto Input_Born_Month2:
8430 '0ボタンからokボタン 右に移動　ここまで
8440 'OKボタンで右を押して何もしない
8450 case -1:
8460 pause 200:goto Input_Born_Month2:
8470 case 1:
8480 No=2:sp_on 9,1:sp_on 6,0
8490 pause 200:goto Input_Born_Month2:
8500 case 2:
8510 No=3:sp_on 12,1:sp_on 9,0
8520 pause 200:goto Input_Born_Month2:
8530 case 3:
8540 pause 200:goto Input_Born_Month2:
8550 case 4:
8560 No=5:sp_on 8,1:sp_on 5,0
8570 pause 200:goto Input_Born_Month2:
8580 case 5:
8590 No=6:sp_on 11,1:sp_on 8,0
8600 pause 200:goto Input_Born_Month2:
8610 case 7:
8620 No=8:sp_on 7,1:sp_on 4,0
8630 pause 200:goto Input_Born_Month2:
8640 case 8:
8650 No=9:sp_on 10,1:sp_on 7,0
8660 pause 200:goto Input_Born_Month2:
8670 case 9:
8680 pause 200:goto Input_Born_Month2:
8690 case 6:
8700 pause 200:goto Input_Born_Month2:
8710 end select
8720 'Okから右ボタンを押して何もしない ここまで
8730 endif
8740 '十字キー　ここまで
8750 '右の丸ボタン　決定キー
8760 if ((bg=2) or (key$=chr$(13))) then
8770 select case count
8780 case 0:
8790 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
8800 locate 2,3
8810 color RGB(255,255,255)
8820 print "生まれた月(1月~12月):";buf_Month$
8830 goto Input_Born_Month2:
8840 case 1:
8850 count = 2:c = No
8860 c = val(buf_Month$)
8870 if (No = -1) then
8880 'count=0
8890 month=buf_month
8900 buf_month=val(buf_Month$)
8910 month=buf_month
8920 '生まれた日に飛ぶ
8930 goto Input_Born_Day:
8940 else
8950 buf_month = c*10 + No
8960 buf_Month$= str$(buf_month)
8970 locate 2,3
8980 color Rgb(255,255,255)
8990 print "生まれた月(1月~12月):";buf_Month$
9000 goto Input_Born_Month2:
9010 endif
9020 case 2:
9030 count=3
9040 'c= val(buf_Month$)
9050 'buf_month = c*10 + No
9060 'buf_Month$ = str$(buf_month)
9070 'locate 2,3
9080 'print "生まれた月(1月～12月):";buf_Month$
9090 'goto Input_Born_Month2:
9100 'case 3:
9110 'count=4
9120 'b=val(buf_month$)
9130 'buf_month=c*10+No
9140 'buf_Month$=str$(buf_month)
9150 'locate 2,3
9160 'print "生まれた月(1月～12月):";buf_Month$
9170 'buf_month=val(buf_Month$)
9180 'year=val(buf_year$)
9190 if (No=-1) then
9200 goto Input_Born_Day:
9210 else
9220 'goto Input_Born_Month2:
9230 endif
9240 'case 4:
9250 'bufyear=buf_year
9260 'if (No=-1) then
9270 'buf_month = val(buf_Month$)
9280 'month = buf_month
9290 'sp_on 14,0
9300 'goto Input_Born_Day:
9310 'else
9320 'goto Input_Born_Month2:
9330 'endif
9340 end select
9350 endif
9360 '左の丸ボタン　キャンセル
9370 if (bg2=2) then
9380 select case count2
9390 case 0:
9400 if (No = -1) then
9410 buf_month=0:buf_Month$="**"
9420 count=0
9430 goto rewrite:
9440 else
9450 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9460 buf_month=0:buf_Month$="**"
9470 locate 2,3
9480 color rgb(255,255,255)
9490 print "                                       "
9500 goto rewrite:
9510 if (No>12) then
9520 ui_msg"値が範囲外です。"
9530 goto rewrite:
9540 endif
9550 endif
9560 endif
9570 rewrite:
9580 locate 2,3
9590 color rgb(255,255,255)
9600 print "                                      "
9610 locate 2,3
9620 print "生まれた月(1月~12月):";buf_Month$
9630 goto Input_Born_Month2:
9640 end select
9650 'endif
9660 endif
9670 end
9680 'end
9690 '生れた日を入力
9700 Input_Born_Day:
9710 '生まれた日入力
9720 cls 3:play ""
9730 'No=-1:Okのとき
9740 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
9750 for i=0 to 1
9760 buf_day(i)=0
9770 next i
9780 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
9790 gload Gazo$ + "Screen1.png",0,0,0
9800 gload Gazo$ + "downscreen.png",0,0,800
9810 'Init"kb:2"
9820 '音声ファイル再生 2023.06.07
9830 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
9840 font 48
9850 locate 0,1
9860 '文字色：黒　 color rgb(0,0,0)
9870 color rgb(255,255,255)
9880 print "生まれた日を入れて下さい" + chr$(13)
9890 color rgb(255,255,255)
9900 locate 2,3
9910 print "生まれた日(1日~31日):";buf_Day$
9920 color rgb(255,0,0)
9930 'locate 4,6:print ":7"
9940 'locate 9,6:print ":8"
9950 'locate 12,6:print ":9"
9960 locate 4,6
9970 print ":7  :8  :9" + chr$(13)
9980 color rgb(255,0,0)
9990 locate 4,8
10000 print ":4  :5  :6" + chr$(13)
10010 color rgb(255,0,0)
10020 locate 4,10
10030 print ":1  :2  :3" + chr$(13)
10040 locate 4,12
10050 print "    :0"
10060 locate 12,12
10070 color rgb(0,0,255)
10080 print ":Ok"
10090 sp_on 4,0: sp_on 5,0:sp_on 6,0
10100 sp_on 7,0:sp_on 8,0:sp_on 9,0
10110 sp_on 10,0:sp_on 11,0:sp_on 12,0
10120 sp_on 13,0:sp_on 14,1
10130 Input_Born_Day2:
10140 key$="":bg=0:y=0:y2=0:bg2=0
10150 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10160 key$ = inkey$
10170 bg = strig(1)
10180 y = stick(1)
10190 y2 = stick(0)
10200 bg2 = strig(0)
10210 pause 5
10220 wend
10230 '十字キー　ここから
10240 '上の矢印　または、十字キー上
10250 if ((y = -1) or (key$ = chr$(30))) then
10260 select case No
10270 'No=-1:okのとき:初期の状態
10280 '0kボタンから３に移動
10290 '上に行く 処理
10300 case -1:
10310 No=3:sp_on 12,1:sp_on 14,0
10320 pause 200:goto Input_Born_Day2:
10330 '選択肢:3
10340 '3ボタンから 6に移動
10350 case 3:
10360 No=6:sp_on 12,0:sp_on 11,1
10370 pause 200:goto Input_Born_Day2:
10380 '6ボタンから ９に移動
10390 case 6:
10400 No=9:sp_on 10,1:sp_on 11,0
10410 pause 200:goto Input_Born_Day2:
10420 '6ボタンから ９に移動　ここまで
10430 '9で上を押して何もしない
10440 case 9:
10450 '何もしない
10460 No=9
10470 pause 200:goto Input_Born_Day2:
10480 '9で上を押しても何もしない　ここまで
10490 '上　 0ボタンから2ボタン
10500 'sp_on 6,1:1
10510 'sp_on 8,1:5
10520 'sp_on 7,1:7
10530 case 0:
10540 No=2:sp_on 13,0:sp_on 9,1:
10550 pause 200:goto Input_Born_Day2:
10560 '上  0ボタンから2ボタン　ここまで
10570 '2から５になる 上
10580 case 2:
10590 No=5:sp_on 8,1:sp_on 9,0:
10600 pause 200:goto Input_Born_Day2:
10610 case 5:
10620 No=8:sp_on 7,1:sp_on 8,0
10630 pause 200:goto Input_Born_Day2:
10640 case 8:
10650 pause 200:goto Input_Born_Day2:
10660 case 1:
10670 No=4:sp_on 5,1:sp_on 6,0
10680 pause 200:goto Input_Born_Day2:
10690 case 4:
10700 No=7:sp_on 4,1:sp_on 5,0
10710 pause 200:goto Input_Born_Day2:
10720 case 7:
10730 pause 200:goto Input_Born_Day2:
10740 end select
10750 endif
10760 '左３　ここまで
10770 '下の矢印
10780 '中央 2
10790 if ((y=1) or (key$ = chr$(31))) then
10800 select case No
10810 '9から６に下げる
10820 case 9:
10830 No=6:sp_on 11,1:sp_on 10,0
10840 pause 200:goto Input_Born_Day2:
10850 '6から３に下げる
10860 case 6:
10870 No=3:sp_on 12,1:sp_on 11,0
10880 pause 200:goto Input_Born_Day2:
10890 '3から０ｋに変える
10900 case 3:
10910 No=-1:sp_on 14,1:sp_on 12,0
10920 pause 200:goto Input_Born_Day2:
10930 'Okから下のボタンを押しても何もしない
10940 case -1:
10950 pause 200:goto Input_Born_Day2:
10960 case 8:
10970 No=5:sp_on 8,1:sp_on 7,0
10980 pause 200:goto Input_Born_Day2:
10990 case 5:
11000 No=2:sp_on 9,1:sp_on 8,0
11010 pause 200:goto Input_Born_Day2:
11020 case 2:
11030 No=0:sp_on 13,1:sp_on 9,0
11040 pause 200:goto Input_Born_Day2:
11050 case 0:
11060 pause 200:goto Input_Born_Day2:
11070 case 7:
11080 No=4:sp_on 5,1:sp_on 4,0
11090 pause 200:goto Input_Born_Day2:
11100 case 4:
11110 No=1:sp_on 6,1:sp_on 5,0
11120 pause 200:goto Input_Born_Day2:
11130 case 1:
11140 pause 200:goto Input_Born_Day2:
11150 end select
11160 endif
11170 '左へボタン 十字キー　左　or 　カーソル左
11180 if ((y2 = -1) or (key$ = chr$(29))) then
11190 select case No
11200 'Ok ボタン  Okから　左　０に行く
11210 case -1:
11220 No=0:sp_on 13,1:sp_on 14,0
11230 pause 200:goto Input_Born_Day2:
11240 '0 ボタン  左　何もしない
11250 case 0:
11260 pause 200:goto Input_Born_Day2:
11270 case 3:
11280 No=2:sp_on 9,1:sp_on 12,0:
11290 pause 200:goto Input_Born_Day2:
11300 case 2:
11310 No=1:sp_on 6,1:sp_on 9,0:
11320 pause 200:goto Input_Born_Day2:
11330 case 1:
11340 pause 200:goto Input_Born_Day2:
11350 case 6:
11360 No=5:sp_on 8,1:sp_on 11,0
11370 pause 200:goto Input_Born_Day2:
11380 case 5:
11390 No=4:sp_on 5,1:sp_on 8,0
11400 pause 200:goto Input_Born_Day2:
11410 case 4:
11420 pause 200:goto Input_Born_Day2:
11430 case 9:
11440 No=8:sp_on 7,1:sp_on 10,0
11450 pause 200:goto Input_Born_Day2:
11460 case 8:
11470 No=7:sp_on 4,1:sp_on 7,0
11480 pause 200:goto Input_Born_Day2:
11490 case 7:
11500 pause 200:goto Input_Born_Day2:
11510 end select
11520 endif
11530 '右  十字キー　右　or カーソル　右
11540 if ((y2 = 1) or (key$ = chr$(28))) then
11550 select case No
11560 '0ボタンからokボタン右に移動
11570 case 0:
11580 No=-1:sp_on 14,1:sp_on 13,0
11590 pause 200:goto Input_Born_Day2:
11600 '0ボタンからokボタン 右に移動　ここまで
11610 'OKボタンで右を押して何もしない
11620 case -1:
11630 pause 200:goto Input_Born_Day2:
11640 case 1:
11650 No=2:sp_on 9,1:sp_on 6,0
11660 pause 200:goto Input_Born_Day2:
11670 case 2:
11680 No=3:sp_on 12,1:sp_on 9,0
11690 pause 200:goto Input_Born_Day2:
11700 case 3:
11710 pause 200:goto Input_Born_Day2:
11720 case 4:
11730 No=5:sp_on 8,1:sp_on 5,0
11740 pause 200:goto Input_Born_Day2:
11750 case 5:
11760 No=6:sp_on 11,1:sp_on 8,0
11770 pause 200:goto Input_Born_Day2:
11780 case 7:
11790 No=8:sp_on 7,1:sp_on 4,0
11800 pause 200:goto Input_Born_Day2:
11810 case 8:
11820 No=9:sp_on 10,1:sp_on 7,0
11830 pause 200:goto Input_Born_Day2:
11840 case 9:
11850 pause 200:goto Input_Born_Day2:
11860 case 6:
11870 pause 200:goto Input_Born_Day2:
11880 end select
11890 'Okから右ボタンを押して何もしない ここまで
11900 endif
11910 '十字キー　ここまで
11920 '右の丸ボタンを押したとき
11930 if ((bg = 2) or (key$ = chr$(13))) then
11940 'count :決定ボタンを押した回数
11950 select case (count mod 3)
11960 '1桁目入力
11970 case 0:
11980 count = 1:
11990 if (No = -1) then
12000 '1桁目　OKでは何もしない
12010 'goto check:
12020 else
12030 'ok以外のボタンを押したとき
12040 buf_day = No:buf_Day$=str$(No)
12050 c=No
12060 locate 2,3
12070 color RGB(255,255,255)
12080 print "生まれた日(1日~31日):";buf_Day$
12090 endif
12100 check:
12110 if (No >= 1 and No <= 9) then
12120 sp_on 14,0
12130 goto Input_Born_Day2:
12140 else
12150 sp_on 14,0
12160 goto complate:
12170 endif
12180 case 1:
12190 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12200 count = 2:
12210 'locate 2,3
12220 'color RGB(255,255,255)
12230 'print "生まれた日(1日~31日):";buf_Day$
12240 'Okボタンを押したときの処理
12250 '入力値　10未満のとき
12260 'c = buf_day
12270 if (No = -1) then
12280 'c=buf_day
12290 ' buf_day = c
12300 'buf_Day$ = str$(buf_day)
12310 '10以下のとき
12320 if (buf_day < 10) then
12330 sp_on 14,0
12340 goto complate:
12350 endif
12360 else
12370 'c=No
12380 buf_day = c * 10 + No
12390 buf_Day$ =str$(buf_day)
12400 locate 2,3
12410 color Rgb(255,255,255)
12420 print "生まれた日(1日~31日):";buf_Day$
12430 goto Input_Born_Day2:
12440 endif
12450 '生まれた日　2桁目の数字　or 1桁の数字 + ok
12460 case 2:
12470 count=0
12480 'c=val(buf_Day$)
12490 'buf_day=c*10+No
12500 'buf_Day$=str$(buf_day)
12510 'day=buf_day
12520 'locate 2,3
12530 'print "生まれた日(1日〜31日):";buf_Day$
12540 'No=-1:ok ボタンを押したとき
12550 if (No = -1) then
12560 if ((buf_day > 0) and (buf_day < 32)) then
12570 sp_on 14,0
12580 goto complate:
12590 else
12600 goto Input_Born_Day2:
12610 endif
12620 'Okボタン以外を押したとき
12630 else
12640 c=val(buf_Day$)
12650 buf_day = c * 10 + No
12660 buf_Day$ = str$(buf_day)
12670 locate 2,3
12680 print "生まれた日(1日~31日):";buf_Day$
12690 'goto Input_Born_Day2:
12700 endif
12710 case 3:
12720 count=4
12730 'c=val(buf_day$)
12740 'buf_day=c*10+No
12750 'buf_day$=str$(buf_day)
12760 'locate 2,3
12770 'print "生まれた日を入れてください:";buf_day$
12780 'year=val(buf_year$)
12790 if (No = -1) then
12800 'goto Input_Born_Day:
12810 sp_on 14,0:
12820 goto complate:
12830 else
12840 goto Input_Born_Month2:
12850 endif
12860 'case 4:
12870 'bufyear=buf_year
12880 'if (No=-1) then
12890 'buf_day = val(buf_day$)
12900 'bufday = buf_day
12910 'sp_on 14,0
12920 'goto complate:
12930 'else
12940 'goto Input_Born_Day2:
12950 'endif
12960 end select
12970 endif
12980 if (bg2=2) then
12990 select case count2
13000 case 0:
13010 if (No=-1) then
13020 'buf_day=0:buf_Day$="**"
13030 if (buf_day>=1 and buf_day<=31) then
13040 count=0
13050 buf_day=0:buf_Day$="**"
13060 'goto rewrite_day:
13070 else
13080 buf_day=0:buf_Day$="**"
13090 ui_msg"値が範囲外です"
13100 endif
13110 goto rewrite_day:
13120 else
13130 goto rewrite_day:
13140 endif
13150 rewrite_day:
13160 locate 2,3
13170 color rgb(255,255,255)
13180 print "                                      "
13190 locate 2,3
13200 print "生まれた日(1日~31日):";buf_Day$
13210 goto Input_Born_Day2:
13220 end select
13230 endif
13240 '--------------------------Input_Born_Day:-------------------------------------------
13250 complate:
13260 suhiNo = buf_year + buf_month + buf_day
13270 'if (suhiNo < 1000) then
13280 a1 = fix(suhiNo / 1000)
13290 a2 = fix(suhiNo/100) - (a1 * 10)
13300 a3 = fix(suhiNo/10)-(a1*100+a2*10)
13310 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
13320 'endif
13330 bufsuhiNo = a1+a2+a3+a4
13340 recomp:
13350 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
13360 'bufsuhiNo=a6
13370 goto Kabara_Result_Screen:
13380 else
13390 a5 = fix(bufsuhiNo / 10)
13400 a6 = bufsuhiNo - a5 * 10
13410 bufsuhiNo = a6 + a5
13420 if (bufsuhiNo = 10) then
13430 bufsuhiNo=1
13440 endif
13450 goto Kabara_Result_Screen:
13460 endif
13470 Kabara_Result_Screen:
13480 cls 3:
13490 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
13500 gload Gazo$ + "downscreen.png",0,0,800
13510 init "kb:4"
13520 '
13530 play ""
13540 select case (bufsuhiNo)
13550 case 1:
13560 play Voice$ + "Result_Kabara_1_20230607.mp3"
13570 case 2:
13580 play Voice$ + "Result_Kabara_2_20230607.mp3"
13590 case 3:
13600 play Voice$ + "Result_Kabara_3_20230607.mp3"
13610 case 4:
13620 play Voice$ + "Result_Kabara_4_20230607.mp3"
13630 case 5:
13640 play Voice$ + "Result_Kabara_5_20230607.mp3"
13650 case 6:
13660 play Voice$ + "Result_Kabara_6_20230607.mp3"
13670 case 7:
13680 play Voice$ + "Result_Kabara_7_20230607.mp3"
13690 case 8:
13700 play Voice$ + "Result_Kabara_8_20230607.mp3"
13710 case 9:
13720 play Voice$ + "Result_Kabara_9_20230607.mp3"
13730 case 11:
13740 play Voice$ + "Result_Kabara_11_20230607.mp3"
13750 case 22:
13760 play Voice$ + "Result_Kabara_22_20230607.mp3"
13770 case 33:
13780 play Voice$ + "Result_Kabara_33_20230607.mp3"
13790 end select
13800 font 48
13810 key$ = "":bg = 0:
13820 'COLOR rgb(255,255,255)
13830 'print "●診断結果"+chr$(13)
13840 locate 0,2
13850 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
13860 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
13870 locate 1,15:
13880 color rgb(255,255,255)
13890 print "ジョイパッドの右:トップメニュー" + chr$(13)
13900 while ((key$ <> chr$(13)) and (bg <> 2))
13910 key$ = inkey$
13920 bg = strig(1)
13930 pause 5
13940 wend
13950 'Enter or JoyPad right
13960 if ((key$ = chr$(13)) or (bg = 2)) then
13970 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
13980 endif
13990 'else
14000 'suhiNo1 = fix(bufsuhiNo / 10)
14010 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14020 'bufsuhiNo = suhiNo1 + suhiNo2
14030 'goto recomp:
14040 'endif
14050 'print chr$(13)
14060 'color rgb(255,0,0)
14070 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14080 'key$ = input$(1)
14090 'if key$ = chr$(13) then goto Main_Screen:
14100 '"Menu2 占いのルール"
14110 Suhi_Rule:
14120 '数秘術占いルールの表示
14130 cls 3:play "":init"kb:4"
14140 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14150 gload Gazo$ + "downscreen.png",0,0,800
14160 'cls 3:
14170 'line (0,0) - (1500,60),rgb(0,0,255),bf
14180 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14190 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14200 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14210 locate 0,2:Font 48
14220 print chr$(13) + chr$(13)
14230 color rgb(0,0,0)
14240 print "誕生日を単数変換します";chr$(13)
14250 print "数字の範囲:1~９,11,22,33";chr$(13)
14260 print "例:1973年11月22日の場合";chr$(13)
14270 print "1+9+7+3+11+22=53 ";chr$(13)
14280 print "→ 5 + 3 = 8" + chr$(13)
14290 print "故に8が数秘ナンバーになります";chr$(13)
14300 locate 0,15
14310 color rgb(255,255,255)
14320 print "ジョイパッドの右を押してください"
14330 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14340 '"key$ = input$(1)"
14350 '"if key$ = chr$(13) then goto Main_Screen:"
14360 suhi_rule_selection:
14370 bg = 0:key$ = "":bg2=0
14380 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
14390 bg = strig(1)
14400 key$ = inkey$
14410 bg2=strig(0)
14420 pause 2
14430 wend
14440 if ((bg = 2) or (key$ = chr$(13))) then
14450 pause 200:cls 4:goto Main_Screen:
14460 endif
14470 if (bg2=2) then
14480 play "":pause 200
14490 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14500 goto suhi_rule_selection:
14510 endif
14520 '2.設定
14530 '2-1.トップ画面に戻る
14540 Setting:
14550 cls 3:init"kb:4":font 48:No=0
14560 play ""
14570 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14580 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
14590 gload Gazo$ + "downscreen.png",0,0,800
14600 print chr$(13) + chr$(13) + chr$(13)
14610 color rgb(255,255,255):sp_on 0,1:
14620 print "番号を選んでください" + chr$(13)
14630 print " :1.トップ画面に戻る"+ chr$(13)
14640 print " :2.未実装" + chr$(13)
14650 print " :3.未実装" + chr$(13)
14660 print " :4.未実装" + chr$(13)
14670 color rgb(0,0,0)
14680 locate 1,15:print "1.トップ画面に戻るを選択"
14690 Setting_Selection:
14700 y=0:key$="":bg=0:bg2=0
14710 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
14720 'y=stick(1)
14730 key$ = inkey$
14740 bg=strig(1)
14750 bg2 = strig(0)
14760 pause 2
14770 wend
14780 if ((bg = 2) or (key$ = chr$(13))) then
14790 select case No
14800 case 0:
14810 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
14820 end select
14830 endif
14840 if (bg2 = 2) then
14850 play "":pause 200
14860 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14870 goto Setting_Selection:
14880 endif
14890 '3.Help
14900 '3-1.ルールの表示
14910 '3-2.バージョン
14920 '3-3.トップに戻る
14930 Help:
14940 cls 3:Font 48:No=0
14950 play ""
14960 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
14970 gload Gazo$ + "downscreen.png",0,0,800
14980 color rgb(255,255,255)
14990 print chr$(13)+chr$(13)+chr$(13)
15000 print "番号を選んでください"+chr$(13)
15010 print " :1.ルールの表示" + chr$(13)
15020 print " :2.バージョンの表示" + chr$(13)
15030 print " :3.参考文献" + chr$(13)
15040 print " :4.トップ画面に戻る" + chr$(13)
15050 color rgb(0,0,0)
15060 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15070 locate 1,15
15080 print "                                      "
15090 locate 1,15
15100 print "1.ルールの表示を選択"
15110 init"kb:4"
15120 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15130 Help_Select:
15140 bg=0:key$="":y=0:bg2=0
15150 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15160 y = stick(1)
15170 key$ = inkey$
15180 bg = strig(1)
15190 bg2 = strig(0)
15200 pause 5
15210 wend
15220 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15230 if ((y = 1) or (key$ = chr$(31))) then
15240 select case No
15250 case 0:
15260 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
15270 case 1:
15280 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
15290 case 2:
15300 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
15310 case 3:
15320 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15330 end select
15340 endif
15350 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
15360 if ((y = -1) or (key$ = chr$(30))) then
15370 select case No
15380 case 0:
15390 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
15400 case 1:
15410 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15420 case 2:
15430 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
15440 case 3:
15450 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
15460 end select
15470 endif
15480 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
15490 if ((bg = 2) or (key$ = chr$(13))) then
15500 select case No
15510 case 0:
15520 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
15530 case 1:
15540 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
15550 case 2:
15560 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
15570 '3:Top画面に行く
15580 case 3:
15590 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
15600 end select
15610 endif
15620 if (bg2 = 2) then
15630 play "":pause 200
15640 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15650 goto Help_Select:
15660 endif
15670 '数秘術占い　トップ画面
15680 Kabara_TopScreen:
15690 cls 3:play ""
15700 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
15710 gload Gazo$ + "downscreen.png",0,0,800
15720 play Voice$ + "KabaraTop_Selection_20230721.mp3"
15730 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
15740 init"kb:4":No=0
15750 color rgb(255,255,255)
15760 print chr$(13)+chr$(13)+chr$(13)
15770 print "番号を選んでください" + chr$(13)
15780 print " :1.数秘術占い" + chr$(13)
15790 print " :2.バーズアイグリット" + chr$(13)
15800 print " :3.相性占い" + chr$(13)
15810 print " :4.トップ画面に戻る" + chr$(13)
15820 color rgb(0,0,0)
15830 locate 1,15:print "1.数秘術占いを選択"
15840 Kabara_TopScreen2:
15850 y = 0:bg = 0:key$ = "":bg2 = 0
15860 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
15870 key$ = inkey$
15880 bg = strig(1)
15890 y = stick(1)
15900 bg2 = strig(0)
15910 pause 5
15920 wend
15930 '選択ボタン
15940 'カーソル　と　ジョイパッド　の下
15950 if ((y = 1) or (key$ = chr$(31))) then
15960 select case No
15970 case 2:
15980 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
15990 case 3:
16000 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16010 case 0:
16020 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16030 case 1:
16040 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16050 end select
16060 endif
16070 'カーソル　上
16080 if ((y=-1) or (key$=chr$(30))) then
16090 select case No
16100 case 0:
16110 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16120 case 1:
16130 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16140 case 2:
16150 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16160 case 3:
16170 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16180 end select
16190 endif
16200 '決定ボタン
16210 'ジョイパッドの右　or  Enter key
16220 if ((bg = 2) or (key$ = chr$(13))) then
16230 select case No
16240 case 0:
16250 '1.数秘術占い
16260 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
16270 case 3:
16280 '4.メイン画面にいく
16290 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
16300 case 1:
16310 '2.バースアイグリッド
16320 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
16330 case 2:
16340 '3.相性占い
16350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
16360 end select
16370 endif
16380 if (bg2 = 2) then
16390 play "":pause 200
16400 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
16410 goto Kabara_TopScreen2:
16420 endif
16430 '1.バースアイグリット　名入力
16440 Inputname1:
16450 cls 3:init"kb:2":font 48
16460 gload Gazo$ + "Input_Birtheye2.png",0,0,0
16470 color rgb(255,255,255)
16480 locate 1,2:print "名前をアルファベットで入れてください"
16490 color rgb(0,0,0)
16500 locate 1,5:Input "名前（姓の部分）:",name1$
16510 'locate 1,5:print "Hit any key"
16520 n1 = len(name1$)
16530 if (n1 < 11) then
16540 for i=1 to n1
16550 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
16560 next i
16570 endif
16580 'if b$=chr$(13) then goto Inputname2:
16590 '2.グリッドアイ　姓の入力
16600 Inputname2:
16610 cls 3:init"kb:2":font 48
16620 gload Gazo$ + "Input_Birtheye1.png",0,0,0
16630 color rgb(255,255,255)
16640 locate 1,2:print "名前をアルファベットで入れてください"
16650 color rgb(0,0,0)
16660 locate 1,5:Input "名前(名の部分):",name2$
16670 n2=len(name2$)
16680 for i=1 to n2
16690 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
16700 next i
16710 '計算領域
16720 Complate:
16730 'name1
16740 for i=0 to 25
16750 for n=1 to len(name1$)
16760 if (buf_chart$(i,0) = buf_name1$(n-1)) then
16770 b = val(buf_chart$(i,1))
16780 buffer(b-1) = buffer(b-1) + 1
16790 endif
16800 next n
16810 next i
16820 'name2
16830 for i=0 to 25
16840 for n=1 to len(name2$)
16850 if (buf_chart$(i,0) = buf_name2$(n-1)) then
16860 c = val(buf_chart$(i,1))
16870 buffer(c - 1) = buffer(c - 1) + 1
16880 endif
16890 next n
16900 next i
16910 '結果表示領域
16920 Result_Birtheye1:
16930 cls 3:init"kb:4":No=0
16940 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
16950 gload Gazo$ + "downscreen.png",0,0,800
16960 color rgb(255,255,255)
16970 '1の表示
16980 locate 3,14:print buffer(0);
16990 '2の表示
17000 locate 3,9:print buffer(1);
17010 '3の表示
17020 locate 3,5:print buffer(2);
17030 '4の表示
17040 locate 10,14:print buffer(3);
17050 '5の表示
17060 locate 10,9:print buffer(4);
17070 '6の表示
17080 locate 10,5:print buffer(5);
17090 '7の表示
17100 locate 15,14:print buffer(6);
17110 '8の表示
17120 locate 15,9:print buffer(7);
17130 '9の表示
17140 locate 15,5:print buffer(8);
17150 'name を大文字に変換
17160 locate 5,3:print ucase$(name1$ + name2$)
17170 color rgb(0,0,0)
17180 locate 2,15:print "右の丸ボタン:トップ画面"
17190 bg=0:key$="":
17200 while ((bg <> 2) and (key$ <> chr$(13)))
17210 'Enterと決定ボタン
17220 key$ = inkey$
17230 bg = strig(1)
17240 pause 200
17250 wend
17260 if ((bg=2) or (key$=chr$(13))) then
17270 'データーをクリアしてトップ画面に行く
17280 for i=0 to 8
17290 buffer(i)=0
17300 next i
17310 for n=0 to 9
17320 buf_name1$(n) = ""
17330 buf_name2$(n) = ""
17340 next n
17350 'Topに行く
17360 goto Main_Screen:
17370 endif
17380 'goto Result_Birtheye1:
17390 'Result_Birtheye2:
17400 'cls 3:color rgb(255,255,255)
17410 'end
17420 'Memory 消去
17430 '
17440 References1:
17450 cls 3:key$="":bg=0:play "":font 48-16
17460 gload Gazo$ + "Reference1_20230703.png",0,0,0
17470 print chr$(13)+chr$(13)+chr$(13)
17480 color rgb(0,0,0)
17490 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
17500 print "Author:carol Adrinne,PhD"+chr$(13)
17510 print "出版社:幻冬舎" + chr$(13)
17520 print "HP:www.carolAdrienne.jp/"+chr$(13)
17530 print "ISBN:978-4-344-01394-0"+chr$(13)
17540 print "定価:1500円 + 税"+chr$(13)
17550 color rgb(255,255,255)
17560 locate 1,23
17570 print "ジョイパッド右：次へ"
17580 while (key$ <> chr$(13) and bg <> 2)
17590 bg = strig(1)
17600 key$ = inkey$
17610 wend
17620 '
17630 if ((bg = 2) or (key$ = chr$(13))) then
17640 pause 200:goto References2:
17650 endif
17660 'ユダヤの秘儀 カバラ大占術
17670 References2:
17680 cls 3:play "":bg = 0:key$ = ""
17690 gload Gazo$ + "Reference2_20230703.png",0,0,0
17700 '参考文献２
17710 'カバラ大占術
17720 print chr$(13) + chr$(13) + chr$(13)
17730 color  rgb(0,0,0):font 48-16
17740 locate 1,3
17750 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
17760 print "著者：浅野　八郎" + chr$(13)
17770 print "出版社:NON BOOK" + chr$(13)
17780 print "ISBN:4-396-10364-6" + chr$(13)
17790 print "定価:829円 + 税"
17800 color rgb(255,255,255)
17810 locate 1,23
17820 print "ジョイパッド右：トップへ行く"
17830 while ((key$ <> chr$(13)) and (bg <> 2))
17840 bg = strig(1)
17850 key$ = inkey$
17860 wend
17870 if ((bg = 2) or (key$ = chr$(13))) then
17880 pause 200:goto Main_Screen:
17890 endif
17900 end
17910 '1.数秘術　トップ画面
17920 Kabara_First_Top:
17930 cls 3:color rgb(255,255,255):play ""
17940 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
17950 gload Gazo$ + "downscreen.png",0,0,800
17960 No=0:init"kb:4"
17970 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
17980 print chr$(13);chr$(13)
17990 color rgb(255,255,255)
18000 locate 3,4:No=0
18010 print "番号選んでください" + chr$(13)
18020 print " :1.数秘術占い" + chr$(13)
18030 print " :2.トップ画面に戻る" + chr$(13)
18040 color rgb(0,0,0)
18050 sp_on 0,1
18060 locate 1,15:print "1.数秘術番号を求めるを選択"
18070 'KeyBord:true
18080 'Joy Pad:true
18090 '上、下:true
18100 '
18110 'ｂｇ：決定ボタン
18120 'カーソル　上
18130 'カーソル　下
18140 Kabara_First_Top2:
18150 key$ = "":bg = 0:y = 0:
18160 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
18170 key$ = inkey$
18180 bg = strig(1)
18190 y = stick(1)
18200 'PauseでCPUを休める
18210 pause 5
18220 wend
18230 '1.カーソル　下 処理 chr$(31)
18240 'カーソル　下
18250 if ((key$ = chr$(31)) or (y = 1)) then
18260 select case No
18270 '
18280 case 1:
18290 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
18300 case 0:
18310 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18320 'case 2:
18330 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
18340 end select
18350 endif
18360 '2.カーソル　上 処理 chr$(30)
18370 if ((key$ = chr$(30)) or (y = -1)) then
18380 select case No
18390 case 0:
18400 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18410 case 1:
18420 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
18430 'case 2:
18440 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
18450 end select
18460 endif
18470 '3.決定 処理  bg:2 or Enter key:chr$(13)
18480 if ((bg = 2) or (key$ = chr$(13))) then
18490 select case No
18500 case 0:
18510 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
18520 goto Kabara_TopScreen:
18530 'case 1:
18540 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
18550 case 1:
18560 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
18570 end select
18580 endif
18590 '
18600 'Kabara 相性占い トップ画面
18610 Kabara_Aishou_Top:
18620 cls 3:y=0:key$="":bg=0:No=0
18630 play ""
18640 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
18650 gload Gazo$ + "downscreen.png",0,0,800
18660 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
18670 print chr$(13) + chr$(13)
18680 locate 0,4:color rgb(255,255,255)
18690 'print "Ok"
18700 '
18710 print "番号を選んでください" + chr$(13)
18720 print " :1.男女2人の相性(未実装)" + chr$(13)
18730 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
18740 print " :3.トップ画面に戻る" + chr$(13)
18750 sp_on 0,1:sp_on 1,0:sp_on 2,0
18760 color rgb(0,0,0)
18770 locate 1,15:print "1.男女2人の相性占いを選択"
18780 Kabara_Aishou_Top2:
18790 key$ = "":y = 0:bg = 0:
18800 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
18810 'ジョイパッド(右) ,十字キー (上下)
18820 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
18830 y = stick(1)
18840 key$ = inkey$
18850 bg = strig(1)
18860 pause 5
18870 wend
18880 'カーソル　下 or 十字キー　下
18890 if ((key$ = chr$(31)) or (y = 1)) then
18900 select case No
18910 '選択肢　1 - 2に変更
18920 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
18930 'ok
18940 case 0:
18950 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
18960 '選択肢　2 - 3に変更
18970 case 1:
18980 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
18990 'リリース時 case 2コメント解除
19000 case 2:
19010 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
19020 case else:
19030 goto Kabara_Aishou_Top2:
19040 end select
19050 endif
19060 '十字キー　上　、カーソル　上
19070 if ((key$ = chr$(30)) or (y = -1)) then
19080 select case No
19090 case 0:
19100 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
19110 case 1:
19120 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
19130 case 2:
19140 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19150 case else:
19160 goto Kabara_Aishou_Top2:
19170 end select
19180 endif
19190 '十字キー　上下:選択
19200 'ジョイパッド 右:決定
19210 if ((bg = 2) or (key$ = chr$(13))) then
19220 select case No
19230 '1.男女の相性
19240 case 0:
19250 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
19260 '2ビジネスの相性
19270 case 1:
19280 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
19290 case 2:
19300 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
19310 end select
19320 endif
19330 'ビジネスの相性　
19340 '1.1人目のビジネスの相性　名前入力　1人目
19350 Business_Aishou_Input_1_parson:
19360 No=0:color RGB(255,255,255)
19370 cls 3:init "kb:2"
19380 gload Gazo$ + "Screen1.png",0,0,0
19390 gload Gazo$ + "downscreen.png",0,0,800
19400 play "":color rgb(255,0,0):name$ = ""
19410 locate 0,1
19420 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
19430 color rgb(255,255,255):
19440 locate 0,3
19450 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
19460 print "入れてください" + chr$(13)
19470 locate 0,15:color rgb(0,0,0)
19480 Input "1人目の名前:",name$
19490 'color rgb(0,0,0)
19500 'locate 0,13:print "                                     "
19510 'locate 0,13:print "1人目の名前を入力してエンターキー":
19520 'buffer_name$(0):1人目の名前
19530 buffer_name$(0) = name$:
19540 goto Business_Aishou_Input_2_Parson:
19550 '2.2人目のビジネスの相性 名前入力 2人目
19560 Business_Aishou_Input_2_Parson:
19570 cls 3:init "kb:2":name$ = "":No=0
19580 gload Gazo$ + "Screen1.png",0,0,0
19590 gload Gazo$ + "downscreen.png",0,0,800
19600 color rgb(255,0,0)
19610 'Title
19620 locate 0,1
19630 print "ビジネスの相性　2人目"
19640 locate 0,3
19650 color rgb(255,255,255)
19660 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
19670 print "入れてください" + chr$(13)
19680 locate 0,15:color rgb(0,0,0)
19690 Input "2人目の名前:",name$
19700 'color rgb(0,0,0)
19710 'locate 0,15:print "                                              "
19720 'locate 0,15:print "2人目の名前を入力してエンター ":
19730 '2人目
19740 '2人目の名前を入れるに代入
19750 buffer_name$(1) = name$:
19760 goto Select_jyoushi:
19770 '3.上司の選択
19780 Select_jyoushi:
19790 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19800 gload Gazo$ + "downscreen.png",0,0,800
19810 init "kb:4":No=0
19820 color rgb(0,0,255)
19830 locate 1,1
19840 print "上司の選択"
19850 color rgb(255,255,255)
19860 locate 0,4:print "名前から上司の方を選んでください"
19870 locate 0,6
19880 print " :";buffer_name$(0);"が上 司";chr$(13)
19890 locate 0,8
19900 print " :";buffer_name$(1);"が上 司";chr$(13)
19910 locate 0,15:
19920 print "                                     "
19930 locate 0,15:color rgb(0,0,0)
19940 print "上司の方を選んで右の丸ボタン"
19950 sp_on 0,1:sp_on 1,0:sp_on 2,0
19960 Select_jyoushi2:
19970 'ここでNo=0をおいてはいけない
19980 y=0:key$="":bg=0:
19990 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
20000 y = stick(1)
20010 key$ = inkey$
20020 bg = strig(1)
20030 pause 5
20040 wend
20050 '1.カーソル下の処理　or 十字キーの下処理
20060 if ((key$ = chr$(31)) or (y = 1)) then
20070 select case No
20080 case 0:
20090 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20100 case 1:
20110 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20120 end select
20130 endif
20140 '2.カーソル上処理　or 十字キーの上の処理
20150 if ((key$ = chr$(30)) or (y = -1)) then
20160 select case No
20170 case 0:
20180 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20190 case 1:
20200 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
20210 end select
20220 endif
20230 if ((key$ = chr$(13)) or (bg = 2)) then
20240 select case No
20250 case 0:
20260 '上司(name1)を配列に代入
20270 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20280 case 1:
20290 '上司（name2)を配列に代入
20300 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20310 end select
20320 endif
20330 '3.決定ボタン　Enter or 右の丸ボタン
20340 '1.誕生日入力
20350 '1-1.生まれた年を入力
20360 'Jyoushi_born_year:
20370 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
20380 '---------------------------------------------'
20390 '誕生日入力(生れた年代)
20400 Jyoushi_Input_Seireki:
20410 'buf_Jyoushi_Born_Year:上司の生まれた年代
20420 'buf_Jyoushi_Born_Day(0) = born_year
20430 cls 3:play "":count=0:count2=0
20440 init"kb:4"
20450 'No=-1:Okのとき
20460 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
20470 for i=0 to 3
20480 buf_Jyoushi_Born_Day(i)=0
20490 next i
20500 gload Gazo$ + "Screen1.png",0,0,0
20510 gload Gazo$ + "downscreen.png",0,0,800
20520 'Init"kb:2"
20530 '音声ファイル再生 2023.06.07
20540 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
20550 font 48
20560 locate 0,1
20570 '文字色：黒　 color rgb(0,0,0)
20580 color rgb(255,255,255)
20590 print "上司の生まれた年代を入れて下さい" + chr$(13)
20600 color rgb(255,255,255)
20610 locate 1,3
20620 print "上司の生まれた年代(西暦4桁):";buf_year$
20630 color rgb(255,0,0)
20640 'locate 4,6:print ":7"
20650 'locate 9,6:print ":8"
20660 'locate 12,6:print ":9"
20670 locate 4,6
20680 print ":7  :8  :9" + chr$(13)
20690 color rgb(255,0,0)
20700 locate 4,8
20710 print ":4  :5  :6" + chr$(13)
20720 color rgb(255,0,0)
20730 locate 4,10
20740 print ":1  :2  :3" + chr$(13)
20750 locate 4,12
20760 print "    :0"
20770 locate 12,12
20780 color rgb(0,0,255)
20790 print ":Ok"
20800 sp_on 4,0: sp_on 5,0:sp_on 6,0
20810 sp_on 7,0:sp_on 8,0:sp_on 9,0
20820 sp_on 10,0:sp_on 11,0:sp_on 12,0
20830 sp_on 13,0:sp_on 14,1
20840 Jyoushi_Input_Seireki2:
20850 key$="":bg=0:y=0:y2=0:bg2=0:
20860 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
20870 key$ = inkey$
20880 bg = strig(1)
20890 y = stick(1)
20900 y2 = stick(0)
20910 bg2=strig(0)
20920 pause 5
20930 wend
20940 '十字キー　ここから
20950 '上の矢印　または、十字キー上
20960 if ((y = -1) or (key$ = chr$(30))) then
20970 select case No
20980 'No=-1:okのとき:初期の状態
20990 '0kボタンから３に移動
21000 '上に行く 処理
21010 case -1:
21020 No=3:sp_on 12,1:sp_on 14,0
21030 pause 200:goto Jyoushi_Input_Seireki2:
21040 '選択肢:3
21050 '3ボタンから 6に移動
21060 case 3:
21070 No=6:sp_on 12,0:sp_on 11,1
21080 pause 200:goto Jyoushi_Input_Seireki2:
21090 '6ボタンから ９に移動
21100 case 6:
21110 No=9:sp_on 10,1:sp_on 11,0
21120 pause 200:goto Jyoushi_Input_Seireki2:
21130 '6ボタンから ９に移動　ここまで
21140 '9で上を押して何もしない
21150 case 9:
21160 '何もしない
21170 No=9
21180 pause 200:goto Jyoushi_Input_Seireki2:
21190 '9で上を押しても何もしない　ここまで
21200 '上　 0ボタンから2ボタン
21210 'sp_on 6,1:1
21220 'sp_on 8,1:5
21230 'sp_on 7,1:7
21240 case 0:
21250 No=2:sp_on 13,0:sp_on 9,1:
21260 pause 200:goto Jyoushi_Input_Seireki2:
21270 '上  0ボタンから2ボタン　ここまで
21280 '2から５になる 上
21290 case 2:
21300 No=5:sp_on 8,1:sp_on 9,0:
21310 pause 200:goto Jyoushi_Input_Seireki2:
21320 case 5:
21330 No=8:sp_on 7,1:sp_on 8,0
21340 pause 200:goto Jyoushi_Input_Seireki2:
21350 case 8:
21360 pause 200:goto Jyoushi_Input_Seireki2:
21370 case 1:
21380 No=4:sp_on 5,1:sp_on 6,0
21390 pause 200:goto Jyoushi_Input_Seireki2:
21400 case 4:
21410 No=7:sp_on 4,1:sp_on 5,0
21420 pause 200:goto Jyoushi_Input_Seireki2:
21430 case 7:
21440 pause 200:goto Jyoushi_Input_Seireki2:
21450 end select
21460 endif
21470 '左３　ここまで
21480 '下の矢印
21490 '中央 2
21500 if ((y=1) or (key$ = chr$(31))) then
21510 select case No
21520 '9から６に下げる
21530 case 9:
21540 No=6:sp_on 11,1:sp_on 10,0
21550 pause 200:goto Jyoushi_Input_Seireki2:
21560 '6から３に下げる
21570 case 6:
21580 No=3:sp_on 12,1:sp_on 11,0
21590 pause 200:goto Jyoushi_Input_Seireki2:
21600 '3から０ｋに変える
21610 case 3:
21620 No=-1:sp_on 14,1:sp_on 12,0
21630 pause 200:goto Jyoushi_Input_Seireki2:
21640 'Okから下のボタンを押しても何もしない
21650 case -1:
21660 pause 200:goto Jyoushi_Input_Seireki2:
21670 case 8:
21680 No=5:sp_on 8,1:sp_on 7,0
21690 pause 200:goto Jyoushi_Input_Seireki2:
21700 case 5:
21710 No=2:sp_on 9,1:sp_on 8,0
21720 pause 200:goto Jyoushi_Input_Seireki2:
21730 case 2:
21740 No=0:sp_on 13,1:sp_on 9,0
21750 pause 200:goto Jyoushi_Input_Seireki2:
21760 case 0:
21770 pause 200:goto Jyoushi_Input_Seireki2:
21780 case 7:
21790 No=4:sp_on 5,1:sp_on 4,0
21800 pause 200:goto Jyoushi_Input_Seireki2:
21810 case 4:
21820 No=1:sp_on 6,1:sp_on 5,0
21830 pause 200:goto Jyoushi_Input_Seireki2:
21840 case 1:
21850 pause 200:goto Jyoushi_Input_Seireki2:
21860 end select
21870 endif
21880 '左へボタン 十字キー　左　or 　カーソル左
21890 if ((y2 = -1) or (key$ = chr$(29))) then
21900 select case No
21910 'Ok ボタン  Okから　左　０に行く
21920 case -1:
21930 No=0:sp_on 13,1:sp_on 14,0
21940 pause 200:goto Jyoushi_Input_Seireki2:
21950 '0 ボタン  左　何もしない
21960 case 0:
21970 pause 200:goto Jyoushi_Input_Seireki2:
21980 case 3:
21990 No=2:sp_on 9,1:sp_on 12,0:
22000 pause 200:goto Jyoushi_Input_Seireki2:
22010 case 2:
22020 No=1:sp_on 6,1:sp_on 9,0:
22030 pause 200:goto Jyoushi_Input_Seireki2:
22040 case 1:
22050 pause 200:goto Jyoushi_Input_Seireki2:
22060 case 6:
22070 No=5:sp_on 8,1:sp_on 11,0
22080 pause 200:goto Jyoushi_Input_Seireki2:
22090 case 5:
22100 No=4:sp_on 5,1:sp_on 8,0
22110 pause 200:goto Jyoushi_Input_Seireki2:
22120 case 4:
22130 pause 200:goto Jyoushi_Input_Seireki2:
22140 case 9:
22150 No=8:sp_on 7,1:sp_on 10,0
22160 pause 200:goto Jyoushi_Input_Seireki2:
22170 case 8:
22180 No=7:sp_on 4,1:sp_on 7,0
22190 pause 200:goto Jyoushi_Input_Seireki2:
22200 case 7:
22210 pause 200:goto Jyoushi_Input_Seireki2:
22220 end select
22230 endif
22240 '右  十字キー　右　or カーソル　右
22250 if ((y2 = 1) or (key$ = chr$(28))) then
22260 select case No
22270 '0ボタンからokボタン右に移動
22280 case 0:
22290 No=-1:sp_on 14,1:sp_on 13,0
22300 pause 200:goto Jyoushi_Input_Seireki2:
22310 '0ボタンからokボタン 右に移動　ここまで
22320 'OKボタンで右を押して何もしない
22330 case -1:
22340 pause 200:goto Jyoushi_Input_Seireki2:
22350 case 1:
22360 No=2:sp_on 9,1:sp_on 6,0
22370 pause 200:goto Jyoushi_Input_Seireki2:
22380 case 2:
22390 No=3:sp_on 12,1:sp_on 9,0
22400 pause 200:goto Jyoushi_Input_Seireki2:
22410 case 3:
22420 pause 200:goto Jyoushi_Input_Seireki2:
22430 case 4:
22440 No=5:sp_on 8,1:sp_on 5,0
22450 pause 200:goto Jyoushi_Input_Seireki2:
22460 case 5:
22470 No=6:sp_on 11,1:sp_on 8,0
22480 pause 200:goto Jyoushi_Input_Seireki2:
22490 case 7:
22500 No=8:sp_on 7,1:sp_on 4,0
22510 pause 200:goto Jyoushi_Input_Seireki2:
22520 case 8:
22530 No=9:sp_on 10,1:sp_on 7,0
22540 pause 200:goto Jyoushi_Input_Seireki2:
22550 case 9:
22560 pause 200:goto Jyoushi_Input_Seireki2:
22570 case 6:
22580 pause 200:goto Jyoushi_Input_Seireki2:
22590 end select
22600 'Okから右ボタンを押して何もしない ここまで
22610 endif
22620 '十字キー　ここまで
22630 '==============================
22640 'ここから
22650 '==============================
22660 if ((bg=2) or (key$=chr$(13))) then
22670 select case count
22680 case 0:
22690 count = 1
22700 if (No=-1) then
22710 count = 0
22720 buf_Jyoushi_Born_Day(0) = No
22730 'Okボタンを押したとき
22740 goto Jyoushi_Input_Seireki2:
22750 else
22760 'Okボタン以外が押されたとき
22770 if (No>=1 and No<=2) then
22780 buf_year$="":buf_year$=str$(No)
22790 buf_year=No
22800 buf_Jyoushi_Born_Day(0)=No
22810 locate 1,3
22820 color rgb(255,255,255)
22830 print "上司の生まれた年代(西暦4桁):";buf_year$
22840 goto Jyoushi_Input_Seireki2:
22850 else
22860 count=0
22870 ui_msg"数字が範囲外になります。"
22880 buf_year$="":buf_year=0
22890 goto Jyoushi_Input_Seireki2:
22900 endif
22910 endif
22920 case 1:
22930 count = 2
22940 if (No = -1) then
22950 count = 1
22960 goto Jyoushi_Input_Seireki2:
22970 else
22980 b = val(buf_year$)
22990 buf_year = b * 10 + No
23000 buf_year$ = str$(buf_year)
23010 buf_Jyoushi_Born_Day(0)=buf_year
23020 locate 1,3
23030 color rgb(255,255,255)
23040 print "                                                                "
23050 locate 1,3
23060 print "上司の生まれた年代(西暦4桁):"+buf_year$
23070 'if (No = -1) then
23080 'count=1
23090 goto Jyoushi_Input_Seireki2:
23100 endif
23110 case 2:
23120 count=3
23130 if (No=-1) then
23140 count =2
23150 goto Jyoushi_Input_Seireki2:
23160 else
23170 b = val(buf_year$)
23180 buf_year = b*10 + No
23190 buf_year$ = str$(buf_year)
23200 buf_Jyoushi_Born_Day(0) = buf_year
23210 locate 1,3
23220 color rgb(255,255,255)
23230 print "                                        "
23240 locate 1,3
23250 print "上司の生まれた年代(西暦4桁):";buf_year$
23260 goto Jyoushi_Input_Seireki2:
23270 endif
23280 case 3:
23290 count=4
23300 if (No = -1) then
23310 count=3
23320 goto Jyoushi_Input_Seireki2:
23330 else
23340 b = val(buf_year$)
23350 buf_year=b*10+No
23360 buf_year$=str$(buf_year)
23370 buf_Jyoushi_Born_Day(0)=buf_year
23380 locate 1,3
23390 color RGB(255,255,255)
23400 print "                                      "
23410 locate 1,3
23420 print "上司の生まれた年代(西暦4桁):";buf_year$
23430 buf_year=val(buf_year$)
23440 'year=val(buf_year$)
23450 'if (No=-1) then
23460 'goto Input_Born_Month:
23470 'else
23480 goto Jyoushi_Input_Seireki2:
23490 endif
23500 case 4:
23510 'bufyear=buf_year
23520 if (No=-1) then
23530 buf_year = val(buf_year$)
23540 buf_Jyoushi_Born_Day(0)=buf_year
23550 sp_on 14,0
23560 goto Jyoushi_Input_Born_Month:
23570 else
23580 goto Jyoushi_Input_Seireki2:
23590 endif
23600 end select
23610 endif
23620 '===========================
23630 'ここまでを部下のところにコピーする.
23640 '===========================
23650 if (bg2 = 2) then
23660 select case count2
23670 case 0:
23680 if (No = -1) then
23690 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
23700 count=0
23710 locate 1,3
23720 color rgb(255,255,255)
23730 print "                                      "
23740 locate 1,3
23750 print "上司の生まれた年代（西暦4桁):"+buf_year$
23760 goto Jyoushi_Input_Seireki2:
23770 else
23780 '(buf_year=0) then
23790 buf_year=0:buf_year$="****"
23800 locate 1,3
23810 print "                                       "
23820 locate 1,3
23830 print "上司の生まれた年代(西暦4桁):"+buf_year$
23840 goto Jyoushi_Input_Seireki2:
23850 'endif
23860 endif
23870 end select
23880 endif
23890 'Input"上司の生れた年代(4桁,〜2025年):",year
23900 'if year > 2025 then goto Jyoushi_Input_Seireki:
23910 'if year = 123 then cls 3:cls 4:goto Main_Screen:
23920 '"4桁目"
23930 'bufyear4 = fix(year / 1000)
23940 '"3桁目"
23950 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
23960 '"2桁目"
23970 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
23980 '"1桁目"
23990 'bufyear1 = fix((year - ((bufyear4*
24000 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
24010 '2.生まれた月を入力
24020 Jyoushi_Input_Born_Month:
24030 cls 3:play "":count=0:count2=0
24040 'No=-1:Okのとき
24050 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
24060 for i=0 to 1
24070 buf_month(i)=0
24080 next i
24090 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
24100 gload Gazo$ + "Screen1.png",0,0,0
24110 gload Gazo$ + "downscreen.png",0,0,800
24120 'Init"kb:4"
24130 '音声ファイル再生 2023.06.07
24140 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
24150 font 48
24160 locate 0,1
24170 '文字色：黒　 color rgb(0,0,0)
24180 '文字色:白
24190 color rgb(255,255,255)
24200 print "上司の生まれた月を入れて下さい" + chr$(13)
24210 '文字色:白
24220 color rgb(255,255,255)
24230 locate 1,3
24240 '文字色:白
24250 print "上司の生まれた月(1月~12月):"+buf_Month$
24260 color rgb(255,0,0)
24270 'locate 4,6:print ":7"
24280 'locate 9,6:print ":8"
24290 'locate 12,6:print ":9"
24300 locate 4,6
24310 '文字色:赤
24320 print ":7  :8  :9" + chr$(13)
24330 color rgb(255,0,0)
24340 locate 4,8
24350 print ":4  :5  :6" + chr$(13)
24360 color rgb(255,0,0)
24370 locate 4,10
24380 print ":1  :2  :3" + chr$(13)
24390 locate 4,12
24400 print "    :0"
24410 locate 12,12
24420 color rgb(0,0,255)
24430 print ":Ok"
24440 sp_on 4,0: sp_on 5,0:sp_on 6,0
24450 sp_on 7,0:sp_on 8,0:sp_on 9,0
24460 sp_on 10,0:sp_on 11,0:sp_on 12,0
24470 sp_on 13,0:sp_on 14,1
24480 Jyoushi_Input_Born_Month2:
24490 key$="":bg=0:y=0:y2=0:bg2=0
24500 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
24510 key$ = inkey$
24520 bg = strig(1)
24530 y = stick(1)
24540 y2 = stick(0)
24550 bg2 = strig(0)
24560 pause 5
24570 wend
24580 '十字キー　ここから
24590 '上の矢印　または、十字キー上
24600 if ((y = -1) or (key$ = chr$(30))) then
24610 select case No
24620 'No=-1:okのとき:初期の状態
24630 '0kボタンから３に移動
24640 '上に行く 処理
24650 case -1:
24660 No=3:sp_on 12,1:sp_on 14,0
24670 pause 200:goto Jyoushi_Input_Born_Month2:
24680 '選択肢:3
24690 '3ボタンから 6に移動
24700 case 3:
24710 No=6:sp_on 12,0:sp_on 11,1
24720 pause 200:goto Jyoushi_Input_Born_Month2:
24730 '6ボタンから ９に移動
24740 case 6:
24750 No=9:sp_on 10,1:sp_on 11,0
24760 pause 200:goto Jyoushi_Input_Born_Month2:
24770 '6ボタンから ９に移動　ここまで
24780 '9で上を押して何もしない
24790 case 9:
24800 '何もしない
24810 No=9
24820 pause 200:goto Jyoushi_Input_Born_Month2:
24830 '9で上を押しても何もしない　ここまで
24840 '上　 0ボタンから2ボタン
24850 'sp_on 6,1:1
24860 'sp_on 8,1:5
24870 'sp_on 7,1:7
24880 case 0:
24890 No=2:sp_on 13,0:sp_on 9,1:
24900 pause 200:goto Jyoushi_Input_Born_Month2:
24910 '上  0ボタンから2ボタン　ここまで
24920 '2から５になる 上
24930 case 2:
24940 No=5:sp_on 8,1:sp_on 9,0:
24950 pause 200:goto Jyoushi_Input_Born_Month2:
24960 case 5:
24970 No=8:sp_on 7,1:sp_on 8,0
24980 pause 200:goto Jyoushi_Input_Born_Month2:
24990 case 8:
25000 pause 200:goto Input_Born_Month2:
25010 case 1:
25020 No=4:sp_on 5,1:sp_on 6,0
25030 pause 200:goto Jyoushi_Input_Born_Month2:
25040 case 4:
25050 No=7:sp_on 4,1:sp_on 5,0
25060 pause 200:goto Jyoushi_Input_Born_Month2:
25070 case 7:
25080 pause 200:goto Input_Born_Month2:
25090 end select
25100 endif
25110 '左３　ここまで
25120 '下の矢印
25130 '中央 2
25140 if ((y=1) or (key$ = chr$(31))) then
25150 select case No
25160 '9から６に下げる
25170 case 9:
25180 No=6:sp_on 11,1:sp_on 10,0
25190 pause 200:goto Jyoushi_Input_Born_Month2:
25200 '6から３に下げる
25210 case 6:
25220 No=3:sp_on 12,1:sp_on 11,0
25230 pause 200:goto Jyoushi_Input_Born_Month2:
25240 '3から０ｋに変える
25250 case 3:
25260 No=-1:sp_on 14,1:sp_on 12,0
25270 pause 200:goto Jyoushi_Input_Born_Month2:
25280 'Okから下のボタンを押しても何もしない
25290 case -1:
25300 pause 200:goto Jyoushi_Input_Born_Month2:
25310 case 8:
25320 No=5:sp_on 8,1:sp_on 7,0
25330 pause 200:goto Jyoushi_Input_Born_Month2:
25340 case 5:
25350 No=2:sp_on 9,1:sp_on 8,0
25360 pause 200:goto Jyoushi_Input_Born_Month2:
25370 case 2:
25380 No=0:sp_on 13,1:sp_on 9,0
25390 pause 200:goto Jyoushi_Input_Born_Month2:
25400 case 0:
25410 pause 200:goto Jyoushi_Input_Born_Month2:
25420 case 7:
25430 No=4:sp_on 5,1:sp_on 4,0
25440 pause 200:goto Jyoushi_Input_Born_Month2:
25450 case 4:
25460 No=1:sp_on 6,1:sp_on 5,0
25470 pause 200:goto Jyoushi_Input_Born_Month2:
25480 case 1:
25490 pause 200:goto Jyoushi_Input_Born_Month2:
25500 end select
25510 endif
25520 '左へボタン 十字キー　左　or 　カーソル左
25530 if ((y2 = -1) or (key$ = chr$(29))) then
25540 select case No
25550 'Ok ボタン  Okから　左　０に行く
25560 case -1:
25570 No=0:sp_on 13,1:sp_on 14,0
25580 pause 200:goto Jyoushi_Input_Born_Month2:
25590 '0 ボタン  左　何もしない
25600 case 0:
25610 pause 200:goto Jyoushi_Input_Born_Month2:
25620 case 3:
25630 No=2:sp_on 9,1:sp_on 12,0:
25640 pause 200:goto Jyoushi_Input_Born_Month2:
25650 case 2:
25660 No=1:sp_on 6,1:sp_on 9,0:
25670 pause 200:goto Jyoushi_Input_Born_Month2:
25680 case 1:
25690 pause 200:goto Jyoushi_Input_Born_Month2:
25700 case 6:
25710 No=5:sp_on 8,1:sp_on 11,0
25720 pause 200:goto Jyoushi_Input_Born_Month2:
25730 case 5:
25740 No=4:sp_on 5,1:sp_on 8,0
25750 pause 200:goto Jyoushi_Input_Born_Month2:
25760 case 4:
25770 pause 200:goto Jyoushi_Input_Born_Month2:
25780 case 9:
25790 No=8:sp_on 7,1:sp_on 10,0
25800 pause 200:goto Input_Born_Month2:
25810 case 8:
25820 No=7:sp_on 4,1:sp_on 7,0
25830 pause 200:goto Jyoushi_Input_Born_Month2:
25840 case 7:
25850 pause 200:goto Jyoushi_Input_Born_Month2:
25860 end select
25870 endif
25880 '右  十字キー　右　or カーソル　右
25890 if ((y2 = 1) or (key$ = chr$(28))) then
25900 select case No
25910 '0ボタンからokボタン右に移動
25920 case 0:
25930 No=-1:sp_on 14,1:sp_on 13,0
25940 pause 200:goto Jyoushi_Input_Born_Month2:
25950 '0ボタンからokボタン 右に移動　ここまで
25960 'OKボタンで右を押して何もしない
25970 case -1:
25980 pause 200:goto Jyoushi_Input_Born_Month2:
25990 case 1:
26000 No=2:sp_on 9,1:sp_on 6,0
26010 pause 200:goto Jyoushi_Input_Born_Month2:
26020 case 2:
26030 No=3:sp_on 12,1:sp_on 9,0
26040 pause 200:goto Jyoushi_Input_Born_Month2:
26050 case 3:
26060 pause 200:goto Jyoushi_Input_Born_Month2:
26070 case 4:
26080 No=5:sp_on 8,1:sp_on 5,0
26090 pause 200:goto Jyoushi_Input_Born_Month2:
26100 case 5:
26110 No=6:sp_on 11,1:sp_on 8,0
26120 pause 200:goto Jyoushi_Input_Born_Month2:
26130 case 7:
26140 No=8:sp_on 7,1:sp_on 4,0
26150 pause 200:goto Jyoushi_Input_Born_Month2:
26160 case 8:
26170 No=9:sp_on 10,1:sp_on 7,0
26180 pause 200:goto Jyoushi_Input_Born_Month2:
26190 case 9:
26200 pause 200:goto Jyoushi_Input_Born_Month2:
26210 case 6:
26220 pause 200:goto Jyoushi_Input_Born_Month2:
26230 end select
26240 'Okから右ボタンを押して何もしない ここまで
26250 endif
26260 '十字キー　ここまで
26270 '右の丸ボタン　決定キー
26280 if ((bg=2) or (key$=chr$(13))) then
26290 select case count
26300 case 0:
26310 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
26320 locate 1,3
26330 color RGB(255,255,255)
26340 print "生まれた月(1月~12月):"+buf_Month$
26350 goto Jyoushi_Input_Born_Month2:
26360 case 1:
26370 count = 2:c = No
26380 c = val(buf_Month$)
26390 if (No = -1) then
26400 'count=0
26410 month=buf_month
26420 buf_month=val(buf_Month$)
26430 month=buf_month
26440 buf_Jyoushi_Born_Day(1)=month
26450 '生まれた日に飛ぶ
26460 goto Jyoushi_Input_Born_Day:
26470 else
26480 buf_month = c*10 + No
26490 buf_Month$= str$(buf_month)
26500 buf_Jyoushi_Born_Day(1)=buf_month
26510 locate 2,3
26520 color Rgb(255,255,255)
26530 print "上司の生まれた月(1月~12月):";buf_Month$
26540 goto Jyoushi_Input_Born_Month2:
26550 endif
26560 case 2:
26570 count=3
26580 'c= val(buf_Month$)
26590 'buf_month = c*10 + No
26600 'buf_Month$ = str$(buf_month)
26610 'locate 2,3
26620 'print "上司の生まれた月(1月～12月):";buf_Month$
26630 'goto Jyoushi_Input_Born_Month2:
26640 'case 3:
26650 'count=4
26660 'b=val(buf_month$)
26670 'buf_month=c*10+No
26680 'buf_Month$=str$(buf_month)
26690 'locate 2,3
26700 'print "上司の生まれた月(1月～12月):";buf_Month$
26710 'buf_month=val(buf_Month$)
26720 'year=val(buf_year$)
26730 if (No=-1) then
26740 goto Jyoushi_Input_Born_Day:
26750 else
26760 goto Jyoushi_Input_Born_Month2:
26770 endif
26780 'case 4:
26790 'bufyear=buf_year
26800 'if (No=-1) then
26810 'buf_month = val(buf_Month$)
26820 'month = buf_month
26830 'sp_on 14,0
26840 'goto Input_Born_Day:
26850 'else
26860 'goto Input_Born_Month2:
26870 'endif
26880 end select
26890 endif
26900 '左の丸ボタン　キャンセル
26910 if (bg2=2) then
26920 select case count2
26930 case 0:
26940 if (No = -1) then
26950 buf_month=0:buf_Month$="**"
26960 count=0
26970 goto rewrite2:
26980 else
26990 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
27000 buf_month = 0:buf_Month$ = "**"
27010 locate 2,3
27020 color rgb(255,255,255)
27030 print "                                       "
27040 goto rewrite2:
27050 if (No>12) then
27060 ui_msg"値が範囲外です。"
27070 goto rewrite2:
27080 endif
27090 endif
27100 endif
27110 rewrite2:
27120 locate 1,3
27130 color rgb(255,255,255)
27140 print "                                      "
27150 locate 1,3
27160 print "上司の生まれた月(1月~12月):"+buf_Month$
27170 goto Jyoushi_Input_Born_Month2:
27180 end select
27190 'endif
27200 endif
27210 end
27220 'end
27230 '生れた日を入力
27240 Jyoushi_Input_Born_Day:
27250 '生まれた日入力
27260 cls 3:play ""
27270 'No=-1:Okのとき
27280 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
27290 for i=0 to 1
27300 buf_day(i)=0
27310 next i
27320 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27330 gload Gazo$ + "Screen1.png",0,0,0
27340 gload Gazo$ + "downscreen.png",0,0,800
27350 'Init"kb:2"
27360 '音声ファイル再生 2023.06.07
27370 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
27380 font 48
27390 locate 1,1
27400 '文字色：黒　 color rgb(0,0,0)
27410 color rgb(255,255,255)
27420 print "上司の生まれた日を入れて下さい" + chr$(13)
27430 locate 1,3
27440 color rgb(255,255,255)
27450 print "                                      "
27460 locate 1,3
27470 print "上司の生まれた日(1日~31日):"+buf_Day$
27480 color rgb(255,0,0)
27490 'locate 4,6:print ":7"
27500 'locate 9,6:print ":8"
27510 'locate 12,6:print ":9"
27520 locate 4,6
27530 print ":7  :8  :9" + chr$(13)
27540 color rgb(255,0,0)
27550 locate 4,8
27560 print ":4  :5  :6" + chr$(13)
27570 color rgb(255,0,0)
27580 locate 4,10
27590 print ":1  :2  :3" + chr$(13)
27600 locate 4,12
27610 print "    :0"
27620 locate 12,12
27630 color rgb(0,0,255)
27640 print ":Ok"
27650 sp_on 4,0: sp_on 5,0:sp_on 6,0
27660 sp_on 7,0:sp_on 8,0:sp_on 9,0
27670 sp_on 10,0:sp_on 11,0:sp_on 12,0
27680 sp_on 13,0:sp_on 14,1
27690 Jyoushi_Input_Born_Day2:
27700 key$="":bg=0:y=0:y2=0:bg2=0:
27710 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27720 key$ = inkey$
27730 bg = strig(1)
27740 y = stick(1)
27750 y2 = stick(0)
27760 bg2 = strig(0)
27770 pause 5
27780 wend
27790 '十字キー　ここから
27800 '上の矢印　または、十字キー上
27810 if ((y = -1) or (key$ = chr$(30))) then
27820 select case No
27830 'No=-1:okのとき:初期の状態
27840 '0kボタンから３に移動
27850 '上に行く 処理
27860 case -1:
27870 No=3:sp_on 12,1:sp_on 14,0
27880 pause 200:goto Jyoushi_Input_Born_Day2:
27890 '選択肢:3
27900 '3ボタンから 6に移動
27910 case 3:
27920 No=6:sp_on 12,0:sp_on 11,1
27930 pause 200:goto Jyoushi_Input_Born_Day2:
27940 '6ボタンから ９に移動
27950 case 6:
27960 No=9:sp_on 10,1:sp_on 11,0
27970 pause 200:goto Jyoushi_Input_Born_Day2:
27980 '6ボタンから ９に移動　ここまで
27990 '9で上を押して何もしない
28000 case 9:
28010 '何もしない
28020 No=9
28030 pause 200:goto Jyoushi_Input_Born_Day2:
28040 '9で上を押しても何もしない　ここまで
28050 '上　 0ボタンから2ボタン
28060 'sp_on 6,1:1
28070 'sp_on 8,1:5
28080 'sp_on 7,1:7
28090 case 0:
28100 No=2:sp_on 13,0:sp_on 9,1:
28110 pause 200:goto Jyoushi_Input_Born_Day2:
28120 '上  0ボタンから2ボタン　ここまで
28130 '2から５になる 上
28140 case 2:
28150 No=5:sp_on 8,1:sp_on 9,0:
28160 pause 200:goto Jyoushi_Input_Born_Day2:
28170 case 5:
28180 No=8:sp_on 7,1:sp_on 8,0
28190 pause 200:goto Jyoushi_Input_Born_Day2:
28200 case 8:
28210 pause 200:goto Jyoushi_Input_Born_Day2:
28220 case 1:
28230 No=4:sp_on 5,1:sp_on 6,0
28240 pause 200:goto Jyoushi_Input_Born_Day2:
28250 case 4:
28260 No=7:sp_on 4,1:sp_on 5,0
28270 pause 200:goto Jyoushi_Input_Born_Day2:
28280 case 7:
28290 pause 200:goto Jyoushi_Input_Born_Day2:
28300 end select
28310 endif
28320 '左３　ここまで
28330 '下の矢印
28340 '中央 2
28350 if ((y=1) or (key$ = chr$(31))) then
28360 select case No
28370 '9から６に下げる
28380 case 9:
28390 No=6:sp_on 11,1:sp_on 10,0
28400 pause 200:goto Jyoushi_Input_Born_Day2:
28410 '6から３に下げる
28420 case 6:
28430 No=3:sp_on 12,1:sp_on 11,0
28440 pause 200:goto Jyoushi_Input_Born_Day2:
28450 '3から０ｋに変える
28460 case 3:
28470 No=-1:sp_on 14,1:sp_on 12,0
28480 pause 200:goto Jyoushi_Input_Born_Day2:
28490 'Okから下のボタンを押しても何もしない
28500 case -1:
28510 pause 200:goto Jyoushi_Input_Born_Day2:
28520 case 8:
28530 No=5:sp_on 8,1:sp_on 7,0
28540 pause 200:goto Jyoushi_Input_Born_Day2:
28550 case 5:
28560 No=2:sp_on 9,1:sp_on 8,0
28570 pause 200:goto Jyoushi_Input_Born_Day2:
28580 case 2:
28590 No=0:sp_on 13,1:sp_on 9,0
28600 pause 200:goto Jyoushi_Input_Born_Day2:
28610 case 0:
28620 pause 200:goto Jyoushi_Input_Born_Day2:
28630 case 7:
28640 No=4:sp_on 5,1:sp_on 4,0
28650 pause 200:goto Jyoushi_Input_Born_Day2:
28660 case 4:
28670 No=1:sp_on 6,1:sp_on 5,0
28680 pause 200:goto Jyoushi_Input_Born_Day2:
28690 case 1:
28700 pause 200:goto Jyoushi_Input_Born_Day2:
28710 end select
28720 endif
28730 '左へボタン 十字キー　左　or 　カーソル左
28740 if ((y2 = -1) or (key$ = chr$(29))) then
28750 select case No
28760 'Ok ボタン  Okから　左　０に行く
28770 case -1:
28780 No=0:sp_on 13,1:sp_on 14,0
28790 pause 200:goto Jyoushi_Input_Born_Day2:
28800 '0 ボタン  左　何もしない
28810 case 0:
28820 pause 200:goto Jyoushi_Input_Born_Day2:
28830 case 3:
28840 No=2:sp_on 9,1:sp_on 12,0:
28850 pause 200:goto Jyoushi_Input_Born_Day2:
28860 case 2:
28870 No=1:sp_on 6,1:sp_on 9,0:
28880 pause 200:goto Jyoushi_Input_Born_Day2:
28890 case 1:
28900 pause 200:goto Jyoushi_Input_Born_Day2:
28910 case 6:
28920 No=5:sp_on 8,1:sp_on 11,0
28930 pause 200:goto Jyoushi_Input_Born_Day2:
28940 case 5:
28950 No=4:sp_on 5,1:sp_on 8,0
28960 pause 200:goto Jyoushi_Input_Born_Day2:
28970 case 4:
28980 pause 200:goto Jyoushi_Input_Born_Day2:
28990 case 9:
29000 No=8:sp_on 7,1:sp_on 10,0
29010 pause 200:goto Jyoushi_Input_Born_Day2:
29020 case 8:
29030 No=7:sp_on 4,1:sp_on 7,0
29040 pause 200:goto Jyoushi_Input_Born_Day2:
29050 case 7:
29060 pause 200:goto Jyoushi_Input_Born_Day2:
29070 end select
29080 endif
29090 '右  十字キー　右　or カーソル　右
29100 if ((y2 = 1) or (key$ = chr$(28))) then
29110 select case No
29120 '0ボタンからokボタン右に移動
29130 case 0:
29140 No=-1:sp_on 14,1:sp_on 13,0
29150 pause 200:goto Jyoushi_Input_Born_Day2:
29160 '0ボタンからokボタン 右に移動　ここまで
29170 'OKボタンで右を押して何もしない
29180 case -1:
29190 pause 200:goto Jyoushi_Input_Born_Day2:
29200 case 1:
29210 No=2:sp_on 9,1:sp_on 6,0
29220 pause 200:goto Jyoushi_Input_Born_Day2:
29230 case 2:
29240 No=3:sp_on 12,1:sp_on 9,0
29250 pause 200:goto Jyoushi_Input_Born_Day2:
29260 case 3:
29270 pause 200:goto Jyoushi_Input_Born_Day2:
29280 case 4:
29290 No=5:sp_on 8,1:sp_on 5,0
29300 pause 200:goto Jyoushi_Input_Born_Day2:
29310 case 5:
29320 No=6:sp_on 11,1:sp_on 8,0
29330 pause 200:goto Jyoushi_Input_Born_Day2:
29340 case 7:
29350 No=8:sp_on 7,1:sp_on 4,0
29360 pause 200:goto Jyoushi_Input_Born_Day2:
29370 case 8:
29380 No=9:sp_on 10,1:sp_on 7,0
29390 pause 200:goto Jyoushi_Input_Born_Day2:
29400 case 9:
29410 pause 200:goto Jyoushi_Input_Born_Day2:
29420 case 6:
29430 pause 200:goto Jyoushi_Input_Born_Day2:
29440 end select
29450 'Okから右ボタンを押して何もしない ここまで
29460 endif
29470 '十字キー　ここまで
29480 '右の丸ボタンを押したとき
29490 if ((bg = 2) or (key$ = chr$(13))) then
29500 'count :決定ボタンを押した回数
29510 select case (count)
29520 '1桁目入力
29530 case 0:
29540 count = 1:
29550 if (No = -1) then
29560 '1桁目　OKでは何もしない
29570 goto check2:
29580 else
29590 'ok以外のボタンを押したとき
29600 buf_day = No:buf_Day$=str$(No)
29610 buf_Jyoushi_Born_Day(2)=buf_day
29620 c=No
29630 locate 1,3
29640 print "                                      "
29650 color RGB(255,255,255)
29660 locate 1,3
29670 print "上司の生まれた日(1日~31日):"+buf_Day$
29680 endif
29690 check2:
29700 if (No >= 1 and No <= 9) then
29710 sp_on 14,0
29720 goto Jyoushi_Input_Born_Day2:
29730 else
29740 sp_on 14,0
29750 goto complate_jyoushi:
29760 'end
29770 endif
29780 case 1:
29790 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
29800 count = 2:
29810 'locate 2,3
29820 'color RGB(255,255,255)
29830 'print "生まれた日(1日~31日):";buf_Day$
29840 'Okボタンを押したときの処理
29850 '入力値　10未満のとき
29860 c = buf_day
29870 'if (No = -1) then
29880 'c=buf_day
29890 'buf_day = c
29900 'buf_Day$ = str$(buf_day)
29910 '10以下のとき
29920 'if (buf_day < 10) then
29930 sp_on 14,0
29940 'goto complate2:
29950 'end
29960 'endif
29970 'else
29980 'c=No
29990 buf_day = c * 10 + No
30000 buf_Day$ = str$(buf_day)
30010 buf_Jyoushi_Born_Day(2)=buf_day
30020 locate 1,3
30030 print "                                           "
30040 locate 1,3
30050 color Rgb(255,255,255)
30060 print "上司の生まれた日(1日~31日):"+buf_Day$
30070 goto Jyoushi_Input_Born_Day2:
30080 'goto complate2:
30090 'endif
30100 'endif
30110 '生まれた日　2桁目の数字　or 1桁の数字 + ok
30120 case 2:
30130 'count=0
30140 'c=val(buf_Day$)
30150 'buf_day=c*10+No
30160 'buf_Day$=str$(buf_day)
30170 'day=buf_day
30180 'locate 2,3
30190 'print "生まれた日(1日〜31日):";buf_Day$
30200 'No=-1:ok ボタンを押したとき
30210 if (No = -1) then
30220 'if ((buf_day > 0) and (buf_day < 32)) then
30230 sp_on 14,0
30240 goto complate_jyoushi:
30250 'end
30260 'else
30270 'goto Jyoushi_Input_Born_Day2:
30280 endif
30290 'Okボタン以外を押したとき
30300 'else
30310 'c=val(buf_Day$)
30320 'buf_day = c * 10 + No
30330 'buf_Day$ = str$(buf_day)
30340 'locate 2,3
30350 'print "生まれた日(1日~31日):";buf_Day$
30360 'goto Jyoushi_Input_Born_Day2:
30370 'endif
30380 case 3:
30390 count=4
30400 'c=val(buf_day$)
30410 'buf_day=c*10+No
30420 'buf_day$=str$(buf_day)
30430 'locate 2,3
30440 'print "生まれた日を入れてください:";buf_day$
30450 'year=val(buf_year$)
30460 if (No = -1) then
30470 'goto Jyoushi_Input_Born_Day:
30480 sp_on 14,0:
30490 goto complate_jyoushi:
30500 else
30510 'goto Jyoushi_Input_Born_Month2:
30520 'endif
30530 'case 4:
30540 'bufyear=buf_year
30550 'if (No=-1) then
30560 'buf_day = val(buf_day$)
30570 'bufday = buf_day
30580 'sp_on 14,0
30590 goto complate_jyoushi:
30600 'else
30610 'goto Jyoushi_Input_Born_Day2:
30620 endif
30630 end select
30640 endif
30650 if (bg2=2) then
30660 select case count2
30670 case 0:
30680 if (No=-1) then
30690 buf_day=0:buf_Day$="**"
30700 if (buf_day >= 1 and buf_day <= 31) then
30710 count=0
30720 buf_day=0:buf_Day$ = "**"
30730 goto rewrite_day3:
30740 else
30750 buf_day=0:buf_Day$ = "**"
30760 ui_msg"値が範囲外です"
30770 endif
30780 goto rewrite_day3:
30790 else
30800 goto rewrite_day3:
30810 endif
30820 rewrite_day3:
30830 locate 2,3
30840 color rgb(255,255,255)
30850 print "                                      "
30860 locate 2,3
30870 print "生まれた日(1日~31日):" + buf_Day$
30880 goto Jyoushi_Input_Born_Day2:
30890 end select
30900 endif
30910 '--------------------------------------------'
30920 'locate 2,0:color rgb(255,0,0)
30930 'print "上司の生まれた年代を入力"
30940 'color rgb(255,255,255)
30950 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
30960 'locate 2,4:Input "上司の生まれた年:",born_year
30970 '誕生日データーを配列に代入
30980 'buf_Jyoushi_Born_Year:上司の生まれた年代
30990 'buf_Jyoushi_Born_Day(0) = born_year
31000 'born_year = 0
31010 '---------------------------------------------'
31020 'goto Jyoushi_born_month:
31030 '1-2.生まれた月を入力
31040 'Jyoushi_born_month:
31050 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31060 'init "kb:4"
31070 'locate 2,1:
31080 'color rgb(255,0,0)
31090 'print "上司の生まれた月入力"
31100 'color rgb(255,255,255)
31110 'locate 2,4:print "生まれた月を入力してください"
31120 'locate 2,5
31130 'Input "上司の生まれ月:",born_month
31140 'buf_Jyoushi_Born_Day(1) = born_month
31150 'born_month = 0
31160 'goto Jyoushi_born_day:
31170 'buf_Jyoushi_Born_day
31180 '1-3.生まれた日を入力
31190 'Jyoushi_born_day:
31200 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31210 'init "kb:4"
31220 'locate 2,1:color rgb(255,0,0)
31230 'print "上司の生まれた日　入力"
31240 'locate 2,4:color rgb(255,255,255)
31250 'print "生まれた日を入力してください"
31260 'locate 2,5
31270 'Input "上司の生まれた日:",born_day
31280 'buf_Jyoushi_Born_Day(2) = born_day
31290 'born_day = 0
31300 'goto buka_born_year:
31310 '2.部下の誕生日入力
31320 '2-1.生まれた年を入力
31330 'buka_born_year:
31340 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31350 'init "kb:2"
31360 'locate 1,1:color rgb(255,0,0)
31370 'print "部下の生まれた年代入力"
31380 'locate 0,4:color rgb(255,255,255)
31390 'print "部下の生まれた年（西暦4桁）を入れてください"
31400 'locate 0,5
31410 'Input "部下の生まれた年(西暦4桁):",born_year
31420 'buf_Buka_Born_Day(0) = born_year
31430 'born_year = 0
31440 '2-2.生まれた月を入力
31450 'buka_born_month:
31460 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31470 'init "kb:2"
31480 'locate 2,1:color rgb(255,0,0)
31490 'print "部下の生まれた月 入力"
31500 'locate 2,4:color rgb(255,255,255)
31510 'print "部下の生まれた月を入力してください"
31520 'locate 2,5:Input "部下の生まれた月:",born_month
31530 'buf_Buka_Born_Day(1) = born_month
31540 '2-3.生まれた日を入力
31550 'buka_born_day:
31560 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31570 'init "kb:2"
31580 'locate 2,1:color rgb(255,0,0)
31590 'print "生まれた日入力"
31600 'color rgb(255,255,255)
31610 'locate 2,4:print "生まれた日を入力してください"
31620 'locate 2,5:Input "部下の生まれた日:",born_day
31630 'buf_Buka_Born_Day(2) = born_day
31640 'born_day=0:goto Result_Business_Aisyou:
31650 '--------------------------------------------'
31660 complate_jyoushi:
31670 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
31680 buf_Jyoushi = Kabara_Num(a,b,c)
31690 a_1=buf_Jyoushi
31700 goto Buka_Input_Seireki:
31710 '--------------------------------------------'
31720 '部下'
31730 '1.部下の生まれた年代'
31740 Buka_Input_Seireki:
31750 cls 3:play "":count=0:count2=0
31760 init"kb:4"
31770 'No=-1:Okのとき
31780 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****"
31790 for i=0 to 3
31800 buf_Buka_Born_Day(i)=0
31810 next i
31820 gload Gazo$ + "Screen1.png",0,0,0
31830 gload Gazo$ + "downscreen.png",0,0,800
31840 'Init"kb:2"
31850 '音声ファイル再生 2023.06.07
31860 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
31870 font 48
31880 locate 0,1
31890 '文字色：黒　 color rgb(0,0,0)
31900 color rgb(255,255,255)
31910 print "部下の生まれた年代を入れて下さい" + chr$(13)
31920 color rgb(255,255,255)
31930 locate 1,3
31940 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
31950 color rgb(255,0,0)
31960 'locate 4,6:print ":7"
31970 'locate 9,6:print ":8"
31980 'locate 12,6:print ":9"
31990 locate 4,6
32000 print ":7  :8  :9" + chr$(13)
32010 color rgb(255,0,0)
32020 locate 4,8
32030 print ":4  :5  :6" + chr$(13)
32040 color rgb(255,0,0)
32050 locate 4,10
32060 print ":1  :2  :3" + chr$(13)
32070 locate 4,12
32080 print "    :0"
32090 locate 12,12
32100 color rgb(0,0,255)
32110 print ":Ok"
32120 sp_on 4,0: sp_on 5,0:sp_on 6,0
32130 sp_on 7,0:sp_on 8,0:sp_on 9,0
32140 sp_on 10,0:sp_on 11,0:sp_on 12,0
32150 sp_on 13,0:sp_on 14,1
32160 Buka_Input_Seireki2:
32170 key$="":bg=0:y=0:y2=0:bg2=0:
32180 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
32190 key$ = inkey$
32200 bg = strig(1)
32210 y = stick(1)
32220 y2 = stick(0)
32230 bg2=strig(0)
32240 pause 5
32250 wend
32260 '十字キー　ここから
32270 '上の矢印　または、十字キー上
32280 if ((y = -1) or (key$ = chr$(30))) then
32290 select case No
32300 'No=-1:okのとき:初期の状態
32310 '0kボタンから３に移動
32320 '上に行く 処理
32330 case -1:
32340 No=3:sp_on 12,1:sp_on 14,0
32350 pause 200:goto Buka_Input_Seireki2:
32360 '選択肢:3
32370 '3ボタンから 6に移動
32380 case 3:
32390 No=6:sp_on 12,0:sp_on 11,1
32400 pause 200:goto Buka_Input_Seireki2:
32410 '6ボタンから ９に移動
32420 case 6:
32430 No=9:sp_on 10,1:sp_on 11,0
32440 pause 200:goto Buka_Input_Seireki2:
32450 '6ボタンから ９に移動　ここまで
32460 '9で上を押して何もしない
32470 case 9:
32480 '何もしない
32490 No=9
32500 pause 200:goto Buka_Input_Seireki2:
32510 '9で上を押しても何もしない　ここまで
32520 '上　 0ボタンから2ボタン
32530 'sp_on 6,1:1
32540 'sp_on 8,1:5
32550 'sp_on 7,1:7
32560 case 0:
32570 No=2:sp_on 13,0:sp_on 9,1:
32580 pause 200:goto Buka_Input_Seireki2:
32590 '上  0ボタンから2ボタン　ここまで
32600 '2から５になる 上
32610 case 2:
32620 No=5:sp_on 8,1:sp_on 9,0:
32630 pause 200:goto Buka_Input_Seireki2:
32640 case 5:
32650 No=8:sp_on 7,1:sp_on 8,0
32660 pause 200:goto Buka_Input_Seireki2:
32670 case 8:
32680 pause 200:goto Buka_Input_Seireki2:
32690 case 1:
32700 No=4:sp_on 5,1:sp_on 6,0
32710 pause 200:goto Buka_Input_Seireki2:
32720 case 4:
32730 No=7:sp_on 4,1:sp_on 5,0
32740 pause 200:goto Buka_Input_Seireki2:
32750 case 7:
32760 pause 200:goto Buka_Input_Seireki2:
32770 end select
32780 endif
32790 '左３　ここまで
32800 '下の矢印
32810 '中央 2
32820 if ((y=1) or (key$ = chr$(31))) then
32830 select case No
32840 '9から６に下げる
32850 case 9:
32860 No=6:sp_on 11,1:sp_on 10,0
32870 pause 200:goto Buka_Input_Seireki2:
32880 '6から３に下げる
32890 case 6:
32900 No=3:sp_on 12,1:sp_on 11,0
32910 pause 200:goto Buka_Input_Seireki2:
32920 '3から０ｋに変える
32930 case 3:
32940 No=-1:sp_on 14,1:sp_on 12,0
32950 pause 200:goto Buka_Input_Seireki2:
32960 'Okから下のボタンを押しても何もしない
32970 case -1:
32980 pause 200:goto Buka_Input_Seireki2:
32990 case 8:
33000 No=5:sp_on 8,1:sp_on 7,0
33010 pause 200:goto Buka_Input_Seireki2:
33020 case 5:
33030 No=2:sp_on 9,1:sp_on 8,0
33040 pause 200:goto Buka_Input_Seireki2:
33050 case 2:
33060 No=0:sp_on 13,1:sp_on 9,0
33070 pause 200:goto Buka_Input_Seireki2:
33080 case 0:
33090 pause 200:goto Buka_Input_Seireki2:
33100 case 7:
33110 No=4:sp_on 5,1:sp_on 4,0
33120 pause 200:goto Buka_Input_Seireki2:
33130 case 4:
33140 No=1:sp_on 6,1:sp_on 5,0
33150 pause 200:goto Buka_Input_Seireki2:
33160 case 1:
33170 pause 200:goto Buka_Input_Seireki2:
33180 end select
33190 endif
33200 '左へボタン 十字キー　左　or 　カーソル左
33210 if ((y2 = -1) or (key$ = chr$(29))) then
33220 select case No
33230 'Ok ボタン  Okから　左　０に行く
33240 case -1:
33250 No=0:sp_on 13,1:sp_on 14,0
33260 pause 200:goto Buka_Input_Seireki2:
33270 '0 ボタン  左　何もしない
33280 case 0:
33290 pause 200:goto Buka_Input_Seireki2:
33300 case 3:
33310 No=2:sp_on 9,1:sp_on 12,0:
33320 pause 200:goto Buka_Input_Seireki2:
33330 case 2:
33340 No=1:sp_on 6,1:sp_on 9,0:
33350 pause 200:goto Buka_Input_Seireki2:
33360 case 1:
33370 pause 200:goto Buka_Input_Seireki2:
33380 case 6:
33390 No=5:sp_on 8,1:sp_on 11,0
33400 pause 200:goto Buka_Input_Seireki2:
33410 case 5:
33420 No=4:sp_on 5,1:sp_on 8,0
33430 pause 200:goto Buka_Input_Seireki2:
33440 case 4:
33450 pause 200:goto Buka_Input_Seireki2:
33460 case 9:
33470 No=8:sp_on 7,1:sp_on 10,0
33480 pause 200:goto Buka_Input_Seireki2:
33490 case 8:
33500 No=7:sp_on 4,1:sp_on 7,0
33510 pause 200:goto Buka_Input_Seireki2:
33520 case 7:
33530 pause 200:goto Buka_Input_Seireki2:
33540 end select
33550 endif
33560 '右  十字キー　右　or カーソル　右
33570 if ((y2 = 1) or (key$ = chr$(28))) then
33580 select case No
33590 '0ボタンからokボタン右に移動
33600 case 0:
33610 No=-1:sp_on 14,1:sp_on 13,0
33620 pause 200:goto Buka_Input_Seireki2:
33630 '0ボタンからokボタン 右に移動　ここまで
33640 'OKボタンで右を押して何もしない
33650 case -1:
33660 pause 200:goto Buka_Input_Seireki2:
33670 case 1:
33680 No=2:sp_on 9,1:sp_on 6,0
33690 pause 200:goto Buka_Input_Seireki2:
33700 case 2:
33710 No=3:sp_on 12,1:sp_on 9,0
33720 pause 200:goto Buka_Input_Seireki2:
33730 case 3:
33740 pause 200:goto Buka_Input_Seireki2:
33750 case 4:
33760 No=5:sp_on 8,1:sp_on 5,0
33770 pause 200:goto Buka_Input_Seireki2:
33780 case 5:
33790 No=6:sp_on 11,1:sp_on 8,0
33800 pause 200:goto Buka_Input_Seireki2:
33810 case 7:
33820 No=8:sp_on 7,1:sp_on 4,0
33830 pause 200:goto Buka_Input_Seireki2:
33840 case 8:
33850 No=9:sp_on 10,1:sp_on 7,0
33860 pause 200:goto Buka_Input_Seireki2:
33870 case 9:
33880 pause 200:goto Buka_Input_Seireki2:
33890 case 6:
33900 pause 200:goto Buka_Input_Seireki2:
33910 end select
33920 'Okから右ボタンを押して何もしない ここまで
33930 endif
33940 '十字キー　ここまで
33950 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
33960 'ここからコメント
33970 '右の丸ボタン決定を押した数:count
33980 'if ((bg=2) or (key$=chr$(13))) then
33990 'select case count
34000 'case 0:
34010 'count=1
34020 'if (No = -1) then
34030 'count = 0
34040 'Okボタンを押したとき
34050 '
34060 'goto Buka_Input_Seireki2:
34070 'else
34080 'Okボタン以外が押されたとき
34090 'if (No >= 1 and No <= 2) then
34100 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
34110 'buf_buka_year = No
34120 'buf_Buka_Born_Day(0) = bufyear
34130 'locate 2,3
34140 'color rgb(255,255,255)
34150 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34160 'goto Buka_Input_Seireki2:
34170 'else
34180 'count=0
34190 'ui_msg"数字が範囲外になります。"
34200 'buf_buka_year$ ="":buf_buka_year=0
34210 'goto Buka_Input_Seireki2:
34220 'endif
34230 'endif
34240 'case 1:
34250 'count = 2
34260 'if (No = -1) then
34270 'count = 1
34280 'goto Buka_Input_Seireki2:
34290 'else
34300 'b = val(buf_buka_year$)
34310 'buf_buka_year = b * 10 + No
34320 'buf_buka_year$ = str$(buf_buka_year)
34330 'buf_Buka_Born_Day(0) = bufyear
34340 'locate 1,3
34350 'color rgb(255,255,255)
34360 'print "                                                                "
34370 'locate 1,3
34380 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34390 'if (No = -1) then
34400 'count=1
34410 'goto Buka_Input_Seireki2:
34420 'endif
34430 'case 2:
34440 'count = 3
34450 'if (No = -1) then
34460 'count = 2
34470 'buf_Buka_Born_Day(0)=bufyear
34480 'goto Buka_Input_Seireki2:
34490 'else
34500 'b = val(buf_buka_year$)
34510 'buf_buka_year = b*10 + No
34520 'buf_buka_year$ = str$(buf_buka_year)
34530 'locate 1,3
34540 'color rgb(255,255,255)
34550 'print "                                        "
34560 'locate 1,3
34570 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
34580 'goto Buka_Input_Seireki2:
34590 'endif
34600 'case 3:
34610 'count=4
34620 'if (No = -1) then
34630 'count=3
34640 'goto Buka_Input_Seireki2:
34650 'else
34660 'b = buf_buka_year
34670 'buf_buka_year = b * 10 + No
34680 'buf_buka_year$=str$(buf_buka_year)
34690 'locate 1,3
34700 'color RGB(255,255,255)
34710 'print "                                      "
34720 'locate 1,3
34730 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34740 'buf_year=val(buf_year$)
34750 'year=val(buf_year$)
34760 'if (No=-1) then
34770 'goto Input_Born_Month:
34780 'else
34790 'goto Buka_Input_Seireki2:
34800 'endif
34810 'case 4:
34820 'bufyear=buf_year
34830 'if (No=-1) then
34840 'buf_year = val(buf_year$)
34850 'bufyear = buf_year
34860 'sp_on 14,0
34870 'goto Buka_Input_Born_Month:
34880 'else
34890 'goto Buka_Input_Seireki2:
34900 'endif
34910 'end select
34920 'endif
34930 'if (bg2 = 2) then
34940 'select case count2
34950 'case 0:
34960 'if (No = -1) then
34970 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
34980 'count=0
34990 'locate 1,3
35000 'color rgb(255,255,255)
35010 'print "                                      "
35020 'locate 1,3
35030 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
35040 'goto Buka_Input_Seireki2:
35050 'else
35060 '(buf_year=0) then
35070 'buf_buka_year=0:buf_buka_year$="****"
35080 'goto Buka_Input_Seireki2:
35090 'endif
35100 'endif
35110 'end select
35120 'endif
35130 'end
35140 'ここまでコメント
35150 '================================================================
35160 if ((bg=2) or (key$=chr$(13))) then
35170 select case count
35180 case 0:
35190 count = 1
35200 if (No=-1) then
35210 count = 0
35220 buf_Jyoushi_Born_Day(0) = No
35230 'Okボタンを押したとき
35240 goto Jyoushi_Input_Seireki2:
35250 else
35260 'Okボタン以外が押されたとき
35270 if (No>=1 and No<=2) then
35280 buf_year$="":buf_year$=str$(No)
35290 buf_year=No
35300 buf_Buka_Born_Day(0)=No
35310 locate 1,3
35320 color rgb(255,255,255)
35330 print "部下の生まれた年代(西暦4桁):";buf_year$
35340 goto Buka_Input_Seireki2:
35350 else
35360 count=0
35370 ui_msg"数字が範囲外になります。"
35380 buf_year$="":buf_year=0
35390 goto Buka_Input_Seireki2:
35400 endif
35410 endif
35420 case 1:
35430 count = 2
35440 if (No = -1) then
35450 count = 1
35460 goto Buka_Input_Seireki2:
35470 else
35480 b = val(buf_year$)
35490 buf_year = b * 10 + No
35500 buf_year$ = str$(buf_year)
35510 buf_Buka_Born_Day(0)=buf_year
35520 locate 1,3
35530 color rgb(255,255,255)
35540 print "                                                                "
35550 locate 1,3
35560 print "部下の生まれた年代(西暦4桁):"+buf_year$
35570 'if (No = -1) then
35580 'count=1
35590 goto Buka_Input_Seireki2:
35600 endif
35610 case 2:
35620 count=3
35630 if (No=-1) then
35640 count =2
35650 goto Buka_Input_Seireki2:
35660 else
35670 b = val(buf_year$)
35680 buf_year = b*10 + No
35690 buf_year$ = str$(buf_year)
35700 buf_Buka_Born_Day(0) = buf_year
35710 locate 1,3
35720 color rgb(255,255,255)
35730 print "                                        "
35740 locate 1,3
35750 print "部下の生まれた年代(西暦4桁):";buf_year$
35760 goto Buka_Input_Seireki2:
35770 endif
35780 case 3:
35790 count=4
35800 if (No = -1) then
35810 count=3
35820 goto Buka_Input_Seireki2:
35830 else
35840 b = val(buf_year$)
35850 buf_year=b*10+No
35860 buf_year$=str$(buf_year)
35870 buf_Jyoushi_Born_Day(0)=buf_year
35880 locate 1,3
35890 color RGB(255,255,255)
35900 print "                                      "
35910 locate 1,3
35920 print "部下の生まれた年代(西暦4桁):";buf_year$
35930 buf_year=val(buf_year$)
35940 'year=val(buf_year$)
35950 'if (No=-1) then
35960 'goto Input_Born_Month:
35970 'else
35980 goto Buka_Input_Seireki2:
35990 endif
36000 case 4:
36010 'bufyear=buf_year
36020 if (No=-1) then
36030 buf_year = val(buf_year$)
36040 buf_Buka_Born_Day(0)=buf_year
36050 sp_on 14,0
36060 goto Buka_Input_Born_Month:
36070 else
36080 goto Buka_Input_Seireki2:
36090 endif
36100 end select
36110 endif
36120 '================================================================
36130 'ここにコピーする。
36140 '================================================================
36150 'Input"部下の生れた年代(4桁,〜2025年):",year
36160 'if year > 2025 then goto Jyoushi_Input_Seireki:
36170 'if year = 123 then cls 3:cls 4:goto Main_Screen:
36180 '"4桁目"
36190 'bufyear4 = fix(year / 1000)
36200 '"3桁目"
36210 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
36220 '"2桁目"
36230 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
36240 '"1桁目"
36250 'bufyear1 = fix((year - ((bufyear4*
36260 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
36270 '1.部下の生まれた年代'
36280 '2.部下の生まれた月'
36290 Buka_Input_Born_Month:
36300 cls 3:play "":count=0:count2=0
36310 'No=-1:Okのとき
36320 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
36330 for i=0 to 1
36340 buf_month(i)=0
36350 next i
36360 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
36370 gload Gazo$ + "Screen1.png",0,0,0
36380 gload Gazo$ + "downscreen.png",0,0,800
36390 'Init"kb:4"
36400 '音声ファイル再生 2023.06.07
36410 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
36420 font 48
36430 locate 0,1
36440 '文字色：黒　 color rgb(0,0,0)
36450 '文字色:白
36460 color rgb(255,255,255)
36470 print "部下の生まれた月を入れて下さい" + chr$(13)
36480 '文字色:白
36490 color rgb(255,255,255)
36500 locate 1,3
36510 '文字色:白
36520 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
36530 color rgb(255,0,0)
36540 'locate 4,6:print ":7"
36550 'locate 9,6:print ":8"
36560 'locate 12,6:print ":9"
36570 locate 4,6
36580 '文字色:赤
36590 print ":7  :8  :9" + chr$(13)
36600 color rgb(255,0,0)
36610 locate 4,8
36620 print ":4  :5  :6" + chr$(13)
36630 color rgb(255,0,0)
36640 locate 4,10
36650 print ":1  :2  :3" + chr$(13)
36660 locate 4,12
36670 print "    :0"
36680 locate 12,12
36690 color rgb(0,0,255)
36700 print ":Ok"
36710 sp_on 4,0: sp_on 5,0:sp_on 6,0
36720 sp_on 7,0:sp_on 8,0:sp_on 9,0
36730 sp_on 10,0:sp_on 11,0:sp_on 12,0
36740 sp_on 13,0:sp_on 14,1
36750 Buka_Input_Born_Month2:
36760 key$="":bg=0:y=0:y2=0:bg2=0
36770 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
36780 key$ = inkey$
36790 bg = strig(1)
36800 y = stick(1)
36810 y2 = stick(0)
36820 bg2 = strig(0)
36830 pause 5
36840 wend
36850 '十字キー　ここから
36860 '上の矢印　または、十字キー上
36870 if ((y = -1) or (key$ = chr$(30))) then
36880 select case No
36890 'No=-1:okのとき:初期の状態
36900 '0kボタンから３に移動
36910 '上に行く 処理
36920 case -1:
36930 No=3:sp_on 12,1:sp_on 14,0
36940 pause 200:goto Buka_Input_Born_Month2:
36950 '選択肢:3
36960 '3ボタンから 6に移動
36970 case 3:
36980 No=6:sp_on 12,0:sp_on 11,1
36990 pause 200:goto Buka_Input_Born_Month2:
37000 '6ボタンから ９に移動
37010 case 6:
37020 No=9:sp_on 10,1:sp_on 11,0
37030 pause 200:goto Buka_Input_Born_Month2:
37040 '6ボタンから ９に移動　ここまで
37050 '9で上を押して何もしない
37060 case 9:
37070 '何もしない
37080 No=9
37090 pause 200:goto Buka_Input_Born_Month2:
37100 '9で上を押しても何もしない　ここまで
37110 '上　 0ボタンから2ボタン
37120 'sp_on 6,1:1
37130 'sp_on 8,1:5
37140 'sp_on 7,1:7
37150 case 0:
37160 No=2:sp_on 13,0:sp_on 9,1:
37170 pause 200:goto Buka_Input_Born_Month2:
37180 '上  0ボタンから2ボタン　ここまで
37190 '2から５になる 上
37200 case 2:
37210 No=5:sp_on 8,1:sp_on 9,0:
37220 pause 200:goto Buka_Input_Born_Month2:
37230 case 5:
37240 No=8:sp_on 7,1:sp_on 8,0
37250 pause 200:goto Buka_Input_Born_Month2:
37260 case 8:
37270 pause 200:goto Buka_Input_Born_Month2:
37280 case 1:
37290 No=4:sp_on 5,1:sp_on 6,0
37300 pause 200:goto Buka_Input_Born_Month2:
37310 case 4:
37320 No=7:sp_on 4,1:sp_on 5,0
37330 pause 200:goto Buka_Input_Born_Month2:
37340 case 7:
37350 pause 200:goto Buka_Input_Born_Month2:
37360 end select
37370 endif
37380 '左３　ここまで
37390 '下の矢印
37400 '中央 2
37410 if ((y=1) or (key$ = chr$(31))) then
37420 select case No
37430 '9から６に下げる
37440 case 9:
37450 No=6:sp_on 11,1:sp_on 10,0
37460 pause 200:goto Buka_Input_Born_Month2:
37470 '6から３に下げる
37480 case 6:
37490 No=3:sp_on 12,1:sp_on 11,0
37500 pause 200:goto Buka_Input_Born_Month2:
37510 '3から０ｋに変える
37520 case 3:
37530 No=-1:sp_on 14,1:sp_on 12,0
37540 pause 200:goto Buka_Input_Born_Month2:
37550 'Okから下のボタンを押しても何もしない
37560 case -1:
37570 pause 200:goto Buka_Input_Born_Month2:
37580 case 8:
37590 No=5:sp_on 8,1:sp_on 7,0
37600 pause 200:goto Buka_Input_Born_Month2:
37610 case 5:
37620 No=2:sp_on 9,1:sp_on 8,0
37630 pause 200:goto Buka_Input_Born_Month2:
37640 case 2:
37650 No=0:sp_on 13,1:sp_on 9,0
37660 pause 200:goto Buka_Input_Born_Month2:
37670 case 0:
37680 pause 200:goto Buka_Input_Born_Month2:
37690 case 7:
37700 No=4:sp_on 5,1:sp_on 4,0
37710 pause 200:goto Buka_Input_Born_Month2:
37720 case 4:
37730 No=1:sp_on 6,1:sp_on 5,0
37740 pause 200:goto Buka_Input_Born_Month2:
37750 case 1:
37760 pause 200:goto Buka_Input_Born_Month2:
37770 end select
37780 endif
37790 '左へボタン 十字キー　左　or 　カーソル左
37800 if ((y2 = -1) or (key$ = chr$(29))) then
37810 select case No
37820 'Ok ボタン  Okから　左　０に行く
37830 case -1:
37840 No=0:sp_on 13,1:sp_on 14,0
37850 pause 200:goto Buka_Input_Born_Month2:
37860 '0 ボタン  左　何もしない
37870 case 0:
37880 pause 200:goto Buka_Input_Born_Month2:
37890 case 3:
37900 No=2:sp_on 9,1:sp_on 12,0:
37910 pause 200:goto Buka_Input_Born_Month2:
37920 case 2:
37930 No=1:sp_on 6,1:sp_on 9,0:
37940 pause 200:goto Buka_Input_Born_Month2:
37950 case 1:
37960 pause 200:goto Buka_Input_Born_Month2:
37970 case 6:
37980 No=5:sp_on 8,1:sp_on 11,0
37990 pause 200:goto Buka_Input_Born_Month2:
38000 case 5:
38010 No=4:sp_on 5,1:sp_on 8,0
38020 pause 200:goto Buka_Input_Born_Month2:
38030 case 4:
38040 pause 200:goto Buka_Input_Born_Month2:
38050 case 9:
38060 No=8:sp_on 7,1:sp_on 10,0
38070 pause 200:goto Buka_Input_Born_Month2:
38080 case 8:
38090 No=7:sp_on 4,1:sp_on 7,0
38100 pause 200:goto Buka_Input_Born_Month2:
38110 case 7:
38120 pause 200:goto Buka_Input_Born_Month2:
38130 end select
38140 endif
38150 '右  十字キー　右　or カーソル　右
38160 if ((y2 = 1) or (key$ = chr$(28))) then
38170 select case No
38180 '0ボタンからokボタン右に移動
38190 case 0:
38200 No=-1:sp_on 14,1:sp_on 13,0
38210 pause 200:goto Buka_Input_Born_Month2:
38220 '0ボタンからokボタン 右に移動　ここまで
38230 'OKボタンで右を押して何もしない
38240 case -1:
38250 pause 200:goto Buka_Input_Born_Month2:
38260 case 1:
38270 No=2:sp_on 9,1:sp_on 6,0
38280 pause 200:goto Buka_Input_Born_Month2:
38290 case 2:
38300 No=3:sp_on 12,1:sp_on 9,0
38310 pause 200:goto Buka_Input_Born_Month2:
38320 case 3:
38330 pause 200:goto Buka_Input_Born_Month2:
38340 case 4:
38350 No=5:sp_on 8,1:sp_on 5,0
38360 pause 200:goto Buka_Input_Born_Month2:
38370 case 5:
38380 No=6:sp_on 11,1:sp_on 8,0
38390 pause 200:goto Buka_Input_Born_Month2:
38400 case 7:
38410 No=8:sp_on 7,1:sp_on 4,0
38420 pause 200:goto Buka_Input_Born_Month2:
38430 case 8:
38440 No=9:sp_on 10,1:sp_on 7,0
38450 pause 200:goto Buka_Input_Born_Month2:
38460 case 9:
38470 pause 200:goto Buka_Input_Born_Month2:
38480 case 6:
38490 pause 200:goto Buka_Input_Born_Month2:
38500 end select
38510 'Okから右ボタンを押して何もしない ここまで
38520 endif
38530 '十字キー　ここまで
38540 '右の丸ボタン　決定キー
38550 if ((bg=2) or (key$=chr$(13))) then
38560 select case count
38570 case 0:
38580 count=1:buf_buka_Month$="**":buf_buka_Month$=str$(No):buf_buka_month=No
38590 buf_Buka_Born_Day(1)=buf_buka_month
38600 locate 1,3
38610 color RGB(255,255,255)
38620 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
38630 goto Buka_Input_Born_Month2:
38640 case 1:
38650 count = 2:c = No
38660 c = val(buf_buka_Month$)
38670 if (No = -1) then
38680 'count=0
38690 month=buf_buka_month
38700 buf_buka_month=val(buf_buka_Month$)
38710 month=buf_buka_month
38720 '生まれた日に飛ぶ
38730 goto Buka_Input_Born_Day:
38740 else
38750 buf_buka_month = c*10 + No
38760 buf_buka_Month$= str$(buf_buka_month)
38770 buf_Buka_Born_Day(1)=buf_buka_month
38780 locate 1,3
38790 color Rgb(255,255,255)
38800 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
38810 goto Buka_Input_Born_Month2:
38820 endif
38830 case 2:
38840 count=3
38850 'c= val(buf_Month$)
38860 'buf_month = c*10 + No
38870 'buf_Month$ = str$(buf_month)
38880 'locate 2,3
38890 'print "部下の生まれた月(1月～12月):";buf_Month$
38900 'goto Buka_Input_Born_Month2:
38910 'case 3:
38920 'count=4
38930 'b=val(buf_month$)
38940 'buf_month=c*10+No
38950 'buf_Month$=str$(buf_month)
38960 'locate 2,3
38970 'print "部下の生まれた月(1月～12月):";buf_Month$
38980 'buf_month=val(buf_Month$)
38990 'year=val(buf_year$)
39000 if (No=-1) then
39010 goto Buka_Input_Born_Day:
39020 else
39030 'goto Input_Born_Month2:
39040 endif
39050 'case 4:
39060 'bufyear=buf_year
39070 'if (No=-1) then
39080 'buf_month = val(buf_Month$)
39090 'month = buf_month
39100 'sp_on 14,0
39110 'goto Input_Born_Day:
39120 'else
39130 'goto Input_Born_Month2:
39140 'endif
39150 end select
39160 endif
39170 '左の丸ボタン　キャンセル
39180 if (bg2=2) then
39190 select case count2
39200 case 0:
39210 if (No = -1) then
39220 buf_buka_month=0:buf_buka_Month$="**"
39230 count=0
39240 goto rewrite2:
39250 else
39260 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
39270 buf_month=0:buf_Month$="**"
39280 locate 2,3
39290 color rgb(255,255,255)
39300 print "                                       "
39310 goto rewrite2:
39320 if (No>12) then
39330 ui_msg"値が範囲外です。"
39340 goto rewrite2:
39350 endif
39360 endif
39370 endif
39380 rewrite2:
39390 locate 2,3
39400 color rgb(255,255,255)
39410 print "                                      "
39420 locate 2,3
39430 print "部下の生まれた月(1月~12月):";buf_buka_Month$
39440 goto Buka_Input_Born_Month2:
39450 end select
39460 'endif
39470 endif
39480 end
39490 '2.部下の生まれた月'
39500 '3.部下の生まれた日'
39510 '生れた日を入力
39520 Buka_Input_Born_Day:
39530 '生まれた日入力
39540 cls 3:play ""
39550 'No=-1:Okのとき
39560 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
39570 for i=0 to 1
39580 buf_day(i)=0
39590 next i
39600 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
39610 gload Gazo$ + "Screen1.png",0,0,0
39620 gload Gazo$ + "downscreen.png",0,0,800
39630 'Init"kb:2"
39640 '音声ファイル再生 2023.06.07
39650 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
39660 font 48
39670 locate 0,1
39680 '文字色：黒　 color rgb(0,0,0)
39690 color rgb(255,255,255)
39700 print "部下の生まれた日を入れて下さい" + chr$(13)
39710 color rgb(255,255,255)
39720 locate 1,3
39730 print "部下の生まれた日(1日~31日):";buf_Day$
39740 color rgb(255,0,0)
39750 'locate 4,6:print ":7"
39760 'locate 9,6:print ":8"
39770 'locate 12,6:print ":9"
39780 locate 4,6
39790 print ":7  :8  :9" + chr$(13)
39800 color rgb(255,0,0)
39810 locate 4,8
39820 print ":4  :5  :6" + chr$(13)
39830 color rgb(255,0,0)
39840 locate 4,10
39850 print ":1  :2  :3" + chr$(13)
39860 locate 4,12
39870 print "    :0"
39880 locate 12,12
39890 color rgb(0,0,255)
39900 print ":Ok"
39910 sp_on 4,0: sp_on 5,0:sp_on 6,0
39920 sp_on 7,0:sp_on 8,0:sp_on 9,0
39930 sp_on 10,0:sp_on 11,0:sp_on 12,0
39940 sp_on 13,0:sp_on 14,1
39950 Buka_Input_Born_Day2:
39960 key$="":bg=0:y=0:y2=0:bg2=0
39970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
39980 key$ = inkey$
39990 bg = strig(1)
40000 y = stick(1)
40010 y2 = stick(0)
40020 bg2 = strig(0)
40030 pause 5
40040 wend
40050 '十字キー　ここから
40060 '上の矢印　または、十字キー上
40070 if ((y = -1) or (key$ = chr$(30))) then
40080 select case No
40090 'No=-1:okのとき:初期の状態
40100 '0kボタンから３に移動
40110 '上に行く 処理
40120 case -1:
40130 No=3:sp_on 12,1:sp_on 14,0
40140 pause 200:goto Buka_Input_Born_Day2:
40150 '選択肢:3
40160 '3ボタンから 6に移動
40170 case 3:
40180 No=6:sp_on 12,0:sp_on 11,1
40190 pause 200:goto Buka_Input_Born_Day2:
40200 '6ボタンから ９に移動
40210 case 6:
40220 No=9:sp_on 10,1:sp_on 11,0
40230 pause 200:goto Buka_Input_Born_Day2:
40240 '6ボタンから ９に移動　ここまで
40250 '9で上を押して何もしない
40260 case 9:
40270 '何もしない
40280 No=9
40290 pause 200:goto Buka_Input_Born_Day2:
40300 '9で上を押しても何もしない　ここまで
40310 '上　 0ボタンから2ボタン
40320 'sp_on 6,1:1
40330 'sp_on 8,1:5
40340 'sp_on 7,1:7
40350 case 0:
40360 No=2:sp_on 13,0:sp_on 9,1:
40370 pause 200:goto Buka_Input_Born_Day2:
40380 '上  0ボタンから2ボタン　ここまで
40390 '2から５になる 上
40400 case 2:
40410 No=5:sp_on 8,1:sp_on 9,0:
40420 pause 200:goto Buka_Input_Born_Day2:
40430 case 5:
40440 No=8:sp_on 7,1:sp_on 8,0
40450 pause 200:goto Buka_Input_Born_Day2:
40460 case 8:
40470 pause 200:goto Buka_Input_Born_Day2:
40480 case 1:
40490 No=4:sp_on 5,1:sp_on 6,0
40500 pause 200:goto Buka_Input_Born_Day2:
40510 case 4:
40520 No=7:sp_on 4,1:sp_on 5,0
40530 pause 200:goto Buka_Input_Born_Day2:
40540 case 7:
40550 pause 200:goto Buka_Input_Born_Day2:
40560 end select
40570 endif
40580 '左３　ここまで
40590 '下の矢印
40600 '中央 2
40610 if ((y=1) or (key$ = chr$(31))) then
40620 select case No
40630 '9から６に下げる
40640 case 9:
40650 No=6:sp_on 11,1:sp_on 10,0
40660 pause 200:goto Buka_Input_Born_Day2:
40670 '6から３に下げる
40680 case 6:
40690 No=3:sp_on 12,1:sp_on 11,0
40700 pause 200:goto Buka_Input_Born_Day2:
40710 '3から０ｋに変える
40720 case 3:
40730 No=-1:sp_on 14,1:sp_on 12,0
40740 pause 200:goto Buka_Input_Born_Day2:
40750 'Okから下のボタンを押しても何もしない
40760 case -1:
40770 pause 200:goto Buka_Input_Born_Day2:
40780 case 8:
40790 No=5:sp_on 8,1:sp_on 7,0
40800 pause 200:goto Buka_Input_Born_Day2:
40810 case 5:
40820 No=2:sp_on 9,1:sp_on 8,0
40830 pause 200:goto Buka_Input_Born_Day2:
40840 case 2:
40850 No=0:sp_on 13,1:sp_on 9,0
40860 pause 200:goto Buka_Input_Born_Day2:
40870 case 0:
40880 pause 200:goto Buka_Input_Born_Day2:
40890 case 7:
40900 No=4:sp_on 5,1:sp_on 4,0
40910 pause 200:goto Buka_Input_Born_Day2:
40920 case 4:
40930 No=1:sp_on 6,1:sp_on 5,0
40940 pause 200:goto Buka_Input_Born_Day2:
40950 case 1:
40960 pause 200:goto Buka_Input_Born_Day2:
40970 end select
40980 endif
40990 '左へボタン 十字キー　左　or 　カーソル左
41000 if ((y2 = -1) or (key$ = chr$(29))) then
41010 select case No
41020 'Ok ボタン  Okから　左　０に行く
41030 case -1:
41040 No=0:sp_on 13,1:sp_on 14,0
41050 pause 200:goto Buka_Input_Born_Day2:
41060 '0 ボタン  左　何もしない
41070 case 0:
41080 pause 200:goto Buka_Input_Born_Day2:
41090 case 3:
41100 No=2:sp_on 9,1:sp_on 12,0:
41110 pause 200:goto Buka_Input_Born_Day2:
41120 case 2:
41130 No=1:sp_on 6,1:sp_on 9,0:
41140 pause 200:goto Buka_Input_Born_Day2:
41150 case 1:
41160 pause 200:goto Buka_Input_Born_Day2:
41170 case 6:
41180 No=5:sp_on 8,1:sp_on 11,0
41190 pause 200:goto Buka_Input_Born_Day2:
41200 case 5:
41210 No=4:sp_on 5,1:sp_on 8,0
41220 pause 200:goto Buka_Input_Born_Day2:
41230 case 4:
41240 pause 200:goto Buka_Input_Born_Day2:
41250 case 9:
41260 No=8:sp_on 7,1:sp_on 10,0
41270 pause 200:goto Buka_Input_Born_Day2:
41280 case 8:
41290 No=7:sp_on 4,1:sp_on 7,0
41300 pause 200:goto Buka_Input_Born_Day2:
41310 case 7:
41320 pause 200:goto Buka_Input_Born_Day2:
41330 end select
41340 endif
41350 '右  十字キー　右　or カーソル　右
41360 if ((y2 = 1) or (key$ = chr$(28))) then
41370 select case No
41380 '0ボタンからokボタン右に移動
41390 case 0:
41400 No=-1:sp_on 14,1:sp_on 13,0
41410 pause 200:goto Buka_Input_Born_Day2:
41420 '0ボタンからokボタン 右に移動　ここまで
41430 'OKボタンで右を押して何もしない
41440 case -1:
41450 pause 200:goto Buka_Input_Born_Day2:
41460 case 1:
41470 No=2:sp_on 9,1:sp_on 6,0
41480 pause 200:goto Buka_Input_Born_Day2:
41490 case 2:
41500 No=3:sp_on 12,1:sp_on 9,0
41510 pause 200:goto Buka_Input_Born_Day2:
41520 case 3:
41530 pause 200:goto Buka_Input_Born_Day2:
41540 case 4:
41550 No=5:sp_on 8,1:sp_on 5,0
41560 pause 200:goto Buka_Input_Born_Day2:
41570 case 5:
41580 No=6:sp_on 11,1:sp_on 8,0
41590 pause 200:goto Buka_Input_Born_Day2:
41600 case 7:
41610 No=8:sp_on 7,1:sp_on 4,0
41620 pause 200:goto Buka_Input_Born_Day2:
41630 case 8:
41640 No=9:sp_on 10,1:sp_on 7,0
41650 pause 200:goto Buka_Input_Born_Day2:
41660 case 9:
41670 pause 200:goto Buka_Input_Born_Day2:
41680 case 6:
41690 pause 200:goto Buka_Input_Born_Day2:
41700 end select
41710 'Okから右ボタンを押して何もしない ここまで
41720 endif
41730 '十字キー　ここまで
41740 '右の丸ボタンを押したとき
41750 if ((bg = 2) or (key$ = chr$(13))) then
41760 'count :決定ボタンを押した回数
41770 select case (count)
41780 '1桁目入力
41790 case 0:
41800 count = 1:
41810 if (No = -1) then
41820 '1桁目　OKでは何もしない
41830 'goto check:
41840 else
41850 'ok以外のボタンを押したとき
41860 buf_buka_day = No:buf_buka_Day$=str$(No)
41870 c=No
41880 buf_Buka_Born_Day(2)=buf_buka_day
41890 locate 1,3
41900 color RGB(255,255,255)
41910 print "部下の生まれた日(1日~31日):"+buf_buka_Day$
41920 endif
41930 check2:
41940 if (No >= 1 and No <= 9) then
41950 sp_on 14,0
41960 goto Buka_Input_Born_Day2:
41970 else
41980 sp_on 14,0
41990 goto Result_Business_Aisyou:
42000 end
42010 endif
42020 case 1:
42030 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
42040 count = 2:
42050 'locate 2,3
42060 'color RGB(255,255,255)
42070 'print "生まれた日(1日~31日):";buf_Day$
42080 'Okボタンを押したときの処理
42090 '入力値　10未満のとき
42100 'c = buf_day
42110 if (No = -1) then
42120 'c=buf_day
42130 ' buf_day = c
42140 'buf_Day$ = str$(buf_day)
42150 '10以下のとき
42160 if (buf_day < 10) then
42170 sp_on 14,0
42180 goto Result_Business_Aisyou:
42190 end
42200 endif
42210 else
42220 sp_on 14,0
42230 'c=No
42240 buf_buka_day = c * 10 + No
42250 buf_buka_Day$ = str$(buf_buka_day)
42260 buf_Buka_Born_Day(2) = buf_buka_day
42270 locate 1,3
42280 color Rgb(255,255,255)
42290 print "生まれた日(1日~31日):" + buf_buka_Day$
42300 goto Buka_Input_Born_Day2:
42310 endif
42320 '生まれた日　2桁目の数字　or 1桁の数字 + ok
42330 case 2:
42340 count=0
42350 'c=val(buf_Day$)
42360 'buf_day=c*10+No
42370 'buf_Day$=str$(buf_day)
42380 'day=buf_day
42390 'locate 2,3
42400 'print "生まれた日(1日〜31日):";buf_Day$
42410 'No=-1:ok ボタンを押したとき
42420 if (No = -1) then
42430 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
42440 sp_on 14,0
42450 goto Result_Business_Aisyou:
42460 else
42470 goto Buka_Input_Born_Day2:
42480 endif
42490 'Okボタン以外を押したとき
42500 else
42510 c=val(buf_buka_Day$)
42520 buf_buka_day = c * 10 + No
42530 buf_buka_Day$ = str$(buf_buka_day)
42540 locate 1,3
42550 print "                "
42560 locate 1,3
42570 print "生まれた日(1日~31日):"+buf_buka_Day$
42580 goto Buka_Input_Born_Day2:
42590 endif
42600 case 3:
42610 count=4
42620 'c=val(buf_day$)
42630 'buf_day=c*10+No
42640 'buf_day$=str$(buf_day)
42650 'locate 2,3
42660 'print "生まれた日を入れてください:";buf_day$
42670 'year=val(buf_year$)
42680 if (No = -1) then
42690 'goto Buka_Input_Born_Day:
42700 sp_on 14,0:
42710 goto complate_jyoushi:
42720 else
42730 goto Buka_Input_Born_Month2:
42740 endif
42750 'case 4:
42760 'bufyear=buf_year
42770 'if (No=-1) then
42780 'buf_day = val(buf_day$)
42790 'bufday = buf_day
42800 'sp_on 14,0
42810 goto complate_jyoushi:
42820 'else
42830 'goto Buka_Input_Born_Day2:
42840 'endif
42850 end select
42860 endif
42870 if (bg2=2) then
42880 select case count2
42890 case 0:
42900 if (No=-1) then
42910 'buf_day=0:buf_Day$="**"
42920 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
42930 count=0
42940 buf_buka_day=0:buf_buka_Day$="**"
42950 goto rewrite_day3:
42960 else
42970 buf_buka_day=0:buf_buka_Day$="**"
42980 ui_msg"値が範囲外です"
42990 endif
43000 goto rewrite_day3:
43010 else
43020 goto rewrite_day3:
43030 endif
43040 rewrite_day3:
43050 locate 2,3
43060 color rgb(255,255,255)
43070 print "                                      "
43080 locate 1,3
43090 print "生まれた日(1日~31日):"+buf_buka_Day$
43100 goto Buka_Input_Born_Day2:
43110 end select
43120 endif
43130 '3.部下の生まれた日'
43140 '部下'
43150 '--------------------------------------------'
43160 'ビジネの相性　結果表示
43170 Result_Business_Aisyou:
43180 cls 3:init "kb:4"
43190 a=0:b=0:c=0:d=0:e=0:f=0
43200 bg=0:key$=""
43210 gload Gazo$ + "Screen1.png",0,0,0
43220 gload Gazo$ + "downscreen.png",0,0,800
43230 sp_on 14,0
43240 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
43250 buf_Buka = Kabara_Num(d,e,f)
43260 a_2 = buf_Buka
43270 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
43280 locate 0,1
43290 color rgb(255,0,0)
43300 print "●.相性診断結果１"
43310 locate 0,4:
43320 color rgb(255,255,255)
43330 print "1.上司の名前:";buffer_name$(0)
43340 locate 0,6
43350 print buf_Jyoushi_Born_Day(0);".";buf_Jyoushi_Born_Day(1);".";buf_Jyoushi_Born_Day(2);":";"数秘:";buf_Jyoushi
43360 locate 0,8
43370 print "2.部下の名前:";buffer_name$(1)
43380 locate 0,10
43390 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2);":";"数秘:";buf_Buka
43400 locate 0,12
43410 print "3.上司と部下の相性:";Result_Aisyou$
43420 locate 1,15
43430 color rgb(0,0,0)
43440 print "右の丸ボタン:相性の説明"
43450 while ((bg <> 2) and (key$ <> chr$(13)))
43460 bg = strig(1)
43470 key$ = inkey$
43480 pause 5
43490 wend
43500 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
43510 'ビジネスの相性占い　結果2　説明
43520 Result_Business_Aisyou2:
43530 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
43540 gload Gazo$ + "Screen1.png",0,0,0
43550 locate 0,1
43560 color rgb(255,0,0)
43570 print "●.相性の説明"
43580 color rgb(255,255,255)
43590 locate 0,4
43600 print "相性:";Result_Aisyou$
43610 locate 0,6:
43620 print "相性の説明:";buf$
43630 locate 0,15
43640 color rgb(0,0,0)
43650 print "右の丸ボタン:トップ,左のボタン:前の画面"
43660 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
43670 bg = strig(1)
43680 bg2 = strig(0)
43690 key$ = inkey$
43700 pause 5
43710 wend
43720 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
43730 if ((bg2 = 2)) then goto Result_Business_Aisyou:
43740 '自作関数 ここから
43750 func read_explain$(ba$)
43760 d$=""
43770 buf_String$=""
43780 if ba$="A" then
43790 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
43800 line input #1,a$
43810 a1$=mid$(a$,1,15)
43820 a2$=mid$(a$,16,len(a$))
43830 a$=a1$+chr$(13)+a2$
43840 buf_String$ = a$
43850 close #1
43860 endif
43870 if ba$="B"  then
43880 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
43890 line input #1,b$
43900 buf_String$ = b$
43910 close #1
43920 endif
43930 if ba$="C"  then
43940 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
43950 line input #1,c$
43960 c1$=Mid$(c$,1,15)
43970 c2$=Mid$(c$,16,33)
43980 c3$=c1$+chr$(13)+c2$
43990 buf_String$ = c3$
44000 close #1
44010 endif
44020 if ba$="D" then
44030 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
44040 line input #1,d$
44050 d1$=mid$(d$,1,15)
44060 d2$=mid$(d$,16,30)
44070 d3$=mid$(d$,37,42)
44080 d4$=d1$+chr$(13)+d2$+chr$(13)+d3$
44090 buf_String$ = d4$
44100 close #1
44110 d2$=mid$(d1$,25,30)
44120 endif
44130 if ba$="E"  then
44140 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
44150 line input #1,e$
44160 e1$=Mid$(e$,1,16)
44170 e2$=Mid$(e$,17,31)
44180 e3$=Mid$(e$,32,47)
44190 e4$=Mid$(e$,48,len(e$))
44200 e$ = e1$ + e2$ + e3$ +e4$
44210 buf_String$ = e$
44220 close #1
44230 endif
44240 if ba$="F" then
44250 '改行を追加して表示を調整
44260 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
44270 line input #1,f$
44280 f1$=Mid$(f$,1,12)
44290 f2$=Mid$(f$,12,len(f$))
44300 buf_String$ = f1$+chr$(13)+f2$
44310 close #1
44320 endif
44330 if ba$="G" then
44340 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
44350 line input #1,g$
44360 buf_String$ = g$
44370 close #1
44380 endif
44390 if ba$="H" then
44400 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
44410 line input #1,h$
44420 buf_String$ = h$
44430 close #1
44440 endif
44450 if ba$="I" then
44460 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
44470 line input #1,i$
44480 i1$=Mid$(i$,1,10)
44490 i2$=Mid$(i$,11,23)
44500 i3$=Mid$(i$,24,40)
44510 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
44520 buf_String$ = i$
44530 close #1
44540 endif
44550 buffer$=buf_String$
44560 endfunc buffer$
44570 'カバラ数（数秘番号を求める）
44580 func Kabara_Num(buffer_Year,month,day)
44590 '=============================
44600 'a1:4桁のうちの1桁目を求める
44610 '例 a1:1234の4が1桁目
44620 'a2:4桁のうちの2桁目を求める
44630 '例:a2:1234の3が2桁目
44640 'a3:4桁のうちの3桁目を求める
44650 '例 a3:1234の2が3桁目
44660 'a4:4桁のうちの4桁目を求める
44670 '例 a4:1234の1が4桁目
44680 '==============================
44690 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
44700 Year = buffer_Year
44710 '処理1　整数部分を取り出す。
44720 a4 = fix(Year / 1000)
44730 a3 = fix(Year / 100) - (a4 * 10)
44740 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
44750 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
44760 '処理　２　取り出した整数部分を足す。
44770 a_ = a1 + a2 + a3 + a4 +month + day
44780 'a1=0:a2=0:a3=0:a4=0
44790 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
44800 buffer = a_
44810 'else
44820 goto recomp2:
44830 'if (a_ = 10) then
44840 '  buffer = 1
44850 endif
44860 recomp2:
44870 a5=0:a6=0
44880 a5 = fix(a_ / 10)
44890 a6 = (a_) - (a5 * 10)
44900 a_ = a5 + a6
44910 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
44920 '結果に行く
44930 goto Res2:
44940 '  if ((a_>11) and (a_<99)) then
44950 else
44960 '再度計算
44970 goto recomp2:
44980 endif
44990 '     a1 = fix(a_ / 10)
45000 '     a2 = a_ - (a1 * 10)
45010 '     a_ = a1 + a2
45020 '     buffer = a_
45030 'endif
45040 'else
45050 '    bffer = a_
45060 'endif
45070 'endif
45080 'else
45090 'talk "プログラムを終了します。"
45100 'end
45110 'endif
45120 'kabara = 10
45130 Res2:
45140 kabara = a_
45150 endfunc kabara
45160 func Kabara_Aisyou$(buff1,buff2)
45170 a=0:b=0
45180 '範囲　1~9
45190 if ((buff1 > 0 and buff1 < 10)) then
45200 a = buff1
45210 else
45220 Select case buff1
45230 case 11:
45240 buff1=9:a=buff1
45250 case 22:
45260 buff1=10:a=buff1
45270 end select
45280 endif
45290 '範囲　１~９
45300 if ((buff2 > 0 and buff2 < 10)) then
45310 b = buff2
45320 else
45330 select case buff2
45340 case 11:
45350 buff2=9:b=buff2
45360 case 12:
45370 buff2=10:b=buff2
45380 end select
45390 endif
45400 Aisyou$ = Buffer_Business_Aisyou$(a,b)
45410 endfunc Aisyou$
45420 '=============================
45430 '自作関数 ここまで
45440 '1.数秘術　トップ画面
45450 '
45460 'Data_eraseを一番最後に持ってくる
45470 '=============================
45480 Data_erase:
45490 'メモリー削除
45500 erase buf_name1$
45510 erase buf_name2$
45520 erase buffer
45530 erase buf_chart$
45540 erase Buffer_Business_Aisyou$
45550 erase buffer_name$
45560 '上司の誕生日
45570 erase buf_Jyoushi_Born_Day
45580 '部下の誕生日
45590 erase buf_Buka_Born_Day
45600 erase buf_year
45610 erase buf_month
45620 erase buf_day
45630 buffer$ = ""
45640 buf$ = ""
45650 buf_year$ = ""
45660 buf_Jyoushi_Kabara_Num = 0
45670 buf_Buka_Kabara_Num = 0
45680 count = 0
45690 buf_Month$ = ""
45700 buf_Day$ = ""
45710 b=0
45720 c=0
45730 return
