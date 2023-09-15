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
330 '2023.09.10:Ver114_20230910
340 '2023.09.17:Ver115_20230917
350 Version$ = "Ver:1.1.5_20230917"
360 'Gazo file Folder
370 Gazo$ = "./data/Picture/"
380 'Voice files 2023
390 Voice$ = "./data/Voice/Voice/"
400 'BirtheyeChart Data:20230626
410 Birth_eye_chart$ = "./data/chart_data/"
420 'Data File
430 Data$ = "./data/data/"
440 'Business Aisyou 結果説明保存フォルダ
450 Business_Aisyou_Explain$="./data/data/Business_Aisyou/"
460 '変数定義 パート
470 b=0:c=0
480 dim buf_name1$(10),buf_name2$(10)
490 dim buffer(9),buf_chart$(26,2)
500 'ビジネスの相性　データー
510 dim Buffer_Business_Aisyou$(12,12)
520 '生れた年代
530 dim buf_year(4):buf_year$ = ""
540 dim buf_month(2)
550 dim buf_day(2)
560 '生れた月
570 buf_Month$ = ""
580 '生れた日
590 buf_Day$ = ""
600 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
610 dim buffer_name$(3)
620 '1-1.上司の誕生日(数値データー)
630 dim buf_Jyoushi_Born_Day(3)
640 '1-2.上司の数秘ナンバー(数値データー)
650 buf_Jyoushi_Kabara_Num = 0
660 '2-1.部下の誕生日(数値データー)
670 dim buf_Buka_Born_Day(3)
680 '2-2.部下の数秘ナンバー(数秘データー)
690 buf_Buka_Kabara_Num = 0
700 count=0
710 '部下の数秘ナンバー
720 'File 読み込み
730 '1.ビジネスの相性占い
740 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
750 for i=0 to 11
760 for j=0 to 11
770 input #1,a$
780 Buffer_Business_Aisyou$(j,i) = a$
790 next j
800 next i
810 close #1
820 '2.Birth Eye chart$
830 '2.バーズアイグリッドを読み込む
840 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
850 for j=0 to 25
860 for i=0 to 1
870 input #1,a$
880 buf_chart$(j,i) = a$
890 next i
900 next j
910 close #1
920 'File 読み込み　ここまで
930 'Main画面
940 screen 1,1,1,1
950 Main_Screen:
960 cls 3:
970 No=0
980 gload Gazo$ + "Selection.png",1,5,200
990 gload Gazo$ + "Selection.png",1,5,300
1000 gload Gazo$ + "Selection.png",1,5,400
1010 gload Gazo$ + "Selection.png",1,5,500
1020 '4
1030 gload Gazo$ + "Selection.png",1,35,300
1040 '5
1050 gload Gazo$ + "Selection.png",1,35,400
1060 '6
1070 gload Gazo$ + "Selection.png",1,35,500
1080 '7
1090 gload Gazo$ + "Selection.png",1,70,300
1100 '8
1110 gload Gazo$ + "Selection.png",1,70,400
1120 '9
1130 gload Gazo$ + "Selection.png",1,70,500
1140 '10
1150 gload Gazo$ + "Selection.png",1,110,300
1160 '11
1170 gload Gazo$ + "Selection.png",1,110,400
1180 '12
1190 gload Gazo$ + "Selection.png",1,110,500
1200 '13:0
1210 gload Gazo$ + "Selection.png",1,150,400
1220 gload Gazo$ + "Selection.png",1,200,400
1230 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1240 gload Gazo$ + "downscreen.png",0,0,800
1250 sp_def 0,(5,300),32,32
1260 sp_def 1,(5,400),32,32
1270 sp_def 2,(5,500),32,32
1280 sp_def 3,(5,600),32,32
1290 '1
1300 sp_def 4,(35,300),32,32
1310 '2
1320 sp_def 5,(35,400),32,32
1330 '3
1340 sp_def 6,(35,500),32,32
1350 '4
1360 sp_def 7,(70,300),32,32
1370 '5
1380 sp_def 8,(70,400),32,32
1390 '6
1400 sp_def 9,(70,500),32,32
1410 '7
1420 sp_def 10,(110,300),32,32
1430 '8
1440 sp_def 11,(110,400),32,32
1450 '9
1460 sp_def 12,(110,400),32,32
1470 sp_def 13,(150,400),32,32
1480 sp_def 14,(200,400),32,32
1490 'Sprite OFF
1500 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1510 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1520 sp_put 0,(5,300),0,0
1530 sp_put 1,(5,400),1,0
1540 sp_put 2,(5,500),2,0
1550 sp_put 3,(5,600),3,0
1560 '1
1570 sp_put 4,(130,300),4,0
1580 '2
1590 sp_put 5,(130,400),5,0
1600 '3
1610 sp_put 6,(130,500),6,0
1620 '4
1630 sp_put 7,(340,300),7,0
1640 '5
1650 sp_put 8,(340,400),8,0
1660 '6
1670 sp_put 9,(340,500),9,0
1680 '7
1690 sp_put 10,(540,300),10,0
1700 '8
1710 sp_put 11,(540,400),11,0
1720 '9
1730 sp_put 12,(540,500),12,0
1740 '
1750 sp_put 13,(340,600),13,0
1760 sp_put 14,(540,600),14,0
1770 Main_Top:
1780 'Main Message 2023.06.07
1790 '再生を止める
1800 play ""
1810 init "kb:4"
1820 'font 32:
1830 font 48
1840 print chr$(13) + chr$(13) + chr$(13)
1850 color rgb(217,255,212)
1860 print "番号を選んでください" + chr$(13)
1870 '0
1880 print " :1.数秘術占い" + chr$(13)
1890 '1
1900 print " :2.設 定" + chr$(13)
1910 '2
1920 print " :3.ヘルプ" + chr$(13)
1930 '3
1940 print " :4.(プログラムを)終了する" + chr$(13)
1950 COLOR rgb(0,0,0):No=0
1960 locate 1,15
1970 print "                                       "
1980 locate 1,15:print "1.数秘術占いを選択"
1990 play Voice$ + "Voice_Main_Message_20230607.mp3"
2000 Main_Screen_Select:
2010 y = 0:key$ = "":bg = 0:bg2=0
2020 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2030 y = stick(1)
2040 '"May (2023)"
2050 key$ = inkey$
2060 bg = strig(1)
2070 bg2 = strig(0)
2080 pause 2
2090 wend
2100 '1.
2110 'ジョイパッドのソース ソート　ここから
2120 'カーソル　下 or 十字キー下
2130 if ((y = 1) or (key$ = chr$(31))) then
2140 select case No
2150 case 0:
2160 '1
2170 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2180 case 1:
2190 '2
2200 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2210 case 2:
2220 '3
2230 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2240 case 3:
2250 '0
2260 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2270 end select
2280 endif
2290 '2.
2300 'カーソル　上　or 十字キー  上
2310 if ((y = -1) or (key$ = chr$(30))) then
2320 select case No
2330 case 0:
2340 '3
2350 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2360 case 1:
2370 '0
2380 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2390 case 2:
2400 '1
2410 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2420 case 3:
2430 '2
2440 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2450 end select
2460 endif
2470 'ジョイパッド　ソース 部分　ここまで
2480 'ジョイパッド右　　or Enter key 決定
2490 if ((bg = 2) OR (key$ = chr$(13))) then
2500 select case No
2510 case 0:
2520 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2530 case 1:
2540 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2550 case 2:
2560 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2570 case 3:
2580 play "":pause 200
2590 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2600 end select
2610 endif
2620 if (bg2 = 2) then
2630 play "":pause 200
2640 play Voice$ + "Voice_Main_Message_20230607.mp3"
2650 goto Main_Screen_Select:
2660 endif
2670 'Version
2680 Version:
2690 cls 3:PLAY ""
2700 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2710 gload Gazo$ + "downscreen.png",0,0,800
2720 init"kb:4":font 32
2730 'talk"バージョン情報です"
2740 'Message :Version
2750 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2760 locate 0,5
2770 color rgb(0,0,0)
2780 print "・Title:数秘術占い";chr$(13)
2790 print "・" + Version$ + chr$(13)
2800 print "・Author:licksjp"+chr$(13)
2810 print "・E-mail:licksjp@gmail.com" + chr$(13)
2820 locate 0,18
2830 print "(C)licksjp All rights " + chr$(13)
2840 locate 13,19
2850 print "reserved since 2009"+chr$(13)
2860 locate 0,23
2870 color rgb(255,255,255)
2880 print "ジョイパッドの右を押してください"
2890 Versionn_Selection:
2900 bg = 0:key$ = "":bg2 = 0
2910 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2920 bg = strig(1)
2930 key$ = inkey$
2940 bg2 = strig(0)
2950 pause 2
2960 wend
2970 if ((bg = 2) or (key$ = chr$(13))) then
2980 pause 200:cls 4:goto Main_Screen:
2990 endif
3000 if (bg2=2) then
3010 play "":pause 200
3020 play Voice$ + "Voice_Version_Message_20230607.mp3"
3030 goto Versionn_Selection:
3040 endif
3050 '1.数秘ナンバーを求める
3060 '誕生日入力(生れた年代)
3070 Input_Seireki:
3080 cls 3:play "":count=0:count2=0
3090 'No=-1:Okのとき
3100 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3110 for i=0 to 3
3120 buf_year(i)=0
3130 next i
3140 gload Gazo$ + "Screen1.png",0,0,0
3150 gload Gazo$ + "downscreen.png",0,0,800
3160 'Init"kb:2"
3170 '音声ファイル再生 2023.06.07
3180 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3190 font 48
3200 locate 0,1
3210 '文字色：黒　 color rgb(0,0,0)
3220 color rgb(255,255,255)
3230 print "生まれた年代を入れて下さい" + chr$(13)
3240 color rgb(255,255,255)
3250 locate 2,3
3260 print "生まれた年代(西暦4桁):";buf_year$
3270 '=============================
3280 'テンキーの色(1~９)　白 ,決定ボタン　青
3290 '=============================
3300 color rgb(255,255,255)
3310 'locate 4,6:print ":7"
3320 'locate 9,6:print ":8"
3330 'locate 12,6:print ":9"
3340 locate 4,6
3350 print ":7  :8  :9" + chr$(13)
3360 color rgb(255,255,255)
3370 locate 4,8
3380 print ":4  :5  :6" + chr$(13)
3390 color rgb(255,255,255)
3400 locate 4,10
3410 print ":1  :2  :3" + chr$(13)
3420 locate 4,12
3430 print "    :0"
3440 locate 12,12
3450 color rgb(255,0,0)
3460 print ":Ok"
3470 sp_on 4,0: sp_on 5,0:sp_on 6,0
3480 sp_on 7,0:sp_on 8,0:sp_on 9,0
3490 sp_on 10,0:sp_on 11,0:sp_on 12,0
3500 sp_on 13,0:sp_on 14,1
3510 Input_Seireki2:
3520 key$="":bg=0:y=0:y2=0:bg2=0:
3530 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3540 key$ = inkey$
3550 bg = strig(1)
3560 y = stick(1)
3570 y2 = stick(0)
3580 bg2 = strig(0)
3590 pause 5
3600 wend
3610 '十字キー　ここから
3620 '上の矢印　または、十字キー上
3630 if ((y = -1) or (key$ = chr$(30))) then
3640 select case No
3650 'No=-1:okのとき:初期の状態
3660 '0kボタンから３に移動
3670 '上に行く 処理
3680 case -1:
3690 No=3:sp_on 12,1:sp_on 14,0
3700 pause 200:goto Input_Seireki2:
3710 '選択肢:3
3720 '3ボタンから 6に移動
3730 case 3:
3740 No=6:sp_on 12,0:sp_on 11,1
3750 pause 200:goto Input_Seireki2:
3760 '6ボタンから ９に移動
3770 case 6:
3780 No=9:sp_on 10,1:sp_on 11,0
3790 pause 200:goto Input_Seireki2:
3800 '6ボタンから ９に移動　ここまで
3810 '9で上を押して何もしない
3820 case 9:
3830 '何もしない
3840 No=9
3850 pause 200:goto Input_Seireki2:
3860 '9で上を押しても何もしない　ここまで
3870 '上　 0ボタンから2ボタン
3880 'sp_on 6,1:1
3890 'sp_on 8,1:5
3900 'sp_on 7,1:7
3910 case 0:
3920 No=2:sp_on 13,0:sp_on 9,1:
3930 pause 200:goto Input_Seireki2:
3940 '上  0ボタンから2ボタン　ここまで
3950 '2から５になる 上
3960 case 2:
3970 No=5:sp_on 8,1:sp_on 9,0:
3980 pause 200:goto Input_Seireki2:
3990 case 5:
4000 No=8:sp_on 7,1:sp_on 8,0
4010 pause 200:goto Input_Seireki2:
4020 case 8:
4030 pause 200:goto Input_Seireki2:
4040 case 1:
4050 No=4:sp_on 5,1:sp_on 6,0
4060 pause 200:goto Input_Seireki2:
4070 case 4:
4080 No=7:sp_on 4,1:sp_on 5,0
4090 pause 200:goto Input_Seireki2:
4100 case 7:
4110 pause 200:goto Input_Seireki2:
4120 end select
4130 endif
4140 '左３　ここまで
4150 '下の矢印
4160 '中央 2
4170 if ((y=1) or (key$ = chr$(31))) then
4180 select case No
4190 '9から６に下げる
4200 case 9:
4210 No=6:sp_on 11,1:sp_on 10,0
4220 pause 200:goto Input_Seireki2:
4230 '6から３に下げる
4240 case 6:
4250 No=3:sp_on 12,1:sp_on 11,0
4260 pause 200:goto Input_Seireki2:
4270 '3から０ｋに変える
4280 case 3:
4290 No=-1:sp_on 14,1:sp_on 12,0
4300 pause 200:goto Input_Seireki2:
4310 'Okから下のボタンを押しても何もしない
4320 case -1:
4330 pause 200:goto Input_Seireki2:
4340 case 8:
4350 No=5:sp_on 8,1:sp_on 7,0
4360 pause 200:goto Input_Seireki2:
4370 case 5:
4380 No=2:sp_on 9,1:sp_on 8,0
4390 pause 200:goto Input_Seireki2:
4400 case 2:
4410 No=0:sp_on 13,1:sp_on 9,0
4420 pause 200:goto Input_Seireki2:
4430 case 0:
4440 pause 200:goto Input_Seireki2:
4450 case 7:
4460 No=4:sp_on 5,1:sp_on 4,0
4470 pause 200:goto Input_Seireki2:
4480 case 4:
4490 No=1:sp_on 6,1:sp_on 5,0
4500 pause 200:goto Input_Seireki2:
4510 case 1:
4520 pause 200:goto Input_Seireki2:
4530 end select
4540 endif
4550 '左へボタン 十字キー　左　or 　カーソル左
4560 if ((y2 = -1) or (key$ = chr$(29))) then
4570 select case No
4580 'Ok ボタン  Okから　左　０に行く
4590 case -1:
4600 No=0:sp_on 13,1:sp_on 14,0
4610 pause 200:goto Input_Seireki2:
4620 '0 ボタン  左　何もしない
4630 case 0:
4640 pause 200:goto Input_Seireki2:
4650 case 3:
4660 No=2:sp_on 9,1:sp_on 12,0:
4670 pause 200:goto Input_Seireki2:
4680 case 2:
4690 No=1:sp_on 6,1:sp_on 9,0:
4700 pause 200:goto Input_Seireki2:
4710 case 1:
4720 pause 200:goto Input_Seireki2:
4730 case 6:
4740 No=5:sp_on 8,1:sp_on 11,0
4750 pause 200:goto Input_Seireki2:
4760 case 5:
4770 No=4:sp_on 5,1:sp_on 8,0
4780 pause 200:goto Input_Seireki2:
4790 case 4:
4800 pause 200:goto Input_Seireki2:
4810 case 9:
4820 No=8:sp_on 7,1:sp_on 10,0
4830 pause 200:goto Input_Seireki2:
4840 case 8:
4850 No=7:sp_on 4,1:sp_on 7,0
4860 pause 200:goto Input_Seireki2:
4870 case 7:
4880 pause 200:goto Input_Seireki2:
4890 end select
4900 endif
4910 '右  十字キー　右　or カーソル　右
4920 if ((y2 = 1) or (key$ = chr$(28))) then
4930 select case No
4940 '0ボタンからokボタン右に移動
4950 case 0:
4960 No=-1:sp_on 14,1:sp_on 13,0
4970 pause 200:goto Input_Seireki2:
4980 '0ボタンからokボタン 右に移動　ここまで
4990 'OKボタンで右を押して何もしない
5000 case -1:
5010 pause 200:goto Input_Seireki2:
5020 case 1:
5030 No=2:sp_on 9,1:sp_on 6,0
5040 pause 200:goto Input_Seireki2:
5050 case 2:
5060 No=3:sp_on 12,1:sp_on 9,0
5070 pause 200:goto Input_Seireki2:
5080 case 3:
5090 pause 200:goto Input_Seireki2:
5100 case 4:
5110 No=5:sp_on 8,1:sp_on 5,0
5120 pause 200:goto Input_Seireki2:
5130 case 5:
5140 No=6:sp_on 11,1:sp_on 8,0
5150 pause 200:goto Input_Seireki2:
5160 case 7:
5170 No=8:sp_on 7,1:sp_on 4,0
5180 pause 200:goto Input_Seireki2:
5190 case 8:
5200 No=9:sp_on 10,1:sp_on 7,0
5210 pause 200:goto Input_Seireki2:
5220 case 9:
5230 pause 200:goto Input_Seireki2:
5240 case 6:
5250 pause 200:goto Input_Seireki2:
5260 end select
5270 'Okから右ボタンを押して何もしない ここまで
5280 endif
5290 '十字キー　ここまで
5300 if ((bg=2) or (key$=chr$(13))) then
5310 select case count
5320 case 0:
5330 count=1
5340 if (No=-1) then
5350 count=0
5360 'Okボタンを押したとき
5370 goto Input_Seireki2:
5380 else
5390 '===================================
5400 'Okボタン以外が押されたとき  1桁目の入力
5410 '===================================
5420 count2=1
5430 if (No >= 1 and No <= 2) then
5440 buf_year$="":buf_year$ = str$(No)
5450 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5460 n1 = len("生まれた年代(西暦4桁): ")
5470 locate 2,3
5480 color rgb(255,255,255)
5490 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5500 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5510 'print "生まれた年代(西暦4桁):";buf_year2$
5520 print buf_Born_Year_line$
5530 goto Input_Seireki2:
5540 else
5550 count=0
5560 ui_msg"数字が範囲外になります。"
5570 buf_year$="":buf_year=0
5580 goto Input_Seireki2:
5590 endif
5600 endif
5610 case 1:
5620 count = 2
5630 if (No = -1) then
5640 count = 1
5650 goto Input_Seireki2:
5660 else
5670 count2 = 1
5680 b = val(buf_year$)
5690 buf_year = b * 10 + No
5700 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5710 locate 2,3
5720 color rgb(255,255,255)
5730 print "                                                                "
5740 locate 2,3
5750 print "生まれた年代(西暦4桁):";buf_year2$
5760 'if (No = -1) then
5770 'count=1
5780 goto Input_Seireki2:
5790 endif
5800 case 2:
5810 count=3
5820 if (No=-1) then
5830 count =2
5840 goto Input_Seireki2:
5850 else
5860 b = val(buf_year$)
5870 buf_year = b*10 + No
5880 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
5890 locate 2,3
5900 color rgb(255,255,255)
5910 print "                                        "
5920 locate 2,3
5930 print "生まれた年代(西暦4桁):";buf_year2$
5940 goto Input_Seireki2:
5950 endif
5960 case 3:
5970 count=4
5980 if (No = -1) then
5990 count=3
6000 goto Input_Seireki2:
6010 else
6020 b = val(buf_year$)
6030 buf_year=b*10+No
6040 buf_year$=str$(buf_year)
6050 locate 2,3
6060 color RGB(255,255,255)
6070 print "                                      "
6080 locate 2,3
6090 print "生まれた年代(西暦4桁):";buf_year$
6100 buf_year=val(buf_year$)
6110 'year=val(buf_year$)
6120 'if (No=-1) then
6130 'goto Input_Born_Month:
6140 'else
6150 goto Input_Seireki2:
6160 endif
6170 case 4:
6180 'bufyear=buf_year
6190 if (No=-1) then
6200 buf_year = val(buf_year$)
6210 bufyear = buf_year
6220 sp_on 14,0
6230 goto Input_Born_Month:
6240 else
6250 goto Input_Seireki2:
6260 endif
6270 end select
6280 endif
6290 '=========================
6300 'bg2　キャンセルボタン
6310 '=========================
6320 if (bg2 = 2) then
6330 select case count2
6340 case 0:
6350 'Okボタンを押したときの処理
6360 if (No = -1) then
6370 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6380 'count = 0
6390 locate 2,3
6400 color rgb(255,255,255)
6410 print "                                      "
6420 locate 2,3
6430 print "生まれた年代（西暦4桁):";buf_year$
6440 '=============================
6450 'case 0:前の画面に戻る 数秘術トップメニュー
6460 '=============================
6470 sp_on 14,0:goto Kabara_TopScreen:
6480 else
6490 'count=0
6500 '(buf_year=0) then
6510 buf_year = 0:buf_year$ = string$(4,"*")
6520 goto Input_Seireki2:
6530 'endif
6540 endif
6550 case 1:
6560 if (No = -1) then
6570 count2 = 0:count = 0
6580 buf$=right$(buf_year$,1)
6590 if (val(buf$) >= 1 and val(buf$) <= 9) then
6600    buf_year$ = "****":buf_year=0
6610 color rgb(255,255,255)
6620    locate 0,3:
6630 print "                                      "
6640 locate 2,3
6650 print "生まれた年代（西暦4桁):" + buf_year$
6660 goto Input_Seireki2:
6670 endif
6680 else
6690 endif
6700 end select
6710 endif
6720 end
6730 'Input"生れた年代(4桁,〜2025年):",year
6740 'if year > 2025 then goto Input_Seireki:
6750 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6760 '"4桁目"
6770 'bufyear4 = fix(year / 1000)
6780 '"3桁目"
6790 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6800 '"2桁目"
6810 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6820 '"1桁目"
6830 'bufyear1 = fix((year - ((bufyear4*
6840 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6850 '生れた月を入力
6860 Input_Born_Month:
6870 cls 3:play "":count=0:count2=0
6880 'No=-1:Okのとき
6890 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6900 for i=0 to 1
6910 buf_month(i)=0
6920 next i
6930 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6940 gload Gazo$ + "Screen1.png",0,0,0
6950 gload Gazo$ + "downscreen.png",0,0,800
6960 'Init"kb:2"
6970 '音声ファイル再生 2023.06.07
6980 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
6990 font 48
7000 locate 0,1
7010 '文字色：黒　 color rgb(0,0,0)
7020 '文字色:白
7030 color rgb(255,255,255)
7040 print "生まれた月を入れて下さい" + chr$(13)
7050 '文字色:白
7060 color rgb(255,255,255)
7070 locate 2,3
7080 '文字色:白
7090 print "生まれた月(1月~12月):";buf_Month$
7100 color rgb(255,255,255)
7110 'locate 4,6:print ":7"
7120 'locate 9,6:print ":8"
7130 'locate 12,6:print ":9"
7140 locate 4,6
7150 '文字色:赤
7160 print ":7  :8  :9" + chr$(13)
7170 color rgb(255,255,255)
7180 locate 4,8
7190 print ":4  :5  :6" + chr$(13)
7200 color rgb(255,255,255)
7210 locate 4,10
7220 print ":1  :2  :3" + chr$(13)
7230 locate 4,12
7240 print "    :0"
7250 locate 12,12
7260 color rgb(0,0,255)
7270 print ":Ok"
7280 sp_on 4,0: sp_on 5,0:sp_on 6,0
7290 sp_on 7,0:sp_on 8,0:sp_on 9,0
7300 sp_on 10,0:sp_on 11,0:sp_on 12,0
7310 sp_on 13,0:sp_on 14,1
7320 Input_Born_Month2:
7330 key$="":bg=0:y=0:y2=0:bg2=0
7340 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7350 key$ = inkey$
7360 bg = strig(1)
7370 y = stick(1)
7380 y2 = stick(0)
7390 bg2 = strig(0)
7400 pause 5
7410 wend
7420 '十字キー　ここから
7430 '上の矢印　または、十字キー上
7440 if ((y = -1) or (key$ = chr$(30))) then
7450 select case No
7460 'No=-1:okのとき:初期の状態
7470 '0kボタンから３に移動
7480 '上に行く 処理
7490 case -1:
7500 No=3:sp_on 12,1:sp_on 14,0
7510 pause 200:goto Input_Born_Month2:
7520 '選択肢:3
7530 '3ボタンから 6に移動
7540 case 3:
7550 No=6:sp_on 12,0:sp_on 11,1
7560 pause 200:goto Input_Born_Month2:
7570 '6ボタンから ９に移動
7580 case 6:
7590 No=9:sp_on 10,1:sp_on 11,0
7600 pause 200:goto Input_Born_Month2:
7610 '6ボタンから ９に移動　ここまで
7620 '9で上を押して何もしない
7630 case 9:
7640 '何もしない
7650 No=9
7660 pause 200:goto Input_Born_Month2:
7670 '9で上を押しても何もしない　ここまで
7680 '上　 0ボタンから2ボタン
7690 'sp_on 6,1:1
7700 'sp_on 8,1:5
7710 'sp_on 7,1:7
7720 case 0:
7730 No=2:sp_on 13,0:sp_on 9,1:
7740 pause 200:goto Input_Born_Month2:
7750 '上  0ボタンから2ボタン　ここまで
7760 '2から５になる 上
7770 case 2:
7780 No=5:sp_on 8,1:sp_on 9,0:
7790 pause 200:goto Input_Born_Month2:
7800 case 5:
7810 No=8:sp_on 7,1:sp_on 8,0
7820 pause 200:goto Input_Born_Month2:
7830 case 8:
7840 pause 200:goto Input_Born_Month2:
7850 case 1:
7860 No=4:sp_on 5,1:sp_on 6,0
7870 pause 200:goto Input_Born_Month2:
7880 case 4:
7890 No=7:sp_on 4,1:sp_on 5,0
7900 pause 200:goto Input_Born_Month2:
7910 case 7:
7920 pause 200:goto Input_Born_Month2:
7930 end select
7940 endif
7950 '左３　ここまで
7960 '下の矢印
7970 '中央 2
7980 if ((y=1) or (key$ = chr$(31))) then
7990 select case No
8000 '9から６に下げる
8010 case 9:
8020 No=6:sp_on 11,1:sp_on 10,0
8030 pause 200:goto Input_Born_Month2:
8040 '6から３に下げる
8050 case 6:
8060 No=3:sp_on 12,1:sp_on 11,0
8070 pause 200:goto Input_Born_Month2:
8080 '3から０ｋに変える
8090 case 3:
8100 No=-1:sp_on 14,1:sp_on 12,0
8110 pause 200:goto Input_Born_Month2:
8120 'Okから下のボタンを押しても何もしない
8130 case -1:
8140 pause 200:goto Input_Born_Month2:
8150 case 8:
8160 No=5:sp_on 8,1:sp_on 7,0
8170 pause 200:goto Input_Born_Month2:
8180 case 5:
8190 No=2:sp_on 9,1:sp_on 8,0
8200 pause 200:goto Input_Born_Month2:
8210 case 2:
8220 No=0:sp_on 13,1:sp_on 9,0
8230 pause 200:goto Input_Born_Month2:
8240 case 0:
8250 pause 200:goto Input_Born_Month2:
8260 case 7:
8270 No=4:sp_on 5,1:sp_on 4,0
8280 pause 200:goto Input_Born_Month2:
8290 case 4:
8300 No=1:sp_on 6,1:sp_on 5,0
8310 pause 200:goto Input_Born_Month2:
8320 case 1:
8330 pause 200:goto Input_Born_Month2:
8340 end select
8350 endif
8360 '左へボタン 十字キー　左　or 　カーソル左
8370 if ((y2 = -1) or (key$ = chr$(29))) then
8380 select case No
8390 'Ok ボタン  Okから　左　０に行く
8400 case -1:
8410 No=0:sp_on 13,1:sp_on 14,0
8420 pause 200:goto Input_Born_Month2:
8430 '0 ボタン  左　何もしない
8440 case 0:
8450 pause 200:goto Input_Born_Month2:
8460 case 3:
8470 No=2:sp_on 9,1:sp_on 12,0:
8480 pause 200:goto Input_Born_Month2:
8490 case 2:
8500 No=1:sp_on 6,1:sp_on 9,0:
8510 pause 200:goto Input_Born_Month2:
8520 case 1:
8530 pause 200:goto Input_Born_Month2:
8540 case 6:
8550 No=5:sp_on 8,1:sp_on 11,0
8560 pause 200:goto Input_Born_Month2:
8570 case 5:
8580 No=4:sp_on 5,1:sp_on 8,0
8590 pause 200:goto Input_Born_Month2:
8600 case 4:
8610 pause 200:goto Input_Born_Month2:
8620 case 9:
8630 No=8:sp_on 7,1:sp_on 10,0
8640 pause 200:goto Input_Born_Month2:
8650 case 8:
8660 No=7:sp_on 4,1:sp_on 7,0
8670 pause 200:goto Input_Born_Month2:
8680 case 7:
8690 pause 200:goto Input_Born_Month2:
8700 end select
8710 endif
8720 '右  十字キー　右　or カーソル　右
8730 if ((y2 = 1) or (key$ = chr$(28))) then
8740 select case No
8750 '0ボタンからokボタン右に移動
8760 case 0:
8770 No=-1:sp_on 14,1:sp_on 13,0
8780 pause 200:goto Input_Born_Month2:
8790 '0ボタンからokボタン 右に移動　ここまで
8800 'OKボタンで右を押して何もしない
8810 case -1:
8820 pause 200:goto Input_Born_Month2:
8830 case 1:
8840 No=2:sp_on 9,1:sp_on 6,0
8850 pause 200:goto Input_Born_Month2:
8860 case 2:
8870 No=3:sp_on 12,1:sp_on 9,0
8880 pause 200:goto Input_Born_Month2:
8890 case 3:
8900 pause 200:goto Input_Born_Month2:
8910 case 4:
8920 No=5:sp_on 8,1:sp_on 5,0
8930 pause 200:goto Input_Born_Month2:
8940 case 5:
8950 No=6:sp_on 11,1:sp_on 8,0
8960 pause 200:goto Input_Born_Month2:
8970 case 7:
8980 No=8:sp_on 7,1:sp_on 4,0
8990 pause 200:goto Input_Born_Month2:
9000 case 8:
9010 No=9:sp_on 10,1:sp_on 7,0
9020 pause 200:goto Input_Born_Month2:
9030 case 9:
9040 pause 200:goto Input_Born_Month2:
9050 case 6:
9060 pause 200:goto Input_Born_Month2:
9070 end select
9080 'Okから右ボタンを押して何もしない ここまで
9090 endif
9100 '十字キー　ここまで
9110 '右の丸ボタン　決定キー
9120 if ((bg=2) or (key$=chr$(13))) then
9130 select case count
9140 case 0:
9150 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9160 if (buf_month = 1 or buf_month = 2) then
9170 locate 2,3
9180 color RGB(255,255,255)
9190 print "生まれた月(1月~12月):";buf_Month2$
9200 else
9210 locate 2,3
9220 color Rgb(255,255,255)
9230 print "生まれた月(1月~12月):";buf_Month$
9240 endif
9250 goto Input_Born_Month2:
9260 case 1:
9270 count = 2:c = No
9280 c = val(buf_Month$)
9290 if (No = -1) then
9300 'if No=1 or No=2 then
9310 'endif
9320 month = buf_month
9330 buf_month=val(buf_Month$)
9340 month=buf_month
9350 '生まれた日に飛ぶ
9360 goto Input_Born_Day:
9370 else
9380 buf_month = c*10 + No
9390 buf_Month$= str$(buf_month)
9400 locate 2,3
9410 color Rgb(255,255,255)
9420 print "生まれた月(1月~12月):";buf_Month$
9430 goto Input_Born_Month2:
9440 endif
9450 case 2:
9460 count=3:count2=1
9470 'c= val(buf_Month$)
9480 'buf_month = c*10 + No
9490 'buf_Month$ = str$(buf_month)
9500 'locate 2,3
9510 'print "生まれた月(1月～12月):";buf_Month$
9520 'goto Input_Born_Month2:
9530 'case 3:
9540 'count=4
9550 'b=val(buf_month$)
9560 'buf_month=c*10+No
9570 'buf_Month$=str$(buf_month)
9580 'locate 2,3
9590 'print "生まれた月(1月～12月):";buf_Month$
9600 'buf_month=val(buf_Month$)
9610 'year=val(buf_year$)
9620 if (No=-1) then
9630 goto Input_Born_Day:
9640 else
9650 'goto Input_Born_Month2:
9660 endif
9670 'case 4:
9680 'bufyear=buf_year
9690 'if (No=-1) then
9700 'buf_month = val(buf_Month$)
9710 'month = buf_month
9720 'sp_on 14,0
9730 'goto Input_Born_Day:
9740 'else
9750 'goto Input_Born_Month2:
9760 'endif
9770 end select
9780 endif
9790 '左の丸ボタン　キャンセル
9800 if (bg2=2) then
9810 select case count2
9820 case 0:
9830 if (No = -1) then
9840 buf_month=0:buf_Month$="**"
9850 count2=0:count=0
9860 locate 0,3:print "                                              "
9870 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9880 'if (buf_month > 1) then
9890 sp_on 14,0:goto Input_Born_Month2:
9900 'goto rewrite:
9910 else
9920 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9930 buf_month=0:buf_Month$="**"
9940 locate 2,3
9950 color rgb(255,255,255)
9960 print "                                       "
9970 goto rewrite:
9980 if (No>2) then
9990 ui_msg"値が範囲外です。"
10000 goto rewrite:
10010 endif
10020 endif
10030 'endif
10040 rewrite:
10050 locate 2,3
10060 color rgb(255,255,255)
10070 print "                                      "
10080 locate 2,3
10090 print "生まれた月(1月~12月):";buf_Month$
10100 goto Input_Born_Month2:
10110 endif
10120 case 1:
10130 buf_Month$="**":buf_month=0
10140 if No=-1 then
10150 count2=2:count=0
10160 locate 0,3
10170 print "                                      "
10180 locate 2,3:
10190 print "生まれた月(1月~12月):"+buf_Month$
10200 goto Input_Born_Month2:
10210 endif
10220 case 2:
10230     sp_on 14,0:goto Input_Seireki:
10240 end select
10250 endif
10260 'endif
10270 end
10280 'end
10290 '生れた日を入力
10300 Input_Born_Day:
10310 '生まれた日入力
10320 cls 3:play ""
10330 'No=-1:Okのとき
10340 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10350 for i=0 to 1
10360 buf_day(i)=0
10370 next i
10380 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10390 gload Gazo$ + "Screen1.png",0,0,0
10400 gload Gazo$ + "downscreen.png",0,0,800
10410 'Init"kb:2"
10420 '音声ファイル再生 2023.06.07
10430 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10440 font 48
10450 locate 0,1
10460 '文字色：黒　 color rgb(0,0,0)
10470 color rgb(255,255,255)
10480 print "生まれた日を入れて下さい" + chr$(13)
10490 color rgb(255,255,255)
10500 locate 2,3
10510 print "生まれた日(1日~31日):";buf_Day$
10520 color rgb(255,255,255)
10530 'locate 4,6:print ":7"
10540 'locate 9,6:print ":8"
10550 'locate 12,6:print ":9"
10560 locate 4,6
10570 print ":7  :8  :9" + chr$(13)
10580 '=======================
10590 'テンキー　色　白　決定ボタン　青
10600 '=======================
10610 color rgb(255,255,255)
10620 locate 4,8
10630 print ":4  :5  :6" + chr$(13)
10640 color rgb(255,255,255)
10650 locate 4,10
10660 print ":1  :2  :3" + chr$(13)
10670 locate 4,12
10680 print "    :0"
10690 locate 12,12
10700 color rgb(0,0,255)
10710 print ":Ok"
10720 sp_on 4,0: sp_on 5,0:sp_on 6,0
10730 sp_on 7,0:sp_on 8,0:sp_on 9,0
10740 sp_on 10,0:sp_on 11,0:sp_on 12,0
10750 sp_on 13,0:sp_on 14,1
10760 Input_Born_Day2:
10770 key$="":bg=0:y=0:y2=0:bg2=0
10780 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10790 key$ = inkey$
10800 bg = strig(1)
10810 y = stick(1)
10820 y2 = stick(0)
10830 bg2 = strig(0)
10840 pause 5
10850 wend
10860 '十字キー　ここから
10870 '上の矢印　または、十字キー上
10880 if ((y = -1) or (key$ = chr$(30))) then
10890 select case No
10900 'No=-1:okのとき:初期の状態
10910 '0kボタンから３に移動
10920 '上に行く 処理
10930 case -1:
10940 No=3:sp_on 12,1:sp_on 14,0
10950 pause 200:goto Input_Born_Day2:
10960 '選択肢:3
10970 '3ボタンから 6に移動
10980 case 3:
10990 No=6:sp_on 12,0:sp_on 11,1
11000 pause 200:goto Input_Born_Day2:
11010 '6ボタンから ９に移動
11020 case 6:
11030 No=9:sp_on 10,1:sp_on 11,0
11040 pause 200:goto Input_Born_Day2:
11050 '6ボタンから ９に移動　ここまで
11060 '9で上を押して何もしない
11070 case 9:
11080 '何もしない
11090 No=9
11100 pause 200:goto Input_Born_Day2:
11110 '9で上を押しても何もしない　ここまで
11120 '上　 0ボタンから2ボタン
11130 'sp_on 6,1:1
11140 'sp_on 8,1:5
11150 'sp_on 7,1:7
11160 case 0:
11170 No=2:sp_on 13,0:sp_on 9,1:
11180 pause 200:goto Input_Born_Day2:
11190 '上  0ボタンから2ボタン　ここまで
11200 '2から５になる 上
11210 case 2:
11220 No=5:sp_on 8,1:sp_on 9,0:
11230 pause 200:goto Input_Born_Day2:
11240 case 5:
11250 No=8:sp_on 7,1:sp_on 8,0
11260 pause 200:goto Input_Born_Day2:
11270 case 8:
11280 pause 200:goto Input_Born_Day2:
11290 case 1:
11300 No=4:sp_on 5,1:sp_on 6,0
11310 pause 200:goto Input_Born_Day2:
11320 case 4:
11330 No=7:sp_on 4,1:sp_on 5,0
11340 pause 200:goto Input_Born_Day2:
11350 case 7:
11360 pause 200:goto Input_Born_Day2:
11370 end select
11380 endif
11390 '左３　ここまで
11400 '下の矢印
11410 '中央 2
11420 if ((y=1) or (key$ = chr$(31))) then
11430 select case No
11440 '9から６に下げる
11450 case 9:
11460 No=6:sp_on 11,1:sp_on 10,0
11470 pause 200:goto Input_Born_Day2:
11480 '6から３に下げる
11490 case 6:
11500 No=3:sp_on 12,1:sp_on 11,0
11510 pause 200:goto Input_Born_Day2:
11520 '3から０ｋに変える
11530 case 3:
11540 No=-1:sp_on 14,1:sp_on 12,0
11550 pause 200:goto Input_Born_Day2:
11560 'Okから下のボタンを押しても何もしない
11570 case -1:
11580 pause 200:goto Input_Born_Day2:
11590 case 8:
11600 No=5:sp_on 8,1:sp_on 7,0
11610 pause 200:goto Input_Born_Day2:
11620 case 5:
11630 No=2:sp_on 9,1:sp_on 8,0
11640 pause 200:goto Input_Born_Day2:
11650 case 2:
11660 No=0:sp_on 13,1:sp_on 9,0
11670 pause 200:goto Input_Born_Day2:
11680 case 0:
11690 pause 200:goto Input_Born_Day2:
11700 case 7:
11710 No=4:sp_on 5,1:sp_on 4,0
11720 pause 200:goto Input_Born_Day2:
11730 case 4:
11740 No=1:sp_on 6,1:sp_on 5,0
11750 pause 200:goto Input_Born_Day2:
11760 case 1:
11770 pause 200:goto Input_Born_Day2:
11780 end select
11790 endif
11800 '左へボタン 十字キー　左　or 　カーソル左
11810 if ((y2 = -1) or (key$ = chr$(29))) then
11820 select case No
11830 'Ok ボタン  Okから　左　０に行く
11840 case -1:
11850 No=0:sp_on 13,1:sp_on 14,0
11860 pause 200:goto Input_Born_Day2:
11870 '0 ボタン  左　何もしない
11880 case 0:
11890 pause 200:goto Input_Born_Day2:
11900 case 3:
11910 No=2:sp_on 9,1:sp_on 12,0:
11920 pause 200:goto Input_Born_Day2:
11930 case 2:
11940 No=1:sp_on 6,1:sp_on 9,0:
11950 pause 200:goto Input_Born_Day2:
11960 case 1:
11970 pause 200:goto Input_Born_Day2:
11980 case 6:
11990 No=5:sp_on 8,1:sp_on 11,0
12000 pause 200:goto Input_Born_Day2:
12010 case 5:
12020 No=4:sp_on 5,1:sp_on 8,0
12030 pause 200:goto Input_Born_Day2:
12040 case 4:
12050 pause 200:goto Input_Born_Day2:
12060 case 9:
12070 No=8:sp_on 7,1:sp_on 10,0
12080 pause 200:goto Input_Born_Day2:
12090 case 8:
12100 No=7:sp_on 4,1:sp_on 7,0
12110 pause 200:goto Input_Born_Day2:
12120 case 7:
12130 pause 200:goto Input_Born_Day2:
12140 end select
12150 endif
12160 '右  十字キー　右　or カーソル　右
12170 if ((y2 = 1) or (key$ = chr$(28))) then
12180 select case No
12190 '0ボタンからokボタン右に移動
12200 case 0:
12210 No=-1:sp_on 14,1:sp_on 13,0
12220 pause 200:goto Input_Born_Day2:
12230 '0ボタンからokボタン 右に移動　ここまで
12240 'OKボタンで右を押して何もしない
12250 case -1:
12260 pause 200:goto Input_Born_Day2:
12270 case 1:
12280 No=2:sp_on 9,1:sp_on 6,0
12290 pause 200:goto Input_Born_Day2:
12300 case 2:
12310 No=3:sp_on 12,1:sp_on 9,0
12320 pause 200:goto Input_Born_Day2:
12330 case 3:
12340 pause 200:goto Input_Born_Day2:
12350 case 4:
12360 No=5:sp_on 8,1:sp_on 5,0
12370 pause 200:goto Input_Born_Day2:
12380 case 5:
12390 No=6:sp_on 11,1:sp_on 8,0
12400 pause 200:goto Input_Born_Day2:
12410 case 7:
12420 No=8:sp_on 7,1:sp_on 4,0
12430 pause 200:goto Input_Born_Day2:
12440 case 8:
12450 No=9:sp_on 10,1:sp_on 7,0
12460 pause 200:goto Input_Born_Day2:
12470 case 9:
12480 pause 200:goto Input_Born_Day2:
12490 case 6:
12500 pause 200:goto Input_Born_Day2:
12510 end select
12520 'Okから右ボタンを押して何もしない ここまで
12530 endif
12540 '十字キー　ここまで
12550 '右の丸ボタンを押したとき
12560 if ((bg = 2) or (key$ = chr$(13))) then
12570 'count :決定ボタンを押した回数
12580 select case (count mod 3)
12590 '1桁目入力
12600 case 0:
12610 count = 1:
12620 if (No = -1) then
12630 '1桁目　OKでは何もしない
12640 'goto check:
12650 else
12660 'ok以外のボタンを押したとき
12670 buf_day = No:buf_Day$ = str$(No)
12680 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12690 locate 2,3
12700 color RGB(255,255,255)
12710 print "生まれた日(1日~31日):";buf_Day2$
12720 endif
12730 check:
12740 if (No >= 1 and No <= 9) then
12750 sp_on 14,0
12760 goto Input_Born_Day2:
12770 else
12780 sp_on 14,0
12790 goto complate:
12800 endif
12810 case 1:
12820 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12830 count = 2:
12840 'locate 2,3
12850 'color RGB(255,255,255)
12860 'print "生まれた日(1日~31日):";buf_Day$
12870 'Okボタンを押したときの処理
12880 '入力値　10未満のとき
12890 'c = buf_day
12900 if (No = -1) then
12910 'c=buf_day
12920 ' buf_day = c
12930 'buf_Day$ = str$(buf_day)
12940 '10以下のとき
12950 if (buf_day < 10) then
12960 sp_on 14,0
12970 goto complate:
12980 endif
12990 else
13000 'c = No
13010 buf_day = c * 10 + No
13020 'buf_day = c
13030 buf_Day$ =str$(buf_day)
13040 locate 2,3
13050 color Rgb(255,255,255)
13060 print "生まれた日(1日~31日):";buf_Day$
13070 goto Input_Born_Day2:
13080 endif
13090 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13100 case 2:
13110 count=0
13120 'c=val(buf_Day$)
13130 'buf_day=c*10+No
13140 'buf_Day$=str$(buf_day)
13150 'day=buf_day
13160 'locate 2,3
13170 'print "生まれた日(1日〜31日):";buf_Day$
13180 'No=-1:ok ボタンを押したとき
13190 if (No = -1) then
13200 if ((buf_day > 0) and (buf_day < 32)) then
13210 sp_on 14,0
13220 goto complate:
13230 else
13240 goto Input_Born_Day2:
13250 endif
13260 'Okボタン以外を押したとき
13270 else
13280 c=val(buf_Day$)
13290 buf_day = c * 10 + No
13300 buf_Day$ = str$(buf_day)
13310 locate 2,3
13320 print "生まれた日(1日~31日):";buf_Day$
13330 'goto Input_Born_Day2:
13340 endif
13350 case 3:
13360 count = 4
13370 c=val(buf_day$)
13380 buf_day = c * 10 + No
13390 buf_day$ = str$(buf_day)
13400 locate 2,3
13410 print "生まれた日を入れてください:";buf_Day$
13420 year = val(buf_year$)
13430 if (No = -1) then
13440 'goto Input_Born_Day:
13450 sp_on 14,0:No=0
13460 goto complate:
13470 else
13480 goto Input_Born_Month2:
13490 endif
13500 'case 4:
13510 'bufyear=buf_year
13520 'if (No=-1) then
13530 'buf_day = val(buf_day$)
13540 'bufday = buf_day
13550 'sp_on 14,0
13560 'goto complate:
13570 'else
13580 'goto Input_Born_Day2:
13590 'endif
13600 end select
13610 endif
13620 if (bg2=2) then
13630 select case count2
13640 case 0:
13650 if (No=-1) then
13660 'buf_day=0:buf_Day$="**"
13670 if (buf_day>=1 and buf_day<=31) then
13680 count=0:No=0
13690 buf_day=0:buf_Day$="**"
13700 'goto rewrite_day:
13710 else
13720 buf_day=0:buf_Day$="**"
13730 ui_msg"値が範囲外です"
13740 endif
13750 goto rewrite_day:
13760 else
13770 goto rewrite_day:
13780 endif
13790 rewrite_day:
13800 locate 2,3
13810 color rgb(255,255,255)
13820 print "                                      "
13830 locate 2,3
13840 print "生まれた日(1日~31日):";buf_Day$
13850 goto Input_Born_Day2:
13860 end select
13870 endif
13880 '--------------------------Input_Born_Day:-------------------------------------------
13890 complate:
13900 suhiNo = buf_year + buf_month + buf_day
13910 'if (suhiNo < 1000) then
13920 a1 = fix(suhiNo / 1000)
13930 a2 = fix(suhiNo/100) - (a1 * 10)
13940 a3 = fix(suhiNo/10)-(a1*100+a2*10)
13950 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
13960 'endif
13970 bufsuhiNo = a1+a2+a3+a4
13980 recomp:
13990 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14000 'bufsuhiNo=a6
14010 goto Kabara_Result_Screen:
14020 else
14030 a5 = fix(bufsuhiNo / 10)
14040 a6 = bufsuhiNo - a5 * 10
14050 bufsuhiNo = a6 + a5
14060 if (bufsuhiNo = 10) then
14070 bufsuhiNo=1
14080 endif
14090 goto Kabara_Result_Screen:
14100 endif
14110 Kabara_Result_Screen:
14120 cls 3:
14130 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14140 gload Gazo$ + "downscreen.png",0,0,800
14150 init "kb:4"
14160 '
14170 play ""
14180 select case (bufsuhiNo)
14190 case 1:
14200 play Voice$ + "Result_Kabara_1_20230607.mp3"
14210 case 2:
14220 play Voice$ + "Result_Kabara_2_20230607.mp3"
14230 case 3:
14240 play Voice$ + "Result_Kabara_3_20230607.mp3"
14250 case 4:
14260 play Voice$ + "Result_Kabara_4_20230607.mp3"
14270 case 5:
14280 play Voice$ + "Result_Kabara_5_20230607.mp3"
14290 case 6:
14300 play Voice$ + "Result_Kabara_6_20230607.mp3"
14310 case 7:
14320 play Voice$ + "Result_Kabara_7_20230607.mp3"
14330 case 8:
14340 play Voice$ + "Result_Kabara_8_20230607.mp3"
14350 case 9:
14360 play Voice$ + "Result_Kabara_9_20230607.mp3"
14370 case 11:
14380 play Voice$ + "Result_Kabara_11_20230607.mp3"
14390 case 22:
14400 play Voice$ + "Result_Kabara_22_20230607.mp3"
14410 case 33:
14420 play Voice$ + "Result_Kabara_33_20230607.mp3"
14430 end select
14440 font 48
14450 key$ = "":bg = 0:
14460 'COLOR rgb(255,255,255)
14470 'print "●診断結果"+chr$(13)
14480 locate 0,2
14490 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14500 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14510 locate 1,15:
14520 color rgb(255,255,255)
14530 print "ジョイパッドの右:トップメニュー" + chr$(13)
14540 while ((key$ <> chr$(13)) and (bg <> 2))
14550 key$ = inkey$
14560 bg = strig(1)
14570 pause 5
14580 wend
14590 'Enter or JoyPad right
14600 if ((key$ = chr$(13)) or (bg = 2)) then
14610 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14620 endif
14630 'else
14640 'suhiNo1 = fix(bufsuhiNo / 10)
14650 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14660 'bufsuhiNo = suhiNo1 + suhiNo2
14670 'goto recomp:
14680 'endif
14690 'print chr$(13)
14700 'color rgb(255,0,0)
14710 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14720 'key$ = input$(1)
14730 'if key$ = chr$(13) then goto Main_Screen:
14740 '"Menu2 占いのルール"
14750 Suhi_Rule:
14760 '数秘術占いルールの表示
14770 cls 3:play "":init"kb:4"
14780 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14790 gload Gazo$ + "downscreen.png",0,0,800
14800 'cls 3:
14810 'line (0,0) - (1500,60),rgb(0,0,255),bf
14820 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14830 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14840 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14850 locate 0,2:Font 48
14860 print chr$(13) + chr$(13)
14870 color rgb(0,0,0)
14880 print "誕生日を単数変換します";chr$(13)
14890 print "数字の範囲:1~９,11,22,33";chr$(13)
14900 print "例:1973年11月22日の場合";chr$(13)
14910 print "1+9+7+3+11+22=53 ";chr$(13)
14920 print "→ 5 + 3 = 8" + chr$(13)
14930 print "故に8が数秘ナンバーになります";chr$(13)
14940 locate 0,15
14950 color rgb(255,255,255)
14960 print "ジョイパッドの右を押してください"
14970 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14980 '"key$ = input$(1)"
14990 '"if key$ = chr$(13) then goto Main_Screen:"
15000 suhi_rule_selection:
15010 bg = 0:key$ = "":bg2=0
15020 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15030 bg = strig(1)
15040 key$ = inkey$
15050 bg2=strig(0)
15060 pause 2
15070 wend
15080 if ((bg = 2) or (key$ = chr$(13))) then
15090 pause 200:cls 4:goto Main_Screen:
15100 endif
15110 if (bg2=2) then
15120 play "":pause 200
15130 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15140 goto suhi_rule_selection:
15150 endif
15160 '2.設定
15170 '2-1.トップ画面に戻る
15180 Setting:
15190 cls 3:init"kb:4":font 48:No=0
15200 play ""
15210 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15220 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15230 gload Gazo$ + "downscreen.png",0,0,800
15240 print chr$(13) + chr$(13) + chr$(13)
15250 color rgb(255,255,255):sp_on 0,1:
15260 print "番号を選んでください" + chr$(13)
15270 print " :1.トップ画面に戻る"+ chr$(13)
15280 print " :2.未実装" + chr$(13)
15290 print " :3.未実装" + chr$(13)
15300 print " :4.未実装" + chr$(13)
15310 color rgb(0,0,0)
15320 locate 1,15:print "1.トップ画面に戻るを選択"
15330 Setting_Selection:
15340 y=0:key$="":bg=0:bg2=0
15350 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15360 'y=stick(1)
15370 key$ = inkey$
15380 bg=strig(1)
15390 bg2 = strig(0)
15400 pause 2
15410 wend
15420 if ((bg = 2) or (key$ = chr$(13))) then
15430 select case No
15440 case 0:
15450 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15460 end select
15470 endif
15480 if (bg2 = 2) then
15490 play "":pause 200
15500 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15510 goto Setting_Selection:
15520 endif
15530 '3.Help
15540 '3-1.ルールの表示
15550 '3-2.バージョン
15560 '3-3.トップに戻る
15570 Help:
15580 cls 3:Font 48:No=0
15590 play ""
15600 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15610 gload Gazo$ + "downscreen.png",0,0,800
15620 color rgb(255,255,255)
15630 print chr$(13)+chr$(13)+chr$(13)
15640 print "番号を選んでください"+chr$(13)
15650 print " :1.ルールの表示" + chr$(13)
15660 print " :2.バージョンの表示" + chr$(13)
15670 print " :3.参考文献" + chr$(13)
15680 print " :4.トップ画面に戻る" + chr$(13)
15690 color rgb(0,0,0)
15700 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15710 locate 1,15
15720 print "                                      "
15730 locate 1,15
15740 print "1.ルールの表示を選択"
15750 init"kb:4"
15760 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15770 Help_Select:
15780 bg=0:key$="":y=0:bg2=0
15790 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15800 y = stick(1)
15810 key$ = inkey$
15820 bg = strig(1)
15830 bg2 = strig(0)
15840 pause 5
15850 wend
15860 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15870 if ((y = 1) or (key$ = chr$(31))) then
15880 select case No
15890 case 0:
15900 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
15910 case 1:
15920 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
15930 case 2:
15940 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
15950 case 3:
15960 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15970 end select
15980 endif
15990 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16000 if ((y = -1) or (key$ = chr$(30))) then
16010 select case No
16020 case 0:
16030 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16040 case 1:
16050 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16060 case 2:
16070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16080 case 3:
16090 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16100 end select
16110 endif
16120 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16130 if ((bg = 2) or (key$ = chr$(13))) then
16140 select case No
16150 case 0:
16160 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16170 case 1:
16180 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16190 case 2:
16200 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16210 '3:Top画面に行く
16220 case 3:
16230 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16240 end select
16250 endif
16260 if (bg2 = 2) then
16270 play "":pause 200
16280 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16290 goto Help_Select:
16300 endif
16310 '数秘術占い　トップ画面
16320 Kabara_TopScreen:
16330 cls 3:play ""
16340 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16350 gload Gazo$ + "downscreen.png",0,0,800
16360 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16370 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16380 init"kb:4":No=0
16390 color rgb(255,255,255)
16400 print chr$(13)+chr$(13)+chr$(13)
16410 print "番号を選んでください" + chr$(13)
16420 print " :1.数秘術占い" + chr$(13)
16430 print " :2.バーズアイグリット" + chr$(13)
16440 print " :3.相性占い" + chr$(13)
16450 print " :4.トップ画面に戻る" + chr$(13)
16460 color rgb(0,0,0)
16470 locate 1,15:print "1.数秘術占いを選択"
16480 Kabara_TopScreen2:
16490 y = 0:bg = 0:key$ = "":bg2 = 0
16500 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16510 key$ = inkey$
16520 bg = strig(1)
16530 y = stick(1)
16540 bg2 = strig(0)
16550 pause 5
16560 wend
16570 '選択ボタン
16580 'カーソル　と　ジョイパッド　の下
16590 if ((y = 1) or (key$ = chr$(31))) then
16600 select case No
16610 case 2:
16620 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16630 case 3:
16640 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16650 case 0:
16660 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16670 case 1:
16680 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16690 end select
16700 endif
16710 'カーソル　上
16720 if ((y=-1) or (key$=chr$(30))) then
16730 select case No
16740 case 0:
16750 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16760 case 1:
16770 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16780 case 2:
16790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16800 case 3:
16810 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16820 end select
16830 endif
16840 '決定ボタン
16850 'ジョイパッドの右　or  Enter key
16860 if ((bg = 2) or (key$ = chr$(13))) then
16870 select case No
16880 case 0:
16890 '1.数秘術占い
16900 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
16910 case 3:
16920 '4.メイン画面にいく
16930 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
16940 case 1:
16950 '2.バースアイグリッド
16960 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
16970 case 2:
16980 '3.相性占い
16990 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17000 end select
17010 endif
17020 if (bg2 = 2) then
17030 play "":pause 200
17040 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17050 goto Kabara_TopScreen2:
17060 endif
17070 '1.バースアイグリット　名入力
17080 Inputname1:
17090 cls 3:init"kb:2":font 48
17100 gload Gazo$ + "Input_Birtheye2.png",0,0,0
17110 color rgb(255,255,255)
17120 locate 1,2:print "名前をアルファベットで入れてください"
17130 color rgb(0,0,0)
17140 locate 1,5:Input "名前（姓の部分）:",name1$
17150 'locate 1,5:print "Hit any key"
17160 n1 = len(name1$)
17170 if (n1 < 11) then
17180 for i=1 to n1
17190 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
17200 next i
17210 endif
17220 'if b$=chr$(13) then goto Inputname2:
17230 '2.グリッドアイ　姓の入力
17240 Inputname2:
17250 cls 3:init"kb:2":font 48
17260 gload Gazo$ + "Input_Birtheye1.png",0,0,0
17270 color rgb(255,255,255)
17280 locate 1,2:print "名前をアルファベットで入れてください"
17290 color rgb(0,0,0)
17300 locate 1,5:Input "名前(名の部分):",name2$
17310 n2=len(name2$)
17320 for i=1 to n2
17330 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
17340 next i
17350 '計算領域
17360 Complate:
17370 'name1
17380 for i=0 to 25
17390 for n=1 to len(name1$)
17400 if (buf_chart$(i,0) = buf_name1$(n-1)) then
17410 b = val(buf_chart$(i,1))
17420 buffer(b-1) = buffer(b-1) + 1
17430 endif
17440 next n
17450 next i
17460 'name2
17470 for i=0 to 25
17480 for n=1 to len(name2$)
17490 if (buf_chart$(i,0) = buf_name2$(n-1)) then
17500 c = val(buf_chart$(i,1))
17510 buffer(c - 1) = buffer(c - 1) + 1
17520 endif
17530 next n
17540 next i
17550 '結果表示領域
17560 Result_Birtheye1:
17570 cls 3:init"kb:4":No=0
17580 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
17590 gload Gazo$ + "downscreen.png",0,0,800
17600 color rgb(255,255,255)
17610 '1の表示
17620 locate 3,14:print buffer(0);
17630 '2の表示
17640 locate 3,9:print buffer(1);
17650 '3の表示
17660 locate 3,5:print buffer(2);
17670 '4の表示
17680 locate 10,14:print buffer(3);
17690 '5の表示
17700 locate 10,9:print buffer(4);
17710 '6の表示
17720 locate 10,5:print buffer(5);
17730 '7の表示
17740 locate 15,14:print buffer(6);
17750 '8の表示
17760 locate 15,9:print buffer(7);
17770 '9の表示
17780 locate 15,5:print buffer(8);
17790 'name を大文字に変換
17800 locate 5,3:print ucase$(name1$ + name2$)
17810 color rgb(0,0,0)
17820 locate 2,15:print "右の丸ボタン:トップ画面"
17830 bg=0:key$="":
17840 while ((bg <> 2) and (key$ <> chr$(13)))
17850 'Enterと決定ボタン
17860 key$ = inkey$
17870 bg = strig(1)
17880 pause 200
17890 wend
17900 if ((bg=2) or (key$=chr$(13))) then
17910 'データーをクリアしてトップ画面に行く
17920 for i=0 to 8
17930 buffer(i)=0
17940 next i
17950 for n=0 to 9
17960 buf_name1$(n) = ""
17970 buf_name2$(n) = ""
17980 next n
17990 'Topに行く
18000 goto Main_Screen:
18010 endif
18020 'goto Result_Birtheye1:
18030 'Result_Birtheye2:
18040 'cls 3:color rgb(255,255,255)
18050 'end
18060 'Memory 消去
18070 '
18080 References1:
18090 cls 3:key$="":bg=0:play "":font 48-16
18100 gload Gazo$ + "Reference1_20230703.png",0,0,0
18110 print chr$(13)+chr$(13)+chr$(13)
18120 color rgb(0,0,0)
18130 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
18140 print "Author:carol Adrinne,PhD"+chr$(13)
18150 print "出版社:幻冬舎" + chr$(13)
18160 print "HP:www.carolAdrienne.jp/"+chr$(13)
18170 print "ISBN:978-4-344-01394-0"+chr$(13)
18180 print "定価:1500円 + 税"+chr$(13)
18190 color rgb(255,255,255)
18200 locate 1,23
18210 print "ジョイパッド右：次へ"
18220 while (key$ <> chr$(13) and bg <> 2)
18230 bg = strig(1)
18240 key$ = inkey$
18250 wend
18260 '
18270 if ((bg = 2) or (key$ = chr$(13))) then
18280 pause 200:goto References2:
18290 endif
18300 'ユダヤの秘儀 カバラ大占術
18310 References2:
18320 cls 3:play "":bg = 0:key$ = ""
18330 gload Gazo$ + "Reference2_20230703.png",0,0,0
18340 '参考文献２
18350 'カバラ大占術
18360 print chr$(13) + chr$(13) + chr$(13)
18370 color  rgb(0,0,0):font 48-16
18380 locate 1,3
18390 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
18400 print "著者：浅野　八郎" + chr$(13)
18410 print "出版社:NON BOOK" + chr$(13)
18420 print "ISBN:4-396-10364-6" + chr$(13)
18430 print "定価:829円 + 税"
18440 color rgb(255,255,255)
18450 locate 1,23
18460 print "ジョイパッド右：トップへ行く"
18470 while ((key$ <> chr$(13)) and (bg <> 2))
18480 bg = strig(1)
18490 key$ = inkey$
18500 wend
18510 if ((bg = 2) or (key$ = chr$(13))) then
18520 pause 200:goto Main_Screen:
18530 endif
18540 end
18550 '1.数秘術　トップ画面
18560 Kabara_First_Top:
18570 cls 3:color rgb(255,255,255):play ""
18580 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
18590 gload Gazo$ + "downscreen.png",0,0,800
18600 No=0:init"kb:4"
18610 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
18620 print chr$(13);chr$(13)
18630 color rgb(255,255,255)
18640 locate 3,4:No=0
18650 print "番号選んでください" + chr$(13)
18660 print " :1.数秘術占い" + chr$(13)
18670 print " :2.トップ画面に戻る" + chr$(13)
18680 color rgb(0,0,0)
18690 sp_on 0,1
18700 locate 1,15:print "1.数秘術番号を求めるを選択"
18710 'KeyBord:true
18720 'Joy Pad:true
18730 '上、下:true
18740 '
18750 'ｂｇ：決定ボタン
18760 'カーソル　上
18770 'カーソル　下
18780 Kabara_First_Top2:
18790 key$ = "":bg = 0:y = 0:
18800 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
18810 key$ = inkey$
18820 bg = strig(1)
18830 y = stick(1)
18840 'PauseでCPUを休める
18850 pause 5
18860 wend
18870 '1.カーソル　下 処理 chr$(31)
18880 'カーソル　下
18890 if ((key$ = chr$(31)) or (y = 1)) then
18900 select case No
18910 '
18920 case 1:
18930 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
18940 case 0:
18950 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18960 'case 2:
18970 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
18980 end select
18990 endif
19000 '2.カーソル　上 処理 chr$(30)
19010 if ((key$ = chr$(30)) or (y = -1)) then
19020 select case No
19030 case 0:
19040 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
19050 case 1:
19060 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
19070 'case 2:
19080 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
19090 end select
19100 endif
19110 '3.決定 処理  bg:2 or Enter key:chr$(13)
19120 if ((bg = 2) or (key$ = chr$(13))) then
19130 select case No
19140 case 0:
19150 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
19160 goto Kabara_TopScreen:
19170 'case 1:
19180 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
19190 case 1:
19200 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
19210 end select
19220 endif
19230 '
19240 'Kabara 相性占い トップ画面
19250 Kabara_Aishou_Top:
19260 cls 3:y=0:key$="":bg=0:No=0
19270 play ""
19280 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
19290 gload Gazo$ + "downscreen.png",0,0,800
19300 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
19310 print chr$(13) + chr$(13)
19320 locate 0,4:color rgb(255,255,255)
19330 'print "Ok"
19340 '
19350 print "番号を選んでください" + chr$(13)
19360 print " :1.男女2人の相性(未実装)" + chr$(13)
19370 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
19380 print " :3.トップ画面に戻る" + chr$(13)
19390 sp_on 0,1:sp_on 1,0:sp_on 2,0
19400 color rgb(0,0,0)
19410 locate 1,15:print "1.男女2人の相性占いを選択"
19420 Kabara_Aishou_Top2:
19430 key$ = "":y = 0:bg = 0:
19440 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
19450 'ジョイパッド(右) ,十字キー (上下)
19460 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
19470 y = stick(1)
19480 key$ = inkey$
19490 bg = strig(1)
19500 pause 5
19510 wend
19520 'カーソル　下 or 十字キー　下
19530 if ((key$ = chr$(31)) or (y = 1)) then
19540 select case No
19550 '選択肢　1 - 2に変更
19560 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
19570 'ok
19580 case 0:
19590 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19600 '選択肢　2 - 3に変更
19610 case 1:
19620 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
19630 'リリース時 case 2コメント解除
19640 case 2:
19650 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
19660 case else:
19670 goto Kabara_Aishou_Top2:
19680 end select
19690 endif
19700 '十字キー　上　、カーソル　上
19710 if ((key$ = chr$(30)) or (y = -1)) then
19720 select case No
19730 case 0:
19740 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
19750 case 1:
19760 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
19770 case 2:
19780 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19790 case else:
19800 goto Kabara_Aishou_Top2:
19810 end select
19820 endif
19830 '十字キー　上下:選択
19840 'ジョイパッド 右:決定
19850 if ((bg = 2) or (key$ = chr$(13))) then
19860 select case No
19870 '1.男女の相性
19880 case 0:
19890 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
19900 '2ビジネスの相性
19910 case 1:
19920 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
19930 case 2:
19940 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
19950 end select
19960 endif
19970 'ビジネスの相性　
19980 '1.1人目のビジネスの相性　名前入力　1人目
19990 Business_Aishou_Input_1_parson:
20000 No=0:color RGB(255,255,255)
20010 cls 3:init "kb:2"
20020 gload Gazo$ + "Screen1.png",0,0,0
20030 gload Gazo$ + "downscreen.png",0,0,800
20040 play "":color rgb(255,0,0):name$ = ""
20050 locate 0,1
20060 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
20070 color rgb(255,255,255):
20080 locate 0,3
20090 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
20100 print "入れてください" + chr$(13)
20110 locate 0,15:color rgb(0,0,0)
20120 Input "1人目の名前:",name$
20130 'color rgb(0,0,0)
20140 'locate 0,13:print "                                     "
20150 'locate 0,13:print "1人目の名前を入力してエンターキー":
20160 'buffer_name$(0):1人目の名前
20170 buffer_name$(0) = name$:
20180 goto Business_Aishou_Input_2_Parson:
20190 '2.2人目のビジネスの相性 名前入力 2人目
20200 Business_Aishou_Input_2_Parson:
20210 cls 3:init "kb:2":name$ = "":No=0
20220 gload Gazo$ + "Screen1.png",0,0,0
20230 gload Gazo$ + "downscreen.png",0,0,800
20240 color rgb(255,0,0)
20250 'Title
20260 locate 0,1
20270 print "ビジネスの相性　2人目"
20280 locate 0,3
20290 color rgb(255,255,255)
20300 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
20310 print "入れてください" + chr$(13)
20320 locate 0,15:color rgb(0,0,0)
20330 Input "2人目の名前:",name$
20340 'color rgb(0,0,0)
20350 'locate 0,15:print "                                              "
20360 'locate 0,15:print "2人目の名前を入力してエンター ":
20370 '2人目
20380 '2人目の名前を入れるに代入
20390 buffer_name$(1) = name$:
20400 goto Select_jyoushi:
20410 '3.上司の選択
20420 Select_jyoushi:
20430 cls 3:gload Gazo$ + "Screen1.png",0,0,0
20440 gload Gazo$ + "downscreen.png",0,0,800
20450 init "kb:4":No=0
20460 color rgb(0,0,255)
20470 locate 1,1
20480 print "上司の選択"
20490 color rgb(255,255,255)
20500 locate 0,4:print "名前から上司の方を選んでください"
20510 locate 0,6
20520 print " :";buffer_name$(0);"が上 司";chr$(13)
20530 locate 0,8
20540 print " :";buffer_name$(1);"が上 司";chr$(13)
20550 locate 0,15:
20560 print "                                     "
20570 locate 0,15:color rgb(0,0,0)
20580 print "上司の方を選んで右の丸ボタン"
20590 sp_on 0,1:sp_on 1,0:sp_on 2,0
20600 Select_jyoushi2:
20610 'ここでNo=0をおいてはいけない
20620 y=0:key$="":bg=0:
20630 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
20640 y = stick(1)
20650 key$ = inkey$
20660 bg = strig(1)
20670 pause 5
20680 wend
20690 '1.カーソル下の処理　or 十字キーの下処理
20700 if ((key$ = chr$(31)) or (y = 1)) then
20710 select case No
20720 case 0:
20730 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20740 case 1:
20750 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20760 end select
20770 endif
20780 '2.カーソル上処理　or 十字キーの上の処理
20790 if ((key$ = chr$(30)) or (y = -1)) then
20800 select case No
20810 case 0:
20820 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20830 case 1:
20840 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
20850 end select
20860 endif
20870 if ((key$ = chr$(13)) or (bg = 2)) then
20880 select case No
20890 case 0:
20900 '上司(name1)を配列に代入
20910 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20920 case 1:
20930 '上司（name2)を配列に代入
20940 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20950 end select
20960 endif
20970 '3.決定ボタン　Enter or 右の丸ボタン
20980 '1.誕生日入力
20990 '1-1.生まれた年を入力
21000 'Jyoushi_born_year:
21010 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
21020 '---------------------------------------------'
21030 '誕生日入力(生れた年代)
21040 Jyoushi_Input_Seireki:
21050 'buf_Jyoushi_Born_Year:上司の生まれた年代
21060 'buf_Jyoushi_Born_Day(0) = born_year
21070 cls 3:play "":count=0:count2=0
21080 init"kb:4"
21090 'No=-1:Okのとき
21100 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
21110 for i=0 to 3
21120 buf_Jyoushi_Born_Day(i)=0
21130 next i
21140 gload Gazo$ + "Screen1.png",0,0,0
21150 gload Gazo$ + "downscreen.png",0,0,800
21160 'Init"kb:2"
21170 '音声ファイル再生 2023.06.07
21180 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
21190 font 48
21200 locate 0,1
21210 '文字色：黒　 color rgb(0,0,0)
21220 color rgb(255,255,255)
21230 print "上司の生まれた年代を入れて下さい" + chr$(13)
21240 color rgb(255,255,255)
21250 locate 1,3
21260 print "上司の生まれた年代(西暦4桁):";buf_year$
21270 color rgb(255,255,255)
21280 'locate 4,6:print ":7"
21290 'locate 9,6:print ":8"
21300 'locate 12,6:print ":9"
21310 locate 4,6
21320 print ":7  :8  :9" + chr$(13)
21330 color rgb(255,255,255)
21340 locate 4,8
21350 print ":4  :5  :6" + chr$(13)
21360 color rgb(255,255,255)
21370 locate 4,10
21380 print ":1  :2  :3" + chr$(13)
21390 locate 4,12
21400 print "    :0"
21410 locate 12,12
21420 color rgb(0,0,255)
21430 print ":Ok"
21440 sp_on 4,0: sp_on 5,0:sp_on 6,0
21450 sp_on 7,0:sp_on 8,0:sp_on 9,0
21460 sp_on 10,0:sp_on 11,0:sp_on 12,0
21470 sp_on 13,0:sp_on 14,1
21480 Jyoushi_Input_Seireki2:
21490 key$="":bg=0:y=0:y2=0:bg2=0:
21500 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
21510 key$ = inkey$
21520 bg = strig(1)
21530 y = stick(1)
21540 y2 = stick(0)
21550 bg2=strig(0)
21560 pause 5
21570 wend
21580 '十字キー　ここから
21590 '上の矢印　または、十字キー上
21600 if ((y = -1) or (key$ = chr$(30))) then
21610 select case No
21620 'No=-1:okのとき:初期の状態
21630 '0kボタンから３に移動
21640 '上に行く 処理
21650 case -1:
21660 No=3:sp_on 12,1:sp_on 14,0
21670 pause 200:goto Jyoushi_Input_Seireki2:
21680 '選択肢:3
21690 '3ボタンから 6に移動
21700 case 3:
21710 No=6:sp_on 12,0:sp_on 11,1
21720 pause 200:goto Jyoushi_Input_Seireki2:
21730 '6ボタンから ９に移動
21740 case 6:
21750 No=9:sp_on 10,1:sp_on 11,0
21760 pause 200:goto Jyoushi_Input_Seireki2:
21770 '6ボタンから ９に移動　ここまで
21780 '9で上を押して何もしない
21790 case 9:
21800 '何もしない
21810 No=9
21820 pause 200:goto Jyoushi_Input_Seireki2:
21830 '9で上を押しても何もしない　ここまで
21840 '上　 0ボタンから2ボタン
21850 'sp_on 6,1:1
21860 'sp_on 8,1:5
21870 'sp_on 7,1:7
21880 case 0:
21890 No=2:sp_on 13,0:sp_on 9,1:
21900 pause 200:goto Jyoushi_Input_Seireki2:
21910 '上  0ボタンから2ボタン　ここまで
21920 '2から５になる 上
21930 case 2:
21940 No=5:sp_on 8,1:sp_on 9,0:
21950 pause 200:goto Jyoushi_Input_Seireki2:
21960 case 5:
21970 No=8:sp_on 7,1:sp_on 8,0
21980 pause 200:goto Jyoushi_Input_Seireki2:
21990 case 8:
22000 pause 200:goto Jyoushi_Input_Seireki2:
22010 case 1:
22020 No=4:sp_on 5,1:sp_on 6,0
22030 pause 200:goto Jyoushi_Input_Seireki2:
22040 case 4:
22050 No=7:sp_on 4,1:sp_on 5,0
22060 pause 200:goto Jyoushi_Input_Seireki2:
22070 case 7:
22080 pause 200:goto Jyoushi_Input_Seireki2:
22090 end select
22100 endif
22110 '左３　ここまで
22120 '下の矢印
22130 '中央 2
22140 if ((y=1) or (key$ = chr$(31))) then
22150 select case No
22160 '9から６に下げる
22170 case 9:
22180 No=6:sp_on 11,1:sp_on 10,0
22190 pause 200:goto Jyoushi_Input_Seireki2:
22200 '6から３に下げる
22210 case 6:
22220 No=3:sp_on 12,1:sp_on 11,0
22230 pause 200:goto Jyoushi_Input_Seireki2:
22240 '3から０ｋに変える
22250 case 3:
22260 No=-1:sp_on 14,1:sp_on 12,0
22270 pause 200:goto Jyoushi_Input_Seireki2:
22280 'Okから下のボタンを押しても何もしない
22290 case -1:
22300 pause 200:goto Jyoushi_Input_Seireki2:
22310 case 8:
22320 No=5:sp_on 8,1:sp_on 7,0
22330 pause 200:goto Jyoushi_Input_Seireki2:
22340 case 5:
22350 No=2:sp_on 9,1:sp_on 8,0
22360 pause 200:goto Jyoushi_Input_Seireki2:
22370 case 2:
22380 No=0:sp_on 13,1:sp_on 9,0
22390 pause 200:goto Jyoushi_Input_Seireki2:
22400 case 0:
22410 pause 200:goto Jyoushi_Input_Seireki2:
22420 case 7:
22430 No=4:sp_on 5,1:sp_on 4,0
22440 pause 200:goto Jyoushi_Input_Seireki2:
22450 case 4:
22460 No=1:sp_on 6,1:sp_on 5,0
22470 pause 200:goto Jyoushi_Input_Seireki2:
22480 case 1:
22490 pause 200:goto Jyoushi_Input_Seireki2:
22500 end select
22510 endif
22520 '左へボタン 十字キー　左　or 　カーソル左
22530 if ((y2 = -1) or (key$ = chr$(29))) then
22540 select case No
22550 'Ok ボタン  Okから　左　０に行く
22560 case -1:
22570 No=0:sp_on 13,1:sp_on 14,0
22580 pause 200:goto Jyoushi_Input_Seireki2:
22590 '0 ボタン  左　何もしない
22600 case 0:
22610 pause 200:goto Jyoushi_Input_Seireki2:
22620 case 3:
22630 No=2:sp_on 9,1:sp_on 12,0:
22640 pause 200:goto Jyoushi_Input_Seireki2:
22650 case 2:
22660 No=1:sp_on 6,1:sp_on 9,0:
22670 pause 200:goto Jyoushi_Input_Seireki2:
22680 case 1:
22690 pause 200:goto Jyoushi_Input_Seireki2:
22700 case 6:
22710 No=5:sp_on 8,1:sp_on 11,0
22720 pause 200:goto Jyoushi_Input_Seireki2:
22730 case 5:
22740 No=4:sp_on 5,1:sp_on 8,0
22750 pause 200:goto Jyoushi_Input_Seireki2:
22760 case 4:
22770 pause 200:goto Jyoushi_Input_Seireki2:
22780 case 9:
22790 No=8:sp_on 7,1:sp_on 10,0
22800 pause 200:goto Jyoushi_Input_Seireki2:
22810 case 8:
22820 No=7:sp_on 4,1:sp_on 7,0
22830 pause 200:goto Jyoushi_Input_Seireki2:
22840 case 7:
22850 pause 200:goto Jyoushi_Input_Seireki2:
22860 end select
22870 endif
22880 '右  十字キー　右　or カーソル　右
22890 if ((y2 = 1) or (key$ = chr$(28))) then
22900 select case No
22910 '0ボタンからokボタン右に移動
22920 case 0:
22930 No=-1:sp_on 14,1:sp_on 13,0
22940 pause 200:goto Jyoushi_Input_Seireki2:
22950 '0ボタンからokボタン 右に移動　ここまで
22960 'OKボタンで右を押して何もしない
22970 case -1:
22980 pause 200:goto Jyoushi_Input_Seireki2:
22990 case 1:
23000 No=2:sp_on 9,1:sp_on 6,0
23010 pause 200:goto Jyoushi_Input_Seireki2:
23020 case 2:
23030 No=3:sp_on 12,1:sp_on 9,0
23040 pause 200:goto Jyoushi_Input_Seireki2:
23050 case 3:
23060 pause 200:goto Jyoushi_Input_Seireki2:
23070 case 4:
23080 No=5:sp_on 8,1:sp_on 5,0
23090 pause 200:goto Jyoushi_Input_Seireki2:
23100 case 5:
23110 No=6:sp_on 11,1:sp_on 8,0
23120 pause 200:goto Jyoushi_Input_Seireki2:
23130 case 7:
23140 No=8:sp_on 7,1:sp_on 4,0
23150 pause 200:goto Jyoushi_Input_Seireki2:
23160 case 8:
23170 No=9:sp_on 10,1:sp_on 7,0
23180 pause 200:goto Jyoushi_Input_Seireki2:
23190 case 9:
23200 pause 200:goto Jyoushi_Input_Seireki2:
23210 case 6:
23220 pause 200:goto Jyoushi_Input_Seireki2:
23230 end select
23240 'Okから右ボタンを押して何もしない ここまで
23250 endif
23260 '十字キー　ここまで
23270 '==============================
23280 'ここから
23290 '==============================
23300 if ((bg=2) or (key$=chr$(13))) then
23310 select case count
23320 case 0:
23330 count = 1
23340 if (No=-1) then
23350 count = 0:No=0
23360 buf_Jyoushi_Born_Day(0) = No
23370 'Okボタンを押したとき
23380 goto Jyoushi_Input_Seireki2:
23390 else
23400 'Okボタン以外が押されたとき
23410 if (No>=1 and No<=2) then
23420 buf_year$="":buf_year$=str$(No) + "***"
23430 buf_year = No:a= No
23440 buf_Jyoushi_Born_Day(0) = No
23450 locate 1,3
23460 color rgb(255,255,255)
23470 print "上司の生まれた年代(西暦4桁):";buf_year$
23480 goto Jyoushi_Input_Seireki2:
23490 else
23500 count=0
23510 ui_msg"数字が範囲外になります。"
23520 buf_year$="":buf_year=0
23530 goto Jyoushi_Input_Seireki2:
23540 endif
23550 endif
23560 case 1:
23570 count = 2
23580 if (No = -1) then
23590 count = 1
23600 goto Jyoushi_Input_Seireki2:
23610 else
23620 buf_year = a * 10 + No
23630 b=buf_year
23640 buf_year$ = str$(buf_year) + "**"
23650 buf_Jyoushi_Born_Day(0)=buf_year
23660 locate 1,3
23670 color rgb(255,255,255)
23680 print "                                                                "
23690 locate 1,3
23700 print "上司の生まれた年代(西暦4桁):" + buf_year$
23710 'if (No = -1) then
23720 'count=1
23730 goto Jyoushi_Input_Seireki2:
23740 endif
23750 case 2:
23760 count=3
23770 if (No=-1) then
23780 count =2
23790 goto Jyoushi_Input_Seireki2:
23800 else
23810 buf_year = b * 10 + No
23820 c=buf_year
23830 buf_year$ = str$(buf_year) + "*"
23840 buf_Jyoushi_Born_Day(0) = buf_year
23850 locate 1,3
23860 color rgb(255,255,255)
23870 print "                                        "
23880 locate 1,3
23890 print "上司の生まれた年代(西暦4桁):";buf_year$
23900 goto Jyoushi_Input_Seireki2:
23910 endif
23920 case 3:
23930 count=4
23940 if (No = -1) then
23950 No=0
23960 goto Jyoushi_Input_Seireki2:
23970 else
23980 buf_year = c * 10 + No
23990 buf_year$ = str$(buf_year)
24000 buf_Jyoushi_Born_Day(0) = buf_year
24010 locate 1,3
24020 color RGB(255,255,255)
24030 print "                                      "
24040 locate 1,3
24050 print "上司の生まれた年代(西暦4桁):";buf_year$
24060 buf_year=val(buf_year$)
24070 'year=val(buf_year$)
24080 'if (No=-1) then
24090 'goto Input_Born_Month:
24100 'else
24110 goto Jyoushi_Input_Seireki2:
24120 endif
24130 case 4:
24140 'bufyear=buf_year
24150 if (No=-1) then
24160 buf_year = val(buf_year$)
24170 buf_Jyoushi_Born_Day(0)=buf_year
24180 sp_on 14,0:No=0
24190 goto Jyoushi_Input_Born_Month:
24200 else
24210 goto Jyoushi_Input_Seireki2:
24220 endif
24230 end select
24240 endif
24250 '===========================
24260 'ここまでを部下のところにコピーする.
24270 '===========================
24280 if (bg2 = 2) then
24290 select case count2
24300 case 0:
24310 if (No = -1) then
24320 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
24330 count=0
24340 locate 1,3
24350 color rgb(255,255,255)
24360 print "                                      "
24370 locate 1,3
24380 print "上司の生まれた年代（西暦4桁):"+buf_year$
24390 goto Jyoushi_Input_Seireki2:
24400 else
24410 '(buf_year=0) then
24420 buf_year=0:buf_year$="****"
24430 locate 1,3
24440 print "                                       "
24450 locate 1,3
24460 print "上司の生まれた年代(西暦4桁):"+buf_year$
24470 goto Jyoushi_Input_Seireki2:
24480 'endif
24490 endif
24500 end select
24510 endif
24520 'Input"上司の生れた年代(4桁,〜2025年):",year
24530 'if year > 2025 then goto Jyoushi_Input_Seireki:
24540 'if year = 123 then cls 3:cls 4:goto Main_Screen:
24550 '"4桁目"
24560 'bufyear4 = fix(year / 1000)
24570 '"3桁目"
24580 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
24590 '"2桁目"
24600 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
24610 '"1桁目"
24620 'bufyear1 = fix((year - ((bufyear4*
24630 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
24640 '2.生まれた月を入力
24650 Jyoushi_Input_Born_Month:
24660 cls 3:play "":count=0:count2=0
24670 'No=-1:Okのとき
24680 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
24690 for i=0 to 1
24700 buf_month(i)=0
24710 next i
24720 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
24730 gload Gazo$ + "Screen1.png",0,0,0
24740 gload Gazo$ + "downscreen.png",0,0,800
24750 'Init"kb:4"
24760 '音声ファイル再生 2023.06.07
24770 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
24780 font 48
24790 locate 0,1
24800 '文字色：黒　 color rgb(0,0,0)
24810 '文字色:白
24820 color rgb(255,255,255)
24830 print "上司の生まれた月を入れて下さい" + chr$(13)
24840 '文字色:白
24850 color rgb(255,255,255)
24860 locate 1,3
24870 '文字色:白
24880 print "上司の生まれた月(1月~12月):"+buf_Month$
24890 color rgb(255,255,255)
24900 'locate 4,6:print ":7"
24910 'locate 9,6:print ":8"
24920 'locate 12,6:print ":9"
24930 locate 4,6
24940 '文字色:赤
24950 print ":7  :8  :9" + chr$(13)
24960 color rgb(255,255,255)
24970 locate 4,8
24980 print ":4  :5  :6" + chr$(13)
24990 color rgb(255,255,255)
25000 locate 4,10
25010 print ":1  :2  :3" + chr$(13)
25020 locate 4,12
25030 print "    :0"
25040 locate 12,12
25050 color rgb(0,0,255)
25060 print ":Ok"
25070 sp_on 4,0: sp_on 5,0:sp_on 6,0
25080 sp_on 7,0:sp_on 8,0:sp_on 9,0
25090 sp_on 10,0:sp_on 11,0:sp_on 12,0
25100 sp_on 13,0:sp_on 14,1
25110 Jyoushi_Input_Born_Month2:
25120 key$="":bg=0:y=0:y2=0:bg2=0
25130 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
25140 key$ = inkey$
25150 bg = strig(1)
25160 y = stick(1)
25170 y2 = stick(0)
25180 bg2 = strig(0)
25190 pause 5
25200 wend
25210 '十字キー　ここから
25220 '上の矢印　または、十字キー上
25230 if ((y = -1) or (key$ = chr$(30))) then
25240 select case No
25250 'No=-1:okのとき:初期の状態
25260 '0kボタンから３に移動
25270 '上に行く 処理
25280 case -1:
25290 No=3:sp_on 12,1:sp_on 14,0
25300 pause 200:goto Jyoushi_Input_Born_Month2:
25310 '選択肢:3
25320 '3ボタンから 6に移動
25330 case 3:
25340 No=6:sp_on 12,0:sp_on 11,1
25350 pause 200:goto Jyoushi_Input_Born_Month2:
25360 '6ボタンから ９に移動
25370 case 6:
25380 No=9:sp_on 10,1:sp_on 11,0
25390 pause 200:goto Jyoushi_Input_Born_Month2:
25400 '6ボタンから ９に移動　ここまで
25410 '9で上を押して何もしない
25420 case 9:
25430 '何もしない
25440 No=9
25450 pause 200:goto Jyoushi_Input_Born_Month2:
25460 '9で上を押しても何もしない　ここまで
25470 '上　 0ボタンから2ボタン
25480 'sp_on 6,1:1
25490 'sp_on 8,1:5
25500 'sp_on 7,1:7
25510 case 0:
25520 No=2:sp_on 13,0:sp_on 9,1:
25530 pause 200:goto Jyoushi_Input_Born_Month2:
25540 '上  0ボタンから2ボタン　ここまで
25550 '2から５になる 上
25560 case 2:
25570 No=5:sp_on 8,1:sp_on 9,0:
25580 pause 200:goto Jyoushi_Input_Born_Month2:
25590 case 5:
25600 No=8:sp_on 7,1:sp_on 8,0
25610 pause 200:goto Jyoushi_Input_Born_Month2:
25620 case 8:
25630 pause 200:goto Input_Born_Month2:
25640 case 1:
25650 No=4:sp_on 5,1:sp_on 6,0
25660 pause 200:goto Jyoushi_Input_Born_Month2:
25670 case 4:
25680 No=7:sp_on 4,1:sp_on 5,0
25690 pause 200:goto Jyoushi_Input_Born_Month2:
25700 case 7:
25710 pause 200:goto Input_Born_Month2:
25720 end select
25730 endif
25740 '左３　ここまで
25750 '下の矢印
25760 '中央 2
25770 if ((y=1) or (key$ = chr$(31))) then
25780 select case No
25790 '9から６に下げる
25800 case 9:
25810 No=6:sp_on 11,1:sp_on 10,0
25820 pause 200:goto Jyoushi_Input_Born_Month2:
25830 '6から３に下げる
25840 case 6:
25850 No=3:sp_on 12,1:sp_on 11,0
25860 pause 200:goto Jyoushi_Input_Born_Month2:
25870 '3から０ｋに変える
25880 case 3:
25890 No=-1:sp_on 14,1:sp_on 12,0
25900 pause 200:goto Jyoushi_Input_Born_Month2:
25910 'Okから下のボタンを押しても何もしない
25920 case -1:
25930 pause 200:goto Jyoushi_Input_Born_Month2:
25940 case 8:
25950 No=5:sp_on 8,1:sp_on 7,0
25960 pause 200:goto Jyoushi_Input_Born_Month2:
25970 case 5:
25980 No=2:sp_on 9,1:sp_on 8,0
25990 pause 200:goto Jyoushi_Input_Born_Month2:
26000 case 2:
26010 No=0:sp_on 13,1:sp_on 9,0
26020 pause 200:goto Jyoushi_Input_Born_Month2:
26030 case 0:
26040 pause 200:goto Jyoushi_Input_Born_Month2:
26050 case 7:
26060 No=4:sp_on 5,1:sp_on 4,0
26070 pause 200:goto Jyoushi_Input_Born_Month2:
26080 case 4:
26090 No=1:sp_on 6,1:sp_on 5,0
26100 pause 200:goto Jyoushi_Input_Born_Month2:
26110 case 1:
26120 pause 200:goto Jyoushi_Input_Born_Month2:
26130 end select
26140 endif
26150 '左へボタン 十字キー　左　or 　カーソル左
26160 if ((y2 = -1) or (key$ = chr$(29))) then
26170 select case No
26180 'Ok ボタン  Okから　左　０に行く
26190 case -1:
26200 No=0:sp_on 13,1:sp_on 14,0
26210 pause 200:goto Jyoushi_Input_Born_Month2:
26220 '0 ボタン  左　何もしない
26230 case 0:
26240 pause 200:goto Jyoushi_Input_Born_Month2:
26250 case 3:
26260 No=2:sp_on 9,1:sp_on 12,0:
26270 pause 200:goto Jyoushi_Input_Born_Month2:
26280 case 2:
26290 No=1:sp_on 6,1:sp_on 9,0:
26300 pause 200:goto Jyoushi_Input_Born_Month2:
26310 case 1:
26320 pause 200:goto Jyoushi_Input_Born_Month2:
26330 case 6:
26340 No=5:sp_on 8,1:sp_on 11,0
26350 pause 200:goto Jyoushi_Input_Born_Month2:
26360 case 5:
26370 No=4:sp_on 5,1:sp_on 8,0
26380 pause 200:goto Jyoushi_Input_Born_Month2:
26390 case 4:
26400 pause 200:goto Jyoushi_Input_Born_Month2:
26410 case 9:
26420 No=8:sp_on 7,1:sp_on 10,0
26430 pause 200:goto Input_Born_Month2:
26440 case 8:
26450 No=7:sp_on 4,1:sp_on 7,0
26460 pause 200:goto Jyoushi_Input_Born_Month2:
26470 case 7:
26480 pause 200:goto Jyoushi_Input_Born_Month2:
26490 end select
26500 endif
26510 '右  十字キー　右　or カーソル　右
26520 if ((y2 = 1) or (key$ = chr$(28))) then
26530 select case No
26540 '0ボタンからokボタン右に移動
26550 case 0:
26560 No=-1:sp_on 14,1:sp_on 13,0
26570 pause 200:goto Jyoushi_Input_Born_Month2:
26580 '0ボタンからokボタン 右に移動　ここまで
26590 'OKボタンで右を押して何もしない
26600 case -1:
26610 pause 200:goto Jyoushi_Input_Born_Month2:
26620 case 1:
26630 No=2:sp_on 9,1:sp_on 6,0
26640 pause 200:goto Jyoushi_Input_Born_Month2:
26650 case 2:
26660 No=3:sp_on 12,1:sp_on 9,0
26670 pause 200:goto Jyoushi_Input_Born_Month2:
26680 case 3:
26690 pause 200:goto Jyoushi_Input_Born_Month2:
26700 case 4:
26710 No=5:sp_on 8,1:sp_on 5,0
26720 pause 200:goto Jyoushi_Input_Born_Month2:
26730 case 5:
26740 No=6:sp_on 11,1:sp_on 8,0
26750 pause 200:goto Jyoushi_Input_Born_Month2:
26760 case 7:
26770 No=8:sp_on 7,1:sp_on 4,0
26780 pause 200:goto Jyoushi_Input_Born_Month2:
26790 case 8:
26800 No=9:sp_on 10,1:sp_on 7,0
26810 pause 200:goto Jyoushi_Input_Born_Month2:
26820 case 9:
26830 pause 200:goto Jyoushi_Input_Born_Month2:
26840 case 6:
26850 pause 200:goto Jyoushi_Input_Born_Month2:
26860 end select
26870 'Okから右ボタンを押して何もしない ここまで
26880 endif
26890 '十字キー　ここまで
26900 '右の丸ボタン + Enter key 決定キー
26910 if ((bg=2) or (key$=chr$(13))) then
26920 select case count
26930 case 0:
26940 if (No=-1) then No=0
26950 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
26960 if (buf_month > 1 and buf_month < 10)  then
26970 buf_Month$ = str$(buf_month)
26980 'buf_month=No
26990 endif
27000 if (buf_month = 1)  then
27010 buf_Month$ = str$(buf_month) + "*"
27020 'c=buf_month
27030 endif
27040 locate 1,3
27050 print "                                     "
27060 color RGB(255,255,255)
27070 locate 1,3
27080 print "上司の生まれた月(1月~12月):" + buf_Month$
27090 goto Jyoushi_Input_Born_Month2:
27100 case 1:
27110 count = 2:
27120 'c = val(buf_Month$)
27130 if (No = -1) then
27140 'count=0
27150 No=0
27160 month=buf_month
27170 buf_month=val(buf_Month$)
27180 month=buf_month
27190 buf_Jyoushi_Born_Day(1)=month
27200 '生まれた日に飛ぶ
27210 goto Jyoushi_Input_Born_Day:
27220 else
27230 buf_month = c*10 + No
27240 'if (buf_month = 1) then
27250 'buf_Month$ = str$(buf_month)
27260 'endif
27270 buf_Month$ = str$(buf_month)
27280 buf_Jyoushi_Born_Day(1) = buf_month
27290 locate 0,3
27300 print "                                           "
27310 locate 1,3
27320 color Rgb(255,255,255)
27330 print "上司の生まれた月(1月~12月):" + buf_Month$
27340 goto Jyoushi_Input_Born_Month2:
27350 endif
27360 case 2:
27370 '==================================
27380 '何もしない
27390 'coun = 2
27400 '==================================
27410 'c= val(buf_Month$)
27420 'buf_month = c*10 + No
27430 'buf_Month$ = str$(buf_month)
27440 'locate 2,3
27450 'print "上司の生まれた月(1月～12月):";buf_Month$
27460 'goto Jyoushi_Input_Born_Month2:
27470 'case 3:
27480 'count=4
27490 'b=val(buf_month$)
27500 'buf_month=c*10+No
27510 'buf_Month$=str$(buf_month)
27520 'locate 2,3
27530 'print "上司の生まれた月(1月～12月):";buf_Month$
27540 'buf_month=val(buf_Month$)
27550 'year=val(buf_year$)
27560 if (No=-1) then
27570 No=0
27580 goto Jyoushi_Input_Born_Day:
27590 else
27600 goto Jyoushi_Input_Born_Month2:
27610 endif
27620 'case 4:
27630 'bufyear=buf_year
27640 'if (No=-1) then
27650 'buf_month = val(buf_Month$)
27660 'month = buf_month
27670 'sp_on 14,0
27680 'goto Input_Born_Day:
27690 'else
27700 'goto Input_Born_Month2:
27710 'endif
27720 end select
27730 endif
27740 '左の丸ボタン　キャンセル
27750 if (bg2=2) then
27760 select case count2
27770 case 0:
27780 if (No = -1) then
27790 buf_month=0:buf_Month$="**"
27800 count=0
27810 'goto rewrite2:
27820 else
27830 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
27840 buf_month = 0:buf_Month$ = "**"
27850 locate 0,3
27860 color rgb(255,255,255)
27870 print "                                       "
27880 goto rewrite2:
27890 if (No>12) then
27900 ui_msg"値が範囲外です。"
27910 goto rewrite2:
27920 endif
27930 endif
27940 endif
27950 rewrite2:
27960 locate 2,3
27970 color rgb(255,255,255)
27980 print "                                      "
27990 locate 2,3
28000 print "上司の生まれた月(1月~12月):"+buf_Month$
28010 goto Jyoushi_Input_Born_Month2:
28020 end select
28030 'endif
28040 endif
28050 end
28060 'end
28070 '生れた日を入力
28080 Jyoushi_Input_Born_Day:
28090 '生まれた日入力
28100 cls 3:play ""
28110 'No=-1:Okのとき
28120 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
28130 for i=0 to 1
28140 buf_day(i)=0
28150 next i
28160 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
28170 gload Gazo$ + "Screen1.png",0,0,0
28180 gload Gazo$ + "downscreen.png",0,0,800
28190 'Init"kb:2"
28200 '音声ファイル再生 2023.06.07
28210 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
28220 font 48
28230 locate 1,1
28240 '文字色：黒　 color rgb(0,0,0)
28250 color rgb(255,255,255)
28260 print "上司の生まれた日を入れて下さい" + chr$(13)
28270 locate 1,3
28280 color rgb(255,255,255)
28290 print "                                      "
28300 locate 1,3
28310 print "上司の生まれた日(1日~31日):"+buf_Day$
28320 color rgb(255,255,255)
28330 'locate 4,6:print ":7"
28340 'locate 9,6:print ":8"
28350 'locate 12,6:print ":9"
28360 locate 4,6
28370 print ":7  :8  :9" + chr$(13)
28380 color rgb(255,255,255)
28390 locate 4,8
28400 print ":4  :5  :6" + chr$(13)
28410 color rgb(255,255,255)
28420 locate 4,10
28430 print ":1  :2  :3" + chr$(13)
28440 locate 4,12
28450 print "    :0"
28460 locate 12,12
28470 color rgb(0,0,255)
28480 print ":Ok"
28490 sp_on 4,0: sp_on 5,0:sp_on 6,0
28500 sp_on 7,0:sp_on 8,0:sp_on 9,0
28510 sp_on 10,0:sp_on 11,0:sp_on 12,0
28520 sp_on 13,0:sp_on 14,1
28530 Jyoushi_Input_Born_Day2:
28540 key$="":bg=0:y=0:y2=0:bg2=0:
28550 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
28560 key$ = inkey$
28570 bg = strig(1)
28580 y = stick(1)
28590 y2 = stick(0)
28600 bg2 = strig(0)
28610 pause 5
28620 wend
28630 '十字キー　ここから
28640 '上の矢印　または、十字キー上
28650 if ((y = -1) or (key$ = chr$(30))) then
28660 select case No
28670 'No=-1:okのとき:初期の状態
28680 '0kボタンから３に移動
28690 '上に行く 処理
28700 case -1:
28710 No=3:sp_on 12,1:sp_on 14,0
28720 pause 200:goto Jyoushi_Input_Born_Day2:
28730 '選択肢:3
28740 '3ボタンから 6に移動
28750 case 3:
28760 No=6:sp_on 12,0:sp_on 11,1
28770 pause 200:goto Jyoushi_Input_Born_Day2:
28780 '6ボタンから ９に移動
28790 case 6:
28800 No=9:sp_on 10,1:sp_on 11,0
28810 pause 200:goto Jyoushi_Input_Born_Day2:
28820 '6ボタンから ９に移動　ここまで
28830 '9で上を押して何もしない
28840 case 9:
28850 '何もしない
28860 No=9
28870 pause 200:goto Jyoushi_Input_Born_Day2:
28880 '9で上を押しても何もしない　ここまで
28890 '上　 0ボタンから2ボタン
28900 'sp_on 6,1:1
28910 'sp_on 8,1:5
28920 'sp_on 7,1:7
28930 case 0:
28940 No=2:sp_on 13,0:sp_on 9,1:
28950 pause 200:goto Jyoushi_Input_Born_Day2:
28960 '上  0ボタンから2ボタン　ここまで
28970 '2から５になる 上
28980 case 2:
28990 No=5:sp_on 8,1:sp_on 9,0:
29000 pause 200:goto Jyoushi_Input_Born_Day2:
29010 case 5:
29020 No=8:sp_on 7,1:sp_on 8,0
29030 pause 200:goto Jyoushi_Input_Born_Day2:
29040 case 8:
29050 pause 200:goto Jyoushi_Input_Born_Day2:
29060 case 1:
29070 No=4:sp_on 5,1:sp_on 6,0
29080 pause 200:goto Jyoushi_Input_Born_Day2:
29090 case 4:
29100 No=7:sp_on 4,1:sp_on 5,0
29110 pause 200:goto Jyoushi_Input_Born_Day2:
29120 case 7:
29130 pause 200:goto Jyoushi_Input_Born_Day2:
29140 end select
29150 endif
29160 '左３　ここまで
29170 '下の矢印
29180 '中央 2
29190 if ((y=1) or (key$ = chr$(31))) then
29200 select case No
29210 '9から６に下げる
29220 case 9:
29230 No=6:sp_on 11,1:sp_on 10,0
29240 pause 200:goto Jyoushi_Input_Born_Day2:
29250 '6から３に下げる
29260 case 6:
29270 No=3:sp_on 12,1:sp_on 11,0
29280 pause 200:goto Jyoushi_Input_Born_Day2:
29290 '3から０ｋに変える
29300 case 3:
29310 No=-1:sp_on 14,1:sp_on 12,0
29320 pause 200:goto Jyoushi_Input_Born_Day2:
29330 'Okから下のボタンを押しても何もしない
29340 case -1:
29350 pause 200:goto Jyoushi_Input_Born_Day2:
29360 case 8:
29370 No=5:sp_on 8,1:sp_on 7,0
29380 pause 200:goto Jyoushi_Input_Born_Day2:
29390 case 5:
29400 No=2:sp_on 9,1:sp_on 8,0
29410 pause 200:goto Jyoushi_Input_Born_Day2:
29420 case 2:
29430 No=0:sp_on 13,1:sp_on 9,0
29440 pause 200:goto Jyoushi_Input_Born_Day2:
29450 case 0:
29460 pause 200:goto Jyoushi_Input_Born_Day2:
29470 case 7:
29480 No=4:sp_on 5,1:sp_on 4,0
29490 pause 200:goto Jyoushi_Input_Born_Day2:
29500 case 4:
29510 No=1:sp_on 6,1:sp_on 5,0
29520 pause 200:goto Jyoushi_Input_Born_Day2:
29530 case 1:
29540 pause 200:goto Jyoushi_Input_Born_Day2:
29550 end select
29560 endif
29570 '左へボタン 十字キー　左　or 　カーソル左
29580 if ((y2 = -1) or (key$ = chr$(29))) then
29590 select case No
29600 'Ok ボタン  Okから　左　０に行く
29610 case -1:
29620 No=0:sp_on 13,1:sp_on 14,0
29630 pause 200:goto Jyoushi_Input_Born_Day2:
29640 '0 ボタン  左　何もしない
29650 case 0:
29660 pause 200:goto Jyoushi_Input_Born_Day2:
29670 case 3:
29680 No=2:sp_on 9,1:sp_on 12,0:
29690 pause 200:goto Jyoushi_Input_Born_Day2:
29700 case 2:
29710 No=1:sp_on 6,1:sp_on 9,0:
29720 pause 200:goto Jyoushi_Input_Born_Day2:
29730 case 1:
29740 pause 200:goto Jyoushi_Input_Born_Day2:
29750 case 6:
29760 No=5:sp_on 8,1:sp_on 11,0
29770 pause 200:goto Jyoushi_Input_Born_Day2:
29780 case 5:
29790 No=4:sp_on 5,1:sp_on 8,0
29800 pause 200:goto Jyoushi_Input_Born_Day2:
29810 case 4:
29820 pause 200:goto Jyoushi_Input_Born_Day2:
29830 case 9:
29840 No=8:sp_on 7,1:sp_on 10,0
29850 pause 200:goto Jyoushi_Input_Born_Day2:
29860 case 8:
29870 No=7:sp_on 4,1:sp_on 7,0
29880 pause 200:goto Jyoushi_Input_Born_Day2:
29890 case 7:
29900 pause 200:goto Jyoushi_Input_Born_Day2:
29910 end select
29920 endif
29930 '右  十字キー　右　or カーソル　右
29940 if ((y2 = 1) or (key$ = chr$(28))) then
29950 select case No
29960 '0ボタンからokボタン右に移動
29970 case 0:
29980 No=-1:sp_on 14,1:sp_on 13,0
29990 pause 200:goto Jyoushi_Input_Born_Day2:
30000 '0ボタンからokボタン 右に移動　ここまで
30010 'OKボタンで右を押して何もしない
30020 case -1:
30030 pause 200:goto Jyoushi_Input_Born_Day2:
30040 case 1:
30050 No=2:sp_on 9,1:sp_on 6,0
30060 pause 200:goto Jyoushi_Input_Born_Day2:
30070 case 2:
30080 No=3:sp_on 12,1:sp_on 9,0
30090 pause 200:goto Jyoushi_Input_Born_Day2:
30100 case 3:
30110 pause 200:goto Jyoushi_Input_Born_Day2:
30120 case 4:
30130 No=5:sp_on 8,1:sp_on 5,0
30140 pause 200:goto Jyoushi_Input_Born_Day2:
30150 case 5:
30160 No=6:sp_on 11,1:sp_on 8,0
30170 pause 200:goto Jyoushi_Input_Born_Day2:
30180 case 7:
30190 No=8:sp_on 7,1:sp_on 4,0
30200 pause 200:goto Jyoushi_Input_Born_Day2:
30210 case 8:
30220 No=9:sp_on 10,1:sp_on 7,0
30230 pause 200:goto Jyoushi_Input_Born_Day2:
30240 case 9:
30250 pause 200:goto Jyoushi_Input_Born_Day2:
30260 case 6:
30270 pause 200:goto Jyoushi_Input_Born_Day2:
30280 end select
30290 'Okから右ボタンを押して何もしない ここまで
30300 endif
30310 '十字キー　ここまで
30320 '右の丸ボタンを押したとき
30330 if ((bg = 2) or (key$ = chr$(13))) then
30340 'count :決定ボタンを押した回数
30350 select case (count)
30360 '1桁目入力
30370 case 0:
30380 count = 1:
30390 if (No = -1) then
30400 '1桁目　OKでは何もしない
30410 No=c
30420 'goto Jyoushi_Input_Born_Day2:
30430 else
30440 'ok以外のボタンを押したとき
30450 buf_day = No:buf_Day$ = str$(No)
30460 buf_Jyoushi_Born_Day(2)=buf_day
30470 c=No
30480 locate 1,3
30490 print "                                      "
30500 color RGB(255,255,255)
30510 locate 1,3
30520 print "上司の生まれた日(1日~31日):" + buf_Day$
30530 endif
30540 'check2:
30550 'if (buf_day >= 1 and buf_day <= 9) then
30560 'sp_on 14,0
30570 'goto complate_jyoushi:
30580 'else
30590 'sp_on 14,0
30600 goto Jyoushi_Input_Born_Day2:
30610 'end
30620 'endif
30630 case 1:
30640 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
30650 count = 2:
30660 'locate 2,3
30670 'color RGB(255,255,255)
30680 'print "生まれた日(1日~31日):";buf_Day$
30690 'Okボタンを押したときの処理
30700 '入力値　10未満のとき
30710 'buf_day = c * 10 + No
30720 if (No = -1) then
30730 c=buf_day:No=0
30740 'buf_day = c
30750 buf_Day$ = str$(buf_day)
30760 '10以下のとき
30770 'if (buf_day < 10) then
30780 sp_on 14,0
30790 goto complate_jyoushi:
30800 'end
30810 'endif
30820 else
30830 'c=No
30840 buf_day = c * 10 + No
30850 buf_Day$ = str$(buf_day)
30860 'buf_day = c:buf_Day$=str$(buf_day)
30870 buf_Jyoushi_Born_Day(2)=buf_day
30880 locate 1,3
30890 print "                                           "
30900 locate 1,3
30910 color Rgb(255,255,255)
30920 print "上司の生まれた日(1日~31日):" + buf_Day$
30930 goto Jyoushi_Input_Born_Day2:
30940 'goto
30950 endif
30960 'endif
30970 '生まれた日　2桁目の数字　or 1桁の数字 + ok
30980 case 2:
30990 'buf_day = c * 10 + No
31000 'buf_Jyoushi_Born_Day(2)=buf_day
31010 'locate 1,3
31020 'print "                                      "
31030 'locate 1,3
31040 'locate 2,3
31050 'print "生まれた日(1日〜31日):";buf_Day
31060 'No=-1:ok ボタンを押したとき
31070 if (No = -1) then
31080 'if ((buf_day > 0) and (buf_day < 32)) then
31090 No=0
31100 sp_on 14,0
31110   goto complate_jyoushi:
31120 'end
31130 else
31140   goto Jyoushi_Input_Born_Day2:
31150 'endif
31160 'Okボタン以外を押したとき
31170 'else
31180 'c=val(buf_Day$)
31190 'buf_day = c * 10 + No
31200 'buf_Jyoushi_Born_Day(2) = buf_day
31210 'buf_Day$ = str$(buf_day)
31220 'locate 1,3
31230 'print "上司の生まれた日(1日~31日):";buf_Day$
31240 'goto Jyoushi_Input_Born_Day2:
31250 endif
31260 'case 3:
31270 'count=4
31280 'c=val(buf_day$)
31290 'buf_day=c*10+No
31300 'buf_day$=str$(buf_day)
31310 'locate 2,3
31320 'print "生まれた日を入れてください:";buf_day$
31330 'year=val(buf_year$)
31340 'if (No = -1) then
31350 'goto Jyoushi_Input_Born_Day:
31360 'sp_on 14,0:
31370 'goto complate_jyoushi:
31380 'else
31390 'goto Jyoushi_Input_Born_Month2:
31400 'endif
31410 'case 4:
31420 'bufyear=buf_year
31430 'if (No=-1) then
31440 'buf_day = val(buf_day$)
31450 'bufday = buf_day
31460 'sp_on 14,0
31470 'goto Jyoushi_Input_Born_Day2:
31480 'else
31490 'goto Jyoushi_Input_Born_Day2:
31500 'endif
31510 end select
31520 endif
31530 if (bg2=2) then
31540 select case count2
31550 case 0:
31560 if (No=-1) then
31570 buf_day=0:buf_Day$="**":No=0
31580 if (buf_day >= 1 and buf_day <= 31) then
31590 count=0
31600 buf_day=0:buf_Day$ = "**"
31610 goto rewrite_day3:
31620 else
31630 buf_day=0:buf_Day$ = "**"
31640 ui_msg"値が範囲外です"
31650 endif
31660 goto rewrite_day3:
31670 else
31680 goto rewrite_day3:
31690 endif
31700 rewrite_day3:
31710 locate 2,3
31720 color rgb(255,255,255)
31730 print "                                      "
31740 locate 2,3
31750 print "生まれた日(1日~31日):" + buf_Day$
31760 goto Jyoushi_Input_Born_Day2:
31770 end select
31780 endif
31790 '--------------------------------------------'
31800 'locate 2,0:color rgb(255,0,0)
31810 'print "上司の生まれた年代を入力"
31820 'color rgb(255,255,255)
31830 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
31840 'locate 2,4:Input "上司の生まれた年:",born_year
31850 '誕生日データーを配列に代入
31860 'buf_Jyoushi_Born_Year:上司の生まれた年代
31870 'buf_Jyoushi_Born_Day(0) = born_year
31880 'born_year = 0
31890 '---------------------------------------------'
31900 'goto Jyoushi_born_month:
31910 '1-2.生まれた月を入力
31920 'Jyoushi_born_month:
31930 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31940 'init "kb:4"
31950 'locate 2,1:
31960 'color rgb(255,0,0)
31970 'print "上司の生まれた月入力"
31980 'color rgb(255,255,255)
31990 'locate 2,4:print "生まれた月を入力してください"
32000 'locate 2,5
32010 'Input "上司の生まれ月:",born_month
32020 'buf_Jyoushi_Born_Day(1) = born_month
32030 'born_month = 0
32040 'goto Jyoushi_born_day:
32050 'buf_Jyoushi_Born_day
32060 '1-3.生まれた日を入力
32070 'Jyoushi_born_day:
32080 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
32090 'init "kb:4"
32100 'locate 2,1:color rgb(255,0,0)
32110 'print "上司の生まれた日　入力"
32120 'locate 2,4:color rgb(255,255,255)
32130 'print "生まれた日を入力してください"
32140 'locate 2,5
32150 'Input "上司の生まれた日:",born_day
32160 'buf_Jyoushi_Born_Day(2) = born_day
32170 'born_day = 0
32180 'goto buka_born_year:
32190 '2.部下の誕生日入力
32200 '2-1.生まれた年を入力
32210 'buka_born_year:
32220 'cls 3:gload Gazo$+"Screen1.png",0,0,0
32230 'init "kb:2"
32240 'locate 1,1:color rgb(255,0,0)
32250 'print "部下の生まれた年代入力"
32260 'locate 0,4:color rgb(255,255,255)
32270 'print "部下の生まれた年（西暦4桁）を入れてください"
32280 'locate 0,5
32290 'Input "部下の生まれた年(西暦4桁):",born_year
32300 'buf_Buka_Born_Day(0) = born_year
32310 'born_year = 0
32320 '2-2.生まれた月を入力
32330 'buka_born_month:
32340 'cls 3:gload Gazo$+"Screen1.png",0,0,0
32350 'init "kb:2"
32360 'locate 2,1:color rgb(255,0,0)
32370 'print "部下の生まれた月 入力"
32380 'locate 2,4:color rgb(255,255,255)
32390 'print "部下の生まれた月を入力してください"
32400 'locate 2,5:Input "部下の生まれた月:",born_month
32410 'buf_Buka_Born_Day(1) = born_month
32420 '2-3.生まれた日を入力
32430 'buka_born_day:
32440 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
32450 'init "kb:2"
32460 'locate 2,1:color rgb(255,0,0)
32470 'print "生まれた日入力"
32480 'color rgb(255,255,255)
32490 'locate 2,4:print "生まれた日を入力してください"
32500 'locate 2,5:Input "部下の生まれた日:",born_day
32510 'buf_Buka_Born_Day(2) = born_day
32520 'born_day=0:goto Result_Business_Aisyou:
32530 '--------------------------------------------'
32540 complate_jyoushi:
32550 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
32560 buf_Jyoushi = Kabara_Num(a,b,c)
32570 a_1=buf_Jyoushi
32580 goto Buka_Input_Seireki:
32590 '--------------------------------------------'
32600 '部下'
32610 '1.部下の生まれた年代'
32620 Buka_Input_Seireki:
32630 cls 3:play "":count=0:count2=0
32640 init"kb:4"
32650 'No=-1:Okのとき
32660 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
32670 for i=0 to 3
32680 buf_Buka_Born_Day(i)=0
32690 next i
32700 gload Gazo$ + "Screen1.png",0,0,0
32710 gload Gazo$ + "downscreen.png",0,0,800
32720 'Init"kb:2"
32730 '音声ファイル再生 2023.06.07
32740 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
32750 font 48
32760 locate 0,1
32770 '文字色：黒　 color rgb(0,0,0)
32780 color rgb(255,255,255)
32790 print "部下の生まれた年代を入れて下さい" + chr$(13)
32800 color rgb(255,255,255)
32810 locate 1,3
32820 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
32830 color rgb(255,255,255)
32840 'locate 4,6:print ":7"
32850 'locate 9,6:print ":8"
32860 'locate 12,6:print ":9"
32870 locate 4,6
32880 print ":7  :8  :9" + chr$(13)
32890 color rgb(255,255,255)
32900 locate 4,8
32910 print ":4  :5  :6" + chr$(13)
32920 color rgb(255,255,255)
32930 locate 4,10
32940 print ":1  :2  :3" + chr$(13)
32950 locate 4,12
32960 print "    :0"
32970 locate 12,12
32980 color rgb(0,0,255)
32990 print ":Ok"
33000 sp_on 4,0: sp_on 5,0:sp_on 6,0
33010 sp_on 7,0:sp_on 8,0:sp_on 9,0
33020 sp_on 10,0:sp_on 11,0:sp_on 12,0
33030 sp_on 13,0:sp_on 14,1
33040 Buka_Input_Seireki2:
33050 key$="":bg=0:y=0:y2=0:bg2=0:
33060 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33070 key$ = inkey$
33080 bg = strig(1)
33090 y = stick(1)
33100 y2 = stick(0)
33110 bg2=strig(0)
33120 pause 5
33130 wend
33140 '十字キー　ここから
33150 '上の矢印　または、十字キー上
33160 if ((y = -1) or (key$ = chr$(30))) then
33170 select case No
33180 'No=-1:okのとき:初期の状態
33190 '0kボタンから３に移動
33200 '上に行く 処理
33210 case -1:
33220 No=3:sp_on 12,1:sp_on 14,0
33230 pause 200:goto Buka_Input_Seireki2:
33240 '選択肢:3
33250 '3ボタンから 6に移動
33260 case 3:
33270 No=6:sp_on 12,0:sp_on 11,1
33280 pause 200:goto Buka_Input_Seireki2:
33290 '6ボタンから ９に移動
33300 case 6:
33310 No=9:sp_on 10,1:sp_on 11,0
33320 pause 200:goto Buka_Input_Seireki2:
33330 '6ボタンから ９に移動　ここまで
33340 '9で上を押して何もしない
33350 case 9:
33360 '何もしない
33370 No=9
33380 pause 200:goto Buka_Input_Seireki2:
33390 '9で上を押しても何もしない　ここまで
33400 '上　 0ボタンから2ボタン
33410 'sp_on 6,1:1
33420 'sp_on 8,1:5
33430 'sp_on 7,1:7
33440 case 0:
33450 No=2:sp_on 13,0:sp_on 9,1:
33460 pause 200:goto Buka_Input_Seireki2:
33470 '上  0ボタンから2ボタン　ここまで
33480 '2から５になる 上
33490 case 2:
33500 No=5:sp_on 8,1:sp_on 9,0:
33510 pause 200:goto Buka_Input_Seireki2:
33520 case 5:
33530 No=8:sp_on 7,1:sp_on 8,0
33540 pause 200:goto Buka_Input_Seireki2:
33550 case 8:
33560 pause 200:goto Buka_Input_Seireki2:
33570 case 1:
33580 No=4:sp_on 5,1:sp_on 6,0
33590 pause 200:goto Buka_Input_Seireki2:
33600 case 4:
33610 No=7:sp_on 4,1:sp_on 5,0
33620 pause 200:goto Buka_Input_Seireki2:
33630 case 7:
33640 pause 200:goto Buka_Input_Seireki2:
33650 end select
33660 endif
33670 '左３　ここまで
33680 '下の矢印
33690 '中央 2
33700 if ((y=1) or (key$ = chr$(31))) then
33710 select case No
33720 '9から６に下げる
33730 case 9:
33740 No=6:sp_on 11,1:sp_on 10,0
33750 pause 200:goto Buka_Input_Seireki2:
33760 '6から３に下げる
33770 case 6:
33780 No=3:sp_on 12,1:sp_on 11,0
33790 pause 200:goto Buka_Input_Seireki2:
33800 '3から０ｋに変える
33810 case 3:
33820 No=-1:sp_on 14,1:sp_on 12,0
33830 pause 200:goto Buka_Input_Seireki2:
33840 'Okから下のボタンを押しても何もしない
33850 case -1:
33860 pause 200:goto Buka_Input_Seireki2:
33870 case 8:
33880 No=5:sp_on 8,1:sp_on 7,0
33890 pause 200:goto Buka_Input_Seireki2:
33900 case 5:
33910 No=2:sp_on 9,1:sp_on 8,0
33920 pause 200:goto Buka_Input_Seireki2:
33930 case 2:
33940 No=0:sp_on 13,1:sp_on 9,0
33950 pause 200:goto Buka_Input_Seireki2:
33960 case 0:
33970 pause 200:goto Buka_Input_Seireki2:
33980 case 7:
33990 No=4:sp_on 5,1:sp_on 4,0
34000 pause 200:goto Buka_Input_Seireki2:
34010 case 4:
34020 No=1:sp_on 6,1:sp_on 5,0
34030 pause 200:goto Buka_Input_Seireki2:
34040 case 1:
34050 pause 200:goto Buka_Input_Seireki2:
34060 end select
34070 endif
34080 '左へボタン 十字キー　左　or 　カーソル左
34090 if ((y2 = -1) or (key$ = chr$(29))) then
34100 select case No
34110 'Ok ボタン  Okから　左　０に行く
34120 case -1:
34130 No=0:sp_on 13,1:sp_on 14,0
34140 pause 200:goto Buka_Input_Seireki2:
34150 '0 ボタン  左　何もしない
34160 case 0:
34170 pause 200:goto Buka_Input_Seireki2:
34180 case 3:
34190 No=2:sp_on 9,1:sp_on 12,0:
34200 pause 200:goto Buka_Input_Seireki2:
34210 case 2:
34220 No=1:sp_on 6,1:sp_on 9,0:
34230 pause 200:goto Buka_Input_Seireki2:
34240 case 1:
34250 pause 200:goto Buka_Input_Seireki2:
34260 case 6:
34270 No=5:sp_on 8,1:sp_on 11,0
34280 pause 200:goto Buka_Input_Seireki2:
34290 case 5:
34300 No=4:sp_on 5,1:sp_on 8,0
34310 pause 200:goto Buka_Input_Seireki2:
34320 case 4:
34330 pause 200:goto Buka_Input_Seireki2:
34340 case 9:
34350 No=8:sp_on 7,1:sp_on 10,0
34360 pause 200:goto Buka_Input_Seireki2:
34370 case 8:
34380 No=7:sp_on 4,1:sp_on 7,0
34390 pause 200:goto Buka_Input_Seireki2:
34400 case 7:
34410 pause 200:goto Buka_Input_Seireki2:
34420 end select
34430 endif
34440 '右  十字キー　右　or カーソル　右
34450 if ((y2 = 1) or (key$ = chr$(28))) then
34460 select case No
34470 '0ボタンからokボタン右に移動
34480 case 0:
34490 No=-1:sp_on 14,1:sp_on 13,0
34500 pause 200:goto Buka_Input_Seireki2:
34510 '0ボタンからokボタン 右に移動　ここまで
34520 'OKボタンで右を押して何もしない
34530 case -1:
34540 pause 200:goto Buka_Input_Seireki2:
34550 case 1:
34560 No=2:sp_on 9,1:sp_on 6,0
34570 pause 200:goto Buka_Input_Seireki2:
34580 case 2:
34590 No=3:sp_on 12,1:sp_on 9,0
34600 pause 200:goto Buka_Input_Seireki2:
34610 case 3:
34620 pause 200:goto Buka_Input_Seireki2:
34630 case 4:
34640 No=5:sp_on 8,1:sp_on 5,0
34650 pause 200:goto Buka_Input_Seireki2:
34660 case 5:
34670 No=6:sp_on 11,1:sp_on 8,0
34680 pause 200:goto Buka_Input_Seireki2:
34690 case 7:
34700 No=8:sp_on 7,1:sp_on 4,0
34710 pause 200:goto Buka_Input_Seireki2:
34720 case 8:
34730 No=9:sp_on 10,1:sp_on 7,0
34740 pause 200:goto Buka_Input_Seireki2:
34750 case 9:
34760 pause 200:goto Buka_Input_Seireki2:
34770 case 6:
34780 pause 200:goto Buka_Input_Seireki2:
34790 end select
34800 'Okから右ボタンを押して何もしない ここまで
34810 endif
34820 '十字キー　ここまで
34830 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
34840 'ここからコメント
34850 '右の丸ボタン決定を押した数:count
34860 'if ((bg=2) or (key$=chr$(13))) then
34870 'select case count
34880 'case 0:
34890 'count=1
34900 'if (No = -1) then
34910 'count = 0
34920 'Okボタンを押したとき
34930 '
34940 'goto Buka_Input_Seireki2:
34950 'else
34960 'Okボタン以外が押されたとき
34970 'if (No >= 1 and No <= 2) then
34980 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
34990 'buf_buka_year = No
35000 'buf_Buka_Born_Day(0) = bufyear
35010 'locate 2,3
35020 'color rgb(255,255,255)
35030 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35040 'goto Buka_Input_Seireki2:
35050 'else
35060 'count=0
35070 'ui_msg"数字が範囲外になります。"
35080 'buf_buka_year$ ="":buf_buka_year=0
35090 'goto Buka_Input_Seireki2:
35100 'endif
35110 'endif
35120 'case 1:
35130 'count = 2
35140 'if (No = -1) then
35150 'count = 1
35160 'goto Buka_Input_Seireki2:
35170 'else
35180 'b = val(buf_buka_year$)
35190 'buf_buka_year = b * 10 + No
35200 'buf_buka_year$ = str$(buf_buka_year)
35210 'buf_Buka_Born_Day(0) = bufyear
35220 'locate 1,3
35230 'color rgb(255,255,255)
35240 'print "                                                                "
35250 'locate 1,3
35260 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35270 'if (No = -1) then
35280 'count=1
35290 'goto Buka_Input_Seireki2:
35300 'endif
35310 'case 2:
35320 'count = 3
35330 'if (No = -1) then
35340 'count = 2
35350 'buf_Buka_Born_Day(0)=bufyear
35360 'goto Buka_Input_Seireki2:
35370 'else
35380 'b = val(buf_buka_year$)
35390 'buf_buka_year = b*10 + No
35400 'buf_buka_year$ = str$(buf_buka_year)
35410 'locate 1,3
35420 'color rgb(255,255,255)
35430 'print "                                        "
35440 'locate 1,3
35450 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
35460 'goto Buka_Input_Seireki2:
35470 'endif
35480 'case 3:
35490 'count=4
35500 'if (No = -1) then
35510 'count=3
35520 'goto Buka_Input_Seireki2:
35530 'else
35540 'b = buf_buka_year
35550 'buf_buka_year = b * 10 + No
35560 'buf_buka_year$=str$(buf_buka_year)
35570 'locate 1,3
35580 'color RGB(255,255,255)
35590 'print "                                      "
35600 'locate 1,3
35610 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35620 'buf_year=val(buf_year$)
35630 'year=val(buf_year$)
35640 'if (No=-1) then
35650 'goto Input_Born_Month:
35660 'else
35670 'goto Buka_Input_Seireki2:
35680 'endif
35690 'case 4:
35700 'bufyear=buf_year
35710 'if (No=-1) then
35720 'buf_year = val(buf_year$)
35730 'bufyear = buf_year
35740 'sp_on 14,0
35750 'goto Buka_Input_Born_Month:
35760 'else
35770 'goto Buka_Input_Seireki2:
35780 'endif
35790 'end select
35800 'endif
35810 'if (bg2 = 2) then
35820 'select case count2
35830 'case 0:
35840 'if (No = -1) then
35850 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
35860 'count=0
35870 'locate 1,3
35880 'color rgb(255,255,255)
35890 'print "                                      "
35900 'locate 1,3
35910 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
35920 'goto Buka_Input_Seireki2:
35930 'else
35940 '(buf_year=0) then
35950 'buf_buka_year=0:buf_buka_year$="****"
35960 'goto Buka_Input_Seireki2:
35970 'endif
35980 'endif
35990 'end select
36000 'endif
36010 'end
36020 'ここまでコメント
36030 '================================================================
36040 if ((bg=2) or (key$=chr$(13))) then
36050 select case count
36060 case 0:
36070 count = 1
36080 if (No=-1) then
36090 count = 0
36100 buf_Buka_Born_Day(0) = No
36110 'Okボタンを押したとき
36120 goto Buka_Input_Seireki2:
36130 else
36140 'Okボタン以外が押されたとき
36150 if (No>=1 and No<=2) then
36160 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
36170 buf_buka_year = No
36180 buf_Buka_Born_Day(0) = No
36190 locate 1,3
36200 color rgb(255,255,255)
36210 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36220 goto Buka_Input_Seireki2:
36230 else
36240 count=0
36250 ui_msg"数字が範囲外になります。"
36260 buf_buka_year$="":buf_buka_year=0
36270 goto Buka_Input_Seireki2:
36280 endif
36290 endif
36300 case 1:
36310 count = 2
36320 if (No = -1) then
36330 count = 1
36340 goto Buka_Input_Seireki2:
36350 else
36360 'b = val(buf_buka_year$)
36370 buf_buka_year = a * 10 + No
36380 b=buf_buka_year
36390 buf_buka_year$ = str$(buf_buka_year)+"**"
36400 buf_Buka_Born_Day(0)=buf_buka_year
36410 locate 1,3
36420 color rgb(255,255,255)
36430 print "                                                                "
36440 locate 1,3
36450 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
36460 'if (No = -1) then
36470 'count=1
36480 goto Buka_Input_Seireki2:
36490 endif
36500 case 2:
36510 count=3
36520 if (No=-1) then
36530 count =2:No=0
36540 goto Buka_Input_Seireki2:
36550 else
36560 'b = val(buf_buka_year$)
36570 buf_buka_year = b * 10 + No
36580 c = buf_buka_year
36590 buf_buka_year$ = str$(buf_buka_year) + "*"
36600 buf_Buka_Born_Day(0) = buf_buka_year
36610 locate 1,3
36620 color rgb(255,255,255)
36630 print "                                        "
36640 locate 1,3
36650 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36660 goto Buka_Input_Seireki2:
36670 endif
36680 case 3:
36690 count=4
36700 if (No = -1) then
36710 'count=3:No=0
36720 goto Buka_Input_Seireki2:
36730 else
36740 'b = val(buf_buka_year$)
36750 buf_buka_year=c * 10 + No
36760 buf_buka_year$=str$(buf_buka_year)
36770 buf_Buka_Born_Day(0)=buf_buka_year
36780 locate 1,3
36790 color RGB(255,255,255)
36800 print "                                      "
36810 locate 1,3
36820 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36830 buf_buka_year=val(buf_buka_year$)
36840 'year=val(buf_year$)
36850 'if (No=-1) then
36860 'goto Input_Born_Month:
36870 'else
36880 goto Buka_Input_Seireki2:
36890 endif
36900 case 4:
36910 'bufyear=buf_year
36920 if (No = -1) then
36930 buf_buka_year = val(buf_buka_year$)
36940 buf_Buka_Born_Day(0)=buf_buka_year
36950 sp_on 14,0
36960 goto Buka_Input_Born_Month:
36970 else
36980 goto Buka_Input_Seireki2:
36990 endif
37000 end select
37010 endif
37020 '================================================================
37030 'ここにコピーする。
37040 '================================================================
37050 'Input"部下の生れた年代(4桁,〜2025年):",year
37060 'if year > 2025 then goto Jyoushi_Input_Seireki:
37070 'if year = 123 then cls 3:cls 4:goto Main_Screen:
37080 '"4桁目"
37090 'bufyear4 = fix(year / 1000)
37100 '"3桁目"
37110 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
37120 '"2桁目"
37130 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
37140 '"1桁目"
37150 'bufyear1 = fix((year - ((bufyear4*
37160 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
37170 '1.部下の生まれた年代'
37180 '2.部下の生まれた月'
37190 Buka_Input_Born_Month:
37200 cls 3:play "":count=0:count2=0
37210 'No=-1:Okのとき
37220 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
37230 for i=0 to 1
37240 buf_month(i)=0
37250 next i
37260 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
37270 gload Gazo$ + "Screen1.png",0,0,0
37280 gload Gazo$ + "downscreen.png",0,0,800
37290 'Init"kb:4"
37300 '音声ファイル再生 2023.06.07
37310 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
37320 font 48
37330 locate 0,1
37340 '文字色：黒　 color rgb(0,0,0)
37350 '文字色:白
37360 color rgb(255,255,255)
37370 print "部下の生まれた月を入れて下さい" + chr$(13)
37380 '文字色:白
37390 color rgb(255,255,255)
37400 locate 1,3
37410 '文字色:白
37420 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
37430 color rgb(255,255,255)
37440 'locate 4,6:print ":7"
37450 'locate 9,6:print ":8"
37460 'locate 12,6:print ":9"
37470 locate 4,6
37480 '文字色:赤
37490 print ":7  :8  :9" + chr$(13)
37500 color rgb(255,255,255)
37510 locate 4,8
37520 print ":4  :5  :6" + chr$(13)
37530 color rgb(255,255,255)
37540 locate 4,10
37550 print ":1  :2  :3" + chr$(13)
37560 locate 4,12
37570 print "    :0"
37580 locate 12,12
37590 color rgb(0,0,255)
37600 print ":Ok"
37610 sp_on 4,0: sp_on 5,0:sp_on 6,0
37620 sp_on 7,0:sp_on 8,0:sp_on 9,0
37630 sp_on 10,0:sp_on 11,0:sp_on 12,0
37640 sp_on 13,0:sp_on 14,1
37650 Buka_Input_Born_Month2:
37660 key$="":bg=0:y=0:y2=0:bg2=0
37670 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
37680 key$ = inkey$
37690 bg = strig(1)
37700 y = stick(1)
37710 y2 = stick(0)
37720 bg2 = strig(0)
37730 pause 5
37740 wend
37750 '十字キー　ここから
37760 '上の矢印　または、十字キー上
37770 if ((y = -1) or (key$ = chr$(30))) then
37780 select case No
37790 'No=-1:okのとき:初期の状態
37800 '0kボタンから３に移動
37810 '上に行く 処理
37820 case -1:
37830 No=3:sp_on 12,1:sp_on 14,0
37840 pause 200:goto Buka_Input_Born_Month2:
37850 '選択肢:3
37860 '3ボタンから 6に移動
37870 case 3:
37880 No=6:sp_on 12,0:sp_on 11,1
37890 pause 200:goto Buka_Input_Born_Month2:
37900 '6ボタンから ９に移動
37910 case 6:
37920 No=9:sp_on 10,1:sp_on 11,0
37930 pause 200:goto Buka_Input_Born_Month2:
37940 '6ボタンから ９に移動　ここまで
37950 '9で上を押して何もしない
37960 case 9:
37970 '何もしない
37980 No=9
37990 pause 200:goto Buka_Input_Born_Month2:
38000 '9で上を押しても何もしない　ここまで
38010 '上　 0ボタンから2ボタン
38020 'sp_on 6,1:1
38030 'sp_on 8,1:5
38040 'sp_on 7,1:7
38050 case 0:
38060 No=2:sp_on 13,0:sp_on 9,1:
38070 pause 200:goto Buka_Input_Born_Month2:
38080 '上  0ボタンから2ボタン　ここまで
38090 '2から５になる 上
38100 case 2:
38110 No=5:sp_on 8,1:sp_on 9,0:
38120 pause 200:goto Buka_Input_Born_Month2:
38130 case 5:
38140 No=8:sp_on 7,1:sp_on 8,0
38150 pause 200:goto Buka_Input_Born_Month2:
38160 case 8:
38170 pause 200:goto Buka_Input_Born_Month2:
38180 case 1:
38190 No=4:sp_on 5,1:sp_on 6,0
38200 pause 200:goto Buka_Input_Born_Month2:
38210 case 4:
38220 No=7:sp_on 4,1:sp_on 5,0
38230 pause 200:goto Buka_Input_Born_Month2:
38240 case 7:
38250 pause 200:goto Buka_Input_Born_Month2:
38260 end select
38270 endif
38280 '左３　ここまで
38290 '下の矢印
38300 '中央 2
38310 if ((y=1) or (key$ = chr$(31))) then
38320 select case No
38330 '9から６に下げる
38340 case 9:
38350 No=6:sp_on 11,1:sp_on 10,0
38360 pause 200:goto Buka_Input_Born_Month2:
38370 '6から３に下げる
38380 case 6:
38390 No=3:sp_on 12,1:sp_on 11,0
38400 pause 200:goto Buka_Input_Born_Month2:
38410 '3から０ｋに変える
38420 case 3:
38430 No=-1:sp_on 14,1:sp_on 12,0
38440 pause 200:goto Buka_Input_Born_Month2:
38450 'Okから下のボタンを押しても何もしない
38460 case -1:
38470 pause 200:goto Buka_Input_Born_Month2:
38480 case 8:
38490 No=5:sp_on 8,1:sp_on 7,0
38500 pause 200:goto Buka_Input_Born_Month2:
38510 case 5:
38520 No=2:sp_on 9,1:sp_on 8,0
38530 pause 200:goto Buka_Input_Born_Month2:
38540 case 2:
38550 No=0:sp_on 13,1:sp_on 9,0
38560 pause 200:goto Buka_Input_Born_Month2:
38570 case 0:
38580 pause 200:goto Buka_Input_Born_Month2:
38590 case 7:
38600 No=4:sp_on 5,1:sp_on 4,0
38610 pause 200:goto Buka_Input_Born_Month2:
38620 case 4:
38630 No=1:sp_on 6,1:sp_on 5,0
38640 pause 200:goto Buka_Input_Born_Month2:
38650 case 1:
38660 pause 200:goto Buka_Input_Born_Month2:
38670 end select
38680 endif
38690 '左へボタン 十字キー　左　or 　カーソル左
38700 if ((y2 = -1) or (key$ = chr$(29))) then
38710 select case No
38720 'Ok ボタン  Okから　左　０に行く
38730 case -1:
38740 No=0:sp_on 13,1:sp_on 14,0
38750 pause 200:goto Buka_Input_Born_Month2:
38760 '0 ボタン  左　何もしない
38770 case 0:
38780 pause 200:goto Buka_Input_Born_Month2:
38790 case 3:
38800 No=2:sp_on 9,1:sp_on 12,0:
38810 pause 200:goto Buka_Input_Born_Month2:
38820 case 2:
38830 No=1:sp_on 6,1:sp_on 9,0:
38840 pause 200:goto Buka_Input_Born_Month2:
38850 case 1:
38860 pause 200:goto Buka_Input_Born_Month2:
38870 case 6:
38880 No=5:sp_on 8,1:sp_on 11,0
38890 pause 200:goto Buka_Input_Born_Month2:
38900 case 5:
38910 No=4:sp_on 5,1:sp_on 8,0
38920 pause 200:goto Buka_Input_Born_Month2:
38930 case 4:
38940 pause 200:goto Buka_Input_Born_Month2:
38950 case 9:
38960 No=8:sp_on 7,1:sp_on 10,0
38970 pause 200:goto Buka_Input_Born_Month2:
38980 case 8:
38990 No=7:sp_on 4,1:sp_on 7,0
39000 pause 200:goto Buka_Input_Born_Month2:
39010 case 7:
39020 pause 200:goto Buka_Input_Born_Month2:
39030 end select
39040 endif
39050 '右  十字キー　右　or カーソル　右
39060 if ((y2 = 1) or (key$ = chr$(28))) then
39070 select case No
39080 '0ボタンからokボタン右に移動
39090 case 0:
39100 No=-1:sp_on 14,1:sp_on 13,0
39110 pause 200:goto Buka_Input_Born_Month2:
39120 '0ボタンからokボタン 右に移動　ここまで
39130 'OKボタンで右を押して何もしない
39140 case -1:
39150 pause 200:goto Buka_Input_Born_Month2:
39160 case 1:
39170 No=2:sp_on 9,1:sp_on 6,0
39180 pause 200:goto Buka_Input_Born_Month2:
39190 case 2:
39200 No=3:sp_on 12,1:sp_on 9,0
39210 pause 200:goto Buka_Input_Born_Month2:
39220 case 3:
39230 pause 200:goto Buka_Input_Born_Month2:
39240 case 4:
39250 No=5:sp_on 8,1:sp_on 5,0
39260 pause 200:goto Buka_Input_Born_Month2:
39270 case 5:
39280 No=6:sp_on 11,1:sp_on 8,0
39290 pause 200:goto Buka_Input_Born_Month2:
39300 case 7:
39310 No=8:sp_on 7,1:sp_on 4,0
39320 pause 200:goto Buka_Input_Born_Month2:
39330 case 8:
39340 No=9:sp_on 10,1:sp_on 7,0
39350 pause 200:goto Buka_Input_Born_Month2:
39360 case 9:
39370 pause 200:goto Buka_Input_Born_Month2:
39380 case 6:
39390 pause 200:goto Buka_Input_Born_Month2:
39400 end select
39410 'Okから右ボタンを押して何もしない ここまで
39420 endif
39430 '十字キー　ここまで
39440 '右の丸ボタン　決定キー
39450 if ((bg=2) or (key$=chr$(13))) then
39460 select case count
39470 case 0:
39480 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
39490 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
39500 locate 1,3
39510 color RGB(255,255,255)
39520 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
39530 goto Buka_Input_Born_Month2:
39540 case 1:
39550 count = 2:buf_buka_month=a*10+No
39560 if (No = -1) then
39570 'count=0
39580 month=buf_buka_month
39590 buf_buka_month=val(buf_buka_Month$)
39600 month=buf_buka_month
39610 '生まれた日に飛ぶ
39620 goto Buka_Input_Born_Day:
39630 else
39640 buf_buka_month = a * 10 + No
39650 buf_buka_Month$ = str$(buf_buka_month)
39660 buf_Buka_Born_Day(1) = buf_buka_month
39670 locate 1,3
39680 color Rgb(255,255,255)
39690 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
39700 goto Buka_Input_Born_Month2:
39710 endif
39720 case 2:
39730 count=3
39740 'c= val(buf_Month$)
39750 'buf_month = c*10 + No
39760 'buf_Month$ = str$(buf_month)
39770 'locate 2,3
39780 'print "部下の生まれた月(1月～12月):";buf_Month$
39790 'goto Buka_Input_Born_Month2:
39800 'case 3:
39810 'count=4
39820 'b=val(buf_month$)
39830 'buf_month=c*10+No
39840 'buf_Month$=str$(buf_month)
39850 'locate 2,3
39860 'print "部下の生まれた月(1月～12月):";buf_Month$
39870 'buf_month=val(buf_Month$)
39880 'year=val(buf_year$)
39890 if (No=-1) then
39900 goto Buka_Input_Born_Day:
39910 else
39920 goto Input_Born_Month2:
39930 endif
39940 'case 4:
39950 'bufyear=buf_year
39960 'if (No=-1) then
39970 'buf_month = val(buf_Month$)
39980 'month = buf_month
39990 'sp_on 14,0
40000 'goto Input_Born_Day:
40010 'else
40020 'goto Input_Born_Month2:
40030 'endif
40040 end select
40050 endif
40060 '左の丸ボタン　キャンセル
40070 if (bg2=2) then
40080 select case count2
40090 case 0:
40100 if (No = -1) then
40110 buf_buka_month=0:buf_buka_Month$="**"
40120 count=0
40130 goto rewrite2:
40140 else
40150 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
40160 buf_month=0:buf_Month$="**"
40170 locate 2,3
40180 color rgb(255,255,255)
40190 print "                                       "
40200 goto rewrite2:
40210 if (No>12) then
40220 ui_msg"値が範囲外です。"
40230 goto rewrite2:
40240 endif
40250 endif
40260 endif
40270 rewrite2:
40280 locate 2,3
40290 color rgb(255,255,255)
40300 print "                                      "
40310 locate 2,3
40320 print "部下の生まれた月(1月~12月):";buf_buka_Month$
40330 goto Buka_Input_Born_Month2:
40340 end select
40350 'endif
40360 endif
40370 end
40380 '2.部下の生まれた月'
40390 '3.部下の生まれた日'
40400 '生れた日を入力
40410 Buka_Input_Born_Day:
40420 '生まれた日入力
40430 cls 3:play ""
40440 'No=-1:Okのとき
40450 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
40460 for i=0 to 1
40470 buf_day(i)=0
40480 next i
40490 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
40500 gload Gazo$ + "Screen1.png",0,0,0
40510 gload Gazo$ + "downscreen.png",0,0,800
40520 'Init"kb:2"
40530 '音声ファイル再生 2023.06.07
40540 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
40550 font 48
40560 locate 0,1
40570 '文字色：黒　 color rgb(0,0,0)
40580 color rgb(255,255,255)
40590 print "部下の生まれた日を入れて下さい" + chr$(13)
40600 color rgb(255,255,255)
40610 locate 1,3
40620 print "部下の生まれた日(1日~31日):";buf_Day$
40630 color rgb(255,255,255)
40640 'locate 4,6:print ":7"
40650 'locate 9,6:print ":8"
40660 'locate 12,6:print ":9"
40670 locate 4,6
40680 print ":7  :8  :9" + chr$(13)
40690 color rgb(255,255,255)
40700 locate 4,8
40710 print ":4  :5  :6" + chr$(13)
40720 color rgb(255,255,255)
40730 locate 4,10
40740 print ":1  :2  :3" + chr$(13)
40750 locate 4,12
40760 print "    :0"
40770 locate 12,12
40780 color rgb(0,0,255)
40790 print ":Ok"
40800 sp_on 4,0: sp_on 5,0:sp_on 6,0
40810 sp_on 7,0:sp_on 8,0:sp_on 9,0
40820 sp_on 10,0:sp_on 11,0:sp_on 12,0
40830 sp_on 13,0:sp_on 14,1
40840 Buka_Input_Born_Day2:
40850 key$="":bg=0:y=0:y2=0:bg2=0
40860 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
40870 key$ = inkey$
40880 bg = strig(1)
40890 y = stick(1)
40900 y2 = stick(0)
40910 bg2 = strig(0)
40920 pause 5
40930 wend
40940 '十字キー　ここから
40950 '上の矢印　または、十字キー上
40960 if ((y = -1) or (key$ = chr$(30))) then
40970 select case No
40980 'No=-1:okのとき:初期の状態
40990 '0kボタンから３に移動
41000 '上に行く 処理
41010 case -1:
41020 No=3:sp_on 12,1:sp_on 14,0
41030 pause 200:goto Buka_Input_Born_Day2:
41040 '選択肢:3
41050 '3ボタンから 6に移動
41060 case 3:
41070 No=6:sp_on 12,0:sp_on 11,1
41080 pause 200:goto Buka_Input_Born_Day2:
41090 '6ボタンから ９に移動
41100 case 6:
41110 No=9:sp_on 10,1:sp_on 11,0
41120 pause 200:goto Buka_Input_Born_Day2:
41130 '6ボタンから ９に移動　ここまで
41140 '9で上を押して何もしない
41150 case 9:
41160 '何もしない
41170 No=9
41180 pause 200:goto Buka_Input_Born_Day2:
41190 '9で上を押しても何もしない　ここまで
41200 '上　 0ボタンから2ボタン
41210 'sp_on 6,1:1
41220 'sp_on 8,1:5
41230 'sp_on 7,1:7
41240 case 0:
41250 No=2:sp_on 13,0:sp_on 9,1:
41260 pause 200:goto Buka_Input_Born_Day2:
41270 '上  0ボタンから2ボタン　ここまで
41280 '2から５になる 上
41290 case 2:
41300 No=5:sp_on 8,1:sp_on 9,0:
41310 pause 200:goto Buka_Input_Born_Day2:
41320 case 5:
41330 No=8:sp_on 7,1:sp_on 8,0
41340 pause 200:goto Buka_Input_Born_Day2:
41350 case 8:
41360 pause 200:goto Buka_Input_Born_Day2:
41370 case 1:
41380 No=4:sp_on 5,1:sp_on 6,0
41390 pause 200:goto Buka_Input_Born_Day2:
41400 case 4:
41410 No=7:sp_on 4,1:sp_on 5,0
41420 pause 200:goto Buka_Input_Born_Day2:
41430 case 7:
41440 pause 200:goto Buka_Input_Born_Day2:
41450 end select
41460 endif
41470 '左３　ここまで
41480 '下の矢印
41490 '中央 2
41500 if ((y=1) or (key$ = chr$(31))) then
41510 select case No
41520 '9から６に下げる
41530 case 9:
41540 No=6:sp_on 11,1:sp_on 10,0
41550 pause 200:goto Buka_Input_Born_Day2:
41560 '6から３に下げる
41570 case 6:
41580 No=3:sp_on 12,1:sp_on 11,0
41590 pause 200:goto Buka_Input_Born_Day2:
41600 '3から０ｋに変える
41610 case 3:
41620 No=-1:sp_on 14,1:sp_on 12,0
41630 pause 200:goto Buka_Input_Born_Day2:
41640 'Okから下のボタンを押しても何もしない
41650 case -1:
41660 pause 200:goto Buka_Input_Born_Day2:
41670 case 8:
41680 No=5:sp_on 8,1:sp_on 7,0
41690 pause 200:goto Buka_Input_Born_Day2:
41700 case 5:
41710 No=2:sp_on 9,1:sp_on 8,0
41720 pause 200:goto Buka_Input_Born_Day2:
41730 case 2:
41740 No=0:sp_on 13,1:sp_on 9,0
41750 pause 200:goto Buka_Input_Born_Day2:
41760 case 0:
41770 pause 200:goto Buka_Input_Born_Day2:
41780 case 7:
41790 No=4:sp_on 5,1:sp_on 4,0
41800 pause 200:goto Buka_Input_Born_Day2:
41810 case 4:
41820 No=1:sp_on 6,1:sp_on 5,0
41830 pause 200:goto Buka_Input_Born_Day2:
41840 case 1:
41850 pause 200:goto Buka_Input_Born_Day2:
41860 end select
41870 endif
41880 '左へボタン 十字キー　左　or 　カーソル左
41890 if ((y2 = -1) or (key$ = chr$(29))) then
41900 select case No
41910 'Ok ボタン  Okから　左　０に行く
41920 case -1:
41930 No=0:sp_on 13,1:sp_on 14,0
41940 pause 200:goto Buka_Input_Born_Day2:
41950 '0 ボタン  左　何もしない
41960 case 0:
41970 pause 200:goto Buka_Input_Born_Day2:
41980 case 3:
41990 No=2:sp_on 9,1:sp_on 12,0:
42000 pause 200:goto Buka_Input_Born_Day2:
42010 case 2:
42020 No=1:sp_on 6,1:sp_on 9,0:
42030 pause 200:goto Buka_Input_Born_Day2:
42040 case 1:
42050 pause 200:goto Buka_Input_Born_Day2:
42060 case 6:
42070 No=5:sp_on 8,1:sp_on 11,0
42080 pause 200:goto Buka_Input_Born_Day2:
42090 case 5:
42100 No=4:sp_on 5,1:sp_on 8,0
42110 pause 200:goto Buka_Input_Born_Day2:
42120 case 4:
42130 pause 200:goto Buka_Input_Born_Day2:
42140 case 9:
42150 No=8:sp_on 7,1:sp_on 10,0
42160 pause 200:goto Buka_Input_Born_Day2:
42170 case 8:
42180 No=7:sp_on 4,1:sp_on 7,0
42190 pause 200:goto Buka_Input_Born_Day2:
42200 case 7:
42210 pause 200:goto Buka_Input_Born_Day2:
42220 end select
42230 endif
42240 '右  十字キー　右　or カーソル　右
42250 if ((y2 = 1) or (key$ = chr$(28))) then
42260 select case No
42270 '0ボタンからokボタン右に移動
42280 case 0:
42290 No=-1:sp_on 14,1:sp_on 13,0
42300 pause 200:goto Buka_Input_Born_Day2:
42310 '0ボタンからokボタン 右に移動　ここまで
42320 'OKボタンで右を押して何もしない
42330 case -1:
42340 pause 200:goto Buka_Input_Born_Day2:
42350 case 1:
42360 No=2:sp_on 9,1:sp_on 6,0
42370 pause 200:goto Buka_Input_Born_Day2:
42380 case 2:
42390 No=3:sp_on 12,1:sp_on 9,0
42400 pause 200:goto Buka_Input_Born_Day2:
42410 case 3:
42420 pause 200:goto Buka_Input_Born_Day2:
42430 case 4:
42440 No=5:sp_on 8,1:sp_on 5,0
42450 pause 200:goto Buka_Input_Born_Day2:
42460 case 5:
42470 No=6:sp_on 11,1:sp_on 8,0
42480 pause 200:goto Buka_Input_Born_Day2:
42490 case 7:
42500 No=8:sp_on 7,1:sp_on 4,0
42510 pause 200:goto Buka_Input_Born_Day2:
42520 case 8:
42530 No=9:sp_on 10,1:sp_on 7,0
42540 pause 200:goto Buka_Input_Born_Day2:
42550 case 9:
42560 pause 200:goto Buka_Input_Born_Day2:
42570 case 6:
42580 pause 200:goto Buka_Input_Born_Day2:
42590 end select
42600 'Okから右ボタンを押して何もしない ここまで
42610 endif
42620 '十字キー　ここまで
42630 '右の丸ボタンを押したとき
42640 if ((bg = 2) or (key$ = chr$(13))) then
42650 'count :決定ボタンを押した回数
42660 select case (count)
42670 '1桁目入力
42680 case 0:
42690 count = 1:
42700 if (No = -1) then
42710 '1桁目　OKでは何もしない
42720 'goto check:
42730 No=0
42740 else
42750 'ok以外のボタンを押したとき
42760 buf_buka_day = No:buf_buka_Day$ = str$(No)
42770 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
42780 buf_buka_Day$ = str$(No) + "*"
42790 endif
42800 a=No
42810 buf_Buka_Born_Day(2) = buf_buka_day
42820 locate 1,3
42830 print"                                      "
42840 color RGB(255,255,255)
42850 locate 1,3
42860 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
42870 endif
42880 check2:
42890 if (No >= 1 and No <= 9) then
42900 sp_on 14,0
42910 goto Buka_Input_Born_Day2:
42920 else
42930 sp_on 14,0
42940 goto Result_Business_Aisyou:
42950 end
42960 endif
42970 case 1:
42980 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
42990 count = 2:
43000 'locate 2,3
43010 'color RGB(255,255,255)
43020 'print "生まれた日(1日~31日):";buf_Day$
43030 'Okボタンを押したときの処理
43040 '入力値　10未満のとき
43050 'c = buf_day
43060 if (No = -1) then
43070 'c=buf_day
43080 ' buf_day = c
43090 'buf_Day$ = str$(buf_day)
43100 '10以下のとき
43110 No=0
43120 if (buf_day < 10) then
43130 sp_on 14,0
43140 goto Result_Business_Aisyou:
43150 end
43160 endif
43170 else
43180 sp_on 14,0
43190 'c=No
43200 buf_buka_day = a * 10 + No
43210 buf_buka_Day$ = str$(buf_buka_day)
43220 buf_Buka_Born_Day(2) = buf_buka_day
43230 locate 0,3
43240 color Rgb(255,255,255)
43250 print "                                       "
43260 locate 1,3
43270 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
43280 goto Buka_Input_Born_Day2:
43290 endif
43300 '生まれた日　2桁目の数字　or 1桁の数字 + ok
43310 case 2:
43320 count=0
43330 'c=val(buf_Day$)
43340 'buf_day=c*10+No
43350 'buf_Day$=str$(buf_day)
43360 'day=buf_day
43370 'locate 2,3
43380 'print "生まれた日(1日〜31日):";buf_Day$
43390 'No=-1:ok ボタンを押したとき
43400 if (No = -1) then No=0
43410 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
43420 sp_on 14,0
43430 goto Result_Business_Aisyou:
43440 else
43450 goto Buka_Input_Born_Day2:
43460 endif
43470 'Okボタン以外を押したとき
43480 else
43490 c=val(buf_buka_Day$)
43500 buf_buka_day = c * 10 + No
43510 buf_buka_Day$ = str$(buf_buka_day)
43520 locate 1,3
43530 print "                "
43540 locate 1,3
43550 print "生まれた日(1日~31日):"+buf_buka_Day$
43560 goto Buka_Input_Born_Day2:
43570 'endif
43580 case 3:
43590 count=4
43600 'c=val(buf_day$)
43610 'buf_day=c*10+No
43620 'buf_day$=str$(buf_day)
43630 'locate 2,3
43640 'print "生まれた日を入れてください:";buf_day$
43650 'year=val(buf_year$)
43660 if (No = -1) then
43670 'goto Buka_Input_Born_Day:
43680 sp_on 14,0:
43690 goto complate_jyoushi:
43700 else
43710 goto Buka_Input_Born_Month2:
43720 endif
43730 'case 4:
43740 'bufyear=buf_year
43750 'if (No=-1) then
43760 'buf_day = val(buf_day$)
43770 'bufday = buf_day
43780 'sp_on 14,0
43790 goto complate_jyoushi:
43800 'else
43810 'goto Buka_Input_Born_Day2:
43820 'endif
43830 end select
43840 endif
43850 if (bg2=2) then
43860 select case count2
43870 case 0:
43880 if (No=-1) then
43890 'buf_day=0:buf_Day$="**"
43900 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
43910 count=0
43920 buf_buka_day=0:buf_buka_Day$="**"
43930 goto rewrite_day3:
43940 else
43950 buf_buka_day=0:buf_buka_Day$="**"
43960 ui_msg"値が範囲外です"
43970 endif
43980 goto rewrite_day3:
43990 else
44000 goto rewrite_day3:
44010 endif
44020 rewrite_day3:
44030 locate 2,3
44040 color rgb(255,255,255)
44050 print "                                      "
44060 locate 1,3
44070 print "生まれた日(1日~31日):"+buf_buka_Day$
44080 goto Buka_Input_Born_Day2:
44090 end select
44100 endif
44110 '3.部下の生まれた日'
44120 '部下'
44130 '--------------------------------------------'
44140 'ビジネの相性　結果表示
44150 Result_Business_Aisyou:
44160 cls 3:init "kb:4"
44170 a=0:b=0:c=0:d=0:e=0:f=0
44180 bg=0:key$=""
44190 gload Gazo$ + "Screen1.png",0,0,0
44200 gload Gazo$ + "downscreen.png",0,0,800
44210 sp_on 14,0
44220 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
44230 buf_Buka = Kabara_Num(d,e,f)
44240 a_2 = buf_Buka
44250 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
44260 locate 0,1
44270 color rgb(255,0,0)
44280 print "●.相性診断結果１"
44290 locate 0,4:
44300 color rgb(255,255,255)
44310 print "1.上司の名前:";buffer_name$(0)
44320 locate 0,6
44330 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
44340 locate 0,8
44350 print "2.部下の名前:";buffer_name$(1)
44360 locate 0,10
44370 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
44380 locate 0,12
44390 print "3.上司と部下の相性:";Result_Aisyou$
44400 locate 1,15
44410 color rgb(0,0,0)
44420 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
44430 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
44440 bg = strig(1)
44450 key$ = inkey$
44460 bg2 = strig(0)
44470 pause 5
44480 wend
44490 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
44500 if (bg2 = 2) then
44510  cls 3:goto Business_Aishou_Input_1_parson:
44520 endif
44530 'ビジネスの相性占い　結果2　説明
44540 Result_Business_Aisyou2:
44550 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
44560 gload Gazo$ + "Screen1.png",0,0,0
44570 locate 0,1
44580 color rgb(255,0,0)
44590 print "●.相性の説明"
44600 color rgb(255,255,255)
44610 locate 0,4
44620 print "相性:";Result_Aisyou$
44630 locate 0,6:
44640 print "相性の説明:";buf$
44650 locate 0,15
44660 color rgb(0,0,0)
44670 print "右の丸ボタン:トップ,左のボタン:前の画面"
44680 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
44690 bg = strig(1)
44700 bg2 = strig(0)
44710 key$ = inkey$
44720 pause 5
44730 wend
44740 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
44750 if ((bg2 = 2)) then goto Result_Business_Aisyou:
44760 '自作関数 ここから
44770 func read_explain$(ba$)
44780 d$=""
44790 buf_String$=""
44800 if ba$="A" then
44810 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
44820 line input #1,a$
44830 a1$=mid$(a$,1,12)
44840 a2$=mid$(a$,13,17)
44850 a3$=mid$(a$,30,17)
44860 a4$=mid$(a$,47,18)
44870 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
44880 buf_String$ = a5$
44890 close #1
44900 endif
44910 if ba$="B"  then
44920 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
44930 line input #1,b$
44940 b1$=mid$(b$,1,15)
44950 b2$=mid$(b$,16,21)
44960 'b3$=mid$(b$,33,3)
44970 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
44980 buf_String$ = b4$
44990 close #1
45000 endif
45010 if ba$="C"  then
45020 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
45030 line input #1,c$
45040 c1$ = Mid$(c$,1,15)
45050 c2$ = Mid$(c$,16,33)
45060 c3$ = c1$ + chr$(13) + c2$
45070 buf_String$ = c3$
45080 close #1
45090 endif
45100 if ba$="D" then
45110 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
45120 line input #1,d$
45130 d1$=mid$(d$,1,15)
45140 d2$=mid$(d$,16,22)
45150 d3$=mid$(d$,38,7)
45160 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
45170 buf_String$ = d4$
45180 close #1
45190 endif
45200 if ba$="E"  then
45210 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
45220 line input #1,e$
45230 e1$=Mid$(e$,1,16)
45240 e2$=Mid$(e$,17,16)
45250 e3$=Mid$(e$,33,12)
45260 e4$=Mid$(e$,45,17)
45270 e5$=Mid$(e$,62,17)
45280 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
45290 buf_String$ = e6$
45300 close #1
45310 endif
45320 if ba$="F" then
45330 '改行を追加して表示を調整
45340 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
45350 line input #1,f$
45360 f1$=Mid$(f$,1,15)
45370 f2$=Mid$(f$,16,12)
45380 buf_String$ = f1$+chr$(13)+f2$
45390 close #1
45400 endif
45410 if ba$="G" then
45420 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
45430 line input #1,g$
45440 g1$ = mid$(g$,1,16)
45450 g2$ = mid$(g$,17,18)
45460 g3$ = mid$(g$,36,21)
45470 g4$ = mid$(g$,56,6)
45480 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
45490 buf_String$ = g5$
45500 close #1
45510 endif
45520 if ba$="H" then
45530 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
45540 line input #1,h$
45550 h1$=Mid$(h$,1,17)
45560 h2$=Mid$(h$,18,21)
45570 h3$=Mid$(h$,39,20)
45580 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
45590 buf_String$ = h$
45600 close #1
45610 endif
45620 if ba$="I" then
45630 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
45640 line input #1,i$
45650 i1$=Mid$(i$,1,10)
45660 i2$=Mid$(i$,11,13)
45670 i3$=Mid$(i$,25,16)
45680 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
45690 buf_String$ = i$
45700 close #1
45710 endif
45720 buffer$=buf_String$
45730 endfunc buffer$
45740 'カバラ数（数秘番号を求める）
45750 func Kabara_Num(buffer_Year,month,day)
45760 '=============================
45770 'a1:4桁のうちの1桁目を求める
45780 '例 a1:1234の4が1桁目
45790 'a2:4桁のうちの2桁目を求める
45800 '例:a2:1234の3が2桁目
45810 'a3:4桁のうちの3桁目を求める
45820 '例 a3:1234の2が3桁目
45830 'a4:4桁のうちの4桁目を求める
45840 '例 a4:1234の1が4桁目
45850 '==============================
45860 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
45870 Year = buffer_Year
45880 '処理1　整数部分を取り出す。
45890 a4 = fix(Year / 1000)
45900 a3 = fix(Year / 100) - (a4 * 10)
45910 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
45920 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
45930 '処理　２　取り出した整数部分を足す。
45940 a_ = a1 + a2 + a3 + a4 +month + day
45950 'a1=0:a2=0:a3=0:a4=0
45960 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
45970 buffer = a_
45980 'else
45990 goto recomp2:
46000 'if (a_ = 10) then
46010 '  buffer = 1
46020 endif
46030 recomp2:
46040 a5=0:a6=0
46050 a5 = fix(a_ / 10)
46060 a6 = (a_) - (a5 * 10)
46070 a_ = a5 + a6
46080 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
46090 '結果に行く
46100 goto Res2:
46110 '  if ((a_>11) and (a_<99)) then
46120 else
46130 '再度計算
46140 goto recomp2:
46150 endif
46160 '     a1 = fix(a_ / 10)
46170 '     a2 = a_ - (a1 * 10)
46180 '     a_ = a1 + a2
46190 '     buffer = a_
46200 'endif
46210 'else
46220 '    bffer = a_
46230 'endif
46240 'endif
46250 'else
46260 'talk "プログラムを終了します。"
46270 'end
46280 'endif
46290 'kabara = 10
46300 Res2:
46310 kabara = a_
46320 endfunc kabara
46330 func Kabara_Aisyou$(buff1,buff2)
46340 a=0:b=0
46350 '範囲　1~9
46360 if ((buff1 > 0 and buff1 < 10)) then
46370 a = buff1
46380 else
46390 Select case buff1
46400 case 11:
46410 buff1=9:a=buff1
46420 case 22:
46430 buff1=10:a=buff1
46440 end select
46450 endif
46460 '範囲　１~９
46470 if ((buff2 > 0 and buff2 < 10)) then
46480 b = buff2
46490 else
46500 select case buff2
46510 case 11:
46520 buff2=9:b=buff2
46530 case 12:
46540 buff2=10:b=buff2
46550 end select
46560 endif
46570 Aisyou$ = Buffer_Business_Aisyou$(a,b)
46580 endfunc Aisyou$
46590 '=============================
46600 '自作関数 ここまで
46610 '1.数秘術　トップ画面
46620 '
46630 'Data_eraseを一番最後に持ってくる
46640 '=============================
46650 Data_erase:
46660 'メモリー削除
46670 erase buf_name1$
46680 erase buf_name2$
46690 erase buffer
46700 erase buf_chart$
46710 erase Buffer_Business_Aisyou$
46720 erase buffer_name$
46730 '上司の誕生日
46740 erase buf_Jyoushi_Born_Day
46750 '部下の誕生日
46760 erase buf_Buka_Born_Day
46770 erase buf_year
46780 erase buf_month
46790 erase buf_day
46800 buffer$ = ""
46810 buf$ = ""
46820 buf_year$ = ""
46830 buf_Jyoushi_Kabara_Num = 0
46840 buf_Buka_Kabara_Num = 0
46850 count = 0
46860 buf_Month$ = ""
46870 buf_Day$ = ""
46880 b=0
46890 c=0
46900 return
