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
440 Version$ = "Ver:1.2.4_20231119"
450 'Gazo file Folder
460 Gazo$ = "./data/Picture/"
470 'Voice files 2023
480 Voice$ = "./data/Voice/Voice/"
490 'BirtheyeChart Data:20230626
500 Birth_eye_chart$ = "./data/chart_data/"
510 'Data File
520 Data$ = "./data/data/"
530 'Business Aisyou 結果説明保存フォルダ
540 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
550 '変数定義 パート
560 b=0:c=0
570 dim buf_name1$(10),buf_name2$(10)
580 dim buffer(9),buf_chart$(26,2)
590 'ビジネスの相性　データー
600 dim Buffer_Business_Aisyou$(12,12)
610 '生れた年代
620 dim buf_year(4):buf_year$ = ""
630 dim buf_month(2)
640 dim buf_day(2)
650 'フォーカスライン　配列
660 dim Forcus1_buffer$(3)
670 dim Forcus2_buffer$(3)
680 dim Forcus3_buffer$(2)
690 '生れた月
700 buf_Month$ = ""
710 '生れた日
720 buf_Day$ = ""
730 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
740 dim buffer_name$(3)
750 '1-1.上司の誕生日(数値データー)
760 dim buf_Jyoushi_Born_Day(3)
770 '1-2.上司の数秘ナンバー(数値データー)
780 buf_Jyoushi_Kabara_Num = 0
790 '2-1.部下の誕生日(数値データー)
800 dim buf_Buka_Born_Day(3)
810 '2-2.部下の数秘ナンバー(数秘データー)
820 buf_Buka_Kabara_Num = 0
830 count=0
840 '部下の数秘ナンバー
850 'File 読み込み
860 '1.ビジネスの相性占い
870 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
880 for i=0 to 11
890 for j=0 to 11
900 input #1,a$
910 Buffer_Business_Aisyou$(j,i) = a$
920 next j
930 next i
940 close #1
950 '2.Birth Eye chart$
960 '2.バーズアイグリッドを読み込む
970 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
980 for j=0 to 25
990 for i=0 to 1
1000 input #1,a$
1010 buf_chart$(j,i) = a$
1020 next i
1030 next j
1040 close #1
1050 'File 読み込み　ここまで
1060 'Main画面
1070 screen 1,1,1,1
1080 Main_Screen:
1090 cls 3:
1100 No=0
1110 gload Gazo$ + "Selection.png",1,5,200
1120 gload Gazo$ + "Selection.png",1,5,300
1130 gload Gazo$ + "Selection.png",1,5,400
1140 gload Gazo$ + "Selection.png",1,5,500
1150 '4
1160 gload Gazo$ + "Selection.png",1,35,300
1170 '5
1180 gload Gazo$ + "Selection.png",1,35,400
1190 '6
1200 gload Gazo$ + "Selection.png",1,35,500
1210 '7
1220 gload Gazo$ + "Selection.png",1,70,300
1230 '8
1240 gload Gazo$ + "Selection.png",1,70,400
1250 '9
1260 gload Gazo$ + "Selection.png",1,70,500
1270 '10
1280 gload Gazo$ + "Selection.png",1,110,300
1290 '11
1300 gload Gazo$ + "Selection.png",1,110,400
1310 '12
1320 gload Gazo$ + "Selection.png",1,110,500
1330 '13:0
1340 gload Gazo$ + "Selection.png",1,150,400
1350 gload Gazo$ + "Selection.png",1,200,400
1360 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1370 gload Gazo$ + "downscreen.png",0,0,800
1380 sp_def 0,(5,300),32,32
1390 sp_def 1,(5,400),32,32
1400 sp_def 2,(5,500),32,32
1410 sp_def 3,(5,600),32,32
1420 '1
1430 sp_def 4,(35,300),32,32
1440 '2
1450 sp_def 5,(35,400),32,32
1460 '3
1470 sp_def 6,(35,500),32,32
1480 '4
1490 sp_def 7,(70,300),32,32
1500 '5
1510 sp_def 8,(70,400),32,32
1520 '6
1530 sp_def 9,(70,500),32,32
1540 '7
1550 sp_def 10,(110,300),32,32
1560 '8
1570 sp_def 11,(110,400),32,32
1580 '9
1590 sp_def 12,(110,400),32,32
1600 sp_def 13,(150,400),32,32
1610 sp_def 14,(200,400),32,32
1620 'Sprite OFF
1630 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1640 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1650 sp_put 0,(5,300),0,0
1660 sp_put 1,(5,400),1,0
1670 sp_put 2,(5,500),2,0
1680 sp_put 3,(5,600),3,0
1690 '1
1700 sp_put 4,(130,300),4,0
1710 '2
1720 sp_put 5,(130,400),5,0
1730 '3
1740 sp_put 6,(130,500),6,0
1750 '4
1760 sp_put 7,(340,300),7,0
1770 '5
1780 sp_put 8,(340,400),8,0
1790 '6
1800 sp_put 9,(340,500),9,0
1810 '7
1820 sp_put 10,(540,300),10,0
1830 '8
1840 sp_put 11,(540,400),11,0
1850 '9
1860 sp_put 12,(540,500),12,0
1870 '
1880 sp_put 13,(340,600),13,0
1890 sp_put 14,(540,600),14,0
1900 Main_Top:
1910 'Main Message 2023.06.07
1920 '再生を止める
1930 play ""
1940 init "kb:4"
1950 'font 32:
1960 font 48
1970 print chr$(13) + chr$(13) + chr$(13)
1980 color rgb(217,255,212)
1990 print "番号を選んでください" + chr$(13)
2000 '0
2010 print " :1.数秘術占い" + chr$(13)
2020 '1
2030 print " :2.設 定" + chr$(13)
2040 '2
2050 print " :3.ヘルプ" + chr$(13)
2060 '3
2070 print " :4.(プログラムを)終了する" + chr$(13)
2080 COLOR rgb(0,0,0):No=0
2090 locate 1,15
2100 print "                                       "
2110 locate 1,15:print "1.数秘術占いを選択"
2120 play Voice$ + "Voice_Main_Message_20230607.mp3"
2130 Main_Screen_Select:
2140 y = 0:key$ = "":bg = 0:bg2=0
2150 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2160 y = stick(1)
2170 '"May (2023)"
2180 key$ = inkey$
2190 bg = strig(1)
2200 bg2 = strig(0)
2210 pause 2
2220 wend
2230 '1.
2240 'ジョイパッドのソース ソート　ここから
2250 'カーソル　下 or 十字キー下
2260 if ((y = 1) or (key$ = chr$(31))) then
2270 select case No
2280 case 0:
2290 '1
2300 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2310 case 1:
2320 '2
2330 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2340 case 2:
2350 '3
2360 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2370 case 3:
2380 '0
2390 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2400 end select
2410 endif
2420 '2.
2430 'カーソル　上　or 十字キー  上
2440 if ((y = -1) or (key$ = chr$(30))) then
2450 select case No
2460 case 0:
2470 '3
2480 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2490 case 1:
2500 '0
2510 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2520 case 2:
2530 '1
2540 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2550 case 3:
2560 '2
2570 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2580 end select
2590 endif
2600 'ジョイパッド　ソース 部分　ここまで
2610 'ジョイパッド右　　or Enter key 決定
2620 if ((bg = 2) OR (key$ = chr$(13))) then
2630 select case No
2640 case 0:
2650 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2660 case 1:
2670 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2680 case 2:
2690 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2700 case 3:
2710 play "":pause 200
2720 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2730 end select
2740 endif
2750 if (bg2 = 2) then
2760 play "":pause 200
2770 play Voice$ + "Voice_Main_Message_20230607.mp3"
2780 goto Main_Screen_Select:
2790 endif
2800 'Version
2810 Version:
2820 cls 3:PLAY ""
2830 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
2840 gload Gazo$ + "downscreen.png",0,0,800
2850 init"kb:4":font 32
2860 'talk"バージョン情報です"
2870 'Message :Version
2880 play Voice$ +  "Voice_Version_Message_20230607.mp3"
2890 locate 0,5
2900 color rgb(0,0,0)
2910 print "・Title:数秘術占い";chr$(13)
2920 print "・" + Version$ + chr$(13)
2930 print "・Author:licksjp"+chr$(13)
2940 print "・E-mail:licksjp@gmail.com" + chr$(13)
2950 locate 0,18
2960 print "(C)licksjp All rights " + chr$(13)
2970 locate 13,19
2980 print "reserved since 2009"+chr$(13)
2990 locate 0,23
3000 color rgb(255,255,255)
3010 print "ジョイパッドの右を押してください"
3020 Versionn_Selection:
3030 bg = 0:key$ = "":bg2 = 0
3040 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3050 bg = strig(1)
3060 key$ = inkey$
3070 bg2 = strig(0)
3080 pause 2
3090 wend
3100 if ((bg = 2) or (key$ = chr$(13))) then
3110 pause 200:cls 4:goto Main_Screen:
3120 endif
3130 if (bg2=2) then
3140 play "":pause 200
3150 play Voice$ + "Voice_Version_Message_20230607.mp3"
3160 goto Versionn_Selection:
3170 endif
3180 '1.数秘ナンバーを求める
3190 '誕生日入力(生れた年代)
3200 Input_Seireki:
3210 cls 3:play "":count=0:count2=0
3220 'No = -1:Okのとき
3230 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3240 for i=0 to 3
3250 buf_year(i)=0
3260 next i
3270 gload Gazo$ + "Screen1.png",0,0,0
3280 gload Gazo$ + "downscreen.png",0,0,800
3290 'Init"kb:2"
3300 '音声ファイル再生 2023.06.07
3310 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3320 font 48
3330 locate 0,1
3340 '文字色：黒　 color rgb(0,0,0)
3350 color rgb(255,255,255)
3360 print "生まれた年代を入れて下さい" + chr$(13)
3370 color rgb(255,255,255)
3380 locate 2,3
3390 print "生まれた年代(西暦4桁):" + buf_year$
3400 '=============================
3410 'テンキーの色(1~９)　白 ,決定ボタン　青
3420 '=============================
3430 color rgb(255,255,255)
3440 'locate 4,6:print ":7"
3450 'locate 9,6:print ":8"
3460 'locate 12,6:print ":9"
3470 locate 4,6
3480 print ":7  :8  :9" + chr$(13)
3490 color rgb(255,255,255)
3500 locate 4,8
3510 print ":4  :5  :6" + chr$(13)
3520 color rgb(255,255,255)
3530 locate 4,10
3540 print ":1  :2  :3" + chr$(13)
3550 locate 4,12
3560 print "    :0"
3570 locate 12,12
3580 color rgb(255,0,0)
3590 print ":Ok"
3600 sp_on 4,0: sp_on 5,0:sp_on 6,0
3610 sp_on 7,0:sp_on 8,0:sp_on 9,0
3620 sp_on 10,0:sp_on 11,0:sp_on 12,0
3630 sp_on 13,0:sp_on 14,1
3640 Input_Seireki2:
3650 key$="":bg=0:y=0:y2=0:bg2=0:
3660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3670 key$ = inkey$
3680 bg = strig(1)
3690 y = stick(1)
3700 y2 = stick(0)
3710 bg2 = strig(0)
3720 pause 15
3730 wend
3740 '十字キー　ここから
3750 '上の矢印　または、十字キー上
3760 if ((y = -1) or (key$ = chr$(30))) then
3770 select case No
3780 'No=-1:okのとき:初期の状態
3790 '0kボタンから３に移動
3800 '上に行く 処理
3810 case -1:
3820 No=3:sp_on 12,1:sp_on 14,0
3830 pause 200:goto Input_Seireki2:
3840 '選択肢:3
3850 '3ボタンから 6に移動
3860 case 3:
3870 No=6:sp_on 12,0:sp_on 11,1
3880 pause 200:goto Input_Seireki2:
3890 '6ボタンから ９に移動
3900 case 6:
3910 No=9:sp_on 10,1:sp_on 11,0
3920 pause 200:goto Input_Seireki2:
3930 '6ボタンから ９に移動　ここまで
3940 '9で上を押して何もしない
3950 case 9:
3960 '何もしない
3970 No=9
3980 pause 200:goto Input_Seireki2:
3990 '9で上を押しても何もしない　ここまで
4000 '上　 0ボタンから2ボタン
4010 'sp_on 6,1:1
4020 'sp_on 8,1:5
4030 'sp_on 7,1:7
4040 case 0:
4050 No=2:sp_on 13,0:sp_on 9,1:
4060 pause 200:goto Input_Seireki2:
4070 '上  0ボタンから2ボタン　ここまで
4080 '2から５になる 上
4090 case 2:
4100 No=5:sp_on 8,1:sp_on 9,0:
4110 pause 200:goto Input_Seireki2:
4120 case 5:
4130 No=8:sp_on 7,1:sp_on 8,0
4140 pause 200:goto Input_Seireki2:
4150 case 8:
4160 pause 200:goto Input_Seireki2:
4170 case 1:
4180 No=4:sp_on 5,1:sp_on 6,0
4190 pause 200:goto Input_Seireki2:
4200 case 4:
4210 No=7:sp_on 4,1:sp_on 5,0
4220 pause 200:goto Input_Seireki2:
4230 case 7:
4240 pause 200:goto Input_Seireki2:
4250 end select
4260 endif
4270 '左３　ここまで
4280 '下の矢印
4290 '中央 2
4300 if ((y=1) or (key$ = chr$(31))) then
4310 select case No
4320 '9から６に下げる
4330 case 9:
4340 No=6:sp_on 11,1:sp_on 10,0
4350 pause 200:goto Input_Seireki2:
4360 '6から３に下げる
4370 case 6:
4380 No=3:sp_on 12,1:sp_on 11,0
4390 pause 200:goto Input_Seireki2:
4400 '3から０ｋに変える
4410 case 3:
4420 No=-1:sp_on 14,1:sp_on 12,0
4430 pause 200:goto Input_Seireki2:
4440 'Okから下のボタンを押しても何もしない
4450 case -1:
4460 pause 200:goto Input_Seireki2:
4470 case 8:
4480 No=5:sp_on 8,1:sp_on 7,0
4490 pause 200:goto Input_Seireki2:
4500 case 5:
4510 No=2:sp_on 9,1:sp_on 8,0
4520 pause 200:goto Input_Seireki2:
4530 case 2:
4540 No=0:sp_on 13,1:sp_on 9,0
4550 pause 200:goto Input_Seireki2:
4560 case 0:
4570 pause 200:goto Input_Seireki2:
4580 case 7:
4590 No=4:sp_on 5,1:sp_on 4,0
4600 pause 200:goto Input_Seireki2:
4610 case 4:
4620 No=1:sp_on 6,1:sp_on 5,0
4630 pause 200:goto Input_Seireki2:
4640 case 1:
4650 pause 200:goto Input_Seireki2:
4660 end select
4670 endif
4680 '左へボタン 十字キー　左　or 　カーソル左
4690 if ((y2 = -1) or (key$ = chr$(29))) then
4700 select case No
4710 'Ok ボタン  Okから　左　０に行く
4720 case -1:
4730 No=0:sp_on 13,1:sp_on 14,0
4740 pause 200:goto Input_Seireki2:
4750 '0 ボタン  左　何もしない
4760 case 0:
4770 pause 200:goto Input_Seireki2:
4780 case 3:
4790 No=2:sp_on 9,1:sp_on 12,0:
4800 pause 200:goto Input_Seireki2:
4810 case 2:
4820 No=1:sp_on 6,1:sp_on 9,0:
4830 pause 200:goto Input_Seireki2:
4840 case 1:
4850 pause 200:goto Input_Seireki2:
4860 case 6:
4870 No=5:sp_on 8,1:sp_on 11,0
4880 pause 200:goto Input_Seireki2:
4890 case 5:
4900 No=4:sp_on 5,1:sp_on 8,0
4910 pause 200:goto Input_Seireki2:
4920 case 4:
4930 pause 200:goto Input_Seireki2:
4940 case 9:
4950 No=8:sp_on 7,1:sp_on 10,0
4960 pause 200:goto Input_Seireki2:
4970 case 8:
4980 No=7:sp_on 4,1:sp_on 7,0
4990 pause 200:goto Input_Seireki2:
5000 case 7:
5010 pause 200:goto Input_Seireki2:
5020 end select
5030 endif
5040 '右  十字キー　右　or カーソル　右
5050 if ((y2 = 1) or (key$ = chr$(28))) then
5060 select case No
5070 '0ボタンからokボタン右に移動
5080 case 0:
5090 No=-1:sp_on 14,1:sp_on 13,0
5100 pause 200:goto Input_Seireki2:
5110 '0ボタンからokボタン 右に移動　ここまで
5120 'OKボタンで右を押して何もしない
5130 case -1:
5140 pause 200:goto Input_Seireki2:
5150 case 1:
5160 No=2:sp_on 9,1:sp_on 6,0
5170 pause 200:goto Input_Seireki2:
5180 case 2:
5190 No=3:sp_on 12,1:sp_on 9,0
5200 pause 200:goto Input_Seireki2:
5210 case 3:
5220 pause 200:goto Input_Seireki2:
5230 case 4:
5240 No=5:sp_on 8,1:sp_on 5,0
5250 pause 200:goto Input_Seireki2:
5260 case 5:
5270 No=6:sp_on 11,1:sp_on 8,0
5280 pause 200:goto Input_Seireki2:
5290 case 7:
5300 No=8:sp_on 7,1:sp_on 4,0
5310 pause 200:goto Input_Seireki2:
5320 case 8:
5330 No=9:sp_on 10,1:sp_on 7,0
5340 pause 200:goto Input_Seireki2:
5350 case 9:
5360 pause 200:goto Input_Seireki2:
5370 case 6:
5380 pause 200:goto Input_Seireki2:
5390 end select
5400 'Okから右ボタンを押して何もしない ここまで
5410 endif
5420 '十字キー　ここまで
5430 if ((bg=2) or (key$=chr$(13))) then
5440 select case count
5450 case 0:
5460 count=1
5470 if (No=-1) then
5480 count=0
5490 'Okボタンを押したとき
5500 goto Input_Seireki2:
5510 else
5520 '===================================
5530 'Okボタン以外が押されたとき  1桁目の入力
5540 '===================================
5550 count2=1
5560 if (No >= 1 and No <= 2) then
5570 buf_year$="":buf_year$ = str$(No)
5580 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5590 n1 = len("生まれた年代(西暦4桁): ")
5600 locate 2,3
5610 color rgb(255,255,255)
5620 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5630 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5640 'print "生まれた年代(西暦4桁):";buf_year2$
5650 print buf_Born_Year_line$
5660 goto Input_Seireki2:
5670 else
5680 count=0
5690 ui_msg"数字が範囲外になります。"
5700 buf_year$="":buf_year=0
5710 goto Input_Seireki2:
5720 endif
5730 endif
5740 case 1:
5750 count = 2
5760 if (No = -1) then
5770 count = 1
5780 goto Input_Seireki2:
5790 else
5800 count2 = 1
5810 b = val(buf_year$)
5820 buf_year = b * 10 + No
5830 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
5840 locate 2,3
5850 color rgb(255,255,255)
5860 print "                                                                "
5870 locate 2,3
5880 print "生まれた年代(西暦4桁):";buf_year2$
5890 'if (No = -1) then
5900 'count=1
5910 goto Input_Seireki2:
5920 endif
5930 case 2:
5940 count=3
5950 if (No=-1) then
5960 count =2
5970 goto Input_Seireki2:
5980 else
5990 b = val(buf_year$)
6000 buf_year = b*10 + No
6010 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6020 locate 2,3
6030 color rgb(255,255,255)
6040 print "                                        "
6050 locate 2,3
6060 print "生まれた年代(西暦4桁):";buf_year2$
6070 goto Input_Seireki2:
6080 endif
6090 case 3:
6100 count=4
6110 if (No = -1) then
6120 count=3
6130 goto Input_Seireki2:
6140 else
6150 b = val(buf_year$)
6160 buf_year = b * 10 + No
6170 buf_year$ = str$(buf_year)
6180 locate 2,3
6190 color RGB(255,255,255)
6200 print "                                      "
6210 locate 2,3
6220 print "生まれた年代(西暦4桁):";buf_year$
6230 buf_year=val(buf_year$)
6240 'year=val(buf_year$)
6250 'if (No=-1) then
6260 'goto Input_Born_Month:
6270 'else
6280 goto Input_Seireki2:
6290 endif
6300 case 4:
6310 'bufyear=buf_year
6320 if (No = -1) then
6330 buf_year = val(buf_year$)
6340 bufyear = buf_year
6350 sp_on 14,0
6360 goto Input_Born_Month:
6370 else
6380 goto Input_Seireki2:
6390 endif
6400 end select
6410 endif
6420 '=========================
6430 'bg2　キャンセルボタン
6440 '=========================
6450 if (bg2 = 2) then
6460 select case count2
6470 case 0:
6480 'Okボタンを押したときの処理
6490 if (No = -1) then
6500 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6510 'count = 0
6520 locate 2,3
6530 color rgb(255,255,255)
6540 print "                                      "
6550 locate 2,3
6560 print "生まれた年代（西暦4桁):";buf_year$
6570 '=============================
6580 'case 0:前の画面に戻る 数秘術トップメニュー
6590 '=============================
6600 sp_on 14,0:goto Kabara_TopScreen:
6610 else
6620 'count=0
6630 '(buf_year=0) then
6640 buf_year = 0:buf_year$ = string$(4,"*")
6650 goto Input_Seireki2:
6660 'endif
6670 endif
6680 case 1:
6690 if (No = -1) then
6700 count2 = 0:count = 0
6710 buf$=right$(buf_year$,1)
6720 if (val(buf$) >= 1 and val(buf$) <= 9) then
6730 buf_year$ = "****":buf_year=0
6740 color rgb(255,255,255)
6750 locate 0,3:
6760 print "                                      "
6770 locate 2,3
6780 print "生まれた年代（西暦4桁):" + buf_year$
6790 goto Input_Seireki2:
6800 endif
6810 else
6820 endif
6830 end select
6840 endif
6850 end
6860 'Input"生れた年代(4桁,〜2025年):",year
6870 'if year > 2025 then goto Input_Seireki:
6880 'if year = 123 then cls 3:cls 4:goto Main_Screen:
6890 '"4桁目"
6900 'bufyear4 = fix(year / 1000)
6910 '"3桁目"
6920 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
6930 '"2桁目"
6940 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
6950 '"1桁目"
6960 'bufyear1 = fix((year - ((bufyear4*
6970 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
6980 '生れた月を入力
6990 Input_Born_Month:
7000 cls 3:play "":count=0:count2=0
7010 'No=-1:Okのとき
7020 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7030 for i=0 to 1
7040 buf_month(i)=0
7050 next i
7060 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7070 gload Gazo$ + "Screen1.png",0,0,0
7080 gload Gazo$ + "downscreen.png",0,0,800
7090 'Init"kb:2"
7100 '音声ファイル再生 2023.06.07
7110 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7120 font 48
7130 locate 0,1
7140 '文字色：黒　 color rgb(0,0,0)
7150 '文字色:白
7160 color rgb(255,255,255)
7170 print "生まれた月を入れて下さい" + chr$(13)
7180 '文字色:白
7190 color rgb(255,255,255)
7200 locate 2,3
7210 '文字色:白
7220 print "生まれた月(1月~12月):";buf_Month$
7230 color rgb(255,255,255)
7240 'locate 4,6:print ":7"
7250 'locate 9,6:print ":8"
7260 'locate 12,6:print ":9"
7270 locate 4,6
7280 '文字色:赤
7290 print ":7  :8  :9" + chr$(13)
7300 color rgb(255,255,255)
7310 locate 4,8
7320 print ":4  :5  :6" + chr$(13)
7330 color rgb(255,255,255)
7340 locate 4,10
7350 print ":1  :2  :3" + chr$(13)
7360 locate 4,12
7370 print "    :0"
7380 locate 12,12
7390 color rgb(255,0,0)
7400 print ":Ok"
7410 sp_on 4,0: sp_on 5,0:sp_on 6,0
7420 sp_on 7,0:sp_on 8,0:sp_on 9,0
7430 sp_on 10,0:sp_on 11,0:sp_on 12,0
7440 sp_on 13,0:sp_on 14,1
7450 Input_Born_Month2:
7460 key$="":bg=0:y=0:y2=0:bg2=0
7470 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7480 key$ = inkey$
7490 bg = strig(1)
7500 y = stick(1)
7510 y2 = stick(0)
7520 bg2 = strig(0)
7530 pause 5
7540 wend
7550 '十字キー　ここから
7560 '上の矢印　または、十字キー上
7570 if ((y = -1) or (key$ = chr$(30))) then
7580 select case No
7590 'No=-1:okのとき:初期の状態
7600 '0kボタンから３に移動
7610 '上に行く 処理
7620 case -1:
7630 No=3:sp_on 12,1:sp_on 14,0
7640 pause 200:goto Input_Born_Month2:
7650 '選択肢:3
7660 '3ボタンから 6に移動
7670 case 3:
7680 No=6:sp_on 12,0:sp_on 11,1
7690 pause 200:goto Input_Born_Month2:
7700 '6ボタンから ９に移動
7710 case 6:
7720 No=9:sp_on 10,1:sp_on 11,0
7730 pause 200:goto Input_Born_Month2:
7740 '6ボタンから ９に移動　ここまで
7750 '9で上を押して何もしない
7760 case 9:
7770 '何もしない
7780 No=9
7790 pause 200:goto Input_Born_Month2:
7800 '9で上を押しても何もしない　ここまで
7810 '上　 0ボタンから2ボタン
7820 'sp_on 6,1:1
7830 'sp_on 8,1:5
7840 'sp_on 7,1:7
7850 case 0:
7860 No=2:sp_on 13,0:sp_on 9,1:
7870 pause 200:goto Input_Born_Month2:
7880 '上  0ボタンから2ボタン　ここまで
7890 '2から５になる 上
7900 case 2:
7910 No=5:sp_on 8,1:sp_on 9,0:
7920 pause 200:goto Input_Born_Month2:
7930 case 5:
7940 No=8:sp_on 7,1:sp_on 8,0
7950 pause 200:goto Input_Born_Month2:
7960 case 8:
7970 pause 200:goto Input_Born_Month2:
7980 case 1:
7990 No=4:sp_on 5,1:sp_on 6,0
8000 pause 200:goto Input_Born_Month2:
8010 case 4:
8020 No=7:sp_on 4,1:sp_on 5,0
8030 pause 200:goto Input_Born_Month2:
8040 case 7:
8050 pause 200:goto Input_Born_Month2:
8060 end select
8070 endif
8080 '左３　ここまで
8090 '下の矢印
8100 '中央 2
8110 if ((y=1) or (key$ = chr$(31))) then
8120 select case No
8130 '9から６に下げる
8140 case 9:
8150 No=6:sp_on 11,1:sp_on 10,0
8160 pause 200:goto Input_Born_Month2:
8170 '6から３に下げる
8180 case 6:
8190 No=3:sp_on 12,1:sp_on 11,0
8200 pause 200:goto Input_Born_Month2:
8210 '3から０ｋに変える
8220 case 3:
8230 No=-1:sp_on 14,1:sp_on 12,0
8240 pause 200:goto Input_Born_Month2:
8250 'Okから下のボタンを押しても何もしない
8260 case -1:
8270 pause 200:goto Input_Born_Month2:
8280 case 8:
8290 No=5:sp_on 8,1:sp_on 7,0
8300 pause 200:goto Input_Born_Month2:
8310 case 5:
8320 No=2:sp_on 9,1:sp_on 8,0
8330 pause 200:goto Input_Born_Month2:
8340 case 2:
8350 No=0:sp_on 13,1:sp_on 9,0
8360 pause 200:goto Input_Born_Month2:
8370 case 0:
8380 pause 200:goto Input_Born_Month2:
8390 case 7:
8400 No=4:sp_on 5,1:sp_on 4,0
8410 pause 200:goto Input_Born_Month2:
8420 case 4:
8430 No=1:sp_on 6,1:sp_on 5,0
8440 pause 200:goto Input_Born_Month2:
8450 case 1:
8460 pause 200:goto Input_Born_Month2:
8470 end select
8480 endif
8490 '左へボタン 十字キー　左　or 　カーソル左
8500 if ((y2 = -1) or (key$ = chr$(29))) then
8510 select case No
8520 'Ok ボタン  Okから　左　０に行く
8530 case -1:
8540 No=0:sp_on 13,1:sp_on 14,0
8550 pause 200:goto Input_Born_Month2:
8560 '0 ボタン  左　何もしない
8570 case 0:
8580 pause 200:goto Input_Born_Month2:
8590 case 3:
8600 No=2:sp_on 9,1:sp_on 12,0:
8610 pause 200:goto Input_Born_Month2:
8620 case 2:
8630 No=1:sp_on 6,1:sp_on 9,0:
8640 pause 200:goto Input_Born_Month2:
8650 case 1:
8660 pause 200:goto Input_Born_Month2:
8670 case 6:
8680 No=5:sp_on 8,1:sp_on 11,0
8690 pause 200:goto Input_Born_Month2:
8700 case 5:
8710 No=4:sp_on 5,1:sp_on 8,0
8720 pause 200:goto Input_Born_Month2:
8730 case 4:
8740 pause 200:goto Input_Born_Month2:
8750 case 9:
8760 No=8:sp_on 7,1:sp_on 10,0
8770 pause 200:goto Input_Born_Month2:
8780 case 8:
8790 No=7:sp_on 4,1:sp_on 7,0
8800 pause 200:goto Input_Born_Month2:
8810 case 7:
8820 pause 200:goto Input_Born_Month2:
8830 end select
8840 endif
8850 '右  十字キー　右　or カーソル　右
8860 if ((y2 = 1) or (key$ = chr$(28))) then
8870 select case No
8880 '0ボタンからokボタン右に移動
8890 case 0:
8900 No=-1:sp_on 14,1:sp_on 13,0
8910 pause 200:goto Input_Born_Month2:
8920 '0ボタンからokボタン 右に移動　ここまで
8930 'OKボタンで右を押して何もしない
8940 case -1:
8950 pause 200:goto Input_Born_Month2:
8960 case 1:
8970 No=2:sp_on 9,1:sp_on 6,0
8980 pause 200:goto Input_Born_Month2:
8990 case 2:
9000 No=3:sp_on 12,1:sp_on 9,0
9010 pause 200:goto Input_Born_Month2:
9020 case 3:
9030 pause 200:goto Input_Born_Month2:
9040 case 4:
9050 No=5:sp_on 8,1:sp_on 5,0
9060 pause 200:goto Input_Born_Month2:
9070 case 5:
9080 No=6:sp_on 11,1:sp_on 8,0
9090 pause 200:goto Input_Born_Month2:
9100 case 7:
9110 No=8:sp_on 7,1:sp_on 4,0
9120 pause 200:goto Input_Born_Month2:
9130 case 8:
9140 No=9:sp_on 10,1:sp_on 7,0
9150 pause 200:goto Input_Born_Month2:
9160 case 9:
9170 pause 200:goto Input_Born_Month2:
9180 case 6:
9190 pause 200:goto Input_Born_Month2:
9200 end select
9210 'Okから右ボタンを押して何もしない ここまで
9220 endif
9230 '十字キー　ここまで
9240 '右の丸ボタン　決定キー
9250 if ((bg=2) or (key$=chr$(13))) then
9260 select case count
9270 case 0:
9280 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9290 if (buf_month = 1 or buf_month = 2) then
9300 locate 2,3
9310 color RGB(255,255,255)
9320 print "生まれた月(1月~12月):";buf_Month2$
9330 else
9340 locate 2,3
9350 color Rgb(255,255,255)
9360 print "生まれた月(1月~12月):";buf_Month$
9370 endif
9380 goto Input_Born_Month2:
9390 case 1:
9400 count = 2:c = No
9410 c = val(buf_Month$)
9420 if (No = -1) then
9430 'if No=1 or No=2 then
9440 'endif
9450 month = buf_month
9460 buf_month=val(buf_Month$)
9470 month=buf_month
9480 '生まれた日に飛ぶ
9490 goto Input_Born_Day:
9500 else
9510 buf_month = c*10 + No
9520 buf_Month$= str$(buf_month)
9530 locate 2,3
9540 color Rgb(255,255,255)
9550 print "生まれた月(1月~12月):";buf_Month$
9560 goto Input_Born_Month2:
9570 endif
9580 case 2:
9590 count=3:count2=1
9600 'c= val(buf_Month$)
9610 'buf_month = c*10 + No
9620 'buf_Month$ = str$(buf_month)
9630 'locate 2,3
9640 'print "生まれた月(1月～12月):";buf_Month$
9650 'goto Input_Born_Month2:
9660 'case 3:
9670 'count=4
9680 'b=val(buf_month$)
9690 'buf_month=c*10+No
9700 'buf_Month$=str$(buf_month)
9710 'locate 2,3
9720 'print "生まれた月(1月～12月):";buf_Month$
9730 'buf_month=val(buf_Month$)
9740 'year=val(buf_year$)
9750 if (No=-1) then
9760 goto Input_Born_Day:
9770 else
9780 'goto Input_Born_Month2:
9790 endif
9800 'case 4:
9810 'bufyear=buf_year
9820 'if (No=-1) then
9830 'buf_month = val(buf_Month$)
9840 'month = buf_month
9850 'sp_on 14,0
9860 'goto Input_Born_Day:
9870 'else
9880 'goto Input_Born_Month2:
9890 'endif
9900 end select
9910 endif
9920 '左の丸ボタン　キャンセル
9930 if (bg2=2) then
9940 select case count2
9950 case 0:
9960 if (No = -1) then
9970 buf_month=0:buf_Month$="**"
9980 count2=0:count=0
9990 locate 0,3:print "                                              "
10000 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10010 'if (buf_month > 1) then
10020 sp_on 14,0:goto Input_Born_Month2:
10030 'goto rewrite:
10040 else
10050 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10060 buf_month=0:buf_Month$="**"
10070 locate 2,3
10080 color rgb(255,255,255)
10090 print "                                       "
10100 goto rewrite:
10110 if (No>2) then
10120 ui_msg"値が範囲外です。"
10130 goto rewrite:
10140 endif
10150 endif
10160 'endif
10170 rewrite:
10180 locate 2,3
10190 color rgb(255,255,255)
10200 print "                                      "
10210 locate 2,3
10220 print "生まれた月(1月~12月):";buf_Month$
10230 goto Input_Born_Month2:
10240 endif
10250 case 1:
10260 buf_Month$="**":buf_month=0
10270 if No=-1 then
10280 count2=2:count=0
10290 locate 0,3
10300 print "                                      "
10310 locate 2,3:
10320 print "生まれた月(1月~12月):"+buf_Month$
10330 goto Input_Born_Month2:
10340 endif
10350 case 2:
10360 sp_on 14,0:goto Input_Seireki:
10370 end select
10380 endif
10390 'endif
10400 end
10410 'end
10420 '生れた日を入力
10430 Input_Born_Day:
10440 '生まれた日入力
10450 cls 3:play ""
10460 'No=-1:Okのとき
10470 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10480 for i=0 to 1
10490 buf_day(i)=0
10500 next i
10510 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10520 gload Gazo$ + "Screen1.png",0,0,0
10530 gload Gazo$ + "downscreen.png",0,0,800
10540 'Init"kb:2"
10550 '音声ファイル再生 2023.06.07
10560 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10570 font 48
10580 locate 0,1
10590 '文字色：黒　 color rgb(0,0,0)
10600 color rgb(255,255,255)
10610 print "生まれた日を入れて下さい" + chr$(13)
10620 color rgb(255,255,255)
10630 locate 2,3
10640 print "生まれた日(1日~31日):";buf_Day$
10650 color rgb(255,255,255)
10660 'locate 4,6:print ":7"
10670 'locate 9,6:print ":8"
10680 'locate 12,6:print ":9"
10690 locate 4,6
10700 print ":7  :8  :9" + chr$(13)
10710 '=======================
10720 'テンキー　色　白　決定ボタン　青
10730 '=======================
10740 color rgb(255,255,255)
10750 locate 4,8
10760 print ":4  :5  :6" + chr$(13)
10770 color rgb(255,255,255)
10780 locate 4,10
10790 print ":1  :2  :3" + chr$(13)
10800 locate 4,12
10810 print "    :0"
10820 locate 12,12
10830 color rgb(255,0,0)
10840 print ":Ok"
10850 sp_on 4,0: sp_on 5,0:sp_on 6,0
10860 sp_on 7,0:sp_on 8,0:sp_on 9,0
10870 sp_on 10,0:sp_on 11,0:sp_on 12,0
10880 sp_on 13,0:sp_on 14,1
10890 Input_Born_Day2:
10900 key$="":bg=0:y=0:y2=0:bg2=0
10910 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
10920 key$ = inkey$
10930 bg = strig(1)
10940 y = stick(1)
10950 y2 = stick(0)
10960 bg2 = strig(0)
10970 pause 5
10980 wend
10990 '十字キー　ここから
11000 '上の矢印　または、十字キー上
11010 if ((y = -1) or (key$ = chr$(30))) then
11020 select case No
11030 'No=-1:okのとき:初期の状態
11040 '0kボタンから３に移動
11050 '上に行く 処理
11060 case -1:
11070 No=3:sp_on 12,1:sp_on 14,0
11080 pause 200:goto Input_Born_Day2:
11090 '選択肢:3
11100 '3ボタンから 6に移動
11110 case 3:
11120 No=6:sp_on 12,0:sp_on 11,1
11130 pause 200:goto Input_Born_Day2:
11140 '6ボタンから ９に移動
11150 case 6:
11160 No=9:sp_on 10,1:sp_on 11,0
11170 pause 200:goto Input_Born_Day2:
11180 '6ボタンから ９に移動　ここまで
11190 '9で上を押して何もしない
11200 case 9:
11210 '何もしない
11220 No=9
11230 pause 200:goto Input_Born_Day2:
11240 '9で上を押しても何もしない　ここまで
11250 '上　 0ボタンから2ボタン
11260 'sp_on 6,1:1
11270 'sp_on 8,1:5
11280 'sp_on 7,1:7
11290 case 0:
11300 No=2:sp_on 13,0:sp_on 9,1:
11310 pause 200:goto Input_Born_Day2:
11320 '上  0ボタンから2ボタン　ここまで
11330 '2から５になる 上
11340 case 2:
11350 No=5:sp_on 8,1:sp_on 9,0:
11360 pause 200:goto Input_Born_Day2:
11370 case 5:
11380 No=8:sp_on 7,1:sp_on 8,0
11390 pause 200:goto Input_Born_Day2:
11400 case 8:
11410 pause 200:goto Input_Born_Day2:
11420 case 1:
11430 No=4:sp_on 5,1:sp_on 6,0
11440 pause 200:goto Input_Born_Day2:
11450 case 4:
11460 No=7:sp_on 4,1:sp_on 5,0
11470 pause 200:goto Input_Born_Day2:
11480 case 7:
11490 pause 200:goto Input_Born_Day2:
11500 end select
11510 endif
11520 '左３　ここまで
11530 '下の矢印
11540 '中央 2
11550 if ((y=1) or (key$ = chr$(31))) then
11560 select case No
11570 '9から６に下げる
11580 case 9:
11590 No=6:sp_on 11,1:sp_on 10,0
11600 pause 200:goto Input_Born_Day2:
11610 '6から３に下げる
11620 case 6:
11630 No=3:sp_on 12,1:sp_on 11,0
11640 pause 200:goto Input_Born_Day2:
11650 '3から０ｋに変える
11660 case 3:
11670 No=-1:sp_on 14,1:sp_on 12,0
11680 pause 200:goto Input_Born_Day2:
11690 'Okから下のボタンを押しても何もしない
11700 case -1:
11710 pause 200:goto Input_Born_Day2:
11720 case 8:
11730 No=5:sp_on 8,1:sp_on 7,0
11740 pause 200:goto Input_Born_Day2:
11750 case 5:
11760 No=2:sp_on 9,1:sp_on 8,0
11770 pause 200:goto Input_Born_Day2:
11780 case 2:
11790 No=0:sp_on 13,1:sp_on 9,0
11800 pause 200:goto Input_Born_Day2:
11810 case 0:
11820 pause 200:goto Input_Born_Day2:
11830 case 7:
11840 No=4:sp_on 5,1:sp_on 4,0
11850 pause 200:goto Input_Born_Day2:
11860 case 4:
11870 No=1:sp_on 6,1:sp_on 5,0
11880 pause 200:goto Input_Born_Day2:
11890 case 1:
11900 pause 200:goto Input_Born_Day2:
11910 end select
11920 endif
11930 '左へボタン 十字キー　左　or 　カーソル左
11940 if ((y2 = -1) or (key$ = chr$(29))) then
11950 select case No
11960 'Ok ボタン  Okから　左　０に行く
11970 case -1:
11980 No=0:sp_on 13,1:sp_on 14,0
11990 pause 200:goto Input_Born_Day2:
12000 '0 ボタン  左　何もしない
12010 case 0:
12020 pause 200:goto Input_Born_Day2:
12030 case 3:
12040 No=2:sp_on 9,1:sp_on 12,0:
12050 pause 200:goto Input_Born_Day2:
12060 case 2:
12070 No=1:sp_on 6,1:sp_on 9,0:
12080 pause 200:goto Input_Born_Day2:
12090 case 1:
12100 pause 200:goto Input_Born_Day2:
12110 case 6:
12120 No=5:sp_on 8,1:sp_on 11,0
12130 pause 200:goto Input_Born_Day2:
12140 case 5:
12150 No=4:sp_on 5,1:sp_on 8,0
12160 pause 200:goto Input_Born_Day2:
12170 case 4:
12180 pause 200:goto Input_Born_Day2:
12190 case 9:
12200 No=8:sp_on 7,1:sp_on 10,0
12210 pause 200:goto Input_Born_Day2:
12220 case 8:
12230 No=7:sp_on 4,1:sp_on 7,0
12240 pause 200:goto Input_Born_Day2:
12250 case 7:
12260 pause 200:goto Input_Born_Day2:
12270 end select
12280 endif
12290 '右  十字キー　右　or カーソル　右
12300 if ((y2 = 1) or (key$ = chr$(28))) then
12310 select case No
12320 '0ボタンからokボタン右に移動
12330 case 0:
12340 No=-1:sp_on 14,1:sp_on 13,0
12350 pause 200:goto Input_Born_Day2:
12360 '0ボタンからokボタン 右に移動　ここまで
12370 'OKボタンで右を押して何もしない
12380 case -1:
12390 pause 200:goto Input_Born_Day2:
12400 case 1:
12410 No=2:sp_on 9,1:sp_on 6,0
12420 pause 200:goto Input_Born_Day2:
12430 case 2:
12440 No=3:sp_on 12,1:sp_on 9,0
12450 pause 200:goto Input_Born_Day2:
12460 case 3:
12470 pause 200:goto Input_Born_Day2:
12480 case 4:
12490 No=5:sp_on 8,1:sp_on 5,0
12500 pause 200:goto Input_Born_Day2:
12510 case 5:
12520 No=6:sp_on 11,1:sp_on 8,0
12530 pause 200:goto Input_Born_Day2:
12540 case 7:
12550 No=8:sp_on 7,1:sp_on 4,0
12560 pause 200:goto Input_Born_Day2:
12570 case 8:
12580 No=9:sp_on 10,1:sp_on 7,0
12590 pause 200:goto Input_Born_Day2:
12600 case 9:
12610 pause 200:goto Input_Born_Day2:
12620 case 6:
12630 pause 200:goto Input_Born_Day2:
12640 end select
12650 'Okから右ボタンを押して何もしない ここまで
12660 endif
12670 '十字キー　ここまで
12680 '右の丸ボタンを押したとき
12690 if ((bg = 2) or (key$ = chr$(13))) then
12700 'count :決定ボタンを押した回数
12710 select case (count mod 3)
12720 '1桁目入力
12730 case 0:
12740 count = 1:
12750 if (No = -1) then
12760 '1桁目　OKでは何もしない
12770 'goto check:
12780 else
12790 'ok以外のボタンを押したとき
12800 buf_day = No:buf_Day$ = str$(No)
12810 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
12820 locate 2,3
12830 color RGB(255,255,255)
12840 print "生まれた日(1日~31日):";buf_Day2$
12850 endif
12860 check:
12870 if (No >= 1 and No <= 9) then
12880 sp_on 14,0
12890 goto Input_Born_Day2:
12900 else
12910 sp_on 14,0
12920 goto complate:
12930 endif
12940 case 1:
12950 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
12960 count = 2:
12970 'locate 2,3
12980 'color RGB(255,255,255)
12990 'print "生まれた日(1日~31日):";buf_Day$
13000 'Okボタンを押したときの処理
13010 '入力値　10未満のとき
13020 'c = buf_day
13030 if (No = -1) then
13040 'c=buf_day
13050 ' buf_day = c
13060 'buf_Day$ = str$(buf_day)
13070 '10以下のとき
13080 if (buf_day < 10) then
13090 sp_on 14,0
13100 goto complate:
13110 endif
13120 else
13130 'c = No
13140 buf_day = c * 10 + No
13150 'buf_day = c
13160 buf_Day$ =str$(buf_day)
13170 locate 2,3
13180 color Rgb(255,255,255)
13190 print "生まれた日(1日~31日):";buf_Day$
13200 goto Input_Born_Day2:
13210 endif
13220 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13230 case 2:
13240 count=0
13250 'c=val(buf_Day$)
13260 'buf_day=c*10+No
13270 'buf_Day$=str$(buf_day)
13280 'day=buf_day
13290 'locate 2,3
13300 'print "生まれた日(1日〜31日):";buf_Day$
13310 'No=-1:ok ボタンを押したとき
13320 if (No = -1) then
13330 if ((buf_day > 0) and (buf_day < 32)) then
13340 sp_on 14,0
13350 goto complate:
13360 else
13370 goto Input_Born_Day2:
13380 endif
13390 'Okボタン以外を押したとき
13400 else
13410 c=val(buf_Day$)
13420 buf_day = c * 10 + No
13430 buf_Day$ = str$(buf_day)
13440 locate 2,3
13450 print "生まれた日(1日~31日):";buf_Day$
13460 'goto Input_Born_Day2:
13470 endif
13480 case 3:
13490 count = 4
13500 c=val(buf_day$)
13510 buf_day = c * 10 + No
13520 buf_day$ = str$(buf_day)
13530 locate 2,3
13540 print "生まれた日を入れてください:";buf_Day$
13550 year = val(buf_year$)
13560 if (No = -1) then
13570 'goto Input_Born_Day:
13580 sp_on 14,0:No=0
13590 goto complate:
13600 else
13610 goto Input_Born_Month2:
13620 endif
13630 'case 4:
13640 'bufyear=buf_year
13650 'if (No=-1) then
13660 'buf_day = val(buf_day$)
13670 'bufday = buf_day
13680 'sp_on 14,0
13690 'goto complate:
13700 'else
13710 'goto Input_Born_Day2:
13720 'endif
13730 end select
13740 endif
13750 if (bg2=2) then
13760 select case count2
13770 case 0:
13780 if (No=-1) then
13790 'buf_day=0:buf_Day$="**"
13800 if (buf_day>=1 and buf_day<=31) then
13810 count=0:No=0
13820 buf_day=0:buf_Day$="**"
13830 'goto rewrite_day:
13840 else
13850 buf_day=0:buf_Day$="**"
13860 ui_msg"値が範囲外です"
13870 endif
13880 goto rewrite_day:
13890 else
13900 goto rewrite_day:
13910 endif
13920 rewrite_day:
13930 locate 2,3
13940 color rgb(255,255,255)
13950 print "                                      "
13960 locate 2,3
13970 print "生まれた日(1日~31日):";buf_Day$
13980 goto Input_Born_Day2:
13990 end select
14000 endif
14010 '--------------------------Input_Born_Day:-------------------------------------------
14020 complate:
14030 suhiNo = buf_year + buf_month + buf_day
14040 'if (suhiNo < 1000) then
14050 a1 = fix(suhiNo / 1000)
14060 a2 = fix(suhiNo/100) - (a1 * 10)
14070 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14080 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14090 'endif
14100 bufsuhiNo = a1+a2+a3+a4
14110 recomp:
14120 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14130 'bufsuhiNo=a6
14140 goto Kabara_Result_Screen:
14150 else
14160 a5 = fix(bufsuhiNo / 10)
14170 a6 = bufsuhiNo - a5 * 10
14180 bufsuhiNo = a6 + a5
14190 if (bufsuhiNo = 10) then
14200 bufsuhiNo=1
14210 endif
14220 goto Kabara_Result_Screen:
14230 endif
14240 Kabara_Result_Screen:
14250 cls 3:
14260 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14270 gload Gazo$ + "downscreen.png",0,0,800
14280 init "kb:4"
14290 '
14300 play ""
14310 select case (bufsuhiNo)
14320 case 1:
14330 play Voice$ + "Result_Kabara_1_20230607.mp3"
14340 case 2:
14350 play Voice$ + "Result_Kabara_2_20231112.mp3"
14360 case 3:
14370 play Voice$ + "Result_Kabara_3_20230607.mp3"
14380 case 4:
14390 play Voice$ + "Result_Kabara_4_20230607.mp3"
14400 case 5:
14410 play Voice$ + "Result_Kabara_5_20231112.mp3"
14420 case 6:
14430 play Voice$ + "Result_Kabara_6_20230607.mp3"
14440 case 7:
14450 play Voice$ + "Result_Kabara_7_20230607.mp3"
14460 case 8:
14470 play Voice$ + "Result_Kabara_8_20230607.mp3"
14480 case 9:
14490 play Voice$ + "Result_Kabara_9_20230607.mp3"
14500 case 11:
14510 play Voice$ + "Result_Kabara_11_20230607.mp3"
14520 case 22:
14530 play Voice$ + "Result_Kabara_22_20230607.mp3"
14540 case 33:
14550 play Voice$ + "Result_Kabara_33_20230607.mp3"
14560 end select
14570 font 48
14580 key$ = "":bg = 0:bg2=0
14590 'COLOR rgb(255,255,255)
14600 'print "●診断結果"+chr$(13)
14610 locate 0,2
14620 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14630 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14640 locate 0,15:
14650 color rgb(255,255,255)
14660 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14670 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14680 key$ = inkey$
14690 bg = strig(1)
14700 bg2 = strig(0)
14710 pause 5
14720 wend
14730 'Enter or JoyPad right
14740 if ((key$ = chr$(13)) or (bg = 2)) then
14750 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
14760 endif
14770 if ((bg2=2)) then
14780 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
14790 endif
14800 'suhiNo1 = fix(bufsuhiNo / 10)
14810 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
14820 'bufsuhiNo = suhiNo1 + suhiNo2
14830 'goto recomp:
14840 'endif
14850 'print chr$(13)
14860 'color rgb(255,0,0)
14870 'print"トップ:エンターキー,S or s:保存"+chr$(13)
14880 'key$ = input$(1)
14890 'if key$ = chr$(13) then goto Main_Screen:
14900 '"Menu2 占いのルール"
14910 Suhi_Rule:
14920 '数秘術占いルールの表示
14930 cls 3:play "":init"kb:4"
14940 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
14950 gload Gazo$ + "downscreen.png",0,0,800
14960 'cls 3:
14970 'line (0,0) - (1500,60),rgb(0,0,255),bf
14980 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
14990 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15000 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15010 locate 0,2:Font 48
15020 print chr$(13) + chr$(13)
15030 color rgb(0,0,0)
15040 print "誕生日を単数変換します";chr$(13)
15050 print "数字の範囲:1~９,11,22,33";chr$(13)
15060 print "例:1973年11月22日の場合";chr$(13)
15070 print "1+9+7+3+11+22=53 ";chr$(13)
15080 print "→ 5 + 3 = 8" + chr$(13)
15090 print "故に8が数秘ナンバーになります";chr$(13)
15100 locate 0,15
15110 color rgb(255,255,255)
15120 print "ジョイパッドの右を押してください"
15130 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15140 '"key$ = input$(1)"
15150 '"if key$ = chr$(13) then goto Main_Screen:"
15160 suhi_rule_selection:
15170 bg = 0:key$ = "":bg2=0
15180 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15190 bg = strig(1)
15200 key$ = inkey$
15210 bg2=strig(0)
15220 pause 2
15230 wend
15240 if ((bg = 2) or (key$ = chr$(13))) then
15250 pause 200:cls 4:goto Main_Screen:
15260 endif
15270 if (bg2=2) then
15280 play "":pause 200
15290 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15300 goto suhi_rule_selection:
15310 endif
15320 '2.設定
15330 '2-1.トップ画面に戻る
15340 Setting:
15350 cls 3:init"kb:4":font 48:No=0
15360 play ""
15370 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15380 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15390 gload Gazo$ + "downscreen.png",0,0,800
15400 print chr$(13) + chr$(13) + chr$(13)
15410 color rgb(255,255,255):sp_on 0,1:
15420 print "番号を選んでください" + chr$(13)
15430 print " :1.トップ画面に戻る"+ chr$(13)
15440 print " :2.未実装" + chr$(13)
15450 print " :3.未実装" + chr$(13)
15460 print " :4.未実装" + chr$(13)
15470 color rgb(0,0,0)
15480 locate 1,15:print "1.トップ画面に戻るを選択"
15490 Setting_Selection:
15500 y=0:key$="":bg=0:bg2=0
15510 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15520 'y=stick(1)
15530 key$ = inkey$
15540 bg=strig(1)
15550 bg2 = strig(0)
15560 pause 2
15570 wend
15580 if ((bg = 2) or (key$ = chr$(13))) then
15590 select case No
15600 case 0:
15610 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15620 end select
15630 endif
15640 if (bg2 = 2) then
15650 play "":pause 200
15660 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15670 goto Setting_Selection:
15680 endif
15690 '3.Help
15700 '3-1.ルールの表示
15710 '3-2.バージョン
15720 '3-3.トップに戻る
15730 Help:
15740 cls 3:Font 48:No=0
15750 play ""
15760 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
15770 gload Gazo$ + "downscreen.png",0,0,800
15780 color rgb(255,255,255)
15790 print chr$(13)+chr$(13)+chr$(13)
15800 print "番号を選んでください"+chr$(13)
15810 print " :1.ルールの表示" + chr$(13)
15820 print " :2.バージョンの表示" + chr$(13)
15830 print " :3.参考文献" + chr$(13)
15840 print " :4.トップ画面に戻る" + chr$(13)
15850 color rgb(0,0,0)
15860 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
15870 locate 1,15
15880 print "                                      "
15890 locate 1,15
15900 print "1.ルールの表示を選択"
15910 init"kb:4"
15920 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
15930 Help_Select:
15940 bg=0:key$="":y=0:bg2=0
15950 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
15960 y = stick(1)
15970 key$ = inkey$
15980 bg = strig(1)
15990 bg2 = strig(0)
16000 pause 5
16010 wend
16020 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16030 if ((y = 1) or (key$ = chr$(31))) then
16040 select case No
16050 case 0:
16060 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16070 case 1:
16080 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16090 case 2:
16100 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16110 case 3:
16120 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16130 end select
16140 endif
16150 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16160 if ((y = -1) or (key$ = chr$(30))) then
16170 select case No
16180 case 0:
16190 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16200 case 1:
16210 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16220 case 2:
16230 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16240 case 3:
16250 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16260 end select
16270 endif
16280 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16290 if ((bg = 2) or (key$ = chr$(13))) then
16300 select case No
16310 case 0:
16320 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16330 case 1:
16340 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16350 case 2:
16360 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16370 '3:Top画面に行く
16380 case 3:
16390 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16400 end select
16410 endif
16420 if (bg2 = 2) then
16430 play "":pause 200
16440 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16450 goto Help_Select:
16460 endif
16470 '数秘術占い　トップ画面
16480 Kabara_TopScreen:
16490 cls 3:play ""
16500 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16510 gload Gazo$ + "downscreen.png",0,0,800
16520 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16530 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16540 init"kb:4":No=0
16550 color rgb(255,255,255)
16560 print chr$(13)+chr$(13)+chr$(13)
16570 print "番号を選んでください" + chr$(13)
16580 print " :1.数秘術占い" + chr$(13)
16590 print " :2.バーズアイグリット" + chr$(13)
16600 print " :3.相性占い" + chr$(13)
16610 print " :4.トップ画面に戻る" + chr$(13)
16620 color rgb(0,0,0)
16630 locate 1,15:print "1.数秘術占いを選択"
16640 Kabara_TopScreen2:
16650 y = 0:bg = 0:key$ = "":bg2 = 0
16660 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16670 key$ = inkey$
16680 bg = strig(1)
16690 y = stick(1)
16700 bg2 = strig(0)
16710 pause 5
16720 wend
16730 '選択ボタン
16740 'カーソル　と　ジョイパッド　の下
16750 if ((y = 1) or (key$ = chr$(31))) then
16760 select case No
16770 case 2:
16780 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16790 case 3:
16800 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16810 case 0:
16820 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16830 case 1:
16840 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16850 end select
16860 endif
16870 'カーソル　上
16880 if ((y=-1) or (key$=chr$(30))) then
16890 select case No
16900 case 0:
16910 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
16920 case 1:
16930 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
16940 case 2:
16950 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
16960 case 3:
16970 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
16980 end select
16990 endif
17000 '決定ボタン
17010 'ジョイパッドの右　or  Enter key
17020 if ((bg = 2) or (key$ = chr$(13))) then
17030 select case No
17040 case 0:
17050 '1.数秘術占い
17060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17070 case 3:
17080 '4.メイン画面にいく
17090 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17100 case 1:
17110 '2.バースアイグリッド
17120 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17130 case 2:
17140 '3.相性占い
17150 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17160 end select
17170 endif
17180 if (bg2 = 2) then
17190 play "":pause 200
17200 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17210 goto Kabara_TopScreen2:
17220 endif
17230 '1.バースアイグリット　名入力
17240 Inputname1:
17250 cls 3:init"kb:4":font 48
17260 bg=0:key$="":y=0:No=-1:name1$="":i=1
17270 gload Gazo$ + "Selection.png",1,10,100
17280 'Line 1:☓
17290 'A:選択肢
17300 sp_def 15,(50,250),16,16
17310 'B:選択肢
17320 sp_def 16,(200,250),16,16
17330 'C:選択肢
17340 sp_def 17,(350,250),16,16
17350 'D:選択肢
17360 sp_def 18,(500,250),16,16
17370 'E:選択肢
17380 sp_def 19,(630,250),16,16
17390 'F:選択肢
17400 sp_def 20,(780,250),16,16
17410 'G:選択肢
17420 sp_def 21,(930,250),16,16
17430 'Line 2:☓
17440 'H:選択肢
17450 sp_def 22,(50,345),16,16
17460 'I:選択肢
17470 sp_def 23,(200,345),16,16
17480 'J:選択肢
17490 sp_def 24,(350,345),16,16
17500 'K:選択肢
17510 sp_def 25,(500,345),16,16
17520 'L:選択肢
17530 sp_def 26,(630,345),16,16
17540 'M:選択肢
17550 sp_def 27,(780,345),16,16
17560 'N:選択肢
17570 sp_def 28,(930,345),16,16
17580 'Line 3:☓
17590 'O:選択肢
17600 sp_def 29,(50,440),16,16
17610 'P:選択肢
17620 sp_def 30,(200,440),16,16
17630 'Q:選択肢
17640 sp_def 31,(350,440),16,16
17650 'R:選択肢
17660 sp_def 32,(500,440),16,16
17670 'S:選択肢
17680 sp_def 33,(630,440),16,16
17690 'T:選択肢
17700 sp_def 34,(780,440),16,16
17710 'U:選択肢
17720 sp_def 35,(930,440),16,16
17730 'Line 4:◯
17740 'V:選択肢
17750 sp_def 36,(50,535),16,16
17760 'W:選択肢
17770 sp_def 37,(200,535),16,16
17780 'X:選択肢
17790 sp_def 38,(350,535),16,16
17800 'Y:選択肢
17810 sp_def 39,(500,535),16,16
17820 'Z:選択肢
17830 sp_def 40,(630,535),16,16
17840 'Ok:選択肢
17850 sp_def 41,(780,535),16,16
17860 'sp_def 42,(930,535),16,16
17870 'Line 1
17880 'A
17890 sp_on 15,0
17900 'B
17910 sp_on 16,0
17920 'C
17930 sp_on 17,0
17940 'D
17950 sp_on 18,0
17960 'E
17970 sp_on 19,0
17980 'F
17990 sp_on 20,0
18000 'G
18010 sp_on 21,0
18020 'Line 1
18030 'Line 2
18040 'H
18050 sp_on 22,0
18060 'I
18070 sp_on 23,0
18080 'J
18090 sp_on 24,0
18100 'K
18110 sp_on 25,0
18120 'L
18130 sp_on 26,0
18140 'M
18150 sp_on 27,0
18160 'N
18170 sp_on 28,0
18180 'Line 2
18190 'Line 3
18200 'O
18210 sp_on 29,0
18220 'P
18230 sp_on 30,0
18240 'Q
18250 sp_on 31,0
18260 'R
18270 sp_on 32,0
18280 'S
18290 sp_on 33,0
18300 'T
18310 sp_on 34,0
18320 'U
18330 sp_on 35,0
18340 'Line 3
18350 'Line 4
18360 'V
18370 sp_on 36,0
18380 'W
18390 sp_on 37,0
18400 'X
18410 sp_on 38,0
18420 'Y
18430 sp_on 39,0
18440 'Z
18450 sp_on 40,0
18460 'Ok
18470 sp_on 41,1
18480 'Line 4
18490 'sp_on 42,1
18500 'Line 1
18510 'sp_put 15,(50,250),0,0
18520 'sp_put 16,(200,250),0,0
18530 'sp_put 17,(350,250),0,0
18540 'sp_put 18,(500,250),0,0
18550 'sp_put 19,(630,250),0,0
18560 'sp_put 20,(780,250),0,0
18570 'sp_put 21,(930,250),0,0
18580 'Line 2
18590 'sp_put 22,(50,345),0,0
18600 'sp_put 23,(200,345),0,0
18610 'sp_put 24,(350,345),0,0
18620 'sp_put 25,(500,345),0,0
18630 'sp_put 26,(630,345),0,0
18640 'sp_put 27,(780,345),0,0
18650 'sp_put 28,(930,345),0,0
18660 'Line 3
18670 'sp_put 29,(50,440),0,0
18680 'sp_put 30,(200,440),0,0
18690 'sp_put 31,(350,440),0,0
18700 'sp_put 32,(500,440),0,0
18710 'sp_put 33,(630,440),0,0
18720 'sp_put 34,(780,440),0,0
18730 'sp_put 35,(930,440),0,0
18740 'Line 4
18750 'sp_put 36,(50,535),0,0
18760 'sp_put 37,(200,535),0,0
18770 'sp_put 38,(350,535),0,0
18780 'sp_put 39,(500,535),0,0
18790 'sp_put 40,(630,535),0,0
18800 sp_put 41,(780,535),0,0
18810 'sp_put 42,(930,536),0,0
18820 gload Gazo$ + "Screen1.png",0,0,0
18830 color rgb(255,255,255)
18840 locate 1,3
18850 print "名前の姓をアルファベットで入力してください"
18860 locate 1,5
18870 print " A  B  C  D  E  F  G"
18880 locate 1,7
18890 print " H  I  J  K  L  M  N"
18900 locate 1,9
18910 print " O  P  Q  R  S  T  U"
18920 locate 1,11
18930 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
18940 locate 1,15:color rgb(0,0,0)
18950 print "名前の姓:" + name1$
18960 select_name1:
18970 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
18980 '有効ボタン
18990 '1.決定ボタン(bg:2)
19000 '2.Enter Key$:chr$(13)
19010 '3.カーソル上 (chr$(31))
19020 '4.カーソル　左 (chr$(29))
19030 '5.ジョイパッド　上 (y:1)
19040 '6:ジョイパッド　左 (y2:-1)
19050 '7:ジョイパッド　下 (y:-1)
19060 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19070 key$ = inkey$
19080 'ジョイパッドの決定:bg
19090 bg = strig(1)
19100 y = stick(1)
19110 y2 = stick(0)
19120 pause 200
19130 wend
19140 '====================================
19150 'Birds Eye Grid 名前入力
19160 '入力スタイル　アルファベット入力
19170 'sp_on:　スプライトのオンオフ
19180 'sp_put :表示位置
19190 'No:ボタン番号
19200 '====================================
19210 'カーソルで下に行く
19220 if ((y=-1) or (key$=chr$(31))) then
19230 select case No
19240 '1.Ok ボタン
19250 'sp_on スプライトのオンオフ
19260 'sp_put スプライトを表示
19270 case -1:
19280 '1.アルファベット　入力ボタン
19290 '実装未完全なので終了
19300  'Ok → T ○ :No:20=T
19310  No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19320  'T  → M ○
19330 case 20:
19340   No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19350  'M  →　F ○
19360 case 13:
19370   No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19380  'F  → Ok
19390 case 6:
19400   No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19410 end select
19420 endif
19430 '2.決定ボタン
19440 if ((key$ = chr$(13)) OR  (bg = 2)) then
19450 select case No
19460 case -1:
19470      'スプライトをOFFにする
19480      sp_on 41,0
19490 end select
19500 endif
19510 '3.カーソル　左
19520 if (key$ = chr$(29) or (y2 =-1)) then
19530 select case No
19540 'Line 4
19550 'Line 4
19560 '1.
19570 'Z:-1 :Ok ボタン
19580 'Ok → Z
19590 case -1:
19600      'Ok →　Z
19610      'Ok ボタン OFF,Z Button ON
19620      'No=26:Z
19630      No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19640 '2.
19650 '26:Zボタン Z→ Y
19660 case 26:
19670      No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19680 '3.
19690 '25:Yボタン  Y → X
19700 case 25:
19710      No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19720 '4
19730 '24:Xボタン X → W
19740 case 24:
19750      No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
19760 '23:Wボタン X → W
19770 '5
19780 case 23:
19790 '22:Vボタン W → V
19800      No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
19810 case 22:
19820 '-1:V→ Ok
19830      No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19840 'Line 3
19850 case 20:
19860 '33:T34  → S:33 :◯
19870     No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
19880 case 19:
19890 '32:S:33 → R:32 :◯
19900     No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
19910 case 18:
19920 '31:R:32 → Q:31 :◯
19930     No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
19940 '30:O → P :◯
19950 case 17:
19960 '30:Q:31 → P:30 :◯
19970     No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
19980 case 16:
19990 '29:P:30 → O:29 :◯
20000     No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20010 case 15:
20020 '28:O:29 → U:21  :◯
20030  'O:OFF,U:ON
20040     No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20050 '27:U:21 → T:20  :◯
20060 case 21:
20070 'U:OFF:T:ON
20080     No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20090 'Line 2
20100 '26:M:13 → L:12 : ○
20110 case 13:
20120  'M:OFF,L:ON
20130    No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20140 '25:L:12 → K:11 : ○
20150 case 12:
20160    No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20170 '24:K:11 → J:10 : ○
20180 case 11:
20190    No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20200 '23:J:10 → I:9  : ○
20210 case 10:
20220    No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20230 '22:I:9 → H:8    :○
20240 case 9:
20250     No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20260 '21:H:8 → N:14:   :○
20270 case 8:
20280     No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20290 '20:N:14 → M:13:   :○
20300 case 14:
20310     No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20320 '●.Line 1:
20330 '19:F:20 → E:19 : ☓
20340 'F:OFF,E:ON
20350 case 6:
20360     No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20370 '18:E → D
20380 'E:OFF,D:ON
20390 case 5:
20400     No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20410 '17:D → C
20420 'D:OFF,C:ON
20430 case 4:
20440      No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20450 case 3:
20460      No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20470 case 2:
20480      No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20490 case 1:
20500      No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20510 case 7:
20520      No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20530 end select
20540 endif
20550 '上から下の方向
20560 if ((key$ = chr$(31)) or  (y = 1)) then
20570 select case No
20580 '●.1
20590 '1:A→H
20600 case 1:
20610       No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20620 '2:H→O
20630 case 8:
20640       No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20650 '3:O→V
20660 case 15:
20670       No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20680 '4:V→A
20690 case 22:
20700      No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20710 '●.2
20720 '5.B→I
20730 case 2:
20740      No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20750 '6.I→P
20760 case 9:
20770      No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20780 '7.P→W
20790 case 16:
20800      No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20810 '8.W→B
20820 case 23:
20830      No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20840 '●.3
20850 '9.C→J
20860 case 3:
20870      No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
20880 '10.J→Q
20890 case 10:
20900      No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20910 '11.Q→X
20920 case 17:
20930      No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
20940 '12.X→C
20950  case 24:
20960      No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20970 '●.4
20980 '13.D→K
20990   case 4:
21000      No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21010 '14.K→R
21020  case 11:
21030      No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21040 '15.R→Y
21050  case 18:
21060      No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21070 '16.Y→D
21080  case 25:
21090     No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21100 '●.5
21110 '17.E→L
21120 case 5:
21130    No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21140 '18.L→S
21150 case 12:
21160    No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21170 '19.S→Z
21180 case 19:
21190    No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21200 '20.Z→E
21210 case 26:
21220    No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21230 '●.6
21240 '21.F→M
21250 case 6:
21260    No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21270 '22.M→T
21280 case 13:
21290    No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21300 '23.T→Ok
21310 case 20:
21320    No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21330 '24.Ok→F
21340 case -1:
21350    No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21360 '●.7
21370 '25.G→N
21380 case 7:
21390    No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21400 '26.N→U
21410 case 14:
21420    No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21430 '27.U→G
21440 case 21:
21450    No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21460 end select
21470 endif
21480 '決定ボタン　で名前の姓に文字を追加。
21490 if (key$ = chr$(13) or bg = 2) then
21500 select case No
21510 'Okボタン
21520 case -1:
21530        goto Inputname2:
21540 'Aの文字
21550 case 1:
21560       'if len(n$)=0 then
21570       n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21580       'else
21590       'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21600       'endif
21610     goto select_name1:
21620 case 2:
21630       n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
21640 end select
21650 endif
21660 Input_name1_Birdseye:
21670 cls 3:init "kb:2":
21680 gload Gazo$ + "Input_Birtheye2.png",0,0,0
21690 color rgb(255,255,255)
21700 locate 1,2:print "名前をアルファベットで入れてください"
21710 color rgb(0,0,0)
21720 locate 1,5:Input "名前（姓の部分）:",name1$
21730 '27.U→G
21740 'locate 1,5:print "Hit any key"
21750 n1 = len(name1$)
21760 if (n1 < 11) then
21770 for i=1 to n1
21780 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
21790 next i
21800 endif
21810 goto Inputname2:
21820 '2.グリッドアイ　姓の入力
21830 'end
21840 Inputname2:
21850 cls 3:init"kb:2":font 48
21860 gload Gazo$ + "Input_Birtheye1.png",0,0,0
21870 color rgb(255,255,255)
21880 locate 1,2:print "名前をアルファベットで入れてください"
21890 color rgb(0,0,0)
21900 locate 1,5:Input "名前(名の部分):",name2$
21910 n2 = len(name2$)
21920 for i=1 to n2
21930 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
21940 next i
21950 '計算領域
21960 Complate:
21970 'name1
21980 for i=0 to 25
21990 for n=1 to len(name1$)
22000 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22010 b = val(buf_chart$(i,1))
22020 buffer(b-1) = buffer(b-1) + 1
22030 endif
22040 next n
22050 next i
22060 'name2
22070 for i=0 to 25
22080 for n=1 to len(name2$)
22090 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22100 c = val(buf_chart$(i,1))
22110 buffer(c - 1) = buffer(c - 1) + 1
22120 endif
22130 next n
22140 next i
22150 '結果表示領域
22160 Result_Birtheye1:
22170 cls 3:init"kb:4":No=0
22180 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22190 gload Gazo$ + "downscreen.png",0,0,800
22200 color rgb(255,255,255)
22210 '1の表示
22220 locate 3,14:print buffer(0);
22230 '2の表示
22240 locate 3,9:print buffer(1);
22250 '3の表示
22260 locate 3,5:print buffer(2);
22270 '4の表示
22280 locate 10,14:print buffer(3);
22290 '5の表示
22300 locate 10,9:print buffer(4);
22310 '6の表示
22320 locate 10,5:print buffer(5);
22330 '7の表示
22340 locate 15,14:print buffer(6);
22350 '8の表示
22360 locate 15,9:print buffer(7);
22370 '9の表示
22380 locate 15,5:print buffer(8);
22390 'name を大文字に変換
22400 locate 5,3:print ucase$(name1$ + name2$)
22410 color rgb(0,0,0)
22420 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
22430 bg=0:key$="":bg2=0
22440 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22450 'Enterと決定ボタン
22460 key$ = inkey$
22470 bg = strig(1)
22480 bg2=strig(0)
22490 pause 200
22500 wend
22510 if ((bg=2) or (key$=chr$(13))) then
22520 'データーをクリアしてトップ画面に行く
22530 'for i=0 to 8
22540 'buffer(i)=0
22550 'next i
22560 'for n=0 to 9
22570 'buf_name1$(n) = ""
22580 'buf_name2$(n) = ""
22590 'next n
22600 'Topに行く
22610 'goto Main_Screen:
22620 '次へ
22630 goto BirdsEye_Result2:
22640 endif
22650 if (bg2=2) then
22660 'データーをクリアする
22670 for i=0 to 8
22680 buffer(i)=0
22690 next i
22700 for n=0 to 9
22710 buf_name1$(n)=""
22720 buf_name2$(n)=""
22730 next n
22740 goto Main_Screen:
22750 endif
22760 'goto Result_Birtheye1:
22770 'Result_Birtheye2:
22780 'cls 3:color rgb(255,255,255)
22790 'end
22800 'Memory 消去
22810 '
22820 '横のフォーカスライン
22830 BirdsEye_Result2:
22840 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
22850 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
22860 Forcus1_buffer$(2)="○"
22870 else
22880 Forcus1_buffer$(2)="☓"
22890 endif
22900 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
22910 Forcus1_buffer$(1)="○"
22920 else
22930 Forcus1_buffer$(1) = "☓"
22940 endif
22950 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
22960 Forcus1_buffer$(0)="○"
22970 else
22980 Forcus1_buffer$(0)="☓"
22990 endif
23000 gload Gazo$ + "Screen1.png",0,0,0
23010 color rgb(255,0,0):
23020 locate 1,1
23030 print "バーズアイグリッド(フォーカスライン1)"
23040 color rgb(255,255,255)
23050 locate 1,3:
23060 print "●.横のフォーカスライン"
23070 locate 1,5
23080 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23090 locate 1,7
23100 print "2.調停者ライン:"+Forcus1_buffer$(1)
23110 locate 1,9
23120 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23130 color rgb(0,0,0)
23140 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23150 while (key$<>chr$(13) and bg<>2 and bg2<>2 )
23160 key$=inkey$
23170 bg=strig(1)
23180 bg2=strig(0)
23190 pause 200
23200 wend
23210 if ((bg=2) or (key$=chr$(13))) then
23220 goto BirdsEye_Result3:
23230 endif
23240 if (bg2=2) then
23250 goto Main_Screen:
23260 endif
23270 BirdsEye_Result3:
23280 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23290 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23300 Forcus2_buffer$(2)="○"
23310 else
23320 Forcus2_buffer$(2)="☓"
23330 endif
23340 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23350 Forcus2_buffer$(1)="○"
23360 else
23370 Forcus2_buffer$(1) = "☓"
23380 endif
23390 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23400 Forcus2_buffer$(0)="○"
23410 else
23420 Forcus2_buffer$(0)="☓"
23430 endif
23440 gload Gazo$ + "Screen1.png",0,0,0
23450 color rgb(255,0,0):
23460 locate 1,1
23470 print "バーズアイグリッド(フォーカスライン2)"
23480 color rgb(255,255,255)
23490 locate 1,3:
23500 print "●.縦のフォーカスライン"
23510 locate 1,5
23520 print "1.表現者ライン:" + Forcus2_buffer$(2)
23530 locate 1,7
23540 print "2.司令塔ライン:" + Forcus2_buffer$(1)
23550 locate 1,9
23560 print "3.指導者ライン:" + Forcus2_buffer$(0)
23570 color rgb(0,0,0)
23580 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23590 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23600 key$=inkey$
23610 bg=strig(1)
23620 bg2=strig(0)
23630 pause 200
23640 wend
23650 if ((bg = 2) or (key$ = chr$(13))) then
23660 goto BirdsEye_Result4:
23670 endif
23680 if (bg2=2) then
23690 goto Main_Screen:
23700 endif
23710 BirdsEye_Result4:
23720 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23730 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
23740 Forcus3_buffer$(1) = "○"
23750 else
23760 Forcus3_buffer$(1) = "☓"
23770 endif
23780 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
23790 Forcus3_buffer$(0) = "○"
23800 else
23810 Forcus3_buffer$(0) = "☓"
23820 endif
23830 gload Gazo$ + "Screen1.png",0,0,0
23840 color rgb(255,0,0):
23850 locate 1,1
23860 print "バーズアイグリッド(フォーカスライン3)"
23870 color rgb(255,255,255)
23880 locate 1,3:
23890 print "●.斜めのフォーカスライン"
23900 locate 1,5
23910 print "1.成功者ライン:"+Forcus3_buffer$(1)
23920 locate 1,7
23930 print "2.セレブライン:"+Forcus3_buffer$(0)
23940 color rgb(0,0,0)
23950 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
23960 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23970 key$ = inkey$
23980 bg = strig(1)
23990 bg2 = strig(0)
24000 pause 200
24010 wend
24020 if ((bg=2) or (key$=chr$(13))) then
24030  goto Result_Birtheye1:
24040 endif
24050 if (bg2=2) then
24060 'データークリア
24070 for i=0 to 8
24080  buffer(i) = 0
24090 next i
24100  goto Main_Screen:
24110 endif
24120 References1:
24130 cls 3:key$ = "":bg = 0:play "":font 48-16
24140 gload Gazo$ + "Reference1_20230703.png",0,0,0
24150 print chr$(13)+chr$(13)+chr$(13)
24160 color rgb(0,0,0)
24170 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24180 print "Author:carol Adrinne,PhD"+chr$(13)
24190 print "出版社:幻冬舎" + chr$(13)
24200 print "HP:www.carolAdrienne.jp/"+chr$(13)
24210 print "ISBN:978-4-344-01394-0"+chr$(13)
24220 print "定価:1500円 + 税"+chr$(13)
24230 color rgb(255,255,255)
24240 locate 1,23
24250 print "ジョイパッド右：次へ"
24260 while (key$ <> chr$(13) and bg <> 2)
24270 bg = strig(1)
24280 key$ = inkey$
24290 wend
24300 '
24310 if ((bg = 2) or (key$ = chr$(13))) then
24320 pause 200:goto References2:
24330 endif
24340 'ユダヤの秘儀 カバラ大占術
24350 References2:
24360 cls 3:play "":bg = 0:key$ = ""
24370 gload Gazo$ + "Reference2_20230703.png",0,0,0
24380 '参考文献２
24390 'カバラ大占術
24400 print chr$(13) + chr$(13) + chr$(13)
24410 color  rgb(0,0,0):font 48-16
24420 locate 1,3
24430 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24440 print "著者：浅野　八郎" + chr$(13)
24450 print "出版社:NON BOOK" + chr$(13)
24460 print "ISBN:4-396-10364-6" + chr$(13)
24470 print "定価:829円 + 税"
24480 color rgb(255,255,255)
24490 locate 1,23
24500 print "ジョイパッド右：トップへ行く"
24510 while ((key$ <> chr$(13)) and (bg <> 2))
24520 bg = strig(1)
24530 key$ = inkey$
24540 wend
24550 if ((bg = 2) or (key$ = chr$(13))) then
24560 pause 200:goto Main_Screen:
24570 endif
24580 end
24590 '1.数秘術　トップ画面
24600 Kabara_First_Top:
24610 cls 3:color rgb(255,255,255):play ""
24620 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
24630 gload Gazo$ + "downscreen.png",0,0,800
24640 No=0:init"kb:4"
24650 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
24660 print chr$(13);chr$(13)
24670 color rgb(255,255,255)
24680 locate 3,4:No=0
24690 print "番号選んでください" + chr$(13)
24700 print " :1.数秘術占い" + chr$(13)
24710 print " :2.トップ画面に戻る" + chr$(13)
24720 color rgb(0,0,0)
24730 sp_on 0,1
24740 locate 1,15:print "1.数秘術番号を求めるを選択"
24750 'KeyBord:true
24760 'Joy Pad:true
24770 '上、下:true
24780 '
24790 'ｂｇ：決定ボタン
24800 'カーソル　上
24810 'カーソル　下
24820 Kabara_First_Top2:
24830 key$ = "":bg = 0:y = 0:
24840 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
24850 key$ = inkey$
24860 bg = strig(1)
24870 y = stick(1)
24880 'PauseでCPUを休める
24890 pause 5
24900 wend
24910 '1.カーソル　下 処理 chr$(31)
24920 'カーソル　下
24930 if ((key$ = chr$(31)) or (y = 1)) then
24940 select case No
24950 '
24960 case 1:
24970 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
24980 case 0:
24990 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25000 'case 2:
25010 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25020 end select
25030 endif
25040 '2.カーソル　上 処理 chr$(30)
25050 if ((key$ = chr$(30)) or (y = -1)) then
25060 select case No
25070 case 0:
25080 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25090 case 1:
25100 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25110 'case 2:
25120 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25130 end select
25140 endif
25150 '3.決定 処理  bg:2 or Enter key:chr$(13)
25160 if ((bg = 2) or (key$ = chr$(13))) then
25170 select case No
25180 case 0:
25190 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25200 goto Kabara_TopScreen:
25210 'case 1:
25220 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25230 case 1:
25240 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25250 end select
25260 endif
25270 '
25280 'Kabara 相性占い トップ画面
25290 Kabara_Aishou_Top:
25300 cls 3:y=0:key$="":bg=0:No=0
25310 play ""
25320 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25330 gload Gazo$ + "downscreen.png",0,0,800
25340 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25350 print chr$(13) + chr$(13)
25360 locate 0,4:color rgb(255,255,255)
25370 'print "Ok"
25380 '
25390 print "番号を選んでください" + chr$(13)
25400 print " :1.男女2人の相性(未実装)" + chr$(13)
25410 print " :2.ビジネスの相性(実装未完全)" + chr$(13)
25420 print " :3.トップ画面に戻る" + chr$(13)
25430 sp_on 0,1:sp_on 1,0:sp_on 2,0
25440 color rgb(0,0,0)
25450 locate 1,15:print "1.男女2人の相性占いを選択"
25460 Kabara_Aishou_Top2:
25470 key$ = "":y = 0:bg = 0:
25480 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
25490 'ジョイパッド(右) ,十字キー (上下)
25500 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
25510 y = stick(1)
25520 key$ = inkey$
25530 bg = strig(1)
25540 pause 5
25550 wend
25560 'カーソル　下 or 十字キー　下
25570 if ((key$ = chr$(31)) or (y = 1)) then
25580 select case No
25590 '選択肢　1 - 2に変更
25600 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
25610 'ok
25620 case 0:
25630 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25640 '選択肢　2 - 3に変更
25650 case 1:
25660 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
25670 'リリース時 case 2コメント解除
25680 case 2:
25690 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
25700 case else:
25710 goto Kabara_Aishou_Top2:
25720 end select
25730 endif
25740 '十字キー　上　、カーソル　上
25750 if ((key$ = chr$(30)) or (y = -1)) then
25760 select case No
25770 case 0:
25780 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
25790 case 1:
25800 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
25810 case 2:
25820 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
25830 case else:
25840 goto Kabara_Aishou_Top2:
25850 end select
25860 endif
25870 '十字キー　上下:選択
25880 'ジョイパッド 右:決定
25890 if ((bg = 2) or (key$ = chr$(13))) then
25900 select case No
25910 '1.男女の相性
25920 case 0:
25930 play"":ui_msg "未実装だよー,終了するよ":cls 3:cls 4:talk"メモリーを開放してプログラムを終了します。":color rgb(255,255,255):gosub Data_erase:end
25940 '2ビジネスの相性
25950 case 1:
25960 :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
25970 case 2:
25980 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
25990 end select
26000 endif
26010 'ビジネスの相性　
26020 '1.1人目のビジネスの相性　名前入力　1人目
26030 Business_Aishou_Input_1_parson:
26040 No=0:color RGB(255,255,255)
26050 cls 3:init "kb:2"
26060 gload Gazo$ + "Screen1.png",0,0,0
26070 gload Gazo$ + "downscreen.png",0,0,800
26080 play "":color rgb(255,0,0):name$ = ""
26090 locate 0,1
26100 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
26110 color rgb(255,255,255):
26120 locate 0,3
26130 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
26140 print "入れてください" + chr$(13)
26150 locate 0,15:color rgb(0,0,0)
26160 Input "1人目の名前:",name$
26170 'color rgb(0,0,0)
26180 'locate 0,13:print "                                     "
26190 'locate 0,13:print "1人目の名前を入力してエンターキー":
26200 'buffer_name$(0):1人目の名前
26210 buffer_name$(0) = name$:
26220 goto Business_Aishou_Input_2_Parson:
26230 '2.2人目のビジネスの相性 名前入力 2人目
26240 Business_Aishou_Input_2_Parson:
26250 cls 3:init "kb:2":name$ = "":No=0
26260 gload Gazo$ + "Screen1.png",0,0,0
26270 gload Gazo$ + "downscreen.png",0,0,800
26280 color rgb(255,0,0)
26290 'Title
26300 locate 0,1
26310 print "ビジネスの相性　2人目"
26320 locate 0,3
26330 color rgb(255,255,255)
26340 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
26350 print "入れてください" + chr$(13)
26360 locate 0,15:color rgb(0,0,0)
26370 Input "2人目の名前:",name$
26380 'color rgb(0,0,0)
26390 'locate 0,15:print "                                              "
26400 'locate 0,15:print "2人目の名前を入力してエンター ":
26410 '2人目
26420 '2人目の名前を入れるに代入
26430 buffer_name$(1) = name$:
26440 goto Select_jyoushi:
26450 '3.上司の選択
26460 Select_jyoushi:
26470 cls 3:gload Gazo$ + "Screen1.png",0,0,0
26480 gload Gazo$ + "downscreen.png",0,0,800
26490 init "kb:4":No=0
26500 color rgb(0,0,255)
26510 locate 1,1
26520 print "上司の選択"
26530 color rgb(255,255,255)
26540 locate 0,4:print "名前から上司の方を選んでください"
26550 locate 0,6
26560 print " :";buffer_name$(0);"が上 司";chr$(13)
26570 locate 0,8
26580 print " :";buffer_name$(1);"が上 司";chr$(13)
26590 locate 0,15:
26600 print "                                     "
26610 locate 0,15:color rgb(0,0,0)
26620 print "上司の方を選んで右の丸ボタン"
26630 sp_on 0,1:sp_on 1,0:sp_on 2,0
26640 Select_jyoushi2:
26650 'ここでNo=0をおいてはいけない
26660 y=0:key$="":bg=0:
26670 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
26680 y = stick(1)
26690 key$ = inkey$
26700 bg = strig(1)
26710 pause 5
26720 wend
26730 '1.カーソル下の処理　or 十字キーの下処理
26740 if ((key$ = chr$(31)) or (y = 1)) then
26750 select case No
26760 case 0:
26770 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26780 case 1:
26790 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
26800 end select
26810 endif
26820 '2.カーソル上処理　or 十字キーの上の処理
26830 if ((key$ = chr$(30)) or (y = -1)) then
26840 select case No
26850 case 0:
26860 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
26870 case 1:
26880 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
26890 end select
26900 endif
26910 if ((key$ = chr$(13)) or (bg = 2)) then
26920 select case No
26930 case 0:
26940 '上司(name1)を配列に代入
26950 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26960 case 1:
26970 '上司（name2)を配列に代入
26980 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
26990 end select
27000 endif
27010 '3.決定ボタン　Enter or 右の丸ボタン
27020 '1.誕生日入力
27030 '1-1.生まれた年を入力
27040 'Jyoushi_born_year:
27050 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
27060 '---------------------------------------------'
27070 '誕生日入力(生れた年代)
27080 Jyoushi_Input_Seireki:
27090 'buf_Jyoushi_Born_Year:上司の生まれた年代
27100 'buf_Jyoushi_Born_Day(0) = born_year
27110 cls 3:play "":count=0:count2=0
27120 init"kb:4"
27130 'No=-1:Okのとき
27140 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
27150 for i=0 to 3
27160 buf_Jyoushi_Born_Day(i)=0
27170 next i
27180 gload Gazo$ + "Screen1.png",0,0,0
27190 gload Gazo$ + "downscreen.png",0,0,800
27200 'Init"kb:2"
27210 '音声ファイル再生 2023.06.07
27220 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
27230 font 48
27240 locate 0,1
27250 '文字色：黒　 color rgb(0,0,0)
27260 color rgb(255,255,255)
27270 print "上司の生まれた年代を入れて下さい" + chr$(13)
27280 color rgb(255,255,255)
27290 locate 1,3
27300 print "上司の生まれた年代(西暦4桁):";buf_year$
27310 color rgb(255,255,255)
27320 'locate 4,6:print ":7"
27330 'locate 9,6:print ":8"
27340 'locate 12,6:print ":9"
27350 locate 4,6
27360 print ":7  :8  :9" + chr$(13)
27370 color rgb(255,255,255)
27380 locate 4,8
27390 print ":4  :5  :6" + chr$(13)
27400 color rgb(255,255,255)
27410 locate 4,10
27420 print ":1  :2  :3" + chr$(13)
27430 locate 4,12
27440 print "    :0"
27450 locate 12,12
27460 color rgb(0,0,255)
27470 print ":Ok"
27480 sp_on 4,0: sp_on 5,0:sp_on 6,0
27490 sp_on 7,0:sp_on 8,0:sp_on 9,0
27500 sp_on 10,0:sp_on 11,0:sp_on 12,0
27510 sp_on 13,0:sp_on 14,1
27520 Jyoushi_Input_Seireki2:
27530 key$="":bg=0:y=0:y2=0:bg2=0:
27540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27550 key$ = inkey$
27560 bg = strig(1)
27570 y = stick(1)
27580 y2 = stick(0)
27590 bg2=strig(0)
27600 pause 5
27610 wend
27620 '十字キー　ここから
27630 '上の矢印　または、十字キー上
27640 if ((y = -1) or (key$ = chr$(30))) then
27650 select case No
27660 'No=-1:okのとき:初期の状態
27670 '0kボタンから３に移動
27680 '上に行く 処理
27690 case -1:
27700 No=3:sp_on 12,1:sp_on 14,0
27710 pause 200:goto Jyoushi_Input_Seireki2:
27720 '選択肢:3
27730 '3ボタンから 6に移動
27740 case 3:
27750 No=6:sp_on 12,0:sp_on 11,1
27760 pause 200:goto Jyoushi_Input_Seireki2:
27770 '6ボタンから ９に移動
27780 case 6:
27790 No=9:sp_on 10,1:sp_on 11,0
27800 pause 200:goto Jyoushi_Input_Seireki2:
27810 '6ボタンから ９に移動　ここまで
27820 '9で上を押して何もしない
27830 case 9:
27840 '何もしない
27850 No=9
27860 pause 200:goto Jyoushi_Input_Seireki2:
27870 '9で上を押しても何もしない　ここまで
27880 '上　 0ボタンから2ボタン
27890 'sp_on 6,1:1
27900 'sp_on 8,1:5
27910 'sp_on 7,1:7
27920 case 0:
27930 No=2:sp_on 13,0:sp_on 9,1:
27940 pause 200:goto Jyoushi_Input_Seireki2:
27950 '上  0ボタンから2ボタン　ここまで
27960 '2から５になる 上
27970 case 2:
27980 No=5:sp_on 8,1:sp_on 9,0:
27990 pause 200:goto Jyoushi_Input_Seireki2:
28000 case 5:
28010 No=8:sp_on 7,1:sp_on 8,0
28020 pause 200:goto Jyoushi_Input_Seireki2:
28030 case 8:
28040 pause 200:goto Jyoushi_Input_Seireki2:
28050 case 1:
28060 No=4:sp_on 5,1:sp_on 6,0
28070 pause 200:goto Jyoushi_Input_Seireki2:
28080 case 4:
28090 No=7:sp_on 4,1:sp_on 5,0
28100 pause 200:goto Jyoushi_Input_Seireki2:
28110 case 7:
28120 pause 200:goto Jyoushi_Input_Seireki2:
28130 end select
28140 endif
28150 '左３　ここまで
28160 '下の矢印
28170 '中央 2
28180 if ((y=1) or (key$ = chr$(31))) then
28190 select case No
28200 '9から６に下げる
28210 case 9:
28220 No=6:sp_on 11,1:sp_on 10,0
28230 pause 200:goto Jyoushi_Input_Seireki2:
28240 '6から３に下げる
28250 case 6:
28260 No=3:sp_on 12,1:sp_on 11,0
28270 pause 200:goto Jyoushi_Input_Seireki2:
28280 '3から０ｋに変える
28290 case 3:
28300 No=-1:sp_on 14,1:sp_on 12,0
28310 pause 200:goto Jyoushi_Input_Seireki2:
28320 'Okから下のボタンを押しても何もしない
28330 case -1:
28340 pause 200:goto Jyoushi_Input_Seireki2:
28350 case 8:
28360 No=5:sp_on 8,1:sp_on 7,0
28370 pause 200:goto Jyoushi_Input_Seireki2:
28380 case 5:
28390 No=2:sp_on 9,1:sp_on 8,0
28400 pause 200:goto Jyoushi_Input_Seireki2:
28410 case 2:
28420 No=0:sp_on 13,1:sp_on 9,0
28430 pause 200:goto Jyoushi_Input_Seireki2:
28440 case 0:
28450 pause 200:goto Jyoushi_Input_Seireki2:
28460 case 7:
28470 No=4:sp_on 5,1:sp_on 4,0
28480 pause 200:goto Jyoushi_Input_Seireki2:
28490 case 4:
28500 No=1:sp_on 6,1:sp_on 5,0
28510 pause 200:goto Jyoushi_Input_Seireki2:
28520 case 1:
28530 pause 200:goto Jyoushi_Input_Seireki2:
28540 end select
28550 endif
28560 '左へボタン 十字キー　左　or 　カーソル左
28570 if ((y2 = -1) or (key$ = chr$(29))) then
28580 select case No
28590 'Ok ボタン  Okから　左　０に行く
28600 case -1:
28610 No=0:sp_on 13,1:sp_on 14,0
28620 pause 200:goto Jyoushi_Input_Seireki2:
28630 '0 ボタン  左　何もしない
28640 case 0:
28650 pause 200:goto Jyoushi_Input_Seireki2:
28660 case 3:
28670 No=2:sp_on 9,1:sp_on 12,0:
28680 pause 200:goto Jyoushi_Input_Seireki2:
28690 case 2:
28700 No=1:sp_on 6,1:sp_on 9,0:
28710 pause 200:goto Jyoushi_Input_Seireki2:
28720 case 1:
28730 pause 200:goto Jyoushi_Input_Seireki2:
28740 case 6:
28750 No=5:sp_on 8,1:sp_on 11,0
28760 pause 200:goto Jyoushi_Input_Seireki2:
28770 case 5:
28780 No=4:sp_on 5,1:sp_on 8,0
28790 pause 200:goto Jyoushi_Input_Seireki2:
28800 case 4:
28810 pause 200:goto Jyoushi_Input_Seireki2:
28820 case 9:
28830 No=8:sp_on 7,1:sp_on 10,0
28840 pause 200:goto Jyoushi_Input_Seireki2:
28850 case 8:
28860 No=7:sp_on 4,1:sp_on 7,0
28870 pause 200:goto Jyoushi_Input_Seireki2:
28880 case 7:
28890 pause 200:goto Jyoushi_Input_Seireki2:
28900 end select
28910 endif
28920 '右  十字キー　右　or カーソル　右
28930 if ((y2 = 1) or (key$ = chr$(28))) then
28940 select case No
28950 '0ボタンからokボタン右に移動
28960 case 0:
28970 No=-1:sp_on 14,1:sp_on 13,0
28980 pause 200:goto Jyoushi_Input_Seireki2:
28990 '0ボタンからokボタン 右に移動　ここまで
29000 'OKボタンで右を押して何もしない
29010 case -1:
29020 pause 200:goto Jyoushi_Input_Seireki2:
29030 case 1:
29040 No=2:sp_on 9,1:sp_on 6,0
29050 pause 200:goto Jyoushi_Input_Seireki2:
29060 case 2:
29070 No=3:sp_on 12,1:sp_on 9,0
29080 pause 200:goto Jyoushi_Input_Seireki2:
29090 case 3:
29100 pause 200:goto Jyoushi_Input_Seireki2:
29110 case 4:
29120 No=5:sp_on 8,1:sp_on 5,0
29130 pause 200:goto Jyoushi_Input_Seireki2:
29140 case 5:
29150 No=6:sp_on 11,1:sp_on 8,0
29160 pause 200:goto Jyoushi_Input_Seireki2:
29170 case 7:
29180 No=8:sp_on 7,1:sp_on 4,0
29190 pause 200:goto Jyoushi_Input_Seireki2:
29200 case 8:
29210 No=9:sp_on 10,1:sp_on 7,0
29220 pause 200:goto Jyoushi_Input_Seireki2:
29230 case 9:
29240 pause 200:goto Jyoushi_Input_Seireki2:
29250 case 6:
29260 pause 200:goto Jyoushi_Input_Seireki2:
29270 end select
29280 'Okから右ボタンを押して何もしない ここまで
29290 endif
29300 '十字キー　ここまで
29310 '==============================
29320 'ここから
29330 '==============================
29340 if ((bg=2) or (key$=chr$(13))) then
29350 select case count
29360 case 0:
29370 count = 1
29380 if (No=-1) then
29390 count = 0:No=0
29400 buf_Jyoushi_Born_Day(0) = No
29410 'Okボタンを押したとき
29420 goto Jyoushi_Input_Seireki2:
29430 else
29440 'Okボタン以外が押されたとき
29450 if (No>=1 and No<=2) then
29460 buf_year$="":buf_year$=str$(No) + "***"
29470 buf_year = No:a= No
29480 buf_Jyoushi_Born_Day(0) = No
29490 locate 1,3
29500 color rgb(255,255,255)
29510 print "上司の生まれた年代(西暦4桁):";buf_year$
29520 goto Jyoushi_Input_Seireki2:
29530 else
29540 count=0
29550 ui_msg"数字が範囲外になります。"
29560 buf_year$="":buf_year=0
29570 goto Jyoushi_Input_Seireki2:
29580 endif
29590 endif
29600 case 1:
29610 count = 2
29620 if (No = -1) then
29630 count = 1
29640 goto Jyoushi_Input_Seireki2:
29650 else
29660 buf_year = a * 10 + No
29670 b=buf_year
29680 buf_year$ = str$(buf_year) + "**"
29690 buf_Jyoushi_Born_Day(0)=buf_year
29700 locate 1,3
29710 color rgb(255,255,255)
29720 print "                                                                "
29730 locate 1,3
29740 print "上司の生まれた年代(西暦4桁):" + buf_year$
29750 'if (No = -1) then
29760 'count=1
29770 goto Jyoushi_Input_Seireki2:
29780 endif
29790 case 2:
29800 count=3
29810 if (No=-1) then
29820 count =2
29830 goto Jyoushi_Input_Seireki2:
29840 else
29850 buf_year = b * 10 + No
29860 c=buf_year
29870 buf_year$ = str$(buf_year) + "*"
29880 buf_Jyoushi_Born_Day(0) = buf_year
29890 locate 1,3
29900 color rgb(255,255,255)
29910 print "                                        "
29920 locate 1,3
29930 print "上司の生まれた年代(西暦4桁):";buf_year$
29940 goto Jyoushi_Input_Seireki2:
29950 endif
29960 case 3:
29970 count=4
29980 if (No = -1) then
29990 No=0
30000 goto Jyoushi_Input_Seireki2:
30010 else
30020 buf_year = c * 10 + No
30030 buf_year$ = str$(buf_year)
30040 buf_Jyoushi_Born_Day(0) = buf_year
30050 locate 1,3
30060 color RGB(255,255,255)
30070 print "                                      "
30080 locate 1,3
30090 print "上司の生まれた年代(西暦4桁):";buf_year$
30100 buf_year=val(buf_year$)
30110 'year=val(buf_year$)
30120 'if (No=-1) then
30130 'goto Input_Born_Month:
30140 'else
30150 goto Jyoushi_Input_Seireki2:
30160 endif
30170 case 4:
30180 'bufyear=buf_year
30190 if (No=-1) then
30200 buf_year = val(buf_year$)
30210 buf_Jyoushi_Born_Day(0)=buf_year
30220 sp_on 14,0:No=0
30230 goto Jyoushi_Input_Born_Month:
30240 else
30250 goto Jyoushi_Input_Seireki2:
30260 endif
30270 end select
30280 endif
30290 '===========================
30300 'ここまでを部下のところにコピーする.
30310 '===========================
30320 if (bg2 = 2) then
30330 select case count2
30340 case 0:
30350 if (No = -1) then
30360 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
30370 count=0
30380 locate 1,3
30390 color rgb(255,255,255)
30400 print "                                      "
30410 locate 1,3
30420 print "上司の生まれた年代（西暦4桁):" + buf_year$
30430 goto Jyoushi_Input_Seireki2:
30440 else
30450 '(buf_year=0) then
30460 buf_year=0:buf_year$="****"
30470 locate 1,3
30480 print "                                       "
30490 locate 1,3
30500 print "上司の生まれた年代(西暦4桁):"+buf_year$
30510 goto Jyoushi_Input_Seireki2:
30520 'endif
30530 endif
30540 end select
30550 endif
30560 'Input"上司の生れた年代(4桁,〜2025年):",year
30570 'if year > 2025 then goto Jyoushi_Input_Seireki:
30580 'if year = 123 then cls 3:cls 4:goto Main_Screen:
30590 '"4桁目"
30600 'bufyear4 = fix(year / 1000)
30610 '"3桁目"
30620 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
30630 '"2桁目"
30640 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
30650 '"1桁目"
30660 'bufyear1 = fix((year - ((bufyear4*
30670 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
30680 '2.生まれた月を入力
30690 Jyoushi_Input_Born_Month:
30700 cls 3:play "":count=0:count2=0
30710 'No=-1:Okのとき
30720 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
30730 for i=0 to 1
30740 buf_month(i)=0
30750 next i
30760 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30770 gload Gazo$ + "Screen1.png",0,0,0
30780 gload Gazo$ + "downscreen.png",0,0,800
30790 'Init"kb:4"
30800 '音声ファイル再生 2023.06.07
30810 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30820 font 48
30830 locate 0,1
30840 '文字色：黒　 color rgb(0,0,0)
30850 '文字色:白
30860 color rgb(255,255,255)
30870 print "上司の生まれた月を入れて下さい" + chr$(13)
30880 '文字色:白
30890 color rgb(255,255,255)
30900 locate 1,3
30910 '文字色:白
30920 print "上司の生まれた月(1月~12月):"+buf_Month$
30930 color rgb(255,255,255)
30940 'locate 4,6:print ":7"
30950 'locate 9,6:print ":8"
30960 'locate 12,6:print ":9"
30970 locate 4,6
30980 '文字色:赤
30990 print ":7  :8  :9" + chr$(13)
31000 color rgb(255,255,255)
31010 locate 4,8
31020 print ":4  :5  :6" + chr$(13)
31030 color rgb(255,255,255)
31040 locate 4,10
31050 print ":1  :2  :3" + chr$(13)
31060 locate 4,12
31070 print "    :0"
31080 locate 12,12
31090 color rgb(0,0,255)
31100 print ":Ok"
31110 sp_on 4,0: sp_on 5,0:sp_on 6,0
31120 sp_on 7,0:sp_on 8,0:sp_on 9,0
31130 sp_on 10,0:sp_on 11,0:sp_on 12,0
31140 sp_on 13,0:sp_on 14,1
31150 Jyoushi_Input_Born_Month2:
31160 key$="":bg=0:y=0:y2=0:bg2=0
31170 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31180 key$ = inkey$
31190 bg = strig(1)
31200 y = stick(1)
31210 y2 = stick(0)
31220 bg2 = strig(0)
31230 pause 5
31240 wend
31250 '十字キー　ここから
31260 '上の矢印　または、十字キー上
31270 if ((y = -1) or (key$ = chr$(30))) then
31280 select case No
31290 'No=-1:okのとき:初期の状態
31300 '0kボタンから３に移動
31310 '上に行く 処理
31320 case -1:
31330 No=3:sp_on 12,1:sp_on 14,0
31340 pause 200:goto Jyoushi_Input_Born_Month2:
31350 '選択肢:3
31360 '3ボタンから 6に移動
31370 case 3:
31380 No=6:sp_on 12,0:sp_on 11,1
31390 pause 200:goto Jyoushi_Input_Born_Month2:
31400 '6ボタンから ９に移動
31410 case 6:
31420 No=9:sp_on 10,1:sp_on 11,0
31430 pause 200:goto Jyoushi_Input_Born_Month2:
31440 '6ボタンから ９に移動　ここまで
31450 '9で上を押して何もしない
31460 case 9:
31470 '何もしない
31480 No=9
31490 pause 200:goto Jyoushi_Input_Born_Month2:
31500 '9で上を押しても何もしない　ここまで
31510 '上　 0ボタンから2ボタン
31520 'sp_on 6,1:1
31530 'sp_on 8,1:5
31540 'sp_on 7,1:7
31550 case 0:
31560 No=2:sp_on 13,0:sp_on 9,1:
31570 pause 200:goto Jyoushi_Input_Born_Month2:
31580 '上  0ボタンから2ボタン　ここまで
31590 '2から５になる 上
31600 case 2:
31610 No=5:sp_on 8,1:sp_on 9,0:
31620 pause 200:goto Jyoushi_Input_Born_Month2:
31630 case 5:
31640 No=8:sp_on 7,1:sp_on 8,0
31650 pause 200:goto Jyoushi_Input_Born_Month2:
31660 case 8:
31670 pause 200:goto Input_Born_Month2:
31680 case 1:
31690 No=4:sp_on 5,1:sp_on 6,0
31700 pause 200:goto Jyoushi_Input_Born_Month2:
31710 case 4:
31720 No=7:sp_on 4,1:sp_on 5,0
31730 pause 200:goto Jyoushi_Input_Born_Month2:
31740 case 7:
31750 pause 200:goto Input_Born_Month2:
31760 end select
31770 endif
31780 '左３　ここまで
31790 '下の矢印
31800 '中央 2
31810 if ((y=1) or (key$ = chr$(31))) then
31820 select case No
31830 '9から６に下げる
31840 case 9:
31850 No=6:sp_on 11,1:sp_on 10,0
31860 pause 200:goto Jyoushi_Input_Born_Month2:
31870 '6から３に下げる
31880 case 6:
31890 No=3:sp_on 12,1:sp_on 11,0
31900 pause 200:goto Jyoushi_Input_Born_Month2:
31910 '3から０ｋに変える
31920 case 3:
31930 No=-1:sp_on 14,1:sp_on 12,0
31940 pause 200:goto Jyoushi_Input_Born_Month2:
31950 'Okから下のボタンを押しても何もしない
31960 case -1:
31970 pause 200:goto Jyoushi_Input_Born_Month2:
31980 case 8:
31990 No=5:sp_on 8,1:sp_on 7,0
32000 pause 200:goto Jyoushi_Input_Born_Month2:
32010 case 5:
32020 No=2:sp_on 9,1:sp_on 8,0
32030 pause 200:goto Jyoushi_Input_Born_Month2:
32040 case 2:
32050 No=0:sp_on 13,1:sp_on 9,0
32060 pause 200:goto Jyoushi_Input_Born_Month2:
32070 case 0:
32080 pause 200:goto Jyoushi_Input_Born_Month2:
32090 case 7:
32100 No=4:sp_on 5,1:sp_on 4,0
32110 pause 200:goto Jyoushi_Input_Born_Month2:
32120 case 4:
32130 No=1:sp_on 6,1:sp_on 5,0
32140 pause 200:goto Jyoushi_Input_Born_Month2:
32150 case 1:
32160 pause 200:goto Jyoushi_Input_Born_Month2:
32170 end select
32180 endif
32190 '左へボタン 十字キー　左　or 　カーソル左
32200 if ((y2 = -1) or (key$ = chr$(29))) then
32210 select case No
32220 'Ok ボタン  Okから　左　０に行く
32230 case -1:
32240 No=0:sp_on 13,1:sp_on 14,0
32250 pause 200:goto Jyoushi_Input_Born_Month2:
32260 '0 ボタン  左　何もしない
32270 case 0:
32280 pause 200:goto Jyoushi_Input_Born_Month2:
32290 case 3:
32300 No=2:sp_on 9,1:sp_on 12,0:
32310 pause 200:goto Jyoushi_Input_Born_Month2:
32320 case 2:
32330 No=1:sp_on 6,1:sp_on 9,0:
32340 pause 200:goto Jyoushi_Input_Born_Month2:
32350 case 1:
32360 pause 200:goto Jyoushi_Input_Born_Month2:
32370 case 6:
32380 No=5:sp_on 8,1:sp_on 11,0
32390 pause 200:goto Jyoushi_Input_Born_Month2:
32400 case 5:
32410 No=4:sp_on 5,1:sp_on 8,0
32420 pause 200:goto Jyoushi_Input_Born_Month2:
32430 case 4:
32440 pause 200:goto Jyoushi_Input_Born_Month2:
32450 case 9:
32460 No=8:sp_on 7,1:sp_on 10,0
32470 pause 200:goto Input_Born_Month2:
32480 case 8:
32490 No=7:sp_on 4,1:sp_on 7,0
32500 pause 200:goto Jyoushi_Input_Born_Month2:
32510 case 7:
32520 pause 200:goto Jyoushi_Input_Born_Month2:
32530 end select
32540 endif
32550 '右  十字キー　右　or カーソル　右
32560 if ((y2 = 1) or (key$ = chr$(28))) then
32570 select case No
32580 '0ボタンからokボタン右に移動
32590 case 0:
32600 No=-1:sp_on 14,1:sp_on 13,0
32610 pause 200:goto Jyoushi_Input_Born_Month2:
32620 '0ボタンからokボタン 右に移動　ここまで
32630 'OKボタンで右を押して何もしない
32640 case -1:
32650 pause 200:goto Jyoushi_Input_Born_Month2:
32660 case 1:
32670 No=2:sp_on 9,1:sp_on 6,0
32680 pause 200:goto Jyoushi_Input_Born_Month2:
32690 case 2:
32700 No=3:sp_on 12,1:sp_on 9,0
32710 pause 200:goto Jyoushi_Input_Born_Month2:
32720 case 3:
32730 pause 200:goto Jyoushi_Input_Born_Month2:
32740 case 4:
32750 No=5:sp_on 8,1:sp_on 5,0
32760 pause 200:goto Jyoushi_Input_Born_Month2:
32770 case 5:
32780 No=6:sp_on 11,1:sp_on 8,0
32790 pause 200:goto Jyoushi_Input_Born_Month2:
32800 case 7:
32810 No=8:sp_on 7,1:sp_on 4,0
32820 pause 200:goto Jyoushi_Input_Born_Month2:
32830 case 8:
32840 No=9:sp_on 10,1:sp_on 7,0
32850 pause 200:goto Jyoushi_Input_Born_Month2:
32860 case 9:
32870 pause 200:goto Jyoushi_Input_Born_Month2:
32880 case 6:
32890 pause 200:goto Jyoushi_Input_Born_Month2:
32900 end select
32910 'Okから右ボタンを押して何もしない ここまで
32920 endif
32930 '十字キー　ここまで
32940 '右の丸ボタン + Enter key 決定キー
32950 if ((bg=2) or (key$=chr$(13))) then
32960 select case count
32970 case 0:
32980 if (No=-1) then No=0
32990 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
33000 if (buf_month > 1 and buf_month < 10)  then
33010 buf_Month$ = str$(buf_month)
33020 'buf_month=No
33030 endif
33040 if (buf_month = 1)  then
33050 buf_Month$ = str$(buf_month) + "*"
33060 'c=buf_month
33070 endif
33080 locate 1,3
33090 print "                                     "
33100 color RGB(255,255,255)
33110 locate 1,3
33120 print "上司の生まれた月(1月~12月):" + buf_Month$
33130 goto Jyoushi_Input_Born_Month2:
33140 case 1:
33150 count = 2:
33160 'c = val(buf_Month$)
33170 if (No = -1) then
33180 'count=0
33190 No=0
33200 month=buf_month
33210 buf_month=val(buf_Month$)
33220 month=buf_month
33230 buf_Jyoushi_Born_Day(1)=month
33240 '生まれた日に飛ぶ
33250 goto Jyoushi_Input_Born_Day:
33260 else
33270 buf_month = c*10 + No
33280 'if (buf_month = 1) then
33290 'buf_Month$ = str$(buf_month)
33300 'endif
33310 buf_Month$ = str$(buf_month)
33320 buf_Jyoushi_Born_Day(1) = buf_month
33330 locate 0,3
33340 print "                                           "
33350 locate 1,3
33360 color Rgb(255,255,255)
33370 print "上司の生まれた月(1月~12月):" + buf_Month$
33380 goto Jyoushi_Input_Born_Month2:
33390 endif
33400 case 2:
33410 '==================================
33420 '何もしない
33430 'coun = 2
33440 '==================================
33450 'c= val(buf_Month$)
33460 'buf_month = c*10 + No
33470 'buf_Month$ = str$(buf_month)
33480 'locate 2,3
33490 'print "上司の生まれた月(1月～12月):";buf_Month$
33500 'goto Jyoushi_Input_Born_Month2:
33510 'case 3:
33520 'count=4
33530 'b=val(buf_month$)
33540 'buf_month=c*10+No
33550 'buf_Month$=str$(buf_month)
33560 'locate 2,3
33570 'print "上司の生まれた月(1月～12月):";buf_Month$
33580 'buf_month=val(buf_Month$)
33590 'year=val(buf_year$)
33600 if (No=-1) then
33610 No=0
33620 goto Jyoushi_Input_Born_Day:
33630 else
33640 goto Jyoushi_Input_Born_Month2:
33650 endif
33660 'case 4:
33670 'bufyear=buf_year
33680 'if (No=-1) then
33690 'buf_month = val(buf_Month$)
33700 'month = buf_month
33710 'sp_on 14,0
33720 'goto Input_Born_Day:
33730 'else
33740 'goto Input_Born_Month2:
33750 'endif
33760 end select
33770 endif
33780 '左の丸ボタン　キャンセル
33790 if (bg2=2) then
33800 select case count2
33810 case 0:
33820 if (No = -1) then
33830 buf_month=0:buf_Month$="**"
33840 count=0
33850 'goto rewrite2:
33860 else
33870 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
33880 buf_month = 0:buf_Month$ = "**"
33890 locate 0,3
33900 color rgb(255,255,255)
33910 print "                                       "
33920 goto rewrite2:
33930 if (No>12) then
33940 ui_msg"値が範囲外です。"
33950 goto rewrite2:
33960 endif
33970 endif
33980 endif
33990 rewrite2:
34000 locate 2,3
34010 color rgb(255,255,255)
34020 print "                                      "
34030 locate 2,3
34040 print "上司の生まれた月(1月~12月):"+buf_Month$
34050 goto Jyoushi_Input_Born_Month2:
34060 end select
34070 'endif
34080 endif
34090 end
34100 'end
34110 '生れた日を入力
34120 Jyoushi_Input_Born_Day:
34130 '生まれた日入力
34140 cls 3:play ""
34150 'No=-1:Okのとき
34160 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
34170 for i=0 to 1
34180 buf_day(i)=0
34190 next i
34200 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34210 gload Gazo$ + "Screen1.png",0,0,0
34220 gload Gazo$ + "downscreen.png",0,0,800
34230 'Init"kb:2"
34240 '音声ファイル再生 2023.06.07
34250 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
34260 font 48
34270 locate 1,1
34280 '文字色：黒　 color rgb(0,0,0)
34290 color rgb(255,255,255)
34300 print "上司の生まれた日を入れて下さい" + chr$(13)
34310 locate 1,3
34320 color rgb(255,255,255)
34330 print "                                      "
34340 locate 1,3
34350 print "上司の生まれた日(1日~31日):"+buf_Day$
34360 color rgb(255,255,255)
34370 'locate 4,6:print ":7"
34380 'locate 9,6:print ":8"
34390 'locate 12,6:print ":9"
34400 locate 4,6
34410 print ":7  :8  :9" + chr$(13)
34420 color rgb(255,255,255)
34430 locate 4,8
34440 print ":4  :5  :6" + chr$(13)
34450 color rgb(255,255,255)
34460 locate 4,10
34470 print ":1  :2  :3" + chr$(13)
34480 locate 4,12
34490 print "    :0"
34500 locate 12,12
34510 color rgb(0,0,255)
34520 print ":Ok"
34530 sp_on 4,0: sp_on 5,0:sp_on 6,0
34540 sp_on 7,0:sp_on 8,0:sp_on 9,0
34550 sp_on 10,0:sp_on 11,0:sp_on 12,0
34560 sp_on 13,0:sp_on 14,1
34570 Jyoushi_Input_Born_Day2:
34580 key$="":bg=0:y=0:y2=0:bg2=0:
34590 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34600 key$ = inkey$
34610 bg = strig(1)
34620 y = stick(1)
34630 y2 = stick(0)
34640 bg2 = strig(0)
34650 pause 5
34660 wend
34670 '十字キー　ここから
34680 '上の矢印　または、十字キー上
34690 if ((y = -1) or (key$ = chr$(30))) then
34700 select case No
34710 'No=-1:okのとき:初期の状態
34720 '0kボタンから３に移動
34730 '上に行く 処理
34740 case -1:
34750 No=3:sp_on 12,1:sp_on 14,0
34760 pause 200:goto Jyoushi_Input_Born_Day2:
34770 '選択肢:3
34780 '3ボタンから 6に移動
34790 case 3:
34800 No=6:sp_on 12,0:sp_on 11,1
34810 pause 200:goto Jyoushi_Input_Born_Day2:
34820 '6ボタンから ９に移動
34830 case 6:
34840 No=9:sp_on 10,1:sp_on 11,0
34850 pause 200:goto Jyoushi_Input_Born_Day2:
34860 '6ボタンから ９に移動　ここまで
34870 '9で上を押して何もしない
34880 case 9:
34890 '何もしない
34900 No=9
34910 pause 200:goto Jyoushi_Input_Born_Day2:
34920 '9で上を押しても何もしない　ここまで
34930 '上　 0ボタンから2ボタン
34940 'sp_on 6,1:1
34950 'sp_on 8,1:5
34960 'sp_on 7,1:7
34970 case 0:
34980 No=2:sp_on 13,0:sp_on 9,1:
34990 pause 200:goto Jyoushi_Input_Born_Day2:
35000 '上  0ボタンから2ボタン　ここまで
35010 '2から５になる 上
35020 case 2:
35030 No=5:sp_on 8,1:sp_on 9,0:
35040 pause 200:goto Jyoushi_Input_Born_Day2:
35050 case 5:
35060 No=8:sp_on 7,1:sp_on 8,0
35070 pause 200:goto Jyoushi_Input_Born_Day2:
35080 case 8:
35090 pause 200:goto Jyoushi_Input_Born_Day2:
35100 case 1:
35110 No=4:sp_on 5,1:sp_on 6,0
35120 pause 200:goto Jyoushi_Input_Born_Day2:
35130 case 4:
35140 No=7:sp_on 4,1:sp_on 5,0
35150 pause 200:goto Jyoushi_Input_Born_Day2:
35160 case 7:
35170 pause 200:goto Jyoushi_Input_Born_Day2:
35180 end select
35190 endif
35200 '左３　ここまで
35210 '下の矢印
35220 '中央 2
35230 if ((y=1) or (key$ = chr$(31))) then
35240 select case No
35250 '9から６に下げる
35260 case 9:
35270 No=6:sp_on 11,1:sp_on 10,0
35280 pause 200:goto Jyoushi_Input_Born_Day2:
35290 '6から３に下げる
35300 case 6:
35310 No=3:sp_on 12,1:sp_on 11,0
35320 pause 200:goto Jyoushi_Input_Born_Day2:
35330 '3から０ｋに変える
35340 case 3:
35350 No=-1:sp_on 14,1:sp_on 12,0
35360 pause 200:goto Jyoushi_Input_Born_Day2:
35370 'Okから下のボタンを押しても何もしない
35380 case -1:
35390 pause 200:goto Jyoushi_Input_Born_Day2:
35400 case 8:
35410 No=5:sp_on 8,1:sp_on 7,0
35420 pause 200:goto Jyoushi_Input_Born_Day2:
35430 case 5:
35440 No=2:sp_on 9,1:sp_on 8,0
35450 pause 200:goto Jyoushi_Input_Born_Day2:
35460 case 2:
35470 No=0:sp_on 13,1:sp_on 9,0
35480 pause 200:goto Jyoushi_Input_Born_Day2:
35490 case 0:
35500 pause 200:goto Jyoushi_Input_Born_Day2:
35510 case 7:
35520 No=4:sp_on 5,1:sp_on 4,0
35530 pause 200:goto Jyoushi_Input_Born_Day2:
35540 case 4:
35550 No=1:sp_on 6,1:sp_on 5,0
35560 pause 200:goto Jyoushi_Input_Born_Day2:
35570 case 1:
35580 pause 200:goto Jyoushi_Input_Born_Day2:
35590 end select
35600 endif
35610 '左へボタン 十字キー　左　or 　カーソル左
35620 if ((y2 = -1) or (key$ = chr$(29))) then
35630 select case No
35640 'Ok ボタン  Okから　左　０に行く
35650 case -1:
35660 No=0:sp_on 13,1:sp_on 14,0
35670 pause 200:goto Jyoushi_Input_Born_Day2:
35680 '0 ボタン  左　何もしない
35690 case 0:
35700 pause 200:goto Jyoushi_Input_Born_Day2:
35710 case 3:
35720 No=2:sp_on 9,1:sp_on 12,0:
35730 pause 200:goto Jyoushi_Input_Born_Day2:
35740 case 2:
35750 No=1:sp_on 6,1:sp_on 9,0:
35760 pause 200:goto Jyoushi_Input_Born_Day2:
35770 case 1:
35780 pause 200:goto Jyoushi_Input_Born_Day2:
35790 case 6:
35800 No=5:sp_on 8,1:sp_on 11,0
35810 pause 200:goto Jyoushi_Input_Born_Day2:
35820 case 5:
35830 No=4:sp_on 5,1:sp_on 8,0
35840 pause 200:goto Jyoushi_Input_Born_Day2:
35850 case 4:
35860 pause 200:goto Jyoushi_Input_Born_Day2:
35870 case 9:
35880 No=8:sp_on 7,1:sp_on 10,0
35890 pause 200:goto Jyoushi_Input_Born_Day2:
35900 case 8:
35910 No=7:sp_on 4,1:sp_on 7,0
35920 pause 200:goto Jyoushi_Input_Born_Day2:
35930 case 7:
35940 pause 200:goto Jyoushi_Input_Born_Day2:
35950 end select
35960 endif
35970 '右  十字キー　右　or カーソル　右
35980 if ((y2 = 1) or (key$ = chr$(28))) then
35990 select case No
36000 '0ボタンからokボタン右に移動
36010 case 0:
36020 No=-1:sp_on 14,1:sp_on 13,0
36030 pause 200:goto Jyoushi_Input_Born_Day2:
36040 '0ボタンからokボタン 右に移動　ここまで
36050 'OKボタンで右を押して何もしない
36060 case -1:
36070 pause 200:goto Jyoushi_Input_Born_Day2:
36080 case 1:
36090 No=2:sp_on 9,1:sp_on 6,0
36100 pause 200:goto Jyoushi_Input_Born_Day2:
36110 case 2:
36120 No=3:sp_on 12,1:sp_on 9,0
36130 pause 200:goto Jyoushi_Input_Born_Day2:
36140 case 3:
36150 pause 200:goto Jyoushi_Input_Born_Day2:
36160 case 4:
36170 No=5:sp_on 8,1:sp_on 5,0
36180 pause 200:goto Jyoushi_Input_Born_Day2:
36190 case 5:
36200 No=6:sp_on 11,1:sp_on 8,0
36210 pause 200:goto Jyoushi_Input_Born_Day2:
36220 case 7:
36230 No=8:sp_on 7,1:sp_on 4,0
36240 pause 200:goto Jyoushi_Input_Born_Day2:
36250 case 8:
36260 No=9:sp_on 10,1:sp_on 7,0
36270 pause 200:goto Jyoushi_Input_Born_Day2:
36280 case 9:
36290 pause 200:goto Jyoushi_Input_Born_Day2:
36300 case 6:
36310 pause 200:goto Jyoushi_Input_Born_Day2:
36320 end select
36330 'Okから右ボタンを押して何もしない ここまで
36340 endif
36350 '十字キー　ここまで
36360 '右の丸ボタンを押したとき
36370 if ((bg = 2) or (key$ = chr$(13))) then
36380 'count :決定ボタンを押した回数
36390 select case (count)
36400 '1桁目入力
36410 case 0:
36420 count = 1:
36430 if (No = -1) then
36440 '1桁目　OKでは何もしない
36450 No=c
36460 'goto Jyoushi_Input_Born_Day2:
36470 else
36480 'ok以外のボタンを押したとき
36490 buf_day = No:buf_Day$ = str$(No)
36500 buf_Jyoushi_Born_Day(2)=buf_day
36510 c=No
36520 locate 1,3
36530 print "                                      "
36540 color RGB(255,255,255)
36550 locate 1,3
36560 print "上司の生まれた日(1日~31日):" + buf_Day$
36570 endif
36580 'check2:
36590 'if (buf_day >= 1 and buf_day <= 9) then
36600 'sp_on 14,0
36610 'goto complate_jyoushi:
36620 'else
36630 'sp_on 14,0
36640 goto Jyoushi_Input_Born_Day2:
36650 'end
36660 'endif
36670 case 1:
36680 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
36690 count = 2:
36700 'locate 2,3
36710 'color RGB(255,255,255)
36720 'print "生まれた日(1日~31日):";buf_Day$
36730 'Okボタンを押したときの処理
36740 '入力値　10未満のとき
36750 'buf_day = c * 10 + No
36760 if (No = -1) then
36770 c=buf_day:No=0
36780 'buf_day = c
36790 buf_Day$ = str$(buf_day)
36800 '10以下のとき
36810 'if (buf_day < 10) then
36820 sp_on 14,0
36830 goto complate_jyoushi:
36840 'end
36850 'endif
36860 else
36870 'c=No
36880 buf_day = c * 10 + No
36890 buf_Day$ = str$(buf_day)
36900 'buf_day = c:buf_Day$=str$(buf_day)
36910 buf_Jyoushi_Born_Day(2)=buf_day
36920 locate 1,3
36930 print "                                           "
36940 locate 1,3
36950 color Rgb(255,255,255)
36960 print "上司の生まれた日(1日~31日):" + buf_Day$
36970 goto Jyoushi_Input_Born_Day2:
36980 'goto
36990 endif
37000 'endif
37010 '生まれた日　2桁目の数字　or 1桁の数字 + ok
37020 case 2:
37030 'buf_day = c * 10 + No
37040 'buf_Jyoushi_Born_Day(2)=buf_day
37050 'locate 1,3
37060 'print "                                      "
37070 'locate 1,3
37080 'locate 2,3
37090 'print "生まれた日(1日〜31日):";buf_Day
37100 'No=-1:ok ボタンを押したとき
37110 if (No = -1) then
37120 'if ((buf_day > 0) and (buf_day < 32)) then
37130 No=0
37140 sp_on 14,0
37150 goto complate_jyoushi:
37160 'end
37170 else
37180 goto Jyoushi_Input_Born_Day2:
37190 'endif
37200 'Okボタン以外を押したとき
37210 'else
37220 'c=val(buf_Day$)
37230 'buf_day = c * 10 + No
37240 'buf_Jyoushi_Born_Day(2) = buf_day
37250 'buf_Day$ = str$(buf_day)
37260 'locate 1,3
37270 'print "上司の生まれた日(1日~31日):";buf_Day$
37280 'goto Jyoushi_Input_Born_Day2:
37290 endif
37300 'case 3:
37310 'count=4
37320 'c=val(buf_day$)
37330 'buf_day=c*10+No
37340 'buf_day$=str$(buf_day)
37350 'locate 2,3
37360 'print "生まれた日を入れてください:";buf_day$
37370 'year=val(buf_year$)
37380 'if (No = -1) then
37390 'goto Jyoushi_Input_Born_Day:
37400 'sp_on 14,0:
37410 'goto complate_jyoushi:
37420 'else
37430 'goto Jyoushi_Input_Born_Month2:
37440 'endif
37450 'case 4:
37460 'bufyear=buf_year
37470 'if (No=-1) then
37480 'buf_day = val(buf_day$)
37490 'bufday = buf_day
37500 'sp_on 14,0
37510 'goto Jyoushi_Input_Born_Day2:
37520 'else
37530 'goto Jyoushi_Input_Born_Day2:
37540 'endif
37550 end select
37560 endif
37570 if (bg2=2) then
37580 select case count2
37590 case 0:
37600 if (No=-1) then
37610 buf_day=0:buf_Day$="**":No=0
37620 if (buf_day >= 1 and buf_day <= 31) then
37630 count=0
37640 buf_day=0:buf_Day$ = "**"
37650 goto rewrite_day3:
37660 else
37670 buf_day=0:buf_Day$ = "**"
37680 ui_msg"値が範囲外です"
37690 endif
37700 goto rewrite_day3:
37710 else
37720 goto rewrite_day3:
37730 endif
37740 rewrite_day3:
37750 locate 2,3
37760 color rgb(255,255,255)
37770 print "                                      "
37780 locate 2,3
37790 print "生まれた日(1日~31日):" + buf_Day$
37800 goto Jyoushi_Input_Born_Day2:
37810 end select
37820 endif
37830 '--------------------------------------------'
37840 'locate 2,0:color rgb(255,0,0)
37850 'print "上司の生まれた年代を入力"
37860 'color rgb(255,255,255)
37870 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
37880 'locate 2,4:Input "上司の生まれた年:",born_year
37890 '誕生日データーを配列に代入
37900 'buf_Jyoushi_Born_Year:上司の生まれた年代
37910 'buf_Jyoushi_Born_Day(0) = born_year
37920 'born_year = 0
37930 '---------------------------------------------'
37940 'goto Jyoushi_born_month:
37950 '1-2.生まれた月を入力
37960 'Jyoushi_born_month:
37970 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
37980 'init "kb:4"
37990 'locate 2,1:
38000 'color rgb(255,0,0)
38010 'print "上司の生まれた月入力"
38020 'color rgb(255,255,255)
38030 'locate 2,4:print "生まれた月を入力してください"
38040 'locate 2,5
38050 'Input "上司の生まれ月:",born_month
38060 'buf_Jyoushi_Born_Day(1) = born_month
38070 'born_month = 0
38080 'goto Jyoushi_born_day:
38090 'buf_Jyoushi_Born_day
38100 '1-3.生まれた日を入力
38110 'Jyoushi_born_day:
38120 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38130 'init "kb:4"
38140 'locate 2,1:color rgb(255,0,0)
38150 'print "上司の生まれた日　入力"
38160 'locate 2,4:color rgb(255,255,255)
38170 'print "生まれた日を入力してください"
38180 'locate 2,5
38190 'Input "上司の生まれた日:",born_day
38200 'buf_Jyoushi_Born_Day(2) = born_day
38210 'born_day = 0
38220 'goto buka_born_year:
38230 '2.部下の誕生日入力
38240 '2-1.生まれた年を入力
38250 'buka_born_year:
38260 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38270 'init "kb:2"
38280 'locate 1,1:color rgb(255,0,0)
38290 'print "部下の生まれた年代入力"
38300 'locate 0,4:color rgb(255,255,255)
38310 'print "部下の生まれた年（西暦4桁）を入れてください"
38320 'locate 0,5
38330 'Input "部下の生まれた年(西暦4桁):",born_year
38340 'buf_Buka_Born_Day(0) = born_year
38350 'born_year = 0
38360 '2-2.生まれた月を入力
38370 'buka_born_month:
38380 'cls 3:gload Gazo$+"Screen1.png",0,0,0
38390 'init "kb:2"
38400 'locate 2,1:color rgb(255,0,0)
38410 'print "部下の生まれた月 入力"
38420 'locate 2,4:color rgb(255,255,255)
38430 'print "部下の生まれた月を入力してください"
38440 'locate 2,5:Input "部下の生まれた月:",born_month
38450 'buf_Buka_Born_Day(1) = born_month
38460 '2-3.生まれた日を入力
38470 'buka_born_day:
38480 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
38490 'init "kb:2"
38500 'locate 2,1:color rgb(255,0,0)
38510 'print "生まれた日入力"
38520 'color rgb(255,255,255)
38530 'locate 2,4:print "生まれた日を入力してください"
38540 'locate 2,5:Input "部下の生まれた日:",born_day
38550 'buf_Buka_Born_Day(2) = born_day
38560 'born_day=0:goto Result_Business_Aisyou:
38570 '--------------------------------------------'
38580 complate_jyoushi:
38590 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
38600 buf_Jyoushi = Kabara_Num(a,b,c)
38610 a_1=buf_Jyoushi
38620 goto Buka_Input_Seireki:
38630 '--------------------------------------------'
38640 '部下'
38650 '1.部下の生まれた年代'
38660 Buka_Input_Seireki:
38670 cls 3:play "":count=0:count2=0
38680 init"kb:4"
38690 'No=-1:Okのとき
38700 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
38710 for i=0 to 3
38720 buf_Buka_Born_Day(i)=0
38730 next i
38740 gload Gazo$ + "Screen1.png",0,0,0
38750 gload Gazo$ + "downscreen.png",0,0,800
38760 'Init"kb:2"
38770 '音声ファイル再生 2023.06.07
38780 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
38790 font 48
38800 locate 0,1
38810 '文字色：黒　 color rgb(0,0,0)
38820 color rgb(255,255,255)
38830 print "部下の生まれた年代を入れて下さい" + chr$(13)
38840 color rgb(255,255,255)
38850 locate 1,3
38860 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
38870 color rgb(255,255,255)
38880 'locate 4,6:print ":7"
38890 'locate 9,6:print ":8"
38900 'locate 12,6:print ":9"
38910 locate 4,6
38920 print ":7  :8  :9" + chr$(13)
38930 color rgb(255,255,255)
38940 locate 4,8
38950 print ":4  :5  :6" + chr$(13)
38960 color rgb(255,255,255)
38970 locate 4,10
38980 print ":1  :2  :3" + chr$(13)
38990 locate 4,12
39000 print "    :0"
39010 locate 12,12
39020 color rgb(0,0,255)
39030 print ":Ok"
39040 sp_on 4,0: sp_on 5,0:sp_on 6,0
39050 sp_on 7,0:sp_on 8,0:sp_on 9,0
39060 sp_on 10,0:sp_on 11,0:sp_on 12,0
39070 sp_on 13,0:sp_on 14,1
39080 Buka_Input_Seireki2:
39090 key$="":bg=0:y=0:y2=0:bg2=0:
39100 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
39110 key$ = inkey$
39120 bg = strig(1)
39130 y = stick(1)
39140 y2 = stick(0)
39150 bg2=strig(0)
39160 pause 5
39170 wend
39180 '十字キー　ここから
39190 '上の矢印　または、十字キー上
39200 if ((y = -1) or (key$ = chr$(30))) then
39210 select case No
39220 'No=-1:okのとき:初期の状態
39230 '0kボタンから３に移動
39240 '上に行く 処理
39250 case -1:
39260 No=3:sp_on 12,1:sp_on 14,0
39270 pause 200:goto Buka_Input_Seireki2:
39280 '選択肢:3
39290 '3ボタンから 6に移動
39300 case 3:
39310 No=6:sp_on 12,0:sp_on 11,1
39320 pause 200:goto Buka_Input_Seireki2:
39330 '6ボタンから ９に移動
39340 case 6:
39350 No=9:sp_on 10,1:sp_on 11,0
39360 pause 200:goto Buka_Input_Seireki2:
39370 '6ボタンから ９に移動　ここまで
39380 '9で上を押して何もしない
39390 case 9:
39400 '何もしない
39410 No=9
39420 pause 200:goto Buka_Input_Seireki2:
39430 '9で上を押しても何もしない　ここまで
39440 '上　 0ボタンから2ボタン
39450 'sp_on 6,1:1
39460 'sp_on 8,1:5
39470 'sp_on 7,1:7
39480 case 0:
39490 No=2:sp_on 13,0:sp_on 9,1:
39500 pause 200:goto Buka_Input_Seireki2:
39510 '上  0ボタンから2ボタン　ここまで
39520 '2から５になる 上
39530 case 2:
39540 No=5:sp_on 8,1:sp_on 9,0:
39550 pause 200:goto Buka_Input_Seireki2:
39560 case 5:
39570 No=8:sp_on 7,1:sp_on 8,0
39580 pause 200:goto Buka_Input_Seireki2:
39590 case 8:
39600 pause 200:goto Buka_Input_Seireki2:
39610 case 1:
39620 No=4:sp_on 5,1:sp_on 6,0
39630 pause 200:goto Buka_Input_Seireki2:
39640 case 4:
39650 No=7:sp_on 4,1:sp_on 5,0
39660 pause 200:goto Buka_Input_Seireki2:
39670 case 7:
39680 pause 200:goto Buka_Input_Seireki2:
39690 end select
39700 endif
39710 '左３　ここまで
39720 '下の矢印
39730 '中央 2
39740 if ((y=1) or (key$ = chr$(31))) then
39750 select case No
39760 '9から６に下げる
39770 case 9:
39780 No=6:sp_on 11,1:sp_on 10,0
39790 pause 200:goto Buka_Input_Seireki2:
39800 '6から３に下げる
39810 case 6:
39820 No=3:sp_on 12,1:sp_on 11,0
39830 pause 200:goto Buka_Input_Seireki2:
39840 '3から０ｋに変える
39850 case 3:
39860 No=-1:sp_on 14,1:sp_on 12,0
39870 pause 200:goto Buka_Input_Seireki2:
39880 'Okから下のボタンを押しても何もしない
39890 case -1:
39900 pause 200:goto Buka_Input_Seireki2:
39910 case 8:
39920 No=5:sp_on 8,1:sp_on 7,0
39930 pause 200:goto Buka_Input_Seireki2:
39940 case 5:
39950 No=2:sp_on 9,1:sp_on 8,0
39960 pause 200:goto Buka_Input_Seireki2:
39970 case 2:
39980 No=0:sp_on 13,1:sp_on 9,0
39990 pause 200:goto Buka_Input_Seireki2:
40000 case 0:
40010 pause 200:goto Buka_Input_Seireki2:
40020 case 7:
40030 No=4:sp_on 5,1:sp_on 4,0
40040 pause 200:goto Buka_Input_Seireki2:
40050 case 4:
40060 No=1:sp_on 6,1:sp_on 5,0
40070 pause 200:goto Buka_Input_Seireki2:
40080 case 1:
40090 pause 200:goto Buka_Input_Seireki2:
40100 end select
40110 endif
40120 '左へボタン 十字キー　左　or 　カーソル左
40130 if ((y2 = -1) or (key$ = chr$(29))) then
40140 select case No
40150 'Ok ボタン  Okから　左　０に行く
40160 case -1:
40170 No=0:sp_on 13,1:sp_on 14,0
40180 pause 200:goto Buka_Input_Seireki2:
40190 '0 ボタン  左　何もしない
40200 case 0:
40210 pause 200:goto Buka_Input_Seireki2:
40220 case 3:
40230 No=2:sp_on 9,1:sp_on 12,0:
40240 pause 200:goto Buka_Input_Seireki2:
40250 case 2:
40260 No=1:sp_on 6,1:sp_on 9,0:
40270 pause 200:goto Buka_Input_Seireki2:
40280 case 1:
40290 pause 200:goto Buka_Input_Seireki2:
40300 case 6:
40310 No=5:sp_on 8,1:sp_on 11,0
40320 pause 200:goto Buka_Input_Seireki2:
40330 case 5:
40340 No=4:sp_on 5,1:sp_on 8,0
40350 pause 200:goto Buka_Input_Seireki2:
40360 case 4:
40370 pause 200:goto Buka_Input_Seireki2:
40380 case 9:
40390 No=8:sp_on 7,1:sp_on 10,0
40400 pause 200:goto Buka_Input_Seireki2:
40410 case 8:
40420 No=7:sp_on 4,1:sp_on 7,0
40430 pause 200:goto Buka_Input_Seireki2:
40440 case 7:
40450 pause 200:goto Buka_Input_Seireki2:
40460 end select
40470 endif
40480 '右  十字キー　右　or カーソル　右
40490 if ((y2 = 1) or (key$ = chr$(28))) then
40500 select case No
40510 '0ボタンからokボタン右に移動
40520 case 0:
40530 No=-1:sp_on 14,1:sp_on 13,0
40540 pause 200:goto Buka_Input_Seireki2:
40550 '0ボタンからokボタン 右に移動　ここまで
40560 'OKボタンで右を押して何もしない
40570 case -1:
40580 pause 200:goto Buka_Input_Seireki2:
40590 case 1:
40600 No=2:sp_on 9,1:sp_on 6,0
40610 pause 200:goto Buka_Input_Seireki2:
40620 case 2:
40630 No=3:sp_on 12,1:sp_on 9,0
40640 pause 200:goto Buka_Input_Seireki2:
40650 case 3:
40660 pause 200:goto Buka_Input_Seireki2:
40670 case 4:
40680 No=5:sp_on 8,1:sp_on 5,0
40690 pause 200:goto Buka_Input_Seireki2:
40700 case 5:
40710 No=6:sp_on 11,1:sp_on 8,0
40720 pause 200:goto Buka_Input_Seireki2:
40730 case 7:
40740 No=8:sp_on 7,1:sp_on 4,0
40750 pause 200:goto Buka_Input_Seireki2:
40760 case 8:
40770 No=9:sp_on 10,1:sp_on 7,0
40780 pause 200:goto Buka_Input_Seireki2:
40790 case 9:
40800 pause 200:goto Buka_Input_Seireki2:
40810 case 6:
40820 pause 200:goto Buka_Input_Seireki2:
40830 end select
40840 'Okから右ボタンを押して何もしない ここまで
40850 endif
40860 '十字キー　ここまで
40870 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
40880 'ここからコメント
40890 '右の丸ボタン決定を押した数:count
40900 'if ((bg=2) or (key$=chr$(13))) then
40910 'select case count
40920 'case 0:
40930 'count=1
40940 'if (No = -1) then
40950 'count = 0
40960 'Okボタンを押したとき
40970 '
40980 'goto Buka_Input_Seireki2:
40990 'else
41000 'Okボタン以外が押されたとき
41010 'if (No >= 1 and No <= 2) then
41020 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
41030 'buf_buka_year = No
41040 'buf_Buka_Born_Day(0) = bufyear
41050 'locate 2,3
41060 'color rgb(255,255,255)
41070 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41080 'goto Buka_Input_Seireki2:
41090 'else
41100 'count=0
41110 'ui_msg"数字が範囲外になります。"
41120 'buf_buka_year$ ="":buf_buka_year=0
41130 'goto Buka_Input_Seireki2:
41140 'endif
41150 'endif
41160 'case 1:
41170 'count = 2
41180 'if (No = -1) then
41190 'count = 1
41200 'goto Buka_Input_Seireki2:
41210 'else
41220 'b = val(buf_buka_year$)
41230 'buf_buka_year = b * 10 + No
41240 'buf_buka_year$ = str$(buf_buka_year)
41250 'buf_Buka_Born_Day(0) = bufyear
41260 'locate 1,3
41270 'color rgb(255,255,255)
41280 'print "                                                                "
41290 'locate 1,3
41300 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41310 'if (No = -1) then
41320 'count=1
41330 'goto Buka_Input_Seireki2:
41340 'endif
41350 'case 2:
41360 'count = 3
41370 'if (No = -1) then
41380 'count = 2
41390 'buf_Buka_Born_Day(0)=bufyear
41400 'goto Buka_Input_Seireki2:
41410 'else
41420 'b = val(buf_buka_year$)
41430 'buf_buka_year = b*10 + No
41440 'buf_buka_year$ = str$(buf_buka_year)
41450 'locate 1,3
41460 'color rgb(255,255,255)
41470 'print "                                        "
41480 'locate 1,3
41490 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
41500 'goto Buka_Input_Seireki2:
41510 'endif
41520 'case 3:
41530 'count=4
41540 'if (No = -1) then
41550 'count=3
41560 'goto Buka_Input_Seireki2:
41570 'else
41580 'b = buf_buka_year
41590 'buf_buka_year = b * 10 + No
41600 'buf_buka_year$=str$(buf_buka_year)
41610 'locate 1,3
41620 'color RGB(255,255,255)
41630 'print "                                      "
41640 'locate 1,3
41650 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
41660 'buf_year=val(buf_year$)
41670 'year=val(buf_year$)
41680 'if (No=-1) then
41690 'goto Input_Born_Month:
41700 'else
41710 'goto Buka_Input_Seireki2:
41720 'endif
41730 'case 4:
41740 'bufyear=buf_year
41750 'if (No=-1) then
41760 'buf_year = val(buf_year$)
41770 'bufyear = buf_year
41780 'sp_on 14,0
41790 'goto Buka_Input_Born_Month:
41800 'else
41810 'goto Buka_Input_Seireki2:
41820 'endif
41830 'end select
41840 'endif
41850 'if (bg2 = 2) then
41860 'select case count2
41870 'case 0:
41880 'if (No = -1) then
41890 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
41900 'count=0
41910 'locate 1,3
41920 'color rgb(255,255,255)
41930 'print "                                      "
41940 'locate 1,3
41950 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
41960 'goto Buka_Input_Seireki2:
41970 'else
41980 '(buf_year=0) then
41990 'buf_buka_year=0:buf_buka_year$="****"
42000 'goto Buka_Input_Seireki2:
42010 'endif
42020 'endif
42030 'end select
42040 'endif
42050 'end
42060 'ここまでコメント
42070 '================================================================
42080 if ((bg=2) or (key$=chr$(13))) then
42090 select case count
42100 case 0:
42110 count = 1
42120 if (No=-1) then
42130 count = 0
42140 buf_Buka_Born_Day(0) = No
42150 'Okボタンを押したとき
42160 goto Buka_Input_Seireki2:
42170 else
42180 'Okボタン以外が押されたとき
42190 if (No>=1 and No<=2) then
42200 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
42210 buf_buka_year = No
42220 buf_Buka_Born_Day(0) = No
42230 locate 1,3
42240 color rgb(255,255,255)
42250 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42260 goto Buka_Input_Seireki2:
42270 else
42280 count=0
42290 ui_msg"数字が範囲外になります。"
42300 buf_buka_year$="":buf_buka_year=0
42310 goto Buka_Input_Seireki2:
42320 endif
42330 endif
42340 case 1:
42350 count = 2
42360 if (No = -1) then
42370 count = 1
42380 goto Buka_Input_Seireki2:
42390 else
42400 'b = val(buf_buka_year$)
42410 buf_buka_year = a * 10 + No
42420 b=buf_buka_year
42430 buf_buka_year$ = str$(buf_buka_year)+"**"
42440 buf_Buka_Born_Day(0)=buf_buka_year
42450 locate 1,3
42460 color rgb(255,255,255)
42470 print "                                                                "
42480 locate 1,3
42490 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
42500 'if (No = -1) then
42510 'count=1
42520 goto Buka_Input_Seireki2:
42530 endif
42540 case 2:
42550 count=3
42560 if (No=-1) then
42570 count =2:No=0
42580 goto Buka_Input_Seireki2:
42590 else
42600 'b = val(buf_buka_year$)
42610 buf_buka_year = b * 10 + No
42620 c = buf_buka_year
42630 buf_buka_year$ = str$(buf_buka_year) + "*"
42640 buf_Buka_Born_Day(0) = buf_buka_year
42650 locate 1,3
42660 color rgb(255,255,255)
42670 print "                                        "
42680 locate 1,3
42690 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42700 goto Buka_Input_Seireki2:
42710 endif
42720 case 3:
42730 count=4
42740 if (No = -1) then
42750 'count=3:No=0
42760 goto Buka_Input_Seireki2:
42770 else
42780 'b = val(buf_buka_year$)
42790 buf_buka_year=c * 10 + No
42800 buf_buka_year$=str$(buf_buka_year)
42810 buf_Buka_Born_Day(0)=buf_buka_year
42820 locate 1,3
42830 color RGB(255,255,255)
42840 print "                                      "
42850 locate 1,3
42860 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
42870 buf_buka_year=val(buf_buka_year$)
42880 'year=val(buf_year$)
42890 'if (No=-1) then
42900 'goto Input_Born_Month:
42910 'else
42920 goto Buka_Input_Seireki2:
42930 endif
42940 case 4:
42950 'bufyear=buf_year
42960 if (No = -1) then
42970 buf_buka_year = val(buf_buka_year$)
42980 buf_Buka_Born_Day(0)=buf_buka_year
42990 sp_on 14,0
43000 goto Buka_Input_Born_Month:
43010 else
43020 goto Buka_Input_Seireki2:
43030 endif
43040 end select
43050 endif
43060 '================================================================
43070 'ここにコピーする。
43080 '================================================================
43090 'Input"部下の生れた年代(4桁,〜2025年):",year
43100 'if year > 2025 then goto Jyoushi_Input_Seireki:
43110 'if year = 123 then cls 3:cls 4:goto Main_Screen:
43120 '"4桁目"
43130 'bufyear4 = fix(year / 1000)
43140 '"3桁目"
43150 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
43160 '"2桁目"
43170 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
43180 '"1桁目"
43190 'bufyear1 = fix((year - ((bufyear4*
43200 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
43210 '1.部下の生まれた年代'
43220 '2.部下の生まれた月'
43230 Buka_Input_Born_Month:
43240 cls 3:play "":count=0:count2=0
43250 'No=-1:Okのとき
43260 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
43270 for i=0 to 1
43280 buf_month(i)=0
43290 next i
43300 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
43310 gload Gazo$ + "Screen1.png",0,0,0
43320 gload Gazo$ + "downscreen.png",0,0,800
43330 'Init"kb:4"
43340 '音声ファイル再生 2023.06.07
43350 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
43360 font 48
43370 locate 0,1
43380 '文字色：黒　 color rgb(0,0,0)
43390 '文字色:白
43400 color rgb(255,255,255)
43410 print "部下の生まれた月を入れて下さい" + chr$(13)
43420 '文字色:白
43430 color rgb(255,255,255)
43440 locate 1,3
43450 '文字色:白
43460 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
43470 color rgb(255,255,255)
43480 'locate 4,6:print ":7"
43490 'locate 9,6:print ":8"
43500 'locate 12,6:print ":9"
43510 locate 4,6
43520 '文字色:赤
43530 print ":7  :8  :9" + chr$(13)
43540 color rgb(255,255,255)
43550 locate 4,8
43560 print ":4  :5  :6" + chr$(13)
43570 color rgb(255,255,255)
43580 locate 4,10
43590 print ":1  :2  :3" + chr$(13)
43600 locate 4,12
43610 print "    :0"
43620 locate 12,12
43630 color rgb(0,0,255)
43640 print ":Ok"
43650 sp_on 4,0: sp_on 5,0:sp_on 6,0
43660 sp_on 7,0:sp_on 8,0:sp_on 9,0
43670 sp_on 10,0:sp_on 11,0:sp_on 12,0
43680 sp_on 13,0:sp_on 14,1
43690 Buka_Input_Born_Month2:
43700 key$="":bg=0:y=0:y2=0:bg2=0
43710 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
43720 key$ = inkey$
43730 bg = strig(1)
43740 y = stick(1)
43750 y2 = stick(0)
43760 bg2 = strig(0)
43770 pause 5
43780 wend
43790 '十字キー　ここから
43800 '上の矢印　または、十字キー上
43810 if ((y = -1) or (key$ = chr$(30))) then
43820 select case No
43830 'No=-1:okのとき:初期の状態
43840 '0kボタンから３に移動
43850 '上に行く 処理
43860 case -1:
43870 No=3:sp_on 12,1:sp_on 14,0
43880 pause 200:goto Buka_Input_Born_Month2:
43890 '選択肢:3
43900 '3ボタンから 6に移動
43910 case 3:
43920 No=6:sp_on 12,0:sp_on 11,1
43930 pause 200:goto Buka_Input_Born_Month2:
43940 '6ボタンから ９に移動
43950 case 6:
43960 No=9:sp_on 10,1:sp_on 11,0
43970 pause 200:goto Buka_Input_Born_Month2:
43980 '6ボタンから ９に移動　ここまで
43990 '9で上を押して何もしない
44000 case 9:
44010 '何もしない
44020 No=9
44030 pause 200:goto Buka_Input_Born_Month2:
44040 '9で上を押しても何もしない　ここまで
44050 '上　 0ボタンから2ボタン
44060 'sp_on 6,1:1
44070 'sp_on 8,1:5
44080 'sp_on 7,1:7
44090 case 0:
44100 No=2:sp_on 13,0:sp_on 9,1:
44110 pause 200:goto Buka_Input_Born_Month2:
44120 '上  0ボタンから2ボタン　ここまで
44130 '2から５になる 上
44140 case 2:
44150 No=5:sp_on 8,1:sp_on 9,0:
44160 pause 200:goto Buka_Input_Born_Month2:
44170 case 5:
44180 No=8:sp_on 7,1:sp_on 8,0
44190 pause 200:goto Buka_Input_Born_Month2:
44200 case 8:
44210 pause 200:goto Buka_Input_Born_Month2:
44220 case 1:
44230 No=4:sp_on 5,1:sp_on 6,0
44240 pause 200:goto Buka_Input_Born_Month2:
44250 case 4:
44260 No=7:sp_on 4,1:sp_on 5,0
44270 pause 200:goto Buka_Input_Born_Month2:
44280 case 7:
44290 pause 200:goto Buka_Input_Born_Month2:
44300 end select
44310 endif
44320 '左３　ここまで
44330 '下の矢印
44340 '中央 2
44350 if ((y=1) or (key$ = chr$(31))) then
44360 select case No
44370 '9から６に下げる
44380 case 9:
44390 No=6:sp_on 11,1:sp_on 10,0
44400 pause 200:goto Buka_Input_Born_Month2:
44410 '6から３に下げる
44420 case 6:
44430 No=3:sp_on 12,1:sp_on 11,0
44440 pause 200:goto Buka_Input_Born_Month2:
44450 '3から０ｋに変える
44460 case 3:
44470 No=-1:sp_on 14,1:sp_on 12,0
44480 pause 200:goto Buka_Input_Born_Month2:
44490 'Okから下のボタンを押しても何もしない
44500 case -1:
44510 pause 200:goto Buka_Input_Born_Month2:
44520 case 8:
44530 No=5:sp_on 8,1:sp_on 7,0
44540 pause 200:goto Buka_Input_Born_Month2:
44550 case 5:
44560 No=2:sp_on 9,1:sp_on 8,0
44570 pause 200:goto Buka_Input_Born_Month2:
44580 case 2:
44590 No=0:sp_on 13,1:sp_on 9,0
44600 pause 200:goto Buka_Input_Born_Month2:
44610 case 0:
44620 pause 200:goto Buka_Input_Born_Month2:
44630 case 7:
44640 No=4:sp_on 5,1:sp_on 4,0
44650 pause 200:goto Buka_Input_Born_Month2:
44660 case 4:
44670 No=1:sp_on 6,1:sp_on 5,0
44680 pause 200:goto Buka_Input_Born_Month2:
44690 case 1:
44700 pause 200:goto Buka_Input_Born_Month2:
44710 end select
44720 endif
44730 '左へボタン 十字キー　左　or 　カーソル左
44740 if ((y2 = -1) or (key$ = chr$(29))) then
44750 select case No
44760 'Ok ボタン  Okから　左　０に行く
44770 case -1:
44780 No=0:sp_on 13,1:sp_on 14,0
44790 pause 200:goto Buka_Input_Born_Month2:
44800 '0 ボタン  左　何もしない
44810 case 0:
44820 pause 200:goto Buka_Input_Born_Month2:
44830 case 3:
44840 No=2:sp_on 9,1:sp_on 12,0:
44850 pause 200:goto Buka_Input_Born_Month2:
44860 case 2:
44870 No=1:sp_on 6,1:sp_on 9,0:
44880 pause 200:goto Buka_Input_Born_Month2:
44890 case 1:
44900 pause 200:goto Buka_Input_Born_Month2:
44910 case 6:
44920 No=5:sp_on 8,1:sp_on 11,0
44930 pause 200:goto Buka_Input_Born_Month2:
44940 case 5:
44950 No=4:sp_on 5,1:sp_on 8,0
44960 pause 200:goto Buka_Input_Born_Month2:
44970 case 4:
44980 pause 200:goto Buka_Input_Born_Month2:
44990 case 9:
45000 No=8:sp_on 7,1:sp_on 10,0
45010 pause 200:goto Buka_Input_Born_Month2:
45020 case 8:
45030 No=7:sp_on 4,1:sp_on 7,0
45040 pause 200:goto Buka_Input_Born_Month2:
45050 case 7:
45060 pause 200:goto Buka_Input_Born_Month2:
45070 end select
45080 endif
45090 '右  十字キー　右　or カーソル　右
45100 if ((y2 = 1) or (key$ = chr$(28))) then
45110 select case No
45120 '0ボタンからokボタン右に移動
45130 case 0:
45140 No=-1:sp_on 14,1:sp_on 13,0
45150 pause 200:goto Buka_Input_Born_Month2:
45160 '0ボタンからokボタン 右に移動　ここまで
45170 'OKボタンで右を押して何もしない
45180 case -1:
45190 pause 200:goto Buka_Input_Born_Month2:
45200 case 1:
45210 No=2:sp_on 9,1:sp_on 6,0
45220 pause 200:goto Buka_Input_Born_Month2:
45230 case 2:
45240 No=3:sp_on 12,1:sp_on 9,0
45250 pause 200:goto Buka_Input_Born_Month2:
45260 case 3:
45270 pause 200:goto Buka_Input_Born_Month2:
45280 case 4:
45290 No=5:sp_on 8,1:sp_on 5,0
45300 pause 200:goto Buka_Input_Born_Month2:
45310 case 5:
45320 No=6:sp_on 11,1:sp_on 8,0
45330 pause 200:goto Buka_Input_Born_Month2:
45340 case 7:
45350 No=8:sp_on 7,1:sp_on 4,0
45360 pause 200:goto Buka_Input_Born_Month2:
45370 case 8:
45380 No=9:sp_on 10,1:sp_on 7,0
45390 pause 200:goto Buka_Input_Born_Month2:
45400 case 9:
45410 pause 200:goto Buka_Input_Born_Month2:
45420 case 6:
45430 pause 200:goto Buka_Input_Born_Month2:
45440 end select
45450 'Okから右ボタンを押して何もしない ここまで
45460 endif
45470 '十字キー　ここまで
45480 '右の丸ボタン　決定キー
45490 if ((bg=2) or (key$=chr$(13))) then
45500 select case count
45510 case 0:
45520 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
45530 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
45540 locate 1,3
45550 color RGB(255,255,255)
45560 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
45570 goto Buka_Input_Born_Month2:
45580 case 1:
45590 count = 2:buf_buka_month=a*10+No
45600 if (No = -1) then
45610 'count=0
45620 month=buf_buka_month
45630 buf_buka_month=val(buf_buka_Month$)
45640 month=buf_buka_month
45650 '生まれた日に飛ぶ
45660 goto Buka_Input_Born_Day:
45670 else
45680 buf_buka_month = a * 10 + No
45690 buf_buka_Month$ = str$(buf_buka_month)
45700 buf_Buka_Born_Day(1) = buf_buka_month
45710 locate 1,3
45720 color Rgb(255,255,255)
45730 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
45740 goto Buka_Input_Born_Month2:
45750 endif
45760 case 2:
45770 count=3
45780 'c= val(buf_Month$)
45790 'buf_month = c*10 + No
45800 'buf_Month$ = str$(buf_month)
45810 'locate 2,3
45820 'print "部下の生まれた月(1月～12月):";buf_Month$
45830 'goto Buka_Input_Born_Month2:
45840 'case 3:
45850 'count=4
45860 'b=val(buf_month$)
45870 'buf_month=c*10+No
45880 'buf_Month$=str$(buf_month)
45890 'locate 2,3
45900 'print "部下の生まれた月(1月～12月):";buf_Month$
45910 'buf_month=val(buf_Month$)
45920 'year=val(buf_year$)
45930 if (No=-1) then
45940 goto Buka_Input_Born_Day:
45950 else
45960 goto Input_Born_Month2:
45970 endif
45980 'case 4:
45990 'bufyear=buf_year
46000 'if (No=-1) then
46010 'buf_month = val(buf_Month$)
46020 'month = buf_month
46030 'sp_on 14,0
46040 'goto Input_Born_Day:
46050 'else
46060 'goto Input_Born_Month2:
46070 'endif
46080 end select
46090 endif
46100 '左の丸ボタン　キャンセル
46110 if (bg2=2) then
46120 select case count2
46130 case 0:
46140 if (No = -1) then
46150 buf_buka_month=0:buf_buka_Month$="**"
46160 count=0
46170 goto rewrite2:
46180 else
46190 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
46200 buf_month=0:buf_Month$="**"
46210 locate 2,3
46220 color rgb(255,255,255)
46230 print "                                       "
46240 goto rewrite2:
46250 if (No>12) then
46260 ui_msg"値が範囲外です。"
46270 goto rewrite2:
46280 endif
46290 endif
46300 endif
46310 rewrite2:
46320 locate 2,3
46330 color rgb(255,255,255)
46340 print "                                      "
46350 locate 2,3
46360 print "部下の生まれた月(1月~12月):";buf_buka_Month$
46370 goto Buka_Input_Born_Month2:
46380 end select
46390 'endif
46400 endif
46410 end
46420 '2.部下の生まれた月'
46430 '3.部下の生まれた日'
46440 '生れた日を入力
46450 Buka_Input_Born_Day:
46460 '生まれた日入力
46470 cls 3:play ""
46480 'No=-1:Okのとき
46490 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
46500 for i=0 to 1
46510 buf_day(i)=0
46520 next i
46530 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46540 gload Gazo$ + "Screen1.png",0,0,0
46550 gload Gazo$ + "downscreen.png",0,0,800
46560 'Init"kb:2"
46570 '音声ファイル再生 2023.06.07
46580 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
46590 font 48
46600 locate 0,1
46610 '文字色：黒　 color rgb(0,0,0)
46620 color rgb(255,255,255)
46630 print "部下の生まれた日を入れて下さい" + chr$(13)
46640 color rgb(255,255,255)
46650 locate 1,3
46660 print "部下の生まれた日(1日~31日):";buf_Day$
46670 color rgb(255,255,255)
46680 'locate 4,6:print ":7"
46690 'locate 9,6:print ":8"
46700 'locate 12,6:print ":9"
46710 locate 4,6
46720 print ":7  :8  :9" + chr$(13)
46730 color rgb(255,255,255)
46740 locate 4,8
46750 print ":4  :5  :6" + chr$(13)
46760 color rgb(255,255,255)
46770 locate 4,10
46780 print ":1  :2  :3" + chr$(13)
46790 locate 4,12
46800 print "    :0"
46810 locate 12,12
46820 color rgb(0,0,255)
46830 print ":Ok"
46840 sp_on 4,0: sp_on 5,0:sp_on 6,0
46850 sp_on 7,0:sp_on 8,0:sp_on 9,0
46860 sp_on 10,0:sp_on 11,0:sp_on 12,0
46870 sp_on 13,0:sp_on 14,1
46880 Buka_Input_Born_Day2:
46890 key$="":bg=0:y=0:y2=0:bg2=0
46900 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
46910 key$ = inkey$
46920 bg = strig(1)
46930 y = stick(1)
46940 y2 = stick(0)
46950 bg2 = strig(0)
46960 pause 5
46970 wend
46980 '十字キー　ここから
46990 '上の矢印　または、十字キー上
47000 if ((y = -1) or (key$ = chr$(30))) then
47010 select case No
47020 'No=-1:okのとき:初期の状態
47030 '0kボタンから３に移動
47040 '上に行く 処理
47050 case -1:
47060 No=3:sp_on 12,1:sp_on 14,0
47070 pause 200:goto Buka_Input_Born_Day2:
47080 '選択肢:3
47090 '3ボタンから 6に移動
47100 case 3:
47110 No=6:sp_on 12,0:sp_on 11,1
47120 pause 200:goto Buka_Input_Born_Day2:
47130 '6ボタンから ９に移動
47140 case 6:
47150 No=9:sp_on 10,1:sp_on 11,0
47160 pause 200:goto Buka_Input_Born_Day2:
47170 '6ボタンから ９に移動　ここまで
47180 '9で上を押して何もしない
47190 case 9:
47200 '何もしない
47210 No=9
47220 pause 200:goto Buka_Input_Born_Day2:
47230 '9で上を押しても何もしない　ここまで
47240 '上　 0ボタンから2ボタン
47250 'sp_on 6,1:1
47260 'sp_on 8,1:5
47270 'sp_on 7,1:7
47280 case 0:
47290 No=2:sp_on 13,0:sp_on 9,1:
47300 pause 200:goto Buka_Input_Born_Day2:
47310 '上  0ボタンから2ボタン　ここまで
47320 '2から５になる 上
47330 case 2:
47340 No=5:sp_on 8,1:sp_on 9,0:
47350 pause 200:goto Buka_Input_Born_Day2:
47360 case 5:
47370 No=8:sp_on 7,1:sp_on 8,0
47380 pause 200:goto Buka_Input_Born_Day2:
47390 case 8:
47400 pause 200:goto Buka_Input_Born_Day2:
47410 case 1:
47420 No=4:sp_on 5,1:sp_on 6,0
47430 pause 200:goto Buka_Input_Born_Day2:
47440 case 4:
47450 No=7:sp_on 4,1:sp_on 5,0
47460 pause 200:goto Buka_Input_Born_Day2:
47470 case 7:
47480 pause 200:goto Buka_Input_Born_Day2:
47490 end select
47500 endif
47510 '左３　ここまで
47520 '下の矢印
47530 '中央 2
47540 if ((y=1) or (key$ = chr$(31))) then
47550 select case No
47560 '9から６に下げる
47570 case 9:
47580 No=6:sp_on 11,1:sp_on 10,0
47590 pause 200:goto Buka_Input_Born_Day2:
47600 '6から３に下げる
47610 case 6:
47620 No=3:sp_on 12,1:sp_on 11,0
47630 pause 200:goto Buka_Input_Born_Day2:
47640 '3から０ｋに変える
47650 case 3:
47660 No=-1:sp_on 14,1:sp_on 12,0
47670 pause 200:goto Buka_Input_Born_Day2:
47680 'Okから下のボタンを押しても何もしない
47690 case -1:
47700 pause 200:goto Buka_Input_Born_Day2:
47710 case 8:
47720 No=5:sp_on 8,1:sp_on 7,0
47730 pause 200:goto Buka_Input_Born_Day2:
47740 case 5:
47750 No=2:sp_on 9,1:sp_on 8,0
47760 pause 200:goto Buka_Input_Born_Day2:
47770 case 2:
47780 No=0:sp_on 13,1:sp_on 9,0
47790 pause 200:goto Buka_Input_Born_Day2:
47800 case 0:
47810 pause 200:goto Buka_Input_Born_Day2:
47820 case 7:
47830 No=4:sp_on 5,1:sp_on 4,0
47840 pause 200:goto Buka_Input_Born_Day2:
47850 case 4:
47860 No=1:sp_on 6,1:sp_on 5,0
47870 pause 200:goto Buka_Input_Born_Day2:
47880 case 1:
47890 pause 200:goto Buka_Input_Born_Day2:
47900 end select
47910 endif
47920 '左へボタン 十字キー　左　or 　カーソル左
47930 if ((y2 = -1) or (key$ = chr$(29))) then
47940 select case No
47950 'Ok ボタン  Okから　左　０に行く
47960 case -1:
47970 No=0:sp_on 13,1:sp_on 14,0
47980 pause 200:goto Buka_Input_Born_Day2:
47990 '0 ボタン  左　何もしない
48000 case 0:
48010 pause 200:goto Buka_Input_Born_Day2:
48020 case 3:
48030 No=2:sp_on 9,1:sp_on 12,0:
48040 pause 200:goto Buka_Input_Born_Day2:
48050 case 2:
48060 No=1:sp_on 6,1:sp_on 9,0:
48070 pause 200:goto Buka_Input_Born_Day2:
48080 case 1:
48090 pause 200:goto Buka_Input_Born_Day2:
48100 case 6:
48110 No=5:sp_on 8,1:sp_on 11,0
48120 pause 200:goto Buka_Input_Born_Day2:
48130 case 5:
48140 No=4:sp_on 5,1:sp_on 8,0
48150 pause 200:goto Buka_Input_Born_Day2:
48160 case 4:
48170 pause 200:goto Buka_Input_Born_Day2:
48180 case 9:
48190 No=8:sp_on 7,1:sp_on 10,0
48200 pause 200:goto Buka_Input_Born_Day2:
48210 case 8:
48220 No=7:sp_on 4,1:sp_on 7,0
48230 pause 200:goto Buka_Input_Born_Day2:
48240 case 7:
48250 pause 200:goto Buka_Input_Born_Day2:
48260 end select
48270 endif
48280 '右  十字キー　右　or カーソル　右
48290 if ((y2 = 1) or (key$ = chr$(28))) then
48300 select case No
48310 '0ボタンからokボタン右に移動
48320 case 0:
48330 No=-1:sp_on 14,1:sp_on 13,0
48340 pause 200:goto Buka_Input_Born_Day2:
48350 '0ボタンからokボタン 右に移動　ここまで
48360 'OKボタンで右を押して何もしない
48370 case -1:
48380 pause 200:goto Buka_Input_Born_Day2:
48390 case 1:
48400 No=2:sp_on 9,1:sp_on 6,0
48410 pause 200:goto Buka_Input_Born_Day2:
48420 case 2:
48430 No=3:sp_on 12,1:sp_on 9,0
48440 pause 200:goto Buka_Input_Born_Day2:
48450 case 3:
48460 pause 200:goto Buka_Input_Born_Day2:
48470 case 4:
48480 No=5:sp_on 8,1:sp_on 5,0
48490 pause 200:goto Buka_Input_Born_Day2:
48500 case 5:
48510 No=6:sp_on 11,1:sp_on 8,0
48520 pause 200:goto Buka_Input_Born_Day2:
48530 case 7:
48540 No=8:sp_on 7,1:sp_on 4,0
48550 pause 200:goto Buka_Input_Born_Day2:
48560 case 8:
48570 No=9:sp_on 10,1:sp_on 7,0
48580 pause 200:goto Buka_Input_Born_Day2:
48590 case 9:
48600 pause 200:goto Buka_Input_Born_Day2:
48610 case 6:
48620 pause 200:goto Buka_Input_Born_Day2:
48630 end select
48640 'Okから右ボタンを押して何もしない ここまで
48650 endif
48660 '十字キー　ここまで
48670 '右の丸ボタンを押したとき
48680 if ((bg = 2) or (key$ = chr$(13))) then
48690 'count :決定ボタンを押した回数
48700 select case (count)
48710 '1桁目入力
48720 case 0:
48730 count = 1:
48740 if (No = -1) then
48750 '1桁目　OKでは何もしない
48760 'goto check:
48770 No=0
48780 else
48790 'ok以外のボタンを押したとき
48800 buf_buka_day = No:buf_buka_Day$ = str$(No)
48810 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
48820 buf_buka_Day$ = str$(No) + "*"
48830 endif
48840 a=No
48850 buf_Buka_Born_Day(2) = buf_buka_day
48860 locate 1,3
48870 print"                                      "
48880 color RGB(255,255,255)
48890 locate 1,3
48900 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
48910 endif
48920 check2:
48930 if (No >= 1 and No <= 9) then
48940 sp_on 14,0
48950 goto Buka_Input_Born_Day2:
48960 else
48970 sp_on 14,0
48980 goto Result_Business_Aisyou:
48990 end
49000 endif
49010 case 1:
49020 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
49030 count = 2:
49040 'locate 2,3
49050 'color RGB(255,255,255)
49060 'print "生まれた日(1日~31日):";buf_Day$
49070 'Okボタンを押したときの処理
49080 '入力値　10未満のとき
49090 'c = buf_day
49100 if (No = -1) then
49110 'c=buf_day
49120 ' buf_day = c
49130 'buf_Day$ = str$(buf_day)
49140 '10以下のとき
49150 No=0
49160 if (buf_day < 10) then
49170 sp_on 14,0
49180 goto Result_Business_Aisyou:
49190 end
49200 endif
49210 else
49220 sp_on 14,0
49230 'c=No
49240 buf_buka_day = a * 10 + No
49250 buf_buka_Day$ = str$(buf_buka_day)
49260 buf_Buka_Born_Day(2) = buf_buka_day
49270 locate 0,3
49280 color Rgb(255,255,255)
49290 print "                                       "
49300 locate 1,3
49310 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
49320 goto Buka_Input_Born_Day2:
49330 endif
49340 '生まれた日　2桁目の数字　or 1桁の数字 + ok
49350 case 2:
49360 count=0
49370 'c=val(buf_Day$)
49380 'buf_day=c*10+No
49390 'buf_Day$=str$(buf_day)
49400 'day=buf_day
49410 'locate 2,3
49420 'print "生まれた日(1日〜31日):";buf_Day$
49430 'No=-1:ok ボタンを押したとき
49440 if (No = -1) then No=0
49450 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
49460 sp_on 14,0
49470 goto Result_Business_Aisyou:
49480 else
49490 goto Buka_Input_Born_Day2:
49500 endif
49510 'Okボタン以外を押したとき
49520 else
49530 c=val(buf_buka_Day$)
49540 buf_buka_day = c * 10 + No
49550 buf_buka_Day$ = str$(buf_buka_day)
49560 locate 1,3
49570 print "                "
49580 locate 1,3
49590 print "生まれた日(1日~31日):"+buf_buka_Day$
49600 goto Buka_Input_Born_Day2:
49610 'endif
49620 case 3:
49630 count=4
49640 'c=val(buf_day$)
49650 'buf_day=c*10+No
49660 'buf_day$=str$(buf_day)
49670 'locate 2,3
49680 'print "生まれた日を入れてください:";buf_day$
49690 'year=val(buf_year$)
49700 if (No = -1) then
49710 'goto Buka_Input_Born_Day:
49720 sp_on 14,0:
49730 goto complate_jyoushi:
49740 else
49750 goto Buka_Input_Born_Month2:
49760 endif
49770 'case 4:
49780 'bufyear=buf_year
49790 'if (No=-1) then
49800 'buf_day = val(buf_day$)
49810 'bufday = buf_day
49820 'sp_on 14,0
49830 goto complate_jyoushi:
49840 'else
49850 'goto Buka_Input_Born_Day2:
49860 'endif
49870 end select
49880 endif
49890 if (bg2=2) then
49900 select case count2
49910 case 0:
49920 if (No=-1) then
49930 'buf_day=0:buf_Day$="**"
49940 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
49950 count=0
49960 buf_buka_day=0:buf_buka_Day$="**"
49970 goto rewrite_day3:
49980 else
49990 buf_buka_day=0:buf_buka_Day$="**"
50000 ui_msg"値が範囲外です"
50010 endif
50020 goto rewrite_day3:
50030 else
50040 goto rewrite_day3:
50050 endif
50060 rewrite_day3:
50070 locate 2,3
50080 color rgb(255,255,255)
50090 print "                                      "
50100 locate 1,3
50110 print "生まれた日(1日~31日):"+buf_buka_Day$
50120 goto Buka_Input_Born_Day2:
50130 end select
50140 endif
50150 '3.部下の生まれた日'
50160 '部下'
50170 '--------------------------------------------'
50180 'ビジネの相性　結果表示
50190 Result_Business_Aisyou:
50200 cls 3:init "kb:4"
50210 a=0:b=0:c=0:d=0:e=0:f=0
50220 bg=0:key$=""
50230 gload Gazo$ + "Screen1.png",0,0,0
50240 gload Gazo$ + "downscreen.png",0,0,800
50250 sp_on 14,0
50260 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
50270 buf_Buka = Kabara_Num(d,e,f)
50280 a_2 = buf_Buka
50290 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
50300 locate 0,1
50310 color rgb(255,0,0)
50320 print "●.相性診断結果１"
50330 locate 0,4:
50340 color rgb(255,255,255)
50350 print "1.上司の名前:";buffer_name$(0)
50360 locate 0,6
50370 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
50380 locate 0,8
50390 print "2.部下の名前:";buffer_name$(1)
50400 locate 0,10
50410 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
50420 locate 0,12
50430 print "3.上司と部下の相性:";Result_Aisyou$
50440 locate 1,15
50450 color rgb(0,0,0)
50460 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
50470 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
50480 bg = strig(1)
50490 key$ = inkey$
50500 bg2 = strig(0)
50510 pause 5
50520 wend
50530 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
50540 if (bg2 = 2) then
50550 cls 3:goto Business_Aishou_Input_1_parson:
50560 endif
50570 'ビジネスの相性占い　結果2　説明
50580 Result_Business_Aisyou2:
50590 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
50600 gload Gazo$ + "Screen1.png",0,0,0
50610 locate 0,1
50620 color rgb(255,0,0)
50630 print "●.相性の説明"
50640 color rgb(255,255,255)
50650 locate 0,4
50660 print "相性:";Result_Aisyou$
50670 locate 0,6:
50680 print "相性の説明:";buf$
50690 locate 0,15
50700 color rgb(0,0,0)
50710 print "右の丸ボタン:トップ,左のボタン:前の画面"
50720 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
50730 bg = strig(1)
50740 bg2 = strig(0)
50750 key$ = inkey$
50760 pause 5
50770 wend
50780 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
50790 if ((bg2 = 2)) then goto Result_Business_Aisyou:
50800 '自作関数 ここから
50810 func read_explain$(ba$)
50820 d$=""
50830 buf_String$=""
50840 if ba$="A" then
50850 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
50860 line input #1,a$
50870 a1$=mid$(a$,1,12)
50880 a2$=mid$(a$,13,17)
50890 a3$=mid$(a$,30,17)
50900 a4$=mid$(a$,47,18)
50910 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
50920 buf_String$ = a5$
50930 close #1
50940 endif
50950 if ba$="B"  then
50960 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
50970 line input #1,b$
50980 b1$=mid$(b$,1,15)
50990 b2$=mid$(b$,16,21)
51000 'b3$=mid$(b$,33,3)
51010 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
51020 buf_String$ = b4$
51030 close #1
51040 endif
51050 if ba$="C"  then
51060 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
51070 line input #1,c$
51080 c1$ = Mid$(c$,1,15)
51090 c2$ = Mid$(c$,16,33)
51100 c3$ = c1$ + chr$(13) + c2$
51110 buf_String$ = c3$
51120 close #1
51130 endif
51140 if ba$="D" then
51150 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
51160 line input #1,d$
51170 d1$=mid$(d$,1,15)
51180 d2$=mid$(d$,16,22)
51190 d3$=mid$(d$,38,7)
51200 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
51210 buf_String$ = d4$
51220 close #1
51230 endif
51240 if ba$="E"  then
51250 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
51260 line input #1,e$
51270 e1$=Mid$(e$,1,16)
51280 e2$=Mid$(e$,17,16)
51290 e3$=Mid$(e$,33,12)
51300 e4$=Mid$(e$,45,17)
51310 e5$=Mid$(e$,62,17)
51320 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
51330 buf_String$ = e6$
51340 close #1
51350 endif
51360 if ba$="F" then
51370 '改行を追加して表示を調整
51380 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
51390 line input #1,f$
51400 f1$=Mid$(f$,1,15)
51410 f2$=Mid$(f$,16,12)
51420 buf_String$ = f1$+chr$(13)+f2$
51430 close #1
51440 endif
51450 if ba$="G" then
51460 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
51470 line input #1,g$
51480 g1$ = mid$(g$,1,16)
51490 g2$ = mid$(g$,17,18)
51500 g3$ = mid$(g$,36,21)
51510 g4$ = mid$(g$,56,6)
51520 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
51530 buf_String$ = g5$
51540 close #1
51550 endif
51560 if ba$="H" then
51570 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
51580 line input #1,h$
51590 h1$=Mid$(h$,1,17)
51600 h2$=Mid$(h$,18,21)
51610 h3$=Mid$(h$,39,20)
51620 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
51630 buf_String$ = h$
51640 close #1
51650 endif
51660 if ba$ = "I" then
51670 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
51680 line input #1,i$
51690 i1$=Mid$(i$,1,10)
51700 i2$=Mid$(i$,11,13)
51710 i3$=Mid$(i$,25,16)
51720 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
51730 buf_String$ = i$
51740 close #1
51750 endif
51760 buffer$ = buf_String$
51770 endfunc buffer$
51780 'カバラ数（数秘番号を求める）
51790 func Kabara_Num(buffer_Year,month,day)
51800 '=============================
51810 'a1:4桁のうちの1桁目を求める
51820 '例 a1:1234の4が1桁目
51830 'a2:4桁のうちの2桁目を求める
51840 '例:a2:1234の3が2桁目
51850 'a3:4桁のうちの3桁目を求める
51860 '例 a3:1234の2が3桁目
51870 'a4:4桁のうちの4桁目を求める
51880 '例 a4:1234の1が4桁目
51890 '==============================
51900 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
51910 Year = buffer_Year
51920 '処理1　整数部分を取り出す。
51930 a4 = fix(Year / 1000)
51940 a3 = fix(Year / 100) - (a4 * 10)
51950 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
51960 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
51970 '処理　２　取り出した整数部分を足す。
51980 a_ = a1 + a2 + a3 + a4 +month + day
51990 'a1=0:a2=0:a3=0:a4=0
52000 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
52010 buffer = a_
52020 'else
52030 goto recomp2:
52040 'if (a_ = 10) then
52050 '  buffer = 1
52060 endif
52070 recomp2:
52080 a5=0:a6=0
52090 a5 = fix(a_ / 10)
52100 a6 = (a_) - (a5 * 10)
52110 a_ = a5 + a6
52120 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
52130 '結果に行く
52140 goto Res2:
52150 '  if ((a_>11) and (a_<99)) then
52160 else
52170 '再度計算
52180 goto recomp2:
52190 endif
52200 '     a1 = fix(a_ / 10)
52210 '     a2 = a_ - (a1 * 10)
52220 '     a_ = a1 + a2
52230 '     buffer = a_
52240 'endif
52250 'else
52260 '    bffer = a_
52270 'endif
52280 'endif
52290 'else
52300 'talk "プログラムを終了します。"
52310 'end
52320 'endif
52330 'kabara = 10
52340 Res2:
52350 kabara = a_
52360 endfunc kabara
52370 func Kabara_Aisyou$(buff1,buff2)
52380 a=0:b=0
52390 '範囲　1~9
52400 if ((buff1 > 0 and buff1 < 10)) then
52410 a = buff1
52420 else
52430 Select case buff1
52440 case 11:
52450 buff1=9:a=buff1
52460 case 22:
52470 buff1=10:a=buff1
52480 end select
52490 endif
52500 '範囲　１~９
52510 if ((buff2 > 0 and buff2 < 10)) then
52520 b = buff2
52530 else
52540 select case buff2
52550 case 11:
52560 buff2=9:b=buff2
52570 case 12:
52580 buff2=10:b=buff2
52590 end select
52600 endif
52610 Aisyou$ = Buffer_Business_Aisyou$(a,b)
52620 endfunc Aisyou$
52630 '=============================
52640 '自作関数 ここまで
52650 '1.数秘術　トップ画面
52660 '
52670 'Data_eraseを一番最後に持ってくる
52680 '=============================
52690 Data_erase:
52700 'メモリー削除
52710 erase buf_name1$
52720 erase buf_name2$
52730 erase buffer
52740 erase buf_chart$
52750 erase Buffer_Business_Aisyou$
52760 erase buffer_name$
52770 '上司の誕生日
52780 erase buf_Jyoushi_Born_Day
52790 '部下の誕生日
52800 erase buf_Buka_Born_Day
52810 erase buf_year
52820 erase buf_month
52830 erase buf_day
52840 'フォーカスライン
52850 erase Forcus1_buffer$
52860 erase Forcus2_buffer$
52870 erase Forcus3_buffer$
52880 buffer$ = ""
52890 buf$ = ""
52900 buf_year$ = ""
52910 buf_Jyoushi_Kabara_Num = 0
52920 buf_Buka_Kabara_Num = 0
52930 count = 0
52940 buf_Month$ = ""
52950 buf_Day$ = ""
52960 b=0
52970 c=0
52980 return
