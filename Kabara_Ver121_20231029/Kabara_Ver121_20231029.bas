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
410 Version$ = "Ver:1.2.1_20231029"
420 'Gazo file Folder
430 Gazo$ = "./data/Picture/"
440 'Voice files 2023
450 Voice$ = "./data/Voice/Voice/"
460 'BirtheyeChart Data:20230626
470 Birth_eye_chart$ = "./data/chart_data/"
480 'Data File
490 Data$ = "./data/data/"
500 'Business Aisyou 結果説明保存フォルダ
510 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
520 '変数定義 パート
530 b=0:c=0
540 dim buf_name1$(10),buf_name2$(10)
550 dim buffer(9),buf_chart$(26,2)
560 'ビジネスの相性　データー
570 dim Buffer_Business_Aisyou$(12,12)
580 '生れた年代
590 dim buf_year(4):buf_year$ = ""
600 dim buf_month(2)
610 dim buf_day(2)
620 'フォーカスライン　配列
630 dim Forcus1_buffer$(3)
640 dim Forcus2_buffer$(3)
650 dim Forcus3_buffer$(2)
660 '生れた月
670 buf_Month$ = ""
680 '生れた日
690 buf_Day$ = ""
700 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
710 dim buffer_name$(3)
720 '1-1.上司の誕生日(数値データー)
730 dim buf_Jyoushi_Born_Day(3)
740 '1-2.上司の数秘ナンバー(数値データー)
750 buf_Jyoushi_Kabara_Num = 0
760 '2-1.部下の誕生日(数値データー)
770 dim buf_Buka_Born_Day(3)
780 '2-2.部下の数秘ナンバー(数秘データー)
790 buf_Buka_Kabara_Num = 0
800 count=0
810 '部下の数秘ナンバー
820 'File 読み込み
830 '1.ビジネスの相性占い
840 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
850 for i=0 to 11
860 for j=0 to 11
870 input #1,a$
880 Buffer_Business_Aisyou$(j,i) = a$
890 next j
900 next i
910 close #1
920 '2.Birth Eye chart$
930 '2.バーズアイグリッドを読み込む
940 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
950 for j=0 to 25
960 for i=0 to 1
970 input #1,a$
980 buf_chart$(j,i) = a$
990 next i
1000 next j
1010 close #1
1020 'File 読み込み　ここまで
1030 'Main画面
1040 screen 1,1,1,1
1050 Main_Screen:
1060 cls 3:
1070 No=0
1080 gload Gazo$ + "Selection.png",1,5,200
1090 gload Gazo$ + "Selection.png",1,5,300
1100 gload Gazo$ + "Selection.png",1,5,400
1110 gload Gazo$ + "Selection.png",1,5,500
1120 '4
1130 gload Gazo$ + "Selection.png",1,35,300
1140 '5
1150 gload Gazo$ + "Selection.png",1,35,400
1160 '6
1170 gload Gazo$ + "Selection.png",1,35,500
1180 '7
1190 gload Gazo$ + "Selection.png",1,70,300
1200 '8
1210 gload Gazo$ + "Selection.png",1,70,400
1220 '9
1230 gload Gazo$ + "Selection.png",1,70,500
1240 '10
1250 gload Gazo$ + "Selection.png",1,110,300
1260 '11
1270 gload Gazo$ + "Selection.png",1,110,400
1280 '12
1290 gload Gazo$ + "Selection.png",1,110,500
1300 '13:0
1310 gload Gazo$ + "Selection.png",1,150,400
1320 gload Gazo$ + "Selection.png",1,200,400
1330 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1340 gload Gazo$ + "downscreen.png",0,0,800
1350 sp_def 0,(5,300),32,32
1360 sp_def 1,(5,400),32,32
1370 sp_def 2,(5,500),32,32
1380 sp_def 3,(5,600),32,32
1390 '1
1400 sp_def 4,(35,300),32,32
1410 '2
1420 sp_def 5,(35,400),32,32
1430 '3
1440 sp_def 6,(35,500),32,32
1450 '4
1460 sp_def 7,(70,300),32,32
1470 '5
1480 sp_def 8,(70,400),32,32
1490 '6
1500 sp_def 9,(70,500),32,32
1510 '7
1520 sp_def 10,(110,300),32,32
1530 '8
1540 sp_def 11,(110,400),32,32
1550 '9
1560 sp_def 12,(110,400),32,32
1570 sp_def 13,(150,400),32,32
1580 sp_def 14,(200,400),32,32
1590 'Sprite OFF
1600 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1610 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1620 sp_put 0,(5,300),0,0
1630 sp_put 1,(5,400),1,0
1640 sp_put 2,(5,500),2,0
1650 sp_put 3,(5,600),3,0
1660 '1
1670 sp_put 4,(130,300),4,0
1680 '2
1690 sp_put 5,(130,400),5,0
1700 '3
1710 sp_put 6,(130,500),6,0
1720 '4
1730 sp_put 7,(340,300),7,0
1740 '5
1750 sp_put 8,(340,400),8,0
1760 '6
1770 sp_put 9,(340,500),9,0
1780 '7
1790 sp_put 10,(540,300),10,0
1800 '8
1810 sp_put 11,(540,400),11,0
1820 '9
1830 sp_put 12,(540,500),12,0
1840 '
1850 sp_put 13,(340,600),13,0
1860 sp_put 14,(540,600),14,0
1870 Main_Top:
1880 'Main Message 2023.06.07
1890 '再生を止める
1900 play ""
1910 init "kb:4"
1920 'font 32:
1930 font 48
1940 print chr$(13) + chr$(13) + chr$(13)
1950 color rgb(217,255,212)
1960 print "番号を選んでください" + chr$(13)
1970 '0
1980 print " :1.数秘術占い" + chr$(13)
1990 '1
2000 print " :2.設 定" + chr$(13)
2010 '2
2020 print " :3.ヘルプ" + chr$(13)
2030 '3
2040 print " :4.(プログラムを)終了する" + chr$(13)
2050 COLOR rgb(0,0,0):No=0
2060 locate 1,15
2070 print "                                       "
2080 locate 1,15:print "1.数秘術占いを選択"
2090 play Voice$ + "Voice_Main_Message_20230607.mp3"
2100 Main_Screen_Select:
2110 y = 0:key$ = "":bg = 0:bg2=0
2120 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2130 y = stick(1)
2140 '"May (2023)"
2150 key$ = inkey$
2160 bg = strig(1)
2170 bg2 = strig(0)
2180 pause 2
2190 wend
2200 '1.
2210 'ジョイパッドのソース ソート　ここから
2220 'カーソル　下 or 十字キー下
2230 if ((y = 1) or (key$ = chr$(31))) then
2240 select case No
2250 case 0:
2260 '1
2270 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2280 case 1:
2290 '2
2300 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2310 case 2:
2320 '3
2330 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2340 case 3:
2350 '0
2360 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2370 end select
2380 endif
2390 '2.
2400 'カーソル　上　or 十字キー  上
2410 if ((y = -1) or (key$ = chr$(30))) then
2420 select case No
2430 case 0:
2440 '3
2450 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2460 case 1:
2470 '0
2480 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2490 case 2:
2500 '1
2510 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2520 case 3:
2530 '2
2540 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2550 end select
2560 endif
2570 'ジョイパッド　ソース 部分　ここまで
2580 'ジョイパッド右　　or Enter key 決定
2590 if ((bg = 2) OR (key$ = chr$(13))) then
2600 select case No
2610 case 0:
2620 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2630 case 1:
2640 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2650 case 2:
2660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2670 case 3:
2680 play "":pause 200
2690 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2700 end select
2710 endif
2720 if (bg2 = 2) then
2730 play "":pause 200
2740 play Voice$ + "Voice_Main_Message_20230607.mp3"
2750 goto Main_Screen_Select:
2760 endif
2770 'Version
2780 Version:
2790 cls 3:PLAY ""
2800 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2810 gload Gazo$ + "downscreen.png",0,0,800
2820 init"kb:4":font 32
2830 'talk"バージョン情報です"
2840 'Message :Version
2850 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2860 locate 0,5
2870 color rgb(0,0,0)
2880 print "・Title:数秘術占い";chr$(13)
2890 print "・" + Version$ + chr$(13)
2900 print "・Author:licksjp"+chr$(13)
2910 print "・E-mail:licksjp@gmail.com" + chr$(13)
2920 locate 0,18
2930 print "(C)licksjp All rights " + chr$(13)
2940 locate 13,19
2950 print "reserved since 2009"+chr$(13)
2960 locate 0,23
2970 color rgb(255,255,255)
2980 print "ジョイパッドの右を押してください"
2990 Versionn_Selection:
3000 bg = 0:key$ = "":bg2 = 0
3010 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3020 bg = strig(1)
3030 key$ = inkey$
3040 bg2 = strig(0)
3050 pause 2
3060 wend
3070 if ((bg = 2) or (key$ = chr$(13))) then
3080 pause 200:cls 4:goto Main_Screen:
3090 endif
3100 if (bg2=2) then
3110 play "":pause 200
3120 play Voice$ + "Voice_Version_Message_20230607.mp3"
3130 goto Versionn_Selection:
3140 endif
3150 '1.数秘ナンバーを求める
3160 '誕生日入力(生れた年代)
3170 Input_Seireki:
3180 cls 3:play "":count=0:count2=0
3190 'No = -1:Okのとき
3200 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3210 for i=0 to 3
3220 buf_year(i)=0
3230 next i
3240 gload Gazo$ + "Screen1.png",0,0,0
3250 gload Gazo$ + "downscreen.png",0,0,800
3260 'Init"kb:2"
3270 '音声ファイル再生 2023.06.07
3280 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3290 font 48
3300 locate 0,1
3310 '文字色：黒　 color rgb(0,0,0)
3320 color rgb(255,255,255)
3330 print "生まれた年代を入れて下さい" + chr$(13)
3340 color rgb(255,255,255)
3350 locate 2,3
3360 print "生まれた年代(西暦4桁):" + buf_year$
3370 '=============================
3380 'テンキーの色(1~９)　白 ,決定ボタン　青
3390 '=============================
3400 color rgb(255,255,255)
3410 'locate 4,6:print ":7"
3420 'locate 9,6:print ":8"
3430 'locate 12,6:print ":9"
3440 locate 4,6
3450 print ":7  :8  :9" + chr$(13)
3460 color rgb(255,255,255)
3470 locate 4,8
3480 print ":4  :5  :6" + chr$(13)
3490 color rgb(255,255,255)
3500 locate 4,10
3510 print ":1  :2  :3" + chr$(13)
3520 locate 4,12
3530 print "    :0"
3540 locate 12,12
3550 color rgb(255,0,0)
3560 print ":Ok"
3570 sp_on 4,0: sp_on 5,0:sp_on 6,0
3580 sp_on 7,0:sp_on 8,0:sp_on 9,0
3590 sp_on 10,0:sp_on 11,0:sp_on 12,0
3600 sp_on 13,0:sp_on 14,1
3610 Input_Seireki2:
3620 key$="":bg=0:y=0:y2=0:bg2=0:
3630 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3640 key$ = inkey$
3650 bg = strig(1)
3660 y = stick(1)
3670 y2 = stick(0)
3680 bg2 = strig(0)
3690 pause 15
3700 wend
3710 '十字キー　ここから
3720 '上の矢印　または、十字キー上
3730 if ((y = -1) or (key$ = chr$(30))) then
3740 select case No
3750 'No=-1:okのとき:初期の状態
3760 '0kボタンから３に移動
3770 '上に行く 処理
3780 case -1:
3790 No=3:sp_on 12,1:sp_on 14,0
3800 pause 200:goto Input_Seireki2:
3810 '選択肢:3
3820 '3ボタンから 6に移動
3830 case 3:
3840 No=6:sp_on 12,0:sp_on 11,1
3850 pause 200:goto Input_Seireki2:
3860 '6ボタンから ９に移動
3870 case 6:
3880 No=9:sp_on 10,1:sp_on 11,0
3890 pause 200:goto Input_Seireki2:
3900 '6ボタンから ９に移動　ここまで
3910 '9で上を押して何もしない
3920 case 9:
3930 '何もしない
3940 No=9
3950 pause 200:goto Input_Seireki2:
3960 '9で上を押しても何もしない　ここまで
3970 '上　 0ボタンから2ボタン
3980 'sp_on 6,1:1
3990 'sp_on 8,1:5
4000 'sp_on 7,1:7
4010 case 0:
4020 No=2:sp_on 13,0:sp_on 9,1:
4030 pause 200:goto Input_Seireki2:
4040 '上  0ボタンから2ボタン　ここまで
4050 '2から５になる 上
4060 case 2:
4070 No=5:sp_on 8,1:sp_on 9,0:
4080 pause 200:goto Input_Seireki2:
4090 case 5:
4100 No=8:sp_on 7,1:sp_on 8,0
4110 pause 200:goto Input_Seireki2:
4120 case 8:
4130 pause 200:goto Input_Seireki2:
4140 case 1:
4150 No=4:sp_on 5,1:sp_on 6,0
4160 pause 200:goto Input_Seireki2:
4170 case 4:
4180 No=7:sp_on 4,1:sp_on 5,0
4190 pause 200:goto Input_Seireki2:
4200 case 7:
4210 pause 200:goto Input_Seireki2:
4220 end select
4230 endif
4240 '左３　ここまで
4250 '下の矢印
4260 '中央 2
4270 if ((y=1) or (key$ = chr$(31))) then
4280 select case No
4290 '9から６に下げる
4300 case 9:
4310 No=6:sp_on 11,1:sp_on 10,0
4320 pause 200:goto Input_Seireki2:
4330 '6から３に下げる
4340 case 6:
4350 No=3:sp_on 12,1:sp_on 11,0
4360 pause 200:goto Input_Seireki2:
4370 '3から０ｋに変える
4380 case 3:
4390 No=-1:sp_on 14,1:sp_on 12,0
4400 pause 200:goto Input_Seireki2:
4410 'Okから下のボタンを押しても何もしない
4420 case -1:
4430 pause 200:goto Input_Seireki2:
4440 case 8:
4450 No=5:sp_on 8,1:sp_on 7,0
4460 pause 200:goto Input_Seireki2:
4470 case 5:
4480 No=2:sp_on 9,1:sp_on 8,0
4490 pause 200:goto Input_Seireki2:
4500 case 2:
4510 No=0:sp_on 13,1:sp_on 9,0
4520 pause 200:goto Input_Seireki2:
4530 case 0:
4540 pause 200:goto Input_Seireki2:
4550 case 7:
4560 No=4:sp_on 5,1:sp_on 4,0
4570 pause 200:goto Input_Seireki2:
4580 case 4:
4590 No=1:sp_on 6,1:sp_on 5,0
4600 pause 200:goto Input_Seireki2:
4610 case 1:
4620 pause 200:goto Input_Seireki2:
4630 end select
4640 endif
4650 '左へボタン 十字キー　左　or 　カーソル左
4660 if ((y2 = -1) or (key$ = chr$(29))) then
4670 select case No
4680 'Ok ボタン  Okから　左　０に行く
4690 case -1:
4700 No=0:sp_on 13,1:sp_on 14,0
4710 pause 200:goto Input_Seireki2:
4720 '0 ボタン  左　何もしない
4730 case 0:
4740 pause 200:goto Input_Seireki2:
4750 case 3:
4760 No=2:sp_on 9,1:sp_on 12,0:
4770 pause 200:goto Input_Seireki2:
4780 case 2:
4790 No=1:sp_on 6,1:sp_on 9,0:
4800 pause 200:goto Input_Seireki2:
4810 case 1:
4820 pause 200:goto Input_Seireki2:
4830 case 6:
4840 No=5:sp_on 8,1:sp_on 11,0
4850 pause 200:goto Input_Seireki2:
4860 case 5:
4870 No=4:sp_on 5,1:sp_on 8,0
4880 pause 200:goto Input_Seireki2:
4890 case 4:
4900 pause 200:goto Input_Seireki2:
4910 case 9:
4920 No=8:sp_on 7,1:sp_on 10,0
4930 pause 200:goto Input_Seireki2:
4940 case 8:
4950 No=7:sp_on 4,1:sp_on 7,0
4960 pause 200:goto Input_Seireki2:
4970 case 7:
4980 pause 200:goto Input_Seireki2:
4990 end select
5000 endif
5010 '右  十字キー　右　or カーソル　右
5020 if ((y2 = 1) or (key$ = chr$(28))) then
5030 select case No
5040 '0ボタンからokボタン右に移動
5050 case 0:
5060 No=-1:sp_on 14,1:sp_on 13,0
5070 pause 200:goto Input_Seireki2:
5080 '0ボタンからokボタン 右に移動　ここまで
5090 'OKボタンで右を押して何もしない
5100 case -1:
5110 pause 200:goto Input_Seireki2:
5120 case 1:
5130 No=2:sp_on 9,1:sp_on 6,0
5140 pause 200:goto Input_Seireki2:
5150 case 2:
5160 No=3:sp_on 12,1:sp_on 9,0
5170 pause 200:goto Input_Seireki2:
5180 case 3:
5190 pause 200:goto Input_Seireki2:
5200 case 4:
5210 No=5:sp_on 8,1:sp_on 5,0
5220 pause 200:goto Input_Seireki2:
5230 case 5:
5240 No=6:sp_on 11,1:sp_on 8,0
5250 pause 200:goto Input_Seireki2:
5260 case 7:
5270 No=8:sp_on 7,1:sp_on 4,0
5280 pause 200:goto Input_Seireki2:
5290 case 8:
5300 No=9:sp_on 10,1:sp_on 7,0
5310 pause 200:goto Input_Seireki2:
5320 case 9:
5330 pause 200:goto Input_Seireki2:
5340 case 6:
5350 pause 200:goto Input_Seireki2:
5360 end select
5370 'Okから右ボタンを押して何もしない ここまで
5380 endif
5390 '十字キー　ここまで
5400 if ((bg=2) or (key$=chr$(13))) then
5410 select case count
5420 case 0:
5430 count=1
5440 if (No=-1) then
5450 count=0
5460 'Okボタンを押したとき
5470 goto Input_Seireki2:
5480 else
5490 '===================================
5500 'Okボタン以外が押されたとき  1桁目の入力
5510 '===================================
5520 count2=1
5530 if (No >= 1 and No <= 2) then
5540 buf_year$="":buf_year$ = str$(No)
5550 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5560 n1 = len("生まれた年代(西暦4桁): ")
5570 locate 2,3
5580 color rgb(255,255,255)
5590 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5600 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5610 'print "生まれた年代(西暦4桁):";buf_year2$
5620 print buf_Born_Year_line$
5630 goto Input_Seireki2:
5640 else
5650 count=0
5660 ui_msg"数字が範囲外になります。"
5670 buf_year$="":buf_year=0
5680 goto Input_Seireki2:
5690 endif
5700 endif
5710 case 1:
5720 count = 2
5730 if (No = -1) then
5740 count = 1
5750 goto Input_Seireki2:
5760 else
5770 count2 = 1
5780 b = val(buf_year$)
5790 buf_year = b * 10 + No
5800 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5810 locate 2,3
5820 color rgb(255,255,255)
5830 print "                                                                "
5840 locate 2,3
5850 print "生まれた年代(西暦4桁):";buf_year2$
5860 'if (No = -1) then
5870 'count=1
5880 goto Input_Seireki2:
5890 endif
5900 case 2:
5910 count=3
5920 if (No=-1) then
5930 count =2
5940 goto Input_Seireki2:
5950 else
5960 b = val(buf_year$)
5970 buf_year = b*10 + No
5980 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
5990 locate 2,3
6000 color rgb(255,255,255)
6010 print "                                        "
6020 locate 2,3
6030 print "生まれた年代(西暦4桁):";buf_year2$
6040 goto Input_Seireki2:
6050 endif
6060 case 3:
6070 count=4
6080 if (No = -1) then
6090 count=3
6100 goto Input_Seireki2:
6110 else
6120 b = val(buf_year$)
6130 buf_year=b*10+No
6140 buf_year$=str$(buf_year)
6150 locate 2,3
6160 color RGB(255,255,255)
6170 print "                                      "
6180 locate 2,3
6190 print "生まれた年代(西暦4桁):";buf_year$
6200 buf_year=val(buf_year$)
6210 'year=val(buf_year$)
6220 'if (No=-1) then
6230 'goto Input_Born_Month:
6240 'else
6250 goto Input_Seireki2:
6260 endif
6270 case 4:
6280 'bufyear=buf_year
6290 if (No=-1) then
6300 buf_year = val(buf_year$)
6310 bufyear = buf_year
6320 sp_on 14,0
6330 goto Input_Born_Month:
6340 else
6350 goto Input_Seireki2:
6360 endif
6370 end select
6380 endif
6390 '=========================
6400 'bg2　キャンセルボタン
6410 '=========================
6420 if (bg2 = 2) then
6430 select case count2
6440 case 0:
6450 'Okボタンを押したときの処理
6460 if (No = -1) then
6470 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6480 'count = 0
6490 locate 2,3
6500 color rgb(255,255,255)
6510 print "                                      "
6520 locate 2,3
6530 print "生まれた年代（西暦4桁):";buf_year$
6540 '=============================
6550 'case 0:前の画面に戻る 数秘術トップメニュー
6560 '=============================
6570 sp_on 14,0:goto Kabara_TopScreen:
6580 else
6590 'count=0
6600 '(buf_year=0) then
6610 buf_year = 0:buf_year$ = string$(4,"*")
6620 goto Input_Seireki2:
6630 'endif
6640 endif
6650 case 1:
6660 if (No = -1) then
6670 count2 = 0:count = 0
6680 buf$=right$(buf_year$,1)
6690 if (val(buf$) >= 1 and val(buf$) <= 9) then
6700 buf_year$ = "****":buf_year=0
6710 color rgb(255,255,255)
6720 locate 0,3:
6730 print "                                      "
6740 locate 2,3
6750 print "生まれた年代（西暦4桁):" + buf_year$
6760 goto Input_Seireki2:
6770 endif
6780 else
6790 endif
6800 end select
6810 endif
6820 end
6830 'Input"生れた年代(4桁,〜2025年):",year
6840 'if year > 2025 then goto Input_Seireki:
6850 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6860 '"4桁目"
6870 'bufyear4 = fix(year / 1000)
6880 '"3桁目"
6890 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6900 '"2桁目"
6910 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6920 '"1桁目"
6930 'bufyear1 = fix((year - ((bufyear4*
6940 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6950 '生れた月を入力
6960 Input_Born_Month:
6970 cls 3:play "":count=0:count2=0
6980 'No=-1:Okのとき
6990 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7000 for i=0 to 1
7010 buf_month(i)=0
7020 next i
7030 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7040 gload Gazo$ + "Screen1.png",0,0,0
7050 gload Gazo$ + "downscreen.png",0,0,800
7060 'Init"kb:2"
7070 '音声ファイル再生 2023.06.07
7080 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7090 font 48
7100 locate 0,1
7110 '文字色：黒　 color rgb(0,0,0)
7120 '文字色:白
7130 color rgb(255,255,255)
7140 print "生まれた月を入れて下さい" + chr$(13)
7150 '文字色:白
7160 color rgb(255,255,255)
7170 locate 2,3
7180 '文字色:白
7190 print "生まれた月(1月~12月):";buf_Month$
7200 color rgb(255,255,255)
7210 'locate 4,6:print ":7"
7220 'locate 9,6:print ":8"
7230 'locate 12,6:print ":9"
7240 locate 4,6
7250 '文字色:赤
7260 print ":7  :8  :9" + chr$(13)
7270 color rgb(255,255,255)
7280 locate 4,8
7290 print ":4  :5  :6" + chr$(13)
7300 color rgb(255,255,255)
7310 locate 4,10
7320 print ":1  :2  :3" + chr$(13)
7330 locate 4,12
7340 print "    :0"
7350 locate 12,12
7360 color rgb(255,0,0)
7370 print ":Ok"
7380 sp_on 4,0: sp_on 5,0:sp_on 6,0
7390 sp_on 7,0:sp_on 8,0:sp_on 9,0
7400 sp_on 10,0:sp_on 11,0:sp_on 12,0
7410 sp_on 13,0:sp_on 14,1
7420 Input_Born_Month2:
7430 key$="":bg=0:y=0:y2=0:bg2=0
7440 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7450 key$ = inkey$
7460 bg = strig(1)
7470 y = stick(1)
7480 y2 = stick(0)
7490 bg2 = strig(0)
7500 pause 5
7510 wend
7520 '十字キー　ここから
7530 '上の矢印　または、十字キー上
7540 if ((y = -1) or (key$ = chr$(30))) then
7550 select case No
7560 'No=-1:okのとき:初期の状態
7570 '0kボタンから３に移動
7580 '上に行く 処理
7590 case -1:
7600 No=3:sp_on 12,1:sp_on 14,0
7610 pause 200:goto Input_Born_Month2:
7620 '選択肢:3
7630 '3ボタンから 6に移動
7640 case 3:
7650 No=6:sp_on 12,0:sp_on 11,1
7660 pause 200:goto Input_Born_Month2:
7670 '6ボタンから ９に移動
7680 case 6:
7690 No=9:sp_on 10,1:sp_on 11,0
7700 pause 200:goto Input_Born_Month2:
7710 '6ボタンから ９に移動　ここまで
7720 '9で上を押して何もしない
7730 case 9:
7740 '何もしない
7750 No=9
7760 pause 200:goto Input_Born_Month2:
7770 '9で上を押しても何もしない　ここまで
7780 '上　 0ボタンから2ボタン
7790 'sp_on 6,1:1
7800 'sp_on 8,1:5
7810 'sp_on 7,1:7
7820 case 0:
7830 No=2:sp_on 13,0:sp_on 9,1:
7840 pause 200:goto Input_Born_Month2:
7850 '上  0ボタンから2ボタン　ここまで
7860 '2から５になる 上
7870 case 2:
7880 No=5:sp_on 8,1:sp_on 9,0:
7890 pause 200:goto Input_Born_Month2:
7900 case 5:
7910 No=8:sp_on 7,1:sp_on 8,0
7920 pause 200:goto Input_Born_Month2:
7930 case 8:
7940 pause 200:goto Input_Born_Month2:
7950 case 1:
7960 No=4:sp_on 5,1:sp_on 6,0
7970 pause 200:goto Input_Born_Month2:
7980 case 4:
7990 No=7:sp_on 4,1:sp_on 5,0
8000 pause 200:goto Input_Born_Month2:
8010 case 7:
8020 pause 200:goto Input_Born_Month2:
8030 end select
8040 endif
8050 '左３　ここまで
8060 '下の矢印
8070 '中央 2
8080 if ((y=1) or (key$ = chr$(31))) then
8090 select case No
8100 '9から６に下げる
8110 case 9:
8120 No=6:sp_on 11,1:sp_on 10,0
8130 pause 200:goto Input_Born_Month2:
8140 '6から３に下げる
8150 case 6:
8160 No=3:sp_on 12,1:sp_on 11,0
8170 pause 200:goto Input_Born_Month2:
8180 '3から０ｋに変える
8190 case 3:
8200 No=-1:sp_on 14,1:sp_on 12,0
8210 pause 200:goto Input_Born_Month2:
8220 'Okから下のボタンを押しても何もしない
8230 case -1:
8240 pause 200:goto Input_Born_Month2:
8250 case 8:
8260 No=5:sp_on 8,1:sp_on 7,0
8270 pause 200:goto Input_Born_Month2:
8280 case 5:
8290 No=2:sp_on 9,1:sp_on 8,0
8300 pause 200:goto Input_Born_Month2:
8310 case 2:
8320 No=0:sp_on 13,1:sp_on 9,0
8330 pause 200:goto Input_Born_Month2:
8340 case 0:
8350 pause 200:goto Input_Born_Month2:
8360 case 7:
8370 No=4:sp_on 5,1:sp_on 4,0
8380 pause 200:goto Input_Born_Month2:
8390 case 4:
8400 No=1:sp_on 6,1:sp_on 5,0
8410 pause 200:goto Input_Born_Month2:
8420 case 1:
8430 pause 200:goto Input_Born_Month2:
8440 end select
8450 endif
8460 '左へボタン 十字キー　左　or 　カーソル左
8470 if ((y2 = -1) or (key$ = chr$(29))) then
8480 select case No
8490 'Ok ボタン  Okから　左　０に行く
8500 case -1:
8510 No=0:sp_on 13,1:sp_on 14,0
8520 pause 200:goto Input_Born_Month2:
8530 '0 ボタン  左　何もしない
8540 case 0:
8550 pause 200:goto Input_Born_Month2:
8560 case 3:
8570 No=2:sp_on 9,1:sp_on 12,0:
8580 pause 200:goto Input_Born_Month2:
8590 case 2:
8600 No=1:sp_on 6,1:sp_on 9,0:
8610 pause 200:goto Input_Born_Month2:
8620 case 1:
8630 pause 200:goto Input_Born_Month2:
8640 case 6:
8650 No=5:sp_on 8,1:sp_on 11,0
8660 pause 200:goto Input_Born_Month2:
8670 case 5:
8680 No=4:sp_on 5,1:sp_on 8,0
8690 pause 200:goto Input_Born_Month2:
8700 case 4:
8710 pause 200:goto Input_Born_Month2:
8720 case 9:
8730 No=8:sp_on 7,1:sp_on 10,0
8740 pause 200:goto Input_Born_Month2:
8750 case 8:
8760 No=7:sp_on 4,1:sp_on 7,0
8770 pause 200:goto Input_Born_Month2:
8780 case 7:
8790 pause 200:goto Input_Born_Month2:
8800 end select
8810 endif
8820 '右  十字キー　右　or カーソル　右
8830 if ((y2 = 1) or (key$ = chr$(28))) then
8840 select case No
8850 '0ボタンからokボタン右に移動
8860 case 0:
8870 No=-1:sp_on 14,1:sp_on 13,0
8880 pause 200:goto Input_Born_Month2:
8890 '0ボタンからokボタン 右に移動　ここまで
8900 'OKボタンで右を押して何もしない
8910 case -1:
8920 pause 200:goto Input_Born_Month2:
8930 case 1:
8940 No=2:sp_on 9,1:sp_on 6,0
8950 pause 200:goto Input_Born_Month2:
8960 case 2:
8970 No=3:sp_on 12,1:sp_on 9,0
8980 pause 200:goto Input_Born_Month2:
8990 case 3:
9000 pause 200:goto Input_Born_Month2:
9010 case 4:
9020 No=5:sp_on 8,1:sp_on 5,0
9030 pause 200:goto Input_Born_Month2:
9040 case 5:
9050 No=6:sp_on 11,1:sp_on 8,0
9060 pause 200:goto Input_Born_Month2:
9070 case 7:
9080 No=8:sp_on 7,1:sp_on 4,0
9090 pause 200:goto Input_Born_Month2:
9100 case 8:
9110 No=9:sp_on 10,1:sp_on 7,0
9120 pause 200:goto Input_Born_Month2:
9130 case 9:
9140 pause 200:goto Input_Born_Month2:
9150 case 6:
9160 pause 200:goto Input_Born_Month2:
9170 end select
9180 'Okから右ボタンを押して何もしない ここまで
9190 endif
9200 '十字キー　ここまで
9210 '右の丸ボタン　決定キー
9220 if ((bg=2) or (key$=chr$(13))) then
9230 select case count
9240 case 0:
9250 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9260 if (buf_month = 1 or buf_month = 2) then
9270 locate 2,3
9280 color RGB(255,255,255)
9290 print "生まれた月(1月~12月):";buf_Month2$
9300 else
9310 locate 2,3
9320 color Rgb(255,255,255)
9330 print "生まれた月(1月~12月):";buf_Month$
9340 endif
9350 goto Input_Born_Month2:
9360 case 1:
9370 count = 2:c = No
9380 c = val(buf_Month$)
9390 if (No = -1) then
9400 'if No=1 or No=2 then
9410 'endif
9420 month = buf_month
9430 buf_month=val(buf_Month$)
9440 month=buf_month
9450 '生まれた日に飛ぶ
9460 goto Input_Born_Day:
9470 else
9480 buf_month = c*10 + No
9490 buf_Month$= str$(buf_month)
9500 locate 2,3
9510 color Rgb(255,255,255)
9520 print "生まれた月(1月~12月):";buf_Month$
9530 goto Input_Born_Month2:
9540 endif
9550 case 2:
9560 count=3:count2=1
9570 'c= val(buf_Month$)
9580 'buf_month = c*10 + No
9590 'buf_Month$ = str$(buf_month)
9600 'locate 2,3
9610 'print "生まれた月(1月～12月):";buf_Month$
9620 'goto Input_Born_Month2:
9630 'case 3:
9640 'count=4
9650 'b=val(buf_month$)
9660 'buf_month=c*10+No
9670 'buf_Month$=str$(buf_month)
9680 'locate 2,3
9690 'print "生まれた月(1月～12月):";buf_Month$
9700 'buf_month=val(buf_Month$)
9710 'year=val(buf_year$)
9720 if (No=-1) then
9730 goto Input_Born_Day:
9740 else
9750 'goto Input_Born_Month2:
9760 endif
9770 'case 4:
9780 'bufyear=buf_year
9790 'if (No=-1) then
9800 'buf_month = val(buf_Month$)
9810 'month = buf_month
9820 'sp_on 14,0
9830 'goto Input_Born_Day:
9840 'else
9850 'goto Input_Born_Month2:
9860 'endif
9870 end select
9880 endif
9890 '左の丸ボタン　キャンセル
9900 if (bg2=2) then
9910 select case count2
9920 case 0:
9930 if (No = -1) then
9940 buf_month=0:buf_Month$="**"
9950 count2=0:count=0
9960 locate 0,3:print "                                              "
9970 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9980 'if (buf_month > 1) then
9990 sp_on 14,0:goto Input_Born_Month2:
10000 'goto rewrite:
10010 else
10020 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10030 buf_month=0:buf_Month$="**"
10040 locate 2,3
10050 color rgb(255,255,255)
10060 print "                                       "
10070 goto rewrite:
10080 if (No>2) then
10090 ui_msg"値が範囲外です。"
10100 goto rewrite:
10110 endif
10120 endif
10130 'endif
10140 rewrite:
10150 locate 2,3
10160 color rgb(255,255,255)
10170 print "                                      "
10180 locate 2,3
10190 print "生まれた月(1月~12月):";buf_Month$
10200 goto Input_Born_Month2:
10210 endif
10220 case 1:
10230 buf_Month$="**":buf_month=0
10240 if No=-1 then
10250 count2=2:count=0
10260 locate 0,3
10270 print "                                      "
10280 locate 2,3:
10290 print "生まれた月(1月~12月):"+buf_Month$
10300 goto Input_Born_Month2:
10310 endif
10320 case 2:
10330 sp_on 14,0:goto Input_Seireki:
10340 end select
10350 endif
10360 'endif
10370 end
10380 'end
10390 '生れた日を入力
10400 Input_Born_Day:
10410 '生まれた日入力
10420 cls 3:play ""
10430 'No=-1:Okのとき
10440 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10450 for i=0 to 1
10460 buf_day(i)=0
10470 next i
10480 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10490 gload Gazo$ + "Screen1.png",0,0,0
10500 gload Gazo$ + "downscreen.png",0,0,800
10510 'Init"kb:2"
10520 '音声ファイル再生 2023.06.07
10530 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10540 font 48
10550 locate 0,1
10560 '文字色：黒　 color rgb(0,0,0)
10570 color rgb(255,255,255)
10580 print "生まれた日を入れて下さい" + chr$(13)
10590 color rgb(255,255,255)
10600 locate 2,3
10610 print "生まれた日(1日~31日):";buf_Day$
10620 color rgb(255,255,255)
10630 'locate 4,6:print ":7"
10640 'locate 9,6:print ":8"
10650 'locate 12,6:print ":9"
10660 locate 4,6
10670 print ":7  :8  :9" + chr$(13)
10680 '=======================
10690 'テンキー　色　白　決定ボタン　青
10700 '=======================
10710 color rgb(255,255,255)
10720 locate 4,8
10730 print ":4  :5  :6" + chr$(13)
10740 color rgb(255,255,255)
10750 locate 4,10
10760 print ":1  :2  :3" + chr$(13)
10770 locate 4,12
10780 print "    :0"
10790 locate 12,12
10800 color rgb(255,0,0)
10810 print ":Ok"
10820 sp_on 4,0: sp_on 5,0:sp_on 6,0
10830 sp_on 7,0:sp_on 8,0:sp_on 9,0
10840 sp_on 10,0:sp_on 11,0:sp_on 12,0
10850 sp_on 13,0:sp_on 14,1
10860 Input_Born_Day2:
10870 key$="":bg=0:y=0:y2=0:bg2=0
10880 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10890 key$ = inkey$
10900 bg = strig(1)
10910 y = stick(1)
10920 y2 = stick(0)
10930 bg2 = strig(0)
10940 pause 5
10950 wend
10960 '十字キー　ここから
10970 '上の矢印　または、十字キー上
10980 if ((y = -1) or (key$ = chr$(30))) then
10990 select case No
11000 'No=-1:okのとき:初期の状態
11010 '0kボタンから３に移動
11020 '上に行く 処理
11030 case -1:
11040 No=3:sp_on 12,1:sp_on 14,0
11050 pause 200:goto Input_Born_Day2:
11060 '選択肢:3
11070 '3ボタンから 6に移動
11080 case 3:
11090 No=6:sp_on 12,0:sp_on 11,1
11100 pause 200:goto Input_Born_Day2:
11110 '6ボタンから ９に移動
11120 case 6:
11130 No=9:sp_on 10,1:sp_on 11,0
11140 pause 200:goto Input_Born_Day2:
11150 '6ボタンから ９に移動　ここまで
11160 '9で上を押して何もしない
11170 case 9:
11180 '何もしない
11190 No=9
11200 pause 200:goto Input_Born_Day2:
11210 '9で上を押しても何もしない　ここまで
11220 '上　 0ボタンから2ボタン
11230 'sp_on 6,1:1
11240 'sp_on 8,1:5
11250 'sp_on 7,1:7
11260 case 0:
11270 No=2:sp_on 13,0:sp_on 9,1:
11280 pause 200:goto Input_Born_Day2:
11290 '上  0ボタンから2ボタン　ここまで
11300 '2から５になる 上
11310 case 2:
11320 No=5:sp_on 8,1:sp_on 9,0:
11330 pause 200:goto Input_Born_Day2:
11340 case 5:
11350 No=8:sp_on 7,1:sp_on 8,0
11360 pause 200:goto Input_Born_Day2:
11370 case 8:
11380 pause 200:goto Input_Born_Day2:
11390 case 1:
11400 No=4:sp_on 5,1:sp_on 6,0
11410 pause 200:goto Input_Born_Day2:
11420 case 4:
11430 No=7:sp_on 4,1:sp_on 5,0
11440 pause 200:goto Input_Born_Day2:
11450 case 7:
11460 pause 200:goto Input_Born_Day2:
11470 end select
11480 endif
11490 '左３　ここまで
11500 '下の矢印
11510 '中央 2
11520 if ((y=1) or (key$ = chr$(31))) then
11530 select case No
11540 '9から６に下げる
11550 case 9:
11560 No=6:sp_on 11,1:sp_on 10,0
11570 pause 200:goto Input_Born_Day2:
11580 '6から３に下げる
11590 case 6:
11600 No=3:sp_on 12,1:sp_on 11,0
11610 pause 200:goto Input_Born_Day2:
11620 '3から０ｋに変える
11630 case 3:
11640 No=-1:sp_on 14,1:sp_on 12,0
11650 pause 200:goto Input_Born_Day2:
11660 'Okから下のボタンを押しても何もしない
11670 case -1:
11680 pause 200:goto Input_Born_Day2:
11690 case 8:
11700 No=5:sp_on 8,1:sp_on 7,0
11710 pause 200:goto Input_Born_Day2:
11720 case 5:
11730 No=2:sp_on 9,1:sp_on 8,0
11740 pause 200:goto Input_Born_Day2:
11750 case 2:
11760 No=0:sp_on 13,1:sp_on 9,0
11770 pause 200:goto Input_Born_Day2:
11780 case 0:
11790 pause 200:goto Input_Born_Day2:
11800 case 7:
11810 No=4:sp_on 5,1:sp_on 4,0
11820 pause 200:goto Input_Born_Day2:
11830 case 4:
11840 No=1:sp_on 6,1:sp_on 5,0
11850 pause 200:goto Input_Born_Day2:
11860 case 1:
11870 pause 200:goto Input_Born_Day2:
11880 end select
11890 endif
11900 '左へボタン 十字キー　左　or 　カーソル左
11910 if ((y2 = -1) or (key$ = chr$(29))) then
11920 select case No
11930 'Ok ボタン  Okから　左　０に行く
11940 case -1:
11950 No=0:sp_on 13,1:sp_on 14,0
11960 pause 200:goto Input_Born_Day2:
11970 '0 ボタン  左　何もしない
11980 case 0:
11990 pause 200:goto Input_Born_Day2:
12000 case 3:
12010 No=2:sp_on 9,1:sp_on 12,0:
12020 pause 200:goto Input_Born_Day2:
12030 case 2:
12040 No=1:sp_on 6,1:sp_on 9,0:
12050 pause 200:goto Input_Born_Day2:
12060 case 1:
12070 pause 200:goto Input_Born_Day2:
12080 case 6:
12090 No=5:sp_on 8,1:sp_on 11,0
12100 pause 200:goto Input_Born_Day2:
12110 case 5:
12120 No=4:sp_on 5,1:sp_on 8,0
12130 pause 200:goto Input_Born_Day2:
12140 case 4:
12150 pause 200:goto Input_Born_Day2:
12160 case 9:
12170 No=8:sp_on 7,1:sp_on 10,0
12180 pause 200:goto Input_Born_Day2:
12190 case 8:
12200 No=7:sp_on 4,1:sp_on 7,0
12210 pause 200:goto Input_Born_Day2:
12220 case 7:
12230 pause 200:goto Input_Born_Day2:
12240 end select
12250 endif
12260 '右  十字キー　右　or カーソル　右
12270 if ((y2 = 1) or (key$ = chr$(28))) then
12280 select case No
12290 '0ボタンからokボタン右に移動
12300 case 0:
12310 No=-1:sp_on 14,1:sp_on 13,0
12320 pause 200:goto Input_Born_Day2:
12330 '0ボタンからokボタン 右に移動　ここまで
12340 'OKボタンで右を押して何もしない
12350 case -1:
12360 pause 200:goto Input_Born_Day2:
12370 case 1:
12380 No=2:sp_on 9,1:sp_on 6,0
12390 pause 200:goto Input_Born_Day2:
12400 case 2:
12410 No=3:sp_on 12,1:sp_on 9,0
12420 pause 200:goto Input_Born_Day2:
12430 case 3:
12440 pause 200:goto Input_Born_Day2:
12450 case 4:
12460 No=5:sp_on 8,1:sp_on 5,0
12470 pause 200:goto Input_Born_Day2:
12480 case 5:
12490 No=6:sp_on 11,1:sp_on 8,0
12500 pause 200:goto Input_Born_Day2:
12510 case 7:
12520 No=8:sp_on 7,1:sp_on 4,0
12530 pause 200:goto Input_Born_Day2:
12540 case 8:
12550 No=9:sp_on 10,1:sp_on 7,0
12560 pause 200:goto Input_Born_Day2:
12570 case 9:
12580 pause 200:goto Input_Born_Day2:
12590 case 6:
12600 pause 200:goto Input_Born_Day2:
12610 end select
12620 'Okから右ボタンを押して何もしない ここまで
12630 endif
12640 '十字キー　ここまで
12650 '右の丸ボタンを押したとき
12660 if ((bg = 2) or (key$ = chr$(13))) then
12670 'count :決定ボタンを押した回数
12680 select case (count mod 3)
12690 '1桁目入力
12700 case 0:
12710 count = 1:
12720 if (No = -1) then
12730 '1桁目　OKでは何もしない
12740 'goto check:
12750 else
12760 'ok以外のボタンを押したとき
12770 buf_day = No:buf_Day$ = str$(No)
12780 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12790 locate 2,3
12800 color RGB(255,255,255)
12810 print "生まれた日(1日~31日):";buf_Day2$
12820 endif
12830 check:
12840 if (No >= 1 and No <= 9) then
12850 sp_on 14,0
12860 goto Input_Born_Day2:
12870 else
12880 sp_on 14,0
12890 goto complate:
12900 endif
12910 case 1:
12920 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12930 count = 2:
12940 'locate 2,3
12950 'color RGB(255,255,255)
12960 'print "生まれた日(1日~31日):";buf_Day$
12970 'Okボタンを押したときの処理
12980 '入力値　10未満のとき
12990 'c = buf_day
13000 if (No = -1) then
13010 'c=buf_day
13020 ' buf_day = c
13030 'buf_Day$ = str$(buf_day)
13040 '10以下のとき
13050 if (buf_day < 10) then
13060 sp_on 14,0
13070 goto complate:
13080 endif
13090 else
13100 'c = No
13110 buf_day = c * 10 + No
13120 'buf_day = c
13130 buf_Day$ =str$(buf_day)
13140 locate 2,3
13150 color Rgb(255,255,255)
13160 print "生まれた日(1日~31日):";buf_Day$
13170 goto Input_Born_Day2:
13180 endif
13190 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13200 case 2:
13210 count=0
13220 'c=val(buf_Day$)
13230 'buf_day=c*10+No
13240 'buf_Day$=str$(buf_day)
13250 'day=buf_day
13260 'locate 2,3
13270 'print "生まれた日(1日〜31日):";buf_Day$
13280 'No=-1:ok ボタンを押したとき
13290 if (No = -1) then
13300 if ((buf_day > 0) and (buf_day < 32)) then
13310 sp_on 14,0
13320 goto complate:
13330 else
13340 goto Input_Born_Day2:
13350 endif
13360 'Okボタン以外を押したとき
13370 else
13380 c=val(buf_Day$)
13390 buf_day = c * 10 + No
13400 buf_Day$ = str$(buf_day)
13410 locate 2,3
13420 print "生まれた日(1日~31日):";buf_Day$
13430 'goto Input_Born_Day2:
13440 endif
13450 case 3:
13460 count = 4
13470 c=val(buf_day$)
13480 buf_day = c * 10 + No
13490 buf_day$ = str$(buf_day)
13500 locate 2,3
13510 print "生まれた日を入れてください:";buf_Day$
13520 year = val(buf_year$)
13530 if (No = -1) then
13540 'goto Input_Born_Day:
13550 sp_on 14,0:No=0
13560 goto complate:
13570 else
13580 goto Input_Born_Month2:
13590 endif
13600 'case 4:
13610 'bufyear=buf_year
13620 'if (No=-1) then
13630 'buf_day = val(buf_day$)
13640 'bufday = buf_day
13650 'sp_on 14,0
13660 'goto complate:
13670 'else
13680 'goto Input_Born_Day2:
13690 'endif
13700 end select
13710 endif
13720 if (bg2=2) then
13730 select case count2
13740 case 0:
13750 if (No=-1) then
13760 'buf_day=0:buf_Day$="**"
13770 if (buf_day>=1 and buf_day<=31) then
13780 count=0:No=0
13790 buf_day=0:buf_Day$="**"
13800 'goto rewrite_day:
13810 else
13820 buf_day=0:buf_Day$="**"
13830 ui_msg"値が範囲外です"
13840 endif
13850 goto rewrite_day:
13860 else
13870 goto rewrite_day:
13880 endif
13890 rewrite_day:
13900 locate 2,3
13910 color rgb(255,255,255)
13920 print "                                      "
13930 locate 2,3
13940 print "生まれた日(1日~31日):";buf_Day$
13950 goto Input_Born_Day2:
13960 end select
13970 endif
13980 '--------------------------Input_Born_Day:-------------------------------------------
13990 complate:
14000 suhiNo = buf_year + buf_month + buf_day
14010 'if (suhiNo < 1000) then
14020 a1 = fix(suhiNo / 1000)
14030 a2 = fix(suhiNo/100) - (a1 * 10)
14040 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14050 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14060 'endif
14070 bufsuhiNo = a1+a2+a3+a4
14080 recomp:
14090 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14100 'bufsuhiNo=a6
14110 goto Kabara_Result_Screen:
14120 else
14130 a5 = fix(bufsuhiNo / 10)
14140 a6 = bufsuhiNo - a5 * 10
14150 bufsuhiNo = a6 + a5
14160 if (bufsuhiNo = 10) then
14170 bufsuhiNo=1
14180 endif
14190 goto Kabara_Result_Screen:
14200 endif
14210 Kabara_Result_Screen:
14220 cls 3:
14230 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14240 gload Gazo$ + "downscreen.png",0,0,800
14250 init "kb:4"
14260 '
14270 play ""
14280 select case (bufsuhiNo)
14290 case 1:
14300 play Voice$ + "Result_Kabara_1_20230607.mp3"
14310 case 2:
14320 play Voice$ + "Result_Kabara_2_20230607.mp3"
14330 case 3:
14340 play Voice$ + "Result_Kabara_3_20230607.mp3"
14350 case 4:
14360 play Voice$ + "Result_Kabara_4_20230607.mp3"
14370 case 5:
14380 play Voice$ + "Result_Kabara_5_20230607.mp3"
14390 case 6:
14400 play Voice$ + "Result_Kabara_6_20230607.mp3"
14410 case 7:
14420 play Voice$ + "Result_Kabara_7_20230607.mp3"
14430 case 8:
14440 play Voice$ + "Result_Kabara_8_20230607.mp3"
14450 case 9:
14460 play Voice$ + "Result_Kabara_9_20230607.mp3"
14470 case 11:
14480 play Voice$ + "Result_Kabara_11_20230607.mp3"
14490 case 22:
14500 play Voice$ + "Result_Kabara_22_20230607.mp3"
14510 case 33:
14520 play Voice$ + "Result_Kabara_33_20230607.mp3"
14530 end select
14540 font 48
14550 key$ = "":bg = 0:bg2=0
14560 'COLOR rgb(255,255,255)
14570 'print "●診断結果"+chr$(13)
14580 locate 0,2
14590 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14600 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14610 locate 0,15:
14620 color rgb(255,255,255)
14630 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14640 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14650 key$ = inkey$
14660 bg = strig(1)
14670 bg2 = strig(0)
14680 pause 5
14690 wend
14700 'Enter or JoyPad right
14710 if ((key$ = chr$(13)) or (bg = 2)) then
14720 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14730 endif
14740 if ((bg2=2)) then
14750 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14760 endif
14770 'suhiNo1 = fix(bufsuhiNo / 10)
14780 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14790 'bufsuhiNo = suhiNo1 + suhiNo2
14800 'goto recomp:
14810 'endif
14820 'print chr$(13)
14830 'color rgb(255,0,0)
14840 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14850 'key$ = input$(1)
14860 'if key$ = chr$(13) then goto Main_Screen:
14870 '"Menu2 占いのルール"
14880 Suhi_Rule:
14890 '数秘術占いルールの表示
14900 cls 3:play "":init"kb:4"
14910 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14920 gload Gazo$ + "downscreen.png",0,0,800
14930 'cls 3:
14940 'line (0,0) - (1500,60),rgb(0,0,255),bf
14950 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14960 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14970 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14980 locate 0,2:Font 48
14990 print chr$(13) + chr$(13)
15000 color rgb(0,0,0)
15010 print "誕生日を単数変換します";chr$(13)
15020 print "数字の範囲:1~９,11,22,33";chr$(13)
15030 print "例:1973年11月22日の場合";chr$(13)
15040 print "1+9+7+3+11+22=53 ";chr$(13)
15050 print "→ 5 + 3 = 8" + chr$(13)
15060 print "故に8が数秘ナンバーになります";chr$(13)
15070 locate 0,15
15080 color rgb(255,255,255)
15090 print "ジョイパッドの右を押してください"
15100 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15110 '"key$ = input$(1)"
15120 '"if key$ = chr$(13) then goto Main_Screen:"
15130 suhi_rule_selection:
15140 bg = 0:key$ = "":bg2=0
15150 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15160 bg = strig(1)
15170 key$ = inkey$
15180 bg2=strig(0)
15190 pause 2
15200 wend
15210 if ((bg = 2) or (key$ = chr$(13))) then
15220 pause 200:cls 4:goto Main_Screen:
15230 endif
15240 if (bg2=2) then
15250 play "":pause 200
15260 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15270 goto suhi_rule_selection:
15280 endif
15290 '2.設定
15300 '2-1.トップ画面に戻る
15310 Setting:
15320 cls 3:init"kb:4":font 48:No=0
15330 play ""
15340 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15350 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15360 gload Gazo$ + "downscreen.png",0,0,800
15370 print chr$(13) + chr$(13) + chr$(13)
15380 color rgb(255,255,255):sp_on 0,1:
15390 print "番号を選んでください" + chr$(13)
15400 print " :1.トップ画面に戻る"+ chr$(13)
15410 print " :2.未実装" + chr$(13)
15420 print " :3.未実装" + chr$(13)
15430 print " :4.未実装" + chr$(13)
15440 color rgb(0,0,0)
15450 locate 1,15:print "1.トップ画面に戻るを選択"
15460 Setting_Selection:
15470 y=0:key$="":bg=0:bg2=0
15480 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15490 'y=stick(1)
15500 key$ = inkey$
15510 bg=strig(1)
15520 bg2 = strig(0)
15530 pause 2
15540 wend
15550 if ((bg = 2) or (key$ = chr$(13))) then
15560 select case No
15570 case 0:
15580 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15590 end select
15600 endif
15610 if (bg2 = 2) then
15620 play "":pause 200
15630 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15640 goto Setting_Selection:
15650 endif
15660 '3.Help
15670 '3-1.ルールの表示
15680 '3-2.バージョン
15690 '3-3.トップに戻る
15700 Help:
15710 cls 3:Font 48:No=0
15720 play ""
15730 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15740 gload Gazo$ + "downscreen.png",0,0,800
15750 color rgb(255,255,255)
15760 print chr$(13)+chr$(13)+chr$(13)
15770 print "番号を選んでください"+chr$(13)
15780 print " :1.ルールの表示" + chr$(13)
15790 print " :2.バージョンの表示" + chr$(13)
15800 print " :3.参考文献" + chr$(13)
15810 print " :4.トップ画面に戻る" + chr$(13)
15820 color rgb(0,0,0)
15830 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15840 locate 1,15
15850 print "                                      "
15860 locate 1,15
15870 print "1.ルールの表示を選択"
15880 init"kb:4"
15890 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15900 Help_Select:
15910 bg=0:key$="":y=0:bg2=0
15920 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15930 y = stick(1)
15940 key$ = inkey$
15950 bg = strig(1)
15960 bg2 = strig(0)
15970 pause 5
15980 wend
15990 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16000 if ((y = 1) or (key$ = chr$(31))) then
16010 select case No
16020 case 0:
16030 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16040 case 1:
16050 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16060 case 2:
16070 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16080 case 3:
16090 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16100 end select
16110 endif
16120 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16130 if ((y = -1) or (key$ = chr$(30))) then
16140 select case No
16150 case 0:
16160 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16170 case 1:
16180 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16190 case 2:
16200 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16210 case 3:
16220 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16230 end select
16240 endif
16250 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16260 if ((bg = 2) or (key$ = chr$(13))) then
16270 select case No
16280 case 0:
16290 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16300 case 1:
16310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16320 case 2:
16330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16340 '3:Top画面に行く
16350 case 3:
16360 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16370 end select
16380 endif
16390 if (bg2 = 2) then
16400 play "":pause 200
16410 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16420 goto Help_Select:
16430 endif
16440 '数秘術占い　トップ画面
16450 Kabara_TopScreen:
16460 cls 3:play ""
16470 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16480 gload Gazo$ + "downscreen.png",0,0,800
16490 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16500 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16510 init"kb:4":No=0
16520 color rgb(255,255,255)
16530 print chr$(13)+chr$(13)+chr$(13)
16540 print "番号を選んでください" + chr$(13)
16550 print " :1.数秘術占い" + chr$(13)
16560 print " :2.バーズアイグリット" + chr$(13)
16570 print " :3.相性占い" + chr$(13)
16580 print " :4.トップ画面に戻る" + chr$(13)
16590 color rgb(0,0,0)
16600 locate 1,15:print "1.数秘術占いを選択"
16610 Kabara_TopScreen2:
16620 y = 0:bg = 0:key$ = "":bg2 = 0
16630 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16640 key$ = inkey$
16650 bg = strig(1)
16660 y = stick(1)
16670 bg2 = strig(0)
16680 pause 5
16690 wend
16700 '選択ボタン
16710 'カーソル　と　ジョイパッド　の下
16720 if ((y = 1) or (key$ = chr$(31))) then
16730 select case No
16740 case 2:
16750 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16760 case 3:
16770 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16780 case 0:
16790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16800 case 1:
16810 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16820 end select
16830 endif
16840 'カーソル　上
16850 if ((y=-1) or (key$=chr$(30))) then
16860 select case No
16870 case 0:
16880 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16890 case 1:
16900 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16910 case 2:
16920 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16930 case 3:
16940 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16950 end select
16960 endif
16970 '決定ボタン
16980 'ジョイパッドの右　or  Enter key
16990 if ((bg = 2) or (key$ = chr$(13))) then
17000 select case No
17010 case 0:
17020 '1.数秘術占い
17030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17040 case 3:
17050 '4.メイン画面にいく
17060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17070 case 1:
17080 '2.バースアイグリッド
17090 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
17100 case 2:
17110 '3.相性占い
17120 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17130 end select
17140 endif
17150 if (bg2 = 2) then
17160 play "":pause 200
17170 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17180 goto Kabara_TopScreen2:
17190 endif
17200 '1.バースアイグリット　名入力
17210 Inputname1:
17220 cls 3:init"kb:4":font 48
17230 bg=0:key$="":y=0:No=-1
17240 gload Gazo$ + "Selection.png",1,10,100
17250 'Line 1:☓
17260 'A:選択肢
17270 sp_def 15,(50,250),16,16
17280 'B:選択肢
17290 sp_def 16,(200,250),16,16
17300 'C:選択肢
17310 sp_def 17,(350,250),16,16
17320 'D:選択肢
17330 sp_def 18,(500,250),16,16
17340 'E:選択肢
17350 sp_def 19,(630,250),16,16
17360 'F:選択肢
17370 sp_def 20,(780,250),16,16
17380 'G:選択肢
17390 sp_def 21,(930,250),16,16
17400 'Line 2:☓
17410 'H:選択肢
17420 sp_def 22,(50,345),16,16
17430 'I:選択肢
17440 sp_def 23,(200,345),16,16
17450 'J:選択肢
17460 sp_def 24,(350,345),16,16
17470 'K:選択肢
17480 sp_def 25,(500,345),16,16
17490 'L:選択肢
17500 sp_def 26,(630,345),16,16
17510 'M:選択肢
17520 sp_def 27,(780,345),16,16
17530 'N:選択肢
17540 sp_def 28,(930,345),16,16
17550 'Line 3:☓
17560 'O:選択肢
17570 sp_def 29,(50,440),16,16
17580 'P:選択肢
17590 sp_def 30,(200,440),16,16
17600 'Q:選択肢
17610 sp_def 31,(350,440),16,16
17620 'R:選択肢
17630 sp_def 32,(500,440),16,16
17640 'S:選択肢
17650 sp_def 33,(630,440),16,16
17660 'T:選択肢
17670 sp_def 34,(780,440),16,16
17680 'U:選択肢
17690 sp_def 35,(930,440),16,16
17700 'Line 4:◯
17710 'V:選択肢
17720 sp_def 36,(50,535),16,16
17730 'W:選択肢
17740 sp_def 37,(200,535),16,16
17750 'X:選択肢
17760 sp_def 38,(350,535),16,16
17770 'Y:選択肢
17780 sp_def 39,(500,535),16,16
17790 'Z:選択肢
17800 sp_def 40,(630,535),16,16
17810 'Ok:選択肢
17820 sp_def 41,(780,535),16,16
17830 'sp_def 42,(930,535),16,16
17840 'Line 1
17850 'A
17860 sp_on 15,0
17870 'B
17880 sp_on 16,0
17890 'C
17900 sp_on 17,0
17910 'D
17920 sp_on 18,0
17930 'E
17940 sp_on 19,0
17950 'F
17960 sp_on 20,0
17970 'G
17980 sp_on 21,0
17990 'Line 1
18000 'Line 2
18010 'H
18020 sp_on 22,0
18030 'I
18040 sp_on 23,0
18050 'J
18060 sp_on 24,0
18070 'K
18080 sp_on 25,0
18090 'L
18100 sp_on 26,0
18110 'M
18120 sp_on 27,0
18130 'N
18140 sp_on 28,0
18150 'Line 2
18160 'Line 3
18170 'O
18180 sp_on 29,0
18190 'P
18200 sp_on 30,0
18210 'Q
18220 sp_on 31,0
18230 'R
18240 sp_on 32,0
18250 'S
18260 sp_on 33,0
18270 'T
18280 sp_on 34,0
18290 'U
18300 sp_on 35,0
18310 'Line 3
18320 'Line 4
18330 'V
18340 sp_on 36,0
18350 'W
18360 sp_on 37,0
18370 'X
18380 sp_on 38,0
18390 'Y
18400 sp_on 39,0
18410 'Z
18420 sp_on 40,0
18430 'Ok
18440 sp_on 41,1
18450 'Line 4
18460 'sp_on 42,1
18470 'Line 1
18480 'sp_put 15,(50,250),0,0
18490 'sp_put 16,(200,250),0,0
18500 'sp_put 17,(350,250),0,0
18510 'sp_put 18,(500,250),0,0
18520 'sp_put 19,(630,250),0,0
18530 'sp_put 20,(780,250),0,0
18540 'sp_put 21,(930,250),0,0
18550 'Line 2
18560 'sp_put 22,(50,345),0,0
18570 'sp_put 23,(200,345),0,0
18580 'sp_put 24,(350,345),0,0
18590 'sp_put 25,(500,345),0,0
18600 'sp_put 26,(630,345),0,0
18610 'sp_put 27,(780,345),0,0
18620 'sp_put 28,(930,345),0,0
18630 'Line 3
18640 'sp_put 29,(50,440),0,0
18650 'sp_put 30,(200,440),0,0
18660 'sp_put 31,(350,440),0,0
18670 'sp_put 32,(500,440),0,0
18680 'sp_put 33,(630,440),0,0
18690 'sp_put 34,(780,440),0,0
18700 'sp_put 35,(930,440),0,0
18710 'Line 4
18720 'sp_put 36,(50,535),0,0
18730 'sp_put 37,(200,535),0,0
18740 'sp_put 38,(350,535),0,0
18750 'sp_put 39,(500,535),0,0
18760 'sp_put 40,(630,535),0,0
18770 sp_put 41,(780,535),0,0
18780 'sp_put 42,(930,536),0,0
18790 gload Gazo$ + "Screen1.png",0,0,0
18800 color rgb(255,255,255)
18810 locate 1,3
18820 print "名前の姓をアルファベットで入力してください"
18830 locate 1,5
18840 print " A  B  C  D  E  F  G"
18850 locate 1,7
18860 print " H  I  J  K  L  M  N"
18870 locate 1,9
18880 print " O  P  Q  R  S  T  U"
18890 locate 1,11
18900 print " V  W  X  Y  Z  Ok"
18910 locate 1,15:color rgb(0,0,0)
18920 print "実装未完全"
18930 select_name1:
18940 bg = 0:y = 0:key$ = "":y2=0:init"kb:4"
18950 '有効ボタン
18960 '1.決定ボタン(bg:2)
18970 '2.Enter Key
18980 '3.カーソル上 (chr$(31))
18990 '4.カーソル　左 (chr$(29))
19000 '5.ジョイパッド　上 (y:1)
19010 '6:ジョイパッド　左 (y2:-1)
19020 '7:ジョイパッド　下 (y:-1)
19030 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19040 key$ = inkey$
19050 'ジョイパッドの決定:bg
19060 bg = strig(1)
19070 y = stick(1)
19080 y2 = stick(0)
19090 pause 200
19100 wend
19110 '====================================
19120 'Birds Eye Grid 名前入力
19130 '入力スタイル　アルファベット入力
19140 'sp_on:　スプライトのオンオフ
19150 'sp_put :表示位置
19160 'No:ボタン番号
19170 '====================================
19180 'カーソルで下に行く
19190 if ((y=-1) or (key$=chr$(31))) then
19200 select case No
19210 '1.Ok ボタン
19220 'sp_on スプライトのオンオフ
19230 'sp_put スプライトを表示
19240 case -1:
19250 '1.アルファベット　入力ボタン
19260 '実装未完全なので終了
19270  'Ok → T ○ :No:20=T
19280  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19290  'T  → M ○
19300 case 20:
19310   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19320  'M  →　F ○
19330 case 13:
19340   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19350  'F  → Ok
19360 case 6:
19370   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19380 end select
19390 endif
19400 '2.決定ボタン
19410 if ((key$ = chr$(13)) OR  (bg = 2)) then
19420 select case No
19430 case -1:
19440      'スプライトをOFFにする
19450      sp_on 41,0
19460 end select
19470 endif
19480 '3.カーソル　左
19490 if (key$ = chr$(29) or (y2 =-1)) then
19500 select case No
19510 'Line 4
19520 'Line 4
19530 '1.
19540 'Z:-1 :Ok ボタン
19550 'Ok → Z
19560 case -1:
19570      'Ok →　Z
19580      'Ok ボタン OFF,Z Button ON
19590      'No=26:Z
19600      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19610 '2.
19620 '26:Zボタン Z→ Y
19630 case 26:
19640      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19650 '3.
19660 '25:Yボタン  Y → X
19670 case 25:
19680      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19690 '4
19700 '24:Xボタン X → W
19710 case 24:
19720      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19730 '23:Wボタン X → W
19740 '5
19750 case 23:
19760 '22:Vボタン W → V
19770      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19780 case 22:
19790 '-1:V→ Ok
19800      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19810 'Line 3
19820 case 20:
19830 '33:T34  → S:33 :◯
19840     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19850 case 19:
19860 '32:S:33 → R:32 :◯
19870     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19880 case 18:
19890 '31:R:32 → Q:31 :◯
19900     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19910 '30:O → P :◯
19920 case 17:
19930 '30:Q:31 → P:30 :◯
19940     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19950 case 16:
19960 '29:P:30 → O:29 :◯
19970     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
19980 case 15:
19990 '28:O:29 → U:21  :◯
20000  'O:OFF,U:ON
20010     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20020 '27:U:21 → T:20  :◯
20030 case 21:
20040 'U:OFF:T:ON
20050     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20060 'Line 2
20070 '26:M:13 → L:12 : ○
20080 case 13:
20090  'M:OFF,L:ON
20100    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20110 '25:L:12 → K:11 : ○
20120 case 12:
20130    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20140 '24:K:11 → J:10 : ○
20150 case 11:
20160    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20170 '23:J:10 → I:9  : ○
20180 case 10:
20190    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20200 '22:I:9 → H:8    :○
20210 case 9:
20220     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20230 '21:H:8 → N:14:   :○
20240 case 8:
20250     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20260 '20:N:14 → M:13:   :○
20270 case 14:
20280     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20290 '●.Line 1:
20300 '19:F:20 → E:19 : ☓
20310 'F:OFF,E:ON
20320 case 6:
20330     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20340 '18:E → D
20350 'E:OFF,D:ON
20360 case 5:
20370     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20380 '17:D → C
20390 'D:OFF,C:ON
20400 case 4:
20410      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20420 case 3:
20430      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20440 case 2:
20450      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20460 case 1:
20470      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20480 case 7:
20490      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20500 end select
20510 endif
20520 '上から下の方向
20530 if ((key$ = chr$(31)) or  (y = 1)) then
20540 select case No
20550 '●.1
20560 '1:A→H
20570 case 1:
20580       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20590 '2:H→O
20600 case 8:
20610       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20620 '3:O→V
20630 case 15:
20640       No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20650 '4:V→A
20660 case 22:
20670      No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20680 '●.2
20690 '5.B→I
20700 case 2:
20710      No=9:sp_on 16,0:sp_on 23,1:sp_put 16,(200,250),0,0:goto select_name1:
20720 '6.I→P
20730 '7.P→W
20740 '8.W→B
20750 '●.3
20760 '9.C→J
20770 '10.J→Q
20780 '11.Q→X
20790 '12.X→C
20800 '●.4
20810 '13.D→K
20820 '14.K→R
20830 '15.R→Y
20840 '16.Y→D
20850 '●.5
20860 '●.6
20870 '●.7
20880 '25.G→N
20890 '26.N→U
20900 '27.U→G
20910 end select
20920 endif
20930 'gload Gazo$ + "Input_Birtheye2.png",0,0,0
20940 'color rgb(255,255,255)
20950 'locate 1,2:print "名前をアルファベットで入れてください"
20960 'color rgb(0,0,0)
20970 'locate 1,5:Input "名前（姓の部分）:",name1$
20980 '27.U→G
20990 'locate 1,5:print "Hit any key"
21000 'n1 = len(name1$)
21010 'if (n1 < 11) then
21020 'for i=1 to n1
21030 'buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21040 'next i
21050 'endif
21060 'if b$=chr$(13) then goto Inputname2:
21070 '2.グリッドアイ　姓の入力
21080 end
21090 Inputname2:
21100 cls 3:init"kb:2":font 48
21110 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21120 color rgb(255,255,255)
21130 locate 1,2:print "名前をアルファベットで入れてください"
21140 color rgb(0,0,0)
21150 locate 1,5:Input "名前(名の部分):",name2$
21160 n2 = len(name2$)
21170 for i=1 to n2
21180 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
21190 next i
21200 '計算領域
21210 Complate:
21220 'name1
21230 for i=0 to 25
21240 for n=1 to len(name1$)
21250 if (buf_chart$(i,0) = buf_name1$(n-1)) then
21260 b = val(buf_chart$(i,1))
21270 buffer(b-1) = buffer(b-1) + 1
21280 endif
21290 next n
21300 next i
21310 'name2
21320 for i=0 to 25
21330 for n=1 to len(name2$)
21340 if (buf_chart$(i,0) = buf_name2$(n-1)) then
21350 c = val(buf_chart$(i,1))
21360 buffer(c - 1) = buffer(c - 1) + 1
21370 endif
21380 next n
21390 next i
21400 '結果表示領域
21410 Result_Birtheye1:
21420 cls 3:init"kb:4":No=0
21430 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
21440 gload Gazo$ + "downscreen.png",0,0,800
21450 color rgb(255,255,255)
21460 '1の表示
21470 locate 3,14:print buffer(0);
21480 '2の表示
21490 locate 3,9:print buffer(1);
21500 '3の表示
21510 locate 3,5:print buffer(2);
21520 '4の表示
21530 locate 10,14:print buffer(3);
21540 '5の表示
21550 locate 10,9:print buffer(4);
21560 '6の表示
21570 locate 10,5:print buffer(5);
21580 '7の表示
21590 locate 15,14:print buffer(6);
21600 '8の表示
21610 locate 15,9:print buffer(7);
21620 '9の表示
21630 locate 15,5:print buffer(8);
21640 'name を大文字に変換
21650 locate 5,3:print ucase$(name1$ + name2$)
21660 color rgb(0,0,0)
21670 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
21680 bg=0:key$="":bg2=0
21690 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
21700 'Enterと決定ボタン
21710 key$ = inkey$
21720 bg = strig(1)
21730 bg2=strig(0)
21740 pause 200
21750 wend
21760 if ((bg=2) or (key$=chr$(13))) then
21770 'データーをクリアしてトップ画面に行く
21780 'for i=0 to 8
21790 'buffer(i)=0
21800 'next i
21810 'for n=0 to 9
21820 'buf_name1$(n) = ""
21830 'buf_name2$(n) = ""
21840 'next n
21850 'Topに行く
21860 'goto Main_Screen:
21870 '次へ
21880 goto BirdsEye_Result2:
21890 endif
21900 if (bg2=2) then
21910 'データーをクリアする
21920 for i=0 to 8
21930 buffer(i)=0
21940 next i
21950 for n=0 to 9
21960 buf_name1$(n)=""
21970 buf_name2$(n)=""
21980 next n
21990 goto Inputname1:
22000 endif
22010 'goto Result_Birtheye1:
22020 'Result_Birtheye2:
22030 'cls 3:color rgb(255,255,255)
22040 'end
22050 'Memory 消去
22060 '
22070 '横のフォーカスライン
22080 BirdsEye_Result2:
22090 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22100 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
22110 Forcus1_buffer$(2)="○"
22120 else
22130 Forcus1_buffer$(2)="☓"
22140 endif
22150 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
22160 Forcus1_buffer$(1)="○"
22170 else
22180 Forcus1_buffer$(1) = "☓"
22190 endif
22200 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
22210 Forcus1_buffer$(0)="○"
22220 else
22230 Forcus1_buffer$(0)="☓"
22240 endif
22250 gload Gazo$ + "Screen1.png",0,0,0
22260 color rgb(255,0,0):
22270 locate 1,1
22280 print "バーズアイグリッド(フォーカスライン1)"
22290 color rgb(255,255,255)
22300 locate 1,3:
22310 print "●.横のフォーカスライン"
22320 locate 1,5
22330 print "1.切れ者ライン:"+Forcus1_buffer$(2)
22340 locate 1,7
22350 print "2.調停者ライン:"+Forcus1_buffer$(1)
22360 locate 1,9
22370 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
22380 color rgb(0,0,0)
22390 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22400 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
22410 key$=inkey$
22420 bg=strig(1)
22430 bg2=strig(0)
22440 pause 200
22450 wend
22460 if ((bg=2) or (key$=chr$(13))) then
22470 goto BirdsEye_Result3:
22480 endif
22490 if (bg2=2) then
22500 goto Main_Screen:
22510 endif
22520 BirdsEye_Result3:
22530 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22540 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
22550 Forcus2_buffer$(2)="○"
22560 else
22570 Forcus2_buffer$(2)="☓"
22580 endif
22590 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
22600 Forcus2_buffer$(1)="○"
22610 else
22620 Forcus2_buffer$(1) = "☓"
22630 endif
22640 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
22650 Forcus2_buffer$(0)="○"
22660 else
22670 Forcus2_buffer$(0)="☓"
22680 endif
22690 gload Gazo$ + "Screen1.png",0,0,0
22700 color rgb(255,0,0):
22710 locate 1,1
22720 print "バーズアイグリッド(フォーカスライン2)"
22730 color rgb(255,255,255)
22740 locate 1,3:
22750 print "●.縦のフォーカスライン"
22760 locate 1,5
22770 print "1.表現者ライン:" + Forcus2_buffer$(2)
22780 locate 1,7
22790 print "2.司令塔ライン:" + Forcus2_buffer$(1)
22800 locate 1,9
22810 print "3.指導者ライン:" + Forcus2_buffer$(0)
22820 color rgb(0,0,0)
22830 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22840 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
22850 key$=inkey$
22860 bg=strig(1)
22870 bg2=strig(0)
22880 pause 200
22890 wend
22900 if ((bg = 2) or (key$ = chr$(13))) then
22910 goto BirdsEye_Result4:
22920 endif
22930 if (bg2=2) then
22940 goto Main_Screen:
22950 endif
22960 BirdsEye_Result4:
22970 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22980 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
22990 Forcus3_buffer$(1) = "○"
23000 else
23010 Forcus3_buffer$(1) = "☓"
23020 endif
23030 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23040 Forcus3_buffer$(0) = "○"
23050 else
23060 Forcus3_buffer$(0) = "☓"
23070 endif
23080 gload Gazo$ + "Screen1.png",0,0,0
23090 color rgb(255,0,0):
23100 locate 1,1
23110 print "バーズアイグリッド(フォーカスライン3)"
23120 color rgb(255,255,255)
23130 locate 1,3:
23140 print "●.斜めのフォーカスライン"
23150 locate 1,5
23160 print "1.成功者ライン:"+Forcus3_buffer$(1)
23170 locate 1,7
23180 print "2.セレブライン:"+Forcus3_buffer$(0)
23190 color rgb(0,0,0)
23200 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
23210 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23220 key$ = inkey$
23230 bg = strig(1)
23240 bg2 = strig(0)
23250 pause 200
23260 wend
23270 if ((bg=2) or (key$=chr$(13))) then
23280  goto Result_Birtheye1:
23290 endif
23300 if (bg2=2) then
23310 'データークリア
23320 for i=0 to 8
23330  buffer(i) = 0
23340 next i
23350  goto Main_Screen:
23360 endif
23370 References1:
23380 cls 3:key$ = "":bg = 0:play "":font 48-16
23390 gload Gazo$ + "Reference1_20230703.png",0,0,0
23400 print chr$(13)+chr$(13)+chr$(13)
23410 color rgb(0,0,0)
23420 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
23430 print "Author:carol Adrinne,PhD"+chr$(13)
23440 print "出版社:幻冬舎" + chr$(13)
23450 print "HP:www.carolAdrienne.jp/"+chr$(13)
23460 print "ISBN:978-4-344-01394-0"+chr$(13)
23470 print "定価:1500円 + 税"+chr$(13)
23480 color rgb(255,255,255)
23490 locate 1,23
23500 print "ジョイパッド右：次へ"
23510 while (key$ <> chr$(13) and bg <> 2)
23520 bg = strig(1)
23530 key$ = inkey$
23540 wend
23550 '
23560 if ((bg = 2) or (key$ = chr$(13))) then
23570 pause 200:goto References2:
23580 endif
23590 'ユダヤの秘儀 カバラ大占術
23600 References2:
23610 cls 3:play "":bg = 0:key$ = ""
23620 gload Gazo$ + "Reference2_20230703.png",0,0,0
23630 '参考文献２
23640 'カバラ大占術
23650 print chr$(13) + chr$(13) + chr$(13)
23660 color  rgb(0,0,0):font 48-16
23670 locate 1,3
23680 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
23690 print "著者：浅野　八郎" + chr$(13)
23700 print "出版社:NON BOOK" + chr$(13)
23710 print "ISBN:4-396-10364-6" + chr$(13)
23720 print "定価:829円 + 税"
23730 color rgb(255,255,255)
23740 locate 1,23
23750 print "ジョイパッド右：トップへ行く"
23760 while ((key$ <> chr$(13)) and (bg <> 2))
23770 bg = strig(1)
23780 key$ = inkey$
23790 wend
23800 if ((bg = 2) or (key$ = chr$(13))) then
23810 pause 200:goto Main_Screen:
23820 endif
23830 end
23840 '1.数秘術　トップ画面
23850 Kabara_First_Top:
23860 cls 3:color rgb(255,255,255):play ""
23870 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
23880 gload Gazo$ + "downscreen.png",0,0,800
23890 No=0:init"kb:4"
23900 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
23910 print chr$(13);chr$(13)
23920 color rgb(255,255,255)
23930 locate 3,4:No=0
23940 print "番号選んでください" + chr$(13)
23950 print " :1.数秘術占い" + chr$(13)
23960 print " :2.トップ画面に戻る" + chr$(13)
23970 color rgb(0,0,0)
23980 sp_on 0,1
23990 locate 1,15:print "1.数秘術番号を求めるを選択"
24000 'KeyBord:true
24010 'Joy Pad:true
24020 '上、下:true
24030 '
24040 'ｂｇ：決定ボタン
24050 'カーソル　上
24060 'カーソル　下
24070 Kabara_First_Top2:
24080 key$ = "":bg = 0:y = 0:
24090 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
24100 key$ = inkey$
24110 bg = strig(1)
24120 y = stick(1)
24130 'PauseでCPUを休める
24140 pause 5
24150 wend
24160 '1.カーソル　下 処理 chr$(31)
24170 'カーソル　下
24180 if ((key$ = chr$(31)) or (y = 1)) then
24190 select case No
24200 '
24210 case 1:
24220 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
24230 case 0:
24240 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24250 'case 2:
24260 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
24270 end select
24280 endif
24290 '2.カーソル　上 処理 chr$(30)
24300 if ((key$ = chr$(30)) or (y = -1)) then
24310 select case No
24320 case 0:
24330 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24340 case 1:
24350 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
24360 'case 2:
24370 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
24380 end select
24390 endif
24400 '3.決定 処理  bg:2 or Enter key:chr$(13)
24410 if ((bg = 2) or (key$ = chr$(13))) then
24420 select case No
24430 case 0:
24440 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
24450 goto Kabara_TopScreen:
24460 'case 1:
24470 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
24480 case 1:
24490 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
24500 end select
24510 endif
24520 '
24530 'Kabara 相性占い トップ画面
24540 Kabara_Aishou_Top:
24550 cls 3:y=0:key$="":bg=0:No=0
24560 play ""
24570 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
24580 gload Gazo$ + "downscreen.png",0,0,800
24590 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
24600 print chr$(13) + chr$(13)
24610 locate 0,4:color rgb(255,255,255)
24620 'print "Ok"
24630 '
24640 print "番号を選んでください" + chr$(13)
24650 print " :1.男女2人の相性(未実装)" + chr$(13)
24660 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
24670 print " :3.トップ画面に戻る" + chr$(13)
24680 sp_on 0,1:sp_on 1,0:sp_on 2,0
24690 color rgb(0,0,0)
24700 locate 1,15:print "1.男女2人の相性占いを選択"
24710 Kabara_Aishou_Top2:
24720 key$ = "":y = 0:bg = 0:
24730 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
24740 'ジョイパッド(右) ,十字キー (上下)
24750 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
24760 y = stick(1)
24770 key$ = inkey$
24780 bg = strig(1)
24790 pause 5
24800 wend
24810 'カーソル　下 or 十字キー　下
24820 if ((key$ = chr$(31)) or (y = 1)) then
24830 select case No
24840 '選択肢　1 - 2に変更
24850 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
24860 'ok
24870 case 0:
24880 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
24890 '選択肢　2 - 3に変更
24900 case 1:
24910 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
24920 'リリース時 case 2コメント解除
24930 case 2:
24940 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
24950 case else:
24960 goto Kabara_Aishou_Top2:
24970 end select
24980 endif
24990 '十字キー　上　、カーソル　上
25000 if ((key$ = chr$(30)) or (y = -1)) then
25010 select case No
25020 case 0:
25030 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25040 case 1:
25050 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
25060 case 2:
25070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25080 case else:
25090 goto Kabara_Aishou_Top2:
25100 end select
25110 endif
25120 '十字キー　上下:選択
25130 'ジョイパッド 右:決定
25140 if ((bg = 2) or (key$ = chr$(13))) then
25150 select case No
25160 '1.男女の相性
25170 case 0:
25180 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
25190 '2ビジネスの相性
25200 case 1:
25210 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
25220 case 2:
25230 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
25240 end select
25250 endif
25260 'ビジネスの相性　
25270 '1.1人目のビジネスの相性　名前入力　1人目
25280 Business_Aishou_Input_1_parson:
25290 No=0:color RGB(255,255,255)
25300 cls 3:init "kb:2"
25310 gload Gazo$ + "Screen1.png",0,0,0
25320 gload Gazo$ + "downscreen.png",0,0,800
25330 play "":color rgb(255,0,0):name$ = ""
25340 locate 0,1
25350 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
25360 color rgb(255,255,255):
25370 locate 0,3
25380 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
25390 print "入れてください" + chr$(13)
25400 locate 0,15:color rgb(0,0,0)
25410 Input "1人目の名前:",name$
25420 'color rgb(0,0,0)
25430 'locate 0,13:print "                                     "
25440 'locate 0,13:print "1人目の名前を入力してエンターキー":
25450 'buffer_name$(0):1人目の名前
25460 buffer_name$(0) = name$:
25470 goto Business_Aishou_Input_2_Parson:
25480 '2.2人目のビジネスの相性 名前入力 2人目
25490 Business_Aishou_Input_2_Parson:
25500 cls 3:init "kb:2":name$ = "":No=0
25510 gload Gazo$ + "Screen1.png",0,0,0
25520 gload Gazo$ + "downscreen.png",0,0,800
25530 color rgb(255,0,0)
25540 'Title
25550 locate 0,1
25560 print "ビジネスの相性　2人目"
25570 locate 0,3
25580 color rgb(255,255,255)
25590 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
25600 print "入れてください" + chr$(13)
25610 locate 0,15:color rgb(0,0,0)
25620 Input "2人目の名前:",name$
25630 'color rgb(0,0,0)
25640 'locate 0,15:print "                                              "
25650 'locate 0,15:print "2人目の名前を入力してエンター ":
25660 '2人目
25670 '2人目の名前を入れるに代入
25680 buffer_name$(1) = name$:
25690 goto Select_jyoushi:
25700 '3.上司の選択
25710 Select_jyoushi:
25720 cls 3:gload Gazo$ + "Screen1.png",0,0,0
25730 gload Gazo$ + "downscreen.png",0,0,800
25740 init "kb:4":No=0
25750 color rgb(0,0,255)
25760 locate 1,1
25770 print "上司の選択"
25780 color rgb(255,255,255)
25790 locate 0,4:print "名前から上司の方を選んでください"
25800 locate 0,6
25810 print " :";buffer_name$(0);"が上 司";chr$(13)
25820 locate 0,8
25830 print " :";buffer_name$(1);"が上 司";chr$(13)
25840 locate 0,15:
25850 print "                                     "
25860 locate 0,15:color rgb(0,0,0)
25870 print "上司の方を選んで右の丸ボタン"
25880 sp_on 0,1:sp_on 1,0:sp_on 2,0
25890 Select_jyoushi2:
25900 'ここでNo=0をおいてはいけない
25910 y=0:key$="":bg=0:
25920 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
25930 y = stick(1)
25940 key$ = inkey$
25950 bg = strig(1)
25960 pause 5
25970 wend
25980 '1.カーソル下の処理　or 十字キーの下処理
25990 if ((key$ = chr$(31)) or (y = 1)) then
26000 select case No
26010 case 0:
26020 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26030 case 1:
26040 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26050 end select
26060 endif
26070 '2.カーソル上処理　or 十字キーの上の処理
26080 if ((key$ = chr$(30)) or (y = -1)) then
26090 select case No
26100 case 0:
26110 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
26120 case 1:
26130 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
26140 end select
26150 endif
26160 if ((key$ = chr$(13)) or (bg = 2)) then
26170 select case No
26180 case 0:
26190 '上司(name1)を配列に代入
26200 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26210 case 1:
26220 '上司（name2)を配列に代入
26230 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26240 end select
26250 endif
26260 '3.決定ボタン　Enter or 右の丸ボタン
26270 '1.誕生日入力
26280 '1-1.生まれた年を入力
26290 'Jyoushi_born_year:
26300 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
26310 '---------------------------------------------'
26320 '誕生日入力(生れた年代)
26330 Jyoushi_Input_Seireki:
26340 'buf_Jyoushi_Born_Year:上司の生まれた年代
26350 'buf_Jyoushi_Born_Day(0) = born_year
26360 cls 3:play "":count=0:count2=0
26370 init"kb:4"
26380 'No=-1:Okのとき
26390 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
26400 for i=0 to 3
26410 buf_Jyoushi_Born_Day(i)=0
26420 next i
26430 gload Gazo$ + "Screen1.png",0,0,0
26440 gload Gazo$ + "downscreen.png",0,0,800
26450 'Init"kb:2"
26460 '音声ファイル再生 2023.06.07
26470 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
26480 font 48
26490 locate 0,1
26500 '文字色：黒　 color rgb(0,0,0)
26510 color rgb(255,255,255)
26520 print "上司の生まれた年代を入れて下さい" + chr$(13)
26530 color rgb(255,255,255)
26540 locate 1,3
26550 print "上司の生まれた年代(西暦4桁):";buf_year$
26560 color rgb(255,255,255)
26570 'locate 4,6:print ":7"
26580 'locate 9,6:print ":8"
26590 'locate 12,6:print ":9"
26600 locate 4,6
26610 print ":7  :8  :9" + chr$(13)
26620 color rgb(255,255,255)
26630 locate 4,8
26640 print ":4  :5  :6" + chr$(13)
26650 color rgb(255,255,255)
26660 locate 4,10
26670 print ":1  :2  :3" + chr$(13)
26680 locate 4,12
26690 print "    :0"
26700 locate 12,12
26710 color rgb(0,0,255)
26720 print ":Ok"
26730 sp_on 4,0: sp_on 5,0:sp_on 6,0
26740 sp_on 7,0:sp_on 8,0:sp_on 9,0
26750 sp_on 10,0:sp_on 11,0:sp_on 12,0
26760 sp_on 13,0:sp_on 14,1
26770 Jyoushi_Input_Seireki2:
26780 key$="":bg=0:y=0:y2=0:bg2=0:
26790 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
26800 key$ = inkey$
26810 bg = strig(1)
26820 y = stick(1)
26830 y2 = stick(0)
26840 bg2=strig(0)
26850 pause 5
26860 wend
26870 '十字キー　ここから
26880 '上の矢印　または、十字キー上
26890 if ((y = -1) or (key$ = chr$(30))) then
26900 select case No
26910 'No=-1:okのとき:初期の状態
26920 '0kボタンから３に移動
26930 '上に行く 処理
26940 case -1:
26950 No=3:sp_on 12,1:sp_on 14,0
26960 pause 200:goto Jyoushi_Input_Seireki2:
26970 '選択肢:3
26980 '3ボタンから 6に移動
26990 case 3:
27000 No=6:sp_on 12,0:sp_on 11,1
27010 pause 200:goto Jyoushi_Input_Seireki2:
27020 '6ボタンから ９に移動
27030 case 6:
27040 No=9:sp_on 10,1:sp_on 11,0
27050 pause 200:goto Jyoushi_Input_Seireki2:
27060 '6ボタンから ９に移動　ここまで
27070 '9で上を押して何もしない
27080 case 9:
27090 '何もしない
27100 No=9
27110 pause 200:goto Jyoushi_Input_Seireki2:
27120 '9で上を押しても何もしない　ここまで
27130 '上　 0ボタンから2ボタン
27140 'sp_on 6,1:1
27150 'sp_on 8,1:5
27160 'sp_on 7,1:7
27170 case 0:
27180 No=2:sp_on 13,0:sp_on 9,1:
27190 pause 200:goto Jyoushi_Input_Seireki2:
27200 '上  0ボタンから2ボタン　ここまで
27210 '2から５になる 上
27220 case 2:
27230 No=5:sp_on 8,1:sp_on 9,0:
27240 pause 200:goto Jyoushi_Input_Seireki2:
27250 case 5:
27260 No=8:sp_on 7,1:sp_on 8,0
27270 pause 200:goto Jyoushi_Input_Seireki2:
27280 case 8:
27290 pause 200:goto Jyoushi_Input_Seireki2:
27300 case 1:
27310 No=4:sp_on 5,1:sp_on 6,0
27320 pause 200:goto Jyoushi_Input_Seireki2:
27330 case 4:
27340 No=7:sp_on 4,1:sp_on 5,0
27350 pause 200:goto Jyoushi_Input_Seireki2:
27360 case 7:
27370 pause 200:goto Jyoushi_Input_Seireki2:
27380 end select
27390 endif
27400 '左３　ここまで
27410 '下の矢印
27420 '中央 2
27430 if ((y=1) or (key$ = chr$(31))) then
27440 select case No
27450 '9から６に下げる
27460 case 9:
27470 No=6:sp_on 11,1:sp_on 10,0
27480 pause 200:goto Jyoushi_Input_Seireki2:
27490 '6から３に下げる
27500 case 6:
27510 No=3:sp_on 12,1:sp_on 11,0
27520 pause 200:goto Jyoushi_Input_Seireki2:
27530 '3から０ｋに変える
27540 case 3:
27550 No=-1:sp_on 14,1:sp_on 12,0
27560 pause 200:goto Jyoushi_Input_Seireki2:
27570 'Okから下のボタンを押しても何もしない
27580 case -1:
27590 pause 200:goto Jyoushi_Input_Seireki2:
27600 case 8:
27610 No=5:sp_on 8,1:sp_on 7,0
27620 pause 200:goto Jyoushi_Input_Seireki2:
27630 case 5:
27640 No=2:sp_on 9,1:sp_on 8,0
27650 pause 200:goto Jyoushi_Input_Seireki2:
27660 case 2:
27670 No=0:sp_on 13,1:sp_on 9,0
27680 pause 200:goto Jyoushi_Input_Seireki2:
27690 case 0:
27700 pause 200:goto Jyoushi_Input_Seireki2:
27710 case 7:
27720 No=4:sp_on 5,1:sp_on 4,0
27730 pause 200:goto Jyoushi_Input_Seireki2:
27740 case 4:
27750 No=1:sp_on 6,1:sp_on 5,0
27760 pause 200:goto Jyoushi_Input_Seireki2:
27770 case 1:
27780 pause 200:goto Jyoushi_Input_Seireki2:
27790 end select
27800 endif
27810 '左へボタン 十字キー　左　or 　カーソル左
27820 if ((y2 = -1) or (key$ = chr$(29))) then
27830 select case No
27840 'Ok ボタン  Okから　左　０に行く
27850 case -1:
27860 No=0:sp_on 13,1:sp_on 14,0
27870 pause 200:goto Jyoushi_Input_Seireki2:
27880 '0 ボタン  左　何もしない
27890 case 0:
27900 pause 200:goto Jyoushi_Input_Seireki2:
27910 case 3:
27920 No=2:sp_on 9,1:sp_on 12,0:
27930 pause 200:goto Jyoushi_Input_Seireki2:
27940 case 2:
27950 No=1:sp_on 6,1:sp_on 9,0:
27960 pause 200:goto Jyoushi_Input_Seireki2:
27970 case 1:
27980 pause 200:goto Jyoushi_Input_Seireki2:
27990 case 6:
28000 No=5:sp_on 8,1:sp_on 11,0
28010 pause 200:goto Jyoushi_Input_Seireki2:
28020 case 5:
28030 No=4:sp_on 5,1:sp_on 8,0
28040 pause 200:goto Jyoushi_Input_Seireki2:
28050 case 4:
28060 pause 200:goto Jyoushi_Input_Seireki2:
28070 case 9:
28080 No=8:sp_on 7,1:sp_on 10,0
28090 pause 200:goto Jyoushi_Input_Seireki2:
28100 case 8:
28110 No=7:sp_on 4,1:sp_on 7,0
28120 pause 200:goto Jyoushi_Input_Seireki2:
28130 case 7:
28140 pause 200:goto Jyoushi_Input_Seireki2:
28150 end select
28160 endif
28170 '右  十字キー　右　or カーソル　右
28180 if ((y2 = 1) or (key$ = chr$(28))) then
28190 select case No
28200 '0ボタンからokボタン右に移動
28210 case 0:
28220 No=-1:sp_on 14,1:sp_on 13,0
28230 pause 200:goto Jyoushi_Input_Seireki2:
28240 '0ボタンからokボタン 右に移動　ここまで
28250 'OKボタンで右を押して何もしない
28260 case -1:
28270 pause 200:goto Jyoushi_Input_Seireki2:
28280 case 1:
28290 No=2:sp_on 9,1:sp_on 6,0
28300 pause 200:goto Jyoushi_Input_Seireki2:
28310 case 2:
28320 No=3:sp_on 12,1:sp_on 9,0
28330 pause 200:goto Jyoushi_Input_Seireki2:
28340 case 3:
28350 pause 200:goto Jyoushi_Input_Seireki2:
28360 case 4:
28370 No=5:sp_on 8,1:sp_on 5,0
28380 pause 200:goto Jyoushi_Input_Seireki2:
28390 case 5:
28400 No=6:sp_on 11,1:sp_on 8,0
28410 pause 200:goto Jyoushi_Input_Seireki2:
28420 case 7:
28430 No=8:sp_on 7,1:sp_on 4,0
28440 pause 200:goto Jyoushi_Input_Seireki2:
28450 case 8:
28460 No=9:sp_on 10,1:sp_on 7,0
28470 pause 200:goto Jyoushi_Input_Seireki2:
28480 case 9:
28490 pause 200:goto Jyoushi_Input_Seireki2:
28500 case 6:
28510 pause 200:goto Jyoushi_Input_Seireki2:
28520 end select
28530 'Okから右ボタンを押して何もしない ここまで
28540 endif
28550 '十字キー　ここまで
28560 '==============================
28570 'ここから
28580 '==============================
28590 if ((bg=2) or (key$=chr$(13))) then
28600 select case count
28610 case 0:
28620 count = 1
28630 if (No=-1) then
28640 count = 0:No=0
28650 buf_Jyoushi_Born_Day(0) = No
28660 'Okボタンを押したとき
28670 goto Jyoushi_Input_Seireki2:
28680 else
28690 'Okボタン以外が押されたとき
28700 if (No>=1 and No<=2) then
28710 buf_year$="":buf_year$=str$(No) + "***"
28720 buf_year = No:a= No
28730 buf_Jyoushi_Born_Day(0) = No
28740 locate 1,3
28750 color rgb(255,255,255)
28760 print "上司の生まれた年代(西暦4桁):";buf_year$
28770 goto Jyoushi_Input_Seireki2:
28780 else
28790 count=0
28800 ui_msg"数字が範囲外になります。"
28810 buf_year$="":buf_year=0
28820 goto Jyoushi_Input_Seireki2:
28830 endif
28840 endif
28850 case 1:
28860 count = 2
28870 if (No = -1) then
28880 count = 1
28890 goto Jyoushi_Input_Seireki2:
28900 else
28910 buf_year = a * 10 + No
28920 b=buf_year
28930 buf_year$ = str$(buf_year) + "**"
28940 buf_Jyoushi_Born_Day(0)=buf_year
28950 locate 1,3
28960 color rgb(255,255,255)
28970 print "                                                                "
28980 locate 1,3
28990 print "上司の生まれた年代(西暦4桁):" + buf_year$
29000 'if (No = -1) then
29010 'count=1
29020 goto Jyoushi_Input_Seireki2:
29030 endif
29040 case 2:
29050 count=3
29060 if (No=-1) then
29070 count =2
29080 goto Jyoushi_Input_Seireki2:
29090 else
29100 buf_year = b * 10 + No
29110 c=buf_year
29120 buf_year$ = str$(buf_year) + "*"
29130 buf_Jyoushi_Born_Day(0) = buf_year
29140 locate 1,3
29150 color rgb(255,255,255)
29160 print "                                        "
29170 locate 1,3
29180 print "上司の生まれた年代(西暦4桁):";buf_year$
29190 goto Jyoushi_Input_Seireki2:
29200 endif
29210 case 3:
29220 count=4
29230 if (No = -1) then
29240 No=0
29250 goto Jyoushi_Input_Seireki2:
29260 else
29270 buf_year = c * 10 + No
29280 buf_year$ = str$(buf_year)
29290 buf_Jyoushi_Born_Day(0) = buf_year
29300 locate 1,3
29310 color RGB(255,255,255)
29320 print "                                      "
29330 locate 1,3
29340 print "上司の生まれた年代(西暦4桁):";buf_year$
29350 buf_year=val(buf_year$)
29360 'year=val(buf_year$)
29370 'if (No=-1) then
29380 'goto Input_Born_Month:
29390 'else
29400 goto Jyoushi_Input_Seireki2:
29410 endif
29420 case 4:
29430 'bufyear=buf_year
29440 if (No=-1) then
29450 buf_year = val(buf_year$)
29460 buf_Jyoushi_Born_Day(0)=buf_year
29470 sp_on 14,0:No=0
29480 goto Jyoushi_Input_Born_Month:
29490 else
29500 goto Jyoushi_Input_Seireki2:
29510 endif
29520 end select
29530 endif
29540 '===========================
29550 'ここまでを部下のところにコピーする.
29560 '===========================
29570 if (bg2 = 2) then
29580 select case count2
29590 case 0:
29600 if (No = -1) then
29610 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
29620 count=0
29630 locate 1,3
29640 color rgb(255,255,255)
29650 print "                                      "
29660 locate 1,3
29670 print "上司の生まれた年代（西暦4桁):" + buf_year$
29680 goto Jyoushi_Input_Seireki2:
29690 else
29700 '(buf_year=0) then
29710 buf_year=0:buf_year$="****"
29720 locate 1,3
29730 print "                                       "
29740 locate 1,3
29750 print "上司の生まれた年代(西暦4桁):"+buf_year$
29760 goto Jyoushi_Input_Seireki2:
29770 'endif
29780 endif
29790 end select
29800 endif
29810 'Input"上司の生れた年代(4桁,〜2025年):",year
29820 'if year > 2025 then goto Jyoushi_Input_Seireki:
29830 'if year = 123 then cls 3:cls 4:goto Main_Screen:
29840 '"4桁目"
29850 'bufyear4 = fix(year / 1000)
29860 '"3桁目"
29870 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
29880 '"2桁目"
29890 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
29900 '"1桁目"
29910 'bufyear1 = fix((year - ((bufyear4*
29920 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
29930 '2.生まれた月を入力
29940 Jyoushi_Input_Born_Month:
29950 cls 3:play "":count=0:count2=0
29960 'No=-1:Okのとき
29970 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
29980 for i=0 to 1
29990 buf_month(i)=0
30000 next i
30010 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30020 gload Gazo$ + "Screen1.png",0,0,0
30030 gload Gazo$ + "downscreen.png",0,0,800
30040 'Init"kb:4"
30050 '音声ファイル再生 2023.06.07
30060 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30070 font 48
30080 locate 0,1
30090 '文字色：黒　 color rgb(0,0,0)
30100 '文字色:白
30110 color rgb(255,255,255)
30120 print "上司の生まれた月を入れて下さい" + chr$(13)
30130 '文字色:白
30140 color rgb(255,255,255)
30150 locate 1,3
30160 '文字色:白
30170 print "上司の生まれた月(1月~12月):"+buf_Month$
30180 color rgb(255,255,255)
30190 'locate 4,6:print ":7"
30200 'locate 9,6:print ":8"
30210 'locate 12,6:print ":9"
30220 locate 4,6
30230 '文字色:赤
30240 print ":7  :8  :9" + chr$(13)
30250 color rgb(255,255,255)
30260 locate 4,8
30270 print ":4  :5  :6" + chr$(13)
30280 color rgb(255,255,255)
30290 locate 4,10
30300 print ":1  :2  :3" + chr$(13)
30310 locate 4,12
30320 print "    :0"
30330 locate 12,12
30340 color rgb(0,0,255)
30350 print ":Ok"
30360 sp_on 4,0: sp_on 5,0:sp_on 6,0
30370 sp_on 7,0:sp_on 8,0:sp_on 9,0
30380 sp_on 10,0:sp_on 11,0:sp_on 12,0
30390 sp_on 13,0:sp_on 14,1
30400 Jyoushi_Input_Born_Month2:
30410 key$="":bg=0:y=0:y2=0:bg2=0
30420 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
30430 key$ = inkey$
30440 bg = strig(1)
30450 y = stick(1)
30460 y2 = stick(0)
30470 bg2 = strig(0)
30480 pause 5
30490 wend
30500 '十字キー　ここから
30510 '上の矢印　または、十字キー上
30520 if ((y = -1) or (key$ = chr$(30))) then
30530 select case No
30540 'No=-1:okのとき:初期の状態
30550 '0kボタンから３に移動
30560 '上に行く 処理
30570 case -1:
30580 No=3:sp_on 12,1:sp_on 14,0
30590 pause 200:goto Jyoushi_Input_Born_Month2:
30600 '選択肢:3
30610 '3ボタンから 6に移動
30620 case 3:
30630 No=6:sp_on 12,0:sp_on 11,1
30640 pause 200:goto Jyoushi_Input_Born_Month2:
30650 '6ボタンから ９に移動
30660 case 6:
30670 No=9:sp_on 10,1:sp_on 11,0
30680 pause 200:goto Jyoushi_Input_Born_Month2:
30690 '6ボタンから ９に移動　ここまで
30700 '9で上を押して何もしない
30710 case 9:
30720 '何もしない
30730 No=9
30740 pause 200:goto Jyoushi_Input_Born_Month2:
30750 '9で上を押しても何もしない　ここまで
30760 '上　 0ボタンから2ボタン
30770 'sp_on 6,1:1
30780 'sp_on 8,1:5
30790 'sp_on 7,1:7
30800 case 0:
30810 No=2:sp_on 13,0:sp_on 9,1:
30820 pause 200:goto Jyoushi_Input_Born_Month2:
30830 '上  0ボタンから2ボタン　ここまで
30840 '2から５になる 上
30850 case 2:
30860 No=5:sp_on 8,1:sp_on 9,0:
30870 pause 200:goto Jyoushi_Input_Born_Month2:
30880 case 5:
30890 No=8:sp_on 7,1:sp_on 8,0
30900 pause 200:goto Jyoushi_Input_Born_Month2:
30910 case 8:
30920 pause 200:goto Input_Born_Month2:
30930 case 1:
30940 No=4:sp_on 5,1:sp_on 6,0
30950 pause 200:goto Jyoushi_Input_Born_Month2:
30960 case 4:
30970 No=7:sp_on 4,1:sp_on 5,0
30980 pause 200:goto Jyoushi_Input_Born_Month2:
30990 case 7:
31000 pause 200:goto Input_Born_Month2:
31010 end select
31020 endif
31030 '左３　ここまで
31040 '下の矢印
31050 '中央 2
31060 if ((y=1) or (key$ = chr$(31))) then
31070 select case No
31080 '9から６に下げる
31090 case 9:
31100 No=6:sp_on 11,1:sp_on 10,0
31110 pause 200:goto Jyoushi_Input_Born_Month2:
31120 '6から３に下げる
31130 case 6:
31140 No=3:sp_on 12,1:sp_on 11,0
31150 pause 200:goto Jyoushi_Input_Born_Month2:
31160 '3から０ｋに変える
31170 case 3:
31180 No=-1:sp_on 14,1:sp_on 12,0
31190 pause 200:goto Jyoushi_Input_Born_Month2:
31200 'Okから下のボタンを押しても何もしない
31210 case -1:
31220 pause 200:goto Jyoushi_Input_Born_Month2:
31230 case 8:
31240 No=5:sp_on 8,1:sp_on 7,0
31250 pause 200:goto Jyoushi_Input_Born_Month2:
31260 case 5:
31270 No=2:sp_on 9,1:sp_on 8,0
31280 pause 200:goto Jyoushi_Input_Born_Month2:
31290 case 2:
31300 No=0:sp_on 13,1:sp_on 9,0
31310 pause 200:goto Jyoushi_Input_Born_Month2:
31320 case 0:
31330 pause 200:goto Jyoushi_Input_Born_Month2:
31340 case 7:
31350 No=4:sp_on 5,1:sp_on 4,0
31360 pause 200:goto Jyoushi_Input_Born_Month2:
31370 case 4:
31380 No=1:sp_on 6,1:sp_on 5,0
31390 pause 200:goto Jyoushi_Input_Born_Month2:
31400 case 1:
31410 pause 200:goto Jyoushi_Input_Born_Month2:
31420 end select
31430 endif
31440 '左へボタン 十字キー　左　or 　カーソル左
31450 if ((y2 = -1) or (key$ = chr$(29))) then
31460 select case No
31470 'Ok ボタン  Okから　左　０に行く
31480 case -1:
31490 No=0:sp_on 13,1:sp_on 14,0
31500 pause 200:goto Jyoushi_Input_Born_Month2:
31510 '0 ボタン  左　何もしない
31520 case 0:
31530 pause 200:goto Jyoushi_Input_Born_Month2:
31540 case 3:
31550 No=2:sp_on 9,1:sp_on 12,0:
31560 pause 200:goto Jyoushi_Input_Born_Month2:
31570 case 2:
31580 No=1:sp_on 6,1:sp_on 9,0:
31590 pause 200:goto Jyoushi_Input_Born_Month2:
31600 case 1:
31610 pause 200:goto Jyoushi_Input_Born_Month2:
31620 case 6:
31630 No=5:sp_on 8,1:sp_on 11,0
31640 pause 200:goto Jyoushi_Input_Born_Month2:
31650 case 5:
31660 No=4:sp_on 5,1:sp_on 8,0
31670 pause 200:goto Jyoushi_Input_Born_Month2:
31680 case 4:
31690 pause 200:goto Jyoushi_Input_Born_Month2:
31700 case 9:
31710 No=8:sp_on 7,1:sp_on 10,0
31720 pause 200:goto Input_Born_Month2:
31730 case 8:
31740 No=7:sp_on 4,1:sp_on 7,0
31750 pause 200:goto Jyoushi_Input_Born_Month2:
31760 case 7:
31770 pause 200:goto Jyoushi_Input_Born_Month2:
31780 end select
31790 endif
31800 '右  十字キー　右　or カーソル　右
31810 if ((y2 = 1) or (key$ = chr$(28))) then
31820 select case No
31830 '0ボタンからokボタン右に移動
31840 case 0:
31850 No=-1:sp_on 14,1:sp_on 13,0
31860 pause 200:goto Jyoushi_Input_Born_Month2:
31870 '0ボタンからokボタン 右に移動　ここまで
31880 'OKボタンで右を押して何もしない
31890 case -1:
31900 pause 200:goto Jyoushi_Input_Born_Month2:
31910 case 1:
31920 No=2:sp_on 9,1:sp_on 6,0
31930 pause 200:goto Jyoushi_Input_Born_Month2:
31940 case 2:
31950 No=3:sp_on 12,1:sp_on 9,0
31960 pause 200:goto Jyoushi_Input_Born_Month2:
31970 case 3:
31980 pause 200:goto Jyoushi_Input_Born_Month2:
31990 case 4:
32000 No=5:sp_on 8,1:sp_on 5,0
32010 pause 200:goto Jyoushi_Input_Born_Month2:
32020 case 5:
32030 No=6:sp_on 11,1:sp_on 8,0
32040 pause 200:goto Jyoushi_Input_Born_Month2:
32050 case 7:
32060 No=8:sp_on 7,1:sp_on 4,0
32070 pause 200:goto Jyoushi_Input_Born_Month2:
32080 case 8:
32090 No=9:sp_on 10,1:sp_on 7,0
32100 pause 200:goto Jyoushi_Input_Born_Month2:
32110 case 9:
32120 pause 200:goto Jyoushi_Input_Born_Month2:
32130 case 6:
32140 pause 200:goto Jyoushi_Input_Born_Month2:
32150 end select
32160 'Okから右ボタンを押して何もしない ここまで
32170 endif
32180 '十字キー　ここまで
32190 '右の丸ボタン + Enter key 決定キー
32200 if ((bg=2) or (key$=chr$(13))) then
32210 select case count
32220 case 0:
32230 if (No=-1) then No=0
32240 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
32250 if (buf_month > 1 and buf_month < 10)  then
32260 buf_Month$ = str$(buf_month)
32270 'buf_month=No
32280 endif
32290 if (buf_month = 1)  then
32300 buf_Month$ = str$(buf_month) + "*"
32310 'c=buf_month
32320 endif
32330 locate 1,3
32340 print "                                     "
32350 color RGB(255,255,255)
32360 locate 1,3
32370 print "上司の生まれた月(1月~12月):" + buf_Month$
32380 goto Jyoushi_Input_Born_Month2:
32390 case 1:
32400 count = 2:
32410 'c = val(buf_Month$)
32420 if (No = -1) then
32430 'count=0
32440 No=0
32450 month=buf_month
32460 buf_month=val(buf_Month$)
32470 month=buf_month
32480 buf_Jyoushi_Born_Day(1)=month
32490 '生まれた日に飛ぶ
32500 goto Jyoushi_Input_Born_Day:
32510 else
32520 buf_month = c*10 + No
32530 'if (buf_month = 1) then
32540 'buf_Month$ = str$(buf_month)
32550 'endif
32560 buf_Month$ = str$(buf_month)
32570 buf_Jyoushi_Born_Day(1) = buf_month
32580 locate 0,3
32590 print "                                           "
32600 locate 1,3
32610 color Rgb(255,255,255)
32620 print "上司の生まれた月(1月~12月):" + buf_Month$
32630 goto Jyoushi_Input_Born_Month2:
32640 endif
32650 case 2:
32660 '==================================
32670 '何もしない
32680 'coun = 2
32690 '==================================
32700 'c= val(buf_Month$)
32710 'buf_month = c*10 + No
32720 'buf_Month$ = str$(buf_month)
32730 'locate 2,3
32740 'print "上司の生まれた月(1月～12月):";buf_Month$
32750 'goto Jyoushi_Input_Born_Month2:
32760 'case 3:
32770 'count=4
32780 'b=val(buf_month$)
32790 'buf_month=c*10+No
32800 'buf_Month$=str$(buf_month)
32810 'locate 2,3
32820 'print "上司の生まれた月(1月～12月):";buf_Month$
32830 'buf_month=val(buf_Month$)
32840 'year=val(buf_year$)
32850 if (No=-1) then
32860 No=0
32870 goto Jyoushi_Input_Born_Day:
32880 else
32890 goto Jyoushi_Input_Born_Month2:
32900 endif
32910 'case 4:
32920 'bufyear=buf_year
32930 'if (No=-1) then
32940 'buf_month = val(buf_Month$)
32950 'month = buf_month
32960 'sp_on 14,0
32970 'goto Input_Born_Day:
32980 'else
32990 'goto Input_Born_Month2:
33000 'endif
33010 end select
33020 endif
33030 '左の丸ボタン　キャンセル
33040 if (bg2=2) then
33050 select case count2
33060 case 0:
33070 if (No = -1) then
33080 buf_month=0:buf_Month$="**"
33090 count=0
33100 'goto rewrite2:
33110 else
33120 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
33130 buf_month = 0:buf_Month$ = "**"
33140 locate 0,3
33150 color rgb(255,255,255)
33160 print "                                       "
33170 goto rewrite2:
33180 if (No>12) then
33190 ui_msg"値が範囲外です。"
33200 goto rewrite2:
33210 endif
33220 endif
33230 endif
33240 rewrite2:
33250 locate 2,3
33260 color rgb(255,255,255)
33270 print "                                      "
33280 locate 2,3
33290 print "上司の生まれた月(1月~12月):"+buf_Month$
33300 goto Jyoushi_Input_Born_Month2:
33310 end select
33320 'endif
33330 endif
33340 end
33350 'end
33360 '生れた日を入力
33370 Jyoushi_Input_Born_Day:
33380 '生まれた日入力
33390 cls 3:play ""
33400 'No=-1:Okのとき
33410 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
33420 for i=0 to 1
33430 buf_day(i)=0
33440 next i
33450 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
33460 gload Gazo$ + "Screen1.png",0,0,0
33470 gload Gazo$ + "downscreen.png",0,0,800
33480 'Init"kb:2"
33490 '音声ファイル再生 2023.06.07
33500 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
33510 font 48
33520 locate 1,1
33530 '文字色：黒　 color rgb(0,0,0)
33540 color rgb(255,255,255)
33550 print "上司の生まれた日を入れて下さい" + chr$(13)
33560 locate 1,3
33570 color rgb(255,255,255)
33580 print "                                      "
33590 locate 1,3
33600 print "上司の生まれた日(1日~31日):"+buf_Day$
33610 color rgb(255,255,255)
33620 'locate 4,6:print ":7"
33630 'locate 9,6:print ":8"
33640 'locate 12,6:print ":9"
33650 locate 4,6
33660 print ":7  :8  :9" + chr$(13)
33670 color rgb(255,255,255)
33680 locate 4,8
33690 print ":4  :5  :6" + chr$(13)
33700 color rgb(255,255,255)
33710 locate 4,10
33720 print ":1  :2  :3" + chr$(13)
33730 locate 4,12
33740 print "    :0"
33750 locate 12,12
33760 color rgb(0,0,255)
33770 print ":Ok"
33780 sp_on 4,0: sp_on 5,0:sp_on 6,0
33790 sp_on 7,0:sp_on 8,0:sp_on 9,0
33800 sp_on 10,0:sp_on 11,0:sp_on 12,0
33810 sp_on 13,0:sp_on 14,1
33820 Jyoushi_Input_Born_Day2:
33830 key$="":bg=0:y=0:y2=0:bg2=0:
33840 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33850 key$ = inkey$
33860 bg = strig(1)
33870 y = stick(1)
33880 y2 = stick(0)
33890 bg2 = strig(0)
33900 pause 5
33910 wend
33920 '十字キー　ここから
33930 '上の矢印　または、十字キー上
33940 if ((y = -1) or (key$ = chr$(30))) then
33950 select case No
33960 'No=-1:okのとき:初期の状態
33970 '0kボタンから３に移動
33980 '上に行く 処理
33990 case -1:
34000 No=3:sp_on 12,1:sp_on 14,0
34010 pause 200:goto Jyoushi_Input_Born_Day2:
34020 '選択肢:3
34030 '3ボタンから 6に移動
34040 case 3:
34050 No=6:sp_on 12,0:sp_on 11,1
34060 pause 200:goto Jyoushi_Input_Born_Day2:
34070 '6ボタンから ９に移動
34080 case 6:
34090 No=9:sp_on 10,1:sp_on 11,0
34100 pause 200:goto Jyoushi_Input_Born_Day2:
34110 '6ボタンから ９に移動　ここまで
34120 '9で上を押して何もしない
34130 case 9:
34140 '何もしない
34150 No=9
34160 pause 200:goto Jyoushi_Input_Born_Day2:
34170 '9で上を押しても何もしない　ここまで
34180 '上　 0ボタンから2ボタン
34190 'sp_on 6,1:1
34200 'sp_on 8,1:5
34210 'sp_on 7,1:7
34220 case 0:
34230 No=2:sp_on 13,0:sp_on 9,1:
34240 pause 200:goto Jyoushi_Input_Born_Day2:
34250 '上  0ボタンから2ボタン　ここまで
34260 '2から５になる 上
34270 case 2:
34280 No=5:sp_on 8,1:sp_on 9,0:
34290 pause 200:goto Jyoushi_Input_Born_Day2:
34300 case 5:
34310 No=8:sp_on 7,1:sp_on 8,0
34320 pause 200:goto Jyoushi_Input_Born_Day2:
34330 case 8:
34340 pause 200:goto Jyoushi_Input_Born_Day2:
34350 case 1:
34360 No=4:sp_on 5,1:sp_on 6,0
34370 pause 200:goto Jyoushi_Input_Born_Day2:
34380 case 4:
34390 No=7:sp_on 4,1:sp_on 5,0
34400 pause 200:goto Jyoushi_Input_Born_Day2:
34410 case 7:
34420 pause 200:goto Jyoushi_Input_Born_Day2:
34430 end select
34440 endif
34450 '左３　ここまで
34460 '下の矢印
34470 '中央 2
34480 if ((y=1) or (key$ = chr$(31))) then
34490 select case No
34500 '9から６に下げる
34510 case 9:
34520 No=6:sp_on 11,1:sp_on 10,0
34530 pause 200:goto Jyoushi_Input_Born_Day2:
34540 '6から３に下げる
34550 case 6:
34560 No=3:sp_on 12,1:sp_on 11,0
34570 pause 200:goto Jyoushi_Input_Born_Day2:
34580 '3から０ｋに変える
34590 case 3:
34600 No=-1:sp_on 14,1:sp_on 12,0
34610 pause 200:goto Jyoushi_Input_Born_Day2:
34620 'Okから下のボタンを押しても何もしない
34630 case -1:
34640 pause 200:goto Jyoushi_Input_Born_Day2:
34650 case 8:
34660 No=5:sp_on 8,1:sp_on 7,0
34670 pause 200:goto Jyoushi_Input_Born_Day2:
34680 case 5:
34690 No=2:sp_on 9,1:sp_on 8,0
34700 pause 200:goto Jyoushi_Input_Born_Day2:
34710 case 2:
34720 No=0:sp_on 13,1:sp_on 9,0
34730 pause 200:goto Jyoushi_Input_Born_Day2:
34740 case 0:
34750 pause 200:goto Jyoushi_Input_Born_Day2:
34760 case 7:
34770 No=4:sp_on 5,1:sp_on 4,0
34780 pause 200:goto Jyoushi_Input_Born_Day2:
34790 case 4:
34800 No=1:sp_on 6,1:sp_on 5,0
34810 pause 200:goto Jyoushi_Input_Born_Day2:
34820 case 1:
34830 pause 200:goto Jyoushi_Input_Born_Day2:
34840 end select
34850 endif
34860 '左へボタン 十字キー　左　or 　カーソル左
34870 if ((y2 = -1) or (key$ = chr$(29))) then
34880 select case No
34890 'Ok ボタン  Okから　左　０に行く
34900 case -1:
34910 No=0:sp_on 13,1:sp_on 14,0
34920 pause 200:goto Jyoushi_Input_Born_Day2:
34930 '0 ボタン  左　何もしない
34940 case 0:
34950 pause 200:goto Jyoushi_Input_Born_Day2:
34960 case 3:
34970 No=2:sp_on 9,1:sp_on 12,0:
34980 pause 200:goto Jyoushi_Input_Born_Day2:
34990 case 2:
35000 No=1:sp_on 6,1:sp_on 9,0:
35010 pause 200:goto Jyoushi_Input_Born_Day2:
35020 case 1:
35030 pause 200:goto Jyoushi_Input_Born_Day2:
35040 case 6:
35050 No=5:sp_on 8,1:sp_on 11,0
35060 pause 200:goto Jyoushi_Input_Born_Day2:
35070 case 5:
35080 No=4:sp_on 5,1:sp_on 8,0
35090 pause 200:goto Jyoushi_Input_Born_Day2:
35100 case 4:
35110 pause 200:goto Jyoushi_Input_Born_Day2:
35120 case 9:
35130 No=8:sp_on 7,1:sp_on 10,0
35140 pause 200:goto Jyoushi_Input_Born_Day2:
35150 case 8:
35160 No=7:sp_on 4,1:sp_on 7,0
35170 pause 200:goto Jyoushi_Input_Born_Day2:
35180 case 7:
35190 pause 200:goto Jyoushi_Input_Born_Day2:
35200 end select
35210 endif
35220 '右  十字キー　右　or カーソル　右
35230 if ((y2 = 1) or (key$ = chr$(28))) then
35240 select case No
35250 '0ボタンからokボタン右に移動
35260 case 0:
35270 No=-1:sp_on 14,1:sp_on 13,0
35280 pause 200:goto Jyoushi_Input_Born_Day2:
35290 '0ボタンからokボタン 右に移動　ここまで
35300 'OKボタンで右を押して何もしない
35310 case -1:
35320 pause 200:goto Jyoushi_Input_Born_Day2:
35330 case 1:
35340 No=2:sp_on 9,1:sp_on 6,0
35350 pause 200:goto Jyoushi_Input_Born_Day2:
35360 case 2:
35370 No=3:sp_on 12,1:sp_on 9,0
35380 pause 200:goto Jyoushi_Input_Born_Day2:
35390 case 3:
35400 pause 200:goto Jyoushi_Input_Born_Day2:
35410 case 4:
35420 No=5:sp_on 8,1:sp_on 5,0
35430 pause 200:goto Jyoushi_Input_Born_Day2:
35440 case 5:
35450 No=6:sp_on 11,1:sp_on 8,0
35460 pause 200:goto Jyoushi_Input_Born_Day2:
35470 case 7:
35480 No=8:sp_on 7,1:sp_on 4,0
35490 pause 200:goto Jyoushi_Input_Born_Day2:
35500 case 8:
35510 No=9:sp_on 10,1:sp_on 7,0
35520 pause 200:goto Jyoushi_Input_Born_Day2:
35530 case 9:
35540 pause 200:goto Jyoushi_Input_Born_Day2:
35550 case 6:
35560 pause 200:goto Jyoushi_Input_Born_Day2:
35570 end select
35580 'Okから右ボタンを押して何もしない ここまで
35590 endif
35600 '十字キー　ここまで
35610 '右の丸ボタンを押したとき
35620 if ((bg = 2) or (key$ = chr$(13))) then
35630 'count :決定ボタンを押した回数
35640 select case (count)
35650 '1桁目入力
35660 case 0:
35670 count = 1:
35680 if (No = -1) then
35690 '1桁目　OKでは何もしない
35700 No=c
35710 'goto Jyoushi_Input_Born_Day2:
35720 else
35730 'ok以外のボタンを押したとき
35740 buf_day = No:buf_Day$ = str$(No)
35750 buf_Jyoushi_Born_Day(2)=buf_day
35760 c=No
35770 locate 1,3
35780 print "                                      "
35790 color RGB(255,255,255)
35800 locate 1,3
35810 print "上司の生まれた日(1日~31日):" + buf_Day$
35820 endif
35830 'check2:
35840 'if (buf_day >= 1 and buf_day <= 9) then
35850 'sp_on 14,0
35860 'goto complate_jyoushi:
35870 'else
35880 'sp_on 14,0
35890 goto Jyoushi_Input_Born_Day2:
35900 'end
35910 'endif
35920 case 1:
35930 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
35940 count = 2:
35950 'locate 2,3
35960 'color RGB(255,255,255)
35970 'print "生まれた日(1日~31日):";buf_Day$
35980 'Okボタンを押したときの処理
35990 '入力値　10未満のとき
36000 'buf_day = c * 10 + No
36010 if (No = -1) then
36020 c=buf_day:No=0
36030 'buf_day = c
36040 buf_Day$ = str$(buf_day)
36050 '10以下のとき
36060 'if (buf_day < 10) then
36070 sp_on 14,0
36080 goto complate_jyoushi:
36090 'end
36100 'endif
36110 else
36120 'c=No
36130 buf_day = c * 10 + No
36140 buf_Day$ = str$(buf_day)
36150 'buf_day = c:buf_Day$=str$(buf_day)
36160 buf_Jyoushi_Born_Day(2)=buf_day
36170 locate 1,3
36180 print "                                           "
36190 locate 1,3
36200 color Rgb(255,255,255)
36210 print "上司の生まれた日(1日~31日):" + buf_Day$
36220 goto Jyoushi_Input_Born_Day2:
36230 'goto
36240 endif
36250 'endif
36260 '生まれた日　2桁目の数字　or 1桁の数字 + ok
36270 case 2:
36280 'buf_day = c * 10 + No
36290 'buf_Jyoushi_Born_Day(2)=buf_day
36300 'locate 1,3
36310 'print "                                      "
36320 'locate 1,3
36330 'locate 2,3
36340 'print "生まれた日(1日〜31日):";buf_Day
36350 'No=-1:ok ボタンを押したとき
36360 if (No = -1) then
36370 'if ((buf_day > 0) and (buf_day < 32)) then
36380 No=0
36390 sp_on 14,0
36400 goto complate_jyoushi:
36410 'end
36420 else
36430 goto Jyoushi_Input_Born_Day2:
36440 'endif
36450 'Okボタン以外を押したとき
36460 'else
36470 'c=val(buf_Day$)
36480 'buf_day = c * 10 + No
36490 'buf_Jyoushi_Born_Day(2) = buf_day
36500 'buf_Day$ = str$(buf_day)
36510 'locate 1,3
36520 'print "上司の生まれた日(1日~31日):";buf_Day$
36530 'goto Jyoushi_Input_Born_Day2:
36540 endif
36550 'case 3:
36560 'count=4
36570 'c=val(buf_day$)
36580 'buf_day=c*10+No
36590 'buf_day$=str$(buf_day)
36600 'locate 2,3
36610 'print "生まれた日を入れてください:";buf_day$
36620 'year=val(buf_year$)
36630 'if (No = -1) then
36640 'goto Jyoushi_Input_Born_Day:
36650 'sp_on 14,0:
36660 'goto complate_jyoushi:
36670 'else
36680 'goto Jyoushi_Input_Born_Month2:
36690 'endif
36700 'case 4:
36710 'bufyear=buf_year
36720 'if (No=-1) then
36730 'buf_day = val(buf_day$)
36740 'bufday = buf_day
36750 'sp_on 14,0
36760 'goto Jyoushi_Input_Born_Day2:
36770 'else
36780 'goto Jyoushi_Input_Born_Day2:
36790 'endif
36800 end select
36810 endif
36820 if (bg2=2) then
36830 select case count2
36840 case 0:
36850 if (No=-1) then
36860 buf_day=0:buf_Day$="**":No=0
36870 if (buf_day >= 1 and buf_day <= 31) then
36880 count=0
36890 buf_day=0:buf_Day$ = "**"
36900 goto rewrite_day3:
36910 else
36920 buf_day=0:buf_Day$ = "**"
36930 ui_msg"値が範囲外です"
36940 endif
36950 goto rewrite_day3:
36960 else
36970 goto rewrite_day3:
36980 endif
36990 rewrite_day3:
37000 locate 2,3
37010 color rgb(255,255,255)
37020 print "                                      "
37030 locate 2,3
37040 print "生まれた日(1日~31日):" + buf_Day$
37050 goto Jyoushi_Input_Born_Day2:
37060 end select
37070 endif
37080 '--------------------------------------------'
37090 'locate 2,0:color rgb(255,0,0)
37100 'print "上司の生まれた年代を入力"
37110 'color rgb(255,255,255)
37120 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
37130 'locate 2,4:Input "上司の生まれた年:",born_year
37140 '誕生日データーを配列に代入
37150 'buf_Jyoushi_Born_Year:上司の生まれた年代
37160 'buf_Jyoushi_Born_Day(0) = born_year
37170 'born_year = 0
37180 '---------------------------------------------'
37190 'goto Jyoushi_born_month:
37200 '1-2.生まれた月を入力
37210 'Jyoushi_born_month:
37220 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37230 'init "kb:4"
37240 'locate 2,1:
37250 'color rgb(255,0,0)
37260 'print "上司の生まれた月入力"
37270 'color rgb(255,255,255)
37280 'locate 2,4:print "生まれた月を入力してください"
37290 'locate 2,5
37300 'Input "上司の生まれ月:",born_month
37310 'buf_Jyoushi_Born_Day(1) = born_month
37320 'born_month = 0
37330 'goto Jyoushi_born_day:
37340 'buf_Jyoushi_Born_day
37350 '1-3.生まれた日を入力
37360 'Jyoushi_born_day:
37370 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37380 'init "kb:4"
37390 'locate 2,1:color rgb(255,0,0)
37400 'print "上司の生まれた日　入力"
37410 'locate 2,4:color rgb(255,255,255)
37420 'print "生まれた日を入力してください"
37430 'locate 2,5
37440 'Input "上司の生まれた日:",born_day
37450 'buf_Jyoushi_Born_Day(2) = born_day
37460 'born_day = 0
37470 'goto buka_born_year:
37480 '2.部下の誕生日入力
37490 '2-1.生まれた年を入力
37500 'buka_born_year:
37510 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37520 'init "kb:2"
37530 'locate 1,1:color rgb(255,0,0)
37540 'print "部下の生まれた年代入力"
37550 'locate 0,4:color rgb(255,255,255)
37560 'print "部下の生まれた年（西暦4桁）を入れてください"
37570 'locate 0,5
37580 'Input "部下の生まれた年(西暦4桁):",born_year
37590 'buf_Buka_Born_Day(0) = born_year
37600 'born_year = 0
37610 '2-2.生まれた月を入力
37620 'buka_born_month:
37630 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37640 'init "kb:2"
37650 'locate 2,1:color rgb(255,0,0)
37660 'print "部下の生まれた月 入力"
37670 'locate 2,4:color rgb(255,255,255)
37680 'print "部下の生まれた月を入力してください"
37690 'locate 2,5:Input "部下の生まれた月:",born_month
37700 'buf_Buka_Born_Day(1) = born_month
37710 '2-3.生まれた日を入力
37720 'buka_born_day:
37730 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37740 'init "kb:2"
37750 'locate 2,1:color rgb(255,0,0)
37760 'print "生まれた日入力"
37770 'color rgb(255,255,255)
37780 'locate 2,4:print "生まれた日を入力してください"
37790 'locate 2,5:Input "部下の生まれた日:",born_day
37800 'buf_Buka_Born_Day(2) = born_day
37810 'born_day=0:goto Result_Business_Aisyou:
37820 '--------------------------------------------'
37830 complate_jyoushi:
37840 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
37850 buf_Jyoushi = Kabara_Num(a,b,c)
37860 a_1=buf_Jyoushi
37870 goto Buka_Input_Seireki:
37880 '--------------------------------------------'
37890 '部下'
37900 '1.部下の生まれた年代'
37910 Buka_Input_Seireki:
37920 cls 3:play "":count=0:count2=0
37930 init"kb:4"
37940 'No=-1:Okのとき
37950 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
37960 for i=0 to 3
37970 buf_Buka_Born_Day(i)=0
37980 next i
37990 gload Gazo$ + "Screen1.png",0,0,0
38000 gload Gazo$ + "downscreen.png",0,0,800
38010 'Init"kb:2"
38020 '音声ファイル再生 2023.06.07
38030 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38040 font 48
38050 locate 0,1
38060 '文字色：黒　 color rgb(0,0,0)
38070 color rgb(255,255,255)
38080 print "部下の生まれた年代を入れて下さい" + chr$(13)
38090 color rgb(255,255,255)
38100 locate 1,3
38110 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38120 color rgb(255,255,255)
38130 'locate 4,6:print ":7"
38140 'locate 9,6:print ":8"
38150 'locate 12,6:print ":9"
38160 locate 4,6
38170 print ":7  :8  :9" + chr$(13)
38180 color rgb(255,255,255)
38190 locate 4,8
38200 print ":4  :5  :6" + chr$(13)
38210 color rgb(255,255,255)
38220 locate 4,10
38230 print ":1  :2  :3" + chr$(13)
38240 locate 4,12
38250 print "    :0"
38260 locate 12,12
38270 color rgb(0,0,255)
38280 print ":Ok"
38290 sp_on 4,0: sp_on 5,0:sp_on 6,0
38300 sp_on 7,0:sp_on 8,0:sp_on 9,0
38310 sp_on 10,0:sp_on 11,0:sp_on 12,0
38320 sp_on 13,0:sp_on 14,1
38330 Buka_Input_Seireki2:
38340 key$="":bg=0:y=0:y2=0:bg2=0:
38350 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38360 key$ = inkey$
38370 bg = strig(1)
38380 y = stick(1)
38390 y2 = stick(0)
38400 bg2=strig(0)
38410 pause 5
38420 wend
38430 '十字キー　ここから
38440 '上の矢印　または、十字キー上
38450 if ((y = -1) or (key$ = chr$(30))) then
38460 select case No
38470 'No=-1:okのとき:初期の状態
38480 '0kボタンから３に移動
38490 '上に行く 処理
38500 case -1:
38510 No=3:sp_on 12,1:sp_on 14,0
38520 pause 200:goto Buka_Input_Seireki2:
38530 '選択肢:3
38540 '3ボタンから 6に移動
38550 case 3:
38560 No=6:sp_on 12,0:sp_on 11,1
38570 pause 200:goto Buka_Input_Seireki2:
38580 '6ボタンから ９に移動
38590 case 6:
38600 No=9:sp_on 10,1:sp_on 11,0
38610 pause 200:goto Buka_Input_Seireki2:
38620 '6ボタンから ９に移動　ここまで
38630 '9で上を押して何もしない
38640 case 9:
38650 '何もしない
38660 No=9
38670 pause 200:goto Buka_Input_Seireki2:
38680 '9で上を押しても何もしない　ここまで
38690 '上　 0ボタンから2ボタン
38700 'sp_on 6,1:1
38710 'sp_on 8,1:5
38720 'sp_on 7,1:7
38730 case 0:
38740 No=2:sp_on 13,0:sp_on 9,1:
38750 pause 200:goto Buka_Input_Seireki2:
38760 '上  0ボタンから2ボタン　ここまで
38770 '2から５になる 上
38780 case 2:
38790 No=5:sp_on 8,1:sp_on 9,0:
38800 pause 200:goto Buka_Input_Seireki2:
38810 case 5:
38820 No=8:sp_on 7,1:sp_on 8,0
38830 pause 200:goto Buka_Input_Seireki2:
38840 case 8:
38850 pause 200:goto Buka_Input_Seireki2:
38860 case 1:
38870 No=4:sp_on 5,1:sp_on 6,0
38880 pause 200:goto Buka_Input_Seireki2:
38890 case 4:
38900 No=7:sp_on 4,1:sp_on 5,0
38910 pause 200:goto Buka_Input_Seireki2:
38920 case 7:
38930 pause 200:goto Buka_Input_Seireki2:
38940 end select
38950 endif
38960 '左３　ここまで
38970 '下の矢印
38980 '中央 2
38990 if ((y=1) or (key$ = chr$(31))) then
39000 select case No
39010 '9から６に下げる
39020 case 9:
39030 No=6:sp_on 11,1:sp_on 10,0
39040 pause 200:goto Buka_Input_Seireki2:
39050 '6から３に下げる
39060 case 6:
39070 No=3:sp_on 12,1:sp_on 11,0
39080 pause 200:goto Buka_Input_Seireki2:
39090 '3から０ｋに変える
39100 case 3:
39110 No=-1:sp_on 14,1:sp_on 12,0
39120 pause 200:goto Buka_Input_Seireki2:
39130 'Okから下のボタンを押しても何もしない
39140 case -1:
39150 pause 200:goto Buka_Input_Seireki2:
39160 case 8:
39170 No=5:sp_on 8,1:sp_on 7,0
39180 pause 200:goto Buka_Input_Seireki2:
39190 case 5:
39200 No=2:sp_on 9,1:sp_on 8,0
39210 pause 200:goto Buka_Input_Seireki2:
39220 case 2:
39230 No=0:sp_on 13,1:sp_on 9,0
39240 pause 200:goto Buka_Input_Seireki2:
39250 case 0:
39260 pause 200:goto Buka_Input_Seireki2:
39270 case 7:
39280 No=4:sp_on 5,1:sp_on 4,0
39290 pause 200:goto Buka_Input_Seireki2:
39300 case 4:
39310 No=1:sp_on 6,1:sp_on 5,0
39320 pause 200:goto Buka_Input_Seireki2:
39330 case 1:
39340 pause 200:goto Buka_Input_Seireki2:
39350 end select
39360 endif
39370 '左へボタン 十字キー　左　or 　カーソル左
39380 if ((y2 = -1) or (key$ = chr$(29))) then
39390 select case No
39400 'Ok ボタン  Okから　左　０に行く
39410 case -1:
39420 No=0:sp_on 13,1:sp_on 14,0
39430 pause 200:goto Buka_Input_Seireki2:
39440 '0 ボタン  左　何もしない
39450 case 0:
39460 pause 200:goto Buka_Input_Seireki2:
39470 case 3:
39480 No=2:sp_on 9,1:sp_on 12,0:
39490 pause 200:goto Buka_Input_Seireki2:
39500 case 2:
39510 No=1:sp_on 6,1:sp_on 9,0:
39520 pause 200:goto Buka_Input_Seireki2:
39530 case 1:
39540 pause 200:goto Buka_Input_Seireki2:
39550 case 6:
39560 No=5:sp_on 8,1:sp_on 11,0
39570 pause 200:goto Buka_Input_Seireki2:
39580 case 5:
39590 No=4:sp_on 5,1:sp_on 8,0
39600 pause 200:goto Buka_Input_Seireki2:
39610 case 4:
39620 pause 200:goto Buka_Input_Seireki2:
39630 case 9:
39640 No=8:sp_on 7,1:sp_on 10,0
39650 pause 200:goto Buka_Input_Seireki2:
39660 case 8:
39670 No=7:sp_on 4,1:sp_on 7,0
39680 pause 200:goto Buka_Input_Seireki2:
39690 case 7:
39700 pause 200:goto Buka_Input_Seireki2:
39710 end select
39720 endif
39730 '右  十字キー　右　or カーソル　右
39740 if ((y2 = 1) or (key$ = chr$(28))) then
39750 select case No
39760 '0ボタンからokボタン右に移動
39770 case 0:
39780 No=-1:sp_on 14,1:sp_on 13,0
39790 pause 200:goto Buka_Input_Seireki2:
39800 '0ボタンからokボタン 右に移動　ここまで
39810 'OKボタンで右を押して何もしない
39820 case -1:
39830 pause 200:goto Buka_Input_Seireki2:
39840 case 1:
39850 No=2:sp_on 9,1:sp_on 6,0
39860 pause 200:goto Buka_Input_Seireki2:
39870 case 2:
39880 No=3:sp_on 12,1:sp_on 9,0
39890 pause 200:goto Buka_Input_Seireki2:
39900 case 3:
39910 pause 200:goto Buka_Input_Seireki2:
39920 case 4:
39930 No=5:sp_on 8,1:sp_on 5,0
39940 pause 200:goto Buka_Input_Seireki2:
39950 case 5:
39960 No=6:sp_on 11,1:sp_on 8,0
39970 pause 200:goto Buka_Input_Seireki2:
39980 case 7:
39990 No=8:sp_on 7,1:sp_on 4,0
40000 pause 200:goto Buka_Input_Seireki2:
40010 case 8:
40020 No=9:sp_on 10,1:sp_on 7,0
40030 pause 200:goto Buka_Input_Seireki2:
40040 case 9:
40050 pause 200:goto Buka_Input_Seireki2:
40060 case 6:
40070 pause 200:goto Buka_Input_Seireki2:
40080 end select
40090 'Okから右ボタンを押して何もしない ここまで
40100 endif
40110 '十字キー　ここまで
40120 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
40130 'ここからコメント
40140 '右の丸ボタン決定を押した数:count
40150 'if ((bg=2) or (key$=chr$(13))) then
40160 'select case count
40170 'case 0:
40180 'count=1
40190 'if (No = -1) then
40200 'count = 0
40210 'Okボタンを押したとき
40220 '
40230 'goto Buka_Input_Seireki2:
40240 'else
40250 'Okボタン以外が押されたとき
40260 'if (No >= 1 and No <= 2) then
40270 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
40280 'buf_buka_year = No
40290 'buf_Buka_Born_Day(0) = bufyear
40300 'locate 2,3
40310 'color rgb(255,255,255)
40320 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40330 'goto Buka_Input_Seireki2:
40340 'else
40350 'count=0
40360 'ui_msg"数字が範囲外になります。"
40370 'buf_buka_year$ ="":buf_buka_year=0
40380 'goto Buka_Input_Seireki2:
40390 'endif
40400 'endif
40410 'case 1:
40420 'count = 2
40430 'if (No = -1) then
40440 'count = 1
40450 'goto Buka_Input_Seireki2:
40460 'else
40470 'b = val(buf_buka_year$)
40480 'buf_buka_year = b * 10 + No
40490 'buf_buka_year$ = str$(buf_buka_year)
40500 'buf_Buka_Born_Day(0) = bufyear
40510 'locate 1,3
40520 'color rgb(255,255,255)
40530 'print "                                                                "
40540 'locate 1,3
40550 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40560 'if (No = -1) then
40570 'count=1
40580 'goto Buka_Input_Seireki2:
40590 'endif
40600 'case 2:
40610 'count = 3
40620 'if (No = -1) then
40630 'count = 2
40640 'buf_Buka_Born_Day(0)=bufyear
40650 'goto Buka_Input_Seireki2:
40660 'else
40670 'b = val(buf_buka_year$)
40680 'buf_buka_year = b*10 + No
40690 'buf_buka_year$ = str$(buf_buka_year)
40700 'locate 1,3
40710 'color rgb(255,255,255)
40720 'print "                                        "
40730 'locate 1,3
40740 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
40750 'goto Buka_Input_Seireki2:
40760 'endif
40770 'case 3:
40780 'count=4
40790 'if (No = -1) then
40800 'count=3
40810 'goto Buka_Input_Seireki2:
40820 'else
40830 'b = buf_buka_year
40840 'buf_buka_year = b * 10 + No
40850 'buf_buka_year$=str$(buf_buka_year)
40860 'locate 1,3
40870 'color RGB(255,255,255)
40880 'print "                                      "
40890 'locate 1,3
40900 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40910 'buf_year=val(buf_year$)
40920 'year=val(buf_year$)
40930 'if (No=-1) then
40940 'goto Input_Born_Month:
40950 'else
40960 'goto Buka_Input_Seireki2:
40970 'endif
40980 'case 4:
40990 'bufyear=buf_year
41000 'if (No=-1) then
41010 'buf_year = val(buf_year$)
41020 'bufyear = buf_year
41030 'sp_on 14,0
41040 'goto Buka_Input_Born_Month:
41050 'else
41060 'goto Buka_Input_Seireki2:
41070 'endif
41080 'end select
41090 'endif
41100 'if (bg2 = 2) then
41110 'select case count2
41120 'case 0:
41130 'if (No = -1) then
41140 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
41150 'count=0
41160 'locate 1,3
41170 'color rgb(255,255,255)
41180 'print "                                      "
41190 'locate 1,3
41200 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
41210 'goto Buka_Input_Seireki2:
41220 'else
41230 '(buf_year=0) then
41240 'buf_buka_year=0:buf_buka_year$="****"
41250 'goto Buka_Input_Seireki2:
41260 'endif
41270 'endif
41280 'end select
41290 'endif
41300 'end
41310 'ここまでコメント
41320 '================================================================
41330 if ((bg=2) or (key$=chr$(13))) then
41340 select case count
41350 case 0:
41360 count = 1
41370 if (No=-1) then
41380 count = 0
41390 buf_Buka_Born_Day(0) = No
41400 'Okボタンを押したとき
41410 goto Buka_Input_Seireki2:
41420 else
41430 'Okボタン以外が押されたとき
41440 if (No>=1 and No<=2) then
41450 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
41460 buf_buka_year = No
41470 buf_Buka_Born_Day(0) = No
41480 locate 1,3
41490 color rgb(255,255,255)
41500 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41510 goto Buka_Input_Seireki2:
41520 else
41530 count=0
41540 ui_msg"数字が範囲外になります。"
41550 buf_buka_year$="":buf_buka_year=0
41560 goto Buka_Input_Seireki2:
41570 endif
41580 endif
41590 case 1:
41600 count = 2
41610 if (No = -1) then
41620 count = 1
41630 goto Buka_Input_Seireki2:
41640 else
41650 'b = val(buf_buka_year$)
41660 buf_buka_year = a * 10 + No
41670 b=buf_buka_year
41680 buf_buka_year$ = str$(buf_buka_year)+"**"
41690 buf_Buka_Born_Day(0)=buf_buka_year
41700 locate 1,3
41710 color rgb(255,255,255)
41720 print "                                                                "
41730 locate 1,3
41740 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41750 'if (No = -1) then
41760 'count=1
41770 goto Buka_Input_Seireki2:
41780 endif
41790 case 2:
41800 count=3
41810 if (No=-1) then
41820 count =2:No=0
41830 goto Buka_Input_Seireki2:
41840 else
41850 'b = val(buf_buka_year$)
41860 buf_buka_year = b * 10 + No
41870 c = buf_buka_year
41880 buf_buka_year$ = str$(buf_buka_year) + "*"
41890 buf_Buka_Born_Day(0) = buf_buka_year
41900 locate 1,3
41910 color rgb(255,255,255)
41920 print "                                        "
41930 locate 1,3
41940 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41950 goto Buka_Input_Seireki2:
41960 endif
41970 case 3:
41980 count=4
41990 if (No = -1) then
42000 'count=3:No=0
42010 goto Buka_Input_Seireki2:
42020 else
42030 'b = val(buf_buka_year$)
42040 buf_buka_year=c * 10 + No
42050 buf_buka_year$=str$(buf_buka_year)
42060 buf_Buka_Born_Day(0)=buf_buka_year
42070 locate 1,3
42080 color RGB(255,255,255)
42090 print "                                      "
42100 locate 1,3
42110 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42120 buf_buka_year=val(buf_buka_year$)
42130 'year=val(buf_year$)
42140 'if (No=-1) then
42150 'goto Input_Born_Month:
42160 'else
42170 goto Buka_Input_Seireki2:
42180 endif
42190 case 4:
42200 'bufyear=buf_year
42210 if (No = -1) then
42220 buf_buka_year = val(buf_buka_year$)
42230 buf_Buka_Born_Day(0)=buf_buka_year
42240 sp_on 14,0
42250 goto Buka_Input_Born_Month:
42260 else
42270 goto Buka_Input_Seireki2:
42280 endif
42290 end select
42300 endif
42310 '================================================================
42320 'ここにコピーする。
42330 '================================================================
42340 'Input"部下の生れた年代(4桁,〜2025年):",year
42350 'if year > 2025 then goto Jyoushi_Input_Seireki:
42360 'if year = 123 then cls 3:cls 4:goto Main_Screen:
42370 '"4桁目"
42380 'bufyear4 = fix(year / 1000)
42390 '"3桁目"
42400 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
42410 '"2桁目"
42420 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
42430 '"1桁目"
42440 'bufyear1 = fix((year - ((bufyear4*
42450 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
42460 '1.部下の生まれた年代'
42470 '2.部下の生まれた月'
42480 Buka_Input_Born_Month:
42490 cls 3:play "":count=0:count2=0
42500 'No=-1:Okのとき
42510 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
42520 for i=0 to 1
42530 buf_month(i)=0
42540 next i
42550 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
42560 gload Gazo$ + "Screen1.png",0,0,0
42570 gload Gazo$ + "downscreen.png",0,0,800
42580 'Init"kb:4"
42590 '音声ファイル再生 2023.06.07
42600 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
42610 font 48
42620 locate 0,1
42630 '文字色：黒　 color rgb(0,0,0)
42640 '文字色:白
42650 color rgb(255,255,255)
42660 print "部下の生まれた月を入れて下さい" + chr$(13)
42670 '文字色:白
42680 color rgb(255,255,255)
42690 locate 1,3
42700 '文字色:白
42710 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
42720 color rgb(255,255,255)
42730 'locate 4,6:print ":7"
42740 'locate 9,6:print ":8"
42750 'locate 12,6:print ":9"
42760 locate 4,6
42770 '文字色:赤
42780 print ":7  :8  :9" + chr$(13)
42790 color rgb(255,255,255)
42800 locate 4,8
42810 print ":4  :5  :6" + chr$(13)
42820 color rgb(255,255,255)
42830 locate 4,10
42840 print ":1  :2  :3" + chr$(13)
42850 locate 4,12
42860 print "    :0"
42870 locate 12,12
42880 color rgb(0,0,255)
42890 print ":Ok"
42900 sp_on 4,0: sp_on 5,0:sp_on 6,0
42910 sp_on 7,0:sp_on 8,0:sp_on 9,0
42920 sp_on 10,0:sp_on 11,0:sp_on 12,0
42930 sp_on 13,0:sp_on 14,1
42940 Buka_Input_Born_Month2:
42950 key$="":bg=0:y=0:y2=0:bg2=0
42960 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42970 key$ = inkey$
42980 bg = strig(1)
42990 y = stick(1)
43000 y2 = stick(0)
43010 bg2 = strig(0)
43020 pause 5
43030 wend
43040 '十字キー　ここから
43050 '上の矢印　または、十字キー上
43060 if ((y = -1) or (key$ = chr$(30))) then
43070 select case No
43080 'No=-1:okのとき:初期の状態
43090 '0kボタンから３に移動
43100 '上に行く 処理
43110 case -1:
43120 No=3:sp_on 12,1:sp_on 14,0
43130 pause 200:goto Buka_Input_Born_Month2:
43140 '選択肢:3
43150 '3ボタンから 6に移動
43160 case 3:
43170 No=6:sp_on 12,0:sp_on 11,1
43180 pause 200:goto Buka_Input_Born_Month2:
43190 '6ボタンから ９に移動
43200 case 6:
43210 No=9:sp_on 10,1:sp_on 11,0
43220 pause 200:goto Buka_Input_Born_Month2:
43230 '6ボタンから ９に移動　ここまで
43240 '9で上を押して何もしない
43250 case 9:
43260 '何もしない
43270 No=9
43280 pause 200:goto Buka_Input_Born_Month2:
43290 '9で上を押しても何もしない　ここまで
43300 '上　 0ボタンから2ボタン
43310 'sp_on 6,1:1
43320 'sp_on 8,1:5
43330 'sp_on 7,1:7
43340 case 0:
43350 No=2:sp_on 13,0:sp_on 9,1:
43360 pause 200:goto Buka_Input_Born_Month2:
43370 '上  0ボタンから2ボタン　ここまで
43380 '2から５になる 上
43390 case 2:
43400 No=5:sp_on 8,1:sp_on 9,0:
43410 pause 200:goto Buka_Input_Born_Month2:
43420 case 5:
43430 No=8:sp_on 7,1:sp_on 8,0
43440 pause 200:goto Buka_Input_Born_Month2:
43450 case 8:
43460 pause 200:goto Buka_Input_Born_Month2:
43470 case 1:
43480 No=4:sp_on 5,1:sp_on 6,0
43490 pause 200:goto Buka_Input_Born_Month2:
43500 case 4:
43510 No=7:sp_on 4,1:sp_on 5,0
43520 pause 200:goto Buka_Input_Born_Month2:
43530 case 7:
43540 pause 200:goto Buka_Input_Born_Month2:
43550 end select
43560 endif
43570 '左３　ここまで
43580 '下の矢印
43590 '中央 2
43600 if ((y=1) or (key$ = chr$(31))) then
43610 select case No
43620 '9から６に下げる
43630 case 9:
43640 No=6:sp_on 11,1:sp_on 10,0
43650 pause 200:goto Buka_Input_Born_Month2:
43660 '6から３に下げる
43670 case 6:
43680 No=3:sp_on 12,1:sp_on 11,0
43690 pause 200:goto Buka_Input_Born_Month2:
43700 '3から０ｋに変える
43710 case 3:
43720 No=-1:sp_on 14,1:sp_on 12,0
43730 pause 200:goto Buka_Input_Born_Month2:
43740 'Okから下のボタンを押しても何もしない
43750 case -1:
43760 pause 200:goto Buka_Input_Born_Month2:
43770 case 8:
43780 No=5:sp_on 8,1:sp_on 7,0
43790 pause 200:goto Buka_Input_Born_Month2:
43800 case 5:
43810 No=2:sp_on 9,1:sp_on 8,0
43820 pause 200:goto Buka_Input_Born_Month2:
43830 case 2:
43840 No=0:sp_on 13,1:sp_on 9,0
43850 pause 200:goto Buka_Input_Born_Month2:
43860 case 0:
43870 pause 200:goto Buka_Input_Born_Month2:
43880 case 7:
43890 No=4:sp_on 5,1:sp_on 4,0
43900 pause 200:goto Buka_Input_Born_Month2:
43910 case 4:
43920 No=1:sp_on 6,1:sp_on 5,0
43930 pause 200:goto Buka_Input_Born_Month2:
43940 case 1:
43950 pause 200:goto Buka_Input_Born_Month2:
43960 end select
43970 endif
43980 '左へボタン 十字キー　左　or 　カーソル左
43990 if ((y2 = -1) or (key$ = chr$(29))) then
44000 select case No
44010 'Ok ボタン  Okから　左　０に行く
44020 case -1:
44030 No=0:sp_on 13,1:sp_on 14,0
44040 pause 200:goto Buka_Input_Born_Month2:
44050 '0 ボタン  左　何もしない
44060 case 0:
44070 pause 200:goto Buka_Input_Born_Month2:
44080 case 3:
44090 No=2:sp_on 9,1:sp_on 12,0:
44100 pause 200:goto Buka_Input_Born_Month2:
44110 case 2:
44120 No=1:sp_on 6,1:sp_on 9,0:
44130 pause 200:goto Buka_Input_Born_Month2:
44140 case 1:
44150 pause 200:goto Buka_Input_Born_Month2:
44160 case 6:
44170 No=5:sp_on 8,1:sp_on 11,0
44180 pause 200:goto Buka_Input_Born_Month2:
44190 case 5:
44200 No=4:sp_on 5,1:sp_on 8,0
44210 pause 200:goto Buka_Input_Born_Month2:
44220 case 4:
44230 pause 200:goto Buka_Input_Born_Month2:
44240 case 9:
44250 No=8:sp_on 7,1:sp_on 10,0
44260 pause 200:goto Buka_Input_Born_Month2:
44270 case 8:
44280 No=7:sp_on 4,1:sp_on 7,0
44290 pause 200:goto Buka_Input_Born_Month2:
44300 case 7:
44310 pause 200:goto Buka_Input_Born_Month2:
44320 end select
44330 endif
44340 '右  十字キー　右　or カーソル　右
44350 if ((y2 = 1) or (key$ = chr$(28))) then
44360 select case No
44370 '0ボタンからokボタン右に移動
44380 case 0:
44390 No=-1:sp_on 14,1:sp_on 13,0
44400 pause 200:goto Buka_Input_Born_Month2:
44410 '0ボタンからokボタン 右に移動　ここまで
44420 'OKボタンで右を押して何もしない
44430 case -1:
44440 pause 200:goto Buka_Input_Born_Month2:
44450 case 1:
44460 No=2:sp_on 9,1:sp_on 6,0
44470 pause 200:goto Buka_Input_Born_Month2:
44480 case 2:
44490 No=3:sp_on 12,1:sp_on 9,0
44500 pause 200:goto Buka_Input_Born_Month2:
44510 case 3:
44520 pause 200:goto Buka_Input_Born_Month2:
44530 case 4:
44540 No=5:sp_on 8,1:sp_on 5,0
44550 pause 200:goto Buka_Input_Born_Month2:
44560 case 5:
44570 No=6:sp_on 11,1:sp_on 8,0
44580 pause 200:goto Buka_Input_Born_Month2:
44590 case 7:
44600 No=8:sp_on 7,1:sp_on 4,0
44610 pause 200:goto Buka_Input_Born_Month2:
44620 case 8:
44630 No=9:sp_on 10,1:sp_on 7,0
44640 pause 200:goto Buka_Input_Born_Month2:
44650 case 9:
44660 pause 200:goto Buka_Input_Born_Month2:
44670 case 6:
44680 pause 200:goto Buka_Input_Born_Month2:
44690 end select
44700 'Okから右ボタンを押して何もしない ここまで
44710 endif
44720 '十字キー　ここまで
44730 '右の丸ボタン　決定キー
44740 if ((bg=2) or (key$=chr$(13))) then
44750 select case count
44760 case 0:
44770 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
44780 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
44790 locate 1,3
44800 color RGB(255,255,255)
44810 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
44820 goto Buka_Input_Born_Month2:
44830 case 1:
44840 count = 2:buf_buka_month=a*10+No
44850 if (No = -1) then
44860 'count=0
44870 month=buf_buka_month
44880 buf_buka_month=val(buf_buka_Month$)
44890 month=buf_buka_month
44900 '生まれた日に飛ぶ
44910 goto Buka_Input_Born_Day:
44920 else
44930 buf_buka_month = a * 10 + No
44940 buf_buka_Month$ = str$(buf_buka_month)
44950 buf_Buka_Born_Day(1) = buf_buka_month
44960 locate 1,3
44970 color Rgb(255,255,255)
44980 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
44990 goto Buka_Input_Born_Month2:
45000 endif
45010 case 2:
45020 count=3
45030 'c= val(buf_Month$)
45040 'buf_month = c*10 + No
45050 'buf_Month$ = str$(buf_month)
45060 'locate 2,3
45070 'print "部下の生まれた月(1月～12月):";buf_Month$
45080 'goto Buka_Input_Born_Month2:
45090 'case 3:
45100 'count=4
45110 'b=val(buf_month$)
45120 'buf_month=c*10+No
45130 'buf_Month$=str$(buf_month)
45140 'locate 2,3
45150 'print "部下の生まれた月(1月～12月):";buf_Month$
45160 'buf_month=val(buf_Month$)
45170 'year=val(buf_year$)
45180 if (No=-1) then
45190 goto Buka_Input_Born_Day:
45200 else
45210 goto Input_Born_Month2:
45220 endif
45230 'case 4:
45240 'bufyear=buf_year
45250 'if (No=-1) then
45260 'buf_month = val(buf_Month$)
45270 'month = buf_month
45280 'sp_on 14,0
45290 'goto Input_Born_Day:
45300 'else
45310 'goto Input_Born_Month2:
45320 'endif
45330 end select
45340 endif
45350 '左の丸ボタン　キャンセル
45360 if (bg2=2) then
45370 select case count2
45380 case 0:
45390 if (No = -1) then
45400 buf_buka_month=0:buf_buka_Month$="**"
45410 count=0
45420 goto rewrite2:
45430 else
45440 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
45450 buf_month=0:buf_Month$="**"
45460 locate 2,3
45470 color rgb(255,255,255)
45480 print "                                       "
45490 goto rewrite2:
45500 if (No>12) then
45510 ui_msg"値が範囲外です。"
45520 goto rewrite2:
45530 endif
45540 endif
45550 endif
45560 rewrite2:
45570 locate 2,3
45580 color rgb(255,255,255)
45590 print "                                      "
45600 locate 2,3
45610 print "部下の生まれた月(1月~12月):";buf_buka_Month$
45620 goto Buka_Input_Born_Month2:
45630 end select
45640 'endif
45650 endif
45660 end
45670 '2.部下の生まれた月'
45680 '3.部下の生まれた日'
45690 '生れた日を入力
45700 Buka_Input_Born_Day:
45710 '生まれた日入力
45720 cls 3:play ""
45730 'No=-1:Okのとき
45740 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
45750 for i=0 to 1
45760 buf_day(i)=0
45770 next i
45780 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45790 gload Gazo$ + "Screen1.png",0,0,0
45800 gload Gazo$ + "downscreen.png",0,0,800
45810 'Init"kb:2"
45820 '音声ファイル再生 2023.06.07
45830 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
45840 font 48
45850 locate 0,1
45860 '文字色：黒　 color rgb(0,0,0)
45870 color rgb(255,255,255)
45880 print "部下の生まれた日を入れて下さい" + chr$(13)
45890 color rgb(255,255,255)
45900 locate 1,3
45910 print "部下の生まれた日(1日~31日):";buf_Day$
45920 color rgb(255,255,255)
45930 'locate 4,6:print ":7"
45940 'locate 9,6:print ":8"
45950 'locate 12,6:print ":9"
45960 locate 4,6
45970 print ":7  :8  :9" + chr$(13)
45980 color rgb(255,255,255)
45990 locate 4,8
46000 print ":4  :5  :6" + chr$(13)
46010 color rgb(255,255,255)
46020 locate 4,10
46030 print ":1  :2  :3" + chr$(13)
46040 locate 4,12
46050 print "    :0"
46060 locate 12,12
46070 color rgb(0,0,255)
46080 print ":Ok"
46090 sp_on 4,0: sp_on 5,0:sp_on 6,0
46100 sp_on 7,0:sp_on 8,0:sp_on 9,0
46110 sp_on 10,0:sp_on 11,0:sp_on 12,0
46120 sp_on 13,0:sp_on 14,1
46130 Buka_Input_Born_Day2:
46140 key$="":bg=0:y=0:y2=0:bg2=0
46150 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
46160 key$ = inkey$
46170 bg = strig(1)
46180 y = stick(1)
46190 y2 = stick(0)
46200 bg2 = strig(0)
46210 pause 5
46220 wend
46230 '十字キー　ここから
46240 '上の矢印　または、十字キー上
46250 if ((y = -1) or (key$ = chr$(30))) then
46260 select case No
46270 'No=-1:okのとき:初期の状態
46280 '0kボタンから３に移動
46290 '上に行く 処理
46300 case -1:
46310 No=3:sp_on 12,1:sp_on 14,0
46320 pause 200:goto Buka_Input_Born_Day2:
46330 '選択肢:3
46340 '3ボタンから 6に移動
46350 case 3:
46360 No=6:sp_on 12,0:sp_on 11,1
46370 pause 200:goto Buka_Input_Born_Day2:
46380 '6ボタンから ９に移動
46390 case 6:
46400 No=9:sp_on 10,1:sp_on 11,0
46410 pause 200:goto Buka_Input_Born_Day2:
46420 '6ボタンから ９に移動　ここまで
46430 '9で上を押して何もしない
46440 case 9:
46450 '何もしない
46460 No=9
46470 pause 200:goto Buka_Input_Born_Day2:
46480 '9で上を押しても何もしない　ここまで
46490 '上　 0ボタンから2ボタン
46500 'sp_on 6,1:1
46510 'sp_on 8,1:5
46520 'sp_on 7,1:7
46530 case 0:
46540 No=2:sp_on 13,0:sp_on 9,1:
46550 pause 200:goto Buka_Input_Born_Day2:
46560 '上  0ボタンから2ボタン　ここまで
46570 '2から５になる 上
46580 case 2:
46590 No=5:sp_on 8,1:sp_on 9,0:
46600 pause 200:goto Buka_Input_Born_Day2:
46610 case 5:
46620 No=8:sp_on 7,1:sp_on 8,0
46630 pause 200:goto Buka_Input_Born_Day2:
46640 case 8:
46650 pause 200:goto Buka_Input_Born_Day2:
46660 case 1:
46670 No=4:sp_on 5,1:sp_on 6,0
46680 pause 200:goto Buka_Input_Born_Day2:
46690 case 4:
46700 No=7:sp_on 4,1:sp_on 5,0
46710 pause 200:goto Buka_Input_Born_Day2:
46720 case 7:
46730 pause 200:goto Buka_Input_Born_Day2:
46740 end select
46750 endif
46760 '左３　ここまで
46770 '下の矢印
46780 '中央 2
46790 if ((y=1) or (key$ = chr$(31))) then
46800 select case No
46810 '9から６に下げる
46820 case 9:
46830 No=6:sp_on 11,1:sp_on 10,0
46840 pause 200:goto Buka_Input_Born_Day2:
46850 '6から３に下げる
46860 case 6:
46870 No=3:sp_on 12,1:sp_on 11,0
46880 pause 200:goto Buka_Input_Born_Day2:
46890 '3から０ｋに変える
46900 case 3:
46910 No=-1:sp_on 14,1:sp_on 12,0
46920 pause 200:goto Buka_Input_Born_Day2:
46930 'Okから下のボタンを押しても何もしない
46940 case -1:
46950 pause 200:goto Buka_Input_Born_Day2:
46960 case 8:
46970 No=5:sp_on 8,1:sp_on 7,0
46980 pause 200:goto Buka_Input_Born_Day2:
46990 case 5:
47000 No=2:sp_on 9,1:sp_on 8,0
47010 pause 200:goto Buka_Input_Born_Day2:
47020 case 2:
47030 No=0:sp_on 13,1:sp_on 9,0
47040 pause 200:goto Buka_Input_Born_Day2:
47050 case 0:
47060 pause 200:goto Buka_Input_Born_Day2:
47070 case 7:
47080 No=4:sp_on 5,1:sp_on 4,0
47090 pause 200:goto Buka_Input_Born_Day2:
47100 case 4:
47110 No=1:sp_on 6,1:sp_on 5,0
47120 pause 200:goto Buka_Input_Born_Day2:
47130 case 1:
47140 pause 200:goto Buka_Input_Born_Day2:
47150 end select
47160 endif
47170 '左へボタン 十字キー　左　or 　カーソル左
47180 if ((y2 = -1) or (key$ = chr$(29))) then
47190 select case No
47200 'Ok ボタン  Okから　左　０に行く
47210 case -1:
47220 No=0:sp_on 13,1:sp_on 14,0
47230 pause 200:goto Buka_Input_Born_Day2:
47240 '0 ボタン  左　何もしない
47250 case 0:
47260 pause 200:goto Buka_Input_Born_Day2:
47270 case 3:
47280 No=2:sp_on 9,1:sp_on 12,0:
47290 pause 200:goto Buka_Input_Born_Day2:
47300 case 2:
47310 No=1:sp_on 6,1:sp_on 9,0:
47320 pause 200:goto Buka_Input_Born_Day2:
47330 case 1:
47340 pause 200:goto Buka_Input_Born_Day2:
47350 case 6:
47360 No=5:sp_on 8,1:sp_on 11,0
47370 pause 200:goto Buka_Input_Born_Day2:
47380 case 5:
47390 No=4:sp_on 5,1:sp_on 8,0
47400 pause 200:goto Buka_Input_Born_Day2:
47410 case 4:
47420 pause 200:goto Buka_Input_Born_Day2:
47430 case 9:
47440 No=8:sp_on 7,1:sp_on 10,0
47450 pause 200:goto Buka_Input_Born_Day2:
47460 case 8:
47470 No=7:sp_on 4,1:sp_on 7,0
47480 pause 200:goto Buka_Input_Born_Day2:
47490 case 7:
47500 pause 200:goto Buka_Input_Born_Day2:
47510 end select
47520 endif
47530 '右  十字キー　右　or カーソル　右
47540 if ((y2 = 1) or (key$ = chr$(28))) then
47550 select case No
47560 '0ボタンからokボタン右に移動
47570 case 0:
47580 No=-1:sp_on 14,1:sp_on 13,0
47590 pause 200:goto Buka_Input_Born_Day2:
47600 '0ボタンからokボタン 右に移動　ここまで
47610 'OKボタンで右を押して何もしない
47620 case -1:
47630 pause 200:goto Buka_Input_Born_Day2:
47640 case 1:
47650 No=2:sp_on 9,1:sp_on 6,0
47660 pause 200:goto Buka_Input_Born_Day2:
47670 case 2:
47680 No=3:sp_on 12,1:sp_on 9,0
47690 pause 200:goto Buka_Input_Born_Day2:
47700 case 3:
47710 pause 200:goto Buka_Input_Born_Day2:
47720 case 4:
47730 No=5:sp_on 8,1:sp_on 5,0
47740 pause 200:goto Buka_Input_Born_Day2:
47750 case 5:
47760 No=6:sp_on 11,1:sp_on 8,0
47770 pause 200:goto Buka_Input_Born_Day2:
47780 case 7:
47790 No=8:sp_on 7,1:sp_on 4,0
47800 pause 200:goto Buka_Input_Born_Day2:
47810 case 8:
47820 No=9:sp_on 10,1:sp_on 7,0
47830 pause 200:goto Buka_Input_Born_Day2:
47840 case 9:
47850 pause 200:goto Buka_Input_Born_Day2:
47860 case 6:
47870 pause 200:goto Buka_Input_Born_Day2:
47880 end select
47890 'Okから右ボタンを押して何もしない ここまで
47900 endif
47910 '十字キー　ここまで
47920 '右の丸ボタンを押したとき
47930 if ((bg = 2) or (key$ = chr$(13))) then
47940 'count :決定ボタンを押した回数
47950 select case (count)
47960 '1桁目入力
47970 case 0:
47980 count = 1:
47990 if (No = -1) then
48000 '1桁目　OKでは何もしない
48010 'goto check:
48020 No=0
48030 else
48040 'ok以外のボタンを押したとき
48050 buf_buka_day = No:buf_buka_Day$ = str$(No)
48060 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
48070 buf_buka_Day$ = str$(No) + "*"
48080 endif
48090 a=No
48100 buf_Buka_Born_Day(2) = buf_buka_day
48110 locate 1,3
48120 print"                                      "
48130 color RGB(255,255,255)
48140 locate 1,3
48150 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48160 endif
48170 check2:
48180 if (No >= 1 and No <= 9) then
48190 sp_on 14,0
48200 goto Buka_Input_Born_Day2:
48210 else
48220 sp_on 14,0
48230 goto Result_Business_Aisyou:
48240 end
48250 endif
48260 case 1:
48270 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
48280 count = 2:
48290 'locate 2,3
48300 'color RGB(255,255,255)
48310 'print "生まれた日(1日~31日):";buf_Day$
48320 'Okボタンを押したときの処理
48330 '入力値　10未満のとき
48340 'c = buf_day
48350 if (No = -1) then
48360 'c=buf_day
48370 ' buf_day = c
48380 'buf_Day$ = str$(buf_day)
48390 '10以下のとき
48400 No=0
48410 if (buf_day < 10) then
48420 sp_on 14,0
48430 goto Result_Business_Aisyou:
48440 end
48450 endif
48460 else
48470 sp_on 14,0
48480 'c=No
48490 buf_buka_day = a * 10 + No
48500 buf_buka_Day$ = str$(buf_buka_day)
48510 buf_Buka_Born_Day(2) = buf_buka_day
48520 locate 0,3
48530 color Rgb(255,255,255)
48540 print "                                       "
48550 locate 1,3
48560 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48570 goto Buka_Input_Born_Day2:
48580 endif
48590 '生まれた日　2桁目の数字　or 1桁の数字 + ok
48600 case 2:
48610 count=0
48620 'c=val(buf_Day$)
48630 'buf_day=c*10+No
48640 'buf_Day$=str$(buf_day)
48650 'day=buf_day
48660 'locate 2,3
48670 'print "生まれた日(1日〜31日):";buf_Day$
48680 'No=-1:ok ボタンを押したとき
48690 if (No = -1) then No=0
48700 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
48710 sp_on 14,0
48720 goto Result_Business_Aisyou:
48730 else
48740 goto Buka_Input_Born_Day2:
48750 endif
48760 'Okボタン以外を押したとき
48770 else
48780 c=val(buf_buka_Day$)
48790 buf_buka_day = c * 10 + No
48800 buf_buka_Day$ = str$(buf_buka_day)
48810 locate 1,3
48820 print "                "
48830 locate 1,3
48840 print "生まれた日(1日~31日):"+buf_buka_Day$
48850 goto Buka_Input_Born_Day2:
48860 'endif
48870 case 3:
48880 count=4
48890 'c=val(buf_day$)
48900 'buf_day=c*10+No
48910 'buf_day$=str$(buf_day)
48920 'locate 2,3
48930 'print "生まれた日を入れてください:";buf_day$
48940 'year=val(buf_year$)
48950 if (No = -1) then
48960 'goto Buka_Input_Born_Day:
48970 sp_on 14,0:
48980 goto complate_jyoushi:
48990 else
49000 goto Buka_Input_Born_Month2:
49010 endif
49020 'case 4:
49030 'bufyear=buf_year
49040 'if (No=-1) then
49050 'buf_day = val(buf_day$)
49060 'bufday = buf_day
49070 'sp_on 14,0
49080 goto complate_jyoushi:
49090 'else
49100 'goto Buka_Input_Born_Day2:
49110 'endif
49120 end select
49130 endif
49140 if (bg2=2) then
49150 select case count2
49160 case 0:
49170 if (No=-1) then
49180 'buf_day=0:buf_Day$="**"
49190 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
49200 count=0
49210 buf_buka_day=0:buf_buka_Day$="**"
49220 goto rewrite_day3:
49230 else
49240 buf_buka_day=0:buf_buka_Day$="**"
49250 ui_msg"値が範囲外です"
49260 endif
49270 goto rewrite_day3:
49280 else
49290 goto rewrite_day3:
49300 endif
49310 rewrite_day3:
49320 locate 2,3
49330 color rgb(255,255,255)
49340 print "                                      "
49350 locate 1,3
49360 print "生まれた日(1日~31日):"+buf_buka_Day$
49370 goto Buka_Input_Born_Day2:
49380 end select
49390 endif
49400 '3.部下の生まれた日'
49410 '部下'
49420 '--------------------------------------------'
49430 'ビジネの相性　結果表示
49440 Result_Business_Aisyou:
49450 cls 3:init "kb:4"
49460 a=0:b=0:c=0:d=0:e=0:f=0
49470 bg=0:key$=""
49480 gload Gazo$ + "Screen1.png",0,0,0
49490 gload Gazo$ + "downscreen.png",0,0,800
49500 sp_on 14,0
49510 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
49520 buf_Buka = Kabara_Num(d,e,f)
49530 a_2 = buf_Buka
49540 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
49550 locate 0,1
49560 color rgb(255,0,0)
49570 print "●.相性診断結果１"
49580 locate 0,4:
49590 color rgb(255,255,255)
49600 print "1.上司の名前:";buffer_name$(0)
49610 locate 0,6
49620 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
49630 locate 0,8
49640 print "2.部下の名前:";buffer_name$(1)
49650 locate 0,10
49660 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
49670 locate 0,12
49680 print "3.上司と部下の相性:";Result_Aisyou$
49690 locate 1,15
49700 color rgb(0,0,0)
49710 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
49720 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
49730 bg = strig(1)
49740 key$ = inkey$
49750 bg2 = strig(0)
49760 pause 5
49770 wend
49780 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
49790 if (bg2 = 2) then
49800 cls 3:goto Business_Aishou_Input_1_parson:
49810 endif
49820 'ビジネスの相性占い　結果2　説明
49830 Result_Business_Aisyou2:
49840 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
49850 gload Gazo$ + "Screen1.png",0,0,0
49860 locate 0,1
49870 color rgb(255,0,0)
49880 print "●.相性の説明"
49890 color rgb(255,255,255)
49900 locate 0,4
49910 print "相性:";Result_Aisyou$
49920 locate 0,6:
49930 print "相性の説明:";buf$
49940 locate 0,15
49950 color rgb(0,0,0)
49960 print "右の丸ボタン:トップ,左のボタン:前の画面"
49970 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
49980 bg = strig(1)
49990 bg2 = strig(0)
50000 key$ = inkey$
50010 pause 5
50020 wend
50030 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50040 if ((bg2 = 2)) then goto Result_Business_Aisyou:
50050 '自作関数 ここから
50060 func read_explain$(ba$)
50070 d$=""
50080 buf_String$=""
50090 if ba$="A" then
50100 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
50110 line input #1,a$
50120 a1$=mid$(a$,1,12)
50130 a2$=mid$(a$,13,17)
50140 a3$=mid$(a$,30,17)
50150 a4$=mid$(a$,47,18)
50160 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
50170 buf_String$ = a5$
50180 close #1
50190 endif
50200 if ba$="B"  then
50210 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
50220 line input #1,b$
50230 b1$=mid$(b$,1,15)
50240 b2$=mid$(b$,16,21)
50250 'b3$=mid$(b$,33,3)
50260 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
50270 buf_String$ = b4$
50280 close #1
50290 endif
50300 if ba$="C"  then
50310 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
50320 line input #1,c$
50330 c1$ = Mid$(c$,1,15)
50340 c2$ = Mid$(c$,16,33)
50350 c3$ = c1$ + chr$(13) + c2$
50360 buf_String$ = c3$
50370 close #1
50380 endif
50390 if ba$="D" then
50400 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
50410 line input #1,d$
50420 d1$=mid$(d$,1,15)
50430 d2$=mid$(d$,16,22)
50440 d3$=mid$(d$,38,7)
50450 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
50460 buf_String$ = d4$
50470 close #1
50480 endif
50490 if ba$="E"  then
50500 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
50510 line input #1,e$
50520 e1$=Mid$(e$,1,16)
50530 e2$=Mid$(e$,17,16)
50540 e3$=Mid$(e$,33,12)
50550 e4$=Mid$(e$,45,17)
50560 e5$=Mid$(e$,62,17)
50570 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
50580 buf_String$ = e6$
50590 close #1
50600 endif
50610 if ba$="F" then
50620 '改行を追加して表示を調整
50630 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
50640 line input #1,f$
50650 f1$=Mid$(f$,1,15)
50660 f2$=Mid$(f$,16,12)
50670 buf_String$ = f1$+chr$(13)+f2$
50680 close #1
50690 endif
50700 if ba$="G" then
50710 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
50720 line input #1,g$
50730 g1$ = mid$(g$,1,16)
50740 g2$ = mid$(g$,17,18)
50750 g3$ = mid$(g$,36,21)
50760 g4$ = mid$(g$,56,6)
50770 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
50780 buf_String$ = g5$
50790 close #1
50800 endif
50810 if ba$="H" then
50820 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
50830 line input #1,h$
50840 h1$=Mid$(h$,1,17)
50850 h2$=Mid$(h$,18,21)
50860 h3$=Mid$(h$,39,20)
50870 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
50880 buf_String$ = h$
50890 close #1
50900 endif
50910 if ba$ = "I" then
50920 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
50930 line input #1,i$
50940 i1$=Mid$(i$,1,10)
50950 i2$=Mid$(i$,11,13)
50960 i3$=Mid$(i$,25,16)
50970 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
50980 buf_String$ = i$
50990 close #1
51000 endif
51010 buffer$ = buf_String$
51020 endfunc buffer$
51030 'カバラ数（数秘番号を求める）
51040 func Kabara_Num(buffer_Year,month,day)
51050 '=============================
51060 'a1:4桁のうちの1桁目を求める
51070 '例 a1:1234の4が1桁目
51080 'a2:4桁のうちの2桁目を求める
51090 '例:a2:1234の3が2桁目
51100 'a3:4桁のうちの3桁目を求める
51110 '例 a3:1234の2が3桁目
51120 'a4:4桁のうちの4桁目を求める
51130 '例 a4:1234の1が4桁目
51140 '==============================
51150 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
51160 Year = buffer_Year
51170 '処理1　整数部分を取り出す。
51180 a4 = fix(Year / 1000)
51190 a3 = fix(Year / 100) - (a4 * 10)
51200 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
51210 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
51220 '処理　２　取り出した整数部分を足す。
51230 a_ = a1 + a2 + a3 + a4 +month + day
51240 'a1=0:a2=0:a3=0:a4=0
51250 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
51260 buffer = a_
51270 'else
51280 goto recomp2:
51290 'if (a_ = 10) then
51300 '  buffer = 1
51310 endif
51320 recomp2:
51330 a5=0:a6=0
51340 a5 = fix(a_ / 10)
51350 a6 = (a_) - (a5 * 10)
51360 a_ = a5 + a6
51370 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
51380 '結果に行く
51390 goto Res2:
51400 '  if ((a_>11) and (a_<99)) then
51410 else
51420 '再度計算
51430 goto recomp2:
51440 endif
51450 '     a1 = fix(a_ / 10)
51460 '     a2 = a_ - (a1 * 10)
51470 '     a_ = a1 + a2
51480 '     buffer = a_
51490 'endif
51500 'else
51510 '    bffer = a_
51520 'endif
51530 'endif
51540 'else
51550 'talk "プログラムを終了します。"
51560 'end
51570 'endif
51580 'kabara = 10
51590 Res2:
51600 kabara = a_
51610 endfunc kabara
51620 func Kabara_Aisyou$(buff1,buff2)
51630 a=0:b=0
51640 '範囲　1~9
51650 if ((buff1 > 0 and buff1 < 10)) then
51660 a = buff1
51670 else
51680 Select case buff1
51690 case 11:
51700 buff1=9:a=buff1
51710 case 22:
51720 buff1=10:a=buff1
51730 end select
51740 endif
51750 '範囲　１~９
51760 if ((buff2 > 0 and buff2 < 10)) then
51770 b = buff2
51780 else
51790 select case buff2
51800 case 11:
51810 buff2=9:b=buff2
51820 case 12:
51830 buff2=10:b=buff2
51840 end select
51850 endif
51860 Aisyou$ = Buffer_Business_Aisyou$(a,b)
51870 endfunc Aisyou$
51880 '=============================
51890 '自作関数 ここまで
51900 '1.数秘術　トップ画面
51910 '
51920 'Data_eraseを一番最後に持ってくる
51930 '=============================
51940 Data_erase:
51950 'メモリー削除
51960 erase buf_name1$
51970 erase buf_name2$
51980 erase buffer
51990 erase buf_chart$
52000 erase Buffer_Business_Aisyou$
52010 erase buffer_name$
52020 '上司の誕生日
52030 erase buf_Jyoushi_Born_Day
52040 '部下の誕生日
52050 erase buf_Buka_Born_Day
52060 erase buf_year
52070 erase buf_month
52080 erase buf_day
52090 'フォーカスライン
52100 erase Forcus1_buffer$
52110 erase Forcus2_buffer$
52120 erase Forcus3_buffer$
52130 buffer$ = ""
52140 buf$ = ""
52150 buf_year$ = ""
52160 buf_Jyoushi_Kabara_Num = 0
52170 buf_Buka_Kabara_Num = 0
52180 count = 0
52190 buf_Month$ = ""
52200 buf_Day$ = ""
52210 b=0
52220 c=0
52230 return
