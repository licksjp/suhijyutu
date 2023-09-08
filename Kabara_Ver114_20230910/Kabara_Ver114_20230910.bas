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
340 Version$ = "Ver:1.1.4_20230910"
350 'Gazo file Folder
360 Gazo$ = "./data/Picture/"
370 'Voice files 2023
380 Voice$ = "./data/Voice/Voice/"
390 'BirtheyeChart Data:20230626
400 Birth_eye_chart$ = "./data/chart_data/"
410 'Data File
420 Data$ = "./data/data/"
430 'Business Aisyou 結果説明保存フォルダ
440 Business_Aisyou_Explain$="./data/data/Business_Aisyou/"
450 '変数定義 パート
460 b=0:c=0
470 dim buf_name1$(10),buf_name2$(10)
480 dim buffer(9),buf_chart$(26,2)
490 'ビジネスの相性　データー
500 dim Buffer_Business_Aisyou$(12,12)
510 '生れた年代
520 dim buf_year(4):buf_year$ = ""
530 dim buf_month(2)
540 dim buf_day(2)
550 '生れた月
560 buf_Month$ = ""
570 '生れた日
580 buf_Day$ = ""
590 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
600 dim buffer_name$(3)
610 '1-1.上司の誕生日(数値データー)
620 dim buf_Jyoushi_Born_Day(3)
630 '1-2.上司の数秘ナンバー(数値データー)
640 buf_Jyoushi_Kabara_Num = 0
650 '2-1.部下の誕生日(数値データー)
660 dim buf_Buka_Born_Day(3)
670 '2-2.部下の数秘ナンバー(数秘データー)
680 buf_Buka_Kabara_Num = 0
690 count=0
700 '部下の数秘ナンバー
710 'File 読み込み
720 '1.ビジネスの相性占い
730 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
740 for i=0 to 11
750 for j=0 to 11
760 input #1,a$
770 Buffer_Business_Aisyou$(j,i) = a$
780 next j
790 next i
800 close #1
810 '2.Birth Eye chart$
820 '2.バーズアイグリッドを読み込む
830 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
840 for j=0 to 25
850 for i=0 to 1
860 input #1,a$
870 buf_chart$(j,i) = a$
880 next i
890 next j
900 close #1
910 'File 読み込み　ここまで
920 'Main画面
930 screen 1,1,1,1
940 Main_Screen:
950 cls 3:
960 No=0
970 gload Gazo$ + "Selection.png",1,5,200
980 gload Gazo$ + "Selection.png",1,5,300
990 gload Gazo$ + "Selection.png",1,5,400
1000 gload Gazo$ + "Selection.png",1,5,500
1010 '4
1020 gload Gazo$ + "Selection.png",1,35,300
1030 '5
1040 gload Gazo$ + "Selection.png",1,35,400
1050 '6
1060 gload Gazo$ + "Selection.png",1,35,500
1070 '7
1080 gload Gazo$ + "Selection.png",1,70,300
1090 '8
1100 gload Gazo$ + "Selection.png",1,70,400
1110 '9
1120 gload Gazo$ + "Selection.png",1,70,500
1130 '10
1140 gload Gazo$ + "Selection.png",1,110,300
1150 '11
1160 gload Gazo$ + "Selection.png",1,110,400
1170 '12
1180 gload Gazo$ + "Selection.png",1,110,500
1190 '13:0
1200 gload Gazo$ + "Selection.png",1,150,400
1210 gload Gazo$ + "Selection.png",1,200,400
1220 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1230 gload Gazo$ + "downscreen.png",0,0,800
1240 sp_def 0,(5,300),32,32
1250 sp_def 1,(5,400),32,32
1260 sp_def 2,(5,500),32,32
1270 sp_def 3,(5,600),32,32
1280 '1
1290 sp_def 4,(35,300),32,32
1300 '2
1310 sp_def 5,(35,400),32,32
1320 '3
1330 sp_def 6,(35,500),32,32
1340 '4
1350 sp_def 7,(70,300),32,32
1360 '5
1370 sp_def 8,(70,400),32,32
1380 '6
1390 sp_def 9,(70,500),32,32
1400 '7
1410 sp_def 10,(110,300),32,32
1420 '8
1430 sp_def 11,(110,400),32,32
1440 '9
1450 sp_def 12,(110,400),32,32
1460 sp_def 13,(150,400),32,32
1470 sp_def 14,(200,400),32,32
1480 'Sprite OFF
1490 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1500 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1510 sp_put 0,(5,300),0,0
1520 sp_put 1,(5,400),1,0
1530 sp_put 2,(5,500),2,0
1540 sp_put 3,(5,600),3,0
1550 '1
1560 sp_put 4,(130,300),4,0
1570 '2
1580 sp_put 5,(130,400),5,0
1590 '3
1600 sp_put 6,(130,500),6,0
1610 '4
1620 sp_put 7,(340,300),7,0
1630 '5
1640 sp_put 8,(340,400),8,0
1650 '6
1660 sp_put 9,(340,500),9,0
1670 '7
1680 sp_put 10,(540,300),10,0
1690 '8
1700 sp_put 11,(540,400),11,0
1710 '9
1720 sp_put 12,(540,500),12,0
1730 '
1740 sp_put 13,(340,600),13,0
1750 sp_put 14,(540,600),14,0
1760 Main_Top:
1770 'Main Message 2023.06.07
1780 '再生を止める
1790 play ""
1800 init "kb:4"
1810 'font 32:
1820 font 48
1830 print chr$(13) + chr$(13) + chr$(13)
1840 color rgb(217,255,212)
1850 print "番号を選んでください" + chr$(13)
1860 '0
1870 print " :1.数秘術占い" + chr$(13)
1880 '1
1890 print " :2.設 定" + chr$(13)
1900 '2
1910 print " :3.ヘルプ" + chr$(13)
1920 '3
1930 print " :4.(プログラムを)終了する" + chr$(13)
1940 COLOR rgb(0,0,0):No=0
1950 locate 1,15
1960 print "                                       "
1970 locate 1,15:print "1.数秘術占いを選択"
1980 play Voice$ + "Voice_Main_Message_20230607.mp3"
1990 Main_Screen_Select:
2000 y = 0:key$ = "":bg = 0:bg2=0
2010 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2020 y = stick(1)
2030 '"May (2023)"
2040 key$ = inkey$
2050 bg = strig(1)
2060 bg2 = strig(0)
2070 pause 2
2080 wend
2090 '1.
2100 'ジョイパッドのソース ソート　ここから
2110 'カーソル　下 or 十字キー下
2120 if ((y = 1) or (key$ = chr$(31))) then
2130 select case No
2140 case 0:
2150 '1
2160 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2170 case 1:
2180 '2
2190 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2200 case 2:
2210 '3
2220 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2230 case 3:
2240 '0
2250 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2260 end select
2270 endif
2280 '2.
2290 'カーソル　上　or 十字キー  上
2300 if ((y = -1) or (key$ = chr$(30))) then
2310 select case No
2320 case 0:
2330 '3
2340 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2350 case 1:
2360 '0
2370 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2380 case 2:
2390 '1
2400 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2410 case 3:
2420 '2
2430 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2440 end select
2450 endif
2460 'ジョイパッド　ソース 部分　ここまで
2470 'ジョイパッド右　　or Enter key 決定
2480 if ((bg = 2) OR (key$ = chr$(13))) then
2490 select case No
2500 case 0:
2510 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2520 case 1:
2530 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2540 case 2:
2550 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2560 case 3:
2570 play "":pause 200
2580 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2590 end select
2600 endif
2610 if (bg2 = 2) then
2620 play "":pause 200
2630 play Voice$ + "Voice_Main_Message_20230607.mp3"
2640 goto Main_Screen_Select:
2650 endif
2660 'Version
2670 Version:
2680 cls 3:PLAY ""
2690 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2700 gload Gazo$ + "downscreen.png",0,0,800
2710 init"kb:4":font 32
2720 'talk"バージョン情報です"
2730 'Message :Version
2740 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2750 locate 0,5
2760 color rgb(0,0,0)
2770 print "・Title:数秘術占い";chr$(13)
2780 print "・" + Version$ + chr$(13)
2790 print "・Author:licksjp"+chr$(13)
2800 print "・E-mail:licksjp@gmail.com" + chr$(13)
2810 locate 0,18
2820 print "(C)licksjp All rights " + chr$(13)
2830 locate 13,19
2840 print "reserved since 2009"+chr$(13)
2850 locate 0,23
2860 color rgb(255,255,255)
2870 print "ジョイパッドの右を押してください"
2880 Versionn_Selection:
2890 bg = 0:key$ = "":bg2 = 0
2900 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2910 bg = strig(1)
2920 key$ = inkey$
2930 bg2 = strig(0)
2940 pause 2
2950 wend
2960 if ((bg = 2) or (key$ = chr$(13))) then
2970 pause 200:cls 4:goto Main_Screen:
2980 endif
2990 if (bg2=2) then
3000 play "":pause 200
3010 play Voice$ + "Voice_Version_Message_20230607.mp3"
3020 goto Versionn_Selection:
3030 endif
3040 '1.数秘ナンバーを求める
3050 '誕生日入力(生れた年代)
3060 Input_Seireki:
3070 cls 3:play "":count=0:count2=0
3080 'No=-1:Okのとき
3090 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3100 for i=0 to 3
3110 buf_year(i)=0
3120 next i
3130 gload Gazo$ + "Screen1.png",0,0,0
3140 gload Gazo$ + "downscreen.png",0,0,800
3150 'Init"kb:2"
3160 '音声ファイル再生 2023.06.07
3170 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3180 font 48
3190 locate 0,1
3200 '文字色：黒　 color rgb(0,0,0)
3210 color rgb(255,255,255)
3220 print "生まれた年代を入れて下さい" + chr$(13)
3230 color rgb(255,255,255)
3240 locate 2,3
3250 print "生まれた年代(西暦4桁):";buf_year$
3260 '=============================
3270 'テンキーの色(1~９)　白 ,決定ボタン　青
3280 '=============================
3290 color rgb(255,255,255)
3300 'locate 4,6:print ":7"
3310 'locate 9,6:print ":8"
3320 'locate 12,6:print ":9"
3330 locate 4,6
3340 print ":7  :8  :9" + chr$(13)
3350 color rgb(255,255,255)
3360 locate 4,8
3370 print ":4  :5  :6" + chr$(13)
3380 color rgb(255,255,255)
3390 locate 4,10
3400 print ":1  :2  :3" + chr$(13)
3410 locate 4,12
3420 print "    :0"
3430 locate 12,12
3440 color rgb(0,0,255)
3450 print ":Ok"
3460 sp_on 4,0: sp_on 5,0:sp_on 6,0
3470 sp_on 7,0:sp_on 8,0:sp_on 9,0
3480 sp_on 10,0:sp_on 11,0:sp_on 12,0
3490 sp_on 13,0:sp_on 14,1
3500 Input_Seireki2:
3510 key$="":bg=0:y=0:y2=0:bg2=0:
3520 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3530 key$ = inkey$
3540 bg = strig(1)
3550 y = stick(1)
3560 y2 = stick(0)
3570 bg2=strig(0)
3580 pause 5
3590 wend
3600 '十字キー　ここから
3610 '上の矢印　または、十字キー上
3620 if ((y = -1) or (key$ = chr$(30))) then
3630 select case No
3640 'No=-1:okのとき:初期の状態
3650 '0kボタンから３に移動
3660 '上に行く 処理
3670 case -1:
3680 No=3:sp_on 12,1:sp_on 14,0
3690 pause 200:goto Input_Seireki2:
3700 '選択肢:3
3710 '3ボタンから 6に移動
3720 case 3:
3730 No=6:sp_on 12,0:sp_on 11,1
3740 pause 200:goto Input_Seireki2:
3750 '6ボタンから ９に移動
3760 case 6:
3770 No=9:sp_on 10,1:sp_on 11,0
3780 pause 200:goto Input_Seireki2:
3790 '6ボタンから ９に移動　ここまで
3800 '9で上を押して何もしない
3810 case 9:
3820 '何もしない
3830 No=9
3840 pause 200:goto Input_Seireki2:
3850 '9で上を押しても何もしない　ここまで
3860 '上　 0ボタンから2ボタン
3870 'sp_on 6,1:1
3880 'sp_on 8,1:5
3890 'sp_on 7,1:7
3900 case 0:
3910 No=2:sp_on 13,0:sp_on 9,1:
3920 pause 200:goto Input_Seireki2:
3930 '上  0ボタンから2ボタン　ここまで
3940 '2から５になる 上
3950 case 2:
3960 No=5:sp_on 8,1:sp_on 9,0:
3970 pause 200:goto Input_Seireki2:
3980 case 5:
3990 No=8:sp_on 7,1:sp_on 8,0
4000 pause 200:goto Input_Seireki2:
4010 case 8:
4020 pause 200:goto Input_Seireki2:
4030 case 1:
4040 No=4:sp_on 5,1:sp_on 6,0
4050 pause 200:goto Input_Seireki2:
4060 case 4:
4070 No=7:sp_on 4,1:sp_on 5,0
4080 pause 200:goto Input_Seireki2:
4090 case 7:
4100 pause 200:goto Input_Seireki2:
4110 end select
4120 endif
4130 '左３　ここまで
4140 '下の矢印
4150 '中央 2
4160 if ((y=1) or (key$ = chr$(31))) then
4170 select case No
4180 '9から６に下げる
4190 case 9:
4200 No=6:sp_on 11,1:sp_on 10,0
4210 pause 200:goto Input_Seireki2:
4220 '6から３に下げる
4230 case 6:
4240 No=3:sp_on 12,1:sp_on 11,0
4250 pause 200:goto Input_Seireki2:
4260 '3から０ｋに変える
4270 case 3:
4280 No=-1:sp_on 14,1:sp_on 12,0
4290 pause 200:goto Input_Seireki2:
4300 'Okから下のボタンを押しても何もしない
4310 case -1:
4320 pause 200:goto Input_Seireki2:
4330 case 8:
4340 No=5:sp_on 8,1:sp_on 7,0
4350 pause 200:goto Input_Seireki2:
4360 case 5:
4370 No=2:sp_on 9,1:sp_on 8,0
4380 pause 200:goto Input_Seireki2:
4390 case 2:
4400 No=0:sp_on 13,1:sp_on 9,0
4410 pause 200:goto Input_Seireki2:
4420 case 0:
4430 pause 200:goto Input_Seireki2:
4440 case 7:
4450 No=4:sp_on 5,1:sp_on 4,0
4460 pause 200:goto Input_Seireki2:
4470 case 4:
4480 No=1:sp_on 6,1:sp_on 5,0
4490 pause 200:goto Input_Seireki2:
4500 case 1:
4510 pause 200:goto Input_Seireki2:
4520 end select
4530 endif
4540 '左へボタン 十字キー　左　or 　カーソル左
4550 if ((y2 = -1) or (key$ = chr$(29))) then
4560 select case No
4570 'Ok ボタン  Okから　左　０に行く
4580 case -1:
4590 No=0:sp_on 13,1:sp_on 14,0
4600 pause 200:goto Input_Seireki2:
4610 '0 ボタン  左　何もしない
4620 case 0:
4630 pause 200:goto Input_Seireki2:
4640 case 3:
4650 No=2:sp_on 9,1:sp_on 12,0:
4660 pause 200:goto Input_Seireki2:
4670 case 2:
4680 No=1:sp_on 6,1:sp_on 9,0:
4690 pause 200:goto Input_Seireki2:
4700 case 1:
4710 pause 200:goto Input_Seireki2:
4720 case 6:
4730 No=5:sp_on 8,1:sp_on 11,0
4740 pause 200:goto Input_Seireki2:
4750 case 5:
4760 No=4:sp_on 5,1:sp_on 8,0
4770 pause 200:goto Input_Seireki2:
4780 case 4:
4790 pause 200:goto Input_Seireki2:
4800 case 9:
4810 No=8:sp_on 7,1:sp_on 10,0
4820 pause 200:goto Input_Seireki2:
4830 case 8:
4840 No=7:sp_on 4,1:sp_on 7,0
4850 pause 200:goto Input_Seireki2:
4860 case 7:
4870 pause 200:goto Input_Seireki2:
4880 end select
4890 endif
4900 '右  十字キー　右　or カーソル　右
4910 if ((y2 = 1) or (key$ = chr$(28))) then
4920 select case No
4930 '0ボタンからokボタン右に移動
4940 case 0:
4950 No=-1:sp_on 14,1:sp_on 13,0
4960 pause 200:goto Input_Seireki2:
4970 '0ボタンからokボタン 右に移動　ここまで
4980 'OKボタンで右を押して何もしない
4990 case -1:
5000 pause 200:goto Input_Seireki2:
5010 case 1:
5020 No=2:sp_on 9,1:sp_on 6,0
5030 pause 200:goto Input_Seireki2:
5040 case 2:
5050 No=3:sp_on 12,1:sp_on 9,0
5060 pause 200:goto Input_Seireki2:
5070 case 3:
5080 pause 200:goto Input_Seireki2:
5090 case 4:
5100 No=5:sp_on 8,1:sp_on 5,0
5110 pause 200:goto Input_Seireki2:
5120 case 5:
5130 No=6:sp_on 11,1:sp_on 8,0
5140 pause 200:goto Input_Seireki2:
5150 case 7:
5160 No=8:sp_on 7,1:sp_on 4,0
5170 pause 200:goto Input_Seireki2:
5180 case 8:
5190 No=9:sp_on 10,1:sp_on 7,0
5200 pause 200:goto Input_Seireki2:
5210 case 9:
5220 pause 200:goto Input_Seireki2:
5230 case 6:
5240 pause 200:goto Input_Seireki2:
5250 end select
5260 'Okから右ボタンを押して何もしない ここまで
5270 endif
5280 '十字キー　ここまで
5290 if ((bg=2) or (key$=chr$(13))) then
5300 select case count
5310 case 0:
5320 count=1
5330 if (No=-1) then
5340 count=0
5350 'Okボタンを押したとき
5360 goto Input_Seireki2:
5370 else
5380 'Okボタン以外が押されたとき
5390 if (No>=1 and No<=2) then
5400 buf_year$="":buf_year$=str$(No)
5410 buf_year=No
5420 locate 2,3
5430 color rgb(255,255,255)
5440 print "生まれた年代(西暦4桁):";buf_year$
5450 goto Input_Seireki2:
5460 else
5470 count=0
5480 ui_msg"数字が範囲外になります。"
5490 buf_year$="":buf_year=0
5500 goto Input_Seireki2:
5510 endif
5520 endif
5530 case 1:
5540 count = 2
5550 if (No = -1) then
5560 count = 1
5570 goto Input_Seireki2:
5580 else
5590 b = val(buf_year$)
5600 buf_year = b * 10 + No
5610 buf_year$ = str$(buf_year)
5620 locate 2,3
5630 color rgb(255,255,255)
5640 print "                                                                "
5650 locate 2,3
5660 print "生まれた年代(西暦4桁):";buf_year$
5670 'if (No = -1) then
5680 'count=1
5690 goto Input_Seireki2:
5700 endif
5710 case 2:
5720 count=3
5730 if (No=-1) then
5740 count =2
5750 goto Input_Seireki2:
5760 else
5770 b = val(buf_year$)
5780 buf_year = b*10 + No
5790 buf_year$ = str$(buf_year)
5800 locate 2,3
5810 color rgb(255,255,255)
5820 print "                                        "
5830 locate 2,3
5840 print "生まれた年代(西暦4桁):";buf_year$
5850 goto Input_Seireki2:
5860 endif
5870 case 3:
5880 count=4
5890 if (No = -1) then
5900 count=3
5910 goto Input_Seireki2:
5920 else
5930 b = val(buf_year$)
5940 buf_year=b*10+No
5950 buf_year$=str$(buf_year)
5960 locate 2,3
5970 color RGB(255,255,255)
5980 print "                                      "
5990 locate 2,3
6000 print "生まれた年代(西暦4桁):";buf_year$
6010 buf_year=val(buf_year$)
6020 'year=val(buf_year$)
6030 'if (No=-1) then
6040 'goto Input_Born_Month:
6050 'else
6060 goto Input_Seireki2:
6070 endif
6080 case 4:
6090 'bufyear=buf_year
6100 if (No=-1) then
6110 buf_year = val(buf_year$)
6120 bufyear = buf_year
6130 sp_on 14,0
6140 goto Input_Born_Month:
6150 else
6160 goto Input_Seireki2:
6170 endif
6180 end select
6190 endif
6200 if (bg2 = 2) then
6210 select case count2
6220 case 0:
6230 if (No = -1) then
6240 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
6250 count=0
6260 locate 2,3
6270 color rgb(255,255,255)
6280 print "                                      "
6290 locate 2,3
6300 print "生まれた年代（西暦4桁):";buf_year$
6310 goto Input_Seireki2:
6320 else
6330 '(buf_year=0) then
6340 buf_year=0:buf_year$="****"
6350 goto Input_Seireki2:
6360 'endif
6370 endif
6380 end select
6390 endif
6400 end
6410 'Input"生れた年代(4桁,〜2025年):",year
6420 'if year > 2025 then goto Input_Seireki:
6430 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6440 '"4桁目"
6450 'bufyear4 = fix(year / 1000)
6460 '"3桁目"
6470 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6480 '"2桁目"
6490 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6500 '"1桁目"
6510 'bufyear1 = fix((year - ((bufyear4*
6520 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6530 '生れた月を入力
6540 Input_Born_Month:
6550 cls 3:play "":count=0:count2=0
6560 'No=-1:Okのとき
6570 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6580 for i=0 to 1
6590 buf_month(i)=0
6600 next i
6610 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6620 gload Gazo$ + "Screen1.png",0,0,0
6630 gload Gazo$ + "downscreen.png",0,0,800
6640 'Init"kb:2"
6650 '音声ファイル再生 2023.06.07
6660 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
6670 font 48
6680 locate 0,1
6690 '文字色：黒　 color rgb(0,0,0)
6700 '文字色:白
6710 color rgb(255,255,255)
6720 print "生まれた月を入れて下さい" + chr$(13)
6730 '文字色:白
6740 color rgb(255,255,255)
6750 locate 2,3
6760 '文字色:白
6770 print "生まれた月(1月~12月):";buf_Month$
6780 color rgb(255,255,255)
6790 'locate 4,6:print ":7"
6800 'locate 9,6:print ":8"
6810 'locate 12,6:print ":9"
6820 locate 4,6
6830 '文字色:赤
6840 print ":7  :8  :9" + chr$(13)
6850 color rgb(255,255,255)
6860 locate 4,8
6870 print ":4  :5  :6" + chr$(13)
6880 color rgb(255,255,255)
6890 locate 4,10
6900 print ":1  :2  :3" + chr$(13)
6910 locate 4,12
6920 print "    :0"
6930 locate 12,12
6940 color rgb(0,0,255)
6950 print ":Ok"
6960 sp_on 4,0: sp_on 5,0:sp_on 6,0
6970 sp_on 7,0:sp_on 8,0:sp_on 9,0
6980 sp_on 10,0:sp_on 11,0:sp_on 12,0
6990 sp_on 13,0:sp_on 14,1
7000 Input_Born_Month2:
7010 key$="":bg=0:y=0:y2=0:bg2=0
7020 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7030 key$ = inkey$
7040 bg = strig(1)
7050 y = stick(1)
7060 y2 = stick(0)
7070 bg2 = strig(0)
7080 pause 5
7090 wend
7100 '十字キー　ここから
7110 '上の矢印　または、十字キー上
7120 if ((y = -1) or (key$ = chr$(30))) then
7130 select case No
7140 'No=-1:okのとき:初期の状態
7150 '0kボタンから３に移動
7160 '上に行く 処理
7170 case -1:
7180 No=3:sp_on 12,1:sp_on 14,0
7190 pause 200:goto Input_Born_Month2:
7200 '選択肢:3
7210 '3ボタンから 6に移動
7220 case 3:
7230 No=6:sp_on 12,0:sp_on 11,1
7240 pause 200:goto Input_Born_Month2:
7250 '6ボタンから ９に移動
7260 case 6:
7270 No=9:sp_on 10,1:sp_on 11,0
7280 pause 200:goto Input_Born_Month2:
7290 '6ボタンから ９に移動　ここまで
7300 '9で上を押して何もしない
7310 case 9:
7320 '何もしない
7330 No=9
7340 pause 200:goto Input_Born_Month2:
7350 '9で上を押しても何もしない　ここまで
7360 '上　 0ボタンから2ボタン
7370 'sp_on 6,1:1
7380 'sp_on 8,1:5
7390 'sp_on 7,1:7
7400 case 0:
7410 No=2:sp_on 13,0:sp_on 9,1:
7420 pause 200:goto Input_Born_Month2:
7430 '上  0ボタンから2ボタン　ここまで
7440 '2から５になる 上
7450 case 2:
7460 No=5:sp_on 8,1:sp_on 9,0:
7470 pause 200:goto Input_Born_Month2:
7480 case 5:
7490 No=8:sp_on 7,1:sp_on 8,0
7500 pause 200:goto Input_Born_Month2:
7510 case 8:
7520 pause 200:goto Input_Born_Month2:
7530 case 1:
7540 No=4:sp_on 5,1:sp_on 6,0
7550 pause 200:goto Input_Born_Month2:
7560 case 4:
7570 No=7:sp_on 4,1:sp_on 5,0
7580 pause 200:goto Input_Born_Month2:
7590 case 7:
7600 pause 200:goto Input_Born_Month2:
7610 end select
7620 endif
7630 '左３　ここまで
7640 '下の矢印
7650 '中央 2
7660 if ((y=1) or (key$ = chr$(31))) then
7670 select case No
7680 '9から６に下げる
7690 case 9:
7700 No=6:sp_on 11,1:sp_on 10,0
7710 pause 200:goto Input_Born_Month2:
7720 '6から３に下げる
7730 case 6:
7740 No=3:sp_on 12,1:sp_on 11,0
7750 pause 200:goto Input_Born_Month2:
7760 '3から０ｋに変える
7770 case 3:
7780 No=-1:sp_on 14,1:sp_on 12,0
7790 pause 200:goto Input_Born_Month2:
7800 'Okから下のボタンを押しても何もしない
7810 case -1:
7820 pause 200:goto Input_Born_Month2:
7830 case 8:
7840 No=5:sp_on 8,1:sp_on 7,0
7850 pause 200:goto Input_Born_Month2:
7860 case 5:
7870 No=2:sp_on 9,1:sp_on 8,0
7880 pause 200:goto Input_Born_Month2:
7890 case 2:
7900 No=0:sp_on 13,1:sp_on 9,0
7910 pause 200:goto Input_Born_Month2:
7920 case 0:
7930 pause 200:goto Input_Born_Month2:
7940 case 7:
7950 No=4:sp_on 5,1:sp_on 4,0
7960 pause 200:goto Input_Born_Month2:
7970 case 4:
7980 No=1:sp_on 6,1:sp_on 5,0
7990 pause 200:goto Input_Born_Month2:
8000 case 1:
8010 pause 200:goto Input_Born_Month2:
8020 end select
8030 endif
8040 '左へボタン 十字キー　左　or 　カーソル左
8050 if ((y2 = -1) or (key$ = chr$(29))) then
8060 select case No
8070 'Ok ボタン  Okから　左　０に行く
8080 case -1:
8090 No=0:sp_on 13,1:sp_on 14,0
8100 pause 200:goto Input_Born_Month2:
8110 '0 ボタン  左　何もしない
8120 case 0:
8130 pause 200:goto Input_Born_Month2:
8140 case 3:
8150 No=2:sp_on 9,1:sp_on 12,0:
8160 pause 200:goto Input_Born_Month2:
8170 case 2:
8180 No=1:sp_on 6,1:sp_on 9,0:
8190 pause 200:goto Input_Born_Month2:
8200 case 1:
8210 pause 200:goto Input_Born_Month2:
8220 case 6:
8230 No=5:sp_on 8,1:sp_on 11,0
8240 pause 200:goto Input_Born_Month2:
8250 case 5:
8260 No=4:sp_on 5,1:sp_on 8,0
8270 pause 200:goto Input_Born_Month2:
8280 case 4:
8290 pause 200:goto Input_Born_Month2:
8300 case 9:
8310 No=8:sp_on 7,1:sp_on 10,0
8320 pause 200:goto Input_Born_Month2:
8330 case 8:
8340 No=7:sp_on 4,1:sp_on 7,0
8350 pause 200:goto Input_Born_Month2:
8360 case 7:
8370 pause 200:goto Input_Born_Month2:
8380 end select
8390 endif
8400 '右  十字キー　右　or カーソル　右
8410 if ((y2 = 1) or (key$ = chr$(28))) then
8420 select case No
8430 '0ボタンからokボタン右に移動
8440 case 0:
8450 No=-1:sp_on 14,1:sp_on 13,0
8460 pause 200:goto Input_Born_Month2:
8470 '0ボタンからokボタン 右に移動　ここまで
8480 'OKボタンで右を押して何もしない
8490 case -1:
8500 pause 200:goto Input_Born_Month2:
8510 case 1:
8520 No=2:sp_on 9,1:sp_on 6,0
8530 pause 200:goto Input_Born_Month2:
8540 case 2:
8550 No=3:sp_on 12,1:sp_on 9,0
8560 pause 200:goto Input_Born_Month2:
8570 case 3:
8580 pause 200:goto Input_Born_Month2:
8590 case 4:
8600 No=5:sp_on 8,1:sp_on 5,0
8610 pause 200:goto Input_Born_Month2:
8620 case 5:
8630 No=6:sp_on 11,1:sp_on 8,0
8640 pause 200:goto Input_Born_Month2:
8650 case 7:
8660 No=8:sp_on 7,1:sp_on 4,0
8670 pause 200:goto Input_Born_Month2:
8680 case 8:
8690 No=9:sp_on 10,1:sp_on 7,0
8700 pause 200:goto Input_Born_Month2:
8710 case 9:
8720 pause 200:goto Input_Born_Month2:
8730 case 6:
8740 pause 200:goto Input_Born_Month2:
8750 end select
8760 'Okから右ボタンを押して何もしない ここまで
8770 endif
8780 '十字キー　ここまで
8790 '右の丸ボタン　決定キー
8800 if ((bg=2) or (key$=chr$(13))) then
8810 select case count
8820 case 0:
8830 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
8840 locate 2,3
8850 color RGB(255,255,255)
8860 print "生まれた月(1月~12月):";buf_Month$
8870 goto Input_Born_Month2:
8880 case 1:
8890 count = 2:c = No
8900 c = val(buf_Month$)
8910 if (No = -1) then
8920 'count=0
8930 month=buf_month
8940 buf_month=val(buf_Month$)
8950 month=buf_month
8960 '生まれた日に飛ぶ
8970 goto Input_Born_Day:
8980 else
8990 buf_month = c*10 + No
9000 buf_Month$= str$(buf_month)
9010 locate 2,3
9020 color Rgb(255,255,255)
9030 print "生まれた月(1月~12月):";buf_Month$
9040 goto Input_Born_Month2:
9050 endif
9060 case 2:
9070 count=3
9080 'c= val(buf_Month$)
9090 'buf_month = c*10 + No
9100 'buf_Month$ = str$(buf_month)
9110 'locate 2,3
9120 'print "生まれた月(1月～12月):";buf_Month$
9130 'goto Input_Born_Month2:
9140 'case 3:
9150 'count=4
9160 'b=val(buf_month$)
9170 'buf_month=c*10+No
9180 'buf_Month$=str$(buf_month)
9190 'locate 2,3
9200 'print "生まれた月(1月～12月):";buf_Month$
9210 'buf_month=val(buf_Month$)
9220 'year=val(buf_year$)
9230 if (No=-1) then
9240 goto Input_Born_Day:
9250 else
9260 'goto Input_Born_Month2:
9270 endif
9280 'case 4:
9290 'bufyear=buf_year
9300 'if (No=-1) then
9310 'buf_month = val(buf_Month$)
9320 'month = buf_month
9330 'sp_on 14,0
9340 'goto Input_Born_Day:
9350 'else
9360 'goto Input_Born_Month2:
9370 'endif
9380 end select
9390 endif
9400 '左の丸ボタン　キャンセル
9410 if (bg2=2) then
9420 select case count2
9430 case 0:
9440 if (No = -1) then
9450 buf_month=0:buf_Month$="**"
9460 count=0
9470 goto rewrite:
9480 else
9490 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9500 buf_month=0:buf_Month$="**"
9510 locate 2,3
9520 color rgb(255,255,255)
9530 print "                                       "
9540 goto rewrite:
9550 if (No>12) then
9560 ui_msg"値が範囲外です。"
9570 goto rewrite:
9580 endif
9590 endif
9600 endif
9610 rewrite:
9620 locate 2,3
9630 color rgb(255,255,255)
9640 print "                                      "
9650 locate 2,3
9660 print "生まれた月(1月~12月):";buf_Month$
9670 goto Input_Born_Month2:
9680 end select
9690 'endif
9700 endif
9710 end
9720 'end
9730 '生れた日を入力
9740 Input_Born_Day:
9750 '生まれた日入力
9760 cls 3:play ""
9770 'No=-1:Okのとき
9780 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
9790 for i=0 to 1
9800 buf_day(i)=0
9810 next i
9820 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
9830 gload Gazo$ + "Screen1.png",0,0,0
9840 gload Gazo$ + "downscreen.png",0,0,800
9850 'Init"kb:2"
9860 '音声ファイル再生 2023.06.07
9870 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
9880 font 48
9890 locate 0,1
9900 '文字色：黒　 color rgb(0,0,0)
9910 color rgb(255,255,255)
9920 print "生まれた日を入れて下さい" + chr$(13)
9930 color rgb(255,255,255)
9940 locate 2,3
9950 print "生まれた日(1日~31日):";buf_Day$
9960 color rgb(255,255,255)
9970 'locate 4,6:print ":7"
9980 'locate 9,6:print ":8"
9990 'locate 12,6:print ":9"
10000 locate 4,6
10010 print ":7  :8  :9" + chr$(13)
10020 '=======================
10030 'テンキー　色　白　決定ボタン　青
10040 '=======================
10050 color rgb(255,255,255)
10060 locate 4,8
10070 print ":4  :5  :6" + chr$(13)
10080 color rgb(255,255,255)
10090 locate 4,10
10100 print ":1  :2  :3" + chr$(13)
10110 locate 4,12
10120 print "    :0"
10130 locate 12,12
10140 color rgb(0,0,255)
10150 print ":Ok"
10160 sp_on 4,0: sp_on 5,0:sp_on 6,0
10170 sp_on 7,0:sp_on 8,0:sp_on 9,0
10180 sp_on 10,0:sp_on 11,0:sp_on 12,0
10190 sp_on 13,0:sp_on 14,1
10200 Input_Born_Day2:
10210 key$="":bg=0:y=0:y2=0:bg2=0
10220 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10230 key$ = inkey$
10240 bg = strig(1)
10250 y = stick(1)
10260 y2 = stick(0)
10270 bg2 = strig(0)
10280 pause 5
10290 wend
10300 '十字キー　ここから
10310 '上の矢印　または、十字キー上
10320 if ((y = -1) or (key$ = chr$(30))) then
10330 select case No
10340 'No=-1:okのとき:初期の状態
10350 '0kボタンから３に移動
10360 '上に行く 処理
10370 case -1:
10380 No=3:sp_on 12,1:sp_on 14,0
10390 pause 200:goto Input_Born_Day2:
10400 '選択肢:3
10410 '3ボタンから 6に移動
10420 case 3:
10430 No=6:sp_on 12,0:sp_on 11,1
10440 pause 200:goto Input_Born_Day2:
10450 '6ボタンから ９に移動
10460 case 6:
10470 No=9:sp_on 10,1:sp_on 11,0
10480 pause 200:goto Input_Born_Day2:
10490 '6ボタンから ９に移動　ここまで
10500 '9で上を押して何もしない
10510 case 9:
10520 '何もしない
10530 No=9
10540 pause 200:goto Input_Born_Day2:
10550 '9で上を押しても何もしない　ここまで
10560 '上　 0ボタンから2ボタン
10570 'sp_on 6,1:1
10580 'sp_on 8,1:5
10590 'sp_on 7,1:7
10600 case 0:
10610 No=2:sp_on 13,0:sp_on 9,1:
10620 pause 200:goto Input_Born_Day2:
10630 '上  0ボタンから2ボタン　ここまで
10640 '2から５になる 上
10650 case 2:
10660 No=5:sp_on 8,1:sp_on 9,0:
10670 pause 200:goto Input_Born_Day2:
10680 case 5:
10690 No=8:sp_on 7,1:sp_on 8,0
10700 pause 200:goto Input_Born_Day2:
10710 case 8:
10720 pause 200:goto Input_Born_Day2:
10730 case 1:
10740 No=4:sp_on 5,1:sp_on 6,0
10750 pause 200:goto Input_Born_Day2:
10760 case 4:
10770 No=7:sp_on 4,1:sp_on 5,0
10780 pause 200:goto Input_Born_Day2:
10790 case 7:
10800 pause 200:goto Input_Born_Day2:
10810 end select
10820 endif
10830 '左３　ここまで
10840 '下の矢印
10850 '中央 2
10860 if ((y=1) or (key$ = chr$(31))) then
10870 select case No
10880 '9から６に下げる
10890 case 9:
10900 No=6:sp_on 11,1:sp_on 10,0
10910 pause 200:goto Input_Born_Day2:
10920 '6から３に下げる
10930 case 6:
10940 No=3:sp_on 12,1:sp_on 11,0
10950 pause 200:goto Input_Born_Day2:
10960 '3から０ｋに変える
10970 case 3:
10980 No=-1:sp_on 14,1:sp_on 12,0
10990 pause 200:goto Input_Born_Day2:
11000 'Okから下のボタンを押しても何もしない
11010 case -1:
11020 pause 200:goto Input_Born_Day2:
11030 case 8:
11040 No=5:sp_on 8,1:sp_on 7,0
11050 pause 200:goto Input_Born_Day2:
11060 case 5:
11070 No=2:sp_on 9,1:sp_on 8,0
11080 pause 200:goto Input_Born_Day2:
11090 case 2:
11100 No=0:sp_on 13,1:sp_on 9,0
11110 pause 200:goto Input_Born_Day2:
11120 case 0:
11130 pause 200:goto Input_Born_Day2:
11140 case 7:
11150 No=4:sp_on 5,1:sp_on 4,0
11160 pause 200:goto Input_Born_Day2:
11170 case 4:
11180 No=1:sp_on 6,1:sp_on 5,0
11190 pause 200:goto Input_Born_Day2:
11200 case 1:
11210 pause 200:goto Input_Born_Day2:
11220 end select
11230 endif
11240 '左へボタン 十字キー　左　or 　カーソル左
11250 if ((y2 = -1) or (key$ = chr$(29))) then
11260 select case No
11270 'Ok ボタン  Okから　左　０に行く
11280 case -1:
11290 No=0:sp_on 13,1:sp_on 14,0
11300 pause 200:goto Input_Born_Day2:
11310 '0 ボタン  左　何もしない
11320 case 0:
11330 pause 200:goto Input_Born_Day2:
11340 case 3:
11350 No=2:sp_on 9,1:sp_on 12,0:
11360 pause 200:goto Input_Born_Day2:
11370 case 2:
11380 No=1:sp_on 6,1:sp_on 9,0:
11390 pause 200:goto Input_Born_Day2:
11400 case 1:
11410 pause 200:goto Input_Born_Day2:
11420 case 6:
11430 No=5:sp_on 8,1:sp_on 11,0
11440 pause 200:goto Input_Born_Day2:
11450 case 5:
11460 No=4:sp_on 5,1:sp_on 8,0
11470 pause 200:goto Input_Born_Day2:
11480 case 4:
11490 pause 200:goto Input_Born_Day2:
11500 case 9:
11510 No=8:sp_on 7,1:sp_on 10,0
11520 pause 200:goto Input_Born_Day2:
11530 case 8:
11540 No=7:sp_on 4,1:sp_on 7,0
11550 pause 200:goto Input_Born_Day2:
11560 case 7:
11570 pause 200:goto Input_Born_Day2:
11580 end select
11590 endif
11600 '右  十字キー　右　or カーソル　右
11610 if ((y2 = 1) or (key$ = chr$(28))) then
11620 select case No
11630 '0ボタンからokボタン右に移動
11640 case 0:
11650 No=-1:sp_on 14,1:sp_on 13,0
11660 pause 200:goto Input_Born_Day2:
11670 '0ボタンからokボタン 右に移動　ここまで
11680 'OKボタンで右を押して何もしない
11690 case -1:
11700 pause 200:goto Input_Born_Day2:
11710 case 1:
11720 No=2:sp_on 9,1:sp_on 6,0
11730 pause 200:goto Input_Born_Day2:
11740 case 2:
11750 No=3:sp_on 12,1:sp_on 9,0
11760 pause 200:goto Input_Born_Day2:
11770 case 3:
11780 pause 200:goto Input_Born_Day2:
11790 case 4:
11800 No=5:sp_on 8,1:sp_on 5,0
11810 pause 200:goto Input_Born_Day2:
11820 case 5:
11830 No=6:sp_on 11,1:sp_on 8,0
11840 pause 200:goto Input_Born_Day2:
11850 case 7:
11860 No=8:sp_on 7,1:sp_on 4,0
11870 pause 200:goto Input_Born_Day2:
11880 case 8:
11890 No=9:sp_on 10,1:sp_on 7,0
11900 pause 200:goto Input_Born_Day2:
11910 case 9:
11920 pause 200:goto Input_Born_Day2:
11930 case 6:
11940 pause 200:goto Input_Born_Day2:
11950 end select
11960 'Okから右ボタンを押して何もしない ここまで
11970 endif
11980 '十字キー　ここまで
11990 '右の丸ボタンを押したとき
12000 if ((bg = 2) or (key$ = chr$(13))) then
12010 'count :決定ボタンを押した回数
12020 select case (count mod 3)
12030 '1桁目入力
12040 case 0:
12050 count = 1:
12060 if (No = -1) then
12070 '1桁目　OKでは何もしない
12080 'goto check:
12090 else
12100 'ok以外のボタンを押したとき
12110 buf_day = No:buf_Day$=str$(No)
12120 c=No
12130 locate 2,3
12140 color RGB(255,255,255)
12150 print "生まれた日(1日~31日):";buf_Day$
12160 endif
12170 check:
12180 if (No >= 1 and No <= 9) then
12190 sp_on 14,0
12200 goto Input_Born_Day2:
12210 else
12220 sp_on 14,0
12230 goto complate:
12240 endif
12250 case 1:
12260 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12270 count = 2:
12280 'locate 2,3
12290 'color RGB(255,255,255)
12300 'print "生まれた日(1日~31日):";buf_Day$
12310 'Okボタンを押したときの処理
12320 '入力値　10未満のとき
12330 'c = buf_day
12340 if (No = -1) then
12350 'c=buf_day
12360 ' buf_day = c
12370 'buf_Day$ = str$(buf_day)
12380 '10以下のとき
12390 if (buf_day < 10) then
12400 sp_on 14,0
12410 goto complate:
12420 endif
12430 else
12440 c = No
12450 'buf_day = c * 10 + No
12460 buf_day = c
12470 buf_Day$ =str$(buf_day)
12480 locate 2,3
12490 color Rgb(255,255,255)
12500 print "生まれた日(1日~31日):";buf_Day$
12510 goto Input_Born_Day2:
12520 endif
12530 '生まれた日　2桁目の数字　or 1桁の数字 + ok
12540 case 2:
12550 count=0
12560 'c=val(buf_Day$)
12570 'buf_day=c*10+No
12580 'buf_Day$=str$(buf_day)
12590 'day=buf_day
12600 'locate 2,3
12610 'print "生まれた日(1日〜31日):";buf_Day$
12620 'No=-1:ok ボタンを押したとき
12630 if (No = -1) then
12640 if ((buf_day > 0) and (buf_day < 32)) then
12650 sp_on 14,0
12660 goto complate:
12670 else
12680 goto Input_Born_Day2:
12690 endif
12700 'Okボタン以外を押したとき
12710 else
12720 c=val(buf_Day$)
12730 buf_day = c * 10 + No
12740 buf_Day$ = str$(buf_day)
12750 locate 2,3
12760 print "生まれた日(1日~31日):";buf_Day$
12770 'goto Input_Born_Day2:
12780 endif
12790 case 3:
12800 count = 4
12810 c=val(buf_day$)
12820 buf_day = c * 10 + No
12830 buf_day$ = str$(buf_day)
12840 locate 2,3
12850 print "生まれた日を入れてください:";buf_Day$
12860 year = val(buf_year$)
12870 if (No = -1) then
12880 'goto Input_Born_Day:
12890 sp_on 14,0:No=0
12900 goto complate:
12910 else
12920 goto Input_Born_Month2:
12930 endif
12940 'case 4:
12950 'bufyear=buf_year
12960 'if (No=-1) then
12970 'buf_day = val(buf_day$)
12980 'bufday = buf_day
12990 'sp_on 14,0
13000 'goto complate:
13010 'else
13020 'goto Input_Born_Day2:
13030 'endif
13040 end select
13050 endif
13060 if (bg2=2) then
13070 select case count2
13080 case 0:
13090 if (No=-1) then
13100 'buf_day=0:buf_Day$="**"
13110 if (buf_day>=1 and buf_day<=31) then
13120 count=0
13130 buf_day=0:buf_Day$="**"
13140 'goto rewrite_day:
13150 else
13160 buf_day=0:buf_Day$="**"
13170 ui_msg"値が範囲外です"
13180 endif
13190 goto rewrite_day:
13200 else
13210 goto rewrite_day:
13220 endif
13230 rewrite_day:
13240 locate 2,3
13250 color rgb(255,255,255)
13260 print "                                      "
13270 locate 2,3
13280 print "生まれた日(1日~31日):";buf_Day$
13290 goto Input_Born_Day2:
13300 end select
13310 endif
13320 '--------------------------Input_Born_Day:-------------------------------------------
13330 complate:
13340 suhiNo = buf_year + buf_month + buf_day
13350 'if (suhiNo < 1000) then
13360 a1 = fix(suhiNo / 1000)
13370 a2 = fix(suhiNo/100) - (a1 * 10)
13380 a3 = fix(suhiNo/10)-(a1*100+a2*10)
13390 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
13400 'endif
13410 bufsuhiNo = a1+a2+a3+a4
13420 recomp:
13430 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
13440 'bufsuhiNo=a6
13450 goto Kabara_Result_Screen:
13460 else
13470 a5 = fix(bufsuhiNo / 10)
13480 a6 = bufsuhiNo - a5 * 10
13490 bufsuhiNo = a6 + a5
13500 if (bufsuhiNo = 10) then
13510 bufsuhiNo=1
13520 endif
13530 goto Kabara_Result_Screen:
13540 endif
13550 Kabara_Result_Screen:
13560 cls 3:
13570 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
13580 gload Gazo$ + "downscreen.png",0,0,800
13590 init "kb:4"
13600 '
13610 play ""
13620 select case (bufsuhiNo)
13630 case 1:
13640 play Voice$ + "Result_Kabara_1_20230607.mp3"
13650 case 2:
13660 play Voice$ + "Result_Kabara_2_20230607.mp3"
13670 case 3:
13680 play Voice$ + "Result_Kabara_3_20230607.mp3"
13690 case 4:
13700 play Voice$ + "Result_Kabara_4_20230607.mp3"
13710 case 5:
13720 play Voice$ + "Result_Kabara_5_20230607.mp3"
13730 case 6:
13740 play Voice$ + "Result_Kabara_6_20230607.mp3"
13750 case 7:
13760 play Voice$ + "Result_Kabara_7_20230607.mp3"
13770 case 8:
13780 play Voice$ + "Result_Kabara_8_20230607.mp3"
13790 case 9:
13800 play Voice$ + "Result_Kabara_9_20230607.mp3"
13810 case 11:
13820 play Voice$ + "Result_Kabara_11_20230607.mp3"
13830 case 22:
13840 play Voice$ + "Result_Kabara_22_20230607.mp3"
13850 case 33:
13860 play Voice$ + "Result_Kabara_33_20230607.mp3"
13870 end select
13880 font 48
13890 key$ = "":bg = 0:
13900 'COLOR rgb(255,255,255)
13910 'print "●診断結果"+chr$(13)
13920 locate 0,2
13930 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
13940 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
13950 locate 1,15:
13960 color rgb(255,255,255)
13970 print "ジョイパッドの右:トップメニュー" + chr$(13)
13980 while ((key$ <> chr$(13)) and (bg <> 2))
13990 key$ = inkey$
14000 bg = strig(1)
14010 pause 5
14020 wend
14030 'Enter or JoyPad right
14040 if ((key$ = chr$(13)) or (bg = 2)) then
14050 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14060 endif
14070 'else
14080 'suhiNo1 = fix(bufsuhiNo / 10)
14090 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14100 'bufsuhiNo = suhiNo1 + suhiNo2
14110 'goto recomp:
14120 'endif
14130 'print chr$(13)
14140 'color rgb(255,0,0)
14150 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14160 'key$ = input$(1)
14170 'if key$ = chr$(13) then goto Main_Screen:
14180 '"Menu2 占いのルール"
14190 Suhi_Rule:
14200 '数秘術占いルールの表示
14210 cls 3:play "":init"kb:4"
14220 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14230 gload Gazo$ + "downscreen.png",0,0,800
14240 'cls 3:
14250 'line (0,0) - (1500,60),rgb(0,0,255),bf
14260 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14270 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14280 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14290 locate 0,2:Font 48
14300 print chr$(13) + chr$(13)
14310 color rgb(0,0,0)
14320 print "誕生日を単数変換します";chr$(13)
14330 print "数字の範囲:1~９,11,22,33";chr$(13)
14340 print "例:1973年11月22日の場合";chr$(13)
14350 print "1+9+7+3+11+22=53 ";chr$(13)
14360 print "→ 5 + 3 = 8" + chr$(13)
14370 print "故に8が数秘ナンバーになります";chr$(13)
14380 locate 0,15
14390 color rgb(255,255,255)
14400 print "ジョイパッドの右を押してください"
14410 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14420 '"key$ = input$(1)"
14430 '"if key$ = chr$(13) then goto Main_Screen:"
14440 suhi_rule_selection:
14450 bg = 0:key$ = "":bg2=0
14460 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
14470 bg = strig(1)
14480 key$ = inkey$
14490 bg2=strig(0)
14500 pause 2
14510 wend
14520 if ((bg = 2) or (key$ = chr$(13))) then
14530 pause 200:cls 4:goto Main_Screen:
14540 endif
14550 if (bg2=2) then
14560 play "":pause 200
14570 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14580 goto suhi_rule_selection:
14590 endif
14600 '2.設定
14610 '2-1.トップ画面に戻る
14620 Setting:
14630 cls 3:init"kb:4":font 48:No=0
14640 play ""
14650 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14660 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
14670 gload Gazo$ + "downscreen.png",0,0,800
14680 print chr$(13) + chr$(13) + chr$(13)
14690 color rgb(255,255,255):sp_on 0,1:
14700 print "番号を選んでください" + chr$(13)
14710 print " :1.トップ画面に戻る"+ chr$(13)
14720 print " :2.未実装" + chr$(13)
14730 print " :3.未実装" + chr$(13)
14740 print " :4.未実装" + chr$(13)
14750 color rgb(0,0,0)
14760 locate 1,15:print "1.トップ画面に戻るを選択"
14770 Setting_Selection:
14780 y=0:key$="":bg=0:bg2=0
14790 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
14800 'y=stick(1)
14810 key$ = inkey$
14820 bg=strig(1)
14830 bg2 = strig(0)
14840 pause 2
14850 wend
14860 if ((bg = 2) or (key$ = chr$(13))) then
14870 select case No
14880 case 0:
14890 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
14900 end select
14910 endif
14920 if (bg2 = 2) then
14930 play "":pause 200
14940 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14950 goto Setting_Selection:
14960 endif
14970 '3.Help
14980 '3-1.ルールの表示
14990 '3-2.バージョン
15000 '3-3.トップに戻る
15010 Help:
15020 cls 3:Font 48:No=0
15030 play ""
15040 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15050 gload Gazo$ + "downscreen.png",0,0,800
15060 color rgb(255,255,255)
15070 print chr$(13)+chr$(13)+chr$(13)
15080 print "番号を選んでください"+chr$(13)
15090 print " :1.ルールの表示" + chr$(13)
15100 print " :2.バージョンの表示" + chr$(13)
15110 print " :3.参考文献" + chr$(13)
15120 print " :4.トップ画面に戻る" + chr$(13)
15130 color rgb(0,0,0)
15140 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15150 locate 1,15
15160 print "                                      "
15170 locate 1,15
15180 print "1.ルールの表示を選択"
15190 init"kb:4"
15200 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15210 Help_Select:
15220 bg=0:key$="":y=0:bg2=0
15230 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15240 y = stick(1)
15250 key$ = inkey$
15260 bg = strig(1)
15270 bg2 = strig(0)
15280 pause 5
15290 wend
15300 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15310 if ((y = 1) or (key$ = chr$(31))) then
15320 select case No
15330 case 0:
15340 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
15350 case 1:
15360 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
15370 case 2:
15380 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
15390 case 3:
15400 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15410 end select
15420 endif
15430 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
15440 if ((y = -1) or (key$ = chr$(30))) then
15450 select case No
15460 case 0:
15470 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
15480 case 1:
15490 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15500 case 2:
15510 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
15520 case 3:
15530 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
15540 end select
15550 endif
15560 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
15570 if ((bg = 2) or (key$ = chr$(13))) then
15580 select case No
15590 case 0:
15600 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
15610 case 1:
15620 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
15630 case 2:
15640 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
15650 '3:Top画面に行く
15660 case 3:
15670 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
15680 end select
15690 endif
15700 if (bg2 = 2) then
15710 play "":pause 200
15720 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15730 goto Help_Select:
15740 endif
15750 '数秘術占い　トップ画面
15760 Kabara_TopScreen:
15770 cls 3:play ""
15780 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
15790 gload Gazo$ + "downscreen.png",0,0,800
15800 play Voice$ + "KabaraTop_Selection_20230721.mp3"
15810 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
15820 init"kb:4":No=0
15830 color rgb(255,255,255)
15840 print chr$(13)+chr$(13)+chr$(13)
15850 print "番号を選んでください" + chr$(13)
15860 print " :1.数秘術占い" + chr$(13)
15870 print " :2.バーズアイグリット" + chr$(13)
15880 print " :3.相性占い" + chr$(13)
15890 print " :4.トップ画面に戻る" + chr$(13)
15900 color rgb(0,0,0)
15910 locate 1,15:print "1.数秘術占いを選択"
15920 Kabara_TopScreen2:
15930 y = 0:bg = 0:key$ = "":bg2 = 0
15940 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
15950 key$ = inkey$
15960 bg = strig(1)
15970 y = stick(1)
15980 bg2 = strig(0)
15990 pause 5
16000 wend
16010 '選択ボタン
16020 'カーソル　と　ジョイパッド　の下
16030 if ((y = 1) or (key$ = chr$(31))) then
16040 select case No
16050 case 2:
16060 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16070 case 3:
16080 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16090 case 0:
16100 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16110 case 1:
16120 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16130 end select
16140 endif
16150 'カーソル　上
16160 if ((y=-1) or (key$=chr$(30))) then
16170 select case No
16180 case 0:
16190 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16200 case 1:
16210 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16220 case 2:
16230 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16240 case 3:
16250 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16260 end select
16270 endif
16280 '決定ボタン
16290 'ジョイパッドの右　or  Enter key
16300 if ((bg = 2) or (key$ = chr$(13))) then
16310 select case No
16320 case 0:
16330 '1.数秘術占い
16340 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
16350 case 3:
16360 '4.メイン画面にいく
16370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
16380 case 1:
16390 '2.バースアイグリッド
16400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
16410 case 2:
16420 '3.相性占い
16430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
16440 end select
16450 endif
16460 if (bg2 = 2) then
16470 play "":pause 200
16480 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
16490 goto Kabara_TopScreen2:
16500 endif
16510 '1.バースアイグリット　名入力
16520 Inputname1:
16530 cls 3:init"kb:2":font 48
16540 gload Gazo$ + "Input_Birtheye2.png",0,0,0
16550 color rgb(255,255,255)
16560 locate 1,2:print "名前をアルファベットで入れてください"
16570 color rgb(0,0,0)
16580 locate 1,5:Input "名前（姓の部分）:",name1$
16590 'locate 1,5:print "Hit any key"
16600 n1 = len(name1$)
16610 if (n1 < 11) then
16620 for i=1 to n1
16630 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
16640 next i
16650 endif
16660 'if b$=chr$(13) then goto Inputname2:
16670 '2.グリッドアイ　姓の入力
16680 Inputname2:
16690 cls 3:init"kb:2":font 48
16700 gload Gazo$ + "Input_Birtheye1.png",0,0,0
16710 color rgb(255,255,255)
16720 locate 1,2:print "名前をアルファベットで入れてください"
16730 color rgb(0,0,0)
16740 locate 1,5:Input "名前(名の部分):",name2$
16750 n2=len(name2$)
16760 for i=1 to n2
16770 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
16780 next i
16790 '計算領域
16800 Complate:
16810 'name1
16820 for i=0 to 25
16830 for n=1 to len(name1$)
16840 if (buf_chart$(i,0) = buf_name1$(n-1)) then
16850 b = val(buf_chart$(i,1))
16860 buffer(b-1) = buffer(b-1) + 1
16870 endif
16880 next n
16890 next i
16900 'name2
16910 for i=0 to 25
16920 for n=1 to len(name2$)
16930 if (buf_chart$(i,0) = buf_name2$(n-1)) then
16940 c = val(buf_chart$(i,1))
16950 buffer(c - 1) = buffer(c - 1) + 1
16960 endif
16970 next n
16980 next i
16990 '結果表示領域
17000 Result_Birtheye1:
17010 cls 3:init"kb:4":No=0
17020 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
17030 gload Gazo$ + "downscreen.png",0,0,800
17040 color rgb(255,255,255)
17050 '1の表示
17060 locate 3,14:print buffer(0);
17070 '2の表示
17080 locate 3,9:print buffer(1);
17090 '3の表示
17100 locate 3,5:print buffer(2);
17110 '4の表示
17120 locate 10,14:print buffer(3);
17130 '5の表示
17140 locate 10,9:print buffer(4);
17150 '6の表示
17160 locate 10,5:print buffer(5);
17170 '7の表示
17180 locate 15,14:print buffer(6);
17190 '8の表示
17200 locate 15,9:print buffer(7);
17210 '9の表示
17220 locate 15,5:print buffer(8);
17230 'name を大文字に変換
17240 locate 5,3:print ucase$(name1$ + name2$)
17250 color rgb(0,0,0)
17260 locate 2,15:print "右の丸ボタン:トップ画面"
17270 bg=0:key$="":
17280 while ((bg <> 2) and (key$ <> chr$(13)))
17290 'Enterと決定ボタン
17300 key$ = inkey$
17310 bg = strig(1)
17320 pause 200
17330 wend
17340 if ((bg=2) or (key$=chr$(13))) then
17350 'データーをクリアしてトップ画面に行く
17360 for i=0 to 8
17370 buffer(i)=0
17380 next i
17390 for n=0 to 9
17400 buf_name1$(n) = ""
17410 buf_name2$(n) = ""
17420 next n
17430 'Topに行く
17440 goto Main_Screen:
17450 endif
17460 'goto Result_Birtheye1:
17470 'Result_Birtheye2:
17480 'cls 3:color rgb(255,255,255)
17490 'end
17500 'Memory 消去
17510 '
17520 References1:
17530 cls 3:key$="":bg=0:play "":font 48-16
17540 gload Gazo$ + "Reference1_20230703.png",0,0,0
17550 print chr$(13)+chr$(13)+chr$(13)
17560 color rgb(0,0,0)
17570 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
17580 print "Author:carol Adrinne,PhD"+chr$(13)
17590 print "出版社:幻冬舎" + chr$(13)
17600 print "HP:www.carolAdrienne.jp/"+chr$(13)
17610 print "ISBN:978-4-344-01394-0"+chr$(13)
17620 print "定価:1500円 + 税"+chr$(13)
17630 color rgb(255,255,255)
17640 locate 1,23
17650 print "ジョイパッド右：次へ"
17660 while (key$ <> chr$(13) and bg <> 2)
17670 bg = strig(1)
17680 key$ = inkey$
17690 wend
17700 '
17710 if ((bg = 2) or (key$ = chr$(13))) then
17720 pause 200:goto References2:
17730 endif
17740 'ユダヤの秘儀 カバラ大占術
17750 References2:
17760 cls 3:play "":bg = 0:key$ = ""
17770 gload Gazo$ + "Reference2_20230703.png",0,0,0
17780 '参考文献２
17790 'カバラ大占術
17800 print chr$(13) + chr$(13) + chr$(13)
17810 color  rgb(0,0,0):font 48-16
17820 locate 1,3
17830 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
17840 print "著者：浅野　八郎" + chr$(13)
17850 print "出版社:NON BOOK" + chr$(13)
17860 print "ISBN:4-396-10364-6" + chr$(13)
17870 print "定価:829円 + 税"
17880 color rgb(255,255,255)
17890 locate 1,23
17900 print "ジョイパッド右：トップへ行く"
17910 while ((key$ <> chr$(13)) and (bg <> 2))
17920 bg = strig(1)
17930 key$ = inkey$
17940 wend
17950 if ((bg = 2) or (key$ = chr$(13))) then
17960 pause 200:goto Main_Screen:
17970 endif
17980 end
17990 '1.数秘術　トップ画面
18000 Kabara_First_Top:
18010 cls 3:color rgb(255,255,255):play ""
18020 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
18030 gload Gazo$ + "downscreen.png",0,0,800
18040 No=0:init"kb:4"
18050 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
18060 print chr$(13);chr$(13)
18070 color rgb(255,255,255)
18080 locate 3,4:No=0
18090 print "番号選んでください" + chr$(13)
18100 print " :1.数秘術占い" + chr$(13)
18110 print " :2.トップ画面に戻る" + chr$(13)
18120 color rgb(0,0,0)
18130 sp_on 0,1
18140 locate 1,15:print "1.数秘術番号を求めるを選択"
18150 'KeyBord:true
18160 'Joy Pad:true
18170 '上、下:true
18180 '
18190 'ｂｇ：決定ボタン
18200 'カーソル　上
18210 'カーソル　下
18220 Kabara_First_Top2:
18230 key$ = "":bg = 0:y = 0:
18240 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
18250 key$ = inkey$
18260 bg = strig(1)
18270 y = stick(1)
18280 'PauseでCPUを休める
18290 pause 5
18300 wend
18310 '1.カーソル　下 処理 chr$(31)
18320 'カーソル　下
18330 if ((key$ = chr$(31)) or (y = 1)) then
18340 select case No
18350 '
18360 case 1:
18370 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
18380 case 0:
18390 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18400 'case 2:
18410 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
18420 end select
18430 endif
18440 '2.カーソル　上 処理 chr$(30)
18450 if ((key$ = chr$(30)) or (y = -1)) then
18460 select case No
18470 case 0:
18480 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18490 case 1:
18500 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
18510 'case 2:
18520 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
18530 end select
18540 endif
18550 '3.決定 処理  bg:2 or Enter key:chr$(13)
18560 if ((bg = 2) or (key$ = chr$(13))) then
18570 select case No
18580 case 0:
18590 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
18600 goto Kabara_TopScreen:
18610 'case 1:
18620 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
18630 case 1:
18640 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
18650 end select
18660 endif
18670 '
18680 'Kabara 相性占い トップ画面
18690 Kabara_Aishou_Top:
18700 cls 3:y=0:key$="":bg=0:No=0
18710 play ""
18720 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
18730 gload Gazo$ + "downscreen.png",0,0,800
18740 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
18750 print chr$(13) + chr$(13)
18760 locate 0,4:color rgb(255,255,255)
18770 'print "Ok"
18780 '
18790 print "番号を選んでください" + chr$(13)
18800 print " :1.男女2人の相性(未実装)" + chr$(13)
18810 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
18820 print " :3.トップ画面に戻る" + chr$(13)
18830 sp_on 0,1:sp_on 1,0:sp_on 2,0
18840 color rgb(0,0,0)
18850 locate 1,15:print "1.男女2人の相性占いを選択"
18860 Kabara_Aishou_Top2:
18870 key$ = "":y = 0:bg = 0:
18880 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
18890 'ジョイパッド(右) ,十字キー (上下)
18900 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
18910 y = stick(1)
18920 key$ = inkey$
18930 bg = strig(1)
18940 pause 5
18950 wend
18960 'カーソル　下 or 十字キー　下
18970 if ((key$ = chr$(31)) or (y = 1)) then
18980 select case No
18990 '選択肢　1 - 2に変更
19000 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
19010 'ok
19020 case 0:
19030 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19040 '選択肢　2 - 3に変更
19050 case 1:
19060 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
19070 'リリース時 case 2コメント解除
19080 case 2:
19090 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
19100 case else:
19110 goto Kabara_Aishou_Top2:
19120 end select
19130 endif
19140 '十字キー　上　、カーソル　上
19150 if ((key$ = chr$(30)) or (y = -1)) then
19160 select case No
19170 case 0:
19180 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
19190 case 1:
19200 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
19210 case 2:
19220 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19230 case else:
19240 goto Kabara_Aishou_Top2:
19250 end select
19260 endif
19270 '十字キー　上下:選択
19280 'ジョイパッド 右:決定
19290 if ((bg = 2) or (key$ = chr$(13))) then
19300 select case No
19310 '1.男女の相性
19320 case 0:
19330 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
19340 '2ビジネスの相性
19350 case 1:
19360 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
19370 case 2:
19380 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
19390 end select
19400 endif
19410 'ビジネスの相性　
19420 '1.1人目のビジネスの相性　名前入力　1人目
19430 Business_Aishou_Input_1_parson:
19440 No=0:color RGB(255,255,255)
19450 cls 3:init "kb:2"
19460 gload Gazo$ + "Screen1.png",0,0,0
19470 gload Gazo$ + "downscreen.png",0,0,800
19480 play "":color rgb(255,0,0):name$ = ""
19490 locate 0,1
19500 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
19510 color rgb(255,255,255):
19520 locate 0,3
19530 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
19540 print "入れてください" + chr$(13)
19550 locate 0,15:color rgb(0,0,0)
19560 Input "1人目の名前:",name$
19570 'color rgb(0,0,0)
19580 'locate 0,13:print "                                     "
19590 'locate 0,13:print "1人目の名前を入力してエンターキー":
19600 'buffer_name$(0):1人目の名前
19610 buffer_name$(0) = name$:
19620 goto Business_Aishou_Input_2_Parson:
19630 '2.2人目のビジネスの相性 名前入力 2人目
19640 Business_Aishou_Input_2_Parson:
19650 cls 3:init "kb:2":name$ = "":No=0
19660 gload Gazo$ + "Screen1.png",0,0,0
19670 gload Gazo$ + "downscreen.png",0,0,800
19680 color rgb(255,0,0)
19690 'Title
19700 locate 0,1
19710 print "ビジネスの相性　2人目"
19720 locate 0,3
19730 color rgb(255,255,255)
19740 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
19750 print "入れてください" + chr$(13)
19760 locate 0,15:color rgb(0,0,0)
19770 Input "2人目の名前:",name$
19780 'color rgb(0,0,0)
19790 'locate 0,15:print "                                              "
19800 'locate 0,15:print "2人目の名前を入力してエンター ":
19810 '2人目
19820 '2人目の名前を入れるに代入
19830 buffer_name$(1) = name$:
19840 goto Select_jyoushi:
19850 '3.上司の選択
19860 Select_jyoushi:
19870 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19880 gload Gazo$ + "downscreen.png",0,0,800
19890 init "kb:4":No=0
19900 color rgb(0,0,255)
19910 locate 1,1
19920 print "上司の選択"
19930 color rgb(255,255,255)
19940 locate 0,4:print "名前から上司の方を選んでください"
19950 locate 0,6
19960 print " :";buffer_name$(0);"が上 司";chr$(13)
19970 locate 0,8
19980 print " :";buffer_name$(1);"が上 司";chr$(13)
19990 locate 0,15:
20000 print "                                     "
20010 locate 0,15:color rgb(0,0,0)
20020 print "上司の方を選んで右の丸ボタン"
20030 sp_on 0,1:sp_on 1,0:sp_on 2,0
20040 Select_jyoushi2:
20050 'ここでNo=0をおいてはいけない
20060 y=0:key$="":bg=0:
20070 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
20080 y = stick(1)
20090 key$ = inkey$
20100 bg = strig(1)
20110 pause 5
20120 wend
20130 '1.カーソル下の処理　or 十字キーの下処理
20140 if ((key$ = chr$(31)) or (y = 1)) then
20150 select case No
20160 case 0:
20170 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20180 case 1:
20190 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20200 end select
20210 endif
20220 '2.カーソル上処理　or 十字キーの上の処理
20230 if ((key$ = chr$(30)) or (y = -1)) then
20240 select case No
20250 case 0:
20260 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20270 case 1:
20280 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
20290 end select
20300 endif
20310 if ((key$ = chr$(13)) or (bg = 2)) then
20320 select case No
20330 case 0:
20340 '上司(name1)を配列に代入
20350 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20360 case 1:
20370 '上司（name2)を配列に代入
20380 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20390 end select
20400 endif
20410 '3.決定ボタン　Enter or 右の丸ボタン
20420 '1.誕生日入力
20430 '1-1.生まれた年を入力
20440 'Jyoushi_born_year:
20450 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
20460 '---------------------------------------------'
20470 '誕生日入力(生れた年代)
20480 Jyoushi_Input_Seireki:
20490 'buf_Jyoushi_Born_Year:上司の生まれた年代
20500 'buf_Jyoushi_Born_Day(0) = born_year
20510 cls 3:play "":count=0:count2=0
20520 init"kb:4"
20530 'No=-1:Okのとき
20540 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
20550 for i=0 to 3
20560 buf_Jyoushi_Born_Day(i)=0
20570 next i
20580 gload Gazo$ + "Screen1.png",0,0,0
20590 gload Gazo$ + "downscreen.png",0,0,800
20600 'Init"kb:2"
20610 '音声ファイル再生 2023.06.07
20620 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
20630 font 48
20640 locate 0,1
20650 '文字色：黒　 color rgb(0,0,0)
20660 color rgb(255,255,255)
20670 print "上司の生まれた年代を入れて下さい" + chr$(13)
20680 color rgb(255,255,255)
20690 locate 1,3
20700 print "上司の生まれた年代(西暦4桁):";buf_year$
20710 color rgb(255,255,255)
20720 'locate 4,6:print ":7"
20730 'locate 9,6:print ":8"
20740 'locate 12,6:print ":9"
20750 locate 4,6
20760 print ":7  :8  :9" + chr$(13)
20770 color rgb(255,255,255)
20780 locate 4,8
20790 print ":4  :5  :6" + chr$(13)
20800 color rgb(255,255,255)
20810 locate 4,10
20820 print ":1  :2  :3" + chr$(13)
20830 locate 4,12
20840 print "    :0"
20850 locate 12,12
20860 color rgb(0,0,255)
20870 print ":Ok"
20880 sp_on 4,0: sp_on 5,0:sp_on 6,0
20890 sp_on 7,0:sp_on 8,0:sp_on 9,0
20900 sp_on 10,0:sp_on 11,0:sp_on 12,0
20910 sp_on 13,0:sp_on 14,1
20920 Jyoushi_Input_Seireki2:
20930 key$="":bg=0:y=0:y2=0:bg2=0:
20940 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
20950 key$ = inkey$
20960 bg = strig(1)
20970 y = stick(1)
20980 y2 = stick(0)
20990 bg2=strig(0)
21000 pause 5
21010 wend
21020 '十字キー　ここから
21030 '上の矢印　または、十字キー上
21040 if ((y = -1) or (key$ = chr$(30))) then
21050 select case No
21060 'No=-1:okのとき:初期の状態
21070 '0kボタンから３に移動
21080 '上に行く 処理
21090 case -1:
21100 No=3:sp_on 12,1:sp_on 14,0
21110 pause 200:goto Jyoushi_Input_Seireki2:
21120 '選択肢:3
21130 '3ボタンから 6に移動
21140 case 3:
21150 No=6:sp_on 12,0:sp_on 11,1
21160 pause 200:goto Jyoushi_Input_Seireki2:
21170 '6ボタンから ９に移動
21180 case 6:
21190 No=9:sp_on 10,1:sp_on 11,0
21200 pause 200:goto Jyoushi_Input_Seireki2:
21210 '6ボタンから ９に移動　ここまで
21220 '9で上を押して何もしない
21230 case 9:
21240 '何もしない
21250 No=9
21260 pause 200:goto Jyoushi_Input_Seireki2:
21270 '9で上を押しても何もしない　ここまで
21280 '上　 0ボタンから2ボタン
21290 'sp_on 6,1:1
21300 'sp_on 8,1:5
21310 'sp_on 7,1:7
21320 case 0:
21330 No=2:sp_on 13,0:sp_on 9,1:
21340 pause 200:goto Jyoushi_Input_Seireki2:
21350 '上  0ボタンから2ボタン　ここまで
21360 '2から５になる 上
21370 case 2:
21380 No=5:sp_on 8,1:sp_on 9,0:
21390 pause 200:goto Jyoushi_Input_Seireki2:
21400 case 5:
21410 No=8:sp_on 7,1:sp_on 8,0
21420 pause 200:goto Jyoushi_Input_Seireki2:
21430 case 8:
21440 pause 200:goto Jyoushi_Input_Seireki2:
21450 case 1:
21460 No=4:sp_on 5,1:sp_on 6,0
21470 pause 200:goto Jyoushi_Input_Seireki2:
21480 case 4:
21490 No=7:sp_on 4,1:sp_on 5,0
21500 pause 200:goto Jyoushi_Input_Seireki2:
21510 case 7:
21520 pause 200:goto Jyoushi_Input_Seireki2:
21530 end select
21540 endif
21550 '左３　ここまで
21560 '下の矢印
21570 '中央 2
21580 if ((y=1) or (key$ = chr$(31))) then
21590 select case No
21600 '9から６に下げる
21610 case 9:
21620 No=6:sp_on 11,1:sp_on 10,0
21630 pause 200:goto Jyoushi_Input_Seireki2:
21640 '6から３に下げる
21650 case 6:
21660 No=3:sp_on 12,1:sp_on 11,0
21670 pause 200:goto Jyoushi_Input_Seireki2:
21680 '3から０ｋに変える
21690 case 3:
21700 No=-1:sp_on 14,1:sp_on 12,0
21710 pause 200:goto Jyoushi_Input_Seireki2:
21720 'Okから下のボタンを押しても何もしない
21730 case -1:
21740 pause 200:goto Jyoushi_Input_Seireki2:
21750 case 8:
21760 No=5:sp_on 8,1:sp_on 7,0
21770 pause 200:goto Jyoushi_Input_Seireki2:
21780 case 5:
21790 No=2:sp_on 9,1:sp_on 8,0
21800 pause 200:goto Jyoushi_Input_Seireki2:
21810 case 2:
21820 No=0:sp_on 13,1:sp_on 9,0
21830 pause 200:goto Jyoushi_Input_Seireki2:
21840 case 0:
21850 pause 200:goto Jyoushi_Input_Seireki2:
21860 case 7:
21870 No=4:sp_on 5,1:sp_on 4,0
21880 pause 200:goto Jyoushi_Input_Seireki2:
21890 case 4:
21900 No=1:sp_on 6,1:sp_on 5,0
21910 pause 200:goto Jyoushi_Input_Seireki2:
21920 case 1:
21930 pause 200:goto Jyoushi_Input_Seireki2:
21940 end select
21950 endif
21960 '左へボタン 十字キー　左　or 　カーソル左
21970 if ((y2 = -1) or (key$ = chr$(29))) then
21980 select case No
21990 'Ok ボタン  Okから　左　０に行く
22000 case -1:
22010 No=0:sp_on 13,1:sp_on 14,0
22020 pause 200:goto Jyoushi_Input_Seireki2:
22030 '0 ボタン  左　何もしない
22040 case 0:
22050 pause 200:goto Jyoushi_Input_Seireki2:
22060 case 3:
22070 No=2:sp_on 9,1:sp_on 12,0:
22080 pause 200:goto Jyoushi_Input_Seireki2:
22090 case 2:
22100 No=1:sp_on 6,1:sp_on 9,0:
22110 pause 200:goto Jyoushi_Input_Seireki2:
22120 case 1:
22130 pause 200:goto Jyoushi_Input_Seireki2:
22140 case 6:
22150 No=5:sp_on 8,1:sp_on 11,0
22160 pause 200:goto Jyoushi_Input_Seireki2:
22170 case 5:
22180 No=4:sp_on 5,1:sp_on 8,0
22190 pause 200:goto Jyoushi_Input_Seireki2:
22200 case 4:
22210 pause 200:goto Jyoushi_Input_Seireki2:
22220 case 9:
22230 No=8:sp_on 7,1:sp_on 10,0
22240 pause 200:goto Jyoushi_Input_Seireki2:
22250 case 8:
22260 No=7:sp_on 4,1:sp_on 7,0
22270 pause 200:goto Jyoushi_Input_Seireki2:
22280 case 7:
22290 pause 200:goto Jyoushi_Input_Seireki2:
22300 end select
22310 endif
22320 '右  十字キー　右　or カーソル　右
22330 if ((y2 = 1) or (key$ = chr$(28))) then
22340 select case No
22350 '0ボタンからokボタン右に移動
22360 case 0:
22370 No=-1:sp_on 14,1:sp_on 13,0
22380 pause 200:goto Jyoushi_Input_Seireki2:
22390 '0ボタンからokボタン 右に移動　ここまで
22400 'OKボタンで右を押して何もしない
22410 case -1:
22420 pause 200:goto Jyoushi_Input_Seireki2:
22430 case 1:
22440 No=2:sp_on 9,1:sp_on 6,0
22450 pause 200:goto Jyoushi_Input_Seireki2:
22460 case 2:
22470 No=3:sp_on 12,1:sp_on 9,0
22480 pause 200:goto Jyoushi_Input_Seireki2:
22490 case 3:
22500 pause 200:goto Jyoushi_Input_Seireki2:
22510 case 4:
22520 No=5:sp_on 8,1:sp_on 5,0
22530 pause 200:goto Jyoushi_Input_Seireki2:
22540 case 5:
22550 No=6:sp_on 11,1:sp_on 8,0
22560 pause 200:goto Jyoushi_Input_Seireki2:
22570 case 7:
22580 No=8:sp_on 7,1:sp_on 4,0
22590 pause 200:goto Jyoushi_Input_Seireki2:
22600 case 8:
22610 No=9:sp_on 10,1:sp_on 7,0
22620 pause 200:goto Jyoushi_Input_Seireki2:
22630 case 9:
22640 pause 200:goto Jyoushi_Input_Seireki2:
22650 case 6:
22660 pause 200:goto Jyoushi_Input_Seireki2:
22670 end select
22680 'Okから右ボタンを押して何もしない ここまで
22690 endif
22700 '十字キー　ここまで
22710 '==============================
22720 'ここから
22730 '==============================
22740 if ((bg=2) or (key$=chr$(13))) then
22750 select case count
22760 case 0:
22770 count = 1
22780 if (No=-1) then
22790 count = 0:No=0
22800 buf_Jyoushi_Born_Day(0) = No
22810 'Okボタンを押したとき
22820 goto Jyoushi_Input_Seireki2:
22830 else
22840 'Okボタン以外が押されたとき
22850 if (No>=1 and No<=2) then
22860 buf_year$="":buf_year$=str$(No)
22870 buf_year=No
22880 buf_Jyoushi_Born_Day(0)=No
22890 locate 1,3
22900 color rgb(255,255,255)
22910 print "上司の生まれた年代(西暦4桁):";buf_year$
22920 goto Jyoushi_Input_Seireki2:
22930 else
22940 count=0
22950 ui_msg"数字が範囲外になります。"
22960 buf_year$="":buf_year=0
22970 goto Jyoushi_Input_Seireki2:
22980 endif
22990 endif
23000 case 1:
23010 count = 2
23020 if (No = -1) then
23030 count = 1
23040 goto Jyoushi_Input_Seireki2:
23050 else
23060 b = val(buf_year$)
23070 buf_year = b * 10 + No
23080 buf_year$ = str$(buf_year)
23090 buf_Jyoushi_Born_Day(0)=buf_year
23100 locate 1,3
23110 color rgb(255,255,255)
23120 print "                                                                "
23130 locate 1,3
23140 print "上司の生まれた年代(西暦4桁):"+buf_year$
23150 'if (No = -1) then
23160 'count=1
23170 goto Jyoushi_Input_Seireki2:
23180 endif
23190 case 2:
23200 count=3
23210 if (No=-1) then
23220 count =2
23230 goto Jyoushi_Input_Seireki2:
23240 else
23250 b = val(buf_year$)
23260 buf_year = b * 10 + No
23270 buf_year$ = str$(buf_year)
23280 buf_Jyoushi_Born_Day(0) = buf_year
23290 locate 1,3
23300 color rgb(255,255,255)
23310 print "                                        "
23320 locate 1,3
23330 print "上司の生まれた年代(西暦4桁):";buf_year$
23340 goto Jyoushi_Input_Seireki2:
23350 endif
23360 case 3:
23370 count=4
23380 if (No = -1) then
23390 No=0
23400 goto Jyoushi_Input_Seireki2:
23410 else
23420 b = val(buf_year$)
23430 buf_year = b * 10 + No
23440 buf_year$ = str$(buf_year)
23450 buf_Jyoushi_Born_Day(0) = buf_year
23460 locate 1,3
23470 color RGB(255,255,255)
23480 print "                                      "
23490 locate 1,3
23500 print "上司の生まれた年代(西暦4桁):";buf_year$
23510 buf_year=val(buf_year$)
23520 'year=val(buf_year$)
23530 'if (No=-1) then
23540 'goto Input_Born_Month:
23550 'else
23560 goto Jyoushi_Input_Seireki2:
23570 endif
23580 case 4:
23590 'bufyear=buf_year
23600 if (No=-1) then
23610 buf_year = val(buf_year$)
23620 buf_Jyoushi_Born_Day(0)=buf_year
23630 sp_on 14,0:No=0
23640 goto Jyoushi_Input_Born_Month:
23650 else
23660 goto Jyoushi_Input_Seireki2:
23670 endif
23680 end select
23690 endif
23700 '===========================
23710 'ここまでを部下のところにコピーする.
23720 '===========================
23730 if (bg2 = 2) then
23740 select case count2
23750 case 0:
23760 if (No = -1) then
23770 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
23780 count=0
23790 locate 1,3
23800 color rgb(255,255,255)
23810 print "                                      "
23820 locate 1,3
23830 print "上司の生まれた年代（西暦4桁):"+buf_year$
23840 goto Jyoushi_Input_Seireki2:
23850 else
23860 '(buf_year=0) then
23870 buf_year=0:buf_year$="****"
23880 locate 1,3
23890 print "                                       "
23900 locate 1,3
23910 print "上司の生まれた年代(西暦4桁):"+buf_year$
23920 goto Jyoushi_Input_Seireki2:
23930 'endif
23940 endif
23950 end select
23960 endif
23970 'Input"上司の生れた年代(4桁,〜2025年):",year
23980 'if year > 2025 then goto Jyoushi_Input_Seireki:
23990 'if year = 123 then cls 3:cls 4:goto Main_Screen:
24000 '"4桁目"
24010 'bufyear4 = fix(year / 1000)
24020 '"3桁目"
24030 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
24040 '"2桁目"
24050 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
24060 '"1桁目"
24070 'bufyear1 = fix((year - ((bufyear4*
24080 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
24090 '2.生まれた月を入力
24100 Jyoushi_Input_Born_Month:
24110 cls 3:play "":count=0:count2=0
24120 'No=-1:Okのとき
24130 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
24140 for i=0 to 1
24150 buf_month(i)=0
24160 next i
24170 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
24180 gload Gazo$ + "Screen1.png",0,0,0
24190 gload Gazo$ + "downscreen.png",0,0,800
24200 'Init"kb:4"
24210 '音声ファイル再生 2023.06.07
24220 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
24230 font 48
24240 locate 0,1
24250 '文字色：黒　 color rgb(0,0,0)
24260 '文字色:白
24270 color rgb(255,255,255)
24280 print "上司の生まれた月を入れて下さい" + chr$(13)
24290 '文字色:白
24300 color rgb(255,255,255)
24310 locate 1,3
24320 '文字色:白
24330 print "上司の生まれた月(1月~12月):"+buf_Month$
24340 color rgb(255,255,255)
24350 'locate 4,6:print ":7"
24360 'locate 9,6:print ":8"
24370 'locate 12,6:print ":9"
24380 locate 4,6
24390 '文字色:赤
24400 print ":7  :8  :9" + chr$(13)
24410 color rgb(255,255,255)
24420 locate 4,8
24430 print ":4  :5  :6" + chr$(13)
24440 color rgb(255,255,255)
24450 locate 4,10
24460 print ":1  :2  :3" + chr$(13)
24470 locate 4,12
24480 print "    :0"
24490 locate 12,12
24500 color rgb(0,0,255)
24510 print ":Ok"
24520 sp_on 4,0: sp_on 5,0:sp_on 6,0
24530 sp_on 7,0:sp_on 8,0:sp_on 9,0
24540 sp_on 10,0:sp_on 11,0:sp_on 12,0
24550 sp_on 13,0:sp_on 14,1
24560 Jyoushi_Input_Born_Month2:
24570 key$="":bg=0:y=0:y2=0:bg2=0
24580 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
24590 key$ = inkey$
24600 bg = strig(1)
24610 y = stick(1)
24620 y2 = stick(0)
24630 bg2 = strig(0)
24640 pause 5
24650 wend
24660 '十字キー　ここから
24670 '上の矢印　または、十字キー上
24680 if ((y = -1) or (key$ = chr$(30))) then
24690 select case No
24700 'No=-1:okのとき:初期の状態
24710 '0kボタンから３に移動
24720 '上に行く 処理
24730 case -1:
24740 No=3:sp_on 12,1:sp_on 14,0
24750 pause 200:goto Jyoushi_Input_Born_Month2:
24760 '選択肢:3
24770 '3ボタンから 6に移動
24780 case 3:
24790 No=6:sp_on 12,0:sp_on 11,1
24800 pause 200:goto Jyoushi_Input_Born_Month2:
24810 '6ボタンから ９に移動
24820 case 6:
24830 No=9:sp_on 10,1:sp_on 11,0
24840 pause 200:goto Jyoushi_Input_Born_Month2:
24850 '6ボタンから ９に移動　ここまで
24860 '9で上を押して何もしない
24870 case 9:
24880 '何もしない
24890 No=9
24900 pause 200:goto Jyoushi_Input_Born_Month2:
24910 '9で上を押しても何もしない　ここまで
24920 '上　 0ボタンから2ボタン
24930 'sp_on 6,1:1
24940 'sp_on 8,1:5
24950 'sp_on 7,1:7
24960 case 0:
24970 No=2:sp_on 13,0:sp_on 9,1:
24980 pause 200:goto Jyoushi_Input_Born_Month2:
24990 '上  0ボタンから2ボタン　ここまで
25000 '2から５になる 上
25010 case 2:
25020 No=5:sp_on 8,1:sp_on 9,0:
25030 pause 200:goto Jyoushi_Input_Born_Month2:
25040 case 5:
25050 No=8:sp_on 7,1:sp_on 8,0
25060 pause 200:goto Jyoushi_Input_Born_Month2:
25070 case 8:
25080 pause 200:goto Input_Born_Month2:
25090 case 1:
25100 No=4:sp_on 5,1:sp_on 6,0
25110 pause 200:goto Jyoushi_Input_Born_Month2:
25120 case 4:
25130 No=7:sp_on 4,1:sp_on 5,0
25140 pause 200:goto Jyoushi_Input_Born_Month2:
25150 case 7:
25160 pause 200:goto Input_Born_Month2:
25170 end select
25180 endif
25190 '左３　ここまで
25200 '下の矢印
25210 '中央 2
25220 if ((y=1) or (key$ = chr$(31))) then
25230 select case No
25240 '9から６に下げる
25250 case 9:
25260 No=6:sp_on 11,1:sp_on 10,0
25270 pause 200:goto Jyoushi_Input_Born_Month2:
25280 '6から３に下げる
25290 case 6:
25300 No=3:sp_on 12,1:sp_on 11,0
25310 pause 200:goto Jyoushi_Input_Born_Month2:
25320 '3から０ｋに変える
25330 case 3:
25340 No=-1:sp_on 14,1:sp_on 12,0
25350 pause 200:goto Jyoushi_Input_Born_Month2:
25360 'Okから下のボタンを押しても何もしない
25370 case -1:
25380 pause 200:goto Jyoushi_Input_Born_Month2:
25390 case 8:
25400 No=5:sp_on 8,1:sp_on 7,0
25410 pause 200:goto Jyoushi_Input_Born_Month2:
25420 case 5:
25430 No=2:sp_on 9,1:sp_on 8,0
25440 pause 200:goto Jyoushi_Input_Born_Month2:
25450 case 2:
25460 No=0:sp_on 13,1:sp_on 9,0
25470 pause 200:goto Jyoushi_Input_Born_Month2:
25480 case 0:
25490 pause 200:goto Jyoushi_Input_Born_Month2:
25500 case 7:
25510 No=4:sp_on 5,1:sp_on 4,0
25520 pause 200:goto Jyoushi_Input_Born_Month2:
25530 case 4:
25540 No=1:sp_on 6,1:sp_on 5,0
25550 pause 200:goto Jyoushi_Input_Born_Month2:
25560 case 1:
25570 pause 200:goto Jyoushi_Input_Born_Month2:
25580 end select
25590 endif
25600 '左へボタン 十字キー　左　or 　カーソル左
25610 if ((y2 = -1) or (key$ = chr$(29))) then
25620 select case No
25630 'Ok ボタン  Okから　左　０に行く
25640 case -1:
25650 No=0:sp_on 13,1:sp_on 14,0
25660 pause 200:goto Jyoushi_Input_Born_Month2:
25670 '0 ボタン  左　何もしない
25680 case 0:
25690 pause 200:goto Jyoushi_Input_Born_Month2:
25700 case 3:
25710 No=2:sp_on 9,1:sp_on 12,0:
25720 pause 200:goto Jyoushi_Input_Born_Month2:
25730 case 2:
25740 No=1:sp_on 6,1:sp_on 9,0:
25750 pause 200:goto Jyoushi_Input_Born_Month2:
25760 case 1:
25770 pause 200:goto Jyoushi_Input_Born_Month2:
25780 case 6:
25790 No=5:sp_on 8,1:sp_on 11,0
25800 pause 200:goto Jyoushi_Input_Born_Month2:
25810 case 5:
25820 No=4:sp_on 5,1:sp_on 8,0
25830 pause 200:goto Jyoushi_Input_Born_Month2:
25840 case 4:
25850 pause 200:goto Jyoushi_Input_Born_Month2:
25860 case 9:
25870 No=8:sp_on 7,1:sp_on 10,0
25880 pause 200:goto Input_Born_Month2:
25890 case 8:
25900 No=7:sp_on 4,1:sp_on 7,0
25910 pause 200:goto Jyoushi_Input_Born_Month2:
25920 case 7:
25930 pause 200:goto Jyoushi_Input_Born_Month2:
25940 end select
25950 endif
25960 '右  十字キー　右　or カーソル　右
25970 if ((y2 = 1) or (key$ = chr$(28))) then
25980 select case No
25990 '0ボタンからokボタン右に移動
26000 case 0:
26010 No=-1:sp_on 14,1:sp_on 13,0
26020 pause 200:goto Jyoushi_Input_Born_Month2:
26030 '0ボタンからokボタン 右に移動　ここまで
26040 'OKボタンで右を押して何もしない
26050 case -1:
26060 pause 200:goto Jyoushi_Input_Born_Month2:
26070 case 1:
26080 No=2:sp_on 9,1:sp_on 6,0
26090 pause 200:goto Jyoushi_Input_Born_Month2:
26100 case 2:
26110 No=3:sp_on 12,1:sp_on 9,0
26120 pause 200:goto Jyoushi_Input_Born_Month2:
26130 case 3:
26140 pause 200:goto Jyoushi_Input_Born_Month2:
26150 case 4:
26160 No=5:sp_on 8,1:sp_on 5,0
26170 pause 200:goto Jyoushi_Input_Born_Month2:
26180 case 5:
26190 No=6:sp_on 11,1:sp_on 8,0
26200 pause 200:goto Jyoushi_Input_Born_Month2:
26210 case 7:
26220 No=8:sp_on 7,1:sp_on 4,0
26230 pause 200:goto Jyoushi_Input_Born_Month2:
26240 case 8:
26250 No=9:sp_on 10,1:sp_on 7,0
26260 pause 200:goto Jyoushi_Input_Born_Month2:
26270 case 9:
26280 pause 200:goto Jyoushi_Input_Born_Month2:
26290 case 6:
26300 pause 200:goto Jyoushi_Input_Born_Month2:
26310 end select
26320 'Okから右ボタンを押して何もしない ここまで
26330 endif
26340 '十字キー　ここまで
26350 '右の丸ボタン + Enter key 決定キー
26360 if ((bg=2) or (key$=chr$(13))) then
26370 select case count
26380 case 0:
26390 if (No=-1) then No=0
26400 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No
26410 locate 1,3
26420 print "                                     "
26430 color RGB(255,255,255)
26440 locate 1,3
26450 print "生まれた月(1月~12月):" + buf_Month$
26460 goto Jyoushi_Input_Born_Month2:
26470 case 1:
26480 count = 2:c = No
26490 c = val(buf_Month$)
26500 if (No = -1) then
26510 'count=0
26520 No=0
26530 month=buf_month
26540 buf_month=val(buf_Month$)
26550 month=buf_month
26560 buf_Jyoushi_Born_Day(1)=month
26570 '生まれた日に飛ぶ
26580 goto Jyoushi_Input_Born_Day:
26590 else
26600 buf_month = c*10 + No
26610 buf_Month$= str$(buf_month)
26620 buf_Jyoushi_Born_Day(1)=buf_month
26630 locate 2,3
26640 print "                                          "
26650 locate 2,3
26660 color Rgb(255,255,255)
26670 print "上司の生まれた月(1月~12月):";buf_Month$
26680 goto Jyoushi_Input_Born_Month2:
26690 endif
26700 case 2:
26710 count=3
26720 'c= val(buf_Month$)
26730 'buf_month = c*10 + No
26740 'buf_Month$ = str$(buf_month)
26750 'locate 2,3
26760 'print "上司の生まれた月(1月～12月):";buf_Month$
26770 'goto Jyoushi_Input_Born_Month2:
26780 'case 3:
26790 'count=4
26800 'b=val(buf_month$)
26810 'buf_month=c*10+No
26820 'buf_Month$=str$(buf_month)
26830 'locate 2,3
26840 'print "上司の生まれた月(1月～12月):";buf_Month$
26850 'buf_month=val(buf_Month$)
26860 'year=val(buf_year$)
26870 if (No=-1) then
26880 No=0
26890 goto Jyoushi_Input_Born_Day:
26900 else
26910 goto Jyoushi_Input_Born_Month2:
26920 endif
26930 'case 4:
26940 'bufyear=buf_year
26950 'if (No=-1) then
26960 'buf_month = val(buf_Month$)
26970 'month = buf_month
26980 'sp_on 14,0
26990 'goto Input_Born_Day:
27000 'else
27010 'goto Input_Born_Month2:
27020 'endif
27030 end select
27040 endif
27050 '左の丸ボタン　キャンセル
27060 if (bg2=2) then
27070 select case count2
27080 case 0:
27090 if (No = -1) then
27100 buf_month=0:buf_Month$="**"
27110 count=0
27120 goto rewrite2:
27130 else
27140 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
27150 buf_month = 0:buf_Month$ = "**"
27160 locate 2,3
27170 color rgb(255,255,255)
27180 print "                                       "
27190 goto rewrite2:
27200 if (No>12) then
27210 ui_msg"値が範囲外です。"
27220 goto rewrite2:
27230 endif
27240 endif
27250 endif
27260 rewrite2:
27270 locate 1,3
27280 color rgb(255,255,255)
27290 print "                                      "
27300 locate 1,3
27310 print "上司の生まれた月(1月~12月):"+buf_Month$
27320 goto Jyoushi_Input_Born_Month2:
27330 end select
27340 'endif
27350 endif
27360 end
27370 'end
27380 '生れた日を入力
27390 Jyoushi_Input_Born_Day:
27400 '生まれた日入力
27410 cls 3:play ""
27420 'No=-1:Okのとき
27430 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
27440 for i=0 to 1
27450 buf_day(i)=0
27460 next i
27470 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27480 gload Gazo$ + "Screen1.png",0,0,0
27490 gload Gazo$ + "downscreen.png",0,0,800
27500 'Init"kb:2"
27510 '音声ファイル再生 2023.06.07
27520 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
27530 font 48
27540 locate 1,1
27550 '文字色：黒　 color rgb(0,0,0)
27560 color rgb(255,255,255)
27570 print "上司の生まれた日を入れて下さい" + chr$(13)
27580 locate 1,3
27590 color rgb(255,255,255)
27600 print "                                      "
27610 locate 1,3
27620 print "上司の生まれた日(1日~31日):"+buf_Day$
27630 color rgb(255,255,255)
27640 'locate 4,6:print ":7"
27650 'locate 9,6:print ":8"
27660 'locate 12,6:print ":9"
27670 locate 4,6
27680 print ":7  :8  :9" + chr$(13)
27690 color rgb(255,255,255)
27700 locate 4,8
27710 print ":4  :5  :6" + chr$(13)
27720 color rgb(255,255,255)
27730 locate 4,10
27740 print ":1  :2  :3" + chr$(13)
27750 locate 4,12
27760 print "    :0"
27770 locate 12,12
27780 color rgb(0,0,255)
27790 print ":Ok"
27800 sp_on 4,0: sp_on 5,0:sp_on 6,0
27810 sp_on 7,0:sp_on 8,0:sp_on 9,0
27820 sp_on 10,0:sp_on 11,0:sp_on 12,0
27830 sp_on 13,0:sp_on 14,1
27840 Jyoushi_Input_Born_Day2:
27850 key$="":bg=0:y=0:y2=0:bg2=0:
27860 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27870 key$ = inkey$
27880 bg = strig(1)
27890 y = stick(1)
27900 y2 = stick(0)
27910 bg2 = strig(0)
27920 pause 5
27930 wend
27940 '十字キー　ここから
27950 '上の矢印　または、十字キー上
27960 if ((y = -1) or (key$ = chr$(30))) then
27970 select case No
27980 'No=-1:okのとき:初期の状態
27990 '0kボタンから３に移動
28000 '上に行く 処理
28010 case -1:
28020 No=3:sp_on 12,1:sp_on 14,0
28030 pause 200:goto Jyoushi_Input_Born_Day2:
28040 '選択肢:3
28050 '3ボタンから 6に移動
28060 case 3:
28070 No=6:sp_on 12,0:sp_on 11,1
28080 pause 200:goto Jyoushi_Input_Born_Day2:
28090 '6ボタンから ９に移動
28100 case 6:
28110 No=9:sp_on 10,1:sp_on 11,0
28120 pause 200:goto Jyoushi_Input_Born_Day2:
28130 '6ボタンから ９に移動　ここまで
28140 '9で上を押して何もしない
28150 case 9:
28160 '何もしない
28170 No=9
28180 pause 200:goto Jyoushi_Input_Born_Day2:
28190 '9で上を押しても何もしない　ここまで
28200 '上　 0ボタンから2ボタン
28210 'sp_on 6,1:1
28220 'sp_on 8,1:5
28230 'sp_on 7,1:7
28240 case 0:
28250 No=2:sp_on 13,0:sp_on 9,1:
28260 pause 200:goto Jyoushi_Input_Born_Day2:
28270 '上  0ボタンから2ボタン　ここまで
28280 '2から５になる 上
28290 case 2:
28300 No=5:sp_on 8,1:sp_on 9,0:
28310 pause 200:goto Jyoushi_Input_Born_Day2:
28320 case 5:
28330 No=8:sp_on 7,1:sp_on 8,0
28340 pause 200:goto Jyoushi_Input_Born_Day2:
28350 case 8:
28360 pause 200:goto Jyoushi_Input_Born_Day2:
28370 case 1:
28380 No=4:sp_on 5,1:sp_on 6,0
28390 pause 200:goto Jyoushi_Input_Born_Day2:
28400 case 4:
28410 No=7:sp_on 4,1:sp_on 5,0
28420 pause 200:goto Jyoushi_Input_Born_Day2:
28430 case 7:
28440 pause 200:goto Jyoushi_Input_Born_Day2:
28450 end select
28460 endif
28470 '左３　ここまで
28480 '下の矢印
28490 '中央 2
28500 if ((y=1) or (key$ = chr$(31))) then
28510 select case No
28520 '9から６に下げる
28530 case 9:
28540 No=6:sp_on 11,1:sp_on 10,0
28550 pause 200:goto Jyoushi_Input_Born_Day2:
28560 '6から３に下げる
28570 case 6:
28580 No=3:sp_on 12,1:sp_on 11,0
28590 pause 200:goto Jyoushi_Input_Born_Day2:
28600 '3から０ｋに変える
28610 case 3:
28620 No=-1:sp_on 14,1:sp_on 12,0
28630 pause 200:goto Jyoushi_Input_Born_Day2:
28640 'Okから下のボタンを押しても何もしない
28650 case -1:
28660 pause 200:goto Jyoushi_Input_Born_Day2:
28670 case 8:
28680 No=5:sp_on 8,1:sp_on 7,0
28690 pause 200:goto Jyoushi_Input_Born_Day2:
28700 case 5:
28710 No=2:sp_on 9,1:sp_on 8,0
28720 pause 200:goto Jyoushi_Input_Born_Day2:
28730 case 2:
28740 No=0:sp_on 13,1:sp_on 9,0
28750 pause 200:goto Jyoushi_Input_Born_Day2:
28760 case 0:
28770 pause 200:goto Jyoushi_Input_Born_Day2:
28780 case 7:
28790 No=4:sp_on 5,1:sp_on 4,0
28800 pause 200:goto Jyoushi_Input_Born_Day2:
28810 case 4:
28820 No=1:sp_on 6,1:sp_on 5,0
28830 pause 200:goto Jyoushi_Input_Born_Day2:
28840 case 1:
28850 pause 200:goto Jyoushi_Input_Born_Day2:
28860 end select
28870 endif
28880 '左へボタン 十字キー　左　or 　カーソル左
28890 if ((y2 = -1) or (key$ = chr$(29))) then
28900 select case No
28910 'Ok ボタン  Okから　左　０に行く
28920 case -1:
28930 No=0:sp_on 13,1:sp_on 14,0
28940 pause 200:goto Jyoushi_Input_Born_Day2:
28950 '0 ボタン  左　何もしない
28960 case 0:
28970 pause 200:goto Jyoushi_Input_Born_Day2:
28980 case 3:
28990 No=2:sp_on 9,1:sp_on 12,0:
29000 pause 200:goto Jyoushi_Input_Born_Day2:
29010 case 2:
29020 No=1:sp_on 6,1:sp_on 9,0:
29030 pause 200:goto Jyoushi_Input_Born_Day2:
29040 case 1:
29050 pause 200:goto Jyoushi_Input_Born_Day2:
29060 case 6:
29070 No=5:sp_on 8,1:sp_on 11,0
29080 pause 200:goto Jyoushi_Input_Born_Day2:
29090 case 5:
29100 No=4:sp_on 5,1:sp_on 8,0
29110 pause 200:goto Jyoushi_Input_Born_Day2:
29120 case 4:
29130 pause 200:goto Jyoushi_Input_Born_Day2:
29140 case 9:
29150 No=8:sp_on 7,1:sp_on 10,0
29160 pause 200:goto Jyoushi_Input_Born_Day2:
29170 case 8:
29180 No=7:sp_on 4,1:sp_on 7,0
29190 pause 200:goto Jyoushi_Input_Born_Day2:
29200 case 7:
29210 pause 200:goto Jyoushi_Input_Born_Day2:
29220 end select
29230 endif
29240 '右  十字キー　右　or カーソル　右
29250 if ((y2 = 1) or (key$ = chr$(28))) then
29260 select case No
29270 '0ボタンからokボタン右に移動
29280 case 0:
29290 No=-1:sp_on 14,1:sp_on 13,0
29300 pause 200:goto Jyoushi_Input_Born_Day2:
29310 '0ボタンからokボタン 右に移動　ここまで
29320 'OKボタンで右を押して何もしない
29330 case -1:
29340 pause 200:goto Jyoushi_Input_Born_Day2:
29350 case 1:
29360 No=2:sp_on 9,1:sp_on 6,0
29370 pause 200:goto Jyoushi_Input_Born_Day2:
29380 case 2:
29390 No=3:sp_on 12,1:sp_on 9,0
29400 pause 200:goto Jyoushi_Input_Born_Day2:
29410 case 3:
29420 pause 200:goto Jyoushi_Input_Born_Day2:
29430 case 4:
29440 No=5:sp_on 8,1:sp_on 5,0
29450 pause 200:goto Jyoushi_Input_Born_Day2:
29460 case 5:
29470 No=6:sp_on 11,1:sp_on 8,0
29480 pause 200:goto Jyoushi_Input_Born_Day2:
29490 case 7:
29500 No=8:sp_on 7,1:sp_on 4,0
29510 pause 200:goto Jyoushi_Input_Born_Day2:
29520 case 8:
29530 No=9:sp_on 10,1:sp_on 7,0
29540 pause 200:goto Jyoushi_Input_Born_Day2:
29550 case 9:
29560 pause 200:goto Jyoushi_Input_Born_Day2:
29570 case 6:
29580 pause 200:goto Jyoushi_Input_Born_Day2:
29590 end select
29600 'Okから右ボタンを押して何もしない ここまで
29610 endif
29620 '十字キー　ここまで
29630 '右の丸ボタンを押したとき
29640 if ((bg = 2) or (key$ = chr$(13))) then
29650 'count :決定ボタンを押した回数
29660 select case (count)
29670 '1桁目入力
29680 case 0:
29690 count = 1:
29700 if (No = -1) then
29710 '1桁目　OKでは何もしない
29720 No=c
29730 'goto Jyoushi_Input_Born_Day2:
29740 else
29750 'ok以外のボタンを押したとき
29760 buf_day = No:buf_Day$ = str$(No)
29770 buf_Jyoushi_Born_Day(2)=buf_day
29780 c=No
29790 locate 1,3
29800 print "                                      "
29810 color RGB(255,255,255)
29820 locate 1,3
29830 print "上司の生まれた日(1日~31日):" + buf_Day$
29840 endif
29850 'check2:
29860 'if (buf_day >= 1 and buf_day <= 9) then
29870 'sp_on 14,0
29880 'goto complate_jyoushi:
29890 'else
29900 'sp_on 14,0
29910 goto Jyoushi_Input_Born_Day2:
29920 'end
29930 'endif
29940 case 1:
29950 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
29960 count = 2:
29970 'locate 2,3
29980 'color RGB(255,255,255)
29990 'print "生まれた日(1日~31日):";buf_Day$
30000 'Okボタンを押したときの処理
30010 '入力値　10未満のとき
30020 'buf_day = c * 10 + No
30030 if (No = -1) then
30040 c=buf_day:No=0
30050 'buf_day = c
30060 buf_Day$ = str$(buf_day)
30070 '10以下のとき
30080 'if (buf_day < 10) then
30090 sp_on 14,0
30100 goto complate_jyoushi:
30110 'end
30120 'endif
30130 else
30140 'c=No
30150 buf_day = c * 10 + No
30160 buf_Day$ = str$(buf_day)
30170 'buf_day = c:buf_Day$=str$(buf_day)
30180 buf_Jyoushi_Born_Day(2)=buf_day
30190 locate 1,3
30200 print "                                           "
30210 locate 1,3
30220 color Rgb(255,255,255)
30230 print "上司の生まれた日(1日~31日):" + buf_Day$
30240 goto Jyoushi_Input_Born_Day2:
30250 'goto
30260 endif
30270 'endif
30280 '生まれた日　2桁目の数字　or 1桁の数字 + ok
30290 case 2:
30300 'buf_day = c * 10 + No
30310 'buf_Jyoushi_Born_Day(2)=buf_day
30320 'locate 1,3
30330 'print "                                      "
30340 'locate 1,3
30350 'locate 2,3
30360 'print "生まれた日(1日〜31日):";buf_Day
30370 'No=-1:ok ボタンを押したとき
30380 if (No = -1) then
30390 'if ((buf_day > 0) and (buf_day < 32)) then
30400 No=0
30410 sp_on 14,0
30420 goto complate_jyoushi:
30430 'end
30440 else
30450 'goto Jyoushi_Input_Born_Day2:
30460 'endif
30470 'Okボタン以外を押したとき
30480 'else
30490 'c=val(buf_Day$)
30500 buf_day = c * 10 + No
30510 buf_Jyoushi_Born_Day(2)=buf_day
30520 buf_Day$=str$(buf_day)
30530 locate 1,3
30540 print "生まれた日(1日~31日):";buf_Day$
30550 goto Jyoushi_Input_Born_Day2:
30560 endif
30570 case 3:
30580 count=4
30590 'c=val(buf_day$)
30600 'buf_day=c*10+No
30610 'buf_day$=str$(buf_day)
30620 'locate 2,3
30630 'print "生まれた日を入れてください:";buf_day$
30640 'year=val(buf_year$)
30650 if (No = -1) then
30660 'goto Jyoushi_Input_Born_Day:
30670 sp_on 14,0:
30680 goto complate_jyoushi:
30690 else
30700 'goto Jyoushi_Input_Born_Month2:
30710 'endif
30720 'case 4:
30730 'bufyear=buf_year
30740 'if (No=-1) then
30750 'buf_day = val(buf_day$)
30760 'bufday = buf_day
30770 'sp_on 14,0
30780 goto Jyoushi_Input_Born_Day2:
30790 'else
30800 'goto Jyoushi_Input_Born_Day2:
30810 endif
30820 end select
30830 endif
30840 if (bg2=2) then
30850 select case count2
30860 case 0:
30870 if (No=-1) then
30880 buf_day=0:buf_Day$="**":No=0
30890 if (buf_day >= 1 and buf_day <= 31) then
30900 count=0
30910 buf_day=0:buf_Day$ = "**"
30920 goto rewrite_day3:
30930 else
30940 buf_day=0:buf_Day$ = "**"
30950 ui_msg"値が範囲外です"
30960 endif
30970 goto rewrite_day3:
30980 else
30990 goto rewrite_day3:
31000 endif
31010 rewrite_day3:
31020 locate 2,3
31030 color rgb(255,255,255)
31040 print "                                      "
31050 locate 2,3
31060 print "生まれた日(1日~31日):" + buf_Day$
31070 goto Jyoushi_Input_Born_Day2:
31080 end select
31090 endif
31100 '--------------------------------------------'
31110 'locate 2,0:color rgb(255,0,0)
31120 'print "上司の生まれた年代を入力"
31130 'color rgb(255,255,255)
31140 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
31150 'locate 2,4:Input "上司の生まれた年:",born_year
31160 '誕生日データーを配列に代入
31170 'buf_Jyoushi_Born_Year:上司の生まれた年代
31180 'buf_Jyoushi_Born_Day(0) = born_year
31190 'born_year = 0
31200 '---------------------------------------------'
31210 'goto Jyoushi_born_month:
31220 '1-2.生まれた月を入力
31230 'Jyoushi_born_month:
31240 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31250 'init "kb:4"
31260 'locate 2,1:
31270 'color rgb(255,0,0)
31280 'print "上司の生まれた月入力"
31290 'color rgb(255,255,255)
31300 'locate 2,4:print "生まれた月を入力してください"
31310 'locate 2,5
31320 'Input "上司の生まれ月:",born_month
31330 'buf_Jyoushi_Born_Day(1) = born_month
31340 'born_month = 0
31350 'goto Jyoushi_born_day:
31360 'buf_Jyoushi_Born_day
31370 '1-3.生まれた日を入力
31380 'Jyoushi_born_day:
31390 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31400 'init "kb:4"
31410 'locate 2,1:color rgb(255,0,0)
31420 'print "上司の生まれた日　入力"
31430 'locate 2,4:color rgb(255,255,255)
31440 'print "生まれた日を入力してください"
31450 'locate 2,5
31460 'Input "上司の生まれた日:",born_day
31470 'buf_Jyoushi_Born_Day(2) = born_day
31480 'born_day = 0
31490 'goto buka_born_year:
31500 '2.部下の誕生日入力
31510 '2-1.生まれた年を入力
31520 'buka_born_year:
31530 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31540 'init "kb:2"
31550 'locate 1,1:color rgb(255,0,0)
31560 'print "部下の生まれた年代入力"
31570 'locate 0,4:color rgb(255,255,255)
31580 'print "部下の生まれた年（西暦4桁）を入れてください"
31590 'locate 0,5
31600 'Input "部下の生まれた年(西暦4桁):",born_year
31610 'buf_Buka_Born_Day(0) = born_year
31620 'born_year = 0
31630 '2-2.生まれた月を入力
31640 'buka_born_month:
31650 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31660 'init "kb:2"
31670 'locate 2,1:color rgb(255,0,0)
31680 'print "部下の生まれた月 入力"
31690 'locate 2,4:color rgb(255,255,255)
31700 'print "部下の生まれた月を入力してください"
31710 'locate 2,5:Input "部下の生まれた月:",born_month
31720 'buf_Buka_Born_Day(1) = born_month
31730 '2-3.生まれた日を入力
31740 'buka_born_day:
31750 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31760 'init "kb:2"
31770 'locate 2,1:color rgb(255,0,0)
31780 'print "生まれた日入力"
31790 'color rgb(255,255,255)
31800 'locate 2,4:print "生まれた日を入力してください"
31810 'locate 2,5:Input "部下の生まれた日:",born_day
31820 'buf_Buka_Born_Day(2) = born_day
31830 'born_day=0:goto Result_Business_Aisyou:
31840 '--------------------------------------------'
31850 complate_jyoushi:
31860 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
31870 buf_Jyoushi = Kabara_Num(a,b,c)
31880 a_1=buf_Jyoushi
31890 goto Buka_Input_Seireki:
31900 '--------------------------------------------'
31910 '部下'
31920 '1.部下の生まれた年代'
31930 Buka_Input_Seireki:
31940 cls 3:play "":count=0:count2=0
31950 init"kb:4"
31960 'No=-1:Okのとき
31970 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
31980 for i=0 to 3
31990 buf_Buka_Born_Day(i)=0
32000 next i
32010 gload Gazo$ + "Screen1.png",0,0,0
32020 gload Gazo$ + "downscreen.png",0,0,800
32030 'Init"kb:2"
32040 '音声ファイル再生 2023.06.07
32050 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
32060 font 48
32070 locate 0,1
32080 '文字色：黒　 color rgb(0,0,0)
32090 color rgb(255,255,255)
32100 print "部下の生まれた年代を入れて下さい" + chr$(13)
32110 color rgb(255,255,255)
32120 locate 1,3
32130 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
32140 color rgb(255,255,255)
32150 'locate 4,6:print ":7"
32160 'locate 9,6:print ":8"
32170 'locate 12,6:print ":9"
32180 locate 4,6
32190 print ":7  :8  :9" + chr$(13)
32200 color rgb(255,255,255)
32210 locate 4,8
32220 print ":4  :5  :6" + chr$(13)
32230 color rgb(255,255,255)
32240 locate 4,10
32250 print ":1  :2  :3" + chr$(13)
32260 locate 4,12
32270 print "    :0"
32280 locate 12,12
32290 color rgb(0,0,255)
32300 print ":Ok"
32310 sp_on 4,0: sp_on 5,0:sp_on 6,0
32320 sp_on 7,0:sp_on 8,0:sp_on 9,0
32330 sp_on 10,0:sp_on 11,0:sp_on 12,0
32340 sp_on 13,0:sp_on 14,1
32350 Buka_Input_Seireki2:
32360 key$="":bg=0:y=0:y2=0:bg2=0:
32370 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
32380 key$ = inkey$
32390 bg = strig(1)
32400 y = stick(1)
32410 y2 = stick(0)
32420 bg2=strig(0)
32430 pause 5
32440 wend
32450 '十字キー　ここから
32460 '上の矢印　または、十字キー上
32470 if ((y = -1) or (key$ = chr$(30))) then
32480 select case No
32490 'No=-1:okのとき:初期の状態
32500 '0kボタンから３に移動
32510 '上に行く 処理
32520 case -1:
32530 No=3:sp_on 12,1:sp_on 14,0
32540 pause 200:goto Buka_Input_Seireki2:
32550 '選択肢:3
32560 '3ボタンから 6に移動
32570 case 3:
32580 No=6:sp_on 12,0:sp_on 11,1
32590 pause 200:goto Buka_Input_Seireki2:
32600 '6ボタンから ９に移動
32610 case 6:
32620 No=9:sp_on 10,1:sp_on 11,0
32630 pause 200:goto Buka_Input_Seireki2:
32640 '6ボタンから ９に移動　ここまで
32650 '9で上を押して何もしない
32660 case 9:
32670 '何もしない
32680 No=9
32690 pause 200:goto Buka_Input_Seireki2:
32700 '9で上を押しても何もしない　ここまで
32710 '上　 0ボタンから2ボタン
32720 'sp_on 6,1:1
32730 'sp_on 8,1:5
32740 'sp_on 7,1:7
32750 case 0:
32760 No=2:sp_on 13,0:sp_on 9,1:
32770 pause 200:goto Buka_Input_Seireki2:
32780 '上  0ボタンから2ボタン　ここまで
32790 '2から５になる 上
32800 case 2:
32810 No=5:sp_on 8,1:sp_on 9,0:
32820 pause 200:goto Buka_Input_Seireki2:
32830 case 5:
32840 No=8:sp_on 7,1:sp_on 8,0
32850 pause 200:goto Buka_Input_Seireki2:
32860 case 8:
32870 pause 200:goto Buka_Input_Seireki2:
32880 case 1:
32890 No=4:sp_on 5,1:sp_on 6,0
32900 pause 200:goto Buka_Input_Seireki2:
32910 case 4:
32920 No=7:sp_on 4,1:sp_on 5,0
32930 pause 200:goto Buka_Input_Seireki2:
32940 case 7:
32950 pause 200:goto Buka_Input_Seireki2:
32960 end select
32970 endif
32980 '左３　ここまで
32990 '下の矢印
33000 '中央 2
33010 if ((y=1) or (key$ = chr$(31))) then
33020 select case No
33030 '9から６に下げる
33040 case 9:
33050 No=6:sp_on 11,1:sp_on 10,0
33060 pause 200:goto Buka_Input_Seireki2:
33070 '6から３に下げる
33080 case 6:
33090 No=3:sp_on 12,1:sp_on 11,0
33100 pause 200:goto Buka_Input_Seireki2:
33110 '3から０ｋに変える
33120 case 3:
33130 No=-1:sp_on 14,1:sp_on 12,0
33140 pause 200:goto Buka_Input_Seireki2:
33150 'Okから下のボタンを押しても何もしない
33160 case -1:
33170 pause 200:goto Buka_Input_Seireki2:
33180 case 8:
33190 No=5:sp_on 8,1:sp_on 7,0
33200 pause 200:goto Buka_Input_Seireki2:
33210 case 5:
33220 No=2:sp_on 9,1:sp_on 8,0
33230 pause 200:goto Buka_Input_Seireki2:
33240 case 2:
33250 No=0:sp_on 13,1:sp_on 9,0
33260 pause 200:goto Buka_Input_Seireki2:
33270 case 0:
33280 pause 200:goto Buka_Input_Seireki2:
33290 case 7:
33300 No=4:sp_on 5,1:sp_on 4,0
33310 pause 200:goto Buka_Input_Seireki2:
33320 case 4:
33330 No=1:sp_on 6,1:sp_on 5,0
33340 pause 200:goto Buka_Input_Seireki2:
33350 case 1:
33360 pause 200:goto Buka_Input_Seireki2:
33370 end select
33380 endif
33390 '左へボタン 十字キー　左　or 　カーソル左
33400 if ((y2 = -1) or (key$ = chr$(29))) then
33410 select case No
33420 'Ok ボタン  Okから　左　０に行く
33430 case -1:
33440 No=0:sp_on 13,1:sp_on 14,0
33450 pause 200:goto Buka_Input_Seireki2:
33460 '0 ボタン  左　何もしない
33470 case 0:
33480 pause 200:goto Buka_Input_Seireki2:
33490 case 3:
33500 No=2:sp_on 9,1:sp_on 12,0:
33510 pause 200:goto Buka_Input_Seireki2:
33520 case 2:
33530 No=1:sp_on 6,1:sp_on 9,0:
33540 pause 200:goto Buka_Input_Seireki2:
33550 case 1:
33560 pause 200:goto Buka_Input_Seireki2:
33570 case 6:
33580 No=5:sp_on 8,1:sp_on 11,0
33590 pause 200:goto Buka_Input_Seireki2:
33600 case 5:
33610 No=4:sp_on 5,1:sp_on 8,0
33620 pause 200:goto Buka_Input_Seireki2:
33630 case 4:
33640 pause 200:goto Buka_Input_Seireki2:
33650 case 9:
33660 No=8:sp_on 7,1:sp_on 10,0
33670 pause 200:goto Buka_Input_Seireki2:
33680 case 8:
33690 No=7:sp_on 4,1:sp_on 7,0
33700 pause 200:goto Buka_Input_Seireki2:
33710 case 7:
33720 pause 200:goto Buka_Input_Seireki2:
33730 end select
33740 endif
33750 '右  十字キー　右　or カーソル　右
33760 if ((y2 = 1) or (key$ = chr$(28))) then
33770 select case No
33780 '0ボタンからokボタン右に移動
33790 case 0:
33800 No=-1:sp_on 14,1:sp_on 13,0
33810 pause 200:goto Buka_Input_Seireki2:
33820 '0ボタンからokボタン 右に移動　ここまで
33830 'OKボタンで右を押して何もしない
33840 case -1:
33850 pause 200:goto Buka_Input_Seireki2:
33860 case 1:
33870 No=2:sp_on 9,1:sp_on 6,0
33880 pause 200:goto Buka_Input_Seireki2:
33890 case 2:
33900 No=3:sp_on 12,1:sp_on 9,0
33910 pause 200:goto Buka_Input_Seireki2:
33920 case 3:
33930 pause 200:goto Buka_Input_Seireki2:
33940 case 4:
33950 No=5:sp_on 8,1:sp_on 5,0
33960 pause 200:goto Buka_Input_Seireki2:
33970 case 5:
33980 No=6:sp_on 11,1:sp_on 8,0
33990 pause 200:goto Buka_Input_Seireki2:
34000 case 7:
34010 No=8:sp_on 7,1:sp_on 4,0
34020 pause 200:goto Buka_Input_Seireki2:
34030 case 8:
34040 No=9:sp_on 10,1:sp_on 7,0
34050 pause 200:goto Buka_Input_Seireki2:
34060 case 9:
34070 pause 200:goto Buka_Input_Seireki2:
34080 case 6:
34090 pause 200:goto Buka_Input_Seireki2:
34100 end select
34110 'Okから右ボタンを押して何もしない ここまで
34120 endif
34130 '十字キー　ここまで
34140 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
34150 'ここからコメント
34160 '右の丸ボタン決定を押した数:count
34170 'if ((bg=2) or (key$=chr$(13))) then
34180 'select case count
34190 'case 0:
34200 'count=1
34210 'if (No = -1) then
34220 'count = 0
34230 'Okボタンを押したとき
34240 '
34250 'goto Buka_Input_Seireki2:
34260 'else
34270 'Okボタン以外が押されたとき
34280 'if (No >= 1 and No <= 2) then
34290 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
34300 'buf_buka_year = No
34310 'buf_Buka_Born_Day(0) = bufyear
34320 'locate 2,3
34330 'color rgb(255,255,255)
34340 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34350 'goto Buka_Input_Seireki2:
34360 'else
34370 'count=0
34380 'ui_msg"数字が範囲外になります。"
34390 'buf_buka_year$ ="":buf_buka_year=0
34400 'goto Buka_Input_Seireki2:
34410 'endif
34420 'endif
34430 'case 1:
34440 'count = 2
34450 'if (No = -1) then
34460 'count = 1
34470 'goto Buka_Input_Seireki2:
34480 'else
34490 'b = val(buf_buka_year$)
34500 'buf_buka_year = b * 10 + No
34510 'buf_buka_year$ = str$(buf_buka_year)
34520 'buf_Buka_Born_Day(0) = bufyear
34530 'locate 1,3
34540 'color rgb(255,255,255)
34550 'print "                                                                "
34560 'locate 1,3
34570 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34580 'if (No = -1) then
34590 'count=1
34600 'goto Buka_Input_Seireki2:
34610 'endif
34620 'case 2:
34630 'count = 3
34640 'if (No = -1) then
34650 'count = 2
34660 'buf_Buka_Born_Day(0)=bufyear
34670 'goto Buka_Input_Seireki2:
34680 'else
34690 'b = val(buf_buka_year$)
34700 'buf_buka_year = b*10 + No
34710 'buf_buka_year$ = str$(buf_buka_year)
34720 'locate 1,3
34730 'color rgb(255,255,255)
34740 'print "                                        "
34750 'locate 1,3
34760 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
34770 'goto Buka_Input_Seireki2:
34780 'endif
34790 'case 3:
34800 'count=4
34810 'if (No = -1) then
34820 'count=3
34830 'goto Buka_Input_Seireki2:
34840 'else
34850 'b = buf_buka_year
34860 'buf_buka_year = b * 10 + No
34870 'buf_buka_year$=str$(buf_buka_year)
34880 'locate 1,3
34890 'color RGB(255,255,255)
34900 'print "                                      "
34910 'locate 1,3
34920 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34930 'buf_year=val(buf_year$)
34940 'year=val(buf_year$)
34950 'if (No=-1) then
34960 'goto Input_Born_Month:
34970 'else
34980 'goto Buka_Input_Seireki2:
34990 'endif
35000 'case 4:
35010 'bufyear=buf_year
35020 'if (No=-1) then
35030 'buf_year = val(buf_year$)
35040 'bufyear = buf_year
35050 'sp_on 14,0
35060 'goto Buka_Input_Born_Month:
35070 'else
35080 'goto Buka_Input_Seireki2:
35090 'endif
35100 'end select
35110 'endif
35120 'if (bg2 = 2) then
35130 'select case count2
35140 'case 0:
35150 'if (No = -1) then
35160 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
35170 'count=0
35180 'locate 1,3
35190 'color rgb(255,255,255)
35200 'print "                                      "
35210 'locate 1,3
35220 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
35230 'goto Buka_Input_Seireki2:
35240 'else
35250 '(buf_year=0) then
35260 'buf_buka_year=0:buf_buka_year$="****"
35270 'goto Buka_Input_Seireki2:
35280 'endif
35290 'endif
35300 'end select
35310 'endif
35320 'end
35330 'ここまでコメント
35340 '================================================================
35350 if ((bg=2) or (key$=chr$(13))) then
35360 select case count
35370 case 0:
35380 count = 1
35390 if (No=-1) then
35400 count = 0
35410 buf_Buka_Born_Day(0) = No
35420 'Okボタンを押したとき
35430 goto Buka_Input_Seireki2:
35440 else
35450 'Okボタン以外が押されたとき
35460 if (No>=1 and No<=2) then
35470 buf_buka_year$="":buf_buka_year$=str$(No)
35480 buf_buka_year = No
35490 buf_Buka_Born_Day(0) = No
35500 locate 1,3
35510 color rgb(255,255,255)
35520 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35530 goto Buka_Input_Seireki2:
35540 else
35550 count=0
35560 ui_msg"数字が範囲外になります。"
35570 buf_buka_year$="":buf_buka_year=0
35580 goto Buka_Input_Seireki2:
35590 endif
35600 endif
35610 case 1:
35620 count = 2
35630 if (No = -1) then
35640 count = 1
35650 goto Buka_Input_Seireki2:
35660 else
35670 b = val(buf_buka_year$)
35680 buf_buka_year = b * 10 + No
35690 buf_buka_year$ = str$(buf_buka_year)
35700 buf_Buka_Born_Day(0)=buf_buka_year
35710 locate 1,3
35720 color rgb(255,255,255)
35730 print "                                                                "
35740 locate 1,3
35750 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
35760 'if (No = -1) then
35770 'count=1
35780 goto Buka_Input_Seireki2:
35790 endif
35800 case 2:
35810 count=3
35820 if (No=-1) then
35830 count =2
35840 goto Buka_Input_Seireki2:
35850 else
35860 b = val(buf_buka_year$)
35870 buf_buka_year = b*10 + No
35880 buf_buka_year$ = str$(buf_buka_year)
35890 buf_Buka_Born_Day(0) = buf_buka_year
35900 locate 1,3
35910 color rgb(255,255,255)
35920 print "                                        "
35930 locate 1,3
35940 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
35950 goto Buka_Input_Seireki2:
35960 endif
35970 case 3:
35980 count=4
35990 if (No = -1) then
36000 count=3
36010 goto Buka_Input_Seireki2:
36020 else
36030 b = val(buf_buka_year$)
36040 buf_buka_year=b*10+No
36050 buf_buka_year$=str$(buf_buka_year)
36060 buf_Buka_Born_Day(0)=buf_buka_year
36070 locate 1,3
36080 color RGB(255,255,255)
36090 print "                                      "
36100 locate 1,3
36110 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
36120 buf_buka_year=val(buf_buka_year$)
36130 'year=val(buf_year$)
36140 'if (No=-1) then
36150 'goto Input_Born_Month:
36160 'else
36170 goto Buka_Input_Seireki2:
36180 endif
36190 case 4:
36200 'bufyear=buf_year
36210 if (No = -1) then
36220 buf_buka_year = val(buf_buka_year$)
36230 buf_Buka_Born_Day(0)=buf_buka_year
36240 sp_on 14,0
36250 goto Buka_Input_Born_Month:
36260 else
36270 goto Buka_Input_Seireki2:
36280 endif
36290 end select
36300 endif
36310 '================================================================
36320 'ここにコピーする。
36330 '================================================================
36340 'Input"部下の生れた年代(4桁,〜2025年):",year
36350 'if year > 2025 then goto Jyoushi_Input_Seireki:
36360 'if year = 123 then cls 3:cls 4:goto Main_Screen:
36370 '"4桁目"
36380 'bufyear4 = fix(year / 1000)
36390 '"3桁目"
36400 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
36410 '"2桁目"
36420 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
36430 '"1桁目"
36440 'bufyear1 = fix((year - ((bufyear4*
36450 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
36460 '1.部下の生まれた年代'
36470 '2.部下の生まれた月'
36480 Buka_Input_Born_Month:
36490 cls 3:play "":count=0:count2=0
36500 'No=-1:Okのとき
36510 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
36520 for i=0 to 1
36530 buf_month(i)=0
36540 next i
36550 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
36560 gload Gazo$ + "Screen1.png",0,0,0
36570 gload Gazo$ + "downscreen.png",0,0,800
36580 'Init"kb:4"
36590 '音声ファイル再生 2023.06.07
36600 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
36610 font 48
36620 locate 0,1
36630 '文字色：黒　 color rgb(0,0,0)
36640 '文字色:白
36650 color rgb(255,255,255)
36660 print "部下の生まれた月を入れて下さい" + chr$(13)
36670 '文字色:白
36680 color rgb(255,255,255)
36690 locate 1,3
36700 '文字色:白
36710 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
36720 color rgb(255,255,255)
36730 'locate 4,6:print ":7"
36740 'locate 9,6:print ":8"
36750 'locate 12,6:print ":9"
36760 locate 4,6
36770 '文字色:赤
36780 print ":7  :8  :9" + chr$(13)
36790 color rgb(255,255,255)
36800 locate 4,8
36810 print ":4  :5  :6" + chr$(13)
36820 color rgb(255,255,255)
36830 locate 4,10
36840 print ":1  :2  :3" + chr$(13)
36850 locate 4,12
36860 print "    :0"
36870 locate 12,12
36880 color rgb(0,0,255)
36890 print ":Ok"
36900 sp_on 4,0: sp_on 5,0:sp_on 6,0
36910 sp_on 7,0:sp_on 8,0:sp_on 9,0
36920 sp_on 10,0:sp_on 11,0:sp_on 12,0
36930 sp_on 13,0:sp_on 14,1
36940 Buka_Input_Born_Month2:
36950 key$="":bg=0:y=0:y2=0:bg2=0
36960 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
36970 key$ = inkey$
36980 bg = strig(1)
36990 y = stick(1)
37000 y2 = stick(0)
37010 bg2 = strig(0)
37020 pause 5
37030 wend
37040 '十字キー　ここから
37050 '上の矢印　または、十字キー上
37060 if ((y = -1) or (key$ = chr$(30))) then
37070 select case No
37080 'No=-1:okのとき:初期の状態
37090 '0kボタンから３に移動
37100 '上に行く 処理
37110 case -1:
37120 No=3:sp_on 12,1:sp_on 14,0
37130 pause 200:goto Buka_Input_Born_Month2:
37140 '選択肢:3
37150 '3ボタンから 6に移動
37160 case 3:
37170 No=6:sp_on 12,0:sp_on 11,1
37180 pause 200:goto Buka_Input_Born_Month2:
37190 '6ボタンから ９に移動
37200 case 6:
37210 No=9:sp_on 10,1:sp_on 11,0
37220 pause 200:goto Buka_Input_Born_Month2:
37230 '6ボタンから ９に移動　ここまで
37240 '9で上を押して何もしない
37250 case 9:
37260 '何もしない
37270 No=9
37280 pause 200:goto Buka_Input_Born_Month2:
37290 '9で上を押しても何もしない　ここまで
37300 '上　 0ボタンから2ボタン
37310 'sp_on 6,1:1
37320 'sp_on 8,1:5
37330 'sp_on 7,1:7
37340 case 0:
37350 No=2:sp_on 13,0:sp_on 9,1:
37360 pause 200:goto Buka_Input_Born_Month2:
37370 '上  0ボタンから2ボタン　ここまで
37380 '2から５になる 上
37390 case 2:
37400 No=5:sp_on 8,1:sp_on 9,0:
37410 pause 200:goto Buka_Input_Born_Month2:
37420 case 5:
37430 No=8:sp_on 7,1:sp_on 8,0
37440 pause 200:goto Buka_Input_Born_Month2:
37450 case 8:
37460 pause 200:goto Buka_Input_Born_Month2:
37470 case 1:
37480 No=4:sp_on 5,1:sp_on 6,0
37490 pause 200:goto Buka_Input_Born_Month2:
37500 case 4:
37510 No=7:sp_on 4,1:sp_on 5,0
37520 pause 200:goto Buka_Input_Born_Month2:
37530 case 7:
37540 pause 200:goto Buka_Input_Born_Month2:
37550 end select
37560 endif
37570 '左３　ここまで
37580 '下の矢印
37590 '中央 2
37600 if ((y=1) or (key$ = chr$(31))) then
37610 select case No
37620 '9から６に下げる
37630 case 9:
37640 No=6:sp_on 11,1:sp_on 10,0
37650 pause 200:goto Buka_Input_Born_Month2:
37660 '6から３に下げる
37670 case 6:
37680 No=3:sp_on 12,1:sp_on 11,0
37690 pause 200:goto Buka_Input_Born_Month2:
37700 '3から０ｋに変える
37710 case 3:
37720 No=-1:sp_on 14,1:sp_on 12,0
37730 pause 200:goto Buka_Input_Born_Month2:
37740 'Okから下のボタンを押しても何もしない
37750 case -1:
37760 pause 200:goto Buka_Input_Born_Month2:
37770 case 8:
37780 No=5:sp_on 8,1:sp_on 7,0
37790 pause 200:goto Buka_Input_Born_Month2:
37800 case 5:
37810 No=2:sp_on 9,1:sp_on 8,0
37820 pause 200:goto Buka_Input_Born_Month2:
37830 case 2:
37840 No=0:sp_on 13,1:sp_on 9,0
37850 pause 200:goto Buka_Input_Born_Month2:
37860 case 0:
37870 pause 200:goto Buka_Input_Born_Month2:
37880 case 7:
37890 No=4:sp_on 5,1:sp_on 4,0
37900 pause 200:goto Buka_Input_Born_Month2:
37910 case 4:
37920 No=1:sp_on 6,1:sp_on 5,0
37930 pause 200:goto Buka_Input_Born_Month2:
37940 case 1:
37950 pause 200:goto Buka_Input_Born_Month2:
37960 end select
37970 endif
37980 '左へボタン 十字キー　左　or 　カーソル左
37990 if ((y2 = -1) or (key$ = chr$(29))) then
38000 select case No
38010 'Ok ボタン  Okから　左　０に行く
38020 case -1:
38030 No=0:sp_on 13,1:sp_on 14,0
38040 pause 200:goto Buka_Input_Born_Month2:
38050 '0 ボタン  左　何もしない
38060 case 0:
38070 pause 200:goto Buka_Input_Born_Month2:
38080 case 3:
38090 No=2:sp_on 9,1:sp_on 12,0:
38100 pause 200:goto Buka_Input_Born_Month2:
38110 case 2:
38120 No=1:sp_on 6,1:sp_on 9,0:
38130 pause 200:goto Buka_Input_Born_Month2:
38140 case 1:
38150 pause 200:goto Buka_Input_Born_Month2:
38160 case 6:
38170 No=5:sp_on 8,1:sp_on 11,0
38180 pause 200:goto Buka_Input_Born_Month2:
38190 case 5:
38200 No=4:sp_on 5,1:sp_on 8,0
38210 pause 200:goto Buka_Input_Born_Month2:
38220 case 4:
38230 pause 200:goto Buka_Input_Born_Month2:
38240 case 9:
38250 No=8:sp_on 7,1:sp_on 10,0
38260 pause 200:goto Buka_Input_Born_Month2:
38270 case 8:
38280 No=7:sp_on 4,1:sp_on 7,0
38290 pause 200:goto Buka_Input_Born_Month2:
38300 case 7:
38310 pause 200:goto Buka_Input_Born_Month2:
38320 end select
38330 endif
38340 '右  十字キー　右　or カーソル　右
38350 if ((y2 = 1) or (key$ = chr$(28))) then
38360 select case No
38370 '0ボタンからokボタン右に移動
38380 case 0:
38390 No=-1:sp_on 14,1:sp_on 13,0
38400 pause 200:goto Buka_Input_Born_Month2:
38410 '0ボタンからokボタン 右に移動　ここまで
38420 'OKボタンで右を押して何もしない
38430 case -1:
38440 pause 200:goto Buka_Input_Born_Month2:
38450 case 1:
38460 No=2:sp_on 9,1:sp_on 6,0
38470 pause 200:goto Buka_Input_Born_Month2:
38480 case 2:
38490 No=3:sp_on 12,1:sp_on 9,0
38500 pause 200:goto Buka_Input_Born_Month2:
38510 case 3:
38520 pause 200:goto Buka_Input_Born_Month2:
38530 case 4:
38540 No=5:sp_on 8,1:sp_on 5,0
38550 pause 200:goto Buka_Input_Born_Month2:
38560 case 5:
38570 No=6:sp_on 11,1:sp_on 8,0
38580 pause 200:goto Buka_Input_Born_Month2:
38590 case 7:
38600 No=8:sp_on 7,1:sp_on 4,0
38610 pause 200:goto Buka_Input_Born_Month2:
38620 case 8:
38630 No=9:sp_on 10,1:sp_on 7,0
38640 pause 200:goto Buka_Input_Born_Month2:
38650 case 9:
38660 pause 200:goto Buka_Input_Born_Month2:
38670 case 6:
38680 pause 200:goto Buka_Input_Born_Month2:
38690 end select
38700 'Okから右ボタンを押して何もしない ここまで
38710 endif
38720 '十字キー　ここまで
38730 '右の丸ボタン　決定キー
38740 if ((bg=2) or (key$=chr$(13))) then
38750 select case count
38760 case 0:
38770 count=1:buf_buka_Month$="**":buf_buka_Month$=str$(No):buf_buka_month=No
38780 buf_Buka_Born_Day(1)=buf_buka_month
38790 locate 1,3
38800 color RGB(255,255,255)
38810 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
38820 goto Buka_Input_Born_Month2:
38830 case 1:
38840 count = 2:c = No
38850 c = val(buf_buka_Month$)
38860 if (No = -1) then
38870 'count=0
38880 month=buf_buka_month
38890 buf_buka_month=val(buf_buka_Month$)
38900 month=buf_buka_month
38910 '生まれた日に飛ぶ
38920 goto Buka_Input_Born_Day:
38930 else
38940 buf_buka_month = c*10 + No
38950 buf_buka_Month$= str$(buf_buka_month)
38960 buf_Buka_Born_Day(1)=buf_buka_month
38970 locate 1,3
38980 color Rgb(255,255,255)
38990 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
39000 goto Buka_Input_Born_Month2:
39010 endif
39020 case 2:
39030 count=3
39040 'c= val(buf_Month$)
39050 'buf_month = c*10 + No
39060 'buf_Month$ = str$(buf_month)
39070 'locate 2,3
39080 'print "部下の生まれた月(1月～12月):";buf_Month$
39090 'goto Buka_Input_Born_Month2:
39100 'case 3:
39110 'count=4
39120 'b=val(buf_month$)
39130 'buf_month=c*10+No
39140 'buf_Month$=str$(buf_month)
39150 'locate 2,3
39160 'print "部下の生まれた月(1月～12月):";buf_Month$
39170 'buf_month=val(buf_Month$)
39180 'year=val(buf_year$)
39190 if (No=-1) then
39200 goto Buka_Input_Born_Day:
39210 else
39220 'goto Input_Born_Month2:
39230 endif
39240 'case 4:
39250 'bufyear=buf_year
39260 'if (No=-1) then
39270 'buf_month = val(buf_Month$)
39280 'month = buf_month
39290 'sp_on 14,0
39300 'goto Input_Born_Day:
39310 'else
39320 'goto Input_Born_Month2:
39330 'endif
39340 end select
39350 endif
39360 '左の丸ボタン　キャンセル
39370 if (bg2=2) then
39380 select case count2
39390 case 0:
39400 if (No = -1) then
39410 buf_buka_month=0:buf_buka_Month$="**"
39420 count=0
39430 goto rewrite2:
39440 else
39450 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
39460 buf_month=0:buf_Month$="**"
39470 locate 2,3
39480 color rgb(255,255,255)
39490 print "                                       "
39500 goto rewrite2:
39510 if (No>12) then
39520 ui_msg"値が範囲外です。"
39530 goto rewrite2:
39540 endif
39550 endif
39560 endif
39570 rewrite2:
39580 locate 2,3
39590 color rgb(255,255,255)
39600 print "                                      "
39610 locate 2,3
39620 print "部下の生まれた月(1月~12月):";buf_buka_Month$
39630 goto Buka_Input_Born_Month2:
39640 end select
39650 'endif
39660 endif
39670 end
39680 '2.部下の生まれた月'
39690 '3.部下の生まれた日'
39700 '生れた日を入力
39710 Buka_Input_Born_Day:
39720 '生まれた日入力
39730 cls 3:play ""
39740 'No=-1:Okのとき
39750 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
39760 for i=0 to 1
39770 buf_day(i)=0
39780 next i
39790 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
39800 gload Gazo$ + "Screen1.png",0,0,0
39810 gload Gazo$ + "downscreen.png",0,0,800
39820 'Init"kb:2"
39830 '音声ファイル再生 2023.06.07
39840 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
39850 font 48
39860 locate 0,1
39870 '文字色：黒　 color rgb(0,0,0)
39880 color rgb(255,255,255)
39890 print "部下の生まれた日を入れて下さい" + chr$(13)
39900 color rgb(255,255,255)
39910 locate 1,3
39920 print "部下の生まれた日(1日~31日):";buf_Day$
39930 color rgb(255,255,255)
39940 'locate 4,6:print ":7"
39950 'locate 9,6:print ":8"
39960 'locate 12,6:print ":9"
39970 locate 4,6
39980 print ":7  :8  :9" + chr$(13)
39990 color rgb(255,255,255)
40000 locate 4,8
40010 print ":4  :5  :6" + chr$(13)
40020 color rgb(255,255,255)
40030 locate 4,10
40040 print ":1  :2  :3" + chr$(13)
40050 locate 4,12
40060 print "    :0"
40070 locate 12,12
40080 color rgb(0,0,255)
40090 print ":Ok"
40100 sp_on 4,0: sp_on 5,0:sp_on 6,0
40110 sp_on 7,0:sp_on 8,0:sp_on 9,0
40120 sp_on 10,0:sp_on 11,0:sp_on 12,0
40130 sp_on 13,0:sp_on 14,1
40140 Buka_Input_Born_Day2:
40150 key$="":bg=0:y=0:y2=0:bg2=0
40160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
40170 key$ = inkey$
40180 bg = strig(1)
40190 y = stick(1)
40200 y2 = stick(0)
40210 bg2 = strig(0)
40220 pause 5
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
40330 pause 200:goto Buka_Input_Born_Day2:
40340 '選択肢:3
40350 '3ボタンから 6に移動
40360 case 3:
40370 No=6:sp_on 12,0:sp_on 11,1
40380 pause 200:goto Buka_Input_Born_Day2:
40390 '6ボタンから ９に移動
40400 case 6:
40410 No=9:sp_on 10,1:sp_on 11,0
40420 pause 200:goto Buka_Input_Born_Day2:
40430 '6ボタンから ９に移動　ここまで
40440 '9で上を押して何もしない
40450 case 9:
40460 '何もしない
40470 No=9
40480 pause 200:goto Buka_Input_Born_Day2:
40490 '9で上を押しても何もしない　ここまで
40500 '上　 0ボタンから2ボタン
40510 'sp_on 6,1:1
40520 'sp_on 8,1:5
40530 'sp_on 7,1:7
40540 case 0:
40550 No=2:sp_on 13,0:sp_on 9,1:
40560 pause 200:goto Buka_Input_Born_Day2:
40570 '上  0ボタンから2ボタン　ここまで
40580 '2から５になる 上
40590 case 2:
40600 No=5:sp_on 8,1:sp_on 9,0:
40610 pause 200:goto Buka_Input_Born_Day2:
40620 case 5:
40630 No=8:sp_on 7,1:sp_on 8,0
40640 pause 200:goto Buka_Input_Born_Day2:
40650 case 8:
40660 pause 200:goto Buka_Input_Born_Day2:
40670 case 1:
40680 No=4:sp_on 5,1:sp_on 6,0
40690 pause 200:goto Buka_Input_Born_Day2:
40700 case 4:
40710 No=7:sp_on 4,1:sp_on 5,0
40720 pause 200:goto Buka_Input_Born_Day2:
40730 case 7:
40740 pause 200:goto Buka_Input_Born_Day2:
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
40850 pause 200:goto Buka_Input_Born_Day2:
40860 '6から３に下げる
40870 case 6:
40880 No=3:sp_on 12,1:sp_on 11,0
40890 pause 200:goto Buka_Input_Born_Day2:
40900 '3から０ｋに変える
40910 case 3:
40920 No=-1:sp_on 14,1:sp_on 12,0
40930 pause 200:goto Buka_Input_Born_Day2:
40940 'Okから下のボタンを押しても何もしない
40950 case -1:
40960 pause 200:goto Buka_Input_Born_Day2:
40970 case 8:
40980 No=5:sp_on 8,1:sp_on 7,0
40990 pause 200:goto Buka_Input_Born_Day2:
41000 case 5:
41010 No=2:sp_on 9,1:sp_on 8,0
41020 pause 200:goto Buka_Input_Born_Day2:
41030 case 2:
41040 No=0:sp_on 13,1:sp_on 9,0
41050 pause 200:goto Buka_Input_Born_Day2:
41060 case 0:
41070 pause 200:goto Buka_Input_Born_Day2:
41080 case 7:
41090 No=4:sp_on 5,1:sp_on 4,0
41100 pause 200:goto Buka_Input_Born_Day2:
41110 case 4:
41120 No=1:sp_on 6,1:sp_on 5,0
41130 pause 200:goto Buka_Input_Born_Day2:
41140 case 1:
41150 pause 200:goto Buka_Input_Born_Day2:
41160 end select
41170 endif
41180 '左へボタン 十字キー　左　or 　カーソル左
41190 if ((y2 = -1) or (key$ = chr$(29))) then
41200 select case No
41210 'Ok ボタン  Okから　左　０に行く
41220 case -1:
41230 No=0:sp_on 13,1:sp_on 14,0
41240 pause 200:goto Buka_Input_Born_Day2:
41250 '0 ボタン  左　何もしない
41260 case 0:
41270 pause 200:goto Buka_Input_Born_Day2:
41280 case 3:
41290 No=2:sp_on 9,1:sp_on 12,0:
41300 pause 200:goto Buka_Input_Born_Day2:
41310 case 2:
41320 No=1:sp_on 6,1:sp_on 9,0:
41330 pause 200:goto Buka_Input_Born_Day2:
41340 case 1:
41350 pause 200:goto Buka_Input_Born_Day2:
41360 case 6:
41370 No=5:sp_on 8,1:sp_on 11,0
41380 pause 200:goto Buka_Input_Born_Day2:
41390 case 5:
41400 No=4:sp_on 5,1:sp_on 8,0
41410 pause 200:goto Buka_Input_Born_Day2:
41420 case 4:
41430 pause 200:goto Buka_Input_Born_Day2:
41440 case 9:
41450 No=8:sp_on 7,1:sp_on 10,0
41460 pause 200:goto Buka_Input_Born_Day2:
41470 case 8:
41480 No=7:sp_on 4,1:sp_on 7,0
41490 pause 200:goto Buka_Input_Born_Day2:
41500 case 7:
41510 pause 200:goto Buka_Input_Born_Day2:
41520 end select
41530 endif
41540 '右  十字キー　右　or カーソル　右
41550 if ((y2 = 1) or (key$ = chr$(28))) then
41560 select case No
41570 '0ボタンからokボタン右に移動
41580 case 0:
41590 No=-1:sp_on 14,1:sp_on 13,0
41600 pause 200:goto Buka_Input_Born_Day2:
41610 '0ボタンからokボタン 右に移動　ここまで
41620 'OKボタンで右を押して何もしない
41630 case -1:
41640 pause 200:goto Buka_Input_Born_Day2:
41650 case 1:
41660 No=2:sp_on 9,1:sp_on 6,0
41670 pause 200:goto Buka_Input_Born_Day2:
41680 case 2:
41690 No=3:sp_on 12,1:sp_on 9,0
41700 pause 200:goto Buka_Input_Born_Day2:
41710 case 3:
41720 pause 200:goto Buka_Input_Born_Day2:
41730 case 4:
41740 No=5:sp_on 8,1:sp_on 5,0
41750 pause 200:goto Buka_Input_Born_Day2:
41760 case 5:
41770 No=6:sp_on 11,1:sp_on 8,0
41780 pause 200:goto Buka_Input_Born_Day2:
41790 case 7:
41800 No=8:sp_on 7,1:sp_on 4,0
41810 pause 200:goto Buka_Input_Born_Day2:
41820 case 8:
41830 No=9:sp_on 10,1:sp_on 7,0
41840 pause 200:goto Buka_Input_Born_Day2:
41850 case 9:
41860 pause 200:goto Buka_Input_Born_Day2:
41870 case 6:
41880 pause 200:goto Buka_Input_Born_Day2:
41890 end select
41900 'Okから右ボタンを押して何もしない ここまで
41910 endif
41920 '十字キー　ここまで
41930 '右の丸ボタンを押したとき
41940 if ((bg = 2) or (key$ = chr$(13))) then
41950 'count :決定ボタンを押した回数
41960 select case (count)
41970 '1桁目入力
41980 case 0:
41990 count = 1:
42000 if (No = -1) then
42010 '1桁目　OKでは何もしない
42020 'goto check:
42030 No=0
42040 else
42050 'ok以外のボタンを押したとき
42060 buf_buka_day = No:buf_buka_Day$=str$(No)
42070 c=No
42080 buf_Buka_Born_Day(2)=buf_buka_day
42090 locate 1,3
42100 print"                                      "
42110 color RGB(255,255,255)
42120 locate 1,3
42130 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
42140 endif
42150 check2:
42160 if (No >= 1 and No <= 9) then
42170 sp_on 14,0
42180 goto Buka_Input_Born_Day2:
42190 else
42200 sp_on 14,0
42210 goto Result_Business_Aisyou:
42220 end
42230 endif
42240 case 1:
42250 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
42260 count = 2:
42270 'locate 2,3
42280 'color RGB(255,255,255)
42290 'print "生まれた日(1日~31日):";buf_Day$
42300 'Okボタンを押したときの処理
42310 '入力値　10未満のとき
42320 'c = buf_day
42330 if (No = -1) then
42340 'c=buf_day
42350 ' buf_day = c
42360 'buf_Day$ = str$(buf_day)
42370 '10以下のとき
42380 No=0
42390 if (buf_day < 10) then
42400 sp_on 14,0
42410 goto Result_Business_Aisyou:
42420 end
42430 endif
42440 else
42450 sp_on 14,0
42460 'c=No
42470 buf_buka_day = c * 10 + No
42480 buf_buka_Day$ = str$(buf_buka_day)
42490 buf_Buka_Born_Day(2) = buf_buka_day
42500 locate 1,3
42510 color Rgb(255,255,255)
42520 print "                                       "
42530 locate 1,3
42540 print "生まれた日(1日~31日):" + buf_buka_Day$
42550 goto Buka_Input_Born_Day2:
42560 endif
42570 '生まれた日　2桁目の数字　or 1桁の数字 + ok
42580 case 2:
42590 count=0
42600 'c=val(buf_Day$)
42610 'buf_day=c*10+No
42620 'buf_Day$=str$(buf_day)
42630 'day=buf_day
42640 'locate 2,3
42650 'print "生まれた日(1日〜31日):";buf_Day$
42660 'No=-1:ok ボタンを押したとき
42670 if (No = -1) then No=0
42680 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
42690 sp_on 14,0
42700 goto Result_Business_Aisyou:
42710 else
42720 goto Buka_Input_Born_Day2:
42730 endif
42740 'Okボタン以外を押したとき
42750 else
42760 c=val(buf_buka_Day$)
42770 buf_buka_day = c * 10 + No
42780 buf_buka_Day$ = str$(buf_buka_day)
42790 locate 1,3
42800 print "                "
42810 locate 1,3
42820 print "生まれた日(1日~31日):"+buf_buka_Day$
42830 goto Buka_Input_Born_Day2:
42840 'endif
42850 case 3:
42860 count=4
42870 'c=val(buf_day$)
42880 'buf_day=c*10+No
42890 'buf_day$=str$(buf_day)
42900 'locate 2,3
42910 'print "生まれた日を入れてください:";buf_day$
42920 'year=val(buf_year$)
42930 if (No = -1) then
42940 'goto Buka_Input_Born_Day:
42950 sp_on 14,0:
42960 goto complate_jyoushi:
42970 else
42980 goto Buka_Input_Born_Month2:
42990 endif
43000 'case 4:
43010 'bufyear=buf_year
43020 'if (No=-1) then
43030 'buf_day = val(buf_day$)
43040 'bufday = buf_day
43050 'sp_on 14,0
43060 goto complate_jyoushi:
43070 'else
43080 'goto Buka_Input_Born_Day2:
43090 'endif
43100 end select
43110 endif
43120 if (bg2=2) then
43130 select case count2
43140 case 0:
43150 if (No=-1) then
43160 'buf_day=0:buf_Day$="**"
43170 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
43180 count=0
43190 buf_buka_day=0:buf_buka_Day$="**"
43200 goto rewrite_day3:
43210 else
43220 buf_buka_day=0:buf_buka_Day$="**"
43230 ui_msg"値が範囲外です"
43240 endif
43250 goto rewrite_day3:
43260 else
43270 goto rewrite_day3:
43280 endif
43290 rewrite_day3:
43300 locate 2,3
43310 color rgb(255,255,255)
43320 print "                                      "
43330 locate 1,3
43340 print "生まれた日(1日~31日):"+buf_buka_Day$
43350 goto Buka_Input_Born_Day2:
43360 end select
43370 endif
43380 '3.部下の生まれた日'
43390 '部下'
43400 '--------------------------------------------'
43410 'ビジネの相性　結果表示
43420 Result_Business_Aisyou:
43430 cls 3:init "kb:4"
43440 a=0:b=0:c=0:d=0:e=0:f=0
43450 bg=0:key$=""
43460 gload Gazo$ + "Screen1.png",0,0,0
43470 gload Gazo$ + "downscreen.png",0,0,800
43480 sp_on 14,0
43490 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
43500 buf_Buka = Kabara_Num(d,e,f)
43510 a_2 = buf_Buka
43520 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
43530 locate 0,1
43540 color rgb(255,0,0)
43550 print "●.相性診断結果１"
43560 locate 0,4:
43570 color rgb(255,255,255)
43580 print "1.上司の名前:";buffer_name$(0)
43590 locate 0,6
43600 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
43610 locate 0,8
43620 print "2.部下の名前:";buffer_name$(1)
43630 locate 0,10
43640 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
43650 locate 0,12
43660 print "3.上司と部下の相性:";Result_Aisyou$
43670 locate 1,15
43680 color rgb(0,0,0)
43690 print "右の丸ボタン:相性の説明"
43700 while ((bg <> 2) and (key$ <> chr$(13)))
43710 bg = strig(1)
43720 key$ = inkey$
43730 pause 5
43740 wend
43750 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
43760 'ビジネスの相性占い　結果2　説明
43770 Result_Business_Aisyou2:
43780 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
43790 gload Gazo$ + "Screen1.png",0,0,0
43800 locate 0,1
43810 color rgb(255,0,0)
43820 print "●.相性の説明"
43830 color rgb(255,255,255)
43840 locate 0,4
43850 print "相性:";Result_Aisyou$
43860 locate 0,6:
43870 print "相性の説明:";buf$
43880 locate 0,15
43890 color rgb(0,0,0)
43900 print "右の丸ボタン:トップ,左のボタン:前の画面"
43910 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
43920 bg = strig(1)
43930 bg2 = strig(0)
43940 key$ = inkey$
43950 pause 5
43960 wend
43970 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
43980 if ((bg2 = 2)) then goto Result_Business_Aisyou:
43990 '自作関数 ここから
44000 func read_explain$(ba$)
44010 d$=""
44020 buf_String$=""
44030 if ba$="A" then
44040 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
44050 line input #1,a$
44060 a1$=mid$(a$,1,12)
44070 a2$=mid$(a$,13,16)
44080 a3$=mid$(a$,30,17)
44090 a4$=mid$(a$,48,18)
44100 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
44110 buf_String$ = a5$
44120 close #1
44130 endif
44140 if ba$="B"  then
44150 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
44160 line input #1,b$
44170 b1$=mid$(b$,1,15)
44180 b2$=mid$(b$,16,21)
44190 'b3$=mid$(b$,33,3)
44200 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
44210 buf_String$ = b4$
44220 close #1
44230 endif
44240 if ba$="C"  then
44250 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
44260 line input #1,c$
44270 c1$ = Mid$(c$,1,15)
44280 c2$ = Mid$(c$,16,33)
44290 c3$ = c1$ + chr$(13) + c2$
44300 buf_String$ = c3$
44310 close #1
44320 endif
44330 if ba$="D" then
44340 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
44350 line input #1,d$
44360 d1$=mid$(d$,1,15)
44370 d2$=mid$(d$,16,22)
44380 d3$=mid$(d$,38,7)
44390 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
44400 buf_String$ = d4$
44410 close #1
44420 endif
44430 if ba$="E"  then
44440 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
44450 line input #1,e$
44460 e1$=Mid$(e$,1,16)
44470 e2$=Mid$(e$,17,16)
44480 e3$=Mid$(e$,33,12)
44490 e4$=Mid$(e$,45,17)
44500 e5$=Mid$(e$,62,17)
44510 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
44520 buf_String$ = e6$
44530 close #1
44540 endif
44550 if ba$="F" then
44560 '改行を追加して表示を調整
44570 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
44580 line input #1,f$
44590 f1$=Mid$(f$,1,15)
44600 f2$=Mid$(f$,16,12)
44610 buf_String$ = f1$+chr$(13)+f2$
44620 close #1
44630 endif
44640 if ba$="G" then
44650 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
44660 line input #1,g$
44670 g1$ = mid$(g$,1,15)
44680 g2$ = mid$(g$,16,34)
44690 g3$ = mid$(g$,35,53)
44700 g4$ = mid$(g$,54,9)
44710 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
44720 buf_String$ = g5$
44730 close #1
44740 endif
44750 if ba$="H" then
44760 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
44770 line input #1,h$
44780 h1$=Mid$(h$,1,17)
44790 h2$=Mid$(h$,18,21)
44800 h3$=Mid$(h$,39,20)
44810 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
44820 buf_String$ = h$
44830 close #1
44840 endif
44850 if ba$="I" then
44860 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
44870 line input #1,i$
44880 i1$=Mid$(i$,1,10)
44890 i2$=Mid$(i$,11,13)
44900 i3$=Mid$(i$,25,16)
44910 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
44920 buf_String$ = i$
44930 close #1
44940 endif
44950 buffer$=buf_String$
44960 endfunc buffer$
44970 'カバラ数（数秘番号を求める）
44980 func Kabara_Num(buffer_Year,month,day)
44990 '=============================
45000 'a1:4桁のうちの1桁目を求める
45010 '例 a1:1234の4が1桁目
45020 'a2:4桁のうちの2桁目を求める
45030 '例:a2:1234の3が2桁目
45040 'a3:4桁のうちの3桁目を求める
45050 '例 a3:1234の2が3桁目
45060 'a4:4桁のうちの4桁目を求める
45070 '例 a4:1234の1が4桁目
45080 '==============================
45090 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
45100 Year = buffer_Year
45110 '処理1　整数部分を取り出す。
45120 a4 = fix(Year / 1000)
45130 a3 = fix(Year / 100) - (a4 * 10)
45140 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
45150 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
45160 '処理　２　取り出した整数部分を足す。
45170 a_ = a1 + a2 + a3 + a4 +month + day
45180 'a1=0:a2=0:a3=0:a4=0
45190 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
45200 buffer = a_
45210 'else
45220 goto recomp2:
45230 'if (a_ = 10) then
45240 '  buffer = 1
45250 endif
45260 recomp2:
45270 a5=0:a6=0
45280 a5 = fix(a_ / 10)
45290 a6 = (a_) - (a5 * 10)
45300 a_ = a5 + a6
45310 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
45320 '結果に行く
45330 goto Res2:
45340 '  if ((a_>11) and (a_<99)) then
45350 else
45360 '再度計算
45370 goto recomp2:
45380 endif
45390 '     a1 = fix(a_ / 10)
45400 '     a2 = a_ - (a1 * 10)
45410 '     a_ = a1 + a2
45420 '     buffer = a_
45430 'endif
45440 'else
45450 '    bffer = a_
45460 'endif
45470 'endif
45480 'else
45490 'talk "プログラムを終了します。"
45500 'end
45510 'endif
45520 'kabara = 10
45530 Res2:
45540 kabara = a_
45550 endfunc kabara
45560 func Kabara_Aisyou$(buff1,buff2)
45570 a=0:b=0
45580 '範囲　1~9
45590 if ((buff1 > 0 and buff1 < 10)) then
45600 a = buff1
45610 else
45620 Select case buff1
45630 case 11:
45640 buff1=9:a=buff1
45650 case 22:
45660 buff1=10:a=buff1
45670 end select
45680 endif
45690 '範囲　１~９
45700 if ((buff2 > 0 and buff2 < 10)) then
45710 b = buff2
45720 else
45730 select case buff2
45740 case 11:
45750 buff2=9:b=buff2
45760 case 12:
45770 buff2=10:b=buff2
45780 end select
45790 endif
45800 Aisyou$ = Buffer_Business_Aisyou$(a,b)
45810 endfunc Aisyou$
45820 '=============================
45830 '自作関数 ここまで
45840 '1.数秘術　トップ画面
45850 '
45860 'Data_eraseを一番最後に持ってくる
45870 '=============================
45880 Data_erase:
45890 'メモリー削除
45900 erase buf_name1$
45910 erase buf_name2$
45920 erase buffer
45930 erase buf_chart$
45940 erase Buffer_Business_Aisyou$
45950 erase buffer_name$
45960 '上司の誕生日
45970 erase buf_Jyoushi_Born_Day
45980 '部下の誕生日
45990 erase buf_Buka_Born_Day
46000 erase buf_year
46010 erase buf_month
46020 erase buf_day
46030 buffer$ = ""
46040 buf$ = ""
46050 buf_year$ = ""
46060 buf_Jyoushi_Kabara_Num = 0
46070 buf_Buka_Kabara_Num = 0
46080 count = 0
46090 buf_Month$ = ""
46100 buf_Day$ = ""
46110 b=0
46120 c=0
46130 return
