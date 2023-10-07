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
380 Version$ = "Ver:1.1.8_20231008"
390 'Gazo file Folder
400 Gazo$ = "./data/Picture/"
410 'Voice files 2023
420 Voice$ = "./data/Voice/Voice/"
430 'BirtheyeChart Data:20230626
440 Birth_eye_chart$ = "./data/chart_data/"
450 'Data File
460 Data$ = "./data/data/"
470 'Business Aisyou 結果説明保存フォルダ
480 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
490 '変数定義 パート
500 b=0:c=0
510 dim buf_name1$(10),buf_name2$(10)
520 dim buffer(9),buf_chart$(26,2)
530 'ビジネスの相性　データー
540 dim Buffer_Business_Aisyou$(12,12)
550 '生れた年代
560 dim buf_year(4):buf_year$ = ""
570 dim buf_month(2)
580 dim buf_day(2)
590 'フォーカスライン　配列
600 dim Forcus1_buffer$(3)
610 dim Forcus2_buffer$(3)
620 dim Forcus3_buffer$(2)
630 '生れた月
640 buf_Month$ = ""
650 '生れた日
660 buf_Day$ = ""
670 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
680 dim buffer_name$(3)
690 '1-1.上司の誕生日(数値データー)
700 dim buf_Jyoushi_Born_Day(3)
710 '1-2.上司の数秘ナンバー(数値データー)
720 buf_Jyoushi_Kabara_Num = 0
730 '2-1.部下の誕生日(数値データー)
740 dim buf_Buka_Born_Day(3)
750 '2-2.部下の数秘ナンバー(数秘データー)
760 buf_Buka_Kabara_Num = 0
770 count=0
780 '部下の数秘ナンバー
790 'File 読み込み
800 '1.ビジネスの相性占い
810 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
820 for i=0 to 11
830 for j=0 to 11
840 input #1,a$
850 Buffer_Business_Aisyou$(j,i) = a$
860 next j
870 next i
880 close #1
890 '2.Birth Eye chart$
900 '2.バーズアイグリッドを読み込む
910 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
920 for j=0 to 25
930 for i=0 to 1
940 input #1,a$
950 buf_chart$(j,i) = a$
960 next i
970 next j
980 close #1
990 'File 読み込み　ここまで
1000 'Main画面
1010 screen 1,1,1,1
1020 Main_Screen:
1030 cls 3:
1040 No=0
1050 gload Gazo$ + "Selection.png",1,5,200
1060 gload Gazo$ + "Selection.png",1,5,300
1070 gload Gazo$ + "Selection.png",1,5,400
1080 gload Gazo$ + "Selection.png",1,5,500
1090 '4
1100 gload Gazo$ + "Selection.png",1,35,300
1110 '5
1120 gload Gazo$ + "Selection.png",1,35,400
1130 '6
1140 gload Gazo$ + "Selection.png",1,35,500
1150 '7
1160 gload Gazo$ + "Selection.png",1,70,300
1170 '8
1180 gload Gazo$ + "Selection.png",1,70,400
1190 '9
1200 gload Gazo$ + "Selection.png",1,70,500
1210 '10
1220 gload Gazo$ + "Selection.png",1,110,300
1230 '11
1240 gload Gazo$ + "Selection.png",1,110,400
1250 '12
1260 gload Gazo$ + "Selection.png",1,110,500
1270 '13:0
1280 gload Gazo$ + "Selection.png",1,150,400
1290 gload Gazo$ + "Selection.png",1,200,400
1300 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1310 gload Gazo$ + "downscreen.png",0,0,800
1320 sp_def 0,(5,300),32,32
1330 sp_def 1,(5,400),32,32
1340 sp_def 2,(5,500),32,32
1350 sp_def 3,(5,600),32,32
1360 '1
1370 sp_def 4,(35,300),32,32
1380 '2
1390 sp_def 5,(35,400),32,32
1400 '3
1410 sp_def 6,(35,500),32,32
1420 '4
1430 sp_def 7,(70,300),32,32
1440 '5
1450 sp_def 8,(70,400),32,32
1460 '6
1470 sp_def 9,(70,500),32,32
1480 '7
1490 sp_def 10,(110,300),32,32
1500 '8
1510 sp_def 11,(110,400),32,32
1520 '9
1530 sp_def 12,(110,400),32,32
1540 sp_def 13,(150,400),32,32
1550 sp_def 14,(200,400),32,32
1560 'Sprite OFF
1570 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1580 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1590 sp_put 0,(5,300),0,0
1600 sp_put 1,(5,400),1,0
1610 sp_put 2,(5,500),2,0
1620 sp_put 3,(5,600),3,0
1630 '1
1640 sp_put 4,(130,300),4,0
1650 '2
1660 sp_put 5,(130,400),5,0
1670 '3
1680 sp_put 6,(130,500),6,0
1690 '4
1700 sp_put 7,(340,300),7,0
1710 '5
1720 sp_put 8,(340,400),8,0
1730 '6
1740 sp_put 9,(340,500),9,0
1750 '7
1760 sp_put 10,(540,300),10,0
1770 '8
1780 sp_put 11,(540,400),11,0
1790 '9
1800 sp_put 12,(540,500),12,0
1810 '
1820 sp_put 13,(340,600),13,0
1830 sp_put 14,(540,600),14,0
1840 Main_Top:
1850 'Main Message 2023.06.07
1860 '再生を止める
1870 play ""
1880 init "kb:4"
1890 'font 32:
1900 font 48
1910 print chr$(13) + chr$(13) + chr$(13)
1920 color rgb(217,255,212)
1930 print "番号を選んでください" + chr$(13)
1940 '0
1950 print " :1.数秘術占い" + chr$(13)
1960 '1
1970 print " :2.設 定" + chr$(13)
1980 '2
1990 print " :3.ヘルプ" + chr$(13)
2000 '3
2010 print " :4.(プログラムを)終了する" + chr$(13)
2020 COLOR rgb(0,0,0):No=0
2030 locate 1,15
2040 print "                                       "
2050 locate 1,15:print "1.数秘術占いを選択"
2060 play Voice$ + "Voice_Main_Message_20230607.mp3"
2070 Main_Screen_Select:
2080 y = 0:key$ = "":bg = 0:bg2=0
2090 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2100 y = stick(1)
2110 '"May (2023)"
2120 key$ = inkey$
2130 bg = strig(1)
2140 bg2 = strig(0)
2150 pause 2
2160 wend
2170 '1.
2180 'ジョイパッドのソース ソート　ここから
2190 'カーソル　下 or 十字キー下
2200 if ((y = 1) or (key$ = chr$(31))) then
2210 select case No
2220 case 0:
2230 '1
2240 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2250 case 1:
2260 '2
2270 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2280 case 2:
2290 '3
2300 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2310 case 3:
2320 '0
2330 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2340 end select
2350 endif
2360 '2.
2370 'カーソル　上　or 十字キー  上
2380 if ((y = -1) or (key$ = chr$(30))) then
2390 select case No
2400 case 0:
2410 '3
2420 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2430 case 1:
2440 '0
2450 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2460 case 2:
2470 '1
2480 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2490 case 3:
2500 '2
2510 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2520 end select
2530 endif
2540 'ジョイパッド　ソース 部分　ここまで
2550 'ジョイパッド右　　or Enter key 決定
2560 if ((bg = 2) OR (key$ = chr$(13))) then
2570 select case No
2580 case 0:
2590 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2600 case 1:
2610 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2620 case 2:
2630 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2640 case 3:
2650 play "":pause 200
2660 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2670 end select
2680 endif
2690 if (bg2 = 2) then
2700 play "":pause 200
2710 play Voice$ + "Voice_Main_Message_20230607.mp3"
2720 goto Main_Screen_Select:
2730 endif
2740 'Version
2750 Version:
2760 cls 3:PLAY ""
2770 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2780 gload Gazo$ + "downscreen.png",0,0,800
2790 init"kb:4":font 32
2800 'talk"バージョン情報です"
2810 'Message :Version
2820 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2830 locate 0,5
2840 color rgb(0,0,0)
2850 print "・Title:数秘術占い";chr$(13)
2860 print "・" + Version$ + chr$(13)
2870 print "・Author:licksjp"+chr$(13)
2880 print "・E-mail:licksjp@gmail.com" + chr$(13)
2890 locate 0,18
2900 print "(C)licksjp All rights " + chr$(13)
2910 locate 13,19
2920 print "reserved since 2009"+chr$(13)
2930 locate 0,23
2940 color rgb(255,255,255)
2950 print "ジョイパッドの右を押してください"
2960 Versionn_Selection:
2970 bg = 0:key$ = "":bg2 = 0
2980 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2990 bg = strig(1)
3000 key$ = inkey$
3010 bg2 = strig(0)
3020 pause 2
3030 wend
3040 if ((bg = 2) or (key$ = chr$(13))) then
3050 pause 200:cls 4:goto Main_Screen:
3060 endif
3070 if (bg2=2) then
3080 play "":pause 200
3090 play Voice$ + "Voice_Version_Message_20230607.mp3"
3100 goto Versionn_Selection:
3110 endif
3120 '1.数秘ナンバーを求める
3130 '誕生日入力(生れた年代)
3140 Input_Seireki:
3150 cls 3:play "":count=0:count2=0
3160 'No = -1:Okのとき
3170 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3180 for i=0 to 3
3190 buf_year(i)=0
3200 next i
3210 gload Gazo$ + "Screen1.png",0,0,0
3220 gload Gazo$ + "downscreen.png",0,0,800
3230 'Init"kb:2"
3240 '音声ファイル再生 2023.06.07
3250 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3260 font 48
3270 locate 0,1
3280 '文字色：黒　 color rgb(0,0,0)
3290 color rgb(255,255,255)
3300 print "生まれた年代を入れて下さい" + chr$(13)
3310 color rgb(255,255,255)
3320 locate 2,3
3330 print "生まれた年代(西暦4桁):" + buf_year$
3340 '=============================
3350 'テンキーの色(1~９)　白 ,決定ボタン　青
3360 '=============================
3370 color rgb(255,255,255)
3380 'locate 4,6:print ":7"
3390 'locate 9,6:print ":8"
3400 'locate 12,6:print ":9"
3410 locate 4,6
3420 print ":7  :8  :9" + chr$(13)
3430 color rgb(255,255,255)
3440 locate 4,8
3450 print ":4  :5  :6" + chr$(13)
3460 color rgb(255,255,255)
3470 locate 4,10
3480 print ":1  :2  :3" + chr$(13)
3490 locate 4,12
3500 print "    :0"
3510 locate 12,12
3520 color rgb(255,0,0)
3530 print ":Ok"
3540 sp_on 4,0: sp_on 5,0:sp_on 6,0
3550 sp_on 7,0:sp_on 8,0:sp_on 9,0
3560 sp_on 10,0:sp_on 11,0:sp_on 12,0
3570 sp_on 13,0:sp_on 14,1
3580 Input_Seireki2:
3590 key$="":bg=0:y=0:y2=0:bg2=0:
3600 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3610 key$ = inkey$
3620 bg = strig(1)
3630 y = stick(1)
3640 y2 = stick(0)
3650 bg2 = strig(0)
3660 pause 15
3670 wend
3680 '十字キー　ここから
3690 '上の矢印　または、十字キー上
3700 if ((y = -1) or (key$ = chr$(30))) then
3710 select case No
3720 'No=-1:okのとき:初期の状態
3730 '0kボタンから３に移動
3740 '上に行く 処理
3750 case -1:
3760 No=3:sp_on 12,1:sp_on 14,0
3770 pause 200:goto Input_Seireki2:
3780 '選択肢:3
3790 '3ボタンから 6に移動
3800 case 3:
3810 No=6:sp_on 12,0:sp_on 11,1
3820 pause 200:goto Input_Seireki2:
3830 '6ボタンから ９に移動
3840 case 6:
3850 No=9:sp_on 10,1:sp_on 11,0
3860 pause 200:goto Input_Seireki2:
3870 '6ボタンから ９に移動　ここまで
3880 '9で上を押して何もしない
3890 case 9:
3900 '何もしない
3910 No=9
3920 pause 200:goto Input_Seireki2:
3930 '9で上を押しても何もしない　ここまで
3940 '上　 0ボタンから2ボタン
3950 'sp_on 6,1:1
3960 'sp_on 8,1:5
3970 'sp_on 7,1:7
3980 case 0:
3990 No=2:sp_on 13,0:sp_on 9,1:
4000 pause 200:goto Input_Seireki2:
4010 '上  0ボタンから2ボタン　ここまで
4020 '2から５になる 上
4030 case 2:
4040 No=5:sp_on 8,1:sp_on 9,0:
4050 pause 200:goto Input_Seireki2:
4060 case 5:
4070 No=8:sp_on 7,1:sp_on 8,0
4080 pause 200:goto Input_Seireki2:
4090 case 8:
4100 pause 200:goto Input_Seireki2:
4110 case 1:
4120 No=4:sp_on 5,1:sp_on 6,0
4130 pause 200:goto Input_Seireki2:
4140 case 4:
4150 No=7:sp_on 4,1:sp_on 5,0
4160 pause 200:goto Input_Seireki2:
4170 case 7:
4180 pause 200:goto Input_Seireki2:
4190 end select
4200 endif
4210 '左３　ここまで
4220 '下の矢印
4230 '中央 2
4240 if ((y=1) or (key$ = chr$(31))) then
4250 select case No
4260 '9から６に下げる
4270 case 9:
4280 No=6:sp_on 11,1:sp_on 10,0
4290 pause 200:goto Input_Seireki2:
4300 '6から３に下げる
4310 case 6:
4320 No=3:sp_on 12,1:sp_on 11,0
4330 pause 200:goto Input_Seireki2:
4340 '3から０ｋに変える
4350 case 3:
4360 No=-1:sp_on 14,1:sp_on 12,0
4370 pause 200:goto Input_Seireki2:
4380 'Okから下のボタンを押しても何もしない
4390 case -1:
4400 pause 200:goto Input_Seireki2:
4410 case 8:
4420 No=5:sp_on 8,1:sp_on 7,0
4430 pause 200:goto Input_Seireki2:
4440 case 5:
4450 No=2:sp_on 9,1:sp_on 8,0
4460 pause 200:goto Input_Seireki2:
4470 case 2:
4480 No=0:sp_on 13,1:sp_on 9,0
4490 pause 200:goto Input_Seireki2:
4500 case 0:
4510 pause 200:goto Input_Seireki2:
4520 case 7:
4530 No=4:sp_on 5,1:sp_on 4,0
4540 pause 200:goto Input_Seireki2:
4550 case 4:
4560 No=1:sp_on 6,1:sp_on 5,0
4570 pause 200:goto Input_Seireki2:
4580 case 1:
4590 pause 200:goto Input_Seireki2:
4600 end select
4610 endif
4620 '左へボタン 十字キー　左　or 　カーソル左
4630 if ((y2 = -1) or (key$ = chr$(29))) then
4640 select case No
4650 'Ok ボタン  Okから　左　０に行く
4660 case -1:
4670 No=0:sp_on 13,1:sp_on 14,0
4680 pause 200:goto Input_Seireki2:
4690 '0 ボタン  左　何もしない
4700 case 0:
4710 pause 200:goto Input_Seireki2:
4720 case 3:
4730 No=2:sp_on 9,1:sp_on 12,0:
4740 pause 200:goto Input_Seireki2:
4750 case 2:
4760 No=1:sp_on 6,1:sp_on 9,0:
4770 pause 200:goto Input_Seireki2:
4780 case 1:
4790 pause 200:goto Input_Seireki2:
4800 case 6:
4810 No=5:sp_on 8,1:sp_on 11,0
4820 pause 200:goto Input_Seireki2:
4830 case 5:
4840 No=4:sp_on 5,1:sp_on 8,0
4850 pause 200:goto Input_Seireki2:
4860 case 4:
4870 pause 200:goto Input_Seireki2:
4880 case 9:
4890 No=8:sp_on 7,1:sp_on 10,0
4900 pause 200:goto Input_Seireki2:
4910 case 8:
4920 No=7:sp_on 4,1:sp_on 7,0
4930 pause 200:goto Input_Seireki2:
4940 case 7:
4950 pause 200:goto Input_Seireki2:
4960 end select
4970 endif
4980 '右  十字キー　右　or カーソル　右
4990 if ((y2 = 1) or (key$ = chr$(28))) then
5000 select case No
5010 '0ボタンからokボタン右に移動
5020 case 0:
5030 No=-1:sp_on 14,1:sp_on 13,0
5040 pause 200:goto Input_Seireki2:
5050 '0ボタンからokボタン 右に移動　ここまで
5060 'OKボタンで右を押して何もしない
5070 case -1:
5080 pause 200:goto Input_Seireki2:
5090 case 1:
5100 No=2:sp_on 9,1:sp_on 6,0
5110 pause 200:goto Input_Seireki2:
5120 case 2:
5130 No=3:sp_on 12,1:sp_on 9,0
5140 pause 200:goto Input_Seireki2:
5150 case 3:
5160 pause 200:goto Input_Seireki2:
5170 case 4:
5180 No=5:sp_on 8,1:sp_on 5,0
5190 pause 200:goto Input_Seireki2:
5200 case 5:
5210 No=6:sp_on 11,1:sp_on 8,0
5220 pause 200:goto Input_Seireki2:
5230 case 7:
5240 No=8:sp_on 7,1:sp_on 4,0
5250 pause 200:goto Input_Seireki2:
5260 case 8:
5270 No=9:sp_on 10,1:sp_on 7,0
5280 pause 200:goto Input_Seireki2:
5290 case 9:
5300 pause 200:goto Input_Seireki2:
5310 case 6:
5320 pause 200:goto Input_Seireki2:
5330 end select
5340 'Okから右ボタンを押して何もしない ここまで
5350 endif
5360 '十字キー　ここまで
5370 if ((bg=2) or (key$=chr$(13))) then
5380 select case count
5390 case 0:
5400 count=1
5410 if (No=-1) then
5420 count=0
5430 'Okボタンを押したとき
5440 goto Input_Seireki2:
5450 else
5460 '===================================
5470 'Okボタン以外が押されたとき  1桁目の入力
5480 '===================================
5490 count2=1
5500 if (No >= 1 and No <= 2) then
5510 buf_year$="":buf_year$ = str$(No)
5520 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5530 n1 = len("生まれた年代(西暦4桁): ")
5540 locate 2,3
5550 color rgb(255,255,255)
5560 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5570 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5580 'print "生まれた年代(西暦4桁):";buf_year2$
5590 print buf_Born_Year_line$
5600 goto Input_Seireki2:
5610 else
5620 count=0
5630 ui_msg"数字が範囲外になります。"
5640 buf_year$="":buf_year=0
5650 goto Input_Seireki2:
5660 endif
5670 endif
5680 case 1:
5690 count = 2
5700 if (No = -1) then
5710 count = 1
5720 goto Input_Seireki2:
5730 else
5740 count2 = 1
5750 b = val(buf_year$)
5760 buf_year = b * 10 + No
5770 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5780 locate 2,3
5790 color rgb(255,255,255)
5800 print "                                                                "
5810 locate 2,3
5820 print "生まれた年代(西暦4桁):";buf_year2$
5830 'if (No = -1) then
5840 'count=1
5850 goto Input_Seireki2:
5860 endif
5870 case 2:
5880 count=3
5890 if (No=-1) then
5900 count =2
5910 goto Input_Seireki2:
5920 else
5930 b = val(buf_year$)
5940 buf_year = b*10 + No
5950 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
5960 locate 2,3
5970 color rgb(255,255,255)
5980 print "                                        "
5990 locate 2,3
6000 print "生まれた年代(西暦4桁):";buf_year2$
6010 goto Input_Seireki2:
6020 endif
6030 case 3:
6040 count=4
6050 if (No = -1) then
6060 count=3
6070 goto Input_Seireki2:
6080 else
6090 b = val(buf_year$)
6100 buf_year=b*10+No
6110 buf_year$=str$(buf_year)
6120 locate 2,3
6130 color RGB(255,255,255)
6140 print "                                      "
6150 locate 2,3
6160 print "生まれた年代(西暦4桁):";buf_year$
6170 buf_year=val(buf_year$)
6180 'year=val(buf_year$)
6190 'if (No=-1) then
6200 'goto Input_Born_Month:
6210 'else
6220 goto Input_Seireki2:
6230 endif
6240 case 4:
6250 'bufyear=buf_year
6260 if (No=-1) then
6270 buf_year = val(buf_year$)
6280 bufyear = buf_year
6290 sp_on 14,0
6300 goto Input_Born_Month:
6310 else
6320 goto Input_Seireki2:
6330 endif
6340 end select
6350 endif
6360 '=========================
6370 'bg2　キャンセルボタン
6380 '=========================
6390 if (bg2 = 2) then
6400 select case count2
6410 case 0:
6420 'Okボタンを押したときの処理
6430 if (No = -1) then
6440 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6450 'count = 0
6460 locate 2,3
6470 color rgb(255,255,255)
6480 print "                                      "
6490 locate 2,3
6500 print "生まれた年代（西暦4桁):";buf_year$
6510 '=============================
6520 'case 0:前の画面に戻る 数秘術トップメニュー
6530 '=============================
6540 sp_on 14,0:goto Kabara_TopScreen:
6550 else
6560 'count=0
6570 '(buf_year=0) then
6580 buf_year = 0:buf_year$ = string$(4,"*")
6590 goto Input_Seireki2:
6600 'endif
6610 endif
6620 case 1:
6630 if (No = -1) then
6640 count2 = 0:count = 0
6650 buf$=right$(buf_year$,1)
6660 if (val(buf$) >= 1 and val(buf$) <= 9) then
6670 buf_year$ = "****":buf_year=0
6680 color rgb(255,255,255)
6690 locate 0,3:
6700 print "                                      "
6710 locate 2,3
6720 print "生まれた年代（西暦4桁):" + buf_year$
6730 goto Input_Seireki2:
6740 endif
6750 else
6760 endif
6770 end select
6780 endif
6790 end
6800 'Input"生れた年代(4桁,〜2025年):",year
6810 'if year > 2025 then goto Input_Seireki:
6820 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6830 '"4桁目"
6840 'bufyear4 = fix(year / 1000)
6850 '"3桁目"
6860 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6870 '"2桁目"
6880 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6890 '"1桁目"
6900 'bufyear1 = fix((year - ((bufyear4*
6910 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6920 '生れた月を入力
6930 Input_Born_Month:
6940 cls 3:play "":count=0:count2=0
6950 'No=-1:Okのとき
6960 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6970 for i=0 to 1
6980 buf_month(i)=0
6990 next i
7000 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7010 gload Gazo$ + "Screen1.png",0,0,0
7020 gload Gazo$ + "downscreen.png",0,0,800
7030 'Init"kb:2"
7040 '音声ファイル再生 2023.06.07
7050 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7060 font 48
7070 locate 0,1
7080 '文字色：黒　 color rgb(0,0,0)
7090 '文字色:白
7100 color rgb(255,255,255)
7110 print "生まれた月を入れて下さい" + chr$(13)
7120 '文字色:白
7130 color rgb(255,255,255)
7140 locate 2,3
7150 '文字色:白
7160 print "生まれた月(1月~12月):";buf_Month$
7170 color rgb(255,255,255)
7180 'locate 4,6:print ":7"
7190 'locate 9,6:print ":8"
7200 'locate 12,6:print ":9"
7210 locate 4,6
7220 '文字色:赤
7230 print ":7  :8  :9" + chr$(13)
7240 color rgb(255,255,255)
7250 locate 4,8
7260 print ":4  :5  :6" + chr$(13)
7270 color rgb(255,255,255)
7280 locate 4,10
7290 print ":1  :2  :3" + chr$(13)
7300 locate 4,12
7310 print "    :0"
7320 locate 12,12
7330 color rgb(255,0,0)
7340 print ":Ok"
7350 sp_on 4,0: sp_on 5,0:sp_on 6,0
7360 sp_on 7,0:sp_on 8,0:sp_on 9,0
7370 sp_on 10,0:sp_on 11,0:sp_on 12,0
7380 sp_on 13,0:sp_on 14,1
7390 Input_Born_Month2:
7400 key$="":bg=0:y=0:y2=0:bg2=0
7410 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7420 key$ = inkey$
7430 bg = strig(1)
7440 y = stick(1)
7450 y2 = stick(0)
7460 bg2 = strig(0)
7470 pause 5
7480 wend
7490 '十字キー　ここから
7500 '上の矢印　または、十字キー上
7510 if ((y = -1) or (key$ = chr$(30))) then
7520 select case No
7530 'No=-1:okのとき:初期の状態
7540 '0kボタンから３に移動
7550 '上に行く 処理
7560 case -1:
7570 No=3:sp_on 12,1:sp_on 14,0
7580 pause 200:goto Input_Born_Month2:
7590 '選択肢:3
7600 '3ボタンから 6に移動
7610 case 3:
7620 No=6:sp_on 12,0:sp_on 11,1
7630 pause 200:goto Input_Born_Month2:
7640 '6ボタンから ９に移動
7650 case 6:
7660 No=9:sp_on 10,1:sp_on 11,0
7670 pause 200:goto Input_Born_Month2:
7680 '6ボタンから ９に移動　ここまで
7690 '9で上を押して何もしない
7700 case 9:
7710 '何もしない
7720 No=9
7730 pause 200:goto Input_Born_Month2:
7740 '9で上を押しても何もしない　ここまで
7750 '上　 0ボタンから2ボタン
7760 'sp_on 6,1:1
7770 'sp_on 8,1:5
7780 'sp_on 7,1:7
7790 case 0:
7800 No=2:sp_on 13,0:sp_on 9,1:
7810 pause 200:goto Input_Born_Month2:
7820 '上  0ボタンから2ボタン　ここまで
7830 '2から５になる 上
7840 case 2:
7850 No=5:sp_on 8,1:sp_on 9,0:
7860 pause 200:goto Input_Born_Month2:
7870 case 5:
7880 No=8:sp_on 7,1:sp_on 8,0
7890 pause 200:goto Input_Born_Month2:
7900 case 8:
7910 pause 200:goto Input_Born_Month2:
7920 case 1:
7930 No=4:sp_on 5,1:sp_on 6,0
7940 pause 200:goto Input_Born_Month2:
7950 case 4:
7960 No=7:sp_on 4,1:sp_on 5,0
7970 pause 200:goto Input_Born_Month2:
7980 case 7:
7990 pause 200:goto Input_Born_Month2:
8000 end select
8010 endif
8020 '左３　ここまで
8030 '下の矢印
8040 '中央 2
8050 if ((y=1) or (key$ = chr$(31))) then
8060 select case No
8070 '9から６に下げる
8080 case 9:
8090 No=6:sp_on 11,1:sp_on 10,0
8100 pause 200:goto Input_Born_Month2:
8110 '6から３に下げる
8120 case 6:
8130 No=3:sp_on 12,1:sp_on 11,0
8140 pause 200:goto Input_Born_Month2:
8150 '3から０ｋに変える
8160 case 3:
8170 No=-1:sp_on 14,1:sp_on 12,0
8180 pause 200:goto Input_Born_Month2:
8190 'Okから下のボタンを押しても何もしない
8200 case -1:
8210 pause 200:goto Input_Born_Month2:
8220 case 8:
8230 No=5:sp_on 8,1:sp_on 7,0
8240 pause 200:goto Input_Born_Month2:
8250 case 5:
8260 No=2:sp_on 9,1:sp_on 8,0
8270 pause 200:goto Input_Born_Month2:
8280 case 2:
8290 No=0:sp_on 13,1:sp_on 9,0
8300 pause 200:goto Input_Born_Month2:
8310 case 0:
8320 pause 200:goto Input_Born_Month2:
8330 case 7:
8340 No=4:sp_on 5,1:sp_on 4,0
8350 pause 200:goto Input_Born_Month2:
8360 case 4:
8370 No=1:sp_on 6,1:sp_on 5,0
8380 pause 200:goto Input_Born_Month2:
8390 case 1:
8400 pause 200:goto Input_Born_Month2:
8410 end select
8420 endif
8430 '左へボタン 十字キー　左　or 　カーソル左
8440 if ((y2 = -1) or (key$ = chr$(29))) then
8450 select case No
8460 'Ok ボタン  Okから　左　０に行く
8470 case -1:
8480 No=0:sp_on 13,1:sp_on 14,0
8490 pause 200:goto Input_Born_Month2:
8500 '0 ボタン  左　何もしない
8510 case 0:
8520 pause 200:goto Input_Born_Month2:
8530 case 3:
8540 No=2:sp_on 9,1:sp_on 12,0:
8550 pause 200:goto Input_Born_Month2:
8560 case 2:
8570 No=1:sp_on 6,1:sp_on 9,0:
8580 pause 200:goto Input_Born_Month2:
8590 case 1:
8600 pause 200:goto Input_Born_Month2:
8610 case 6:
8620 No=5:sp_on 8,1:sp_on 11,0
8630 pause 200:goto Input_Born_Month2:
8640 case 5:
8650 No=4:sp_on 5,1:sp_on 8,0
8660 pause 200:goto Input_Born_Month2:
8670 case 4:
8680 pause 200:goto Input_Born_Month2:
8690 case 9:
8700 No=8:sp_on 7,1:sp_on 10,0
8710 pause 200:goto Input_Born_Month2:
8720 case 8:
8730 No=7:sp_on 4,1:sp_on 7,0
8740 pause 200:goto Input_Born_Month2:
8750 case 7:
8760 pause 200:goto Input_Born_Month2:
8770 end select
8780 endif
8790 '右  十字キー　右　or カーソル　右
8800 if ((y2 = 1) or (key$ = chr$(28))) then
8810 select case No
8820 '0ボタンからokボタン右に移動
8830 case 0:
8840 No=-1:sp_on 14,1:sp_on 13,0
8850 pause 200:goto Input_Born_Month2:
8860 '0ボタンからokボタン 右に移動　ここまで
8870 'OKボタンで右を押して何もしない
8880 case -1:
8890 pause 200:goto Input_Born_Month2:
8900 case 1:
8910 No=2:sp_on 9,1:sp_on 6,0
8920 pause 200:goto Input_Born_Month2:
8930 case 2:
8940 No=3:sp_on 12,1:sp_on 9,0
8950 pause 200:goto Input_Born_Month2:
8960 case 3:
8970 pause 200:goto Input_Born_Month2:
8980 case 4:
8990 No=5:sp_on 8,1:sp_on 5,0
9000 pause 200:goto Input_Born_Month2:
9010 case 5:
9020 No=6:sp_on 11,1:sp_on 8,0
9030 pause 200:goto Input_Born_Month2:
9040 case 7:
9050 No=8:sp_on 7,1:sp_on 4,0
9060 pause 200:goto Input_Born_Month2:
9070 case 8:
9080 No=9:sp_on 10,1:sp_on 7,0
9090 pause 200:goto Input_Born_Month2:
9100 case 9:
9110 pause 200:goto Input_Born_Month2:
9120 case 6:
9130 pause 200:goto Input_Born_Month2:
9140 end select
9150 'Okから右ボタンを押して何もしない ここまで
9160 endif
9170 '十字キー　ここまで
9180 '右の丸ボタン　決定キー
9190 if ((bg=2) or (key$=chr$(13))) then
9200 select case count
9210 case 0:
9220 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9230 if (buf_month = 1 or buf_month = 2) then
9240 locate 2,3
9250 color RGB(255,255,255)
9260 print "生まれた月(1月~12月):";buf_Month2$
9270 else
9280 locate 2,3
9290 color Rgb(255,255,255)
9300 print "生まれた月(1月~12月):";buf_Month$
9310 endif
9320 goto Input_Born_Month2:
9330 case 1:
9340 count = 2:c = No
9350 c = val(buf_Month$)
9360 if (No = -1) then
9370 'if No=1 or No=2 then
9380 'endif
9390 month = buf_month
9400 buf_month=val(buf_Month$)
9410 month=buf_month
9420 '生まれた日に飛ぶ
9430 goto Input_Born_Day:
9440 else
9450 buf_month = c*10 + No
9460 buf_Month$= str$(buf_month)
9470 locate 2,3
9480 color Rgb(255,255,255)
9490 print "生まれた月(1月~12月):";buf_Month$
9500 goto Input_Born_Month2:
9510 endif
9520 case 2:
9530 count=3:count2=1
9540 'c= val(buf_Month$)
9550 'buf_month = c*10 + No
9560 'buf_Month$ = str$(buf_month)
9570 'locate 2,3
9580 'print "生まれた月(1月～12月):";buf_Month$
9590 'goto Input_Born_Month2:
9600 'case 3:
9610 'count=4
9620 'b=val(buf_month$)
9630 'buf_month=c*10+No
9640 'buf_Month$=str$(buf_month)
9650 'locate 2,3
9660 'print "生まれた月(1月～12月):";buf_Month$
9670 'buf_month=val(buf_Month$)
9680 'year=val(buf_year$)
9690 if (No=-1) then
9700 goto Input_Born_Day:
9710 else
9720 'goto Input_Born_Month2:
9730 endif
9740 'case 4:
9750 'bufyear=buf_year
9760 'if (No=-1) then
9770 'buf_month = val(buf_Month$)
9780 'month = buf_month
9790 'sp_on 14,0
9800 'goto Input_Born_Day:
9810 'else
9820 'goto Input_Born_Month2:
9830 'endif
9840 end select
9850 endif
9860 '左の丸ボタン　キャンセル
9870 if (bg2=2) then
9880 select case count2
9890 case 0:
9900 if (No = -1) then
9910 buf_month=0:buf_Month$="**"
9920 count2=0:count=0
9930 locate 0,3:print "                                              "
9940 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9950 'if (buf_month > 1) then
9960 sp_on 14,0:goto Input_Born_Month2:
9970 'goto rewrite:
9980 else
9990 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10000 buf_month=0:buf_Month$="**"
10010 locate 2,3
10020 color rgb(255,255,255)
10030 print "                                       "
10040 goto rewrite:
10050 if (No>2) then
10060 ui_msg"値が範囲外です。"
10070 goto rewrite:
10080 endif
10090 endif
10100 'endif
10110 rewrite:
10120 locate 2,3
10130 color rgb(255,255,255)
10140 print "                                      "
10150 locate 2,3
10160 print "生まれた月(1月~12月):";buf_Month$
10170 goto Input_Born_Month2:
10180 endif
10190 case 1:
10200 buf_Month$="**":buf_month=0
10210 if No=-1 then
10220 count2=2:count=0
10230 locate 0,3
10240 print "                                      "
10250 locate 2,3:
10260 print "生まれた月(1月~12月):"+buf_Month$
10270 goto Input_Born_Month2:
10280 endif
10290 case 2:
10300 sp_on 14,0:goto Input_Seireki:
10310 end select
10320 endif
10330 'endif
10340 end
10350 'end
10360 '生れた日を入力
10370 Input_Born_Day:
10380 '生まれた日入力
10390 cls 3:play ""
10400 'No=-1:Okのとき
10410 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10420 for i=0 to 1
10430 buf_day(i)=0
10440 next i
10450 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10460 gload Gazo$ + "Screen1.png",0,0,0
10470 gload Gazo$ + "downscreen.png",0,0,800
10480 'Init"kb:2"
10490 '音声ファイル再生 2023.06.07
10500 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10510 font 48
10520 locate 0,1
10530 '文字色：黒　 color rgb(0,0,0)
10540 color rgb(255,255,255)
10550 print "生まれた日を入れて下さい" + chr$(13)
10560 color rgb(255,255,255)
10570 locate 2,3
10580 print "生まれた日(1日~31日):";buf_Day$
10590 color rgb(255,255,255)
10600 'locate 4,6:print ":7"
10610 'locate 9,6:print ":8"
10620 'locate 12,6:print ":9"
10630 locate 4,6
10640 print ":7  :8  :9" + chr$(13)
10650 '=======================
10660 'テンキー　色　白　決定ボタン　青
10670 '=======================
10680 color rgb(255,255,255)
10690 locate 4,8
10700 print ":4  :5  :6" + chr$(13)
10710 color rgb(255,255,255)
10720 locate 4,10
10730 print ":1  :2  :3" + chr$(13)
10740 locate 4,12
10750 print "    :0"
10760 locate 12,12
10770 color rgb(255,0,0)
10780 print ":Ok"
10790 sp_on 4,0: sp_on 5,0:sp_on 6,0
10800 sp_on 7,0:sp_on 8,0:sp_on 9,0
10810 sp_on 10,0:sp_on 11,0:sp_on 12,0
10820 sp_on 13,0:sp_on 14,1
10830 Input_Born_Day2:
10840 key$="":bg=0:y=0:y2=0:bg2=0
10850 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10860 key$ = inkey$
10870 bg = strig(1)
10880 y = stick(1)
10890 y2 = stick(0)
10900 bg2 = strig(0)
10910 pause 5
10920 wend
10930 '十字キー　ここから
10940 '上の矢印　または、十字キー上
10950 if ((y = -1) or (key$ = chr$(30))) then
10960 select case No
10970 'No=-1:okのとき:初期の状態
10980 '0kボタンから３に移動
10990 '上に行く 処理
11000 case -1:
11010 No=3:sp_on 12,1:sp_on 14,0
11020 pause 200:goto Input_Born_Day2:
11030 '選択肢:3
11040 '3ボタンから 6に移動
11050 case 3:
11060 No=6:sp_on 12,0:sp_on 11,1
11070 pause 200:goto Input_Born_Day2:
11080 '6ボタンから ９に移動
11090 case 6:
11100 No=9:sp_on 10,1:sp_on 11,0
11110 pause 200:goto Input_Born_Day2:
11120 '6ボタンから ９に移動　ここまで
11130 '9で上を押して何もしない
11140 case 9:
11150 '何もしない
11160 No=9
11170 pause 200:goto Input_Born_Day2:
11180 '9で上を押しても何もしない　ここまで
11190 '上　 0ボタンから2ボタン
11200 'sp_on 6,1:1
11210 'sp_on 8,1:5
11220 'sp_on 7,1:7
11230 case 0:
11240 No=2:sp_on 13,0:sp_on 9,1:
11250 pause 200:goto Input_Born_Day2:
11260 '上  0ボタンから2ボタン　ここまで
11270 '2から５になる 上
11280 case 2:
11290 No=5:sp_on 8,1:sp_on 9,0:
11300 pause 200:goto Input_Born_Day2:
11310 case 5:
11320 No=8:sp_on 7,1:sp_on 8,0
11330 pause 200:goto Input_Born_Day2:
11340 case 8:
11350 pause 200:goto Input_Born_Day2:
11360 case 1:
11370 No=4:sp_on 5,1:sp_on 6,0
11380 pause 200:goto Input_Born_Day2:
11390 case 4:
11400 No=7:sp_on 4,1:sp_on 5,0
11410 pause 200:goto Input_Born_Day2:
11420 case 7:
11430 pause 200:goto Input_Born_Day2:
11440 end select
11450 endif
11460 '左３　ここまで
11470 '下の矢印
11480 '中央 2
11490 if ((y=1) or (key$ = chr$(31))) then
11500 select case No
11510 '9から６に下げる
11520 case 9:
11530 No=6:sp_on 11,1:sp_on 10,0
11540 pause 200:goto Input_Born_Day2:
11550 '6から３に下げる
11560 case 6:
11570 No=3:sp_on 12,1:sp_on 11,0
11580 pause 200:goto Input_Born_Day2:
11590 '3から０ｋに変える
11600 case 3:
11610 No=-1:sp_on 14,1:sp_on 12,0
11620 pause 200:goto Input_Born_Day2:
11630 'Okから下のボタンを押しても何もしない
11640 case -1:
11650 pause 200:goto Input_Born_Day2:
11660 case 8:
11670 No=5:sp_on 8,1:sp_on 7,0
11680 pause 200:goto Input_Born_Day2:
11690 case 5:
11700 No=2:sp_on 9,1:sp_on 8,0
11710 pause 200:goto Input_Born_Day2:
11720 case 2:
11730 No=0:sp_on 13,1:sp_on 9,0
11740 pause 200:goto Input_Born_Day2:
11750 case 0:
11760 pause 200:goto Input_Born_Day2:
11770 case 7:
11780 No=4:sp_on 5,1:sp_on 4,0
11790 pause 200:goto Input_Born_Day2:
11800 case 4:
11810 No=1:sp_on 6,1:sp_on 5,0
11820 pause 200:goto Input_Born_Day2:
11830 case 1:
11840 pause 200:goto Input_Born_Day2:
11850 end select
11860 endif
11870 '左へボタン 十字キー　左　or 　カーソル左
11880 if ((y2 = -1) or (key$ = chr$(29))) then
11890 select case No
11900 'Ok ボタン  Okから　左　０に行く
11910 case -1:
11920 No=0:sp_on 13,1:sp_on 14,0
11930 pause 200:goto Input_Born_Day2:
11940 '0 ボタン  左　何もしない
11950 case 0:
11960 pause 200:goto Input_Born_Day2:
11970 case 3:
11980 No=2:sp_on 9,1:sp_on 12,0:
11990 pause 200:goto Input_Born_Day2:
12000 case 2:
12010 No=1:sp_on 6,1:sp_on 9,0:
12020 pause 200:goto Input_Born_Day2:
12030 case 1:
12040 pause 200:goto Input_Born_Day2:
12050 case 6:
12060 No=5:sp_on 8,1:sp_on 11,0
12070 pause 200:goto Input_Born_Day2:
12080 case 5:
12090 No=4:sp_on 5,1:sp_on 8,0
12100 pause 200:goto Input_Born_Day2:
12110 case 4:
12120 pause 200:goto Input_Born_Day2:
12130 case 9:
12140 No=8:sp_on 7,1:sp_on 10,0
12150 pause 200:goto Input_Born_Day2:
12160 case 8:
12170 No=7:sp_on 4,1:sp_on 7,0
12180 pause 200:goto Input_Born_Day2:
12190 case 7:
12200 pause 200:goto Input_Born_Day2:
12210 end select
12220 endif
12230 '右  十字キー　右　or カーソル　右
12240 if ((y2 = 1) or (key$ = chr$(28))) then
12250 select case No
12260 '0ボタンからokボタン右に移動
12270 case 0:
12280 No=-1:sp_on 14,1:sp_on 13,0
12290 pause 200:goto Input_Born_Day2:
12300 '0ボタンからokボタン 右に移動　ここまで
12310 'OKボタンで右を押して何もしない
12320 case -1:
12330 pause 200:goto Input_Born_Day2:
12340 case 1:
12350 No=2:sp_on 9,1:sp_on 6,0
12360 pause 200:goto Input_Born_Day2:
12370 case 2:
12380 No=3:sp_on 12,1:sp_on 9,0
12390 pause 200:goto Input_Born_Day2:
12400 case 3:
12410 pause 200:goto Input_Born_Day2:
12420 case 4:
12430 No=5:sp_on 8,1:sp_on 5,0
12440 pause 200:goto Input_Born_Day2:
12450 case 5:
12460 No=6:sp_on 11,1:sp_on 8,0
12470 pause 200:goto Input_Born_Day2:
12480 case 7:
12490 No=8:sp_on 7,1:sp_on 4,0
12500 pause 200:goto Input_Born_Day2:
12510 case 8:
12520 No=9:sp_on 10,1:sp_on 7,0
12530 pause 200:goto Input_Born_Day2:
12540 case 9:
12550 pause 200:goto Input_Born_Day2:
12560 case 6:
12570 pause 200:goto Input_Born_Day2:
12580 end select
12590 'Okから右ボタンを押して何もしない ここまで
12600 endif
12610 '十字キー　ここまで
12620 '右の丸ボタンを押したとき
12630 if ((bg = 2) or (key$ = chr$(13))) then
12640 'count :決定ボタンを押した回数
12650 select case (count mod 3)
12660 '1桁目入力
12670 case 0:
12680 count = 1:
12690 if (No = -1) then
12700 '1桁目　OKでは何もしない
12710 'goto check:
12720 else
12730 'ok以外のボタンを押したとき
12740 buf_day = No:buf_Day$ = str$(No)
12750 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12760 locate 2,3
12770 color RGB(255,255,255)
12780 print "生まれた日(1日~31日):";buf_Day2$
12790 endif
12800 check:
12810 if (No >= 1 and No <= 9) then
12820 sp_on 14,0
12830 goto Input_Born_Day2:
12840 else
12850 sp_on 14,0
12860 goto complate:
12870 endif
12880 case 1:
12890 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12900 count = 2:
12910 'locate 2,3
12920 'color RGB(255,255,255)
12930 'print "生まれた日(1日~31日):";buf_Day$
12940 'Okボタンを押したときの処理
12950 '入力値　10未満のとき
12960 'c = buf_day
12970 if (No = -1) then
12980 'c=buf_day
12990 ' buf_day = c
13000 'buf_Day$ = str$(buf_day)
13010 '10以下のとき
13020 if (buf_day < 10) then
13030 sp_on 14,0
13040 goto complate:
13050 endif
13060 else
13070 'c = No
13080 buf_day = c * 10 + No
13090 'buf_day = c
13100 buf_Day$ =str$(buf_day)
13110 locate 2,3
13120 color Rgb(255,255,255)
13130 print "生まれた日(1日~31日):";buf_Day$
13140 goto Input_Born_Day2:
13150 endif
13160 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13170 case 2:
13180 count=0
13190 'c=val(buf_Day$)
13200 'buf_day=c*10+No
13210 'buf_Day$=str$(buf_day)
13220 'day=buf_day
13230 'locate 2,3
13240 'print "生まれた日(1日〜31日):";buf_Day$
13250 'No=-1:ok ボタンを押したとき
13260 if (No = -1) then
13270 if ((buf_day > 0) and (buf_day < 32)) then
13280 sp_on 14,0
13290 goto complate:
13300 else
13310 goto Input_Born_Day2:
13320 endif
13330 'Okボタン以外を押したとき
13340 else
13350 c=val(buf_Day$)
13360 buf_day = c * 10 + No
13370 buf_Day$ = str$(buf_day)
13380 locate 2,3
13390 print "生まれた日(1日~31日):";buf_Day$
13400 'goto Input_Born_Day2:
13410 endif
13420 case 3:
13430 count = 4
13440 c=val(buf_day$)
13450 buf_day = c * 10 + No
13460 buf_day$ = str$(buf_day)
13470 locate 2,3
13480 print "生まれた日を入れてください:";buf_Day$
13490 year = val(buf_year$)
13500 if (No = -1) then
13510 'goto Input_Born_Day:
13520 sp_on 14,0:No=0
13530 goto complate:
13540 else
13550 goto Input_Born_Month2:
13560 endif
13570 'case 4:
13580 'bufyear=buf_year
13590 'if (No=-1) then
13600 'buf_day = val(buf_day$)
13610 'bufday = buf_day
13620 'sp_on 14,0
13630 'goto complate:
13640 'else
13650 'goto Input_Born_Day2:
13660 'endif
13670 end select
13680 endif
13690 if (bg2=2) then
13700 select case count2
13710 case 0:
13720 if (No=-1) then
13730 'buf_day=0:buf_Day$="**"
13740 if (buf_day>=1 and buf_day<=31) then
13750 count=0:No=0
13760 buf_day=0:buf_Day$="**"
13770 'goto rewrite_day:
13780 else
13790 buf_day=0:buf_Day$="**"
13800 ui_msg"値が範囲外です"
13810 endif
13820 goto rewrite_day:
13830 else
13840 goto rewrite_day:
13850 endif
13860 rewrite_day:
13870 locate 2,3
13880 color rgb(255,255,255)
13890 print "                                      "
13900 locate 2,3
13910 print "生まれた日(1日~31日):";buf_Day$
13920 goto Input_Born_Day2:
13930 end select
13940 endif
13950 '--------------------------Input_Born_Day:-------------------------------------------
13960 complate:
13970 suhiNo = buf_year + buf_month + buf_day
13980 'if (suhiNo < 1000) then
13990 a1 = fix(suhiNo / 1000)
14000 a2 = fix(suhiNo/100) - (a1 * 10)
14010 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14020 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14030 'endif
14040 bufsuhiNo = a1+a2+a3+a4
14050 recomp:
14060 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14070 'bufsuhiNo=a6
14080 goto Kabara_Result_Screen:
14090 else
14100 a5 = fix(bufsuhiNo / 10)
14110 a6 = bufsuhiNo - a5 * 10
14120 bufsuhiNo = a6 + a5
14130 if (bufsuhiNo = 10) then
14140 bufsuhiNo=1
14150 endif
14160 goto Kabara_Result_Screen:
14170 endif
14180 Kabara_Result_Screen:
14190 cls 3:
14200 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14210 gload Gazo$ + "downscreen.png",0,0,800
14220 init "kb:4"
14230 '
14240 play ""
14250 select case (bufsuhiNo)
14260 case 1:
14270 play Voice$ + "Result_Kabara_1_20230607.mp3"
14280 case 2:
14290 play Voice$ + "Result_Kabara_2_20230607.mp3"
14300 case 3:
14310 play Voice$ + "Result_Kabara_3_20230607.mp3"
14320 case 4:
14330 play Voice$ + "Result_Kabara_4_20230607.mp3"
14340 case 5:
14350 play Voice$ + "Result_Kabara_5_20230607.mp3"
14360 case 6:
14370 play Voice$ + "Result_Kabara_6_20230607.mp3"
14380 case 7:
14390 play Voice$ + "Result_Kabara_7_20230607.mp3"
14400 case 8:
14410 play Voice$ + "Result_Kabara_8_20230607.mp3"
14420 case 9:
14430 play Voice$ + "Result_Kabara_9_20230607.mp3"
14440 case 11:
14450 play Voice$ + "Result_Kabara_11_20230607.mp3"
14460 case 22:
14470 play Voice$ + "Result_Kabara_22_20230607.mp3"
14480 case 33:
14490 play Voice$ + "Result_Kabara_33_20230607.mp3"
14500 end select
14510 font 48
14520 key$ = "":bg = 0:bg2=0
14530 'COLOR rgb(255,255,255)
14540 'print "●診断結果"+chr$(13)
14550 locate 0,2
14560 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14570 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14580 locate 0,15:
14590 color rgb(255,255,255)
14600 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14610 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14620 key$ = inkey$
14630 bg = strig(1)
14640 bg2 = strig(0)
14650 pause 5
14660 wend
14670 'Enter or JoyPad right
14680 if ((key$ = chr$(13)) or (bg = 2)) then
14690 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14700 endif
14710 if ((bg2=2)) then
14720 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14730 endif
14740 'suhiNo1 = fix(bufsuhiNo / 10)
14750 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14760 'bufsuhiNo = suhiNo1 + suhiNo2
14770 'goto recomp:
14780 'endif
14790 'print chr$(13)
14800 'color rgb(255,0,0)
14810 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14820 'key$ = input$(1)
14830 'if key$ = chr$(13) then goto Main_Screen:
14840 '"Menu2 占いのルール"
14850 Suhi_Rule:
14860 '数秘術占いルールの表示
14870 cls 3:play "":init"kb:4"
14880 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14890 gload Gazo$ + "downscreen.png",0,0,800
14900 'cls 3:
14910 'line (0,0) - (1500,60),rgb(0,0,255),bf
14920 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14930 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14940 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14950 locate 0,2:Font 48
14960 print chr$(13) + chr$(13)
14970 color rgb(0,0,0)
14980 print "誕生日を単数変換します";chr$(13)
14990 print "数字の範囲:1~９,11,22,33";chr$(13)
15000 print "例:1973年11月22日の場合";chr$(13)
15010 print "1+9+7+3+11+22=53 ";chr$(13)
15020 print "→ 5 + 3 = 8" + chr$(13)
15030 print "故に8が数秘ナンバーになります";chr$(13)
15040 locate 0,15
15050 color rgb(255,255,255)
15060 print "ジョイパッドの右を押してください"
15070 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15080 '"key$ = input$(1)"
15090 '"if key$ = chr$(13) then goto Main_Screen:"
15100 suhi_rule_selection:
15110 bg = 0:key$ = "":bg2=0
15120 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15130 bg = strig(1)
15140 key$ = inkey$
15150 bg2=strig(0)
15160 pause 2
15170 wend
15180 if ((bg = 2) or (key$ = chr$(13))) then
15190 pause 200:cls 4:goto Main_Screen:
15200 endif
15210 if (bg2=2) then
15220 play "":pause 200
15230 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15240 goto suhi_rule_selection:
15250 endif
15260 '2.設定
15270 '2-1.トップ画面に戻る
15280 Setting:
15290 cls 3:init"kb:4":font 48:No=0
15300 play ""
15310 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15320 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15330 gload Gazo$ + "downscreen.png",0,0,800
15340 print chr$(13) + chr$(13) + chr$(13)
15350 color rgb(255,255,255):sp_on 0,1:
15360 print "番号を選んでください" + chr$(13)
15370 print " :1.トップ画面に戻る"+ chr$(13)
15380 print " :2.未実装" + chr$(13)
15390 print " :3.未実装" + chr$(13)
15400 print " :4.未実装" + chr$(13)
15410 color rgb(0,0,0)
15420 locate 1,15:print "1.トップ画面に戻るを選択"
15430 Setting_Selection:
15440 y=0:key$="":bg=0:bg2=0
15450 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15460 'y=stick(1)
15470 key$ = inkey$
15480 bg=strig(1)
15490 bg2 = strig(0)
15500 pause 2
15510 wend
15520 if ((bg = 2) or (key$ = chr$(13))) then
15530 select case No
15540 case 0:
15550 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15560 end select
15570 endif
15580 if (bg2 = 2) then
15590 play "":pause 200
15600 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15610 goto Setting_Selection:
15620 endif
15630 '3.Help
15640 '3-1.ルールの表示
15650 '3-2.バージョン
15660 '3-3.トップに戻る
15670 Help:
15680 cls 3:Font 48:No=0
15690 play ""
15700 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15710 gload Gazo$ + "downscreen.png",0,0,800
15720 color rgb(255,255,255)
15730 print chr$(13)+chr$(13)+chr$(13)
15740 print "番号を選んでください"+chr$(13)
15750 print " :1.ルールの表示" + chr$(13)
15760 print " :2.バージョンの表示" + chr$(13)
15770 print " :3.参考文献" + chr$(13)
15780 print " :4.トップ画面に戻る" + chr$(13)
15790 color rgb(0,0,0)
15800 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15810 locate 1,15
15820 print "                                      "
15830 locate 1,15
15840 print "1.ルールの表示を選択"
15850 init"kb:4"
15860 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15870 Help_Select:
15880 bg=0:key$="":y=0:bg2=0
15890 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15900 y = stick(1)
15910 key$ = inkey$
15920 bg = strig(1)
15930 bg2 = strig(0)
15940 pause 5
15950 wend
15960 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15970 if ((y = 1) or (key$ = chr$(31))) then
15980 select case No
15990 case 0:
16000 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16010 case 1:
16020 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16030 case 2:
16040 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16050 case 3:
16060 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16070 end select
16080 endif
16090 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16100 if ((y = -1) or (key$ = chr$(30))) then
16110 select case No
16120 case 0:
16130 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16140 case 1:
16150 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16160 case 2:
16170 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16180 case 3:
16190 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16200 end select
16210 endif
16220 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16230 if ((bg = 2) or (key$ = chr$(13))) then
16240 select case No
16250 case 0:
16260 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16270 case 1:
16280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16290 case 2:
16300 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16310 '3:Top画面に行く
16320 case 3:
16330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16340 end select
16350 endif
16360 if (bg2 = 2) then
16370 play "":pause 200
16380 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16390 goto Help_Select:
16400 endif
16410 '数秘術占い　トップ画面
16420 Kabara_TopScreen:
16430 cls 3:play ""
16440 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16450 gload Gazo$ + "downscreen.png",0,0,800
16460 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16470 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16480 init"kb:4":No=0
16490 color rgb(255,255,255)
16500 print chr$(13)+chr$(13)+chr$(13)
16510 print "番号を選んでください" + chr$(13)
16520 print " :1.数秘術占い" + chr$(13)
16530 print " :2.バーズアイグリット" + chr$(13)
16540 print " :3.相性占い" + chr$(13)
16550 print " :4.トップ画面に戻る" + chr$(13)
16560 color rgb(0,0,0)
16570 locate 1,15:print "1.数秘術占いを選択"
16580 Kabara_TopScreen2:
16590 y = 0:bg = 0:key$ = "":bg2 = 0
16600 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16610 key$ = inkey$
16620 bg = strig(1)
16630 y = stick(1)
16640 bg2 = strig(0)
16650 pause 5
16660 wend
16670 '選択ボタン
16680 'カーソル　と　ジョイパッド　の下
16690 if ((y = 1) or (key$ = chr$(31))) then
16700 select case No
16710 case 2:
16720 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16730 case 3:
16740 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16750 case 0:
16760 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16770 case 1:
16780 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16790 end select
16800 endif
16810 'カーソル　上
16820 if ((y=-1) or (key$=chr$(30))) then
16830 select case No
16840 case 0:
16850 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16860 case 1:
16870 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16880 case 2:
16890 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16900 case 3:
16910 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16920 end select
16930 endif
16940 '決定ボタン
16950 'ジョイパッドの右　or  Enter key
16960 if ((bg = 2) or (key$ = chr$(13))) then
16970 select case No
16980 case 0:
16990 '1.数秘術占い
17000 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17010 case 3:
17020 '4.メイン画面にいく
17030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17040 case 1:
17050 '2.バースアイグリッド
17060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
17070 case 2:
17080 '3.相性占い
17090 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17100 end select
17110 endif
17120 if (bg2 = 2) then
17130 play "":pause 200
17140 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17150 goto Kabara_TopScreen2:
17160 endif
17170 '1.バースアイグリット　名入力
17180 Inputname1:
17190 cls 3:init"kb:4":font 48
17200 bg=0:key$="":y=0:No=-1
17210 gload Gazo$ + "Selection.png",1,10,100
17220 'Line 1:☓
17230 'A:選択肢
17240 sp_def 15,(50,250),16,16
17250 'B:選択肢
17260 sp_def 16,(200,250),16,16
17270 'C:選択肢
17280 sp_def 17,(350,250),16,16
17290 'D:選択肢
17300 sp_def 18,(500,250),16,16
17310 'E:選択肢
17320 sp_def 19,(630,250),16,16
17330 'F:選択肢
17340 sp_def 20,(780,250),16,16
17350 'G:選択肢
17360 sp_def 21,(930,250),16,16
17370 'Line 2:☓
17380 sp_def 22,(50,345),16,16
17390 sp_def 23,(200,345),16,16
17400 sp_def 24,(350,345),16,16
17410 sp_def 25,(500,345),16,16
17420 sp_def 26,(630,345),16,16
17430 sp_def 27,(780,345),16,16
17440 sp_def 28,(930,345),16,16
17450 'Line 3:☓
17460 sp_def 29,(50,440),16,16
17470 sp_def 30,(200,440),16,16
17480 sp_def 31,(350,440),16,16
17490 sp_def 32,(500,440),16,16
17500 sp_def 33,(630,440),16,16
17510 sp_def 34,(780,440),16,16
17520 sp_def 35,(930,440),16,16
17530 'Line 4:◯
17540 sp_def 36,(50,535),16,16
17550 sp_def 37,(200,535),16,16
17560 sp_def 38,(350,535),16,16
17570 sp_def 39,(500,535),16,16
17580 sp_def 40,(630,535),16,16
17590 sp_def 41,(780,535),16,16
17600 'sp_def 42,(930,535),16,16
17610 sp_on 15,0
17620 sp_on 16,0
17630 sp_on 17,0
17640 sp_on 18,0
17650 sp_on 19,0
17660 sp_on 20,0
17670 sp_on 21,0
17680 sp_on 22,0
17690 sp_on 23,0
17700 sp_on 24,0
17710 sp_on 25,0
17720 sp_on 26,0
17730 sp_on 27,0
17740 sp_on 28,0
17750 sp_on 29,0
17760 sp_on 30,0
17770 sp_on 31,0
17780 sp_on 32,0
17790 sp_on 33,0
17800 sp_on 34,0
17810 sp_on 35,0
17820 sp_on 36,0
17830 sp_on 37,0
17840 sp_on 38,0
17850 sp_on 39,0
17860 sp_on 40,0
17870 sp_on 41,1
17880 'sp_on 42,1
17890 'Line 1
17900 'sp_put 15,(50,250),0,0
17910 'sp_put 16,(200,250),0,0
17920 'sp_put 17,(350,250),0,0
17930 'sp_put 18,(500,250),0,0
17940 'sp_put 19,(630,250),0,0
17950 'sp_put 20,(780,250),0,0
17960 'sp_put 21,(930,250),0,0
17970 'Line 2
17980 'sp_put 22,(50,345),0,0
17990 'sp_put 23,(200,345),0,0
18000 'sp_put 24,(350,345),0,0
18010 'sp_put 25,(500,345),0,0
18020 'sp_put 26,(630,345),0,0
18030 'sp_put 27,(780,345),0,0
18040 'sp_put 28,(930,345),0,0
18050 'Line 3
18060 'sp_put 29,(50,440),0,0
18070 'sp_put 30,(200,440),0,0
18080 'sp_put 31,(350,440),0,0
18090 'sp_put 32,(500,440),0,0
18100 'sp_put 33,(630,440),0,0
18110 'sp_put 34,(780,440),0,0
18120 'sp_put 35,(930,440),0,0
18130 'Line 4
18140 'sp_put 36,(50,535),0,0
18150 'sp_put 37,(200,535),0,0
18160 'sp_put 38,(350,535),0,0
18170 'sp_put 39,(500,535),0,0
18180 'sp_put 40,(630,535),0,0
18190 sp_put 41,(780,535),0,0
18200 'sp_put 42,(930,536),0,0
18210 gload Gazo$ + "Screen1.png",0,0,0
18220 color rgb(255,255,255)
18230 locate 1,3
18240 print "名前の姓をアルファベットで入力してください"
18250 locate 1,5
18260 print " A  B  C  D  E  F  G"
18270 locate 1,7
18280 print " H  I  J  K  L  M  N"
18290 locate 1,9
18300 print " O  P  Q  R  S  T  U"
18310 locate 1,11
18320 print " V  W  X  Y  Z  Ok"
18330 locate 1,15:color rgb(0,0,0)
18340 print "実装未完全"
18350 select_name1:
18360 bg = 0:y = 0:key$ = "":y2=0:init"kb:4"
18370 '有効ボタン
18380 '1.決定ボタン(bg:2)
18390 '2.Enter Key
18400 '3.カーソル上 (chr$(31))
18410 '4.カーソル　左 (chr$(29))
18420 '5.ジョイパッド　上 (y:1)
18430 '6:ジョイパッド　左 (y2:-1)
18440 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
18450 key$ = inkey$
18460 'ジョイパッドの決定:bg
18470 bg = strig(1)
18480 y = stick(1)
18490 y2 = stick(0)
18500 pause 200
18510 wend
18520 '====================================
18530 'Birds Eye Grid 名前入力
18540 '入力スタイル　アルファベット入力
18550 'sp_on:　スプライトのオンオフ
18560 'sp_put :表示位置
18570 'No:ボタン番号
18580 '====================================
18590 'カーソルで上に行く
18600 if ((y=-1) or (key$=chr$(31))) then
18610 select case No
18620 '1.Ok ボタン
18630 'sp_on スプライトのオンオフ
18640 'sp_put スプライトを表示
18650 case -1:
18660 '1.アルファベット　入力ボタン
18670 '実装未完全なので終了
18680  'Ok → T ○ :No:20=T
18690  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
18700  'T  → M ○
18710 case 20:
18720   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
18730  'M  →　F ○
18740 case 13:
18750   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
18760  'F  → Ok
18770 case 6:
18780   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
18790 end select
18800 endif
18810 '2.決定ボタン
18820 if ((key$ = chr$(13)) OR  (bg = 2)) then
18830 select case No
18840 case -1:
18850      'スプライトをOFFにする
18860      sp_on 41,0
18870 end select
18880 endif
18890 '3.カーソル　左
18900 if (key$ = chr$(29) or (y2 =-1)) then
18910 select case No
18920 'Line 4
18930 '1.
18940 'Z:-1 :Ok ボタン
18950 'Ok → Z
18960 case -1:
18970      'Ok →　Z
18980      'Ok ボタン OFF,Z Button ON
18990      'No=26:Z
19000      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19010 '2.
19020 '26:Zボタン Z→ Y
19030 case 26:
19040      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19050 '3.
19060 '25:Yボタン  Y → X
19070 case 25:
19080      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19090 '4
19100 '24:Xボタン X → W
19110 case 24:
19120      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19130 '23:Wボタン X → W
19140 '5
19150 case 23:
19160 '22:Vボタン W → V
19170      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19180 case 22:
19190 '-1:V→ Ok
19200      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19210 'Line 3
19220 case 20:
19230 '33:T34  → S:33 :◯
19240     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19250 case 19:
19260 '32:S:33 → R:32 :◯
19270     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19280 case 18:
19290 '31:R:32 → Q:31 :◯
19300     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19310 case 17:
19320 '30:Q:31 → P:30 :◯
19330     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19340 case 16:
19350 '29:P:30 → O:29 :◯
19360     No=20:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
19370 case 15:
19380 '28:O:29 → U:21  :☓
19390     No=21:sp_on 29,0:sp_on 21,1:sp_put 35,(930,440),0,0:buffer$ = "No=" + str$(No):ui_msg buffer$:goto select_name1:
19400 '29:U:21 → T:20  :☓
19410 'case
19420 'No=19:
19430 end select
19440 endif
19450 'gload Gazo$ + "Input_Birtheye2.png",0,0,0
19460 'color rgb(255,255,255)
19470 'locate 1,2:print "名前をアルファベットで入れてください"
19480 'color rgb(0,0,0)
19490 'locate 1,5:Input "名前（姓の部分）:",name1$
19500 'locate 1,5:print "Hit any key"
19510 'n1 = len(name1$)
19520 'if (n1 < 11) then
19530 'for i=1 to n1
19540 'buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
19550 'next i
19560 'endif
19570 'if b$=chr$(13) then goto Inputname2:
19580 '2.グリッドアイ　姓の入力
19590 end
19600 Inputname2:
19610 cls 3:init"kb:2":font 48
19620 gload Gazo$ + "Input_Birtheye1.png",0,0,0
19630 color rgb(255,255,255)
19640 locate 1,2:print "名前をアルファベットで入れてください"
19650 color rgb(0,0,0)
19660 locate 1,5:Input "名前(名の部分):",name2$
19670 n2 = len(name2$)
19680 for i=1 to n2
19690 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
19700 next i
19710 '計算領域
19720 Complate:
19730 'name1
19740 for i=0 to 25
19750 for n=1 to len(name1$)
19760 if (buf_chart$(i,0) = buf_name1$(n-1)) then
19770 b = val(buf_chart$(i,1))
19780 buffer(b-1) = buffer(b-1) + 1
19790 endif
19800 next n
19810 next i
19820 'name2
19830 for i=0 to 25
19840 for n=1 to len(name2$)
19850 if (buf_chart$(i,0) = buf_name2$(n-1)) then
19860 c = val(buf_chart$(i,1))
19870 buffer(c - 1) = buffer(c - 1) + 1
19880 endif
19890 next n
19900 next i
19910 '結果表示領域
19920 Result_Birtheye1:
19930 cls 3:init"kb:4":No=0
19940 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
19950 gload Gazo$ + "downscreen.png",0,0,800
19960 color rgb(255,255,255)
19970 '1の表示
19980 locate 3,14:print buffer(0);
19990 '2の表示
20000 locate 3,9:print buffer(1);
20010 '3の表示
20020 locate 3,5:print buffer(2);
20030 '4の表示
20040 locate 10,14:print buffer(3);
20050 '5の表示
20060 locate 10,9:print buffer(4);
20070 '6の表示
20080 locate 10,5:print buffer(5);
20090 '7の表示
20100 locate 15,14:print buffer(6);
20110 '8の表示
20120 locate 15,9:print buffer(7);
20130 '9の表示
20140 locate 15,5:print buffer(8);
20150 'name を大文字に変換
20160 locate 5,3:print ucase$(name1$ + name2$)
20170 color rgb(0,0,0)
20180 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
20190 bg=0:key$="":bg2=0
20200 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
20210 'Enterと決定ボタン
20220 key$ = inkey$
20230 bg = strig(1)
20240 bg2=strig(0)
20250 pause 200
20260 wend
20270 if ((bg=2) or (key$=chr$(13))) then
20280 'データーをクリアしてトップ画面に行く
20290 'for i=0 to 8
20300 'buffer(i)=0
20310 'next i
20320 'for n=0 to 9
20330 'buf_name1$(n) = ""
20340 'buf_name2$(n) = ""
20350 'next n
20360 'Topに行く
20370 'goto Main_Screen:
20380 '次へ
20390 goto BirdsEye_Result2:
20400 endif
20410 if (bg2=2) then
20420 'データーをクリアする
20430 for i=0 to 8
20440 buffer(i)=0
20450 next i
20460 for n=0 to 9
20470 buf_name1$(n)=""
20480 buf_name2$(n)=""
20490 next n
20500 goto Inputname1:
20510 endif
20520 'goto Result_Birtheye1:
20530 'Result_Birtheye2:
20540 'cls 3:color rgb(255,255,255)
20550 'end
20560 'Memory 消去
20570 '
20580 '横のフォーカスライン
20590 BirdsEye_Result2:
20600 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
20610 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
20620 Forcus1_buffer$(2)="○"
20630 else
20640 Forcus1_buffer$(2)="☓"
20650 endif
20660 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
20670 Forcus1_buffer$(1)="○"
20680 else
20690 Forcus1_buffer$(1) = "☓"
20700 endif
20710 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
20720 Forcus1_buffer$(0)="○"
20730 else
20740 Forcus1_buffer$(0)="☓"
20750 endif
20760 gload Gazo$ + "Screen1.png",0,0,0
20770 color rgb(255,0,0):
20780 locate 1,1
20790 print "バーズアイグリッド(フォーカスライン1)"
20800 color rgb(255,255,255)
20810 locate 1,3:
20820 print "●.横のフォーカスライン"
20830 locate 1,5
20840 print "1.切れ者ライン:"+Forcus1_buffer$(2)
20850 locate 1,7
20860 print "2.調停者ライン:"+Forcus1_buffer$(1)
20870 locate 1,9
20880 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
20890 color rgb(0,0,0)
20900 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
20910 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
20920 key$=inkey$
20930 bg=strig(1)
20940 bg2=strig(0)
20950 pause 200
20960 wend
20970 if ((bg=2) or (key$=chr$(13))) then
20980 goto BirdsEye_Result3:
20990 endif
21000 if (bg2=2) then
21010 goto Main_Screen:
21020 endif
21030 BirdsEye_Result3:
21040 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
21050 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
21060 Forcus2_buffer$(2)="○"
21070 else
21080 Forcus2_buffer$(2)="☓"
21090 endif
21100 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
21110 Forcus2_buffer$(1)="○"
21120 else
21130 Forcus2_buffer$(1) = "☓"
21140 endif
21150 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
21160 Forcus2_buffer$(0)="○"
21170 else
21180 Forcus2_buffer$(0)="☓"
21190 endif
21200 gload Gazo$ + "Screen1.png",0,0,0
21210 color rgb(255,0,0):
21220 locate 1,1
21230 print "バーズアイグリッド(フォーカスライン2)"
21240 color rgb(255,255,255)
21250 locate 1,3:
21260 print "●.縦のフォーカスライン"
21270 locate 1,5
21280 print "1.表現者ライン:" + Forcus2_buffer$(2)
21290 locate 1,7
21300 print "2.司令塔ライン:" + Forcus2_buffer$(1)
21310 locate 1,9
21320 print "3.指導者ライン:" + Forcus2_buffer$(0)
21330 color rgb(0,0,0)
21340 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
21350 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
21360 key$=inkey$
21370 bg=strig(1)
21380 bg2=strig(0)
21390 pause 200
21400 wend
21410 if ((bg = 2) or (key$ = chr$(13))) then
21420 goto BirdsEye_Result4:
21430 endif
21440 if (bg2=2) then
21450 goto Main_Screen:
21460 endif
21470 BirdsEye_Result4:
21480 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
21490 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
21500 Forcus3_buffer$(1) = "○"
21510 else
21520 Forcus3_buffer$(1) = "☓"
21530 endif
21540 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
21550 Forcus3_buffer$(0) = "○"
21560 else
21570 Forcus3_buffer$(0) = "☓"
21580 endif
21590 gload Gazo$ + "Screen1.png",0,0,0
21600 color rgb(255,0,0):
21610 locate 1,1
21620 print "バーズアイグリッド(フォーカスライン3)"
21630 color rgb(255,255,255)
21640 locate 1,3:
21650 print "●.斜めのフォーカスライン"
21660 locate 1,5
21670 print "1.成功者ライン:"+Forcus3_buffer$(1)
21680 locate 1,7
21690 print "2.セレブライン:"+Forcus3_buffer$(0)
21700 color rgb(0,0,0)
21710 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
21720 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
21730 key$ = inkey$
21740 bg = strig(1)
21750 bg2 = strig(0)
21760 pause 200
21770 wend
21780 if ((bg=2) or (key$=chr$(13))) then
21790  goto Result_Birtheye1:
21800 endif
21810 if (bg2=2) then
21820 'データークリア
21830 for i=0 to 8
21840  buffer(i) = 0
21850 next i
21860  goto Main_Screen:
21870 endif
21880 References1:
21890 cls 3:key$ = "":bg = 0:play "":font 48-16
21900 gload Gazo$ + "Reference1_20230703.png",0,0,0
21910 print chr$(13)+chr$(13)+chr$(13)
21920 color rgb(0,0,0)
21930 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
21940 print "Author:carol Adrinne,PhD"+chr$(13)
21950 print "出版社:幻冬舎" + chr$(13)
21960 print "HP:www.carolAdrienne.jp/"+chr$(13)
21970 print "ISBN:978-4-344-01394-0"+chr$(13)
21980 print "定価:1500円 + 税"+chr$(13)
21990 color rgb(255,255,255)
22000 locate 1,23
22010 print "ジョイパッド右：次へ"
22020 while (key$ <> chr$(13) and bg <> 2)
22030 bg = strig(1)
22040 key$ = inkey$
22050 wend
22060 '
22070 if ((bg = 2) or (key$ = chr$(13))) then
22080 pause 200:goto References2:
22090 endif
22100 'ユダヤの秘儀 カバラ大占術
22110 References2:
22120 cls 3:play "":bg = 0:key$ = ""
22130 gload Gazo$ + "Reference2_20230703.png",0,0,0
22140 '参考文献２
22150 'カバラ大占術
22160 print chr$(13) + chr$(13) + chr$(13)
22170 color  rgb(0,0,0):font 48-16
22180 locate 1,3
22190 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
22200 print "著者：浅野　八郎" + chr$(13)
22210 print "出版社:NON BOOK" + chr$(13)
22220 print "ISBN:4-396-10364-6" + chr$(13)
22230 print "定価:829円 + 税"
22240 color rgb(255,255,255)
22250 locate 1,23
22260 print "ジョイパッド右：トップへ行く"
22270 while ((key$ <> chr$(13)) and (bg <> 2))
22280 bg = strig(1)
22290 key$ = inkey$
22300 wend
22310 if ((bg = 2) or (key$ = chr$(13))) then
22320 pause 200:goto Main_Screen:
22330 endif
22340 end
22350 '1.数秘術　トップ画面
22360 Kabara_First_Top:
22370 cls 3:color rgb(255,255,255):play ""
22380 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
22390 gload Gazo$ + "downscreen.png",0,0,800
22400 No=0:init"kb:4"
22410 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
22420 print chr$(13);chr$(13)
22430 color rgb(255,255,255)
22440 locate 3,4:No=0
22450 print "番号選んでください" + chr$(13)
22460 print " :1.数秘術占い" + chr$(13)
22470 print " :2.トップ画面に戻る" + chr$(13)
22480 color rgb(0,0,0)
22490 sp_on 0,1
22500 locate 1,15:print "1.数秘術番号を求めるを選択"
22510 'KeyBord:true
22520 'Joy Pad:true
22530 '上、下:true
22540 '
22550 'ｂｇ：決定ボタン
22560 'カーソル　上
22570 'カーソル　下
22580 Kabara_First_Top2:
22590 key$ = "":bg = 0:y = 0:
22600 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
22610 key$ = inkey$
22620 bg = strig(1)
22630 y = stick(1)
22640 'PauseでCPUを休める
22650 pause 5
22660 wend
22670 '1.カーソル　下 処理 chr$(31)
22680 'カーソル　下
22690 if ((key$ = chr$(31)) or (y = 1)) then
22700 select case No
22710 '
22720 case 1:
22730 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
22740 case 0:
22750 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
22760 'case 2:
22770 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
22780 end select
22790 endif
22800 '2.カーソル　上 処理 chr$(30)
22810 if ((key$ = chr$(30)) or (y = -1)) then
22820 select case No
22830 case 0:
22840 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
22850 case 1:
22860 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
22870 'case 2:
22880 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
22890 end select
22900 endif
22910 '3.決定 処理  bg:2 or Enter key:chr$(13)
22920 if ((bg = 2) or (key$ = chr$(13))) then
22930 select case No
22940 case 0:
22950 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
22960 goto Kabara_TopScreen:
22970 'case 1:
22980 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
22990 case 1:
23000 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
23010 end select
23020 endif
23030 '
23040 'Kabara 相性占い トップ画面
23050 Kabara_Aishou_Top:
23060 cls 3:y=0:key$="":bg=0:No=0
23070 play ""
23080 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
23090 gload Gazo$ + "downscreen.png",0,0,800
23100 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
23110 print chr$(13) + chr$(13)
23120 locate 0,4:color rgb(255,255,255)
23130 'print "Ok"
23140 '
23150 print "番号を選んでください" + chr$(13)
23160 print " :1.男女2人の相性(未実装)" + chr$(13)
23170 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
23180 print " :3.トップ画面に戻る" + chr$(13)
23190 sp_on 0,1:sp_on 1,0:sp_on 2,0
23200 color rgb(0,0,0)
23210 locate 1,15:print "1.男女2人の相性占いを選択"
23220 Kabara_Aishou_Top2:
23230 key$ = "":y = 0:bg = 0:
23240 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
23250 'ジョイパッド(右) ,十字キー (上下)
23260 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
23270 y = stick(1)
23280 key$ = inkey$
23290 bg = strig(1)
23300 pause 5
23310 wend
23320 'カーソル　下 or 十字キー　下
23330 if ((key$ = chr$(31)) or (y = 1)) then
23340 select case No
23350 '選択肢　1 - 2に変更
23360 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
23370 'ok
23380 case 0:
23390 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
23400 '選択肢　2 - 3に変更
23410 case 1:
23420 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
23430 'リリース時 case 2コメント解除
23440 case 2:
23450 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
23460 case else:
23470 goto Kabara_Aishou_Top2:
23480 end select
23490 endif
23500 '十字キー　上　、カーソル　上
23510 if ((key$ = chr$(30)) or (y = -1)) then
23520 select case No
23530 case 0:
23540 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
23550 case 1:
23560 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
23570 case 2:
23580 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
23590 case else:
23600 goto Kabara_Aishou_Top2:
23610 end select
23620 endif
23630 '十字キー　上下:選択
23640 'ジョイパッド 右:決定
23650 if ((bg = 2) or (key$ = chr$(13))) then
23660 select case No
23670 '1.男女の相性
23680 case 0:
23690 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
23700 '2ビジネスの相性
23710 case 1:
23720 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
23730 case 2:
23740 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
23750 end select
23760 endif
23770 'ビジネスの相性　
23780 '1.1人目のビジネスの相性　名前入力　1人目
23790 Business_Aishou_Input_1_parson:
23800 No=0:color RGB(255,255,255)
23810 cls 3:init "kb:2"
23820 gload Gazo$ + "Screen1.png",0,0,0
23830 gload Gazo$ + "downscreen.png",0,0,800
23840 play "":color rgb(255,0,0):name$ = ""
23850 locate 0,1
23860 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
23870 color rgb(255,255,255):
23880 locate 0,3
23890 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
23900 print "入れてください" + chr$(13)
23910 locate 0,15:color rgb(0,0,0)
23920 Input "1人目の名前:",name$
23930 'color rgb(0,0,0)
23940 'locate 0,13:print "                                     "
23950 'locate 0,13:print "1人目の名前を入力してエンターキー":
23960 'buffer_name$(0):1人目の名前
23970 buffer_name$(0) = name$:
23980 goto Business_Aishou_Input_2_Parson:
23990 '2.2人目のビジネスの相性 名前入力 2人目
24000 Business_Aishou_Input_2_Parson:
24010 cls 3:init "kb:2":name$ = "":No=0
24020 gload Gazo$ + "Screen1.png",0,0,0
24030 gload Gazo$ + "downscreen.png",0,0,800
24040 color rgb(255,0,0)
24050 'Title
24060 locate 0,1
24070 print "ビジネスの相性　2人目"
24080 locate 0,3
24090 color rgb(255,255,255)
24100 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
24110 print "入れてください" + chr$(13)
24120 locate 0,15:color rgb(0,0,0)
24130 Input "2人目の名前:",name$
24140 'color rgb(0,0,0)
24150 'locate 0,15:print "                                              "
24160 'locate 0,15:print "2人目の名前を入力してエンター ":
24170 '2人目
24180 '2人目の名前を入れるに代入
24190 buffer_name$(1) = name$:
24200 goto Select_jyoushi:
24210 '3.上司の選択
24220 Select_jyoushi:
24230 cls 3:gload Gazo$ + "Screen1.png",0,0,0
24240 gload Gazo$ + "downscreen.png",0,0,800
24250 init "kb:4":No=0
24260 color rgb(0,0,255)
24270 locate 1,1
24280 print "上司の選択"
24290 color rgb(255,255,255)
24300 locate 0,4:print "名前から上司の方を選んでください"
24310 locate 0,6
24320 print " :";buffer_name$(0);"が上 司";chr$(13)
24330 locate 0,8
24340 print " :";buffer_name$(1);"が上 司";chr$(13)
24350 locate 0,15:
24360 print "                                     "
24370 locate 0,15:color rgb(0,0,0)
24380 print "上司の方を選んで右の丸ボタン"
24390 sp_on 0,1:sp_on 1,0:sp_on 2,0
24400 Select_jyoushi2:
24410 'ここでNo=0をおいてはいけない
24420 y=0:key$="":bg=0:
24430 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
24440 y = stick(1)
24450 key$ = inkey$
24460 bg = strig(1)
24470 pause 5
24480 wend
24490 '1.カーソル下の処理　or 十字キーの下処理
24500 if ((key$ = chr$(31)) or (y = 1)) then
24510 select case No
24520 case 0:
24530 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
24540 case 1:
24550 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
24560 end select
24570 endif
24580 '2.カーソル上処理　or 十字キーの上の処理
24590 if ((key$ = chr$(30)) or (y = -1)) then
24600 select case No
24610 case 0:
24620 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
24630 case 1:
24640 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
24650 end select
24660 endif
24670 if ((key$ = chr$(13)) or (bg = 2)) then
24680 select case No
24690 case 0:
24700 '上司(name1)を配列に代入
24710 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
24720 case 1:
24730 '上司（name2)を配列に代入
24740 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
24750 end select
24760 endif
24770 '3.決定ボタン　Enter or 右の丸ボタン
24780 '1.誕生日入力
24790 '1-1.生まれた年を入力
24800 'Jyoushi_born_year:
24810 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
24820 '---------------------------------------------'
24830 '誕生日入力(生れた年代)
24840 Jyoushi_Input_Seireki:
24850 'buf_Jyoushi_Born_Year:上司の生まれた年代
24860 'buf_Jyoushi_Born_Day(0) = born_year
24870 cls 3:play "":count=0:count2=0
24880 init"kb:4"
24890 'No=-1:Okのとき
24900 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
24910 for i=0 to 3
24920 buf_Jyoushi_Born_Day(i)=0
24930 next i
24940 gload Gazo$ + "Screen1.png",0,0,0
24950 gload Gazo$ + "downscreen.png",0,0,800
24960 'Init"kb:2"
24970 '音声ファイル再生 2023.06.07
24980 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
24990 font 48
25000 locate 0,1
25010 '文字色：黒　 color rgb(0,0,0)
25020 color rgb(255,255,255)
25030 print "上司の生まれた年代を入れて下さい" + chr$(13)
25040 color rgb(255,255,255)
25050 locate 1,3
25060 print "上司の生まれた年代(西暦4桁):";buf_year$
25070 color rgb(255,255,255)
25080 'locate 4,6:print ":7"
25090 'locate 9,6:print ":8"
25100 'locate 12,6:print ":9"
25110 locate 4,6
25120 print ":7  :8  :9" + chr$(13)
25130 color rgb(255,255,255)
25140 locate 4,8
25150 print ":4  :5  :6" + chr$(13)
25160 color rgb(255,255,255)
25170 locate 4,10
25180 print ":1  :2  :3" + chr$(13)
25190 locate 4,12
25200 print "    :0"
25210 locate 12,12
25220 color rgb(0,0,255)
25230 print ":Ok"
25240 sp_on 4,0: sp_on 5,0:sp_on 6,0
25250 sp_on 7,0:sp_on 8,0:sp_on 9,0
25260 sp_on 10,0:sp_on 11,0:sp_on 12,0
25270 sp_on 13,0:sp_on 14,1
25280 Jyoushi_Input_Seireki2:
25290 key$="":bg=0:y=0:y2=0:bg2=0:
25300 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
25310 key$ = inkey$
25320 bg = strig(1)
25330 y = stick(1)
25340 y2 = stick(0)
25350 bg2=strig(0)
25360 pause 5
25370 wend
25380 '十字キー　ここから
25390 '上の矢印　または、十字キー上
25400 if ((y = -1) or (key$ = chr$(30))) then
25410 select case No
25420 'No=-1:okのとき:初期の状態
25430 '0kボタンから３に移動
25440 '上に行く 処理
25450 case -1:
25460 No=3:sp_on 12,1:sp_on 14,0
25470 pause 200:goto Jyoushi_Input_Seireki2:
25480 '選択肢:3
25490 '3ボタンから 6に移動
25500 case 3:
25510 No=6:sp_on 12,0:sp_on 11,1
25520 pause 200:goto Jyoushi_Input_Seireki2:
25530 '6ボタンから ９に移動
25540 case 6:
25550 No=9:sp_on 10,1:sp_on 11,0
25560 pause 200:goto Jyoushi_Input_Seireki2:
25570 '6ボタンから ９に移動　ここまで
25580 '9で上を押して何もしない
25590 case 9:
25600 '何もしない
25610 No=9
25620 pause 200:goto Jyoushi_Input_Seireki2:
25630 '9で上を押しても何もしない　ここまで
25640 '上　 0ボタンから2ボタン
25650 'sp_on 6,1:1
25660 'sp_on 8,1:5
25670 'sp_on 7,1:7
25680 case 0:
25690 No=2:sp_on 13,0:sp_on 9,1:
25700 pause 200:goto Jyoushi_Input_Seireki2:
25710 '上  0ボタンから2ボタン　ここまで
25720 '2から５になる 上
25730 case 2:
25740 No=5:sp_on 8,1:sp_on 9,0:
25750 pause 200:goto Jyoushi_Input_Seireki2:
25760 case 5:
25770 No=8:sp_on 7,1:sp_on 8,0
25780 pause 200:goto Jyoushi_Input_Seireki2:
25790 case 8:
25800 pause 200:goto Jyoushi_Input_Seireki2:
25810 case 1:
25820 No=4:sp_on 5,1:sp_on 6,0
25830 pause 200:goto Jyoushi_Input_Seireki2:
25840 case 4:
25850 No=7:sp_on 4,1:sp_on 5,0
25860 pause 200:goto Jyoushi_Input_Seireki2:
25870 case 7:
25880 pause 200:goto Jyoushi_Input_Seireki2:
25890 end select
25900 endif
25910 '左３　ここまで
25920 '下の矢印
25930 '中央 2
25940 if ((y=1) or (key$ = chr$(31))) then
25950 select case No
25960 '9から６に下げる
25970 case 9:
25980 No=6:sp_on 11,1:sp_on 10,0
25990 pause 200:goto Jyoushi_Input_Seireki2:
26000 '6から３に下げる
26010 case 6:
26020 No=3:sp_on 12,1:sp_on 11,0
26030 pause 200:goto Jyoushi_Input_Seireki2:
26040 '3から０ｋに変える
26050 case 3:
26060 No=-1:sp_on 14,1:sp_on 12,0
26070 pause 200:goto Jyoushi_Input_Seireki2:
26080 'Okから下のボタンを押しても何もしない
26090 case -1:
26100 pause 200:goto Jyoushi_Input_Seireki2:
26110 case 8:
26120 No=5:sp_on 8,1:sp_on 7,0
26130 pause 200:goto Jyoushi_Input_Seireki2:
26140 case 5:
26150 No=2:sp_on 9,1:sp_on 8,0
26160 pause 200:goto Jyoushi_Input_Seireki2:
26170 case 2:
26180 No=0:sp_on 13,1:sp_on 9,0
26190 pause 200:goto Jyoushi_Input_Seireki2:
26200 case 0:
26210 pause 200:goto Jyoushi_Input_Seireki2:
26220 case 7:
26230 No=4:sp_on 5,1:sp_on 4,0
26240 pause 200:goto Jyoushi_Input_Seireki2:
26250 case 4:
26260 No=1:sp_on 6,1:sp_on 5,0
26270 pause 200:goto Jyoushi_Input_Seireki2:
26280 case 1:
26290 pause 200:goto Jyoushi_Input_Seireki2:
26300 end select
26310 endif
26320 '左へボタン 十字キー　左　or 　カーソル左
26330 if ((y2 = -1) or (key$ = chr$(29))) then
26340 select case No
26350 'Ok ボタン  Okから　左　０に行く
26360 case -1:
26370 No=0:sp_on 13,1:sp_on 14,0
26380 pause 200:goto Jyoushi_Input_Seireki2:
26390 '0 ボタン  左　何もしない
26400 case 0:
26410 pause 200:goto Jyoushi_Input_Seireki2:
26420 case 3:
26430 No=2:sp_on 9,1:sp_on 12,0:
26440 pause 200:goto Jyoushi_Input_Seireki2:
26450 case 2:
26460 No=1:sp_on 6,1:sp_on 9,0:
26470 pause 200:goto Jyoushi_Input_Seireki2:
26480 case 1:
26490 pause 200:goto Jyoushi_Input_Seireki2:
26500 case 6:
26510 No=5:sp_on 8,1:sp_on 11,0
26520 pause 200:goto Jyoushi_Input_Seireki2:
26530 case 5:
26540 No=4:sp_on 5,1:sp_on 8,0
26550 pause 200:goto Jyoushi_Input_Seireki2:
26560 case 4:
26570 pause 200:goto Jyoushi_Input_Seireki2:
26580 case 9:
26590 No=8:sp_on 7,1:sp_on 10,0
26600 pause 200:goto Jyoushi_Input_Seireki2:
26610 case 8:
26620 No=7:sp_on 4,1:sp_on 7,0
26630 pause 200:goto Jyoushi_Input_Seireki2:
26640 case 7:
26650 pause 200:goto Jyoushi_Input_Seireki2:
26660 end select
26670 endif
26680 '右  十字キー　右　or カーソル　右
26690 if ((y2 = 1) or (key$ = chr$(28))) then
26700 select case No
26710 '0ボタンからokボタン右に移動
26720 case 0:
26730 No=-1:sp_on 14,1:sp_on 13,0
26740 pause 200:goto Jyoushi_Input_Seireki2:
26750 '0ボタンからokボタン 右に移動　ここまで
26760 'OKボタンで右を押して何もしない
26770 case -1:
26780 pause 200:goto Jyoushi_Input_Seireki2:
26790 case 1:
26800 No=2:sp_on 9,1:sp_on 6,0
26810 pause 200:goto Jyoushi_Input_Seireki2:
26820 case 2:
26830 No=3:sp_on 12,1:sp_on 9,0
26840 pause 200:goto Jyoushi_Input_Seireki2:
26850 case 3:
26860 pause 200:goto Jyoushi_Input_Seireki2:
26870 case 4:
26880 No=5:sp_on 8,1:sp_on 5,0
26890 pause 200:goto Jyoushi_Input_Seireki2:
26900 case 5:
26910 No=6:sp_on 11,1:sp_on 8,0
26920 pause 200:goto Jyoushi_Input_Seireki2:
26930 case 7:
26940 No=8:sp_on 7,1:sp_on 4,0
26950 pause 200:goto Jyoushi_Input_Seireki2:
26960 case 8:
26970 No=9:sp_on 10,1:sp_on 7,0
26980 pause 200:goto Jyoushi_Input_Seireki2:
26990 case 9:
27000 pause 200:goto Jyoushi_Input_Seireki2:
27010 case 6:
27020 pause 200:goto Jyoushi_Input_Seireki2:
27030 end select
27040 'Okから右ボタンを押して何もしない ここまで
27050 endif
27060 '十字キー　ここまで
27070 '==============================
27080 'ここから
27090 '==============================
27100 if ((bg=2) or (key$=chr$(13))) then
27110 select case count
27120 case 0:
27130 count = 1
27140 if (No=-1) then
27150 count = 0:No=0
27160 buf_Jyoushi_Born_Day(0) = No
27170 'Okボタンを押したとき
27180 goto Jyoushi_Input_Seireki2:
27190 else
27200 'Okボタン以外が押されたとき
27210 if (No>=1 and No<=2) then
27220 buf_year$="":buf_year$=str$(No) + "***"
27230 buf_year = No:a= No
27240 buf_Jyoushi_Born_Day(0) = No
27250 locate 1,3
27260 color rgb(255,255,255)
27270 print "上司の生まれた年代(西暦4桁):";buf_year$
27280 goto Jyoushi_Input_Seireki2:
27290 else
27300 count=0
27310 ui_msg"数字が範囲外になります。"
27320 buf_year$="":buf_year=0
27330 goto Jyoushi_Input_Seireki2:
27340 endif
27350 endif
27360 case 1:
27370 count = 2
27380 if (No = -1) then
27390 count = 1
27400 goto Jyoushi_Input_Seireki2:
27410 else
27420 buf_year = a * 10 + No
27430 b=buf_year
27440 buf_year$ = str$(buf_year) + "**"
27450 buf_Jyoushi_Born_Day(0)=buf_year
27460 locate 1,3
27470 color rgb(255,255,255)
27480 print "                                                                "
27490 locate 1,3
27500 print "上司の生まれた年代(西暦4桁):" + buf_year$
27510 'if (No = -1) then
27520 'count=1
27530 goto Jyoushi_Input_Seireki2:
27540 endif
27550 case 2:
27560 count=3
27570 if (No=-1) then
27580 count =2
27590 goto Jyoushi_Input_Seireki2:
27600 else
27610 buf_year = b * 10 + No
27620 c=buf_year
27630 buf_year$ = str$(buf_year) + "*"
27640 buf_Jyoushi_Born_Day(0) = buf_year
27650 locate 1,3
27660 color rgb(255,255,255)
27670 print "                                        "
27680 locate 1,3
27690 print "上司の生まれた年代(西暦4桁):";buf_year$
27700 goto Jyoushi_Input_Seireki2:
27710 endif
27720 case 3:
27730 count=4
27740 if (No = -1) then
27750 No=0
27760 goto Jyoushi_Input_Seireki2:
27770 else
27780 buf_year = c * 10 + No
27790 buf_year$ = str$(buf_year)
27800 buf_Jyoushi_Born_Day(0) = buf_year
27810 locate 1,3
27820 color RGB(255,255,255)
27830 print "                                      "
27840 locate 1,3
27850 print "上司の生まれた年代(西暦4桁):";buf_year$
27860 buf_year=val(buf_year$)
27870 'year=val(buf_year$)
27880 'if (No=-1) then
27890 'goto Input_Born_Month:
27900 'else
27910 goto Jyoushi_Input_Seireki2:
27920 endif
27930 case 4:
27940 'bufyear=buf_year
27950 if (No=-1) then
27960 buf_year = val(buf_year$)
27970 buf_Jyoushi_Born_Day(0)=buf_year
27980 sp_on 14,0:No=0
27990 goto Jyoushi_Input_Born_Month:
28000 else
28010 goto Jyoushi_Input_Seireki2:
28020 endif
28030 end select
28040 endif
28050 '===========================
28060 'ここまでを部下のところにコピーする.
28070 '===========================
28080 if (bg2 = 2) then
28090 select case count2
28100 case 0:
28110 if (No = -1) then
28120 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
28130 count=0
28140 locate 1,3
28150 color rgb(255,255,255)
28160 print "                                      "
28170 locate 1,3
28180 print "上司の生まれた年代（西暦4桁):" + buf_year$
28190 goto Jyoushi_Input_Seireki2:
28200 else
28210 '(buf_year=0) then
28220 buf_year=0:buf_year$="****"
28230 locate 1,3
28240 print "                                       "
28250 locate 1,3
28260 print "上司の生まれた年代(西暦4桁):"+buf_year$
28270 goto Jyoushi_Input_Seireki2:
28280 'endif
28290 endif
28300 end select
28310 endif
28320 'Input"上司の生れた年代(4桁,〜2025年):",year
28330 'if year > 2025 then goto Jyoushi_Input_Seireki:
28340 'if year = 123 then cls 3:cls 4:goto Main_Screen:
28350 '"4桁目"
28360 'bufyear4 = fix(year / 1000)
28370 '"3桁目"
28380 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
28390 '"2桁目"
28400 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
28410 '"1桁目"
28420 'bufyear1 = fix((year - ((bufyear4*
28430 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
28440 '2.生まれた月を入力
28450 Jyoushi_Input_Born_Month:
28460 cls 3:play "":count=0:count2=0
28470 'No=-1:Okのとき
28480 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
28490 for i=0 to 1
28500 buf_month(i)=0
28510 next i
28520 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
28530 gload Gazo$ + "Screen1.png",0,0,0
28540 gload Gazo$ + "downscreen.png",0,0,800
28550 'Init"kb:4"
28560 '音声ファイル再生 2023.06.07
28570 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
28580 font 48
28590 locate 0,1
28600 '文字色：黒　 color rgb(0,0,0)
28610 '文字色:白
28620 color rgb(255,255,255)
28630 print "上司の生まれた月を入れて下さい" + chr$(13)
28640 '文字色:白
28650 color rgb(255,255,255)
28660 locate 1,3
28670 '文字色:白
28680 print "上司の生まれた月(1月~12月):"+buf_Month$
28690 color rgb(255,255,255)
28700 'locate 4,6:print ":7"
28710 'locate 9,6:print ":8"
28720 'locate 12,6:print ":9"
28730 locate 4,6
28740 '文字色:赤
28750 print ":7  :8  :9" + chr$(13)
28760 color rgb(255,255,255)
28770 locate 4,8
28780 print ":4  :5  :6" + chr$(13)
28790 color rgb(255,255,255)
28800 locate 4,10
28810 print ":1  :2  :3" + chr$(13)
28820 locate 4,12
28830 print "    :0"
28840 locate 12,12
28850 color rgb(0,0,255)
28860 print ":Ok"
28870 sp_on 4,0: sp_on 5,0:sp_on 6,0
28880 sp_on 7,0:sp_on 8,0:sp_on 9,0
28890 sp_on 10,0:sp_on 11,0:sp_on 12,0
28900 sp_on 13,0:sp_on 14,1
28910 Jyoushi_Input_Born_Month2:
28920 key$="":bg=0:y=0:y2=0:bg2=0
28930 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
28940 key$ = inkey$
28950 bg = strig(1)
28960 y = stick(1)
28970 y2 = stick(0)
28980 bg2 = strig(0)
28990 pause 5
29000 wend
29010 '十字キー　ここから
29020 '上の矢印　または、十字キー上
29030 if ((y = -1) or (key$ = chr$(30))) then
29040 select case No
29050 'No=-1:okのとき:初期の状態
29060 '0kボタンから３に移動
29070 '上に行く 処理
29080 case -1:
29090 No=3:sp_on 12,1:sp_on 14,0
29100 pause 200:goto Jyoushi_Input_Born_Month2:
29110 '選択肢:3
29120 '3ボタンから 6に移動
29130 case 3:
29140 No=6:sp_on 12,0:sp_on 11,1
29150 pause 200:goto Jyoushi_Input_Born_Month2:
29160 '6ボタンから ９に移動
29170 case 6:
29180 No=9:sp_on 10,1:sp_on 11,0
29190 pause 200:goto Jyoushi_Input_Born_Month2:
29200 '6ボタンから ９に移動　ここまで
29210 '9で上を押して何もしない
29220 case 9:
29230 '何もしない
29240 No=9
29250 pause 200:goto Jyoushi_Input_Born_Month2:
29260 '9で上を押しても何もしない　ここまで
29270 '上　 0ボタンから2ボタン
29280 'sp_on 6,1:1
29290 'sp_on 8,1:5
29300 'sp_on 7,1:7
29310 case 0:
29320 No=2:sp_on 13,0:sp_on 9,1:
29330 pause 200:goto Jyoushi_Input_Born_Month2:
29340 '上  0ボタンから2ボタン　ここまで
29350 '2から５になる 上
29360 case 2:
29370 No=5:sp_on 8,1:sp_on 9,0:
29380 pause 200:goto Jyoushi_Input_Born_Month2:
29390 case 5:
29400 No=8:sp_on 7,1:sp_on 8,0
29410 pause 200:goto Jyoushi_Input_Born_Month2:
29420 case 8:
29430 pause 200:goto Input_Born_Month2:
29440 case 1:
29450 No=4:sp_on 5,1:sp_on 6,0
29460 pause 200:goto Jyoushi_Input_Born_Month2:
29470 case 4:
29480 No=7:sp_on 4,1:sp_on 5,0
29490 pause 200:goto Jyoushi_Input_Born_Month2:
29500 case 7:
29510 pause 200:goto Input_Born_Month2:
29520 end select
29530 endif
29540 '左３　ここまで
29550 '下の矢印
29560 '中央 2
29570 if ((y=1) or (key$ = chr$(31))) then
29580 select case No
29590 '9から６に下げる
29600 case 9:
29610 No=6:sp_on 11,1:sp_on 10,0
29620 pause 200:goto Jyoushi_Input_Born_Month2:
29630 '6から３に下げる
29640 case 6:
29650 No=3:sp_on 12,1:sp_on 11,0
29660 pause 200:goto Jyoushi_Input_Born_Month2:
29670 '3から０ｋに変える
29680 case 3:
29690 No=-1:sp_on 14,1:sp_on 12,0
29700 pause 200:goto Jyoushi_Input_Born_Month2:
29710 'Okから下のボタンを押しても何もしない
29720 case -1:
29730 pause 200:goto Jyoushi_Input_Born_Month2:
29740 case 8:
29750 No=5:sp_on 8,1:sp_on 7,0
29760 pause 200:goto Jyoushi_Input_Born_Month2:
29770 case 5:
29780 No=2:sp_on 9,1:sp_on 8,0
29790 pause 200:goto Jyoushi_Input_Born_Month2:
29800 case 2:
29810 No=0:sp_on 13,1:sp_on 9,0
29820 pause 200:goto Jyoushi_Input_Born_Month2:
29830 case 0:
29840 pause 200:goto Jyoushi_Input_Born_Month2:
29850 case 7:
29860 No=4:sp_on 5,1:sp_on 4,0
29870 pause 200:goto Jyoushi_Input_Born_Month2:
29880 case 4:
29890 No=1:sp_on 6,1:sp_on 5,0
29900 pause 200:goto Jyoushi_Input_Born_Month2:
29910 case 1:
29920 pause 200:goto Jyoushi_Input_Born_Month2:
29930 end select
29940 endif
29950 '左へボタン 十字キー　左　or 　カーソル左
29960 if ((y2 = -1) or (key$ = chr$(29))) then
29970 select case No
29980 'Ok ボタン  Okから　左　０に行く
29990 case -1:
30000 No=0:sp_on 13,1:sp_on 14,0
30010 pause 200:goto Jyoushi_Input_Born_Month2:
30020 '0 ボタン  左　何もしない
30030 case 0:
30040 pause 200:goto Jyoushi_Input_Born_Month2:
30050 case 3:
30060 No=2:sp_on 9,1:sp_on 12,0:
30070 pause 200:goto Jyoushi_Input_Born_Month2:
30080 case 2:
30090 No=1:sp_on 6,1:sp_on 9,0:
30100 pause 200:goto Jyoushi_Input_Born_Month2:
30110 case 1:
30120 pause 200:goto Jyoushi_Input_Born_Month2:
30130 case 6:
30140 No=5:sp_on 8,1:sp_on 11,0
30150 pause 200:goto Jyoushi_Input_Born_Month2:
30160 case 5:
30170 No=4:sp_on 5,1:sp_on 8,0
30180 pause 200:goto Jyoushi_Input_Born_Month2:
30190 case 4:
30200 pause 200:goto Jyoushi_Input_Born_Month2:
30210 case 9:
30220 No=8:sp_on 7,1:sp_on 10,0
30230 pause 200:goto Input_Born_Month2:
30240 case 8:
30250 No=7:sp_on 4,1:sp_on 7,0
30260 pause 200:goto Jyoushi_Input_Born_Month2:
30270 case 7:
30280 pause 200:goto Jyoushi_Input_Born_Month2:
30290 end select
30300 endif
30310 '右  十字キー　右　or カーソル　右
30320 if ((y2 = 1) or (key$ = chr$(28))) then
30330 select case No
30340 '0ボタンからokボタン右に移動
30350 case 0:
30360 No=-1:sp_on 14,1:sp_on 13,0
30370 pause 200:goto Jyoushi_Input_Born_Month2:
30380 '0ボタンからokボタン 右に移動　ここまで
30390 'OKボタンで右を押して何もしない
30400 case -1:
30410 pause 200:goto Jyoushi_Input_Born_Month2:
30420 case 1:
30430 No=2:sp_on 9,1:sp_on 6,0
30440 pause 200:goto Jyoushi_Input_Born_Month2:
30450 case 2:
30460 No=3:sp_on 12,1:sp_on 9,0
30470 pause 200:goto Jyoushi_Input_Born_Month2:
30480 case 3:
30490 pause 200:goto Jyoushi_Input_Born_Month2:
30500 case 4:
30510 No=5:sp_on 8,1:sp_on 5,0
30520 pause 200:goto Jyoushi_Input_Born_Month2:
30530 case 5:
30540 No=6:sp_on 11,1:sp_on 8,0
30550 pause 200:goto Jyoushi_Input_Born_Month2:
30560 case 7:
30570 No=8:sp_on 7,1:sp_on 4,0
30580 pause 200:goto Jyoushi_Input_Born_Month2:
30590 case 8:
30600 No=9:sp_on 10,1:sp_on 7,0
30610 pause 200:goto Jyoushi_Input_Born_Month2:
30620 case 9:
30630 pause 200:goto Jyoushi_Input_Born_Month2:
30640 case 6:
30650 pause 200:goto Jyoushi_Input_Born_Month2:
30660 end select
30670 'Okから右ボタンを押して何もしない ここまで
30680 endif
30690 '十字キー　ここまで
30700 '右の丸ボタン + Enter key 決定キー
30710 if ((bg=2) or (key$=chr$(13))) then
30720 select case count
30730 case 0:
30740 if (No=-1) then No=0
30750 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
30760 if (buf_month > 1 and buf_month < 10)  then
30770 buf_Month$ = str$(buf_month)
30780 'buf_month=No
30790 endif
30800 if (buf_month = 1)  then
30810 buf_Month$ = str$(buf_month) + "*"
30820 'c=buf_month
30830 endif
30840 locate 1,3
30850 print "                                     "
30860 color RGB(255,255,255)
30870 locate 1,3
30880 print "上司の生まれた月(1月~12月):" + buf_Month$
30890 goto Jyoushi_Input_Born_Month2:
30900 case 1:
30910 count = 2:
30920 'c = val(buf_Month$)
30930 if (No = -1) then
30940 'count=0
30950 No=0
30960 month=buf_month
30970 buf_month=val(buf_Month$)
30980 month=buf_month
30990 buf_Jyoushi_Born_Day(1)=month
31000 '生まれた日に飛ぶ
31010 goto Jyoushi_Input_Born_Day:
31020 else
31030 buf_month = c*10 + No
31040 'if (buf_month = 1) then
31050 'buf_Month$ = str$(buf_month)
31060 'endif
31070 buf_Month$ = str$(buf_month)
31080 buf_Jyoushi_Born_Day(1) = buf_month
31090 locate 0,3
31100 print "                                           "
31110 locate 1,3
31120 color Rgb(255,255,255)
31130 print "上司の生まれた月(1月~12月):" + buf_Month$
31140 goto Jyoushi_Input_Born_Month2:
31150 endif
31160 case 2:
31170 '==================================
31180 '何もしない
31190 'coun = 2
31200 '==================================
31210 'c= val(buf_Month$)
31220 'buf_month = c*10 + No
31230 'buf_Month$ = str$(buf_month)
31240 'locate 2,3
31250 'print "上司の生まれた月(1月～12月):";buf_Month$
31260 'goto Jyoushi_Input_Born_Month2:
31270 'case 3:
31280 'count=4
31290 'b=val(buf_month$)
31300 'buf_month=c*10+No
31310 'buf_Month$=str$(buf_month)
31320 'locate 2,3
31330 'print "上司の生まれた月(1月～12月):";buf_Month$
31340 'buf_month=val(buf_Month$)
31350 'year=val(buf_year$)
31360 if (No=-1) then
31370 No=0
31380 goto Jyoushi_Input_Born_Day:
31390 else
31400 goto Jyoushi_Input_Born_Month2:
31410 endif
31420 'case 4:
31430 'bufyear=buf_year
31440 'if (No=-1) then
31450 'buf_month = val(buf_Month$)
31460 'month = buf_month
31470 'sp_on 14,0
31480 'goto Input_Born_Day:
31490 'else
31500 'goto Input_Born_Month2:
31510 'endif
31520 end select
31530 endif
31540 '左の丸ボタン　キャンセル
31550 if (bg2=2) then
31560 select case count2
31570 case 0:
31580 if (No = -1) then
31590 buf_month=0:buf_Month$="**"
31600 count=0
31610 'goto rewrite2:
31620 else
31630 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
31640 buf_month = 0:buf_Month$ = "**"
31650 locate 0,3
31660 color rgb(255,255,255)
31670 print "                                       "
31680 goto rewrite2:
31690 if (No>12) then
31700 ui_msg"値が範囲外です。"
31710 goto rewrite2:
31720 endif
31730 endif
31740 endif
31750 rewrite2:
31760 locate 2,3
31770 color rgb(255,255,255)
31780 print "                                      "
31790 locate 2,3
31800 print "上司の生まれた月(1月~12月):"+buf_Month$
31810 goto Jyoushi_Input_Born_Month2:
31820 end select
31830 'endif
31840 endif
31850 end
31860 'end
31870 '生れた日を入力
31880 Jyoushi_Input_Born_Day:
31890 '生まれた日入力
31900 cls 3:play ""
31910 'No=-1:Okのとき
31920 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
31930 for i=0 to 1
31940 buf_day(i)=0
31950 next i
31960 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
31970 gload Gazo$ + "Screen1.png",0,0,0
31980 gload Gazo$ + "downscreen.png",0,0,800
31990 'Init"kb:2"
32000 '音声ファイル再生 2023.06.07
32010 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
32020 font 48
32030 locate 1,1
32040 '文字色：黒　 color rgb(0,0,0)
32050 color rgb(255,255,255)
32060 print "上司の生まれた日を入れて下さい" + chr$(13)
32070 locate 1,3
32080 color rgb(255,255,255)
32090 print "                                      "
32100 locate 1,3
32110 print "上司の生まれた日(1日~31日):"+buf_Day$
32120 color rgb(255,255,255)
32130 'locate 4,6:print ":7"
32140 'locate 9,6:print ":8"
32150 'locate 12,6:print ":9"
32160 locate 4,6
32170 print ":7  :8  :9" + chr$(13)
32180 color rgb(255,255,255)
32190 locate 4,8
32200 print ":4  :5  :6" + chr$(13)
32210 color rgb(255,255,255)
32220 locate 4,10
32230 print ":1  :2  :3" + chr$(13)
32240 locate 4,12
32250 print "    :0"
32260 locate 12,12
32270 color rgb(0,0,255)
32280 print ":Ok"
32290 sp_on 4,0: sp_on 5,0:sp_on 6,0
32300 sp_on 7,0:sp_on 8,0:sp_on 9,0
32310 sp_on 10,0:sp_on 11,0:sp_on 12,0
32320 sp_on 13,0:sp_on 14,1
32330 Jyoushi_Input_Born_Day2:
32340 key$="":bg=0:y=0:y2=0:bg2=0:
32350 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
32360 key$ = inkey$
32370 bg = strig(1)
32380 y = stick(1)
32390 y2 = stick(0)
32400 bg2 = strig(0)
32410 pause 5
32420 wend
32430 '十字キー　ここから
32440 '上の矢印　または、十字キー上
32450 if ((y = -1) or (key$ = chr$(30))) then
32460 select case No
32470 'No=-1:okのとき:初期の状態
32480 '0kボタンから３に移動
32490 '上に行く 処理
32500 case -1:
32510 No=3:sp_on 12,1:sp_on 14,0
32520 pause 200:goto Jyoushi_Input_Born_Day2:
32530 '選択肢:3
32540 '3ボタンから 6に移動
32550 case 3:
32560 No=6:sp_on 12,0:sp_on 11,1
32570 pause 200:goto Jyoushi_Input_Born_Day2:
32580 '6ボタンから ９に移動
32590 case 6:
32600 No=9:sp_on 10,1:sp_on 11,0
32610 pause 200:goto Jyoushi_Input_Born_Day2:
32620 '6ボタンから ９に移動　ここまで
32630 '9で上を押して何もしない
32640 case 9:
32650 '何もしない
32660 No=9
32670 pause 200:goto Jyoushi_Input_Born_Day2:
32680 '9で上を押しても何もしない　ここまで
32690 '上　 0ボタンから2ボタン
32700 'sp_on 6,1:1
32710 'sp_on 8,1:5
32720 'sp_on 7,1:7
32730 case 0:
32740 No=2:sp_on 13,0:sp_on 9,1:
32750 pause 200:goto Jyoushi_Input_Born_Day2:
32760 '上  0ボタンから2ボタン　ここまで
32770 '2から５になる 上
32780 case 2:
32790 No=5:sp_on 8,1:sp_on 9,0:
32800 pause 200:goto Jyoushi_Input_Born_Day2:
32810 case 5:
32820 No=8:sp_on 7,1:sp_on 8,0
32830 pause 200:goto Jyoushi_Input_Born_Day2:
32840 case 8:
32850 pause 200:goto Jyoushi_Input_Born_Day2:
32860 case 1:
32870 No=4:sp_on 5,1:sp_on 6,0
32880 pause 200:goto Jyoushi_Input_Born_Day2:
32890 case 4:
32900 No=7:sp_on 4,1:sp_on 5,0
32910 pause 200:goto Jyoushi_Input_Born_Day2:
32920 case 7:
32930 pause 200:goto Jyoushi_Input_Born_Day2:
32940 end select
32950 endif
32960 '左３　ここまで
32970 '下の矢印
32980 '中央 2
32990 if ((y=1) or (key$ = chr$(31))) then
33000 select case No
33010 '9から６に下げる
33020 case 9:
33030 No=6:sp_on 11,1:sp_on 10,0
33040 pause 200:goto Jyoushi_Input_Born_Day2:
33050 '6から３に下げる
33060 case 6:
33070 No=3:sp_on 12,1:sp_on 11,0
33080 pause 200:goto Jyoushi_Input_Born_Day2:
33090 '3から０ｋに変える
33100 case 3:
33110 No=-1:sp_on 14,1:sp_on 12,0
33120 pause 200:goto Jyoushi_Input_Born_Day2:
33130 'Okから下のボタンを押しても何もしない
33140 case -1:
33150 pause 200:goto Jyoushi_Input_Born_Day2:
33160 case 8:
33170 No=5:sp_on 8,1:sp_on 7,0
33180 pause 200:goto Jyoushi_Input_Born_Day2:
33190 case 5:
33200 No=2:sp_on 9,1:sp_on 8,0
33210 pause 200:goto Jyoushi_Input_Born_Day2:
33220 case 2:
33230 No=0:sp_on 13,1:sp_on 9,0
33240 pause 200:goto Jyoushi_Input_Born_Day2:
33250 case 0:
33260 pause 200:goto Jyoushi_Input_Born_Day2:
33270 case 7:
33280 No=4:sp_on 5,1:sp_on 4,0
33290 pause 200:goto Jyoushi_Input_Born_Day2:
33300 case 4:
33310 No=1:sp_on 6,1:sp_on 5,0
33320 pause 200:goto Jyoushi_Input_Born_Day2:
33330 case 1:
33340 pause 200:goto Jyoushi_Input_Born_Day2:
33350 end select
33360 endif
33370 '左へボタン 十字キー　左　or 　カーソル左
33380 if ((y2 = -1) or (key$ = chr$(29))) then
33390 select case No
33400 'Ok ボタン  Okから　左　０に行く
33410 case -1:
33420 No=0:sp_on 13,1:sp_on 14,0
33430 pause 200:goto Jyoushi_Input_Born_Day2:
33440 '0 ボタン  左　何もしない
33450 case 0:
33460 pause 200:goto Jyoushi_Input_Born_Day2:
33470 case 3:
33480 No=2:sp_on 9,1:sp_on 12,0:
33490 pause 200:goto Jyoushi_Input_Born_Day2:
33500 case 2:
33510 No=1:sp_on 6,1:sp_on 9,0:
33520 pause 200:goto Jyoushi_Input_Born_Day2:
33530 case 1:
33540 pause 200:goto Jyoushi_Input_Born_Day2:
33550 case 6:
33560 No=5:sp_on 8,1:sp_on 11,0
33570 pause 200:goto Jyoushi_Input_Born_Day2:
33580 case 5:
33590 No=4:sp_on 5,1:sp_on 8,0
33600 pause 200:goto Jyoushi_Input_Born_Day2:
33610 case 4:
33620 pause 200:goto Jyoushi_Input_Born_Day2:
33630 case 9:
33640 No=8:sp_on 7,1:sp_on 10,0
33650 pause 200:goto Jyoushi_Input_Born_Day2:
33660 case 8:
33670 No=7:sp_on 4,1:sp_on 7,0
33680 pause 200:goto Jyoushi_Input_Born_Day2:
33690 case 7:
33700 pause 200:goto Jyoushi_Input_Born_Day2:
33710 end select
33720 endif
33730 '右  十字キー　右　or カーソル　右
33740 if ((y2 = 1) or (key$ = chr$(28))) then
33750 select case No
33760 '0ボタンからokボタン右に移動
33770 case 0:
33780 No=-1:sp_on 14,1:sp_on 13,0
33790 pause 200:goto Jyoushi_Input_Born_Day2:
33800 '0ボタンからokボタン 右に移動　ここまで
33810 'OKボタンで右を押して何もしない
33820 case -1:
33830 pause 200:goto Jyoushi_Input_Born_Day2:
33840 case 1:
33850 No=2:sp_on 9,1:sp_on 6,0
33860 pause 200:goto Jyoushi_Input_Born_Day2:
33870 case 2:
33880 No=3:sp_on 12,1:sp_on 9,0
33890 pause 200:goto Jyoushi_Input_Born_Day2:
33900 case 3:
33910 pause 200:goto Jyoushi_Input_Born_Day2:
33920 case 4:
33930 No=5:sp_on 8,1:sp_on 5,0
33940 pause 200:goto Jyoushi_Input_Born_Day2:
33950 case 5:
33960 No=6:sp_on 11,1:sp_on 8,0
33970 pause 200:goto Jyoushi_Input_Born_Day2:
33980 case 7:
33990 No=8:sp_on 7,1:sp_on 4,0
34000 pause 200:goto Jyoushi_Input_Born_Day2:
34010 case 8:
34020 No=9:sp_on 10,1:sp_on 7,0
34030 pause 200:goto Jyoushi_Input_Born_Day2:
34040 case 9:
34050 pause 200:goto Jyoushi_Input_Born_Day2:
34060 case 6:
34070 pause 200:goto Jyoushi_Input_Born_Day2:
34080 end select
34090 'Okから右ボタンを押して何もしない ここまで
34100 endif
34110 '十字キー　ここまで
34120 '右の丸ボタンを押したとき
34130 if ((bg = 2) or (key$ = chr$(13))) then
34140 'count :決定ボタンを押した回数
34150 select case (count)
34160 '1桁目入力
34170 case 0:
34180 count = 1:
34190 if (No = -1) then
34200 '1桁目　OKでは何もしない
34210 No=c
34220 'goto Jyoushi_Input_Born_Day2:
34230 else
34240 'ok以外のボタンを押したとき
34250 buf_day = No:buf_Day$ = str$(No)
34260 buf_Jyoushi_Born_Day(2)=buf_day
34270 c=No
34280 locate 1,3
34290 print "                                      "
34300 color RGB(255,255,255)
34310 locate 1,3
34320 print "上司の生まれた日(1日~31日):" + buf_Day$
34330 endif
34340 'check2:
34350 'if (buf_day >= 1 and buf_day <= 9) then
34360 'sp_on 14,0
34370 'goto complate_jyoushi:
34380 'else
34390 'sp_on 14,0
34400 goto Jyoushi_Input_Born_Day2:
34410 'end
34420 'endif
34430 case 1:
34440 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
34450 count = 2:
34460 'locate 2,3
34470 'color RGB(255,255,255)
34480 'print "生まれた日(1日~31日):";buf_Day$
34490 'Okボタンを押したときの処理
34500 '入力値　10未満のとき
34510 'buf_day = c * 10 + No
34520 if (No = -1) then
34530 c=buf_day:No=0
34540 'buf_day = c
34550 buf_Day$ = str$(buf_day)
34560 '10以下のとき
34570 'if (buf_day < 10) then
34580 sp_on 14,0
34590 goto complate_jyoushi:
34600 'end
34610 'endif
34620 else
34630 'c=No
34640 buf_day = c * 10 + No
34650 buf_Day$ = str$(buf_day)
34660 'buf_day = c:buf_Day$=str$(buf_day)
34670 buf_Jyoushi_Born_Day(2)=buf_day
34680 locate 1,3
34690 print "                                           "
34700 locate 1,3
34710 color Rgb(255,255,255)
34720 print "上司の生まれた日(1日~31日):" + buf_Day$
34730 goto Jyoushi_Input_Born_Day2:
34740 'goto
34750 endif
34760 'endif
34770 '生まれた日　2桁目の数字　or 1桁の数字 + ok
34780 case 2:
34790 'buf_day = c * 10 + No
34800 'buf_Jyoushi_Born_Day(2)=buf_day
34810 'locate 1,3
34820 'print "                                      "
34830 'locate 1,3
34840 'locate 2,3
34850 'print "生まれた日(1日〜31日):";buf_Day
34860 'No=-1:ok ボタンを押したとき
34870 if (No = -1) then
34880 'if ((buf_day > 0) and (buf_day < 32)) then
34890 No=0
34900 sp_on 14,0
34910 goto complate_jyoushi:
34920 'end
34930 else
34940 goto Jyoushi_Input_Born_Day2:
34950 'endif
34960 'Okボタン以外を押したとき
34970 'else
34980 'c=val(buf_Day$)
34990 'buf_day = c * 10 + No
35000 'buf_Jyoushi_Born_Day(2) = buf_day
35010 'buf_Day$ = str$(buf_day)
35020 'locate 1,3
35030 'print "上司の生まれた日(1日~31日):";buf_Day$
35040 'goto Jyoushi_Input_Born_Day2:
35050 endif
35060 'case 3:
35070 'count=4
35080 'c=val(buf_day$)
35090 'buf_day=c*10+No
35100 'buf_day$=str$(buf_day)
35110 'locate 2,3
35120 'print "生まれた日を入れてください:";buf_day$
35130 'year=val(buf_year$)
35140 'if (No = -1) then
35150 'goto Jyoushi_Input_Born_Day:
35160 'sp_on 14,0:
35170 'goto complate_jyoushi:
35180 'else
35190 'goto Jyoushi_Input_Born_Month2:
35200 'endif
35210 'case 4:
35220 'bufyear=buf_year
35230 'if (No=-1) then
35240 'buf_day = val(buf_day$)
35250 'bufday = buf_day
35260 'sp_on 14,0
35270 'goto Jyoushi_Input_Born_Day2:
35280 'else
35290 'goto Jyoushi_Input_Born_Day2:
35300 'endif
35310 end select
35320 endif
35330 if (bg2=2) then
35340 select case count2
35350 case 0:
35360 if (No=-1) then
35370 buf_day=0:buf_Day$="**":No=0
35380 if (buf_day >= 1 and buf_day <= 31) then
35390 count=0
35400 buf_day=0:buf_Day$ = "**"
35410 goto rewrite_day3:
35420 else
35430 buf_day=0:buf_Day$ = "**"
35440 ui_msg"値が範囲外です"
35450 endif
35460 goto rewrite_day3:
35470 else
35480 goto rewrite_day3:
35490 endif
35500 rewrite_day3:
35510 locate 2,3
35520 color rgb(255,255,255)
35530 print "                                      "
35540 locate 2,3
35550 print "生まれた日(1日~31日):" + buf_Day$
35560 goto Jyoushi_Input_Born_Day2:
35570 end select
35580 endif
35590 '--------------------------------------------'
35600 'locate 2,0:color rgb(255,0,0)
35610 'print "上司の生まれた年代を入力"
35620 'color rgb(255,255,255)
35630 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
35640 'locate 2,4:Input "上司の生まれた年:",born_year
35650 '誕生日データーを配列に代入
35660 'buf_Jyoushi_Born_Year:上司の生まれた年代
35670 'buf_Jyoushi_Born_Day(0) = born_year
35680 'born_year = 0
35690 '---------------------------------------------'
35700 'goto Jyoushi_born_month:
35710 '1-2.生まれた月を入力
35720 'Jyoushi_born_month:
35730 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
35740 'init "kb:4"
35750 'locate 2,1:
35760 'color rgb(255,0,0)
35770 'print "上司の生まれた月入力"
35780 'color rgb(255,255,255)
35790 'locate 2,4:print "生まれた月を入力してください"
35800 'locate 2,5
35810 'Input "上司の生まれ月:",born_month
35820 'buf_Jyoushi_Born_Day(1) = born_month
35830 'born_month = 0
35840 'goto Jyoushi_born_day:
35850 'buf_Jyoushi_Born_day
35860 '1-3.生まれた日を入力
35870 'Jyoushi_born_day:
35880 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
35890 'init "kb:4"
35900 'locate 2,1:color rgb(255,0,0)
35910 'print "上司の生まれた日　入力"
35920 'locate 2,4:color rgb(255,255,255)
35930 'print "生まれた日を入力してください"
35940 'locate 2,5
35950 'Input "上司の生まれた日:",born_day
35960 'buf_Jyoushi_Born_Day(2) = born_day
35970 'born_day = 0
35980 'goto buka_born_year:
35990 '2.部下の誕生日入力
36000 '2-1.生まれた年を入力
36010 'buka_born_year:
36020 'cls 3:gload Gazo$+"Screen1.png",0,0,0
36030 'init "kb:2"
36040 'locate 1,1:color rgb(255,0,0)
36050 'print "部下の生まれた年代入力"
36060 'locate 0,4:color rgb(255,255,255)
36070 'print "部下の生まれた年（西暦4桁）を入れてください"
36080 'locate 0,5
36090 'Input "部下の生まれた年(西暦4桁):",born_year
36100 'buf_Buka_Born_Day(0) = born_year
36110 'born_year = 0
36120 '2-2.生まれた月を入力
36130 'buka_born_month:
36140 'cls 3:gload Gazo$+"Screen1.png",0,0,0
36150 'init "kb:2"
36160 'locate 2,1:color rgb(255,0,0)
36170 'print "部下の生まれた月 入力"
36180 'locate 2,4:color rgb(255,255,255)
36190 'print "部下の生まれた月を入力してください"
36200 'locate 2,5:Input "部下の生まれた月:",born_month
36210 'buf_Buka_Born_Day(1) = born_month
36220 '2-3.生まれた日を入力
36230 'buka_born_day:
36240 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
36250 'init "kb:2"
36260 'locate 2,1:color rgb(255,0,0)
36270 'print "生まれた日入力"
36280 'color rgb(255,255,255)
36290 'locate 2,4:print "生まれた日を入力してください"
36300 'locate 2,5:Input "部下の生まれた日:",born_day
36310 'buf_Buka_Born_Day(2) = born_day
36320 'born_day=0:goto Result_Business_Aisyou:
36330 '--------------------------------------------'
36340 complate_jyoushi:
36350 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
36360 buf_Jyoushi = Kabara_Num(a,b,c)
36370 a_1=buf_Jyoushi
36380 goto Buka_Input_Seireki:
36390 '--------------------------------------------'
36400 '部下'
36410 '1.部下の生まれた年代'
36420 Buka_Input_Seireki:
36430 cls 3:play "":count=0:count2=0
36440 init"kb:4"
36450 'No=-1:Okのとき
36460 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
36470 for i=0 to 3
36480 buf_Buka_Born_Day(i)=0
36490 next i
36500 gload Gazo$ + "Screen1.png",0,0,0
36510 gload Gazo$ + "downscreen.png",0,0,800
36520 'Init"kb:2"
36530 '音声ファイル再生 2023.06.07
36540 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
36550 font 48
36560 locate 0,1
36570 '文字色：黒　 color rgb(0,0,0)
36580 color rgb(255,255,255)
36590 print "部下の生まれた年代を入れて下さい" + chr$(13)
36600 color rgb(255,255,255)
36610 locate 1,3
36620 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
36630 color rgb(255,255,255)
36640 'locate 4,6:print ":7"
36650 'locate 9,6:print ":8"
36660 'locate 12,6:print ":9"
36670 locate 4,6
36680 print ":7  :8  :9" + chr$(13)
36690 color rgb(255,255,255)
36700 locate 4,8
36710 print ":4  :5  :6" + chr$(13)
36720 color rgb(255,255,255)
36730 locate 4,10
36740 print ":1  :2  :3" + chr$(13)
36750 locate 4,12
36760 print "    :0"
36770 locate 12,12
36780 color rgb(0,0,255)
36790 print ":Ok"
36800 sp_on 4,0: sp_on 5,0:sp_on 6,0
36810 sp_on 7,0:sp_on 8,0:sp_on 9,0
36820 sp_on 10,0:sp_on 11,0:sp_on 12,0
36830 sp_on 13,0:sp_on 14,1
36840 Buka_Input_Seireki2:
36850 key$="":bg=0:y=0:y2=0:bg2=0:
36860 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
36870 key$ = inkey$
36880 bg = strig(1)
36890 y = stick(1)
36900 y2 = stick(0)
36910 bg2=strig(0)
36920 pause 5
36930 wend
36940 '十字キー　ここから
36950 '上の矢印　または、十字キー上
36960 if ((y = -1) or (key$ = chr$(30))) then
36970 select case No
36980 'No=-1:okのとき:初期の状態
36990 '0kボタンから３に移動
37000 '上に行く 処理
37010 case -1:
37020 No=3:sp_on 12,1:sp_on 14,0
37030 pause 200:goto Buka_Input_Seireki2:
37040 '選択肢:3
37050 '3ボタンから 6に移動
37060 case 3:
37070 No=6:sp_on 12,0:sp_on 11,1
37080 pause 200:goto Buka_Input_Seireki2:
37090 '6ボタンから ９に移動
37100 case 6:
37110 No=9:sp_on 10,1:sp_on 11,0
37120 pause 200:goto Buka_Input_Seireki2:
37130 '6ボタンから ９に移動　ここまで
37140 '9で上を押して何もしない
37150 case 9:
37160 '何もしない
37170 No=9
37180 pause 200:goto Buka_Input_Seireki2:
37190 '9で上を押しても何もしない　ここまで
37200 '上　 0ボタンから2ボタン
37210 'sp_on 6,1:1
37220 'sp_on 8,1:5
37230 'sp_on 7,1:7
37240 case 0:
37250 No=2:sp_on 13,0:sp_on 9,1:
37260 pause 200:goto Buka_Input_Seireki2:
37270 '上  0ボタンから2ボタン　ここまで
37280 '2から５になる 上
37290 case 2:
37300 No=5:sp_on 8,1:sp_on 9,0:
37310 pause 200:goto Buka_Input_Seireki2:
37320 case 5:
37330 No=8:sp_on 7,1:sp_on 8,0
37340 pause 200:goto Buka_Input_Seireki2:
37350 case 8:
37360 pause 200:goto Buka_Input_Seireki2:
37370 case 1:
37380 No=4:sp_on 5,1:sp_on 6,0
37390 pause 200:goto Buka_Input_Seireki2:
37400 case 4:
37410 No=7:sp_on 4,1:sp_on 5,0
37420 pause 200:goto Buka_Input_Seireki2:
37430 case 7:
37440 pause 200:goto Buka_Input_Seireki2:
37450 end select
37460 endif
37470 '左３　ここまで
37480 '下の矢印
37490 '中央 2
37500 if ((y=1) or (key$ = chr$(31))) then
37510 select case No
37520 '9から６に下げる
37530 case 9:
37540 No=6:sp_on 11,1:sp_on 10,0
37550 pause 200:goto Buka_Input_Seireki2:
37560 '6から３に下げる
37570 case 6:
37580 No=3:sp_on 12,1:sp_on 11,0
37590 pause 200:goto Buka_Input_Seireki2:
37600 '3から０ｋに変える
37610 case 3:
37620 No=-1:sp_on 14,1:sp_on 12,0
37630 pause 200:goto Buka_Input_Seireki2:
37640 'Okから下のボタンを押しても何もしない
37650 case -1:
37660 pause 200:goto Buka_Input_Seireki2:
37670 case 8:
37680 No=5:sp_on 8,1:sp_on 7,0
37690 pause 200:goto Buka_Input_Seireki2:
37700 case 5:
37710 No=2:sp_on 9,1:sp_on 8,0
37720 pause 200:goto Buka_Input_Seireki2:
37730 case 2:
37740 No=0:sp_on 13,1:sp_on 9,0
37750 pause 200:goto Buka_Input_Seireki2:
37760 case 0:
37770 pause 200:goto Buka_Input_Seireki2:
37780 case 7:
37790 No=4:sp_on 5,1:sp_on 4,0
37800 pause 200:goto Buka_Input_Seireki2:
37810 case 4:
37820 No=1:sp_on 6,1:sp_on 5,0
37830 pause 200:goto Buka_Input_Seireki2:
37840 case 1:
37850 pause 200:goto Buka_Input_Seireki2:
37860 end select
37870 endif
37880 '左へボタン 十字キー　左　or 　カーソル左
37890 if ((y2 = -1) or (key$ = chr$(29))) then
37900 select case No
37910 'Ok ボタン  Okから　左　０に行く
37920 case -1:
37930 No=0:sp_on 13,1:sp_on 14,0
37940 pause 200:goto Buka_Input_Seireki2:
37950 '0 ボタン  左　何もしない
37960 case 0:
37970 pause 200:goto Buka_Input_Seireki2:
37980 case 3:
37990 No=2:sp_on 9,1:sp_on 12,0:
38000 pause 200:goto Buka_Input_Seireki2:
38010 case 2:
38020 No=1:sp_on 6,1:sp_on 9,0:
38030 pause 200:goto Buka_Input_Seireki2:
38040 case 1:
38050 pause 200:goto Buka_Input_Seireki2:
38060 case 6:
38070 No=5:sp_on 8,1:sp_on 11,0
38080 pause 200:goto Buka_Input_Seireki2:
38090 case 5:
38100 No=4:sp_on 5,1:sp_on 8,0
38110 pause 200:goto Buka_Input_Seireki2:
38120 case 4:
38130 pause 200:goto Buka_Input_Seireki2:
38140 case 9:
38150 No=8:sp_on 7,1:sp_on 10,0
38160 pause 200:goto Buka_Input_Seireki2:
38170 case 8:
38180 No=7:sp_on 4,1:sp_on 7,0
38190 pause 200:goto Buka_Input_Seireki2:
38200 case 7:
38210 pause 200:goto Buka_Input_Seireki2:
38220 end select
38230 endif
38240 '右  十字キー　右　or カーソル　右
38250 if ((y2 = 1) or (key$ = chr$(28))) then
38260 select case No
38270 '0ボタンからokボタン右に移動
38280 case 0:
38290 No=-1:sp_on 14,1:sp_on 13,0
38300 pause 200:goto Buka_Input_Seireki2:
38310 '0ボタンからokボタン 右に移動　ここまで
38320 'OKボタンで右を押して何もしない
38330 case -1:
38340 pause 200:goto Buka_Input_Seireki2:
38350 case 1:
38360 No=2:sp_on 9,1:sp_on 6,0
38370 pause 200:goto Buka_Input_Seireki2:
38380 case 2:
38390 No=3:sp_on 12,1:sp_on 9,0
38400 pause 200:goto Buka_Input_Seireki2:
38410 case 3:
38420 pause 200:goto Buka_Input_Seireki2:
38430 case 4:
38440 No=5:sp_on 8,1:sp_on 5,0
38450 pause 200:goto Buka_Input_Seireki2:
38460 case 5:
38470 No=6:sp_on 11,1:sp_on 8,0
38480 pause 200:goto Buka_Input_Seireki2:
38490 case 7:
38500 No=8:sp_on 7,1:sp_on 4,0
38510 pause 200:goto Buka_Input_Seireki2:
38520 case 8:
38530 No=9:sp_on 10,1:sp_on 7,0
38540 pause 200:goto Buka_Input_Seireki2:
38550 case 9:
38560 pause 200:goto Buka_Input_Seireki2:
38570 case 6:
38580 pause 200:goto Buka_Input_Seireki2:
38590 end select
38600 'Okから右ボタンを押して何もしない ここまで
38610 endif
38620 '十字キー　ここまで
38630 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
38640 'ここからコメント
38650 '右の丸ボタン決定を押した数:count
38660 'if ((bg=2) or (key$=chr$(13))) then
38670 'select case count
38680 'case 0:
38690 'count=1
38700 'if (No = -1) then
38710 'count = 0
38720 'Okボタンを押したとき
38730 '
38740 'goto Buka_Input_Seireki2:
38750 'else
38760 'Okボタン以外が押されたとき
38770 'if (No >= 1 and No <= 2) then
38780 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
38790 'buf_buka_year = No
38800 'buf_Buka_Born_Day(0) = bufyear
38810 'locate 2,3
38820 'color rgb(255,255,255)
38830 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
38840 'goto Buka_Input_Seireki2:
38850 'else
38860 'count=0
38870 'ui_msg"数字が範囲外になります。"
38880 'buf_buka_year$ ="":buf_buka_year=0
38890 'goto Buka_Input_Seireki2:
38900 'endif
38910 'endif
38920 'case 1:
38930 'count = 2
38940 'if (No = -1) then
38950 'count = 1
38960 'goto Buka_Input_Seireki2:
38970 'else
38980 'b = val(buf_buka_year$)
38990 'buf_buka_year = b * 10 + No
39000 'buf_buka_year$ = str$(buf_buka_year)
39010 'buf_Buka_Born_Day(0) = bufyear
39020 'locate 1,3
39030 'color rgb(255,255,255)
39040 'print "                                                                "
39050 'locate 1,3
39060 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
39070 'if (No = -1) then
39080 'count=1
39090 'goto Buka_Input_Seireki2:
39100 'endif
39110 'case 2:
39120 'count = 3
39130 'if (No = -1) then
39140 'count = 2
39150 'buf_Buka_Born_Day(0)=bufyear
39160 'goto Buka_Input_Seireki2:
39170 'else
39180 'b = val(buf_buka_year$)
39190 'buf_buka_year = b*10 + No
39200 'buf_buka_year$ = str$(buf_buka_year)
39210 'locate 1,3
39220 'color rgb(255,255,255)
39230 'print "                                        "
39240 'locate 1,3
39250 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
39260 'goto Buka_Input_Seireki2:
39270 'endif
39280 'case 3:
39290 'count=4
39300 'if (No = -1) then
39310 'count=3
39320 'goto Buka_Input_Seireki2:
39330 'else
39340 'b = buf_buka_year
39350 'buf_buka_year = b * 10 + No
39360 'buf_buka_year$=str$(buf_buka_year)
39370 'locate 1,3
39380 'color RGB(255,255,255)
39390 'print "                                      "
39400 'locate 1,3
39410 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
39420 'buf_year=val(buf_year$)
39430 'year=val(buf_year$)
39440 'if (No=-1) then
39450 'goto Input_Born_Month:
39460 'else
39470 'goto Buka_Input_Seireki2:
39480 'endif
39490 'case 4:
39500 'bufyear=buf_year
39510 'if (No=-1) then
39520 'buf_year = val(buf_year$)
39530 'bufyear = buf_year
39540 'sp_on 14,0
39550 'goto Buka_Input_Born_Month:
39560 'else
39570 'goto Buka_Input_Seireki2:
39580 'endif
39590 'end select
39600 'endif
39610 'if (bg2 = 2) then
39620 'select case count2
39630 'case 0:
39640 'if (No = -1) then
39650 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
39660 'count=0
39670 'locate 1,3
39680 'color rgb(255,255,255)
39690 'print "                                      "
39700 'locate 1,3
39710 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
39720 'goto Buka_Input_Seireki2:
39730 'else
39740 '(buf_year=0) then
39750 'buf_buka_year=0:buf_buka_year$="****"
39760 'goto Buka_Input_Seireki2:
39770 'endif
39780 'endif
39790 'end select
39800 'endif
39810 'end
39820 'ここまでコメント
39830 '================================================================
39840 if ((bg=2) or (key$=chr$(13))) then
39850 select case count
39860 case 0:
39870 count = 1
39880 if (No=-1) then
39890 count = 0
39900 buf_Buka_Born_Day(0) = No
39910 'Okボタンを押したとき
39920 goto Buka_Input_Seireki2:
39930 else
39940 'Okボタン以外が押されたとき
39950 if (No>=1 and No<=2) then
39960 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
39970 buf_buka_year = No
39980 buf_Buka_Born_Day(0) = No
39990 locate 1,3
40000 color rgb(255,255,255)
40010 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40020 goto Buka_Input_Seireki2:
40030 else
40040 count=0
40050 ui_msg"数字が範囲外になります。"
40060 buf_buka_year$="":buf_buka_year=0
40070 goto Buka_Input_Seireki2:
40080 endif
40090 endif
40100 case 1:
40110 count = 2
40120 if (No = -1) then
40130 count = 1
40140 goto Buka_Input_Seireki2:
40150 else
40160 'b = val(buf_buka_year$)
40170 buf_buka_year = a * 10 + No
40180 b=buf_buka_year
40190 buf_buka_year$ = str$(buf_buka_year)+"**"
40200 buf_Buka_Born_Day(0)=buf_buka_year
40210 locate 1,3
40220 color rgb(255,255,255)
40230 print "                                                                "
40240 locate 1,3
40250 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
40260 'if (No = -1) then
40270 'count=1
40280 goto Buka_Input_Seireki2:
40290 endif
40300 case 2:
40310 count=3
40320 if (No=-1) then
40330 count =2:No=0
40340 goto Buka_Input_Seireki2:
40350 else
40360 'b = val(buf_buka_year$)
40370 buf_buka_year = b * 10 + No
40380 c = buf_buka_year
40390 buf_buka_year$ = str$(buf_buka_year) + "*"
40400 buf_Buka_Born_Day(0) = buf_buka_year
40410 locate 1,3
40420 color rgb(255,255,255)
40430 print "                                        "
40440 locate 1,3
40450 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40460 goto Buka_Input_Seireki2:
40470 endif
40480 case 3:
40490 count=4
40500 if (No = -1) then
40510 'count=3:No=0
40520 goto Buka_Input_Seireki2:
40530 else
40540 'b = val(buf_buka_year$)
40550 buf_buka_year=c * 10 + No
40560 buf_buka_year$=str$(buf_buka_year)
40570 buf_Buka_Born_Day(0)=buf_buka_year
40580 locate 1,3
40590 color RGB(255,255,255)
40600 print "                                      "
40610 locate 1,3
40620 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40630 buf_buka_year=val(buf_buka_year$)
40640 'year=val(buf_year$)
40650 'if (No=-1) then
40660 'goto Input_Born_Month:
40670 'else
40680 goto Buka_Input_Seireki2:
40690 endif
40700 case 4:
40710 'bufyear=buf_year
40720 if (No = -1) then
40730 buf_buka_year = val(buf_buka_year$)
40740 buf_Buka_Born_Day(0)=buf_buka_year
40750 sp_on 14,0
40760 goto Buka_Input_Born_Month:
40770 else
40780 goto Buka_Input_Seireki2:
40790 endif
40800 end select
40810 endif
40820 '================================================================
40830 'ここにコピーする。
40840 '================================================================
40850 'Input"部下の生れた年代(4桁,〜2025年):",year
40860 'if year > 2025 then goto Jyoushi_Input_Seireki:
40870 'if year = 123 then cls 3:cls 4:goto Main_Screen:
40880 '"4桁目"
40890 'bufyear4 = fix(year / 1000)
40900 '"3桁目"
40910 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
40920 '"2桁目"
40930 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
40940 '"1桁目"
40950 'bufyear1 = fix((year - ((bufyear4*
40960 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
40970 '1.部下の生まれた年代'
40980 '2.部下の生まれた月'
40990 Buka_Input_Born_Month:
41000 cls 3:play "":count=0:count2=0
41010 'No=-1:Okのとき
41020 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
41030 for i=0 to 1
41040 buf_month(i)=0
41050 next i
41060 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41070 gload Gazo$ + "Screen1.png",0,0,0
41080 gload Gazo$ + "downscreen.png",0,0,800
41090 'Init"kb:4"
41100 '音声ファイル再生 2023.06.07
41110 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
41120 font 48
41130 locate 0,1
41140 '文字色：黒　 color rgb(0,0,0)
41150 '文字色:白
41160 color rgb(255,255,255)
41170 print "部下の生まれた月を入れて下さい" + chr$(13)
41180 '文字色:白
41190 color rgb(255,255,255)
41200 locate 1,3
41210 '文字色:白
41220 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
41230 color rgb(255,255,255)
41240 'locate 4,6:print ":7"
41250 'locate 9,6:print ":8"
41260 'locate 12,6:print ":9"
41270 locate 4,6
41280 '文字色:赤
41290 print ":7  :8  :9" + chr$(13)
41300 color rgb(255,255,255)
41310 locate 4,8
41320 print ":4  :5  :6" + chr$(13)
41330 color rgb(255,255,255)
41340 locate 4,10
41350 print ":1  :2  :3" + chr$(13)
41360 locate 4,12
41370 print "    :0"
41380 locate 12,12
41390 color rgb(0,0,255)
41400 print ":Ok"
41410 sp_on 4,0: sp_on 5,0:sp_on 6,0
41420 sp_on 7,0:sp_on 8,0:sp_on 9,0
41430 sp_on 10,0:sp_on 11,0:sp_on 12,0
41440 sp_on 13,0:sp_on 14,1
41450 Buka_Input_Born_Month2:
41460 key$="":bg=0:y=0:y2=0:bg2=0
41470 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
41480 key$ = inkey$
41490 bg = strig(1)
41500 y = stick(1)
41510 y2 = stick(0)
41520 bg2 = strig(0)
41530 pause 5
41540 wend
41550 '十字キー　ここから
41560 '上の矢印　または、十字キー上
41570 if ((y = -1) or (key$ = chr$(30))) then
41580 select case No
41590 'No=-1:okのとき:初期の状態
41600 '0kボタンから３に移動
41610 '上に行く 処理
41620 case -1:
41630 No=3:sp_on 12,1:sp_on 14,0
41640 pause 200:goto Buka_Input_Born_Month2:
41650 '選択肢:3
41660 '3ボタンから 6に移動
41670 case 3:
41680 No=6:sp_on 12,0:sp_on 11,1
41690 pause 200:goto Buka_Input_Born_Month2:
41700 '6ボタンから ９に移動
41710 case 6:
41720 No=9:sp_on 10,1:sp_on 11,0
41730 pause 200:goto Buka_Input_Born_Month2:
41740 '6ボタンから ９に移動　ここまで
41750 '9で上を押して何もしない
41760 case 9:
41770 '何もしない
41780 No=9
41790 pause 200:goto Buka_Input_Born_Month2:
41800 '9で上を押しても何もしない　ここまで
41810 '上　 0ボタンから2ボタン
41820 'sp_on 6,1:1
41830 'sp_on 8,1:5
41840 'sp_on 7,1:7
41850 case 0:
41860 No=2:sp_on 13,0:sp_on 9,1:
41870 pause 200:goto Buka_Input_Born_Month2:
41880 '上  0ボタンから2ボタン　ここまで
41890 '2から５になる 上
41900 case 2:
41910 No=5:sp_on 8,1:sp_on 9,0:
41920 pause 200:goto Buka_Input_Born_Month2:
41930 case 5:
41940 No=8:sp_on 7,1:sp_on 8,0
41950 pause 200:goto Buka_Input_Born_Month2:
41960 case 8:
41970 pause 200:goto Buka_Input_Born_Month2:
41980 case 1:
41990 No=4:sp_on 5,1:sp_on 6,0
42000 pause 200:goto Buka_Input_Born_Month2:
42010 case 4:
42020 No=7:sp_on 4,1:sp_on 5,0
42030 pause 200:goto Buka_Input_Born_Month2:
42040 case 7:
42050 pause 200:goto Buka_Input_Born_Month2:
42060 end select
42070 endif
42080 '左３　ここまで
42090 '下の矢印
42100 '中央 2
42110 if ((y=1) or (key$ = chr$(31))) then
42120 select case No
42130 '9から６に下げる
42140 case 9:
42150 No=6:sp_on 11,1:sp_on 10,0
42160 pause 200:goto Buka_Input_Born_Month2:
42170 '6から３に下げる
42180 case 6:
42190 No=3:sp_on 12,1:sp_on 11,0
42200 pause 200:goto Buka_Input_Born_Month2:
42210 '3から０ｋに変える
42220 case 3:
42230 No=-1:sp_on 14,1:sp_on 12,0
42240 pause 200:goto Buka_Input_Born_Month2:
42250 'Okから下のボタンを押しても何もしない
42260 case -1:
42270 pause 200:goto Buka_Input_Born_Month2:
42280 case 8:
42290 No=5:sp_on 8,1:sp_on 7,0
42300 pause 200:goto Buka_Input_Born_Month2:
42310 case 5:
42320 No=2:sp_on 9,1:sp_on 8,0
42330 pause 200:goto Buka_Input_Born_Month2:
42340 case 2:
42350 No=0:sp_on 13,1:sp_on 9,0
42360 pause 200:goto Buka_Input_Born_Month2:
42370 case 0:
42380 pause 200:goto Buka_Input_Born_Month2:
42390 case 7:
42400 No=4:sp_on 5,1:sp_on 4,0
42410 pause 200:goto Buka_Input_Born_Month2:
42420 case 4:
42430 No=1:sp_on 6,1:sp_on 5,0
42440 pause 200:goto Buka_Input_Born_Month2:
42450 case 1:
42460 pause 200:goto Buka_Input_Born_Month2:
42470 end select
42480 endif
42490 '左へボタン 十字キー　左　or 　カーソル左
42500 if ((y2 = -1) or (key$ = chr$(29))) then
42510 select case No
42520 'Ok ボタン  Okから　左　０に行く
42530 case -1:
42540 No=0:sp_on 13,1:sp_on 14,0
42550 pause 200:goto Buka_Input_Born_Month2:
42560 '0 ボタン  左　何もしない
42570 case 0:
42580 pause 200:goto Buka_Input_Born_Month2:
42590 case 3:
42600 No=2:sp_on 9,1:sp_on 12,0:
42610 pause 200:goto Buka_Input_Born_Month2:
42620 case 2:
42630 No=1:sp_on 6,1:sp_on 9,0:
42640 pause 200:goto Buka_Input_Born_Month2:
42650 case 1:
42660 pause 200:goto Buka_Input_Born_Month2:
42670 case 6:
42680 No=5:sp_on 8,1:sp_on 11,0
42690 pause 200:goto Buka_Input_Born_Month2:
42700 case 5:
42710 No=4:sp_on 5,1:sp_on 8,0
42720 pause 200:goto Buka_Input_Born_Month2:
42730 case 4:
42740 pause 200:goto Buka_Input_Born_Month2:
42750 case 9:
42760 No=8:sp_on 7,1:sp_on 10,0
42770 pause 200:goto Buka_Input_Born_Month2:
42780 case 8:
42790 No=7:sp_on 4,1:sp_on 7,0
42800 pause 200:goto Buka_Input_Born_Month2:
42810 case 7:
42820 pause 200:goto Buka_Input_Born_Month2:
42830 end select
42840 endif
42850 '右  十字キー　右　or カーソル　右
42860 if ((y2 = 1) or (key$ = chr$(28))) then
42870 select case No
42880 '0ボタンからokボタン右に移動
42890 case 0:
42900 No=-1:sp_on 14,1:sp_on 13,0
42910 pause 200:goto Buka_Input_Born_Month2:
42920 '0ボタンからokボタン 右に移動　ここまで
42930 'OKボタンで右を押して何もしない
42940 case -1:
42950 pause 200:goto Buka_Input_Born_Month2:
42960 case 1:
42970 No=2:sp_on 9,1:sp_on 6,0
42980 pause 200:goto Buka_Input_Born_Month2:
42990 case 2:
43000 No=3:sp_on 12,1:sp_on 9,0
43010 pause 200:goto Buka_Input_Born_Month2:
43020 case 3:
43030 pause 200:goto Buka_Input_Born_Month2:
43040 case 4:
43050 No=5:sp_on 8,1:sp_on 5,0
43060 pause 200:goto Buka_Input_Born_Month2:
43070 case 5:
43080 No=6:sp_on 11,1:sp_on 8,0
43090 pause 200:goto Buka_Input_Born_Month2:
43100 case 7:
43110 No=8:sp_on 7,1:sp_on 4,0
43120 pause 200:goto Buka_Input_Born_Month2:
43130 case 8:
43140 No=9:sp_on 10,1:sp_on 7,0
43150 pause 200:goto Buka_Input_Born_Month2:
43160 case 9:
43170 pause 200:goto Buka_Input_Born_Month2:
43180 case 6:
43190 pause 200:goto Buka_Input_Born_Month2:
43200 end select
43210 'Okから右ボタンを押して何もしない ここまで
43220 endif
43230 '十字キー　ここまで
43240 '右の丸ボタン　決定キー
43250 if ((bg=2) or (key$=chr$(13))) then
43260 select case count
43270 case 0:
43280 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
43290 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
43300 locate 1,3
43310 color RGB(255,255,255)
43320 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
43330 goto Buka_Input_Born_Month2:
43340 case 1:
43350 count = 2:buf_buka_month=a*10+No
43360 if (No = -1) then
43370 'count=0
43380 month=buf_buka_month
43390 buf_buka_month=val(buf_buka_Month$)
43400 month=buf_buka_month
43410 '生まれた日に飛ぶ
43420 goto Buka_Input_Born_Day:
43430 else
43440 buf_buka_month = a * 10 + No
43450 buf_buka_Month$ = str$(buf_buka_month)
43460 buf_Buka_Born_Day(1) = buf_buka_month
43470 locate 1,3
43480 color Rgb(255,255,255)
43490 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
43500 goto Buka_Input_Born_Month2:
43510 endif
43520 case 2:
43530 count=3
43540 'c= val(buf_Month$)
43550 'buf_month = c*10 + No
43560 'buf_Month$ = str$(buf_month)
43570 'locate 2,3
43580 'print "部下の生まれた月(1月～12月):";buf_Month$
43590 'goto Buka_Input_Born_Month2:
43600 'case 3:
43610 'count=4
43620 'b=val(buf_month$)
43630 'buf_month=c*10+No
43640 'buf_Month$=str$(buf_month)
43650 'locate 2,3
43660 'print "部下の生まれた月(1月～12月):";buf_Month$
43670 'buf_month=val(buf_Month$)
43680 'year=val(buf_year$)
43690 if (No=-1) then
43700 goto Buka_Input_Born_Day:
43710 else
43720 goto Input_Born_Month2:
43730 endif
43740 'case 4:
43750 'bufyear=buf_year
43760 'if (No=-1) then
43770 'buf_month = val(buf_Month$)
43780 'month = buf_month
43790 'sp_on 14,0
43800 'goto Input_Born_Day:
43810 'else
43820 'goto Input_Born_Month2:
43830 'endif
43840 end select
43850 endif
43860 '左の丸ボタン　キャンセル
43870 if (bg2=2) then
43880 select case count2
43890 case 0:
43900 if (No = -1) then
43910 buf_buka_month=0:buf_buka_Month$="**"
43920 count=0
43930 goto rewrite2:
43940 else
43950 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
43960 buf_month=0:buf_Month$="**"
43970 locate 2,3
43980 color rgb(255,255,255)
43990 print "                                       "
44000 goto rewrite2:
44010 if (No>12) then
44020 ui_msg"値が範囲外です。"
44030 goto rewrite2:
44040 endif
44050 endif
44060 endif
44070 rewrite2:
44080 locate 2,3
44090 color rgb(255,255,255)
44100 print "                                      "
44110 locate 2,3
44120 print "部下の生まれた月(1月~12月):";buf_buka_Month$
44130 goto Buka_Input_Born_Month2:
44140 end select
44150 'endif
44160 endif
44170 end
44180 '2.部下の生まれた月'
44190 '3.部下の生まれた日'
44200 '生れた日を入力
44210 Buka_Input_Born_Day:
44220 '生まれた日入力
44230 cls 3:play ""
44240 'No=-1:Okのとき
44250 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
44260 for i=0 to 1
44270 buf_day(i)=0
44280 next i
44290 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
44300 gload Gazo$ + "Screen1.png",0,0,0
44310 gload Gazo$ + "downscreen.png",0,0,800
44320 'Init"kb:2"
44330 '音声ファイル再生 2023.06.07
44340 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
44350 font 48
44360 locate 0,1
44370 '文字色：黒　 color rgb(0,0,0)
44380 color rgb(255,255,255)
44390 print "部下の生まれた日を入れて下さい" + chr$(13)
44400 color rgb(255,255,255)
44410 locate 1,3
44420 print "部下の生まれた日(1日~31日):";buf_Day$
44430 color rgb(255,255,255)
44440 'locate 4,6:print ":7"
44450 'locate 9,6:print ":8"
44460 'locate 12,6:print ":9"
44470 locate 4,6
44480 print ":7  :8  :9" + chr$(13)
44490 color rgb(255,255,255)
44500 locate 4,8
44510 print ":4  :5  :6" + chr$(13)
44520 color rgb(255,255,255)
44530 locate 4,10
44540 print ":1  :2  :3" + chr$(13)
44550 locate 4,12
44560 print "    :0"
44570 locate 12,12
44580 color rgb(0,0,255)
44590 print ":Ok"
44600 sp_on 4,0: sp_on 5,0:sp_on 6,0
44610 sp_on 7,0:sp_on 8,0:sp_on 9,0
44620 sp_on 10,0:sp_on 11,0:sp_on 12,0
44630 sp_on 13,0:sp_on 14,1
44640 Buka_Input_Born_Day2:
44650 key$="":bg=0:y=0:y2=0:bg2=0
44660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
44670 key$ = inkey$
44680 bg = strig(1)
44690 y = stick(1)
44700 y2 = stick(0)
44710 bg2 = strig(0)
44720 pause 5
44730 wend
44740 '十字キー　ここから
44750 '上の矢印　または、十字キー上
44760 if ((y = -1) or (key$ = chr$(30))) then
44770 select case No
44780 'No=-1:okのとき:初期の状態
44790 '0kボタンから３に移動
44800 '上に行く 処理
44810 case -1:
44820 No=3:sp_on 12,1:sp_on 14,0
44830 pause 200:goto Buka_Input_Born_Day2:
44840 '選択肢:3
44850 '3ボタンから 6に移動
44860 case 3:
44870 No=6:sp_on 12,0:sp_on 11,1
44880 pause 200:goto Buka_Input_Born_Day2:
44890 '6ボタンから ９に移動
44900 case 6:
44910 No=9:sp_on 10,1:sp_on 11,0
44920 pause 200:goto Buka_Input_Born_Day2:
44930 '6ボタンから ９に移動　ここまで
44940 '9で上を押して何もしない
44950 case 9:
44960 '何もしない
44970 No=9
44980 pause 200:goto Buka_Input_Born_Day2:
44990 '9で上を押しても何もしない　ここまで
45000 '上　 0ボタンから2ボタン
45010 'sp_on 6,1:1
45020 'sp_on 8,1:5
45030 'sp_on 7,1:7
45040 case 0:
45050 No=2:sp_on 13,0:sp_on 9,1:
45060 pause 200:goto Buka_Input_Born_Day2:
45070 '上  0ボタンから2ボタン　ここまで
45080 '2から５になる 上
45090 case 2:
45100 No=5:sp_on 8,1:sp_on 9,0:
45110 pause 200:goto Buka_Input_Born_Day2:
45120 case 5:
45130 No=8:sp_on 7,1:sp_on 8,0
45140 pause 200:goto Buka_Input_Born_Day2:
45150 case 8:
45160 pause 200:goto Buka_Input_Born_Day2:
45170 case 1:
45180 No=4:sp_on 5,1:sp_on 6,0
45190 pause 200:goto Buka_Input_Born_Day2:
45200 case 4:
45210 No=7:sp_on 4,1:sp_on 5,0
45220 pause 200:goto Buka_Input_Born_Day2:
45230 case 7:
45240 pause 200:goto Buka_Input_Born_Day2:
45250 end select
45260 endif
45270 '左３　ここまで
45280 '下の矢印
45290 '中央 2
45300 if ((y=1) or (key$ = chr$(31))) then
45310 select case No
45320 '9から６に下げる
45330 case 9:
45340 No=6:sp_on 11,1:sp_on 10,0
45350 pause 200:goto Buka_Input_Born_Day2:
45360 '6から３に下げる
45370 case 6:
45380 No=3:sp_on 12,1:sp_on 11,0
45390 pause 200:goto Buka_Input_Born_Day2:
45400 '3から０ｋに変える
45410 case 3:
45420 No=-1:sp_on 14,1:sp_on 12,0
45430 pause 200:goto Buka_Input_Born_Day2:
45440 'Okから下のボタンを押しても何もしない
45450 case -1:
45460 pause 200:goto Buka_Input_Born_Day2:
45470 case 8:
45480 No=5:sp_on 8,1:sp_on 7,0
45490 pause 200:goto Buka_Input_Born_Day2:
45500 case 5:
45510 No=2:sp_on 9,1:sp_on 8,0
45520 pause 200:goto Buka_Input_Born_Day2:
45530 case 2:
45540 No=0:sp_on 13,1:sp_on 9,0
45550 pause 200:goto Buka_Input_Born_Day2:
45560 case 0:
45570 pause 200:goto Buka_Input_Born_Day2:
45580 case 7:
45590 No=4:sp_on 5,1:sp_on 4,0
45600 pause 200:goto Buka_Input_Born_Day2:
45610 case 4:
45620 No=1:sp_on 6,1:sp_on 5,0
45630 pause 200:goto Buka_Input_Born_Day2:
45640 case 1:
45650 pause 200:goto Buka_Input_Born_Day2:
45660 end select
45670 endif
45680 '左へボタン 十字キー　左　or 　カーソル左
45690 if ((y2 = -1) or (key$ = chr$(29))) then
45700 select case No
45710 'Ok ボタン  Okから　左　０に行く
45720 case -1:
45730 No=0:sp_on 13,1:sp_on 14,0
45740 pause 200:goto Buka_Input_Born_Day2:
45750 '0 ボタン  左　何もしない
45760 case 0:
45770 pause 200:goto Buka_Input_Born_Day2:
45780 case 3:
45790 No=2:sp_on 9,1:sp_on 12,0:
45800 pause 200:goto Buka_Input_Born_Day2:
45810 case 2:
45820 No=1:sp_on 6,1:sp_on 9,0:
45830 pause 200:goto Buka_Input_Born_Day2:
45840 case 1:
45850 pause 200:goto Buka_Input_Born_Day2:
45860 case 6:
45870 No=5:sp_on 8,1:sp_on 11,0
45880 pause 200:goto Buka_Input_Born_Day2:
45890 case 5:
45900 No=4:sp_on 5,1:sp_on 8,0
45910 pause 200:goto Buka_Input_Born_Day2:
45920 case 4:
45930 pause 200:goto Buka_Input_Born_Day2:
45940 case 9:
45950 No=8:sp_on 7,1:sp_on 10,0
45960 pause 200:goto Buka_Input_Born_Day2:
45970 case 8:
45980 No=7:sp_on 4,1:sp_on 7,0
45990 pause 200:goto Buka_Input_Born_Day2:
46000 case 7:
46010 pause 200:goto Buka_Input_Born_Day2:
46020 end select
46030 endif
46040 '右  十字キー　右　or カーソル　右
46050 if ((y2 = 1) or (key$ = chr$(28))) then
46060 select case No
46070 '0ボタンからokボタン右に移動
46080 case 0:
46090 No=-1:sp_on 14,1:sp_on 13,0
46100 pause 200:goto Buka_Input_Born_Day2:
46110 '0ボタンからokボタン 右に移動　ここまで
46120 'OKボタンで右を押して何もしない
46130 case -1:
46140 pause 200:goto Buka_Input_Born_Day2:
46150 case 1:
46160 No=2:sp_on 9,1:sp_on 6,0
46170 pause 200:goto Buka_Input_Born_Day2:
46180 case 2:
46190 No=3:sp_on 12,1:sp_on 9,0
46200 pause 200:goto Buka_Input_Born_Day2:
46210 case 3:
46220 pause 200:goto Buka_Input_Born_Day2:
46230 case 4:
46240 No=5:sp_on 8,1:sp_on 5,0
46250 pause 200:goto Buka_Input_Born_Day2:
46260 case 5:
46270 No=6:sp_on 11,1:sp_on 8,0
46280 pause 200:goto Buka_Input_Born_Day2:
46290 case 7:
46300 No=8:sp_on 7,1:sp_on 4,0
46310 pause 200:goto Buka_Input_Born_Day2:
46320 case 8:
46330 No=9:sp_on 10,1:sp_on 7,0
46340 pause 200:goto Buka_Input_Born_Day2:
46350 case 9:
46360 pause 200:goto Buka_Input_Born_Day2:
46370 case 6:
46380 pause 200:goto Buka_Input_Born_Day2:
46390 end select
46400 'Okから右ボタンを押して何もしない ここまで
46410 endif
46420 '十字キー　ここまで
46430 '右の丸ボタンを押したとき
46440 if ((bg = 2) or (key$ = chr$(13))) then
46450 'count :決定ボタンを押した回数
46460 select case (count)
46470 '1桁目入力
46480 case 0:
46490 count = 1:
46500 if (No = -1) then
46510 '1桁目　OKでは何もしない
46520 'goto check:
46530 No=0
46540 else
46550 'ok以外のボタンを押したとき
46560 buf_buka_day = No:buf_buka_Day$ = str$(No)
46570 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
46580 buf_buka_Day$ = str$(No) + "*"
46590 endif
46600 a=No
46610 buf_Buka_Born_Day(2) = buf_buka_day
46620 locate 1,3
46630 print"                                      "
46640 color RGB(255,255,255)
46650 locate 1,3
46660 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
46670 endif
46680 check2:
46690 if (No >= 1 and No <= 9) then
46700 sp_on 14,0
46710 goto Buka_Input_Born_Day2:
46720 else
46730 sp_on 14,0
46740 goto Result_Business_Aisyou:
46750 end
46760 endif
46770 case 1:
46780 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
46790 count = 2:
46800 'locate 2,3
46810 'color RGB(255,255,255)
46820 'print "生まれた日(1日~31日):";buf_Day$
46830 'Okボタンを押したときの処理
46840 '入力値　10未満のとき
46850 'c = buf_day
46860 if (No = -1) then
46870 'c=buf_day
46880 ' buf_day = c
46890 'buf_Day$ = str$(buf_day)
46900 '10以下のとき
46910 No=0
46920 if (buf_day < 10) then
46930 sp_on 14,0
46940 goto Result_Business_Aisyou:
46950 end
46960 endif
46970 else
46980 sp_on 14,0
46990 'c=No
47000 buf_buka_day = a * 10 + No
47010 buf_buka_Day$ = str$(buf_buka_day)
47020 buf_Buka_Born_Day(2) = buf_buka_day
47030 locate 0,3
47040 color Rgb(255,255,255)
47050 print "                                       "
47060 locate 1,3
47070 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
47080 goto Buka_Input_Born_Day2:
47090 endif
47100 '生まれた日　2桁目の数字　or 1桁の数字 + ok
47110 case 2:
47120 count=0
47130 'c=val(buf_Day$)
47140 'buf_day=c*10+No
47150 'buf_Day$=str$(buf_day)
47160 'day=buf_day
47170 'locate 2,3
47180 'print "生まれた日(1日〜31日):";buf_Day$
47190 'No=-1:ok ボタンを押したとき
47200 if (No = -1) then No=0
47210 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
47220 sp_on 14,0
47230 goto Result_Business_Aisyou:
47240 else
47250 goto Buka_Input_Born_Day2:
47260 endif
47270 'Okボタン以外を押したとき
47280 else
47290 c=val(buf_buka_Day$)
47300 buf_buka_day = c * 10 + No
47310 buf_buka_Day$ = str$(buf_buka_day)
47320 locate 1,3
47330 print "                "
47340 locate 1,3
47350 print "生まれた日(1日~31日):"+buf_buka_Day$
47360 goto Buka_Input_Born_Day2:
47370 'endif
47380 case 3:
47390 count=4
47400 'c=val(buf_day$)
47410 'buf_day=c*10+No
47420 'buf_day$=str$(buf_day)
47430 'locate 2,3
47440 'print "生まれた日を入れてください:";buf_day$
47450 'year=val(buf_year$)
47460 if (No = -1) then
47470 'goto Buka_Input_Born_Day:
47480 sp_on 14,0:
47490 goto complate_jyoushi:
47500 else
47510 goto Buka_Input_Born_Month2:
47520 endif
47530 'case 4:
47540 'bufyear=buf_year
47550 'if (No=-1) then
47560 'buf_day = val(buf_day$)
47570 'bufday = buf_day
47580 'sp_on 14,0
47590 goto complate_jyoushi:
47600 'else
47610 'goto Buka_Input_Born_Day2:
47620 'endif
47630 end select
47640 endif
47650 if (bg2=2) then
47660 select case count2
47670 case 0:
47680 if (No=-1) then
47690 'buf_day=0:buf_Day$="**"
47700 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
47710 count=0
47720 buf_buka_day=0:buf_buka_Day$="**"
47730 goto rewrite_day3:
47740 else
47750 buf_buka_day=0:buf_buka_Day$="**"
47760 ui_msg"値が範囲外です"
47770 endif
47780 goto rewrite_day3:
47790 else
47800 goto rewrite_day3:
47810 endif
47820 rewrite_day3:
47830 locate 2,3
47840 color rgb(255,255,255)
47850 print "                                      "
47860 locate 1,3
47870 print "生まれた日(1日~31日):"+buf_buka_Day$
47880 goto Buka_Input_Born_Day2:
47890 end select
47900 endif
47910 '3.部下の生まれた日'
47920 '部下'
47930 '--------------------------------------------'
47940 'ビジネの相性　結果表示
47950 Result_Business_Aisyou:
47960 cls 3:init "kb:4"
47970 a=0:b=0:c=0:d=0:e=0:f=0
47980 bg=0:key$=""
47990 gload Gazo$ + "Screen1.png",0,0,0
48000 gload Gazo$ + "downscreen.png",0,0,800
48010 sp_on 14,0
48020 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
48030 buf_Buka = Kabara_Num(d,e,f)
48040 a_2 = buf_Buka
48050 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
48060 locate 0,1
48070 color rgb(255,0,0)
48080 print "●.相性診断結果１"
48090 locate 0,4:
48100 color rgb(255,255,255)
48110 print "1.上司の名前:";buffer_name$(0)
48120 locate 0,6
48130 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
48140 locate 0,8
48150 print "2.部下の名前:";buffer_name$(1)
48160 locate 0,10
48170 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
48180 locate 0,12
48190 print "3.上司と部下の相性:";Result_Aisyou$
48200 locate 1,15
48210 color rgb(0,0,0)
48220 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
48230 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
48240 bg = strig(1)
48250 key$ = inkey$
48260 bg2 = strig(0)
48270 pause 5
48280 wend
48290 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
48300 if (bg2 = 2) then
48310 cls 3:goto Business_Aishou_Input_1_parson:
48320 endif
48330 'ビジネスの相性占い　結果2　説明
48340 Result_Business_Aisyou2:
48350 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
48360 gload Gazo$ + "Screen1.png",0,0,0
48370 locate 0,1
48380 color rgb(255,0,0)
48390 print "●.相性の説明"
48400 color rgb(255,255,255)
48410 locate 0,4
48420 print "相性:";Result_Aisyou$
48430 locate 0,6:
48440 print "相性の説明:";buf$
48450 locate 0,15
48460 color rgb(0,0,0)
48470 print "右の丸ボタン:トップ,左のボタン:前の画面"
48480 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
48490 bg = strig(1)
48500 bg2 = strig(0)
48510 key$ = inkey$
48520 pause 5
48530 wend
48540 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
48550 if ((bg2 = 2)) then goto Result_Business_Aisyou:
48560 '自作関数 ここから
48570 func read_explain$(ba$)
48580 d$=""
48590 buf_String$=""
48600 if ba$="A" then
48610 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
48620 line input #1,a$
48630 a1$=mid$(a$,1,12)
48640 a2$=mid$(a$,13,17)
48650 a3$=mid$(a$,30,17)
48660 a4$=mid$(a$,47,18)
48670 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
48680 buf_String$ = a5$
48690 close #1
48700 endif
48710 if ba$="B"  then
48720 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
48730 line input #1,b$
48740 b1$=mid$(b$,1,15)
48750 b2$=mid$(b$,16,21)
48760 'b3$=mid$(b$,33,3)
48770 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
48780 buf_String$ = b4$
48790 close #1
48800 endif
48810 if ba$="C"  then
48820 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
48830 line input #1,c$
48840 c1$ = Mid$(c$,1,15)
48850 c2$ = Mid$(c$,16,33)
48860 c3$ = c1$ + chr$(13) + c2$
48870 buf_String$ = c3$
48880 close #1
48890 endif
48900 if ba$="D" then
48910 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
48920 line input #1,d$
48930 d1$=mid$(d$,1,15)
48940 d2$=mid$(d$,16,22)
48950 d3$=mid$(d$,38,7)
48960 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
48970 buf_String$ = d4$
48980 close #1
48990 endif
49000 if ba$="E"  then
49010 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
49020 line input #1,e$
49030 e1$=Mid$(e$,1,16)
49040 e2$=Mid$(e$,17,16)
49050 e3$=Mid$(e$,33,12)
49060 e4$=Mid$(e$,45,17)
49070 e5$=Mid$(e$,62,17)
49080 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
49090 buf_String$ = e6$
49100 close #1
49110 endif
49120 if ba$="F" then
49130 '改行を追加して表示を調整
49140 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
49150 line input #1,f$
49160 f1$=Mid$(f$,1,15)
49170 f2$=Mid$(f$,16,12)
49180 buf_String$ = f1$+chr$(13)+f2$
49190 close #1
49200 endif
49210 if ba$="G" then
49220 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
49230 line input #1,g$
49240 g1$ = mid$(g$,1,16)
49250 g2$ = mid$(g$,17,18)
49260 g3$ = mid$(g$,36,21)
49270 g4$ = mid$(g$,56,6)
49280 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
49290 buf_String$ = g5$
49300 close #1
49310 endif
49320 if ba$="H" then
49330 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
49340 line input #1,h$
49350 h1$=Mid$(h$,1,17)
49360 h2$=Mid$(h$,18,21)
49370 h3$=Mid$(h$,39,20)
49380 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
49390 buf_String$ = h$
49400 close #1
49410 endif
49420 if ba$ = "I" then
49430 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
49440 line input #1,i$
49450 i1$=Mid$(i$,1,10)
49460 i2$=Mid$(i$,11,13)
49470 i3$=Mid$(i$,25,16)
49480 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
49490 buf_String$ = i$
49500 close #1
49510 endif
49520 buffer$ = buf_String$
49530 endfunc buffer$
49540 'カバラ数（数秘番号を求める）
49550 func Kabara_Num(buffer_Year,month,day)
49560 '=============================
49570 'a1:4桁のうちの1桁目を求める
49580 '例 a1:1234の4が1桁目
49590 'a2:4桁のうちの2桁目を求める
49600 '例:a2:1234の3が2桁目
49610 'a3:4桁のうちの3桁目を求める
49620 '例 a3:1234の2が3桁目
49630 'a4:4桁のうちの4桁目を求める
49640 '例 a4:1234の1が4桁目
49650 '==============================
49660 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
49670 Year = buffer_Year
49680 '処理1　整数部分を取り出す。
49690 a4 = fix(Year / 1000)
49700 a3 = fix(Year / 100) - (a4 * 10)
49710 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
49720 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
49730 '処理　２　取り出した整数部分を足す。
49740 a_ = a1 + a2 + a3 + a4 +month + day
49750 'a1=0:a2=0:a3=0:a4=0
49760 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
49770 buffer = a_
49780 'else
49790 goto recomp2:
49800 'if (a_ = 10) then
49810 '  buffer = 1
49820 endif
49830 recomp2:
49840 a5=0:a6=0
49850 a5 = fix(a_ / 10)
49860 a6 = (a_) - (a5 * 10)
49870 a_ = a5 + a6
49880 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
49890 '結果に行く
49900 goto Res2:
49910 '  if ((a_>11) and (a_<99)) then
49920 else
49930 '再度計算
49940 goto recomp2:
49950 endif
49960 '     a1 = fix(a_ / 10)
49970 '     a2 = a_ - (a1 * 10)
49980 '     a_ = a1 + a2
49990 '     buffer = a_
50000 'endif
50010 'else
50020 '    bffer = a_
50030 'endif
50040 'endif
50050 'else
50060 'talk "プログラムを終了します。"
50070 'end
50080 'endif
50090 'kabara = 10
50100 Res2:
50110 kabara = a_
50120 endfunc kabara
50130 func Kabara_Aisyou$(buff1,buff2)
50140 a=0:b=0
50150 '範囲　1~9
50160 if ((buff1 > 0 and buff1 < 10)) then
50170 a = buff1
50180 else
50190 Select case buff1
50200 case 11:
50210 buff1=9:a=buff1
50220 case 22:
50230 buff1=10:a=buff1
50240 end select
50250 endif
50260 '範囲　１~９
50270 if ((buff2 > 0 and buff2 < 10)) then
50280 b = buff2
50290 else
50300 select case buff2
50310 case 11:
50320 buff2=9:b=buff2
50330 case 12:
50340 buff2=10:b=buff2
50350 end select
50360 endif
50370 Aisyou$ = Buffer_Business_Aisyou$(a,b)
50380 endfunc Aisyou$
50390 '=============================
50400 '自作関数 ここまで
50410 '1.数秘術　トップ画面
50420 '
50430 'Data_eraseを一番最後に持ってくる
50440 '=============================
50450 Data_erase:
50460 'メモリー削除
50470 erase buf_name1$
50480 erase buf_name2$
50490 erase buffer
50500 erase buf_chart$
50510 erase Buffer_Business_Aisyou$
50520 erase buffer_name$
50530 '上司の誕生日
50540 erase buf_Jyoushi_Born_Day
50550 '部下の誕生日
50560 erase buf_Buka_Born_Day
50570 erase buf_year
50580 erase buf_month
50590 erase buf_day
50600 'フォーカスライン
50610 erase Forcus1_buffer$
50620 erase Forcus2_buffer$
50630 erase Forcus3_buffer$
50640 buffer$ = ""
50650 buf$ = ""
50660 buf_year$ = ""
50670 buf_Jyoushi_Kabara_Num = 0
50680 buf_Buka_Kabara_Num = 0
50690 count = 0
50700 buf_Month$ = ""
50710 buf_Day$ = ""
50720 b=0
50730 c=0
50740 return
