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
360 '2023.10.01:Ver117_20231001
370 Version$ = "Ver:1.1.7_20231001"
380 'Gazo file Folder
390 Gazo$ = "./data/Picture/"
400 'Voice files 2023
410 Voice$ = "./data/Voice/Voice/"
420 'BirtheyeChart Data:20230626
430 Birth_eye_chart$ = "./data/chart_data/"
440 'Data File
450 Data$ = "./data/data/"
460 'Business Aisyou 結果説明保存フォルダ
470 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
480 '変数定義 パート
490 b=0:c=0
500 dim buf_name1$(10),buf_name2$(10)
510 dim buffer(9),buf_chart$(26,2)
520 'ビジネスの相性　データー
530 dim Buffer_Business_Aisyou$(12,12)
540 '生れた年代
550 dim buf_year(4):buf_year$ = ""
560 dim buf_month(2)
570 dim buf_day(2)
580 'フォーカスライン　配列
590 dim Forcus1_buffer$(3)
600 dim Forcus2_buffer$(3)
610 dim Forcus3_buffer$(2)
620 '生れた月
630 buf_Month$ = ""
640 '生れた日
650 buf_Day$ = ""
660 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
670 dim buffer_name$(3)
680 '1-1.上司の誕生日(数値データー)
690 dim buf_Jyoushi_Born_Day(3)
700 '1-2.上司の数秘ナンバー(数値データー)
710 buf_Jyoushi_Kabara_Num = 0
720 '2-1.部下の誕生日(数値データー)
730 dim buf_Buka_Born_Day(3)
740 '2-2.部下の数秘ナンバー(数秘データー)
750 buf_Buka_Kabara_Num = 0
760 count=0
770 '部下の数秘ナンバー
780 'File 読み込み
790 '1.ビジネスの相性占い
800 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
810 for i=0 to 11
820 for j=0 to 11
830 input #1,a$
840 Buffer_Business_Aisyou$(j,i) = a$
850 next j
860 next i
870 close #1
880 '2.Birth Eye chart$
890 '2.バーズアイグリッドを読み込む
900 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
910 for j=0 to 25
920 for i=0 to 1
930 input #1,a$
940 buf_chart$(j,i) = a$
950 next i
960 next j
970 close #1
980 'File 読み込み　ここまで
990 'Main画面
1000 screen 1,1,1,1
1010 Main_Screen:
1020 cls 3:
1030 No=0
1040 gload Gazo$ + "Selection.png",1,5,200
1050 gload Gazo$ + "Selection.png",1,5,300
1060 gload Gazo$ + "Selection.png",1,5,400
1070 gload Gazo$ + "Selection.png",1,5,500
1080 '4
1090 gload Gazo$ + "Selection.png",1,35,300
1100 '5
1110 gload Gazo$ + "Selection.png",1,35,400
1120 '6
1130 gload Gazo$ + "Selection.png",1,35,500
1140 '7
1150 gload Gazo$ + "Selection.png",1,70,300
1160 '8
1170 gload Gazo$ + "Selection.png",1,70,400
1180 '9
1190 gload Gazo$ + "Selection.png",1,70,500
1200 '10
1210 gload Gazo$ + "Selection.png",1,110,300
1220 '11
1230 gload Gazo$ + "Selection.png",1,110,400
1240 '12
1250 gload Gazo$ + "Selection.png",1,110,500
1260 '13:0
1270 gload Gazo$ + "Selection.png",1,150,400
1280 gload Gazo$ + "Selection.png",1,200,400
1290 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1300 gload Gazo$ + "downscreen.png",0,0,800
1310 sp_def 0,(5,300),32,32
1320 sp_def 1,(5,400),32,32
1330 sp_def 2,(5,500),32,32
1340 sp_def 3,(5,600),32,32
1350 '1
1360 sp_def 4,(35,300),32,32
1370 '2
1380 sp_def 5,(35,400),32,32
1390 '3
1400 sp_def 6,(35,500),32,32
1410 '4
1420 sp_def 7,(70,300),32,32
1430 '5
1440 sp_def 8,(70,400),32,32
1450 '6
1460 sp_def 9,(70,500),32,32
1470 '7
1480 sp_def 10,(110,300),32,32
1490 '8
1500 sp_def 11,(110,400),32,32
1510 '9
1520 sp_def 12,(110,400),32,32
1530 sp_def 13,(150,400),32,32
1540 sp_def 14,(200,400),32,32
1550 'Sprite OFF
1560 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1570 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1580 sp_put 0,(5,300),0,0
1590 sp_put 1,(5,400),1,0
1600 sp_put 2,(5,500),2,0
1610 sp_put 3,(5,600),3,0
1620 '1
1630 sp_put 4,(130,300),4,0
1640 '2
1650 sp_put 5,(130,400),5,0
1660 '3
1670 sp_put 6,(130,500),6,0
1680 '4
1690 sp_put 7,(340,300),7,0
1700 '5
1710 sp_put 8,(340,400),8,0
1720 '6
1730 sp_put 9,(340,500),9,0
1740 '7
1750 sp_put 10,(540,300),10,0
1760 '8
1770 sp_put 11,(540,400),11,0
1780 '9
1790 sp_put 12,(540,500),12,0
1800 '
1810 sp_put 13,(340,600),13,0
1820 sp_put 14,(540,600),14,0
1830 Main_Top:
1840 'Main Message 2023.06.07
1850 '再生を止める
1860 play ""
1870 init "kb:4"
1880 'font 32:
1890 font 48
1900 print chr$(13) + chr$(13) + chr$(13)
1910 color rgb(217,255,212)
1920 print "番号を選んでください" + chr$(13)
1930 '0
1940 print " :1.数秘術占い" + chr$(13)
1950 '1
1960 print " :2.設 定" + chr$(13)
1970 '2
1980 print " :3.ヘルプ" + chr$(13)
1990 '3
2000 print " :4.(プログラムを)終了する" + chr$(13)
2010 COLOR rgb(0,0,0):No=0
2020 locate 1,15
2030 print "                                       "
2040 locate 1,15:print "1.数秘術占いを選択"
2050 play Voice$ + "Voice_Main_Message_20230607.mp3"
2060 Main_Screen_Select:
2070 y = 0:key$ = "":bg = 0:bg2=0
2080 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2090 y = stick(1)
2100 '"May (2023)"
2110 key$ = inkey$
2120 bg = strig(1)
2130 bg2 = strig(0)
2140 pause 2
2150 wend
2160 '1.
2170 'ジョイパッドのソース ソート　ここから
2180 'カーソル　下 or 十字キー下
2190 if ((y = 1) or (key$ = chr$(31))) then
2200 select case No
2210 case 0:
2220 '1
2230 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2240 case 1:
2250 '2
2260 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2270 case 2:
2280 '3
2290 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2300 case 3:
2310 '0
2320 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2330 end select
2340 endif
2350 '2.
2360 'カーソル　上　or 十字キー  上
2370 if ((y = -1) or (key$ = chr$(30))) then
2380 select case No
2390 case 0:
2400 '3
2410 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2420 case 1:
2430 '0
2440 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2450 case 2:
2460 '1
2470 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2480 case 3:
2490 '2
2500 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2510 end select
2520 endif
2530 'ジョイパッド　ソース 部分　ここまで
2540 'ジョイパッド右　　or Enter key 決定
2550 if ((bg = 2) OR (key$ = chr$(13))) then
2560 select case No
2570 case 0:
2580 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2590 case 1:
2600 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2610 case 2:
2620 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2630 case 3:
2640 play "":pause 200
2650 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2660 end select
2670 endif
2680 if (bg2 = 2) then
2690 play "":pause 200
2700 play Voice$ + "Voice_Main_Message_20230607.mp3"
2710 goto Main_Screen_Select:
2720 endif
2730 'Version
2740 Version:
2750 cls 3:PLAY ""
2760 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2770 gload Gazo$ + "downscreen.png",0,0,800
2780 init"kb:4":font 32
2790 'talk"バージョン情報です"
2800 'Message :Version
2810 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2820 locate 0,5
2830 color rgb(0,0,0)
2840 print "・Title:数秘術占い";chr$(13)
2850 print "・" + Version$ + chr$(13)
2860 print "・Author:licksjp"+chr$(13)
2870 print "・E-mail:licksjp@gmail.com" + chr$(13)
2880 locate 0,18
2890 print "(C)licksjp All rights " + chr$(13)
2900 locate 13,19
2910 print "reserved since 2009"+chr$(13)
2920 locate 0,23
2930 color rgb(255,255,255)
2940 print "ジョイパッドの右を押してください"
2950 Versionn_Selection:
2960 bg = 0:key$ = "":bg2 = 0
2970 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2980 bg = strig(1)
2990 key$ = inkey$
3000 bg2 = strig(0)
3010 pause 2
3020 wend
3030 if ((bg = 2) or (key$ = chr$(13))) then
3040 pause 200:cls 4:goto Main_Screen:
3050 endif
3060 if (bg2=2) then
3070 play "":pause 200
3080 play Voice$ + "Voice_Version_Message_20230607.mp3"
3090 goto Versionn_Selection:
3100 endif
3110 '1.数秘ナンバーを求める
3120 '誕生日入力(生れた年代)
3130 Input_Seireki:
3140 cls 3:play "":count=0:count2=0
3150 'No = -1:Okのとき
3160 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3170 for i=0 to 3
3180 buf_year(i)=0
3190 next i
3200 gload Gazo$ + "Screen1.png",0,0,0
3210 gload Gazo$ + "downscreen.png",0,0,800
3220 'Init"kb:2"
3230 '音声ファイル再生 2023.06.07
3240 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3250 font 48
3260 locate 0,1
3270 '文字色：黒　 color rgb(0,0,0)
3280 color rgb(255,255,255)
3290 print "生まれた年代を入れて下さい" + chr$(13)
3300 color rgb(255,255,255)
3310 locate 2,3
3320 print "生まれた年代(西暦4桁):" + buf_year$
3330 '=============================
3340 'テンキーの色(1~９)　白 ,決定ボタン　青
3350 '=============================
3360 color rgb(255,255,255)
3370 'locate 4,6:print ":7"
3380 'locate 9,6:print ":8"
3390 'locate 12,6:print ":9"
3400 locate 4,6
3410 print ":7  :8  :9" + chr$(13)
3420 color rgb(255,255,255)
3430 locate 4,8
3440 print ":4  :5  :6" + chr$(13)
3450 color rgb(255,255,255)
3460 locate 4,10
3470 print ":1  :2  :3" + chr$(13)
3480 locate 4,12
3490 print "    :0"
3500 locate 12,12
3510 color rgb(255,0,0)
3520 print ":Ok"
3530 sp_on 4,0: sp_on 5,0:sp_on 6,0
3540 sp_on 7,0:sp_on 8,0:sp_on 9,0
3550 sp_on 10,0:sp_on 11,0:sp_on 12,0
3560 sp_on 13,0:sp_on 14,1
3570 Input_Seireki2:
3580 key$="":bg=0:y=0:y2=0:bg2=0:
3590 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3600 key$ = inkey$
3610 bg = strig(1)
3620 y = stick(1)
3630 y2 = stick(0)
3640 bg2 = strig(0)
3650 pause 15
3660 wend
3670 '十字キー　ここから
3680 '上の矢印　または、十字キー上
3690 if ((y = -1) or (key$ = chr$(30))) then
3700 select case No
3710 'No=-1:okのとき:初期の状態
3720 '0kボタンから３に移動
3730 '上に行く 処理
3740 case -1:
3750 No=3:sp_on 12,1:sp_on 14,0
3760 pause 200:goto Input_Seireki2:
3770 '選択肢:3
3780 '3ボタンから 6に移動
3790 case 3:
3800 No=6:sp_on 12,0:sp_on 11,1
3810 pause 200:goto Input_Seireki2:
3820 '6ボタンから ９に移動
3830 case 6:
3840 No=9:sp_on 10,1:sp_on 11,0
3850 pause 200:goto Input_Seireki2:
3860 '6ボタンから ９に移動　ここまで
3870 '9で上を押して何もしない
3880 case 9:
3890 '何もしない
3900 No=9
3910 pause 200:goto Input_Seireki2:
3920 '9で上を押しても何もしない　ここまで
3930 '上　 0ボタンから2ボタン
3940 'sp_on 6,1:1
3950 'sp_on 8,1:5
3960 'sp_on 7,1:7
3970 case 0:
3980 No=2:sp_on 13,0:sp_on 9,1:
3990 pause 200:goto Input_Seireki2:
4000 '上  0ボタンから2ボタン　ここまで
4010 '2から５になる 上
4020 case 2:
4030 No=5:sp_on 8,1:sp_on 9,0:
4040 pause 200:goto Input_Seireki2:
4050 case 5:
4060 No=8:sp_on 7,1:sp_on 8,0
4070 pause 200:goto Input_Seireki2:
4080 case 8:
4090 pause 200:goto Input_Seireki2:
4100 case 1:
4110 No=4:sp_on 5,1:sp_on 6,0
4120 pause 200:goto Input_Seireki2:
4130 case 4:
4140 No=7:sp_on 4,1:sp_on 5,0
4150 pause 200:goto Input_Seireki2:
4160 case 7:
4170 pause 200:goto Input_Seireki2:
4180 end select
4190 endif
4200 '左３　ここまで
4210 '下の矢印
4220 '中央 2
4230 if ((y=1) or (key$ = chr$(31))) then
4240 select case No
4250 '9から６に下げる
4260 case 9:
4270 No=6:sp_on 11,1:sp_on 10,0
4280 pause 200:goto Input_Seireki2:
4290 '6から３に下げる
4300 case 6:
4310 No=3:sp_on 12,1:sp_on 11,0
4320 pause 200:goto Input_Seireki2:
4330 '3から０ｋに変える
4340 case 3:
4350 No=-1:sp_on 14,1:sp_on 12,0
4360 pause 200:goto Input_Seireki2:
4370 'Okから下のボタンを押しても何もしない
4380 case -1:
4390 pause 200:goto Input_Seireki2:
4400 case 8:
4410 No=5:sp_on 8,1:sp_on 7,0
4420 pause 200:goto Input_Seireki2:
4430 case 5:
4440 No=2:sp_on 9,1:sp_on 8,0
4450 pause 200:goto Input_Seireki2:
4460 case 2:
4470 No=0:sp_on 13,1:sp_on 9,0
4480 pause 200:goto Input_Seireki2:
4490 case 0:
4500 pause 200:goto Input_Seireki2:
4510 case 7:
4520 No=4:sp_on 5,1:sp_on 4,0
4530 pause 200:goto Input_Seireki2:
4540 case 4:
4550 No=1:sp_on 6,1:sp_on 5,0
4560 pause 200:goto Input_Seireki2:
4570 case 1:
4580 pause 200:goto Input_Seireki2:
4590 end select
4600 endif
4610 '左へボタン 十字キー　左　or 　カーソル左
4620 if ((y2 = -1) or (key$ = chr$(29))) then
4630 select case No
4640 'Ok ボタン  Okから　左　０に行く
4650 case -1:
4660 No=0:sp_on 13,1:sp_on 14,0
4670 pause 200:goto Input_Seireki2:
4680 '0 ボタン  左　何もしない
4690 case 0:
4700 pause 200:goto Input_Seireki2:
4710 case 3:
4720 No=2:sp_on 9,1:sp_on 12,0:
4730 pause 200:goto Input_Seireki2:
4740 case 2:
4750 No=1:sp_on 6,1:sp_on 9,0:
4760 pause 200:goto Input_Seireki2:
4770 case 1:
4780 pause 200:goto Input_Seireki2:
4790 case 6:
4800 No=5:sp_on 8,1:sp_on 11,0
4810 pause 200:goto Input_Seireki2:
4820 case 5:
4830 No=4:sp_on 5,1:sp_on 8,0
4840 pause 200:goto Input_Seireki2:
4850 case 4:
4860 pause 200:goto Input_Seireki2:
4870 case 9:
4880 No=8:sp_on 7,1:sp_on 10,0
4890 pause 200:goto Input_Seireki2:
4900 case 8:
4910 No=7:sp_on 4,1:sp_on 7,0
4920 pause 200:goto Input_Seireki2:
4930 case 7:
4940 pause 200:goto Input_Seireki2:
4950 end select
4960 endif
4970 '右  十字キー　右　or カーソル　右
4980 if ((y2 = 1) or (key$ = chr$(28))) then
4990 select case No
5000 '0ボタンからokボタン右に移動
5010 case 0:
5020 No=-1:sp_on 14,1:sp_on 13,0
5030 pause 200:goto Input_Seireki2:
5040 '0ボタンからokボタン 右に移動　ここまで
5050 'OKボタンで右を押して何もしない
5060 case -1:
5070 pause 200:goto Input_Seireki2:
5080 case 1:
5090 No=2:sp_on 9,1:sp_on 6,0
5100 pause 200:goto Input_Seireki2:
5110 case 2:
5120 No=3:sp_on 12,1:sp_on 9,0
5130 pause 200:goto Input_Seireki2:
5140 case 3:
5150 pause 200:goto Input_Seireki2:
5160 case 4:
5170 No=5:sp_on 8,1:sp_on 5,0
5180 pause 200:goto Input_Seireki2:
5190 case 5:
5200 No=6:sp_on 11,1:sp_on 8,0
5210 pause 200:goto Input_Seireki2:
5220 case 7:
5230 No=8:sp_on 7,1:sp_on 4,0
5240 pause 200:goto Input_Seireki2:
5250 case 8:
5260 No=9:sp_on 10,1:sp_on 7,0
5270 pause 200:goto Input_Seireki2:
5280 case 9:
5290 pause 200:goto Input_Seireki2:
5300 case 6:
5310 pause 200:goto Input_Seireki2:
5320 end select
5330 'Okから右ボタンを押して何もしない ここまで
5340 endif
5350 '十字キー　ここまで
5360 if ((bg=2) or (key$=chr$(13))) then
5370 select case count
5380 case 0:
5390 count=1
5400 if (No=-1) then
5410 count=0
5420 'Okボタンを押したとき
5430 goto Input_Seireki2:
5440 else
5450 '===================================
5460 'Okボタン以外が押されたとき  1桁目の入力
5470 '===================================
5480 count2=1
5490 if (No >= 1 and No <= 2) then
5500 buf_year$="":buf_year$ = str$(No)
5510 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5520 n1 = len("生まれた年代(西暦4桁): ")
5530 locate 2,3
5540 color rgb(255,255,255)
5550 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5560 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5570 'print "生まれた年代(西暦4桁):";buf_year2$
5580 print buf_Born_Year_line$
5590 goto Input_Seireki2:
5600 else
5610 count=0
5620 ui_msg"数字が範囲外になります。"
5630 buf_year$="":buf_year=0
5640 goto Input_Seireki2:
5650 endif
5660 endif
5670 case 1:
5680 count = 2
5690 if (No = -1) then
5700 count = 1
5710 goto Input_Seireki2:
5720 else
5730 count2 = 1
5740 b = val(buf_year$)
5750 buf_year = b * 10 + No
5760 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5770 locate 2,3
5780 color rgb(255,255,255)
5790 print "                                                                "
5800 locate 2,3
5810 print "生まれた年代(西暦4桁):";buf_year2$
5820 'if (No = -1) then
5830 'count=1
5840 goto Input_Seireki2:
5850 endif
5860 case 2:
5870 count=3
5880 if (No=-1) then
5890 count =2
5900 goto Input_Seireki2:
5910 else
5920 b = val(buf_year$)
5930 buf_year = b*10 + No
5940 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
5950 locate 2,3
5960 color rgb(255,255,255)
5970 print "                                        "
5980 locate 2,3
5990 print "生まれた年代(西暦4桁):";buf_year2$
6000 goto Input_Seireki2:
6010 endif
6020 case 3:
6030 count=4
6040 if (No = -1) then
6050 count=3
6060 goto Input_Seireki2:
6070 else
6080 b = val(buf_year$)
6090 buf_year=b*10+No
6100 buf_year$=str$(buf_year)
6110 locate 2,3
6120 color RGB(255,255,255)
6130 print "                                      "
6140 locate 2,3
6150 print "生まれた年代(西暦4桁):";buf_year$
6160 buf_year=val(buf_year$)
6170 'year=val(buf_year$)
6180 'if (No=-1) then
6190 'goto Input_Born_Month:
6200 'else
6210 goto Input_Seireki2:
6220 endif
6230 case 4:
6240 'bufyear=buf_year
6250 if (No=-1) then
6260 buf_year = val(buf_year$)
6270 bufyear = buf_year
6280 sp_on 14,0
6290 goto Input_Born_Month:
6300 else
6310 goto Input_Seireki2:
6320 endif
6330 end select
6340 endif
6350 '=========================
6360 'bg2　キャンセルボタン
6370 '=========================
6380 if (bg2 = 2) then
6390 select case count2
6400 case 0:
6410 'Okボタンを押したときの処理
6420 if (No = -1) then
6430 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6440 'count = 0
6450 locate 2,3
6460 color rgb(255,255,255)
6470 print "                                      "
6480 locate 2,3
6490 print "生まれた年代（西暦4桁):";buf_year$
6500 '=============================
6510 'case 0:前の画面に戻る 数秘術トップメニュー
6520 '=============================
6530 sp_on 14,0:goto Kabara_TopScreen:
6540 else
6550 'count=0
6560 '(buf_year=0) then
6570 buf_year = 0:buf_year$ = string$(4,"*")
6580 goto Input_Seireki2:
6590 'endif
6600 endif
6610 case 1:
6620 if (No = -1) then
6630 count2 = 0:count = 0
6640 buf$=right$(buf_year$,1)
6650 if (val(buf$) >= 1 and val(buf$) <= 9) then
6660 buf_year$ = "****":buf_year=0
6670 color rgb(255,255,255)
6680 locate 0,3:
6690 print "                                      "
6700 locate 2,3
6710 print "生まれた年代（西暦4桁):" + buf_year$
6720 goto Input_Seireki2:
6730 endif
6740 else
6750 endif
6760 end select
6770 endif
6780 end
6790 'Input"生れた年代(4桁,〜2025年):",year
6800 'if year > 2025 then goto Input_Seireki:
6810 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6820 '"4桁目"
6830 'bufyear4 = fix(year / 1000)
6840 '"3桁目"
6850 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6860 '"2桁目"
6870 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6880 '"1桁目"
6890 'bufyear1 = fix((year - ((bufyear4*
6900 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6910 '生れた月を入力
6920 Input_Born_Month:
6930 cls 3:play "":count=0:count2=0
6940 'No=-1:Okのとき
6950 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6960 for i=0 to 1
6970 buf_month(i)=0
6980 next i
6990 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7000 gload Gazo$ + "Screen1.png",0,0,0
7010 gload Gazo$ + "downscreen.png",0,0,800
7020 'Init"kb:2"
7030 '音声ファイル再生 2023.06.07
7040 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7050 font 48
7060 locate 0,1
7070 '文字色：黒　 color rgb(0,0,0)
7080 '文字色:白
7090 color rgb(255,255,255)
7100 print "生まれた月を入れて下さい" + chr$(13)
7110 '文字色:白
7120 color rgb(255,255,255)
7130 locate 2,3
7140 '文字色:白
7150 print "生まれた月(1月~12月):";buf_Month$
7160 color rgb(255,255,255)
7170 'locate 4,6:print ":7"
7180 'locate 9,6:print ":8"
7190 'locate 12,6:print ":9"
7200 locate 4,6
7210 '文字色:赤
7220 print ":7  :8  :9" + chr$(13)
7230 color rgb(255,255,255)
7240 locate 4,8
7250 print ":4  :5  :6" + chr$(13)
7260 color rgb(255,255,255)
7270 locate 4,10
7280 print ":1  :2  :3" + chr$(13)
7290 locate 4,12
7300 print "    :0"
7310 locate 12,12
7320 color rgb(255,0,0)
7330 print ":Ok"
7340 sp_on 4,0: sp_on 5,0:sp_on 6,0
7350 sp_on 7,0:sp_on 8,0:sp_on 9,0
7360 sp_on 10,0:sp_on 11,0:sp_on 12,0
7370 sp_on 13,0:sp_on 14,1
7380 Input_Born_Month2:
7390 key$="":bg=0:y=0:y2=0:bg2=0
7400 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7410 key$ = inkey$
7420 bg = strig(1)
7430 y = stick(1)
7440 y2 = stick(0)
7450 bg2 = strig(0)
7460 pause 5
7470 wend
7480 '十字キー　ここから
7490 '上の矢印　または、十字キー上
7500 if ((y = -1) or (key$ = chr$(30))) then
7510 select case No
7520 'No=-1:okのとき:初期の状態
7530 '0kボタンから３に移動
7540 '上に行く 処理
7550 case -1:
7560 No=3:sp_on 12,1:sp_on 14,0
7570 pause 200:goto Input_Born_Month2:
7580 '選択肢:3
7590 '3ボタンから 6に移動
7600 case 3:
7610 No=6:sp_on 12,0:sp_on 11,1
7620 pause 200:goto Input_Born_Month2:
7630 '6ボタンから ９に移動
7640 case 6:
7650 No=9:sp_on 10,1:sp_on 11,0
7660 pause 200:goto Input_Born_Month2:
7670 '6ボタンから ９に移動　ここまで
7680 '9で上を押して何もしない
7690 case 9:
7700 '何もしない
7710 No=9
7720 pause 200:goto Input_Born_Month2:
7730 '9で上を押しても何もしない　ここまで
7740 '上　 0ボタンから2ボタン
7750 'sp_on 6,1:1
7760 'sp_on 8,1:5
7770 'sp_on 7,1:7
7780 case 0:
7790 No=2:sp_on 13,0:sp_on 9,1:
7800 pause 200:goto Input_Born_Month2:
7810 '上  0ボタンから2ボタン　ここまで
7820 '2から５になる 上
7830 case 2:
7840 No=5:sp_on 8,1:sp_on 9,0:
7850 pause 200:goto Input_Born_Month2:
7860 case 5:
7870 No=8:sp_on 7,1:sp_on 8,0
7880 pause 200:goto Input_Born_Month2:
7890 case 8:
7900 pause 200:goto Input_Born_Month2:
7910 case 1:
7920 No=4:sp_on 5,1:sp_on 6,0
7930 pause 200:goto Input_Born_Month2:
7940 case 4:
7950 No=7:sp_on 4,1:sp_on 5,0
7960 pause 200:goto Input_Born_Month2:
7970 case 7:
7980 pause 200:goto Input_Born_Month2:
7990 end select
8000 endif
8010 '左３　ここまで
8020 '下の矢印
8030 '中央 2
8040 if ((y=1) or (key$ = chr$(31))) then
8050 select case No
8060 '9から６に下げる
8070 case 9:
8080 No=6:sp_on 11,1:sp_on 10,0
8090 pause 200:goto Input_Born_Month2:
8100 '6から３に下げる
8110 case 6:
8120 No=3:sp_on 12,1:sp_on 11,0
8130 pause 200:goto Input_Born_Month2:
8140 '3から０ｋに変える
8150 case 3:
8160 No=-1:sp_on 14,1:sp_on 12,0
8170 pause 200:goto Input_Born_Month2:
8180 'Okから下のボタンを押しても何もしない
8190 case -1:
8200 pause 200:goto Input_Born_Month2:
8210 case 8:
8220 No=5:sp_on 8,1:sp_on 7,0
8230 pause 200:goto Input_Born_Month2:
8240 case 5:
8250 No=2:sp_on 9,1:sp_on 8,0
8260 pause 200:goto Input_Born_Month2:
8270 case 2:
8280 No=0:sp_on 13,1:sp_on 9,0
8290 pause 200:goto Input_Born_Month2:
8300 case 0:
8310 pause 200:goto Input_Born_Month2:
8320 case 7:
8330 No=4:sp_on 5,1:sp_on 4,0
8340 pause 200:goto Input_Born_Month2:
8350 case 4:
8360 No=1:sp_on 6,1:sp_on 5,0
8370 pause 200:goto Input_Born_Month2:
8380 case 1:
8390 pause 200:goto Input_Born_Month2:
8400 end select
8410 endif
8420 '左へボタン 十字キー　左　or 　カーソル左
8430 if ((y2 = -1) or (key$ = chr$(29))) then
8440 select case No
8450 'Ok ボタン  Okから　左　０に行く
8460 case -1:
8470 No=0:sp_on 13,1:sp_on 14,0
8480 pause 200:goto Input_Born_Month2:
8490 '0 ボタン  左　何もしない
8500 case 0:
8510 pause 200:goto Input_Born_Month2:
8520 case 3:
8530 No=2:sp_on 9,1:sp_on 12,0:
8540 pause 200:goto Input_Born_Month2:
8550 case 2:
8560 No=1:sp_on 6,1:sp_on 9,0:
8570 pause 200:goto Input_Born_Month2:
8580 case 1:
8590 pause 200:goto Input_Born_Month2:
8600 case 6:
8610 No=5:sp_on 8,1:sp_on 11,0
8620 pause 200:goto Input_Born_Month2:
8630 case 5:
8640 No=4:sp_on 5,1:sp_on 8,0
8650 pause 200:goto Input_Born_Month2:
8660 case 4:
8670 pause 200:goto Input_Born_Month2:
8680 case 9:
8690 No=8:sp_on 7,1:sp_on 10,0
8700 pause 200:goto Input_Born_Month2:
8710 case 8:
8720 No=7:sp_on 4,1:sp_on 7,0
8730 pause 200:goto Input_Born_Month2:
8740 case 7:
8750 pause 200:goto Input_Born_Month2:
8760 end select
8770 endif
8780 '右  十字キー　右　or カーソル　右
8790 if ((y2 = 1) or (key$ = chr$(28))) then
8800 select case No
8810 '0ボタンからokボタン右に移動
8820 case 0:
8830 No=-1:sp_on 14,1:sp_on 13,0
8840 pause 200:goto Input_Born_Month2:
8850 '0ボタンからokボタン 右に移動　ここまで
8860 'OKボタンで右を押して何もしない
8870 case -1:
8880 pause 200:goto Input_Born_Month2:
8890 case 1:
8900 No=2:sp_on 9,1:sp_on 6,0
8910 pause 200:goto Input_Born_Month2:
8920 case 2:
8930 No=3:sp_on 12,1:sp_on 9,0
8940 pause 200:goto Input_Born_Month2:
8950 case 3:
8960 pause 200:goto Input_Born_Month2:
8970 case 4:
8980 No=5:sp_on 8,1:sp_on 5,0
8990 pause 200:goto Input_Born_Month2:
9000 case 5:
9010 No=6:sp_on 11,1:sp_on 8,0
9020 pause 200:goto Input_Born_Month2:
9030 case 7:
9040 No=8:sp_on 7,1:sp_on 4,0
9050 pause 200:goto Input_Born_Month2:
9060 case 8:
9070 No=9:sp_on 10,1:sp_on 7,0
9080 pause 200:goto Input_Born_Month2:
9090 case 9:
9100 pause 200:goto Input_Born_Month2:
9110 case 6:
9120 pause 200:goto Input_Born_Month2:
9130 end select
9140 'Okから右ボタンを押して何もしない ここまで
9150 endif
9160 '十字キー　ここまで
9170 '右の丸ボタン　決定キー
9180 if ((bg=2) or (key$=chr$(13))) then
9190 select case count
9200 case 0:
9210 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9220 if (buf_month = 1 or buf_month = 2) then
9230 locate 2,3
9240 color RGB(255,255,255)
9250 print "生まれた月(1月~12月):";buf_Month2$
9260 else
9270 locate 2,3
9280 color Rgb(255,255,255)
9290 print "生まれた月(1月~12月):";buf_Month$
9300 endif
9310 goto Input_Born_Month2:
9320 case 1:
9330 count = 2:c = No
9340 c = val(buf_Month$)
9350 if (No = -1) then
9360 'if No=1 or No=2 then
9370 'endif
9380 month = buf_month
9390 buf_month=val(buf_Month$)
9400 month=buf_month
9410 '生まれた日に飛ぶ
9420 goto Input_Born_Day:
9430 else
9440 buf_month = c*10 + No
9450 buf_Month$= str$(buf_month)
9460 locate 2,3
9470 color Rgb(255,255,255)
9480 print "生まれた月(1月~12月):";buf_Month$
9490 goto Input_Born_Month2:
9500 endif
9510 case 2:
9520 count=3:count2=1
9530 'c= val(buf_Month$)
9540 'buf_month = c*10 + No
9550 'buf_Month$ = str$(buf_month)
9560 'locate 2,3
9570 'print "生まれた月(1月～12月):";buf_Month$
9580 'goto Input_Born_Month2:
9590 'case 3:
9600 'count=4
9610 'b=val(buf_month$)
9620 'buf_month=c*10+No
9630 'buf_Month$=str$(buf_month)
9640 'locate 2,3
9650 'print "生まれた月(1月～12月):";buf_Month$
9660 'buf_month=val(buf_Month$)
9670 'year=val(buf_year$)
9680 if (No=-1) then
9690 goto Input_Born_Day:
9700 else
9710 'goto Input_Born_Month2:
9720 endif
9730 'case 4:
9740 'bufyear=buf_year
9750 'if (No=-1) then
9760 'buf_month = val(buf_Month$)
9770 'month = buf_month
9780 'sp_on 14,0
9790 'goto Input_Born_Day:
9800 'else
9810 'goto Input_Born_Month2:
9820 'endif
9830 end select
9840 endif
9850 '左の丸ボタン　キャンセル
9860 if (bg2=2) then
9870 select case count2
9880 case 0:
9890 if (No = -1) then
9900 buf_month=0:buf_Month$="**"
9910 count2=0:count=0
9920 locate 0,3:print "                                              "
9930 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9940 'if (buf_month > 1) then
9950 sp_on 14,0:goto Input_Born_Month2:
9960 'goto rewrite:
9970 else
9980 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
9990 buf_month=0:buf_Month$="**"
10000 locate 2,3
10010 color rgb(255,255,255)
10020 print "                                       "
10030 goto rewrite:
10040 if (No>2) then
10050 ui_msg"値が範囲外です。"
10060 goto rewrite:
10070 endif
10080 endif
10090 'endif
10100 rewrite:
10110 locate 2,3
10120 color rgb(255,255,255)
10130 print "                                      "
10140 locate 2,3
10150 print "生まれた月(1月~12月):";buf_Month$
10160 goto Input_Born_Month2:
10170 endif
10180 case 1:
10190 buf_Month$="**":buf_month=0
10200 if No=-1 then
10210 count2=2:count=0
10220 locate 0,3
10230 print "                                      "
10240 locate 2,3:
10250 print "生まれた月(1月~12月):"+buf_Month$
10260 goto Input_Born_Month2:
10270 endif
10280 case 2:
10290 sp_on 14,0:goto Input_Seireki:
10300 end select
10310 endif
10320 'endif
10330 end
10340 'end
10350 '生れた日を入力
10360 Input_Born_Day:
10370 '生まれた日入力
10380 cls 3:play ""
10390 'No=-1:Okのとき
10400 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10410 for i=0 to 1
10420 buf_day(i)=0
10430 next i
10440 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10450 gload Gazo$ + "Screen1.png",0,0,0
10460 gload Gazo$ + "downscreen.png",0,0,800
10470 'Init"kb:2"
10480 '音声ファイル再生 2023.06.07
10490 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10500 font 48
10510 locate 0,1
10520 '文字色：黒　 color rgb(0,0,0)
10530 color rgb(255,255,255)
10540 print "生まれた日を入れて下さい" + chr$(13)
10550 color rgb(255,255,255)
10560 locate 2,3
10570 print "生まれた日(1日~31日):";buf_Day$
10580 color rgb(255,255,255)
10590 'locate 4,6:print ":7"
10600 'locate 9,6:print ":8"
10610 'locate 12,6:print ":9"
10620 locate 4,6
10630 print ":7  :8  :9" + chr$(13)
10640 '=======================
10650 'テンキー　色　白　決定ボタン　青
10660 '=======================
10670 color rgb(255,255,255)
10680 locate 4,8
10690 print ":4  :5  :6" + chr$(13)
10700 color rgb(255,255,255)
10710 locate 4,10
10720 print ":1  :2  :3" + chr$(13)
10730 locate 4,12
10740 print "    :0"
10750 locate 12,12
10760 color rgb(255,0,0)
10770 print ":Ok"
10780 sp_on 4,0: sp_on 5,0:sp_on 6,0
10790 sp_on 7,0:sp_on 8,0:sp_on 9,0
10800 sp_on 10,0:sp_on 11,0:sp_on 12,0
10810 sp_on 13,0:sp_on 14,1
10820 Input_Born_Day2:
10830 key$="":bg=0:y=0:y2=0:bg2=0
10840 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10850 key$ = inkey$
10860 bg = strig(1)
10870 y = stick(1)
10880 y2 = stick(0)
10890 bg2 = strig(0)
10900 pause 5
10910 wend
10920 '十字キー　ここから
10930 '上の矢印　または、十字キー上
10940 if ((y = -1) or (key$ = chr$(30))) then
10950 select case No
10960 'No=-1:okのとき:初期の状態
10970 '0kボタンから３に移動
10980 '上に行く 処理
10990 case -1:
11000 No=3:sp_on 12,1:sp_on 14,0
11010 pause 200:goto Input_Born_Day2:
11020 '選択肢:3
11030 '3ボタンから 6に移動
11040 case 3:
11050 No=6:sp_on 12,0:sp_on 11,1
11060 pause 200:goto Input_Born_Day2:
11070 '6ボタンから ９に移動
11080 case 6:
11090 No=9:sp_on 10,1:sp_on 11,0
11100 pause 200:goto Input_Born_Day2:
11110 '6ボタンから ９に移動　ここまで
11120 '9で上を押して何もしない
11130 case 9:
11140 '何もしない
11150 No=9
11160 pause 200:goto Input_Born_Day2:
11170 '9で上を押しても何もしない　ここまで
11180 '上　 0ボタンから2ボタン
11190 'sp_on 6,1:1
11200 'sp_on 8,1:5
11210 'sp_on 7,1:7
11220 case 0:
11230 No=2:sp_on 13,0:sp_on 9,1:
11240 pause 200:goto Input_Born_Day2:
11250 '上  0ボタンから2ボタン　ここまで
11260 '2から５になる 上
11270 case 2:
11280 No=5:sp_on 8,1:sp_on 9,0:
11290 pause 200:goto Input_Born_Day2:
11300 case 5:
11310 No=8:sp_on 7,1:sp_on 8,0
11320 pause 200:goto Input_Born_Day2:
11330 case 8:
11340 pause 200:goto Input_Born_Day2:
11350 case 1:
11360 No=4:sp_on 5,1:sp_on 6,0
11370 pause 200:goto Input_Born_Day2:
11380 case 4:
11390 No=7:sp_on 4,1:sp_on 5,0
11400 pause 200:goto Input_Born_Day2:
11410 case 7:
11420 pause 200:goto Input_Born_Day2:
11430 end select
11440 endif
11450 '左３　ここまで
11460 '下の矢印
11470 '中央 2
11480 if ((y=1) or (key$ = chr$(31))) then
11490 select case No
11500 '9から６に下げる
11510 case 9:
11520 No=6:sp_on 11,1:sp_on 10,0
11530 pause 200:goto Input_Born_Day2:
11540 '6から３に下げる
11550 case 6:
11560 No=3:sp_on 12,1:sp_on 11,0
11570 pause 200:goto Input_Born_Day2:
11580 '3から０ｋに変える
11590 case 3:
11600 No=-1:sp_on 14,1:sp_on 12,0
11610 pause 200:goto Input_Born_Day2:
11620 'Okから下のボタンを押しても何もしない
11630 case -1:
11640 pause 200:goto Input_Born_Day2:
11650 case 8:
11660 No=5:sp_on 8,1:sp_on 7,0
11670 pause 200:goto Input_Born_Day2:
11680 case 5:
11690 No=2:sp_on 9,1:sp_on 8,0
11700 pause 200:goto Input_Born_Day2:
11710 case 2:
11720 No=0:sp_on 13,1:sp_on 9,0
11730 pause 200:goto Input_Born_Day2:
11740 case 0:
11750 pause 200:goto Input_Born_Day2:
11760 case 7:
11770 No=4:sp_on 5,1:sp_on 4,0
11780 pause 200:goto Input_Born_Day2:
11790 case 4:
11800 No=1:sp_on 6,1:sp_on 5,0
11810 pause 200:goto Input_Born_Day2:
11820 case 1:
11830 pause 200:goto Input_Born_Day2:
11840 end select
11850 endif
11860 '左へボタン 十字キー　左　or 　カーソル左
11870 if ((y2 = -1) or (key$ = chr$(29))) then
11880 select case No
11890 'Ok ボタン  Okから　左　０に行く
11900 case -1:
11910 No=0:sp_on 13,1:sp_on 14,0
11920 pause 200:goto Input_Born_Day2:
11930 '0 ボタン  左　何もしない
11940 case 0:
11950 pause 200:goto Input_Born_Day2:
11960 case 3:
11970 No=2:sp_on 9,1:sp_on 12,0:
11980 pause 200:goto Input_Born_Day2:
11990 case 2:
12000 No=1:sp_on 6,1:sp_on 9,0:
12010 pause 200:goto Input_Born_Day2:
12020 case 1:
12030 pause 200:goto Input_Born_Day2:
12040 case 6:
12050 No=5:sp_on 8,1:sp_on 11,0
12060 pause 200:goto Input_Born_Day2:
12070 case 5:
12080 No=4:sp_on 5,1:sp_on 8,0
12090 pause 200:goto Input_Born_Day2:
12100 case 4:
12110 pause 200:goto Input_Born_Day2:
12120 case 9:
12130 No=8:sp_on 7,1:sp_on 10,0
12140 pause 200:goto Input_Born_Day2:
12150 case 8:
12160 No=7:sp_on 4,1:sp_on 7,0
12170 pause 200:goto Input_Born_Day2:
12180 case 7:
12190 pause 200:goto Input_Born_Day2:
12200 end select
12210 endif
12220 '右  十字キー　右　or カーソル　右
12230 if ((y2 = 1) or (key$ = chr$(28))) then
12240 select case No
12250 '0ボタンからokボタン右に移動
12260 case 0:
12270 No=-1:sp_on 14,1:sp_on 13,0
12280 pause 200:goto Input_Born_Day2:
12290 '0ボタンからokボタン 右に移動　ここまで
12300 'OKボタンで右を押して何もしない
12310 case -1:
12320 pause 200:goto Input_Born_Day2:
12330 case 1:
12340 No=2:sp_on 9,1:sp_on 6,0
12350 pause 200:goto Input_Born_Day2:
12360 case 2:
12370 No=3:sp_on 12,1:sp_on 9,0
12380 pause 200:goto Input_Born_Day2:
12390 case 3:
12400 pause 200:goto Input_Born_Day2:
12410 case 4:
12420 No=5:sp_on 8,1:sp_on 5,0
12430 pause 200:goto Input_Born_Day2:
12440 case 5:
12450 No=6:sp_on 11,1:sp_on 8,0
12460 pause 200:goto Input_Born_Day2:
12470 case 7:
12480 No=8:sp_on 7,1:sp_on 4,0
12490 pause 200:goto Input_Born_Day2:
12500 case 8:
12510 No=9:sp_on 10,1:sp_on 7,0
12520 pause 200:goto Input_Born_Day2:
12530 case 9:
12540 pause 200:goto Input_Born_Day2:
12550 case 6:
12560 pause 200:goto Input_Born_Day2:
12570 end select
12580 'Okから右ボタンを押して何もしない ここまで
12590 endif
12600 '十字キー　ここまで
12610 '右の丸ボタンを押したとき
12620 if ((bg = 2) or (key$ = chr$(13))) then
12630 'count :決定ボタンを押した回数
12640 select case (count mod 3)
12650 '1桁目入力
12660 case 0:
12670 count = 1:
12680 if (No = -1) then
12690 '1桁目　OKでは何もしない
12700 'goto check:
12710 else
12720 'ok以外のボタンを押したとき
12730 buf_day = No:buf_Day$ = str$(No)
12740 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12750 locate 2,3
12760 color RGB(255,255,255)
12770 print "生まれた日(1日~31日):";buf_Day2$
12780 endif
12790 check:
12800 if (No >= 1 and No <= 9) then
12810 sp_on 14,0
12820 goto Input_Born_Day2:
12830 else
12840 sp_on 14,0
12850 goto complate:
12860 endif
12870 case 1:
12880 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12890 count = 2:
12900 'locate 2,3
12910 'color RGB(255,255,255)
12920 'print "生まれた日(1日~31日):";buf_Day$
12930 'Okボタンを押したときの処理
12940 '入力値　10未満のとき
12950 'c = buf_day
12960 if (No = -1) then
12970 'c=buf_day
12980 ' buf_day = c
12990 'buf_Day$ = str$(buf_day)
13000 '10以下のとき
13010 if (buf_day < 10) then
13020 sp_on 14,0
13030 goto complate:
13040 endif
13050 else
13060 'c = No
13070 buf_day = c * 10 + No
13080 'buf_day = c
13090 buf_Day$ =str$(buf_day)
13100 locate 2,3
13110 color Rgb(255,255,255)
13120 print "生まれた日(1日~31日):";buf_Day$
13130 goto Input_Born_Day2:
13140 endif
13150 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13160 case 2:
13170 count=0
13180 'c=val(buf_Day$)
13190 'buf_day=c*10+No
13200 'buf_Day$=str$(buf_day)
13210 'day=buf_day
13220 'locate 2,3
13230 'print "生まれた日(1日〜31日):";buf_Day$
13240 'No=-1:ok ボタンを押したとき
13250 if (No = -1) then
13260 if ((buf_day > 0) and (buf_day < 32)) then
13270 sp_on 14,0
13280 goto complate:
13290 else
13300 goto Input_Born_Day2:
13310 endif
13320 'Okボタン以外を押したとき
13330 else
13340 c=val(buf_Day$)
13350 buf_day = c * 10 + No
13360 buf_Day$ = str$(buf_day)
13370 locate 2,3
13380 print "生まれた日(1日~31日):";buf_Day$
13390 'goto Input_Born_Day2:
13400 endif
13410 case 3:
13420 count = 4
13430 c=val(buf_day$)
13440 buf_day = c * 10 + No
13450 buf_day$ = str$(buf_day)
13460 locate 2,3
13470 print "生まれた日を入れてください:";buf_Day$
13480 year = val(buf_year$)
13490 if (No = -1) then
13500 'goto Input_Born_Day:
13510 sp_on 14,0:No=0
13520 goto complate:
13530 else
13540 goto Input_Born_Month2:
13550 endif
13560 'case 4:
13570 'bufyear=buf_year
13580 'if (No=-1) then
13590 'buf_day = val(buf_day$)
13600 'bufday = buf_day
13610 'sp_on 14,0
13620 'goto complate:
13630 'else
13640 'goto Input_Born_Day2:
13650 'endif
13660 end select
13670 endif
13680 if (bg2=2) then
13690 select case count2
13700 case 0:
13710 if (No=-1) then
13720 'buf_day=0:buf_Day$="**"
13730 if (buf_day>=1 and buf_day<=31) then
13740 count=0:No=0
13750 buf_day=0:buf_Day$="**"
13760 'goto rewrite_day:
13770 else
13780 buf_day=0:buf_Day$="**"
13790 ui_msg"値が範囲外です"
13800 endif
13810 goto rewrite_day:
13820 else
13830 goto rewrite_day:
13840 endif
13850 rewrite_day:
13860 locate 2,3
13870 color rgb(255,255,255)
13880 print "                                      "
13890 locate 2,3
13900 print "生まれた日(1日~31日):";buf_Day$
13910 goto Input_Born_Day2:
13920 end select
13930 endif
13940 '--------------------------Input_Born_Day:-------------------------------------------
13950 complate:
13960 suhiNo = buf_year + buf_month + buf_day
13970 'if (suhiNo < 1000) then
13980 a1 = fix(suhiNo / 1000)
13990 a2 = fix(suhiNo/100) - (a1 * 10)
14000 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14010 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14020 'endif
14030 bufsuhiNo = a1+a2+a3+a4
14040 recomp:
14050 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14060 'bufsuhiNo=a6
14070 goto Kabara_Result_Screen:
14080 else
14090 a5 = fix(bufsuhiNo / 10)
14100 a6 = bufsuhiNo - a5 * 10
14110 bufsuhiNo = a6 + a5
14120 if (bufsuhiNo = 10) then
14130 bufsuhiNo=1
14140 endif
14150 goto Kabara_Result_Screen:
14160 endif
14170 Kabara_Result_Screen:
14180 cls 3:
14190 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14200 gload Gazo$ + "downscreen.png",0,0,800
14210 init "kb:4"
14220 '
14230 play ""
14240 select case (bufsuhiNo)
14250 case 1:
14260 play Voice$ + "Result_Kabara_1_20230607.mp3"
14270 case 2:
14280 play Voice$ + "Result_Kabara_2_20230607.mp3"
14290 case 3:
14300 play Voice$ + "Result_Kabara_3_20230607.mp3"
14310 case 4:
14320 play Voice$ + "Result_Kabara_4_20230607.mp3"
14330 case 5:
14340 play Voice$ + "Result_Kabara_5_20230607.mp3"
14350 case 6:
14360 play Voice$ + "Result_Kabara_6_20230607.mp3"
14370 case 7:
14380 play Voice$ + "Result_Kabara_7_20230607.mp3"
14390 case 8:
14400 play Voice$ + "Result_Kabara_8_20230607.mp3"
14410 case 9:
14420 play Voice$ + "Result_Kabara_9_20230607.mp3"
14430 case 11:
14440 play Voice$ + "Result_Kabara_11_20230607.mp3"
14450 case 22:
14460 play Voice$ + "Result_Kabara_22_20230607.mp3"
14470 case 33:
14480 play Voice$ + "Result_Kabara_33_20230607.mp3"
14490 end select
14500 font 48
14510 key$ = "":bg = 0:bg2=0
14520 'COLOR rgb(255,255,255)
14530 'print "●診断結果"+chr$(13)
14540 locate 0,2
14550 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14560 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14570 locate 0,15:
14580 color rgb(255,255,255)
14590 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14600 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14610 key$ = inkey$
14620 bg = strig(1)
14630 bg2 = strig(0)
14640 pause 5
14650 wend
14660 'Enter or JoyPad right
14670 if ((key$ = chr$(13)) or (bg = 2)) then
14680 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14690 endif
14700 if ((bg2=2)) then
14710 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14720 endif
14730 'suhiNo1 = fix(bufsuhiNo / 10)
14740 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14750 'bufsuhiNo = suhiNo1 + suhiNo2
14760 'goto recomp:
14770 'endif
14780 'print chr$(13)
14790 'color rgb(255,0,0)
14800 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14810 'key$ = input$(1)
14820 'if key$ = chr$(13) then goto Main_Screen:
14830 '"Menu2 占いのルール"
14840 Suhi_Rule:
14850 '数秘術占いルールの表示
14860 cls 3:play "":init"kb:4"
14870 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14880 gload Gazo$ + "downscreen.png",0,0,800
14890 'cls 3:
14900 'line (0,0) - (1500,60),rgb(0,0,255),bf
14910 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14920 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14930 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14940 locate 0,2:Font 48
14950 print chr$(13) + chr$(13)
14960 color rgb(0,0,0)
14970 print "誕生日を単数変換します";chr$(13)
14980 print "数字の範囲:1~９,11,22,33";chr$(13)
14990 print "例:1973年11月22日の場合";chr$(13)
15000 print "1+9+7+3+11+22=53 ";chr$(13)
15010 print "→ 5 + 3 = 8" + chr$(13)
15020 print "故に8が数秘ナンバーになります";chr$(13)
15030 locate 0,15
15040 color rgb(255,255,255)
15050 print "ジョイパッドの右を押してください"
15060 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15070 '"key$ = input$(1)"
15080 '"if key$ = chr$(13) then goto Main_Screen:"
15090 suhi_rule_selection:
15100 bg = 0:key$ = "":bg2=0
15110 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15120 bg = strig(1)
15130 key$ = inkey$
15140 bg2=strig(0)
15150 pause 2
15160 wend
15170 if ((bg = 2) or (key$ = chr$(13))) then
15180 pause 200:cls 4:goto Main_Screen:
15190 endif
15200 if (bg2=2) then
15210 play "":pause 200
15220 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15230 goto suhi_rule_selection:
15240 endif
15250 '2.設定
15260 '2-1.トップ画面に戻る
15270 Setting:
15280 cls 3:init"kb:4":font 48:No=0
15290 play ""
15300 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15310 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15320 gload Gazo$ + "downscreen.png",0,0,800
15330 print chr$(13) + chr$(13) + chr$(13)
15340 color rgb(255,255,255):sp_on 0,1:
15350 print "番号を選んでください" + chr$(13)
15360 print " :1.トップ画面に戻る"+ chr$(13)
15370 print " :2.未実装" + chr$(13)
15380 print " :3.未実装" + chr$(13)
15390 print " :4.未実装" + chr$(13)
15400 color rgb(0,0,0)
15410 locate 1,15:print "1.トップ画面に戻るを選択"
15420 Setting_Selection:
15430 y=0:key$="":bg=0:bg2=0
15440 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15450 'y=stick(1)
15460 key$ = inkey$
15470 bg=strig(1)
15480 bg2 = strig(0)
15490 pause 2
15500 wend
15510 if ((bg = 2) or (key$ = chr$(13))) then
15520 select case No
15530 case 0:
15540 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15550 end select
15560 endif
15570 if (bg2 = 2) then
15580 play "":pause 200
15590 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15600 goto Setting_Selection:
15610 endif
15620 '3.Help
15630 '3-1.ルールの表示
15640 '3-2.バージョン
15650 '3-3.トップに戻る
15660 Help:
15670 cls 3:Font 48:No=0
15680 play ""
15690 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15700 gload Gazo$ + "downscreen.png",0,0,800
15710 color rgb(255,255,255)
15720 print chr$(13)+chr$(13)+chr$(13)
15730 print "番号を選んでください"+chr$(13)
15740 print " :1.ルールの表示" + chr$(13)
15750 print " :2.バージョンの表示" + chr$(13)
15760 print " :3.参考文献" + chr$(13)
15770 print " :4.トップ画面に戻る" + chr$(13)
15780 color rgb(0,0,0)
15790 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15800 locate 1,15
15810 print "                                      "
15820 locate 1,15
15830 print "1.ルールの表示を選択"
15840 init"kb:4"
15850 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15860 Help_Select:
15870 bg=0:key$="":y=0:bg2=0
15880 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15890 y = stick(1)
15900 key$ = inkey$
15910 bg = strig(1)
15920 bg2 = strig(0)
15930 pause 5
15940 wend
15950 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15960 if ((y = 1) or (key$ = chr$(31))) then
15970 select case No
15980 case 0:
15990 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16000 case 1:
16010 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16020 case 2:
16030 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16040 case 3:
16050 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16060 end select
16070 endif
16080 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16090 if ((y = -1) or (key$ = chr$(30))) then
16100 select case No
16110 case 0:
16120 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16130 case 1:
16140 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16150 case 2:
16160 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16170 case 3:
16180 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16190 end select
16200 endif
16210 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16220 if ((bg = 2) or (key$ = chr$(13))) then
16230 select case No
16240 case 0:
16250 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16260 case 1:
16270 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16280 case 2:
16290 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16300 '3:Top画面に行く
16310 case 3:
16320 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16330 end select
16340 endif
16350 if (bg2 = 2) then
16360 play "":pause 200
16370 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16380 goto Help_Select:
16390 endif
16400 '数秘術占い　トップ画面
16410 Kabara_TopScreen:
16420 cls 3:play ""
16430 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16440 gload Gazo$ + "downscreen.png",0,0,800
16450 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16460 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16470 init"kb:4":No=0
16480 color rgb(255,255,255)
16490 print chr$(13)+chr$(13)+chr$(13)
16500 print "番号を選んでください" + chr$(13)
16510 print " :1.数秘術占い" + chr$(13)
16520 print " :2.バーズアイグリット" + chr$(13)
16530 print " :3.相性占い" + chr$(13)
16540 print " :4.トップ画面に戻る" + chr$(13)
16550 color rgb(0,0,0)
16560 locate 1,15:print "1.数秘術占いを選択"
16570 Kabara_TopScreen2:
16580 y = 0:bg = 0:key$ = "":bg2 = 0
16590 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16600 key$ = inkey$
16610 bg = strig(1)
16620 y = stick(1)
16630 bg2 = strig(0)
16640 pause 5
16650 wend
16660 '選択ボタン
16670 'カーソル　と　ジョイパッド　の下
16680 if ((y = 1) or (key$ = chr$(31))) then
16690 select case No
16700 case 2:
16710 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16720 case 3:
16730 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16740 case 0:
16750 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16760 case 1:
16770 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16780 end select
16790 endif
16800 'カーソル　上
16810 if ((y=-1) or (key$=chr$(30))) then
16820 select case No
16830 case 0:
16840 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16850 case 1:
16860 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16870 case 2:
16880 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16890 case 3:
16900 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16910 end select
16920 endif
16930 '決定ボタン
16940 'ジョイパッドの右　or  Enter key
16950 if ((bg = 2) or (key$ = chr$(13))) then
16960 select case No
16970 case 0:
16980 '1.数秘術占い
16990 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17000 case 3:
17010 '4.メイン画面にいく
17020 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17030 case 1:
17040 '2.バースアイグリッド
17050 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
17060 case 2:
17070 '3.相性占い
17080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17090 end select
17100 endif
17110 if (bg2 = 2) then
17120 play "":pause 200
17130 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17140 goto Kabara_TopScreen2:
17150 endif
17160 '1.バースアイグリット　名入力
17170 Inputname1:
17180 cls 3:init"kb:4":font 48
17190 bg=0:key$="":y=0:No=41
17200 gload Gazo$ + "Selection.png",1,10,100
17210 'Line 1
17220 'A:選択肢
17230 sp_def 15,(50,250),16,16
17240 'B:選択肢
17250 sp_def 16,(200,250),16,16
17260 'C:選択肢
17270 sp_def 17,(350,250),16,16
17280 'D:選択肢
17290 sp_def 18,(500,250),16,16
17300 'E:選択肢
17310 sp_def 19,(630,250),16,16
17320 'F:選択肢
17330 sp_def 20,(780,250),16,16
17340 'G:選択肢
17350 sp_def 21,(930,250),16,16
17360 'Line 2
17370 sp_def 22,(50,345),16,16
17380 sp_def 23,(200,345),16,16
17390 sp_def 24,(350,345),16,16
17400 sp_def 25,(500,345),16,16
17410 sp_def 26,(630,345),16,16
17420 sp_def 27,(780,345),16,16
17430 sp_def 28,(930,345),16,16
17440 'Line 3
17450 sp_def 29,(50,440),16,16
17460 sp_def 30,(200,440),16,16
17470 sp_def 31,(350,440),16,16
17480 sp_def 32,(500,440),16,16
17490 sp_def 33,(630,440),16,16
17500 sp_def 34,(780,440),16,16
17510 sp_def 35,(930,440),16,16
17520 'Line 4
17530 sp_def 36,(50,535),16,16
17540 sp_def 37,(200,535),16,16
17550 sp_def 38,(350,535),16,16
17560 sp_def 39,(500,535),16,16
17570 sp_def 40,(630,535),16,16
17580 sp_def 41,(780,535),16,16
17590 'sp_def 42,(930,535),16,16
17600 sp_on 15,0
17610 sp_on 16,0
17620 sp_on 17,0
17630 sp_on 18,0
17640 sp_on 19,0
17650 sp_on 20,0
17660 sp_on 21,0
17670 sp_on 22,0
17680 sp_on 23,0
17690 sp_on 24,0
17700 sp_on 25,0
17710 sp_on 26,0
17720 sp_on 27,0
17730 sp_on 28,0
17740 sp_on 29,0
17750 sp_on 30,0
17760 sp_on 31,0
17770 sp_on 32,0
17780 sp_on 33,0
17790 sp_on 34,0
17800 sp_on 35,0
17810 sp_on 36,0
17820 sp_on 37,0
17830 sp_on 38,0
17840 sp_on 39,0
17850 sp_on 40,0
17860 sp_on 41,1
17870 'sp_on 42,1
17880 'sp_put 15,(50,250),0,0
17890 'sp_put 16,(200,250),0,0
17900 'sp_put 17,(350,250),0,0
17910 'sp_put 18,(500,250),0,0
17920 'sp_put 19,(630,250),0,0
17930 'sp_put 20,(780,250),0,0
17940 'sp_put 21,(930,250),0,0
17950 'sp_put 22,(50,345),0,0
17960 'sp_put 23,(200,345),0,0
17970 'sp_put 24,(350,345),0,0
17980 'sp_put 25,(500,345),0,0
17990 'sp_put 26,(630,345),0,0
18000 'sp_put 27,(780,345),0,0
18010 'sp_put 28,(930,345),0,0
18020 'sp_put 29,(50,440),0,0
18030 'sp_put 30,(200,440),0,0
18040 'sp_put 31,(350,440),0,0
18050 'sp_put 32,(500,440),0,0
18060 'sp_put 33,(630,440),0,0
18070 'sp_put 34,(780,440),0,0
18080 'sp_put 35,(930,440),0,0
18090 'sp_put 36,(50,535),0,0
18100 'sp_put 37,(200,535),0,0
18110 'sp_put 38,(350,535),0,0
18120 'sp_put 39,(500,535),0,0
18130 'sp_put 40,(630,535),0,0
18140 sp_put 41,(780,535),0,0
18150 'sp_put 42,(930,536),0,0
18160 gload Gazo$ + "Screen1.png",0,0,0
18170 color rgb(255,255,255)
18180 locate 1,3
18190 print "名前の姓をアルファベットで入力してください"
18200 locate 1,5
18210 print " A  B  C  D  E  F  G"
18220 locate 1,7
18230 print " H  I  J  K  L  M  N"
18240 locate 1,9
18250 print " O  P  Q  R  S  T  U"
18260 locate 1,11
18270 print " V  W  X  Y  Z  Ok"
18280 locate 1,15:color rgb(0,0,0)
18290 print "実装未完全"
18300 select_name1:
18310 bg=0:y=0:No=-1:key$="":init"kb:4"
18320 while ((bg<>2) and (key$<>chr$(13)) and (y<>-1) and (y<>1) and (key$<>chr$(31)))
18330 key$=inkey$
18340 bg=strig(1)
18350 y=stick(1)
18360 pause 200
18370 wend
18380 if ((y=-1) or (key$=chr$(31))) then
18390 select case No
18400 case -1:
18410 '実装未完全なので終了
18420  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
18430 case 20:
18440   No=13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
18450 case 13:
18460   No=20:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
18470 end select
18480 endif
18490 if ((key$=chr$(13)) OR  (bg=2)) then
18500 select case No
18510 case -1:
18520      sp_on 41,0:goto Main_Screen:
18530 end select
18540 endif
18550 'gload Gazo$ + "Input_Birtheye2.png",0,0,0
18560 'color rgb(255,255,255)
18570 'locate 1,2:print "名前をアルファベットで入れてください"
18580 'color rgb(0,0,0)
18590 'locate 1,5:Input "名前（姓の部分）:",name1$
18600 'locate 1,5:print "Hit any key"
18610 'n1 = len(name1$)
18620 'if (n1 < 11) then
18630 'for i=1 to n1
18640 'buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
18650 'next i
18660 'endif
18670 'if b$=chr$(13) then goto Inputname2:
18680 '2.グリッドアイ　姓の入力
18690 end
18700 Inputname2:
18710 cls 3:init"kb:2":font 48
18720 gload Gazo$ + "Input_Birtheye1.png",0,0,0
18730 color rgb(255,255,255)
18740 locate 1,2:print "名前をアルファベットで入れてください"
18750 color rgb(0,0,0)
18760 locate 1,5:Input "名前(名の部分):",name2$
18770 n2 = len(name2$)
18780 for i=1 to n2
18790 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
18800 next i
18810 '計算領域
18820 Complate:
18830 'name1
18840 for i=0 to 25
18850 for n=1 to len(name1$)
18860 if (buf_chart$(i,0) = buf_name1$(n-1)) then
18870 b = val(buf_chart$(i,1))
18880 buffer(b-1) = buffer(b-1) + 1
18890 endif
18900 next n
18910 next i
18920 'name2
18930 for i=0 to 25
18940 for n=1 to len(name2$)
18950 if (buf_chart$(i,0) = buf_name2$(n-1)) then
18960 c = val(buf_chart$(i,1))
18970 buffer(c - 1) = buffer(c - 1) + 1
18980 endif
18990 next n
19000 next i
19010 '結果表示領域
19020 Result_Birtheye1:
19030 cls 3:init"kb:4":No=0
19040 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
19050 gload Gazo$ + "downscreen.png",0,0,800
19060 color rgb(255,255,255)
19070 '1の表示
19080 locate 3,14:print buffer(0);
19090 '2の表示
19100 locate 3,9:print buffer(1);
19110 '3の表示
19120 locate 3,5:print buffer(2);
19130 '4の表示
19140 locate 10,14:print buffer(3);
19150 '5の表示
19160 locate 10,9:print buffer(4);
19170 '6の表示
19180 locate 10,5:print buffer(5);
19190 '7の表示
19200 locate 15,14:print buffer(6);
19210 '8の表示
19220 locate 15,9:print buffer(7);
19230 '9の表示
19240 locate 15,5:print buffer(8);
19250 'name を大文字に変換
19260 locate 5,3:print ucase$(name1$ + name2$)
19270 color rgb(0,0,0)
19280 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
19290 bg=0:key$="":bg2=0
19300 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
19310 'Enterと決定ボタン
19320 key$ = inkey$
19330 bg = strig(1)
19340 bg2=strig(0)
19350 pause 200
19360 wend
19370 if ((bg=2) or (key$=chr$(13))) then
19380 'データーをクリアしてトップ画面に行く
19390 'for i=0 to 8
19400 'buffer(i)=0
19410 'next i
19420 'for n=0 to 9
19430 'buf_name1$(n) = ""
19440 'buf_name2$(n) = ""
19450 'next n
19460 'Topに行く
19470 'goto Main_Screen:
19480 '次へ
19490 goto BirdsEye_Result2:
19500 endif
19510 if (bg2=2) then
19520 'データーをクリアする
19530 for i=0 to 8
19540 buffer(i)=0
19550 next i
19560 for n=0 to 9
19570 buf_name1$(n)=""
19580 buf_name2$(n)=""
19590 next n
19600 goto Inputname1:
19610 endif
19620 'goto Result_Birtheye1:
19630 'Result_Birtheye2:
19640 'cls 3:color rgb(255,255,255)
19650 'end
19660 'Memory 消去
19670 '
19680 '横のフォーカスライン
19690 BirdsEye_Result2:
19700 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
19710 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
19720 Forcus1_buffer$(2)="○"
19730 else
19740 Forcus1_buffer$(2)="☓"
19750 endif
19760 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
19770 Forcus1_buffer$(1)="○"
19780 else
19790 Forcus1_buffer$(1) = "☓"
19800 endif
19810 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
19820 Forcus1_buffer$(0)="○"
19830 else
19840 Forcus1_buffer$(0)="☓"
19850 endif
19860 gload Gazo$ + "Screen1.png",0,0,0
19870 color rgb(255,0,0):
19880 locate 1,1
19890 print "バーズアイグリッド(フォーカスライン1)"
19900 color rgb(255,255,255)
19910 locate 1,3:
19920 print "●.横のフォーカスライン"
19930 locate 1,5
19940 print "1.切れ者ライン:"+Forcus1_buffer$(2)
19950 locate 1,7
19960 print "2.調停者ライン:"+Forcus1_buffer$(1)
19970 locate 1,9
19980 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
19990 color rgb(0,0,0)
20000 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
20010 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
20020 key$=inkey$
20030 bg=strig(1)
20040 bg2=strig(0)
20050 pause 200
20060 wend
20070 if ((bg=2) or (key$=chr$(13))) then
20080 goto BirdsEye_Result3:
20090 endif
20100 if (bg2=2) then
20110 goto Main_Screen:
20120 endif
20130 BirdsEye_Result3:
20140 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
20150 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
20160 Forcus2_buffer$(2)="○"
20170 else
20180 Forcus2_buffer$(2)="☓"
20190 endif
20200 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
20210 Forcus2_buffer$(1)="○"
20220 else
20230 Forcus2_buffer$(1) = "☓"
20240 endif
20250 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
20260 Forcus2_buffer$(0)="○"
20270 else
20280 Forcus2_buffer$(0)="☓"
20290 endif
20300 gload Gazo$ + "Screen1.png",0,0,0
20310 color rgb(255,0,0):
20320 locate 1,1
20330 print "バーズアイグリッド(フォーカスライン2)"
20340 color rgb(255,255,255)
20350 locate 1,3:
20360 print "●.縦のフォーカスライン"
20370 locate 1,5
20380 print "1.表現者ライン:" + Forcus2_buffer$(2)
20390 locate 1,7
20400 print "2.司令塔ライン:" + Forcus2_buffer$(1)
20410 locate 1,9
20420 print "3.指導者ライン:" + Forcus2_buffer$(0)
20430 color rgb(0,0,0)
20440 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
20450 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
20460 key$=inkey$
20470 bg=strig(1)
20480 bg2=strig(0)
20490 pause 200
20500 wend
20510 if ((bg = 2) or (key$ = chr$(13))) then
20520 goto BirdsEye_Result4:
20530 endif
20540 if (bg2=2) then
20550 goto Main_Screen:
20560 endif
20570 BirdsEye_Result4:
20580 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
20590 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
20600 Forcus3_buffer$(1) = "○"
20610 else
20620 Forcus3_buffer$(1) = "☓"
20630 endif
20640 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
20650 Forcus3_buffer$(0) = "○"
20660 else
20670 Forcus3_buffer$(0) = "☓"
20680 endif
20690 gload Gazo$ + "Screen1.png",0,0,0
20700 color rgb(255,0,0):
20710 locate 1,1
20720 print "バーズアイグリッド(フォーカスライン3)"
20730 color rgb(255,255,255)
20740 locate 1,3:
20750 print "●.斜めのフォーカスライン"
20760 locate 1,5
20770 print "1.成功者ライン:"+Forcus3_buffer$(1)
20780 locate 1,7
20790 print "2.セレブライン:"+Forcus3_buffer$(0)
20800 color rgb(0,0,0)
20810 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
20820 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
20830 key$ = inkey$
20840 bg = strig(1)
20850 bg2 = strig(0)
20860 pause 200
20870 wend
20880 if ((bg=2) or (key$=chr$(13))) then
20890  goto Result_Birtheye1:
20900 endif
20910 if (bg2=2) then
20920 'データークリア
20930 for i=0 to 8
20940  buffer(i) = 0
20950 next i
20960  goto Main_Screen:
20970 endif
20980 References1:
20990 cls 3:key$ = "":bg = 0:play "":font 48-16
21000 gload Gazo$ + "Reference1_20230703.png",0,0,0
21010 print chr$(13)+chr$(13)+chr$(13)
21020 color rgb(0,0,0)
21030 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
21040 print "Author:carol Adrinne,PhD"+chr$(13)
21050 print "出版社:幻冬舎" + chr$(13)
21060 print "HP:www.carolAdrienne.jp/"+chr$(13)
21070 print "ISBN:978-4-344-01394-0"+chr$(13)
21080 print "定価:1500円 + 税"+chr$(13)
21090 color rgb(255,255,255)
21100 locate 1,23
21110 print "ジョイパッド右：次へ"
21120 while (key$ <> chr$(13) and bg <> 2)
21130 bg = strig(1)
21140 key$ = inkey$
21150 wend
21160 '
21170 if ((bg = 2) or (key$ = chr$(13))) then
21180 pause 200:goto References2:
21190 endif
21200 'ユダヤの秘儀 カバラ大占術
21210 References2:
21220 cls 3:play "":bg = 0:key$ = ""
21230 gload Gazo$ + "Reference2_20230703.png",0,0,0
21240 '参考文献２
21250 'カバラ大占術
21260 print chr$(13) + chr$(13) + chr$(13)
21270 color  rgb(0,0,0):font 48-16
21280 locate 1,3
21290 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
21300 print "著者：浅野　八郎" + chr$(13)
21310 print "出版社:NON BOOK" + chr$(13)
21320 print "ISBN:4-396-10364-6" + chr$(13)
21330 print "定価:829円 + 税"
21340 color rgb(255,255,255)
21350 locate 1,23
21360 print "ジョイパッド右：トップへ行く"
21370 while ((key$ <> chr$(13)) and (bg <> 2))
21380 bg = strig(1)
21390 key$ = inkey$
21400 wend
21410 if ((bg = 2) or (key$ = chr$(13))) then
21420 pause 200:goto Main_Screen:
21430 endif
21440 end
21450 '1.数秘術　トップ画面
21460 Kabara_First_Top:
21470 cls 3:color rgb(255,255,255):play ""
21480 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
21490 gload Gazo$ + "downscreen.png",0,0,800
21500 No=0:init"kb:4"
21510 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
21520 print chr$(13);chr$(13)
21530 color rgb(255,255,255)
21540 locate 3,4:No=0
21550 print "番号選んでください" + chr$(13)
21560 print " :1.数秘術占い" + chr$(13)
21570 print " :2.トップ画面に戻る" + chr$(13)
21580 color rgb(0,0,0)
21590 sp_on 0,1
21600 locate 1,15:print "1.数秘術番号を求めるを選択"
21610 'KeyBord:true
21620 'Joy Pad:true
21630 '上、下:true
21640 '
21650 'ｂｇ：決定ボタン
21660 'カーソル　上
21670 'カーソル　下
21680 Kabara_First_Top2:
21690 key$ = "":bg = 0:y = 0:
21700 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
21710 key$ = inkey$
21720 bg = strig(1)
21730 y = stick(1)
21740 'PauseでCPUを休める
21750 pause 5
21760 wend
21770 '1.カーソル　下 処理 chr$(31)
21780 'カーソル　下
21790 if ((key$ = chr$(31)) or (y = 1)) then
21800 select case No
21810 '
21820 case 1:
21830 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
21840 case 0:
21850 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
21860 'case 2:
21870 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
21880 end select
21890 endif
21900 '2.カーソル　上 処理 chr$(30)
21910 if ((key$ = chr$(30)) or (y = -1)) then
21920 select case No
21930 case 0:
21940 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
21950 case 1:
21960 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
21970 'case 2:
21980 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
21990 end select
22000 endif
22010 '3.決定 処理  bg:2 or Enter key:chr$(13)
22020 if ((bg = 2) or (key$ = chr$(13))) then
22030 select case No
22040 case 0:
22050 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
22060 goto Kabara_TopScreen:
22070 'case 1:
22080 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
22090 case 1:
22100 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
22110 end select
22120 endif
22130 '
22140 'Kabara 相性占い トップ画面
22150 Kabara_Aishou_Top:
22160 cls 3:y=0:key$="":bg=0:No=0
22170 play ""
22180 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
22190 gload Gazo$ + "downscreen.png",0,0,800
22200 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
22210 print chr$(13) + chr$(13)
22220 locate 0,4:color rgb(255,255,255)
22230 'print "Ok"
22240 '
22250 print "番号を選んでください" + chr$(13)
22260 print " :1.男女2人の相性(未実装)" + chr$(13)
22270 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
22280 print " :3.トップ画面に戻る" + chr$(13)
22290 sp_on 0,1:sp_on 1,0:sp_on 2,0
22300 color rgb(0,0,0)
22310 locate 1,15:print "1.男女2人の相性占いを選択"
22320 Kabara_Aishou_Top2:
22330 key$ = "":y = 0:bg = 0:
22340 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
22350 'ジョイパッド(右) ,十字キー (上下)
22360 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
22370 y = stick(1)
22380 key$ = inkey$
22390 bg = strig(1)
22400 pause 5
22410 wend
22420 'カーソル　下 or 十字キー　下
22430 if ((key$ = chr$(31)) or (y = 1)) then
22440 select case No
22450 '選択肢　1 - 2に変更
22460 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
22470 'ok
22480 case 0:
22490 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
22500 '選択肢　2 - 3に変更
22510 case 1:
22520 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
22530 'リリース時 case 2コメント解除
22540 case 2:
22550 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
22560 case else:
22570 goto Kabara_Aishou_Top2:
22580 end select
22590 endif
22600 '十字キー　上　、カーソル　上
22610 if ((key$ = chr$(30)) or (y = -1)) then
22620 select case No
22630 case 0:
22640 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
22650 case 1:
22660 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
22670 case 2:
22680 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
22690 case else:
22700 goto Kabara_Aishou_Top2:
22710 end select
22720 endif
22730 '十字キー　上下:選択
22740 'ジョイパッド 右:決定
22750 if ((bg = 2) or (key$ = chr$(13))) then
22760 select case No
22770 '1.男女の相性
22780 case 0:
22790 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
22800 '2ビジネスの相性
22810 case 1:
22820 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
22830 case 2:
22840 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
22850 end select
22860 endif
22870 'ビジネスの相性　
22880 '1.1人目のビジネスの相性　名前入力　1人目
22890 Business_Aishou_Input_1_parson:
22900 No=0:color RGB(255,255,255)
22910 cls 3:init "kb:2"
22920 gload Gazo$ + "Screen1.png",0,0,0
22930 gload Gazo$ + "downscreen.png",0,0,800
22940 play "":color rgb(255,0,0):name$ = ""
22950 locate 0,1
22960 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
22970 color rgb(255,255,255):
22980 locate 0,3
22990 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
23000 print "入れてください" + chr$(13)
23010 locate 0,15:color rgb(0,0,0)
23020 Input "1人目の名前:",name$
23030 'color rgb(0,0,0)
23040 'locate 0,13:print "                                     "
23050 'locate 0,13:print "1人目の名前を入力してエンターキー":
23060 'buffer_name$(0):1人目の名前
23070 buffer_name$(0) = name$:
23080 goto Business_Aishou_Input_2_Parson:
23090 '2.2人目のビジネスの相性 名前入力 2人目
23100 Business_Aishou_Input_2_Parson:
23110 cls 3:init "kb:2":name$ = "":No=0
23120 gload Gazo$ + "Screen1.png",0,0,0
23130 gload Gazo$ + "downscreen.png",0,0,800
23140 color rgb(255,0,0)
23150 'Title
23160 locate 0,1
23170 print "ビジネスの相性　2人目"
23180 locate 0,3
23190 color rgb(255,255,255)
23200 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
23210 print "入れてください" + chr$(13)
23220 locate 0,15:color rgb(0,0,0)
23230 Input "2人目の名前:",name$
23240 'color rgb(0,0,0)
23250 'locate 0,15:print "                                              "
23260 'locate 0,15:print "2人目の名前を入力してエンター ":
23270 '2人目
23280 '2人目の名前を入れるに代入
23290 buffer_name$(1) = name$:
23300 goto Select_jyoushi:
23310 '3.上司の選択
23320 Select_jyoushi:
23330 cls 3:gload Gazo$ + "Screen1.png",0,0,0
23340 gload Gazo$ + "downscreen.png",0,0,800
23350 init "kb:4":No=0
23360 color rgb(0,0,255)
23370 locate 1,1
23380 print "上司の選択"
23390 color rgb(255,255,255)
23400 locate 0,4:print "名前から上司の方を選んでください"
23410 locate 0,6
23420 print " :";buffer_name$(0);"が上 司";chr$(13)
23430 locate 0,8
23440 print " :";buffer_name$(1);"が上 司";chr$(13)
23450 locate 0,15:
23460 print "                                     "
23470 locate 0,15:color rgb(0,0,0)
23480 print "上司の方を選んで右の丸ボタン"
23490 sp_on 0,1:sp_on 1,0:sp_on 2,0
23500 Select_jyoushi2:
23510 'ここでNo=0をおいてはいけない
23520 y=0:key$="":bg=0:
23530 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
23540 y = stick(1)
23550 key$ = inkey$
23560 bg = strig(1)
23570 pause 5
23580 wend
23590 '1.カーソル下の処理　or 十字キーの下処理
23600 if ((key$ = chr$(31)) or (y = 1)) then
23610 select case No
23620 case 0:
23630 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
23640 case 1:
23650 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
23660 end select
23670 endif
23680 '2.カーソル上処理　or 十字キーの上の処理
23690 if ((key$ = chr$(30)) or (y = -1)) then
23700 select case No
23710 case 0:
23720 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
23730 case 1:
23740 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
23750 end select
23760 endif
23770 if ((key$ = chr$(13)) or (bg = 2)) then
23780 select case No
23790 case 0:
23800 '上司(name1)を配列に代入
23810 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
23820 case 1:
23830 '上司（name2)を配列に代入
23840 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
23850 end select
23860 endif
23870 '3.決定ボタン　Enter or 右の丸ボタン
23880 '1.誕生日入力
23890 '1-1.生まれた年を入力
23900 'Jyoushi_born_year:
23910 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
23920 '---------------------------------------------'
23930 '誕生日入力(生れた年代)
23940 Jyoushi_Input_Seireki:
23950 'buf_Jyoushi_Born_Year:上司の生まれた年代
23960 'buf_Jyoushi_Born_Day(0) = born_year
23970 cls 3:play "":count=0:count2=0
23980 init"kb:4"
23990 'No=-1:Okのとき
24000 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
24010 for i=0 to 3
24020 buf_Jyoushi_Born_Day(i)=0
24030 next i
24040 gload Gazo$ + "Screen1.png",0,0,0
24050 gload Gazo$ + "downscreen.png",0,0,800
24060 'Init"kb:2"
24070 '音声ファイル再生 2023.06.07
24080 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
24090 font 48
24100 locate 0,1
24110 '文字色：黒　 color rgb(0,0,0)
24120 color rgb(255,255,255)
24130 print "上司の生まれた年代を入れて下さい" + chr$(13)
24140 color rgb(255,255,255)
24150 locate 1,3
24160 print "上司の生まれた年代(西暦4桁):";buf_year$
24170 color rgb(255,255,255)
24180 'locate 4,6:print ":7"
24190 'locate 9,6:print ":8"
24200 'locate 12,6:print ":9"
24210 locate 4,6
24220 print ":7  :8  :9" + chr$(13)
24230 color rgb(255,255,255)
24240 locate 4,8
24250 print ":4  :5  :6" + chr$(13)
24260 color rgb(255,255,255)
24270 locate 4,10
24280 print ":1  :2  :3" + chr$(13)
24290 locate 4,12
24300 print "    :0"
24310 locate 12,12
24320 color rgb(0,0,255)
24330 print ":Ok"
24340 sp_on 4,0: sp_on 5,0:sp_on 6,0
24350 sp_on 7,0:sp_on 8,0:sp_on 9,0
24360 sp_on 10,0:sp_on 11,0:sp_on 12,0
24370 sp_on 13,0:sp_on 14,1
24380 Jyoushi_Input_Seireki2:
24390 key$="":bg=0:y=0:y2=0:bg2=0:
24400 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
24410 key$ = inkey$
24420 bg = strig(1)
24430 y = stick(1)
24440 y2 = stick(0)
24450 bg2=strig(0)
24460 pause 5
24470 wend
24480 '十字キー　ここから
24490 '上の矢印　または、十字キー上
24500 if ((y = -1) or (key$ = chr$(30))) then
24510 select case No
24520 'No=-1:okのとき:初期の状態
24530 '0kボタンから３に移動
24540 '上に行く 処理
24550 case -1:
24560 No=3:sp_on 12,1:sp_on 14,0
24570 pause 200:goto Jyoushi_Input_Seireki2:
24580 '選択肢:3
24590 '3ボタンから 6に移動
24600 case 3:
24610 No=6:sp_on 12,0:sp_on 11,1
24620 pause 200:goto Jyoushi_Input_Seireki2:
24630 '6ボタンから ９に移動
24640 case 6:
24650 No=9:sp_on 10,1:sp_on 11,0
24660 pause 200:goto Jyoushi_Input_Seireki2:
24670 '6ボタンから ９に移動　ここまで
24680 '9で上を押して何もしない
24690 case 9:
24700 '何もしない
24710 No=9
24720 pause 200:goto Jyoushi_Input_Seireki2:
24730 '9で上を押しても何もしない　ここまで
24740 '上　 0ボタンから2ボタン
24750 'sp_on 6,1:1
24760 'sp_on 8,1:5
24770 'sp_on 7,1:7
24780 case 0:
24790 No=2:sp_on 13,0:sp_on 9,1:
24800 pause 200:goto Jyoushi_Input_Seireki2:
24810 '上  0ボタンから2ボタン　ここまで
24820 '2から５になる 上
24830 case 2:
24840 No=5:sp_on 8,1:sp_on 9,0:
24850 pause 200:goto Jyoushi_Input_Seireki2:
24860 case 5:
24870 No=8:sp_on 7,1:sp_on 8,0
24880 pause 200:goto Jyoushi_Input_Seireki2:
24890 case 8:
24900 pause 200:goto Jyoushi_Input_Seireki2:
24910 case 1:
24920 No=4:sp_on 5,1:sp_on 6,0
24930 pause 200:goto Jyoushi_Input_Seireki2:
24940 case 4:
24950 No=7:sp_on 4,1:sp_on 5,0
24960 pause 200:goto Jyoushi_Input_Seireki2:
24970 case 7:
24980 pause 200:goto Jyoushi_Input_Seireki2:
24990 end select
25000 endif
25010 '左３　ここまで
25020 '下の矢印
25030 '中央 2
25040 if ((y=1) or (key$ = chr$(31))) then
25050 select case No
25060 '9から６に下げる
25070 case 9:
25080 No=6:sp_on 11,1:sp_on 10,0
25090 pause 200:goto Jyoushi_Input_Seireki2:
25100 '6から３に下げる
25110 case 6:
25120 No=3:sp_on 12,1:sp_on 11,0
25130 pause 200:goto Jyoushi_Input_Seireki2:
25140 '3から０ｋに変える
25150 case 3:
25160 No=-1:sp_on 14,1:sp_on 12,0
25170 pause 200:goto Jyoushi_Input_Seireki2:
25180 'Okから下のボタンを押しても何もしない
25190 case -1:
25200 pause 200:goto Jyoushi_Input_Seireki2:
25210 case 8:
25220 No=5:sp_on 8,1:sp_on 7,0
25230 pause 200:goto Jyoushi_Input_Seireki2:
25240 case 5:
25250 No=2:sp_on 9,1:sp_on 8,0
25260 pause 200:goto Jyoushi_Input_Seireki2:
25270 case 2:
25280 No=0:sp_on 13,1:sp_on 9,0
25290 pause 200:goto Jyoushi_Input_Seireki2:
25300 case 0:
25310 pause 200:goto Jyoushi_Input_Seireki2:
25320 case 7:
25330 No=4:sp_on 5,1:sp_on 4,0
25340 pause 200:goto Jyoushi_Input_Seireki2:
25350 case 4:
25360 No=1:sp_on 6,1:sp_on 5,0
25370 pause 200:goto Jyoushi_Input_Seireki2:
25380 case 1:
25390 pause 200:goto Jyoushi_Input_Seireki2:
25400 end select
25410 endif
25420 '左へボタン 十字キー　左　or 　カーソル左
25430 if ((y2 = -1) or (key$ = chr$(29))) then
25440 select case No
25450 'Ok ボタン  Okから　左　０に行く
25460 case -1:
25470 No=0:sp_on 13,1:sp_on 14,0
25480 pause 200:goto Jyoushi_Input_Seireki2:
25490 '0 ボタン  左　何もしない
25500 case 0:
25510 pause 200:goto Jyoushi_Input_Seireki2:
25520 case 3:
25530 No=2:sp_on 9,1:sp_on 12,0:
25540 pause 200:goto Jyoushi_Input_Seireki2:
25550 case 2:
25560 No=1:sp_on 6,1:sp_on 9,0:
25570 pause 200:goto Jyoushi_Input_Seireki2:
25580 case 1:
25590 pause 200:goto Jyoushi_Input_Seireki2:
25600 case 6:
25610 No=5:sp_on 8,1:sp_on 11,0
25620 pause 200:goto Jyoushi_Input_Seireki2:
25630 case 5:
25640 No=4:sp_on 5,1:sp_on 8,0
25650 pause 200:goto Jyoushi_Input_Seireki2:
25660 case 4:
25670 pause 200:goto Jyoushi_Input_Seireki2:
25680 case 9:
25690 No=8:sp_on 7,1:sp_on 10,0
25700 pause 200:goto Jyoushi_Input_Seireki2:
25710 case 8:
25720 No=7:sp_on 4,1:sp_on 7,0
25730 pause 200:goto Jyoushi_Input_Seireki2:
25740 case 7:
25750 pause 200:goto Jyoushi_Input_Seireki2:
25760 end select
25770 endif
25780 '右  十字キー　右　or カーソル　右
25790 if ((y2 = 1) or (key$ = chr$(28))) then
25800 select case No
25810 '0ボタンからokボタン右に移動
25820 case 0:
25830 No=-1:sp_on 14,1:sp_on 13,0
25840 pause 200:goto Jyoushi_Input_Seireki2:
25850 '0ボタンからokボタン 右に移動　ここまで
25860 'OKボタンで右を押して何もしない
25870 case -1:
25880 pause 200:goto Jyoushi_Input_Seireki2:
25890 case 1:
25900 No=2:sp_on 9,1:sp_on 6,0
25910 pause 200:goto Jyoushi_Input_Seireki2:
25920 case 2:
25930 No=3:sp_on 12,1:sp_on 9,0
25940 pause 200:goto Jyoushi_Input_Seireki2:
25950 case 3:
25960 pause 200:goto Jyoushi_Input_Seireki2:
25970 case 4:
25980 No=5:sp_on 8,1:sp_on 5,0
25990 pause 200:goto Jyoushi_Input_Seireki2:
26000 case 5:
26010 No=6:sp_on 11,1:sp_on 8,0
26020 pause 200:goto Jyoushi_Input_Seireki2:
26030 case 7:
26040 No=8:sp_on 7,1:sp_on 4,0
26050 pause 200:goto Jyoushi_Input_Seireki2:
26060 case 8:
26070 No=9:sp_on 10,1:sp_on 7,0
26080 pause 200:goto Jyoushi_Input_Seireki2:
26090 case 9:
26100 pause 200:goto Jyoushi_Input_Seireki2:
26110 case 6:
26120 pause 200:goto Jyoushi_Input_Seireki2:
26130 end select
26140 'Okから右ボタンを押して何もしない ここまで
26150 endif
26160 '十字キー　ここまで
26170 '==============================
26180 'ここから
26190 '==============================
26200 if ((bg=2) or (key$=chr$(13))) then
26210 select case count
26220 case 0:
26230 count = 1
26240 if (No=-1) then
26250 count = 0:No=0
26260 buf_Jyoushi_Born_Day(0) = No
26270 'Okボタンを押したとき
26280 goto Jyoushi_Input_Seireki2:
26290 else
26300 'Okボタン以外が押されたとき
26310 if (No>=1 and No<=2) then
26320 buf_year$="":buf_year$=str$(No) + "***"
26330 buf_year = No:a= No
26340 buf_Jyoushi_Born_Day(0) = No
26350 locate 1,3
26360 color rgb(255,255,255)
26370 print "上司の生まれた年代(西暦4桁):";buf_year$
26380 goto Jyoushi_Input_Seireki2:
26390 else
26400 count=0
26410 ui_msg"数字が範囲外になります。"
26420 buf_year$="":buf_year=0
26430 goto Jyoushi_Input_Seireki2:
26440 endif
26450 endif
26460 case 1:
26470 count = 2
26480 if (No = -1) then
26490 count = 1
26500 goto Jyoushi_Input_Seireki2:
26510 else
26520 buf_year = a * 10 + No
26530 b=buf_year
26540 buf_year$ = str$(buf_year) + "**"
26550 buf_Jyoushi_Born_Day(0)=buf_year
26560 locate 1,3
26570 color rgb(255,255,255)
26580 print "                                                                "
26590 locate 1,3
26600 print "上司の生まれた年代(西暦4桁):" + buf_year$
26610 'if (No = -1) then
26620 'count=1
26630 goto Jyoushi_Input_Seireki2:
26640 endif
26650 case 2:
26660 count=3
26670 if (No=-1) then
26680 count =2
26690 goto Jyoushi_Input_Seireki2:
26700 else
26710 buf_year = b * 10 + No
26720 c=buf_year
26730 buf_year$ = str$(buf_year) + "*"
26740 buf_Jyoushi_Born_Day(0) = buf_year
26750 locate 1,3
26760 color rgb(255,255,255)
26770 print "                                        "
26780 locate 1,3
26790 print "上司の生まれた年代(西暦4桁):";buf_year$
26800 goto Jyoushi_Input_Seireki2:
26810 endif
26820 case 3:
26830 count=4
26840 if (No = -1) then
26850 No=0
26860 goto Jyoushi_Input_Seireki2:
26870 else
26880 buf_year = c * 10 + No
26890 buf_year$ = str$(buf_year)
26900 buf_Jyoushi_Born_Day(0) = buf_year
26910 locate 1,3
26920 color RGB(255,255,255)
26930 print "                                      "
26940 locate 1,3
26950 print "上司の生まれた年代(西暦4桁):";buf_year$
26960 buf_year=val(buf_year$)
26970 'year=val(buf_year$)
26980 'if (No=-1) then
26990 'goto Input_Born_Month:
27000 'else
27010 goto Jyoushi_Input_Seireki2:
27020 endif
27030 case 4:
27040 'bufyear=buf_year
27050 if (No=-1) then
27060 buf_year = val(buf_year$)
27070 buf_Jyoushi_Born_Day(0)=buf_year
27080 sp_on 14,0:No=0
27090 goto Jyoushi_Input_Born_Month:
27100 else
27110 goto Jyoushi_Input_Seireki2:
27120 endif
27130 end select
27140 endif
27150 '===========================
27160 'ここまでを部下のところにコピーする.
27170 '===========================
27180 if (bg2 = 2) then
27190 select case count2
27200 case 0:
27210 if (No = -1) then
27220 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
27230 count=0
27240 locate 1,3
27250 color rgb(255,255,255)
27260 print "                                      "
27270 locate 1,3
27280 print "上司の生まれた年代（西暦4桁):"+buf_year$
27290 goto Jyoushi_Input_Seireki2:
27300 else
27310 '(buf_year=0) then
27320 buf_year=0:buf_year$="****"
27330 locate 1,3
27340 print "                                       "
27350 locate 1,3
27360 print "上司の生まれた年代(西暦4桁):"+buf_year$
27370 goto Jyoushi_Input_Seireki2:
27380 'endif
27390 endif
27400 end select
27410 endif
27420 'Input"上司の生れた年代(4桁,〜2025年):",year
27430 'if year > 2025 then goto Jyoushi_Input_Seireki:
27440 'if year = 123 then cls 3:cls 4:goto Main_Screen:
27450 '"4桁目"
27460 'bufyear4 = fix(year / 1000)
27470 '"3桁目"
27480 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
27490 '"2桁目"
27500 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
27510 '"1桁目"
27520 'bufyear1 = fix((year - ((bufyear4*
27530 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
27540 '2.生まれた月を入力
27550 Jyoushi_Input_Born_Month:
27560 cls 3:play "":count=0:count2=0
27570 'No=-1:Okのとき
27580 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
27590 for i=0 to 1
27600 buf_month(i)=0
27610 next i
27620 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27630 gload Gazo$ + "Screen1.png",0,0,0
27640 gload Gazo$ + "downscreen.png",0,0,800
27650 'Init"kb:4"
27660 '音声ファイル再生 2023.06.07
27670 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
27680 font 48
27690 locate 0,1
27700 '文字色：黒　 color rgb(0,0,0)
27710 '文字色:白
27720 color rgb(255,255,255)
27730 print "上司の生まれた月を入れて下さい" + chr$(13)
27740 '文字色:白
27750 color rgb(255,255,255)
27760 locate 1,3
27770 '文字色:白
27780 print "上司の生まれた月(1月~12月):"+buf_Month$
27790 color rgb(255,255,255)
27800 'locate 4,6:print ":7"
27810 'locate 9,6:print ":8"
27820 'locate 12,6:print ":9"
27830 locate 4,6
27840 '文字色:赤
27850 print ":7  :8  :9" + chr$(13)
27860 color rgb(255,255,255)
27870 locate 4,8
27880 print ":4  :5  :6" + chr$(13)
27890 color rgb(255,255,255)
27900 locate 4,10
27910 print ":1  :2  :3" + chr$(13)
27920 locate 4,12
27930 print "    :0"
27940 locate 12,12
27950 color rgb(0,0,255)
27960 print ":Ok"
27970 sp_on 4,0: sp_on 5,0:sp_on 6,0
27980 sp_on 7,0:sp_on 8,0:sp_on 9,0
27990 sp_on 10,0:sp_on 11,0:sp_on 12,0
28000 sp_on 13,0:sp_on 14,1
28010 Jyoushi_Input_Born_Month2:
28020 key$="":bg=0:y=0:y2=0:bg2=0
28030 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
28040 key$ = inkey$
28050 bg = strig(1)
28060 y = stick(1)
28070 y2 = stick(0)
28080 bg2 = strig(0)
28090 pause 5
28100 wend
28110 '十字キー　ここから
28120 '上の矢印　または、十字キー上
28130 if ((y = -1) or (key$ = chr$(30))) then
28140 select case No
28150 'No=-1:okのとき:初期の状態
28160 '0kボタンから３に移動
28170 '上に行く 処理
28180 case -1:
28190 No=3:sp_on 12,1:sp_on 14,0
28200 pause 200:goto Jyoushi_Input_Born_Month2:
28210 '選択肢:3
28220 '3ボタンから 6に移動
28230 case 3:
28240 No=6:sp_on 12,0:sp_on 11,1
28250 pause 200:goto Jyoushi_Input_Born_Month2:
28260 '6ボタンから ９に移動
28270 case 6:
28280 No=9:sp_on 10,1:sp_on 11,0
28290 pause 200:goto Jyoushi_Input_Born_Month2:
28300 '6ボタンから ９に移動　ここまで
28310 '9で上を押して何もしない
28320 case 9:
28330 '何もしない
28340 No=9
28350 pause 200:goto Jyoushi_Input_Born_Month2:
28360 '9で上を押しても何もしない　ここまで
28370 '上　 0ボタンから2ボタン
28380 'sp_on 6,1:1
28390 'sp_on 8,1:5
28400 'sp_on 7,1:7
28410 case 0:
28420 No=2:sp_on 13,0:sp_on 9,1:
28430 pause 200:goto Jyoushi_Input_Born_Month2:
28440 '上  0ボタンから2ボタン　ここまで
28450 '2から５になる 上
28460 case 2:
28470 No=5:sp_on 8,1:sp_on 9,0:
28480 pause 200:goto Jyoushi_Input_Born_Month2:
28490 case 5:
28500 No=8:sp_on 7,1:sp_on 8,0
28510 pause 200:goto Jyoushi_Input_Born_Month2:
28520 case 8:
28530 pause 200:goto Input_Born_Month2:
28540 case 1:
28550 No=4:sp_on 5,1:sp_on 6,0
28560 pause 200:goto Jyoushi_Input_Born_Month2:
28570 case 4:
28580 No=7:sp_on 4,1:sp_on 5,0
28590 pause 200:goto Jyoushi_Input_Born_Month2:
28600 case 7:
28610 pause 200:goto Input_Born_Month2:
28620 end select
28630 endif
28640 '左３　ここまで
28650 '下の矢印
28660 '中央 2
28670 if ((y=1) or (key$ = chr$(31))) then
28680 select case No
28690 '9から６に下げる
28700 case 9:
28710 No=6:sp_on 11,1:sp_on 10,0
28720 pause 200:goto Jyoushi_Input_Born_Month2:
28730 '6から３に下げる
28740 case 6:
28750 No=3:sp_on 12,1:sp_on 11,0
28760 pause 200:goto Jyoushi_Input_Born_Month2:
28770 '3から０ｋに変える
28780 case 3:
28790 No=-1:sp_on 14,1:sp_on 12,0
28800 pause 200:goto Jyoushi_Input_Born_Month2:
28810 'Okから下のボタンを押しても何もしない
28820 case -1:
28830 pause 200:goto Jyoushi_Input_Born_Month2:
28840 case 8:
28850 No=5:sp_on 8,1:sp_on 7,0
28860 pause 200:goto Jyoushi_Input_Born_Month2:
28870 case 5:
28880 No=2:sp_on 9,1:sp_on 8,0
28890 pause 200:goto Jyoushi_Input_Born_Month2:
28900 case 2:
28910 No=0:sp_on 13,1:sp_on 9,0
28920 pause 200:goto Jyoushi_Input_Born_Month2:
28930 case 0:
28940 pause 200:goto Jyoushi_Input_Born_Month2:
28950 case 7:
28960 No=4:sp_on 5,1:sp_on 4,0
28970 pause 200:goto Jyoushi_Input_Born_Month2:
28980 case 4:
28990 No=1:sp_on 6,1:sp_on 5,0
29000 pause 200:goto Jyoushi_Input_Born_Month2:
29010 case 1:
29020 pause 200:goto Jyoushi_Input_Born_Month2:
29030 end select
29040 endif
29050 '左へボタン 十字キー　左　or 　カーソル左
29060 if ((y2 = -1) or (key$ = chr$(29))) then
29070 select case No
29080 'Ok ボタン  Okから　左　０に行く
29090 case -1:
29100 No=0:sp_on 13,1:sp_on 14,0
29110 pause 200:goto Jyoushi_Input_Born_Month2:
29120 '0 ボタン  左　何もしない
29130 case 0:
29140 pause 200:goto Jyoushi_Input_Born_Month2:
29150 case 3:
29160 No=2:sp_on 9,1:sp_on 12,0:
29170 pause 200:goto Jyoushi_Input_Born_Month2:
29180 case 2:
29190 No=1:sp_on 6,1:sp_on 9,0:
29200 pause 200:goto Jyoushi_Input_Born_Month2:
29210 case 1:
29220 pause 200:goto Jyoushi_Input_Born_Month2:
29230 case 6:
29240 No=5:sp_on 8,1:sp_on 11,0
29250 pause 200:goto Jyoushi_Input_Born_Month2:
29260 case 5:
29270 No=4:sp_on 5,1:sp_on 8,0
29280 pause 200:goto Jyoushi_Input_Born_Month2:
29290 case 4:
29300 pause 200:goto Jyoushi_Input_Born_Month2:
29310 case 9:
29320 No=8:sp_on 7,1:sp_on 10,0
29330 pause 200:goto Input_Born_Month2:
29340 case 8:
29350 No=7:sp_on 4,1:sp_on 7,0
29360 pause 200:goto Jyoushi_Input_Born_Month2:
29370 case 7:
29380 pause 200:goto Jyoushi_Input_Born_Month2:
29390 end select
29400 endif
29410 '右  十字キー　右　or カーソル　右
29420 if ((y2 = 1) or (key$ = chr$(28))) then
29430 select case No
29440 '0ボタンからokボタン右に移動
29450 case 0:
29460 No=-1:sp_on 14,1:sp_on 13,0
29470 pause 200:goto Jyoushi_Input_Born_Month2:
29480 '0ボタンからokボタン 右に移動　ここまで
29490 'OKボタンで右を押して何もしない
29500 case -1:
29510 pause 200:goto Jyoushi_Input_Born_Month2:
29520 case 1:
29530 No=2:sp_on 9,1:sp_on 6,0
29540 pause 200:goto Jyoushi_Input_Born_Month2:
29550 case 2:
29560 No=3:sp_on 12,1:sp_on 9,0
29570 pause 200:goto Jyoushi_Input_Born_Month2:
29580 case 3:
29590 pause 200:goto Jyoushi_Input_Born_Month2:
29600 case 4:
29610 No=5:sp_on 8,1:sp_on 5,0
29620 pause 200:goto Jyoushi_Input_Born_Month2:
29630 case 5:
29640 No=6:sp_on 11,1:sp_on 8,0
29650 pause 200:goto Jyoushi_Input_Born_Month2:
29660 case 7:
29670 No=8:sp_on 7,1:sp_on 4,0
29680 pause 200:goto Jyoushi_Input_Born_Month2:
29690 case 8:
29700 No=9:sp_on 10,1:sp_on 7,0
29710 pause 200:goto Jyoushi_Input_Born_Month2:
29720 case 9:
29730 pause 200:goto Jyoushi_Input_Born_Month2:
29740 case 6:
29750 pause 200:goto Jyoushi_Input_Born_Month2:
29760 end select
29770 'Okから右ボタンを押して何もしない ここまで
29780 endif
29790 '十字キー　ここまで
29800 '右の丸ボタン + Enter key 決定キー
29810 if ((bg=2) or (key$=chr$(13))) then
29820 select case count
29830 case 0:
29840 if (No=-1) then No=0
29850 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
29860 if (buf_month > 1 and buf_month < 10)  then
29870 buf_Month$ = str$(buf_month)
29880 'buf_month=No
29890 endif
29900 if (buf_month = 1)  then
29910 buf_Month$ = str$(buf_month) + "*"
29920 'c=buf_month
29930 endif
29940 locate 1,3
29950 print "                                     "
29960 color RGB(255,255,255)
29970 locate 1,3
29980 print "上司の生まれた月(1月~12月):" + buf_Month$
29990 goto Jyoushi_Input_Born_Month2:
30000 case 1:
30010 count = 2:
30020 'c = val(buf_Month$)
30030 if (No = -1) then
30040 'count=0
30050 No=0
30060 month=buf_month
30070 buf_month=val(buf_Month$)
30080 month=buf_month
30090 buf_Jyoushi_Born_Day(1)=month
30100 '生まれた日に飛ぶ
30110 goto Jyoushi_Input_Born_Day:
30120 else
30130 buf_month = c*10 + No
30140 'if (buf_month = 1) then
30150 'buf_Month$ = str$(buf_month)
30160 'endif
30170 buf_Month$ = str$(buf_month)
30180 buf_Jyoushi_Born_Day(1) = buf_month
30190 locate 0,3
30200 print "                                           "
30210 locate 1,3
30220 color Rgb(255,255,255)
30230 print "上司の生まれた月(1月~12月):" + buf_Month$
30240 goto Jyoushi_Input_Born_Month2:
30250 endif
30260 case 2:
30270 '==================================
30280 '何もしない
30290 'coun = 2
30300 '==================================
30310 'c= val(buf_Month$)
30320 'buf_month = c*10 + No
30330 'buf_Month$ = str$(buf_month)
30340 'locate 2,3
30350 'print "上司の生まれた月(1月～12月):";buf_Month$
30360 'goto Jyoushi_Input_Born_Month2:
30370 'case 3:
30380 'count=4
30390 'b=val(buf_month$)
30400 'buf_month=c*10+No
30410 'buf_Month$=str$(buf_month)
30420 'locate 2,3
30430 'print "上司の生まれた月(1月～12月):";buf_Month$
30440 'buf_month=val(buf_Month$)
30450 'year=val(buf_year$)
30460 if (No=-1) then
30470 No=0
30480 goto Jyoushi_Input_Born_Day:
30490 else
30500 goto Jyoushi_Input_Born_Month2:
30510 endif
30520 'case 4:
30530 'bufyear=buf_year
30540 'if (No=-1) then
30550 'buf_month = val(buf_Month$)
30560 'month = buf_month
30570 'sp_on 14,0
30580 'goto Input_Born_Day:
30590 'else
30600 'goto Input_Born_Month2:
30610 'endif
30620 end select
30630 endif
30640 '左の丸ボタン　キャンセル
30650 if (bg2=2) then
30660 select case count2
30670 case 0:
30680 if (No = -1) then
30690 buf_month=0:buf_Month$="**"
30700 count=0
30710 'goto rewrite2:
30720 else
30730 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
30740 buf_month = 0:buf_Month$ = "**"
30750 locate 0,3
30760 color rgb(255,255,255)
30770 print "                                       "
30780 goto rewrite2:
30790 if (No>12) then
30800 ui_msg"値が範囲外です。"
30810 goto rewrite2:
30820 endif
30830 endif
30840 endif
30850 rewrite2:
30860 locate 2,3
30870 color rgb(255,255,255)
30880 print "                                      "
30890 locate 2,3
30900 print "上司の生まれた月(1月~12月):"+buf_Month$
30910 goto Jyoushi_Input_Born_Month2:
30920 end select
30930 'endif
30940 endif
30950 end
30960 'end
30970 '生れた日を入力
30980 Jyoushi_Input_Born_Day:
30990 '生まれた日入力
31000 cls 3:play ""
31010 'No=-1:Okのとき
31020 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
31030 for i=0 to 1
31040 buf_day(i)=0
31050 next i
31060 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
31070 gload Gazo$ + "Screen1.png",0,0,0
31080 gload Gazo$ + "downscreen.png",0,0,800
31090 'Init"kb:2"
31100 '音声ファイル再生 2023.06.07
31110 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
31120 font 48
31130 locate 1,1
31140 '文字色：黒　 color rgb(0,0,0)
31150 color rgb(255,255,255)
31160 print "上司の生まれた日を入れて下さい" + chr$(13)
31170 locate 1,3
31180 color rgb(255,255,255)
31190 print "                                      "
31200 locate 1,3
31210 print "上司の生まれた日(1日~31日):"+buf_Day$
31220 color rgb(255,255,255)
31230 'locate 4,6:print ":7"
31240 'locate 9,6:print ":8"
31250 'locate 12,6:print ":9"
31260 locate 4,6
31270 print ":7  :8  :9" + chr$(13)
31280 color rgb(255,255,255)
31290 locate 4,8
31300 print ":4  :5  :6" + chr$(13)
31310 color rgb(255,255,255)
31320 locate 4,10
31330 print ":1  :2  :3" + chr$(13)
31340 locate 4,12
31350 print "    :0"
31360 locate 12,12
31370 color rgb(0,0,255)
31380 print ":Ok"
31390 sp_on 4,0: sp_on 5,0:sp_on 6,0
31400 sp_on 7,0:sp_on 8,0:sp_on 9,0
31410 sp_on 10,0:sp_on 11,0:sp_on 12,0
31420 sp_on 13,0:sp_on 14,1
31430 Jyoushi_Input_Born_Day2:
31440 key$="":bg=0:y=0:y2=0:bg2=0:
31450 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31460 key$ = inkey$
31470 bg = strig(1)
31480 y = stick(1)
31490 y2 = stick(0)
31500 bg2 = strig(0)
31510 pause 5
31520 wend
31530 '十字キー　ここから
31540 '上の矢印　または、十字キー上
31550 if ((y = -1) or (key$ = chr$(30))) then
31560 select case No
31570 'No=-1:okのとき:初期の状態
31580 '0kボタンから３に移動
31590 '上に行く 処理
31600 case -1:
31610 No=3:sp_on 12,1:sp_on 14,0
31620 pause 200:goto Jyoushi_Input_Born_Day2:
31630 '選択肢:3
31640 '3ボタンから 6に移動
31650 case 3:
31660 No=6:sp_on 12,0:sp_on 11,1
31670 pause 200:goto Jyoushi_Input_Born_Day2:
31680 '6ボタンから ９に移動
31690 case 6:
31700 No=9:sp_on 10,1:sp_on 11,0
31710 pause 200:goto Jyoushi_Input_Born_Day2:
31720 '6ボタンから ９に移動　ここまで
31730 '9で上を押して何もしない
31740 case 9:
31750 '何もしない
31760 No=9
31770 pause 200:goto Jyoushi_Input_Born_Day2:
31780 '9で上を押しても何もしない　ここまで
31790 '上　 0ボタンから2ボタン
31800 'sp_on 6,1:1
31810 'sp_on 8,1:5
31820 'sp_on 7,1:7
31830 case 0:
31840 No=2:sp_on 13,0:sp_on 9,1:
31850 pause 200:goto Jyoushi_Input_Born_Day2:
31860 '上  0ボタンから2ボタン　ここまで
31870 '2から５になる 上
31880 case 2:
31890 No=5:sp_on 8,1:sp_on 9,0:
31900 pause 200:goto Jyoushi_Input_Born_Day2:
31910 case 5:
31920 No=8:sp_on 7,1:sp_on 8,0
31930 pause 200:goto Jyoushi_Input_Born_Day2:
31940 case 8:
31950 pause 200:goto Jyoushi_Input_Born_Day2:
31960 case 1:
31970 No=4:sp_on 5,1:sp_on 6,0
31980 pause 200:goto Jyoushi_Input_Born_Day2:
31990 case 4:
32000 No=7:sp_on 4,1:sp_on 5,0
32010 pause 200:goto Jyoushi_Input_Born_Day2:
32020 case 7:
32030 pause 200:goto Jyoushi_Input_Born_Day2:
32040 end select
32050 endif
32060 '左３　ここまで
32070 '下の矢印
32080 '中央 2
32090 if ((y=1) or (key$ = chr$(31))) then
32100 select case No
32110 '9から６に下げる
32120 case 9:
32130 No=6:sp_on 11,1:sp_on 10,0
32140 pause 200:goto Jyoushi_Input_Born_Day2:
32150 '6から３に下げる
32160 case 6:
32170 No=3:sp_on 12,1:sp_on 11,0
32180 pause 200:goto Jyoushi_Input_Born_Day2:
32190 '3から０ｋに変える
32200 case 3:
32210 No=-1:sp_on 14,1:sp_on 12,0
32220 pause 200:goto Jyoushi_Input_Born_Day2:
32230 'Okから下のボタンを押しても何もしない
32240 case -1:
32250 pause 200:goto Jyoushi_Input_Born_Day2:
32260 case 8:
32270 No=5:sp_on 8,1:sp_on 7,0
32280 pause 200:goto Jyoushi_Input_Born_Day2:
32290 case 5:
32300 No=2:sp_on 9,1:sp_on 8,0
32310 pause 200:goto Jyoushi_Input_Born_Day2:
32320 case 2:
32330 No=0:sp_on 13,1:sp_on 9,0
32340 pause 200:goto Jyoushi_Input_Born_Day2:
32350 case 0:
32360 pause 200:goto Jyoushi_Input_Born_Day2:
32370 case 7:
32380 No=4:sp_on 5,1:sp_on 4,0
32390 pause 200:goto Jyoushi_Input_Born_Day2:
32400 case 4:
32410 No=1:sp_on 6,1:sp_on 5,0
32420 pause 200:goto Jyoushi_Input_Born_Day2:
32430 case 1:
32440 pause 200:goto Jyoushi_Input_Born_Day2:
32450 end select
32460 endif
32470 '左へボタン 十字キー　左　or 　カーソル左
32480 if ((y2 = -1) or (key$ = chr$(29))) then
32490 select case No
32500 'Ok ボタン  Okから　左　０に行く
32510 case -1:
32520 No=0:sp_on 13,1:sp_on 14,0
32530 pause 200:goto Jyoushi_Input_Born_Day2:
32540 '0 ボタン  左　何もしない
32550 case 0:
32560 pause 200:goto Jyoushi_Input_Born_Day2:
32570 case 3:
32580 No=2:sp_on 9,1:sp_on 12,0:
32590 pause 200:goto Jyoushi_Input_Born_Day2:
32600 case 2:
32610 No=1:sp_on 6,1:sp_on 9,0:
32620 pause 200:goto Jyoushi_Input_Born_Day2:
32630 case 1:
32640 pause 200:goto Jyoushi_Input_Born_Day2:
32650 case 6:
32660 No=5:sp_on 8,1:sp_on 11,0
32670 pause 200:goto Jyoushi_Input_Born_Day2:
32680 case 5:
32690 No=4:sp_on 5,1:sp_on 8,0
32700 pause 200:goto Jyoushi_Input_Born_Day2:
32710 case 4:
32720 pause 200:goto Jyoushi_Input_Born_Day2:
32730 case 9:
32740 No=8:sp_on 7,1:sp_on 10,0
32750 pause 200:goto Jyoushi_Input_Born_Day2:
32760 case 8:
32770 No=7:sp_on 4,1:sp_on 7,0
32780 pause 200:goto Jyoushi_Input_Born_Day2:
32790 case 7:
32800 pause 200:goto Jyoushi_Input_Born_Day2:
32810 end select
32820 endif
32830 '右  十字キー　右　or カーソル　右
32840 if ((y2 = 1) or (key$ = chr$(28))) then
32850 select case No
32860 '0ボタンからokボタン右に移動
32870 case 0:
32880 No=-1:sp_on 14,1:sp_on 13,0
32890 pause 200:goto Jyoushi_Input_Born_Day2:
32900 '0ボタンからokボタン 右に移動　ここまで
32910 'OKボタンで右を押して何もしない
32920 case -1:
32930 pause 200:goto Jyoushi_Input_Born_Day2:
32940 case 1:
32950 No=2:sp_on 9,1:sp_on 6,0
32960 pause 200:goto Jyoushi_Input_Born_Day2:
32970 case 2:
32980 No=3:sp_on 12,1:sp_on 9,0
32990 pause 200:goto Jyoushi_Input_Born_Day2:
33000 case 3:
33010 pause 200:goto Jyoushi_Input_Born_Day2:
33020 case 4:
33030 No=5:sp_on 8,1:sp_on 5,0
33040 pause 200:goto Jyoushi_Input_Born_Day2:
33050 case 5:
33060 No=6:sp_on 11,1:sp_on 8,0
33070 pause 200:goto Jyoushi_Input_Born_Day2:
33080 case 7:
33090 No=8:sp_on 7,1:sp_on 4,0
33100 pause 200:goto Jyoushi_Input_Born_Day2:
33110 case 8:
33120 No=9:sp_on 10,1:sp_on 7,0
33130 pause 200:goto Jyoushi_Input_Born_Day2:
33140 case 9:
33150 pause 200:goto Jyoushi_Input_Born_Day2:
33160 case 6:
33170 pause 200:goto Jyoushi_Input_Born_Day2:
33180 end select
33190 'Okから右ボタンを押して何もしない ここまで
33200 endif
33210 '十字キー　ここまで
33220 '右の丸ボタンを押したとき
33230 if ((bg = 2) or (key$ = chr$(13))) then
33240 'count :決定ボタンを押した回数
33250 select case (count)
33260 '1桁目入力
33270 case 0:
33280 count = 1:
33290 if (No = -1) then
33300 '1桁目　OKでは何もしない
33310 No=c
33320 'goto Jyoushi_Input_Born_Day2:
33330 else
33340 'ok以外のボタンを押したとき
33350 buf_day = No:buf_Day$ = str$(No)
33360 buf_Jyoushi_Born_Day(2)=buf_day
33370 c=No
33380 locate 1,3
33390 print "                                      "
33400 color RGB(255,255,255)
33410 locate 1,3
33420 print "上司の生まれた日(1日~31日):" + buf_Day$
33430 endif
33440 'check2:
33450 'if (buf_day >= 1 and buf_day <= 9) then
33460 'sp_on 14,0
33470 'goto complate_jyoushi:
33480 'else
33490 'sp_on 14,0
33500 goto Jyoushi_Input_Born_Day2:
33510 'end
33520 'endif
33530 case 1:
33540 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
33550 count = 2:
33560 'locate 2,3
33570 'color RGB(255,255,255)
33580 'print "生まれた日(1日~31日):";buf_Day$
33590 'Okボタンを押したときの処理
33600 '入力値　10未満のとき
33610 'buf_day = c * 10 + No
33620 if (No = -1) then
33630 c=buf_day:No=0
33640 'buf_day = c
33650 buf_Day$ = str$(buf_day)
33660 '10以下のとき
33670 'if (buf_day < 10) then
33680 sp_on 14,0
33690 goto complate_jyoushi:
33700 'end
33710 'endif
33720 else
33730 'c=No
33740 buf_day = c * 10 + No
33750 buf_Day$ = str$(buf_day)
33760 'buf_day = c:buf_Day$=str$(buf_day)
33770 buf_Jyoushi_Born_Day(2)=buf_day
33780 locate 1,3
33790 print "                                           "
33800 locate 1,3
33810 color Rgb(255,255,255)
33820 print "上司の生まれた日(1日~31日):" + buf_Day$
33830 goto Jyoushi_Input_Born_Day2:
33840 'goto
33850 endif
33860 'endif
33870 '生まれた日　2桁目の数字　or 1桁の数字 + ok
33880 case 2:
33890 'buf_day = c * 10 + No
33900 'buf_Jyoushi_Born_Day(2)=buf_day
33910 'locate 1,3
33920 'print "                                      "
33930 'locate 1,3
33940 'locate 2,3
33950 'print "生まれた日(1日〜31日):";buf_Day
33960 'No=-1:ok ボタンを押したとき
33970 if (No = -1) then
33980 'if ((buf_day > 0) and (buf_day < 32)) then
33990 No=0
34000 sp_on 14,0
34010 goto complate_jyoushi:
34020 'end
34030 else
34040 goto Jyoushi_Input_Born_Day2:
34050 'endif
34060 'Okボタン以外を押したとき
34070 'else
34080 'c=val(buf_Day$)
34090 'buf_day = c * 10 + No
34100 'buf_Jyoushi_Born_Day(2) = buf_day
34110 'buf_Day$ = str$(buf_day)
34120 'locate 1,3
34130 'print "上司の生まれた日(1日~31日):";buf_Day$
34140 'goto Jyoushi_Input_Born_Day2:
34150 endif
34160 'case 3:
34170 'count=4
34180 'c=val(buf_day$)
34190 'buf_day=c*10+No
34200 'buf_day$=str$(buf_day)
34210 'locate 2,3
34220 'print "生まれた日を入れてください:";buf_day$
34230 'year=val(buf_year$)
34240 'if (No = -1) then
34250 'goto Jyoushi_Input_Born_Day:
34260 'sp_on 14,0:
34270 'goto complate_jyoushi:
34280 'else
34290 'goto Jyoushi_Input_Born_Month2:
34300 'endif
34310 'case 4:
34320 'bufyear=buf_year
34330 'if (No=-1) then
34340 'buf_day = val(buf_day$)
34350 'bufday = buf_day
34360 'sp_on 14,0
34370 'goto Jyoushi_Input_Born_Day2:
34380 'else
34390 'goto Jyoushi_Input_Born_Day2:
34400 'endif
34410 end select
34420 endif
34430 if (bg2=2) then
34440 select case count2
34450 case 0:
34460 if (No=-1) then
34470 buf_day=0:buf_Day$="**":No=0
34480 if (buf_day >= 1 and buf_day <= 31) then
34490 count=0
34500 buf_day=0:buf_Day$ = "**"
34510 goto rewrite_day3:
34520 else
34530 buf_day=0:buf_Day$ = "**"
34540 ui_msg"値が範囲外です"
34550 endif
34560 goto rewrite_day3:
34570 else
34580 goto rewrite_day3:
34590 endif
34600 rewrite_day3:
34610 locate 2,3
34620 color rgb(255,255,255)
34630 print "                                      "
34640 locate 2,3
34650 print "生まれた日(1日~31日):" + buf_Day$
34660 goto Jyoushi_Input_Born_Day2:
34670 end select
34680 endif
34690 '--------------------------------------------'
34700 'locate 2,0:color rgb(255,0,0)
34710 'print "上司の生まれた年代を入力"
34720 'color rgb(255,255,255)
34730 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
34740 'locate 2,4:Input "上司の生まれた年:",born_year
34750 '誕生日データーを配列に代入
34760 'buf_Jyoushi_Born_Year:上司の生まれた年代
34770 'buf_Jyoushi_Born_Day(0) = born_year
34780 'born_year = 0
34790 '---------------------------------------------'
34800 'goto Jyoushi_born_month:
34810 '1-2.生まれた月を入力
34820 'Jyoushi_born_month:
34830 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
34840 'init "kb:4"
34850 'locate 2,1:
34860 'color rgb(255,0,0)
34870 'print "上司の生まれた月入力"
34880 'color rgb(255,255,255)
34890 'locate 2,4:print "生まれた月を入力してください"
34900 'locate 2,5
34910 'Input "上司の生まれ月:",born_month
34920 'buf_Jyoushi_Born_Day(1) = born_month
34930 'born_month = 0
34940 'goto Jyoushi_born_day:
34950 'buf_Jyoushi_Born_day
34960 '1-3.生まれた日を入力
34970 'Jyoushi_born_day:
34980 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
34990 'init "kb:4"
35000 'locate 2,1:color rgb(255,0,0)
35010 'print "上司の生まれた日　入力"
35020 'locate 2,4:color rgb(255,255,255)
35030 'print "生まれた日を入力してください"
35040 'locate 2,5
35050 'Input "上司の生まれた日:",born_day
35060 'buf_Jyoushi_Born_Day(2) = born_day
35070 'born_day = 0
35080 'goto buka_born_year:
35090 '2.部下の誕生日入力
35100 '2-1.生まれた年を入力
35110 'buka_born_year:
35120 'cls 3:gload Gazo$+"Screen1.png",0,0,0
35130 'init "kb:2"
35140 'locate 1,1:color rgb(255,0,0)
35150 'print "部下の生まれた年代入力"
35160 'locate 0,4:color rgb(255,255,255)
35170 'print "部下の生まれた年（西暦4桁）を入れてください"
35180 'locate 0,5
35190 'Input "部下の生まれた年(西暦4桁):",born_year
35200 'buf_Buka_Born_Day(0) = born_year
35210 'born_year = 0
35220 '2-2.生まれた月を入力
35230 'buka_born_month:
35240 'cls 3:gload Gazo$+"Screen1.png",0,0,0
35250 'init "kb:2"
35260 'locate 2,1:color rgb(255,0,0)
35270 'print "部下の生まれた月 入力"
35280 'locate 2,4:color rgb(255,255,255)
35290 'print "部下の生まれた月を入力してください"
35300 'locate 2,5:Input "部下の生まれた月:",born_month
35310 'buf_Buka_Born_Day(1) = born_month
35320 '2-3.生まれた日を入力
35330 'buka_born_day:
35340 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
35350 'init "kb:2"
35360 'locate 2,1:color rgb(255,0,0)
35370 'print "生まれた日入力"
35380 'color rgb(255,255,255)
35390 'locate 2,4:print "生まれた日を入力してください"
35400 'locate 2,5:Input "部下の生まれた日:",born_day
35410 'buf_Buka_Born_Day(2) = born_day
35420 'born_day=0:goto Result_Business_Aisyou:
35430 '--------------------------------------------'
35440 complate_jyoushi:
35450 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
35460 buf_Jyoushi = Kabara_Num(a,b,c)
35470 a_1=buf_Jyoushi
35480 goto Buka_Input_Seireki:
35490 '--------------------------------------------'
35500 '部下'
35510 '1.部下の生まれた年代'
35520 Buka_Input_Seireki:
35530 cls 3:play "":count=0:count2=0
35540 init"kb:4"
35550 'No=-1:Okのとき
35560 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
35570 for i=0 to 3
35580 buf_Buka_Born_Day(i)=0
35590 next i
35600 gload Gazo$ + "Screen1.png",0,0,0
35610 gload Gazo$ + "downscreen.png",0,0,800
35620 'Init"kb:2"
35630 '音声ファイル再生 2023.06.07
35640 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
35650 font 48
35660 locate 0,1
35670 '文字色：黒　 color rgb(0,0,0)
35680 color rgb(255,255,255)
35690 print "部下の生まれた年代を入れて下さい" + chr$(13)
35700 color rgb(255,255,255)
35710 locate 1,3
35720 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
35730 color rgb(255,255,255)
35740 'locate 4,6:print ":7"
35750 'locate 9,6:print ":8"
35760 'locate 12,6:print ":9"
35770 locate 4,6
35780 print ":7  :8  :9" + chr$(13)
35790 color rgb(255,255,255)
35800 locate 4,8
35810 print ":4  :5  :6" + chr$(13)
35820 color rgb(255,255,255)
35830 locate 4,10
35840 print ":1  :2  :3" + chr$(13)
35850 locate 4,12
35860 print "    :0"
35870 locate 12,12
35880 color rgb(0,0,255)
35890 print ":Ok"
35900 sp_on 4,0: sp_on 5,0:sp_on 6,0
35910 sp_on 7,0:sp_on 8,0:sp_on 9,0
35920 sp_on 10,0:sp_on 11,0:sp_on 12,0
35930 sp_on 13,0:sp_on 14,1
35940 Buka_Input_Seireki2:
35950 key$="":bg=0:y=0:y2=0:bg2=0:
35960 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
35970 key$ = inkey$
35980 bg = strig(1)
35990 y = stick(1)
36000 y2 = stick(0)
36010 bg2=strig(0)
36020 pause 5
36030 wend
36040 '十字キー　ここから
36050 '上の矢印　または、十字キー上
36060 if ((y = -1) or (key$ = chr$(30))) then
36070 select case No
36080 'No=-1:okのとき:初期の状態
36090 '0kボタンから３に移動
36100 '上に行く 処理
36110 case -1:
36120 No=3:sp_on 12,1:sp_on 14,0
36130 pause 200:goto Buka_Input_Seireki2:
36140 '選択肢:3
36150 '3ボタンから 6に移動
36160 case 3:
36170 No=6:sp_on 12,0:sp_on 11,1
36180 pause 200:goto Buka_Input_Seireki2:
36190 '6ボタンから ９に移動
36200 case 6:
36210 No=9:sp_on 10,1:sp_on 11,0
36220 pause 200:goto Buka_Input_Seireki2:
36230 '6ボタンから ９に移動　ここまで
36240 '9で上を押して何もしない
36250 case 9:
36260 '何もしない
36270 No=9
36280 pause 200:goto Buka_Input_Seireki2:
36290 '9で上を押しても何もしない　ここまで
36300 '上　 0ボタンから2ボタン
36310 'sp_on 6,1:1
36320 'sp_on 8,1:5
36330 'sp_on 7,1:7
36340 case 0:
36350 No=2:sp_on 13,0:sp_on 9,1:
36360 pause 200:goto Buka_Input_Seireki2:
36370 '上  0ボタンから2ボタン　ここまで
36380 '2から５になる 上
36390 case 2:
36400 No=5:sp_on 8,1:sp_on 9,0:
36410 pause 200:goto Buka_Input_Seireki2:
36420 case 5:
36430 No=8:sp_on 7,1:sp_on 8,0
36440 pause 200:goto Buka_Input_Seireki2:
36450 case 8:
36460 pause 200:goto Buka_Input_Seireki2:
36470 case 1:
36480 No=4:sp_on 5,1:sp_on 6,0
36490 pause 200:goto Buka_Input_Seireki2:
36500 case 4:
36510 No=7:sp_on 4,1:sp_on 5,0
36520 pause 200:goto Buka_Input_Seireki2:
36530 case 7:
36540 pause 200:goto Buka_Input_Seireki2:
36550 end select
36560 endif
36570 '左３　ここまで
36580 '下の矢印
36590 '中央 2
36600 if ((y=1) or (key$ = chr$(31))) then
36610 select case No
36620 '9から６に下げる
36630 case 9:
36640 No=6:sp_on 11,1:sp_on 10,0
36650 pause 200:goto Buka_Input_Seireki2:
36660 '6から３に下げる
36670 case 6:
36680 No=3:sp_on 12,1:sp_on 11,0
36690 pause 200:goto Buka_Input_Seireki2:
36700 '3から０ｋに変える
36710 case 3:
36720 No=-1:sp_on 14,1:sp_on 12,0
36730 pause 200:goto Buka_Input_Seireki2:
36740 'Okから下のボタンを押しても何もしない
36750 case -1:
36760 pause 200:goto Buka_Input_Seireki2:
36770 case 8:
36780 No=5:sp_on 8,1:sp_on 7,0
36790 pause 200:goto Buka_Input_Seireki2:
36800 case 5:
36810 No=2:sp_on 9,1:sp_on 8,0
36820 pause 200:goto Buka_Input_Seireki2:
36830 case 2:
36840 No=0:sp_on 13,1:sp_on 9,0
36850 pause 200:goto Buka_Input_Seireki2:
36860 case 0:
36870 pause 200:goto Buka_Input_Seireki2:
36880 case 7:
36890 No=4:sp_on 5,1:sp_on 4,0
36900 pause 200:goto Buka_Input_Seireki2:
36910 case 4:
36920 No=1:sp_on 6,1:sp_on 5,0
36930 pause 200:goto Buka_Input_Seireki2:
36940 case 1:
36950 pause 200:goto Buka_Input_Seireki2:
36960 end select
36970 endif
36980 '左へボタン 十字キー　左　or 　カーソル左
36990 if ((y2 = -1) or (key$ = chr$(29))) then
37000 select case No
37010 'Ok ボタン  Okから　左　０に行く
37020 case -1:
37030 No=0:sp_on 13,1:sp_on 14,0
37040 pause 200:goto Buka_Input_Seireki2:
37050 '0 ボタン  左　何もしない
37060 case 0:
37070 pause 200:goto Buka_Input_Seireki2:
37080 case 3:
37090 No=2:sp_on 9,1:sp_on 12,0:
37100 pause 200:goto Buka_Input_Seireki2:
37110 case 2:
37120 No=1:sp_on 6,1:sp_on 9,0:
37130 pause 200:goto Buka_Input_Seireki2:
37140 case 1:
37150 pause 200:goto Buka_Input_Seireki2:
37160 case 6:
37170 No=5:sp_on 8,1:sp_on 11,0
37180 pause 200:goto Buka_Input_Seireki2:
37190 case 5:
37200 No=4:sp_on 5,1:sp_on 8,0
37210 pause 200:goto Buka_Input_Seireki2:
37220 case 4:
37230 pause 200:goto Buka_Input_Seireki2:
37240 case 9:
37250 No=8:sp_on 7,1:sp_on 10,0
37260 pause 200:goto Buka_Input_Seireki2:
37270 case 8:
37280 No=7:sp_on 4,1:sp_on 7,0
37290 pause 200:goto Buka_Input_Seireki2:
37300 case 7:
37310 pause 200:goto Buka_Input_Seireki2:
37320 end select
37330 endif
37340 '右  十字キー　右　or カーソル　右
37350 if ((y2 = 1) or (key$ = chr$(28))) then
37360 select case No
37370 '0ボタンからokボタン右に移動
37380 case 0:
37390 No=-1:sp_on 14,1:sp_on 13,0
37400 pause 200:goto Buka_Input_Seireki2:
37410 '0ボタンからokボタン 右に移動　ここまで
37420 'OKボタンで右を押して何もしない
37430 case -1:
37440 pause 200:goto Buka_Input_Seireki2:
37450 case 1:
37460 No=2:sp_on 9,1:sp_on 6,0
37470 pause 200:goto Buka_Input_Seireki2:
37480 case 2:
37490 No=3:sp_on 12,1:sp_on 9,0
37500 pause 200:goto Buka_Input_Seireki2:
37510 case 3:
37520 pause 200:goto Buka_Input_Seireki2:
37530 case 4:
37540 No=5:sp_on 8,1:sp_on 5,0
37550 pause 200:goto Buka_Input_Seireki2:
37560 case 5:
37570 No=6:sp_on 11,1:sp_on 8,0
37580 pause 200:goto Buka_Input_Seireki2:
37590 case 7:
37600 No=8:sp_on 7,1:sp_on 4,0
37610 pause 200:goto Buka_Input_Seireki2:
37620 case 8:
37630 No=9:sp_on 10,1:sp_on 7,0
37640 pause 200:goto Buka_Input_Seireki2:
37650 case 9:
37660 pause 200:goto Buka_Input_Seireki2:
37670 case 6:
37680 pause 200:goto Buka_Input_Seireki2:
37690 end select
37700 'Okから右ボタンを押して何もしない ここまで
37710 endif
37720 '十字キー　ここまで
37730 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
37740 'ここからコメント
37750 '右の丸ボタン決定を押した数:count
37760 'if ((bg=2) or (key$=chr$(13))) then
37770 'select case count
37780 'case 0:
37790 'count=1
37800 'if (No = -1) then
37810 'count = 0
37820 'Okボタンを押したとき
37830 '
37840 'goto Buka_Input_Seireki2:
37850 'else
37860 'Okボタン以外が押されたとき
37870 'if (No >= 1 and No <= 2) then
37880 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
37890 'buf_buka_year = No
37900 'buf_Buka_Born_Day(0) = bufyear
37910 'locate 2,3
37920 'color rgb(255,255,255)
37930 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
37940 'goto Buka_Input_Seireki2:
37950 'else
37960 'count=0
37970 'ui_msg"数字が範囲外になります。"
37980 'buf_buka_year$ ="":buf_buka_year=0
37990 'goto Buka_Input_Seireki2:
38000 'endif
38010 'endif
38020 'case 1:
38030 'count = 2
38040 'if (No = -1) then
38050 'count = 1
38060 'goto Buka_Input_Seireki2:
38070 'else
38080 'b = val(buf_buka_year$)
38090 'buf_buka_year = b * 10 + No
38100 'buf_buka_year$ = str$(buf_buka_year)
38110 'buf_Buka_Born_Day(0) = bufyear
38120 'locate 1,3
38130 'color rgb(255,255,255)
38140 'print "                                                                "
38150 'locate 1,3
38160 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
38170 'if (No = -1) then
38180 'count=1
38190 'goto Buka_Input_Seireki2:
38200 'endif
38210 'case 2:
38220 'count = 3
38230 'if (No = -1) then
38240 'count = 2
38250 'buf_Buka_Born_Day(0)=bufyear
38260 'goto Buka_Input_Seireki2:
38270 'else
38280 'b = val(buf_buka_year$)
38290 'buf_buka_year = b*10 + No
38300 'buf_buka_year$ = str$(buf_buka_year)
38310 'locate 1,3
38320 'color rgb(255,255,255)
38330 'print "                                        "
38340 'locate 1,3
38350 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38360 'goto Buka_Input_Seireki2:
38370 'endif
38380 'case 3:
38390 'count=4
38400 'if (No = -1) then
38410 'count=3
38420 'goto Buka_Input_Seireki2:
38430 'else
38440 'b = buf_buka_year
38450 'buf_buka_year = b * 10 + No
38460 'buf_buka_year$=str$(buf_buka_year)
38470 'locate 1,3
38480 'color RGB(255,255,255)
38490 'print "                                      "
38500 'locate 1,3
38510 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
38520 'buf_year=val(buf_year$)
38530 'year=val(buf_year$)
38540 'if (No=-1) then
38550 'goto Input_Born_Month:
38560 'else
38570 'goto Buka_Input_Seireki2:
38580 'endif
38590 'case 4:
38600 'bufyear=buf_year
38610 'if (No=-1) then
38620 'buf_year = val(buf_year$)
38630 'bufyear = buf_year
38640 'sp_on 14,0
38650 'goto Buka_Input_Born_Month:
38660 'else
38670 'goto Buka_Input_Seireki2:
38680 'endif
38690 'end select
38700 'endif
38710 'if (bg2 = 2) then
38720 'select case count2
38730 'case 0:
38740 'if (No = -1) then
38750 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
38760 'count=0
38770 'locate 1,3
38780 'color rgb(255,255,255)
38790 'print "                                      "
38800 'locate 1,3
38810 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
38820 'goto Buka_Input_Seireki2:
38830 'else
38840 '(buf_year=0) then
38850 'buf_buka_year=0:buf_buka_year$="****"
38860 'goto Buka_Input_Seireki2:
38870 'endif
38880 'endif
38890 'end select
38900 'endif
38910 'end
38920 'ここまでコメント
38930 '================================================================
38940 if ((bg=2) or (key$=chr$(13))) then
38950 select case count
38960 case 0:
38970 count = 1
38980 if (No=-1) then
38990 count = 0
39000 buf_Buka_Born_Day(0) = No
39010 'Okボタンを押したとき
39020 goto Buka_Input_Seireki2:
39030 else
39040 'Okボタン以外が押されたとき
39050 if (No>=1 and No<=2) then
39060 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
39070 buf_buka_year = No
39080 buf_Buka_Born_Day(0) = No
39090 locate 1,3
39100 color rgb(255,255,255)
39110 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
39120 goto Buka_Input_Seireki2:
39130 else
39140 count=0
39150 ui_msg"数字が範囲外になります。"
39160 buf_buka_year$="":buf_buka_year=0
39170 goto Buka_Input_Seireki2:
39180 endif
39190 endif
39200 case 1:
39210 count = 2
39220 if (No = -1) then
39230 count = 1
39240 goto Buka_Input_Seireki2:
39250 else
39260 'b = val(buf_buka_year$)
39270 buf_buka_year = a * 10 + No
39280 b=buf_buka_year
39290 buf_buka_year$ = str$(buf_buka_year)+"**"
39300 buf_Buka_Born_Day(0)=buf_buka_year
39310 locate 1,3
39320 color rgb(255,255,255)
39330 print "                                                                "
39340 locate 1,3
39350 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
39360 'if (No = -1) then
39370 'count=1
39380 goto Buka_Input_Seireki2:
39390 endif
39400 case 2:
39410 count=3
39420 if (No=-1) then
39430 count =2:No=0
39440 goto Buka_Input_Seireki2:
39450 else
39460 'b = val(buf_buka_year$)
39470 buf_buka_year = b * 10 + No
39480 c = buf_buka_year
39490 buf_buka_year$ = str$(buf_buka_year) + "*"
39500 buf_Buka_Born_Day(0) = buf_buka_year
39510 locate 1,3
39520 color rgb(255,255,255)
39530 print "                                        "
39540 locate 1,3
39550 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
39560 goto Buka_Input_Seireki2:
39570 endif
39580 case 3:
39590 count=4
39600 if (No = -1) then
39610 'count=3:No=0
39620 goto Buka_Input_Seireki2:
39630 else
39640 'b = val(buf_buka_year$)
39650 buf_buka_year=c * 10 + No
39660 buf_buka_year$=str$(buf_buka_year)
39670 buf_Buka_Born_Day(0)=buf_buka_year
39680 locate 1,3
39690 color RGB(255,255,255)
39700 print "                                      "
39710 locate 1,3
39720 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
39730 buf_buka_year=val(buf_buka_year$)
39740 'year=val(buf_year$)
39750 'if (No=-1) then
39760 'goto Input_Born_Month:
39770 'else
39780 goto Buka_Input_Seireki2:
39790 endif
39800 case 4:
39810 'bufyear=buf_year
39820 if (No = -1) then
39830 buf_buka_year = val(buf_buka_year$)
39840 buf_Buka_Born_Day(0)=buf_buka_year
39850 sp_on 14,0
39860 goto Buka_Input_Born_Month:
39870 else
39880 goto Buka_Input_Seireki2:
39890 endif
39900 end select
39910 endif
39920 '================================================================
39930 'ここにコピーする。
39940 '================================================================
39950 'Input"部下の生れた年代(4桁,〜2025年):",year
39960 'if year > 2025 then goto Jyoushi_Input_Seireki:
39970 'if year = 123 then cls 3:cls 4:goto Main_Screen:
39980 '"4桁目"
39990 'bufyear4 = fix(year / 1000)
40000 '"3桁目"
40010 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
40020 '"2桁目"
40030 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
40040 '"1桁目"
40050 'bufyear1 = fix((year - ((bufyear4*
40060 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
40070 '1.部下の生まれた年代'
40080 '2.部下の生まれた月'
40090 Buka_Input_Born_Month:
40100 cls 3:play "":count=0:count2=0
40110 'No=-1:Okのとき
40120 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
40130 for i=0 to 1
40140 buf_month(i)=0
40150 next i
40160 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
40170 gload Gazo$ + "Screen1.png",0,0,0
40180 gload Gazo$ + "downscreen.png",0,0,800
40190 'Init"kb:4"
40200 '音声ファイル再生 2023.06.07
40210 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
40220 font 48
40230 locate 0,1
40240 '文字色：黒　 color rgb(0,0,0)
40250 '文字色:白
40260 color rgb(255,255,255)
40270 print "部下の生まれた月を入れて下さい" + chr$(13)
40280 '文字色:白
40290 color rgb(255,255,255)
40300 locate 1,3
40310 '文字色:白
40320 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
40330 color rgb(255,255,255)
40340 'locate 4,6:print ":7"
40350 'locate 9,6:print ":8"
40360 'locate 12,6:print ":9"
40370 locate 4,6
40380 '文字色:赤
40390 print ":7  :8  :9" + chr$(13)
40400 color rgb(255,255,255)
40410 locate 4,8
40420 print ":4  :5  :6" + chr$(13)
40430 color rgb(255,255,255)
40440 locate 4,10
40450 print ":1  :2  :3" + chr$(13)
40460 locate 4,12
40470 print "    :0"
40480 locate 12,12
40490 color rgb(0,0,255)
40500 print ":Ok"
40510 sp_on 4,0: sp_on 5,0:sp_on 6,0
40520 sp_on 7,0:sp_on 8,0:sp_on 9,0
40530 sp_on 10,0:sp_on 11,0:sp_on 12,0
40540 sp_on 13,0:sp_on 14,1
40550 Buka_Input_Born_Month2:
40560 key$="":bg=0:y=0:y2=0:bg2=0
40570 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
40580 key$ = inkey$
40590 bg = strig(1)
40600 y = stick(1)
40610 y2 = stick(0)
40620 bg2 = strig(0)
40630 pause 5
40640 wend
40650 '十字キー　ここから
40660 '上の矢印　または、十字キー上
40670 if ((y = -1) or (key$ = chr$(30))) then
40680 select case No
40690 'No=-1:okのとき:初期の状態
40700 '0kボタンから３に移動
40710 '上に行く 処理
40720 case -1:
40730 No=3:sp_on 12,1:sp_on 14,0
40740 pause 200:goto Buka_Input_Born_Month2:
40750 '選択肢:3
40760 '3ボタンから 6に移動
40770 case 3:
40780 No=6:sp_on 12,0:sp_on 11,1
40790 pause 200:goto Buka_Input_Born_Month2:
40800 '6ボタンから ９に移動
40810 case 6:
40820 No=9:sp_on 10,1:sp_on 11,0
40830 pause 200:goto Buka_Input_Born_Month2:
40840 '6ボタンから ９に移動　ここまで
40850 '9で上を押して何もしない
40860 case 9:
40870 '何もしない
40880 No=9
40890 pause 200:goto Buka_Input_Born_Month2:
40900 '9で上を押しても何もしない　ここまで
40910 '上　 0ボタンから2ボタン
40920 'sp_on 6,1:1
40930 'sp_on 8,1:5
40940 'sp_on 7,1:7
40950 case 0:
40960 No=2:sp_on 13,0:sp_on 9,1:
40970 pause 200:goto Buka_Input_Born_Month2:
40980 '上  0ボタンから2ボタン　ここまで
40990 '2から５になる 上
41000 case 2:
41010 No=5:sp_on 8,1:sp_on 9,0:
41020 pause 200:goto Buka_Input_Born_Month2:
41030 case 5:
41040 No=8:sp_on 7,1:sp_on 8,0
41050 pause 200:goto Buka_Input_Born_Month2:
41060 case 8:
41070 pause 200:goto Buka_Input_Born_Month2:
41080 case 1:
41090 No=4:sp_on 5,1:sp_on 6,0
41100 pause 200:goto Buka_Input_Born_Month2:
41110 case 4:
41120 No=7:sp_on 4,1:sp_on 5,0
41130 pause 200:goto Buka_Input_Born_Month2:
41140 case 7:
41150 pause 200:goto Buka_Input_Born_Month2:
41160 end select
41170 endif
41180 '左３　ここまで
41190 '下の矢印
41200 '中央 2
41210 if ((y=1) or (key$ = chr$(31))) then
41220 select case No
41230 '9から６に下げる
41240 case 9:
41250 No=6:sp_on 11,1:sp_on 10,0
41260 pause 200:goto Buka_Input_Born_Month2:
41270 '6から３に下げる
41280 case 6:
41290 No=3:sp_on 12,1:sp_on 11,0
41300 pause 200:goto Buka_Input_Born_Month2:
41310 '3から０ｋに変える
41320 case 3:
41330 No=-1:sp_on 14,1:sp_on 12,0
41340 pause 200:goto Buka_Input_Born_Month2:
41350 'Okから下のボタンを押しても何もしない
41360 case -1:
41370 pause 200:goto Buka_Input_Born_Month2:
41380 case 8:
41390 No=5:sp_on 8,1:sp_on 7,0
41400 pause 200:goto Buka_Input_Born_Month2:
41410 case 5:
41420 No=2:sp_on 9,1:sp_on 8,0
41430 pause 200:goto Buka_Input_Born_Month2:
41440 case 2:
41450 No=0:sp_on 13,1:sp_on 9,0
41460 pause 200:goto Buka_Input_Born_Month2:
41470 case 0:
41480 pause 200:goto Buka_Input_Born_Month2:
41490 case 7:
41500 No=4:sp_on 5,1:sp_on 4,0
41510 pause 200:goto Buka_Input_Born_Month2:
41520 case 4:
41530 No=1:sp_on 6,1:sp_on 5,0
41540 pause 200:goto Buka_Input_Born_Month2:
41550 case 1:
41560 pause 200:goto Buka_Input_Born_Month2:
41570 end select
41580 endif
41590 '左へボタン 十字キー　左　or 　カーソル左
41600 if ((y2 = -1) or (key$ = chr$(29))) then
41610 select case No
41620 'Ok ボタン  Okから　左　０に行く
41630 case -1:
41640 No=0:sp_on 13,1:sp_on 14,0
41650 pause 200:goto Buka_Input_Born_Month2:
41660 '0 ボタン  左　何もしない
41670 case 0:
41680 pause 200:goto Buka_Input_Born_Month2:
41690 case 3:
41700 No=2:sp_on 9,1:sp_on 12,0:
41710 pause 200:goto Buka_Input_Born_Month2:
41720 case 2:
41730 No=1:sp_on 6,1:sp_on 9,0:
41740 pause 200:goto Buka_Input_Born_Month2:
41750 case 1:
41760 pause 200:goto Buka_Input_Born_Month2:
41770 case 6:
41780 No=5:sp_on 8,1:sp_on 11,0
41790 pause 200:goto Buka_Input_Born_Month2:
41800 case 5:
41810 No=4:sp_on 5,1:sp_on 8,0
41820 pause 200:goto Buka_Input_Born_Month2:
41830 case 4:
41840 pause 200:goto Buka_Input_Born_Month2:
41850 case 9:
41860 No=8:sp_on 7,1:sp_on 10,0
41870 pause 200:goto Buka_Input_Born_Month2:
41880 case 8:
41890 No=7:sp_on 4,1:sp_on 7,0
41900 pause 200:goto Buka_Input_Born_Month2:
41910 case 7:
41920 pause 200:goto Buka_Input_Born_Month2:
41930 end select
41940 endif
41950 '右  十字キー　右　or カーソル　右
41960 if ((y2 = 1) or (key$ = chr$(28))) then
41970 select case No
41980 '0ボタンからokボタン右に移動
41990 case 0:
42000 No=-1:sp_on 14,1:sp_on 13,0
42010 pause 200:goto Buka_Input_Born_Month2:
42020 '0ボタンからokボタン 右に移動　ここまで
42030 'OKボタンで右を押して何もしない
42040 case -1:
42050 pause 200:goto Buka_Input_Born_Month2:
42060 case 1:
42070 No=2:sp_on 9,1:sp_on 6,0
42080 pause 200:goto Buka_Input_Born_Month2:
42090 case 2:
42100 No=3:sp_on 12,1:sp_on 9,0
42110 pause 200:goto Buka_Input_Born_Month2:
42120 case 3:
42130 pause 200:goto Buka_Input_Born_Month2:
42140 case 4:
42150 No=5:sp_on 8,1:sp_on 5,0
42160 pause 200:goto Buka_Input_Born_Month2:
42170 case 5:
42180 No=6:sp_on 11,1:sp_on 8,0
42190 pause 200:goto Buka_Input_Born_Month2:
42200 case 7:
42210 No=8:sp_on 7,1:sp_on 4,0
42220 pause 200:goto Buka_Input_Born_Month2:
42230 case 8:
42240 No=9:sp_on 10,1:sp_on 7,0
42250 pause 200:goto Buka_Input_Born_Month2:
42260 case 9:
42270 pause 200:goto Buka_Input_Born_Month2:
42280 case 6:
42290 pause 200:goto Buka_Input_Born_Month2:
42300 end select
42310 'Okから右ボタンを押して何もしない ここまで
42320 endif
42330 '十字キー　ここまで
42340 '右の丸ボタン　決定キー
42350 if ((bg=2) or (key$=chr$(13))) then
42360 select case count
42370 case 0:
42380 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
42390 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
42400 locate 1,3
42410 color RGB(255,255,255)
42420 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
42430 goto Buka_Input_Born_Month2:
42440 case 1:
42450 count = 2:buf_buka_month=a*10+No
42460 if (No = -1) then
42470 'count=0
42480 month=buf_buka_month
42490 buf_buka_month=val(buf_buka_Month$)
42500 month=buf_buka_month
42510 '生まれた日に飛ぶ
42520 goto Buka_Input_Born_Day:
42530 else
42540 buf_buka_month = a * 10 + No
42550 buf_buka_Month$ = str$(buf_buka_month)
42560 buf_Buka_Born_Day(1) = buf_buka_month
42570 locate 1,3
42580 color Rgb(255,255,255)
42590 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
42600 goto Buka_Input_Born_Month2:
42610 endif
42620 case 2:
42630 count=3
42640 'c= val(buf_Month$)
42650 'buf_month = c*10 + No
42660 'buf_Month$ = str$(buf_month)
42670 'locate 2,3
42680 'print "部下の生まれた月(1月～12月):";buf_Month$
42690 'goto Buka_Input_Born_Month2:
42700 'case 3:
42710 'count=4
42720 'b=val(buf_month$)
42730 'buf_month=c*10+No
42740 'buf_Month$=str$(buf_month)
42750 'locate 2,3
42760 'print "部下の生まれた月(1月～12月):";buf_Month$
42770 'buf_month=val(buf_Month$)
42780 'year=val(buf_year$)
42790 if (No=-1) then
42800 goto Buka_Input_Born_Day:
42810 else
42820 goto Input_Born_Month2:
42830 endif
42840 'case 4:
42850 'bufyear=buf_year
42860 'if (No=-1) then
42870 'buf_month = val(buf_Month$)
42880 'month = buf_month
42890 'sp_on 14,0
42900 'goto Input_Born_Day:
42910 'else
42920 'goto Input_Born_Month2:
42930 'endif
42940 end select
42950 endif
42960 '左の丸ボタン　キャンセル
42970 if (bg2=2) then
42980 select case count2
42990 case 0:
43000 if (No = -1) then
43010 buf_buka_month=0:buf_buka_Month$="**"
43020 count=0
43030 goto rewrite2:
43040 else
43050 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
43060 buf_month=0:buf_Month$="**"
43070 locate 2,3
43080 color rgb(255,255,255)
43090 print "                                       "
43100 goto rewrite2:
43110 if (No>12) then
43120 ui_msg"値が範囲外です。"
43130 goto rewrite2:
43140 endif
43150 endif
43160 endif
43170 rewrite2:
43180 locate 2,3
43190 color rgb(255,255,255)
43200 print "                                      "
43210 locate 2,3
43220 print "部下の生まれた月(1月~12月):";buf_buka_Month$
43230 goto Buka_Input_Born_Month2:
43240 end select
43250 'endif
43260 endif
43270 end
43280 '2.部下の生まれた月'
43290 '3.部下の生まれた日'
43300 '生れた日を入力
43310 Buka_Input_Born_Day:
43320 '生まれた日入力
43330 cls 3:play ""
43340 'No=-1:Okのとき
43350 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
43360 for i=0 to 1
43370 buf_day(i)=0
43380 next i
43390 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43400 gload Gazo$ + "Screen1.png",0,0,0
43410 gload Gazo$ + "downscreen.png",0,0,800
43420 'Init"kb:2"
43430 '音声ファイル再生 2023.06.07
43440 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
43450 font 48
43460 locate 0,1
43470 '文字色：黒　 color rgb(0,0,0)
43480 color rgb(255,255,255)
43490 print "部下の生まれた日を入れて下さい" + chr$(13)
43500 color rgb(255,255,255)
43510 locate 1,3
43520 print "部下の生まれた日(1日~31日):";buf_Day$
43530 color rgb(255,255,255)
43540 'locate 4,6:print ":7"
43550 'locate 9,6:print ":8"
43560 'locate 12,6:print ":9"
43570 locate 4,6
43580 print ":7  :8  :9" + chr$(13)
43590 color rgb(255,255,255)
43600 locate 4,8
43610 print ":4  :5  :6" + chr$(13)
43620 color rgb(255,255,255)
43630 locate 4,10
43640 print ":1  :2  :3" + chr$(13)
43650 locate 4,12
43660 print "    :0"
43670 locate 12,12
43680 color rgb(0,0,255)
43690 print ":Ok"
43700 sp_on 4,0: sp_on 5,0:sp_on 6,0
43710 sp_on 7,0:sp_on 8,0:sp_on 9,0
43720 sp_on 10,0:sp_on 11,0:sp_on 12,0
43730 sp_on 13,0:sp_on 14,1
43740 Buka_Input_Born_Day2:
43750 key$="":bg=0:y=0:y2=0:bg2=0
43760 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43770 key$ = inkey$
43780 bg = strig(1)
43790 y = stick(1)
43800 y2 = stick(0)
43810 bg2 = strig(0)
43820 pause 5
43830 wend
43840 '十字キー　ここから
43850 '上の矢印　または、十字キー上
43860 if ((y = -1) or (key$ = chr$(30))) then
43870 select case No
43880 'No=-1:okのとき:初期の状態
43890 '0kボタンから３に移動
43900 '上に行く 処理
43910 case -1:
43920 No=3:sp_on 12,1:sp_on 14,0
43930 pause 200:goto Buka_Input_Born_Day2:
43940 '選択肢:3
43950 '3ボタンから 6に移動
43960 case 3:
43970 No=6:sp_on 12,0:sp_on 11,1
43980 pause 200:goto Buka_Input_Born_Day2:
43990 '6ボタンから ９に移動
44000 case 6:
44010 No=9:sp_on 10,1:sp_on 11,0
44020 pause 200:goto Buka_Input_Born_Day2:
44030 '6ボタンから ９に移動　ここまで
44040 '9で上を押して何もしない
44050 case 9:
44060 '何もしない
44070 No=9
44080 pause 200:goto Buka_Input_Born_Day2:
44090 '9で上を押しても何もしない　ここまで
44100 '上　 0ボタンから2ボタン
44110 'sp_on 6,1:1
44120 'sp_on 8,1:5
44130 'sp_on 7,1:7
44140 case 0:
44150 No=2:sp_on 13,0:sp_on 9,1:
44160 pause 200:goto Buka_Input_Born_Day2:
44170 '上  0ボタンから2ボタン　ここまで
44180 '2から５になる 上
44190 case 2:
44200 No=5:sp_on 8,1:sp_on 9,0:
44210 pause 200:goto Buka_Input_Born_Day2:
44220 case 5:
44230 No=8:sp_on 7,1:sp_on 8,0
44240 pause 200:goto Buka_Input_Born_Day2:
44250 case 8:
44260 pause 200:goto Buka_Input_Born_Day2:
44270 case 1:
44280 No=4:sp_on 5,1:sp_on 6,0
44290 pause 200:goto Buka_Input_Born_Day2:
44300 case 4:
44310 No=7:sp_on 4,1:sp_on 5,0
44320 pause 200:goto Buka_Input_Born_Day2:
44330 case 7:
44340 pause 200:goto Buka_Input_Born_Day2:
44350 end select
44360 endif
44370 '左３　ここまで
44380 '下の矢印
44390 '中央 2
44400 if ((y=1) or (key$ = chr$(31))) then
44410 select case No
44420 '9から６に下げる
44430 case 9:
44440 No=6:sp_on 11,1:sp_on 10,0
44450 pause 200:goto Buka_Input_Born_Day2:
44460 '6から３に下げる
44470 case 6:
44480 No=3:sp_on 12,1:sp_on 11,0
44490 pause 200:goto Buka_Input_Born_Day2:
44500 '3から０ｋに変える
44510 case 3:
44520 No=-1:sp_on 14,1:sp_on 12,0
44530 pause 200:goto Buka_Input_Born_Day2:
44540 'Okから下のボタンを押しても何もしない
44550 case -1:
44560 pause 200:goto Buka_Input_Born_Day2:
44570 case 8:
44580 No=5:sp_on 8,1:sp_on 7,0
44590 pause 200:goto Buka_Input_Born_Day2:
44600 case 5:
44610 No=2:sp_on 9,1:sp_on 8,0
44620 pause 200:goto Buka_Input_Born_Day2:
44630 case 2:
44640 No=0:sp_on 13,1:sp_on 9,0
44650 pause 200:goto Buka_Input_Born_Day2:
44660 case 0:
44670 pause 200:goto Buka_Input_Born_Day2:
44680 case 7:
44690 No=4:sp_on 5,1:sp_on 4,0
44700 pause 200:goto Buka_Input_Born_Day2:
44710 case 4:
44720 No=1:sp_on 6,1:sp_on 5,0
44730 pause 200:goto Buka_Input_Born_Day2:
44740 case 1:
44750 pause 200:goto Buka_Input_Born_Day2:
44760 end select
44770 endif
44780 '左へボタン 十字キー　左　or 　カーソル左
44790 if ((y2 = -1) or (key$ = chr$(29))) then
44800 select case No
44810 'Ok ボタン  Okから　左　０に行く
44820 case -1:
44830 No=0:sp_on 13,1:sp_on 14,0
44840 pause 200:goto Buka_Input_Born_Day2:
44850 '0 ボタン  左　何もしない
44860 case 0:
44870 pause 200:goto Buka_Input_Born_Day2:
44880 case 3:
44890 No=2:sp_on 9,1:sp_on 12,0:
44900 pause 200:goto Buka_Input_Born_Day2:
44910 case 2:
44920 No=1:sp_on 6,1:sp_on 9,0:
44930 pause 200:goto Buka_Input_Born_Day2:
44940 case 1:
44950 pause 200:goto Buka_Input_Born_Day2:
44960 case 6:
44970 No=5:sp_on 8,1:sp_on 11,0
44980 pause 200:goto Buka_Input_Born_Day2:
44990 case 5:
45000 No=4:sp_on 5,1:sp_on 8,0
45010 pause 200:goto Buka_Input_Born_Day2:
45020 case 4:
45030 pause 200:goto Buka_Input_Born_Day2:
45040 case 9:
45050 No=8:sp_on 7,1:sp_on 10,0
45060 pause 200:goto Buka_Input_Born_Day2:
45070 case 8:
45080 No=7:sp_on 4,1:sp_on 7,0
45090 pause 200:goto Buka_Input_Born_Day2:
45100 case 7:
45110 pause 200:goto Buka_Input_Born_Day2:
45120 end select
45130 endif
45140 '右  十字キー　右　or カーソル　右
45150 if ((y2 = 1) or (key$ = chr$(28))) then
45160 select case No
45170 '0ボタンからokボタン右に移動
45180 case 0:
45190 No=-1:sp_on 14,1:sp_on 13,0
45200 pause 200:goto Buka_Input_Born_Day2:
45210 '0ボタンからokボタン 右に移動　ここまで
45220 'OKボタンで右を押して何もしない
45230 case -1:
45240 pause 200:goto Buka_Input_Born_Day2:
45250 case 1:
45260 No=2:sp_on 9,1:sp_on 6,0
45270 pause 200:goto Buka_Input_Born_Day2:
45280 case 2:
45290 No=3:sp_on 12,1:sp_on 9,0
45300 pause 200:goto Buka_Input_Born_Day2:
45310 case 3:
45320 pause 200:goto Buka_Input_Born_Day2:
45330 case 4:
45340 No=5:sp_on 8,1:sp_on 5,0
45350 pause 200:goto Buka_Input_Born_Day2:
45360 case 5:
45370 No=6:sp_on 11,1:sp_on 8,0
45380 pause 200:goto Buka_Input_Born_Day2:
45390 case 7:
45400 No=8:sp_on 7,1:sp_on 4,0
45410 pause 200:goto Buka_Input_Born_Day2:
45420 case 8:
45430 No=9:sp_on 10,1:sp_on 7,0
45440 pause 200:goto Buka_Input_Born_Day2:
45450 case 9:
45460 pause 200:goto Buka_Input_Born_Day2:
45470 case 6:
45480 pause 200:goto Buka_Input_Born_Day2:
45490 end select
45500 'Okから右ボタンを押して何もしない ここまで
45510 endif
45520 '十字キー　ここまで
45530 '右の丸ボタンを押したとき
45540 if ((bg = 2) or (key$ = chr$(13))) then
45550 'count :決定ボタンを押した回数
45560 select case (count)
45570 '1桁目入力
45580 case 0:
45590 count = 1:
45600 if (No = -1) then
45610 '1桁目　OKでは何もしない
45620 'goto check:
45630 No=0
45640 else
45650 'ok以外のボタンを押したとき
45660 buf_buka_day = No:buf_buka_Day$ = str$(No)
45670 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
45680 buf_buka_Day$ = str$(No) + "*"
45690 endif
45700 a=No
45710 buf_Buka_Born_Day(2) = buf_buka_day
45720 locate 1,3
45730 print"                                      "
45740 color RGB(255,255,255)
45750 locate 1,3
45760 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
45770 endif
45780 check2:
45790 if (No >= 1 and No <= 9) then
45800 sp_on 14,0
45810 goto Buka_Input_Born_Day2:
45820 else
45830 sp_on 14,0
45840 goto Result_Business_Aisyou:
45850 end
45860 endif
45870 case 1:
45880 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
45890 count = 2:
45900 'locate 2,3
45910 'color RGB(255,255,255)
45920 'print "生まれた日(1日~31日):";buf_Day$
45930 'Okボタンを押したときの処理
45940 '入力値　10未満のとき
45950 'c = buf_day
45960 if (No = -1) then
45970 'c=buf_day
45980 ' buf_day = c
45990 'buf_Day$ = str$(buf_day)
46000 '10以下のとき
46010 No=0
46020 if (buf_day < 10) then
46030 sp_on 14,0
46040 goto Result_Business_Aisyou:
46050 end
46060 endif
46070 else
46080 sp_on 14,0
46090 'c=No
46100 buf_buka_day = a * 10 + No
46110 buf_buka_Day$ = str$(buf_buka_day)
46120 buf_Buka_Born_Day(2) = buf_buka_day
46130 locate 0,3
46140 color Rgb(255,255,255)
46150 print "                                       "
46160 locate 1,3
46170 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
46180 goto Buka_Input_Born_Day2:
46190 endif
46200 '生まれた日　2桁目の数字　or 1桁の数字 + ok
46210 case 2:
46220 count=0
46230 'c=val(buf_Day$)
46240 'buf_day=c*10+No
46250 'buf_Day$=str$(buf_day)
46260 'day=buf_day
46270 'locate 2,3
46280 'print "生まれた日(1日〜31日):";buf_Day$
46290 'No=-1:ok ボタンを押したとき
46300 if (No = -1) then No=0
46310 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
46320 sp_on 14,0
46330 goto Result_Business_Aisyou:
46340 else
46350 goto Buka_Input_Born_Day2:
46360 endif
46370 'Okボタン以外を押したとき
46380 else
46390 c=val(buf_buka_Day$)
46400 buf_buka_day = c * 10 + No
46410 buf_buka_Day$ = str$(buf_buka_day)
46420 locate 1,3
46430 print "                "
46440 locate 1,3
46450 print "生まれた日(1日~31日):"+buf_buka_Day$
46460 goto Buka_Input_Born_Day2:
46470 'endif
46480 case 3:
46490 count=4
46500 'c=val(buf_day$)
46510 'buf_day=c*10+No
46520 'buf_day$=str$(buf_day)
46530 'locate 2,3
46540 'print "生まれた日を入れてください:";buf_day$
46550 'year=val(buf_year$)
46560 if (No = -1) then
46570 'goto Buka_Input_Born_Day:
46580 sp_on 14,0:
46590 goto complate_jyoushi:
46600 else
46610 goto Buka_Input_Born_Month2:
46620 endif
46630 'case 4:
46640 'bufyear=buf_year
46650 'if (No=-1) then
46660 'buf_day = val(buf_day$)
46670 'bufday = buf_day
46680 'sp_on 14,0
46690 goto complate_jyoushi:
46700 'else
46710 'goto Buka_Input_Born_Day2:
46720 'endif
46730 end select
46740 endif
46750 if (bg2=2) then
46760 select case count2
46770 case 0:
46780 if (No=-1) then
46790 'buf_day=0:buf_Day$="**"
46800 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
46810 count=0
46820 buf_buka_day=0:buf_buka_Day$="**"
46830 goto rewrite_day3:
46840 else
46850 buf_buka_day=0:buf_buka_Day$="**"
46860 ui_msg"値が範囲外です"
46870 endif
46880 goto rewrite_day3:
46890 else
46900 goto rewrite_day3:
46910 endif
46920 rewrite_day3:
46930 locate 2,3
46940 color rgb(255,255,255)
46950 print "                                      "
46960 locate 1,3
46970 print "生まれた日(1日~31日):"+buf_buka_Day$
46980 goto Buka_Input_Born_Day2:
46990 end select
47000 endif
47010 '3.部下の生まれた日'
47020 '部下'
47030 '--------------------------------------------'
47040 'ビジネの相性　結果表示
47050 Result_Business_Aisyou:
47060 cls 3:init "kb:4"
47070 a=0:b=0:c=0:d=0:e=0:f=0
47080 bg=0:key$=""
47090 gload Gazo$ + "Screen1.png",0,0,0
47100 gload Gazo$ + "downscreen.png",0,0,800
47110 sp_on 14,0
47120 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
47130 buf_Buka = Kabara_Num(d,e,f)
47140 a_2 = buf_Buka
47150 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
47160 locate 0,1
47170 color rgb(255,0,0)
47180 print "●.相性診断結果１"
47190 locate 0,4:
47200 color rgb(255,255,255)
47210 print "1.上司の名前:";buffer_name$(0)
47220 locate 0,6
47230 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
47240 locate 0,8
47250 print "2.部下の名前:";buffer_name$(1)
47260 locate 0,10
47270 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
47280 locate 0,12
47290 print "3.上司と部下の相性:";Result_Aisyou$
47300 locate 1,15
47310 color rgb(0,0,0)
47320 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
47330 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
47340 bg = strig(1)
47350 key$ = inkey$
47360 bg2 = strig(0)
47370 pause 5
47380 wend
47390 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
47400 if (bg2 = 2) then
47410 cls 3:goto Business_Aishou_Input_1_parson:
47420 endif
47430 'ビジネスの相性占い　結果2　説明
47440 Result_Business_Aisyou2:
47450 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
47460 gload Gazo$ + "Screen1.png",0,0,0
47470 locate 0,1
47480 color rgb(255,0,0)
47490 print "●.相性の説明"
47500 color rgb(255,255,255)
47510 locate 0,4
47520 print "相性:";Result_Aisyou$
47530 locate 0,6:
47540 print "相性の説明:";buf$
47550 locate 0,15
47560 color rgb(0,0,0)
47570 print "右の丸ボタン:トップ,左のボタン:前の画面"
47580 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
47590 bg = strig(1)
47600 bg2 = strig(0)
47610 key$ = inkey$
47620 pause 5
47630 wend
47640 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
47650 if ((bg2 = 2)) then goto Result_Business_Aisyou:
47660 '自作関数 ここから
47670 func read_explain$(ba$)
47680 d$=""
47690 buf_String$=""
47700 if ba$="A" then
47710 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
47720 line input #1,a$
47730 a1$=mid$(a$,1,12)
47740 a2$=mid$(a$,13,17)
47750 a3$=mid$(a$,30,17)
47760 a4$=mid$(a$,47,18)
47770 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
47780 buf_String$ = a5$
47790 close #1
47800 endif
47810 if ba$="B"  then
47820 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
47830 line input #1,b$
47840 b1$=mid$(b$,1,15)
47850 b2$=mid$(b$,16,21)
47860 'b3$=mid$(b$,33,3)
47870 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
47880 buf_String$ = b4$
47890 close #1
47900 endif
47910 if ba$="C"  then
47920 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
47930 line input #1,c$
47940 c1$ = Mid$(c$,1,15)
47950 c2$ = Mid$(c$,16,33)
47960 c3$ = c1$ + chr$(13) + c2$
47970 buf_String$ = c3$
47980 close #1
47990 endif
48000 if ba$="D" then
48010 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
48020 line input #1,d$
48030 d1$=mid$(d$,1,15)
48040 d2$=mid$(d$,16,22)
48050 d3$=mid$(d$,38,7)
48060 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
48070 buf_String$ = d4$
48080 close #1
48090 endif
48100 if ba$="E"  then
48110 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
48120 line input #1,e$
48130 e1$=Mid$(e$,1,16)
48140 e2$=Mid$(e$,17,16)
48150 e3$=Mid$(e$,33,12)
48160 e4$=Mid$(e$,45,17)
48170 e5$=Mid$(e$,62,17)
48180 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
48190 buf_String$ = e6$
48200 close #1
48210 endif
48220 if ba$="F" then
48230 '改行を追加して表示を調整
48240 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
48250 line input #1,f$
48260 f1$=Mid$(f$,1,15)
48270 f2$=Mid$(f$,16,12)
48280 buf_String$ = f1$+chr$(13)+f2$
48290 close #1
48300 endif
48310 if ba$="G" then
48320 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
48330 line input #1,g$
48340 g1$ = mid$(g$,1,16)
48350 g2$ = mid$(g$,17,18)
48360 g3$ = mid$(g$,36,21)
48370 g4$ = mid$(g$,56,6)
48380 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
48390 buf_String$ = g5$
48400 close #1
48410 endif
48420 if ba$="H" then
48430 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
48440 line input #1,h$
48450 h1$=Mid$(h$,1,17)
48460 h2$=Mid$(h$,18,21)
48470 h3$=Mid$(h$,39,20)
48480 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
48490 buf_String$ = h$
48500 close #1
48510 endif
48520 if ba$ = "I" then
48530 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
48540 line input #1,i$
48550 i1$=Mid$(i$,1,10)
48560 i2$=Mid$(i$,11,13)
48570 i3$=Mid$(i$,25,16)
48580 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
48590 buf_String$ = i$
48600 close #1
48610 endif
48620 buffer$ = buf_String$
48630 endfunc buffer$
48640 'カバラ数（数秘番号を求める）
48650 func Kabara_Num(buffer_Year,month,day)
48660 '=============================
48670 'a1:4桁のうちの1桁目を求める
48680 '例 a1:1234の4が1桁目
48690 'a2:4桁のうちの2桁目を求める
48700 '例:a2:1234の3が2桁目
48710 'a3:4桁のうちの3桁目を求める
48720 '例 a3:1234の2が3桁目
48730 'a4:4桁のうちの4桁目を求める
48740 '例 a4:1234の1が4桁目
48750 '==============================
48760 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
48770 Year = buffer_Year
48780 '処理1　整数部分を取り出す。
48790 a4 = fix(Year / 1000)
48800 a3 = fix(Year / 100) - (a4 * 10)
48810 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
48820 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
48830 '処理　２　取り出した整数部分を足す。
48840 a_ = a1 + a2 + a3 + a4 +month + day
48850 'a1=0:a2=0:a3=0:a4=0
48860 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
48870 buffer = a_
48880 'else
48890 goto recomp2:
48900 'if (a_ = 10) then
48910 '  buffer = 1
48920 endif
48930 recomp2:
48940 a5=0:a6=0
48950 a5 = fix(a_ / 10)
48960 a6 = (a_) - (a5 * 10)
48970 a_ = a5 + a6
48980 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
48990 '結果に行く
49000 goto Res2:
49010 '  if ((a_>11) and (a_<99)) then
49020 else
49030 '再度計算
49040 goto recomp2:
49050 endif
49060 '     a1 = fix(a_ / 10)
49070 '     a2 = a_ - (a1 * 10)
49080 '     a_ = a1 + a2
49090 '     buffer = a_
49100 'endif
49110 'else
49120 '    bffer = a_
49130 'endif
49140 'endif
49150 'else
49160 'talk "プログラムを終了します。"
49170 'end
49180 'endif
49190 'kabara = 10
49200 Res2:
49210 kabara = a_
49220 endfunc kabara
49230 func Kabara_Aisyou$(buff1,buff2)
49240 a=0:b=0
49250 '範囲　1~9
49260 if ((buff1 > 0 and buff1 < 10)) then
49270 a = buff1
49280 else
49290 Select case buff1
49300 case 11:
49310 buff1=9:a=buff1
49320 case 22:
49330 buff1=10:a=buff1
49340 end select
49350 endif
49360 '範囲　１~９
49370 if ((buff2 > 0 and buff2 < 10)) then
49380 b = buff2
49390 else
49400 select case buff2
49410 case 11:
49420 buff2=9:b=buff2
49430 case 12:
49440 buff2=10:b=buff2
49450 end select
49460 endif
49470 Aisyou$ = Buffer_Business_Aisyou$(a,b)
49480 endfunc Aisyou$
49490 '=============================
49500 '自作関数 ここまで
49510 '1.数秘術　トップ画面
49520 '
49530 'Data_eraseを一番最後に持ってくる
49540 '=============================
49550 Data_erase:
49560 'メモリー削除
49570 erase buf_name1$
49580 erase buf_name2$
49590 erase buffer
49600 erase buf_chart$
49610 erase Buffer_Business_Aisyou$
49620 erase buffer_name$
49630 '上司の誕生日
49640 erase buf_Jyoushi_Born_Day
49650 '部下の誕生日
49660 erase buf_Buka_Born_Day
49670 erase buf_year
49680 erase buf_month
49690 erase buf_day
49700 'フォーカスライン
49710 erase Forcus1_buffer$
49720 erase Forcus2_buffer$
49730 erase Forcus3_buffer$
49740 buffer$ = ""
49750 buf$ = ""
49760 buf_year$ = ""
49770 buf_Jyoushi_Kabara_Num = 0
49780 buf_Buka_Kabara_Num = 0
49790 count = 0
49800 buf_Month$ = ""
49810 buf_Day$ = ""
49820 b=0
49830 c=0
49840 return
