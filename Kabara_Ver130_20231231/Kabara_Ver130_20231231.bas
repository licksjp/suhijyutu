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
490 '2023.12.31:Ver130_20231231
500 Version$ = "Ver:1.3.0_20231231"
510 'Gazo file Folder
520 Gazo$ = "./data/Picture/"
530 'Voice files 2023
540 Voice$ = "./data/Voice/Voice/"
550 'BirtheyeChart Data:20230626
560 Birth_eye_chart$ = "./data/chart_data/"
570 'Data File
580 Data$ = "./data/data/"
590 'Business Aisyou 結果説明保存フォルダ
600 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
610 'Save BirdsEyeGrit List
620 Save_data_Birdseye$ = "./data/Parsonal_data/"
630 '変数定義 パート
640 b=0:c=0:n=0
650 'dim buffer_List$(11,1)
660 dim buf_name1$(10),buf_name2$(10)
670 dim buffer(9),buf_chart$(26,2)
680 'ビジネスの相性　データー
690 dim Buffer_Business_Aisyou$(12,12)
700 '男女の相性
710 dim Buffer_Bitween_sexes_Aisyou$(12,12)
720 '生れた年代
730 dim buf_year(4):buf_year$ = ""
740 dim buf_month(2)
750 dim buf_day(2)
760 'フォーカスライン　配列
770 dim Forcus1_buffer$(3)
780 dim Forcus2_buffer$(3)
790 dim Forcus3_buffer$(2)
800 '生れた月
810 buf_Month$ = ""
820 '生れた日
830 buf_Day$ = ""
840 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
850 dim buffer_name$(3)
860 '1-1.上司の誕生日(数値データー)
870 dim buf_Jyoushi_Born_Day(3)
880 '1-2.上司の数秘ナンバー(数値データー)
890 buf_Jyoushi_Kabara_Num = 0
900 '2-1.部下の誕生日(数値データー)
910 dim buf_Buka_Born_Day(3)
920 '2-2.部下の数秘ナンバー(数秘データー)
930 buf_Buka_Kabara_Num = 0
940 dim buf_male_year(4)
950 dim buf_male_month(2)
960 dim buf_male_Born_Day(2)
970 dim buf_feMale_Born_Day(2)
980 dim buf_female_day(2)
990 count=0
1000 'Birds Eye List 配列
1010 dim List$(6)
1020 '部下の数秘ナンバー
1030 'File 読み込み
1040 '1.ビジネスの相性占い
1050 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1060 for i=0 to 11
1070 for j=0 to 11
1080 input #1,a$
1090 Buffer_Business_Aisyou$(j,i) = a$
1100 next j
1110 next i
1120 close #1
1130 '2.男女の相性占い
1140 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1150 for i=0 to 11
1160 for j=0 to 11
1170 input #1,a$
1180 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1190 next j
1200 next i
1210 close #1
1220 '2.Birth Eye chart$
1230 '2.バーズアイグリッドを読み込む
1240 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1250 for j=0 to 25
1260 for i=0 to 1
1270 input #1,a$
1280 buf_chart$(j,i) = a$
1290 next i
1300 next j
1310 close #1
1320 'File 読み込み　ここまで
1330 'Main画面
1340 screen 1,1,1,1
1350 Main_Screen:
1360 cls 3:
1370 No=0
1380 gload Gazo$ + "Selection.png",1,5,200
1390 gload Gazo$ + "Selection.png",1,5,300
1400 gload Gazo$ + "Selection.png",1,5,400
1410 gload Gazo$ + "Selection.png",1,5,500
1420 '4
1430 gload Gazo$ + "Selection.png",1,35,300
1440 '5
1450 gload Gazo$ + "Selection.png",1,35,400
1460 '6
1470 gload Gazo$ + "Selection.png",1,35,500
1480 '7
1490 gload Gazo$ + "Selection.png",1,70,300
1500 '8
1510 gload Gazo$ + "Selection.png",1,70,400
1520 '9
1530 gload Gazo$ + "Selection.png",1,70,500
1540 '10
1550 gload Gazo$ + "Selection.png",1,110,300
1560 '11
1570 gload Gazo$ + "Selection.png",1,110,400
1580 '12
1590 gload Gazo$ + "Selection.png",1,110,500
1600 '13:0
1610 gload Gazo$ + "Selection.png",1,150,400
1620 gload Gazo$ + "Selection.png",1,200,400
1630 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1640 '選択肢の丸
1650 gload Gazo$ + "downscreen.png",0,0,800
1660 sp_def 0,(5,300),32,32
1670 sp_def 1,(5,400),32,32
1680 sp_def 2,(5,500),32,32
1690 sp_def 3,(5,600),32,32
1700 '1
1710 sp_def 4,(35,300),32,32
1720 '2
1730 sp_def 5,(35,400),32,32
1740 '3
1750 sp_def 6,(35,500),32,32
1760 '4
1770 sp_def 7,(70,300),32,32
1780 '5
1790 sp_def 8,(70,400),32,32
1800 '6
1810 sp_def 9,(70,500),32,32
1820 '7
1830 sp_def 10,(110,300),32,32
1840 '8
1850 sp_def 11,(110,400),32,32
1860 '9
1870 sp_def 12,(110,400),32,32
1880 sp_def 13,(150,400),32,32
1890 sp_def 14,(200,400),32,32
1900 'Sprite OFF
1910 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1920 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1930 sp_put 0,(5,300),0,0
1940 sp_put 1,(5,400),1,0
1950 sp_put 2,(5,500),2,0
1960 sp_put 3,(5,600),3,0
1970 '1
1980 sp_put 4,(130,300),4,0
1990 '2
2000 sp_put 5,(130,400),5,0
2010 '3
2020 sp_put 6,(130,500),6,0
2030 '4
2040 sp_put 7,(340,300),7,0
2050 '5
2060 sp_put 8,(340,400),8,0
2070 '6
2080 sp_put 9,(340,500),9,0
2090 '7
2100 sp_put 10,(540,300),10,0
2110 '8
2120 sp_put 11,(540,400),11,0
2130 '9
2140 sp_put 12,(540,500),12,0
2150 '
2160 sp_put 13,(340,600),13,0
2170 sp_put 14,(540,600),14,0
2180 Main_Top:
2190 'Main Message 2023.06.07
2200 '再生を止める
2210 play ""
2220 init "kb:4"
2230 'font 32:
2240 font 48
2250 print chr$(13) + chr$(13) + chr$(13)
2260 color rgb(217,255,212)
2270 print "番号を選んでください" + chr$(13)
2280 '0
2290 print " :1.数秘術占い" + chr$(13)
2300 '1
2310 print " :2.設 定" + chr$(13)
2320 '2
2330 print " :3.ヘルプ" + chr$(13)
2340 '3
2350 print " :4.(プログラムを)終了する" + chr$(13)
2360 COLOR rgb(0,0,0):No=0
2370 locate 1,15
2380 print "                                       "
2390 locate 1,15:print "1.数秘術占いを選択"
2400 play Voice$ + "Voice_Main_Message_20230607.mp3"
2410 Main_Screen_Select:
2420 y = 0:key$ = "":bg = 0:bg2=0
2430 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2440 y = stick(1)
2450 '"May (2023)"
2460 key$ = inkey$
2470 bg = strig(1)
2480 bg2 = strig(0)
2490 pause 200
2500 wend
2510 '1.
2520 'ジョイパッドのソース ソート　ここから
2530 'カーソル　下 or 十字キー下
2540 if ((y = 1) or (key$ = chr$(31))) then
2550 select case No
2560 case 0:
2570 '1
2580 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2590 case 1:
2600 '2
2610 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2620 case 2:
2630 '3
2640 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2650 case 3:
2660 '0
2670 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2680 end select
2690 endif
2700 '2.
2710 'カーソル　上　or 十字キー  上
2720 if ((y = -1) or (key$ = chr$(30))) then
2730 select case No
2740 case 0:
2750 '3
2760 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2770 case 1:
2780 '0
2790 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2800 case 2:
2810 '1
2820 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2830 case 3:
2840 '2
2850 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2860 end select
2870 endif
2880 'ジョイパッド　ソース 部分　ここまで
2890 'ジョイパッド右　　or Enter key 決定
2900 if ((bg = 2) OR (key$ = chr$(13))) then
2910 select case No
2920 case 0:
2930 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2940 case 1:
2950 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2960 case 2:
2970 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2980 case 3:
2990 play "":pause 200
3000 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
3010 end select
3020 endif
3030 if (bg2 = 2) then
3040 play "":pause 200
3050 play Voice$ + "Voice_Main_Message_20230607.mp3"
3060 goto Main_Screen_Select:
3070 endif
3080 'Version
3090 Version:
3100 cls 3:PLAY ""
3110 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3120 gload Gazo$ + "downscreen.png",0,0,800
3130 init"kb:4":font 32+8
3140 'talk"バージョン情報です"
3150 'Message :Version
3160 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3170 locate 0,3
3180 color rgb(0,0,0)
3190 print "・Title:数秘術占い";chr$(13)
3200 print "・" + Version$ + chr$(13)
3210 print "・Author:licksjp"+chr$(13)
3220 print "・E-mail:licksjp@gmail.com" + chr$(13)
3230 locate 0,12
3240 print "(C)licksjp All rights " + chr$(13)
3250 locate 7,13
3260 print "reserved since 2009"+chr$(13)
3270 locate 0,18
3280 color rgb(255,255,255)
3290 print "ジョイパッドの右を押してください"
3300 Versionn_Selection:
3310 bg = 0:key$ = "":bg2 = 0
3320 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3330 bg = strig(1)
3340 key$ = inkey$
3350 bg2 = strig(0)
3360 pause 2
3370 wend
3380 if ((bg = 2) or (key$ = chr$(13))) then
3390 pause 200:cls 4:goto Main_Screen:
3400 endif
3410 if (bg2=2) then
3420 play "":pause 200
3430 play Voice$ + "Voice_Version_Message_20230607.mp3"
3440 goto Versionn_Selection:
3450 endif
3460 '1.数秘ナンバーを求める
3470 '誕生日入力(生れた年代)
3480 Input_Seireki:
3490 cls 3:play "":count=0:count2=0
3500 'No = -1:Okのとき
3510 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3520 for i=0 to 3
3530 buf_year(i)=0
3540 next i
3550 gload Gazo$ + "Screen2.png",0,0,0
3560 gload Gazo$ + "downscreen.png",0,0,800
3570 'Init"kb:2"
3580 '音声ファイル再生 2023.06.07
3590 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3600 font 48
3610 locate 0,1
3620 '文字色：黒　 color rgb(0,0,0)
3630 color rgb(255,255,255)
3640 print "生まれた年代を入れて下さい" + chr$(13)
3650 color rgb(255,255,255)
3660 locate 2,3
3670 print "生まれた年代(西暦4桁):" + buf_year$
3680 '=============================
3690 'テンキーの色(1~９)　白 ,決定ボタン　青
3700 '=============================
3710 color rgb(255,255,255)
3720 'locate 4,6:print ":7"
3730 'locate 9,6:print ":8"
3740 'locate 12,6:print ":9"
3750 'locate 4,6
3760 'print ":7  :8  :9" + chr$(13)
3770 'color rgb(255,255,255)
3780 'locate 4,8
3790 'print ":4  :5  :6" + chr$(13)
3800 'color rgb(255,255,255)
3810 'locate 4,10
3820 'print ":1  :2  :3" + chr$(13)
3830 'locate 4,12
3840 'print "    :0"
3850 'locate 12,12
3860 'color rgb(255,0,0)
3870 'print ":Ok"
3880 sp_on 4,0: sp_on 5,0:sp_on 6,0
3890 sp_on 7,0:sp_on 8,0:sp_on 9,0
3900 sp_on 10,0:sp_on 11,0:sp_on 12,0
3910 sp_on 13,0:sp_on 14,1
3920 Input_Seireki2:
3930 key$="":bg=0:y=0:y2=0:bg2=0:
3940 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3950 key$ = inkey$
3960 bg = strig(1)
3970 y = stick(1)
3980 y2 = stick(0)
3990 bg2 = strig(0)
4000 pause 200
4010 wend
4020 '十字キー　ここから
4030 '上の矢印　または、十字キー上
4040 if ((y = -1) or (key$ = chr$(30))) then
4050 select case No
4060 'No=-1:okのとき:初期の状態
4070 '0kボタンから３に移動
4080 '上に行く 処理
4090 case -1:
4100 No=3:sp_on 12,1:sp_on 14,0
4110 pause 200:goto Input_Seireki2:
4120 '選択肢:3
4130 '3ボタンから 6に移動
4140 case 3:
4150 No=6:sp_on 12,0:sp_on 11,1
4160 pause 200:goto Input_Seireki2:
4170 '6ボタンから ９に移動
4180 case 6:
4190 No=9:sp_on 10,1:sp_on 11,0
4200 pause 200:goto Input_Seireki2:
4210 '6ボタンから ９に移動　ここまで
4220 '9で上を押して何もしない
4230 case 9:
4240 '何もしない
4250 No=9
4260 pause 200:goto Input_Seireki2:
4270 '9で上を押しても何もしない　ここまで
4280 '上　 0ボタンから2ボタン
4290 'sp_on 6,1:1
4300 'sp_on 8,1:5
4310 'sp_on 7,1:7
4320 case 0:
4330 No=2:sp_on 13,0:sp_on 9,1:
4340 pause 200:goto Input_Seireki2:
4350 '上  0ボタンから2ボタン　ここまで
4360 '2から５になる 上
4370 case 2:
4380 No=5:sp_on 8,1:sp_on 9,0:
4390 pause 200:goto Input_Seireki2:
4400 case 5:
4410 No=8:sp_on 7,1:sp_on 8,0
4420 pause 200:goto Input_Seireki2:
4430 case 8:
4440 pause 200:goto Input_Seireki2:
4450 case 1:
4460 No=4:sp_on 5,1:sp_on 6,0
4470 pause 200:goto Input_Seireki2:
4480 case 4:
4490 No=7:sp_on 4,1:sp_on 5,0
4500 pause 200:goto Input_Seireki2:
4510 case 7:
4520 pause 200:goto Input_Seireki2:
4530 end select
4540 endif
4550 '左３　ここまで
4560 '下の矢印
4570 '中央 2
4580 if ((y=1) or (key$ = chr$(31))) then
4590 select case No
4600 '9から６に下げる
4610 case 9:
4620 No=6:sp_on 11,1:sp_on 10,0
4630 pause 200:goto Input_Seireki2:
4640 '6から３に下げる
4650 case 6:
4660 No=3:sp_on 12,1:sp_on 11,0
4670 pause 200:goto Input_Seireki2:
4680 '3から０ｋに変える
4690 case 3:
4700 No=-1:sp_on 14,1:sp_on 12,0
4710 pause 200:goto Input_Seireki2:
4720 'Okから下のボタンを押しても何もしない
4730 case -1:
4740 pause 200:goto Input_Seireki2:
4750 case 8:
4760 No=5:sp_on 8,1:sp_on 7,0
4770 pause 200:goto Input_Seireki2:
4780 case 5:
4790 No=2:sp_on 9,1:sp_on 8,0
4800 pause 200:goto Input_Seireki2:
4810 case 2:
4820 No=0:sp_on 13,1:sp_on 9,0
4830 pause 200:goto Input_Seireki2:
4840 case 0:
4850 pause 200:goto Input_Seireki2:
4860 case 7:
4870 No=4:sp_on 5,1:sp_on 4,0
4880 pause 200:goto Input_Seireki2:
4890 case 4:
4900 No=1:sp_on 6,1:sp_on 5,0
4910 pause 200:goto Input_Seireki2:
4920 case 1:
4930 pause 200:goto Input_Seireki2:
4940 end select
4950 endif
4960 '左へボタン 十字キー　左　or 　カーソル左
4970 if ((y2 = -1) or (key$ = chr$(29))) then
4980 select case No
4990 'Ok ボタン  Okから　左　０に行く
5000 case -1:
5010 No=0:sp_on 13,1:sp_on 14,0
5020 pause 200:goto Input_Seireki2:
5030 '0 ボタン  左　何もしない
5040 case 0:
5050 pause 200:goto Input_Seireki2:
5060 case 3:
5070 No=2:sp_on 9,1:sp_on 12,0:
5080 pause 200:goto Input_Seireki2:
5090 case 2:
5100 No=1:sp_on 6,1:sp_on 9,0:
5110 pause 200:goto Input_Seireki2:
5120 case 1:
5130 pause 200:goto Input_Seireki2:
5140 case 6:
5150 No=5:sp_on 8,1:sp_on 11,0
5160 pause 200:goto Input_Seireki2:
5170 case 5:
5180 No=4:sp_on 5,1:sp_on 8,0
5190 pause 200:goto Input_Seireki2:
5200 case 4:
5210 pause 200:goto Input_Seireki2:
5220 case 9:
5230 No=8:sp_on 7,1:sp_on 10,0
5240 pause 200:goto Input_Seireki2:
5250 case 8:
5260 No=7:sp_on 4,1:sp_on 7,0
5270 pause 200:goto Input_Seireki2:
5280 case 7:
5290 pause 200:goto Input_Seireki2:
5300 end select
5310 endif
5320 '右  十字キー　右　or カーソル　右
5330 if ((y2 = 1) or (key$ = chr$(28))) then
5340 select case No
5350 '0ボタンからokボタン右に移動
5360 case 0:
5370 No=-1:sp_on 14,1:sp_on 13,0
5380 pause 200:goto Input_Seireki2:
5390 '0ボタンからokボタン 右に移動　ここまで
5400 'OKボタンで右を押して何もしない
5410 case -1:
5420 pause 200:goto Input_Seireki2:
5430 case 1:
5440 No=2:sp_on 9,1:sp_on 6,0
5450 pause 200:goto Input_Seireki2:
5460 case 2:
5470 No=3:sp_on 12,1:sp_on 9,0
5480 pause 200:goto Input_Seireki2:
5490 case 3:
5500 pause 200:goto Input_Seireki2:
5510 case 4:
5520 No=5:sp_on 8,1:sp_on 5,0
5530 pause 200:goto Input_Seireki2:
5540 case 5:
5550 No=6:sp_on 11,1:sp_on 8,0
5560 pause 200:goto Input_Seireki2:
5570 case 7:
5580 No=8:sp_on 7,1:sp_on 4,0
5590 pause 200:goto Input_Seireki2:
5600 case 8:
5610 No=9:sp_on 10,1:sp_on 7,0
5620 pause 200:goto Input_Seireki2:
5630 case 9:
5640 pause 200:goto Input_Seireki2:
5650 case 6:
5660 pause 200:goto Input_Seireki2:
5670 end select
5680 'Okから右ボタンを押して何もしない ここまで
5690 endif
5700 '十字キー　ここまで
5710 if ((bg=2) or (key$=chr$(13))) then
5720 select case count
5730 case 0:
5740 count=1
5750 if (No=-1) then
5760 count=0
5770 'Okボタンを押したとき
5780 goto Input_Seireki2:
5790 else
5800 '===================================
5810 'Okボタン以外が押されたとき  1桁目の入力
5820 '===================================
5830 count2=1
5840 if (No >= 1 and No <= 2) then
5850 buf_year$="":buf_year$ = str$(No)
5860 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5870 n1 = len("生まれた年代(西暦4桁): ")
5880 locate 2,3
5890 color rgb(255,255,255)
5900 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5910 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5920 'print "生まれた年代(西暦4桁):";buf_year2$
5930 print buf_Born_Year_line$
5940 goto Input_Seireki2:
5950 else
5960 count=0
5970 ui_msg"数字が範囲外になります。"
5980 buf_year$="":buf_year=0
5990 goto Input_Seireki2:
6000 endif
6010 endif
6020 case 1:
6030 count = 2
6040 if (No = -1) then
6050 count = 1
6060 goto Input_Seireki2:
6070 else
6080 count2 = 1
6090 b = val(buf_year$)
6100 buf_year = b * 10 + No
6110 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6120 locate 2,3
6130 color rgb(255,255,255)
6140 print "                                                                "
6150 locate 2,3
6160 print "生まれた年代(西暦4桁):";buf_year2$
6170 'if (No = -1) then
6180 'count=1
6190 goto Input_Seireki2:
6200 endif
6210 case 2:
6220 count=3
6230 if (No=-1) then
6240 count =2
6250 goto Input_Seireki2:
6260 else
6270 b = val(buf_year$)
6280 buf_year = b*10 + No
6290 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6300 locate 2,3
6310 color rgb(255,255,255)
6320 print "                                        "
6330 locate 2,3
6340 print "生まれた年代(西暦4桁):";buf_year2$
6350 goto Input_Seireki2:
6360 endif
6370 case 3:
6380 count=4
6390 if (No = -1) then
6400 count=3
6410 goto Input_Seireki2:
6420 else
6430 b = val(buf_year$)
6440 buf_year = b * 10 + No
6450 buf_year$ = str$(buf_year)
6460 locate 2,3
6470 color RGB(255,255,255)
6480 print "                                      "
6490 locate 2,3
6500 print "生まれた年代(西暦4桁):";buf_year$
6510 buf_year=val(buf_year$)
6520 'year=val(buf_year$)
6530 'if (No=-1) then
6540 'goto Input_Born_Month:
6550 'else
6560 goto Input_Seireki2:
6570 endif
6580 case 4:
6590 'bufyear=buf_year
6600 if (No = -1) then
6610 buf_year = val(buf_year$)
6620 bufyear = buf_year
6630 sp_on 14,0
6640 goto Input_Born_Month:
6650 else
6660 goto Input_Seireki2:
6670 endif
6680 end select
6690 endif
6700 '=========================
6710 'bg2　キャンセルボタン
6720 '=========================
6730 if (bg2 = 2) then
6740 select case count2
6750 case 0:
6760 'Okボタンを押したときの処理
6770 if (No = -1) then
6780 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6790 'count = 0
6800 locate 2,3
6810 color rgb(255,255,255)
6820 print "                                      "
6830 locate 2,3
6840 print "生まれた年代（西暦4桁):";buf_year$
6850 '=============================
6860 'case 0:前の画面に戻る 数秘術トップメニュー
6870 '=============================
6880 sp_on 14,0:goto Kabara_TopScreen:
6890 else
6900 'count=0
6910 '(buf_year=0) then
6920 buf_year = 0:buf_year$ = string$(4,"*")
6930 goto Input_Seireki2:
6940 'endif
6950 endif
6960 case 1:
6970 if (No = -1) then
6980 count2 = 0:count = 0
6990 buf$=right$(buf_year$,1)
7000 if (val(buf$) >= 1 and val(buf$) <= 9) then
7010 buf_year$ = "****":buf_year=0
7020 color rgb(255,255,255)
7030 locate 0,3:
7040 print "                                      "
7050 locate 2,3
7060 print "生まれた年代（西暦4桁):" + buf_year$
7070 goto Input_Seireki2:
7080 endif
7090 else
7100 endif
7110 end select
7120 endif
7130 end
7140 'Input"生れた年代(4桁,〜2025年):",year
7150 'if year > 2025 then goto Input_Seireki:
7160 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7170 '"4桁目"
7180 'bufyear4 = fix(year / 1000)
7190 '"3桁目"
7200 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
7210 '"2桁目"
7220 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
7230 '"1桁目"
7240 'bufyear1 = fix((year - ((bufyear4*
7250 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
7260 '生れた月を入力
7270 Input_Born_Month:
7280 cls 3:play "":count=0:count2=0
7290 'No=-1:Okのとき
7300 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7310 for i=0 to 1
7320 buf_month(i)=0
7330 next i
7340 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7350 gload Gazo$ + "Screen2.png",0,0,0
7360 gload Gazo$ + "downscreen.png",0,0,800
7370 'Init"kb:2"
7380 '音声ファイル再生 2023.06.07
7390 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7400 font 48
7410 locate 0,1
7420 '文字色：黒　 color rgb(0,0,0)
7430 '文字色:白
7440 color rgb(255,255,255)
7450 print "生まれた月を入れて下さい" + chr$(13)
7460 '文字色:白
7470 color rgb(255,255,255)
7480 locate 2,3
7490 '文字色:白
7500 print "生まれた月(1月~12月):";buf_Month$
7510 color rgb(255,255,255)
7520 'locate 4,6:print ":7"
7530 'locate 9,6:print ":8"
7540 'locate 12,6:print ":9"
7550 'locate 4,6
7560 '文字色:赤
7570 'print ":7  :8  :9" + chr$(13)
7580 'color rgb(255,255,255)
7590 'locate 4,8
7600 'print ":4  :5  :6" + chr$(13)
7610 'color rgb(255,255,255)
7620 'locate 4,10
7630 'print ":1  :2  :3" + chr$(13)
7640 'locate 4,12
7650 'print "    :0"
7660 'locate 12,12
7670 'color rgb(255,0,0)
7680 'print ":Ok"
7690 sp_on 4,0: sp_on 5,0:sp_on 6,0
7700 sp_on 7,0:sp_on 8,0:sp_on 9,0
7710 sp_on 10,0:sp_on 11,0:sp_on 12,0
7720 sp_on 13,0:sp_on 14,1
7730 Input_Born_Month2:
7740 key$="":bg=0:y=0:y2=0:bg2=0
7750 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7760 key$ = inkey$
7770 bg = strig(1)
7780 y = stick(1)
7790 y2 = stick(0)
7800 bg2 = strig(0)
7810 pause 5
7820 wend
7830 '十字キー　ここから
7840 '上の矢印　または、十字キー上
7850 if ((y = -1) or (key$ = chr$(30))) then
7860 select case No
7870 'No=-1:okのとき:初期の状態
7880 '0kボタンから３に移動
7890 '上に行く 処理
7900 case -1:
7910 No=3:sp_on 12,1:sp_on 14,0
7920 pause 200:goto Input_Born_Month2:
7930 '選択肢:3
7940 '3ボタンから 6に移動
7950 case 3:
7960 No=6:sp_on 12,0:sp_on 11,1
7970 pause 200:goto Input_Born_Month2:
7980 '6ボタンから ９に移動
7990 case 6:
8000 No=9:sp_on 10,1:sp_on 11,0
8010 pause 200:goto Input_Born_Month2:
8020 '6ボタンから ９に移動　ここまで
8030 '9で上を押して何もしない
8040 case 9:
8050 '何もしない
8060 No=9
8070 pause 200:goto Input_Born_Month2:
8080 '9で上を押しても何もしない　ここまで
8090 '上　 0ボタンから2ボタン
8100 'sp_on 6,1:1
8110 'sp_on 8,1:5
8120 'sp_on 7,1:7
8130 case 0:
8140 No=2:sp_on 13,0:sp_on 9,1:
8150 pause 200:goto Input_Born_Month2:
8160 '上  0ボタンから2ボタン　ここまで
8170 '2から５になる 上
8180 case 2:
8190 No=5:sp_on 8,1:sp_on 9,0:
8200 pause 200:goto Input_Born_Month2:
8210 case 5:
8220 No=8:sp_on 7,1:sp_on 8,0
8230 pause 200:goto Input_Born_Month2:
8240 case 8:
8250 pause 200:goto Input_Born_Month2:
8260 case 1:
8270 No=4:sp_on 5,1:sp_on 6,0
8280 pause 200:goto Input_Born_Month2:
8290 case 4:
8300 No=7:sp_on 4,1:sp_on 5,0
8310 pause 200:goto Input_Born_Month2:
8320 case 7:
8330 pause 200:goto Input_Born_Month2:
8340 end select
8350 endif
8360 '左３　ここまで
8370 '下の矢印
8380 '中央 2
8390 if ((y=1) or (key$ = chr$(31))) then
8400 select case No
8410 '9から６に下げる
8420 case 9:
8430 No=6:sp_on 11,1:sp_on 10,0
8440 pause 200:goto Input_Born_Month2:
8450 '6から３に下げる
8460 case 6:
8470 No=3:sp_on 12,1:sp_on 11,0
8480 pause 200:goto Input_Born_Month2:
8490 '3から０ｋに変える
8500 case 3:
8510 No=-1:sp_on 14,1:sp_on 12,0
8520 pause 200:goto Input_Born_Month2:
8530 'Okから下のボタンを押しても何もしない
8540 case -1:
8550 pause 200:goto Input_Born_Month2:
8560 case 8:
8570 No=5:sp_on 8,1:sp_on 7,0
8580 pause 200:goto Input_Born_Month2:
8590 case 5:
8600 No=2:sp_on 9,1:sp_on 8,0
8610 pause 200:goto Input_Born_Month2:
8620 case 2:
8630 No=0:sp_on 13,1:sp_on 9,0
8640 pause 200:goto Input_Born_Month2:
8650 case 0:
8660 pause 200:goto Input_Born_Month2:
8670 case 7:
8680 No=4:sp_on 5,1:sp_on 4,0
8690 pause 200:goto Input_Born_Month2:
8700 case 4:
8710 No=1:sp_on 6,1:sp_on 5,0
8720 pause 200:goto Input_Born_Month2:
8730 case 1:
8740 pause 200:goto Input_Born_Month2:
8750 end select
8760 endif
8770 '左へボタン 十字キー　左　or 　カーソル左
8780 if ((y2 = -1) or (key$ = chr$(29))) then
8790 select case No
8800 'Ok ボタン  Okから　左　０に行く
8810 case -1:
8820 No=0:sp_on 13,1:sp_on 14,0
8830 pause 200:goto Input_Born_Month2:
8840 '0 ボタン  左　何もしない
8850 case 0:
8860 pause 200:goto Input_Born_Month2:
8870 case 3:
8880 No=2:sp_on 9,1:sp_on 12,0:
8890 pause 200:goto Input_Born_Month2:
8900 case 2:
8910 No=1:sp_on 6,1:sp_on 9,0:
8920 pause 200:goto Input_Born_Month2:
8930 case 1:
8940 pause 200:goto Input_Born_Month2:
8950 case 6:
8960 No=5:sp_on 8,1:sp_on 11,0
8970 pause 200:goto Input_Born_Month2:
8980 case 5:
8990 No=4:sp_on 5,1:sp_on 8,0
9000 pause 200:goto Input_Born_Month2:
9010 case 4:
9020 pause 200:goto Input_Born_Month2:
9030 case 9:
9040 No=8:sp_on 7,1:sp_on 10,0
9050 pause 200:goto Input_Born_Month2:
9060 case 8:
9070 No=7:sp_on 4,1:sp_on 7,0
9080 pause 200:goto Input_Born_Month2:
9090 case 7:
9100 pause 200:goto Input_Born_Month2:
9110 end select
9120 endif
9130 '右  十字キー　右　or カーソル　右
9140 if ((y2 = 1) or (key$ = chr$(28))) then
9150 select case No
9160 '0ボタンからokボタン右に移動
9170 case 0:
9180 No=-1:sp_on 14,1:sp_on 13,0
9190 pause 200:goto Input_Born_Month2:
9200 '0ボタンからokボタン 右に移動　ここまで
9210 'OKボタンで右を押して何もしない
9220 case -1:
9230 pause 200:goto Input_Born_Month2:
9240 case 1:
9250 No=2:sp_on 9,1:sp_on 6,0
9260 pause 200:goto Input_Born_Month2:
9270 case 2:
9280 No=3:sp_on 12,1:sp_on 9,0
9290 pause 200:goto Input_Born_Month2:
9300 case 3:
9310 pause 200:goto Input_Born_Month2:
9320 case 4:
9330 No=5:sp_on 8,1:sp_on 5,0
9340 pause 200:goto Input_Born_Month2:
9350 case 5:
9360 No=6:sp_on 11,1:sp_on 8,0
9370 pause 200:goto Input_Born_Month2:
9380 case 7:
9390 No=8:sp_on 7,1:sp_on 4,0
9400 pause 200:goto Input_Born_Month2:
9410 case 8:
9420 No=9:sp_on 10,1:sp_on 7,0
9430 pause 200:goto Input_Born_Month2:
9440 case 9:
9450 pause 200:goto Input_Born_Month2:
9460 case 6:
9470 pause 200:goto Input_Born_Month2:
9480 end select
9490 'Okから右ボタンを押して何もしない ここまで
9500 endif
9510 '十字キー　ここまで
9520 '右の丸ボタン　決定キー
9530 if ((bg=2) or (key$=chr$(13))) then
9540 select case count
9550 case 0:
9560 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9570 if (buf_month = 1 or buf_month = 2) then
9580 locate 2,3
9590 color RGB(255,255,255)
9600 print "生まれた月(1月~12月):";buf_Month2$
9610 else
9620 locate 2,3
9630 color Rgb(255,255,255)
9640 print "生まれた月(1月~12月):";buf_Month$
9650 endif
9660 goto Input_Born_Month2:
9670 case 1:
9680 count = 2:c = No
9690 c = val(buf_Month$)
9700 if (No = -1) then
9710 'if No=1 or No=2 then
9720 'endif
9730 month = buf_month
9740 buf_month=val(buf_Month$)
9750 month=buf_month
9760 '生まれた日に飛ぶ
9770 goto Input_Born_Day:
9780 else
9790 buf_month = c*10 + No
9800 buf_Month$= str$(buf_month)
9810 locate 2,3
9820 color Rgb(255,255,255)
9830 print "生まれた月(1月~12月):";buf_Month$
9840 goto Input_Born_Month2:
9850 endif
9860 case 2:
9870 count=3:count2=1
9880 'c= val(buf_Month$)
9890 'buf_month = c*10 + No
9900 'buf_Month$ = str$(buf_month)
9910 'locate 2,3
9920 'print "生まれた月(1月～12月):";buf_Month$
9930 'goto Input_Born_Month2:
9940 'case 3:
9950 'count=4
9960 'b=val(buf_month$)
9970 'buf_month=c*10+No
9980 'buf_Month$=str$(buf_month)
9990 'locate 2,3
10000 'print "生まれた月(1月～12月):";buf_Month$
10010 'buf_month=val(buf_Month$)
10020 'year=val(buf_year$)
10030 if (No=-1) then
10040 goto Input_Born_Day:
10050 else
10060 'goto Input_Born_Month2:
10070 endif
10080 'case 4:
10090 'bufyear=buf_year
10100 'if (No=-1) then
10110 'buf_month = val(buf_Month$)
10120 'month = buf_month
10130 'sp_on 14,0
10140 'goto Input_Born_Day:
10150 'else
10160 'goto Input_Born_Month2:
10170 'endif
10180 end select
10190 endif
10200 '左の丸ボタン　キャンセル
10210 if (bg2=2) then
10220 select case count2
10230 case 0:
10240 if (No = -1) then
10250 buf_month=0:buf_Month$="**"
10260 count2=0:count=0
10270 locate 0,3:print "                                              "
10280 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10290 'if (buf_month > 1) then
10300 sp_on 14,0:goto Input_Born_Month2:
10310 'goto rewrite:
10320 else
10330 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10340 buf_month=0:buf_Month$="**"
10350 locate 2,3
10360 color rgb(255,255,255)
10370 print "                                       "
10380 goto rewrite:
10390 if (No>2) then
10400 ui_msg"値が範囲外です。"
10410 goto rewrite:
10420 endif
10430 endif
10440 'endif
10450 rewrite:
10460 locate 2,3
10470 color rgb(255,255,255)
10480 print "                                      "
10490 locate 2,3
10500 print "生まれた月(1月~12月):";buf_Month$
10510 goto Input_Born_Month2:
10520 endif
10530 case 1:
10540 buf_Month$="**":buf_month=0
10550 if No=-1 then
10560 count2=2:count=0
10570 locate 0,3
10580 print "                                      "
10590 locate 2,3:
10600 print "生まれた月(1月~12月):"+buf_Month$
10610 goto Input_Born_Month2:
10620 endif
10630 case 2:
10640 sp_on 14,0:goto Input_Seireki:
10650 end select
10660 endif
10670 'endif
10680 end
10690 'end
10700 '生れた日を入力
10710 Input_Born_Day:
10720 '生まれた日入力
10730 cls 3:play ""
10740 'No=-1:Okのとき
10750 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10760 for i=0 to 1
10770 buf_day(i)=0
10780 next i
10790 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10800 gload Gazo$ + "Screen2.png",0,0,0
10810 gload Gazo$ + "downscreen.png",0,0,800
10820 'Init"kb:2"
10830 '音声ファイル再生 2023.06.07
10840 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10850 font 48
10860 locate 0,1
10870 '文字色：黒　 color rgb(0,0,0)
10880 color rgb(255,255,255)
10890 print "生まれた日を入れて下さい" + chr$(13)
10900 color rgb(255,255,255)
10910 locate 2,3
10920 print "生まれた日(1日~31日):";buf_Day$
10930 'color rgb(255,255,255)
10940 'locate 4,6:print ":7"
10950 'locate 9,6:print ":8"
10960 'locate 12,6:print ":9"
10970 'locate 4,6
10980 'print ":7  :8  :9" + chr$(13)
10990 '=======================
11000 'テンキー　色　白　決定ボタン　青
11010 '=======================
11020 'color rgb(255,255,255)
11030 'locate 4,8
11040 'print ":4  :5  :6" + chr$(13)
11050 'color rgb(255,255,255)
11060 'locate 4,10
11070 'print ":1  :2  :3" + chr$(13)
11080 'locate 4,12
11090 'print "    :0"
11100 'locate 12,12
11110 'color rgb(255,0,0)
11120 'print ":Ok"
11130 sp_on 4,0: sp_on 5,0:sp_on 6,0
11140 sp_on 7,0:sp_on 8,0:sp_on 9,0
11150 sp_on 10,0:sp_on 11,0:sp_on 12,0
11160 sp_on 13,0:sp_on 14,1
11170 Input_Born_Day2:
11180 key$="":bg=0:y=0:y2=0:bg2=0
11190 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
11200 key$ = inkey$
11210 bg = strig(1)
11220 y = stick(1)
11230 y2 = stick(0)
11240 bg2 = strig(0)
11250 pause 5
11260 wend
11270 '十字キー　ここから
11280 '上の矢印　または、十字キー上
11290 if ((y = -1) or (key$ = chr$(30))) then
11300 select case No
11310 'No=-1:okのとき:初期の状態
11320 '0kボタンから３に移動
11330 '上に行く 処理
11340 case -1:
11350 No=3:sp_on 12,1:sp_on 14,0
11360 pause 200:goto Input_Born_Day2:
11370 '選択肢:3
11380 '3ボタンから 6に移動
11390 case 3:
11400 No=6:sp_on 12,0:sp_on 11,1
11410 pause 200:goto Input_Born_Day2:
11420 '6ボタンから ９に移動
11430 case 6:
11440 No=9:sp_on 10,1:sp_on 11,0
11450 pause 200:goto Input_Born_Day2:
11460 '6ボタンから ９に移動　ここまで
11470 '9で上を押して何もしない
11480 case 9:
11490 '何もしない
11500 No=9
11510 pause 200:goto Input_Born_Day2:
11520 '9で上を押しても何もしない　ここまで
11530 '上　 0ボタンから2ボタン
11540 'sp_on 6,1:1
11550 'sp_on 8,1:5
11560 'sp_on 7,1:7
11570 case 0:
11580 No=2:sp_on 13,0:sp_on 9,1:
11590 pause 200:goto Input_Born_Day2:
11600 '上  0ボタンから2ボタン　ここまで
11610 '2から５になる 上
11620 case 2:
11630 No=5:sp_on 8,1:sp_on 9,0:
11640 pause 200:goto Input_Born_Day2:
11650 case 5:
11660 No=8:sp_on 7,1:sp_on 8,0
11670 pause 200:goto Input_Born_Day2:
11680 case 8:
11690 pause 200:goto Input_Born_Day2:
11700 case 1:
11710 No=4:sp_on 5,1:sp_on 6,0
11720 pause 200:goto Input_Born_Day2:
11730 case 4:
11740 No=7:sp_on 4,1:sp_on 5,0
11750 pause 200:goto Input_Born_Day2:
11760 case 7:
11770 pause 200:goto Input_Born_Day2:
11780 end select
11790 endif
11800 '左３　ここまで
11810 '下の矢印
11820 '中央 2
11830 if ((y=1) or (key$ = chr$(31))) then
11840 select case No
11850 '9から６に下げる
11860 case 9:
11870 No=6:sp_on 11,1:sp_on 10,0
11880 pause 200:goto Input_Born_Day2:
11890 '6から３に下げる
11900 case 6:
11910 No=3:sp_on 12,1:sp_on 11,0
11920 pause 200:goto Input_Born_Day2:
11930 '3から０ｋに変える
11940 case 3:
11950 No=-1:sp_on 14,1:sp_on 12,0
11960 pause 200:goto Input_Born_Day2:
11970 'Okから下のボタンを押しても何もしない
11980 case -1:
11990 pause 200:goto Input_Born_Day2:
12000 case 8:
12010 No=5:sp_on 8,1:sp_on 7,0
12020 pause 200:goto Input_Born_Day2:
12030 case 5:
12040 No=2:sp_on 9,1:sp_on 8,0
12050 pause 200:goto Input_Born_Day2:
12060 case 2:
12070 No=0:sp_on 13,1:sp_on 9,0
12080 pause 200:goto Input_Born_Day2:
12090 case 0:
12100 pause 200:goto Input_Born_Day2:
12110 case 7:
12120 No=4:sp_on 5,1:sp_on 4,0
12130 pause 200:goto Input_Born_Day2:
12140 case 4:
12150 No=1:sp_on 6,1:sp_on 5,0
12160 pause 200:goto Input_Born_Day2:
12170 case 1:
12180 pause 200:goto Input_Born_Day2:
12190 end select
12200 endif
12210 '左へボタン 十字キー　左　or 　カーソル左
12220 if ((y2 = -1) or (key$ = chr$(29))) then
12230 select case No
12240 'Ok ボタン  Okから　左　０に行く
12250 case -1:
12260 No=0:sp_on 13,1:sp_on 14,0
12270 pause 200:goto Input_Born_Day2:
12280 '0 ボタン  左　何もしない
12290 case 0:
12300 pause 200:goto Input_Born_Day2:
12310 case 3:
12320 No=2:sp_on 9,1:sp_on 12,0:
12330 pause 200:goto Input_Born_Day2:
12340 case 2:
12350 No=1:sp_on 6,1:sp_on 9,0:
12360 pause 200:goto Input_Born_Day2:
12370 case 1:
12380 pause 200:goto Input_Born_Day2:
12390 case 6:
12400 No=5:sp_on 8,1:sp_on 11,0
12410 pause 200:goto Input_Born_Day2:
12420 case 5:
12430 No=4:sp_on 5,1:sp_on 8,0
12440 pause 200:goto Input_Born_Day2:
12450 case 4:
12460 pause 200:goto Input_Born_Day2:
12470 case 9:
12480 No=8:sp_on 7,1:sp_on 10,0
12490 pause 200:goto Input_Born_Day2:
12500 case 8:
12510 No=7:sp_on 4,1:sp_on 7,0
12520 pause 200:goto Input_Born_Day2:
12530 case 7:
12540 pause 200:goto Input_Born_Day2:
12550 end select
12560 endif
12570 '右  十字キー　右　or カーソル　右
12580 if ((y2 = 1) or (key$ = chr$(28))) then
12590 select case No
12600 '0ボタンからokボタン右に移動
12610 case 0:
12620 No=-1:sp_on 14,1:sp_on 13,0
12630 pause 200:goto Input_Born_Day2:
12640 '0ボタンからokボタン 右に移動　ここまで
12650 'OKボタンで右を押して何もしない
12660 case -1:
12670 pause 200:goto Input_Born_Day2:
12680 case 1:
12690 No=2:sp_on 9,1:sp_on 6,0
12700 pause 200:goto Input_Born_Day2:
12710 case 2:
12720 No=3:sp_on 12,1:sp_on 9,0
12730 pause 200:goto Input_Born_Day2:
12740 case 3:
12750 pause 200:goto Input_Born_Day2:
12760 case 4:
12770 No=5:sp_on 8,1:sp_on 5,0
12780 pause 200:goto Input_Born_Day2:
12790 case 5:
12800 No=6:sp_on 11,1:sp_on 8,0
12810 pause 200:goto Input_Born_Day2:
12820 case 7:
12830 No=8:sp_on 7,1:sp_on 4,0
12840 pause 200:goto Input_Born_Day2:
12850 case 8:
12860 No=9:sp_on 10,1:sp_on 7,0
12870 pause 200:goto Input_Born_Day2:
12880 case 9:
12890 pause 200:goto Input_Born_Day2:
12900 case 6:
12910 pause 200:goto Input_Born_Day2:
12920 end select
12930 'Okから右ボタンを押して何もしない ここまで
12940 endif
12950 '十字キー　ここまで
12960 '右の丸ボタンを押したとき
12970 if ((bg = 2) or (key$ = chr$(13))) then
12980 'count :決定ボタンを押した回数
12990 select case (count mod 3)
13000 '1桁目入力
13010 case 0:
13020 count = 1:
13030 if (No = -1) then
13040 '1桁目　OKでは何もしない
13050 'goto check:
13060 else
13070 'ok以外のボタンを押したとき
13080 buf_day = No:buf_Day$ = str$(No)
13090 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
13100 locate 2,3
13110 color RGB(255,255,255)
13120 print "生まれた日(1日~31日):";buf_Day2$
13130 endif
13140 check:
13150 if (No >= 1 and No <= 9) then
13160 sp_on 14,0
13170 goto Input_Born_Day2:
13180 else
13190 sp_on 14,0
13200 goto complate:
13210 endif
13220 case 1:
13230 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
13240 count = 2:
13250 'locate 2,3
13260 'color RGB(255,255,255)
13270 'print "生まれた日(1日~31日):";buf_Day$
13280 'Okボタンを押したときの処理
13290 '入力値　10未満のとき
13300 'c = buf_day
13310 if (No = -1) then
13320 'c=buf_day
13330 ' buf_day = c
13340 'buf_Day$ = str$(buf_day)
13350 '10以下のとき
13360 if (buf_day < 10) then
13370 sp_on 14,0
13380 goto complate:
13390 endif
13400 else
13410 'c = No
13420 buf_day = c * 10 + No
13430 'buf_day = c
13440 buf_Day$ =str$(buf_day)
13450 locate 2,3
13460 color Rgb(255,255,255)
13470 print "生まれた日(1日~31日):";buf_Day$
13480 goto Input_Born_Day2:
13490 endif
13500 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13510 case 2:
13520 count=0
13530 'c=val(buf_Day$)
13540 'buf_day=c*10+No
13550 'buf_Day$=str$(buf_day)
13560 'day=buf_day
13570 'locate 2,3
13580 'print "生まれた日(1日〜31日):";buf_Day$
13590 'No=-1:ok ボタンを押したとき
13600 if (No = -1) then
13610 if ((buf_day > 0) and (buf_day < 32)) then
13620 sp_on 14,0
13630 goto complate:
13640 else
13650 goto Input_Born_Day2:
13660 endif
13670 'Okボタン以外を押したとき
13680 else
13690 c=val(buf_Day$)
13700 buf_day = c * 10 + No
13710 buf_Day$ = str$(buf_day)
13720 locate 2,3
13730 print "生まれた日(1日~31日):";buf_Day$
13740 'goto Input_Born_Day2:
13750 endif
13760 case 3:
13770 count = 4
13780 c=val(buf_day$)
13790 buf_day = c * 10 + No
13800 buf_day$ = str$(buf_day)
13810 locate 2,3
13820 print "生まれた日を入れてください:";buf_Day$
13830 year = val(buf_year$)
13840 if (No = -1) then
13850 'goto Input_Born_Day:
13860 sp_on 14,0:No=0
13870 goto complate:
13880 else
13890 goto Input_Born_Month2:
13900 endif
13910 'case 4:
13920 'bufyear=buf_year
13930 'if (No=-1) then
13940 'buf_day = val(buf_day$)
13950 'bufday = buf_day
13960 'sp_on 14,0
13970 'goto complate:
13980 'else
13990 'goto Input_Born_Day2:
14000 'endif
14010 end select
14020 endif
14030 if (bg2=2) then
14040 select case count2
14050 case 0:
14060 if (No=-1) then
14070 'buf_day=0:buf_Day$="**"
14080 if (buf_day>=1 and buf_day<=31) then
14090 count=0:No=0
14100 buf_day=0:buf_Day$="**"
14110 'goto rewrite_day:
14120 else
14130 buf_day=0:buf_Day$="**"
14140 ui_msg"値が範囲外です"
14150 endif
14160 goto rewrite_day:
14170 else
14180 goto rewrite_day:
14190 endif
14200 rewrite_day:
14210 locate 2,3
14220 color rgb(255,255,255)
14230 print "                                      "
14240 locate 2,3
14250 print "生まれた日(1日~31日):";buf_Day$
14260 goto Input_Born_Day2:
14270 end select
14280 endif
14290 '--------------------------Input_Born_Day:-------------------------------------------
14300 complate:
14310 suhiNo = buf_year + buf_month + buf_day
14320 'if (suhiNo < 1000) then
14330 a1 = fix(suhiNo / 1000)
14340 a2 = fix(suhiNo/100) - (a1 * 10)
14350 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14360 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14370 'endif
14380 bufsuhiNo = a1+a2+a3+a4
14390 recomp:
14400 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14410 'bufsuhiNo=a6
14420 goto Kabara_Result_Screen:
14430 else
14440 a5 = fix(bufsuhiNo / 10)
14450 a6 = bufsuhiNo - a5 * 10
14460 bufsuhiNo = a6 + a5
14470 if (bufsuhiNo = 10) then
14480 bufsuhiNo=1
14490 endif
14500 goto Kabara_Result_Screen:
14510 endif
14520 Kabara_Result_Screen:
14530 cls 3:
14540 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14550 gload Gazo$ + "downscreen.png",0,0,800
14560 init "kb:4"
14570 '
14580 play ""
14590 select case (bufsuhiNo)
14600 case 1:
14610 play Voice$ + "Result_Kabara_1_20230607.mp3"
14620 case 2:
14630 play Voice$ + "Result_Kabara_2_20231112.mp3"
14640 case 3:
14650 play Voice$ + "Result_Kabara_3_20230607.mp3"
14660 case 4:
14670 play Voice$ + "Result_Kabara_4_20230607.mp3"
14680 case 5:
14690 play Voice$ + "Result_Kabara_5_20231112.mp3"
14700 case 6:
14710 play Voice$ + "Result_Kabara_6_20230607.mp3"
14720 case 7:
14730 play Voice$ + "Result_Kabara_7_20230607.mp3"
14740 case 8:
14750 play Voice$ + "Result_Kabara_8_20230607.mp3"
14760 case 9:
14770 play Voice$ + "Result_Kabara_9_20230607.mp3"
14780 case 11:
14790 play Voice$ + "Result_Kabara_11_20230607.mp3"
14800 case 22:
14810 play Voice$ + "Result_Kabara_22_20230607.mp3"
14820 case 33:
14830 play Voice$ + "Result_Kabara_33_20230607.mp3"
14840 end select
14850 font 48
14860 key$ = "":bg = 0:bg2=0
14870 'COLOR rgb(255,255,255)
14880 'print "●診断結果"+chr$(13)
14890 locate 0,2
14900 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14910 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14920 locate 0,15:
14930 color rgb(255,255,255)
14940 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
14950 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14960 key$ = inkey$
14970 bg = strig(1)
14980 bg2 = strig(0)
14990 pause 200
15000 wend
15010 'Enter or JoyPad right
15020 if ((key$ = chr$(13)) or (bg = 2)) then
15030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
15040 endif
15050 if ((bg2=2)) then
15060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
15070 endif
15080 'suhiNo1 = fix(bufsuhiNo / 10)
15090 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
15100 'bufsuhiNo = suhiNo1 + suhiNo2
15110 'goto recomp:
15120 'endif
15130 'print chr$(13)
15140 'color rgb(255,0,0)
15150 'print"トップ:エンターキー,S or s:保存"+chr$(13)
15160 'key$ = input$(1)
15170 'if key$ = chr$(13) then goto Main_Screen:
15180 '"Menu2 占いのルール"
15190 Suhi_Rule:
15200 '数秘術占いルールの表示
15210 cls 3:play "":init"kb:4"
15220 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
15230 gload Gazo$ + "downscreen.png",0,0,800
15240 'cls 3:
15250 'line (0,0) - (1500,60),rgb(0,0,255),bf
15260 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
15270 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15280 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15290 locate 0,2:Font 48
15300 print chr$(13) + chr$(13)
15310 color rgb(0,0,0)
15320 print "誕生日を単数変換します";chr$(13)
15330 print "数字の範囲:1~９,11,22,33";chr$(13)
15340 print "例:1973年11月22日の場合";chr$(13)
15350 print "1+9+7+3+11+22=53 ";chr$(13)
15360 print "→ 5 + 3 = 8" + chr$(13)
15370 print "故に8が数秘ナンバーになります";chr$(13)
15380 locate 0,15
15390 color rgb(255,255,255)
15400 print "ジョイパッドの右を押してください"
15410 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15420 '"key$ = input$(1)"
15430 '"if key$ = chr$(13) then goto Main_Screen:"
15440 suhi_rule_selection:
15450 bg = 0:key$ = "":bg2=0
15460 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15470 bg = strig(1)
15480 key$ = inkey$
15490 bg2=strig(0)
15500 pause 200
15510 wend
15520 if ((bg = 2) or (key$ = chr$(13))) then
15530 pause 200:cls 4:goto Main_Screen:
15540 endif
15550 if (bg2=2) then
15560 play "":pause 200
15570 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15580 goto suhi_rule_selection:
15590 endif
15600 '2.設定
15610 '2-1.トップ画面に戻る
15620 Setting:
15630 cls 3:init"kb:4":font 48:No=0
15640 play ""
15650 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15660 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15670 gload Gazo$ + "downscreen.png",0,0,800
15680 print chr$(13) + chr$(13) + chr$(13)
15690 color rgb(255,255,255):sp_on 0,1:
15700 print "番号を選んでください" + chr$(13)
15710 print " :1.トップ画面に戻る"+ chr$(13)
15720 print " :2.バーズアイグリッドデータリスト" + chr$(13)
15730 print " :3.未実装" + chr$(13)
15740 print " :4.未実装" + chr$(13)
15750 color rgb(0,0,0)
15760 locate 1,15:print "1.トップ画面に戻るを選択"
15770 Setting_Selection:
15780 y=0:key$="":bg=0:bg2=0
15790 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
15800 y=stick(1)
15810 key$ = inkey$
15820 bg=strig(1)
15830 bg2 = strig(0)
15840 pause 2
15850 wend
15860 if ((bg = 2) or (key$ = chr$(13))) then
15870 select case No
15880 case 0:
15890 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 3:goto Main_Screen:
15900 case 1:
15910 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto BirdsEyeGrid_Entry:
15920 end select
15930 endif
15940 if (bg2 = 2) then
15950 play "":pause 200
15960 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15970 goto Setting_Selection:
15980 endif
15990 if (y=1) then
16000 select case No
16010 case 0:
16020       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:goto Setting_Selection:
16030 case else:
16040       No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:pause 200:goto Setting_Selection:
16050 end select
16060 'ase else:
16070 endif
16080 '3.Help
16090 '3-1.ルールの表示
16100 '3-2.バージョン
16110 '3-3.トップに戻る
16120 Help:
16130 cls 3:Font 48:No=0
16140 play ""
16150 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
16160 gload Gazo$ + "downscreen.png",0,0,800
16170 color rgb(255,255,255)
16180 print chr$(13)+chr$(13)+chr$(13)
16190 print "番号を選んでください"+chr$(13)
16200 print " :1.ルールの表示" + chr$(13)
16210 print " :2.バージョンの表示" + chr$(13)
16220 print " :3.参考文献" + chr$(13)
16230 print " :4.トップ画面に戻る" + chr$(13)
16240 color rgb(0,0,0)
16250 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
16260 locate 1,15
16270 print "                                      "
16280 locate 1,15
16290 print "1.ルールの表示を選択"
16300 init"kb:4"
16310 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16320 Help_Select:
16330 bg=0:key$="":y=0:bg2=0
16340 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
16350 y = stick(1)
16360 key$ = inkey$
16370 bg = strig(1)
16380 bg2 = strig(0)
16390 pause 200
16400 wend
16410 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16420 if ((y = 1) or (key$ = chr$(31))) then
16430 select case No
16440 case 0:
16450 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16460 case 1:
16470 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16480 case 2:
16490 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16500 case 3:
16510 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16520 end select
16530 endif
16540 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16550 if ((y = -1) or (key$ = chr$(30))) then
16560 select case No
16570 case 0:
16580 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16590 case 1:
16600 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16610 case 2:
16620 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16630 case 3:
16640 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16650 end select
16660 endif
16670 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16680 if ((bg = 2) or (key$ = chr$(13))) then
16690 select case No
16700 case 0:
16710 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16720 case 1:
16730 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16740 case 2:
16750 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16760 '3:Top画面に行く
16770 case 3:
16780 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16790 end select
16800 endif
16810 if (bg2 = 2) then
16820 play "":pause 200
16830 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16840 goto Help_Select:
16850 endif
16860 '数秘術占い　トップ画面
16870 Kabara_TopScreen:
16880 cls 3:play ""
16890 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16900 gload Gazo$ + "downscreen.png",0,0,800
16910 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16920 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16930 init"kb:4":No=0
16940 color rgb(255,255,255)
16950 print chr$(13)+chr$(13)+chr$(13)
16960 print "番号を選んでください" + chr$(13)
16970 print " :1.数秘術占い" + chr$(13)
16980 print " :2.バーズアイグリット" + chr$(13)
16990 print " :3.相性占い" + chr$(13)
17000 print " :4.トップ画面に戻る" + chr$(13)
17010 color rgb(0,0,0)
17020 locate 1,15:print "1.数秘術占いを選択"
17030 Kabara_TopScreen2:
17040 y = 0:bg = 0:key$ = "":bg2 = 0
17050 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
17060 key$ = inkey$
17070 bg = strig(1)
17080 y = stick(1)
17090 bg2 = strig(0)
17100 pause 5
17110 wend
17120 '選択ボタン
17130 'カーソル　と　ジョイパッド　の下
17140 if ((y = 1) or (key$ = chr$(31))) then
17150 select case No
17160 case 2:
17170 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17180 case 3:
17190 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17200 case 0:
17210 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17220 case 1:
17230 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17240 end select
17250 endif
17260 'カーソル　上
17270 if ((y=-1) or (key$=chr$(30))) then
17280 select case No
17290 case 0:
17300 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17310 case 1:
17320 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17330 case 2:
17340 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17350 case 3:
17360 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17370 end select
17380 endif
17390 '決定ボタン
17400 'ジョイパッドの右　or  Enter key
17410 if ((bg = 2) or (key$ = chr$(13))) then
17420 select case No
17430 case 0:
17440 '1.数秘術占い
17450 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17460 case 3:
17470 '4.メイン画面にいく
17480 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17490 case 1:
17500 '2.バースアイグリッド
17510 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17520 case 2:
17530 '3.相性占い
17540 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17550 end select
17560 endif
17570 if (bg2 = 2) then
17580 play "":pause 200
17590 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17600 goto Kabara_TopScreen2:
17610 endif
17620 '1.バースアイグリット　名入力
17630 Inputname1:
17640 cls 3:init"kb:4":font 48
17650 bg=0:key$="":y=0:No=-1:name1$="":i=1
17660 gload Gazo$ + "Selection.png",1,10,100
17670 'Line 1:☓
17680 'A:選択肢
17690 sp_def 15,(50,250),16,16
17700 'B:選択肢
17710 sp_def 16,(200,250),16,16
17720 'C:選択肢
17730 sp_def 17,(350,250),16,16
17740 'D:選択肢
17750 sp_def 18,(500,250),16,16
17760 'E:選択肢
17770 sp_def 19,(630,250),16,16
17780 'F:選択肢
17790 sp_def 20,(780,250),16,16
17800 'G:選択肢
17810 sp_def 21,(930,250),16,16
17820 'Line 2:☓
17830 'H:選択肢
17840 sp_def 22,(50,345),16,16
17850 'I:選択肢
17860 sp_def 23,(200,345),16,16
17870 'J:選択肢
17880 sp_def 24,(350,345),16,16
17890 'K:選択肢
17900 sp_def 25,(500,345),16,16
17910 'L:選択肢
17920 sp_def 26,(630,345),16,16
17930 'M:選択肢
17940 sp_def 27,(780,345),16,16
17950 'N:選択肢
17960 sp_def 28,(930,345),16,16
17970 'Line 3:☓
17980 'O:選択肢
17990 sp_def 29,(50,440),16,16
18000 'P:選択肢
18010 sp_def 30,(200,440),16,16
18020 'Q:選択肢
18030 sp_def 31,(350,440),16,16
18040 'R:選択肢
18050 sp_def 32,(500,440),16,16
18060 'S:選択肢
18070 sp_def 33,(630,440),16,16
18080 'T:選択肢
18090 sp_def 34,(780,440),16,16
18100 'U:選択肢
18110 sp_def 35,(930,440),16,16
18120 'Line 4:◯
18130 'V:選択肢
18140 sp_def 36,(50,535),16,16
18150 'W:選択肢
18160 sp_def 37,(200,535),16,16
18170 'X:選択肢
18180 sp_def 38,(350,535),16,16
18190 'Y:選択肢
18200 sp_def 39,(500,535),16,16
18210 'Z:選択肢
18220 sp_def 40,(630,535),16,16
18230 'Ok:選択肢
18240 sp_def 41,(780,535),16,16
18250 'sp_def 42,(930,535),16,16
18260 'Line 1
18270 'A
18280 sp_on 15,0
18290 'B
18300 sp_on 16,0
18310 'C
18320 sp_on 17,0
18330 'D
18340 sp_on 18,0
18350 'E
18360 sp_on 19,0
18370 'F
18380 sp_on 20,0
18390 'G
18400 sp_on 21,0
18410 'Line 1
18420 'Line 2
18430 'H
18440 sp_on 22,0
18450 'I
18460 sp_on 23,0
18470 'J
18480 sp_on 24,0
18490 'K
18500 sp_on 25,0
18510 'L
18520 sp_on 26,0
18530 'M
18540 sp_on 27,0
18550 'N
18560 sp_on 28,0
18570 'Line 2
18580 'Line 3
18590 'O
18600 sp_on 29,0
18610 'P
18620 sp_on 30,0
18630 'Q
18640 sp_on 31,0
18650 'R
18660 sp_on 32,0
18670 'S
18680 sp_on 33,0
18690 'T
18700 sp_on 34,0
18710 'U
18720 sp_on 35,0
18730 'Line 3
18740 'Line 4
18750 'V
18760 sp_on 36,0
18770 'W
18780 sp_on 37,0
18790 'X
18800 sp_on 38,0
18810 'Y
18820 sp_on 39,0
18830 'Z
18840 sp_on 40,0
18850 'Ok
18860 sp_on 41,1
18870 'Line 4
18880 'sp_on 42,1
18890 'Line 1
18900 'sp_put 15,(50,250),0,0
18910 'sp_put 16,(200,250),0,0
18920 'sp_put 17,(350,250),0,0
18930 'sp_put 18,(500,250),0,0
18940 'sp_put 19,(630,250),0,0
18950 'sp_put 20,(780,250),0,0
18960 'sp_put 21,(930,250),0,0
18970 'Line 2
18980 'sp_put 22,(50,345),0,0
18990 'sp_put 23,(200,345),0,0
19000 'sp_put 24,(350,345),0,0
19010 'sp_put 25,(500,345),0,0
19020 'sp_put 26,(630,345),0,0
19030 'sp_put 27,(780,345),0,0
19040 'sp_put 28,(930,345),0,0
19050 'Line 3
19060 'sp_put 29,(50,440),0,0
19070 'sp_put 30,(200,440),0,0
19080 'sp_put 31,(350,440),0,0
19090 'sp_put 32,(500,440),0,0
19100 'sp_put 33,(630,440),0,0
19110 'sp_put 34,(780,440),0,0
19120 'sp_put 35,(930,440),0,0
19130 'Line 4
19140 'sp_put 36,(50,535),0,0
19150 'sp_put 37,(200,535),0,0
19160 'sp_put 38,(350,535),0,0
19170 'sp_put 39,(500,535),0,0
19180 'sp_put 40,(630,535),0,0
19190 sp_put 41,(780,535),0,0
19200 'sp_put 42,(930,536),0,0
19210 gload Gazo$ + "Screen1.png",0,0,0
19220 color rgb(255,255,255)
19230 locate 1,3
19240 print "名前の姓をアルファベットで入力してください"
19250 locate 1,5
19260 print " A  B  C  D  E  F  G"
19270 locate 1,7
19280 print " H  I  J  K  L  M  N"
19290 locate 1,9
19300 print " O  P  Q  R  S  T  U"
19310 locate 1,11
19320 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
19330 locate 1,15:color rgb(0,0,0)
19340 print "名前の姓:" + name1$
19350 select_name1:
19360 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
19370 '有効ボタン
19380 '1.決定ボタン(bg:2)
19390 '2.Enter Key$:chr$(13)
19400 '3.カーソル上 (chr$(31))
19410 '4.カーソル　左 (chr$(29))
19420 '5.ジョイパッド　上 (y:1)
19430 '6:ジョイパッド　左 (y2:-1)
19440 '7:ジョイパッド　下 (y:-1)
19450 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19460 key$ = inkey$
19470 'ジョイパッドの決定:bg
19480 bg = strig(1)
19490 y = stick(1)
19500 y2 = stick(0)
19510 pause 200
19520 wend
19530 '====================================
19540 'Birds Eye Grid 名前入力
19550 '入力スタイル　アルファベット入力
19560 'sp_on:　スプライトのオンオフ
19570 'sp_put :表示位置
19580 'No:ボタン番号
19590 '====================================
19600 'カーソルで下に行く
19610 if ((y=-1) or (key$=chr$(31))) then
19620 select case No
19630 '1.Ok ボタン
19640 'sp_on スプライトのオンオフ
19650 'sp_put スプライトを表示
19660 case -1:
19670 '1.アルファベット　入力ボタン
19680 '実装未完全なので終了
19690 'Ok → T ○ :No:20=T
19700 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19710 'T  → M ○
19720 case 20:
19730 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19740 'M  →　F ○
19750 case 13:
19760 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19770 'F  → Ok
19780 case 6:
19790 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19800 end select
19810 endif
19820 '2.決定ボタン
19830 if ((key$ = chr$(13)) OR  (bg = 2)) then
19840 select case No
19850 case -1:
19860 'スプライトをOFFにする
19870 sp_on 41,0
19880 end select
19890 endif
19900 '3.カーソル　左
19910 if (key$ = chr$(29) or (y2 =-1)) then
19920 select case No
19930 'Line 4
19940 'Line 4
19950 '1.
19960 'Z:-1 :Ok ボタン
19970 'Ok → Z
19980 case -1:
19990 'Ok →　Z
20000 'Ok ボタン OFF,Z Button ON
20010 'No=26:Z
20020 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
20030 '2.
20040 '26:Zボタン Z→ Y
20050 case 26:
20060 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
20070 '3.
20080 '25:Yボタン  Y → X
20090 case 25:
20100 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
20110 '4
20120 '24:Xボタン X → W
20130 case 24:
20140 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20150 '23:Wボタン X → W
20160 '5
20170 case 23:
20180 '22:Vボタン W → V
20190 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20200 case 22:
20210 '-1:V→ Ok
20220 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
20230 'Line 3
20240 case 20:
20250 '33:T34  → S:33 :◯
20260 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
20270 case 19:
20280 '32:S:33 → R:32 :◯
20290 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
20300 case 18:
20310 '31:R:32 → Q:31 :◯
20320 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20330 '30:O → P :◯
20340 case 17:
20350 '30:Q:31 → P:30 :◯
20360 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20370 case 16:
20380 '29:P:30 → O:29 :◯
20390 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20400 case 15:
20410 '28:O:29 → U:21  :◯
20420 'O:OFF,U:ON
20430 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20440 '27:U:21 → T:20  :◯
20450 case 21:
20460 'U:OFF:T:ON
20470 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20480 'Line 2
20490 '26:M:13 → L:12 : ○
20500 case 13:
20510 'M:OFF,L:ON
20520 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20530 '25:L:12 → K:11 : ○
20540 case 12:
20550 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20560 '24:K:11 → J:10 : ○
20570 case 11:
20580 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20590 '23:J:10 → I:9  : ○
20600 case 10:
20610 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20620 '22:I:9 → H:8    :○
20630 case 9:
20640 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20650 '21:H:8 → N:14:   :○
20660 case 8:
20670 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20680 '20:N:14 → M:13:   :○
20690 case 14:
20700 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20710 '●.Line 1:
20720 '19:F:20 → E:19 : ☓
20730 'F:OFF,E:ON
20740 case 6:
20750 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20760 '18:E → D
20770 'E:OFF,D:ON
20780 case 5:
20790 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20800 '17:D → C
20810 'D:OFF,C:ON
20820 case 4:
20830 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20840 case 3:
20850 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20860 case 2:
20870 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20880 case 1:
20890 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20900 case 7:
20910 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20920 end select
20930 endif
20940 '上から下の方向
20950 if ((key$ = chr$(31)) or  (y = 1)) then
20960 select case No
20970 '●.1
20980 '1:A→H
20990 case 1:
21000 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
21010 '2:H→O
21020 case 8:
21030 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
21040 '3:O→V
21050 case 15:
21060 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
21070 '4:V→A
21080 case 22:
21090 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
21100 '●.2
21110 '5.B→I
21120 case 2:
21130 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
21140 '6.I→P
21150 case 9:
21160 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
21170 '7.P→W
21180 case 16:
21190 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21200 '8.W→B
21210 case 23:
21220 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
21230 '●.3
21240 '9.C→J
21250 case 3:
21260 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
21270 '10.J→Q
21280 case 10:
21290 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21300 '11.Q→X
21310 case 17:
21320 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21330 '12.X→C
21340 case 24:
21350 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
21360 '●.4
21370 '13.D→K
21380 case 4:
21390 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21400 '14.K→R
21410 case 11:
21420 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21430 '15.R→Y
21440 case 18:
21450 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21460 '16.Y→D
21470 case 25:
21480 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21490 '●.5
21500 '17.E→L
21510 case 5:
21520 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21530 '18.L→S
21540 case 12:
21550 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21560 '19.S→Z
21570 case 19:
21580 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21590 '20.Z→E
21600 case 26:
21610 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21620 '●.6
21630 '21.F→M
21640 case 6:
21650 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21660 '22.M→T
21670 case 13:
21680 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21690 '23.T→Ok
21700 case 20:
21710 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21720 '24.Ok→F
21730 case -1:
21740 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21750 '●.7
21760 '25.G→N
21770 case 7:
21780 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21790 '26.N→U
21800 case 14:
21810 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21820 '27.U→G
21830 case 21:
21840 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21850 end select
21860 endif
21870 '決定ボタン　で名前の姓に文字を追加。
21880 if (key$ = chr$(13) or bg = 2) then
21890 select case No
21900 'Okボタン
21910 case -1:
21920 goto Inputname2:
21930 'Aの文字
21940 case 1:
21950 'if len(n$)=0 then
21960 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21970 'else
21980 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21990 'endif
22000 goto select_name1:
22010 case 2:
22020 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
22030 end select
22040 endif
22050 Input_name1_Birdseye:
22060 cls 3:init "kb:2":play ""
22070 gload Gazo$ + "Input_Birtheye2.png",0,0,0
22080 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
22090 color rgb(255,255,255)
22100 locate 1,2:print "名前をアルファベットで入れてください"
22110 color rgb(0,0,0)
22120 locate 1,5:Input "名前（姓の部分）:",name1$
22130 '27.U→G
22140 'locate 1,5:print "Hit any key"
22150 n1 = len(name1$)
22160 if (n1 < 11) then
22170 for i=1 to n1
22180 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
22190 next i
22200 endif
22210 goto Inputname2:
22220 '2.グリッドアイ　姓の入力
22230 'end
22240 Inputname2:
22250 cls 3:init"kb:2":font 48:play ""
22260 gload Gazo$ + "Input_Birtheye1.png",0,0,0
22270 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
22280 color rgb(255,255,255)
22290 locate 1,2:print "名前をアルファベットで入れてください"
22300 color rgb(0,0,0)
22310 locate 1,5:Input "名前(名の部分):",name2$
22320 n2 = len(name2$)
22330 for i=1 to n2
22340 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
22350 next i
22360 '計算領域
22370 Complate:
22380 'name1
22390 for i=0 to 25
22400 for n=1 to len(name1$)
22410 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22420 b = val(buf_chart$(i,1))
22430 buffer(b-1) = buffer(b-1) + 1
22440 endif
22450 next n
22460 next i
22470 'name2
22480 for i=0 to 25
22490 for n=1 to len(name2$)
22500 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22510 c = val(buf_chart$(i,1))
22520 buffer(c - 1) = buffer(c - 1) + 1
22530 endif
22540 next n
22550 next i
22560 '結果表示領域
22570 Result_Birtheye1:
22580 cls 3:init"kb:4":No=0:play "":'音を止める
22590 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22600 gload Gazo$ + "downscreen.png",0,0,800
22610 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
22620 color rgb(255,255,255)
22630 '1の表示
22640 locate 3,14:print buffer(0);
22650 '2の表示
22660 locate 3,9:print buffer(1);
22670 '3の表示
22680 locate 3,5:print buffer(2);
22690 '4の表示
22700 locate 10,14:print buffer(3);
22710 '5の表示
22720 locate 10,9:print buffer(4);
22730 '6の表示
22740 locate 10,5:print buffer(5);
22750 '7の表示
22760 locate 15,14:print buffer(6);
22770 '8の表示
22780 locate 15,9:print buffer(7);
22790 '9の表示
22800 locate 15,5:print buffer(8);
22810 'name を大文字に変換
22820 locate 5,3:print ucase$(name1$ + name2$)
22830 color rgb(0,0,0)
22840 'bg:右のボタン  ,bg2:左のボタン
22850 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
22860 bg=0:key$="":bg2=0
22870 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22880 'Enterと決定ボタン
22890 key$ = inkey$
22900 '右ボタン:1
22910 bg = strig(1)
22920 '左の丸ボタン:0
22930 bg2=strig(0)
22940 pause 200
22950 wend
22960 if ((bg=2) or (key$=chr$(13))) then
22970 'データーをクリアしてトップ画面に行く
22980 'for i=0 to 8
22990 'buffer(i)=0
23000 'next i
23010 'for n=0 to 9
23020 'buf_name1$(n) = ""
23030 'buf_name2$(n) = ""
23040 'next n
23050 'Topに行く
23060 'goto Main_Screen:
23070 'メニューを開く
23080 'goto BirdsEye_Result2:
23090 'Menu(ui_select) リストに飛ぶ
23100 goto Result_Birtheye_List1:
23110 endif
23120 if (bg2=2) then
23130 'データーをクリアする
23140 for i=0 to 8
23150 buffer(i)=0
23160 next i
23170 for n=0 to 9
23180 buf_name1$(n)=""
23190 buf_name2$(n)=""
23200 next n
23210 goto Main_Screen:
23220 endif
23230 'goto Result_Birtheye1:
23240 'Result_Birtheye2:
23250 'cls 3:color rgb(255,255,255)
23260 'end
23270 'Memory 消去
23280 '
23290 '横のフォーカスライン
23300 BirdsEye_Result2:
23310 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
23320 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
23330 Forcus1_buffer$(2)="○"
23340 else
23350 Forcus1_buffer$(2)="☓"
23360 endif
23370 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
23380 Forcus1_buffer$(1)="○"
23390 else
23400 Forcus1_buffer$(1) = "☓"
23410 endif
23420 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
23430 Forcus1_buffer$(0)="○"
23440 else
23450 Forcus1_buffer$(0)="☓"
23460 endif
23470 gload Gazo$ + "Screen1.png",0,0,0
23480 color rgb(255,0,0):
23490 locate 1,1
23500 print "バーズアイグリッド(フォーカスライン1)"
23510 color rgb(255,255,255)
23520 locate 1,3:
23530 print "●.横のフォーカスライン"
23540 locate 1,5
23550 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23560 locate 1,7
23570 print "2.調停者ライン:"+Forcus1_buffer$(1)
23580 locate 1,9
23590 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23600 color rgb(0,0,0)
23610 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23620 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
23630 key$ = inkey$
23640 bg = strig(1)
23650 bg2 = strig(0)
23660 pause 200
23670 wend
23680 if ((bg=2) or (key$=chr$(13))) then
23690 goto BirdsEye_Result3:
23700 endif
23710 if (bg2=2) then
23720 for i=0 to 8
23730 buffer(i)=0
23740 next i
23750 goto Main_Screen:
23760 endif
23770 BirdsEye_Result3:
23780 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23790 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23800 Forcus2_buffer$(2)="○"
23810 else
23820 Forcus2_buffer$(2)="☓"
23830 endif
23840 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23850 Forcus2_buffer$(1)="○"
23860 else
23870 Forcus2_buffer$(1) = "☓"
23880 endif
23890 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23900 Forcus2_buffer$(0)="○"
23910 else
23920 Forcus2_buffer$(0)="☓"
23930 endif
23940 gload Gazo$ + "Screen1.png",0,0,0
23950 color rgb(255,0,0):
23960 locate 1,1
23970 print "バーズアイグリッド(フォーカスライン2)"
23980 color rgb(255,255,255)
23990 locate 1,3
24000 print "●.縦のフォーカスライン"
24010 locate 1,5
24020 print "1.表現者ライン:" + Forcus2_buffer$(2)
24030 locate 1,7
24040 print "2.司令塔ライン:" + Forcus2_buffer$(1)
24050 locate 1,9
24060 print "3.指導者ライン:" + Forcus2_buffer$(0)
24070 color rgb(0,0,0)
24080 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
24090 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24100 key$ = inkey$
24110 bg = strig(1)
24120 bg2 = strig(0)
24130 pause 200
24140 wend
24150 if ((bg = 2) or (key$ = chr$(13))) then
24160 goto BirdsEye_Result4:
24170 endif
24180 if (bg2=2) then
24190 for i=0 to 8
24200 buffer(i)=0
24210 next i
24220 goto Main_Screen:
24230 endif
24240 BirdsEye_Result4:
24250 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
24260 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
24270 Forcus3_buffer$(1) = "○"
24280 else
24290 Forcus3_buffer$(1) = "☓"
24300 endif
24310 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
24320 Forcus3_buffer$(0) = "○"
24330 else
24340 Forcus3_buffer$(0) = "☓"
24350 endif
24360 gload Gazo$ + "Screen1.png",0,0,0
24370 color rgb(255,0,0):
24380 locate 1,1
24390 print "バーズアイグリッド(フォーカスライン3)"
24400 color rgb(255,255,255)
24410 locate 1,3:
24420 print "●.斜めのフォーカスライン"
24430 locate 1,5
24440 print "1.成功者ライン:"+Forcus3_buffer$(1)
24450 locate 1,7
24460 print "2.セレブライン:"+Forcus3_buffer$(0)
24470 color rgb(0,0,0)
24480 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
24490 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24500 key$ = inkey$
24510 bg = strig(1)
24520 bg2 = strig(0)
24530 pause 200
24540 wend
24550 if ((bg=2) or (key$=chr$(13))) then
24560 goto Result_Birtheye1:
24570 endif
24580 if (bg2=2) then
24590 'データークリア
24600 for i=0 to 8
24610 buffer(i) = 0
24620 next i
24630 goto Main_Screen:
24640 endif
24650 References1:
24660 cls 3:key$ = "":bg = 0:play "":font 48-16
24670 gload Gazo$ + "Reference1_20230703.png",0,0,0
24680 print chr$(13)+chr$(13)+chr$(13)
24690 color rgb(0,0,0)
24700 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24710 print "Author:carol Adrinne,PhD"+chr$(13)
24720 print "出版社:幻冬舎" + chr$(13)
24730 print "HP:www.carolAdrienne.jp/"+chr$(13)
24740 print "ISBN:978-4-344-01394-0"+chr$(13)
24750 print "定価:1500円 + 税"+chr$(13)
24760 color rgb(255,255,255)
24770 locate 1,23
24780 print "ジョイパッド右：次へ"
24790 while (key$ <> chr$(13) and bg <> 2)
24800 bg = strig(1)
24810 key$ = inkey$
24820 wend
24830 '
24840 if ((bg = 2) or (key$ = chr$(13))) then
24850 pause 200:goto References2:
24860 endif
24870 'ユダヤの秘儀 カバラ大占術
24880 References2:
24890 cls 3:play "":bg = 0:key$ = ""
24900 gload Gazo$ + "Reference2_20230703.png",0,0,0
24910 '参考文献２
24920 'カバラ大占術
24930 print chr$(13) + chr$(13) + chr$(13)
24940 color  rgb(0,0,0):font 48-16
24950 locate 1,3
24960 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24970 print "著者：浅野　八郎" + chr$(13)
24980 print "出版社:NON BOOK" + chr$(13)
24990 print "ISBN:4-396-10364-6" + chr$(13)
25000 print "定価:829円 + 税"
25010 color rgb(255,255,255)
25020 locate 1,23
25030 print "ジョイパッド右：トップへ行く"
25040 while ((key$ <> chr$(13)) and (bg <> 2))
25050 bg = strig(1)
25060 key$ = inkey$
25070 wend
25080 if ((bg = 2) or (key$ = chr$(13))) then
25090 pause 200:goto Main_Screen:
25100 endif
25110 end
25120 '1.数秘術　トップ画面
25130 Kabara_First_Top:
25140 cls 3:color rgb(255,255,255):play ""
25150 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
25160 gload Gazo$ + "downscreen.png",0,0,800
25170 No=0:init"kb:4"
25180 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
25190 print chr$(13);chr$(13)
25200 color rgb(255,255,255)
25210 locate 3,4:No=0
25220 print "番号選んでください" + chr$(13)
25230 print " :1.数秘術占い" + chr$(13)
25240 print " :2.トップ画面に戻る" + chr$(13)
25250 color rgb(0,0,0)
25260 sp_on 0,1
25270 locate 1,15:print "1.数秘術番号を求めるを選択"
25280 'KeyBord:true
25290 'Joy Pad:true
25300 '上、下:true
25310 '
25320 'ｂｇ：決定ボタン
25330 'カーソル　上
25340 'カーソル　下
25350 Kabara_First_Top2:
25360 key$ = "":bg = 0:y = 0:
25370 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
25380 key$ = inkey$
25390 bg = strig(1)
25400 y = stick(1)
25410 'PauseでCPUを休める
25420 pause 5
25430 wend
25440 '1.カーソル　下 処理 chr$(31)
25450 'カーソル　下
25460 if ((key$ = chr$(31)) or (y = 1)) then
25470 select case No
25480 '
25490 case 1:
25500 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
25510 case 0:
25520 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25530 'case 2:
25540 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25550 end select
25560 endif
25570 '2.カーソル　上 処理 chr$(30)
25580 if ((key$ = chr$(30)) or (y = -1)) then
25590 select case No
25600 case 0:
25610 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25620 case 1:
25630 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25640 'case 2:
25650 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25660 end select
25670 endif
25680 '3.決定 処理  bg:2 or Enter key:chr$(13)
25690 if ((bg = 2) or (key$ = chr$(13))) then
25700 select case No
25710 case 0:
25720 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25730 goto Kabara_TopScreen:
25740 'case 1:
25750 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25760 case 1:
25770 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25780 end select
25790 endif
25800 '
25810 'Kabara 相性占い トップ画面
25820 Kabara_Aishou_Top:
25830 cls 3:y=0:key$="":bg=0:No=0
25840 play ""
25850 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25860 gload Gazo$ + "downscreen.png",0,0,800
25870 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25880 print chr$(13) + chr$(13)
25890 locate 0,4:color rgb(255,255,255)
25900 'print "Ok"
25910 '
25920 print "番号を選んでください" + chr$(13)
25930 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
25940 print " :2.ビジネスの相性占い" + chr$(13)
25950 print " :3.トップ画面に戻る" + chr$(13)
25960 sp_on 0,1:sp_on 1,0:sp_on 2,0
25970 color rgb(0,0,0)
25980 locate 1,15:print "1.男女2人の相性占いを選択"
25990 Kabara_Aishou_Top2:
26000 key$ = "":y = 0:bg = 0:
26010 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
26020 'ジョイパッド(右) ,十字キー (上下)
26030 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
26040 y = stick(1)
26050 key$ = inkey$
26060 bg = strig(1)
26070 pause 200
26080 wend
26090 'カーソル　下 or 十字キー　下
26100 if ((key$ = chr$(31)) or (y = 1)) then
26110 select case No
26120 '選択肢　1 - 2に変更
26130 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26140 'ok
26150 case 0:
26160 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26170 '選択肢　2 - 3に変更
26180 case 1:
26190 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
26200 'リリース時 case 2コメント解除
26210 case 2:
26220 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
26230 case else:
26240 goto Kabara_Aishou_Top2:
26250 end select
26260 endif
26270 '十字キー　上　、カーソル　上
26280 if ((key$ = chr$(30)) or (y = -1)) then
26290 select case No
26300 case 0:
26310 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
26320 case 1:
26330 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
26340 case 2:
26350 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26360 case else:
26370 goto Kabara_Aishou_Top2:
26380 end select
26390 endif
26400 '十字キー　上下:選択
26410 'ジョイパッド 右:決定
26420 if ((bg = 2) or (key$ = chr$(13))) then
26430 select case No
26440 '1.男女の相性
26450 case 0:
26460 '男女の相性占い(未実装)トップ画面に飛ぶ
26470 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
26480 '2ビジネスの相性
26490 case 1:
26500 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
26510 case 2:
26520 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
26530 end select
26540 endif
26550 '0.男女の相性　トップ画面　ここから
26560 Danjyo_Aisyou_Top:
26570 cls 3:y=0:key$="":bg=0:No=0
26580 play ""
26590 gload Gazo$ + "Screen1.png",0,0,0
26600 gload Gazo$ + "downscreen.png",0,0,800
26610 print chr$(13) + chr$(13)
26620 locate 0,4:color rgb(255,255,255)
26630 'print "Ok"
26640 '
26650 print "番号を選んでください" + chr$(13)
26660 print " :1.自分と異性の相性(未実装)" + chr$(13)
26670 print " :2.男女2人の相性" + chr$(13)
26680 print " :3.トップ画面に戻る" + chr$(13)
26690 sp_on 0,1:sp_on 1,0:sp_on 2,0
26700 color rgb(0,0,0)
26710 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
26720 Danjyo_Aisyou_Top2:
26730 key$ = "":y = 0:bg = 0:
26740 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
26750 'ジョイパッド(右) ,十字キー (上下)
26760 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
26770 y = stick(1)
26780 key$ = inkey$
26790 bg = strig(1)
26800 pause 200
26810 wend
26820 'カーソル　下 or 十字キー　下
26830 if ((key$ = chr$(31)) or (y = 1)) then
26840 select case No
26850 '選択肢　1 - 2に変更
26860 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26870 'ok
26880 case 0:
26890 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
26900 '選択肢　2 - 3に変更
26910 case 1:
26920 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
26930 'リリース時 case 2コメント解除
26940 case 2:
26950 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
26960 case else:
26970 goto Kabara_Aishou_Top2:
26980 end select
26990 endif
27000 '十字キー　上　、カーソル　上
27010 if ((key$ = chr$(30)) or (y = -1)) then
27020 select case No
27030 case 0:
27040 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
27050 case 1:
27060 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
27070 case 2:
27080 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
27090 case else:
27100 goto Kabara_Aishou_Top2:
27110 end select
27120 endif
27130 '十字キー　上下:選択
27140 'ジョイパッド 右:決定
27150 if ((bg = 2) or (key$ = chr$(13))) then
27160 select case No
27170 '1.自分と異性の相性
27180 case 0:
27190 '未実装
27200 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
27210 '2男女の相性 男性の名前入力に飛ぶ
27220 case 1:
27230 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
27240 case 2:
27250 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
27260 end select
27270 endif
27280 '0.男女の相性　トップ画面　ここまで
27290 '1.男女の相性 ここから
27300 '1-1.男性の名前を入力
27310 Danjyo_Aisyou_Input_Name_male:
27320 No=0:color RGB(255,255,255)
27330 '入力:キーボード
27340 cls 3:init "kb:2"
27350 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27360 gload Gazo$ + "downscreen.png",0,0,800
27370 for i=0 to 3
27380 buf_male_year(i)=0
27390 next i
27400 play "":color rgb(255,0,0):male_name$ = ""
27410 locate 0,1
27420 print "男性の相性" + chr$(13) + chr$(13)
27430 color rgb(255,255,255):
27440 locate 0,3
27450 print "男性の相性を求めます。男性の名前を" + chr$(13)
27460 print "入れてください" + chr$(13)
27470 locate 0,15:color rgb(0,0,0)
27480 Input "男性の名前:",male_name$
27490 '-------------------------------------------
27500 '1-2:男性の生まれた年代
27510 Danjyo_Aisyou_Input_Born_Year:
27520 No=0:color RGB(255,255,255)
27530 cls 3:init "kb:4"
27540 gload Gazo$ + "Screen1.png",0,0,0
27550 gload Gazo$ + "downscreen.png",0,0,800
27560 play "":color rgb(255,0,0)
27570 '-------------------------------------------
27580 font 48
27590 locate 0,1
27600 '文字色：黒　 color rgb(0,0,0)
27610 color rgb(255,255,255)
27620 print "男性の生まれた年代を入れて下さい" + chr$(13)
27630 color rgb(255,255,255)
27640 locate 1,3
27650 print "男性の生まれた年代(西暦4桁):";buf_male_year$
27660 color rgb(255,255,255)
27670 'locate 4,6:print ":7"
27680 'locate 9,6:print ":8"
27690 'locate 12,6:print ":9"
27700 locate 4,6
27710 print ":7  :8  :9" + chr$(13)
27720 color rgb(255,255,255)
27730 locate 4,8
27740 print ":4  :5  :6" + chr$(13)
27750 color rgb(255,255,255)
27760 locate 4,10
27770 print ":1  :2  :3" + chr$(13)
27780 locate 4,12
27790 print "    :0"
27800 locate 12,12
27810 color rgb(0,0,255)
27820 print ":Ok"
27830 sp_on 4,0: sp_on 5,0:sp_on 6,0
27840 sp_on 7,0:sp_on 8,0:sp_on 9,0
27850 sp_on 10,0:sp_on 11,0:sp_on 12,0
27860 sp_on 13,0:sp_on 14,1
27870 '-------------------------------------------------------------------------------------
27880 Danjyo_Aisyou_Input_Male_Born_Year2:
27890 key$="":bg=0:y=0:y2=0:bg2=0:
27900 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27910 key$ = inkey$
27920 bg = strig(1)
27930 y = stick(1)
27940 y2 = stick(0)
27950 bg2=strig(0)
27960 pause 200
27970 wend
27980 '十字キー　ここから
27990 '上の矢印　または、十字キー上
28000 if ((y = -1) or (key$ = chr$(30))) then
28010 select case No
28020 'No=-1:okのとき:初期の状態
28030 '0kボタンから３に移動
28040 '上に行く 処理
28050 case -1:
28060 No=3:sp_on 12,1:sp_on 14,0
28070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28080 '選択肢:3
28090 '3ボタンから 6に移動
28100 case 3:
28110 No=6:sp_on 12,0:sp_on 11,1
28120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28130 '6ボタンから ９に移動
28140 case 6:
28150 No=9:sp_on 10,1:sp_on 11,0
28160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28170 '6ボタンから ９に移動　ここまで
28180 '9で上を押して何もしない
28190 case 9:
28200 '何もしない
28210 No=9
28220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28230 '9で上を押しても何もしない　ここまで
28240 '上　 0ボタンから2ボタン
28250 'sp_on 6,1:1
28260 'sp_on 8,1:5
28270 'sp_on 7,1:7
28280 case 0:
28290 No=2:sp_on 13,0:sp_on 9,1:
28300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28310 '上  0ボタンから2ボタン　ここまで
28320 '2から５になる 上
28330 case 2:
28340 No=5:sp_on 8,1:sp_on 9,0:
28350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28360 case 5:
28370 No=8:sp_on 7,1:sp_on 8,0
28380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28390 case 8:
28400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28410 case 1:
28420 No=4:sp_on 5,1:sp_on 6,0
28430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28440 case 4:
28450 No=7:sp_on 4,1:sp_on 5,0
28460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28470 case 7:
28480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28490 end select
28500 endif
28510 '左３　ここまで
28520 '下の矢印
28530 '中央 2
28540 if ((y=1) or (key$ = chr$(31))) then
28550 select case No
28560 '9から６に下げる
28570 case 9:
28580 No=6:sp_on 11,1:sp_on 10,0
28590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28600 '6から３に下げる
28610 case 6:
28620 No=3:sp_on 12,1:sp_on 11,0
28630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28640 '3から０ｋに変える
28650 case 3:
28660 No=-1:sp_on 14,1:sp_on 12,0
28670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28680 'Okから下のボタンを押しても何もしない
28690 case -1:
28700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28710 case 8:
28720 No=5:sp_on 8,1:sp_on 7,0
28730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28740 case 5:
28750 No=2:sp_on 9,1:sp_on 8,0
28760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28770 case 2:
28780 No=0:sp_on 13,1:sp_on 9,0
28790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28800 case 0:
28810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28820 case 7:
28830 No=4:sp_on 5,1:sp_on 4,0
28840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28850 case 4:
28860 No=1:sp_on 6,1:sp_on 5,0
28870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28880 case 1:
28890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28900 end select
28910 endif
28920 '左へボタン 十字キー　左　or 　カーソル左
28930 if ((y2 = -1) or (key$ = chr$(29))) then
28940 select case No
28950 'Ok ボタン  Okから　左　０に行く
28960 case -1:
28970 No=0:sp_on 13,1:sp_on 14,0
28980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28990 '0 ボタン  左　何もしない
29000 case 0:
29010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29020 case 3:
29030 No=2:sp_on 9,1:sp_on 12,0:
29040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29050 case 2:
29060 No=1:sp_on 6,1:sp_on 9,0:
29070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29080 case 1:
29090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29100 case 6:
29110 No=5:sp_on 8,1:sp_on 11,0
29120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29130 case 5:
29140 No=4:sp_on 5,1:sp_on 8,0
29150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29160 case 4:
29170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29180 case 9:
29190 No=8:sp_on 7,1:sp_on 10,0
29200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29210 case 8:
29220 No=7:sp_on 4,1:sp_on 7,0
29230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29240 case 7:
29250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29260 end select
29270 endif
29280 '右  十字キー　右　or カーソル　右
29290 if ((y2 = 1) or (key$ = chr$(28))) then
29300 select case No
29310 '0ボタンからokボタン右に移動
29320 case 0:
29330 No=-1:sp_on 14,1:sp_on 13,0
29340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29350 '0ボタンからokボタン 右に移動　ここまで
29360 'OKボタンで右を押して何もしない
29370 case -1:
29380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29390 case 1:
29400 No=2:sp_on 9,1:sp_on 6,0
29410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29420 case 2:
29430 No=3:sp_on 12,1:sp_on 9,0
29440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29450 case 3:
29460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29470 case 4:
29480 No=5:sp_on 8,1:sp_on 5,0
29490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29500 case 5:
29510 No=6:sp_on 11,1:sp_on 8,0
29520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29530 case 7:
29540 No=8:sp_on 7,1:sp_on 4,0
29550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29560 case 8:
29570 No=9:sp_on 10,1:sp_on 7,0
29580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29590 case 9:
29600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29610 case 6:
29620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29630 end select
29640 'Okから右ボタンを押して何もしない ここまで
29650 endif
29660 '十字キー　ここまで
29670 '==============================
29680 'ここから
29690 '==============================
29700 if ((bg = 2) or (key$ = chr$(13))) then
29710 select case count
29720 case 0:
29730 count = 1
29740 if (No = -1) then
29750 count = 0:No=0
29760 buf_male_year(0) = No
29770 'Okボタンを押したとき
29780 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29790 else
29800 'Okボタン以外が押されたとき
29810 if (No >= 1 and No <= 2) then
29820 buf_year$="":buf_year$ = str$(No) + "***"
29830 buf_year = No:a= No
29840 buf_Jyoushi_Born_Day(0) = No
29850 locate 1,3
29860 color rgb(255,255,255)
29870 print "男性の生まれた年代(西暦4桁):";buf_year$
29880 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29890 else
29900 count=0
29910 ui_msg"数字が範囲外になります。"
29920 buf_year$="":buf_year=0
29930 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29940 endif
29950 endif
29960 case 1:
29970 count = 2
29980 if (No = -1) then
29990 count = 1
30000 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30010 else
30020 buf_year = a * 10 + No
30030 b=buf_year
30040 buf_year$ = str$(buf_year) + "**"
30050 buf_male_year(0)=buf_year
30060 locate 1,3
30070 color rgb(255,255,255)
30080 print "                                                                "
30090 locate 1,3
30100 print "男性の生まれた年代(西暦4桁):" + buf_year$
30110 'if (No = -1) then
30120 'count=1
30130 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30140 endif
30150 case 2:
30160 count=3
30170 if (No=-1) then
30180 count =2
30190 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30200 else
30210 buf_year = b * 10 + No
30220 c=buf_year
30230 buf_year$ = str$(buf_year) + "*"
30240 buf_male_year(0) = buf_year
30250 locate 1,3
30260 color rgb(255,255,255)
30270 print "                                        "
30280 locate 1,3
30290 print "男性の生まれた年代(西暦4桁):";buf_year$
30300 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30310 endif
30320 case 3:
30330 count=4
30340 if (No = -1) then
30350 No=0
30360 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30370 else
30380 buf_year = c * 10 + No
30390 buf_year$ = str$(buf_year)
30400 buf_male_year(0) = buf_year
30410 locate 1,3
30420 color RGB(255,255,255)
30430 print "                                      "
30440 locate 1,3
30450 print "男性の生まれた年代(西暦4桁):";buf_year$
30460 buf_year=val(buf_year$)
30470 'year=val(buf_year$)
30480 'if (No=-1) then
30490 'goto Input_Born_Month:
30500 'else
30510 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30520 endif
30530 case 4:
30540 'bufyear=buf_year
30550 if (No=-1) then
30560 buf_year = val(buf_year$)
30570 buf_male_year(0)=buf_year
30580 sp_on 14,0:No=0
30590 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30600 else
30610 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30620 endif
30630 end select
30640 endif
30650 '===========================
30660 'ここまでを部下のところにコピーする.
30670 '===========================
30680 if (bg2 = 2) then
30690 select case count2
30700 case 0:
30710 if (No = -1) then
30720 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
30730 count=0
30740 locate 1,3
30750 color rgb(255,255,255)
30760 print "                                      "
30770 locate 1,3
30780 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
30790 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30800 else
30810 '(buf_year=0) then
30820 buf_male_year=0:buf_male_year$="****"
30830 locate 1,3
30840 print "                                       "
30850 locate 1,3
30860 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
30870 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30880 'endif
30890 endif
30900 end select
30910 endif
30920 '-------生まれた年代　男性-------------
30930 '-------生まれた月　男性-------------
30940 '1-2:男性の生まれた月
30950 Danjyo_Aisyou_Input_Male_Born_Month:
30960 cls 3:play "":count=0:count2=0
30970 'No=-1:Okのとき
30980 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
30990 for i=0 to 1
31000 buf_male_month(i)=0
31010 next i
31020 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
31030 gload Gazo$ + "Screen1.png",0,0,0
31040 gload Gazo$ + "downscreen.png",0,0,800
31050 'Init"kb:4"
31060 '音声ファイル再生 2023.06.07
31070 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
31080 font 48
31090 locate 0,1
31100 '文字色：黒　 color rgb(0,0,0)
31110 '文字色:白
31120 color rgb(255,255,255)
31130 print "男性の生まれた月を入れて下さい" + chr$(13)
31140 '文字色:白
31150 color rgb(255,255,255)
31160 locate 1,3
31170 '文字色:白
31180 print "男性の生まれた月(1月~12月):"+buf_male_Month$
31190 color rgb(255,255,255)
31200 'locate 4,6:print ":7"
31210 'locate 9,6:print ":8"
31220 'locate 12,6:print ":9"
31230 locate 4,6
31240 '文字色:赤
31250 print ":7  :8  :9" + chr$(13)
31260 color rgb(255,255,255)
31270 locate 4,8
31280 print ":4  :5  :6" + chr$(13)
31290 color rgb(255,255,255)
31300 locate 4,10
31310 print ":1  :2  :3" + chr$(13)
31320 locate 4,12
31330 print "    :0"
31340 locate 12,12
31350 color rgb(0,0,255)
31360 print ":Ok"
31370 sp_on 4,0: sp_on 5,0:sp_on 6,0
31380 sp_on 7,0:sp_on 8,0:sp_on 9,0
31390 sp_on 10,0:sp_on 11,0:sp_on 12,0
31400 sp_on 13,0:sp_on 14,1
31410 '----------------------------------------------------------------------------------------
31420 Danjyo_Aisyou_Input_Male_Born_Month2:
31430 key$="":bg=0:y=0:y2=0:bg2=0
31440 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31450 key$ = inkey$
31460 bg = strig(1)
31470 y = stick(1)
31480 y2 = stick(0)
31490 bg2 = strig(0)
31500 pause 5
31510 wend
31520 '十字キー　ここから
31530 '上の矢印　または、十字キー上
31540 if ((y = -1) or (key$ = chr$(30))) then
31550 select case No
31560 'No=-1:okのとき:初期の状態
31570 '0kボタンから３に移動
31580 '上に行く 処理
31590 case -1:
31600 No=3:sp_on 12,1:sp_on 14,0
31610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31620 '選択肢:3
31630 '3ボタンから 6に移動
31640 case 3:
31650 No=6:sp_on 12,0:sp_on 11,1
31660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31670 '6ボタンから ９に移動
31680 case 6:
31690 No=9:sp_on 10,1:sp_on 11,0
31700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31710 '6ボタンから ９に移動　ここまで
31720 '9で上を押して何もしない
31730 case 9:
31740 '何もしない
31750 No=9
31760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31770 '9で上を押しても何もしない　ここまで
31780 '上　 0ボタンから2ボタン
31790 'sp_on 6,1:1
31800 'sp_on 8,1:5
31810 'sp_on 7,1:7
31820 case 0:
31830 No=2:sp_on 13,0:sp_on 9,1:
31840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31850 '上  0ボタンから2ボタン　ここまで
31860 '2から５になる 上
31870 case 2:
31880 No=5:sp_on 8,1:sp_on 9,0:
31890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31900 case 5:
31910 No=8:sp_on 7,1:sp_on 8,0
31920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31930 case 8:
31940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31950 case 1:
31960 No=4:sp_on 5,1:sp_on 6,0
31970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31980 case 4:
31990 No=7:sp_on 4,1:sp_on 5,0
32000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32010 case 7:
32020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32030 end select
32040 endif
32050 '左３　ここまで
32060 '下の矢印
32070 '中央 2
32080 if ((y=1) or (key$ = chr$(31))) then
32090 select case No
32100 '9から６に下げる
32110 case 9:
32120 No=6:sp_on 11,1:sp_on 10,0
32130 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
32140 '6から３に下げる
32150 case 6:
32160 No=3:sp_on 12,1:sp_on 11,0
32170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32180 '3から０ｋに変える
32190 case 3:
32200 No=-1:sp_on 14,1:sp_on 12,0
32210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32220 'Okから下のボタンを押しても何もしない
32230 case -1:
32240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32250 case 8:
32260 No=5:sp_on 8,1:sp_on 7,0
32270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32280 case 5:
32290 No=2:sp_on 9,1:sp_on 8,0
32300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32310 case 2:
32320 No=0:sp_on 13,1:sp_on 9,0
32330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32340 case 0:
32350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32360 case 7:
32370 No=4:sp_on 5,1:sp_on 4,0
32380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32390 case 4:
32400 No=1:sp_on 6,1:sp_on 5,0
32410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32420 case 1:
32430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32440 end select
32450 endif
32460 '左へボタン 十字キー　左　or 　カーソル左
32470 if ((y2 = -1) or (key$ = chr$(29))) then
32480 select case No
32490 'Ok ボタン  Okから　左　０に行く
32500 case -1:
32510 No=0:sp_on 13,1:sp_on 14,0
32520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32530 '0 ボタン  左　何もしない
32540 case 0:
32550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32560 case 3:
32570 No=2:sp_on 9,1:sp_on 12,0:
32580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32590 case 2:
32600 No=1:sp_on 6,1:sp_on 9,0:
32610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32620 case 1:
32630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32640 case 6:
32650 No=5:sp_on 8,1:sp_on 11,0
32660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32670 case 5:
32680 No=4:sp_on 5,1:sp_on 8,0
32690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32700 case 4:
32710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32720 case 9:
32730 No=8:sp_on 7,1:sp_on 10,0
32740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32750 case 8:
32760 No=7:sp_on 4,1:sp_on 7,0
32770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32780 case 7:
32790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32800 end select
32810 endif
32820 '右  十字キー　右　or カーソル　右
32830 if ((y2 = 1) or (key$ = chr$(28))) then
32840 select case No
32850 '0ボタンからokボタン右に移動
32860 case 0:
32870 No=-1:sp_on 14,1:sp_on 13,0
32880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32890 '0ボタンからokボタン 右に移動　ここまで
32900 'OKボタンで右を押して何もしない
32910 case -1:
32920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32930 case 1:
32940 No=2:sp_on 9,1:sp_on 6,0
32950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32960 case 2:
32970 No=3:sp_on 12,1:sp_on 9,0
32980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32990 case 3:
33000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33010 case 4:
33020 No=5:sp_on 8,1:sp_on 5,0
33030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33040 case 5:
33050 No=6:sp_on 11,1:sp_on 8,0
33060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33070 case 7:
33080 No=8:sp_on 7,1:sp_on 4,0
33090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33100 case 8:
33110 No=9:sp_on 10,1:sp_on 7,0
33120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33130 case 9:
33140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33150 case 6:
33160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33170 end select
33180 'Okから右ボタンを押して何もしない ここまで
33190 endif
33200 '十字キー　ここまで
33210 '右の丸ボタン + Enter key 決定キー
33220 if ((bg=2) or (key$=chr$(13))) then
33230 select case count
33240 case 0:
33250 if (No=-1) then No=0
33260 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
33270 if (buf_male_month > 1 and buf_male_month < 10)  then
33280 buf_male_Month$ = str$(buf_male_month)
33290 'buf_month=No
33300 endif
33310 if (buf_male_month = 1)  then
33320 buf_male_Month$ = str$(buf_male_month) + "*"
33330 'c=buf_month
33340 endif
33350 locate 1,3
33360 print "                                     "
33370 color RGB(255,255,255)
33380 locate 1,3
33390 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33400 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33410 case 1:
33420 count = 2:
33430 'c = val(buf_Month$)
33440 if (No = -1) then
33450 'count=0
33460 No=0
33470 month=buf_male_month
33480 buf_male_month=val(buf_male_Month$)
33490 month=buf_male_month
33500 buf_Jyoushi_Born_Day(1)=month
33510 '生まれた日に飛ぶ
33520 goto Danjyo_Aisyou_Input_Male_Born_Day:
33530 else
33540 buf_male_month = c*10 + No
33550 'if (buf_month = 1) then
33560 'buf_Month$ = str$(buf_month)
33570 'endif
33580 buf_male_Month$ = str$(buf_male_month)
33590 buf_Jyoushi_Born_Day(1) = buf_male_month
33600 locate 0,3
33610 print "                                           "
33620 locate 1,3
33630 color Rgb(255,255,255)
33640 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33650 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33660 endif
33670 case 2:
33680 '==================================
33690 '何もしない
33700 'coun = 2
33710 '==================================
33720 'c= val(buf_Month$)
33730 'buf_month = c*10 + No
33740 'buf_Month$ = str$(buf_month)
33750 'locate 2,3
33760 'print "上司の生まれた月(1月～12月):";buf_Month$
33770 'goto Jyoushi_Input_Born_Month2:
33780 'case 3:
33790 'count=4
33800 'b=val(buf_month$)
33810 'buf_month=c*10+No
33820 'buf_Month$=str$(buf_month)
33830 'locate 2,3
33840 'print "上司の生まれた月(1月～12月):";buf_Month$
33850 'buf_month=val(buf_Month$)
33860 'year=val(buf_year$)
33870 if (No=-1) then
33880 No=0
33890 goto Danjyo_Aisyou_Input_Male_Born_Day:
33900 else
33910 goto Danjyo_Aisyou_Input_Male_Born_Day2:
33920 endif
33930 'case 4:
33940 'bufyear=buf_year
33950 'if (No=-1) then
33960 'buf_month = val(buf_Month$)
33970 'month = buf_month
33980 'sp_on 14,0
33990 'goto Input_Born_Day:
34000 'else
34010 'goto Input_Born_Month2:
34020 'endif
34030 end select
34040 endif
34050 '左の丸ボタン　キャンセル
34060 if (bg2=2) then
34070 select case count2
34080 case 0:
34090 if (No = -1) then
34100 buf_male_month=0:buf_male_Month$="**"
34110 count=0
34120 'goto rewrite2:
34130 else
34140 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
34150 buf_male_month = 0:buf_male_Month$ = "**"
34160 locate 0,3
34170 color rgb(255,255,255)
34180 print "                                       "
34190 goto rewrite2:
34200 if (No>12) then
34210 ui_msg"値が範囲外です。"
34220 goto rewrite2:
34230 endif
34240 endif
34250 endif
34260 rewrite2:
34270 locate 2,3
34280 color rgb(255,255,255)
34290 print "                                      "
34300 locate 2,3
34310 print "男性の生まれた月(1月~12月):"+buf_male_Month$
34320 goto Danjyo_Aisyou_Input_Male_Born_Month2:
34330 end select
34340 'endif
34350 endif
34360 end
34370 '-------生まれた月　男性 ここまで-------------
34380 '-------生まれた日　男性 ここから-------------
34390 Danjyo_Aisyou_Input_Male_Born_Day:
34400 cls 3:play "":count=0:count2=0
34410 'No=-1:Okのとき
34420 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
34430 for i=0 to 1
34440 buf_day(i)=0
34450 next i
34460 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34470 gload Gazo$ + "Screen1.png",0,0,0
34480 gload Gazo$ + "downscreen.png",0,0,800
34490 'Init"kb:4"
34500 '音声ファイル再生 2023.06.07
34510 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
34520 font 48
34530 locate 0,1
34540 '文字色：黒　 color rgb(0,0,0)
34550 '文字色:白
34560 color rgb(255,255,255)
34570 print "男性の生まれた日を入れて下さい" + chr$(13)
34580 '文字色:白
34590 color rgb(255,255,255)
34600 locate 1,3
34610 '文字色:白
34620 print "男性の生まれた日(1月~31月):" + buf_Day$
34630 color rgb(255,255,255)
34640 'locate 4,6:print ":7"
34650 'locate 9,6:print ":8"
34660 'locate 12,6:print ":9"
34670 locate 4,6
34680 '文字色:赤
34690 print ":7  :8  :9" + chr$(13)
34700 color rgb(255,255,255)
34710 locate 4,8
34720 print ":4  :5  :6" + chr$(13)
34730 color rgb(255,255,255)
34740 locate 4,10
34750 print ":1  :2  :3" + chr$(13)
34760 locate 4,12
34770 print "    :0"
34780 locate 12,12
34790 color rgb(0,0,255)
34800 print ":Ok"
34810 sp_on 4,0: sp_on 5,0:sp_on 6,0
34820 sp_on 7,0:sp_on 8,0:sp_on 9,0
34830 sp_on 10,0:sp_on 11,0:sp_on 12,0
34840 sp_on 13,0:sp_on 14,1
34850 '-------------------------------------------------
34860 Danjyo_Aisyou_Input_Male_Born_Day2:
34870 key$="":bg=0:y=0:y2=0:bg2=0
34880 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34890 key$ = inkey$
34900 bg = strig(1)
34910 y = stick(1)
34920 y2 = stick(0)
34930 bg2 = strig(0)
34940 pause 5
34950 wend
34960 '十字キー　ここから
34970 '上の矢印　または、十字キー上
34980 if ((y = -1) or (key$ = chr$(30))) then
34990 select case No
35000 'No=-1:okのとき:初期の状態
35010 '0kボタンから３に移動
35020 '上に行く 処理
35030 case -1:
35040 No=3:sp_on 12,1:sp_on 14,0
35050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35060 '選択肢:3
35070 '3ボタンから 6に移動
35080 case 3:
35090 No=6:sp_on 12,0:sp_on 11,1
35100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35110 '6ボタンから ９に移動
35120 case 6:
35130 No=9:sp_on 10,1:sp_on 11,0
35140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35150 '6ボタンから ９に移動　ここまで
35160 '9で上を押して何もしない
35170 case 9:
35180 '何もしない
35190 No=9
35200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35210 '9で上を押しても何もしない　ここまで
35220 '上　 0ボタンから2ボタン
35230 'sp_on 6,1:1
35240 'sp_on 8,1:5
35250 'sp_on 7,1:7
35260 case 0:
35270 No=2:sp_on 13,0:sp_on 9,1:
35280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35290 '上  0ボタンから2ボタン　ここまで
35300 '2から５になる 上
35310 case 2:
35320 No=5:sp_on 8,1:sp_on 9,0:
35330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35340 case 5:
35350 No=8:sp_on 7,1:sp_on 8,0
35360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35370 case 8:
35380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35390 case 1:
35400 No=4:sp_on 5,1:sp_on 6,0
35410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35420 case 4:
35430 No=7:sp_on 4,1:sp_on 5,0
35440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35450 case 7:
35460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35470 end select
35480 endif
35490 '左３　ここまで
35500 '下の矢印
35510 '中央 2
35520 if ((y=1) or (key$ = chr$(31))) then
35530 select case No
35540 '9から６に下げる
35550 case 9:
35560 No=6:sp_on 11,1:sp_on 10,0
35570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35580 '6から３に下げる
35590 case 6:
35600 No=3:sp_on 12,1:sp_on 11,0
35610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35620 '3から０ｋに変える
35630 case 3:
35640 No=-1:sp_on 14,1:sp_on 12,0
35650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35660 'Okから下のボタンを押しても何もしない
35670 case -1:
35680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35690 case 8:
35700 No=5:sp_on 8,1:sp_on 7,0
35710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35720 case 5:
35730 No=2:sp_on 9,1:sp_on 8,0
35740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35750 case 2:
35760 No=0:sp_on 13,1:sp_on 9,0
35770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35780 case 0:
35790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35800 case 7:
35810 No=4:sp_on 5,1:sp_on 4,0
35820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35830 case 4:
35840 No=1:sp_on 6,1:sp_on 5,0
35850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35860 case 1:
35870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35880 end select
35890 endif
35900 '左へボタン 十字キー　左　or 　カーソル左
35910 if ((y2 = -1) or (key$ = chr$(29))) then
35920 select case No
35930 'Ok ボタン  Okから　左　０に行く
35940 case -1:
35950 No=0:sp_on 13,1:sp_on 14,0
35960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35970 '0 ボタン  左　何もしない
35980 case 0:
35990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36000 case 3:
36010 No=2:sp_on 9,1:sp_on 12,0:
36020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36030 case 2:
36040 No=1:sp_on 6,1:sp_on 9,0:
36050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36060 case 1:
36070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36080 case 6:
36090 No=5:sp_on 8,1:sp_on 11,0
36100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36110 case 5:
36120 No=4:sp_on 5,1:sp_on 8,0
36130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36140 case 4:
36150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36160 case 9:
36170 No=8:sp_on 7,1:sp_on 10,0
36180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36190 case 8:
36200 No=7:sp_on 4,1:sp_on 7,0
36210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36220 case 7:
36230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36240 end select
36250 endif
36260 '右  十字キー　右　or カーソル　右
36270 if ((y2 = 1) or (key$ = chr$(28))) then
36280 select case No
36290 '0ボタンからokボタン右に移動
36300 case 0:
36310 No=-1:sp_on 14,1:sp_on 13,0
36320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36330 '0ボタンからokボタン 右に移動　ここまで
36340 'OKボタンで右を押して何もしない
36350 case -1:
36360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36370 case 1:
36380 No=2:sp_on 9,1:sp_on 6,0
36390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36400 case 2:
36410 No=3:sp_on 12,1:sp_on 9,0
36420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36430 case 3:
36440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36450 case 4:
36460 No=5:sp_on 8,1:sp_on 5,0
36470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36480 case 5:
36490 No=6:sp_on 11,1:sp_on 8,0
36500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36510 case 7:
36520 No=8:sp_on 7,1:sp_on 4,0
36530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36540 case 8:
36550 No=9:sp_on 10,1:sp_on 7,0
36560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36570 case 9:
36580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36590 case 6:
36600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36610 end select
36620 'Okから右ボタンを押して何もしない ここまで
36630 endif
36640 '十字キー　ここまで
36650 '右の丸ボタン + Enter key 決定キー
36660 if ((bg=2) or (key$=chr$(13))) then
36670 select case count
36680 case 0:
36690 if (No=-1) then No=0
36700 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
36710 if (buf_male_day > 1 and buf_male_day < 10)  then
36720 buf_male_Day$ = str$(buf_male_day)
36730 'buf_month=No
36740 endif
36750 if (buf_male_day = 1)  then
36760 buf_male_Day$ = str$(buf_male_day) + "*"
36770 'c=buf_month
36780 endif
36790 locate 1,3
36800 print "                                     "
36810 color RGB(255,255,255)
36820 locate 1,3
36830 print "男性の生まれた日(1月~31月):" + buf_male_Day$
36840 goto Danjyo_Aisyou_Input_Male_Born_Day2:
36850 case 1:
36860 count = 2:
36870 'c = val(buf_Month$)
36880 if (No = -1) then
36890 'count=0
36900 No=0
36910 day=buf_male_Day
36920 buf_male_Day=val(buf_male_Day$)
36930 day=buf_male_Day
36940 buf_Jyoushi_Born_Day(2)=day
36950 '生まれた日に飛ぶ
36960 goto Danjyo_Aisyou_Input_Male_Born_Day:
36970 else
36980 buf_male_Day = c*10 + No
36990 'if (buf_month = 1) then
37000 'buf_Month$ = str$(buf_month)
37010 'endif
37020 buf_male_Day$ = str$(buf_male_Day)
37030 buf_male_Born_Day(2) = buf_male_Day:
37040 locate 0,3
37050 print "                                           "
37060 locate 1,3
37070 color Rgb(255,255,255)
37080 print "男性の生まれた月(1月~12月):" + buf_male_Day$
37090 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37100 endif
37110 case 2:
37120 '==================================
37130 '何もしない
37140 'coun = 2
37150 '==================================
37160 'c= val(buf_Month$)
37170 'buf_month = c*10 + No
37180 'buf_Month$ = str$(buf_month)
37190 'locate 2,3
37200 'print "上司の生まれた月(1月～12月):";buf_Month$
37210 'goto Jyoushi_Input_Born_Month2:
37220 'case 3:
37230 'count=4
37240 'b=val(buf_month$)
37250 'buf_month=c*10+No
37260 'buf_Month$=str$(buf_month)
37270 'locate 2,3
37280 'print "上司の生まれた月(1月～12月):";buf_Month$
37290 'buf_month=val(buf_Month$)
37300 'year=val(buf_year$)
37310 if (No=-1) then
37320 No=0
37330 goto Danjyo_Aisyou_Input_Male_Born_Day:
37340 else
37350 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37360 endif
37370 'case 4:
37380 'bufyear=buf_year
37390 'if (No=-1) then
37400 'buf_month = val(buf_Month$)
37410 'month = buf_month
37420 'sp_on 14,0
37430 'goto Input_Born_Day:
37440 'else
37450 'goto Input_Born_Month2:
37460 'endif
37470 end select
37480 endif
37490 '左の丸ボタン　キャンセル
37500 if (bg2=2) then
37510 select case count2
37520 case 0:
37530 if (No = -1) then
37540 buf_male_day=0:buf_male_Day$="**"
37550 count=0
37560 'goto rewrite2:
37570 else
37580 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
37590 buf_male_day = 0:buf_male_Day$ = "**"
37600 locate 0,3
37610 color rgb(255,255,255)
37620 print "                                       "
37630 goto rewrite2:
37640 if (No>12) then
37650 ui_msg"値が範囲外です。"
37660 goto rewrite2:
37670 endif
37680 endif
37690 endif
37700 rewrite2:
37710 locate 2,3
37720 color rgb(255,255,255)
37730 print "                                      "
37740 locate 2,3
37750 print "男性の生まれた日(1月~31月):"+buf_male_Day$
37760 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37770 end select
37780 'endif
37790 endif
37800 end
37810 '-------生まれた日　女性　ここまで-------------
37820 '1-1.女性の名前を入力
37830 Danjyo_Aisyou_Input_Name_female:
37840 No=0:color RGB(255,255,255)
37850 '入力:キーボード
37860 cls 3:init "kb:2"
37870 gload Gazo$ + "Screen1.png",0,0,0
37880 gload Gazo$ + "downscreen.png",0,0,800
37890 play "":color rgb(255,0,0):female_name$ = ""
37900 locate 0,1
37910 print "女性の相性" + chr$(13) + chr$(13)
37920 color rgb(255,255,255):
37930 locate 0,3
37940 print "女性の相性を求めます。男性の名前を" + chr$(13)
37950 print "入れてください" + chr$(13)
37960 locate 0,15:color rgb(0,0,0)
37970 Input "女性の名前:",female_name$
37980 '-------------------------------------------
37990 '-------生まれた年代　女性 ここから-------------
38000 Danjyo_Aisyou_Input_feMale_Born_Year:
38010 cls 3:play "":count=0:count2=0
38020 'No=-1:Okのとき
38030 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
38040 for i=0 to 1
38050 buf_day(i)=0
38060 next i
38070 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
38080 gload Gazo$ + "Screen1.png",0,0,0
38090 gload Gazo$ + "downscreen.png",0,0,800
38100 'Init"kb:4"
38110 '音声ファイル再生 2023.06.07
38120 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
38130 font 48
38140 locate 0,1
38150 '文字色：黒　 color rgb(0,0,0)
38160 '文字色:白
38170 color rgb(255,255,255)
38180 print "女性の生まれた年代を入れて下さい" + chr$(13)
38190 '文字色:白
38200 color rgb(255,255,255)
38210 locate 1,3
38220 '文字色:白
38230 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
38240 color rgb(255,255,255)
38250 'locate 4,6:print ":7"
38260 'locate 9,6:print ":8"
38270 'locate 12,6:print ":9"
38280 locate 4,6
38290 '文字色:赤
38300 print ":7  :8  :9" + chr$(13)
38310 color rgb(255,255,255)
38320 locate 4,8
38330 print ":4  :5  :6" + chr$(13)
38340 color rgb(255,255,255)
38350 locate 4,10
38360 print ":1  :2  :3" + chr$(13)
38370 locate 4,12
38380 print "    :0"
38390 locate 12,12
38400 color rgb(0,0,255)
38410 print ":Ok"
38420 sp_on 4,0: sp_on 5,0:sp_on 6,0
38430 sp_on 7,0:sp_on 8,0:sp_on 9,0
38440 sp_on 10,0:sp_on 11,0:sp_on 12,0
38450 sp_on 13,0:sp_on 14,1
38460 '---------------------------------------------
38470 Danjyo_Aisyou_Input_feMale_Born_Year2:
38480 key$="":bg=0:y=0:y2=0:bg2=0:
38490 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38500 key$ = inkey$
38510 bg = strig(1)
38520 y = stick(1)
38530 y2 = stick(0)
38540 bg2=strig(0)
38550 pause 5
38560 wend
38570 '十字キー　ここから
38580 '上の矢印　または、十字キー上
38590 if ((y = -1) or (key$ = chr$(30))) then
38600 select case No
38610 'No=-1:okのとき:初期の状態
38620 '0kボタンから３に移動
38630 '上に行く 処理
38640 case -1:
38650 No=3:sp_on 12,1:sp_on 14,0
38660 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
38670 '選択肢:3
38680 '3ボタンから 6に移動
38690 case 3:
38700 No=6:sp_on 12,0:sp_on 11,1
38710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38720 '6ボタンから ９に移動
38730 case 6:
38740 No=9:sp_on 10,1:sp_on 11,0
38750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38760 '6ボタンから ９に移動　ここまで
38770 '9で上を押して何もしない
38780 case 9:
38790 '何もしない
38800 No=9
38810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38820 '9で上を押しても何もしない　ここまで
38830 '上　 0ボタンから2ボタン
38840 'sp_on 6,1:1
38850 'sp_on 8,1:5
38860 'sp_on 7,1:7
38870 case 0:
38880 No=2:sp_on 13,0:sp_on 9,1:
38890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38900 '上  0ボタンから2ボタン　ここまで
38910 '2から５になる 上
38920 case 2:
38930 No=5:sp_on 8,1:sp_on 9,0:
38940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38950 case 5:
38960 No=8:sp_on 7,1:sp_on 8,0
38970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38980 case 8:
38990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39000 case 1:
39010 No=4:sp_on 5,1:sp_on 6,0
39020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39030 case 4:
39040 No=7:sp_on 4,1:sp_on 5,0
39050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39060 case 7:
39070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39080 end select
39090 endif
39100 '左３　ここまで
39110 '下の矢印
39120 '中央 2
39130 if ((y=1) or (key$ = chr$(31))) then
39140 select case No
39150 '9から６に下げる
39160 case 9:
39170 No=6:sp_on 11,1:sp_on 10,0
39180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39190 '6から３に下げる
39200 case 6:
39210 No=3:sp_on 12,1:sp_on 11,0
39220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39230 '3から０ｋに変える
39240 case 3:
39250 No=-1:sp_on 14,1:sp_on 12,0
39260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39270 'Okから下のボタンを押しても何もしない
39280 case -1:
39290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39300 case 8:
39310 No=5:sp_on 8,1:sp_on 7,0
39320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39330 case 5:
39340 No=2:sp_on 9,1:sp_on 8,0
39350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39360 case 2:
39370 No=0:sp_on 13,1:sp_on 9,0
39380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39390 case 0:
39400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39410 case 7:
39420 No=4:sp_on 5,1:sp_on 4,0
39430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39440 case 4:
39450 No=1:sp_on 6,1:sp_on 5,0
39460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39470 case 1:
39480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39490 end select
39500 endif
39510 '左へボタン 十字キー　左　or 　カーソル左
39520 if ((y2 = -1) or (key$ = chr$(29))) then
39530 select case No
39540 'Ok ボタン  Okから　左　０に行く
39550 case -1:
39560 No=0:sp_on 13,1:sp_on 14,0
39570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39580 '0 ボタン  左　何もしない
39590 case 0:
39600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39610 case 3:
39620 No=2:sp_on 9,1:sp_on 12,0:
39630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39640 case 2:
39650 No=1:sp_on 6,1:sp_on 9,0:
39660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39670 case 1:
39680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39690 case 6:
39700 No=5:sp_on 8,1:sp_on 11,0
39710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39720 case 5:
39730 No=4:sp_on 5,1:sp_on 8,0
39740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39750 case 4:
39760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39770 case 9:
39780 No=8:sp_on 7,1:sp_on 10,0
39790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39800 case 8:
39810 No=7:sp_on 4,1:sp_on 7,0
39820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39830 case 7:
39840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39850 end select
39860 endif
39870 '右  十字キー　右　or カーソル　右
39880 if ((y2 = 1) or (key$ = chr$(28))) then
39890 select case No
39900 '0ボタンからokボタン右に移動
39910 case 0:
39920 No=-1:sp_on 14,1:sp_on 13,0
39930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39940 '0ボタンからokボタン 右に移動　ここまで
39950 'OKボタンで右を押して何もしない
39960 case -1:
39970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39980 case 1:
39990 No=2:sp_on 9,1:sp_on 6,0
40000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40010 case 2:
40020 No=3:sp_on 12,1:sp_on 9,0
40030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40040 case 3:
40050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40060 case 4:
40070 No=5:sp_on 8,1:sp_on 5,0
40080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40090 case 5:
40100 No=6:sp_on 11,1:sp_on 8,0
40110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40120 case 7:
40130 No=8:sp_on 7,1:sp_on 4,0
40140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40150 case 8:
40160 No=9:sp_on 10,1:sp_on 7,0
40170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40180 case 9:
40190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40200 case 6:
40210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40220 end select
40230 'Okから右ボタンを押して何もしない ここまで
40240 endif
40250 '十字キー　ここまで
40260 '==============================
40270 'ここから
40280 '==============================
40290 if ((bg = 2) or (key$ = chr$(13))) then
40300 select case count
40310 case 0:
40320 count = 1
40330 if (No = -1) then
40340 count = 0:No=0
40350 buf_feMale_Born_Day(0) = No
40360 'Okボタンを押したとき
40370 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40380 else
40390 'Okボタン以外が押されたとき
40400 if (No >= 1 and No <= 2) then
40410 buf_female_year$="":buf_female_year$ = str$(No) + "***"
40420 buf_female_year = No:a= No
40430 buf_Jyoushi_Born_Day(0) = No
40440 locate 1,3
40450 color rgb(255,255,255)
40460 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40470 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40480 else
40490 count=0
40500 ui_msg"数字が範囲外になります。"
40510 buf_female_year$="":buf_female_year=0
40520 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40530 endif
40540 endif
40550 case 1:
40560 count = 2
40570 if (No = -1) then
40580 count = 1
40590 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40600 else
40610 buf_female_year = a * 10 + No
40620 b=buf_female_year
40630 buf_year$ = str$(buf_female_year) + "**"
40640 buf_Jyoushi_Born_Day(0)=buf_female_year
40650 locate 1,3
40660 color rgb(255,255,255)
40670 print "                                                                "
40680 locate 1,3
40690 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
40700 'if (No = -1) then
40710 'count=1
40720 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40730 endif
40740 case 2:
40750 count=3
40760 if (No=-1) then
40770 count =2
40780 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40790 else
40800 buf_female_year = b * 10 + No
40810 c=buf_female_year
40820 buf_female_year$ = str$(buf_female_year) + "*"
40830 buf_Jyoushi_Born_Day(0) = buf_female_year
40840 locate 1,3
40850 color rgb(255,255,255)
40860 print "                                        "
40870 locate 1,3
40880 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40890 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40900 endif
40910 case 3:
40920 count=4
40930 if (No = -1) then
40940 No=0
40950 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40960 else
40970 buf_female_year = c * 10 + No
40980 buf_female_year$ = str$(buf_female_year)
40990 buf_Jyoushi_Born_Day(0) = buf_female_year
41000 locate 1,3
41010 color RGB(255,255,255)
41020 print "                                      "
41030 locate 1,3
41040 print "女性の生まれた年代(西暦4桁):";buf_female_year$
41050 buf_female_year=val(buf_female_year$)
41060 'year=val(buf_year$)
41070 'if (No=-1) then
41080 'goto Input_Born_Month:
41090 'else
41100 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41110 endif
41120 case 4:
41130 'bufyear=buf_year
41140 if (No=-1) then
41150 buf_female_year = val(buf_female_year$)
41160 buf_Jyoushi_Born_Day(0)=buf_female_year
41170 sp_on 14,0:No=0
41180 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41190 else
41200 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41210 endif
41220 end select
41230 endif
41240 '===========================
41250 'ここまでを部下のところにコピーする.
41260 '===========================
41270 if (bg2 = 2) then
41280 select case count2
41290 case 0:
41300 if (No = -1) then
41310 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
41320 count=0
41330 locate 1,3
41340 color rgb(255,255,255)
41350 print "                                      "
41360 locate 1,3
41370 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
41380 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41390 else
41400 '(buf_year=0) then
41410 buf_female_year=0:buf_year$="****"
41420 locate 1,3
41430 print "                                       "
41440 locate 1,3
41450 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
41460 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41470 'endif
41480 endif
41490 end select
41500 endif
41510 '-------生まれた年代　女性 ここまで-------------
41520 '-------生まれた月　女性 ここまで--------------
41530 Danjyo_Aisyou_Input_feMale_Born_Month:
41540 cls 3:play "":count=0:count2=0
41550 'No=-1:Okのとき
41560 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
41570 for i=0 to 1
41580 buf_month(i)=0
41590 next i
41600 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41610 gload Gazo$ + "Screen1.png",0,0,0
41620 gload Gazo$ + "downscreen.png",0,0,800
41630 'Init"kb:4"
41640 '音声ファイル再生 2023.06.07
41650 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
41660 font 48
41670 locate 0,1
41680 '文字色：黒　 color rgb(0,0,0)
41690 '文字色:白
41700 color rgb(255,255,255)
41710 print "女性の生まれた月を入れて下さい" + chr$(13)
41720 '文字色:白
41730 color rgb(255,255,255)
41740 locate 1,3
41750 '文字色:白
41760 print "女性の生まれた月(1月~12月):"+buf_female_Month$
41770 color rgb(255,255,255)
41780 'locate 4,6:print ":7"
41790 'locate 9,6:print ":8"
41800 'locate 12,6:print ":9"
41810 locate 4,6
41820 '文字色:赤
41830 print ":7  :8  :9" + chr$(13)
41840 color rgb(255,255,255)
41850 locate 4,8
41860 print ":4  :5  :6" + chr$(13)
41870 color rgb(255,255,255)
41880 locate 4,10
41890 print ":1  :2  :3" + chr$(13)
41900 locate 4,12
41910 print "    :0"
41920 locate 12,12
41930 color rgb(0,0,255)
41940 print ":Ok"
41950 sp_on 4,0: sp_on 5,0:sp_on 6,0
41960 sp_on 7,0:sp_on 8,0:sp_on 9,0
41970 sp_on 10,0:sp_on 11,0:sp_on 12,0
41980 sp_on 13,0:sp_on 14,1
41990 '---------------------------------------------
42000 Danjyo_Aisyou_Input_feMale_Born_Month2:
42010 key$="":bg=0:y=0:y2=0:bg2=0
42020 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42030 key$ = inkey$
42040 bg = strig(1)
42050 y = stick(1)
42060 y2 = stick(0)
42070 bg2 = strig(0)
42080 pause 5
42090 wend
42100 '十字キー　ここから
42110 '上の矢印　または、十字キー上
42120 if ((y = -1) or (key$ = chr$(30))) then
42130 select case No
42140 'No=-1:okのとき:初期の状態
42150 '0kボタンから３に移動
42160 '上に行く 処理
42170 case -1:
42180 No=3:sp_on 12,1:sp_on 14,0
42190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42200 '選択肢:3
42210 '3ボタンから 6に移動
42220 case 3:
42230 No=6:sp_on 12,0:sp_on 11,1
42240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42250 '6ボタンから ９に移動
42260 case 6:
42270 No=9:sp_on 10,1:sp_on 11,0
42280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42290 '6ボタンから ９に移動　ここまで
42300 '9で上を押して何もしない
42310 case 9:
42320 '何もしない
42330 No=9
42340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42350 '9で上を押しても何もしない　ここまで
42360 '上　 0ボタンから2ボタン
42370 'sp_on 6,1:1
42380 'sp_on 8,1:5
42390 'sp_on 7,1:7
42400 case 0:
42410 No=2:sp_on 13,0:sp_on 9,1:
42420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42430 '上  0ボタンから2ボタン　ここまで
42440 '2から５になる 上
42450 case 2:
42460 No=5:sp_on 8,1:sp_on 9,0:
42470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42480 case 5:
42490 No=8:sp_on 7,1:sp_on 8,0
42500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42510 case 8:
42520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42530 case 1:
42540 No=4:sp_on 5,1:sp_on 6,0
42550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42560 case 4:
42570 No=7:sp_on 4,1:sp_on 5,0
42580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42590 case 7:
42600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42610 end select
42620 endif
42630 '左３　ここまで
42640 '下の矢印
42650 '中央 2
42660 if ((y=1) or (key$ = chr$(31))) then
42670 select case No
42680 '9から６に下げる
42690 case 9:
42700 No=6:sp_on 11,1:sp_on 10,0
42710 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
42720 '6から３に下げる
42730 case 6:
42740 No=3:sp_on 12,1:sp_on 11,0
42750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42760 '3から０ｋに変える
42770 case 3:
42780 No=-1:sp_on 14,1:sp_on 12,0
42790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42800 'Okから下のボタンを押しても何もしない
42810 case -1:
42820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42830 case 8:
42840 No=5:sp_on 8,1:sp_on 7,0
42850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42860 case 5:
42870 No=2:sp_on 9,1:sp_on 8,0
42880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42890 case 2:
42900 No=0:sp_on 13,1:sp_on 9,0
42910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42920 case 0:
42930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42940 case 7:
42950 No=4:sp_on 5,1:sp_on 4,0
42960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42970 case 4:
42980 No=1:sp_on 6,1:sp_on 5,0
42990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43000 case 1:
43010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43020 end select
43030 endif
43040 '左へボタン 十字キー　左　or 　カーソル左
43050 if ((y2 = -1) or (key$ = chr$(29))) then
43060 select case No
43070 'Ok ボタン  Okから　左　０に行く
43080 case -1:
43090 No=0:sp_on 13,1:sp_on 14,0
43100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43110 '0 ボタン  左　何もしない
43120 case 0:
43130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43140 case 3:
43150 No=2:sp_on 9,1:sp_on 12,0:
43160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43170 case 2:
43180 No=1:sp_on 6,1:sp_on 9,0:
43190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43200 case 1:
43210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43220 case 6:
43230 No=5:sp_on 8,1:sp_on 11,0
43240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43250 case 5:
43260 No=4:sp_on 5,1:sp_on 8,0
43270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43280 case 4:
43290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43300 case 9:
43310 No=8:sp_on 7,1:sp_on 10,0
43320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43330 case 8:
43340 No=7:sp_on 4,1:sp_on 7,0
43350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43360 case 7:
43370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43380 end select
43390 endif
43400 '右  十字キー　右　or カーソル　右
43410 if ((y2 = 1) or (key$ = chr$(28))) then
43420 select case No
43430 '0ボタンからokボタン右に移動
43440 case 0:
43450 No=-1:sp_on 14,1:sp_on 13,0
43460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43470 '0ボタンからokボタン 右に移動　ここまで
43480 'OKボタンで右を押して何もしない
43490 case -1:
43500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43510 case 1:
43520 No=2:sp_on 9,1:sp_on 6,0
43530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43540 case 2:
43550 No=3:sp_on 12,1:sp_on 9,0
43560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43570 case 3:
43580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43590 case 4:
43600 No=5:sp_on 8,1:sp_on 5,0
43610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43620 case 5:
43630 No=6:sp_on 11,1:sp_on 8,0
43640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43650 case 7:
43660 No=8:sp_on 7,1:sp_on 4,0
43670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43680 case 8:
43690 No=9:sp_on 10,1:sp_on 7,0
43700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43710 case 9:
43720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43730 case 6:
43740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43750 end select
43760 'Okから右ボタンを押して何もしない ここまで
43770 endif
43780 '十字キー　ここまで
43790 '右の丸ボタン + Enter key 決定キー
43800 if ((bg=2) or (key$=chr$(13))) then
43810 select case count
43820 case 0:
43830 if (No=-1) then No=0
43840 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
43850 if (buf_female_month > 1 and buf_female_month < 10)  then
43860 buf_female_Month$ = str$(buf_female_month)
43870 'buf_month=No
43880 endif
43890 if (buf_female_month = 1)  then
43900 buf_female_Month$ = str$(buf_female_month) + "*"
43910 'c=buf_month
43920 endif
43930 locate 1,3
43940 print "                                     "
43950 color RGB(255,255,255)
43960 locate 1,3
43970 print "女性の生まれた月(1月~12月):" + buf_female_Month$
43980 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43990 case 1:
44000 count = 2:
44010 'c = val(buf_Month$)
44020 if (No = -1) then
44030 'count=0
44040 No=0
44050 month=buf_female_month
44060 buf_female_month=val(buf_female_Month$)
44070 month=buf_female_month
44080 buf_Jyoushi_Born_Day(1)=month
44090 '生まれた日に飛ぶ
44100 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44110 else
44120 buf_female_month = c*10 + No
44130 'if (buf_month = 1) then
44140 'buf_Month$ = str$(buf_month)
44150 'endif
44160 buf_female_Month$ = str$(buf_female_month)
44170 buf_Jyoushi_Born_Day(1) = buf_female_month
44180 locate 0,3
44190 print "                                           "
44200 locate 1,3
44210 color Rgb(255,255,255)
44220 print "女性の生まれた月(1月~12月):" + buf_female_Month$
44230 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44240 endif
44250 case 2:
44260 '==================================
44270 '何もしない
44280 'coun = 2
44290 '==================================
44300 'c= val(buf_Month$)
44310 'buf_month = c*10 + No
44320 'buf_Month$ = str$(buf_month)
44330 'locate 2,3
44340 'print "上司の生まれた月(1月～12月):";buf_Month$
44350 'goto Jyoushi_Input_Born_Month2:
44360 'case 3:
44370 'count=4
44380 'b=val(buf_month$)
44390 'buf_month=c*10+No
44400 'buf_Month$=str$(buf_month)
44410 'locate 2,3
44420 'print "上司の生まれた月(1月～12月):";buf_Month$
44430 'buf_month=val(buf_Month$)
44440 'year=val(buf_year$)
44450 if (No=-1) then
44460 No=0
44470 goto Danjyo_Aisyou_Input_Male_Born_Day:
44480 else
44490 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44500 endif
44510 'case 4:
44520 'bufyear=buf_year
44530 'if (No=-1) then
44540 'buf_month = val(buf_Month$)
44550 'month = buf_month
44560 'sp_on 14,0
44570 'goto Input_Born_Day:
44580 'else
44590 'goto Input_Born_Month2:
44600 'endif
44610 end select
44620 endif
44630 '左の丸ボタン　キャンセル
44640 if (bg2=2) then
44650 select case count2
44660 case 0:
44670 if (No = -1) then
44680 buf_female_month=0:buf_female_Month$="**"
44690 count=0
44700 'goto rewrite2:
44710 else
44720 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
44730 buf_female_month = 0:buf_female_Month$ = "**"
44740 locate 0,3
44750 color rgb(255,255,255)
44760 print "                                       "
44770 goto rewrite2:
44780 if (No>12) then
44790 ui_msg"値が範囲外です。"
44800 goto rewrite2:
44810 endif
44820 endif
44830 endif
44840 rewrite2:
44850 locate 2,3
44860 color rgb(255,255,255)
44870 print "                                      "
44880 locate 2,3
44890 print "女性の生まれた月(1月~12月):"+buf_female_Month$
44900 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44910 end select
44920 'endif
44930 endif
44940 end
44950 '-------生まれた月　女性 ここまで-------------
44960 '-------生まれた日　女性 ここまで-------------
44970 Danjyo_Aisyou_Input_feMale_Born_Day:
44980 cls 3:play "":count=0:count2=0
44990 'No=-1:Okのとき
45000 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
45010 for i=0 to 1
45020 buf_female_day(i)=0
45030 next i
45040 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45050 gload Gazo$ + "Screen1.png",0,0,0
45060 gload Gazo$ + "downscreen.png",0,0,800
45070 'Init"kb:4"
45080 '音声ファイル再生 2023.06.07
45090 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
45100 font 48
45110 locate 0,1
45120 '文字色：黒　 color rgb(0,0,0)
45130 '文字色:白
45140 color rgb(255,255,255)
45150 print "女性の生まれた日を入れて下さい" + chr$(13)
45160 '文字色:白
45170 color rgb(255,255,255)
45180 locate 1,3
45190 '文字色:白
45200 print "女性の生まれた日(1月~31月):" + buf_female_Day$
45210 color rgb(255,255,255)
45220 'locate 4,6:print ":7"
45230 'locate 9,6:print ":8"
45240 'locate 12,6:print ":9"
45250 locate 4,6
45260 '文字色:赤
45270 print ":7  :8  :9" + chr$(13)
45280 color rgb(255,255,255)
45290 locate 4,8
45300 print ":4  :5  :6" + chr$(13)
45310 color rgb(255,255,255)
45320 locate 4,10
45330 print ":1  :2  :3" + chr$(13)
45340 locate 4,12
45350 print "    :0"
45360 locate 12,12
45370 color rgb(0,0,255)
45380 print ":Ok"
45390 sp_on 4,0: sp_on 5,0:sp_on 6,0
45400 sp_on 7,0:sp_on 8,0:sp_on 9,0
45410 sp_on 10,0:sp_on 11,0:sp_on 12,0
45420 sp_on 13,0:sp_on 14,1
45430 '---------------------------------------------
45440 Danjyo_Aisyou_Input_feMale_Born_Day2:
45450 key$="":bg=0:y=0:y2=0:bg2=0
45460 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45470 key$ = inkey$
45480 bg = strig(1)
45490 y = stick(1)
45500 y2 = stick(0)
45510 bg2 = strig(0)
45520 pause 5
45530 wend
45540 '十字キー　ここから
45550 '上の矢印　または、十字キー上
45560 if ((y = -1) or (key$ = chr$(30))) then
45570 select case No
45580 'No=-1:okのとき:初期の状態
45590 '0kボタンから３に移動
45600 '上に行く 処理
45610 case -1:
45620 No=3:sp_on 12,1:sp_on 14,0
45630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45640 '選択肢:3
45650 '3ボタンから 6に移動
45660 case 3:
45670 No=6:sp_on 12,0:sp_on 11,1
45680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45690 '6ボタンから ９に移動
45700 case 6:
45710 No=9:sp_on 10,1:sp_on 11,0
45720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45730 '6ボタンから ９に移動　ここまで
45740 '9で上を押して何もしない
45750 case 9:
45760 '何もしない
45770 No=9
45780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45790 '9で上を押しても何もしない　ここまで
45800 '上　 0ボタンから2ボタン
45810 'sp_on 6,1:1
45820 'sp_on 8,1:5
45830 'sp_on 7,1:7
45840 case 0:
45850 No=2:sp_on 13,0:sp_on 9,1:
45860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45870 '上  0ボタンから2ボタン　ここまで
45880 '2から５になる 上
45890 case 2:
45900 No=5:sp_on 8,1:sp_on 9,0:
45910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45920 case 5:
45930 No=8:sp_on 7,1:sp_on 8,0
45940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45950 case 8:
45960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45970 case 1:
45980 No=4:sp_on 5,1:sp_on 6,0
45990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46000 case 4:
46010 No=7:sp_on 4,1:sp_on 5,0
46020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46030 case 7:
46040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46050 end select
46060 endif
46070 '左３　ここまで
46080 '下の矢印
46090 '中央 2
46100 if ((y=1) or (key$ = chr$(31))) then
46110 select case No
46120 '9から６に下げる
46130 case 9:
46140 No=6:sp_on 11,1:sp_on 10,0
46150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46160 '6から３に下げる
46170 case 6:
46180 No=3:sp_on 12,1:sp_on 11,0
46190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46200 '3から０ｋに変える
46210 case 3:
46220 No=-1:sp_on 14,1:sp_on 12,0
46230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46240 'Okから下のボタンを押しても何もしない
46250 case -1:
46260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46270 case 8:
46280 No=5:sp_on 8,1:sp_on 7,0
46290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46300 case 5:
46310 No=2:sp_on 9,1:sp_on 8,0
46320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46330 case 2:
46340 No=0:sp_on 13,1:sp_on 9,0
46350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46360 case 0:
46370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46380 case 7:
46390 No=4:sp_on 5,1:sp_on 4,0
46400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46410 case 4:
46420 No=1:sp_on 6,1:sp_on 5,0
46430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46440 case 1:
46450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46460 end select
46470 endif
46480 '左へボタン 十字キー　左　or 　カーソル左
46490 if ((y2 = -1) or (key$ = chr$(29))) then
46500 select case No
46510 'Ok ボタン  Okから　左　０に行く
46520 case -1:
46530 No=0:sp_on 13,1:sp_on 14,0
46540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46550 '0 ボタン  左　何もしない
46560 case 0:
46570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46580 case 3:
46590 No=2:sp_on 9,1:sp_on 12,0:
46600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46610 case 2:
46620 No=1:sp_on 6,1:sp_on 9,0:
46630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46640 case 1:
46650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46660 case 6:
46670 No=5:sp_on 8,1:sp_on 11,0
46680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46690 case 5:
46700 No=4:sp_on 5,1:sp_on 8,0
46710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46720 case 4:
46730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46740 case 9:
46750 No=8:sp_on 7,1:sp_on 10,0
46760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46770 case 8:
46780 No=7:sp_on 4,1:sp_on 7,0
46790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46800 case 7:
46810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46820 end select
46830 endif
46840 '右  十字キー　右　or カーソル　右
46850 if ((y2 = 1) or (key$ = chr$(28))) then
46860 select case No
46870 '0ボタンからokボタン右に移動
46880 case 0:
46890 No=-1:sp_on 14,1:sp_on 13,0
46900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46910 '0ボタンからokボタン 右に移動　ここまで
46920 'OKボタンで右を押して何もしない
46930 case -1:
46940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46950 case 1:
46960 No=2:sp_on 9,1:sp_on 6,0
46970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46980 case 2:
46990 No=3:sp_on 12,1:sp_on 9,0
47000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47010 case 3:
47020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47030 case 4:
47040 No=5:sp_on 8,1:sp_on 5,0
47050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47060 case 5:
47070 No=6:sp_on 11,1:sp_on 8,0
47080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47090 case 7:
47100 No=8:sp_on 7,1:sp_on 4,0
47110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47120 case 8:
47130 No=9:sp_on 10,1:sp_on 7,0
47140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47150 case 9:
47160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47170 case 6:
47180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47190 end select
47200 'Okから右ボタンを押して何もしない ここまで
47210 endif
47220 '十字キー　ここまで
47230 '右の丸ボタン + Enter key 決定キー
47240 if ((bg=2) or (key$=chr$(13))) then
47250 select case count
47260 case 0:
47270 if (No=-1) then No=0
47280 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
47290 if (buf_female_day > 1 and buf_female_day < 10)  then
47300 buf_female_Day$ = str$(buf_female_day)
47310 'buf_month=No
47320 endif
47330 if (buf_female_day = 1)  then
47340 buf_female_Day$ = str$(buf_female_day) + "*"
47350 'c=buf_month
47360 endif
47370 locate 1,3
47380 print "                                     "
47390 color RGB(255,255,255)
47400 locate 1,3
47410 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47420 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47430 case 1:
47440 count = 2:
47450 'c = val(buf_Month$)
47460 if (No = -1) then
47470 'count=0
47480 No=0
47490 day=buf_female_day
47500 buf_female_day=val(buf_female_day$)
47510 day=bu_female_day
47520 buf_female_day(1)=day
47530 '生まれた日に飛ぶ
47540 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47550 else
47560 bu_female_day = c*10 + No
47570 'if (buf_month = 1) then
47580 'buf_Month$ = str$(buf_month)
47590 'endif
47600 buf_female_day$ = str$(buf_female_day)
47610 buf_female_day(1) = buf_female_day
47620 locate 0,3
47630 print "                                           "
47640 locate 1,3
47650 color Rgb(255,255,255)
47660 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47670 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47680 endif
47690 case 2:
47700 '==================================
47710 '何もしない
47720 'coun = 2
47730 '==================================
47740 'c= val(buf_Month$)
47750 'buf_month = c*10 + No
47760 'buf_Month$ = str$(buf_month)
47770 'locate 2,3
47780 'print "上司の生まれた月(1月～12月):";buf_Month$
47790 'goto Jyoushi_Input_Born_Month2:
47800 'case 3:
47810 'count=4
47820 'b=val(buf_month$)
47830 'buf_month=c*10+No
47840 'buf_Month$=str$(buf_month)
47850 'locate 2,3
47860 'print "上司の生まれた月(1月～12月):";buf_Month$
47870 'buf_month=val(buf_Month$)
47880 'year=val(buf_year$)
47890 if (No=-1) then
47900 No=0
47910 goto Danjyo_Aisyou_Input_Male_Born_Day:
47920 else
47930 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47940 endif
47950 'case 4:
47960 'bufyear=buf_year
47970 'if (No=-1) then
47980 'buf_month = val(buf_Month$)
47990 'month = buf_month
48000 'sp_on 14,0
48010 'goto Input_Born_Day:
48020 'else
48030 'goto Input_Born_Month2:
48040 'endif
48050 end select
48060 endif
48070 '左の丸ボタン　キャンセル
48080 if (bg2=2) then
48090 select case count2
48100 case 0:
48110 if (No = -1) then
48120 buf_female_day=0:buf_female_Day$="**"
48130 count=0
48140 'goto rewrite2:
48150 else
48160 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
48170 buf_female_day = 0:buf_female_Day$ = "**"
48180 locate 0,3
48190 color rgb(255,255,255)
48200 print "                                       "
48210 goto rewrite2:
48220 if (No>12) then
48230 ui_msg"値が範囲外です。"
48240 goto rewrite2:
48250 endif
48260 endif
48270 endif
48280 rewrite2:
48290 locate 2,3
48300 color rgb(255,255,255)
48310 print "                                      "
48320 locate 2,3
48330 print "女性の生まれた日(1月~31月):"+buf_female_Day$
48340 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48350 end select
48360 'endif
48370 endif
48380 end
48390 '-------生まれた日　女性 ここまで-------------
48400 '1.男女の相性 ここまで
48410 '2.ビジネスの相性　
48420 '1.1人目のビジネスの相性　名前入力　1人目
48430 Business_Aishou_Input_1_parson:
48440 No=0:color RGB(255,255,255)
48450 cls 3:init "kb:2"
48460 gload Gazo$ + "Screen1.png",0,0,0
48470 gload Gazo$ + "downscreen.png",0,0,800
48480 play "":color rgb(255,0,0):name$ = ""
48490 locate 0,1
48500 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
48510 color rgb(255,255,255):
48520 locate 0,3
48530 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
48540 print "入れてください" + chr$(13)
48550 locate 0,15:color rgb(0,0,0)
48560 Input "1人目の名前:",name$
48570 'color rgb(0,0,0)
48580 'locate 0,13:print "                                     "
48590 'locate 0,13:print "1人目の名前を入力してエンターキー":
48600 'buffer_name$(0):1人目の名前
48610 buffer_name$(0) = name$:
48620 goto Business_Aishou_Input_2_Parson:
48630 '2.2人目のビジネスの相性 名前入力 2人目
48640 Business_Aishou_Input_2_Parson:
48650 cls 3:init "kb:2":name$ = "":No=0
48660 gload Gazo$ + "Screen1.png",0,0,0
48670 gload Gazo$ + "downscreen.png",0,0,800
48680 color rgb(255,0,0)
48690 'Title
48700 locate 0,1
48710 print "ビジネスの相性　2人目"
48720 locate 0,3
48730 color rgb(255,255,255)
48740 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
48750 print "入れてください" + chr$(13)
48760 locate 0,15:color rgb(0,0,0)
48770 Input "2人目の名前:",name$
48780 'color rgb(0,0,0)
48790 'locate 0,15:print "                                              "
48800 'locate 0,15:print "2人目の名前を入力してエンター ":
48810 '2人目
48820 '2人目の名前を入れるに代入
48830 buffer_name$(1) = name$:
48840 goto Select_jyoushi:
48850 '3.上司の選択
48860 Select_jyoushi:
48870 cls 3:gload Gazo$ + "Screen1.png",0,0,0
48880 gload Gazo$ + "downscreen.png",0,0,800
48890 init "kb:4":No=0
48900 color rgb(0,0,255)
48910 locate 1,1
48920 print "上司の選択"
48930 color rgb(255,255,255)
48940 locate 0,4:print "名前から上司の方を選んでください"
48950 locate 0,6
48960 print " :";buffer_name$(0);"が上 司";chr$(13)
48970 locate 0,8
48980 print " :";buffer_name$(1);"が上 司";chr$(13)
48990 locate 0,15:
49000 print "                                     "
49010 locate 0,15:color rgb(0,0,0)
49020 print "上司の方を選んで右の丸ボタン"
49030 sp_on 0,1:sp_on 1,0:sp_on 2,0
49040 Select_jyoushi2:
49050 'ここでNo=0をおいてはいけない
49060 y=0:key$="":bg=0:
49070 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
49080 y = stick(1)
49090 key$ = inkey$
49100 bg = strig(1)
49110 pause 5
49120 wend
49130 '1.カーソル下の処理　or 十字キーの下処理
49140 if ((key$ = chr$(31)) or (y = 1)) then
49150 select case No
49160 case 0:
49170 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49180 case 1:
49190 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49200 end select
49210 endif
49220 '2.カーソル上処理　or 十字キーの上の処理
49230 if ((key$ = chr$(30)) or (y = -1)) then
49240 select case No
49250 case 0:
49260 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
49270 case 1:
49280 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
49290 end select
49300 endif
49310 if ((key$ = chr$(13)) or (bg = 2)) then
49320 select case No
49330 case 0:
49340 '上司(name1)を配列に代入
49350 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49360 case 1:
49370 '上司（name2)を配列に代入
49380 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49390 end select
49400 endif
49410 '3.決定ボタン　Enter or 右の丸ボタン
49420 '1.誕生日入力
49430 '1-1.生まれた年を入力
49440 'Jyoushi_born_year:
49450 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
49460 '---------------------------------------------'
49470 '誕生日入力(生れた年代)
49480 Jyoushi_Input_Seireki:
49490 'buf_Jyoushi_Born_Year:上司の生まれた年代
49500 'buf_Jyoushi_Born_Day(0) = born_year
49510 cls 3:play "":count=0:count2=0
49520 init"kb:4"
49530 'No=-1:Okのとき
49540 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
49550 for i=0 to 3
49560 buf_Jyoushi_Born_Day(i)=0
49570 next i
49580 gload Gazo$ + "Screen2.png",0,0,0
49590 gload Gazo$ + "downscreen.png",0,0,800
49600 'Init"kb:2"
49610 '音声ファイル再生 2023.06.07
49620 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
49630 font 48
49640 locate 0,1
49650 '文字色：黒　 color rgb(0,0,0)
49660 color rgb(255,255,255)
49670 print "上司の生まれた年代を入れて下さい" + chr$(13)
49680 color rgb(255,255,255)
49690 locate 1,3
49700 print "上司の生まれた年代(西暦4桁):";buf_year$
49710 color rgb(255,255,255)
49720 'locate 4,6:print ":7"
49730 'locate 9,6:print ":8"
49740 'locate 12,6:print ":9"
49750 'locate 4,6
49760 'print ":7  :8  :9" + chr$(13)
49770 'color rgb(255,255,255)
49780 'locate 4,8
49790 'print ":4  :5  :6" + chr$(13)
49800 'color rgb(255,255,255)
49810 'locate 4,10
49820 'print ":1  :2  :3" + chr$(13)
49830 'locate 4,12
49840 'print "    :0"
49850 'locate 12,12
49860 'color rgb(0,0,255)
49870 'print ":Ok"
49880 sp_on 4,0: sp_on 5,0:sp_on 6,0
49890 sp_on 7,0:sp_on 8,0:sp_on 9,0
49900 sp_on 10,0:sp_on 11,0:sp_on 12,0
49910 sp_on 13,0:sp_on 14,1
49920 Jyoushi_Input_Seireki2:
49930 key$="":bg=0:y=0:y2=0:bg2=0:
49940 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49950 key$ = inkey$
49960 bg = strig(1)
49970 y = stick(1)
49980 y2 = stick(0)
49990 bg2=strig(0)
50000 pause 5
50010 wend
50020 '十字キー　ここから
50030 '上の矢印　または、十字キー上
50040 if ((y = -1) or (key$ = chr$(30))) then
50050 select case No
50060 'No=-1:okのとき:初期の状態
50070 '0kボタンから３に移動
50080 '上に行く 処理
50090 case -1:
50100 No=3:sp_on 12,1:sp_on 14,0
50110 pause 200:goto Jyoushi_Input_Seireki2:
50120 '選択肢:3
50130 '3ボタンから 6に移動
50140 case 3:
50150 No=6:sp_on 12,0:sp_on 11,1
50160 pause 200:goto Jyoushi_Input_Seireki2:
50170 '6ボタンから ９に移動
50180 case 6:
50190 No=9:sp_on 10,1:sp_on 11,0
50200 pause 200:goto Jyoushi_Input_Seireki2:
50210 '6ボタンから ９に移動　ここまで
50220 '9で上を押して何もしない
50230 case 9:
50240 '何もしない
50250 No=9
50260 pause 200:goto Jyoushi_Input_Seireki2:
50270 '9で上を押しても何もしない　ここまで
50280 '上　 0ボタンから2ボタン
50290 'sp_on 6,1:1
50300 'sp_on 8,1:5
50310 'sp_on 7,1:7
50320 case 0:
50330 No=2:sp_on 13,0:sp_on 9,1:
50340 pause 200:goto Jyoushi_Input_Seireki2:
50350 '上  0ボタンから2ボタン　ここまで
50360 '2から５になる 上
50370 case 2:
50380 No=5:sp_on 8,1:sp_on 9,0:
50390 pause 200:goto Jyoushi_Input_Seireki2:
50400 case 5:
50410 No=8:sp_on 7,1:sp_on 8,0
50420 pause 200:goto Jyoushi_Input_Seireki2:
50430 case 8:
50440 pause 200:goto Jyoushi_Input_Seireki2:
50450 case 1:
50460 No=4:sp_on 5,1:sp_on 6,0
50470 pause 200:goto Jyoushi_Input_Seireki2:
50480 case 4:
50490 No=7:sp_on 4,1:sp_on 5,0
50500 pause 200:goto Jyoushi_Input_Seireki2:
50510 case 7:
50520 pause 200:goto Jyoushi_Input_Seireki2:
50530 end select
50540 endif
50550 '左３　ここまで
50560 '下の矢印
50570 '中央 2
50580 if ((y=1) or (key$ = chr$(31))) then
50590 select case No
50600 '9から６に下げる
50610 case 9:
50620 No=6:sp_on 11,1:sp_on 10,0
50630 pause 200:goto Jyoushi_Input_Seireki2:
50640 '6から３に下げる
50650 case 6:
50660 No=3:sp_on 12,1:sp_on 11,0
50670 pause 200:goto Jyoushi_Input_Seireki2:
50680 '3から０ｋに変える
50690 case 3:
50700 No=-1:sp_on 14,1:sp_on 12,0
50710 pause 200:goto Jyoushi_Input_Seireki2:
50720 'Okから下のボタンを押しても何もしない
50730 case -1:
50740 pause 200:goto Jyoushi_Input_Seireki2:
50750 case 8:
50760 No=5:sp_on 8,1:sp_on 7,0
50770 pause 200:goto Jyoushi_Input_Seireki2:
50780 case 5:
50790 No=2:sp_on 9,1:sp_on 8,0
50800 pause 200:goto Jyoushi_Input_Seireki2:
50810 case 2:
50820 No=0:sp_on 13,1:sp_on 9,0
50830 pause 200:goto Jyoushi_Input_Seireki2:
50840 case 0:
50850 pause 200:goto Jyoushi_Input_Seireki2:
50860 case 7:
50870 No=4:sp_on 5,1:sp_on 4,0
50880 pause 200:goto Jyoushi_Input_Seireki2:
50890 case 4:
50900 No=1:sp_on 6,1:sp_on 5,0
50910 pause 200:goto Jyoushi_Input_Seireki2:
50920 case 1:
50930 pause 200:goto Jyoushi_Input_Seireki2:
50940 end select
50950 endif
50960 '左へボタン 十字キー　左　or 　カーソル左
50970 if ((y2 = -1) or (key$ = chr$(29))) then
50980 select case No
50990 'Ok ボタン  Okから　左　０に行く
51000 case -1:
51010 No=0:sp_on 13,1:sp_on 14,0
51020 pause 200:goto Jyoushi_Input_Seireki2:
51030 '0 ボタン  左　何もしない
51040 case 0:
51050 pause 200:goto Jyoushi_Input_Seireki2:
51060 case 3:
51070 No=2:sp_on 9,1:sp_on 12,0:
51080 pause 200:goto Jyoushi_Input_Seireki2:
51090 case 2:
51100 No=1:sp_on 6,1:sp_on 9,0:
51110 pause 200:goto Jyoushi_Input_Seireki2:
51120 case 1:
51130 pause 200:goto Jyoushi_Input_Seireki2:
51140 case 6:
51150 No=5:sp_on 8,1:sp_on 11,0
51160 pause 200:goto Jyoushi_Input_Seireki2:
51170 case 5:
51180 No=4:sp_on 5,1:sp_on 8,0
51190 pause 200:goto Jyoushi_Input_Seireki2:
51200 case 4:
51210 pause 200:goto Jyoushi_Input_Seireki2:
51220 case 9:
51230 No=8:sp_on 7,1:sp_on 10,0
51240 pause 200:goto Jyoushi_Input_Seireki2:
51250 case 8:
51260 No=7:sp_on 4,1:sp_on 7,0
51270 pause 200:goto Jyoushi_Input_Seireki2:
51280 case 7:
51290 pause 200:goto Jyoushi_Input_Seireki2:
51300 end select
51310 endif
51320 '右  十字キー　右　or カーソル　右
51330 if ((y2 = 1) or (key$ = chr$(28))) then
51340 select case No
51350 '0ボタンからokボタン右に移動
51360 case 0:
51370 No=-1:sp_on 14,1:sp_on 13,0
51380 pause 200:goto Jyoushi_Input_Seireki2:
51390 '0ボタンからokボタン 右に移動　ここまで
51400 'OKボタンで右を押して何もしない
51410 case -1:
51420 pause 200:goto Jyoushi_Input_Seireki2:
51430 case 1:
51440 No=2:sp_on 9,1:sp_on 6,0
51450 pause 200:goto Jyoushi_Input_Seireki2:
51460 case 2:
51470 No=3:sp_on 12,1:sp_on 9,0
51480 pause 200:goto Jyoushi_Input_Seireki2:
51490 case 3:
51500 pause 200:goto Jyoushi_Input_Seireki2:
51510 case 4:
51520 No=5:sp_on 8,1:sp_on 5,0
51530 pause 200:goto Jyoushi_Input_Seireki2:
51540 case 5:
51550 No=6:sp_on 11,1:sp_on 8,0
51560 pause 200:goto Jyoushi_Input_Seireki2:
51570 case 7:
51580 No=8:sp_on 7,1:sp_on 4,0
51590 pause 200:goto Jyoushi_Input_Seireki2:
51600 case 8:
51610 No=9:sp_on 10,1:sp_on 7,0
51620 pause 200:goto Jyoushi_Input_Seireki2:
51630 case 9:
51640 pause 200:goto Jyoushi_Input_Seireki2:
51650 case 6:
51660 pause 200:goto Jyoushi_Input_Seireki2:
51670 end select
51680 'Okから右ボタンを押して何もしない ここまで
51690 endif
51700 '十字キー　ここまで
51710 '==============================
51720 'ここから
51730 '==============================
51740 if ((bg = 2) or (key$ = chr$(13))) then
51750 select case count
51760 case 0:
51770 count = 1
51780 if (No = -1) then
51790 count = 0:No=0
51800 buf_Jyoushi_Born_Day(0) = No
51810 'Okボタンを押したとき
51820 goto Jyoushi_Input_Seireki2:
51830 else
51840 'Okボタン以外が押されたとき
51850 if (No >= 1 and No <= 2) then
51860 buf_year$="":buf_year$ = str$(No) + "***"
51870 buf_year = No:a= No
51880 buf_Jyoushi_Born_Day(0) = No
51890 locate 1,3
51900 color rgb(255,255,255)
51910 print "上司の生まれた年代(西暦4桁):";buf_year$
51920 goto Jyoushi_Input_Seireki2:
51930 else
51940 count=0
51950 ui_msg"数字が範囲外になります。"
51960 buf_year$="":buf_year=0
51970 goto Jyoushi_Input_Seireki2:
51980 endif
51990 endif
52000 case 1:
52010 count = 2
52020 if (No = -1) then
52030 count = 1
52040 goto Jyoushi_Input_Seireki2:
52050 else
52060 buf_year = a * 10 + No
52070 b=buf_year
52080 buf_year$ = str$(buf_year) + "**"
52090 buf_Jyoushi_Born_Day(0)=buf_year
52100 locate 1,3
52110 color rgb(255,255,255)
52120 print "                                                                "
52130 locate 1,3
52140 print "上司の生まれた年代(西暦4桁):" + buf_year$
52150 'if (No = -1) then
52160 'count=1
52170 goto Jyoushi_Input_Seireki2:
52180 endif
52190 case 2:
52200 count=3
52210 if (No=-1) then
52220 count =2
52230 goto Jyoushi_Input_Seireki2:
52240 else
52250 buf_year = b * 10 + No
52260 c=buf_year
52270 buf_year$ = str$(buf_year) + "*"
52280 buf_Jyoushi_Born_Day(0) = buf_year
52290 locate 1,3
52300 color rgb(255,255,255)
52310 print "                                        "
52320 locate 1,3
52330 print "上司の生まれた年代(西暦4桁):";buf_year$
52340 goto Jyoushi_Input_Seireki2:
52350 endif
52360 case 3:
52370 count=4
52380 if (No = -1) then
52390 No=0
52400 goto Jyoushi_Input_Seireki2:
52410 else
52420 buf_year = c * 10 + No
52430 buf_year$ = str$(buf_year)
52440 buf_Jyoushi_Born_Day(0) = buf_year
52450 locate 1,3
52460 color RGB(255,255,255)
52470 print "                                      "
52480 locate 1,3
52490 print "上司の生まれた年代(西暦4桁):";buf_year$
52500 buf_year=val(buf_year$)
52510 'year=val(buf_year$)
52520 'if (No=-1) then
52530 'goto Input_Born_Month:
52540 'else
52550 goto Jyoushi_Input_Seireki2:
52560 endif
52570 case 4:
52580 'bufyear=buf_year
52590 if (No=-1) then
52600 buf_year = val(buf_year$)
52610 buf_Jyoushi_Born_Day(0)=buf_year
52620 sp_on 14,0:No=0
52630 goto Jyoushi_Input_Born_Month:
52640 else
52650 goto Jyoushi_Input_Seireki2:
52660 endif
52670 end select
52680 endif
52690 '===========================
52700 'ここまでを部下のところにコピーする.
52710 '===========================
52720 if (bg2 = 2) then
52730 select case count2
52740 case 0:
52750 if (No = -1) then
52760 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
52770 count=0
52780 locate 1,3
52790 color rgb(255,255,255)
52800 print "                                      "
52810 locate 1,3
52820 print "上司の生まれた年代（西暦4桁):" + buf_year$
52830 goto Jyoushi_Input_Seireki2:
52840 else
52850 '(buf_year=0) then
52860 buf_year=0:buf_year$="****"
52870 locate 1,3
52880 print "                                       "
52890 locate 1,3
52900 print "上司の生まれた年代(西暦4桁):"+buf_year$
52910 goto Jyoushi_Input_Seireki2:
52920 'endif
52930 endif
52940 end select
52950 endif
52960 'Input"上司の生れた年代(4桁,〜2025年):",year
52970 'if year > 2025 then goto Jyoushi_Input_Seireki:
52980 'if year = 123 then cls 3:cls 4:goto Main_Screen:
52990 '"4桁目"
53000 'bufyear4 = fix(year / 1000)
53010 '"3桁目"
53020 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
53030 '"2桁目"
53040 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
53050 '"1桁目"
53060 'bufyear1 = fix((year - ((bufyear4*
53070 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
53080 '2.生まれた月を入力
53090 Jyoushi_Input_Born_Month:
53100 cls 3:play "":count=0:count2=0
53110 'No=-1:Okのとき
53120 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
53130 for i=0 to 1
53140 buf_month(i)=0
53150 next i
53160 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53170 gload Gazo$ + "Screen2.png",0,0,0
53180 gload Gazo$ + "downscreen.png",0,0,800
53190 'Init"kb:4"
53200 '音声ファイル再生 2023.06.07
53210 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53220 font 48
53230 locate 0,1
53240 '文字色：黒　 color rgb(0,0,0)
53250 '文字色:白
53260 color rgb(255,255,255)
53270 print "上司の生まれた月を入れて下さい" + chr$(13)
53280 '文字色:白
53290 color rgb(255,255,255)
53300 locate 1,3
53310 '文字色:白
53320 print "上司の生まれた月(1月~12月):"+buf_Month$
53330 color rgb(255,255,255)
53340 'locate 4,6:print ":7"
53350 'locate 9,6:print ":8"
53360 'locate 12,6:print ":9"
53370 'locate 4,6
53380 '文字色:赤
53390 'print ":7  :8  :9" + chr$(13)
53400 'color rgb(255,255,255)
53410 'locate 4,8
53420 'print ":4  :5  :6" + chr$(13)
53430 'color rgb(255,255,255)
53440 'locate 4,10
53450 'print ":1  :2  :3" + chr$(13)
53460 'locate 4,12
53470 'print "    :0"
53480 'locate 12,12
53490 'color rgb(0,0,255)
53500 'print ":Ok"
53510 sp_on 4,0: sp_on 5,0:sp_on 6,0
53520 sp_on 7,0:sp_on 8,0:sp_on 9,0
53530 sp_on 10,0:sp_on 11,0:sp_on 12,0
53540 sp_on 13,0:sp_on 14,1
53550 Jyoushi_Input_Born_Month2:
53560 key$="":bg=0:y=0:y2=0:bg2=0
53570 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53580 key$ = inkey$
53590 bg = strig(1)
53600 y = stick(1)
53610 y2 = stick(0)
53620 bg2 = strig(0)
53630 pause 5
53640 wend
53650 '十字キー　ここから
53660 '上の矢印　または、十字キー上
53670 if ((y = -1) or (key$ = chr$(30))) then
53680 select case No
53690 'No=-1:okのとき:初期の状態
53700 '0kボタンから３に移動
53710 '上に行く 処理
53720 case -1:
53730 No=3:sp_on 12,1:sp_on 14,0
53740 pause 200:goto Jyoushi_Input_Born_Month2:
53750 '選択肢:3
53760 '3ボタンから 6に移動
53770 case 3:
53780 No=6:sp_on 12,0:sp_on 11,1
53790 pause 200:goto Jyoushi_Input_Born_Month2:
53800 '6ボタンから ９に移動
53810 case 6:
53820 No=9:sp_on 10,1:sp_on 11,0
53830 pause 200:goto Jyoushi_Input_Born_Month2:
53840 '6ボタンから ９に移動　ここまで
53850 '9で上を押して何もしない
53860 case 9:
53870 '何もしない
53880 No=9
53890 pause 200:goto Jyoushi_Input_Born_Month2:
53900 '9で上を押しても何もしない　ここまで
53910 '上　 0ボタンから2ボタン
53920 'sp_on 6,1:1
53930 'sp_on 8,1:5
53940 'sp_on 7,1:7
53950 case 0:
53960 No=2:sp_on 13,0:sp_on 9,1:
53970 pause 200:goto Jyoushi_Input_Born_Month2:
53980 '上  0ボタンから2ボタン　ここまで
53990 '2から５になる 上
54000 case 2:
54010 No=5:sp_on 8,1:sp_on 9,0:
54020 pause 200:goto Jyoushi_Input_Born_Month2:
54030 case 5:
54040 No=8:sp_on 7,1:sp_on 8,0
54050 pause 200:goto Jyoushi_Input_Born_Month2:
54060 case 8:
54070 pause 200:goto Input_Born_Month2:
54080 case 1:
54090 No=4:sp_on 5,1:sp_on 6,0
54100 pause 200:goto Jyoushi_Input_Born_Month2:
54110 case 4:
54120 No=7:sp_on 4,1:sp_on 5,0
54130 pause 200:goto Jyoushi_Input_Born_Month2:
54140 case 7:
54150 pause 200:goto Input_Born_Month2:
54160 end select
54170 endif
54180 '左３　ここまで
54190 '下の矢印
54200 '中央 2
54210 if ((y=1) or (key$ = chr$(31))) then
54220 select case No
54230 '9から６に下げる
54240 case 9:
54250 No=6:sp_on 11,1:sp_on 10,0
54260 pause 200:goto Jyoushi_Input_Born_Month2:
54270 '6から３に下げる
54280 case 6:
54290 No=3:sp_on 12,1:sp_on 11,0
54300 pause 200:goto Jyoushi_Input_Born_Month2:
54310 '3から０ｋに変える
54320 case 3:
54330 No=-1:sp_on 14,1:sp_on 12,0
54340 pause 200:goto Jyoushi_Input_Born_Month2:
54350 'Okから下のボタンを押しても何もしない
54360 case -1:
54370 pause 200:goto Jyoushi_Input_Born_Month2:
54380 case 8:
54390 No=5:sp_on 8,1:sp_on 7,0
54400 pause 200:goto Jyoushi_Input_Born_Month2:
54410 case 5:
54420 No=2:sp_on 9,1:sp_on 8,0
54430 pause 200:goto Jyoushi_Input_Born_Month2:
54440 case 2:
54450 No=0:sp_on 13,1:sp_on 9,0
54460 pause 200:goto Jyoushi_Input_Born_Month2:
54470 case 0:
54480 pause 200:goto Jyoushi_Input_Born_Month2:
54490 case 7:
54500 No=4:sp_on 5,1:sp_on 4,0
54510 pause 200:goto Jyoushi_Input_Born_Month2:
54520 case 4:
54530 No=1:sp_on 6,1:sp_on 5,0
54540 pause 200:goto Jyoushi_Input_Born_Month2:
54550 case 1:
54560 pause 200:goto Jyoushi_Input_Born_Month2:
54570 end select
54580 endif
54590 '左へボタン 十字キー　左　or 　カーソル左
54600 if ((y2 = -1) or (key$ = chr$(29))) then
54610 select case No
54620 'Ok ボタン  Okから　左　０に行く
54630 case -1:
54640 No=0:sp_on 13,1:sp_on 14,0
54650 pause 200:goto Jyoushi_Input_Born_Month2:
54660 '0 ボタン  左　何もしない
54670 case 0:
54680 pause 200:goto Jyoushi_Input_Born_Month2:
54690 case 3:
54700 No=2:sp_on 9,1:sp_on 12,0:
54710 pause 200:goto Jyoushi_Input_Born_Month2:
54720 case 2:
54730 No=1:sp_on 6,1:sp_on 9,0:
54740 pause 200:goto Jyoushi_Input_Born_Month2:
54750 case 1:
54760 pause 200:goto Jyoushi_Input_Born_Month2:
54770 case 6:
54780 No=5:sp_on 8,1:sp_on 11,0
54790 pause 200:goto Jyoushi_Input_Born_Month2:
54800 case 5:
54810 No=4:sp_on 5,1:sp_on 8,0
54820 pause 200:goto Jyoushi_Input_Born_Month2:
54830 case 4:
54840 pause 200:goto Jyoushi_Input_Born_Month2:
54850 case 9:
54860 No=8:sp_on 7,1:sp_on 10,0
54870 pause 200:goto Input_Born_Month2:
54880 case 8:
54890 No=7:sp_on 4,1:sp_on 7,0
54900 pause 200:goto Jyoushi_Input_Born_Month2:
54910 case 7:
54920 pause 200:goto Jyoushi_Input_Born_Month2:
54930 end select
54940 endif
54950 '右  十字キー　右　or カーソル　右
54960 if ((y2 = 1) or (key$ = chr$(28))) then
54970 select case No
54980 '0ボタンからokボタン右に移動
54990 case 0:
55000 No=-1:sp_on 14,1:sp_on 13,0
55010 pause 200:goto Jyoushi_Input_Born_Month2:
55020 '0ボタンからokボタン 右に移動　ここまで
55030 'OKボタンで右を押して何もしない
55040 case -1:
55050 pause 200:goto Jyoushi_Input_Born_Month2:
55060 case 1:
55070 No=2:sp_on 9,1:sp_on 6,0
55080 pause 200:goto Jyoushi_Input_Born_Month2:
55090 case 2:
55100 No=3:sp_on 12,1:sp_on 9,0
55110 pause 200:goto Jyoushi_Input_Born_Month2:
55120 case 3:
55130 pause 200:goto Jyoushi_Input_Born_Month2:
55140 case 4:
55150 No=5:sp_on 8,1:sp_on 5,0
55160 pause 200:goto Jyoushi_Input_Born_Month2:
55170 case 5:
55180 No=6:sp_on 11,1:sp_on 8,0
55190 pause 200:goto Jyoushi_Input_Born_Month2:
55200 case 7:
55210 No=8:sp_on 7,1:sp_on 4,0
55220 pause 200:goto Jyoushi_Input_Born_Month2:
55230 case 8:
55240 No=9:sp_on 10,1:sp_on 7,0
55250 pause 200:goto Jyoushi_Input_Born_Month2:
55260 case 9:
55270 pause 200:goto Jyoushi_Input_Born_Month2:
55280 case 6:
55290 pause 200:goto Jyoushi_Input_Born_Month2:
55300 end select
55310 'Okから右ボタンを押して何もしない ここまで
55320 endif
55330 '十字キー　ここまで
55340 '右の丸ボタン + Enter key 決定キー
55350 if ((bg=2) or (key$=chr$(13))) then
55360 select case count
55370 case 0:
55380 if (No=-1) then No=0
55390 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
55400 if (buf_month > 1 and buf_month < 10)  then
55410 buf_Month$ = str$(buf_month)
55420 'buf_month=No
55430 endif
55440 if (buf_month = 1)  then
55450 buf_Month$ = str$(buf_month) + "*"
55460 'c=buf_month
55470 endif
55480 locate 1,3
55490 print "                                     "
55500 color RGB(255,255,255)
55510 locate 1,3
55520 print "上司の生まれた月(1月~12月):" + buf_Month$
55530 goto Jyoushi_Input_Born_Month2:
55540 case 1:
55550 count = 2:
55560 'c = val(buf_Month$)
55570 if (No = -1) then
55580 'count=0
55590 No=0
55600 month=buf_month
55610 buf_month=val(buf_Month$)
55620 month=buf_month
55630 buf_Jyoushi_Born_Day(1)=month
55640 '生まれた日に飛ぶ
55650 goto Jyoushi_Input_Born_Day:
55660 else
55670 buf_month = c*10 + No
55680 'if (buf_month = 1) then
55690 'buf_Month$ = str$(buf_month)
55700 'endif
55710 buf_Month$ = str$(buf_month)
55720 buf_Jyoushi_Born_Day(1) = buf_month
55730 locate 0,3
55740 print "                                           "
55750 locate 1,3
55760 color Rgb(255,255,255)
55770 print "上司の生まれた月(1月~12月):" + buf_Month$
55780 goto Jyoushi_Input_Born_Month2:
55790 endif
55800 case 2:
55810 '==================================
55820 '何もしない
55830 'coun = 2
55840 '==================================
55850 'c= val(buf_Month$)
55860 'buf_month = c*10 + No
55870 'buf_Month$ = str$(buf_month)
55880 'locate 2,3
55890 'print "上司の生まれた月(1月～12月):";buf_Month$
55900 'goto Jyoushi_Input_Born_Month2:
55910 'case 3:
55920 'count=4
55930 'b=val(buf_month$)
55940 'buf_month=c*10+No
55950 'buf_Month$=str$(buf_month)
55960 'locate 2,3
55970 'print "上司の生まれた月(1月～12月):";buf_Month$
55980 'buf_month=val(buf_Month$)
55990 'year=val(buf_year$)
56000 if (No=-1) then
56010 No=0
56020 goto Jyoushi_Input_Born_Day:
56030 else
56040 goto Jyoushi_Input_Born_Month2:
56050 endif
56060 'case 4:
56070 'bufyear=buf_year
56080 'if (No=-1) then
56090 'buf_month = val(buf_Month$)
56100 'month = buf_month
56110 'sp_on 14,0
56120 'goto Input_Born_Day:
56130 'else
56140 'goto Input_Born_Month2:
56150 'endif
56160 end select
56170 endif
56180 '左の丸ボタン　キャンセル
56190 if (bg2=2) then
56200 select case count2
56210 case 0:
56220 if (No = -1) then
56230 buf_month=0:buf_Month$="**"
56240 count=0
56250 'goto rewrite2:
56260 else
56270 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
56280 buf_month = 0:buf_Month$ = "**"
56290 locate 0,3
56300 color rgb(255,255,255)
56310 print "                                       "
56320 goto rewrite2:
56330 if (No>12) then
56340 ui_msg"値が範囲外です。"
56350 goto rewrite2:
56360 endif
56370 endif
56380 endif
56390 rewrite2:
56400 locate 2,3
56410 color rgb(255,255,255)
56420 print "                                      "
56430 locate 2,3
56440 print "上司の生まれた月(1月~12月):"+buf_Month$
56450 goto Jyoushi_Input_Born_Month2:
56460 end select
56470 'endif
56480 endif
56490 end
56500 'end
56510 '生れた日を入力
56520 Jyoushi_Input_Born_Day:
56530 '生まれた日入力
56540 cls 3:play ""
56550 'No=-1:Okのとき
56560 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
56570 for i=0 to 1
56580 buf_day(i)=0
56590 next i
56600 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56610 gload Gazo$ + "Screen2.png",0,0,0
56620 gload Gazo$ + "downscreen.png",0,0,800
56630 'Init"kb:2"
56640 '音声ファイル再生 2023.06.07
56650 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
56660 font 48
56670 locate 1,1
56680 '文字色：黒　 color rgb(0,0,0)
56690 color rgb(255,255,255)
56700 print "上司の生まれた日を入れて下さい" + chr$(13)
56710 locate 1,3
56720 color rgb(255,255,255)
56730 print "                                      "
56740 locate 1,3
56750 print "上司の生まれた日(1日~31日):"+buf_Day$
56760 color rgb(255,255,255)
56770 'locate 4,6:print ":7"
56780 'locate 9,6:print ":8"
56790 'locate 12,6:print ":9"
56800 'locate 4,6
56810 'print ":7  :8  :9" + chr$(13)
56820 'color rgb(255,255,255)
56830 'locate 4,8
56840 'print ":4  :5  :6" + chr$(13)
56850 'color rgb(255,255,255)
56860 'locate 4,10
56870 'print ":1  :2  :3" + chr$(13)
56880 'locate 4,12
56890 'print "    :0"
56900 'locate 12,12
56910 'color rgb(0,0,255)
56920 'print ":Ok"
56930 sp_on 4,0: sp_on 5,0:sp_on 6,0
56940 sp_on 7,0:sp_on 8,0:sp_on 9,0
56950 sp_on 10,0:sp_on 11,0:sp_on 12,0
56960 sp_on 13,0:sp_on 14,1
56970 Jyoushi_Input_Born_Day2:
56980 key$="":bg=0:y=0:y2=0:bg2=0:
56990 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
57000 key$ = inkey$
57010 bg = strig(1)
57020 y = stick(1)
57030 y2 = stick(0)
57040 bg2 = strig(0)
57050 pause 5
57060 wend
57070 '十字キー　ここから
57080 '上の矢印　または、十字キー上
57090 if ((y = -1) or (key$ = chr$(30))) then
57100 select case No
57110 'No=-1:okのとき:初期の状態
57120 '0kボタンから３に移動
57130 '上に行く 処理
57140 case -1:
57150 No=3:sp_on 12,1:sp_on 14,0
57160 pause 200:goto Jyoushi_Input_Born_Day2:
57170 '選択肢:3
57180 '3ボタンから 6に移動
57190 case 3:
57200 No=6:sp_on 12,0:sp_on 11,1
57210 pause 200:goto Jyoushi_Input_Born_Day2:
57220 '6ボタンから ９に移動
57230 case 6:
57240 No=9:sp_on 10,1:sp_on 11,0
57250 pause 200:goto Jyoushi_Input_Born_Day2:
57260 '6ボタンから ９に移動　ここまで
57270 '9で上を押して何もしない
57280 case 9:
57290 '何もしない
57300 No=9
57310 pause 200:goto Jyoushi_Input_Born_Day2:
57320 '9で上を押しても何もしない　ここまで
57330 '上　 0ボタンから2ボタン
57340 'sp_on 6,1:1
57350 'sp_on 8,1:5
57360 'sp_on 7,1:7
57370 case 0:
57380 No=2:sp_on 13,0:sp_on 9,1:
57390 pause 200:goto Jyoushi_Input_Born_Day2:
57400 '上  0ボタンから2ボタン　ここまで
57410 '2から５になる 上
57420 case 2:
57430 No=5:sp_on 8,1:sp_on 9,0:
57440 pause 200:goto Jyoushi_Input_Born_Day2:
57450 case 5:
57460 No=8:sp_on 7,1:sp_on 8,0
57470 pause 200:goto Jyoushi_Input_Born_Day2:
57480 case 8:
57490 pause 200:goto Jyoushi_Input_Born_Day2:
57500 case 1:
57510 No=4:sp_on 5,1:sp_on 6,0
57520 pause 200:goto Jyoushi_Input_Born_Day2:
57530 case 4:
57540 No=7:sp_on 4,1:sp_on 5,0
57550 pause 200:goto Jyoushi_Input_Born_Day2:
57560 case 7:
57570 pause 200:goto Jyoushi_Input_Born_Day2:
57580 end select
57590 endif
57600 '左３　ここまで
57610 '下の矢印
57620 '中央 2
57630 if ((y=1) or (key$ = chr$(31))) then
57640 select case No
57650 '9から６に下げる
57660 case 9:
57670 No=6:sp_on 11,1:sp_on 10,0
57680 pause 200:goto Jyoushi_Input_Born_Day2:
57690 '6から３に下げる
57700 case 6:
57710 No=3:sp_on 12,1:sp_on 11,0
57720 pause 200:goto Jyoushi_Input_Born_Day2:
57730 '3から０ｋに変える
57740 case 3:
57750 No=-1:sp_on 14,1:sp_on 12,0
57760 pause 200:goto Jyoushi_Input_Born_Day2:
57770 'Okから下のボタンを押しても何もしない
57780 case -1:
57790 pause 200:goto Jyoushi_Input_Born_Day2:
57800 case 8:
57810 No=5:sp_on 8,1:sp_on 7,0
57820 pause 200:goto Jyoushi_Input_Born_Day2:
57830 case 5:
57840 No=2:sp_on 9,1:sp_on 8,0
57850 pause 200:goto Jyoushi_Input_Born_Day2:
57860 case 2:
57870 No=0:sp_on 13,1:sp_on 9,0
57880 pause 200:goto Jyoushi_Input_Born_Day2:
57890 case 0:
57900 pause 200:goto Jyoushi_Input_Born_Day2:
57910 case 7:
57920 No=4:sp_on 5,1:sp_on 4,0
57930 pause 200:goto Jyoushi_Input_Born_Day2:
57940 case 4:
57950 No=1:sp_on 6,1:sp_on 5,0
57960 pause 200:goto Jyoushi_Input_Born_Day2:
57970 case 1:
57980 pause 200:goto Jyoushi_Input_Born_Day2:
57990 end select
58000 endif
58010 '左へボタン 十字キー　左　or 　カーソル左
58020 if ((y2 = -1) or (key$ = chr$(29))) then
58030 select case No
58040 'Ok ボタン  Okから　左　０に行く
58050 case -1:
58060 No=0:sp_on 13,1:sp_on 14,0
58070 pause 200:goto Jyoushi_Input_Born_Day2:
58080 '0 ボタン  左　何もしない
58090 case 0:
58100 pause 200:goto Jyoushi_Input_Born_Day2:
58110 case 3:
58120 No=2:sp_on 9,1:sp_on 12,0:
58130 pause 200:goto Jyoushi_Input_Born_Day2:
58140 case 2:
58150 No=1:sp_on 6,1:sp_on 9,0:
58160 pause 200:goto Jyoushi_Input_Born_Day2:
58170 case 1:
58180 pause 200:goto Jyoushi_Input_Born_Day2:
58190 case 6:
58200 No=5:sp_on 8,1:sp_on 11,0
58210 pause 200:goto Jyoushi_Input_Born_Day2:
58220 case 5:
58230 No=4:sp_on 5,1:sp_on 8,0
58240 pause 200:goto Jyoushi_Input_Born_Day2:
58250 case 4:
58260 pause 200:goto Jyoushi_Input_Born_Day2:
58270 case 9:
58280 No=8:sp_on 7,1:sp_on 10,0
58290 pause 200:goto Jyoushi_Input_Born_Day2:
58300 case 8:
58310 No=7:sp_on 4,1:sp_on 7,0
58320 pause 200:goto Jyoushi_Input_Born_Day2:
58330 case 7:
58340 pause 200:goto Jyoushi_Input_Born_Day2:
58350 end select
58360 endif
58370 '右  十字キー　右　or カーソル　右
58380 if ((y2 = 1) or (key$ = chr$(28))) then
58390 select case No
58400 '0ボタンからokボタン右に移動
58410 case 0:
58420 No=-1:sp_on 14,1:sp_on 13,0
58430 pause 200:goto Jyoushi_Input_Born_Day2:
58440 '0ボタンからokボタン 右に移動　ここまで
58450 'OKボタンで右を押して何もしない
58460 case -1:
58470 pause 200:goto Jyoushi_Input_Born_Day2:
58480 case 1:
58490 No=2:sp_on 9,1:sp_on 6,0
58500 pause 200:goto Jyoushi_Input_Born_Day2:
58510 case 2:
58520 No=3:sp_on 12,1:sp_on 9,0
58530 pause 200:goto Jyoushi_Input_Born_Day2:
58540 case 3:
58550 pause 200:goto Jyoushi_Input_Born_Day2:
58560 case 4:
58570 No=5:sp_on 8,1:sp_on 5,0
58580 pause 200:goto Jyoushi_Input_Born_Day2:
58590 case 5:
58600 No=6:sp_on 11,1:sp_on 8,0
58610 pause 200:goto Jyoushi_Input_Born_Day2:
58620 case 7:
58630 No=8:sp_on 7,1:sp_on 4,0
58640 pause 200:goto Jyoushi_Input_Born_Day2:
58650 case 8:
58660 No=9:sp_on 10,1:sp_on 7,0
58670 pause 200:goto Jyoushi_Input_Born_Day2:
58680 case 9:
58690 pause 200:goto Jyoushi_Input_Born_Day2:
58700 case 6:
58710 pause 200:goto Jyoushi_Input_Born_Day2:
58720 end select
58730 'Okから右ボタンを押して何もしない ここまで
58740 endif
58750 '十字キー　ここまで
58760 '右の丸ボタンを押したとき
58770 if ((bg = 2) or (key$ = chr$(13))) then
58780 'count :決定ボタンを押した回数
58790 select case (count)
58800 '1桁目入力
58810 case 0:
58820 count = 1:
58830 if (No = -1) then
58840 '1桁目　OKでは何もしない
58850 No=c
58860 'goto Jyoushi_Input_Born_Day2:
58870 else
58880 'ok以外のボタンを押したとき
58890 buf_day = No:buf_Day$ = str$(No)
58900 buf_Jyoushi_Born_Day(2)=buf_day
58910 c=No
58920 locate 1,3
58930 print "                                      "
58940 color RGB(255,255,255)
58950 locate 1,3
58960 print "上司の生まれた日(1日~31日):" + buf_Day$
58970 endif
58980 'check2:
58990 'if (buf_day >= 1 and buf_day <= 9) then
59000 'sp_on 14,0
59010 'goto complate_jyoushi:
59020 'else
59030 'sp_on 14,0
59040 goto Jyoushi_Input_Born_Day2:
59050 'end
59060 'endif
59070 case 1:
59080 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
59090 count = 2:
59100 'locate 2,3
59110 'color RGB(255,255,255)
59120 'print "生まれた日(1日~31日):";buf_Day$
59130 'Okボタンを押したときの処理
59140 '入力値　10未満のとき
59150 'buf_day = c * 10 + No
59160 if (No = -1) then
59170 c=buf_day:No=0
59180 'buf_day = c
59190 buf_Day$ = str$(buf_day)
59200 '10以下のとき
59210 'if (buf_day < 10) then
59220 sp_on 14,0
59230 goto complate_jyoushi:
59240 'end
59250 'endif
59260 else
59270 'c=No
59280 buf_day = c * 10 + No
59290 buf_Day$ = str$(buf_day)
59300 'buf_day = c:buf_Day$=str$(buf_day)
59310 buf_Jyoushi_Born_Day(2)=buf_day
59320 locate 1,3
59330 print "                                           "
59340 locate 1,3
59350 color Rgb(255,255,255)
59360 print "上司の生まれた日(1日~31日):" + buf_Day$
59370 goto Jyoushi_Input_Born_Day2:
59380 'goto
59390 endif
59400 'endif
59410 '生まれた日　2桁目の数字　or 1桁の数字 + ok
59420 case 2:
59430 'buf_day = c * 10 + No
59440 'buf_Jyoushi_Born_Day(2)=buf_day
59450 'locate 1,3
59460 'print "                                      "
59470 'locate 1,3
59480 'locate 2,3
59490 'print "生まれた日(1日〜31日):";buf_Day
59500 'No=-1:ok ボタンを押したとき
59510 if (No = -1) then
59520 'if ((buf_day > 0) and (buf_day < 32)) then
59530 No=0
59540 sp_on 14,0
59550 goto complate_jyoushi:
59560 'end
59570 else
59580 goto Jyoushi_Input_Born_Day2:
59590 'endif
59600 'Okボタン以外を押したとき
59610 'else
59620 'c=val(buf_Day$)
59630 'buf_day = c * 10 + No
59640 'buf_Jyoushi_Born_Day(2) = buf_day
59650 'buf_Day$ = str$(buf_day)
59660 'locate 1,3
59670 'print "上司の生まれた日(1日~31日):";buf_Day$
59680 'goto Jyoushi_Input_Born_Day2:
59690 endif
59700 'case 3:
59710 'count=4
59720 'c=val(buf_day$)
59730 'buf_day=c*10+No
59740 'buf_day$=str$(buf_day)
59750 'locate 2,3
59760 'print "生まれた日を入れてください:";buf_day$
59770 'year=val(buf_year$)
59780 'if (No = -1) then
59790 'goto Jyoushi_Input_Born_Day:
59800 'sp_on 14,0:
59810 'goto complate_jyoushi:
59820 'else
59830 'goto Jyoushi_Input_Born_Month2:
59840 'endif
59850 'case 4:
59860 'bufyear=buf_year
59870 'if (No=-1) then
59880 'buf_day = val(buf_day$)
59890 'bufday = buf_day
59900 'sp_on 14,0
59910 'goto Jyoushi_Input_Born_Day2:
59920 'else
59930 'goto Jyoushi_Input_Born_Day2:
59940 'endif
59950 end select
59960 endif
59970 if (bg2=2) then
59980 select case count2
59990 case 0:
60000 if (No=-1) then
60010 buf_day=0:buf_Day$="**":No=0
60020 if (buf_day >= 1 and buf_day <= 31) then
60030 count=0
60040 buf_day=0:buf_Day$ = "**"
60050 goto rewrite_day3:
60060 else
60070 buf_day=0:buf_Day$ = "**"
60080 ui_msg"値が範囲外です"
60090 endif
60100 goto rewrite_day3:
60110 else
60120 goto rewrite_day3:
60130 endif
60140 rewrite_day3:
60150 locate 2,3
60160 color rgb(255,255,255)
60170 print "                                      "
60180 locate 2,3
60190 print "生まれた日(1日~31日):" + buf_Day$
60200 goto Jyoushi_Input_Born_Day2:
60210 end select
60220 endif
60230 '--------------------------------------------'
60240 'locate 2,0:color rgb(255,0,0)
60250 'print "上司の生まれた年代を入力"
60260 'color rgb(255,255,255)
60270 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
60280 'locate 2,4:Input "上司の生まれた年:",born_year
60290 '誕生日データーを配列に代入
60300 'buf_Jyoushi_Born_Year:上司の生まれた年代
60310 'buf_Jyoushi_Born_Day(0) = born_year
60320 'born_year = 0
60330 '---------------------------------------------'
60340 'goto Jyoushi_born_month:
60350 '1-2.生まれた月を入力
60360 'Jyoushi_born_month:
60370 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60380 'init "kb:4"
60390 'locate 2,1:
60400 'color rgb(255,0,0)
60410 'print "上司の生まれた月入力"
60420 'color rgb(255,255,255)
60430 'locate 2,4:print "生まれた月を入力してください"
60440 'locate 2,5
60450 'Input "上司の生まれ月:",born_month
60460 'buf_Jyoushi_Born_Day(1) = born_month
60470 'born_month = 0
60480 'goto Jyoushi_born_day:
60490 'buf_Jyoushi_Born_day
60500 '1-3.生まれた日を入力
60510 'Jyoushi_born_day:
60520 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60530 'init "kb:4"
60540 'locate 2,1:color rgb(255,0,0)
60550 'print "上司の生まれた日　入力"
60560 'locate 2,4:color rgb(255,255,255)
60570 'print "生まれた日を入力してください"
60580 'locate 2,5
60590 'Input "上司の生まれた日:",born_day
60600 'buf_Jyoushi_Born_Day(2) = born_day
60610 'born_day = 0
60620 'goto buka_born_year:
60630 '2.部下の誕生日入力
60640 '2-1.生まれた年を入力
60650 'buka_born_year:
60660 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60670 'init "kb:2"
60680 'locate 1,1:color rgb(255,0,0)
60690 'print "部下の生まれた年代入力"
60700 'locate 0,4:color rgb(255,255,255)
60710 'print "部下の生まれた年（西暦4桁）を入れてください"
60720 'locate 0,5
60730 'Input "部下の生まれた年(西暦4桁):",born_year
60740 'buf_Buka_Born_Day(0) = born_year
60750 'born_year = 0
60760 '2-2.生まれた月を入力
60770 'buka_born_month:
60780 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60790 'init "kb:2"
60800 'locate 2,1:color rgb(255,0,0)
60810 'print "部下の生まれた月 入力"
60820 'locate 2,4:color rgb(255,255,255)
60830 'print "部下の生まれた月を入力してください"
60840 'locate 2,5:Input "部下の生まれた月:",born_month
60850 'buf_Buka_Born_Day(1) = born_month
60860 '2-3.生まれた日を入力
60870 'buka_born_day:
60880 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60890 'init "kb:2"
60900 'locate 2,1:color rgb(255,0,0)
60910 'print "生まれた日入力"
60920 'color rgb(255,255,255)
60930 'locate 2,4:print "生まれた日を入力してください"
60940 'locate 2,5:Input "部下の生まれた日:",born_day
60950 'buf_Buka_Born_Day(2) = born_day
60960 'born_day=0:goto Result_Business_Aisyou:
60970 '--------------------------------------------'
60980 complate_jyoushi:
60990 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
61000 buf_Jyoushi = Kabara_Num(a,b,c)
61010 a_1=buf_Jyoushi
61020 goto Buka_Input_Seireki:
61030 '--------------------------------------------'
61040 '部下'
61050 '1.部下の生まれた年代'
61060 Buka_Input_Seireki:
61070 cls 3:play "":count=0:count2=0
61080 init"kb:4"
61090 'No=-1:Okのとき
61100 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
61110 for i=0 to 3
61120 buf_Buka_Born_Day(i)=0
61130 next i
61140 gload Gazo$ + "Screen2.png",0,0,0
61150 gload Gazo$ + "downscreen.png",0,0,800
61160 'Init"kb:2"
61170 '音声ファイル再生 2023.06.07
61180 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
61190 font 48
61200 locate 0,1
61210 '文字色：黒　 color rgb(0,0,0)
61220 color rgb(255,255,255)
61230 print "部下の生まれた年代を入れて下さい" + chr$(13)
61240 color rgb(255,255,255)
61250 locate 1,3
61260 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
61270 color rgb(255,255,255)
61280 'locate 4,6:print ":7"
61290 'locate 9,6:print ":8"
61300 'locate 12,6:print ":9"
61310 'locate 4,6
61320 'print ":7  :8  :9" + chr$(13)
61330 'color rgb(255,255,255)
61340 'locate 4,8
61350 'print ":4  :5  :6" + chr$(13)
61360 'color rgb(255,255,255)
61370 'locate 4,10
61380 'print ":1  :2  :3" + chr$(13)
61390 'locate 4,12
61400 'print "    :0"
61410 'locate 12,12
61420 'color rgb(0,0,255)
61430 'print ":Ok"
61440 sp_on 4,0: sp_on 5,0:sp_on 6,0
61450 sp_on 7,0:sp_on 8,0:sp_on 9,0
61460 sp_on 10,0:sp_on 11,0:sp_on 12,0
61470 sp_on 13,0:sp_on 14,1
61480 Buka_Input_Seireki2:
61490 key$="":bg=0:y=0:y2=0:bg2=0:
61500 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
61510 key$ = inkey$
61520 bg = strig(1)
61530 y = stick(1)
61540 y2 = stick(0)
61550 bg2=strig(0)
61560 pause 5
61570 wend
61580 '十字キー　ここから
61590 '上の矢印　または、十字キー上
61600 if ((y = -1) or (key$ = chr$(30))) then
61610 select case No
61620 'No=-1:okのとき:初期の状態
61630 '0kボタンから３に移動
61640 '上に行く 処理
61650 case -1:
61660 No=3:sp_on 12,1:sp_on 14,0
61670 pause 200:goto Buka_Input_Seireki2:
61680 '選択肢:3
61690 '3ボタンから 6に移動
61700 case 3:
61710 No=6:sp_on 12,0:sp_on 11,1
61720 pause 200:goto Buka_Input_Seireki2:
61730 '6ボタンから ９に移動
61740 case 6:
61750 No=9:sp_on 10,1:sp_on 11,0
61760 pause 200:goto Buka_Input_Seireki2:
61770 '6ボタンから ９に移動　ここまで
61780 '9で上を押して何もしない
61790 case 9:
61800 '何もしない
61810 No=9
61820 pause 200:goto Buka_Input_Seireki2:
61830 '9で上を押しても何もしない　ここまで
61840 '上　 0ボタンから2ボタン
61850 'sp_on 6,1:1
61860 'sp_on 8,1:5
61870 'sp_on 7,1:7
61880 case 0:
61890 No=2:sp_on 13,0:sp_on 9,1:
61900 pause 200:goto Buka_Input_Seireki2:
61910 '上  0ボタンから2ボタン　ここまで
61920 '2から５になる 上
61930 case 2:
61940 No=5:sp_on 8,1:sp_on 9,0:
61950 pause 200:goto Buka_Input_Seireki2:
61960 case 5:
61970 No=8:sp_on 7,1:sp_on 8,0
61980 pause 200:goto Buka_Input_Seireki2:
61990 case 8:
62000 pause 200:goto Buka_Input_Seireki2:
62010 case 1:
62020 No=4:sp_on 5,1:sp_on 6,0
62030 pause 200:goto Buka_Input_Seireki2:
62040 case 4:
62050 No=7:sp_on 4,1:sp_on 5,0
62060 pause 200:goto Buka_Input_Seireki2:
62070 case 7:
62080 pause 200:goto Buka_Input_Seireki2:
62090 end select
62100 endif
62110 '左３　ここまで
62120 '下の矢印
62130 '中央 2
62140 if ((y=1) or (key$ = chr$(31))) then
62150 select case No
62160 '9から６に下げる
62170 case 9:
62180 No=6:sp_on 11,1:sp_on 10,0
62190 pause 200:goto Buka_Input_Seireki2:
62200 '6から３に下げる
62210 case 6:
62220 No=3:sp_on 12,1:sp_on 11,0
62230 pause 200:goto Buka_Input_Seireki2:
62240 '3から０ｋに変える
62250 case 3:
62260 No=-1:sp_on 14,1:sp_on 12,0
62270 pause 200:goto Buka_Input_Seireki2:
62280 'Okから下のボタンを押しても何もしない
62290 case -1:
62300 pause 200:goto Buka_Input_Seireki2:
62310 case 8:
62320 No=5:sp_on 8,1:sp_on 7,0
62330 pause 200:goto Buka_Input_Seireki2:
62340 case 5:
62350 No=2:sp_on 9,1:sp_on 8,0
62360 pause 200:goto Buka_Input_Seireki2:
62370 case 2:
62380 No=0:sp_on 13,1:sp_on 9,0
62390 pause 200:goto Buka_Input_Seireki2:
62400 case 0:
62410 pause 200:goto Buka_Input_Seireki2:
62420 case 7:
62430 No=4:sp_on 5,1:sp_on 4,0
62440 pause 200:goto Buka_Input_Seireki2:
62450 case 4:
62460 No=1:sp_on 6,1:sp_on 5,0
62470 pause 200:goto Buka_Input_Seireki2:
62480 case 1:
62490 pause 200:goto Buka_Input_Seireki2:
62500 end select
62510 endif
62520 '左へボタン 十字キー　左　or 　カーソル左
62530 if ((y2 = -1) or (key$ = chr$(29))) then
62540 select case No
62550 'Ok ボタン  Okから　左　０に行く
62560 case -1:
62570 No=0:sp_on 13,1:sp_on 14,0
62580 pause 200:goto Buka_Input_Seireki2:
62590 '0 ボタン  左　何もしない
62600 case 0:
62610 pause 200:goto Buka_Input_Seireki2:
62620 case 3:
62630 No=2:sp_on 9,1:sp_on 12,0:
62640 pause 200:goto Buka_Input_Seireki2:
62650 case 2:
62660 No=1:sp_on 6,1:sp_on 9,0:
62670 pause 200:goto Buka_Input_Seireki2:
62680 case 1:
62690 pause 200:goto Buka_Input_Seireki2:
62700 case 6:
62710 No=5:sp_on 8,1:sp_on 11,0
62720 pause 200:goto Buka_Input_Seireki2:
62730 case 5:
62740 No=4:sp_on 5,1:sp_on 8,0
62750 pause 200:goto Buka_Input_Seireki2:
62760 case 4:
62770 pause 200:goto Buka_Input_Seireki2:
62780 case 9:
62790 No=8:sp_on 7,1:sp_on 10,0
62800 pause 200:goto Buka_Input_Seireki2:
62810 case 8:
62820 No=7:sp_on 4,1:sp_on 7,0
62830 pause 200:goto Buka_Input_Seireki2:
62840 case 7:
62850 pause 200:goto Buka_Input_Seireki2:
62860 end select
62870 endif
62880 '右  十字キー　右　or カーソル　右
62890 if ((y2 = 1) or (key$ = chr$(28))) then
62900 select case No
62910 '0ボタンからokボタン右に移動
62920 case 0:
62930 No=-1:sp_on 14,1:sp_on 13,0
62940 pause 200:goto Buka_Input_Seireki2:
62950 '0ボタンからokボタン 右に移動　ここまで
62960 'OKボタンで右を押して何もしない
62970 case -1:
62980 pause 200:goto Buka_Input_Seireki2:
62990 case 1:
63000 No=2:sp_on 9,1:sp_on 6,0
63010 pause 200:goto Buka_Input_Seireki2:
63020 case 2:
63030 No=3:sp_on 12,1:sp_on 9,0
63040 pause 200:goto Buka_Input_Seireki2:
63050 case 3:
63060 pause 200:goto Buka_Input_Seireki2:
63070 case 4:
63080 No=5:sp_on 8,1:sp_on 5,0
63090 pause 200:goto Buka_Input_Seireki2:
63100 case 5:
63110 No=6:sp_on 11,1:sp_on 8,0
63120 pause 200:goto Buka_Input_Seireki2:
63130 case 7:
63140 No=8:sp_on 7,1:sp_on 4,0
63150 pause 200:goto Buka_Input_Seireki2:
63160 case 8:
63170 No=9:sp_on 10,1:sp_on 7,0
63180 pause 200:goto Buka_Input_Seireki2:
63190 case 9:
63200 pause 200:goto Buka_Input_Seireki2:
63210 case 6:
63220 pause 200:goto Buka_Input_Seireki2:
63230 end select
63240 'Okから右ボタンを押して何もしない ここまで
63250 endif
63260 '十字キー　ここまで
63270 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
63280 'ここからコメント
63290 '右の丸ボタン決定を押した数:count
63300 'if ((bg=2) or (key$=chr$(13))) then
63310 'select case count
63320 'case 0:
63330 'count=1
63340 'if (No = -1) then
63350 'count = 0
63360 'Okボタンを押したとき
63370 '
63380 'goto Buka_Input_Seireki2:
63390 'else
63400 'Okボタン以外が押されたとき
63410 'if (No >= 1 and No <= 2) then
63420 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
63430 'buf_buka_year = No
63440 'buf_Buka_Born_Day(0) = bufyear
63450 'locate 2,3
63460 'color rgb(255,255,255)
63470 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63480 'goto Buka_Input_Seireki2:
63490 'else
63500 'count=0
63510 'ui_msg"数字が範囲外になります。"
63520 'buf_buka_year$ ="":buf_buka_year=0
63530 'goto Buka_Input_Seireki2:
63540 'endif
63550 'endif
63560 'case 1:
63570 'count = 2
63580 'if (No = -1) then
63590 'count = 1
63600 'goto Buka_Input_Seireki2:
63610 'else
63620 'b = val(buf_buka_year$)
63630 'buf_buka_year = b * 10 + No
63640 'buf_buka_year$ = str$(buf_buka_year)
63650 'buf_Buka_Born_Day(0) = bufyear
63660 'locate 1,3
63670 'color rgb(255,255,255)
63680 'print "                                                                "
63690 'locate 1,3
63700 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63710 'if (No = -1) then
63720 'count=1
63730 'goto Buka_Input_Seireki2:
63740 'endif
63750 'case 2:
63760 'count = 3
63770 'if (No = -1) then
63780 'count = 2
63790 'buf_Buka_Born_Day(0)=bufyear
63800 'goto Buka_Input_Seireki2:
63810 'else
63820 'b = val(buf_buka_year$)
63830 'buf_buka_year = b*10 + No
63840 'buf_buka_year$ = str$(buf_buka_year)
63850 'locate 1,3
63860 'color rgb(255,255,255)
63870 'print "                                        "
63880 'locate 1,3
63890 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
63900 'goto Buka_Input_Seireki2:
63910 'endif
63920 'case 3:
63930 'count=4
63940 'if (No = -1) then
63950 'count=3
63960 'goto Buka_Input_Seireki2:
63970 'else
63980 'b = buf_buka_year
63990 'buf_buka_year = b * 10 + No
64000 'buf_buka_year$=str$(buf_buka_year)
64010 'locate 1,3
64020 'color RGB(255,255,255)
64030 'print "                                      "
64040 'locate 1,3
64050 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64060 'buf_year=val(buf_year$)
64070 'year=val(buf_year$)
64080 'if (No=-1) then
64090 'goto Input_Born_Month:
64100 'else
64110 'goto Buka_Input_Seireki2:
64120 'endif
64130 'case 4:
64140 'bufyear=buf_year
64150 'if (No=-1) then
64160 'buf_year = val(buf_year$)
64170 'bufyear = buf_year
64180 'sp_on 14,0
64190 'goto Buka_Input_Born_Month:
64200 'else
64210 'goto Buka_Input_Seireki2:
64220 'endif
64230 'end select
64240 'endif
64250 'if (bg2 = 2) then
64260 'select case count2
64270 'case 0:
64280 'if (No = -1) then
64290 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
64300 'count=0
64310 'locate 1,3
64320 'color rgb(255,255,255)
64330 'print "                                      "
64340 'locate 1,3
64350 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
64360 'goto Buka_Input_Seireki2:
64370 'else
64380 '(buf_year=0) then
64390 'buf_buka_year=0:buf_buka_year$="****"
64400 'goto Buka_Input_Seireki2:
64410 'endif
64420 'endif
64430 'end select
64440 'endif
64450 'end
64460 'ここまでコメント
64470 '================================================================
64480 if ((bg=2) or (key$=chr$(13))) then
64490 select case count
64500 case 0:
64510 count = 1
64520 if (No=-1) then
64530 count = 0
64540 buf_Buka_Born_Day(0) = No
64550 'Okボタンを押したとき
64560 goto Buka_Input_Seireki2:
64570 else
64580 'Okボタン以外が押されたとき
64590 if (No>=1 and No<=2) then
64600 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
64610 buf_buka_year = No
64620 buf_Buka_Born_Day(0) = No
64630 locate 1,3
64640 color rgb(255,255,255)
64650 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64660 goto Buka_Input_Seireki2:
64670 else
64680 count=0
64690 ui_msg"数字が範囲外になります。"
64700 buf_buka_year$="":buf_buka_year=0
64710 goto Buka_Input_Seireki2:
64720 endif
64730 endif
64740 case 1:
64750 count = 2
64760 if (No = -1) then
64770 count = 1
64780 goto Buka_Input_Seireki2:
64790 else
64800 'b = val(buf_buka_year$)
64810 buf_buka_year = a * 10 + No
64820 b=buf_buka_year
64830 buf_buka_year$ = str$(buf_buka_year)+"**"
64840 buf_Buka_Born_Day(0)=buf_buka_year
64850 locate 1,3
64860 color rgb(255,255,255)
64870 print "                                                                "
64880 locate 1,3
64890 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
64900 'if (No = -1) then
64910 'count=1
64920 goto Buka_Input_Seireki2:
64930 endif
64940 case 2:
64950 count=3
64960 if (No=-1) then
64970 count =2:No=0
64980 goto Buka_Input_Seireki2:
64990 else
65000 'b = val(buf_buka_year$)
65010 buf_buka_year = b * 10 + No
65020 c = buf_buka_year
65030 buf_buka_year$ = str$(buf_buka_year) + "*"
65040 buf_Buka_Born_Day(0) = buf_buka_year
65050 locate 1,3
65060 color rgb(255,255,255)
65070 print "                                        "
65080 locate 1,3
65090 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65100 goto Buka_Input_Seireki2:
65110 endif
65120 case 3:
65130 count=4
65140 if (No = -1) then
65150 'count=3:No=0
65160 goto Buka_Input_Seireki2:
65170 else
65180 'b = val(buf_buka_year$)
65190 buf_buka_year=c * 10 + No
65200 buf_buka_year$=str$(buf_buka_year)
65210 buf_Buka_Born_Day(0)=buf_buka_year
65220 locate 1,3
65230 color RGB(255,255,255)
65240 print "                                      "
65250 locate 1,3
65260 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65270 buf_buka_year=val(buf_buka_year$)
65280 'year=val(buf_year$)
65290 'if (No=-1) then
65300 'goto Input_Born_Month:
65310 'else
65320 goto Buka_Input_Seireki2:
65330 endif
65340 case 4:
65350 'bufyear=buf_year
65360 if (No = -1) then
65370 buf_buka_year = val(buf_buka_year$)
65380 buf_Buka_Born_Day(0)=buf_buka_year
65390 sp_on 14,0
65400 goto Buka_Input_Born_Month:
65410 else
65420 goto Buka_Input_Seireki2:
65430 endif
65440 end select
65450 endif
65460 '================================================================
65470 'ここにコピーする。
65480 '================================================================
65490 'Input"部下の生れた年代(4桁,〜2025年):",year
65500 'if year > 2025 then goto Jyoushi_Input_Seireki:
65510 'if year = 123 then cls 3:cls 4:goto Main_Screen:
65520 '"4桁目"
65530 'bufyear4 = fix(year / 1000)
65540 '"3桁目"
65550 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
65560 '"2桁目"
65570 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
65580 '"1桁目"
65590 'bufyear1 = fix((year - ((bufyear4*
65600 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
65610 '1.部下の生まれた年代'
65620 '2.部下の生まれた月'
65630 Buka_Input_Born_Month:
65640 cls 3:play "":count=0:count2=0
65650 'No=-1:Okのとき
65660 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
65670 for i=0 to 1
65680 buf_month(i)=0
65690 next i
65700 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
65710 gload Gazo$ + "Screen2.png",0,0,0
65720 gload Gazo$ + "downscreen.png",0,0,800
65730 'Init"kb:4"
65740 '音声ファイル再生 2023.06.07
65750 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
65760 font 48
65770 locate 0,1
65780 '文字色：黒　 color rgb(0,0,0)
65790 '文字色:白
65800 color rgb(255,255,255)
65810 print "部下の生まれた月を入れて下さい" + chr$(13)
65820 '文字色:白
65830 color rgb(255,255,255)
65840 locate 1,3
65850 '文字色:白
65860 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
65870 color rgb(255,255,255)
65880 'locate 4,6:print ":7"
65890 'locate 9,6:print ":8"
65900 'locate 12,6:print ":9"
65910 'locate 4,6
65920 '文字色:赤
65930 'print ":7  :8  :9" + chr$(13)
65940 'color rgb(255,255,255)
65950 'locate 4,8
65960 'print ":4  :5  :6" + chr$(13)
65970 'color rgb(255,255,255)
65980 'locate 4,10
65990 'print ":1  :2  :3" + chr$(13)
66000 'locate 4,12
66010 'print "    :0"
66020 'locate 12,12
66030 'color rgb(0,0,255)
66040 'print ":Ok"
66050 sp_on 4,0: sp_on 5,0:sp_on 6,0
66060 sp_on 7,0:sp_on 8,0:sp_on 9,0
66070 sp_on 10,0:sp_on 11,0:sp_on 12,0
66080 sp_on 13,0:sp_on 14,1
66090 Buka_Input_Born_Month2:
66100 key$="":bg=0:y=0:y2=0:bg2=0
66110 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
66120 key$ = inkey$
66130 bg = strig(1)
66140 y = stick(1)
66150 y2 = stick(0)
66160 bg2 = strig(0)
66170 pause 5
66180 wend
66190 '十字キー　ここから
66200 '上の矢印　または、十字キー上
66210 if ((y = -1) or (key$ = chr$(30))) then
66220 select case No
66230 'No=-1:okのとき:初期の状態
66240 '0kボタンから３に移動
66250 '上に行く 処理
66260 case -1:
66270 No=3:sp_on 12,1:sp_on 14,0
66280 pause 200:goto Buka_Input_Born_Month2:
66290 '選択肢:3
66300 '3ボタンから 6に移動
66310 case 3:
66320 No=6:sp_on 12,0:sp_on 11,1
66330 pause 200:goto Buka_Input_Born_Month2:
66340 '6ボタンから ９に移動
66350 case 6:
66360 No=9:sp_on 10,1:sp_on 11,0
66370 pause 200:goto Buka_Input_Born_Month2:
66380 '6ボタンから ９に移動　ここまで
66390 '9で上を押して何もしない
66400 case 9:
66410 '何もしない
66420 No=9
66430 pause 200:goto Buka_Input_Born_Month2:
66440 '9で上を押しても何もしない　ここまで
66450 '上　 0ボタンから2ボタン
66460 'sp_on 6,1:1
66470 'sp_on 8,1:5
66480 'sp_on 7,1:7
66490 case 0:
66500 No=2:sp_on 13,0:sp_on 9,1:
66510 pause 200:goto Buka_Input_Born_Month2:
66520 '上  0ボタンから2ボタン　ここまで
66530 '2から５になる 上
66540 case 2:
66550 No=5:sp_on 8,1:sp_on 9,0:
66560 pause 200:goto Buka_Input_Born_Month2:
66570 case 5:
66580 No=8:sp_on 7,1:sp_on 8,0
66590 pause 200:goto Buka_Input_Born_Month2:
66600 case 8:
66610 pause 200:goto Buka_Input_Born_Month2:
66620 case 1:
66630 No=4:sp_on 5,1:sp_on 6,0
66640 pause 200:goto Buka_Input_Born_Month2:
66650 case 4:
66660 No=7:sp_on 4,1:sp_on 5,0
66670 pause 200:goto Buka_Input_Born_Month2:
66680 case 7:
66690 pause 200:goto Buka_Input_Born_Month2:
66700 end select
66710 endif
66720 '左３　ここまで
66730 '下の矢印
66740 '中央 2
66750 if ((y=1) or (key$ = chr$(31))) then
66760 select case No
66770 '9から６に下げる
66780 case 9:
66790 No=6:sp_on 11,1:sp_on 10,0
66800 pause 200:goto Buka_Input_Born_Month2:
66810 '6から３に下げる
66820 case 6:
66830 No=3:sp_on 12,1:sp_on 11,0
66840 pause 200:goto Buka_Input_Born_Month2:
66850 '3から０ｋに変える
66860 case 3:
66870 No=-1:sp_on 14,1:sp_on 12,0
66880 pause 200:goto Buka_Input_Born_Month2:
66890 'Okから下のボタンを押しても何もしない
66900 case -1:
66910 pause 200:goto Buka_Input_Born_Month2:
66920 case 8:
66930 No=5:sp_on 8,1:sp_on 7,0
66940 pause 200:goto Buka_Input_Born_Month2:
66950 case 5:
66960 No=2:sp_on 9,1:sp_on 8,0
66970 pause 200:goto Buka_Input_Born_Month2:
66980 case 2:
66990 No=0:sp_on 13,1:sp_on 9,0
67000 pause 200:goto Buka_Input_Born_Month2:
67010 case 0:
67020 pause 200:goto Buka_Input_Born_Month2:
67030 case 7:
67040 No=4:sp_on 5,1:sp_on 4,0
67050 pause 200:goto Buka_Input_Born_Month2:
67060 case 4:
67070 No=1:sp_on 6,1:sp_on 5,0
67080 pause 200:goto Buka_Input_Born_Month2:
67090 case 1:
67100 pause 200:goto Buka_Input_Born_Month2:
67110 end select
67120 endif
67130 '左へボタン 十字キー　左　or 　カーソル左
67140 if ((y2 = -1) or (key$ = chr$(29))) then
67150 select case No
67160 'Ok ボタン  Okから　左　０に行く
67170 case -1:
67180 No=0:sp_on 13,1:sp_on 14,0
67190 pause 200:goto Buka_Input_Born_Month2:
67200 '0 ボタン  左　何もしない
67210 case 0:
67220 pause 200:goto Buka_Input_Born_Month2:
67230 case 3:
67240 No=2:sp_on 9,1:sp_on 12,0:
67250 pause 200:goto Buka_Input_Born_Month2:
67260 case 2:
67270 No=1:sp_on 6,1:sp_on 9,0:
67280 pause 200:goto Buka_Input_Born_Month2:
67290 case 1:
67300 pause 200:goto Buka_Input_Born_Month2:
67310 case 6:
67320 No=5:sp_on 8,1:sp_on 11,0
67330 pause 200:goto Buka_Input_Born_Month2:
67340 case 5:
67350 No=4:sp_on 5,1:sp_on 8,0
67360 pause 200:goto Buka_Input_Born_Month2:
67370 case 4:
67380 pause 200:goto Buka_Input_Born_Month2:
67390 case 9:
67400 No=8:sp_on 7,1:sp_on 10,0
67410 pause 200:goto Buka_Input_Born_Month2:
67420 case 8:
67430 No=7:sp_on 4,1:sp_on 7,0
67440 pause 200:goto Buka_Input_Born_Month2:
67450 case 7:
67460 pause 200:goto Buka_Input_Born_Month2:
67470 end select
67480 endif
67490 '右  十字キー　右　or カーソル　右
67500 if ((y2 = 1) or (key$ = chr$(28))) then
67510 select case No
67520 '0ボタンからokボタン右に移動
67530 case 0:
67540 No=-1:sp_on 14,1:sp_on 13,0
67550 pause 200:goto Buka_Input_Born_Month2:
67560 '0ボタンからokボタン 右に移動　ここまで
67570 'OKボタンで右を押して何もしない
67580 case -1:
67590 pause 200:goto Buka_Input_Born_Month2:
67600 case 1:
67610 No=2:sp_on 9,1:sp_on 6,0
67620 pause 200:goto Buka_Input_Born_Month2:
67630 case 2:
67640 No=3:sp_on 12,1:sp_on 9,0
67650 pause 200:goto Buka_Input_Born_Month2:
67660 case 3:
67670 pause 200:goto Buka_Input_Born_Month2:
67680 case 4:
67690 No=5:sp_on 8,1:sp_on 5,0
67700 pause 200:goto Buka_Input_Born_Month2:
67710 case 5:
67720 No=6:sp_on 11,1:sp_on 8,0
67730 pause 200:goto Buka_Input_Born_Month2:
67740 case 7:
67750 No=8:sp_on 7,1:sp_on 4,0
67760 pause 200:goto Buka_Input_Born_Month2:
67770 case 8:
67780 No=9:sp_on 10,1:sp_on 7,0
67790 pause 200:goto Buka_Input_Born_Month2:
67800 case 9:
67810 pause 200:goto Buka_Input_Born_Month2:
67820 case 6:
67830 pause 200:goto Buka_Input_Born_Month2:
67840 end select
67850 'Okから右ボタンを押して何もしない ここまで
67860 endif
67870 '十字キー　ここまで
67880 '右の丸ボタン　決定キー
67890 if ((bg=2) or (key$=chr$(13))) then
67900 select case count
67910 case 0:
67920 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
67930 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
67940 locate 1,3
67950 color RGB(255,255,255)
67960 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
67970 goto Buka_Input_Born_Month2:
67980 case 1:
67990 count = 2:buf_buka_month=a*10+No
68000 if (No = -1) then
68010 'count=0
68020 month=buf_buka_month
68030 buf_buka_month=val(buf_buka_Month$)
68040 month=buf_buka_month
68050 '生まれた日に飛ぶ
68060 goto Buka_Input_Born_Day:
68070 else
68080 buf_buka_month = a * 10 + No
68090 buf_buka_Month$ = str$(buf_buka_month)
68100 buf_Buka_Born_Day(1) = buf_buka_month
68110 locate 1,3
68120 color Rgb(255,255,255)
68130 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
68140 goto Buka_Input_Born_Month2:
68150 endif
68160 case 2:
68170 count=3
68180 'c= val(buf_Month$)
68190 'buf_month = c*10 + No
68200 'buf_Month$ = str$(buf_month)
68210 'locate 2,3
68220 'print "部下の生まれた月(1月～12月):";buf_Month$
68230 'goto Buka_Input_Born_Month2:
68240 'case 3:
68250 'count=4
68260 'b=val(buf_month$)
68270 'buf_month=c*10+No
68280 'buf_Month$=str$(buf_month)
68290 'locate 2,3
68300 'print "部下の生まれた月(1月～12月):";buf_Month$
68310 'buf_month=val(buf_Month$)
68320 'year=val(buf_year$)
68330 if (No=-1) then
68340 goto Buka_Input_Born_Day:
68350 else
68360 goto Input_Born_Month2:
68370 endif
68380 'case 4:
68390 'bufyear=buf_year
68400 'if (No=-1) then
68410 'buf_month = val(buf_Month$)
68420 'month = buf_month
68430 'sp_on 14,0
68440 'goto Input_Born_Day:
68450 'else
68460 'goto Input_Born_Month2:
68470 'endif
68480 end select
68490 endif
68500 '左の丸ボタン　キャンセル
68510 if (bg2=2) then
68520 select case count2
68530 case 0:
68540 if (No = -1) then
68550 buf_buka_month=0:buf_buka_Month$="**"
68560 count=0
68570 goto rewrite2:
68580 else
68590 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
68600 buf_month=0:buf_Month$="**"
68610 locate 2,3
68620 color rgb(255,255,255)
68630 print "                                       "
68640 goto rewrite2:
68650 if (No>12) then
68660 ui_msg"値が範囲外です。"
68670 goto rewrite2:
68680 endif
68690 endif
68700 endif
68710 rewrite2:
68720 locate 2,3
68730 color rgb(255,255,255)
68740 print "                                      "
68750 locate 2,3
68760 print "部下の生まれた月(1月~12月):";buf_buka_Month$
68770 goto Buka_Input_Born_Month2:
68780 end select
68790 'endif
68800 endif
68810 end
68820 '2.部下の生まれた月'
68830 '3.部下の生まれた日'
68840 '生れた日を入力
68850 Buka_Input_Born_Day:
68860 '生まれた日入力
68870 cls 3:play ""
68880 'No=-1:Okのとき
68890 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
68900 for i=0 to 1
68910 buf_day(i)=0
68920 next i
68930 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
68940 gload Gazo$ + "Screen2.png",0,0,0
68950 gload Gazo$ + "downscreen.png",0,0,800
68960 'Init"kb:2"
68970 '音声ファイル再生 2023.06.07
68980 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
68990 font 48
69000 locate 0,1
69010 '文字色：黒　 color rgb(0,0,0)
69020 color rgb(255,255,255)
69030 print "部下の生まれた日を入れて下さい" + chr$(13)
69040 color rgb(255,255,255)
69050 locate 1,3
69060 print "部下の生まれた日(1日~31日):";buf_Day$
69070 color rgb(255,255,255)
69080 'locate 4,6:print ":7"
69090 'locate 9,6:print ":8"
69100 'locate 12,6:print ":9"
69110 'locate 4,6
69120 'print ":7  :8  :9" + chr$(13)
69130 'color rgb(255,255,255)
69140 'locate 4,8
69150 'print ":4  :5  :6" + chr$(13)
69160 'color rgb(255,255,255)
69170 'locate 4,10
69180 'print ":1  :2  :3" + chr$(13)
69190 'locate 4,12
69200 'print "    :0"
69210 'locate 12,12
69220 'color rgb(0,0,255)
69230 'print ":Ok"
69240 sp_on 4,0: sp_on 5,0:sp_on 6,0
69250 sp_on 7,0:sp_on 8,0:sp_on 9,0
69260 sp_on 10,0:sp_on 11,0:sp_on 12,0
69270 sp_on 13,0:sp_on 14,1
69280 Buka_Input_Born_Day2:
69290 '
69300 key$="":bg=0:y=0:y2=0:bg2=0
69310 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
69320 key$ = inkey$
69330 bg = strig(1)
69340 y = stick(1)
69350 y2 = stick(0)
69360 bg2 = strig(0)
69370 pause 200
69380 wend
69390 '十字キー　ここから
69400 '上の矢印　または、十字キー上
69410 if ((y = -1) or (key$ = chr$(30))) then
69420 select case No
69430 'No=-1:okのとき:初期の状態
69440 '0kボタンから３に移動
69450 '上に行く 処理
69460 case -1:
69470 No=3:sp_on 12,1:sp_on 14,0
69480 pause 200:goto Buka_Input_Born_Day2:
69490 '選択肢:3
69500 '3ボタンから 6に移動
69510 case 3:
69520 No=6:sp_on 12,0:sp_on 11,1
69530 pause 200:goto Buka_Input_Born_Day2:
69540 '6ボタンから ９に移動
69550 case 6:
69560 No=9:sp_on 10,1:sp_on 11,0
69570 pause 200:goto Buka_Input_Born_Day2:
69580 '6ボタンから ９に移動　ここまで
69590 '9で上を押して何もしない
69600 case 9:
69610 '何もしない
69620 No=9
69630 pause 200:goto Buka_Input_Born_Day2:
69640 '9で上を押しても何もしない　ここまで
69650 '上　 0ボタンから2ボタン
69660 'sp_on 6,1:1
69670 'sp_on 8,1:5
69680 'sp_on 7,1:7
69690 case 0:
69700 No=2:sp_on 13,0:sp_on 9,1:
69710 pause 200:goto Buka_Input_Born_Day2:
69720 '上  0ボタンから2ボタン　ここまで
69730 '2から５になる 上
69740 case 2:
69750 No=5:sp_on 8,1:sp_on 9,0:
69760 pause 200:goto Buka_Input_Born_Day2:
69770 case 5:
69780 No=8:sp_on 7,1:sp_on 8,0
69790 pause 200:goto Buka_Input_Born_Day2:
69800 case 8:
69810 pause 200:goto Buka_Input_Born_Day2:
69820 case 1:
69830 No=4:sp_on 5,1:sp_on 6,0
69840 pause 200:goto Buka_Input_Born_Day2:
69850 case 4:
69860 No=7:sp_on 4,1:sp_on 5,0
69870 pause 200:goto Buka_Input_Born_Day2:
69880 case 7:
69890 pause 200:goto Buka_Input_Born_Day2:
69900 end select
69910 endif
69920 '左３　ここまで
69930 '下の矢印
69940 '中央 2
69950 if ((y=1) or (key$ = chr$(31))) then
69960 select case No
69970 '9から６に下げる
69980 case 9:
69990 No=6:sp_on 11,1:sp_on 10,0
70000 pause 200:goto Buka_Input_Born_Day2:
70010 '6から３に下げる
70020 case 6:
70030 No=3:sp_on 12,1:sp_on 11,0
70040 pause 200:goto Buka_Input_Born_Day2:
70050 '3から０ｋに変える
70060 case 3:
70070 No=-1:sp_on 14,1:sp_on 12,0
70080 pause 200:goto Buka_Input_Born_Day2:
70090 'Okから下のボタンを押しても何もしない
70100 case -1:
70110 pause 200:goto Buka_Input_Born_Day2:
70120 case 8:
70130 No=5:sp_on 8,1:sp_on 7,0
70140 pause 200:goto Buka_Input_Born_Day2:
70150 case 5:
70160 No=2:sp_on 9,1:sp_on 8,0
70170 pause 200:goto Buka_Input_Born_Day2:
70180 case 2:
70190 No=0:sp_on 13,1:sp_on 9,0
70200 pause 200:goto Buka_Input_Born_Day2:
70210 case 0:
70220 pause 200:goto Buka_Input_Born_Day2:
70230 case 7:
70240 No=4:sp_on 5,1:sp_on 4,0
70250 pause 200:goto Buka_Input_Born_Day2:
70260 case 4:
70270 No=1:sp_on 6,1:sp_on 5,0
70280 pause 200:goto Buka_Input_Born_Day2:
70290 case 1:
70300 pause 200:goto Buka_Input_Born_Day2:
70310 end select
70320 endif
70330 '左へボタン 十字キー　左　or 　カーソル左
70340 if ((y2 = -1) or (key$ = chr$(29))) then
70350 select case No
70360 'Ok ボタン  Okから　左　０に行く
70370 case -1:
70380 No=0:sp_on 13,1:sp_on 14,0
70390 pause 200:goto Buka_Input_Born_Day2:
70400 '0 ボタン  左　何もしない
70410 case 0:
70420 pause 200:goto Buka_Input_Born_Day2:
70430 case 3:
70440 No=2:sp_on 9,1:sp_on 12,0:
70450 pause 200:goto Buka_Input_Born_Day2:
70460 case 2:
70470 No=1:sp_on 6,1:sp_on 9,0:
70480 pause 200:goto Buka_Input_Born_Day2:
70490 case 1:
70500 pause 200:goto Buka_Input_Born_Day2:
70510 case 6:
70520 No=5:sp_on 8,1:sp_on 11,0
70530 pause 200:goto Buka_Input_Born_Day2:
70540 case 5:
70550 No=4:sp_on 5,1:sp_on 8,0
70560 pause 200:goto Buka_Input_Born_Day2:
70570 case 4:
70580 pause 200:goto Buka_Input_Born_Day2:
70590 case 9:
70600 No=8:sp_on 7,1:sp_on 10,0
70610 pause 200:goto Buka_Input_Born_Day2:
70620 case 8:
70630 No=7:sp_on 4,1:sp_on 7,0
70640 pause 200:goto Buka_Input_Born_Day2:
70650 case 7:
70660 pause 200:goto Buka_Input_Born_Day2:
70670 end select
70680 endif
70690 '右  十字キー　右　or カーソル　右
70700 if ((y2 = 1) or (key$ = chr$(28))) then
70710 select case No
70720 '0ボタンからokボタン右に移動
70730 case 0:
70740 No=-1:sp_on 14,1:sp_on 13,0
70750 pause 200:goto Buka_Input_Born_Day2:
70760 '0ボタンからokボタン 右に移動　ここまで
70770 'OKボタンで右を押して何もしない
70780 case -1:
70790 pause 200:goto Buka_Input_Born_Day2:
70800 case 1:
70810 No=2:sp_on 9,1:sp_on 6,0
70820 pause 200:goto Buka_Input_Born_Day2:
70830 case 2:
70840 No=3:sp_on 12,1:sp_on 9,0
70850 pause 200:goto Buka_Input_Born_Day2:
70860 case 3:
70870 pause 200:goto Buka_Input_Born_Day2:
70880 case 4:
70890 No=5:sp_on 8,1:sp_on 5,0
70900 pause 200:goto Buka_Input_Born_Day2:
70910 case 5:
70920 No=6:sp_on 11,1:sp_on 8,0
70930 pause 200:goto Buka_Input_Born_Day2:
70940 case 7:
70950 No=8:sp_on 7,1:sp_on 4,0
70960 pause 200:goto Buka_Input_Born_Day2:
70970 case 8:
70980 No=9:sp_on 10,1:sp_on 7,0
70990 pause 200:goto Buka_Input_Born_Day2:
71000 case 9:
71010 pause 200:goto Buka_Input_Born_Day2:
71020 case 6:
71030 pause 200:goto Buka_Input_Born_Day2:
71040 end select
71050 'Okから右ボタンを押して何もしない ここまで
71060 endif
71070 '十字キー　ここまで
71080 '右の丸ボタンを押したとき
71090 if ((bg = 2) or (key$ = chr$(13))) then
71100 'count :決定ボタンを押した回数
71110 select case (count)
71120 '1桁目入力
71130 case 0:
71140 count = 1:
71150 if (No = -1) then
71160 '1桁目　OKでは何もしない
71170 'goto check:
71180 No=0
71190 else
71200 'ok以外のボタンを押したとき
71210 buf_buka_day = No:buf_buka_Day$ = str$(No)
71220 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
71230 buf_buka_Day$ = str$(No) + "*"
71240 endif
71250 a=No
71260 buf_Buka_Born_Day(2) = buf_buka_day
71270 locate 1,3
71280 print"                                      "
71290 color RGB(255,255,255)
71300 locate 1,3
71310 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71320 endif
71330 check2:
71340 if (No >= 1 and No <= 9) then
71350 sp_on 14,0
71360 goto Buka_Input_Born_Day2:
71370 else
71380 sp_on 14,0
71390 goto Result_Business_Aisyou:
71400 end
71410 endif
71420 case 1:
71430 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
71440 count = 2:
71450 'locate 2,3
71460 'color RGB(255,255,255)
71470 'print "生まれた日(1日~31日):";buf_Day$
71480 'Okボタンを押したときの処理
71490 '入力値　10未満のとき
71500 'c = buf_day
71510 if (No = -1) then
71520 'c=buf_day
71530 ' buf_day = c
71540 'buf_Day$ = str$(buf_day)
71550 '10以下のとき
71560 No=0
71570 if (buf_day < 10) then
71580 sp_on 14,0
71590 goto Result_Business_Aisyou:
71600 end
71610 endif
71620 else
71630 sp_on 14,0
71640 'c=No
71650 buf_buka_day = a * 10 + No
71660 buf_buka_Day$ = str$(buf_buka_day)
71670 buf_Buka_Born_Day(2) = buf_buka_day
71680 locate 0,3
71690 color Rgb(255,255,255)
71700 print "                                       "
71710 locate 1,3
71720 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71730 goto Buka_Input_Born_Day2:
71740 endif
71750 '生まれた日　2桁目の数字　or 1桁の数字 + ok
71760 case 2:
71770 count=0
71780 'c=val(buf_Day$)
71790 'buf_day=c*10+No
71800 'buf_Day$=str$(buf_day)
71810 'day=buf_day
71820 'locate 2,3
71830 'print "生まれた日(1日〜31日):";buf_Day$
71840 'No=-1:ok ボタンを押したとき
71850 if (No = -1) then No=0
71860 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
71870 sp_on 14,0
71880 goto Result_Business_Aisyou:
71890 else
71900 goto Buka_Input_Born_Day2:
71910 endif
71920 'Okボタン以外を押したとき
71930 else
71940 c=val(buf_buka_Day$)
71950 buf_buka_day = c * 10 + No
71960 buf_buka_Day$ = str$(buf_buka_day)
71970 locate 1,3
71980 print "                "
71990 locate 1,3
72000 print "生まれた日(1日~31日):"+buf_buka_Day$
72010 goto Buka_Input_Born_Day2:
72020 'endif
72030 case 3:
72040 count=4
72050 'c=val(buf_day$)
72060 'buf_day=c*10+No
72070 'buf_day$=str$(buf_day)
72080 'locate 2,3
72090 'print "生まれた日を入れてください:";buf_day$
72100 'year=val(buf_year$)
72110 if (No = -1) then
72120 'goto Buka_Input_Born_Day:
72130 sp_on 14,0:
72140 goto complate_jyoushi:
72150 else
72160 goto Buka_Input_Born_Month2:
72170 endif
72180 'case 4:
72190 'bufyear=buf_year
72200 'if (No=-1) then
72210 'buf_day = val(buf_day$)
72220 'bufday = buf_day
72230 'sp_on 14,0
72240 goto complate_jyoushi:
72250 'else
72260 'goto Buka_Input_Born_Day2:
72270 'endif
72280 end select
72290 endif
72300 if (bg2=2) then
72310 select case count2
72320 case 0:
72330 if (No=-1) then
72340 'buf_day=0:buf_Day$="**"
72350 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
72360 count=0
72370 buf_buka_day=0:buf_buka_Day$="**"
72380 goto rewrite_day3:
72390 else
72400 buf_buka_day=0:buf_buka_Day$="**"
72410 ui_msg"値が範囲外です"
72420 endif
72430 goto rewrite_day3:
72440 else
72450 goto rewrite_day3:
72460 endif
72470 rewrite_day3:
72480 locate 2,3
72490 color rgb(255,255,255)
72500 print "                                      "
72510 locate 1,3
72520 print "生まれた日(1日~31日):"+buf_buka_Day$
72530 goto Buka_Input_Born_Day2:
72540 end select
72550 endif
72560 '3.部下の生まれた日'
72570 '部下'
72580 '--------------------------------------------'
72590 'ビジネの相性　結果表示
72600 Result_Business_Aisyou:
72610 cls 3:init "kb:4"
72620 a=0:b=0:c=0:d=0:e=0:f=0
72630 bg=0:key$=""
72640 gload Gazo$ + "Screen1.png",0,0,0
72650 gload Gazo$ + "downscreen.png",0,0,800
72660 sp_on 14,0
72670 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
72680 buf_Buka = Kabara_Num(d,e,f)
72690 a_2 = buf_Buka
72700 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
72710 locate 0,1
72720 color rgb(255,0,0)
72730 print "●.相性診断結果１"
72740 locate 0,4:
72750 color rgb(255,255,255)
72760 print "1.上司の名前:";buffer_name$(0)
72770 locate 0,6
72780 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
72790 locate 0,8
72800 print "2.部下の名前:";buffer_name$(1)
72810 locate 0,10
72820 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
72830 locate 0,12
72840 print "3.上司と部下の相性:";Result_Aisyou$
72850 locate 1,15
72860 color rgb(0,0,0)
72870 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
72880 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
72890 bg = strig(1)
72900 key$ = inkey$
72910 bg2 = strig(0)
72920 pause 5
72930 wend
72940 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
72950 if (bg2 = 2) then
72960 cls 3:goto Business_Aishou_Input_1_parson:
72970 endif
72980 'ビジネスの相性占い　結果2　説明
72990 Result_Business_Aisyou2:
73000 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
73010 gload Gazo$ + "Screen1.png",0,0,0
73020 locate 0,1
73030 color rgb(255,0,0)
73040 print "●.相性の説明"
73050 color rgb(255,255,255)
73060 locate 0,4
73070 print "相性:";Result_Aisyou$
73080 locate 0,6:
73090 print "相性の説明:";buf$
73100 locate 0,15
73110 color rgb(0,0,0)
73120 print "右の丸ボタン:トップ,左のボタン:前の画面"
73130 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
73140 bg = strig(1)
73150 bg2 = strig(0)
73160 key$ = inkey$
73170 pause 100
73180 wend
73190 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
73200 if ((bg2 = 2)) then goto Result_Business_Aisyou:
73210 'Birds Eye Menu List
73220 Result_Birtheye_List1:
73230 'dim List$(4) Topに定義
73240 List$(0) = "1.バーズアイグリッドをもう一度診断"
73250 List$(1) = "2.診断結果"
73260 List$(2) = "3.データーを保存"
73270 List$(3) = "4.トップ画面に戻る"
73280 Birds_List1 = ui_select("List$","Menu")
73290 select case (Birds_List1)
73300 case 0: '1.もう一度診断
73310 for i=0 to 8
73320 buffer(i)=0
73330 next i
73340 goto Input_name1_Birdseye:
73350 case 1: '2.次へ行く
73360 gosub BirdsEye_Result2:
73370 case 2: '3.データーを保存
73380 ui_msg "データーを保存します"
73390 goto BirdsEye_Save_data:
73400 case 3: '4.トップに戻る
73410 for i=0 to 8
73420 buffer(i)=0
73430 next i
73440 goto Main_Screen:
73450 end select
73460 'BirdsEye Data Save
73470 BirdsEye_Save_data:
73480 if dir$(Save_data_Birdseye$) = "" then
73490    Mkdir Save_data_Birdseye$
73500 endif
73510 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
73520 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
73530 close #1
73540 ui_msg "データーを保存しました"
73550 goto Result_Birtheye_List1:
73560 'return
73570 '自作関数 ここから
73580 BirdsEyeGrid_Entry:
73590 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
73600 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
73610 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
73620 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
73630 locate 1,4:print "右の丸:メイン画面へ行く"
73640 else
73650 flag=1
73660 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
73670 while (eof(1)=0)
73680   line input #1,a$
73690   n = n + 1
73700 wend
73710 close #1
73720 'endif
73730 talk "登録件数は"+str$(n)+"件です。"
73740 locate 1,2:print "登録件数は";str$(n);"件です"
73750 locate 1,4:print "左の丸：メイン画面へ行く"
73760 endif
73770 Entry_Count:
73780 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
73790 key$ = inkey$
73800 bg = strig(1)
73810 bg2 = strig(0)
73820 pause 200
73830 wend
73840 if ((bg = 2) or (key$ = chr$(13))) then
73850   if (n = 0) then
73860 '登録件数　０件のとき　メイン画面に行く
73870      goto Main_Screen:
73880   else
73890 '登録件数1件以上　次へ行く
73900 'ここを変更する
73910      goto Entry_List:
73920   endif
73930 endif
73940 if (bg2 = 2) then
73950    if (n > 0) then
73960       goto Main_Screen:
73970    else
73980       goto Entry_Count:
73990    endif
74000 endif
74010 Entry_List:
74020           cls 3:play"":color rgb(255,255,255)
74030           gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
74040 dim buffer_List$(11,n)
74050           'ファイル読み込み ここから
74060 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
74070 for i=0 to 10
74080 for j=0 to n-1
74090 input #1,a$
74100 buffer_List$(i,j)=a$
74110 next j
74120 next i
74130 close #1
74140 'erase buffer_List$
74150 'color rgb(255,255,255)
74160 i=0:key$="":bg=0:init"kb:4":bg2=0
74170 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
74180 key$ = inkey$
74190 bg = strig(1)
74200 bg2=strig(0)
74210 pause 200
74220 wend
74230 color rgb(0,0,0)
74240 locate 1,15:print "次へ"
74250 'show_ListData:
74260 'j=0
74270 repeat (j=0)
74280 show_ListData:
74290 cls
74300 color rgb(255,255,255)
74310 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
74320 '1の文字データー
74330 locate 4,14:print buffer_List$(2,j)
74340 '2の文字データー
74350 locate 4,9:print buffer_List$(3,j)
74360 '3の文字データー
74370 locate 4,5:print buffer_List$(4,j)
74380 '4の文字データー
74390 locate 11,14:print buffer_List$(5,j)
74400 '5の文字データー
74410 locate 11,9:PRINT buffer_List$(6,j)
74420 '6の文字データー
74430 locate 11,5:print buffer_List$(7,j)
74440 '7の文字データー
74450 locate 16,14:print buffer_List$(8,j)
74460 '8の文字データー
74470 locate 16,9:print buffer_List$(9,j)
74480 '9の文字データー
74490 locate 16,5:print buffer_List$(10,j)
74500 color rgb(0,0,0)
74510 locate 1,15:print "右の丸：次へ"
74520 if (bg=2 or key$=chr$(13)) then
74530     j=j+1
74540 endif
74550 if (bg2=2) then
74560    goto Main_Screen:
74570 endif
74580 until (j=n)
74590 'erase buffer_List$:
74600 goto show_ListData:
74610           'ファイル読み込み　ここまで
74620 func read_explain$(ba$)
74630 d$=""
74640 buf_String$=""
74650 if ba$="A" then
74660 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
74670 line input #1,a$
74680 a1$=mid$(a$,1,12)
74690 a2$=mid$(a$,13,17)
74700 a3$=mid$(a$,30,17)
74710 a4$=mid$(a$,47,18)
74720 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
74730 buf_String$ = a5$
74740 close #1
74750 endif
74760 if ba$="B"  then
74770 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
74780 line input #1,b$
74790 b1$=mid$(b$,1,15)
74800 b2$=mid$(b$,16,21)
74810 'b3$=mid$(b$,33,3)
74820 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
74830 buf_String$ = b4$
74840 close #1
74850 endif
74860 if ba$="C"  then
74870 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
74880 line input #1,c$
74890 c1$ = Mid$(c$,1,15)
74900 c2$ = Mid$(c$,16,33)
74910 c3$ = c1$ + chr$(13) + c2$
74920 buf_String$ = c3$
74930 close #1
74940 endif
74950 if ba$="D" then
74960 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
74970 line input #1,d$
74980 d1$=mid$(d$,1,15)
74990 d2$=mid$(d$,16,22)
75000 d3$=mid$(d$,38,7)
75010 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
75020 buf_String$ = d4$
75030 close #1
75040 endif
75050 if ba$="E"  then
75060 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
75070 line input #1,e$
75080 e1$=Mid$(e$,1,16)
75090 e2$=Mid$(e$,17,16)
75100 e3$=Mid$(e$,33,12)
75110 e4$=Mid$(e$,45,17)
75120 e5$=Mid$(e$,62,17)
75130 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
75140 buf_String$ = e6$
75150 close #1
75160 endif
75170 if ba$="F" then
75180 '改行を追加して表示を調整
75190 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
75200 line input #1,f$
75210 f1$=Mid$(f$,1,15)
75220 f2$=Mid$(f$,16,12)
75230 buf_String$ = f1$+chr$(13)+f2$
75240 close #1
75250 endif
75260 if ba$="G" then
75270 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
75280 line input #1,g$
75290 g1$ = mid$(g$,1,16)
75300 g2$ = mid$(g$,17,18)
75310 g3$ = mid$(g$,36,21)
75320 g4$ = mid$(g$,56,6)
75330 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
75340 buf_String$ = g5$
75350 close #1
75360 endif
75370 if ba$="H" then
75380 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
75390 line input #1,h$
75400 h1$=Mid$(h$,1,17)
75410 h2$=Mid$(h$,18,21)
75420 h3$=Mid$(h$,39,20)
75430 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
75440 buf_String$ = h$
75450 close #1
75460 endif
75470 if ba$ = "I" then
75480 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
75490 line input #1,i$
75500 i1$=Mid$(i$,1,10)
75510 i2$=Mid$(i$,11,13)
75520 i3$=Mid$(i$,25,16)
75530 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
75540 buf_String$ = i$
75550 close #1
75560 endif
75570 buffer$ = buf_String$
75580 endfunc buffer$
75590 'カバラ数（数秘番号を求める）
75600 func Kabara_Num(buffer_Year,month,day)
75610 '=============================
75620 'a1:4桁のうちの1桁目を求める
75630 '例 a1:1234の4が1桁目
75640 'a2:4桁のうちの2桁目を求める
75650 '例:a2:1234の3が2桁目
75660 'a3:4桁のうちの3桁目を求める
75670 '例 a3:1234の2が3桁目
75680 'a4:4桁のうちの4桁目を求める
75690 '例 a4:1234の1が4桁目
75700 '==============================
75710 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
75720 Year = buffer_Year
75730 '処理1　整数部分を取り出す。
75740 a4 = fix(Year / 1000)
75750 a3 = fix(Year / 100) - (a4 * 10)
75760 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
75770 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
75780 '処理　２　取り出した整数部分を足す。
75790 a_ = a1 + a2 + a3 + a4 +month + day
75800 'a1=0:a2=0:a3=0:a4=0
75810 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
75820 buffer = a_
75830 'else
75840 goto recomp2:
75850 'if (a_ = 10) then
75860 '  buffer = 1
75870 endif
75880 recomp2:
75890 a5=0:a6=0
75900 a5 = fix(a_ / 10)
75910 a6 = (a_) - (a5 * 10)
75920 a_ = a5 + a6
75930 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
75940 '結果に行く
75950 goto Res2:
75960 '  if ((a_>11) and (a_<99)) then
75970 else
75980 '再度計算
75990 goto recomp2:
76000 endif
76010 '     a1 = fix(a_ / 10)
76020 '     a2 = a_ - (a1 * 10)
76030 '     a_ = a1 + a2
76040 '     buffer = a_
76050 'endif
76060 'else
76070 '    bffer = a_
76080 'endif
76090 'endif
76100 'else
76110 'talk "プログラムを終了します。"
76120 'end
76130 'endif
76140 'kabara = 10
76150 Res2:
76160 kabara = a_
76170 endfunc kabara
76180 func Kabara_Aisyou$(buff1,buff2)
76190 a=0:b=0
76200 '範囲　1~9
76210 if ((buff1 > 0 and buff1 < 10)) then
76220 a = buff1
76230 else
76240 Select case buff1
76250 case 11:
76260 buff1=9:a=buff1
76270 case 22:
76280 buff1=10:a=buff1
76290 end select
76300 endif
76310 '範囲　１~９
76320 if ((buff2 > 0 and buff2 < 10)) then
76330 b = buff2
76340 else
76350 select case buff2
76360 case 11:
76370 buff2=9:b=buff2
76380 case 12:
76390 buff2=10:b=buff2
76400 end select
76410 endif
76420 Aisyou$ = Buffer_Business_Aisyou$(a,b)
76430 endfunc Aisyou$
76440 '=============================
76450 '自作関数 ここまで
76460 '1.数秘術　トップ画面
76470 '
76480 'Data_eraseを一番最後に持ってくる
76490 '=============================
76500 Data_erase:
76510 'メモリー削除
76520 erase buf_male_year
76530 erase buf_male_month
76540 erase buf_male_Born_Day
76550 erase buf_feMale_Born_Day
76560 erase buf_female_day
76570 erase buf_name1$
76580 erase buf_name2$
76590 erase buffer
76600 erase buf_chart$
76610 erase Buffer_Business_Aisyou$
76620 erase buffer_name$
76630 '上司の誕生日
76640 erase buf_Jyoushi_Born_Day
76650 '部下の誕生日
76660 erase buf_Buka_Born_Day
76670 erase buf_year
76680 erase buf_month
76690 erase buf_day
76700 'フォーカスライン
76710 erase Forcus1_buffer$
76720 erase Forcus2_buffer$
76730 erase Forcus3_buffer$
76740 'erase buffer_List$
76750 'Birds eye List Data 配列
76760 erase List$
76770 buffer$ = ""
76780 buf$ = ""
76790 buf_year$ = ""
76800 buf_Jyoushi_Kabara_Num = 0
76810 buf_Buka_Kabara_Num = 0
76820 count = 0
76830 buf_Month$ = ""
76840 buf_Day$ = ""
76850 b=0
76860 c=0
76870 return
