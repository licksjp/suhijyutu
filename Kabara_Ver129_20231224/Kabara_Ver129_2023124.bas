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
450 '2023.12.03:Ver126_20231203
460 '2023.12.10:Ver127_20231210
470 '2023.12.17:Ver128_20231217
480 '2023.12.24:Ver129_20231224
490 Version$ = "Ver:1.2.9_20231224"
500 'Gazo file Folder
510 Gazo$ = "./data/Picture/"
520 'Voice files 2023
530 Voice$ = "./data/Voice/Voice/"
540 'BirtheyeChart Data:20230626
550 Birth_eye_chart$ = "./data/chart_data/"
560 'Data File
570 Data$ = "./data/data/"
580 'Business Aisyou 結果説明保存フォルダ
590 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
600 'Save BirdsEyeGrit List
610 Save_data_Birdseye$ = "./data/Parsonal_data/"
620 '変数定義 パート
630 b=0:c=0
640 dim buf_name1$(10),buf_name2$(10)
650 dim buffer(9),buf_chart$(26,2)
660 'ビジネスの相性　データー
670 dim Buffer_Business_Aisyou$(12,12)
680 '男女の相性
690 dim Buffer_Bitween_sexes_Aisyou$(12,12)
700 '生れた年代
710 dim buf_year(4):buf_year$ = ""
720 dim buf_month(2)
730 dim buf_day(2)
740 'フォーカスライン　配列
750 dim Forcus1_buffer$(3)
760 dim Forcus2_buffer$(3)
770 dim Forcus3_buffer$(2)
780 '生れた月
790 buf_Month$ = ""
800 '生れた日
810 buf_Day$ = ""
820 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
830 dim buffer_name$(3)
840 '1-1.上司の誕生日(数値データー)
850 dim buf_Jyoushi_Born_Day(3)
860 '1-2.上司の数秘ナンバー(数値データー)
870 buf_Jyoushi_Kabara_Num = 0
880 '2-1.部下の誕生日(数値データー)
890 dim buf_Buka_Born_Day(3)
900 '2-2.部下の数秘ナンバー(数秘データー)
910 buf_Buka_Kabara_Num = 0
920 dim buf_male_year(4)
930 dim buf_male_month(2)
940 dim buf_male_Born_Day(2)
950 dim buf_feMale_Born_Day(2)
960 dim buf_female_day(2)
970 count=0
980 'Birds Eye List 配列
990 dim List$(6)
1000 '部下の数秘ナンバー
1010 'File 読み込み
1020 '1.ビジネスの相性占い
1030 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1040 for i=0 to 11
1050 for j=0 to 11
1060 input #1,a$
1070 Buffer_Business_Aisyou$(j,i) = a$
1080 next j
1090 next i
1100 close #1
1110 '2.男女の相性占い
1120 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1130 for i=0 to 11
1140 for j=0 to 11
1150 input #1,a$
1160 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1170 next j
1180 next i
1190 close #1
1200 '2.Birth Eye chart$
1210 '2.バーズアイグリッドを読み込む
1220 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1230 for j=0 to 25
1240 for i=0 to 1
1250 input #1,a$
1260 buf_chart$(j,i) = a$
1270 next i
1280 next j
1290 close #1
1300 'File 読み込み　ここまで
1310 'Main画面
1320 screen 1,1,1,1
1330 Main_Screen:
1340 cls 3:
1350 No=0
1360 gload Gazo$ + "Selection.png",1,5,200
1370 gload Gazo$ + "Selection.png",1,5,300
1380 gload Gazo$ + "Selection.png",1,5,400
1390 gload Gazo$ + "Selection.png",1,5,500
1400 '4
1410 gload Gazo$ + "Selection.png",1,35,300
1420 '5
1430 gload Gazo$ + "Selection.png",1,35,400
1440 '6
1450 gload Gazo$ + "Selection.png",1,35,500
1460 '7
1470 gload Gazo$ + "Selection.png",1,70,300
1480 '8
1490 gload Gazo$ + "Selection.png",1,70,400
1500 '9
1510 gload Gazo$ + "Selection.png",1,70,500
1520 '10
1530 gload Gazo$ + "Selection.png",1,110,300
1540 '11
1550 gload Gazo$ + "Selection.png",1,110,400
1560 '12
1570 gload Gazo$ + "Selection.png",1,110,500
1580 '13:0
1590 gload Gazo$ + "Selection.png",1,150,400
1600 gload Gazo$ + "Selection.png",1,200,400
1610 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1620 '選択肢の丸
1630 gload Gazo$ + "downscreen.png",0,0,800
1640 sp_def 0,(5,300),32,32
1650 sp_def 1,(5,400),32,32
1660 sp_def 2,(5,500),32,32
1670 sp_def 3,(5,600),32,32
1680 '1
1690 sp_def 4,(35,300),32,32
1700 '2
1710 sp_def 5,(35,400),32,32
1720 '3
1730 sp_def 6,(35,500),32,32
1740 '4
1750 sp_def 7,(70,300),32,32
1760 '5
1770 sp_def 8,(70,400),32,32
1780 '6
1790 sp_def 9,(70,500),32,32
1800 '7
1810 sp_def 10,(110,300),32,32
1820 '8
1830 sp_def 11,(110,400),32,32
1840 '9
1850 sp_def 12,(110,400),32,32
1860 sp_def 13,(150,400),32,32
1870 sp_def 14,(200,400),32,32
1880 'Sprite OFF
1890 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1900 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1910 sp_put 0,(5,300),0,0
1920 sp_put 1,(5,400),1,0
1930 sp_put 2,(5,500),2,0
1940 sp_put 3,(5,600),3,0
1950 '1
1960 sp_put 4,(130,300),4,0
1970 '2
1980 sp_put 5,(130,400),5,0
1990 '3
2000 sp_put 6,(130,500),6,0
2010 '4
2020 sp_put 7,(340,300),7,0
2030 '5
2040 sp_put 8,(340,400),8,0
2050 '6
2060 sp_put 9,(340,500),9,0
2070 '7
2080 sp_put 10,(540,300),10,0
2090 '8
2100 sp_put 11,(540,400),11,0
2110 '9
2120 sp_put 12,(540,500),12,0
2130 '
2140 sp_put 13,(340,600),13,0
2150 sp_put 14,(540,600),14,0
2160 Main_Top:
2170 'Main Message 2023.06.07
2180 '再生を止める
2190 play ""
2200 init "kb:4"
2210 'font 32:
2220 font 48
2230 print chr$(13) + chr$(13) + chr$(13)
2240 color rgb(217,255,212)
2250 print "番号を選んでください" + chr$(13)
2260 '0
2270 print " :1.数秘術占い" + chr$(13)
2280 '1
2290 print " :2.設 定" + chr$(13)
2300 '2
2310 print " :3.ヘルプ" + chr$(13)
2320 '3
2330 print " :4.(プログラムを)終了する" + chr$(13)
2340 COLOR rgb(0,0,0):No=0
2350 locate 1,15
2360 print "                                       "
2370 locate 1,15:print "1.数秘術占いを選択"
2380 play Voice$ + "Voice_Main_Message_20230607.mp3"
2390 Main_Screen_Select:
2400 y = 0:key$ = "":bg = 0:bg2=0
2410 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2420 y = stick(1)
2430 '"May (2023)"
2440 key$ = inkey$
2450 bg = strig(1)
2460 bg2 = strig(0)
2470 pause 200
2480 wend
2490 '1.
2500 'ジョイパッドのソース ソート　ここから
2510 'カーソル　下 or 十字キー下
2520 if ((y = 1) or (key$ = chr$(31))) then
2530 select case No
2540 case 0:
2550 '1
2560 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2570 case 1:
2580 '2
2590 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2600 case 2:
2610 '3
2620 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2630 case 3:
2640 '0
2650 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2660 end select
2670 endif
2680 '2.
2690 'カーソル　上　or 十字キー  上
2700 if ((y = -1) or (key$ = chr$(30))) then
2710 select case No
2720 case 0:
2730 '3
2740 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2750 case 1:
2760 '0
2770 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2780 case 2:
2790 '1
2800 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2810 case 3:
2820 '2
2830 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2840 end select
2850 endif
2860 'ジョイパッド　ソース 部分　ここまで
2870 'ジョイパッド右　　or Enter key 決定
2880 if ((bg = 2) OR (key$ = chr$(13))) then
2890 select case No
2900 case 0:
2910 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2920 case 1:
2930 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2940 case 2:
2950 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2960 case 3:
2970 play "":pause 200
2980 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2990 end select
3000 endif
3010 if (bg2 = 2) then
3020 play "":pause 200
3030 play Voice$ + "Voice_Main_Message_20230607.mp3"
3040 goto Main_Screen_Select:
3050 endif
3060 'Version
3070 Version:
3080 cls 3:PLAY ""
3090 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3100 gload Gazo$ + "downscreen.png",0,0,800
3110 init"kb:4":font 32+8
3120 'talk"バージョン情報です"
3130 'Message :Version
3140 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3150 locate 0,3
3160 color rgb(0,0,0)
3170 print "・Title:数秘術占い";chr$(13)
3180 print "・" + Version$ + chr$(13)
3190 print "・Author:licksjp"+chr$(13)
3200 print "・E-mail:licksjp@gmail.com" + chr$(13)
3210 locate 0,12
3220 print "(C)licksjp All rights " + chr$(13)
3230 locate 7,13
3240 print "reserved since 2009"+chr$(13)
3250 locate 0,18
3260 color rgb(255,255,255)
3270 print "ジョイパッドの右を押してください"
3280 Versionn_Selection:
3290 bg = 0:key$ = "":bg2 = 0
3300 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3310 bg = strig(1)
3320 key$ = inkey$
3330 bg2 = strig(0)
3340 pause 2
3350 wend
3360 if ((bg = 2) or (key$ = chr$(13))) then
3370 pause 200:cls 4:goto Main_Screen:
3380 endif
3390 if (bg2=2) then
3400 play "":pause 200
3410 play Voice$ + "Voice_Version_Message_20230607.mp3"
3420 goto Versionn_Selection:
3430 endif
3440 '1.数秘ナンバーを求める
3450 '誕生日入力(生れた年代)
3460 Input_Seireki:
3470 cls 3:play "":count=0:count2=0
3480 'No = -1:Okのとき
3490 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3500 for i=0 to 3
3510 buf_year(i)=0
3520 next i
3530 gload Gazo$ + "Screen1.png",0,0,0
3540 gload Gazo$ + "downscreen.png",0,0,800
3550 'Init"kb:2"
3560 '音声ファイル再生 2023.06.07
3570 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3580 font 48
3590 locate 0,1
3600 '文字色：黒　 color rgb(0,0,0)
3610 color rgb(255,255,255)
3620 print "生まれた年代を入れて下さい" + chr$(13)
3630 color rgb(255,255,255)
3640 locate 2,3
3650 print "生まれた年代(西暦4桁):" + buf_year$
3660 '=============================
3670 'テンキーの色(1~９)　白 ,決定ボタン　青
3680 '=============================
3690 color rgb(255,255,255)
3700 'locate 4,6:print ":7"
3710 'locate 9,6:print ":8"
3720 'locate 12,6:print ":9"
3730 locate 4,6
3740 print ":7  :8  :9" + chr$(13)
3750 color rgb(255,255,255)
3760 locate 4,8
3770 print ":4  :5  :6" + chr$(13)
3780 color rgb(255,255,255)
3790 locate 4,10
3800 print ":1  :2  :3" + chr$(13)
3810 locate 4,12
3820 print "    :0"
3830 locate 12,12
3840 color rgb(255,0,0)
3850 print ":Ok"
3860 sp_on 4,0: sp_on 5,0:sp_on 6,0
3870 sp_on 7,0:sp_on 8,0:sp_on 9,0
3880 sp_on 10,0:sp_on 11,0:sp_on 12,0
3890 sp_on 13,0:sp_on 14,1
3900 Input_Seireki2:
3910 key$="":bg=0:y=0:y2=0:bg2=0:
3920 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3930 key$ = inkey$
3940 bg = strig(1)
3950 y = stick(1)
3960 y2 = stick(0)
3970 bg2 = strig(0)
3980 pause 15
3990 wend
4000 '十字キー　ここから
4010 '上の矢印　または、十字キー上
4020 if ((y = -1) or (key$ = chr$(30))) then
4030 select case No
4040 'No=-1:okのとき:初期の状態
4050 '0kボタンから３に移動
4060 '上に行く 処理
4070 case -1:
4080 No=3:sp_on 12,1:sp_on 14,0
4090 pause 200:goto Input_Seireki2:
4100 '選択肢:3
4110 '3ボタンから 6に移動
4120 case 3:
4130 No=6:sp_on 12,0:sp_on 11,1
4140 pause 200:goto Input_Seireki2:
4150 '6ボタンから ９に移動
4160 case 6:
4170 No=9:sp_on 10,1:sp_on 11,0
4180 pause 200:goto Input_Seireki2:
4190 '6ボタンから ９に移動　ここまで
4200 '9で上を押して何もしない
4210 case 9:
4220 '何もしない
4230 No=9
4240 pause 200:goto Input_Seireki2:
4250 '9で上を押しても何もしない　ここまで
4260 '上　 0ボタンから2ボタン
4270 'sp_on 6,1:1
4280 'sp_on 8,1:5
4290 'sp_on 7,1:7
4300 case 0:
4310 No=2:sp_on 13,0:sp_on 9,1:
4320 pause 200:goto Input_Seireki2:
4330 '上  0ボタンから2ボタン　ここまで
4340 '2から５になる 上
4350 case 2:
4360 No=5:sp_on 8,1:sp_on 9,0:
4370 pause 200:goto Input_Seireki2:
4380 case 5:
4390 No=8:sp_on 7,1:sp_on 8,0
4400 pause 200:goto Input_Seireki2:
4410 case 8:
4420 pause 200:goto Input_Seireki2:
4430 case 1:
4440 No=4:sp_on 5,1:sp_on 6,0
4450 pause 200:goto Input_Seireki2:
4460 case 4:
4470 No=7:sp_on 4,1:sp_on 5,0
4480 pause 200:goto Input_Seireki2:
4490 case 7:
4500 pause 200:goto Input_Seireki2:
4510 end select
4520 endif
4530 '左３　ここまで
4540 '下の矢印
4550 '中央 2
4560 if ((y=1) or (key$ = chr$(31))) then
4570 select case No
4580 '9から６に下げる
4590 case 9:
4600 No=6:sp_on 11,1:sp_on 10,0
4610 pause 200:goto Input_Seireki2:
4620 '6から３に下げる
4630 case 6:
4640 No=3:sp_on 12,1:sp_on 11,0
4650 pause 200:goto Input_Seireki2:
4660 '3から０ｋに変える
4670 case 3:
4680 No=-1:sp_on 14,1:sp_on 12,0
4690 pause 200:goto Input_Seireki2:
4700 'Okから下のボタンを押しても何もしない
4710 case -1:
4720 pause 200:goto Input_Seireki2:
4730 case 8:
4740 No=5:sp_on 8,1:sp_on 7,0
4750 pause 200:goto Input_Seireki2:
4760 case 5:
4770 No=2:sp_on 9,1:sp_on 8,0
4780 pause 200:goto Input_Seireki2:
4790 case 2:
4800 No=0:sp_on 13,1:sp_on 9,0
4810 pause 200:goto Input_Seireki2:
4820 case 0:
4830 pause 200:goto Input_Seireki2:
4840 case 7:
4850 No=4:sp_on 5,1:sp_on 4,0
4860 pause 200:goto Input_Seireki2:
4870 case 4:
4880 No=1:sp_on 6,1:sp_on 5,0
4890 pause 200:goto Input_Seireki2:
4900 case 1:
4910 pause 200:goto Input_Seireki2:
4920 end select
4930 endif
4940 '左へボタン 十字キー　左　or 　カーソル左
4950 if ((y2 = -1) or (key$ = chr$(29))) then
4960 select case No
4970 'Ok ボタン  Okから　左　０に行く
4980 case -1:
4990 No=0:sp_on 13,1:sp_on 14,0
5000 pause 200:goto Input_Seireki2:
5010 '0 ボタン  左　何もしない
5020 case 0:
5030 pause 200:goto Input_Seireki2:
5040 case 3:
5050 No=2:sp_on 9,1:sp_on 12,0:
5060 pause 200:goto Input_Seireki2:
5070 case 2:
5080 No=1:sp_on 6,1:sp_on 9,0:
5090 pause 200:goto Input_Seireki2:
5100 case 1:
5110 pause 200:goto Input_Seireki2:
5120 case 6:
5130 No=5:sp_on 8,1:sp_on 11,0
5140 pause 200:goto Input_Seireki2:
5150 case 5:
5160 No=4:sp_on 5,1:sp_on 8,0
5170 pause 200:goto Input_Seireki2:
5180 case 4:
5190 pause 200:goto Input_Seireki2:
5200 case 9:
5210 No=8:sp_on 7,1:sp_on 10,0
5220 pause 200:goto Input_Seireki2:
5230 case 8:
5240 No=7:sp_on 4,1:sp_on 7,0
5250 pause 200:goto Input_Seireki2:
5260 case 7:
5270 pause 200:goto Input_Seireki2:
5280 end select
5290 endif
5300 '右  十字キー　右　or カーソル　右
5310 if ((y2 = 1) or (key$ = chr$(28))) then
5320 select case No
5330 '0ボタンからokボタン右に移動
5340 case 0:
5350 No=-1:sp_on 14,1:sp_on 13,0
5360 pause 200:goto Input_Seireki2:
5370 '0ボタンからokボタン 右に移動　ここまで
5380 'OKボタンで右を押して何もしない
5390 case -1:
5400 pause 200:goto Input_Seireki2:
5410 case 1:
5420 No=2:sp_on 9,1:sp_on 6,0
5430 pause 200:goto Input_Seireki2:
5440 case 2:
5450 No=3:sp_on 12,1:sp_on 9,0
5460 pause 200:goto Input_Seireki2:
5470 case 3:
5480 pause 200:goto Input_Seireki2:
5490 case 4:
5500 No=5:sp_on 8,1:sp_on 5,0
5510 pause 200:goto Input_Seireki2:
5520 case 5:
5530 No=6:sp_on 11,1:sp_on 8,0
5540 pause 200:goto Input_Seireki2:
5550 case 7:
5560 No=8:sp_on 7,1:sp_on 4,0
5570 pause 200:goto Input_Seireki2:
5580 case 8:
5590 No=9:sp_on 10,1:sp_on 7,0
5600 pause 200:goto Input_Seireki2:
5610 case 9:
5620 pause 200:goto Input_Seireki2:
5630 case 6:
5640 pause 200:goto Input_Seireki2:
5650 end select
5660 'Okから右ボタンを押して何もしない ここまで
5670 endif
5680 '十字キー　ここまで
5690 if ((bg=2) or (key$=chr$(13))) then
5700 select case count
5710 case 0:
5720 count=1
5730 if (No=-1) then
5740 count=0
5750 'Okボタンを押したとき
5760 goto Input_Seireki2:
5770 else
5780 '===================================
5790 'Okボタン以外が押されたとき  1桁目の入力
5800 '===================================
5810 count2=1
5820 if (No >= 1 and No <= 2) then
5830 buf_year$="":buf_year$ = str$(No)
5840 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5850 n1 = len("生まれた年代(西暦4桁): ")
5860 locate 2,3
5870 color rgb(255,255,255)
5880 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5890 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5900 'print "生まれた年代(西暦4桁):";buf_year2$
5910 print buf_Born_Year_line$
5920 goto Input_Seireki2:
5930 else
5940 count=0
5950 ui_msg"数字が範囲外になります。"
5960 buf_year$="":buf_year=0
5970 goto Input_Seireki2:
5980 endif
5990 endif
6000 case 1:
6010 count = 2
6020 if (No = -1) then
6030 count = 1
6040 goto Input_Seireki2:
6050 else
6060 count2 = 1
6070 b = val(buf_year$)
6080 buf_year = b * 10 + No
6090 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6100 locate 2,3
6110 color rgb(255,255,255)
6120 print "                                                                "
6130 locate 2,3
6140 print "生まれた年代(西暦4桁):";buf_year2$
6150 'if (No = -1) then
6160 'count=1
6170 goto Input_Seireki2:
6180 endif
6190 case 2:
6200 count=3
6210 if (No=-1) then
6220 count =2
6230 goto Input_Seireki2:
6240 else
6250 b = val(buf_year$)
6260 buf_year = b*10 + No
6270 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6280 locate 2,3
6290 color rgb(255,255,255)
6300 print "                                        "
6310 locate 2,3
6320 print "生まれた年代(西暦4桁):";buf_year2$
6330 goto Input_Seireki2:
6340 endif
6350 case 3:
6360 count=4
6370 if (No = -1) then
6380 count=3
6390 goto Input_Seireki2:
6400 else
6410 b = val(buf_year$)
6420 buf_year = b * 10 + No
6430 buf_year$ = str$(buf_year)
6440 locate 2,3
6450 color RGB(255,255,255)
6460 print "                                      "
6470 locate 2,3
6480 print "生まれた年代(西暦4桁):";buf_year$
6490 buf_year=val(buf_year$)
6500 'year=val(buf_year$)
6510 'if (No=-1) then
6520 'goto Input_Born_Month:
6530 'else
6540 goto Input_Seireki2:
6550 endif
6560 case 4:
6570 'bufyear=buf_year
6580 if (No = -1) then
6590 buf_year = val(buf_year$)
6600 bufyear = buf_year
6610 sp_on 14,0
6620 goto Input_Born_Month:
6630 else
6640 goto Input_Seireki2:
6650 endif
6660 end select
6670 endif
6680 '=========================
6690 'bg2　キャンセルボタン
6700 '=========================
6710 if (bg2 = 2) then
6720 select case count2
6730 case 0:
6740 'Okボタンを押したときの処理
6750 if (No = -1) then
6760 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6770 'count = 0
6780 locate 2,3
6790 color rgb(255,255,255)
6800 print "                                      "
6810 locate 2,3
6820 print "生まれた年代（西暦4桁):";buf_year$
6830 '=============================
6840 'case 0:前の画面に戻る 数秘術トップメニュー
6850 '=============================
6860 sp_on 14,0:goto Kabara_TopScreen:
6870 else
6880 'count=0
6890 '(buf_year=0) then
6900 buf_year = 0:buf_year$ = string$(4,"*")
6910 goto Input_Seireki2:
6920 'endif
6930 endif
6940 case 1:
6950 if (No = -1) then
6960 count2 = 0:count = 0
6970 buf$=right$(buf_year$,1)
6980 if (val(buf$) >= 1 and val(buf$) <= 9) then
6990 buf_year$ = "****":buf_year=0
7000 color rgb(255,255,255)
7010 locate 0,3:
7020 print "                                      "
7030 locate 2,3
7040 print "生まれた年代（西暦4桁):" + buf_year$
7050 goto Input_Seireki2:
7060 endif
7070 else
7080 endif
7090 end select
7100 endif
7110 end
7120 'Input"生れた年代(4桁,〜2025年):",year
7130 'if year > 2025 then goto Input_Seireki:
7140 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7150 '"4桁目"
7160 'bufyear4 = fix(year / 1000)
7170 '"3桁目"
7180 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
7190 '"2桁目"
7200 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
7210 '"1桁目"
7220 'bufyear1 = fix((year - ((bufyear4*
7230 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
7240 '生れた月を入力
7250 Input_Born_Month:
7260 cls 3:play "":count=0:count2=0
7270 'No=-1:Okのとき
7280 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7290 for i=0 to 1
7300 buf_month(i)=0
7310 next i
7320 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7330 gload Gazo$ + "Screen1.png",0,0,0
7340 gload Gazo$ + "downscreen.png",0,0,800
7350 'Init"kb:2"
7360 '音声ファイル再生 2023.06.07
7370 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7380 font 48
7390 locate 0,1
7400 '文字色：黒　 color rgb(0,0,0)
7410 '文字色:白
7420 color rgb(255,255,255)
7430 print "生まれた月を入れて下さい" + chr$(13)
7440 '文字色:白
7450 color rgb(255,255,255)
7460 locate 2,3
7470 '文字色:白
7480 print "生まれた月(1月~12月):";buf_Month$
7490 color rgb(255,255,255)
7500 'locate 4,6:print ":7"
7510 'locate 9,6:print ":8"
7520 'locate 12,6:print ":9"
7530 locate 4,6
7540 '文字色:赤
7550 print ":7  :8  :9" + chr$(13)
7560 color rgb(255,255,255)
7570 locate 4,8
7580 print ":4  :5  :6" + chr$(13)
7590 color rgb(255,255,255)
7600 locate 4,10
7610 print ":1  :2  :3" + chr$(13)
7620 locate 4,12
7630 print "    :0"
7640 locate 12,12
7650 color rgb(255,0,0)
7660 print ":Ok"
7670 sp_on 4,0: sp_on 5,0:sp_on 6,0
7680 sp_on 7,0:sp_on 8,0:sp_on 9,0
7690 sp_on 10,0:sp_on 11,0:sp_on 12,0
7700 sp_on 13,0:sp_on 14,1
7710 Input_Born_Month2:
7720 key$="":bg=0:y=0:y2=0:bg2=0
7730 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7740 key$ = inkey$
7750 bg = strig(1)
7760 y = stick(1)
7770 y2 = stick(0)
7780 bg2 = strig(0)
7790 pause 5
7800 wend
7810 '十字キー　ここから
7820 '上の矢印　または、十字キー上
7830 if ((y = -1) or (key$ = chr$(30))) then
7840 select case No
7850 'No=-1:okのとき:初期の状態
7860 '0kボタンから３に移動
7870 '上に行く 処理
7880 case -1:
7890 No=3:sp_on 12,1:sp_on 14,0
7900 pause 200:goto Input_Born_Month2:
7910 '選択肢:3
7920 '3ボタンから 6に移動
7930 case 3:
7940 No=6:sp_on 12,0:sp_on 11,1
7950 pause 200:goto Input_Born_Month2:
7960 '6ボタンから ９に移動
7970 case 6:
7980 No=9:sp_on 10,1:sp_on 11,0
7990 pause 200:goto Input_Born_Month2:
8000 '6ボタンから ９に移動　ここまで
8010 '9で上を押して何もしない
8020 case 9:
8030 '何もしない
8040 No=9
8050 pause 200:goto Input_Born_Month2:
8060 '9で上を押しても何もしない　ここまで
8070 '上　 0ボタンから2ボタン
8080 'sp_on 6,1:1
8090 'sp_on 8,1:5
8100 'sp_on 7,1:7
8110 case 0:
8120 No=2:sp_on 13,0:sp_on 9,1:
8130 pause 200:goto Input_Born_Month2:
8140 '上  0ボタンから2ボタン　ここまで
8150 '2から５になる 上
8160 case 2:
8170 No=5:sp_on 8,1:sp_on 9,0:
8180 pause 200:goto Input_Born_Month2:
8190 case 5:
8200 No=8:sp_on 7,1:sp_on 8,0
8210 pause 200:goto Input_Born_Month2:
8220 case 8:
8230 pause 200:goto Input_Born_Month2:
8240 case 1:
8250 No=4:sp_on 5,1:sp_on 6,0
8260 pause 200:goto Input_Born_Month2:
8270 case 4:
8280 No=7:sp_on 4,1:sp_on 5,0
8290 pause 200:goto Input_Born_Month2:
8300 case 7:
8310 pause 200:goto Input_Born_Month2:
8320 end select
8330 endif
8340 '左３　ここまで
8350 '下の矢印
8360 '中央 2
8370 if ((y=1) or (key$ = chr$(31))) then
8380 select case No
8390 '9から６に下げる
8400 case 9:
8410 No=6:sp_on 11,1:sp_on 10,0
8420 pause 200:goto Input_Born_Month2:
8430 '6から３に下げる
8440 case 6:
8450 No=3:sp_on 12,1:sp_on 11,0
8460 pause 200:goto Input_Born_Month2:
8470 '3から０ｋに変える
8480 case 3:
8490 No=-1:sp_on 14,1:sp_on 12,0
8500 pause 200:goto Input_Born_Month2:
8510 'Okから下のボタンを押しても何もしない
8520 case -1:
8530 pause 200:goto Input_Born_Month2:
8540 case 8:
8550 No=5:sp_on 8,1:sp_on 7,0
8560 pause 200:goto Input_Born_Month2:
8570 case 5:
8580 No=2:sp_on 9,1:sp_on 8,0
8590 pause 200:goto Input_Born_Month2:
8600 case 2:
8610 No=0:sp_on 13,1:sp_on 9,0
8620 pause 200:goto Input_Born_Month2:
8630 case 0:
8640 pause 200:goto Input_Born_Month2:
8650 case 7:
8660 No=4:sp_on 5,1:sp_on 4,0
8670 pause 200:goto Input_Born_Month2:
8680 case 4:
8690 No=1:sp_on 6,1:sp_on 5,0
8700 pause 200:goto Input_Born_Month2:
8710 case 1:
8720 pause 200:goto Input_Born_Month2:
8730 end select
8740 endif
8750 '左へボタン 十字キー　左　or 　カーソル左
8760 if ((y2 = -1) or (key$ = chr$(29))) then
8770 select case No
8780 'Ok ボタン  Okから　左　０に行く
8790 case -1:
8800 No=0:sp_on 13,1:sp_on 14,0
8810 pause 200:goto Input_Born_Month2:
8820 '0 ボタン  左　何もしない
8830 case 0:
8840 pause 200:goto Input_Born_Month2:
8850 case 3:
8860 No=2:sp_on 9,1:sp_on 12,0:
8870 pause 200:goto Input_Born_Month2:
8880 case 2:
8890 No=1:sp_on 6,1:sp_on 9,0:
8900 pause 200:goto Input_Born_Month2:
8910 case 1:
8920 pause 200:goto Input_Born_Month2:
8930 case 6:
8940 No=5:sp_on 8,1:sp_on 11,0
8950 pause 200:goto Input_Born_Month2:
8960 case 5:
8970 No=4:sp_on 5,1:sp_on 8,0
8980 pause 200:goto Input_Born_Month2:
8990 case 4:
9000 pause 200:goto Input_Born_Month2:
9010 case 9:
9020 No=8:sp_on 7,1:sp_on 10,0
9030 pause 200:goto Input_Born_Month2:
9040 case 8:
9050 No=7:sp_on 4,1:sp_on 7,0
9060 pause 200:goto Input_Born_Month2:
9070 case 7:
9080 pause 200:goto Input_Born_Month2:
9090 end select
9100 endif
9110 '右  十字キー　右　or カーソル　右
9120 if ((y2 = 1) or (key$ = chr$(28))) then
9130 select case No
9140 '0ボタンからokボタン右に移動
9150 case 0:
9160 No=-1:sp_on 14,1:sp_on 13,0
9170 pause 200:goto Input_Born_Month2:
9180 '0ボタンからokボタン 右に移動　ここまで
9190 'OKボタンで右を押して何もしない
9200 case -1:
9210 pause 200:goto Input_Born_Month2:
9220 case 1:
9230 No=2:sp_on 9,1:sp_on 6,0
9240 pause 200:goto Input_Born_Month2:
9250 case 2:
9260 No=3:sp_on 12,1:sp_on 9,0
9270 pause 200:goto Input_Born_Month2:
9280 case 3:
9290 pause 200:goto Input_Born_Month2:
9300 case 4:
9310 No=5:sp_on 8,1:sp_on 5,0
9320 pause 200:goto Input_Born_Month2:
9330 case 5:
9340 No=6:sp_on 11,1:sp_on 8,0
9350 pause 200:goto Input_Born_Month2:
9360 case 7:
9370 No=8:sp_on 7,1:sp_on 4,0
9380 pause 200:goto Input_Born_Month2:
9390 case 8:
9400 No=9:sp_on 10,1:sp_on 7,0
9410 pause 200:goto Input_Born_Month2:
9420 case 9:
9430 pause 200:goto Input_Born_Month2:
9440 case 6:
9450 pause 200:goto Input_Born_Month2:
9460 end select
9470 'Okから右ボタンを押して何もしない ここまで
9480 endif
9490 '十字キー　ここまで
9500 '右の丸ボタン　決定キー
9510 if ((bg=2) or (key$=chr$(13))) then
9520 select case count
9530 case 0:
9540 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9550 if (buf_month = 1 or buf_month = 2) then
9560 locate 2,3
9570 color RGB(255,255,255)
9580 print "生まれた月(1月~12月):";buf_Month2$
9590 else
9600 locate 2,3
9610 color Rgb(255,255,255)
9620 print "生まれた月(1月~12月):";buf_Month$
9630 endif
9640 goto Input_Born_Month2:
9650 case 1:
9660 count = 2:c = No
9670 c = val(buf_Month$)
9680 if (No = -1) then
9690 'if No=1 or No=2 then
9700 'endif
9710 month = buf_month
9720 buf_month=val(buf_Month$)
9730 month=buf_month
9740 '生まれた日に飛ぶ
9750 goto Input_Born_Day:
9760 else
9770 buf_month = c*10 + No
9780 buf_Month$= str$(buf_month)
9790 locate 2,3
9800 color Rgb(255,255,255)
9810 print "生まれた月(1月~12月):";buf_Month$
9820 goto Input_Born_Month2:
9830 endif
9840 case 2:
9850 count=3:count2=1
9860 'c= val(buf_Month$)
9870 'buf_month = c*10 + No
9880 'buf_Month$ = str$(buf_month)
9890 'locate 2,3
9900 'print "生まれた月(1月～12月):";buf_Month$
9910 'goto Input_Born_Month2:
9920 'case 3:
9930 'count=4
9940 'b=val(buf_month$)
9950 'buf_month=c*10+No
9960 'buf_Month$=str$(buf_month)
9970 'locate 2,3
9980 'print "生まれた月(1月～12月):";buf_Month$
9990 'buf_month=val(buf_Month$)
10000 'year=val(buf_year$)
10010 if (No=-1) then
10020 goto Input_Born_Day:
10030 else
10040 'goto Input_Born_Month2:
10050 endif
10060 'case 4:
10070 'bufyear=buf_year
10080 'if (No=-1) then
10090 'buf_month = val(buf_Month$)
10100 'month = buf_month
10110 'sp_on 14,0
10120 'goto Input_Born_Day:
10130 'else
10140 'goto Input_Born_Month2:
10150 'endif
10160 end select
10170 endif
10180 '左の丸ボタン　キャンセル
10190 if (bg2=2) then
10200 select case count2
10210 case 0:
10220 if (No = -1) then
10230 buf_month=0:buf_Month$="**"
10240 count2=0:count=0
10250 locate 0,3:print "                                              "
10260 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10270 'if (buf_month > 1) then
10280 sp_on 14,0:goto Input_Born_Month2:
10290 'goto rewrite:
10300 else
10310 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10320 buf_month=0:buf_Month$="**"
10330 locate 2,3
10340 color rgb(255,255,255)
10350 print "                                       "
10360 goto rewrite:
10370 if (No>2) then
10380 ui_msg"値が範囲外です。"
10390 goto rewrite:
10400 endif
10410 endif
10420 'endif
10430 rewrite:
10440 locate 2,3
10450 color rgb(255,255,255)
10460 print "                                      "
10470 locate 2,3
10480 print "生まれた月(1月~12月):";buf_Month$
10490 goto Input_Born_Month2:
10500 endif
10510 case 1:
10520 buf_Month$="**":buf_month=0
10530 if No=-1 then
10540 count2=2:count=0
10550 locate 0,3
10560 print "                                      "
10570 locate 2,3:
10580 print "生まれた月(1月~12月):"+buf_Month$
10590 goto Input_Born_Month2:
10600 endif
10610 case 2:
10620 sp_on 14,0:goto Input_Seireki:
10630 end select
10640 endif
10650 'endif
10660 end
10670 'end
10680 '生れた日を入力
10690 Input_Born_Day:
10700 '生まれた日入力
10710 cls 3:play ""
10720 'No=-1:Okのとき
10730 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10740 for i=0 to 1
10750 buf_day(i)=0
10760 next i
10770 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10780 gload Gazo$ + "Screen1.png",0,0,0
10790 gload Gazo$ + "downscreen.png",0,0,800
10800 'Init"kb:2"
10810 '音声ファイル再生 2023.06.07
10820 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10830 font 48
10840 locate 0,1
10850 '文字色：黒　 color rgb(0,0,0)
10860 color rgb(255,255,255)
10870 print "生まれた日を入れて下さい" + chr$(13)
10880 color rgb(255,255,255)
10890 locate 2,3
10900 print "生まれた日(1日~31日):";buf_Day$
10910 color rgb(255,255,255)
10920 'locate 4,6:print ":7"
10930 'locate 9,6:print ":8"
10940 'locate 12,6:print ":9"
10950 locate 4,6
10960 print ":7  :8  :9" + chr$(13)
10970 '=======================
10980 'テンキー　色　白　決定ボタン　青
10990 '=======================
11000 color rgb(255,255,255)
11010 locate 4,8
11020 print ":4  :5  :6" + chr$(13)
11030 color rgb(255,255,255)
11040 locate 4,10
11050 print ":1  :2  :3" + chr$(13)
11060 locate 4,12
11070 print "    :0"
11080 locate 12,12
11090 color rgb(255,0,0)
11100 print ":Ok"
11110 sp_on 4,0: sp_on 5,0:sp_on 6,0
11120 sp_on 7,0:sp_on 8,0:sp_on 9,0
11130 sp_on 10,0:sp_on 11,0:sp_on 12,0
11140 sp_on 13,0:sp_on 14,1
11150 Input_Born_Day2:
11160 key$="":bg=0:y=0:y2=0:bg2=0
11170 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
11180 key$ = inkey$
11190 bg = strig(1)
11200 y = stick(1)
11210 y2 = stick(0)
11220 bg2 = strig(0)
11230 pause 5
11240 wend
11250 '十字キー　ここから
11260 '上の矢印　または、十字キー上
11270 if ((y = -1) or (key$ = chr$(30))) then
11280 select case No
11290 'No=-1:okのとき:初期の状態
11300 '0kボタンから３に移動
11310 '上に行く 処理
11320 case -1:
11330 No=3:sp_on 12,1:sp_on 14,0
11340 pause 200:goto Input_Born_Day2:
11350 '選択肢:3
11360 '3ボタンから 6に移動
11370 case 3:
11380 No=6:sp_on 12,0:sp_on 11,1
11390 pause 200:goto Input_Born_Day2:
11400 '6ボタンから ９に移動
11410 case 6:
11420 No=9:sp_on 10,1:sp_on 11,0
11430 pause 200:goto Input_Born_Day2:
11440 '6ボタンから ９に移動　ここまで
11450 '9で上を押して何もしない
11460 case 9:
11470 '何もしない
11480 No=9
11490 pause 200:goto Input_Born_Day2:
11500 '9で上を押しても何もしない　ここまで
11510 '上　 0ボタンから2ボタン
11520 'sp_on 6,1:1
11530 'sp_on 8,1:5
11540 'sp_on 7,1:7
11550 case 0:
11560 No=2:sp_on 13,0:sp_on 9,1:
11570 pause 200:goto Input_Born_Day2:
11580 '上  0ボタンから2ボタン　ここまで
11590 '2から５になる 上
11600 case 2:
11610 No=5:sp_on 8,1:sp_on 9,0:
11620 pause 200:goto Input_Born_Day2:
11630 case 5:
11640 No=8:sp_on 7,1:sp_on 8,0
11650 pause 200:goto Input_Born_Day2:
11660 case 8:
11670 pause 200:goto Input_Born_Day2:
11680 case 1:
11690 No=4:sp_on 5,1:sp_on 6,0
11700 pause 200:goto Input_Born_Day2:
11710 case 4:
11720 No=7:sp_on 4,1:sp_on 5,0
11730 pause 200:goto Input_Born_Day2:
11740 case 7:
11750 pause 200:goto Input_Born_Day2:
11760 end select
11770 endif
11780 '左３　ここまで
11790 '下の矢印
11800 '中央 2
11810 if ((y=1) or (key$ = chr$(31))) then
11820 select case No
11830 '9から６に下げる
11840 case 9:
11850 No=6:sp_on 11,1:sp_on 10,0
11860 pause 200:goto Input_Born_Day2:
11870 '6から３に下げる
11880 case 6:
11890 No=3:sp_on 12,1:sp_on 11,0
11900 pause 200:goto Input_Born_Day2:
11910 '3から０ｋに変える
11920 case 3:
11930 No=-1:sp_on 14,1:sp_on 12,0
11940 pause 200:goto Input_Born_Day2:
11950 'Okから下のボタンを押しても何もしない
11960 case -1:
11970 pause 200:goto Input_Born_Day2:
11980 case 8:
11990 No=5:sp_on 8,1:sp_on 7,0
12000 pause 200:goto Input_Born_Day2:
12010 case 5:
12020 No=2:sp_on 9,1:sp_on 8,0
12030 pause 200:goto Input_Born_Day2:
12040 case 2:
12050 No=0:sp_on 13,1:sp_on 9,0
12060 pause 200:goto Input_Born_Day2:
12070 case 0:
12080 pause 200:goto Input_Born_Day2:
12090 case 7:
12100 No=4:sp_on 5,1:sp_on 4,0
12110 pause 200:goto Input_Born_Day2:
12120 case 4:
12130 No=1:sp_on 6,1:sp_on 5,0
12140 pause 200:goto Input_Born_Day2:
12150 case 1:
12160 pause 200:goto Input_Born_Day2:
12170 end select
12180 endif
12190 '左へボタン 十字キー　左　or 　カーソル左
12200 if ((y2 = -1) or (key$ = chr$(29))) then
12210 select case No
12220 'Ok ボタン  Okから　左　０に行く
12230 case -1:
12240 No=0:sp_on 13,1:sp_on 14,0
12250 pause 200:goto Input_Born_Day2:
12260 '0 ボタン  左　何もしない
12270 case 0:
12280 pause 200:goto Input_Born_Day2:
12290 case 3:
12300 No=2:sp_on 9,1:sp_on 12,0:
12310 pause 200:goto Input_Born_Day2:
12320 case 2:
12330 No=1:sp_on 6,1:sp_on 9,0:
12340 pause 200:goto Input_Born_Day2:
12350 case 1:
12360 pause 200:goto Input_Born_Day2:
12370 case 6:
12380 No=5:sp_on 8,1:sp_on 11,0
12390 pause 200:goto Input_Born_Day2:
12400 case 5:
12410 No=4:sp_on 5,1:sp_on 8,0
12420 pause 200:goto Input_Born_Day2:
12430 case 4:
12440 pause 200:goto Input_Born_Day2:
12450 case 9:
12460 No=8:sp_on 7,1:sp_on 10,0
12470 pause 200:goto Input_Born_Day2:
12480 case 8:
12490 No=7:sp_on 4,1:sp_on 7,0
12500 pause 200:goto Input_Born_Day2:
12510 case 7:
12520 pause 200:goto Input_Born_Day2:
12530 end select
12540 endif
12550 '右  十字キー　右　or カーソル　右
12560 if ((y2 = 1) or (key$ = chr$(28))) then
12570 select case No
12580 '0ボタンからokボタン右に移動
12590 case 0:
12600 No=-1:sp_on 14,1:sp_on 13,0
12610 pause 200:goto Input_Born_Day2:
12620 '0ボタンからokボタン 右に移動　ここまで
12630 'OKボタンで右を押して何もしない
12640 case -1:
12650 pause 200:goto Input_Born_Day2:
12660 case 1:
12670 No=2:sp_on 9,1:sp_on 6,0
12680 pause 200:goto Input_Born_Day2:
12690 case 2:
12700 No=3:sp_on 12,1:sp_on 9,0
12710 pause 200:goto Input_Born_Day2:
12720 case 3:
12730 pause 200:goto Input_Born_Day2:
12740 case 4:
12750 No=5:sp_on 8,1:sp_on 5,0
12760 pause 200:goto Input_Born_Day2:
12770 case 5:
12780 No=6:sp_on 11,1:sp_on 8,0
12790 pause 200:goto Input_Born_Day2:
12800 case 7:
12810 No=8:sp_on 7,1:sp_on 4,0
12820 pause 200:goto Input_Born_Day2:
12830 case 8:
12840 No=9:sp_on 10,1:sp_on 7,0
12850 pause 200:goto Input_Born_Day2:
12860 case 9:
12870 pause 200:goto Input_Born_Day2:
12880 case 6:
12890 pause 200:goto Input_Born_Day2:
12900 end select
12910 'Okから右ボタンを押して何もしない ここまで
12920 endif
12930 '十字キー　ここまで
12940 '右の丸ボタンを押したとき
12950 if ((bg = 2) or (key$ = chr$(13))) then
12960 'count :決定ボタンを押した回数
12970 select case (count mod 3)
12980 '1桁目入力
12990 case 0:
13000 count = 1:
13010 if (No = -1) then
13020 '1桁目　OKでは何もしない
13030 'goto check:
13040 else
13050 'ok以外のボタンを押したとき
13060 buf_day = No:buf_Day$ = str$(No)
13070 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
13080 locate 2,3
13090 color RGB(255,255,255)
13100 print "生まれた日(1日~31日):";buf_Day2$
13110 endif
13120 check:
13130 if (No >= 1 and No <= 9) then
13140 sp_on 14,0
13150 goto Input_Born_Day2:
13160 else
13170 sp_on 14,0
13180 goto complate:
13190 endif
13200 case 1:
13210 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
13220 count = 2:
13230 'locate 2,3
13240 'color RGB(255,255,255)
13250 'print "生まれた日(1日~31日):";buf_Day$
13260 'Okボタンを押したときの処理
13270 '入力値　10未満のとき
13280 'c = buf_day
13290 if (No = -1) then
13300 'c=buf_day
13310 ' buf_day = c
13320 'buf_Day$ = str$(buf_day)
13330 '10以下のとき
13340 if (buf_day < 10) then
13350 sp_on 14,0
13360 goto complate:
13370 endif
13380 else
13390 'c = No
13400 buf_day = c * 10 + No
13410 'buf_day = c
13420 buf_Day$ =str$(buf_day)
13430 locate 2,3
13440 color Rgb(255,255,255)
13450 print "生まれた日(1日~31日):";buf_Day$
13460 goto Input_Born_Day2:
13470 endif
13480 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13490 case 2:
13500 count=0
13510 'c=val(buf_Day$)
13520 'buf_day=c*10+No
13530 'buf_Day$=str$(buf_day)
13540 'day=buf_day
13550 'locate 2,3
13560 'print "生まれた日(1日〜31日):";buf_Day$
13570 'No=-1:ok ボタンを押したとき
13580 if (No = -1) then
13590 if ((buf_day > 0) and (buf_day < 32)) then
13600 sp_on 14,0
13610 goto complate:
13620 else
13630 goto Input_Born_Day2:
13640 endif
13650 'Okボタン以外を押したとき
13660 else
13670 c=val(buf_Day$)
13680 buf_day = c * 10 + No
13690 buf_Day$ = str$(buf_day)
13700 locate 2,3
13710 print "生まれた日(1日~31日):";buf_Day$
13720 'goto Input_Born_Day2:
13730 endif
13740 case 3:
13750 count = 4
13760 c=val(buf_day$)
13770 buf_day = c * 10 + No
13780 buf_day$ = str$(buf_day)
13790 locate 2,3
13800 print "生まれた日を入れてください:";buf_Day$
13810 year = val(buf_year$)
13820 if (No = -1) then
13830 'goto Input_Born_Day:
13840 sp_on 14,0:No=0
13850 goto complate:
13860 else
13870 goto Input_Born_Month2:
13880 endif
13890 'case 4:
13900 'bufyear=buf_year
13910 'if (No=-1) then
13920 'buf_day = val(buf_day$)
13930 'bufday = buf_day
13940 'sp_on 14,0
13950 'goto complate:
13960 'else
13970 'goto Input_Born_Day2:
13980 'endif
13990 end select
14000 endif
14010 if (bg2=2) then
14020 select case count2
14030 case 0:
14040 if (No=-1) then
14050 'buf_day=0:buf_Day$="**"
14060 if (buf_day>=1 and buf_day<=31) then
14070 count=0:No=0
14080 buf_day=0:buf_Day$="**"
14090 'goto rewrite_day:
14100 else
14110 buf_day=0:buf_Day$="**"
14120 ui_msg"値が範囲外です"
14130 endif
14140 goto rewrite_day:
14150 else
14160 goto rewrite_day:
14170 endif
14180 rewrite_day:
14190 locate 2,3
14200 color rgb(255,255,255)
14210 print "                                      "
14220 locate 2,3
14230 print "生まれた日(1日~31日):";buf_Day$
14240 goto Input_Born_Day2:
14250 end select
14260 endif
14270 '--------------------------Input_Born_Day:-------------------------------------------
14280 complate:
14290 suhiNo = buf_year + buf_month + buf_day
14300 'if (suhiNo < 1000) then
14310 a1 = fix(suhiNo / 1000)
14320 a2 = fix(suhiNo/100) - (a1 * 10)
14330 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14340 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14350 'endif
14360 bufsuhiNo = a1+a2+a3+a4
14370 recomp:
14380 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14390 'bufsuhiNo=a6
14400 goto Kabara_Result_Screen:
14410 else
14420 a5 = fix(bufsuhiNo / 10)
14430 a6 = bufsuhiNo - a5 * 10
14440 bufsuhiNo = a6 + a5
14450 if (bufsuhiNo = 10) then
14460 bufsuhiNo=1
14470 endif
14480 goto Kabara_Result_Screen:
14490 endif
14500 Kabara_Result_Screen:
14510 cls 3:
14520 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14530 gload Gazo$ + "downscreen.png",0,0,800
14540 init "kb:4"
14550 '
14560 play ""
14570 select case (bufsuhiNo)
14580 case 1:
14590 play Voice$ + "Result_Kabara_1_20230607.mp3"
14600 case 2:
14610 play Voice$ + "Result_Kabara_2_20231112.mp3"
14620 case 3:
14630 play Voice$ + "Result_Kabara_3_20230607.mp3"
14640 case 4:
14650 play Voice$ + "Result_Kabara_4_20230607.mp3"
14660 case 5:
14670 play Voice$ + "Result_Kabara_5_20231112.mp3"
14680 case 6:
14690 play Voice$ + "Result_Kabara_6_20230607.mp3"
14700 case 7:
14710 play Voice$ + "Result_Kabara_7_20230607.mp3"
14720 case 8:
14730 play Voice$ + "Result_Kabara_8_20230607.mp3"
14740 case 9:
14750 play Voice$ + "Result_Kabara_9_20230607.mp3"
14760 case 11:
14770 play Voice$ + "Result_Kabara_11_20230607.mp3"
14780 case 22:
14790 play Voice$ + "Result_Kabara_22_20230607.mp3"
14800 case 33:
14810 play Voice$ + "Result_Kabara_33_20230607.mp3"
14820 end select
14830 font 48
14840 key$ = "":bg = 0:bg2=0
14850 'COLOR rgb(255,255,255)
14860 'print "●診断結果"+chr$(13)
14870 locate 0,2
14880 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14890 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14900 locate 0,15:
14910 color rgb(255,255,255)
14920 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
14930 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14940 key$ = inkey$
14950 bg = strig(1)
14960 bg2 = strig(0)
14970 pause 200
14980 wend
14990 'Enter or JoyPad right
15000 if ((key$ = chr$(13)) or (bg = 2)) then
15010 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
15020 endif
15030 if ((bg2=2)) then
15040 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
15050 endif
15060 'suhiNo1 = fix(bufsuhiNo / 10)
15070 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
15080 'bufsuhiNo = suhiNo1 + suhiNo2
15090 'goto recomp:
15100 'endif
15110 'print chr$(13)
15120 'color rgb(255,0,0)
15130 'print"トップ:エンターキー,S or s:保存"+chr$(13)
15140 'key$ = input$(1)
15150 'if key$ = chr$(13) then goto Main_Screen:
15160 '"Menu2 占いのルール"
15170 Suhi_Rule:
15180 '数秘術占いルールの表示
15190 cls 3:play "":init"kb:4"
15200 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
15210 gload Gazo$ + "downscreen.png",0,0,800
15220 'cls 3:
15230 'line (0,0) - (1500,60),rgb(0,0,255),bf
15240 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
15250 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15260 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15270 locate 0,2:Font 48
15280 print chr$(13) + chr$(13)
15290 color rgb(0,0,0)
15300 print "誕生日を単数変換します";chr$(13)
15310 print "数字の範囲:1~９,11,22,33";chr$(13)
15320 print "例:1973年11月22日の場合";chr$(13)
15330 print "1+9+7+3+11+22=53 ";chr$(13)
15340 print "→ 5 + 3 = 8" + chr$(13)
15350 print "故に8が数秘ナンバーになります";chr$(13)
15360 locate 0,15
15370 color rgb(255,255,255)
15380 print "ジョイパッドの右を押してください"
15390 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15400 '"key$ = input$(1)"
15410 '"if key$ = chr$(13) then goto Main_Screen:"
15420 suhi_rule_selection:
15430 bg = 0:key$ = "":bg2=0
15440 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15450 bg = strig(1)
15460 key$ = inkey$
15470 bg2=strig(0)
15480 pause 200
15490 wend
15500 if ((bg = 2) or (key$ = chr$(13))) then
15510 pause 200:cls 4:goto Main_Screen:
15520 endif
15530 if (bg2=2) then
15540 play "":pause 200
15550 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15560 goto suhi_rule_selection:
15570 endif
15580 '2.設定
15590 '2-1.トップ画面に戻る
15600 Setting:
15610 cls 3:init"kb:4":font 48:No=0
15620 play ""
15630 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15640 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15650 gload Gazo$ + "downscreen.png",0,0,800
15660 print chr$(13) + chr$(13) + chr$(13)
15670 color rgb(255,255,255):sp_on 0,1:
15680 print "番号を選んでください" + chr$(13)
15690 print " :1.トップ画面に戻る"+ chr$(13)
15700 print " :2.バーズアイグリッドデータリスト" + chr$(13)
15710 print " :3.未実装" + chr$(13)
15720 print " :4.未実装" + chr$(13)
15730 color rgb(0,0,0)
15740 locate 1,15:print "1.トップ画面に戻るを選択"
15750 Setting_Selection:
15760 y=0:key$="":bg=0:bg2=0
15770 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
15780 y=stick(1)
15790 key$ = inkey$
15800 bg=strig(1)
15810 bg2 = strig(0)
15820 pause 2
15830 wend
15840 if ((bg = 2) or (key$ = chr$(13))) then
15850 select case No
15860 case 0:
15870 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 3:goto Main_Screen:
15880 case 1:
15890 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto BirdsEyeGrid_Entry:
15900 end select
15910 endif
15920 if (bg2 = 2) then
15930 play "":pause 200
15940 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15950 goto Setting_Selection:
15960 endif
15970 if (y=1) then
15980 select case No
15990 case 0:
16000       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:goto Setting_Selection:
16010 end select
16020 endif
16030 '3.Help
16040 '3-1.ルールの表示
16050 '3-2.バージョン
16060 '3-3.トップに戻る
16070 Help:
16080 cls 3:Font 48:No=0
16090 play ""
16100 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
16110 gload Gazo$ + "downscreen.png",0,0,800
16120 color rgb(255,255,255)
16130 print chr$(13)+chr$(13)+chr$(13)
16140 print "番号を選んでください"+chr$(13)
16150 print " :1.ルールの表示" + chr$(13)
16160 print " :2.バージョンの表示" + chr$(13)
16170 print " :3.参考文献" + chr$(13)
16180 print " :4.トップ画面に戻る" + chr$(13)
16190 color rgb(0,0,0)
16200 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
16210 locate 1,15
16220 print "                                      "
16230 locate 1,15
16240 print "1.ルールの表示を選択"
16250 init"kb:4"
16260 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16270 Help_Select:
16280 bg=0:key$="":y=0:bg2=0
16290 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
16300 y = stick(1)
16310 key$ = inkey$
16320 bg = strig(1)
16330 bg2 = strig(0)
16340 pause 200
16350 wend
16360 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16370 if ((y = 1) or (key$ = chr$(31))) then
16380 select case No
16390 case 0:
16400 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16410 case 1:
16420 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16430 case 2:
16440 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16450 case 3:
16460 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16470 end select
16480 endif
16490 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16500 if ((y = -1) or (key$ = chr$(30))) then
16510 select case No
16520 case 0:
16530 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16540 case 1:
16550 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16560 case 2:
16570 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16580 case 3:
16590 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16600 end select
16610 endif
16620 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16630 if ((bg = 2) or (key$ = chr$(13))) then
16640 select case No
16650 case 0:
16660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16670 case 1:
16680 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16690 case 2:
16700 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16710 '3:Top画面に行く
16720 case 3:
16730 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16740 end select
16750 endif
16760 if (bg2 = 2) then
16770 play "":pause 200
16780 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16790 goto Help_Select:
16800 endif
16810 '数秘術占い　トップ画面
16820 Kabara_TopScreen:
16830 cls 3:play ""
16840 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16850 gload Gazo$ + "downscreen.png",0,0,800
16860 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16870 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16880 init"kb:4":No=0
16890 color rgb(255,255,255)
16900 print chr$(13)+chr$(13)+chr$(13)
16910 print "番号を選んでください" + chr$(13)
16920 print " :1.数秘術占い" + chr$(13)
16930 print " :2.バーズアイグリット" + chr$(13)
16940 print " :3.相性占い" + chr$(13)
16950 print " :4.トップ画面に戻る" + chr$(13)
16960 color rgb(0,0,0)
16970 locate 1,15:print "1.数秘術占いを選択"
16980 Kabara_TopScreen2:
16990 y = 0:bg = 0:key$ = "":bg2 = 0
17000 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
17010 key$ = inkey$
17020 bg = strig(1)
17030 y = stick(1)
17040 bg2 = strig(0)
17050 pause 5
17060 wend
17070 '選択ボタン
17080 'カーソル　と　ジョイパッド　の下
17090 if ((y = 1) or (key$ = chr$(31))) then
17100 select case No
17110 case 2:
17120 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17130 case 3:
17140 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17150 case 0:
17160 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17170 case 1:
17180 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17190 end select
17200 endif
17210 'カーソル　上
17220 if ((y=-1) or (key$=chr$(30))) then
17230 select case No
17240 case 0:
17250 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17260 case 1:
17270 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17280 case 2:
17290 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17300 case 3:
17310 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17320 end select
17330 endif
17340 '決定ボタン
17350 'ジョイパッドの右　or  Enter key
17360 if ((bg = 2) or (key$ = chr$(13))) then
17370 select case No
17380 case 0:
17390 '1.数秘術占い
17400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17410 case 3:
17420 '4.メイン画面にいく
17430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17440 case 1:
17450 '2.バースアイグリッド
17460 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17470 case 2:
17480 '3.相性占い
17490 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17500 end select
17510 endif
17520 if (bg2 = 2) then
17530 play "":pause 200
17540 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17550 goto Kabara_TopScreen2:
17560 endif
17570 '1.バースアイグリット　名入力
17580 Inputname1:
17590 cls 3:init"kb:4":font 48
17600 bg=0:key$="":y=0:No=-1:name1$="":i=1
17610 gload Gazo$ + "Selection.png",1,10,100
17620 'Line 1:☓
17630 'A:選択肢
17640 sp_def 15,(50,250),16,16
17650 'B:選択肢
17660 sp_def 16,(200,250),16,16
17670 'C:選択肢
17680 sp_def 17,(350,250),16,16
17690 'D:選択肢
17700 sp_def 18,(500,250),16,16
17710 'E:選択肢
17720 sp_def 19,(630,250),16,16
17730 'F:選択肢
17740 sp_def 20,(780,250),16,16
17750 'G:選択肢
17760 sp_def 21,(930,250),16,16
17770 'Line 2:☓
17780 'H:選択肢
17790 sp_def 22,(50,345),16,16
17800 'I:選択肢
17810 sp_def 23,(200,345),16,16
17820 'J:選択肢
17830 sp_def 24,(350,345),16,16
17840 'K:選択肢
17850 sp_def 25,(500,345),16,16
17860 'L:選択肢
17870 sp_def 26,(630,345),16,16
17880 'M:選択肢
17890 sp_def 27,(780,345),16,16
17900 'N:選択肢
17910 sp_def 28,(930,345),16,16
17920 'Line 3:☓
17930 'O:選択肢
17940 sp_def 29,(50,440),16,16
17950 'P:選択肢
17960 sp_def 30,(200,440),16,16
17970 'Q:選択肢
17980 sp_def 31,(350,440),16,16
17990 'R:選択肢
18000 sp_def 32,(500,440),16,16
18010 'S:選択肢
18020 sp_def 33,(630,440),16,16
18030 'T:選択肢
18040 sp_def 34,(780,440),16,16
18050 'U:選択肢
18060 sp_def 35,(930,440),16,16
18070 'Line 4:◯
18080 'V:選択肢
18090 sp_def 36,(50,535),16,16
18100 'W:選択肢
18110 sp_def 37,(200,535),16,16
18120 'X:選択肢
18130 sp_def 38,(350,535),16,16
18140 'Y:選択肢
18150 sp_def 39,(500,535),16,16
18160 'Z:選択肢
18170 sp_def 40,(630,535),16,16
18180 'Ok:選択肢
18190 sp_def 41,(780,535),16,16
18200 'sp_def 42,(930,535),16,16
18210 'Line 1
18220 'A
18230 sp_on 15,0
18240 'B
18250 sp_on 16,0
18260 'C
18270 sp_on 17,0
18280 'D
18290 sp_on 18,0
18300 'E
18310 sp_on 19,0
18320 'F
18330 sp_on 20,0
18340 'G
18350 sp_on 21,0
18360 'Line 1
18370 'Line 2
18380 'H
18390 sp_on 22,0
18400 'I
18410 sp_on 23,0
18420 'J
18430 sp_on 24,0
18440 'K
18450 sp_on 25,0
18460 'L
18470 sp_on 26,0
18480 'M
18490 sp_on 27,0
18500 'N
18510 sp_on 28,0
18520 'Line 2
18530 'Line 3
18540 'O
18550 sp_on 29,0
18560 'P
18570 sp_on 30,0
18580 'Q
18590 sp_on 31,0
18600 'R
18610 sp_on 32,0
18620 'S
18630 sp_on 33,0
18640 'T
18650 sp_on 34,0
18660 'U
18670 sp_on 35,0
18680 'Line 3
18690 'Line 4
18700 'V
18710 sp_on 36,0
18720 'W
18730 sp_on 37,0
18740 'X
18750 sp_on 38,0
18760 'Y
18770 sp_on 39,0
18780 'Z
18790 sp_on 40,0
18800 'Ok
18810 sp_on 41,1
18820 'Line 4
18830 'sp_on 42,1
18840 'Line 1
18850 'sp_put 15,(50,250),0,0
18860 'sp_put 16,(200,250),0,0
18870 'sp_put 17,(350,250),0,0
18880 'sp_put 18,(500,250),0,0
18890 'sp_put 19,(630,250),0,0
18900 'sp_put 20,(780,250),0,0
18910 'sp_put 21,(930,250),0,0
18920 'Line 2
18930 'sp_put 22,(50,345),0,0
18940 'sp_put 23,(200,345),0,0
18950 'sp_put 24,(350,345),0,0
18960 'sp_put 25,(500,345),0,0
18970 'sp_put 26,(630,345),0,0
18980 'sp_put 27,(780,345),0,0
18990 'sp_put 28,(930,345),0,0
19000 'Line 3
19010 'sp_put 29,(50,440),0,0
19020 'sp_put 30,(200,440),0,0
19030 'sp_put 31,(350,440),0,0
19040 'sp_put 32,(500,440),0,0
19050 'sp_put 33,(630,440),0,0
19060 'sp_put 34,(780,440),0,0
19070 'sp_put 35,(930,440),0,0
19080 'Line 4
19090 'sp_put 36,(50,535),0,0
19100 'sp_put 37,(200,535),0,0
19110 'sp_put 38,(350,535),0,0
19120 'sp_put 39,(500,535),0,0
19130 'sp_put 40,(630,535),0,0
19140 sp_put 41,(780,535),0,0
19150 'sp_put 42,(930,536),0,0
19160 gload Gazo$ + "Screen1.png",0,0,0
19170 color rgb(255,255,255)
19180 locate 1,3
19190 print "名前の姓をアルファベットで入力してください"
19200 locate 1,5
19210 print " A  B  C  D  E  F  G"
19220 locate 1,7
19230 print " H  I  J  K  L  M  N"
19240 locate 1,9
19250 print " O  P  Q  R  S  T  U"
19260 locate 1,11
19270 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
19280 locate 1,15:color rgb(0,0,0)
19290 print "名前の姓:" + name1$
19300 select_name1:
19310 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
19320 '有効ボタン
19330 '1.決定ボタン(bg:2)
19340 '2.Enter Key$:chr$(13)
19350 '3.カーソル上 (chr$(31))
19360 '4.カーソル　左 (chr$(29))
19370 '5.ジョイパッド　上 (y:1)
19380 '6:ジョイパッド　左 (y2:-1)
19390 '7:ジョイパッド　下 (y:-1)
19400 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19410 key$ = inkey$
19420 'ジョイパッドの決定:bg
19430 bg = strig(1)
19440 y = stick(1)
19450 y2 = stick(0)
19460 pause 200
19470 wend
19480 '====================================
19490 'Birds Eye Grid 名前入力
19500 '入力スタイル　アルファベット入力
19510 'sp_on:　スプライトのオンオフ
19520 'sp_put :表示位置
19530 'No:ボタン番号
19540 '====================================
19550 'カーソルで下に行く
19560 if ((y=-1) or (key$=chr$(31))) then
19570 select case No
19580 '1.Ok ボタン
19590 'sp_on スプライトのオンオフ
19600 'sp_put スプライトを表示
19610 case -1:
19620 '1.アルファベット　入力ボタン
19630 '実装未完全なので終了
19640 'Ok → T ○ :No:20=T
19650 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19660 'T  → M ○
19670 case 20:
19680 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19690 'M  →　F ○
19700 case 13:
19710 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19720 'F  → Ok
19730 case 6:
19740 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19750 end select
19760 endif
19770 '2.決定ボタン
19780 if ((key$ = chr$(13)) OR  (bg = 2)) then
19790 select case No
19800 case -1:
19810 'スプライトをOFFにする
19820 sp_on 41,0
19830 end select
19840 endif
19850 '3.カーソル　左
19860 if (key$ = chr$(29) or (y2 =-1)) then
19870 select case No
19880 'Line 4
19890 'Line 4
19900 '1.
19910 'Z:-1 :Ok ボタン
19920 'Ok → Z
19930 case -1:
19940 'Ok →　Z
19950 'Ok ボタン OFF,Z Button ON
19960 'No=26:Z
19970 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19980 '2.
19990 '26:Zボタン Z→ Y
20000 case 26:
20010 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
20020 '3.
20030 '25:Yボタン  Y → X
20040 case 25:
20050 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
20060 '4
20070 '24:Xボタン X → W
20080 case 24:
20090 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20100 '23:Wボタン X → W
20110 '5
20120 case 23:
20130 '22:Vボタン W → V
20140 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20150 case 22:
20160 '-1:V→ Ok
20170 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
20180 'Line 3
20190 case 20:
20200 '33:T34  → S:33 :◯
20210 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
20220 case 19:
20230 '32:S:33 → R:32 :◯
20240 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
20250 case 18:
20260 '31:R:32 → Q:31 :◯
20270 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20280 '30:O → P :◯
20290 case 17:
20300 '30:Q:31 → P:30 :◯
20310 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20320 case 16:
20330 '29:P:30 → O:29 :◯
20340 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20350 case 15:
20360 '28:O:29 → U:21  :◯
20370 'O:OFF,U:ON
20380 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20390 '27:U:21 → T:20  :◯
20400 case 21:
20410 'U:OFF:T:ON
20420 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20430 'Line 2
20440 '26:M:13 → L:12 : ○
20450 case 13:
20460 'M:OFF,L:ON
20470 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20480 '25:L:12 → K:11 : ○
20490 case 12:
20500 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20510 '24:K:11 → J:10 : ○
20520 case 11:
20530 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20540 '23:J:10 → I:9  : ○
20550 case 10:
20560 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20570 '22:I:9 → H:8    :○
20580 case 9:
20590 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20600 '21:H:8 → N:14:   :○
20610 case 8:
20620 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20630 '20:N:14 → M:13:   :○
20640 case 14:
20650 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20660 '●.Line 1:
20670 '19:F:20 → E:19 : ☓
20680 'F:OFF,E:ON
20690 case 6:
20700 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20710 '18:E → D
20720 'E:OFF,D:ON
20730 case 5:
20740 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20750 '17:D → C
20760 'D:OFF,C:ON
20770 case 4:
20780 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20790 case 3:
20800 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20810 case 2:
20820 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20830 case 1:
20840 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20850 case 7:
20860 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20870 end select
20880 endif
20890 '上から下の方向
20900 if ((key$ = chr$(31)) or  (y = 1)) then
20910 select case No
20920 '●.1
20930 '1:A→H
20940 case 1:
20950 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20960 '2:H→O
20970 case 8:
20980 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20990 '3:O→V
21000 case 15:
21010 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
21020 '4:V→A
21030 case 22:
21040 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
21050 '●.2
21060 '5.B→I
21070 case 2:
21080 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
21090 '6.I→P
21100 case 9:
21110 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
21120 '7.P→W
21130 case 16:
21140 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21150 '8.W→B
21160 case 23:
21170 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
21180 '●.3
21190 '9.C→J
21200 case 3:
21210 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
21220 '10.J→Q
21230 case 10:
21240 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21250 '11.Q→X
21260 case 17:
21270 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21280 '12.X→C
21290 case 24:
21300 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
21310 '●.4
21320 '13.D→K
21330 case 4:
21340 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21350 '14.K→R
21360 case 11:
21370 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21380 '15.R→Y
21390 case 18:
21400 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21410 '16.Y→D
21420 case 25:
21430 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21440 '●.5
21450 '17.E→L
21460 case 5:
21470 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21480 '18.L→S
21490 case 12:
21500 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21510 '19.S→Z
21520 case 19:
21530 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21540 '20.Z→E
21550 case 26:
21560 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21570 '●.6
21580 '21.F→M
21590 case 6:
21600 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21610 '22.M→T
21620 case 13:
21630 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21640 '23.T→Ok
21650 case 20:
21660 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21670 '24.Ok→F
21680 case -1:
21690 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21700 '●.7
21710 '25.G→N
21720 case 7:
21730 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21740 '26.N→U
21750 case 14:
21760 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21770 '27.U→G
21780 case 21:
21790 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21800 end select
21810 endif
21820 '決定ボタン　で名前の姓に文字を追加。
21830 if (key$ = chr$(13) or bg = 2) then
21840 select case No
21850 'Okボタン
21860 case -1:
21870 goto Inputname2:
21880 'Aの文字
21890 case 1:
21900 'if len(n$)=0 then
21910 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21920 'else
21930 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21940 'endif
21950 goto select_name1:
21960 case 2:
21970 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
21980 end select
21990 endif
22000 Input_name1_Birdseye:
22010 cls 3:init "kb:2":play ""
22020 gload Gazo$ + "Input_Birtheye2.png",0,0,0
22030 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
22040 color rgb(255,255,255)
22050 locate 1,2:print "名前をアルファベットで入れてください"
22060 color rgb(0,0,0)
22070 locate 1,5:Input "名前（姓の部分）:",name1$
22080 '27.U→G
22090 'locate 1,5:print "Hit any key"
22100 n1 = len(name1$)
22110 if (n1 < 11) then
22120 for i=1 to n1
22130 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
22140 next i
22150 endif
22160 goto Inputname2:
22170 '2.グリッドアイ　姓の入力
22180 'end
22190 Inputname2:
22200 cls 3:init"kb:2":font 48:play ""
22210 gload Gazo$ + "Input_Birtheye1.png",0,0,0
22220 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
22230 color rgb(255,255,255)
22240 locate 1,2:print "名前をアルファベットで入れてください"
22250 color rgb(0,0,0)
22260 locate 1,5:Input "名前(名の部分):",name2$
22270 n2 = len(name2$)
22280 for i=1 to n2
22290 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
22300 next i
22310 '計算領域
22320 Complate:
22330 'name1
22340 for i=0 to 25
22350 for n=1 to len(name1$)
22360 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22370 b = val(buf_chart$(i,1))
22380 buffer(b-1) = buffer(b-1) + 1
22390 endif
22400 next n
22410 next i
22420 'name2
22430 for i=0 to 25
22440 for n=1 to len(name2$)
22450 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22460 c = val(buf_chart$(i,1))
22470 buffer(c - 1) = buffer(c - 1) + 1
22480 endif
22490 next n
22500 next i
22510 '結果表示領域
22520 Result_Birtheye1:
22530 cls 3:init"kb:4":No=0:play "":'音を止める
22540 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22550 gload Gazo$ + "downscreen.png",0,0,800
22560 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
22570 color rgb(255,255,255)
22580 '1の表示
22590 locate 3,14:print buffer(0);
22600 '2の表示
22610 locate 3,9:print buffer(1);
22620 '3の表示
22630 locate 3,5:print buffer(2);
22640 '4の表示
22650 locate 10,14:print buffer(3);
22660 '5の表示
22670 locate 10,9:print buffer(4);
22680 '6の表示
22690 locate 10,5:print buffer(5);
22700 '7の表示
22710 locate 15,14:print buffer(6);
22720 '8の表示
22730 locate 15,9:print buffer(7);
22740 '9の表示
22750 locate 15,5:print buffer(8);
22760 'name を大文字に変換
22770 locate 5,3:print ucase$(name1$ + name2$)
22780 color rgb(0,0,0)
22790 'bg:右のボタン  ,bg2:左のボタン
22800 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
22810 bg=0:key$="":bg2=0
22820 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22830 'Enterと決定ボタン
22840 key$ = inkey$
22850 '右ボタン:1
22860 bg = strig(1)
22870 '左の丸ボタン:0
22880 bg2=strig(0)
22890 pause 200
22900 wend
22910 if ((bg=2) or (key$=chr$(13))) then
22920 'データーをクリアしてトップ画面に行く
22930 'for i=0 to 8
22940 'buffer(i)=0
22950 'next i
22960 'for n=0 to 9
22970 'buf_name1$(n) = ""
22980 'buf_name2$(n) = ""
22990 'next n
23000 'Topに行く
23010 'goto Main_Screen:
23020 'メニューを開く
23030 'goto BirdsEye_Result2:
23040 'Menu(ui_select) リストに飛ぶ
23050 goto Result_Birtheye_List1:
23060 endif
23070 if (bg2=2) then
23080 'データーをクリアする
23090 for i=0 to 8
23100 buffer(i)=0
23110 next i
23120 for n=0 to 9
23130 buf_name1$(n)=""
23140 buf_name2$(n)=""
23150 next n
23160 goto Main_Screen:
23170 endif
23180 'goto Result_Birtheye1:
23190 'Result_Birtheye2:
23200 'cls 3:color rgb(255,255,255)
23210 'end
23220 'Memory 消去
23230 '
23240 '横のフォーカスライン
23250 BirdsEye_Result2:
23260 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
23270 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
23280 Forcus1_buffer$(2)="○"
23290 else
23300 Forcus1_buffer$(2)="☓"
23310 endif
23320 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
23330 Forcus1_buffer$(1)="○"
23340 else
23350 Forcus1_buffer$(1) = "☓"
23360 endif
23370 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
23380 Forcus1_buffer$(0)="○"
23390 else
23400 Forcus1_buffer$(0)="☓"
23410 endif
23420 gload Gazo$ + "Screen1.png",0,0,0
23430 color rgb(255,0,0):
23440 locate 1,1
23450 print "バーズアイグリッド(フォーカスライン1)"
23460 color rgb(255,255,255)
23470 locate 1,3:
23480 print "●.横のフォーカスライン"
23490 locate 1,5
23500 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23510 locate 1,7
23520 print "2.調停者ライン:"+Forcus1_buffer$(1)
23530 locate 1,9
23540 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23550 color rgb(0,0,0)
23560 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23570 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
23580 key$ = inkey$
23590 bg = strig(1)
23600 bg2 = strig(0)
23610 pause 200
23620 wend
23630 if ((bg=2) or (key$=chr$(13))) then
23640 goto BirdsEye_Result3:
23650 endif
23660 if (bg2=2) then
23670 for i=0 to 8
23680 buffer(i)=0
23690 next i
23700 goto Main_Screen:
23710 endif
23720 BirdsEye_Result3:
23730 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23740 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23750 Forcus2_buffer$(2)="○"
23760 else
23770 Forcus2_buffer$(2)="☓"
23780 endif
23790 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23800 Forcus2_buffer$(1)="○"
23810 else
23820 Forcus2_buffer$(1) = "☓"
23830 endif
23840 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23850 Forcus2_buffer$(0)="○"
23860 else
23870 Forcus2_buffer$(0)="☓"
23880 endif
23890 gload Gazo$ + "Screen1.png",0,0,0
23900 color rgb(255,0,0):
23910 locate 1,1
23920 print "バーズアイグリッド(フォーカスライン2)"
23930 color rgb(255,255,255)
23940 locate 1,3
23950 print "●.縦のフォーカスライン"
23960 locate 1,5
23970 print "1.表現者ライン:" + Forcus2_buffer$(2)
23980 locate 1,7
23990 print "2.司令塔ライン:" + Forcus2_buffer$(1)
24000 locate 1,9
24010 print "3.指導者ライン:" + Forcus2_buffer$(0)
24020 color rgb(0,0,0)
24030 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
24040 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24050 key$ = inkey$
24060 bg = strig(1)
24070 bg2 = strig(0)
24080 pause 200
24090 wend
24100 if ((bg = 2) or (key$ = chr$(13))) then
24110 goto BirdsEye_Result4:
24120 endif
24130 if (bg2=2) then
24140 for i=0 to 8
24150 buffer(i)=0
24160 next i
24170 goto Main_Screen:
24180 endif
24190 BirdsEye_Result4:
24200 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
24210 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
24220 Forcus3_buffer$(1) = "○"
24230 else
24240 Forcus3_buffer$(1) = "☓"
24250 endif
24260 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
24270 Forcus3_buffer$(0) = "○"
24280 else
24290 Forcus3_buffer$(0) = "☓"
24300 endif
24310 gload Gazo$ + "Screen1.png",0,0,0
24320 color rgb(255,0,0):
24330 locate 1,1
24340 print "バーズアイグリッド(フォーカスライン3)"
24350 color rgb(255,255,255)
24360 locate 1,3:
24370 print "●.斜めのフォーカスライン"
24380 locate 1,5
24390 print "1.成功者ライン:"+Forcus3_buffer$(1)
24400 locate 1,7
24410 print "2.セレブライン:"+Forcus3_buffer$(0)
24420 color rgb(0,0,0)
24430 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
24440 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24450 key$ = inkey$
24460 bg = strig(1)
24470 bg2 = strig(0)
24480 pause 200
24490 wend
24500 if ((bg=2) or (key$=chr$(13))) then
24510 goto Result_Birtheye1:
24520 endif
24530 if (bg2=2) then
24540 'データークリア
24550 for i=0 to 8
24560 buffer(i) = 0
24570 next i
24580 goto Main_Screen:
24590 endif
24600 References1:
24610 cls 3:key$ = "":bg = 0:play "":font 48-16
24620 gload Gazo$ + "Reference1_20230703.png",0,0,0
24630 print chr$(13)+chr$(13)+chr$(13)
24640 color rgb(0,0,0)
24650 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24660 print "Author:carol Adrinne,PhD"+chr$(13)
24670 print "出版社:幻冬舎" + chr$(13)
24680 print "HP:www.carolAdrienne.jp/"+chr$(13)
24690 print "ISBN:978-4-344-01394-0"+chr$(13)
24700 print "定価:1500円 + 税"+chr$(13)
24710 color rgb(255,255,255)
24720 locate 1,23
24730 print "ジョイパッド右：次へ"
24740 while (key$ <> chr$(13) and bg <> 2)
24750 bg = strig(1)
24760 key$ = inkey$
24770 wend
24780 '
24790 if ((bg = 2) or (key$ = chr$(13))) then
24800 pause 200:goto References2:
24810 endif
24820 'ユダヤの秘儀 カバラ大占術
24830 References2:
24840 cls 3:play "":bg = 0:key$ = ""
24850 gload Gazo$ + "Reference2_20230703.png",0,0,0
24860 '参考文献２
24870 'カバラ大占術
24880 print chr$(13) + chr$(13) + chr$(13)
24890 color  rgb(0,0,0):font 48-16
24900 locate 1,3
24910 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24920 print "著者：浅野　八郎" + chr$(13)
24930 print "出版社:NON BOOK" + chr$(13)
24940 print "ISBN:4-396-10364-6" + chr$(13)
24950 print "定価:829円 + 税"
24960 color rgb(255,255,255)
24970 locate 1,23
24980 print "ジョイパッド右：トップへ行く"
24990 while ((key$ <> chr$(13)) and (bg <> 2))
25000 bg = strig(1)
25010 key$ = inkey$
25020 wend
25030 if ((bg = 2) or (key$ = chr$(13))) then
25040 pause 200:goto Main_Screen:
25050 endif
25060 end
25070 '1.数秘術　トップ画面
25080 Kabara_First_Top:
25090 cls 3:color rgb(255,255,255):play ""
25100 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
25110 gload Gazo$ + "downscreen.png",0,0,800
25120 No=0:init"kb:4"
25130 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
25140 print chr$(13);chr$(13)
25150 color rgb(255,255,255)
25160 locate 3,4:No=0
25170 print "番号選んでください" + chr$(13)
25180 print " :1.数秘術占い" + chr$(13)
25190 print " :2.トップ画面に戻る" + chr$(13)
25200 color rgb(0,0,0)
25210 sp_on 0,1
25220 locate 1,15:print "1.数秘術番号を求めるを選択"
25230 'KeyBord:true
25240 'Joy Pad:true
25250 '上、下:true
25260 '
25270 'ｂｇ：決定ボタン
25280 'カーソル　上
25290 'カーソル　下
25300 Kabara_First_Top2:
25310 key$ = "":bg = 0:y = 0:
25320 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
25330 key$ = inkey$
25340 bg = strig(1)
25350 y = stick(1)
25360 'PauseでCPUを休める
25370 pause 5
25380 wend
25390 '1.カーソル　下 処理 chr$(31)
25400 'カーソル　下
25410 if ((key$ = chr$(31)) or (y = 1)) then
25420 select case No
25430 '
25440 case 1:
25450 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
25460 case 0:
25470 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25480 'case 2:
25490 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25500 end select
25510 endif
25520 '2.カーソル　上 処理 chr$(30)
25530 if ((key$ = chr$(30)) or (y = -1)) then
25540 select case No
25550 case 0:
25560 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25570 case 1:
25580 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25590 'case 2:
25600 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25610 end select
25620 endif
25630 '3.決定 処理  bg:2 or Enter key:chr$(13)
25640 if ((bg = 2) or (key$ = chr$(13))) then
25650 select case No
25660 case 0:
25670 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25680 goto Kabara_TopScreen:
25690 'case 1:
25700 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25710 case 1:
25720 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25730 end select
25740 endif
25750 '
25760 'Kabara 相性占い トップ画面
25770 Kabara_Aishou_Top:
25780 cls 3:y=0:key$="":bg=0:No=0
25790 play ""
25800 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25810 gload Gazo$ + "downscreen.png",0,0,800
25820 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25830 print chr$(13) + chr$(13)
25840 locate 0,4:color rgb(255,255,255)
25850 'print "Ok"
25860 '
25870 print "番号を選んでください" + chr$(13)
25880 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
25890 print " :2.ビジネスの相性占い" + chr$(13)
25900 print " :3.トップ画面に戻る" + chr$(13)
25910 sp_on 0,1:sp_on 1,0:sp_on 2,0
25920 color rgb(0,0,0)
25930 locate 1,15:print "1.男女2人の相性占いを選択"
25940 Kabara_Aishou_Top2:
25950 key$ = "":y = 0:bg = 0:
25960 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
25970 'ジョイパッド(右) ,十字キー (上下)
25980 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
25990 y = stick(1)
26000 key$ = inkey$
26010 bg = strig(1)
26020 pause 200
26030 wend
26040 'カーソル　下 or 十字キー　下
26050 if ((key$ = chr$(31)) or (y = 1)) then
26060 select case No
26070 '選択肢　1 - 2に変更
26080 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26090 'ok
26100 case 0:
26110 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26120 '選択肢　2 - 3に変更
26130 case 1:
26140 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
26150 'リリース時 case 2コメント解除
26160 case 2:
26170 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
26180 case else:
26190 goto Kabara_Aishou_Top2:
26200 end select
26210 endif
26220 '十字キー　上　、カーソル　上
26230 if ((key$ = chr$(30)) or (y = -1)) then
26240 select case No
26250 case 0:
26260 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
26270 case 1:
26280 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
26290 case 2:
26300 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26310 case else:
26320 goto Kabara_Aishou_Top2:
26330 end select
26340 endif
26350 '十字キー　上下:選択
26360 'ジョイパッド 右:決定
26370 if ((bg = 2) or (key$ = chr$(13))) then
26380 select case No
26390 '1.男女の相性
26400 case 0:
26410 '男女の相性占い(未実装)トップ画面に飛ぶ
26420 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
26430 '2ビジネスの相性
26440 case 1:
26450 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
26460 case 2:
26470 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
26480 end select
26490 endif
26500 '0.男女の相性　トップ画面　ここから
26510 Danjyo_Aisyou_Top:
26520 cls 3:y=0:key$="":bg=0:No=0
26530 play ""
26540 gload Gazo$ + "Screen1.png",0,0,0
26550 gload Gazo$ + "downscreen.png",0,0,800
26560 print chr$(13) + chr$(13)
26570 locate 0,4:color rgb(255,255,255)
26580 'print "Ok"
26590 '
26600 print "番号を選んでください" + chr$(13)
26610 print " :1.自分と異性の相性(未実装)" + chr$(13)
26620 print " :2.男女2人の相性" + chr$(13)
26630 print " :3.トップ画面に戻る" + chr$(13)
26640 sp_on 0,1:sp_on 1,0:sp_on 2,0
26650 color rgb(0,0,0)
26660 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
26670 Danjyo_Aisyou_Top2:
26680 key$ = "":y = 0:bg = 0:
26690 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
26700 'ジョイパッド(右) ,十字キー (上下)
26710 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
26720 y = stick(1)
26730 key$ = inkey$
26740 bg = strig(1)
26750 pause 200
26760 wend
26770 'カーソル　下 or 十字キー　下
26780 if ((key$ = chr$(31)) or (y = 1)) then
26790 select case No
26800 '選択肢　1 - 2に変更
26810 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26820 'ok
26830 case 0:
26840 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
26850 '選択肢　2 - 3に変更
26860 case 1:
26870 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
26880 'リリース時 case 2コメント解除
26890 case 2:
26900 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
26910 case else:
26920 goto Kabara_Aishou_Top2:
26930 end select
26940 endif
26950 '十字キー　上　、カーソル　上
26960 if ((key$ = chr$(30)) or (y = -1)) then
26970 select case No
26980 case 0:
26990 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
27000 case 1:
27010 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
27020 case 2:
27030 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
27040 case else:
27050 goto Kabara_Aishou_Top2:
27060 end select
27070 endif
27080 '十字キー　上下:選択
27090 'ジョイパッド 右:決定
27100 if ((bg = 2) or (key$ = chr$(13))) then
27110 select case No
27120 '1.自分と異性の相性
27130 case 0:
27140 '未実装
27150 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
27160 '2男女の相性 男性の名前入力に飛ぶ
27170 case 1:
27180 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
27190 case 2:
27200 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
27210 end select
27220 endif
27230 '0.男女の相性　トップ画面　ここまで
27240 '1.男女の相性 ここから
27250 '1-1.男性の名前を入力
27260 Danjyo_Aisyou_Input_Name_male:
27270 No=0:color RGB(255,255,255)
27280 '入力:キーボード
27290 cls 3:init "kb:2"
27300 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27310 gload Gazo$ + "downscreen.png",0,0,800
27320 for i=0 to 3
27330 buf_male_year(i)=0
27340 next i
27350 play "":color rgb(255,0,0):male_name$ = ""
27360 locate 0,1
27370 print "男性の相性" + chr$(13) + chr$(13)
27380 color rgb(255,255,255):
27390 locate 0,3
27400 print "男性の相性を求めます。男性の名前を" + chr$(13)
27410 print "入れてください" + chr$(13)
27420 locate 0,15:color rgb(0,0,0)
27430 Input "男性の名前:",male_name$
27440 '-------------------------------------------
27450 '1-2:男性の生まれた年代
27460 Danjyo_Aisyou_Input_Born_Year:
27470 No=0:color RGB(255,255,255)
27480 cls 3:init "kb:4"
27490 gload Gazo$ + "Screen1.png",0,0,0
27500 gload Gazo$ + "downscreen.png",0,0,800
27510 play "":color rgb(255,0,0)
27520 '-------------------------------------------
27530 font 48
27540 locate 0,1
27550 '文字色：黒　 color rgb(0,0,0)
27560 color rgb(255,255,255)
27570 print "男性の生まれた年代を入れて下さい" + chr$(13)
27580 color rgb(255,255,255)
27590 locate 1,3
27600 print "男性の生まれた年代(西暦4桁):";buf_male_year$
27610 color rgb(255,255,255)
27620 'locate 4,6:print ":7"
27630 'locate 9,6:print ":8"
27640 'locate 12,6:print ":9"
27650 locate 4,6
27660 print ":7  :8  :9" + chr$(13)
27670 color rgb(255,255,255)
27680 locate 4,8
27690 print ":4  :5  :6" + chr$(13)
27700 color rgb(255,255,255)
27710 locate 4,10
27720 print ":1  :2  :3" + chr$(13)
27730 locate 4,12
27740 print "    :0"
27750 locate 12,12
27760 color rgb(0,0,255)
27770 print ":Ok"
27780 sp_on 4,0: sp_on 5,0:sp_on 6,0
27790 sp_on 7,0:sp_on 8,0:sp_on 9,0
27800 sp_on 10,0:sp_on 11,0:sp_on 12,0
27810 sp_on 13,0:sp_on 14,1
27820 '-------------------------------------------------------------------------------------
27830 Danjyo_Aisyou_Input_Male_Born_Year2:
27840 key$="":bg=0:y=0:y2=0:bg2=0:
27850 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27860 key$ = inkey$
27870 bg = strig(1)
27880 y = stick(1)
27890 y2 = stick(0)
27900 bg2=strig(0)
27910 pause 200
27920 wend
27930 '十字キー　ここから
27940 '上の矢印　または、十字キー上
27950 if ((y = -1) or (key$ = chr$(30))) then
27960 select case No
27970 'No=-1:okのとき:初期の状態
27980 '0kボタンから３に移動
27990 '上に行く 処理
28000 case -1:
28010 No=3:sp_on 12,1:sp_on 14,0
28020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28030 '選択肢:3
28040 '3ボタンから 6に移動
28050 case 3:
28060 No=6:sp_on 12,0:sp_on 11,1
28070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28080 '6ボタンから ９に移動
28090 case 6:
28100 No=9:sp_on 10,1:sp_on 11,0
28110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28120 '6ボタンから ９に移動　ここまで
28130 '9で上を押して何もしない
28140 case 9:
28150 '何もしない
28160 No=9
28170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28180 '9で上を押しても何もしない　ここまで
28190 '上　 0ボタンから2ボタン
28200 'sp_on 6,1:1
28210 'sp_on 8,1:5
28220 'sp_on 7,1:7
28230 case 0:
28240 No=2:sp_on 13,0:sp_on 9,1:
28250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28260 '上  0ボタンから2ボタン　ここまで
28270 '2から５になる 上
28280 case 2:
28290 No=5:sp_on 8,1:sp_on 9,0:
28300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28310 case 5:
28320 No=8:sp_on 7,1:sp_on 8,0
28330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28340 case 8:
28350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28360 case 1:
28370 No=4:sp_on 5,1:sp_on 6,0
28380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28390 case 4:
28400 No=7:sp_on 4,1:sp_on 5,0
28410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28420 case 7:
28430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28440 end select
28450 endif
28460 '左３　ここまで
28470 '下の矢印
28480 '中央 2
28490 if ((y=1) or (key$ = chr$(31))) then
28500 select case No
28510 '9から６に下げる
28520 case 9:
28530 No=6:sp_on 11,1:sp_on 10,0
28540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28550 '6から３に下げる
28560 case 6:
28570 No=3:sp_on 12,1:sp_on 11,0
28580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28590 '3から０ｋに変える
28600 case 3:
28610 No=-1:sp_on 14,1:sp_on 12,0
28620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28630 'Okから下のボタンを押しても何もしない
28640 case -1:
28650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28660 case 8:
28670 No=5:sp_on 8,1:sp_on 7,0
28680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28690 case 5:
28700 No=2:sp_on 9,1:sp_on 8,0
28710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28720 case 2:
28730 No=0:sp_on 13,1:sp_on 9,0
28740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28750 case 0:
28760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28770 case 7:
28780 No=4:sp_on 5,1:sp_on 4,0
28790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28800 case 4:
28810 No=1:sp_on 6,1:sp_on 5,0
28820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28830 case 1:
28840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28850 end select
28860 endif
28870 '左へボタン 十字キー　左　or 　カーソル左
28880 if ((y2 = -1) or (key$ = chr$(29))) then
28890 select case No
28900 'Ok ボタン  Okから　左　０に行く
28910 case -1:
28920 No=0:sp_on 13,1:sp_on 14,0
28930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28940 '0 ボタン  左　何もしない
28950 case 0:
28960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28970 case 3:
28980 No=2:sp_on 9,1:sp_on 12,0:
28990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29000 case 2:
29010 No=1:sp_on 6,1:sp_on 9,0:
29020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29030 case 1:
29040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29050 case 6:
29060 No=5:sp_on 8,1:sp_on 11,0
29070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29080 case 5:
29090 No=4:sp_on 5,1:sp_on 8,0
29100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29110 case 4:
29120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29130 case 9:
29140 No=8:sp_on 7,1:sp_on 10,0
29150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29160 case 8:
29170 No=7:sp_on 4,1:sp_on 7,0
29180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29190 case 7:
29200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29210 end select
29220 endif
29230 '右  十字キー　右　or カーソル　右
29240 if ((y2 = 1) or (key$ = chr$(28))) then
29250 select case No
29260 '0ボタンからokボタン右に移動
29270 case 0:
29280 No=-1:sp_on 14,1:sp_on 13,0
29290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29300 '0ボタンからokボタン 右に移動　ここまで
29310 'OKボタンで右を押して何もしない
29320 case -1:
29330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29340 case 1:
29350 No=2:sp_on 9,1:sp_on 6,0
29360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29370 case 2:
29380 No=3:sp_on 12,1:sp_on 9,0
29390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29400 case 3:
29410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29420 case 4:
29430 No=5:sp_on 8,1:sp_on 5,0
29440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29450 case 5:
29460 No=6:sp_on 11,1:sp_on 8,0
29470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29480 case 7:
29490 No=8:sp_on 7,1:sp_on 4,0
29500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29510 case 8:
29520 No=9:sp_on 10,1:sp_on 7,0
29530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29540 case 9:
29550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29560 case 6:
29570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29580 end select
29590 'Okから右ボタンを押して何もしない ここまで
29600 endif
29610 '十字キー　ここまで
29620 '==============================
29630 'ここから
29640 '==============================
29650 if ((bg = 2) or (key$ = chr$(13))) then
29660 select case count
29670 case 0:
29680 count = 1
29690 if (No = -1) then
29700 count = 0:No=0
29710 buf_male_year(0) = No
29720 'Okボタンを押したとき
29730 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29740 else
29750 'Okボタン以外が押されたとき
29760 if (No >= 1 and No <= 2) then
29770 buf_year$="":buf_year$ = str$(No) + "***"
29780 buf_year = No:a= No
29790 buf_Jyoushi_Born_Day(0) = No
29800 locate 1,3
29810 color rgb(255,255,255)
29820 print "男性の生まれた年代(西暦4桁):";buf_year$
29830 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29840 else
29850 count=0
29860 ui_msg"数字が範囲外になります。"
29870 buf_year$="":buf_year=0
29880 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29890 endif
29900 endif
29910 case 1:
29920 count = 2
29930 if (No = -1) then
29940 count = 1
29950 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29960 else
29970 buf_year = a * 10 + No
29980 b=buf_year
29990 buf_year$ = str$(buf_year) + "**"
30000 buf_male_year(0)=buf_year
30010 locate 1,3
30020 color rgb(255,255,255)
30030 print "                                                                "
30040 locate 1,3
30050 print "男性の生まれた年代(西暦4桁):" + buf_year$
30060 'if (No = -1) then
30070 'count=1
30080 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30090 endif
30100 case 2:
30110 count=3
30120 if (No=-1) then
30130 count =2
30140 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30150 else
30160 buf_year = b * 10 + No
30170 c=buf_year
30180 buf_year$ = str$(buf_year) + "*"
30190 buf_male_year(0) = buf_year
30200 locate 1,3
30210 color rgb(255,255,255)
30220 print "                                        "
30230 locate 1,3
30240 print "男性の生まれた年代(西暦4桁):";buf_year$
30250 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30260 endif
30270 case 3:
30280 count=4
30290 if (No = -1) then
30300 No=0
30310 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30320 else
30330 buf_year = c * 10 + No
30340 buf_year$ = str$(buf_year)
30350 buf_male_year(0) = buf_year
30360 locate 1,3
30370 color RGB(255,255,255)
30380 print "                                      "
30390 locate 1,3
30400 print "男性の生まれた年代(西暦4桁):";buf_year$
30410 buf_year=val(buf_year$)
30420 'year=val(buf_year$)
30430 'if (No=-1) then
30440 'goto Input_Born_Month:
30450 'else
30460 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30470 endif
30480 case 4:
30490 'bufyear=buf_year
30500 if (No=-1) then
30510 buf_year = val(buf_year$)
30520 buf_male_year(0)=buf_year
30530 sp_on 14,0:No=0
30540 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30550 else
30560 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30570 endif
30580 end select
30590 endif
30600 '===========================
30610 'ここまでを部下のところにコピーする.
30620 '===========================
30630 if (bg2 = 2) then
30640 select case count2
30650 case 0:
30660 if (No = -1) then
30670 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
30680 count=0
30690 locate 1,3
30700 color rgb(255,255,255)
30710 print "                                      "
30720 locate 1,3
30730 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
30740 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30750 else
30760 '(buf_year=0) then
30770 buf_male_year=0:buf_male_year$="****"
30780 locate 1,3
30790 print "                                       "
30800 locate 1,3
30810 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
30820 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30830 'endif
30840 endif
30850 end select
30860 endif
30870 '-------生まれた年代　男性-------------
30880 '-------生まれた月　男性-------------
30890 '1-2:男性の生まれた月
30900 Danjyo_Aisyou_Input_Male_Born_Month:
30910 cls 3:play "":count=0:count2=0
30920 'No=-1:Okのとき
30930 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
30940 for i=0 to 1
30950 buf_male_month(i)=0
30960 next i
30970 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30980 gload Gazo$ + "Screen1.png",0,0,0
30990 gload Gazo$ + "downscreen.png",0,0,800
31000 'Init"kb:4"
31010 '音声ファイル再生 2023.06.07
31020 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
31030 font 48
31040 locate 0,1
31050 '文字色：黒　 color rgb(0,0,0)
31060 '文字色:白
31070 color rgb(255,255,255)
31080 print "男性の生まれた月を入れて下さい" + chr$(13)
31090 '文字色:白
31100 color rgb(255,255,255)
31110 locate 1,3
31120 '文字色:白
31130 print "男性の生まれた月(1月~12月):"+buf_male_Month$
31140 color rgb(255,255,255)
31150 'locate 4,6:print ":7"
31160 'locate 9,6:print ":8"
31170 'locate 12,6:print ":9"
31180 locate 4,6
31190 '文字色:赤
31200 print ":7  :8  :9" + chr$(13)
31210 color rgb(255,255,255)
31220 locate 4,8
31230 print ":4  :5  :6" + chr$(13)
31240 color rgb(255,255,255)
31250 locate 4,10
31260 print ":1  :2  :3" + chr$(13)
31270 locate 4,12
31280 print "    :0"
31290 locate 12,12
31300 color rgb(0,0,255)
31310 print ":Ok"
31320 sp_on 4,0: sp_on 5,0:sp_on 6,0
31330 sp_on 7,0:sp_on 8,0:sp_on 9,0
31340 sp_on 10,0:sp_on 11,0:sp_on 12,0
31350 sp_on 13,0:sp_on 14,1
31360 '----------------------------------------------------------------------------------------
31370 Danjyo_Aisyou_Input_Male_Born_Month2:
31380 key$="":bg=0:y=0:y2=0:bg2=0
31390 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31400 key$ = inkey$
31410 bg = strig(1)
31420 y = stick(1)
31430 y2 = stick(0)
31440 bg2 = strig(0)
31450 pause 5
31460 wend
31470 '十字キー　ここから
31480 '上の矢印　または、十字キー上
31490 if ((y = -1) or (key$ = chr$(30))) then
31500 select case No
31510 'No=-1:okのとき:初期の状態
31520 '0kボタンから３に移動
31530 '上に行く 処理
31540 case -1:
31550 No=3:sp_on 12,1:sp_on 14,0
31560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31570 '選択肢:3
31580 '3ボタンから 6に移動
31590 case 3:
31600 No=6:sp_on 12,0:sp_on 11,1
31610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31620 '6ボタンから ９に移動
31630 case 6:
31640 No=9:sp_on 10,1:sp_on 11,0
31650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31660 '6ボタンから ９に移動　ここまで
31670 '9で上を押して何もしない
31680 case 9:
31690 '何もしない
31700 No=9
31710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31720 '9で上を押しても何もしない　ここまで
31730 '上　 0ボタンから2ボタン
31740 'sp_on 6,1:1
31750 'sp_on 8,1:5
31760 'sp_on 7,1:7
31770 case 0:
31780 No=2:sp_on 13,0:sp_on 9,1:
31790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31800 '上  0ボタンから2ボタン　ここまで
31810 '2から５になる 上
31820 case 2:
31830 No=5:sp_on 8,1:sp_on 9,0:
31840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31850 case 5:
31860 No=8:sp_on 7,1:sp_on 8,0
31870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31880 case 8:
31890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31900 case 1:
31910 No=4:sp_on 5,1:sp_on 6,0
31920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31930 case 4:
31940 No=7:sp_on 4,1:sp_on 5,0
31950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31960 case 7:
31970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31980 end select
31990 endif
32000 '左３　ここまで
32010 '下の矢印
32020 '中央 2
32030 if ((y=1) or (key$ = chr$(31))) then
32040 select case No
32050 '9から６に下げる
32060 case 9:
32070 No=6:sp_on 11,1:sp_on 10,0
32080 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
32090 '6から３に下げる
32100 case 6:
32110 No=3:sp_on 12,1:sp_on 11,0
32120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32130 '3から０ｋに変える
32140 case 3:
32150 No=-1:sp_on 14,1:sp_on 12,0
32160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32170 'Okから下のボタンを押しても何もしない
32180 case -1:
32190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32200 case 8:
32210 No=5:sp_on 8,1:sp_on 7,0
32220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32230 case 5:
32240 No=2:sp_on 9,1:sp_on 8,0
32250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32260 case 2:
32270 No=0:sp_on 13,1:sp_on 9,0
32280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32290 case 0:
32300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32310 case 7:
32320 No=4:sp_on 5,1:sp_on 4,0
32330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32340 case 4:
32350 No=1:sp_on 6,1:sp_on 5,0
32360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32370 case 1:
32380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32390 end select
32400 endif
32410 '左へボタン 十字キー　左　or 　カーソル左
32420 if ((y2 = -1) or (key$ = chr$(29))) then
32430 select case No
32440 'Ok ボタン  Okから　左　０に行く
32450 case -1:
32460 No=0:sp_on 13,1:sp_on 14,0
32470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32480 '0 ボタン  左　何もしない
32490 case 0:
32500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32510 case 3:
32520 No=2:sp_on 9,1:sp_on 12,0:
32530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32540 case 2:
32550 No=1:sp_on 6,1:sp_on 9,0:
32560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32570 case 1:
32580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32590 case 6:
32600 No=5:sp_on 8,1:sp_on 11,0
32610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32620 case 5:
32630 No=4:sp_on 5,1:sp_on 8,0
32640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32650 case 4:
32660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32670 case 9:
32680 No=8:sp_on 7,1:sp_on 10,0
32690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32700 case 8:
32710 No=7:sp_on 4,1:sp_on 7,0
32720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32730 case 7:
32740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32750 end select
32760 endif
32770 '右  十字キー　右　or カーソル　右
32780 if ((y2 = 1) or (key$ = chr$(28))) then
32790 select case No
32800 '0ボタンからokボタン右に移動
32810 case 0:
32820 No=-1:sp_on 14,1:sp_on 13,0
32830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32840 '0ボタンからokボタン 右に移動　ここまで
32850 'OKボタンで右を押して何もしない
32860 case -1:
32870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32880 case 1:
32890 No=2:sp_on 9,1:sp_on 6,0
32900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32910 case 2:
32920 No=3:sp_on 12,1:sp_on 9,0
32930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32940 case 3:
32950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32960 case 4:
32970 No=5:sp_on 8,1:sp_on 5,0
32980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32990 case 5:
33000 No=6:sp_on 11,1:sp_on 8,0
33010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33020 case 7:
33030 No=8:sp_on 7,1:sp_on 4,0
33040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33050 case 8:
33060 No=9:sp_on 10,1:sp_on 7,0
33070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33080 case 9:
33090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33100 case 6:
33110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33120 end select
33130 'Okから右ボタンを押して何もしない ここまで
33140 endif
33150 '十字キー　ここまで
33160 '右の丸ボタン + Enter key 決定キー
33170 if ((bg=2) or (key$=chr$(13))) then
33180 select case count
33190 case 0:
33200 if (No=-1) then No=0
33210 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
33220 if (buf_male_month > 1 and buf_male_month < 10)  then
33230 buf_male_Month$ = str$(buf_male_month)
33240 'buf_month=No
33250 endif
33260 if (buf_male_month = 1)  then
33270 buf_male_Month$ = str$(buf_male_month) + "*"
33280 'c=buf_month
33290 endif
33300 locate 1,3
33310 print "                                     "
33320 color RGB(255,255,255)
33330 locate 1,3
33340 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33350 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33360 case 1:
33370 count = 2:
33380 'c = val(buf_Month$)
33390 if (No = -1) then
33400 'count=0
33410 No=0
33420 month=buf_male_month
33430 buf_male_month=val(buf_male_Month$)
33440 month=buf_male_month
33450 buf_Jyoushi_Born_Day(1)=month
33460 '生まれた日に飛ぶ
33470 goto Danjyo_Aisyou_Input_Male_Born_Day:
33480 else
33490 buf_male_month = c*10 + No
33500 'if (buf_month = 1) then
33510 'buf_Month$ = str$(buf_month)
33520 'endif
33530 buf_male_Month$ = str$(buf_male_month)
33540 buf_Jyoushi_Born_Day(1) = buf_male_month
33550 locate 0,3
33560 print "                                           "
33570 locate 1,3
33580 color Rgb(255,255,255)
33590 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33600 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33610 endif
33620 case 2:
33630 '==================================
33640 '何もしない
33650 'coun = 2
33660 '==================================
33670 'c= val(buf_Month$)
33680 'buf_month = c*10 + No
33690 'buf_Month$ = str$(buf_month)
33700 'locate 2,3
33710 'print "上司の生まれた月(1月～12月):";buf_Month$
33720 'goto Jyoushi_Input_Born_Month2:
33730 'case 3:
33740 'count=4
33750 'b=val(buf_month$)
33760 'buf_month=c*10+No
33770 'buf_Month$=str$(buf_month)
33780 'locate 2,3
33790 'print "上司の生まれた月(1月～12月):";buf_Month$
33800 'buf_month=val(buf_Month$)
33810 'year=val(buf_year$)
33820 if (No=-1) then
33830 No=0
33840 goto Danjyo_Aisyou_Input_Male_Born_Day:
33850 else
33860 goto Danjyo_Aisyou_Input_Male_Born_Day2:
33870 endif
33880 'case 4:
33890 'bufyear=buf_year
33900 'if (No=-1) then
33910 'buf_month = val(buf_Month$)
33920 'month = buf_month
33930 'sp_on 14,0
33940 'goto Input_Born_Day:
33950 'else
33960 'goto Input_Born_Month2:
33970 'endif
33980 end select
33990 endif
34000 '左の丸ボタン　キャンセル
34010 if (bg2=2) then
34020 select case count2
34030 case 0:
34040 if (No = -1) then
34050 buf_male_month=0:buf_male_Month$="**"
34060 count=0
34070 'goto rewrite2:
34080 else
34090 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
34100 buf_male_month = 0:buf_male_Month$ = "**"
34110 locate 0,3
34120 color rgb(255,255,255)
34130 print "                                       "
34140 goto rewrite2:
34150 if (No>12) then
34160 ui_msg"値が範囲外です。"
34170 goto rewrite2:
34180 endif
34190 endif
34200 endif
34210 rewrite2:
34220 locate 2,3
34230 color rgb(255,255,255)
34240 print "                                      "
34250 locate 2,3
34260 print "男性の生まれた月(1月~12月):"+buf_male_Month$
34270 goto Danjyo_Aisyou_Input_Male_Born_Month2:
34280 end select
34290 'endif
34300 endif
34310 end
34320 '-------生まれた月　男性 ここまで-------------
34330 '-------生まれた日　男性 ここから-------------
34340 Danjyo_Aisyou_Input_Male_Born_Day:
34350 cls 3:play "":count=0:count2=0
34360 'No=-1:Okのとき
34370 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
34380 for i=0 to 1
34390 buf_day(i)=0
34400 next i
34410 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34420 gload Gazo$ + "Screen1.png",0,0,0
34430 gload Gazo$ + "downscreen.png",0,0,800
34440 'Init"kb:4"
34450 '音声ファイル再生 2023.06.07
34460 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
34470 font 48
34480 locate 0,1
34490 '文字色：黒　 color rgb(0,0,0)
34500 '文字色:白
34510 color rgb(255,255,255)
34520 print "男性の生まれた日を入れて下さい" + chr$(13)
34530 '文字色:白
34540 color rgb(255,255,255)
34550 locate 1,3
34560 '文字色:白
34570 print "男性の生まれた日(1月~31月):" + buf_Day$
34580 color rgb(255,255,255)
34590 'locate 4,6:print ":7"
34600 'locate 9,6:print ":8"
34610 'locate 12,6:print ":9"
34620 locate 4,6
34630 '文字色:赤
34640 print ":7  :8  :9" + chr$(13)
34650 color rgb(255,255,255)
34660 locate 4,8
34670 print ":4  :5  :6" + chr$(13)
34680 color rgb(255,255,255)
34690 locate 4,10
34700 print ":1  :2  :3" + chr$(13)
34710 locate 4,12
34720 print "    :0"
34730 locate 12,12
34740 color rgb(0,0,255)
34750 print ":Ok"
34760 sp_on 4,0: sp_on 5,0:sp_on 6,0
34770 sp_on 7,0:sp_on 8,0:sp_on 9,0
34780 sp_on 10,0:sp_on 11,0:sp_on 12,0
34790 sp_on 13,0:sp_on 14,1
34800 '-------------------------------------------------
34810 Danjyo_Aisyou_Input_Male_Born_Day2:
34820 key$="":bg=0:y=0:y2=0:bg2=0
34830 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34840 key$ = inkey$
34850 bg = strig(1)
34860 y = stick(1)
34870 y2 = stick(0)
34880 bg2 = strig(0)
34890 pause 5
34900 wend
34910 '十字キー　ここから
34920 '上の矢印　または、十字キー上
34930 if ((y = -1) or (key$ = chr$(30))) then
34940 select case No
34950 'No=-1:okのとき:初期の状態
34960 '0kボタンから３に移動
34970 '上に行く 処理
34980 case -1:
34990 No=3:sp_on 12,1:sp_on 14,0
35000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35010 '選択肢:3
35020 '3ボタンから 6に移動
35030 case 3:
35040 No=6:sp_on 12,0:sp_on 11,1
35050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35060 '6ボタンから ９に移動
35070 case 6:
35080 No=9:sp_on 10,1:sp_on 11,0
35090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35100 '6ボタンから ９に移動　ここまで
35110 '9で上を押して何もしない
35120 case 9:
35130 '何もしない
35140 No=9
35150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35160 '9で上を押しても何もしない　ここまで
35170 '上　 0ボタンから2ボタン
35180 'sp_on 6,1:1
35190 'sp_on 8,1:5
35200 'sp_on 7,1:7
35210 case 0:
35220 No=2:sp_on 13,0:sp_on 9,1:
35230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35240 '上  0ボタンから2ボタン　ここまで
35250 '2から５になる 上
35260 case 2:
35270 No=5:sp_on 8,1:sp_on 9,0:
35280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35290 case 5:
35300 No=8:sp_on 7,1:sp_on 8,0
35310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35320 case 8:
35330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35340 case 1:
35350 No=4:sp_on 5,1:sp_on 6,0
35360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35370 case 4:
35380 No=7:sp_on 4,1:sp_on 5,0
35390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35400 case 7:
35410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35420 end select
35430 endif
35440 '左３　ここまで
35450 '下の矢印
35460 '中央 2
35470 if ((y=1) or (key$ = chr$(31))) then
35480 select case No
35490 '9から６に下げる
35500 case 9:
35510 No=6:sp_on 11,1:sp_on 10,0
35520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35530 '6から３に下げる
35540 case 6:
35550 No=3:sp_on 12,1:sp_on 11,0
35560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35570 '3から０ｋに変える
35580 case 3:
35590 No=-1:sp_on 14,1:sp_on 12,0
35600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35610 'Okから下のボタンを押しても何もしない
35620 case -1:
35630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35640 case 8:
35650 No=5:sp_on 8,1:sp_on 7,0
35660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35670 case 5:
35680 No=2:sp_on 9,1:sp_on 8,0
35690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35700 case 2:
35710 No=0:sp_on 13,1:sp_on 9,0
35720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35730 case 0:
35740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35750 case 7:
35760 No=4:sp_on 5,1:sp_on 4,0
35770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35780 case 4:
35790 No=1:sp_on 6,1:sp_on 5,0
35800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35810 case 1:
35820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35830 end select
35840 endif
35850 '左へボタン 十字キー　左　or 　カーソル左
35860 if ((y2 = -1) or (key$ = chr$(29))) then
35870 select case No
35880 'Ok ボタン  Okから　左　０に行く
35890 case -1:
35900 No=0:sp_on 13,1:sp_on 14,0
35910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35920 '0 ボタン  左　何もしない
35930 case 0:
35940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35950 case 3:
35960 No=2:sp_on 9,1:sp_on 12,0:
35970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35980 case 2:
35990 No=1:sp_on 6,1:sp_on 9,0:
36000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36010 case 1:
36020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36030 case 6:
36040 No=5:sp_on 8,1:sp_on 11,0
36050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36060 case 5:
36070 No=4:sp_on 5,1:sp_on 8,0
36080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36090 case 4:
36100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36110 case 9:
36120 No=8:sp_on 7,1:sp_on 10,0
36130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36140 case 8:
36150 No=7:sp_on 4,1:sp_on 7,0
36160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36170 case 7:
36180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36190 end select
36200 endif
36210 '右  十字キー　右　or カーソル　右
36220 if ((y2 = 1) or (key$ = chr$(28))) then
36230 select case No
36240 '0ボタンからokボタン右に移動
36250 case 0:
36260 No=-1:sp_on 14,1:sp_on 13,0
36270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36280 '0ボタンからokボタン 右に移動　ここまで
36290 'OKボタンで右を押して何もしない
36300 case -1:
36310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36320 case 1:
36330 No=2:sp_on 9,1:sp_on 6,0
36340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36350 case 2:
36360 No=3:sp_on 12,1:sp_on 9,0
36370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36380 case 3:
36390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36400 case 4:
36410 No=5:sp_on 8,1:sp_on 5,0
36420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36430 case 5:
36440 No=6:sp_on 11,1:sp_on 8,0
36450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36460 case 7:
36470 No=8:sp_on 7,1:sp_on 4,0
36480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36490 case 8:
36500 No=9:sp_on 10,1:sp_on 7,0
36510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36520 case 9:
36530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36540 case 6:
36550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36560 end select
36570 'Okから右ボタンを押して何もしない ここまで
36580 endif
36590 '十字キー　ここまで
36600 '右の丸ボタン + Enter key 決定キー
36610 if ((bg=2) or (key$=chr$(13))) then
36620 select case count
36630 case 0:
36640 if (No=-1) then No=0
36650 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
36660 if (buf_male_day > 1 and buf_male_day < 10)  then
36670 buf_male_Day$ = str$(buf_male_day)
36680 'buf_month=No
36690 endif
36700 if (buf_male_day = 1)  then
36710 buf_male_Day$ = str$(buf_male_day) + "*"
36720 'c=buf_month
36730 endif
36740 locate 1,3
36750 print "                                     "
36760 color RGB(255,255,255)
36770 locate 1,3
36780 print "男性の生まれた日(1月~31月):" + buf_male_Day$
36790 goto Danjyo_Aisyou_Input_Male_Born_Day2:
36800 case 1:
36810 count = 2:
36820 'c = val(buf_Month$)
36830 if (No = -1) then
36840 'count=0
36850 No=0
36860 day=buf_male_Day
36870 buf_male_Day=val(buf_male_Day$)
36880 day=buf_male_Day
36890 buf_Jyoushi_Born_Day(2)=day
36900 '生まれた日に飛ぶ
36910 goto Danjyo_Aisyou_Input_Male_Born_Day:
36920 else
36930 buf_male_Day = c*10 + No
36940 'if (buf_month = 1) then
36950 'buf_Month$ = str$(buf_month)
36960 'endif
36970 buf_male_Day$ = str$(buf_male_Day)
36980 buf_male_Born_Day(2) = buf_male_Day:
36990 locate 0,3
37000 print "                                           "
37010 locate 1,3
37020 color Rgb(255,255,255)
37030 print "男性の生まれた月(1月~12月):" + buf_male_Day$
37040 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37050 endif
37060 case 2:
37070 '==================================
37080 '何もしない
37090 'coun = 2
37100 '==================================
37110 'c= val(buf_Month$)
37120 'buf_month = c*10 + No
37130 'buf_Month$ = str$(buf_month)
37140 'locate 2,3
37150 'print "上司の生まれた月(1月～12月):";buf_Month$
37160 'goto Jyoushi_Input_Born_Month2:
37170 'case 3:
37180 'count=4
37190 'b=val(buf_month$)
37200 'buf_month=c*10+No
37210 'buf_Month$=str$(buf_month)
37220 'locate 2,3
37230 'print "上司の生まれた月(1月～12月):";buf_Month$
37240 'buf_month=val(buf_Month$)
37250 'year=val(buf_year$)
37260 if (No=-1) then
37270 No=0
37280 goto Danjyo_Aisyou_Input_Male_Born_Day:
37290 else
37300 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37310 endif
37320 'case 4:
37330 'bufyear=buf_year
37340 'if (No=-1) then
37350 'buf_month = val(buf_Month$)
37360 'month = buf_month
37370 'sp_on 14,0
37380 'goto Input_Born_Day:
37390 'else
37400 'goto Input_Born_Month2:
37410 'endif
37420 end select
37430 endif
37440 '左の丸ボタン　キャンセル
37450 if (bg2=2) then
37460 select case count2
37470 case 0:
37480 if (No = -1) then
37490 buf_male_day=0:buf_male_Day$="**"
37500 count=0
37510 'goto rewrite2:
37520 else
37530 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
37540 buf_male_day = 0:buf_male_Day$ = "**"
37550 locate 0,3
37560 color rgb(255,255,255)
37570 print "                                       "
37580 goto rewrite2:
37590 if (No>12) then
37600 ui_msg"値が範囲外です。"
37610 goto rewrite2:
37620 endif
37630 endif
37640 endif
37650 rewrite2:
37660 locate 2,3
37670 color rgb(255,255,255)
37680 print "                                      "
37690 locate 2,3
37700 print "男性の生まれた日(1月~31月):"+buf_male_Day$
37710 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37720 end select
37730 'endif
37740 endif
37750 end
37760 '-------生まれた日　女性　ここまで-------------
37770 '1-1.女性の名前を入力
37780 Danjyo_Aisyou_Input_Name_female:
37790 No=0:color RGB(255,255,255)
37800 '入力:キーボード
37810 cls 3:init "kb:2"
37820 gload Gazo$ + "Screen1.png",0,0,0
37830 gload Gazo$ + "downscreen.png",0,0,800
37840 play "":color rgb(255,0,0):female_name$ = ""
37850 locate 0,1
37860 print "女性の相性" + chr$(13) + chr$(13)
37870 color rgb(255,255,255):
37880 locate 0,3
37890 print "女性の相性を求めます。男性の名前を" + chr$(13)
37900 print "入れてください" + chr$(13)
37910 locate 0,15:color rgb(0,0,0)
37920 Input "女性の名前:",female_name$
37930 '-------------------------------------------
37940 '-------生まれた年代　女性 ここから-------------
37950 Danjyo_Aisyou_Input_feMale_Born_Year:
37960 cls 3:play "":count=0:count2=0
37970 'No=-1:Okのとき
37980 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
37990 for i=0 to 1
38000 buf_day(i)=0
38010 next i
38020 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
38030 gload Gazo$ + "Screen1.png",0,0,0
38040 gload Gazo$ + "downscreen.png",0,0,800
38050 'Init"kb:4"
38060 '音声ファイル再生 2023.06.07
38070 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
38080 font 48
38090 locate 0,1
38100 '文字色：黒　 color rgb(0,0,0)
38110 '文字色:白
38120 color rgb(255,255,255)
38130 print "女性の生まれた年代を入れて下さい" + chr$(13)
38140 '文字色:白
38150 color rgb(255,255,255)
38160 locate 1,3
38170 '文字色:白
38180 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
38190 color rgb(255,255,255)
38200 'locate 4,6:print ":7"
38210 'locate 9,6:print ":8"
38220 'locate 12,6:print ":9"
38230 locate 4,6
38240 '文字色:赤
38250 print ":7  :8  :9" + chr$(13)
38260 color rgb(255,255,255)
38270 locate 4,8
38280 print ":4  :5  :6" + chr$(13)
38290 color rgb(255,255,255)
38300 locate 4,10
38310 print ":1  :2  :3" + chr$(13)
38320 locate 4,12
38330 print "    :0"
38340 locate 12,12
38350 color rgb(0,0,255)
38360 print ":Ok"
38370 sp_on 4,0: sp_on 5,0:sp_on 6,0
38380 sp_on 7,0:sp_on 8,0:sp_on 9,0
38390 sp_on 10,0:sp_on 11,0:sp_on 12,0
38400 sp_on 13,0:sp_on 14,1
38410 '---------------------------------------------
38420 Danjyo_Aisyou_Input_feMale_Born_Year2:
38430 key$="":bg=0:y=0:y2=0:bg2=0:
38440 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38450 key$ = inkey$
38460 bg = strig(1)
38470 y = stick(1)
38480 y2 = stick(0)
38490 bg2=strig(0)
38500 pause 5
38510 wend
38520 '十字キー　ここから
38530 '上の矢印　または、十字キー上
38540 if ((y = -1) or (key$ = chr$(30))) then
38550 select case No
38560 'No=-1:okのとき:初期の状態
38570 '0kボタンから３に移動
38580 '上に行く 処理
38590 case -1:
38600 No=3:sp_on 12,1:sp_on 14,0
38610 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
38620 '選択肢:3
38630 '3ボタンから 6に移動
38640 case 3:
38650 No=6:sp_on 12,0:sp_on 11,1
38660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38670 '6ボタンから ９に移動
38680 case 6:
38690 No=9:sp_on 10,1:sp_on 11,0
38700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38710 '6ボタンから ９に移動　ここまで
38720 '9で上を押して何もしない
38730 case 9:
38740 '何もしない
38750 No=9
38760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38770 '9で上を押しても何もしない　ここまで
38780 '上　 0ボタンから2ボタン
38790 'sp_on 6,1:1
38800 'sp_on 8,1:5
38810 'sp_on 7,1:7
38820 case 0:
38830 No=2:sp_on 13,0:sp_on 9,1:
38840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38850 '上  0ボタンから2ボタン　ここまで
38860 '2から５になる 上
38870 case 2:
38880 No=5:sp_on 8,1:sp_on 9,0:
38890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38900 case 5:
38910 No=8:sp_on 7,1:sp_on 8,0
38920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38930 case 8:
38940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38950 case 1:
38960 No=4:sp_on 5,1:sp_on 6,0
38970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38980 case 4:
38990 No=7:sp_on 4,1:sp_on 5,0
39000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39010 case 7:
39020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39030 end select
39040 endif
39050 '左３　ここまで
39060 '下の矢印
39070 '中央 2
39080 if ((y=1) or (key$ = chr$(31))) then
39090 select case No
39100 '9から６に下げる
39110 case 9:
39120 No=6:sp_on 11,1:sp_on 10,0
39130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39140 '6から３に下げる
39150 case 6:
39160 No=3:sp_on 12,1:sp_on 11,0
39170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39180 '3から０ｋに変える
39190 case 3:
39200 No=-1:sp_on 14,1:sp_on 12,0
39210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39220 'Okから下のボタンを押しても何もしない
39230 case -1:
39240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39250 case 8:
39260 No=5:sp_on 8,1:sp_on 7,0
39270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39280 case 5:
39290 No=2:sp_on 9,1:sp_on 8,0
39300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39310 case 2:
39320 No=0:sp_on 13,1:sp_on 9,0
39330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39340 case 0:
39350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39360 case 7:
39370 No=4:sp_on 5,1:sp_on 4,0
39380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39390 case 4:
39400 No=1:sp_on 6,1:sp_on 5,0
39410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39420 case 1:
39430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39440 end select
39450 endif
39460 '左へボタン 十字キー　左　or 　カーソル左
39470 if ((y2 = -1) or (key$ = chr$(29))) then
39480 select case No
39490 'Ok ボタン  Okから　左　０に行く
39500 case -1:
39510 No=0:sp_on 13,1:sp_on 14,0
39520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39530 '0 ボタン  左　何もしない
39540 case 0:
39550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39560 case 3:
39570 No=2:sp_on 9,1:sp_on 12,0:
39580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39590 case 2:
39600 No=1:sp_on 6,1:sp_on 9,0:
39610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39620 case 1:
39630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39640 case 6:
39650 No=5:sp_on 8,1:sp_on 11,0
39660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39670 case 5:
39680 No=4:sp_on 5,1:sp_on 8,0
39690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39700 case 4:
39710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39720 case 9:
39730 No=8:sp_on 7,1:sp_on 10,0
39740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39750 case 8:
39760 No=7:sp_on 4,1:sp_on 7,0
39770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39780 case 7:
39790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39800 end select
39810 endif
39820 '右  十字キー　右　or カーソル　右
39830 if ((y2 = 1) or (key$ = chr$(28))) then
39840 select case No
39850 '0ボタンからokボタン右に移動
39860 case 0:
39870 No=-1:sp_on 14,1:sp_on 13,0
39880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39890 '0ボタンからokボタン 右に移動　ここまで
39900 'OKボタンで右を押して何もしない
39910 case -1:
39920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39930 case 1:
39940 No=2:sp_on 9,1:sp_on 6,0
39950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39960 case 2:
39970 No=3:sp_on 12,1:sp_on 9,0
39980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39990 case 3:
40000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40010 case 4:
40020 No=5:sp_on 8,1:sp_on 5,0
40030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40040 case 5:
40050 No=6:sp_on 11,1:sp_on 8,0
40060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40070 case 7:
40080 No=8:sp_on 7,1:sp_on 4,0
40090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40100 case 8:
40110 No=9:sp_on 10,1:sp_on 7,0
40120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40130 case 9:
40140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40150 case 6:
40160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40170 end select
40180 'Okから右ボタンを押して何もしない ここまで
40190 endif
40200 '十字キー　ここまで
40210 '==============================
40220 'ここから
40230 '==============================
40240 if ((bg = 2) or (key$ = chr$(13))) then
40250 select case count
40260 case 0:
40270 count = 1
40280 if (No = -1) then
40290 count = 0:No=0
40300 buf_feMale_Born_Day(0) = No
40310 'Okボタンを押したとき
40320 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40330 else
40340 'Okボタン以外が押されたとき
40350 if (No >= 1 and No <= 2) then
40360 buf_female_year$="":buf_female_year$ = str$(No) + "***"
40370 buf_female_year = No:a= No
40380 buf_Jyoushi_Born_Day(0) = No
40390 locate 1,3
40400 color rgb(255,255,255)
40410 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40420 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40430 else
40440 count=0
40450 ui_msg"数字が範囲外になります。"
40460 buf_female_year$="":buf_female_year=0
40470 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40480 endif
40490 endif
40500 case 1:
40510 count = 2
40520 if (No = -1) then
40530 count = 1
40540 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40550 else
40560 buf_female_year = a * 10 + No
40570 b=buf_female_year
40580 buf_year$ = str$(buf_female_year) + "**"
40590 buf_Jyoushi_Born_Day(0)=buf_female_year
40600 locate 1,3
40610 color rgb(255,255,255)
40620 print "                                                                "
40630 locate 1,3
40640 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
40650 'if (No = -1) then
40660 'count=1
40670 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40680 endif
40690 case 2:
40700 count=3
40710 if (No=-1) then
40720 count =2
40730 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40740 else
40750 buf_female_year = b * 10 + No
40760 c=buf_female_year
40770 buf_female_year$ = str$(buf_female_year) + "*"
40780 buf_Jyoushi_Born_Day(0) = buf_female_year
40790 locate 1,3
40800 color rgb(255,255,255)
40810 print "                                        "
40820 locate 1,3
40830 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40840 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40850 endif
40860 case 3:
40870 count=4
40880 if (No = -1) then
40890 No=0
40900 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40910 else
40920 buf_female_year = c * 10 + No
40930 buf_female_year$ = str$(buf_female_year)
40940 buf_Jyoushi_Born_Day(0) = buf_female_year
40950 locate 1,3
40960 color RGB(255,255,255)
40970 print "                                      "
40980 locate 1,3
40990 print "女性の生まれた年代(西暦4桁):";buf_female_year$
41000 buf_female_year=val(buf_female_year$)
41010 'year=val(buf_year$)
41020 'if (No=-1) then
41030 'goto Input_Born_Month:
41040 'else
41050 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41060 endif
41070 case 4:
41080 'bufyear=buf_year
41090 if (No=-1) then
41100 buf_female_year = val(buf_female_year$)
41110 buf_Jyoushi_Born_Day(0)=buf_female_year
41120 sp_on 14,0:No=0
41130 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41140 else
41150 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41160 endif
41170 end select
41180 endif
41190 '===========================
41200 'ここまでを部下のところにコピーする.
41210 '===========================
41220 if (bg2 = 2) then
41230 select case count2
41240 case 0:
41250 if (No = -1) then
41260 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
41270 count=0
41280 locate 1,3
41290 color rgb(255,255,255)
41300 print "                                      "
41310 locate 1,3
41320 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
41330 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41340 else
41350 '(buf_year=0) then
41360 buf_female_year=0:buf_year$="****"
41370 locate 1,3
41380 print "                                       "
41390 locate 1,3
41400 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
41410 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41420 'endif
41430 endif
41440 end select
41450 endif
41460 '-------生まれた年代　女性 ここまで-------------
41470 '-------生まれた月　女性 ここまで--------------
41480 Danjyo_Aisyou_Input_feMale_Born_Month:
41490 cls 3:play "":count=0:count2=0
41500 'No=-1:Okのとき
41510 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
41520 for i=0 to 1
41530 buf_month(i)=0
41540 next i
41550 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41560 gload Gazo$ + "Screen1.png",0,0,0
41570 gload Gazo$ + "downscreen.png",0,0,800
41580 'Init"kb:4"
41590 '音声ファイル再生 2023.06.07
41600 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
41610 font 48
41620 locate 0,1
41630 '文字色：黒　 color rgb(0,0,0)
41640 '文字色:白
41650 color rgb(255,255,255)
41660 print "女性の生まれた月を入れて下さい" + chr$(13)
41670 '文字色:白
41680 color rgb(255,255,255)
41690 locate 1,3
41700 '文字色:白
41710 print "女性の生まれた月(1月~12月):"+buf_female_Month$
41720 color rgb(255,255,255)
41730 'locate 4,6:print ":7"
41740 'locate 9,6:print ":8"
41750 'locate 12,6:print ":9"
41760 locate 4,6
41770 '文字色:赤
41780 print ":7  :8  :9" + chr$(13)
41790 color rgb(255,255,255)
41800 locate 4,8
41810 print ":4  :5  :6" + chr$(13)
41820 color rgb(255,255,255)
41830 locate 4,10
41840 print ":1  :2  :3" + chr$(13)
41850 locate 4,12
41860 print "    :0"
41870 locate 12,12
41880 color rgb(0,0,255)
41890 print ":Ok"
41900 sp_on 4,0: sp_on 5,0:sp_on 6,0
41910 sp_on 7,0:sp_on 8,0:sp_on 9,0
41920 sp_on 10,0:sp_on 11,0:sp_on 12,0
41930 sp_on 13,0:sp_on 14,1
41940 '---------------------------------------------
41950 Danjyo_Aisyou_Input_feMale_Born_Month2:
41960 key$="":bg=0:y=0:y2=0:bg2=0
41970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
41980 key$ = inkey$
41990 bg = strig(1)
42000 y = stick(1)
42010 y2 = stick(0)
42020 bg2 = strig(0)
42030 pause 5
42040 wend
42050 '十字キー　ここから
42060 '上の矢印　または、十字キー上
42070 if ((y = -1) or (key$ = chr$(30))) then
42080 select case No
42090 'No=-1:okのとき:初期の状態
42100 '0kボタンから３に移動
42110 '上に行く 処理
42120 case -1:
42130 No=3:sp_on 12,1:sp_on 14,0
42140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42150 '選択肢:3
42160 '3ボタンから 6に移動
42170 case 3:
42180 No=6:sp_on 12,0:sp_on 11,1
42190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42200 '6ボタンから ９に移動
42210 case 6:
42220 No=9:sp_on 10,1:sp_on 11,0
42230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42240 '6ボタンから ９に移動　ここまで
42250 '9で上を押して何もしない
42260 case 9:
42270 '何もしない
42280 No=9
42290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42300 '9で上を押しても何もしない　ここまで
42310 '上　 0ボタンから2ボタン
42320 'sp_on 6,1:1
42330 'sp_on 8,1:5
42340 'sp_on 7,1:7
42350 case 0:
42360 No=2:sp_on 13,0:sp_on 9,1:
42370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42380 '上  0ボタンから2ボタン　ここまで
42390 '2から５になる 上
42400 case 2:
42410 No=5:sp_on 8,1:sp_on 9,0:
42420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42430 case 5:
42440 No=8:sp_on 7,1:sp_on 8,0
42450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42460 case 8:
42470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42480 case 1:
42490 No=4:sp_on 5,1:sp_on 6,0
42500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42510 case 4:
42520 No=7:sp_on 4,1:sp_on 5,0
42530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42540 case 7:
42550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42560 end select
42570 endif
42580 '左３　ここまで
42590 '下の矢印
42600 '中央 2
42610 if ((y=1) or (key$ = chr$(31))) then
42620 select case No
42630 '9から６に下げる
42640 case 9:
42650 No=6:sp_on 11,1:sp_on 10,0
42660 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
42670 '6から３に下げる
42680 case 6:
42690 No=3:sp_on 12,1:sp_on 11,0
42700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42710 '3から０ｋに変える
42720 case 3:
42730 No=-1:sp_on 14,1:sp_on 12,0
42740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42750 'Okから下のボタンを押しても何もしない
42760 case -1:
42770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42780 case 8:
42790 No=5:sp_on 8,1:sp_on 7,0
42800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42810 case 5:
42820 No=2:sp_on 9,1:sp_on 8,0
42830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42840 case 2:
42850 No=0:sp_on 13,1:sp_on 9,0
42860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42870 case 0:
42880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42890 case 7:
42900 No=4:sp_on 5,1:sp_on 4,0
42910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42920 case 4:
42930 No=1:sp_on 6,1:sp_on 5,0
42940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42950 case 1:
42960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42970 end select
42980 endif
42990 '左へボタン 十字キー　左　or 　カーソル左
43000 if ((y2 = -1) or (key$ = chr$(29))) then
43010 select case No
43020 'Ok ボタン  Okから　左　０に行く
43030 case -1:
43040 No=0:sp_on 13,1:sp_on 14,0
43050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43060 '0 ボタン  左　何もしない
43070 case 0:
43080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43090 case 3:
43100 No=2:sp_on 9,1:sp_on 12,0:
43110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43120 case 2:
43130 No=1:sp_on 6,1:sp_on 9,0:
43140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43150 case 1:
43160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43170 case 6:
43180 No=5:sp_on 8,1:sp_on 11,0
43190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43200 case 5:
43210 No=4:sp_on 5,1:sp_on 8,0
43220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43230 case 4:
43240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43250 case 9:
43260 No=8:sp_on 7,1:sp_on 10,0
43270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43280 case 8:
43290 No=7:sp_on 4,1:sp_on 7,0
43300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43310 case 7:
43320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43330 end select
43340 endif
43350 '右  十字キー　右　or カーソル　右
43360 if ((y2 = 1) or (key$ = chr$(28))) then
43370 select case No
43380 '0ボタンからokボタン右に移動
43390 case 0:
43400 No=-1:sp_on 14,1:sp_on 13,0
43410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43420 '0ボタンからokボタン 右に移動　ここまで
43430 'OKボタンで右を押して何もしない
43440 case -1:
43450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43460 case 1:
43470 No=2:sp_on 9,1:sp_on 6,0
43480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43490 case 2:
43500 No=3:sp_on 12,1:sp_on 9,0
43510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43520 case 3:
43530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43540 case 4:
43550 No=5:sp_on 8,1:sp_on 5,0
43560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43570 case 5:
43580 No=6:sp_on 11,1:sp_on 8,0
43590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43600 case 7:
43610 No=8:sp_on 7,1:sp_on 4,0
43620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43630 case 8:
43640 No=9:sp_on 10,1:sp_on 7,0
43650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43660 case 9:
43670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43680 case 6:
43690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43700 end select
43710 'Okから右ボタンを押して何もしない ここまで
43720 endif
43730 '十字キー　ここまで
43740 '右の丸ボタン + Enter key 決定キー
43750 if ((bg=2) or (key$=chr$(13))) then
43760 select case count
43770 case 0:
43780 if (No=-1) then No=0
43790 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
43800 if (buf_female_month > 1 and buf_female_month < 10)  then
43810 buf_female_Month$ = str$(buf_female_month)
43820 'buf_month=No
43830 endif
43840 if (buf_female_month = 1)  then
43850 buf_female_Month$ = str$(buf_female_month) + "*"
43860 'c=buf_month
43870 endif
43880 locate 1,3
43890 print "                                     "
43900 color RGB(255,255,255)
43910 locate 1,3
43920 print "女性の生まれた月(1月~12月):" + buf_female_Month$
43930 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43940 case 1:
43950 count = 2:
43960 'c = val(buf_Month$)
43970 if (No = -1) then
43980 'count=0
43990 No=0
44000 month=buf_female_month
44010 buf_female_month=val(buf_female_Month$)
44020 month=buf_female_month
44030 buf_Jyoushi_Born_Day(1)=month
44040 '生まれた日に飛ぶ
44050 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44060 else
44070 buf_female_month = c*10 + No
44080 'if (buf_month = 1) then
44090 'buf_Month$ = str$(buf_month)
44100 'endif
44110 buf_female_Month$ = str$(buf_female_month)
44120 buf_Jyoushi_Born_Day(1) = buf_female_month
44130 locate 0,3
44140 print "                                           "
44150 locate 1,3
44160 color Rgb(255,255,255)
44170 print "女性の生まれた月(1月~12月):" + buf_female_Month$
44180 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44190 endif
44200 case 2:
44210 '==================================
44220 '何もしない
44230 'coun = 2
44240 '==================================
44250 'c= val(buf_Month$)
44260 'buf_month = c*10 + No
44270 'buf_Month$ = str$(buf_month)
44280 'locate 2,3
44290 'print "上司の生まれた月(1月～12月):";buf_Month$
44300 'goto Jyoushi_Input_Born_Month2:
44310 'case 3:
44320 'count=4
44330 'b=val(buf_month$)
44340 'buf_month=c*10+No
44350 'buf_Month$=str$(buf_month)
44360 'locate 2,3
44370 'print "上司の生まれた月(1月～12月):";buf_Month$
44380 'buf_month=val(buf_Month$)
44390 'year=val(buf_year$)
44400 if (No=-1) then
44410 No=0
44420 goto Danjyo_Aisyou_Input_Male_Born_Day:
44430 else
44440 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44450 endif
44460 'case 4:
44470 'bufyear=buf_year
44480 'if (No=-1) then
44490 'buf_month = val(buf_Month$)
44500 'month = buf_month
44510 'sp_on 14,0
44520 'goto Input_Born_Day:
44530 'else
44540 'goto Input_Born_Month2:
44550 'endif
44560 end select
44570 endif
44580 '左の丸ボタン　キャンセル
44590 if (bg2=2) then
44600 select case count2
44610 case 0:
44620 if (No = -1) then
44630 buf_female_month=0:buf_female_Month$="**"
44640 count=0
44650 'goto rewrite2:
44660 else
44670 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
44680 buf_female_month = 0:buf_female_Month$ = "**"
44690 locate 0,3
44700 color rgb(255,255,255)
44710 print "                                       "
44720 goto rewrite2:
44730 if (No>12) then
44740 ui_msg"値が範囲外です。"
44750 goto rewrite2:
44760 endif
44770 endif
44780 endif
44790 rewrite2:
44800 locate 2,3
44810 color rgb(255,255,255)
44820 print "                                      "
44830 locate 2,3
44840 print "女性の生まれた月(1月~12月):"+buf_female_Month$
44850 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44860 end select
44870 'endif
44880 endif
44890 end
44900 '-------生まれた月　女性 ここまで-------------
44910 '-------生まれた日　女性 ここまで-------------
44920 Danjyo_Aisyou_Input_feMale_Born_Day:
44930 cls 3:play "":count=0:count2=0
44940 'No=-1:Okのとき
44950 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
44960 for i=0 to 1
44970 buf_female_day(i)=0
44980 next i
44990 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45000 gload Gazo$ + "Screen1.png",0,0,0
45010 gload Gazo$ + "downscreen.png",0,0,800
45020 'Init"kb:4"
45030 '音声ファイル再生 2023.06.07
45040 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
45050 font 48
45060 locate 0,1
45070 '文字色：黒　 color rgb(0,0,0)
45080 '文字色:白
45090 color rgb(255,255,255)
45100 print "女性の生まれた日を入れて下さい" + chr$(13)
45110 '文字色:白
45120 color rgb(255,255,255)
45130 locate 1,3
45140 '文字色:白
45150 print "女性の生まれた日(1月~31月):" + buf_female_Day$
45160 color rgb(255,255,255)
45170 'locate 4,6:print ":7"
45180 'locate 9,6:print ":8"
45190 'locate 12,6:print ":9"
45200 locate 4,6
45210 '文字色:赤
45220 print ":7  :8  :9" + chr$(13)
45230 color rgb(255,255,255)
45240 locate 4,8
45250 print ":4  :5  :6" + chr$(13)
45260 color rgb(255,255,255)
45270 locate 4,10
45280 print ":1  :2  :3" + chr$(13)
45290 locate 4,12
45300 print "    :0"
45310 locate 12,12
45320 color rgb(0,0,255)
45330 print ":Ok"
45340 sp_on 4,0: sp_on 5,0:sp_on 6,0
45350 sp_on 7,0:sp_on 8,0:sp_on 9,0
45360 sp_on 10,0:sp_on 11,0:sp_on 12,0
45370 sp_on 13,0:sp_on 14,1
45380 '---------------------------------------------
45390 Danjyo_Aisyou_Input_feMale_Born_Day2:
45400 key$="":bg=0:y=0:y2=0:bg2=0
45410 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45420 key$ = inkey$
45430 bg = strig(1)
45440 y = stick(1)
45450 y2 = stick(0)
45460 bg2 = strig(0)
45470 pause 5
45480 wend
45490 '十字キー　ここから
45500 '上の矢印　または、十字キー上
45510 if ((y = -1) or (key$ = chr$(30))) then
45520 select case No
45530 'No=-1:okのとき:初期の状態
45540 '0kボタンから３に移動
45550 '上に行く 処理
45560 case -1:
45570 No=3:sp_on 12,1:sp_on 14,0
45580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45590 '選択肢:3
45600 '3ボタンから 6に移動
45610 case 3:
45620 No=6:sp_on 12,0:sp_on 11,1
45630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45640 '6ボタンから ９に移動
45650 case 6:
45660 No=9:sp_on 10,1:sp_on 11,0
45670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45680 '6ボタンから ９に移動　ここまで
45690 '9で上を押して何もしない
45700 case 9:
45710 '何もしない
45720 No=9
45730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45740 '9で上を押しても何もしない　ここまで
45750 '上　 0ボタンから2ボタン
45760 'sp_on 6,1:1
45770 'sp_on 8,1:5
45780 'sp_on 7,1:7
45790 case 0:
45800 No=2:sp_on 13,0:sp_on 9,1:
45810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45820 '上  0ボタンから2ボタン　ここまで
45830 '2から５になる 上
45840 case 2:
45850 No=5:sp_on 8,1:sp_on 9,0:
45860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45870 case 5:
45880 No=8:sp_on 7,1:sp_on 8,0
45890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45900 case 8:
45910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45920 case 1:
45930 No=4:sp_on 5,1:sp_on 6,0
45940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45950 case 4:
45960 No=7:sp_on 4,1:sp_on 5,0
45970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45980 case 7:
45990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46000 end select
46010 endif
46020 '左３　ここまで
46030 '下の矢印
46040 '中央 2
46050 if ((y=1) or (key$ = chr$(31))) then
46060 select case No
46070 '9から６に下げる
46080 case 9:
46090 No=6:sp_on 11,1:sp_on 10,0
46100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46110 '6から３に下げる
46120 case 6:
46130 No=3:sp_on 12,1:sp_on 11,0
46140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46150 '3から０ｋに変える
46160 case 3:
46170 No=-1:sp_on 14,1:sp_on 12,0
46180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46190 'Okから下のボタンを押しても何もしない
46200 case -1:
46210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46220 case 8:
46230 No=5:sp_on 8,1:sp_on 7,0
46240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46250 case 5:
46260 No=2:sp_on 9,1:sp_on 8,0
46270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46280 case 2:
46290 No=0:sp_on 13,1:sp_on 9,0
46300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46310 case 0:
46320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46330 case 7:
46340 No=4:sp_on 5,1:sp_on 4,0
46350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46360 case 4:
46370 No=1:sp_on 6,1:sp_on 5,0
46380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46390 case 1:
46400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46410 end select
46420 endif
46430 '左へボタン 十字キー　左　or 　カーソル左
46440 if ((y2 = -1) or (key$ = chr$(29))) then
46450 select case No
46460 'Ok ボタン  Okから　左　０に行く
46470 case -1:
46480 No=0:sp_on 13,1:sp_on 14,0
46490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46500 '0 ボタン  左　何もしない
46510 case 0:
46520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46530 case 3:
46540 No=2:sp_on 9,1:sp_on 12,0:
46550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46560 case 2:
46570 No=1:sp_on 6,1:sp_on 9,0:
46580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46590 case 1:
46600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46610 case 6:
46620 No=5:sp_on 8,1:sp_on 11,0
46630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46640 case 5:
46650 No=4:sp_on 5,1:sp_on 8,0
46660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46670 case 4:
46680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46690 case 9:
46700 No=8:sp_on 7,1:sp_on 10,0
46710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46720 case 8:
46730 No=7:sp_on 4,1:sp_on 7,0
46740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46750 case 7:
46760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46770 end select
46780 endif
46790 '右  十字キー　右　or カーソル　右
46800 if ((y2 = 1) or (key$ = chr$(28))) then
46810 select case No
46820 '0ボタンからokボタン右に移動
46830 case 0:
46840 No=-1:sp_on 14,1:sp_on 13,0
46850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46860 '0ボタンからokボタン 右に移動　ここまで
46870 'OKボタンで右を押して何もしない
46880 case -1:
46890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46900 case 1:
46910 No=2:sp_on 9,1:sp_on 6,0
46920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46930 case 2:
46940 No=3:sp_on 12,1:sp_on 9,0
46950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46960 case 3:
46970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46980 case 4:
46990 No=5:sp_on 8,1:sp_on 5,0
47000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47010 case 5:
47020 No=6:sp_on 11,1:sp_on 8,0
47030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47040 case 7:
47050 No=8:sp_on 7,1:sp_on 4,0
47060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47070 case 8:
47080 No=9:sp_on 10,1:sp_on 7,0
47090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47100 case 9:
47110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47120 case 6:
47130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47140 end select
47150 'Okから右ボタンを押して何もしない ここまで
47160 endif
47170 '十字キー　ここまで
47180 '右の丸ボタン + Enter key 決定キー
47190 if ((bg=2) or (key$=chr$(13))) then
47200 select case count
47210 case 0:
47220 if (No=-1) then No=0
47230 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
47240 if (buf_female_day > 1 and buf_female_day < 10)  then
47250 buf_female_Day$ = str$(buf_female_day)
47260 'buf_month=No
47270 endif
47280 if (buf_female_day = 1)  then
47290 buf_female_Day$ = str$(buf_female_day) + "*"
47300 'c=buf_month
47310 endif
47320 locate 1,3
47330 print "                                     "
47340 color RGB(255,255,255)
47350 locate 1,3
47360 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47370 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47380 case 1:
47390 count = 2:
47400 'c = val(buf_Month$)
47410 if (No = -1) then
47420 'count=0
47430 No=0
47440 day=buf_female_day
47450 buf_female_day=val(buf_female_day$)
47460 day=bu_female_day
47470 buf_female_day(1)=day
47480 '生まれた日に飛ぶ
47490 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47500 else
47510 bu_female_day = c*10 + No
47520 'if (buf_month = 1) then
47530 'buf_Month$ = str$(buf_month)
47540 'endif
47550 buf_female_day$ = str$(buf_female_day)
47560 buf_female_day(1) = buf_female_day
47570 locate 0,3
47580 print "                                           "
47590 locate 1,3
47600 color Rgb(255,255,255)
47610 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47620 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47630 endif
47640 case 2:
47650 '==================================
47660 '何もしない
47670 'coun = 2
47680 '==================================
47690 'c= val(buf_Month$)
47700 'buf_month = c*10 + No
47710 'buf_Month$ = str$(buf_month)
47720 'locate 2,3
47730 'print "上司の生まれた月(1月～12月):";buf_Month$
47740 'goto Jyoushi_Input_Born_Month2:
47750 'case 3:
47760 'count=4
47770 'b=val(buf_month$)
47780 'buf_month=c*10+No
47790 'buf_Month$=str$(buf_month)
47800 'locate 2,3
47810 'print "上司の生まれた月(1月～12月):";buf_Month$
47820 'buf_month=val(buf_Month$)
47830 'year=val(buf_year$)
47840 if (No=-1) then
47850 No=0
47860 goto Danjyo_Aisyou_Input_Male_Born_Day:
47870 else
47880 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47890 endif
47900 'case 4:
47910 'bufyear=buf_year
47920 'if (No=-1) then
47930 'buf_month = val(buf_Month$)
47940 'month = buf_month
47950 'sp_on 14,0
47960 'goto Input_Born_Day:
47970 'else
47980 'goto Input_Born_Month2:
47990 'endif
48000 end select
48010 endif
48020 '左の丸ボタン　キャンセル
48030 if (bg2=2) then
48040 select case count2
48050 case 0:
48060 if (No = -1) then
48070 buf_female_day=0:buf_female_Day$="**"
48080 count=0
48090 'goto rewrite2:
48100 else
48110 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
48120 buf_female_day = 0:buf_female_Day$ = "**"
48130 locate 0,3
48140 color rgb(255,255,255)
48150 print "                                       "
48160 goto rewrite2:
48170 if (No>12) then
48180 ui_msg"値が範囲外です。"
48190 goto rewrite2:
48200 endif
48210 endif
48220 endif
48230 rewrite2:
48240 locate 2,3
48250 color rgb(255,255,255)
48260 print "                                      "
48270 locate 2,3
48280 print "女性の生まれた日(1月~31月):"+buf_female_Day$
48290 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48300 end select
48310 'endif
48320 endif
48330 end
48340 '-------生まれた日　女性 ここまで-------------
48350 '1.男女の相性 ここまで
48360 '2.ビジネスの相性　
48370 '1.1人目のビジネスの相性　名前入力　1人目
48380 Business_Aishou_Input_1_parson:
48390 No=0:color RGB(255,255,255)
48400 cls 3:init "kb:2"
48410 gload Gazo$ + "Screen1.png",0,0,0
48420 gload Gazo$ + "downscreen.png",0,0,800
48430 play "":color rgb(255,0,0):name$ = ""
48440 locate 0,1
48450 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
48460 color rgb(255,255,255):
48470 locate 0,3
48480 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
48490 print "入れてください" + chr$(13)
48500 locate 0,15:color rgb(0,0,0)
48510 Input "1人目の名前:",name$
48520 'color rgb(0,0,0)
48530 'locate 0,13:print "                                     "
48540 'locate 0,13:print "1人目の名前を入力してエンターキー":
48550 'buffer_name$(0):1人目の名前
48560 buffer_name$(0) = name$:
48570 goto Business_Aishou_Input_2_Parson:
48580 '2.2人目のビジネスの相性 名前入力 2人目
48590 Business_Aishou_Input_2_Parson:
48600 cls 3:init "kb:2":name$ = "":No=0
48610 gload Gazo$ + "Screen1.png",0,0,0
48620 gload Gazo$ + "downscreen.png",0,0,800
48630 color rgb(255,0,0)
48640 'Title
48650 locate 0,1
48660 print "ビジネスの相性　2人目"
48670 locate 0,3
48680 color rgb(255,255,255)
48690 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
48700 print "入れてください" + chr$(13)
48710 locate 0,15:color rgb(0,0,0)
48720 Input "2人目の名前:",name$
48730 'color rgb(0,0,0)
48740 'locate 0,15:print "                                              "
48750 'locate 0,15:print "2人目の名前を入力してエンター ":
48760 '2人目
48770 '2人目の名前を入れるに代入
48780 buffer_name$(1) = name$:
48790 goto Select_jyoushi:
48800 '3.上司の選択
48810 Select_jyoushi:
48820 cls 3:gload Gazo$ + "Screen1.png",0,0,0
48830 gload Gazo$ + "downscreen.png",0,0,800
48840 init "kb:4":No=0
48850 color rgb(0,0,255)
48860 locate 1,1
48870 print "上司の選択"
48880 color rgb(255,255,255)
48890 locate 0,4:print "名前から上司の方を選んでください"
48900 locate 0,6
48910 print " :";buffer_name$(0);"が上 司";chr$(13)
48920 locate 0,8
48930 print " :";buffer_name$(1);"が上 司";chr$(13)
48940 locate 0,15:
48950 print "                                     "
48960 locate 0,15:color rgb(0,0,0)
48970 print "上司の方を選んで右の丸ボタン"
48980 sp_on 0,1:sp_on 1,0:sp_on 2,0
48990 Select_jyoushi2:
49000 'ここでNo=0をおいてはいけない
49010 y=0:key$="":bg=0:
49020 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
49030 y = stick(1)
49040 key$ = inkey$
49050 bg = strig(1)
49060 pause 5
49070 wend
49080 '1.カーソル下の処理　or 十字キーの下処理
49090 if ((key$ = chr$(31)) or (y = 1)) then
49100 select case No
49110 case 0:
49120 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49130 case 1:
49140 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49150 end select
49160 endif
49170 '2.カーソル上処理　or 十字キーの上の処理
49180 if ((key$ = chr$(30)) or (y = -1)) then
49190 select case No
49200 case 0:
49210 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
49220 case 1:
49230 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
49240 end select
49250 endif
49260 if ((key$ = chr$(13)) or (bg = 2)) then
49270 select case No
49280 case 0:
49290 '上司(name1)を配列に代入
49300 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49310 case 1:
49320 '上司（name2)を配列に代入
49330 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49340 end select
49350 endif
49360 '3.決定ボタン　Enter or 右の丸ボタン
49370 '1.誕生日入力
49380 '1-1.生まれた年を入力
49390 'Jyoushi_born_year:
49400 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
49410 '---------------------------------------------'
49420 '誕生日入力(生れた年代)
49430 Jyoushi_Input_Seireki:
49440 'buf_Jyoushi_Born_Year:上司の生まれた年代
49450 'buf_Jyoushi_Born_Day(0) = born_year
49460 cls 3:play "":count=0:count2=0
49470 init"kb:4"
49480 'No=-1:Okのとき
49490 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
49500 for i=0 to 3
49510 buf_Jyoushi_Born_Day(i)=0
49520 next i
49530 gload Gazo$ + "Screen1.png",0,0,0
49540 gload Gazo$ + "downscreen.png",0,0,800
49550 'Init"kb:2"
49560 '音声ファイル再生 2023.06.07
49570 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
49580 font 48
49590 locate 0,1
49600 '文字色：黒　 color rgb(0,0,0)
49610 color rgb(255,255,255)
49620 print "上司の生まれた年代を入れて下さい" + chr$(13)
49630 color rgb(255,255,255)
49640 locate 1,3
49650 print "上司の生まれた年代(西暦4桁):";buf_year$
49660 color rgb(255,255,255)
49670 'locate 4,6:print ":7"
49680 'locate 9,6:print ":8"
49690 'locate 12,6:print ":9"
49700 locate 4,6
49710 print ":7  :8  :9" + chr$(13)
49720 color rgb(255,255,255)
49730 locate 4,8
49740 print ":4  :5  :6" + chr$(13)
49750 color rgb(255,255,255)
49760 locate 4,10
49770 print ":1  :2  :3" + chr$(13)
49780 locate 4,12
49790 print "    :0"
49800 locate 12,12
49810 color rgb(0,0,255)
49820 print ":Ok"
49830 sp_on 4,0: sp_on 5,0:sp_on 6,0
49840 sp_on 7,0:sp_on 8,0:sp_on 9,0
49850 sp_on 10,0:sp_on 11,0:sp_on 12,0
49860 sp_on 13,0:sp_on 14,1
49870 Jyoushi_Input_Seireki2:
49880 key$="":bg=0:y=0:y2=0:bg2=0:
49890 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49900 key$ = inkey$
49910 bg = strig(1)
49920 y = stick(1)
49930 y2 = stick(0)
49940 bg2=strig(0)
49950 pause 5
49960 wend
49970 '十字キー　ここから
49980 '上の矢印　または、十字キー上
49990 if ((y = -1) or (key$ = chr$(30))) then
50000 select case No
50010 'No=-1:okのとき:初期の状態
50020 '0kボタンから３に移動
50030 '上に行く 処理
50040 case -1:
50050 No=3:sp_on 12,1:sp_on 14,0
50060 pause 200:goto Jyoushi_Input_Seireki2:
50070 '選択肢:3
50080 '3ボタンから 6に移動
50090 case 3:
50100 No=6:sp_on 12,0:sp_on 11,1
50110 pause 200:goto Jyoushi_Input_Seireki2:
50120 '6ボタンから ９に移動
50130 case 6:
50140 No=9:sp_on 10,1:sp_on 11,0
50150 pause 200:goto Jyoushi_Input_Seireki2:
50160 '6ボタンから ９に移動　ここまで
50170 '9で上を押して何もしない
50180 case 9:
50190 '何もしない
50200 No=9
50210 pause 200:goto Jyoushi_Input_Seireki2:
50220 '9で上を押しても何もしない　ここまで
50230 '上　 0ボタンから2ボタン
50240 'sp_on 6,1:1
50250 'sp_on 8,1:5
50260 'sp_on 7,1:7
50270 case 0:
50280 No=2:sp_on 13,0:sp_on 9,1:
50290 pause 200:goto Jyoushi_Input_Seireki2:
50300 '上  0ボタンから2ボタン　ここまで
50310 '2から５になる 上
50320 case 2:
50330 No=5:sp_on 8,1:sp_on 9,0:
50340 pause 200:goto Jyoushi_Input_Seireki2:
50350 case 5:
50360 No=8:sp_on 7,1:sp_on 8,0
50370 pause 200:goto Jyoushi_Input_Seireki2:
50380 case 8:
50390 pause 200:goto Jyoushi_Input_Seireki2:
50400 case 1:
50410 No=4:sp_on 5,1:sp_on 6,0
50420 pause 200:goto Jyoushi_Input_Seireki2:
50430 case 4:
50440 No=7:sp_on 4,1:sp_on 5,0
50450 pause 200:goto Jyoushi_Input_Seireki2:
50460 case 7:
50470 pause 200:goto Jyoushi_Input_Seireki2:
50480 end select
50490 endif
50500 '左３　ここまで
50510 '下の矢印
50520 '中央 2
50530 if ((y=1) or (key$ = chr$(31))) then
50540 select case No
50550 '9から６に下げる
50560 case 9:
50570 No=6:sp_on 11,1:sp_on 10,0
50580 pause 200:goto Jyoushi_Input_Seireki2:
50590 '6から３に下げる
50600 case 6:
50610 No=3:sp_on 12,1:sp_on 11,0
50620 pause 200:goto Jyoushi_Input_Seireki2:
50630 '3から０ｋに変える
50640 case 3:
50650 No=-1:sp_on 14,1:sp_on 12,0
50660 pause 200:goto Jyoushi_Input_Seireki2:
50670 'Okから下のボタンを押しても何もしない
50680 case -1:
50690 pause 200:goto Jyoushi_Input_Seireki2:
50700 case 8:
50710 No=5:sp_on 8,1:sp_on 7,0
50720 pause 200:goto Jyoushi_Input_Seireki2:
50730 case 5:
50740 No=2:sp_on 9,1:sp_on 8,0
50750 pause 200:goto Jyoushi_Input_Seireki2:
50760 case 2:
50770 No=0:sp_on 13,1:sp_on 9,0
50780 pause 200:goto Jyoushi_Input_Seireki2:
50790 case 0:
50800 pause 200:goto Jyoushi_Input_Seireki2:
50810 case 7:
50820 No=4:sp_on 5,1:sp_on 4,0
50830 pause 200:goto Jyoushi_Input_Seireki2:
50840 case 4:
50850 No=1:sp_on 6,1:sp_on 5,0
50860 pause 200:goto Jyoushi_Input_Seireki2:
50870 case 1:
50880 pause 200:goto Jyoushi_Input_Seireki2:
50890 end select
50900 endif
50910 '左へボタン 十字キー　左　or 　カーソル左
50920 if ((y2 = -1) or (key$ = chr$(29))) then
50930 select case No
50940 'Ok ボタン  Okから　左　０に行く
50950 case -1:
50960 No=0:sp_on 13,1:sp_on 14,0
50970 pause 200:goto Jyoushi_Input_Seireki2:
50980 '0 ボタン  左　何もしない
50990 case 0:
51000 pause 200:goto Jyoushi_Input_Seireki2:
51010 case 3:
51020 No=2:sp_on 9,1:sp_on 12,0:
51030 pause 200:goto Jyoushi_Input_Seireki2:
51040 case 2:
51050 No=1:sp_on 6,1:sp_on 9,0:
51060 pause 200:goto Jyoushi_Input_Seireki2:
51070 case 1:
51080 pause 200:goto Jyoushi_Input_Seireki2:
51090 case 6:
51100 No=5:sp_on 8,1:sp_on 11,0
51110 pause 200:goto Jyoushi_Input_Seireki2:
51120 case 5:
51130 No=4:sp_on 5,1:sp_on 8,0
51140 pause 200:goto Jyoushi_Input_Seireki2:
51150 case 4:
51160 pause 200:goto Jyoushi_Input_Seireki2:
51170 case 9:
51180 No=8:sp_on 7,1:sp_on 10,0
51190 pause 200:goto Jyoushi_Input_Seireki2:
51200 case 8:
51210 No=7:sp_on 4,1:sp_on 7,0
51220 pause 200:goto Jyoushi_Input_Seireki2:
51230 case 7:
51240 pause 200:goto Jyoushi_Input_Seireki2:
51250 end select
51260 endif
51270 '右  十字キー　右　or カーソル　右
51280 if ((y2 = 1) or (key$ = chr$(28))) then
51290 select case No
51300 '0ボタンからokボタン右に移動
51310 case 0:
51320 No=-1:sp_on 14,1:sp_on 13,0
51330 pause 200:goto Jyoushi_Input_Seireki2:
51340 '0ボタンからokボタン 右に移動　ここまで
51350 'OKボタンで右を押して何もしない
51360 case -1:
51370 pause 200:goto Jyoushi_Input_Seireki2:
51380 case 1:
51390 No=2:sp_on 9,1:sp_on 6,0
51400 pause 200:goto Jyoushi_Input_Seireki2:
51410 case 2:
51420 No=3:sp_on 12,1:sp_on 9,0
51430 pause 200:goto Jyoushi_Input_Seireki2:
51440 case 3:
51450 pause 200:goto Jyoushi_Input_Seireki2:
51460 case 4:
51470 No=5:sp_on 8,1:sp_on 5,0
51480 pause 200:goto Jyoushi_Input_Seireki2:
51490 case 5:
51500 No=6:sp_on 11,1:sp_on 8,0
51510 pause 200:goto Jyoushi_Input_Seireki2:
51520 case 7:
51530 No=8:sp_on 7,1:sp_on 4,0
51540 pause 200:goto Jyoushi_Input_Seireki2:
51550 case 8:
51560 No=9:sp_on 10,1:sp_on 7,0
51570 pause 200:goto Jyoushi_Input_Seireki2:
51580 case 9:
51590 pause 200:goto Jyoushi_Input_Seireki2:
51600 case 6:
51610 pause 200:goto Jyoushi_Input_Seireki2:
51620 end select
51630 'Okから右ボタンを押して何もしない ここまで
51640 endif
51650 '十字キー　ここまで
51660 '==============================
51670 'ここから
51680 '==============================
51690 if ((bg = 2) or (key$ = chr$(13))) then
51700 select case count
51710 case 0:
51720 count = 1
51730 if (No = -1) then
51740 count = 0:No=0
51750 buf_Jyoushi_Born_Day(0) = No
51760 'Okボタンを押したとき
51770 goto Jyoushi_Input_Seireki2:
51780 else
51790 'Okボタン以外が押されたとき
51800 if (No >= 1 and No <= 2) then
51810 buf_year$="":buf_year$ = str$(No) + "***"
51820 buf_year = No:a= No
51830 buf_Jyoushi_Born_Day(0) = No
51840 locate 1,3
51850 color rgb(255,255,255)
51860 print "上司の生まれた年代(西暦4桁):";buf_year$
51870 goto Jyoushi_Input_Seireki2:
51880 else
51890 count=0
51900 ui_msg"数字が範囲外になります。"
51910 buf_year$="":buf_year=0
51920 goto Jyoushi_Input_Seireki2:
51930 endif
51940 endif
51950 case 1:
51960 count = 2
51970 if (No = -1) then
51980 count = 1
51990 goto Jyoushi_Input_Seireki2:
52000 else
52010 buf_year = a * 10 + No
52020 b=buf_year
52030 buf_year$ = str$(buf_year) + "**"
52040 buf_Jyoushi_Born_Day(0)=buf_year
52050 locate 1,3
52060 color rgb(255,255,255)
52070 print "                                                                "
52080 locate 1,3
52090 print "上司の生まれた年代(西暦4桁):" + buf_year$
52100 'if (No = -1) then
52110 'count=1
52120 goto Jyoushi_Input_Seireki2:
52130 endif
52140 case 2:
52150 count=3
52160 if (No=-1) then
52170 count =2
52180 goto Jyoushi_Input_Seireki2:
52190 else
52200 buf_year = b * 10 + No
52210 c=buf_year
52220 buf_year$ = str$(buf_year) + "*"
52230 buf_Jyoushi_Born_Day(0) = buf_year
52240 locate 1,3
52250 color rgb(255,255,255)
52260 print "                                        "
52270 locate 1,3
52280 print "上司の生まれた年代(西暦4桁):";buf_year$
52290 goto Jyoushi_Input_Seireki2:
52300 endif
52310 case 3:
52320 count=4
52330 if (No = -1) then
52340 No=0
52350 goto Jyoushi_Input_Seireki2:
52360 else
52370 buf_year = c * 10 + No
52380 buf_year$ = str$(buf_year)
52390 buf_Jyoushi_Born_Day(0) = buf_year
52400 locate 1,3
52410 color RGB(255,255,255)
52420 print "                                      "
52430 locate 1,3
52440 print "上司の生まれた年代(西暦4桁):";buf_year$
52450 buf_year=val(buf_year$)
52460 'year=val(buf_year$)
52470 'if (No=-1) then
52480 'goto Input_Born_Month:
52490 'else
52500 goto Jyoushi_Input_Seireki2:
52510 endif
52520 case 4:
52530 'bufyear=buf_year
52540 if (No=-1) then
52550 buf_year = val(buf_year$)
52560 buf_Jyoushi_Born_Day(0)=buf_year
52570 sp_on 14,0:No=0
52580 goto Jyoushi_Input_Born_Month:
52590 else
52600 goto Jyoushi_Input_Seireki2:
52610 endif
52620 end select
52630 endif
52640 '===========================
52650 'ここまでを部下のところにコピーする.
52660 '===========================
52670 if (bg2 = 2) then
52680 select case count2
52690 case 0:
52700 if (No = -1) then
52710 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
52720 count=0
52730 locate 1,3
52740 color rgb(255,255,255)
52750 print "                                      "
52760 locate 1,3
52770 print "上司の生まれた年代（西暦4桁):" + buf_year$
52780 goto Jyoushi_Input_Seireki2:
52790 else
52800 '(buf_year=0) then
52810 buf_year=0:buf_year$="****"
52820 locate 1,3
52830 print "                                       "
52840 locate 1,3
52850 print "上司の生まれた年代(西暦4桁):"+buf_year$
52860 goto Jyoushi_Input_Seireki2:
52870 'endif
52880 endif
52890 end select
52900 endif
52910 'Input"上司の生れた年代(4桁,〜2025年):",year
52920 'if year > 2025 then goto Jyoushi_Input_Seireki:
52930 'if year = 123 then cls 3:cls 4:goto Main_Screen:
52940 '"4桁目"
52950 'bufyear4 = fix(year / 1000)
52960 '"3桁目"
52970 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
52980 '"2桁目"
52990 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
53000 '"1桁目"
53010 'bufyear1 = fix((year - ((bufyear4*
53020 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
53030 '2.生まれた月を入力
53040 Jyoushi_Input_Born_Month:
53050 cls 3:play "":count=0:count2=0
53060 'No=-1:Okのとき
53070 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
53080 for i=0 to 1
53090 buf_month(i)=0
53100 next i
53110 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53120 gload Gazo$ + "Screen1.png",0,0,0
53130 gload Gazo$ + "downscreen.png",0,0,800
53140 'Init"kb:4"
53150 '音声ファイル再生 2023.06.07
53160 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53170 font 48
53180 locate 0,1
53190 '文字色：黒　 color rgb(0,0,0)
53200 '文字色:白
53210 color rgb(255,255,255)
53220 print "上司の生まれた月を入れて下さい" + chr$(13)
53230 '文字色:白
53240 color rgb(255,255,255)
53250 locate 1,3
53260 '文字色:白
53270 print "上司の生まれた月(1月~12月):"+buf_Month$
53280 color rgb(255,255,255)
53290 'locate 4,6:print ":7"
53300 'locate 9,6:print ":8"
53310 'locate 12,6:print ":9"
53320 locate 4,6
53330 '文字色:赤
53340 print ":7  :8  :9" + chr$(13)
53350 color rgb(255,255,255)
53360 locate 4,8
53370 print ":4  :5  :6" + chr$(13)
53380 color rgb(255,255,255)
53390 locate 4,10
53400 print ":1  :2  :3" + chr$(13)
53410 locate 4,12
53420 print "    :0"
53430 locate 12,12
53440 color rgb(0,0,255)
53450 print ":Ok"
53460 sp_on 4,0: sp_on 5,0:sp_on 6,0
53470 sp_on 7,0:sp_on 8,0:sp_on 9,0
53480 sp_on 10,0:sp_on 11,0:sp_on 12,0
53490 sp_on 13,0:sp_on 14,1
53500 Jyoushi_Input_Born_Month2:
53510 key$="":bg=0:y=0:y2=0:bg2=0
53520 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53530 key$ = inkey$
53540 bg = strig(1)
53550 y = stick(1)
53560 y2 = stick(0)
53570 bg2 = strig(0)
53580 pause 5
53590 wend
53600 '十字キー　ここから
53610 '上の矢印　または、十字キー上
53620 if ((y = -1) or (key$ = chr$(30))) then
53630 select case No
53640 'No=-1:okのとき:初期の状態
53650 '0kボタンから３に移動
53660 '上に行く 処理
53670 case -1:
53680 No=3:sp_on 12,1:sp_on 14,0
53690 pause 200:goto Jyoushi_Input_Born_Month2:
53700 '選択肢:3
53710 '3ボタンから 6に移動
53720 case 3:
53730 No=6:sp_on 12,0:sp_on 11,1
53740 pause 200:goto Jyoushi_Input_Born_Month2:
53750 '6ボタンから ９に移動
53760 case 6:
53770 No=9:sp_on 10,1:sp_on 11,0
53780 pause 200:goto Jyoushi_Input_Born_Month2:
53790 '6ボタンから ９に移動　ここまで
53800 '9で上を押して何もしない
53810 case 9:
53820 '何もしない
53830 No=9
53840 pause 200:goto Jyoushi_Input_Born_Month2:
53850 '9で上を押しても何もしない　ここまで
53860 '上　 0ボタンから2ボタン
53870 'sp_on 6,1:1
53880 'sp_on 8,1:5
53890 'sp_on 7,1:7
53900 case 0:
53910 No=2:sp_on 13,0:sp_on 9,1:
53920 pause 200:goto Jyoushi_Input_Born_Month2:
53930 '上  0ボタンから2ボタン　ここまで
53940 '2から５になる 上
53950 case 2:
53960 No=5:sp_on 8,1:sp_on 9,0:
53970 pause 200:goto Jyoushi_Input_Born_Month2:
53980 case 5:
53990 No=8:sp_on 7,1:sp_on 8,0
54000 pause 200:goto Jyoushi_Input_Born_Month2:
54010 case 8:
54020 pause 200:goto Input_Born_Month2:
54030 case 1:
54040 No=4:sp_on 5,1:sp_on 6,0
54050 pause 200:goto Jyoushi_Input_Born_Month2:
54060 case 4:
54070 No=7:sp_on 4,1:sp_on 5,0
54080 pause 200:goto Jyoushi_Input_Born_Month2:
54090 case 7:
54100 pause 200:goto Input_Born_Month2:
54110 end select
54120 endif
54130 '左３　ここまで
54140 '下の矢印
54150 '中央 2
54160 if ((y=1) or (key$ = chr$(31))) then
54170 select case No
54180 '9から６に下げる
54190 case 9:
54200 No=6:sp_on 11,1:sp_on 10,0
54210 pause 200:goto Jyoushi_Input_Born_Month2:
54220 '6から３に下げる
54230 case 6:
54240 No=3:sp_on 12,1:sp_on 11,0
54250 pause 200:goto Jyoushi_Input_Born_Month2:
54260 '3から０ｋに変える
54270 case 3:
54280 No=-1:sp_on 14,1:sp_on 12,0
54290 pause 200:goto Jyoushi_Input_Born_Month2:
54300 'Okから下のボタンを押しても何もしない
54310 case -1:
54320 pause 200:goto Jyoushi_Input_Born_Month2:
54330 case 8:
54340 No=5:sp_on 8,1:sp_on 7,0
54350 pause 200:goto Jyoushi_Input_Born_Month2:
54360 case 5:
54370 No=2:sp_on 9,1:sp_on 8,0
54380 pause 200:goto Jyoushi_Input_Born_Month2:
54390 case 2:
54400 No=0:sp_on 13,1:sp_on 9,0
54410 pause 200:goto Jyoushi_Input_Born_Month2:
54420 case 0:
54430 pause 200:goto Jyoushi_Input_Born_Month2:
54440 case 7:
54450 No=4:sp_on 5,1:sp_on 4,0
54460 pause 200:goto Jyoushi_Input_Born_Month2:
54470 case 4:
54480 No=1:sp_on 6,1:sp_on 5,0
54490 pause 200:goto Jyoushi_Input_Born_Month2:
54500 case 1:
54510 pause 200:goto Jyoushi_Input_Born_Month2:
54520 end select
54530 endif
54540 '左へボタン 十字キー　左　or 　カーソル左
54550 if ((y2 = -1) or (key$ = chr$(29))) then
54560 select case No
54570 'Ok ボタン  Okから　左　０に行く
54580 case -1:
54590 No=0:sp_on 13,1:sp_on 14,0
54600 pause 200:goto Jyoushi_Input_Born_Month2:
54610 '0 ボタン  左　何もしない
54620 case 0:
54630 pause 200:goto Jyoushi_Input_Born_Month2:
54640 case 3:
54650 No=2:sp_on 9,1:sp_on 12,0:
54660 pause 200:goto Jyoushi_Input_Born_Month2:
54670 case 2:
54680 No=1:sp_on 6,1:sp_on 9,0:
54690 pause 200:goto Jyoushi_Input_Born_Month2:
54700 case 1:
54710 pause 200:goto Jyoushi_Input_Born_Month2:
54720 case 6:
54730 No=5:sp_on 8,1:sp_on 11,0
54740 pause 200:goto Jyoushi_Input_Born_Month2:
54750 case 5:
54760 No=4:sp_on 5,1:sp_on 8,0
54770 pause 200:goto Jyoushi_Input_Born_Month2:
54780 case 4:
54790 pause 200:goto Jyoushi_Input_Born_Month2:
54800 case 9:
54810 No=8:sp_on 7,1:sp_on 10,0
54820 pause 200:goto Input_Born_Month2:
54830 case 8:
54840 No=7:sp_on 4,1:sp_on 7,0
54850 pause 200:goto Jyoushi_Input_Born_Month2:
54860 case 7:
54870 pause 200:goto Jyoushi_Input_Born_Month2:
54880 end select
54890 endif
54900 '右  十字キー　右　or カーソル　右
54910 if ((y2 = 1) or (key$ = chr$(28))) then
54920 select case No
54930 '0ボタンからokボタン右に移動
54940 case 0:
54950 No=-1:sp_on 14,1:sp_on 13,0
54960 pause 200:goto Jyoushi_Input_Born_Month2:
54970 '0ボタンからokボタン 右に移動　ここまで
54980 'OKボタンで右を押して何もしない
54990 case -1:
55000 pause 200:goto Jyoushi_Input_Born_Month2:
55010 case 1:
55020 No=2:sp_on 9,1:sp_on 6,0
55030 pause 200:goto Jyoushi_Input_Born_Month2:
55040 case 2:
55050 No=3:sp_on 12,1:sp_on 9,0
55060 pause 200:goto Jyoushi_Input_Born_Month2:
55070 case 3:
55080 pause 200:goto Jyoushi_Input_Born_Month2:
55090 case 4:
55100 No=5:sp_on 8,1:sp_on 5,0
55110 pause 200:goto Jyoushi_Input_Born_Month2:
55120 case 5:
55130 No=6:sp_on 11,1:sp_on 8,0
55140 pause 200:goto Jyoushi_Input_Born_Month2:
55150 case 7:
55160 No=8:sp_on 7,1:sp_on 4,0
55170 pause 200:goto Jyoushi_Input_Born_Month2:
55180 case 8:
55190 No=9:sp_on 10,1:sp_on 7,0
55200 pause 200:goto Jyoushi_Input_Born_Month2:
55210 case 9:
55220 pause 200:goto Jyoushi_Input_Born_Month2:
55230 case 6:
55240 pause 200:goto Jyoushi_Input_Born_Month2:
55250 end select
55260 'Okから右ボタンを押して何もしない ここまで
55270 endif
55280 '十字キー　ここまで
55290 '右の丸ボタン + Enter key 決定キー
55300 if ((bg=2) or (key$=chr$(13))) then
55310 select case count
55320 case 0:
55330 if (No=-1) then No=0
55340 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
55350 if (buf_month > 1 and buf_month < 10)  then
55360 buf_Month$ = str$(buf_month)
55370 'buf_month=No
55380 endif
55390 if (buf_month = 1)  then
55400 buf_Month$ = str$(buf_month) + "*"
55410 'c=buf_month
55420 endif
55430 locate 1,3
55440 print "                                     "
55450 color RGB(255,255,255)
55460 locate 1,3
55470 print "上司の生まれた月(1月~12月):" + buf_Month$
55480 goto Jyoushi_Input_Born_Month2:
55490 case 1:
55500 count = 2:
55510 'c = val(buf_Month$)
55520 if (No = -1) then
55530 'count=0
55540 No=0
55550 month=buf_month
55560 buf_month=val(buf_Month$)
55570 month=buf_month
55580 buf_Jyoushi_Born_Day(1)=month
55590 '生まれた日に飛ぶ
55600 goto Jyoushi_Input_Born_Day:
55610 else
55620 buf_month = c*10 + No
55630 'if (buf_month = 1) then
55640 'buf_Month$ = str$(buf_month)
55650 'endif
55660 buf_Month$ = str$(buf_month)
55670 buf_Jyoushi_Born_Day(1) = buf_month
55680 locate 0,3
55690 print "                                           "
55700 locate 1,3
55710 color Rgb(255,255,255)
55720 print "上司の生まれた月(1月~12月):" + buf_Month$
55730 goto Jyoushi_Input_Born_Month2:
55740 endif
55750 case 2:
55760 '==================================
55770 '何もしない
55780 'coun = 2
55790 '==================================
55800 'c= val(buf_Month$)
55810 'buf_month = c*10 + No
55820 'buf_Month$ = str$(buf_month)
55830 'locate 2,3
55840 'print "上司の生まれた月(1月～12月):";buf_Month$
55850 'goto Jyoushi_Input_Born_Month2:
55860 'case 3:
55870 'count=4
55880 'b=val(buf_month$)
55890 'buf_month=c*10+No
55900 'buf_Month$=str$(buf_month)
55910 'locate 2,3
55920 'print "上司の生まれた月(1月～12月):";buf_Month$
55930 'buf_month=val(buf_Month$)
55940 'year=val(buf_year$)
55950 if (No=-1) then
55960 No=0
55970 goto Jyoushi_Input_Born_Day:
55980 else
55990 goto Jyoushi_Input_Born_Month2:
56000 endif
56010 'case 4:
56020 'bufyear=buf_year
56030 'if (No=-1) then
56040 'buf_month = val(buf_Month$)
56050 'month = buf_month
56060 'sp_on 14,0
56070 'goto Input_Born_Day:
56080 'else
56090 'goto Input_Born_Month2:
56100 'endif
56110 end select
56120 endif
56130 '左の丸ボタン　キャンセル
56140 if (bg2=2) then
56150 select case count2
56160 case 0:
56170 if (No = -1) then
56180 buf_month=0:buf_Month$="**"
56190 count=0
56200 'goto rewrite2:
56210 else
56220 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
56230 buf_month = 0:buf_Month$ = "**"
56240 locate 0,3
56250 color rgb(255,255,255)
56260 print "                                       "
56270 goto rewrite2:
56280 if (No>12) then
56290 ui_msg"値が範囲外です。"
56300 goto rewrite2:
56310 endif
56320 endif
56330 endif
56340 rewrite2:
56350 locate 2,3
56360 color rgb(255,255,255)
56370 print "                                      "
56380 locate 2,3
56390 print "上司の生まれた月(1月~12月):"+buf_Month$
56400 goto Jyoushi_Input_Born_Month2:
56410 end select
56420 'endif
56430 endif
56440 end
56450 'end
56460 '生れた日を入力
56470 Jyoushi_Input_Born_Day:
56480 '生まれた日入力
56490 cls 3:play ""
56500 'No=-1:Okのとき
56510 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
56520 for i=0 to 1
56530 buf_day(i)=0
56540 next i
56550 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56560 gload Gazo$ + "Screen1.png",0,0,0
56570 gload Gazo$ + "downscreen.png",0,0,800
56580 'Init"kb:2"
56590 '音声ファイル再生 2023.06.07
56600 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
56610 font 48
56620 locate 1,1
56630 '文字色：黒　 color rgb(0,0,0)
56640 color rgb(255,255,255)
56650 print "上司の生まれた日を入れて下さい" + chr$(13)
56660 locate 1,3
56670 color rgb(255,255,255)
56680 print "                                      "
56690 locate 1,3
56700 print "上司の生まれた日(1日~31日):"+buf_Day$
56710 color rgb(255,255,255)
56720 'locate 4,6:print ":7"
56730 'locate 9,6:print ":8"
56740 'locate 12,6:print ":9"
56750 locate 4,6
56760 print ":7  :8  :9" + chr$(13)
56770 color rgb(255,255,255)
56780 locate 4,8
56790 print ":4  :5  :6" + chr$(13)
56800 color rgb(255,255,255)
56810 locate 4,10
56820 print ":1  :2  :3" + chr$(13)
56830 locate 4,12
56840 print "    :0"
56850 locate 12,12
56860 color rgb(0,0,255)
56870 print ":Ok"
56880 sp_on 4,0: sp_on 5,0:sp_on 6,0
56890 sp_on 7,0:sp_on 8,0:sp_on 9,0
56900 sp_on 10,0:sp_on 11,0:sp_on 12,0
56910 sp_on 13,0:sp_on 14,1
56920 Jyoushi_Input_Born_Day2:
56930 key$="":bg=0:y=0:y2=0:bg2=0:
56940 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
56950 key$ = inkey$
56960 bg = strig(1)
56970 y = stick(1)
56980 y2 = stick(0)
56990 bg2 = strig(0)
57000 pause 5
57010 wend
57020 '十字キー　ここから
57030 '上の矢印　または、十字キー上
57040 if ((y = -1) or (key$ = chr$(30))) then
57050 select case No
57060 'No=-1:okのとき:初期の状態
57070 '0kボタンから３に移動
57080 '上に行く 処理
57090 case -1:
57100 No=3:sp_on 12,1:sp_on 14,0
57110 pause 200:goto Jyoushi_Input_Born_Day2:
57120 '選択肢:3
57130 '3ボタンから 6に移動
57140 case 3:
57150 No=6:sp_on 12,0:sp_on 11,1
57160 pause 200:goto Jyoushi_Input_Born_Day2:
57170 '6ボタンから ９に移動
57180 case 6:
57190 No=9:sp_on 10,1:sp_on 11,0
57200 pause 200:goto Jyoushi_Input_Born_Day2:
57210 '6ボタンから ９に移動　ここまで
57220 '9で上を押して何もしない
57230 case 9:
57240 '何もしない
57250 No=9
57260 pause 200:goto Jyoushi_Input_Born_Day2:
57270 '9で上を押しても何もしない　ここまで
57280 '上　 0ボタンから2ボタン
57290 'sp_on 6,1:1
57300 'sp_on 8,1:5
57310 'sp_on 7,1:7
57320 case 0:
57330 No=2:sp_on 13,0:sp_on 9,1:
57340 pause 200:goto Jyoushi_Input_Born_Day2:
57350 '上  0ボタンから2ボタン　ここまで
57360 '2から５になる 上
57370 case 2:
57380 No=5:sp_on 8,1:sp_on 9,0:
57390 pause 200:goto Jyoushi_Input_Born_Day2:
57400 case 5:
57410 No=8:sp_on 7,1:sp_on 8,0
57420 pause 200:goto Jyoushi_Input_Born_Day2:
57430 case 8:
57440 pause 200:goto Jyoushi_Input_Born_Day2:
57450 case 1:
57460 No=4:sp_on 5,1:sp_on 6,0
57470 pause 200:goto Jyoushi_Input_Born_Day2:
57480 case 4:
57490 No=7:sp_on 4,1:sp_on 5,0
57500 pause 200:goto Jyoushi_Input_Born_Day2:
57510 case 7:
57520 pause 200:goto Jyoushi_Input_Born_Day2:
57530 end select
57540 endif
57550 '左３　ここまで
57560 '下の矢印
57570 '中央 2
57580 if ((y=1) or (key$ = chr$(31))) then
57590 select case No
57600 '9から６に下げる
57610 case 9:
57620 No=6:sp_on 11,1:sp_on 10,0
57630 pause 200:goto Jyoushi_Input_Born_Day2:
57640 '6から３に下げる
57650 case 6:
57660 No=3:sp_on 12,1:sp_on 11,0
57670 pause 200:goto Jyoushi_Input_Born_Day2:
57680 '3から０ｋに変える
57690 case 3:
57700 No=-1:sp_on 14,1:sp_on 12,0
57710 pause 200:goto Jyoushi_Input_Born_Day2:
57720 'Okから下のボタンを押しても何もしない
57730 case -1:
57740 pause 200:goto Jyoushi_Input_Born_Day2:
57750 case 8:
57760 No=5:sp_on 8,1:sp_on 7,0
57770 pause 200:goto Jyoushi_Input_Born_Day2:
57780 case 5:
57790 No=2:sp_on 9,1:sp_on 8,0
57800 pause 200:goto Jyoushi_Input_Born_Day2:
57810 case 2:
57820 No=0:sp_on 13,1:sp_on 9,0
57830 pause 200:goto Jyoushi_Input_Born_Day2:
57840 case 0:
57850 pause 200:goto Jyoushi_Input_Born_Day2:
57860 case 7:
57870 No=4:sp_on 5,1:sp_on 4,0
57880 pause 200:goto Jyoushi_Input_Born_Day2:
57890 case 4:
57900 No=1:sp_on 6,1:sp_on 5,0
57910 pause 200:goto Jyoushi_Input_Born_Day2:
57920 case 1:
57930 pause 200:goto Jyoushi_Input_Born_Day2:
57940 end select
57950 endif
57960 '左へボタン 十字キー　左　or 　カーソル左
57970 if ((y2 = -1) or (key$ = chr$(29))) then
57980 select case No
57990 'Ok ボタン  Okから　左　０に行く
58000 case -1:
58010 No=0:sp_on 13,1:sp_on 14,0
58020 pause 200:goto Jyoushi_Input_Born_Day2:
58030 '0 ボタン  左　何もしない
58040 case 0:
58050 pause 200:goto Jyoushi_Input_Born_Day2:
58060 case 3:
58070 No=2:sp_on 9,1:sp_on 12,0:
58080 pause 200:goto Jyoushi_Input_Born_Day2:
58090 case 2:
58100 No=1:sp_on 6,1:sp_on 9,0:
58110 pause 200:goto Jyoushi_Input_Born_Day2:
58120 case 1:
58130 pause 200:goto Jyoushi_Input_Born_Day2:
58140 case 6:
58150 No=5:sp_on 8,1:sp_on 11,0
58160 pause 200:goto Jyoushi_Input_Born_Day2:
58170 case 5:
58180 No=4:sp_on 5,1:sp_on 8,0
58190 pause 200:goto Jyoushi_Input_Born_Day2:
58200 case 4:
58210 pause 200:goto Jyoushi_Input_Born_Day2:
58220 case 9:
58230 No=8:sp_on 7,1:sp_on 10,0
58240 pause 200:goto Jyoushi_Input_Born_Day2:
58250 case 8:
58260 No=7:sp_on 4,1:sp_on 7,0
58270 pause 200:goto Jyoushi_Input_Born_Day2:
58280 case 7:
58290 pause 200:goto Jyoushi_Input_Born_Day2:
58300 end select
58310 endif
58320 '右  十字キー　右　or カーソル　右
58330 if ((y2 = 1) or (key$ = chr$(28))) then
58340 select case No
58350 '0ボタンからokボタン右に移動
58360 case 0:
58370 No=-1:sp_on 14,1:sp_on 13,0
58380 pause 200:goto Jyoushi_Input_Born_Day2:
58390 '0ボタンからokボタン 右に移動　ここまで
58400 'OKボタンで右を押して何もしない
58410 case -1:
58420 pause 200:goto Jyoushi_Input_Born_Day2:
58430 case 1:
58440 No=2:sp_on 9,1:sp_on 6,0
58450 pause 200:goto Jyoushi_Input_Born_Day2:
58460 case 2:
58470 No=3:sp_on 12,1:sp_on 9,0
58480 pause 200:goto Jyoushi_Input_Born_Day2:
58490 case 3:
58500 pause 200:goto Jyoushi_Input_Born_Day2:
58510 case 4:
58520 No=5:sp_on 8,1:sp_on 5,0
58530 pause 200:goto Jyoushi_Input_Born_Day2:
58540 case 5:
58550 No=6:sp_on 11,1:sp_on 8,0
58560 pause 200:goto Jyoushi_Input_Born_Day2:
58570 case 7:
58580 No=8:sp_on 7,1:sp_on 4,0
58590 pause 200:goto Jyoushi_Input_Born_Day2:
58600 case 8:
58610 No=9:sp_on 10,1:sp_on 7,0
58620 pause 200:goto Jyoushi_Input_Born_Day2:
58630 case 9:
58640 pause 200:goto Jyoushi_Input_Born_Day2:
58650 case 6:
58660 pause 200:goto Jyoushi_Input_Born_Day2:
58670 end select
58680 'Okから右ボタンを押して何もしない ここまで
58690 endif
58700 '十字キー　ここまで
58710 '右の丸ボタンを押したとき
58720 if ((bg = 2) or (key$ = chr$(13))) then
58730 'count :決定ボタンを押した回数
58740 select case (count)
58750 '1桁目入力
58760 case 0:
58770 count = 1:
58780 if (No = -1) then
58790 '1桁目　OKでは何もしない
58800 No=c
58810 'goto Jyoushi_Input_Born_Day2:
58820 else
58830 'ok以外のボタンを押したとき
58840 buf_day = No:buf_Day$ = str$(No)
58850 buf_Jyoushi_Born_Day(2)=buf_day
58860 c=No
58870 locate 1,3
58880 print "                                      "
58890 color RGB(255,255,255)
58900 locate 1,3
58910 print "上司の生まれた日(1日~31日):" + buf_Day$
58920 endif
58930 'check2:
58940 'if (buf_day >= 1 and buf_day <= 9) then
58950 'sp_on 14,0
58960 'goto complate_jyoushi:
58970 'else
58980 'sp_on 14,0
58990 goto Jyoushi_Input_Born_Day2:
59000 'end
59010 'endif
59020 case 1:
59030 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
59040 count = 2:
59050 'locate 2,3
59060 'color RGB(255,255,255)
59070 'print "生まれた日(1日~31日):";buf_Day$
59080 'Okボタンを押したときの処理
59090 '入力値　10未満のとき
59100 'buf_day = c * 10 + No
59110 if (No = -1) then
59120 c=buf_day:No=0
59130 'buf_day = c
59140 buf_Day$ = str$(buf_day)
59150 '10以下のとき
59160 'if (buf_day < 10) then
59170 sp_on 14,0
59180 goto complate_jyoushi:
59190 'end
59200 'endif
59210 else
59220 'c=No
59230 buf_day = c * 10 + No
59240 buf_Day$ = str$(buf_day)
59250 'buf_day = c:buf_Day$=str$(buf_day)
59260 buf_Jyoushi_Born_Day(2)=buf_day
59270 locate 1,3
59280 print "                                           "
59290 locate 1,3
59300 color Rgb(255,255,255)
59310 print "上司の生まれた日(1日~31日):" + buf_Day$
59320 goto Jyoushi_Input_Born_Day2:
59330 'goto
59340 endif
59350 'endif
59360 '生まれた日　2桁目の数字　or 1桁の数字 + ok
59370 case 2:
59380 'buf_day = c * 10 + No
59390 'buf_Jyoushi_Born_Day(2)=buf_day
59400 'locate 1,3
59410 'print "                                      "
59420 'locate 1,3
59430 'locate 2,3
59440 'print "生まれた日(1日〜31日):";buf_Day
59450 'No=-1:ok ボタンを押したとき
59460 if (No = -1) then
59470 'if ((buf_day > 0) and (buf_day < 32)) then
59480 No=0
59490 sp_on 14,0
59500 goto complate_jyoushi:
59510 'end
59520 else
59530 goto Jyoushi_Input_Born_Day2:
59540 'endif
59550 'Okボタン以外を押したとき
59560 'else
59570 'c=val(buf_Day$)
59580 'buf_day = c * 10 + No
59590 'buf_Jyoushi_Born_Day(2) = buf_day
59600 'buf_Day$ = str$(buf_day)
59610 'locate 1,3
59620 'print "上司の生まれた日(1日~31日):";buf_Day$
59630 'goto Jyoushi_Input_Born_Day2:
59640 endif
59650 'case 3:
59660 'count=4
59670 'c=val(buf_day$)
59680 'buf_day=c*10+No
59690 'buf_day$=str$(buf_day)
59700 'locate 2,3
59710 'print "生まれた日を入れてください:";buf_day$
59720 'year=val(buf_year$)
59730 'if (No = -1) then
59740 'goto Jyoushi_Input_Born_Day:
59750 'sp_on 14,0:
59760 'goto complate_jyoushi:
59770 'else
59780 'goto Jyoushi_Input_Born_Month2:
59790 'endif
59800 'case 4:
59810 'bufyear=buf_year
59820 'if (No=-1) then
59830 'buf_day = val(buf_day$)
59840 'bufday = buf_day
59850 'sp_on 14,0
59860 'goto Jyoushi_Input_Born_Day2:
59870 'else
59880 'goto Jyoushi_Input_Born_Day2:
59890 'endif
59900 end select
59910 endif
59920 if (bg2=2) then
59930 select case count2
59940 case 0:
59950 if (No=-1) then
59960 buf_day=0:buf_Day$="**":No=0
59970 if (buf_day >= 1 and buf_day <= 31) then
59980 count=0
59990 buf_day=0:buf_Day$ = "**"
60000 goto rewrite_day3:
60010 else
60020 buf_day=0:buf_Day$ = "**"
60030 ui_msg"値が範囲外です"
60040 endif
60050 goto rewrite_day3:
60060 else
60070 goto rewrite_day3:
60080 endif
60090 rewrite_day3:
60100 locate 2,3
60110 color rgb(255,255,255)
60120 print "                                      "
60130 locate 2,3
60140 print "生まれた日(1日~31日):" + buf_Day$
60150 goto Jyoushi_Input_Born_Day2:
60160 end select
60170 endif
60180 '--------------------------------------------'
60190 'locate 2,0:color rgb(255,0,0)
60200 'print "上司の生まれた年代を入力"
60210 'color rgb(255,255,255)
60220 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
60230 'locate 2,4:Input "上司の生まれた年:",born_year
60240 '誕生日データーを配列に代入
60250 'buf_Jyoushi_Born_Year:上司の生まれた年代
60260 'buf_Jyoushi_Born_Day(0) = born_year
60270 'born_year = 0
60280 '---------------------------------------------'
60290 'goto Jyoushi_born_month:
60300 '1-2.生まれた月を入力
60310 'Jyoushi_born_month:
60320 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60330 'init "kb:4"
60340 'locate 2,1:
60350 'color rgb(255,0,0)
60360 'print "上司の生まれた月入力"
60370 'color rgb(255,255,255)
60380 'locate 2,4:print "生まれた月を入力してください"
60390 'locate 2,5
60400 'Input "上司の生まれ月:",born_month
60410 'buf_Jyoushi_Born_Day(1) = born_month
60420 'born_month = 0
60430 'goto Jyoushi_born_day:
60440 'buf_Jyoushi_Born_day
60450 '1-3.生まれた日を入力
60460 'Jyoushi_born_day:
60470 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60480 'init "kb:4"
60490 'locate 2,1:color rgb(255,0,0)
60500 'print "上司の生まれた日　入力"
60510 'locate 2,4:color rgb(255,255,255)
60520 'print "生まれた日を入力してください"
60530 'locate 2,5
60540 'Input "上司の生まれた日:",born_day
60550 'buf_Jyoushi_Born_Day(2) = born_day
60560 'born_day = 0
60570 'goto buka_born_year:
60580 '2.部下の誕生日入力
60590 '2-1.生まれた年を入力
60600 'buka_born_year:
60610 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60620 'init "kb:2"
60630 'locate 1,1:color rgb(255,0,0)
60640 'print "部下の生まれた年代入力"
60650 'locate 0,4:color rgb(255,255,255)
60660 'print "部下の生まれた年（西暦4桁）を入れてください"
60670 'locate 0,5
60680 'Input "部下の生まれた年(西暦4桁):",born_year
60690 'buf_Buka_Born_Day(0) = born_year
60700 'born_year = 0
60710 '2-2.生まれた月を入力
60720 'buka_born_month:
60730 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60740 'init "kb:2"
60750 'locate 2,1:color rgb(255,0,0)
60760 'print "部下の生まれた月 入力"
60770 'locate 2,4:color rgb(255,255,255)
60780 'print "部下の生まれた月を入力してください"
60790 'locate 2,5:Input "部下の生まれた月:",born_month
60800 'buf_Buka_Born_Day(1) = born_month
60810 '2-3.生まれた日を入力
60820 'buka_born_day:
60830 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60840 'init "kb:2"
60850 'locate 2,1:color rgb(255,0,0)
60860 'print "生まれた日入力"
60870 'color rgb(255,255,255)
60880 'locate 2,4:print "生まれた日を入力してください"
60890 'locate 2,5:Input "部下の生まれた日:",born_day
60900 'buf_Buka_Born_Day(2) = born_day
60910 'born_day=0:goto Result_Business_Aisyou:
60920 '--------------------------------------------'
60930 complate_jyoushi:
60940 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
60950 buf_Jyoushi = Kabara_Num(a,b,c)
60960 a_1=buf_Jyoushi
60970 goto Buka_Input_Seireki:
60980 '--------------------------------------------'
60990 '部下'
61000 '1.部下の生まれた年代'
61010 Buka_Input_Seireki:
61020 cls 3:play "":count=0:count2=0
61030 init"kb:4"
61040 'No=-1:Okのとき
61050 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
61060 for i=0 to 3
61070 buf_Buka_Born_Day(i)=0
61080 next i
61090 gload Gazo$ + "Screen1.png",0,0,0
61100 gload Gazo$ + "downscreen.png",0,0,800
61110 'Init"kb:2"
61120 '音声ファイル再生 2023.06.07
61130 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
61140 font 48
61150 locate 0,1
61160 '文字色：黒　 color rgb(0,0,0)
61170 color rgb(255,255,255)
61180 print "部下の生まれた年代を入れて下さい" + chr$(13)
61190 color rgb(255,255,255)
61200 locate 1,3
61210 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
61220 color rgb(255,255,255)
61230 'locate 4,6:print ":7"
61240 'locate 9,6:print ":8"
61250 'locate 12,6:print ":9"
61260 locate 4,6
61270 print ":7  :8  :9" + chr$(13)
61280 color rgb(255,255,255)
61290 locate 4,8
61300 print ":4  :5  :6" + chr$(13)
61310 color rgb(255,255,255)
61320 locate 4,10
61330 print ":1  :2  :3" + chr$(13)
61340 locate 4,12
61350 print "    :0"
61360 locate 12,12
61370 color rgb(0,0,255)
61380 print ":Ok"
61390 sp_on 4,0: sp_on 5,0:sp_on 6,0
61400 sp_on 7,0:sp_on 8,0:sp_on 9,0
61410 sp_on 10,0:sp_on 11,0:sp_on 12,0
61420 sp_on 13,0:sp_on 14,1
61430 Buka_Input_Seireki2:
61440 key$="":bg=0:y=0:y2=0:bg2=0:
61450 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
61460 key$ = inkey$
61470 bg = strig(1)
61480 y = stick(1)
61490 y2 = stick(0)
61500 bg2=strig(0)
61510 pause 5
61520 wend
61530 '十字キー　ここから
61540 '上の矢印　または、十字キー上
61550 if ((y = -1) or (key$ = chr$(30))) then
61560 select case No
61570 'No=-1:okのとき:初期の状態
61580 '0kボタンから３に移動
61590 '上に行く 処理
61600 case -1:
61610 No=3:sp_on 12,1:sp_on 14,0
61620 pause 200:goto Buka_Input_Seireki2:
61630 '選択肢:3
61640 '3ボタンから 6に移動
61650 case 3:
61660 No=6:sp_on 12,0:sp_on 11,1
61670 pause 200:goto Buka_Input_Seireki2:
61680 '6ボタンから ９に移動
61690 case 6:
61700 No=9:sp_on 10,1:sp_on 11,0
61710 pause 200:goto Buka_Input_Seireki2:
61720 '6ボタンから ９に移動　ここまで
61730 '9で上を押して何もしない
61740 case 9:
61750 '何もしない
61760 No=9
61770 pause 200:goto Buka_Input_Seireki2:
61780 '9で上を押しても何もしない　ここまで
61790 '上　 0ボタンから2ボタン
61800 'sp_on 6,1:1
61810 'sp_on 8,1:5
61820 'sp_on 7,1:7
61830 case 0:
61840 No=2:sp_on 13,0:sp_on 9,1:
61850 pause 200:goto Buka_Input_Seireki2:
61860 '上  0ボタンから2ボタン　ここまで
61870 '2から５になる 上
61880 case 2:
61890 No=5:sp_on 8,1:sp_on 9,0:
61900 pause 200:goto Buka_Input_Seireki2:
61910 case 5:
61920 No=8:sp_on 7,1:sp_on 8,0
61930 pause 200:goto Buka_Input_Seireki2:
61940 case 8:
61950 pause 200:goto Buka_Input_Seireki2:
61960 case 1:
61970 No=4:sp_on 5,1:sp_on 6,0
61980 pause 200:goto Buka_Input_Seireki2:
61990 case 4:
62000 No=7:sp_on 4,1:sp_on 5,0
62010 pause 200:goto Buka_Input_Seireki2:
62020 case 7:
62030 pause 200:goto Buka_Input_Seireki2:
62040 end select
62050 endif
62060 '左３　ここまで
62070 '下の矢印
62080 '中央 2
62090 if ((y=1) or (key$ = chr$(31))) then
62100 select case No
62110 '9から６に下げる
62120 case 9:
62130 No=6:sp_on 11,1:sp_on 10,0
62140 pause 200:goto Buka_Input_Seireki2:
62150 '6から３に下げる
62160 case 6:
62170 No=3:sp_on 12,1:sp_on 11,0
62180 pause 200:goto Buka_Input_Seireki2:
62190 '3から０ｋに変える
62200 case 3:
62210 No=-1:sp_on 14,1:sp_on 12,0
62220 pause 200:goto Buka_Input_Seireki2:
62230 'Okから下のボタンを押しても何もしない
62240 case -1:
62250 pause 200:goto Buka_Input_Seireki2:
62260 case 8:
62270 No=5:sp_on 8,1:sp_on 7,0
62280 pause 200:goto Buka_Input_Seireki2:
62290 case 5:
62300 No=2:sp_on 9,1:sp_on 8,0
62310 pause 200:goto Buka_Input_Seireki2:
62320 case 2:
62330 No=0:sp_on 13,1:sp_on 9,0
62340 pause 200:goto Buka_Input_Seireki2:
62350 case 0:
62360 pause 200:goto Buka_Input_Seireki2:
62370 case 7:
62380 No=4:sp_on 5,1:sp_on 4,0
62390 pause 200:goto Buka_Input_Seireki2:
62400 case 4:
62410 No=1:sp_on 6,1:sp_on 5,0
62420 pause 200:goto Buka_Input_Seireki2:
62430 case 1:
62440 pause 200:goto Buka_Input_Seireki2:
62450 end select
62460 endif
62470 '左へボタン 十字キー　左　or 　カーソル左
62480 if ((y2 = -1) or (key$ = chr$(29))) then
62490 select case No
62500 'Ok ボタン  Okから　左　０に行く
62510 case -1:
62520 No=0:sp_on 13,1:sp_on 14,0
62530 pause 200:goto Buka_Input_Seireki2:
62540 '0 ボタン  左　何もしない
62550 case 0:
62560 pause 200:goto Buka_Input_Seireki2:
62570 case 3:
62580 No=2:sp_on 9,1:sp_on 12,0:
62590 pause 200:goto Buka_Input_Seireki2:
62600 case 2:
62610 No=1:sp_on 6,1:sp_on 9,0:
62620 pause 200:goto Buka_Input_Seireki2:
62630 case 1:
62640 pause 200:goto Buka_Input_Seireki2:
62650 case 6:
62660 No=5:sp_on 8,1:sp_on 11,0
62670 pause 200:goto Buka_Input_Seireki2:
62680 case 5:
62690 No=4:sp_on 5,1:sp_on 8,0
62700 pause 200:goto Buka_Input_Seireki2:
62710 case 4:
62720 pause 200:goto Buka_Input_Seireki2:
62730 case 9:
62740 No=8:sp_on 7,1:sp_on 10,0
62750 pause 200:goto Buka_Input_Seireki2:
62760 case 8:
62770 No=7:sp_on 4,1:sp_on 7,0
62780 pause 200:goto Buka_Input_Seireki2:
62790 case 7:
62800 pause 200:goto Buka_Input_Seireki2:
62810 end select
62820 endif
62830 '右  十字キー　右　or カーソル　右
62840 if ((y2 = 1) or (key$ = chr$(28))) then
62850 select case No
62860 '0ボタンからokボタン右に移動
62870 case 0:
62880 No=-1:sp_on 14,1:sp_on 13,0
62890 pause 200:goto Buka_Input_Seireki2:
62900 '0ボタンからokボタン 右に移動　ここまで
62910 'OKボタンで右を押して何もしない
62920 case -1:
62930 pause 200:goto Buka_Input_Seireki2:
62940 case 1:
62950 No=2:sp_on 9,1:sp_on 6,0
62960 pause 200:goto Buka_Input_Seireki2:
62970 case 2:
62980 No=3:sp_on 12,1:sp_on 9,0
62990 pause 200:goto Buka_Input_Seireki2:
63000 case 3:
63010 pause 200:goto Buka_Input_Seireki2:
63020 case 4:
63030 No=5:sp_on 8,1:sp_on 5,0
63040 pause 200:goto Buka_Input_Seireki2:
63050 case 5:
63060 No=6:sp_on 11,1:sp_on 8,0
63070 pause 200:goto Buka_Input_Seireki2:
63080 case 7:
63090 No=8:sp_on 7,1:sp_on 4,0
63100 pause 200:goto Buka_Input_Seireki2:
63110 case 8:
63120 No=9:sp_on 10,1:sp_on 7,0
63130 pause 200:goto Buka_Input_Seireki2:
63140 case 9:
63150 pause 200:goto Buka_Input_Seireki2:
63160 case 6:
63170 pause 200:goto Buka_Input_Seireki2:
63180 end select
63190 'Okから右ボタンを押して何もしない ここまで
63200 endif
63210 '十字キー　ここまで
63220 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
63230 'ここからコメント
63240 '右の丸ボタン決定を押した数:count
63250 'if ((bg=2) or (key$=chr$(13))) then
63260 'select case count
63270 'case 0:
63280 'count=1
63290 'if (No = -1) then
63300 'count = 0
63310 'Okボタンを押したとき
63320 '
63330 'goto Buka_Input_Seireki2:
63340 'else
63350 'Okボタン以外が押されたとき
63360 'if (No >= 1 and No <= 2) then
63370 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
63380 'buf_buka_year = No
63390 'buf_Buka_Born_Day(0) = bufyear
63400 'locate 2,3
63410 'color rgb(255,255,255)
63420 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63430 'goto Buka_Input_Seireki2:
63440 'else
63450 'count=0
63460 'ui_msg"数字が範囲外になります。"
63470 'buf_buka_year$ ="":buf_buka_year=0
63480 'goto Buka_Input_Seireki2:
63490 'endif
63500 'endif
63510 'case 1:
63520 'count = 2
63530 'if (No = -1) then
63540 'count = 1
63550 'goto Buka_Input_Seireki2:
63560 'else
63570 'b = val(buf_buka_year$)
63580 'buf_buka_year = b * 10 + No
63590 'buf_buka_year$ = str$(buf_buka_year)
63600 'buf_Buka_Born_Day(0) = bufyear
63610 'locate 1,3
63620 'color rgb(255,255,255)
63630 'print "                                                                "
63640 'locate 1,3
63650 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63660 'if (No = -1) then
63670 'count=1
63680 'goto Buka_Input_Seireki2:
63690 'endif
63700 'case 2:
63710 'count = 3
63720 'if (No = -1) then
63730 'count = 2
63740 'buf_Buka_Born_Day(0)=bufyear
63750 'goto Buka_Input_Seireki2:
63760 'else
63770 'b = val(buf_buka_year$)
63780 'buf_buka_year = b*10 + No
63790 'buf_buka_year$ = str$(buf_buka_year)
63800 'locate 1,3
63810 'color rgb(255,255,255)
63820 'print "                                        "
63830 'locate 1,3
63840 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
63850 'goto Buka_Input_Seireki2:
63860 'endif
63870 'case 3:
63880 'count=4
63890 'if (No = -1) then
63900 'count=3
63910 'goto Buka_Input_Seireki2:
63920 'else
63930 'b = buf_buka_year
63940 'buf_buka_year = b * 10 + No
63950 'buf_buka_year$=str$(buf_buka_year)
63960 'locate 1,3
63970 'color RGB(255,255,255)
63980 'print "                                      "
63990 'locate 1,3
64000 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64010 'buf_year=val(buf_year$)
64020 'year=val(buf_year$)
64030 'if (No=-1) then
64040 'goto Input_Born_Month:
64050 'else
64060 'goto Buka_Input_Seireki2:
64070 'endif
64080 'case 4:
64090 'bufyear=buf_year
64100 'if (No=-1) then
64110 'buf_year = val(buf_year$)
64120 'bufyear = buf_year
64130 'sp_on 14,0
64140 'goto Buka_Input_Born_Month:
64150 'else
64160 'goto Buka_Input_Seireki2:
64170 'endif
64180 'end select
64190 'endif
64200 'if (bg2 = 2) then
64210 'select case count2
64220 'case 0:
64230 'if (No = -1) then
64240 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
64250 'count=0
64260 'locate 1,3
64270 'color rgb(255,255,255)
64280 'print "                                      "
64290 'locate 1,3
64300 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
64310 'goto Buka_Input_Seireki2:
64320 'else
64330 '(buf_year=0) then
64340 'buf_buka_year=0:buf_buka_year$="****"
64350 'goto Buka_Input_Seireki2:
64360 'endif
64370 'endif
64380 'end select
64390 'endif
64400 'end
64410 'ここまでコメント
64420 '================================================================
64430 if ((bg=2) or (key$=chr$(13))) then
64440 select case count
64450 case 0:
64460 count = 1
64470 if (No=-1) then
64480 count = 0
64490 buf_Buka_Born_Day(0) = No
64500 'Okボタンを押したとき
64510 goto Buka_Input_Seireki2:
64520 else
64530 'Okボタン以外が押されたとき
64540 if (No>=1 and No<=2) then
64550 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
64560 buf_buka_year = No
64570 buf_Buka_Born_Day(0) = No
64580 locate 1,3
64590 color rgb(255,255,255)
64600 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64610 goto Buka_Input_Seireki2:
64620 else
64630 count=0
64640 ui_msg"数字が範囲外になります。"
64650 buf_buka_year$="":buf_buka_year=0
64660 goto Buka_Input_Seireki2:
64670 endif
64680 endif
64690 case 1:
64700 count = 2
64710 if (No = -1) then
64720 count = 1
64730 goto Buka_Input_Seireki2:
64740 else
64750 'b = val(buf_buka_year$)
64760 buf_buka_year = a * 10 + No
64770 b=buf_buka_year
64780 buf_buka_year$ = str$(buf_buka_year)+"**"
64790 buf_Buka_Born_Day(0)=buf_buka_year
64800 locate 1,3
64810 color rgb(255,255,255)
64820 print "                                                                "
64830 locate 1,3
64840 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
64850 'if (No = -1) then
64860 'count=1
64870 goto Buka_Input_Seireki2:
64880 endif
64890 case 2:
64900 count=3
64910 if (No=-1) then
64920 count =2:No=0
64930 goto Buka_Input_Seireki2:
64940 else
64950 'b = val(buf_buka_year$)
64960 buf_buka_year = b * 10 + No
64970 c = buf_buka_year
64980 buf_buka_year$ = str$(buf_buka_year) + "*"
64990 buf_Buka_Born_Day(0) = buf_buka_year
65000 locate 1,3
65010 color rgb(255,255,255)
65020 print "                                        "
65030 locate 1,3
65040 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65050 goto Buka_Input_Seireki2:
65060 endif
65070 case 3:
65080 count=4
65090 if (No = -1) then
65100 'count=3:No=0
65110 goto Buka_Input_Seireki2:
65120 else
65130 'b = val(buf_buka_year$)
65140 buf_buka_year=c * 10 + No
65150 buf_buka_year$=str$(buf_buka_year)
65160 buf_Buka_Born_Day(0)=buf_buka_year
65170 locate 1,3
65180 color RGB(255,255,255)
65190 print "                                      "
65200 locate 1,3
65210 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65220 buf_buka_year=val(buf_buka_year$)
65230 'year=val(buf_year$)
65240 'if (No=-1) then
65250 'goto Input_Born_Month:
65260 'else
65270 goto Buka_Input_Seireki2:
65280 endif
65290 case 4:
65300 'bufyear=buf_year
65310 if (No = -1) then
65320 buf_buka_year = val(buf_buka_year$)
65330 buf_Buka_Born_Day(0)=buf_buka_year
65340 sp_on 14,0
65350 goto Buka_Input_Born_Month:
65360 else
65370 goto Buka_Input_Seireki2:
65380 endif
65390 end select
65400 endif
65410 '================================================================
65420 'ここにコピーする。
65430 '================================================================
65440 'Input"部下の生れた年代(4桁,〜2025年):",year
65450 'if year > 2025 then goto Jyoushi_Input_Seireki:
65460 'if year = 123 then cls 3:cls 4:goto Main_Screen:
65470 '"4桁目"
65480 'bufyear4 = fix(year / 1000)
65490 '"3桁目"
65500 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
65510 '"2桁目"
65520 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
65530 '"1桁目"
65540 'bufyear1 = fix((year - ((bufyear4*
65550 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
65560 '1.部下の生まれた年代'
65570 '2.部下の生まれた月'
65580 Buka_Input_Born_Month:
65590 cls 3:play "":count=0:count2=0
65600 'No=-1:Okのとき
65610 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
65620 for i=0 to 1
65630 buf_month(i)=0
65640 next i
65650 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
65660 gload Gazo$ + "Screen1.png",0,0,0
65670 gload Gazo$ + "downscreen.png",0,0,800
65680 'Init"kb:4"
65690 '音声ファイル再生 2023.06.07
65700 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
65710 font 48
65720 locate 0,1
65730 '文字色：黒　 color rgb(0,0,0)
65740 '文字色:白
65750 color rgb(255,255,255)
65760 print "部下の生まれた月を入れて下さい" + chr$(13)
65770 '文字色:白
65780 color rgb(255,255,255)
65790 locate 1,3
65800 '文字色:白
65810 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
65820 color rgb(255,255,255)
65830 'locate 4,6:print ":7"
65840 'locate 9,6:print ":8"
65850 'locate 12,6:print ":9"
65860 locate 4,6
65870 '文字色:赤
65880 print ":7  :8  :9" + chr$(13)
65890 color rgb(255,255,255)
65900 locate 4,8
65910 print ":4  :5  :6" + chr$(13)
65920 color rgb(255,255,255)
65930 locate 4,10
65940 print ":1  :2  :3" + chr$(13)
65950 locate 4,12
65960 print "    :0"
65970 locate 12,12
65980 color rgb(0,0,255)
65990 print ":Ok"
66000 sp_on 4,0: sp_on 5,0:sp_on 6,0
66010 sp_on 7,0:sp_on 8,0:sp_on 9,0
66020 sp_on 10,0:sp_on 11,0:sp_on 12,0
66030 sp_on 13,0:sp_on 14,1
66040 Buka_Input_Born_Month2:
66050 key$="":bg=0:y=0:y2=0:bg2=0
66060 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
66070 key$ = inkey$
66080 bg = strig(1)
66090 y = stick(1)
66100 y2 = stick(0)
66110 bg2 = strig(0)
66120 pause 5
66130 wend
66140 '十字キー　ここから
66150 '上の矢印　または、十字キー上
66160 if ((y = -1) or (key$ = chr$(30))) then
66170 select case No
66180 'No=-1:okのとき:初期の状態
66190 '0kボタンから３に移動
66200 '上に行く 処理
66210 case -1:
66220 No=3:sp_on 12,1:sp_on 14,0
66230 pause 200:goto Buka_Input_Born_Month2:
66240 '選択肢:3
66250 '3ボタンから 6に移動
66260 case 3:
66270 No=6:sp_on 12,0:sp_on 11,1
66280 pause 200:goto Buka_Input_Born_Month2:
66290 '6ボタンから ９に移動
66300 case 6:
66310 No=9:sp_on 10,1:sp_on 11,0
66320 pause 200:goto Buka_Input_Born_Month2:
66330 '6ボタンから ９に移動　ここまで
66340 '9で上を押して何もしない
66350 case 9:
66360 '何もしない
66370 No=9
66380 pause 200:goto Buka_Input_Born_Month2:
66390 '9で上を押しても何もしない　ここまで
66400 '上　 0ボタンから2ボタン
66410 'sp_on 6,1:1
66420 'sp_on 8,1:5
66430 'sp_on 7,1:7
66440 case 0:
66450 No=2:sp_on 13,0:sp_on 9,1:
66460 pause 200:goto Buka_Input_Born_Month2:
66470 '上  0ボタンから2ボタン　ここまで
66480 '2から５になる 上
66490 case 2:
66500 No=5:sp_on 8,1:sp_on 9,0:
66510 pause 200:goto Buka_Input_Born_Month2:
66520 case 5:
66530 No=8:sp_on 7,1:sp_on 8,0
66540 pause 200:goto Buka_Input_Born_Month2:
66550 case 8:
66560 pause 200:goto Buka_Input_Born_Month2:
66570 case 1:
66580 No=4:sp_on 5,1:sp_on 6,0
66590 pause 200:goto Buka_Input_Born_Month2:
66600 case 4:
66610 No=7:sp_on 4,1:sp_on 5,0
66620 pause 200:goto Buka_Input_Born_Month2:
66630 case 7:
66640 pause 200:goto Buka_Input_Born_Month2:
66650 end select
66660 endif
66670 '左３　ここまで
66680 '下の矢印
66690 '中央 2
66700 if ((y=1) or (key$ = chr$(31))) then
66710 select case No
66720 '9から６に下げる
66730 case 9:
66740 No=6:sp_on 11,1:sp_on 10,0
66750 pause 200:goto Buka_Input_Born_Month2:
66760 '6から３に下げる
66770 case 6:
66780 No=3:sp_on 12,1:sp_on 11,0
66790 pause 200:goto Buka_Input_Born_Month2:
66800 '3から０ｋに変える
66810 case 3:
66820 No=-1:sp_on 14,1:sp_on 12,0
66830 pause 200:goto Buka_Input_Born_Month2:
66840 'Okから下のボタンを押しても何もしない
66850 case -1:
66860 pause 200:goto Buka_Input_Born_Month2:
66870 case 8:
66880 No=5:sp_on 8,1:sp_on 7,0
66890 pause 200:goto Buka_Input_Born_Month2:
66900 case 5:
66910 No=2:sp_on 9,1:sp_on 8,0
66920 pause 200:goto Buka_Input_Born_Month2:
66930 case 2:
66940 No=0:sp_on 13,1:sp_on 9,0
66950 pause 200:goto Buka_Input_Born_Month2:
66960 case 0:
66970 pause 200:goto Buka_Input_Born_Month2:
66980 case 7:
66990 No=4:sp_on 5,1:sp_on 4,0
67000 pause 200:goto Buka_Input_Born_Month2:
67010 case 4:
67020 No=1:sp_on 6,1:sp_on 5,0
67030 pause 200:goto Buka_Input_Born_Month2:
67040 case 1:
67050 pause 200:goto Buka_Input_Born_Month2:
67060 end select
67070 endif
67080 '左へボタン 十字キー　左　or 　カーソル左
67090 if ((y2 = -1) or (key$ = chr$(29))) then
67100 select case No
67110 'Ok ボタン  Okから　左　０に行く
67120 case -1:
67130 No=0:sp_on 13,1:sp_on 14,0
67140 pause 200:goto Buka_Input_Born_Month2:
67150 '0 ボタン  左　何もしない
67160 case 0:
67170 pause 200:goto Buka_Input_Born_Month2:
67180 case 3:
67190 No=2:sp_on 9,1:sp_on 12,0:
67200 pause 200:goto Buka_Input_Born_Month2:
67210 case 2:
67220 No=1:sp_on 6,1:sp_on 9,0:
67230 pause 200:goto Buka_Input_Born_Month2:
67240 case 1:
67250 pause 200:goto Buka_Input_Born_Month2:
67260 case 6:
67270 No=5:sp_on 8,1:sp_on 11,0
67280 pause 200:goto Buka_Input_Born_Month2:
67290 case 5:
67300 No=4:sp_on 5,1:sp_on 8,0
67310 pause 200:goto Buka_Input_Born_Month2:
67320 case 4:
67330 pause 200:goto Buka_Input_Born_Month2:
67340 case 9:
67350 No=8:sp_on 7,1:sp_on 10,0
67360 pause 200:goto Buka_Input_Born_Month2:
67370 case 8:
67380 No=7:sp_on 4,1:sp_on 7,0
67390 pause 200:goto Buka_Input_Born_Month2:
67400 case 7:
67410 pause 200:goto Buka_Input_Born_Month2:
67420 end select
67430 endif
67440 '右  十字キー　右　or カーソル　右
67450 if ((y2 = 1) or (key$ = chr$(28))) then
67460 select case No
67470 '0ボタンからokボタン右に移動
67480 case 0:
67490 No=-1:sp_on 14,1:sp_on 13,0
67500 pause 200:goto Buka_Input_Born_Month2:
67510 '0ボタンからokボタン 右に移動　ここまで
67520 'OKボタンで右を押して何もしない
67530 case -1:
67540 pause 200:goto Buka_Input_Born_Month2:
67550 case 1:
67560 No=2:sp_on 9,1:sp_on 6,0
67570 pause 200:goto Buka_Input_Born_Month2:
67580 case 2:
67590 No=3:sp_on 12,1:sp_on 9,0
67600 pause 200:goto Buka_Input_Born_Month2:
67610 case 3:
67620 pause 200:goto Buka_Input_Born_Month2:
67630 case 4:
67640 No=5:sp_on 8,1:sp_on 5,0
67650 pause 200:goto Buka_Input_Born_Month2:
67660 case 5:
67670 No=6:sp_on 11,1:sp_on 8,0
67680 pause 200:goto Buka_Input_Born_Month2:
67690 case 7:
67700 No=8:sp_on 7,1:sp_on 4,0
67710 pause 200:goto Buka_Input_Born_Month2:
67720 case 8:
67730 No=9:sp_on 10,1:sp_on 7,0
67740 pause 200:goto Buka_Input_Born_Month2:
67750 case 9:
67760 pause 200:goto Buka_Input_Born_Month2:
67770 case 6:
67780 pause 200:goto Buka_Input_Born_Month2:
67790 end select
67800 'Okから右ボタンを押して何もしない ここまで
67810 endif
67820 '十字キー　ここまで
67830 '右の丸ボタン　決定キー
67840 if ((bg=2) or (key$=chr$(13))) then
67850 select case count
67860 case 0:
67870 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
67880 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
67890 locate 1,3
67900 color RGB(255,255,255)
67910 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
67920 goto Buka_Input_Born_Month2:
67930 case 1:
67940 count = 2:buf_buka_month=a*10+No
67950 if (No = -1) then
67960 'count=0
67970 month=buf_buka_month
67980 buf_buka_month=val(buf_buka_Month$)
67990 month=buf_buka_month
68000 '生まれた日に飛ぶ
68010 goto Buka_Input_Born_Day:
68020 else
68030 buf_buka_month = a * 10 + No
68040 buf_buka_Month$ = str$(buf_buka_month)
68050 buf_Buka_Born_Day(1) = buf_buka_month
68060 locate 1,3
68070 color Rgb(255,255,255)
68080 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
68090 goto Buka_Input_Born_Month2:
68100 endif
68110 case 2:
68120 count=3
68130 'c= val(buf_Month$)
68140 'buf_month = c*10 + No
68150 'buf_Month$ = str$(buf_month)
68160 'locate 2,3
68170 'print "部下の生まれた月(1月～12月):";buf_Month$
68180 'goto Buka_Input_Born_Month2:
68190 'case 3:
68200 'count=4
68210 'b=val(buf_month$)
68220 'buf_month=c*10+No
68230 'buf_Month$=str$(buf_month)
68240 'locate 2,3
68250 'print "部下の生まれた月(1月～12月):";buf_Month$
68260 'buf_month=val(buf_Month$)
68270 'year=val(buf_year$)
68280 if (No=-1) then
68290 goto Buka_Input_Born_Day:
68300 else
68310 goto Input_Born_Month2:
68320 endif
68330 'case 4:
68340 'bufyear=buf_year
68350 'if (No=-1) then
68360 'buf_month = val(buf_Month$)
68370 'month = buf_month
68380 'sp_on 14,0
68390 'goto Input_Born_Day:
68400 'else
68410 'goto Input_Born_Month2:
68420 'endif
68430 end select
68440 endif
68450 '左の丸ボタン　キャンセル
68460 if (bg2=2) then
68470 select case count2
68480 case 0:
68490 if (No = -1) then
68500 buf_buka_month=0:buf_buka_Month$="**"
68510 count=0
68520 goto rewrite2:
68530 else
68540 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
68550 buf_month=0:buf_Month$="**"
68560 locate 2,3
68570 color rgb(255,255,255)
68580 print "                                       "
68590 goto rewrite2:
68600 if (No>12) then
68610 ui_msg"値が範囲外です。"
68620 goto rewrite2:
68630 endif
68640 endif
68650 endif
68660 rewrite2:
68670 locate 2,3
68680 color rgb(255,255,255)
68690 print "                                      "
68700 locate 2,3
68710 print "部下の生まれた月(1月~12月):";buf_buka_Month$
68720 goto Buka_Input_Born_Month2:
68730 end select
68740 'endif
68750 endif
68760 end
68770 '2.部下の生まれた月'
68780 '3.部下の生まれた日'
68790 '生れた日を入力
68800 Buka_Input_Born_Day:
68810 '生まれた日入力
68820 cls 3:play ""
68830 'No=-1:Okのとき
68840 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
68850 for i=0 to 1
68860 buf_day(i)=0
68870 next i
68880 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
68890 gload Gazo$ + "Screen1.png",0,0,0
68900 gload Gazo$ + "downscreen.png",0,0,800
68910 'Init"kb:2"
68920 '音声ファイル再生 2023.06.07
68930 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
68940 font 48
68950 locate 0,1
68960 '文字色：黒　 color rgb(0,0,0)
68970 color rgb(255,255,255)
68980 print "部下の生まれた日を入れて下さい" + chr$(13)
68990 color rgb(255,255,255)
69000 locate 1,3
69010 print "部下の生まれた日(1日~31日):";buf_Day$
69020 color rgb(255,255,255)
69030 'locate 4,6:print ":7"
69040 'locate 9,6:print ":8"
69050 'locate 12,6:print ":9"
69060 locate 4,6
69070 print ":7  :8  :9" + chr$(13)
69080 color rgb(255,255,255)
69090 locate 4,8
69100 print ":4  :5  :6" + chr$(13)
69110 color rgb(255,255,255)
69120 locate 4,10
69130 print ":1  :2  :3" + chr$(13)
69140 locate 4,12
69150 print "    :0"
69160 locate 12,12
69170 color rgb(0,0,255)
69180 print ":Ok"
69190 sp_on 4,0: sp_on 5,0:sp_on 6,0
69200 sp_on 7,0:sp_on 8,0:sp_on 9,0
69210 sp_on 10,0:sp_on 11,0:sp_on 12,0
69220 sp_on 13,0:sp_on 14,1
69230 Buka_Input_Born_Day2:
69240 key$="":bg=0:y=0:y2=0:bg2=0
69250 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
69260 key$ = inkey$
69270 bg = strig(1)
69280 y = stick(1)
69290 y2 = stick(0)
69300 bg2 = strig(0)
69310 pause 5
69320 wend
69330 '十字キー　ここから
69340 '上の矢印　または、十字キー上
69350 if ((y = -1) or (key$ = chr$(30))) then
69360 select case No
69370 'No=-1:okのとき:初期の状態
69380 '0kボタンから３に移動
69390 '上に行く 処理
69400 case -1:
69410 No=3:sp_on 12,1:sp_on 14,0
69420 pause 200:goto Buka_Input_Born_Day2:
69430 '選択肢:3
69440 '3ボタンから 6に移動
69450 case 3:
69460 No=6:sp_on 12,0:sp_on 11,1
69470 pause 200:goto Buka_Input_Born_Day2:
69480 '6ボタンから ９に移動
69490 case 6:
69500 No=9:sp_on 10,1:sp_on 11,0
69510 pause 200:goto Buka_Input_Born_Day2:
69520 '6ボタンから ９に移動　ここまで
69530 '9で上を押して何もしない
69540 case 9:
69550 '何もしない
69560 No=9
69570 pause 200:goto Buka_Input_Born_Day2:
69580 '9で上を押しても何もしない　ここまで
69590 '上　 0ボタンから2ボタン
69600 'sp_on 6,1:1
69610 'sp_on 8,1:5
69620 'sp_on 7,1:7
69630 case 0:
69640 No=2:sp_on 13,0:sp_on 9,1:
69650 pause 200:goto Buka_Input_Born_Day2:
69660 '上  0ボタンから2ボタン　ここまで
69670 '2から５になる 上
69680 case 2:
69690 No=5:sp_on 8,1:sp_on 9,0:
69700 pause 200:goto Buka_Input_Born_Day2:
69710 case 5:
69720 No=8:sp_on 7,1:sp_on 8,0
69730 pause 200:goto Buka_Input_Born_Day2:
69740 case 8:
69750 pause 200:goto Buka_Input_Born_Day2:
69760 case 1:
69770 No=4:sp_on 5,1:sp_on 6,0
69780 pause 200:goto Buka_Input_Born_Day2:
69790 case 4:
69800 No=7:sp_on 4,1:sp_on 5,0
69810 pause 200:goto Buka_Input_Born_Day2:
69820 case 7:
69830 pause 200:goto Buka_Input_Born_Day2:
69840 end select
69850 endif
69860 '左３　ここまで
69870 '下の矢印
69880 '中央 2
69890 if ((y=1) or (key$ = chr$(31))) then
69900 select case No
69910 '9から６に下げる
69920 case 9:
69930 No=6:sp_on 11,1:sp_on 10,0
69940 pause 200:goto Buka_Input_Born_Day2:
69950 '6から３に下げる
69960 case 6:
69970 No=3:sp_on 12,1:sp_on 11,0
69980 pause 200:goto Buka_Input_Born_Day2:
69990 '3から０ｋに変える
70000 case 3:
70010 No=-1:sp_on 14,1:sp_on 12,0
70020 pause 200:goto Buka_Input_Born_Day2:
70030 'Okから下のボタンを押しても何もしない
70040 case -1:
70050 pause 200:goto Buka_Input_Born_Day2:
70060 case 8:
70070 No=5:sp_on 8,1:sp_on 7,0
70080 pause 200:goto Buka_Input_Born_Day2:
70090 case 5:
70100 No=2:sp_on 9,1:sp_on 8,0
70110 pause 200:goto Buka_Input_Born_Day2:
70120 case 2:
70130 No=0:sp_on 13,1:sp_on 9,0
70140 pause 200:goto Buka_Input_Born_Day2:
70150 case 0:
70160 pause 200:goto Buka_Input_Born_Day2:
70170 case 7:
70180 No=4:sp_on 5,1:sp_on 4,0
70190 pause 200:goto Buka_Input_Born_Day2:
70200 case 4:
70210 No=1:sp_on 6,1:sp_on 5,0
70220 pause 200:goto Buka_Input_Born_Day2:
70230 case 1:
70240 pause 200:goto Buka_Input_Born_Day2:
70250 end select
70260 endif
70270 '左へボタン 十字キー　左　or 　カーソル左
70280 if ((y2 = -1) or (key$ = chr$(29))) then
70290 select case No
70300 'Ok ボタン  Okから　左　０に行く
70310 case -1:
70320 No=0:sp_on 13,1:sp_on 14,0
70330 pause 200:goto Buka_Input_Born_Day2:
70340 '0 ボタン  左　何もしない
70350 case 0:
70360 pause 200:goto Buka_Input_Born_Day2:
70370 case 3:
70380 No=2:sp_on 9,1:sp_on 12,0:
70390 pause 200:goto Buka_Input_Born_Day2:
70400 case 2:
70410 No=1:sp_on 6,1:sp_on 9,0:
70420 pause 200:goto Buka_Input_Born_Day2:
70430 case 1:
70440 pause 200:goto Buka_Input_Born_Day2:
70450 case 6:
70460 No=5:sp_on 8,1:sp_on 11,0
70470 pause 200:goto Buka_Input_Born_Day2:
70480 case 5:
70490 No=4:sp_on 5,1:sp_on 8,0
70500 pause 200:goto Buka_Input_Born_Day2:
70510 case 4:
70520 pause 200:goto Buka_Input_Born_Day2:
70530 case 9:
70540 No=8:sp_on 7,1:sp_on 10,0
70550 pause 200:goto Buka_Input_Born_Day2:
70560 case 8:
70570 No=7:sp_on 4,1:sp_on 7,0
70580 pause 200:goto Buka_Input_Born_Day2:
70590 case 7:
70600 pause 200:goto Buka_Input_Born_Day2:
70610 end select
70620 endif
70630 '右  十字キー　右　or カーソル　右
70640 if ((y2 = 1) or (key$ = chr$(28))) then
70650 select case No
70660 '0ボタンからokボタン右に移動
70670 case 0:
70680 No=-1:sp_on 14,1:sp_on 13,0
70690 pause 200:goto Buka_Input_Born_Day2:
70700 '0ボタンからokボタン 右に移動　ここまで
70710 'OKボタンで右を押して何もしない
70720 case -1:
70730 pause 200:goto Buka_Input_Born_Day2:
70740 case 1:
70750 No=2:sp_on 9,1:sp_on 6,0
70760 pause 200:goto Buka_Input_Born_Day2:
70770 case 2:
70780 No=3:sp_on 12,1:sp_on 9,0
70790 pause 200:goto Buka_Input_Born_Day2:
70800 case 3:
70810 pause 200:goto Buka_Input_Born_Day2:
70820 case 4:
70830 No=5:sp_on 8,1:sp_on 5,0
70840 pause 200:goto Buka_Input_Born_Day2:
70850 case 5:
70860 No=6:sp_on 11,1:sp_on 8,0
70870 pause 200:goto Buka_Input_Born_Day2:
70880 case 7:
70890 No=8:sp_on 7,1:sp_on 4,0
70900 pause 200:goto Buka_Input_Born_Day2:
70910 case 8:
70920 No=9:sp_on 10,1:sp_on 7,0
70930 pause 200:goto Buka_Input_Born_Day2:
70940 case 9:
70950 pause 200:goto Buka_Input_Born_Day2:
70960 case 6:
70970 pause 200:goto Buka_Input_Born_Day2:
70980 end select
70990 'Okから右ボタンを押して何もしない ここまで
71000 endif
71010 '十字キー　ここまで
71020 '右の丸ボタンを押したとき
71030 if ((bg = 2) or (key$ = chr$(13))) then
71040 'count :決定ボタンを押した回数
71050 select case (count)
71060 '1桁目入力
71070 case 0:
71080 count = 1:
71090 if (No = -1) then
71100 '1桁目　OKでは何もしない
71110 'goto check:
71120 No=0
71130 else
71140 'ok以外のボタンを押したとき
71150 buf_buka_day = No:buf_buka_Day$ = str$(No)
71160 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
71170 buf_buka_Day$ = str$(No) + "*"
71180 endif
71190 a=No
71200 buf_Buka_Born_Day(2) = buf_buka_day
71210 locate 1,3
71220 print"                                      "
71230 color RGB(255,255,255)
71240 locate 1,3
71250 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71260 endif
71270 check2:
71280 if (No >= 1 and No <= 9) then
71290 sp_on 14,0
71300 goto Buka_Input_Born_Day2:
71310 else
71320 sp_on 14,0
71330 goto Result_Business_Aisyou:
71340 end
71350 endif
71360 case 1:
71370 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
71380 count = 2:
71390 'locate 2,3
71400 'color RGB(255,255,255)
71410 'print "生まれた日(1日~31日):";buf_Day$
71420 'Okボタンを押したときの処理
71430 '入力値　10未満のとき
71440 'c = buf_day
71450 if (No = -1) then
71460 'c=buf_day
71470 ' buf_day = c
71480 'buf_Day$ = str$(buf_day)
71490 '10以下のとき
71500 No=0
71510 if (buf_day < 10) then
71520 sp_on 14,0
71530 goto Result_Business_Aisyou:
71540 end
71550 endif
71560 else
71570 sp_on 14,0
71580 'c=No
71590 buf_buka_day = a * 10 + No
71600 buf_buka_Day$ = str$(buf_buka_day)
71610 buf_Buka_Born_Day(2) = buf_buka_day
71620 locate 0,3
71630 color Rgb(255,255,255)
71640 print "                                       "
71650 locate 1,3
71660 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71670 goto Buka_Input_Born_Day2:
71680 endif
71690 '生まれた日　2桁目の数字　or 1桁の数字 + ok
71700 case 2:
71710 count=0
71720 'c=val(buf_Day$)
71730 'buf_day=c*10+No
71740 'buf_Day$=str$(buf_day)
71750 'day=buf_day
71760 'locate 2,3
71770 'print "生まれた日(1日〜31日):";buf_Day$
71780 'No=-1:ok ボタンを押したとき
71790 if (No = -1) then No=0
71800 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
71810 sp_on 14,0
71820 goto Result_Business_Aisyou:
71830 else
71840 goto Buka_Input_Born_Day2:
71850 endif
71860 'Okボタン以外を押したとき
71870 else
71880 c=val(buf_buka_Day$)
71890 buf_buka_day = c * 10 + No
71900 buf_buka_Day$ = str$(buf_buka_day)
71910 locate 1,3
71920 print "                "
71930 locate 1,3
71940 print "生まれた日(1日~31日):"+buf_buka_Day$
71950 goto Buka_Input_Born_Day2:
71960 'endif
71970 case 3:
71980 count=4
71990 'c=val(buf_day$)
72000 'buf_day=c*10+No
72010 'buf_day$=str$(buf_day)
72020 'locate 2,3
72030 'print "生まれた日を入れてください:";buf_day$
72040 'year=val(buf_year$)
72050 if (No = -1) then
72060 'goto Buka_Input_Born_Day:
72070 sp_on 14,0:
72080 goto complate_jyoushi:
72090 else
72100 goto Buka_Input_Born_Month2:
72110 endif
72120 'case 4:
72130 'bufyear=buf_year
72140 'if (No=-1) then
72150 'buf_day = val(buf_day$)
72160 'bufday = buf_day
72170 'sp_on 14,0
72180 goto complate_jyoushi:
72190 'else
72200 'goto Buka_Input_Born_Day2:
72210 'endif
72220 end select
72230 endif
72240 if (bg2=2) then
72250 select case count2
72260 case 0:
72270 if (No=-1) then
72280 'buf_day=0:buf_Day$="**"
72290 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
72300 count=0
72310 buf_buka_day=0:buf_buka_Day$="**"
72320 goto rewrite_day3:
72330 else
72340 buf_buka_day=0:buf_buka_Day$="**"
72350 ui_msg"値が範囲外です"
72360 endif
72370 goto rewrite_day3:
72380 else
72390 goto rewrite_day3:
72400 endif
72410 rewrite_day3:
72420 locate 2,3
72430 color rgb(255,255,255)
72440 print "                                      "
72450 locate 1,3
72460 print "生まれた日(1日~31日):"+buf_buka_Day$
72470 goto Buka_Input_Born_Day2:
72480 end select
72490 endif
72500 '3.部下の生まれた日'
72510 '部下'
72520 '--------------------------------------------'
72530 'ビジネの相性　結果表示
72540 Result_Business_Aisyou:
72550 cls 3:init "kb:4"
72560 a=0:b=0:c=0:d=0:e=0:f=0
72570 bg=0:key$=""
72580 gload Gazo$ + "Screen1.png",0,0,0
72590 gload Gazo$ + "downscreen.png",0,0,800
72600 sp_on 14,0
72610 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
72620 buf_Buka = Kabara_Num(d,e,f)
72630 a_2 = buf_Buka
72640 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
72650 locate 0,1
72660 color rgb(255,0,0)
72670 print "●.相性診断結果１"
72680 locate 0,4:
72690 color rgb(255,255,255)
72700 print "1.上司の名前:";buffer_name$(0)
72710 locate 0,6
72720 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
72730 locate 0,8
72740 print "2.部下の名前:";buffer_name$(1)
72750 locate 0,10
72760 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
72770 locate 0,12
72780 print "3.上司と部下の相性:";Result_Aisyou$
72790 locate 1,15
72800 color rgb(0,0,0)
72810 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
72820 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
72830 bg = strig(1)
72840 key$ = inkey$
72850 bg2 = strig(0)
72860 pause 5
72870 wend
72880 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
72890 if (bg2 = 2) then
72900 cls 3:goto Business_Aishou_Input_1_parson:
72910 endif
72920 'ビジネスの相性占い　結果2　説明
72930 Result_Business_Aisyou2:
72940 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
72950 gload Gazo$ + "Screen1.png",0,0,0
72960 locate 0,1
72970 color rgb(255,0,0)
72980 print "●.相性の説明"
72990 color rgb(255,255,255)
73000 locate 0,4
73010 print "相性:";Result_Aisyou$
73020 locate 0,6:
73030 print "相性の説明:";buf$
73040 locate 0,15
73050 color rgb(0,0,0)
73060 print "右の丸ボタン:トップ,左のボタン:前の画面"
73070 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
73080 bg = strig(1)
73090 bg2 = strig(0)
73100 key$ = inkey$
73110 pause 100
73120 wend
73130 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
73140 if ((bg2 = 2)) then goto Result_Business_Aisyou:
73150 'Birds Eye Menu List
73160 Result_Birtheye_List1:
73170 'dim List$(4) Topに定義
73180 List$(0) = "1.バーズアイグリッドをもう一度診断"
73190 List$(1) = "2.診断結果"
73200 List$(2) = "3.データーを保存"
73210 List$(3) = "4.トップ画面に戻る"
73220 Birds_List1 = ui_select("List$","Menu")
73230 select case (Birds_List1)
73240 case 0: '1.もう一度診断
73250 for i=0 to 8
73260 buffer(i)=0
73270 next i
73280 goto Input_name1_Birdseye:
73290 case 1: '2.次へ行く
73300 gosub BirdsEye_Result2:
73310 case 2: '3.データーを保存
73320 ui_msg "データーを保存します"
73330 goto BirdsEye_Save_data:
73340 case 3: '4.トップに戻る
73350 for i=0 to 8
73360 buffer(i)=0
73370 next i
73380 goto Main_Screen:
73390 end select
73400 'BirdsEye Data Save
73410 BirdsEye_Save_data:
73420 if dir$(Save_data_Birdseye$) = "" then
73430    Mkdir Save_data_Birdseye$
73440 endif
73450 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
73460 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
73470 close #1
73480 ui_msg "データーを保存しました"
73490 goto Result_Birtheye_List1:
73500 'return
73510 '自作関数 ここから
73520 BirdsEyeGrid_Entry:
73530 cls 3:init "kb:4":key$="":bg=0:flag=0:n=0:bg2=0
73540 gload Gazo$ + "BirdsEyeGrid_entry_1080x240_20231220.png",0,0,0
73550 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
73560 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
73570 locate 1,4:print "右の丸:メイン画面へ行く"
73580 else
73590 flag=1
73600 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
73610 while (eof(1)=0)
73620   line input #1,a$
73630   n = n + 1
73640 wend
73650 close #1
73660 locate 1,2:print "登録件数は";n;"件です"
73670 locate 1,4:print "左の丸：メイン画面へ行く"
73680 endif
73690 Entry_Count:
73700 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2 )
73710 key$=inkey$
73720 bg=strig(1)
73730 bg2=strig(0)
73740 pause 200
73750 wend
73760 if ((bg=2) or (key$=chr$(13))) then
73770   if (flag=0) then
73780 '登録件数　０件のとき　メイン画面に行く
73790      goto Main_Screen:
73800   else
73810 '登録件数1件以上　次へ行く
73820 'ここを変更する
73830      goto Entry_Count:
73840   endif
73850 endif
73860 if (bg2=2) then
73870    if (flag=1) then
73880    flag=0:goto Main_Screen:
73890    endif
73900 endif
73910 func read_explain$(ba$)
73920 d$=""
73930 buf_String$=""
73940 if ba$="A" then
73950 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
73960 line input #1,a$
73970 a1$=mid$(a$,1,12)
73980 a2$=mid$(a$,13,17)
73990 a3$=mid$(a$,30,17)
74000 a4$=mid$(a$,47,18)
74010 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
74020 buf_String$ = a5$
74030 close #1
74040 endif
74050 if ba$="B"  then
74060 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
74070 line input #1,b$
74080 b1$=mid$(b$,1,15)
74090 b2$=mid$(b$,16,21)
74100 'b3$=mid$(b$,33,3)
74110 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
74120 buf_String$ = b4$
74130 close #1
74140 endif
74150 if ba$="C"  then
74160 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
74170 line input #1,c$
74180 c1$ = Mid$(c$,1,15)
74190 c2$ = Mid$(c$,16,33)
74200 c3$ = c1$ + chr$(13) + c2$
74210 buf_String$ = c3$
74220 close #1
74230 endif
74240 if ba$="D" then
74250 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
74260 line input #1,d$
74270 d1$=mid$(d$,1,15)
74280 d2$=mid$(d$,16,22)
74290 d3$=mid$(d$,38,7)
74300 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
74310 buf_String$ = d4$
74320 close #1
74330 endif
74340 if ba$="E"  then
74350 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
74360 line input #1,e$
74370 e1$=Mid$(e$,1,16)
74380 e2$=Mid$(e$,17,16)
74390 e3$=Mid$(e$,33,12)
74400 e4$=Mid$(e$,45,17)
74410 e5$=Mid$(e$,62,17)
74420 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
74430 buf_String$ = e6$
74440 close #1
74450 endif
74460 if ba$="F" then
74470 '改行を追加して表示を調整
74480 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
74490 line input #1,f$
74500 f1$=Mid$(f$,1,15)
74510 f2$=Mid$(f$,16,12)
74520 buf_String$ = f1$+chr$(13)+f2$
74530 close #1
74540 endif
74550 if ba$="G" then
74560 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
74570 line input #1,g$
74580 g1$ = mid$(g$,1,16)
74590 g2$ = mid$(g$,17,18)
74600 g3$ = mid$(g$,36,21)
74610 g4$ = mid$(g$,56,6)
74620 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
74630 buf_String$ = g5$
74640 close #1
74650 endif
74660 if ba$="H" then
74670 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
74680 line input #1,h$
74690 h1$=Mid$(h$,1,17)
74700 h2$=Mid$(h$,18,21)
74710 h3$=Mid$(h$,39,20)
74720 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
74730 buf_String$ = h$
74740 close #1
74750 endif
74760 if ba$ = "I" then
74770 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
74780 line input #1,i$
74790 i1$=Mid$(i$,1,10)
74800 i2$=Mid$(i$,11,13)
74810 i3$=Mid$(i$,25,16)
74820 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
74830 buf_String$ = i$
74840 close #1
74850 endif
74860 buffer$ = buf_String$
74870 endfunc buffer$
74880 'カバラ数（数秘番号を求める）
74890 func Kabara_Num(buffer_Year,month,day)
74900 '=============================
74910 'a1:4桁のうちの1桁目を求める
74920 '例 a1:1234の4が1桁目
74930 'a2:4桁のうちの2桁目を求める
74940 '例:a2:1234の3が2桁目
74950 'a3:4桁のうちの3桁目を求める
74960 '例 a3:1234の2が3桁目
74970 'a4:4桁のうちの4桁目を求める
74980 '例 a4:1234の1が4桁目
74990 '==============================
75000 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
75010 Year = buffer_Year
75020 '処理1　整数部分を取り出す。
75030 a4 = fix(Year / 1000)
75040 a3 = fix(Year / 100) - (a4 * 10)
75050 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
75060 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
75070 '処理　２　取り出した整数部分を足す。
75080 a_ = a1 + a2 + a3 + a4 +month + day
75090 'a1=0:a2=0:a3=0:a4=0
75100 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
75110 buffer = a_
75120 'else
75130 goto recomp2:
75140 'if (a_ = 10) then
75150 '  buffer = 1
75160 endif
75170 recomp2:
75180 a5=0:a6=0
75190 a5 = fix(a_ / 10)
75200 a6 = (a_) - (a5 * 10)
75210 a_ = a5 + a6
75220 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
75230 '結果に行く
75240 goto Res2:
75250 '  if ((a_>11) and (a_<99)) then
75260 else
75270 '再度計算
75280 goto recomp2:
75290 endif
75300 '     a1 = fix(a_ / 10)
75310 '     a2 = a_ - (a1 * 10)
75320 '     a_ = a1 + a2
75330 '     buffer = a_
75340 'endif
75350 'else
75360 '    bffer = a_
75370 'endif
75380 'endif
75390 'else
75400 'talk "プログラムを終了します。"
75410 'end
75420 'endif
75430 'kabara = 10
75440 Res2:
75450 kabara = a_
75460 endfunc kabara
75470 func Kabara_Aisyou$(buff1,buff2)
75480 a=0:b=0
75490 '範囲　1~9
75500 if ((buff1 > 0 and buff1 < 10)) then
75510 a = buff1
75520 else
75530 Select case buff1
75540 case 11:
75550 buff1=9:a=buff1
75560 case 22:
75570 buff1=10:a=buff1
75580 end select
75590 endif
75600 '範囲　１~９
75610 if ((buff2 > 0 and buff2 < 10)) then
75620 b = buff2
75630 else
75640 select case buff2
75650 case 11:
75660 buff2=9:b=buff2
75670 case 12:
75680 buff2=10:b=buff2
75690 end select
75700 endif
75710 Aisyou$ = Buffer_Business_Aisyou$(a,b)
75720 endfunc Aisyou$
75730 '=============================
75740 '自作関数 ここまで
75750 '1.数秘術　トップ画面
75760 '
75770 'Data_eraseを一番最後に持ってくる
75780 '=============================
75790 Data_erase:
75800 'メモリー削除
75810 erase buf_male_year
75820 erase buf_male_month
75830 erase buf_male_Born_Day
75840 erase buf_feMale_Born_Day
75850 erase buf_female_day
75860 erase buf_name1$
75870 erase buf_name2$
75880 erase buffer
75890 erase buf_chart$
75900 erase Buffer_Business_Aisyou$
75910 erase buffer_name$
75920 '上司の誕生日
75930 erase buf_Jyoushi_Born_Day
75940 '部下の誕生日
75950 erase buf_Buka_Born_Day
75960 erase buf_year
75970 erase buf_month
75980 erase buf_day
75990 'フォーカスライン
76000 erase Forcus1_buffer$
76010 erase Forcus2_buffer$
76020 erase Forcus3_buffer$
76030 'Birds eye List Data 配列
76040 erase List$
76050 buffer$ = ""
76060 buf$ = ""
76070 buf_year$ = ""
76080 buf_Jyoushi_Kabara_Num = 0
76090 buf_Buka_Kabara_Num = 0
76100 count = 0
76110 buf_Month$ = ""
76120 buf_Day$ = ""
76130 b=0
76140 c=0
76150 return
