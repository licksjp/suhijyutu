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
320 Version$ = "Ver:1.1.2_20230827"
330 'Gazo file Folder
340 Gazo$ = "./data/Picture/"
350 'Voice files 2023
360 Voice$ = "./data/Voice/Voice/"
370 'BirtheyeChart Data:20230626
380 Birth_eye_chart$ = "./data/chart_data/"
390 'Data File
400 Data$ = "./data/data/"
410 'Business Aisyou 結果説明保存フォルダ
420 Business_Aisyou_Explain$="./data/data/Business_Aisyou/"
430 '変数定義 パート
440 b=0:c=0
450 dim buf_name1$(10),buf_name2$(10)
460 dim buffer(9),buf_chart$(26,2)
470 'ビジネスの相性　データー
480 dim Buffer_Business_Aisyou$(12,12)
490 '生れた年代
500 dim buf_year(4):buf_year$=""
510 dim buf_month(2)
520 dim buf_day(2)
530 '生れた月
540 buf_Month$ = ""
550 '生れた日
560 buf_Day$ = ""
570 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
580 dim buffer_name$(3)
590 '1-1.上司の誕生日(数値データー)
600 dim buf_Jyoushi_Born_Day(3)
610 '1-2.上司の数秘ナンバー(数値データー)
620 buf_Jyoushi_Kabara_Num = 0
630 '2-1.部下の誕生日(数値データー)
640 dim buf_Buka_Born_Day(3)
650 '2-2.部下の数秘ナンバー(数秘データー)
660 buf_Buka_Kabara_Num = 0
670 count=0
680 '部下の数秘ナンバー
690 'File 読み込み
700 '1.ビジネスの相性占い
710 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
720 for i=0 to 11
730 for j=0 to 11
740 input #1,a$
750 Buffer_Business_Aisyou$(j,i) = a$
760 next j
770 next i
780 close #1
790 '2.Birth Eye chart$
800 '2.バーズアイグリッドを読み込む
810 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
820 for j=0 to 25
830 for i=0 to 1
840 input #1,a$
850 buf_chart$(j,i) = a$
860 next i
870 next j
880 close #1
890 'File 読み込み　ここまで
900 'Main画面
910 screen 1,1,1,1
920 Main_Screen:
930 cls 3:
940 No=0
950 gload Gazo$ + "Selection.png",1,5,200
960 gload Gazo$ + "Selection.png",1,5,300
970 gload Gazo$ + "Selection.png",1,5,400
980 gload Gazo$ + "Selection.png",1,5,500
990 '4
1000 gload Gazo$ + "Selection.png",1,35,300
1010 '5
1020 gload Gazo$ + "Selection.png",1,35,400
1030 '6
1040 gload Gazo$ + "Selection.png",1,35,500
1050 '7
1060 gload Gazo$ + "Selection.png",1,70,300
1070 '8
1080 gload Gazo$ + "Selection.png",1,70,400
1090 '9
1100 gload Gazo$ + "Selection.png",1,70,500
1110 '10
1120 gload Gazo$ + "Selection.png",1,110,300
1130 '11
1140 gload Gazo$ + "Selection.png",1,110,400
1150 '12
1160 gload Gazo$ + "Selection.png",1,110,500
1170 '13:0
1180 gload Gazo$ + "Selection.png",1,150,400
1190 gload Gazo$ + "Selection.png",1,200,400
1200 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1210 gload Gazo$ + "downscreen.png",0,0,800
1220 sp_def 0,(5,300),32,32
1230 sp_def 1,(5,400),32,32
1240 sp_def 2,(5,500),32,32
1250 sp_def 3,(5,600),32,32
1260 '1
1270 sp_def 4,(35,300),32,32
1280 '2
1290 sp_def 5,(35,400),32,32
1300 '3
1310 sp_def 6,(35,500),32,32
1320 '4
1330 sp_def 7,(70,300),32,32
1340 '5
1350 sp_def 8,(70,400),32,32
1360 '6
1370 sp_def 9,(70,500),32,32
1380 '7
1390 sp_def 10,(110,300),32,32
1400 '8
1410 sp_def 11,(110,400),32,32
1420 '9
1430 sp_def 12,(110,400),32,32
1440 sp_def 13,(150,400),32,32
1450 sp_def 14,(200,400),32,32
1460 'Sprite OFF
1470 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1480 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1490 sp_put 0,(5,300),0,0
1500 sp_put 1,(5,400),1,0
1510 sp_put 2,(5,500),2,0
1520 sp_put 3,(5,600),3,0
1530 '1
1540 sp_put 4,(130,300),4,0
1550 '2
1560 sp_put 5,(130,400),5,0
1570 '3
1580 sp_put 6,(130,500),6,0
1590 '4
1600 sp_put 7,(340,300),7,0
1610 '5
1620 sp_put 8,(340,400),8,0
1630 '6
1640 sp_put 9,(340,500),9,0
1650 '7
1660 sp_put 10,(540,300),10,0
1670 '8
1680 sp_put 11,(540,400),11,0
1690 '9
1700 sp_put 12,(540,500),12,0
1710 '
1720 sp_put 13,(340,600),13,0
1730 sp_put 14,(540,600),14,0
1740 Main_Top:
1750 'Main Message 2023.06.07
1760 '再生を止める
1770 play ""
1780 init "kb:4"
1790 'font 32:
1800 font 48
1810 print chr$(13) + chr$(13) + chr$(13)
1820 color rgb(217,255,212)
1830 print "番号を選んでください" + chr$(13)
1840 '0
1850 print " :1.数秘術占い" + chr$(13)
1860 '1
1870 print " :2.設 定" + chr$(13)
1880 '2
1890 print " :3.ヘルプ" + chr$(13)
1900 '3
1910 print " :4.(プログラムを)終了する" + chr$(13)
1920 COLOR rgb(0,0,0):No=0
1930 locate 1,15
1940 print "                                       "
1950 locate 1,15:print "1.数秘術占いを選択"
1960 play Voice$ + "Voice_Main_Message_20230607.mp3"
1970 Main_Screen_Select:
1980 y = 0:key$ = "":bg = 0:bg2=0
1990 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2000 y = stick(1)
2010 '"May (2023)"
2020 key$ = inkey$
2030 bg = strig(1)
2040 bg2 = strig(0)
2050 pause 2
2060 wend
2070 '1.
2080 'ジョイパッドのソース ソート　ここから
2090 'カーソル　下 or 十字キー下
2100 if ((y = 1) or (key$ = chr$(31))) then
2110 select case No
2120 case 0:
2130 '1
2140 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2150 case 1:
2160 '2
2170 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2180 case 2:
2190 '3
2200 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2210 case 3:
2220 '0
2230 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2240 end select
2250 endif
2260 '2.
2270 'カーソル　上　or 十字キー  上
2280 if ((y = -1) or (key$ = chr$(30))) then
2290 select case No
2300 case 0:
2310 '3
2320 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2330 case 1:
2340 '0
2350 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2360 case 2:
2370 '1
2380 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2390 case 3:
2400 '2
2410 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2420 end select
2430 endif
2440 'ジョイパッド　ソース 部分　ここまで
2450 'ジョイパッド右　　or Enter key 決定
2460 if ((bg = 2) OR (key$ = chr$(13))) then
2470 select case No
2480 case 0:
2490 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2500 case 1:
2510 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2520 case 2:
2530 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2540 case 3:
2550 play "":pause 200
2560 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2570 end select
2580 endif
2590 if (bg2 = 2) then
2600 play "":pause 200
2610 play Voice$ + "Voice_Main_Message_20230607.mp3"
2620 goto Main_Screen_Select:
2630 endif
2640 'Version
2650 Version:
2660 cls 3:PLAY ""
2670 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2680 gload Gazo$ + "downscreen.png",0,0,800
2690 init"kb:4":font 32
2700 'talk"バージョン情報です"
2710 'Message :Version
2720 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2730 locate 0,5
2740 color rgb(0,0,0)
2750 print "・Title:数秘術占い";chr$(13)
2760 print "・" + Version$ + chr$(13)
2770 print "・Author:licksjp"+chr$(13)
2780 print "・E-mail:licksjp@gmail.com" + chr$(13)
2790 locate 0,18
2800 print "(C)licksjp All rights " + chr$(13)
2810 locate 13,19
2820 print "reserved since 2009"+chr$(13)
2830 locate 0,23
2840 color rgb(255,255,255)
2850 print "ジョイパッドの右を押してください"
2860 Versionn_Selection:
2870 bg = 0:key$ = "":bg2 = 0
2880 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2890 bg = strig(1)
2900 key$ = inkey$
2910 bg2 = strig(0)
2920 pause 2
2930 wend
2940 if ((bg = 2) or (key$ = chr$(13))) then
2950 pause 200:cls 4:goto Main_Screen:
2960 endif
2970 if (bg2=2) then
2980 play "":pause 200
2990 play Voice$ + "Voice_Version_Message_20230607.mp3"
3000 goto Versionn_Selection:
3010 endif
3020 '1.数秘ナンバーを求める
3030 '誕生日入力(生れた年代)
3040 Input_Seireki:
3050 cls 3:play "":count=0:count2=0
3060 'No=-1:Okのとき
3070 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3080 for i=0 to 3
3090 buf_year(i)=0
3100 next i
3110 gload Gazo$ + "Screen1.png",0,0,0
3120 gload Gazo$ + "downscreen.png",0,0,800
3130 'Init"kb:2"
3140 '音声ファイル再生 2023.06.07
3150 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3160 font 48
3170 locate 0,1
3180 '文字色：黒　 color rgb(0,0,0)
3190 color rgb(255,255,255)
3200 print "生まれた年代を入れて下さい" + chr$(13)
3210 color rgb(255,255,255)
3220 locate 2,3
3230 print "生まれた年代(西暦4桁):";buf_year$
3240 color rgb(255,0,0)
3250 'locate 4,6:print ":7"
3260 'locate 9,6:print ":8"
3270 'locate 12,6:print ":9"
3280 locate 4,6
3290 print ":7  :8  :9" + chr$(13)
3300 color rgb(255,0,0)
3310 locate 4,8
3320 print ":4  :5  :6" + chr$(13)
3330 color rgb(255,0,0)
3340 locate 4,10
3350 print ":1  :2  :3" + chr$(13)
3360 locate 4,12
3370 print "    :0"
3380 locate 12,12
3390 color rgb(0,0,255)
3400 print ":Ok"
3410 sp_on 4,0: sp_on 5,0:sp_on 6,0
3420 sp_on 7,0:sp_on 8,0:sp_on 9,0
3430 sp_on 10,0:sp_on 11,0:sp_on 12,0
3440 sp_on 13,0:sp_on 14,1
3450 Input_Seireki2:
3460 key$="":bg=0:y=0:y2=0:bg2=0:
3470 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3480 key$ = inkey$
3490 bg = strig(1)
3500 y = stick(1)
3510 y2 = stick(0)
3520 bg2=strig(0)
3530 pause 5
3540 wend
3550 '十字キー　ここから
3560 '上の矢印　または、十字キー上
3570 if ((y = -1) or (key$ = chr$(30))) then
3580 select case No
3590 'No=-1:okのとき:初期の状態
3600 '0kボタンから３に移動
3610 '上に行く 処理
3620 case -1:
3630 No=3:sp_on 12,1:sp_on 14,0
3640 pause 200:goto Input_Seireki2:
3650 '選択肢:3
3660 '3ボタンから 6に移動
3670 case 3:
3680 No=6:sp_on 12,0:sp_on 11,1
3690 pause 200:goto Input_Seireki2:
3700 '6ボタンから ９に移動
3710 case 6:
3720 No=9:sp_on 10,1:sp_on 11,0
3730 pause 200:goto Input_Seireki2:
3740 '6ボタンから ９に移動　ここまで
3750 '9で上を押して何もしない
3760 case 9:
3770 '何もしない
3780 No=9
3790 pause 200:goto Input_Seireki2:
3800 '9で上を押しても何もしない　ここまで
3810 '上　 0ボタンから2ボタン
3820 'sp_on 6,1:1
3830 'sp_on 8,1:5
3840 'sp_on 7,1:7
3850 case 0:
3860 No=2:sp_on 13,0:sp_on 9,1:
3870 pause 200:goto Input_Seireki2:
3880 '上  0ボタンから2ボタン　ここまで
3890 '2から５になる 上
3900 case 2:
3910 No=5:sp_on 8,1:sp_on 9,0:
3920 pause 200:goto Input_Seireki2:
3930 case 5:
3940 No=8:sp_on 7,1:sp_on 8,0
3950 pause 200:goto Input_Seireki2:
3960 case 8:
3970 pause 200:goto Input_Seireki2:
3980 case 1:
3990 No=4:sp_on 5,1:sp_on 6,0
4000 pause 200:goto Input_Seireki2:
4010 case 4:
4020 No=7:sp_on 4,1:sp_on 5,0
4030 pause 200:goto Input_Seireki2:
4040 case 7:
4050 pause 200:goto Input_Seireki2:
4060 end select
4070 endif
4080 '左３　ここまで
4090 '下の矢印
4100 '中央 2
4110 if ((y=1) or (key$ = chr$(31))) then
4120 select case No
4130 '9から６に下げる
4140 case 9:
4150 No=6:sp_on 11,1:sp_on 10,0
4160 pause 200:goto Input_Seireki2:
4170 '6から３に下げる
4180 case 6:
4190 No=3:sp_on 12,1:sp_on 11,0
4200 pause 200:goto Input_Seireki2:
4210 '3から０ｋに変える
4220 case 3:
4230 No=-1:sp_on 14,1:sp_on 12,0
4240 pause 200:goto Input_Seireki2:
4250 'Okから下のボタンを押しても何もしない
4260 case -1:
4270 pause 200:goto Input_Seireki2:
4280 case 8:
4290 No=5:sp_on 8,1:sp_on 7,0
4300 pause 200:goto Input_Seireki2:
4310 case 5:
4320 No=2:sp_on 9,1:sp_on 8,0
4330 pause 200:goto Input_Seireki2:
4340 case 2:
4350 No=0:sp_on 13,1:sp_on 9,0
4360 pause 200:goto Input_Seireki2:
4370 case 0:
4380 pause 200:goto Input_Seireki2:
4390 case 7:
4400 No=4:sp_on 5,1:sp_on 4,0
4410 pause 200:goto Input_Seireki2:
4420 case 4:
4430 No=1:sp_on 6,1:sp_on 5,0
4440 pause 200:goto Input_Seireki2:
4450 case 1:
4460 pause 200:goto Input_Seireki2:
4470 end select
4480 endif
4490 '左へボタン 十字キー　左　or 　カーソル左
4500 if ((y2 = -1) or (key$ = chr$(29))) then
4510 select case No
4520 'Ok ボタン  Okから　左　０に行く
4530 case -1:
4540 No=0:sp_on 13,1:sp_on 14,0
4550 pause 200:goto Input_Seireki2:
4560 '0 ボタン  左　何もしない
4570 case 0:
4580 pause 200:goto Input_Seireki2:
4590 case 3:
4600 No=2:sp_on 9,1:sp_on 12,0:
4610 pause 200:goto Input_Seireki2:
4620 case 2:
4630 No=1:sp_on 6,1:sp_on 9,0:
4640 pause 200:goto Input_Seireki2:
4650 case 1:
4660 pause 200:goto Input_Seireki2:
4670 case 6:
4680 No=5:sp_on 8,1:sp_on 11,0
4690 pause 200:goto Input_Seireki2:
4700 case 5:
4710 No=4:sp_on 5,1:sp_on 8,0
4720 pause 200:goto Input_Seireki2:
4730 case 4:
4740 pause 200:goto Input_Seireki2:
4750 case 9:
4760 No=8:sp_on 7,1:sp_on 10,0
4770 pause 200:goto Input_Seireki2:
4780 case 8:
4790 No=7:sp_on 4,1:sp_on 7,0
4800 pause 200:goto Input_Seireki2:
4810 case 7:
4820 pause 200:goto Input_Seireki2:
4830 end select
4840 endif
4850 '右  十字キー　右　or カーソル　右
4860 if ((y2 = 1) or (key$ = chr$(28))) then
4870 select case No
4880 '0ボタンからokボタン右に移動
4890 case 0:
4900 No=-1:sp_on 14,1:sp_on 13,0
4910 pause 200:goto Input_Seireki2:
4920 '0ボタンからokボタン 右に移動　ここまで
4930 'OKボタンで右を押して何もしない
4940 case -1:
4950 pause 200:goto Input_Seireki2:
4960 case 1:
4970 No=2:sp_on 9,1:sp_on 6,0
4980 pause 200:goto Input_Seireki2:
4990 case 2:
5000 No=3:sp_on 12,1:sp_on 9,0
5010 pause 200:goto Input_Seireki2:
5020 case 3:
5030 pause 200:goto Input_Seireki2:
5040 case 4:
5050 No=5:sp_on 8,1:sp_on 5,0
5060 pause 200:goto Input_Seireki2:
5070 case 5:
5080 No=6:sp_on 11,1:sp_on 8,0
5090 pause 200:goto Input_Seireki2:
5100 case 7:
5110 No=8:sp_on 7,1:sp_on 4,0
5120 pause 200:goto Input_Seireki2:
5130 case 8:
5140 No=9:sp_on 10,1:sp_on 7,0
5150 pause 200:goto Input_Seireki2:
5160 case 9:
5170 pause 200:goto Input_Seireki2:
5180 case 6:
5190 pause 200:goto Input_Seireki2:
5200 end select
5210 'Okから右ボタンを押して何もしない ここまで
5220 endif
5230 '十字キー　ここまで
5240 if ((bg=2) or (key$=chr$(13))) then
5250 select case count
5260 case 0:
5270 count=1
5280 if (No=-1) then
5290 count=0
5300 'Okボタンを押したとき
5310 goto Input_Seireki2:
5320 else
5330 'Okボタン以外が押されたとき
5340 if (No>=1 and No<=2) then
5350 buf_year$="":buf_year$=str$(No)
5360 buf_year=No
5370 locate 2,3
5380 color rgb(255,255,255)
5390 print "生まれた年代(西暦4桁):";buf_year$
5400 goto Input_Seireki2:
5410 else
5420 count=0
5430 ui_msg"数字が範囲外になります。"
5440 buf_year$="":buf_year=0
5450 goto Input_Seireki2:
5460 endif
5470 endif
5480 case 1:
5490 count = 2
5500 if (No = -1) then
5510 count = 1
5520 goto Input_Seireki2:
5530 else
5540 b = val(buf_year$)
5550 buf_year = b * 10 + No
5560 buf_year$ = str$(buf_year)
5570 locate 2,3
5580 color rgb(255,255,255)
5590 print "                                                                "
5600 locate 2,3
5610 print "生まれた年代(西暦4桁):";buf_year$
5620 'if (No = -1) then
5630 'count=1
5640 goto Input_Seireki2:
5650 endif
5660 case 2:
5670 count=3
5680 if (No=-1) then
5690 count =2
5700 goto Input_Seireki2:
5710 else
5720 b = val(buf_year$)
5730 buf_year = b*10 + No
5740 buf_year$ = str$(buf_year)
5750 locate 2,3
5760 color rgb(255,255,255)
5770 print "                                        "
5780 locate 2,3
5790 print "生まれた年代(西暦4桁):";buf_year$
5800 goto Input_Seireki2:
5810 endif
5820 case 3:
5830 count=4
5840 if (No = -1) then
5850 count=3
5860 goto Input_Seireki2:
5870 else
5880 b = val(buf_year$)
5890 buf_year=b*10+No
5900 buf_year$=str$(buf_year)
5910 locate 2,3
5920 color RGB(255,255,255)
5930 print "                                      "
5940 locate 2,3
5950 print "生まれた年代(西暦4桁):";buf_year$
5960 buf_year=val(buf_year$)
5970 'year=val(buf_year$)
5980 'if (No=-1) then
5990 'goto Input_Born_Month:
6000 'else
6010 goto Input_Seireki2:
6020 endif
6030 case 4:
6040 'bufyear=buf_year
6050 if (No=-1) then
6060 buf_year = val(buf_year$)
6070 bufyear = buf_year
6080 sp_on 14,0
6090 goto Input_Born_Month:
6100 else
6110 goto Input_Seireki2:
6120 endif
6130 end select
6140 endif
6150 if (bg2 = 2) then
6160 select case count2
6170 case 0:
6180 if (No = -1) then
6190 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
6200 count=0
6210 locate 2,3
6220 color rgb(255,255,255)
6230 print "                                      "
6240 locate 2,3
6250 print "生まれた年代（西暦4桁):";buf_year$
6260 goto Input_Seireki2:
6270 else
6280 '(buf_year=0) then
6290 buf_year=0:buf_year$="****"
6300 goto Input_Seireki2:
6310 'endif
6320 endif
6330 end select
6340 endif
6350 end
6360 'Input"生れた年代(4桁,〜2025年):",year
6370 'if year > 2025 then goto Input_Seireki:
6380 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6390 '"4桁目"
6400 'bufyear4 = fix(year / 1000)
6410 '"3桁目"
6420 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6430 '"2桁目"
6440 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6450 '"1桁目"
6460 'bufyear1 = fix((year - ((bufyear4*
6470 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6480 '生れた月を入力
6490 Input_Born_Month:
6500 cls 3:play "":count=0:count2=0
6510 'No=-1:Okのとき
6520 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6530 for i=0 to 1
6540 buf_month(i)=0
6550 next i
6560 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
6570 gload Gazo$ + "Screen1.png",0,0,0
6580 gload Gazo$ + "downscreen.png",0,0,800
6590 'Init"kb:2"
6600 '音声ファイル再生 2023.06.07
6610 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
6620 font 48
6630 locate 0,1
6640 '文字色：黒　 color rgb(0,0,0)
6650 '文字色:白
6660 color rgb(255,255,255)
6670 print "生まれた月を入れて下さい" + chr$(13)
6680 '文字色:白
6690 color rgb(255,255,255)
6700 locate 2,3
6710 '文字色:白
6720 print "生まれた月(1月~12月):";buf_Month$
6730 color rgb(255,0,0)
6740 'locate 4,6:print ":7"
6750 'locate 9,6:print ":8"
6760 'locate 12,6:print ":9"
6770 locate 4,6
6780 '文字色:赤
6790 print ":7  :8  :9" + chr$(13)
6800 color rgb(255,0,0)
6810 locate 4,8
6820 print ":4  :5  :6" + chr$(13)
6830 color rgb(255,0,0)
6840 locate 4,10
6850 print ":1  :2  :3" + chr$(13)
6860 locate 4,12
6870 print "    :0"
6880 locate 12,12
6890 color rgb(0,0,255)
6900 print ":Ok"
6910 sp_on 4,0: sp_on 5,0:sp_on 6,0
6920 sp_on 7,0:sp_on 8,0:sp_on 9,0
6930 sp_on 10,0:sp_on 11,0:sp_on 12,0
6940 sp_on 13,0:sp_on 14,1
6950 Input_Born_Month2:
6960 key$="":bg=0:y=0:y2=0:bg2=0
6970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
6980 key$ = inkey$
6990 bg = strig(1)
7000 y = stick(1)
7010 y2 = stick(0)
7020 bg2 = strig(0)
7030 pause 5
7040 wend
7050 '十字キー　ここから
7060 '上の矢印　または、十字キー上
7070 if ((y = -1) or (key$ = chr$(30))) then
7080 select case No
7090 'No=-1:okのとき:初期の状態
7100 '0kボタンから３に移動
7110 '上に行く 処理
7120 case -1:
7130 No=3:sp_on 12,1:sp_on 14,0
7140 pause 200:goto Input_Born_Month2:
7150 '選択肢:3
7160 '3ボタンから 6に移動
7170 case 3:
7180 No=6:sp_on 12,0:sp_on 11,1
7190 pause 200:goto Input_Born_Month2:
7200 '6ボタンから ９に移動
7210 case 6:
7220 No=9:sp_on 10,1:sp_on 11,0
7230 pause 200:goto Input_Born_Month2:
7240 '6ボタンから ９に移動　ここまで
7250 '9で上を押して何もしない
7260 case 9:
7270 '何もしない
7280 No=9
7290 pause 200:goto Input_Born_Month2:
7300 '9で上を押しても何もしない　ここまで
7310 '上　 0ボタンから2ボタン
7320 'sp_on 6,1:1
7330 'sp_on 8,1:5
7340 'sp_on 7,1:7
7350 case 0:
7360 No=2:sp_on 13,0:sp_on 9,1:
7370 pause 200:goto Input_Born_Month2:
7380 '上  0ボタンから2ボタン　ここまで
7390 '2から５になる 上
7400 case 2:
7410 No=5:sp_on 8,1:sp_on 9,0:
7420 pause 200:goto Input_Born_Month2:
7430 case 5:
7440 No=8:sp_on 7,1:sp_on 8,0
7450 pause 200:goto Input_Born_Month2:
7460 case 8:
7470 pause 200:goto Input_Born_Month2:
7480 case 1:
7490 No=4:sp_on 5,1:sp_on 6,0
7500 pause 200:goto Input_Born_Month2:
7510 case 4:
7520 No=7:sp_on 4,1:sp_on 5,0
7530 pause 200:goto Input_Born_Month2:
7540 case 7:
7550 pause 200:goto Input_Born_Month2:
7560 end select
7570 endif
7580 '左３　ここまで
7590 '下の矢印
7600 '中央 2
7610 if ((y=1) or (key$ = chr$(31))) then
7620 select case No
7630 '9から６に下げる
7640 case 9:
7650 No=6:sp_on 11,1:sp_on 10,0
7660 pause 200:goto Input_Born_Month2:
7670 '6から３に下げる
7680 case 6:
7690 No=3:sp_on 12,1:sp_on 11,0
7700 pause 200:goto Input_Born_Month2:
7710 '3から０ｋに変える
7720 case 3:
7730 No=-1:sp_on 14,1:sp_on 12,0
7740 pause 200:goto Input_Born_Month2:
7750 'Okから下のボタンを押しても何もしない
7760 case -1:
7770 pause 200:goto Input_Born_Month2:
7780 case 8:
7790 No=5:sp_on 8,1:sp_on 7,0
7800 pause 200:goto Input_Born_Month2:
7810 case 5:
7820 No=2:sp_on 9,1:sp_on 8,0
7830 pause 200:goto Input_Born_Month2:
7840 case 2:
7850 No=0:sp_on 13,1:sp_on 9,0
7860 pause 200:goto Input_Born_Month2:
7870 case 0:
7880 pause 200:goto Input_Born_Month2:
7890 case 7:
7900 No=4:sp_on 5,1:sp_on 4,0
7910 pause 200:goto Input_Born_Month2:
7920 case 4:
7930 No=1:sp_on 6,1:sp_on 5,0
7940 pause 200:goto Input_Born_Month2:
7950 case 1:
7960 pause 200:goto Input_Born_Month2:
7970 end select
7980 endif
7990 '左へボタン 十字キー　左　or 　カーソル左
8000 if ((y2 = -1) or (key$ = chr$(29))) then
8010 select case No
8020 'Ok ボタン  Okから　左　０に行く
8030 case -1:
8040 No=0:sp_on 13,1:sp_on 14,0
8050 pause 200:goto Input_Born_Month2:
8060 '0 ボタン  左　何もしない
8070 case 0:
8080 pause 200:goto Input_Born_Month2:
8090 case 3:
8100 No=2:sp_on 9,1:sp_on 12,0:
8110 pause 200:goto Input_Born_Month2:
8120 case 2:
8130 No=1:sp_on 6,1:sp_on 9,0:
8140 pause 200:goto Input_Born_Month2:
8150 case 1:
8160 pause 200:goto Input_Born_Month2:
8170 case 6:
8180 No=5:sp_on 8,1:sp_on 11,0
8190 pause 200:goto Input_Born_Month2:
8200 case 5:
8210 No=4:sp_on 5,1:sp_on 8,0
8220 pause 200:goto Input_Born_Month2:
8230 case 4:
8240 pause 200:goto Input_Born_Month2:
8250 case 9:
8260 No=8:sp_on 7,1:sp_on 10,0
8270 pause 200:goto Input_Born_Month2:
8280 case 8:
8290 No=7:sp_on 4,1:sp_on 7,0
8300 pause 200:goto Input_Born_Month2:
8310 case 7:
8320 pause 200:goto Input_Born_Month2:
8330 end select
8340 endif
8350 '右  十字キー　右　or カーソル　右
8360 if ((y2 = 1) or (key$ = chr$(28))) then
8370 select case No
8380 '0ボタンからokボタン右に移動
8390 case 0:
8400 No=-1:sp_on 14,1:sp_on 13,0
8410 pause 200:goto Input_Born_Month2:
8420 '0ボタンからokボタン 右に移動　ここまで
8430 'OKボタンで右を押して何もしない
8440 case -1:
8450 pause 200:goto Input_Born_Month2:
8460 case 1:
8470 No=2:sp_on 9,1:sp_on 6,0
8480 pause 200:goto Input_Born_Month2:
8490 case 2:
8500 No=3:sp_on 12,1:sp_on 9,0
8510 pause 200:goto Input_Born_Month2:
8520 case 3:
8530 pause 200:goto Input_Born_Month2:
8540 case 4:
8550 No=5:sp_on 8,1:sp_on 5,0
8560 pause 200:goto Input_Born_Month2:
8570 case 5:
8580 No=6:sp_on 11,1:sp_on 8,0
8590 pause 200:goto Input_Born_Month2:
8600 case 7:
8610 No=8:sp_on 7,1:sp_on 4,0
8620 pause 200:goto Input_Born_Month2:
8630 case 8:
8640 No=9:sp_on 10,1:sp_on 7,0
8650 pause 200:goto Input_Born_Month2:
8660 case 9:
8670 pause 200:goto Input_Born_Month2:
8680 case 6:
8690 pause 200:goto Input_Born_Month2:
8700 end select
8710 'Okから右ボタンを押して何もしない ここまで
8720 endif
8730 '十字キー　ここまで
8740 '右の丸ボタン　決定キー
8750 if ((bg=2) or (key$=chr$(13))) then
8760 select case count
8770 case 0:
8780 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
8790 locate 2,3
8800 color RGB(255,255,255)
8810 print "生まれた月(1月~12月):";buf_Month$
8820 goto Input_Born_Month2:
8830 case 1:
8840 count = 2:c = No
8850 c = val(buf_Month$)
8860 if (No = -1) then
8870 'count=0
8880 month=buf_month
8890 buf_month=val(buf_Month$)
8900 month=buf_month
8910 '生まれた日に飛ぶ
8920 goto Input_Born_Day:
8930 else
8940 buf_month = c*10 + No
8950 buf_Month$= str$(buf_month)
8960 locate 2,3
8970 color Rgb(255,255,255)
8980 print "生まれた月(1月~12月):";buf_Month$
8990 goto Input_Born_Month2:
9000 endif
9010 case 2:
9020 count=3
9030 'c= val(buf_Month$)
9040 'buf_month = c*10 + No
9050 'buf_Month$ = str$(buf_month)
9060 'locate 2,3
9070 'print "生まれた月(1月～12月):";buf_Month$
9080 'goto Input_Born_Month2:
9090 'case 3:
9100 'count=4
9110 'b=val(buf_month$)
9120 'buf_month=c*10+No
9130 'buf_Month$=str$(buf_month)
9140 'locate 2,3
9150 'print "生まれた月(1月～12月):";buf_Month$
9160 'buf_month=val(buf_Month$)
9170 'year=val(buf_year$)
9180 if (No=-1) then
9190 goto Input_Born_Day:
9200 else
9210 'goto Input_Born_Month2:
9220 endif
9230 'case 4:
9240 'bufyear=buf_year
9250 'if (No=-1) then
9260 'buf_month = val(buf_Month$)
9270 'month = buf_month
9280 'sp_on 14,0
9290 'goto Input_Born_Day:
9300 'else
9310 'goto Input_Born_Month2:
9320 'endif
9330 end select
9340 endif
9350 '左の丸ボタン　キャンセル
9360 if (bg2=2) then
9370 select case count2
9380 case 0:
9390 if (No = -1) then
9400 buf_month=0:buf_Month$="**"
9410 count=0
9420 goto rewrite:
9430 else
9440 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9450 buf_month=0:buf_Month$="**"
9460 locate 2,3
9470 color rgb(255,255,255)
9480 print "                                       "
9490 goto rewrite:
9500 if (No>12) then
9510 ui_msg"値が範囲外です。"
9520 goto rewrite:
9530 endif
9540 endif
9550 endif
9560 rewrite:
9570 locate 2,3
9580 color rgb(255,255,255)
9590 print "                                      "
9600 locate 2,3
9610 print "生まれた月(1月~12月):";buf_Month$
9620 goto Input_Born_Month2:
9630 end select
9640 'endif
9650 endif
9660 end
9670 'end
9680 '生れた日を入力
9690 Input_Born_Day:
9700 '生まれた日入力
9710 cls 3:play ""
9720 'No=-1:Okのとき
9730 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
9740 for i=0 to 1
9750 buf_day(i)=0
9760 next i
9770 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
9780 gload Gazo$ + "Screen1.png",0,0,0
9790 gload Gazo$ + "downscreen.png",0,0,800
9800 'Init"kb:2"
9810 '音声ファイル再生 2023.06.07
9820 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
9830 font 48
9840 locate 0,1
9850 '文字色：黒　 color rgb(0,0,0)
9860 color rgb(255,255,255)
9870 print "生まれた日を入れて下さい" + chr$(13)
9880 color rgb(255,255,255)
9890 locate 2,3
9900 print "生まれた日(1日~31日):";buf_Day$
9910 color rgb(255,0,0)
9920 'locate 4,6:print ":7"
9930 'locate 9,6:print ":8"
9940 'locate 12,6:print ":9"
9950 locate 4,6
9960 print ":7  :8  :9" + chr$(13)
9970 color rgb(255,0,0)
9980 locate 4,8
9990 print ":4  :5  :6" + chr$(13)
10000 color rgb(255,0,0)
10010 locate 4,10
10020 print ":1  :2  :3" + chr$(13)
10030 locate 4,12
10040 print "    :0"
10050 locate 12,12
10060 color rgb(0,0,255)
10070 print ":Ok"
10080 sp_on 4,0: sp_on 5,0:sp_on 6,0
10090 sp_on 7,0:sp_on 8,0:sp_on 9,0
10100 sp_on 10,0:sp_on 11,0:sp_on 12,0
10110 sp_on 13,0:sp_on 14,1
10120 Input_Born_Day2:
10130 key$="":bg=0:y=0:y2=0:bg2=0
10140 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10150 key$ = inkey$
10160 bg = strig(1)
10170 y = stick(1)
10180 y2 = stick(0)
10190 bg2 = strig(0)
10200 pause 5
10210 wend
10220 '十字キー　ここから
10230 '上の矢印　または、十字キー上
10240 if ((y = -1) or (key$ = chr$(30))) then
10250 select case No
10260 'No=-1:okのとき:初期の状態
10270 '0kボタンから３に移動
10280 '上に行く 処理
10290 case -1:
10300 No=3:sp_on 12,1:sp_on 14,0
10310 pause 200:goto Input_Born_Day2:
10320 '選択肢:3
10330 '3ボタンから 6に移動
10340 case 3:
10350 No=6:sp_on 12,0:sp_on 11,1
10360 pause 200:goto Input_Born_Day2:
10370 '6ボタンから ９に移動
10380 case 6:
10390 No=9:sp_on 10,1:sp_on 11,0
10400 pause 200:goto Input_Born_Day2:
10410 '6ボタンから ９に移動　ここまで
10420 '9で上を押して何もしない
10430 case 9:
10440 '何もしない
10450 No=9
10460 pause 200:goto Input_Born_Day2:
10470 '9で上を押しても何もしない　ここまで
10480 '上　 0ボタンから2ボタン
10490 'sp_on 6,1:1
10500 'sp_on 8,1:5
10510 'sp_on 7,1:7
10520 case 0:
10530 No=2:sp_on 13,0:sp_on 9,1:
10540 pause 200:goto Input_Born_Day2:
10550 '上  0ボタンから2ボタン　ここまで
10560 '2から５になる 上
10570 case 2:
10580 No=5:sp_on 8,1:sp_on 9,0:
10590 pause 200:goto Input_Born_Day2:
10600 case 5:
10610 No=8:sp_on 7,1:sp_on 8,0
10620 pause 200:goto Input_Born_Day2:
10630 case 8:
10640 pause 200:goto Input_Born_Day2:
10650 case 1:
10660 No=4:sp_on 5,1:sp_on 6,0
10670 pause 200:goto Input_Born_Day2:
10680 case 4:
10690 No=7:sp_on 4,1:sp_on 5,0
10700 pause 200:goto Input_Born_Day2:
10710 case 7:
10720 pause 200:goto Input_Born_Day2:
10730 end select
10740 endif
10750 '左３　ここまで
10760 '下の矢印
10770 '中央 2
10780 if ((y=1) or (key$ = chr$(31))) then
10790 select case No
10800 '9から６に下げる
10810 case 9:
10820 No=6:sp_on 11,1:sp_on 10,0
10830 pause 200:goto Input_Born_Day2:
10840 '6から３に下げる
10850 case 6:
10860 No=3:sp_on 12,1:sp_on 11,0
10870 pause 200:goto Input_Born_Day2:
10880 '3から０ｋに変える
10890 case 3:
10900 No=-1:sp_on 14,1:sp_on 12,0
10910 pause 200:goto Input_Born_Day2:
10920 'Okから下のボタンを押しても何もしない
10930 case -1:
10940 pause 200:goto Input_Born_Day2:
10950 case 8:
10960 No=5:sp_on 8,1:sp_on 7,0
10970 pause 200:goto Input_Born_Day2:
10980 case 5:
10990 No=2:sp_on 9,1:sp_on 8,0
11000 pause 200:goto Input_Born_Day2:
11010 case 2:
11020 No=0:sp_on 13,1:sp_on 9,0
11030 pause 200:goto Input_Born_Day2:
11040 case 0:
11050 pause 200:goto Input_Born_Day2:
11060 case 7:
11070 No=4:sp_on 5,1:sp_on 4,0
11080 pause 200:goto Input_Born_Day2:
11090 case 4:
11100 No=1:sp_on 6,1:sp_on 5,0
11110 pause 200:goto Input_Born_Day2:
11120 case 1:
11130 pause 200:goto Input_Born_Day2:
11140 end select
11150 endif
11160 '左へボタン 十字キー　左　or 　カーソル左
11170 if ((y2 = -1) or (key$ = chr$(29))) then
11180 select case No
11190 'Ok ボタン  Okから　左　０に行く
11200 case -1:
11210 No=0:sp_on 13,1:sp_on 14,0
11220 pause 200:goto Input_Born_Day2:
11230 '0 ボタン  左　何もしない
11240 case 0:
11250 pause 200:goto Input_Born_Day2:
11260 case 3:
11270 No=2:sp_on 9,1:sp_on 12,0:
11280 pause 200:goto Input_Born_Day2:
11290 case 2:
11300 No=1:sp_on 6,1:sp_on 9,0:
11310 pause 200:goto Input_Born_Day2:
11320 case 1:
11330 pause 200:goto Input_Born_Day2:
11340 case 6:
11350 No=5:sp_on 8,1:sp_on 11,0
11360 pause 200:goto Input_Born_Day2:
11370 case 5:
11380 No=4:sp_on 5,1:sp_on 8,0
11390 pause 200:goto Input_Born_Day2:
11400 case 4:
11410 pause 200:goto Input_Born_Day2:
11420 case 9:
11430 No=8:sp_on 7,1:sp_on 10,0
11440 pause 200:goto Input_Born_Day2:
11450 case 8:
11460 No=7:sp_on 4,1:sp_on 7,0
11470 pause 200:goto Input_Born_Day2:
11480 case 7:
11490 pause 200:goto Input_Born_Day2:
11500 end select
11510 endif
11520 '右  十字キー　右　or カーソル　右
11530 if ((y2 = 1) or (key$ = chr$(28))) then
11540 select case No
11550 '0ボタンからokボタン右に移動
11560 case 0:
11570 No=-1:sp_on 14,1:sp_on 13,0
11580 pause 200:goto Input_Born_Day2:
11590 '0ボタンからokボタン 右に移動　ここまで
11600 'OKボタンで右を押して何もしない
11610 case -1:
11620 pause 200:goto Input_Born_Day2:
11630 case 1:
11640 No=2:sp_on 9,1:sp_on 6,0
11650 pause 200:goto Input_Born_Day2:
11660 case 2:
11670 No=3:sp_on 12,1:sp_on 9,0
11680 pause 200:goto Input_Born_Day2:
11690 case 3:
11700 pause 200:goto Input_Born_Day2:
11710 case 4:
11720 No=5:sp_on 8,1:sp_on 5,0
11730 pause 200:goto Input_Born_Day2:
11740 case 5:
11750 No=6:sp_on 11,1:sp_on 8,0
11760 pause 200:goto Input_Born_Day2:
11770 case 7:
11780 No=8:sp_on 7,1:sp_on 4,0
11790 pause 200:goto Input_Born_Day2:
11800 case 8:
11810 No=9:sp_on 10,1:sp_on 7,0
11820 pause 200:goto Input_Born_Day2:
11830 case 9:
11840 pause 200:goto Input_Born_Day2:
11850 case 6:
11860 pause 200:goto Input_Born_Day2:
11870 end select
11880 'Okから右ボタンを押して何もしない ここまで
11890 endif
11900 '十字キー　ここまで
11910 '右の丸ボタンを押したとき
11920 if ((bg = 2) or (key$ = chr$(13))) then
11930 'count :決定ボタンを押した回数
11940 select case (count mod 3)
11950 '1桁目入力
11960 case 0:
11970 count = 1:
11980 if (No = -1) then
11990 '1桁目　OKでは何もしない
12000 'goto check:
12010 else
12020 'ok以外のボタンを押したとき
12030 buf_day = No:buf_Day$=str$(No)
12040 c=No
12050 locate 2,3
12060 color RGB(255,255,255)
12070 print "生まれた日(1日~31日):";buf_Day$
12080 endif
12090 check:
12100 if (No >= 1 and No <= 9) then
12110 sp_on 14,0
12120 goto Input_Born_Day2:
12130 else
12140 sp_on 14,0
12150 goto complate:
12160 endif
12170 case 1:
12180 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12190 count = 2:
12200 'locate 2,3
12210 'color RGB(255,255,255)
12220 'print "生まれた日(1日~31日):";buf_Day$
12230 'Okボタンを押したときの処理
12240 '入力値　10未満のとき
12250 'c = buf_day
12260 if (No = -1) then
12270 'c=buf_day
12280 ' buf_day = c
12290 'buf_Day$ = str$(buf_day)
12300 '10以下のとき
12310 if (buf_day < 10) then
12320 sp_on 14,0
12330 goto complate:
12340 endif
12350 else
12360 'c=No
12370 buf_day = c * 10 + No
12380 buf_Day$ =str$(buf_day)
12390 locate 2,3
12400 color Rgb(255,255,255)
12410 print "生まれた日(1日~31日):";buf_Day$
12420 goto Input_Born_Day2:
12430 endif
12440 '生まれた日　2桁目の数字　or 1桁の数字 + ok
12450 case 2:
12460 count=0
12470 'c=val(buf_Day$)
12480 'buf_day=c*10+No
12490 'buf_Day$=str$(buf_day)
12500 'day=buf_day
12510 'locate 2,3
12520 'print "生まれた日(1日〜31日):";buf_Day$
12530 'No=-1:ok ボタンを押したとき
12540 if (No = -1) then
12550 if ((buf_day > 0) and (buf_day < 32)) then
12560 sp_on 14,0
12570 goto complate:
12580 else
12590 goto Input_Born_Day2:
12600 endif
12610 'Okボタン以外を押したとき
12620 else
12630 c=val(buf_Day$)
12640 buf_day = c * 10 + No
12650 buf_Day$ = str$(buf_day)
12660 locate 2,3
12670 print "生まれた日(1日~31日):";buf_Day$
12680 'goto Input_Born_Day2:
12690 endif
12700 case 3:
12710 count=4
12720 'c=val(buf_day$)
12730 'buf_day=c*10+No
12740 'buf_day$=str$(buf_day)
12750 'locate 2,3
12760 'print "生まれた日を入れてください:";buf_day$
12770 'year=val(buf_year$)
12780 if (No = -1) then
12790 'goto Input_Born_Day:
12800 sp_on 14,0:
12810 goto complate:
12820 else
12830 goto Input_Born_Month2:
12840 endif
12850 'case 4:
12860 'bufyear=buf_year
12870 'if (No=-1) then
12880 'buf_day = val(buf_day$)
12890 'bufday = buf_day
12900 'sp_on 14,0
12910 'goto complate:
12920 'else
12930 'goto Input_Born_Day2:
12940 'endif
12950 end select
12960 endif
12970 if (bg2=2) then
12980 select case count2
12990 case 0:
13000 if (No=-1) then
13010 'buf_day=0:buf_Day$="**"
13020 if (buf_day>=1 and buf_day<=31) then
13030 count=0
13040 buf_day=0:buf_Day$="**"
13050 'goto rewrite_day:
13060 else
13070 buf_day=0:buf_Day$="**"
13080 ui_msg"値が範囲外です"
13090 endif
13100 goto rewrite_day:
13110 else
13120 goto rewrite_day:
13130 endif
13140 rewrite_day:
13150 locate 2,3
13160 color rgb(255,255,255)
13170 print "                                      "
13180 locate 2,3
13190 print "生まれた日(1日~31日):";buf_Day$
13200 goto Input_Born_Day2:
13210 end select
13220 endif
13230 '--------------------------Input_Born_Day:-------------------------------------------
13240 complate:
13250 suhiNo = buf_year + buf_month + buf_day
13260 'if (suhiNo < 1000) then
13270 a1 = fix(suhiNo / 1000)
13280 a2 = fix(suhiNo/100) - (a1 * 10)
13290 a3 = fix(suhiNo/10)-(a1*100+a2*10)
13300 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
13310 'endif
13320 bufsuhiNo = a1+a2+a3+a4
13330 recomp:
13340 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
13350 'bufsuhiNo=a6
13360 goto Kabara_Result_Screen:
13370 else
13380 a5 = fix(bufsuhiNo / 10)
13390 a6 = bufsuhiNo - a5 * 10
13400 bufsuhiNo = a6 + a5
13410 if (bufsuhiNo = 10) then
13420 bufsuhiNo=1
13430 endif
13440 goto Kabara_Result_Screen:
13450 endif
13460 Kabara_Result_Screen:
13470 cls 3:
13480 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
13490 gload Gazo$ + "downscreen.png",0,0,800
13500 init "kb:4"
13510 '
13520 play ""
13530 select case (bufsuhiNo)
13540 case 1:
13550 play Voice$ + "Result_Kabara_1_20230607.mp3"
13560 case 2:
13570 play Voice$ + "Result_Kabara_2_20230607.mp3"
13580 case 3:
13590 play Voice$ + "Result_Kabara_3_20230607.mp3"
13600 case 4:
13610 play Voice$ + "Result_Kabara_4_20230607.mp3"
13620 case 5:
13630 play Voice$ + "Result_Kabara_5_20230607.mp3"
13640 case 6:
13650 play Voice$ + "Result_Kabara_6_20230607.mp3"
13660 case 7:
13670 play Voice$ + "Result_Kabara_7_20230607.mp3"
13680 case 8:
13690 play Voice$ + "Result_Kabara_8_20230607.mp3"
13700 case 9:
13710 play Voice$ + "Result_Kabara_9_20230607.mp3"
13720 case 11:
13730 play Voice$ + "Result_Kabara_11_20230607.mp3"
13740 case 22:
13750 play Voice$ + "Result_Kabara_22_20230607.mp3"
13760 case 33:
13770 play Voice$ + "Result_Kabara_33_20230607.mp3"
13780 end select
13790 font 48
13800 key$ = "":bg = 0:
13810 'COLOR rgb(255,255,255)
13820 'print "●診断結果"+chr$(13)
13830 locate 0,2
13840 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
13850 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
13860 locate 1,15:
13870 color rgb(255,255,255)
13880 print "ジョイパッドの右:トップメニュー" + chr$(13)
13890 while ((key$ <> chr$(13)) and (bg <> 2))
13900 key$ = inkey$
13910 bg = strig(1)
13920 pause 2
13930 wend
13940 'Enter or JoyPad right
13950 if ((key$ = chr$(13)) or (bg = 2)) then
13960 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
13970 endif
13980 'else
13990 'suhiNo1 = fix(bufsuhiNo / 10)
14000 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14010 'bufsuhiNo = suhiNo1 + suhiNo2
14020 'goto recomp:
14030 'endif
14040 'print chr$(13)
14050 'color rgb(255,0,0)
14060 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14070 'key$ = input$(1)
14080 'if key$ = chr$(13) then goto Main_Screen:
14090 '"Menu2 占いのルール"
14100 Suhi_Rule:
14110 '数秘術占いルールの表示
14120 cls 3:play "":init"kb:4"
14130 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14140 gload Gazo$ + "downscreen.png",0,0,800
14150 'cls 3:
14160 'line (0,0) - (1500,60),rgb(0,0,255),bf
14170 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14180 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14190 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14200 locate 0,2:Font 48
14210 print chr$(13) + chr$(13)
14220 color rgb(0,0,0)
14230 print "誕生日を単数変換します";chr$(13)
14240 print "数字の範囲:1~９,11,22,33";chr$(13)
14250 print "例:1973年11月22日の場合";chr$(13)
14260 print "1+9+7+3+11+22=53 ";chr$(13)
14270 print "→ 5 + 3 = 8" + chr$(13)
14280 print "故に8が数秘ナンバーになります";chr$(13)
14290 locate 0,15
14300 color rgb(255,255,255)
14310 print "ジョイパッドの右を押してください"
14320 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14330 '"key$ = input$(1)"
14340 '"if key$ = chr$(13) then goto Main_Screen:"
14350 suhi_rule_selection:
14360 bg = 0:key$ = "":bg2=0
14370 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
14380 bg = strig(1)
14390 key$ = inkey$
14400 bg2=strig(0)
14410 pause 2
14420 wend
14430 if ((bg = 2) or (key$ = chr$(13))) then
14440 pause 200:cls 4:goto Main_Screen:
14450 endif
14460 if (bg2=2) then
14470 play "":pause 200
14480 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
14490 goto suhi_rule_selection:
14500 endif
14510 '2.設定
14520 '2-1.トップ画面に戻る
14530 Setting:
14540 cls 3:init"kb:4":font 48:No=0
14550 play ""
14560 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14570 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
14580 gload Gazo$ + "downscreen.png",0,0,800
14590 print chr$(13) + chr$(13) + chr$(13)
14600 color rgb(255,255,255):sp_on 0,1:
14610 print "番号を選んでください" + chr$(13)
14620 print " :1.トップ画面に戻る"+ chr$(13)
14630 print " :2.未実装" + chr$(13)
14640 print " :3.未実装" + chr$(13)
14650 print " :4.未実装" + chr$(13)
14660 color rgb(0,0,0)
14670 locate 1,15:print "1.トップ画面に戻るを選択"
14680 Setting_Selection:
14690 y=0:key$="":bg=0:bg2=0
14700 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
14710 'y=stick(1)
14720 key$ = inkey$
14730 bg=strig(1)
14740 bg2 = strig(0)
14750 pause 2
14760 wend
14770 if ((bg = 2) or (key$ = chr$(13))) then
14780 select case No
14790 case 0:
14800 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
14810 end select
14820 endif
14830 if (bg2 = 2) then
14840 play "":pause 200
14850 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
14860 goto Setting_Selection:
14870 endif
14880 '3.Help
14890 '3-1.ルールの表示
14900 '3-2.バージョン
14910 '3-3.トップに戻る
14920 Help:
14930 cls 3:Font 48:No=0
14940 play ""
14950 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
14960 gload Gazo$ + "downscreen.png",0,0,800
14970 color rgb(255,255,255)
14980 print chr$(13)+chr$(13)+chr$(13)
14990 print "番号を選んでください"+chr$(13)
15000 print " :1.ルールの表示" + chr$(13)
15010 print " :2.バージョンの表示" + chr$(13)
15020 print " :3.参考文献" + chr$(13)
15030 print " :4.トップ画面に戻る" + chr$(13)
15040 color rgb(0,0,0)
15050 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15060 locate 1,15
15070 print "                                      "
15080 locate 1,15
15090 print "1.ルールの表示を選択"
15100 init"kb:4"
15110 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15120 Help_Select:
15130 bg=0:key$="":y=0:bg2=0
15140 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15150 y = stick(1)
15160 key$ = inkey$
15170 bg = strig(1)
15180 bg2 = strig(0)
15190 pause 2
15200 wend
15210 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15220 if ((y = 1) or (key$ = chr$(31))) then
15230 select case No
15240 case 0:
15250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
15260 case 1:
15270 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
15280 case 2:
15290 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
15300 case 3:
15310 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15320 end select
15330 endif
15340 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
15350 if ((y = -1) or (key$ = chr$(30))) then
15360 select case No
15370 case 0:
15380 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
15390 case 1:
15400 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
15410 case 2:
15420 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
15430 case 3:
15440 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
15450 end select
15460 endif
15470 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
15480 if ((bg = 2) or (key$ = chr$(13))) then
15490 select case No
15500 case 0:
15510 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
15520 case 1:
15530 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
15540 case 2:
15550 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
15560 '3:Top画面に行く
15570 case 3:
15580 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
15590 end select
15600 endif
15610 if (bg2 = 2) then
15620 play "":pause 200
15630 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15640 goto Help_Select:
15650 endif
15660 '数秘術占い　トップ画面
15670 Kabara_TopScreen:
15680 cls 3:play ""
15690 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
15700 gload Gazo$ + "downscreen.png",0,0,800
15710 play Voice$ + "KabaraTop_Selection_20230721.mp3"
15720 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
15730 init"kb:4":No=0
15740 color rgb(255,255,255)
15750 print chr$(13)+chr$(13)+chr$(13)
15760 print "番号を選んでください" + chr$(13)
15770 print " :1.数秘術占い" + chr$(13)
15780 print " :2.バーズアイグリット" + chr$(13)
15790 print " :3.相性占い" + chr$(13)
15800 print " :4.トップ画面に戻る" + chr$(13)
15810 color rgb(0,0,0)
15820 locate 1,15:print "1.数秘術占いを選択"
15830 Kabara_TopScreen2:
15840 y = 0:bg = 0:key$ = "":bg2 = 0
15850 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
15860 key$ = inkey$
15870 bg = strig(1)
15880 y = stick(1)
15890 bg2 = strig(0)
15900 pause 2
15910 wend
15920 '選択ボタン
15930 'カーソル　と　ジョイパッド　の下
15940 if ((y = 1) or (key$ = chr$(31))) then
15950 select case No
15960 case 2:
15970 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
15980 case 3:
15990 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16000 case 0:
16010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16020 case 1:
16030 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16040 end select
16050 endif
16060 'カーソル　上
16070 if ((y=-1) or (key$=chr$(30))) then
16080 select case No
16090 case 0:
16100 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16110 case 1:
16120 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16130 case 2:
16140 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16150 case 3:
16160 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16170 end select
16180 endif
16190 '決定ボタン
16200 'ジョイパッドの右　or  Enter key
16210 if ((bg = 2) or (key$ = chr$(13))) then
16220 select case No
16230 case 0:
16240 '1.数秘術占い
16250 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
16260 case 3:
16270 '4.メイン画面にいく
16280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
16290 case 1:
16300 '2.バースアイグリッド
16310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
16320 case 2:
16330 '3.相性占い
16340 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
16350 end select
16360 endif
16370 if (bg2 = 2) then
16380 play "":pause 200
16390 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
16400 goto Kabara_TopScreen2:
16410 endif
16420 '1.バースアイグリット　名入力
16430 Inputname1:
16440 cls 3:init"kb:2":font 48
16450 gload Gazo$ + "Input_Birtheye2.png",0,0,0
16460 color rgb(255,255,255)
16470 locate 1,2:print "名前をアルファベットで入れてください"
16480 color rgb(0,0,0)
16490 locate 1,5:Input "名前（姓の部分）:",name1$
16500 'locate 1,5:print "Hit any key"
16510 n1 = len(name1$)
16520 if (n1 < 11) then
16530 for i=1 to n1
16540 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
16550 next i
16560 endif
16570 'if b$=chr$(13) then goto Inputname2:
16580 '2.グリッドアイ　姓の入力
16590 Inputname2:
16600 cls 3:init"kb:2":font 48
16610 gload Gazo$ + "Input_Birtheye1.png",0,0,0
16620 color rgb(255,255,255)
16630 locate 1,2:print "名前をアルファベットで入れてください"
16640 color rgb(0,0,0)
16650 locate 1,5:Input "名前(名の部分):",name2$
16660 n2=len(name2$)
16670 for i=1 to n2
16680 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
16690 next i
16700 '計算領域
16710 Complate:
16720 'name1
16730 for i=0 to 25
16740 for n=1 to len(name1$)
16750 if (buf_chart$(i,0) = buf_name1$(n-1)) then
16760 b = val(buf_chart$(i,1))
16770 buffer(b-1) = buffer(b-1) + 1
16780 endif
16790 next n
16800 next i
16810 'name2
16820 for i=0 to 25
16830 for n=1 to len(name2$)
16840 if (buf_chart$(i,0) = buf_name2$(n-1)) then
16850 c = val(buf_chart$(i,1))
16860 buffer(c - 1) = buffer(c - 1) + 1
16870 endif
16880 next n
16890 next i
16900 '結果表示領域
16910 Result_Birtheye1:
16920 cls 3:init"kb:4":No=0
16930 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
16940 gload Gazo$ + "downscreen.png",0,0,800
16950 color rgb(255,255,255)
16960 '1の表示
16970 locate 3,14:print buffer(0);
16980 '2の表示
16990 locate 3,9:print buffer(1);
17000 '3の表示
17010 locate 3,5:print buffer(2);
17020 '4の表示
17030 locate 10,14:print buffer(3);
17040 '5の表示
17050 locate 10,9:print buffer(4);
17060 '6の表示
17070 locate 10,5:print buffer(5);
17080 '7の表示
17090 locate 15,14:print buffer(6);
17100 '8の表示
17110 locate 15,9:print buffer(7);
17120 '9の表示
17130 locate 15,5:print buffer(8);
17140 'name を大文字に変換
17150 locate 5,3:print ucase$(name1$ + name2$)
17160 color rgb(0,0,0)
17170 locate 2,15:print "右の丸ボタン:トップ画面"
17180 bg=0:key$="":
17190 while ((bg <> 2) and (key$ <> chr$(13)))
17200 'Enterと決定ボタン
17210 key$ = inkey$
17220 bg = strig(1)
17230 pause 200
17240 wend
17250 if ((bg=2) or (key$=chr$(13))) then
17260 'データーをクリアしてトップ画面に行く
17270 for i=0 to 8
17280 buffer(i)=0
17290 next i
17300 for n=0 to 9
17310 buf_name1$(n) = ""
17320 buf_name2$(n) = ""
17330 next n
17340 'Topに行く
17350 goto Main_Screen:
17360 endif
17370 'goto Result_Birtheye1:
17380 'Result_Birtheye2:
17390 'cls 3:color rgb(255,255,255)
17400 'end
17410 'Memory 消去
17420 '
17430 References1:
17440 cls 3:key$="":bg=0:play "":font 48-16
17450 gload Gazo$ + "Reference1_20230703.png",0,0,0
17460 print chr$(13)+chr$(13)+chr$(13)
17470 color rgb(0,0,0)
17480 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
17490 print "Author:carol Adrinne,PhD"+chr$(13)
17500 print "出版社:幻冬舎" + chr$(13)
17510 print "HP:www.carolAdrienne.jp/"+chr$(13)
17520 print "ISBN:978-4-344-01394-0"+chr$(13)
17530 print "定価:1500円 + 税"+chr$(13)
17540 color rgb(255,255,255)
17550 locate 1,23
17560 print "ジョイパッド右：次へ"
17570 while (key$ <> chr$(13) and bg <> 2)
17580 bg = strig(1)
17590 key$ = inkey$
17600 wend
17610 '
17620 if ((bg = 2) or (key$ = chr$(13))) then
17630 pause 200:goto References2:
17640 endif
17650 'ユダヤの秘儀 カバラ大占術
17660 References2:
17670 cls 3:play "":bg = 0:key$ = ""
17680 gload Gazo$ + "Reference2_20230703.png",0,0,0
17690 '参考文献２
17700 'カバラ大占術
17710 print chr$(13) + chr$(13) + chr$(13)
17720 color  rgb(0,0,0):font 48-16
17730 locate 1,3
17740 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
17750 print "著者：浅野　八郎" + chr$(13)
17760 print "出版社:NON BOOK" + chr$(13)
17770 print "ISBN:4-396-10364-6" + chr$(13)
17780 print "定価:829円 + 税"
17790 color rgb(255,255,255)
17800 locate 1,23
17810 print "ジョイパッド右：トップへ行く"
17820 while ((key$ <> chr$(13)) and (bg <> 2))
17830 bg = strig(1)
17840 key$ = inkey$
17850 wend
17860 if ((bg = 2) or (key$ = chr$(13))) then
17870 pause 200:goto Main_Screen:
17880 endif
17890 end
17900 '1.数秘術　トップ画面
17910 Kabara_First_Top:
17920 cls 3:color rgb(255,255,255):play ""
17930 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
17940 gload Gazo$ + "downscreen.png",0,0,800
17950 No=0:init"kb:4"
17960 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
17970 print chr$(13);chr$(13)
17980 color rgb(255,255,255)
17990 locate 3,4:No=0
18000 print "番号選んでください" + chr$(13)
18010 print " :1.数秘術占い" + chr$(13)
18020 print " :2.トップ画面に戻る" + chr$(13)
18030 color rgb(0,0,0)
18040 sp_on 0,1
18050 locate 1,15:print "1.数秘術番号を求めるを選択"
18060 'KeyBord:true
18070 'Joy Pad:true
18080 '上、下:true
18090 '
18100 'ｂｇ：決定ボタン
18110 'カーソル　上
18120 'カーソル　下
18130 Kabara_First_Top2:
18140 key$ = "":bg = 0:y = 0:
18150 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
18160 key$ = inkey$
18170 bg = strig(1)
18180 y = stick(1)
18190 'PauseでCPUを休める
18200 pause 5
18210 wend
18220 '1.カーソル　下 処理 chr$(31)
18230 'カーソル　下
18240 if ((key$ = chr$(31)) or (y = 1)) then
18250 select case No
18260 '
18270 case 1:
18280 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
18290 case 0:
18300 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18310 'case 2:
18320 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
18330 end select
18340 endif
18350 '2.カーソル　上 処理 chr$(30)
18360 if ((key$ = chr$(30)) or (y = -1)) then
18370 select case No
18380 case 0:
18390 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
18400 case 1:
18410 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
18420 'case 2:
18430 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
18440 end select
18450 endif
18460 '3.決定 処理  bg:2 or Enter key:chr$(13)
18470 if ((bg = 2) or (key$ = chr$(13))) then
18480 select case No
18490 case 0:
18500 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
18510 goto Kabara_TopScreen:
18520 'case 1:
18530 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
18540 case 1:
18550 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
18560 end select
18570 endif
18580 '
18590 'Kabara 相性占い トップ画面
18600 Kabara_Aishou_Top:
18610 cls 3:y=0:key$="":bg=0:No=0
18620 play ""
18630 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
18640 gload Gazo$ + "downscreen.png",0,0,800
18650 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
18660 print chr$(13) + chr$(13)
18670 locate 0,4:color rgb(255,255,255)
18680 'print "Ok"
18690 '
18700 print "番号を選んでください" + chr$(13)
18710 print " :1.男女2人の相性(未実装)" + chr$(13)
18720 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
18730 print " :3.トップ画面に戻る" + chr$(13)
18740 sp_on 0,1:sp_on 1,0:sp_on 2,0
18750 color rgb(0,0,0)
18760 locate 1,15:print "1.男女2人の相性占いを選択"
18770 Kabara_Aishou_Top2:
18780 key$ = "":y = 0:bg = 0:
18790 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
18800 'ジョイパッド(右) ,十字キー (上下)
18810 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
18820 y = stick(1)
18830 key$ = inkey$
18840 bg = strig(1)
18850 pause 5
18860 wend
18870 'カーソル　下 or 十字キー　下
18880 if ((key$ = chr$(31)) or (y = 1)) then
18890 select case No
18900 '選択肢　1 - 2に変更
18910 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
18920 'ok
18930 case 0:
18940 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
18950 '選択肢　2 - 3に変更
18960 case 1:
18970 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
18980 'リリース時 case 2コメント解除
18990 case 2:
19000 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
19010 case else:
19020 goto Kabara_Aishou_Top2:
19030 end select
19040 endif
19050 '十字キー　上　、カーソル　上
19060 if ((key$ = chr$(30)) or (y = -1)) then
19070 select case No
19080 case 0:
19090 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
19100 case 1:
19110 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
19120 case 2:
19130 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
19140 case else:
19150 goto Kabara_Aishou_Top2:
19160 end select
19170 endif
19180 '十字キー　上下:選択
19190 'ジョイパッド 右:決定
19200 if ((bg = 2) or (key$ = chr$(13))) then
19210 select case No
19220 '1.男女の相性
19230 case 0:
19240 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
19250 '2ビジネスの相性
19260 case 1:
19270 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
19280 case 2:
19290 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
19300 end select
19310 endif
19320 'ビジネスの相性　
19330 '1.1人目のビジネスの相性　名前入力　1人目
19340 Business_Aishou_Input_1_parson:
19350 No=0:color RGB(255,255,255)
19360 cls 3:init "kb:2"
19370 gload Gazo$ + "Screen1.png",0,0,0
19380 gload Gazo$ + "downscreen.png",0,0,800
19390 play "":color rgb(255,0,0):name$ = ""
19400 locate 0,1
19410 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
19420 color rgb(255,255,255):
19430 locate 0,3
19440 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
19450 print "入れてください" + chr$(13)
19460 locate 0,15:color rgb(0,0,0)
19470 Input "1人目の名前:",name$
19480 'color rgb(0,0,0)
19490 'locate 0,13:print "                                     "
19500 'locate 0,13:print "1人目の名前を入力してエンターキー":
19510 'buffer_name$(0):1人目の名前
19520 buffer_name$(0) = name$:
19530 goto Business_Aishou_Input_2_Parson:
19540 '2.2人目のビジネスの相性 名前入力 2人目
19550 Business_Aishou_Input_2_Parson:
19560 cls 3:init "kb:2":name$ = "":No=0
19570 gload Gazo$ + "Screen1.png",0,0,0
19580 gload Gazo$ + "downscreen.png",0,0,800
19590 color rgb(255,0,0)
19600 'Title
19610 locate 0,1
19620 print "ビジネスの相性　2人目"
19630 locate 0,3
19640 color rgb(255,255,255)
19650 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
19660 print "入れてください" + chr$(13)
19670 locate 0,15:color rgb(0,0,0)
19680 Input "2人目の名前:",name$
19690 'color rgb(0,0,0)
19700 'locate 0,15:print "                                              "
19710 'locate 0,15:print "2人目の名前を入力してエンター ":
19720 '2人目
19730 '2人目の名前を入れるに代入
19740 buffer_name$(1) = name$:
19750 goto Select_jyoushi:
19760 '3.上司の選択
19770 Select_jyoushi:
19780 cls 3:gload Gazo$ + "Screen1.png",0,0,0
19790 gload Gazo$ + "downscreen.png",0,0,800
19800 init "kb:4":No=0
19810 color rgb(0,0,255)
19820 locate 1,1
19830 print "上司の選択"
19840 color rgb(255,255,255)
19850 locate 0,4:print "名前から上司の方を選んでください"
19860 locate 0,6
19870 print " :";buffer_name$(0);"が上 司";chr$(13)
19880 locate 0,8
19890 print " :";buffer_name$(1);"が上 司";chr$(13)
19900 locate 0,15:
19910 print "                                     "
19920 locate 0,15:color rgb(0,0,0)
19930 print "上司の方を選んで右の丸ボタン"
19940 sp_on 0,1:sp_on 1,0:sp_on 2,0
19950 Select_jyoushi2:
19960 'ここでNo=0をおいてはいけない
19970 y=0:key$="":bg=0:
19980 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
19990 y = stick(1)
20000 key$ = inkey$
20010 bg = strig(1)
20020 pause 5
20030 wend
20040 '1.カーソル下の処理　or 十字キーの下処理
20050 if ((key$ = chr$(31)) or (y = 1)) then
20060 select case No
20070 case 0:
20080 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20090 case 1:
20100 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
20110 end select
20120 endif
20130 '2.カーソル上処理　or 十字キーの上の処理
20140 if ((key$ = chr$(30)) or (y = -1)) then
20150 select case No
20160 case 0:
20170 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
20180 case 1:
20190 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
20200 end select
20210 endif
20220 if ((key$ = chr$(13)) or (bg = 2)) then
20230 select case No
20240 case 0:
20250 '上司(name1)を配列に代入
20260 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20270 case 1:
20280 '上司（name2)を配列に代入
20290 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
20300 end select
20310 endif
20320 '3.決定ボタン　Enter or 右の丸ボタン
20330 '1.誕生日入力
20340 '1-1.生まれた年を入力
20350 'Jyoushi_born_year:
20360 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
20370 '---------------------------------------------'
20380 '誕生日入力(生れた年代)
20390 Jyoushi_Input_Seireki:
20400 'buf_Jyoushi_Born_Year:上司の生まれた年代
20410 'buf_Jyoushi_Born_Day(0) = born_year
20420 cls 3:play "":count=0:count2=0
20430 init"kb:4"
20440 'No=-1:Okのとき
20450 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
20460 for i=0 to 3
20470 buf_Jyoushi_Born_Day(i)=0
20480 next i
20490 gload Gazo$ + "Screen1.png",0,0,0
20500 gload Gazo$ + "downscreen.png",0,0,800
20510 'Init"kb:2"
20520 '音声ファイル再生 2023.06.07
20530 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
20540 font 48
20550 locate 0,1
20560 '文字色：黒　 color rgb(0,0,0)
20570 color rgb(255,255,255)
20580 print "上司の生まれた年代を入れて下さい" + chr$(13)
20590 color rgb(255,255,255)
20600 locate 1,3
20610 print "上司の生まれた年代(西暦4桁):";buf_year$
20620 color rgb(255,0,0)
20630 'locate 4,6:print ":7"
20640 'locate 9,6:print ":8"
20650 'locate 12,6:print ":9"
20660 locate 4,6
20670 print ":7  :8  :9" + chr$(13)
20680 color rgb(255,0,0)
20690 locate 4,8
20700 print ":4  :5  :6" + chr$(13)
20710 color rgb(255,0,0)
20720 locate 4,10
20730 print ":1  :2  :3" + chr$(13)
20740 locate 4,12
20750 print "    :0"
20760 locate 12,12
20770 color rgb(0,0,255)
20780 print ":Ok"
20790 sp_on 4,0: sp_on 5,0:sp_on 6,0
20800 sp_on 7,0:sp_on 8,0:sp_on 9,0
20810 sp_on 10,0:sp_on 11,0:sp_on 12,0
20820 sp_on 13,0:sp_on 14,1
20830 Jyoushi_Input_Seireki2:
20840 key$="":bg=0:y=0:y2=0:bg2=0:
20850 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
20860 key$ = inkey$
20870 bg = strig(1)
20880 y = stick(1)
20890 y2 = stick(0)
20900 bg2=strig(0)
20910 pause 5
20920 wend
20930 '十字キー　ここから
20940 '上の矢印　または、十字キー上
20950 if ((y = -1) or (key$ = chr$(30))) then
20960 select case No
20970 'No=-1:okのとき:初期の状態
20980 '0kボタンから３に移動
20990 '上に行く 処理
21000 case -1:
21010 No=3:sp_on 12,1:sp_on 14,0
21020 pause 200:goto Jyoushi_Input_Seireki2:
21030 '選択肢:3
21040 '3ボタンから 6に移動
21050 case 3:
21060 No=6:sp_on 12,0:sp_on 11,1
21070 pause 200:goto Jyoushi_Input_Seireki2:
21080 '6ボタンから ９に移動
21090 case 6:
21100 No=9:sp_on 10,1:sp_on 11,0
21110 pause 200:goto Jyoushi_Input_Seireki2:
21120 '6ボタンから ９に移動　ここまで
21130 '9で上を押して何もしない
21140 case 9:
21150 '何もしない
21160 No=9
21170 pause 200:goto Jyoushi_Input_Seireki2:
21180 '9で上を押しても何もしない　ここまで
21190 '上　 0ボタンから2ボタン
21200 'sp_on 6,1:1
21210 'sp_on 8,1:5
21220 'sp_on 7,1:7
21230 case 0:
21240 No=2:sp_on 13,0:sp_on 9,1:
21250 pause 200:goto Jyoushi_Input_Seireki2:
21260 '上  0ボタンから2ボタン　ここまで
21270 '2から５になる 上
21280 case 2:
21290 No=5:sp_on 8,1:sp_on 9,0:
21300 pause 200:goto Jyoushi_Input_Seireki2:
21310 case 5:
21320 No=8:sp_on 7,1:sp_on 8,0
21330 pause 200:goto Jyoushi_Input_Seireki2:
21340 case 8:
21350 pause 200:goto Jyoushi_Input_Seireki2:
21360 case 1:
21370 No=4:sp_on 5,1:sp_on 6,0
21380 pause 200:goto Jyoushi_Input_Seireki2:
21390 case 4:
21400 No=7:sp_on 4,1:sp_on 5,0
21410 pause 200:goto Jyoushi_Input_Seireki2:
21420 case 7:
21430 pause 200:goto Jyoushi_Input_Seireki2:
21440 end select
21450 endif
21460 '左３　ここまで
21470 '下の矢印
21480 '中央 2
21490 if ((y=1) or (key$ = chr$(31))) then
21500 select case No
21510 '9から６に下げる
21520 case 9:
21530 No=6:sp_on 11,1:sp_on 10,0
21540 pause 200:goto Jyoushi_Input_Seireki2:
21550 '6から３に下げる
21560 case 6:
21570 No=3:sp_on 12,1:sp_on 11,0
21580 pause 200:goto Jyoushi_Input_Seireki2:
21590 '3から０ｋに変える
21600 case 3:
21610 No=-1:sp_on 14,1:sp_on 12,0
21620 pause 200:goto Jyoushi_Input_Seireki2:
21630 'Okから下のボタンを押しても何もしない
21640 case -1:
21650 pause 200:goto Jyoushi_Input_Seireki2:
21660 case 8:
21670 No=5:sp_on 8,1:sp_on 7,0
21680 pause 200:goto Jyoushi_Input_Seireki2:
21690 case 5:
21700 No=2:sp_on 9,1:sp_on 8,0
21710 pause 200:goto Jyoushi_Input_Seireki2:
21720 case 2:
21730 No=0:sp_on 13,1:sp_on 9,0
21740 pause 200:goto Jyoushi_Input_Seireki2:
21750 case 0:
21760 pause 200:goto Jyoushi_Input_Seireki2:
21770 case 7:
21780 No=4:sp_on 5,1:sp_on 4,0
21790 pause 200:goto Jyoushi_Input_Seireki2:
21800 case 4:
21810 No=1:sp_on 6,1:sp_on 5,0
21820 pause 200:goto Jyoushi_Input_Seireki2:
21830 case 1:
21840 pause 200:goto Jyoushi_Input_Seireki2:
21850 end select
21860 endif
21870 '左へボタン 十字キー　左　or 　カーソル左
21880 if ((y2 = -1) or (key$ = chr$(29))) then
21890 select case No
21900 'Ok ボタン  Okから　左　０に行く
21910 case -1:
21920 No=0:sp_on 13,1:sp_on 14,0
21930 pause 200:goto Jyoushi_Input_Seireki2:
21940 '0 ボタン  左　何もしない
21950 case 0:
21960 pause 200:goto Jyoushi_Input_Seireki2:
21970 case 3:
21980 No=2:sp_on 9,1:sp_on 12,0:
21990 pause 200:goto Jyoushi_Input_Seireki2:
22000 case 2:
22010 No=1:sp_on 6,1:sp_on 9,0:
22020 pause 200:goto Jyoushi_Input_Seireki2:
22030 case 1:
22040 pause 200:goto Jyoushi_Input_Seireki2:
22050 case 6:
22060 No=5:sp_on 8,1:sp_on 11,0
22070 pause 200:goto Jyoushi_Input_Seireki2:
22080 case 5:
22090 No=4:sp_on 5,1:sp_on 8,0
22100 pause 200:goto Jyoushi_Input_Seireki2:
22110 case 4:
22120 pause 200:goto Jyoushi_Input_Seireki2:
22130 case 9:
22140 No=8:sp_on 7,1:sp_on 10,0
22150 pause 200:goto Jyoushi_Input_Seireki2:
22160 case 8:
22170 No=7:sp_on 4,1:sp_on 7,0
22180 pause 200:goto Jyoushi_Input_Seireki2:
22190 case 7:
22200 pause 200:goto Jyoushi_Input_Seireki2:
22210 end select
22220 endif
22230 '右  十字キー　右　or カーソル　右
22240 if ((y2 = 1) or (key$ = chr$(28))) then
22250 select case No
22260 '0ボタンからokボタン右に移動
22270 case 0:
22280 No=-1:sp_on 14,1:sp_on 13,0
22290 pause 200:goto Jyoushi_Input_Seireki2:
22300 '0ボタンからokボタン 右に移動　ここまで
22310 'OKボタンで右を押して何もしない
22320 case -1:
22330 pause 200:goto Jyoushi_Input_Seireki2:
22340 case 1:
22350 No=2:sp_on 9,1:sp_on 6,0
22360 pause 200:goto Jyoushi_Input_Seireki2:
22370 case 2:
22380 No=3:sp_on 12,1:sp_on 9,0
22390 pause 200:goto Jyoushi_Input_Seireki2:
22400 case 3:
22410 pause 200:goto Jyoushi_Input_Seireki2:
22420 case 4:
22430 No=5:sp_on 8,1:sp_on 5,0
22440 pause 200:goto Jyoushi_Input_Seireki2:
22450 case 5:
22460 No=6:sp_on 11,1:sp_on 8,0
22470 pause 200:goto Jyoushi_Input_Seireki2:
22480 case 7:
22490 No=8:sp_on 7,1:sp_on 4,0
22500 pause 200:goto Jyoushi_Input_Seireki2:
22510 case 8:
22520 No=9:sp_on 10,1:sp_on 7,0
22530 pause 200:goto Jyoushi_Input_Seireki2:
22540 case 9:
22550 pause 200:goto Jyoushi_Input_Seireki2:
22560 case 6:
22570 pause 200:goto Jyoushi_Input_Seireki2:
22580 end select
22590 'Okから右ボタンを押して何もしない ここまで
22600 endif
22610 '十字キー　ここまで
22620 if ((bg=2) or (key$=chr$(13))) then
22630 select case count
22640 case 0:
22650 count=1
22660 if (No=-1) then
22670 count=0
22680 buf_Jyoushi_Born_Day(0)=No
22690 'Okボタンを押したとき
22700 goto Jyoushi_Input_Seireki2:
22710 else
22720 'Okボタン以外が押されたとき
22730 if (No>=1 and No<=2) then
22740 buf_year$="":buf_year$=str$(No)
22750 buf_year=No
22760 buf_Jyoushi_Born_Day(0)=No
22770 locate 1,3
22780 color rgb(255,255,255)
22790 print "上司の生まれた年代(西暦4桁):";buf_year$
22800 goto Jyoushi_Input_Seireki2:
22810 else
22820 count=0
22830 ui_msg"数字が範囲外になります。"
22840 buf_year$="":buf_year=0
22850 goto Jyoushi_Input_Seireki2:
22860 endif
22870 endif
22880 case 1:
22890 count = 2
22900 if (No = -1) then
22910 count = 1
22920 goto Jyoushi_Input_Seireki2:
22930 else
22940 b = val(buf_year$)
22950 buf_year = b * 10 + No
22960 buf_year$ = str$(buf_year)
22970 buf_Jyoushi_Born_Day(0)=buf_year
22980 locate 1,3
22990 color rgb(255,255,255)
23000 print "                                                                "
23010 locate 1,3
23020 print "上司の生まれた年代(西暦4桁):"+buf_year$
23030 'if (No = -1) then
23040 'count=1
23050 goto Jyoushi_Input_Seireki2:
23060 endif
23070 case 2:
23080 count=3
23090 if (No=-1) then
23100 count =2
23110 goto Jyoushi_Input_Seireki2:
23120 else
23130 b = val(buf_year$)
23140 buf_year = b*10 + No
23150 buf_year$ = str$(buf_year)
23160 buf_Jyoushi_Born_Day(0) = buf_year
23170 locate 1,3
23180 color rgb(255,255,255)
23190 print "                                        "
23200 locate 1,3
23210 print "上司の生まれた年代(西暦4桁):";buf_year$
23220 goto Jyoushi_Input_Seireki2:
23230 endif
23240 case 3:
23250 count=4
23260 if (No = -1) then
23270 count=3
23280 goto Jyoushi_Input_Seireki2:
23290 else
23300 b = val(buf_year$)
23310 buf_year=b*10+No
23320 buf_year$=str$(buf_year)
23330 buf_Jyoushi_Born_Day(0)=buf_year
23340 locate 1,3
23350 color RGB(255,255,255)
23360 print "                                      "
23370 locate 1,3
23380 print "上司の生まれた年代(西暦4桁):";buf_year$
23390 buf_year=val(buf_year$)
23400 'year=val(buf_year$)
23410 'if (No=-1) then
23420 'goto Input_Born_Month:
23430 'else
23440 goto Jyoushi_Input_Seireki2:
23450 endif
23460 case 4:
23470 'bufyear=buf_year
23480 if (No=-1) then
23490 buf_year = val(buf_year$)
23500 buf_Jyoushi_Born_Day(0)=buf_year
23510 sp_on 14,0
23520 goto Jyoushi_Input_Born_Month:
23530 else
23540 goto Jyoushi_Input_Seireki2:
23550 endif
23560 end select
23570 endif
23580 if (bg2 = 2) then
23590 select case count2
23600 case 0:
23610 if (No = -1) then
23620 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
23630 count=0
23640 locate 1,3
23650 color rgb(255,255,255)
23660 print "                                      "
23670 locate 1,3
23680 print "上司の生まれた年代（西暦4桁):"+buf_year$
23690 goto Jyoushi_Input_Seireki2:
23700 else
23710 '(buf_year=0) then
23720 buf_year=0:buf_year$="****"
23730 locate 1,3
23740 print "                                       "
23750 locate 1,3
23760 print "上司の生まれた年代(西暦4桁):"+buf_year$
23770 goto Jyoushi_Input_Seireki2:
23780 'endif
23790 endif
23800 end select
23810 endif
23820 'Input"上司の生れた年代(4桁,〜2025年):",year
23830 'if year > 2025 then goto Jyoushi_Input_Seireki:
23840 'if year = 123 then cls 3:cls 4:goto Main_Screen:
23850 '"4桁目"
23860 'bufyear4 = fix(year / 1000)
23870 '"3桁目"
23880 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
23890 '"2桁目"
23900 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
23910 '"1桁目"
23920 'bufyear1 = fix((year - ((bufyear4*
23930 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
23940 '2.生まれた月を入力
23950 Jyoushi_Input_Born_Month:
23960 cls 3:play "":count=0:count2=0
23970 'No=-1:Okのとき
23980 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
23990 for i=0 to 1
24000 buf_month(i)=0
24010 next i
24020 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
24030 gload Gazo$ + "Screen1.png",0,0,0
24040 gload Gazo$ + "downscreen.png",0,0,800
24050 'Init"kb:4"
24060 '音声ファイル再生 2023.06.07
24070 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
24080 font 48
24090 locate 0,1
24100 '文字色：黒　 color rgb(0,0,0)
24110 '文字色:白
24120 color rgb(255,255,255)
24130 print "上司の生まれた月を入れて下さい" + chr$(13)
24140 '文字色:白
24150 color rgb(255,255,255)
24160 locate 1,3
24170 '文字色:白
24180 print "上司の生まれた月(1月~12月):"+buf_Month$
24190 color rgb(255,0,0)
24200 'locate 4,6:print ":7"
24210 'locate 9,6:print ":8"
24220 'locate 12,6:print ":9"
24230 locate 4,6
24240 '文字色:赤
24250 print ":7  :8  :9" + chr$(13)
24260 color rgb(255,0,0)
24270 locate 4,8
24280 print ":4  :5  :6" + chr$(13)
24290 color rgb(255,0,0)
24300 locate 4,10
24310 print ":1  :2  :3" + chr$(13)
24320 locate 4,12
24330 print "    :0"
24340 locate 12,12
24350 color rgb(0,0,255)
24360 print ":Ok"
24370 sp_on 4,0: sp_on 5,0:sp_on 6,0
24380 sp_on 7,0:sp_on 8,0:sp_on 9,0
24390 sp_on 10,0:sp_on 11,0:sp_on 12,0
24400 sp_on 13,0:sp_on 14,1
24410 Jyoushi_Input_Born_Month2:
24420 key$="":bg=0:y=0:y2=0:bg2=0
24430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
24440 key$ = inkey$
24450 bg = strig(1)
24460 y = stick(1)
24470 y2 = stick(0)
24480 bg2 = strig(0)
24490 pause 5
24500 wend
24510 '十字キー　ここから
24520 '上の矢印　または、十字キー上
24530 if ((y = -1) or (key$ = chr$(30))) then
24540 select case No
24550 'No=-1:okのとき:初期の状態
24560 '0kボタンから３に移動
24570 '上に行く 処理
24580 case -1:
24590 No=3:sp_on 12,1:sp_on 14,0
24600 pause 200:goto Jyoushi_Input_Born_Month2:
24610 '選択肢:3
24620 '3ボタンから 6に移動
24630 case 3:
24640 No=6:sp_on 12,0:sp_on 11,1
24650 pause 200:goto Jyoushi_Input_Born_Month2:
24660 '6ボタンから ９に移動
24670 case 6:
24680 No=9:sp_on 10,1:sp_on 11,0
24690 pause 200:goto Jyoushi_Input_Born_Month2:
24700 '6ボタンから ９に移動　ここまで
24710 '9で上を押して何もしない
24720 case 9:
24730 '何もしない
24740 No=9
24750 pause 200:goto Jyoushi_Input_Born_Month2:
24760 '9で上を押しても何もしない　ここまで
24770 '上　 0ボタンから2ボタン
24780 'sp_on 6,1:1
24790 'sp_on 8,1:5
24800 'sp_on 7,1:7
24810 case 0:
24820 No=2:sp_on 13,0:sp_on 9,1:
24830 pause 200:goto Jyoushi_Input_Born_Month2:
24840 '上  0ボタンから2ボタン　ここまで
24850 '2から５になる 上
24860 case 2:
24870 No=5:sp_on 8,1:sp_on 9,0:
24880 pause 200:goto Jyoushi_Input_Born_Month2:
24890 case 5:
24900 No=8:sp_on 7,1:sp_on 8,0
24910 pause 200:goto Jyoushi_Input_Born_Month2:
24920 case 8:
24930 pause 200:goto Input_Born_Month2:
24940 case 1:
24950 No=4:sp_on 5,1:sp_on 6,0
24960 pause 200:goto Jyoushi_Input_Born_Month2:
24970 case 4:
24980 No=7:sp_on 4,1:sp_on 5,0
24990 pause 200:goto Jyoushi_Input_Born_Month2:
25000 case 7:
25010 pause 200:goto Input_Born_Month2:
25020 end select
25030 endif
25040 '左３　ここまで
25050 '下の矢印
25060 '中央 2
25070 if ((y=1) or (key$ = chr$(31))) then
25080 select case No
25090 '9から６に下げる
25100 case 9:
25110 No=6:sp_on 11,1:sp_on 10,0
25120 pause 200:goto Jyoushi_Input_Born_Month2:
25130 '6から３に下げる
25140 case 6:
25150 No=3:sp_on 12,1:sp_on 11,0
25160 pause 200:goto Jyoushi_Input_Born_Month2:
25170 '3から０ｋに変える
25180 case 3:
25190 No=-1:sp_on 14,1:sp_on 12,0
25200 pause 200:goto Jyoushi_Input_Born_Month2:
25210 'Okから下のボタンを押しても何もしない
25220 case -1:
25230 pause 200:goto Jyoushi_Input_Born_Month2:
25240 case 8:
25250 No=5:sp_on 8,1:sp_on 7,0
25260 pause 200:goto Jyoushi_Input_Born_Month2:
25270 case 5:
25280 No=2:sp_on 9,1:sp_on 8,0
25290 pause 200:goto Jyoushi_Input_Born_Month2:
25300 case 2:
25310 No=0:sp_on 13,1:sp_on 9,0
25320 pause 200:goto Jyoushi_Input_Born_Month2:
25330 case 0:
25340 pause 200:goto Jyoushi_Input_Born_Month2:
25350 case 7:
25360 No=4:sp_on 5,1:sp_on 4,0
25370 pause 200:goto Jyoushi_Input_Born_Month2:
25380 case 4:
25390 No=1:sp_on 6,1:sp_on 5,0
25400 pause 200:goto Jyoushi_Input_Born_Month2:
25410 case 1:
25420 pause 200:goto Jyoushi_Input_Born_Month2:
25430 end select
25440 endif
25450 '左へボタン 十字キー　左　or 　カーソル左
25460 if ((y2 = -1) or (key$ = chr$(29))) then
25470 select case No
25480 'Ok ボタン  Okから　左　０に行く
25490 case -1:
25500 No=0:sp_on 13,1:sp_on 14,0
25510 pause 200:goto Jyoushi_Input_Born_Month2:
25520 '0 ボタン  左　何もしない
25530 case 0:
25540 pause 200:goto Jyoushi_Input_Born_Month2:
25550 case 3:
25560 No=2:sp_on 9,1:sp_on 12,0:
25570 pause 200:goto Jyoushi_Input_Born_Month2:
25580 case 2:
25590 No=1:sp_on 6,1:sp_on 9,0:
25600 pause 200:goto Jyoushi_Input_Born_Month2:
25610 case 1:
25620 pause 200:goto Jyoushi_Input_Born_Month2:
25630 case 6:
25640 No=5:sp_on 8,1:sp_on 11,0
25650 pause 200:goto Jyoushi_Input_Born_Month2:
25660 case 5:
25670 No=4:sp_on 5,1:sp_on 8,0
25680 pause 200:goto Jyoushi_Input_Born_Month2:
25690 case 4:
25700 pause 200:goto Jyoushi_Input_Born_Month2:
25710 case 9:
25720 No=8:sp_on 7,1:sp_on 10,0
25730 pause 200:goto Input_Born_Month2:
25740 case 8:
25750 No=7:sp_on 4,1:sp_on 7,0
25760 pause 200:goto Jyoushi_Input_Born_Month2:
25770 case 7:
25780 pause 200:goto Jyoushi_Input_Born_Month2:
25790 end select
25800 endif
25810 '右  十字キー　右　or カーソル　右
25820 if ((y2 = 1) or (key$ = chr$(28))) then
25830 select case No
25840 '0ボタンからokボタン右に移動
25850 case 0:
25860 No=-1:sp_on 14,1:sp_on 13,0
25870 pause 200:goto Jyoushi_Input_Born_Month2:
25880 '0ボタンからokボタン 右に移動　ここまで
25890 'OKボタンで右を押して何もしない
25900 case -1:
25910 pause 200:goto Jyoushi_Input_Born_Month2:
25920 case 1:
25930 No=2:sp_on 9,1:sp_on 6,0
25940 pause 200:goto Jyoushi_Input_Born_Month2:
25950 case 2:
25960 No=3:sp_on 12,1:sp_on 9,0
25970 pause 200:goto Jyoushi_Input_Born_Month2:
25980 case 3:
25990 pause 200:goto Jyoushi_Input_Born_Month2:
26000 case 4:
26010 No=5:sp_on 8,1:sp_on 5,0
26020 pause 200:goto Jyoushi_Input_Born_Month2:
26030 case 5:
26040 No=6:sp_on 11,1:sp_on 8,0
26050 pause 200:goto Jyoushi_Input_Born_Month2:
26060 case 7:
26070 No=8:sp_on 7,1:sp_on 4,0
26080 pause 200:goto Jyoushi_Input_Born_Month2:
26090 case 8:
26100 No=9:sp_on 10,1:sp_on 7,0
26110 pause 200:goto Jyoushi_Input_Born_Month2:
26120 case 9:
26130 pause 200:goto Jyoushi_Input_Born_Month2:
26140 case 6:
26150 pause 200:goto Jyoushi_Input_Born_Month2:
26160 end select
26170 'Okから右ボタンを押して何もしない ここまで
26180 endif
26190 '十字キー　ここまで
26200 '右の丸ボタン　決定キー
26210 if ((bg=2) or (key$=chr$(13))) then
26220 select case count
26230 case 0:
26240 count=1:buf_Month$="**":buf_Month$=str$(No):buf_month=No
26250 locate 1,3
26260 color RGB(255,255,255)
26270 print "生まれた月(1月~12月):"+buf_Month$
26280 goto Jyoushi_Input_Born_Month2:
26290 case 1:
26300 count = 2:c = No
26310 c = val(buf_Month$)
26320 if (No = -1) then
26330 'count=0
26340 month=buf_month
26350 buf_month=val(buf_Month$)
26360 month=buf_month
26370 buf_Jyoushi_Born_Day(1)=month
26380 '生まれた日に飛ぶ
26390 goto Jyoushi_Input_Born_Day:
26400 else
26410 buf_month = c*10 + No
26420 buf_Month$= str$(buf_month)
26430 buf_Jyoushi_Born_Day(1)=buf_month
26440 locate 2,3
26450 color Rgb(255,255,255)
26460 print "上司の生まれた月(1月~12月):";buf_Month$
26470 goto Jyoushi_Input_Born_Month2:
26480 endif
26490 case 2:
26500 count=3
26510 'c= val(buf_Month$)
26520 'buf_month = c*10 + No
26530 'buf_Month$ = str$(buf_month)
26540 'locate 2,3
26550 'print "上司の生まれた月(1月～12月):";buf_Month$
26560 'goto Jyoushi_Input_Born_Month2:
26570 'case 3:
26580 'count=4
26590 'b=val(buf_month$)
26600 'buf_month=c*10+No
26610 'buf_Month$=str$(buf_month)
26620 'locate 2,3
26630 'print "上司の生まれた月(1月～12月):";buf_Month$
26640 'buf_month=val(buf_Month$)
26650 'year=val(buf_year$)
26660 if (No=-1) then
26670 goto Jyoushi_Input_Born_Day:
26680 else
26690 goto Jyoushi_Input_Born_Month2:
26700 endif
26710 'case 4:
26720 'bufyear=buf_year
26730 'if (No=-1) then
26740 'buf_month = val(buf_Month$)
26750 'month = buf_month
26760 'sp_on 14,0
26770 'goto Input_Born_Day:
26780 'else
26790 'goto Input_Born_Month2:
26800 'endif
26810 end select
26820 endif
26830 '左の丸ボタン　キャンセル
26840 if (bg2=2) then
26850 select case count2
26860 case 0:
26870 if (No = -1) then
26880 buf_month=0:buf_Month$="**"
26890 count=0
26900 goto rewrite2:
26910 else
26920 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
26930 buf_month = 0:buf_Month$ = "**"
26940 locate 2,3
26950 color rgb(255,255,255)
26960 print "                                       "
26970 goto rewrite2:
26980 if (No>12) then
26990 ui_msg"値が範囲外です。"
27000 goto rewrite2:
27010 endif
27020 endif
27030 endif
27040 rewrite2:
27050 locate 1,3
27060 color rgb(255,255,255)
27070 print "                                      "
27080 locate 1,3
27090 print "上司の生まれた月(1月~12月):"+buf_Month$
27100 goto Jyoushi_Input_Born_Month2:
27110 end select
27120 'endif
27130 endif
27140 end
27150 'end
27160 '生れた日を入力
27170 Jyoushi_Input_Born_Day:
27180 '生まれた日入力
27190 cls 3:play ""
27200 'No=-1:Okのとき
27210 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
27220 for i=0 to 1
27230 buf_day(i)=0
27240 next i
27250 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27260 gload Gazo$ + "Screen1.png",0,0,0
27270 gload Gazo$ + "downscreen.png",0,0,800
27280 'Init"kb:2"
27290 '音声ファイル再生 2023.06.07
27300 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
27310 font 48
27320 locate 1,1
27330 '文字色：黒　 color rgb(0,0,0)
27340 color rgb(255,255,255)
27350 print "上司の生まれた日を入れて下さい" + chr$(13)
27360 locate 1,3
27370 color rgb(255,255,255)
27380 print "                                      "
27390 locate 1,3
27400 print "上司の生まれた日(1日~31日):"+buf_Day$
27410 color rgb(255,0,0)
27420 'locate 4,6:print ":7"
27430 'locate 9,6:print ":8"
27440 'locate 12,6:print ":9"
27450 locate 4,6
27460 print ":7  :8  :9" + chr$(13)
27470 color rgb(255,0,0)
27480 locate 4,8
27490 print ":4  :5  :6" + chr$(13)
27500 color rgb(255,0,0)
27510 locate 4,10
27520 print ":1  :2  :3" + chr$(13)
27530 locate 4,12
27540 print "    :0"
27550 locate 12,12
27560 color rgb(0,0,255)
27570 print ":Ok"
27580 sp_on 4,0: sp_on 5,0:sp_on 6,0
27590 sp_on 7,0:sp_on 8,0:sp_on 9,0
27600 sp_on 10,0:sp_on 11,0:sp_on 12,0
27610 sp_on 13,0:sp_on 14,1
27620 Jyoushi_Input_Born_Day2:
27630 key$="":bg=0:y=0:y2=0:bg2=0:
27640 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27650 key$ = inkey$
27660 bg = strig(1)
27670 y = stick(1)
27680 y2 = stick(0)
27690 bg2 = strig(0)
27700 pause 5
27710 wend
27720 '十字キー　ここから
27730 '上の矢印　または、十字キー上
27740 if ((y = -1) or (key$ = chr$(30))) then
27750 select case No
27760 'No=-1:okのとき:初期の状態
27770 '0kボタンから３に移動
27780 '上に行く 処理
27790 case -1:
27800 No=3:sp_on 12,1:sp_on 14,0
27810 pause 200:goto Jyoushi_Input_Born_Day2:
27820 '選択肢:3
27830 '3ボタンから 6に移動
27840 case 3:
27850 No=6:sp_on 12,0:sp_on 11,1
27860 pause 200:goto Jyoushi_Input_Born_Day2:
27870 '6ボタンから ９に移動
27880 case 6:
27890 No=9:sp_on 10,1:sp_on 11,0
27900 pause 200:goto Jyoushi_Input_Born_Day2:
27910 '6ボタンから ９に移動　ここまで
27920 '9で上を押して何もしない
27930 case 9:
27940 '何もしない
27950 No=9
27960 pause 200:goto Jyoushi_Input_Born_Day2:
27970 '9で上を押しても何もしない　ここまで
27980 '上　 0ボタンから2ボタン
27990 'sp_on 6,1:1
28000 'sp_on 8,1:5
28010 'sp_on 7,1:7
28020 case 0:
28030 No=2:sp_on 13,0:sp_on 9,1:
28040 pause 200:goto Jyoushi_Input_Born_Day2:
28050 '上  0ボタンから2ボタン　ここまで
28060 '2から５になる 上
28070 case 2:
28080 No=5:sp_on 8,1:sp_on 9,0:
28090 pause 200:goto Jyoushi_Input_Born_Day2:
28100 case 5:
28110 No=8:sp_on 7,1:sp_on 8,0
28120 pause 200:goto Jyoushi_Input_Born_Day2:
28130 case 8:
28140 pause 200:goto Jyoushi_Input_Born_Day2:
28150 case 1:
28160 No=4:sp_on 5,1:sp_on 6,0
28170 pause 200:goto Jyoushi_Input_Born_Day2:
28180 case 4:
28190 No=7:sp_on 4,1:sp_on 5,0
28200 pause 200:goto Jyoushi_Input_Born_Day2:
28210 case 7:
28220 pause 200:goto Jyoushi_Input_Born_Day2:
28230 end select
28240 endif
28250 '左３　ここまで
28260 '下の矢印
28270 '中央 2
28280 if ((y=1) or (key$ = chr$(31))) then
28290 select case No
28300 '9から６に下げる
28310 case 9:
28320 No=6:sp_on 11,1:sp_on 10,0
28330 pause 200:goto Jyoushi_Input_Born_Day2:
28340 '6から３に下げる
28350 case 6:
28360 No=3:sp_on 12,1:sp_on 11,0
28370 pause 200:goto Jyoushi_Input_Born_Day2:
28380 '3から０ｋに変える
28390 case 3:
28400 No=-1:sp_on 14,1:sp_on 12,0
28410 pause 200:goto Jyoushi_Input_Born_Day2:
28420 'Okから下のボタンを押しても何もしない
28430 case -1:
28440 pause 200:goto Jyoushi_Input_Born_Day2:
28450 case 8:
28460 No=5:sp_on 8,1:sp_on 7,0
28470 pause 200:goto Jyoushi_Input_Born_Day2:
28480 case 5:
28490 No=2:sp_on 9,1:sp_on 8,0
28500 pause 200:goto Jyoushi_Input_Born_Day2:
28510 case 2:
28520 No=0:sp_on 13,1:sp_on 9,0
28530 pause 200:goto Jyoushi_Input_Born_Day2:
28540 case 0:
28550 pause 200:goto Jyoushi_Input_Born_Day2:
28560 case 7:
28570 No=4:sp_on 5,1:sp_on 4,0
28580 pause 200:goto Jyoushi_Input_Born_Day2:
28590 case 4:
28600 No=1:sp_on 6,1:sp_on 5,0
28610 pause 200:goto Jyoushi_Input_Born_Day2:
28620 case 1:
28630 pause 200:goto Jyoushi_Input_Born_Day2:
28640 end select
28650 endif
28660 '左へボタン 十字キー　左　or 　カーソル左
28670 if ((y2 = -1) or (key$ = chr$(29))) then
28680 select case No
28690 'Ok ボタン  Okから　左　０に行く
28700 case -1:
28710 No=0:sp_on 13,1:sp_on 14,0
28720 pause 200:goto Jyoushi_Input_Born_Day2:
28730 '0 ボタン  左　何もしない
28740 case 0:
28750 pause 200:goto Jyoushi_Input_Born_Day2:
28760 case 3:
28770 No=2:sp_on 9,1:sp_on 12,0:
28780 pause 200:goto Jyoushi_Input_Born_Day2:
28790 case 2:
28800 No=1:sp_on 6,1:sp_on 9,0:
28810 pause 200:goto Jyoushi_Input_Born_Day2:
28820 case 1:
28830 pause 200:goto Jyoushi_Input_Born_Day2:
28840 case 6:
28850 No=5:sp_on 8,1:sp_on 11,0
28860 pause 200:goto Jyoushi_Input_Born_Day2:
28870 case 5:
28880 No=4:sp_on 5,1:sp_on 8,0
28890 pause 200:goto Jyoushi_Input_Born_Day2:
28900 case 4:
28910 pause 200:goto Jyoushi_Input_Born_Day2:
28920 case 9:
28930 No=8:sp_on 7,1:sp_on 10,0
28940 pause 200:goto Jyoushi_Input_Born_Day2:
28950 case 8:
28960 No=7:sp_on 4,1:sp_on 7,0
28970 pause 200:goto Jyoushi_Input_Born_Day2:
28980 case 7:
28990 pause 200:goto Jyoushi_Input_Born_Day2:
29000 end select
29010 endif
29020 '右  十字キー　右　or カーソル　右
29030 if ((y2 = 1) or (key$ = chr$(28))) then
29040 select case No
29050 '0ボタンからokボタン右に移動
29060 case 0:
29070 No=-1:sp_on 14,1:sp_on 13,0
29080 pause 200:goto Jyoushi_Input_Born_Day2:
29090 '0ボタンからokボタン 右に移動　ここまで
29100 'OKボタンで右を押して何もしない
29110 case -1:
29120 pause 200:goto Jyoushi_Input_Born_Day2:
29130 case 1:
29140 No=2:sp_on 9,1:sp_on 6,0
29150 pause 200:goto Jyoushi_Input_Born_Day2:
29160 case 2:
29170 No=3:sp_on 12,1:sp_on 9,0
29180 pause 200:goto Jyoushi_Input_Born_Day2:
29190 case 3:
29200 pause 200:goto Jyoushi_Input_Born_Day2:
29210 case 4:
29220 No=5:sp_on 8,1:sp_on 5,0
29230 pause 200:goto Jyoushi_Input_Born_Day2:
29240 case 5:
29250 No=6:sp_on 11,1:sp_on 8,0
29260 pause 200:goto Jyoushi_Input_Born_Day2:
29270 case 7:
29280 No=8:sp_on 7,1:sp_on 4,0
29290 pause 200:goto Jyoushi_Input_Born_Day2:
29300 case 8:
29310 No=9:sp_on 10,1:sp_on 7,0
29320 pause 200:goto Jyoushi_Input_Born_Day2:
29330 case 9:
29340 pause 200:goto Jyoushi_Input_Born_Day2:
29350 case 6:
29360 pause 200:goto Jyoushi_Input_Born_Day2:
29370 end select
29380 'Okから右ボタンを押して何もしない ここまで
29390 endif
29400 '十字キー　ここまで
29410 '右の丸ボタンを押したとき
29420 if ((bg = 2) or (key$ = chr$(13))) then
29430 'count :決定ボタンを押した回数
29440 select case (count)
29450 '1桁目入力
29460 case 0:
29470 count = 1:
29480 if (No = -1) then
29490 '1桁目　OKでは何もしない
29500 goto check2:
29510 else
29520 'ok以外のボタンを押したとき
29530 buf_day = No:buf_Day$=str$(No)
29540 buf_Jyoushi_Born_Day(2)=buf_day
29550 c=No
29560 locate 1,3
29570 print "                                      "
29580 color RGB(255,255,255)
29590 locate 1,3
29600 print "上司の生まれた日(1日~31日):"+buf_Day$
29610 endif
29620 check2:
29630 if (No >= 1 and No <= 9) then
29640 sp_on 14,0
29650 goto Jyoushi_Input_Born_Day2:
29660 else
29670 sp_on 14,0
29680 goto complate_jyoushi:
29690 'end
29700 endif
29710 case 1:
29720 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
29730 count = 2:
29740 'locate 2,3
29750 'color RGB(255,255,255)
29760 'print "生まれた日(1日~31日):";buf_Day$
29770 'Okボタンを押したときの処理
29780 '入力値　10未満のとき
29790 c = buf_day
29800 'if (No = -1) then
29810 'c=buf_day
29820 'buf_day = c
29830 'buf_Day$ = str$(buf_day)
29840 '10以下のとき
29850 'if (buf_day < 10) then
29860 sp_on 14,0
29870 'goto complate2:
29880 'end
29890 'endif
29900 'else
29910 'c=No
29920 buf_day = c * 10 + No
29930 buf_Day$ = str$(buf_day)
29940 buf_Jyoushi_Born_Day(2)=buf_day
29950 locate 1,3
29960 print "                                           "
29970 locate 1,3
29980 color Rgb(255,255,255)
29990 print "上司の生まれた日(1日~31日):"+buf_Day$
30000 goto Jyoushi_Input_Born_Day2:
30010 'goto complate2:
30020 'endif
30030 'endif
30040 '生まれた日　2桁目の数字　or 1桁の数字 + ok
30050 case 2:
30060 'count=0
30070 'c=val(buf_Day$)
30080 'buf_day=c*10+No
30090 'buf_Day$=str$(buf_day)
30100 'day=buf_day
30110 'locate 2,3
30120 'print "生まれた日(1日〜31日):";buf_Day$
30130 'No=-1:ok ボタンを押したとき
30140 if (No = -1) then
30150 'if ((buf_day > 0) and (buf_day < 32)) then
30160 sp_on 14,0
30170 goto complate_jyoushi:
30180 'end
30190 'else
30200 'goto Jyoushi_Input_Born_Day2:
30210 endif
30220 'Okボタン以外を押したとき
30230 'else
30240 'c=val(buf_Day$)
30250 'buf_day = c * 10 + No
30260 'buf_Day$ = str$(buf_day)
30270 'locate 2,3
30280 'print "生まれた日(1日~31日):";buf_Day$
30290 'goto Jyoushi_Input_Born_Day2:
30300 'endif
30310 case 3:
30320 count=4
30330 'c=val(buf_day$)
30340 'buf_day=c*10+No
30350 'buf_day$=str$(buf_day)
30360 'locate 2,3
30370 'print "生まれた日を入れてください:";buf_day$
30380 'year=val(buf_year$)
30390 if (No = -1) then
30400 'goto Jyoushi_Input_Born_Day:
30410 sp_on 14,0:
30420 goto complate_jyoushi:
30430 else
30440 'goto Jyoushi_Input_Born_Month2:
30450 'endif
30460 'case 4:
30470 'bufyear=buf_year
30480 'if (No=-1) then
30490 'buf_day = val(buf_day$)
30500 'bufday = buf_day
30510 'sp_on 14,0
30520 goto complate_jyoushi:
30530 'else
30540 'goto Jyoushi_Input_Born_Day2:
30550 endif
30560 end select
30570 endif
30580 if (bg2=2) then
30590 select case count2
30600 case 0:
30610 if (No=-1) then
30620 buf_day=0:buf_Day$="**"
30630 if (buf_day>=1 and buf_day<=31) then
30640 count=0
30650 buf_day=0:buf_Day$="**"
30660 goto rewrite_day3:
30670 else
30680 buf_day=0:buf_Day$="**"
30690 ui_msg"値が範囲外です"
30700 endif
30710 goto rewrite_day3:
30720 else
30730 goto rewrite_day3:
30740 endif
30750 rewrite_day3:
30760 locate 2,3
30770 color rgb(255,255,255)
30780 print "                                      "
30790 locate 2,3
30800 print "生まれた日(1日~31日):"+buf_Day$
30810 goto Jyoushi_Input_Born_Day2:
30820 end select
30830 endif
30840 '--------------------------------------------'
30850 'locate 2,0:color rgb(255,0,0)
30860 'print "上司の生まれた年代を入力"
30870 'color rgb(255,255,255)
30880 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
30890 'locate 2,4:Input "上司の生まれた年:",born_year
30900 '誕生日データーを配列に代入
30910 'buf_Jyoushi_Born_Year:上司の生まれた年代
30920 'buf_Jyoushi_Born_Day(0) = born_year
30930 'born_year = 0
30940 '---------------------------------------------'
30950 'goto Jyoushi_born_month:
30960 '1-2.生まれた月を入力
30970 'Jyoushi_born_month:
30980 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
30990 'init "kb:4"
31000 'locate 2,1:
31010 'color rgb(255,0,0)
31020 'print "上司の生まれた月入力"
31030 'color rgb(255,255,255)
31040 'locate 2,4:print "生まれた月を入力してください"
31050 'locate 2,5
31060 'Input "上司の生まれ月:",born_month
31070 'buf_Jyoushi_Born_Day(1) = born_month
31080 'born_month = 0
31090 'goto Jyoushi_born_day:
31100 'buf_Jyoushi_Born_day
31110 '1-3.生まれた日を入力
31120 'Jyoushi_born_day:
31130 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31140 'init "kb:4"
31150 'locate 2,1:color rgb(255,0,0)
31160 'print "上司の生まれた日　入力"
31170 'locate 2,4:color rgb(255,255,255)
31180 'print "生まれた日を入力してください"
31190 'locate 2,5
31200 'Input "上司の生まれた日:",born_day
31210 'buf_Jyoushi_Born_Day(2) = born_day
31220 'born_day = 0
31230 'goto buka_born_year:
31240 '2.部下の誕生日入力
31250 '2-1.生まれた年を入力
31260 'buka_born_year:
31270 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31280 'init "kb:2"
31290 'locate 1,1:color rgb(255,0,0)
31300 'print "部下の生まれた年代入力"
31310 'locate 0,4:color rgb(255,255,255)
31320 'print "部下の生まれた年（西暦4桁）を入れてください"
31330 'locate 0,5
31340 'Input "部下の生まれた年(西暦4桁):",born_year
31350 'buf_Buka_Born_Day(0) = born_year
31360 'born_year = 0
31370 '2-2.生まれた月を入力
31380 'buka_born_month:
31390 'cls 3:gload Gazo$+"Screen1.png",0,0,0
31400 'init "kb:2"
31410 'locate 2,1:color rgb(255,0,0)
31420 'print "部下の生まれた月 入力"
31430 'locate 2,4:color rgb(255,255,255)
31440 'print "部下の生まれた月を入力してください"
31450 'locate 2,5:Input "部下の生まれた月:",born_month
31460 'buf_Buka_Born_Day(1) = born_month
31470 '2-3.生まれた日を入力
31480 'buka_born_day:
31490 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
31500 'init "kb:2"
31510 'locate 2,1:color rgb(255,0,0)
31520 'print "生まれた日入力"
31530 'color rgb(255,255,255)
31540 'locate 2,4:print "生まれた日を入力してください"
31550 'locate 2,5:Input "部下の生まれた日:",born_day
31560 'buf_Buka_Born_Day(2) = born_day
31570 'born_day=0:goto Result_Business_Aisyou:
31580 '--------------------------------------------'
31590 complate_jyoushi:
31600 a=buf_Jyoushi_Born_Day(0):b=buf_Jyoushi_Born_Day(1):c=buf_Jyoushi_Born_Day(2)
31610 buf_Jyoushi = Kabara_Num(a,b,c)
31620 a_1=buf_Jyoushi
31630 goto Buka_Input_Seireki:
31640 '--------------------------------------------'
31650 '部下'
31660 '1.部下の生まれた年代'
31670 Buka_Input_Seireki:
31680 cls 3:play "":count=0:count2=0
31690 init"kb:4"
31700 'No=-1:Okのとき
31710 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****"
31720 for i=0 to 3
31730 buf_Buka_Born_Day(i)=0
31740 next i
31750 gload Gazo$ + "Screen1.png",0,0,0
31760 gload Gazo$ + "downscreen.png",0,0,800
31770 'Init"kb:2"
31780 '音声ファイル再生 2023.06.07
31790 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
31800 font 48
31810 locate 0,1
31820 '文字色：黒　 color rgb(0,0,0)
31830 color rgb(255,255,255)
31840 print "部下の生まれた年代を入れて下さい" + chr$(13)
31850 color rgb(255,255,255)
31860 locate 1,3
31870 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
31880 color rgb(255,0,0)
31890 'locate 4,6:print ":7"
31900 'locate 9,6:print ":8"
31910 'locate 12,6:print ":9"
31920 locate 4,6
31930 print ":7  :8  :9" + chr$(13)
31940 color rgb(255,0,0)
31950 locate 4,8
31960 print ":4  :5  :6" + chr$(13)
31970 color rgb(255,0,0)
31980 locate 4,10
31990 print ":1  :2  :3" + chr$(13)
32000 locate 4,12
32010 print "    :0"
32020 locate 12,12
32030 color rgb(0,0,255)
32040 print ":Ok"
32050 sp_on 4,0: sp_on 5,0:sp_on 6,0
32060 sp_on 7,0:sp_on 8,0:sp_on 9,0
32070 sp_on 10,0:sp_on 11,0:sp_on 12,0
32080 sp_on 13,0:sp_on 14,1
32090 Buka_Input_Seireki2:
32100 key$="":bg=0:y=0:y2=0:bg2=0:
32110 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
32120 key$ = inkey$
32130 bg = strig(1)
32140 y = stick(1)
32150 y2 = stick(0)
32160 bg2=strig(0)
32170 pause 5
32180 wend
32190 '十字キー　ここから
32200 '上の矢印　または、十字キー上
32210 if ((y = -1) or (key$ = chr$(30))) then
32220 select case No
32230 'No=-1:okのとき:初期の状態
32240 '0kボタンから３に移動
32250 '上に行く 処理
32260 case -1:
32270 No=3:sp_on 12,1:sp_on 14,0
32280 pause 200:goto Buka_Input_Seireki2:
32290 '選択肢:3
32300 '3ボタンから 6に移動
32310 case 3:
32320 No=6:sp_on 12,0:sp_on 11,1
32330 pause 200:goto Buka_Input_Seireki2:
32340 '6ボタンから ９に移動
32350 case 6:
32360 No=9:sp_on 10,1:sp_on 11,0
32370 pause 200:goto Buka_Input_Seireki2:
32380 '6ボタンから ９に移動　ここまで
32390 '9で上を押して何もしない
32400 case 9:
32410 '何もしない
32420 No=9
32430 pause 200:goto Buka_Input_Seireki2:
32440 '9で上を押しても何もしない　ここまで
32450 '上　 0ボタンから2ボタン
32460 'sp_on 6,1:1
32470 'sp_on 8,1:5
32480 'sp_on 7,1:7
32490 case 0:
32500 No=2:sp_on 13,0:sp_on 9,1:
32510 pause 200:goto Buka_Input_Seireki2:
32520 '上  0ボタンから2ボタン　ここまで
32530 '2から５になる 上
32540 case 2:
32550 No=5:sp_on 8,1:sp_on 9,0:
32560 pause 200:goto Buka_Input_Seireki2:
32570 case 5:
32580 No=8:sp_on 7,1:sp_on 8,0
32590 pause 200:goto Buka_Input_Seireki2:
32600 case 8:
32610 pause 200:goto Buka_Input_Seireki2:
32620 case 1:
32630 No=4:sp_on 5,1:sp_on 6,0
32640 pause 200:goto Buka_Input_Seireki2:
32650 case 4:
32660 No=7:sp_on 4,1:sp_on 5,0
32670 pause 200:goto Buka_Input_Seireki2:
32680 case 7:
32690 pause 200:goto Buka_Input_Seireki2:
32700 end select
32710 endif
32720 '左３　ここまで
32730 '下の矢印
32740 '中央 2
32750 if ((y=1) or (key$ = chr$(31))) then
32760 select case No
32770 '9から６に下げる
32780 case 9:
32790 No=6:sp_on 11,1:sp_on 10,0
32800 pause 200:goto Buka_Input_Seireki2:
32810 '6から３に下げる
32820 case 6:
32830 No=3:sp_on 12,1:sp_on 11,0
32840 pause 200:goto Buka_Input_Seireki2:
32850 '3から０ｋに変える
32860 case 3:
32870 No=-1:sp_on 14,1:sp_on 12,0
32880 pause 200:goto Buka_Input_Seireki2:
32890 'Okから下のボタンを押しても何もしない
32900 case -1:
32910 pause 200:goto Buka_Input_Seireki2:
32920 case 8:
32930 No=5:sp_on 8,1:sp_on 7,0
32940 pause 200:goto Buka_Input_Seireki2:
32950 case 5:
32960 No=2:sp_on 9,1:sp_on 8,0
32970 pause 200:goto Buka_Input_Seireki2:
32980 case 2:
32990 No=0:sp_on 13,1:sp_on 9,0
33000 pause 200:goto Buka_Input_Seireki2:
33010 case 0:
33020 pause 200:goto Buka_Input_Seireki2:
33030 case 7:
33040 No=4:sp_on 5,1:sp_on 4,0
33050 pause 200:goto Buka_Input_Seireki2:
33060 case 4:
33070 No=1:sp_on 6,1:sp_on 5,0
33080 pause 200:goto Buka_Input_Seireki2:
33090 case 1:
33100 pause 200:goto Buka_Input_Seireki2:
33110 end select
33120 endif
33130 '左へボタン 十字キー　左　or 　カーソル左
33140 if ((y2 = -1) or (key$ = chr$(29))) then
33150 select case No
33160 'Ok ボタン  Okから　左　０に行く
33170 case -1:
33180 No=0:sp_on 13,1:sp_on 14,0
33190 pause 200:goto Buka_Input_Seireki2:
33200 '0 ボタン  左　何もしない
33210 case 0:
33220 pause 200:goto Buka_Input_Seireki2:
33230 case 3:
33240 No=2:sp_on 9,1:sp_on 12,0:
33250 pause 200:goto Buka_Input_Seireki2:
33260 case 2:
33270 No=1:sp_on 6,1:sp_on 9,0:
33280 pause 200:goto Buka_Input_Seireki2:
33290 case 1:
33300 pause 200:goto Buka_Input_Seireki2:
33310 case 6:
33320 No=5:sp_on 8,1:sp_on 11,0
33330 pause 200:goto Buka_Input_Seireki2:
33340 case 5:
33350 No=4:sp_on 5,1:sp_on 8,0
33360 pause 200:goto Buka_Input_Seireki2:
33370 case 4:
33380 pause 200:goto Buka_Input_Seireki2:
33390 case 9:
33400 No=8:sp_on 7,1:sp_on 10,0
33410 pause 200:goto Buka_Input_Seireki2:
33420 case 8:
33430 No=7:sp_on 4,1:sp_on 7,0
33440 pause 200:goto Buka_Input_Seireki2:
33450 case 7:
33460 pause 200:goto Buka_Input_Seireki2:
33470 end select
33480 endif
33490 '右  十字キー　右　or カーソル　右
33500 if ((y2 = 1) or (key$ = chr$(28))) then
33510 select case No
33520 '0ボタンからokボタン右に移動
33530 case 0:
33540 No=-1:sp_on 14,1:sp_on 13,0
33550 pause 200:goto Buka_Input_Seireki2:
33560 '0ボタンからokボタン 右に移動　ここまで
33570 'OKボタンで右を押して何もしない
33580 case -1:
33590 pause 200:goto Buka_Input_Seireki2:
33600 case 1:
33610 No=2:sp_on 9,1:sp_on 6,0
33620 pause 200:goto Buka_Input_Seireki2:
33630 case 2:
33640 No=3:sp_on 12,1:sp_on 9,0
33650 pause 200:goto Buka_Input_Seireki2:
33660 case 3:
33670 pause 200:goto Buka_Input_Seireki2:
33680 case 4:
33690 No=5:sp_on 8,1:sp_on 5,0
33700 pause 200:goto Buka_Input_Seireki2:
33710 case 5:
33720 No=6:sp_on 11,1:sp_on 8,0
33730 pause 200:goto Buka_Input_Seireki2:
33740 case 7:
33750 No=8:sp_on 7,1:sp_on 4,0
33760 pause 200:goto Buka_Input_Seireki2:
33770 case 8:
33780 No=9:sp_on 10,1:sp_on 7,0
33790 pause 200:goto Buka_Input_Seireki2:
33800 case 9:
33810 pause 200:goto Buka_Input_Seireki2:
33820 case 6:
33830 pause 200:goto Buka_Input_Seireki2:
33840 end select
33850 'Okから右ボタンを押して何もしない ここまで
33860 endif
33870 '十字キー　ここまで
33880 if ((bg=2) or (key$=chr$(13))) then
33890 select case count
33900 case 0:
33910 count=1
33920 if (No=-1) then
33930 count=0
33940 'Okボタンを押したとき
33950 goto Buka_Input_Seireki2:
33960 else
33970 'Okボタン以外が押されたとき
33980 if (No>=1 and No<=2) then
33990 buf_buka_year$="":buf_buka_year$=str$(No)
34000 buf_buka_year=No
34010 buf_Buka_Born_Day(0)=buf_buka_year
34020 locate 2,3
34030 color rgb(255,255,255)
34040 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34050 goto Buka_Input_Seireki2:
34060 else
34070 count=0
34080 ui_msg"数字が範囲外になります。"
34090 buf_buka_year$="":buf_buka_year=0
34100 goto Buka_Input_Seireki2:
34110 endif
34120 endif
34130 case 1:
34140 count = 2
34150 if (No = -1) then
34160 count = 1
34170 goto Buka_Input_Seireki2:
34180 else
34190 b = val(buf_buka_year$)
34200 buf_buka_year = b * 10 + No
34210 buf_buka_year$ = str$(buf_buka_year)
34220 buf_Buka_Born_Day(0)=buf_buka_year
34230 locate 1,3
34240 color rgb(255,255,255)
34250 print "                                                                "
34260 locate 1,3
34270 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34280 'if (No = -1) then
34290 'count=1
34300 goto Buka_Input_Seireki2:
34310 endif
34320 case 2:
34330 count=3
34340 if (No=-1) then
34350 count =2
34360 goto Buka_Input_Seireki2:
34370 else
34380 b = val(buf_buka_year$)
34390 buf_buka_year = b*10 + No
34400 buf_buka_year$ = str$(buf_buka_year)
34410 locate 1,3
34420 color rgb(255,255,255)
34430 print "                                        "
34440 locate 1,3
34450 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
34460 goto Buka_Input_Seireki2:
34470 endif
34480 case 3:
34490 count=4
34500 if (No = -1) then
34510 count=3
34520 goto Buka_Input_Seireki2:
34530 else
34540 b = buf_buka_year
34550 buf_buka_year=b*10+No
34560 buf_buka_year$=str$(buf_buka_year)
34570 locate 1,3
34580 color RGB(255,255,255)
34590 print "                                      "
34600 locate 1,3
34610 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
34620 buf_year=val(buf_year$)
34630 'year=val(buf_year$)
34640 'if (No=-1) then
34650 'goto Input_Born_Month:
34660 'else
34670 goto Buka_Input_Seireki2:
34680 endif
34690 case 4:
34700 'bufyear=buf_year
34710 if (No=-1) then
34720 buf_year = val(buf_year$)
34730 bufyear = buf_year
34740 sp_on 14,0
34750 goto Buka_Input_Born_Month:
34760 else
34770 goto Buka_Input_Seireki2:
34780 endif
34790 end select
34800 endif
34810 if (bg2 = 2) then
34820 select case count2
34830 case 0:
34840 if (No = -1) then
34850 buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
34860 count=0
34870 locate 1,3
34880 color rgb(255,255,255)
34890 print "                                      "
34900 locate 1,3
34910 print "部下の生まれた年代（西暦4桁):";buf_buka_year$
34920 goto Buka_Input_Seireki2:
34930 else
34940 '(buf_year=0) then
34950 buf_buka_year=0:buf_buka_year$="****"
34960 goto Buka_Input_Seireki2:
34970 'endif
34980 endif
34990 end select
35000 endif
35010 end
35020 'Input"部下の生れた年代(4桁,〜2025年):",year
35030 'if year > 2025 then goto Jyoushi_Input_Seireki:
35040 'if year = 123 then cls 3:cls 4:goto Main_Screen:
35050 '"4桁目"
35060 'bufyear4 = fix(year / 1000)
35070 '"3桁目"
35080 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
35090 '"2桁目"
35100 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
35110 '"1桁目"
35120 'bufyear1 = fix((year - ((bufyear4*
35130 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
35140 '1.部下の生まれた年代'
35150 '2.部下の生まれた月'
35160 Buka_Input_Born_Month:
35170 cls 3:play "":count=0:count2=0
35180 'No=-1:Okのとき
35190 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
35200 for i=0 to 1
35210 buf_month(i)=0
35220 next i
35230 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
35240 gload Gazo$ + "Screen1.png",0,0,0
35250 gload Gazo$ + "downscreen.png",0,0,800
35260 'Init"kb:4"
35270 '音声ファイル再生 2023.06.07
35280 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
35290 font 48
35300 locate 0,1
35310 '文字色：黒　 color rgb(0,0,0)
35320 '文字色:白
35330 color rgb(255,255,255)
35340 print "部下の生まれた月を入れて下さい" + chr$(13)
35350 '文字色:白
35360 color rgb(255,255,255)
35370 locate 1,3
35380 '文字色:白
35390 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
35400 color rgb(255,0,0)
35410 'locate 4,6:print ":7"
35420 'locate 9,6:print ":8"
35430 'locate 12,6:print ":9"
35440 locate 4,6
35450 '文字色:赤
35460 print ":7  :8  :9" + chr$(13)
35470 color rgb(255,0,0)
35480 locate 4,8
35490 print ":4  :5  :6" + chr$(13)
35500 color rgb(255,0,0)
35510 locate 4,10
35520 print ":1  :2  :3" + chr$(13)
35530 locate 4,12
35540 print "    :0"
35550 locate 12,12
35560 color rgb(0,0,255)
35570 print ":Ok"
35580 sp_on 4,0: sp_on 5,0:sp_on 6,0
35590 sp_on 7,0:sp_on 8,0:sp_on 9,0
35600 sp_on 10,0:sp_on 11,0:sp_on 12,0
35610 sp_on 13,0:sp_on 14,1
35620 Buka_Input_Born_Month2:
35630 key$="":bg=0:y=0:y2=0:bg2=0
35640 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
35650 key$ = inkey$
35660 bg = strig(1)
35670 y = stick(1)
35680 y2 = stick(0)
35690 bg2 = strig(0)
35700 pause 5
35710 wend
35720 '十字キー　ここから
35730 '上の矢印　または、十字キー上
35740 if ((y = -1) or (key$ = chr$(30))) then
35750 select case No
35760 'No=-1:okのとき:初期の状態
35770 '0kボタンから３に移動
35780 '上に行く 処理
35790 case -1:
35800 No=3:sp_on 12,1:sp_on 14,0
35810 pause 200:goto Buka_Input_Born_Month2:
35820 '選択肢:3
35830 '3ボタンから 6に移動
35840 case 3:
35850 No=6:sp_on 12,0:sp_on 11,1
35860 pause 200:goto Buka_Input_Born_Month2:
35870 '6ボタンから ９に移動
35880 case 6:
35890 No=9:sp_on 10,1:sp_on 11,0
35900 pause 200:goto Buka_Input_Born_Month2:
35910 '6ボタンから ９に移動　ここまで
35920 '9で上を押して何もしない
35930 case 9:
35940 '何もしない
35950 No=9
35960 pause 200:goto Buka_Input_Born_Month2:
35970 '9で上を押しても何もしない　ここまで
35980 '上　 0ボタンから2ボタン
35990 'sp_on 6,1:1
36000 'sp_on 8,1:5
36010 'sp_on 7,1:7
36020 case 0:
36030 No=2:sp_on 13,0:sp_on 9,1:
36040 pause 200:goto Buka_Input_Born_Month2:
36050 '上  0ボタンから2ボタン　ここまで
36060 '2から５になる 上
36070 case 2:
36080 No=5:sp_on 8,1:sp_on 9,0:
36090 pause 200:goto Buka_Input_Born_Month2:
36100 case 5:
36110 No=8:sp_on 7,1:sp_on 8,0
36120 pause 200:goto Buka_Input_Born_Month2:
36130 case 8:
36140 pause 200:goto Buka_Input_Born_Month2:
36150 case 1:
36160 No=4:sp_on 5,1:sp_on 6,0
36170 pause 200:goto Buka_Input_Born_Month2:
36180 case 4:
36190 No=7:sp_on 4,1:sp_on 5,0
36200 pause 200:goto Buka_Input_Born_Month2:
36210 case 7:
36220 pause 200:goto Buka_Input_Born_Month2:
36230 end select
36240 endif
36250 '左３　ここまで
36260 '下の矢印
36270 '中央 2
36280 if ((y=1) or (key$ = chr$(31))) then
36290 select case No
36300 '9から６に下げる
36310 case 9:
36320 No=6:sp_on 11,1:sp_on 10,0
36330 pause 200:goto Buka_Input_Born_Month2:
36340 '6から３に下げる
36350 case 6:
36360 No=3:sp_on 12,1:sp_on 11,0
36370 pause 200:goto Buka_Input_Born_Month2:
36380 '3から０ｋに変える
36390 case 3:
36400 No=-1:sp_on 14,1:sp_on 12,0
36410 pause 200:goto Buka_Input_Born_Month2:
36420 'Okから下のボタンを押しても何もしない
36430 case -1:
36440 pause 200:goto Buka_Input_Born_Month2:
36450 case 8:
36460 No=5:sp_on 8,1:sp_on 7,0
36470 pause 200:goto Buka_Input_Born_Month2:
36480 case 5:
36490 No=2:sp_on 9,1:sp_on 8,0
36500 pause 200:goto Buka_Input_Born_Month2:
36510 case 2:
36520 No=0:sp_on 13,1:sp_on 9,0
36530 pause 200:goto Buka_Input_Born_Month2:
36540 case 0:
36550 pause 200:goto Buka_Input_Born_Month2:
36560 case 7:
36570 No=4:sp_on 5,1:sp_on 4,0
36580 pause 200:goto Buka_Input_Born_Month2:
36590 case 4:
36600 No=1:sp_on 6,1:sp_on 5,0
36610 pause 200:goto Buka_Input_Born_Month2:
36620 case 1:
36630 pause 200:goto Buka_Input_Born_Month2:
36640 end select
36650 endif
36660 '左へボタン 十字キー　左　or 　カーソル左
36670 if ((y2 = -1) or (key$ = chr$(29))) then
36680 select case No
36690 'Ok ボタン  Okから　左　０に行く
36700 case -1:
36710 No=0:sp_on 13,1:sp_on 14,0
36720 pause 200:goto Buka_Input_Born_Month2:
36730 '0 ボタン  左　何もしない
36740 case 0:
36750 pause 200:goto Buka_Input_Born_Month2:
36760 case 3:
36770 No=2:sp_on 9,1:sp_on 12,0:
36780 pause 200:goto Buka_Input_Born_Month2:
36790 case 2:
36800 No=1:sp_on 6,1:sp_on 9,0:
36810 pause 200:goto Buka_Input_Born_Month2:
36820 case 1:
36830 pause 200:goto Buka_Input_Born_Month2:
36840 case 6:
36850 No=5:sp_on 8,1:sp_on 11,0
36860 pause 200:goto Buka_Input_Born_Month2:
36870 case 5:
36880 No=4:sp_on 5,1:sp_on 8,0
36890 pause 200:goto Buka_Input_Born_Month2:
36900 case 4:
36910 pause 200:goto Buka_Input_Born_Month2:
36920 case 9:
36930 No=8:sp_on 7,1:sp_on 10,0
36940 pause 200:goto Buka_Input_Born_Month2:
36950 case 8:
36960 No=7:sp_on 4,1:sp_on 7,0
36970 pause 200:goto Buka_Input_Born_Month2:
36980 case 7:
36990 pause 200:goto Buka_Input_Born_Month2:
37000 end select
37010 endif
37020 '右  十字キー　右　or カーソル　右
37030 if ((y2 = 1) or (key$ = chr$(28))) then
37040 select case No
37050 '0ボタンからokボタン右に移動
37060 case 0:
37070 No=-1:sp_on 14,1:sp_on 13,0
37080 pause 200:goto Buka_Input_Born_Month2:
37090 '0ボタンからokボタン 右に移動　ここまで
37100 'OKボタンで右を押して何もしない
37110 case -1:
37120 pause 200:goto Buka_Input_Born_Month2:
37130 case 1:
37140 No=2:sp_on 9,1:sp_on 6,0
37150 pause 200:goto Buka_Input_Born_Month2:
37160 case 2:
37170 No=3:sp_on 12,1:sp_on 9,0
37180 pause 200:goto Buka_Input_Born_Month2:
37190 case 3:
37200 pause 200:goto Buka_Input_Born_Month2:
37210 case 4:
37220 No=5:sp_on 8,1:sp_on 5,0
37230 pause 200:goto Buka_Input_Born_Month2:
37240 case 5:
37250 No=6:sp_on 11,1:sp_on 8,0
37260 pause 200:goto Buka_Input_Born_Month2:
37270 case 7:
37280 No=8:sp_on 7,1:sp_on 4,0
37290 pause 200:goto Buka_Input_Born_Month2:
37300 case 8:
37310 No=9:sp_on 10,1:sp_on 7,0
37320 pause 200:goto Buka_Input_Born_Month2:
37330 case 9:
37340 pause 200:goto Buka_Input_Born_Month2:
37350 case 6:
37360 pause 200:goto Buka_Input_Born_Month2:
37370 end select
37380 'Okから右ボタンを押して何もしない ここまで
37390 endif
37400 '十字キー　ここまで
37410 '右の丸ボタン　決定キー
37420 if ((bg=2) or (key$=chr$(13))) then
37430 select case count
37440 case 0:
37450 count=1:buf_buka_Month$="**":buf_buka_Month$=str$(No):buf_buka_month=No
37460 buf_Buka_Born_Day(1)=buf_buka_month
37470 locate 1,3
37480 color RGB(255,255,255)
37490 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
37500 goto Buka_Input_Born_Month2:
37510 case 1:
37520 count = 2:c = No
37530 c = val(buf_buka_Month$)
37540 if (No = -1) then
37550 'count=0
37560 month=buf_buka_month
37570 buf_buka_month=val(buf_buka_Month$)
37580 month=buf_buka_month
37590 '生まれた日に飛ぶ
37600 goto Buka_Input_Born_Day:
37610 else
37620 buf_buka_month = c*10 + No
37630 buf_buka_Month$= str$(buf_buka_month)
37640 buf_Buka_Born_Day(1)=buf_buka_month
37650 locate 1,3
37660 color Rgb(255,255,255)
37670 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
37680 goto Buka_Input_Born_Month2:
37690 endif
37700 case 2:
37710 count=3
37720 'c= val(buf_Month$)
37730 'buf_month = c*10 + No
37740 'buf_Month$ = str$(buf_month)
37750 'locate 2,3
37760 'print "部下の生まれた月(1月～12月):";buf_Month$
37770 'goto Buka_Input_Born_Month2:
37780 'case 3:
37790 'count=4
37800 'b=val(buf_month$)
37810 'buf_month=c*10+No
37820 'buf_Month$=str$(buf_month)
37830 'locate 2,3
37840 'print "部下の生まれた月(1月～12月):";buf_Month$
37850 'buf_month=val(buf_Month$)
37860 'year=val(buf_year$)
37870 if (No=-1) then
37880 goto Buka_Input_Born_Day:
37890 else
37900 'goto Input_Born_Month2:
37910 endif
37920 'case 4:
37930 'bufyear=buf_year
37940 'if (No=-1) then
37950 'buf_month = val(buf_Month$)
37960 'month = buf_month
37970 'sp_on 14,0
37980 'goto Input_Born_Day:
37990 'else
38000 'goto Input_Born_Month2:
38010 'endif
38020 end select
38030 endif
38040 '左の丸ボタン　キャンセル
38050 if (bg2=2) then
38060 select case count2
38070 case 0:
38080 if (No = -1) then
38090 buf_buka_month=0:buf_buka_Month$="**"
38100 count=0
38110 goto rewrite2:
38120 else
38130 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
38140 buf_month=0:buf_Month$="**"
38150 locate 2,3
38160 color rgb(255,255,255)
38170 print "                                       "
38180 goto rewrite2:
38190 if (No>12) then
38200 ui_msg"値が範囲外です。"
38210 goto rewrite2:
38220 endif
38230 endif
38240 endif
38250 rewrite2:
38260 locate 2,3
38270 color rgb(255,255,255)
38280 print "                                      "
38290 locate 2,3
38300 print "部下の生まれた月(1月~12月):";buf_buka_Month$
38310 goto Buka_Input_Born_Month2:
38320 end select
38330 'endif
38340 endif
38350 end
38360 '2.部下の生まれた月'
38370 '3.部下の生まれた日'
38380 '生れた日を入力
38390 Buka_Input_Born_Day:
38400 '生まれた日入力
38410 cls 3:play ""
38420 'No=-1:Okのとき
38430 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
38440 for i=0 to 1
38450 buf_day(i)=0
38460 next i
38470 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
38480 gload Gazo$ + "Screen1.png",0,0,0
38490 gload Gazo$ + "downscreen.png",0,0,800
38500 'Init"kb:2"
38510 '音声ファイル再生 2023.06.07
38520 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
38530 font 48
38540 locate 0,1
38550 '文字色：黒　 color rgb(0,0,0)
38560 color rgb(255,255,255)
38570 print "部下の生まれた日を入れて下さい" + chr$(13)
38580 color rgb(255,255,255)
38590 locate 1,3
38600 print "部下の生まれた日(1日~31日):";buf_Day$
38610 color rgb(255,0,0)
38620 'locate 4,6:print ":7"
38630 'locate 9,6:print ":8"
38640 'locate 12,6:print ":9"
38650 locate 4,6
38660 print ":7  :8  :9" + chr$(13)
38670 color rgb(255,0,0)
38680 locate 4,8
38690 print ":4  :5  :6" + chr$(13)
38700 color rgb(255,0,0)
38710 locate 4,10
38720 print ":1  :2  :3" + chr$(13)
38730 locate 4,12
38740 print "    :0"
38750 locate 12,12
38760 color rgb(0,0,255)
38770 print ":Ok"
38780 sp_on 4,0: sp_on 5,0:sp_on 6,0
38790 sp_on 7,0:sp_on 8,0:sp_on 9,0
38800 sp_on 10,0:sp_on 11,0:sp_on 12,0
38810 sp_on 13,0:sp_on 14,1
38820 Buka_Input_Born_Day2:
38830 key$="":bg=0:y=0:y2=0:bg2=0
38840 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38850 key$ = inkey$
38860 bg = strig(1)
38870 y = stick(1)
38880 y2 = stick(0)
38890 bg2 = strig(0)
38900 pause 5
38910 wend
38920 '十字キー　ここから
38930 '上の矢印　または、十字キー上
38940 if ((y = -1) or (key$ = chr$(30))) then
38950 select case No
38960 'No=-1:okのとき:初期の状態
38970 '0kボタンから３に移動
38980 '上に行く 処理
38990 case -1:
39000 No=3:sp_on 12,1:sp_on 14,0
39010 pause 200:goto Buka_Input_Born_Day2:
39020 '選択肢:3
39030 '3ボタンから 6に移動
39040 case 3:
39050 No=6:sp_on 12,0:sp_on 11,1
39060 pause 200:goto Buka_Input_Born_Day2:
39070 '6ボタンから ９に移動
39080 case 6:
39090 No=9:sp_on 10,1:sp_on 11,0
39100 pause 200:goto Buka_Input_Born_Day2:
39110 '6ボタンから ９に移動　ここまで
39120 '9で上を押して何もしない
39130 case 9:
39140 '何もしない
39150 No=9
39160 pause 200:goto Buka_Input_Born_Day2:
39170 '9で上を押しても何もしない　ここまで
39180 '上　 0ボタンから2ボタン
39190 'sp_on 6,1:1
39200 'sp_on 8,1:5
39210 'sp_on 7,1:7
39220 case 0:
39230 No=2:sp_on 13,0:sp_on 9,1:
39240 pause 200:goto Buka_Input_Born_Day2:
39250 '上  0ボタンから2ボタン　ここまで
39260 '2から５になる 上
39270 case 2:
39280 No=5:sp_on 8,1:sp_on 9,0:
39290 pause 200:goto Buka_Input_Born_Day2:
39300 case 5:
39310 No=8:sp_on 7,1:sp_on 8,0
39320 pause 200:goto Buka_Input_Born_Day2:
39330 case 8:
39340 pause 200:goto Buka_Input_Born_Day2:
39350 case 1:
39360 No=4:sp_on 5,1:sp_on 6,0
39370 pause 200:goto Buka_Input_Born_Day2:
39380 case 4:
39390 No=7:sp_on 4,1:sp_on 5,0
39400 pause 200:goto Buka_Input_Born_Day2:
39410 case 7:
39420 pause 200:goto Buka_Input_Born_Day2:
39430 end select
39440 endif
39450 '左３　ここまで
39460 '下の矢印
39470 '中央 2
39480 if ((y=1) or (key$ = chr$(31))) then
39490 select case No
39500 '9から６に下げる
39510 case 9:
39520 No=6:sp_on 11,1:sp_on 10,0
39530 pause 200:goto Buka_Input_Born_Day2:
39540 '6から３に下げる
39550 case 6:
39560 No=3:sp_on 12,1:sp_on 11,0
39570 pause 200:goto Buka_Input_Born_Day2:
39580 '3から０ｋに変える
39590 case 3:
39600 No=-1:sp_on 14,1:sp_on 12,0
39610 pause 200:goto Buka_Input_Born_Day2:
39620 'Okから下のボタンを押しても何もしない
39630 case -1:
39640 pause 200:goto Buka_Input_Born_Day2:
39650 case 8:
39660 No=5:sp_on 8,1:sp_on 7,0
39670 pause 200:goto Buka_Input_Born_Day2:
39680 case 5:
39690 No=2:sp_on 9,1:sp_on 8,0
39700 pause 200:goto Buka_Input_Born_Day2:
39710 case 2:
39720 No=0:sp_on 13,1:sp_on 9,0
39730 pause 200:goto Buka_Input_Born_Day2:
39740 case 0:
39750 pause 200:goto Buka_Input_Born_Day2:
39760 case 7:
39770 No=4:sp_on 5,1:sp_on 4,0
39780 pause 200:goto Buka_Input_Born_Day2:
39790 case 4:
39800 No=1:sp_on 6,1:sp_on 5,0
39810 pause 200:goto Buka_Input_Born_Day2:
39820 case 1:
39830 pause 200:goto Buka_Input_Born_Day2:
39840 end select
39850 endif
39860 '左へボタン 十字キー　左　or 　カーソル左
39870 if ((y2 = -1) or (key$ = chr$(29))) then
39880 select case No
39890 'Ok ボタン  Okから　左　０に行く
39900 case -1:
39910 No=0:sp_on 13,1:sp_on 14,0
39920 pause 200:goto Buka_Input_Born_Day2:
39930 '0 ボタン  左　何もしない
39940 case 0:
39950 pause 200:goto Buka_Input_Born_Day2:
39960 case 3:
39970 No=2:sp_on 9,1:sp_on 12,0:
39980 pause 200:goto Buka_Input_Born_Day2:
39990 case 2:
40000 No=1:sp_on 6,1:sp_on 9,0:
40010 pause 200:goto Buka_Input_Born_Day2:
40020 case 1:
40030 pause 200:goto Buka_Input_Born_Day2:
40040 case 6:
40050 No=5:sp_on 8,1:sp_on 11,0
40060 pause 200:goto Buka_Input_Born_Day2:
40070 case 5:
40080 No=4:sp_on 5,1:sp_on 8,0
40090 pause 200:goto Buka_Input_Born_Day2:
40100 case 4:
40110 pause 200:goto Buka_Input_Born_Day2:
40120 case 9:
40130 No=8:sp_on 7,1:sp_on 10,0
40140 pause 200:goto Buka_Input_Born_Day2:
40150 case 8:
40160 No=7:sp_on 4,1:sp_on 7,0
40170 pause 200:goto Buka_Input_Born_Day2:
40180 case 7:
40190 pause 200:goto Buka_Input_Born_Day2:
40200 end select
40210 endif
40220 '右  十字キー　右　or カーソル　右
40230 if ((y2 = 1) or (key$ = chr$(28))) then
40240 select case No
40250 '0ボタンからokボタン右に移動
40260 case 0:
40270 No=-1:sp_on 14,1:sp_on 13,0
40280 pause 200:goto Buka_Input_Born_Day2:
40290 '0ボタンからokボタン 右に移動　ここまで
40300 'OKボタンで右を押して何もしない
40310 case -1:
40320 pause 200:goto Buka_Input_Born_Day2:
40330 case 1:
40340 No=2:sp_on 9,1:sp_on 6,0
40350 pause 200:goto Buka_Input_Born_Day2:
40360 case 2:
40370 No=3:sp_on 12,1:sp_on 9,0
40380 pause 200:goto Buka_Input_Born_Day2:
40390 case 3:
40400 pause 200:goto Buka_Input_Born_Day2:
40410 case 4:
40420 No=5:sp_on 8,1:sp_on 5,0
40430 pause 200:goto Buka_Input_Born_Day2:
40440 case 5:
40450 No=6:sp_on 11,1:sp_on 8,0
40460 pause 200:goto Buka_Input_Born_Day2:
40470 case 7:
40480 No=8:sp_on 7,1:sp_on 4,0
40490 pause 200:goto Buka_Input_Born_Day2:
40500 case 8:
40510 No=9:sp_on 10,1:sp_on 7,0
40520 pause 200:goto Buka_Input_Born_Day2:
40530 case 9:
40540 pause 200:goto Buka_Input_Born_Day2:
40550 case 6:
40560 pause 200:goto Buka_Input_Born_Day2:
40570 end select
40580 'Okから右ボタンを押して何もしない ここまで
40590 endif
40600 '十字キー　ここまで
40610 '右の丸ボタンを押したとき
40620 if ((bg = 2) or (key$ = chr$(13))) then
40630 'count :決定ボタンを押した回数
40640 select case (count)
40650 '1桁目入力
40660 case 0:
40670 count = 1:
40680 if (No = -1) then
40690 '1桁目　OKでは何もしない
40700 'goto check:
40710 else
40720 'ok以外のボタンを押したとき
40730 buf_buka_day = No:buf_buka_Day$=str$(No)
40740 c=No
40750 buf_Buka_Born_Day(2)=buf_buka_day
40760 locate 1,3
40770 color RGB(255,255,255)
40780 print "部下の生まれた日(1日~31日):"+buf_buka_Day$
40790 endif
40800 check2:
40810 if (No >= 1 and No <= 9) then
40820 sp_on 14,0
40830 goto Buka_Input_Born_Day2:
40840 else
40850 sp_on 14,0
40860 goto Result_Business_Aisyou:
40870 end
40880 endif
40890 case 1:
40900 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
40910 count = 2:
40920 'locate 2,3
40930 'color RGB(255,255,255)
40940 'print "生まれた日(1日~31日):";buf_Day$
40950 'Okボタンを押したときの処理
40960 '入力値　10未満のとき
40970 'c = buf_day
40980 if (No = -1) then
40990 'c=buf_day
41000 ' buf_day = c
41010 'buf_Day$ = str$(buf_day)
41020 '10以下のとき
41030 if (buf_day < 10) then
41040 sp_on 14,0
41050 goto Result_Business_Aisyou:
41060 end
41070 endif
41080 else
41090 sp_on 14,0
41100 'c=No
41110 buf_buka_day = c * 10 + No
41120 buf_buka_Day$ =str$(buf_buka_day)
41130 buf_Buka_Born_Day(2)=buf_buka_day
41140 locate 1,3
41150 color Rgb(255,255,255)
41160 print "生まれた日(1日~31日):"+buf_buka_Day$
41170 goto Buka_Input_Born_Day2:
41180 endif
41190 '生まれた日　2桁目の数字　or 1桁の数字 + ok
41200 case 2:
41210 count=0
41220 'c=val(buf_Day$)
41230 'buf_day=c*10+No
41240 'buf_Day$=str$(buf_day)
41250 'day=buf_day
41260 'locate 2,3
41270 'print "生まれた日(1日〜31日):";buf_Day$
41280 'No=-1:ok ボタンを押したとき
41290 if (No = -1) then
41300 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
41310 sp_on 14,0
41320 goto Result_Business_Aisyou:
41330 else
41340 goto Buka_Input_Born_Day2:
41350 endif
41360 'Okボタン以外を押したとき
41370 else
41380 c=val(buf_buka_Day$)
41390 buf_buka_day = c * 10 + No
41400 buf_buka_Day$ = str$(buf_buka_day)
41410 locate 1,3
41420 print "生まれた日(1日~31日):"+buf_buka_Day$
41430 goto Buka_Input_Born_Day2:
41440 endif
41450 case 3:
41460 count=4
41470 'c=val(buf_day$)
41480 'buf_day=c*10+No
41490 'buf_day$=str$(buf_day)
41500 'locate 2,3
41510 'print "生まれた日を入れてください:";buf_day$
41520 'year=val(buf_year$)
41530 if (No = -1) then
41540 'goto Buka_Input_Born_Day:
41550 sp_on 14,0:
41560 goto complate_jyoushi:
41570 else
41580 goto Buka_Input_Born_Month2:
41590 endif
41600 'case 4:
41610 'bufyear=buf_year
41620 'if (No=-1) then
41630 'buf_day = val(buf_day$)
41640 'bufday = buf_day
41650 'sp_on 14,0
41660 goto complate_jyoushi:
41670 'else
41680 'goto Buka_Input_Born_Day2:
41690 'endif
41700 end select
41710 endif
41720 if (bg2=2) then
41730 select case count2
41740 case 0:
41750 if (No=-1) then
41760 'buf_day=0:buf_Day$="**"
41770 if (buf_buka_day>=1 and buf_buka_day<=31) then
41780 count=0
41790 buf_buka_day=0:buf_buka_Day$="**"
41800 goto rewrite_day3:
41810 else
41820 buf_buka_day=0:buf_buka_Day$="**"
41830 ui_msg"値が範囲外です"
41840 endif
41850 goto rewrite_day3:
41860 else
41870 goto rewrite_day3:
41880 endif
41890 rewrite_day3:
41900 locate 2,3
41910 color rgb(255,255,255)
41920 print "                                      "
41930 locate 1,3
41940 print "生まれた日(1日~31日):"+buf_buka_Day$
41950 goto Buka_Input_Born_Day2:
41960 end select
41970 endif
41980 '3.部下の生まれた日'
41990 '部下'
42000 '--------------------------------------------'
42010 'ビジネの相性　結果表示
42020 Result_Business_Aisyou:
42030 cls 3:init "kb:4"
42040 a=0:b=0:c=0:d=0:e=0:f=0
42050 bg=0:key$=""
42060 gload Gazo$ + "Screen1.png",0,0,0
42070 gload Gazo$ + "downscreen.png",0,0,800
42080 sp_on 14,0
42090 d = buf_Buka_Born_Day(0):e=buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
42100 buf_Buka = Kabara_Num(e,f,g)
42110 a_2=buf_Buka
42120 Result_Aisyou$=Kabara_Aisyou$(a_1,a_2)
42130 locate 2,1
42140 color rgb(255,0,0)
42150 print "●.相性診断結果１"
42160 locate 2,4:
42170 color rgb(255,255,255)
42180 print "1.上司の名前:";buffer_name$(0)
42190 locate 2,6
42200 print "2.上司の数秘:";buf_Jyoushi
42210 locate 2,8
42220 print "3.部下の名前:";buffer_name$(1)
42230 locate 2,10
42240 print "4.部下の数秘:";buf_Buka
42250 locate 2,12
42260 print "5.上司と部下の相性:";Result_Aisyou$
42270 locate 1,15
42280 color rgb(0,0,0)
42290 print "右の丸ボタン:相性の説明"
42300 while ((bg <> 2) and (key$ <> chr$(13)))
42310 bg = strig(1)
42320 key$ = inkey$
42330 pause 5
42340 wend
42350 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
42360 'ビジネスの相性占い　結果2　説明
42370 Result_Business_Aisyou2:
42380 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
42390 gload Gazo$ + "Screen1.png",0,0,0
42400 color rgb(255,255,255)
42410 locate 0,4
42420 print "相性:";Result_Aisyou$
42430 locate 0,6:
42440 print "相性の説明:";buf$
42450 locate 0,15
42460 color rgb(0,0,0)
42470 print "右の丸ボタン:トップ画面,左のボタン:前の画面"
42480 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
42490 bg = strig(1)
42500 bg2 = strig(0)
42510 key$ = inkey$
42520 pause 5
42530 wend
42540 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
42550 if ((bg2 = 2)) then goto Result_Business_Aisyou:
42560 '自作関数 ここから
42570 func read_explain$(ba$)
42580 buf_String$=""
42590 if ba$="A" then
42600 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
42610 line input #1,a$
42620 buf_String$ = a$
42630 close #1
42640 endif
42650 if ba$="B"  then
42660 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
42670 line input #1,b$
42680 buf_String$ = b$
42690 close #1
42700 endif
42710 if ba$="C"  then
42720 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
42730 line input #1,c$
42740 buf_String$ = c$
42750 close #1
42760 endif
42770 if ba$="D" then
42780 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
42790 line input #1,d$
42800 buf_String$ = d$
42810 close #1
42820 endif
42830 if ba$="E"  then
42840 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
42850 line input #1,e$
42860 buf_String$ = e$
42870 close #1
42880 endif
42890 if ba$="F" then
42900 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
42910 line input #1,f$
42920 buf_String$ = f$
42930 close #1
42940 endif
42950 if ba$="G" then
42960 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
42970 line input #1,g$
42980 buf_String$ = g$
42990 close #1
43000 endif
43010 if ba$="H" then
43020 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
43030 line input #1,h$
43040 buf_String$ = h$
43050 close #1
43060 endif
43070 if ba$="I" then
43080 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
43090 line input #1,i$
43100 buf_String$ = i$
43110 close #1
43120 endif
43130 buffer$=buf_String$
43140 endfunc buffer$
43150 'カバラ数（数秘番号を求める）
43160 func Kabara_Num(buffer_Year,month,day)
43170 'if ((a > 1900) and (a < 3000)) then
43180 'a1:4桁のうちの1桁目を求める
43190 '例 a1:1234の4が1桁目
43200 'a2:4桁のうちの2桁目を求める
43210 '例:a2:1234の3が2桁目
43220 'a3:4桁のうちの3桁目を求める
43230 '例 a3:1234の2が3桁目
43240 'a4:4桁のうちの4桁目を求める
43250 '例 a4:1234の1が4桁目
43260 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
43270 Year = buffer_Year
43280 a4 = fix(Year / 1000)
43290 a3 = fix(Year / 100) - (a4 * 10)
43300 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
43310 a1 = fix(Year - (a4 * 1000 + a3 * 100+ a2 * 10))
43320 a_ = a1 + a2 + a3 + a4 +month+day
43330 'a1=0:a2=0:a3=0:a4=0
43340 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
43350 buffer = a_
43360 'else
43370 goto recomp2:
43380 'if (a_ = 10) then
43390 '  buffer = 1
43400 endif
43410 recomp2:
43420 a1=0:a2=0
43430 a1 = fix(a_/10)
43440 a2 = fix(a_-a1*10)
43450 a_ = a1 + a2
43460 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
43470 goto Res2:
43480 '  if ((a_>11) and (a_<99)) then
43490 else
43500 goto recomp2:
43510 endif
43520 '     a1 = fix(a_ / 10)
43530 '     a2 = a_ - (a1 * 10)
43540 '     a_ = a1 + a2
43550 '     buffer = a_
43560 'endif
43570 'else
43580 '    bffer = a_
43590 'endif
43600 'endif
43610 'else
43620 'talk "プログラムを終了します。"
43630 'end
43640 'endif
43650 'kabara = 10
43660 Res2:
43670 kabara = a_
43680 endfunc kabara
43690 func Kabara_Aisyou$(buff1,buff2)
43700 a=0:b=0
43710 if ((buff1 > 0 and buff1 < 10)) then
43720 a = buff1
43730 else
43740 Select case buff1
43750 case 11:
43760 buff1=9:a=buff1
43770 case 22:
43780 buff1=10:a=buff1
43790 end select
43800 endif
43810 if ((buff2 > 0 and buff2 < 10)) then
43820 b = buff2
43830 else
43840 select case buff2
43850 case 11:
43860 buff2=9:b=buff2
43870 case 12:
43880 buff2=10:b=buff2
43890 end select
43900 endif
43910 Aisyou$ = Buffer_Business_Aisyou$(a,b)
43920 endfunc Aisyou$
43930 '=============================
43940 '自作関数 ここまで
43950 '1.数秘術　トップ画面
43960 '
43970 'Data_eraseを一番最後に持ってくる
43980 '=============================
43990 Data_erase:
44000 'メモリー削除
44010 erase buf_name1$
44020 erase buf_name2$
44030 erase buffer
44040 erase buf_chart$
44050 erase Buffer_Business_Aisyou$
44060 erase buffer_name$
44070 '上司の誕生日
44080 erase buf_Jyoushi_Born_Day
44090 '部下の誕生日
44100 erase buf_Buka_Born_Day
44110 erase buf_year
44120 return
