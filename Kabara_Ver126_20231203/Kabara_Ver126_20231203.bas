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
450 '2023.12.03:Ver126_20231206
460 Version$ = "Ver:1.2.6_20231206"
470 'Gazo file Folder
480 Gazo$ = "./data/Picture/"
490 'Voice files 2023
500 Voice$ = "./data/Voice/Voice/"
510 'BirtheyeChart Data:20230626
520 Birth_eye_chart$ = "./data/chart_data/"
530 'Data File
540 Data$ = "./data/data/"
550 'Business Aisyou 結果説明保存フォルダ
560 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
570 'Save BirdsEyeGrit List
580 Save_data_Birdseye$ = "./data/Parsonal_data/"
590 '変数定義 パート
600 b=0:c=0
610 dim buf_name1$(10),buf_name2$(10)
620 dim buffer(9),buf_chart$(26,2)
630 'ビジネスの相性　データー
640 dim Buffer_Business_Aisyou$(12,12)
650 '生れた年代
660 dim buf_year(4):buf_year$ = ""
670 dim buf_month(2)
680 dim buf_day(2)
690 'フォーカスライン　配列
700 dim Forcus1_buffer$(3)
710 dim Forcus2_buffer$(3)
720 dim Forcus3_buffer$(2)
730 '生れた月
740 buf_Month$ = ""
750 '生れた日
760 buf_Day$ = ""
770 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
780 dim buffer_name$(3)
790 '1-1.上司の誕生日(数値データー)
800 dim buf_Jyoushi_Born_Day(3)
810 '1-2.上司の数秘ナンバー(数値データー)
820 buf_Jyoushi_Kabara_Num = 0
830 '2-1.部下の誕生日(数値データー)
840 dim buf_Buka_Born_Day(3)
850 '2-2.部下の数秘ナンバー(数秘データー)
860 buf_Buka_Kabara_Num = 0
870 count=0
880 'Birds Eye List 配列
890 dim List$(6)
900 '部下の数秘ナンバー
910 'File 読み込み
920 '1.ビジネスの相性占い
930 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
940 for i=0 to 11
950 for j=0 to 11
960 input #1,a$
970 Buffer_Business_Aisyou$(j,i) = a$
980 next j
990 next i
1000 close #1
1010 '2.Birth Eye chart$
1020 '2.バーズアイグリッドを読み込む
1030 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1040 for j=0 to 25
1050 for i=0 to 1
1060 input #1,a$
1070 buf_chart$(j,i) = a$
1080 next i
1090 next j
1100 close #1
1110 'File 読み込み　ここまで
1120 'Main画面
1130 screen 1,1,1,1
1140 Main_Screen:
1150 cls 3:
1160 No=0
1170 gload Gazo$ + "Selection.png",1,5,200
1180 gload Gazo$ + "Selection.png",1,5,300
1190 gload Gazo$ + "Selection.png",1,5,400
1200 gload Gazo$ + "Selection.png",1,5,500
1210 '4
1220 gload Gazo$ + "Selection.png",1,35,300
1230 '5
1240 gload Gazo$ + "Selection.png",1,35,400
1250 '6
1260 gload Gazo$ + "Selection.png",1,35,500
1270 '7
1280 gload Gazo$ + "Selection.png",1,70,300
1290 '8
1300 gload Gazo$ + "Selection.png",1,70,400
1310 '9
1320 gload Gazo$ + "Selection.png",1,70,500
1330 '10
1340 gload Gazo$ + "Selection.png",1,110,300
1350 '11
1360 gload Gazo$ + "Selection.png",1,110,400
1370 '12
1380 gload Gazo$ + "Selection.png",1,110,500
1390 '13:0
1400 gload Gazo$ + "Selection.png",1,150,400
1410 gload Gazo$ + "Selection.png",1,200,400
1420 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1430 gload Gazo$ + "downscreen.png",0,0,800
1440 sp_def 0,(5,300),32,32
1450 sp_def 1,(5,400),32,32
1460 sp_def 2,(5,500),32,32
1470 sp_def 3,(5,600),32,32
1480 '1
1490 sp_def 4,(35,300),32,32
1500 '2
1510 sp_def 5,(35,400),32,32
1520 '3
1530 sp_def 6,(35,500),32,32
1540 '4
1550 sp_def 7,(70,300),32,32
1560 '5
1570 sp_def 8,(70,400),32,32
1580 '6
1590 sp_def 9,(70,500),32,32
1600 '7
1610 sp_def 10,(110,300),32,32
1620 '8
1630 sp_def 11,(110,400),32,32
1640 '9
1650 sp_def 12,(110,400),32,32
1660 sp_def 13,(150,400),32,32
1670 sp_def 14,(200,400),32,32
1680 'Sprite OFF
1690 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1700 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1710 sp_put 0,(5,300),0,0
1720 sp_put 1,(5,400),1,0
1730 sp_put 2,(5,500),2,0
1740 sp_put 3,(5,600),3,0
1750 '1
1760 sp_put 4,(130,300),4,0
1770 '2
1780 sp_put 5,(130,400),5,0
1790 '3
1800 sp_put 6,(130,500),6,0
1810 '4
1820 sp_put 7,(340,300),7,0
1830 '5
1840 sp_put 8,(340,400),8,0
1850 '6
1860 sp_put 9,(340,500),9,0
1870 '7
1880 sp_put 10,(540,300),10,0
1890 '8
1900 sp_put 11,(540,400),11,0
1910 '9
1920 sp_put 12,(540,500),12,0
1930 '
1940 sp_put 13,(340,600),13,0
1950 sp_put 14,(540,600),14,0
1960 Main_Top:
1970 'Main Message 2023.06.07
1980 '再生を止める
1990 play ""
2000 init "kb:4"
2010 'font 32:
2020 font 48
2030 print chr$(13) + chr$(13) + chr$(13)
2040 color rgb(217,255,212)
2050 print "番号を選んでください" + chr$(13)
2060 '0
2070 print " :1.数秘術占い" + chr$(13)
2080 '1
2090 print " :2.設 定" + chr$(13)
2100 '2
2110 print " :3.ヘルプ" + chr$(13)
2120 '3
2130 print " :4.(プログラムを)終了する" + chr$(13)
2140 COLOR rgb(0,0,0):No=0
2150 locate 1,15
2160 print "                                       "
2170 locate 1,15:print "1.数秘術占いを選択"
2180 play Voice$ + "Voice_Main_Message_20230607.mp3"
2190 Main_Screen_Select:
2200 y = 0:key$ = "":bg = 0:bg2=0
2210 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2220 y = stick(1)
2230 '"May (2023)"
2240 key$ = inkey$
2250 bg = strig(1)
2260 bg2 = strig(0)
2270 pause 200
2280 wend
2290 '1.
2300 'ジョイパッドのソース ソート　ここから
2310 'カーソル　下 or 十字キー下
2320 if ((y = 1) or (key$ = chr$(31))) then
2330 select case No
2340 case 0:
2350 '1
2360 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2370 case 1:
2380 '2
2390 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2400 case 2:
2410 '3
2420 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2430 case 3:
2440 '0
2450 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2460 end select
2470 endif
2480 '2.
2490 'カーソル　上　or 十字キー  上
2500 if ((y = -1) or (key$ = chr$(30))) then
2510 select case No
2520 case 0:
2530 '3
2540 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2550 case 1:
2560 '0
2570 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2580 case 2:
2590 '1
2600 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2610 case 3:
2620 '2
2630 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2640 end select
2650 endif
2660 'ジョイパッド　ソース 部分　ここまで
2670 'ジョイパッド右　　or Enter key 決定
2680 if ((bg = 2) OR (key$ = chr$(13))) then
2690 select case No
2700 case 0:
2710 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2720 case 1:
2730 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2740 case 2:
2750 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2760 case 3:
2770 play "":pause 200
2780 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2790 end select
2800 endif
2810 if (bg2 = 2) then
2820 play "":pause 200
2830 play Voice$ + "Voice_Main_Message_20230607.mp3"
2840 goto Main_Screen_Select:
2850 endif
2860 'Version
2870 Version:
2880 cls 3:PLAY ""
2890 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2900 gload Gazo$ + "downscreen.png",0,0,800
2910 init"kb:4":font 32+8
2920 'talk"バージョン情報です"
2930 'Message :Version
2940 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2950 locate 0,3
2960 color rgb(0,0,0)
2970 print "・Title:数秘術占い";chr$(13)
2980 print "・" + Version$ + chr$(13)
2990 print "・Author:licksjp"+chr$(13)
3000 print "・E-mail:licksjp@gmail.com" + chr$(13)
3010 locate 0,12
3020 print "(C)licksjp All rights " + chr$(13)
3030 locate 7,13
3040 print "reserved since 2009"+chr$(13)
3050 locate 0,18
3060 color rgb(255,255,255)
3070 print "ジョイパッドの右を押してください"
3080 Versionn_Selection:
3090 bg = 0:key$ = "":bg2 = 0
3100 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3110 bg = strig(1)
3120 key$ = inkey$
3130 bg2 = strig(0)
3140 pause 2
3150 wend
3160 if ((bg = 2) or (key$ = chr$(13))) then
3170 pause 200:cls 4:goto Main_Screen:
3180 endif
3190 if (bg2=2) then
3200 play "":pause 200
3210 play Voice$ + "Voice_Version_Message_20230607.mp3"
3220 goto Versionn_Selection:
3230 endif
3240 '1.数秘ナンバーを求める
3250 '誕生日入力(生れた年代)
3260 Input_Seireki:
3270 cls 3:play "":count=0:count2=0
3280 'No = -1:Okのとき
3290 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3300 for i=0 to 3
3310 buf_year(i)=0
3320 next i
3330 gload Gazo$ + "Screen1.png",0,0,0
3340 gload Gazo$ + "downscreen.png",0,0,800
3350 'Init"kb:2"
3360 '音声ファイル再生 2023.06.07
3370 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3380 font 48
3390 locate 0,1
3400 '文字色：黒　 color rgb(0,0,0)
3410 color rgb(255,255,255)
3420 print "生まれた年代を入れて下さい" + chr$(13)
3430 color rgb(255,255,255)
3440 locate 2,3
3450 print "生まれた年代(西暦4桁):" + buf_year$
3460 '=============================
3470 'テンキーの色(1~９)　白 ,決定ボタン　青
3480 '=============================
3490 color rgb(255,255,255)
3500 'locate 4,6:print ":7"
3510 'locate 9,6:print ":8"
3520 'locate 12,6:print ":9"
3530 locate 4,6
3540 print ":7  :8  :9" + chr$(13)
3550 color rgb(255,255,255)
3560 locate 4,8
3570 print ":4  :5  :6" + chr$(13)
3580 color rgb(255,255,255)
3590 locate 4,10
3600 print ":1  :2  :3" + chr$(13)
3610 locate 4,12
3620 print "    :0"
3630 locate 12,12
3640 color rgb(255,0,0)
3650 print ":Ok"
3660 sp_on 4,0: sp_on 5,0:sp_on 6,0
3670 sp_on 7,0:sp_on 8,0:sp_on 9,0
3680 sp_on 10,0:sp_on 11,0:sp_on 12,0
3690 sp_on 13,0:sp_on 14,1
3700 Input_Seireki2:
3710 key$="":bg=0:y=0:y2=0:bg2=0:
3720 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3730 key$ = inkey$
3740 bg = strig(1)
3750 y = stick(1)
3760 y2 = stick(0)
3770 bg2 = strig(0)
3780 pause 15
3790 wend
3800 '十字キー　ここから
3810 '上の矢印　または、十字キー上
3820 if ((y = -1) or (key$ = chr$(30))) then
3830 select case No
3840 'No=-1:okのとき:初期の状態
3850 '0kボタンから３に移動
3860 '上に行く 処理
3870 case -1:
3880 No=3:sp_on 12,1:sp_on 14,0
3890 pause 200:goto Input_Seireki2:
3900 '選択肢:3
3910 '3ボタンから 6に移動
3920 case 3:
3930 No=6:sp_on 12,0:sp_on 11,1
3940 pause 200:goto Input_Seireki2:
3950 '6ボタンから ９に移動
3960 case 6:
3970 No=9:sp_on 10,1:sp_on 11,0
3980 pause 200:goto Input_Seireki2:
3990 '6ボタンから ９に移動　ここまで
4000 '9で上を押して何もしない
4010 case 9:
4020 '何もしない
4030 No=9
4040 pause 200:goto Input_Seireki2:
4050 '9で上を押しても何もしない　ここまで
4060 '上　 0ボタンから2ボタン
4070 'sp_on 6,1:1
4080 'sp_on 8,1:5
4090 'sp_on 7,1:7
4100 case 0:
4110 No=2:sp_on 13,0:sp_on 9,1:
4120 pause 200:goto Input_Seireki2:
4130 '上  0ボタンから2ボタン　ここまで
4140 '2から５になる 上
4150 case 2:
4160 No=5:sp_on 8,1:sp_on 9,0:
4170 pause 200:goto Input_Seireki2:
4180 case 5:
4190 No=8:sp_on 7,1:sp_on 8,0
4200 pause 200:goto Input_Seireki2:
4210 case 8:
4220 pause 200:goto Input_Seireki2:
4230 case 1:
4240 No=4:sp_on 5,1:sp_on 6,0
4250 pause 200:goto Input_Seireki2:
4260 case 4:
4270 No=7:sp_on 4,1:sp_on 5,0
4280 pause 200:goto Input_Seireki2:
4290 case 7:
4300 pause 200:goto Input_Seireki2:
4310 end select
4320 endif
4330 '左３　ここまで
4340 '下の矢印
4350 '中央 2
4360 if ((y=1) or (key$ = chr$(31))) then
4370 select case No
4380 '9から６に下げる
4390 case 9:
4400 No=6:sp_on 11,1:sp_on 10,0
4410 pause 200:goto Input_Seireki2:
4420 '6から３に下げる
4430 case 6:
4440 No=3:sp_on 12,1:sp_on 11,0
4450 pause 200:goto Input_Seireki2:
4460 '3から０ｋに変える
4470 case 3:
4480 No=-1:sp_on 14,1:sp_on 12,0
4490 pause 200:goto Input_Seireki2:
4500 'Okから下のボタンを押しても何もしない
4510 case -1:
4520 pause 200:goto Input_Seireki2:
4530 case 8:
4540 No=5:sp_on 8,1:sp_on 7,0
4550 pause 200:goto Input_Seireki2:
4560 case 5:
4570 No=2:sp_on 9,1:sp_on 8,0
4580 pause 200:goto Input_Seireki2:
4590 case 2:
4600 No=0:sp_on 13,1:sp_on 9,0
4610 pause 200:goto Input_Seireki2:
4620 case 0:
4630 pause 200:goto Input_Seireki2:
4640 case 7:
4650 No=4:sp_on 5,1:sp_on 4,0
4660 pause 200:goto Input_Seireki2:
4670 case 4:
4680 No=1:sp_on 6,1:sp_on 5,0
4690 pause 200:goto Input_Seireki2:
4700 case 1:
4710 pause 200:goto Input_Seireki2:
4720 end select
4730 endif
4740 '左へボタン 十字キー　左　or 　カーソル左
4750 if ((y2 = -1) or (key$ = chr$(29))) then
4760 select case No
4770 'Ok ボタン  Okから　左　０に行く
4780 case -1:
4790 No=0:sp_on 13,1:sp_on 14,0
4800 pause 200:goto Input_Seireki2:
4810 '0 ボタン  左　何もしない
4820 case 0:
4830 pause 200:goto Input_Seireki2:
4840 case 3:
4850 No=2:sp_on 9,1:sp_on 12,0:
4860 pause 200:goto Input_Seireki2:
4870 case 2:
4880 No=1:sp_on 6,1:sp_on 9,0:
4890 pause 200:goto Input_Seireki2:
4900 case 1:
4910 pause 200:goto Input_Seireki2:
4920 case 6:
4930 No=5:sp_on 8,1:sp_on 11,0
4940 pause 200:goto Input_Seireki2:
4950 case 5:
4960 No=4:sp_on 5,1:sp_on 8,0
4970 pause 200:goto Input_Seireki2:
4980 case 4:
4990 pause 200:goto Input_Seireki2:
5000 case 9:
5010 No=8:sp_on 7,1:sp_on 10,0
5020 pause 200:goto Input_Seireki2:
5030 case 8:
5040 No=7:sp_on 4,1:sp_on 7,0
5050 pause 200:goto Input_Seireki2:
5060 case 7:
5070 pause 200:goto Input_Seireki2:
5080 end select
5090 endif
5100 '右  十字キー　右　or カーソル　右
5110 if ((y2 = 1) or (key$ = chr$(28))) then
5120 select case No
5130 '0ボタンからokボタン右に移動
5140 case 0:
5150 No=-1:sp_on 14,1:sp_on 13,0
5160 pause 200:goto Input_Seireki2:
5170 '0ボタンからokボタン 右に移動　ここまで
5180 'OKボタンで右を押して何もしない
5190 case -1:
5200 pause 200:goto Input_Seireki2:
5210 case 1:
5220 No=2:sp_on 9,1:sp_on 6,0
5230 pause 200:goto Input_Seireki2:
5240 case 2:
5250 No=3:sp_on 12,1:sp_on 9,0
5260 pause 200:goto Input_Seireki2:
5270 case 3:
5280 pause 200:goto Input_Seireki2:
5290 case 4:
5300 No=5:sp_on 8,1:sp_on 5,0
5310 pause 200:goto Input_Seireki2:
5320 case 5:
5330 No=6:sp_on 11,1:sp_on 8,0
5340 pause 200:goto Input_Seireki2:
5350 case 7:
5360 No=8:sp_on 7,1:sp_on 4,0
5370 pause 200:goto Input_Seireki2:
5380 case 8:
5390 No=9:sp_on 10,1:sp_on 7,0
5400 pause 200:goto Input_Seireki2:
5410 case 9:
5420 pause 200:goto Input_Seireki2:
5430 case 6:
5440 pause 200:goto Input_Seireki2:
5450 end select
5460 'Okから右ボタンを押して何もしない ここまで
5470 endif
5480 '十字キー　ここまで
5490 if ((bg=2) or (key$=chr$(13))) then
5500 select case count
5510 case 0:
5520 count=1
5530 if (No=-1) then
5540 count=0
5550 'Okボタンを押したとき
5560 goto Input_Seireki2:
5570 else
5580 '===================================
5590 'Okボタン以外が押されたとき  1桁目の入力
5600 '===================================
5610 count2=1
5620 if (No >= 1 and No <= 2) then
5630 buf_year$="":buf_year$ = str$(No)
5640 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5650 n1 = len("生まれた年代(西暦4桁): ")
5660 locate 2,3
5670 color rgb(255,255,255)
5680 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5690 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5700 'print "生まれた年代(西暦4桁):";buf_year2$
5710 print buf_Born_Year_line$
5720 goto Input_Seireki2:
5730 else
5740 count=0
5750 ui_msg"数字が範囲外になります。"
5760 buf_year$="":buf_year=0
5770 goto Input_Seireki2:
5780 endif
5790 endif
5800 case 1:
5810 count = 2
5820 if (No = -1) then
5830 count = 1
5840 goto Input_Seireki2:
5850 else
5860 count2 = 1
5870 b = val(buf_year$)
5880 buf_year = b * 10 + No
5890 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
5900 locate 2,3
5910 color rgb(255,255,255)
5920 print "                                                                "
5930 locate 2,3
5940 print "生まれた年代(西暦4桁):";buf_year2$
5950 'if (No = -1) then
5960 'count=1
5970 goto Input_Seireki2:
5980 endif
5990 case 2:
6000 count=3
6010 if (No=-1) then
6020 count =2
6030 goto Input_Seireki2:
6040 else
6050 b = val(buf_year$)
6060 buf_year = b*10 + No
6070 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6080 locate 2,3
6090 color rgb(255,255,255)
6100 print "                                        "
6110 locate 2,3
6120 print "生まれた年代(西暦4桁):";buf_year2$
6130 goto Input_Seireki2:
6140 endif
6150 case 3:
6160 count=4
6170 if (No = -1) then
6180 count=3
6190 goto Input_Seireki2:
6200 else
6210 b = val(buf_year$)
6220 buf_year = b * 10 + No
6230 buf_year$ = str$(buf_year)
6240 locate 2,3
6250 color RGB(255,255,255)
6260 print "                                      "
6270 locate 2,3
6280 print "生まれた年代(西暦4桁):";buf_year$
6290 buf_year=val(buf_year$)
6300 'year=val(buf_year$)
6310 'if (No=-1) then
6320 'goto Input_Born_Month:
6330 'else
6340 goto Input_Seireki2:
6350 endif
6360 case 4:
6370 'bufyear=buf_year
6380 if (No = -1) then
6390 buf_year = val(buf_year$)
6400 bufyear = buf_year
6410 sp_on 14,0
6420 goto Input_Born_Month:
6430 else
6440 goto Input_Seireki2:
6450 endif
6460 end select
6470 endif
6480 '=========================
6490 'bg2　キャンセルボタン
6500 '=========================
6510 if (bg2 = 2) then
6520 select case count2
6530 case 0:
6540 'Okボタンを押したときの処理
6550 if (No = -1) then
6560 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6570 'count = 0
6580 locate 2,3
6590 color rgb(255,255,255)
6600 print "                                      "
6610 locate 2,3
6620 print "生まれた年代（西暦4桁):";buf_year$
6630 '=============================
6640 'case 0:前の画面に戻る 数秘術トップメニュー
6650 '=============================
6660 sp_on 14,0:goto Kabara_TopScreen:
6670 else
6680 'count=0
6690 '(buf_year=0) then
6700 buf_year = 0:buf_year$ = string$(4,"*")
6710 goto Input_Seireki2:
6720 'endif
6730 endif
6740 case 1:
6750 if (No = -1) then
6760 count2 = 0:count = 0
6770 buf$=right$(buf_year$,1)
6780 if (val(buf$) >= 1 and val(buf$) <= 9) then
6790 buf_year$ = "****":buf_year=0
6800 color rgb(255,255,255)
6810 locate 0,3:
6820 print "                                      "
6830 locate 2,3
6840 print "生まれた年代（西暦4桁):" + buf_year$
6850 goto Input_Seireki2:
6860 endif
6870 else
6880 endif
6890 end select
6900 endif
6910 end
6920 'Input"生れた年代(4桁,〜2025年):",year
6930 'if year > 2025 then goto Input_Seireki:
6940 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6950 '"4桁目"
6960 'bufyear4 = fix(year / 1000)
6970 '"3桁目"
6980 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6990 '"2桁目"
7000 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
7010 '"1桁目"
7020 'bufyear1 = fix((year - ((bufyear4*
7030 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
7040 '生れた月を入力
7050 Input_Born_Month:
7060 cls 3:play "":count=0:count2=0
7070 'No=-1:Okのとき
7080 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7090 for i=0 to 1
7100 buf_month(i)=0
7110 next i
7120 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7130 gload Gazo$ + "Screen1.png",0,0,0
7140 gload Gazo$ + "downscreen.png",0,0,800
7150 'Init"kb:2"
7160 '音声ファイル再生 2023.06.07
7170 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7180 font 48
7190 locate 0,1
7200 '文字色：黒　 color rgb(0,0,0)
7210 '文字色:白
7220 color rgb(255,255,255)
7230 print "生まれた月を入れて下さい" + chr$(13)
7240 '文字色:白
7250 color rgb(255,255,255)
7260 locate 2,3
7270 '文字色:白
7280 print "生まれた月(1月~12月):";buf_Month$
7290 color rgb(255,255,255)
7300 'locate 4,6:print ":7"
7310 'locate 9,6:print ":8"
7320 'locate 12,6:print ":9"
7330 locate 4,6
7340 '文字色:赤
7350 print ":7  :8  :9" + chr$(13)
7360 color rgb(255,255,255)
7370 locate 4,8
7380 print ":4  :5  :6" + chr$(13)
7390 color rgb(255,255,255)
7400 locate 4,10
7410 print ":1  :2  :3" + chr$(13)
7420 locate 4,12
7430 print "    :0"
7440 locate 12,12
7450 color rgb(255,0,0)
7460 print ":Ok"
7470 sp_on 4,0: sp_on 5,0:sp_on 6,0
7480 sp_on 7,0:sp_on 8,0:sp_on 9,0
7490 sp_on 10,0:sp_on 11,0:sp_on 12,0
7500 sp_on 13,0:sp_on 14,1
7510 Input_Born_Month2:
7520 key$="":bg=0:y=0:y2=0:bg2=0
7530 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7540 key$ = inkey$
7550 bg = strig(1)
7560 y = stick(1)
7570 y2 = stick(0)
7580 bg2 = strig(0)
7590 pause 5
7600 wend
7610 '十字キー　ここから
7620 '上の矢印　または、十字キー上
7630 if ((y = -1) or (key$ = chr$(30))) then
7640 select case No
7650 'No=-1:okのとき:初期の状態
7660 '0kボタンから３に移動
7670 '上に行く 処理
7680 case -1:
7690 No=3:sp_on 12,1:sp_on 14,0
7700 pause 200:goto Input_Born_Month2:
7710 '選択肢:3
7720 '3ボタンから 6に移動
7730 case 3:
7740 No=6:sp_on 12,0:sp_on 11,1
7750 pause 200:goto Input_Born_Month2:
7760 '6ボタンから ９に移動
7770 case 6:
7780 No=9:sp_on 10,1:sp_on 11,0
7790 pause 200:goto Input_Born_Month2:
7800 '6ボタンから ９に移動　ここまで
7810 '9で上を押して何もしない
7820 case 9:
7830 '何もしない
7840 No=9
7850 pause 200:goto Input_Born_Month2:
7860 '9で上を押しても何もしない　ここまで
7870 '上　 0ボタンから2ボタン
7880 'sp_on 6,1:1
7890 'sp_on 8,1:5
7900 'sp_on 7,1:7
7910 case 0:
7920 No=2:sp_on 13,0:sp_on 9,1:
7930 pause 200:goto Input_Born_Month2:
7940 '上  0ボタンから2ボタン　ここまで
7950 '2から５になる 上
7960 case 2:
7970 No=5:sp_on 8,1:sp_on 9,0:
7980 pause 200:goto Input_Born_Month2:
7990 case 5:
8000 No=8:sp_on 7,1:sp_on 8,0
8010 pause 200:goto Input_Born_Month2:
8020 case 8:
8030 pause 200:goto Input_Born_Month2:
8040 case 1:
8050 No=4:sp_on 5,1:sp_on 6,0
8060 pause 200:goto Input_Born_Month2:
8070 case 4:
8080 No=7:sp_on 4,1:sp_on 5,0
8090 pause 200:goto Input_Born_Month2:
8100 case 7:
8110 pause 200:goto Input_Born_Month2:
8120 end select
8130 endif
8140 '左３　ここまで
8150 '下の矢印
8160 '中央 2
8170 if ((y=1) or (key$ = chr$(31))) then
8180 select case No
8190 '9から６に下げる
8200 case 9:
8210 No=6:sp_on 11,1:sp_on 10,0
8220 pause 200:goto Input_Born_Month2:
8230 '6から３に下げる
8240 case 6:
8250 No=3:sp_on 12,1:sp_on 11,0
8260 pause 200:goto Input_Born_Month2:
8270 '3から０ｋに変える
8280 case 3:
8290 No=-1:sp_on 14,1:sp_on 12,0
8300 pause 200:goto Input_Born_Month2:
8310 'Okから下のボタンを押しても何もしない
8320 case -1:
8330 pause 200:goto Input_Born_Month2:
8340 case 8:
8350 No=5:sp_on 8,1:sp_on 7,0
8360 pause 200:goto Input_Born_Month2:
8370 case 5:
8380 No=2:sp_on 9,1:sp_on 8,0
8390 pause 200:goto Input_Born_Month2:
8400 case 2:
8410 No=0:sp_on 13,1:sp_on 9,0
8420 pause 200:goto Input_Born_Month2:
8430 case 0:
8440 pause 200:goto Input_Born_Month2:
8450 case 7:
8460 No=4:sp_on 5,1:sp_on 4,0
8470 pause 200:goto Input_Born_Month2:
8480 case 4:
8490 No=1:sp_on 6,1:sp_on 5,0
8500 pause 200:goto Input_Born_Month2:
8510 case 1:
8520 pause 200:goto Input_Born_Month2:
8530 end select
8540 endif
8550 '左へボタン 十字キー　左　or 　カーソル左
8560 if ((y2 = -1) or (key$ = chr$(29))) then
8570 select case No
8580 'Ok ボタン  Okから　左　０に行く
8590 case -1:
8600 No=0:sp_on 13,1:sp_on 14,0
8610 pause 200:goto Input_Born_Month2:
8620 '0 ボタン  左　何もしない
8630 case 0:
8640 pause 200:goto Input_Born_Month2:
8650 case 3:
8660 No=2:sp_on 9,1:sp_on 12,0:
8670 pause 200:goto Input_Born_Month2:
8680 case 2:
8690 No=1:sp_on 6,1:sp_on 9,0:
8700 pause 200:goto Input_Born_Month2:
8710 case 1:
8720 pause 200:goto Input_Born_Month2:
8730 case 6:
8740 No=5:sp_on 8,1:sp_on 11,0
8750 pause 200:goto Input_Born_Month2:
8760 case 5:
8770 No=4:sp_on 5,1:sp_on 8,0
8780 pause 200:goto Input_Born_Month2:
8790 case 4:
8800 pause 200:goto Input_Born_Month2:
8810 case 9:
8820 No=8:sp_on 7,1:sp_on 10,0
8830 pause 200:goto Input_Born_Month2:
8840 case 8:
8850 No=7:sp_on 4,1:sp_on 7,0
8860 pause 200:goto Input_Born_Month2:
8870 case 7:
8880 pause 200:goto Input_Born_Month2:
8890 end select
8900 endif
8910 '右  十字キー　右　or カーソル　右
8920 if ((y2 = 1) or (key$ = chr$(28))) then
8930 select case No
8940 '0ボタンからokボタン右に移動
8950 case 0:
8960 No=-1:sp_on 14,1:sp_on 13,0
8970 pause 200:goto Input_Born_Month2:
8980 '0ボタンからokボタン 右に移動　ここまで
8990 'OKボタンで右を押して何もしない
9000 case -1:
9010 pause 200:goto Input_Born_Month2:
9020 case 1:
9030 No=2:sp_on 9,1:sp_on 6,0
9040 pause 200:goto Input_Born_Month2:
9050 case 2:
9060 No=3:sp_on 12,1:sp_on 9,0
9070 pause 200:goto Input_Born_Month2:
9080 case 3:
9090 pause 200:goto Input_Born_Month2:
9100 case 4:
9110 No=5:sp_on 8,1:sp_on 5,0
9120 pause 200:goto Input_Born_Month2:
9130 case 5:
9140 No=6:sp_on 11,1:sp_on 8,0
9150 pause 200:goto Input_Born_Month2:
9160 case 7:
9170 No=8:sp_on 7,1:sp_on 4,0
9180 pause 200:goto Input_Born_Month2:
9190 case 8:
9200 No=9:sp_on 10,1:sp_on 7,0
9210 pause 200:goto Input_Born_Month2:
9220 case 9:
9230 pause 200:goto Input_Born_Month2:
9240 case 6:
9250 pause 200:goto Input_Born_Month2:
9260 end select
9270 'Okから右ボタンを押して何もしない ここまで
9280 endif
9290 '十字キー　ここまで
9300 '右の丸ボタン　決定キー
9310 if ((bg=2) or (key$=chr$(13))) then
9320 select case count
9330 case 0:
9340 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9350 if (buf_month = 1 or buf_month = 2) then
9360 locate 2,3
9370 color RGB(255,255,255)
9380 print "生まれた月(1月~12月):";buf_Month2$
9390 else
9400 locate 2,3
9410 color Rgb(255,255,255)
9420 print "生まれた月(1月~12月):";buf_Month$
9430 endif
9440 goto Input_Born_Month2:
9450 case 1:
9460 count = 2:c = No
9470 c = val(buf_Month$)
9480 if (No = -1) then
9490 'if No=1 or No=2 then
9500 'endif
9510 month = buf_month
9520 buf_month=val(buf_Month$)
9530 month=buf_month
9540 '生まれた日に飛ぶ
9550 goto Input_Born_Day:
9560 else
9570 buf_month = c*10 + No
9580 buf_Month$= str$(buf_month)
9590 locate 2,3
9600 color Rgb(255,255,255)
9610 print "生まれた月(1月~12月):";buf_Month$
9620 goto Input_Born_Month2:
9630 endif
9640 case 2:
9650 count=3:count2=1
9660 'c= val(buf_Month$)
9670 'buf_month = c*10 + No
9680 'buf_Month$ = str$(buf_month)
9690 'locate 2,3
9700 'print "生まれた月(1月～12月):";buf_Month$
9710 'goto Input_Born_Month2:
9720 'case 3:
9730 'count=4
9740 'b=val(buf_month$)
9750 'buf_month=c*10+No
9760 'buf_Month$=str$(buf_month)
9770 'locate 2,3
9780 'print "生まれた月(1月～12月):";buf_Month$
9790 'buf_month=val(buf_Month$)
9800 'year=val(buf_year$)
9810 if (No=-1) then
9820 goto Input_Born_Day:
9830 else
9840 'goto Input_Born_Month2:
9850 endif
9860 'case 4:
9870 'bufyear=buf_year
9880 'if (No=-1) then
9890 'buf_month = val(buf_Month$)
9900 'month = buf_month
9910 'sp_on 14,0
9920 'goto Input_Born_Day:
9930 'else
9940 'goto Input_Born_Month2:
9950 'endif
9960 end select
9970 endif
9980 '左の丸ボタン　キャンセル
9990 if (bg2=2) then
10000 select case count2
10010 case 0:
10020 if (No = -1) then
10030 buf_month=0:buf_Month$="**"
10040 count2=0:count=0
10050 locate 0,3:print "                                              "
10060 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10070 'if (buf_month > 1) then
10080 sp_on 14,0:goto Input_Born_Month2:
10090 'goto rewrite:
10100 else
10110 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10120 buf_month=0:buf_Month$="**"
10130 locate 2,3
10140 color rgb(255,255,255)
10150 print "                                       "
10160 goto rewrite:
10170 if (No>2) then
10180 ui_msg"値が範囲外です。"
10190 goto rewrite:
10200 endif
10210 endif
10220 'endif
10230 rewrite:
10240 locate 2,3
10250 color rgb(255,255,255)
10260 print "                                      "
10270 locate 2,3
10280 print "生まれた月(1月~12月):";buf_Month$
10290 goto Input_Born_Month2:
10300 endif
10310 case 1:
10320 buf_Month$="**":buf_month=0
10330 if No=-1 then
10340 count2=2:count=0
10350 locate 0,3
10360 print "                                      "
10370 locate 2,3:
10380 print "生まれた月(1月~12月):"+buf_Month$
10390 goto Input_Born_Month2:
10400 endif
10410 case 2:
10420 sp_on 14,0:goto Input_Seireki:
10430 end select
10440 endif
10450 'endif
10460 end
10470 'end
10480 '生れた日を入力
10490 Input_Born_Day:
10500 '生まれた日入力
10510 cls 3:play ""
10520 'No=-1:Okのとき
10530 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10540 for i=0 to 1
10550 buf_day(i)=0
10560 next i
10570 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10580 gload Gazo$ + "Screen1.png",0,0,0
10590 gload Gazo$ + "downscreen.png",0,0,800
10600 'Init"kb:2"
10610 '音声ファイル再生 2023.06.07
10620 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10630 font 48
10640 locate 0,1
10650 '文字色：黒　 color rgb(0,0,0)
10660 color rgb(255,255,255)
10670 print "生まれた日を入れて下さい" + chr$(13)
10680 color rgb(255,255,255)
10690 locate 2,3
10700 print "生まれた日(1日~31日):";buf_Day$
10710 color rgb(255,255,255)
10720 'locate 4,6:print ":7"
10730 'locate 9,6:print ":8"
10740 'locate 12,6:print ":9"
10750 locate 4,6
10760 print ":7  :8  :9" + chr$(13)
10770 '=======================
10780 'テンキー　色　白　決定ボタン　青
10790 '=======================
10800 color rgb(255,255,255)
10810 locate 4,8
10820 print ":4  :5  :6" + chr$(13)
10830 color rgb(255,255,255)
10840 locate 4,10
10850 print ":1  :2  :3" + chr$(13)
10860 locate 4,12
10870 print "    :0"
10880 locate 12,12
10890 color rgb(255,0,0)
10900 print ":Ok"
10910 sp_on 4,0: sp_on 5,0:sp_on 6,0
10920 sp_on 7,0:sp_on 8,0:sp_on 9,0
10930 sp_on 10,0:sp_on 11,0:sp_on 12,0
10940 sp_on 13,0:sp_on 14,1
10950 Input_Born_Day2:
10960 key$="":bg=0:y=0:y2=0:bg2=0
10970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10980 key$ = inkey$
10990 bg = strig(1)
11000 y = stick(1)
11010 y2 = stick(0)
11020 bg2 = strig(0)
11030 pause 5
11040 wend
11050 '十字キー　ここから
11060 '上の矢印　または、十字キー上
11070 if ((y = -1) or (key$ = chr$(30))) then
11080 select case No
11090 'No=-1:okのとき:初期の状態
11100 '0kボタンから３に移動
11110 '上に行く 処理
11120 case -1:
11130 No=3:sp_on 12,1:sp_on 14,0
11140 pause 200:goto Input_Born_Day2:
11150 '選択肢:3
11160 '3ボタンから 6に移動
11170 case 3:
11180 No=6:sp_on 12,0:sp_on 11,1
11190 pause 200:goto Input_Born_Day2:
11200 '6ボタンから ９に移動
11210 case 6:
11220 No=9:sp_on 10,1:sp_on 11,0
11230 pause 200:goto Input_Born_Day2:
11240 '6ボタンから ９に移動　ここまで
11250 '9で上を押して何もしない
11260 case 9:
11270 '何もしない
11280 No=9
11290 pause 200:goto Input_Born_Day2:
11300 '9で上を押しても何もしない　ここまで
11310 '上　 0ボタンから2ボタン
11320 'sp_on 6,1:1
11330 'sp_on 8,1:5
11340 'sp_on 7,1:7
11350 case 0:
11360 No=2:sp_on 13,0:sp_on 9,1:
11370 pause 200:goto Input_Born_Day2:
11380 '上  0ボタンから2ボタン　ここまで
11390 '2から５になる 上
11400 case 2:
11410 No=5:sp_on 8,1:sp_on 9,0:
11420 pause 200:goto Input_Born_Day2:
11430 case 5:
11440 No=8:sp_on 7,1:sp_on 8,0
11450 pause 200:goto Input_Born_Day2:
11460 case 8:
11470 pause 200:goto Input_Born_Day2:
11480 case 1:
11490 No=4:sp_on 5,1:sp_on 6,0
11500 pause 200:goto Input_Born_Day2:
11510 case 4:
11520 No=7:sp_on 4,1:sp_on 5,0
11530 pause 200:goto Input_Born_Day2:
11540 case 7:
11550 pause 200:goto Input_Born_Day2:
11560 end select
11570 endif
11580 '左３　ここまで
11590 '下の矢印
11600 '中央 2
11610 if ((y=1) or (key$ = chr$(31))) then
11620 select case No
11630 '9から６に下げる
11640 case 9:
11650 No=6:sp_on 11,1:sp_on 10,0
11660 pause 200:goto Input_Born_Day2:
11670 '6から３に下げる
11680 case 6:
11690 No=3:sp_on 12,1:sp_on 11,0
11700 pause 200:goto Input_Born_Day2:
11710 '3から０ｋに変える
11720 case 3:
11730 No=-1:sp_on 14,1:sp_on 12,0
11740 pause 200:goto Input_Born_Day2:
11750 'Okから下のボタンを押しても何もしない
11760 case -1:
11770 pause 200:goto Input_Born_Day2:
11780 case 8:
11790 No=5:sp_on 8,1:sp_on 7,0
11800 pause 200:goto Input_Born_Day2:
11810 case 5:
11820 No=2:sp_on 9,1:sp_on 8,0
11830 pause 200:goto Input_Born_Day2:
11840 case 2:
11850 No=0:sp_on 13,1:sp_on 9,0
11860 pause 200:goto Input_Born_Day2:
11870 case 0:
11880 pause 200:goto Input_Born_Day2:
11890 case 7:
11900 No=4:sp_on 5,1:sp_on 4,0
11910 pause 200:goto Input_Born_Day2:
11920 case 4:
11930 No=1:sp_on 6,1:sp_on 5,0
11940 pause 200:goto Input_Born_Day2:
11950 case 1:
11960 pause 200:goto Input_Born_Day2:
11970 end select
11980 endif
11990 '左へボタン 十字キー　左　or 　カーソル左
12000 if ((y2 = -1) or (key$ = chr$(29))) then
12010 select case No
12020 'Ok ボタン  Okから　左　０に行く
12030 case -1:
12040 No=0:sp_on 13,1:sp_on 14,0
12050 pause 200:goto Input_Born_Day2:
12060 '0 ボタン  左　何もしない
12070 case 0:
12080 pause 200:goto Input_Born_Day2:
12090 case 3:
12100 No=2:sp_on 9,1:sp_on 12,0:
12110 pause 200:goto Input_Born_Day2:
12120 case 2:
12130 No=1:sp_on 6,1:sp_on 9,0:
12140 pause 200:goto Input_Born_Day2:
12150 case 1:
12160 pause 200:goto Input_Born_Day2:
12170 case 6:
12180 No=5:sp_on 8,1:sp_on 11,0
12190 pause 200:goto Input_Born_Day2:
12200 case 5:
12210 No=4:sp_on 5,1:sp_on 8,0
12220 pause 200:goto Input_Born_Day2:
12230 case 4:
12240 pause 200:goto Input_Born_Day2:
12250 case 9:
12260 No=8:sp_on 7,1:sp_on 10,0
12270 pause 200:goto Input_Born_Day2:
12280 case 8:
12290 No=7:sp_on 4,1:sp_on 7,0
12300 pause 200:goto Input_Born_Day2:
12310 case 7:
12320 pause 200:goto Input_Born_Day2:
12330 end select
12340 endif
12350 '右  十字キー　右　or カーソル　右
12360 if ((y2 = 1) or (key$ = chr$(28))) then
12370 select case No
12380 '0ボタンからokボタン右に移動
12390 case 0:
12400 No=-1:sp_on 14,1:sp_on 13,0
12410 pause 200:goto Input_Born_Day2:
12420 '0ボタンからokボタン 右に移動　ここまで
12430 'OKボタンで右を押して何もしない
12440 case -1:
12450 pause 200:goto Input_Born_Day2:
12460 case 1:
12470 No=2:sp_on 9,1:sp_on 6,0
12480 pause 200:goto Input_Born_Day2:
12490 case 2:
12500 No=3:sp_on 12,1:sp_on 9,0
12510 pause 200:goto Input_Born_Day2:
12520 case 3:
12530 pause 200:goto Input_Born_Day2:
12540 case 4:
12550 No=5:sp_on 8,1:sp_on 5,0
12560 pause 200:goto Input_Born_Day2:
12570 case 5:
12580 No=6:sp_on 11,1:sp_on 8,0
12590 pause 200:goto Input_Born_Day2:
12600 case 7:
12610 No=8:sp_on 7,1:sp_on 4,0
12620 pause 200:goto Input_Born_Day2:
12630 case 8:
12640 No=9:sp_on 10,1:sp_on 7,0
12650 pause 200:goto Input_Born_Day2:
12660 case 9:
12670 pause 200:goto Input_Born_Day2:
12680 case 6:
12690 pause 200:goto Input_Born_Day2:
12700 end select
12710 'Okから右ボタンを押して何もしない ここまで
12720 endif
12730 '十字キー　ここまで
12740 '右の丸ボタンを押したとき
12750 if ((bg = 2) or (key$ = chr$(13))) then
12760 'count :決定ボタンを押した回数
12770 select case (count mod 3)
12780 '1桁目入力
12790 case 0:
12800 count = 1:
12810 if (No = -1) then
12820 '1桁目　OKでは何もしない
12830 'goto check:
12840 else
12850 'ok以外のボタンを押したとき
12860 buf_day = No:buf_Day$ = str$(No)
12870 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12880 locate 2,3
12890 color RGB(255,255,255)
12900 print "生まれた日(1日~31日):";buf_Day2$
12910 endif
12920 check:
12930 if (No >= 1 and No <= 9) then
12940 sp_on 14,0
12950 goto Input_Born_Day2:
12960 else
12970 sp_on 14,0
12980 goto complate:
12990 endif
13000 case 1:
13010 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
13020 count = 2:
13030 'locate 2,3
13040 'color RGB(255,255,255)
13050 'print "生まれた日(1日~31日):";buf_Day$
13060 'Okボタンを押したときの処理
13070 '入力値　10未満のとき
13080 'c = buf_day
13090 if (No = -1) then
13100 'c=buf_day
13110 ' buf_day = c
13120 'buf_Day$ = str$(buf_day)
13130 '10以下のとき
13140 if (buf_day < 10) then
13150 sp_on 14,0
13160 goto complate:
13170 endif
13180 else
13190 'c = No
13200 buf_day = c * 10 + No
13210 'buf_day = c
13220 buf_Day$ =str$(buf_day)
13230 locate 2,3
13240 color Rgb(255,255,255)
13250 print "生まれた日(1日~31日):";buf_Day$
13260 goto Input_Born_Day2:
13270 endif
13280 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13290 case 2:
13300 count=0
13310 'c=val(buf_Day$)
13320 'buf_day=c*10+No
13330 'buf_Day$=str$(buf_day)
13340 'day=buf_day
13350 'locate 2,3
13360 'print "生まれた日(1日〜31日):";buf_Day$
13370 'No=-1:ok ボタンを押したとき
13380 if (No = -1) then
13390 if ((buf_day > 0) and (buf_day < 32)) then
13400 sp_on 14,0
13410 goto complate:
13420 else
13430 goto Input_Born_Day2:
13440 endif
13450 'Okボタン以外を押したとき
13460 else
13470 c=val(buf_Day$)
13480 buf_day = c * 10 + No
13490 buf_Day$ = str$(buf_day)
13500 locate 2,3
13510 print "生まれた日(1日~31日):";buf_Day$
13520 'goto Input_Born_Day2:
13530 endif
13540 case 3:
13550 count = 4
13560 c=val(buf_day$)
13570 buf_day = c * 10 + No
13580 buf_day$ = str$(buf_day)
13590 locate 2,3
13600 print "生まれた日を入れてください:";buf_Day$
13610 year = val(buf_year$)
13620 if (No = -1) then
13630 'goto Input_Born_Day:
13640 sp_on 14,0:No=0
13650 goto complate:
13660 else
13670 goto Input_Born_Month2:
13680 endif
13690 'case 4:
13700 'bufyear=buf_year
13710 'if (No=-1) then
13720 'buf_day = val(buf_day$)
13730 'bufday = buf_day
13740 'sp_on 14,0
13750 'goto complate:
13760 'else
13770 'goto Input_Born_Day2:
13780 'endif
13790 end select
13800 endif
13810 if (bg2=2) then
13820 select case count2
13830 case 0:
13840 if (No=-1) then
13850 'buf_day=0:buf_Day$="**"
13860 if (buf_day>=1 and buf_day<=31) then
13870 count=0:No=0
13880 buf_day=0:buf_Day$="**"
13890 'goto rewrite_day:
13900 else
13910 buf_day=0:buf_Day$="**"
13920 ui_msg"値が範囲外です"
13930 endif
13940 goto rewrite_day:
13950 else
13960 goto rewrite_day:
13970 endif
13980 rewrite_day:
13990 locate 2,3
14000 color rgb(255,255,255)
14010 print "                                      "
14020 locate 2,3
14030 print "生まれた日(1日~31日):";buf_Day$
14040 goto Input_Born_Day2:
14050 end select
14060 endif
14070 '--------------------------Input_Born_Day:-------------------------------------------
14080 complate:
14090 suhiNo = buf_year + buf_month + buf_day
14100 'if (suhiNo < 1000) then
14110 a1 = fix(suhiNo / 1000)
14120 a2 = fix(suhiNo/100) - (a1 * 10)
14130 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14140 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14150 'endif
14160 bufsuhiNo = a1+a2+a3+a4
14170 recomp:
14180 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14190 'bufsuhiNo=a6
14200 goto Kabara_Result_Screen:
14210 else
14220 a5 = fix(bufsuhiNo / 10)
14230 a6 = bufsuhiNo - a5 * 10
14240 bufsuhiNo = a6 + a5
14250 if (bufsuhiNo = 10) then
14260 bufsuhiNo=1
14270 endif
14280 goto Kabara_Result_Screen:
14290 endif
14300 Kabara_Result_Screen:
14310 cls 3:
14320 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14330 gload Gazo$ + "downscreen.png",0,0,800
14340 init "kb:4"
14350 '
14360 play ""
14370 select case (bufsuhiNo)
14380 case 1:
14390 play Voice$ + "Result_Kabara_1_20230607.mp3"
14400 case 2:
14410 play Voice$ + "Result_Kabara_2_20231112.mp3"
14420 case 3:
14430 play Voice$ + "Result_Kabara_3_20230607.mp3"
14440 case 4:
14450 play Voice$ + "Result_Kabara_4_20230607.mp3"
14460 case 5:
14470 play Voice$ + "Result_Kabara_5_20231112.mp3"
14480 case 6:
14490 play Voice$ + "Result_Kabara_6_20230607.mp3"
14500 case 7:
14510 play Voice$ + "Result_Kabara_7_20230607.mp3"
14520 case 8:
14530 play Voice$ + "Result_Kabara_8_20230607.mp3"
14540 case 9:
14550 play Voice$ + "Result_Kabara_9_20230607.mp3"
14560 case 11:
14570 play Voice$ + "Result_Kabara_11_20230607.mp3"
14580 case 22:
14590 play Voice$ + "Result_Kabara_22_20230607.mp3"
14600 case 33:
14610 play Voice$ + "Result_Kabara_33_20230607.mp3"
14620 end select
14630 font 48
14640 key$ = "":bg = 0:bg2=0
14650 'COLOR rgb(255,255,255)
14660 'print "●診断結果"+chr$(13)
14670 locate 0,2
14680 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14690 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14700 locate 0,15:
14710 color rgb(255,255,255)
14720 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14730 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14740 key$ = inkey$
14750 bg = strig(1)
14760 bg2 = strig(0)
14770 pause 5
14780 wend
14790 'Enter or JoyPad right
14800 if ((key$ = chr$(13)) or (bg = 2)) then
14810 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14820 endif
14830 if ((bg2=2)) then
14840 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14850 endif
14860 'suhiNo1 = fix(bufsuhiNo / 10)
14870 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14880 'bufsuhiNo = suhiNo1 + suhiNo2
14890 'goto recomp:
14900 'endif
14910 'print chr$(13)
14920 'color rgb(255,0,0)
14930 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14940 'key$ = input$(1)
14950 'if key$ = chr$(13) then goto Main_Screen:
14960 '"Menu2 占いのルール"
14970 Suhi_Rule:
14980 '数秘術占いルールの表示
14990 cls 3:play "":init"kb:4"
15000 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
15010 gload Gazo$ + "downscreen.png",0,0,800
15020 'cls 3:
15030 'line (0,0) - (1500,60),rgb(0,0,255),bf
15040 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
15050 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15060 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15070 locate 0,2:Font 48
15080 print chr$(13) + chr$(13)
15090 color rgb(0,0,0)
15100 print "誕生日を単数変換します";chr$(13)
15110 print "数字の範囲:1~９,11,22,33";chr$(13)
15120 print "例:1973年11月22日の場合";chr$(13)
15130 print "1+9+7+3+11+22=53 ";chr$(13)
15140 print "→ 5 + 3 = 8" + chr$(13)
15150 print "故に8が数秘ナンバーになります";chr$(13)
15160 locate 0,15
15170 color rgb(255,255,255)
15180 print "ジョイパッドの右を押してください"
15190 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15200 '"key$ = input$(1)"
15210 '"if key$ = chr$(13) then goto Main_Screen:"
15220 suhi_rule_selection:
15230 bg = 0:key$ = "":bg2=0
15240 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15250 bg = strig(1)
15260 key$ = inkey$
15270 bg2=strig(0)
15280 pause 2
15290 wend
15300 if ((bg = 2) or (key$ = chr$(13))) then
15310 pause 200:cls 4:goto Main_Screen:
15320 endif
15330 if (bg2=2) then
15340 play "":pause 200
15350 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15360 goto suhi_rule_selection:
15370 endif
15380 '2.設定
15390 '2-1.トップ画面に戻る
15400 Setting:
15410 cls 3:init"kb:4":font 48:No=0
15420 play ""
15430 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15440 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15450 gload Gazo$ + "downscreen.png",0,0,800
15460 print chr$(13) + chr$(13) + chr$(13)
15470 color rgb(255,255,255):sp_on 0,1:
15480 print "番号を選んでください" + chr$(13)
15490 print " :1.トップ画面に戻る"+ chr$(13)
15500 print " :2.未実装" + chr$(13)
15510 print " :3.未実装" + chr$(13)
15520 print " :4.未実装" + chr$(13)
15530 color rgb(0,0,0)
15540 locate 1,15:print "1.トップ画面に戻るを選択"
15550 Setting_Selection:
15560 y=0:key$="":bg=0:bg2=0
15570 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15580 'y=stick(1)
15590 key$ = inkey$
15600 bg=strig(1)
15610 bg2 = strig(0)
15620 pause 2
15630 wend
15640 if ((bg = 2) or (key$ = chr$(13))) then
15650 select case No
15660 case 0:
15670 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15680 end select
15690 endif
15700 if (bg2 = 2) then
15710 play "":pause 200
15720 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15730 goto Setting_Selection:
15740 endif
15750 '3.Help
15760 '3-1.ルールの表示
15770 '3-2.バージョン
15780 '3-3.トップに戻る
15790 Help:
15800 cls 3:Font 48:No=0
15810 play ""
15820 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15830 gload Gazo$ + "downscreen.png",0,0,800
15840 color rgb(255,255,255)
15850 print chr$(13)+chr$(13)+chr$(13)
15860 print "番号を選んでください"+chr$(13)
15870 print " :1.ルールの表示" + chr$(13)
15880 print " :2.バージョンの表示" + chr$(13)
15890 print " :3.参考文献" + chr$(13)
15900 print " :4.トップ画面に戻る" + chr$(13)
15910 color rgb(0,0,0)
15920 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15930 locate 1,15
15940 print "                                      "
15950 locate 1,15
15960 print "1.ルールの表示を選択"
15970 init"kb:4"
15980 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15990 Help_Select:
16000 bg=0:key$="":y=0:bg2=0
16010 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
16020 y = stick(1)
16030 key$ = inkey$
16040 bg = strig(1)
16050 bg2 = strig(0)
16060 pause 5
16070 wend
16080 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16090 if ((y = 1) or (key$ = chr$(31))) then
16100 select case No
16110 case 0:
16120 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16130 case 1:
16140 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16150 case 2:
16160 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16170 case 3:
16180 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16190 end select
16200 endif
16210 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16220 if ((y = -1) or (key$ = chr$(30))) then
16230 select case No
16240 case 0:
16250 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16260 case 1:
16270 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16280 case 2:
16290 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16300 case 3:
16310 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16320 end select
16330 endif
16340 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16350 if ((bg = 2) or (key$ = chr$(13))) then
16360 select case No
16370 case 0:
16380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16390 case 1:
16400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16410 case 2:
16420 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16430 '3:Top画面に行く
16440 case 3:
16450 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16460 end select
16470 endif
16480 if (bg2 = 2) then
16490 play "":pause 200
16500 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16510 goto Help_Select:
16520 endif
16530 '数秘術占い　トップ画面
16540 Kabara_TopScreen:
16550 cls 3:play ""
16560 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16570 gload Gazo$ + "downscreen.png",0,0,800
16580 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16590 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16600 init"kb:4":No=0
16610 color rgb(255,255,255)
16620 print chr$(13)+chr$(13)+chr$(13)
16630 print "番号を選んでください" + chr$(13)
16640 print " :1.数秘術占い" + chr$(13)
16650 print " :2.バーズアイグリット" + chr$(13)
16660 print " :3.相性占い" + chr$(13)
16670 print " :4.トップ画面に戻る" + chr$(13)
16680 color rgb(0,0,0)
16690 locate 1,15:print "1.数秘術占いを選択"
16700 Kabara_TopScreen2:
16710 y = 0:bg = 0:key$ = "":bg2 = 0
16720 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16730 key$ = inkey$
16740 bg = strig(1)
16750 y = stick(1)
16760 bg2 = strig(0)
16770 pause 5
16780 wend
16790 '選択ボタン
16800 'カーソル　と　ジョイパッド　の下
16810 if ((y = 1) or (key$ = chr$(31))) then
16820 select case No
16830 case 2:
16840 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16850 case 3:
16860 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16870 case 0:
16880 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16890 case 1:
16900 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16910 end select
16920 endif
16930 'カーソル　上
16940 if ((y=-1) or (key$=chr$(30))) then
16950 select case No
16960 case 0:
16970 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16980 case 1:
16990 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17000 case 2:
17010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17020 case 3:
17030 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17040 end select
17050 endif
17060 '決定ボタン
17070 'ジョイパッドの右　or  Enter key
17080 if ((bg = 2) or (key$ = chr$(13))) then
17090 select case No
17100 case 0:
17110 '1.数秘術占い
17120 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17130 case 3:
17140 '4.メイン画面にいく
17150 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17160 case 1:
17170 '2.バースアイグリッド
17180 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17190 case 2:
17200 '3.相性占い
17210 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17220 end select
17230 endif
17240 if (bg2 = 2) then
17250 play "":pause 200
17260 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17270 goto Kabara_TopScreen2:
17280 endif
17290 '1.バースアイグリット　名入力
17300 Inputname1:
17310 cls 3:init"kb:4":font 48
17320 bg=0:key$="":y=0:No=-1:name1$="":i=1
17330 gload Gazo$ + "Selection.png",1,10,100
17340 'Line 1:☓
17350 'A:選択肢
17360 sp_def 15,(50,250),16,16
17370 'B:選択肢
17380 sp_def 16,(200,250),16,16
17390 'C:選択肢
17400 sp_def 17,(350,250),16,16
17410 'D:選択肢
17420 sp_def 18,(500,250),16,16
17430 'E:選択肢
17440 sp_def 19,(630,250),16,16
17450 'F:選択肢
17460 sp_def 20,(780,250),16,16
17470 'G:選択肢
17480 sp_def 21,(930,250),16,16
17490 'Line 2:☓
17500 'H:選択肢
17510 sp_def 22,(50,345),16,16
17520 'I:選択肢
17530 sp_def 23,(200,345),16,16
17540 'J:選択肢
17550 sp_def 24,(350,345),16,16
17560 'K:選択肢
17570 sp_def 25,(500,345),16,16
17580 'L:選択肢
17590 sp_def 26,(630,345),16,16
17600 'M:選択肢
17610 sp_def 27,(780,345),16,16
17620 'N:選択肢
17630 sp_def 28,(930,345),16,16
17640 'Line 3:☓
17650 'O:選択肢
17660 sp_def 29,(50,440),16,16
17670 'P:選択肢
17680 sp_def 30,(200,440),16,16
17690 'Q:選択肢
17700 sp_def 31,(350,440),16,16
17710 'R:選択肢
17720 sp_def 32,(500,440),16,16
17730 'S:選択肢
17740 sp_def 33,(630,440),16,16
17750 'T:選択肢
17760 sp_def 34,(780,440),16,16
17770 'U:選択肢
17780 sp_def 35,(930,440),16,16
17790 'Line 4:◯
17800 'V:選択肢
17810 sp_def 36,(50,535),16,16
17820 'W:選択肢
17830 sp_def 37,(200,535),16,16
17840 'X:選択肢
17850 sp_def 38,(350,535),16,16
17860 'Y:選択肢
17870 sp_def 39,(500,535),16,16
17880 'Z:選択肢
17890 sp_def 40,(630,535),16,16
17900 'Ok:選択肢
17910 sp_def 41,(780,535),16,16
17920 'sp_def 42,(930,535),16,16
17930 'Line 1
17940 'A
17950 sp_on 15,0
17960 'B
17970 sp_on 16,0
17980 'C
17990 sp_on 17,0
18000 'D
18010 sp_on 18,0
18020 'E
18030 sp_on 19,0
18040 'F
18050 sp_on 20,0
18060 'G
18070 sp_on 21,0
18080 'Line 1
18090 'Line 2
18100 'H
18110 sp_on 22,0
18120 'I
18130 sp_on 23,0
18140 'J
18150 sp_on 24,0
18160 'K
18170 sp_on 25,0
18180 'L
18190 sp_on 26,0
18200 'M
18210 sp_on 27,0
18220 'N
18230 sp_on 28,0
18240 'Line 2
18250 'Line 3
18260 'O
18270 sp_on 29,0
18280 'P
18290 sp_on 30,0
18300 'Q
18310 sp_on 31,0
18320 'R
18330 sp_on 32,0
18340 'S
18350 sp_on 33,0
18360 'T
18370 sp_on 34,0
18380 'U
18390 sp_on 35,0
18400 'Line 3
18410 'Line 4
18420 'V
18430 sp_on 36,0
18440 'W
18450 sp_on 37,0
18460 'X
18470 sp_on 38,0
18480 'Y
18490 sp_on 39,0
18500 'Z
18510 sp_on 40,0
18520 'Ok
18530 sp_on 41,1
18540 'Line 4
18550 'sp_on 42,1
18560 'Line 1
18570 'sp_put 15,(50,250),0,0
18580 'sp_put 16,(200,250),0,0
18590 'sp_put 17,(350,250),0,0
18600 'sp_put 18,(500,250),0,0
18610 'sp_put 19,(630,250),0,0
18620 'sp_put 20,(780,250),0,0
18630 'sp_put 21,(930,250),0,0
18640 'Line 2
18650 'sp_put 22,(50,345),0,0
18660 'sp_put 23,(200,345),0,0
18670 'sp_put 24,(350,345),0,0
18680 'sp_put 25,(500,345),0,0
18690 'sp_put 26,(630,345),0,0
18700 'sp_put 27,(780,345),0,0
18710 'sp_put 28,(930,345),0,0
18720 'Line 3
18730 'sp_put 29,(50,440),0,0
18740 'sp_put 30,(200,440),0,0
18750 'sp_put 31,(350,440),0,0
18760 'sp_put 32,(500,440),0,0
18770 'sp_put 33,(630,440),0,0
18780 'sp_put 34,(780,440),0,0
18790 'sp_put 35,(930,440),0,0
18800 'Line 4
18810 'sp_put 36,(50,535),0,0
18820 'sp_put 37,(200,535),0,0
18830 'sp_put 38,(350,535),0,0
18840 'sp_put 39,(500,535),0,0
18850 'sp_put 40,(630,535),0,0
18860 sp_put 41,(780,535),0,0
18870 'sp_put 42,(930,536),0,0
18880 gload Gazo$ + "Screen1.png",0,0,0
18890 color rgb(255,255,255)
18900 locate 1,3
18910 print "名前の姓をアルファベットで入力してください"
18920 locate 1,5
18930 print " A  B  C  D  E  F  G"
18940 locate 1,7
18950 print " H  I  J  K  L  M  N"
18960 locate 1,9
18970 print " O  P  Q  R  S  T  U"
18980 locate 1,11
18990 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
19000 locate 1,15:color rgb(0,0,0)
19010 print "名前の姓:" + name1$
19020 select_name1:
19030 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
19040 '有効ボタン
19050 '1.決定ボタン(bg:2)
19060 '2.Enter Key$:chr$(13)
19070 '3.カーソル上 (chr$(31))
19080 '4.カーソル　左 (chr$(29))
19090 '5.ジョイパッド　上 (y:1)
19100 '6:ジョイパッド　左 (y2:-1)
19110 '7:ジョイパッド　下 (y:-1)
19120 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19130 key$ = inkey$
19140 'ジョイパッドの決定:bg
19150 bg = strig(1)
19160 y = stick(1)
19170 y2 = stick(0)
19180 pause 200
19190 wend
19200 '====================================
19210 'Birds Eye Grid 名前入力
19220 '入力スタイル　アルファベット入力
19230 'sp_on:　スプライトのオンオフ
19240 'sp_put :表示位置
19250 'No:ボタン番号
19260 '====================================
19270 'カーソルで下に行く
19280 if ((y=-1) or (key$=chr$(31))) then
19290 select case No
19300 '1.Ok ボタン
19310 'sp_on スプライトのオンオフ
19320 'sp_put スプライトを表示
19330 case -1:
19340 '1.アルファベット　入力ボタン
19350 '実装未完全なので終了
19360  'Ok → T ○ :No:20=T
19370  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19380  'T  → M ○
19390 case 20:
19400   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19410  'M  →　F ○
19420 case 13:
19430   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19440  'F  → Ok
19450 case 6:
19460   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19470 end select
19480 endif
19490 '2.決定ボタン
19500 if ((key$ = chr$(13)) OR  (bg = 2)) then
19510 select case No
19520 case -1:
19530      'スプライトをOFFにする
19540      sp_on 41,0
19550 end select
19560 endif
19570 '3.カーソル　左
19580 if (key$ = chr$(29) or (y2 =-1)) then
19590 select case No
19600 'Line 4
19610 'Line 4
19620 '1.
19630 'Z:-1 :Ok ボタン
19640 'Ok → Z
19650 case -1:
19660      'Ok →　Z
19670      'Ok ボタン OFF,Z Button ON
19680      'No=26:Z
19690      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19700 '2.
19710 '26:Zボタン Z→ Y
19720 case 26:
19730      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19740 '3.
19750 '25:Yボタン  Y → X
19760 case 25:
19770      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19780 '4
19790 '24:Xボタン X → W
19800 case 24:
19810      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19820 '23:Wボタン X → W
19830 '5
19840 case 23:
19850 '22:Vボタン W → V
19860      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19870 case 22:
19880 '-1:V→ Ok
19890      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19900 'Line 3
19910 case 20:
19920 '33:T34  → S:33 :◯
19930     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19940 case 19:
19950 '32:S:33 → R:32 :◯
19960     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19970 case 18:
19980 '31:R:32 → Q:31 :◯
19990     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20000 '30:O → P :◯
20010 case 17:
20020 '30:Q:31 → P:30 :◯
20030     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20040 case 16:
20050 '29:P:30 → O:29 :◯
20060     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20070 case 15:
20080 '28:O:29 → U:21  :◯
20090  'O:OFF,U:ON
20100     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20110 '27:U:21 → T:20  :◯
20120 case 21:
20130 'U:OFF:T:ON
20140     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20150 'Line 2
20160 '26:M:13 → L:12 : ○
20170 case 13:
20180  'M:OFF,L:ON
20190    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20200 '25:L:12 → K:11 : ○
20210 case 12:
20220    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20230 '24:K:11 → J:10 : ○
20240 case 11:
20250    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20260 '23:J:10 → I:9  : ○
20270 case 10:
20280    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20290 '22:I:9 → H:8    :○
20300 case 9:
20310     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20320 '21:H:8 → N:14:   :○
20330 case 8:
20340     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20350 '20:N:14 → M:13:   :○
20360 case 14:
20370     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20380 '●.Line 1:
20390 '19:F:20 → E:19 : ☓
20400 'F:OFF,E:ON
20410 case 6:
20420     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20430 '18:E → D
20440 'E:OFF,D:ON
20450 case 5:
20460     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20470 '17:D → C
20480 'D:OFF,C:ON
20490 case 4:
20500      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20510 case 3:
20520      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20530 case 2:
20540      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20550 case 1:
20560      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20570 case 7:
20580      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20590 end select
20600 endif
20610 '上から下の方向
20620 if ((key$ = chr$(31)) or  (y = 1)) then
20630 select case No
20640 '●.1
20650 '1:A→H
20660 case 1:
20670       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20680 '2:H→O
20690 case 8:
20700       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20710 '3:O→V
20720 case 15:
20730       No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20740 '4:V→A
20750 case 22:
20760      No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20770 '●.2
20780 '5.B→I
20790 case 2:
20800      No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20810 '6.I→P
20820 case 9:
20830      No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20840 '7.P→W
20850 case 16:
20860      No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20870 '8.W→B
20880 case 23:
20890      No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20900 '●.3
20910 '9.C→J
20920 case 3:
20930      No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
20940 '10.J→Q
20950 case 10:
20960      No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20970 '11.Q→X
20980 case 17:
20990      No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21000 '12.X→C
21010  case 24:
21020      No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
21030 '●.4
21040 '13.D→K
21050   case 4:
21060      No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21070 '14.K→R
21080  case 11:
21090      No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21100 '15.R→Y
21110  case 18:
21120      No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21130 '16.Y→D
21140  case 25:
21150     No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21160 '●.5
21170 '17.E→L
21180 case 5:
21190    No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21200 '18.L→S
21210 case 12:
21220    No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21230 '19.S→Z
21240 case 19:
21250    No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21260 '20.Z→E
21270 case 26:
21280    No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21290 '●.6
21300 '21.F→M
21310 case 6:
21320    No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21330 '22.M→T
21340 case 13:
21350    No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21360 '23.T→Ok
21370 case 20:
21380    No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21390 '24.Ok→F
21400 case -1:
21410    No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21420 '●.7
21430 '25.G→N
21440 case 7:
21450    No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21460 '26.N→U
21470 case 14:
21480    No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21490 '27.U→G
21500 case 21:
21510    No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21520 end select
21530 endif
21540 '決定ボタン　で名前の姓に文字を追加。
21550 if (key$ = chr$(13) or bg = 2) then
21560 select case No
21570 'Okボタン
21580 case -1:
21590        goto Inputname2:
21600 'Aの文字
21610 case 1:
21620       'if len(n$)=0 then
21630       n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21640       'else
21650       'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21660       'endif
21670     goto select_name1:
21680 case 2:
21690       n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
21700 end select
21710 endif
21720 Input_name1_Birdseye:
21730 cls 3:init "kb:2":play ""
21740 gload Gazo$ + "Input_Birtheye2.png",0,0,0
21750 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
21760 color rgb(255,255,255)
21770 locate 1,2:print "名前をアルファベットで入れてください"
21780 color rgb(0,0,0)
21790 locate 1,5:Input "名前（姓の部分）:",name1$
21800 '27.U→G
21810 'locate 1,5:print "Hit any key"
21820 n1 = len(name1$)
21830 if (n1 < 11) then
21840 for i=1 to n1
21850 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21860 next i
21870 endif
21880 goto Inputname2:
21890 '2.グリッドアイ　姓の入力
21900 'end
21910 Inputname2:
21920 cls 3:init"kb:2":font 48:play ""
21930 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21940 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
21950 color rgb(255,255,255)
21960 locate 1,2:print "名前をアルファベットで入れてください"
21970 color rgb(0,0,0)
21980 locate 1,5:Input "名前(名の部分):",name2$
21990 n2 = len(name2$)
22000 for i=1 to n2
22010 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
22020 next i
22030 '計算領域
22040 Complate:
22050 'name1
22060 for i=0 to 25
22070 for n=1 to len(name1$)
22080 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22090 b = val(buf_chart$(i,1))
22100 buffer(b-1) = buffer(b-1) + 1
22110 endif
22120 next n
22130 next i
22140 'name2
22150 for i=0 to 25
22160 for n=1 to len(name2$)
22170 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22180 c = val(buf_chart$(i,1))
22190 buffer(c - 1) = buffer(c - 1) + 1
22200 endif
22210 next n
22220 next i
22230 '結果表示領域
22240 Result_Birtheye1:
22250 cls 3:init"kb:4":No=0:play "":'音を止める
22260 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22270 gload Gazo$ + "downscreen.png",0,0,800
22280 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
22290 color rgb(255,255,255)
22300 '1の表示
22310 locate 3,14:print buffer(0);
22320 '2の表示
22330 locate 3,9:print buffer(1);
22340 '3の表示
22350 locate 3,5:print buffer(2);
22360 '4の表示
22370 locate 10,14:print buffer(3);
22380 '5の表示
22390 locate 10,9:print buffer(4);
22400 '6の表示
22410 locate 10,5:print buffer(5);
22420 '7の表示
22430 locate 15,14:print buffer(6);
22440 '8の表示
22450 locate 15,9:print buffer(7);
22460 '9の表示
22470 locate 15,5:print buffer(8);
22480 'name を大文字に変換
22490 locate 5,3:print ucase$(name1$ + name2$)
22500 color rgb(0,0,0)
22510 'bg:右のボタン  ,bg2:左のボタン
22520 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
22530 bg=0:key$="":bg2=0
22540 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22550 'Enterと決定ボタン
22560 key$ = inkey$
22570 '右ボタン:1
22580 bg = strig(1)
22590 '左の丸ボタン:0
22600 bg2=strig(0)
22610 pause 200
22620 wend
22630 if ((bg=2) or (key$=chr$(13))) then
22640 'データーをクリアしてトップ画面に行く
22650 'for i=0 to 8
22660 'buffer(i)=0
22670 'next i
22680 'for n=0 to 9
22690 'buf_name1$(n) = ""
22700 'buf_name2$(n) = ""
22710 'next n
22720 'Topに行く
22730 'goto Main_Screen:
22740 'メニューを開く
22750 'goto BirdsEye_Result2:
22760 'Menu(ui_select) リストに飛ぶ
22770 goto Result_Birtheye_List1:
22780 endif
22790 if (bg2=2) then
22800 'データーをクリアする
22810 for i=0 to 8
22820 buffer(i)=0
22830 next i
22840 for n=0 to 9
22850 buf_name1$(n)=""
22860 buf_name2$(n)=""
22870 next n
22880 goto Main_Screen:
22890 endif
22900 'goto Result_Birtheye1:
22910 'Result_Birtheye2:
22920 'cls 3:color rgb(255,255,255)
22930 'end
22940 'Memory 消去
22950 '
22960 '横のフォーカスライン
22970 BirdsEye_Result2:
22980 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22990 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
23000 Forcus1_buffer$(2)="○"
23010 else
23020 Forcus1_buffer$(2)="☓"
23030 endif
23040 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
23050 Forcus1_buffer$(1)="○"
23060 else
23070 Forcus1_buffer$(1) = "☓"
23080 endif
23090 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
23100 Forcus1_buffer$(0)="○"
23110 else
23120 Forcus1_buffer$(0)="☓"
23130 endif
23140 gload Gazo$ + "Screen1.png",0,0,0
23150 color rgb(255,0,0):
23160 locate 1,1
23170 print "バーズアイグリッド(フォーカスライン1)"
23180 color rgb(255,255,255)
23190 locate 1,3:
23200 print "●.横のフォーカスライン"
23210 locate 1,5
23220 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23230 locate 1,7
23240 print "2.調停者ライン:"+Forcus1_buffer$(1)
23250 locate 1,9
23260 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23270 color rgb(0,0,0)
23280 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23290 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
23300 key$=inkey$
23310 bg=strig(1)
23320 bg2=strig(0)
23330 pause 200
23340 wend
23350 if ((bg=2) or (key$=chr$(13))) then
23360 goto BirdsEye_Result3:
23370 endif
23380 if (bg2=2) then
23390 for i=0 to 8
23400 buffer(i)=0
23410 next i
23420 goto Main_Screen:
23430 endif
23440 BirdsEye_Result3:
23450 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23460 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23470 Forcus2_buffer$(2)="○"
23480 else
23490 Forcus2_buffer$(2)="☓"
23500 endif
23510 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23520 Forcus2_buffer$(1)="○"
23530 else
23540 Forcus2_buffer$(1) = "☓"
23550 endif
23560 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23570 Forcus2_buffer$(0)="○"
23580 else
23590 Forcus2_buffer$(0)="☓"
23600 endif
23610 gload Gazo$ + "Screen1.png",0,0,0
23620 color rgb(255,0,0):
23630 locate 1,1
23640 print "バーズアイグリッド(フォーカスライン2)"
23650 color rgb(255,255,255)
23660 locate 1,3:
23670 print "●.縦のフォーカスライン"
23680 locate 1,5
23690 print "1.表現者ライン:" + Forcus2_buffer$(2)
23700 locate 1,7
23710 print "2.司令塔ライン:" + Forcus2_buffer$(1)
23720 locate 1,9
23730 print "3.指導者ライン:" + Forcus2_buffer$(0)
23740 color rgb(0,0,0)
23750 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23760 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23770 key$=inkey$
23780 bg=strig(1)
23790 bg2=strig(0)
23800 pause 200
23810 wend
23820 if ((bg = 2) or (key$ = chr$(13))) then
23830 goto BirdsEye_Result4:
23840 endif
23850 if (bg2=2) then
23860 for i=0 to 8
23870 buffer(i)=0
23880 next i
23890 goto Main_Screen:
23900 endif
23910 BirdsEye_Result4:
23920 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23930 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
23940 Forcus3_buffer$(1) = "○"
23950 else
23960 Forcus3_buffer$(1) = "☓"
23970 endif
23980 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23990 Forcus3_buffer$(0) = "○"
24000 else
24010 Forcus3_buffer$(0) = "☓"
24020 endif
24030 gload Gazo$ + "Screen1.png",0,0,0
24040 color rgb(255,0,0):
24050 locate 1,1
24060 print "バーズアイグリッド(フォーカスライン3)"
24070 color rgb(255,255,255)
24080 locate 1,3:
24090 print "●.斜めのフォーカスライン"
24100 locate 1,5
24110 print "1.成功者ライン:"+Forcus3_buffer$(1)
24120 locate 1,7
24130 print "2.セレブライン:"+Forcus3_buffer$(0)
24140 color rgb(0,0,0)
24150 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
24160 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24170 key$ = inkey$
24180 bg = strig(1)
24190 bg2 = strig(0)
24200 pause 200
24210 wend
24220 if ((bg=2) or (key$=chr$(13))) then
24230  goto Result_Birtheye1:
24240 endif
24250 if (bg2=2) then
24260 'データークリア
24270 for i=0 to 8
24280  buffer(i) = 0
24290 next i
24300  goto Main_Screen:
24310 endif
24320 References1:
24330 cls 3:key$ = "":bg = 0:play "":font 48-16
24340 gload Gazo$ + "Reference1_20230703.png",0,0,0
24350 print chr$(13)+chr$(13)+chr$(13)
24360 color rgb(0,0,0)
24370 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24380 print "Author:carol Adrinne,PhD"+chr$(13)
24390 print "出版社:幻冬舎" + chr$(13)
24400 print "HP:www.carolAdrienne.jp/"+chr$(13)
24410 print "ISBN:978-4-344-01394-0"+chr$(13)
24420 print "定価:1500円 + 税"+chr$(13)
24430 color rgb(255,255,255)
24440 locate 1,23
24450 print "ジョイパッド右：次へ"
24460 while (key$ <> chr$(13) and bg <> 2)
24470 bg = strig(1)
24480 key$ = inkey$
24490 wend
24500 '
24510 if ((bg = 2) or (key$ = chr$(13))) then
24520 pause 200:goto References2:
24530 endif
24540 'ユダヤの秘儀 カバラ大占術
24550 References2:
24560 cls 3:play "":bg = 0:key$ = ""
24570 gload Gazo$ + "Reference2_20230703.png",0,0,0
24580 '参考文献２
24590 'カバラ大占術
24600 print chr$(13) + chr$(13) + chr$(13)
24610 color  rgb(0,0,0):font 48-16
24620 locate 1,3
24630 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24640 print "著者：浅野　八郎" + chr$(13)
24650 print "出版社:NON BOOK" + chr$(13)
24660 print "ISBN:4-396-10364-6" + chr$(13)
24670 print "定価:829円 + 税"
24680 color rgb(255,255,255)
24690 locate 1,23
24700 print "ジョイパッド右：トップへ行く"
24710 while ((key$ <> chr$(13)) and (bg <> 2))
24720 bg = strig(1)
24730 key$ = inkey$
24740 wend
24750 if ((bg = 2) or (key$ = chr$(13))) then
24760 pause 200:goto Main_Screen:
24770 endif
24780 end
24790 '1.数秘術　トップ画面
24800 Kabara_First_Top:
24810 cls 3:color rgb(255,255,255):play ""
24820 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
24830 gload Gazo$ + "downscreen.png",0,0,800
24840 No=0:init"kb:4"
24850 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
24860 print chr$(13);chr$(13)
24870 color rgb(255,255,255)
24880 locate 3,4:No=0
24890 print "番号選んでください" + chr$(13)
24900 print " :1.数秘術占い" + chr$(13)
24910 print " :2.トップ画面に戻る" + chr$(13)
24920 color rgb(0,0,0)
24930 sp_on 0,1
24940 locate 1,15:print "1.数秘術番号を求めるを選択"
24950 'KeyBord:true
24960 'Joy Pad:true
24970 '上、下:true
24980 '
24990 'ｂｇ：決定ボタン
25000 'カーソル　上
25010 'カーソル　下
25020 Kabara_First_Top2:
25030 key$ = "":bg = 0:y = 0:
25040 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
25050 key$ = inkey$
25060 bg = strig(1)
25070 y = stick(1)
25080 'PauseでCPUを休める
25090 pause 5
25100 wend
25110 '1.カーソル　下 処理 chr$(31)
25120 'カーソル　下
25130 if ((key$ = chr$(31)) or (y = 1)) then
25140 select case No
25150 '
25160 case 1:
25170 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
25180 case 0:
25190 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25200 'case 2:
25210 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25220 end select
25230 endif
25240 '2.カーソル　上 処理 chr$(30)
25250 if ((key$ = chr$(30)) or (y = -1)) then
25260 select case No
25270 case 0:
25280 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25290 case 1:
25300 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25310 'case 2:
25320 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25330 end select
25340 endif
25350 '3.決定 処理  bg:2 or Enter key:chr$(13)
25360 if ((bg = 2) or (key$ = chr$(13))) then
25370 select case No
25380 case 0:
25390 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25400 goto Kabara_TopScreen:
25410 'case 1:
25420 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25430 case 1:
25440 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25450 end select
25460 endif
25470 '
25480 'Kabara 相性占い トップ画面
25490 Kabara_Aishou_Top:
25500 cls 3:y=0:key$="":bg=0:No=0
25510 play ""
25520 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25530 gload Gazo$ + "downscreen.png",0,0,800
25540 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25550 print chr$(13) + chr$(13)
25560 locate 0,4:color rgb(255,255,255)
25570 'print "Ok"
25580 '
25590 print "番号を選んでください" + chr$(13)
25600 print " :1.男女2人の相性(未実装)" + chr$(13)
25610 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
25620 print " :3.トップ画面に戻る" + chr$(13)
25630 sp_on 0,1:sp_on 1,0:sp_on 2,0
25640 color rgb(0,0,0)
25650 locate 1,15:print "1.男女2人の相性占いを選択"
25660 Kabara_Aishou_Top2:
25670 key$ = "":y = 0:bg = 0:
25680 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
25690 'ジョイパッド(右) ,十字キー (上下)
25700 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
25710 y = stick(1)
25720 key$ = inkey$
25730 bg = strig(1)
25740 pause 5
25750 wend
25760 'カーソル　下 or 十字キー　下
25770 if ((key$ = chr$(31)) or (y = 1)) then
25780 select case No
25790 '選択肢　1 - 2に変更
25800 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
25810 'ok
25820 case 0:
25830 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25840 '選択肢　2 - 3に変更
25850 case 1:
25860 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
25870 'リリース時 case 2コメント解除
25880 case 2:
25890 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
25900 case else:
25910 goto Kabara_Aishou_Top2:
25920 end select
25930 endif
25940 '十字キー　上　、カーソル　上
25950 if ((key$ = chr$(30)) or (y = -1)) then
25960 select case No
25970 case 0:
25980 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25990 case 1:
26000 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
26010 case 2:
26020 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26030 case else:
26040 goto Kabara_Aishou_Top2:
26050 end select
26060 endif
26070 '十字キー　上下:選択
26080 'ジョイパッド 右:決定
26090 if ((bg = 2) or (key$ = chr$(13))) then
26100 select case No
26110 '1.男女の相性
26120 case 0:
26130 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
26140 '2ビジネスの相性
26150 case 1:
26160 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
26170 case 2:
26180 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
26190 end select
26200 endif
26210 'ビジネスの相性　
26220 '1.1人目のビジネスの相性　名前入力　1人目
26230 Business_Aishou_Input_1_parson:
26240 No=0:color RGB(255,255,255)
26250 cls 3:init "kb:2"
26260 gload Gazo$ + "Screen1.png",0,0,0
26270 gload Gazo$ + "downscreen.png",0,0,800
26280 play "":color rgb(255,0,0):name$ = ""
26290 locate 0,1
26300 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
26310 color rgb(255,255,255):
26320 locate 0,3
26330 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
26340 print "入れてください" + chr$(13)
26350 locate 0,15:color rgb(0,0,0)
26360 Input "1人目の名前:",name$
26370 'color rgb(0,0,0)
26380 'locate 0,13:print "                                     "
26390 'locate 0,13:print "1人目の名前を入力してエンターキー":
26400 'buffer_name$(0):1人目の名前
26410 buffer_name$(0) = name$:
26420 goto Business_Aishou_Input_2_Parson:
26430 '2.2人目のビジネスの相性 名前入力 2人目
26440 Business_Aishou_Input_2_Parson:
26450 cls 3:init "kb:2":name$ = "":No=0
26460 gload Gazo$ + "Screen1.png",0,0,0
26470 gload Gazo$ + "downscreen.png",0,0,800
26480 color rgb(255,0,0)
26490 'Title
26500 locate 0,1
26510 print "ビジネスの相性　2人目"
26520 locate 0,3
26530 color rgb(255,255,255)
26540 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
26550 print "入れてください" + chr$(13)
26560 locate 0,15:color rgb(0,0,0)
26570 Input "2人目の名前:",name$
26580 'color rgb(0,0,0)
26590 'locate 0,15:print "                                              "
26600 'locate 0,15:print "2人目の名前を入力してエンター ":
26610 '2人目
26620 '2人目の名前を入れるに代入
26630 buffer_name$(1) = name$:
26640 goto Select_jyoushi:
26650 '3.上司の選択
26660 Select_jyoushi:
26670 cls 3:gload Gazo$ + "Screen1.png",0,0,0
26680 gload Gazo$ + "downscreen.png",0,0,800
26690 init "kb:4":No=0
26700 color rgb(0,0,255)
26710 locate 1,1
26720 print "上司の選択"
26730 color rgb(255,255,255)
26740 locate 0,4:print "名前から上司の方を選んでください"
26750 locate 0,6
26760 print " :";buffer_name$(0);"が上 司";chr$(13)
26770 locate 0,8
26780 print " :";buffer_name$(1);"が上 司";chr$(13)
26790 locate 0,15:
26800 print "                                     "
26810 locate 0,15:color rgb(0,0,0)
26820 print "上司の方を選んで右の丸ボタン"
26830 sp_on 0,1:sp_on 1,0:sp_on 2,0
26840 Select_jyoushi2:
26850 'ここでNo=0をおいてはいけない
26860 y=0:key$="":bg=0:
26870 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
26880 y = stick(1)
26890 key$ = inkey$
26900 bg = strig(1)
26910 pause 5
26920 wend
26930 '1.カーソル下の処理　or 十字キーの下処理
26940 if ((key$ = chr$(31)) or (y = 1)) then
26950 select case No
26960 case 0:
26970 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26980 case 1:
26990 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
27000 end select
27010 endif
27020 '2.カーソル上処理　or 十字キーの上の処理
27030 if ((key$ = chr$(30)) or (y = -1)) then
27040 select case No
27050 case 0:
27060 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
27070 case 1:
27080 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
27090 end select
27100 endif
27110 if ((key$ = chr$(13)) or (bg = 2)) then
27120 select case No
27130 case 0:
27140 '上司(name1)を配列に代入
27150 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
27160 case 1:
27170 '上司（name2)を配列に代入
27180 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
27190 end select
27200 endif
27210 '3.決定ボタン　Enter or 右の丸ボタン
27220 '1.誕生日入力
27230 '1-1.生まれた年を入力
27240 'Jyoushi_born_year:
27250 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
27260 '---------------------------------------------'
27270 '誕生日入力(生れた年代)
27280 Jyoushi_Input_Seireki:
27290 'buf_Jyoushi_Born_Year:上司の生まれた年代
27300 'buf_Jyoushi_Born_Day(0) = born_year
27310 cls 3:play "":count=0:count2=0
27320 init"kb:4"
27330 'No=-1:Okのとき
27340 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
27350 for i=0 to 3
27360 buf_Jyoushi_Born_Day(i)=0
27370 next i
27380 gload Gazo$ + "Screen1.png",0,0,0
27390 gload Gazo$ + "downscreen.png",0,0,800
27400 'Init"kb:2"
27410 '音声ファイル再生 2023.06.07
27420 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
27430 font 48
27440 locate 0,1
27450 '文字色：黒　 color rgb(0,0,0)
27460 color rgb(255,255,255)
27470 print "上司の生まれた年代を入れて下さい" + chr$(13)
27480 color rgb(255,255,255)
27490 locate 1,3
27500 print "上司の生まれた年代(西暦4桁):";buf_year$
27510 color rgb(255,255,255)
27520 'locate 4,6:print ":7"
27530 'locate 9,6:print ":8"
27540 'locate 12,6:print ":9"
27550 locate 4,6
27560 print ":7  :8  :9" + chr$(13)
27570 color rgb(255,255,255)
27580 locate 4,8
27590 print ":4  :5  :6" + chr$(13)
27600 color rgb(255,255,255)
27610 locate 4,10
27620 print ":1  :2  :3" + chr$(13)
27630 locate 4,12
27640 print "    :0"
27650 locate 12,12
27660 color rgb(0,0,255)
27670 print ":Ok"
27680 sp_on 4,0: sp_on 5,0:sp_on 6,0
27690 sp_on 7,0:sp_on 8,0:sp_on 9,0
27700 sp_on 10,0:sp_on 11,0:sp_on 12,0
27710 sp_on 13,0:sp_on 14,1
27720 Jyoushi_Input_Seireki2:
27730 key$="":bg=0:y=0:y2=0:bg2=0:
27740 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27750 key$ = inkey$
27760 bg = strig(1)
27770 y = stick(1)
27780 y2 = stick(0)
27790 bg2=strig(0)
27800 pause 5
27810 wend
27820 '十字キー　ここから
27830 '上の矢印　または、十字キー上
27840 if ((y = -1) or (key$ = chr$(30))) then
27850 select case No
27860 'No=-1:okのとき:初期の状態
27870 '0kボタンから３に移動
27880 '上に行く 処理
27890 case -1:
27900 No=3:sp_on 12,1:sp_on 14,0
27910 pause 200:goto Jyoushi_Input_Seireki2:
27920 '選択肢:3
27930 '3ボタンから 6に移動
27940 case 3:
27950 No=6:sp_on 12,0:sp_on 11,1
27960 pause 200:goto Jyoushi_Input_Seireki2:
27970 '6ボタンから ９に移動
27980 case 6:
27990 No=9:sp_on 10,1:sp_on 11,0
28000 pause 200:goto Jyoushi_Input_Seireki2:
28010 '6ボタンから ９に移動　ここまで
28020 '9で上を押して何もしない
28030 case 9:
28040 '何もしない
28050 No=9
28060 pause 200:goto Jyoushi_Input_Seireki2:
28070 '9で上を押しても何もしない　ここまで
28080 '上　 0ボタンから2ボタン
28090 'sp_on 6,1:1
28100 'sp_on 8,1:5
28110 'sp_on 7,1:7
28120 case 0:
28130 No=2:sp_on 13,0:sp_on 9,1:
28140 pause 200:goto Jyoushi_Input_Seireki2:
28150 '上  0ボタンから2ボタン　ここまで
28160 '2から５になる 上
28170 case 2:
28180 No=5:sp_on 8,1:sp_on 9,0:
28190 pause 200:goto Jyoushi_Input_Seireki2:
28200 case 5:
28210 No=8:sp_on 7,1:sp_on 8,0
28220 pause 200:goto Jyoushi_Input_Seireki2:
28230 case 8:
28240 pause 200:goto Jyoushi_Input_Seireki2:
28250 case 1:
28260 No=4:sp_on 5,1:sp_on 6,0
28270 pause 200:goto Jyoushi_Input_Seireki2:
28280 case 4:
28290 No=7:sp_on 4,1:sp_on 5,0
28300 pause 200:goto Jyoushi_Input_Seireki2:
28310 case 7:
28320 pause 200:goto Jyoushi_Input_Seireki2:
28330 end select
28340 endif
28350 '左３　ここまで
28360 '下の矢印
28370 '中央 2
28380 if ((y=1) or (key$ = chr$(31))) then
28390 select case No
28400 '9から６に下げる
28410 case 9:
28420 No=6:sp_on 11,1:sp_on 10,0
28430 pause 200:goto Jyoushi_Input_Seireki2:
28440 '6から３に下げる
28450 case 6:
28460 No=3:sp_on 12,1:sp_on 11,0
28470 pause 200:goto Jyoushi_Input_Seireki2:
28480 '3から０ｋに変える
28490 case 3:
28500 No=-1:sp_on 14,1:sp_on 12,0
28510 pause 200:goto Jyoushi_Input_Seireki2:
28520 'Okから下のボタンを押しても何もしない
28530 case -1:
28540 pause 200:goto Jyoushi_Input_Seireki2:
28550 case 8:
28560 No=5:sp_on 8,1:sp_on 7,0
28570 pause 200:goto Jyoushi_Input_Seireki2:
28580 case 5:
28590 No=2:sp_on 9,1:sp_on 8,0
28600 pause 200:goto Jyoushi_Input_Seireki2:
28610 case 2:
28620 No=0:sp_on 13,1:sp_on 9,0
28630 pause 200:goto Jyoushi_Input_Seireki2:
28640 case 0:
28650 pause 200:goto Jyoushi_Input_Seireki2:
28660 case 7:
28670 No=4:sp_on 5,1:sp_on 4,0
28680 pause 200:goto Jyoushi_Input_Seireki2:
28690 case 4:
28700 No=1:sp_on 6,1:sp_on 5,0
28710 pause 200:goto Jyoushi_Input_Seireki2:
28720 case 1:
28730 pause 200:goto Jyoushi_Input_Seireki2:
28740 end select
28750 endif
28760 '左へボタン 十字キー　左　or 　カーソル左
28770 if ((y2 = -1) or (key$ = chr$(29))) then
28780 select case No
28790 'Ok ボタン  Okから　左　０に行く
28800 case -1:
28810 No=0:sp_on 13,1:sp_on 14,0
28820 pause 200:goto Jyoushi_Input_Seireki2:
28830 '0 ボタン  左　何もしない
28840 case 0:
28850 pause 200:goto Jyoushi_Input_Seireki2:
28860 case 3:
28870 No=2:sp_on 9,1:sp_on 12,0:
28880 pause 200:goto Jyoushi_Input_Seireki2:
28890 case 2:
28900 No=1:sp_on 6,1:sp_on 9,0:
28910 pause 200:goto Jyoushi_Input_Seireki2:
28920 case 1:
28930 pause 200:goto Jyoushi_Input_Seireki2:
28940 case 6:
28950 No=5:sp_on 8,1:sp_on 11,0
28960 pause 200:goto Jyoushi_Input_Seireki2:
28970 case 5:
28980 No=4:sp_on 5,1:sp_on 8,0
28990 pause 200:goto Jyoushi_Input_Seireki2:
29000 case 4:
29010 pause 200:goto Jyoushi_Input_Seireki2:
29020 case 9:
29030 No=8:sp_on 7,1:sp_on 10,0
29040 pause 200:goto Jyoushi_Input_Seireki2:
29050 case 8:
29060 No=7:sp_on 4,1:sp_on 7,0
29070 pause 200:goto Jyoushi_Input_Seireki2:
29080 case 7:
29090 pause 200:goto Jyoushi_Input_Seireki2:
29100 end select
29110 endif
29120 '右  十字キー　右　or カーソル　右
29130 if ((y2 = 1) or (key$ = chr$(28))) then
29140 select case No
29150 '0ボタンからokボタン右に移動
29160 case 0:
29170 No=-1:sp_on 14,1:sp_on 13,0
29180 pause 200:goto Jyoushi_Input_Seireki2:
29190 '0ボタンからokボタン 右に移動　ここまで
29200 'OKボタンで右を押して何もしない
29210 case -1:
29220 pause 200:goto Jyoushi_Input_Seireki2:
29230 case 1:
29240 No=2:sp_on 9,1:sp_on 6,0
29250 pause 200:goto Jyoushi_Input_Seireki2:
29260 case 2:
29270 No=3:sp_on 12,1:sp_on 9,0
29280 pause 200:goto Jyoushi_Input_Seireki2:
29290 case 3:
29300 pause 200:goto Jyoushi_Input_Seireki2:
29310 case 4:
29320 No=5:sp_on 8,1:sp_on 5,0
29330 pause 200:goto Jyoushi_Input_Seireki2:
29340 case 5:
29350 No=6:sp_on 11,1:sp_on 8,0
29360 pause 200:goto Jyoushi_Input_Seireki2:
29370 case 7:
29380 No=8:sp_on 7,1:sp_on 4,0
29390 pause 200:goto Jyoushi_Input_Seireki2:
29400 case 8:
29410 No=9:sp_on 10,1:sp_on 7,0
29420 pause 200:goto Jyoushi_Input_Seireki2:
29430 case 9:
29440 pause 200:goto Jyoushi_Input_Seireki2:
29450 case 6:
29460 pause 200:goto Jyoushi_Input_Seireki2:
29470 end select
29480 'Okから右ボタンを押して何もしない ここまで
29490 endif
29500 '十字キー　ここまで
29510 '==============================
29520 'ここから
29530 '==============================
29540 if ((bg = 2) or (key$ = chr$(13))) then
29550 select case count
29560 case 0:
29570 count = 1
29580 if (No = -1) then
29590 count = 0:No=0
29600 buf_Jyoushi_Born_Day(0) = No
29610 'Okボタンを押したとき
29620 goto Jyoushi_Input_Seireki2:
29630 else
29640 'Okボタン以外が押されたとき
29650 if (No >= 1 and No <= 2) then
29660 buf_year$="":buf_year$ = str$(No) + "***"
29670 buf_year = No:a= No
29680 buf_Jyoushi_Born_Day(0) = No
29690 locate 1,3
29700 color rgb(255,255,255)
29710 print "上司の生まれた年代(西暦4桁):";buf_year$
29720 goto Jyoushi_Input_Seireki2:
29730 else
29740 count=0
29750 ui_msg"数字が範囲外になります。"
29760 buf_year$="":buf_year=0
29770 goto Jyoushi_Input_Seireki2:
29780 endif
29790 endif
29800 case 1:
29810 count = 2
29820 if (No = -1) then
29830 count = 1
29840 goto Jyoushi_Input_Seireki2:
29850 else
29860 buf_year = a * 10 + No
29870 b=buf_year
29880 buf_year$ = str$(buf_year) + "**"
29890 buf_Jyoushi_Born_Day(0)=buf_year
29900 locate 1,3
29910 color rgb(255,255,255)
29920 print "                                                                "
29930 locate 1,3
29940 print "上司の生まれた年代(西暦4桁):" + buf_year$
29950 'if (No = -1) then
29960 'count=1
29970 goto Jyoushi_Input_Seireki2:
29980 endif
29990 case 2:
30000 count=3
30010 if (No=-1) then
30020 count =2
30030 goto Jyoushi_Input_Seireki2:
30040 else
30050 buf_year = b * 10 + No
30060 c=buf_year
30070 buf_year$ = str$(buf_year) + "*"
30080 buf_Jyoushi_Born_Day(0) = buf_year
30090 locate 1,3
30100 color rgb(255,255,255)
30110 print "                                        "
30120 locate 1,3
30130 print "上司の生まれた年代(西暦4桁):";buf_year$
30140 goto Jyoushi_Input_Seireki2:
30150 endif
30160 case 3:
30170 count=4
30180 if (No = -1) then
30190 No=0
30200 goto Jyoushi_Input_Seireki2:
30210 else
30220 buf_year = c * 10 + No
30230 buf_year$ = str$(buf_year)
30240 buf_Jyoushi_Born_Day(0) = buf_year
30250 locate 1,3
30260 color RGB(255,255,255)
30270 print "                                      "
30280 locate 1,3
30290 print "上司の生まれた年代(西暦4桁):";buf_year$
30300 buf_year=val(buf_year$)
30310 'year=val(buf_year$)
30320 'if (No=-1) then
30330 'goto Input_Born_Month:
30340 'else
30350 goto Jyoushi_Input_Seireki2:
30360 endif
30370 case 4:
30380 'bufyear=buf_year
30390 if (No=-1) then
30400 buf_year = val(buf_year$)
30410 buf_Jyoushi_Born_Day(0)=buf_year
30420 sp_on 14,0:No=0
30430 goto Jyoushi_Input_Born_Month:
30440 else
30450 goto Jyoushi_Input_Seireki2:
30460 endif
30470 end select
30480 endif
30490 '===========================
30500 'ここまでを部下のところにコピーする.
30510 '===========================
30520 if (bg2 = 2) then
30530 select case count2
30540 case 0:
30550 if (No = -1) then
30560 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
30570 count=0
30580 locate 1,3
30590 color rgb(255,255,255)
30600 print "                                      "
30610 locate 1,3
30620 print "上司の生まれた年代（西暦4桁):" + buf_year$
30630 goto Jyoushi_Input_Seireki2:
30640 else
30650 '(buf_year=0) then
30660 buf_year=0:buf_year$="****"
30670 locate 1,3
30680 print "                                       "
30690 locate 1,3
30700 print "上司の生まれた年代(西暦4桁):"+buf_year$
30710 goto Jyoushi_Input_Seireki2:
30720 'endif
30730 endif
30740 end select
30750 endif
30760 'Input"上司の生れた年代(4桁,〜2025年):",year
30770 'if year > 2025 then goto Jyoushi_Input_Seireki:
30780 'if year = 123 then cls 3:cls 4:goto Main_Screen:
30790 '"4桁目"
30800 'bufyear4 = fix(year / 1000)
30810 '"3桁目"
30820 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
30830 '"2桁目"
30840 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
30850 '"1桁目"
30860 'bufyear1 = fix((year - ((bufyear4*
30870 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
30880 '2.生まれた月を入力
30890 Jyoushi_Input_Born_Month:
30900 cls 3:play "":count=0:count2=0
30910 'No=-1:Okのとき
30920 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
30930 for i=0 to 1
30940 buf_month(i)=0
30950 next i
30960 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30970 gload Gazo$ + "Screen1.png",0,0,0
30980 gload Gazo$ + "downscreen.png",0,0,800
30990 'Init"kb:4"
31000 '音声ファイル再生 2023.06.07
31010 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
31020 font 48
31030 locate 0,1
31040 '文字色：黒　 color rgb(0,0,0)
31050 '文字色:白
31060 color rgb(255,255,255)
31070 print "上司の生まれた月を入れて下さい" + chr$(13)
31080 '文字色:白
31090 color rgb(255,255,255)
31100 locate 1,3
31110 '文字色:白
31120 print "上司の生まれた月(1月~12月):"+buf_Month$
31130 color rgb(255,255,255)
31140 'locate 4,6:print ":7"
31150 'locate 9,6:print ":8"
31160 'locate 12,6:print ":9"
31170 locate 4,6
31180 '文字色:赤
31190 print ":7  :8  :9" + chr$(13)
31200 color rgb(255,255,255)
31210 locate 4,8
31220 print ":4  :5  :6" + chr$(13)
31230 color rgb(255,255,255)
31240 locate 4,10
31250 print ":1  :2  :3" + chr$(13)
31260 locate 4,12
31270 print "    :0"
31280 locate 12,12
31290 color rgb(0,0,255)
31300 print ":Ok"
31310 sp_on 4,0: sp_on 5,0:sp_on 6,0
31320 sp_on 7,0:sp_on 8,0:sp_on 9,0
31330 sp_on 10,0:sp_on 11,0:sp_on 12,0
31340 sp_on 13,0:sp_on 14,1
31350 Jyoushi_Input_Born_Month2:
31360 key$="":bg=0:y=0:y2=0:bg2=0
31370 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31380 key$ = inkey$
31390 bg = strig(1)
31400 y = stick(1)
31410 y2 = stick(0)
31420 bg2 = strig(0)
31430 pause 5
31440 wend
31450 '十字キー　ここから
31460 '上の矢印　または、十字キー上
31470 if ((y = -1) or (key$ = chr$(30))) then
31480 select case No
31490 'No=-1:okのとき:初期の状態
31500 '0kボタンから３に移動
31510 '上に行く 処理
31520 case -1:
31530 No=3:sp_on 12,1:sp_on 14,0
31540 pause 200:goto Jyoushi_Input_Born_Month2:
31550 '選択肢:3
31560 '3ボタンから 6に移動
31570 case 3:
31580 No=6:sp_on 12,0:sp_on 11,1
31590 pause 200:goto Jyoushi_Input_Born_Month2:
31600 '6ボタンから ９に移動
31610 case 6:
31620 No=9:sp_on 10,1:sp_on 11,0
31630 pause 200:goto Jyoushi_Input_Born_Month2:
31640 '6ボタンから ９に移動　ここまで
31650 '9で上を押して何もしない
31660 case 9:
31670 '何もしない
31680 No=9
31690 pause 200:goto Jyoushi_Input_Born_Month2:
31700 '9で上を押しても何もしない　ここまで
31710 '上　 0ボタンから2ボタン
31720 'sp_on 6,1:1
31730 'sp_on 8,1:5
31740 'sp_on 7,1:7
31750 case 0:
31760 No=2:sp_on 13,0:sp_on 9,1:
31770 pause 200:goto Jyoushi_Input_Born_Month2:
31780 '上  0ボタンから2ボタン　ここまで
31790 '2から５になる 上
31800 case 2:
31810 No=5:sp_on 8,1:sp_on 9,0:
31820 pause 200:goto Jyoushi_Input_Born_Month2:
31830 case 5:
31840 No=8:sp_on 7,1:sp_on 8,0
31850 pause 200:goto Jyoushi_Input_Born_Month2:
31860 case 8:
31870 pause 200:goto Input_Born_Month2:
31880 case 1:
31890 No=4:sp_on 5,1:sp_on 6,0
31900 pause 200:goto Jyoushi_Input_Born_Month2:
31910 case 4:
31920 No=7:sp_on 4,1:sp_on 5,0
31930 pause 200:goto Jyoushi_Input_Born_Month2:
31940 case 7:
31950 pause 200:goto Input_Born_Month2:
31960 end select
31970 endif
31980 '左３　ここまで
31990 '下の矢印
32000 '中央 2
32010 if ((y=1) or (key$ = chr$(31))) then
32020 select case No
32030 '9から６に下げる
32040 case 9:
32050 No=6:sp_on 11,1:sp_on 10,0
32060 pause 200:goto Jyoushi_Input_Born_Month2:
32070 '6から３に下げる
32080 case 6:
32090 No=3:sp_on 12,1:sp_on 11,0
32100 pause 200:goto Jyoushi_Input_Born_Month2:
32110 '3から０ｋに変える
32120 case 3:
32130 No=-1:sp_on 14,1:sp_on 12,0
32140 pause 200:goto Jyoushi_Input_Born_Month2:
32150 'Okから下のボタンを押しても何もしない
32160 case -1:
32170 pause 200:goto Jyoushi_Input_Born_Month2:
32180 case 8:
32190 No=5:sp_on 8,1:sp_on 7,0
32200 pause 200:goto Jyoushi_Input_Born_Month2:
32210 case 5:
32220 No=2:sp_on 9,1:sp_on 8,0
32230 pause 200:goto Jyoushi_Input_Born_Month2:
32240 case 2:
32250 No=0:sp_on 13,1:sp_on 9,0
32260 pause 200:goto Jyoushi_Input_Born_Month2:
32270 case 0:
32280 pause 200:goto Jyoushi_Input_Born_Month2:
32290 case 7:
32300 No=4:sp_on 5,1:sp_on 4,0
32310 pause 200:goto Jyoushi_Input_Born_Month2:
32320 case 4:
32330 No=1:sp_on 6,1:sp_on 5,0
32340 pause 200:goto Jyoushi_Input_Born_Month2:
32350 case 1:
32360 pause 200:goto Jyoushi_Input_Born_Month2:
32370 end select
32380 endif
32390 '左へボタン 十字キー　左　or 　カーソル左
32400 if ((y2 = -1) or (key$ = chr$(29))) then
32410 select case No
32420 'Ok ボタン  Okから　左　０に行く
32430 case -1:
32440 No=0:sp_on 13,1:sp_on 14,0
32450 pause 200:goto Jyoushi_Input_Born_Month2:
32460 '0 ボタン  左　何もしない
32470 case 0:
32480 pause 200:goto Jyoushi_Input_Born_Month2:
32490 case 3:
32500 No=2:sp_on 9,1:sp_on 12,0:
32510 pause 200:goto Jyoushi_Input_Born_Month2:
32520 case 2:
32530 No=1:sp_on 6,1:sp_on 9,0:
32540 pause 200:goto Jyoushi_Input_Born_Month2:
32550 case 1:
32560 pause 200:goto Jyoushi_Input_Born_Month2:
32570 case 6:
32580 No=5:sp_on 8,1:sp_on 11,0
32590 pause 200:goto Jyoushi_Input_Born_Month2:
32600 case 5:
32610 No=4:sp_on 5,1:sp_on 8,0
32620 pause 200:goto Jyoushi_Input_Born_Month2:
32630 case 4:
32640 pause 200:goto Jyoushi_Input_Born_Month2:
32650 case 9:
32660 No=8:sp_on 7,1:sp_on 10,0
32670 pause 200:goto Input_Born_Month2:
32680 case 8:
32690 No=7:sp_on 4,1:sp_on 7,0
32700 pause 200:goto Jyoushi_Input_Born_Month2:
32710 case 7:
32720 pause 200:goto Jyoushi_Input_Born_Month2:
32730 end select
32740 endif
32750 '右  十字キー　右　or カーソル　右
32760 if ((y2 = 1) or (key$ = chr$(28))) then
32770 select case No
32780 '0ボタンからokボタン右に移動
32790 case 0:
32800 No=-1:sp_on 14,1:sp_on 13,0
32810 pause 200:goto Jyoushi_Input_Born_Month2:
32820 '0ボタンからokボタン 右に移動　ここまで
32830 'OKボタンで右を押して何もしない
32840 case -1:
32850 pause 200:goto Jyoushi_Input_Born_Month2:
32860 case 1:
32870 No=2:sp_on 9,1:sp_on 6,0
32880 pause 200:goto Jyoushi_Input_Born_Month2:
32890 case 2:
32900 No=3:sp_on 12,1:sp_on 9,0
32910 pause 200:goto Jyoushi_Input_Born_Month2:
32920 case 3:
32930 pause 200:goto Jyoushi_Input_Born_Month2:
32940 case 4:
32950 No=5:sp_on 8,1:sp_on 5,0
32960 pause 200:goto Jyoushi_Input_Born_Month2:
32970 case 5:
32980 No=6:sp_on 11,1:sp_on 8,0
32990 pause 200:goto Jyoushi_Input_Born_Month2:
33000 case 7:
33010 No=8:sp_on 7,1:sp_on 4,0
33020 pause 200:goto Jyoushi_Input_Born_Month2:
33030 case 8:
33040 No=9:sp_on 10,1:sp_on 7,0
33050 pause 200:goto Jyoushi_Input_Born_Month2:
33060 case 9:
33070 pause 200:goto Jyoushi_Input_Born_Month2:
33080 case 6:
33090 pause 200:goto Jyoushi_Input_Born_Month2:
33100 end select
33110 'Okから右ボタンを押して何もしない ここまで
33120 endif
33130 '十字キー　ここまで
33140 '右の丸ボタン + Enter key 決定キー
33150 if ((bg=2) or (key$=chr$(13))) then
33160 select case count
33170 case 0:
33180 if (No=-1) then No=0
33190 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
33200 if (buf_month > 1 and buf_month < 10)  then
33210 buf_Month$ = str$(buf_month)
33220 'buf_month=No
33230 endif
33240 if (buf_month = 1)  then
33250 buf_Month$ = str$(buf_month) + "*"
33260 'c=buf_month
33270 endif
33280 locate 1,3
33290 print "                                     "
33300 color RGB(255,255,255)
33310 locate 1,3
33320 print "上司の生まれた月(1月~12月):" + buf_Month$
33330 goto Jyoushi_Input_Born_Month2:
33340 case 1:
33350 count = 2:
33360 'c = val(buf_Month$)
33370 if (No = -1) then
33380 'count=0
33390 No=0
33400 month=buf_month
33410 buf_month=val(buf_Month$)
33420 month=buf_month
33430 buf_Jyoushi_Born_Day(1)=month
33440 '生まれた日に飛ぶ
33450 goto Jyoushi_Input_Born_Day:
33460 else
33470 buf_month = c*10 + No
33480 'if (buf_month = 1) then
33490 'buf_Month$ = str$(buf_month)
33500 'endif
33510 buf_Month$ = str$(buf_month)
33520 buf_Jyoushi_Born_Day(1) = buf_month
33530 locate 0,3
33540 print "                                           "
33550 locate 1,3
33560 color Rgb(255,255,255)
33570 print "上司の生まれた月(1月~12月):" + buf_Month$
33580 goto Jyoushi_Input_Born_Month2:
33590 endif
33600 case 2:
33610 '==================================
33620 '何もしない
33630 'coun = 2
33640 '==================================
33650 'c= val(buf_Month$)
33660 'buf_month = c*10 + No
33670 'buf_Month$ = str$(buf_month)
33680 'locate 2,3
33690 'print "上司の生まれた月(1月～12月):";buf_Month$
33700 'goto Jyoushi_Input_Born_Month2:
33710 'case 3:
33720 'count=4
33730 'b=val(buf_month$)
33740 'buf_month=c*10+No
33750 'buf_Month$=str$(buf_month)
33760 'locate 2,3
33770 'print "上司の生まれた月(1月～12月):";buf_Month$
33780 'buf_month=val(buf_Month$)
33790 'year=val(buf_year$)
33800 if (No=-1) then
33810 No=0
33820 goto Jyoushi_Input_Born_Day:
33830 else
33840 goto Jyoushi_Input_Born_Month2:
33850 endif
33860 'case 4:
33870 'bufyear=buf_year
33880 'if (No=-1) then
33890 'buf_month = val(buf_Month$)
33900 'month = buf_month
33910 'sp_on 14,0
33920 'goto Input_Born_Day:
33930 'else
33940 'goto Input_Born_Month2:
33950 'endif
33960 end select
33970 endif
33980 '左の丸ボタン　キャンセル
33990 if (bg2=2) then
34000 select case count2
34010 case 0:
34020 if (No = -1) then
34030 buf_month=0:buf_Month$="**"
34040 count=0
34050 'goto rewrite2:
34060 else
34070 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
34080 buf_month = 0:buf_Month$ = "**"
34090 locate 0,3
34100 color rgb(255,255,255)
34110 print "                                       "
34120 goto rewrite2:
34130 if (No>12) then
34140 ui_msg"値が範囲外です。"
34150 goto rewrite2:
34160 endif
34170 endif
34180 endif
34190 rewrite2:
34200 locate 2,3
34210 color rgb(255,255,255)
34220 print "                                      "
34230 locate 2,3
34240 print "上司の生まれた月(1月~12月):"+buf_Month$
34250 goto Jyoushi_Input_Born_Month2:
34260 end select
34270 'endif
34280 endif
34290 end
34300 'end
34310 '生れた日を入力
34320 Jyoushi_Input_Born_Day:
34330 '生まれた日入力
34340 cls 3:play ""
34350 'No=-1:Okのとき
34360 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
34370 for i=0 to 1
34380 buf_day(i)=0
34390 next i
34400 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34410 gload Gazo$ + "Screen1.png",0,0,0
34420 gload Gazo$ + "downscreen.png",0,0,800
34430 'Init"kb:2"
34440 '音声ファイル再生 2023.06.07
34450 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
34460 font 48
34470 locate 1,1
34480 '文字色：黒　 color rgb(0,0,0)
34490 color rgb(255,255,255)
34500 print "上司の生まれた日を入れて下さい" + chr$(13)
34510 locate 1,3
34520 color rgb(255,255,255)
34530 print "                                      "
34540 locate 1,3
34550 print "上司の生まれた日(1日~31日):"+buf_Day$
34560 color rgb(255,255,255)
34570 'locate 4,6:print ":7"
34580 'locate 9,6:print ":8"
34590 'locate 12,6:print ":9"
34600 locate 4,6
34610 print ":7  :8  :9" + chr$(13)
34620 color rgb(255,255,255)
34630 locate 4,8
34640 print ":4  :5  :6" + chr$(13)
34650 color rgb(255,255,255)
34660 locate 4,10
34670 print ":1  :2  :3" + chr$(13)
34680 locate 4,12
34690 print "    :0"
34700 locate 12,12
34710 color rgb(0,0,255)
34720 print ":Ok"
34730 sp_on 4,0: sp_on 5,0:sp_on 6,0
34740 sp_on 7,0:sp_on 8,0:sp_on 9,0
34750 sp_on 10,0:sp_on 11,0:sp_on 12,0
34760 sp_on 13,0:sp_on 14,1
34770 Jyoushi_Input_Born_Day2:
34780 key$="":bg=0:y=0:y2=0:bg2=0:
34790 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34800 key$ = inkey$
34810 bg = strig(1)
34820 y = stick(1)
34830 y2 = stick(0)
34840 bg2 = strig(0)
34850 pause 5
34860 wend
34870 '十字キー　ここから
34880 '上の矢印　または、十字キー上
34890 if ((y = -1) or (key$ = chr$(30))) then
34900 select case No
34910 'No=-1:okのとき:初期の状態
34920 '0kボタンから３に移動
34930 '上に行く 処理
34940 case -1:
34950 No=3:sp_on 12,1:sp_on 14,0
34960 pause 200:goto Jyoushi_Input_Born_Day2:
34970 '選択肢:3
34980 '3ボタンから 6に移動
34990 case 3:
35000 No=6:sp_on 12,0:sp_on 11,1
35010 pause 200:goto Jyoushi_Input_Born_Day2:
35020 '6ボタンから ９に移動
35030 case 6:
35040 No=9:sp_on 10,1:sp_on 11,0
35050 pause 200:goto Jyoushi_Input_Born_Day2:
35060 '6ボタンから ９に移動　ここまで
35070 '9で上を押して何もしない
35080 case 9:
35090 '何もしない
35100 No=9
35110 pause 200:goto Jyoushi_Input_Born_Day2:
35120 '9で上を押しても何もしない　ここまで
35130 '上　 0ボタンから2ボタン
35140 'sp_on 6,1:1
35150 'sp_on 8,1:5
35160 'sp_on 7,1:7
35170 case 0:
35180 No=2:sp_on 13,0:sp_on 9,1:
35190 pause 200:goto Jyoushi_Input_Born_Day2:
35200 '上  0ボタンから2ボタン　ここまで
35210 '2から５になる 上
35220 case 2:
35230 No=5:sp_on 8,1:sp_on 9,0:
35240 pause 200:goto Jyoushi_Input_Born_Day2:
35250 case 5:
35260 No=8:sp_on 7,1:sp_on 8,0
35270 pause 200:goto Jyoushi_Input_Born_Day2:
35280 case 8:
35290 pause 200:goto Jyoushi_Input_Born_Day2:
35300 case 1:
35310 No=4:sp_on 5,1:sp_on 6,0
35320 pause 200:goto Jyoushi_Input_Born_Day2:
35330 case 4:
35340 No=7:sp_on 4,1:sp_on 5,0
35350 pause 200:goto Jyoushi_Input_Born_Day2:
35360 case 7:
35370 pause 200:goto Jyoushi_Input_Born_Day2:
35380 end select
35390 endif
35400 '左３　ここまで
35410 '下の矢印
35420 '中央 2
35430 if ((y=1) or (key$ = chr$(31))) then
35440 select case No
35450 '9から６に下げる
35460 case 9:
35470 No=6:sp_on 11,1:sp_on 10,0
35480 pause 200:goto Jyoushi_Input_Born_Day2:
35490 '6から３に下げる
35500 case 6:
35510 No=3:sp_on 12,1:sp_on 11,0
35520 pause 200:goto Jyoushi_Input_Born_Day2:
35530 '3から０ｋに変える
35540 case 3:
35550 No=-1:sp_on 14,1:sp_on 12,0
35560 pause 200:goto Jyoushi_Input_Born_Day2:
35570 'Okから下のボタンを押しても何もしない
35580 case -1:
35590 pause 200:goto Jyoushi_Input_Born_Day2:
35600 case 8:
35610 No=5:sp_on 8,1:sp_on 7,0
35620 pause 200:goto Jyoushi_Input_Born_Day2:
35630 case 5:
35640 No=2:sp_on 9,1:sp_on 8,0
35650 pause 200:goto Jyoushi_Input_Born_Day2:
35660 case 2:
35670 No=0:sp_on 13,1:sp_on 9,0
35680 pause 200:goto Jyoushi_Input_Born_Day2:
35690 case 0:
35700 pause 200:goto Jyoushi_Input_Born_Day2:
35710 case 7:
35720 No=4:sp_on 5,1:sp_on 4,0
35730 pause 200:goto Jyoushi_Input_Born_Day2:
35740 case 4:
35750 No=1:sp_on 6,1:sp_on 5,0
35760 pause 200:goto Jyoushi_Input_Born_Day2:
35770 case 1:
35780 pause 200:goto Jyoushi_Input_Born_Day2:
35790 end select
35800 endif
35810 '左へボタン 十字キー　左　or 　カーソル左
35820 if ((y2 = -1) or (key$ = chr$(29))) then
35830 select case No
35840 'Ok ボタン  Okから　左　０に行く
35850 case -1:
35860 No=0:sp_on 13,1:sp_on 14,0
35870 pause 200:goto Jyoushi_Input_Born_Day2:
35880 '0 ボタン  左　何もしない
35890 case 0:
35900 pause 200:goto Jyoushi_Input_Born_Day2:
35910 case 3:
35920 No=2:sp_on 9,1:sp_on 12,0:
35930 pause 200:goto Jyoushi_Input_Born_Day2:
35940 case 2:
35950 No=1:sp_on 6,1:sp_on 9,0:
35960 pause 200:goto Jyoushi_Input_Born_Day2:
35970 case 1:
35980 pause 200:goto Jyoushi_Input_Born_Day2:
35990 case 6:
36000 No=5:sp_on 8,1:sp_on 11,0
36010 pause 200:goto Jyoushi_Input_Born_Day2:
36020 case 5:
36030 No=4:sp_on 5,1:sp_on 8,0
36040 pause 200:goto Jyoushi_Input_Born_Day2:
36050 case 4:
36060 pause 200:goto Jyoushi_Input_Born_Day2:
36070 case 9:
36080 No=8:sp_on 7,1:sp_on 10,0
36090 pause 200:goto Jyoushi_Input_Born_Day2:
36100 case 8:
36110 No=7:sp_on 4,1:sp_on 7,0
36120 pause 200:goto Jyoushi_Input_Born_Day2:
36130 case 7:
36140 pause 200:goto Jyoushi_Input_Born_Day2:
36150 end select
36160 endif
36170 '右  十字キー　右　or カーソル　右
36180 if ((y2 = 1) or (key$ = chr$(28))) then
36190 select case No
36200 '0ボタンからokボタン右に移動
36210 case 0:
36220 No=-1:sp_on 14,1:sp_on 13,0
36230 pause 200:goto Jyoushi_Input_Born_Day2:
36240 '0ボタンからokボタン 右に移動　ここまで
36250 'OKボタンで右を押して何もしない
36260 case -1:
36270 pause 200:goto Jyoushi_Input_Born_Day2:
36280 case 1:
36290 No=2:sp_on 9,1:sp_on 6,0
36300 pause 200:goto Jyoushi_Input_Born_Day2:
36310 case 2:
36320 No=3:sp_on 12,1:sp_on 9,0
36330 pause 200:goto Jyoushi_Input_Born_Day2:
36340 case 3:
36350 pause 200:goto Jyoushi_Input_Born_Day2:
36360 case 4:
36370 No=5:sp_on 8,1:sp_on 5,0
36380 pause 200:goto Jyoushi_Input_Born_Day2:
36390 case 5:
36400 No=6:sp_on 11,1:sp_on 8,0
36410 pause 200:goto Jyoushi_Input_Born_Day2:
36420 case 7:
36430 No=8:sp_on 7,1:sp_on 4,0
36440 pause 200:goto Jyoushi_Input_Born_Day2:
36450 case 8:
36460 No=9:sp_on 10,1:sp_on 7,0
36470 pause 200:goto Jyoushi_Input_Born_Day2:
36480 case 9:
36490 pause 200:goto Jyoushi_Input_Born_Day2:
36500 case 6:
36510 pause 200:goto Jyoushi_Input_Born_Day2:
36520 end select
36530 'Okから右ボタンを押して何もしない ここまで
36540 endif
36550 '十字キー　ここまで
36560 '右の丸ボタンを押したとき
36570 if ((bg = 2) or (key$ = chr$(13))) then
36580 'count :決定ボタンを押した回数
36590 select case (count)
36600 '1桁目入力
36610 case 0:
36620 count = 1:
36630 if (No = -1) then
36640 '1桁目　OKでは何もしない
36650 No=c
36660 'goto Jyoushi_Input_Born_Day2:
36670 else
36680 'ok以外のボタンを押したとき
36690 buf_day = No:buf_Day$ = str$(No)
36700 buf_Jyoushi_Born_Day(2)=buf_day
36710 c=No
36720 locate 1,3
36730 print "                                      "
36740 color RGB(255,255,255)
36750 locate 1,3
36760 print "上司の生まれた日(1日~31日):" + buf_Day$
36770 endif
36780 'check2:
36790 'if (buf_day >= 1 and buf_day <= 9) then
36800 'sp_on 14,0
36810 'goto complate_jyoushi:
36820 'else
36830 'sp_on 14,0
36840 goto Jyoushi_Input_Born_Day2:
36850 'end
36860 'endif
36870 case 1:
36880 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
36890 count = 2:
36900 'locate 2,3
36910 'color RGB(255,255,255)
36920 'print "生まれた日(1日~31日):";buf_Day$
36930 'Okボタンを押したときの処理
36940 '入力値　10未満のとき
36950 'buf_day = c * 10 + No
36960 if (No = -1) then
36970 c=buf_day:No=0
36980 'buf_day = c
36990 buf_Day$ = str$(buf_day)
37000 '10以下のとき
37010 'if (buf_day < 10) then
37020 sp_on 14,0
37030 goto complate_jyoushi:
37040 'end
37050 'endif
37060 else
37070 'c=No
37080 buf_day = c * 10 + No
37090 buf_Day$ = str$(buf_day)
37100 'buf_day = c:buf_Day$=str$(buf_day)
37110 buf_Jyoushi_Born_Day(2)=buf_day
37120 locate 1,3
37130 print "                                           "
37140 locate 1,3
37150 color Rgb(255,255,255)
37160 print "上司の生まれた日(1日~31日):" + buf_Day$
37170 goto Jyoushi_Input_Born_Day2:
37180 'goto
37190 endif
37200 'endif
37210 '生まれた日　2桁目の数字　or 1桁の数字 + ok
37220 case 2:
37230 'buf_day = c * 10 + No
37240 'buf_Jyoushi_Born_Day(2)=buf_day
37250 'locate 1,3
37260 'print "                                      "
37270 'locate 1,3
37280 'locate 2,3
37290 'print "生まれた日(1日〜31日):";buf_Day
37300 'No=-1:ok ボタンを押したとき
37310 if (No = -1) then
37320 'if ((buf_day > 0) and (buf_day < 32)) then
37330 No=0
37340 sp_on 14,0
37350 goto complate_jyoushi:
37360 'end
37370 else
37380 goto Jyoushi_Input_Born_Day2:
37390 'endif
37400 'Okボタン以外を押したとき
37410 'else
37420 'c=val(buf_Day$)
37430 'buf_day = c * 10 + No
37440 'buf_Jyoushi_Born_Day(2) = buf_day
37450 'buf_Day$ = str$(buf_day)
37460 'locate 1,3
37470 'print "上司の生まれた日(1日~31日):";buf_Day$
37480 'goto Jyoushi_Input_Born_Day2:
37490 endif
37500 'case 3:
37510 'count=4
37520 'c=val(buf_day$)
37530 'buf_day=c*10+No
37540 'buf_day$=str$(buf_day)
37550 'locate 2,3
37560 'print "生まれた日を入れてください:";buf_day$
37570 'year=val(buf_year$)
37580 'if (No = -1) then
37590 'goto Jyoushi_Input_Born_Day:
37600 'sp_on 14,0:
37610 'goto complate_jyoushi:
37620 'else
37630 'goto Jyoushi_Input_Born_Month2:
37640 'endif
37650 'case 4:
37660 'bufyear=buf_year
37670 'if (No=-1) then
37680 'buf_day = val(buf_day$)
37690 'bufday = buf_day
37700 'sp_on 14,0
37710 'goto Jyoushi_Input_Born_Day2:
37720 'else
37730 'goto Jyoushi_Input_Born_Day2:
37740 'endif
37750 end select
37760 endif
37770 if (bg2=2) then
37780 select case count2
37790 case 0:
37800 if (No=-1) then
37810 buf_day=0:buf_Day$="**":No=0
37820 if (buf_day >= 1 and buf_day <= 31) then
37830 count=0
37840 buf_day=0:buf_Day$ = "**"
37850 goto rewrite_day3:
37860 else
37870 buf_day=0:buf_Day$ = "**"
37880 ui_msg"値が範囲外です"
37890 endif
37900 goto rewrite_day3:
37910 else
37920 goto rewrite_day3:
37930 endif
37940 rewrite_day3:
37950 locate 2,3
37960 color rgb(255,255,255)
37970 print "                                      "
37980 locate 2,3
37990 print "生まれた日(1日~31日):" + buf_Day$
38000 goto Jyoushi_Input_Born_Day2:
38010 end select
38020 endif
38030 '--------------------------------------------'
38040 'locate 2,0:color rgb(255,0,0)
38050 'print "上司の生まれた年代を入力"
38060 'color rgb(255,255,255)
38070 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
38080 'locate 2,4:Input "上司の生まれた年:",born_year
38090 '誕生日データーを配列に代入
38100 'buf_Jyoushi_Born_Year:上司の生まれた年代
38110 'buf_Jyoushi_Born_Day(0) = born_year
38120 'born_year = 0
38130 '---------------------------------------------'
38140 'goto Jyoushi_born_month:
38150 '1-2.生まれた月を入力
38160 'Jyoushi_born_month:
38170 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38180 'init "kb:4"
38190 'locate 2,1:
38200 'color rgb(255,0,0)
38210 'print "上司の生まれた月入力"
38220 'color rgb(255,255,255)
38230 'locate 2,4:print "生まれた月を入力してください"
38240 'locate 2,5
38250 'Input "上司の生まれ月:",born_month
38260 'buf_Jyoushi_Born_Day(1) = born_month
38270 'born_month = 0
38280 'goto Jyoushi_born_day:
38290 'buf_Jyoushi_Born_day
38300 '1-3.生まれた日を入力
38310 'Jyoushi_born_day:
38320 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38330 'init "kb:4"
38340 'locate 2,1:color rgb(255,0,0)
38350 'print "上司の生まれた日　入力"
38360 'locate 2,4:color rgb(255,255,255)
38370 'print "生まれた日を入力してください"
38380 'locate 2,5
38390 'Input "上司の生まれた日:",born_day
38400 'buf_Jyoushi_Born_Day(2) = born_day
38410 'born_day = 0
38420 'goto buka_born_year:
38430 '2.部下の誕生日入力
38440 '2-1.生まれた年を入力
38450 'buka_born_year:
38460 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38470 'init "kb:2"
38480 'locate 1,1:color rgb(255,0,0)
38490 'print "部下の生まれた年代入力"
38500 'locate 0,4:color rgb(255,255,255)
38510 'print "部下の生まれた年（西暦4桁）を入れてください"
38520 'locate 0,5
38530 'Input "部下の生まれた年(西暦4桁):",born_year
38540 'buf_Buka_Born_Day(0) = born_year
38550 'born_year = 0
38560 '2-2.生まれた月を入力
38570 'buka_born_month:
38580 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38590 'init "kb:2"
38600 'locate 2,1:color rgb(255,0,0)
38610 'print "部下の生まれた月 入力"
38620 'locate 2,4:color rgb(255,255,255)
38630 'print "部下の生まれた月を入力してください"
38640 'locate 2,5:Input "部下の生まれた月:",born_month
38650 'buf_Buka_Born_Day(1) = born_month
38660 '2-3.生まれた日を入力
38670 'buka_born_day:
38680 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38690 'init "kb:2"
38700 'locate 2,1:color rgb(255,0,0)
38710 'print "生まれた日入力"
38720 'color rgb(255,255,255)
38730 'locate 2,4:print "生まれた日を入力してください"
38740 'locate 2,5:Input "部下の生まれた日:",born_day
38750 'buf_Buka_Born_Day(2) = born_day
38760 'born_day=0:goto Result_Business_Aisyou:
38770 '--------------------------------------------'
38780 complate_jyoushi:
38790 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
38800 buf_Jyoushi = Kabara_Num(a,b,c)
38810 a_1=buf_Jyoushi
38820 goto Buka_Input_Seireki:
38830 '--------------------------------------------'
38840 '部下'
38850 '1.部下の生まれた年代'
38860 Buka_Input_Seireki:
38870 cls 3:play "":count=0:count2=0
38880 init"kb:4"
38890 'No=-1:Okのとき
38900 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
38910 for i=0 to 3
38920 buf_Buka_Born_Day(i)=0
38930 next i
38940 gload Gazo$ + "Screen1.png",0,0,0
38950 gload Gazo$ + "downscreen.png",0,0,800
38960 'Init"kb:2"
38970 '音声ファイル再生 2023.06.07
38980 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38990 font 48
39000 locate 0,1
39010 '文字色：黒　 color rgb(0,0,0)
39020 color rgb(255,255,255)
39030 print "部下の生まれた年代を入れて下さい" + chr$(13)
39040 color rgb(255,255,255)
39050 locate 1,3
39060 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
39070 color rgb(255,255,255)
39080 'locate 4,6:print ":7"
39090 'locate 9,6:print ":8"
39100 'locate 12,6:print ":9"
39110 locate 4,6
39120 print ":7  :8  :9" + chr$(13)
39130 color rgb(255,255,255)
39140 locate 4,8
39150 print ":4  :5  :6" + chr$(13)
39160 color rgb(255,255,255)
39170 locate 4,10
39180 print ":1  :2  :3" + chr$(13)
39190 locate 4,12
39200 print "    :0"
39210 locate 12,12
39220 color rgb(0,0,255)
39230 print ":Ok"
39240 sp_on 4,0: sp_on 5,0:sp_on 6,0
39250 sp_on 7,0:sp_on 8,0:sp_on 9,0
39260 sp_on 10,0:sp_on 11,0:sp_on 12,0
39270 sp_on 13,0:sp_on 14,1
39280 Buka_Input_Seireki2:
39290 key$="":bg=0:y=0:y2=0:bg2=0:
39300 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
39310 key$ = inkey$
39320 bg = strig(1)
39330 y = stick(1)
39340 y2 = stick(0)
39350 bg2=strig(0)
39360 pause 5
39370 wend
39380 '十字キー　ここから
39390 '上の矢印　または、十字キー上
39400 if ((y = -1) or (key$ = chr$(30))) then
39410 select case No
39420 'No=-1:okのとき:初期の状態
39430 '0kボタンから３に移動
39440 '上に行く 処理
39450 case -1:
39460 No=3:sp_on 12,1:sp_on 14,0
39470 pause 200:goto Buka_Input_Seireki2:
39480 '選択肢:3
39490 '3ボタンから 6に移動
39500 case 3:
39510 No=6:sp_on 12,0:sp_on 11,1
39520 pause 200:goto Buka_Input_Seireki2:
39530 '6ボタンから ９に移動
39540 case 6:
39550 No=9:sp_on 10,1:sp_on 11,0
39560 pause 200:goto Buka_Input_Seireki2:
39570 '6ボタンから ９に移動　ここまで
39580 '9で上を押して何もしない
39590 case 9:
39600 '何もしない
39610 No=9
39620 pause 200:goto Buka_Input_Seireki2:
39630 '9で上を押しても何もしない　ここまで
39640 '上　 0ボタンから2ボタン
39650 'sp_on 6,1:1
39660 'sp_on 8,1:5
39670 'sp_on 7,1:7
39680 case 0:
39690 No=2:sp_on 13,0:sp_on 9,1:
39700 pause 200:goto Buka_Input_Seireki2:
39710 '上  0ボタンから2ボタン　ここまで
39720 '2から５になる 上
39730 case 2:
39740 No=5:sp_on 8,1:sp_on 9,0:
39750 pause 200:goto Buka_Input_Seireki2:
39760 case 5:
39770 No=8:sp_on 7,1:sp_on 8,0
39780 pause 200:goto Buka_Input_Seireki2:
39790 case 8:
39800 pause 200:goto Buka_Input_Seireki2:
39810 case 1:
39820 No=4:sp_on 5,1:sp_on 6,0
39830 pause 200:goto Buka_Input_Seireki2:
39840 case 4:
39850 No=7:sp_on 4,1:sp_on 5,0
39860 pause 200:goto Buka_Input_Seireki2:
39870 case 7:
39880 pause 200:goto Buka_Input_Seireki2:
39890 end select
39900 endif
39910 '左３　ここまで
39920 '下の矢印
39930 '中央 2
39940 if ((y=1) or (key$ = chr$(31))) then
39950 select case No
39960 '9から６に下げる
39970 case 9:
39980 No=6:sp_on 11,1:sp_on 10,0
39990 pause 200:goto Buka_Input_Seireki2:
40000 '6から３に下げる
40010 case 6:
40020 No=3:sp_on 12,1:sp_on 11,0
40030 pause 200:goto Buka_Input_Seireki2:
40040 '3から０ｋに変える
40050 case 3:
40060 No=-1:sp_on 14,1:sp_on 12,0
40070 pause 200:goto Buka_Input_Seireki2:
40080 'Okから下のボタンを押しても何もしない
40090 case -1:
40100 pause 200:goto Buka_Input_Seireki2:
40110 case 8:
40120 No=5:sp_on 8,1:sp_on 7,0
40130 pause 200:goto Buka_Input_Seireki2:
40140 case 5:
40150 No=2:sp_on 9,1:sp_on 8,0
40160 pause 200:goto Buka_Input_Seireki2:
40170 case 2:
40180 No=0:sp_on 13,1:sp_on 9,0
40190 pause 200:goto Buka_Input_Seireki2:
40200 case 0:
40210 pause 200:goto Buka_Input_Seireki2:
40220 case 7:
40230 No=4:sp_on 5,1:sp_on 4,0
40240 pause 200:goto Buka_Input_Seireki2:
40250 case 4:
40260 No=1:sp_on 6,1:sp_on 5,0
40270 pause 200:goto Buka_Input_Seireki2:
40280 case 1:
40290 pause 200:goto Buka_Input_Seireki2:
40300 end select
40310 endif
40320 '左へボタン 十字キー　左　or 　カーソル左
40330 if ((y2 = -1) or (key$ = chr$(29))) then
40340 select case No
40350 'Ok ボタン  Okから　左　０に行く
40360 case -1:
40370 No=0:sp_on 13,1:sp_on 14,0
40380 pause 200:goto Buka_Input_Seireki2:
40390 '0 ボタン  左　何もしない
40400 case 0:
40410 pause 200:goto Buka_Input_Seireki2:
40420 case 3:
40430 No=2:sp_on 9,1:sp_on 12,0:
40440 pause 200:goto Buka_Input_Seireki2:
40450 case 2:
40460 No=1:sp_on 6,1:sp_on 9,0:
40470 pause 200:goto Buka_Input_Seireki2:
40480 case 1:
40490 pause 200:goto Buka_Input_Seireki2:
40500 case 6:
40510 No=5:sp_on 8,1:sp_on 11,0
40520 pause 200:goto Buka_Input_Seireki2:
40530 case 5:
40540 No=4:sp_on 5,1:sp_on 8,0
40550 pause 200:goto Buka_Input_Seireki2:
40560 case 4:
40570 pause 200:goto Buka_Input_Seireki2:
40580 case 9:
40590 No=8:sp_on 7,1:sp_on 10,0
40600 pause 200:goto Buka_Input_Seireki2:
40610 case 8:
40620 No=7:sp_on 4,1:sp_on 7,0
40630 pause 200:goto Buka_Input_Seireki2:
40640 case 7:
40650 pause 200:goto Buka_Input_Seireki2:
40660 end select
40670 endif
40680 '右  十字キー　右　or カーソル　右
40690 if ((y2 = 1) or (key$ = chr$(28))) then
40700 select case No
40710 '0ボタンからokボタン右に移動
40720 case 0:
40730 No=-1:sp_on 14,1:sp_on 13,0
40740 pause 200:goto Buka_Input_Seireki2:
40750 '0ボタンからokボタン 右に移動　ここまで
40760 'OKボタンで右を押して何もしない
40770 case -1:
40780 pause 200:goto Buka_Input_Seireki2:
40790 case 1:
40800 No=2:sp_on 9,1:sp_on 6,0
40810 pause 200:goto Buka_Input_Seireki2:
40820 case 2:
40830 No=3:sp_on 12,1:sp_on 9,0
40840 pause 200:goto Buka_Input_Seireki2:
40850 case 3:
40860 pause 200:goto Buka_Input_Seireki2:
40870 case 4:
40880 No=5:sp_on 8,1:sp_on 5,0
40890 pause 200:goto Buka_Input_Seireki2:
40900 case 5:
40910 No=6:sp_on 11,1:sp_on 8,0
40920 pause 200:goto Buka_Input_Seireki2:
40930 case 7:
40940 No=8:sp_on 7,1:sp_on 4,0
40950 pause 200:goto Buka_Input_Seireki2:
40960 case 8:
40970 No=9:sp_on 10,1:sp_on 7,0
40980 pause 200:goto Buka_Input_Seireki2:
40990 case 9:
41000 pause 200:goto Buka_Input_Seireki2:
41010 case 6:
41020 pause 200:goto Buka_Input_Seireki2:
41030 end select
41040 'Okから右ボタンを押して何もしない ここまで
41050 endif
41060 '十字キー　ここまで
41070 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
41080 'ここからコメント
41090 '右の丸ボタン決定を押した数:count
41100 'if ((bg=2) or (key$=chr$(13))) then
41110 'select case count
41120 'case 0:
41130 'count=1
41140 'if (No = -1) then
41150 'count = 0
41160 'Okボタンを押したとき
41170 '
41180 'goto Buka_Input_Seireki2:
41190 'else
41200 'Okボタン以外が押されたとき
41210 'if (No >= 1 and No <= 2) then
41220 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
41230 'buf_buka_year = No
41240 'buf_Buka_Born_Day(0) = bufyear
41250 'locate 2,3
41260 'color rgb(255,255,255)
41270 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41280 'goto Buka_Input_Seireki2:
41290 'else
41300 'count=0
41310 'ui_msg"数字が範囲外になります。"
41320 'buf_buka_year$ ="":buf_buka_year=0
41330 'goto Buka_Input_Seireki2:
41340 'endif
41350 'endif
41360 'case 1:
41370 'count = 2
41380 'if (No = -1) then
41390 'count = 1
41400 'goto Buka_Input_Seireki2:
41410 'else
41420 'b = val(buf_buka_year$)
41430 'buf_buka_year = b * 10 + No
41440 'buf_buka_year$ = str$(buf_buka_year)
41450 'buf_Buka_Born_Day(0) = bufyear
41460 'locate 1,3
41470 'color rgb(255,255,255)
41480 'print "                                                                "
41490 'locate 1,3
41500 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41510 'if (No = -1) then
41520 'count=1
41530 'goto Buka_Input_Seireki2:
41540 'endif
41550 'case 2:
41560 'count = 3
41570 'if (No = -1) then
41580 'count = 2
41590 'buf_Buka_Born_Day(0)=bufyear
41600 'goto Buka_Input_Seireki2:
41610 'else
41620 'b = val(buf_buka_year$)
41630 'buf_buka_year = b*10 + No
41640 'buf_buka_year$ = str$(buf_buka_year)
41650 'locate 1,3
41660 'color rgb(255,255,255)
41670 'print "                                        "
41680 'locate 1,3
41690 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41700 'goto Buka_Input_Seireki2:
41710 'endif
41720 'case 3:
41730 'count=4
41740 'if (No = -1) then
41750 'count=3
41760 'goto Buka_Input_Seireki2:
41770 'else
41780 'b = buf_buka_year
41790 'buf_buka_year = b * 10 + No
41800 'buf_buka_year$=str$(buf_buka_year)
41810 'locate 1,3
41820 'color RGB(255,255,255)
41830 'print "                                      "
41840 'locate 1,3
41850 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41860 'buf_year=val(buf_year$)
41870 'year=val(buf_year$)
41880 'if (No=-1) then
41890 'goto Input_Born_Month:
41900 'else
41910 'goto Buka_Input_Seireki2:
41920 'endif
41930 'case 4:
41940 'bufyear=buf_year
41950 'if (No=-1) then
41960 'buf_year = val(buf_year$)
41970 'bufyear = buf_year
41980 'sp_on 14,0
41990 'goto Buka_Input_Born_Month:
42000 'else
42010 'goto Buka_Input_Seireki2:
42020 'endif
42030 'end select
42040 'endif
42050 'if (bg2 = 2) then
42060 'select case count2
42070 'case 0:
42080 'if (No = -1) then
42090 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
42100 'count=0
42110 'locate 1,3
42120 'color rgb(255,255,255)
42130 'print "                                      "
42140 'locate 1,3
42150 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
42160 'goto Buka_Input_Seireki2:
42170 'else
42180 '(buf_year=0) then
42190 'buf_buka_year=0:buf_buka_year$="****"
42200 'goto Buka_Input_Seireki2:
42210 'endif
42220 'endif
42230 'end select
42240 'endif
42250 'end
42260 'ここまでコメント
42270 '================================================================
42280 if ((bg=2) or (key$=chr$(13))) then
42290 select case count
42300 case 0:
42310 count = 1
42320 if (No=-1) then
42330 count = 0
42340 buf_Buka_Born_Day(0) = No
42350 'Okボタンを押したとき
42360 goto Buka_Input_Seireki2:
42370 else
42380 'Okボタン以外が押されたとき
42390 if (No>=1 and No<=2) then
42400 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
42410 buf_buka_year = No
42420 buf_Buka_Born_Day(0) = No
42430 locate 1,3
42440 color rgb(255,255,255)
42450 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42460 goto Buka_Input_Seireki2:
42470 else
42480 count=0
42490 ui_msg"数字が範囲外になります。"
42500 buf_buka_year$="":buf_buka_year=0
42510 goto Buka_Input_Seireki2:
42520 endif
42530 endif
42540 case 1:
42550 count = 2
42560 if (No = -1) then
42570 count = 1
42580 goto Buka_Input_Seireki2:
42590 else
42600 'b = val(buf_buka_year$)
42610 buf_buka_year = a * 10 + No
42620 b=buf_buka_year
42630 buf_buka_year$ = str$(buf_buka_year)+"**"
42640 buf_Buka_Born_Day(0)=buf_buka_year
42650 locate 1,3
42660 color rgb(255,255,255)
42670 print "                                                                "
42680 locate 1,3
42690 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
42700 'if (No = -1) then
42710 'count=1
42720 goto Buka_Input_Seireki2:
42730 endif
42740 case 2:
42750 count=3
42760 if (No=-1) then
42770 count =2:No=0
42780 goto Buka_Input_Seireki2:
42790 else
42800 'b = val(buf_buka_year$)
42810 buf_buka_year = b * 10 + No
42820 c = buf_buka_year
42830 buf_buka_year$ = str$(buf_buka_year) + "*"
42840 buf_Buka_Born_Day(0) = buf_buka_year
42850 locate 1,3
42860 color rgb(255,255,255)
42870 print "                                        "
42880 locate 1,3
42890 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42900 goto Buka_Input_Seireki2:
42910 endif
42920 case 3:
42930 count=4
42940 if (No = -1) then
42950 'count=3:No=0
42960 goto Buka_Input_Seireki2:
42970 else
42980 'b = val(buf_buka_year$)
42990 buf_buka_year=c * 10 + No
43000 buf_buka_year$=str$(buf_buka_year)
43010 buf_Buka_Born_Day(0)=buf_buka_year
43020 locate 1,3
43030 color RGB(255,255,255)
43040 print "                                      "
43050 locate 1,3
43060 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
43070 buf_buka_year=val(buf_buka_year$)
43080 'year=val(buf_year$)
43090 'if (No=-1) then
43100 'goto Input_Born_Month:
43110 'else
43120 goto Buka_Input_Seireki2:
43130 endif
43140 case 4:
43150 'bufyear=buf_year
43160 if (No = -1) then
43170 buf_buka_year = val(buf_buka_year$)
43180 buf_Buka_Born_Day(0)=buf_buka_year
43190 sp_on 14,0
43200 goto Buka_Input_Born_Month:
43210 else
43220 goto Buka_Input_Seireki2:
43230 endif
43240 end select
43250 endif
43260 '================================================================
43270 'ここにコピーする。
43280 '================================================================
43290 'Input"部下の生れた年代(4桁,〜2025年):",year
43300 'if year > 2025 then goto Jyoushi_Input_Seireki:
43310 'if year = 123 then cls 3:cls 4:goto Main_Screen:
43320 '"4桁目"
43330 'bufyear4 = fix(year / 1000)
43340 '"3桁目"
43350 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
43360 '"2桁目"
43370 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
43380 '"1桁目"
43390 'bufyear1 = fix((year - ((bufyear4*
43400 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
43410 '1.部下の生まれた年代'
43420 '2.部下の生まれた月'
43430 Buka_Input_Born_Month:
43440 cls 3:play "":count=0:count2=0
43450 'No=-1:Okのとき
43460 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
43470 for i=0 to 1
43480 buf_month(i)=0
43490 next i
43500 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43510 gload Gazo$ + "Screen1.png",0,0,0
43520 gload Gazo$ + "downscreen.png",0,0,800
43530 'Init"kb:4"
43540 '音声ファイル再生 2023.06.07
43550 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
43560 font 48
43570 locate 0,1
43580 '文字色：黒　 color rgb(0,0,0)
43590 '文字色:白
43600 color rgb(255,255,255)
43610 print "部下の生まれた月を入れて下さい" + chr$(13)
43620 '文字色:白
43630 color rgb(255,255,255)
43640 locate 1,3
43650 '文字色:白
43660 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
43670 color rgb(255,255,255)
43680 'locate 4,6:print ":7"
43690 'locate 9,6:print ":8"
43700 'locate 12,6:print ":9"
43710 locate 4,6
43720 '文字色:赤
43730 print ":7  :8  :9" + chr$(13)
43740 color rgb(255,255,255)
43750 locate 4,8
43760 print ":4  :5  :6" + chr$(13)
43770 color rgb(255,255,255)
43780 locate 4,10
43790 print ":1  :2  :3" + chr$(13)
43800 locate 4,12
43810 print "    :0"
43820 locate 12,12
43830 color rgb(0,0,255)
43840 print ":Ok"
43850 sp_on 4,0: sp_on 5,0:sp_on 6,0
43860 sp_on 7,0:sp_on 8,0:sp_on 9,0
43870 sp_on 10,0:sp_on 11,0:sp_on 12,0
43880 sp_on 13,0:sp_on 14,1
43890 Buka_Input_Born_Month2:
43900 key$="":bg=0:y=0:y2=0:bg2=0
43910 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43920 key$ = inkey$
43930 bg = strig(1)
43940 y = stick(1)
43950 y2 = stick(0)
43960 bg2 = strig(0)
43970 pause 5
43980 wend
43990 '十字キー　ここから
44000 '上の矢印　または、十字キー上
44010 if ((y = -1) or (key$ = chr$(30))) then
44020 select case No
44030 'No=-1:okのとき:初期の状態
44040 '0kボタンから３に移動
44050 '上に行く 処理
44060 case -1:
44070 No=3:sp_on 12,1:sp_on 14,0
44080 pause 200:goto Buka_Input_Born_Month2:
44090 '選択肢:3
44100 '3ボタンから 6に移動
44110 case 3:
44120 No=6:sp_on 12,0:sp_on 11,1
44130 pause 200:goto Buka_Input_Born_Month2:
44140 '6ボタンから ９に移動
44150 case 6:
44160 No=9:sp_on 10,1:sp_on 11,0
44170 pause 200:goto Buka_Input_Born_Month2:
44180 '6ボタンから ９に移動　ここまで
44190 '9で上を押して何もしない
44200 case 9:
44210 '何もしない
44220 No=9
44230 pause 200:goto Buka_Input_Born_Month2:
44240 '9で上を押しても何もしない　ここまで
44250 '上　 0ボタンから2ボタン
44260 'sp_on 6,1:1
44270 'sp_on 8,1:5
44280 'sp_on 7,1:7
44290 case 0:
44300 No=2:sp_on 13,0:sp_on 9,1:
44310 pause 200:goto Buka_Input_Born_Month2:
44320 '上  0ボタンから2ボタン　ここまで
44330 '2から５になる 上
44340 case 2:
44350 No=5:sp_on 8,1:sp_on 9,0:
44360 pause 200:goto Buka_Input_Born_Month2:
44370 case 5:
44380 No=8:sp_on 7,1:sp_on 8,0
44390 pause 200:goto Buka_Input_Born_Month2:
44400 case 8:
44410 pause 200:goto Buka_Input_Born_Month2:
44420 case 1:
44430 No=4:sp_on 5,1:sp_on 6,0
44440 pause 200:goto Buka_Input_Born_Month2:
44450 case 4:
44460 No=7:sp_on 4,1:sp_on 5,0
44470 pause 200:goto Buka_Input_Born_Month2:
44480 case 7:
44490 pause 200:goto Buka_Input_Born_Month2:
44500 end select
44510 endif
44520 '左３　ここまで
44530 '下の矢印
44540 '中央 2
44550 if ((y=1) or (key$ = chr$(31))) then
44560 select case No
44570 '9から６に下げる
44580 case 9:
44590 No=6:sp_on 11,1:sp_on 10,0
44600 pause 200:goto Buka_Input_Born_Month2:
44610 '6から３に下げる
44620 case 6:
44630 No=3:sp_on 12,1:sp_on 11,0
44640 pause 200:goto Buka_Input_Born_Month2:
44650 '3から０ｋに変える
44660 case 3:
44670 No=-1:sp_on 14,1:sp_on 12,0
44680 pause 200:goto Buka_Input_Born_Month2:
44690 'Okから下のボタンを押しても何もしない
44700 case -1:
44710 pause 200:goto Buka_Input_Born_Month2:
44720 case 8:
44730 No=5:sp_on 8,1:sp_on 7,0
44740 pause 200:goto Buka_Input_Born_Month2:
44750 case 5:
44760 No=2:sp_on 9,1:sp_on 8,0
44770 pause 200:goto Buka_Input_Born_Month2:
44780 case 2:
44790 No=0:sp_on 13,1:sp_on 9,0
44800 pause 200:goto Buka_Input_Born_Month2:
44810 case 0:
44820 pause 200:goto Buka_Input_Born_Month2:
44830 case 7:
44840 No=4:sp_on 5,1:sp_on 4,0
44850 pause 200:goto Buka_Input_Born_Month2:
44860 case 4:
44870 No=1:sp_on 6,1:sp_on 5,0
44880 pause 200:goto Buka_Input_Born_Month2:
44890 case 1:
44900 pause 200:goto Buka_Input_Born_Month2:
44910 end select
44920 endif
44930 '左へボタン 十字キー　左　or 　カーソル左
44940 if ((y2 = -1) or (key$ = chr$(29))) then
44950 select case No
44960 'Ok ボタン  Okから　左　０に行く
44970 case -1:
44980 No=0:sp_on 13,1:sp_on 14,0
44990 pause 200:goto Buka_Input_Born_Month2:
45000 '0 ボタン  左　何もしない
45010 case 0:
45020 pause 200:goto Buka_Input_Born_Month2:
45030 case 3:
45040 No=2:sp_on 9,1:sp_on 12,0:
45050 pause 200:goto Buka_Input_Born_Month2:
45060 case 2:
45070 No=1:sp_on 6,1:sp_on 9,0:
45080 pause 200:goto Buka_Input_Born_Month2:
45090 case 1:
45100 pause 200:goto Buka_Input_Born_Month2:
45110 case 6:
45120 No=5:sp_on 8,1:sp_on 11,0
45130 pause 200:goto Buka_Input_Born_Month2:
45140 case 5:
45150 No=4:sp_on 5,1:sp_on 8,0
45160 pause 200:goto Buka_Input_Born_Month2:
45170 case 4:
45180 pause 200:goto Buka_Input_Born_Month2:
45190 case 9:
45200 No=8:sp_on 7,1:sp_on 10,0
45210 pause 200:goto Buka_Input_Born_Month2:
45220 case 8:
45230 No=7:sp_on 4,1:sp_on 7,0
45240 pause 200:goto Buka_Input_Born_Month2:
45250 case 7:
45260 pause 200:goto Buka_Input_Born_Month2:
45270 end select
45280 endif
45290 '右  十字キー　右　or カーソル　右
45300 if ((y2 = 1) or (key$ = chr$(28))) then
45310 select case No
45320 '0ボタンからokボタン右に移動
45330 case 0:
45340 No=-1:sp_on 14,1:sp_on 13,0
45350 pause 200:goto Buka_Input_Born_Month2:
45360 '0ボタンからokボタン 右に移動　ここまで
45370 'OKボタンで右を押して何もしない
45380 case -1:
45390 pause 200:goto Buka_Input_Born_Month2:
45400 case 1:
45410 No=2:sp_on 9,1:sp_on 6,0
45420 pause 200:goto Buka_Input_Born_Month2:
45430 case 2:
45440 No=3:sp_on 12,1:sp_on 9,0
45450 pause 200:goto Buka_Input_Born_Month2:
45460 case 3:
45470 pause 200:goto Buka_Input_Born_Month2:
45480 case 4:
45490 No=5:sp_on 8,1:sp_on 5,0
45500 pause 200:goto Buka_Input_Born_Month2:
45510 case 5:
45520 No=6:sp_on 11,1:sp_on 8,0
45530 pause 200:goto Buka_Input_Born_Month2:
45540 case 7:
45550 No=8:sp_on 7,1:sp_on 4,0
45560 pause 200:goto Buka_Input_Born_Month2:
45570 case 8:
45580 No=9:sp_on 10,1:sp_on 7,0
45590 pause 200:goto Buka_Input_Born_Month2:
45600 case 9:
45610 pause 200:goto Buka_Input_Born_Month2:
45620 case 6:
45630 pause 200:goto Buka_Input_Born_Month2:
45640 end select
45650 'Okから右ボタンを押して何もしない ここまで
45660 endif
45670 '十字キー　ここまで
45680 '右の丸ボタン　決定キー
45690 if ((bg=2) or (key$=chr$(13))) then
45700 select case count
45710 case 0:
45720 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
45730 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
45740 locate 1,3
45750 color RGB(255,255,255)
45760 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
45770 goto Buka_Input_Born_Month2:
45780 case 1:
45790 count = 2:buf_buka_month=a*10+No
45800 if (No = -1) then
45810 'count=0
45820 month=buf_buka_month
45830 buf_buka_month=val(buf_buka_Month$)
45840 month=buf_buka_month
45850 '生まれた日に飛ぶ
45860 goto Buka_Input_Born_Day:
45870 else
45880 buf_buka_month = a * 10 + No
45890 buf_buka_Month$ = str$(buf_buka_month)
45900 buf_Buka_Born_Day(1) = buf_buka_month
45910 locate 1,3
45920 color Rgb(255,255,255)
45930 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
45940 goto Buka_Input_Born_Month2:
45950 endif
45960 case 2:
45970 count=3
45980 'c= val(buf_Month$)
45990 'buf_month = c*10 + No
46000 'buf_Month$ = str$(buf_month)
46010 'locate 2,3
46020 'print "部下の生まれた月(1月～12月):";buf_Month$
46030 'goto Buka_Input_Born_Month2:
46040 'case 3:
46050 'count=4
46060 'b=val(buf_month$)
46070 'buf_month=c*10+No
46080 'buf_Month$=str$(buf_month)
46090 'locate 2,3
46100 'print "部下の生まれた月(1月～12月):";buf_Month$
46110 'buf_month=val(buf_Month$)
46120 'year=val(buf_year$)
46130 if (No=-1) then
46140 goto Buka_Input_Born_Day:
46150 else
46160 goto Input_Born_Month2:
46170 endif
46180 'case 4:
46190 'bufyear=buf_year
46200 'if (No=-1) then
46210 'buf_month = val(buf_Month$)
46220 'month = buf_month
46230 'sp_on 14,0
46240 'goto Input_Born_Day:
46250 'else
46260 'goto Input_Born_Month2:
46270 'endif
46280 end select
46290 endif
46300 '左の丸ボタン　キャンセル
46310 if (bg2=2) then
46320 select case count2
46330 case 0:
46340 if (No = -1) then
46350 buf_buka_month=0:buf_buka_Month$="**"
46360 count=0
46370 goto rewrite2:
46380 else
46390 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
46400 buf_month=0:buf_Month$="**"
46410 locate 2,3
46420 color rgb(255,255,255)
46430 print "                                       "
46440 goto rewrite2:
46450 if (No>12) then
46460 ui_msg"値が範囲外です。"
46470 goto rewrite2:
46480 endif
46490 endif
46500 endif
46510 rewrite2:
46520 locate 2,3
46530 color rgb(255,255,255)
46540 print "                                      "
46550 locate 2,3
46560 print "部下の生まれた月(1月~12月):";buf_buka_Month$
46570 goto Buka_Input_Born_Month2:
46580 end select
46590 'endif
46600 endif
46610 end
46620 '2.部下の生まれた月'
46630 '3.部下の生まれた日'
46640 '生れた日を入力
46650 Buka_Input_Born_Day:
46660 '生まれた日入力
46670 cls 3:play ""
46680 'No=-1:Okのとき
46690 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
46700 for i=0 to 1
46710 buf_day(i)=0
46720 next i
46730 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46740 gload Gazo$ + "Screen1.png",0,0,0
46750 gload Gazo$ + "downscreen.png",0,0,800
46760 'Init"kb:2"
46770 '音声ファイル再生 2023.06.07
46780 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
46790 font 48
46800 locate 0,1
46810 '文字色：黒　 color rgb(0,0,0)
46820 color rgb(255,255,255)
46830 print "部下の生まれた日を入れて下さい" + chr$(13)
46840 color rgb(255,255,255)
46850 locate 1,3
46860 print "部下の生まれた日(1日~31日):";buf_Day$
46870 color rgb(255,255,255)
46880 'locate 4,6:print ":7"
46890 'locate 9,6:print ":8"
46900 'locate 12,6:print ":9"
46910 locate 4,6
46920 print ":7  :8  :9" + chr$(13)
46930 color rgb(255,255,255)
46940 locate 4,8
46950 print ":4  :5  :6" + chr$(13)
46960 color rgb(255,255,255)
46970 locate 4,10
46980 print ":1  :2  :3" + chr$(13)
46990 locate 4,12
47000 print "    :0"
47010 locate 12,12
47020 color rgb(0,0,255)
47030 print ":Ok"
47040 sp_on 4,0: sp_on 5,0:sp_on 6,0
47050 sp_on 7,0:sp_on 8,0:sp_on 9,0
47060 sp_on 10,0:sp_on 11,0:sp_on 12,0
47070 sp_on 13,0:sp_on 14,1
47080 Buka_Input_Born_Day2:
47090 key$="":bg=0:y=0:y2=0:bg2=0
47100 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
47110 key$ = inkey$
47120 bg = strig(1)
47130 y = stick(1)
47140 y2 = stick(0)
47150 bg2 = strig(0)
47160 pause 5
47170 wend
47180 '十字キー　ここから
47190 '上の矢印　または、十字キー上
47200 if ((y = -1) or (key$ = chr$(30))) then
47210 select case No
47220 'No=-1:okのとき:初期の状態
47230 '0kボタンから３に移動
47240 '上に行く 処理
47250 case -1:
47260 No=3:sp_on 12,1:sp_on 14,0
47270 pause 200:goto Buka_Input_Born_Day2:
47280 '選択肢:3
47290 '3ボタンから 6に移動
47300 case 3:
47310 No=6:sp_on 12,0:sp_on 11,1
47320 pause 200:goto Buka_Input_Born_Day2:
47330 '6ボタンから ９に移動
47340 case 6:
47350 No=9:sp_on 10,1:sp_on 11,0
47360 pause 200:goto Buka_Input_Born_Day2:
47370 '6ボタンから ９に移動　ここまで
47380 '9で上を押して何もしない
47390 case 9:
47400 '何もしない
47410 No=9
47420 pause 200:goto Buka_Input_Born_Day2:
47430 '9で上を押しても何もしない　ここまで
47440 '上　 0ボタンから2ボタン
47450 'sp_on 6,1:1
47460 'sp_on 8,1:5
47470 'sp_on 7,1:7
47480 case 0:
47490 No=2:sp_on 13,0:sp_on 9,1:
47500 pause 200:goto Buka_Input_Born_Day2:
47510 '上  0ボタンから2ボタン　ここまで
47520 '2から５になる 上
47530 case 2:
47540 No=5:sp_on 8,1:sp_on 9,0:
47550 pause 200:goto Buka_Input_Born_Day2:
47560 case 5:
47570 No=8:sp_on 7,1:sp_on 8,0
47580 pause 200:goto Buka_Input_Born_Day2:
47590 case 8:
47600 pause 200:goto Buka_Input_Born_Day2:
47610 case 1:
47620 No=4:sp_on 5,1:sp_on 6,0
47630 pause 200:goto Buka_Input_Born_Day2:
47640 case 4:
47650 No=7:sp_on 4,1:sp_on 5,0
47660 pause 200:goto Buka_Input_Born_Day2:
47670 case 7:
47680 pause 200:goto Buka_Input_Born_Day2:
47690 end select
47700 endif
47710 '左３　ここまで
47720 '下の矢印
47730 '中央 2
47740 if ((y=1) or (key$ = chr$(31))) then
47750 select case No
47760 '9から６に下げる
47770 case 9:
47780 No=6:sp_on 11,1:sp_on 10,0
47790 pause 200:goto Buka_Input_Born_Day2:
47800 '6から３に下げる
47810 case 6:
47820 No=3:sp_on 12,1:sp_on 11,0
47830 pause 200:goto Buka_Input_Born_Day2:
47840 '3から０ｋに変える
47850 case 3:
47860 No=-1:sp_on 14,1:sp_on 12,0
47870 pause 200:goto Buka_Input_Born_Day2:
47880 'Okから下のボタンを押しても何もしない
47890 case -1:
47900 pause 200:goto Buka_Input_Born_Day2:
47910 case 8:
47920 No=5:sp_on 8,1:sp_on 7,0
47930 pause 200:goto Buka_Input_Born_Day2:
47940 case 5:
47950 No=2:sp_on 9,1:sp_on 8,0
47960 pause 200:goto Buka_Input_Born_Day2:
47970 case 2:
47980 No=0:sp_on 13,1:sp_on 9,0
47990 pause 200:goto Buka_Input_Born_Day2:
48000 case 0:
48010 pause 200:goto Buka_Input_Born_Day2:
48020 case 7:
48030 No=4:sp_on 5,1:sp_on 4,0
48040 pause 200:goto Buka_Input_Born_Day2:
48050 case 4:
48060 No=1:sp_on 6,1:sp_on 5,0
48070 pause 200:goto Buka_Input_Born_Day2:
48080 case 1:
48090 pause 200:goto Buka_Input_Born_Day2:
48100 end select
48110 endif
48120 '左へボタン 十字キー　左　or 　カーソル左
48130 if ((y2 = -1) or (key$ = chr$(29))) then
48140 select case No
48150 'Ok ボタン  Okから　左　０に行く
48160 case -1:
48170 No=0:sp_on 13,1:sp_on 14,0
48180 pause 200:goto Buka_Input_Born_Day2:
48190 '0 ボタン  左　何もしない
48200 case 0:
48210 pause 200:goto Buka_Input_Born_Day2:
48220 case 3:
48230 No=2:sp_on 9,1:sp_on 12,0:
48240 pause 200:goto Buka_Input_Born_Day2:
48250 case 2:
48260 No=1:sp_on 6,1:sp_on 9,0:
48270 pause 200:goto Buka_Input_Born_Day2:
48280 case 1:
48290 pause 200:goto Buka_Input_Born_Day2:
48300 case 6:
48310 No=5:sp_on 8,1:sp_on 11,0
48320 pause 200:goto Buka_Input_Born_Day2:
48330 case 5:
48340 No=4:sp_on 5,1:sp_on 8,0
48350 pause 200:goto Buka_Input_Born_Day2:
48360 case 4:
48370 pause 200:goto Buka_Input_Born_Day2:
48380 case 9:
48390 No=8:sp_on 7,1:sp_on 10,0
48400 pause 200:goto Buka_Input_Born_Day2:
48410 case 8:
48420 No=7:sp_on 4,1:sp_on 7,0
48430 pause 200:goto Buka_Input_Born_Day2:
48440 case 7:
48450 pause 200:goto Buka_Input_Born_Day2:
48460 end select
48470 endif
48480 '右  十字キー　右　or カーソル　右
48490 if ((y2 = 1) or (key$ = chr$(28))) then
48500 select case No
48510 '0ボタンからokボタン右に移動
48520 case 0:
48530 No=-1:sp_on 14,1:sp_on 13,0
48540 pause 200:goto Buka_Input_Born_Day2:
48550 '0ボタンからokボタン 右に移動　ここまで
48560 'OKボタンで右を押して何もしない
48570 case -1:
48580 pause 200:goto Buka_Input_Born_Day2:
48590 case 1:
48600 No=2:sp_on 9,1:sp_on 6,0
48610 pause 200:goto Buka_Input_Born_Day2:
48620 case 2:
48630 No=3:sp_on 12,1:sp_on 9,0
48640 pause 200:goto Buka_Input_Born_Day2:
48650 case 3:
48660 pause 200:goto Buka_Input_Born_Day2:
48670 case 4:
48680 No=5:sp_on 8,1:sp_on 5,0
48690 pause 200:goto Buka_Input_Born_Day2:
48700 case 5:
48710 No=6:sp_on 11,1:sp_on 8,0
48720 pause 200:goto Buka_Input_Born_Day2:
48730 case 7:
48740 No=8:sp_on 7,1:sp_on 4,0
48750 pause 200:goto Buka_Input_Born_Day2:
48760 case 8:
48770 No=9:sp_on 10,1:sp_on 7,0
48780 pause 200:goto Buka_Input_Born_Day2:
48790 case 9:
48800 pause 200:goto Buka_Input_Born_Day2:
48810 case 6:
48820 pause 200:goto Buka_Input_Born_Day2:
48830 end select
48840 'Okから右ボタンを押して何もしない ここまで
48850 endif
48860 '十字キー　ここまで
48870 '右の丸ボタンを押したとき
48880 if ((bg = 2) or (key$ = chr$(13))) then
48890 'count :決定ボタンを押した回数
48900 select case (count)
48910 '1桁目入力
48920 case 0:
48930 count = 1:
48940 if (No = -1) then
48950 '1桁目　OKでは何もしない
48960 'goto check:
48970 No=0
48980 else
48990 'ok以外のボタンを押したとき
49000 buf_buka_day = No:buf_buka_Day$ = str$(No)
49010 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
49020 buf_buka_Day$ = str$(No) + "*"
49030 endif
49040 a=No
49050 buf_Buka_Born_Day(2) = buf_buka_day
49060 locate 1,3
49070 print"                                      "
49080 color RGB(255,255,255)
49090 locate 1,3
49100 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
49110 endif
49120 check2:
49130 if (No >= 1 and No <= 9) then
49140 sp_on 14,0
49150 goto Buka_Input_Born_Day2:
49160 else
49170 sp_on 14,0
49180 goto Result_Business_Aisyou:
49190 end
49200 endif
49210 case 1:
49220 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
49230 count = 2:
49240 'locate 2,3
49250 'color RGB(255,255,255)
49260 'print "生まれた日(1日~31日):";buf_Day$
49270 'Okボタンを押したときの処理
49280 '入力値　10未満のとき
49290 'c = buf_day
49300 if (No = -1) then
49310 'c=buf_day
49320 ' buf_day = c
49330 'buf_Day$ = str$(buf_day)
49340 '10以下のとき
49350 No=0
49360 if (buf_day < 10) then
49370 sp_on 14,0
49380 goto Result_Business_Aisyou:
49390 end
49400 endif
49410 else
49420 sp_on 14,0
49430 'c=No
49440 buf_buka_day = a * 10 + No
49450 buf_buka_Day$ = str$(buf_buka_day)
49460 buf_Buka_Born_Day(2) = buf_buka_day
49470 locate 0,3
49480 color Rgb(255,255,255)
49490 print "                                       "
49500 locate 1,3
49510 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
49520 goto Buka_Input_Born_Day2:
49530 endif
49540 '生まれた日　2桁目の数字　or 1桁の数字 + ok
49550 case 2:
49560 count=0
49570 'c=val(buf_Day$)
49580 'buf_day=c*10+No
49590 'buf_Day$=str$(buf_day)
49600 'day=buf_day
49610 'locate 2,3
49620 'print "生まれた日(1日〜31日):";buf_Day$
49630 'No=-1:ok ボタンを押したとき
49640 if (No = -1) then No=0
49650 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
49660 sp_on 14,0
49670 goto Result_Business_Aisyou:
49680 else
49690 goto Buka_Input_Born_Day2:
49700 endif
49710 'Okボタン以外を押したとき
49720 else
49730 c=val(buf_buka_Day$)
49740 buf_buka_day = c * 10 + No
49750 buf_buka_Day$ = str$(buf_buka_day)
49760 locate 1,3
49770 print "                "
49780 locate 1,3
49790 print "生まれた日(1日~31日):"+buf_buka_Day$
49800 goto Buka_Input_Born_Day2:
49810 'endif
49820 case 3:
49830 count=4
49840 'c=val(buf_day$)
49850 'buf_day=c*10+No
49860 'buf_day$=str$(buf_day)
49870 'locate 2,3
49880 'print "生まれた日を入れてください:";buf_day$
49890 'year=val(buf_year$)
49900 if (No = -1) then
49910 'goto Buka_Input_Born_Day:
49920 sp_on 14,0:
49930 goto complate_jyoushi:
49940 else
49950 goto Buka_Input_Born_Month2:
49960 endif
49970 'case 4:
49980 'bufyear=buf_year
49990 'if (No=-1) then
50000 'buf_day = val(buf_day$)
50010 'bufday = buf_day
50020 'sp_on 14,0
50030 goto complate_jyoushi:
50040 'else
50050 'goto Buka_Input_Born_Day2:
50060 'endif
50070 end select
50080 endif
50090 if (bg2=2) then
50100 select case count2
50110 case 0:
50120 if (No=-1) then
50130 'buf_day=0:buf_Day$="**"
50140 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
50150 count=0
50160 buf_buka_day=0:buf_buka_Day$="**"
50170 goto rewrite_day3:
50180 else
50190 buf_buka_day=0:buf_buka_Day$="**"
50200 ui_msg"値が範囲外です"
50210 endif
50220 goto rewrite_day3:
50230 else
50240 goto rewrite_day3:
50250 endif
50260 rewrite_day3:
50270 locate 2,3
50280 color rgb(255,255,255)
50290 print "                                      "
50300 locate 1,3
50310 print "生まれた日(1日~31日):"+buf_buka_Day$
50320 goto Buka_Input_Born_Day2:
50330 end select
50340 endif
50350 '3.部下の生まれた日'
50360 '部下'
50370 '--------------------------------------------'
50380 'ビジネの相性　結果表示
50390 Result_Business_Aisyou:
50400 cls 3:init "kb:4"
50410 a=0:b=0:c=0:d=0:e=0:f=0
50420 bg=0:key$=""
50430 gload Gazo$ + "Screen1.png",0,0,0
50440 gload Gazo$ + "downscreen.png",0,0,800
50450 sp_on 14,0
50460 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
50470 buf_Buka = Kabara_Num(d,e,f)
50480 a_2 = buf_Buka
50490 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
50500 locate 0,1
50510 color rgb(255,0,0)
50520 print "●.相性診断結果１"
50530 locate 0,4:
50540 color rgb(255,255,255)
50550 print "1.上司の名前:";buffer_name$(0)
50560 locate 0,6
50570 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
50580 locate 0,8
50590 print "2.部下の名前:";buffer_name$(1)
50600 locate 0,10
50610 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
50620 locate 0,12
50630 print "3.上司と部下の相性:";Result_Aisyou$
50640 locate 1,15
50650 color rgb(0,0,0)
50660 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
50670 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
50680 bg = strig(1)
50690 key$ = inkey$
50700 bg2 = strig(0)
50710 pause 5
50720 wend
50730 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
50740 if (bg2 = 2) then
50750 cls 3:goto Business_Aishou_Input_1_parson:
50760 endif
50770 'ビジネスの相性占い　結果2　説明
50780 Result_Business_Aisyou2:
50790 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
50800 gload Gazo$ + "Screen1.png",0,0,0
50810 locate 0,1
50820 color rgb(255,0,0)
50830 print "●.相性の説明"
50840 color rgb(255,255,255)
50850 locate 0,4
50860 print "相性:";Result_Aisyou$
50870 locate 0,6:
50880 print "相性の説明:";buf$
50890 locate 0,15
50900 color rgb(0,0,0)
50910 print "右の丸ボタン:トップ,左のボタン:前の画面"
50920 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
50930 bg = strig(1)
50940 bg2 = strig(0)
50950 key$ = inkey$
50960 pause 5
50970 wend
50980 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50990 if ((bg2 = 2)) then goto Result_Business_Aisyou:
51000 'Birds Eye Menu List
51010 Result_Birtheye_List1:
51020 'dim List$(4) Topに定義
51030 List$(0) = "1.もう一度診断"
51040 List$(1) = "2.次へ行く"
51050 List$(2) = "3.データーを保存(未実装)"
51060 List$(3) = "4.トップ画面に戻る"
51070 Birds_List1 = ui_select("List$","Menu")
51080 select case (Birds_List1)
51090 case 0: '1.もう一度診断
51100       goto Input_name1_Birdseye:
51110 case 1: '2.次へ行く
51120       goto BirdsEye_Result2:
51130 case 2: '3.データーを保存
51140       goto Main_Screen:
51150       'ui_msg "データーを保存します"
51160       'goto BirdsEye_Save_data:
51170 case 3: '4.トップに戻る
51180       goto Main_Screen:
51190 end select
51200 'BirdsEye Data Save
51210 BirdsEye_Save_data:
51220 a$ = dir$("Save_data_Birdseye$",1)
51230 if a$ <> "" then
51240 Mkdir a$
51250 endif
51260 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
51270 input #1,name1$,nae2$,str$(buffer(0)),str$(buffer(1)),str$(buffer(2)),str$(buffer(3)),str$(buffer(4)),str$(buffer(5)),str$(buffer(6)),str$(buffer(7)),str$(buffer(8))
51280 close #1
51290 ui_msg "データーを保存しました"
51300 '自作関数 ここから
51310 func read_explain$(ba$)
51320 d$=""
51330 buf_String$=""
51340 if ba$="A" then
51350 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
51360 line input #1,a$
51370 a1$=mid$(a$,1,12)
51380 a2$=mid$(a$,13,17)
51390 a3$=mid$(a$,30,17)
51400 a4$=mid$(a$,47,18)
51410 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
51420 buf_String$ = a5$
51430 close #1
51440 endif
51450 if ba$="B"  then
51460 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
51470 line input #1,b$
51480 b1$=mid$(b$,1,15)
51490 b2$=mid$(b$,16,21)
51500 'b3$=mid$(b$,33,3)
51510 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
51520 buf_String$ = b4$
51530 close #1
51540 endif
51550 if ba$="C"  then
51560 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
51570 line input #1,c$
51580 c1$ = Mid$(c$,1,15)
51590 c2$ = Mid$(c$,16,33)
51600 c3$ = c1$ + chr$(13) + c2$
51610 buf_String$ = c3$
51620 close #1
51630 endif
51640 if ba$="D" then
51650 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
51660 line input #1,d$
51670 d1$=mid$(d$,1,15)
51680 d2$=mid$(d$,16,22)
51690 d3$=mid$(d$,38,7)
51700 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
51710 buf_String$ = d4$
51720 close #1
51730 endif
51740 if ba$="E"  then
51750 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
51760 line input #1,e$
51770 e1$=Mid$(e$,1,16)
51780 e2$=Mid$(e$,17,16)
51790 e3$=Mid$(e$,33,12)
51800 e4$=Mid$(e$,45,17)
51810 e5$=Mid$(e$,62,17)
51820 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
51830 buf_String$ = e6$
51840 close #1
51850 endif
51860 if ba$="F" then
51870 '改行を追加して表示を調整
51880 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
51890 line input #1,f$
51900 f1$=Mid$(f$,1,15)
51910 f2$=Mid$(f$,16,12)
51920 buf_String$ = f1$+chr$(13)+f2$
51930 close #1
51940 endif
51950 if ba$="G" then
51960 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
51970 line input #1,g$
51980 g1$ = mid$(g$,1,16)
51990 g2$ = mid$(g$,17,18)
52000 g3$ = mid$(g$,36,21)
52010 g4$ = mid$(g$,56,6)
52020 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
52030 buf_String$ = g5$
52040 close #1
52050 endif
52060 if ba$="H" then
52070 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
52080 line input #1,h$
52090 h1$=Mid$(h$,1,17)
52100 h2$=Mid$(h$,18,21)
52110 h3$=Mid$(h$,39,20)
52120 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
52130 buf_String$ = h$
52140 close #1
52150 endif
52160 if ba$ = "I" then
52170 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
52180 line input #1,i$
52190 i1$=Mid$(i$,1,10)
52200 i2$=Mid$(i$,11,13)
52210 i3$=Mid$(i$,25,16)
52220 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
52230 buf_String$ = i$
52240 close #1
52250 endif
52260 buffer$ = buf_String$
52270 endfunc buffer$
52280 'カバラ数（数秘番号を求める）
52290 func Kabara_Num(buffer_Year,month,day)
52300 '=============================
52310 'a1:4桁のうちの1桁目を求める
52320 '例 a1:1234の4が1桁目
52330 'a2:4桁のうちの2桁目を求める
52340 '例:a2:1234の3が2桁目
52350 'a3:4桁のうちの3桁目を求める
52360 '例 a3:1234の2が3桁目
52370 'a4:4桁のうちの4桁目を求める
52380 '例 a4:1234の1が4桁目
52390 '==============================
52400 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
52410 Year = buffer_Year
52420 '処理1　整数部分を取り出す。
52430 a4 = fix(Year / 1000)
52440 a3 = fix(Year / 100) - (a4 * 10)
52450 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
52460 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
52470 '処理　２　取り出した整数部分を足す。
52480 a_ = a1 + a2 + a3 + a4 +month + day
52490 'a1=0:a2=0:a3=0:a4=0
52500 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
52510 buffer = a_
52520 'else
52530 goto recomp2:
52540 'if (a_ = 10) then
52550 '  buffer = 1
52560 endif
52570 recomp2:
52580 a5=0:a6=0
52590 a5 = fix(a_ / 10)
52600 a6 = (a_) - (a5 * 10)
52610 a_ = a5 + a6
52620 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
52630 '結果に行く
52640 goto Res2:
52650 '  if ((a_>11) and (a_<99)) then
52660 else
52670 '再度計算
52680 goto recomp2:
52690 endif
52700 '     a1 = fix(a_ / 10)
52710 '     a2 = a_ - (a1 * 10)
52720 '     a_ = a1 + a2
52730 '     buffer = a_
52740 'endif
52750 'else
52760 '    bffer = a_
52770 'endif
52780 'endif
52790 'else
52800 'talk "プログラムを終了します。"
52810 'end
52820 'endif
52830 'kabara = 10
52840 Res2:
52850 kabara = a_
52860 endfunc kabara
52870 func Kabara_Aisyou$(buff1,buff2)
52880 a=0:b=0
52890 '範囲　1~9
52900 if ((buff1 > 0 and buff1 < 10)) then
52910 a = buff1
52920 else
52930 Select case buff1
52940 case 11:
52950 buff1=9:a=buff1
52960 case 22:
52970 buff1=10:a=buff1
52980 end select
52990 endif
53000 '範囲　１~９
53010 if ((buff2 > 0 and buff2 < 10)) then
53020 b = buff2
53030 else
53040 select case buff2
53050 case 11:
53060 buff2=9:b=buff2
53070 case 12:
53080 buff2=10:b=buff2
53090 end select
53100 endif
53110 Aisyou$ = Buffer_Business_Aisyou$(a,b)
53120 endfunc Aisyou$
53130 '=============================
53140 '自作関数 ここまで
53150 '1.数秘術　トップ画面
53160 '
53170 'Data_eraseを一番最後に持ってくる
53180 '=============================
53190 Data_erase:
53200 'メモリー削除
53210 erase buf_name1$
53220 erase buf_name2$
53230 erase buffer
53240 erase buf_chart$
53250 erase Buffer_Business_Aisyou$
53260 erase buffer_name$
53270 '上司の誕生日
53280 erase buf_Jyoushi_Born_Day
53290 '部下の誕生日
53300 erase buf_Buka_Born_Day
53310 erase buf_year
53320 erase buf_month
53330 erase buf_day
53340 'フォーカスライン
53350 erase Forcus1_buffer$
53360 erase Forcus2_buffer$
53370 erase Forcus3_buffer$
53380 'Birds eye List Data 配列
53390 erase List$
53400 buffer$ = ""
53410 buf$ = ""
53420 buf_year$ = ""
53430 buf_Jyoushi_Kabara_Num = 0
53440 buf_Buka_Kabara_Num = 0
53450 count = 0
53460 buf_Month$ = ""
53470 buf_Day$ = ""
53480 b=0
53490 c=0
53500 return
