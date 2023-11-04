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
420 Version$ = "Ver:1.2.2_20231105"
430 'Gazo file Folder
440 Gazo$ = "./data/Picture/"
450 'Voice files 2023
460 Voice$ = "./data/Voice/Voice/"
470 'BirtheyeChart Data:20230626
480 Birth_eye_chart$ = "./data/chart_data/"
490 'Data File
500 Data$ = "./data/data/"
510 'Business Aisyou 結果説明保存フォルダ
520 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
530 '変数定義 パート
540 b=0:c=0
550 dim buf_name1$(10),buf_name2$(10)
560 dim buffer(9),buf_chart$(26,2)
570 'ビジネスの相性　データー
580 dim Buffer_Business_Aisyou$(12,12)
590 '生れた年代
600 dim buf_year(4):buf_year$ = ""
610 dim buf_month(2)
620 dim buf_day(2)
630 'フォーカスライン　配列
640 dim Forcus1_buffer$(3)
650 dim Forcus2_buffer$(3)
660 dim Forcus3_buffer$(2)
670 '生れた月
680 buf_Month$ = ""
690 '生れた日
700 buf_Day$ = ""
710 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
720 dim buffer_name$(3)
730 '1-1.上司の誕生日(数値データー)
740 dim buf_Jyoushi_Born_Day(3)
750 '1-2.上司の数秘ナンバー(数値データー)
760 buf_Jyoushi_Kabara_Num = 0
770 '2-1.部下の誕生日(数値データー)
780 dim buf_Buka_Born_Day(3)
790 '2-2.部下の数秘ナンバー(数秘データー)
800 buf_Buka_Kabara_Num = 0
810 count=0
820 '部下の数秘ナンバー
830 'File 読み込み
840 '1.ビジネスの相性占い
850 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
860 for i=0 to 11
870 for j=0 to 11
880 input #1,a$
890 Buffer_Business_Aisyou$(j,i) = a$
900 next j
910 next i
920 close #1
930 '2.Birth Eye chart$
940 '2.バーズアイグリッドを読み込む
950 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
960 for j=0 to 25
970 for i=0 to 1
980 input #1,a$
990 buf_chart$(j,i) = a$
1000 next i
1010 next j
1020 close #1
1030 'File 読み込み　ここまで
1040 'Main画面
1050 screen 1,1,1,1
1060 Main_Screen:
1070 cls 3:
1080 No=0
1090 gload Gazo$ + "Selection.png",1,5,200
1100 gload Gazo$ + "Selection.png",1,5,300
1110 gload Gazo$ + "Selection.png",1,5,400
1120 gload Gazo$ + "Selection.png",1,5,500
1130 '4
1140 gload Gazo$ + "Selection.png",1,35,300
1150 '5
1160 gload Gazo$ + "Selection.png",1,35,400
1170 '6
1180 gload Gazo$ + "Selection.png",1,35,500
1190 '7
1200 gload Gazo$ + "Selection.png",1,70,300
1210 '8
1220 gload Gazo$ + "Selection.png",1,70,400
1230 '9
1240 gload Gazo$ + "Selection.png",1,70,500
1250 '10
1260 gload Gazo$ + "Selection.png",1,110,300
1270 '11
1280 gload Gazo$ + "Selection.png",1,110,400
1290 '12
1300 gload Gazo$ + "Selection.png",1,110,500
1310 '13:0
1320 gload Gazo$ + "Selection.png",1,150,400
1330 gload Gazo$ + "Selection.png",1,200,400
1340 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1350 gload Gazo$ + "downscreen.png",0,0,800
1360 sp_def 0,(5,300),32,32
1370 sp_def 1,(5,400),32,32
1380 sp_def 2,(5,500),32,32
1390 sp_def 3,(5,600),32,32
1400 '1
1410 sp_def 4,(35,300),32,32
1420 '2
1430 sp_def 5,(35,400),32,32
1440 '3
1450 sp_def 6,(35,500),32,32
1460 '4
1470 sp_def 7,(70,300),32,32
1480 '5
1490 sp_def 8,(70,400),32,32
1500 '6
1510 sp_def 9,(70,500),32,32
1520 '7
1530 sp_def 10,(110,300),32,32
1540 '8
1550 sp_def 11,(110,400),32,32
1560 '9
1570 sp_def 12,(110,400),32,32
1580 sp_def 13,(150,400),32,32
1590 sp_def 14,(200,400),32,32
1600 'Sprite OFF
1610 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1620 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1630 sp_put 0,(5,300),0,0
1640 sp_put 1,(5,400),1,0
1650 sp_put 2,(5,500),2,0
1660 sp_put 3,(5,600),3,0
1670 '1
1680 sp_put 4,(130,300),4,0
1690 '2
1700 sp_put 5,(130,400),5,0
1710 '3
1720 sp_put 6,(130,500),6,0
1730 '4
1740 sp_put 7,(340,300),7,0
1750 '5
1760 sp_put 8,(340,400),8,0
1770 '6
1780 sp_put 9,(340,500),9,0
1790 '7
1800 sp_put 10,(540,300),10,0
1810 '8
1820 sp_put 11,(540,400),11,0
1830 '9
1840 sp_put 12,(540,500),12,0
1850 '
1860 sp_put 13,(340,600),13,0
1870 sp_put 14,(540,600),14,0
1880 Main_Top:
1890 'Main Message 2023.06.07
1900 '再生を止める
1910 play ""
1920 init "kb:4"
1930 'font 32:
1940 font 48
1950 print chr$(13) + chr$(13) + chr$(13)
1960 color rgb(217,255,212)
1970 print "番号を選んでください" + chr$(13)
1980 '0
1990 print " :1.数秘術占い" + chr$(13)
2000 '1
2010 print " :2.設 定" + chr$(13)
2020 '2
2030 print " :3.ヘルプ" + chr$(13)
2040 '3
2050 print " :4.(プログラムを)終了する" + chr$(13)
2060 COLOR rgb(0,0,0):No=0
2070 locate 1,15
2080 print "                                       "
2090 locate 1,15:print "1.数秘術占いを選択"
2100 play Voice$ + "Voice_Main_Message_20230607.mp3"
2110 Main_Screen_Select:
2120 y = 0:key$ = "":bg = 0:bg2=0
2130 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2140 y = stick(1)
2150 '"May (2023)"
2160 key$ = inkey$
2170 bg = strig(1)
2180 bg2 = strig(0)
2190 pause 2
2200 wend
2210 '1.
2220 'ジョイパッドのソース ソート　ここから
2230 'カーソル　下 or 十字キー下
2240 if ((y = 1) or (key$ = chr$(31))) then
2250 select case No
2260 case 0:
2270 '1
2280 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2290 case 1:
2300 '2
2310 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2320 case 2:
2330 '3
2340 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2350 case 3:
2360 '0
2370 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2380 end select
2390 endif
2400 '2.
2410 'カーソル　上　or 十字キー  上
2420 if ((y = -1) or (key$ = chr$(30))) then
2430 select case No
2440 case 0:
2450 '3
2460 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2470 case 1:
2480 '0
2490 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2500 case 2:
2510 '1
2520 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2530 case 3:
2540 '2
2550 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2560 end select
2570 endif
2580 'ジョイパッド　ソース 部分　ここまで
2590 'ジョイパッド右　　or Enter key 決定
2600 if ((bg = 2) OR (key$ = chr$(13))) then
2610 select case No
2620 case 0:
2630 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2640 case 1:
2650 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2660 case 2:
2670 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2680 case 3:
2690 play "":pause 200
2700 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2710 end select
2720 endif
2730 if (bg2 = 2) then
2740 play "":pause 200
2750 play Voice$ + "Voice_Main_Message_20230607.mp3"
2760 goto Main_Screen_Select:
2770 endif
2780 'Version
2790 Version:
2800 cls 3:PLAY ""
2810 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2820 gload Gazo$ + "downscreen.png",0,0,800
2830 init"kb:4":font 32
2840 'talk"バージョン情報です"
2850 'Message :Version
2860 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2870 locate 0,5
2880 color rgb(0,0,0)
2890 print "・Title:数秘術占い";chr$(13)
2900 print "・" + Version$ + chr$(13)
2910 print "・Author:licksjp"+chr$(13)
2920 print "・E-mail:licksjp@gmail.com" + chr$(13)
2930 locate 0,18
2940 print "(C)licksjp All rights " + chr$(13)
2950 locate 13,19
2960 print "reserved since 2009"+chr$(13)
2970 locate 0,23
2980 color rgb(255,255,255)
2990 print "ジョイパッドの右を押してください"
3000 Versionn_Selection:
3010 bg = 0:key$ = "":bg2 = 0
3020 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3030 bg = strig(1)
3040 key$ = inkey$
3050 bg2 = strig(0)
3060 pause 2
3070 wend
3080 if ((bg = 2) or (key$ = chr$(13))) then
3090 pause 200:cls 4:goto Main_Screen:
3100 endif
3110 if (bg2=2) then
3120 play "":pause 200
3130 play Voice$ + "Voice_Version_Message_20230607.mp3"
3140 goto Versionn_Selection:
3150 endif
3160 '1.数秘ナンバーを求める
3170 '誕生日入力(生れた年代)
3180 Input_Seireki:
3190 cls 3:play "":count=0:count2=0
3200 'No = -1:Okのとき
3210 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3220 for i=0 to 3
3230 buf_year(i)=0
3240 next i
3250 gload Gazo$ + "Screen1.png",0,0,0
3260 gload Gazo$ + "downscreen.png",0,0,800
3270 'Init"kb:2"
3280 '音声ファイル再生 2023.06.07
3290 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3300 font 48
3310 locate 0,1
3320 '文字色：黒　 color rgb(0,0,0)
3330 color rgb(255,255,255)
3340 print "生まれた年代を入れて下さい" + chr$(13)
3350 color rgb(255,255,255)
3360 locate 2,3
3370 print "生まれた年代(西暦4桁):" + buf_year$
3380 '=============================
3390 'テンキーの色(1~９)　白 ,決定ボタン　青
3400 '=============================
3410 color rgb(255,255,255)
3420 'locate 4,6:print ":7"
3430 'locate 9,6:print ":8"
3440 'locate 12,6:print ":9"
3450 locate 4,6
3460 print ":7  :8  :9" + chr$(13)
3470 color rgb(255,255,255)
3480 locate 4,8
3490 print ":4  :5  :6" + chr$(13)
3500 color rgb(255,255,255)
3510 locate 4,10
3520 print ":1  :2  :3" + chr$(13)
3530 locate 4,12
3540 print "    :0"
3550 locate 12,12
3560 color rgb(255,0,0)
3570 print ":Ok"
3580 sp_on 4,0: sp_on 5,0:sp_on 6,0
3590 sp_on 7,0:sp_on 8,0:sp_on 9,0
3600 sp_on 10,0:sp_on 11,0:sp_on 12,0
3610 sp_on 13,0:sp_on 14,1
3620 Input_Seireki2:
3630 key$="":bg=0:y=0:y2=0:bg2=0:
3640 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3650 key$ = inkey$
3660 bg = strig(1)
3670 y = stick(1)
3680 y2 = stick(0)
3690 bg2 = strig(0)
3700 pause 15
3710 wend
3720 '十字キー　ここから
3730 '上の矢印　または、十字キー上
3740 if ((y = -1) or (key$ = chr$(30))) then
3750 select case No
3760 'No=-1:okのとき:初期の状態
3770 '0kボタンから３に移動
3780 '上に行く 処理
3790 case -1:
3800 No=3:sp_on 12,1:sp_on 14,0
3810 pause 200:goto Input_Seireki2:
3820 '選択肢:3
3830 '3ボタンから 6に移動
3840 case 3:
3850 No=6:sp_on 12,0:sp_on 11,1
3860 pause 200:goto Input_Seireki2:
3870 '6ボタンから ９に移動
3880 case 6:
3890 No=9:sp_on 10,1:sp_on 11,0
3900 pause 200:goto Input_Seireki2:
3910 '6ボタンから ９に移動　ここまで
3920 '9で上を押して何もしない
3930 case 9:
3940 '何もしない
3950 No=9
3960 pause 200:goto Input_Seireki2:
3970 '9で上を押しても何もしない　ここまで
3980 '上　 0ボタンから2ボタン
3990 'sp_on 6,1:1
4000 'sp_on 8,1:5
4010 'sp_on 7,1:7
4020 case 0:
4030 No=2:sp_on 13,0:sp_on 9,1:
4040 pause 200:goto Input_Seireki2:
4050 '上  0ボタンから2ボタン　ここまで
4060 '2から５になる 上
4070 case 2:
4080 No=5:sp_on 8,1:sp_on 9,0:
4090 pause 200:goto Input_Seireki2:
4100 case 5:
4110 No=8:sp_on 7,1:sp_on 8,0
4120 pause 200:goto Input_Seireki2:
4130 case 8:
4140 pause 200:goto Input_Seireki2:
4150 case 1:
4160 No=4:sp_on 5,1:sp_on 6,0
4170 pause 200:goto Input_Seireki2:
4180 case 4:
4190 No=7:sp_on 4,1:sp_on 5,0
4200 pause 200:goto Input_Seireki2:
4210 case 7:
4220 pause 200:goto Input_Seireki2:
4230 end select
4240 endif
4250 '左３　ここまで
4260 '下の矢印
4270 '中央 2
4280 if ((y=1) or (key$ = chr$(31))) then
4290 select case No
4300 '9から６に下げる
4310 case 9:
4320 No=6:sp_on 11,1:sp_on 10,0
4330 pause 200:goto Input_Seireki2:
4340 '6から３に下げる
4350 case 6:
4360 No=3:sp_on 12,1:sp_on 11,0
4370 pause 200:goto Input_Seireki2:
4380 '3から０ｋに変える
4390 case 3:
4400 No=-1:sp_on 14,1:sp_on 12,0
4410 pause 200:goto Input_Seireki2:
4420 'Okから下のボタンを押しても何もしない
4430 case -1:
4440 pause 200:goto Input_Seireki2:
4450 case 8:
4460 No=5:sp_on 8,1:sp_on 7,0
4470 pause 200:goto Input_Seireki2:
4480 case 5:
4490 No=2:sp_on 9,1:sp_on 8,0
4500 pause 200:goto Input_Seireki2:
4510 case 2:
4520 No=0:sp_on 13,1:sp_on 9,0
4530 pause 200:goto Input_Seireki2:
4540 case 0:
4550 pause 200:goto Input_Seireki2:
4560 case 7:
4570 No=4:sp_on 5,1:sp_on 4,0
4580 pause 200:goto Input_Seireki2:
4590 case 4:
4600 No=1:sp_on 6,1:sp_on 5,0
4610 pause 200:goto Input_Seireki2:
4620 case 1:
4630 pause 200:goto Input_Seireki2:
4640 end select
4650 endif
4660 '左へボタン 十字キー　左　or 　カーソル左
4670 if ((y2 = -1) or (key$ = chr$(29))) then
4680 select case No
4690 'Ok ボタン  Okから　左　０に行く
4700 case -1:
4710 No=0:sp_on 13,1:sp_on 14,0
4720 pause 200:goto Input_Seireki2:
4730 '0 ボタン  左　何もしない
4740 case 0:
4750 pause 200:goto Input_Seireki2:
4760 case 3:
4770 No=2:sp_on 9,1:sp_on 12,0:
4780 pause 200:goto Input_Seireki2:
4790 case 2:
4800 No=1:sp_on 6,1:sp_on 9,0:
4810 pause 200:goto Input_Seireki2:
4820 case 1:
4830 pause 200:goto Input_Seireki2:
4840 case 6:
4850 No=5:sp_on 8,1:sp_on 11,0
4860 pause 200:goto Input_Seireki2:
4870 case 5:
4880 No=4:sp_on 5,1:sp_on 8,0
4890 pause 200:goto Input_Seireki2:
4900 case 4:
4910 pause 200:goto Input_Seireki2:
4920 case 9:
4930 No=8:sp_on 7,1:sp_on 10,0
4940 pause 200:goto Input_Seireki2:
4950 case 8:
4960 No=7:sp_on 4,1:sp_on 7,0
4970 pause 200:goto Input_Seireki2:
4980 case 7:
4990 pause 200:goto Input_Seireki2:
5000 end select
5010 endif
5020 '右  十字キー　右　or カーソル　右
5030 if ((y2 = 1) or (key$ = chr$(28))) then
5040 select case No
5050 '0ボタンからokボタン右に移動
5060 case 0:
5070 No=-1:sp_on 14,1:sp_on 13,0
5080 pause 200:goto Input_Seireki2:
5090 '0ボタンからokボタン 右に移動　ここまで
5100 'OKボタンで右を押して何もしない
5110 case -1:
5120 pause 200:goto Input_Seireki2:
5130 case 1:
5140 No=2:sp_on 9,1:sp_on 6,0
5150 pause 200:goto Input_Seireki2:
5160 case 2:
5170 No=3:sp_on 12,1:sp_on 9,0
5180 pause 200:goto Input_Seireki2:
5190 case 3:
5200 pause 200:goto Input_Seireki2:
5210 case 4:
5220 No=5:sp_on 8,1:sp_on 5,0
5230 pause 200:goto Input_Seireki2:
5240 case 5:
5250 No=6:sp_on 11,1:sp_on 8,0
5260 pause 200:goto Input_Seireki2:
5270 case 7:
5280 No=8:sp_on 7,1:sp_on 4,0
5290 pause 200:goto Input_Seireki2:
5300 case 8:
5310 No=9:sp_on 10,1:sp_on 7,0
5320 pause 200:goto Input_Seireki2:
5330 case 9:
5340 pause 200:goto Input_Seireki2:
5350 case 6:
5360 pause 200:goto Input_Seireki2:
5370 end select
5380 'Okから右ボタンを押して何もしない ここまで
5390 endif
5400 '十字キー　ここまで
5410 if ((bg=2) or (key$=chr$(13))) then
5420 select case count
5430 case 0:
5440 count=1
5450 if (No=-1) then
5460 count=0
5470 'Okボタンを押したとき
5480 goto Input_Seireki2:
5490 else
5500 '===================================
5510 'Okボタン以外が押されたとき  1桁目の入力
5520 '===================================
5530 count2=1
5540 if (No >= 1 and No <= 2) then
5550 buf_year$="":buf_year$ = str$(No)
5560 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5570 n1 = len("生まれた年代(西暦4桁): ")
5580 locate 2,3
5590 color rgb(255,255,255)
5600 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5610 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5620 'print "生まれた年代(西暦4桁):";buf_year2$
5630 print buf_Born_Year_line$
5640 goto Input_Seireki2:
5650 else
5660 count=0
5670 ui_msg"数字が範囲外になります。"
5680 buf_year$="":buf_year=0
5690 goto Input_Seireki2:
5700 endif
5710 endif
5720 case 1:
5730 count = 2
5740 if (No = -1) then
5750 count = 1
5760 goto Input_Seireki2:
5770 else
5780 count2 = 1
5790 b = val(buf_year$)
5800 buf_year = b * 10 + No
5810 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5820 locate 2,3
5830 color rgb(255,255,255)
5840 print "                                                                "
5850 locate 2,3
5860 print "生まれた年代(西暦4桁):";buf_year2$
5870 'if (No = -1) then
5880 'count=1
5890 goto Input_Seireki2:
5900 endif
5910 case 2:
5920 count=3
5930 if (No=-1) then
5940 count =2
5950 goto Input_Seireki2:
5960 else
5970 b = val(buf_year$)
5980 buf_year = b*10 + No
5990 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
6000 locate 2,3
6010 color rgb(255,255,255)
6020 print "                                        "
6030 locate 2,3
6040 print "生まれた年代(西暦4桁):";buf_year2$
6050 goto Input_Seireki2:
6060 endif
6070 case 3:
6080 count=4
6090 if (No = -1) then
6100 count=3
6110 goto Input_Seireki2:
6120 else
6130 b = val(buf_year$)
6140 buf_year=b*10+No
6150 buf_year$=str$(buf_year)
6160 locate 2,3
6170 color RGB(255,255,255)
6180 print "                                      "
6190 locate 2,3
6200 print "生まれた年代(西暦4桁):";buf_year$
6210 buf_year=val(buf_year$)
6220 'year=val(buf_year$)
6230 'if (No=-1) then
6240 'goto Input_Born_Month:
6250 'else
6260 goto Input_Seireki2:
6270 endif
6280 case 4:
6290 'bufyear=buf_year
6300 if (No=-1) then
6310 buf_year = val(buf_year$)
6320 bufyear = buf_year
6330 sp_on 14,0
6340 goto Input_Born_Month:
6350 else
6360 goto Input_Seireki2:
6370 endif
6380 end select
6390 endif
6400 '=========================
6410 'bg2　キャンセルボタン
6420 '=========================
6430 if (bg2 = 2) then
6440 select case count2
6450 case 0:
6460 'Okボタンを押したときの処理
6470 if (No = -1) then
6480 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6490 'count = 0
6500 locate 2,3
6510 color rgb(255,255,255)
6520 print "                                      "
6530 locate 2,3
6540 print "生まれた年代（西暦4桁):";buf_year$
6550 '=============================
6560 'case 0:前の画面に戻る 数秘術トップメニュー
6570 '=============================
6580 sp_on 14,0:goto Kabara_TopScreen:
6590 else
6600 'count=0
6610 '(buf_year=0) then
6620 buf_year = 0:buf_year$ = string$(4,"*")
6630 goto Input_Seireki2:
6640 'endif
6650 endif
6660 case 1:
6670 if (No = -1) then
6680 count2 = 0:count = 0
6690 buf$=right$(buf_year$,1)
6700 if (val(buf$) >= 1 and val(buf$) <= 9) then
6710 buf_year$ = "****":buf_year=0
6720 color rgb(255,255,255)
6730 locate 0,3:
6740 print "                                      "
6750 locate 2,3
6760 print "生まれた年代（西暦4桁):" + buf_year$
6770 goto Input_Seireki2:
6780 endif
6790 else
6800 endif
6810 end select
6820 endif
6830 end
6840 'Input"生れた年代(4桁,〜2025年):",year
6850 'if year > 2025 then goto Input_Seireki:
6860 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6870 '"4桁目"
6880 'bufyear4 = fix(year / 1000)
6890 '"3桁目"
6900 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6910 '"2桁目"
6920 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6930 '"1桁目"
6940 'bufyear1 = fix((year - ((bufyear4*
6950 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6960 '生れた月を入力
6970 Input_Born_Month:
6980 cls 3:play "":count=0:count2=0
6990 'No=-1:Okのとき
7000 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7010 for i=0 to 1
7020 buf_month(i)=0
7030 next i
7040 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7050 gload Gazo$ + "Screen1.png",0,0,0
7060 gload Gazo$ + "downscreen.png",0,0,800
7070 'Init"kb:2"
7080 '音声ファイル再生 2023.06.07
7090 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7100 font 48
7110 locate 0,1
7120 '文字色：黒　 color rgb(0,0,0)
7130 '文字色:白
7140 color rgb(255,255,255)
7150 print "生まれた月を入れて下さい" + chr$(13)
7160 '文字色:白
7170 color rgb(255,255,255)
7180 locate 2,3
7190 '文字色:白
7200 print "生まれた月(1月~12月):";buf_Month$
7210 color rgb(255,255,255)
7220 'locate 4,6:print ":7"
7230 'locate 9,6:print ":8"
7240 'locate 12,6:print ":9"
7250 locate 4,6
7260 '文字色:赤
7270 print ":7  :8  :9" + chr$(13)
7280 color rgb(255,255,255)
7290 locate 4,8
7300 print ":4  :5  :6" + chr$(13)
7310 color rgb(255,255,255)
7320 locate 4,10
7330 print ":1  :2  :3" + chr$(13)
7340 locate 4,12
7350 print "    :0"
7360 locate 12,12
7370 color rgb(255,0,0)
7380 print ":Ok"
7390 sp_on 4,0: sp_on 5,0:sp_on 6,0
7400 sp_on 7,0:sp_on 8,0:sp_on 9,0
7410 sp_on 10,0:sp_on 11,0:sp_on 12,0
7420 sp_on 13,0:sp_on 14,1
7430 Input_Born_Month2:
7440 key$="":bg=0:y=0:y2=0:bg2=0
7450 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7460 key$ = inkey$
7470 bg = strig(1)
7480 y = stick(1)
7490 y2 = stick(0)
7500 bg2 = strig(0)
7510 pause 5
7520 wend
7530 '十字キー　ここから
7540 '上の矢印　または、十字キー上
7550 if ((y = -1) or (key$ = chr$(30))) then
7560 select case No
7570 'No=-1:okのとき:初期の状態
7580 '0kボタンから３に移動
7590 '上に行く 処理
7600 case -1:
7610 No=3:sp_on 12,1:sp_on 14,0
7620 pause 200:goto Input_Born_Month2:
7630 '選択肢:3
7640 '3ボタンから 6に移動
7650 case 3:
7660 No=6:sp_on 12,0:sp_on 11,1
7670 pause 200:goto Input_Born_Month2:
7680 '6ボタンから ９に移動
7690 case 6:
7700 No=9:sp_on 10,1:sp_on 11,0
7710 pause 200:goto Input_Born_Month2:
7720 '6ボタンから ９に移動　ここまで
7730 '9で上を押して何もしない
7740 case 9:
7750 '何もしない
7760 No=9
7770 pause 200:goto Input_Born_Month2:
7780 '9で上を押しても何もしない　ここまで
7790 '上　 0ボタンから2ボタン
7800 'sp_on 6,1:1
7810 'sp_on 8,1:5
7820 'sp_on 7,1:7
7830 case 0:
7840 No=2:sp_on 13,0:sp_on 9,1:
7850 pause 200:goto Input_Born_Month2:
7860 '上  0ボタンから2ボタン　ここまで
7870 '2から５になる 上
7880 case 2:
7890 No=5:sp_on 8,1:sp_on 9,0:
7900 pause 200:goto Input_Born_Month2:
7910 case 5:
7920 No=8:sp_on 7,1:sp_on 8,0
7930 pause 200:goto Input_Born_Month2:
7940 case 8:
7950 pause 200:goto Input_Born_Month2:
7960 case 1:
7970 No=4:sp_on 5,1:sp_on 6,0
7980 pause 200:goto Input_Born_Month2:
7990 case 4:
8000 No=7:sp_on 4,1:sp_on 5,0
8010 pause 200:goto Input_Born_Month2:
8020 case 7:
8030 pause 200:goto Input_Born_Month2:
8040 end select
8050 endif
8060 '左３　ここまで
8070 '下の矢印
8080 '中央 2
8090 if ((y=1) or (key$ = chr$(31))) then
8100 select case No
8110 '9から６に下げる
8120 case 9:
8130 No=6:sp_on 11,1:sp_on 10,0
8140 pause 200:goto Input_Born_Month2:
8150 '6から３に下げる
8160 case 6:
8170 No=3:sp_on 12,1:sp_on 11,0
8180 pause 200:goto Input_Born_Month2:
8190 '3から０ｋに変える
8200 case 3:
8210 No=-1:sp_on 14,1:sp_on 12,0
8220 pause 200:goto Input_Born_Month2:
8230 'Okから下のボタンを押しても何もしない
8240 case -1:
8250 pause 200:goto Input_Born_Month2:
8260 case 8:
8270 No=5:sp_on 8,1:sp_on 7,0
8280 pause 200:goto Input_Born_Month2:
8290 case 5:
8300 No=2:sp_on 9,1:sp_on 8,0
8310 pause 200:goto Input_Born_Month2:
8320 case 2:
8330 No=0:sp_on 13,1:sp_on 9,0
8340 pause 200:goto Input_Born_Month2:
8350 case 0:
8360 pause 200:goto Input_Born_Month2:
8370 case 7:
8380 No=4:sp_on 5,1:sp_on 4,0
8390 pause 200:goto Input_Born_Month2:
8400 case 4:
8410 No=1:sp_on 6,1:sp_on 5,0
8420 pause 200:goto Input_Born_Month2:
8430 case 1:
8440 pause 200:goto Input_Born_Month2:
8450 end select
8460 endif
8470 '左へボタン 十字キー　左　or 　カーソル左
8480 if ((y2 = -1) or (key$ = chr$(29))) then
8490 select case No
8500 'Ok ボタン  Okから　左　０に行く
8510 case -1:
8520 No=0:sp_on 13,1:sp_on 14,0
8530 pause 200:goto Input_Born_Month2:
8540 '0 ボタン  左　何もしない
8550 case 0:
8560 pause 200:goto Input_Born_Month2:
8570 case 3:
8580 No=2:sp_on 9,1:sp_on 12,0:
8590 pause 200:goto Input_Born_Month2:
8600 case 2:
8610 No=1:sp_on 6,1:sp_on 9,0:
8620 pause 200:goto Input_Born_Month2:
8630 case 1:
8640 pause 200:goto Input_Born_Month2:
8650 case 6:
8660 No=5:sp_on 8,1:sp_on 11,0
8670 pause 200:goto Input_Born_Month2:
8680 case 5:
8690 No=4:sp_on 5,1:sp_on 8,0
8700 pause 200:goto Input_Born_Month2:
8710 case 4:
8720 pause 200:goto Input_Born_Month2:
8730 case 9:
8740 No=8:sp_on 7,1:sp_on 10,0
8750 pause 200:goto Input_Born_Month2:
8760 case 8:
8770 No=7:sp_on 4,1:sp_on 7,0
8780 pause 200:goto Input_Born_Month2:
8790 case 7:
8800 pause 200:goto Input_Born_Month2:
8810 end select
8820 endif
8830 '右  十字キー　右　or カーソル　右
8840 if ((y2 = 1) or (key$ = chr$(28))) then
8850 select case No
8860 '0ボタンからokボタン右に移動
8870 case 0:
8880 No=-1:sp_on 14,1:sp_on 13,0
8890 pause 200:goto Input_Born_Month2:
8900 '0ボタンからokボタン 右に移動　ここまで
8910 'OKボタンで右を押して何もしない
8920 case -1:
8930 pause 200:goto Input_Born_Month2:
8940 case 1:
8950 No=2:sp_on 9,1:sp_on 6,0
8960 pause 200:goto Input_Born_Month2:
8970 case 2:
8980 No=3:sp_on 12,1:sp_on 9,0
8990 pause 200:goto Input_Born_Month2:
9000 case 3:
9010 pause 200:goto Input_Born_Month2:
9020 case 4:
9030 No=5:sp_on 8,1:sp_on 5,0
9040 pause 200:goto Input_Born_Month2:
9050 case 5:
9060 No=6:sp_on 11,1:sp_on 8,0
9070 pause 200:goto Input_Born_Month2:
9080 case 7:
9090 No=8:sp_on 7,1:sp_on 4,0
9100 pause 200:goto Input_Born_Month2:
9110 case 8:
9120 No=9:sp_on 10,1:sp_on 7,0
9130 pause 200:goto Input_Born_Month2:
9140 case 9:
9150 pause 200:goto Input_Born_Month2:
9160 case 6:
9170 pause 200:goto Input_Born_Month2:
9180 end select
9190 'Okから右ボタンを押して何もしない ここまで
9200 endif
9210 '十字キー　ここまで
9220 '右の丸ボタン　決定キー
9230 if ((bg=2) or (key$=chr$(13))) then
9240 select case count
9250 case 0:
9260 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9270 if (buf_month = 1 or buf_month = 2) then
9280 locate 2,3
9290 color RGB(255,255,255)
9300 print "生まれた月(1月~12月):";buf_Month2$
9310 else
9320 locate 2,3
9330 color Rgb(255,255,255)
9340 print "生まれた月(1月~12月):";buf_Month$
9350 endif
9360 goto Input_Born_Month2:
9370 case 1:
9380 count = 2:c = No
9390 c = val(buf_Month$)
9400 if (No = -1) then
9410 'if No=1 or No=2 then
9420 'endif
9430 month = buf_month
9440 buf_month=val(buf_Month$)
9450 month=buf_month
9460 '生まれた日に飛ぶ
9470 goto Input_Born_Day:
9480 else
9490 buf_month = c*10 + No
9500 buf_Month$= str$(buf_month)
9510 locate 2,3
9520 color Rgb(255,255,255)
9530 print "生まれた月(1月~12月):";buf_Month$
9540 goto Input_Born_Month2:
9550 endif
9560 case 2:
9570 count=3:count2=1
9580 'c= val(buf_Month$)
9590 'buf_month = c*10 + No
9600 'buf_Month$ = str$(buf_month)
9610 'locate 2,3
9620 'print "生まれた月(1月～12月):";buf_Month$
9630 'goto Input_Born_Month2:
9640 'case 3:
9650 'count=4
9660 'b=val(buf_month$)
9670 'buf_month=c*10+No
9680 'buf_Month$=str$(buf_month)
9690 'locate 2,3
9700 'print "生まれた月(1月～12月):";buf_Month$
9710 'buf_month=val(buf_Month$)
9720 'year=val(buf_year$)
9730 if (No=-1) then
9740 goto Input_Born_Day:
9750 else
9760 'goto Input_Born_Month2:
9770 endif
9780 'case 4:
9790 'bufyear=buf_year
9800 'if (No=-1) then
9810 'buf_month = val(buf_Month$)
9820 'month = buf_month
9830 'sp_on 14,0
9840 'goto Input_Born_Day:
9850 'else
9860 'goto Input_Born_Month2:
9870 'endif
9880 end select
9890 endif
9900 '左の丸ボタン　キャンセル
9910 if (bg2=2) then
9920 select case count2
9930 case 0:
9940 if (No = -1) then
9950 buf_month=0:buf_Month$="**"
9960 count2=0:count=0
9970 locate 0,3:print "                                              "
9980 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9990 'if (buf_month > 1) then
10000 sp_on 14,0:goto Input_Born_Month2:
10010 'goto rewrite:
10020 else
10030 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10040 buf_month=0:buf_Month$="**"
10050 locate 2,3
10060 color rgb(255,255,255)
10070 print "                                       "
10080 goto rewrite:
10090 if (No>2) then
10100 ui_msg"値が範囲外です。"
10110 goto rewrite:
10120 endif
10130 endif
10140 'endif
10150 rewrite:
10160 locate 2,3
10170 color rgb(255,255,255)
10180 print "                                      "
10190 locate 2,3
10200 print "生まれた月(1月~12月):";buf_Month$
10210 goto Input_Born_Month2:
10220 endif
10230 case 1:
10240 buf_Month$="**":buf_month=0
10250 if No=-1 then
10260 count2=2:count=0
10270 locate 0,3
10280 print "                                      "
10290 locate 2,3:
10300 print "生まれた月(1月~12月):"+buf_Month$
10310 goto Input_Born_Month2:
10320 endif
10330 case 2:
10340 sp_on 14,0:goto Input_Seireki:
10350 end select
10360 endif
10370 'endif
10380 end
10390 'end
10400 '生れた日を入力
10410 Input_Born_Day:
10420 '生まれた日入力
10430 cls 3:play ""
10440 'No=-1:Okのとき
10450 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10460 for i=0 to 1
10470 buf_day(i)=0
10480 next i
10490 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10500 gload Gazo$ + "Screen1.png",0,0,0
10510 gload Gazo$ + "downscreen.png",0,0,800
10520 'Init"kb:2"
10530 '音声ファイル再生 2023.06.07
10540 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10550 font 48
10560 locate 0,1
10570 '文字色：黒　 color rgb(0,0,0)
10580 color rgb(255,255,255)
10590 print "生まれた日を入れて下さい" + chr$(13)
10600 color rgb(255,255,255)
10610 locate 2,3
10620 print "生まれた日(1日~31日):";buf_Day$
10630 color rgb(255,255,255)
10640 'locate 4,6:print ":7"
10650 'locate 9,6:print ":8"
10660 'locate 12,6:print ":9"
10670 locate 4,6
10680 print ":7  :8  :9" + chr$(13)
10690 '=======================
10700 'テンキー　色　白　決定ボタン　青
10710 '=======================
10720 color rgb(255,255,255)
10730 locate 4,8
10740 print ":4  :5  :6" + chr$(13)
10750 color rgb(255,255,255)
10760 locate 4,10
10770 print ":1  :2  :3" + chr$(13)
10780 locate 4,12
10790 print "    :0"
10800 locate 12,12
10810 color rgb(255,0,0)
10820 print ":Ok"
10830 sp_on 4,0: sp_on 5,0:sp_on 6,0
10840 sp_on 7,0:sp_on 8,0:sp_on 9,0
10850 sp_on 10,0:sp_on 11,0:sp_on 12,0
10860 sp_on 13,0:sp_on 14,1
10870 Input_Born_Day2:
10880 key$="":bg=0:y=0:y2=0:bg2=0
10890 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10900 key$ = inkey$
10910 bg = strig(1)
10920 y = stick(1)
10930 y2 = stick(0)
10940 bg2 = strig(0)
10950 pause 5
10960 wend
10970 '十字キー　ここから
10980 '上の矢印　または、十字キー上
10990 if ((y = -1) or (key$ = chr$(30))) then
11000 select case No
11010 'No=-1:okのとき:初期の状態
11020 '0kボタンから３に移動
11030 '上に行く 処理
11040 case -1:
11050 No=3:sp_on 12,1:sp_on 14,0
11060 pause 200:goto Input_Born_Day2:
11070 '選択肢:3
11080 '3ボタンから 6に移動
11090 case 3:
11100 No=6:sp_on 12,0:sp_on 11,1
11110 pause 200:goto Input_Born_Day2:
11120 '6ボタンから ９に移動
11130 case 6:
11140 No=9:sp_on 10,1:sp_on 11,0
11150 pause 200:goto Input_Born_Day2:
11160 '6ボタンから ９に移動　ここまで
11170 '9で上を押して何もしない
11180 case 9:
11190 '何もしない
11200 No=9
11210 pause 200:goto Input_Born_Day2:
11220 '9で上を押しても何もしない　ここまで
11230 '上　 0ボタンから2ボタン
11240 'sp_on 6,1:1
11250 'sp_on 8,1:5
11260 'sp_on 7,1:7
11270 case 0:
11280 No=2:sp_on 13,0:sp_on 9,1:
11290 pause 200:goto Input_Born_Day2:
11300 '上  0ボタンから2ボタン　ここまで
11310 '2から５になる 上
11320 case 2:
11330 No=5:sp_on 8,1:sp_on 9,0:
11340 pause 200:goto Input_Born_Day2:
11350 case 5:
11360 No=8:sp_on 7,1:sp_on 8,0
11370 pause 200:goto Input_Born_Day2:
11380 case 8:
11390 pause 200:goto Input_Born_Day2:
11400 case 1:
11410 No=4:sp_on 5,1:sp_on 6,0
11420 pause 200:goto Input_Born_Day2:
11430 case 4:
11440 No=7:sp_on 4,1:sp_on 5,0
11450 pause 200:goto Input_Born_Day2:
11460 case 7:
11470 pause 200:goto Input_Born_Day2:
11480 end select
11490 endif
11500 '左３　ここまで
11510 '下の矢印
11520 '中央 2
11530 if ((y=1) or (key$ = chr$(31))) then
11540 select case No
11550 '9から６に下げる
11560 case 9:
11570 No=6:sp_on 11,1:sp_on 10,0
11580 pause 200:goto Input_Born_Day2:
11590 '6から３に下げる
11600 case 6:
11610 No=3:sp_on 12,1:sp_on 11,0
11620 pause 200:goto Input_Born_Day2:
11630 '3から０ｋに変える
11640 case 3:
11650 No=-1:sp_on 14,1:sp_on 12,0
11660 pause 200:goto Input_Born_Day2:
11670 'Okから下のボタンを押しても何もしない
11680 case -1:
11690 pause 200:goto Input_Born_Day2:
11700 case 8:
11710 No=5:sp_on 8,1:sp_on 7,0
11720 pause 200:goto Input_Born_Day2:
11730 case 5:
11740 No=2:sp_on 9,1:sp_on 8,0
11750 pause 200:goto Input_Born_Day2:
11760 case 2:
11770 No=0:sp_on 13,1:sp_on 9,0
11780 pause 200:goto Input_Born_Day2:
11790 case 0:
11800 pause 200:goto Input_Born_Day2:
11810 case 7:
11820 No=4:sp_on 5,1:sp_on 4,0
11830 pause 200:goto Input_Born_Day2:
11840 case 4:
11850 No=1:sp_on 6,1:sp_on 5,0
11860 pause 200:goto Input_Born_Day2:
11870 case 1:
11880 pause 200:goto Input_Born_Day2:
11890 end select
11900 endif
11910 '左へボタン 十字キー　左　or 　カーソル左
11920 if ((y2 = -1) or (key$ = chr$(29))) then
11930 select case No
11940 'Ok ボタン  Okから　左　０に行く
11950 case -1:
11960 No=0:sp_on 13,1:sp_on 14,0
11970 pause 200:goto Input_Born_Day2:
11980 '0 ボタン  左　何もしない
11990 case 0:
12000 pause 200:goto Input_Born_Day2:
12010 case 3:
12020 No=2:sp_on 9,1:sp_on 12,0:
12030 pause 200:goto Input_Born_Day2:
12040 case 2:
12050 No=1:sp_on 6,1:sp_on 9,0:
12060 pause 200:goto Input_Born_Day2:
12070 case 1:
12080 pause 200:goto Input_Born_Day2:
12090 case 6:
12100 No=5:sp_on 8,1:sp_on 11,0
12110 pause 200:goto Input_Born_Day2:
12120 case 5:
12130 No=4:sp_on 5,1:sp_on 8,0
12140 pause 200:goto Input_Born_Day2:
12150 case 4:
12160 pause 200:goto Input_Born_Day2:
12170 case 9:
12180 No=8:sp_on 7,1:sp_on 10,0
12190 pause 200:goto Input_Born_Day2:
12200 case 8:
12210 No=7:sp_on 4,1:sp_on 7,0
12220 pause 200:goto Input_Born_Day2:
12230 case 7:
12240 pause 200:goto Input_Born_Day2:
12250 end select
12260 endif
12270 '右  十字キー　右　or カーソル　右
12280 if ((y2 = 1) or (key$ = chr$(28))) then
12290 select case No
12300 '0ボタンからokボタン右に移動
12310 case 0:
12320 No=-1:sp_on 14,1:sp_on 13,0
12330 pause 200:goto Input_Born_Day2:
12340 '0ボタンからokボタン 右に移動　ここまで
12350 'OKボタンで右を押して何もしない
12360 case -1:
12370 pause 200:goto Input_Born_Day2:
12380 case 1:
12390 No=2:sp_on 9,1:sp_on 6,0
12400 pause 200:goto Input_Born_Day2:
12410 case 2:
12420 No=3:sp_on 12,1:sp_on 9,0
12430 pause 200:goto Input_Born_Day2:
12440 case 3:
12450 pause 200:goto Input_Born_Day2:
12460 case 4:
12470 No=5:sp_on 8,1:sp_on 5,0
12480 pause 200:goto Input_Born_Day2:
12490 case 5:
12500 No=6:sp_on 11,1:sp_on 8,0
12510 pause 200:goto Input_Born_Day2:
12520 case 7:
12530 No=8:sp_on 7,1:sp_on 4,0
12540 pause 200:goto Input_Born_Day2:
12550 case 8:
12560 No=9:sp_on 10,1:sp_on 7,0
12570 pause 200:goto Input_Born_Day2:
12580 case 9:
12590 pause 200:goto Input_Born_Day2:
12600 case 6:
12610 pause 200:goto Input_Born_Day2:
12620 end select
12630 'Okから右ボタンを押して何もしない ここまで
12640 endif
12650 '十字キー　ここまで
12660 '右の丸ボタンを押したとき
12670 if ((bg = 2) or (key$ = chr$(13))) then
12680 'count :決定ボタンを押した回数
12690 select case (count mod 3)
12700 '1桁目入力
12710 case 0:
12720 count = 1:
12730 if (No = -1) then
12740 '1桁目　OKでは何もしない
12750 'goto check:
12760 else
12770 'ok以外のボタンを押したとき
12780 buf_day = No:buf_Day$ = str$(No)
12790 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12800 locate 2,3
12810 color RGB(255,255,255)
12820 print "生まれた日(1日~31日):";buf_Day2$
12830 endif
12840 check:
12850 if (No >= 1 and No <= 9) then
12860 sp_on 14,0
12870 goto Input_Born_Day2:
12880 else
12890 sp_on 14,0
12900 goto complate:
12910 endif
12920 case 1:
12930 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12940 count = 2:
12950 'locate 2,3
12960 'color RGB(255,255,255)
12970 'print "生まれた日(1日~31日):";buf_Day$
12980 'Okボタンを押したときの処理
12990 '入力値　10未満のとき
13000 'c = buf_day
13010 if (No = -1) then
13020 'c=buf_day
13030 ' buf_day = c
13040 'buf_Day$ = str$(buf_day)
13050 '10以下のとき
13060 if (buf_day < 10) then
13070 sp_on 14,0
13080 goto complate:
13090 endif
13100 else
13110 'c = No
13120 buf_day = c * 10 + No
13130 'buf_day = c
13140 buf_Day$ =str$(buf_day)
13150 locate 2,3
13160 color Rgb(255,255,255)
13170 print "生まれた日(1日~31日):";buf_Day$
13180 goto Input_Born_Day2:
13190 endif
13200 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13210 case 2:
13220 count=0
13230 'c=val(buf_Day$)
13240 'buf_day=c*10+No
13250 'buf_Day$=str$(buf_day)
13260 'day=buf_day
13270 'locate 2,3
13280 'print "生まれた日(1日〜31日):";buf_Day$
13290 'No=-1:ok ボタンを押したとき
13300 if (No = -1) then
13310 if ((buf_day > 0) and (buf_day < 32)) then
13320 sp_on 14,0
13330 goto complate:
13340 else
13350 goto Input_Born_Day2:
13360 endif
13370 'Okボタン以外を押したとき
13380 else
13390 c=val(buf_Day$)
13400 buf_day = c * 10 + No
13410 buf_Day$ = str$(buf_day)
13420 locate 2,3
13430 print "生まれた日(1日~31日):";buf_Day$
13440 'goto Input_Born_Day2:
13450 endif
13460 case 3:
13470 count = 4
13480 c=val(buf_day$)
13490 buf_day = c * 10 + No
13500 buf_day$ = str$(buf_day)
13510 locate 2,3
13520 print "生まれた日を入れてください:";buf_Day$
13530 year = val(buf_year$)
13540 if (No = -1) then
13550 'goto Input_Born_Day:
13560 sp_on 14,0:No=0
13570 goto complate:
13580 else
13590 goto Input_Born_Month2:
13600 endif
13610 'case 4:
13620 'bufyear=buf_year
13630 'if (No=-1) then
13640 'buf_day = val(buf_day$)
13650 'bufday = buf_day
13660 'sp_on 14,0
13670 'goto complate:
13680 'else
13690 'goto Input_Born_Day2:
13700 'endif
13710 end select
13720 endif
13730 if (bg2=2) then
13740 select case count2
13750 case 0:
13760 if (No=-1) then
13770 'buf_day=0:buf_Day$="**"
13780 if (buf_day>=1 and buf_day<=31) then
13790 count=0:No=0
13800 buf_day=0:buf_Day$="**"
13810 'goto rewrite_day:
13820 else
13830 buf_day=0:buf_Day$="**"
13840 ui_msg"値が範囲外です"
13850 endif
13860 goto rewrite_day:
13870 else
13880 goto rewrite_day:
13890 endif
13900 rewrite_day:
13910 locate 2,3
13920 color rgb(255,255,255)
13930 print "                                      "
13940 locate 2,3
13950 print "生まれた日(1日~31日):";buf_Day$
13960 goto Input_Born_Day2:
13970 end select
13980 endif
13990 '--------------------------Input_Born_Day:-------------------------------------------
14000 complate:
14010 suhiNo = buf_year + buf_month + buf_day
14020 'if (suhiNo < 1000) then
14030 a1 = fix(suhiNo / 1000)
14040 a2 = fix(suhiNo/100) - (a1 * 10)
14050 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14060 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14070 'endif
14080 bufsuhiNo = a1+a2+a3+a4
14090 recomp:
14100 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14110 'bufsuhiNo=a6
14120 goto Kabara_Result_Screen:
14130 else
14140 a5 = fix(bufsuhiNo / 10)
14150 a6 = bufsuhiNo - a5 * 10
14160 bufsuhiNo = a6 + a5
14170 if (bufsuhiNo = 10) then
14180 bufsuhiNo=1
14190 endif
14200 goto Kabara_Result_Screen:
14210 endif
14220 Kabara_Result_Screen:
14230 cls 3:
14240 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14250 gload Gazo$ + "downscreen.png",0,0,800
14260 init "kb:4"
14270 '
14280 play ""
14290 select case (bufsuhiNo)
14300 case 1:
14310 play Voice$ + "Result_Kabara_1_20230607.mp3"
14320 case 2:
14330 play Voice$ + "Result_Kabara_2_20230607.mp3"
14340 case 3:
14350 play Voice$ + "Result_Kabara_3_20230607.mp3"
14360 case 4:
14370 play Voice$ + "Result_Kabara_4_20230607.mp3"
14380 case 5:
14390 play Voice$ + "Result_Kabara_5_20230607.mp3"
14400 case 6:
14410 play Voice$ + "Result_Kabara_6_20230607.mp3"
14420 case 7:
14430 play Voice$ + "Result_Kabara_7_20230607.mp3"
14440 case 8:
14450 play Voice$ + "Result_Kabara_8_20230607.mp3"
14460 case 9:
14470 play Voice$ + "Result_Kabara_9_20230607.mp3"
14480 case 11:
14490 play Voice$ + "Result_Kabara_11_20230607.mp3"
14500 case 22:
14510 play Voice$ + "Result_Kabara_22_20230607.mp3"
14520 case 33:
14530 play Voice$ + "Result_Kabara_33_20230607.mp3"
14540 end select
14550 font 48
14560 key$ = "":bg = 0:bg2=0
14570 'COLOR rgb(255,255,255)
14580 'print "●診断結果"+chr$(13)
14590 locate 0,2
14600 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14610 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14620 locate 0,15:
14630 color rgb(255,255,255)
14640 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14650 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14660 key$ = inkey$
14670 bg = strig(1)
14680 bg2 = strig(0)
14690 pause 5
14700 wend
14710 'Enter or JoyPad right
14720 if ((key$ = chr$(13)) or (bg = 2)) then
14730 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14740 endif
14750 if ((bg2=2)) then
14760 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14770 endif
14780 'suhiNo1 = fix(bufsuhiNo / 10)
14790 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14800 'bufsuhiNo = suhiNo1 + suhiNo2
14810 'goto recomp:
14820 'endif
14830 'print chr$(13)
14840 'color rgb(255,0,0)
14850 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14860 'key$ = input$(1)
14870 'if key$ = chr$(13) then goto Main_Screen:
14880 '"Menu2 占いのルール"
14890 Suhi_Rule:
14900 '数秘術占いルールの表示
14910 cls 3:play "":init"kb:4"
14920 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14930 gload Gazo$ + "downscreen.png",0,0,800
14940 'cls 3:
14950 'line (0,0) - (1500,60),rgb(0,0,255),bf
14960 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14970 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14980 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14990 locate 0,2:Font 48
15000 print chr$(13) + chr$(13)
15010 color rgb(0,0,0)
15020 print "誕生日を単数変換します";chr$(13)
15030 print "数字の範囲:1~９,11,22,33";chr$(13)
15040 print "例:1973年11月22日の場合";chr$(13)
15050 print "1+9+7+3+11+22=53 ";chr$(13)
15060 print "→ 5 + 3 = 8" + chr$(13)
15070 print "故に8が数秘ナンバーになります";chr$(13)
15080 locate 0,15
15090 color rgb(255,255,255)
15100 print "ジョイパッドの右を押してください"
15110 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15120 '"key$ = input$(1)"
15130 '"if key$ = chr$(13) then goto Main_Screen:"
15140 suhi_rule_selection:
15150 bg = 0:key$ = "":bg2=0
15160 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15170 bg = strig(1)
15180 key$ = inkey$
15190 bg2=strig(0)
15200 pause 2
15210 wend
15220 if ((bg = 2) or (key$ = chr$(13))) then
15230 pause 200:cls 4:goto Main_Screen:
15240 endif
15250 if (bg2=2) then
15260 play "":pause 200
15270 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15280 goto suhi_rule_selection:
15290 endif
15300 '2.設定
15310 '2-1.トップ画面に戻る
15320 Setting:
15330 cls 3:init"kb:4":font 48:No=0
15340 play ""
15350 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15360 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15370 gload Gazo$ + "downscreen.png",0,0,800
15380 print chr$(13) + chr$(13) + chr$(13)
15390 color rgb(255,255,255):sp_on 0,1:
15400 print "番号を選んでください" + chr$(13)
15410 print " :1.トップ画面に戻る"+ chr$(13)
15420 print " :2.未実装" + chr$(13)
15430 print " :3.未実装" + chr$(13)
15440 print " :4.未実装" + chr$(13)
15450 color rgb(0,0,0)
15460 locate 1,15:print "1.トップ画面に戻るを選択"
15470 Setting_Selection:
15480 y=0:key$="":bg=0:bg2=0
15490 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15500 'y=stick(1)
15510 key$ = inkey$
15520 bg=strig(1)
15530 bg2 = strig(0)
15540 pause 2
15550 wend
15560 if ((bg = 2) or (key$ = chr$(13))) then
15570 select case No
15580 case 0:
15590 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15600 end select
15610 endif
15620 if (bg2 = 2) then
15630 play "":pause 200
15640 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15650 goto Setting_Selection:
15660 endif
15670 '3.Help
15680 '3-1.ルールの表示
15690 '3-2.バージョン
15700 '3-3.トップに戻る
15710 Help:
15720 cls 3:Font 48:No=0
15730 play ""
15740 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15750 gload Gazo$ + "downscreen.png",0,0,800
15760 color rgb(255,255,255)
15770 print chr$(13)+chr$(13)+chr$(13)
15780 print "番号を選んでください"+chr$(13)
15790 print " :1.ルールの表示" + chr$(13)
15800 print " :2.バージョンの表示" + chr$(13)
15810 print " :3.参考文献" + chr$(13)
15820 print " :4.トップ画面に戻る" + chr$(13)
15830 color rgb(0,0,0)
15840 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15850 locate 1,15
15860 print "                                      "
15870 locate 1,15
15880 print "1.ルールの表示を選択"
15890 init"kb:4"
15900 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15910 Help_Select:
15920 bg=0:key$="":y=0:bg2=0
15930 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15940 y = stick(1)
15950 key$ = inkey$
15960 bg = strig(1)
15970 bg2 = strig(0)
15980 pause 5
15990 wend
16000 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16010 if ((y = 1) or (key$ = chr$(31))) then
16020 select case No
16030 case 0:
16040 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16050 case 1:
16060 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16070 case 2:
16080 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16090 case 3:
16100 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16110 end select
16120 endif
16130 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16140 if ((y = -1) or (key$ = chr$(30))) then
16150 select case No
16160 case 0:
16170 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16180 case 1:
16190 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16200 case 2:
16210 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16220 case 3:
16230 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16240 end select
16250 endif
16260 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16270 if ((bg = 2) or (key$ = chr$(13))) then
16280 select case No
16290 case 0:
16300 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16310 case 1:
16320 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16330 case 2:
16340 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16350 '3:Top画面に行く
16360 case 3:
16370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16380 end select
16390 endif
16400 if (bg2 = 2) then
16410 play "":pause 200
16420 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16430 goto Help_Select:
16440 endif
16450 '数秘術占い　トップ画面
16460 Kabara_TopScreen:
16470 cls 3:play ""
16480 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16490 gload Gazo$ + "downscreen.png",0,0,800
16500 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16510 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16520 init"kb:4":No=0
16530 color rgb(255,255,255)
16540 print chr$(13)+chr$(13)+chr$(13)
16550 print "番号を選んでください" + chr$(13)
16560 print " :1.数秘術占い" + chr$(13)
16570 print " :2.バーズアイグリット" + chr$(13)
16580 print " :3.相性占い" + chr$(13)
16590 print " :4.トップ画面に戻る" + chr$(13)
16600 color rgb(0,0,0)
16610 locate 1,15:print "1.数秘術占いを選択"
16620 Kabara_TopScreen2:
16630 y = 0:bg = 0:key$ = "":bg2 = 0
16640 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16650 key$ = inkey$
16660 bg = strig(1)
16670 y = stick(1)
16680 bg2 = strig(0)
16690 pause 5
16700 wend
16710 '選択ボタン
16720 'カーソル　と　ジョイパッド　の下
16730 if ((y = 1) or (key$ = chr$(31))) then
16740 select case No
16750 case 2:
16760 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16770 case 3:
16780 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16790 case 0:
16800 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16810 case 1:
16820 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16830 end select
16840 endif
16850 'カーソル　上
16860 if ((y=-1) or (key$=chr$(30))) then
16870 select case No
16880 case 0:
16890 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16900 case 1:
16910 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16920 case 2:
16930 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16940 case 3:
16950 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16960 end select
16970 endif
16980 '決定ボタン
16990 'ジョイパッドの右　or  Enter key
17000 if ((bg = 2) or (key$ = chr$(13))) then
17010 select case No
17020 case 0:
17030 '1.数秘術占い
17040 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17050 case 3:
17060 '4.メイン画面にいく
17070 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17080 case 1:
17090 '2.バースアイグリッド
17100 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
17110 case 2:
17120 '3.相性占い
17130 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17140 end select
17150 endif
17160 if (bg2 = 2) then
17170 play "":pause 200
17180 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17190 goto Kabara_TopScreen2:
17200 endif
17210 '1.バースアイグリット　名入力
17220 Inputname1:
17230 cls 3:init"kb:4":font 48
17240 bg=0:key$="":y=0:No=-1
17250 gload Gazo$ + "Selection.png",1,10,100
17260 'Line 1:☓
17270 'A:選択肢
17280 sp_def 15,(50,250),16,16
17290 'B:選択肢
17300 sp_def 16,(200,250),16,16
17310 'C:選択肢
17320 sp_def 17,(350,250),16,16
17330 'D:選択肢
17340 sp_def 18,(500,250),16,16
17350 'E:選択肢
17360 sp_def 19,(630,250),16,16
17370 'F:選択肢
17380 sp_def 20,(780,250),16,16
17390 'G:選択肢
17400 sp_def 21,(930,250),16,16
17410 'Line 2:☓
17420 'H:選択肢
17430 sp_def 22,(50,345),16,16
17440 'I:選択肢
17450 sp_def 23,(200,345),16,16
17460 'J:選択肢
17470 sp_def 24,(350,345),16,16
17480 'K:選択肢
17490 sp_def 25,(500,345),16,16
17500 'L:選択肢
17510 sp_def 26,(630,345),16,16
17520 'M:選択肢
17530 sp_def 27,(780,345),16,16
17540 'N:選択肢
17550 sp_def 28,(930,345),16,16
17560 'Line 3:☓
17570 'O:選択肢
17580 sp_def 29,(50,440),16,16
17590 'P:選択肢
17600 sp_def 30,(200,440),16,16
17610 'Q:選択肢
17620 sp_def 31,(350,440),16,16
17630 'R:選択肢
17640 sp_def 32,(500,440),16,16
17650 'S:選択肢
17660 sp_def 33,(630,440),16,16
17670 'T:選択肢
17680 sp_def 34,(780,440),16,16
17690 'U:選択肢
17700 sp_def 35,(930,440),16,16
17710 'Line 4:◯
17720 'V:選択肢
17730 sp_def 36,(50,535),16,16
17740 'W:選択肢
17750 sp_def 37,(200,535),16,16
17760 'X:選択肢
17770 sp_def 38,(350,535),16,16
17780 'Y:選択肢
17790 sp_def 39,(500,535),16,16
17800 'Z:選択肢
17810 sp_def 40,(630,535),16,16
17820 'Ok:選択肢
17830 sp_def 41,(780,535),16,16
17840 'sp_def 42,(930,535),16,16
17850 'Line 1
17860 'A
17870 sp_on 15,0
17880 'B
17890 sp_on 16,0
17900 'C
17910 sp_on 17,0
17920 'D
17930 sp_on 18,0
17940 'E
17950 sp_on 19,0
17960 'F
17970 sp_on 20,0
17980 'G
17990 sp_on 21,0
18000 'Line 1
18010 'Line 2
18020 'H
18030 sp_on 22,0
18040 'I
18050 sp_on 23,0
18060 'J
18070 sp_on 24,0
18080 'K
18090 sp_on 25,0
18100 'L
18110 sp_on 26,0
18120 'M
18130 sp_on 27,0
18140 'N
18150 sp_on 28,0
18160 'Line 2
18170 'Line 3
18180 'O
18190 sp_on 29,0
18200 'P
18210 sp_on 30,0
18220 'Q
18230 sp_on 31,0
18240 'R
18250 sp_on 32,0
18260 'S
18270 sp_on 33,0
18280 'T
18290 sp_on 34,0
18300 'U
18310 sp_on 35,0
18320 'Line 3
18330 'Line 4
18340 'V
18350 sp_on 36,0
18360 'W
18370 sp_on 37,0
18380 'X
18390 sp_on 38,0
18400 'Y
18410 sp_on 39,0
18420 'Z
18430 sp_on 40,0
18440 'Ok
18450 sp_on 41,1
18460 'Line 4
18470 'sp_on 42,1
18480 'Line 1
18490 'sp_put 15,(50,250),0,0
18500 'sp_put 16,(200,250),0,0
18510 'sp_put 17,(350,250),0,0
18520 'sp_put 18,(500,250),0,0
18530 'sp_put 19,(630,250),0,0
18540 'sp_put 20,(780,250),0,0
18550 'sp_put 21,(930,250),0,0
18560 'Line 2
18570 'sp_put 22,(50,345),0,0
18580 'sp_put 23,(200,345),0,0
18590 'sp_put 24,(350,345),0,0
18600 'sp_put 25,(500,345),0,0
18610 'sp_put 26,(630,345),0,0
18620 'sp_put 27,(780,345),0,0
18630 'sp_put 28,(930,345),0,0
18640 'Line 3
18650 'sp_put 29,(50,440),0,0
18660 'sp_put 30,(200,440),0,0
18670 'sp_put 31,(350,440),0,0
18680 'sp_put 32,(500,440),0,0
18690 'sp_put 33,(630,440),0,0
18700 'sp_put 34,(780,440),0,0
18710 'sp_put 35,(930,440),0,0
18720 'Line 4
18730 'sp_put 36,(50,535),0,0
18740 'sp_put 37,(200,535),0,0
18750 'sp_put 38,(350,535),0,0
18760 'sp_put 39,(500,535),0,0
18770 'sp_put 40,(630,535),0,0
18780 sp_put 41,(780,535),0,0
18790 'sp_put 42,(930,536),0,0
18800 gload Gazo$ + "Screen1.png",0,0,0
18810 color rgb(255,255,255)
18820 locate 1,3
18830 print "名前の姓をアルファベットで入力してください"
18840 locate 1,5
18850 print " A  B  C  D  E  F  G"
18860 locate 1,7
18870 print " H  I  J  K  L  M  N"
18880 locate 1,9
18890 print " O  P  Q  R  S  T  U"
18900 locate 1,11
18910 print " V  W  X  Y  Z  Ok"
18920 locate 1,15:color rgb(0,0,0)
18930 print "実装未完全"
18940 select_name1:
18950 bg = 0:y = 0:key$ = "":y2=0:init"kb:4"
18960 '有効ボタン
18970 '1.決定ボタン(bg:2)
18980 '2.Enter Key
18990 '3.カーソル上 (chr$(31))
19000 '4.カーソル　左 (chr$(29))
19010 '5.ジョイパッド　上 (y:1)
19020 '6:ジョイパッド　左 (y2:-1)
19030 '7:ジョイパッド　下 (y:-1)
19040 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19050 key$ = inkey$
19060 'ジョイパッドの決定:bg
19070 bg = strig(1)
19080 y = stick(1)
19090 y2 = stick(0)
19100 pause 200
19110 wend
19120 '====================================
19130 'Birds Eye Grid 名前入力
19140 '入力スタイル　アルファベット入力
19150 'sp_on:　スプライトのオンオフ
19160 'sp_put :表示位置
19170 'No:ボタン番号
19180 '====================================
19190 'カーソルで下に行く
19200 if ((y=-1) or (key$=chr$(31))) then
19210 select case No
19220 '1.Ok ボタン
19230 'sp_on スプライトのオンオフ
19240 'sp_put スプライトを表示
19250 case -1:
19260 '1.アルファベット　入力ボタン
19270 '実装未完全なので終了
19280  'Ok → T ○ :No:20=T
19290  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19300  'T  → M ○
19310 case 20:
19320   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19330  'M  →　F ○
19340 case 13:
19350   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19360  'F  → Ok
19370 case 6:
19380   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19390 end select
19400 endif
19410 '2.決定ボタン
19420 if ((key$ = chr$(13)) OR  (bg = 2)) then
19430 select case No
19440 case -1:
19450      'スプライトをOFFにする
19460      sp_on 41,0
19470 end select
19480 endif
19490 '3.カーソル　左
19500 if (key$ = chr$(29) or (y2 =-1)) then
19510 select case No
19520 'Line 4
19530 'Line 4
19540 '1.
19550 'Z:-1 :Ok ボタン
19560 'Ok → Z
19570 case -1:
19580      'Ok →　Z
19590      'Ok ボタン OFF,Z Button ON
19600      'No=26:Z
19610      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19620 '2.
19630 '26:Zボタン Z→ Y
19640 case 26:
19650      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19660 '3.
19670 '25:Yボタン  Y → X
19680 case 25:
19690      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19700 '4
19710 '24:Xボタン X → W
19720 case 24:
19730      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19740 '23:Wボタン X → W
19750 '5
19760 case 23:
19770 '22:Vボタン W → V
19780      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19790 case 22:
19800 '-1:V→ Ok
19810      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19820 'Line 3
19830 case 20:
19840 '33:T34  → S:33 :◯
19850     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19860 case 19:
19870 '32:S:33 → R:32 :◯
19880     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19890 case 18:
19900 '31:R:32 → Q:31 :◯
19910     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19920 '30:O → P :◯
19930 case 17:
19940 '30:Q:31 → P:30 :◯
19950     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19960 case 16:
19970 '29:P:30 → O:29 :◯
19980     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
19990 case 15:
20000 '28:O:29 → U:21  :◯
20010  'O:OFF,U:ON
20020     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20030 '27:U:21 → T:20  :◯
20040 case 21:
20050 'U:OFF:T:ON
20060     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20070 'Line 2
20080 '26:M:13 → L:12 : ○
20090 case 13:
20100  'M:OFF,L:ON
20110    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20120 '25:L:12 → K:11 : ○
20130 case 12:
20140    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20150 '24:K:11 → J:10 : ○
20160 case 11:
20170    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20180 '23:J:10 → I:9  : ○
20190 case 10:
20200    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20210 '22:I:9 → H:8    :○
20220 case 9:
20230     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20240 '21:H:8 → N:14:   :○
20250 case 8:
20260     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20270 '20:N:14 → M:13:   :○
20280 case 14:
20290     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20300 '●.Line 1:
20310 '19:F:20 → E:19 : ☓
20320 'F:OFF,E:ON
20330 case 6:
20340     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20350 '18:E → D
20360 'E:OFF,D:ON
20370 case 5:
20380     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20390 '17:D → C
20400 'D:OFF,C:ON
20410 case 4:
20420      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20430 case 3:
20440      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20450 case 2:
20460      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20470 case 1:
20480      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20490 case 7:
20500      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20510 end select
20520 endif
20530 '上から下の方向
20540 if ((key$ = chr$(31)) or  (y = 1)) then
20550 select case No
20560 '●.1
20570 '1:A→H
20580 case 1:
20590       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20600 '2:H→O
20610 case 8:
20620       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20630 '3:O→V
20640 case 15:
20650       No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20660 '4:V→A
20670 case 22:
20680      No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20690 '●.2
20700 '5.B→I
20710 case 2:
20720      No=9:sp_on 16,0:sp_on 23,1:sp_put 16,(200,250),0,0:goto select_name1:
20730 '6.I→P
20740 '7.P→W
20750 '8.W→B
20760 '●.3
20770 '9.C→J
20780 '10.J→Q
20790 '11.Q→X
20800 '12.X→C
20810 '●.4
20820 '13.D→K
20830 '14.K→R
20840 '15.R→Y
20850 '16.Y→D
20860 '●.5
20870 '●.6
20880 '●.7
20890 '25.G→N
20900 '26.N→U
20910 '27.U→G
20920 end select
20930 endif
20940 'gload Gazo$ + "Input_Birtheye2.png",0,0,0
20950 'color rgb(255,255,255)
20960 'locate 1,2:print "名前をアルファベットで入れてください"
20970 'color rgb(0,0,0)
20980 'locate 1,5:Input "名前（姓の部分）:",name1$
20990 '27.U→G
21000 'locate 1,5:print "Hit any key"
21010 'n1 = len(name1$)
21020 'if (n1 < 11) then
21030 'for i=1 to n1
21040 'buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21050 'next i
21060 'endif
21070 'if b$=chr$(13) then goto Inputname2:
21080 '2.グリッドアイ　姓の入力
21090 end
21100 Inputname2:
21110 cls 3:init"kb:2":font 48
21120 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21130 color rgb(255,255,255)
21140 locate 1,2:print "名前をアルファベットで入れてください"
21150 color rgb(0,0,0)
21160 locate 1,5:Input "名前(名の部分):",name2$
21170 n2 = len(name2$)
21180 for i=1 to n2
21190 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
21200 next i
21210 '計算領域
21220 Complate:
21230 'name1
21240 for i=0 to 25
21250 for n=1 to len(name1$)
21260 if (buf_chart$(i,0) = buf_name1$(n-1)) then
21270 b = val(buf_chart$(i,1))
21280 buffer(b-1) = buffer(b-1) + 1
21290 endif
21300 next n
21310 next i
21320 'name2
21330 for i=0 to 25
21340 for n=1 to len(name2$)
21350 if (buf_chart$(i,0) = buf_name2$(n-1)) then
21360 c = val(buf_chart$(i,1))
21370 buffer(c - 1) = buffer(c - 1) + 1
21380 endif
21390 next n
21400 next i
21410 '結果表示領域
21420 Result_Birtheye1:
21430 cls 3:init"kb:4":No=0
21440 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
21450 gload Gazo$ + "downscreen.png",0,0,800
21460 color rgb(255,255,255)
21470 '1の表示
21480 locate 3,14:print buffer(0);
21490 '2の表示
21500 locate 3,9:print buffer(1);
21510 '3の表示
21520 locate 3,5:print buffer(2);
21530 '4の表示
21540 locate 10,14:print buffer(3);
21550 '5の表示
21560 locate 10,9:print buffer(4);
21570 '6の表示
21580 locate 10,5:print buffer(5);
21590 '7の表示
21600 locate 15,14:print buffer(6);
21610 '8の表示
21620 locate 15,9:print buffer(7);
21630 '9の表示
21640 locate 15,5:print buffer(8);
21650 'name を大文字に変換
21660 locate 5,3:print ucase$(name1$ + name2$)
21670 color rgb(0,0,0)
21680 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
21690 bg=0:key$="":bg2=0
21700 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
21710 'Enterと決定ボタン
21720 key$ = inkey$
21730 bg = strig(1)
21740 bg2=strig(0)
21750 pause 200
21760 wend
21770 if ((bg=2) or (key$=chr$(13))) then
21780 'データーをクリアしてトップ画面に行く
21790 'for i=0 to 8
21800 'buffer(i)=0
21810 'next i
21820 'for n=0 to 9
21830 'buf_name1$(n) = ""
21840 'buf_name2$(n) = ""
21850 'next n
21860 'Topに行く
21870 'goto Main_Screen:
21880 '次へ
21890 goto BirdsEye_Result2:
21900 endif
21910 if (bg2=2) then
21920 'データーをクリアする
21930 for i=0 to 8
21940 buffer(i)=0
21950 next i
21960 for n=0 to 9
21970 buf_name1$(n)=""
21980 buf_name2$(n)=""
21990 next n
22000 goto Inputname1:
22010 endif
22020 'goto Result_Birtheye1:
22030 'Result_Birtheye2:
22040 'cls 3:color rgb(255,255,255)
22050 'end
22060 'Memory 消去
22070 '
22080 '横のフォーカスライン
22090 BirdsEye_Result2:
22100 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22110 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
22120 Forcus1_buffer$(2)="○"
22130 else
22140 Forcus1_buffer$(2)="☓"
22150 endif
22160 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
22170 Forcus1_buffer$(1)="○"
22180 else
22190 Forcus1_buffer$(1) = "☓"
22200 endif
22210 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
22220 Forcus1_buffer$(0)="○"
22230 else
22240 Forcus1_buffer$(0)="☓"
22250 endif
22260 gload Gazo$ + "Screen1.png",0,0,0
22270 color rgb(255,0,0):
22280 locate 1,1
22290 print "バーズアイグリッド(フォーカスライン1)"
22300 color rgb(255,255,255)
22310 locate 1,3:
22320 print "●.横のフォーカスライン"
22330 locate 1,5
22340 print "1.切れ者ライン:"+Forcus1_buffer$(2)
22350 locate 1,7
22360 print "2.調停者ライン:"+Forcus1_buffer$(1)
22370 locate 1,9
22380 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
22390 color rgb(0,0,0)
22400 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22410 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
22420 key$=inkey$
22430 bg=strig(1)
22440 bg2=strig(0)
22450 pause 200
22460 wend
22470 if ((bg=2) or (key$=chr$(13))) then
22480 goto BirdsEye_Result3:
22490 endif
22500 if (bg2=2) then
22510 goto Main_Screen:
22520 endif
22530 BirdsEye_Result3:
22540 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22550 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
22560 Forcus2_buffer$(2)="○"
22570 else
22580 Forcus2_buffer$(2)="☓"
22590 endif
22600 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
22610 Forcus2_buffer$(1)="○"
22620 else
22630 Forcus2_buffer$(1) = "☓"
22640 endif
22650 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
22660 Forcus2_buffer$(0)="○"
22670 else
22680 Forcus2_buffer$(0)="☓"
22690 endif
22700 gload Gazo$ + "Screen1.png",0,0,0
22710 color rgb(255,0,0):
22720 locate 1,1
22730 print "バーズアイグリッド(フォーカスライン2)"
22740 color rgb(255,255,255)
22750 locate 1,3:
22760 print "●.縦のフォーカスライン"
22770 locate 1,5
22780 print "1.表現者ライン:" + Forcus2_buffer$(2)
22790 locate 1,7
22800 print "2.司令塔ライン:" + Forcus2_buffer$(1)
22810 locate 1,9
22820 print "3.指導者ライン:" + Forcus2_buffer$(0)
22830 color rgb(0,0,0)
22840 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22850 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
22860 key$=inkey$
22870 bg=strig(1)
22880 bg2=strig(0)
22890 pause 200
22900 wend
22910 if ((bg = 2) or (key$ = chr$(13))) then
22920 goto BirdsEye_Result4:
22930 endif
22940 if (bg2=2) then
22950 goto Main_Screen:
22960 endif
22970 BirdsEye_Result4:
22980 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22990 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
23000 Forcus3_buffer$(1) = "○"
23010 else
23020 Forcus3_buffer$(1) = "☓"
23030 endif
23040 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23050 Forcus3_buffer$(0) = "○"
23060 else
23070 Forcus3_buffer$(0) = "☓"
23080 endif
23090 gload Gazo$ + "Screen1.png",0,0,0
23100 color rgb(255,0,0):
23110 locate 1,1
23120 print "バーズアイグリッド(フォーカスライン3)"
23130 color rgb(255,255,255)
23140 locate 1,3:
23150 print "●.斜めのフォーカスライン"
23160 locate 1,5
23170 print "1.成功者ライン:"+Forcus3_buffer$(1)
23180 locate 1,7
23190 print "2.セレブライン:"+Forcus3_buffer$(0)
23200 color rgb(0,0,0)
23210 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
23220 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23230 key$ = inkey$
23240 bg = strig(1)
23250 bg2 = strig(0)
23260 pause 200
23270 wend
23280 if ((bg=2) or (key$=chr$(13))) then
23290  goto Result_Birtheye1:
23300 endif
23310 if (bg2=2) then
23320 'データークリア
23330 for i=0 to 8
23340  buffer(i) = 0
23350 next i
23360  goto Main_Screen:
23370 endif
23380 References1:
23390 cls 3:key$ = "":bg = 0:play "":font 48-16
23400 gload Gazo$ + "Reference1_20230703.png",0,0,0
23410 print chr$(13)+chr$(13)+chr$(13)
23420 color rgb(0,0,0)
23430 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
23440 print "Author:carol Adrinne,PhD"+chr$(13)
23450 print "出版社:幻冬舎" + chr$(13)
23460 print "HP:www.carolAdrienne.jp/"+chr$(13)
23470 print "ISBN:978-4-344-01394-0"+chr$(13)
23480 print "定価:1500円 + 税"+chr$(13)
23490 color rgb(255,255,255)
23500 locate 1,23
23510 print "ジョイパッド右：次へ"
23520 while (key$ <> chr$(13) and bg <> 2)
23530 bg = strig(1)
23540 key$ = inkey$
23550 wend
23560 '
23570 if ((bg = 2) or (key$ = chr$(13))) then
23580 pause 200:goto References2:
23590 endif
23600 'ユダヤの秘儀 カバラ大占術
23610 References2:
23620 cls 3:play "":bg = 0:key$ = ""
23630 gload Gazo$ + "Reference2_20230703.png",0,0,0
23640 '参考文献２
23650 'カバラ大占術
23660 print chr$(13) + chr$(13) + chr$(13)
23670 color  rgb(0,0,0):font 48-16
23680 locate 1,3
23690 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
23700 print "著者：浅野　八郎" + chr$(13)
23710 print "出版社:NON BOOK" + chr$(13)
23720 print "ISBN:4-396-10364-6" + chr$(13)
23730 print "定価:829円 + 税"
23740 color rgb(255,255,255)
23750 locate 1,23
23760 print "ジョイパッド右：トップへ行く"
23770 while ((key$ <> chr$(13)) and (bg <> 2))
23780 bg = strig(1)
23790 key$ = inkey$
23800 wend
23810 if ((bg = 2) or (key$ = chr$(13))) then
23820 pause 200:goto Main_Screen:
23830 endif
23840 end
23850 '1.数秘術　トップ画面
23860 Kabara_First_Top:
23870 cls 3:color rgb(255,255,255):play ""
23880 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
23890 gload Gazo$ + "downscreen.png",0,0,800
23900 No=0:init"kb:4"
23910 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
23920 print chr$(13);chr$(13)
23930 color rgb(255,255,255)
23940 locate 3,4:No=0
23950 print "番号選んでください" + chr$(13)
23960 print " :1.数秘術占い" + chr$(13)
23970 print " :2.トップ画面に戻る" + chr$(13)
23980 color rgb(0,0,0)
23990 sp_on 0,1
24000 locate 1,15:print "1.数秘術番号を求めるを選択"
24010 'KeyBord:true
24020 'Joy Pad:true
24030 '上、下:true
24040 '
24050 'ｂｇ：決定ボタン
24060 'カーソル　上
24070 'カーソル　下
24080 Kabara_First_Top2:
24090 key$ = "":bg = 0:y = 0:
24100 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
24110 key$ = inkey$
24120 bg = strig(1)
24130 y = stick(1)
24140 'PauseでCPUを休める
24150 pause 5
24160 wend
24170 '1.カーソル　下 処理 chr$(31)
24180 'カーソル　下
24190 if ((key$ = chr$(31)) or (y = 1)) then
24200 select case No
24210 '
24220 case 1:
24230 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
24240 case 0:
24250 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24260 'case 2:
24270 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
24280 end select
24290 endif
24300 '2.カーソル　上 処理 chr$(30)
24310 if ((key$ = chr$(30)) or (y = -1)) then
24320 select case No
24330 case 0:
24340 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24350 case 1:
24360 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
24370 'case 2:
24380 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
24390 end select
24400 endif
24410 '3.決定 処理  bg:2 or Enter key:chr$(13)
24420 if ((bg = 2) or (key$ = chr$(13))) then
24430 select case No
24440 case 0:
24450 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
24460 goto Kabara_TopScreen:
24470 'case 1:
24480 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
24490 case 1:
24500 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
24510 end select
24520 endif
24530 '
24540 'Kabara 相性占い トップ画面
24550 Kabara_Aishou_Top:
24560 cls 3:y=0:key$="":bg=0:No=0
24570 play ""
24580 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
24590 gload Gazo$ + "downscreen.png",0,0,800
24600 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
24610 print chr$(13) + chr$(13)
24620 locate 0,4:color rgb(255,255,255)
24630 'print "Ok"
24640 '
24650 print "番号を選んでください" + chr$(13)
24660 print " :1.男女2人の相性(未実装)" + chr$(13)
24670 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
24680 print " :3.トップ画面に戻る" + chr$(13)
24690 sp_on 0,1:sp_on 1,0:sp_on 2,0
24700 color rgb(0,0,0)
24710 locate 1,15:print "1.男女2人の相性占いを選択"
24720 Kabara_Aishou_Top2:
24730 key$ = "":y = 0:bg = 0:
24740 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
24750 'ジョイパッド(右) ,十字キー (上下)
24760 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
24770 y = stick(1)
24780 key$ = inkey$
24790 bg = strig(1)
24800 pause 5
24810 wend
24820 'カーソル　下 or 十字キー　下
24830 if ((key$ = chr$(31)) or (y = 1)) then
24840 select case No
24850 '選択肢　1 - 2に変更
24860 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
24870 'ok
24880 case 0:
24890 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
24900 '選択肢　2 - 3に変更
24910 case 1:
24920 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
24930 'リリース時 case 2コメント解除
24940 case 2:
24950 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
24960 case else:
24970 goto Kabara_Aishou_Top2:
24980 end select
24990 endif
25000 '十字キー　上　、カーソル　上
25010 if ((key$ = chr$(30)) or (y = -1)) then
25020 select case No
25030 case 0:
25040 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25050 case 1:
25060 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
25070 case 2:
25080 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25090 case else:
25100 goto Kabara_Aishou_Top2:
25110 end select
25120 endif
25130 '十字キー　上下:選択
25140 'ジョイパッド 右:決定
25150 if ((bg = 2) or (key$ = chr$(13))) then
25160 select case No
25170 '1.男女の相性
25180 case 0:
25190 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
25200 '2ビジネスの相性
25210 case 1:
25220 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
25230 case 2:
25240 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
25250 end select
25260 endif
25270 'ビジネスの相性　
25280 '1.1人目のビジネスの相性　名前入力　1人目
25290 Business_Aishou_Input_1_parson:
25300 No=0:color RGB(255,255,255)
25310 cls 3:init "kb:2"
25320 gload Gazo$ + "Screen1.png",0,0,0
25330 gload Gazo$ + "downscreen.png",0,0,800
25340 play "":color rgb(255,0,0):name$ = ""
25350 locate 0,1
25360 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
25370 color rgb(255,255,255):
25380 locate 0,3
25390 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
25400 print "入れてください" + chr$(13)
25410 locate 0,15:color rgb(0,0,0)
25420 Input "1人目の名前:",name$
25430 'color rgb(0,0,0)
25440 'locate 0,13:print "                                     "
25450 'locate 0,13:print "1人目の名前を入力してエンターキー":
25460 'buffer_name$(0):1人目の名前
25470 buffer_name$(0) = name$:
25480 goto Business_Aishou_Input_2_Parson:
25490 '2.2人目のビジネスの相性 名前入力 2人目
25500 Business_Aishou_Input_2_Parson:
25510 cls 3:init "kb:2":name$ = "":No=0
25520 gload Gazo$ + "Screen1.png",0,0,0
25530 gload Gazo$ + "downscreen.png",0,0,800
25540 color rgb(255,0,0)
25550 'Title
25560 locate 0,1
25570 print "ビジネスの相性　2人目"
25580 locate 0,3
25590 color rgb(255,255,255)
25600 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
25610 print "入れてください" + chr$(13)
25620 locate 0,15:color rgb(0,0,0)
25630 Input "2人目の名前:",name$
25640 'color rgb(0,0,0)
25650 'locate 0,15:print "                                              "
25660 'locate 0,15:print "2人目の名前を入力してエンター ":
25670 '2人目
25680 '2人目の名前を入れるに代入
25690 buffer_name$(1) = name$:
25700 goto Select_jyoushi:
25710 '3.上司の選択
25720 Select_jyoushi:
25730 cls 3:gload Gazo$ + "Screen1.png",0,0,0
25740 gload Gazo$ + "downscreen.png",0,0,800
25750 init "kb:4":No=0
25760 color rgb(0,0,255)
25770 locate 1,1
25780 print "上司の選択"
25790 color rgb(255,255,255)
25800 locate 0,4:print "名前から上司の方を選んでください"
25810 locate 0,6
25820 print " :";buffer_name$(0);"が上 司";chr$(13)
25830 locate 0,8
25840 print " :";buffer_name$(1);"が上 司";chr$(13)
25850 locate 0,15:
25860 print "                                     "
25870 locate 0,15:color rgb(0,0,0)
25880 print "上司の方を選んで右の丸ボタン"
25890 sp_on 0,1:sp_on 1,0:sp_on 2,0
25900 Select_jyoushi2:
25910 'ここでNo=0をおいてはいけない
25920 y=0:key$="":bg=0:
25930 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
25940 y = stick(1)
25950 key$ = inkey$
25960 bg = strig(1)
25970 pause 5
25980 wend
25990 '1.カーソル下の処理　or 十字キーの下処理
26000 if ((key$ = chr$(31)) or (y = 1)) then
26010 select case No
26020 case 0:
26030 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26040 case 1:
26050 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26060 end select
26070 endif
26080 '2.カーソル上処理　or 十字キーの上の処理
26090 if ((key$ = chr$(30)) or (y = -1)) then
26100 select case No
26110 case 0:
26120 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
26130 case 1:
26140 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
26150 end select
26160 endif
26170 if ((key$ = chr$(13)) or (bg = 2)) then
26180 select case No
26190 case 0:
26200 '上司(name1)を配列に代入
26210 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26220 case 1:
26230 '上司（name2)を配列に代入
26240 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26250 end select
26260 endif
26270 '3.決定ボタン　Enter or 右の丸ボタン
26280 '1.誕生日入力
26290 '1-1.生まれた年を入力
26300 'Jyoushi_born_year:
26310 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
26320 '---------------------------------------------'
26330 '誕生日入力(生れた年代)
26340 Jyoushi_Input_Seireki:
26350 'buf_Jyoushi_Born_Year:上司の生まれた年代
26360 'buf_Jyoushi_Born_Day(0) = born_year
26370 cls 3:play "":count=0:count2=0
26380 init"kb:4"
26390 'No=-1:Okのとき
26400 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
26410 for i=0 to 3
26420 buf_Jyoushi_Born_Day(i)=0
26430 next i
26440 gload Gazo$ + "Screen1.png",0,0,0
26450 gload Gazo$ + "downscreen.png",0,0,800
26460 'Init"kb:2"
26470 '音声ファイル再生 2023.06.07
26480 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
26490 font 48
26500 locate 0,1
26510 '文字色：黒　 color rgb(0,0,0)
26520 color rgb(255,255,255)
26530 print "上司の生まれた年代を入れて下さい" + chr$(13)
26540 color rgb(255,255,255)
26550 locate 1,3
26560 print "上司の生まれた年代(西暦4桁):";buf_year$
26570 color rgb(255,255,255)
26580 'locate 4,6:print ":7"
26590 'locate 9,6:print ":8"
26600 'locate 12,6:print ":9"
26610 locate 4,6
26620 print ":7  :8  :9" + chr$(13)
26630 color rgb(255,255,255)
26640 locate 4,8
26650 print ":4  :5  :6" + chr$(13)
26660 color rgb(255,255,255)
26670 locate 4,10
26680 print ":1  :2  :3" + chr$(13)
26690 locate 4,12
26700 print "    :0"
26710 locate 12,12
26720 color rgb(0,0,255)
26730 print ":Ok"
26740 sp_on 4,0: sp_on 5,0:sp_on 6,0
26750 sp_on 7,0:sp_on 8,0:sp_on 9,0
26760 sp_on 10,0:sp_on 11,0:sp_on 12,0
26770 sp_on 13,0:sp_on 14,1
26780 Jyoushi_Input_Seireki2:
26790 key$="":bg=0:y=0:y2=0:bg2=0:
26800 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
26810 key$ = inkey$
26820 bg = strig(1)
26830 y = stick(1)
26840 y2 = stick(0)
26850 bg2=strig(0)
26860 pause 5
26870 wend
26880 '十字キー　ここから
26890 '上の矢印　または、十字キー上
26900 if ((y = -1) or (key$ = chr$(30))) then
26910 select case No
26920 'No=-1:okのとき:初期の状態
26930 '0kボタンから３に移動
26940 '上に行く 処理
26950 case -1:
26960 No=3:sp_on 12,1:sp_on 14,0
26970 pause 200:goto Jyoushi_Input_Seireki2:
26980 '選択肢:3
26990 '3ボタンから 6に移動
27000 case 3:
27010 No=6:sp_on 12,0:sp_on 11,1
27020 pause 200:goto Jyoushi_Input_Seireki2:
27030 '6ボタンから ９に移動
27040 case 6:
27050 No=9:sp_on 10,1:sp_on 11,0
27060 pause 200:goto Jyoushi_Input_Seireki2:
27070 '6ボタンから ９に移動　ここまで
27080 '9で上を押して何もしない
27090 case 9:
27100 '何もしない
27110 No=9
27120 pause 200:goto Jyoushi_Input_Seireki2:
27130 '9で上を押しても何もしない　ここまで
27140 '上　 0ボタンから2ボタン
27150 'sp_on 6,1:1
27160 'sp_on 8,1:5
27170 'sp_on 7,1:7
27180 case 0:
27190 No=2:sp_on 13,0:sp_on 9,1:
27200 pause 200:goto Jyoushi_Input_Seireki2:
27210 '上  0ボタンから2ボタン　ここまで
27220 '2から５になる 上
27230 case 2:
27240 No=5:sp_on 8,1:sp_on 9,0:
27250 pause 200:goto Jyoushi_Input_Seireki2:
27260 case 5:
27270 No=8:sp_on 7,1:sp_on 8,0
27280 pause 200:goto Jyoushi_Input_Seireki2:
27290 case 8:
27300 pause 200:goto Jyoushi_Input_Seireki2:
27310 case 1:
27320 No=4:sp_on 5,1:sp_on 6,0
27330 pause 200:goto Jyoushi_Input_Seireki2:
27340 case 4:
27350 No=7:sp_on 4,1:sp_on 5,0
27360 pause 200:goto Jyoushi_Input_Seireki2:
27370 case 7:
27380 pause 200:goto Jyoushi_Input_Seireki2:
27390 end select
27400 endif
27410 '左３　ここまで
27420 '下の矢印
27430 '中央 2
27440 if ((y=1) or (key$ = chr$(31))) then
27450 select case No
27460 '9から６に下げる
27470 case 9:
27480 No=6:sp_on 11,1:sp_on 10,0
27490 pause 200:goto Jyoushi_Input_Seireki2:
27500 '6から３に下げる
27510 case 6:
27520 No=3:sp_on 12,1:sp_on 11,0
27530 pause 200:goto Jyoushi_Input_Seireki2:
27540 '3から０ｋに変える
27550 case 3:
27560 No=-1:sp_on 14,1:sp_on 12,0
27570 pause 200:goto Jyoushi_Input_Seireki2:
27580 'Okから下のボタンを押しても何もしない
27590 case -1:
27600 pause 200:goto Jyoushi_Input_Seireki2:
27610 case 8:
27620 No=5:sp_on 8,1:sp_on 7,0
27630 pause 200:goto Jyoushi_Input_Seireki2:
27640 case 5:
27650 No=2:sp_on 9,1:sp_on 8,0
27660 pause 200:goto Jyoushi_Input_Seireki2:
27670 case 2:
27680 No=0:sp_on 13,1:sp_on 9,0
27690 pause 200:goto Jyoushi_Input_Seireki2:
27700 case 0:
27710 pause 200:goto Jyoushi_Input_Seireki2:
27720 case 7:
27730 No=4:sp_on 5,1:sp_on 4,0
27740 pause 200:goto Jyoushi_Input_Seireki2:
27750 case 4:
27760 No=1:sp_on 6,1:sp_on 5,0
27770 pause 200:goto Jyoushi_Input_Seireki2:
27780 case 1:
27790 pause 200:goto Jyoushi_Input_Seireki2:
27800 end select
27810 endif
27820 '左へボタン 十字キー　左　or 　カーソル左
27830 if ((y2 = -1) or (key$ = chr$(29))) then
27840 select case No
27850 'Ok ボタン  Okから　左　０に行く
27860 case -1:
27870 No=0:sp_on 13,1:sp_on 14,0
27880 pause 200:goto Jyoushi_Input_Seireki2:
27890 '0 ボタン  左　何もしない
27900 case 0:
27910 pause 200:goto Jyoushi_Input_Seireki2:
27920 case 3:
27930 No=2:sp_on 9,1:sp_on 12,0:
27940 pause 200:goto Jyoushi_Input_Seireki2:
27950 case 2:
27960 No=1:sp_on 6,1:sp_on 9,0:
27970 pause 200:goto Jyoushi_Input_Seireki2:
27980 case 1:
27990 pause 200:goto Jyoushi_Input_Seireki2:
28000 case 6:
28010 No=5:sp_on 8,1:sp_on 11,0
28020 pause 200:goto Jyoushi_Input_Seireki2:
28030 case 5:
28040 No=4:sp_on 5,1:sp_on 8,0
28050 pause 200:goto Jyoushi_Input_Seireki2:
28060 case 4:
28070 pause 200:goto Jyoushi_Input_Seireki2:
28080 case 9:
28090 No=8:sp_on 7,1:sp_on 10,0
28100 pause 200:goto Jyoushi_Input_Seireki2:
28110 case 8:
28120 No=7:sp_on 4,1:sp_on 7,0
28130 pause 200:goto Jyoushi_Input_Seireki2:
28140 case 7:
28150 pause 200:goto Jyoushi_Input_Seireki2:
28160 end select
28170 endif
28180 '右  十字キー　右　or カーソル　右
28190 if ((y2 = 1) or (key$ = chr$(28))) then
28200 select case No
28210 '0ボタンからokボタン右に移動
28220 case 0:
28230 No=-1:sp_on 14,1:sp_on 13,0
28240 pause 200:goto Jyoushi_Input_Seireki2:
28250 '0ボタンからokボタン 右に移動　ここまで
28260 'OKボタンで右を押して何もしない
28270 case -1:
28280 pause 200:goto Jyoushi_Input_Seireki2:
28290 case 1:
28300 No=2:sp_on 9,1:sp_on 6,0
28310 pause 200:goto Jyoushi_Input_Seireki2:
28320 case 2:
28330 No=3:sp_on 12,1:sp_on 9,0
28340 pause 200:goto Jyoushi_Input_Seireki2:
28350 case 3:
28360 pause 200:goto Jyoushi_Input_Seireki2:
28370 case 4:
28380 No=5:sp_on 8,1:sp_on 5,0
28390 pause 200:goto Jyoushi_Input_Seireki2:
28400 case 5:
28410 No=6:sp_on 11,1:sp_on 8,0
28420 pause 200:goto Jyoushi_Input_Seireki2:
28430 case 7:
28440 No=8:sp_on 7,1:sp_on 4,0
28450 pause 200:goto Jyoushi_Input_Seireki2:
28460 case 8:
28470 No=9:sp_on 10,1:sp_on 7,0
28480 pause 200:goto Jyoushi_Input_Seireki2:
28490 case 9:
28500 pause 200:goto Jyoushi_Input_Seireki2:
28510 case 6:
28520 pause 200:goto Jyoushi_Input_Seireki2:
28530 end select
28540 'Okから右ボタンを押して何もしない ここまで
28550 endif
28560 '十字キー　ここまで
28570 '==============================
28580 'ここから
28590 '==============================
28600 if ((bg=2) or (key$=chr$(13))) then
28610 select case count
28620 case 0:
28630 count = 1
28640 if (No=-1) then
28650 count = 0:No=0
28660 buf_Jyoushi_Born_Day(0) = No
28670 'Okボタンを押したとき
28680 goto Jyoushi_Input_Seireki2:
28690 else
28700 'Okボタン以外が押されたとき
28710 if (No>=1 and No<=2) then
28720 buf_year$="":buf_year$=str$(No) + "***"
28730 buf_year = No:a= No
28740 buf_Jyoushi_Born_Day(0) = No
28750 locate 1,3
28760 color rgb(255,255,255)
28770 print "上司の生まれた年代(西暦4桁):";buf_year$
28780 goto Jyoushi_Input_Seireki2:
28790 else
28800 count=0
28810 ui_msg"数字が範囲外になります。"
28820 buf_year$="":buf_year=0
28830 goto Jyoushi_Input_Seireki2:
28840 endif
28850 endif
28860 case 1:
28870 count = 2
28880 if (No = -1) then
28890 count = 1
28900 goto Jyoushi_Input_Seireki2:
28910 else
28920 buf_year = a * 10 + No
28930 b=buf_year
28940 buf_year$ = str$(buf_year) + "**"
28950 buf_Jyoushi_Born_Day(0)=buf_year
28960 locate 1,3
28970 color rgb(255,255,255)
28980 print "                                                                "
28990 locate 1,3
29000 print "上司の生まれた年代(西暦4桁):" + buf_year$
29010 'if (No = -1) then
29020 'count=1
29030 goto Jyoushi_Input_Seireki2:
29040 endif
29050 case 2:
29060 count=3
29070 if (No=-1) then
29080 count =2
29090 goto Jyoushi_Input_Seireki2:
29100 else
29110 buf_year = b * 10 + No
29120 c=buf_year
29130 buf_year$ = str$(buf_year) + "*"
29140 buf_Jyoushi_Born_Day(0) = buf_year
29150 locate 1,3
29160 color rgb(255,255,255)
29170 print "                                        "
29180 locate 1,3
29190 print "上司の生まれた年代(西暦4桁):";buf_year$
29200 goto Jyoushi_Input_Seireki2:
29210 endif
29220 case 3:
29230 count=4
29240 if (No = -1) then
29250 No=0
29260 goto Jyoushi_Input_Seireki2:
29270 else
29280 buf_year = c * 10 + No
29290 buf_year$ = str$(buf_year)
29300 buf_Jyoushi_Born_Day(0) = buf_year
29310 locate 1,3
29320 color RGB(255,255,255)
29330 print "                                      "
29340 locate 1,3
29350 print "上司の生まれた年代(西暦4桁):";buf_year$
29360 buf_year=val(buf_year$)
29370 'year=val(buf_year$)
29380 'if (No=-1) then
29390 'goto Input_Born_Month:
29400 'else
29410 goto Jyoushi_Input_Seireki2:
29420 endif
29430 case 4:
29440 'bufyear=buf_year
29450 if (No=-1) then
29460 buf_year = val(buf_year$)
29470 buf_Jyoushi_Born_Day(0)=buf_year
29480 sp_on 14,0:No=0
29490 goto Jyoushi_Input_Born_Month:
29500 else
29510 goto Jyoushi_Input_Seireki2:
29520 endif
29530 end select
29540 endif
29550 '===========================
29560 'ここまでを部下のところにコピーする.
29570 '===========================
29580 if (bg2 = 2) then
29590 select case count2
29600 case 0:
29610 if (No = -1) then
29620 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
29630 count=0
29640 locate 1,3
29650 color rgb(255,255,255)
29660 print "                                      "
29670 locate 1,3
29680 print "上司の生まれた年代（西暦4桁):" + buf_year$
29690 goto Jyoushi_Input_Seireki2:
29700 else
29710 '(buf_year=0) then
29720 buf_year=0:buf_year$="****"
29730 locate 1,3
29740 print "                                       "
29750 locate 1,3
29760 print "上司の生まれた年代(西暦4桁):"+buf_year$
29770 goto Jyoushi_Input_Seireki2:
29780 'endif
29790 endif
29800 end select
29810 endif
29820 'Input"上司の生れた年代(4桁,〜2025年):",year
29830 'if year > 2025 then goto Jyoushi_Input_Seireki:
29840 'if year = 123 then cls 3:cls 4:goto Main_Screen:
29850 '"4桁目"
29860 'bufyear4 = fix(year / 1000)
29870 '"3桁目"
29880 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
29890 '"2桁目"
29900 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
29910 '"1桁目"
29920 'bufyear1 = fix((year - ((bufyear4*
29930 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
29940 '2.生まれた月を入力
29950 Jyoushi_Input_Born_Month:
29960 cls 3:play "":count=0:count2=0
29970 'No=-1:Okのとき
29980 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
29990 for i=0 to 1
30000 buf_month(i)=0
30010 next i
30020 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30030 gload Gazo$ + "Screen1.png",0,0,0
30040 gload Gazo$ + "downscreen.png",0,0,800
30050 'Init"kb:4"
30060 '音声ファイル再生 2023.06.07
30070 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30080 font 48
30090 locate 0,1
30100 '文字色：黒　 color rgb(0,0,0)
30110 '文字色:白
30120 color rgb(255,255,255)
30130 print "上司の生まれた月を入れて下さい" + chr$(13)
30140 '文字色:白
30150 color rgb(255,255,255)
30160 locate 1,3
30170 '文字色:白
30180 print "上司の生まれた月(1月~12月):"+buf_Month$
30190 color rgb(255,255,255)
30200 'locate 4,6:print ":7"
30210 'locate 9,6:print ":8"
30220 'locate 12,6:print ":9"
30230 locate 4,6
30240 '文字色:赤
30250 print ":7  :8  :9" + chr$(13)
30260 color rgb(255,255,255)
30270 locate 4,8
30280 print ":4  :5  :6" + chr$(13)
30290 color rgb(255,255,255)
30300 locate 4,10
30310 print ":1  :2  :3" + chr$(13)
30320 locate 4,12
30330 print "    :0"
30340 locate 12,12
30350 color rgb(0,0,255)
30360 print ":Ok"
30370 sp_on 4,0: sp_on 5,0:sp_on 6,0
30380 sp_on 7,0:sp_on 8,0:sp_on 9,0
30390 sp_on 10,0:sp_on 11,0:sp_on 12,0
30400 sp_on 13,0:sp_on 14,1
30410 Jyoushi_Input_Born_Month2:
30420 key$="":bg=0:y=0:y2=0:bg2=0
30430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
30440 key$ = inkey$
30450 bg = strig(1)
30460 y = stick(1)
30470 y2 = stick(0)
30480 bg2 = strig(0)
30490 pause 5
30500 wend
30510 '十字キー　ここから
30520 '上の矢印　または、十字キー上
30530 if ((y = -1) or (key$ = chr$(30))) then
30540 select case No
30550 'No=-1:okのとき:初期の状態
30560 '0kボタンから３に移動
30570 '上に行く 処理
30580 case -1:
30590 No=3:sp_on 12,1:sp_on 14,0
30600 pause 200:goto Jyoushi_Input_Born_Month2:
30610 '選択肢:3
30620 '3ボタンから 6に移動
30630 case 3:
30640 No=6:sp_on 12,0:sp_on 11,1
30650 pause 200:goto Jyoushi_Input_Born_Month2:
30660 '6ボタンから ９に移動
30670 case 6:
30680 No=9:sp_on 10,1:sp_on 11,0
30690 pause 200:goto Jyoushi_Input_Born_Month2:
30700 '6ボタンから ９に移動　ここまで
30710 '9で上を押して何もしない
30720 case 9:
30730 '何もしない
30740 No=9
30750 pause 200:goto Jyoushi_Input_Born_Month2:
30760 '9で上を押しても何もしない　ここまで
30770 '上　 0ボタンから2ボタン
30780 'sp_on 6,1:1
30790 'sp_on 8,1:5
30800 'sp_on 7,1:7
30810 case 0:
30820 No=2:sp_on 13,0:sp_on 9,1:
30830 pause 200:goto Jyoushi_Input_Born_Month2:
30840 '上  0ボタンから2ボタン　ここまで
30850 '2から５になる 上
30860 case 2:
30870 No=5:sp_on 8,1:sp_on 9,0:
30880 pause 200:goto Jyoushi_Input_Born_Month2:
30890 case 5:
30900 No=8:sp_on 7,1:sp_on 8,0
30910 pause 200:goto Jyoushi_Input_Born_Month2:
30920 case 8:
30930 pause 200:goto Input_Born_Month2:
30940 case 1:
30950 No=4:sp_on 5,1:sp_on 6,0
30960 pause 200:goto Jyoushi_Input_Born_Month2:
30970 case 4:
30980 No=7:sp_on 4,1:sp_on 5,0
30990 pause 200:goto Jyoushi_Input_Born_Month2:
31000 case 7:
31010 pause 200:goto Input_Born_Month2:
31020 end select
31030 endif
31040 '左３　ここまで
31050 '下の矢印
31060 '中央 2
31070 if ((y=1) or (key$ = chr$(31))) then
31080 select case No
31090 '9から６に下げる
31100 case 9:
31110 No=6:sp_on 11,1:sp_on 10,0
31120 pause 200:goto Jyoushi_Input_Born_Month2:
31130 '6から３に下げる
31140 case 6:
31150 No=3:sp_on 12,1:sp_on 11,0
31160 pause 200:goto Jyoushi_Input_Born_Month2:
31170 '3から０ｋに変える
31180 case 3:
31190 No=-1:sp_on 14,1:sp_on 12,0
31200 pause 200:goto Jyoushi_Input_Born_Month2:
31210 'Okから下のボタンを押しても何もしない
31220 case -1:
31230 pause 200:goto Jyoushi_Input_Born_Month2:
31240 case 8:
31250 No=5:sp_on 8,1:sp_on 7,0
31260 pause 200:goto Jyoushi_Input_Born_Month2:
31270 case 5:
31280 No=2:sp_on 9,1:sp_on 8,0
31290 pause 200:goto Jyoushi_Input_Born_Month2:
31300 case 2:
31310 No=0:sp_on 13,1:sp_on 9,0
31320 pause 200:goto Jyoushi_Input_Born_Month2:
31330 case 0:
31340 pause 200:goto Jyoushi_Input_Born_Month2:
31350 case 7:
31360 No=4:sp_on 5,1:sp_on 4,0
31370 pause 200:goto Jyoushi_Input_Born_Month2:
31380 case 4:
31390 No=1:sp_on 6,1:sp_on 5,0
31400 pause 200:goto Jyoushi_Input_Born_Month2:
31410 case 1:
31420 pause 200:goto Jyoushi_Input_Born_Month2:
31430 end select
31440 endif
31450 '左へボタン 十字キー　左　or 　カーソル左
31460 if ((y2 = -1) or (key$ = chr$(29))) then
31470 select case No
31480 'Ok ボタン  Okから　左　０に行く
31490 case -1:
31500 No=0:sp_on 13,1:sp_on 14,0
31510 pause 200:goto Jyoushi_Input_Born_Month2:
31520 '0 ボタン  左　何もしない
31530 case 0:
31540 pause 200:goto Jyoushi_Input_Born_Month2:
31550 case 3:
31560 No=2:sp_on 9,1:sp_on 12,0:
31570 pause 200:goto Jyoushi_Input_Born_Month2:
31580 case 2:
31590 No=1:sp_on 6,1:sp_on 9,0:
31600 pause 200:goto Jyoushi_Input_Born_Month2:
31610 case 1:
31620 pause 200:goto Jyoushi_Input_Born_Month2:
31630 case 6:
31640 No=5:sp_on 8,1:sp_on 11,0
31650 pause 200:goto Jyoushi_Input_Born_Month2:
31660 case 5:
31670 No=4:sp_on 5,1:sp_on 8,0
31680 pause 200:goto Jyoushi_Input_Born_Month2:
31690 case 4:
31700 pause 200:goto Jyoushi_Input_Born_Month2:
31710 case 9:
31720 No=8:sp_on 7,1:sp_on 10,0
31730 pause 200:goto Input_Born_Month2:
31740 case 8:
31750 No=7:sp_on 4,1:sp_on 7,0
31760 pause 200:goto Jyoushi_Input_Born_Month2:
31770 case 7:
31780 pause 200:goto Jyoushi_Input_Born_Month2:
31790 end select
31800 endif
31810 '右  十字キー　右　or カーソル　右
31820 if ((y2 = 1) or (key$ = chr$(28))) then
31830 select case No
31840 '0ボタンからokボタン右に移動
31850 case 0:
31860 No=-1:sp_on 14,1:sp_on 13,0
31870 pause 200:goto Jyoushi_Input_Born_Month2:
31880 '0ボタンからokボタン 右に移動　ここまで
31890 'OKボタンで右を押して何もしない
31900 case -1:
31910 pause 200:goto Jyoushi_Input_Born_Month2:
31920 case 1:
31930 No=2:sp_on 9,1:sp_on 6,0
31940 pause 200:goto Jyoushi_Input_Born_Month2:
31950 case 2:
31960 No=3:sp_on 12,1:sp_on 9,0
31970 pause 200:goto Jyoushi_Input_Born_Month2:
31980 case 3:
31990 pause 200:goto Jyoushi_Input_Born_Month2:
32000 case 4:
32010 No=5:sp_on 8,1:sp_on 5,0
32020 pause 200:goto Jyoushi_Input_Born_Month2:
32030 case 5:
32040 No=6:sp_on 11,1:sp_on 8,0
32050 pause 200:goto Jyoushi_Input_Born_Month2:
32060 case 7:
32070 No=8:sp_on 7,1:sp_on 4,0
32080 pause 200:goto Jyoushi_Input_Born_Month2:
32090 case 8:
32100 No=9:sp_on 10,1:sp_on 7,0
32110 pause 200:goto Jyoushi_Input_Born_Month2:
32120 case 9:
32130 pause 200:goto Jyoushi_Input_Born_Month2:
32140 case 6:
32150 pause 200:goto Jyoushi_Input_Born_Month2:
32160 end select
32170 'Okから右ボタンを押して何もしない ここまで
32180 endif
32190 '十字キー　ここまで
32200 '右の丸ボタン + Enter key 決定キー
32210 if ((bg=2) or (key$=chr$(13))) then
32220 select case count
32230 case 0:
32240 if (No=-1) then No=0
32250 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
32260 if (buf_month > 1 and buf_month < 10)  then
32270 buf_Month$ = str$(buf_month)
32280 'buf_month=No
32290 endif
32300 if (buf_month = 1)  then
32310 buf_Month$ = str$(buf_month) + "*"
32320 'c=buf_month
32330 endif
32340 locate 1,3
32350 print "                                     "
32360 color RGB(255,255,255)
32370 locate 1,3
32380 print "上司の生まれた月(1月~12月):" + buf_Month$
32390 goto Jyoushi_Input_Born_Month2:
32400 case 1:
32410 count = 2:
32420 'c = val(buf_Month$)
32430 if (No = -1) then
32440 'count=0
32450 No=0
32460 month=buf_month
32470 buf_month=val(buf_Month$)
32480 month=buf_month
32490 buf_Jyoushi_Born_Day(1)=month
32500 '生まれた日に飛ぶ
32510 goto Jyoushi_Input_Born_Day:
32520 else
32530 buf_month = c*10 + No
32540 'if (buf_month = 1) then
32550 'buf_Month$ = str$(buf_month)
32560 'endif
32570 buf_Month$ = str$(buf_month)
32580 buf_Jyoushi_Born_Day(1) = buf_month
32590 locate 0,3
32600 print "                                           "
32610 locate 1,3
32620 color Rgb(255,255,255)
32630 print "上司の生まれた月(1月~12月):" + buf_Month$
32640 goto Jyoushi_Input_Born_Month2:
32650 endif
32660 case 2:
32670 '==================================
32680 '何もしない
32690 'coun = 2
32700 '==================================
32710 'c= val(buf_Month$)
32720 'buf_month = c*10 + No
32730 'buf_Month$ = str$(buf_month)
32740 'locate 2,3
32750 'print "上司の生まれた月(1月～12月):";buf_Month$
32760 'goto Jyoushi_Input_Born_Month2:
32770 'case 3:
32780 'count=4
32790 'b=val(buf_month$)
32800 'buf_month=c*10+No
32810 'buf_Month$=str$(buf_month)
32820 'locate 2,3
32830 'print "上司の生まれた月(1月～12月):";buf_Month$
32840 'buf_month=val(buf_Month$)
32850 'year=val(buf_year$)
32860 if (No=-1) then
32870 No=0
32880 goto Jyoushi_Input_Born_Day:
32890 else
32900 goto Jyoushi_Input_Born_Month2:
32910 endif
32920 'case 4:
32930 'bufyear=buf_year
32940 'if (No=-1) then
32950 'buf_month = val(buf_Month$)
32960 'month = buf_month
32970 'sp_on 14,0
32980 'goto Input_Born_Day:
32990 'else
33000 'goto Input_Born_Month2:
33010 'endif
33020 end select
33030 endif
33040 '左の丸ボタン　キャンセル
33050 if (bg2=2) then
33060 select case count2
33070 case 0:
33080 if (No = -1) then
33090 buf_month=0:buf_Month$="**"
33100 count=0
33110 'goto rewrite2:
33120 else
33130 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
33140 buf_month = 0:buf_Month$ = "**"
33150 locate 0,3
33160 color rgb(255,255,255)
33170 print "                                       "
33180 goto rewrite2:
33190 if (No>12) then
33200 ui_msg"値が範囲外です。"
33210 goto rewrite2:
33220 endif
33230 endif
33240 endif
33250 rewrite2:
33260 locate 2,3
33270 color rgb(255,255,255)
33280 print "                                      "
33290 locate 2,3
33300 print "上司の生まれた月(1月~12月):"+buf_Month$
33310 goto Jyoushi_Input_Born_Month2:
33320 end select
33330 'endif
33340 endif
33350 end
33360 'end
33370 '生れた日を入力
33380 Jyoushi_Input_Born_Day:
33390 '生まれた日入力
33400 cls 3:play ""
33410 'No=-1:Okのとき
33420 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
33430 for i=0 to 1
33440 buf_day(i)=0
33450 next i
33460 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
33470 gload Gazo$ + "Screen1.png",0,0,0
33480 gload Gazo$ + "downscreen.png",0,0,800
33490 'Init"kb:2"
33500 '音声ファイル再生 2023.06.07
33510 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
33520 font 48
33530 locate 1,1
33540 '文字色：黒　 color rgb(0,0,0)
33550 color rgb(255,255,255)
33560 print "上司の生まれた日を入れて下さい" + chr$(13)
33570 locate 1,3
33580 color rgb(255,255,255)
33590 print "                                      "
33600 locate 1,3
33610 print "上司の生まれた日(1日~31日):"+buf_Day$
33620 color rgb(255,255,255)
33630 'locate 4,6:print ":7"
33640 'locate 9,6:print ":8"
33650 'locate 12,6:print ":9"
33660 locate 4,6
33670 print ":7  :8  :9" + chr$(13)
33680 color rgb(255,255,255)
33690 locate 4,8
33700 print ":4  :5  :6" + chr$(13)
33710 color rgb(255,255,255)
33720 locate 4,10
33730 print ":1  :2  :3" + chr$(13)
33740 locate 4,12
33750 print "    :0"
33760 locate 12,12
33770 color rgb(0,0,255)
33780 print ":Ok"
33790 sp_on 4,0: sp_on 5,0:sp_on 6,0
33800 sp_on 7,0:sp_on 8,0:sp_on 9,0
33810 sp_on 10,0:sp_on 11,0:sp_on 12,0
33820 sp_on 13,0:sp_on 14,1
33830 Jyoushi_Input_Born_Day2:
33840 key$="":bg=0:y=0:y2=0:bg2=0:
33850 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33860 key$ = inkey$
33870 bg = strig(1)
33880 y = stick(1)
33890 y2 = stick(0)
33900 bg2 = strig(0)
33910 pause 5
33920 wend
33930 '十字キー　ここから
33940 '上の矢印　または、十字キー上
33950 if ((y = -1) or (key$ = chr$(30))) then
33960 select case No
33970 'No=-1:okのとき:初期の状態
33980 '0kボタンから３に移動
33990 '上に行く 処理
34000 case -1:
34010 No=3:sp_on 12,1:sp_on 14,0
34020 pause 200:goto Jyoushi_Input_Born_Day2:
34030 '選択肢:3
34040 '3ボタンから 6に移動
34050 case 3:
34060 No=6:sp_on 12,0:sp_on 11,1
34070 pause 200:goto Jyoushi_Input_Born_Day2:
34080 '6ボタンから ９に移動
34090 case 6:
34100 No=9:sp_on 10,1:sp_on 11,0
34110 pause 200:goto Jyoushi_Input_Born_Day2:
34120 '6ボタンから ９に移動　ここまで
34130 '9で上を押して何もしない
34140 case 9:
34150 '何もしない
34160 No=9
34170 pause 200:goto Jyoushi_Input_Born_Day2:
34180 '9で上を押しても何もしない　ここまで
34190 '上　 0ボタンから2ボタン
34200 'sp_on 6,1:1
34210 'sp_on 8,1:5
34220 'sp_on 7,1:7
34230 case 0:
34240 No=2:sp_on 13,0:sp_on 9,1:
34250 pause 200:goto Jyoushi_Input_Born_Day2:
34260 '上  0ボタンから2ボタン　ここまで
34270 '2から５になる 上
34280 case 2:
34290 No=5:sp_on 8,1:sp_on 9,0:
34300 pause 200:goto Jyoushi_Input_Born_Day2:
34310 case 5:
34320 No=8:sp_on 7,1:sp_on 8,0
34330 pause 200:goto Jyoushi_Input_Born_Day2:
34340 case 8:
34350 pause 200:goto Jyoushi_Input_Born_Day2:
34360 case 1:
34370 No=4:sp_on 5,1:sp_on 6,0
34380 pause 200:goto Jyoushi_Input_Born_Day2:
34390 case 4:
34400 No=7:sp_on 4,1:sp_on 5,0
34410 pause 200:goto Jyoushi_Input_Born_Day2:
34420 case 7:
34430 pause 200:goto Jyoushi_Input_Born_Day2:
34440 end select
34450 endif
34460 '左３　ここまで
34470 '下の矢印
34480 '中央 2
34490 if ((y=1) or (key$ = chr$(31))) then
34500 select case No
34510 '9から６に下げる
34520 case 9:
34530 No=6:sp_on 11,1:sp_on 10,0
34540 pause 200:goto Jyoushi_Input_Born_Day2:
34550 '6から３に下げる
34560 case 6:
34570 No=3:sp_on 12,1:sp_on 11,0
34580 pause 200:goto Jyoushi_Input_Born_Day2:
34590 '3から０ｋに変える
34600 case 3:
34610 No=-1:sp_on 14,1:sp_on 12,0
34620 pause 200:goto Jyoushi_Input_Born_Day2:
34630 'Okから下のボタンを押しても何もしない
34640 case -1:
34650 pause 200:goto Jyoushi_Input_Born_Day2:
34660 case 8:
34670 No=5:sp_on 8,1:sp_on 7,0
34680 pause 200:goto Jyoushi_Input_Born_Day2:
34690 case 5:
34700 No=2:sp_on 9,1:sp_on 8,0
34710 pause 200:goto Jyoushi_Input_Born_Day2:
34720 case 2:
34730 No=0:sp_on 13,1:sp_on 9,0
34740 pause 200:goto Jyoushi_Input_Born_Day2:
34750 case 0:
34760 pause 200:goto Jyoushi_Input_Born_Day2:
34770 case 7:
34780 No=4:sp_on 5,1:sp_on 4,0
34790 pause 200:goto Jyoushi_Input_Born_Day2:
34800 case 4:
34810 No=1:sp_on 6,1:sp_on 5,0
34820 pause 200:goto Jyoushi_Input_Born_Day2:
34830 case 1:
34840 pause 200:goto Jyoushi_Input_Born_Day2:
34850 end select
34860 endif
34870 '左へボタン 十字キー　左　or 　カーソル左
34880 if ((y2 = -1) or (key$ = chr$(29))) then
34890 select case No
34900 'Ok ボタン  Okから　左　０に行く
34910 case -1:
34920 No=0:sp_on 13,1:sp_on 14,0
34930 pause 200:goto Jyoushi_Input_Born_Day2:
34940 '0 ボタン  左　何もしない
34950 case 0:
34960 pause 200:goto Jyoushi_Input_Born_Day2:
34970 case 3:
34980 No=2:sp_on 9,1:sp_on 12,0:
34990 pause 200:goto Jyoushi_Input_Born_Day2:
35000 case 2:
35010 No=1:sp_on 6,1:sp_on 9,0:
35020 pause 200:goto Jyoushi_Input_Born_Day2:
35030 case 1:
35040 pause 200:goto Jyoushi_Input_Born_Day2:
35050 case 6:
35060 No=5:sp_on 8,1:sp_on 11,0
35070 pause 200:goto Jyoushi_Input_Born_Day2:
35080 case 5:
35090 No=4:sp_on 5,1:sp_on 8,0
35100 pause 200:goto Jyoushi_Input_Born_Day2:
35110 case 4:
35120 pause 200:goto Jyoushi_Input_Born_Day2:
35130 case 9:
35140 No=8:sp_on 7,1:sp_on 10,0
35150 pause 200:goto Jyoushi_Input_Born_Day2:
35160 case 8:
35170 No=7:sp_on 4,1:sp_on 7,0
35180 pause 200:goto Jyoushi_Input_Born_Day2:
35190 case 7:
35200 pause 200:goto Jyoushi_Input_Born_Day2:
35210 end select
35220 endif
35230 '右  十字キー　右　or カーソル　右
35240 if ((y2 = 1) or (key$ = chr$(28))) then
35250 select case No
35260 '0ボタンからokボタン右に移動
35270 case 0:
35280 No=-1:sp_on 14,1:sp_on 13,0
35290 pause 200:goto Jyoushi_Input_Born_Day2:
35300 '0ボタンからokボタン 右に移動　ここまで
35310 'OKボタンで右を押して何もしない
35320 case -1:
35330 pause 200:goto Jyoushi_Input_Born_Day2:
35340 case 1:
35350 No=2:sp_on 9,1:sp_on 6,0
35360 pause 200:goto Jyoushi_Input_Born_Day2:
35370 case 2:
35380 No=3:sp_on 12,1:sp_on 9,0
35390 pause 200:goto Jyoushi_Input_Born_Day2:
35400 case 3:
35410 pause 200:goto Jyoushi_Input_Born_Day2:
35420 case 4:
35430 No=5:sp_on 8,1:sp_on 5,0
35440 pause 200:goto Jyoushi_Input_Born_Day2:
35450 case 5:
35460 No=6:sp_on 11,1:sp_on 8,0
35470 pause 200:goto Jyoushi_Input_Born_Day2:
35480 case 7:
35490 No=8:sp_on 7,1:sp_on 4,0
35500 pause 200:goto Jyoushi_Input_Born_Day2:
35510 case 8:
35520 No=9:sp_on 10,1:sp_on 7,0
35530 pause 200:goto Jyoushi_Input_Born_Day2:
35540 case 9:
35550 pause 200:goto Jyoushi_Input_Born_Day2:
35560 case 6:
35570 pause 200:goto Jyoushi_Input_Born_Day2:
35580 end select
35590 'Okから右ボタンを押して何もしない ここまで
35600 endif
35610 '十字キー　ここまで
35620 '右の丸ボタンを押したとき
35630 if ((bg = 2) or (key$ = chr$(13))) then
35640 'count :決定ボタンを押した回数
35650 select case (count)
35660 '1桁目入力
35670 case 0:
35680 count = 1:
35690 if (No = -1) then
35700 '1桁目　OKでは何もしない
35710 No=c
35720 'goto Jyoushi_Input_Born_Day2:
35730 else
35740 'ok以外のボタンを押したとき
35750 buf_day = No:buf_Day$ = str$(No)
35760 buf_Jyoushi_Born_Day(2)=buf_day
35770 c=No
35780 locate 1,3
35790 print "                                      "
35800 color RGB(255,255,255)
35810 locate 1,3
35820 print "上司の生まれた日(1日~31日):" + buf_Day$
35830 endif
35840 'check2:
35850 'if (buf_day >= 1 and buf_day <= 9) then
35860 'sp_on 14,0
35870 'goto complate_jyoushi:
35880 'else
35890 'sp_on 14,0
35900 goto Jyoushi_Input_Born_Day2:
35910 'end
35920 'endif
35930 case 1:
35940 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
35950 count = 2:
35960 'locate 2,3
35970 'color RGB(255,255,255)
35980 'print "生まれた日(1日~31日):";buf_Day$
35990 'Okボタンを押したときの処理
36000 '入力値　10未満のとき
36010 'buf_day = c * 10 + No
36020 if (No = -1) then
36030 c=buf_day:No=0
36040 'buf_day = c
36050 buf_Day$ = str$(buf_day)
36060 '10以下のとき
36070 'if (buf_day < 10) then
36080 sp_on 14,0
36090 goto complate_jyoushi:
36100 'end
36110 'endif
36120 else
36130 'c=No
36140 buf_day = c * 10 + No
36150 buf_Day$ = str$(buf_day)
36160 'buf_day = c:buf_Day$=str$(buf_day)
36170 buf_Jyoushi_Born_Day(2)=buf_day
36180 locate 1,3
36190 print "                                           "
36200 locate 1,3
36210 color Rgb(255,255,255)
36220 print "上司の生まれた日(1日~31日):" + buf_Day$
36230 goto Jyoushi_Input_Born_Day2:
36240 'goto
36250 endif
36260 'endif
36270 '生まれた日　2桁目の数字　or 1桁の数字 + ok
36280 case 2:
36290 'buf_day = c * 10 + No
36300 'buf_Jyoushi_Born_Day(2)=buf_day
36310 'locate 1,3
36320 'print "                                      "
36330 'locate 1,3
36340 'locate 2,3
36350 'print "生まれた日(1日〜31日):";buf_Day
36360 'No=-1:ok ボタンを押したとき
36370 if (No = -1) then
36380 'if ((buf_day > 0) and (buf_day < 32)) then
36390 No=0
36400 sp_on 14,0
36410 goto complate_jyoushi:
36420 'end
36430 else
36440 goto Jyoushi_Input_Born_Day2:
36450 'endif
36460 'Okボタン以外を押したとき
36470 'else
36480 'c=val(buf_Day$)
36490 'buf_day = c * 10 + No
36500 'buf_Jyoushi_Born_Day(2) = buf_day
36510 'buf_Day$ = str$(buf_day)
36520 'locate 1,3
36530 'print "上司の生まれた日(1日~31日):";buf_Day$
36540 'goto Jyoushi_Input_Born_Day2:
36550 endif
36560 'case 3:
36570 'count=4
36580 'c=val(buf_day$)
36590 'buf_day=c*10+No
36600 'buf_day$=str$(buf_day)
36610 'locate 2,3
36620 'print "生まれた日を入れてください:";buf_day$
36630 'year=val(buf_year$)
36640 'if (No = -1) then
36650 'goto Jyoushi_Input_Born_Day:
36660 'sp_on 14,0:
36670 'goto complate_jyoushi:
36680 'else
36690 'goto Jyoushi_Input_Born_Month2:
36700 'endif
36710 'case 4:
36720 'bufyear=buf_year
36730 'if (No=-1) then
36740 'buf_day = val(buf_day$)
36750 'bufday = buf_day
36760 'sp_on 14,0
36770 'goto Jyoushi_Input_Born_Day2:
36780 'else
36790 'goto Jyoushi_Input_Born_Day2:
36800 'endif
36810 end select
36820 endif
36830 if (bg2=2) then
36840 select case count2
36850 case 0:
36860 if (No=-1) then
36870 buf_day=0:buf_Day$="**":No=0
36880 if (buf_day >= 1 and buf_day <= 31) then
36890 count=0
36900 buf_day=0:buf_Day$ = "**"
36910 goto rewrite_day3:
36920 else
36930 buf_day=0:buf_Day$ = "**"
36940 ui_msg"値が範囲外です"
36950 endif
36960 goto rewrite_day3:
36970 else
36980 goto rewrite_day3:
36990 endif
37000 rewrite_day3:
37010 locate 2,3
37020 color rgb(255,255,255)
37030 print "                                      "
37040 locate 2,3
37050 print "生まれた日(1日~31日):" + buf_Day$
37060 goto Jyoushi_Input_Born_Day2:
37070 end select
37080 endif
37090 '--------------------------------------------'
37100 'locate 2,0:color rgb(255,0,0)
37110 'print "上司の生まれた年代を入力"
37120 'color rgb(255,255,255)
37130 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
37140 'locate 2,4:Input "上司の生まれた年:",born_year
37150 '誕生日データーを配列に代入
37160 'buf_Jyoushi_Born_Year:上司の生まれた年代
37170 'buf_Jyoushi_Born_Day(0) = born_year
37180 'born_year = 0
37190 '---------------------------------------------'
37200 'goto Jyoushi_born_month:
37210 '1-2.生まれた月を入力
37220 'Jyoushi_born_month:
37230 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37240 'init "kb:4"
37250 'locate 2,1:
37260 'color rgb(255,0,0)
37270 'print "上司の生まれた月入力"
37280 'color rgb(255,255,255)
37290 'locate 2,4:print "生まれた月を入力してください"
37300 'locate 2,5
37310 'Input "上司の生まれ月:",born_month
37320 'buf_Jyoushi_Born_Day(1) = born_month
37330 'born_month = 0
37340 'goto Jyoushi_born_day:
37350 'buf_Jyoushi_Born_day
37360 '1-3.生まれた日を入力
37370 'Jyoushi_born_day:
37380 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37390 'init "kb:4"
37400 'locate 2,1:color rgb(255,0,0)
37410 'print "上司の生まれた日　入力"
37420 'locate 2,4:color rgb(255,255,255)
37430 'print "生まれた日を入力してください"
37440 'locate 2,5
37450 'Input "上司の生まれた日:",born_day
37460 'buf_Jyoushi_Born_Day(2) = born_day
37470 'born_day = 0
37480 'goto buka_born_year:
37490 '2.部下の誕生日入力
37500 '2-1.生まれた年を入力
37510 'buka_born_year:
37520 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37530 'init "kb:2"
37540 'locate 1,1:color rgb(255,0,0)
37550 'print "部下の生まれた年代入力"
37560 'locate 0,4:color rgb(255,255,255)
37570 'print "部下の生まれた年（西暦4桁）を入れてください"
37580 'locate 0,5
37590 'Input "部下の生まれた年(西暦4桁):",born_year
37600 'buf_Buka_Born_Day(0) = born_year
37610 'born_year = 0
37620 '2-2.生まれた月を入力
37630 'buka_born_month:
37640 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37650 'init "kb:2"
37660 'locate 2,1:color rgb(255,0,0)
37670 'print "部下の生まれた月 入力"
37680 'locate 2,4:color rgb(255,255,255)
37690 'print "部下の生まれた月を入力してください"
37700 'locate 2,5:Input "部下の生まれた月:",born_month
37710 'buf_Buka_Born_Day(1) = born_month
37720 '2-3.生まれた日を入力
37730 'buka_born_day:
37740 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37750 'init "kb:2"
37760 'locate 2,1:color rgb(255,0,0)
37770 'print "生まれた日入力"
37780 'color rgb(255,255,255)
37790 'locate 2,4:print "生まれた日を入力してください"
37800 'locate 2,5:Input "部下の生まれた日:",born_day
37810 'buf_Buka_Born_Day(2) = born_day
37820 'born_day=0:goto Result_Business_Aisyou:
37830 '--------------------------------------------'
37840 complate_jyoushi:
37850 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
37860 buf_Jyoushi = Kabara_Num(a,b,c)
37870 a_1=buf_Jyoushi
37880 goto Buka_Input_Seireki:
37890 '--------------------------------------------'
37900 '部下'
37910 '1.部下の生まれた年代'
37920 Buka_Input_Seireki:
37930 cls 3:play "":count=0:count2=0
37940 init"kb:4"
37950 'No=-1:Okのとき
37960 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
37970 for i=0 to 3
37980 buf_Buka_Born_Day(i)=0
37990 next i
38000 gload Gazo$ + "Screen1.png",0,0,0
38010 gload Gazo$ + "downscreen.png",0,0,800
38020 'Init"kb:2"
38030 '音声ファイル再生 2023.06.07
38040 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38050 font 48
38060 locate 0,1
38070 '文字色：黒　 color rgb(0,0,0)
38080 color rgb(255,255,255)
38090 print "部下の生まれた年代を入れて下さい" + chr$(13)
38100 color rgb(255,255,255)
38110 locate 1,3
38120 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38130 color rgb(255,255,255)
38140 'locate 4,6:print ":7"
38150 'locate 9,6:print ":8"
38160 'locate 12,6:print ":9"
38170 locate 4,6
38180 print ":7  :8  :9" + chr$(13)
38190 color rgb(255,255,255)
38200 locate 4,8
38210 print ":4  :5  :6" + chr$(13)
38220 color rgb(255,255,255)
38230 locate 4,10
38240 print ":1  :2  :3" + chr$(13)
38250 locate 4,12
38260 print "    :0"
38270 locate 12,12
38280 color rgb(0,0,255)
38290 print ":Ok"
38300 sp_on 4,0: sp_on 5,0:sp_on 6,0
38310 sp_on 7,0:sp_on 8,0:sp_on 9,0
38320 sp_on 10,0:sp_on 11,0:sp_on 12,0
38330 sp_on 13,0:sp_on 14,1
38340 Buka_Input_Seireki2:
38350 key$="":bg=0:y=0:y2=0:bg2=0:
38360 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38370 key$ = inkey$
38380 bg = strig(1)
38390 y = stick(1)
38400 y2 = stick(0)
38410 bg2=strig(0)
38420 pause 5
38430 wend
38440 '十字キー　ここから
38450 '上の矢印　または、十字キー上
38460 if ((y = -1) or (key$ = chr$(30))) then
38470 select case No
38480 'No=-1:okのとき:初期の状態
38490 '0kボタンから３に移動
38500 '上に行く 処理
38510 case -1:
38520 No=3:sp_on 12,1:sp_on 14,0
38530 pause 200:goto Buka_Input_Seireki2:
38540 '選択肢:3
38550 '3ボタンから 6に移動
38560 case 3:
38570 No=6:sp_on 12,0:sp_on 11,1
38580 pause 200:goto Buka_Input_Seireki2:
38590 '6ボタンから ９に移動
38600 case 6:
38610 No=9:sp_on 10,1:sp_on 11,0
38620 pause 200:goto Buka_Input_Seireki2:
38630 '6ボタンから ９に移動　ここまで
38640 '9で上を押して何もしない
38650 case 9:
38660 '何もしない
38670 No=9
38680 pause 200:goto Buka_Input_Seireki2:
38690 '9で上を押しても何もしない　ここまで
38700 '上　 0ボタンから2ボタン
38710 'sp_on 6,1:1
38720 'sp_on 8,1:5
38730 'sp_on 7,1:7
38740 case 0:
38750 No=2:sp_on 13,0:sp_on 9,1:
38760 pause 200:goto Buka_Input_Seireki2:
38770 '上  0ボタンから2ボタン　ここまで
38780 '2から５になる 上
38790 case 2:
38800 No=5:sp_on 8,1:sp_on 9,0:
38810 pause 200:goto Buka_Input_Seireki2:
38820 case 5:
38830 No=8:sp_on 7,1:sp_on 8,0
38840 pause 200:goto Buka_Input_Seireki2:
38850 case 8:
38860 pause 200:goto Buka_Input_Seireki2:
38870 case 1:
38880 No=4:sp_on 5,1:sp_on 6,0
38890 pause 200:goto Buka_Input_Seireki2:
38900 case 4:
38910 No=7:sp_on 4,1:sp_on 5,0
38920 pause 200:goto Buka_Input_Seireki2:
38930 case 7:
38940 pause 200:goto Buka_Input_Seireki2:
38950 end select
38960 endif
38970 '左３　ここまで
38980 '下の矢印
38990 '中央 2
39000 if ((y=1) or (key$ = chr$(31))) then
39010 select case No
39020 '9から６に下げる
39030 case 9:
39040 No=6:sp_on 11,1:sp_on 10,0
39050 pause 200:goto Buka_Input_Seireki2:
39060 '6から３に下げる
39070 case 6:
39080 No=3:sp_on 12,1:sp_on 11,0
39090 pause 200:goto Buka_Input_Seireki2:
39100 '3から０ｋに変える
39110 case 3:
39120 No=-1:sp_on 14,1:sp_on 12,0
39130 pause 200:goto Buka_Input_Seireki2:
39140 'Okから下のボタンを押しても何もしない
39150 case -1:
39160 pause 200:goto Buka_Input_Seireki2:
39170 case 8:
39180 No=5:sp_on 8,1:sp_on 7,0
39190 pause 200:goto Buka_Input_Seireki2:
39200 case 5:
39210 No=2:sp_on 9,1:sp_on 8,0
39220 pause 200:goto Buka_Input_Seireki2:
39230 case 2:
39240 No=0:sp_on 13,1:sp_on 9,0
39250 pause 200:goto Buka_Input_Seireki2:
39260 case 0:
39270 pause 200:goto Buka_Input_Seireki2:
39280 case 7:
39290 No=4:sp_on 5,1:sp_on 4,0
39300 pause 200:goto Buka_Input_Seireki2:
39310 case 4:
39320 No=1:sp_on 6,1:sp_on 5,0
39330 pause 200:goto Buka_Input_Seireki2:
39340 case 1:
39350 pause 200:goto Buka_Input_Seireki2:
39360 end select
39370 endif
39380 '左へボタン 十字キー　左　or 　カーソル左
39390 if ((y2 = -1) or (key$ = chr$(29))) then
39400 select case No
39410 'Ok ボタン  Okから　左　０に行く
39420 case -1:
39430 No=0:sp_on 13,1:sp_on 14,0
39440 pause 200:goto Buka_Input_Seireki2:
39450 '0 ボタン  左　何もしない
39460 case 0:
39470 pause 200:goto Buka_Input_Seireki2:
39480 case 3:
39490 No=2:sp_on 9,1:sp_on 12,0:
39500 pause 200:goto Buka_Input_Seireki2:
39510 case 2:
39520 No=1:sp_on 6,1:sp_on 9,0:
39530 pause 200:goto Buka_Input_Seireki2:
39540 case 1:
39550 pause 200:goto Buka_Input_Seireki2:
39560 case 6:
39570 No=5:sp_on 8,1:sp_on 11,0
39580 pause 200:goto Buka_Input_Seireki2:
39590 case 5:
39600 No=4:sp_on 5,1:sp_on 8,0
39610 pause 200:goto Buka_Input_Seireki2:
39620 case 4:
39630 pause 200:goto Buka_Input_Seireki2:
39640 case 9:
39650 No=8:sp_on 7,1:sp_on 10,0
39660 pause 200:goto Buka_Input_Seireki2:
39670 case 8:
39680 No=7:sp_on 4,1:sp_on 7,0
39690 pause 200:goto Buka_Input_Seireki2:
39700 case 7:
39710 pause 200:goto Buka_Input_Seireki2:
39720 end select
39730 endif
39740 '右  十字キー　右　or カーソル　右
39750 if ((y2 = 1) or (key$ = chr$(28))) then
39760 select case No
39770 '0ボタンからokボタン右に移動
39780 case 0:
39790 No=-1:sp_on 14,1:sp_on 13,0
39800 pause 200:goto Buka_Input_Seireki2:
39810 '0ボタンからokボタン 右に移動　ここまで
39820 'OKボタンで右を押して何もしない
39830 case -1:
39840 pause 200:goto Buka_Input_Seireki2:
39850 case 1:
39860 No=2:sp_on 9,1:sp_on 6,0
39870 pause 200:goto Buka_Input_Seireki2:
39880 case 2:
39890 No=3:sp_on 12,1:sp_on 9,0
39900 pause 200:goto Buka_Input_Seireki2:
39910 case 3:
39920 pause 200:goto Buka_Input_Seireki2:
39930 case 4:
39940 No=5:sp_on 8,1:sp_on 5,0
39950 pause 200:goto Buka_Input_Seireki2:
39960 case 5:
39970 No=6:sp_on 11,1:sp_on 8,0
39980 pause 200:goto Buka_Input_Seireki2:
39990 case 7:
40000 No=8:sp_on 7,1:sp_on 4,0
40010 pause 200:goto Buka_Input_Seireki2:
40020 case 8:
40030 No=9:sp_on 10,1:sp_on 7,0
40040 pause 200:goto Buka_Input_Seireki2:
40050 case 9:
40060 pause 200:goto Buka_Input_Seireki2:
40070 case 6:
40080 pause 200:goto Buka_Input_Seireki2:
40090 end select
40100 'Okから右ボタンを押して何もしない ここまで
40110 endif
40120 '十字キー　ここまで
40130 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
40140 'ここからコメント
40150 '右の丸ボタン決定を押した数:count
40160 'if ((bg=2) or (key$=chr$(13))) then
40170 'select case count
40180 'case 0:
40190 'count=1
40200 'if (No = -1) then
40210 'count = 0
40220 'Okボタンを押したとき
40230 '
40240 'goto Buka_Input_Seireki2:
40250 'else
40260 'Okボタン以外が押されたとき
40270 'if (No >= 1 and No <= 2) then
40280 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
40290 'buf_buka_year = No
40300 'buf_Buka_Born_Day(0) = bufyear
40310 'locate 2,3
40320 'color rgb(255,255,255)
40330 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40340 'goto Buka_Input_Seireki2:
40350 'else
40360 'count=0
40370 'ui_msg"数字が範囲外になります。"
40380 'buf_buka_year$ ="":buf_buka_year=0
40390 'goto Buka_Input_Seireki2:
40400 'endif
40410 'endif
40420 'case 1:
40430 'count = 2
40440 'if (No = -1) then
40450 'count = 1
40460 'goto Buka_Input_Seireki2:
40470 'else
40480 'b = val(buf_buka_year$)
40490 'buf_buka_year = b * 10 + No
40500 'buf_buka_year$ = str$(buf_buka_year)
40510 'buf_Buka_Born_Day(0) = bufyear
40520 'locate 1,3
40530 'color rgb(255,255,255)
40540 'print "                                                                "
40550 'locate 1,3
40560 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40570 'if (No = -1) then
40580 'count=1
40590 'goto Buka_Input_Seireki2:
40600 'endif
40610 'case 2:
40620 'count = 3
40630 'if (No = -1) then
40640 'count = 2
40650 'buf_Buka_Born_Day(0)=bufyear
40660 'goto Buka_Input_Seireki2:
40670 'else
40680 'b = val(buf_buka_year$)
40690 'buf_buka_year = b*10 + No
40700 'buf_buka_year$ = str$(buf_buka_year)
40710 'locate 1,3
40720 'color rgb(255,255,255)
40730 'print "                                        "
40740 'locate 1,3
40750 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
40760 'goto Buka_Input_Seireki2:
40770 'endif
40780 'case 3:
40790 'count=4
40800 'if (No = -1) then
40810 'count=3
40820 'goto Buka_Input_Seireki2:
40830 'else
40840 'b = buf_buka_year
40850 'buf_buka_year = b * 10 + No
40860 'buf_buka_year$=str$(buf_buka_year)
40870 'locate 1,3
40880 'color RGB(255,255,255)
40890 'print "                                      "
40900 'locate 1,3
40910 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40920 'buf_year=val(buf_year$)
40930 'year=val(buf_year$)
40940 'if (No=-1) then
40950 'goto Input_Born_Month:
40960 'else
40970 'goto Buka_Input_Seireki2:
40980 'endif
40990 'case 4:
41000 'bufyear=buf_year
41010 'if (No=-1) then
41020 'buf_year = val(buf_year$)
41030 'bufyear = buf_year
41040 'sp_on 14,0
41050 'goto Buka_Input_Born_Month:
41060 'else
41070 'goto Buka_Input_Seireki2:
41080 'endif
41090 'end select
41100 'endif
41110 'if (bg2 = 2) then
41120 'select case count2
41130 'case 0:
41140 'if (No = -1) then
41150 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
41160 'count=0
41170 'locate 1,3
41180 'color rgb(255,255,255)
41190 'print "                                      "
41200 'locate 1,3
41210 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
41220 'goto Buka_Input_Seireki2:
41230 'else
41240 '(buf_year=0) then
41250 'buf_buka_year=0:buf_buka_year$="****"
41260 'goto Buka_Input_Seireki2:
41270 'endif
41280 'endif
41290 'end select
41300 'endif
41310 'end
41320 'ここまでコメント
41330 '================================================================
41340 if ((bg=2) or (key$=chr$(13))) then
41350 select case count
41360 case 0:
41370 count = 1
41380 if (No=-1) then
41390 count = 0
41400 buf_Buka_Born_Day(0) = No
41410 'Okボタンを押したとき
41420 goto Buka_Input_Seireki2:
41430 else
41440 'Okボタン以外が押されたとき
41450 if (No>=1 and No<=2) then
41460 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
41470 buf_buka_year = No
41480 buf_Buka_Born_Day(0) = No
41490 locate 1,3
41500 color rgb(255,255,255)
41510 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41520 goto Buka_Input_Seireki2:
41530 else
41540 count=0
41550 ui_msg"数字が範囲外になります。"
41560 buf_buka_year$="":buf_buka_year=0
41570 goto Buka_Input_Seireki2:
41580 endif
41590 endif
41600 case 1:
41610 count = 2
41620 if (No = -1) then
41630 count = 1
41640 goto Buka_Input_Seireki2:
41650 else
41660 'b = val(buf_buka_year$)
41670 buf_buka_year = a * 10 + No
41680 b=buf_buka_year
41690 buf_buka_year$ = str$(buf_buka_year)+"**"
41700 buf_Buka_Born_Day(0)=buf_buka_year
41710 locate 1,3
41720 color rgb(255,255,255)
41730 print "                                                                "
41740 locate 1,3
41750 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41760 'if (No = -1) then
41770 'count=1
41780 goto Buka_Input_Seireki2:
41790 endif
41800 case 2:
41810 count=3
41820 if (No=-1) then
41830 count =2:No=0
41840 goto Buka_Input_Seireki2:
41850 else
41860 'b = val(buf_buka_year$)
41870 buf_buka_year = b * 10 + No
41880 c = buf_buka_year
41890 buf_buka_year$ = str$(buf_buka_year) + "*"
41900 buf_Buka_Born_Day(0) = buf_buka_year
41910 locate 1,3
41920 color rgb(255,255,255)
41930 print "                                        "
41940 locate 1,3
41950 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41960 goto Buka_Input_Seireki2:
41970 endif
41980 case 3:
41990 count=4
42000 if (No = -1) then
42010 'count=3:No=0
42020 goto Buka_Input_Seireki2:
42030 else
42040 'b = val(buf_buka_year$)
42050 buf_buka_year=c * 10 + No
42060 buf_buka_year$=str$(buf_buka_year)
42070 buf_Buka_Born_Day(0)=buf_buka_year
42080 locate 1,3
42090 color RGB(255,255,255)
42100 print "                                      "
42110 locate 1,3
42120 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42130 buf_buka_year=val(buf_buka_year$)
42140 'year=val(buf_year$)
42150 'if (No=-1) then
42160 'goto Input_Born_Month:
42170 'else
42180 goto Buka_Input_Seireki2:
42190 endif
42200 case 4:
42210 'bufyear=buf_year
42220 if (No = -1) then
42230 buf_buka_year = val(buf_buka_year$)
42240 buf_Buka_Born_Day(0)=buf_buka_year
42250 sp_on 14,0
42260 goto Buka_Input_Born_Month:
42270 else
42280 goto Buka_Input_Seireki2:
42290 endif
42300 end select
42310 endif
42320 '================================================================
42330 'ここにコピーする。
42340 '================================================================
42350 'Input"部下の生れた年代(4桁,〜2025年):",year
42360 'if year > 2025 then goto Jyoushi_Input_Seireki:
42370 'if year = 123 then cls 3:cls 4:goto Main_Screen:
42380 '"4桁目"
42390 'bufyear4 = fix(year / 1000)
42400 '"3桁目"
42410 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
42420 '"2桁目"
42430 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
42440 '"1桁目"
42450 'bufyear1 = fix((year - ((bufyear4*
42460 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
42470 '1.部下の生まれた年代'
42480 '2.部下の生まれた月'
42490 Buka_Input_Born_Month:
42500 cls 3:play "":count=0:count2=0
42510 'No=-1:Okのとき
42520 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
42530 for i=0 to 1
42540 buf_month(i)=0
42550 next i
42560 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
42570 gload Gazo$ + "Screen1.png",0,0,0
42580 gload Gazo$ + "downscreen.png",0,0,800
42590 'Init"kb:4"
42600 '音声ファイル再生 2023.06.07
42610 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
42620 font 48
42630 locate 0,1
42640 '文字色：黒　 color rgb(0,0,0)
42650 '文字色:白
42660 color rgb(255,255,255)
42670 print "部下の生まれた月を入れて下さい" + chr$(13)
42680 '文字色:白
42690 color rgb(255,255,255)
42700 locate 1,3
42710 '文字色:白
42720 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
42730 color rgb(255,255,255)
42740 'locate 4,6:print ":7"
42750 'locate 9,6:print ":8"
42760 'locate 12,6:print ":9"
42770 locate 4,6
42780 '文字色:赤
42790 print ":7  :8  :9" + chr$(13)
42800 color rgb(255,255,255)
42810 locate 4,8
42820 print ":4  :5  :6" + chr$(13)
42830 color rgb(255,255,255)
42840 locate 4,10
42850 print ":1  :2  :3" + chr$(13)
42860 locate 4,12
42870 print "    :0"
42880 locate 12,12
42890 color rgb(0,0,255)
42900 print ":Ok"
42910 sp_on 4,0: sp_on 5,0:sp_on 6,0
42920 sp_on 7,0:sp_on 8,0:sp_on 9,0
42930 sp_on 10,0:sp_on 11,0:sp_on 12,0
42940 sp_on 13,0:sp_on 14,1
42950 Buka_Input_Born_Month2:
42960 key$="":bg=0:y=0:y2=0:bg2=0
42970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42980 key$ = inkey$
42990 bg = strig(1)
43000 y = stick(1)
43010 y2 = stick(0)
43020 bg2 = strig(0)
43030 pause 5
43040 wend
43050 '十字キー　ここから
43060 '上の矢印　または、十字キー上
43070 if ((y = -1) or (key$ = chr$(30))) then
43080 select case No
43090 'No=-1:okのとき:初期の状態
43100 '0kボタンから３に移動
43110 '上に行く 処理
43120 case -1:
43130 No=3:sp_on 12,1:sp_on 14,0
43140 pause 200:goto Buka_Input_Born_Month2:
43150 '選択肢:3
43160 '3ボタンから 6に移動
43170 case 3:
43180 No=6:sp_on 12,0:sp_on 11,1
43190 pause 200:goto Buka_Input_Born_Month2:
43200 '6ボタンから ９に移動
43210 case 6:
43220 No=9:sp_on 10,1:sp_on 11,0
43230 pause 200:goto Buka_Input_Born_Month2:
43240 '6ボタンから ９に移動　ここまで
43250 '9で上を押して何もしない
43260 case 9:
43270 '何もしない
43280 No=9
43290 pause 200:goto Buka_Input_Born_Month2:
43300 '9で上を押しても何もしない　ここまで
43310 '上　 0ボタンから2ボタン
43320 'sp_on 6,1:1
43330 'sp_on 8,1:5
43340 'sp_on 7,1:7
43350 case 0:
43360 No=2:sp_on 13,0:sp_on 9,1:
43370 pause 200:goto Buka_Input_Born_Month2:
43380 '上  0ボタンから2ボタン　ここまで
43390 '2から５になる 上
43400 case 2:
43410 No=5:sp_on 8,1:sp_on 9,0:
43420 pause 200:goto Buka_Input_Born_Month2:
43430 case 5:
43440 No=8:sp_on 7,1:sp_on 8,0
43450 pause 200:goto Buka_Input_Born_Month2:
43460 case 8:
43470 pause 200:goto Buka_Input_Born_Month2:
43480 case 1:
43490 No=4:sp_on 5,1:sp_on 6,0
43500 pause 200:goto Buka_Input_Born_Month2:
43510 case 4:
43520 No=7:sp_on 4,1:sp_on 5,0
43530 pause 200:goto Buka_Input_Born_Month2:
43540 case 7:
43550 pause 200:goto Buka_Input_Born_Month2:
43560 end select
43570 endif
43580 '左３　ここまで
43590 '下の矢印
43600 '中央 2
43610 if ((y=1) or (key$ = chr$(31))) then
43620 select case No
43630 '9から６に下げる
43640 case 9:
43650 No=6:sp_on 11,1:sp_on 10,0
43660 pause 200:goto Buka_Input_Born_Month2:
43670 '6から３に下げる
43680 case 6:
43690 No=3:sp_on 12,1:sp_on 11,0
43700 pause 200:goto Buka_Input_Born_Month2:
43710 '3から０ｋに変える
43720 case 3:
43730 No=-1:sp_on 14,1:sp_on 12,0
43740 pause 200:goto Buka_Input_Born_Month2:
43750 'Okから下のボタンを押しても何もしない
43760 case -1:
43770 pause 200:goto Buka_Input_Born_Month2:
43780 case 8:
43790 No=5:sp_on 8,1:sp_on 7,0
43800 pause 200:goto Buka_Input_Born_Month2:
43810 case 5:
43820 No=2:sp_on 9,1:sp_on 8,0
43830 pause 200:goto Buka_Input_Born_Month2:
43840 case 2:
43850 No=0:sp_on 13,1:sp_on 9,0
43860 pause 200:goto Buka_Input_Born_Month2:
43870 case 0:
43880 pause 200:goto Buka_Input_Born_Month2:
43890 case 7:
43900 No=4:sp_on 5,1:sp_on 4,0
43910 pause 200:goto Buka_Input_Born_Month2:
43920 case 4:
43930 No=1:sp_on 6,1:sp_on 5,0
43940 pause 200:goto Buka_Input_Born_Month2:
43950 case 1:
43960 pause 200:goto Buka_Input_Born_Month2:
43970 end select
43980 endif
43990 '左へボタン 十字キー　左　or 　カーソル左
44000 if ((y2 = -1) or (key$ = chr$(29))) then
44010 select case No
44020 'Ok ボタン  Okから　左　０に行く
44030 case -1:
44040 No=0:sp_on 13,1:sp_on 14,0
44050 pause 200:goto Buka_Input_Born_Month2:
44060 '0 ボタン  左　何もしない
44070 case 0:
44080 pause 200:goto Buka_Input_Born_Month2:
44090 case 3:
44100 No=2:sp_on 9,1:sp_on 12,0:
44110 pause 200:goto Buka_Input_Born_Month2:
44120 case 2:
44130 No=1:sp_on 6,1:sp_on 9,0:
44140 pause 200:goto Buka_Input_Born_Month2:
44150 case 1:
44160 pause 200:goto Buka_Input_Born_Month2:
44170 case 6:
44180 No=5:sp_on 8,1:sp_on 11,0
44190 pause 200:goto Buka_Input_Born_Month2:
44200 case 5:
44210 No=4:sp_on 5,1:sp_on 8,0
44220 pause 200:goto Buka_Input_Born_Month2:
44230 case 4:
44240 pause 200:goto Buka_Input_Born_Month2:
44250 case 9:
44260 No=8:sp_on 7,1:sp_on 10,0
44270 pause 200:goto Buka_Input_Born_Month2:
44280 case 8:
44290 No=7:sp_on 4,1:sp_on 7,0
44300 pause 200:goto Buka_Input_Born_Month2:
44310 case 7:
44320 pause 200:goto Buka_Input_Born_Month2:
44330 end select
44340 endif
44350 '右  十字キー　右　or カーソル　右
44360 if ((y2 = 1) or (key$ = chr$(28))) then
44370 select case No
44380 '0ボタンからokボタン右に移動
44390 case 0:
44400 No=-1:sp_on 14,1:sp_on 13,0
44410 pause 200:goto Buka_Input_Born_Month2:
44420 '0ボタンからokボタン 右に移動　ここまで
44430 'OKボタンで右を押して何もしない
44440 case -1:
44450 pause 200:goto Buka_Input_Born_Month2:
44460 case 1:
44470 No=2:sp_on 9,1:sp_on 6,0
44480 pause 200:goto Buka_Input_Born_Month2:
44490 case 2:
44500 No=3:sp_on 12,1:sp_on 9,0
44510 pause 200:goto Buka_Input_Born_Month2:
44520 case 3:
44530 pause 200:goto Buka_Input_Born_Month2:
44540 case 4:
44550 No=5:sp_on 8,1:sp_on 5,0
44560 pause 200:goto Buka_Input_Born_Month2:
44570 case 5:
44580 No=6:sp_on 11,1:sp_on 8,0
44590 pause 200:goto Buka_Input_Born_Month2:
44600 case 7:
44610 No=8:sp_on 7,1:sp_on 4,0
44620 pause 200:goto Buka_Input_Born_Month2:
44630 case 8:
44640 No=9:sp_on 10,1:sp_on 7,0
44650 pause 200:goto Buka_Input_Born_Month2:
44660 case 9:
44670 pause 200:goto Buka_Input_Born_Month2:
44680 case 6:
44690 pause 200:goto Buka_Input_Born_Month2:
44700 end select
44710 'Okから右ボタンを押して何もしない ここまで
44720 endif
44730 '十字キー　ここまで
44740 '右の丸ボタン　決定キー
44750 if ((bg=2) or (key$=chr$(13))) then
44760 select case count
44770 case 0:
44780 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
44790 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
44800 locate 1,3
44810 color RGB(255,255,255)
44820 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
44830 goto Buka_Input_Born_Month2:
44840 case 1:
44850 count = 2:buf_buka_month=a*10+No
44860 if (No = -1) then
44870 'count=0
44880 month=buf_buka_month
44890 buf_buka_month=val(buf_buka_Month$)
44900 month=buf_buka_month
44910 '生まれた日に飛ぶ
44920 goto Buka_Input_Born_Day:
44930 else
44940 buf_buka_month = a * 10 + No
44950 buf_buka_Month$ = str$(buf_buka_month)
44960 buf_Buka_Born_Day(1) = buf_buka_month
44970 locate 1,3
44980 color Rgb(255,255,255)
44990 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
45000 goto Buka_Input_Born_Month2:
45010 endif
45020 case 2:
45030 count=3
45040 'c= val(buf_Month$)
45050 'buf_month = c*10 + No
45060 'buf_Month$ = str$(buf_month)
45070 'locate 2,3
45080 'print "部下の生まれた月(1月～12月):";buf_Month$
45090 'goto Buka_Input_Born_Month2:
45100 'case 3:
45110 'count=4
45120 'b=val(buf_month$)
45130 'buf_month=c*10+No
45140 'buf_Month$=str$(buf_month)
45150 'locate 2,3
45160 'print "部下の生まれた月(1月～12月):";buf_Month$
45170 'buf_month=val(buf_Month$)
45180 'year=val(buf_year$)
45190 if (No=-1) then
45200 goto Buka_Input_Born_Day:
45210 else
45220 goto Input_Born_Month2:
45230 endif
45240 'case 4:
45250 'bufyear=buf_year
45260 'if (No=-1) then
45270 'buf_month = val(buf_Month$)
45280 'month = buf_month
45290 'sp_on 14,0
45300 'goto Input_Born_Day:
45310 'else
45320 'goto Input_Born_Month2:
45330 'endif
45340 end select
45350 endif
45360 '左の丸ボタン　キャンセル
45370 if (bg2=2) then
45380 select case count2
45390 case 0:
45400 if (No = -1) then
45410 buf_buka_month=0:buf_buka_Month$="**"
45420 count=0
45430 goto rewrite2:
45440 else
45450 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
45460 buf_month=0:buf_Month$="**"
45470 locate 2,3
45480 color rgb(255,255,255)
45490 print "                                       "
45500 goto rewrite2:
45510 if (No>12) then
45520 ui_msg"値が範囲外です。"
45530 goto rewrite2:
45540 endif
45550 endif
45560 endif
45570 rewrite2:
45580 locate 2,3
45590 color rgb(255,255,255)
45600 print "                                      "
45610 locate 2,3
45620 print "部下の生まれた月(1月~12月):";buf_buka_Month$
45630 goto Buka_Input_Born_Month2:
45640 end select
45650 'endif
45660 endif
45670 end
45680 '2.部下の生まれた月'
45690 '3.部下の生まれた日'
45700 '生れた日を入力
45710 Buka_Input_Born_Day:
45720 '生まれた日入力
45730 cls 3:play ""
45740 'No=-1:Okのとき
45750 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
45760 for i=0 to 1
45770 buf_day(i)=0
45780 next i
45790 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45800 gload Gazo$ + "Screen1.png",0,0,0
45810 gload Gazo$ + "downscreen.png",0,0,800
45820 'Init"kb:2"
45830 '音声ファイル再生 2023.06.07
45840 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
45850 font 48
45860 locate 0,1
45870 '文字色：黒　 color rgb(0,0,0)
45880 color rgb(255,255,255)
45890 print "部下の生まれた日を入れて下さい" + chr$(13)
45900 color rgb(255,255,255)
45910 locate 1,3
45920 print "部下の生まれた日(1日~31日):";buf_Day$
45930 color rgb(255,255,255)
45940 'locate 4,6:print ":7"
45950 'locate 9,6:print ":8"
45960 'locate 12,6:print ":9"
45970 locate 4,6
45980 print ":7  :8  :9" + chr$(13)
45990 color rgb(255,255,255)
46000 locate 4,8
46010 print ":4  :5  :6" + chr$(13)
46020 color rgb(255,255,255)
46030 locate 4,10
46040 print ":1  :2  :3" + chr$(13)
46050 locate 4,12
46060 print "    :0"
46070 locate 12,12
46080 color rgb(0,0,255)
46090 print ":Ok"
46100 sp_on 4,0: sp_on 5,0:sp_on 6,0
46110 sp_on 7,0:sp_on 8,0:sp_on 9,0
46120 sp_on 10,0:sp_on 11,0:sp_on 12,0
46130 sp_on 13,0:sp_on 14,1
46140 Buka_Input_Born_Day2:
46150 key$="":bg=0:y=0:y2=0:bg2=0
46160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
46170 key$ = inkey$
46180 bg = strig(1)
46190 y = stick(1)
46200 y2 = stick(0)
46210 bg2 = strig(0)
46220 pause 5
46230 wend
46240 '十字キー　ここから
46250 '上の矢印　または、十字キー上
46260 if ((y = -1) or (key$ = chr$(30))) then
46270 select case No
46280 'No=-1:okのとき:初期の状態
46290 '0kボタンから３に移動
46300 '上に行く 処理
46310 case -1:
46320 No=3:sp_on 12,1:sp_on 14,0
46330 pause 200:goto Buka_Input_Born_Day2:
46340 '選択肢:3
46350 '3ボタンから 6に移動
46360 case 3:
46370 No=6:sp_on 12,0:sp_on 11,1
46380 pause 200:goto Buka_Input_Born_Day2:
46390 '6ボタンから ９に移動
46400 case 6:
46410 No=9:sp_on 10,1:sp_on 11,0
46420 pause 200:goto Buka_Input_Born_Day2:
46430 '6ボタンから ９に移動　ここまで
46440 '9で上を押して何もしない
46450 case 9:
46460 '何もしない
46470 No=9
46480 pause 200:goto Buka_Input_Born_Day2:
46490 '9で上を押しても何もしない　ここまで
46500 '上　 0ボタンから2ボタン
46510 'sp_on 6,1:1
46520 'sp_on 8,1:5
46530 'sp_on 7,1:7
46540 case 0:
46550 No=2:sp_on 13,0:sp_on 9,1:
46560 pause 200:goto Buka_Input_Born_Day2:
46570 '上  0ボタンから2ボタン　ここまで
46580 '2から５になる 上
46590 case 2:
46600 No=5:sp_on 8,1:sp_on 9,0:
46610 pause 200:goto Buka_Input_Born_Day2:
46620 case 5:
46630 No=8:sp_on 7,1:sp_on 8,0
46640 pause 200:goto Buka_Input_Born_Day2:
46650 case 8:
46660 pause 200:goto Buka_Input_Born_Day2:
46670 case 1:
46680 No=4:sp_on 5,1:sp_on 6,0
46690 pause 200:goto Buka_Input_Born_Day2:
46700 case 4:
46710 No=7:sp_on 4,1:sp_on 5,0
46720 pause 200:goto Buka_Input_Born_Day2:
46730 case 7:
46740 pause 200:goto Buka_Input_Born_Day2:
46750 end select
46760 endif
46770 '左３　ここまで
46780 '下の矢印
46790 '中央 2
46800 if ((y=1) or (key$ = chr$(31))) then
46810 select case No
46820 '9から６に下げる
46830 case 9:
46840 No=6:sp_on 11,1:sp_on 10,0
46850 pause 200:goto Buka_Input_Born_Day2:
46860 '6から３に下げる
46870 case 6:
46880 No=3:sp_on 12,1:sp_on 11,0
46890 pause 200:goto Buka_Input_Born_Day2:
46900 '3から０ｋに変える
46910 case 3:
46920 No=-1:sp_on 14,1:sp_on 12,0
46930 pause 200:goto Buka_Input_Born_Day2:
46940 'Okから下のボタンを押しても何もしない
46950 case -1:
46960 pause 200:goto Buka_Input_Born_Day2:
46970 case 8:
46980 No=5:sp_on 8,1:sp_on 7,0
46990 pause 200:goto Buka_Input_Born_Day2:
47000 case 5:
47010 No=2:sp_on 9,1:sp_on 8,0
47020 pause 200:goto Buka_Input_Born_Day2:
47030 case 2:
47040 No=0:sp_on 13,1:sp_on 9,0
47050 pause 200:goto Buka_Input_Born_Day2:
47060 case 0:
47070 pause 200:goto Buka_Input_Born_Day2:
47080 case 7:
47090 No=4:sp_on 5,1:sp_on 4,0
47100 pause 200:goto Buka_Input_Born_Day2:
47110 case 4:
47120 No=1:sp_on 6,1:sp_on 5,0
47130 pause 200:goto Buka_Input_Born_Day2:
47140 case 1:
47150 pause 200:goto Buka_Input_Born_Day2:
47160 end select
47170 endif
47180 '左へボタン 十字キー　左　or 　カーソル左
47190 if ((y2 = -1) or (key$ = chr$(29))) then
47200 select case No
47210 'Ok ボタン  Okから　左　０に行く
47220 case -1:
47230 No=0:sp_on 13,1:sp_on 14,0
47240 pause 200:goto Buka_Input_Born_Day2:
47250 '0 ボタン  左　何もしない
47260 case 0:
47270 pause 200:goto Buka_Input_Born_Day2:
47280 case 3:
47290 No=2:sp_on 9,1:sp_on 12,0:
47300 pause 200:goto Buka_Input_Born_Day2:
47310 case 2:
47320 No=1:sp_on 6,1:sp_on 9,0:
47330 pause 200:goto Buka_Input_Born_Day2:
47340 case 1:
47350 pause 200:goto Buka_Input_Born_Day2:
47360 case 6:
47370 No=5:sp_on 8,1:sp_on 11,0
47380 pause 200:goto Buka_Input_Born_Day2:
47390 case 5:
47400 No=4:sp_on 5,1:sp_on 8,0
47410 pause 200:goto Buka_Input_Born_Day2:
47420 case 4:
47430 pause 200:goto Buka_Input_Born_Day2:
47440 case 9:
47450 No=8:sp_on 7,1:sp_on 10,0
47460 pause 200:goto Buka_Input_Born_Day2:
47470 case 8:
47480 No=7:sp_on 4,1:sp_on 7,0
47490 pause 200:goto Buka_Input_Born_Day2:
47500 case 7:
47510 pause 200:goto Buka_Input_Born_Day2:
47520 end select
47530 endif
47540 '右  十字キー　右　or カーソル　右
47550 if ((y2 = 1) or (key$ = chr$(28))) then
47560 select case No
47570 '0ボタンからokボタン右に移動
47580 case 0:
47590 No=-1:sp_on 14,1:sp_on 13,0
47600 pause 200:goto Buka_Input_Born_Day2:
47610 '0ボタンからokボタン 右に移動　ここまで
47620 'OKボタンで右を押して何もしない
47630 case -1:
47640 pause 200:goto Buka_Input_Born_Day2:
47650 case 1:
47660 No=2:sp_on 9,1:sp_on 6,0
47670 pause 200:goto Buka_Input_Born_Day2:
47680 case 2:
47690 No=3:sp_on 12,1:sp_on 9,0
47700 pause 200:goto Buka_Input_Born_Day2:
47710 case 3:
47720 pause 200:goto Buka_Input_Born_Day2:
47730 case 4:
47740 No=5:sp_on 8,1:sp_on 5,0
47750 pause 200:goto Buka_Input_Born_Day2:
47760 case 5:
47770 No=6:sp_on 11,1:sp_on 8,0
47780 pause 200:goto Buka_Input_Born_Day2:
47790 case 7:
47800 No=8:sp_on 7,1:sp_on 4,0
47810 pause 200:goto Buka_Input_Born_Day2:
47820 case 8:
47830 No=9:sp_on 10,1:sp_on 7,0
47840 pause 200:goto Buka_Input_Born_Day2:
47850 case 9:
47860 pause 200:goto Buka_Input_Born_Day2:
47870 case 6:
47880 pause 200:goto Buka_Input_Born_Day2:
47890 end select
47900 'Okから右ボタンを押して何もしない ここまで
47910 endif
47920 '十字キー　ここまで
47930 '右の丸ボタンを押したとき
47940 if ((bg = 2) or (key$ = chr$(13))) then
47950 'count :決定ボタンを押した回数
47960 select case (count)
47970 '1桁目入力
47980 case 0:
47990 count = 1:
48000 if (No = -1) then
48010 '1桁目　OKでは何もしない
48020 'goto check:
48030 No=0
48040 else
48050 'ok以外のボタンを押したとき
48060 buf_buka_day = No:buf_buka_Day$ = str$(No)
48070 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
48080 buf_buka_Day$ = str$(No) + "*"
48090 endif
48100 a=No
48110 buf_Buka_Born_Day(2) = buf_buka_day
48120 locate 1,3
48130 print"                                      "
48140 color RGB(255,255,255)
48150 locate 1,3
48160 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48170 endif
48180 check2:
48190 if (No >= 1 and No <= 9) then
48200 sp_on 14,0
48210 goto Buka_Input_Born_Day2:
48220 else
48230 sp_on 14,0
48240 goto Result_Business_Aisyou:
48250 end
48260 endif
48270 case 1:
48280 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
48290 count = 2:
48300 'locate 2,3
48310 'color RGB(255,255,255)
48320 'print "生まれた日(1日~31日):";buf_Day$
48330 'Okボタンを押したときの処理
48340 '入力値　10未満のとき
48350 'c = buf_day
48360 if (No = -1) then
48370 'c=buf_day
48380 ' buf_day = c
48390 'buf_Day$ = str$(buf_day)
48400 '10以下のとき
48410 No=0
48420 if (buf_day < 10) then
48430 sp_on 14,0
48440 goto Result_Business_Aisyou:
48450 end
48460 endif
48470 else
48480 sp_on 14,0
48490 'c=No
48500 buf_buka_day = a * 10 + No
48510 buf_buka_Day$ = str$(buf_buka_day)
48520 buf_Buka_Born_Day(2) = buf_buka_day
48530 locate 0,3
48540 color Rgb(255,255,255)
48550 print "                                       "
48560 locate 1,3
48570 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48580 goto Buka_Input_Born_Day2:
48590 endif
48600 '生まれた日　2桁目の数字　or 1桁の数字 + ok
48610 case 2:
48620 count=0
48630 'c=val(buf_Day$)
48640 'buf_day=c*10+No
48650 'buf_Day$=str$(buf_day)
48660 'day=buf_day
48670 'locate 2,3
48680 'print "生まれた日(1日〜31日):";buf_Day$
48690 'No=-1:ok ボタンを押したとき
48700 if (No = -1) then No=0
48710 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
48720 sp_on 14,0
48730 goto Result_Business_Aisyou:
48740 else
48750 goto Buka_Input_Born_Day2:
48760 endif
48770 'Okボタン以外を押したとき
48780 else
48790 c=val(buf_buka_Day$)
48800 buf_buka_day = c * 10 + No
48810 buf_buka_Day$ = str$(buf_buka_day)
48820 locate 1,3
48830 print "                "
48840 locate 1,3
48850 print "生まれた日(1日~31日):"+buf_buka_Day$
48860 goto Buka_Input_Born_Day2:
48870 'endif
48880 case 3:
48890 count=4
48900 'c=val(buf_day$)
48910 'buf_day=c*10+No
48920 'buf_day$=str$(buf_day)
48930 'locate 2,3
48940 'print "生まれた日を入れてください:";buf_day$
48950 'year=val(buf_year$)
48960 if (No = -1) then
48970 'goto Buka_Input_Born_Day:
48980 sp_on 14,0:
48990 goto complate_jyoushi:
49000 else
49010 goto Buka_Input_Born_Month2:
49020 endif
49030 'case 4:
49040 'bufyear=buf_year
49050 'if (No=-1) then
49060 'buf_day = val(buf_day$)
49070 'bufday = buf_day
49080 'sp_on 14,0
49090 goto complate_jyoushi:
49100 'else
49110 'goto Buka_Input_Born_Day2:
49120 'endif
49130 end select
49140 endif
49150 if (bg2=2) then
49160 select case count2
49170 case 0:
49180 if (No=-1) then
49190 'buf_day=0:buf_Day$="**"
49200 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
49210 count=0
49220 buf_buka_day=0:buf_buka_Day$="**"
49230 goto rewrite_day3:
49240 else
49250 buf_buka_day=0:buf_buka_Day$="**"
49260 ui_msg"値が範囲外です"
49270 endif
49280 goto rewrite_day3:
49290 else
49300 goto rewrite_day3:
49310 endif
49320 rewrite_day3:
49330 locate 2,3
49340 color rgb(255,255,255)
49350 print "                                      "
49360 locate 1,3
49370 print "生まれた日(1日~31日):"+buf_buka_Day$
49380 goto Buka_Input_Born_Day2:
49390 end select
49400 endif
49410 '3.部下の生まれた日'
49420 '部下'
49430 '--------------------------------------------'
49440 'ビジネの相性　結果表示
49450 Result_Business_Aisyou:
49460 cls 3:init "kb:4"
49470 a=0:b=0:c=0:d=0:e=0:f=0
49480 bg=0:key$=""
49490 gload Gazo$ + "Screen1.png",0,0,0
49500 gload Gazo$ + "downscreen.png",0,0,800
49510 sp_on 14,0
49520 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
49530 buf_Buka = Kabara_Num(d,e,f)
49540 a_2 = buf_Buka
49550 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
49560 locate 0,1
49570 color rgb(255,0,0)
49580 print "●.相性診断結果１"
49590 locate 0,4:
49600 color rgb(255,255,255)
49610 print "1.上司の名前:";buffer_name$(0)
49620 locate 0,6
49630 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
49640 locate 0,8
49650 print "2.部下の名前:";buffer_name$(1)
49660 locate 0,10
49670 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
49680 locate 0,12
49690 print "3.上司と部下の相性:";Result_Aisyou$
49700 locate 1,15
49710 color rgb(0,0,0)
49720 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
49730 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
49740 bg = strig(1)
49750 key$ = inkey$
49760 bg2 = strig(0)
49770 pause 5
49780 wend
49790 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
49800 if (bg2 = 2) then
49810 cls 3:goto Business_Aishou_Input_1_parson:
49820 endif
49830 'ビジネスの相性占い　結果2　説明
49840 Result_Business_Aisyou2:
49850 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
49860 gload Gazo$ + "Screen1.png",0,0,0
49870 locate 0,1
49880 color rgb(255,0,0)
49890 print "●.相性の説明"
49900 color rgb(255,255,255)
49910 locate 0,4
49920 print "相性:";Result_Aisyou$
49930 locate 0,6:
49940 print "相性の説明:";buf$
49950 locate 0,15
49960 color rgb(0,0,0)
49970 print "右の丸ボタン:トップ,左のボタン:前の画面"
49980 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
49990 bg = strig(1)
50000 bg2 = strig(0)
50010 key$ = inkey$
50020 pause 5
50030 wend
50040 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50050 if ((bg2 = 2)) then goto Result_Business_Aisyou:
50060 '自作関数 ここから
50070 func read_explain$(ba$)
50080 d$=""
50090 buf_String$=""
50100 if ba$="A" then
50110 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
50120 line input #1,a$
50130 a1$=mid$(a$,1,12)
50140 a2$=mid$(a$,13,17)
50150 a3$=mid$(a$,30,17)
50160 a4$=mid$(a$,47,18)
50170 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
50180 buf_String$ = a5$
50190 close #1
50200 endif
50210 if ba$="B"  then
50220 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
50230 line input #1,b$
50240 b1$=mid$(b$,1,15)
50250 b2$=mid$(b$,16,21)
50260 'b3$=mid$(b$,33,3)
50270 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
50280 buf_String$ = b4$
50290 close #1
50300 endif
50310 if ba$="C"  then
50320 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
50330 line input #1,c$
50340 c1$ = Mid$(c$,1,15)
50350 c2$ = Mid$(c$,16,33)
50360 c3$ = c1$ + chr$(13) + c2$
50370 buf_String$ = c3$
50380 close #1
50390 endif
50400 if ba$="D" then
50410 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
50420 line input #1,d$
50430 d1$=mid$(d$,1,15)
50440 d2$=mid$(d$,16,22)
50450 d3$=mid$(d$,38,7)
50460 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
50470 buf_String$ = d4$
50480 close #1
50490 endif
50500 if ba$="E"  then
50510 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
50520 line input #1,e$
50530 e1$=Mid$(e$,1,16)
50540 e2$=Mid$(e$,17,16)
50550 e3$=Mid$(e$,33,12)
50560 e4$=Mid$(e$,45,17)
50570 e5$=Mid$(e$,62,17)
50580 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
50590 buf_String$ = e6$
50600 close #1
50610 endif
50620 if ba$="F" then
50630 '改行を追加して表示を調整
50640 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
50650 line input #1,f$
50660 f1$=Mid$(f$,1,15)
50670 f2$=Mid$(f$,16,12)
50680 buf_String$ = f1$+chr$(13)+f2$
50690 close #1
50700 endif
50710 if ba$="G" then
50720 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
50730 line input #1,g$
50740 g1$ = mid$(g$,1,16)
50750 g2$ = mid$(g$,17,18)
50760 g3$ = mid$(g$,36,21)
50770 g4$ = mid$(g$,56,6)
50780 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
50790 buf_String$ = g5$
50800 close #1
50810 endif
50820 if ba$="H" then
50830 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
50840 line input #1,h$
50850 h1$=Mid$(h$,1,17)
50860 h2$=Mid$(h$,18,21)
50870 h3$=Mid$(h$,39,20)
50880 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
50890 buf_String$ = h$
50900 close #1
50910 endif
50920 if ba$ = "I" then
50930 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
50940 line input #1,i$
50950 i1$=Mid$(i$,1,10)
50960 i2$=Mid$(i$,11,13)
50970 i3$=Mid$(i$,25,16)
50980 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
50990 buf_String$ = i$
51000 close #1
51010 endif
51020 buffer$ = buf_String$
51030 endfunc buffer$
51040 'カバラ数（数秘番号を求める）
51050 func Kabara_Num(buffer_Year,month,day)
51060 '=============================
51070 'a1:4桁のうちの1桁目を求める
51080 '例 a1:1234の4が1桁目
51090 'a2:4桁のうちの2桁目を求める
51100 '例:a2:1234の3が2桁目
51110 'a3:4桁のうちの3桁目を求める
51120 '例 a3:1234の2が3桁目
51130 'a4:4桁のうちの4桁目を求める
51140 '例 a4:1234の1が4桁目
51150 '==============================
51160 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
51170 Year = buffer_Year
51180 '処理1　整数部分を取り出す。
51190 a4 = fix(Year / 1000)
51200 a3 = fix(Year / 100) - (a4 * 10)
51210 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
51220 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
51230 '処理　２　取り出した整数部分を足す。
51240 a_ = a1 + a2 + a3 + a4 +month + day
51250 'a1=0:a2=0:a3=0:a4=0
51260 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
51270 buffer = a_
51280 'else
51290 goto recomp2:
51300 'if (a_ = 10) then
51310 '  buffer = 1
51320 endif
51330 recomp2:
51340 a5=0:a6=0
51350 a5 = fix(a_ / 10)
51360 a6 = (a_) - (a5 * 10)
51370 a_ = a5 + a6
51380 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
51390 '結果に行く
51400 goto Res2:
51410 '  if ((a_>11) and (a_<99)) then
51420 else
51430 '再度計算
51440 goto recomp2:
51450 endif
51460 '     a1 = fix(a_ / 10)
51470 '     a2 = a_ - (a1 * 10)
51480 '     a_ = a1 + a2
51490 '     buffer = a_
51500 'endif
51510 'else
51520 '    bffer = a_
51530 'endif
51540 'endif
51550 'else
51560 'talk "プログラムを終了します。"
51570 'end
51580 'endif
51590 'kabara = 10
51600 Res2:
51610 kabara = a_
51620 endfunc kabara
51630 func Kabara_Aisyou$(buff1,buff2)
51640 a=0:b=0
51650 '範囲　1~9
51660 if ((buff1 > 0 and buff1 < 10)) then
51670 a = buff1
51680 else
51690 Select case buff1
51700 case 11:
51710 buff1=9:a=buff1
51720 case 22:
51730 buff1=10:a=buff1
51740 end select
51750 endif
51760 '範囲　１~９
51770 if ((buff2 > 0 and buff2 < 10)) then
51780 b = buff2
51790 else
51800 select case buff2
51810 case 11:
51820 buff2=9:b=buff2
51830 case 12:
51840 buff2=10:b=buff2
51850 end select
51860 endif
51870 Aisyou$ = Buffer_Business_Aisyou$(a,b)
51880 endfunc Aisyou$
51890 '=============================
51900 '自作関数 ここまで
51910 '1.数秘術　トップ画面
51920 '
51930 'Data_eraseを一番最後に持ってくる
51940 '=============================
51950 Data_erase:
51960 'メモリー削除
51970 erase buf_name1$
51980 erase buf_name2$
51990 erase buffer
52000 erase buf_chart$
52010 erase Buffer_Business_Aisyou$
52020 erase buffer_name$
52030 '上司の誕生日
52040 erase buf_Jyoushi_Born_Day
52050 '部下の誕生日
52060 erase buf_Buka_Born_Day
52070 erase buf_year
52080 erase buf_month
52090 erase buf_day
52100 'フォーカスライン
52110 erase Forcus1_buffer$
52120 erase Forcus2_buffer$
52130 erase Forcus3_buffer$
52140 buffer$ = ""
52150 buf$ = ""
52160 buf_year$ = ""
52170 buf_Jyoushi_Kabara_Num = 0
52180 buf_Buka_Kabara_Num = 0
52190 count = 0
52200 buf_Month$ = ""
52210 buf_Day$ = ""
52220 b=0
52230 c=0
52240 return
