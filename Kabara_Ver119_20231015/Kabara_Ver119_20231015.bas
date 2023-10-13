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
370 '2023.10.08:Ver119_20231015
380 Version$ = "Ver:1.1.9_20231015"
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
17380 'H:選択肢
17390 sp_def 22,(50,345),16,16
17400 'I:選択肢
17410 sp_def 23,(200,345),16,16
17420 'J:選択肢
17430 sp_def 24,(350,345),16,16
17440 'K:選択肢
17450 sp_def 25,(500,345),16,16
17460 'L:選択肢
17470 sp_def 26,(630,345),16,16
17480 'M:選択肢
17490 sp_def 27,(780,345),16,16
17500 'N:選択肢
17510 sp_def 28,(930,345),16,16
17520 'Line 3:☓
17530 'O:選択肢
17540 sp_def 29,(50,440),16,16
17550 'P:選択肢
17560 sp_def 30,(200,440),16,16
17570 'Q:選択肢
17580 sp_def 31,(350,440),16,16
17590 'R:選択肢
17600 sp_def 32,(500,440),16,16
17610 'S:選択肢
17620 sp_def 33,(630,440),16,16
17630 'T:選択肢
17640 sp_def 34,(780,440),16,16
17650 'U:選択肢
17660 sp_def 35,(930,440),16,16
17670 'Line 4:◯
17680 'V:選択肢
17690 sp_def 36,(50,535),16,16
17700 'W:選択肢
17710 sp_def 37,(200,535),16,16
17720 'X:選択肢
17730 sp_def 38,(350,535),16,16
17740 'Y:選択肢
17750 sp_def 39,(500,535),16,16
17760 'Z:選択肢
17770 sp_def 40,(630,535),16,16
17780 'Ok:選択肢
17790 sp_def 41,(780,535),16,16
17800 'sp_def 42,(930,535),16,16
17810 'Line 1
17820 'A
17830 sp_on 15,0
17840 'B
17850 sp_on 16,0
17860 'C
17870 sp_on 17,0
17880 'D
17890 sp_on 18,0
17900 'E
17910 sp_on 19,0
17920 'F
17930 sp_on 20,0
17940 'G
17950 sp_on 21,0
17960 'Line 1
17970 'Line 2
17980 'H
17990 sp_on 22,0
18000 'I
18010 sp_on 23,0
18020 'J
18030 sp_on 24,0
18040 'K
18050 sp_on 25,0
18060 'L
18070 sp_on 26,0
18080 'M
18090 sp_on 27,0
18100 'N
18110 sp_on 28,0
18120 'Line 2
18130 'Line 3
18140 'O
18150 sp_on 29,0
18160 'P
18170 sp_on 30,0
18180 'Q
18190 sp_on 31,0
18200 'R
18210 sp_on 32,0
18220 'S
18230 sp_on 33,0
18240 'T
18250 sp_on 34,0
18260 'U
18270 sp_on 35,0
18280 'Line 3
18290 'Line 4
18300 'V
18310 sp_on 36,0
18320 'W
18330 sp_on 37,0
18340 'X
18350 sp_on 38,0
18360 'Y
18370 sp_on 39,0
18380 'Z
18390 sp_on 40,0
18400 'Ok
18410 sp_on 41,1
18420 'Line 4
18430 'sp_on 42,1
18440 'Line 1
18450 'sp_put 15,(50,250),0,0
18460 'sp_put 16,(200,250),0,0
18470 'sp_put 17,(350,250),0,0
18480 'sp_put 18,(500,250),0,0
18490 'sp_put 19,(630,250),0,0
18500 'sp_put 20,(780,250),0,0
18510 'sp_put 21,(930,250),0,0
18520 'Line 2
18530 'sp_put 22,(50,345),0,0
18540 'sp_put 23,(200,345),0,0
18550 'sp_put 24,(350,345),0,0
18560 'sp_put 25,(500,345),0,0
18570 'sp_put 26,(630,345),0,0
18580 'sp_put 27,(780,345),0,0
18590 'sp_put 28,(930,345),0,0
18600 'Line 3
18610 'sp_put 29,(50,440),0,0
18620 'sp_put 30,(200,440),0,0
18630 'sp_put 31,(350,440),0,0
18640 'sp_put 32,(500,440),0,0
18650 'sp_put 33,(630,440),0,0
18660 'sp_put 34,(780,440),0,0
18670 'sp_put 35,(930,440),0,0
18680 'Line 4
18690 'sp_put 36,(50,535),0,0
18700 'sp_put 37,(200,535),0,0
18710 'sp_put 38,(350,535),0,0
18720 'sp_put 39,(500,535),0,0
18730 'sp_put 40,(630,535),0,0
18740 sp_put 41,(780,535),0,0
18750 'sp_put 42,(930,536),0,0
18760 gload Gazo$ + "Screen1.png",0,0,0
18770 color rgb(255,255,255)
18780 locate 1,3
18790 print "名前の姓をアルファベットで入力してください"
18800 locate 1,5
18810 print " A  B  C  D  E  F  G"
18820 locate 1,7
18830 print " H  I  J  K  L  M  N"
18840 locate 1,9
18850 print " O  P  Q  R  S  T  U"
18860 locate 1,11
18870 print " V  W  X  Y  Z  Ok"
18880 locate 1,15:color rgb(0,0,0)
18890 print "実装未完全"
18900 select_name1:
18910 bg = 0:y = 0:key$ = "":y2=0:init"kb:4"
18920 '有効ボタン
18930 '1.決定ボタン(bg:2)
18940 '2.Enter Key
18950 '3.カーソル上 (chr$(31))
18960 '4.カーソル　左 (chr$(29))
18970 '5.ジョイパッド　上 (y:1)
18980 '6:ジョイパッド　左 (y2:-1)
18990 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19000 key$ = inkey$
19010 'ジョイパッドの決定:bg
19020 bg = strig(1)
19030 y = stick(1)
19040 y2 = stick(0)
19050 pause 200
19060 wend
19070 '====================================
19080 'Birds Eye Grid 名前入力
19090 '入力スタイル　アルファベット入力
19100 'sp_on:　スプライトのオンオフ
19110 'sp_put :表示位置
19120 'No:ボタン番号
19130 '====================================
19140 'カーソルで上に行く
19150 if ((y=-1) or (key$=chr$(31))) then
19160 select case No
19170 '1.Ok ボタン
19180 'sp_on スプライトのオンオフ
19190 'sp_put スプライトを表示
19200 case -1:
19210 '1.アルファベット　入力ボタン
19220 '実装未完全なので終了
19230  'Ok → T ○ :No:20=T
19240  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19250  'T  → M ○
19260 case 20:
19270   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19280  'M  →　F ○
19290 case 13:
19300   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19310  'F  → Ok
19320 case 6:
19330   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19340 end select
19350 endif
19360 '2.決定ボタン
19370 if ((key$ = chr$(13)) OR  (bg = 2)) then
19380 select case No
19390 case -1:
19400      'スプライトをOFFにする
19410      sp_on 41,0
19420 end select
19430 endif
19440 '3.カーソル　左
19450 if (key$ = chr$(29) or (y2 =-1)) then
19460 select case No
19470 'Line 4
19480 'Line 4
19490 '1.
19500 'Z:-1 :Ok ボタン
19510 'Ok → Z
19520 case -1:
19530      'Ok →　Z
19540      'Ok ボタン OFF,Z Button ON
19550      'No=26:Z
19560      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19570 '2.
19580 '26:Zボタン Z→ Y
19590 case 26:
19600      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19610 '3.
19620 '25:Yボタン  Y → X
19630 case 25:
19640      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19650 '4
19660 '24:Xボタン X → W
19670 case 24:
19680      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19690 '23:Wボタン X → W
19700 '5
19710 case 23:
19720 '22:Vボタン W → V
19730      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19740 case 22:
19750 '-1:V→ Ok
19760      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19770 'Line 3
19780 case 20:
19790 '33:T34  → S:33 :◯
19800     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19810 case 19:
19820 '32:S:33 → R:32 :◯
19830     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19840 case 18:
19850 '31:R:32 → Q:31 :◯
19860     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19870 '30:O → P :◯
19880 case 17:
19890 '30:Q:31 → P:30 :◯
19900     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19910 case 16:
19920 '29:P:30 → O:29 :◯
19930     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
19940 case 15:
19950 '28:O:29 → U:21  :◯
19960  'O:OFF,U:ON
19970     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
19980 '27:U:21 → T:20  :◯
19990 case 21:
20000 'U:OFF:T:ON
20010     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20020 'Line 2
20030 '26:M:13 → L:12 : ○
20040 case 13:
20050  'M:OFF,L:ON
20060    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20070 '25:L:12 → K:11 : ○
20080 case 12:
20090    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20100 '24:K:11 → J:10 : ○
20110 case 11:
20120    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20130 '23:J:10 → I:9  : ○
20140 case 10:
20150    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20160 '22:I:9 → H:8    :○
20170 case 9:
20180     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20190 '21:H:8 → N:14:   :○
20200 case 8:
20210     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20220 '20:N:14 → M:13:   :○
20230 case 14:
20240     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20250 '●.Line 1:
20260 '19:F:20 → E:19 : ☓
20270 'F:OFF,E:ON
20280 case 6:
20290     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20300 '18:E → D
20310 'E:OFF,D:ON
20320 case 5:
20330     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20340 '17:D → C
20350 'D:OFF,C:ON
20360 case 4:
20370      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20380 case 3:
20390      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20400 case 2:
20410      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20420 case 1:
20430      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20440 case 7:
20450      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20460 end select
20470 endif
20480 '上から下の方向
20490 if (key$ = chr$(31)) then
20500 select case No
20510 '●.1
20520 '1:A→H
20530 '2:H→O
20540 '3:O→V
20550 '4:V→A
20560 '●.2
20570 '5.B→I
20580 '6.I→P
20590 '7.P→W
20600 '8.W→B
20610 '●.3
20620 '9.C→J
20630 '10.J→Q
20640 '11.Q→X
20650 '12.X→C
20660 '●.4
20670 '13.D→K
20680 '14.K→R
20690 '15.R→Y
20700 '16.Y→D
20710 '●.7
20714 '25.G→N
20715 '26.N→U
20716 '27.U→G
20720 end select
20730 endif
20740 'gload Gazo$ + "Input_Birtheye2.png",0,0,0
20750 'color rgb(255,255,255)
20760 'locate 1,2:print "名前をアルファベットで入れてください"
20770 'color rgb(0,0,0)
20780 'locate 1,5:Input "名前（姓の部分）:",name1$
20785 '27.U→G
20790 'locate 1,5:print "Hit any key"
20800 'n1 = len(name1$)
20810 'if (n1 < 11) then
20820 'for i=1 to n1
20830 'buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
20840 'next i
20850 'endif
20860 'if b$=chr$(13) then goto Inputname2:
20870 '2.グリッドアイ　姓の入力
20880 end
20890 Inputname2:
20900 cls 3:init"kb:2":font 48
20910 gload Gazo$ + "Input_Birtheye1.png",0,0,0
20920 color rgb(255,255,255)
20930 locate 1,2:print "名前をアルファベットで入れてください"
20940 color rgb(0,0,0)
20950 locate 1,5:Input "名前(名の部分):",name2$
20960 n2 = len(name2$)
20970 for i=1 to n2
20980 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
20990 next i
21000 '計算領域
21010 Complate:
21020 'name1
21030 for i=0 to 25
21040 for n=1 to len(name1$)
21050 if (buf_chart$(i,0) = buf_name1$(n-1)) then
21060 b = val(buf_chart$(i,1))
21070 buffer(b-1) = buffer(b-1) + 1
21080 endif
21090 next n
21100 next i
21110 'name2
21120 for i=0 to 25
21130 for n=1 to len(name2$)
21140 if (buf_chart$(i,0) = buf_name2$(n-1)) then
21150 c = val(buf_chart$(i,1))
21160 buffer(c - 1) = buffer(c - 1) + 1
21170 endif
21180 next n
21190 next i
21200 '結果表示領域
21210 Result_Birtheye1:
21220 cls 3:init"kb:4":No=0
21230 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
21240 gload Gazo$ + "downscreen.png",0,0,800
21250 color rgb(255,255,255)
21260 '1の表示
21270 locate 3,14:print buffer(0);
21280 '2の表示
21290 locate 3,9:print buffer(1);
21300 '3の表示
21310 locate 3,5:print buffer(2);
21320 '4の表示
21330 locate 10,14:print buffer(3);
21340 '5の表示
21350 locate 10,9:print buffer(4);
21360 '6の表示
21370 locate 10,5:print buffer(5);
21380 '7の表示
21390 locate 15,14:print buffer(6);
21400 '8の表示
21410 locate 15,9:print buffer(7);
21420 '9の表示
21430 locate 15,5:print buffer(8);
21440 'name を大文字に変換
21450 locate 5,3:print ucase$(name1$ + name2$)
21460 color rgb(0,0,0)
21470 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
21480 bg=0:key$="":bg2=0
21490 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
21500 'Enterと決定ボタン
21510 key$ = inkey$
21520 bg = strig(1)
21530 bg2=strig(0)
21540 pause 200
21550 wend
21560 if ((bg=2) or (key$=chr$(13))) then
21570 'データーをクリアしてトップ画面に行く
21580 'for i=0 to 8
21590 'buffer(i)=0
21600 'next i
21610 'for n=0 to 9
21620 'buf_name1$(n) = ""
21630 'buf_name2$(n) = ""
21640 'next n
21650 'Topに行く
21660 'goto Main_Screen:
21670 '次へ
21680 goto BirdsEye_Result2:
21690 endif
21700 if (bg2=2) then
21710 'データーをクリアする
21720 for i=0 to 8
21730 buffer(i)=0
21740 next i
21750 for n=0 to 9
21760 buf_name1$(n)=""
21770 buf_name2$(n)=""
21780 next n
21790 goto Inputname1:
21800 endif
21810 'goto Result_Birtheye1:
21820 'Result_Birtheye2:
21830 'cls 3:color rgb(255,255,255)
21840 'end
21850 'Memory 消去
21860 '
21870 '横のフォーカスライン
21880 BirdsEye_Result2:
21890 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
21900 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
21910 Forcus1_buffer$(2)="○"
21920 else
21930 Forcus1_buffer$(2)="☓"
21940 endif
21950 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
21960 Forcus1_buffer$(1)="○"
21970 else
21980 Forcus1_buffer$(1) = "☓"
21990 endif
22000 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
22010 Forcus1_buffer$(0)="○"
22020 else
22030 Forcus1_buffer$(0)="☓"
22040 endif
22050 gload Gazo$ + "Screen1.png",0,0,0
22060 color rgb(255,0,0):
22070 locate 1,1
22080 print "バーズアイグリッド(フォーカスライン1)"
22090 color rgb(255,255,255)
22100 locate 1,3:
22110 print "●.横のフォーカスライン"
22120 locate 1,5
22130 print "1.切れ者ライン:"+Forcus1_buffer$(2)
22140 locate 1,7
22150 print "2.調停者ライン:"+Forcus1_buffer$(1)
22160 locate 1,9
22170 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
22180 color rgb(0,0,0)
22190 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22200 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
22210 key$=inkey$
22220 bg=strig(1)
22230 bg2=strig(0)
22240 pause 200
22250 wend
22260 if ((bg=2) or (key$=chr$(13))) then
22270 goto BirdsEye_Result3:
22280 endif
22290 if (bg2=2) then
22300 goto Main_Screen:
22310 endif
22320 BirdsEye_Result3:
22330 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22340 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
22350 Forcus2_buffer$(2)="○"
22360 else
22370 Forcus2_buffer$(2)="☓"
22380 endif
22390 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
22400 Forcus2_buffer$(1)="○"
22410 else
22420 Forcus2_buffer$(1) = "☓"
22430 endif
22440 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
22450 Forcus2_buffer$(0)="○"
22460 else
22470 Forcus2_buffer$(0)="☓"
22480 endif
22490 gload Gazo$ + "Screen1.png",0,0,0
22500 color rgb(255,0,0):
22510 locate 1,1
22520 print "バーズアイグリッド(フォーカスライン2)"
22530 color rgb(255,255,255)
22540 locate 1,3:
22550 print "●.縦のフォーカスライン"
22560 locate 1,5
22570 print "1.表現者ライン:" + Forcus2_buffer$(2)
22580 locate 1,7
22590 print "2.司令塔ライン:" + Forcus2_buffer$(1)
22600 locate 1,9
22610 print "3.指導者ライン:" + Forcus2_buffer$(0)
22620 color rgb(0,0,0)
22630 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22640 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
22650 key$=inkey$
22660 bg=strig(1)
22670 bg2=strig(0)
22680 pause 200
22690 wend
22700 if ((bg = 2) or (key$ = chr$(13))) then
22710 goto BirdsEye_Result4:
22720 endif
22730 if (bg2=2) then
22740 goto Main_Screen:
22750 endif
22760 BirdsEye_Result4:
22770 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22780 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
22790 Forcus3_buffer$(1) = "○"
22800 else
22810 Forcus3_buffer$(1) = "☓"
22820 endif
22830 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
22840 Forcus3_buffer$(0) = "○"
22850 else
22860 Forcus3_buffer$(0) = "☓"
22870 endif
22880 gload Gazo$ + "Screen1.png",0,0,0
22890 color rgb(255,0,0):
22900 locate 1,1
22910 print "バーズアイグリッド(フォーカスライン3)"
22920 color rgb(255,255,255)
22930 locate 1,3:
22940 print "●.斜めのフォーカスライン"
22950 locate 1,5
22960 print "1.成功者ライン:"+Forcus3_buffer$(1)
22970 locate 1,7
22980 print "2.セレブライン:"+Forcus3_buffer$(0)
22990 color rgb(0,0,0)
23000 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
23010 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23020 key$ = inkey$
23030 bg = strig(1)
23040 bg2 = strig(0)
23050 pause 200
23060 wend
23070 if ((bg=2) or (key$=chr$(13))) then
23080  goto Result_Birtheye1:
23090 endif
23100 if (bg2=2) then
23110 'データークリア
23120 for i=0 to 8
23130  buffer(i) = 0
23140 next i
23150  goto Main_Screen:
23160 endif
23170 References1:
23180 cls 3:key$ = "":bg = 0:play "":font 48-16
23190 gload Gazo$ + "Reference1_20230703.png",0,0,0
23200 print chr$(13)+chr$(13)+chr$(13)
23210 color rgb(0,0,0)
23220 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
23230 print "Author:carol Adrinne,PhD"+chr$(13)
23240 print "出版社:幻冬舎" + chr$(13)
23250 print "HP:www.carolAdrienne.jp/"+chr$(13)
23260 print "ISBN:978-4-344-01394-0"+chr$(13)
23270 print "定価:1500円 + 税"+chr$(13)
23280 color rgb(255,255,255)
23290 locate 1,23
23300 print "ジョイパッド右：次へ"
23310 while (key$ <> chr$(13) and bg <> 2)
23320 bg = strig(1)
23330 key$ = inkey$
23340 wend
23350 '
23360 if ((bg = 2) or (key$ = chr$(13))) then
23370 pause 200:goto References2:
23380 endif
23390 'ユダヤの秘儀 カバラ大占術
23400 References2:
23410 cls 3:play "":bg = 0:key$ = ""
23420 gload Gazo$ + "Reference2_20230703.png",0,0,0
23430 '参考文献２
23440 'カバラ大占術
23450 print chr$(13) + chr$(13) + chr$(13)
23460 color  rgb(0,0,0):font 48-16
23470 locate 1,3
23480 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
23490 print "著者：浅野　八郎" + chr$(13)
23500 print "出版社:NON BOOK" + chr$(13)
23510 print "ISBN:4-396-10364-6" + chr$(13)
23520 print "定価:829円 + 税"
23530 color rgb(255,255,255)
23540 locate 1,23
23550 print "ジョイパッド右：トップへ行く"
23560 while ((key$ <> chr$(13)) and (bg <> 2))
23570 bg = strig(1)
23580 key$ = inkey$
23590 wend
23600 if ((bg = 2) or (key$ = chr$(13))) then
23610 pause 200:goto Main_Screen:
23620 endif
23630 end
23640 '1.数秘術　トップ画面
23650 Kabara_First_Top:
23660 cls 3:color rgb(255,255,255):play ""
23670 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
23680 gload Gazo$ + "downscreen.png",0,0,800
23690 No=0:init"kb:4"
23700 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
23710 print chr$(13);chr$(13)
23720 color rgb(255,255,255)
23730 locate 3,4:No=0
23740 print "番号選んでください" + chr$(13)
23750 print " :1.数秘術占い" + chr$(13)
23760 print " :2.トップ画面に戻る" + chr$(13)
23770 color rgb(0,0,0)
23780 sp_on 0,1
23790 locate 1,15:print "1.数秘術番号を求めるを選択"
23800 'KeyBord:true
23810 'Joy Pad:true
23820 '上、下:true
23830 '
23840 'ｂｇ：決定ボタン
23850 'カーソル　上
23860 'カーソル　下
23870 Kabara_First_Top2:
23880 key$ = "":bg = 0:y = 0:
23890 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
23900 key$ = inkey$
23910 bg = strig(1)
23920 y = stick(1)
23930 'PauseでCPUを休める
23940 pause 5
23950 wend
23960 '1.カーソル　下 処理 chr$(31)
23970 'カーソル　下
23980 if ((key$ = chr$(31)) or (y = 1)) then
23990 select case No
24000 '
24010 case 1:
24020 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
24030 case 0:
24040 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24050 'case 2:
24060 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
24070 end select
24080 endif
24090 '2.カーソル　上 処理 chr$(30)
24100 if ((key$ = chr$(30)) or (y = -1)) then
24110 select case No
24120 case 0:
24130 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24140 case 1:
24150 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
24160 'case 2:
24170 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
24180 end select
24190 endif
24200 '3.決定 処理  bg:2 or Enter key:chr$(13)
24210 if ((bg = 2) or (key$ = chr$(13))) then
24220 select case No
24230 case 0:
24240 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
24250 goto Kabara_TopScreen:
24260 'case 1:
24270 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
24280 case 1:
24290 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
24300 end select
24310 endif
24320 '
24330 'Kabara 相性占い トップ画面
24340 Kabara_Aishou_Top:
24350 cls 3:y=0:key$="":bg=0:No=0
24360 play ""
24370 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
24380 gload Gazo$ + "downscreen.png",0,0,800
24390 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
24400 print chr$(13) + chr$(13)
24410 locate 0,4:color rgb(255,255,255)
24420 'print "Ok"
24430 '
24440 print "番号を選んでください" + chr$(13)
24450 print " :1.男女2人の相性(未実装)" + chr$(13)
24460 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
24470 print " :3.トップ画面に戻る" + chr$(13)
24480 sp_on 0,1:sp_on 1,0:sp_on 2,0
24490 color rgb(0,0,0)
24500 locate 1,15:print "1.男女2人の相性占いを選択"
24510 Kabara_Aishou_Top2:
24520 key$ = "":y = 0:bg = 0:
24530 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
24540 'ジョイパッド(右) ,十字キー (上下)
24550 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
24560 y = stick(1)
24570 key$ = inkey$
24580 bg = strig(1)
24590 pause 5
24600 wend
24610 'カーソル　下 or 十字キー　下
24620 if ((key$ = chr$(31)) or (y = 1)) then
24630 select case No
24640 '選択肢　1 - 2に変更
24650 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
24660 'ok
24670 case 0:
24680 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
24690 '選択肢　2 - 3に変更
24700 case 1:
24710 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
24720 'リリース時 case 2コメント解除
24730 case 2:
24740 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
24750 case else:
24760 goto Kabara_Aishou_Top2:
24770 end select
24780 endif
24790 '十字キー　上　、カーソル　上
24800 if ((key$ = chr$(30)) or (y = -1)) then
24810 select case No
24820 case 0:
24830 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
24840 case 1:
24850 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
24860 case 2:
24870 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
24880 case else:
24890 goto Kabara_Aishou_Top2:
24900 end select
24910 endif
24920 '十字キー　上下:選択
24930 'ジョイパッド 右:決定
24940 if ((bg = 2) or (key$ = chr$(13))) then
24950 select case No
24960 '1.男女の相性
24970 case 0:
24980 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
24990 '2ビジネスの相性
25000 case 1:
25010 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
25020 case 2:
25030 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
25040 end select
25050 endif
25060 'ビジネスの相性　
25070 '1.1人目のビジネスの相性　名前入力　1人目
25080 Business_Aishou_Input_1_parson:
25090 No=0:color RGB(255,255,255)
25100 cls 3:init "kb:2"
25110 gload Gazo$ + "Screen1.png",0,0,0
25120 gload Gazo$ + "downscreen.png",0,0,800
25130 play "":color rgb(255,0,0):name$ = ""
25140 locate 0,1
25150 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
25160 color rgb(255,255,255):
25170 locate 0,3
25180 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
25190 print "入れてください" + chr$(13)
25200 locate 0,15:color rgb(0,0,0)
25210 Input "1人目の名前:",name$
25220 'color rgb(0,0,0)
25230 'locate 0,13:print "                                     "
25240 'locate 0,13:print "1人目の名前を入力してエンターキー":
25250 'buffer_name$(0):1人目の名前
25260 buffer_name$(0) = name$:
25270 goto Business_Aishou_Input_2_Parson:
25280 '2.2人目のビジネスの相性 名前入力 2人目
25290 Business_Aishou_Input_2_Parson:
25300 cls 3:init "kb:2":name$ = "":No=0
25310 gload Gazo$ + "Screen1.png",0,0,0
25320 gload Gazo$ + "downscreen.png",0,0,800
25330 color rgb(255,0,0)
25340 'Title
25350 locate 0,1
25360 print "ビジネスの相性　2人目"
25370 locate 0,3
25380 color rgb(255,255,255)
25390 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
25400 print "入れてください" + chr$(13)
25410 locate 0,15:color rgb(0,0,0)
25420 Input "2人目の名前:",name$
25430 'color rgb(0,0,0)
25440 'locate 0,15:print "                                              "
25450 'locate 0,15:print "2人目の名前を入力してエンター ":
25460 '2人目
25470 '2人目の名前を入れるに代入
25480 buffer_name$(1) = name$:
25490 goto Select_jyoushi:
25500 '3.上司の選択
25510 Select_jyoushi:
25520 cls 3:gload Gazo$ + "Screen1.png",0,0,0
25530 gload Gazo$ + "downscreen.png",0,0,800
25540 init "kb:4":No=0
25550 color rgb(0,0,255)
25560 locate 1,1
25570 print "上司の選択"
25580 color rgb(255,255,255)
25590 locate 0,4:print "名前から上司の方を選んでください"
25600 locate 0,6
25610 print " :";buffer_name$(0);"が上 司";chr$(13)
25620 locate 0,8
25630 print " :";buffer_name$(1);"が上 司";chr$(13)
25640 locate 0,15:
25650 print "                                     "
25660 locate 0,15:color rgb(0,0,0)
25670 print "上司の方を選んで右の丸ボタン"
25680 sp_on 0,1:sp_on 1,0:sp_on 2,0
25690 Select_jyoushi2:
25700 'ここでNo=0をおいてはいけない
25710 y=0:key$="":bg=0:
25720 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
25730 y = stick(1)
25740 key$ = inkey$
25750 bg = strig(1)
25760 pause 5
25770 wend
25780 '1.カーソル下の処理　or 十字キーの下処理
25790 if ((key$ = chr$(31)) or (y = 1)) then
25800 select case No
25810 case 0:
25820 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
25830 case 1:
25840 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
25850 end select
25860 endif
25870 '2.カーソル上処理　or 十字キーの上の処理
25880 if ((key$ = chr$(30)) or (y = -1)) then
25890 select case No
25900 case 0:
25910 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
25920 case 1:
25930 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
25940 end select
25950 endif
25960 if ((key$ = chr$(13)) or (bg = 2)) then
25970 select case No
25980 case 0:
25990 '上司(name1)を配列に代入
26000 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26010 case 1:
26020 '上司（name2)を配列に代入
26030 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26040 end select
26050 endif
26060 '3.決定ボタン　Enter or 右の丸ボタン
26070 '1.誕生日入力
26080 '1-1.生まれた年を入力
26090 'Jyoushi_born_year:
26100 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
26110 '---------------------------------------------'
26120 '誕生日入力(生れた年代)
26130 Jyoushi_Input_Seireki:
26140 'buf_Jyoushi_Born_Year:上司の生まれた年代
26150 'buf_Jyoushi_Born_Day(0) = born_year
26160 cls 3:play "":count=0:count2=0
26170 init"kb:4"
26180 'No=-1:Okのとき
26190 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
26200 for i=0 to 3
26210 buf_Jyoushi_Born_Day(i)=0
26220 next i
26230 gload Gazo$ + "Screen1.png",0,0,0
26240 gload Gazo$ + "downscreen.png",0,0,800
26250 'Init"kb:2"
26260 '音声ファイル再生 2023.06.07
26270 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
26280 font 48
26290 locate 0,1
26300 '文字色：黒　 color rgb(0,0,0)
26310 color rgb(255,255,255)
26320 print "上司の生まれた年代を入れて下さい" + chr$(13)
26330 color rgb(255,255,255)
26340 locate 1,3
26350 print "上司の生まれた年代(西暦4桁):";buf_year$
26360 color rgb(255,255,255)
26370 'locate 4,6:print ":7"
26380 'locate 9,6:print ":8"
26390 'locate 12,6:print ":9"
26400 locate 4,6
26410 print ":7  :8  :9" + chr$(13)
26420 color rgb(255,255,255)
26430 locate 4,8
26440 print ":4  :5  :6" + chr$(13)
26450 color rgb(255,255,255)
26460 locate 4,10
26470 print ":1  :2  :3" + chr$(13)
26480 locate 4,12
26490 print "    :0"
26500 locate 12,12
26510 color rgb(0,0,255)
26520 print ":Ok"
26530 sp_on 4,0: sp_on 5,0:sp_on 6,0
26540 sp_on 7,0:sp_on 8,0:sp_on 9,0
26550 sp_on 10,0:sp_on 11,0:sp_on 12,0
26560 sp_on 13,0:sp_on 14,1
26570 Jyoushi_Input_Seireki2:
26580 key$="":bg=0:y=0:y2=0:bg2=0:
26590 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
26600 key$ = inkey$
26610 bg = strig(1)
26620 y = stick(1)
26630 y2 = stick(0)
26640 bg2=strig(0)
26650 pause 5
26660 wend
26670 '十字キー　ここから
26680 '上の矢印　または、十字キー上
26690 if ((y = -1) or (key$ = chr$(30))) then
26700 select case No
26710 'No=-1:okのとき:初期の状態
26720 '0kボタンから３に移動
26730 '上に行く 処理
26740 case -1:
26750 No=3:sp_on 12,1:sp_on 14,0
26760 pause 200:goto Jyoushi_Input_Seireki2:
26770 '選択肢:3
26780 '3ボタンから 6に移動
26790 case 3:
26800 No=6:sp_on 12,0:sp_on 11,1
26810 pause 200:goto Jyoushi_Input_Seireki2:
26820 '6ボタンから ９に移動
26830 case 6:
26840 No=9:sp_on 10,1:sp_on 11,0
26850 pause 200:goto Jyoushi_Input_Seireki2:
26860 '6ボタンから ９に移動　ここまで
26870 '9で上を押して何もしない
26880 case 9:
26890 '何もしない
26900 No=9
26910 pause 200:goto Jyoushi_Input_Seireki2:
26920 '9で上を押しても何もしない　ここまで
26930 '上　 0ボタンから2ボタン
26940 'sp_on 6,1:1
26950 'sp_on 8,1:5
26960 'sp_on 7,1:7
26970 case 0:
26980 No=2:sp_on 13,0:sp_on 9,1:
26990 pause 200:goto Jyoushi_Input_Seireki2:
27000 '上  0ボタンから2ボタン　ここまで
27010 '2から５になる 上
27020 case 2:
27030 No=5:sp_on 8,1:sp_on 9,0:
27040 pause 200:goto Jyoushi_Input_Seireki2:
27050 case 5:
27060 No=8:sp_on 7,1:sp_on 8,0
27070 pause 200:goto Jyoushi_Input_Seireki2:
27080 case 8:
27090 pause 200:goto Jyoushi_Input_Seireki2:
27100 case 1:
27110 No=4:sp_on 5,1:sp_on 6,0
27120 pause 200:goto Jyoushi_Input_Seireki2:
27130 case 4:
27140 No=7:sp_on 4,1:sp_on 5,0
27150 pause 200:goto Jyoushi_Input_Seireki2:
27160 case 7:
27170 pause 200:goto Jyoushi_Input_Seireki2:
27180 end select
27190 endif
27200 '左３　ここまで
27210 '下の矢印
27220 '中央 2
27230 if ((y=1) or (key$ = chr$(31))) then
27240 select case No
27250 '9から６に下げる
27260 case 9:
27270 No=6:sp_on 11,1:sp_on 10,0
27280 pause 200:goto Jyoushi_Input_Seireki2:
27290 '6から３に下げる
27300 case 6:
27310 No=3:sp_on 12,1:sp_on 11,0
27320 pause 200:goto Jyoushi_Input_Seireki2:
27330 '3から０ｋに変える
27340 case 3:
27350 No=-1:sp_on 14,1:sp_on 12,0
27360 pause 200:goto Jyoushi_Input_Seireki2:
27370 'Okから下のボタンを押しても何もしない
27380 case -1:
27390 pause 200:goto Jyoushi_Input_Seireki2:
27400 case 8:
27410 No=5:sp_on 8,1:sp_on 7,0
27420 pause 200:goto Jyoushi_Input_Seireki2:
27430 case 5:
27440 No=2:sp_on 9,1:sp_on 8,0
27450 pause 200:goto Jyoushi_Input_Seireki2:
27460 case 2:
27470 No=0:sp_on 13,1:sp_on 9,0
27480 pause 200:goto Jyoushi_Input_Seireki2:
27490 case 0:
27500 pause 200:goto Jyoushi_Input_Seireki2:
27510 case 7:
27520 No=4:sp_on 5,1:sp_on 4,0
27530 pause 200:goto Jyoushi_Input_Seireki2:
27540 case 4:
27550 No=1:sp_on 6,1:sp_on 5,0
27560 pause 200:goto Jyoushi_Input_Seireki2:
27570 case 1:
27580 pause 200:goto Jyoushi_Input_Seireki2:
27590 end select
27600 endif
27610 '左へボタン 十字キー　左　or 　カーソル左
27620 if ((y2 = -1) or (key$ = chr$(29))) then
27630 select case No
27640 'Ok ボタン  Okから　左　０に行く
27650 case -1:
27660 No=0:sp_on 13,1:sp_on 14,0
27670 pause 200:goto Jyoushi_Input_Seireki2:
27680 '0 ボタン  左　何もしない
27690 case 0:
27700 pause 200:goto Jyoushi_Input_Seireki2:
27710 case 3:
27720 No=2:sp_on 9,1:sp_on 12,0:
27730 pause 200:goto Jyoushi_Input_Seireki2:
27740 case 2:
27750 No=1:sp_on 6,1:sp_on 9,0:
27760 pause 200:goto Jyoushi_Input_Seireki2:
27770 case 1:
27780 pause 200:goto Jyoushi_Input_Seireki2:
27790 case 6:
27800 No=5:sp_on 8,1:sp_on 11,0
27810 pause 200:goto Jyoushi_Input_Seireki2:
27820 case 5:
27830 No=4:sp_on 5,1:sp_on 8,0
27840 pause 200:goto Jyoushi_Input_Seireki2:
27850 case 4:
27860 pause 200:goto Jyoushi_Input_Seireki2:
27870 case 9:
27880 No=8:sp_on 7,1:sp_on 10,0
27890 pause 200:goto Jyoushi_Input_Seireki2:
27900 case 8:
27910 No=7:sp_on 4,1:sp_on 7,0
27920 pause 200:goto Jyoushi_Input_Seireki2:
27930 case 7:
27940 pause 200:goto Jyoushi_Input_Seireki2:
27950 end select
27960 endif
27970 '右  十字キー　右　or カーソル　右
27980 if ((y2 = 1) or (key$ = chr$(28))) then
27990 select case No
28000 '0ボタンからokボタン右に移動
28010 case 0:
28020 No=-1:sp_on 14,1:sp_on 13,0
28030 pause 200:goto Jyoushi_Input_Seireki2:
28040 '0ボタンからokボタン 右に移動　ここまで
28050 'OKボタンで右を押して何もしない
28060 case -1:
28070 pause 200:goto Jyoushi_Input_Seireki2:
28080 case 1:
28090 No=2:sp_on 9,1:sp_on 6,0
28100 pause 200:goto Jyoushi_Input_Seireki2:
28110 case 2:
28120 No=3:sp_on 12,1:sp_on 9,0
28130 pause 200:goto Jyoushi_Input_Seireki2:
28140 case 3:
28150 pause 200:goto Jyoushi_Input_Seireki2:
28160 case 4:
28170 No=5:sp_on 8,1:sp_on 5,0
28180 pause 200:goto Jyoushi_Input_Seireki2:
28190 case 5:
28200 No=6:sp_on 11,1:sp_on 8,0
28210 pause 200:goto Jyoushi_Input_Seireki2:
28220 case 7:
28230 No=8:sp_on 7,1:sp_on 4,0
28240 pause 200:goto Jyoushi_Input_Seireki2:
28250 case 8:
28260 No=9:sp_on 10,1:sp_on 7,0
28270 pause 200:goto Jyoushi_Input_Seireki2:
28280 case 9:
28290 pause 200:goto Jyoushi_Input_Seireki2:
28300 case 6:
28310 pause 200:goto Jyoushi_Input_Seireki2:
28320 end select
28330 'Okから右ボタンを押して何もしない ここまで
28340 endif
28350 '十字キー　ここまで
28360 '==============================
28370 'ここから
28380 '==============================
28390 if ((bg=2) or (key$=chr$(13))) then
28400 select case count
28410 case 0:
28420 count = 1
28430 if (No=-1) then
28440 count = 0:No=0
28450 buf_Jyoushi_Born_Day(0) = No
28460 'Okボタンを押したとき
28470 goto Jyoushi_Input_Seireki2:
28480 else
28490 'Okボタン以外が押されたとき
28500 if (No>=1 and No<=2) then
28510 buf_year$="":buf_year$=str$(No) + "***"
28520 buf_year = No:a= No
28530 buf_Jyoushi_Born_Day(0) = No
28540 locate 1,3
28550 color rgb(255,255,255)
28560 print "上司の生まれた年代(西暦4桁):";buf_year$
28570 goto Jyoushi_Input_Seireki2:
28580 else
28590 count=0
28600 ui_msg"数字が範囲外になります。"
28610 buf_year$="":buf_year=0
28620 goto Jyoushi_Input_Seireki2:
28630 endif
28640 endif
28650 case 1:
28660 count = 2
28670 if (No = -1) then
28680 count = 1
28690 goto Jyoushi_Input_Seireki2:
28700 else
28710 buf_year = a * 10 + No
28720 b=buf_year
28730 buf_year$ = str$(buf_year) + "**"
28740 buf_Jyoushi_Born_Day(0)=buf_year
28750 locate 1,3
28760 color rgb(255,255,255)
28770 print "                                                                "
28780 locate 1,3
28790 print "上司の生まれた年代(西暦4桁):" + buf_year$
28800 'if (No = -1) then
28810 'count=1
28820 goto Jyoushi_Input_Seireki2:
28830 endif
28840 case 2:
28850 count=3
28860 if (No=-1) then
28870 count =2
28880 goto Jyoushi_Input_Seireki2:
28890 else
28900 buf_year = b * 10 + No
28910 c=buf_year
28920 buf_year$ = str$(buf_year) + "*"
28930 buf_Jyoushi_Born_Day(0) = buf_year
28940 locate 1,3
28950 color rgb(255,255,255)
28960 print "                                        "
28970 locate 1,3
28980 print "上司の生まれた年代(西暦4桁):";buf_year$
28990 goto Jyoushi_Input_Seireki2:
29000 endif
29010 case 3:
29020 count=4
29030 if (No = -1) then
29040 No=0
29050 goto Jyoushi_Input_Seireki2:
29060 else
29070 buf_year = c * 10 + No
29080 buf_year$ = str$(buf_year)
29090 buf_Jyoushi_Born_Day(0) = buf_year
29100 locate 1,3
29110 color RGB(255,255,255)
29120 print "                                      "
29130 locate 1,3
29140 print "上司の生まれた年代(西暦4桁):";buf_year$
29150 buf_year=val(buf_year$)
29160 'year=val(buf_year$)
29170 'if (No=-1) then
29180 'goto Input_Born_Month:
29190 'else
29200 goto Jyoushi_Input_Seireki2:
29210 endif
29220 case 4:
29230 'bufyear=buf_year
29240 if (No=-1) then
29250 buf_year = val(buf_year$)
29260 buf_Jyoushi_Born_Day(0)=buf_year
29270 sp_on 14,0:No=0
29280 goto Jyoushi_Input_Born_Month:
29290 else
29300 goto Jyoushi_Input_Seireki2:
29310 endif
29320 end select
29330 endif
29340 '===========================
29350 'ここまでを部下のところにコピーする.
29360 '===========================
29370 if (bg2 = 2) then
29380 select case count2
29390 case 0:
29400 if (No = -1) then
29410 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
29420 count=0
29430 locate 1,3
29440 color rgb(255,255,255)
29450 print "                                      "
29460 locate 1,3
29470 print "上司の生まれた年代（西暦4桁):" + buf_year$
29480 goto Jyoushi_Input_Seireki2:
29490 else
29500 '(buf_year=0) then
29510 buf_year=0:buf_year$="****"
29520 locate 1,3
29530 print "                                       "
29540 locate 1,3
29550 print "上司の生まれた年代(西暦4桁):"+buf_year$
29560 goto Jyoushi_Input_Seireki2:
29570 'endif
29580 endif
29590 end select
29600 endif
29610 'Input"上司の生れた年代(4桁,〜2025年):",year
29620 'if year > 2025 then goto Jyoushi_Input_Seireki:
29630 'if year = 123 then cls 3:cls 4:goto Main_Screen:
29640 '"4桁目"
29650 'bufyear4 = fix(year / 1000)
29660 '"3桁目"
29670 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
29680 '"2桁目"
29690 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
29700 '"1桁目"
29710 'bufyear1 = fix((year - ((bufyear4*
29720 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
29730 '2.生まれた月を入力
29740 Jyoushi_Input_Born_Month:
29750 cls 3:play "":count=0:count2=0
29760 'No=-1:Okのとき
29770 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
29780 for i=0 to 1
29790 buf_month(i)=0
29800 next i
29810 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
29820 gload Gazo$ + "Screen1.png",0,0,0
29830 gload Gazo$ + "downscreen.png",0,0,800
29840 'Init"kb:4"
29850 '音声ファイル再生 2023.06.07
29860 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
29870 font 48
29880 locate 0,1
29890 '文字色：黒　 color rgb(0,0,0)
29900 '文字色:白
29910 color rgb(255,255,255)
29920 print "上司の生まれた月を入れて下さい" + chr$(13)
29930 '文字色:白
29940 color rgb(255,255,255)
29950 locate 1,3
29960 '文字色:白
29970 print "上司の生まれた月(1月~12月):"+buf_Month$
29980 color rgb(255,255,255)
29990 'locate 4,6:print ":7"
30000 'locate 9,6:print ":8"
30010 'locate 12,6:print ":9"
30020 locate 4,6
30030 '文字色:赤
30040 print ":7  :8  :9" + chr$(13)
30050 color rgb(255,255,255)
30060 locate 4,8
30070 print ":4  :5  :6" + chr$(13)
30080 color rgb(255,255,255)
30090 locate 4,10
30100 print ":1  :2  :3" + chr$(13)
30110 locate 4,12
30120 print "    :0"
30130 locate 12,12
30140 color rgb(0,0,255)
30150 print ":Ok"
30160 sp_on 4,0: sp_on 5,0:sp_on 6,0
30170 sp_on 7,0:sp_on 8,0:sp_on 9,0
30180 sp_on 10,0:sp_on 11,0:sp_on 12,0
30190 sp_on 13,0:sp_on 14,1
30200 Jyoushi_Input_Born_Month2:
30210 key$="":bg=0:y=0:y2=0:bg2=0
30220 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
30230 key$ = inkey$
30240 bg = strig(1)
30250 y = stick(1)
30260 y2 = stick(0)
30270 bg2 = strig(0)
30280 pause 5
30290 wend
30300 '十字キー　ここから
30310 '上の矢印　または、十字キー上
30320 if ((y = -1) or (key$ = chr$(30))) then
30330 select case No
30340 'No=-1:okのとき:初期の状態
30350 '0kボタンから３に移動
30360 '上に行く 処理
30370 case -1:
30380 No=3:sp_on 12,1:sp_on 14,0
30390 pause 200:goto Jyoushi_Input_Born_Month2:
30400 '選択肢:3
30410 '3ボタンから 6に移動
30420 case 3:
30430 No=6:sp_on 12,0:sp_on 11,1
30440 pause 200:goto Jyoushi_Input_Born_Month2:
30450 '6ボタンから ９に移動
30460 case 6:
30470 No=9:sp_on 10,1:sp_on 11,0
30480 pause 200:goto Jyoushi_Input_Born_Month2:
30490 '6ボタンから ９に移動　ここまで
30500 '9で上を押して何もしない
30510 case 9:
30520 '何もしない
30530 No=9
30540 pause 200:goto Jyoushi_Input_Born_Month2:
30550 '9で上を押しても何もしない　ここまで
30560 '上　 0ボタンから2ボタン
30570 'sp_on 6,1:1
30580 'sp_on 8,1:5
30590 'sp_on 7,1:7
30600 case 0:
30610 No=2:sp_on 13,0:sp_on 9,1:
30620 pause 200:goto Jyoushi_Input_Born_Month2:
30630 '上  0ボタンから2ボタン　ここまで
30640 '2から５になる 上
30650 case 2:
30660 No=5:sp_on 8,1:sp_on 9,0:
30670 pause 200:goto Jyoushi_Input_Born_Month2:
30680 case 5:
30690 No=8:sp_on 7,1:sp_on 8,0
30700 pause 200:goto Jyoushi_Input_Born_Month2:
30710 case 8:
30720 pause 200:goto Input_Born_Month2:
30730 case 1:
30740 No=4:sp_on 5,1:sp_on 6,0
30750 pause 200:goto Jyoushi_Input_Born_Month2:
30760 case 4:
30770 No=7:sp_on 4,1:sp_on 5,0
30780 pause 200:goto Jyoushi_Input_Born_Month2:
30790 case 7:
30800 pause 200:goto Input_Born_Month2:
30810 end select
30820 endif
30830 '左３　ここまで
30840 '下の矢印
30850 '中央 2
30860 if ((y=1) or (key$ = chr$(31))) then
30870 select case No
30880 '9から６に下げる
30890 case 9:
30900 No=6:sp_on 11,1:sp_on 10,0
30910 pause 200:goto Jyoushi_Input_Born_Month2:
30920 '6から３に下げる
30930 case 6:
30940 No=3:sp_on 12,1:sp_on 11,0
30950 pause 200:goto Jyoushi_Input_Born_Month2:
30960 '3から０ｋに変える
30970 case 3:
30980 No=-1:sp_on 14,1:sp_on 12,0
30990 pause 200:goto Jyoushi_Input_Born_Month2:
31000 'Okから下のボタンを押しても何もしない
31010 case -1:
31020 pause 200:goto Jyoushi_Input_Born_Month2:
31030 case 8:
31040 No=5:sp_on 8,1:sp_on 7,0
31050 pause 200:goto Jyoushi_Input_Born_Month2:
31060 case 5:
31070 No=2:sp_on 9,1:sp_on 8,0
31080 pause 200:goto Jyoushi_Input_Born_Month2:
31090 case 2:
31100 No=0:sp_on 13,1:sp_on 9,0
31110 pause 200:goto Jyoushi_Input_Born_Month2:
31120 case 0:
31130 pause 200:goto Jyoushi_Input_Born_Month2:
31140 case 7:
31150 No=4:sp_on 5,1:sp_on 4,0
31160 pause 200:goto Jyoushi_Input_Born_Month2:
31170 case 4:
31180 No=1:sp_on 6,1:sp_on 5,0
31190 pause 200:goto Jyoushi_Input_Born_Month2:
31200 case 1:
31210 pause 200:goto Jyoushi_Input_Born_Month2:
31220 end select
31230 endif
31240 '左へボタン 十字キー　左　or 　カーソル左
31250 if ((y2 = -1) or (key$ = chr$(29))) then
31260 select case No
31270 'Ok ボタン  Okから　左　０に行く
31280 case -1:
31290 No=0:sp_on 13,1:sp_on 14,0
31300 pause 200:goto Jyoushi_Input_Born_Month2:
31310 '0 ボタン  左　何もしない
31320 case 0:
31330 pause 200:goto Jyoushi_Input_Born_Month2:
31340 case 3:
31350 No=2:sp_on 9,1:sp_on 12,0:
31360 pause 200:goto Jyoushi_Input_Born_Month2:
31370 case 2:
31380 No=1:sp_on 6,1:sp_on 9,0:
31390 pause 200:goto Jyoushi_Input_Born_Month2:
31400 case 1:
31410 pause 200:goto Jyoushi_Input_Born_Month2:
31420 case 6:
31430 No=5:sp_on 8,1:sp_on 11,0
31440 pause 200:goto Jyoushi_Input_Born_Month2:
31450 case 5:
31460 No=4:sp_on 5,1:sp_on 8,0
31470 pause 200:goto Jyoushi_Input_Born_Month2:
31480 case 4:
31490 pause 200:goto Jyoushi_Input_Born_Month2:
31500 case 9:
31510 No=8:sp_on 7,1:sp_on 10,0
31520 pause 200:goto Input_Born_Month2:
31530 case 8:
31540 No=7:sp_on 4,1:sp_on 7,0
31550 pause 200:goto Jyoushi_Input_Born_Month2:
31560 case 7:
31570 pause 200:goto Jyoushi_Input_Born_Month2:
31580 end select
31590 endif
31600 '右  十字キー　右　or カーソル　右
31610 if ((y2 = 1) or (key$ = chr$(28))) then
31620 select case No
31630 '0ボタンからokボタン右に移動
31640 case 0:
31650 No=-1:sp_on 14,1:sp_on 13,0
31660 pause 200:goto Jyoushi_Input_Born_Month2:
31670 '0ボタンからokボタン 右に移動　ここまで
31680 'OKボタンで右を押して何もしない
31690 case -1:
31700 pause 200:goto Jyoushi_Input_Born_Month2:
31710 case 1:
31720 No=2:sp_on 9,1:sp_on 6,0
31730 pause 200:goto Jyoushi_Input_Born_Month2:
31740 case 2:
31750 No=3:sp_on 12,1:sp_on 9,0
31760 pause 200:goto Jyoushi_Input_Born_Month2:
31770 case 3:
31780 pause 200:goto Jyoushi_Input_Born_Month2:
31790 case 4:
31800 No=5:sp_on 8,1:sp_on 5,0
31810 pause 200:goto Jyoushi_Input_Born_Month2:
31820 case 5:
31830 No=6:sp_on 11,1:sp_on 8,0
31840 pause 200:goto Jyoushi_Input_Born_Month2:
31850 case 7:
31860 No=8:sp_on 7,1:sp_on 4,0
31870 pause 200:goto Jyoushi_Input_Born_Month2:
31880 case 8:
31890 No=9:sp_on 10,1:sp_on 7,0
31900 pause 200:goto Jyoushi_Input_Born_Month2:
31910 case 9:
31920 pause 200:goto Jyoushi_Input_Born_Month2:
31930 case 6:
31940 pause 200:goto Jyoushi_Input_Born_Month2:
31950 end select
31960 'Okから右ボタンを押して何もしない ここまで
31970 endif
31980 '十字キー　ここまで
31990 '右の丸ボタン + Enter key 決定キー
32000 if ((bg=2) or (key$=chr$(13))) then
32010 select case count
32020 case 0:
32030 if (No=-1) then No=0
32040 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
32050 if (buf_month > 1 and buf_month < 10)  then
32060 buf_Month$ = str$(buf_month)
32070 'buf_month=No
32080 endif
32090 if (buf_month = 1)  then
32100 buf_Month$ = str$(buf_month) + "*"
32110 'c=buf_month
32120 endif
32130 locate 1,3
32140 print "                                     "
32150 color RGB(255,255,255)
32160 locate 1,3
32170 print "上司の生まれた月(1月~12月):" + buf_Month$
32180 goto Jyoushi_Input_Born_Month2:
32190 case 1:
32200 count = 2:
32210 'c = val(buf_Month$)
32220 if (No = -1) then
32230 'count=0
32240 No=0
32250 month=buf_month
32260 buf_month=val(buf_Month$)
32270 month=buf_month
32280 buf_Jyoushi_Born_Day(1)=month
32290 '生まれた日に飛ぶ
32300 goto Jyoushi_Input_Born_Day:
32310 else
32320 buf_month = c*10 + No
32330 'if (buf_month = 1) then
32340 'buf_Month$ = str$(buf_month)
32350 'endif
32360 buf_Month$ = str$(buf_month)
32370 buf_Jyoushi_Born_Day(1) = buf_month
32380 locate 0,3
32390 print "                                           "
32400 locate 1,3
32410 color Rgb(255,255,255)
32420 print "上司の生まれた月(1月~12月):" + buf_Month$
32430 goto Jyoushi_Input_Born_Month2:
32440 endif
32450 case 2:
32460 '==================================
32470 '何もしない
32480 'coun = 2
32490 '==================================
32500 'c= val(buf_Month$)
32510 'buf_month = c*10 + No
32520 'buf_Month$ = str$(buf_month)
32530 'locate 2,3
32540 'print "上司の生まれた月(1月～12月):";buf_Month$
32550 'goto Jyoushi_Input_Born_Month2:
32560 'case 3:
32570 'count=4
32580 'b=val(buf_month$)
32590 'buf_month=c*10+No
32600 'buf_Month$=str$(buf_month)
32610 'locate 2,3
32620 'print "上司の生まれた月(1月～12月):";buf_Month$
32630 'buf_month=val(buf_Month$)
32640 'year=val(buf_year$)
32650 if (No=-1) then
32660 No=0
32670 goto Jyoushi_Input_Born_Day:
32680 else
32690 goto Jyoushi_Input_Born_Month2:
32700 endif
32710 'case 4:
32720 'bufyear=buf_year
32730 'if (No=-1) then
32740 'buf_month = val(buf_Month$)
32750 'month = buf_month
32760 'sp_on 14,0
32770 'goto Input_Born_Day:
32780 'else
32790 'goto Input_Born_Month2:
32800 'endif
32810 end select
32820 endif
32830 '左の丸ボタン　キャンセル
32840 if (bg2=2) then
32850 select case count2
32860 case 0:
32870 if (No = -1) then
32880 buf_month=0:buf_Month$="**"
32890 count=0
32900 'goto rewrite2:
32910 else
32920 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
32930 buf_month = 0:buf_Month$ = "**"
32940 locate 0,3
32950 color rgb(255,255,255)
32960 print "                                       "
32970 goto rewrite2:
32980 if (No>12) then
32990 ui_msg"値が範囲外です。"
33000 goto rewrite2:
33010 endif
33020 endif
33030 endif
33040 rewrite2:
33050 locate 2,3
33060 color rgb(255,255,255)
33070 print "                                      "
33080 locate 2,3
33090 print "上司の生まれた月(1月~12月):"+buf_Month$
33100 goto Jyoushi_Input_Born_Month2:
33110 end select
33120 'endif
33130 endif
33140 end
33150 'end
33160 '生れた日を入力
33170 Jyoushi_Input_Born_Day:
33180 '生まれた日入力
33190 cls 3:play ""
33200 'No=-1:Okのとき
33210 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
33220 for i=0 to 1
33230 buf_day(i)=0
33240 next i
33250 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
33260 gload Gazo$ + "Screen1.png",0,0,0
33270 gload Gazo$ + "downscreen.png",0,0,800
33280 'Init"kb:2"
33290 '音声ファイル再生 2023.06.07
33300 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
33310 font 48
33320 locate 1,1
33330 '文字色：黒　 color rgb(0,0,0)
33340 color rgb(255,255,255)
33350 print "上司の生まれた日を入れて下さい" + chr$(13)
33360 locate 1,3
33370 color rgb(255,255,255)
33380 print "                                      "
33390 locate 1,3
33400 print "上司の生まれた日(1日~31日):"+buf_Day$
33410 color rgb(255,255,255)
33420 'locate 4,6:print ":7"
33430 'locate 9,6:print ":8"
33440 'locate 12,6:print ":9"
33450 locate 4,6
33460 print ":7  :8  :9" + chr$(13)
33470 color rgb(255,255,255)
33480 locate 4,8
33490 print ":4  :5  :6" + chr$(13)
33500 color rgb(255,255,255)
33510 locate 4,10
33520 print ":1  :2  :3" + chr$(13)
33530 locate 4,12
33540 print "    :0"
33550 locate 12,12
33560 color rgb(0,0,255)
33570 print ":Ok"
33580 sp_on 4,0: sp_on 5,0:sp_on 6,0
33590 sp_on 7,0:sp_on 8,0:sp_on 9,0
33600 sp_on 10,0:sp_on 11,0:sp_on 12,0
33610 sp_on 13,0:sp_on 14,1
33620 Jyoushi_Input_Born_Day2:
33630 key$="":bg=0:y=0:y2=0:bg2=0:
33640 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33650 key$ = inkey$
33660 bg = strig(1)
33670 y = stick(1)
33680 y2 = stick(0)
33690 bg2 = strig(0)
33700 pause 5
33710 wend
33720 '十字キー　ここから
33730 '上の矢印　または、十字キー上
33740 if ((y = -1) or (key$ = chr$(30))) then
33750 select case No
33760 'No=-1:okのとき:初期の状態
33770 '0kボタンから３に移動
33780 '上に行く 処理
33790 case -1:
33800 No=3:sp_on 12,1:sp_on 14,0
33810 pause 200:goto Jyoushi_Input_Born_Day2:
33820 '選択肢:3
33830 '3ボタンから 6に移動
33840 case 3:
33850 No=6:sp_on 12,0:sp_on 11,1
33860 pause 200:goto Jyoushi_Input_Born_Day2:
33870 '6ボタンから ９に移動
33880 case 6:
33890 No=9:sp_on 10,1:sp_on 11,0
33900 pause 200:goto Jyoushi_Input_Born_Day2:
33910 '6ボタンから ９に移動　ここまで
33920 '9で上を押して何もしない
33930 case 9:
33940 '何もしない
33950 No=9
33960 pause 200:goto Jyoushi_Input_Born_Day2:
33970 '9で上を押しても何もしない　ここまで
33980 '上　 0ボタンから2ボタン
33990 'sp_on 6,1:1
34000 'sp_on 8,1:5
34010 'sp_on 7,1:7
34020 case 0:
34030 No=2:sp_on 13,0:sp_on 9,1:
34040 pause 200:goto Jyoushi_Input_Born_Day2:
34050 '上  0ボタンから2ボタン　ここまで
34060 '2から５になる 上
34070 case 2:
34080 No=5:sp_on 8,1:sp_on 9,0:
34090 pause 200:goto Jyoushi_Input_Born_Day2:
34100 case 5:
34110 No=8:sp_on 7,1:sp_on 8,0
34120 pause 200:goto Jyoushi_Input_Born_Day2:
34130 case 8:
34140 pause 200:goto Jyoushi_Input_Born_Day2:
34150 case 1:
34160 No=4:sp_on 5,1:sp_on 6,0
34170 pause 200:goto Jyoushi_Input_Born_Day2:
34180 case 4:
34190 No=7:sp_on 4,1:sp_on 5,0
34200 pause 200:goto Jyoushi_Input_Born_Day2:
34210 case 7:
34220 pause 200:goto Jyoushi_Input_Born_Day2:
34230 end select
34240 endif
34250 '左３　ここまで
34260 '下の矢印
34270 '中央 2
34280 if ((y=1) or (key$ = chr$(31))) then
34290 select case No
34300 '9から６に下げる
34310 case 9:
34320 No=6:sp_on 11,1:sp_on 10,0
34330 pause 200:goto Jyoushi_Input_Born_Day2:
34340 '6から３に下げる
34350 case 6:
34360 No=3:sp_on 12,1:sp_on 11,0
34370 pause 200:goto Jyoushi_Input_Born_Day2:
34380 '3から０ｋに変える
34390 case 3:
34400 No=-1:sp_on 14,1:sp_on 12,0
34410 pause 200:goto Jyoushi_Input_Born_Day2:
34420 'Okから下のボタンを押しても何もしない
34430 case -1:
34440 pause 200:goto Jyoushi_Input_Born_Day2:
34450 case 8:
34460 No=5:sp_on 8,1:sp_on 7,0
34470 pause 200:goto Jyoushi_Input_Born_Day2:
34480 case 5:
34490 No=2:sp_on 9,1:sp_on 8,0
34500 pause 200:goto Jyoushi_Input_Born_Day2:
34510 case 2:
34520 No=0:sp_on 13,1:sp_on 9,0
34530 pause 200:goto Jyoushi_Input_Born_Day2:
34540 case 0:
34550 pause 200:goto Jyoushi_Input_Born_Day2:
34560 case 7:
34570 No=4:sp_on 5,1:sp_on 4,0
34580 pause 200:goto Jyoushi_Input_Born_Day2:
34590 case 4:
34600 No=1:sp_on 6,1:sp_on 5,0
34610 pause 200:goto Jyoushi_Input_Born_Day2:
34620 case 1:
34630 pause 200:goto Jyoushi_Input_Born_Day2:
34640 end select
34650 endif
34660 '左へボタン 十字キー　左　or 　カーソル左
34670 if ((y2 = -1) or (key$ = chr$(29))) then
34680 select case No
34690 'Ok ボタン  Okから　左　０に行く
34700 case -1:
34710 No=0:sp_on 13,1:sp_on 14,0
34720 pause 200:goto Jyoushi_Input_Born_Day2:
34730 '0 ボタン  左　何もしない
34740 case 0:
34750 pause 200:goto Jyoushi_Input_Born_Day2:
34760 case 3:
34770 No=2:sp_on 9,1:sp_on 12,0:
34780 pause 200:goto Jyoushi_Input_Born_Day2:
34790 case 2:
34800 No=1:sp_on 6,1:sp_on 9,0:
34810 pause 200:goto Jyoushi_Input_Born_Day2:
34820 case 1:
34830 pause 200:goto Jyoushi_Input_Born_Day2:
34840 case 6:
34850 No=5:sp_on 8,1:sp_on 11,0
34860 pause 200:goto Jyoushi_Input_Born_Day2:
34870 case 5:
34880 No=4:sp_on 5,1:sp_on 8,0
34890 pause 200:goto Jyoushi_Input_Born_Day2:
34900 case 4:
34910 pause 200:goto Jyoushi_Input_Born_Day2:
34920 case 9:
34930 No=8:sp_on 7,1:sp_on 10,0
34940 pause 200:goto Jyoushi_Input_Born_Day2:
34950 case 8:
34960 No=7:sp_on 4,1:sp_on 7,0
34970 pause 200:goto Jyoushi_Input_Born_Day2:
34980 case 7:
34990 pause 200:goto Jyoushi_Input_Born_Day2:
35000 end select
35010 endif
35020 '右  十字キー　右　or カーソル　右
35030 if ((y2 = 1) or (key$ = chr$(28))) then
35040 select case No
35050 '0ボタンからokボタン右に移動
35060 case 0:
35070 No=-1:sp_on 14,1:sp_on 13,0
35080 pause 200:goto Jyoushi_Input_Born_Day2:
35090 '0ボタンからokボタン 右に移動　ここまで
35100 'OKボタンで右を押して何もしない
35110 case -1:
35120 pause 200:goto Jyoushi_Input_Born_Day2:
35130 case 1:
35140 No=2:sp_on 9,1:sp_on 6,0
35150 pause 200:goto Jyoushi_Input_Born_Day2:
35160 case 2:
35170 No=3:sp_on 12,1:sp_on 9,0
35180 pause 200:goto Jyoushi_Input_Born_Day2:
35190 case 3:
35200 pause 200:goto Jyoushi_Input_Born_Day2:
35210 case 4:
35220 No=5:sp_on 8,1:sp_on 5,0
35230 pause 200:goto Jyoushi_Input_Born_Day2:
35240 case 5:
35250 No=6:sp_on 11,1:sp_on 8,0
35260 pause 200:goto Jyoushi_Input_Born_Day2:
35270 case 7:
35280 No=8:sp_on 7,1:sp_on 4,0
35290 pause 200:goto Jyoushi_Input_Born_Day2:
35300 case 8:
35310 No=9:sp_on 10,1:sp_on 7,0
35320 pause 200:goto Jyoushi_Input_Born_Day2:
35330 case 9:
35340 pause 200:goto Jyoushi_Input_Born_Day2:
35350 case 6:
35360 pause 200:goto Jyoushi_Input_Born_Day2:
35370 end select
35380 'Okから右ボタンを押して何もしない ここまで
35390 endif
35400 '十字キー　ここまで
35410 '右の丸ボタンを押したとき
35420 if ((bg = 2) or (key$ = chr$(13))) then
35430 'count :決定ボタンを押した回数
35440 select case (count)
35450 '1桁目入力
35460 case 0:
35470 count = 1:
35480 if (No = -1) then
35490 '1桁目　OKでは何もしない
35500 No=c
35510 'goto Jyoushi_Input_Born_Day2:
35520 else
35530 'ok以外のボタンを押したとき
35540 buf_day = No:buf_Day$ = str$(No)
35550 buf_Jyoushi_Born_Day(2)=buf_day
35560 c=No
35570 locate 1,3
35580 print "                                      "
35590 color RGB(255,255,255)
35600 locate 1,3
35610 print "上司の生まれた日(1日~31日):" + buf_Day$
35620 endif
35630 'check2:
35640 'if (buf_day >= 1 and buf_day <= 9) then
35650 'sp_on 14,0
35660 'goto complate_jyoushi:
35670 'else
35680 'sp_on 14,0
35690 goto Jyoushi_Input_Born_Day2:
35700 'end
35710 'endif
35720 case 1:
35730 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
35740 count = 2:
35750 'locate 2,3
35760 'color RGB(255,255,255)
35770 'print "生まれた日(1日~31日):";buf_Day$
35780 'Okボタンを押したときの処理
35790 '入力値　10未満のとき
35800 'buf_day = c * 10 + No
35810 if (No = -1) then
35820 c=buf_day:No=0
35830 'buf_day = c
35840 buf_Day$ = str$(buf_day)
35850 '10以下のとき
35860 'if (buf_day < 10) then
35870 sp_on 14,0
35880 goto complate_jyoushi:
35890 'end
35900 'endif
35910 else
35920 'c=No
35930 buf_day = c * 10 + No
35940 buf_Day$ = str$(buf_day)
35950 'buf_day = c:buf_Day$=str$(buf_day)
35960 buf_Jyoushi_Born_Day(2)=buf_day
35970 locate 1,3
35980 print "                                           "
35990 locate 1,3
36000 color Rgb(255,255,255)
36010 print "上司の生まれた日(1日~31日):" + buf_Day$
36020 goto Jyoushi_Input_Born_Day2:
36030 'goto
36040 endif
36050 'endif
36060 '生まれた日　2桁目の数字　or 1桁の数字 + ok
36070 case 2:
36080 'buf_day = c * 10 + No
36090 'buf_Jyoushi_Born_Day(2)=buf_day
36100 'locate 1,3
36110 'print "                                      "
36120 'locate 1,3
36130 'locate 2,3
36140 'print "生まれた日(1日〜31日):";buf_Day
36150 'No=-1:ok ボタンを押したとき
36160 if (No = -1) then
36170 'if ((buf_day > 0) and (buf_day < 32)) then
36180 No=0
36190 sp_on 14,0
36200 goto complate_jyoushi:
36210 'end
36220 else
36230 goto Jyoushi_Input_Born_Day2:
36240 'endif
36250 'Okボタン以外を押したとき
36260 'else
36270 'c=val(buf_Day$)
36280 'buf_day = c * 10 + No
36290 'buf_Jyoushi_Born_Day(2) = buf_day
36300 'buf_Day$ = str$(buf_day)
36310 'locate 1,3
36320 'print "上司の生まれた日(1日~31日):";buf_Day$
36330 'goto Jyoushi_Input_Born_Day2:
36340 endif
36350 'case 3:
36360 'count=4
36370 'c=val(buf_day$)
36380 'buf_day=c*10+No
36390 'buf_day$=str$(buf_day)
36400 'locate 2,3
36410 'print "生まれた日を入れてください:";buf_day$
36420 'year=val(buf_year$)
36430 'if (No = -1) then
36440 'goto Jyoushi_Input_Born_Day:
36450 'sp_on 14,0:
36460 'goto complate_jyoushi:
36470 'else
36480 'goto Jyoushi_Input_Born_Month2:
36490 'endif
36500 'case 4:
36510 'bufyear=buf_year
36520 'if (No=-1) then
36530 'buf_day = val(buf_day$)
36540 'bufday = buf_day
36550 'sp_on 14,0
36560 'goto Jyoushi_Input_Born_Day2:
36570 'else
36580 'goto Jyoushi_Input_Born_Day2:
36590 'endif
36600 end select
36610 endif
36620 if (bg2=2) then
36630 select case count2
36640 case 0:
36650 if (No=-1) then
36660 buf_day=0:buf_Day$="**":No=0
36670 if (buf_day >= 1 and buf_day <= 31) then
36680 count=0
36690 buf_day=0:buf_Day$ = "**"
36700 goto rewrite_day3:
36710 else
36720 buf_day=0:buf_Day$ = "**"
36730 ui_msg"値が範囲外です"
36740 endif
36750 goto rewrite_day3:
36760 else
36770 goto rewrite_day3:
36780 endif
36790 rewrite_day3:
36800 locate 2,3
36810 color rgb(255,255,255)
36820 print "                                      "
36830 locate 2,3
36840 print "生まれた日(1日~31日):" + buf_Day$
36850 goto Jyoushi_Input_Born_Day2:
36860 end select
36870 endif
36880 '--------------------------------------------'
36890 'locate 2,0:color rgb(255,0,0)
36900 'print "上司の生まれた年代を入力"
36910 'color rgb(255,255,255)
36920 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
36930 'locate 2,4:Input "上司の生まれた年:",born_year
36940 '誕生日データーを配列に代入
36950 'buf_Jyoushi_Born_Year:上司の生まれた年代
36960 'buf_Jyoushi_Born_Day(0) = born_year
36970 'born_year = 0
36980 '---------------------------------------------'
36990 'goto Jyoushi_born_month:
37000 '1-2.生まれた月を入力
37010 'Jyoushi_born_month:
37020 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37030 'init "kb:4"
37040 'locate 2,1:
37050 'color rgb(255,0,0)
37060 'print "上司の生まれた月入力"
37070 'color rgb(255,255,255)
37080 'locate 2,4:print "生まれた月を入力してください"
37090 'locate 2,5
37100 'Input "上司の生まれ月:",born_month
37110 'buf_Jyoushi_Born_Day(1) = born_month
37120 'born_month = 0
37130 'goto Jyoushi_born_day:
37140 'buf_Jyoushi_Born_day
37150 '1-3.生まれた日を入力
37160 'Jyoushi_born_day:
37170 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37180 'init "kb:4"
37190 'locate 2,1:color rgb(255,0,0)
37200 'print "上司の生まれた日　入力"
37210 'locate 2,4:color rgb(255,255,255)
37220 'print "生まれた日を入力してください"
37230 'locate 2,5
37240 'Input "上司の生まれた日:",born_day
37250 'buf_Jyoushi_Born_Day(2) = born_day
37260 'born_day = 0
37270 'goto buka_born_year:
37280 '2.部下の誕生日入力
37290 '2-1.生まれた年を入力
37300 'buka_born_year:
37310 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37320 'init "kb:2"
37330 'locate 1,1:color rgb(255,0,0)
37340 'print "部下の生まれた年代入力"
37350 'locate 0,4:color rgb(255,255,255)
37360 'print "部下の生まれた年（西暦4桁）を入れてください"
37370 'locate 0,5
37380 'Input "部下の生まれた年(西暦4桁):",born_year
37390 'buf_Buka_Born_Day(0) = born_year
37400 'born_year = 0
37410 '2-2.生まれた月を入力
37420 'buka_born_month:
37430 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37440 'init "kb:2"
37450 'locate 2,1:color rgb(255,0,0)
37460 'print "部下の生まれた月 入力"
37470 'locate 2,4:color rgb(255,255,255)
37480 'print "部下の生まれた月を入力してください"
37490 'locate 2,5:Input "部下の生まれた月:",born_month
37500 'buf_Buka_Born_Day(1) = born_month
37510 '2-3.生まれた日を入力
37520 'buka_born_day:
37530 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37540 'init "kb:2"
37550 'locate 2,1:color rgb(255,0,0)
37560 'print "生まれた日入力"
37570 'color rgb(255,255,255)
37580 'locate 2,4:print "生まれた日を入力してください"
37590 'locate 2,5:Input "部下の生まれた日:",born_day
37600 'buf_Buka_Born_Day(2) = born_day
37610 'born_day=0:goto Result_Business_Aisyou:
37620 '--------------------------------------------'
37630 complate_jyoushi:
37640 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
37650 buf_Jyoushi = Kabara_Num(a,b,c)
37660 a_1=buf_Jyoushi
37670 goto Buka_Input_Seireki:
37680 '--------------------------------------------'
37690 '部下'
37700 '1.部下の生まれた年代'
37710 Buka_Input_Seireki:
37720 cls 3:play "":count=0:count2=0
37730 init"kb:4"
37740 'No=-1:Okのとき
37750 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
37760 for i=0 to 3
37770 buf_Buka_Born_Day(i)=0
37780 next i
37790 gload Gazo$ + "Screen1.png",0,0,0
37800 gload Gazo$ + "downscreen.png",0,0,800
37810 'Init"kb:2"
37820 '音声ファイル再生 2023.06.07
37830 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
37840 font 48
37850 locate 0,1
37860 '文字色：黒　 color rgb(0,0,0)
37870 color rgb(255,255,255)
37880 print "部下の生まれた年代を入れて下さい" + chr$(13)
37890 color rgb(255,255,255)
37900 locate 1,3
37910 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
37920 color rgb(255,255,255)
37930 'locate 4,6:print ":7"
37940 'locate 9,6:print ":8"
37950 'locate 12,6:print ":9"
37960 locate 4,6
37970 print ":7  :8  :9" + chr$(13)
37980 color rgb(255,255,255)
37990 locate 4,8
38000 print ":4  :5  :6" + chr$(13)
38010 color rgb(255,255,255)
38020 locate 4,10
38030 print ":1  :2  :3" + chr$(13)
38040 locate 4,12
38050 print "    :0"
38060 locate 12,12
38070 color rgb(0,0,255)
38080 print ":Ok"
38090 sp_on 4,0: sp_on 5,0:sp_on 6,0
38100 sp_on 7,0:sp_on 8,0:sp_on 9,0
38110 sp_on 10,0:sp_on 11,0:sp_on 12,0
38120 sp_on 13,0:sp_on 14,1
38130 Buka_Input_Seireki2:
38140 key$="":bg=0:y=0:y2=0:bg2=0:
38150 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38160 key$ = inkey$
38170 bg = strig(1)
38180 y = stick(1)
38190 y2 = stick(0)
38200 bg2=strig(0)
38210 pause 5
38220 wend
38230 '十字キー　ここから
38240 '上の矢印　または、十字キー上
38250 if ((y = -1) or (key$ = chr$(30))) then
38260 select case No
38270 'No=-1:okのとき:初期の状態
38280 '0kボタンから３に移動
38290 '上に行く 処理
38300 case -1:
38310 No=3:sp_on 12,1:sp_on 14,0
38320 pause 200:goto Buka_Input_Seireki2:
38330 '選択肢:3
38340 '3ボタンから 6に移動
38350 case 3:
38360 No=6:sp_on 12,0:sp_on 11,1
38370 pause 200:goto Buka_Input_Seireki2:
38380 '6ボタンから ９に移動
38390 case 6:
38400 No=9:sp_on 10,1:sp_on 11,0
38410 pause 200:goto Buka_Input_Seireki2:
38420 '6ボタンから ９に移動　ここまで
38430 '9で上を押して何もしない
38440 case 9:
38450 '何もしない
38460 No=9
38470 pause 200:goto Buka_Input_Seireki2:
38480 '9で上を押しても何もしない　ここまで
38490 '上　 0ボタンから2ボタン
38500 'sp_on 6,1:1
38510 'sp_on 8,1:5
38520 'sp_on 7,1:7
38530 case 0:
38540 No=2:sp_on 13,0:sp_on 9,1:
38550 pause 200:goto Buka_Input_Seireki2:
38560 '上  0ボタンから2ボタン　ここまで
38570 '2から５になる 上
38580 case 2:
38590 No=5:sp_on 8,1:sp_on 9,0:
38600 pause 200:goto Buka_Input_Seireki2:
38610 case 5:
38620 No=8:sp_on 7,1:sp_on 8,0
38630 pause 200:goto Buka_Input_Seireki2:
38640 case 8:
38650 pause 200:goto Buka_Input_Seireki2:
38660 case 1:
38670 No=4:sp_on 5,1:sp_on 6,0
38680 pause 200:goto Buka_Input_Seireki2:
38690 case 4:
38700 No=7:sp_on 4,1:sp_on 5,0
38710 pause 200:goto Buka_Input_Seireki2:
38720 case 7:
38730 pause 200:goto Buka_Input_Seireki2:
38740 end select
38750 endif
38760 '左３　ここまで
38770 '下の矢印
38780 '中央 2
38790 if ((y=1) or (key$ = chr$(31))) then
38800 select case No
38810 '9から６に下げる
38820 case 9:
38830 No=6:sp_on 11,1:sp_on 10,0
38840 pause 200:goto Buka_Input_Seireki2:
38850 '6から３に下げる
38860 case 6:
38870 No=3:sp_on 12,1:sp_on 11,0
38880 pause 200:goto Buka_Input_Seireki2:
38890 '3から０ｋに変える
38900 case 3:
38910 No=-1:sp_on 14,1:sp_on 12,0
38920 pause 200:goto Buka_Input_Seireki2:
38930 'Okから下のボタンを押しても何もしない
38940 case -1:
38950 pause 200:goto Buka_Input_Seireki2:
38960 case 8:
38970 No=5:sp_on 8,1:sp_on 7,0
38980 pause 200:goto Buka_Input_Seireki2:
38990 case 5:
39000 No=2:sp_on 9,1:sp_on 8,0
39010 pause 200:goto Buka_Input_Seireki2:
39020 case 2:
39030 No=0:sp_on 13,1:sp_on 9,0
39040 pause 200:goto Buka_Input_Seireki2:
39050 case 0:
39060 pause 200:goto Buka_Input_Seireki2:
39070 case 7:
39080 No=4:sp_on 5,1:sp_on 4,0
39090 pause 200:goto Buka_Input_Seireki2:
39100 case 4:
39110 No=1:sp_on 6,1:sp_on 5,0
39120 pause 200:goto Buka_Input_Seireki2:
39130 case 1:
39140 pause 200:goto Buka_Input_Seireki2:
39150 end select
39160 endif
39170 '左へボタン 十字キー　左　or 　カーソル左
39180 if ((y2 = -1) or (key$ = chr$(29))) then
39190 select case No
39200 'Ok ボタン  Okから　左　０に行く
39210 case -1:
39220 No=0:sp_on 13,1:sp_on 14,0
39230 pause 200:goto Buka_Input_Seireki2:
39240 '0 ボタン  左　何もしない
39250 case 0:
39260 pause 200:goto Buka_Input_Seireki2:
39270 case 3:
39280 No=2:sp_on 9,1:sp_on 12,0:
39290 pause 200:goto Buka_Input_Seireki2:
39300 case 2:
39310 No=1:sp_on 6,1:sp_on 9,0:
39320 pause 200:goto Buka_Input_Seireki2:
39330 case 1:
39340 pause 200:goto Buka_Input_Seireki2:
39350 case 6:
39360 No=5:sp_on 8,1:sp_on 11,0
39370 pause 200:goto Buka_Input_Seireki2:
39380 case 5:
39390 No=4:sp_on 5,1:sp_on 8,0
39400 pause 200:goto Buka_Input_Seireki2:
39410 case 4:
39420 pause 200:goto Buka_Input_Seireki2:
39430 case 9:
39440 No=8:sp_on 7,1:sp_on 10,0
39450 pause 200:goto Buka_Input_Seireki2:
39460 case 8:
39470 No=7:sp_on 4,1:sp_on 7,0
39480 pause 200:goto Buka_Input_Seireki2:
39490 case 7:
39500 pause 200:goto Buka_Input_Seireki2:
39510 end select
39520 endif
39530 '右  十字キー　右　or カーソル　右
39540 if ((y2 = 1) or (key$ = chr$(28))) then
39550 select case No
39560 '0ボタンからokボタン右に移動
39570 case 0:
39580 No=-1:sp_on 14,1:sp_on 13,0
39590 pause 200:goto Buka_Input_Seireki2:
39600 '0ボタンからokボタン 右に移動　ここまで
39610 'OKボタンで右を押して何もしない
39620 case -1:
39630 pause 200:goto Buka_Input_Seireki2:
39640 case 1:
39650 No=2:sp_on 9,1:sp_on 6,0
39660 pause 200:goto Buka_Input_Seireki2:
39670 case 2:
39680 No=3:sp_on 12,1:sp_on 9,0
39690 pause 200:goto Buka_Input_Seireki2:
39700 case 3:
39710 pause 200:goto Buka_Input_Seireki2:
39720 case 4:
39730 No=5:sp_on 8,1:sp_on 5,0
39740 pause 200:goto Buka_Input_Seireki2:
39750 case 5:
39760 No=6:sp_on 11,1:sp_on 8,0
39770 pause 200:goto Buka_Input_Seireki2:
39780 case 7:
39790 No=8:sp_on 7,1:sp_on 4,0
39800 pause 200:goto Buka_Input_Seireki2:
39810 case 8:
39820 No=9:sp_on 10,1:sp_on 7,0
39830 pause 200:goto Buka_Input_Seireki2:
39840 case 9:
39850 pause 200:goto Buka_Input_Seireki2:
39860 case 6:
39870 pause 200:goto Buka_Input_Seireki2:
39880 end select
39890 'Okから右ボタンを押して何もしない ここまで
39900 endif
39910 '十字キー　ここまで
39920 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
39930 'ここからコメント
39940 '右の丸ボタン決定を押した数:count
39950 'if ((bg=2) or (key$=chr$(13))) then
39960 'select case count
39970 'case 0:
39980 'count=1
39990 'if (No = -1) then
40000 'count = 0
40010 'Okボタンを押したとき
40020 '
40030 'goto Buka_Input_Seireki2:
40040 'else
40050 'Okボタン以外が押されたとき
40060 'if (No >= 1 and No <= 2) then
40070 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
40080 'buf_buka_year = No
40090 'buf_Buka_Born_Day(0) = bufyear
40100 'locate 2,3
40110 'color rgb(255,255,255)
40120 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40130 'goto Buka_Input_Seireki2:
40140 'else
40150 'count=0
40160 'ui_msg"数字が範囲外になります。"
40170 'buf_buka_year$ ="":buf_buka_year=0
40180 'goto Buka_Input_Seireki2:
40190 'endif
40200 'endif
40210 'case 1:
40220 'count = 2
40230 'if (No = -1) then
40240 'count = 1
40250 'goto Buka_Input_Seireki2:
40260 'else
40270 'b = val(buf_buka_year$)
40280 'buf_buka_year = b * 10 + No
40290 'buf_buka_year$ = str$(buf_buka_year)
40300 'buf_Buka_Born_Day(0) = bufyear
40310 'locate 1,3
40320 'color rgb(255,255,255)
40330 'print "                                                                "
40340 'locate 1,3
40350 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40360 'if (No = -1) then
40370 'count=1
40380 'goto Buka_Input_Seireki2:
40390 'endif
40400 'case 2:
40410 'count = 3
40420 'if (No = -1) then
40430 'count = 2
40440 'buf_Buka_Born_Day(0)=bufyear
40450 'goto Buka_Input_Seireki2:
40460 'else
40470 'b = val(buf_buka_year$)
40480 'buf_buka_year = b*10 + No
40490 'buf_buka_year$ = str$(buf_buka_year)
40500 'locate 1,3
40510 'color rgb(255,255,255)
40520 'print "                                        "
40530 'locate 1,3
40540 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
40550 'goto Buka_Input_Seireki2:
40560 'endif
40570 'case 3:
40580 'count=4
40590 'if (No = -1) then
40600 'count=3
40610 'goto Buka_Input_Seireki2:
40620 'else
40630 'b = buf_buka_year
40640 'buf_buka_year = b * 10 + No
40650 'buf_buka_year$=str$(buf_buka_year)
40660 'locate 1,3
40670 'color RGB(255,255,255)
40680 'print "                                      "
40690 'locate 1,3
40700 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40710 'buf_year=val(buf_year$)
40720 'year=val(buf_year$)
40730 'if (No=-1) then
40740 'goto Input_Born_Month:
40750 'else
40760 'goto Buka_Input_Seireki2:
40770 'endif
40780 'case 4:
40790 'bufyear=buf_year
40800 'if (No=-1) then
40810 'buf_year = val(buf_year$)
40820 'bufyear = buf_year
40830 'sp_on 14,0
40840 'goto Buka_Input_Born_Month:
40850 'else
40860 'goto Buka_Input_Seireki2:
40870 'endif
40880 'end select
40890 'endif
40900 'if (bg2 = 2) then
40910 'select case count2
40920 'case 0:
40930 'if (No = -1) then
40940 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
40950 'count=0
40960 'locate 1,3
40970 'color rgb(255,255,255)
40980 'print "                                      "
40990 'locate 1,3
41000 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
41010 'goto Buka_Input_Seireki2:
41020 'else
41030 '(buf_year=0) then
41040 'buf_buka_year=0:buf_buka_year$="****"
41050 'goto Buka_Input_Seireki2:
41060 'endif
41070 'endif
41080 'end select
41090 'endif
41100 'end
41110 'ここまでコメント
41120 '================================================================
41130 if ((bg=2) or (key$=chr$(13))) then
41140 select case count
41150 case 0:
41160 count = 1
41170 if (No=-1) then
41180 count = 0
41190 buf_Buka_Born_Day(0) = No
41200 'Okボタンを押したとき
41210 goto Buka_Input_Seireki2:
41220 else
41230 'Okボタン以外が押されたとき
41240 if (No>=1 and No<=2) then
41250 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
41260 buf_buka_year = No
41270 buf_Buka_Born_Day(0) = No
41280 locate 1,3
41290 color rgb(255,255,255)
41300 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41310 goto Buka_Input_Seireki2:
41320 else
41330 count=0
41340 ui_msg"数字が範囲外になります。"
41350 buf_buka_year$="":buf_buka_year=0
41360 goto Buka_Input_Seireki2:
41370 endif
41380 endif
41390 case 1:
41400 count = 2
41410 if (No = -1) then
41420 count = 1
41430 goto Buka_Input_Seireki2:
41440 else
41450 'b = val(buf_buka_year$)
41460 buf_buka_year = a * 10 + No
41470 b=buf_buka_year
41480 buf_buka_year$ = str$(buf_buka_year)+"**"
41490 buf_Buka_Born_Day(0)=buf_buka_year
41500 locate 1,3
41510 color rgb(255,255,255)
41520 print "                                                                "
41530 locate 1,3
41540 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41550 'if (No = -1) then
41560 'count=1
41570 goto Buka_Input_Seireki2:
41580 endif
41590 case 2:
41600 count=3
41610 if (No=-1) then
41620 count =2:No=0
41630 goto Buka_Input_Seireki2:
41640 else
41650 'b = val(buf_buka_year$)
41660 buf_buka_year = b * 10 + No
41670 c = buf_buka_year
41680 buf_buka_year$ = str$(buf_buka_year) + "*"
41690 buf_Buka_Born_Day(0) = buf_buka_year
41700 locate 1,3
41710 color rgb(255,255,255)
41720 print "                                        "
41730 locate 1,3
41740 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41750 goto Buka_Input_Seireki2:
41760 endif
41770 case 3:
41780 count=4
41790 if (No = -1) then
41800 'count=3:No=0
41810 goto Buka_Input_Seireki2:
41820 else
41830 'b = val(buf_buka_year$)
41840 buf_buka_year=c * 10 + No
41850 buf_buka_year$=str$(buf_buka_year)
41860 buf_Buka_Born_Day(0)=buf_buka_year
41870 locate 1,3
41880 color RGB(255,255,255)
41890 print "                                      "
41900 locate 1,3
41910 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41920 buf_buka_year=val(buf_buka_year$)
41930 'year=val(buf_year$)
41940 'if (No=-1) then
41950 'goto Input_Born_Month:
41960 'else
41970 goto Buka_Input_Seireki2:
41980 endif
41990 case 4:
42000 'bufyear=buf_year
42010 if (No = -1) then
42020 buf_buka_year = val(buf_buka_year$)
42030 buf_Buka_Born_Day(0)=buf_buka_year
42040 sp_on 14,0
42050 goto Buka_Input_Born_Month:
42060 else
42070 goto Buka_Input_Seireki2:
42080 endif
42090 end select
42100 endif
42110 '================================================================
42120 'ここにコピーする。
42130 '================================================================
42140 'Input"部下の生れた年代(4桁,〜2025年):",year
42150 'if year > 2025 then goto Jyoushi_Input_Seireki:
42160 'if year = 123 then cls 3:cls 4:goto Main_Screen:
42170 '"4桁目"
42180 'bufyear4 = fix(year / 1000)
42190 '"3桁目"
42200 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
42210 '"2桁目"
42220 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
42230 '"1桁目"
42240 'bufyear1 = fix((year - ((bufyear4*
42250 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
42260 '1.部下の生まれた年代'
42270 '2.部下の生まれた月'
42280 Buka_Input_Born_Month:
42290 cls 3:play "":count=0:count2=0
42300 'No=-1:Okのとき
42310 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
42320 for i=0 to 1
42330 buf_month(i)=0
42340 next i
42350 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
42360 gload Gazo$ + "Screen1.png",0,0,0
42370 gload Gazo$ + "downscreen.png",0,0,800
42380 'Init"kb:4"
42390 '音声ファイル再生 2023.06.07
42400 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
42410 font 48
42420 locate 0,1
42430 '文字色：黒　 color rgb(0,0,0)
42440 '文字色:白
42450 color rgb(255,255,255)
42460 print "部下の生まれた月を入れて下さい" + chr$(13)
42470 '文字色:白
42480 color rgb(255,255,255)
42490 locate 1,3
42500 '文字色:白
42510 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
42520 color rgb(255,255,255)
42530 'locate 4,6:print ":7"
42540 'locate 9,6:print ":8"
42550 'locate 12,6:print ":9"
42560 locate 4,6
42570 '文字色:赤
42580 print ":7  :8  :9" + chr$(13)
42590 color rgb(255,255,255)
42600 locate 4,8
42610 print ":4  :5  :6" + chr$(13)
42620 color rgb(255,255,255)
42630 locate 4,10
42640 print ":1  :2  :3" + chr$(13)
42650 locate 4,12
42660 print "    :0"
42670 locate 12,12
42680 color rgb(0,0,255)
42690 print ":Ok"
42700 sp_on 4,0: sp_on 5,0:sp_on 6,0
42710 sp_on 7,0:sp_on 8,0:sp_on 9,0
42720 sp_on 10,0:sp_on 11,0:sp_on 12,0
42730 sp_on 13,0:sp_on 14,1
42740 Buka_Input_Born_Month2:
42750 key$="":bg=0:y=0:y2=0:bg2=0
42760 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42770 key$ = inkey$
42780 bg = strig(1)
42790 y = stick(1)
42800 y2 = stick(0)
42810 bg2 = strig(0)
42820 pause 5
42830 wend
42840 '十字キー　ここから
42850 '上の矢印　または、十字キー上
42860 if ((y = -1) or (key$ = chr$(30))) then
42870 select case No
42880 'No=-1:okのとき:初期の状態
42890 '0kボタンから３に移動
42900 '上に行く 処理
42910 case -1:
42920 No=3:sp_on 12,1:sp_on 14,0
42930 pause 200:goto Buka_Input_Born_Month2:
42940 '選択肢:3
42950 '3ボタンから 6に移動
42960 case 3:
42970 No=6:sp_on 12,0:sp_on 11,1
42980 pause 200:goto Buka_Input_Born_Month2:
42990 '6ボタンから ９に移動
43000 case 6:
43010 No=9:sp_on 10,1:sp_on 11,0
43020 pause 200:goto Buka_Input_Born_Month2:
43030 '6ボタンから ９に移動　ここまで
43040 '9で上を押して何もしない
43050 case 9:
43060 '何もしない
43070 No=9
43080 pause 200:goto Buka_Input_Born_Month2:
43090 '9で上を押しても何もしない　ここまで
43100 '上　 0ボタンから2ボタン
43110 'sp_on 6,1:1
43120 'sp_on 8,1:5
43130 'sp_on 7,1:7
43140 case 0:
43150 No=2:sp_on 13,0:sp_on 9,1:
43160 pause 200:goto Buka_Input_Born_Month2:
43170 '上  0ボタンから2ボタン　ここまで
43180 '2から５になる 上
43190 case 2:
43200 No=5:sp_on 8,1:sp_on 9,0:
43210 pause 200:goto Buka_Input_Born_Month2:
43220 case 5:
43230 No=8:sp_on 7,1:sp_on 8,0
43240 pause 200:goto Buka_Input_Born_Month2:
43250 case 8:
43260 pause 200:goto Buka_Input_Born_Month2:
43270 case 1:
43280 No=4:sp_on 5,1:sp_on 6,0
43290 pause 200:goto Buka_Input_Born_Month2:
43300 case 4:
43310 No=7:sp_on 4,1:sp_on 5,0
43320 pause 200:goto Buka_Input_Born_Month2:
43330 case 7:
43340 pause 200:goto Buka_Input_Born_Month2:
43350 end select
43360 endif
43370 '左３　ここまで
43380 '下の矢印
43390 '中央 2
43400 if ((y=1) or (key$ = chr$(31))) then
43410 select case No
43420 '9から６に下げる
43430 case 9:
43440 No=6:sp_on 11,1:sp_on 10,0
43450 pause 200:goto Buka_Input_Born_Month2:
43460 '6から３に下げる
43470 case 6:
43480 No=3:sp_on 12,1:sp_on 11,0
43490 pause 200:goto Buka_Input_Born_Month2:
43500 '3から０ｋに変える
43510 case 3:
43520 No=-1:sp_on 14,1:sp_on 12,0
43530 pause 200:goto Buka_Input_Born_Month2:
43540 'Okから下のボタンを押しても何もしない
43550 case -1:
43560 pause 200:goto Buka_Input_Born_Month2:
43570 case 8:
43580 No=5:sp_on 8,1:sp_on 7,0
43590 pause 200:goto Buka_Input_Born_Month2:
43600 case 5:
43610 No=2:sp_on 9,1:sp_on 8,0
43620 pause 200:goto Buka_Input_Born_Month2:
43630 case 2:
43640 No=0:sp_on 13,1:sp_on 9,0
43650 pause 200:goto Buka_Input_Born_Month2:
43660 case 0:
43670 pause 200:goto Buka_Input_Born_Month2:
43680 case 7:
43690 No=4:sp_on 5,1:sp_on 4,0
43700 pause 200:goto Buka_Input_Born_Month2:
43710 case 4:
43720 No=1:sp_on 6,1:sp_on 5,0
43730 pause 200:goto Buka_Input_Born_Month2:
43740 case 1:
43750 pause 200:goto Buka_Input_Born_Month2:
43760 end select
43770 endif
43780 '左へボタン 十字キー　左　or 　カーソル左
43790 if ((y2 = -1) or (key$ = chr$(29))) then
43800 select case No
43810 'Ok ボタン  Okから　左　０に行く
43820 case -1:
43830 No=0:sp_on 13,1:sp_on 14,0
43840 pause 200:goto Buka_Input_Born_Month2:
43850 '0 ボタン  左　何もしない
43860 case 0:
43870 pause 200:goto Buka_Input_Born_Month2:
43880 case 3:
43890 No=2:sp_on 9,1:sp_on 12,0:
43900 pause 200:goto Buka_Input_Born_Month2:
43910 case 2:
43920 No=1:sp_on 6,1:sp_on 9,0:
43930 pause 200:goto Buka_Input_Born_Month2:
43940 case 1:
43950 pause 200:goto Buka_Input_Born_Month2:
43960 case 6:
43970 No=5:sp_on 8,1:sp_on 11,0
43980 pause 200:goto Buka_Input_Born_Month2:
43990 case 5:
44000 No=4:sp_on 5,1:sp_on 8,0
44010 pause 200:goto Buka_Input_Born_Month2:
44020 case 4:
44030 pause 200:goto Buka_Input_Born_Month2:
44040 case 9:
44050 No=8:sp_on 7,1:sp_on 10,0
44060 pause 200:goto Buka_Input_Born_Month2:
44070 case 8:
44080 No=7:sp_on 4,1:sp_on 7,0
44090 pause 200:goto Buka_Input_Born_Month2:
44100 case 7:
44110 pause 200:goto Buka_Input_Born_Month2:
44120 end select
44130 endif
44140 '右  十字キー　右　or カーソル　右
44150 if ((y2 = 1) or (key$ = chr$(28))) then
44160 select case No
44170 '0ボタンからokボタン右に移動
44180 case 0:
44190 No=-1:sp_on 14,1:sp_on 13,0
44200 pause 200:goto Buka_Input_Born_Month2:
44210 '0ボタンからokボタン 右に移動　ここまで
44220 'OKボタンで右を押して何もしない
44230 case -1:
44240 pause 200:goto Buka_Input_Born_Month2:
44250 case 1:
44260 No=2:sp_on 9,1:sp_on 6,0
44270 pause 200:goto Buka_Input_Born_Month2:
44280 case 2:
44290 No=3:sp_on 12,1:sp_on 9,0
44300 pause 200:goto Buka_Input_Born_Month2:
44310 case 3:
44320 pause 200:goto Buka_Input_Born_Month2:
44330 case 4:
44340 No=5:sp_on 8,1:sp_on 5,0
44350 pause 200:goto Buka_Input_Born_Month2:
44360 case 5:
44370 No=6:sp_on 11,1:sp_on 8,0
44380 pause 200:goto Buka_Input_Born_Month2:
44390 case 7:
44400 No=8:sp_on 7,1:sp_on 4,0
44410 pause 200:goto Buka_Input_Born_Month2:
44420 case 8:
44430 No=9:sp_on 10,1:sp_on 7,0
44440 pause 200:goto Buka_Input_Born_Month2:
44450 case 9:
44460 pause 200:goto Buka_Input_Born_Month2:
44470 case 6:
44480 pause 200:goto Buka_Input_Born_Month2:
44490 end select
44500 'Okから右ボタンを押して何もしない ここまで
44510 endif
44520 '十字キー　ここまで
44530 '右の丸ボタン　決定キー
44540 if ((bg=2) or (key$=chr$(13))) then
44550 select case count
44560 case 0:
44570 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
44580 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
44590 locate 1,3
44600 color RGB(255,255,255)
44610 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
44620 goto Buka_Input_Born_Month2:
44630 case 1:
44640 count = 2:buf_buka_month=a*10+No
44650 if (No = -1) then
44660 'count=0
44670 month=buf_buka_month
44680 buf_buka_month=val(buf_buka_Month$)
44690 month=buf_buka_month
44700 '生まれた日に飛ぶ
44710 goto Buka_Input_Born_Day:
44720 else
44730 buf_buka_month = a * 10 + No
44740 buf_buka_Month$ = str$(buf_buka_month)
44750 buf_Buka_Born_Day(1) = buf_buka_month
44760 locate 1,3
44770 color Rgb(255,255,255)
44780 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
44790 goto Buka_Input_Born_Month2:
44800 endif
44810 case 2:
44820 count=3
44830 'c= val(buf_Month$)
44840 'buf_month = c*10 + No
44850 'buf_Month$ = str$(buf_month)
44860 'locate 2,3
44870 'print "部下の生まれた月(1月～12月):";buf_Month$
44880 'goto Buka_Input_Born_Month2:
44890 'case 3:
44900 'count=4
44910 'b=val(buf_month$)
44920 'buf_month=c*10+No
44930 'buf_Month$=str$(buf_month)
44940 'locate 2,3
44950 'print "部下の生まれた月(1月～12月):";buf_Month$
44960 'buf_month=val(buf_Month$)
44970 'year=val(buf_year$)
44980 if (No=-1) then
44990 goto Buka_Input_Born_Day:
45000 else
45010 goto Input_Born_Month2:
45020 endif
45030 'case 4:
45040 'bufyear=buf_year
45050 'if (No=-1) then
45060 'buf_month = val(buf_Month$)
45070 'month = buf_month
45080 'sp_on 14,0
45090 'goto Input_Born_Day:
45100 'else
45110 'goto Input_Born_Month2:
45120 'endif
45130 end select
45140 endif
45150 '左の丸ボタン　キャンセル
45160 if (bg2=2) then
45170 select case count2
45180 case 0:
45190 if (No = -1) then
45200 buf_buka_month=0:buf_buka_Month$="**"
45210 count=0
45220 goto rewrite2:
45230 else
45240 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
45250 buf_month=0:buf_Month$="**"
45260 locate 2,3
45270 color rgb(255,255,255)
45280 print "                                       "
45290 goto rewrite2:
45300 if (No>12) then
45310 ui_msg"値が範囲外です。"
45320 goto rewrite2:
45330 endif
45340 endif
45350 endif
45360 rewrite2:
45370 locate 2,3
45380 color rgb(255,255,255)
45390 print "                                      "
45400 locate 2,3
45410 print "部下の生まれた月(1月~12月):";buf_buka_Month$
45420 goto Buka_Input_Born_Month2:
45430 end select
45440 'endif
45450 endif
45460 end
45470 '2.部下の生まれた月'
45480 '3.部下の生まれた日'
45490 '生れた日を入力
45500 Buka_Input_Born_Day:
45510 '生まれた日入力
45520 cls 3:play ""
45530 'No=-1:Okのとき
45540 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
45550 for i=0 to 1
45560 buf_day(i)=0
45570 next i
45580 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45590 gload Gazo$ + "Screen1.png",0,0,0
45600 gload Gazo$ + "downscreen.png",0,0,800
45610 'Init"kb:2"
45620 '音声ファイル再生 2023.06.07
45630 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
45640 font 48
45650 locate 0,1
45660 '文字色：黒　 color rgb(0,0,0)
45670 color rgb(255,255,255)
45680 print "部下の生まれた日を入れて下さい" + chr$(13)
45690 color rgb(255,255,255)
45700 locate 1,3
45710 print "部下の生まれた日(1日~31日):";buf_Day$
45720 color rgb(255,255,255)
45730 'locate 4,6:print ":7"
45740 'locate 9,6:print ":8"
45750 'locate 12,6:print ":9"
45760 locate 4,6
45770 print ":7  :8  :9" + chr$(13)
45780 color rgb(255,255,255)
45790 locate 4,8
45800 print ":4  :5  :6" + chr$(13)
45810 color rgb(255,255,255)
45820 locate 4,10
45830 print ":1  :2  :3" + chr$(13)
45840 locate 4,12
45850 print "    :0"
45860 locate 12,12
45870 color rgb(0,0,255)
45880 print ":Ok"
45890 sp_on 4,0: sp_on 5,0:sp_on 6,0
45900 sp_on 7,0:sp_on 8,0:sp_on 9,0
45910 sp_on 10,0:sp_on 11,0:sp_on 12,0
45920 sp_on 13,0:sp_on 14,1
45930 Buka_Input_Born_Day2:
45940 key$="":bg=0:y=0:y2=0:bg2=0
45950 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45960 key$ = inkey$
45970 bg = strig(1)
45980 y = stick(1)
45990 y2 = stick(0)
46000 bg2 = strig(0)
46010 pause 5
46020 wend
46030 '十字キー　ここから
46040 '上の矢印　または、十字キー上
46050 if ((y = -1) or (key$ = chr$(30))) then
46060 select case No
46070 'No=-1:okのとき:初期の状態
46080 '0kボタンから３に移動
46090 '上に行く 処理
46100 case -1:
46110 No=3:sp_on 12,1:sp_on 14,0
46120 pause 200:goto Buka_Input_Born_Day2:
46130 '選択肢:3
46140 '3ボタンから 6に移動
46150 case 3:
46160 No=6:sp_on 12,0:sp_on 11,1
46170 pause 200:goto Buka_Input_Born_Day2:
46180 '6ボタンから ９に移動
46190 case 6:
46200 No=9:sp_on 10,1:sp_on 11,0
46210 pause 200:goto Buka_Input_Born_Day2:
46220 '6ボタンから ９に移動　ここまで
46230 '9で上を押して何もしない
46240 case 9:
46250 '何もしない
46260 No=9
46270 pause 200:goto Buka_Input_Born_Day2:
46280 '9で上を押しても何もしない　ここまで
46290 '上　 0ボタンから2ボタン
46300 'sp_on 6,1:1
46310 'sp_on 8,1:5
46320 'sp_on 7,1:7
46330 case 0:
46340 No=2:sp_on 13,0:sp_on 9,1:
46350 pause 200:goto Buka_Input_Born_Day2:
46360 '上  0ボタンから2ボタン　ここまで
46370 '2から５になる 上
46380 case 2:
46390 No=5:sp_on 8,1:sp_on 9,0:
46400 pause 200:goto Buka_Input_Born_Day2:
46410 case 5:
46420 No=8:sp_on 7,1:sp_on 8,0
46430 pause 200:goto Buka_Input_Born_Day2:
46440 case 8:
46450 pause 200:goto Buka_Input_Born_Day2:
46460 case 1:
46470 No=4:sp_on 5,1:sp_on 6,0
46480 pause 200:goto Buka_Input_Born_Day2:
46490 case 4:
46500 No=7:sp_on 4,1:sp_on 5,0
46510 pause 200:goto Buka_Input_Born_Day2:
46520 case 7:
46530 pause 200:goto Buka_Input_Born_Day2:
46540 end select
46550 endif
46560 '左３　ここまで
46570 '下の矢印
46580 '中央 2
46590 if ((y=1) or (key$ = chr$(31))) then
46600 select case No
46610 '9から６に下げる
46620 case 9:
46630 No=6:sp_on 11,1:sp_on 10,0
46640 pause 200:goto Buka_Input_Born_Day2:
46650 '6から３に下げる
46660 case 6:
46670 No=3:sp_on 12,1:sp_on 11,0
46680 pause 200:goto Buka_Input_Born_Day2:
46690 '3から０ｋに変える
46700 case 3:
46710 No=-1:sp_on 14,1:sp_on 12,0
46720 pause 200:goto Buka_Input_Born_Day2:
46730 'Okから下のボタンを押しても何もしない
46740 case -1:
46750 pause 200:goto Buka_Input_Born_Day2:
46760 case 8:
46770 No=5:sp_on 8,1:sp_on 7,0
46780 pause 200:goto Buka_Input_Born_Day2:
46790 case 5:
46800 No=2:sp_on 9,1:sp_on 8,0
46810 pause 200:goto Buka_Input_Born_Day2:
46820 case 2:
46830 No=0:sp_on 13,1:sp_on 9,0
46840 pause 200:goto Buka_Input_Born_Day2:
46850 case 0:
46860 pause 200:goto Buka_Input_Born_Day2:
46870 case 7:
46880 No=4:sp_on 5,1:sp_on 4,0
46890 pause 200:goto Buka_Input_Born_Day2:
46900 case 4:
46910 No=1:sp_on 6,1:sp_on 5,0
46920 pause 200:goto Buka_Input_Born_Day2:
46930 case 1:
46940 pause 200:goto Buka_Input_Born_Day2:
46950 end select
46960 endif
46970 '左へボタン 十字キー　左　or 　カーソル左
46980 if ((y2 = -1) or (key$ = chr$(29))) then
46990 select case No
47000 'Ok ボタン  Okから　左　０に行く
47010 case -1:
47020 No=0:sp_on 13,1:sp_on 14,0
47030 pause 200:goto Buka_Input_Born_Day2:
47040 '0 ボタン  左　何もしない
47050 case 0:
47060 pause 200:goto Buka_Input_Born_Day2:
47070 case 3:
47080 No=2:sp_on 9,1:sp_on 12,0:
47090 pause 200:goto Buka_Input_Born_Day2:
47100 case 2:
47110 No=1:sp_on 6,1:sp_on 9,0:
47120 pause 200:goto Buka_Input_Born_Day2:
47130 case 1:
47140 pause 200:goto Buka_Input_Born_Day2:
47150 case 6:
47160 No=5:sp_on 8,1:sp_on 11,0
47170 pause 200:goto Buka_Input_Born_Day2:
47180 case 5:
47190 No=4:sp_on 5,1:sp_on 8,0
47200 pause 200:goto Buka_Input_Born_Day2:
47210 case 4:
47220 pause 200:goto Buka_Input_Born_Day2:
47230 case 9:
47240 No=8:sp_on 7,1:sp_on 10,0
47250 pause 200:goto Buka_Input_Born_Day2:
47260 case 8:
47270 No=7:sp_on 4,1:sp_on 7,0
47280 pause 200:goto Buka_Input_Born_Day2:
47290 case 7:
47300 pause 200:goto Buka_Input_Born_Day2:
47310 end select
47320 endif
47330 '右  十字キー　右　or カーソル　右
47340 if ((y2 = 1) or (key$ = chr$(28))) then
47350 select case No
47360 '0ボタンからokボタン右に移動
47370 case 0:
47380 No=-1:sp_on 14,1:sp_on 13,0
47390 pause 200:goto Buka_Input_Born_Day2:
47400 '0ボタンからokボタン 右に移動　ここまで
47410 'OKボタンで右を押して何もしない
47420 case -1:
47430 pause 200:goto Buka_Input_Born_Day2:
47440 case 1:
47450 No=2:sp_on 9,1:sp_on 6,0
47460 pause 200:goto Buka_Input_Born_Day2:
47470 case 2:
47480 No=3:sp_on 12,1:sp_on 9,0
47490 pause 200:goto Buka_Input_Born_Day2:
47500 case 3:
47510 pause 200:goto Buka_Input_Born_Day2:
47520 case 4:
47530 No=5:sp_on 8,1:sp_on 5,0
47540 pause 200:goto Buka_Input_Born_Day2:
47550 case 5:
47560 No=6:sp_on 11,1:sp_on 8,0
47570 pause 200:goto Buka_Input_Born_Day2:
47580 case 7:
47590 No=8:sp_on 7,1:sp_on 4,0
47600 pause 200:goto Buka_Input_Born_Day2:
47610 case 8:
47620 No=9:sp_on 10,1:sp_on 7,0
47630 pause 200:goto Buka_Input_Born_Day2:
47640 case 9:
47650 pause 200:goto Buka_Input_Born_Day2:
47660 case 6:
47670 pause 200:goto Buka_Input_Born_Day2:
47680 end select
47690 'Okから右ボタンを押して何もしない ここまで
47700 endif
47710 '十字キー　ここまで
47720 '右の丸ボタンを押したとき
47730 if ((bg = 2) or (key$ = chr$(13))) then
47740 'count :決定ボタンを押した回数
47750 select case (count)
47760 '1桁目入力
47770 case 0:
47780 count = 1:
47790 if (No = -1) then
47800 '1桁目　OKでは何もしない
47810 'goto check:
47820 No=0
47830 else
47840 'ok以外のボタンを押したとき
47850 buf_buka_day = No:buf_buka_Day$ = str$(No)
47860 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
47870 buf_buka_Day$ = str$(No) + "*"
47880 endif
47890 a=No
47900 buf_Buka_Born_Day(2) = buf_buka_day
47910 locate 1,3
47920 print"                                      "
47930 color RGB(255,255,255)
47940 locate 1,3
47950 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
47960 endif
47970 check2:
47980 if (No >= 1 and No <= 9) then
47990 sp_on 14,0
48000 goto Buka_Input_Born_Day2:
48010 else
48020 sp_on 14,0
48030 goto Result_Business_Aisyou:
48040 end
48050 endif
48060 case 1:
48070 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
48080 count = 2:
48090 'locate 2,3
48100 'color RGB(255,255,255)
48110 'print "生まれた日(1日~31日):";buf_Day$
48120 'Okボタンを押したときの処理
48130 '入力値　10未満のとき
48140 'c = buf_day
48150 if (No = -1) then
48160 'c=buf_day
48170 ' buf_day = c
48180 'buf_Day$ = str$(buf_day)
48190 '10以下のとき
48200 No=0
48210 if (buf_day < 10) then
48220 sp_on 14,0
48230 goto Result_Business_Aisyou:
48240 end
48250 endif
48260 else
48270 sp_on 14,0
48280 'c=No
48290 buf_buka_day = a * 10 + No
48300 buf_buka_Day$ = str$(buf_buka_day)
48310 buf_Buka_Born_Day(2) = buf_buka_day
48320 locate 0,3
48330 color Rgb(255,255,255)
48340 print "                                       "
48350 locate 1,3
48360 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48370 goto Buka_Input_Born_Day2:
48380 endif
48390 '生まれた日　2桁目の数字　or 1桁の数字 + ok
48400 case 2:
48410 count=0
48420 'c=val(buf_Day$)
48430 'buf_day=c*10+No
48440 'buf_Day$=str$(buf_day)
48450 'day=buf_day
48460 'locate 2,3
48470 'print "生まれた日(1日〜31日):";buf_Day$
48480 'No=-1:ok ボタンを押したとき
48490 if (No = -1) then No=0
48500 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
48510 sp_on 14,0
48520 goto Result_Business_Aisyou:
48530 else
48540 goto Buka_Input_Born_Day2:
48550 endif
48560 'Okボタン以外を押したとき
48570 else
48580 c=val(buf_buka_Day$)
48590 buf_buka_day = c * 10 + No
48600 buf_buka_Day$ = str$(buf_buka_day)
48610 locate 1,3
48620 print "                "
48630 locate 1,3
48640 print "生まれた日(1日~31日):"+buf_buka_Day$
48650 goto Buka_Input_Born_Day2:
48660 'endif
48670 case 3:
48680 count=4
48690 'c=val(buf_day$)
48700 'buf_day=c*10+No
48710 'buf_day$=str$(buf_day)
48720 'locate 2,3
48730 'print "生まれた日を入れてください:";buf_day$
48740 'year=val(buf_year$)
48750 if (No = -1) then
48760 'goto Buka_Input_Born_Day:
48770 sp_on 14,0:
48780 goto complate_jyoushi:
48790 else
48800 goto Buka_Input_Born_Month2:
48810 endif
48820 'case 4:
48830 'bufyear=buf_year
48840 'if (No=-1) then
48850 'buf_day = val(buf_day$)
48860 'bufday = buf_day
48870 'sp_on 14,0
48880 goto complate_jyoushi:
48890 'else
48900 'goto Buka_Input_Born_Day2:
48910 'endif
48920 end select
48930 endif
48940 if (bg2=2) then
48950 select case count2
48960 case 0:
48970 if (No=-1) then
48980 'buf_day=0:buf_Day$="**"
48990 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
49000 count=0
49010 buf_buka_day=0:buf_buka_Day$="**"
49020 goto rewrite_day3:
49030 else
49040 buf_buka_day=0:buf_buka_Day$="**"
49050 ui_msg"値が範囲外です"
49060 endif
49070 goto rewrite_day3:
49080 else
49090 goto rewrite_day3:
49100 endif
49110 rewrite_day3:
49120 locate 2,3
49130 color rgb(255,255,255)
49140 print "                                      "
49150 locate 1,3
49160 print "生まれた日(1日~31日):"+buf_buka_Day$
49170 goto Buka_Input_Born_Day2:
49180 end select
49190 endif
49200 '3.部下の生まれた日'
49210 '部下'
49220 '--------------------------------------------'
49230 'ビジネの相性　結果表示
49240 Result_Business_Aisyou:
49250 cls 3:init "kb:4"
49260 a=0:b=0:c=0:d=0:e=0:f=0
49270 bg=0:key$=""
49280 gload Gazo$ + "Screen1.png",0,0,0
49290 gload Gazo$ + "downscreen.png",0,0,800
49300 sp_on 14,0
49310 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
49320 buf_Buka = Kabara_Num(d,e,f)
49330 a_2 = buf_Buka
49340 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
49350 locate 0,1
49360 color rgb(255,0,0)
49370 print "●.相性診断結果１"
49380 locate 0,4:
49390 color rgb(255,255,255)
49400 print "1.上司の名前:";buffer_name$(0)
49410 locate 0,6
49420 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
49430 locate 0,8
49440 print "2.部下の名前:";buffer_name$(1)
49450 locate 0,10
49460 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
49470 locate 0,12
49480 print "3.上司と部下の相性:";Result_Aisyou$
49490 locate 1,15
49500 color rgb(0,0,0)
49510 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
49520 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
49530 bg = strig(1)
49540 key$ = inkey$
49550 bg2 = strig(0)
49560 pause 5
49570 wend
49580 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
49590 if (bg2 = 2) then
49600 cls 3:goto Business_Aishou_Input_1_parson:
49610 endif
49620 'ビジネスの相性占い　結果2　説明
49630 Result_Business_Aisyou2:
49640 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
49650 gload Gazo$ + "Screen1.png",0,0,0
49660 locate 0,1
49670 color rgb(255,0,0)
49680 print "●.相性の説明"
49690 color rgb(255,255,255)
49700 locate 0,4
49710 print "相性:";Result_Aisyou$
49720 locate 0,6:
49730 print "相性の説明:";buf$
49740 locate 0,15
49750 color rgb(0,0,0)
49760 print "右の丸ボタン:トップ,左のボタン:前の画面"
49770 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
49780 bg = strig(1)
49790 bg2 = strig(0)
49800 key$ = inkey$
49810 pause 5
49820 wend
49830 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
49840 if ((bg2 = 2)) then goto Result_Business_Aisyou:
49850 '自作関数 ここから
49860 func read_explain$(ba$)
49870 d$=""
49880 buf_String$=""
49890 if ba$="A" then
49900 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
49910 line input #1,a$
49920 a1$=mid$(a$,1,12)
49930 a2$=mid$(a$,13,17)
49940 a3$=mid$(a$,30,17)
49950 a4$=mid$(a$,47,18)
49960 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
49970 buf_String$ = a5$
49980 close #1
49990 endif
50000 if ba$="B"  then
50010 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
50020 line input #1,b$
50030 b1$=mid$(b$,1,15)
50040 b2$=mid$(b$,16,21)
50050 'b3$=mid$(b$,33,3)
50060 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
50070 buf_String$ = b4$
50080 close #1
50090 endif
50100 if ba$="C"  then
50110 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
50120 line input #1,c$
50130 c1$ = Mid$(c$,1,15)
50140 c2$ = Mid$(c$,16,33)
50150 c3$ = c1$ + chr$(13) + c2$
50160 buf_String$ = c3$
50170 close #1
50180 endif
50190 if ba$="D" then
50200 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
50210 line input #1,d$
50220 d1$=mid$(d$,1,15)
50230 d2$=mid$(d$,16,22)
50240 d3$=mid$(d$,38,7)
50250 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
50260 buf_String$ = d4$
50270 close #1
50280 endif
50290 if ba$="E"  then
50300 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
50310 line input #1,e$
50320 e1$=Mid$(e$,1,16)
50330 e2$=Mid$(e$,17,16)
50340 e3$=Mid$(e$,33,12)
50350 e4$=Mid$(e$,45,17)
50360 e5$=Mid$(e$,62,17)
50370 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
50380 buf_String$ = e6$
50390 close #1
50400 endif
50410 if ba$="F" then
50420 '改行を追加して表示を調整
50430 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
50440 line input #1,f$
50450 f1$=Mid$(f$,1,15)
50460 f2$=Mid$(f$,16,12)
50470 buf_String$ = f1$+chr$(13)+f2$
50480 close #1
50490 endif
50500 if ba$="G" then
50510 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
50520 line input #1,g$
50530 g1$ = mid$(g$,1,16)
50540 g2$ = mid$(g$,17,18)
50550 g3$ = mid$(g$,36,21)
50560 g4$ = mid$(g$,56,6)
50570 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
50580 buf_String$ = g5$
50590 close #1
50600 endif
50610 if ba$="H" then
50620 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
50630 line input #1,h$
50640 h1$=Mid$(h$,1,17)
50650 h2$=Mid$(h$,18,21)
50660 h3$=Mid$(h$,39,20)
50670 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
50680 buf_String$ = h$
50690 close #1
50700 endif
50710 if ba$ = "I" then
50720 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
50730 line input #1,i$
50740 i1$=Mid$(i$,1,10)
50750 i2$=Mid$(i$,11,13)
50760 i3$=Mid$(i$,25,16)
50770 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
50780 buf_String$ = i$
50790 close #1
50800 endif
50810 buffer$ = buf_String$
50820 endfunc buffer$
50830 'カバラ数（数秘番号を求める）
50840 func Kabara_Num(buffer_Year,month,day)
50850 '=============================
50860 'a1:4桁のうちの1桁目を求める
50870 '例 a1:1234の4が1桁目
50880 'a2:4桁のうちの2桁目を求める
50890 '例:a2:1234の3が2桁目
50900 'a3:4桁のうちの3桁目を求める
50910 '例 a3:1234の2が3桁目
50920 'a4:4桁のうちの4桁目を求める
50930 '例 a4:1234の1が4桁目
50940 '==============================
50950 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
50960 Year = buffer_Year
50970 '処理1　整数部分を取り出す。
50980 a4 = fix(Year / 1000)
50990 a3 = fix(Year / 100) - (a4 * 10)
51000 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
51010 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
51020 '処理　２　取り出した整数部分を足す。
51030 a_ = a1 + a2 + a3 + a4 +month + day
51040 'a1=0:a2=0:a3=0:a4=0
51050 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
51060 buffer = a_
51070 'else
51080 goto recomp2:
51090 'if (a_ = 10) then
51100 '  buffer = 1
51110 endif
51120 recomp2:
51130 a5=0:a6=0
51140 a5 = fix(a_ / 10)
51150 a6 = (a_) - (a5 * 10)
51160 a_ = a5 + a6
51170 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
51180 '結果に行く
51190 goto Res2:
51200 '  if ((a_>11) and (a_<99)) then
51210 else
51220 '再度計算
51230 goto recomp2:
51240 endif
51250 '     a1 = fix(a_ / 10)
51260 '     a2 = a_ - (a1 * 10)
51270 '     a_ = a1 + a2
51280 '     buffer = a_
51290 'endif
51300 'else
51310 '    bffer = a_
51320 'endif
51330 'endif
51340 'else
51350 'talk "プログラムを終了します。"
51360 'end
51370 'endif
51380 'kabara = 10
51390 Res2:
51400 kabara = a_
51410 endfunc kabara
51420 func Kabara_Aisyou$(buff1,buff2)
51430 a=0:b=0
51440 '範囲　1~9
51450 if ((buff1 > 0 and buff1 < 10)) then
51460 a = buff1
51470 else
51480 Select case buff1
51490 case 11:
51500 buff1=9:a=buff1
51510 case 22:
51520 buff1=10:a=buff1
51530 end select
51540 endif
51550 '範囲　１~９
51560 if ((buff2 > 0 and buff2 < 10)) then
51570 b = buff2
51580 else
51590 select case buff2
51600 case 11:
51610 buff2=9:b=buff2
51620 case 12:
51630 buff2=10:b=buff2
51640 end select
51650 endif
51660 Aisyou$ = Buffer_Business_Aisyou$(a,b)
51670 endfunc Aisyou$
51680 '=============================
51690 '自作関数 ここまで
51700 '1.数秘術　トップ画面
51710 '
51720 'Data_eraseを一番最後に持ってくる
51730 '=============================
51740 Data_erase:
51750 'メモリー削除
51760 erase buf_name1$
51770 erase buf_name2$
51780 erase buffer
51790 erase buf_chart$
51800 erase Buffer_Business_Aisyou$
51810 erase buffer_name$
51820 '上司の誕生日
51830 erase buf_Jyoushi_Born_Day
51840 '部下の誕生日
51850 erase buf_Buka_Born_Day
51860 erase buf_year
51870 erase buf_month
51880 erase buf_day
51890 'フォーカスライン
51900 erase Forcus1_buffer$
51910 erase Forcus2_buffer$
51920 erase Forcus3_buffer$
51930 buffer$ = ""
51940 buf$ = ""
51950 buf_year$ = ""
51960 buf_Jyoushi_Kabara_Num = 0
51970 buf_Buka_Kabara_Num = 0
51980 count = 0
51990 buf_Month$ = ""
52000 buf_Day$ = ""
52010 b=0
52020 c=0
52030 return
