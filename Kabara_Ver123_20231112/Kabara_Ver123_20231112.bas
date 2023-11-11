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
430 Version$ = "Ver:1.2.3_20231112"
440 'Gazo file Folder
450 Gazo$ = "./data/Picture/"
460 'Voice files 2023
470 Voice$ = "./data/Voice/Voice/"
480 'BirtheyeChart Data:20230626
490 Birth_eye_chart$ = "./data/chart_data/"
500 'Data File
510 Data$ = "./data/data/"
520 'Business Aisyou 結果説明保存フォルダ
530 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
540 '変数定義 パート
550 b=0:c=0
560 dim buf_name1$(10),buf_name2$(10)
570 dim buffer(9),buf_chart$(26,2)
580 'ビジネスの相性　データー
590 dim Buffer_Business_Aisyou$(12,12)
600 '生れた年代
610 dim buf_year(4):buf_year$ = ""
620 dim buf_month(2)
630 dim buf_day(2)
640 'フォーカスライン　配列
650 dim Forcus1_buffer$(3)
660 dim Forcus2_buffer$(3)
670 dim Forcus3_buffer$(2)
680 '生れた月
690 buf_Month$ = ""
700 '生れた日
710 buf_Day$ = ""
720 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
730 dim buffer_name$(3)
740 '1-1.上司の誕生日(数値データー)
750 dim buf_Jyoushi_Born_Day(3)
760 '1-2.上司の数秘ナンバー(数値データー)
770 buf_Jyoushi_Kabara_Num = 0
780 '2-1.部下の誕生日(数値データー)
790 dim buf_Buka_Born_Day(3)
800 '2-2.部下の数秘ナンバー(数秘データー)
810 buf_Buka_Kabara_Num = 0
820 count=0
830 '部下の数秘ナンバー
840 'File 読み込み
850 '1.ビジネスの相性占い
860 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
870 for i=0 to 11
880 for j=0 to 11
890 input #1,a$
900 Buffer_Business_Aisyou$(j,i) = a$
910 next j
920 next i
930 close #1
940 '2.Birth Eye chart$
950 '2.バーズアイグリッドを読み込む
960 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
970 for j=0 to 25
980 for i=0 to 1
990 input #1,a$
1000 buf_chart$(j,i) = a$
1010 next i
1020 next j
1030 close #1
1040 'File 読み込み　ここまで
1050 'Main画面
1060 screen 1,1,1,1
1070 Main_Screen:
1080 cls 3:
1090 No=0
1100 gload Gazo$ + "Selection.png",1,5,200
1110 gload Gazo$ + "Selection.png",1,5,300
1120 gload Gazo$ + "Selection.png",1,5,400
1130 gload Gazo$ + "Selection.png",1,5,500
1140 '4
1150 gload Gazo$ + "Selection.png",1,35,300
1160 '5
1170 gload Gazo$ + "Selection.png",1,35,400
1180 '6
1190 gload Gazo$ + "Selection.png",1,35,500
1200 '7
1210 gload Gazo$ + "Selection.png",1,70,300
1220 '8
1230 gload Gazo$ + "Selection.png",1,70,400
1240 '9
1250 gload Gazo$ + "Selection.png",1,70,500
1260 '10
1270 gload Gazo$ + "Selection.png",1,110,300
1280 '11
1290 gload Gazo$ + "Selection.png",1,110,400
1300 '12
1310 gload Gazo$ + "Selection.png",1,110,500
1320 '13:0
1330 gload Gazo$ + "Selection.png",1,150,400
1340 gload Gazo$ + "Selection.png",1,200,400
1350 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1360 gload Gazo$ + "downscreen.png",0,0,800
1370 sp_def 0,(5,300),32,32
1380 sp_def 1,(5,400),32,32
1390 sp_def 2,(5,500),32,32
1400 sp_def 3,(5,600),32,32
1410 '1
1420 sp_def 4,(35,300),32,32
1430 '2
1440 sp_def 5,(35,400),32,32
1450 '3
1460 sp_def 6,(35,500),32,32
1470 '4
1480 sp_def 7,(70,300),32,32
1490 '5
1500 sp_def 8,(70,400),32,32
1510 '6
1520 sp_def 9,(70,500),32,32
1530 '7
1540 sp_def 10,(110,300),32,32
1550 '8
1560 sp_def 11,(110,400),32,32
1570 '9
1580 sp_def 12,(110,400),32,32
1590 sp_def 13,(150,400),32,32
1600 sp_def 14,(200,400),32,32
1610 'Sprite OFF
1620 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1630 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1640 sp_put 0,(5,300),0,0
1650 sp_put 1,(5,400),1,0
1660 sp_put 2,(5,500),2,0
1670 sp_put 3,(5,600),3,0
1680 '1
1690 sp_put 4,(130,300),4,0
1700 '2
1710 sp_put 5,(130,400),5,0
1720 '3
1730 sp_put 6,(130,500),6,0
1740 '4
1750 sp_put 7,(340,300),7,0
1760 '5
1770 sp_put 8,(340,400),8,0
1780 '6
1790 sp_put 9,(340,500),9,0
1800 '7
1810 sp_put 10,(540,300),10,0
1820 '8
1830 sp_put 11,(540,400),11,0
1840 '9
1850 sp_put 12,(540,500),12,0
1860 '
1870 sp_put 13,(340,600),13,0
1880 sp_put 14,(540,600),14,0
1890 Main_Top:
1900 'Main Message 2023.06.07
1910 '再生を止める
1920 play ""
1930 init "kb:4"
1940 'font 32:
1950 font 48
1960 print chr$(13) + chr$(13) + chr$(13)
1970 color rgb(217,255,212)
1980 print "番号を選んでください" + chr$(13)
1990 '0
2000 print " :1.数秘術占い" + chr$(13)
2010 '1
2020 print " :2.設 定" + chr$(13)
2030 '2
2040 print " :3.ヘルプ" + chr$(13)
2050 '3
2060 print " :4.(プログラムを)終了する" + chr$(13)
2070 COLOR rgb(0,0,0):No=0
2080 locate 1,15
2090 print "                                       "
2100 locate 1,15:print "1.数秘術占いを選択"
2110 play Voice$ + "Voice_Main_Message_20230607.mp3"
2120 Main_Screen_Select:
2130 y = 0:key$ = "":bg = 0:bg2=0
2140 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2150 y = stick(1)
2160 '"May (2023)"
2170 key$ = inkey$
2180 bg = strig(1)
2190 bg2 = strig(0)
2200 pause 2
2210 wend
2220 '1.
2230 'ジョイパッドのソース ソート　ここから
2240 'カーソル　下 or 十字キー下
2250 if ((y = 1) or (key$ = chr$(31))) then
2260 select case No
2270 case 0:
2280 '1
2290 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2300 case 1:
2310 '2
2320 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2330 case 2:
2340 '3
2350 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2360 case 3:
2370 '0
2380 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2390 end select
2400 endif
2410 '2.
2420 'カーソル　上　or 十字キー  上
2430 if ((y = -1) or (key$ = chr$(30))) then
2440 select case No
2450 case 0:
2460 '3
2470 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2480 case 1:
2490 '0
2500 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2510 case 2:
2520 '1
2530 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2540 case 3:
2550 '2
2560 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2570 end select
2580 endif
2590 'ジョイパッド　ソース 部分　ここまで
2600 'ジョイパッド右　　or Enter key 決定
2610 if ((bg = 2) OR (key$ = chr$(13))) then
2620 select case No
2630 case 0:
2640 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2650 case 1:
2660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2670 case 2:
2680 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2690 case 3:
2700 play "":pause 200
2710 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2720 end select
2730 endif
2740 if (bg2 = 2) then
2750 play "":pause 200
2760 play Voice$ + "Voice_Main_Message_20230607.mp3"
2770 goto Main_Screen_Select:
2780 endif
2790 'Version
2800 Version:
2810 cls 3:PLAY ""
2820 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2830 gload Gazo$ + "downscreen.png",0,0,800
2840 init"kb:4":font 32
2850 'talk"バージョン情報です"
2860 'Message :Version
2870 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2880 locate 0,5
2890 color rgb(0,0,0)
2900 print "・Title:数秘術占い";chr$(13)
2910 print "・" + Version$ + chr$(13)
2920 print "・Author:licksjp"+chr$(13)
2930 print "・E-mail:licksjp@gmail.com" + chr$(13)
2940 locate 0,18
2950 print "(C)licksjp All rights " + chr$(13)
2960 locate 13,19
2970 print "reserved since 2009"+chr$(13)
2980 locate 0,23
2990 color rgb(255,255,255)
3000 print "ジョイパッドの右を押してください"
3010 Versionn_Selection:
3020 bg = 0:key$ = "":bg2 = 0
3030 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3040 bg = strig(1)
3050 key$ = inkey$
3060 bg2 = strig(0)
3070 pause 2
3080 wend
3090 if ((bg = 2) or (key$ = chr$(13))) then
3100 pause 200:cls 4:goto Main_Screen:
3110 endif
3120 if (bg2=2) then
3130 play "":pause 200
3140 play Voice$ + "Voice_Version_Message_20230607.mp3"
3150 goto Versionn_Selection:
3160 endif
3170 '1.数秘ナンバーを求める
3180 '誕生日入力(生れた年代)
3190 Input_Seireki:
3200 cls 3:play "":count=0:count2=0
3210 'No = -1:Okのとき
3220 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3230 for i=0 to 3
3240 buf_year(i)=0
3250 next i
3260 gload Gazo$ + "Screen1.png",0,0,0
3270 gload Gazo$ + "downscreen.png",0,0,800
3280 'Init"kb:2"
3290 '音声ファイル再生 2023.06.07
3300 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3310 font 48
3320 locate 0,1
3330 '文字色：黒　 color rgb(0,0,0)
3340 color rgb(255,255,255)
3350 print "生まれた年代を入れて下さい" + chr$(13)
3360 color rgb(255,255,255)
3370 locate 2,3
3380 print "生まれた年代(西暦4桁):" + buf_year$
3390 '=============================
3400 'テンキーの色(1~９)　白 ,決定ボタン　青
3410 '=============================
3420 color rgb(255,255,255)
3430 'locate 4,6:print ":7"
3440 'locate 9,6:print ":8"
3450 'locate 12,6:print ":9"
3460 locate 4,6
3470 print ":7  :8  :9" + chr$(13)
3480 color rgb(255,255,255)
3490 locate 4,8
3500 print ":4  :5  :6" + chr$(13)
3510 color rgb(255,255,255)
3520 locate 4,10
3530 print ":1  :2  :3" + chr$(13)
3540 locate 4,12
3550 print "    :0"
3560 locate 12,12
3570 color rgb(255,0,0)
3580 print ":Ok"
3590 sp_on 4,0: sp_on 5,0:sp_on 6,0
3600 sp_on 7,0:sp_on 8,0:sp_on 9,0
3610 sp_on 10,0:sp_on 11,0:sp_on 12,0
3620 sp_on 13,0:sp_on 14,1
3630 Input_Seireki2:
3640 key$="":bg=0:y=0:y2=0:bg2=0:
3650 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3660 key$ = inkey$
3670 bg = strig(1)
3680 y = stick(1)
3690 y2 = stick(0)
3700 bg2 = strig(0)
3710 pause 15
3720 wend
3730 '十字キー　ここから
3740 '上の矢印　または、十字キー上
3750 if ((y = -1) or (key$ = chr$(30))) then
3760 select case No
3770 'No=-1:okのとき:初期の状態
3780 '0kボタンから３に移動
3790 '上に行く 処理
3800 case -1:
3810 No=3:sp_on 12,1:sp_on 14,0
3820 pause 200:goto Input_Seireki2:
3830 '選択肢:3
3840 '3ボタンから 6に移動
3850 case 3:
3860 No=6:sp_on 12,0:sp_on 11,1
3870 pause 200:goto Input_Seireki2:
3880 '6ボタンから ９に移動
3890 case 6:
3900 No=9:sp_on 10,1:sp_on 11,0
3910 pause 200:goto Input_Seireki2:
3920 '6ボタンから ９に移動　ここまで
3930 '9で上を押して何もしない
3940 case 9:
3950 '何もしない
3960 No=9
3970 pause 200:goto Input_Seireki2:
3980 '9で上を押しても何もしない　ここまで
3990 '上　 0ボタンから2ボタン
4000 'sp_on 6,1:1
4010 'sp_on 8,1:5
4020 'sp_on 7,1:7
4030 case 0:
4040 No=2:sp_on 13,0:sp_on 9,1:
4050 pause 200:goto Input_Seireki2:
4060 '上  0ボタンから2ボタン　ここまで
4070 '2から５になる 上
4080 case 2:
4090 No=5:sp_on 8,1:sp_on 9,0:
4100 pause 200:goto Input_Seireki2:
4110 case 5:
4120 No=8:sp_on 7,1:sp_on 8,0
4130 pause 200:goto Input_Seireki2:
4140 case 8:
4150 pause 200:goto Input_Seireki2:
4160 case 1:
4170 No=4:sp_on 5,1:sp_on 6,0
4180 pause 200:goto Input_Seireki2:
4190 case 4:
4200 No=7:sp_on 4,1:sp_on 5,0
4210 pause 200:goto Input_Seireki2:
4220 case 7:
4230 pause 200:goto Input_Seireki2:
4240 end select
4250 endif
4260 '左３　ここまで
4270 '下の矢印
4280 '中央 2
4290 if ((y=1) or (key$ = chr$(31))) then
4300 select case No
4310 '9から６に下げる
4320 case 9:
4330 No=6:sp_on 11,1:sp_on 10,0
4340 pause 200:goto Input_Seireki2:
4350 '6から３に下げる
4360 case 6:
4370 No=3:sp_on 12,1:sp_on 11,0
4380 pause 200:goto Input_Seireki2:
4390 '3から０ｋに変える
4400 case 3:
4410 No=-1:sp_on 14,1:sp_on 12,0
4420 pause 200:goto Input_Seireki2:
4430 'Okから下のボタンを押しても何もしない
4440 case -1:
4450 pause 200:goto Input_Seireki2:
4460 case 8:
4470 No=5:sp_on 8,1:sp_on 7,0
4480 pause 200:goto Input_Seireki2:
4490 case 5:
4500 No=2:sp_on 9,1:sp_on 8,0
4510 pause 200:goto Input_Seireki2:
4520 case 2:
4530 No=0:sp_on 13,1:sp_on 9,0
4540 pause 200:goto Input_Seireki2:
4550 case 0:
4560 pause 200:goto Input_Seireki2:
4570 case 7:
4580 No=4:sp_on 5,1:sp_on 4,0
4590 pause 200:goto Input_Seireki2:
4600 case 4:
4610 No=1:sp_on 6,1:sp_on 5,0
4620 pause 200:goto Input_Seireki2:
4630 case 1:
4640 pause 200:goto Input_Seireki2:
4650 end select
4660 endif
4670 '左へボタン 十字キー　左　or 　カーソル左
4680 if ((y2 = -1) or (key$ = chr$(29))) then
4690 select case No
4700 'Ok ボタン  Okから　左　０に行く
4710 case -1:
4720 No=0:sp_on 13,1:sp_on 14,0
4730 pause 200:goto Input_Seireki2:
4740 '0 ボタン  左　何もしない
4750 case 0:
4760 pause 200:goto Input_Seireki2:
4770 case 3:
4780 No=2:sp_on 9,1:sp_on 12,0:
4790 pause 200:goto Input_Seireki2:
4800 case 2:
4810 No=1:sp_on 6,1:sp_on 9,0:
4820 pause 200:goto Input_Seireki2:
4830 case 1:
4840 pause 200:goto Input_Seireki2:
4850 case 6:
4860 No=5:sp_on 8,1:sp_on 11,0
4870 pause 200:goto Input_Seireki2:
4880 case 5:
4890 No=4:sp_on 5,1:sp_on 8,0
4900 pause 200:goto Input_Seireki2:
4910 case 4:
4920 pause 200:goto Input_Seireki2:
4930 case 9:
4940 No=8:sp_on 7,1:sp_on 10,0
4950 pause 200:goto Input_Seireki2:
4960 case 8:
4970 No=7:sp_on 4,1:sp_on 7,0
4980 pause 200:goto Input_Seireki2:
4990 case 7:
5000 pause 200:goto Input_Seireki2:
5010 end select
5020 endif
5030 '右  十字キー　右　or カーソル　右
5040 if ((y2 = 1) or (key$ = chr$(28))) then
5050 select case No
5060 '0ボタンからokボタン右に移動
5070 case 0:
5080 No=-1:sp_on 14,1:sp_on 13,0
5090 pause 200:goto Input_Seireki2:
5100 '0ボタンからokボタン 右に移動　ここまで
5110 'OKボタンで右を押して何もしない
5120 case -1:
5130 pause 200:goto Input_Seireki2:
5140 case 1:
5150 No=2:sp_on 9,1:sp_on 6,0
5160 pause 200:goto Input_Seireki2:
5170 case 2:
5180 No=3:sp_on 12,1:sp_on 9,0
5190 pause 200:goto Input_Seireki2:
5200 case 3:
5210 pause 200:goto Input_Seireki2:
5220 case 4:
5230 No=5:sp_on 8,1:sp_on 5,0
5240 pause 200:goto Input_Seireki2:
5250 case 5:
5260 No=6:sp_on 11,1:sp_on 8,0
5270 pause 200:goto Input_Seireki2:
5280 case 7:
5290 No=8:sp_on 7,1:sp_on 4,0
5300 pause 200:goto Input_Seireki2:
5310 case 8:
5320 No=9:sp_on 10,1:sp_on 7,0
5330 pause 200:goto Input_Seireki2:
5340 case 9:
5350 pause 200:goto Input_Seireki2:
5360 case 6:
5370 pause 200:goto Input_Seireki2:
5380 end select
5390 'Okから右ボタンを押して何もしない ここまで
5400 endif
5410 '十字キー　ここまで
5420 if ((bg=2) or (key$=chr$(13))) then
5430 select case count
5440 case 0:
5450 count=1
5460 if (No=-1) then
5470 count=0
5480 'Okボタンを押したとき
5490 goto Input_Seireki2:
5500 else
5510 '===================================
5520 'Okボタン以外が押されたとき  1桁目の入力
5530 '===================================
5540 count2=1
5550 if (No >= 1 and No <= 2) then
5560 buf_year$="":buf_year$ = str$(No)
5570 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5580 n1 = len("生まれた年代(西暦4桁): ")
5590 locate 2,3
5600 color rgb(255,255,255)
5610 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5620 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5630 'print "生まれた年代(西暦4桁):";buf_year2$
5640 print buf_Born_Year_line$
5650 goto Input_Seireki2:
5660 else
5670 count=0
5680 ui_msg"数字が範囲外になります。"
5690 buf_year$="":buf_year=0
5700 goto Input_Seireki2:
5710 endif
5720 endif
5730 case 1:
5740 count = 2
5750 if (No = -1) then
5760 count = 1
5770 goto Input_Seireki2:
5780 else
5790 count2 = 1
5800 b = val(buf_year$)
5810 buf_year = b * 10 + No
5820 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
5830 locate 2,3
5840 color rgb(255,255,255)
5850 print "                                                                "
5860 locate 2,3
5870 print "生まれた年代(西暦4桁):";buf_year2$
5880 'if (No = -1) then
5890 'count=1
5900 goto Input_Seireki2:
5910 endif
5920 case 2:
5930 count=3
5940 if (No=-1) then
5950 count =2
5960 goto Input_Seireki2:
5970 else
5980 b = val(buf_year$)
5990 buf_year = b*10 + No
6000 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6010 locate 2,3
6020 color rgb(255,255,255)
6030 print "                                        "
6040 locate 2,3
6050 print "生まれた年代(西暦4桁):";buf_year2$
6060 goto Input_Seireki2:
6070 endif
6080 case 3:
6090 count=4
6100 if (No = -1) then
6110 count=3
6120 goto Input_Seireki2:
6130 else
6140 b = val(buf_year$)
6150 buf_year = b * 10 + No
6160 buf_year$ = str$(buf_year)
6170 locate 2,3
6180 color RGB(255,255,255)
6190 print "                                      "
6200 locate 2,3
6210 print "生まれた年代(西暦4桁):";buf_year$
6220 buf_year=val(buf_year$)
6230 'year=val(buf_year$)
6240 'if (No=-1) then
6250 'goto Input_Born_Month:
6260 'else
6270 goto Input_Seireki2:
6280 endif
6290 case 4:
6300 'bufyear=buf_year
6310 if (No = -1) then
6320 buf_year = val(buf_year$)
6330 bufyear = buf_year
6340 sp_on 14,0
6350 goto Input_Born_Month:
6360 else
6370 goto Input_Seireki2:
6380 endif
6390 end select
6400 endif
6410 '=========================
6420 'bg2　キャンセルボタン
6430 '=========================
6440 if (bg2 = 2) then
6450 select case count2
6460 case 0:
6470 'Okボタンを押したときの処理
6480 if (No = -1) then
6490 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6500 'count = 0
6510 locate 2,3
6520 color rgb(255,255,255)
6530 print "                                      "
6540 locate 2,3
6550 print "生まれた年代（西暦4桁):";buf_year$
6560 '=============================
6570 'case 0:前の画面に戻る 数秘術トップメニュー
6580 '=============================
6590 sp_on 14,0:goto Kabara_TopScreen:
6600 else
6610 'count=0
6620 '(buf_year=0) then
6630 buf_year = 0:buf_year$ = string$(4,"*")
6640 goto Input_Seireki2:
6650 'endif
6660 endif
6670 case 1:
6680 if (No = -1) then
6690 count2 = 0:count = 0
6700 buf$=right$(buf_year$,1)
6710 if (val(buf$) >= 1 and val(buf$) <= 9) then
6720 buf_year$ = "****":buf_year=0
6730 color rgb(255,255,255)
6740 locate 0,3:
6750 print "                                      "
6760 locate 2,3
6770 print "生まれた年代（西暦4桁):" + buf_year$
6780 goto Input_Seireki2:
6790 endif
6800 else
6810 endif
6820 end select
6830 endif
6840 end
6850 'Input"生れた年代(4桁,〜2025年):",year
6860 'if year > 2025 then goto Input_Seireki:
6870 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6880 '"4桁目"
6890 'bufyear4 = fix(year / 1000)
6900 '"3桁目"
6910 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6920 '"2桁目"
6930 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6940 '"1桁目"
6950 'bufyear1 = fix((year - ((bufyear4*
6960 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6970 '生れた月を入力
6980 Input_Born_Month:
6990 cls 3:play "":count=0:count2=0
7000 'No=-1:Okのとき
7010 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7020 for i=0 to 1
7030 buf_month(i)=0
7040 next i
7050 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7060 gload Gazo$ + "Screen1.png",0,0,0
7070 gload Gazo$ + "downscreen.png",0,0,800
7080 'Init"kb:2"
7090 '音声ファイル再生 2023.06.07
7100 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7110 font 48
7120 locate 0,1
7130 '文字色：黒　 color rgb(0,0,0)
7140 '文字色:白
7150 color rgb(255,255,255)
7160 print "生まれた月を入れて下さい" + chr$(13)
7170 '文字色:白
7180 color rgb(255,255,255)
7190 locate 2,3
7200 '文字色:白
7210 print "生まれた月(1月~12月):";buf_Month$
7220 color rgb(255,255,255)
7230 'locate 4,6:print ":7"
7240 'locate 9,6:print ":8"
7250 'locate 12,6:print ":9"
7260 locate 4,6
7270 '文字色:赤
7280 print ":7  :8  :9" + chr$(13)
7290 color rgb(255,255,255)
7300 locate 4,8
7310 print ":4  :5  :6" + chr$(13)
7320 color rgb(255,255,255)
7330 locate 4,10
7340 print ":1  :2  :3" + chr$(13)
7350 locate 4,12
7360 print "    :0"
7370 locate 12,12
7380 color rgb(255,0,0)
7390 print ":Ok"
7400 sp_on 4,0: sp_on 5,0:sp_on 6,0
7410 sp_on 7,0:sp_on 8,0:sp_on 9,0
7420 sp_on 10,0:sp_on 11,0:sp_on 12,0
7430 sp_on 13,0:sp_on 14,1
7440 Input_Born_Month2:
7450 key$="":bg=0:y=0:y2=0:bg2=0
7460 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7470 key$ = inkey$
7480 bg = strig(1)
7490 y = stick(1)
7500 y2 = stick(0)
7510 bg2 = strig(0)
7520 pause 5
7530 wend
7540 '十字キー　ここから
7550 '上の矢印　または、十字キー上
7560 if ((y = -1) or (key$ = chr$(30))) then
7570 select case No
7580 'No=-1:okのとき:初期の状態
7590 '0kボタンから３に移動
7600 '上に行く 処理
7610 case -1:
7620 No=3:sp_on 12,1:sp_on 14,0
7630 pause 200:goto Input_Born_Month2:
7640 '選択肢:3
7650 '3ボタンから 6に移動
7660 case 3:
7670 No=6:sp_on 12,0:sp_on 11,1
7680 pause 200:goto Input_Born_Month2:
7690 '6ボタンから ９に移動
7700 case 6:
7710 No=9:sp_on 10,1:sp_on 11,0
7720 pause 200:goto Input_Born_Month2:
7730 '6ボタンから ９に移動　ここまで
7740 '9で上を押して何もしない
7750 case 9:
7760 '何もしない
7770 No=9
7780 pause 200:goto Input_Born_Month2:
7790 '9で上を押しても何もしない　ここまで
7800 '上　 0ボタンから2ボタン
7810 'sp_on 6,1:1
7820 'sp_on 8,1:5
7830 'sp_on 7,1:7
7840 case 0:
7850 No=2:sp_on 13,0:sp_on 9,1:
7860 pause 200:goto Input_Born_Month2:
7870 '上  0ボタンから2ボタン　ここまで
7880 '2から５になる 上
7890 case 2:
7900 No=5:sp_on 8,1:sp_on 9,0:
7910 pause 200:goto Input_Born_Month2:
7920 case 5:
7930 No=8:sp_on 7,1:sp_on 8,0
7940 pause 200:goto Input_Born_Month2:
7950 case 8:
7960 pause 200:goto Input_Born_Month2:
7970 case 1:
7980 No=4:sp_on 5,1:sp_on 6,0
7990 pause 200:goto Input_Born_Month2:
8000 case 4:
8010 No=7:sp_on 4,1:sp_on 5,0
8020 pause 200:goto Input_Born_Month2:
8030 case 7:
8040 pause 200:goto Input_Born_Month2:
8050 end select
8060 endif
8070 '左３　ここまで
8080 '下の矢印
8090 '中央 2
8100 if ((y=1) or (key$ = chr$(31))) then
8110 select case No
8120 '9から６に下げる
8130 case 9:
8140 No=6:sp_on 11,1:sp_on 10,0
8150 pause 200:goto Input_Born_Month2:
8160 '6から３に下げる
8170 case 6:
8180 No=3:sp_on 12,1:sp_on 11,0
8190 pause 200:goto Input_Born_Month2:
8200 '3から０ｋに変える
8210 case 3:
8220 No=-1:sp_on 14,1:sp_on 12,0
8230 pause 200:goto Input_Born_Month2:
8240 'Okから下のボタンを押しても何もしない
8250 case -1:
8260 pause 200:goto Input_Born_Month2:
8270 case 8:
8280 No=5:sp_on 8,1:sp_on 7,0
8290 pause 200:goto Input_Born_Month2:
8300 case 5:
8310 No=2:sp_on 9,1:sp_on 8,0
8320 pause 200:goto Input_Born_Month2:
8330 case 2:
8340 No=0:sp_on 13,1:sp_on 9,0
8350 pause 200:goto Input_Born_Month2:
8360 case 0:
8370 pause 200:goto Input_Born_Month2:
8380 case 7:
8390 No=4:sp_on 5,1:sp_on 4,0
8400 pause 200:goto Input_Born_Month2:
8410 case 4:
8420 No=1:sp_on 6,1:sp_on 5,0
8430 pause 200:goto Input_Born_Month2:
8440 case 1:
8450 pause 200:goto Input_Born_Month2:
8460 end select
8470 endif
8480 '左へボタン 十字キー　左　or 　カーソル左
8490 if ((y2 = -1) or (key$ = chr$(29))) then
8500 select case No
8510 'Ok ボタン  Okから　左　０に行く
8520 case -1:
8530 No=0:sp_on 13,1:sp_on 14,0
8540 pause 200:goto Input_Born_Month2:
8550 '0 ボタン  左　何もしない
8560 case 0:
8570 pause 200:goto Input_Born_Month2:
8580 case 3:
8590 No=2:sp_on 9,1:sp_on 12,0:
8600 pause 200:goto Input_Born_Month2:
8610 case 2:
8620 No=1:sp_on 6,1:sp_on 9,0:
8630 pause 200:goto Input_Born_Month2:
8640 case 1:
8650 pause 200:goto Input_Born_Month2:
8660 case 6:
8670 No=5:sp_on 8,1:sp_on 11,0
8680 pause 200:goto Input_Born_Month2:
8690 case 5:
8700 No=4:sp_on 5,1:sp_on 8,0
8710 pause 200:goto Input_Born_Month2:
8720 case 4:
8730 pause 200:goto Input_Born_Month2:
8740 case 9:
8750 No=8:sp_on 7,1:sp_on 10,0
8760 pause 200:goto Input_Born_Month2:
8770 case 8:
8780 No=7:sp_on 4,1:sp_on 7,0
8790 pause 200:goto Input_Born_Month2:
8800 case 7:
8810 pause 200:goto Input_Born_Month2:
8820 end select
8830 endif
8840 '右  十字キー　右　or カーソル　右
8850 if ((y2 = 1) or (key$ = chr$(28))) then
8860 select case No
8870 '0ボタンからokボタン右に移動
8880 case 0:
8890 No=-1:sp_on 14,1:sp_on 13,0
8900 pause 200:goto Input_Born_Month2:
8910 '0ボタンからokボタン 右に移動　ここまで
8920 'OKボタンで右を押して何もしない
8930 case -1:
8940 pause 200:goto Input_Born_Month2:
8950 case 1:
8960 No=2:sp_on 9,1:sp_on 6,0
8970 pause 200:goto Input_Born_Month2:
8980 case 2:
8990 No=3:sp_on 12,1:sp_on 9,0
9000 pause 200:goto Input_Born_Month2:
9010 case 3:
9020 pause 200:goto Input_Born_Month2:
9030 case 4:
9040 No=5:sp_on 8,1:sp_on 5,0
9050 pause 200:goto Input_Born_Month2:
9060 case 5:
9070 No=6:sp_on 11,1:sp_on 8,0
9080 pause 200:goto Input_Born_Month2:
9090 case 7:
9100 No=8:sp_on 7,1:sp_on 4,0
9110 pause 200:goto Input_Born_Month2:
9120 case 8:
9130 No=9:sp_on 10,1:sp_on 7,0
9140 pause 200:goto Input_Born_Month2:
9150 case 9:
9160 pause 200:goto Input_Born_Month2:
9170 case 6:
9180 pause 200:goto Input_Born_Month2:
9190 end select
9200 'Okから右ボタンを押して何もしない ここまで
9210 endif
9220 '十字キー　ここまで
9230 '右の丸ボタン　決定キー
9240 if ((bg=2) or (key$=chr$(13))) then
9250 select case count
9260 case 0:
9270 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9280 if (buf_month = 1 or buf_month = 2) then
9290 locate 2,3
9300 color RGB(255,255,255)
9310 print "生まれた月(1月~12月):";buf_Month2$
9320 else
9330 locate 2,3
9340 color Rgb(255,255,255)
9350 print "生まれた月(1月~12月):";buf_Month$
9360 endif
9370 goto Input_Born_Month2:
9380 case 1:
9390 count = 2:c = No
9400 c = val(buf_Month$)
9410 if (No = -1) then
9420 'if No=1 or No=2 then
9430 'endif
9440 month = buf_month
9450 buf_month=val(buf_Month$)
9460 month=buf_month
9470 '生まれた日に飛ぶ
9480 goto Input_Born_Day:
9490 else
9500 buf_month = c*10 + No
9510 buf_Month$= str$(buf_month)
9520 locate 2,3
9530 color Rgb(255,255,255)
9540 print "生まれた月(1月~12月):";buf_Month$
9550 goto Input_Born_Month2:
9560 endif
9570 case 2:
9580 count=3:count2=1
9590 'c= val(buf_Month$)
9600 'buf_month = c*10 + No
9610 'buf_Month$ = str$(buf_month)
9620 'locate 2,3
9630 'print "生まれた月(1月～12月):";buf_Month$
9640 'goto Input_Born_Month2:
9650 'case 3:
9660 'count=4
9670 'b=val(buf_month$)
9680 'buf_month=c*10+No
9690 'buf_Month$=str$(buf_month)
9700 'locate 2,3
9710 'print "生まれた月(1月～12月):";buf_Month$
9720 'buf_month=val(buf_Month$)
9730 'year=val(buf_year$)
9740 if (No=-1) then
9750 goto Input_Born_Day:
9760 else
9770 'goto Input_Born_Month2:
9780 endif
9790 'case 4:
9800 'bufyear=buf_year
9810 'if (No=-1) then
9820 'buf_month = val(buf_Month$)
9830 'month = buf_month
9840 'sp_on 14,0
9850 'goto Input_Born_Day:
9860 'else
9870 'goto Input_Born_Month2:
9880 'endif
9890 end select
9900 endif
9910 '左の丸ボタン　キャンセル
9920 if (bg2=2) then
9930 select case count2
9940 case 0:
9950 if (No = -1) then
9960 buf_month=0:buf_Month$="**"
9970 count2=0:count=0
9980 locate 0,3:print "                                              "
9990 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10000 'if (buf_month > 1) then
10010 sp_on 14,0:goto Input_Born_Month2:
10020 'goto rewrite:
10030 else
10040 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10050 buf_month=0:buf_Month$="**"
10060 locate 2,3
10070 color rgb(255,255,255)
10080 print "                                       "
10090 goto rewrite:
10100 if (No>2) then
10110 ui_msg"値が範囲外です。"
10120 goto rewrite:
10130 endif
10140 endif
10150 'endif
10160 rewrite:
10170 locate 2,3
10180 color rgb(255,255,255)
10190 print "                                      "
10200 locate 2,3
10210 print "生まれた月(1月~12月):";buf_Month$
10220 goto Input_Born_Month2:
10230 endif
10240 case 1:
10250 buf_Month$="**":buf_month=0
10260 if No=-1 then
10270 count2=2:count=0
10280 locate 0,3
10290 print "                                      "
10300 locate 2,3:
10310 print "生まれた月(1月~12月):"+buf_Month$
10320 goto Input_Born_Month2:
10330 endif
10340 case 2:
10350 sp_on 14,0:goto Input_Seireki:
10360 end select
10370 endif
10380 'endif
10390 end
10400 'end
10410 '生れた日を入力
10420 Input_Born_Day:
10430 '生まれた日入力
10440 cls 3:play ""
10450 'No=-1:Okのとき
10460 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10470 for i=0 to 1
10480 buf_day(i)=0
10490 next i
10500 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10510 gload Gazo$ + "Screen1.png",0,0,0
10520 gload Gazo$ + "downscreen.png",0,0,800
10530 'Init"kb:2"
10540 '音声ファイル再生 2023.06.07
10550 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10560 font 48
10570 locate 0,1
10580 '文字色：黒　 color rgb(0,0,0)
10590 color rgb(255,255,255)
10600 print "生まれた日を入れて下さい" + chr$(13)
10610 color rgb(255,255,255)
10620 locate 2,3
10630 print "生まれた日(1日~31日):";buf_Day$
10640 color rgb(255,255,255)
10650 'locate 4,6:print ":7"
10660 'locate 9,6:print ":8"
10670 'locate 12,6:print ":9"
10680 locate 4,6
10690 print ":7  :8  :9" + chr$(13)
10700 '=======================
10710 'テンキー　色　白　決定ボタン　青
10720 '=======================
10730 color rgb(255,255,255)
10740 locate 4,8
10750 print ":4  :5  :6" + chr$(13)
10760 color rgb(255,255,255)
10770 locate 4,10
10780 print ":1  :2  :3" + chr$(13)
10790 locate 4,12
10800 print "    :0"
10810 locate 12,12
10820 color rgb(255,0,0)
10830 print ":Ok"
10840 sp_on 4,0: sp_on 5,0:sp_on 6,0
10850 sp_on 7,0:sp_on 8,0:sp_on 9,0
10860 sp_on 10,0:sp_on 11,0:sp_on 12,0
10870 sp_on 13,0:sp_on 14,1
10880 Input_Born_Day2:
10890 key$="":bg=0:y=0:y2=0:bg2=0
10900 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10910 key$ = inkey$
10920 bg = strig(1)
10930 y = stick(1)
10940 y2 = stick(0)
10950 bg2 = strig(0)
10960 pause 5
10970 wend
10980 '十字キー　ここから
10990 '上の矢印　または、十字キー上
11000 if ((y = -1) or (key$ = chr$(30))) then
11010 select case No
11020 'No=-1:okのとき:初期の状態
11030 '0kボタンから３に移動
11040 '上に行く 処理
11050 case -1:
11060 No=3:sp_on 12,1:sp_on 14,0
11070 pause 200:goto Input_Born_Day2:
11080 '選択肢:3
11090 '3ボタンから 6に移動
11100 case 3:
11110 No=6:sp_on 12,0:sp_on 11,1
11120 pause 200:goto Input_Born_Day2:
11130 '6ボタンから ９に移動
11140 case 6:
11150 No=9:sp_on 10,1:sp_on 11,0
11160 pause 200:goto Input_Born_Day2:
11170 '6ボタンから ９に移動　ここまで
11180 '9で上を押して何もしない
11190 case 9:
11200 '何もしない
11210 No=9
11220 pause 200:goto Input_Born_Day2:
11230 '9で上を押しても何もしない　ここまで
11240 '上　 0ボタンから2ボタン
11250 'sp_on 6,1:1
11260 'sp_on 8,1:5
11270 'sp_on 7,1:7
11280 case 0:
11290 No=2:sp_on 13,0:sp_on 9,1:
11300 pause 200:goto Input_Born_Day2:
11310 '上  0ボタンから2ボタン　ここまで
11320 '2から５になる 上
11330 case 2:
11340 No=5:sp_on 8,1:sp_on 9,0:
11350 pause 200:goto Input_Born_Day2:
11360 case 5:
11370 No=8:sp_on 7,1:sp_on 8,0
11380 pause 200:goto Input_Born_Day2:
11390 case 8:
11400 pause 200:goto Input_Born_Day2:
11410 case 1:
11420 No=4:sp_on 5,1:sp_on 6,0
11430 pause 200:goto Input_Born_Day2:
11440 case 4:
11450 No=7:sp_on 4,1:sp_on 5,0
11460 pause 200:goto Input_Born_Day2:
11470 case 7:
11480 pause 200:goto Input_Born_Day2:
11490 end select
11500 endif
11510 '左３　ここまで
11520 '下の矢印
11530 '中央 2
11540 if ((y=1) or (key$ = chr$(31))) then
11550 select case No
11560 '9から６に下げる
11570 case 9:
11580 No=6:sp_on 11,1:sp_on 10,0
11590 pause 200:goto Input_Born_Day2:
11600 '6から３に下げる
11610 case 6:
11620 No=3:sp_on 12,1:sp_on 11,0
11630 pause 200:goto Input_Born_Day2:
11640 '3から０ｋに変える
11650 case 3:
11660 No=-1:sp_on 14,1:sp_on 12,0
11670 pause 200:goto Input_Born_Day2:
11680 'Okから下のボタンを押しても何もしない
11690 case -1:
11700 pause 200:goto Input_Born_Day2:
11710 case 8:
11720 No=5:sp_on 8,1:sp_on 7,0
11730 pause 200:goto Input_Born_Day2:
11740 case 5:
11750 No=2:sp_on 9,1:sp_on 8,0
11760 pause 200:goto Input_Born_Day2:
11770 case 2:
11780 No=0:sp_on 13,1:sp_on 9,0
11790 pause 200:goto Input_Born_Day2:
11800 case 0:
11810 pause 200:goto Input_Born_Day2:
11820 case 7:
11830 No=4:sp_on 5,1:sp_on 4,0
11840 pause 200:goto Input_Born_Day2:
11850 case 4:
11860 No=1:sp_on 6,1:sp_on 5,0
11870 pause 200:goto Input_Born_Day2:
11880 case 1:
11890 pause 200:goto Input_Born_Day2:
11900 end select
11910 endif
11920 '左へボタン 十字キー　左　or 　カーソル左
11930 if ((y2 = -1) or (key$ = chr$(29))) then
11940 select case No
11950 'Ok ボタン  Okから　左　０に行く
11960 case -1:
11970 No=0:sp_on 13,1:sp_on 14,0
11980 pause 200:goto Input_Born_Day2:
11990 '0 ボタン  左　何もしない
12000 case 0:
12010 pause 200:goto Input_Born_Day2:
12020 case 3:
12030 No=2:sp_on 9,1:sp_on 12,0:
12040 pause 200:goto Input_Born_Day2:
12050 case 2:
12060 No=1:sp_on 6,1:sp_on 9,0:
12070 pause 200:goto Input_Born_Day2:
12080 case 1:
12090 pause 200:goto Input_Born_Day2:
12100 case 6:
12110 No=5:sp_on 8,1:sp_on 11,0
12120 pause 200:goto Input_Born_Day2:
12130 case 5:
12140 No=4:sp_on 5,1:sp_on 8,0
12150 pause 200:goto Input_Born_Day2:
12160 case 4:
12170 pause 200:goto Input_Born_Day2:
12180 case 9:
12190 No=8:sp_on 7,1:sp_on 10,0
12200 pause 200:goto Input_Born_Day2:
12210 case 8:
12220 No=7:sp_on 4,1:sp_on 7,0
12230 pause 200:goto Input_Born_Day2:
12240 case 7:
12250 pause 200:goto Input_Born_Day2:
12260 end select
12270 endif
12280 '右  十字キー　右　or カーソル　右
12290 if ((y2 = 1) or (key$ = chr$(28))) then
12300 select case No
12310 '0ボタンからokボタン右に移動
12320 case 0:
12330 No=-1:sp_on 14,1:sp_on 13,0
12340 pause 200:goto Input_Born_Day2:
12350 '0ボタンからokボタン 右に移動　ここまで
12360 'OKボタンで右を押して何もしない
12370 case -1:
12380 pause 200:goto Input_Born_Day2:
12390 case 1:
12400 No=2:sp_on 9,1:sp_on 6,0
12410 pause 200:goto Input_Born_Day2:
12420 case 2:
12430 No=3:sp_on 12,1:sp_on 9,0
12440 pause 200:goto Input_Born_Day2:
12450 case 3:
12460 pause 200:goto Input_Born_Day2:
12470 case 4:
12480 No=5:sp_on 8,1:sp_on 5,0
12490 pause 200:goto Input_Born_Day2:
12500 case 5:
12510 No=6:sp_on 11,1:sp_on 8,0
12520 pause 200:goto Input_Born_Day2:
12530 case 7:
12540 No=8:sp_on 7,1:sp_on 4,0
12550 pause 200:goto Input_Born_Day2:
12560 case 8:
12570 No=9:sp_on 10,1:sp_on 7,0
12580 pause 200:goto Input_Born_Day2:
12590 case 9:
12600 pause 200:goto Input_Born_Day2:
12610 case 6:
12620 pause 200:goto Input_Born_Day2:
12630 end select
12640 'Okから右ボタンを押して何もしない ここまで
12650 endif
12660 '十字キー　ここまで
12670 '右の丸ボタンを押したとき
12680 if ((bg = 2) or (key$ = chr$(13))) then
12690 'count :決定ボタンを押した回数
12700 select case (count mod 3)
12710 '1桁目入力
12720 case 0:
12730 count = 1:
12740 if (No = -1) then
12750 '1桁目　OKでは何もしない
12760 'goto check:
12770 else
12780 'ok以外のボタンを押したとき
12790 buf_day = No:buf_Day$ = str$(No)
12800 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12810 locate 2,3
12820 color RGB(255,255,255)
12830 print "生まれた日(1日~31日):";buf_Day2$
12840 endif
12850 check:
12860 if (No >= 1 and No <= 9) then
12870 sp_on 14,0
12880 goto Input_Born_Day2:
12890 else
12900 sp_on 14,0
12910 goto complate:
12920 endif
12930 case 1:
12940 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12950 count = 2:
12960 'locate 2,3
12970 'color RGB(255,255,255)
12980 'print "生まれた日(1日~31日):";buf_Day$
12990 'Okボタンを押したときの処理
13000 '入力値　10未満のとき
13010 'c = buf_day
13020 if (No = -1) then
13030 'c=buf_day
13040 ' buf_day = c
13050 'buf_Day$ = str$(buf_day)
13060 '10以下のとき
13070 if (buf_day < 10) then
13080 sp_on 14,0
13090 goto complate:
13100 endif
13110 else
13120 'c = No
13130 buf_day = c * 10 + No
13140 'buf_day = c
13150 buf_Day$ =str$(buf_day)
13160 locate 2,3
13170 color Rgb(255,255,255)
13180 print "生まれた日(1日~31日):";buf_Day$
13190 goto Input_Born_Day2:
13200 endif
13210 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13220 case 2:
13230 count=0
13240 'c=val(buf_Day$)
13250 'buf_day=c*10+No
13260 'buf_Day$=str$(buf_day)
13270 'day=buf_day
13280 'locate 2,3
13290 'print "生まれた日(1日〜31日):";buf_Day$
13300 'No=-1:ok ボタンを押したとき
13310 if (No = -1) then
13320 if ((buf_day > 0) and (buf_day < 32)) then
13330 sp_on 14,0
13340 goto complate:
13350 else
13360 goto Input_Born_Day2:
13370 endif
13380 'Okボタン以外を押したとき
13390 else
13400 c=val(buf_Day$)
13410 buf_day = c * 10 + No
13420 buf_Day$ = str$(buf_day)
13430 locate 2,3
13440 print "生まれた日(1日~31日):";buf_Day$
13450 'goto Input_Born_Day2:
13460 endif
13470 case 3:
13480 count = 4
13490 c=val(buf_day$)
13500 buf_day = c * 10 + No
13510 buf_day$ = str$(buf_day)
13520 locate 2,3
13530 print "生まれた日を入れてください:";buf_Day$
13540 year = val(buf_year$)
13550 if (No = -1) then
13560 'goto Input_Born_Day:
13570 sp_on 14,0:No=0
13580 goto complate:
13590 else
13600 goto Input_Born_Month2:
13610 endif
13620 'case 4:
13630 'bufyear=buf_year
13640 'if (No=-1) then
13650 'buf_day = val(buf_day$)
13660 'bufday = buf_day
13670 'sp_on 14,0
13680 'goto complate:
13690 'else
13700 'goto Input_Born_Day2:
13710 'endif
13720 end select
13730 endif
13740 if (bg2=2) then
13750 select case count2
13760 case 0:
13770 if (No=-1) then
13780 'buf_day=0:buf_Day$="**"
13790 if (buf_day>=1 and buf_day<=31) then
13800 count=0:No=0
13810 buf_day=0:buf_Day$="**"
13820 'goto rewrite_day:
13830 else
13840 buf_day=0:buf_Day$="**"
13850 ui_msg"値が範囲外です"
13860 endif
13870 goto rewrite_day:
13880 else
13890 goto rewrite_day:
13900 endif
13910 rewrite_day:
13920 locate 2,3
13930 color rgb(255,255,255)
13940 print "                                      "
13950 locate 2,3
13960 print "生まれた日(1日~31日):";buf_Day$
13970 goto Input_Born_Day2:
13980 end select
13990 endif
14000 '--------------------------Input_Born_Day:-------------------------------------------
14010 complate:
14020 suhiNo = buf_year + buf_month + buf_day
14030 'if (suhiNo < 1000) then
14040 a1 = fix(suhiNo / 1000)
14050 a2 = fix(suhiNo/100) - (a1 * 10)
14060 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14070 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14080 'endif
14090 bufsuhiNo = a1+a2+a3+a4
14100 recomp:
14110 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14120 'bufsuhiNo=a6
14130 goto Kabara_Result_Screen:
14140 else
14150 a5 = fix(bufsuhiNo / 10)
14160 a6 = bufsuhiNo - a5 * 10
14170 bufsuhiNo = a6 + a5
14180 if (bufsuhiNo = 10) then
14190 bufsuhiNo=1
14200 endif
14210 goto Kabara_Result_Screen:
14220 endif
14230 Kabara_Result_Screen:
14240 cls 3:
14250 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14260 gload Gazo$ + "downscreen.png",0,0,800
14270 init "kb:4"
14280 '
14290 play ""
14300 select case (bufsuhiNo)
14310 case 1:
14320 play Voice$ + "Result_Kabara_1_20230607.mp3"
14330 case 2:
14340 play Voice$ + "Result_Kabara_2_20230607.mp3"
14350 case 3:
14360 play Voice$ + "Result_Kabara_3_20230607.mp3"
14370 case 4:
14380 play Voice$ + "Result_Kabara_4_20230607.mp3"
14390 case 5:
14400 play Voice$ + "Result_Kabara_5_20230607.mp3"
14410 case 6:
14420 play Voice$ + "Result_Kabara_6_20230607.mp3"
14430 case 7:
14440 play Voice$ + "Result_Kabara_7_20230607.mp3"
14450 case 8:
14460 play Voice$ + "Result_Kabara_8_20230607.mp3"
14470 case 9:
14480 play Voice$ + "Result_Kabara_9_20230607.mp3"
14490 case 11:
14500 play Voice$ + "Result_Kabara_11_20230607.mp3"
14510 case 22:
14520 play Voice$ + "Result_Kabara_22_20230607.mp3"
14530 case 33:
14540 play Voice$ + "Result_Kabara_33_20230607.mp3"
14550 end select
14560 font 48
14570 key$ = "":bg = 0:bg2=0
14580 'COLOR rgb(255,255,255)
14590 'print "●診断結果"+chr$(13)
14600 locate 0,2
14610 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14620 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14630 locate 0,15:
14640 color rgb(255,255,255)
14650 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14660 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14670 key$ = inkey$
14680 bg = strig(1)
14690 bg2 = strig(0)
14700 pause 5
14710 wend
14720 'Enter or JoyPad right
14730 if ((key$ = chr$(13)) or (bg = 2)) then
14740 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14750 endif
14760 if ((bg2=2)) then
14770 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14780 endif
14790 'suhiNo1 = fix(bufsuhiNo / 10)
14800 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14810 'bufsuhiNo = suhiNo1 + suhiNo2
14820 'goto recomp:
14830 'endif
14840 'print chr$(13)
14850 'color rgb(255,0,0)
14860 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14870 'key$ = input$(1)
14880 'if key$ = chr$(13) then goto Main_Screen:
14890 '"Menu2 占いのルール"
14900 Suhi_Rule:
14910 '数秘術占いルールの表示
14920 cls 3:play "":init"kb:4"
14930 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14940 gload Gazo$ + "downscreen.png",0,0,800
14950 'cls 3:
14960 'line (0,0) - (1500,60),rgb(0,0,255),bf
14970 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14980 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
14990 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15000 locate 0,2:Font 48
15010 print chr$(13) + chr$(13)
15020 color rgb(0,0,0)
15030 print "誕生日を単数変換します";chr$(13)
15040 print "数字の範囲:1~９,11,22,33";chr$(13)
15050 print "例:1973年11月22日の場合";chr$(13)
15060 print "1+9+7+3+11+22=53 ";chr$(13)
15070 print "→ 5 + 3 = 8" + chr$(13)
15080 print "故に8が数秘ナンバーになります";chr$(13)
15090 locate 0,15
15100 color rgb(255,255,255)
15110 print "ジョイパッドの右を押してください"
15120 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15130 '"key$ = input$(1)"
15140 '"if key$ = chr$(13) then goto Main_Screen:"
15150 suhi_rule_selection:
15160 bg = 0:key$ = "":bg2=0
15170 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15180 bg = strig(1)
15190 key$ = inkey$
15200 bg2=strig(0)
15210 pause 2
15220 wend
15230 if ((bg = 2) or (key$ = chr$(13))) then
15240 pause 200:cls 4:goto Main_Screen:
15250 endif
15260 if (bg2=2) then
15270 play "":pause 200
15280 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15290 goto suhi_rule_selection:
15300 endif
15310 '2.設定
15320 '2-1.トップ画面に戻る
15330 Setting:
15340 cls 3:init"kb:4":font 48:No=0
15350 play ""
15360 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15370 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15380 gload Gazo$ + "downscreen.png",0,0,800
15390 print chr$(13) + chr$(13) + chr$(13)
15400 color rgb(255,255,255):sp_on 0,1:
15410 print "番号を選んでください" + chr$(13)
15420 print " :1.トップ画面に戻る"+ chr$(13)
15430 print " :2.未実装" + chr$(13)
15440 print " :3.未実装" + chr$(13)
15450 print " :4.未実装" + chr$(13)
15460 color rgb(0,0,0)
15470 locate 1,15:print "1.トップ画面に戻るを選択"
15480 Setting_Selection:
15490 y=0:key$="":bg=0:bg2=0
15500 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15510 'y=stick(1)
15520 key$ = inkey$
15530 bg=strig(1)
15540 bg2 = strig(0)
15550 pause 2
15560 wend
15570 if ((bg = 2) or (key$ = chr$(13))) then
15580 select case No
15590 case 0:
15600 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15610 end select
15620 endif
15630 if (bg2 = 2) then
15640 play "":pause 200
15650 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15660 goto Setting_Selection:
15670 endif
15680 '3.Help
15690 '3-1.ルールの表示
15700 '3-2.バージョン
15710 '3-3.トップに戻る
15720 Help:
15730 cls 3:Font 48:No=0
15740 play ""
15750 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15760 gload Gazo$ + "downscreen.png",0,0,800
15770 color rgb(255,255,255)
15780 print chr$(13)+chr$(13)+chr$(13)
15790 print "番号を選んでください"+chr$(13)
15800 print " :1.ルールの表示" + chr$(13)
15810 print " :2.バージョンの表示" + chr$(13)
15820 print " :3.参考文献" + chr$(13)
15830 print " :4.トップ画面に戻る" + chr$(13)
15840 color rgb(0,0,0)
15850 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15860 locate 1,15
15870 print "                                      "
15880 locate 1,15
15890 print "1.ルールの表示を選択"
15900 init"kb:4"
15910 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15920 Help_Select:
15930 bg=0:key$="":y=0:bg2=0
15940 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15950 y = stick(1)
15960 key$ = inkey$
15970 bg = strig(1)
15980 bg2 = strig(0)
15990 pause 5
16000 wend
16010 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16020 if ((y = 1) or (key$ = chr$(31))) then
16030 select case No
16040 case 0:
16050 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16060 case 1:
16070 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16080 case 2:
16090 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16100 case 3:
16110 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16120 end select
16130 endif
16140 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16150 if ((y = -1) or (key$ = chr$(30))) then
16160 select case No
16170 case 0:
16180 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16190 case 1:
16200 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16210 case 2:
16220 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16230 case 3:
16240 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16250 end select
16260 endif
16270 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16280 if ((bg = 2) or (key$ = chr$(13))) then
16290 select case No
16300 case 0:
16310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16320 case 1:
16330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16340 case 2:
16350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16360 '3:Top画面に行く
16370 case 3:
16380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16390 end select
16400 endif
16410 if (bg2 = 2) then
16420 play "":pause 200
16430 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16440 goto Help_Select:
16450 endif
16460 '数秘術占い　トップ画面
16470 Kabara_TopScreen:
16480 cls 3:play ""
16490 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16500 gload Gazo$ + "downscreen.png",0,0,800
16510 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16520 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16530 init"kb:4":No=0
16540 color rgb(255,255,255)
16550 print chr$(13)+chr$(13)+chr$(13)
16560 print "番号を選んでください" + chr$(13)
16570 print " :1.数秘術占い" + chr$(13)
16580 print " :2.バーズアイグリット" + chr$(13)
16590 print " :3.相性占い" + chr$(13)
16600 print " :4.トップ画面に戻る" + chr$(13)
16610 color rgb(0,0,0)
16620 locate 1,15:print "1.数秘術占いを選択"
16630 Kabara_TopScreen2:
16640 y = 0:bg = 0:key$ = "":bg2 = 0
16650 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16660 key$ = inkey$
16670 bg = strig(1)
16680 y = stick(1)
16690 bg2 = strig(0)
16700 pause 5
16710 wend
16720 '選択ボタン
16730 'カーソル　と　ジョイパッド　の下
16740 if ((y = 1) or (key$ = chr$(31))) then
16750 select case No
16760 case 2:
16770 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16780 case 3:
16790 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16800 case 0:
16810 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16820 case 1:
16830 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16840 end select
16850 endif
16860 'カーソル　上
16870 if ((y=-1) or (key$=chr$(30))) then
16880 select case No
16890 case 0:
16900 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16910 case 1:
16920 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16930 case 2:
16940 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16950 case 3:
16960 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16970 end select
16980 endif
16990 '決定ボタン
17000 'ジョイパッドの右　or  Enter key
17010 if ((bg = 2) or (key$ = chr$(13))) then
17020 select case No
17030 case 0:
17040 '1.数秘術占い
17050 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17060 case 3:
17070 '4.メイン画面にいく
17080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17090 case 1:
17100 '2.バースアイグリッド
17110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17120 case 2:
17130 '3.相性占い
17140 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17150 end select
17160 endif
17170 if (bg2 = 2) then
17180 play "":pause 200
17190 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17200 goto Kabara_TopScreen2:
17210 endif
17220 '1.バースアイグリット　名入力
17230 Inputname1:
17240 cls 3:init"kb:4":font 48
17250 bg=0:key$="":y=0:No=-1:name1$="":i=1
17260 gload Gazo$ + "Selection.png",1,10,100
17270 'Line 1:☓
17280 'A:選択肢
17290 sp_def 15,(50,250),16,16
17300 'B:選択肢
17310 sp_def 16,(200,250),16,16
17320 'C:選択肢
17330 sp_def 17,(350,250),16,16
17340 'D:選択肢
17350 sp_def 18,(500,250),16,16
17360 'E:選択肢
17370 sp_def 19,(630,250),16,16
17380 'F:選択肢
17390 sp_def 20,(780,250),16,16
17400 'G:選択肢
17410 sp_def 21,(930,250),16,16
17420 'Line 2:☓
17430 'H:選択肢
17440 sp_def 22,(50,345),16,16
17450 'I:選択肢
17460 sp_def 23,(200,345),16,16
17470 'J:選択肢
17480 sp_def 24,(350,345),16,16
17490 'K:選択肢
17500 sp_def 25,(500,345),16,16
17510 'L:選択肢
17520 sp_def 26,(630,345),16,16
17530 'M:選択肢
17540 sp_def 27,(780,345),16,16
17550 'N:選択肢
17560 sp_def 28,(930,345),16,16
17570 'Line 3:☓
17580 'O:選択肢
17590 sp_def 29,(50,440),16,16
17600 'P:選択肢
17610 sp_def 30,(200,440),16,16
17620 'Q:選択肢
17630 sp_def 31,(350,440),16,16
17640 'R:選択肢
17650 sp_def 32,(500,440),16,16
17660 'S:選択肢
17670 sp_def 33,(630,440),16,16
17680 'T:選択肢
17690 sp_def 34,(780,440),16,16
17700 'U:選択肢
17710 sp_def 35,(930,440),16,16
17720 'Line 4:◯
17730 'V:選択肢
17740 sp_def 36,(50,535),16,16
17750 'W:選択肢
17760 sp_def 37,(200,535),16,16
17770 'X:選択肢
17780 sp_def 38,(350,535),16,16
17790 'Y:選択肢
17800 sp_def 39,(500,535),16,16
17810 'Z:選択肢
17820 sp_def 40,(630,535),16,16
17830 'Ok:選択肢
17840 sp_def 41,(780,535),16,16
17850 'sp_def 42,(930,535),16,16
17860 'Line 1
17870 'A
17880 sp_on 15,0
17890 'B
17900 sp_on 16,0
17910 'C
17920 sp_on 17,0
17930 'D
17940 sp_on 18,0
17950 'E
17960 sp_on 19,0
17970 'F
17980 sp_on 20,0
17990 'G
18000 sp_on 21,0
18010 'Line 1
18020 'Line 2
18030 'H
18040 sp_on 22,0
18050 'I
18060 sp_on 23,0
18070 'J
18080 sp_on 24,0
18090 'K
18100 sp_on 25,0
18110 'L
18120 sp_on 26,0
18130 'M
18140 sp_on 27,0
18150 'N
18160 sp_on 28,0
18170 'Line 2
18180 'Line 3
18190 'O
18200 sp_on 29,0
18210 'P
18220 sp_on 30,0
18230 'Q
18240 sp_on 31,0
18250 'R
18260 sp_on 32,0
18270 'S
18280 sp_on 33,0
18290 'T
18300 sp_on 34,0
18310 'U
18320 sp_on 35,0
18330 'Line 3
18340 'Line 4
18350 'V
18360 sp_on 36,0
18370 'W
18380 sp_on 37,0
18390 'X
18400 sp_on 38,0
18410 'Y
18420 sp_on 39,0
18430 'Z
18440 sp_on 40,0
18450 'Ok
18460 sp_on 41,1
18470 'Line 4
18480 'sp_on 42,1
18490 'Line 1
18500 'sp_put 15,(50,250),0,0
18510 'sp_put 16,(200,250),0,0
18520 'sp_put 17,(350,250),0,0
18530 'sp_put 18,(500,250),0,0
18540 'sp_put 19,(630,250),0,0
18550 'sp_put 20,(780,250),0,0
18560 'sp_put 21,(930,250),0,0
18570 'Line 2
18580 'sp_put 22,(50,345),0,0
18590 'sp_put 23,(200,345),0,0
18600 'sp_put 24,(350,345),0,0
18610 'sp_put 25,(500,345),0,0
18620 'sp_put 26,(630,345),0,0
18630 'sp_put 27,(780,345),0,0
18640 'sp_put 28,(930,345),0,0
18650 'Line 3
18660 'sp_put 29,(50,440),0,0
18670 'sp_put 30,(200,440),0,0
18680 'sp_put 31,(350,440),0,0
18690 'sp_put 32,(500,440),0,0
18700 'sp_put 33,(630,440),0,0
18710 'sp_put 34,(780,440),0,0
18720 'sp_put 35,(930,440),0,0
18730 'Line 4
18740 'sp_put 36,(50,535),0,0
18750 'sp_put 37,(200,535),0,0
18760 'sp_put 38,(350,535),0,0
18770 'sp_put 39,(500,535),0,0
18780 'sp_put 40,(630,535),0,0
18790 sp_put 41,(780,535),0,0
18800 'sp_put 42,(930,536),0,0
18810 gload Gazo$ + "Screen1.png",0,0,0
18820 color rgb(255,255,255)
18830 locate 1,3
18840 print "名前の姓をアルファベットで入力してください"
18850 locate 1,5
18860 print " A  B  C  D  E  F  G"
18870 locate 1,7
18880 print " H  I  J  K  L  M  N"
18890 locate 1,9
18900 print " O  P  Q  R  S  T  U"
18910 locate 1,11
18920 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
18930 locate 1,15:color rgb(0,0,0)
18940 print "名前の姓:" + name1$
18950 select_name1:
18960 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
18970 '有効ボタン
18980 '1.決定ボタン(bg:2)
18990 '2.Enter Key$:chr$(13)
19000 '3.カーソル上 (chr$(31))
19010 '4.カーソル　左 (chr$(29))
19020 '5.ジョイパッド　上 (y:1)
19030 '6:ジョイパッド　左 (y2:-1)
19040 '7:ジョイパッド　下 (y:-1)
19050 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19060 key$ = inkey$
19070 'ジョイパッドの決定:bg
19080 bg = strig(1)
19090 y = stick(1)
19100 y2 = stick(0)
19110 pause 200
19120 wend
19130 '====================================
19140 'Birds Eye Grid 名前入力
19150 '入力スタイル　アルファベット入力
19160 'sp_on:　スプライトのオンオフ
19170 'sp_put :表示位置
19180 'No:ボタン番号
19190 '====================================
19200 'カーソルで下に行く
19210 if ((y=-1) or (key$=chr$(31))) then
19220 select case No
19230 '1.Ok ボタン
19240 'sp_on スプライトのオンオフ
19250 'sp_put スプライトを表示
19260 case -1:
19270 '1.アルファベット　入力ボタン
19280 '実装未完全なので終了
19290  'Ok → T ○ :No:20=T
19300  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19310  'T  → M ○
19320 case 20:
19330   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19340  'M  →　F ○
19350 case 13:
19360   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19370  'F  → Ok
19380 case 6:
19390   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19400 end select
19410 endif
19420 '2.決定ボタン
19430 if ((key$ = chr$(13)) OR  (bg = 2)) then
19440 select case No
19450 case -1:
19460      'スプライトをOFFにする
19470      sp_on 41,0
19480 end select
19490 endif
19500 '3.カーソル　左
19510 if (key$ = chr$(29) or (y2 =-1)) then
19520 select case No
19530 'Line 4
19540 'Line 4
19550 '1.
19560 'Z:-1 :Ok ボタン
19570 'Ok → Z
19580 case -1:
19590      'Ok →　Z
19600      'Ok ボタン OFF,Z Button ON
19610      'No=26:Z
19620      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19630 '2.
19640 '26:Zボタン Z→ Y
19650 case 26:
19660      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19670 '3.
19680 '25:Yボタン  Y → X
19690 case 25:
19700      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19710 '4
19720 '24:Xボタン X → W
19730 case 24:
19740      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19750 '23:Wボタン X → W
19760 '5
19770 case 23:
19780 '22:Vボタン W → V
19790      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19800 case 22:
19810 '-1:V→ Ok
19820      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19830 'Line 3
19840 case 20:
19850 '33:T34  → S:33 :◯
19860     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19870 case 19:
19880 '32:S:33 → R:32 :◯
19890     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19900 case 18:
19910 '31:R:32 → Q:31 :◯
19920     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19930 '30:O → P :◯
19940 case 17:
19950 '30:Q:31 → P:30 :◯
19960     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19970 case 16:
19980 '29:P:30 → O:29 :◯
19990     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20000 case 15:
20010 '28:O:29 → U:21  :◯
20020  'O:OFF,U:ON
20030     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20040 '27:U:21 → T:20  :◯
20050 case 21:
20060 'U:OFF:T:ON
20070     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20080 'Line 2
20090 '26:M:13 → L:12 : ○
20100 case 13:
20110  'M:OFF,L:ON
20120    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20130 '25:L:12 → K:11 : ○
20140 case 12:
20150    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20160 '24:K:11 → J:10 : ○
20170 case 11:
20180    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20190 '23:J:10 → I:9  : ○
20200 case 10:
20210    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20220 '22:I:9 → H:8    :○
20230 case 9:
20240     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20250 '21:H:8 → N:14:   :○
20260 case 8:
20270     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20280 '20:N:14 → M:13:   :○
20290 case 14:
20300     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20310 '●.Line 1:
20320 '19:F:20 → E:19 : ☓
20330 'F:OFF,E:ON
20340 case 6:
20350     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20360 '18:E → D
20370 'E:OFF,D:ON
20380 case 5:
20390     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20400 '17:D → C
20410 'D:OFF,C:ON
20420 case 4:
20430      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20440 case 3:
20450      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20460 case 2:
20470      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20480 case 1:
20490      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20500 case 7:
20510      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20520 end select
20530 endif
20540 '上から下の方向
20550 if ((key$ = chr$(31)) or  (y = 1)) then
20560 select case No
20570 '●.1
20580 '1:A→H
20590 case 1:
20600       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20610 '2:H→O
20620 case 8:
20630       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20640 '3:O→V
20650 case 15:
20660       No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20670 '4:V→A
20680 case 22:
20690      No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20700 '●.2
20710 '5.B→I
20720 case 2:
20730      No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20740 '6.I→P
20750 case 9:
20760      No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20770 '7.P→W
20780 case 16:
20790      No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20800 '8.W→B
20810 case 23:
20820      No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20830 '●.3
20840 '9.C→J
20850 case 3:
20860      No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
20870 '10.J→Q
20880 case 10:
20890      No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20900 '11.Q→X
20910 case 17:
20920      No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
20930 '12.X→C
20940  case 24:
20950      No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20960 '●.4
20970 '13.D→K
20980   case 4:
20990      No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21000 '14.K→R
21010  case 11:
21020      No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21030 '15.R→Y
21040  case 18:
21050      No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21060 '16.Y→D
21070  case 25:
21080     No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21090 '●.5
21100 '17.E→L
21110 case 5:
21120    No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21130 '18.L→S
21140 case 12:
21150    No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21160 '19.S→Z
21170 case 19:
21180    No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21190 '20.Z→E
21200 case 26:
21210    No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21220 '●.6
21230 '21.F→M
21240 case 6:
21250    No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21260 '22.M→T
21270 case 13:
21280    No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21290 '23.T→Ok
21300 case 20:
21310    No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21320 '24.Ok→F
21330 case -1:
21340    No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21350 '●.7
21360 '25.G→N
21370 case 7:
21380    No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21390 '26.N→U
21400 case 14:
21410    No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21420 '27.U→G
21430 case 21:
21440    No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21450 end select
21460 endif
21470 '決定ボタン　で名前の姓に文字を追加。
21480 if (key$ = chr$(13) or bg = 2) then
21490 select case No
21500 'Okボタン
21510 case -1:
21520        goto Inputname2:
21530 'Aの文字
21540 case 1:
21550       'if len(n$)=0 then
21560       n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21570       'else
21580       'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21590       'endif
21600     goto select_name1:
21610 case 2:
21620       n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
21630 end select
21640 endif
21650 Input_name1_Birdseye:
21660 cls 3:init "kb:2":
21670 gload Gazo$ + "Input_Birtheye2.png",0,0,0
21680 color rgb(255,255,255)
21690 locate 1,2:print "名前をアルファベットで入れてください"
21700 color rgb(0,0,0)
21710 locate 1,5:Input "名前（姓の部分）:",name1$
21720 '27.U→G
21730 'locate 1,5:print "Hit any key"
21740 n1 = len(name1$)
21750 if (n1 < 11) then
21760 for i=1 to n1
21770 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21780 next i
21790 endif
21800 goto Inputname2:
21810 '2.グリッドアイ　姓の入力
21820 'end
21830 Inputname2:
21840 cls 3:init"kb:2":font 48
21850 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21860 color rgb(255,255,255)
21870 locate 1,2:print "名前をアルファベットで入れてください"
21880 color rgb(0,0,0)
21890 locate 1,5:Input "名前(名の部分):",name2$
21900 n2 = len(name2$)
21910 for i=1 to n2
21920 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
21930 next i
21940 '計算領域
21950 Complate:
21960 'name1
21970 for i=0 to 25
21980 for n=1 to len(name1$)
21990 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22000 b = val(buf_chart$(i,1))
22010 buffer(b-1) = buffer(b-1) + 1
22020 endif
22030 next n
22040 next i
22050 'name2
22060 for i=0 to 25
22070 for n=1 to len(name2$)
22080 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22090 c = val(buf_chart$(i,1))
22100 buffer(c - 1) = buffer(c - 1) + 1
22110 endif
22120 next n
22130 next i
22140 '結果表示領域
22150 Result_Birtheye1:
22160 cls 3:init"kb:4":No=0
22170 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22180 gload Gazo$ + "downscreen.png",0,0,800
22190 color rgb(255,255,255)
22200 '1の表示
22210 locate 3,14:print buffer(0);
22220 '2の表示
22230 locate 3,9:print buffer(1);
22240 '3の表示
22250 locate 3,5:print buffer(2);
22260 '4の表示
22270 locate 10,14:print buffer(3);
22280 '5の表示
22290 locate 10,9:print buffer(4);
22300 '6の表示
22310 locate 10,5:print buffer(5);
22320 '7の表示
22330 locate 15,14:print buffer(6);
22340 '8の表示
22350 locate 15,9:print buffer(7);
22360 '9の表示
22370 locate 15,5:print buffer(8);
22380 'name を大文字に変換
22390 locate 5,3:print ucase$(name1$ + name2$)
22400 color rgb(0,0,0)
22410 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22420 bg=0:key$="":bg2=0
22430 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22440 'Enterと決定ボタン
22450 key$ = inkey$
22460 bg = strig(1)
22470 bg2=strig(0)
22480 pause 200
22490 wend
22500 if ((bg=2) or (key$=chr$(13))) then
22510 'データーをクリアしてトップ画面に行く
22520 'for i=0 to 8
22530 'buffer(i)=0
22540 'next i
22550 'for n=0 to 9
22560 'buf_name1$(n) = ""
22570 'buf_name2$(n) = ""
22580 'next n
22590 'Topに行く
22600 'goto Main_Screen:
22610 '次へ
22620 goto BirdsEye_Result2:
22630 endif
22640 if (bg2=2) then
22650 'データーをクリアする
22660 for i=0 to 8
22670 buffer(i)=0
22680 next i
22690 for n=0 to 9
22700 buf_name1$(n)=""
22710 buf_name2$(n)=""
22720 next n
22730 goto Main_Screen:
22740 endif
22750 'goto Result_Birtheye1:
22760 'Result_Birtheye2:
22770 'cls 3:color rgb(255,255,255)
22780 'end
22790 'Memory 消去
22800 '
22810 '横のフォーカスライン
22820 BirdsEye_Result2:
22830 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22840 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
22850 Forcus1_buffer$(2)="○"
22860 else
22870 Forcus1_buffer$(2)="☓"
22880 endif
22890 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
22900 Forcus1_buffer$(1)="○"
22910 else
22920 Forcus1_buffer$(1) = "☓"
22930 endif
22940 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
22950 Forcus1_buffer$(0)="○"
22960 else
22970 Forcus1_buffer$(0)="☓"
22980 endif
22990 gload Gazo$ + "Screen1.png",0,0,0
23000 color rgb(255,0,0):
23010 locate 1,1
23020 print "バーズアイグリッド(フォーカスライン1)"
23030 color rgb(255,255,255)
23040 locate 1,3:
23050 print "●.横のフォーカスライン"
23060 locate 1,5
23070 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23080 locate 1,7
23090 print "2.調停者ライン:"+Forcus1_buffer$(1)
23100 locate 1,9
23110 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23120 color rgb(0,0,0)
23130 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23140 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
23150 key$=inkey$
23160 bg=strig(1)
23170 bg2=strig(0)
23180 pause 200
23190 wend
23200 if ((bg=2) or (key$=chr$(13))) then
23210 goto BirdsEye_Result3:
23220 endif
23230 if (bg2=2) then
23240 goto Main_Screen:
23250 endif
23260 BirdsEye_Result3:
23270 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23280 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23290 Forcus2_buffer$(2)="○"
23300 else
23310 Forcus2_buffer$(2)="☓"
23320 endif
23330 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23340 Forcus2_buffer$(1)="○"
23350 else
23360 Forcus2_buffer$(1) = "☓"
23370 endif
23380 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23390 Forcus2_buffer$(0)="○"
23400 else
23410 Forcus2_buffer$(0)="☓"
23420 endif
23430 gload Gazo$ + "Screen1.png",0,0,0
23440 color rgb(255,0,0):
23450 locate 1,1
23460 print "バーズアイグリッド(フォーカスライン2)"
23470 color rgb(255,255,255)
23480 locate 1,3:
23490 print "●.縦のフォーカスライン"
23500 locate 1,5
23510 print "1.表現者ライン:" + Forcus2_buffer$(2)
23520 locate 1,7
23530 print "2.司令塔ライン:" + Forcus2_buffer$(1)
23540 locate 1,9
23550 print "3.指導者ライン:" + Forcus2_buffer$(0)
23560 color rgb(0,0,0)
23570 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23580 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23590 key$=inkey$
23600 bg=strig(1)
23610 bg2=strig(0)
23620 pause 200
23630 wend
23640 if ((bg = 2) or (key$ = chr$(13))) then
23650 goto BirdsEye_Result4:
23660 endif
23670 if (bg2=2) then
23680 goto Main_Screen:
23690 endif
23700 BirdsEye_Result4:
23710 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23720 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
23730 Forcus3_buffer$(1) = "○"
23740 else
23750 Forcus3_buffer$(1) = "☓"
23760 endif
23770 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23780 Forcus3_buffer$(0) = "○"
23790 else
23800 Forcus3_buffer$(0) = "☓"
23810 endif
23820 gload Gazo$ + "Screen1.png",0,0,0
23830 color rgb(255,0,0):
23840 locate 1,1
23850 print "バーズアイグリッド(フォーカスライン3)"
23860 color rgb(255,255,255)
23870 locate 1,3:
23880 print "●.斜めのフォーカスライン"
23890 locate 1,5
23900 print "1.成功者ライン:"+Forcus3_buffer$(1)
23910 locate 1,7
23920 print "2.セレブライン:"+Forcus3_buffer$(0)
23930 color rgb(0,0,0)
23940 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
23950 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23960 key$ = inkey$
23970 bg = strig(1)
23980 bg2 = strig(0)
23990 pause 200
24000 wend
24010 if ((bg=2) or (key$=chr$(13))) then
24020  goto Result_Birtheye1:
24030 endif
24040 if (bg2=2) then
24050 'データークリア
24060 for i=0 to 8
24070  buffer(i) = 0
24080 next i
24090  goto Main_Screen:
24100 endif
24110 References1:
24120 cls 3:key$ = "":bg = 0:play "":font 48-16
24130 gload Gazo$ + "Reference1_20230703.png",0,0,0
24140 print chr$(13)+chr$(13)+chr$(13)
24150 color rgb(0,0,0)
24160 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24170 print "Author:carol Adrinne,PhD"+chr$(13)
24180 print "出版社:幻冬舎" + chr$(13)
24190 print "HP:www.carolAdrienne.jp/"+chr$(13)
24200 print "ISBN:978-4-344-01394-0"+chr$(13)
24210 print "定価:1500円 + 税"+chr$(13)
24220 color rgb(255,255,255)
24230 locate 1,23
24240 print "ジョイパッド右：次へ"
24250 while (key$ <> chr$(13) and bg <> 2)
24260 bg = strig(1)
24270 key$ = inkey$
24280 wend
24290 '
24300 if ((bg = 2) or (key$ = chr$(13))) then
24310 pause 200:goto References2:
24320 endif
24330 'ユダヤの秘儀 カバラ大占術
24340 References2:
24350 cls 3:play "":bg = 0:key$ = ""
24360 gload Gazo$ + "Reference2_20230703.png",0,0,0
24370 '参考文献２
24380 'カバラ大占術
24390 print chr$(13) + chr$(13) + chr$(13)
24400 color  rgb(0,0,0):font 48-16
24410 locate 1,3
24420 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24430 print "著者：浅野　八郎" + chr$(13)
24440 print "出版社:NON BOOK" + chr$(13)
24450 print "ISBN:4-396-10364-6" + chr$(13)
24460 print "定価:829円 + 税"
24470 color rgb(255,255,255)
24480 locate 1,23
24490 print "ジョイパッド右：トップへ行く"
24500 while ((key$ <> chr$(13)) and (bg <> 2))
24510 bg = strig(1)
24520 key$ = inkey$
24530 wend
24540 if ((bg = 2) or (key$ = chr$(13))) then
24550 pause 200:goto Main_Screen:
24560 endif
24570 end
24580 '1.数秘術　トップ画面
24590 Kabara_First_Top:
24600 cls 3:color rgb(255,255,255):play ""
24610 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
24620 gload Gazo$ + "downscreen.png",0,0,800
24630 No=0:init"kb:4"
24640 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
24650 print chr$(13);chr$(13)
24660 color rgb(255,255,255)
24670 locate 3,4:No=0
24680 print "番号選んでください" + chr$(13)
24690 print " :1.数秘術占い" + chr$(13)
24700 print " :2.トップ画面に戻る" + chr$(13)
24710 color rgb(0,0,0)
24720 sp_on 0,1
24730 locate 1,15:print "1.数秘術番号を求めるを選択"
24740 'KeyBord:true
24750 'Joy Pad:true
24760 '上、下:true
24770 '
24780 'ｂｇ：決定ボタン
24790 'カーソル　上
24800 'カーソル　下
24810 Kabara_First_Top2:
24820 key$ = "":bg = 0:y = 0:
24830 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
24840 key$ = inkey$
24850 bg = strig(1)
24860 y = stick(1)
24870 'PauseでCPUを休める
24880 pause 5
24890 wend
24900 '1.カーソル　下 処理 chr$(31)
24910 'カーソル　下
24920 if ((key$ = chr$(31)) or (y = 1)) then
24930 select case No
24940 '
24950 case 1:
24960 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
24970 case 0:
24980 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
24990 'case 2:
25000 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25010 end select
25020 endif
25030 '2.カーソル　上 処理 chr$(30)
25040 if ((key$ = chr$(30)) or (y = -1)) then
25050 select case No
25060 case 0:
25070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25080 case 1:
25090 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25100 'case 2:
25110 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25120 end select
25130 endif
25140 '3.決定 処理  bg:2 or Enter key:chr$(13)
25150 if ((bg = 2) or (key$ = chr$(13))) then
25160 select case No
25170 case 0:
25180 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25190 goto Kabara_TopScreen:
25200 'case 1:
25210 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25220 case 1:
25230 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25240 end select
25250 endif
25260 '
25270 'Kabara 相性占い トップ画面
25280 Kabara_Aishou_Top:
25290 cls 3:y=0:key$="":bg=0:No=0
25300 play ""
25310 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25320 gload Gazo$ + "downscreen.png",0,0,800
25330 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25340 print chr$(13) + chr$(13)
25350 locate 0,4:color rgb(255,255,255)
25360 'print "Ok"
25370 '
25380 print "番号を選んでください" + chr$(13)
25390 print " :1.男女2人の相性(未実装)" + chr$(13)
25400 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
25410 print " :3.トップ画面に戻る" + chr$(13)
25420 sp_on 0,1:sp_on 1,0:sp_on 2,0
25430 color rgb(0,0,0)
25440 locate 1,15:print "1.男女2人の相性占いを選択"
25450 Kabara_Aishou_Top2:
25460 key$ = "":y = 0:bg = 0:
25470 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
25480 'ジョイパッド(右) ,十字キー (上下)
25490 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
25500 y = stick(1)
25510 key$ = inkey$
25520 bg = strig(1)
25530 pause 5
25540 wend
25550 'カーソル　下 or 十字キー　下
25560 if ((key$ = chr$(31)) or (y = 1)) then
25570 select case No
25580 '選択肢　1 - 2に変更
25590 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
25600 'ok
25610 case 0:
25620 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25630 '選択肢　2 - 3に変更
25640 case 1:
25650 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
25660 'リリース時 case 2コメント解除
25670 case 2:
25680 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
25690 case else:
25700 goto Kabara_Aishou_Top2:
25710 end select
25720 endif
25730 '十字キー　上　、カーソル　上
25740 if ((key$ = chr$(30)) or (y = -1)) then
25750 select case No
25760 case 0:
25770 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25780 case 1:
25790 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
25800 case 2:
25810 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25820 case else:
25830 goto Kabara_Aishou_Top2:
25840 end select
25850 endif
25860 '十字キー　上下:選択
25870 'ジョイパッド 右:決定
25880 if ((bg = 2) or (key$ = chr$(13))) then
25890 select case No
25900 '1.男女の相性
25910 case 0:
25920 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
25930 '2ビジネスの相性
25940 case 1:
25950 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
25960 case 2:
25970 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
25980 end select
25990 endif
26000 'ビジネスの相性　
26010 '1.1人目のビジネスの相性　名前入力　1人目
26020 Business_Aishou_Input_1_parson:
26030 No=0:color RGB(255,255,255)
26040 cls 3:init "kb:2"
26050 gload Gazo$ + "Screen1.png",0,0,0
26060 gload Gazo$ + "downscreen.png",0,0,800
26070 play "":color rgb(255,0,0):name$ = ""
26080 locate 0,1
26090 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
26100 color rgb(255,255,255):
26110 locate 0,3
26120 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
26130 print "入れてください" + chr$(13)
26140 locate 0,15:color rgb(0,0,0)
26150 Input "1人目の名前:",name$
26160 'color rgb(0,0,0)
26170 'locate 0,13:print "                                     "
26180 'locate 0,13:print "1人目の名前を入力してエンターキー":
26190 'buffer_name$(0):1人目の名前
26200 buffer_name$(0) = name$:
26210 goto Business_Aishou_Input_2_Parson:
26220 '2.2人目のビジネスの相性 名前入力 2人目
26230 Business_Aishou_Input_2_Parson:
26240 cls 3:init "kb:2":name$ = "":No=0
26250 gload Gazo$ + "Screen1.png",0,0,0
26260 gload Gazo$ + "downscreen.png",0,0,800
26270 color rgb(255,0,0)
26280 'Title
26290 locate 0,1
26300 print "ビジネスの相性　2人目"
26310 locate 0,3
26320 color rgb(255,255,255)
26330 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
26340 print "入れてください" + chr$(13)
26350 locate 0,15:color rgb(0,0,0)
26360 Input "2人目の名前:",name$
26370 'color rgb(0,0,0)
26380 'locate 0,15:print "                                              "
26390 'locate 0,15:print "2人目の名前を入力してエンター ":
26400 '2人目
26410 '2人目の名前を入れるに代入
26420 buffer_name$(1) = name$:
26430 goto Select_jyoushi:
26440 '3.上司の選択
26450 Select_jyoushi:
26460 cls 3:gload Gazo$ + "Screen1.png",0,0,0
26470 gload Gazo$ + "downscreen.png",0,0,800
26480 init "kb:4":No=0
26490 color rgb(0,0,255)
26500 locate 1,1
26510 print "上司の選択"
26520 color rgb(255,255,255)
26530 locate 0,4:print "名前から上司の方を選んでください"
26540 locate 0,6
26550 print " :";buffer_name$(0);"が上 司";chr$(13)
26560 locate 0,8
26570 print " :";buffer_name$(1);"が上 司";chr$(13)
26580 locate 0,15:
26590 print "                                     "
26600 locate 0,15:color rgb(0,0,0)
26610 print "上司の方を選んで右の丸ボタン"
26620 sp_on 0,1:sp_on 1,0:sp_on 2,0
26630 Select_jyoushi2:
26640 'ここでNo=0をおいてはいけない
26650 y=0:key$="":bg=0:
26660 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
26670 y = stick(1)
26680 key$ = inkey$
26690 bg = strig(1)
26700 pause 5
26710 wend
26720 '1.カーソル下の処理　or 十字キーの下処理
26730 if ((key$ = chr$(31)) or (y = 1)) then
26740 select case No
26750 case 0:
26760 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26770 case 1:
26780 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26790 end select
26800 endif
26810 '2.カーソル上処理　or 十字キーの上の処理
26820 if ((key$ = chr$(30)) or (y = -1)) then
26830 select case No
26840 case 0:
26850 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
26860 case 1:
26870 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
26880 end select
26890 endif
26900 if ((key$ = chr$(13)) or (bg = 2)) then
26910 select case No
26920 case 0:
26930 '上司(name1)を配列に代入
26940 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26950 case 1:
26960 '上司（name2)を配列に代入
26970 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26980 end select
26990 endif
27000 '3.決定ボタン　Enter or 右の丸ボタン
27010 '1.誕生日入力
27020 '1-1.生まれた年を入力
27030 'Jyoushi_born_year:
27040 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
27050 '---------------------------------------------'
27060 '誕生日入力(生れた年代)
27070 Jyoushi_Input_Seireki:
27080 'buf_Jyoushi_Born_Year:上司の生まれた年代
27090 'buf_Jyoushi_Born_Day(0) = born_year
27100 cls 3:play "":count=0:count2=0
27110 init"kb:4"
27120 'No=-1:Okのとき
27130 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
27140 for i=0 to 3
27150 buf_Jyoushi_Born_Day(i)=0
27160 next i
27170 gload Gazo$ + "Screen1.png",0,0,0
27180 gload Gazo$ + "downscreen.png",0,0,800
27190 'Init"kb:2"
27200 '音声ファイル再生 2023.06.07
27210 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
27220 font 48
27230 locate 0,1
27240 '文字色：黒　 color rgb(0,0,0)
27250 color rgb(255,255,255)
27260 print "上司の生まれた年代を入れて下さい" + chr$(13)
27270 color rgb(255,255,255)
27280 locate 1,3
27290 print "上司の生まれた年代(西暦4桁):";buf_year$
27300 color rgb(255,255,255)
27310 'locate 4,6:print ":7"
27320 'locate 9,6:print ":8"
27330 'locate 12,6:print ":9"
27340 locate 4,6
27350 print ":7  :8  :9" + chr$(13)
27360 color rgb(255,255,255)
27370 locate 4,8
27380 print ":4  :5  :6" + chr$(13)
27390 color rgb(255,255,255)
27400 locate 4,10
27410 print ":1  :2  :3" + chr$(13)
27420 locate 4,12
27430 print "    :0"
27440 locate 12,12
27450 color rgb(0,0,255)
27460 print ":Ok"
27470 sp_on 4,0: sp_on 5,0:sp_on 6,0
27480 sp_on 7,0:sp_on 8,0:sp_on 9,0
27490 sp_on 10,0:sp_on 11,0:sp_on 12,0
27500 sp_on 13,0:sp_on 14,1
27510 Jyoushi_Input_Seireki2:
27520 key$="":bg=0:y=0:y2=0:bg2=0:
27530 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27540 key$ = inkey$
27550 bg = strig(1)
27560 y = stick(1)
27570 y2 = stick(0)
27580 bg2=strig(0)
27590 pause 5
27600 wend
27610 '十字キー　ここから
27620 '上の矢印　または、十字キー上
27630 if ((y = -1) or (key$ = chr$(30))) then
27640 select case No
27650 'No=-1:okのとき:初期の状態
27660 '0kボタンから３に移動
27670 '上に行く 処理
27680 case -1:
27690 No=3:sp_on 12,1:sp_on 14,0
27700 pause 200:goto Jyoushi_Input_Seireki2:
27710 '選択肢:3
27720 '3ボタンから 6に移動
27730 case 3:
27740 No=6:sp_on 12,0:sp_on 11,1
27750 pause 200:goto Jyoushi_Input_Seireki2:
27760 '6ボタンから ９に移動
27770 case 6:
27780 No=9:sp_on 10,1:sp_on 11,0
27790 pause 200:goto Jyoushi_Input_Seireki2:
27800 '6ボタンから ９に移動　ここまで
27810 '9で上を押して何もしない
27820 case 9:
27830 '何もしない
27840 No=9
27850 pause 200:goto Jyoushi_Input_Seireki2:
27860 '9で上を押しても何もしない　ここまで
27870 '上　 0ボタンから2ボタン
27880 'sp_on 6,1:1
27890 'sp_on 8,1:5
27900 'sp_on 7,1:7
27910 case 0:
27920 No=2:sp_on 13,0:sp_on 9,1:
27930 pause 200:goto Jyoushi_Input_Seireki2:
27940 '上  0ボタンから2ボタン　ここまで
27950 '2から５になる 上
27960 case 2:
27970 No=5:sp_on 8,1:sp_on 9,0:
27980 pause 200:goto Jyoushi_Input_Seireki2:
27990 case 5:
28000 No=8:sp_on 7,1:sp_on 8,0
28010 pause 200:goto Jyoushi_Input_Seireki2:
28020 case 8:
28030 pause 200:goto Jyoushi_Input_Seireki2:
28040 case 1:
28050 No=4:sp_on 5,1:sp_on 6,0
28060 pause 200:goto Jyoushi_Input_Seireki2:
28070 case 4:
28080 No=7:sp_on 4,1:sp_on 5,0
28090 pause 200:goto Jyoushi_Input_Seireki2:
28100 case 7:
28110 pause 200:goto Jyoushi_Input_Seireki2:
28120 end select
28130 endif
28140 '左３　ここまで
28150 '下の矢印
28160 '中央 2
28170 if ((y=1) or (key$ = chr$(31))) then
28180 select case No
28190 '9から６に下げる
28200 case 9:
28210 No=6:sp_on 11,1:sp_on 10,0
28220 pause 200:goto Jyoushi_Input_Seireki2:
28230 '6から３に下げる
28240 case 6:
28250 No=3:sp_on 12,1:sp_on 11,0
28260 pause 200:goto Jyoushi_Input_Seireki2:
28270 '3から０ｋに変える
28280 case 3:
28290 No=-1:sp_on 14,1:sp_on 12,0
28300 pause 200:goto Jyoushi_Input_Seireki2:
28310 'Okから下のボタンを押しても何もしない
28320 case -1:
28330 pause 200:goto Jyoushi_Input_Seireki2:
28340 case 8:
28350 No=5:sp_on 8,1:sp_on 7,0
28360 pause 200:goto Jyoushi_Input_Seireki2:
28370 case 5:
28380 No=2:sp_on 9,1:sp_on 8,0
28390 pause 200:goto Jyoushi_Input_Seireki2:
28400 case 2:
28410 No=0:sp_on 13,1:sp_on 9,0
28420 pause 200:goto Jyoushi_Input_Seireki2:
28430 case 0:
28440 pause 200:goto Jyoushi_Input_Seireki2:
28450 case 7:
28460 No=4:sp_on 5,1:sp_on 4,0
28470 pause 200:goto Jyoushi_Input_Seireki2:
28480 case 4:
28490 No=1:sp_on 6,1:sp_on 5,0
28500 pause 200:goto Jyoushi_Input_Seireki2:
28510 case 1:
28520 pause 200:goto Jyoushi_Input_Seireki2:
28530 end select
28540 endif
28550 '左へボタン 十字キー　左　or 　カーソル左
28560 if ((y2 = -1) or (key$ = chr$(29))) then
28570 select case No
28580 'Ok ボタン  Okから　左　０に行く
28590 case -1:
28600 No=0:sp_on 13,1:sp_on 14,0
28610 pause 200:goto Jyoushi_Input_Seireki2:
28620 '0 ボタン  左　何もしない
28630 case 0:
28640 pause 200:goto Jyoushi_Input_Seireki2:
28650 case 3:
28660 No=2:sp_on 9,1:sp_on 12,0:
28670 pause 200:goto Jyoushi_Input_Seireki2:
28680 case 2:
28690 No=1:sp_on 6,1:sp_on 9,0:
28700 pause 200:goto Jyoushi_Input_Seireki2:
28710 case 1:
28720 pause 200:goto Jyoushi_Input_Seireki2:
28730 case 6:
28740 No=5:sp_on 8,1:sp_on 11,0
28750 pause 200:goto Jyoushi_Input_Seireki2:
28760 case 5:
28770 No=4:sp_on 5,1:sp_on 8,0
28780 pause 200:goto Jyoushi_Input_Seireki2:
28790 case 4:
28800 pause 200:goto Jyoushi_Input_Seireki2:
28810 case 9:
28820 No=8:sp_on 7,1:sp_on 10,0
28830 pause 200:goto Jyoushi_Input_Seireki2:
28840 case 8:
28850 No=7:sp_on 4,1:sp_on 7,0
28860 pause 200:goto Jyoushi_Input_Seireki2:
28870 case 7:
28880 pause 200:goto Jyoushi_Input_Seireki2:
28890 end select
28900 endif
28910 '右  十字キー　右　or カーソル　右
28920 if ((y2 = 1) or (key$ = chr$(28))) then
28930 select case No
28940 '0ボタンからokボタン右に移動
28950 case 0:
28960 No=-1:sp_on 14,1:sp_on 13,0
28970 pause 200:goto Jyoushi_Input_Seireki2:
28980 '0ボタンからokボタン 右に移動　ここまで
28990 'OKボタンで右を押して何もしない
29000 case -1:
29010 pause 200:goto Jyoushi_Input_Seireki2:
29020 case 1:
29030 No=2:sp_on 9,1:sp_on 6,0
29040 pause 200:goto Jyoushi_Input_Seireki2:
29050 case 2:
29060 No=3:sp_on 12,1:sp_on 9,0
29070 pause 200:goto Jyoushi_Input_Seireki2:
29080 case 3:
29090 pause 200:goto Jyoushi_Input_Seireki2:
29100 case 4:
29110 No=5:sp_on 8,1:sp_on 5,0
29120 pause 200:goto Jyoushi_Input_Seireki2:
29130 case 5:
29140 No=6:sp_on 11,1:sp_on 8,0
29150 pause 200:goto Jyoushi_Input_Seireki2:
29160 case 7:
29170 No=8:sp_on 7,1:sp_on 4,0
29180 pause 200:goto Jyoushi_Input_Seireki2:
29190 case 8:
29200 No=9:sp_on 10,1:sp_on 7,0
29210 pause 200:goto Jyoushi_Input_Seireki2:
29220 case 9:
29230 pause 200:goto Jyoushi_Input_Seireki2:
29240 case 6:
29250 pause 200:goto Jyoushi_Input_Seireki2:
29260 end select
29270 'Okから右ボタンを押して何もしない ここまで
29280 endif
29290 '十字キー　ここまで
29300 '==============================
29310 'ここから
29320 '==============================
29330 if ((bg=2) or (key$=chr$(13))) then
29340 select case count
29350 case 0:
29360 count = 1
29370 if (No=-1) then
29380 count = 0:No=0
29390 buf_Jyoushi_Born_Day(0) = No
29400 'Okボタンを押したとき
29410 goto Jyoushi_Input_Seireki2:
29420 else
29430 'Okボタン以外が押されたとき
29440 if (No>=1 and No<=2) then
29450 buf_year$="":buf_year$=str$(No) + "***"
29460 buf_year = No:a= No
29470 buf_Jyoushi_Born_Day(0) = No
29480 locate 1,3
29490 color rgb(255,255,255)
29500 print "上司の生まれた年代(西暦4桁):";buf_year$
29510 goto Jyoushi_Input_Seireki2:
29520 else
29530 count=0
29540 ui_msg"数字が範囲外になります。"
29550 buf_year$="":buf_year=0
29560 goto Jyoushi_Input_Seireki2:
29570 endif
29580 endif
29590 case 1:
29600 count = 2
29610 if (No = -1) then
29620 count = 1
29630 goto Jyoushi_Input_Seireki2:
29640 else
29650 buf_year = a * 10 + No
29660 b=buf_year
29670 buf_year$ = str$(buf_year) + "**"
29680 buf_Jyoushi_Born_Day(0)=buf_year
29690 locate 1,3
29700 color rgb(255,255,255)
29710 print "                                                                "
29720 locate 1,3
29730 print "上司の生まれた年代(西暦4桁):" + buf_year$
29740 'if (No = -1) then
29750 'count=1
29760 goto Jyoushi_Input_Seireki2:
29770 endif
29780 case 2:
29790 count=3
29800 if (No=-1) then
29810 count =2
29820 goto Jyoushi_Input_Seireki2:
29830 else
29840 buf_year = b * 10 + No
29850 c=buf_year
29860 buf_year$ = str$(buf_year) + "*"
29870 buf_Jyoushi_Born_Day(0) = buf_year
29880 locate 1,3
29890 color rgb(255,255,255)
29900 print "                                        "
29910 locate 1,3
29920 print "上司の生まれた年代(西暦4桁):";buf_year$
29930 goto Jyoushi_Input_Seireki2:
29940 endif
29950 case 3:
29960 count=4
29970 if (No = -1) then
29980 No=0
29990 goto Jyoushi_Input_Seireki2:
30000 else
30010 buf_year = c * 10 + No
30020 buf_year$ = str$(buf_year)
30030 buf_Jyoushi_Born_Day(0) = buf_year
30040 locate 1,3
30050 color RGB(255,255,255)
30060 print "                                      "
30070 locate 1,3
30080 print "上司の生まれた年代(西暦4桁):";buf_year$
30090 buf_year=val(buf_year$)
30100 'year=val(buf_year$)
30110 'if (No=-1) then
30120 'goto Input_Born_Month:
30130 'else
30140 goto Jyoushi_Input_Seireki2:
30150 endif
30160 case 4:
30170 'bufyear=buf_year
30180 if (No=-1) then
30190 buf_year = val(buf_year$)
30200 buf_Jyoushi_Born_Day(0)=buf_year
30210 sp_on 14,0:No=0
30220 goto Jyoushi_Input_Born_Month:
30230 else
30240 goto Jyoushi_Input_Seireki2:
30250 endif
30260 end select
30270 endif
30280 '===========================
30290 'ここまでを部下のところにコピーする.
30300 '===========================
30310 if (bg2 = 2) then
30320 select case count2
30330 case 0:
30340 if (No = -1) then
30350 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
30360 count=0
30370 locate 1,3
30380 color rgb(255,255,255)
30390 print "                                      "
30400 locate 1,3
30410 print "上司の生まれた年代（西暦4桁):" + buf_year$
30420 goto Jyoushi_Input_Seireki2:
30430 else
30440 '(buf_year=0) then
30450 buf_year=0:buf_year$="****"
30460 locate 1,3
30470 print "                                       "
30480 locate 1,3
30490 print "上司の生まれた年代(西暦4桁):"+buf_year$
30500 goto Jyoushi_Input_Seireki2:
30510 'endif
30520 endif
30530 end select
30540 endif
30550 'Input"上司の生れた年代(4桁,〜2025年):",year
30560 'if year > 2025 then goto Jyoushi_Input_Seireki:
30570 'if year = 123 then cls 3:cls 4:goto Main_Screen:
30580 '"4桁目"
30590 'bufyear4 = fix(year / 1000)
30600 '"3桁目"
30610 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
30620 '"2桁目"
30630 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
30640 '"1桁目"
30650 'bufyear1 = fix((year - ((bufyear4*
30660 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
30670 '2.生まれた月を入力
30680 Jyoushi_Input_Born_Month:
30690 cls 3:play "":count=0:count2=0
30700 'No=-1:Okのとき
30710 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
30720 for i=0 to 1
30730 buf_month(i)=0
30740 next i
30750 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30760 gload Gazo$ + "Screen1.png",0,0,0
30770 gload Gazo$ + "downscreen.png",0,0,800
30780 'Init"kb:4"
30790 '音声ファイル再生 2023.06.07
30800 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30810 font 48
30820 locate 0,1
30830 '文字色：黒　 color rgb(0,0,0)
30840 '文字色:白
30850 color rgb(255,255,255)
30860 print "上司の生まれた月を入れて下さい" + chr$(13)
30870 '文字色:白
30880 color rgb(255,255,255)
30890 locate 1,3
30900 '文字色:白
30910 print "上司の生まれた月(1月~12月):"+buf_Month$
30920 color rgb(255,255,255)
30930 'locate 4,6:print ":7"
30940 'locate 9,6:print ":8"
30950 'locate 12,6:print ":9"
30960 locate 4,6
30970 '文字色:赤
30980 print ":7  :8  :9" + chr$(13)
30990 color rgb(255,255,255)
31000 locate 4,8
31010 print ":4  :5  :6" + chr$(13)
31020 color rgb(255,255,255)
31030 locate 4,10
31040 print ":1  :2  :3" + chr$(13)
31050 locate 4,12
31060 print "    :0"
31070 locate 12,12
31080 color rgb(0,0,255)
31090 print ":Ok"
31100 sp_on 4,0: sp_on 5,0:sp_on 6,0
31110 sp_on 7,0:sp_on 8,0:sp_on 9,0
31120 sp_on 10,0:sp_on 11,0:sp_on 12,0
31130 sp_on 13,0:sp_on 14,1
31140 Jyoushi_Input_Born_Month2:
31150 key$="":bg=0:y=0:y2=0:bg2=0
31160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31170 key$ = inkey$
31180 bg = strig(1)
31190 y = stick(1)
31200 y2 = stick(0)
31210 bg2 = strig(0)
31220 pause 5
31230 wend
31240 '十字キー　ここから
31250 '上の矢印　または、十字キー上
31260 if ((y = -1) or (key$ = chr$(30))) then
31270 select case No
31280 'No=-1:okのとき:初期の状態
31290 '0kボタンから３に移動
31300 '上に行く 処理
31310 case -1:
31320 No=3:sp_on 12,1:sp_on 14,0
31330 pause 200:goto Jyoushi_Input_Born_Month2:
31340 '選択肢:3
31350 '3ボタンから 6に移動
31360 case 3:
31370 No=6:sp_on 12,0:sp_on 11,1
31380 pause 200:goto Jyoushi_Input_Born_Month2:
31390 '6ボタンから ９に移動
31400 case 6:
31410 No=9:sp_on 10,1:sp_on 11,0
31420 pause 200:goto Jyoushi_Input_Born_Month2:
31430 '6ボタンから ９に移動　ここまで
31440 '9で上を押して何もしない
31450 case 9:
31460 '何もしない
31470 No=9
31480 pause 200:goto Jyoushi_Input_Born_Month2:
31490 '9で上を押しても何もしない　ここまで
31500 '上　 0ボタンから2ボタン
31510 'sp_on 6,1:1
31520 'sp_on 8,1:5
31530 'sp_on 7,1:7
31540 case 0:
31550 No=2:sp_on 13,0:sp_on 9,1:
31560 pause 200:goto Jyoushi_Input_Born_Month2:
31570 '上  0ボタンから2ボタン　ここまで
31580 '2から５になる 上
31590 case 2:
31600 No=5:sp_on 8,1:sp_on 9,0:
31610 pause 200:goto Jyoushi_Input_Born_Month2:
31620 case 5:
31630 No=8:sp_on 7,1:sp_on 8,0
31640 pause 200:goto Jyoushi_Input_Born_Month2:
31650 case 8:
31660 pause 200:goto Input_Born_Month2:
31670 case 1:
31680 No=4:sp_on 5,1:sp_on 6,0
31690 pause 200:goto Jyoushi_Input_Born_Month2:
31700 case 4:
31710 No=7:sp_on 4,1:sp_on 5,0
31720 pause 200:goto Jyoushi_Input_Born_Month2:
31730 case 7:
31740 pause 200:goto Input_Born_Month2:
31750 end select
31760 endif
31770 '左３　ここまで
31780 '下の矢印
31790 '中央 2
31800 if ((y=1) or (key$ = chr$(31))) then
31810 select case No
31820 '9から６に下げる
31830 case 9:
31840 No=6:sp_on 11,1:sp_on 10,0
31850 pause 200:goto Jyoushi_Input_Born_Month2:
31860 '6から３に下げる
31870 case 6:
31880 No=3:sp_on 12,1:sp_on 11,0
31890 pause 200:goto Jyoushi_Input_Born_Month2:
31900 '3から０ｋに変える
31910 case 3:
31920 No=-1:sp_on 14,1:sp_on 12,0
31930 pause 200:goto Jyoushi_Input_Born_Month2:
31940 'Okから下のボタンを押しても何もしない
31950 case -1:
31960 pause 200:goto Jyoushi_Input_Born_Month2:
31970 case 8:
31980 No=5:sp_on 8,1:sp_on 7,0
31990 pause 200:goto Jyoushi_Input_Born_Month2:
32000 case 5:
32010 No=2:sp_on 9,1:sp_on 8,0
32020 pause 200:goto Jyoushi_Input_Born_Month2:
32030 case 2:
32040 No=0:sp_on 13,1:sp_on 9,0
32050 pause 200:goto Jyoushi_Input_Born_Month2:
32060 case 0:
32070 pause 200:goto Jyoushi_Input_Born_Month2:
32080 case 7:
32090 No=4:sp_on 5,1:sp_on 4,0
32100 pause 200:goto Jyoushi_Input_Born_Month2:
32110 case 4:
32120 No=1:sp_on 6,1:sp_on 5,0
32130 pause 200:goto Jyoushi_Input_Born_Month2:
32140 case 1:
32150 pause 200:goto Jyoushi_Input_Born_Month2:
32160 end select
32170 endif
32180 '左へボタン 十字キー　左　or 　カーソル左
32190 if ((y2 = -1) or (key$ = chr$(29))) then
32200 select case No
32210 'Ok ボタン  Okから　左　０に行く
32220 case -1:
32230 No=0:sp_on 13,1:sp_on 14,0
32240 pause 200:goto Jyoushi_Input_Born_Month2:
32250 '0 ボタン  左　何もしない
32260 case 0:
32270 pause 200:goto Jyoushi_Input_Born_Month2:
32280 case 3:
32290 No=2:sp_on 9,1:sp_on 12,0:
32300 pause 200:goto Jyoushi_Input_Born_Month2:
32310 case 2:
32320 No=1:sp_on 6,1:sp_on 9,0:
32330 pause 200:goto Jyoushi_Input_Born_Month2:
32340 case 1:
32350 pause 200:goto Jyoushi_Input_Born_Month2:
32360 case 6:
32370 No=5:sp_on 8,1:sp_on 11,0
32380 pause 200:goto Jyoushi_Input_Born_Month2:
32390 case 5:
32400 No=4:sp_on 5,1:sp_on 8,0
32410 pause 200:goto Jyoushi_Input_Born_Month2:
32420 case 4:
32430 pause 200:goto Jyoushi_Input_Born_Month2:
32440 case 9:
32450 No=8:sp_on 7,1:sp_on 10,0
32460 pause 200:goto Input_Born_Month2:
32470 case 8:
32480 No=7:sp_on 4,1:sp_on 7,0
32490 pause 200:goto Jyoushi_Input_Born_Month2:
32500 case 7:
32510 pause 200:goto Jyoushi_Input_Born_Month2:
32520 end select
32530 endif
32540 '右  十字キー　右　or カーソル　右
32550 if ((y2 = 1) or (key$ = chr$(28))) then
32560 select case No
32570 '0ボタンからokボタン右に移動
32580 case 0:
32590 No=-1:sp_on 14,1:sp_on 13,0
32600 pause 200:goto Jyoushi_Input_Born_Month2:
32610 '0ボタンからokボタン 右に移動　ここまで
32620 'OKボタンで右を押して何もしない
32630 case -1:
32640 pause 200:goto Jyoushi_Input_Born_Month2:
32650 case 1:
32660 No=2:sp_on 9,1:sp_on 6,0
32670 pause 200:goto Jyoushi_Input_Born_Month2:
32680 case 2:
32690 No=3:sp_on 12,1:sp_on 9,0
32700 pause 200:goto Jyoushi_Input_Born_Month2:
32710 case 3:
32720 pause 200:goto Jyoushi_Input_Born_Month2:
32730 case 4:
32740 No=5:sp_on 8,1:sp_on 5,0
32750 pause 200:goto Jyoushi_Input_Born_Month2:
32760 case 5:
32770 No=6:sp_on 11,1:sp_on 8,0
32780 pause 200:goto Jyoushi_Input_Born_Month2:
32790 case 7:
32800 No=8:sp_on 7,1:sp_on 4,0
32810 pause 200:goto Jyoushi_Input_Born_Month2:
32820 case 8:
32830 No=9:sp_on 10,1:sp_on 7,0
32840 pause 200:goto Jyoushi_Input_Born_Month2:
32850 case 9:
32860 pause 200:goto Jyoushi_Input_Born_Month2:
32870 case 6:
32880 pause 200:goto Jyoushi_Input_Born_Month2:
32890 end select
32900 'Okから右ボタンを押して何もしない ここまで
32910 endif
32920 '十字キー　ここまで
32930 '右の丸ボタン + Enter key 決定キー
32940 if ((bg=2) or (key$=chr$(13))) then
32950 select case count
32960 case 0:
32970 if (No=-1) then No=0
32980 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
32990 if (buf_month > 1 and buf_month < 10)  then
33000 buf_Month$ = str$(buf_month)
33010 'buf_month=No
33020 endif
33030 if (buf_month = 1)  then
33040 buf_Month$ = str$(buf_month) + "*"
33050 'c=buf_month
33060 endif
33070 locate 1,3
33080 print "                                     "
33090 color RGB(255,255,255)
33100 locate 1,3
33110 print "上司の生まれた月(1月~12月):" + buf_Month$
33120 goto Jyoushi_Input_Born_Month2:
33130 case 1:
33140 count = 2:
33150 'c = val(buf_Month$)
33160 if (No = -1) then
33170 'count=0
33180 No=0
33190 month=buf_month
33200 buf_month=val(buf_Month$)
33210 month=buf_month
33220 buf_Jyoushi_Born_Day(1)=month
33230 '生まれた日に飛ぶ
33240 goto Jyoushi_Input_Born_Day:
33250 else
33260 buf_month = c*10 + No
33270 'if (buf_month = 1) then
33280 'buf_Month$ = str$(buf_month)
33290 'endif
33300 buf_Month$ = str$(buf_month)
33310 buf_Jyoushi_Born_Day(1) = buf_month
33320 locate 0,3
33330 print "                                           "
33340 locate 1,3
33350 color Rgb(255,255,255)
33360 print "上司の生まれた月(1月~12月):" + buf_Month$
33370 goto Jyoushi_Input_Born_Month2:
33380 endif
33390 case 2:
33400 '==================================
33410 '何もしない
33420 'coun = 2
33430 '==================================
33440 'c= val(buf_Month$)
33450 'buf_month = c*10 + No
33460 'buf_Month$ = str$(buf_month)
33470 'locate 2,3
33480 'print "上司の生まれた月(1月～12月):";buf_Month$
33490 'goto Jyoushi_Input_Born_Month2:
33500 'case 3:
33510 'count=4
33520 'b=val(buf_month$)
33530 'buf_month=c*10+No
33540 'buf_Month$=str$(buf_month)
33550 'locate 2,3
33560 'print "上司の生まれた月(1月～12月):";buf_Month$
33570 'buf_month=val(buf_Month$)
33580 'year=val(buf_year$)
33590 if (No=-1) then
33600 No=0
33610 goto Jyoushi_Input_Born_Day:
33620 else
33630 goto Jyoushi_Input_Born_Month2:
33640 endif
33650 'case 4:
33660 'bufyear=buf_year
33670 'if (No=-1) then
33680 'buf_month = val(buf_Month$)
33690 'month = buf_month
33700 'sp_on 14,0
33710 'goto Input_Born_Day:
33720 'else
33730 'goto Input_Born_Month2:
33740 'endif
33750 end select
33760 endif
33770 '左の丸ボタン　キャンセル
33780 if (bg2=2) then
33790 select case count2
33800 case 0:
33810 if (No = -1) then
33820 buf_month=0:buf_Month$="**"
33830 count=0
33840 'goto rewrite2:
33850 else
33860 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
33870 buf_month = 0:buf_Month$ = "**"
33880 locate 0,3
33890 color rgb(255,255,255)
33900 print "                                       "
33910 goto rewrite2:
33920 if (No>12) then
33930 ui_msg"値が範囲外です。"
33940 goto rewrite2:
33950 endif
33960 endif
33970 endif
33980 rewrite2:
33990 locate 2,3
34000 color rgb(255,255,255)
34010 print "                                      "
34020 locate 2,3
34030 print "上司の生まれた月(1月~12月):"+buf_Month$
34040 goto Jyoushi_Input_Born_Month2:
34050 end select
34060 'endif
34070 endif
34080 end
34090 'end
34100 '生れた日を入力
34110 Jyoushi_Input_Born_Day:
34120 '生まれた日入力
34130 cls 3:play ""
34140 'No=-1:Okのとき
34150 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
34160 for i=0 to 1
34170 buf_day(i)=0
34180 next i
34190 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34200 gload Gazo$ + "Screen1.png",0,0,0
34210 gload Gazo$ + "downscreen.png",0,0,800
34220 'Init"kb:2"
34230 '音声ファイル再生 2023.06.07
34240 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
34250 font 48
34260 locate 1,1
34270 '文字色：黒　 color rgb(0,0,0)
34280 color rgb(255,255,255)
34290 print "上司の生まれた日を入れて下さい" + chr$(13)
34300 locate 1,3
34310 color rgb(255,255,255)
34320 print "                                      "
34330 locate 1,3
34340 print "上司の生まれた日(1日~31日):"+buf_Day$
34350 color rgb(255,255,255)
34360 'locate 4,6:print ":7"
34370 'locate 9,6:print ":8"
34380 'locate 12,6:print ":9"
34390 locate 4,6
34400 print ":7  :8  :9" + chr$(13)
34410 color rgb(255,255,255)
34420 locate 4,8
34430 print ":4  :5  :6" + chr$(13)
34440 color rgb(255,255,255)
34450 locate 4,10
34460 print ":1  :2  :3" + chr$(13)
34470 locate 4,12
34480 print "    :0"
34490 locate 12,12
34500 color rgb(0,0,255)
34510 print ":Ok"
34520 sp_on 4,0: sp_on 5,0:sp_on 6,0
34530 sp_on 7,0:sp_on 8,0:sp_on 9,0
34540 sp_on 10,0:sp_on 11,0:sp_on 12,0
34550 sp_on 13,0:sp_on 14,1
34560 Jyoushi_Input_Born_Day2:
34570 key$="":bg=0:y=0:y2=0:bg2=0:
34580 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34590 key$ = inkey$
34600 bg = strig(1)
34610 y = stick(1)
34620 y2 = stick(0)
34630 bg2 = strig(0)
34640 pause 5
34650 wend
34660 '十字キー　ここから
34670 '上の矢印　または、十字キー上
34680 if ((y = -1) or (key$ = chr$(30))) then
34690 select case No
34700 'No=-1:okのとき:初期の状態
34710 '0kボタンから３に移動
34720 '上に行く 処理
34730 case -1:
34740 No=3:sp_on 12,1:sp_on 14,0
34750 pause 200:goto Jyoushi_Input_Born_Day2:
34760 '選択肢:3
34770 '3ボタンから 6に移動
34780 case 3:
34790 No=6:sp_on 12,0:sp_on 11,1
34800 pause 200:goto Jyoushi_Input_Born_Day2:
34810 '6ボタンから ９に移動
34820 case 6:
34830 No=9:sp_on 10,1:sp_on 11,0
34840 pause 200:goto Jyoushi_Input_Born_Day2:
34850 '6ボタンから ９に移動　ここまで
34860 '9で上を押して何もしない
34870 case 9:
34880 '何もしない
34890 No=9
34900 pause 200:goto Jyoushi_Input_Born_Day2:
34910 '9で上を押しても何もしない　ここまで
34920 '上　 0ボタンから2ボタン
34930 'sp_on 6,1:1
34940 'sp_on 8,1:5
34950 'sp_on 7,1:7
34960 case 0:
34970 No=2:sp_on 13,0:sp_on 9,1:
34980 pause 200:goto Jyoushi_Input_Born_Day2:
34990 '上  0ボタンから2ボタン　ここまで
35000 '2から５になる 上
35010 case 2:
35020 No=5:sp_on 8,1:sp_on 9,0:
35030 pause 200:goto Jyoushi_Input_Born_Day2:
35040 case 5:
35050 No=8:sp_on 7,1:sp_on 8,0
35060 pause 200:goto Jyoushi_Input_Born_Day2:
35070 case 8:
35080 pause 200:goto Jyoushi_Input_Born_Day2:
35090 case 1:
35100 No=4:sp_on 5,1:sp_on 6,0
35110 pause 200:goto Jyoushi_Input_Born_Day2:
35120 case 4:
35130 No=7:sp_on 4,1:sp_on 5,0
35140 pause 200:goto Jyoushi_Input_Born_Day2:
35150 case 7:
35160 pause 200:goto Jyoushi_Input_Born_Day2:
35170 end select
35180 endif
35190 '左３　ここまで
35200 '下の矢印
35210 '中央 2
35220 if ((y=1) or (key$ = chr$(31))) then
35230 select case No
35240 '9から６に下げる
35250 case 9:
35260 No=6:sp_on 11,1:sp_on 10,0
35270 pause 200:goto Jyoushi_Input_Born_Day2:
35280 '6から３に下げる
35290 case 6:
35300 No=3:sp_on 12,1:sp_on 11,0
35310 pause 200:goto Jyoushi_Input_Born_Day2:
35320 '3から０ｋに変える
35330 case 3:
35340 No=-1:sp_on 14,1:sp_on 12,0
35350 pause 200:goto Jyoushi_Input_Born_Day2:
35360 'Okから下のボタンを押しても何もしない
35370 case -1:
35380 pause 200:goto Jyoushi_Input_Born_Day2:
35390 case 8:
35400 No=5:sp_on 8,1:sp_on 7,0
35410 pause 200:goto Jyoushi_Input_Born_Day2:
35420 case 5:
35430 No=2:sp_on 9,1:sp_on 8,0
35440 pause 200:goto Jyoushi_Input_Born_Day2:
35450 case 2:
35460 No=0:sp_on 13,1:sp_on 9,0
35470 pause 200:goto Jyoushi_Input_Born_Day2:
35480 case 0:
35490 pause 200:goto Jyoushi_Input_Born_Day2:
35500 case 7:
35510 No=4:sp_on 5,1:sp_on 4,0
35520 pause 200:goto Jyoushi_Input_Born_Day2:
35530 case 4:
35540 No=1:sp_on 6,1:sp_on 5,0
35550 pause 200:goto Jyoushi_Input_Born_Day2:
35560 case 1:
35570 pause 200:goto Jyoushi_Input_Born_Day2:
35580 end select
35590 endif
35600 '左へボタン 十字キー　左　or 　カーソル左
35610 if ((y2 = -1) or (key$ = chr$(29))) then
35620 select case No
35630 'Ok ボタン  Okから　左　０に行く
35640 case -1:
35650 No=0:sp_on 13,1:sp_on 14,0
35660 pause 200:goto Jyoushi_Input_Born_Day2:
35670 '0 ボタン  左　何もしない
35680 case 0:
35690 pause 200:goto Jyoushi_Input_Born_Day2:
35700 case 3:
35710 No=2:sp_on 9,1:sp_on 12,0:
35720 pause 200:goto Jyoushi_Input_Born_Day2:
35730 case 2:
35740 No=1:sp_on 6,1:sp_on 9,0:
35750 pause 200:goto Jyoushi_Input_Born_Day2:
35760 case 1:
35770 pause 200:goto Jyoushi_Input_Born_Day2:
35780 case 6:
35790 No=5:sp_on 8,1:sp_on 11,0
35800 pause 200:goto Jyoushi_Input_Born_Day2:
35810 case 5:
35820 No=4:sp_on 5,1:sp_on 8,0
35830 pause 200:goto Jyoushi_Input_Born_Day2:
35840 case 4:
35850 pause 200:goto Jyoushi_Input_Born_Day2:
35860 case 9:
35870 No=8:sp_on 7,1:sp_on 10,0
35880 pause 200:goto Jyoushi_Input_Born_Day2:
35890 case 8:
35900 No=7:sp_on 4,1:sp_on 7,0
35910 pause 200:goto Jyoushi_Input_Born_Day2:
35920 case 7:
35930 pause 200:goto Jyoushi_Input_Born_Day2:
35940 end select
35950 endif
35960 '右  十字キー　右　or カーソル　右
35970 if ((y2 = 1) or (key$ = chr$(28))) then
35980 select case No
35990 '0ボタンからokボタン右に移動
36000 case 0:
36010 No=-1:sp_on 14,1:sp_on 13,0
36020 pause 200:goto Jyoushi_Input_Born_Day2:
36030 '0ボタンからokボタン 右に移動　ここまで
36040 'OKボタンで右を押して何もしない
36050 case -1:
36060 pause 200:goto Jyoushi_Input_Born_Day2:
36070 case 1:
36080 No=2:sp_on 9,1:sp_on 6,0
36090 pause 200:goto Jyoushi_Input_Born_Day2:
36100 case 2:
36110 No=3:sp_on 12,1:sp_on 9,0
36120 pause 200:goto Jyoushi_Input_Born_Day2:
36130 case 3:
36140 pause 200:goto Jyoushi_Input_Born_Day2:
36150 case 4:
36160 No=5:sp_on 8,1:sp_on 5,0
36170 pause 200:goto Jyoushi_Input_Born_Day2:
36180 case 5:
36190 No=6:sp_on 11,1:sp_on 8,0
36200 pause 200:goto Jyoushi_Input_Born_Day2:
36210 case 7:
36220 No=8:sp_on 7,1:sp_on 4,0
36230 pause 200:goto Jyoushi_Input_Born_Day2:
36240 case 8:
36250 No=9:sp_on 10,1:sp_on 7,0
36260 pause 200:goto Jyoushi_Input_Born_Day2:
36270 case 9:
36280 pause 200:goto Jyoushi_Input_Born_Day2:
36290 case 6:
36300 pause 200:goto Jyoushi_Input_Born_Day2:
36310 end select
36320 'Okから右ボタンを押して何もしない ここまで
36330 endif
36340 '十字キー　ここまで
36350 '右の丸ボタンを押したとき
36360 if ((bg = 2) or (key$ = chr$(13))) then
36370 'count :決定ボタンを押した回数
36380 select case (count)
36390 '1桁目入力
36400 case 0:
36410 count = 1:
36420 if (No = -1) then
36430 '1桁目　OKでは何もしない
36440 No=c
36450 'goto Jyoushi_Input_Born_Day2:
36460 else
36470 'ok以外のボタンを押したとき
36480 buf_day = No:buf_Day$ = str$(No)
36490 buf_Jyoushi_Born_Day(2)=buf_day
36500 c=No
36510 locate 1,3
36520 print "                                      "
36530 color RGB(255,255,255)
36540 locate 1,3
36550 print "上司の生まれた日(1日~31日):" + buf_Day$
36560 endif
36570 'check2:
36580 'if (buf_day >= 1 and buf_day <= 9) then
36590 'sp_on 14,0
36600 'goto complate_jyoushi:
36610 'else
36620 'sp_on 14,0
36630 goto Jyoushi_Input_Born_Day2:
36640 'end
36650 'endif
36660 case 1:
36670 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
36680 count = 2:
36690 'locate 2,3
36700 'color RGB(255,255,255)
36710 'print "生まれた日(1日~31日):";buf_Day$
36720 'Okボタンを押したときの処理
36730 '入力値　10未満のとき
36740 'buf_day = c * 10 + No
36750 if (No = -1) then
36760 c=buf_day:No=0
36770 'buf_day = c
36780 buf_Day$ = str$(buf_day)
36790 '10以下のとき
36800 'if (buf_day < 10) then
36810 sp_on 14,0
36820 goto complate_jyoushi:
36830 'end
36840 'endif
36850 else
36860 'c=No
36870 buf_day = c * 10 + No
36880 buf_Day$ = str$(buf_day)
36890 'buf_day = c:buf_Day$=str$(buf_day)
36900 buf_Jyoushi_Born_Day(2)=buf_day
36910 locate 1,3
36920 print "                                           "
36930 locate 1,3
36940 color Rgb(255,255,255)
36950 print "上司の生まれた日(1日~31日):" + buf_Day$
36960 goto Jyoushi_Input_Born_Day2:
36970 'goto
36980 endif
36990 'endif
37000 '生まれた日　2桁目の数字　or 1桁の数字 + ok
37010 case 2:
37020 'buf_day = c * 10 + No
37030 'buf_Jyoushi_Born_Day(2)=buf_day
37040 'locate 1,3
37050 'print "                                      "
37060 'locate 1,3
37070 'locate 2,3
37080 'print "生まれた日(1日〜31日):";buf_Day
37090 'No=-1:ok ボタンを押したとき
37100 if (No = -1) then
37110 'if ((buf_day > 0) and (buf_day < 32)) then
37120 No=0
37130 sp_on 14,0
37140 goto complate_jyoushi:
37150 'end
37160 else
37170 goto Jyoushi_Input_Born_Day2:
37180 'endif
37190 'Okボタン以外を押したとき
37200 'else
37210 'c=val(buf_Day$)
37220 'buf_day = c * 10 + No
37230 'buf_Jyoushi_Born_Day(2) = buf_day
37240 'buf_Day$ = str$(buf_day)
37250 'locate 1,3
37260 'print "上司の生まれた日(1日~31日):";buf_Day$
37270 'goto Jyoushi_Input_Born_Day2:
37280 endif
37290 'case 3:
37300 'count=4
37310 'c=val(buf_day$)
37320 'buf_day=c*10+No
37330 'buf_day$=str$(buf_day)
37340 'locate 2,3
37350 'print "生まれた日を入れてください:";buf_day$
37360 'year=val(buf_year$)
37370 'if (No = -1) then
37380 'goto Jyoushi_Input_Born_Day:
37390 'sp_on 14,0:
37400 'goto complate_jyoushi:
37410 'else
37420 'goto Jyoushi_Input_Born_Month2:
37430 'endif
37440 'case 4:
37450 'bufyear=buf_year
37460 'if (No=-1) then
37470 'buf_day = val(buf_day$)
37480 'bufday = buf_day
37490 'sp_on 14,0
37500 'goto Jyoushi_Input_Born_Day2:
37510 'else
37520 'goto Jyoushi_Input_Born_Day2:
37530 'endif
37540 end select
37550 endif
37560 if (bg2=2) then
37570 select case count2
37580 case 0:
37590 if (No=-1) then
37600 buf_day=0:buf_Day$="**":No=0
37610 if (buf_day >= 1 and buf_day <= 31) then
37620 count=0
37630 buf_day=0:buf_Day$ = "**"
37640 goto rewrite_day3:
37650 else
37660 buf_day=0:buf_Day$ = "**"
37670 ui_msg"値が範囲外です"
37680 endif
37690 goto rewrite_day3:
37700 else
37710 goto rewrite_day3:
37720 endif
37730 rewrite_day3:
37740 locate 2,3
37750 color rgb(255,255,255)
37760 print "                                      "
37770 locate 2,3
37780 print "生まれた日(1日~31日):" + buf_Day$
37790 goto Jyoushi_Input_Born_Day2:
37800 end select
37810 endif
37820 '--------------------------------------------'
37830 'locate 2,0:color rgb(255,0,0)
37840 'print "上司の生まれた年代を入力"
37850 'color rgb(255,255,255)
37860 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
37870 'locate 2,4:Input "上司の生まれた年:",born_year
37880 '誕生日データーを配列に代入
37890 'buf_Jyoushi_Born_Year:上司の生まれた年代
37900 'buf_Jyoushi_Born_Day(0) = born_year
37910 'born_year = 0
37920 '---------------------------------------------'
37930 'goto Jyoushi_born_month:
37940 '1-2.生まれた月を入力
37950 'Jyoushi_born_month:
37960 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37970 'init "kb:4"
37980 'locate 2,1:
37990 'color rgb(255,0,0)
38000 'print "上司の生まれた月入力"
38010 'color rgb(255,255,255)
38020 'locate 2,4:print "生まれた月を入力してください"
38030 'locate 2,5
38040 'Input "上司の生まれ月:",born_month
38050 'buf_Jyoushi_Born_Day(1) = born_month
38060 'born_month = 0
38070 'goto Jyoushi_born_day:
38080 'buf_Jyoushi_Born_day
38090 '1-3.生まれた日を入力
38100 'Jyoushi_born_day:
38110 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38120 'init "kb:4"
38130 'locate 2,1:color rgb(255,0,0)
38140 'print "上司の生まれた日　入力"
38150 'locate 2,4:color rgb(255,255,255)
38160 'print "生まれた日を入力してください"
38170 'locate 2,5
38180 'Input "上司の生まれた日:",born_day
38190 'buf_Jyoushi_Born_Day(2) = born_day
38200 'born_day = 0
38210 'goto buka_born_year:
38220 '2.部下の誕生日入力
38230 '2-1.生まれた年を入力
38240 'buka_born_year:
38250 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38260 'init "kb:2"
38270 'locate 1,1:color rgb(255,0,0)
38280 'print "部下の生まれた年代入力"
38290 'locate 0,4:color rgb(255,255,255)
38300 'print "部下の生まれた年（西暦4桁）を入れてください"
38310 'locate 0,5
38320 'Input "部下の生まれた年(西暦4桁):",born_year
38330 'buf_Buka_Born_Day(0) = born_year
38340 'born_year = 0
38350 '2-2.生まれた月を入力
38360 'buka_born_month:
38370 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38380 'init "kb:2"
38390 'locate 2,1:color rgb(255,0,0)
38400 'print "部下の生まれた月 入力"
38410 'locate 2,4:color rgb(255,255,255)
38420 'print "部下の生まれた月を入力してください"
38430 'locate 2,5:Input "部下の生まれた月:",born_month
38440 'buf_Buka_Born_Day(1) = born_month
38450 '2-3.生まれた日を入力
38460 'buka_born_day:
38470 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38480 'init "kb:2"
38490 'locate 2,1:color rgb(255,0,0)
38500 'print "生まれた日入力"
38510 'color rgb(255,255,255)
38520 'locate 2,4:print "生まれた日を入力してください"
38530 'locate 2,5:Input "部下の生まれた日:",born_day
38540 'buf_Buka_Born_Day(2) = born_day
38550 'born_day=0:goto Result_Business_Aisyou:
38560 '--------------------------------------------'
38570 complate_jyoushi:
38580 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
38590 buf_Jyoushi = Kabara_Num(a,b,c)
38600 a_1=buf_Jyoushi
38610 goto Buka_Input_Seireki:
38620 '--------------------------------------------'
38630 '部下'
38640 '1.部下の生まれた年代'
38650 Buka_Input_Seireki:
38660 cls 3:play "":count=0:count2=0
38670 init"kb:4"
38680 'No=-1:Okのとき
38690 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
38700 for i=0 to 3
38710 buf_Buka_Born_Day(i)=0
38720 next i
38730 gload Gazo$ + "Screen1.png",0,0,0
38740 gload Gazo$ + "downscreen.png",0,0,800
38750 'Init"kb:2"
38760 '音声ファイル再生 2023.06.07
38770 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38780 font 48
38790 locate 0,1
38800 '文字色：黒　 color rgb(0,0,0)
38810 color rgb(255,255,255)
38820 print "部下の生まれた年代を入れて下さい" + chr$(13)
38830 color rgb(255,255,255)
38840 locate 1,3
38850 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38860 color rgb(255,255,255)
38870 'locate 4,6:print ":7"
38880 'locate 9,6:print ":8"
38890 'locate 12,6:print ":9"
38900 locate 4,6
38910 print ":7  :8  :9" + chr$(13)
38920 color rgb(255,255,255)
38930 locate 4,8
38940 print ":4  :5  :6" + chr$(13)
38950 color rgb(255,255,255)
38960 locate 4,10
38970 print ":1  :2  :3" + chr$(13)
38980 locate 4,12
38990 print "    :0"
39000 locate 12,12
39010 color rgb(0,0,255)
39020 print ":Ok"
39030 sp_on 4,0: sp_on 5,0:sp_on 6,0
39040 sp_on 7,0:sp_on 8,0:sp_on 9,0
39050 sp_on 10,0:sp_on 11,0:sp_on 12,0
39060 sp_on 13,0:sp_on 14,1
39070 Buka_Input_Seireki2:
39080 key$="":bg=0:y=0:y2=0:bg2=0:
39090 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
39100 key$ = inkey$
39110 bg = strig(1)
39120 y = stick(1)
39130 y2 = stick(0)
39140 bg2=strig(0)
39150 pause 5
39160 wend
39170 '十字キー　ここから
39180 '上の矢印　または、十字キー上
39190 if ((y = -1) or (key$ = chr$(30))) then
39200 select case No
39210 'No=-1:okのとき:初期の状態
39220 '0kボタンから３に移動
39230 '上に行く 処理
39240 case -1:
39250 No=3:sp_on 12,1:sp_on 14,0
39260 pause 200:goto Buka_Input_Seireki2:
39270 '選択肢:3
39280 '3ボタンから 6に移動
39290 case 3:
39300 No=6:sp_on 12,0:sp_on 11,1
39310 pause 200:goto Buka_Input_Seireki2:
39320 '6ボタンから ９に移動
39330 case 6:
39340 No=9:sp_on 10,1:sp_on 11,0
39350 pause 200:goto Buka_Input_Seireki2:
39360 '6ボタンから ９に移動　ここまで
39370 '9で上を押して何もしない
39380 case 9:
39390 '何もしない
39400 No=9
39410 pause 200:goto Buka_Input_Seireki2:
39420 '9で上を押しても何もしない　ここまで
39430 '上　 0ボタンから2ボタン
39440 'sp_on 6,1:1
39450 'sp_on 8,1:5
39460 'sp_on 7,1:7
39470 case 0:
39480 No=2:sp_on 13,0:sp_on 9,1:
39490 pause 200:goto Buka_Input_Seireki2:
39500 '上  0ボタンから2ボタン　ここまで
39510 '2から５になる 上
39520 case 2:
39530 No=5:sp_on 8,1:sp_on 9,0:
39540 pause 200:goto Buka_Input_Seireki2:
39550 case 5:
39560 No=8:sp_on 7,1:sp_on 8,0
39570 pause 200:goto Buka_Input_Seireki2:
39580 case 8:
39590 pause 200:goto Buka_Input_Seireki2:
39600 case 1:
39610 No=4:sp_on 5,1:sp_on 6,0
39620 pause 200:goto Buka_Input_Seireki2:
39630 case 4:
39640 No=7:sp_on 4,1:sp_on 5,0
39650 pause 200:goto Buka_Input_Seireki2:
39660 case 7:
39670 pause 200:goto Buka_Input_Seireki2:
39680 end select
39690 endif
39700 '左３　ここまで
39710 '下の矢印
39720 '中央 2
39730 if ((y=1) or (key$ = chr$(31))) then
39740 select case No
39750 '9から６に下げる
39760 case 9:
39770 No=6:sp_on 11,1:sp_on 10,0
39780 pause 200:goto Buka_Input_Seireki2:
39790 '6から３に下げる
39800 case 6:
39810 No=3:sp_on 12,1:sp_on 11,0
39820 pause 200:goto Buka_Input_Seireki2:
39830 '3から０ｋに変える
39840 case 3:
39850 No=-1:sp_on 14,1:sp_on 12,0
39860 pause 200:goto Buka_Input_Seireki2:
39870 'Okから下のボタンを押しても何もしない
39880 case -1:
39890 pause 200:goto Buka_Input_Seireki2:
39900 case 8:
39910 No=5:sp_on 8,1:sp_on 7,0
39920 pause 200:goto Buka_Input_Seireki2:
39930 case 5:
39940 No=2:sp_on 9,1:sp_on 8,0
39950 pause 200:goto Buka_Input_Seireki2:
39960 case 2:
39970 No=0:sp_on 13,1:sp_on 9,0
39980 pause 200:goto Buka_Input_Seireki2:
39990 case 0:
40000 pause 200:goto Buka_Input_Seireki2:
40010 case 7:
40020 No=4:sp_on 5,1:sp_on 4,0
40030 pause 200:goto Buka_Input_Seireki2:
40040 case 4:
40050 No=1:sp_on 6,1:sp_on 5,0
40060 pause 200:goto Buka_Input_Seireki2:
40070 case 1:
40080 pause 200:goto Buka_Input_Seireki2:
40090 end select
40100 endif
40110 '左へボタン 十字キー　左　or 　カーソル左
40120 if ((y2 = -1) or (key$ = chr$(29))) then
40130 select case No
40140 'Ok ボタン  Okから　左　０に行く
40150 case -1:
40160 No=0:sp_on 13,1:sp_on 14,0
40170 pause 200:goto Buka_Input_Seireki2:
40180 '0 ボタン  左　何もしない
40190 case 0:
40200 pause 200:goto Buka_Input_Seireki2:
40210 case 3:
40220 No=2:sp_on 9,1:sp_on 12,0:
40230 pause 200:goto Buka_Input_Seireki2:
40240 case 2:
40250 No=1:sp_on 6,1:sp_on 9,0:
40260 pause 200:goto Buka_Input_Seireki2:
40270 case 1:
40280 pause 200:goto Buka_Input_Seireki2:
40290 case 6:
40300 No=5:sp_on 8,1:sp_on 11,0
40310 pause 200:goto Buka_Input_Seireki2:
40320 case 5:
40330 No=4:sp_on 5,1:sp_on 8,0
40340 pause 200:goto Buka_Input_Seireki2:
40350 case 4:
40360 pause 200:goto Buka_Input_Seireki2:
40370 case 9:
40380 No=8:sp_on 7,1:sp_on 10,0
40390 pause 200:goto Buka_Input_Seireki2:
40400 case 8:
40410 No=7:sp_on 4,1:sp_on 7,0
40420 pause 200:goto Buka_Input_Seireki2:
40430 case 7:
40440 pause 200:goto Buka_Input_Seireki2:
40450 end select
40460 endif
40470 '右  十字キー　右　or カーソル　右
40480 if ((y2 = 1) or (key$ = chr$(28))) then
40490 select case No
40500 '0ボタンからokボタン右に移動
40510 case 0:
40520 No=-1:sp_on 14,1:sp_on 13,0
40530 pause 200:goto Buka_Input_Seireki2:
40540 '0ボタンからokボタン 右に移動　ここまで
40550 'OKボタンで右を押して何もしない
40560 case -1:
40570 pause 200:goto Buka_Input_Seireki2:
40580 case 1:
40590 No=2:sp_on 9,1:sp_on 6,0
40600 pause 200:goto Buka_Input_Seireki2:
40610 case 2:
40620 No=3:sp_on 12,1:sp_on 9,0
40630 pause 200:goto Buka_Input_Seireki2:
40640 case 3:
40650 pause 200:goto Buka_Input_Seireki2:
40660 case 4:
40670 No=5:sp_on 8,1:sp_on 5,0
40680 pause 200:goto Buka_Input_Seireki2:
40690 case 5:
40700 No=6:sp_on 11,1:sp_on 8,0
40710 pause 200:goto Buka_Input_Seireki2:
40720 case 7:
40730 No=8:sp_on 7,1:sp_on 4,0
40740 pause 200:goto Buka_Input_Seireki2:
40750 case 8:
40760 No=9:sp_on 10,1:sp_on 7,0
40770 pause 200:goto Buka_Input_Seireki2:
40780 case 9:
40790 pause 200:goto Buka_Input_Seireki2:
40800 case 6:
40810 pause 200:goto Buka_Input_Seireki2:
40820 end select
40830 'Okから右ボタンを押して何もしない ここまで
40840 endif
40850 '十字キー　ここまで
40860 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
40870 'ここからコメント
40880 '右の丸ボタン決定を押した数:count
40890 'if ((bg=2) or (key$=chr$(13))) then
40900 'select case count
40910 'case 0:
40920 'count=1
40930 'if (No = -1) then
40940 'count = 0
40950 'Okボタンを押したとき
40960 '
40970 'goto Buka_Input_Seireki2:
40980 'else
40990 'Okボタン以外が押されたとき
41000 'if (No >= 1 and No <= 2) then
41010 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
41020 'buf_buka_year = No
41030 'buf_Buka_Born_Day(0) = bufyear
41040 'locate 2,3
41050 'color rgb(255,255,255)
41060 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41070 'goto Buka_Input_Seireki2:
41080 'else
41090 'count=0
41100 'ui_msg"数字が範囲外になります。"
41110 'buf_buka_year$ ="":buf_buka_year=0
41120 'goto Buka_Input_Seireki2:
41130 'endif
41140 'endif
41150 'case 1:
41160 'count = 2
41170 'if (No = -1) then
41180 'count = 1
41190 'goto Buka_Input_Seireki2:
41200 'else
41210 'b = val(buf_buka_year$)
41220 'buf_buka_year = b * 10 + No
41230 'buf_buka_year$ = str$(buf_buka_year)
41240 'buf_Buka_Born_Day(0) = bufyear
41250 'locate 1,3
41260 'color rgb(255,255,255)
41270 'print "                                                                "
41280 'locate 1,3
41290 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41300 'if (No = -1) then
41310 'count=1
41320 'goto Buka_Input_Seireki2:
41330 'endif
41340 'case 2:
41350 'count = 3
41360 'if (No = -1) then
41370 'count = 2
41380 'buf_Buka_Born_Day(0)=bufyear
41390 'goto Buka_Input_Seireki2:
41400 'else
41410 'b = val(buf_buka_year$)
41420 'buf_buka_year = b*10 + No
41430 'buf_buka_year$ = str$(buf_buka_year)
41440 'locate 1,3
41450 'color rgb(255,255,255)
41460 'print "                                        "
41470 'locate 1,3
41480 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41490 'goto Buka_Input_Seireki2:
41500 'endif
41510 'case 3:
41520 'count=4
41530 'if (No = -1) then
41540 'count=3
41550 'goto Buka_Input_Seireki2:
41560 'else
41570 'b = buf_buka_year
41580 'buf_buka_year = b * 10 + No
41590 'buf_buka_year$=str$(buf_buka_year)
41600 'locate 1,3
41610 'color RGB(255,255,255)
41620 'print "                                      "
41630 'locate 1,3
41640 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41650 'buf_year=val(buf_year$)
41660 'year=val(buf_year$)
41670 'if (No=-1) then
41680 'goto Input_Born_Month:
41690 'else
41700 'goto Buka_Input_Seireki2:
41710 'endif
41720 'case 4:
41730 'bufyear=buf_year
41740 'if (No=-1) then
41750 'buf_year = val(buf_year$)
41760 'bufyear = buf_year
41770 'sp_on 14,0
41780 'goto Buka_Input_Born_Month:
41790 'else
41800 'goto Buka_Input_Seireki2:
41810 'endif
41820 'end select
41830 'endif
41840 'if (bg2 = 2) then
41850 'select case count2
41860 'case 0:
41870 'if (No = -1) then
41880 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
41890 'count=0
41900 'locate 1,3
41910 'color rgb(255,255,255)
41920 'print "                                      "
41930 'locate 1,3
41940 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
41950 'goto Buka_Input_Seireki2:
41960 'else
41970 '(buf_year=0) then
41980 'buf_buka_year=0:buf_buka_year$="****"
41990 'goto Buka_Input_Seireki2:
42000 'endif
42010 'endif
42020 'end select
42030 'endif
42040 'end
42050 'ここまでコメント
42060 '================================================================
42070 if ((bg=2) or (key$=chr$(13))) then
42080 select case count
42090 case 0:
42100 count = 1
42110 if (No=-1) then
42120 count = 0
42130 buf_Buka_Born_Day(0) = No
42140 'Okボタンを押したとき
42150 goto Buka_Input_Seireki2:
42160 else
42170 'Okボタン以外が押されたとき
42180 if (No>=1 and No<=2) then
42190 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
42200 buf_buka_year = No
42210 buf_Buka_Born_Day(0) = No
42220 locate 1,3
42230 color rgb(255,255,255)
42240 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42250 goto Buka_Input_Seireki2:
42260 else
42270 count=0
42280 ui_msg"数字が範囲外になります。"
42290 buf_buka_year$="":buf_buka_year=0
42300 goto Buka_Input_Seireki2:
42310 endif
42320 endif
42330 case 1:
42340 count = 2
42350 if (No = -1) then
42360 count = 1
42370 goto Buka_Input_Seireki2:
42380 else
42390 'b = val(buf_buka_year$)
42400 buf_buka_year = a * 10 + No
42410 b=buf_buka_year
42420 buf_buka_year$ = str$(buf_buka_year)+"**"
42430 buf_Buka_Born_Day(0)=buf_buka_year
42440 locate 1,3
42450 color rgb(255,255,255)
42460 print "                                                                "
42470 locate 1,3
42480 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
42490 'if (No = -1) then
42500 'count=1
42510 goto Buka_Input_Seireki2:
42520 endif
42530 case 2:
42540 count=3
42550 if (No=-1) then
42560 count =2:No=0
42570 goto Buka_Input_Seireki2:
42580 else
42590 'b = val(buf_buka_year$)
42600 buf_buka_year = b * 10 + No
42610 c = buf_buka_year
42620 buf_buka_year$ = str$(buf_buka_year) + "*"
42630 buf_Buka_Born_Day(0) = buf_buka_year
42640 locate 1,3
42650 color rgb(255,255,255)
42660 print "                                        "
42670 locate 1,3
42680 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42690 goto Buka_Input_Seireki2:
42700 endif
42710 case 3:
42720 count=4
42730 if (No = -1) then
42740 'count=3:No=0
42750 goto Buka_Input_Seireki2:
42760 else
42770 'b = val(buf_buka_year$)
42780 buf_buka_year=c * 10 + No
42790 buf_buka_year$=str$(buf_buka_year)
42800 buf_Buka_Born_Day(0)=buf_buka_year
42810 locate 1,3
42820 color RGB(255,255,255)
42830 print "                                      "
42840 locate 1,3
42850 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42860 buf_buka_year=val(buf_buka_year$)
42870 'year=val(buf_year$)
42880 'if (No=-1) then
42890 'goto Input_Born_Month:
42900 'else
42910 goto Buka_Input_Seireki2:
42920 endif
42930 case 4:
42940 'bufyear=buf_year
42950 if (No = -1) then
42960 buf_buka_year = val(buf_buka_year$)
42970 buf_Buka_Born_Day(0)=buf_buka_year
42980 sp_on 14,0
42990 goto Buka_Input_Born_Month:
43000 else
43010 goto Buka_Input_Seireki2:
43020 endif
43030 end select
43040 endif
43050 '================================================================
43060 'ここにコピーする。
43070 '================================================================
43080 'Input"部下の生れた年代(4桁,〜2025年):",year
43090 'if year > 2025 then goto Jyoushi_Input_Seireki:
43100 'if year = 123 then cls 3:cls 4:goto Main_Screen:
43110 '"4桁目"
43120 'bufyear4 = fix(year / 1000)
43130 '"3桁目"
43140 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
43150 '"2桁目"
43160 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
43170 '"1桁目"
43180 'bufyear1 = fix((year - ((bufyear4*
43190 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
43200 '1.部下の生まれた年代'
43210 '2.部下の生まれた月'
43220 Buka_Input_Born_Month:
43230 cls 3:play "":count=0:count2=0
43240 'No=-1:Okのとき
43250 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
43260 for i=0 to 1
43270 buf_month(i)=0
43280 next i
43290 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43300 gload Gazo$ + "Screen1.png",0,0,0
43310 gload Gazo$ + "downscreen.png",0,0,800
43320 'Init"kb:4"
43330 '音声ファイル再生 2023.06.07
43340 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
43350 font 48
43360 locate 0,1
43370 '文字色：黒　 color rgb(0,0,0)
43380 '文字色:白
43390 color rgb(255,255,255)
43400 print "部下の生まれた月を入れて下さい" + chr$(13)
43410 '文字色:白
43420 color rgb(255,255,255)
43430 locate 1,3
43440 '文字色:白
43450 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
43460 color rgb(255,255,255)
43470 'locate 4,6:print ":7"
43480 'locate 9,6:print ":8"
43490 'locate 12,6:print ":9"
43500 locate 4,6
43510 '文字色:赤
43520 print ":7  :8  :9" + chr$(13)
43530 color rgb(255,255,255)
43540 locate 4,8
43550 print ":4  :5  :6" + chr$(13)
43560 color rgb(255,255,255)
43570 locate 4,10
43580 print ":1  :2  :3" + chr$(13)
43590 locate 4,12
43600 print "    :0"
43610 locate 12,12
43620 color rgb(0,0,255)
43630 print ":Ok"
43640 sp_on 4,0: sp_on 5,0:sp_on 6,0
43650 sp_on 7,0:sp_on 8,0:sp_on 9,0
43660 sp_on 10,0:sp_on 11,0:sp_on 12,0
43670 sp_on 13,0:sp_on 14,1
43680 Buka_Input_Born_Month2:
43690 key$="":bg=0:y=0:y2=0:bg2=0
43700 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43710 key$ = inkey$
43720 bg = strig(1)
43730 y = stick(1)
43740 y2 = stick(0)
43750 bg2 = strig(0)
43760 pause 5
43770 wend
43780 '十字キー　ここから
43790 '上の矢印　または、十字キー上
43800 if ((y = -1) or (key$ = chr$(30))) then
43810 select case No
43820 'No=-1:okのとき:初期の状態
43830 '0kボタンから３に移動
43840 '上に行く 処理
43850 case -1:
43860 No=3:sp_on 12,1:sp_on 14,0
43870 pause 200:goto Buka_Input_Born_Month2:
43880 '選択肢:3
43890 '3ボタンから 6に移動
43900 case 3:
43910 No=6:sp_on 12,0:sp_on 11,1
43920 pause 200:goto Buka_Input_Born_Month2:
43930 '6ボタンから ９に移動
43940 case 6:
43950 No=9:sp_on 10,1:sp_on 11,0
43960 pause 200:goto Buka_Input_Born_Month2:
43970 '6ボタンから ９に移動　ここまで
43980 '9で上を押して何もしない
43990 case 9:
44000 '何もしない
44010 No=9
44020 pause 200:goto Buka_Input_Born_Month2:
44030 '9で上を押しても何もしない　ここまで
44040 '上　 0ボタンから2ボタン
44050 'sp_on 6,1:1
44060 'sp_on 8,1:5
44070 'sp_on 7,1:7
44080 case 0:
44090 No=2:sp_on 13,0:sp_on 9,1:
44100 pause 200:goto Buka_Input_Born_Month2:
44110 '上  0ボタンから2ボタン　ここまで
44120 '2から５になる 上
44130 case 2:
44140 No=5:sp_on 8,1:sp_on 9,0:
44150 pause 200:goto Buka_Input_Born_Month2:
44160 case 5:
44170 No=8:sp_on 7,1:sp_on 8,0
44180 pause 200:goto Buka_Input_Born_Month2:
44190 case 8:
44200 pause 200:goto Buka_Input_Born_Month2:
44210 case 1:
44220 No=4:sp_on 5,1:sp_on 6,0
44230 pause 200:goto Buka_Input_Born_Month2:
44240 case 4:
44250 No=7:sp_on 4,1:sp_on 5,0
44260 pause 200:goto Buka_Input_Born_Month2:
44270 case 7:
44280 pause 200:goto Buka_Input_Born_Month2:
44290 end select
44300 endif
44310 '左３　ここまで
44320 '下の矢印
44330 '中央 2
44340 if ((y=1) or (key$ = chr$(31))) then
44350 select case No
44360 '9から６に下げる
44370 case 9:
44380 No=6:sp_on 11,1:sp_on 10,0
44390 pause 200:goto Buka_Input_Born_Month2:
44400 '6から３に下げる
44410 case 6:
44420 No=3:sp_on 12,1:sp_on 11,0
44430 pause 200:goto Buka_Input_Born_Month2:
44440 '3から０ｋに変える
44450 case 3:
44460 No=-1:sp_on 14,1:sp_on 12,0
44470 pause 200:goto Buka_Input_Born_Month2:
44480 'Okから下のボタンを押しても何もしない
44490 case -1:
44500 pause 200:goto Buka_Input_Born_Month2:
44510 case 8:
44520 No=5:sp_on 8,1:sp_on 7,0
44530 pause 200:goto Buka_Input_Born_Month2:
44540 case 5:
44550 No=2:sp_on 9,1:sp_on 8,0
44560 pause 200:goto Buka_Input_Born_Month2:
44570 case 2:
44580 No=0:sp_on 13,1:sp_on 9,0
44590 pause 200:goto Buka_Input_Born_Month2:
44600 case 0:
44610 pause 200:goto Buka_Input_Born_Month2:
44620 case 7:
44630 No=4:sp_on 5,1:sp_on 4,0
44640 pause 200:goto Buka_Input_Born_Month2:
44650 case 4:
44660 No=1:sp_on 6,1:sp_on 5,0
44670 pause 200:goto Buka_Input_Born_Month2:
44680 case 1:
44690 pause 200:goto Buka_Input_Born_Month2:
44700 end select
44710 endif
44720 '左へボタン 十字キー　左　or 　カーソル左
44730 if ((y2 = -1) or (key$ = chr$(29))) then
44740 select case No
44750 'Ok ボタン  Okから　左　０に行く
44760 case -1:
44770 No=0:sp_on 13,1:sp_on 14,0
44780 pause 200:goto Buka_Input_Born_Month2:
44790 '0 ボタン  左　何もしない
44800 case 0:
44810 pause 200:goto Buka_Input_Born_Month2:
44820 case 3:
44830 No=2:sp_on 9,1:sp_on 12,0:
44840 pause 200:goto Buka_Input_Born_Month2:
44850 case 2:
44860 No=1:sp_on 6,1:sp_on 9,0:
44870 pause 200:goto Buka_Input_Born_Month2:
44880 case 1:
44890 pause 200:goto Buka_Input_Born_Month2:
44900 case 6:
44910 No=5:sp_on 8,1:sp_on 11,0
44920 pause 200:goto Buka_Input_Born_Month2:
44930 case 5:
44940 No=4:sp_on 5,1:sp_on 8,0
44950 pause 200:goto Buka_Input_Born_Month2:
44960 case 4:
44970 pause 200:goto Buka_Input_Born_Month2:
44980 case 9:
44990 No=8:sp_on 7,1:sp_on 10,0
45000 pause 200:goto Buka_Input_Born_Month2:
45010 case 8:
45020 No=7:sp_on 4,1:sp_on 7,0
45030 pause 200:goto Buka_Input_Born_Month2:
45040 case 7:
45050 pause 200:goto Buka_Input_Born_Month2:
45060 end select
45070 endif
45080 '右  十字キー　右　or カーソル　右
45090 if ((y2 = 1) or (key$ = chr$(28))) then
45100 select case No
45110 '0ボタンからokボタン右に移動
45120 case 0:
45130 No=-1:sp_on 14,1:sp_on 13,0
45140 pause 200:goto Buka_Input_Born_Month2:
45150 '0ボタンからokボタン 右に移動　ここまで
45160 'OKボタンで右を押して何もしない
45170 case -1:
45180 pause 200:goto Buka_Input_Born_Month2:
45190 case 1:
45200 No=2:sp_on 9,1:sp_on 6,0
45210 pause 200:goto Buka_Input_Born_Month2:
45220 case 2:
45230 No=3:sp_on 12,1:sp_on 9,0
45240 pause 200:goto Buka_Input_Born_Month2:
45250 case 3:
45260 pause 200:goto Buka_Input_Born_Month2:
45270 case 4:
45280 No=5:sp_on 8,1:sp_on 5,0
45290 pause 200:goto Buka_Input_Born_Month2:
45300 case 5:
45310 No=6:sp_on 11,1:sp_on 8,0
45320 pause 200:goto Buka_Input_Born_Month2:
45330 case 7:
45340 No=8:sp_on 7,1:sp_on 4,0
45350 pause 200:goto Buka_Input_Born_Month2:
45360 case 8:
45370 No=9:sp_on 10,1:sp_on 7,0
45380 pause 200:goto Buka_Input_Born_Month2:
45390 case 9:
45400 pause 200:goto Buka_Input_Born_Month2:
45410 case 6:
45420 pause 200:goto Buka_Input_Born_Month2:
45430 end select
45440 'Okから右ボタンを押して何もしない ここまで
45450 endif
45460 '十字キー　ここまで
45470 '右の丸ボタン　決定キー
45480 if ((bg=2) or (key$=chr$(13))) then
45490 select case count
45500 case 0:
45510 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
45520 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
45530 locate 1,3
45540 color RGB(255,255,255)
45550 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
45560 goto Buka_Input_Born_Month2:
45570 case 1:
45580 count = 2:buf_buka_month=a*10+No
45590 if (No = -1) then
45600 'count=0
45610 month=buf_buka_month
45620 buf_buka_month=val(buf_buka_Month$)
45630 month=buf_buka_month
45640 '生まれた日に飛ぶ
45650 goto Buka_Input_Born_Day:
45660 else
45670 buf_buka_month = a * 10 + No
45680 buf_buka_Month$ = str$(buf_buka_month)
45690 buf_Buka_Born_Day(1) = buf_buka_month
45700 locate 1,3
45710 color Rgb(255,255,255)
45720 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
45730 goto Buka_Input_Born_Month2:
45740 endif
45750 case 2:
45760 count=3
45770 'c= val(buf_Month$)
45780 'buf_month = c*10 + No
45790 'buf_Month$ = str$(buf_month)
45800 'locate 2,3
45810 'print "部下の生まれた月(1月～12月):";buf_Month$
45820 'goto Buka_Input_Born_Month2:
45830 'case 3:
45840 'count=4
45850 'b=val(buf_month$)
45860 'buf_month=c*10+No
45870 'buf_Month$=str$(buf_month)
45880 'locate 2,3
45890 'print "部下の生まれた月(1月～12月):";buf_Month$
45900 'buf_month=val(buf_Month$)
45910 'year=val(buf_year$)
45920 if (No=-1) then
45930 goto Buka_Input_Born_Day:
45940 else
45950 goto Input_Born_Month2:
45960 endif
45970 'case 4:
45980 'bufyear=buf_year
45990 'if (No=-1) then
46000 'buf_month = val(buf_Month$)
46010 'month = buf_month
46020 'sp_on 14,0
46030 'goto Input_Born_Day:
46040 'else
46050 'goto Input_Born_Month2:
46060 'endif
46070 end select
46080 endif
46090 '左の丸ボタン　キャンセル
46100 if (bg2=2) then
46110 select case count2
46120 case 0:
46130 if (No = -1) then
46140 buf_buka_month=0:buf_buka_Month$="**"
46150 count=0
46160 goto rewrite2:
46170 else
46180 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
46190 buf_month=0:buf_Month$="**"
46200 locate 2,3
46210 color rgb(255,255,255)
46220 print "                                       "
46230 goto rewrite2:
46240 if (No>12) then
46250 ui_msg"値が範囲外です。"
46260 goto rewrite2:
46270 endif
46280 endif
46290 endif
46300 rewrite2:
46310 locate 2,3
46320 color rgb(255,255,255)
46330 print "                                      "
46340 locate 2,3
46350 print "部下の生まれた月(1月~12月):";buf_buka_Month$
46360 goto Buka_Input_Born_Month2:
46370 end select
46380 'endif
46390 endif
46400 end
46410 '2.部下の生まれた月'
46420 '3.部下の生まれた日'
46430 '生れた日を入力
46440 Buka_Input_Born_Day:
46450 '生まれた日入力
46460 cls 3:play ""
46470 'No=-1:Okのとき
46480 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
46490 for i=0 to 1
46500 buf_day(i)=0
46510 next i
46520 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46530 gload Gazo$ + "Screen1.png",0,0,0
46540 gload Gazo$ + "downscreen.png",0,0,800
46550 'Init"kb:2"
46560 '音声ファイル再生 2023.06.07
46570 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
46580 font 48
46590 locate 0,1
46600 '文字色：黒　 color rgb(0,0,0)
46610 color rgb(255,255,255)
46620 print "部下の生まれた日を入れて下さい" + chr$(13)
46630 color rgb(255,255,255)
46640 locate 1,3
46650 print "部下の生まれた日(1日~31日):";buf_Day$
46660 color rgb(255,255,255)
46670 'locate 4,6:print ":7"
46680 'locate 9,6:print ":8"
46690 'locate 12,6:print ":9"
46700 locate 4,6
46710 print ":7  :8  :9" + chr$(13)
46720 color rgb(255,255,255)
46730 locate 4,8
46740 print ":4  :5  :6" + chr$(13)
46750 color rgb(255,255,255)
46760 locate 4,10
46770 print ":1  :2  :3" + chr$(13)
46780 locate 4,12
46790 print "    :0"
46800 locate 12,12
46810 color rgb(0,0,255)
46820 print ":Ok"
46830 sp_on 4,0: sp_on 5,0:sp_on 6,0
46840 sp_on 7,0:sp_on 8,0:sp_on 9,0
46850 sp_on 10,0:sp_on 11,0:sp_on 12,0
46860 sp_on 13,0:sp_on 14,1
46870 Buka_Input_Born_Day2:
46880 key$="":bg=0:y=0:y2=0:bg2=0
46890 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
46900 key$ = inkey$
46910 bg = strig(1)
46920 y = stick(1)
46930 y2 = stick(0)
46940 bg2 = strig(0)
46950 pause 5
46960 wend
46970 '十字キー　ここから
46980 '上の矢印　または、十字キー上
46990 if ((y = -1) or (key$ = chr$(30))) then
47000 select case No
47010 'No=-1:okのとき:初期の状態
47020 '0kボタンから３に移動
47030 '上に行く 処理
47040 case -1:
47050 No=3:sp_on 12,1:sp_on 14,0
47060 pause 200:goto Buka_Input_Born_Day2:
47070 '選択肢:3
47080 '3ボタンから 6に移動
47090 case 3:
47100 No=6:sp_on 12,0:sp_on 11,1
47110 pause 200:goto Buka_Input_Born_Day2:
47120 '6ボタンから ９に移動
47130 case 6:
47140 No=9:sp_on 10,1:sp_on 11,0
47150 pause 200:goto Buka_Input_Born_Day2:
47160 '6ボタンから ９に移動　ここまで
47170 '9で上を押して何もしない
47180 case 9:
47190 '何もしない
47200 No=9
47210 pause 200:goto Buka_Input_Born_Day2:
47220 '9で上を押しても何もしない　ここまで
47230 '上　 0ボタンから2ボタン
47240 'sp_on 6,1:1
47250 'sp_on 8,1:5
47260 'sp_on 7,1:7
47270 case 0:
47280 No=2:sp_on 13,0:sp_on 9,1:
47290 pause 200:goto Buka_Input_Born_Day2:
47300 '上  0ボタンから2ボタン　ここまで
47310 '2から５になる 上
47320 case 2:
47330 No=5:sp_on 8,1:sp_on 9,0:
47340 pause 200:goto Buka_Input_Born_Day2:
47350 case 5:
47360 No=8:sp_on 7,1:sp_on 8,0
47370 pause 200:goto Buka_Input_Born_Day2:
47380 case 8:
47390 pause 200:goto Buka_Input_Born_Day2:
47400 case 1:
47410 No=4:sp_on 5,1:sp_on 6,0
47420 pause 200:goto Buka_Input_Born_Day2:
47430 case 4:
47440 No=7:sp_on 4,1:sp_on 5,0
47450 pause 200:goto Buka_Input_Born_Day2:
47460 case 7:
47470 pause 200:goto Buka_Input_Born_Day2:
47480 end select
47490 endif
47500 '左３　ここまで
47510 '下の矢印
47520 '中央 2
47530 if ((y=1) or (key$ = chr$(31))) then
47540 select case No
47550 '9から６に下げる
47560 case 9:
47570 No=6:sp_on 11,1:sp_on 10,0
47580 pause 200:goto Buka_Input_Born_Day2:
47590 '6から３に下げる
47600 case 6:
47610 No=3:sp_on 12,1:sp_on 11,0
47620 pause 200:goto Buka_Input_Born_Day2:
47630 '3から０ｋに変える
47640 case 3:
47650 No=-1:sp_on 14,1:sp_on 12,0
47660 pause 200:goto Buka_Input_Born_Day2:
47670 'Okから下のボタンを押しても何もしない
47680 case -1:
47690 pause 200:goto Buka_Input_Born_Day2:
47700 case 8:
47710 No=5:sp_on 8,1:sp_on 7,0
47720 pause 200:goto Buka_Input_Born_Day2:
47730 case 5:
47740 No=2:sp_on 9,1:sp_on 8,0
47750 pause 200:goto Buka_Input_Born_Day2:
47760 case 2:
47770 No=0:sp_on 13,1:sp_on 9,0
47780 pause 200:goto Buka_Input_Born_Day2:
47790 case 0:
47800 pause 200:goto Buka_Input_Born_Day2:
47810 case 7:
47820 No=4:sp_on 5,1:sp_on 4,0
47830 pause 200:goto Buka_Input_Born_Day2:
47840 case 4:
47850 No=1:sp_on 6,1:sp_on 5,0
47860 pause 200:goto Buka_Input_Born_Day2:
47870 case 1:
47880 pause 200:goto Buka_Input_Born_Day2:
47890 end select
47900 endif
47910 '左へボタン 十字キー　左　or 　カーソル左
47920 if ((y2 = -1) or (key$ = chr$(29))) then
47930 select case No
47940 'Ok ボタン  Okから　左　０に行く
47950 case -1:
47960 No=0:sp_on 13,1:sp_on 14,0
47970 pause 200:goto Buka_Input_Born_Day2:
47980 '0 ボタン  左　何もしない
47990 case 0:
48000 pause 200:goto Buka_Input_Born_Day2:
48010 case 3:
48020 No=2:sp_on 9,1:sp_on 12,0:
48030 pause 200:goto Buka_Input_Born_Day2:
48040 case 2:
48050 No=1:sp_on 6,1:sp_on 9,0:
48060 pause 200:goto Buka_Input_Born_Day2:
48070 case 1:
48080 pause 200:goto Buka_Input_Born_Day2:
48090 case 6:
48100 No=5:sp_on 8,1:sp_on 11,0
48110 pause 200:goto Buka_Input_Born_Day2:
48120 case 5:
48130 No=4:sp_on 5,1:sp_on 8,0
48140 pause 200:goto Buka_Input_Born_Day2:
48150 case 4:
48160 pause 200:goto Buka_Input_Born_Day2:
48170 case 9:
48180 No=8:sp_on 7,1:sp_on 10,0
48190 pause 200:goto Buka_Input_Born_Day2:
48200 case 8:
48210 No=7:sp_on 4,1:sp_on 7,0
48220 pause 200:goto Buka_Input_Born_Day2:
48230 case 7:
48240 pause 200:goto Buka_Input_Born_Day2:
48250 end select
48260 endif
48270 '右  十字キー　右　or カーソル　右
48280 if ((y2 = 1) or (key$ = chr$(28))) then
48290 select case No
48300 '0ボタンからokボタン右に移動
48310 case 0:
48320 No=-1:sp_on 14,1:sp_on 13,0
48330 pause 200:goto Buka_Input_Born_Day2:
48340 '0ボタンからokボタン 右に移動　ここまで
48350 'OKボタンで右を押して何もしない
48360 case -1:
48370 pause 200:goto Buka_Input_Born_Day2:
48380 case 1:
48390 No=2:sp_on 9,1:sp_on 6,0
48400 pause 200:goto Buka_Input_Born_Day2:
48410 case 2:
48420 No=3:sp_on 12,1:sp_on 9,0
48430 pause 200:goto Buka_Input_Born_Day2:
48440 case 3:
48450 pause 200:goto Buka_Input_Born_Day2:
48460 case 4:
48470 No=5:sp_on 8,1:sp_on 5,0
48480 pause 200:goto Buka_Input_Born_Day2:
48490 case 5:
48500 No=6:sp_on 11,1:sp_on 8,0
48510 pause 200:goto Buka_Input_Born_Day2:
48520 case 7:
48530 No=8:sp_on 7,1:sp_on 4,0
48540 pause 200:goto Buka_Input_Born_Day2:
48550 case 8:
48560 No=9:sp_on 10,1:sp_on 7,0
48570 pause 200:goto Buka_Input_Born_Day2:
48580 case 9:
48590 pause 200:goto Buka_Input_Born_Day2:
48600 case 6:
48610 pause 200:goto Buka_Input_Born_Day2:
48620 end select
48630 'Okから右ボタンを押して何もしない ここまで
48640 endif
48650 '十字キー　ここまで
48660 '右の丸ボタンを押したとき
48670 if ((bg = 2) or (key$ = chr$(13))) then
48680 'count :決定ボタンを押した回数
48690 select case (count)
48700 '1桁目入力
48710 case 0:
48720 count = 1:
48730 if (No = -1) then
48740 '1桁目　OKでは何もしない
48750 'goto check:
48760 No=0
48770 else
48780 'ok以外のボタンを押したとき
48790 buf_buka_day = No:buf_buka_Day$ = str$(No)
48800 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
48810 buf_buka_Day$ = str$(No) + "*"
48820 endif
48830 a=No
48840 buf_Buka_Born_Day(2) = buf_buka_day
48850 locate 1,3
48860 print"                                      "
48870 color RGB(255,255,255)
48880 locate 1,3
48890 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48900 endif
48910 check2:
48920 if (No >= 1 and No <= 9) then
48930 sp_on 14,0
48940 goto Buka_Input_Born_Day2:
48950 else
48960 sp_on 14,0
48970 goto Result_Business_Aisyou:
48980 end
48990 endif
49000 case 1:
49010 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
49020 count = 2:
49030 'locate 2,3
49040 'color RGB(255,255,255)
49050 'print "生まれた日(1日~31日):";buf_Day$
49060 'Okボタンを押したときの処理
49070 '入力値　10未満のとき
49080 'c = buf_day
49090 if (No = -1) then
49100 'c=buf_day
49110 ' buf_day = c
49120 'buf_Day$ = str$(buf_day)
49130 '10以下のとき
49140 No=0
49150 if (buf_day < 10) then
49160 sp_on 14,0
49170 goto Result_Business_Aisyou:
49180 end
49190 endif
49200 else
49210 sp_on 14,0
49220 'c=No
49230 buf_buka_day = a * 10 + No
49240 buf_buka_Day$ = str$(buf_buka_day)
49250 buf_Buka_Born_Day(2) = buf_buka_day
49260 locate 0,3
49270 color Rgb(255,255,255)
49280 print "                                       "
49290 locate 1,3
49300 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
49310 goto Buka_Input_Born_Day2:
49320 endif
49330 '生まれた日　2桁目の数字　or 1桁の数字 + ok
49340 case 2:
49350 count=0
49360 'c=val(buf_Day$)
49370 'buf_day=c*10+No
49380 'buf_Day$=str$(buf_day)
49390 'day=buf_day
49400 'locate 2,3
49410 'print "生まれた日(1日〜31日):";buf_Day$
49420 'No=-1:ok ボタンを押したとき
49430 if (No = -1) then No=0
49440 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
49450 sp_on 14,0
49460 goto Result_Business_Aisyou:
49470 else
49480 goto Buka_Input_Born_Day2:
49490 endif
49500 'Okボタン以外を押したとき
49510 else
49520 c=val(buf_buka_Day$)
49530 buf_buka_day = c * 10 + No
49540 buf_buka_Day$ = str$(buf_buka_day)
49550 locate 1,3
49560 print "                "
49570 locate 1,3
49580 print "生まれた日(1日~31日):"+buf_buka_Day$
49590 goto Buka_Input_Born_Day2:
49600 'endif
49610 case 3:
49620 count=4
49630 'c=val(buf_day$)
49640 'buf_day=c*10+No
49650 'buf_day$=str$(buf_day)
49660 'locate 2,3
49670 'print "生まれた日を入れてください:";buf_day$
49680 'year=val(buf_year$)
49690 if (No = -1) then
49700 'goto Buka_Input_Born_Day:
49710 sp_on 14,0:
49720 goto complate_jyoushi:
49730 else
49740 goto Buka_Input_Born_Month2:
49750 endif
49760 'case 4:
49770 'bufyear=buf_year
49780 'if (No=-1) then
49790 'buf_day = val(buf_day$)
49800 'bufday = buf_day
49810 'sp_on 14,0
49820 goto complate_jyoushi:
49830 'else
49840 'goto Buka_Input_Born_Day2:
49850 'endif
49860 end select
49870 endif
49880 if (bg2=2) then
49890 select case count2
49900 case 0:
49910 if (No=-1) then
49920 'buf_day=0:buf_Day$="**"
49930 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
49940 count=0
49950 buf_buka_day=0:buf_buka_Day$="**"
49960 goto rewrite_day3:
49970 else
49980 buf_buka_day=0:buf_buka_Day$="**"
49990 ui_msg"値が範囲外です"
50000 endif
50010 goto rewrite_day3:
50020 else
50030 goto rewrite_day3:
50040 endif
50050 rewrite_day3:
50060 locate 2,3
50070 color rgb(255,255,255)
50080 print "                                      "
50090 locate 1,3
50100 print "生まれた日(1日~31日):"+buf_buka_Day$
50110 goto Buka_Input_Born_Day2:
50120 end select
50130 endif
50140 '3.部下の生まれた日'
50150 '部下'
50160 '--------------------------------------------'
50170 'ビジネの相性　結果表示
50180 Result_Business_Aisyou:
50190 cls 3:init "kb:4"
50200 a=0:b=0:c=0:d=0:e=0:f=0
50210 bg=0:key$=""
50220 gload Gazo$ + "Screen1.png",0,0,0
50230 gload Gazo$ + "downscreen.png",0,0,800
50240 sp_on 14,0
50250 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
50260 buf_Buka = Kabara_Num(d,e,f)
50270 a_2 = buf_Buka
50280 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
50290 locate 0,1
50300 color rgb(255,0,0)
50310 print "●.相性診断結果１"
50320 locate 0,4:
50330 color rgb(255,255,255)
50340 print "1.上司の名前:";buffer_name$(0)
50350 locate 0,6
50360 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
50370 locate 0,8
50380 print "2.部下の名前:";buffer_name$(1)
50390 locate 0,10
50400 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
50410 locate 0,12
50420 print "3.上司と部下の相性:";Result_Aisyou$
50430 locate 1,15
50440 color rgb(0,0,0)
50450 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
50460 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
50470 bg = strig(1)
50480 key$ = inkey$
50490 bg2 = strig(0)
50500 pause 5
50510 wend
50520 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
50530 if (bg2 = 2) then
50540 cls 3:goto Business_Aishou_Input_1_parson:
50550 endif
50560 'ビジネスの相性占い　結果2　説明
50570 Result_Business_Aisyou2:
50580 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
50590 gload Gazo$ + "Screen1.png",0,0,0
50600 locate 0,1
50610 color rgb(255,0,0)
50620 print "●.相性の説明"
50630 color rgb(255,255,255)
50640 locate 0,4
50650 print "相性:";Result_Aisyou$
50660 locate 0,6:
50670 print "相性の説明:";buf$
50680 locate 0,15
50690 color rgb(0,0,0)
50700 print "右の丸ボタン:トップ,左のボタン:前の画面"
50710 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
50720 bg = strig(1)
50730 bg2 = strig(0)
50740 key$ = inkey$
50750 pause 5
50760 wend
50770 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50780 if ((bg2 = 2)) then goto Result_Business_Aisyou:
50790 '自作関数 ここから
50800 func read_explain$(ba$)
50810 d$=""
50820 buf_String$=""
50830 if ba$="A" then
50840 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
50850 line input #1,a$
50860 a1$=mid$(a$,1,12)
50870 a2$=mid$(a$,13,17)
50880 a3$=mid$(a$,30,17)
50890 a4$=mid$(a$,47,18)
50900 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
50910 buf_String$ = a5$
50920 close #1
50930 endif
50940 if ba$="B"  then
50950 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
50960 line input #1,b$
50970 b1$=mid$(b$,1,15)
50980 b2$=mid$(b$,16,21)
50990 'b3$=mid$(b$,33,3)
51000 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
51010 buf_String$ = b4$
51020 close #1
51030 endif
51040 if ba$="C"  then
51050 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
51060 line input #1,c$
51070 c1$ = Mid$(c$,1,15)
51080 c2$ = Mid$(c$,16,33)
51090 c3$ = c1$ + chr$(13) + c2$
51100 buf_String$ = c3$
51110 close #1
51120 endif
51130 if ba$="D" then
51140 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
51150 line input #1,d$
51160 d1$=mid$(d$,1,15)
51170 d2$=mid$(d$,16,22)
51180 d3$=mid$(d$,38,7)
51190 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
51200 buf_String$ = d4$
51210 close #1
51220 endif
51230 if ba$="E"  then
51240 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
51250 line input #1,e$
51260 e1$=Mid$(e$,1,16)
51270 e2$=Mid$(e$,17,16)
51280 e3$=Mid$(e$,33,12)
51290 e4$=Mid$(e$,45,17)
51300 e5$=Mid$(e$,62,17)
51310 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
51320 buf_String$ = e6$
51330 close #1
51340 endif
51350 if ba$="F" then
51360 '改行を追加して表示を調整
51370 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
51380 line input #1,f$
51390 f1$=Mid$(f$,1,15)
51400 f2$=Mid$(f$,16,12)
51410 buf_String$ = f1$+chr$(13)+f2$
51420 close #1
51430 endif
51440 if ba$="G" then
51450 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
51460 line input #1,g$
51470 g1$ = mid$(g$,1,16)
51480 g2$ = mid$(g$,17,18)
51490 g3$ = mid$(g$,36,21)
51500 g4$ = mid$(g$,56,6)
51510 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
51520 buf_String$ = g5$
51530 close #1
51540 endif
51550 if ba$="H" then
51560 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
51570 line input #1,h$
51580 h1$=Mid$(h$,1,17)
51590 h2$=Mid$(h$,18,21)
51600 h3$=Mid$(h$,39,20)
51610 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
51620 buf_String$ = h$
51630 close #1
51640 endif
51650 if ba$ = "I" then
51660 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
51670 line input #1,i$
51680 i1$=Mid$(i$,1,10)
51690 i2$=Mid$(i$,11,13)
51700 i3$=Mid$(i$,25,16)
51710 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
51720 buf_String$ = i$
51730 close #1
51740 endif
51750 buffer$ = buf_String$
51760 endfunc buffer$
51770 'カバラ数（数秘番号を求める）
51780 func Kabara_Num(buffer_Year,month,day)
51790 '=============================
51800 'a1:4桁のうちの1桁目を求める
51810 '例 a1:1234の4が1桁目
51820 'a2:4桁のうちの2桁目を求める
51830 '例:a2:1234の3が2桁目
51840 'a3:4桁のうちの3桁目を求める
51850 '例 a3:1234の2が3桁目
51860 'a4:4桁のうちの4桁目を求める
51870 '例 a4:1234の1が4桁目
51880 '==============================
51890 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
51900 Year = buffer_Year
51910 '処理1　整数部分を取り出す。
51920 a4 = fix(Year / 1000)
51930 a3 = fix(Year / 100) - (a4 * 10)
51940 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
51950 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
51960 '処理　２　取り出した整数部分を足す。
51970 a_ = a1 + a2 + a3 + a4 +month + day
51980 'a1=0:a2=0:a3=0:a4=0
51990 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
52000 buffer = a_
52010 'else
52020 goto recomp2:
52030 'if (a_ = 10) then
52040 '  buffer = 1
52050 endif
52060 recomp2:
52070 a5=0:a6=0
52080 a5 = fix(a_ / 10)
52090 a6 = (a_) - (a5 * 10)
52100 a_ = a5 + a6
52110 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
52120 '結果に行く
52130 goto Res2:
52140 '  if ((a_>11) and (a_<99)) then
52150 else
52160 '再度計算
52170 goto recomp2:
52180 endif
52190 '     a1 = fix(a_ / 10)
52200 '     a2 = a_ - (a1 * 10)
52210 '     a_ = a1 + a2
52220 '     buffer = a_
52230 'endif
52240 'else
52250 '    bffer = a_
52260 'endif
52270 'endif
52280 'else
52290 'talk "プログラムを終了します。"
52300 'end
52310 'endif
52320 'kabara = 10
52330 Res2:
52340 kabara = a_
52350 endfunc kabara
52360 func Kabara_Aisyou$(buff1,buff2)
52370 a=0:b=0
52380 '範囲　1~9
52390 if ((buff1 > 0 and buff1 < 10)) then
52400 a = buff1
52410 else
52420 Select case buff1
52430 case 11:
52440 buff1=9:a=buff1
52450 case 22:
52460 buff1=10:a=buff1
52470 end select
52480 endif
52490 '範囲　１~９
52500 if ((buff2 > 0 and buff2 < 10)) then
52510 b = buff2
52520 else
52530 select case buff2
52540 case 11:
52550 buff2=9:b=buff2
52560 case 12:
52570 buff2=10:b=buff2
52580 end select
52590 endif
52600 Aisyou$ = Buffer_Business_Aisyou$(a,b)
52610 endfunc Aisyou$
52620 '=============================
52630 '自作関数 ここまで
52640 '1.数秘術　トップ画面
52650 '
52660 'Data_eraseを一番最後に持ってくる
52670 '=============================
52680 Data_erase:
52690 'メモリー削除
52700 erase buf_name1$
52710 erase buf_name2$
52720 erase buffer
52730 erase buf_chart$
52740 erase Buffer_Business_Aisyou$
52750 erase buffer_name$
52760 '上司の誕生日
52770 erase buf_Jyoushi_Born_Day
52780 '部下の誕生日
52790 erase buf_Buka_Born_Day
52800 erase buf_year
52810 erase buf_month
52820 erase buf_day
52830 'フォーカスライン
52840 erase Forcus1_buffer$
52850 erase Forcus2_buffer$
52860 erase Forcus3_buffer$
52870 buffer$ = ""
52880 buf$ = ""
52890 buf_year$ = ""
52900 buf_Jyoushi_Kabara_Num = 0
52910 buf_Buka_Kabara_Num = 0
52920 count = 0
52930 buf_Month$ = ""
52940 buf_Day$ = ""
52950 b=0
52960 c=0
52970 return
