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
370 '2023.10.08:Ver118_20231008
380 '2023.10.15:Ver119_20231015
390 '2023.10.22:Ver120_20231022
400 '2023.10.29:Ver121_20231029
410 '2023.11.05:Ver122_20231105
420 '2023.11.12:Ver123_20231112
430 '2023.11.19:Ver124_20231119
440 '2023.11.26:Ver125_20231126
450 Version$ = "Ver:1.2.5_20231126"
460 'Gazo file Folder
470 Gazo$ = "./data/Picture/"
480 'Voice files 2023
490 Voice$ = "./data/Voice/Voice/"
500 'BirtheyeChart Data:20230626
510 Birth_eye_chart$ = "./data/chart_data/"
520 'Data File
530 Data$ = "./data/data/"
540 'Business Aisyou 結果説明保存フォルダ
550 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
560 '変数定義 パート
570 b=0:c=0
580 dim buf_name1$(10),buf_name2$(10)
590 dim buffer(9),buf_chart$(26,2)
600 'ビジネスの相性　データー
610 dim Buffer_Business_Aisyou$(12,12)
620 '生れた年代
630 dim buf_year(4):buf_year$ = ""
640 dim buf_month(2)
650 dim buf_day(2)
660 'フォーカスライン　配列
670 dim Forcus1_buffer$(3)
680 dim Forcus2_buffer$(3)
690 dim Forcus3_buffer$(2)
700 '生れた月
710 buf_Month$ = ""
720 '生れた日
730 buf_Day$ = ""
740 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
750 dim buffer_name$(3)
760 '1-1.上司の誕生日(数値データー)
770 dim buf_Jyoushi_Born_Day(3)
780 '1-2.上司の数秘ナンバー(数値データー)
790 buf_Jyoushi_Kabara_Num = 0
800 '2-1.部下の誕生日(数値データー)
810 dim buf_Buka_Born_Day(3)
820 '2-2.部下の数秘ナンバー(数秘データー)
830 buf_Buka_Kabara_Num = 0
840 count=0
850 '部下の数秘ナンバー
860 'File 読み込み
870 '1.ビジネスの相性占い
880 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
890 for i=0 to 11
900 for j=0 to 11
910 input #1,a$
920 Buffer_Business_Aisyou$(j,i) = a$
930 next j
940 next i
950 close #1
960 '2.Birth Eye chart$
970 '2.バーズアイグリッドを読み込む
980 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
990 for j=0 to 25
1000 for i=0 to 1
1010 input #1,a$
1020 buf_chart$(j,i) = a$
1030 next i
1040 next j
1050 close #1
1060 'File 読み込み　ここまで
1070 'Main画面
1080 screen 1,1,1,1
1090 Main_Screen:
1100 cls 3:
1110 No=0
1120 gload Gazo$ + "Selection.png",1,5,200
1130 gload Gazo$ + "Selection.png",1,5,300
1140 gload Gazo$ + "Selection.png",1,5,400
1150 gload Gazo$ + "Selection.png",1,5,500
1160 '4
1170 gload Gazo$ + "Selection.png",1,35,300
1180 '5
1190 gload Gazo$ + "Selection.png",1,35,400
1200 '6
1210 gload Gazo$ + "Selection.png",1,35,500
1220 '7
1230 gload Gazo$ + "Selection.png",1,70,300
1240 '8
1250 gload Gazo$ + "Selection.png",1,70,400
1260 '9
1270 gload Gazo$ + "Selection.png",1,70,500
1280 '10
1290 gload Gazo$ + "Selection.png",1,110,300
1300 '11
1310 gload Gazo$ + "Selection.png",1,110,400
1320 '12
1330 gload Gazo$ + "Selection.png",1,110,500
1340 '13:0
1350 gload Gazo$ + "Selection.png",1,150,400
1360 gload Gazo$ + "Selection.png",1,200,400
1370 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1380 gload Gazo$ + "downscreen.png",0,0,800
1390 sp_def 0,(5,300),32,32
1400 sp_def 1,(5,400),32,32
1410 sp_def 2,(5,500),32,32
1420 sp_def 3,(5,600),32,32
1430 '1
1440 sp_def 4,(35,300),32,32
1450 '2
1460 sp_def 5,(35,400),32,32
1470 '3
1480 sp_def 6,(35,500),32,32
1490 '4
1500 sp_def 7,(70,300),32,32
1510 '5
1520 sp_def 8,(70,400),32,32
1530 '6
1540 sp_def 9,(70,500),32,32
1550 '7
1560 sp_def 10,(110,300),32,32
1570 '8
1580 sp_def 11,(110,400),32,32
1590 '9
1600 sp_def 12,(110,400),32,32
1610 sp_def 13,(150,400),32,32
1620 sp_def 14,(200,400),32,32
1630 'Sprite OFF
1640 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1650 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1660 sp_put 0,(5,300),0,0
1670 sp_put 1,(5,400),1,0
1680 sp_put 2,(5,500),2,0
1690 sp_put 3,(5,600),3,0
1700 '1
1710 sp_put 4,(130,300),4,0
1720 '2
1730 sp_put 5,(130,400),5,0
1740 '3
1750 sp_put 6,(130,500),6,0
1760 '4
1770 sp_put 7,(340,300),7,0
1780 '5
1790 sp_put 8,(340,400),8,0
1800 '6
1810 sp_put 9,(340,500),9,0
1820 '7
1830 sp_put 10,(540,300),10,0
1840 '8
1850 sp_put 11,(540,400),11,0
1860 '9
1870 sp_put 12,(540,500),12,0
1880 '
1890 sp_put 13,(340,600),13,0
1900 sp_put 14,(540,600),14,0
1910 Main_Top:
1920 'Main Message 2023.06.07
1930 '再生を止める
1940 play ""
1950 init "kb:4"
1960 'font 32:
1970 font 48
1980 print chr$(13) + chr$(13) + chr$(13)
1990 color rgb(217,255,212)
2000 print "番号を選んでください" + chr$(13)
2010 '0
2020 print " :1.数秘術占い" + chr$(13)
2030 '1
2040 print " :2.設 定" + chr$(13)
2050 '2
2060 print " :3.ヘルプ" + chr$(13)
2070 '3
2080 print " :4.(プログラムを)終了する" + chr$(13)
2090 COLOR rgb(0,0,0):No=0
2100 locate 1,15
2110 print "                                       "
2120 locate 1,15:print "1.数秘術占いを選択"
2130 play Voice$ + "Voice_Main_Message_20230607.mp3"
2140 Main_Screen_Select:
2150 y = 0:key$ = "":bg = 0:bg2=0
2160 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2170 y = stick(1)
2180 '"May (2023)"
2190 key$ = inkey$
2200 bg = strig(1)
2210 bg2 = strig(0)
2220 pause 200
2230 wend
2240 '1.
2250 'ジョイパッドのソース ソート　ここから
2260 'カーソル　下 or 十字キー下
2270 if ((y = 1) or (key$ = chr$(31))) then
2280 select case No
2290 case 0:
2300 '1
2310 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2320 case 1:
2330 '2
2340 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2350 case 2:
2360 '3
2370 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2380 case 3:
2390 '0
2400 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2410 end select
2420 endif
2430 '2.
2440 'カーソル　上　or 十字キー  上
2450 if ((y = -1) or (key$ = chr$(30))) then
2460 select case No
2470 case 0:
2480 '3
2490 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2500 case 1:
2510 '0
2520 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2530 case 2:
2540 '1
2550 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2560 case 3:
2570 '2
2580 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2590 end select
2600 endif
2610 'ジョイパッド　ソース 部分　ここまで
2620 'ジョイパッド右　　or Enter key 決定
2630 if ((bg = 2) OR (key$ = chr$(13))) then
2640 select case No
2650 case 0:
2660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2670 case 1:
2680 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2690 case 2:
2700 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2710 case 3:
2720 play "":pause 200
2730 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2740 end select
2750 endif
2760 if (bg2 = 2) then
2770 play "":pause 200
2780 play Voice$ + "Voice_Main_Message_20230607.mp3"
2790 goto Main_Screen_Select:
2800 endif
2810 'Version
2820 Version:
2830 cls 3:PLAY ""
2840 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2850 gload Gazo$ + "downscreen.png",0,0,800
2860 init"kb:4":font 32
2870 'talk"バージョン情報です"
2880 'Message :Version
2890 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2900 locate 0,5
2910 color rgb(0,0,0)
2920 print "・Title:数秘術占い";chr$(13)
2930 print "・" + Version$ + chr$(13)
2940 print "・Author:licksjp"+chr$(13)
2950 print "・E-mail:licksjp@gmail.com" + chr$(13)
2960 locate 0,18
2970 print "(C)licksjp All rights " + chr$(13)
2980 locate 13,19
2990 print "reserved since 2009"+chr$(13)
3000 locate 0,23
3010 color rgb(255,255,255)
3020 print "ジョイパッドの右を押してください"
3030 Versionn_Selection:
3040 bg = 0:key$ = "":bg2 = 0
3050 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3060 bg = strig(1)
3070 key$ = inkey$
3080 bg2 = strig(0)
3090 pause 2
3100 wend
3110 if ((bg = 2) or (key$ = chr$(13))) then
3120 pause 200:cls 4:goto Main_Screen:
3130 endif
3140 if (bg2=2) then
3150 play "":pause 200
3160 play Voice$ + "Voice_Version_Message_20230607.mp3"
3170 goto Versionn_Selection:
3180 endif
3190 '1.数秘ナンバーを求める
3200 '誕生日入力(生れた年代)
3210 Input_Seireki:
3220 cls 3:play "":count=0:count2=0
3230 'No = -1:Okのとき
3240 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3250 for i=0 to 3
3260 buf_year(i)=0
3270 next i
3280 gload Gazo$ + "Screen1.png",0,0,0
3290 gload Gazo$ + "downscreen.png",0,0,800
3300 'Init"kb:2"
3310 '音声ファイル再生 2023.06.07
3320 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3330 font 48
3340 locate 0,1
3350 '文字色：黒　 color rgb(0,0,0)
3360 color rgb(255,255,255)
3370 print "生まれた年代を入れて下さい" + chr$(13)
3380 color rgb(255,255,255)
3390 locate 2,3
3400 print "生まれた年代(西暦4桁):" + buf_year$
3410 '=============================
3420 'テンキーの色(1~９)　白 ,決定ボタン　青
3430 '=============================
3440 color rgb(255,255,255)
3450 'locate 4,6:print ":7"
3460 'locate 9,6:print ":8"
3470 'locate 12,6:print ":9"
3480 locate 4,6
3490 print ":7  :8  :9" + chr$(13)
3500 color rgb(255,255,255)
3510 locate 4,8
3520 print ":4  :5  :6" + chr$(13)
3530 color rgb(255,255,255)
3540 locate 4,10
3550 print ":1  :2  :3" + chr$(13)
3560 locate 4,12
3570 print "    :0"
3580 locate 12,12
3590 color rgb(255,0,0)
3600 print ":Ok"
3610 sp_on 4,0: sp_on 5,0:sp_on 6,0
3620 sp_on 7,0:sp_on 8,0:sp_on 9,0
3630 sp_on 10,0:sp_on 11,0:sp_on 12,0
3640 sp_on 13,0:sp_on 14,1
3650 Input_Seireki2:
3660 key$="":bg=0:y=0:y2=0:bg2=0:
3670 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3680 key$ = inkey$
3690 bg = strig(1)
3700 y = stick(1)
3710 y2 = stick(0)
3720 bg2 = strig(0)
3730 pause 15
3740 wend
3750 '十字キー　ここから
3760 '上の矢印　または、十字キー上
3770 if ((y = -1) or (key$ = chr$(30))) then
3780 select case No
3790 'No=-1:okのとき:初期の状態
3800 '0kボタンから３に移動
3810 '上に行く 処理
3820 case -1:
3830 No=3:sp_on 12,1:sp_on 14,0
3840 pause 200:goto Input_Seireki2:
3850 '選択肢:3
3860 '3ボタンから 6に移動
3870 case 3:
3880 No=6:sp_on 12,0:sp_on 11,1
3890 pause 200:goto Input_Seireki2:
3900 '6ボタンから ９に移動
3910 case 6:
3920 No=9:sp_on 10,1:sp_on 11,0
3930 pause 200:goto Input_Seireki2:
3940 '6ボタンから ９に移動　ここまで
3950 '9で上を押して何もしない
3960 case 9:
3970 '何もしない
3980 No=9
3990 pause 200:goto Input_Seireki2:
4000 '9で上を押しても何もしない　ここまで
4010 '上　 0ボタンから2ボタン
4020 'sp_on 6,1:1
4030 'sp_on 8,1:5
4040 'sp_on 7,1:7
4050 case 0:
4060 No=2:sp_on 13,0:sp_on 9,1:
4070 pause 200:goto Input_Seireki2:
4080 '上  0ボタンから2ボタン　ここまで
4090 '2から５になる 上
4100 case 2:
4110 No=5:sp_on 8,1:sp_on 9,0:
4120 pause 200:goto Input_Seireki2:
4130 case 5:
4140 No=8:sp_on 7,1:sp_on 8,0
4150 pause 200:goto Input_Seireki2:
4160 case 8:
4170 pause 200:goto Input_Seireki2:
4180 case 1:
4190 No=4:sp_on 5,1:sp_on 6,0
4200 pause 200:goto Input_Seireki2:
4210 case 4:
4220 No=7:sp_on 4,1:sp_on 5,0
4230 pause 200:goto Input_Seireki2:
4240 case 7:
4250 pause 200:goto Input_Seireki2:
4260 end select
4270 endif
4280 '左３　ここまで
4290 '下の矢印
4300 '中央 2
4310 if ((y=1) or (key$ = chr$(31))) then
4320 select case No
4330 '9から６に下げる
4340 case 9:
4350 No=6:sp_on 11,1:sp_on 10,0
4360 pause 200:goto Input_Seireki2:
4370 '6から３に下げる
4380 case 6:
4390 No=3:sp_on 12,1:sp_on 11,0
4400 pause 200:goto Input_Seireki2:
4410 '3から０ｋに変える
4420 case 3:
4430 No=-1:sp_on 14,1:sp_on 12,0
4440 pause 200:goto Input_Seireki2:
4450 'Okから下のボタンを押しても何もしない
4460 case -1:
4470 pause 200:goto Input_Seireki2:
4480 case 8:
4490 No=5:sp_on 8,1:sp_on 7,0
4500 pause 200:goto Input_Seireki2:
4510 case 5:
4520 No=2:sp_on 9,1:sp_on 8,0
4530 pause 200:goto Input_Seireki2:
4540 case 2:
4550 No=0:sp_on 13,1:sp_on 9,0
4560 pause 200:goto Input_Seireki2:
4570 case 0:
4580 pause 200:goto Input_Seireki2:
4590 case 7:
4600 No=4:sp_on 5,1:sp_on 4,0
4610 pause 200:goto Input_Seireki2:
4620 case 4:
4630 No=1:sp_on 6,1:sp_on 5,0
4640 pause 200:goto Input_Seireki2:
4650 case 1:
4660 pause 200:goto Input_Seireki2:
4670 end select
4680 endif
4690 '左へボタン 十字キー　左　or 　カーソル左
4700 if ((y2 = -1) or (key$ = chr$(29))) then
4710 select case No
4720 'Ok ボタン  Okから　左　０に行く
4730 case -1:
4740 No=0:sp_on 13,1:sp_on 14,0
4750 pause 200:goto Input_Seireki2:
4760 '0 ボタン  左　何もしない
4770 case 0:
4780 pause 200:goto Input_Seireki2:
4790 case 3:
4800 No=2:sp_on 9,1:sp_on 12,0:
4810 pause 200:goto Input_Seireki2:
4820 case 2:
4830 No=1:sp_on 6,1:sp_on 9,0:
4840 pause 200:goto Input_Seireki2:
4850 case 1:
4860 pause 200:goto Input_Seireki2:
4870 case 6:
4880 No=5:sp_on 8,1:sp_on 11,0
4890 pause 200:goto Input_Seireki2:
4900 case 5:
4910 No=4:sp_on 5,1:sp_on 8,0
4920 pause 200:goto Input_Seireki2:
4930 case 4:
4940 pause 200:goto Input_Seireki2:
4950 case 9:
4960 No=8:sp_on 7,1:sp_on 10,0
4970 pause 200:goto Input_Seireki2:
4980 case 8:
4990 No=7:sp_on 4,1:sp_on 7,0
5000 pause 200:goto Input_Seireki2:
5010 case 7:
5020 pause 200:goto Input_Seireki2:
5030 end select
5040 endif
5050 '右  十字キー　右　or カーソル　右
5060 if ((y2 = 1) or (key$ = chr$(28))) then
5070 select case No
5080 '0ボタンからokボタン右に移動
5090 case 0:
5100 No=-1:sp_on 14,1:sp_on 13,0
5110 pause 200:goto Input_Seireki2:
5120 '0ボタンからokボタン 右に移動　ここまで
5130 'OKボタンで右を押して何もしない
5140 case -1:
5150 pause 200:goto Input_Seireki2:
5160 case 1:
5170 No=2:sp_on 9,1:sp_on 6,0
5180 pause 200:goto Input_Seireki2:
5190 case 2:
5200 No=3:sp_on 12,1:sp_on 9,0
5210 pause 200:goto Input_Seireki2:
5220 case 3:
5230 pause 200:goto Input_Seireki2:
5240 case 4:
5250 No=5:sp_on 8,1:sp_on 5,0
5260 pause 200:goto Input_Seireki2:
5270 case 5:
5280 No=6:sp_on 11,1:sp_on 8,0
5290 pause 200:goto Input_Seireki2:
5300 case 7:
5310 No=8:sp_on 7,1:sp_on 4,0
5320 pause 200:goto Input_Seireki2:
5330 case 8:
5340 No=9:sp_on 10,1:sp_on 7,0
5350 pause 200:goto Input_Seireki2:
5360 case 9:
5370 pause 200:goto Input_Seireki2:
5380 case 6:
5390 pause 200:goto Input_Seireki2:
5400 end select
5410 'Okから右ボタンを押して何もしない ここまで
5420 endif
5430 '十字キー　ここまで
5440 if ((bg=2) or (key$=chr$(13))) then
5450 select case count
5460 case 0:
5470 count=1
5480 if (No=-1) then
5490 count=0
5500 'Okボタンを押したとき
5510 goto Input_Seireki2:
5520 else
5530 '===================================
5540 'Okボタン以外が押されたとき  1桁目の入力
5550 '===================================
5560 count2=1
5570 if (No >= 1 and No <= 2) then
5580 buf_year$="":buf_year$ = str$(No)
5590 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5600 n1 = len("生まれた年代(西暦4桁): ")
5610 locate 2,3
5620 color rgb(255,255,255)
5630 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5640 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5650 'print "生まれた年代(西暦4桁):";buf_year2$
5660 print buf_Born_Year_line$
5670 goto Input_Seireki2:
5680 else
5690 count=0
5700 ui_msg"数字が範囲外になります。"
5710 buf_year$="":buf_year=0
5720 goto Input_Seireki2:
5730 endif
5740 endif
5750 case 1:
5760 count = 2
5770 if (No = -1) then
5780 count = 1
5790 goto Input_Seireki2:
5800 else
5810 count2 = 1
5820 b = val(buf_year$)
5830 buf_year = b * 10 + No
5840 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
5850 locate 2,3
5860 color rgb(255,255,255)
5870 print "                                                                "
5880 locate 2,3
5890 print "生まれた年代(西暦4桁):";buf_year2$
5900 'if (No = -1) then
5910 'count=1
5920 goto Input_Seireki2:
5930 endif
5940 case 2:
5950 count=3
5960 if (No=-1) then
5970 count =2
5980 goto Input_Seireki2:
5990 else
6000 b = val(buf_year$)
6010 buf_year = b*10 + No
6020 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6030 locate 2,3
6040 color rgb(255,255,255)
6050 print "                                        "
6060 locate 2,3
6070 print "生まれた年代(西暦4桁):";buf_year2$
6080 goto Input_Seireki2:
6090 endif
6100 case 3:
6110 count=4
6120 if (No = -1) then
6130 count=3
6140 goto Input_Seireki2:
6150 else
6160 b = val(buf_year$)
6170 buf_year = b * 10 + No
6180 buf_year$ = str$(buf_year)
6190 locate 2,3
6200 color RGB(255,255,255)
6210 print "                                      "
6220 locate 2,3
6230 print "生まれた年代(西暦4桁):";buf_year$
6240 buf_year=val(buf_year$)
6250 'year=val(buf_year$)
6260 'if (No=-1) then
6270 'goto Input_Born_Month:
6280 'else
6290 goto Input_Seireki2:
6300 endif
6310 case 4:
6320 'bufyear=buf_year
6330 if (No = -1) then
6340 buf_year = val(buf_year$)
6350 bufyear = buf_year
6360 sp_on 14,0
6370 goto Input_Born_Month:
6380 else
6390 goto Input_Seireki2:
6400 endif
6410 end select
6420 endif
6430 '=========================
6440 'bg2　キャンセルボタン
6450 '=========================
6460 if (bg2 = 2) then
6470 select case count2
6480 case 0:
6490 'Okボタンを押したときの処理
6500 if (No = -1) then
6510 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6520 'count = 0
6530 locate 2,3
6540 color rgb(255,255,255)
6550 print "                                      "
6560 locate 2,3
6570 print "生まれた年代（西暦4桁):";buf_year$
6580 '=============================
6590 'case 0:前の画面に戻る 数秘術トップメニュー
6600 '=============================
6610 sp_on 14,0:goto Kabara_TopScreen:
6620 else
6630 'count=0
6640 '(buf_year=0) then
6650 buf_year = 0:buf_year$ = string$(4,"*")
6660 goto Input_Seireki2:
6670 'endif
6680 endif
6690 case 1:
6700 if (No = -1) then
6710 count2 = 0:count = 0
6720 buf$=right$(buf_year$,1)
6730 if (val(buf$) >= 1 and val(buf$) <= 9) then
6740 buf_year$ = "****":buf_year=0
6750 color rgb(255,255,255)
6760 locate 0,3:
6770 print "                                      "
6780 locate 2,3
6790 print "生まれた年代（西暦4桁):" + buf_year$
6800 goto Input_Seireki2:
6810 endif
6820 else
6830 endif
6840 end select
6850 endif
6860 end
6870 'Input"生れた年代(4桁,〜2025年):",year
6880 'if year > 2025 then goto Input_Seireki:
6890 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6900 '"4桁目"
6910 'bufyear4 = fix(year / 1000)
6920 '"3桁目"
6930 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6940 '"2桁目"
6950 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6960 '"1桁目"
6970 'bufyear1 = fix((year - ((bufyear4*
6980 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6990 '生れた月を入力
7000 Input_Born_Month:
7010 cls 3:play "":count=0:count2=0
7020 'No=-1:Okのとき
7030 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7040 for i=0 to 1
7050 buf_month(i)=0
7060 next i
7070 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7080 gload Gazo$ + "Screen1.png",0,0,0
7090 gload Gazo$ + "downscreen.png",0,0,800
7100 'Init"kb:2"
7110 '音声ファイル再生 2023.06.07
7120 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7130 font 48
7140 locate 0,1
7150 '文字色：黒　 color rgb(0,0,0)
7160 '文字色:白
7170 color rgb(255,255,255)
7180 print "生まれた月を入れて下さい" + chr$(13)
7190 '文字色:白
7200 color rgb(255,255,255)
7210 locate 2,3
7220 '文字色:白
7230 print "生まれた月(1月~12月):";buf_Month$
7240 color rgb(255,255,255)
7250 'locate 4,6:print ":7"
7260 'locate 9,6:print ":8"
7270 'locate 12,6:print ":9"
7280 locate 4,6
7290 '文字色:赤
7300 print ":7  :8  :9" + chr$(13)
7310 color rgb(255,255,255)
7320 locate 4,8
7330 print ":4  :5  :6" + chr$(13)
7340 color rgb(255,255,255)
7350 locate 4,10
7360 print ":1  :2  :3" + chr$(13)
7370 locate 4,12
7380 print "    :0"
7390 locate 12,12
7400 color rgb(255,0,0)
7410 print ":Ok"
7420 sp_on 4,0: sp_on 5,0:sp_on 6,0
7430 sp_on 7,0:sp_on 8,0:sp_on 9,0
7440 sp_on 10,0:sp_on 11,0:sp_on 12,0
7450 sp_on 13,0:sp_on 14,1
7460 Input_Born_Month2:
7470 key$="":bg=0:y=0:y2=0:bg2=0
7480 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7490 key$ = inkey$
7500 bg = strig(1)
7510 y = stick(1)
7520 y2 = stick(0)
7530 bg2 = strig(0)
7540 pause 5
7550 wend
7560 '十字キー　ここから
7570 '上の矢印　または、十字キー上
7580 if ((y = -1) or (key$ = chr$(30))) then
7590 select case No
7600 'No=-1:okのとき:初期の状態
7610 '0kボタンから３に移動
7620 '上に行く 処理
7630 case -1:
7640 No=3:sp_on 12,1:sp_on 14,0
7650 pause 200:goto Input_Born_Month2:
7660 '選択肢:3
7670 '3ボタンから 6に移動
7680 case 3:
7690 No=6:sp_on 12,0:sp_on 11,1
7700 pause 200:goto Input_Born_Month2:
7710 '6ボタンから ９に移動
7720 case 6:
7730 No=9:sp_on 10,1:sp_on 11,0
7740 pause 200:goto Input_Born_Month2:
7750 '6ボタンから ９に移動　ここまで
7760 '9で上を押して何もしない
7770 case 9:
7780 '何もしない
7790 No=9
7800 pause 200:goto Input_Born_Month2:
7810 '9で上を押しても何もしない　ここまで
7820 '上　 0ボタンから2ボタン
7830 'sp_on 6,1:1
7840 'sp_on 8,1:5
7850 'sp_on 7,1:7
7860 case 0:
7870 No=2:sp_on 13,0:sp_on 9,1:
7880 pause 200:goto Input_Born_Month2:
7890 '上  0ボタンから2ボタン　ここまで
7900 '2から５になる 上
7910 case 2:
7920 No=5:sp_on 8,1:sp_on 9,0:
7930 pause 200:goto Input_Born_Month2:
7940 case 5:
7950 No=8:sp_on 7,1:sp_on 8,0
7960 pause 200:goto Input_Born_Month2:
7970 case 8:
7980 pause 200:goto Input_Born_Month2:
7990 case 1:
8000 No=4:sp_on 5,1:sp_on 6,0
8010 pause 200:goto Input_Born_Month2:
8020 case 4:
8030 No=7:sp_on 4,1:sp_on 5,0
8040 pause 200:goto Input_Born_Month2:
8050 case 7:
8060 pause 200:goto Input_Born_Month2:
8070 end select
8080 endif
8090 '左３　ここまで
8100 '下の矢印
8110 '中央 2
8120 if ((y=1) or (key$ = chr$(31))) then
8130 select case No
8140 '9から６に下げる
8150 case 9:
8160 No=6:sp_on 11,1:sp_on 10,0
8170 pause 200:goto Input_Born_Month2:
8180 '6から３に下げる
8190 case 6:
8200 No=3:sp_on 12,1:sp_on 11,0
8210 pause 200:goto Input_Born_Month2:
8220 '3から０ｋに変える
8230 case 3:
8240 No=-1:sp_on 14,1:sp_on 12,0
8250 pause 200:goto Input_Born_Month2:
8260 'Okから下のボタンを押しても何もしない
8270 case -1:
8280 pause 200:goto Input_Born_Month2:
8290 case 8:
8300 No=5:sp_on 8,1:sp_on 7,0
8310 pause 200:goto Input_Born_Month2:
8320 case 5:
8330 No=2:sp_on 9,1:sp_on 8,0
8340 pause 200:goto Input_Born_Month2:
8350 case 2:
8360 No=0:sp_on 13,1:sp_on 9,0
8370 pause 200:goto Input_Born_Month2:
8380 case 0:
8390 pause 200:goto Input_Born_Month2:
8400 case 7:
8410 No=4:sp_on 5,1:sp_on 4,0
8420 pause 200:goto Input_Born_Month2:
8430 case 4:
8440 No=1:sp_on 6,1:sp_on 5,0
8450 pause 200:goto Input_Born_Month2:
8460 case 1:
8470 pause 200:goto Input_Born_Month2:
8480 end select
8490 endif
8500 '左へボタン 十字キー　左　or 　カーソル左
8510 if ((y2 = -1) or (key$ = chr$(29))) then
8520 select case No
8530 'Ok ボタン  Okから　左　０に行く
8540 case -1:
8550 No=0:sp_on 13,1:sp_on 14,0
8560 pause 200:goto Input_Born_Month2:
8570 '0 ボタン  左　何もしない
8580 case 0:
8590 pause 200:goto Input_Born_Month2:
8600 case 3:
8610 No=2:sp_on 9,1:sp_on 12,0:
8620 pause 200:goto Input_Born_Month2:
8630 case 2:
8640 No=1:sp_on 6,1:sp_on 9,0:
8650 pause 200:goto Input_Born_Month2:
8660 case 1:
8670 pause 200:goto Input_Born_Month2:
8680 case 6:
8690 No=5:sp_on 8,1:sp_on 11,0
8700 pause 200:goto Input_Born_Month2:
8710 case 5:
8720 No=4:sp_on 5,1:sp_on 8,0
8730 pause 200:goto Input_Born_Month2:
8740 case 4:
8750 pause 200:goto Input_Born_Month2:
8760 case 9:
8770 No=8:sp_on 7,1:sp_on 10,0
8780 pause 200:goto Input_Born_Month2:
8790 case 8:
8800 No=7:sp_on 4,1:sp_on 7,0
8810 pause 200:goto Input_Born_Month2:
8820 case 7:
8830 pause 200:goto Input_Born_Month2:
8840 end select
8850 endif
8860 '右  十字キー　右　or カーソル　右
8870 if ((y2 = 1) or (key$ = chr$(28))) then
8880 select case No
8890 '0ボタンからokボタン右に移動
8900 case 0:
8910 No=-1:sp_on 14,1:sp_on 13,0
8920 pause 200:goto Input_Born_Month2:
8930 '0ボタンからokボタン 右に移動　ここまで
8940 'OKボタンで右を押して何もしない
8950 case -1:
8960 pause 200:goto Input_Born_Month2:
8970 case 1:
8980 No=2:sp_on 9,1:sp_on 6,0
8990 pause 200:goto Input_Born_Month2:
9000 case 2:
9010 No=3:sp_on 12,1:sp_on 9,0
9020 pause 200:goto Input_Born_Month2:
9030 case 3:
9040 pause 200:goto Input_Born_Month2:
9050 case 4:
9060 No=5:sp_on 8,1:sp_on 5,0
9070 pause 200:goto Input_Born_Month2:
9080 case 5:
9090 No=6:sp_on 11,1:sp_on 8,0
9100 pause 200:goto Input_Born_Month2:
9110 case 7:
9120 No=8:sp_on 7,1:sp_on 4,0
9130 pause 200:goto Input_Born_Month2:
9140 case 8:
9150 No=9:sp_on 10,1:sp_on 7,0
9160 pause 200:goto Input_Born_Month2:
9170 case 9:
9180 pause 200:goto Input_Born_Month2:
9190 case 6:
9200 pause 200:goto Input_Born_Month2:
9210 end select
9220 'Okから右ボタンを押して何もしない ここまで
9230 endif
9240 '十字キー　ここまで
9250 '右の丸ボタン　決定キー
9260 if ((bg=2) or (key$=chr$(13))) then
9270 select case count
9280 case 0:
9290 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9300 if (buf_month = 1 or buf_month = 2) then
9310 locate 2,3
9320 color RGB(255,255,255)
9330 print "生まれた月(1月~12月):";buf_Month2$
9340 else
9350 locate 2,3
9360 color Rgb(255,255,255)
9370 print "生まれた月(1月~12月):";buf_Month$
9380 endif
9390 goto Input_Born_Month2:
9400 case 1:
9410 count = 2:c = No
9420 c = val(buf_Month$)
9430 if (No = -1) then
9440 'if No=1 or No=2 then
9450 'endif
9460 month = buf_month
9470 buf_month=val(buf_Month$)
9480 month=buf_month
9490 '生まれた日に飛ぶ
9500 goto Input_Born_Day:
9510 else
9520 buf_month = c*10 + No
9530 buf_Month$= str$(buf_month)
9540 locate 2,3
9550 color Rgb(255,255,255)
9560 print "生まれた月(1月~12月):";buf_Month$
9570 goto Input_Born_Month2:
9580 endif
9590 case 2:
9600 count=3:count2=1
9610 'c= val(buf_Month$)
9620 'buf_month = c*10 + No
9630 'buf_Month$ = str$(buf_month)
9640 'locate 2,3
9650 'print "生まれた月(1月～12月):";buf_Month$
9660 'goto Input_Born_Month2:
9670 'case 3:
9680 'count=4
9690 'b=val(buf_month$)
9700 'buf_month=c*10+No
9710 'buf_Month$=str$(buf_month)
9720 'locate 2,3
9730 'print "生まれた月(1月～12月):";buf_Month$
9740 'buf_month=val(buf_Month$)
9750 'year=val(buf_year$)
9760 if (No=-1) then
9770 goto Input_Born_Day:
9780 else
9790 'goto Input_Born_Month2:
9800 endif
9810 'case 4:
9820 'bufyear=buf_year
9830 'if (No=-1) then
9840 'buf_month = val(buf_Month$)
9850 'month = buf_month
9860 'sp_on 14,0
9870 'goto Input_Born_Day:
9880 'else
9890 'goto Input_Born_Month2:
9900 'endif
9910 end select
9920 endif
9930 '左の丸ボタン　キャンセル
9940 if (bg2=2) then
9950 select case count2
9960 case 0:
9970 if (No = -1) then
9980 buf_month=0:buf_Month$="**"
9990 count2=0:count=0
10000 locate 0,3:print "                                              "
10010 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10020 'if (buf_month > 1) then
10030 sp_on 14,0:goto Input_Born_Month2:
10040 'goto rewrite:
10050 else
10060 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10070 buf_month=0:buf_Month$="**"
10080 locate 2,3
10090 color rgb(255,255,255)
10100 print "                                       "
10110 goto rewrite:
10120 if (No>2) then
10130 ui_msg"値が範囲外です。"
10140 goto rewrite:
10150 endif
10160 endif
10170 'endif
10180 rewrite:
10190 locate 2,3
10200 color rgb(255,255,255)
10210 print "                                      "
10220 locate 2,3
10230 print "生まれた月(1月~12月):";buf_Month$
10240 goto Input_Born_Month2:
10250 endif
10260 case 1:
10270 buf_Month$="**":buf_month=0
10280 if No=-1 then
10290 count2=2:count=0
10300 locate 0,3
10310 print "                                      "
10320 locate 2,3:
10330 print "生まれた月(1月~12月):"+buf_Month$
10340 goto Input_Born_Month2:
10350 endif
10360 case 2:
10370 sp_on 14,0:goto Input_Seireki:
10380 end select
10390 endif
10400 'endif
10410 end
10420 'end
10430 '生れた日を入力
10440 Input_Born_Day:
10450 '生まれた日入力
10460 cls 3:play ""
10470 'No=-1:Okのとき
10480 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10490 for i=0 to 1
10500 buf_day(i)=0
10510 next i
10520 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10530 gload Gazo$ + "Screen1.png",0,0,0
10540 gload Gazo$ + "downscreen.png",0,0,800
10550 'Init"kb:2"
10560 '音声ファイル再生 2023.06.07
10570 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10580 font 48
10590 locate 0,1
10600 '文字色：黒　 color rgb(0,0,0)
10610 color rgb(255,255,255)
10620 print "生まれた日を入れて下さい" + chr$(13)
10630 color rgb(255,255,255)
10640 locate 2,3
10650 print "生まれた日(1日~31日):";buf_Day$
10660 color rgb(255,255,255)
10670 'locate 4,6:print ":7"
10680 'locate 9,6:print ":8"
10690 'locate 12,6:print ":9"
10700 locate 4,6
10710 print ":7  :8  :9" + chr$(13)
10720 '=======================
10730 'テンキー　色　白　決定ボタン　青
10740 '=======================
10750 color rgb(255,255,255)
10760 locate 4,8
10770 print ":4  :5  :6" + chr$(13)
10780 color rgb(255,255,255)
10790 locate 4,10
10800 print ":1  :2  :3" + chr$(13)
10810 locate 4,12
10820 print "    :0"
10830 locate 12,12
10840 color rgb(255,0,0)
10850 print ":Ok"
10860 sp_on 4,0: sp_on 5,0:sp_on 6,0
10870 sp_on 7,0:sp_on 8,0:sp_on 9,0
10880 sp_on 10,0:sp_on 11,0:sp_on 12,0
10890 sp_on 13,0:sp_on 14,1
10900 Input_Born_Day2:
10910 key$="":bg=0:y=0:y2=0:bg2=0
10920 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10930 key$ = inkey$
10940 bg = strig(1)
10950 y = stick(1)
10960 y2 = stick(0)
10970 bg2 = strig(0)
10980 pause 5
10990 wend
11000 '十字キー　ここから
11010 '上の矢印　または、十字キー上
11020 if ((y = -1) or (key$ = chr$(30))) then
11030 select case No
11040 'No=-1:okのとき:初期の状態
11050 '0kボタンから３に移動
11060 '上に行く 処理
11070 case -1:
11080 No=3:sp_on 12,1:sp_on 14,0
11090 pause 200:goto Input_Born_Day2:
11100 '選択肢:3
11110 '3ボタンから 6に移動
11120 case 3:
11130 No=6:sp_on 12,0:sp_on 11,1
11140 pause 200:goto Input_Born_Day2:
11150 '6ボタンから ９に移動
11160 case 6:
11170 No=9:sp_on 10,1:sp_on 11,0
11180 pause 200:goto Input_Born_Day2:
11190 '6ボタンから ９に移動　ここまで
11200 '9で上を押して何もしない
11210 case 9:
11220 '何もしない
11230 No=9
11240 pause 200:goto Input_Born_Day2:
11250 '9で上を押しても何もしない　ここまで
11260 '上　 0ボタンから2ボタン
11270 'sp_on 6,1:1
11280 'sp_on 8,1:5
11290 'sp_on 7,1:7
11300 case 0:
11310 No=2:sp_on 13,0:sp_on 9,1:
11320 pause 200:goto Input_Born_Day2:
11330 '上  0ボタンから2ボタン　ここまで
11340 '2から５になる 上
11350 case 2:
11360 No=5:sp_on 8,1:sp_on 9,0:
11370 pause 200:goto Input_Born_Day2:
11380 case 5:
11390 No=8:sp_on 7,1:sp_on 8,0
11400 pause 200:goto Input_Born_Day2:
11410 case 8:
11420 pause 200:goto Input_Born_Day2:
11430 case 1:
11440 No=4:sp_on 5,1:sp_on 6,0
11450 pause 200:goto Input_Born_Day2:
11460 case 4:
11470 No=7:sp_on 4,1:sp_on 5,0
11480 pause 200:goto Input_Born_Day2:
11490 case 7:
11500 pause 200:goto Input_Born_Day2:
11510 end select
11520 endif
11530 '左３　ここまで
11540 '下の矢印
11550 '中央 2
11560 if ((y=1) or (key$ = chr$(31))) then
11570 select case No
11580 '9から６に下げる
11590 case 9:
11600 No=6:sp_on 11,1:sp_on 10,0
11610 pause 200:goto Input_Born_Day2:
11620 '6から３に下げる
11630 case 6:
11640 No=3:sp_on 12,1:sp_on 11,0
11650 pause 200:goto Input_Born_Day2:
11660 '3から０ｋに変える
11670 case 3:
11680 No=-1:sp_on 14,1:sp_on 12,0
11690 pause 200:goto Input_Born_Day2:
11700 'Okから下のボタンを押しても何もしない
11710 case -1:
11720 pause 200:goto Input_Born_Day2:
11730 case 8:
11740 No=5:sp_on 8,1:sp_on 7,0
11750 pause 200:goto Input_Born_Day2:
11760 case 5:
11770 No=2:sp_on 9,1:sp_on 8,0
11780 pause 200:goto Input_Born_Day2:
11790 case 2:
11800 No=0:sp_on 13,1:sp_on 9,0
11810 pause 200:goto Input_Born_Day2:
11820 case 0:
11830 pause 200:goto Input_Born_Day2:
11840 case 7:
11850 No=4:sp_on 5,1:sp_on 4,0
11860 pause 200:goto Input_Born_Day2:
11870 case 4:
11880 No=1:sp_on 6,1:sp_on 5,0
11890 pause 200:goto Input_Born_Day2:
11900 case 1:
11910 pause 200:goto Input_Born_Day2:
11920 end select
11930 endif
11940 '左へボタン 十字キー　左　or 　カーソル左
11950 if ((y2 = -1) or (key$ = chr$(29))) then
11960 select case No
11970 'Ok ボタン  Okから　左　０に行く
11980 case -1:
11990 No=0:sp_on 13,1:sp_on 14,0
12000 pause 200:goto Input_Born_Day2:
12010 '0 ボタン  左　何もしない
12020 case 0:
12030 pause 200:goto Input_Born_Day2:
12040 case 3:
12050 No=2:sp_on 9,1:sp_on 12,0:
12060 pause 200:goto Input_Born_Day2:
12070 case 2:
12080 No=1:sp_on 6,1:sp_on 9,0:
12090 pause 200:goto Input_Born_Day2:
12100 case 1:
12110 pause 200:goto Input_Born_Day2:
12120 case 6:
12130 No=5:sp_on 8,1:sp_on 11,0
12140 pause 200:goto Input_Born_Day2:
12150 case 5:
12160 No=4:sp_on 5,1:sp_on 8,0
12170 pause 200:goto Input_Born_Day2:
12180 case 4:
12190 pause 200:goto Input_Born_Day2:
12200 case 9:
12210 No=8:sp_on 7,1:sp_on 10,0
12220 pause 200:goto Input_Born_Day2:
12230 case 8:
12240 No=7:sp_on 4,1:sp_on 7,0
12250 pause 200:goto Input_Born_Day2:
12260 case 7:
12270 pause 200:goto Input_Born_Day2:
12280 end select
12290 endif
12300 '右  十字キー　右　or カーソル　右
12310 if ((y2 = 1) or (key$ = chr$(28))) then
12320 select case No
12330 '0ボタンからokボタン右に移動
12340 case 0:
12350 No=-1:sp_on 14,1:sp_on 13,0
12360 pause 200:goto Input_Born_Day2:
12370 '0ボタンからokボタン 右に移動　ここまで
12380 'OKボタンで右を押して何もしない
12390 case -1:
12400 pause 200:goto Input_Born_Day2:
12410 case 1:
12420 No=2:sp_on 9,1:sp_on 6,0
12430 pause 200:goto Input_Born_Day2:
12440 case 2:
12450 No=3:sp_on 12,1:sp_on 9,0
12460 pause 200:goto Input_Born_Day2:
12470 case 3:
12480 pause 200:goto Input_Born_Day2:
12490 case 4:
12500 No=5:sp_on 8,1:sp_on 5,0
12510 pause 200:goto Input_Born_Day2:
12520 case 5:
12530 No=6:sp_on 11,1:sp_on 8,0
12540 pause 200:goto Input_Born_Day2:
12550 case 7:
12560 No=8:sp_on 7,1:sp_on 4,0
12570 pause 200:goto Input_Born_Day2:
12580 case 8:
12590 No=9:sp_on 10,1:sp_on 7,0
12600 pause 200:goto Input_Born_Day2:
12610 case 9:
12620 pause 200:goto Input_Born_Day2:
12630 case 6:
12640 pause 200:goto Input_Born_Day2:
12650 end select
12660 'Okから右ボタンを押して何もしない ここまで
12670 endif
12680 '十字キー　ここまで
12690 '右の丸ボタンを押したとき
12700 if ((bg = 2) or (key$ = chr$(13))) then
12710 'count :決定ボタンを押した回数
12720 select case (count mod 3)
12730 '1桁目入力
12740 case 0:
12750 count = 1:
12760 if (No = -1) then
12770 '1桁目　OKでは何もしない
12780 'goto check:
12790 else
12800 'ok以外のボタンを押したとき
12810 buf_day = No:buf_Day$ = str$(No)
12820 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12830 locate 2,3
12840 color RGB(255,255,255)
12850 print "生まれた日(1日~31日):";buf_Day2$
12860 endif
12870 check:
12880 if (No >= 1 and No <= 9) then
12890 sp_on 14,0
12900 goto Input_Born_Day2:
12910 else
12920 sp_on 14,0
12930 goto complate:
12940 endif
12950 case 1:
12960 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12970 count = 2:
12980 'locate 2,3
12990 'color RGB(255,255,255)
13000 'print "生まれた日(1日~31日):";buf_Day$
13010 'Okボタンを押したときの処理
13020 '入力値　10未満のとき
13030 'c = buf_day
13040 if (No = -1) then
13050 'c=buf_day
13060 ' buf_day = c
13070 'buf_Day$ = str$(buf_day)
13080 '10以下のとき
13090 if (buf_day < 10) then
13100 sp_on 14,0
13110 goto complate:
13120 endif
13130 else
13140 'c = No
13150 buf_day = c * 10 + No
13160 'buf_day = c
13170 buf_Day$ =str$(buf_day)
13180 locate 2,3
13190 color Rgb(255,255,255)
13200 print "生まれた日(1日~31日):";buf_Day$
13210 goto Input_Born_Day2:
13220 endif
13230 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13240 case 2:
13250 count=0
13260 'c=val(buf_Day$)
13270 'buf_day=c*10+No
13280 'buf_Day$=str$(buf_day)
13290 'day=buf_day
13300 'locate 2,3
13310 'print "生まれた日(1日〜31日):";buf_Day$
13320 'No=-1:ok ボタンを押したとき
13330 if (No = -1) then
13340 if ((buf_day > 0) and (buf_day < 32)) then
13350 sp_on 14,0
13360 goto complate:
13370 else
13380 goto Input_Born_Day2:
13390 endif
13400 'Okボタン以外を押したとき
13410 else
13420 c=val(buf_Day$)
13430 buf_day = c * 10 + No
13440 buf_Day$ = str$(buf_day)
13450 locate 2,3
13460 print "生まれた日(1日~31日):";buf_Day$
13470 'goto Input_Born_Day2:
13480 endif
13490 case 3:
13500 count = 4
13510 c=val(buf_day$)
13520 buf_day = c * 10 + No
13530 buf_day$ = str$(buf_day)
13540 locate 2,3
13550 print "生まれた日を入れてください:";buf_Day$
13560 year = val(buf_year$)
13570 if (No = -1) then
13580 'goto Input_Born_Day:
13590 sp_on 14,0:No=0
13600 goto complate:
13610 else
13620 goto Input_Born_Month2:
13630 endif
13640 'case 4:
13650 'bufyear=buf_year
13660 'if (No=-1) then
13670 'buf_day = val(buf_day$)
13680 'bufday = buf_day
13690 'sp_on 14,0
13700 'goto complate:
13710 'else
13720 'goto Input_Born_Day2:
13730 'endif
13740 end select
13750 endif
13760 if (bg2=2) then
13770 select case count2
13780 case 0:
13790 if (No=-1) then
13800 'buf_day=0:buf_Day$="**"
13810 if (buf_day>=1 and buf_day<=31) then
13820 count=0:No=0
13830 buf_day=0:buf_Day$="**"
13840 'goto rewrite_day:
13850 else
13860 buf_day=0:buf_Day$="**"
13870 ui_msg"値が範囲外です"
13880 endif
13890 goto rewrite_day:
13900 else
13910 goto rewrite_day:
13920 endif
13930 rewrite_day:
13940 locate 2,3
13950 color rgb(255,255,255)
13960 print "                                      "
13970 locate 2,3
13980 print "生まれた日(1日~31日):";buf_Day$
13990 goto Input_Born_Day2:
14000 end select
14010 endif
14020 '--------------------------Input_Born_Day:-------------------------------------------
14030 complate:
14040 suhiNo = buf_year + buf_month + buf_day
14050 'if (suhiNo < 1000) then
14060 a1 = fix(suhiNo / 1000)
14070 a2 = fix(suhiNo/100) - (a1 * 10)
14080 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14090 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14100 'endif
14110 bufsuhiNo = a1+a2+a3+a4
14120 recomp:
14130 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14140 'bufsuhiNo=a6
14150 goto Kabara_Result_Screen:
14160 else
14170 a5 = fix(bufsuhiNo / 10)
14180 a6 = bufsuhiNo - a5 * 10
14190 bufsuhiNo = a6 + a5
14200 if (bufsuhiNo = 10) then
14210 bufsuhiNo=1
14220 endif
14230 goto Kabara_Result_Screen:
14240 endif
14250 Kabara_Result_Screen:
14260 cls 3:
14270 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14280 gload Gazo$ + "downscreen.png",0,0,800
14290 init "kb:4"
14300 '
14310 play ""
14320 select case (bufsuhiNo)
14330 case 1:
14340 play Voice$ + "Result_Kabara_1_20230607.mp3"
14350 case 2:
14360 play Voice$ + "Result_Kabara_2_20231112.mp3"
14370 case 3:
14380 play Voice$ + "Result_Kabara_3_20230607.mp3"
14390 case 4:
14400 play Voice$ + "Result_Kabara_4_20230607.mp3"
14410 case 5:
14420 play Voice$ + "Result_Kabara_5_20231112.mp3"
14430 case 6:
14440 play Voice$ + "Result_Kabara_6_20230607.mp3"
14450 case 7:
14460 play Voice$ + "Result_Kabara_7_20230607.mp3"
14470 case 8:
14480 play Voice$ + "Result_Kabara_8_20230607.mp3"
14490 case 9:
14500 play Voice$ + "Result_Kabara_9_20230607.mp3"
14510 case 11:
14520 play Voice$ + "Result_Kabara_11_20230607.mp3"
14530 case 22:
14540 play Voice$ + "Result_Kabara_22_20230607.mp3"
14550 case 33:
14560 play Voice$ + "Result_Kabara_33_20230607.mp3"
14570 end select
14580 font 48
14590 key$ = "":bg = 0:bg2=0
14600 'COLOR rgb(255,255,255)
14610 'print "●診断結果"+chr$(13)
14620 locate 0,2
14630 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14640 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14650 locate 0,15:
14660 color rgb(255,255,255)
14670 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14680 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14690 key$ = inkey$
14700 bg = strig(1)
14710 bg2 = strig(0)
14720 pause 5
14730 wend
14740 'Enter or JoyPad right
14750 if ((key$ = chr$(13)) or (bg = 2)) then
14760 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14770 endif
14780 if ((bg2=2)) then
14790 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14800 endif
14810 'suhiNo1 = fix(bufsuhiNo / 10)
14820 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14830 'bufsuhiNo = suhiNo1 + suhiNo2
14840 'goto recomp:
14850 'endif
14860 'print chr$(13)
14870 'color rgb(255,0,0)
14880 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14890 'key$ = input$(1)
14900 'if key$ = chr$(13) then goto Main_Screen:
14910 '"Menu2 占いのルール"
14920 Suhi_Rule:
14930 '数秘術占いルールの表示
14940 cls 3:play "":init"kb:4"
14950 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14960 gload Gazo$ + "downscreen.png",0,0,800
14970 'cls 3:
14980 'line (0,0) - (1500,60),rgb(0,0,255),bf
14990 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
15000 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15010 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15020 locate 0,2:Font 48
15030 print chr$(13) + chr$(13)
15040 color rgb(0,0,0)
15050 print "誕生日を単数変換します";chr$(13)
15060 print "数字の範囲:1~９,11,22,33";chr$(13)
15070 print "例:1973年11月22日の場合";chr$(13)
15080 print "1+9+7+3+11+22=53 ";chr$(13)
15090 print "→ 5 + 3 = 8" + chr$(13)
15100 print "故に8が数秘ナンバーになります";chr$(13)
15110 locate 0,15
15120 color rgb(255,255,255)
15130 print "ジョイパッドの右を押してください"
15140 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15150 '"key$ = input$(1)"
15160 '"if key$ = chr$(13) then goto Main_Screen:"
15170 suhi_rule_selection:
15180 bg = 0:key$ = "":bg2=0
15190 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15200 bg = strig(1)
15210 key$ = inkey$
15220 bg2=strig(0)
15230 pause 2
15240 wend
15250 if ((bg = 2) or (key$ = chr$(13))) then
15260 pause 200:cls 4:goto Main_Screen:
15270 endif
15280 if (bg2=2) then
15290 play "":pause 200
15300 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15310 goto suhi_rule_selection:
15320 endif
15330 '2.設定
15340 '2-1.トップ画面に戻る
15350 Setting:
15360 cls 3:init"kb:4":font 48:No=0
15370 play ""
15380 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15390 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15400 gload Gazo$ + "downscreen.png",0,0,800
15410 print chr$(13) + chr$(13) + chr$(13)
15420 color rgb(255,255,255):sp_on 0,1:
15430 print "番号を選んでください" + chr$(13)
15440 print " :1.トップ画面に戻る"+ chr$(13)
15450 print " :2.未実装" + chr$(13)
15460 print " :3.未実装" + chr$(13)
15470 print " :4.未実装" + chr$(13)
15480 color rgb(0,0,0)
15490 locate 1,15:print "1.トップ画面に戻るを選択"
15500 Setting_Selection:
15510 y=0:key$="":bg=0:bg2=0
15520 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15530 'y=stick(1)
15540 key$ = inkey$
15550 bg=strig(1)
15560 bg2 = strig(0)
15570 pause 2
15580 wend
15590 if ((bg = 2) or (key$ = chr$(13))) then
15600 select case No
15610 case 0:
15620 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15630 end select
15640 endif
15650 if (bg2 = 2) then
15660 play "":pause 200
15670 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15680 goto Setting_Selection:
15690 endif
15700 '3.Help
15710 '3-1.ルールの表示
15720 '3-2.バージョン
15730 '3-3.トップに戻る
15740 Help:
15750 cls 3:Font 48:No=0
15760 play ""
15770 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15780 gload Gazo$ + "downscreen.png",0,0,800
15790 color rgb(255,255,255)
15800 print chr$(13)+chr$(13)+chr$(13)
15810 print "番号を選んでください"+chr$(13)
15820 print " :1.ルールの表示" + chr$(13)
15830 print " :2.バージョンの表示" + chr$(13)
15840 print " :3.参考文献" + chr$(13)
15850 print " :4.トップ画面に戻る" + chr$(13)
15860 color rgb(0,0,0)
15870 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15880 locate 1,15
15890 print "                                      "
15900 locate 1,15
15910 print "1.ルールの表示を選択"
15920 init"kb:4"
15930 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15940 Help_Select:
15950 bg=0:key$="":y=0:bg2=0
15960 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15970 y = stick(1)
15980 key$ = inkey$
15990 bg = strig(1)
16000 bg2 = strig(0)
16010 pause 5
16020 wend
16030 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16040 if ((y = 1) or (key$ = chr$(31))) then
16050 select case No
16060 case 0:
16070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16080 case 1:
16090 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16100 case 2:
16110 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16120 case 3:
16130 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16140 end select
16150 endif
16160 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16170 if ((y = -1) or (key$ = chr$(30))) then
16180 select case No
16190 case 0:
16200 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16210 case 1:
16220 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16230 case 2:
16240 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16250 case 3:
16260 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16270 end select
16280 endif
16290 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16300 if ((bg = 2) or (key$ = chr$(13))) then
16310 select case No
16320 case 0:
16330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16340 case 1:
16350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16360 case 2:
16370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16380 '3:Top画面に行く
16390 case 3:
16400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16410 end select
16420 endif
16430 if (bg2 = 2) then
16440 play "":pause 200
16450 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16460 goto Help_Select:
16470 endif
16480 '数秘術占い　トップ画面
16490 Kabara_TopScreen:
16500 cls 3:play ""
16510 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16520 gload Gazo$ + "downscreen.png",0,0,800
16530 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16540 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16550 init"kb:4":No=0
16560 color rgb(255,255,255)
16570 print chr$(13)+chr$(13)+chr$(13)
16580 print "番号を選んでください" + chr$(13)
16590 print " :1.数秘術占い" + chr$(13)
16600 print " :2.バーズアイグリット" + chr$(13)
16610 print " :3.相性占い" + chr$(13)
16620 print " :4.トップ画面に戻る" + chr$(13)
16630 color rgb(0,0,0)
16640 locate 1,15:print "1.数秘術占いを選択"
16650 Kabara_TopScreen2:
16660 y = 0:bg = 0:key$ = "":bg2 = 0
16670 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16680 key$ = inkey$
16690 bg = strig(1)
16700 y = stick(1)
16710 bg2 = strig(0)
16720 pause 5
16730 wend
16740 '選択ボタン
16750 'カーソル　と　ジョイパッド　の下
16760 if ((y = 1) or (key$ = chr$(31))) then
16770 select case No
16780 case 2:
16790 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16800 case 3:
16810 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16820 case 0:
16830 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16840 case 1:
16850 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16860 end select
16870 endif
16880 'カーソル　上
16890 if ((y=-1) or (key$=chr$(30))) then
16900 select case No
16910 case 0:
16920 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16930 case 1:
16940 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16950 case 2:
16960 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16970 case 3:
16980 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16990 end select
17000 endif
17010 '決定ボタン
17020 'ジョイパッドの右　or  Enter key
17030 if ((bg = 2) or (key$ = chr$(13))) then
17040 select case No
17050 case 0:
17060 '1.数秘術占い
17070 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17080 case 3:
17090 '4.メイン画面にいく
17100 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17110 case 1:
17120 '2.バースアイグリッド
17130 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17140 case 2:
17150 '3.相性占い
17160 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17170 end select
17180 endif
17190 if (bg2 = 2) then
17200 play "":pause 200
17210 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17220 goto Kabara_TopScreen2:
17230 endif
17240 '1.バースアイグリット　名入力
17250 Inputname1:
17260 cls 3:init"kb:4":font 48
17270 bg=0:key$="":y=0:No=-1:name1$="":i=1
17280 gload Gazo$ + "Selection.png",1,10,100
17290 'Line 1:☓
17300 'A:選択肢
17310 sp_def 15,(50,250),16,16
17320 'B:選択肢
17330 sp_def 16,(200,250),16,16
17340 'C:選択肢
17350 sp_def 17,(350,250),16,16
17360 'D:選択肢
17370 sp_def 18,(500,250),16,16
17380 'E:選択肢
17390 sp_def 19,(630,250),16,16
17400 'F:選択肢
17410 sp_def 20,(780,250),16,16
17420 'G:選択肢
17430 sp_def 21,(930,250),16,16
17440 'Line 2:☓
17450 'H:選択肢
17460 sp_def 22,(50,345),16,16
17470 'I:選択肢
17480 sp_def 23,(200,345),16,16
17490 'J:選択肢
17500 sp_def 24,(350,345),16,16
17510 'K:選択肢
17520 sp_def 25,(500,345),16,16
17530 'L:選択肢
17540 sp_def 26,(630,345),16,16
17550 'M:選択肢
17560 sp_def 27,(780,345),16,16
17570 'N:選択肢
17580 sp_def 28,(930,345),16,16
17590 'Line 3:☓
17600 'O:選択肢
17610 sp_def 29,(50,440),16,16
17620 'P:選択肢
17630 sp_def 30,(200,440),16,16
17640 'Q:選択肢
17650 sp_def 31,(350,440),16,16
17660 'R:選択肢
17670 sp_def 32,(500,440),16,16
17680 'S:選択肢
17690 sp_def 33,(630,440),16,16
17700 'T:選択肢
17710 sp_def 34,(780,440),16,16
17720 'U:選択肢
17730 sp_def 35,(930,440),16,16
17740 'Line 4:◯
17750 'V:選択肢
17760 sp_def 36,(50,535),16,16
17770 'W:選択肢
17780 sp_def 37,(200,535),16,16
17790 'X:選択肢
17800 sp_def 38,(350,535),16,16
17810 'Y:選択肢
17820 sp_def 39,(500,535),16,16
17830 'Z:選択肢
17840 sp_def 40,(630,535),16,16
17850 'Ok:選択肢
17860 sp_def 41,(780,535),16,16
17870 'sp_def 42,(930,535),16,16
17880 'Line 1
17890 'A
17900 sp_on 15,0
17910 'B
17920 sp_on 16,0
17930 'C
17940 sp_on 17,0
17950 'D
17960 sp_on 18,0
17970 'E
17980 sp_on 19,0
17990 'F
18000 sp_on 20,0
18010 'G
18020 sp_on 21,0
18030 'Line 1
18040 'Line 2
18050 'H
18060 sp_on 22,0
18070 'I
18080 sp_on 23,0
18090 'J
18100 sp_on 24,0
18110 'K
18120 sp_on 25,0
18130 'L
18140 sp_on 26,0
18150 'M
18160 sp_on 27,0
18170 'N
18180 sp_on 28,0
18190 'Line 2
18200 'Line 3
18210 'O
18220 sp_on 29,0
18230 'P
18240 sp_on 30,0
18250 'Q
18260 sp_on 31,0
18270 'R
18280 sp_on 32,0
18290 'S
18300 sp_on 33,0
18310 'T
18320 sp_on 34,0
18330 'U
18340 sp_on 35,0
18350 'Line 3
18360 'Line 4
18370 'V
18380 sp_on 36,0
18390 'W
18400 sp_on 37,0
18410 'X
18420 sp_on 38,0
18430 'Y
18440 sp_on 39,0
18450 'Z
18460 sp_on 40,0
18470 'Ok
18480 sp_on 41,1
18490 'Line 4
18500 'sp_on 42,1
18510 'Line 1
18520 'sp_put 15,(50,250),0,0
18530 'sp_put 16,(200,250),0,0
18540 'sp_put 17,(350,250),0,0
18550 'sp_put 18,(500,250),0,0
18560 'sp_put 19,(630,250),0,0
18570 'sp_put 20,(780,250),0,0
18580 'sp_put 21,(930,250),0,0
18590 'Line 2
18600 'sp_put 22,(50,345),0,0
18610 'sp_put 23,(200,345),0,0
18620 'sp_put 24,(350,345),0,0
18630 'sp_put 25,(500,345),0,0
18640 'sp_put 26,(630,345),0,0
18650 'sp_put 27,(780,345),0,0
18660 'sp_put 28,(930,345),0,0
18670 'Line 3
18680 'sp_put 29,(50,440),0,0
18690 'sp_put 30,(200,440),0,0
18700 'sp_put 31,(350,440),0,0
18710 'sp_put 32,(500,440),0,0
18720 'sp_put 33,(630,440),0,0
18730 'sp_put 34,(780,440),0,0
18740 'sp_put 35,(930,440),0,0
18750 'Line 4
18760 'sp_put 36,(50,535),0,0
18770 'sp_put 37,(200,535),0,0
18780 'sp_put 38,(350,535),0,0
18790 'sp_put 39,(500,535),0,0
18800 'sp_put 40,(630,535),0,0
18810 sp_put 41,(780,535),0,0
18820 'sp_put 42,(930,536),0,0
18830 gload Gazo$ + "Screen1.png",0,0,0
18840 color rgb(255,255,255)
18850 locate 1,3
18860 print "名前の姓をアルファベットで入力してください"
18870 locate 1,5
18880 print " A  B  C  D  E  F  G"
18890 locate 1,7
18900 print " H  I  J  K  L  M  N"
18910 locate 1,9
18920 print " O  P  Q  R  S  T  U"
18930 locate 1,11
18940 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
18950 locate 1,15:color rgb(0,0,0)
18960 print "名前の姓:" + name1$
18970 select_name1:
18980 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
18990 '有効ボタン
19000 '1.決定ボタン(bg:2)
19010 '2.Enter Key$:chr$(13)
19020 '3.カーソル上 (chr$(31))
19030 '4.カーソル　左 (chr$(29))
19040 '5.ジョイパッド　上 (y:1)
19050 '6:ジョイパッド　左 (y2:-1)
19060 '7:ジョイパッド　下 (y:-1)
19070 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19080 key$ = inkey$
19090 'ジョイパッドの決定:bg
19100 bg = strig(1)
19110 y = stick(1)
19120 y2 = stick(0)
19130 pause 200
19140 wend
19150 '====================================
19160 'Birds Eye Grid 名前入力
19170 '入力スタイル　アルファベット入力
19180 'sp_on:　スプライトのオンオフ
19190 'sp_put :表示位置
19200 'No:ボタン番号
19210 '====================================
19220 'カーソルで下に行く
19230 if ((y=-1) or (key$=chr$(31))) then
19240 select case No
19250 '1.Ok ボタン
19260 'sp_on スプライトのオンオフ
19270 'sp_put スプライトを表示
19280 case -1:
19290 '1.アルファベット　入力ボタン
19300 '実装未完全なので終了
19310  'Ok → T ○ :No:20=T
19320  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19330  'T  → M ○
19340 case 20:
19350   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19360  'M  →　F ○
19370 case 13:
19380   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19390  'F  → Ok
19400 case 6:
19410   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19420 end select
19430 endif
19440 '2.決定ボタン
19450 if ((key$ = chr$(13)) OR  (bg = 2)) then
19460 select case No
19470 case -1:
19480      'スプライトをOFFにする
19490      sp_on 41,0
19500 end select
19510 endif
19520 '3.カーソル　左
19530 if (key$ = chr$(29) or (y2 =-1)) then
19540 select case No
19550 'Line 4
19560 'Line 4
19570 '1.
19580 'Z:-1 :Ok ボタン
19590 'Ok → Z
19600 case -1:
19610      'Ok →　Z
19620      'Ok ボタン OFF,Z Button ON
19630      'No=26:Z
19640      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19650 '2.
19660 '26:Zボタン Z→ Y
19670 case 26:
19680      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19690 '3.
19700 '25:Yボタン  Y → X
19710 case 25:
19720      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19730 '4
19740 '24:Xボタン X → W
19750 case 24:
19760      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19770 '23:Wボタン X → W
19780 '5
19790 case 23:
19800 '22:Vボタン W → V
19810      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19820 case 22:
19830 '-1:V→ Ok
19840      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19850 'Line 3
19860 case 20:
19870 '33:T34  → S:33 :◯
19880     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19890 case 19:
19900 '32:S:33 → R:32 :◯
19910     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19920 case 18:
19930 '31:R:32 → Q:31 :◯
19940     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19950 '30:O → P :◯
19960 case 17:
19970 '30:Q:31 → P:30 :◯
19980     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19990 case 16:
20000 '29:P:30 → O:29 :◯
20010     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20020 case 15:
20030 '28:O:29 → U:21  :◯
20040  'O:OFF,U:ON
20050     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20060 '27:U:21 → T:20  :◯
20070 case 21:
20080 'U:OFF:T:ON
20090     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20100 'Line 2
20110 '26:M:13 → L:12 : ○
20120 case 13:
20130  'M:OFF,L:ON
20140    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20150 '25:L:12 → K:11 : ○
20160 case 12:
20170    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20180 '24:K:11 → J:10 : ○
20190 case 11:
20200    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20210 '23:J:10 → I:9  : ○
20220 case 10:
20230    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20240 '22:I:9 → H:8    :○
20250 case 9:
20260     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20270 '21:H:8 → N:14:   :○
20280 case 8:
20290     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20300 '20:N:14 → M:13:   :○
20310 case 14:
20320     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20330 '●.Line 1:
20340 '19:F:20 → E:19 : ☓
20350 'F:OFF,E:ON
20360 case 6:
20370     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20380 '18:E → D
20390 'E:OFF,D:ON
20400 case 5:
20410     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20420 '17:D → C
20430 'D:OFF,C:ON
20440 case 4:
20450      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20460 case 3:
20470      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20480 case 2:
20490      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20500 case 1:
20510      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20520 case 7:
20530      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20540 end select
20550 endif
20560 '上から下の方向
20570 if ((key$ = chr$(31)) or  (y = 1)) then
20580 select case No
20590 '●.1
20600 '1:A→H
20610 case 1:
20620       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20630 '2:H→O
20640 case 8:
20650       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20660 '3:O→V
20670 case 15:
20680       No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20690 '4:V→A
20700 case 22:
20710      No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20720 '●.2
20730 '5.B→I
20740 case 2:
20750      No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20760 '6.I→P
20770 case 9:
20780      No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20790 '7.P→W
20800 case 16:
20810      No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20820 '8.W→B
20830 case 23:
20840      No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20850 '●.3
20860 '9.C→J
20870 case 3:
20880      No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
20890 '10.J→Q
20900 case 10:
20910      No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20920 '11.Q→X
20930 case 17:
20940      No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
20950 '12.X→C
20960  case 24:
20970      No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20980 '●.4
20990 '13.D→K
21000   case 4:
21010      No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21020 '14.K→R
21030  case 11:
21040      No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21050 '15.R→Y
21060  case 18:
21070      No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21080 '16.Y→D
21090  case 25:
21100     No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21110 '●.5
21120 '17.E→L
21130 case 5:
21140    No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21150 '18.L→S
21160 case 12:
21170    No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21180 '19.S→Z
21190 case 19:
21200    No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21210 '20.Z→E
21220 case 26:
21230    No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21240 '●.6
21250 '21.F→M
21260 case 6:
21270    No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21280 '22.M→T
21290 case 13:
21300    No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21310 '23.T→Ok
21320 case 20:
21330    No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21340 '24.Ok→F
21350 case -1:
21360    No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21370 '●.7
21380 '25.G→N
21390 case 7:
21400    No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21410 '26.N→U
21420 case 14:
21430    No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21440 '27.U→G
21450 case 21:
21460    No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21470 end select
21480 endif
21490 '決定ボタン　で名前の姓に文字を追加。
21500 if (key$ = chr$(13) or bg = 2) then
21510 select case No
21520 'Okボタン
21530 case -1:
21540        goto Inputname2:
21550 'Aの文字
21560 case 1:
21570       'if len(n$)=0 then
21580       n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21590       'else
21600       'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21610       'endif
21620     goto select_name1:
21630 case 2:
21640       n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
21650 end select
21660 endif
21670 Input_name1_Birdseye:
21680 cls 3:init "kb:2":play ""
21690 gload Gazo$ + "Input_Birtheye2.png",0,0,0
21700 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
21710 color rgb(255,255,255)
21720 locate 1,2:print "名前をアルファベットで入れてください"
21730 color rgb(0,0,0)
21740 locate 1,5:Input "名前（姓の部分）:",name1$
21750 '27.U→G
21760 'locate 1,5:print "Hit any key"
21770 n1 = len(name1$)
21780 if (n1 < 11) then
21790 for i=1 to n1
21800 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21810 next i
21820 endif
21830 goto Inputname2:
21840 '2.グリッドアイ　姓の入力
21850 'end
21860 Inputname2:
21870 cls 3:init"kb:2":font 48:play ""
21880 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21890 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
21900 color rgb(255,255,255)
21910 locate 1,2:print "名前をアルファベットで入れてください"
21920 color rgb(0,0,0)
21930 locate 1,5:Input "名前(名の部分):",name2$
21940 n2 = len(name2$)
21950 for i=1 to n2
21960 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
21970 next i
21980 '計算領域
21990 Complate:
22000 'name1
22010 for i=0 to 25
22020 for n=1 to len(name1$)
22030 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22040 b = val(buf_chart$(i,1))
22050 buffer(b-1) = buffer(b-1) + 1
22060 endif
22070 next n
22080 next i
22090 'name2
22100 for i=0 to 25
22110 for n=1 to len(name2$)
22120 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22130 c = val(buf_chart$(i,1))
22140 buffer(c - 1) = buffer(c - 1) + 1
22150 endif
22160 next n
22170 next i
22180 '結果表示領域
22190 Result_Birtheye1:
22200 cls 3:init"kb:4":No=0:play ""
22210 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22220 gload Gazo$ + "downscreen.png",0,0,800
22230 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
22240 color rgb(255,255,255)
22250 '1の表示
22260 locate 3,14:print buffer(0);
22270 '2の表示
22280 locate 3,9:print buffer(1);
22290 '3の表示
22300 locate 3,5:print buffer(2);
22310 '4の表示
22320 locate 10,14:print buffer(3);
22330 '5の表示
22340 locate 10,9:print buffer(4);
22350 '6の表示
22360 locate 10,5:print buffer(5);
22370 '7の表示
22380 locate 15,14:print buffer(6);
22390 '8の表示
22400 locate 15,9:print buffer(7);
22410 '9の表示
22420 locate 15,5:print buffer(8);
22430 'name を大文字に変換
22440 locate 5,3:print ucase$(name1$ + name2$)
22450 color rgb(0,0,0)
22460 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22470 bg=0:key$="":bg2=0
22480 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22490 'Enterと決定ボタン
22500 key$ = inkey$
22510 bg = strig(1)
22520 bg2=strig(0)
22530 pause 200
22540 wend
22550 if ((bg=2) or (key$=chr$(13))) then
22560 'データーをクリアしてトップ画面に行く
22570 'for i=0 to 8
22580 'buffer(i)=0
22590 'next i
22600 'for n=0 to 9
22610 'buf_name1$(n) = ""
22620 'buf_name2$(n) = ""
22630 'next n
22640 'Topに行く
22650 'goto Main_Screen:
22660 '次へ
22670 goto BirdsEye_Result2:
22680 endif
22690 if (bg2=2) then
22700 'データーをクリアする
22710 for i=0 to 8
22720 buffer(i)=0
22730 next i
22740 for n=0 to 9
22750 buf_name1$(n)=""
22760 buf_name2$(n)=""
22770 next n
22780 goto Main_Screen:
22790 endif
22800 'goto Result_Birtheye1:
22810 'Result_Birtheye2:
22820 'cls 3:color rgb(255,255,255)
22830 'end
22840 'Memory 消去
22850 '
22860 '横のフォーカスライン
22870 BirdsEye_Result2:
22880 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22890 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
22900 Forcus1_buffer$(2)="○"
22910 else
22920 Forcus1_buffer$(2)="☓"
22930 endif
22940 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
22950 Forcus1_buffer$(1)="○"
22960 else
22970 Forcus1_buffer$(1) = "☓"
22980 endif
22990 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
23000 Forcus1_buffer$(0)="○"
23010 else
23020 Forcus1_buffer$(0)="☓"
23030 endif
23040 gload Gazo$ + "Screen1.png",0,0,0
23050 color rgb(255,0,0):
23060 locate 1,1
23070 print "バーズアイグリッド(フォーカスライン1)"
23080 color rgb(255,255,255)
23090 locate 1,3:
23100 print "●.横のフォーカスライン"
23110 locate 1,5
23120 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23130 locate 1,7
23140 print "2.調停者ライン:"+Forcus1_buffer$(1)
23150 locate 1,9
23160 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23170 color rgb(0,0,0)
23180 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23190 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
23200 key$=inkey$
23210 bg=strig(1)
23220 bg2=strig(0)
23230 pause 200
23240 wend
23250 if ((bg=2) or (key$=chr$(13))) then
23260 goto BirdsEye_Result3:
23270 endif
23280 if (bg2=2) then
23290 for i=0 to 8
23300 buffer(i)=0
23310 next i
23320 goto Main_Screen:
23330 endif
23340 BirdsEye_Result3:
23350 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23360 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23370 Forcus2_buffer$(2)="○"
23380 else
23390 Forcus2_buffer$(2)="☓"
23400 endif
23410 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23420 Forcus2_buffer$(1)="○"
23430 else
23440 Forcus2_buffer$(1) = "☓"
23450 endif
23460 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23470 Forcus2_buffer$(0)="○"
23480 else
23490 Forcus2_buffer$(0)="☓"
23500 endif
23510 gload Gazo$ + "Screen1.png",0,0,0
23520 color rgb(255,0,0):
23530 locate 1,1
23540 print "バーズアイグリッド(フォーカスライン2)"
23550 color rgb(255,255,255)
23560 locate 1,3:
23570 print "●.縦のフォーカスライン"
23580 locate 1,5
23590 print "1.表現者ライン:" + Forcus2_buffer$(2)
23600 locate 1,7
23610 print "2.司令塔ライン:" + Forcus2_buffer$(1)
23620 locate 1,9
23630 print "3.指導者ライン:" + Forcus2_buffer$(0)
23640 color rgb(0,0,0)
23650 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23660 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23670 key$=inkey$
23680 bg=strig(1)
23690 bg2=strig(0)
23700 pause 200
23710 wend
23720 if ((bg = 2) or (key$ = chr$(13))) then
23730 goto BirdsEye_Result4:
23740 endif
23750 if (bg2=2) then
23760 for i=0 to 8
23770 buffer(i)=0
23780 next i
23790 goto Main_Screen:
23800 endif
23810 BirdsEye_Result4:
23820 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23830 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
23840 Forcus3_buffer$(1) = "○"
23850 else
23860 Forcus3_buffer$(1) = "☓"
23870 endif
23880 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23890 Forcus3_buffer$(0) = "○"
23900 else
23910 Forcus3_buffer$(0) = "☓"
23920 endif
23930 gload Gazo$ + "Screen1.png",0,0,0
23940 color rgb(255,0,0):
23950 locate 1,1
23960 print "バーズアイグリッド(フォーカスライン3)"
23970 color rgb(255,255,255)
23980 locate 1,3:
23990 print "●.斜めのフォーカスライン"
24000 locate 1,5
24010 print "1.成功者ライン:"+Forcus3_buffer$(1)
24020 locate 1,7
24030 print "2.セレブライン:"+Forcus3_buffer$(0)
24040 color rgb(0,0,0)
24050 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
24060 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24070 key$ = inkey$
24080 bg = strig(1)
24090 bg2 = strig(0)
24100 pause 200
24110 wend
24120 if ((bg=2) or (key$=chr$(13))) then
24130  goto Result_Birtheye1:
24140 endif
24150 if (bg2=2) then
24160 'データークリア
24170 for i=0 to 8
24180  buffer(i) = 0
24190 next i
24200  goto Main_Screen:
24210 endif
24220 References1:
24230 cls 3:key$ = "":bg = 0:play "":font 48-16
24240 gload Gazo$ + "Reference1_20230703.png",0,0,0
24250 print chr$(13)+chr$(13)+chr$(13)
24260 color rgb(0,0,0)
24270 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24280 print "Author:carol Adrinne,PhD"+chr$(13)
24290 print "出版社:幻冬舎" + chr$(13)
24300 print "HP:www.carolAdrienne.jp/"+chr$(13)
24310 print "ISBN:978-4-344-01394-0"+chr$(13)
24320 print "定価:1500円 + 税"+chr$(13)
24330 color rgb(255,255,255)
24340 locate 1,23
24350 print "ジョイパッド右：次へ"
24360 while (key$ <> chr$(13) and bg <> 2)
24370 bg = strig(1)
24380 key$ = inkey$
24390 wend
24400 '
24410 if ((bg = 2) or (key$ = chr$(13))) then
24420 pause 200:goto References2:
24430 endif
24440 'ユダヤの秘儀 カバラ大占術
24450 References2:
24460 cls 3:play "":bg = 0:key$ = ""
24470 gload Gazo$ + "Reference2_20230703.png",0,0,0
24480 '参考文献２
24490 'カバラ大占術
24500 print chr$(13) + chr$(13) + chr$(13)
24510 color  rgb(0,0,0):font 48-16
24520 locate 1,3
24530 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24540 print "著者：浅野　八郎" + chr$(13)
24550 print "出版社:NON BOOK" + chr$(13)
24560 print "ISBN:4-396-10364-6" + chr$(13)
24570 print "定価:829円 + 税"
24580 color rgb(255,255,255)
24590 locate 1,23
24600 print "ジョイパッド右：トップへ行く"
24610 while ((key$ <> chr$(13)) and (bg <> 2))
24620 bg = strig(1)
24630 key$ = inkey$
24640 wend
24650 if ((bg = 2) or (key$ = chr$(13))) then
24660 pause 200:goto Main_Screen:
24670 endif
24680 end
24690 '1.数秘術　トップ画面
24700 Kabara_First_Top:
24710 cls 3:color rgb(255,255,255):play ""
24720 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
24730 gload Gazo$ + "downscreen.png",0,0,800
24740 No=0:init"kb:4"
24750 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
24760 print chr$(13);chr$(13)
24770 color rgb(255,255,255)
24780 locate 3,4:No=0
24790 print "番号選んでください" + chr$(13)
24800 print " :1.数秘術占い" + chr$(13)
24810 print " :2.トップ画面に戻る" + chr$(13)
24820 color rgb(0,0,0)
24830 sp_on 0,1
24840 locate 1,15:print "1.数秘術番号を求めるを選択"
24850 'KeyBord:true
24860 'Joy Pad:true
24870 '上、下:true
24880 '
24890 'ｂｇ：決定ボタン
24900 'カーソル　上
24910 'カーソル　下
24920 Kabara_First_Top2:
24930 key$ = "":bg = 0:y = 0:
24940 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
24950 key$ = inkey$
24960 bg = strig(1)
24970 y = stick(1)
24980 'PauseでCPUを休める
24990 pause 5
25000 wend
25010 '1.カーソル　下 処理 chr$(31)
25020 'カーソル　下
25030 if ((key$ = chr$(31)) or (y = 1)) then
25040 select case No
25050 '
25060 case 1:
25070 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
25080 case 0:
25090 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25100 'case 2:
25110 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25120 end select
25130 endif
25140 '2.カーソル　上 処理 chr$(30)
25150 if ((key$ = chr$(30)) or (y = -1)) then
25160 select case No
25170 case 0:
25180 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25190 case 1:
25200 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25210 'case 2:
25220 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25230 end select
25240 endif
25250 '3.決定 処理  bg:2 or Enter key:chr$(13)
25260 if ((bg = 2) or (key$ = chr$(13))) then
25270 select case No
25280 case 0:
25290 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25300 goto Kabara_TopScreen:
25310 'case 1:
25320 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25330 case 1:
25340 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25350 end select
25360 endif
25370 '
25380 'Kabara 相性占い トップ画面
25390 Kabara_Aishou_Top:
25400 cls 3:y=0:key$="":bg=0:No=0
25410 play ""
25420 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25430 gload Gazo$ + "downscreen.png",0,0,800
25440 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25450 print chr$(13) + chr$(13)
25460 locate 0,4:color rgb(255,255,255)
25470 'print "Ok"
25480 '
25490 print "番号を選んでください" + chr$(13)
25500 print " :1.男女2人の相性(未実装)" + chr$(13)
25510 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
25520 print " :3.トップ画面に戻る" + chr$(13)
25530 sp_on 0,1:sp_on 1,0:sp_on 2,0
25540 color rgb(0,0,0)
25550 locate 1,15:print "1.男女2人の相性占いを選択"
25560 Kabara_Aishou_Top2:
25570 key$ = "":y = 0:bg = 0:
25580 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
25590 'ジョイパッド(右) ,十字キー (上下)
25600 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
25610 y = stick(1)
25620 key$ = inkey$
25630 bg = strig(1)
25640 pause 5
25650 wend
25660 'カーソル　下 or 十字キー　下
25670 if ((key$ = chr$(31)) or (y = 1)) then
25680 select case No
25690 '選択肢　1 - 2に変更
25700 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
25710 'ok
25720 case 0:
25730 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25740 '選択肢　2 - 3に変更
25750 case 1:
25760 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
25770 'リリース時 case 2コメント解除
25780 case 2:
25790 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
25800 case else:
25810 goto Kabara_Aishou_Top2:
25820 end select
25830 endif
25840 '十字キー　上　、カーソル　上
25850 if ((key$ = chr$(30)) or (y = -1)) then
25860 select case No
25870 case 0:
25880 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25890 case 1:
25900 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
25910 case 2:
25920 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25930 case else:
25940 goto Kabara_Aishou_Top2:
25950 end select
25960 endif
25970 '十字キー　上下:選択
25980 'ジョイパッド 右:決定
25990 if ((bg = 2) or (key$ = chr$(13))) then
26000 select case No
26010 '1.男女の相性
26020 case 0:
26030 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
26040 '2ビジネスの相性
26050 case 1:
26060 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
26070 case 2:
26080 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
26090 end select
26100 endif
26110 'ビジネスの相性　
26120 '1.1人目のビジネスの相性　名前入力　1人目
26130 Business_Aishou_Input_1_parson:
26140 No=0:color RGB(255,255,255)
26150 cls 3:init "kb:2"
26160 gload Gazo$ + "Screen1.png",0,0,0
26170 gload Gazo$ + "downscreen.png",0,0,800
26180 play "":color rgb(255,0,0):name$ = ""
26190 locate 0,1
26200 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
26210 color rgb(255,255,255):
26220 locate 0,3
26230 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
26240 print "入れてください" + chr$(13)
26250 locate 0,15:color rgb(0,0,0)
26260 Input "1人目の名前:",name$
26270 'color rgb(0,0,0)
26280 'locate 0,13:print "                                     "
26290 'locate 0,13:print "1人目の名前を入力してエンターキー":
26300 'buffer_name$(0):1人目の名前
26310 buffer_name$(0) = name$:
26320 goto Business_Aishou_Input_2_Parson:
26330 '2.2人目のビジネスの相性 名前入力 2人目
26340 Business_Aishou_Input_2_Parson:
26350 cls 3:init "kb:2":name$ = "":No=0
26360 gload Gazo$ + "Screen1.png",0,0,0
26370 gload Gazo$ + "downscreen.png",0,0,800
26380 color rgb(255,0,0)
26390 'Title
26400 locate 0,1
26410 print "ビジネスの相性　2人目"
26420 locate 0,3
26430 color rgb(255,255,255)
26440 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
26450 print "入れてください" + chr$(13)
26460 locate 0,15:color rgb(0,0,0)
26470 Input "2人目の名前:",name$
26480 'color rgb(0,0,0)
26490 'locate 0,15:print "                                              "
26500 'locate 0,15:print "2人目の名前を入力してエンター ":
26510 '2人目
26520 '2人目の名前を入れるに代入
26530 buffer_name$(1) = name$:
26540 goto Select_jyoushi:
26550 '3.上司の選択
26560 Select_jyoushi:
26570 cls 3:gload Gazo$ + "Screen1.png",0,0,0
26580 gload Gazo$ + "downscreen.png",0,0,800
26590 init "kb:4":No=0
26600 color rgb(0,0,255)
26610 locate 1,1
26620 print "上司の選択"
26630 color rgb(255,255,255)
26640 locate 0,4:print "名前から上司の方を選んでください"
26650 locate 0,6
26660 print " :";buffer_name$(0);"が上 司";chr$(13)
26670 locate 0,8
26680 print " :";buffer_name$(1);"が上 司";chr$(13)
26690 locate 0,15:
26700 print "                                     "
26710 locate 0,15:color rgb(0,0,0)
26720 print "上司の方を選んで右の丸ボタン"
26730 sp_on 0,1:sp_on 1,0:sp_on 2,0
26740 Select_jyoushi2:
26750 'ここでNo=0をおいてはいけない
26760 y=0:key$="":bg=0:
26770 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
26780 y = stick(1)
26790 key$ = inkey$
26800 bg = strig(1)
26810 pause 5
26820 wend
26830 '1.カーソル下の処理　or 十字キーの下処理
26840 if ((key$ = chr$(31)) or (y = 1)) then
26850 select case No
26860 case 0:
26870 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26880 case 1:
26890 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26900 end select
26910 endif
26920 '2.カーソル上処理　or 十字キーの上の処理
26930 if ((key$ = chr$(30)) or (y = -1)) then
26940 select case No
26950 case 0:
26960 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
26970 case 1:
26980 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
26990 end select
27000 endif
27010 if ((key$ = chr$(13)) or (bg = 2)) then
27020 select case No
27030 case 0:
27040 '上司(name1)を配列に代入
27050 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
27060 case 1:
27070 '上司（name2)を配列に代入
27080 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
27090 end select
27100 endif
27110 '3.決定ボタン　Enter or 右の丸ボタン
27120 '1.誕生日入力
27130 '1-1.生まれた年を入力
27140 'Jyoushi_born_year:
27150 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
27160 '---------------------------------------------'
27170 '誕生日入力(生れた年代)
27180 Jyoushi_Input_Seireki:
27190 'buf_Jyoushi_Born_Year:上司の生まれた年代
27200 'buf_Jyoushi_Born_Day(0) = born_year
27210 cls 3:play "":count=0:count2=0
27220 init"kb:4"
27230 'No=-1:Okのとき
27240 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
27250 for i=0 to 3
27260 buf_Jyoushi_Born_Day(i)=0
27270 next i
27280 gload Gazo$ + "Screen1.png",0,0,0
27290 gload Gazo$ + "downscreen.png",0,0,800
27300 'Init"kb:2"
27310 '音声ファイル再生 2023.06.07
27320 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
27330 font 48
27340 locate 0,1
27350 '文字色：黒　 color rgb(0,0,0)
27360 color rgb(255,255,255)
27370 print "上司の生まれた年代を入れて下さい" + chr$(13)
27380 color rgb(255,255,255)
27390 locate 1,3
27400 print "上司の生まれた年代(西暦4桁):";buf_year$
27410 color rgb(255,255,255)
27420 'locate 4,6:print ":7"
27430 'locate 9,6:print ":8"
27440 'locate 12,6:print ":9"
27450 locate 4,6
27460 print ":7  :8  :9" + chr$(13)
27470 color rgb(255,255,255)
27480 locate 4,8
27490 print ":4  :5  :6" + chr$(13)
27500 color rgb(255,255,255)
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
27620 Jyoushi_Input_Seireki2:
27630 key$="":bg=0:y=0:y2=0:bg2=0:
27640 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27650 key$ = inkey$
27660 bg = strig(1)
27670 y = stick(1)
27680 y2 = stick(0)
27690 bg2=strig(0)
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
27810 pause 200:goto Jyoushi_Input_Seireki2:
27820 '選択肢:3
27830 '3ボタンから 6に移動
27840 case 3:
27850 No=6:sp_on 12,0:sp_on 11,1
27860 pause 200:goto Jyoushi_Input_Seireki2:
27870 '6ボタンから ９に移動
27880 case 6:
27890 No=9:sp_on 10,1:sp_on 11,0
27900 pause 200:goto Jyoushi_Input_Seireki2:
27910 '6ボタンから ９に移動　ここまで
27920 '9で上を押して何もしない
27930 case 9:
27940 '何もしない
27950 No=9
27960 pause 200:goto Jyoushi_Input_Seireki2:
27970 '9で上を押しても何もしない　ここまで
27980 '上　 0ボタンから2ボタン
27990 'sp_on 6,1:1
28000 'sp_on 8,1:5
28010 'sp_on 7,1:7
28020 case 0:
28030 No=2:sp_on 13,0:sp_on 9,1:
28040 pause 200:goto Jyoushi_Input_Seireki2:
28050 '上  0ボタンから2ボタン　ここまで
28060 '2から５になる 上
28070 case 2:
28080 No=5:sp_on 8,1:sp_on 9,0:
28090 pause 200:goto Jyoushi_Input_Seireki2:
28100 case 5:
28110 No=8:sp_on 7,1:sp_on 8,0
28120 pause 200:goto Jyoushi_Input_Seireki2:
28130 case 8:
28140 pause 200:goto Jyoushi_Input_Seireki2:
28150 case 1:
28160 No=4:sp_on 5,1:sp_on 6,0
28170 pause 200:goto Jyoushi_Input_Seireki2:
28180 case 4:
28190 No=7:sp_on 4,1:sp_on 5,0
28200 pause 200:goto Jyoushi_Input_Seireki2:
28210 case 7:
28220 pause 200:goto Jyoushi_Input_Seireki2:
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
28330 pause 200:goto Jyoushi_Input_Seireki2:
28340 '6から３に下げる
28350 case 6:
28360 No=3:sp_on 12,1:sp_on 11,0
28370 pause 200:goto Jyoushi_Input_Seireki2:
28380 '3から０ｋに変える
28390 case 3:
28400 No=-1:sp_on 14,1:sp_on 12,0
28410 pause 200:goto Jyoushi_Input_Seireki2:
28420 'Okから下のボタンを押しても何もしない
28430 case -1:
28440 pause 200:goto Jyoushi_Input_Seireki2:
28450 case 8:
28460 No=5:sp_on 8,1:sp_on 7,0
28470 pause 200:goto Jyoushi_Input_Seireki2:
28480 case 5:
28490 No=2:sp_on 9,1:sp_on 8,0
28500 pause 200:goto Jyoushi_Input_Seireki2:
28510 case 2:
28520 No=0:sp_on 13,1:sp_on 9,0
28530 pause 200:goto Jyoushi_Input_Seireki2:
28540 case 0:
28550 pause 200:goto Jyoushi_Input_Seireki2:
28560 case 7:
28570 No=4:sp_on 5,1:sp_on 4,0
28580 pause 200:goto Jyoushi_Input_Seireki2:
28590 case 4:
28600 No=1:sp_on 6,1:sp_on 5,0
28610 pause 200:goto Jyoushi_Input_Seireki2:
28620 case 1:
28630 pause 200:goto Jyoushi_Input_Seireki2:
28640 end select
28650 endif
28660 '左へボタン 十字キー　左　or 　カーソル左
28670 if ((y2 = -1) or (key$ = chr$(29))) then
28680 select case No
28690 'Ok ボタン  Okから　左　０に行く
28700 case -1:
28710 No=0:sp_on 13,1:sp_on 14,0
28720 pause 200:goto Jyoushi_Input_Seireki2:
28730 '0 ボタン  左　何もしない
28740 case 0:
28750 pause 200:goto Jyoushi_Input_Seireki2:
28760 case 3:
28770 No=2:sp_on 9,1:sp_on 12,0:
28780 pause 200:goto Jyoushi_Input_Seireki2:
28790 case 2:
28800 No=1:sp_on 6,1:sp_on 9,0:
28810 pause 200:goto Jyoushi_Input_Seireki2:
28820 case 1:
28830 pause 200:goto Jyoushi_Input_Seireki2:
28840 case 6:
28850 No=5:sp_on 8,1:sp_on 11,0
28860 pause 200:goto Jyoushi_Input_Seireki2:
28870 case 5:
28880 No=4:sp_on 5,1:sp_on 8,0
28890 pause 200:goto Jyoushi_Input_Seireki2:
28900 case 4:
28910 pause 200:goto Jyoushi_Input_Seireki2:
28920 case 9:
28930 No=8:sp_on 7,1:sp_on 10,0
28940 pause 200:goto Jyoushi_Input_Seireki2:
28950 case 8:
28960 No=7:sp_on 4,1:sp_on 7,0
28970 pause 200:goto Jyoushi_Input_Seireki2:
28980 case 7:
28990 pause 200:goto Jyoushi_Input_Seireki2:
29000 end select
29010 endif
29020 '右  十字キー　右　or カーソル　右
29030 if ((y2 = 1) or (key$ = chr$(28))) then
29040 select case No
29050 '0ボタンからokボタン右に移動
29060 case 0:
29070 No=-1:sp_on 14,1:sp_on 13,0
29080 pause 200:goto Jyoushi_Input_Seireki2:
29090 '0ボタンからokボタン 右に移動　ここまで
29100 'OKボタンで右を押して何もしない
29110 case -1:
29120 pause 200:goto Jyoushi_Input_Seireki2:
29130 case 1:
29140 No=2:sp_on 9,1:sp_on 6,0
29150 pause 200:goto Jyoushi_Input_Seireki2:
29160 case 2:
29170 No=3:sp_on 12,1:sp_on 9,0
29180 pause 200:goto Jyoushi_Input_Seireki2:
29190 case 3:
29200 pause 200:goto Jyoushi_Input_Seireki2:
29210 case 4:
29220 No=5:sp_on 8,1:sp_on 5,0
29230 pause 200:goto Jyoushi_Input_Seireki2:
29240 case 5:
29250 No=6:sp_on 11,1:sp_on 8,0
29260 pause 200:goto Jyoushi_Input_Seireki2:
29270 case 7:
29280 No=8:sp_on 7,1:sp_on 4,0
29290 pause 200:goto Jyoushi_Input_Seireki2:
29300 case 8:
29310 No=9:sp_on 10,1:sp_on 7,0
29320 pause 200:goto Jyoushi_Input_Seireki2:
29330 case 9:
29340 pause 200:goto Jyoushi_Input_Seireki2:
29350 case 6:
29360 pause 200:goto Jyoushi_Input_Seireki2:
29370 end select
29380 'Okから右ボタンを押して何もしない ここまで
29390 endif
29400 '十字キー　ここまで
29410 '==============================
29420 'ここから
29430 '==============================
29440 if ((bg = 2) or (key$ = chr$(13))) then
29450 select case count
29460 case 0:
29470 count = 1
29480 if (No = -1) then
29490 count = 0:No=0
29500 buf_Jyoushi_Born_Day(0) = No
29510 'Okボタンを押したとき
29520 goto Jyoushi_Input_Seireki2:
29530 else
29540 'Okボタン以外が押されたとき
29550 if (No >= 1 and No <= 2) then
29560 buf_year$="":buf_year$ = str$(No) + "***"
29570 buf_year = No:a= No
29580 buf_Jyoushi_Born_Day(0) = No
29590 locate 1,3
29600 color rgb(255,255,255)
29610 print "上司の生まれた年代(西暦4桁):";buf_year$
29620 goto Jyoushi_Input_Seireki2:
29630 else
29640 count=0
29650 ui_msg"数字が範囲外になります。"
29660 buf_year$="":buf_year=0
29670 goto Jyoushi_Input_Seireki2:
29680 endif
29690 endif
29700 case 1:
29710 count = 2
29720 if (No = -1) then
29730 count = 1
29740 goto Jyoushi_Input_Seireki2:
29750 else
29760 buf_year = a * 10 + No
29770 b=buf_year
29780 buf_year$ = str$(buf_year) + "**"
29790 buf_Jyoushi_Born_Day(0)=buf_year
29800 locate 1,3
29810 color rgb(255,255,255)
29820 print "                                                                "
29830 locate 1,3
29840 print "上司の生まれた年代(西暦4桁):" + buf_year$
29850 'if (No = -1) then
29860 'count=1
29870 goto Jyoushi_Input_Seireki2:
29880 endif
29890 case 2:
29900 count=3
29910 if (No=-1) then
29920 count =2
29930 goto Jyoushi_Input_Seireki2:
29940 else
29950 buf_year = b * 10 + No
29960 c=buf_year
29970 buf_year$ = str$(buf_year) + "*"
29980 buf_Jyoushi_Born_Day(0) = buf_year
29990 locate 1,3
30000 color rgb(255,255,255)
30010 print "                                        "
30020 locate 1,3
30030 print "上司の生まれた年代(西暦4桁):";buf_year$
30040 goto Jyoushi_Input_Seireki2:
30050 endif
30060 case 3:
30070 count=4
30080 if (No = -1) then
30090 No=0
30100 goto Jyoushi_Input_Seireki2:
30110 else
30120 buf_year = c * 10 + No
30130 buf_year$ = str$(buf_year)
30140 buf_Jyoushi_Born_Day(0) = buf_year
30150 locate 1,3
30160 color RGB(255,255,255)
30170 print "                                      "
30180 locate 1,3
30190 print "上司の生まれた年代(西暦4桁):";buf_year$
30200 buf_year=val(buf_year$)
30210 'year=val(buf_year$)
30220 'if (No=-1) then
30230 'goto Input_Born_Month:
30240 'else
30250 goto Jyoushi_Input_Seireki2:
30260 endif
30270 case 4:
30280 'bufyear=buf_year
30290 if (No=-1) then
30300 buf_year = val(buf_year$)
30310 buf_Jyoushi_Born_Day(0)=buf_year
30320 sp_on 14,0:No=0
30330 goto Jyoushi_Input_Born_Month:
30340 else
30350 goto Jyoushi_Input_Seireki2:
30360 endif
30370 end select
30380 endif
30390 '===========================
30400 'ここまでを部下のところにコピーする.
30410 '===========================
30420 if (bg2 = 2) then
30430 select case count2
30440 case 0:
30450 if (No = -1) then
30460 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
30470 count=0
30480 locate 1,3
30490 color rgb(255,255,255)
30500 print "                                      "
30510 locate 1,3
30520 print "上司の生まれた年代（西暦4桁):" + buf_year$
30530 goto Jyoushi_Input_Seireki2:
30540 else
30550 '(buf_year=0) then
30560 buf_year=0:buf_year$="****"
30570 locate 1,3
30580 print "                                       "
30590 locate 1,3
30600 print "上司の生まれた年代(西暦4桁):"+buf_year$
30610 goto Jyoushi_Input_Seireki2:
30620 'endif
30630 endif
30640 end select
30650 endif
30660 'Input"上司の生れた年代(4桁,〜2025年):",year
30670 'if year > 2025 then goto Jyoushi_Input_Seireki:
30680 'if year = 123 then cls 3:cls 4:goto Main_Screen:
30690 '"4桁目"
30700 'bufyear4 = fix(year / 1000)
30710 '"3桁目"
30720 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
30730 '"2桁目"
30740 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
30750 '"1桁目"
30760 'bufyear1 = fix((year - ((bufyear4*
30770 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
30780 '2.生まれた月を入力
30790 Jyoushi_Input_Born_Month:
30800 cls 3:play "":count=0:count2=0
30810 'No=-1:Okのとき
30820 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
30830 for i=0 to 1
30840 buf_month(i)=0
30850 next i
30860 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30870 gload Gazo$ + "Screen1.png",0,0,0
30880 gload Gazo$ + "downscreen.png",0,0,800
30890 'Init"kb:4"
30900 '音声ファイル再生 2023.06.07
30910 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30920 font 48
30930 locate 0,1
30940 '文字色：黒　 color rgb(0,0,0)
30950 '文字色:白
30960 color rgb(255,255,255)
30970 print "上司の生まれた月を入れて下さい" + chr$(13)
30980 '文字色:白
30990 color rgb(255,255,255)
31000 locate 1,3
31010 '文字色:白
31020 print "上司の生まれた月(1月~12月):"+buf_Month$
31030 color rgb(255,255,255)
31040 'locate 4,6:print ":7"
31050 'locate 9,6:print ":8"
31060 'locate 12,6:print ":9"
31070 locate 4,6
31080 '文字色:赤
31090 print ":7  :8  :9" + chr$(13)
31100 color rgb(255,255,255)
31110 locate 4,8
31120 print ":4  :5  :6" + chr$(13)
31130 color rgb(255,255,255)
31140 locate 4,10
31150 print ":1  :2  :3" + chr$(13)
31160 locate 4,12
31170 print "    :0"
31180 locate 12,12
31190 color rgb(0,0,255)
31200 print ":Ok"
31210 sp_on 4,0: sp_on 5,0:sp_on 6,0
31220 sp_on 7,0:sp_on 8,0:sp_on 9,0
31230 sp_on 10,0:sp_on 11,0:sp_on 12,0
31240 sp_on 13,0:sp_on 14,1
31250 Jyoushi_Input_Born_Month2:
31260 key$="":bg=0:y=0:y2=0:bg2=0
31270 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31280 key$ = inkey$
31290 bg = strig(1)
31300 y = stick(1)
31310 y2 = stick(0)
31320 bg2 = strig(0)
31330 pause 5
31340 wend
31350 '十字キー　ここから
31360 '上の矢印　または、十字キー上
31370 if ((y = -1) or (key$ = chr$(30))) then
31380 select case No
31390 'No=-1:okのとき:初期の状態
31400 '0kボタンから３に移動
31410 '上に行く 処理
31420 case -1:
31430 No=3:sp_on 12,1:sp_on 14,0
31440 pause 200:goto Jyoushi_Input_Born_Month2:
31450 '選択肢:3
31460 '3ボタンから 6に移動
31470 case 3:
31480 No=6:sp_on 12,0:sp_on 11,1
31490 pause 200:goto Jyoushi_Input_Born_Month2:
31500 '6ボタンから ９に移動
31510 case 6:
31520 No=9:sp_on 10,1:sp_on 11,0
31530 pause 200:goto Jyoushi_Input_Born_Month2:
31540 '6ボタンから ９に移動　ここまで
31550 '9で上を押して何もしない
31560 case 9:
31570 '何もしない
31580 No=9
31590 pause 200:goto Jyoushi_Input_Born_Month2:
31600 '9で上を押しても何もしない　ここまで
31610 '上　 0ボタンから2ボタン
31620 'sp_on 6,1:1
31630 'sp_on 8,1:5
31640 'sp_on 7,1:7
31650 case 0:
31660 No=2:sp_on 13,0:sp_on 9,1:
31670 pause 200:goto Jyoushi_Input_Born_Month2:
31680 '上  0ボタンから2ボタン　ここまで
31690 '2から５になる 上
31700 case 2:
31710 No=5:sp_on 8,1:sp_on 9,0:
31720 pause 200:goto Jyoushi_Input_Born_Month2:
31730 case 5:
31740 No=8:sp_on 7,1:sp_on 8,0
31750 pause 200:goto Jyoushi_Input_Born_Month2:
31760 case 8:
31770 pause 200:goto Input_Born_Month2:
31780 case 1:
31790 No=4:sp_on 5,1:sp_on 6,0
31800 pause 200:goto Jyoushi_Input_Born_Month2:
31810 case 4:
31820 No=7:sp_on 4,1:sp_on 5,0
31830 pause 200:goto Jyoushi_Input_Born_Month2:
31840 case 7:
31850 pause 200:goto Input_Born_Month2:
31860 end select
31870 endif
31880 '左３　ここまで
31890 '下の矢印
31900 '中央 2
31910 if ((y=1) or (key$ = chr$(31))) then
31920 select case No
31930 '9から６に下げる
31940 case 9:
31950 No=6:sp_on 11,1:sp_on 10,0
31960 pause 200:goto Jyoushi_Input_Born_Month2:
31970 '6から３に下げる
31980 case 6:
31990 No=3:sp_on 12,1:sp_on 11,0
32000 pause 200:goto Jyoushi_Input_Born_Month2:
32010 '3から０ｋに変える
32020 case 3:
32030 No=-1:sp_on 14,1:sp_on 12,0
32040 pause 200:goto Jyoushi_Input_Born_Month2:
32050 'Okから下のボタンを押しても何もしない
32060 case -1:
32070 pause 200:goto Jyoushi_Input_Born_Month2:
32080 case 8:
32090 No=5:sp_on 8,1:sp_on 7,0
32100 pause 200:goto Jyoushi_Input_Born_Month2:
32110 case 5:
32120 No=2:sp_on 9,1:sp_on 8,0
32130 pause 200:goto Jyoushi_Input_Born_Month2:
32140 case 2:
32150 No=0:sp_on 13,1:sp_on 9,0
32160 pause 200:goto Jyoushi_Input_Born_Month2:
32170 case 0:
32180 pause 200:goto Jyoushi_Input_Born_Month2:
32190 case 7:
32200 No=4:sp_on 5,1:sp_on 4,0
32210 pause 200:goto Jyoushi_Input_Born_Month2:
32220 case 4:
32230 No=1:sp_on 6,1:sp_on 5,0
32240 pause 200:goto Jyoushi_Input_Born_Month2:
32250 case 1:
32260 pause 200:goto Jyoushi_Input_Born_Month2:
32270 end select
32280 endif
32290 '左へボタン 十字キー　左　or 　カーソル左
32300 if ((y2 = -1) or (key$ = chr$(29))) then
32310 select case No
32320 'Ok ボタン  Okから　左　０に行く
32330 case -1:
32340 No=0:sp_on 13,1:sp_on 14,0
32350 pause 200:goto Jyoushi_Input_Born_Month2:
32360 '0 ボタン  左　何もしない
32370 case 0:
32380 pause 200:goto Jyoushi_Input_Born_Month2:
32390 case 3:
32400 No=2:sp_on 9,1:sp_on 12,0:
32410 pause 200:goto Jyoushi_Input_Born_Month2:
32420 case 2:
32430 No=1:sp_on 6,1:sp_on 9,0:
32440 pause 200:goto Jyoushi_Input_Born_Month2:
32450 case 1:
32460 pause 200:goto Jyoushi_Input_Born_Month2:
32470 case 6:
32480 No=5:sp_on 8,1:sp_on 11,0
32490 pause 200:goto Jyoushi_Input_Born_Month2:
32500 case 5:
32510 No=4:sp_on 5,1:sp_on 8,0
32520 pause 200:goto Jyoushi_Input_Born_Month2:
32530 case 4:
32540 pause 200:goto Jyoushi_Input_Born_Month2:
32550 case 9:
32560 No=8:sp_on 7,1:sp_on 10,0
32570 pause 200:goto Input_Born_Month2:
32580 case 8:
32590 No=7:sp_on 4,1:sp_on 7,0
32600 pause 200:goto Jyoushi_Input_Born_Month2:
32610 case 7:
32620 pause 200:goto Jyoushi_Input_Born_Month2:
32630 end select
32640 endif
32650 '右  十字キー　右　or カーソル　右
32660 if ((y2 = 1) or (key$ = chr$(28))) then
32670 select case No
32680 '0ボタンからokボタン右に移動
32690 case 0:
32700 No=-1:sp_on 14,1:sp_on 13,0
32710 pause 200:goto Jyoushi_Input_Born_Month2:
32720 '0ボタンからokボタン 右に移動　ここまで
32730 'OKボタンで右を押して何もしない
32740 case -1:
32750 pause 200:goto Jyoushi_Input_Born_Month2:
32760 case 1:
32770 No=2:sp_on 9,1:sp_on 6,0
32780 pause 200:goto Jyoushi_Input_Born_Month2:
32790 case 2:
32800 No=3:sp_on 12,1:sp_on 9,0
32810 pause 200:goto Jyoushi_Input_Born_Month2:
32820 case 3:
32830 pause 200:goto Jyoushi_Input_Born_Month2:
32840 case 4:
32850 No=5:sp_on 8,1:sp_on 5,0
32860 pause 200:goto Jyoushi_Input_Born_Month2:
32870 case 5:
32880 No=6:sp_on 11,1:sp_on 8,0
32890 pause 200:goto Jyoushi_Input_Born_Month2:
32900 case 7:
32910 No=8:sp_on 7,1:sp_on 4,0
32920 pause 200:goto Jyoushi_Input_Born_Month2:
32930 case 8:
32940 No=9:sp_on 10,1:sp_on 7,0
32950 pause 200:goto Jyoushi_Input_Born_Month2:
32960 case 9:
32970 pause 200:goto Jyoushi_Input_Born_Month2:
32980 case 6:
32990 pause 200:goto Jyoushi_Input_Born_Month2:
33000 end select
33010 'Okから右ボタンを押して何もしない ここまで
33020 endif
33030 '十字キー　ここまで
33040 '右の丸ボタン + Enter key 決定キー
33050 if ((bg=2) or (key$=chr$(13))) then
33060 select case count
33070 case 0:
33080 if (No=-1) then No=0
33090 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
33100 if (buf_month > 1 and buf_month < 10)  then
33110 buf_Month$ = str$(buf_month)
33120 'buf_month=No
33130 endif
33140 if (buf_month = 1)  then
33150 buf_Month$ = str$(buf_month) + "*"
33160 'c=buf_month
33170 endif
33180 locate 1,3
33190 print "                                     "
33200 color RGB(255,255,255)
33210 locate 1,3
33220 print "上司の生まれた月(1月~12月):" + buf_Month$
33230 goto Jyoushi_Input_Born_Month2:
33240 case 1:
33250 count = 2:
33260 'c = val(buf_Month$)
33270 if (No = -1) then
33280 'count=0
33290 No=0
33300 month=buf_month
33310 buf_month=val(buf_Month$)
33320 month=buf_month
33330 buf_Jyoushi_Born_Day(1)=month
33340 '生まれた日に飛ぶ
33350 goto Jyoushi_Input_Born_Day:
33360 else
33370 buf_month = c*10 + No
33380 'if (buf_month = 1) then
33390 'buf_Month$ = str$(buf_month)
33400 'endif
33410 buf_Month$ = str$(buf_month)
33420 buf_Jyoushi_Born_Day(1) = buf_month
33430 locate 0,3
33440 print "                                           "
33450 locate 1,3
33460 color Rgb(255,255,255)
33470 print "上司の生まれた月(1月~12月):" + buf_Month$
33480 goto Jyoushi_Input_Born_Month2:
33490 endif
33500 case 2:
33510 '==================================
33520 '何もしない
33530 'coun = 2
33540 '==================================
33550 'c= val(buf_Month$)
33560 'buf_month = c*10 + No
33570 'buf_Month$ = str$(buf_month)
33580 'locate 2,3
33590 'print "上司の生まれた月(1月～12月):";buf_Month$
33600 'goto Jyoushi_Input_Born_Month2:
33610 'case 3:
33620 'count=4
33630 'b=val(buf_month$)
33640 'buf_month=c*10+No
33650 'buf_Month$=str$(buf_month)
33660 'locate 2,3
33670 'print "上司の生まれた月(1月～12月):";buf_Month$
33680 'buf_month=val(buf_Month$)
33690 'year=val(buf_year$)
33700 if (No=-1) then
33710 No=0
33720 goto Jyoushi_Input_Born_Day:
33730 else
33740 goto Jyoushi_Input_Born_Month2:
33750 endif
33760 'case 4:
33770 'bufyear=buf_year
33780 'if (No=-1) then
33790 'buf_month = val(buf_Month$)
33800 'month = buf_month
33810 'sp_on 14,0
33820 'goto Input_Born_Day:
33830 'else
33840 'goto Input_Born_Month2:
33850 'endif
33860 end select
33870 endif
33880 '左の丸ボタン　キャンセル
33890 if (bg2=2) then
33900 select case count2
33910 case 0:
33920 if (No = -1) then
33930 buf_month=0:buf_Month$="**"
33940 count=0
33950 'goto rewrite2:
33960 else
33970 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
33980 buf_month = 0:buf_Month$ = "**"
33990 locate 0,3
34000 color rgb(255,255,255)
34010 print "                                       "
34020 goto rewrite2:
34030 if (No>12) then
34040 ui_msg"値が範囲外です。"
34050 goto rewrite2:
34060 endif
34070 endif
34080 endif
34090 rewrite2:
34100 locate 2,3
34110 color rgb(255,255,255)
34120 print "                                      "
34130 locate 2,3
34140 print "上司の生まれた月(1月~12月):"+buf_Month$
34150 goto Jyoushi_Input_Born_Month2:
34160 end select
34170 'endif
34180 endif
34190 end
34200 'end
34210 '生れた日を入力
34220 Jyoushi_Input_Born_Day:
34230 '生まれた日入力
34240 cls 3:play ""
34250 'No=-1:Okのとき
34260 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
34270 for i=0 to 1
34280 buf_day(i)=0
34290 next i
34300 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34310 gload Gazo$ + "Screen1.png",0,0,0
34320 gload Gazo$ + "downscreen.png",0,0,800
34330 'Init"kb:2"
34340 '音声ファイル再生 2023.06.07
34350 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
34360 font 48
34370 locate 1,1
34380 '文字色：黒　 color rgb(0,0,0)
34390 color rgb(255,255,255)
34400 print "上司の生まれた日を入れて下さい" + chr$(13)
34410 locate 1,3
34420 color rgb(255,255,255)
34430 print "                                      "
34440 locate 1,3
34450 print "上司の生まれた日(1日~31日):"+buf_Day$
34460 color rgb(255,255,255)
34470 'locate 4,6:print ":7"
34480 'locate 9,6:print ":8"
34490 'locate 12,6:print ":9"
34500 locate 4,6
34510 print ":7  :8  :9" + chr$(13)
34520 color rgb(255,255,255)
34530 locate 4,8
34540 print ":4  :5  :6" + chr$(13)
34550 color rgb(255,255,255)
34560 locate 4,10
34570 print ":1  :2  :3" + chr$(13)
34580 locate 4,12
34590 print "    :0"
34600 locate 12,12
34610 color rgb(0,0,255)
34620 print ":Ok"
34630 sp_on 4,0: sp_on 5,0:sp_on 6,0
34640 sp_on 7,0:sp_on 8,0:sp_on 9,0
34650 sp_on 10,0:sp_on 11,0:sp_on 12,0
34660 sp_on 13,0:sp_on 14,1
34670 Jyoushi_Input_Born_Day2:
34680 key$="":bg=0:y=0:y2=0:bg2=0:
34690 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34700 key$ = inkey$
34710 bg = strig(1)
34720 y = stick(1)
34730 y2 = stick(0)
34740 bg2 = strig(0)
34750 pause 5
34760 wend
34770 '十字キー　ここから
34780 '上の矢印　または、十字キー上
34790 if ((y = -1) or (key$ = chr$(30))) then
34800 select case No
34810 'No=-1:okのとき:初期の状態
34820 '0kボタンから３に移動
34830 '上に行く 処理
34840 case -1:
34850 No=3:sp_on 12,1:sp_on 14,0
34860 pause 200:goto Jyoushi_Input_Born_Day2:
34870 '選択肢:3
34880 '3ボタンから 6に移動
34890 case 3:
34900 No=6:sp_on 12,0:sp_on 11,1
34910 pause 200:goto Jyoushi_Input_Born_Day2:
34920 '6ボタンから ９に移動
34930 case 6:
34940 No=9:sp_on 10,1:sp_on 11,0
34950 pause 200:goto Jyoushi_Input_Born_Day2:
34960 '6ボタンから ９に移動　ここまで
34970 '9で上を押して何もしない
34980 case 9:
34990 '何もしない
35000 No=9
35010 pause 200:goto Jyoushi_Input_Born_Day2:
35020 '9で上を押しても何もしない　ここまで
35030 '上　 0ボタンから2ボタン
35040 'sp_on 6,1:1
35050 'sp_on 8,1:5
35060 'sp_on 7,1:7
35070 case 0:
35080 No=2:sp_on 13,0:sp_on 9,1:
35090 pause 200:goto Jyoushi_Input_Born_Day2:
35100 '上  0ボタンから2ボタン　ここまで
35110 '2から５になる 上
35120 case 2:
35130 No=5:sp_on 8,1:sp_on 9,0:
35140 pause 200:goto Jyoushi_Input_Born_Day2:
35150 case 5:
35160 No=8:sp_on 7,1:sp_on 8,0
35170 pause 200:goto Jyoushi_Input_Born_Day2:
35180 case 8:
35190 pause 200:goto Jyoushi_Input_Born_Day2:
35200 case 1:
35210 No=4:sp_on 5,1:sp_on 6,0
35220 pause 200:goto Jyoushi_Input_Born_Day2:
35230 case 4:
35240 No=7:sp_on 4,1:sp_on 5,0
35250 pause 200:goto Jyoushi_Input_Born_Day2:
35260 case 7:
35270 pause 200:goto Jyoushi_Input_Born_Day2:
35280 end select
35290 endif
35300 '左３　ここまで
35310 '下の矢印
35320 '中央 2
35330 if ((y=1) or (key$ = chr$(31))) then
35340 select case No
35350 '9から６に下げる
35360 case 9:
35370 No=6:sp_on 11,1:sp_on 10,0
35380 pause 200:goto Jyoushi_Input_Born_Day2:
35390 '6から３に下げる
35400 case 6:
35410 No=3:sp_on 12,1:sp_on 11,0
35420 pause 200:goto Jyoushi_Input_Born_Day2:
35430 '3から０ｋに変える
35440 case 3:
35450 No=-1:sp_on 14,1:sp_on 12,0
35460 pause 200:goto Jyoushi_Input_Born_Day2:
35470 'Okから下のボタンを押しても何もしない
35480 case -1:
35490 pause 200:goto Jyoushi_Input_Born_Day2:
35500 case 8:
35510 No=5:sp_on 8,1:sp_on 7,0
35520 pause 200:goto Jyoushi_Input_Born_Day2:
35530 case 5:
35540 No=2:sp_on 9,1:sp_on 8,0
35550 pause 200:goto Jyoushi_Input_Born_Day2:
35560 case 2:
35570 No=0:sp_on 13,1:sp_on 9,0
35580 pause 200:goto Jyoushi_Input_Born_Day2:
35590 case 0:
35600 pause 200:goto Jyoushi_Input_Born_Day2:
35610 case 7:
35620 No=4:sp_on 5,1:sp_on 4,0
35630 pause 200:goto Jyoushi_Input_Born_Day2:
35640 case 4:
35650 No=1:sp_on 6,1:sp_on 5,0
35660 pause 200:goto Jyoushi_Input_Born_Day2:
35670 case 1:
35680 pause 200:goto Jyoushi_Input_Born_Day2:
35690 end select
35700 endif
35710 '左へボタン 十字キー　左　or 　カーソル左
35720 if ((y2 = -1) or (key$ = chr$(29))) then
35730 select case No
35740 'Ok ボタン  Okから　左　０に行く
35750 case -1:
35760 No=0:sp_on 13,1:sp_on 14,0
35770 pause 200:goto Jyoushi_Input_Born_Day2:
35780 '0 ボタン  左　何もしない
35790 case 0:
35800 pause 200:goto Jyoushi_Input_Born_Day2:
35810 case 3:
35820 No=2:sp_on 9,1:sp_on 12,0:
35830 pause 200:goto Jyoushi_Input_Born_Day2:
35840 case 2:
35850 No=1:sp_on 6,1:sp_on 9,0:
35860 pause 200:goto Jyoushi_Input_Born_Day2:
35870 case 1:
35880 pause 200:goto Jyoushi_Input_Born_Day2:
35890 case 6:
35900 No=5:sp_on 8,1:sp_on 11,0
35910 pause 200:goto Jyoushi_Input_Born_Day2:
35920 case 5:
35930 No=4:sp_on 5,1:sp_on 8,0
35940 pause 200:goto Jyoushi_Input_Born_Day2:
35950 case 4:
35960 pause 200:goto Jyoushi_Input_Born_Day2:
35970 case 9:
35980 No=8:sp_on 7,1:sp_on 10,0
35990 pause 200:goto Jyoushi_Input_Born_Day2:
36000 case 8:
36010 No=7:sp_on 4,1:sp_on 7,0
36020 pause 200:goto Jyoushi_Input_Born_Day2:
36030 case 7:
36040 pause 200:goto Jyoushi_Input_Born_Day2:
36050 end select
36060 endif
36070 '右  十字キー　右　or カーソル　右
36080 if ((y2 = 1) or (key$ = chr$(28))) then
36090 select case No
36100 '0ボタンからokボタン右に移動
36110 case 0:
36120 No=-1:sp_on 14,1:sp_on 13,0
36130 pause 200:goto Jyoushi_Input_Born_Day2:
36140 '0ボタンからokボタン 右に移動　ここまで
36150 'OKボタンで右を押して何もしない
36160 case -1:
36170 pause 200:goto Jyoushi_Input_Born_Day2:
36180 case 1:
36190 No=2:sp_on 9,1:sp_on 6,0
36200 pause 200:goto Jyoushi_Input_Born_Day2:
36210 case 2:
36220 No=3:sp_on 12,1:sp_on 9,0
36230 pause 200:goto Jyoushi_Input_Born_Day2:
36240 case 3:
36250 pause 200:goto Jyoushi_Input_Born_Day2:
36260 case 4:
36270 No=5:sp_on 8,1:sp_on 5,0
36280 pause 200:goto Jyoushi_Input_Born_Day2:
36290 case 5:
36300 No=6:sp_on 11,1:sp_on 8,0
36310 pause 200:goto Jyoushi_Input_Born_Day2:
36320 case 7:
36330 No=8:sp_on 7,1:sp_on 4,0
36340 pause 200:goto Jyoushi_Input_Born_Day2:
36350 case 8:
36360 No=9:sp_on 10,1:sp_on 7,0
36370 pause 200:goto Jyoushi_Input_Born_Day2:
36380 case 9:
36390 pause 200:goto Jyoushi_Input_Born_Day2:
36400 case 6:
36410 pause 200:goto Jyoushi_Input_Born_Day2:
36420 end select
36430 'Okから右ボタンを押して何もしない ここまで
36440 endif
36450 '十字キー　ここまで
36460 '右の丸ボタンを押したとき
36470 if ((bg = 2) or (key$ = chr$(13))) then
36480 'count :決定ボタンを押した回数
36490 select case (count)
36500 '1桁目入力
36510 case 0:
36520 count = 1:
36530 if (No = -1) then
36540 '1桁目　OKでは何もしない
36550 No=c
36560 'goto Jyoushi_Input_Born_Day2:
36570 else
36580 'ok以外のボタンを押したとき
36590 buf_day = No:buf_Day$ = str$(No)
36600 buf_Jyoushi_Born_Day(2)=buf_day
36610 c=No
36620 locate 1,3
36630 print "                                      "
36640 color RGB(255,255,255)
36650 locate 1,3
36660 print "上司の生まれた日(1日~31日):" + buf_Day$
36670 endif
36680 'check2:
36690 'if (buf_day >= 1 and buf_day <= 9) then
36700 'sp_on 14,0
36710 'goto complate_jyoushi:
36720 'else
36730 'sp_on 14,0
36740 goto Jyoushi_Input_Born_Day2:
36750 'end
36760 'endif
36770 case 1:
36780 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
36790 count = 2:
36800 'locate 2,3
36810 'color RGB(255,255,255)
36820 'print "生まれた日(1日~31日):";buf_Day$
36830 'Okボタンを押したときの処理
36840 '入力値　10未満のとき
36850 'buf_day = c * 10 + No
36860 if (No = -1) then
36870 c=buf_day:No=0
36880 'buf_day = c
36890 buf_Day$ = str$(buf_day)
36900 '10以下のとき
36910 'if (buf_day < 10) then
36920 sp_on 14,0
36930 goto complate_jyoushi:
36940 'end
36950 'endif
36960 else
36970 'c=No
36980 buf_day = c * 10 + No
36990 buf_Day$ = str$(buf_day)
37000 'buf_day = c:buf_Day$=str$(buf_day)
37010 buf_Jyoushi_Born_Day(2)=buf_day
37020 locate 1,3
37030 print "                                           "
37040 locate 1,3
37050 color Rgb(255,255,255)
37060 print "上司の生まれた日(1日~31日):" + buf_Day$
37070 goto Jyoushi_Input_Born_Day2:
37080 'goto
37090 endif
37100 'endif
37110 '生まれた日　2桁目の数字　or 1桁の数字 + ok
37120 case 2:
37130 'buf_day = c * 10 + No
37140 'buf_Jyoushi_Born_Day(2)=buf_day
37150 'locate 1,3
37160 'print "                                      "
37170 'locate 1,3
37180 'locate 2,3
37190 'print "生まれた日(1日〜31日):";buf_Day
37200 'No=-1:ok ボタンを押したとき
37210 if (No = -1) then
37220 'if ((buf_day > 0) and (buf_day < 32)) then
37230 No=0
37240 sp_on 14,0
37250 goto complate_jyoushi:
37260 'end
37270 else
37280 goto Jyoushi_Input_Born_Day2:
37290 'endif
37300 'Okボタン以外を押したとき
37310 'else
37320 'c=val(buf_Day$)
37330 'buf_day = c * 10 + No
37340 'buf_Jyoushi_Born_Day(2) = buf_day
37350 'buf_Day$ = str$(buf_day)
37360 'locate 1,3
37370 'print "上司の生まれた日(1日~31日):";buf_Day$
37380 'goto Jyoushi_Input_Born_Day2:
37390 endif
37400 'case 3:
37410 'count=4
37420 'c=val(buf_day$)
37430 'buf_day=c*10+No
37440 'buf_day$=str$(buf_day)
37450 'locate 2,3
37460 'print "生まれた日を入れてください:";buf_day$
37470 'year=val(buf_year$)
37480 'if (No = -1) then
37490 'goto Jyoushi_Input_Born_Day:
37500 'sp_on 14,0:
37510 'goto complate_jyoushi:
37520 'else
37530 'goto Jyoushi_Input_Born_Month2:
37540 'endif
37550 'case 4:
37560 'bufyear=buf_year
37570 'if (No=-1) then
37580 'buf_day = val(buf_day$)
37590 'bufday = buf_day
37600 'sp_on 14,0
37610 'goto Jyoushi_Input_Born_Day2:
37620 'else
37630 'goto Jyoushi_Input_Born_Day2:
37640 'endif
37650 end select
37660 endif
37670 if (bg2=2) then
37680 select case count2
37690 case 0:
37700 if (No=-1) then
37710 buf_day=0:buf_Day$="**":No=0
37720 if (buf_day >= 1 and buf_day <= 31) then
37730 count=0
37740 buf_day=0:buf_Day$ = "**"
37750 goto rewrite_day3:
37760 else
37770 buf_day=0:buf_Day$ = "**"
37780 ui_msg"値が範囲外です"
37790 endif
37800 goto rewrite_day3:
37810 else
37820 goto rewrite_day3:
37830 endif
37840 rewrite_day3:
37850 locate 2,3
37860 color rgb(255,255,255)
37870 print "                                      "
37880 locate 2,3
37890 print "生まれた日(1日~31日):" + buf_Day$
37900 goto Jyoushi_Input_Born_Day2:
37910 end select
37920 endif
37930 '--------------------------------------------'
37940 'locate 2,0:color rgb(255,0,0)
37950 'print "上司の生まれた年代を入力"
37960 'color rgb(255,255,255)
37970 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
37980 'locate 2,4:Input "上司の生まれた年:",born_year
37990 '誕生日データーを配列に代入
38000 'buf_Jyoushi_Born_Year:上司の生まれた年代
38010 'buf_Jyoushi_Born_Day(0) = born_year
38020 'born_year = 0
38030 '---------------------------------------------'
38040 'goto Jyoushi_born_month:
38050 '1-2.生まれた月を入力
38060 'Jyoushi_born_month:
38070 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38080 'init "kb:4"
38090 'locate 2,1:
38100 'color rgb(255,0,0)
38110 'print "上司の生まれた月入力"
38120 'color rgb(255,255,255)
38130 'locate 2,4:print "生まれた月を入力してください"
38140 'locate 2,5
38150 'Input "上司の生まれ月:",born_month
38160 'buf_Jyoushi_Born_Day(1) = born_month
38170 'born_month = 0
38180 'goto Jyoushi_born_day:
38190 'buf_Jyoushi_Born_day
38200 '1-3.生まれた日を入力
38210 'Jyoushi_born_day:
38220 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38230 'init "kb:4"
38240 'locate 2,1:color rgb(255,0,0)
38250 'print "上司の生まれた日　入力"
38260 'locate 2,4:color rgb(255,255,255)
38270 'print "生まれた日を入力してください"
38280 'locate 2,5
38290 'Input "上司の生まれた日:",born_day
38300 'buf_Jyoushi_Born_Day(2) = born_day
38310 'born_day = 0
38320 'goto buka_born_year:
38330 '2.部下の誕生日入力
38340 '2-1.生まれた年を入力
38350 'buka_born_year:
38360 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38370 'init "kb:2"
38380 'locate 1,1:color rgb(255,0,0)
38390 'print "部下の生まれた年代入力"
38400 'locate 0,4:color rgb(255,255,255)
38410 'print "部下の生まれた年（西暦4桁）を入れてください"
38420 'locate 0,5
38430 'Input "部下の生まれた年(西暦4桁):",born_year
38440 'buf_Buka_Born_Day(0) = born_year
38450 'born_year = 0
38460 '2-2.生まれた月を入力
38470 'buka_born_month:
38480 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38490 'init "kb:2"
38500 'locate 2,1:color rgb(255,0,0)
38510 'print "部下の生まれた月 入力"
38520 'locate 2,4:color rgb(255,255,255)
38530 'print "部下の生まれた月を入力してください"
38540 'locate 2,5:Input "部下の生まれた月:",born_month
38550 'buf_Buka_Born_Day(1) = born_month
38560 '2-3.生まれた日を入力
38570 'buka_born_day:
38580 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38590 'init "kb:2"
38600 'locate 2,1:color rgb(255,0,0)
38610 'print "生まれた日入力"
38620 'color rgb(255,255,255)
38630 'locate 2,4:print "生まれた日を入力してください"
38640 'locate 2,5:Input "部下の生まれた日:",born_day
38650 'buf_Buka_Born_Day(2) = born_day
38660 'born_day=0:goto Result_Business_Aisyou:
38670 '--------------------------------------------'
38680 complate_jyoushi:
38690 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
38700 buf_Jyoushi = Kabara_Num(a,b,c)
38710 a_1=buf_Jyoushi
38720 goto Buka_Input_Seireki:
38730 '--------------------------------------------'
38740 '部下'
38750 '1.部下の生まれた年代'
38760 Buka_Input_Seireki:
38770 cls 3:play "":count=0:count2=0
38780 init"kb:4"
38790 'No=-1:Okのとき
38800 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
38810 for i=0 to 3
38820 buf_Buka_Born_Day(i)=0
38830 next i
38840 gload Gazo$ + "Screen1.png",0,0,0
38850 gload Gazo$ + "downscreen.png",0,0,800
38860 'Init"kb:2"
38870 '音声ファイル再生 2023.06.07
38880 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38890 font 48
38900 locate 0,1
38910 '文字色：黒　 color rgb(0,0,0)
38920 color rgb(255,255,255)
38930 print "部下の生まれた年代を入れて下さい" + chr$(13)
38940 color rgb(255,255,255)
38950 locate 1,3
38960 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38970 color rgb(255,255,255)
38980 'locate 4,6:print ":7"
38990 'locate 9,6:print ":8"
39000 'locate 12,6:print ":9"
39010 locate 4,6
39020 print ":7  :8  :9" + chr$(13)
39030 color rgb(255,255,255)
39040 locate 4,8
39050 print ":4  :5  :6" + chr$(13)
39060 color rgb(255,255,255)
39070 locate 4,10
39080 print ":1  :2  :3" + chr$(13)
39090 locate 4,12
39100 print "    :0"
39110 locate 12,12
39120 color rgb(0,0,255)
39130 print ":Ok"
39140 sp_on 4,0: sp_on 5,0:sp_on 6,0
39150 sp_on 7,0:sp_on 8,0:sp_on 9,0
39160 sp_on 10,0:sp_on 11,0:sp_on 12,0
39170 sp_on 13,0:sp_on 14,1
39180 Buka_Input_Seireki2:
39190 key$="":bg=0:y=0:y2=0:bg2=0:
39200 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
39210 key$ = inkey$
39220 bg = strig(1)
39230 y = stick(1)
39240 y2 = stick(0)
39250 bg2=strig(0)
39260 pause 5
39270 wend
39280 '十字キー　ここから
39290 '上の矢印　または、十字キー上
39300 if ((y = -1) or (key$ = chr$(30))) then
39310 select case No
39320 'No=-1:okのとき:初期の状態
39330 '0kボタンから３に移動
39340 '上に行く 処理
39350 case -1:
39360 No=3:sp_on 12,1:sp_on 14,0
39370 pause 200:goto Buka_Input_Seireki2:
39380 '選択肢:3
39390 '3ボタンから 6に移動
39400 case 3:
39410 No=6:sp_on 12,0:sp_on 11,1
39420 pause 200:goto Buka_Input_Seireki2:
39430 '6ボタンから ９に移動
39440 case 6:
39450 No=9:sp_on 10,1:sp_on 11,0
39460 pause 200:goto Buka_Input_Seireki2:
39470 '6ボタンから ９に移動　ここまで
39480 '9で上を押して何もしない
39490 case 9:
39500 '何もしない
39510 No=9
39520 pause 200:goto Buka_Input_Seireki2:
39530 '9で上を押しても何もしない　ここまで
39540 '上　 0ボタンから2ボタン
39550 'sp_on 6,1:1
39560 'sp_on 8,1:5
39570 'sp_on 7,1:7
39580 case 0:
39590 No=2:sp_on 13,0:sp_on 9,1:
39600 pause 200:goto Buka_Input_Seireki2:
39610 '上  0ボタンから2ボタン　ここまで
39620 '2から５になる 上
39630 case 2:
39640 No=5:sp_on 8,1:sp_on 9,0:
39650 pause 200:goto Buka_Input_Seireki2:
39660 case 5:
39670 No=8:sp_on 7,1:sp_on 8,0
39680 pause 200:goto Buka_Input_Seireki2:
39690 case 8:
39700 pause 200:goto Buka_Input_Seireki2:
39710 case 1:
39720 No=4:sp_on 5,1:sp_on 6,0
39730 pause 200:goto Buka_Input_Seireki2:
39740 case 4:
39750 No=7:sp_on 4,1:sp_on 5,0
39760 pause 200:goto Buka_Input_Seireki2:
39770 case 7:
39780 pause 200:goto Buka_Input_Seireki2:
39790 end select
39800 endif
39810 '左３　ここまで
39820 '下の矢印
39830 '中央 2
39840 if ((y=1) or (key$ = chr$(31))) then
39850 select case No
39860 '9から６に下げる
39870 case 9:
39880 No=6:sp_on 11,1:sp_on 10,0
39890 pause 200:goto Buka_Input_Seireki2:
39900 '6から３に下げる
39910 case 6:
39920 No=3:sp_on 12,1:sp_on 11,0
39930 pause 200:goto Buka_Input_Seireki2:
39940 '3から０ｋに変える
39950 case 3:
39960 No=-1:sp_on 14,1:sp_on 12,0
39970 pause 200:goto Buka_Input_Seireki2:
39980 'Okから下のボタンを押しても何もしない
39990 case -1:
40000 pause 200:goto Buka_Input_Seireki2:
40010 case 8:
40020 No=5:sp_on 8,1:sp_on 7,0
40030 pause 200:goto Buka_Input_Seireki2:
40040 case 5:
40050 No=2:sp_on 9,1:sp_on 8,0
40060 pause 200:goto Buka_Input_Seireki2:
40070 case 2:
40080 No=0:sp_on 13,1:sp_on 9,0
40090 pause 200:goto Buka_Input_Seireki2:
40100 case 0:
40110 pause 200:goto Buka_Input_Seireki2:
40120 case 7:
40130 No=4:sp_on 5,1:sp_on 4,0
40140 pause 200:goto Buka_Input_Seireki2:
40150 case 4:
40160 No=1:sp_on 6,1:sp_on 5,0
40170 pause 200:goto Buka_Input_Seireki2:
40180 case 1:
40190 pause 200:goto Buka_Input_Seireki2:
40200 end select
40210 endif
40220 '左へボタン 十字キー　左　or 　カーソル左
40230 if ((y2 = -1) or (key$ = chr$(29))) then
40240 select case No
40250 'Ok ボタン  Okから　左　０に行く
40260 case -1:
40270 No=0:sp_on 13,1:sp_on 14,0
40280 pause 200:goto Buka_Input_Seireki2:
40290 '0 ボタン  左　何もしない
40300 case 0:
40310 pause 200:goto Buka_Input_Seireki2:
40320 case 3:
40330 No=2:sp_on 9,1:sp_on 12,0:
40340 pause 200:goto Buka_Input_Seireki2:
40350 case 2:
40360 No=1:sp_on 6,1:sp_on 9,0:
40370 pause 200:goto Buka_Input_Seireki2:
40380 case 1:
40390 pause 200:goto Buka_Input_Seireki2:
40400 case 6:
40410 No=5:sp_on 8,1:sp_on 11,0
40420 pause 200:goto Buka_Input_Seireki2:
40430 case 5:
40440 No=4:sp_on 5,1:sp_on 8,0
40450 pause 200:goto Buka_Input_Seireki2:
40460 case 4:
40470 pause 200:goto Buka_Input_Seireki2:
40480 case 9:
40490 No=8:sp_on 7,1:sp_on 10,0
40500 pause 200:goto Buka_Input_Seireki2:
40510 case 8:
40520 No=7:sp_on 4,1:sp_on 7,0
40530 pause 200:goto Buka_Input_Seireki2:
40540 case 7:
40550 pause 200:goto Buka_Input_Seireki2:
40560 end select
40570 endif
40580 '右  十字キー　右　or カーソル　右
40590 if ((y2 = 1) or (key$ = chr$(28))) then
40600 select case No
40610 '0ボタンからokボタン右に移動
40620 case 0:
40630 No=-1:sp_on 14,1:sp_on 13,0
40640 pause 200:goto Buka_Input_Seireki2:
40650 '0ボタンからokボタン 右に移動　ここまで
40660 'OKボタンで右を押して何もしない
40670 case -1:
40680 pause 200:goto Buka_Input_Seireki2:
40690 case 1:
40700 No=2:sp_on 9,1:sp_on 6,0
40710 pause 200:goto Buka_Input_Seireki2:
40720 case 2:
40730 No=3:sp_on 12,1:sp_on 9,0
40740 pause 200:goto Buka_Input_Seireki2:
40750 case 3:
40760 pause 200:goto Buka_Input_Seireki2:
40770 case 4:
40780 No=5:sp_on 8,1:sp_on 5,0
40790 pause 200:goto Buka_Input_Seireki2:
40800 case 5:
40810 No=6:sp_on 11,1:sp_on 8,0
40820 pause 200:goto Buka_Input_Seireki2:
40830 case 7:
40840 No=8:sp_on 7,1:sp_on 4,0
40850 pause 200:goto Buka_Input_Seireki2:
40860 case 8:
40870 No=9:sp_on 10,1:sp_on 7,0
40880 pause 200:goto Buka_Input_Seireki2:
40890 case 9:
40900 pause 200:goto Buka_Input_Seireki2:
40910 case 6:
40920 pause 200:goto Buka_Input_Seireki2:
40930 end select
40940 'Okから右ボタンを押して何もしない ここまで
40950 endif
40960 '十字キー　ここまで
40970 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
40980 'ここからコメント
40990 '右の丸ボタン決定を押した数:count
41000 'if ((bg=2) or (key$=chr$(13))) then
41010 'select case count
41020 'case 0:
41030 'count=1
41040 'if (No = -1) then
41050 'count = 0
41060 'Okボタンを押したとき
41070 '
41080 'goto Buka_Input_Seireki2:
41090 'else
41100 'Okボタン以外が押されたとき
41110 'if (No >= 1 and No <= 2) then
41120 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
41130 'buf_buka_year = No
41140 'buf_Buka_Born_Day(0) = bufyear
41150 'locate 2,3
41160 'color rgb(255,255,255)
41170 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41180 'goto Buka_Input_Seireki2:
41190 'else
41200 'count=0
41210 'ui_msg"数字が範囲外になります。"
41220 'buf_buka_year$ ="":buf_buka_year=0
41230 'goto Buka_Input_Seireki2:
41240 'endif
41250 'endif
41260 'case 1:
41270 'count = 2
41280 'if (No = -1) then
41290 'count = 1
41300 'goto Buka_Input_Seireki2:
41310 'else
41320 'b = val(buf_buka_year$)
41330 'buf_buka_year = b * 10 + No
41340 'buf_buka_year$ = str$(buf_buka_year)
41350 'buf_Buka_Born_Day(0) = bufyear
41360 'locate 1,3
41370 'color rgb(255,255,255)
41380 'print "                                                                "
41390 'locate 1,3
41400 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41410 'if (No = -1) then
41420 'count=1
41430 'goto Buka_Input_Seireki2:
41440 'endif
41450 'case 2:
41460 'count = 3
41470 'if (No = -1) then
41480 'count = 2
41490 'buf_Buka_Born_Day(0)=bufyear
41500 'goto Buka_Input_Seireki2:
41510 'else
41520 'b = val(buf_buka_year$)
41530 'buf_buka_year = b*10 + No
41540 'buf_buka_year$ = str$(buf_buka_year)
41550 'locate 1,3
41560 'color rgb(255,255,255)
41570 'print "                                        "
41580 'locate 1,3
41590 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41600 'goto Buka_Input_Seireki2:
41610 'endif
41620 'case 3:
41630 'count=4
41640 'if (No = -1) then
41650 'count=3
41660 'goto Buka_Input_Seireki2:
41670 'else
41680 'b = buf_buka_year
41690 'buf_buka_year = b * 10 + No
41700 'buf_buka_year$=str$(buf_buka_year)
41710 'locate 1,3
41720 'color RGB(255,255,255)
41730 'print "                                      "
41740 'locate 1,3
41750 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41760 'buf_year=val(buf_year$)
41770 'year=val(buf_year$)
41780 'if (No=-1) then
41790 'goto Input_Born_Month:
41800 'else
41810 'goto Buka_Input_Seireki2:
41820 'endif
41830 'case 4:
41840 'bufyear=buf_year
41850 'if (No=-1) then
41860 'buf_year = val(buf_year$)
41870 'bufyear = buf_year
41880 'sp_on 14,0
41890 'goto Buka_Input_Born_Month:
41900 'else
41910 'goto Buka_Input_Seireki2:
41920 'endif
41930 'end select
41940 'endif
41950 'if (bg2 = 2) then
41960 'select case count2
41970 'case 0:
41980 'if (No = -1) then
41990 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
42000 'count=0
42010 'locate 1,3
42020 'color rgb(255,255,255)
42030 'print "                                      "
42040 'locate 1,3
42050 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
42060 'goto Buka_Input_Seireki2:
42070 'else
42080 '(buf_year=0) then
42090 'buf_buka_year=0:buf_buka_year$="****"
42100 'goto Buka_Input_Seireki2:
42110 'endif
42120 'endif
42130 'end select
42140 'endif
42150 'end
42160 'ここまでコメント
42170 '================================================================
42180 if ((bg=2) or (key$=chr$(13))) then
42190 select case count
42200 case 0:
42210 count = 1
42220 if (No=-1) then
42230 count = 0
42240 buf_Buka_Born_Day(0) = No
42250 'Okボタンを押したとき
42260 goto Buka_Input_Seireki2:
42270 else
42280 'Okボタン以外が押されたとき
42290 if (No>=1 and No<=2) then
42300 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
42310 buf_buka_year = No
42320 buf_Buka_Born_Day(0) = No
42330 locate 1,3
42340 color rgb(255,255,255)
42350 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42360 goto Buka_Input_Seireki2:
42370 else
42380 count=0
42390 ui_msg"数字が範囲外になります。"
42400 buf_buka_year$="":buf_buka_year=0
42410 goto Buka_Input_Seireki2:
42420 endif
42430 endif
42440 case 1:
42450 count = 2
42460 if (No = -1) then
42470 count = 1
42480 goto Buka_Input_Seireki2:
42490 else
42500 'b = val(buf_buka_year$)
42510 buf_buka_year = a * 10 + No
42520 b=buf_buka_year
42530 buf_buka_year$ = str$(buf_buka_year)+"**"
42540 buf_Buka_Born_Day(0)=buf_buka_year
42550 locate 1,3
42560 color rgb(255,255,255)
42570 print "                                                                "
42580 locate 1,3
42590 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
42600 'if (No = -1) then
42610 'count=1
42620 goto Buka_Input_Seireki2:
42630 endif
42640 case 2:
42650 count=3
42660 if (No=-1) then
42670 count =2:No=0
42680 goto Buka_Input_Seireki2:
42690 else
42700 'b = val(buf_buka_year$)
42710 buf_buka_year = b * 10 + No
42720 c = buf_buka_year
42730 buf_buka_year$ = str$(buf_buka_year) + "*"
42740 buf_Buka_Born_Day(0) = buf_buka_year
42750 locate 1,3
42760 color rgb(255,255,255)
42770 print "                                        "
42780 locate 1,3
42790 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42800 goto Buka_Input_Seireki2:
42810 endif
42820 case 3:
42830 count=4
42840 if (No = -1) then
42850 'count=3:No=0
42860 goto Buka_Input_Seireki2:
42870 else
42880 'b = val(buf_buka_year$)
42890 buf_buka_year=c * 10 + No
42900 buf_buka_year$=str$(buf_buka_year)
42910 buf_Buka_Born_Day(0)=buf_buka_year
42920 locate 1,3
42930 color RGB(255,255,255)
42940 print "                                      "
42950 locate 1,3
42960 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42970 buf_buka_year=val(buf_buka_year$)
42980 'year=val(buf_year$)
42990 'if (No=-1) then
43000 'goto Input_Born_Month:
43010 'else
43020 goto Buka_Input_Seireki2:
43030 endif
43040 case 4:
43050 'bufyear=buf_year
43060 if (No = -1) then
43070 buf_buka_year = val(buf_buka_year$)
43080 buf_Buka_Born_Day(0)=buf_buka_year
43090 sp_on 14,0
43100 goto Buka_Input_Born_Month:
43110 else
43120 goto Buka_Input_Seireki2:
43130 endif
43140 end select
43150 endif
43160 '================================================================
43170 'ここにコピーする。
43180 '================================================================
43190 'Input"部下の生れた年代(4桁,〜2025年):",year
43200 'if year > 2025 then goto Jyoushi_Input_Seireki:
43210 'if year = 123 then cls 3:cls 4:goto Main_Screen:
43220 '"4桁目"
43230 'bufyear4 = fix(year / 1000)
43240 '"3桁目"
43250 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
43260 '"2桁目"
43270 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
43280 '"1桁目"
43290 'bufyear1 = fix((year - ((bufyear4*
43300 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
43310 '1.部下の生まれた年代'
43320 '2.部下の生まれた月'
43330 Buka_Input_Born_Month:
43340 cls 3:play "":count=0:count2=0
43350 'No=-1:Okのとき
43360 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
43370 for i=0 to 1
43380 buf_month(i)=0
43390 next i
43400 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43410 gload Gazo$ + "Screen1.png",0,0,0
43420 gload Gazo$ + "downscreen.png",0,0,800
43430 'Init"kb:4"
43440 '音声ファイル再生 2023.06.07
43450 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
43460 font 48
43470 locate 0,1
43480 '文字色：黒　 color rgb(0,0,0)
43490 '文字色:白
43500 color rgb(255,255,255)
43510 print "部下の生まれた月を入れて下さい" + chr$(13)
43520 '文字色:白
43530 color rgb(255,255,255)
43540 locate 1,3
43550 '文字色:白
43560 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
43570 color rgb(255,255,255)
43580 'locate 4,6:print ":7"
43590 'locate 9,6:print ":8"
43600 'locate 12,6:print ":9"
43610 locate 4,6
43620 '文字色:赤
43630 print ":7  :8  :9" + chr$(13)
43640 color rgb(255,255,255)
43650 locate 4,8
43660 print ":4  :5  :6" + chr$(13)
43670 color rgb(255,255,255)
43680 locate 4,10
43690 print ":1  :2  :3" + chr$(13)
43700 locate 4,12
43710 print "    :0"
43720 locate 12,12
43730 color rgb(0,0,255)
43740 print ":Ok"
43750 sp_on 4,0: sp_on 5,0:sp_on 6,0
43760 sp_on 7,0:sp_on 8,0:sp_on 9,0
43770 sp_on 10,0:sp_on 11,0:sp_on 12,0
43780 sp_on 13,0:sp_on 14,1
43790 Buka_Input_Born_Month2:
43800 key$="":bg=0:y=0:y2=0:bg2=0
43810 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43820 key$ = inkey$
43830 bg = strig(1)
43840 y = stick(1)
43850 y2 = stick(0)
43860 bg2 = strig(0)
43870 pause 5
43880 wend
43890 '十字キー　ここから
43900 '上の矢印　または、十字キー上
43910 if ((y = -1) or (key$ = chr$(30))) then
43920 select case No
43930 'No=-1:okのとき:初期の状態
43940 '0kボタンから３に移動
43950 '上に行く 処理
43960 case -1:
43970 No=3:sp_on 12,1:sp_on 14,0
43980 pause 200:goto Buka_Input_Born_Month2:
43990 '選択肢:3
44000 '3ボタンから 6に移動
44010 case 3:
44020 No=6:sp_on 12,0:sp_on 11,1
44030 pause 200:goto Buka_Input_Born_Month2:
44040 '6ボタンから ９に移動
44050 case 6:
44060 No=9:sp_on 10,1:sp_on 11,0
44070 pause 200:goto Buka_Input_Born_Month2:
44080 '6ボタンから ９に移動　ここまで
44090 '9で上を押して何もしない
44100 case 9:
44110 '何もしない
44120 No=9
44130 pause 200:goto Buka_Input_Born_Month2:
44140 '9で上を押しても何もしない　ここまで
44150 '上　 0ボタンから2ボタン
44160 'sp_on 6,1:1
44170 'sp_on 8,1:5
44180 'sp_on 7,1:7
44190 case 0:
44200 No=2:sp_on 13,0:sp_on 9,1:
44210 pause 200:goto Buka_Input_Born_Month2:
44220 '上  0ボタンから2ボタン　ここまで
44230 '2から５になる 上
44240 case 2:
44250 No=5:sp_on 8,1:sp_on 9,0:
44260 pause 200:goto Buka_Input_Born_Month2:
44270 case 5:
44280 No=8:sp_on 7,1:sp_on 8,0
44290 pause 200:goto Buka_Input_Born_Month2:
44300 case 8:
44310 pause 200:goto Buka_Input_Born_Month2:
44320 case 1:
44330 No=4:sp_on 5,1:sp_on 6,0
44340 pause 200:goto Buka_Input_Born_Month2:
44350 case 4:
44360 No=7:sp_on 4,1:sp_on 5,0
44370 pause 200:goto Buka_Input_Born_Month2:
44380 case 7:
44390 pause 200:goto Buka_Input_Born_Month2:
44400 end select
44410 endif
44420 '左３　ここまで
44430 '下の矢印
44440 '中央 2
44450 if ((y=1) or (key$ = chr$(31))) then
44460 select case No
44470 '9から６に下げる
44480 case 9:
44490 No=6:sp_on 11,1:sp_on 10,0
44500 pause 200:goto Buka_Input_Born_Month2:
44510 '6から３に下げる
44520 case 6:
44530 No=3:sp_on 12,1:sp_on 11,0
44540 pause 200:goto Buka_Input_Born_Month2:
44550 '3から０ｋに変える
44560 case 3:
44570 No=-1:sp_on 14,1:sp_on 12,0
44580 pause 200:goto Buka_Input_Born_Month2:
44590 'Okから下のボタンを押しても何もしない
44600 case -1:
44610 pause 200:goto Buka_Input_Born_Month2:
44620 case 8:
44630 No=5:sp_on 8,1:sp_on 7,0
44640 pause 200:goto Buka_Input_Born_Month2:
44650 case 5:
44660 No=2:sp_on 9,1:sp_on 8,0
44670 pause 200:goto Buka_Input_Born_Month2:
44680 case 2:
44690 No=0:sp_on 13,1:sp_on 9,0
44700 pause 200:goto Buka_Input_Born_Month2:
44710 case 0:
44720 pause 200:goto Buka_Input_Born_Month2:
44730 case 7:
44740 No=4:sp_on 5,1:sp_on 4,0
44750 pause 200:goto Buka_Input_Born_Month2:
44760 case 4:
44770 No=1:sp_on 6,1:sp_on 5,0
44780 pause 200:goto Buka_Input_Born_Month2:
44790 case 1:
44800 pause 200:goto Buka_Input_Born_Month2:
44810 end select
44820 endif
44830 '左へボタン 十字キー　左　or 　カーソル左
44840 if ((y2 = -1) or (key$ = chr$(29))) then
44850 select case No
44860 'Ok ボタン  Okから　左　０に行く
44870 case -1:
44880 No=0:sp_on 13,1:sp_on 14,0
44890 pause 200:goto Buka_Input_Born_Month2:
44900 '0 ボタン  左　何もしない
44910 case 0:
44920 pause 200:goto Buka_Input_Born_Month2:
44930 case 3:
44940 No=2:sp_on 9,1:sp_on 12,0:
44950 pause 200:goto Buka_Input_Born_Month2:
44960 case 2:
44970 No=1:sp_on 6,1:sp_on 9,0:
44980 pause 200:goto Buka_Input_Born_Month2:
44990 case 1:
45000 pause 200:goto Buka_Input_Born_Month2:
45010 case 6:
45020 No=5:sp_on 8,1:sp_on 11,0
45030 pause 200:goto Buka_Input_Born_Month2:
45040 case 5:
45050 No=4:sp_on 5,1:sp_on 8,0
45060 pause 200:goto Buka_Input_Born_Month2:
45070 case 4:
45080 pause 200:goto Buka_Input_Born_Month2:
45090 case 9:
45100 No=8:sp_on 7,1:sp_on 10,0
45110 pause 200:goto Buka_Input_Born_Month2:
45120 case 8:
45130 No=7:sp_on 4,1:sp_on 7,0
45140 pause 200:goto Buka_Input_Born_Month2:
45150 case 7:
45160 pause 200:goto Buka_Input_Born_Month2:
45170 end select
45180 endif
45190 '右  十字キー　右　or カーソル　右
45200 if ((y2 = 1) or (key$ = chr$(28))) then
45210 select case No
45220 '0ボタンからokボタン右に移動
45230 case 0:
45240 No=-1:sp_on 14,1:sp_on 13,0
45250 pause 200:goto Buka_Input_Born_Month2:
45260 '0ボタンからokボタン 右に移動　ここまで
45270 'OKボタンで右を押して何もしない
45280 case -1:
45290 pause 200:goto Buka_Input_Born_Month2:
45300 case 1:
45310 No=2:sp_on 9,1:sp_on 6,0
45320 pause 200:goto Buka_Input_Born_Month2:
45330 case 2:
45340 No=3:sp_on 12,1:sp_on 9,0
45350 pause 200:goto Buka_Input_Born_Month2:
45360 case 3:
45370 pause 200:goto Buka_Input_Born_Month2:
45380 case 4:
45390 No=5:sp_on 8,1:sp_on 5,0
45400 pause 200:goto Buka_Input_Born_Month2:
45410 case 5:
45420 No=6:sp_on 11,1:sp_on 8,0
45430 pause 200:goto Buka_Input_Born_Month2:
45440 case 7:
45450 No=8:sp_on 7,1:sp_on 4,0
45460 pause 200:goto Buka_Input_Born_Month2:
45470 case 8:
45480 No=9:sp_on 10,1:sp_on 7,0
45490 pause 200:goto Buka_Input_Born_Month2:
45500 case 9:
45510 pause 200:goto Buka_Input_Born_Month2:
45520 case 6:
45530 pause 200:goto Buka_Input_Born_Month2:
45540 end select
45550 'Okから右ボタンを押して何もしない ここまで
45560 endif
45570 '十字キー　ここまで
45580 '右の丸ボタン　決定キー
45590 if ((bg=2) or (key$=chr$(13))) then
45600 select case count
45610 case 0:
45620 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
45630 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
45640 locate 1,3
45650 color RGB(255,255,255)
45660 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
45670 goto Buka_Input_Born_Month2:
45680 case 1:
45690 count = 2:buf_buka_month=a*10+No
45700 if (No = -1) then
45710 'count=0
45720 month=buf_buka_month
45730 buf_buka_month=val(buf_buka_Month$)
45740 month=buf_buka_month
45750 '生まれた日に飛ぶ
45760 goto Buka_Input_Born_Day:
45770 else
45780 buf_buka_month = a * 10 + No
45790 buf_buka_Month$ = str$(buf_buka_month)
45800 buf_Buka_Born_Day(1) = buf_buka_month
45810 locate 1,3
45820 color Rgb(255,255,255)
45830 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
45840 goto Buka_Input_Born_Month2:
45850 endif
45860 case 2:
45870 count=3
45880 'c= val(buf_Month$)
45890 'buf_month = c*10 + No
45900 'buf_Month$ = str$(buf_month)
45910 'locate 2,3
45920 'print "部下の生まれた月(1月～12月):";buf_Month$
45930 'goto Buka_Input_Born_Month2:
45940 'case 3:
45950 'count=4
45960 'b=val(buf_month$)
45970 'buf_month=c*10+No
45980 'buf_Month$=str$(buf_month)
45990 'locate 2,3
46000 'print "部下の生まれた月(1月～12月):";buf_Month$
46010 'buf_month=val(buf_Month$)
46020 'year=val(buf_year$)
46030 if (No=-1) then
46040 goto Buka_Input_Born_Day:
46050 else
46060 goto Input_Born_Month2:
46070 endif
46080 'case 4:
46090 'bufyear=buf_year
46100 'if (No=-1) then
46110 'buf_month = val(buf_Month$)
46120 'month = buf_month
46130 'sp_on 14,0
46140 'goto Input_Born_Day:
46150 'else
46160 'goto Input_Born_Month2:
46170 'endif
46180 end select
46190 endif
46200 '左の丸ボタン　キャンセル
46210 if (bg2=2) then
46220 select case count2
46230 case 0:
46240 if (No = -1) then
46250 buf_buka_month=0:buf_buka_Month$="**"
46260 count=0
46270 goto rewrite2:
46280 else
46290 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
46300 buf_month=0:buf_Month$="**"
46310 locate 2,3
46320 color rgb(255,255,255)
46330 print "                                       "
46340 goto rewrite2:
46350 if (No>12) then
46360 ui_msg"値が範囲外です。"
46370 goto rewrite2:
46380 endif
46390 endif
46400 endif
46410 rewrite2:
46420 locate 2,3
46430 color rgb(255,255,255)
46440 print "                                      "
46450 locate 2,3
46460 print "部下の生まれた月(1月~12月):";buf_buka_Month$
46470 goto Buka_Input_Born_Month2:
46480 end select
46490 'endif
46500 endif
46510 end
46520 '2.部下の生まれた月'
46530 '3.部下の生まれた日'
46540 '生れた日を入力
46550 Buka_Input_Born_Day:
46560 '生まれた日入力
46570 cls 3:play ""
46580 'No=-1:Okのとき
46590 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
46600 for i=0 to 1
46610 buf_day(i)=0
46620 next i
46630 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46640 gload Gazo$ + "Screen1.png",0,0,0
46650 gload Gazo$ + "downscreen.png",0,0,800
46660 'Init"kb:2"
46670 '音声ファイル再生 2023.06.07
46680 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
46690 font 48
46700 locate 0,1
46710 '文字色：黒　 color rgb(0,0,0)
46720 color rgb(255,255,255)
46730 print "部下の生まれた日を入れて下さい" + chr$(13)
46740 color rgb(255,255,255)
46750 locate 1,3
46760 print "部下の生まれた日(1日~31日):";buf_Day$
46770 color rgb(255,255,255)
46780 'locate 4,6:print ":7"
46790 'locate 9,6:print ":8"
46800 'locate 12,6:print ":9"
46810 locate 4,6
46820 print ":7  :8  :9" + chr$(13)
46830 color rgb(255,255,255)
46840 locate 4,8
46850 print ":4  :5  :6" + chr$(13)
46860 color rgb(255,255,255)
46870 locate 4,10
46880 print ":1  :2  :3" + chr$(13)
46890 locate 4,12
46900 print "    :0"
46910 locate 12,12
46920 color rgb(0,0,255)
46930 print ":Ok"
46940 sp_on 4,0: sp_on 5,0:sp_on 6,0
46950 sp_on 7,0:sp_on 8,0:sp_on 9,0
46960 sp_on 10,0:sp_on 11,0:sp_on 12,0
46970 sp_on 13,0:sp_on 14,1
46980 Buka_Input_Born_Day2:
46990 key$="":bg=0:y=0:y2=0:bg2=0
47000 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
47010 key$ = inkey$
47020 bg = strig(1)
47030 y = stick(1)
47040 y2 = stick(0)
47050 bg2 = strig(0)
47060 pause 5
47070 wend
47080 '十字キー　ここから
47090 '上の矢印　または、十字キー上
47100 if ((y = -1) or (key$ = chr$(30))) then
47110 select case No
47120 'No=-1:okのとき:初期の状態
47130 '0kボタンから３に移動
47140 '上に行く 処理
47150 case -1:
47160 No=3:sp_on 12,1:sp_on 14,0
47170 pause 200:goto Buka_Input_Born_Day2:
47180 '選択肢:3
47190 '3ボタンから 6に移動
47200 case 3:
47210 No=6:sp_on 12,0:sp_on 11,1
47220 pause 200:goto Buka_Input_Born_Day2:
47230 '6ボタンから ９に移動
47240 case 6:
47250 No=9:sp_on 10,1:sp_on 11,0
47260 pause 200:goto Buka_Input_Born_Day2:
47270 '6ボタンから ９に移動　ここまで
47280 '9で上を押して何もしない
47290 case 9:
47300 '何もしない
47310 No=9
47320 pause 200:goto Buka_Input_Born_Day2:
47330 '9で上を押しても何もしない　ここまで
47340 '上　 0ボタンから2ボタン
47350 'sp_on 6,1:1
47360 'sp_on 8,1:5
47370 'sp_on 7,1:7
47380 case 0:
47390 No=2:sp_on 13,0:sp_on 9,1:
47400 pause 200:goto Buka_Input_Born_Day2:
47410 '上  0ボタンから2ボタン　ここまで
47420 '2から５になる 上
47430 case 2:
47440 No=5:sp_on 8,1:sp_on 9,0:
47450 pause 200:goto Buka_Input_Born_Day2:
47460 case 5:
47470 No=8:sp_on 7,1:sp_on 8,0
47480 pause 200:goto Buka_Input_Born_Day2:
47490 case 8:
47500 pause 200:goto Buka_Input_Born_Day2:
47510 case 1:
47520 No=4:sp_on 5,1:sp_on 6,0
47530 pause 200:goto Buka_Input_Born_Day2:
47540 case 4:
47550 No=7:sp_on 4,1:sp_on 5,0
47560 pause 200:goto Buka_Input_Born_Day2:
47570 case 7:
47580 pause 200:goto Buka_Input_Born_Day2:
47590 end select
47600 endif
47610 '左３　ここまで
47620 '下の矢印
47630 '中央 2
47640 if ((y=1) or (key$ = chr$(31))) then
47650 select case No
47660 '9から６に下げる
47670 case 9:
47680 No=6:sp_on 11,1:sp_on 10,0
47690 pause 200:goto Buka_Input_Born_Day2:
47700 '6から３に下げる
47710 case 6:
47720 No=3:sp_on 12,1:sp_on 11,0
47730 pause 200:goto Buka_Input_Born_Day2:
47740 '3から０ｋに変える
47750 case 3:
47760 No=-1:sp_on 14,1:sp_on 12,0
47770 pause 200:goto Buka_Input_Born_Day2:
47780 'Okから下のボタンを押しても何もしない
47790 case -1:
47800 pause 200:goto Buka_Input_Born_Day2:
47810 case 8:
47820 No=5:sp_on 8,1:sp_on 7,0
47830 pause 200:goto Buka_Input_Born_Day2:
47840 case 5:
47850 No=2:sp_on 9,1:sp_on 8,0
47860 pause 200:goto Buka_Input_Born_Day2:
47870 case 2:
47880 No=0:sp_on 13,1:sp_on 9,0
47890 pause 200:goto Buka_Input_Born_Day2:
47900 case 0:
47910 pause 200:goto Buka_Input_Born_Day2:
47920 case 7:
47930 No=4:sp_on 5,1:sp_on 4,0
47940 pause 200:goto Buka_Input_Born_Day2:
47950 case 4:
47960 No=1:sp_on 6,1:sp_on 5,0
47970 pause 200:goto Buka_Input_Born_Day2:
47980 case 1:
47990 pause 200:goto Buka_Input_Born_Day2:
48000 end select
48010 endif
48020 '左へボタン 十字キー　左　or 　カーソル左
48030 if ((y2 = -1) or (key$ = chr$(29))) then
48040 select case No
48050 'Ok ボタン  Okから　左　０に行く
48060 case -1:
48070 No=0:sp_on 13,1:sp_on 14,0
48080 pause 200:goto Buka_Input_Born_Day2:
48090 '0 ボタン  左　何もしない
48100 case 0:
48110 pause 200:goto Buka_Input_Born_Day2:
48120 case 3:
48130 No=2:sp_on 9,1:sp_on 12,0:
48140 pause 200:goto Buka_Input_Born_Day2:
48150 case 2:
48160 No=1:sp_on 6,1:sp_on 9,0:
48170 pause 200:goto Buka_Input_Born_Day2:
48180 case 1:
48190 pause 200:goto Buka_Input_Born_Day2:
48200 case 6:
48210 No=5:sp_on 8,1:sp_on 11,0
48220 pause 200:goto Buka_Input_Born_Day2:
48230 case 5:
48240 No=4:sp_on 5,1:sp_on 8,0
48250 pause 200:goto Buka_Input_Born_Day2:
48260 case 4:
48270 pause 200:goto Buka_Input_Born_Day2:
48280 case 9:
48290 No=8:sp_on 7,1:sp_on 10,0
48300 pause 200:goto Buka_Input_Born_Day2:
48310 case 8:
48320 No=7:sp_on 4,1:sp_on 7,0
48330 pause 200:goto Buka_Input_Born_Day2:
48340 case 7:
48350 pause 200:goto Buka_Input_Born_Day2:
48360 end select
48370 endif
48380 '右  十字キー　右　or カーソル　右
48390 if ((y2 = 1) or (key$ = chr$(28))) then
48400 select case No
48410 '0ボタンからokボタン右に移動
48420 case 0:
48430 No=-1:sp_on 14,1:sp_on 13,0
48440 pause 200:goto Buka_Input_Born_Day2:
48450 '0ボタンからokボタン 右に移動　ここまで
48460 'OKボタンで右を押して何もしない
48470 case -1:
48480 pause 200:goto Buka_Input_Born_Day2:
48490 case 1:
48500 No=2:sp_on 9,1:sp_on 6,0
48510 pause 200:goto Buka_Input_Born_Day2:
48520 case 2:
48530 No=3:sp_on 12,1:sp_on 9,0
48540 pause 200:goto Buka_Input_Born_Day2:
48550 case 3:
48560 pause 200:goto Buka_Input_Born_Day2:
48570 case 4:
48580 No=5:sp_on 8,1:sp_on 5,0
48590 pause 200:goto Buka_Input_Born_Day2:
48600 case 5:
48610 No=6:sp_on 11,1:sp_on 8,0
48620 pause 200:goto Buka_Input_Born_Day2:
48630 case 7:
48640 No=8:sp_on 7,1:sp_on 4,0
48650 pause 200:goto Buka_Input_Born_Day2:
48660 case 8:
48670 No=9:sp_on 10,1:sp_on 7,0
48680 pause 200:goto Buka_Input_Born_Day2:
48690 case 9:
48700 pause 200:goto Buka_Input_Born_Day2:
48710 case 6:
48720 pause 200:goto Buka_Input_Born_Day2:
48730 end select
48740 'Okから右ボタンを押して何もしない ここまで
48750 endif
48760 '十字キー　ここまで
48770 '右の丸ボタンを押したとき
48780 if ((bg = 2) or (key$ = chr$(13))) then
48790 'count :決定ボタンを押した回数
48800 select case (count)
48810 '1桁目入力
48820 case 0:
48830 count = 1:
48840 if (No = -1) then
48850 '1桁目　OKでは何もしない
48860 'goto check:
48870 No=0
48880 else
48890 'ok以外のボタンを押したとき
48900 buf_buka_day = No:buf_buka_Day$ = str$(No)
48910 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
48920 buf_buka_Day$ = str$(No) + "*"
48930 endif
48940 a=No
48950 buf_Buka_Born_Day(2) = buf_buka_day
48960 locate 1,3
48970 print"                                      "
48980 color RGB(255,255,255)
48990 locate 1,3
49000 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
49010 endif
49020 check2:
49030 if (No >= 1 and No <= 9) then
49040 sp_on 14,0
49050 goto Buka_Input_Born_Day2:
49060 else
49070 sp_on 14,0
49080 goto Result_Business_Aisyou:
49090 end
49100 endif
49110 case 1:
49120 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
49130 count = 2:
49140 'locate 2,3
49150 'color RGB(255,255,255)
49160 'print "生まれた日(1日~31日):";buf_Day$
49170 'Okボタンを押したときの処理
49180 '入力値　10未満のとき
49190 'c = buf_day
49200 if (No = -1) then
49210 'c=buf_day
49220 ' buf_day = c
49230 'buf_Day$ = str$(buf_day)
49240 '10以下のとき
49250 No=0
49260 if (buf_day < 10) then
49270 sp_on 14,0
49280 goto Result_Business_Aisyou:
49290 end
49300 endif
49310 else
49320 sp_on 14,0
49330 'c=No
49340 buf_buka_day = a * 10 + No
49350 buf_buka_Day$ = str$(buf_buka_day)
49360 buf_Buka_Born_Day(2) = buf_buka_day
49370 locate 0,3
49380 color Rgb(255,255,255)
49390 print "                                       "
49400 locate 1,3
49410 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
49420 goto Buka_Input_Born_Day2:
49430 endif
49440 '生まれた日　2桁目の数字　or 1桁の数字 + ok
49450 case 2:
49460 count=0
49470 'c=val(buf_Day$)
49480 'buf_day=c*10+No
49490 'buf_Day$=str$(buf_day)
49500 'day=buf_day
49510 'locate 2,3
49520 'print "生まれた日(1日〜31日):";buf_Day$
49530 'No=-1:ok ボタンを押したとき
49540 if (No = -1) then No=0
49550 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
49560 sp_on 14,0
49570 goto Result_Business_Aisyou:
49580 else
49590 goto Buka_Input_Born_Day2:
49600 endif
49610 'Okボタン以外を押したとき
49620 else
49630 c=val(buf_buka_Day$)
49640 buf_buka_day = c * 10 + No
49650 buf_buka_Day$ = str$(buf_buka_day)
49660 locate 1,3
49670 print "                "
49680 locate 1,3
49690 print "生まれた日(1日~31日):"+buf_buka_Day$
49700 goto Buka_Input_Born_Day2:
49710 'endif
49720 case 3:
49730 count=4
49740 'c=val(buf_day$)
49750 'buf_day=c*10+No
49760 'buf_day$=str$(buf_day)
49770 'locate 2,3
49780 'print "生まれた日を入れてください:";buf_day$
49790 'year=val(buf_year$)
49800 if (No = -1) then
49810 'goto Buka_Input_Born_Day:
49820 sp_on 14,0:
49830 goto complate_jyoushi:
49840 else
49850 goto Buka_Input_Born_Month2:
49860 endif
49870 'case 4:
49880 'bufyear=buf_year
49890 'if (No=-1) then
49900 'buf_day = val(buf_day$)
49910 'bufday = buf_day
49920 'sp_on 14,0
49930 goto complate_jyoushi:
49940 'else
49950 'goto Buka_Input_Born_Day2:
49960 'endif
49970 end select
49980 endif
49990 if (bg2=2) then
50000 select case count2
50010 case 0:
50020 if (No=-1) then
50030 'buf_day=0:buf_Day$="**"
50040 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
50050 count=0
50060 buf_buka_day=0:buf_buka_Day$="**"
50070 goto rewrite_day3:
50080 else
50090 buf_buka_day=0:buf_buka_Day$="**"
50100 ui_msg"値が範囲外です"
50110 endif
50120 goto rewrite_day3:
50130 else
50140 goto rewrite_day3:
50150 endif
50160 rewrite_day3:
50170 locate 2,3
50180 color rgb(255,255,255)
50190 print "                                      "
50200 locate 1,3
50210 print "生まれた日(1日~31日):"+buf_buka_Day$
50220 goto Buka_Input_Born_Day2:
50230 end select
50240 endif
50250 '3.部下の生まれた日'
50260 '部下'
50270 '--------------------------------------------'
50280 'ビジネの相性　結果表示
50290 Result_Business_Aisyou:
50300 cls 3:init "kb:4"
50310 a=0:b=0:c=0:d=0:e=0:f=0
50320 bg=0:key$=""
50330 gload Gazo$ + "Screen1.png",0,0,0
50340 gload Gazo$ + "downscreen.png",0,0,800
50350 sp_on 14,0
50360 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
50370 buf_Buka = Kabara_Num(d,e,f)
50380 a_2 = buf_Buka
50390 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
50400 locate 0,1
50410 color rgb(255,0,0)
50420 print "●.相性診断結果１"
50430 locate 0,4:
50440 color rgb(255,255,255)
50450 print "1.上司の名前:";buffer_name$(0)
50460 locate 0,6
50470 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
50480 locate 0,8
50490 print "2.部下の名前:";buffer_name$(1)
50500 locate 0,10
50510 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
50520 locate 0,12
50530 print "3.上司と部下の相性:";Result_Aisyou$
50540 locate 1,15
50550 color rgb(0,0,0)
50560 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
50570 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
50580 bg = strig(1)
50590 key$ = inkey$
50600 bg2 = strig(0)
50610 pause 5
50620 wend
50630 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
50640 if (bg2 = 2) then
50650 cls 3:goto Business_Aishou_Input_1_parson:
50660 endif
50670 'ビジネスの相性占い　結果2　説明
50680 Result_Business_Aisyou2:
50690 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
50700 gload Gazo$ + "Screen1.png",0,0,0
50710 locate 0,1
50720 color rgb(255,0,0)
50730 print "●.相性の説明"
50740 color rgb(255,255,255)
50750 locate 0,4
50760 print "相性:";Result_Aisyou$
50770 locate 0,6:
50780 print "相性の説明:";buf$
50790 locate 0,15
50800 color rgb(0,0,0)
50810 print "右の丸ボタン:トップ,左のボタン:前の画面"
50820 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
50830 bg = strig(1)
50840 bg2 = strig(0)
50850 key$ = inkey$
50860 pause 5
50870 wend
50880 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50890 if ((bg2 = 2)) then goto Result_Business_Aisyou:
50900 '自作関数 ここから
50910 func read_explain$(ba$)
50920 d$=""
50930 buf_String$=""
50940 if ba$="A" then
50950 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
50960 line input #1,a$
50970 a1$=mid$(a$,1,12)
50980 a2$=mid$(a$,13,17)
50990 a3$=mid$(a$,30,17)
51000 a4$=mid$(a$,47,18)
51010 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
51020 buf_String$ = a5$
51030 close #1
51040 endif
51050 if ba$="B"  then
51060 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
51070 line input #1,b$
51080 b1$=mid$(b$,1,15)
51090 b2$=mid$(b$,16,21)
51100 'b3$=mid$(b$,33,3)
51110 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
51120 buf_String$ = b4$
51130 close #1
51140 endif
51150 if ba$="C"  then
51160 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
51170 line input #1,c$
51180 c1$ = Mid$(c$,1,15)
51190 c2$ = Mid$(c$,16,33)
51200 c3$ = c1$ + chr$(13) + c2$
51210 buf_String$ = c3$
51220 close #1
51230 endif
51240 if ba$="D" then
51250 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
51260 line input #1,d$
51270 d1$=mid$(d$,1,15)
51280 d2$=mid$(d$,16,22)
51290 d3$=mid$(d$,38,7)
51300 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
51310 buf_String$ = d4$
51320 close #1
51330 endif
51340 if ba$="E"  then
51350 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
51360 line input #1,e$
51370 e1$=Mid$(e$,1,16)
51380 e2$=Mid$(e$,17,16)
51390 e3$=Mid$(e$,33,12)
51400 e4$=Mid$(e$,45,17)
51410 e5$=Mid$(e$,62,17)
51420 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
51430 buf_String$ = e6$
51440 close #1
51450 endif
51460 if ba$="F" then
51470 '改行を追加して表示を調整
51480 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
51490 line input #1,f$
51500 f1$=Mid$(f$,1,15)
51510 f2$=Mid$(f$,16,12)
51520 buf_String$ = f1$+chr$(13)+f2$
51530 close #1
51540 endif
51550 if ba$="G" then
51560 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
51570 line input #1,g$
51580 g1$ = mid$(g$,1,16)
51590 g2$ = mid$(g$,17,18)
51600 g3$ = mid$(g$,36,21)
51610 g4$ = mid$(g$,56,6)
51620 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
51630 buf_String$ = g5$
51640 close #1
51650 endif
51660 if ba$="H" then
51670 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
51680 line input #1,h$
51690 h1$=Mid$(h$,1,17)
51700 h2$=Mid$(h$,18,21)
51710 h3$=Mid$(h$,39,20)
51720 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
51730 buf_String$ = h$
51740 close #1
51750 endif
51760 if ba$ = "I" then
51770 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
51780 line input #1,i$
51790 i1$=Mid$(i$,1,10)
51800 i2$=Mid$(i$,11,13)
51810 i3$=Mid$(i$,25,16)
51820 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
51830 buf_String$ = i$
51840 close #1
51850 endif
51860 buffer$ = buf_String$
51870 endfunc buffer$
51880 'カバラ数（数秘番号を求める）
51890 func Kabara_Num(buffer_Year,month,day)
51900 '=============================
51910 'a1:4桁のうちの1桁目を求める
51920 '例 a1:1234の4が1桁目
51930 'a2:4桁のうちの2桁目を求める
51940 '例:a2:1234の3が2桁目
51950 'a3:4桁のうちの3桁目を求める
51960 '例 a3:1234の2が3桁目
51970 'a4:4桁のうちの4桁目を求める
51980 '例 a4:1234の1が4桁目
51990 '==============================
52000 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
52010 Year = buffer_Year
52020 '処理1　整数部分を取り出す。
52030 a4 = fix(Year / 1000)
52040 a3 = fix(Year / 100) - (a4 * 10)
52050 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
52060 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
52070 '処理　２　取り出した整数部分を足す。
52080 a_ = a1 + a2 + a3 + a4 +month + day
52090 'a1=0:a2=0:a3=0:a4=0
52100 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
52110 buffer = a_
52120 'else
52130 goto recomp2:
52140 'if (a_ = 10) then
52150 '  buffer = 1
52160 endif
52170 recomp2:
52180 a5=0:a6=0
52190 a5 = fix(a_ / 10)
52200 a6 = (a_) - (a5 * 10)
52210 a_ = a5 + a6
52220 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
52230 '結果に行く
52240 goto Res2:
52250 '  if ((a_>11) and (a_<99)) then
52260 else
52270 '再度計算
52280 goto recomp2:
52290 endif
52300 '     a1 = fix(a_ / 10)
52310 '     a2 = a_ - (a1 * 10)
52320 '     a_ = a1 + a2
52330 '     buffer = a_
52340 'endif
52350 'else
52360 '    bffer = a_
52370 'endif
52380 'endif
52390 'else
52400 'talk "プログラムを終了します。"
52410 'end
52420 'endif
52430 'kabara = 10
52440 Res2:
52450 kabara = a_
52460 endfunc kabara
52470 func Kabara_Aisyou$(buff1,buff2)
52480 a=0:b=0
52490 '範囲　1~9
52500 if ((buff1 > 0 and buff1 < 10)) then
52510 a = buff1
52520 else
52530 Select case buff1
52540 case 11:
52550 buff1=9:a=buff1
52560 case 22:
52570 buff1=10:a=buff1
52580 end select
52590 endif
52600 '範囲　１~９
52610 if ((buff2 > 0 and buff2 < 10)) then
52620 b = buff2
52630 else
52640 select case buff2
52650 case 11:
52660 buff2=9:b=buff2
52670 case 12:
52680 buff2=10:b=buff2
52690 end select
52700 endif
52710 Aisyou$ = Buffer_Business_Aisyou$(a,b)
52720 endfunc Aisyou$
52730 '=============================
52740 '自作関数 ここまで
52750 '1.数秘術　トップ画面
52760 '
52770 'Data_eraseを一番最後に持ってくる
52780 '=============================
52790 Data_erase:
52800 'メモリー削除
52810 erase buf_name1$
52820 erase buf_name2$
52830 erase buffer
52840 erase buf_chart$
52850 erase Buffer_Business_Aisyou$
52860 erase buffer_name$
52870 '上司の誕生日
52880 erase buf_Jyoushi_Born_Day
52890 '部下の誕生日
52900 erase buf_Buka_Born_Day
52910 erase buf_year
52920 erase buf_month
52930 erase buf_day
52940 'フォーカスライン
52950 erase Forcus1_buffer$
52960 erase Forcus2_buffer$
52970 erase Forcus3_buffer$
52980 buffer$ = ""
52990 buf$ = ""
53000 buf_year$ = ""
53010 buf_Jyoushi_Kabara_Num = 0
53020 buf_Buka_Kabara_Num = 0
53030 count = 0
53040 buf_Month$ = ""
53050 buf_Day$ = ""
53060 b=0
53070 c=0
53080 return
