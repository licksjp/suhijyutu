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
400 Version$ = "Ver:1.2.0_20231022"
410 'Gazo file Folder
420 Gazo$ = "./data/Picture/"
430 'Voice files 2023
440 Voice$ = "./data/Voice/Voice/"
450 'BirtheyeChart Data:20230626
460 Birth_eye_chart$ = "./data/chart_data/"
470 'Data File
480 Data$ = "./data/data/"
490 'Business Aisyou 結果説明保存フォルダ
500 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
510 '変数定義 パート
520 b=0:c=0
530 dim buf_name1$(10),buf_name2$(10)
540 dim buffer(9),buf_chart$(26,2)
550 'ビジネスの相性　データー
560 dim Buffer_Business_Aisyou$(12,12)
570 '生れた年代
580 dim buf_year(4):buf_year$ = ""
590 dim buf_month(2)
600 dim buf_day(2)
610 'フォーカスライン　配列
620 dim Forcus1_buffer$(3)
630 dim Forcus2_buffer$(3)
640 dim Forcus3_buffer$(2)
650 '生れた月
660 buf_Month$ = ""
670 '生れた日
680 buf_Day$ = ""
690 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
700 dim buffer_name$(3)
710 '1-1.上司の誕生日(数値データー)
720 dim buf_Jyoushi_Born_Day(3)
730 '1-2.上司の数秘ナンバー(数値データー)
740 buf_Jyoushi_Kabara_Num = 0
750 '2-1.部下の誕生日(数値データー)
760 dim buf_Buka_Born_Day(3)
770 '2-2.部下の数秘ナンバー(数秘データー)
780 buf_Buka_Kabara_Num = 0
790 count=0
800 '部下の数秘ナンバー
810 'File 読み込み
820 '1.ビジネスの相性占い
830 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
840 for i=0 to 11
850 for j=0 to 11
860 input #1,a$
870 Buffer_Business_Aisyou$(j,i) = a$
880 next j
890 next i
900 close #1
910 '2.Birth Eye chart$
920 '2.バーズアイグリッドを読み込む
930 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
940 for j=0 to 25
950 for i=0 to 1
960 input #1,a$
970 buf_chart$(j,i) = a$
980 next i
990 next j
1000 close #1
1010 'File 読み込み　ここまで
1020 'Main画面
1030 screen 1,1,1,1
1040 Main_Screen:
1050 cls 3:
1060 No=0
1070 gload Gazo$ + "Selection.png",1,5,200
1080 gload Gazo$ + "Selection.png",1,5,300
1090 gload Gazo$ + "Selection.png",1,5,400
1100 gload Gazo$ + "Selection.png",1,5,500
1110 '4
1120 gload Gazo$ + "Selection.png",1,35,300
1130 '5
1140 gload Gazo$ + "Selection.png",1,35,400
1150 '6
1160 gload Gazo$ + "Selection.png",1,35,500
1170 '7
1180 gload Gazo$ + "Selection.png",1,70,300
1190 '8
1200 gload Gazo$ + "Selection.png",1,70,400
1210 '9
1220 gload Gazo$ + "Selection.png",1,70,500
1230 '10
1240 gload Gazo$ + "Selection.png",1,110,300
1250 '11
1260 gload Gazo$ + "Selection.png",1,110,400
1270 '12
1280 gload Gazo$ + "Selection.png",1,110,500
1290 '13:0
1300 gload Gazo$ + "Selection.png",1,150,400
1310 gload Gazo$ + "Selection.png",1,200,400
1320 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1330 gload Gazo$ + "downscreen.png",0,0,800
1340 sp_def 0,(5,300),32,32
1350 sp_def 1,(5,400),32,32
1360 sp_def 2,(5,500),32,32
1370 sp_def 3,(5,600),32,32
1380 '1
1390 sp_def 4,(35,300),32,32
1400 '2
1410 sp_def 5,(35,400),32,32
1420 '3
1430 sp_def 6,(35,500),32,32
1440 '4
1450 sp_def 7,(70,300),32,32
1460 '5
1470 sp_def 8,(70,400),32,32
1480 '6
1490 sp_def 9,(70,500),32,32
1500 '7
1510 sp_def 10,(110,300),32,32
1520 '8
1530 sp_def 11,(110,400),32,32
1540 '9
1550 sp_def 12,(110,400),32,32
1560 sp_def 13,(150,400),32,32
1570 sp_def 14,(200,400),32,32
1580 'Sprite OFF
1590 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1600 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1610 sp_put 0,(5,300),0,0
1620 sp_put 1,(5,400),1,0
1630 sp_put 2,(5,500),2,0
1640 sp_put 3,(5,600),3,0
1650 '1
1660 sp_put 4,(130,300),4,0
1670 '2
1680 sp_put 5,(130,400),5,0
1690 '3
1700 sp_put 6,(130,500),6,0
1710 '4
1720 sp_put 7,(340,300),7,0
1730 '5
1740 sp_put 8,(340,400),8,0
1750 '6
1760 sp_put 9,(340,500),9,0
1770 '7
1780 sp_put 10,(540,300),10,0
1790 '8
1800 sp_put 11,(540,400),11,0
1810 '9
1820 sp_put 12,(540,500),12,0
1830 '
1840 sp_put 13,(340,600),13,0
1850 sp_put 14,(540,600),14,0
1860 Main_Top:
1870 'Main Message 2023.06.07
1880 '再生を止める
1890 play ""
1900 init "kb:4"
1910 'font 32:
1920 font 48
1930 print chr$(13) + chr$(13) + chr$(13)
1940 color rgb(217,255,212)
1950 print "番号を選んでください" + chr$(13)
1960 '0
1970 print " :1.数秘術占い" + chr$(13)
1980 '1
1990 print " :2.設 定" + chr$(13)
2000 '2
2010 print " :3.ヘルプ" + chr$(13)
2020 '3
2030 print " :4.(プログラムを)終了する" + chr$(13)
2040 COLOR rgb(0,0,0):No=0
2050 locate 1,15
2060 print "                                       "
2070 locate 1,15:print "1.数秘術占いを選択"
2080 play Voice$ + "Voice_Main_Message_20230607.mp3"
2090 Main_Screen_Select:
2100 y = 0:key$ = "":bg = 0:bg2=0
2110 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2120 y = stick(1)
2130 '"May (2023)"
2140 key$ = inkey$
2150 bg = strig(1)
2160 bg2 = strig(0)
2170 pause 2
2180 wend
2190 '1.
2200 'ジョイパッドのソース ソート　ここから
2210 'カーソル　下 or 十字キー下
2220 if ((y = 1) or (key$ = chr$(31))) then
2230 select case No
2240 case 0:
2250 '1
2260 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2270 case 1:
2280 '2
2290 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2300 case 2:
2310 '3
2320 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2330 case 3:
2340 '0
2350 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2360 end select
2370 endif
2380 '2.
2390 'カーソル　上　or 十字キー  上
2400 if ((y = -1) or (key$ = chr$(30))) then
2410 select case No
2420 case 0:
2430 '3
2440 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2450 case 1:
2460 '0
2470 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2480 case 2:
2490 '1
2500 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2510 case 3:
2520 '2
2530 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2540 end select
2550 endif
2560 'ジョイパッド　ソース 部分　ここまで
2570 'ジョイパッド右　　or Enter key 決定
2580 if ((bg = 2) OR (key$ = chr$(13))) then
2590 select case No
2600 case 0:
2610 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2620 case 1:
2630 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2640 case 2:
2650 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2660 case 3:
2670 play "":pause 200
2680 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2690 end select
2700 endif
2710 if (bg2 = 2) then
2720 play "":pause 200
2730 play Voice$ + "Voice_Main_Message_20230607.mp3"
2740 goto Main_Screen_Select:
2750 endif
2760 'Version
2770 Version:
2780 cls 3:PLAY ""
2790 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2800 gload Gazo$ + "downscreen.png",0,0,800
2810 init"kb:4":font 32
2820 'talk"バージョン情報です"
2830 'Message :Version
2840 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2850 locate 0,5
2860 color rgb(0,0,0)
2870 print "・Title:数秘術占い";chr$(13)
2880 print "・" + Version$ + chr$(13)
2890 print "・Author:licksjp"+chr$(13)
2900 print "・E-mail:licksjp@gmail.com" + chr$(13)
2910 locate 0,18
2920 print "(C)licksjp All rights " + chr$(13)
2930 locate 13,19
2940 print "reserved since 2009"+chr$(13)
2950 locate 0,23
2960 color rgb(255,255,255)
2970 print "ジョイパッドの右を押してください"
2980 Versionn_Selection:
2990 bg = 0:key$ = "":bg2 = 0
3000 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3010 bg = strig(1)
3020 key$ = inkey$
3030 bg2 = strig(0)
3040 pause 2
3050 wend
3060 if ((bg = 2) or (key$ = chr$(13))) then
3070 pause 200:cls 4:goto Main_Screen:
3080 endif
3090 if (bg2=2) then
3100 play "":pause 200
3110 play Voice$ + "Voice_Version_Message_20230607.mp3"
3120 goto Versionn_Selection:
3130 endif
3140 '1.数秘ナンバーを求める
3150 '誕生日入力(生れた年代)
3160 Input_Seireki:
3170 cls 3:play "":count=0:count2=0
3180 'No = -1:Okのとき
3190 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3200 for i=0 to 3
3210 buf_year(i)=0
3220 next i
3230 gload Gazo$ + "Screen1.png",0,0,0
3240 gload Gazo$ + "downscreen.png",0,0,800
3250 'Init"kb:2"
3260 '音声ファイル再生 2023.06.07
3270 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3280 font 48
3290 locate 0,1
3300 '文字色：黒　 color rgb(0,0,0)
3310 color rgb(255,255,255)
3320 print "生まれた年代を入れて下さい" + chr$(13)
3330 color rgb(255,255,255)
3340 locate 2,3
3350 print "生まれた年代(西暦4桁):" + buf_year$
3360 '=============================
3370 'テンキーの色(1~９)　白 ,決定ボタン　青
3380 '=============================
3390 color rgb(255,255,255)
3400 'locate 4,6:print ":7"
3410 'locate 9,6:print ":8"
3420 'locate 12,6:print ":9"
3430 locate 4,6
3440 print ":7  :8  :9" + chr$(13)
3450 color rgb(255,255,255)
3460 locate 4,8
3470 print ":4  :5  :6" + chr$(13)
3480 color rgb(255,255,255)
3490 locate 4,10
3500 print ":1  :2  :3" + chr$(13)
3510 locate 4,12
3520 print "    :0"
3530 locate 12,12
3540 color rgb(255,0,0)
3550 print ":Ok"
3560 sp_on 4,0: sp_on 5,0:sp_on 6,0
3570 sp_on 7,0:sp_on 8,0:sp_on 9,0
3580 sp_on 10,0:sp_on 11,0:sp_on 12,0
3590 sp_on 13,0:sp_on 14,1
3600 Input_Seireki2:
3610 key$="":bg=0:y=0:y2=0:bg2=0:
3620 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3630 key$ = inkey$
3640 bg = strig(1)
3650 y = stick(1)
3660 y2 = stick(0)
3670 bg2 = strig(0)
3680 pause 15
3690 wend
3700 '十字キー　ここから
3710 '上の矢印　または、十字キー上
3720 if ((y = -1) or (key$ = chr$(30))) then
3730 select case No
3740 'No=-1:okのとき:初期の状態
3750 '0kボタンから３に移動
3760 '上に行く 処理
3770 case -1:
3780 No=3:sp_on 12,1:sp_on 14,0
3790 pause 200:goto Input_Seireki2:
3800 '選択肢:3
3810 '3ボタンから 6に移動
3820 case 3:
3830 No=6:sp_on 12,0:sp_on 11,1
3840 pause 200:goto Input_Seireki2:
3850 '6ボタンから ９に移動
3860 case 6:
3870 No=9:sp_on 10,1:sp_on 11,0
3880 pause 200:goto Input_Seireki2:
3890 '6ボタンから ９に移動　ここまで
3900 '9で上を押して何もしない
3910 case 9:
3920 '何もしない
3930 No=9
3940 pause 200:goto Input_Seireki2:
3950 '9で上を押しても何もしない　ここまで
3960 '上　 0ボタンから2ボタン
3970 'sp_on 6,1:1
3980 'sp_on 8,1:5
3990 'sp_on 7,1:7
4000 case 0:
4010 No=2:sp_on 13,0:sp_on 9,1:
4020 pause 200:goto Input_Seireki2:
4030 '上  0ボタンから2ボタン　ここまで
4040 '2から５になる 上
4050 case 2:
4060 No=5:sp_on 8,1:sp_on 9,0:
4070 pause 200:goto Input_Seireki2:
4080 case 5:
4090 No=8:sp_on 7,1:sp_on 8,0
4100 pause 200:goto Input_Seireki2:
4110 case 8:
4120 pause 200:goto Input_Seireki2:
4130 case 1:
4140 No=4:sp_on 5,1:sp_on 6,0
4150 pause 200:goto Input_Seireki2:
4160 case 4:
4170 No=7:sp_on 4,1:sp_on 5,0
4180 pause 200:goto Input_Seireki2:
4190 case 7:
4200 pause 200:goto Input_Seireki2:
4210 end select
4220 endif
4230 '左３　ここまで
4240 '下の矢印
4250 '中央 2
4260 if ((y=1) or (key$ = chr$(31))) then
4270 select case No
4280 '9から６に下げる
4290 case 9:
4300 No=6:sp_on 11,1:sp_on 10,0
4310 pause 200:goto Input_Seireki2:
4320 '6から３に下げる
4330 case 6:
4340 No=3:sp_on 12,1:sp_on 11,0
4350 pause 200:goto Input_Seireki2:
4360 '3から０ｋに変える
4370 case 3:
4380 No=-1:sp_on 14,1:sp_on 12,0
4390 pause 200:goto Input_Seireki2:
4400 'Okから下のボタンを押しても何もしない
4410 case -1:
4420 pause 200:goto Input_Seireki2:
4430 case 8:
4440 No=5:sp_on 8,1:sp_on 7,0
4450 pause 200:goto Input_Seireki2:
4460 case 5:
4470 No=2:sp_on 9,1:sp_on 8,0
4480 pause 200:goto Input_Seireki2:
4490 case 2:
4500 No=0:sp_on 13,1:sp_on 9,0
4510 pause 200:goto Input_Seireki2:
4520 case 0:
4530 pause 200:goto Input_Seireki2:
4540 case 7:
4550 No=4:sp_on 5,1:sp_on 4,0
4560 pause 200:goto Input_Seireki2:
4570 case 4:
4580 No=1:sp_on 6,1:sp_on 5,0
4590 pause 200:goto Input_Seireki2:
4600 case 1:
4610 pause 200:goto Input_Seireki2:
4620 end select
4630 endif
4640 '左へボタン 十字キー　左　or 　カーソル左
4650 if ((y2 = -1) or (key$ = chr$(29))) then
4660 select case No
4670 'Ok ボタン  Okから　左　０に行く
4680 case -1:
4690 No=0:sp_on 13,1:sp_on 14,0
4700 pause 200:goto Input_Seireki2:
4710 '0 ボタン  左　何もしない
4720 case 0:
4730 pause 200:goto Input_Seireki2:
4740 case 3:
4750 No=2:sp_on 9,1:sp_on 12,0:
4760 pause 200:goto Input_Seireki2:
4770 case 2:
4780 No=1:sp_on 6,1:sp_on 9,0:
4790 pause 200:goto Input_Seireki2:
4800 case 1:
4810 pause 200:goto Input_Seireki2:
4820 case 6:
4830 No=5:sp_on 8,1:sp_on 11,0
4840 pause 200:goto Input_Seireki2:
4850 case 5:
4860 No=4:sp_on 5,1:sp_on 8,0
4870 pause 200:goto Input_Seireki2:
4880 case 4:
4890 pause 200:goto Input_Seireki2:
4900 case 9:
4910 No=8:sp_on 7,1:sp_on 10,0
4920 pause 200:goto Input_Seireki2:
4930 case 8:
4940 No=7:sp_on 4,1:sp_on 7,0
4950 pause 200:goto Input_Seireki2:
4960 case 7:
4970 pause 200:goto Input_Seireki2:
4980 end select
4990 endif
5000 '右  十字キー　右　or カーソル　右
5010 if ((y2 = 1) or (key$ = chr$(28))) then
5020 select case No
5030 '0ボタンからokボタン右に移動
5040 case 0:
5050 No=-1:sp_on 14,1:sp_on 13,0
5060 pause 200:goto Input_Seireki2:
5070 '0ボタンからokボタン 右に移動　ここまで
5080 'OKボタンで右を押して何もしない
5090 case -1:
5100 pause 200:goto Input_Seireki2:
5110 case 1:
5120 No=2:sp_on 9,1:sp_on 6,0
5130 pause 200:goto Input_Seireki2:
5140 case 2:
5150 No=3:sp_on 12,1:sp_on 9,0
5160 pause 200:goto Input_Seireki2:
5170 case 3:
5180 pause 200:goto Input_Seireki2:
5190 case 4:
5200 No=5:sp_on 8,1:sp_on 5,0
5210 pause 200:goto Input_Seireki2:
5220 case 5:
5230 No=6:sp_on 11,1:sp_on 8,0
5240 pause 200:goto Input_Seireki2:
5250 case 7:
5260 No=8:sp_on 7,1:sp_on 4,0
5270 pause 200:goto Input_Seireki2:
5280 case 8:
5290 No=9:sp_on 10,1:sp_on 7,0
5300 pause 200:goto Input_Seireki2:
5310 case 9:
5320 pause 200:goto Input_Seireki2:
5330 case 6:
5340 pause 200:goto Input_Seireki2:
5350 end select
5360 'Okから右ボタンを押して何もしない ここまで
5370 endif
5380 '十字キー　ここまで
5390 if ((bg=2) or (key$=chr$(13))) then
5400 select case count
5410 case 0:
5420 count=1
5430 if (No=-1) then
5440 count=0
5450 'Okボタンを押したとき
5460 goto Input_Seireki2:
5470 else
5480 '===================================
5490 'Okボタン以外が押されたとき  1桁目の入力
5500 '===================================
5510 count2=1
5520 if (No >= 1 and No <= 2) then
5530 buf_year$="":buf_year$ = str$(No)
5540 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5550 n1 = len("生まれた年代(西暦4桁): ")
5560 locate 2,3
5570 color rgb(255,255,255)
5580 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5590 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5600 'print "生まれた年代(西暦4桁):";buf_year2$
5610 print buf_Born_Year_line$
5620 goto Input_Seireki2:
5630 else
5640 count=0
5650 ui_msg"数字が範囲外になります。"
5660 buf_year$="":buf_year=0
5670 goto Input_Seireki2:
5680 endif
5690 endif
5700 case 1:
5710 count = 2
5720 if (No = -1) then
5730 count = 1
5740 goto Input_Seireki2:
5750 else
5760 count2 = 1
5770 b = val(buf_year$)
5780 buf_year = b * 10 + No
5790 buf_year$ = str$(buf_year):buf_year2$=buf_year$+string$(2,"**")
5800 locate 2,3
5810 color rgb(255,255,255)
5820 print "                                                                "
5830 locate 2,3
5840 print "生まれた年代(西暦4桁):";buf_year2$
5850 'if (No = -1) then
5860 'count=1
5870 goto Input_Seireki2:
5880 endif
5890 case 2:
5900 count=3
5910 if (No=-1) then
5920 count =2
5930 goto Input_Seireki2:
5940 else
5950 b = val(buf_year$)
5960 buf_year = b*10 + No
5970 buf_year$ = str$(buf_year):buf_year2$=buf_year$ + string$(1,"*")
5980 locate 2,3
5990 color rgb(255,255,255)
6000 print "                                        "
6010 locate 2,3
6020 print "生まれた年代(西暦4桁):";buf_year2$
6030 goto Input_Seireki2:
6040 endif
6050 case 3:
6060 count=4
6070 if (No = -1) then
6080 count=3
6090 goto Input_Seireki2:
6100 else
6110 b = val(buf_year$)
6120 buf_year=b*10+No
6130 buf_year$=str$(buf_year)
6140 locate 2,3
6150 color RGB(255,255,255)
6160 print "                                      "
6170 locate 2,3
6180 print "生まれた年代(西暦4桁):";buf_year$
6190 buf_year=val(buf_year$)
6200 'year=val(buf_year$)
6210 'if (No=-1) then
6220 'goto Input_Born_Month:
6230 'else
6240 goto Input_Seireki2:
6250 endif
6260 case 4:
6270 'bufyear=buf_year
6280 if (No=-1) then
6290 buf_year = val(buf_year$)
6300 bufyear = buf_year
6310 sp_on 14,0
6320 goto Input_Born_Month:
6330 else
6340 goto Input_Seireki2:
6350 endif
6360 end select
6370 endif
6380 '=========================
6390 'bg2　キャンセルボタン
6400 '=========================
6410 if (bg2 = 2) then
6420 select case count2
6430 case 0:
6440 'Okボタンを押したときの処理
6450 if (No = -1) then
6460 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6470 'count = 0
6480 locate 2,3
6490 color rgb(255,255,255)
6500 print "                                      "
6510 locate 2,3
6520 print "生まれた年代（西暦4桁):";buf_year$
6530 '=============================
6540 'case 0:前の画面に戻る 数秘術トップメニュー
6550 '=============================
6560 sp_on 14,0:goto Kabara_TopScreen:
6570 else
6580 'count=0
6590 '(buf_year=0) then
6600 buf_year = 0:buf_year$ = string$(4,"*")
6610 goto Input_Seireki2:
6620 'endif
6630 endif
6640 case 1:
6650 if (No = -1) then
6660 count2 = 0:count = 0
6670 buf$=right$(buf_year$,1)
6680 if (val(buf$) >= 1 and val(buf$) <= 9) then
6690 buf_year$ = "****":buf_year=0
6700 color rgb(255,255,255)
6710 locate 0,3:
6720 print "                                      "
6730 locate 2,3
6740 print "生まれた年代（西暦4桁):" + buf_year$
6750 goto Input_Seireki2:
6760 endif
6770 else
6780 endif
6790 end select
6800 endif
6810 end
6820 'Input"生れた年代(4桁,〜2025年):",year
6830 'if year > 2025 then goto Input_Seireki:
6840 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6850 '"4桁目"
6860 'bufyear4 = fix(year / 1000)
6870 '"3桁目"
6880 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6890 '"2桁目"
6900 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6910 '"1桁目"
6920 'bufyear1 = fix((year - ((bufyear4*
6930 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6940 '生れた月を入力
6950 Input_Born_Month:
6960 cls 3:play "":count=0:count2=0
6970 'No=-1:Okのとき
6980 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
6990 for i=0 to 1
7000 buf_month(i)=0
7010 next i
7020 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7030 gload Gazo$ + "Screen1.png",0,0,0
7040 gload Gazo$ + "downscreen.png",0,0,800
7050 'Init"kb:2"
7060 '音声ファイル再生 2023.06.07
7070 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7080 font 48
7090 locate 0,1
7100 '文字色：黒　 color rgb(0,0,0)
7110 '文字色:白
7120 color rgb(255,255,255)
7130 print "生まれた月を入れて下さい" + chr$(13)
7140 '文字色:白
7150 color rgb(255,255,255)
7160 locate 2,3
7170 '文字色:白
7180 print "生まれた月(1月~12月):";buf_Month$
7190 color rgb(255,255,255)
7200 'locate 4,6:print ":7"
7210 'locate 9,6:print ":8"
7220 'locate 12,6:print ":9"
7230 locate 4,6
7240 '文字色:赤
7250 print ":7  :8  :9" + chr$(13)
7260 color rgb(255,255,255)
7270 locate 4,8
7280 print ":4  :5  :6" + chr$(13)
7290 color rgb(255,255,255)
7300 locate 4,10
7310 print ":1  :2  :3" + chr$(13)
7320 locate 4,12
7330 print "    :0"
7340 locate 12,12
7350 color rgb(255,0,0)
7360 print ":Ok"
7370 sp_on 4,0: sp_on 5,0:sp_on 6,0
7380 sp_on 7,0:sp_on 8,0:sp_on 9,0
7390 sp_on 10,0:sp_on 11,0:sp_on 12,0
7400 sp_on 13,0:sp_on 14,1
7410 Input_Born_Month2:
7420 key$="":bg=0:y=0:y2=0:bg2=0
7430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7440 key$ = inkey$
7450 bg = strig(1)
7460 y = stick(1)
7470 y2 = stick(0)
7480 bg2 = strig(0)
7490 pause 5
7500 wend
7510 '十字キー　ここから
7520 '上の矢印　または、十字キー上
7530 if ((y = -1) or (key$ = chr$(30))) then
7540 select case No
7550 'No=-1:okのとき:初期の状態
7560 '0kボタンから３に移動
7570 '上に行く 処理
7580 case -1:
7590 No=3:sp_on 12,1:sp_on 14,0
7600 pause 200:goto Input_Born_Month2:
7610 '選択肢:3
7620 '3ボタンから 6に移動
7630 case 3:
7640 No=6:sp_on 12,0:sp_on 11,1
7650 pause 200:goto Input_Born_Month2:
7660 '6ボタンから ９に移動
7670 case 6:
7680 No=9:sp_on 10,1:sp_on 11,0
7690 pause 200:goto Input_Born_Month2:
7700 '6ボタンから ９に移動　ここまで
7710 '9で上を押して何もしない
7720 case 9:
7730 '何もしない
7740 No=9
7750 pause 200:goto Input_Born_Month2:
7760 '9で上を押しても何もしない　ここまで
7770 '上　 0ボタンから2ボタン
7780 'sp_on 6,1:1
7790 'sp_on 8,1:5
7800 'sp_on 7,1:7
7810 case 0:
7820 No=2:sp_on 13,0:sp_on 9,1:
7830 pause 200:goto Input_Born_Month2:
7840 '上  0ボタンから2ボタン　ここまで
7850 '2から５になる 上
7860 case 2:
7870 No=5:sp_on 8,1:sp_on 9,0:
7880 pause 200:goto Input_Born_Month2:
7890 case 5:
7900 No=8:sp_on 7,1:sp_on 8,0
7910 pause 200:goto Input_Born_Month2:
7920 case 8:
7930 pause 200:goto Input_Born_Month2:
7940 case 1:
7950 No=4:sp_on 5,1:sp_on 6,0
7960 pause 200:goto Input_Born_Month2:
7970 case 4:
7980 No=7:sp_on 4,1:sp_on 5,0
7990 pause 200:goto Input_Born_Month2:
8000 case 7:
8010 pause 200:goto Input_Born_Month2:
8020 end select
8030 endif
8040 '左３　ここまで
8050 '下の矢印
8060 '中央 2
8070 if ((y=1) or (key$ = chr$(31))) then
8080 select case No
8090 '9から６に下げる
8100 case 9:
8110 No=6:sp_on 11,1:sp_on 10,0
8120 pause 200:goto Input_Born_Month2:
8130 '6から３に下げる
8140 case 6:
8150 No=3:sp_on 12,1:sp_on 11,0
8160 pause 200:goto Input_Born_Month2:
8170 '3から０ｋに変える
8180 case 3:
8190 No=-1:sp_on 14,1:sp_on 12,0
8200 pause 200:goto Input_Born_Month2:
8210 'Okから下のボタンを押しても何もしない
8220 case -1:
8230 pause 200:goto Input_Born_Month2:
8240 case 8:
8250 No=5:sp_on 8,1:sp_on 7,0
8260 pause 200:goto Input_Born_Month2:
8270 case 5:
8280 No=2:sp_on 9,1:sp_on 8,0
8290 pause 200:goto Input_Born_Month2:
8300 case 2:
8310 No=0:sp_on 13,1:sp_on 9,0
8320 pause 200:goto Input_Born_Month2:
8330 case 0:
8340 pause 200:goto Input_Born_Month2:
8350 case 7:
8360 No=4:sp_on 5,1:sp_on 4,0
8370 pause 200:goto Input_Born_Month2:
8380 case 4:
8390 No=1:sp_on 6,1:sp_on 5,0
8400 pause 200:goto Input_Born_Month2:
8410 case 1:
8420 pause 200:goto Input_Born_Month2:
8430 end select
8440 endif
8450 '左へボタン 十字キー　左　or 　カーソル左
8460 if ((y2 = -1) or (key$ = chr$(29))) then
8470 select case No
8480 'Ok ボタン  Okから　左　０に行く
8490 case -1:
8500 No=0:sp_on 13,1:sp_on 14,0
8510 pause 200:goto Input_Born_Month2:
8520 '0 ボタン  左　何もしない
8530 case 0:
8540 pause 200:goto Input_Born_Month2:
8550 case 3:
8560 No=2:sp_on 9,1:sp_on 12,0:
8570 pause 200:goto Input_Born_Month2:
8580 case 2:
8590 No=1:sp_on 6,1:sp_on 9,0:
8600 pause 200:goto Input_Born_Month2:
8610 case 1:
8620 pause 200:goto Input_Born_Month2:
8630 case 6:
8640 No=5:sp_on 8,1:sp_on 11,0
8650 pause 200:goto Input_Born_Month2:
8660 case 5:
8670 No=4:sp_on 5,1:sp_on 8,0
8680 pause 200:goto Input_Born_Month2:
8690 case 4:
8700 pause 200:goto Input_Born_Month2:
8710 case 9:
8720 No=8:sp_on 7,1:sp_on 10,0
8730 pause 200:goto Input_Born_Month2:
8740 case 8:
8750 No=7:sp_on 4,1:sp_on 7,0
8760 pause 200:goto Input_Born_Month2:
8770 case 7:
8780 pause 200:goto Input_Born_Month2:
8790 end select
8800 endif
8810 '右  十字キー　右　or カーソル　右
8820 if ((y2 = 1) or (key$ = chr$(28))) then
8830 select case No
8840 '0ボタンからokボタン右に移動
8850 case 0:
8860 No=-1:sp_on 14,1:sp_on 13,0
8870 pause 200:goto Input_Born_Month2:
8880 '0ボタンからokボタン 右に移動　ここまで
8890 'OKボタンで右を押して何もしない
8900 case -1:
8910 pause 200:goto Input_Born_Month2:
8920 case 1:
8930 No=2:sp_on 9,1:sp_on 6,0
8940 pause 200:goto Input_Born_Month2:
8950 case 2:
8960 No=3:sp_on 12,1:sp_on 9,0
8970 pause 200:goto Input_Born_Month2:
8980 case 3:
8990 pause 200:goto Input_Born_Month2:
9000 case 4:
9010 No=5:sp_on 8,1:sp_on 5,0
9020 pause 200:goto Input_Born_Month2:
9030 case 5:
9040 No=6:sp_on 11,1:sp_on 8,0
9050 pause 200:goto Input_Born_Month2:
9060 case 7:
9070 No=8:sp_on 7,1:sp_on 4,0
9080 pause 200:goto Input_Born_Month2:
9090 case 8:
9100 No=9:sp_on 10,1:sp_on 7,0
9110 pause 200:goto Input_Born_Month2:
9120 case 9:
9130 pause 200:goto Input_Born_Month2:
9140 case 6:
9150 pause 200:goto Input_Born_Month2:
9160 end select
9170 'Okから右ボタンを押して何もしない ここまで
9180 endif
9190 '十字キー　ここまで
9200 '右の丸ボタン　決定キー
9210 if ((bg=2) or (key$=chr$(13))) then
9220 select case count
9230 case 0:
9240 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9250 if (buf_month = 1 or buf_month = 2) then
9260 locate 2,3
9270 color RGB(255,255,255)
9280 print "生まれた月(1月~12月):";buf_Month2$
9290 else
9300 locate 2,3
9310 color Rgb(255,255,255)
9320 print "生まれた月(1月~12月):";buf_Month$
9330 endif
9340 goto Input_Born_Month2:
9350 case 1:
9360 count = 2:c = No
9370 c = val(buf_Month$)
9380 if (No = -1) then
9390 'if No=1 or No=2 then
9400 'endif
9410 month = buf_month
9420 buf_month=val(buf_Month$)
9430 month=buf_month
9440 '生まれた日に飛ぶ
9450 goto Input_Born_Day:
9460 else
9470 buf_month = c*10 + No
9480 buf_Month$= str$(buf_month)
9490 locate 2,3
9500 color Rgb(255,255,255)
9510 print "生まれた月(1月~12月):";buf_Month$
9520 goto Input_Born_Month2:
9530 endif
9540 case 2:
9550 count=3:count2=1
9560 'c= val(buf_Month$)
9570 'buf_month = c*10 + No
9580 'buf_Month$ = str$(buf_month)
9590 'locate 2,3
9600 'print "生まれた月(1月～12月):";buf_Month$
9610 'goto Input_Born_Month2:
9620 'case 3:
9630 'count=4
9640 'b=val(buf_month$)
9650 'buf_month=c*10+No
9660 'buf_Month$=str$(buf_month)
9670 'locate 2,3
9680 'print "生まれた月(1月～12月):";buf_Month$
9690 'buf_month=val(buf_Month$)
9700 'year=val(buf_year$)
9710 if (No=-1) then
9720 goto Input_Born_Day:
9730 else
9740 'goto Input_Born_Month2:
9750 endif
9760 'case 4:
9770 'bufyear=buf_year
9780 'if (No=-1) then
9790 'buf_month = val(buf_Month$)
9800 'month = buf_month
9810 'sp_on 14,0
9820 'goto Input_Born_Day:
9830 'else
9840 'goto Input_Born_Month2:
9850 'endif
9860 end select
9870 endif
9880 '左の丸ボタン　キャンセル
9890 if (bg2=2) then
9900 select case count2
9910 case 0:
9920 if (No = -1) then
9930 buf_month=0:buf_Month$="**"
9940 count2=0:count=0
9950 locate 0,3:print "                                              "
9960 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
9970 'if (buf_month > 1) then
9980 sp_on 14,0:goto Input_Born_Month2:
9990 'goto rewrite:
10000 else
10010 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10020 buf_month=0:buf_Month$="**"
10030 locate 2,3
10040 color rgb(255,255,255)
10050 print "                                       "
10060 goto rewrite:
10070 if (No>2) then
10080 ui_msg"値が範囲外です。"
10090 goto rewrite:
10100 endif
10110 endif
10120 'endif
10130 rewrite:
10140 locate 2,3
10150 color rgb(255,255,255)
10160 print "                                      "
10170 locate 2,3
10180 print "生まれた月(1月~12月):";buf_Month$
10190 goto Input_Born_Month2:
10200 endif
10210 case 1:
10220 buf_Month$="**":buf_month=0
10230 if No=-1 then
10240 count2=2:count=0
10250 locate 0,3
10260 print "                                      "
10270 locate 2,3:
10280 print "生まれた月(1月~12月):"+buf_Month$
10290 goto Input_Born_Month2:
10300 endif
10310 case 2:
10320 sp_on 14,0:goto Input_Seireki:
10330 end select
10340 endif
10350 'endif
10360 end
10370 'end
10380 '生れた日を入力
10390 Input_Born_Day:
10400 '生まれた日入力
10410 cls 3:play ""
10420 'No=-1:Okのとき
10430 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10440 for i=0 to 1
10450 buf_day(i)=0
10460 next i
10470 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10480 gload Gazo$ + "Screen1.png",0,0,0
10490 gload Gazo$ + "downscreen.png",0,0,800
10500 'Init"kb:2"
10510 '音声ファイル再生 2023.06.07
10520 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10530 font 48
10540 locate 0,1
10550 '文字色：黒　 color rgb(0,0,0)
10560 color rgb(255,255,255)
10570 print "生まれた日を入れて下さい" + chr$(13)
10580 color rgb(255,255,255)
10590 locate 2,3
10600 print "生まれた日(1日~31日):";buf_Day$
10610 color rgb(255,255,255)
10620 'locate 4,6:print ":7"
10630 'locate 9,6:print ":8"
10640 'locate 12,6:print ":9"
10650 locate 4,6
10660 print ":7  :8  :9" + chr$(13)
10670 '=======================
10680 'テンキー　色　白　決定ボタン　青
10690 '=======================
10700 color rgb(255,255,255)
10710 locate 4,8
10720 print ":4  :5  :6" + chr$(13)
10730 color rgb(255,255,255)
10740 locate 4,10
10750 print ":1  :2  :3" + chr$(13)
10760 locate 4,12
10770 print "    :0"
10780 locate 12,12
10790 color rgb(255,0,0)
10800 print ":Ok"
10810 sp_on 4,0: sp_on 5,0:sp_on 6,0
10820 sp_on 7,0:sp_on 8,0:sp_on 9,0
10830 sp_on 10,0:sp_on 11,0:sp_on 12,0
10840 sp_on 13,0:sp_on 14,1
10850 Input_Born_Day2:
10860 key$="":bg=0:y=0:y2=0:bg2=0
10870 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10880 key$ = inkey$
10890 bg = strig(1)
10900 y = stick(1)
10910 y2 = stick(0)
10920 bg2 = strig(0)
10930 pause 5
10940 wend
10950 '十字キー　ここから
10960 '上の矢印　または、十字キー上
10970 if ((y = -1) or (key$ = chr$(30))) then
10980 select case No
10990 'No=-1:okのとき:初期の状態
11000 '0kボタンから３に移動
11010 '上に行く 処理
11020 case -1:
11030 No=3:sp_on 12,1:sp_on 14,0
11040 pause 200:goto Input_Born_Day2:
11050 '選択肢:3
11060 '3ボタンから 6に移動
11070 case 3:
11080 No=6:sp_on 12,0:sp_on 11,1
11090 pause 200:goto Input_Born_Day2:
11100 '6ボタンから ９に移動
11110 case 6:
11120 No=9:sp_on 10,1:sp_on 11,0
11130 pause 200:goto Input_Born_Day2:
11140 '6ボタンから ９に移動　ここまで
11150 '9で上を押して何もしない
11160 case 9:
11170 '何もしない
11180 No=9
11190 pause 200:goto Input_Born_Day2:
11200 '9で上を押しても何もしない　ここまで
11210 '上　 0ボタンから2ボタン
11220 'sp_on 6,1:1
11230 'sp_on 8,1:5
11240 'sp_on 7,1:7
11250 case 0:
11260 No=2:sp_on 13,0:sp_on 9,1:
11270 pause 200:goto Input_Born_Day2:
11280 '上  0ボタンから2ボタン　ここまで
11290 '2から５になる 上
11300 case 2:
11310 No=5:sp_on 8,1:sp_on 9,0:
11320 pause 200:goto Input_Born_Day2:
11330 case 5:
11340 No=8:sp_on 7,1:sp_on 8,0
11350 pause 200:goto Input_Born_Day2:
11360 case 8:
11370 pause 200:goto Input_Born_Day2:
11380 case 1:
11390 No=4:sp_on 5,1:sp_on 6,0
11400 pause 200:goto Input_Born_Day2:
11410 case 4:
11420 No=7:sp_on 4,1:sp_on 5,0
11430 pause 200:goto Input_Born_Day2:
11440 case 7:
11450 pause 200:goto Input_Born_Day2:
11460 end select
11470 endif
11480 '左３　ここまで
11490 '下の矢印
11500 '中央 2
11510 if ((y=1) or (key$ = chr$(31))) then
11520 select case No
11530 '9から６に下げる
11540 case 9:
11550 No=6:sp_on 11,1:sp_on 10,0
11560 pause 200:goto Input_Born_Day2:
11570 '6から３に下げる
11580 case 6:
11590 No=3:sp_on 12,1:sp_on 11,0
11600 pause 200:goto Input_Born_Day2:
11610 '3から０ｋに変える
11620 case 3:
11630 No=-1:sp_on 14,1:sp_on 12,0
11640 pause 200:goto Input_Born_Day2:
11650 'Okから下のボタンを押しても何もしない
11660 case -1:
11670 pause 200:goto Input_Born_Day2:
11680 case 8:
11690 No=5:sp_on 8,1:sp_on 7,0
11700 pause 200:goto Input_Born_Day2:
11710 case 5:
11720 No=2:sp_on 9,1:sp_on 8,0
11730 pause 200:goto Input_Born_Day2:
11740 case 2:
11750 No=0:sp_on 13,1:sp_on 9,0
11760 pause 200:goto Input_Born_Day2:
11770 case 0:
11780 pause 200:goto Input_Born_Day2:
11790 case 7:
11800 No=4:sp_on 5,1:sp_on 4,0
11810 pause 200:goto Input_Born_Day2:
11820 case 4:
11830 No=1:sp_on 6,1:sp_on 5,0
11840 pause 200:goto Input_Born_Day2:
11850 case 1:
11860 pause 200:goto Input_Born_Day2:
11870 end select
11880 endif
11890 '左へボタン 十字キー　左　or 　カーソル左
11900 if ((y2 = -1) or (key$ = chr$(29))) then
11910 select case No
11920 'Ok ボタン  Okから　左　０に行く
11930 case -1:
11940 No=0:sp_on 13,1:sp_on 14,0
11950 pause 200:goto Input_Born_Day2:
11960 '0 ボタン  左　何もしない
11970 case 0:
11980 pause 200:goto Input_Born_Day2:
11990 case 3:
12000 No=2:sp_on 9,1:sp_on 12,0:
12010 pause 200:goto Input_Born_Day2:
12020 case 2:
12030 No=1:sp_on 6,1:sp_on 9,0:
12040 pause 200:goto Input_Born_Day2:
12050 case 1:
12060 pause 200:goto Input_Born_Day2:
12070 case 6:
12080 No=5:sp_on 8,1:sp_on 11,0
12090 pause 200:goto Input_Born_Day2:
12100 case 5:
12110 No=4:sp_on 5,1:sp_on 8,0
12120 pause 200:goto Input_Born_Day2:
12130 case 4:
12140 pause 200:goto Input_Born_Day2:
12150 case 9:
12160 No=8:sp_on 7,1:sp_on 10,0
12170 pause 200:goto Input_Born_Day2:
12180 case 8:
12190 No=7:sp_on 4,1:sp_on 7,0
12200 pause 200:goto Input_Born_Day2:
12210 case 7:
12220 pause 200:goto Input_Born_Day2:
12230 end select
12240 endif
12250 '右  十字キー　右　or カーソル　右
12260 if ((y2 = 1) or (key$ = chr$(28))) then
12270 select case No
12280 '0ボタンからokボタン右に移動
12290 case 0:
12300 No=-1:sp_on 14,1:sp_on 13,0
12310 pause 200:goto Input_Born_Day2:
12320 '0ボタンからokボタン 右に移動　ここまで
12330 'OKボタンで右を押して何もしない
12340 case -1:
12350 pause 200:goto Input_Born_Day2:
12360 case 1:
12370 No=2:sp_on 9,1:sp_on 6,0
12380 pause 200:goto Input_Born_Day2:
12390 case 2:
12400 No=3:sp_on 12,1:sp_on 9,0
12410 pause 200:goto Input_Born_Day2:
12420 case 3:
12430 pause 200:goto Input_Born_Day2:
12440 case 4:
12450 No=5:sp_on 8,1:sp_on 5,0
12460 pause 200:goto Input_Born_Day2:
12470 case 5:
12480 No=6:sp_on 11,1:sp_on 8,0
12490 pause 200:goto Input_Born_Day2:
12500 case 7:
12510 No=8:sp_on 7,1:sp_on 4,0
12520 pause 200:goto Input_Born_Day2:
12530 case 8:
12540 No=9:sp_on 10,1:sp_on 7,0
12550 pause 200:goto Input_Born_Day2:
12560 case 9:
12570 pause 200:goto Input_Born_Day2:
12580 case 6:
12590 pause 200:goto Input_Born_Day2:
12600 end select
12610 'Okから右ボタンを押して何もしない ここまで
12620 endif
12630 '十字キー　ここまで
12640 '右の丸ボタンを押したとき
12650 if ((bg = 2) or (key$ = chr$(13))) then
12660 'count :決定ボタンを押した回数
12670 select case (count mod 3)
12680 '1桁目入力
12690 case 0:
12700 count = 1:
12710 if (No = -1) then
12720 '1桁目　OKでは何もしない
12730 'goto check:
12740 else
12750 'ok以外のボタンを押したとき
12760 buf_day = No:buf_Day$ = str$(No)
12770 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12780 locate 2,3
12790 color RGB(255,255,255)
12800 print "生まれた日(1日~31日):";buf_Day2$
12810 endif
12820 check:
12830 if (No >= 1 and No <= 9) then
12840 sp_on 14,0
12850 goto Input_Born_Day2:
12860 else
12870 sp_on 14,0
12880 goto complate:
12890 endif
12900 case 1:
12910 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12920 count = 2:
12930 'locate 2,3
12940 'color RGB(255,255,255)
12950 'print "生まれた日(1日~31日):";buf_Day$
12960 'Okボタンを押したときの処理
12970 '入力値　10未満のとき
12980 'c = buf_day
12990 if (No = -1) then
13000 'c=buf_day
13010 ' buf_day = c
13020 'buf_Day$ = str$(buf_day)
13030 '10以下のとき
13040 if (buf_day < 10) then
13050 sp_on 14,0
13060 goto complate:
13070 endif
13080 else
13090 'c = No
13100 buf_day = c * 10 + No
13110 'buf_day = c
13120 buf_Day$ =str$(buf_day)
13130 locate 2,3
13140 color Rgb(255,255,255)
13150 print "生まれた日(1日~31日):";buf_Day$
13160 goto Input_Born_Day2:
13170 endif
13180 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13190 case 2:
13200 count=0
13210 'c=val(buf_Day$)
13220 'buf_day=c*10+No
13230 'buf_Day$=str$(buf_day)
13240 'day=buf_day
13250 'locate 2,3
13260 'print "生まれた日(1日〜31日):";buf_Day$
13270 'No=-1:ok ボタンを押したとき
13280 if (No = -1) then
13290 if ((buf_day > 0) and (buf_day < 32)) then
13300 sp_on 14,0
13310 goto complate:
13320 else
13330 goto Input_Born_Day2:
13340 endif
13350 'Okボタン以外を押したとき
13360 else
13370 c=val(buf_Day$)
13380 buf_day = c * 10 + No
13390 buf_Day$ = str$(buf_day)
13400 locate 2,3
13410 print "生まれた日(1日~31日):";buf_Day$
13420 'goto Input_Born_Day2:
13430 endif
13440 case 3:
13450 count = 4
13460 c=val(buf_day$)
13470 buf_day = c * 10 + No
13480 buf_day$ = str$(buf_day)
13490 locate 2,3
13500 print "生まれた日を入れてください:";buf_Day$
13510 year = val(buf_year$)
13520 if (No = -1) then
13530 'goto Input_Born_Day:
13540 sp_on 14,0:No=0
13550 goto complate:
13560 else
13570 goto Input_Born_Month2:
13580 endif
13590 'case 4:
13600 'bufyear=buf_year
13610 'if (No=-1) then
13620 'buf_day = val(buf_day$)
13630 'bufday = buf_day
13640 'sp_on 14,0
13650 'goto complate:
13660 'else
13670 'goto Input_Born_Day2:
13680 'endif
13690 end select
13700 endif
13710 if (bg2=2) then
13720 select case count2
13730 case 0:
13740 if (No=-1) then
13750 'buf_day=0:buf_Day$="**"
13760 if (buf_day>=1 and buf_day<=31) then
13770 count=0:No=0
13780 buf_day=0:buf_Day$="**"
13790 'goto rewrite_day:
13800 else
13810 buf_day=0:buf_Day$="**"
13820 ui_msg"値が範囲外です"
13830 endif
13840 goto rewrite_day:
13850 else
13860 goto rewrite_day:
13870 endif
13880 rewrite_day:
13890 locate 2,3
13900 color rgb(255,255,255)
13910 print "                                      "
13920 locate 2,3
13930 print "生まれた日(1日~31日):";buf_Day$
13940 goto Input_Born_Day2:
13950 end select
13960 endif
13970 '--------------------------Input_Born_Day:-------------------------------------------
13980 complate:
13990 suhiNo = buf_year + buf_month + buf_day
14000 'if (suhiNo < 1000) then
14010 a1 = fix(suhiNo / 1000)
14020 a2 = fix(suhiNo/100) - (a1 * 10)
14030 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14040 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14050 'endif
14060 bufsuhiNo = a1+a2+a3+a4
14070 recomp:
14080 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14090 'bufsuhiNo=a6
14100 goto Kabara_Result_Screen:
14110 else
14120 a5 = fix(bufsuhiNo / 10)
14130 a6 = bufsuhiNo - a5 * 10
14140 bufsuhiNo = a6 + a5
14150 if (bufsuhiNo = 10) then
14160 bufsuhiNo=1
14170 endif
14180 goto Kabara_Result_Screen:
14190 endif
14200 Kabara_Result_Screen:
14210 cls 3:
14220 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14230 gload Gazo$ + "downscreen.png",0,0,800
14240 init "kb:4"
14250 '
14260 play ""
14270 select case (bufsuhiNo)
14280 case 1:
14290 play Voice$ + "Result_Kabara_1_20230607.mp3"
14300 case 2:
14310 play Voice$ + "Result_Kabara_2_20230607.mp3"
14320 case 3:
14330 play Voice$ + "Result_Kabara_3_20230607.mp3"
14340 case 4:
14350 play Voice$ + "Result_Kabara_4_20230607.mp3"
14360 case 5:
14370 play Voice$ + "Result_Kabara_5_20230607.mp3"
14380 case 6:
14390 play Voice$ + "Result_Kabara_6_20230607.mp3"
14400 case 7:
14410 play Voice$ + "Result_Kabara_7_20230607.mp3"
14420 case 8:
14430 play Voice$ + "Result_Kabara_8_20230607.mp3"
14440 case 9:
14450 play Voice$ + "Result_Kabara_9_20230607.mp3"
14460 case 11:
14470 play Voice$ + "Result_Kabara_11_20230607.mp3"
14480 case 22:
14490 play Voice$ + "Result_Kabara_22_20230607.mp3"
14500 case 33:
14510 play Voice$ + "Result_Kabara_33_20230607.mp3"
14520 end select
14530 font 48
14540 key$ = "":bg = 0:bg2=0
14550 'COLOR rgb(255,255,255)
14560 'print "●診断結果"+chr$(13)
14570 locate 0,2
14580 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14590 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14600 locate 0,15:
14610 color rgb(255,255,255)
14620 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14630 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14640 key$ = inkey$
14650 bg = strig(1)
14660 bg2 = strig(0)
14670 pause 5
14680 wend
14690 'Enter or JoyPad right
14700 if ((key$ = chr$(13)) or (bg = 2)) then
14710 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14720 endif
14730 if ((bg2=2)) then
14740 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14750 endif
14760 'suhiNo1 = fix(bufsuhiNo / 10)
14770 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14780 'bufsuhiNo = suhiNo1 + suhiNo2
14790 'goto recomp:
14800 'endif
14810 'print chr$(13)
14820 'color rgb(255,0,0)
14830 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14840 'key$ = input$(1)
14850 'if key$ = chr$(13) then goto Main_Screen:
14860 '"Menu2 占いのルール"
14870 Suhi_Rule:
14880 '数秘術占いルールの表示
14890 cls 3:play "":init"kb:4"
14900 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14910 gload Gazo$ + "downscreen.png",0,0,800
14920 'cls 3:
14930 'line (0,0) - (1500,60),rgb(0,0,255),bf
14940 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14950 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14960 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
14970 locate 0,2:Font 48
14980 print chr$(13) + chr$(13)
14990 color rgb(0,0,0)
15000 print "誕生日を単数変換します";chr$(13)
15010 print "数字の範囲:1~９,11,22,33";chr$(13)
15020 print "例:1973年11月22日の場合";chr$(13)
15030 print "1+9+7+3+11+22=53 ";chr$(13)
15040 print "→ 5 + 3 = 8" + chr$(13)
15050 print "故に8が数秘ナンバーになります";chr$(13)
15060 locate 0,15
15070 color rgb(255,255,255)
15080 print "ジョイパッドの右を押してください"
15090 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15100 '"key$ = input$(1)"
15110 '"if key$ = chr$(13) then goto Main_Screen:"
15120 suhi_rule_selection:
15130 bg = 0:key$ = "":bg2=0
15140 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15150 bg = strig(1)
15160 key$ = inkey$
15170 bg2=strig(0)
15180 pause 2
15190 wend
15200 if ((bg = 2) or (key$ = chr$(13))) then
15210 pause 200:cls 4:goto Main_Screen:
15220 endif
15230 if (bg2=2) then
15240 play "":pause 200
15250 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15260 goto suhi_rule_selection:
15270 endif
15280 '2.設定
15290 '2-1.トップ画面に戻る
15300 Setting:
15310 cls 3:init"kb:4":font 48:No=0
15320 play ""
15330 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15340 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15350 gload Gazo$ + "downscreen.png",0,0,800
15360 print chr$(13) + chr$(13) + chr$(13)
15370 color rgb(255,255,255):sp_on 0,1:
15380 print "番号を選んでください" + chr$(13)
15390 print " :1.トップ画面に戻る"+ chr$(13)
15400 print " :2.未実装" + chr$(13)
15410 print " :3.未実装" + chr$(13)
15420 print " :4.未実装" + chr$(13)
15430 color rgb(0,0,0)
15440 locate 1,15:print "1.トップ画面に戻るを選択"
15450 Setting_Selection:
15460 y=0:key$="":bg=0:bg2=0
15470 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15480 'y=stick(1)
15490 key$ = inkey$
15500 bg=strig(1)
15510 bg2 = strig(0)
15520 pause 2
15530 wend
15540 if ((bg = 2) or (key$ = chr$(13))) then
15550 select case No
15560 case 0:
15570 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15580 end select
15590 endif
15600 if (bg2 = 2) then
15610 play "":pause 200
15620 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15630 goto Setting_Selection:
15640 endif
15650 '3.Help
15660 '3-1.ルールの表示
15670 '3-2.バージョン
15680 '3-3.トップに戻る
15690 Help:
15700 cls 3:Font 48:No=0
15710 play ""
15720 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15730 gload Gazo$ + "downscreen.png",0,0,800
15740 color rgb(255,255,255)
15750 print chr$(13)+chr$(13)+chr$(13)
15760 print "番号を選んでください"+chr$(13)
15770 print " :1.ルールの表示" + chr$(13)
15780 print " :2.バージョンの表示" + chr$(13)
15790 print " :3.参考文献" + chr$(13)
15800 print " :4.トップ画面に戻る" + chr$(13)
15810 color rgb(0,0,0)
15820 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15830 locate 1,15
15840 print "                                      "
15850 locate 1,15
15860 print "1.ルールの表示を選択"
15870 init"kb:4"
15880 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15890 Help_Select:
15900 bg=0:key$="":y=0:bg2=0
15910 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15920 y = stick(1)
15930 key$ = inkey$
15940 bg = strig(1)
15950 bg2 = strig(0)
15960 pause 5
15970 wend
15980 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
15990 if ((y = 1) or (key$ = chr$(31))) then
16000 select case No
16010 case 0:
16020 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16030 case 1:
16040 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16050 case 2:
16060 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16070 case 3:
16080 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16090 end select
16100 endif
16110 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16120 if ((y = -1) or (key$ = chr$(30))) then
16130 select case No
16140 case 0:
16150 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16160 case 1:
16170 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16180 case 2:
16190 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16200 case 3:
16210 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16220 end select
16230 endif
16240 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16250 if ((bg = 2) or (key$ = chr$(13))) then
16260 select case No
16270 case 0:
16280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16290 case 1:
16300 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16310 case 2:
16320 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16330 '3:Top画面に行く
16340 case 3:
16350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16360 end select
16370 endif
16380 if (bg2 = 2) then
16390 play "":pause 200
16400 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16410 goto Help_Select:
16420 endif
16430 '数秘術占い　トップ画面
16440 Kabara_TopScreen:
16450 cls 3:play ""
16460 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16470 gload Gazo$ + "downscreen.png",0,0,800
16480 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16490 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16500 init"kb:4":No=0
16510 color rgb(255,255,255)
16520 print chr$(13)+chr$(13)+chr$(13)
16530 print "番号を選んでください" + chr$(13)
16540 print " :1.数秘術占い" + chr$(13)
16550 print " :2.バーズアイグリット" + chr$(13)
16560 print " :3.相性占い" + chr$(13)
16570 print " :4.トップ画面に戻る" + chr$(13)
16580 color rgb(0,0,0)
16590 locate 1,15:print "1.数秘術占いを選択"
16600 Kabara_TopScreen2:
16610 y = 0:bg = 0:key$ = "":bg2 = 0
16620 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16630 key$ = inkey$
16640 bg = strig(1)
16650 y = stick(1)
16660 bg2 = strig(0)
16670 pause 5
16680 wend
16690 '選択ボタン
16700 'カーソル　と　ジョイパッド　の下
16710 if ((y = 1) or (key$ = chr$(31))) then
16720 select case No
16730 case 2:
16740 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16750 case 3:
16760 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16770 case 0:
16780 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16790 case 1:
16800 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16810 end select
16820 endif
16830 'カーソル　上
16840 if ((y=-1) or (key$=chr$(30))) then
16850 select case No
16860 case 0:
16870 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16880 case 1:
16890 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16900 case 2:
16910 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16920 case 3:
16930 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16940 end select
16950 endif
16960 '決定ボタン
16970 'ジョイパッドの右　or  Enter key
16980 if ((bg = 2) or (key$ = chr$(13))) then
16990 select case No
17000 case 0:
17010 '1.数秘術占い
17020 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17030 case 3:
17040 '4.メイン画面にいく
17050 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17060 case 1:
17070 '2.バースアイグリッド
17080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
17090 case 2:
17100 '3.相性占い
17110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17120 end select
17130 endif
17140 if (bg2 = 2) then
17150 play "":pause 200
17160 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17170 goto Kabara_TopScreen2:
17180 endif
17190 '1.バースアイグリット　名入力
17200 Inputname1:
17210 cls 3:init"kb:4":font 48
17220 bg=0:key$="":y=0:No=-1
17230 gload Gazo$ + "Selection.png",1,10,100
17240 'Line 1:☓
17250 'A:選択肢
17260 sp_def 15,(50,250),16,16
17270 'B:選択肢
17280 sp_def 16,(200,250),16,16
17290 'C:選択肢
17300 sp_def 17,(350,250),16,16
17310 'D:選択肢
17320 sp_def 18,(500,250),16,16
17330 'E:選択肢
17340 sp_def 19,(630,250),16,16
17350 'F:選択肢
17360 sp_def 20,(780,250),16,16
17370 'G:選択肢
17380 sp_def 21,(930,250),16,16
17390 'Line 2:☓
17400 'H:選択肢
17410 sp_def 22,(50,345),16,16
17420 'I:選択肢
17430 sp_def 23,(200,345),16,16
17440 'J:選択肢
17450 sp_def 24,(350,345),16,16
17460 'K:選択肢
17470 sp_def 25,(500,345),16,16
17480 'L:選択肢
17490 sp_def 26,(630,345),16,16
17500 'M:選択肢
17510 sp_def 27,(780,345),16,16
17520 'N:選択肢
17530 sp_def 28,(930,345),16,16
17540 'Line 3:☓
17550 'O:選択肢
17560 sp_def 29,(50,440),16,16
17570 'P:選択肢
17580 sp_def 30,(200,440),16,16
17590 'Q:選択肢
17600 sp_def 31,(350,440),16,16
17610 'R:選択肢
17620 sp_def 32,(500,440),16,16
17630 'S:選択肢
17640 sp_def 33,(630,440),16,16
17650 'T:選択肢
17660 sp_def 34,(780,440),16,16
17670 'U:選択肢
17680 sp_def 35,(930,440),16,16
17690 'Line 4:◯
17700 'V:選択肢
17710 sp_def 36,(50,535),16,16
17720 'W:選択肢
17730 sp_def 37,(200,535),16,16
17740 'X:選択肢
17750 sp_def 38,(350,535),16,16
17760 'Y:選択肢
17770 sp_def 39,(500,535),16,16
17780 'Z:選択肢
17790 sp_def 40,(630,535),16,16
17800 'Ok:選択肢
17810 sp_def 41,(780,535),16,16
17820 'sp_def 42,(930,535),16,16
17830 'Line 1
17840 'A
17850 sp_on 15,0
17860 'B
17870 sp_on 16,0
17880 'C
17890 sp_on 17,0
17900 'D
17910 sp_on 18,0
17920 'E
17930 sp_on 19,0
17940 'F
17950 sp_on 20,0
17960 'G
17970 sp_on 21,0
17980 'Line 1
17990 'Line 2
18000 'H
18010 sp_on 22,0
18020 'I
18030 sp_on 23,0
18040 'J
18050 sp_on 24,0
18060 'K
18070 sp_on 25,0
18080 'L
18090 sp_on 26,0
18100 'M
18110 sp_on 27,0
18120 'N
18130 sp_on 28,0
18140 'Line 2
18150 'Line 3
18160 'O
18170 sp_on 29,0
18180 'P
18190 sp_on 30,0
18200 'Q
18210 sp_on 31,0
18220 'R
18230 sp_on 32,0
18240 'S
18250 sp_on 33,0
18260 'T
18270 sp_on 34,0
18280 'U
18290 sp_on 35,0
18300 'Line 3
18310 'Line 4
18320 'V
18330 sp_on 36,0
18340 'W
18350 sp_on 37,0
18360 'X
18370 sp_on 38,0
18380 'Y
18390 sp_on 39,0
18400 'Z
18410 sp_on 40,0
18420 'Ok
18430 sp_on 41,1
18440 'Line 4
18450 'sp_on 42,1
18460 'Line 1
18470 'sp_put 15,(50,250),0,0
18480 'sp_put 16,(200,250),0,0
18490 'sp_put 17,(350,250),0,0
18500 'sp_put 18,(500,250),0,0
18510 'sp_put 19,(630,250),0,0
18520 'sp_put 20,(780,250),0,0
18530 'sp_put 21,(930,250),0,0
18540 'Line 2
18550 'sp_put 22,(50,345),0,0
18560 'sp_put 23,(200,345),0,0
18570 'sp_put 24,(350,345),0,0
18580 'sp_put 25,(500,345),0,0
18590 'sp_put 26,(630,345),0,0
18600 'sp_put 27,(780,345),0,0
18610 'sp_put 28,(930,345),0,0
18620 'Line 3
18630 'sp_put 29,(50,440),0,0
18640 'sp_put 30,(200,440),0,0
18650 'sp_put 31,(350,440),0,0
18660 'sp_put 32,(500,440),0,0
18670 'sp_put 33,(630,440),0,0
18680 'sp_put 34,(780,440),0,0
18690 'sp_put 35,(930,440),0,0
18700 'Line 4
18710 'sp_put 36,(50,535),0,0
18720 'sp_put 37,(200,535),0,0
18730 'sp_put 38,(350,535),0,0
18740 'sp_put 39,(500,535),0,0
18750 'sp_put 40,(630,535),0,0
18760 sp_put 41,(780,535),0,0
18770 'sp_put 42,(930,536),0,0
18780 gload Gazo$ + "Screen1.png",0,0,0
18790 color rgb(255,255,255)
18800 locate 1,3
18810 print "名前の姓をアルファベットで入力してください"
18820 locate 1,5
18830 print " A  B  C  D  E  F  G"
18840 locate 1,7
18850 print " H  I  J  K  L  M  N"
18860 locate 1,9
18870 print " O  P  Q  R  S  T  U"
18880 locate 1,11
18890 print " V  W  X  Y  Z  Ok"
18900 locate 1,15:color rgb(0,0,0)
18910 print "実装未完全"
18920 select_name1:
18930 bg = 0:y = 0:key$ = "":y2=0:init"kb:4"
18940 '有効ボタン
18950 '1.決定ボタン(bg:2)
18960 '2.Enter Key
18970 '3.カーソル上 (chr$(31))
18980 '4.カーソル　左 (chr$(29))
18990 '5.ジョイパッド　上 (y:1)
19000 '6:ジョイパッド　左 (y2:-1)
19010 '7:ジョイパッド　下 (y:-1)
19020 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19030 key$ = inkey$
19040 'ジョイパッドの決定:bg
19050 bg = strig(1)
19060 y = stick(1)
19070 y2 = stick(0)
19080 pause 200
19090 wend
19100 '====================================
19110 'Birds Eye Grid 名前入力
19120 '入力スタイル　アルファベット入力
19130 'sp_on:　スプライトのオンオフ
19140 'sp_put :表示位置
19150 'No:ボタン番号
19160 '====================================
19170 'カーソルで下に行く
19180 if ((y=-1) or (key$=chr$(31))) then
19190 select case No
19200 '1.Ok ボタン
19210 'sp_on スプライトのオンオフ
19220 'sp_put スプライトを表示
19230 case -1:
19240 '1.アルファベット　入力ボタン
19250 '実装未完全なので終了
19260  'Ok → T ○ :No:20=T
19270  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19280  'T  → M ○
19290 case 20:
19300   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19310  'M  →　F ○
19320 case 13:
19330   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19340  'F  → Ok
19350 case 6:
19360   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19370 end select
19380 endif
19390 '2.決定ボタン
19400 if ((key$ = chr$(13)) OR  (bg = 2)) then
19410 select case No
19420 case -1:
19430      'スプライトをOFFにする
19440      sp_on 41,0
19450 end select
19460 endif
19470 '3.カーソル　左
19480 if (key$ = chr$(29) or (y2 =-1)) then
19490 select case No
19500 'Line 4
19510 'Line 4
19520 '1.
19530 'Z:-1 :Ok ボタン
19540 'Ok → Z
19550 case -1:
19560      'Ok →　Z
19570      'Ok ボタン OFF,Z Button ON
19580      'No=26:Z
19590      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19600 '2.
19610 '26:Zボタン Z→ Y
19620 case 26:
19630      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19640 '3.
19650 '25:Yボタン  Y → X
19660 case 25:
19670      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19680 '4
19690 '24:Xボタン X → W
19700 case 24:
19710      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19720 '23:Wボタン X → W
19730 '5
19740 case 23:
19750 '22:Vボタン W → V
19760      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19770 case 22:
19780 '-1:V→ Ok
19790      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19800 'Line 3
19810 case 20:
19820 '33:T34  → S:33 :◯
19830     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19840 case 19:
19850 '32:S:33 → R:32 :◯
19860     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19870 case 18:
19880 '31:R:32 → Q:31 :◯
19890     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19900 '30:O → P :◯
19910 case 17:
19920 '30:Q:31 → P:30 :◯
19930     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19940 case 16:
19950 '29:P:30 → O:29 :◯
19960     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
19970 case 15:
19980 '28:O:29 → U:21  :◯
19990  'O:OFF,U:ON
20000     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20010 '27:U:21 → T:20  :◯
20020 case 21:
20030 'U:OFF:T:ON
20040     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20050 'Line 2
20060 '26:M:13 → L:12 : ○
20070 case 13:
20080  'M:OFF,L:ON
20090    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20100 '25:L:12 → K:11 : ○
20110 case 12:
20120    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20130 '24:K:11 → J:10 : ○
20140 case 11:
20150    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20160 '23:J:10 → I:9  : ○
20170 case 10:
20180    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20190 '22:I:9 → H:8    :○
20200 case 9:
20210     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20220 '21:H:8 → N:14:   :○
20230 case 8:
20240     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20250 '20:N:14 → M:13:   :○
20260 case 14:
20270     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20280 '●.Line 1:
20290 '19:F:20 → E:19 : ☓
20300 'F:OFF,E:ON
20310 case 6:
20320     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20330 '18:E → D
20340 'E:OFF,D:ON
20350 case 5:
20360     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20370 '17:D → C
20380 'D:OFF,C:ON
20390 case 4:
20400      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20410 case 3:
20420      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20430 case 2:
20440      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20450 case 1:
20460      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20470 case 7:
20480      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20490 end select
20500 endif
20510 '上から下の方向
20520 if ((key$ = chr$(31)) or  (y = 1)) then
20530 select case No
20540 '●.1
20550 '1:A→H
20560 case 1:
20570       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20580 '2:H→O
20590 case 8:
20600       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20610 '3:O→V
20620 case 15:
20630       No=36:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20640 '4:V→A
20650 case 22:
20660      No=15:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20670 '●.2
20680 '5.B→I
20690 '6.I→P
20700 '7.P→W
20710 '8.W→B
20720 '●.3
20730 '9.C→J
20740 '10.J→Q
20750 '11.Q→X
20760 '12.X→C
20770 '●.4
20780 '13.D→K
20790 '14.K→R
20800 '15.R→Y
20810 '16.Y→D
20820 '●.5
20830 '●.6
20840 '●.7
20850 '25.G→N
20860 '26.N→U
20870 '27.U→G
20880 end select
20890 endif
20900 'gload Gazo$ + "Input_Birtheye2.png",0,0,0
20910 'color rgb(255,255,255)
20920 'locate 1,2:print "名前をアルファベットで入れてください"
20930 'color rgb(0,0,0)
20940 'locate 1,5:Input "名前（姓の部分）:",name1$
20950 '27.U→G
20960 'locate 1,5:print "Hit any key"
20970 'n1 = len(name1$)
20980 'if (n1 < 11) then
20990 'for i=1 to n1
21000 'buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21010 'next i
21020 'endif
21030 'if b$=chr$(13) then goto Inputname2:
21040 '2.グリッドアイ　姓の入力
21050 end
21060 Inputname2:
21070 cls 3:init"kb:2":font 48
21080 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21090 color rgb(255,255,255)
21100 locate 1,2:print "名前をアルファベットで入れてください"
21110 color rgb(0,0,0)
21120 locate 1,5:Input "名前(名の部分):",name2$
21130 n2 = len(name2$)
21140 for i=1 to n2
21150 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
21160 next i
21170 '計算領域
21180 Complate:
21190 'name1
21200 for i=0 to 25
21210 for n=1 to len(name1$)
21220 if (buf_chart$(i,0) = buf_name1$(n-1)) then
21230 b = val(buf_chart$(i,1))
21240 buffer(b-1) = buffer(b-1) + 1
21250 endif
21260 next n
21270 next i
21280 'name2
21290 for i=0 to 25
21300 for n=1 to len(name2$)
21310 if (buf_chart$(i,0) = buf_name2$(n-1)) then
21320 c = val(buf_chart$(i,1))
21330 buffer(c - 1) = buffer(c - 1) + 1
21340 endif
21350 next n
21360 next i
21370 '結果表示領域
21380 Result_Birtheye1:
21390 cls 3:init"kb:4":No=0
21400 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
21410 gload Gazo$ + "downscreen.png",0,0,800
21420 color rgb(255,255,255)
21430 '1の表示
21440 locate 3,14:print buffer(0);
21450 '2の表示
21460 locate 3,9:print buffer(1);
21470 '3の表示
21480 locate 3,5:print buffer(2);
21490 '4の表示
21500 locate 10,14:print buffer(3);
21510 '5の表示
21520 locate 10,9:print buffer(4);
21530 '6の表示
21540 locate 10,5:print buffer(5);
21550 '7の表示
21560 locate 15,14:print buffer(6);
21570 '8の表示
21580 locate 15,9:print buffer(7);
21590 '9の表示
21600 locate 15,5:print buffer(8);
21610 'name を大文字に変換
21620 locate 5,3:print ucase$(name1$ + name2$)
21630 color rgb(0,0,0)
21640 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
21650 bg=0:key$="":bg2=0
21660 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
21670 'Enterと決定ボタン
21680 key$ = inkey$
21690 bg = strig(1)
21700 bg2=strig(0)
21710 pause 200
21720 wend
21730 if ((bg=2) or (key$=chr$(13))) then
21740 'データーをクリアしてトップ画面に行く
21750 'for i=0 to 8
21760 'buffer(i)=0
21770 'next i
21780 'for n=0 to 9
21790 'buf_name1$(n) = ""
21800 'buf_name2$(n) = ""
21810 'next n
21820 'Topに行く
21830 'goto Main_Screen:
21840 '次へ
21850 goto BirdsEye_Result2:
21860 endif
21870 if (bg2=2) then
21880 'データーをクリアする
21890 for i=0 to 8
21900 buffer(i)=0
21910 next i
21920 for n=0 to 9
21930 buf_name1$(n)=""
21940 buf_name2$(n)=""
21950 next n
21960 goto Inputname1:
21970 endif
21980 'goto Result_Birtheye1:
21990 'Result_Birtheye2:
22000 'cls 3:color rgb(255,255,255)
22010 'end
22020 'Memory 消去
22030 '
22040 '横のフォーカスライン
22050 BirdsEye_Result2:
22060 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22070 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
22080 Forcus1_buffer$(2)="○"
22090 else
22100 Forcus1_buffer$(2)="☓"
22110 endif
22120 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
22130 Forcus1_buffer$(1)="○"
22140 else
22150 Forcus1_buffer$(1) = "☓"
22160 endif
22170 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
22180 Forcus1_buffer$(0)="○"
22190 else
22200 Forcus1_buffer$(0)="☓"
22210 endif
22220 gload Gazo$ + "Screen1.png",0,0,0
22230 color rgb(255,0,0):
22240 locate 1,1
22250 print "バーズアイグリッド(フォーカスライン1)"
22260 color rgb(255,255,255)
22270 locate 1,3:
22280 print "●.横のフォーカスライン"
22290 locate 1,5
22300 print "1.切れ者ライン:"+Forcus1_buffer$(2)
22310 locate 1,7
22320 print "2.調停者ライン:"+Forcus1_buffer$(1)
22330 locate 1,9
22340 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
22350 color rgb(0,0,0)
22360 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22370 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
22380 key$=inkey$
22390 bg=strig(1)
22400 bg2=strig(0)
22410 pause 200
22420 wend
22430 if ((bg=2) or (key$=chr$(13))) then
22440 goto BirdsEye_Result3:
22450 endif
22460 if (bg2=2) then
22470 goto Main_Screen:
22480 endif
22490 BirdsEye_Result3:
22500 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22510 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
22520 Forcus2_buffer$(2)="○"
22530 else
22540 Forcus2_buffer$(2)="☓"
22550 endif
22560 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
22570 Forcus2_buffer$(1)="○"
22580 else
22590 Forcus2_buffer$(1) = "☓"
22600 endif
22610 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
22620 Forcus2_buffer$(0)="○"
22630 else
22640 Forcus2_buffer$(0)="☓"
22650 endif
22660 gload Gazo$ + "Screen1.png",0,0,0
22670 color rgb(255,0,0):
22680 locate 1,1
22690 print "バーズアイグリッド(フォーカスライン2)"
22700 color rgb(255,255,255)
22710 locate 1,3:
22720 print "●.縦のフォーカスライン"
22730 locate 1,5
22740 print "1.表現者ライン:" + Forcus2_buffer$(2)
22750 locate 1,7
22760 print "2.司令塔ライン:" + Forcus2_buffer$(1)
22770 locate 1,9
22780 print "3.指導者ライン:" + Forcus2_buffer$(0)
22790 color rgb(0,0,0)
22800 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22810 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
22820 key$=inkey$
22830 bg=strig(1)
22840 bg2=strig(0)
22850 pause 200
22860 wend
22870 if ((bg = 2) or (key$ = chr$(13))) then
22880 goto BirdsEye_Result4:
22890 endif
22900 if (bg2=2) then
22910 goto Main_Screen:
22920 endif
22930 BirdsEye_Result4:
22940 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
22950 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
22960 Forcus3_buffer$(1) = "○"
22970 else
22980 Forcus3_buffer$(1) = "☓"
22990 endif
23000 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23010 Forcus3_buffer$(0) = "○"
23020 else
23030 Forcus3_buffer$(0) = "☓"
23040 endif
23050 gload Gazo$ + "Screen1.png",0,0,0
23060 color rgb(255,0,0):
23070 locate 1,1
23080 print "バーズアイグリッド(フォーカスライン3)"
23090 color rgb(255,255,255)
23100 locate 1,3:
23110 print "●.斜めのフォーカスライン"
23120 locate 1,5
23130 print "1.成功者ライン:"+Forcus3_buffer$(1)
23140 locate 1,7
23150 print "2.セレブライン:"+Forcus3_buffer$(0)
23160 color rgb(0,0,0)
23170 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
23180 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23190 key$ = inkey$
23200 bg = strig(1)
23210 bg2 = strig(0)
23220 pause 200
23230 wend
23240 if ((bg=2) or (key$=chr$(13))) then
23250  goto Result_Birtheye1:
23260 endif
23270 if (bg2=2) then
23280 'データークリア
23290 for i=0 to 8
23300  buffer(i) = 0
23310 next i
23320  goto Main_Screen:
23330 endif
23340 References1:
23350 cls 3:key$ = "":bg = 0:play "":font 48-16
23360 gload Gazo$ + "Reference1_20230703.png",0,0,0
23370 print chr$(13)+chr$(13)+chr$(13)
23380 color rgb(0,0,0)
23390 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
23400 print "Author:carol Adrinne,PhD"+chr$(13)
23410 print "出版社:幻冬舎" + chr$(13)
23420 print "HP:www.carolAdrienne.jp/"+chr$(13)
23430 print "ISBN:978-4-344-01394-0"+chr$(13)
23440 print "定価:1500円 + 税"+chr$(13)
23450 color rgb(255,255,255)
23460 locate 1,23
23470 print "ジョイパッド右：次へ"
23480 while (key$ <> chr$(13) and bg <> 2)
23490 bg = strig(1)
23500 key$ = inkey$
23510 wend
23520 '
23530 if ((bg = 2) or (key$ = chr$(13))) then
23540 pause 200:goto References2:
23550 endif
23560 'ユダヤの秘儀 カバラ大占術
23570 References2:
23580 cls 3:play "":bg = 0:key$ = ""
23590 gload Gazo$ + "Reference2_20230703.png",0,0,0
23600 '参考文献２
23610 'カバラ大占術
23620 print chr$(13) + chr$(13) + chr$(13)
23630 color  rgb(0,0,0):font 48-16
23640 locate 1,3
23650 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
23660 print "著者：浅野　八郎" + chr$(13)
23670 print "出版社:NON BOOK" + chr$(13)
23680 print "ISBN:4-396-10364-6" + chr$(13)
23690 print "定価:829円 + 税"
23700 color rgb(255,255,255)
23710 locate 1,23
23720 print "ジョイパッド右：トップへ行く"
23730 while ((key$ <> chr$(13)) and (bg <> 2))
23740 bg = strig(1)
23750 key$ = inkey$
23760 wend
23770 if ((bg = 2) or (key$ = chr$(13))) then
23780 pause 200:goto Main_Screen:
23790 endif
23800 end
23810 '1.数秘術　トップ画面
23820 Kabara_First_Top:
23830 cls 3:color rgb(255,255,255):play ""
23840 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
23850 gload Gazo$ + "downscreen.png",0,0,800
23860 No=0:init"kb:4"
23870 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
23880 print chr$(13);chr$(13)
23890 color rgb(255,255,255)
23900 locate 3,4:No=0
23910 print "番号選んでください" + chr$(13)
23920 print " :1.数秘術占い" + chr$(13)
23930 print " :2.トップ画面に戻る" + chr$(13)
23940 color rgb(0,0,0)
23950 sp_on 0,1
23960 locate 1,15:print "1.数秘術番号を求めるを選択"
23970 'KeyBord:true
23980 'Joy Pad:true
23990 '上、下:true
24000 '
24010 'ｂｇ：決定ボタン
24020 'カーソル　上
24030 'カーソル　下
24040 Kabara_First_Top2:
24050 key$ = "":bg = 0:y = 0:
24060 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
24070 key$ = inkey$
24080 bg = strig(1)
24090 y = stick(1)
24100 'PauseでCPUを休める
24110 pause 5
24120 wend
24130 '1.カーソル　下 処理 chr$(31)
24140 'カーソル　下
24150 if ((key$ = chr$(31)) or (y = 1)) then
24160 select case No
24170 '
24180 case 1:
24190 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
24200 case 0:
24210 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24220 'case 2:
24230 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
24240 end select
24250 endif
24260 '2.カーソル　上 処理 chr$(30)
24270 if ((key$ = chr$(30)) or (y = -1)) then
24280 select case No
24290 case 0:
24300 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24310 case 1:
24320 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
24330 'case 2:
24340 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
24350 end select
24360 endif
24370 '3.決定 処理  bg:2 or Enter key:chr$(13)
24380 if ((bg = 2) or (key$ = chr$(13))) then
24390 select case No
24400 case 0:
24410 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
24420 goto Kabara_TopScreen:
24430 'case 1:
24440 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
24450 case 1:
24460 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
24470 end select
24480 endif
24490 '
24500 'Kabara 相性占い トップ画面
24510 Kabara_Aishou_Top:
24520 cls 3:y=0:key$="":bg=0:No=0
24530 play ""
24540 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
24550 gload Gazo$ + "downscreen.png",0,0,800
24560 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
24570 print chr$(13) + chr$(13)
24580 locate 0,4:color rgb(255,255,255)
24590 'print "Ok"
24600 '
24610 print "番号を選んでください" + chr$(13)
24620 print " :1.男女2人の相性(未実装)" + chr$(13)
24630 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
24640 print " :3.トップ画面に戻る" + chr$(13)
24650 sp_on 0,1:sp_on 1,0:sp_on 2,0
24660 color rgb(0,0,0)
24670 locate 1,15:print "1.男女2人の相性占いを選択"
24680 Kabara_Aishou_Top2:
24690 key$ = "":y = 0:bg = 0:
24700 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
24710 'ジョイパッド(右) ,十字キー (上下)
24720 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
24730 y = stick(1)
24740 key$ = inkey$
24750 bg = strig(1)
24760 pause 5
24770 wend
24780 'カーソル　下 or 十字キー　下
24790 if ((key$ = chr$(31)) or (y = 1)) then
24800 select case No
24810 '選択肢　1 - 2に変更
24820 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
24830 'ok
24840 case 0:
24850 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
24860 '選択肢　2 - 3に変更
24870 case 1:
24880 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
24890 'リリース時 case 2コメント解除
24900 case 2:
24910 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
24920 case else:
24930 goto Kabara_Aishou_Top2:
24940 end select
24950 endif
24960 '十字キー　上　、カーソル　上
24970 if ((key$ = chr$(30)) or (y = -1)) then
24980 select case No
24990 case 0:
25000 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25010 case 1:
25020 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
25030 case 2:
25040 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25050 case else:
25060 goto Kabara_Aishou_Top2:
25070 end select
25080 endif
25090 '十字キー　上下:選択
25100 'ジョイパッド 右:決定
25110 if ((bg = 2) or (key$ = chr$(13))) then
25120 select case No
25130 '1.男女の相性
25140 case 0:
25150 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
25160 '2ビジネスの相性
25170 case 1:
25180 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
25190 case 2:
25200 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
25210 end select
25220 endif
25230 'ビジネスの相性　
25240 '1.1人目のビジネスの相性　名前入力　1人目
25250 Business_Aishou_Input_1_parson:
25260 No=0:color RGB(255,255,255)
25270 cls 3:init "kb:2"
25280 gload Gazo$ + "Screen1.png",0,0,0
25290 gload Gazo$ + "downscreen.png",0,0,800
25300 play "":color rgb(255,0,0):name$ = ""
25310 locate 0,1
25320 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
25330 color rgb(255,255,255):
25340 locate 0,3
25350 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
25360 print "入れてください" + chr$(13)
25370 locate 0,15:color rgb(0,0,0)
25380 Input "1人目の名前:",name$
25390 'color rgb(0,0,0)
25400 'locate 0,13:print "                                     "
25410 'locate 0,13:print "1人目の名前を入力してエンターキー":
25420 'buffer_name$(0):1人目の名前
25430 buffer_name$(0) = name$:
25440 goto Business_Aishou_Input_2_Parson:
25450 '2.2人目のビジネスの相性 名前入力 2人目
25460 Business_Aishou_Input_2_Parson:
25470 cls 3:init "kb:2":name$ = "":No=0
25480 gload Gazo$ + "Screen1.png",0,0,0
25490 gload Gazo$ + "downscreen.png",0,0,800
25500 color rgb(255,0,0)
25510 'Title
25520 locate 0,1
25530 print "ビジネスの相性　2人目"
25540 locate 0,3
25550 color rgb(255,255,255)
25560 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
25570 print "入れてください" + chr$(13)
25580 locate 0,15:color rgb(0,0,0)
25590 Input "2人目の名前:",name$
25600 'color rgb(0,0,0)
25610 'locate 0,15:print "                                              "
25620 'locate 0,15:print "2人目の名前を入力してエンター ":
25630 '2人目
25640 '2人目の名前を入れるに代入
25650 buffer_name$(1) = name$:
25660 goto Select_jyoushi:
25670 '3.上司の選択
25680 Select_jyoushi:
25690 cls 3:gload Gazo$ + "Screen1.png",0,0,0
25700 gload Gazo$ + "downscreen.png",0,0,800
25710 init "kb:4":No=0
25720 color rgb(0,0,255)
25730 locate 1,1
25740 print "上司の選択"
25750 color rgb(255,255,255)
25760 locate 0,4:print "名前から上司の方を選んでください"
25770 locate 0,6
25780 print " :";buffer_name$(0);"が上 司";chr$(13)
25790 locate 0,8
25800 print " :";buffer_name$(1);"が上 司";chr$(13)
25810 locate 0,15:
25820 print "                                     "
25830 locate 0,15:color rgb(0,0,0)
25840 print "上司の方を選んで右の丸ボタン"
25850 sp_on 0,1:sp_on 1,0:sp_on 2,0
25860 Select_jyoushi2:
25870 'ここでNo=0をおいてはいけない
25880 y=0:key$="":bg=0:
25890 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
25900 y = stick(1)
25910 key$ = inkey$
25920 bg = strig(1)
25930 pause 5
25940 wend
25950 '1.カーソル下の処理　or 十字キーの下処理
25960 if ((key$ = chr$(31)) or (y = 1)) then
25970 select case No
25980 case 0:
25990 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26000 case 1:
26010 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26020 end select
26030 endif
26040 '2.カーソル上処理　or 十字キーの上の処理
26050 if ((key$ = chr$(30)) or (y = -1)) then
26060 select case No
26070 case 0:
26080 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
26090 case 1:
26100 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
26110 end select
26120 endif
26130 if ((key$ = chr$(13)) or (bg = 2)) then
26140 select case No
26150 case 0:
26160 '上司(name1)を配列に代入
26170 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26180 case 1:
26190 '上司（name2)を配列に代入
26200 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26210 end select
26220 endif
26230 '3.決定ボタン　Enter or 右の丸ボタン
26240 '1.誕生日入力
26250 '1-1.生まれた年を入力
26260 'Jyoushi_born_year:
26270 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
26280 '---------------------------------------------'
26290 '誕生日入力(生れた年代)
26300 Jyoushi_Input_Seireki:
26310 'buf_Jyoushi_Born_Year:上司の生まれた年代
26320 'buf_Jyoushi_Born_Day(0) = born_year
26330 cls 3:play "":count=0:count2=0
26340 init"kb:4"
26350 'No=-1:Okのとき
26360 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
26370 for i=0 to 3
26380 buf_Jyoushi_Born_Day(i)=0
26390 next i
26400 gload Gazo$ + "Screen1.png",0,0,0
26410 gload Gazo$ + "downscreen.png",0,0,800
26420 'Init"kb:2"
26430 '音声ファイル再生 2023.06.07
26440 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
26450 font 48
26460 locate 0,1
26470 '文字色：黒　 color rgb(0,0,0)
26480 color rgb(255,255,255)
26490 print "上司の生まれた年代を入れて下さい" + chr$(13)
26500 color rgb(255,255,255)
26510 locate 1,3
26520 print "上司の生まれた年代(西暦4桁):";buf_year$
26530 color rgb(255,255,255)
26540 'locate 4,6:print ":7"
26550 'locate 9,6:print ":8"
26560 'locate 12,6:print ":9"
26570 locate 4,6
26580 print ":7  :8  :9" + chr$(13)
26590 color rgb(255,255,255)
26600 locate 4,8
26610 print ":4  :5  :6" + chr$(13)
26620 color rgb(255,255,255)
26630 locate 4,10
26640 print ":1  :2  :3" + chr$(13)
26650 locate 4,12
26660 print "    :0"
26670 locate 12,12
26680 color rgb(0,0,255)
26690 print ":Ok"
26700 sp_on 4,0: sp_on 5,0:sp_on 6,0
26710 sp_on 7,0:sp_on 8,0:sp_on 9,0
26720 sp_on 10,0:sp_on 11,0:sp_on 12,0
26730 sp_on 13,0:sp_on 14,1
26740 Jyoushi_Input_Seireki2:
26750 key$="":bg=0:y=0:y2=0:bg2=0:
26760 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
26770 key$ = inkey$
26780 bg = strig(1)
26790 y = stick(1)
26800 y2 = stick(0)
26810 bg2=strig(0)
26820 pause 5
26830 wend
26840 '十字キー　ここから
26850 '上の矢印　または、十字キー上
26860 if ((y = -1) or (key$ = chr$(30))) then
26870 select case No
26880 'No=-1:okのとき:初期の状態
26890 '0kボタンから３に移動
26900 '上に行く 処理
26910 case -1:
26920 No=3:sp_on 12,1:sp_on 14,0
26930 pause 200:goto Jyoushi_Input_Seireki2:
26940 '選択肢:3
26950 '3ボタンから 6に移動
26960 case 3:
26970 No=6:sp_on 12,0:sp_on 11,1
26980 pause 200:goto Jyoushi_Input_Seireki2:
26990 '6ボタンから ９に移動
27000 case 6:
27010 No=9:sp_on 10,1:sp_on 11,0
27020 pause 200:goto Jyoushi_Input_Seireki2:
27030 '6ボタンから ９に移動　ここまで
27040 '9で上を押して何もしない
27050 case 9:
27060 '何もしない
27070 No=9
27080 pause 200:goto Jyoushi_Input_Seireki2:
27090 '9で上を押しても何もしない　ここまで
27100 '上　 0ボタンから2ボタン
27110 'sp_on 6,1:1
27120 'sp_on 8,1:5
27130 'sp_on 7,1:7
27140 case 0:
27150 No=2:sp_on 13,0:sp_on 9,1:
27160 pause 200:goto Jyoushi_Input_Seireki2:
27170 '上  0ボタンから2ボタン　ここまで
27180 '2から５になる 上
27190 case 2:
27200 No=5:sp_on 8,1:sp_on 9,0:
27210 pause 200:goto Jyoushi_Input_Seireki2:
27220 case 5:
27230 No=8:sp_on 7,1:sp_on 8,0
27240 pause 200:goto Jyoushi_Input_Seireki2:
27250 case 8:
27260 pause 200:goto Jyoushi_Input_Seireki2:
27270 case 1:
27280 No=4:sp_on 5,1:sp_on 6,0
27290 pause 200:goto Jyoushi_Input_Seireki2:
27300 case 4:
27310 No=7:sp_on 4,1:sp_on 5,0
27320 pause 200:goto Jyoushi_Input_Seireki2:
27330 case 7:
27340 pause 200:goto Jyoushi_Input_Seireki2:
27350 end select
27360 endif
27370 '左３　ここまで
27380 '下の矢印
27390 '中央 2
27400 if ((y=1) or (key$ = chr$(31))) then
27410 select case No
27420 '9から６に下げる
27430 case 9:
27440 No=6:sp_on 11,1:sp_on 10,0
27450 pause 200:goto Jyoushi_Input_Seireki2:
27460 '6から３に下げる
27470 case 6:
27480 No=3:sp_on 12,1:sp_on 11,0
27490 pause 200:goto Jyoushi_Input_Seireki2:
27500 '3から０ｋに変える
27510 case 3:
27520 No=-1:sp_on 14,1:sp_on 12,0
27530 pause 200:goto Jyoushi_Input_Seireki2:
27540 'Okから下のボタンを押しても何もしない
27550 case -1:
27560 pause 200:goto Jyoushi_Input_Seireki2:
27570 case 8:
27580 No=5:sp_on 8,1:sp_on 7,0
27590 pause 200:goto Jyoushi_Input_Seireki2:
27600 case 5:
27610 No=2:sp_on 9,1:sp_on 8,0
27620 pause 200:goto Jyoushi_Input_Seireki2:
27630 case 2:
27640 No=0:sp_on 13,1:sp_on 9,0
27650 pause 200:goto Jyoushi_Input_Seireki2:
27660 case 0:
27670 pause 200:goto Jyoushi_Input_Seireki2:
27680 case 7:
27690 No=4:sp_on 5,1:sp_on 4,0
27700 pause 200:goto Jyoushi_Input_Seireki2:
27710 case 4:
27720 No=1:sp_on 6,1:sp_on 5,0
27730 pause 200:goto Jyoushi_Input_Seireki2:
27740 case 1:
27750 pause 200:goto Jyoushi_Input_Seireki2:
27760 end select
27770 endif
27780 '左へボタン 十字キー　左　or 　カーソル左
27790 if ((y2 = -1) or (key$ = chr$(29))) then
27800 select case No
27810 'Ok ボタン  Okから　左　０に行く
27820 case -1:
27830 No=0:sp_on 13,1:sp_on 14,0
27840 pause 200:goto Jyoushi_Input_Seireki2:
27850 '0 ボタン  左　何もしない
27860 case 0:
27870 pause 200:goto Jyoushi_Input_Seireki2:
27880 case 3:
27890 No=2:sp_on 9,1:sp_on 12,0:
27900 pause 200:goto Jyoushi_Input_Seireki2:
27910 case 2:
27920 No=1:sp_on 6,1:sp_on 9,0:
27930 pause 200:goto Jyoushi_Input_Seireki2:
27940 case 1:
27950 pause 200:goto Jyoushi_Input_Seireki2:
27960 case 6:
27970 No=5:sp_on 8,1:sp_on 11,0
27980 pause 200:goto Jyoushi_Input_Seireki2:
27990 case 5:
28000 No=4:sp_on 5,1:sp_on 8,0
28010 pause 200:goto Jyoushi_Input_Seireki2:
28020 case 4:
28030 pause 200:goto Jyoushi_Input_Seireki2:
28040 case 9:
28050 No=8:sp_on 7,1:sp_on 10,0
28060 pause 200:goto Jyoushi_Input_Seireki2:
28070 case 8:
28080 No=7:sp_on 4,1:sp_on 7,0
28090 pause 200:goto Jyoushi_Input_Seireki2:
28100 case 7:
28110 pause 200:goto Jyoushi_Input_Seireki2:
28120 end select
28130 endif
28140 '右  十字キー　右　or カーソル　右
28150 if ((y2 = 1) or (key$ = chr$(28))) then
28160 select case No
28170 '0ボタンからokボタン右に移動
28180 case 0:
28190 No=-1:sp_on 14,1:sp_on 13,0
28200 pause 200:goto Jyoushi_Input_Seireki2:
28210 '0ボタンからokボタン 右に移動　ここまで
28220 'OKボタンで右を押して何もしない
28230 case -1:
28240 pause 200:goto Jyoushi_Input_Seireki2:
28250 case 1:
28260 No=2:sp_on 9,1:sp_on 6,0
28270 pause 200:goto Jyoushi_Input_Seireki2:
28280 case 2:
28290 No=3:sp_on 12,1:sp_on 9,0
28300 pause 200:goto Jyoushi_Input_Seireki2:
28310 case 3:
28320 pause 200:goto Jyoushi_Input_Seireki2:
28330 case 4:
28340 No=5:sp_on 8,1:sp_on 5,0
28350 pause 200:goto Jyoushi_Input_Seireki2:
28360 case 5:
28370 No=6:sp_on 11,1:sp_on 8,0
28380 pause 200:goto Jyoushi_Input_Seireki2:
28390 case 7:
28400 No=8:sp_on 7,1:sp_on 4,0
28410 pause 200:goto Jyoushi_Input_Seireki2:
28420 case 8:
28430 No=9:sp_on 10,1:sp_on 7,0
28440 pause 200:goto Jyoushi_Input_Seireki2:
28450 case 9:
28460 pause 200:goto Jyoushi_Input_Seireki2:
28470 case 6:
28480 pause 200:goto Jyoushi_Input_Seireki2:
28490 end select
28500 'Okから右ボタンを押して何もしない ここまで
28510 endif
28520 '十字キー　ここまで
28530 '==============================
28540 'ここから
28550 '==============================
28560 if ((bg=2) or (key$=chr$(13))) then
28570 select case count
28580 case 0:
28590 count = 1
28600 if (No=-1) then
28610 count = 0:No=0
28620 buf_Jyoushi_Born_Day(0) = No
28630 'Okボタンを押したとき
28640 goto Jyoushi_Input_Seireki2:
28650 else
28660 'Okボタン以外が押されたとき
28670 if (No>=1 and No<=2) then
28680 buf_year$="":buf_year$=str$(No) + "***"
28690 buf_year = No:a= No
28700 buf_Jyoushi_Born_Day(0) = No
28710 locate 1,3
28720 color rgb(255,255,255)
28730 print "上司の生まれた年代(西暦4桁):";buf_year$
28740 goto Jyoushi_Input_Seireki2:
28750 else
28760 count=0
28770 ui_msg"数字が範囲外になります。"
28780 buf_year$="":buf_year=0
28790 goto Jyoushi_Input_Seireki2:
28800 endif
28810 endif
28820 case 1:
28830 count = 2
28840 if (No = -1) then
28850 count = 1
28860 goto Jyoushi_Input_Seireki2:
28870 else
28880 buf_year = a * 10 + No
28890 b=buf_year
28900 buf_year$ = str$(buf_year) + "**"
28910 buf_Jyoushi_Born_Day(0)=buf_year
28920 locate 1,3
28930 color rgb(255,255,255)
28940 print "                                                                "
28950 locate 1,3
28960 print "上司の生まれた年代(西暦4桁):" + buf_year$
28970 'if (No = -1) then
28980 'count=1
28990 goto Jyoushi_Input_Seireki2:
29000 endif
29010 case 2:
29020 count=3
29030 if (No=-1) then
29040 count =2
29050 goto Jyoushi_Input_Seireki2:
29060 else
29070 buf_year = b * 10 + No
29080 c=buf_year
29090 buf_year$ = str$(buf_year) + "*"
29100 buf_Jyoushi_Born_Day(0) = buf_year
29110 locate 1,3
29120 color rgb(255,255,255)
29130 print "                                        "
29140 locate 1,3
29150 print "上司の生まれた年代(西暦4桁):";buf_year$
29160 goto Jyoushi_Input_Seireki2:
29170 endif
29180 case 3:
29190 count=4
29200 if (No = -1) then
29210 No=0
29220 goto Jyoushi_Input_Seireki2:
29230 else
29240 buf_year = c * 10 + No
29250 buf_year$ = str$(buf_year)
29260 buf_Jyoushi_Born_Day(0) = buf_year
29270 locate 1,3
29280 color RGB(255,255,255)
29290 print "                                      "
29300 locate 1,3
29310 print "上司の生まれた年代(西暦4桁):";buf_year$
29320 buf_year=val(buf_year$)
29330 'year=val(buf_year$)
29340 'if (No=-1) then
29350 'goto Input_Born_Month:
29360 'else
29370 goto Jyoushi_Input_Seireki2:
29380 endif
29390 case 4:
29400 'bufyear=buf_year
29410 if (No=-1) then
29420 buf_year = val(buf_year$)
29430 buf_Jyoushi_Born_Day(0)=buf_year
29440 sp_on 14,0:No=0
29450 goto Jyoushi_Input_Born_Month:
29460 else
29470 goto Jyoushi_Input_Seireki2:
29480 endif
29490 end select
29500 endif
29510 '===========================
29520 'ここまでを部下のところにコピーする.
29530 '===========================
29540 if (bg2 = 2) then
29550 select case count2
29560 case 0:
29570 if (No = -1) then
29580 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
29590 count=0
29600 locate 1,3
29610 color rgb(255,255,255)
29620 print "                                      "
29630 locate 1,3
29640 print "上司の生まれた年代（西暦4桁):" + buf_year$
29650 goto Jyoushi_Input_Seireki2:
29660 else
29670 '(buf_year=0) then
29680 buf_year=0:buf_year$="****"
29690 locate 1,3
29700 print "                                       "
29710 locate 1,3
29720 print "上司の生まれた年代(西暦4桁):"+buf_year$
29730 goto Jyoushi_Input_Seireki2:
29740 'endif
29750 endif
29760 end select
29770 endif
29780 'Input"上司の生れた年代(4桁,〜2025年):",year
29790 'if year > 2025 then goto Jyoushi_Input_Seireki:
29800 'if year = 123 then cls 3:cls 4:goto Main_Screen:
29810 '"4桁目"
29820 'bufyear4 = fix(year / 1000)
29830 '"3桁目"
29840 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
29850 '"2桁目"
29860 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
29870 '"1桁目"
29880 'bufyear1 = fix((year - ((bufyear4*
29890 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
29900 '2.生まれた月を入力
29910 Jyoushi_Input_Born_Month:
29920 cls 3:play "":count=0:count2=0
29930 'No=-1:Okのとき
29940 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
29950 for i=0 to 1
29960 buf_month(i)=0
29970 next i
29980 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
29990 gload Gazo$ + "Screen1.png",0,0,0
30000 gload Gazo$ + "downscreen.png",0,0,800
30010 'Init"kb:4"
30020 '音声ファイル再生 2023.06.07
30030 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30040 font 48
30050 locate 0,1
30060 '文字色：黒　 color rgb(0,0,0)
30070 '文字色:白
30080 color rgb(255,255,255)
30090 print "上司の生まれた月を入れて下さい" + chr$(13)
30100 '文字色:白
30110 color rgb(255,255,255)
30120 locate 1,3
30130 '文字色:白
30140 print "上司の生まれた月(1月~12月):"+buf_Month$
30150 color rgb(255,255,255)
30160 'locate 4,6:print ":7"
30170 'locate 9,6:print ":8"
30180 'locate 12,6:print ":9"
30190 locate 4,6
30200 '文字色:赤
30210 print ":7  :8  :9" + chr$(13)
30220 color rgb(255,255,255)
30230 locate 4,8
30240 print ":4  :5  :6" + chr$(13)
30250 color rgb(255,255,255)
30260 locate 4,10
30270 print ":1  :2  :3" + chr$(13)
30280 locate 4,12
30290 print "    :0"
30300 locate 12,12
30310 color rgb(0,0,255)
30320 print ":Ok"
30330 sp_on 4,0: sp_on 5,0:sp_on 6,0
30340 sp_on 7,0:sp_on 8,0:sp_on 9,0
30350 sp_on 10,0:sp_on 11,0:sp_on 12,0
30360 sp_on 13,0:sp_on 14,1
30370 Jyoushi_Input_Born_Month2:
30380 key$="":bg=0:y=0:y2=0:bg2=0
30390 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
30400 key$ = inkey$
30410 bg = strig(1)
30420 y = stick(1)
30430 y2 = stick(0)
30440 bg2 = strig(0)
30450 pause 5
30460 wend
30470 '十字キー　ここから
30480 '上の矢印　または、十字キー上
30490 if ((y = -1) or (key$ = chr$(30))) then
30500 select case No
30510 'No=-1:okのとき:初期の状態
30520 '0kボタンから３に移動
30530 '上に行く 処理
30540 case -1:
30550 No=3:sp_on 12,1:sp_on 14,0
30560 pause 200:goto Jyoushi_Input_Born_Month2:
30570 '選択肢:3
30580 '3ボタンから 6に移動
30590 case 3:
30600 No=6:sp_on 12,0:sp_on 11,1
30610 pause 200:goto Jyoushi_Input_Born_Month2:
30620 '6ボタンから ９に移動
30630 case 6:
30640 No=9:sp_on 10,1:sp_on 11,0
30650 pause 200:goto Jyoushi_Input_Born_Month2:
30660 '6ボタンから ９に移動　ここまで
30670 '9で上を押して何もしない
30680 case 9:
30690 '何もしない
30700 No=9
30710 pause 200:goto Jyoushi_Input_Born_Month2:
30720 '9で上を押しても何もしない　ここまで
30730 '上　 0ボタンから2ボタン
30740 'sp_on 6,1:1
30750 'sp_on 8,1:5
30760 'sp_on 7,1:7
30770 case 0:
30780 No=2:sp_on 13,0:sp_on 9,1:
30790 pause 200:goto Jyoushi_Input_Born_Month2:
30800 '上  0ボタンから2ボタン　ここまで
30810 '2から５になる 上
30820 case 2:
30830 No=5:sp_on 8,1:sp_on 9,0:
30840 pause 200:goto Jyoushi_Input_Born_Month2:
30850 case 5:
30860 No=8:sp_on 7,1:sp_on 8,0
30870 pause 200:goto Jyoushi_Input_Born_Month2:
30880 case 8:
30890 pause 200:goto Input_Born_Month2:
30900 case 1:
30910 No=4:sp_on 5,1:sp_on 6,0
30920 pause 200:goto Jyoushi_Input_Born_Month2:
30930 case 4:
30940 No=7:sp_on 4,1:sp_on 5,0
30950 pause 200:goto Jyoushi_Input_Born_Month2:
30960 case 7:
30970 pause 200:goto Input_Born_Month2:
30980 end select
30990 endif
31000 '左３　ここまで
31010 '下の矢印
31020 '中央 2
31030 if ((y=1) or (key$ = chr$(31))) then
31040 select case No
31050 '9から６に下げる
31060 case 9:
31070 No=6:sp_on 11,1:sp_on 10,0
31080 pause 200:goto Jyoushi_Input_Born_Month2:
31090 '6から３に下げる
31100 case 6:
31110 No=3:sp_on 12,1:sp_on 11,0
31120 pause 200:goto Jyoushi_Input_Born_Month2:
31130 '3から０ｋに変える
31140 case 3:
31150 No=-1:sp_on 14,1:sp_on 12,0
31160 pause 200:goto Jyoushi_Input_Born_Month2:
31170 'Okから下のボタンを押しても何もしない
31180 case -1:
31190 pause 200:goto Jyoushi_Input_Born_Month2:
31200 case 8:
31210 No=5:sp_on 8,1:sp_on 7,0
31220 pause 200:goto Jyoushi_Input_Born_Month2:
31230 case 5:
31240 No=2:sp_on 9,1:sp_on 8,0
31250 pause 200:goto Jyoushi_Input_Born_Month2:
31260 case 2:
31270 No=0:sp_on 13,1:sp_on 9,0
31280 pause 200:goto Jyoushi_Input_Born_Month2:
31290 case 0:
31300 pause 200:goto Jyoushi_Input_Born_Month2:
31310 case 7:
31320 No=4:sp_on 5,1:sp_on 4,0
31330 pause 200:goto Jyoushi_Input_Born_Month2:
31340 case 4:
31350 No=1:sp_on 6,1:sp_on 5,0
31360 pause 200:goto Jyoushi_Input_Born_Month2:
31370 case 1:
31380 pause 200:goto Jyoushi_Input_Born_Month2:
31390 end select
31400 endif
31410 '左へボタン 十字キー　左　or 　カーソル左
31420 if ((y2 = -1) or (key$ = chr$(29))) then
31430 select case No
31440 'Ok ボタン  Okから　左　０に行く
31450 case -1:
31460 No=0:sp_on 13,1:sp_on 14,0
31470 pause 200:goto Jyoushi_Input_Born_Month2:
31480 '0 ボタン  左　何もしない
31490 case 0:
31500 pause 200:goto Jyoushi_Input_Born_Month2:
31510 case 3:
31520 No=2:sp_on 9,1:sp_on 12,0:
31530 pause 200:goto Jyoushi_Input_Born_Month2:
31540 case 2:
31550 No=1:sp_on 6,1:sp_on 9,0:
31560 pause 200:goto Jyoushi_Input_Born_Month2:
31570 case 1:
31580 pause 200:goto Jyoushi_Input_Born_Month2:
31590 case 6:
31600 No=5:sp_on 8,1:sp_on 11,0
31610 pause 200:goto Jyoushi_Input_Born_Month2:
31620 case 5:
31630 No=4:sp_on 5,1:sp_on 8,0
31640 pause 200:goto Jyoushi_Input_Born_Month2:
31650 case 4:
31660 pause 200:goto Jyoushi_Input_Born_Month2:
31670 case 9:
31680 No=8:sp_on 7,1:sp_on 10,0
31690 pause 200:goto Input_Born_Month2:
31700 case 8:
31710 No=7:sp_on 4,1:sp_on 7,0
31720 pause 200:goto Jyoushi_Input_Born_Month2:
31730 case 7:
31740 pause 200:goto Jyoushi_Input_Born_Month2:
31750 end select
31760 endif
31770 '右  十字キー　右　or カーソル　右
31780 if ((y2 = 1) or (key$ = chr$(28))) then
31790 select case No
31800 '0ボタンからokボタン右に移動
31810 case 0:
31820 No=-1:sp_on 14,1:sp_on 13,0
31830 pause 200:goto Jyoushi_Input_Born_Month2:
31840 '0ボタンからokボタン 右に移動　ここまで
31850 'OKボタンで右を押して何もしない
31860 case -1:
31870 pause 200:goto Jyoushi_Input_Born_Month2:
31880 case 1:
31890 No=2:sp_on 9,1:sp_on 6,0
31900 pause 200:goto Jyoushi_Input_Born_Month2:
31910 case 2:
31920 No=3:sp_on 12,1:sp_on 9,0
31930 pause 200:goto Jyoushi_Input_Born_Month2:
31940 case 3:
31950 pause 200:goto Jyoushi_Input_Born_Month2:
31960 case 4:
31970 No=5:sp_on 8,1:sp_on 5,0
31980 pause 200:goto Jyoushi_Input_Born_Month2:
31990 case 5:
32000 No=6:sp_on 11,1:sp_on 8,0
32010 pause 200:goto Jyoushi_Input_Born_Month2:
32020 case 7:
32030 No=8:sp_on 7,1:sp_on 4,0
32040 pause 200:goto Jyoushi_Input_Born_Month2:
32050 case 8:
32060 No=9:sp_on 10,1:sp_on 7,0
32070 pause 200:goto Jyoushi_Input_Born_Month2:
32080 case 9:
32090 pause 200:goto Jyoushi_Input_Born_Month2:
32100 case 6:
32110 pause 200:goto Jyoushi_Input_Born_Month2:
32120 end select
32130 'Okから右ボタンを押して何もしない ここまで
32140 endif
32150 '十字キー　ここまで
32160 '右の丸ボタン + Enter key 決定キー
32170 if ((bg=2) or (key$=chr$(13))) then
32180 select case count
32190 case 0:
32200 if (No=-1) then No=0
32210 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
32220 if (buf_month > 1 and buf_month < 10)  then
32230 buf_Month$ = str$(buf_month)
32240 'buf_month=No
32250 endif
32260 if (buf_month = 1)  then
32270 buf_Month$ = str$(buf_month) + "*"
32280 'c=buf_month
32290 endif
32300 locate 1,3
32310 print "                                     "
32320 color RGB(255,255,255)
32330 locate 1,3
32340 print "上司の生まれた月(1月~12月):" + buf_Month$
32350 goto Jyoushi_Input_Born_Month2:
32360 case 1:
32370 count = 2:
32380 'c = val(buf_Month$)
32390 if (No = -1) then
32400 'count=0
32410 No=0
32420 month=buf_month
32430 buf_month=val(buf_Month$)
32440 month=buf_month
32450 buf_Jyoushi_Born_Day(1)=month
32460 '生まれた日に飛ぶ
32470 goto Jyoushi_Input_Born_Day:
32480 else
32490 buf_month = c*10 + No
32500 'if (buf_month = 1) then
32510 'buf_Month$ = str$(buf_month)
32520 'endif
32530 buf_Month$ = str$(buf_month)
32540 buf_Jyoushi_Born_Day(1) = buf_month
32550 locate 0,3
32560 print "                                           "
32570 locate 1,3
32580 color Rgb(255,255,255)
32590 print "上司の生まれた月(1月~12月):" + buf_Month$
32600 goto Jyoushi_Input_Born_Month2:
32610 endif
32620 case 2:
32630 '==================================
32640 '何もしない
32650 'coun = 2
32660 '==================================
32670 'c= val(buf_Month$)
32680 'buf_month = c*10 + No
32690 'buf_Month$ = str$(buf_month)
32700 'locate 2,3
32710 'print "上司の生まれた月(1月～12月):";buf_Month$
32720 'goto Jyoushi_Input_Born_Month2:
32730 'case 3:
32740 'count=4
32750 'b=val(buf_month$)
32760 'buf_month=c*10+No
32770 'buf_Month$=str$(buf_month)
32780 'locate 2,3
32790 'print "上司の生まれた月(1月～12月):";buf_Month$
32800 'buf_month=val(buf_Month$)
32810 'year=val(buf_year$)
32820 if (No=-1) then
32830 No=0
32840 goto Jyoushi_Input_Born_Day:
32850 else
32860 goto Jyoushi_Input_Born_Month2:
32870 endif
32880 'case 4:
32890 'bufyear=buf_year
32900 'if (No=-1) then
32910 'buf_month = val(buf_Month$)
32920 'month = buf_month
32930 'sp_on 14,0
32940 'goto Input_Born_Day:
32950 'else
32960 'goto Input_Born_Month2:
32970 'endif
32980 end select
32990 endif
33000 '左の丸ボタン　キャンセル
33010 if (bg2=2) then
33020 select case count2
33030 case 0:
33040 if (No = -1) then
33050 buf_month=0:buf_Month$="**"
33060 count=0
33070 'goto rewrite2:
33080 else
33090 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
33100 buf_month = 0:buf_Month$ = "**"
33110 locate 0,3
33120 color rgb(255,255,255)
33130 print "                                       "
33140 goto rewrite2:
33150 if (No>12) then
33160 ui_msg"値が範囲外です。"
33170 goto rewrite2:
33180 endif
33190 endif
33200 endif
33210 rewrite2:
33220 locate 2,3
33230 color rgb(255,255,255)
33240 print "                                      "
33250 locate 2,3
33260 print "上司の生まれた月(1月~12月):"+buf_Month$
33270 goto Jyoushi_Input_Born_Month2:
33280 end select
33290 'endif
33300 endif
33310 end
33320 'end
33330 '生れた日を入力
33340 Jyoushi_Input_Born_Day:
33350 '生まれた日入力
33360 cls 3:play ""
33370 'No=-1:Okのとき
33380 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
33390 for i=0 to 1
33400 buf_day(i)=0
33410 next i
33420 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
33430 gload Gazo$ + "Screen1.png",0,0,0
33440 gload Gazo$ + "downscreen.png",0,0,800
33450 'Init"kb:2"
33460 '音声ファイル再生 2023.06.07
33470 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
33480 font 48
33490 locate 1,1
33500 '文字色：黒　 color rgb(0,0,0)
33510 color rgb(255,255,255)
33520 print "上司の生まれた日を入れて下さい" + chr$(13)
33530 locate 1,3
33540 color rgb(255,255,255)
33550 print "                                      "
33560 locate 1,3
33570 print "上司の生まれた日(1日~31日):"+buf_Day$
33580 color rgb(255,255,255)
33590 'locate 4,6:print ":7"
33600 'locate 9,6:print ":8"
33610 'locate 12,6:print ":9"
33620 locate 4,6
33630 print ":7  :8  :9" + chr$(13)
33640 color rgb(255,255,255)
33650 locate 4,8
33660 print ":4  :5  :6" + chr$(13)
33670 color rgb(255,255,255)
33680 locate 4,10
33690 print ":1  :2  :3" + chr$(13)
33700 locate 4,12
33710 print "    :0"
33720 locate 12,12
33730 color rgb(0,0,255)
33740 print ":Ok"
33750 sp_on 4,0: sp_on 5,0:sp_on 6,0
33760 sp_on 7,0:sp_on 8,0:sp_on 9,0
33770 sp_on 10,0:sp_on 11,0:sp_on 12,0
33780 sp_on 13,0:sp_on 14,1
33790 Jyoushi_Input_Born_Day2:
33800 key$="":bg=0:y=0:y2=0:bg2=0:
33810 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
33820 key$ = inkey$
33830 bg = strig(1)
33840 y = stick(1)
33850 y2 = stick(0)
33860 bg2 = strig(0)
33870 pause 5
33880 wend
33890 '十字キー　ここから
33900 '上の矢印　または、十字キー上
33910 if ((y = -1) or (key$ = chr$(30))) then
33920 select case No
33930 'No=-1:okのとき:初期の状態
33940 '0kボタンから３に移動
33950 '上に行く 処理
33960 case -1:
33970 No=3:sp_on 12,1:sp_on 14,0
33980 pause 200:goto Jyoushi_Input_Born_Day2:
33990 '選択肢:3
34000 '3ボタンから 6に移動
34010 case 3:
34020 No=6:sp_on 12,0:sp_on 11,1
34030 pause 200:goto Jyoushi_Input_Born_Day2:
34040 '6ボタンから ９に移動
34050 case 6:
34060 No=9:sp_on 10,1:sp_on 11,0
34070 pause 200:goto Jyoushi_Input_Born_Day2:
34080 '6ボタンから ９に移動　ここまで
34090 '9で上を押して何もしない
34100 case 9:
34110 '何もしない
34120 No=9
34130 pause 200:goto Jyoushi_Input_Born_Day2:
34140 '9で上を押しても何もしない　ここまで
34150 '上　 0ボタンから2ボタン
34160 'sp_on 6,1:1
34170 'sp_on 8,1:5
34180 'sp_on 7,1:7
34190 case 0:
34200 No=2:sp_on 13,0:sp_on 9,1:
34210 pause 200:goto Jyoushi_Input_Born_Day2:
34220 '上  0ボタンから2ボタン　ここまで
34230 '2から５になる 上
34240 case 2:
34250 No=5:sp_on 8,1:sp_on 9,0:
34260 pause 200:goto Jyoushi_Input_Born_Day2:
34270 case 5:
34280 No=8:sp_on 7,1:sp_on 8,0
34290 pause 200:goto Jyoushi_Input_Born_Day2:
34300 case 8:
34310 pause 200:goto Jyoushi_Input_Born_Day2:
34320 case 1:
34330 No=4:sp_on 5,1:sp_on 6,0
34340 pause 200:goto Jyoushi_Input_Born_Day2:
34350 case 4:
34360 No=7:sp_on 4,1:sp_on 5,0
34370 pause 200:goto Jyoushi_Input_Born_Day2:
34380 case 7:
34390 pause 200:goto Jyoushi_Input_Born_Day2:
34400 end select
34410 endif
34420 '左３　ここまで
34430 '下の矢印
34440 '中央 2
34450 if ((y=1) or (key$ = chr$(31))) then
34460 select case No
34470 '9から６に下げる
34480 case 9:
34490 No=6:sp_on 11,1:sp_on 10,0
34500 pause 200:goto Jyoushi_Input_Born_Day2:
34510 '6から３に下げる
34520 case 6:
34530 No=3:sp_on 12,1:sp_on 11,0
34540 pause 200:goto Jyoushi_Input_Born_Day2:
34550 '3から０ｋに変える
34560 case 3:
34570 No=-1:sp_on 14,1:sp_on 12,0
34580 pause 200:goto Jyoushi_Input_Born_Day2:
34590 'Okから下のボタンを押しても何もしない
34600 case -1:
34610 pause 200:goto Jyoushi_Input_Born_Day2:
34620 case 8:
34630 No=5:sp_on 8,1:sp_on 7,0
34640 pause 200:goto Jyoushi_Input_Born_Day2:
34650 case 5:
34660 No=2:sp_on 9,1:sp_on 8,0
34670 pause 200:goto Jyoushi_Input_Born_Day2:
34680 case 2:
34690 No=0:sp_on 13,1:sp_on 9,0
34700 pause 200:goto Jyoushi_Input_Born_Day2:
34710 case 0:
34720 pause 200:goto Jyoushi_Input_Born_Day2:
34730 case 7:
34740 No=4:sp_on 5,1:sp_on 4,0
34750 pause 200:goto Jyoushi_Input_Born_Day2:
34760 case 4:
34770 No=1:sp_on 6,1:sp_on 5,0
34780 pause 200:goto Jyoushi_Input_Born_Day2:
34790 case 1:
34800 pause 200:goto Jyoushi_Input_Born_Day2:
34810 end select
34820 endif
34830 '左へボタン 十字キー　左　or 　カーソル左
34840 if ((y2 = -1) or (key$ = chr$(29))) then
34850 select case No
34860 'Ok ボタン  Okから　左　０に行く
34870 case -1:
34880 No=0:sp_on 13,1:sp_on 14,0
34890 pause 200:goto Jyoushi_Input_Born_Day2:
34900 '0 ボタン  左　何もしない
34910 case 0:
34920 pause 200:goto Jyoushi_Input_Born_Day2:
34930 case 3:
34940 No=2:sp_on 9,1:sp_on 12,0:
34950 pause 200:goto Jyoushi_Input_Born_Day2:
34960 case 2:
34970 No=1:sp_on 6,1:sp_on 9,0:
34980 pause 200:goto Jyoushi_Input_Born_Day2:
34990 case 1:
35000 pause 200:goto Jyoushi_Input_Born_Day2:
35010 case 6:
35020 No=5:sp_on 8,1:sp_on 11,0
35030 pause 200:goto Jyoushi_Input_Born_Day2:
35040 case 5:
35050 No=4:sp_on 5,1:sp_on 8,0
35060 pause 200:goto Jyoushi_Input_Born_Day2:
35070 case 4:
35080 pause 200:goto Jyoushi_Input_Born_Day2:
35090 case 9:
35100 No=8:sp_on 7,1:sp_on 10,0
35110 pause 200:goto Jyoushi_Input_Born_Day2:
35120 case 8:
35130 No=7:sp_on 4,1:sp_on 7,0
35140 pause 200:goto Jyoushi_Input_Born_Day2:
35150 case 7:
35160 pause 200:goto Jyoushi_Input_Born_Day2:
35170 end select
35180 endif
35190 '右  十字キー　右　or カーソル　右
35200 if ((y2 = 1) or (key$ = chr$(28))) then
35210 select case No
35220 '0ボタンからokボタン右に移動
35230 case 0:
35240 No=-1:sp_on 14,1:sp_on 13,0
35250 pause 200:goto Jyoushi_Input_Born_Day2:
35260 '0ボタンからokボタン 右に移動　ここまで
35270 'OKボタンで右を押して何もしない
35280 case -1:
35290 pause 200:goto Jyoushi_Input_Born_Day2:
35300 case 1:
35310 No=2:sp_on 9,1:sp_on 6,0
35320 pause 200:goto Jyoushi_Input_Born_Day2:
35330 case 2:
35340 No=3:sp_on 12,1:sp_on 9,0
35350 pause 200:goto Jyoushi_Input_Born_Day2:
35360 case 3:
35370 pause 200:goto Jyoushi_Input_Born_Day2:
35380 case 4:
35390 No=5:sp_on 8,1:sp_on 5,0
35400 pause 200:goto Jyoushi_Input_Born_Day2:
35410 case 5:
35420 No=6:sp_on 11,1:sp_on 8,0
35430 pause 200:goto Jyoushi_Input_Born_Day2:
35440 case 7:
35450 No=8:sp_on 7,1:sp_on 4,0
35460 pause 200:goto Jyoushi_Input_Born_Day2:
35470 case 8:
35480 No=9:sp_on 10,1:sp_on 7,0
35490 pause 200:goto Jyoushi_Input_Born_Day2:
35500 case 9:
35510 pause 200:goto Jyoushi_Input_Born_Day2:
35520 case 6:
35530 pause 200:goto Jyoushi_Input_Born_Day2:
35540 end select
35550 'Okから右ボタンを押して何もしない ここまで
35560 endif
35570 '十字キー　ここまで
35580 '右の丸ボタンを押したとき
35590 if ((bg = 2) or (key$ = chr$(13))) then
35600 'count :決定ボタンを押した回数
35610 select case (count)
35620 '1桁目入力
35630 case 0:
35640 count = 1:
35650 if (No = -1) then
35660 '1桁目　OKでは何もしない
35670 No=c
35680 'goto Jyoushi_Input_Born_Day2:
35690 else
35700 'ok以外のボタンを押したとき
35710 buf_day = No:buf_Day$ = str$(No)
35720 buf_Jyoushi_Born_Day(2)=buf_day
35730 c=No
35740 locate 1,3
35750 print "                                      "
35760 color RGB(255,255,255)
35770 locate 1,3
35780 print "上司の生まれた日(1日~31日):" + buf_Day$
35790 endif
35800 'check2:
35810 'if (buf_day >= 1 and buf_day <= 9) then
35820 'sp_on 14,0
35830 'goto complate_jyoushi:
35840 'else
35850 'sp_on 14,0
35860 goto Jyoushi_Input_Born_Day2:
35870 'end
35880 'endif
35890 case 1:
35900 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
35910 count = 2:
35920 'locate 2,3
35930 'color RGB(255,255,255)
35940 'print "生まれた日(1日~31日):";buf_Day$
35950 'Okボタンを押したときの処理
35960 '入力値　10未満のとき
35970 'buf_day = c * 10 + No
35980 if (No = -1) then
35990 c=buf_day:No=0
36000 'buf_day = c
36010 buf_Day$ = str$(buf_day)
36020 '10以下のとき
36030 'if (buf_day < 10) then
36040 sp_on 14,0
36050 goto complate_jyoushi:
36060 'end
36070 'endif
36080 else
36090 'c=No
36100 buf_day = c * 10 + No
36110 buf_Day$ = str$(buf_day)
36120 'buf_day = c:buf_Day$=str$(buf_day)
36130 buf_Jyoushi_Born_Day(2)=buf_day
36140 locate 1,3
36150 print "                                           "
36160 locate 1,3
36170 color Rgb(255,255,255)
36180 print "上司の生まれた日(1日~31日):" + buf_Day$
36190 goto Jyoushi_Input_Born_Day2:
36200 'goto
36210 endif
36220 'endif
36230 '生まれた日　2桁目の数字　or 1桁の数字 + ok
36240 case 2:
36250 'buf_day = c * 10 + No
36260 'buf_Jyoushi_Born_Day(2)=buf_day
36270 'locate 1,3
36280 'print "                                      "
36290 'locate 1,3
36300 'locate 2,3
36310 'print "生まれた日(1日〜31日):";buf_Day
36320 'No=-1:ok ボタンを押したとき
36330 if (No = -1) then
36340 'if ((buf_day > 0) and (buf_day < 32)) then
36350 No=0
36360 sp_on 14,0
36370 goto complate_jyoushi:
36380 'end
36390 else
36400 goto Jyoushi_Input_Born_Day2:
36410 'endif
36420 'Okボタン以外を押したとき
36430 'else
36440 'c=val(buf_Day$)
36450 'buf_day = c * 10 + No
36460 'buf_Jyoushi_Born_Day(2) = buf_day
36470 'buf_Day$ = str$(buf_day)
36480 'locate 1,3
36490 'print "上司の生まれた日(1日~31日):";buf_Day$
36500 'goto Jyoushi_Input_Born_Day2:
36510 endif
36520 'case 3:
36530 'count=4
36540 'c=val(buf_day$)
36550 'buf_day=c*10+No
36560 'buf_day$=str$(buf_day)
36570 'locate 2,3
36580 'print "生まれた日を入れてください:";buf_day$
36590 'year=val(buf_year$)
36600 'if (No = -1) then
36610 'goto Jyoushi_Input_Born_Day:
36620 'sp_on 14,0:
36630 'goto complate_jyoushi:
36640 'else
36650 'goto Jyoushi_Input_Born_Month2:
36660 'endif
36670 'case 4:
36680 'bufyear=buf_year
36690 'if (No=-1) then
36700 'buf_day = val(buf_day$)
36710 'bufday = buf_day
36720 'sp_on 14,0
36730 'goto Jyoushi_Input_Born_Day2:
36740 'else
36750 'goto Jyoushi_Input_Born_Day2:
36760 'endif
36770 end select
36780 endif
36790 if (bg2=2) then
36800 select case count2
36810 case 0:
36820 if (No=-1) then
36830 buf_day=0:buf_Day$="**":No=0
36840 if (buf_day >= 1 and buf_day <= 31) then
36850 count=0
36860 buf_day=0:buf_Day$ = "**"
36870 goto rewrite_day3:
36880 else
36890 buf_day=0:buf_Day$ = "**"
36900 ui_msg"値が範囲外です"
36910 endif
36920 goto rewrite_day3:
36930 else
36940 goto rewrite_day3:
36950 endif
36960 rewrite_day3:
36970 locate 2,3
36980 color rgb(255,255,255)
36990 print "                                      "
37000 locate 2,3
37010 print "生まれた日(1日~31日):" + buf_Day$
37020 goto Jyoushi_Input_Born_Day2:
37030 end select
37040 endif
37050 '--------------------------------------------'
37060 'locate 2,0:color rgb(255,0,0)
37070 'print "上司の生まれた年代を入力"
37080 'color rgb(255,255,255)
37090 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
37100 'locate 2,4:Input "上司の生まれた年:",born_year
37110 '誕生日データーを配列に代入
37120 'buf_Jyoushi_Born_Year:上司の生まれた年代
37130 'buf_Jyoushi_Born_Day(0) = born_year
37140 'born_year = 0
37150 '---------------------------------------------'
37160 'goto Jyoushi_born_month:
37170 '1-2.生まれた月を入力
37180 'Jyoushi_born_month:
37190 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37200 'init "kb:4"
37210 'locate 2,1:
37220 'color rgb(255,0,0)
37230 'print "上司の生まれた月入力"
37240 'color rgb(255,255,255)
37250 'locate 2,4:print "生まれた月を入力してください"
37260 'locate 2,5
37270 'Input "上司の生まれ月:",born_month
37280 'buf_Jyoushi_Born_Day(1) = born_month
37290 'born_month = 0
37300 'goto Jyoushi_born_day:
37310 'buf_Jyoushi_Born_day
37320 '1-3.生まれた日を入力
37330 'Jyoushi_born_day:
37340 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37350 'init "kb:4"
37360 'locate 2,1:color rgb(255,0,0)
37370 'print "上司の生まれた日　入力"
37380 'locate 2,4:color rgb(255,255,255)
37390 'print "生まれた日を入力してください"
37400 'locate 2,5
37410 'Input "上司の生まれた日:",born_day
37420 'buf_Jyoushi_Born_Day(2) = born_day
37430 'born_day = 0
37440 'goto buka_born_year:
37450 '2.部下の誕生日入力
37460 '2-1.生まれた年を入力
37470 'buka_born_year:
37480 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37490 'init "kb:2"
37500 'locate 1,1:color rgb(255,0,0)
37510 'print "部下の生まれた年代入力"
37520 'locate 0,4:color rgb(255,255,255)
37530 'print "部下の生まれた年（西暦4桁）を入れてください"
37540 'locate 0,5
37550 'Input "部下の生まれた年(西暦4桁):",born_year
37560 'buf_Buka_Born_Day(0) = born_year
37570 'born_year = 0
37580 '2-2.生まれた月を入力
37590 'buka_born_month:
37600 'cls 3:gload Gazo$+"Screen1.png",0,0,0
37610 'init "kb:2"
37620 'locate 2,1:color rgb(255,0,0)
37630 'print "部下の生まれた月 入力"
37640 'locate 2,4:color rgb(255,255,255)
37650 'print "部下の生まれた月を入力してください"
37660 'locate 2,5:Input "部下の生まれた月:",born_month
37670 'buf_Buka_Born_Day(1) = born_month
37680 '2-3.生まれた日を入力
37690 'buka_born_day:
37700 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37710 'init "kb:2"
37720 'locate 2,1:color rgb(255,0,0)
37730 'print "生まれた日入力"
37740 'color rgb(255,255,255)
37750 'locate 2,4:print "生まれた日を入力してください"
37760 'locate 2,5:Input "部下の生まれた日:",born_day
37770 'buf_Buka_Born_Day(2) = born_day
37780 'born_day=0:goto Result_Business_Aisyou:
37790 '--------------------------------------------'
37800 complate_jyoushi:
37810 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
37820 buf_Jyoushi = Kabara_Num(a,b,c)
37830 a_1=buf_Jyoushi
37840 goto Buka_Input_Seireki:
37850 '--------------------------------------------'
37860 '部下'
37870 '1.部下の生まれた年代'
37880 Buka_Input_Seireki:
37890 cls 3:play "":count=0:count2=0
37900 init"kb:4"
37910 'No=-1:Okのとき
37920 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
37930 for i=0 to 3
37940 buf_Buka_Born_Day(i)=0
37950 next i
37960 gload Gazo$ + "Screen1.png",0,0,0
37970 gload Gazo$ + "downscreen.png",0,0,800
37980 'Init"kb:2"
37990 '音声ファイル再生 2023.06.07
38000 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38010 font 48
38020 locate 0,1
38030 '文字色：黒　 color rgb(0,0,0)
38040 color rgb(255,255,255)
38050 print "部下の生まれた年代を入れて下さい" + chr$(13)
38060 color rgb(255,255,255)
38070 locate 1,3
38080 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38090 color rgb(255,255,255)
38100 'locate 4,6:print ":7"
38110 'locate 9,6:print ":8"
38120 'locate 12,6:print ":9"
38130 locate 4,6
38140 print ":7  :8  :9" + chr$(13)
38150 color rgb(255,255,255)
38160 locate 4,8
38170 print ":4  :5  :6" + chr$(13)
38180 color rgb(255,255,255)
38190 locate 4,10
38200 print ":1  :2  :3" + chr$(13)
38210 locate 4,12
38220 print "    :0"
38230 locate 12,12
38240 color rgb(0,0,255)
38250 print ":Ok"
38260 sp_on 4,0: sp_on 5,0:sp_on 6,0
38270 sp_on 7,0:sp_on 8,0:sp_on 9,0
38280 sp_on 10,0:sp_on 11,0:sp_on 12,0
38290 sp_on 13,0:sp_on 14,1
38300 Buka_Input_Seireki2:
38310 key$="":bg=0:y=0:y2=0:bg2=0:
38320 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38330 key$ = inkey$
38340 bg = strig(1)
38350 y = stick(1)
38360 y2 = stick(0)
38370 bg2=strig(0)
38380 pause 5
38390 wend
38400 '十字キー　ここから
38410 '上の矢印　または、十字キー上
38420 if ((y = -1) or (key$ = chr$(30))) then
38430 select case No
38440 'No=-1:okのとき:初期の状態
38450 '0kボタンから３に移動
38460 '上に行く 処理
38470 case -1:
38480 No=3:sp_on 12,1:sp_on 14,0
38490 pause 200:goto Buka_Input_Seireki2:
38500 '選択肢:3
38510 '3ボタンから 6に移動
38520 case 3:
38530 No=6:sp_on 12,0:sp_on 11,1
38540 pause 200:goto Buka_Input_Seireki2:
38550 '6ボタンから ９に移動
38560 case 6:
38570 No=9:sp_on 10,1:sp_on 11,0
38580 pause 200:goto Buka_Input_Seireki2:
38590 '6ボタンから ９に移動　ここまで
38600 '9で上を押して何もしない
38610 case 9:
38620 '何もしない
38630 No=9
38640 pause 200:goto Buka_Input_Seireki2:
38650 '9で上を押しても何もしない　ここまで
38660 '上　 0ボタンから2ボタン
38670 'sp_on 6,1:1
38680 'sp_on 8,1:5
38690 'sp_on 7,1:7
38700 case 0:
38710 No=2:sp_on 13,0:sp_on 9,1:
38720 pause 200:goto Buka_Input_Seireki2:
38730 '上  0ボタンから2ボタン　ここまで
38740 '2から５になる 上
38750 case 2:
38760 No=5:sp_on 8,1:sp_on 9,0:
38770 pause 200:goto Buka_Input_Seireki2:
38780 case 5:
38790 No=8:sp_on 7,1:sp_on 8,0
38800 pause 200:goto Buka_Input_Seireki2:
38810 case 8:
38820 pause 200:goto Buka_Input_Seireki2:
38830 case 1:
38840 No=4:sp_on 5,1:sp_on 6,0
38850 pause 200:goto Buka_Input_Seireki2:
38860 case 4:
38870 No=7:sp_on 4,1:sp_on 5,0
38880 pause 200:goto Buka_Input_Seireki2:
38890 case 7:
38900 pause 200:goto Buka_Input_Seireki2:
38910 end select
38920 endif
38930 '左３　ここまで
38940 '下の矢印
38950 '中央 2
38960 if ((y=1) or (key$ = chr$(31))) then
38970 select case No
38980 '9から６に下げる
38990 case 9:
39000 No=6:sp_on 11,1:sp_on 10,0
39010 pause 200:goto Buka_Input_Seireki2:
39020 '6から３に下げる
39030 case 6:
39040 No=3:sp_on 12,1:sp_on 11,0
39050 pause 200:goto Buka_Input_Seireki2:
39060 '3から０ｋに変える
39070 case 3:
39080 No=-1:sp_on 14,1:sp_on 12,0
39090 pause 200:goto Buka_Input_Seireki2:
39100 'Okから下のボタンを押しても何もしない
39110 case -1:
39120 pause 200:goto Buka_Input_Seireki2:
39130 case 8:
39140 No=5:sp_on 8,1:sp_on 7,0
39150 pause 200:goto Buka_Input_Seireki2:
39160 case 5:
39170 No=2:sp_on 9,1:sp_on 8,0
39180 pause 200:goto Buka_Input_Seireki2:
39190 case 2:
39200 No=0:sp_on 13,1:sp_on 9,0
39210 pause 200:goto Buka_Input_Seireki2:
39220 case 0:
39230 pause 200:goto Buka_Input_Seireki2:
39240 case 7:
39250 No=4:sp_on 5,1:sp_on 4,0
39260 pause 200:goto Buka_Input_Seireki2:
39270 case 4:
39280 No=1:sp_on 6,1:sp_on 5,0
39290 pause 200:goto Buka_Input_Seireki2:
39300 case 1:
39310 pause 200:goto Buka_Input_Seireki2:
39320 end select
39330 endif
39340 '左へボタン 十字キー　左　or 　カーソル左
39350 if ((y2 = -1) or (key$ = chr$(29))) then
39360 select case No
39370 'Ok ボタン  Okから　左　０に行く
39380 case -1:
39390 No=0:sp_on 13,1:sp_on 14,0
39400 pause 200:goto Buka_Input_Seireki2:
39410 '0 ボタン  左　何もしない
39420 case 0:
39430 pause 200:goto Buka_Input_Seireki2:
39440 case 3:
39450 No=2:sp_on 9,1:sp_on 12,0:
39460 pause 200:goto Buka_Input_Seireki2:
39470 case 2:
39480 No=1:sp_on 6,1:sp_on 9,0:
39490 pause 200:goto Buka_Input_Seireki2:
39500 case 1:
39510 pause 200:goto Buka_Input_Seireki2:
39520 case 6:
39530 No=5:sp_on 8,1:sp_on 11,0
39540 pause 200:goto Buka_Input_Seireki2:
39550 case 5:
39560 No=4:sp_on 5,1:sp_on 8,0
39570 pause 200:goto Buka_Input_Seireki2:
39580 case 4:
39590 pause 200:goto Buka_Input_Seireki2:
39600 case 9:
39610 No=8:sp_on 7,1:sp_on 10,0
39620 pause 200:goto Buka_Input_Seireki2:
39630 case 8:
39640 No=7:sp_on 4,1:sp_on 7,0
39650 pause 200:goto Buka_Input_Seireki2:
39660 case 7:
39670 pause 200:goto Buka_Input_Seireki2:
39680 end select
39690 endif
39700 '右  十字キー　右　or カーソル　右
39710 if ((y2 = 1) or (key$ = chr$(28))) then
39720 select case No
39730 '0ボタンからokボタン右に移動
39740 case 0:
39750 No=-1:sp_on 14,1:sp_on 13,0
39760 pause 200:goto Buka_Input_Seireki2:
39770 '0ボタンからokボタン 右に移動　ここまで
39780 'OKボタンで右を押して何もしない
39790 case -1:
39800 pause 200:goto Buka_Input_Seireki2:
39810 case 1:
39820 No=2:sp_on 9,1:sp_on 6,0
39830 pause 200:goto Buka_Input_Seireki2:
39840 case 2:
39850 No=3:sp_on 12,1:sp_on 9,0
39860 pause 200:goto Buka_Input_Seireki2:
39870 case 3:
39880 pause 200:goto Buka_Input_Seireki2:
39890 case 4:
39900 No=5:sp_on 8,1:sp_on 5,0
39910 pause 200:goto Buka_Input_Seireki2:
39920 case 5:
39930 No=6:sp_on 11,1:sp_on 8,0
39940 pause 200:goto Buka_Input_Seireki2:
39950 case 7:
39960 No=8:sp_on 7,1:sp_on 4,0
39970 pause 200:goto Buka_Input_Seireki2:
39980 case 8:
39990 No=9:sp_on 10,1:sp_on 7,0
40000 pause 200:goto Buka_Input_Seireki2:
40010 case 9:
40020 pause 200:goto Buka_Input_Seireki2:
40030 case 6:
40040 pause 200:goto Buka_Input_Seireki2:
40050 end select
40060 'Okから右ボタンを押して何もしない ここまで
40070 endif
40080 '十字キー　ここまで
40090 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
40100 'ここからコメント
40110 '右の丸ボタン決定を押した数:count
40120 'if ((bg=2) or (key$=chr$(13))) then
40130 'select case count
40140 'case 0:
40150 'count=1
40160 'if (No = -1) then
40170 'count = 0
40180 'Okボタンを押したとき
40190 '
40200 'goto Buka_Input_Seireki2:
40210 'else
40220 'Okボタン以外が押されたとき
40230 'if (No >= 1 and No <= 2) then
40240 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
40250 'buf_buka_year = No
40260 'buf_Buka_Born_Day(0) = bufyear
40270 'locate 2,3
40280 'color rgb(255,255,255)
40290 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40300 'goto Buka_Input_Seireki2:
40310 'else
40320 'count=0
40330 'ui_msg"数字が範囲外になります。"
40340 'buf_buka_year$ ="":buf_buka_year=0
40350 'goto Buka_Input_Seireki2:
40360 'endif
40370 'endif
40380 'case 1:
40390 'count = 2
40400 'if (No = -1) then
40410 'count = 1
40420 'goto Buka_Input_Seireki2:
40430 'else
40440 'b = val(buf_buka_year$)
40450 'buf_buka_year = b * 10 + No
40460 'buf_buka_year$ = str$(buf_buka_year)
40470 'buf_Buka_Born_Day(0) = bufyear
40480 'locate 1,3
40490 'color rgb(255,255,255)
40500 'print "                                                                "
40510 'locate 1,3
40520 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40530 'if (No = -1) then
40540 'count=1
40550 'goto Buka_Input_Seireki2:
40560 'endif
40570 'case 2:
40580 'count = 3
40590 'if (No = -1) then
40600 'count = 2
40610 'buf_Buka_Born_Day(0)=bufyear
40620 'goto Buka_Input_Seireki2:
40630 'else
40640 'b = val(buf_buka_year$)
40650 'buf_buka_year = b*10 + No
40660 'buf_buka_year$ = str$(buf_buka_year)
40670 'locate 1,3
40680 'color rgb(255,255,255)
40690 'print "                                        "
40700 'locate 1,3
40710 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
40720 'goto Buka_Input_Seireki2:
40730 'endif
40740 'case 3:
40750 'count=4
40760 'if (No = -1) then
40770 'count=3
40780 'goto Buka_Input_Seireki2:
40790 'else
40800 'b = buf_buka_year
40810 'buf_buka_year = b * 10 + No
40820 'buf_buka_year$=str$(buf_buka_year)
40830 'locate 1,3
40840 'color RGB(255,255,255)
40850 'print "                                      "
40860 'locate 1,3
40870 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
40880 'buf_year=val(buf_year$)
40890 'year=val(buf_year$)
40900 'if (No=-1) then
40910 'goto Input_Born_Month:
40920 'else
40930 'goto Buka_Input_Seireki2:
40940 'endif
40950 'case 4:
40960 'bufyear=buf_year
40970 'if (No=-1) then
40980 'buf_year = val(buf_year$)
40990 'bufyear = buf_year
41000 'sp_on 14,0
41010 'goto Buka_Input_Born_Month:
41020 'else
41030 'goto Buka_Input_Seireki2:
41040 'endif
41050 'end select
41060 'endif
41070 'if (bg2 = 2) then
41080 'select case count2
41090 'case 0:
41100 'if (No = -1) then
41110 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
41120 'count=0
41130 'locate 1,3
41140 'color rgb(255,255,255)
41150 'print "                                      "
41160 'locate 1,3
41170 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
41180 'goto Buka_Input_Seireki2:
41190 'else
41200 '(buf_year=0) then
41210 'buf_buka_year=0:buf_buka_year$="****"
41220 'goto Buka_Input_Seireki2:
41230 'endif
41240 'endif
41250 'end select
41260 'endif
41270 'end
41280 'ここまでコメント
41290 '================================================================
41300 if ((bg=2) or (key$=chr$(13))) then
41310 select case count
41320 case 0:
41330 count = 1
41340 if (No=-1) then
41350 count = 0
41360 buf_Buka_Born_Day(0) = No
41370 'Okボタンを押したとき
41380 goto Buka_Input_Seireki2:
41390 else
41400 'Okボタン以外が押されたとき
41410 if (No>=1 and No<=2) then
41420 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
41430 buf_buka_year = No
41440 buf_Buka_Born_Day(0) = No
41450 locate 1,3
41460 color rgb(255,255,255)
41470 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41480 goto Buka_Input_Seireki2:
41490 else
41500 count=0
41510 ui_msg"数字が範囲外になります。"
41520 buf_buka_year$="":buf_buka_year=0
41530 goto Buka_Input_Seireki2:
41540 endif
41550 endif
41560 case 1:
41570 count = 2
41580 if (No = -1) then
41590 count = 1
41600 goto Buka_Input_Seireki2:
41610 else
41620 'b = val(buf_buka_year$)
41630 buf_buka_year = a * 10 + No
41640 b=buf_buka_year
41650 buf_buka_year$ = str$(buf_buka_year)+"**"
41660 buf_Buka_Born_Day(0)=buf_buka_year
41670 locate 1,3
41680 color rgb(255,255,255)
41690 print "                                                                "
41700 locate 1,3
41710 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41720 'if (No = -1) then
41730 'count=1
41740 goto Buka_Input_Seireki2:
41750 endif
41760 case 2:
41770 count=3
41780 if (No=-1) then
41790 count =2:No=0
41800 goto Buka_Input_Seireki2:
41810 else
41820 'b = val(buf_buka_year$)
41830 buf_buka_year = b * 10 + No
41840 c = buf_buka_year
41850 buf_buka_year$ = str$(buf_buka_year) + "*"
41860 buf_Buka_Born_Day(0) = buf_buka_year
41870 locate 1,3
41880 color rgb(255,255,255)
41890 print "                                        "
41900 locate 1,3
41910 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41920 goto Buka_Input_Seireki2:
41930 endif
41940 case 3:
41950 count=4
41960 if (No = -1) then
41970 'count=3:No=0
41980 goto Buka_Input_Seireki2:
41990 else
42000 'b = val(buf_buka_year$)
42010 buf_buka_year=c * 10 + No
42020 buf_buka_year$=str$(buf_buka_year)
42030 buf_Buka_Born_Day(0)=buf_buka_year
42040 locate 1,3
42050 color RGB(255,255,255)
42060 print "                                      "
42070 locate 1,3
42080 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42090 buf_buka_year=val(buf_buka_year$)
42100 'year=val(buf_year$)
42110 'if (No=-1) then
42120 'goto Input_Born_Month:
42130 'else
42140 goto Buka_Input_Seireki2:
42150 endif
42160 case 4:
42170 'bufyear=buf_year
42180 if (No = -1) then
42190 buf_buka_year = val(buf_buka_year$)
42200 buf_Buka_Born_Day(0)=buf_buka_year
42210 sp_on 14,0
42220 goto Buka_Input_Born_Month:
42230 else
42240 goto Buka_Input_Seireki2:
42250 endif
42260 end select
42270 endif
42280 '================================================================
42290 'ここにコピーする。
42300 '================================================================
42310 'Input"部下の生れた年代(4桁,〜2025年):",year
42320 'if year > 2025 then goto Jyoushi_Input_Seireki:
42330 'if year = 123 then cls 3:cls 4:goto Main_Screen:
42340 '"4桁目"
42350 'bufyear4 = fix(year / 1000)
42360 '"3桁目"
42370 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
42380 '"2桁目"
42390 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
42400 '"1桁目"
42410 'bufyear1 = fix((year - ((bufyear4*
42420 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
42430 '1.部下の生まれた年代'
42440 '2.部下の生まれた月'
42450 Buka_Input_Born_Month:
42460 cls 3:play "":count=0:count2=0
42470 'No=-1:Okのとき
42480 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
42490 for i=0 to 1
42500 buf_month(i)=0
42510 next i
42520 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
42530 gload Gazo$ + "Screen1.png",0,0,0
42540 gload Gazo$ + "downscreen.png",0,0,800
42550 'Init"kb:4"
42560 '音声ファイル再生 2023.06.07
42570 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
42580 font 48
42590 locate 0,1
42600 '文字色：黒　 color rgb(0,0,0)
42610 '文字色:白
42620 color rgb(255,255,255)
42630 print "部下の生まれた月を入れて下さい" + chr$(13)
42640 '文字色:白
42650 color rgb(255,255,255)
42660 locate 1,3
42670 '文字色:白
42680 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
42690 color rgb(255,255,255)
42700 'locate 4,6:print ":7"
42710 'locate 9,6:print ":8"
42720 'locate 12,6:print ":9"
42730 locate 4,6
42740 '文字色:赤
42750 print ":7  :8  :9" + chr$(13)
42760 color rgb(255,255,255)
42770 locate 4,8
42780 print ":4  :5  :6" + chr$(13)
42790 color rgb(255,255,255)
42800 locate 4,10
42810 print ":1  :2  :3" + chr$(13)
42820 locate 4,12
42830 print "    :0"
42840 locate 12,12
42850 color rgb(0,0,255)
42860 print ":Ok"
42870 sp_on 4,0: sp_on 5,0:sp_on 6,0
42880 sp_on 7,0:sp_on 8,0:sp_on 9,0
42890 sp_on 10,0:sp_on 11,0:sp_on 12,0
42900 sp_on 13,0:sp_on 14,1
42910 Buka_Input_Born_Month2:
42920 key$="":bg=0:y=0:y2=0:bg2=0
42930 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42940 key$ = inkey$
42950 bg = strig(1)
42960 y = stick(1)
42970 y2 = stick(0)
42980 bg2 = strig(0)
42990 pause 5
43000 wend
43010 '十字キー　ここから
43020 '上の矢印　または、十字キー上
43030 if ((y = -1) or (key$ = chr$(30))) then
43040 select case No
43050 'No=-1:okのとき:初期の状態
43060 '0kボタンから３に移動
43070 '上に行く 処理
43080 case -1:
43090 No=3:sp_on 12,1:sp_on 14,0
43100 pause 200:goto Buka_Input_Born_Month2:
43110 '選択肢:3
43120 '3ボタンから 6に移動
43130 case 3:
43140 No=6:sp_on 12,0:sp_on 11,1
43150 pause 200:goto Buka_Input_Born_Month2:
43160 '6ボタンから ９に移動
43170 case 6:
43180 No=9:sp_on 10,1:sp_on 11,0
43190 pause 200:goto Buka_Input_Born_Month2:
43200 '6ボタンから ９に移動　ここまで
43210 '9で上を押して何もしない
43220 case 9:
43230 '何もしない
43240 No=9
43250 pause 200:goto Buka_Input_Born_Month2:
43260 '9で上を押しても何もしない　ここまで
43270 '上　 0ボタンから2ボタン
43280 'sp_on 6,1:1
43290 'sp_on 8,1:5
43300 'sp_on 7,1:7
43310 case 0:
43320 No=2:sp_on 13,0:sp_on 9,1:
43330 pause 200:goto Buka_Input_Born_Month2:
43340 '上  0ボタンから2ボタン　ここまで
43350 '2から５になる 上
43360 case 2:
43370 No=5:sp_on 8,1:sp_on 9,0:
43380 pause 200:goto Buka_Input_Born_Month2:
43390 case 5:
43400 No=8:sp_on 7,1:sp_on 8,0
43410 pause 200:goto Buka_Input_Born_Month2:
43420 case 8:
43430 pause 200:goto Buka_Input_Born_Month2:
43440 case 1:
43450 No=4:sp_on 5,1:sp_on 6,0
43460 pause 200:goto Buka_Input_Born_Month2:
43470 case 4:
43480 No=7:sp_on 4,1:sp_on 5,0
43490 pause 200:goto Buka_Input_Born_Month2:
43500 case 7:
43510 pause 200:goto Buka_Input_Born_Month2:
43520 end select
43530 endif
43540 '左３　ここまで
43550 '下の矢印
43560 '中央 2
43570 if ((y=1) or (key$ = chr$(31))) then
43580 select case No
43590 '9から６に下げる
43600 case 9:
43610 No=6:sp_on 11,1:sp_on 10,0
43620 pause 200:goto Buka_Input_Born_Month2:
43630 '6から３に下げる
43640 case 6:
43650 No=3:sp_on 12,1:sp_on 11,0
43660 pause 200:goto Buka_Input_Born_Month2:
43670 '3から０ｋに変える
43680 case 3:
43690 No=-1:sp_on 14,1:sp_on 12,0
43700 pause 200:goto Buka_Input_Born_Month2:
43710 'Okから下のボタンを押しても何もしない
43720 case -1:
43730 pause 200:goto Buka_Input_Born_Month2:
43740 case 8:
43750 No=5:sp_on 8,1:sp_on 7,0
43760 pause 200:goto Buka_Input_Born_Month2:
43770 case 5:
43780 No=2:sp_on 9,1:sp_on 8,0
43790 pause 200:goto Buka_Input_Born_Month2:
43800 case 2:
43810 No=0:sp_on 13,1:sp_on 9,0
43820 pause 200:goto Buka_Input_Born_Month2:
43830 case 0:
43840 pause 200:goto Buka_Input_Born_Month2:
43850 case 7:
43860 No=4:sp_on 5,1:sp_on 4,0
43870 pause 200:goto Buka_Input_Born_Month2:
43880 case 4:
43890 No=1:sp_on 6,1:sp_on 5,0
43900 pause 200:goto Buka_Input_Born_Month2:
43910 case 1:
43920 pause 200:goto Buka_Input_Born_Month2:
43930 end select
43940 endif
43950 '左へボタン 十字キー　左　or 　カーソル左
43960 if ((y2 = -1) or (key$ = chr$(29))) then
43970 select case No
43980 'Ok ボタン  Okから　左　０に行く
43990 case -1:
44000 No=0:sp_on 13,1:sp_on 14,0
44010 pause 200:goto Buka_Input_Born_Month2:
44020 '0 ボタン  左　何もしない
44030 case 0:
44040 pause 200:goto Buka_Input_Born_Month2:
44050 case 3:
44060 No=2:sp_on 9,1:sp_on 12,0:
44070 pause 200:goto Buka_Input_Born_Month2:
44080 case 2:
44090 No=1:sp_on 6,1:sp_on 9,0:
44100 pause 200:goto Buka_Input_Born_Month2:
44110 case 1:
44120 pause 200:goto Buka_Input_Born_Month2:
44130 case 6:
44140 No=5:sp_on 8,1:sp_on 11,0
44150 pause 200:goto Buka_Input_Born_Month2:
44160 case 5:
44170 No=4:sp_on 5,1:sp_on 8,0
44180 pause 200:goto Buka_Input_Born_Month2:
44190 case 4:
44200 pause 200:goto Buka_Input_Born_Month2:
44210 case 9:
44220 No=8:sp_on 7,1:sp_on 10,0
44230 pause 200:goto Buka_Input_Born_Month2:
44240 case 8:
44250 No=7:sp_on 4,1:sp_on 7,0
44260 pause 200:goto Buka_Input_Born_Month2:
44270 case 7:
44280 pause 200:goto Buka_Input_Born_Month2:
44290 end select
44300 endif
44310 '右  十字キー　右　or カーソル　右
44320 if ((y2 = 1) or (key$ = chr$(28))) then
44330 select case No
44340 '0ボタンからokボタン右に移動
44350 case 0:
44360 No=-1:sp_on 14,1:sp_on 13,0
44370 pause 200:goto Buka_Input_Born_Month2:
44380 '0ボタンからokボタン 右に移動　ここまで
44390 'OKボタンで右を押して何もしない
44400 case -1:
44410 pause 200:goto Buka_Input_Born_Month2:
44420 case 1:
44430 No=2:sp_on 9,1:sp_on 6,0
44440 pause 200:goto Buka_Input_Born_Month2:
44450 case 2:
44460 No=3:sp_on 12,1:sp_on 9,0
44470 pause 200:goto Buka_Input_Born_Month2:
44480 case 3:
44490 pause 200:goto Buka_Input_Born_Month2:
44500 case 4:
44510 No=5:sp_on 8,1:sp_on 5,0
44520 pause 200:goto Buka_Input_Born_Month2:
44530 case 5:
44540 No=6:sp_on 11,1:sp_on 8,0
44550 pause 200:goto Buka_Input_Born_Month2:
44560 case 7:
44570 No=8:sp_on 7,1:sp_on 4,0
44580 pause 200:goto Buka_Input_Born_Month2:
44590 case 8:
44600 No=9:sp_on 10,1:sp_on 7,0
44610 pause 200:goto Buka_Input_Born_Month2:
44620 case 9:
44630 pause 200:goto Buka_Input_Born_Month2:
44640 case 6:
44650 pause 200:goto Buka_Input_Born_Month2:
44660 end select
44670 'Okから右ボタンを押して何もしない ここまで
44680 endif
44690 '十字キー　ここまで
44700 '右の丸ボタン　決定キー
44710 if ((bg=2) or (key$=chr$(13))) then
44720 select case count
44730 case 0:
44740 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
44750 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
44760 locate 1,3
44770 color RGB(255,255,255)
44780 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
44790 goto Buka_Input_Born_Month2:
44800 case 1:
44810 count = 2:buf_buka_month=a*10+No
44820 if (No = -1) then
44830 'count=0
44840 month=buf_buka_month
44850 buf_buka_month=val(buf_buka_Month$)
44860 month=buf_buka_month
44870 '生まれた日に飛ぶ
44880 goto Buka_Input_Born_Day:
44890 else
44900 buf_buka_month = a * 10 + No
44910 buf_buka_Month$ = str$(buf_buka_month)
44920 buf_Buka_Born_Day(1) = buf_buka_month
44930 locate 1,3
44940 color Rgb(255,255,255)
44950 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
44960 goto Buka_Input_Born_Month2:
44970 endif
44980 case 2:
44990 count=3
45000 'c= val(buf_Month$)
45010 'buf_month = c*10 + No
45020 'buf_Month$ = str$(buf_month)
45030 'locate 2,3
45040 'print "部下の生まれた月(1月～12月):";buf_Month$
45050 'goto Buka_Input_Born_Month2:
45060 'case 3:
45070 'count=4
45080 'b=val(buf_month$)
45090 'buf_month=c*10+No
45100 'buf_Month$=str$(buf_month)
45110 'locate 2,3
45120 'print "部下の生まれた月(1月～12月):";buf_Month$
45130 'buf_month=val(buf_Month$)
45140 'year=val(buf_year$)
45150 if (No=-1) then
45160 goto Buka_Input_Born_Day:
45170 else
45180 goto Input_Born_Month2:
45190 endif
45200 'case 4:
45210 'bufyear=buf_year
45220 'if (No=-1) then
45230 'buf_month = val(buf_Month$)
45240 'month = buf_month
45250 'sp_on 14,0
45260 'goto Input_Born_Day:
45270 'else
45280 'goto Input_Born_Month2:
45290 'endif
45300 end select
45310 endif
45320 '左の丸ボタン　キャンセル
45330 if (bg2=2) then
45340 select case count2
45350 case 0:
45360 if (No = -1) then
45370 buf_buka_month=0:buf_buka_Month$="**"
45380 count=0
45390 goto rewrite2:
45400 else
45410 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
45420 buf_month=0:buf_Month$="**"
45430 locate 2,3
45440 color rgb(255,255,255)
45450 print "                                       "
45460 goto rewrite2:
45470 if (No>12) then
45480 ui_msg"値が範囲外です。"
45490 goto rewrite2:
45500 endif
45510 endif
45520 endif
45530 rewrite2:
45540 locate 2,3
45550 color rgb(255,255,255)
45560 print "                                      "
45570 locate 2,3
45580 print "部下の生まれた月(1月~12月):";buf_buka_Month$
45590 goto Buka_Input_Born_Month2:
45600 end select
45610 'endif
45620 endif
45630 end
45640 '2.部下の生まれた月'
45650 '3.部下の生まれた日'
45660 '生れた日を入力
45670 Buka_Input_Born_Day:
45680 '生まれた日入力
45690 cls 3:play ""
45700 'No=-1:Okのとき
45710 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
45720 for i=0 to 1
45730 buf_day(i)=0
45740 next i
45750 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45760 gload Gazo$ + "Screen1.png",0,0,0
45770 gload Gazo$ + "downscreen.png",0,0,800
45780 'Init"kb:2"
45790 '音声ファイル再生 2023.06.07
45800 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
45810 font 48
45820 locate 0,1
45830 '文字色：黒　 color rgb(0,0,0)
45840 color rgb(255,255,255)
45850 print "部下の生まれた日を入れて下さい" + chr$(13)
45860 color rgb(255,255,255)
45870 locate 1,3
45880 print "部下の生まれた日(1日~31日):";buf_Day$
45890 color rgb(255,255,255)
45900 'locate 4,6:print ":7"
45910 'locate 9,6:print ":8"
45920 'locate 12,6:print ":9"
45930 locate 4,6
45940 print ":7  :8  :9" + chr$(13)
45950 color rgb(255,255,255)
45960 locate 4,8
45970 print ":4  :5  :6" + chr$(13)
45980 color rgb(255,255,255)
45990 locate 4,10
46000 print ":1  :2  :3" + chr$(13)
46010 locate 4,12
46020 print "    :0"
46030 locate 12,12
46040 color rgb(0,0,255)
46050 print ":Ok"
46060 sp_on 4,0: sp_on 5,0:sp_on 6,0
46070 sp_on 7,0:sp_on 8,0:sp_on 9,0
46080 sp_on 10,0:sp_on 11,0:sp_on 12,0
46090 sp_on 13,0:sp_on 14,1
46100 Buka_Input_Born_Day2:
46110 key$="":bg=0:y=0:y2=0:bg2=0
46120 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
46130 key$ = inkey$
46140 bg = strig(1)
46150 y = stick(1)
46160 y2 = stick(0)
46170 bg2 = strig(0)
46180 pause 5
46190 wend
46200 '十字キー　ここから
46210 '上の矢印　または、十字キー上
46220 if ((y = -1) or (key$ = chr$(30))) then
46230 select case No
46240 'No=-1:okのとき:初期の状態
46250 '0kボタンから３に移動
46260 '上に行く 処理
46270 case -1:
46280 No=3:sp_on 12,1:sp_on 14,0
46290 pause 200:goto Buka_Input_Born_Day2:
46300 '選択肢:3
46310 '3ボタンから 6に移動
46320 case 3:
46330 No=6:sp_on 12,0:sp_on 11,1
46340 pause 200:goto Buka_Input_Born_Day2:
46350 '6ボタンから ９に移動
46360 case 6:
46370 No=9:sp_on 10,1:sp_on 11,0
46380 pause 200:goto Buka_Input_Born_Day2:
46390 '6ボタンから ９に移動　ここまで
46400 '9で上を押して何もしない
46410 case 9:
46420 '何もしない
46430 No=9
46440 pause 200:goto Buka_Input_Born_Day2:
46450 '9で上を押しても何もしない　ここまで
46460 '上　 0ボタンから2ボタン
46470 'sp_on 6,1:1
46480 'sp_on 8,1:5
46490 'sp_on 7,1:7
46500 case 0:
46510 No=2:sp_on 13,0:sp_on 9,1:
46520 pause 200:goto Buka_Input_Born_Day2:
46530 '上  0ボタンから2ボタン　ここまで
46540 '2から５になる 上
46550 case 2:
46560 No=5:sp_on 8,1:sp_on 9,0:
46570 pause 200:goto Buka_Input_Born_Day2:
46580 case 5:
46590 No=8:sp_on 7,1:sp_on 8,0
46600 pause 200:goto Buka_Input_Born_Day2:
46610 case 8:
46620 pause 200:goto Buka_Input_Born_Day2:
46630 case 1:
46640 No=4:sp_on 5,1:sp_on 6,0
46650 pause 200:goto Buka_Input_Born_Day2:
46660 case 4:
46670 No=7:sp_on 4,1:sp_on 5,0
46680 pause 200:goto Buka_Input_Born_Day2:
46690 case 7:
46700 pause 200:goto Buka_Input_Born_Day2:
46710 end select
46720 endif
46730 '左３　ここまで
46740 '下の矢印
46750 '中央 2
46760 if ((y=1) or (key$ = chr$(31))) then
46770 select case No
46780 '9から６に下げる
46790 case 9:
46800 No=6:sp_on 11,1:sp_on 10,0
46810 pause 200:goto Buka_Input_Born_Day2:
46820 '6から３に下げる
46830 case 6:
46840 No=3:sp_on 12,1:sp_on 11,0
46850 pause 200:goto Buka_Input_Born_Day2:
46860 '3から０ｋに変える
46870 case 3:
46880 No=-1:sp_on 14,1:sp_on 12,0
46890 pause 200:goto Buka_Input_Born_Day2:
46900 'Okから下のボタンを押しても何もしない
46910 case -1:
46920 pause 200:goto Buka_Input_Born_Day2:
46930 case 8:
46940 No=5:sp_on 8,1:sp_on 7,0
46950 pause 200:goto Buka_Input_Born_Day2:
46960 case 5:
46970 No=2:sp_on 9,1:sp_on 8,0
46980 pause 200:goto Buka_Input_Born_Day2:
46990 case 2:
47000 No=0:sp_on 13,1:sp_on 9,0
47010 pause 200:goto Buka_Input_Born_Day2:
47020 case 0:
47030 pause 200:goto Buka_Input_Born_Day2:
47040 case 7:
47050 No=4:sp_on 5,1:sp_on 4,0
47060 pause 200:goto Buka_Input_Born_Day2:
47070 case 4:
47080 No=1:sp_on 6,1:sp_on 5,0
47090 pause 200:goto Buka_Input_Born_Day2:
47100 case 1:
47110 pause 200:goto Buka_Input_Born_Day2:
47120 end select
47130 endif
47140 '左へボタン 十字キー　左　or 　カーソル左
47150 if ((y2 = -1) or (key$ = chr$(29))) then
47160 select case No
47170 'Ok ボタン  Okから　左　０に行く
47180 case -1:
47190 No=0:sp_on 13,1:sp_on 14,0
47200 pause 200:goto Buka_Input_Born_Day2:
47210 '0 ボタン  左　何もしない
47220 case 0:
47230 pause 200:goto Buka_Input_Born_Day2:
47240 case 3:
47250 No=2:sp_on 9,1:sp_on 12,0:
47260 pause 200:goto Buka_Input_Born_Day2:
47270 case 2:
47280 No=1:sp_on 6,1:sp_on 9,0:
47290 pause 200:goto Buka_Input_Born_Day2:
47300 case 1:
47310 pause 200:goto Buka_Input_Born_Day2:
47320 case 6:
47330 No=5:sp_on 8,1:sp_on 11,0
47340 pause 200:goto Buka_Input_Born_Day2:
47350 case 5:
47360 No=4:sp_on 5,1:sp_on 8,0
47370 pause 200:goto Buka_Input_Born_Day2:
47380 case 4:
47390 pause 200:goto Buka_Input_Born_Day2:
47400 case 9:
47410 No=8:sp_on 7,1:sp_on 10,0
47420 pause 200:goto Buka_Input_Born_Day2:
47430 case 8:
47440 No=7:sp_on 4,1:sp_on 7,0
47450 pause 200:goto Buka_Input_Born_Day2:
47460 case 7:
47470 pause 200:goto Buka_Input_Born_Day2:
47480 end select
47490 endif
47500 '右  十字キー　右　or カーソル　右
47510 if ((y2 = 1) or (key$ = chr$(28))) then
47520 select case No
47530 '0ボタンからokボタン右に移動
47540 case 0:
47550 No=-1:sp_on 14,1:sp_on 13,0
47560 pause 200:goto Buka_Input_Born_Day2:
47570 '0ボタンからokボタン 右に移動　ここまで
47580 'OKボタンで右を押して何もしない
47590 case -1:
47600 pause 200:goto Buka_Input_Born_Day2:
47610 case 1:
47620 No=2:sp_on 9,1:sp_on 6,0
47630 pause 200:goto Buka_Input_Born_Day2:
47640 case 2:
47650 No=3:sp_on 12,1:sp_on 9,0
47660 pause 200:goto Buka_Input_Born_Day2:
47670 case 3:
47680 pause 200:goto Buka_Input_Born_Day2:
47690 case 4:
47700 No=5:sp_on 8,1:sp_on 5,0
47710 pause 200:goto Buka_Input_Born_Day2:
47720 case 5:
47730 No=6:sp_on 11,1:sp_on 8,0
47740 pause 200:goto Buka_Input_Born_Day2:
47750 case 7:
47760 No=8:sp_on 7,1:sp_on 4,0
47770 pause 200:goto Buka_Input_Born_Day2:
47780 case 8:
47790 No=9:sp_on 10,1:sp_on 7,0
47800 pause 200:goto Buka_Input_Born_Day2:
47810 case 9:
47820 pause 200:goto Buka_Input_Born_Day2:
47830 case 6:
47840 pause 200:goto Buka_Input_Born_Day2:
47850 end select
47860 'Okから右ボタンを押して何もしない ここまで
47870 endif
47880 '十字キー　ここまで
47890 '右の丸ボタンを押したとき
47900 if ((bg = 2) or (key$ = chr$(13))) then
47910 'count :決定ボタンを押した回数
47920 select case (count)
47930 '1桁目入力
47940 case 0:
47950 count = 1:
47960 if (No = -1) then
47970 '1桁目　OKでは何もしない
47980 'goto check:
47990 No=0
48000 else
48010 'ok以外のボタンを押したとき
48020 buf_buka_day = No:buf_buka_Day$ = str$(No)
48030 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
48040 buf_buka_Day$ = str$(No) + "*"
48050 endif
48060 a=No
48070 buf_Buka_Born_Day(2) = buf_buka_day
48080 locate 1,3
48090 print"                                      "
48100 color RGB(255,255,255)
48110 locate 1,3
48120 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48130 endif
48140 check2:
48150 if (No >= 1 and No <= 9) then
48160 sp_on 14,0
48170 goto Buka_Input_Born_Day2:
48180 else
48190 sp_on 14,0
48200 goto Result_Business_Aisyou:
48210 end
48220 endif
48230 case 1:
48240 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
48250 count = 2:
48260 'locate 2,3
48270 'color RGB(255,255,255)
48280 'print "生まれた日(1日~31日):";buf_Day$
48290 'Okボタンを押したときの処理
48300 '入力値　10未満のとき
48310 'c = buf_day
48320 if (No = -1) then
48330 'c=buf_day
48340 ' buf_day = c
48350 'buf_Day$ = str$(buf_day)
48360 '10以下のとき
48370 No=0
48380 if (buf_day < 10) then
48390 sp_on 14,0
48400 goto Result_Business_Aisyou:
48410 end
48420 endif
48430 else
48440 sp_on 14,0
48450 'c=No
48460 buf_buka_day = a * 10 + No
48470 buf_buka_Day$ = str$(buf_buka_day)
48480 buf_Buka_Born_Day(2) = buf_buka_day
48490 locate 0,3
48500 color Rgb(255,255,255)
48510 print "                                       "
48520 locate 1,3
48530 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48540 goto Buka_Input_Born_Day2:
48550 endif
48560 '生まれた日　2桁目の数字　or 1桁の数字 + ok
48570 case 2:
48580 count=0
48590 'c=val(buf_Day$)
48600 'buf_day=c*10+No
48610 'buf_Day$=str$(buf_day)
48620 'day=buf_day
48630 'locate 2,3
48640 'print "生まれた日(1日〜31日):";buf_Day$
48650 'No=-1:ok ボタンを押したとき
48660 if (No = -1) then No=0
48670 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
48680 sp_on 14,0
48690 goto Result_Business_Aisyou:
48700 else
48710 goto Buka_Input_Born_Day2:
48720 endif
48730 'Okボタン以外を押したとき
48740 else
48750 c=val(buf_buka_Day$)
48760 buf_buka_day = c * 10 + No
48770 buf_buka_Day$ = str$(buf_buka_day)
48780 locate 1,3
48790 print "                "
48800 locate 1,3
48810 print "生まれた日(1日~31日):"+buf_buka_Day$
48820 goto Buka_Input_Born_Day2:
48830 'endif
48840 case 3:
48850 count=4
48860 'c=val(buf_day$)
48870 'buf_day=c*10+No
48880 'buf_day$=str$(buf_day)
48890 'locate 2,3
48900 'print "生まれた日を入れてください:";buf_day$
48910 'year=val(buf_year$)
48920 if (No = -1) then
48930 'goto Buka_Input_Born_Day:
48940 sp_on 14,0:
48950 goto complate_jyoushi:
48960 else
48970 goto Buka_Input_Born_Month2:
48980 endif
48990 'case 4:
49000 'bufyear=buf_year
49010 'if (No=-1) then
49020 'buf_day = val(buf_day$)
49030 'bufday = buf_day
49040 'sp_on 14,0
49050 goto complate_jyoushi:
49060 'else
49070 'goto Buka_Input_Born_Day2:
49080 'endif
49090 end select
49100 endif
49110 if (bg2=2) then
49120 select case count2
49130 case 0:
49140 if (No=-1) then
49150 'buf_day=0:buf_Day$="**"
49160 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
49170 count=0
49180 buf_buka_day=0:buf_buka_Day$="**"
49190 goto rewrite_day3:
49200 else
49210 buf_buka_day=0:buf_buka_Day$="**"
49220 ui_msg"値が範囲外です"
49230 endif
49240 goto rewrite_day3:
49250 else
49260 goto rewrite_day3:
49270 endif
49280 rewrite_day3:
49290 locate 2,3
49300 color rgb(255,255,255)
49310 print "                                      "
49320 locate 1,3
49330 print "生まれた日(1日~31日):"+buf_buka_Day$
49340 goto Buka_Input_Born_Day2:
49350 end select
49360 endif
49370 '3.部下の生まれた日'
49380 '部下'
49390 '--------------------------------------------'
49400 'ビジネの相性　結果表示
49410 Result_Business_Aisyou:
49420 cls 3:init "kb:4"
49430 a=0:b=0:c=0:d=0:e=0:f=0
49440 bg=0:key$=""
49450 gload Gazo$ + "Screen1.png",0,0,0
49460 gload Gazo$ + "downscreen.png",0,0,800
49470 sp_on 14,0
49480 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
49490 buf_Buka = Kabara_Num(d,e,f)
49500 a_2 = buf_Buka
49510 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
49520 locate 0,1
49530 color rgb(255,0,0)
49540 print "●.相性診断結果１"
49550 locate 0,4:
49560 color rgb(255,255,255)
49570 print "1.上司の名前:";buffer_name$(0)
49580 locate 0,6
49590 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
49600 locate 0,8
49610 print "2.部下の名前:";buffer_name$(1)
49620 locate 0,10
49630 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
49640 locate 0,12
49650 print "3.上司と部下の相性:";Result_Aisyou$
49660 locate 1,15
49670 color rgb(0,0,0)
49680 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
49690 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
49700 bg = strig(1)
49710 key$ = inkey$
49720 bg2 = strig(0)
49730 pause 5
49740 wend
49750 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
49760 if (bg2 = 2) then
49770 cls 3:goto Business_Aishou_Input_1_parson:
49780 endif
49790 'ビジネスの相性占い　結果2　説明
49800 Result_Business_Aisyou2:
49810 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
49820 gload Gazo$ + "Screen1.png",0,0,0
49830 locate 0,1
49840 color rgb(255,0,0)
49850 print "●.相性の説明"
49860 color rgb(255,255,255)
49870 locate 0,4
49880 print "相性:";Result_Aisyou$
49890 locate 0,6:
49900 print "相性の説明:";buf$
49910 locate 0,15
49920 color rgb(0,0,0)
49930 print "右の丸ボタン:トップ,左のボタン:前の画面"
49940 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
49950 bg = strig(1)
49960 bg2 = strig(0)
49970 key$ = inkey$
49980 pause 5
49990 wend
50000 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50010 if ((bg2 = 2)) then goto Result_Business_Aisyou:
50020 '自作関数 ここから
50030 func read_explain$(ba$)
50040 d$=""
50050 buf_String$=""
50060 if ba$="A" then
50070 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
50080 line input #1,a$
50090 a1$=mid$(a$,1,12)
50100 a2$=mid$(a$,13,17)
50110 a3$=mid$(a$,30,17)
50120 a4$=mid$(a$,47,18)
50130 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
50140 buf_String$ = a5$
50150 close #1
50160 endif
50170 if ba$="B"  then
50180 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
50190 line input #1,b$
50200 b1$=mid$(b$,1,15)
50210 b2$=mid$(b$,16,21)
50220 'b3$=mid$(b$,33,3)
50230 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
50240 buf_String$ = b4$
50250 close #1
50260 endif
50270 if ba$="C"  then
50280 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
50290 line input #1,c$
50300 c1$ = Mid$(c$,1,15)
50310 c2$ = Mid$(c$,16,33)
50320 c3$ = c1$ + chr$(13) + c2$
50330 buf_String$ = c3$
50340 close #1
50350 endif
50360 if ba$="D" then
50370 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
50380 line input #1,d$
50390 d1$=mid$(d$,1,15)
50400 d2$=mid$(d$,16,22)
50410 d3$=mid$(d$,38,7)
50420 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
50430 buf_String$ = d4$
50440 close #1
50450 endif
50460 if ba$="E"  then
50470 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
50480 line input #1,e$
50490 e1$=Mid$(e$,1,16)
50500 e2$=Mid$(e$,17,16)
50510 e3$=Mid$(e$,33,12)
50520 e4$=Mid$(e$,45,17)
50530 e5$=Mid$(e$,62,17)
50540 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
50550 buf_String$ = e6$
50560 close #1
50570 endif
50580 if ba$="F" then
50590 '改行を追加して表示を調整
50600 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
50610 line input #1,f$
50620 f1$=Mid$(f$,1,15)
50630 f2$=Mid$(f$,16,12)
50640 buf_String$ = f1$+chr$(13)+f2$
50650 close #1
50660 endif
50670 if ba$="G" then
50680 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
50690 line input #1,g$
50700 g1$ = mid$(g$,1,16)
50710 g2$ = mid$(g$,17,18)
50720 g3$ = mid$(g$,36,21)
50730 g4$ = mid$(g$,56,6)
50740 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
50750 buf_String$ = g5$
50760 close #1
50770 endif
50780 if ba$="H" then
50790 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
50800 line input #1,h$
50810 h1$=Mid$(h$,1,17)
50820 h2$=Mid$(h$,18,21)
50830 h3$=Mid$(h$,39,20)
50840 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
50850 buf_String$ = h$
50860 close #1
50870 endif
50880 if ba$ = "I" then
50890 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
50900 line input #1,i$
50910 i1$=Mid$(i$,1,10)
50920 i2$=Mid$(i$,11,13)
50930 i3$=Mid$(i$,25,16)
50940 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
50950 buf_String$ = i$
50960 close #1
50970 endif
50980 buffer$ = buf_String$
50990 endfunc buffer$
51000 'カバラ数（数秘番号を求める）
51010 func Kabara_Num(buffer_Year,month,day)
51020 '=============================
51030 'a1:4桁のうちの1桁目を求める
51040 '例 a1:1234の4が1桁目
51050 'a2:4桁のうちの2桁目を求める
51060 '例:a2:1234の3が2桁目
51070 'a3:4桁のうちの3桁目を求める
51080 '例 a3:1234の2が3桁目
51090 'a4:4桁のうちの4桁目を求める
51100 '例 a4:1234の1が4桁目
51110 '==============================
51120 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
51130 Year = buffer_Year
51140 '処理1　整数部分を取り出す。
51150 a4 = fix(Year / 1000)
51160 a3 = fix(Year / 100) - (a4 * 10)
51170 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
51180 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
51190 '処理　２　取り出した整数部分を足す。
51200 a_ = a1 + a2 + a3 + a4 +month + day
51210 'a1=0:a2=0:a3=0:a4=0
51220 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
51230 buffer = a_
51240 'else
51250 goto recomp2:
51260 'if (a_ = 10) then
51270 '  buffer = 1
51280 endif
51290 recomp2:
51300 a5=0:a6=0
51310 a5 = fix(a_ / 10)
51320 a6 = (a_) - (a5 * 10)
51330 a_ = a5 + a6
51340 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
51350 '結果に行く
51360 goto Res2:
51370 '  if ((a_>11) and (a_<99)) then
51380 else
51390 '再度計算
51400 goto recomp2:
51410 endif
51420 '     a1 = fix(a_ / 10)
51430 '     a2 = a_ - (a1 * 10)
51440 '     a_ = a1 + a2
51450 '     buffer = a_
51460 'endif
51470 'else
51480 '    bffer = a_
51490 'endif
51500 'endif
51510 'else
51520 'talk "プログラムを終了します。"
51530 'end
51540 'endif
51550 'kabara = 10
51560 Res2:
51570 kabara = a_
51580 endfunc kabara
51590 func Kabara_Aisyou$(buff1,buff2)
51600 a=0:b=0
51610 '範囲　1~9
51620 if ((buff1 > 0 and buff1 < 10)) then
51630 a = buff1
51640 else
51650 Select case buff1
51660 case 11:
51670 buff1=9:a=buff1
51680 case 22:
51690 buff1=10:a=buff1
51700 end select
51710 endif
51720 '範囲　１~９
51730 if ((buff2 > 0 and buff2 < 10)) then
51740 b = buff2
51750 else
51760 select case buff2
51770 case 11:
51780 buff2=9:b=buff2
51790 case 12:
51800 buff2=10:b=buff2
51810 end select
51820 endif
51830 Aisyou$ = Buffer_Business_Aisyou$(a,b)
51840 endfunc Aisyou$
51850 '=============================
51860 '自作関数 ここまで
51870 '1.数秘術　トップ画面
51880 '
51890 'Data_eraseを一番最後に持ってくる
51900 '=============================
51910 Data_erase:
51920 'メモリー削除
51930 erase buf_name1$
51940 erase buf_name2$
51950 erase buffer
51960 erase buf_chart$
51970 erase Buffer_Business_Aisyou$
51980 erase buffer_name$
51990 '上司の誕生日
52000 erase buf_Jyoushi_Born_Day
52010 '部下の誕生日
52020 erase buf_Buka_Born_Day
52030 erase buf_year
52040 erase buf_month
52050 erase buf_day
52060 'フォーカスライン
52070 erase Forcus1_buffer$
52080 erase Forcus2_buffer$
52090 erase Forcus3_buffer$
52100 buffer$ = ""
52110 buf$ = ""
52120 buf_year$ = ""
52130 buf_Jyoushi_Kabara_Num = 0
52140 buf_Buka_Kabara_Num = 0
52150 count = 0
52160 buf_Month$ = ""
52170 buf_Day$ = ""
52180 b=0
52190 c=0
52200 return
