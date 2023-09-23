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
350 '2023.09.24:Ver116_20230924
360 Version$ = "Ver:1.1.6_20230924"
370 'Gazo file Folder
380 Gazo$ = "./data/Picture/"
390 'Voice files 2023
400 Voice$ = "./data/Voice/Voice/"
410 'BirtheyeChart Data:20230626
420 Birth_eye_chart$ = "./data/chart_data/"
430 'Data File
440 Data$ = "./data/data/"
450 'Business Aisyou 結果説明保存フォルダ
460 Business_Aisyou_Explain$="./data/data/Business_Aisyou/"
470 '変数定義 パート
480 b=0:c=0
490 dim buf_name1$(10),buf_name2$(10)
500 dim buffer(9),buf_chart$(26,2)
510 'ビジネスの相性　データー
520 dim Buffer_Business_Aisyou$(12,12)
530 '生れた年代
540 dim buf_year(4):buf_year$ = ""
550 dim buf_month(2)
560 dim buf_day(2)
570 '生れた月
580 buf_Month$ = ""
590 '生れた日
600 buf_Day$ = ""
610 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
620 dim buffer_name$(3)
630 '1-1.上司の誕生日(数値データー)
640 dim buf_Jyoushi_Born_Day(3)
650 '1-2.上司の数秘ナンバー(数値データー)
660 buf_Jyoushi_Kabara_Num = 0
670 '2-1.部下の誕生日(数値データー)
680 dim buf_Buka_Born_Day(3)
690 '2-2.部下の数秘ナンバー(数秘データー)
700 buf_Buka_Kabara_Num = 0
710 count=0
720 '部下の数秘ナンバー
730 'File 読み込み
740 '1.ビジネスの相性占い
750 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
760 for i=0 to 11
770 for j=0 to 11
780 input #1,a$
790 Buffer_Business_Aisyou$(j,i) = a$
800 next j
810 next i
820 close #1
830 '2.Birth Eye chart$
840 '2.バーズアイグリッドを読み込む
850 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
860 for j=0 to 25
870 for i=0 to 1
880 input #1,a$
890 buf_chart$(j,i) = a$
900 next i
910 next j
920 close #1
930 'File 読み込み　ここまで
940 'Main画面
950 screen 1,1,1,1
960 Main_Screen:
970 cls 3:
980 No=0
990 gload Gazo$ + "Selection.png",1,5,200
1000 gload Gazo$ + "Selection.png",1,5,300
1010 gload Gazo$ + "Selection.png",1,5,400
1020 gload Gazo$ + "Selection.png",1,5,500
1030 '4
1040 gload Gazo$ + "Selection.png",1,35,300
1050 '5
1060 gload Gazo$ + "Selection.png",1,35,400
1070 '6
1080 gload Gazo$ + "Selection.png",1,35,500
1090 '7
1100 gload Gazo$ + "Selection.png",1,70,300
1110 '8
1120 gload Gazo$ + "Selection.png",1,70,400
1130 '9
1140 gload Gazo$ + "Selection.png",1,70,500
1150 '10
1160 gload Gazo$ + "Selection.png",1,110,300
1170 '11
1180 gload Gazo$ + "Selection.png",1,110,400
1190 '12
1200 gload Gazo$ + "Selection.png",1,110,500
1210 '13:0
1220 gload Gazo$ + "Selection.png",1,150,400
1230 gload Gazo$ + "Selection.png",1,200,400
1240 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1250 gload Gazo$ + "downscreen.png",0,0,800
1260 sp_def 0,(5,300),32,32
1270 sp_def 1,(5,400),32,32
1280 sp_def 2,(5,500),32,32
1290 sp_def 3,(5,600),32,32
1300 '1
1310 sp_def 4,(35,300),32,32
1320 '2
1330 sp_def 5,(35,400),32,32
1340 '3
1350 sp_def 6,(35,500),32,32
1360 '4
1370 sp_def 7,(70,300),32,32
1380 '5
1390 sp_def 8,(70,400),32,32
1400 '6
1410 sp_def 9,(70,500),32,32
1420 '7
1430 sp_def 10,(110,300),32,32
1440 '8
1450 sp_def 11,(110,400),32,32
1460 '9
1470 sp_def 12,(110,400),32,32
1480 sp_def 13,(150,400),32,32
1490 sp_def 14,(200,400),32,32
1500 'Sprite OFF
1510 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1520 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1530 sp_put 0,(5,300),0,0
1540 sp_put 1,(5,400),1,0
1550 sp_put 2,(5,500),2,0
1560 sp_put 3,(5,600),3,0
1570 '1
1580 sp_put 4,(130,300),4,0
1590 '2
1600 sp_put 5,(130,400),5,0
1610 '3
1620 sp_put 6,(130,500),6,0
1630 '4
1640 sp_put 7,(340,300),7,0
1650 '5
1660 sp_put 8,(340,400),8,0
1670 '6
1680 sp_put 9,(340,500),9,0
1690 '7
1700 sp_put 10,(540,300),10,0
1710 '8
1720 sp_put 11,(540,400),11,0
1730 '9
1740 sp_put 12,(540,500),12,0
1750 '
1760 sp_put 13,(340,600),13,0
1770 sp_put 14,(540,600),14,0
1780 Main_Top:
1790 'Main Message 2023.06.07
1800 '再生を止める
1810 play ""
1820 init "kb:4"
1830 'font 32:
1840 font 48
1850 print chr$(13) + chr$(13) + chr$(13)
1860 color rgb(217,255,212)
1870 print "番号を選んでください" + chr$(13)
1880 '0
1890 print " :1.数秘術占い" + chr$(13)
1900 '1
1910 print " :2.設 定" + chr$(13)
1920 '2
1930 print " :3.ヘルプ" + chr$(13)
1940 '3
1950 print " :4.(プログラムを)終了する" + chr$(13)
1960 COLOR rgb(0,0,0):No=0
1970 locate 1,15
1980 print "                                       "
1990 locate 1,15:print "1.数秘術占いを選択"
2000 play Voice$ + "Voice_Main_Message_20230607.mp3"
2010 Main_Screen_Select:
2020 y = 0:key$ = "":bg = 0:bg2=0
2030 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2040 y = stick(1)
2050 '"May (2023)"
2060 key$ = inkey$
2070 bg = strig(1)
2080 bg2 = strig(0)
2090 pause 2
2100 wend
2110 '1.
2120 'ジョイパッドのソース ソート　ここから
2130 'カーソル　下 or 十字キー下
2140 if ((y = 1) or (key$ = chr$(31))) then
2150 select case No
2160 case 0:
2170 '1
2180 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2190 case 1:
2200 '2
2210 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2220 case 2:
2230 '3
2240 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2250 case 3:
2260 '0
2270 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2280 end select
2290 endif
2300 '2.
2310 'カーソル　上　or 十字キー  上
2320 if ((y = -1) or (key$ = chr$(30))) then
2330 select case No
2340 case 0:
2350 '3
2360 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2370 case 1:
2380 '0
2390 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2400 case 2:
2410 '1
2420 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2430 case 3:
2440 '2
2450 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2460 end select
2470 endif
2480 'ジョイパッド　ソース 部分　ここまで
2490 'ジョイパッド右　　or Enter key 決定
2500 if ((bg = 2) OR (key$ = chr$(13))) then
2510 select case No
2520 case 0:
2530 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2540 case 1:
2550 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2560 case 2:
2570 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2580 case 3:
2590 play "":pause 200
2600 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2610 end select
2620 endif
2630 if (bg2 = 2) then
2640 play "":pause 200
2650 play Voice$ + "Voice_Main_Message_20230607.mp3"
2660 goto Main_Screen_Select:
2670 endif
2680 'Version
2690 Version:
2700 cls 3:PLAY ""
2710 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2720 gload Gazo$ + "downscreen.png",0,0,800
2730 init"kb:4":font 32
2740 'talk"バージョン情報です"
2750 'Message :Version
2760 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2770 locate 0,5
2780 color rgb(0,0,0)
2790 print "・Title:数秘術占い";chr$(13)
2800 print "・" + Version$ + chr$(13)
2810 print "・Author:licksjp"+chr$(13)
2820 print "・E-mail:licksjp@gmail.com" + chr$(13)
2830 locate 0,18
2840 print "(C)licksjp All rights " + chr$(13)
2850 locate 13,19
2860 print "reserved since 2009"+chr$(13)
2870 locate 0,23
2880 color rgb(255,255,255)
2890 print "ジョイパッドの右を押してください"
2900 Versionn_Selection:
2910 bg = 0:key$ = "":bg2 = 0
2920 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2930 bg = strig(1)
2940 key$ = inkey$
2950 bg2 = strig(0)
2960 pause 2
2970 wend
2980 if ((bg = 2) or (key$ = chr$(13))) then
2990 pause 200:cls 4:goto Main_Screen:
3000 endif
3010 if (bg2=2) then
3020 play "":pause 200
3030 play Voice$ + "Voice_Version_Message_20230607.mp3"
3040 goto Versionn_Selection:
3050 endif
3060 '1.数秘ナンバーを求める
3070 '誕生日入力(生れた年代)
3080 Input_Seireki:
3090 cls 3:play "":count=0:count2=0
3100 'No=-1:Okのとき
3110 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3120 for i=0 to 3
3130 buf_year(i)=0
3140 next i
3150 gload Gazo$ + "Screen1.png",0,0,0
3160 gload Gazo$ + "downscreen.png",0,0,800
3170 'Init"kb:2"
3180 '音声ファイル再生 2023.06.07
3190 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3200 font 48
3210 locate 0,1
3220 '文字色：黒　 color rgb(0,0,0)
3230 color rgb(255,255,255)
3240 print "生まれた年代を入れて下さい" + chr$(13)
3250 color rgb(255,255,255)
3260 locate 2,3
3270 print "生まれた年代(西暦4桁):";buf_year$
3280 '=============================
3290 'テンキーの色(1~９)　白 ,決定ボタン　青
3300 '=============================
3310 color rgb(255,255,255)
3320 'locate 4,6:print ":7"
3330 'locate 9,6:print ":8"
3340 'locate 12,6:print ":9"
3350 locate 4,6
3360 print ":7  :8  :9" + chr$(13)
3370 color rgb(255,255,255)
3380 locate 4,8
3390 print ":4  :5  :6" + chr$(13)
3400 color rgb(255,255,255)
3410 locate 4,10
3420 print ":1  :2  :3" + chr$(13)
3430 locate 4,12
3440 print "    :0"
3450 locate 12,12
3460 color rgb(255,0,0)
3470 print ":Ok"
3480 sp_on 4,0: sp_on 5,0:sp_on 6,0
3490 sp_on 7,0:sp_on 8,0:sp_on 9,0
3500 sp_on 10,0:sp_on 11,0:sp_on 12,0
3510 sp_on 13,0:sp_on 14,1
3520 Input_Seireki2:
3530 key$="":bg=0:y=0:y2=0:bg2=0:
3540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3550 key$ = inkey$
3560 bg = strig(1)
3570 y = stick(1)
3580 y2 = stick(0)
3590 bg2 = strig(0)
3600 pause 5
3610 wend
3620 '十字キー　ここから
3630 '上の矢印　または、十字キー上
3640 if ((y = -1) or (key$ = chr$(30))) then
3650 select case No
3660 'No=-1:okのとき:初期の状態
3670 '0kボタンから３に移動
3680 '上に行く 処理
3690 case -1:
3700 No=3:sp_on 12,1:sp_on 14,0
3710 pause 200:goto Input_Seireki2:
3720 '選択肢:3
3730 '3ボタンから 6に移動
3740 case 3:
3750 No=6:sp_on 12,0:sp_on 11,1
3760 pause 200:goto Input_Seireki2:
3770 '6ボタンから ９に移動
3780 case 6:
3790 No=9:sp_on 10,1:sp_on 11,0
3800 pause 200:goto Input_Seireki2:
3810 '6ボタンから ９に移動　ここまで
3820 '9で上を押して何もしない
3830 case 9:
3840 '何もしない
3850 No=9
3860 pause 200:goto Input_Seireki2:
3870 '9で上を押しても何もしない　ここまで
3880 '上　 0ボタンから2ボタン
3890 'sp_on 6,1:1
3900 'sp_on 8,1:5
3910 'sp_on 7,1:7
3920 case 0:
3930 No=2:sp_on 13,0:sp_on 9,1:
3940 pause 200:goto Input_Seireki2:
3950 '上  0ボタンから2ボタン　ここまで
3960 '2から５になる 上
3970 case 2:
3980 No=5:sp_on 8,1:sp_on 9,0:
3990 pause 200:goto Input_Seireki2:
4000 case 5:
4010 No=8:sp_on 7,1:sp_on 8,0
4020 pause 200:goto Input_Seireki2:
4030 case 8:
4040 pause 200:goto Input_Seireki2:
4050 case 1:
4060 No=4:sp_on 5,1:sp_on 6,0
4070 pause 200:goto Input_Seireki2:
4080 case 4:
4090 No=7:sp_on 4,1:sp_on 5,0
4100 pause 200:goto Input_Seireki2:
4110 case 7:
4120 pause 200:goto Input_Seireki2:
4130 end select
4140 endif
4150 '左３　ここまで
4160 '下の矢印
4170 '中央 2
4180 if ((y=1) or (key$ = chr$(31))) then
4190 select case No
4200 '9から６に下げる
4210 case 9:
4220 No=6:sp_on 11,1:sp_on 10,0
4230 pause 200:goto Input_Seireki2:
4240 '6から３に下げる
4250 case 6:
4260 No=3:sp_on 12,1:sp_on 11,0
4270 pause 200:goto Input_Seireki2:
4280 '3から０ｋに変える
4290 case 3:
4300 No=-1:sp_on 14,1:sp_on 12,0
4310 pause 200:goto Input_Seireki2:
4320 'Okから下のボタンを押しても何もしない
4330 case -1:
4340 pause 200:goto Input_Seireki2:
4350 case 8:
4360 No=5:sp_on 8,1:sp_on 7,0
4370 pause 200:goto Input_Seireki2:
4380 case 5:
4390 No=2:sp_on 9,1:sp_on 8,0
4400 pause 200:goto Input_Seireki2:
4410 case 2:
4420 No=0:sp_on 13,1:sp_on 9,0
4430 pause 200:goto Input_Seireki2:
4440 case 0:
4450 pause 200:goto Input_Seireki2:
4460 case 7:
4470 No=4:sp_on 5,1:sp_on 4,0
4480 pause 200:goto Input_Seireki2:
4490 case 4:
4500 No=1:sp_on 6,1:sp_on 5,0
4510 pause 200:goto Input_Seireki2:
4520 case 1:
4530 pause 200:goto Input_Seireki2:
4540 end select
4550 endif
4560 '左へボタン 十字キー　左　or 　カーソル左
4570 if ((y2 = -1) or (key$ = chr$(29))) then
4580 select case No
4590 'Ok ボタン  Okから　左　０に行く
4600 case -1:
4610 No=0:sp_on 13,1:sp_on 14,0
4620 pause 200:goto Input_Seireki2:
4630 '0 ボタン  左　何もしない
4640 case 0:
4650 pause 200:goto Input_Seireki2:
4660 case 3:
4670 No=2:sp_on 9,1:sp_on 12,0:
4680 pause 200:goto Input_Seireki2:
4690 case 2:
4700 No=1:sp_on 6,1:sp_on 9,0:
4710 pause 200:goto Input_Seireki2:
4720 case 1:
4730 pause 200:goto Input_Seireki2:
4740 case 6:
4750 No=5:sp_on 8,1:sp_on 11,0
4760 pause 200:goto Input_Seireki2:
4770 case 5:
4780 No=4:sp_on 5,1:sp_on 8,0
4790 pause 200:goto Input_Seireki2:
4800 case 4:
4810 pause 200:goto Input_Seireki2:
4820 case 9:
4830 No=8:sp_on 7,1:sp_on 10,0
4840 pause 200:goto Input_Seireki2:
4850 case 8:
4860 No=7:sp_on 4,1:sp_on 7,0
4870 pause 200:goto Input_Seireki2:
4880 case 7:
4890 pause 200:goto Input_Seireki2:
4900 end select
4910 endif
4920 '右  十字キー　右　or カーソル　右
4930 if ((y2 = 1) or (key$ = chr$(28))) then
4940 select case No
4950 '0ボタンからokボタン右に移動
4960 case 0:
4970 No=-1:sp_on 14,1:sp_on 13,0
4980 pause 200:goto Input_Seireki2:
4990 '0ボタンからokボタン 右に移動　ここまで
5000 'OKボタンで右を押して何もしない
5010 case -1:
5020 pause 200:goto Input_Seireki2:
5030 case 1:
5040 No=2:sp_on 9,1:sp_on 6,0
5050 pause 200:goto Input_Seireki2:
5060 case 2:
5070 No=3:sp_on 12,1:sp_on 9,0
5080 pause 200:goto Input_Seireki2:
5090 case 3:
5100 pause 200:goto Input_Seireki2:
5110 case 4:
5120 No=5:sp_on 8,1:sp_on 5,0
5130 pause 200:goto Input_Seireki2:
5140 case 5:
5150 No=6:sp_on 11,1:sp_on 8,0
5160 pause 200:goto Input_Seireki2:
5170 case 7:
5180 No=8:sp_on 7,1:sp_on 4,0
5190 pause 200:goto Input_Seireki2:
5200 case 8:
5210 No=9:sp_on 10,1:sp_on 7,0
5220 pause 200:goto Input_Seireki2:
5230 case 9:
5240 pause 200:goto Input_Seireki2:
5250 case 6:
5260 pause 200:goto Input_Seireki2:
5270 end select
5280 'Okから右ボタンを押して何もしない ここまで
5290 endif
5300 '十字キー　ここまで
5310 if ((bg=2) or (key$=chr$(13))) then
5320 select case count
5330 case 0:
5340 count=1
5350 if (No=-1) then
5360 count=0
5370 'Okボタンを押したとき
5380 goto Input_Seireki2:
5390 else
5400 '===================================
5410 'Okボタン以外が押されたとき  1桁目の入力
5420 '===================================
5430 count2=1
5440 if (No >= 1 and No <= 2) then
5450 buf_year$="":buf_year$ = str$(No)
5460 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5470 n1 = len("生まれた年代(西暦4桁): ")
5480 locate 2,3
5490 color rgb(255,255,255)
5500 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5510 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5520 'print "生まれた年代(西暦4桁):";buf_year2$
5530 print buf_Born_Year_line$
5540 goto Input_Seireki2:
5550 else
5560 count=0
5570 ui_msg"数字が範囲外になります。"
5580 buf_year$="":buf_year=0
5590 goto Input_Seireki2:
5600 endif
5610 endif
5620 case 1:
5630 count = 2
5640 if (No = -1) then
5650 count = 1
5660 goto Input_Seireki2:
5670 else
5680 count2 = 1
5690 b = val(buf_year$)
5700 buf_year = b * 10 + No
5710 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5720 locate 2,3
5730 color rgb(255,255,255)
5740 print "                                                                "
5750 locate 2,3
5760 print "生まれた年代(西暦4桁):";buf_year2$
5770 'if (No = -1) then
5780 'count=1
5790 goto Input_Seireki2:
5800 endif
5810 case 2:
5820 count=3
5830 if (No=-1) then
5840 count =2
5850 goto Input_Seireki2:
5860 else
5870 b = val(buf_year$)
5880 buf_year = b*10 + No
5890 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
5900 locate 2,3
5910 color rgb(255,255,255)
5920 print "                                        "
5930 locate 2,3
5940 print "生まれた年代(西暦4桁):";buf_year2$
5950 goto Input_Seireki2:
5960 endif
5970 case 3:
5980 count=4
5990 if (No = -1) then
6000 count=3
6010 goto Input_Seireki2:
6020 else
6030 b = val(buf_year$)
6040 buf_year=b*10+No
6050 buf_year$=str$(buf_year)
6060 locate 2,3
6070 color RGB(255,255,255)
6080 print "                                      "
6090 locate 2,3
6100 print "生まれた年代(西暦4桁):";buf_year$
6110 buf_year=val(buf_year$)
6120 'year=val(buf_year$)
6130 'if (No=-1) then
6140 'goto Input_Born_Month:
6150 'else
6160 goto Input_Seireki2:
6170 endif
6180 case 4:
6190 'bufyear=buf_year
6200 if (No=-1) then
6210 buf_year = val(buf_year$)
6220 bufyear = buf_year
6230 sp_on 14,0
6240 goto Input_Born_Month:
6250 else
6260 goto Input_Seireki2:
6270 endif
6280 end select
6290 endif
6300 '=========================
6310 'bg2　キャンセルボタン
6320 '=========================
6330 if (bg2 = 2) then
6340 select case count2
6350 case 0:
6360 'Okボタンを押したときの処理
6370 if (No = -1) then
6380 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6390 'count = 0
6400 locate 2,3
6410 color rgb(255,255,255)
6420 print "                                      "
6430 locate 2,3
6440 print "生まれた年代（西暦4桁):";buf_year$
6450 '=============================
6460 'case 0:前の画面に戻る 数秘術トップメニュー
6470 '=============================
6480 sp_on 14,0:goto Kabara_TopScreen:
6490 else
6500 'count=0
6510 '(buf_year=0) then
6520 buf_year = 0:buf_year$ = string$(4,"*")
6530 goto Input_Seireki2:
6540 'endif
6550 endif
6560 case 1:
6570 if (No = -1) then
6580 count2 = 0:count = 0
6590 buf$=right$(buf_year$,1)
6600 if (val(buf$) >= 1 and val(buf$) <= 9) then
6610    buf_year$ = "****":buf_year=0
6620 color rgb(255,255,255)
6630    locate 0,3:
6640 print "                                      "
6650 locate 2,3
6660 print "生まれた年代（西暦4桁):" + buf_year$
6670 goto Input_Seireki2:
6680 endif
6690 else
6700 endif
6710 end select
6720 endif
6730 end
6740 'Input"生れた年代(4桁,〜2025年):",year
6750 'if year > 2025 then goto Input_Seireki:
6760 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6770 '"4桁目"
6780 'bufyear4 = fix(year / 1000)
6790 '"3桁目"
6800 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6810 '"2桁目"
6820 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6830 '"1桁目"
6840 'bufyear1 = fix((year - ((bufyear4*
6850 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6860 '生れた月を入力
6870 Input_Born_Month:
6880 cls 3:play "":count=0:count2=0
6890 'No=-1:Okのとき
6900 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6910 for i=0 to 1
6920 buf_month(i)=0
6930 next i
6940 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6950 gload Gazo$ + "Screen1.png",0,0,0
6960 gload Gazo$ + "downscreen.png",0,0,800
6970 'Init"kb:2"
6980 '音声ファイル再生 2023.06.07
6990 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7000 font 48
7010 locate 0,1
7020 '文字色：黒　 color rgb(0,0,0)
7030 '文字色:白
7040 color rgb(255,255,255)
7050 print "生まれた月を入れて下さい" + chr$(13)
7060 '文字色:白
7070 color rgb(255,255,255)
7080 locate 2,3
7090 '文字色:白
7100 print "生まれた月(1月~12月):";buf_Month$
7110 color rgb(255,255,255)
7120 'locate 4,6:print ":7"
7130 'locate 9,6:print ":8"
7140 'locate 12,6:print ":9"
7150 locate 4,6
7160 '文字色:赤
7170 print ":7  :8  :9" + chr$(13)
7180 color rgb(255,255,255)
7190 locate 4,8
7200 print ":4  :5  :6" + chr$(13)
7210 color rgb(255,255,255)
7220 locate 4,10
7230 print ":1  :2  :3" + chr$(13)
7240 locate 4,12
7250 print "    :0"
7260 locate 12,12
7270 color rgb(255,0,0)
7280 print ":Ok"
7290 sp_on 4,0: sp_on 5,0:sp_on 6,0
7300 sp_on 7,0:sp_on 8,0:sp_on 9,0
7310 sp_on 10,0:sp_on 11,0:sp_on 12,0
7320 sp_on 13,0:sp_on 14,1
7330 Input_Born_Month2:
7340 key$="":bg=0:y=0:y2=0:bg2=0
7350 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7360 key$ = inkey$
7370 bg = strig(1)
7380 y = stick(1)
7390 y2 = stick(0)
7400 bg2 = strig(0)
7410 pause 5
7420 wend
7430 '十字キー　ここから
7440 '上の矢印　または、十字キー上
7450 if ((y = -1) or (key$ = chr$(30))) then
7460 select case No
7470 'No=-1:okのとき:初期の状態
7480 '0kボタンから３に移動
7490 '上に行く 処理
7500 case -1:
7510 No=3:sp_on 12,1:sp_on 14,0
7520 pause 200:goto Input_Born_Month2:
7530 '選択肢:3
7540 '3ボタンから 6に移動
7550 case 3:
7560 No=6:sp_on 12,0:sp_on 11,1
7570 pause 200:goto Input_Born_Month2:
7580 '6ボタンから ９に移動
7590 case 6:
7600 No=9:sp_on 10,1:sp_on 11,0
7610 pause 200:goto Input_Born_Month2:
7620 '6ボタンから ９に移動　ここまで
7630 '9で上を押して何もしない
7640 case 9:
7650 '何もしない
7660 No=9
7670 pause 200:goto Input_Born_Month2:
7680 '9で上を押しても何もしない　ここまで
7690 '上　 0ボタンから2ボタン
7700 'sp_on 6,1:1
7710 'sp_on 8,1:5
7720 'sp_on 7,1:7
7730 case 0:
7740 No=2:sp_on 13,0:sp_on 9,1:
7750 pause 200:goto Input_Born_Month2:
7760 '上  0ボタンから2ボタン　ここまで
7770 '2から５になる 上
7780 case 2:
7790 No=5:sp_on 8,1:sp_on 9,0:
7800 pause 200:goto Input_Born_Month2:
7810 case 5:
7820 No=8:sp_on 7,1:sp_on 8,0
7830 pause 200:goto Input_Born_Month2:
7840 case 8:
7850 pause 200:goto Input_Born_Month2:
7860 case 1:
7870 No=4:sp_on 5,1:sp_on 6,0
7880 pause 200:goto Input_Born_Month2:
7890 case 4:
7900 No=7:sp_on 4,1:sp_on 5,0
7910 pause 200:goto Input_Born_Month2:
7920 case 7:
7930 pause 200:goto Input_Born_Month2:
7940 end select
7950 endif
7960 '左３　ここまで
7970 '下の矢印
7980 '中央 2
7990 if ((y=1) or (key$ = chr$(31))) then
8000 select case No
8010 '9から６に下げる
8020 case 9:
8030 No=6:sp_on 11,1:sp_on 10,0
8040 pause 200:goto Input_Born_Month2:
8050 '6から３に下げる
8060 case 6:
8070 No=3:sp_on 12,1:sp_on 11,0
8080 pause 200:goto Input_Born_Month2:
8090 '3から０ｋに変える
8100 case 3:
8110 No=-1:sp_on 14,1:sp_on 12,0
8120 pause 200:goto Input_Born_Month2:
8130 'Okから下のボタンを押しても何もしない
8140 case -1:
8150 pause 200:goto Input_Born_Month2:
8160 case 8:
8170 No=5:sp_on 8,1:sp_on 7,0
8180 pause 200:goto Input_Born_Month2:
8190 case 5:
8200 No=2:sp_on 9,1:sp_on 8,0
8210 pause 200:goto Input_Born_Month2:
8220 case 2:
8230 No=0:sp_on 13,1:sp_on 9,0
8240 pause 200:goto Input_Born_Month2:
8250 case 0:
8260 pause 200:goto Input_Born_Month2:
8270 case 7:
8280 No=4:sp_on 5,1:sp_on 4,0
8290 pause 200:goto Input_Born_Month2:
8300 case 4:
8310 No=1:sp_on 6,1:sp_on 5,0
8320 pause 200:goto Input_Born_Month2:
8330 case 1:
8340 pause 200:goto Input_Born_Month2:
8350 end select
8360 endif
8370 '左へボタン 十字キー　左　or 　カーソル左
8380 if ((y2 = -1) or (key$ = chr$(29))) then
8390 select case No
8400 'Ok ボタン  Okから　左　０に行く
8410 case -1:
8420 No=0:sp_on 13,1:sp_on 14,0
8430 pause 200:goto Input_Born_Month2:
8440 '0 ボタン  左　何もしない
8450 case 0:
8460 pause 200:goto Input_Born_Month2:
8470 case 3:
8480 No=2:sp_on 9,1:sp_on 12,0:
8490 pause 200:goto Input_Born_Month2:
8500 case 2:
8510 No=1:sp_on 6,1:sp_on 9,0:
8520 pause 200:goto Input_Born_Month2:
8530 case 1:
8540 pause 200:goto Input_Born_Month2:
8550 case 6:
8560 No=5:sp_on 8,1:sp_on 11,0
8570 pause 200:goto Input_Born_Month2:
8580 case 5:
8590 No=4:sp_on 5,1:sp_on 8,0
8600 pause 200:goto Input_Born_Month2:
8610 case 4:
8620 pause 200:goto Input_Born_Month2:
8630 case 9:
8640 No=8:sp_on 7,1:sp_on 10,0
8650 pause 200:goto Input_Born_Month2:
8660 case 8:
8670 No=7:sp_on 4,1:sp_on 7,0
8680 pause 200:goto Input_Born_Month2:
8690 case 7:
8700 pause 200:goto Input_Born_Month2:
8710 end select
8720 endif
8730 '右  十字キー　右　or カーソル　右
8740 if ((y2 = 1) or (key$ = chr$(28))) then
8750 select case No
8760 '0ボタンからokボタン右に移動
8770 case 0:
8780 No=-1:sp_on 14,1:sp_on 13,0
8790 pause 200:goto Input_Born_Month2:
8800 '0ボタンからokボタン 右に移動　ここまで
8810 'OKボタンで右を押して何もしない
8820 case -1:
8830 pause 200:goto Input_Born_Month2:
8840 case 1:
8850 No=2:sp_on 9,1:sp_on 6,0
8860 pause 200:goto Input_Born_Month2:
8870 case 2:
8880 No=3:sp_on 12,1:sp_on 9,0
8890 pause 200:goto Input_Born_Month2:
8900 case 3:
8910 pause 200:goto Input_Born_Month2:
8920 case 4:
8930 No=5:sp_on 8,1:sp_on 5,0
8940 pause 200:goto Input_Born_Month2:
8950 case 5:
8960 No=6:sp_on 11,1:sp_on 8,0
8970 pause 200:goto Input_Born_Month2:
8980 case 7:
8990 No=8:sp_on 7,1:sp_on 4,0
9000 pause 200:goto Input_Born_Month2:
9010 case 8:
9020 No=9:sp_on 10,1:sp_on 7,0
9030 pause 200:goto Input_Born_Month2:
9040 case 9:
9050 pause 200:goto Input_Born_Month2:
9060 case 6:
9070 pause 200:goto Input_Born_Month2:
9080 end select
9090 'Okから右ボタンを押して何もしない ここまで
9100 endif
9110 '十字キー　ここまで
9120 '右の丸ボタン　決定キー
9130 if ((bg=2) or (key$=chr$(13))) then
9140 select case count
9150 case 0:
9160 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9170 if (buf_month = 1 or buf_month = 2) then
9180 locate 2,3
9190 color RGB(255,255,255)
9200 print "生まれた月(1月~12月):";buf_Month2$
9210 else
9220 locate 2,3
9230 color Rgb(255,255,255)
9240 print "生まれた月(1月~12月):";buf_Month$
9250 endif
9260 goto Input_Born_Month2:
9270 case 1:
9280 count = 2:c = No
9290 c = val(buf_Month$)
9300 if (No = -1) then
9310 'if No=1 or No=2 then
9320 'endif
9330 month = buf_month
9340 buf_month=val(buf_Month$)
9350 month=buf_month
9360 '生まれた日に飛ぶ
9370 goto Input_Born_Day:
9380 else
9390 buf_month = c*10 + No
9400 buf_Month$= str$(buf_month)
9410 locate 2,3
9420 color Rgb(255,255,255)
9430 print "生まれた月(1月~12月):";buf_Month$
9440 goto Input_Born_Month2:
9450 endif
9460 case 2:
9470 count=3:count2=1
9480 'c= val(buf_Month$)
9490 'buf_month = c*10 + No
9500 'buf_Month$ = str$(buf_month)
9510 'locate 2,3
9520 'print "生まれた月(1月～12月):";buf_Month$
9530 'goto Input_Born_Month2:
9540 'case 3:
9550 'count=4
9560 'b=val(buf_month$)
9570 'buf_month=c*10+No
9580 'buf_Month$=str$(buf_month)
9590 'locate 2,3
9600 'print "生まれた月(1月～12月):";buf_Month$
9610 'buf_month=val(buf_Month$)
9620 'year=val(buf_year$)
9630 if (No=-1) then
9640 goto Input_Born_Day:
9650 else
9660 'goto Input_Born_Month2:
9670 endif
9680 'case 4:
9690 'bufyear=buf_year
9700 'if (No=-1) then
9710 'buf_month = val(buf_Month$)
9720 'month = buf_month
9730 'sp_on 14,0
9740 'goto Input_Born_Day:
9750 'else
9760 'goto Input_Born_Month2:
9770 'endif
9780 end select
9790 endif
9800 '左の丸ボタン　キャンセル
9810 if (bg2=2) then
9820 select case count2
9830 case 0:
9840 if (No = -1) then
9850 buf_month=0:buf_Month$="**"
9860 count2=0:count=0
9870 locate 0,3:print "                                              "
9880 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9890 'if (buf_month > 1) then
9900 sp_on 14,0:goto Input_Born_Month2:
9910 'goto rewrite:
9920 else
9930 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9940 buf_month=0:buf_Month$="**"
9950 locate 2,3
9960 color rgb(255,255,255)
9970 print "                                       "
9980 goto rewrite:
9990 if (No>2) then
10000 ui_msg"値が範囲外です。"
10010 goto rewrite:
10020 endif
10030 endif
10040 'endif
10050 rewrite:
10060 locate 2,3
10070 color rgb(255,255,255)
10080 print "                                      "
10090 locate 2,3
10100 print "生まれた月(1月~12月):";buf_Month$
10110 goto Input_Born_Month2:
10120 endif
10130 case 1:
10140 buf_Month$="**":buf_month=0
10150 if No=-1 then
10160 count2=2:count=0
10170 locate 0,3
10180 print "                                      "
10190 locate 2,3:
10200 print "生まれた月(1月~12月):"+buf_Month$
10210 goto Input_Born_Month2:
10220 endif
10230 case 2:
10240     sp_on 14,0:goto Input_Seireki:
10250 end select
10260 endif
10270 'endif
10280 end
10290 'end
10300 '生れた日を入力
10310 Input_Born_Day:
10320 '生まれた日入力
10330 cls 3:play ""
10340 'No=-1:Okのとき
10350 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10360 for i=0 to 1
10370 buf_day(i)=0
10380 next i
10390 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10400 gload Gazo$ + "Screen1.png",0,0,0
10410 gload Gazo$ + "downscreen.png",0,0,800
10420 'Init"kb:2"
10430 '音声ファイル再生 2023.06.07
10440 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10450 font 48
10460 locate 0,1
10470 '文字色：黒　 color rgb(0,0,0)
10480 color rgb(255,255,255)
10490 print "生まれた日を入れて下さい" + chr$(13)
10500 color rgb(255,255,255)
10510 locate 2,3
10520 print "生まれた日(1日~31日):";buf_Day$
10530 color rgb(255,255,255)
10540 'locate 4,6:print ":7"
10550 'locate 9,6:print ":8"
10560 'locate 12,6:print ":9"
10570 locate 4,6
10580 print ":7  :8  :9" + chr$(13)
10590 '=======================
10600 'テンキー　色　白　決定ボタン　青
10610 '=======================
10620 color rgb(255,255,255)
10630 locate 4,8
10640 print ":4  :5  :6" + chr$(13)
10650 color rgb(255,255,255)
10660 locate 4,10
10670 print ":1  :2  :3" + chr$(13)
10680 locate 4,12
10690 print "    :0"
10700 locate 12,12
10710 color rgb(255,0,0)
10720 print ":Ok"
10730 sp_on 4,0: sp_on 5,0:sp_on 6,0
10740 sp_on 7,0:sp_on 8,0:sp_on 9,0
10750 sp_on 10,0:sp_on 11,0:sp_on 12,0
10760 sp_on 13,0:sp_on 14,1
10770 Input_Born_Day2:
10780 key$="":bg=0:y=0:y2=0:bg2=0
10790 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10800 key$ = inkey$
10810 bg = strig(1)
10820 y = stick(1)
10830 y2 = stick(0)
10840 bg2 = strig(0)
10850 pause 5
10860 wend
10870 '十字キー　ここから
10880 '上の矢印　または、十字キー上
10890 if ((y = -1) or (key$ = chr$(30))) then
10900 select case No
10910 'No=-1:okのとき:初期の状態
10920 '0kボタンから３に移動
10930 '上に行く 処理
10940 case -1:
10950 No=3:sp_on 12,1:sp_on 14,0
10960 pause 200:goto Input_Born_Day2:
10970 '選択肢:3
10980 '3ボタンから 6に移動
10990 case 3:
11000 No=6:sp_on 12,0:sp_on 11,1
11010 pause 200:goto Input_Born_Day2:
11020 '6ボタンから ９に移動
11030 case 6:
11040 No=9:sp_on 10,1:sp_on 11,0
11050 pause 200:goto Input_Born_Day2:
11060 '6ボタンから ９に移動　ここまで
11070 '9で上を押して何もしない
11080 case 9:
11090 '何もしない
11100 No=9
11110 pause 200:goto Input_Born_Day2:
11120 '9で上を押しても何もしない　ここまで
11130 '上　 0ボタンから2ボタン
11140 'sp_on 6,1:1
11150 'sp_on 8,1:5
11160 'sp_on 7,1:7
11170 case 0:
11180 No=2:sp_on 13,0:sp_on 9,1:
11190 pause 200:goto Input_Born_Day2:
11200 '上  0ボタンから2ボタン　ここまで
11210 '2から５になる 上
11220 case 2:
11230 No=5:sp_on 8,1:sp_on 9,0:
11240 pause 200:goto Input_Born_Day2:
11250 case 5:
11260 No=8:sp_on 7,1:sp_on 8,0
11270 pause 200:goto Input_Born_Day2:
11280 case 8:
11290 pause 200:goto Input_Born_Day2:
11300 case 1:
11310 No=4:sp_on 5,1:sp_on 6,0
11320 pause 200:goto Input_Born_Day2:
11330 case 4:
11340 No=7:sp_on 4,1:sp_on 5,0
11350 pause 200:goto Input_Born_Day2:
11360 case 7:
11370 pause 200:goto Input_Born_Day2:
11380 end select
11390 endif
11400 '左３　ここまで
11410 '下の矢印
11420 '中央 2
11430 if ((y=1) or (key$ = chr$(31))) then
11440 select case No
11450 '9から６に下げる
11460 case 9:
11470 No=6:sp_on 11,1:sp_on 10,0
11480 pause 200:goto Input_Born_Day2:
11490 '6から３に下げる
11500 case 6:
11510 No=3:sp_on 12,1:sp_on 11,0
11520 pause 200:goto Input_Born_Day2:
11530 '3から０ｋに変える
11540 case 3:
11550 No=-1:sp_on 14,1:sp_on 12,0
11560 pause 200:goto Input_Born_Day2:
11570 'Okから下のボタンを押しても何もしない
11580 case -1:
11590 pause 200:goto Input_Born_Day2:
11600 case 8:
11610 No=5:sp_on 8,1:sp_on 7,0
11620 pause 200:goto Input_Born_Day2:
11630 case 5:
11640 No=2:sp_on 9,1:sp_on 8,0
11650 pause 200:goto Input_Born_Day2:
11660 case 2:
11670 No=0:sp_on 13,1:sp_on 9,0
11680 pause 200:goto Input_Born_Day2:
11690 case 0:
11700 pause 200:goto Input_Born_Day2:
11710 case 7:
11720 No=4:sp_on 5,1:sp_on 4,0
11730 pause 200:goto Input_Born_Day2:
11740 case 4:
11750 No=1:sp_on 6,1:sp_on 5,0
11760 pause 200:goto Input_Born_Day2:
11770 case 1:
11780 pause 200:goto Input_Born_Day2:
11790 end select
11800 endif
11810 '左へボタン 十字キー　左　or 　カーソル左
11820 if ((y2 = -1) or (key$ = chr$(29))) then
11830 select case No
11840 'Ok ボタン  Okから　左　０に行く
11850 case -1:
11860 No=0:sp_on 13,1:sp_on 14,0
11870 pause 200:goto Input_Born_Day2:
11880 '0 ボタン  左　何もしない
11890 case 0:
11900 pause 200:goto Input_Born_Day2:
11910 case 3:
11920 No=2:sp_on 9,1:sp_on 12,0:
11930 pause 200:goto Input_Born_Day2:
11940 case 2:
11950 No=1:sp_on 6,1:sp_on 9,0:
11960 pause 200:goto Input_Born_Day2:
11970 case 1:
11980 pause 200:goto Input_Born_Day2:
11990 case 6:
12000 No=5:sp_on 8,1:sp_on 11,0
12010 pause 200:goto Input_Born_Day2:
12020 case 5:
12030 No=4:sp_on 5,1:sp_on 8,0
12040 pause 200:goto Input_Born_Day2:
12050 case 4:
12060 pause 200:goto Input_Born_Day2:
12070 case 9:
12080 No=8:sp_on 7,1:sp_on 10,0
12090 pause 200:goto Input_Born_Day2:
12100 case 8:
12110 No=7:sp_on 4,1:sp_on 7,0
12120 pause 200:goto Input_Born_Day2:
12130 case 7:
12140 pause 200:goto Input_Born_Day2:
12150 end select
12160 endif
12170 '右  十字キー　右　or カーソル　右
12180 if ((y2 = 1) or (key$ = chr$(28))) then
12190 select case No
12200 '0ボタンからokボタン右に移動
12210 case 0:
12220 No=-1:sp_on 14,1:sp_on 13,0
12230 pause 200:goto Input_Born_Day2:
12240 '0ボタンからokボタン 右に移動　ここまで
12250 'OKボタンで右を押して何もしない
12260 case -1:
12270 pause 200:goto Input_Born_Day2:
12280 case 1:
12290 No=2:sp_on 9,1:sp_on 6,0
12300 pause 200:goto Input_Born_Day2:
12310 case 2:
12320 No=3:sp_on 12,1:sp_on 9,0
12330 pause 200:goto Input_Born_Day2:
12340 case 3:
12350 pause 200:goto Input_Born_Day2:
12360 case 4:
12370 No=5:sp_on 8,1:sp_on 5,0
12380 pause 200:goto Input_Born_Day2:
12390 case 5:
12400 No=6:sp_on 11,1:sp_on 8,0
12410 pause 200:goto Input_Born_Day2:
12420 case 7:
12430 No=8:sp_on 7,1:sp_on 4,0
12440 pause 200:goto Input_Born_Day2:
12450 case 8:
12460 No=9:sp_on 10,1:sp_on 7,0
12470 pause 200:goto Input_Born_Day2:
12480 case 9:
12490 pause 200:goto Input_Born_Day2:
12500 case 6:
12510 pause 200:goto Input_Born_Day2:
12520 end select
12530 'Okから右ボタンを押して何もしない ここまで
12540 endif
12550 '十字キー　ここまで
12560 '右の丸ボタンを押したとき
12570 if ((bg = 2) or (key$ = chr$(13))) then
12580 'count :決定ボタンを押した回数
12590 select case (count mod 3)
12600 '1桁目入力
12610 case 0:
12620 count = 1:
12630 if (No = -1) then
12640 '1桁目　OKでは何もしない
12650 'goto check:
12660 else
12670 'ok以外のボタンを押したとき
12680 buf_day = No:buf_Day$ = str$(No)
12690 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12700 locate 2,3
12710 color RGB(255,255,255)
12720 print "生まれた日(1日~31日):";buf_Day2$
12730 endif
12740 check:
12750 if (No >= 1 and No <= 9) then
12760 sp_on 14,0
12770 goto Input_Born_Day2:
12780 else
12790 sp_on 14,0
12800 goto complate:
12810 endif
12820 case 1:
12830 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12840 count = 2:
12850 'locate 2,3
12860 'color RGB(255,255,255)
12870 'print "生まれた日(1日~31日):";buf_Day$
12880 'Okボタンを押したときの処理
12890 '入力値　10未満のとき
12900 'c = buf_day
12910 if (No = -1) then
12920 'c=buf_day
12930 ' buf_day = c
12940 'buf_Day$ = str$(buf_day)
12950 '10以下のとき
12960 if (buf_day < 10) then
12970 sp_on 14,0
12980 goto complate:
12990 endif
13000 else
13010 'c = No
13020 buf_day = c * 10 + No
13030 'buf_day = c
13040 buf_Day$ =str$(buf_day)
13050 locate 2,3
13060 color Rgb(255,255,255)
13070 print "生まれた日(1日~31日):";buf_Day$
13080 goto Input_Born_Day2:
13090 endif
13100 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13110 case 2:
13120 count=0
13130 'c=val(buf_Day$)
13140 'buf_day=c*10+No
13150 'buf_Day$=str$(buf_day)
13160 'day=buf_day
13170 'locate 2,3
13180 'print "生まれた日(1日〜31日):";buf_Day$
13190 'No=-1:ok ボタンを押したとき
13200 if (No = -1) then
13210 if ((buf_day > 0) and (buf_day < 32)) then
13220 sp_on 14,0
13230 goto complate:
13240 else
13250 goto Input_Born_Day2:
13260 endif
13270 'Okボタン以外を押したとき
13280 else
13290 c=val(buf_Day$)
13300 buf_day = c * 10 + No
13310 buf_Day$ = str$(buf_day)
13320 locate 2,3
13330 print "生まれた日(1日~31日):";buf_Day$
13340 'goto Input_Born_Day2:
13350 endif
13360 case 3:
13370 count = 4
13380 c=val(buf_day$)
13390 buf_day = c * 10 + No
13400 buf_day$ = str$(buf_day)
13410 locate 2,3
13420 print "生まれた日を入れてください:";buf_Day$
13430 year = val(buf_year$)
13440 if (No = -1) then
13450 'goto Input_Born_Day:
13460 sp_on 14,0:No=0
13470 goto complate:
13480 else
13490 goto Input_Born_Month2:
13500 endif
13510 'case 4:
13520 'bufyear=buf_year
13530 'if (No=-1) then
13540 'buf_day = val(buf_day$)
13550 'bufday = buf_day
13560 'sp_on 14,0
13570 'goto complate:
13580 'else
13590 'goto Input_Born_Day2:
13600 'endif
13610 end select
13620 endif
13630 if (bg2=2) then
13640 select case count2
13650 case 0:
13660 if (No=-1) then
13670 'buf_day=0:buf_Day$="**"
13680 if (buf_day>=1 and buf_day<=31) then
13690 count=0:No=0
13700 buf_day=0:buf_Day$="**"
13710 'goto rewrite_day:
13720 else
13730 buf_day=0:buf_Day$="**"
13740 ui_msg"値が範囲外です"
13750 endif
13760 goto rewrite_day:
13770 else
13780 goto rewrite_day:
13790 endif
13800 rewrite_day:
13810 locate 2,3
13820 color rgb(255,255,255)
13830 print "                                      "
13840 locate 2,3
13850 print "生まれた日(1日~31日):";buf_Day$
13860 goto Input_Born_Day2:
13870 end select
13880 endif
13890 '--------------------------Input_Born_Day:-------------------------------------------
13900 complate:
13910 suhiNo = buf_year + buf_month + buf_day
13920 'if (suhiNo < 1000) then
13930 a1 = fix(suhiNo / 1000)
13940 a2 = fix(suhiNo/100) - (a1 * 10)
13950 a3 = fix(suhiNo/10)-(a1*100+a2*10)
13960 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
13970 'endif
13980 bufsuhiNo = a1+a2+a3+a4
13990 recomp:
14000 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14010 'bufsuhiNo=a6
14020 goto Kabara_Result_Screen:
14030 else
14040 a5 = fix(bufsuhiNo / 10)
14050 a6 = bufsuhiNo - a5 * 10
14060 bufsuhiNo = a6 + a5
14070 if (bufsuhiNo = 10) then
14080 bufsuhiNo=1
14090 endif
14100 goto Kabara_Result_Screen:
14110 endif
14120 Kabara_Result_Screen:
14130 cls 3:
14140 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14150 gload Gazo$ + "downscreen.png",0,0,800
14160 init "kb:4"
14170 '
14180 play ""
14190 select case (bufsuhiNo)
14200 case 1:
14210 play Voice$ + "Result_Kabara_1_20230607.mp3"
14220 case 2:
14230 play Voice$ + "Result_Kabara_2_20230607.mp3"
14240 case 3:
14250 play Voice$ + "Result_Kabara_3_20230607.mp3"
14260 case 4:
14270 play Voice$ + "Result_Kabara_4_20230607.mp3"
14280 case 5:
14290 play Voice$ + "Result_Kabara_5_20230607.mp3"
14300 case 6:
14310 play Voice$ + "Result_Kabara_6_20230607.mp3"
14320 case 7:
14330 play Voice$ + "Result_Kabara_7_20230607.mp3"
14340 case 8:
14350 play Voice$ + "Result_Kabara_8_20230607.mp3"
14360 case 9:
14370 play Voice$ + "Result_Kabara_9_20230607.mp3"
14380 case 11:
14390 play Voice$ + "Result_Kabara_11_20230607.mp3"
14400 case 22:
14410 play Voice$ + "Result_Kabara_22_20230607.mp3"
14420 case 33:
14430 play Voice$ + "Result_Kabara_33_20230607.mp3"
14440 end select
14450 font 48
14460 key$ = "":bg = 0:bg2=0
14470 'COLOR rgb(255,255,255)
14480 'print "●診断結果"+chr$(13)
14490 locate 0,2
14500 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14510 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14520 locate 0,15:
14530 color rgb(255,255,255)
14540 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14550 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14560 key$ = inkey$
14570 bg = strig(1)
14580 bg2 = strig(0)
14590 pause 5
14600 wend
14610 'Enter or JoyPad right
14620 if ((key$ = chr$(13)) or (bg = 2)) then
14630 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14640 endif
14650 if ((bg2=2)) then
14660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14670 endif
14680 'suhiNo1 = fix(bufsuhiNo / 10)
14690 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14700 'bufsuhiNo = suhiNo1 + suhiNo2
14710 'goto recomp:
14720 'endif
14730 'print chr$(13)
14740 'color rgb(255,0,0)
14750 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14760 'key$ = input$(1)
14770 'if key$ = chr$(13) then goto Main_Screen:
14780 '"Menu2 占いのルール"
14790 Suhi_Rule:
14800 '数秘術占いルールの表示
14810 cls 3:play "":init"kb:4"
14820 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14830 gload Gazo$ + "downscreen.png",0,0,800
14840 'cls 3:
14850 'line (0,0) - (1500,60),rgb(0,0,255),bf
14860 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14870 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14880 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14890 locate 0,2:Font 48
14900 print chr$(13) + chr$(13)
14910 color rgb(0,0,0)
14920 print "誕生日を単数変換します";chr$(13)
14930 print "数字の範囲:1~９,11,22,33";chr$(13)
14940 print "例:1973年11月22日の場合";chr$(13)
14950 print "1+9+7+3+11+22=53 ";chr$(13)
14960 print "→ 5 + 3 = 8" + chr$(13)
14970 print "故に8が数秘ナンバーになります";chr$(13)
14980 locate 0,15
14990 color rgb(255,255,255)
15000 print "ジョイパッドの右を押してください"
15010 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15020 '"key$ = input$(1)"
15030 '"if key$ = chr$(13) then goto Main_Screen:"
15040 suhi_rule_selection:
15050 bg = 0:key$ = "":bg2=0
15060 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15070 bg = strig(1)
15080 key$ = inkey$
15090 bg2=strig(0)
15100 pause 2
15110 wend
15120 if ((bg = 2) or (key$ = chr$(13))) then
15130 pause 200:cls 4:goto Main_Screen:
15140 endif
15150 if (bg2=2) then
15160 play "":pause 200
15170 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15180 goto suhi_rule_selection:
15190 endif
15200 '2.設定
15210 '2-1.トップ画面に戻る
15220 Setting:
15230 cls 3:init"kb:4":font 48:No=0
15240 play ""
15250 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15260 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15270 gload Gazo$ + "downscreen.png",0,0,800
15280 print chr$(13) + chr$(13) + chr$(13)
15290 color rgb(255,255,255):sp_on 0,1:
15300 print "番号を選んでください" + chr$(13)
15310 print " :1.トップ画面に戻る"+ chr$(13)
15320 print " :2.未実装" + chr$(13)
15330 print " :3.未実装" + chr$(13)
15340 print " :4.未実装" + chr$(13)
15350 color rgb(0,0,0)
15360 locate 1,15:print "1.トップ画面に戻るを選択"
15370 Setting_Selection:
15380 y=0:key$="":bg=0:bg2=0
15390 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15400 'y=stick(1)
15410 key$ = inkey$
15420 bg=strig(1)
15430 bg2 = strig(0)
15440 pause 2
15450 wend
15460 if ((bg = 2) or (key$ = chr$(13))) then
15470 select case No
15480 case 0:
15490 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15500 end select
15510 endif
15520 if (bg2 = 2) then
15530 play "":pause 200
15540 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15550 goto Setting_Selection:
15560 endif
15570 '3.Help
15580 '3-1.ルールの表示
15590 '3-2.バージョン
15600 '3-3.トップに戻る
15610 Help:
15620 cls 3:Font 48:No=0
15630 play ""
15640 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15650 gload Gazo$ + "downscreen.png",0,0,800
15660 color rgb(255,255,255)
15670 print chr$(13)+chr$(13)+chr$(13)
15680 print "番号を選んでください"+chr$(13)
15690 print " :1.ルールの表示" + chr$(13)
15700 print " :2.バージョンの表示" + chr$(13)
15710 print " :3.参考文献" + chr$(13)
15720 print " :4.トップ画面に戻る" + chr$(13)
15730 color rgb(0,0,0)
15740 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15750 locate 1,15
15760 print "                                      "
15770 locate 1,15
15780 print "1.ルールの表示を選択"
15790 init"kb:4"
15800 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15810 Help_Select:
15820 bg=0:key$="":y=0:bg2=0
15830 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15840 y = stick(1)
15850 key$ = inkey$
15860 bg = strig(1)
15870 bg2 = strig(0)
15880 pause 5
15890 wend
15900 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15910 if ((y = 1) or (key$ = chr$(31))) then
15920 select case No
15930 case 0:
15940 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
15950 case 1:
15960 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
15970 case 2:
15980 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
15990 case 3:
16000 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16010 end select
16020 endif
16030 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16040 if ((y = -1) or (key$ = chr$(30))) then
16050 select case No
16060 case 0:
16070 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16080 case 1:
16090 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16100 case 2:
16110 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16120 case 3:
16130 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16140 end select
16150 endif
16160 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16170 if ((bg = 2) or (key$ = chr$(13))) then
16180 select case No
16190 case 0:
16200 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16210 case 1:
16220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16230 case 2:
16240 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16250 '3:Top画面に行く
16260 case 3:
16270 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16280 end select
16290 endif
16300 if (bg2 = 2) then
16310 play "":pause 200
16320 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16330 goto Help_Select:
16340 endif
16350 '数秘術占い　トップ画面
16360 Kabara_TopScreen:
16370 cls 3:play ""
16380 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16390 gload Gazo$ + "downscreen.png",0,0,800
16400 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16410 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16420 init"kb:4":No=0
16430 color rgb(255,255,255)
16440 print chr$(13)+chr$(13)+chr$(13)
16450 print "番号を選んでください" + chr$(13)
16460 print " :1.数秘術占い" + chr$(13)
16470 print " :2.バーズアイグリット" + chr$(13)
16480 print " :3.相性占い" + chr$(13)
16490 print " :4.トップ画面に戻る" + chr$(13)
16500 color rgb(0,0,0)
16510 locate 1,15:print "1.数秘術占いを選択"
16520 Kabara_TopScreen2:
16530 y = 0:bg = 0:key$ = "":bg2 = 0
16540 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16550 key$ = inkey$
16560 bg = strig(1)
16570 y = stick(1)
16580 bg2 = strig(0)
16590 pause 5
16600 wend
16610 '選択ボタン
16620 'カーソル　と　ジョイパッド　の下
16630 if ((y = 1) or (key$ = chr$(31))) then
16640 select case No
16650 case 2:
16660 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16670 case 3:
16680 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16690 case 0:
16700 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16710 case 1:
16720 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16730 end select
16740 endif
16750 'カーソル　上
16760 if ((y=-1) or (key$=chr$(30))) then
16770 select case No
16780 case 0:
16790 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16800 case 1:
16810 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16820 case 2:
16830 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16840 case 3:
16850 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16860 end select
16870 endif
16880 '決定ボタン
16890 'ジョイパッドの右　or  Enter key
16900 if ((bg = 2) or (key$ = chr$(13))) then
16910 select case No
16920 case 0:
16930 '1.数秘術占い
16940 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
16950 case 3:
16960 '4.メイン画面にいく
16970 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
16980 case 1:
16990 '2.バースアイグリッド
17000 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
17010 case 2:
17020 '3.相性占い
17030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17040 end select
17050 endif
17060 if (bg2 = 2) then
17070 play "":pause 200
17080 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17090 goto Kabara_TopScreen2:
17100 endif
17110 '1.バースアイグリット　名入力
17120 Inputname1:
17130 cls 3:init"kb:2":font 48
17140 gload Gazo$ + "Input_Birtheye2.png",0,0,0
17150 color rgb(255,255,255)
17160 locate 1,2:print "名前をアルファベットで入れてください"
17170 color rgb(0,0,0)
17180 locate 1,5:Input "名前（姓の部分）:",name1$
17190 'locate 1,5:print "Hit any key"
17200 n1 = len(name1$)
17210 if (n1 < 11) then
17220 for i=1 to n1
17230 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
17240 next i
17250 endif
17260 'if b$=chr$(13) then goto Inputname2:
17270 '2.グリッドアイ　姓の入力
17280 Inputname2:
17290 cls 3:init"kb:2":font 48
17300 gload Gazo$ + "Input_Birtheye1.png",0,0,0
17310 color rgb(255,255,255)
17320 locate 1,2:print "名前をアルファベットで入れてください"
17330 color rgb(0,0,0)
17340 locate 1,5:Input "名前(名の部分):",name2$
17350 n2=len(name2$)
17360 for i=1 to n2
17370 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
17380 next i
17390 '計算領域
17400 Complate:
17410 'name1
17420 for i=0 to 25
17430 for n=1 to len(name1$)
17440 if (buf_chart$(i,0) = buf_name1$(n-1)) then
17450 b = val(buf_chart$(i,1))
17460 buffer(b-1) = buffer(b-1) + 1
17470 endif
17480 next n
17490 next i
17500 'name2
17510 for i=0 to 25
17520 for n=1 to len(name2$)
17530 if (buf_chart$(i,0) = buf_name2$(n-1)) then
17540 c = val(buf_chart$(i,1))
17550 buffer(c - 1) = buffer(c - 1) + 1
17560 endif
17570 next n
17580 next i
17590 '結果表示領域
17600 Result_Birtheye1:
17610 cls 3:init"kb:4":No=0
17620 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
17630 gload Gazo$ + "downscreen.png",0,0,800
17640 color rgb(255,255,255)
17650 '1の表示
17660 locate 3,14:print buffer(0);
17670 '2の表示
17680 locate 3,9:print buffer(1);
17690 '3の表示
17700 locate 3,5:print buffer(2);
17710 '4の表示
17720 locate 10,14:print buffer(3);
17730 '5の表示
17740 locate 10,9:print buffer(4);
17750 '6の表示
17760 locate 10,5:print buffer(5);
17770 '7の表示
17780 locate 15,14:print buffer(6);
17790 '8の表示
17800 locate 15,9:print buffer(7);
17810 '9の表示
17820 locate 15,5:print buffer(8);
17830 'name を大文字に変換
17840 locate 5,3:print ucase$(name1$ + name2$)
17850 color rgb(0,0,0)
17860 locate 0,15:print "右の丸:トップ画面,左の丸：もう一度診断 "
17870 bg=0:key$="":bg2=0
17880 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
17890 'Enterと決定ボタン
17900 key$ = inkey$
17910 bg = strig(1)
17920 bg2=strig(0)
17930 pause 200
17940 wend
17950 if ((bg=2) or (key$=chr$(13))) then
17960 'データーをクリアしてトップ画面に行く
17970 for i=0 to 8
17980 buffer(i)=0
17990 next i
18000 for n=0 to 9
18010 buf_name1$(n) = ""
18020 buf_name2$(n) = ""
18030 next n
18040 'Topに行く
18050 goto Main_Screen:
18060 endif
18070 if (bg2=2) then
18080 'データーをクリアする
18090 for i=0 to 8
18100 buffer(i)=0
18110 next i
18120 for n=0 to 9
18130 buf_name1$(n)=""
18140 buf_name2$(n)=""
18150 next n
18160 goto Inputname1:
18170 endif
18180 'goto Result_Birtheye1:
18190 'Result_Birtheye2:
18200 'cls 3:color rgb(255,255,255)
18210 'end
18220 'Memory 消去
18230 '
18240 References1:
18250 cls 3:key$="":bg=0:play "":font 48-16
18260 gload Gazo$ + "Reference1_20230703.png",0,0,0
18270 print chr$(13)+chr$(13)+chr$(13)
18280 color rgb(0,0,0)
18290 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
18300 print "Author:carol Adrinne,PhD"+chr$(13)
18310 print "出版社:幻冬舎" + chr$(13)
18320 print "HP:www.carolAdrienne.jp/"+chr$(13)
18330 print "ISBN:978-4-344-01394-0"+chr$(13)
18340 print "定価:1500円 + 税"+chr$(13)
18350 color rgb(255,255,255)
18360 locate 1,23
18370 print "ジョイパッド右：次へ"
18380 while (key$ <> chr$(13) and bg <> 2)
18390 bg = strig(1)
18400 key$ = inkey$
18410 wend
18420 '
18430 if ((bg = 2) or (key$ = chr$(13))) then
18440 pause 200:goto References2:
18450 endif
18460 'ユダヤの秘儀 カバラ大占術
18470 References2:
18480 cls 3:play "":bg = 0:key$ = ""
18490 gload Gazo$ + "Reference2_20230703.png",0,0,0
18500 '参考文献２
18510 'カバラ大占術
18520 print chr$(13) + chr$(13) + chr$(13)
18530 color  rgb(0,0,0):font 48-16
18540 locate 1,3
18550 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
18560 print "著者：浅野　八郎" + chr$(13)
18570 print "出版社:NON BOOK" + chr$(13)
18580 print "ISBN:4-396-10364-6" + chr$(13)
18590 print "定価:829円 + 税"
18600 color rgb(255,255,255)
18610 locate 1,23
18620 print "ジョイパッド右：トップへ行く"
18630 while ((key$ <> chr$(13)) and (bg <> 2))
18640 bg = strig(1)
18650 key$ = inkey$
18660 wend
18670 if ((bg = 2) or (key$ = chr$(13))) then
18680 pause 200:goto Main_Screen:
18690 endif
18700 end
18710 '1.数秘術　トップ画面
18720 Kabara_First_Top:
18730 cls 3:color rgb(255,255,255):play ""
18740 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
18750 gload Gazo$ + "downscreen.png",0,0,800
18760 No=0:init"kb:4"
18770 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
18780 print chr$(13);chr$(13)
18790 color rgb(255,255,255)
18800 locate 3,4:No=0
18810 print "番号選んでください" + chr$(13)
18820 print " :1.数秘術占い" + chr$(13)
18830 print " :2.トップ画面に戻る" + chr$(13)
18840 color rgb(0,0,0)
18850 sp_on 0,1
18860 locate 1,15:print "1.数秘術番号を求めるを選択"
18870 'KeyBord:true
18880 'Joy Pad:true
18890 '上、下:true
18900 '
18910 'ｂｇ：決定ボタン
18920 'カーソル　上
18930 'カーソル　下
18940 Kabara_First_Top2:
18950 key$ = "":bg = 0:y = 0:
18960 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
18970 key$ = inkey$
18980 bg = strig(1)
18990 y = stick(1)
19000 'PauseでCPUを休める
19010 pause 5
19020 wend
19030 '1.カーソル　下 処理 chr$(31)
19040 'カーソル　下
19050 if ((key$ = chr$(31)) or (y = 1)) then
19060 select case No
19070 '
19080 case 1:
19090 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
19100 case 0:
19110 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
19120 'case 2:
19130 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
19140 end select
19150 endif
19160 '2.カーソル　上 処理 chr$(30)
19170 if ((key$ = chr$(30)) or (y = -1)) then
19180 select case No
19190 case 0:
19200 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
19210 case 1:
19220 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
19230 'case 2:
19240 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
19250 end select
19260 endif
19270 '3.決定 処理  bg:2 or Enter key:chr$(13)
19280 if ((bg = 2) or (key$ = chr$(13))) then
19290 select case No
19300 case 0:
19310 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
19320 goto Kabara_TopScreen:
19330 'case 1:
19340 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
19350 case 1:
19360 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
19370 end select
19380 endif
19390 '
19400 'Kabara 相性占い トップ画面
19410 Kabara_Aishou_Top:
19420 cls 3:y=0:key$="":bg=0:No=0
19430 play ""
19440 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
19450 gload Gazo$ + "downscreen.png",0,0,800
19460 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
19470 print chr$(13) + chr$(13)
19480 locate 0,4:color rgb(255,255,255)
19490 'print "Ok"
19500 '
19510 print "番号を選んでください" + chr$(13)
19520 print " :1.男女2人の相性(未実装)" + chr$(13)
19530 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
19540 print " :3.トップ画面に戻る" + chr$(13)
19550 sp_on 0,1:sp_on 1,0:sp_on 2,0
19560 color rgb(0,0,0)
19570 locate 1,15:print "1.男女2人の相性占いを選択"
19580 Kabara_Aishou_Top2:
19590 key$ = "":y = 0:bg = 0:
19600 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
19610 'ジョイパッド(右) ,十字キー (上下)
19620 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
19630 y = stick(1)
19640 key$ = inkey$
19650 bg = strig(1)
19660 pause 5
19670 wend
19680 'カーソル　下 or 十字キー　下
19690 if ((key$ = chr$(31)) or (y = 1)) then
19700 select case No
19710 '選択肢　1 - 2に変更
19720 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
19730 'ok
19740 case 0:
19750 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19760 '選択肢　2 - 3に変更
19770 case 1:
19780 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
19790 'リリース時 case 2コメント解除
19800 case 2:
19810 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
19820 case else:
19830 goto Kabara_Aishou_Top2:
19840 end select
19850 endif
19860 '十字キー　上　、カーソル　上
19870 if ((key$ = chr$(30)) or (y = -1)) then
19880 select case No
19890 case 0:
19900 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
19910 case 1:
19920 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
19930 case 2:
19940 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19950 case else:
19960 goto Kabara_Aishou_Top2:
19970 end select
19980 endif
19990 '十字キー　上下:選択
20000 'ジョイパッド 右:決定
20010 if ((bg = 2) or (key$ = chr$(13))) then
20020 select case No
20030 '1.男女の相性
20040 case 0:
20050 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
20060 '2ビジネスの相性
20070 case 1:
20080 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
20090 case 2:
20100 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
20110 end select
20120 endif
20130 'ビジネスの相性　
20140 '1.1人目のビジネスの相性　名前入力　1人目
20150 Business_Aishou_Input_1_parson:
20160 No=0:color RGB(255,255,255)
20170 cls 3:init "kb:2"
20180 gload Gazo$ + "Screen1.png",0,0,0
20190 gload Gazo$ + "downscreen.png",0,0,800
20200 play "":color rgb(255,0,0):name$ = ""
20210 locate 0,1
20220 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
20230 color rgb(255,255,255):
20240 locate 0,3
20250 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
20260 print "入れてください" + chr$(13)
20270 locate 0,15:color rgb(0,0,0)
20280 Input "1人目の名前:",name$
20290 'color rgb(0,0,0)
20300 'locate 0,13:print "                                     "
20310 'locate 0,13:print "1人目の名前を入力してエンターキー":
20320 'buffer_name$(0):1人目の名前
20330 buffer_name$(0) = name$:
20340 goto Business_Aishou_Input_2_Parson:
20350 '2.2人目のビジネスの相性 名前入力 2人目
20360 Business_Aishou_Input_2_Parson:
20370 cls 3:init "kb:2":name$ = "":No=0
20380 gload Gazo$ + "Screen1.png",0,0,0
20390 gload Gazo$ + "downscreen.png",0,0,800
20400 color rgb(255,0,0)
20410 'Title
20420 locate 0,1
20430 print "ビジネスの相性　2人目"
20440 locate 0,3
20450 color rgb(255,255,255)
20460 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
20470 print "入れてください" + chr$(13)
20480 locate 0,15:color rgb(0,0,0)
20490 Input "2人目の名前:",name$
20500 'color rgb(0,0,0)
20510 'locate 0,15:print "                                              "
20520 'locate 0,15:print "2人目の名前を入力してエンター ":
20530 '2人目
20540 '2人目の名前を入れるに代入
20550 buffer_name$(1) = name$:
20560 goto Select_jyoushi:
20570 '3.上司の選択
20580 Select_jyoushi:
20590 cls 3:gload Gazo$ + "Screen1.png",0,0,0
20600 gload Gazo$ + "downscreen.png",0,0,800
20610 init "kb:4":No=0
20620 color rgb(0,0,255)
20630 locate 1,1
20640 print "上司の選択"
20650 color rgb(255,255,255)
20660 locate 0,4:print "名前から上司の方を選んでください"
20670 locate 0,6
20680 print " :";buffer_name$(0);"が上 司";chr$(13)
20690 locate 0,8
20700 print " :";buffer_name$(1);"が上 司";chr$(13)
20710 locate 0,15:
20720 print "                                     "
20730 locate 0,15:color rgb(0,0,0)
20740 print "上司の方を選んで右の丸ボタン"
20750 sp_on 0,1:sp_on 1,0:sp_on 2,0
20760 Select_jyoushi2:
20770 'ここでNo=0をおいてはいけない
20780 y=0:key$="":bg=0:
20790 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
20800 y = stick(1)
20810 key$ = inkey$
20820 bg = strig(1)
20830 pause 5
20840 wend
20850 '1.カーソル下の処理　or 十字キーの下処理
20860 if ((key$ = chr$(31)) or (y = 1)) then
20870 select case No
20880 case 0:
20890 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20900 case 1:
20910 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20920 end select
20930 endif
20940 '2.カーソル上処理　or 十字キーの上の処理
20950 if ((key$ = chr$(30)) or (y = -1)) then
20960 select case No
20970 case 0:
20980 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20990 case 1:
21000 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
21010 end select
21020 endif
21030 if ((key$ = chr$(13)) or (bg = 2)) then
21040 select case No
21050 case 0:
21060 '上司(name1)を配列に代入
21070 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
21080 case 1:
21090 '上司（name2)を配列に代入
21100 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
21110 end select
21120 endif
21130 '3.決定ボタン　Enter or 右の丸ボタン
21140 '1.誕生日入力
21150 '1-1.生まれた年を入力
21160 'Jyoushi_born_year:
21170 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
21180 '---------------------------------------------'
21190 '誕生日入力(生れた年代)
21200 Jyoushi_Input_Seireki:
21210 'buf_Jyoushi_Born_Year:上司の生まれた年代
21220 'buf_Jyoushi_Born_Day(0) = born_year
21230 cls 3:play "":count=0:count2=0
21240 init"kb:4"
21250 'No=-1:Okのとき
21260 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
21270 for i=0 to 3
21280 buf_Jyoushi_Born_Day(i)=0
21290 next i
21300 gload Gazo$ + "Screen1.png",0,0,0
21310 gload Gazo$ + "downscreen.png",0,0,800
21320 'Init"kb:2"
21330 '音声ファイル再生 2023.06.07
21340 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
21350 font 48
21360 locate 0,1
21370 '文字色：黒　 color rgb(0,0,0)
21380 color rgb(255,255,255)
21390 print "上司の生まれた年代を入れて下さい" + chr$(13)
21400 color rgb(255,255,255)
21410 locate 1,3
21420 print "上司の生まれた年代(西暦4桁):";buf_year$
21430 color rgb(255,255,255)
21440 'locate 4,6:print ":7"
21450 'locate 9,6:print ":8"
21460 'locate 12,6:print ":9"
21470 locate 4,6
21480 print ":7  :8  :9" + chr$(13)
21490 color rgb(255,255,255)
21500 locate 4,8
21510 print ":4  :5  :6" + chr$(13)
21520 color rgb(255,255,255)
21530 locate 4,10
21540 print ":1  :2  :3" + chr$(13)
21550 locate 4,12
21560 print "    :0"
21570 locate 12,12
21580 color rgb(0,0,255)
21590 print ":Ok"
21600 sp_on 4,0: sp_on 5,0:sp_on 6,0
21610 sp_on 7,0:sp_on 8,0:sp_on 9,0
21620 sp_on 10,0:sp_on 11,0:sp_on 12,0
21630 sp_on 13,0:sp_on 14,1
21640 Jyoushi_Input_Seireki2:
21650 key$="":bg=0:y=0:y2=0:bg2=0:
21660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
21670 key$ = inkey$
21680 bg = strig(1)
21690 y = stick(1)
21700 y2 = stick(0)
21710 bg2=strig(0)
21720 pause 5
21730 wend
21740 '十字キー　ここから
21750 '上の矢印　または、十字キー上
21760 if ((y = -1) or (key$ = chr$(30))) then
21770 select case No
21780 'No=-1:okのとき:初期の状態
21790 '0kボタンから３に移動
21800 '上に行く 処理
21810 case -1:
21820 No=3:sp_on 12,1:sp_on 14,0
21830 pause 200:goto Jyoushi_Input_Seireki2:
21840 '選択肢:3
21850 '3ボタンから 6に移動
21860 case 3:
21870 No=6:sp_on 12,0:sp_on 11,1
21880 pause 200:goto Jyoushi_Input_Seireki2:
21890 '6ボタンから ９に移動
21900 case 6:
21910 No=9:sp_on 10,1:sp_on 11,0
21920 pause 200:goto Jyoushi_Input_Seireki2:
21930 '6ボタンから ９に移動　ここまで
21940 '9で上を押して何もしない
21950 case 9:
21960 '何もしない
21970 No=9
21980 pause 200:goto Jyoushi_Input_Seireki2:
21990 '9で上を押しても何もしない　ここまで
22000 '上　 0ボタンから2ボタン
22010 'sp_on 6,1:1
22020 'sp_on 8,1:5
22030 'sp_on 7,1:7
22040 case 0:
22050 No=2:sp_on 13,0:sp_on 9,1:
22060 pause 200:goto Jyoushi_Input_Seireki2:
22070 '上  0ボタンから2ボタン　ここまで
22080 '2から５になる 上
22090 case 2:
22100 No=5:sp_on 8,1:sp_on 9,0:
22110 pause 200:goto Jyoushi_Input_Seireki2:
22120 case 5:
22130 No=8:sp_on 7,1:sp_on 8,0
22140 pause 200:goto Jyoushi_Input_Seireki2:
22150 case 8:
22160 pause 200:goto Jyoushi_Input_Seireki2:
22170 case 1:
22180 No=4:sp_on 5,1:sp_on 6,0
22190 pause 200:goto Jyoushi_Input_Seireki2:
22200 case 4:
22210 No=7:sp_on 4,1:sp_on 5,0
22220 pause 200:goto Jyoushi_Input_Seireki2:
22230 case 7:
22240 pause 200:goto Jyoushi_Input_Seireki2:
22250 end select
22260 endif
22270 '左３　ここまで
22280 '下の矢印
22290 '中央 2
22300 if ((y=1) or (key$ = chr$(31))) then
22310 select case No
22320 '9から６に下げる
22330 case 9:
22340 No=6:sp_on 11,1:sp_on 10,0
22350 pause 200:goto Jyoushi_Input_Seireki2:
22360 '6から３に下げる
22370 case 6:
22380 No=3:sp_on 12,1:sp_on 11,0
22390 pause 200:goto Jyoushi_Input_Seireki2:
22400 '3から０ｋに変える
22410 case 3:
22420 No=-1:sp_on 14,1:sp_on 12,0
22430 pause 200:goto Jyoushi_Input_Seireki2:
22440 'Okから下のボタンを押しても何もしない
22450 case -1:
22460 pause 200:goto Jyoushi_Input_Seireki2:
22470 case 8:
22480 No=5:sp_on 8,1:sp_on 7,0
22490 pause 200:goto Jyoushi_Input_Seireki2:
22500 case 5:
22510 No=2:sp_on 9,1:sp_on 8,0
22520 pause 200:goto Jyoushi_Input_Seireki2:
22530 case 2:
22540 No=0:sp_on 13,1:sp_on 9,0
22550 pause 200:goto Jyoushi_Input_Seireki2:
22560 case 0:
22570 pause 200:goto Jyoushi_Input_Seireki2:
22580 case 7:
22590 No=4:sp_on 5,1:sp_on 4,0
22600 pause 200:goto Jyoushi_Input_Seireki2:
22610 case 4:
22620 No=1:sp_on 6,1:sp_on 5,0
22630 pause 200:goto Jyoushi_Input_Seireki2:
22640 case 1:
22650 pause 200:goto Jyoushi_Input_Seireki2:
22660 end select
22670 endif
22680 '左へボタン 十字キー　左　or 　カーソル左
22690 if ((y2 = -1) or (key$ = chr$(29))) then
22700 select case No
22710 'Ok ボタン  Okから　左　０に行く
22720 case -1:
22730 No=0:sp_on 13,1:sp_on 14,0
22740 pause 200:goto Jyoushi_Input_Seireki2:
22750 '0 ボタン  左　何もしない
22760 case 0:
22770 pause 200:goto Jyoushi_Input_Seireki2:
22780 case 3:
22790 No=2:sp_on 9,1:sp_on 12,0:
22800 pause 200:goto Jyoushi_Input_Seireki2:
22810 case 2:
22820 No=1:sp_on 6,1:sp_on 9,0:
22830 pause 200:goto Jyoushi_Input_Seireki2:
22840 case 1:
22850 pause 200:goto Jyoushi_Input_Seireki2:
22860 case 6:
22870 No=5:sp_on 8,1:sp_on 11,0
22880 pause 200:goto Jyoushi_Input_Seireki2:
22890 case 5:
22900 No=4:sp_on 5,1:sp_on 8,0
22910 pause 200:goto Jyoushi_Input_Seireki2:
22920 case 4:
22930 pause 200:goto Jyoushi_Input_Seireki2:
22940 case 9:
22950 No=8:sp_on 7,1:sp_on 10,0
22960 pause 200:goto Jyoushi_Input_Seireki2:
22970 case 8:
22980 No=7:sp_on 4,1:sp_on 7,0
22990 pause 200:goto Jyoushi_Input_Seireki2:
23000 case 7:
23010 pause 200:goto Jyoushi_Input_Seireki2:
23020 end select
23030 endif
23040 '右  十字キー　右　or カーソル　右
23050 if ((y2 = 1) or (key$ = chr$(28))) then
23060 select case No
23070 '0ボタンからokボタン右に移動
23080 case 0:
23090 No=-1:sp_on 14,1:sp_on 13,0
23100 pause 200:goto Jyoushi_Input_Seireki2:
23110 '0ボタンからokボタン 右に移動　ここまで
23120 'OKボタンで右を押して何もしない
23130 case -1:
23140 pause 200:goto Jyoushi_Input_Seireki2:
23150 case 1:
23160 No=2:sp_on 9,1:sp_on 6,0
23170 pause 200:goto Jyoushi_Input_Seireki2:
23180 case 2:
23190 No=3:sp_on 12,1:sp_on 9,0
23200 pause 200:goto Jyoushi_Input_Seireki2:
23210 case 3:
23220 pause 200:goto Jyoushi_Input_Seireki2:
23230 case 4:
23240 No=5:sp_on 8,1:sp_on 5,0
23250 pause 200:goto Jyoushi_Input_Seireki2:
23260 case 5:
23270 No=6:sp_on 11,1:sp_on 8,0
23280 pause 200:goto Jyoushi_Input_Seireki2:
23290 case 7:
23300 No=8:sp_on 7,1:sp_on 4,0
23310 pause 200:goto Jyoushi_Input_Seireki2:
23320 case 8:
23330 No=9:sp_on 10,1:sp_on 7,0
23340 pause 200:goto Jyoushi_Input_Seireki2:
23350 case 9:
23360 pause 200:goto Jyoushi_Input_Seireki2:
23370 case 6:
23380 pause 200:goto Jyoushi_Input_Seireki2:
23390 end select
23400 'Okから右ボタンを押して何もしない ここまで
23410 endif
23420 '十字キー　ここまで
23430 '==============================
23440 'ここから
23450 '==============================
23460 if ((bg=2) or (key$=chr$(13))) then
23470 select case count
23480 case 0:
23490 count = 1
23500 if (No=-1) then
23510 count = 0:No=0
23520 buf_Jyoushi_Born_Day(0) = No
23530 'Okボタンを押したとき
23540 goto Jyoushi_Input_Seireki2:
23550 else
23560 'Okボタン以外が押されたとき
23570 if (No>=1 and No<=2) then
23580 buf_year$="":buf_year$=str$(No) + "***"
23590 buf_year = No:a= No
23600 buf_Jyoushi_Born_Day(0) = No
23610 locate 1,3
23620 color rgb(255,255,255)
23630 print "上司の生まれた年代(西暦4桁):";buf_year$
23640 goto Jyoushi_Input_Seireki2:
23650 else
23660 count=0
23670 ui_msg"数字が範囲外になります。"
23680 buf_year$="":buf_year=0
23690 goto Jyoushi_Input_Seireki2:
23700 endif
23710 endif
23720 case 1:
23730 count = 2
23740 if (No = -1) then
23750 count = 1
23760 goto Jyoushi_Input_Seireki2:
23770 else
23780 buf_year = a * 10 + No
23790 b=buf_year
23800 buf_year$ = str$(buf_year) + "**"
23810 buf_Jyoushi_Born_Day(0)=buf_year
23820 locate 1,3
23830 color rgb(255,255,255)
23840 print "                                                                "
23850 locate 1,3
23860 print "上司の生まれた年代(西暦4桁):" + buf_year$
23870 'if (No = -1) then
23880 'count=1
23890 goto Jyoushi_Input_Seireki2:
23900 endif
23910 case 2:
23920 count=3
23930 if (No=-1) then
23940 count =2
23950 goto Jyoushi_Input_Seireki2:
23960 else
23970 buf_year = b * 10 + No
23980 c=buf_year
23990 buf_year$ = str$(buf_year) + "*"
24000 buf_Jyoushi_Born_Day(0) = buf_year
24010 locate 1,3
24020 color rgb(255,255,255)
24030 print "                                        "
24040 locate 1,3
24050 print "上司の生まれた年代(西暦4桁):";buf_year$
24060 goto Jyoushi_Input_Seireki2:
24070 endif
24080 case 3:
24090 count=4
24100 if (No = -1) then
24110 No=0
24120 goto Jyoushi_Input_Seireki2:
24130 else
24140 buf_year = c * 10 + No
24150 buf_year$ = str$(buf_year)
24160 buf_Jyoushi_Born_Day(0) = buf_year
24170 locate 1,3
24180 color RGB(255,255,255)
24190 print "                                      "
24200 locate 1,3
24210 print "上司の生まれた年代(西暦4桁):";buf_year$
24220 buf_year=val(buf_year$)
24230 'year=val(buf_year$)
24240 'if (No=-1) then
24250 'goto Input_Born_Month:
24260 'else
24270 goto Jyoushi_Input_Seireki2:
24280 endif
24290 case 4:
24300 'bufyear=buf_year
24310 if (No=-1) then
24320 buf_year = val(buf_year$)
24330 buf_Jyoushi_Born_Day(0)=buf_year
24340 sp_on 14,0:No=0
24350 goto Jyoushi_Input_Born_Month:
24360 else
24370 goto Jyoushi_Input_Seireki2:
24380 endif
24390 end select
24400 endif
24410 '===========================
24420 'ここまでを部下のところにコピーする.
24430 '===========================
24440 if (bg2 = 2) then
24450 select case count2
24460 case 0:
24470 if (No = -1) then
24480 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
24490 count=0
24500 locate 1,3
24510 color rgb(255,255,255)
24520 print "                                      "
24530 locate 1,3
24540 print "上司の生まれた年代（西暦4桁):"+buf_year$
24550 goto Jyoushi_Input_Seireki2:
24560 else
24570 '(buf_year=0) then
24580 buf_year=0:buf_year$="****"
24590 locate 1,3
24600 print "                                       "
24610 locate 1,3
24620 print "上司の生まれた年代(西暦4桁):"+buf_year$
24630 goto Jyoushi_Input_Seireki2:
24640 'endif
24650 endif
24660 end select
24670 endif
24680 'Input"上司の生れた年代(4桁,〜2025年):",year
24690 'if year > 2025 then goto Jyoushi_Input_Seireki:
24700 'if year = 123 then cls 3:cls 4:goto Main_Screen:
24710 '"4桁目"
24720 'bufyear4 = fix(year / 1000)
24730 '"3桁目"
24740 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
24750 '"2桁目"
24760 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
24770 '"1桁目"
24780 'bufyear1 = fix((year - ((bufyear4*
24790 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
24800 '2.生まれた月を入力
24810 Jyoushi_Input_Born_Month:
24820 cls 3:play "":count=0:count2=0
24830 'No=-1:Okのとき
24840 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
24850 for i=0 to 1
24860 buf_month(i)=0
24870 next i
24880 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
24890 gload Gazo$ + "Screen1.png",0,0,0
24900 gload Gazo$ + "downscreen.png",0,0,800
24910 'Init"kb:4"
24920 '音声ファイル再生 2023.06.07
24930 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
24940 font 48
24950 locate 0,1
24960 '文字色：黒　 color rgb(0,0,0)
24970 '文字色:白
24980 color rgb(255,255,255)
24990 print "上司の生まれた月を入れて下さい" + chr$(13)
25000 '文字色:白
25010 color rgb(255,255,255)
25020 locate 1,3
25030 '文字色:白
25040 print "上司の生まれた月(1月~12月):"+buf_Month$
25050 color rgb(255,255,255)
25060 'locate 4,6:print ":7"
25070 'locate 9,6:print ":8"
25080 'locate 12,6:print ":9"
25090 locate 4,6
25100 '文字色:赤
25110 print ":7  :8  :9" + chr$(13)
25120 color rgb(255,255,255)
25130 locate 4,8
25140 print ":4  :5  :6" + chr$(13)
25150 color rgb(255,255,255)
25160 locate 4,10
25170 print ":1  :2  :3" + chr$(13)
25180 locate 4,12
25190 print "    :0"
25200 locate 12,12
25210 color rgb(0,0,255)
25220 print ":Ok"
25230 sp_on 4,0: sp_on 5,0:sp_on 6,0
25240 sp_on 7,0:sp_on 8,0:sp_on 9,0
25250 sp_on 10,0:sp_on 11,0:sp_on 12,0
25260 sp_on 13,0:sp_on 14,1
25270 Jyoushi_Input_Born_Month2:
25280 key$="":bg=0:y=0:y2=0:bg2=0
25290 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
25300 key$ = inkey$
25310 bg = strig(1)
25320 y = stick(1)
25330 y2 = stick(0)
25340 bg2 = strig(0)
25350 pause 5
25360 wend
25370 '十字キー　ここから
25380 '上の矢印　または、十字キー上
25390 if ((y = -1) or (key$ = chr$(30))) then
25400 select case No
25410 'No=-1:okのとき:初期の状態
25420 '0kボタンから３に移動
25430 '上に行く 処理
25440 case -1:
25450 No=3:sp_on 12,1:sp_on 14,0
25460 pause 200:goto Jyoushi_Input_Born_Month2:
25470 '選択肢:3
25480 '3ボタンから 6に移動
25490 case 3:
25500 No=6:sp_on 12,0:sp_on 11,1
25510 pause 200:goto Jyoushi_Input_Born_Month2:
25520 '6ボタンから ９に移動
25530 case 6:
25540 No=9:sp_on 10,1:sp_on 11,0
25550 pause 200:goto Jyoushi_Input_Born_Month2:
25560 '6ボタンから ９に移動　ここまで
25570 '9で上を押して何もしない
25580 case 9:
25590 '何もしない
25600 No=9
25610 pause 200:goto Jyoushi_Input_Born_Month2:
25620 '9で上を押しても何もしない　ここまで
25630 '上　 0ボタンから2ボタン
25640 'sp_on 6,1:1
25650 'sp_on 8,1:5
25660 'sp_on 7,1:7
25670 case 0:
25680 No=2:sp_on 13,0:sp_on 9,1:
25690 pause 200:goto Jyoushi_Input_Born_Month2:
25700 '上  0ボタンから2ボタン　ここまで
25710 '2から５になる 上
25720 case 2:
25730 No=5:sp_on 8,1:sp_on 9,0:
25740 pause 200:goto Jyoushi_Input_Born_Month2:
25750 case 5:
25760 No=8:sp_on 7,1:sp_on 8,0
25770 pause 200:goto Jyoushi_Input_Born_Month2:
25780 case 8:
25790 pause 200:goto Input_Born_Month2:
25800 case 1:
25810 No=4:sp_on 5,1:sp_on 6,0
25820 pause 200:goto Jyoushi_Input_Born_Month2:
25830 case 4:
25840 No=7:sp_on 4,1:sp_on 5,0
25850 pause 200:goto Jyoushi_Input_Born_Month2:
25860 case 7:
25870 pause 200:goto Input_Born_Month2:
25880 end select
25890 endif
25900 '左３　ここまで
25910 '下の矢印
25920 '中央 2
25930 if ((y=1) or (key$ = chr$(31))) then
25940 select case No
25950 '9から６に下げる
25960 case 9:
25970 No=6:sp_on 11,1:sp_on 10,0
25980 pause 200:goto Jyoushi_Input_Born_Month2:
25990 '6から３に下げる
26000 case 6:
26010 No=3:sp_on 12,1:sp_on 11,0
26020 pause 200:goto Jyoushi_Input_Born_Month2:
26030 '3から０ｋに変える
26040 case 3:
26050 No=-1:sp_on 14,1:sp_on 12,0
26060 pause 200:goto Jyoushi_Input_Born_Month2:
26070 'Okから下のボタンを押しても何もしない
26080 case -1:
26090 pause 200:goto Jyoushi_Input_Born_Month2:
26100 case 8:
26110 No=5:sp_on 8,1:sp_on 7,0
26120 pause 200:goto Jyoushi_Input_Born_Month2:
26130 case 5:
26140 No=2:sp_on 9,1:sp_on 8,0
26150 pause 200:goto Jyoushi_Input_Born_Month2:
26160 case 2:
26170 No=0:sp_on 13,1:sp_on 9,0
26180 pause 200:goto Jyoushi_Input_Born_Month2:
26190 case 0:
26200 pause 200:goto Jyoushi_Input_Born_Month2:
26210 case 7:
26220 No=4:sp_on 5,1:sp_on 4,0
26230 pause 200:goto Jyoushi_Input_Born_Month2:
26240 case 4:
26250 No=1:sp_on 6,1:sp_on 5,0
26260 pause 200:goto Jyoushi_Input_Born_Month2:
26270 case 1:
26280 pause 200:goto Jyoushi_Input_Born_Month2:
26290 end select
26300 endif
26310 '左へボタン 十字キー　左　or 　カーソル左
26320 if ((y2 = -1) or (key$ = chr$(29))) then
26330 select case No
26340 'Ok ボタン  Okから　左　０に行く
26350 case -1:
26360 No=0:sp_on 13,1:sp_on 14,0
26370 pause 200:goto Jyoushi_Input_Born_Month2:
26380 '0 ボタン  左　何もしない
26390 case 0:
26400 pause 200:goto Jyoushi_Input_Born_Month2:
26410 case 3:
26420 No=2:sp_on 9,1:sp_on 12,0:
26430 pause 200:goto Jyoushi_Input_Born_Month2:
26440 case 2:
26450 No=1:sp_on 6,1:sp_on 9,0:
26460 pause 200:goto Jyoushi_Input_Born_Month2:
26470 case 1:
26480 pause 200:goto Jyoushi_Input_Born_Month2:
26490 case 6:
26500 No=5:sp_on 8,1:sp_on 11,0
26510 pause 200:goto Jyoushi_Input_Born_Month2:
26520 case 5:
26530 No=4:sp_on 5,1:sp_on 8,0
26540 pause 200:goto Jyoushi_Input_Born_Month2:
26550 case 4:
26560 pause 200:goto Jyoushi_Input_Born_Month2:
26570 case 9:
26580 No=8:sp_on 7,1:sp_on 10,0
26590 pause 200:goto Input_Born_Month2:
26600 case 8:
26610 No=7:sp_on 4,1:sp_on 7,0
26620 pause 200:goto Jyoushi_Input_Born_Month2:
26630 case 7:
26640 pause 200:goto Jyoushi_Input_Born_Month2:
26650 end select
26660 endif
26670 '右  十字キー　右　or カーソル　右
26680 if ((y2 = 1) or (key$ = chr$(28))) then
26690 select case No
26700 '0ボタンからokボタン右に移動
26710 case 0:
26720 No=-1:sp_on 14,1:sp_on 13,0
26730 pause 200:goto Jyoushi_Input_Born_Month2:
26740 '0ボタンからokボタン 右に移動　ここまで
26750 'OKボタンで右を押して何もしない
26760 case -1:
26770 pause 200:goto Jyoushi_Input_Born_Month2:
26780 case 1:
26790 No=2:sp_on 9,1:sp_on 6,0
26800 pause 200:goto Jyoushi_Input_Born_Month2:
26810 case 2:
26820 No=3:sp_on 12,1:sp_on 9,0
26830 pause 200:goto Jyoushi_Input_Born_Month2:
26840 case 3:
26850 pause 200:goto Jyoushi_Input_Born_Month2:
26860 case 4:
26870 No=5:sp_on 8,1:sp_on 5,0
26880 pause 200:goto Jyoushi_Input_Born_Month2:
26890 case 5:
26900 No=6:sp_on 11,1:sp_on 8,0
26910 pause 200:goto Jyoushi_Input_Born_Month2:
26920 case 7:
26930 No=8:sp_on 7,1:sp_on 4,0
26940 pause 200:goto Jyoushi_Input_Born_Month2:
26950 case 8:
26960 No=9:sp_on 10,1:sp_on 7,0
26970 pause 200:goto Jyoushi_Input_Born_Month2:
26980 case 9:
26990 pause 200:goto Jyoushi_Input_Born_Month2:
27000 case 6:
27010 pause 200:goto Jyoushi_Input_Born_Month2:
27020 end select
27030 'Okから右ボタンを押して何もしない ここまで
27040 endif
27050 '十字キー　ここまで
27060 '右の丸ボタン + Enter key 決定キー
27070 if ((bg=2) or (key$=chr$(13))) then
27080 select case count
27090 case 0:
27100 if (No=-1) then No=0
27110 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
27120 if (buf_month > 1 and buf_month < 10)  then
27130 buf_Month$ = str$(buf_month)
27140 'buf_month=No
27150 endif
27160 if (buf_month = 1)  then
27170 buf_Month$ = str$(buf_month) + "*"
27180 'c=buf_month
27190 endif
27200 locate 1,3
27210 print "                                     "
27220 color RGB(255,255,255)
27230 locate 1,3
27240 print "上司の生まれた月(1月~12月):" + buf_Month$
27250 goto Jyoushi_Input_Born_Month2:
27260 case 1:
27270 count = 2:
27280 'c = val(buf_Month$)
27290 if (No = -1) then
27300 'count=0
27310 No=0
27320 month=buf_month
27330 buf_month=val(buf_Month$)
27340 month=buf_month
27350 buf_Jyoushi_Born_Day(1)=month
27360 '生まれた日に飛ぶ
27370 goto Jyoushi_Input_Born_Day:
27380 else
27390 buf_month = c*10 + No
27400 'if (buf_month = 1) then
27410 'buf_Month$ = str$(buf_month)
27420 'endif
27430 buf_Month$ = str$(buf_month)
27440 buf_Jyoushi_Born_Day(1) = buf_month
27450 locate 0,3
27460 print "                                           "
27470 locate 1,3
27480 color Rgb(255,255,255)
27490 print "上司の生まれた月(1月~12月):" + buf_Month$
27500 goto Jyoushi_Input_Born_Month2:
27510 endif
27520 case 2:
27530 '==================================
27540 '何もしない
27550 'coun = 2
27560 '==================================
27570 'c= val(buf_Month$)
27580 'buf_month = c*10 + No
27590 'buf_Month$ = str$(buf_month)
27600 'locate 2,3
27610 'print "上司の生まれた月(1月～12月):";buf_Month$
27620 'goto Jyoushi_Input_Born_Month2:
27630 'case 3:
27640 'count=4
27650 'b=val(buf_month$)
27660 'buf_month=c*10+No
27670 'buf_Month$=str$(buf_month)
27680 'locate 2,3
27690 'print "上司の生まれた月(1月～12月):";buf_Month$
27700 'buf_month=val(buf_Month$)
27710 'year=val(buf_year$)
27720 if (No=-1) then
27730 No=0
27740 goto Jyoushi_Input_Born_Day:
27750 else
27760 goto Jyoushi_Input_Born_Month2:
27770 endif
27780 'case 4:
27790 'bufyear=buf_year
27800 'if (No=-1) then
27810 'buf_month = val(buf_Month$)
27820 'month = buf_month
27830 'sp_on 14,0
27840 'goto Input_Born_Day:
27850 'else
27860 'goto Input_Born_Month2:
27870 'endif
27880 end select
27890 endif
27900 '左の丸ボタン　キャンセル
27910 if (bg2=2) then
27920 select case count2
27930 case 0:
27940 if (No = -1) then
27950 buf_month=0:buf_Month$="**"
27960 count=0
27970 'goto rewrite2:
27980 else
27990 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
28000 buf_month = 0:buf_Month$ = "**"
28010 locate 0,3
28020 color rgb(255,255,255)
28030 print "                                       "
28040 goto rewrite2:
28050 if (No>12) then
28060 ui_msg"値が範囲外です。"
28070 goto rewrite2:
28080 endif
28090 endif
28100 endif
28110 rewrite2:
28120 locate 2,3
28130 color rgb(255,255,255)
28140 print "                                      "
28150 locate 2,3
28160 print "上司の生まれた月(1月~12月):"+buf_Month$
28170 goto Jyoushi_Input_Born_Month2:
28180 end select
28190 'endif
28200 endif
28210 end
28220 'end
28230 '生れた日を入力
28240 Jyoushi_Input_Born_Day:
28250 '生まれた日入力
28260 cls 3:play ""
28270 'No=-1:Okのとき
28280 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
28290 for i=0 to 1
28300 buf_day(i)=0
28310 next i
28320 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
28330 gload Gazo$ + "Screen1.png",0,0,0
28340 gload Gazo$ + "downscreen.png",0,0,800
28350 'Init"kb:2"
28360 '音声ファイル再生 2023.06.07
28370 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
28380 font 48
28390 locate 1,1
28400 '文字色：黒　 color rgb(0,0,0)
28410 color rgb(255,255,255)
28420 print "上司の生まれた日を入れて下さい" + chr$(13)
28430 locate 1,3
28440 color rgb(255,255,255)
28450 print "                                      "
28460 locate 1,3
28470 print "上司の生まれた日(1日~31日):"+buf_Day$
28480 color rgb(255,255,255)
28490 'locate 4,6:print ":7"
28500 'locate 9,6:print ":8"
28510 'locate 12,6:print ":9"
28520 locate 4,6
28530 print ":7  :8  :9" + chr$(13)
28540 color rgb(255,255,255)
28550 locate 4,8
28560 print ":4  :5  :6" + chr$(13)
28570 color rgb(255,255,255)
28580 locate 4,10
28590 print ":1  :2  :3" + chr$(13)
28600 locate 4,12
28610 print "    :0"
28620 locate 12,12
28630 color rgb(0,0,255)
28640 print ":Ok"
28650 sp_on 4,0: sp_on 5,0:sp_on 6,0
28660 sp_on 7,0:sp_on 8,0:sp_on 9,0
28670 sp_on 10,0:sp_on 11,0:sp_on 12,0
28680 sp_on 13,0:sp_on 14,1
28690 Jyoushi_Input_Born_Day2:
28700 key$="":bg=0:y=0:y2=0:bg2=0:
28710 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
28720 key$ = inkey$
28730 bg = strig(1)
28740 y = stick(1)
28750 y2 = stick(0)
28760 bg2 = strig(0)
28770 pause 5
28780 wend
28790 '十字キー　ここから
28800 '上の矢印　または、十字キー上
28810 if ((y = -1) or (key$ = chr$(30))) then
28820 select case No
28830 'No=-1:okのとき:初期の状態
28840 '0kボタンから３に移動
28850 '上に行く 処理
28860 case -1:
28870 No=3:sp_on 12,1:sp_on 14,0
28880 pause 200:goto Jyoushi_Input_Born_Day2:
28890 '選択肢:3
28900 '3ボタンから 6に移動
28910 case 3:
28920 No=6:sp_on 12,0:sp_on 11,1
28930 pause 200:goto Jyoushi_Input_Born_Day2:
28940 '6ボタンから ９に移動
28950 case 6:
28960 No=9:sp_on 10,1:sp_on 11,0
28970 pause 200:goto Jyoushi_Input_Born_Day2:
28980 '6ボタンから ９に移動　ここまで
28990 '9で上を押して何もしない
29000 case 9:
29010 '何もしない
29020 No=9
29030 pause 200:goto Jyoushi_Input_Born_Day2:
29040 '9で上を押しても何もしない　ここまで
29050 '上　 0ボタンから2ボタン
29060 'sp_on 6,1:1
29070 'sp_on 8,1:5
29080 'sp_on 7,1:7
29090 case 0:
29100 No=2:sp_on 13,0:sp_on 9,1:
29110 pause 200:goto Jyoushi_Input_Born_Day2:
29120 '上  0ボタンから2ボタン　ここまで
29130 '2から５になる 上
29140 case 2:
29150 No=5:sp_on 8,1:sp_on 9,0:
29160 pause 200:goto Jyoushi_Input_Born_Day2:
29170 case 5:
29180 No=8:sp_on 7,1:sp_on 8,0
29190 pause 200:goto Jyoushi_Input_Born_Day2:
29200 case 8:
29210 pause 200:goto Jyoushi_Input_Born_Day2:
29220 case 1:
29230 No=4:sp_on 5,1:sp_on 6,0
29240 pause 200:goto Jyoushi_Input_Born_Day2:
29250 case 4:
29260 No=7:sp_on 4,1:sp_on 5,0
29270 pause 200:goto Jyoushi_Input_Born_Day2:
29280 case 7:
29290 pause 200:goto Jyoushi_Input_Born_Day2:
29300 end select
29310 endif
29320 '左３　ここまで
29330 '下の矢印
29340 '中央 2
29350 if ((y=1) or (key$ = chr$(31))) then
29360 select case No
29370 '9から６に下げる
29380 case 9:
29390 No=6:sp_on 11,1:sp_on 10,0
29400 pause 200:goto Jyoushi_Input_Born_Day2:
29410 '6から３に下げる
29420 case 6:
29430 No=3:sp_on 12,1:sp_on 11,0
29440 pause 200:goto Jyoushi_Input_Born_Day2:
29450 '3から０ｋに変える
29460 case 3:
29470 No=-1:sp_on 14,1:sp_on 12,0
29480 pause 200:goto Jyoushi_Input_Born_Day2:
29490 'Okから下のボタンを押しても何もしない
29500 case -1:
29510 pause 200:goto Jyoushi_Input_Born_Day2:
29520 case 8:
29530 No=5:sp_on 8,1:sp_on 7,0
29540 pause 200:goto Jyoushi_Input_Born_Day2:
29550 case 5:
29560 No=2:sp_on 9,1:sp_on 8,0
29570 pause 200:goto Jyoushi_Input_Born_Day2:
29580 case 2:
29590 No=0:sp_on 13,1:sp_on 9,0
29600 pause 200:goto Jyoushi_Input_Born_Day2:
29610 case 0:
29620 pause 200:goto Jyoushi_Input_Born_Day2:
29630 case 7:
29640 No=4:sp_on 5,1:sp_on 4,0
29650 pause 200:goto Jyoushi_Input_Born_Day2:
29660 case 4:
29670 No=1:sp_on 6,1:sp_on 5,0
29680 pause 200:goto Jyoushi_Input_Born_Day2:
29690 case 1:
29700 pause 200:goto Jyoushi_Input_Born_Day2:
29710 end select
29720 endif
29730 '左へボタン 十字キー　左　or 　カーソル左
29740 if ((y2 = -1) or (key$ = chr$(29))) then
29750 select case No
29760 'Ok ボタン  Okから　左　０に行く
29770 case -1:
29780 No=0:sp_on 13,1:sp_on 14,0
29790 pause 200:goto Jyoushi_Input_Born_Day2:
29800 '0 ボタン  左　何もしない
29810 case 0:
29820 pause 200:goto Jyoushi_Input_Born_Day2:
29830 case 3:
29840 No=2:sp_on 9,1:sp_on 12,0:
29850 pause 200:goto Jyoushi_Input_Born_Day2:
29860 case 2:
29870 No=1:sp_on 6,1:sp_on 9,0:
29880 pause 200:goto Jyoushi_Input_Born_Day2:
29890 case 1:
29900 pause 200:goto Jyoushi_Input_Born_Day2:
29910 case 6:
29920 No=5:sp_on 8,1:sp_on 11,0
29930 pause 200:goto Jyoushi_Input_Born_Day2:
29940 case 5:
29950 No=4:sp_on 5,1:sp_on 8,0
29960 pause 200:goto Jyoushi_Input_Born_Day2:
29970 case 4:
29980 pause 200:goto Jyoushi_Input_Born_Day2:
29990 case 9:
30000 No=8:sp_on 7,1:sp_on 10,0
30010 pause 200:goto Jyoushi_Input_Born_Day2:
30020 case 8:
30030 No=7:sp_on 4,1:sp_on 7,0
30040 pause 200:goto Jyoushi_Input_Born_Day2:
30050 case 7:
30060 pause 200:goto Jyoushi_Input_Born_Day2:
30070 end select
30080 endif
30090 '右  十字キー　右　or カーソル　右
30100 if ((y2 = 1) or (key$ = chr$(28))) then
30110 select case No
30120 '0ボタンからokボタン右に移動
30130 case 0:
30140 No=-1:sp_on 14,1:sp_on 13,0
30150 pause 200:goto Jyoushi_Input_Born_Day2:
30160 '0ボタンからokボタン 右に移動　ここまで
30170 'OKボタンで右を押して何もしない
30180 case -1:
30190 pause 200:goto Jyoushi_Input_Born_Day2:
30200 case 1:
30210 No=2:sp_on 9,1:sp_on 6,0
30220 pause 200:goto Jyoushi_Input_Born_Day2:
30230 case 2:
30240 No=3:sp_on 12,1:sp_on 9,0
30250 pause 200:goto Jyoushi_Input_Born_Day2:
30260 case 3:
30270 pause 200:goto Jyoushi_Input_Born_Day2:
30280 case 4:
30290 No=5:sp_on 8,1:sp_on 5,0
30300 pause 200:goto Jyoushi_Input_Born_Day2:
30310 case 5:
30320 No=6:sp_on 11,1:sp_on 8,0
30330 pause 200:goto Jyoushi_Input_Born_Day2:
30340 case 7:
30350 No=8:sp_on 7,1:sp_on 4,0
30360 pause 200:goto Jyoushi_Input_Born_Day2:
30370 case 8:
30380 No=9:sp_on 10,1:sp_on 7,0
30390 pause 200:goto Jyoushi_Input_Born_Day2:
30400 case 9:
30410 pause 200:goto Jyoushi_Input_Born_Day2:
30420 case 6:
30430 pause 200:goto Jyoushi_Input_Born_Day2:
30440 end select
30450 'Okから右ボタンを押して何もしない ここまで
30460 endif
30470 '十字キー　ここまで
30480 '右の丸ボタンを押したとき
30490 if ((bg = 2) or (key$ = chr$(13))) then
30500 'count :決定ボタンを押した回数
30510 select case (count)
30520 '1桁目入力
30530 case 0:
30540 count = 1:
30550 if (No = -1) then
30560 '1桁目　OKでは何もしない
30570 No=c
30580 'goto Jyoushi_Input_Born_Day2:
30590 else
30600 'ok以外のボタンを押したとき
30610 buf_day = No:buf_Day$ = str$(No)
30620 buf_Jyoushi_Born_Day(2)=buf_day
30630 c=No
30640 locate 1,3
30650 print "                                      "
30660 color RGB(255,255,255)
30670 locate 1,3
30680 print "上司の生まれた日(1日~31日):" + buf_Day$
30690 endif
30700 'check2:
30710 'if (buf_day >= 1 and buf_day <= 9) then
30720 'sp_on 14,0
30730 'goto complate_jyoushi:
30740 'else
30750 'sp_on 14,0
30760 goto Jyoushi_Input_Born_Day2:
30770 'end
30780 'endif
30790 case 1:
30800 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
30810 count = 2:
30820 'locate 2,3
30830 'color RGB(255,255,255)
30840 'print "生まれた日(1日~31日):";buf_Day$
30850 'Okボタンを押したときの処理
30860 '入力値　10未満のとき
30870 'buf_day = c * 10 + No
30880 if (No = -1) then
30890 c=buf_day:No=0
30900 'buf_day = c
30910 buf_Day$ = str$(buf_day)
30920 '10以下のとき
30930 'if (buf_day < 10) then
30940 sp_on 14,0
30950 goto complate_jyoushi:
30960 'end
30970 'endif
30980 else
30990 'c=No
31000 buf_day = c * 10 + No
31010 buf_Day$ = str$(buf_day)
31020 'buf_day = c:buf_Day$=str$(buf_day)
31030 buf_Jyoushi_Born_Day(2)=buf_day
31040 locate 1,3
31050 print "                                           "
31060 locate 1,3
31070 color Rgb(255,255,255)
31080 print "上司の生まれた日(1日~31日):" + buf_Day$
31090 goto Jyoushi_Input_Born_Day2:
31100 'goto
31110 endif
31120 'endif
31130 '生まれた日　2桁目の数字　or 1桁の数字 + ok
31140 case 2:
31150 'buf_day = c * 10 + No
31160 'buf_Jyoushi_Born_Day(2)=buf_day
31170 'locate 1,3
31180 'print "                                      "
31190 'locate 1,3
31200 'locate 2,3
31210 'print "生まれた日(1日〜31日):";buf_Day
31220 'No=-1:ok ボタンを押したとき
31230 if (No = -1) then
31240 'if ((buf_day > 0) and (buf_day < 32)) then
31250 No=0
31260 sp_on 14,0
31270   goto complate_jyoushi:
31280 'end
31290 else
31300   goto Jyoushi_Input_Born_Day2:
31310 'endif
31320 'Okボタン以外を押したとき
31330 'else
31340 'c=val(buf_Day$)
31350 'buf_day = c * 10 + No
31360 'buf_Jyoushi_Born_Day(2) = buf_day
31370 'buf_Day$ = str$(buf_day)
31380 'locate 1,3
31390 'print "上司の生まれた日(1日~31日):";buf_Day$
31400 'goto Jyoushi_Input_Born_Day2:
31410 endif
31420 'case 3:
31430 'count=4
31440 'c=val(buf_day$)
31450 'buf_day=c*10+No
31460 'buf_day$=str$(buf_day)
31470 'locate 2,3
31480 'print "生まれた日を入れてください:";buf_day$
31490 'year=val(buf_year$)
31500 'if (No = -1) then
31510 'goto Jyoushi_Input_Born_Day:
31520 'sp_on 14,0:
31530 'goto complate_jyoushi:
31540 'else
31550 'goto Jyoushi_Input_Born_Month2:
31560 'endif
31570 'case 4:
31580 'bufyear=buf_year
31590 'if (No=-1) then
31600 'buf_day = val(buf_day$)
31610 'bufday = buf_day
31620 'sp_on 14,0
31630 'goto Jyoushi_Input_Born_Day2:
31640 'else
31650 'goto Jyoushi_Input_Born_Day2:
31660 'endif
31670 end select
31680 endif
31690 if (bg2=2) then
31700 select case count2
31710 case 0:
31720 if (No=-1) then
31730 buf_day=0:buf_Day$="**":No=0
31740 if (buf_day >= 1 and buf_day <= 31) then
31750 count=0
31760 buf_day=0:buf_Day$ = "**"
31770 goto rewrite_day3:
31780 else
31790 buf_day=0:buf_Day$ = "**"
31800 ui_msg"値が範囲外です"
31810 endif
31820 goto rewrite_day3:
31830 else
31840 goto rewrite_day3:
31850 endif
31860 rewrite_day3:
31870 locate 2,3
31880 color rgb(255,255,255)
31890 print "                                      "
31900 locate 2,3
31910 print "生まれた日(1日~31日):" + buf_Day$
31920 goto Jyoushi_Input_Born_Day2:
31930 end select
31940 endif
31950 '--------------------------------------------'
31960 'locate 2,0:color rgb(255,0,0)
31970 'print "上司の生まれた年代を入力"
31980 'color rgb(255,255,255)
31990 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
32000 'locate 2,4:Input "上司の生まれた年:",born_year
32010 '誕生日データーを配列に代入
32020 'buf_Jyoushi_Born_Year:上司の生まれた年代
32030 'buf_Jyoushi_Born_Day(0) = born_year
32040 'born_year = 0
32050 '---------------------------------------------'
32060 'goto Jyoushi_born_month:
32070 '1-2.生まれた月を入力
32080 'Jyoushi_born_month:
32090 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
32100 'init "kb:4"
32110 'locate 2,1:
32120 'color rgb(255,0,0)
32130 'print "上司の生まれた月入力"
32140 'color rgb(255,255,255)
32150 'locate 2,4:print "生まれた月を入力してください"
32160 'locate 2,5
32170 'Input "上司の生まれ月:",born_month
32180 'buf_Jyoushi_Born_Day(1) = born_month
32190 'born_month = 0
32200 'goto Jyoushi_born_day:
32210 'buf_Jyoushi_Born_day
32220 '1-3.生まれた日を入力
32230 'Jyoushi_born_day:
32240 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
32250 'init "kb:4"
32260 'locate 2,1:color rgb(255,0,0)
32270 'print "上司の生まれた日　入力"
32280 'locate 2,4:color rgb(255,255,255)
32290 'print "生まれた日を入力してください"
32300 'locate 2,5
32310 'Input "上司の生まれた日:",born_day
32320 'buf_Jyoushi_Born_Day(2) = born_day
32330 'born_day = 0
32340 'goto buka_born_year:
32350 '2.部下の誕生日入力
32360 '2-1.生まれた年を入力
32370 'buka_born_year:
32380 'cls 3:gload Gazo$+"Screen1.png",0,0,0
32390 'init "kb:2"
32400 'locate 1,1:color rgb(255,0,0)
32410 'print "部下の生まれた年代入力"
32420 'locate 0,4:color rgb(255,255,255)
32430 'print "部下の生まれた年（西暦4桁）を入れてください"
32440 'locate 0,5
32450 'Input "部下の生まれた年(西暦4桁):",born_year
32460 'buf_Buka_Born_Day(0) = born_year
32470 'born_year = 0
32480 '2-2.生まれた月を入力
32490 'buka_born_month:
32500 'cls 3:gload Gazo$+"Screen1.png",0,0,0
32510 'init "kb:2"
32520 'locate 2,1:color rgb(255,0,0)
32530 'print "部下の生まれた月 入力"
32540 'locate 2,4:color rgb(255,255,255)
32550 'print "部下の生まれた月を入力してください"
32560 'locate 2,5:Input "部下の生まれた月:",born_month
32570 'buf_Buka_Born_Day(1) = born_month
32580 '2-3.生まれた日を入力
32590 'buka_born_day:
32600 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
32610 'init "kb:2"
32620 'locate 2,1:color rgb(255,0,0)
32630 'print "生まれた日入力"
32640 'color rgb(255,255,255)
32650 'locate 2,4:print "生まれた日を入力してください"
32660 'locate 2,5:Input "部下の生まれた日:",born_day
32670 'buf_Buka_Born_Day(2) = born_day
32680 'born_day=0:goto Result_Business_Aisyou:
32690 '--------------------------------------------'
32700 complate_jyoushi:
32710 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
32720 buf_Jyoushi = Kabara_Num(a,b,c)
32730 a_1=buf_Jyoushi
32740 goto Buka_Input_Seireki:
32750 '--------------------------------------------'
32760 '部下'
32770 '1.部下の生まれた年代'
32780 Buka_Input_Seireki:
32790 cls 3:play "":count=0:count2=0
32800 init"kb:4"
32810 'No=-1:Okのとき
32820 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
32830 for i=0 to 3
32840 buf_Buka_Born_Day(i)=0
32850 next i
32860 gload Gazo$ + "Screen1.png",0,0,0
32870 gload Gazo$ + "downscreen.png",0,0,800
32880 'Init"kb:2"
32890 '音声ファイル再生 2023.06.07
32900 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
32910 font 48
32920 locate 0,1
32930 '文字色：黒　 color rgb(0,0,0)
32940 color rgb(255,255,255)
32950 print "部下の生まれた年代を入れて下さい" + chr$(13)
32960 color rgb(255,255,255)
32970 locate 1,3
32980 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
32990 color rgb(255,255,255)
33000 'locate 4,6:print ":7"
33010 'locate 9,6:print ":8"
33020 'locate 12,6:print ":9"
33030 locate 4,6
33040 print ":7  :8  :9" + chr$(13)
33050 color rgb(255,255,255)
33060 locate 4,8
33070 print ":4  :5  :6" + chr$(13)
33080 color rgb(255,255,255)
33090 locate 4,10
33100 print ":1  :2  :3" + chr$(13)
33110 locate 4,12
33120 print "    :0"
33130 locate 12,12
33140 color rgb(0,0,255)
33150 print ":Ok"
33160 sp_on 4,0: sp_on 5,0:sp_on 6,0
33170 sp_on 7,0:sp_on 8,0:sp_on 9,0
33180 sp_on 10,0:sp_on 11,0:sp_on 12,0
33190 sp_on 13,0:sp_on 14,1
33200 Buka_Input_Seireki2:
33210 key$="":bg=0:y=0:y2=0:bg2=0:
33220 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33230 key$ = inkey$
33240 bg = strig(1)
33250 y = stick(1)
33260 y2 = stick(0)
33270 bg2=strig(0)
33280 pause 5
33290 wend
33300 '十字キー　ここから
33310 '上の矢印　または、十字キー上
33320 if ((y = -1) or (key$ = chr$(30))) then
33330 select case No
33340 'No=-1:okのとき:初期の状態
33350 '0kボタンから３に移動
33360 '上に行く 処理
33370 case -1:
33380 No=3:sp_on 12,1:sp_on 14,0
33390 pause 200:goto Buka_Input_Seireki2:
33400 '選択肢:3
33410 '3ボタンから 6に移動
33420 case 3:
33430 No=6:sp_on 12,0:sp_on 11,1
33440 pause 200:goto Buka_Input_Seireki2:
33450 '6ボタンから ９に移動
33460 case 6:
33470 No=9:sp_on 10,1:sp_on 11,0
33480 pause 200:goto Buka_Input_Seireki2:
33490 '6ボタンから ９に移動　ここまで
33500 '9で上を押して何もしない
33510 case 9:
33520 '何もしない
33530 No=9
33540 pause 200:goto Buka_Input_Seireki2:
33550 '9で上を押しても何もしない　ここまで
33560 '上　 0ボタンから2ボタン
33570 'sp_on 6,1:1
33580 'sp_on 8,1:5
33590 'sp_on 7,1:7
33600 case 0:
33610 No=2:sp_on 13,0:sp_on 9,1:
33620 pause 200:goto Buka_Input_Seireki2:
33630 '上  0ボタンから2ボタン　ここまで
33640 '2から５になる 上
33650 case 2:
33660 No=5:sp_on 8,1:sp_on 9,0:
33670 pause 200:goto Buka_Input_Seireki2:
33680 case 5:
33690 No=8:sp_on 7,1:sp_on 8,0
33700 pause 200:goto Buka_Input_Seireki2:
33710 case 8:
33720 pause 200:goto Buka_Input_Seireki2:
33730 case 1:
33740 No=4:sp_on 5,1:sp_on 6,0
33750 pause 200:goto Buka_Input_Seireki2:
33760 case 4:
33770 No=7:sp_on 4,1:sp_on 5,0
33780 pause 200:goto Buka_Input_Seireki2:
33790 case 7:
33800 pause 200:goto Buka_Input_Seireki2:
33810 end select
33820 endif
33830 '左３　ここまで
33840 '下の矢印
33850 '中央 2
33860 if ((y=1) or (key$ = chr$(31))) then
33870 select case No
33880 '9から６に下げる
33890 case 9:
33900 No=6:sp_on 11,1:sp_on 10,0
33910 pause 200:goto Buka_Input_Seireki2:
33920 '6から３に下げる
33930 case 6:
33940 No=3:sp_on 12,1:sp_on 11,0
33950 pause 200:goto Buka_Input_Seireki2:
33960 '3から０ｋに変える
33970 case 3:
33980 No=-1:sp_on 14,1:sp_on 12,0
33990 pause 200:goto Buka_Input_Seireki2:
34000 'Okから下のボタンを押しても何もしない
34010 case -1:
34020 pause 200:goto Buka_Input_Seireki2:
34030 case 8:
34040 No=5:sp_on 8,1:sp_on 7,0
34050 pause 200:goto Buka_Input_Seireki2:
34060 case 5:
34070 No=2:sp_on 9,1:sp_on 8,0
34080 pause 200:goto Buka_Input_Seireki2:
34090 case 2:
34100 No=0:sp_on 13,1:sp_on 9,0
34110 pause 200:goto Buka_Input_Seireki2:
34120 case 0:
34130 pause 200:goto Buka_Input_Seireki2:
34140 case 7:
34150 No=4:sp_on 5,1:sp_on 4,0
34160 pause 200:goto Buka_Input_Seireki2:
34170 case 4:
34180 No=1:sp_on 6,1:sp_on 5,0
34190 pause 200:goto Buka_Input_Seireki2:
34200 case 1:
34210 pause 200:goto Buka_Input_Seireki2:
34220 end select
34230 endif
34240 '左へボタン 十字キー　左　or 　カーソル左
34250 if ((y2 = -1) or (key$ = chr$(29))) then
34260 select case No
34270 'Ok ボタン  Okから　左　０に行く
34280 case -1:
34290 No=0:sp_on 13,1:sp_on 14,0
34300 pause 200:goto Buka_Input_Seireki2:
34310 '0 ボタン  左　何もしない
34320 case 0:
34330 pause 200:goto Buka_Input_Seireki2:
34340 case 3:
34350 No=2:sp_on 9,1:sp_on 12,0:
34360 pause 200:goto Buka_Input_Seireki2:
34370 case 2:
34380 No=1:sp_on 6,1:sp_on 9,0:
34390 pause 200:goto Buka_Input_Seireki2:
34400 case 1:
34410 pause 200:goto Buka_Input_Seireki2:
34420 case 6:
34430 No=5:sp_on 8,1:sp_on 11,0
34440 pause 200:goto Buka_Input_Seireki2:
34450 case 5:
34460 No=4:sp_on 5,1:sp_on 8,0
34470 pause 200:goto Buka_Input_Seireki2:
34480 case 4:
34490 pause 200:goto Buka_Input_Seireki2:
34500 case 9:
34510 No=8:sp_on 7,1:sp_on 10,0
34520 pause 200:goto Buka_Input_Seireki2:
34530 case 8:
34540 No=7:sp_on 4,1:sp_on 7,0
34550 pause 200:goto Buka_Input_Seireki2:
34560 case 7:
34570 pause 200:goto Buka_Input_Seireki2:
34580 end select
34590 endif
34600 '右  十字キー　右　or カーソル　右
34610 if ((y2 = 1) or (key$ = chr$(28))) then
34620 select case No
34630 '0ボタンからokボタン右に移動
34640 case 0:
34650 No=-1:sp_on 14,1:sp_on 13,0
34660 pause 200:goto Buka_Input_Seireki2:
34670 '0ボタンからokボタン 右に移動　ここまで
34680 'OKボタンで右を押して何もしない
34690 case -1:
34700 pause 200:goto Buka_Input_Seireki2:
34710 case 1:
34720 No=2:sp_on 9,1:sp_on 6,0
34730 pause 200:goto Buka_Input_Seireki2:
34740 case 2:
34750 No=3:sp_on 12,1:sp_on 9,0
34760 pause 200:goto Buka_Input_Seireki2:
34770 case 3:
34780 pause 200:goto Buka_Input_Seireki2:
34790 case 4:
34800 No=5:sp_on 8,1:sp_on 5,0
34810 pause 200:goto Buka_Input_Seireki2:
34820 case 5:
34830 No=6:sp_on 11,1:sp_on 8,0
34840 pause 200:goto Buka_Input_Seireki2:
34850 case 7:
34860 No=8:sp_on 7,1:sp_on 4,0
34870 pause 200:goto Buka_Input_Seireki2:
34880 case 8:
34890 No=9:sp_on 10,1:sp_on 7,0
34900 pause 200:goto Buka_Input_Seireki2:
34910 case 9:
34920 pause 200:goto Buka_Input_Seireki2:
34930 case 6:
34940 pause 200:goto Buka_Input_Seireki2:
34950 end select
34960 'Okから右ボタンを押して何もしない ここまで
34970 endif
34980 '十字キー　ここまで
34990 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
35000 'ここからコメント
35010 '右の丸ボタン決定を押した数:count
35020 'if ((bg=2) or (key$=chr$(13))) then
35030 'select case count
35040 'case 0:
35050 'count=1
35060 'if (No = -1) then
35070 'count = 0
35080 'Okボタンを押したとき
35090 '
35100 'goto Buka_Input_Seireki2:
35110 'else
35120 'Okボタン以外が押されたとき
35130 'if (No >= 1 and No <= 2) then
35140 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
35150 'buf_buka_year = No
35160 'buf_Buka_Born_Day(0) = bufyear
35170 'locate 2,3
35180 'color rgb(255,255,255)
35190 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35200 'goto Buka_Input_Seireki2:
35210 'else
35220 'count=0
35230 'ui_msg"数字が範囲外になります。"
35240 'buf_buka_year$ ="":buf_buka_year=0
35250 'goto Buka_Input_Seireki2:
35260 'endif
35270 'endif
35280 'case 1:
35290 'count = 2
35300 'if (No = -1) then
35310 'count = 1
35320 'goto Buka_Input_Seireki2:
35330 'else
35340 'b = val(buf_buka_year$)
35350 'buf_buka_year = b * 10 + No
35360 'buf_buka_year$ = str$(buf_buka_year)
35370 'buf_Buka_Born_Day(0) = bufyear
35380 'locate 1,3
35390 'color rgb(255,255,255)
35400 'print "                                                                "
35410 'locate 1,3
35420 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35430 'if (No = -1) then
35440 'count=1
35450 'goto Buka_Input_Seireki2:
35460 'endif
35470 'case 2:
35480 'count = 3
35490 'if (No = -1) then
35500 'count = 2
35510 'buf_Buka_Born_Day(0)=bufyear
35520 'goto Buka_Input_Seireki2:
35530 'else
35540 'b = val(buf_buka_year$)
35550 'buf_buka_year = b*10 + No
35560 'buf_buka_year$ = str$(buf_buka_year)
35570 'locate 1,3
35580 'color rgb(255,255,255)
35590 'print "                                        "
35600 'locate 1,3
35610 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
35620 'goto Buka_Input_Seireki2:
35630 'endif
35640 'case 3:
35650 'count=4
35660 'if (No = -1) then
35670 'count=3
35680 'goto Buka_Input_Seireki2:
35690 'else
35700 'b = buf_buka_year
35710 'buf_buka_year = b * 10 + No
35720 'buf_buka_year$=str$(buf_buka_year)
35730 'locate 1,3
35740 'color RGB(255,255,255)
35750 'print "                                      "
35760 'locate 1,3
35770 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35780 'buf_year=val(buf_year$)
35790 'year=val(buf_year$)
35800 'if (No=-1) then
35810 'goto Input_Born_Month:
35820 'else
35830 'goto Buka_Input_Seireki2:
35840 'endif
35850 'case 4:
35860 'bufyear=buf_year
35870 'if (No=-1) then
35880 'buf_year = val(buf_year$)
35890 'bufyear = buf_year
35900 'sp_on 14,0
35910 'goto Buka_Input_Born_Month:
35920 'else
35930 'goto Buka_Input_Seireki2:
35940 'endif
35950 'end select
35960 'endif
35970 'if (bg2 = 2) then
35980 'select case count2
35990 'case 0:
36000 'if (No = -1) then
36010 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
36020 'count=0
36030 'locate 1,3
36040 'color rgb(255,255,255)
36050 'print "                                      "
36060 'locate 1,3
36070 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
36080 'goto Buka_Input_Seireki2:
36090 'else
36100 '(buf_year=0) then
36110 'buf_buka_year=0:buf_buka_year$="****"
36120 'goto Buka_Input_Seireki2:
36130 'endif
36140 'endif
36150 'end select
36160 'endif
36170 'end
36180 'ここまでコメント
36190 '================================================================
36200 if ((bg=2) or (key$=chr$(13))) then
36210 select case count
36220 case 0:
36230 count = 1
36240 if (No=-1) then
36250 count = 0
36260 buf_Buka_Born_Day(0) = No
36270 'Okボタンを押したとき
36280 goto Buka_Input_Seireki2:
36290 else
36300 'Okボタン以外が押されたとき
36310 if (No>=1 and No<=2) then
36320 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
36330 buf_buka_year = No
36340 buf_Buka_Born_Day(0) = No
36350 locate 1,3
36360 color rgb(255,255,255)
36370 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36380 goto Buka_Input_Seireki2:
36390 else
36400 count=0
36410 ui_msg"数字が範囲外になります。"
36420 buf_buka_year$="":buf_buka_year=0
36430 goto Buka_Input_Seireki2:
36440 endif
36450 endif
36460 case 1:
36470 count = 2
36480 if (No = -1) then
36490 count = 1
36500 goto Buka_Input_Seireki2:
36510 else
36520 'b = val(buf_buka_year$)
36530 buf_buka_year = a * 10 + No
36540 b=buf_buka_year
36550 buf_buka_year$ = str$(buf_buka_year)+"**"
36560 buf_Buka_Born_Day(0)=buf_buka_year
36570 locate 1,3
36580 color rgb(255,255,255)
36590 print "                                                                "
36600 locate 1,3
36610 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
36620 'if (No = -1) then
36630 'count=1
36640 goto Buka_Input_Seireki2:
36650 endif
36660 case 2:
36670 count=3
36680 if (No=-1) then
36690 count =2:No=0
36700 goto Buka_Input_Seireki2:
36710 else
36720 'b = val(buf_buka_year$)
36730 buf_buka_year = b * 10 + No
36740 c = buf_buka_year
36750 buf_buka_year$ = str$(buf_buka_year) + "*"
36760 buf_Buka_Born_Day(0) = buf_buka_year
36770 locate 1,3
36780 color rgb(255,255,255)
36790 print "                                        "
36800 locate 1,3
36810 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36820 goto Buka_Input_Seireki2:
36830 endif
36840 case 3:
36850 count=4
36860 if (No = -1) then
36870 'count=3:No=0
36880 goto Buka_Input_Seireki2:
36890 else
36900 'b = val(buf_buka_year$)
36910 buf_buka_year=c * 10 + No
36920 buf_buka_year$=str$(buf_buka_year)
36930 buf_Buka_Born_Day(0)=buf_buka_year
36940 locate 1,3
36950 color RGB(255,255,255)
36960 print "                                      "
36970 locate 1,3
36980 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36990 buf_buka_year=val(buf_buka_year$)
37000 'year=val(buf_year$)
37010 'if (No=-1) then
37020 'goto Input_Born_Month:
37030 'else
37040 goto Buka_Input_Seireki2:
37050 endif
37060 case 4:
37070 'bufyear=buf_year
37080 if (No = -1) then
37090 buf_buka_year = val(buf_buka_year$)
37100 buf_Buka_Born_Day(0)=buf_buka_year
37110 sp_on 14,0
37120 goto Buka_Input_Born_Month:
37130 else
37140 goto Buka_Input_Seireki2:
37150 endif
37160 end select
37170 endif
37180 '================================================================
37190 'ここにコピーする。
37200 '================================================================
37210 'Input"部下の生れた年代(4桁,〜2025年):",year
37220 'if year > 2025 then goto Jyoushi_Input_Seireki:
37230 'if year = 123 then cls 3:cls 4:goto Main_Screen:
37240 '"4桁目"
37250 'bufyear4 = fix(year / 1000)
37260 '"3桁目"
37270 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
37280 '"2桁目"
37290 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
37300 '"1桁目"
37310 'bufyear1 = fix((year - ((bufyear4*
37320 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
37330 '1.部下の生まれた年代'
37340 '2.部下の生まれた月'
37350 Buka_Input_Born_Month:
37360 cls 3:play "":count=0:count2=0
37370 'No=-1:Okのとき
37380 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
37390 for i=0 to 1
37400 buf_month(i)=0
37410 next i
37420 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
37430 gload Gazo$ + "Screen1.png",0,0,0
37440 gload Gazo$ + "downscreen.png",0,0,800
37450 'Init"kb:4"
37460 '音声ファイル再生 2023.06.07
37470 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
37480 font 48
37490 locate 0,1
37500 '文字色：黒　 color rgb(0,0,0)
37510 '文字色:白
37520 color rgb(255,255,255)
37530 print "部下の生まれた月を入れて下さい" + chr$(13)
37540 '文字色:白
37550 color rgb(255,255,255)
37560 locate 1,3
37570 '文字色:白
37580 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
37590 color rgb(255,255,255)
37600 'locate 4,6:print ":7"
37610 'locate 9,6:print ":8"
37620 'locate 12,6:print ":9"
37630 locate 4,6
37640 '文字色:赤
37650 print ":7  :8  :9" + chr$(13)
37660 color rgb(255,255,255)
37670 locate 4,8
37680 print ":4  :5  :6" + chr$(13)
37690 color rgb(255,255,255)
37700 locate 4,10
37710 print ":1  :2  :3" + chr$(13)
37720 locate 4,12
37730 print "    :0"
37740 locate 12,12
37750 color rgb(0,0,255)
37760 print ":Ok"
37770 sp_on 4,0: sp_on 5,0:sp_on 6,0
37780 sp_on 7,0:sp_on 8,0:sp_on 9,0
37790 sp_on 10,0:sp_on 11,0:sp_on 12,0
37800 sp_on 13,0:sp_on 14,1
37810 Buka_Input_Born_Month2:
37820 key$="":bg=0:y=0:y2=0:bg2=0
37830 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
37840 key$ = inkey$
37850 bg = strig(1)
37860 y = stick(1)
37870 y2 = stick(0)
37880 bg2 = strig(0)
37890 pause 5
37900 wend
37910 '十字キー　ここから
37920 '上の矢印　または、十字キー上
37930 if ((y = -1) or (key$ = chr$(30))) then
37940 select case No
37950 'No=-1:okのとき:初期の状態
37960 '0kボタンから３に移動
37970 '上に行く 処理
37980 case -1:
37990 No=3:sp_on 12,1:sp_on 14,0
38000 pause 200:goto Buka_Input_Born_Month2:
38010 '選択肢:3
38020 '3ボタンから 6に移動
38030 case 3:
38040 No=6:sp_on 12,0:sp_on 11,1
38050 pause 200:goto Buka_Input_Born_Month2:
38060 '6ボタンから ９に移動
38070 case 6:
38080 No=9:sp_on 10,1:sp_on 11,0
38090 pause 200:goto Buka_Input_Born_Month2:
38100 '6ボタンから ９に移動　ここまで
38110 '9で上を押して何もしない
38120 case 9:
38130 '何もしない
38140 No=9
38150 pause 200:goto Buka_Input_Born_Month2:
38160 '9で上を押しても何もしない　ここまで
38170 '上　 0ボタンから2ボタン
38180 'sp_on 6,1:1
38190 'sp_on 8,1:5
38200 'sp_on 7,1:7
38210 case 0:
38220 No=2:sp_on 13,0:sp_on 9,1:
38230 pause 200:goto Buka_Input_Born_Month2:
38240 '上  0ボタンから2ボタン　ここまで
38250 '2から５になる 上
38260 case 2:
38270 No=5:sp_on 8,1:sp_on 9,0:
38280 pause 200:goto Buka_Input_Born_Month2:
38290 case 5:
38300 No=8:sp_on 7,1:sp_on 8,0
38310 pause 200:goto Buka_Input_Born_Month2:
38320 case 8:
38330 pause 200:goto Buka_Input_Born_Month2:
38340 case 1:
38350 No=4:sp_on 5,1:sp_on 6,0
38360 pause 200:goto Buka_Input_Born_Month2:
38370 case 4:
38380 No=7:sp_on 4,1:sp_on 5,0
38390 pause 200:goto Buka_Input_Born_Month2:
38400 case 7:
38410 pause 200:goto Buka_Input_Born_Month2:
38420 end select
38430 endif
38440 '左３　ここまで
38450 '下の矢印
38460 '中央 2
38470 if ((y=1) or (key$ = chr$(31))) then
38480 select case No
38490 '9から６に下げる
38500 case 9:
38510 No=6:sp_on 11,1:sp_on 10,0
38520 pause 200:goto Buka_Input_Born_Month2:
38530 '6から３に下げる
38540 case 6:
38550 No=3:sp_on 12,1:sp_on 11,0
38560 pause 200:goto Buka_Input_Born_Month2:
38570 '3から０ｋに変える
38580 case 3:
38590 No=-1:sp_on 14,1:sp_on 12,0
38600 pause 200:goto Buka_Input_Born_Month2:
38610 'Okから下のボタンを押しても何もしない
38620 case -1:
38630 pause 200:goto Buka_Input_Born_Month2:
38640 case 8:
38650 No=5:sp_on 8,1:sp_on 7,0
38660 pause 200:goto Buka_Input_Born_Month2:
38670 case 5:
38680 No=2:sp_on 9,1:sp_on 8,0
38690 pause 200:goto Buka_Input_Born_Month2:
38700 case 2:
38710 No=0:sp_on 13,1:sp_on 9,0
38720 pause 200:goto Buka_Input_Born_Month2:
38730 case 0:
38740 pause 200:goto Buka_Input_Born_Month2:
38750 case 7:
38760 No=4:sp_on 5,1:sp_on 4,0
38770 pause 200:goto Buka_Input_Born_Month2:
38780 case 4:
38790 No=1:sp_on 6,1:sp_on 5,0
38800 pause 200:goto Buka_Input_Born_Month2:
38810 case 1:
38820 pause 200:goto Buka_Input_Born_Month2:
38830 end select
38840 endif
38850 '左へボタン 十字キー　左　or 　カーソル左
38860 if ((y2 = -1) or (key$ = chr$(29))) then
38870 select case No
38880 'Ok ボタン  Okから　左　０に行く
38890 case -1:
38900 No=0:sp_on 13,1:sp_on 14,0
38910 pause 200:goto Buka_Input_Born_Month2:
38920 '0 ボタン  左　何もしない
38930 case 0:
38940 pause 200:goto Buka_Input_Born_Month2:
38950 case 3:
38960 No=2:sp_on 9,1:sp_on 12,0:
38970 pause 200:goto Buka_Input_Born_Month2:
38980 case 2:
38990 No=1:sp_on 6,1:sp_on 9,0:
39000 pause 200:goto Buka_Input_Born_Month2:
39010 case 1:
39020 pause 200:goto Buka_Input_Born_Month2:
39030 case 6:
39040 No=5:sp_on 8,1:sp_on 11,0
39050 pause 200:goto Buka_Input_Born_Month2:
39060 case 5:
39070 No=4:sp_on 5,1:sp_on 8,0
39080 pause 200:goto Buka_Input_Born_Month2:
39090 case 4:
39100 pause 200:goto Buka_Input_Born_Month2:
39110 case 9:
39120 No=8:sp_on 7,1:sp_on 10,0
39130 pause 200:goto Buka_Input_Born_Month2:
39140 case 8:
39150 No=7:sp_on 4,1:sp_on 7,0
39160 pause 200:goto Buka_Input_Born_Month2:
39170 case 7:
39180 pause 200:goto Buka_Input_Born_Month2:
39190 end select
39200 endif
39210 '右  十字キー　右　or カーソル　右
39220 if ((y2 = 1) or (key$ = chr$(28))) then
39230 select case No
39240 '0ボタンからokボタン右に移動
39250 case 0:
39260 No=-1:sp_on 14,1:sp_on 13,0
39270 pause 200:goto Buka_Input_Born_Month2:
39280 '0ボタンからokボタン 右に移動　ここまで
39290 'OKボタンで右を押して何もしない
39300 case -1:
39310 pause 200:goto Buka_Input_Born_Month2:
39320 case 1:
39330 No=2:sp_on 9,1:sp_on 6,0
39340 pause 200:goto Buka_Input_Born_Month2:
39350 case 2:
39360 No=3:sp_on 12,1:sp_on 9,0
39370 pause 200:goto Buka_Input_Born_Month2:
39380 case 3:
39390 pause 200:goto Buka_Input_Born_Month2:
39400 case 4:
39410 No=5:sp_on 8,1:sp_on 5,0
39420 pause 200:goto Buka_Input_Born_Month2:
39430 case 5:
39440 No=6:sp_on 11,1:sp_on 8,0
39450 pause 200:goto Buka_Input_Born_Month2:
39460 case 7:
39470 No=8:sp_on 7,1:sp_on 4,0
39480 pause 200:goto Buka_Input_Born_Month2:
39490 case 8:
39500 No=9:sp_on 10,1:sp_on 7,0
39510 pause 200:goto Buka_Input_Born_Month2:
39520 case 9:
39530 pause 200:goto Buka_Input_Born_Month2:
39540 case 6:
39550 pause 200:goto Buka_Input_Born_Month2:
39560 end select
39570 'Okから右ボタンを押して何もしない ここまで
39580 endif
39590 '十字キー　ここまで
39600 '右の丸ボタン　決定キー
39610 if ((bg=2) or (key$=chr$(13))) then
39620 select case count
39630 case 0:
39640 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
39650 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
39660 locate 1,3
39670 color RGB(255,255,255)
39680 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
39690 goto Buka_Input_Born_Month2:
39700 case 1:
39710 count = 2:buf_buka_month=a*10+No
39720 if (No = -1) then
39730 'count=0
39740 month=buf_buka_month
39750 buf_buka_month=val(buf_buka_Month$)
39760 month=buf_buka_month
39770 '生まれた日に飛ぶ
39780 goto Buka_Input_Born_Day:
39790 else
39800 buf_buka_month = a * 10 + No
39810 buf_buka_Month$ = str$(buf_buka_month)
39820 buf_Buka_Born_Day(1) = buf_buka_month
39830 locate 1,3
39840 color Rgb(255,255,255)
39850 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
39860 goto Buka_Input_Born_Month2:
39870 endif
39880 case 2:
39890 count=3
39900 'c= val(buf_Month$)
39910 'buf_month = c*10 + No
39920 'buf_Month$ = str$(buf_month)
39930 'locate 2,3
39940 'print "部下の生まれた月(1月～12月):";buf_Month$
39950 'goto Buka_Input_Born_Month2:
39960 'case 3:
39970 'count=4
39980 'b=val(buf_month$)
39990 'buf_month=c*10+No
40000 'buf_Month$=str$(buf_month)
40010 'locate 2,3
40020 'print "部下の生まれた月(1月～12月):";buf_Month$
40030 'buf_month=val(buf_Month$)
40040 'year=val(buf_year$)
40050 if (No=-1) then
40060 goto Buka_Input_Born_Day:
40070 else
40080 goto Input_Born_Month2:
40090 endif
40100 'case 4:
40110 'bufyear=buf_year
40120 'if (No=-1) then
40130 'buf_month = val(buf_Month$)
40140 'month = buf_month
40150 'sp_on 14,0
40160 'goto Input_Born_Day:
40170 'else
40180 'goto Input_Born_Month2:
40190 'endif
40200 end select
40210 endif
40220 '左の丸ボタン　キャンセル
40230 if (bg2=2) then
40240 select case count2
40250 case 0:
40260 if (No = -1) then
40270 buf_buka_month=0:buf_buka_Month$="**"
40280 count=0
40290 goto rewrite2:
40300 else
40310 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
40320 buf_month=0:buf_Month$="**"
40330 locate 2,3
40340 color rgb(255,255,255)
40350 print "                                       "
40360 goto rewrite2:
40370 if (No>12) then
40380 ui_msg"値が範囲外です。"
40390 goto rewrite2:
40400 endif
40410 endif
40420 endif
40430 rewrite2:
40440 locate 2,3
40450 color rgb(255,255,255)
40460 print "                                      "
40470 locate 2,3
40480 print "部下の生まれた月(1月~12月):";buf_buka_Month$
40490 goto Buka_Input_Born_Month2:
40500 end select
40510 'endif
40520 endif
40530 end
40540 '2.部下の生まれた月'
40550 '3.部下の生まれた日'
40560 '生れた日を入力
40570 Buka_Input_Born_Day:
40580 '生まれた日入力
40590 cls 3:play ""
40600 'No=-1:Okのとき
40610 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
40620 for i=0 to 1
40630 buf_day(i)=0
40640 next i
40650 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
40660 gload Gazo$ + "Screen1.png",0,0,0
40670 gload Gazo$ + "downscreen.png",0,0,800
40680 'Init"kb:2"
40690 '音声ファイル再生 2023.06.07
40700 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
40710 font 48
40720 locate 0,1
40730 '文字色：黒　 color rgb(0,0,0)
40740 color rgb(255,255,255)
40750 print "部下の生まれた日を入れて下さい" + chr$(13)
40760 color rgb(255,255,255)
40770 locate 1,3
40780 print "部下の生まれた日(1日~31日):";buf_Day$
40790 color rgb(255,255,255)
40800 'locate 4,6:print ":7"
40810 'locate 9,6:print ":8"
40820 'locate 12,6:print ":9"
40830 locate 4,6
40840 print ":7  :8  :9" + chr$(13)
40850 color rgb(255,255,255)
40860 locate 4,8
40870 print ":4  :5  :6" + chr$(13)
40880 color rgb(255,255,255)
40890 locate 4,10
40900 print ":1  :2  :3" + chr$(13)
40910 locate 4,12
40920 print "    :0"
40930 locate 12,12
40940 color rgb(0,0,255)
40950 print ":Ok"
40960 sp_on 4,0: sp_on 5,0:sp_on 6,0
40970 sp_on 7,0:sp_on 8,0:sp_on 9,0
40980 sp_on 10,0:sp_on 11,0:sp_on 12,0
40990 sp_on 13,0:sp_on 14,1
41000 Buka_Input_Born_Day2:
41010 key$="":bg=0:y=0:y2=0:bg2=0
41020 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
41030 key$ = inkey$
41040 bg = strig(1)
41050 y = stick(1)
41060 y2 = stick(0)
41070 bg2 = strig(0)
41080 pause 5
41090 wend
41100 '十字キー　ここから
41110 '上の矢印　または、十字キー上
41120 if ((y = -1) or (key$ = chr$(30))) then
41130 select case No
41140 'No=-1:okのとき:初期の状態
41150 '0kボタンから３に移動
41160 '上に行く 処理
41170 case -1:
41180 No=3:sp_on 12,1:sp_on 14,0
41190 pause 200:goto Buka_Input_Born_Day2:
41200 '選択肢:3
41210 '3ボタンから 6に移動
41220 case 3:
41230 No=6:sp_on 12,0:sp_on 11,1
41240 pause 200:goto Buka_Input_Born_Day2:
41250 '6ボタンから ９に移動
41260 case 6:
41270 No=9:sp_on 10,1:sp_on 11,0
41280 pause 200:goto Buka_Input_Born_Day2:
41290 '6ボタンから ９に移動　ここまで
41300 '9で上を押して何もしない
41310 case 9:
41320 '何もしない
41330 No=9
41340 pause 200:goto Buka_Input_Born_Day2:
41350 '9で上を押しても何もしない　ここまで
41360 '上　 0ボタンから2ボタン
41370 'sp_on 6,1:1
41380 'sp_on 8,1:5
41390 'sp_on 7,1:7
41400 case 0:
41410 No=2:sp_on 13,0:sp_on 9,1:
41420 pause 200:goto Buka_Input_Born_Day2:
41430 '上  0ボタンから2ボタン　ここまで
41440 '2から５になる 上
41450 case 2:
41460 No=5:sp_on 8,1:sp_on 9,0:
41470 pause 200:goto Buka_Input_Born_Day2:
41480 case 5:
41490 No=8:sp_on 7,1:sp_on 8,0
41500 pause 200:goto Buka_Input_Born_Day2:
41510 case 8:
41520 pause 200:goto Buka_Input_Born_Day2:
41530 case 1:
41540 No=4:sp_on 5,1:sp_on 6,0
41550 pause 200:goto Buka_Input_Born_Day2:
41560 case 4:
41570 No=7:sp_on 4,1:sp_on 5,0
41580 pause 200:goto Buka_Input_Born_Day2:
41590 case 7:
41600 pause 200:goto Buka_Input_Born_Day2:
41610 end select
41620 endif
41630 '左３　ここまで
41640 '下の矢印
41650 '中央 2
41660 if ((y=1) or (key$ = chr$(31))) then
41670 select case No
41680 '9から６に下げる
41690 case 9:
41700 No=6:sp_on 11,1:sp_on 10,0
41710 pause 200:goto Buka_Input_Born_Day2:
41720 '6から３に下げる
41730 case 6:
41740 No=3:sp_on 12,1:sp_on 11,0
41750 pause 200:goto Buka_Input_Born_Day2:
41760 '3から０ｋに変える
41770 case 3:
41780 No=-1:sp_on 14,1:sp_on 12,0
41790 pause 200:goto Buka_Input_Born_Day2:
41800 'Okから下のボタンを押しても何もしない
41810 case -1:
41820 pause 200:goto Buka_Input_Born_Day2:
41830 case 8:
41840 No=5:sp_on 8,1:sp_on 7,0
41850 pause 200:goto Buka_Input_Born_Day2:
41860 case 5:
41870 No=2:sp_on 9,1:sp_on 8,0
41880 pause 200:goto Buka_Input_Born_Day2:
41890 case 2:
41900 No=0:sp_on 13,1:sp_on 9,0
41910 pause 200:goto Buka_Input_Born_Day2:
41920 case 0:
41930 pause 200:goto Buka_Input_Born_Day2:
41940 case 7:
41950 No=4:sp_on 5,1:sp_on 4,0
41960 pause 200:goto Buka_Input_Born_Day2:
41970 case 4:
41980 No=1:sp_on 6,1:sp_on 5,0
41990 pause 200:goto Buka_Input_Born_Day2:
42000 case 1:
42010 pause 200:goto Buka_Input_Born_Day2:
42020 end select
42030 endif
42040 '左へボタン 十字キー　左　or 　カーソル左
42050 if ((y2 = -1) or (key$ = chr$(29))) then
42060 select case No
42070 'Ok ボタン  Okから　左　０に行く
42080 case -1:
42090 No=0:sp_on 13,1:sp_on 14,0
42100 pause 200:goto Buka_Input_Born_Day2:
42110 '0 ボタン  左　何もしない
42120 case 0:
42130 pause 200:goto Buka_Input_Born_Day2:
42140 case 3:
42150 No=2:sp_on 9,1:sp_on 12,0:
42160 pause 200:goto Buka_Input_Born_Day2:
42170 case 2:
42180 No=1:sp_on 6,1:sp_on 9,0:
42190 pause 200:goto Buka_Input_Born_Day2:
42200 case 1:
42210 pause 200:goto Buka_Input_Born_Day2:
42220 case 6:
42230 No=5:sp_on 8,1:sp_on 11,0
42240 pause 200:goto Buka_Input_Born_Day2:
42250 case 5:
42260 No=4:sp_on 5,1:sp_on 8,0
42270 pause 200:goto Buka_Input_Born_Day2:
42280 case 4:
42290 pause 200:goto Buka_Input_Born_Day2:
42300 case 9:
42310 No=8:sp_on 7,1:sp_on 10,0
42320 pause 200:goto Buka_Input_Born_Day2:
42330 case 8:
42340 No=7:sp_on 4,1:sp_on 7,0
42350 pause 200:goto Buka_Input_Born_Day2:
42360 case 7:
42370 pause 200:goto Buka_Input_Born_Day2:
42380 end select
42390 endif
42400 '右  十字キー　右　or カーソル　右
42410 if ((y2 = 1) or (key$ = chr$(28))) then
42420 select case No
42430 '0ボタンからokボタン右に移動
42440 case 0:
42450 No=-1:sp_on 14,1:sp_on 13,0
42460 pause 200:goto Buka_Input_Born_Day2:
42470 '0ボタンからokボタン 右に移動　ここまで
42480 'OKボタンで右を押して何もしない
42490 case -1:
42500 pause 200:goto Buka_Input_Born_Day2:
42510 case 1:
42520 No=2:sp_on 9,1:sp_on 6,0
42530 pause 200:goto Buka_Input_Born_Day2:
42540 case 2:
42550 No=3:sp_on 12,1:sp_on 9,0
42560 pause 200:goto Buka_Input_Born_Day2:
42570 case 3:
42580 pause 200:goto Buka_Input_Born_Day2:
42590 case 4:
42600 No=5:sp_on 8,1:sp_on 5,0
42610 pause 200:goto Buka_Input_Born_Day2:
42620 case 5:
42630 No=6:sp_on 11,1:sp_on 8,0
42640 pause 200:goto Buka_Input_Born_Day2:
42650 case 7:
42660 No=8:sp_on 7,1:sp_on 4,0
42670 pause 200:goto Buka_Input_Born_Day2:
42680 case 8:
42690 No=9:sp_on 10,1:sp_on 7,0
42700 pause 200:goto Buka_Input_Born_Day2:
42710 case 9:
42720 pause 200:goto Buka_Input_Born_Day2:
42730 case 6:
42740 pause 200:goto Buka_Input_Born_Day2:
42750 end select
42760 'Okから右ボタンを押して何もしない ここまで
42770 endif
42780 '十字キー　ここまで
42790 '右の丸ボタンを押したとき
42800 if ((bg = 2) or (key$ = chr$(13))) then
42810 'count :決定ボタンを押した回数
42820 select case (count)
42830 '1桁目入力
42840 case 0:
42850 count = 1:
42860 if (No = -1) then
42870 '1桁目　OKでは何もしない
42880 'goto check:
42890 No=0
42900 else
42910 'ok以外のボタンを押したとき
42920 buf_buka_day = No:buf_buka_Day$ = str$(No)
42930 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
42940 buf_buka_Day$ = str$(No) + "*"
42950 endif
42960 a=No
42970 buf_Buka_Born_Day(2) = buf_buka_day
42980 locate 1,3
42990 print"                                      "
43000 color RGB(255,255,255)
43010 locate 1,3
43020 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
43030 endif
43040 check2:
43050 if (No >= 1 and No <= 9) then
43060 sp_on 14,0
43070 goto Buka_Input_Born_Day2:
43080 else
43090 sp_on 14,0
43100 goto Result_Business_Aisyou:
43110 end
43120 endif
43130 case 1:
43140 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
43150 count = 2:
43160 'locate 2,3
43170 'color RGB(255,255,255)
43180 'print "生まれた日(1日~31日):";buf_Day$
43190 'Okボタンを押したときの処理
43200 '入力値　10未満のとき
43210 'c = buf_day
43220 if (No = -1) then
43230 'c=buf_day
43240 ' buf_day = c
43250 'buf_Day$ = str$(buf_day)
43260 '10以下のとき
43270 No=0
43280 if (buf_day < 10) then
43290 sp_on 14,0
43300 goto Result_Business_Aisyou:
43310 end
43320 endif
43330 else
43340 sp_on 14,0
43350 'c=No
43360 buf_buka_day = a * 10 + No
43370 buf_buka_Day$ = str$(buf_buka_day)
43380 buf_Buka_Born_Day(2) = buf_buka_day
43390 locate 0,3
43400 color Rgb(255,255,255)
43410 print "                                       "
43420 locate 1,3
43430 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
43440 goto Buka_Input_Born_Day2:
43450 endif
43460 '生まれた日　2桁目の数字　or 1桁の数字 + ok
43470 case 2:
43480 count=0
43490 'c=val(buf_Day$)
43500 'buf_day=c*10+No
43510 'buf_Day$=str$(buf_day)
43520 'day=buf_day
43530 'locate 2,3
43540 'print "生まれた日(1日〜31日):";buf_Day$
43550 'No=-1:ok ボタンを押したとき
43560 if (No = -1) then No=0
43570 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
43580 sp_on 14,0
43590 goto Result_Business_Aisyou:
43600 else
43610 goto Buka_Input_Born_Day2:
43620 endif
43630 'Okボタン以外を押したとき
43640 else
43650 c=val(buf_buka_Day$)
43660 buf_buka_day = c * 10 + No
43670 buf_buka_Day$ = str$(buf_buka_day)
43680 locate 1,3
43690 print "                "
43700 locate 1,3
43710 print "生まれた日(1日~31日):"+buf_buka_Day$
43720 goto Buka_Input_Born_Day2:
43730 'endif
43740 case 3:
43750 count=4
43760 'c=val(buf_day$)
43770 'buf_day=c*10+No
43780 'buf_day$=str$(buf_day)
43790 'locate 2,3
43800 'print "生まれた日を入れてください:";buf_day$
43810 'year=val(buf_year$)
43820 if (No = -1) then
43830 'goto Buka_Input_Born_Day:
43840 sp_on 14,0:
43850 goto complate_jyoushi:
43860 else
43870 goto Buka_Input_Born_Month2:
43880 endif
43890 'case 4:
43900 'bufyear=buf_year
43910 'if (No=-1) then
43920 'buf_day = val(buf_day$)
43930 'bufday = buf_day
43940 'sp_on 14,0
43950 goto complate_jyoushi:
43960 'else
43970 'goto Buka_Input_Born_Day2:
43980 'endif
43990 end select
44000 endif
44010 if (bg2=2) then
44020 select case count2
44030 case 0:
44040 if (No=-1) then
44050 'buf_day=0:buf_Day$="**"
44060 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
44070 count=0
44080 buf_buka_day=0:buf_buka_Day$="**"
44090 goto rewrite_day3:
44100 else
44110 buf_buka_day=0:buf_buka_Day$="**"
44120 ui_msg"値が範囲外です"
44130 endif
44140 goto rewrite_day3:
44150 else
44160 goto rewrite_day3:
44170 endif
44180 rewrite_day3:
44190 locate 2,3
44200 color rgb(255,255,255)
44210 print "                                      "
44220 locate 1,3
44230 print "生まれた日(1日~31日):"+buf_buka_Day$
44240 goto Buka_Input_Born_Day2:
44250 end select
44260 endif
44270 '3.部下の生まれた日'
44280 '部下'
44290 '--------------------------------------------'
44300 'ビジネの相性　結果表示
44310 Result_Business_Aisyou:
44320 cls 3:init "kb:4"
44330 a=0:b=0:c=0:d=0:e=0:f=0
44340 bg=0:key$=""
44350 gload Gazo$ + "Screen1.png",0,0,0
44360 gload Gazo$ + "downscreen.png",0,0,800
44370 sp_on 14,0
44380 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
44390 buf_Buka = Kabara_Num(d,e,f)
44400 a_2 = buf_Buka
44410 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
44420 locate 0,1
44430 color rgb(255,0,0)
44440 print "●.相性診断結果１"
44450 locate 0,4:
44460 color rgb(255,255,255)
44470 print "1.上司の名前:";buffer_name$(0)
44480 locate 0,6
44490 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
44500 locate 0,8
44510 print "2.部下の名前:";buffer_name$(1)
44520 locate 0,10
44530 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
44540 locate 0,12
44550 print "3.上司と部下の相性:";Result_Aisyou$
44560 locate 1,15
44570 color rgb(0,0,0)
44580 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
44590 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
44600 bg = strig(1)
44610 key$ = inkey$
44620 bg2 = strig(0)
44630 pause 5
44640 wend
44650 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
44660 if (bg2 = 2) then
44670  cls 3:goto Business_Aishou_Input_1_parson:
44680 endif
44690 'ビジネスの相性占い　結果2　説明
44700 Result_Business_Aisyou2:
44710 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
44720 gload Gazo$ + "Screen1.png",0,0,0
44730 locate 0,1
44740 color rgb(255,0,0)
44750 print "●.相性の説明"
44760 color rgb(255,255,255)
44770 locate 0,4
44780 print "相性:";Result_Aisyou$
44790 locate 0,6:
44800 print "相性の説明:";buf$
44810 locate 0,15
44820 color rgb(0,0,0)
44830 print "右の丸ボタン:トップ,左のボタン:前の画面"
44840 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
44850 bg = strig(1)
44860 bg2 = strig(0)
44870 key$ = inkey$
44880 pause 5
44890 wend
44900 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
44910 if ((bg2 = 2)) then goto Result_Business_Aisyou:
44920 '自作関数 ここから
44930 func read_explain$(ba$)
44940 d$=""
44950 buf_String$=""
44960 if ba$="A" then
44970 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
44980 line input #1,a$
44990 a1$=mid$(a$,1,12)
45000 a2$=mid$(a$,13,17)
45010 a3$=mid$(a$,30,17)
45020 a4$=mid$(a$,47,18)
45030 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
45040 buf_String$ = a5$
45050 close #1
45060 endif
45070 if ba$="B"  then
45080 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
45090 line input #1,b$
45100 b1$=mid$(b$,1,15)
45110 b2$=mid$(b$,16,21)
45120 'b3$=mid$(b$,33,3)
45130 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
45140 buf_String$ = b4$
45150 close #1
45160 endif
45170 if ba$="C"  then
45180 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
45190 line input #1,c$
45200 c1$ = Mid$(c$,1,15)
45210 c2$ = Mid$(c$,16,33)
45220 c3$ = c1$ + chr$(13) + c2$
45230 buf_String$ = c3$
45240 close #1
45250 endif
45260 if ba$="D" then
45270 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
45280 line input #1,d$
45290 d1$=mid$(d$,1,15)
45300 d2$=mid$(d$,16,22)
45310 d3$=mid$(d$,38,7)
45320 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
45330 buf_String$ = d4$
45340 close #1
45350 endif
45360 if ba$="E"  then
45370 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
45380 line input #1,e$
45390 e1$=Mid$(e$,1,16)
45400 e2$=Mid$(e$,17,16)
45410 e3$=Mid$(e$,33,12)
45420 e4$=Mid$(e$,45,17)
45430 e5$=Mid$(e$,62,17)
45440 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
45450 buf_String$ = e6$
45460 close #1
45470 endif
45480 if ba$="F" then
45490 '改行を追加して表示を調整
45500 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
45510 line input #1,f$
45520 f1$=Mid$(f$,1,15)
45530 f2$=Mid$(f$,16,12)
45540 buf_String$ = f1$+chr$(13)+f2$
45550 close #1
45560 endif
45570 if ba$="G" then
45580 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
45590 line input #1,g$
45600 g1$ = mid$(g$,1,16)
45610 g2$ = mid$(g$,17,18)
45620 g3$ = mid$(g$,36,21)
45630 g4$ = mid$(g$,56,6)
45640 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
45650 buf_String$ = g5$
45660 close #1
45670 endif
45680 if ba$="H" then
45690 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
45700 line input #1,h$
45710 h1$=Mid$(h$,1,17)
45720 h2$=Mid$(h$,18,21)
45730 h3$=Mid$(h$,39,20)
45740 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
45750 buf_String$ = h$
45760 close #1
45770 endif
45780 if ba$="I" then
45790 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
45800 line input #1,i$
45810 i1$=Mid$(i$,1,10)
45820 i2$=Mid$(i$,11,13)
45830 i3$=Mid$(i$,25,16)
45840 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
45850 buf_String$ = i$
45860 close #1
45870 endif
45880 buffer$=buf_String$
45890 endfunc buffer$
45900 'カバラ数（数秘番号を求める）
45910 func Kabara_Num(buffer_Year,month,day)
45920 '=============================
45930 'a1:4桁のうちの1桁目を求める
45940 '例 a1:1234の4が1桁目
45950 'a2:4桁のうちの2桁目を求める
45960 '例:a2:1234の3が2桁目
45970 'a3:4桁のうちの3桁目を求める
45980 '例 a3:1234の2が3桁目
45990 'a4:4桁のうちの4桁目を求める
46000 '例 a4:1234の1が4桁目
46010 '==============================
46020 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
46030 Year = buffer_Year
46040 '処理1　整数部分を取り出す。
46050 a4 = fix(Year / 1000)
46060 a3 = fix(Year / 100) - (a4 * 10)
46070 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
46080 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
46090 '処理　２　取り出した整数部分を足す。
46100 a_ = a1 + a2 + a3 + a4 +month + day
46110 'a1=0:a2=0:a3=0:a4=0
46120 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
46130 buffer = a_
46140 'else
46150 goto recomp2:
46160 'if (a_ = 10) then
46170 '  buffer = 1
46180 endif
46190 recomp2:
46200 a5=0:a6=0
46210 a5 = fix(a_ / 10)
46220 a6 = (a_) - (a5 * 10)
46230 a_ = a5 + a6
46240 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
46250 '結果に行く
46260 goto Res2:
46270 '  if ((a_>11) and (a_<99)) then
46280 else
46290 '再度計算
46300 goto recomp2:
46310 endif
46320 '     a1 = fix(a_ / 10)
46330 '     a2 = a_ - (a1 * 10)
46340 '     a_ = a1 + a2
46350 '     buffer = a_
46360 'endif
46370 'else
46380 '    bffer = a_
46390 'endif
46400 'endif
46410 'else
46420 'talk "プログラムを終了します。"
46430 'end
46440 'endif
46450 'kabara = 10
46460 Res2:
46470 kabara = a_
46480 endfunc kabara
46490 func Kabara_Aisyou$(buff1,buff2)
46500 a=0:b=0
46510 '範囲　1~9
46520 if ((buff1 > 0 and buff1 < 10)) then
46530 a = buff1
46540 else
46550 Select case buff1
46560 case 11:
46570 buff1=9:a=buff1
46580 case 22:
46590 buff1=10:a=buff1
46600 end select
46610 endif
46620 '範囲　１~９
46630 if ((buff2 > 0 and buff2 < 10)) then
46640 b = buff2
46650 else
46660 select case buff2
46670 case 11:
46680 buff2=9:b=buff2
46690 case 12:
46700 buff2=10:b=buff2
46710 end select
46720 endif
46730 Aisyou$ = Buffer_Business_Aisyou$(a,b)
46740 endfunc Aisyou$
46750 '=============================
46760 '自作関数 ここまで
46770 '1.数秘術　トップ画面
46780 '
46790 'Data_eraseを一番最後に持ってくる
46800 '=============================
46810 Data_erase:
46820 'メモリー削除
46830 erase buf_name1$
46840 erase buf_name2$
46850 erase buffer
46860 erase buf_chart$
46870 erase Buffer_Business_Aisyou$
46880 erase buffer_name$
46890 '上司の誕生日
46900 erase buf_Jyoushi_Born_Day
46910 '部下の誕生日
46920 erase buf_Buka_Born_Day
46930 erase buf_year
46940 erase buf_month
46950 erase buf_day
46960 buffer$ = ""
46970 buf$ = ""
46980 buf_year$ = ""
46990 buf_Jyoushi_Kabara_Num = 0
47000 buf_Buka_Kabara_Num = 0
47010 count = 0
47020 buf_Month$ = ""
47030 buf_Day$ = ""
47040 b=0
47050 c=0
47060 return
