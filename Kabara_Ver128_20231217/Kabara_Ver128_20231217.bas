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
480 Version$ = "Ver:1.2.8_20231217"
490 'Gazo file Folder
500 Gazo$ = "./data/Picture/"
510 'Voice files 2023
520 Voice$ = "./data/Voice/Voice/"
530 'BirtheyeChart Data:20230626
540 Birth_eye_chart$ = "./data/chart_data/"
550 'Data File
560 Data$ = "./data/data/"
570 'Business Aisyou 結果説明保存フォルダ
580 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
590 'Save BirdsEyeGrit List
600 Save_data_Birdseye$ = "./data/Parsonal_data/"
610 '変数定義 パート
620 b=0:c=0
630 dim buf_name1$(10),buf_name2$(10)
640 dim buffer(9),buf_chart$(26,2)
650 'ビジネスの相性　データー
660 dim Buffer_Business_Aisyou$(12,12)
670 '男女の相性
680 dim Buffer_Bitween_sexes_Aisyou$(12,12)
690 '生れた年代
700 dim buf_year(4):buf_year$ = ""
710 dim buf_month(2)
720 dim buf_day(2)
730 'フォーカスライン　配列
740 dim Forcus1_buffer$(3)
750 dim Forcus2_buffer$(3)
760 dim Forcus3_buffer$(2)
770 '生れた月
780 buf_Month$ = ""
790 '生れた日
800 buf_Day$ = ""
810 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
820 dim buffer_name$(3)
830 '1-1.上司の誕生日(数値データー)
840 dim buf_Jyoushi_Born_Day(3)
850 '1-2.上司の数秘ナンバー(数値データー)
860 buf_Jyoushi_Kabara_Num = 0
870 '2-1.部下の誕生日(数値データー)
880 dim buf_Buka_Born_Day(3)
890 '2-2.部下の数秘ナンバー(数秘データー)
900 buf_Buka_Kabara_Num = 0
910 dim buf_male_year(4)
920 dim buf_male_month(2)
930 dim buf_male_Born_Day(2)
940 dim buf_feMale_Born_Day(2)
950 dim buf_female_day(2)
960 count=0
970 'Birds Eye List 配列
980 dim List$(6)
990 '部下の数秘ナンバー
1000 'File 読み込み
1010 '1.ビジネスの相性占い
1020 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1030 for i=0 to 11
1040 for j=0 to 11
1050 input #1,a$
1060 Buffer_Business_Aisyou$(j,i) = a$
1070 next j
1080 next i
1090 close #1
1100 '2.男女の相性占い
1110 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1120 for i=0 to 11
1130 for j=0 to 11
1140 input #1,a$
1150 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1160 next j
1170 next i
1180 close #1
1190 '2.Birth Eye chart$
1200 '2.バーズアイグリッドを読み込む
1210 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1220 for j=0 to 25
1230 for i=0 to 1
1240 input #1,a$
1250 buf_chart$(j,i) = a$
1260 next i
1270 next j
1280 close #1
1290 'File 読み込み　ここまで
1300 'Main画面
1310 screen 1,1,1,1
1320 Main_Screen:
1330 cls 3:
1340 No=0
1350 gload Gazo$ + "Selection.png",1,5,200
1360 gload Gazo$ + "Selection.png",1,5,300
1370 gload Gazo$ + "Selection.png",1,5,400
1380 gload Gazo$ + "Selection.png",1,5,500
1390 '4
1400 gload Gazo$ + "Selection.png",1,35,300
1410 '5
1420 gload Gazo$ + "Selection.png",1,35,400
1430 '6
1440 gload Gazo$ + "Selection.png",1,35,500
1450 '7
1460 gload Gazo$ + "Selection.png",1,70,300
1470 '8
1480 gload Gazo$ + "Selection.png",1,70,400
1490 '9
1500 gload Gazo$ + "Selection.png",1,70,500
1510 '10
1520 gload Gazo$ + "Selection.png",1,110,300
1530 '11
1540 gload Gazo$ + "Selection.png",1,110,400
1550 '12
1560 gload Gazo$ + "Selection.png",1,110,500
1570 '13:0
1580 gload Gazo$ + "Selection.png",1,150,400
1590 gload Gazo$ + "Selection.png",1,200,400
1600 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1610 '選択肢の丸
1620 gload Gazo$ + "downscreen.png",0,0,800
1630 sp_def 0,(5,300),32,32
1640 sp_def 1,(5,400),32,32
1650 sp_def 2,(5,500),32,32
1660 sp_def 3,(5,600),32,32
1670 '1
1680 sp_def 4,(35,300),32,32
1690 '2
1700 sp_def 5,(35,400),32,32
1710 '3
1720 sp_def 6,(35,500),32,32
1730 '4
1740 sp_def 7,(70,300),32,32
1750 '5
1760 sp_def 8,(70,400),32,32
1770 '6
1780 sp_def 9,(70,500),32,32
1790 '7
1800 sp_def 10,(110,300),32,32
1810 '8
1820 sp_def 11,(110,400),32,32
1830 '9
1840 sp_def 12,(110,400),32,32
1850 sp_def 13,(150,400),32,32
1860 sp_def 14,(200,400),32,32
1870 'Sprite OFF
1880 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1890 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1900 sp_put 0,(5,300),0,0
1910 sp_put 1,(5,400),1,0
1920 sp_put 2,(5,500),2,0
1930 sp_put 3,(5,600),3,0
1940 '1
1950 sp_put 4,(130,300),4,0
1960 '2
1970 sp_put 5,(130,400),5,0
1980 '3
1990 sp_put 6,(130,500),6,0
2000 '4
2010 sp_put 7,(340,300),7,0
2020 '5
2030 sp_put 8,(340,400),8,0
2040 '6
2050 sp_put 9,(340,500),9,0
2060 '7
2070 sp_put 10,(540,300),10,0
2080 '8
2090 sp_put 11,(540,400),11,0
2100 '9
2110 sp_put 12,(540,500),12,0
2120 '
2130 sp_put 13,(340,600),13,0
2140 sp_put 14,(540,600),14,0
2150 Main_Top:
2160 'Main Message 2023.06.07
2170 '再生を止める
2180 play ""
2190 init "kb:4"
2200 'font 32:
2210 font 48
2220 print chr$(13) + chr$(13) + chr$(13)
2230 color rgb(217,255,212)
2240 print "番号を選んでください" + chr$(13)
2250 '0
2260 print " :1.数秘術占い" + chr$(13)
2270 '1
2280 print " :2.設 定" + chr$(13)
2290 '2
2300 print " :3.ヘルプ" + chr$(13)
2310 '3
2320 print " :4.(プログラムを)終了する" + chr$(13)
2330 COLOR rgb(0,0,0):No=0
2340 locate 1,15
2350 print "                                       "
2360 locate 1,15:print "1.数秘術占いを選択"
2370 play Voice$ + "Voice_Main_Message_20230607.mp3"
2380 Main_Screen_Select:
2390 y = 0:key$ = "":bg = 0:bg2=0
2400 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2410 y = stick(1)
2420 '"May (2023)"
2430 key$ = inkey$
2440 bg = strig(1)
2450 bg2 = strig(0)
2460 pause 200
2470 wend
2480 '1.
2490 'ジョイパッドのソース ソート　ここから
2500 'カーソル　下 or 十字キー下
2510 if ((y = 1) or (key$ = chr$(31))) then
2520 select case No
2530 case 0:
2540 '1
2550 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2560 case 1:
2570 '2
2580 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2590 case 2:
2600 '3
2610 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2620 case 3:
2630 '0
2640 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2650 end select
2660 endif
2670 '2.
2680 'カーソル　上　or 十字キー  上
2690 if ((y = -1) or (key$ = chr$(30))) then
2700 select case No
2710 case 0:
2720 '3
2730 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2740 case 1:
2750 '0
2760 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2770 case 2:
2780 '1
2790 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2800 case 3:
2810 '2
2820 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2830 end select
2840 endif
2850 'ジョイパッド　ソース 部分　ここまで
2860 'ジョイパッド右　　or Enter key 決定
2870 if ((bg = 2) OR (key$ = chr$(13))) then
2880 select case No
2890 case 0:
2900 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2910 case 1:
2920 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
2930 case 2:
2940 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
2950 case 3:
2960 play "":pause 200
2970 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
2980 end select
2990 endif
3000 if (bg2 = 2) then
3010 play "":pause 200
3020 play Voice$ + "Voice_Main_Message_20230607.mp3"
3030 goto Main_Screen_Select:
3040 endif
3050 'Version
3060 Version:
3070 cls 3:PLAY ""
3080 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3090 gload Gazo$ + "downscreen.png",0,0,800
3100 init"kb:4":font 32+8
3110 'talk"バージョン情報です"
3120 'Message :Version
3130 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3140 locate 0,3
3150 color rgb(0,0,0)
3160 print "・Title:数秘術占い";chr$(13)
3170 print "・" + Version$ + chr$(13)
3180 print "・Author:licksjp"+chr$(13)
3190 print "・E-mail:licksjp@gmail.com" + chr$(13)
3200 locate 0,12
3210 print "(C)licksjp All rights " + chr$(13)
3220 locate 7,13
3230 print "reserved since 2009"+chr$(13)
3240 locate 0,18
3250 color rgb(255,255,255)
3260 print "ジョイパッドの右を押してください"
3270 Versionn_Selection:
3280 bg = 0:key$ = "":bg2 = 0
3290 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3300 bg = strig(1)
3310 key$ = inkey$
3320 bg2 = strig(0)
3330 pause 2
3340 wend
3350 if ((bg = 2) or (key$ = chr$(13))) then
3360 pause 200:cls 4:goto Main_Screen:
3370 endif
3380 if (bg2=2) then
3390 play "":pause 200
3400 play Voice$ + "Voice_Version_Message_20230607.mp3"
3410 goto Versionn_Selection:
3420 endif
3430 '1.数秘ナンバーを求める
3440 '誕生日入力(生れた年代)
3450 Input_Seireki:
3460 cls 3:play "":count=0:count2=0
3470 'No = -1:Okのとき
3480 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3490 for i=0 to 3
3500 buf_year(i)=0
3510 next i
3520 gload Gazo$ + "Screen1.png",0,0,0
3530 gload Gazo$ + "downscreen.png",0,0,800
3540 'Init"kb:2"
3550 '音声ファイル再生 2023.06.07
3560 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3570 font 48
3580 locate 0,1
3590 '文字色：黒　 color rgb(0,0,0)
3600 color rgb(255,255,255)
3610 print "生まれた年代を入れて下さい" + chr$(13)
3620 color rgb(255,255,255)
3630 locate 2,3
3640 print "生まれた年代(西暦4桁):" + buf_year$
3650 '=============================
3660 'テンキーの色(1~９)　白 ,決定ボタン　青
3670 '=============================
3680 color rgb(255,255,255)
3690 'locate 4,6:print ":7"
3700 'locate 9,6:print ":8"
3710 'locate 12,6:print ":9"
3720 locate 4,6
3730 print ":7  :8  :9" + chr$(13)
3740 color rgb(255,255,255)
3750 locate 4,8
3760 print ":4  :5  :6" + chr$(13)
3770 color rgb(255,255,255)
3780 locate 4,10
3790 print ":1  :2  :3" + chr$(13)
3800 locate 4,12
3810 print "    :0"
3820 locate 12,12
3830 color rgb(255,0,0)
3840 print ":Ok"
3850 sp_on 4,0: sp_on 5,0:sp_on 6,0
3860 sp_on 7,0:sp_on 8,0:sp_on 9,0
3870 sp_on 10,0:sp_on 11,0:sp_on 12,0
3880 sp_on 13,0:sp_on 14,1
3890 Input_Seireki2:
3900 key$="":bg=0:y=0:y2=0:bg2=0:
3910 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
3920 key$ = inkey$
3930 bg = strig(1)
3940 y = stick(1)
3950 y2 = stick(0)
3960 bg2 = strig(0)
3970 pause 15
3980 wend
3990 '十字キー　ここから
4000 '上の矢印　または、十字キー上
4010 if ((y = -1) or (key$ = chr$(30))) then
4020 select case No
4030 'No=-1:okのとき:初期の状態
4040 '0kボタンから３に移動
4050 '上に行く 処理
4060 case -1:
4070 No=3:sp_on 12,1:sp_on 14,0
4080 pause 200:goto Input_Seireki2:
4090 '選択肢:3
4100 '3ボタンから 6に移動
4110 case 3:
4120 No=6:sp_on 12,0:sp_on 11,1
4130 pause 200:goto Input_Seireki2:
4140 '6ボタンから ９に移動
4150 case 6:
4160 No=9:sp_on 10,1:sp_on 11,0
4170 pause 200:goto Input_Seireki2:
4180 '6ボタンから ９に移動　ここまで
4190 '9で上を押して何もしない
4200 case 9:
4210 '何もしない
4220 No=9
4230 pause 200:goto Input_Seireki2:
4240 '9で上を押しても何もしない　ここまで
4250 '上　 0ボタンから2ボタン
4260 'sp_on 6,1:1
4270 'sp_on 8,1:5
4280 'sp_on 7,1:7
4290 case 0:
4300 No=2:sp_on 13,0:sp_on 9,1:
4310 pause 200:goto Input_Seireki2:
4320 '上  0ボタンから2ボタン　ここまで
4330 '2から５になる 上
4340 case 2:
4350 No=5:sp_on 8,1:sp_on 9,0:
4360 pause 200:goto Input_Seireki2:
4370 case 5:
4380 No=8:sp_on 7,1:sp_on 8,0
4390 pause 200:goto Input_Seireki2:
4400 case 8:
4410 pause 200:goto Input_Seireki2:
4420 case 1:
4430 No=4:sp_on 5,1:sp_on 6,0
4440 pause 200:goto Input_Seireki2:
4450 case 4:
4460 No=7:sp_on 4,1:sp_on 5,0
4470 pause 200:goto Input_Seireki2:
4480 case 7:
4490 pause 200:goto Input_Seireki2:
4500 end select
4510 endif
4520 '左３　ここまで
4530 '下の矢印
4540 '中央 2
4550 if ((y=1) or (key$ = chr$(31))) then
4560 select case No
4570 '9から６に下げる
4580 case 9:
4590 No=6:sp_on 11,1:sp_on 10,0
4600 pause 200:goto Input_Seireki2:
4610 '6から３に下げる
4620 case 6:
4630 No=3:sp_on 12,1:sp_on 11,0
4640 pause 200:goto Input_Seireki2:
4650 '3から０ｋに変える
4660 case 3:
4670 No=-1:sp_on 14,1:sp_on 12,0
4680 pause 200:goto Input_Seireki2:
4690 'Okから下のボタンを押しても何もしない
4700 case -1:
4710 pause 200:goto Input_Seireki2:
4720 case 8:
4730 No=5:sp_on 8,1:sp_on 7,0
4740 pause 200:goto Input_Seireki2:
4750 case 5:
4760 No=2:sp_on 9,1:sp_on 8,0
4770 pause 200:goto Input_Seireki2:
4780 case 2:
4790 No=0:sp_on 13,1:sp_on 9,0
4800 pause 200:goto Input_Seireki2:
4810 case 0:
4820 pause 200:goto Input_Seireki2:
4830 case 7:
4840 No=4:sp_on 5,1:sp_on 4,0
4850 pause 200:goto Input_Seireki2:
4860 case 4:
4870 No=1:sp_on 6,1:sp_on 5,0
4880 pause 200:goto Input_Seireki2:
4890 case 1:
4900 pause 200:goto Input_Seireki2:
4910 end select
4920 endif
4930 '左へボタン 十字キー　左　or 　カーソル左
4940 if ((y2 = -1) or (key$ = chr$(29))) then
4950 select case No
4960 'Ok ボタン  Okから　左　０に行く
4970 case -1:
4980 No=0:sp_on 13,1:sp_on 14,0
4990 pause 200:goto Input_Seireki2:
5000 '0 ボタン  左　何もしない
5010 case 0:
5020 pause 200:goto Input_Seireki2:
5030 case 3:
5040 No=2:sp_on 9,1:sp_on 12,0:
5050 pause 200:goto Input_Seireki2:
5060 case 2:
5070 No=1:sp_on 6,1:sp_on 9,0:
5080 pause 200:goto Input_Seireki2:
5090 case 1:
5100 pause 200:goto Input_Seireki2:
5110 case 6:
5120 No=5:sp_on 8,1:sp_on 11,0
5130 pause 200:goto Input_Seireki2:
5140 case 5:
5150 No=4:sp_on 5,1:sp_on 8,0
5160 pause 200:goto Input_Seireki2:
5170 case 4:
5180 pause 200:goto Input_Seireki2:
5190 case 9:
5200 No=8:sp_on 7,1:sp_on 10,0
5210 pause 200:goto Input_Seireki2:
5220 case 8:
5230 No=7:sp_on 4,1:sp_on 7,0
5240 pause 200:goto Input_Seireki2:
5250 case 7:
5260 pause 200:goto Input_Seireki2:
5270 end select
5280 endif
5290 '右  十字キー　右　or カーソル　右
5300 if ((y2 = 1) or (key$ = chr$(28))) then
5310 select case No
5320 '0ボタンからokボタン右に移動
5330 case 0:
5340 No=-1:sp_on 14,1:sp_on 13,0
5350 pause 200:goto Input_Seireki2:
5360 '0ボタンからokボタン 右に移動　ここまで
5370 'OKボタンで右を押して何もしない
5380 case -1:
5390 pause 200:goto Input_Seireki2:
5400 case 1:
5410 No=2:sp_on 9,1:sp_on 6,0
5420 pause 200:goto Input_Seireki2:
5430 case 2:
5440 No=3:sp_on 12,1:sp_on 9,0
5450 pause 200:goto Input_Seireki2:
5460 case 3:
5470 pause 200:goto Input_Seireki2:
5480 case 4:
5490 No=5:sp_on 8,1:sp_on 5,0
5500 pause 200:goto Input_Seireki2:
5510 case 5:
5520 No=6:sp_on 11,1:sp_on 8,0
5530 pause 200:goto Input_Seireki2:
5540 case 7:
5550 No=8:sp_on 7,1:sp_on 4,0
5560 pause 200:goto Input_Seireki2:
5570 case 8:
5580 No=9:sp_on 10,1:sp_on 7,0
5590 pause 200:goto Input_Seireki2:
5600 case 9:
5610 pause 200:goto Input_Seireki2:
5620 case 6:
5630 pause 200:goto Input_Seireki2:
5640 end select
5650 'Okから右ボタンを押して何もしない ここまで
5660 endif
5670 '十字キー　ここまで
5680 if ((bg=2) or (key$=chr$(13))) then
5690 select case count
5700 case 0:
5710 count=1
5720 if (No=-1) then
5730 count=0
5740 'Okボタンを押したとき
5750 goto Input_Seireki2:
5760 else
5770 '===================================
5780 'Okボタン以外が押されたとき  1桁目の入力
5790 '===================================
5800 count2=1
5810 if (No >= 1 and No <= 2) then
5820 buf_year$="":buf_year$ = str$(No)
5830 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5840 n1 = len("生まれた年代(西暦4桁): ")
5850 locate 2,3
5860 color rgb(255,255,255)
5870 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5880 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5890 'print "生まれた年代(西暦4桁):";buf_year2$
5900 print buf_Born_Year_line$
5910 goto Input_Seireki2:
5920 else
5930 count=0
5940 ui_msg"数字が範囲外になります。"
5950 buf_year$="":buf_year=0
5960 goto Input_Seireki2:
5970 endif
5980 endif
5990 case 1:
6000 count = 2
6010 if (No = -1) then
6020 count = 1
6030 goto Input_Seireki2:
6040 else
6050 count2 = 1
6060 b = val(buf_year$)
6070 buf_year = b * 10 + No
6080 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6090 locate 2,3
6100 color rgb(255,255,255)
6110 print "                                                                "
6120 locate 2,3
6130 print "生まれた年代(西暦4桁):";buf_year2$
6140 'if (No = -1) then
6150 'count=1
6160 goto Input_Seireki2:
6170 endif
6180 case 2:
6190 count=3
6200 if (No=-1) then
6210 count =2
6220 goto Input_Seireki2:
6230 else
6240 b = val(buf_year$)
6250 buf_year = b*10 + No
6260 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6270 locate 2,3
6280 color rgb(255,255,255)
6290 print "                                        "
6300 locate 2,3
6310 print "生まれた年代(西暦4桁):";buf_year2$
6320 goto Input_Seireki2:
6330 endif
6340 case 3:
6350 count=4
6360 if (No = -1) then
6370 count=3
6380 goto Input_Seireki2:
6390 else
6400 b = val(buf_year$)
6410 buf_year = b * 10 + No
6420 buf_year$ = str$(buf_year)
6430 locate 2,3
6440 color RGB(255,255,255)
6450 print "                                      "
6460 locate 2,3
6470 print "生まれた年代(西暦4桁):";buf_year$
6480 buf_year=val(buf_year$)
6490 'year=val(buf_year$)
6500 'if (No=-1) then
6510 'goto Input_Born_Month:
6520 'else
6530 goto Input_Seireki2:
6540 endif
6550 case 4:
6560 'bufyear=buf_year
6570 if (No = -1) then
6580 buf_year = val(buf_year$)
6590 bufyear = buf_year
6600 sp_on 14,0
6610 goto Input_Born_Month:
6620 else
6630 goto Input_Seireki2:
6640 endif
6650 end select
6660 endif
6670 '=========================
6680 'bg2　キャンセルボタン
6690 '=========================
6700 if (bg2 = 2) then
6710 select case count2
6720 case 0:
6730 'Okボタンを押したときの処理
6740 if (No = -1) then
6750 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6760 'count = 0
6770 locate 2,3
6780 color rgb(255,255,255)
6790 print "                                      "
6800 locate 2,3
6810 print "生まれた年代（西暦4桁):";buf_year$
6820 '=============================
6830 'case 0:前の画面に戻る 数秘術トップメニュー
6840 '=============================
6850 sp_on 14,0:goto Kabara_TopScreen:
6860 else
6870 'count=0
6880 '(buf_year=0) then
6890 buf_year = 0:buf_year$ = string$(4,"*")
6900 goto Input_Seireki2:
6910 'endif
6920 endif
6930 case 1:
6940 if (No = -1) then
6950 count2 = 0:count = 0
6960 buf$=right$(buf_year$,1)
6970 if (val(buf$) >= 1 and val(buf$) <= 9) then
6980 buf_year$ = "****":buf_year=0
6990 color rgb(255,255,255)
7000 locate 0,3:
7010 print "                                      "
7020 locate 2,3
7030 print "生まれた年代（西暦4桁):" + buf_year$
7040 goto Input_Seireki2:
7050 endif
7060 else
7070 endif
7080 end select
7090 endif
7100 end
7110 'Input"生れた年代(4桁,〜2025年):",year
7120 'if year > 2025 then goto Input_Seireki:
7130 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7140 '"4桁目"
7150 'bufyear4 = fix(year / 1000)
7160 '"3桁目"
7170 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
7180 '"2桁目"
7190 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
7200 '"1桁目"
7210 'bufyear1 = fix((year - ((bufyear4*
7220 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
7230 '生れた月を入力
7240 Input_Born_Month:
7250 cls 3:play "":count=0:count2=0
7260 'No=-1:Okのとき
7270 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7280 for i=0 to 1
7290 buf_month(i)=0
7300 next i
7310 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7320 gload Gazo$ + "Screen1.png",0,0,0
7330 gload Gazo$ + "downscreen.png",0,0,800
7340 'Init"kb:2"
7350 '音声ファイル再生 2023.06.07
7360 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7370 font 48
7380 locate 0,1
7390 '文字色：黒　 color rgb(0,0,0)
7400 '文字色:白
7410 color rgb(255,255,255)
7420 print "生まれた月を入れて下さい" + chr$(13)
7430 '文字色:白
7440 color rgb(255,255,255)
7450 locate 2,3
7460 '文字色:白
7470 print "生まれた月(1月~12月):";buf_Month$
7480 color rgb(255,255,255)
7490 'locate 4,6:print ":7"
7500 'locate 9,6:print ":8"
7510 'locate 12,6:print ":9"
7520 locate 4,6
7530 '文字色:赤
7540 print ":7  :8  :9" + chr$(13)
7550 color rgb(255,255,255)
7560 locate 4,8
7570 print ":4  :5  :6" + chr$(13)
7580 color rgb(255,255,255)
7590 locate 4,10
7600 print ":1  :2  :3" + chr$(13)
7610 locate 4,12
7620 print "    :0"
7630 locate 12,12
7640 color rgb(255,0,0)
7650 print ":Ok"
7660 sp_on 4,0: sp_on 5,0:sp_on 6,0
7670 sp_on 7,0:sp_on 8,0:sp_on 9,0
7680 sp_on 10,0:sp_on 11,0:sp_on 12,0
7690 sp_on 13,0:sp_on 14,1
7700 Input_Born_Month2:
7710 key$="":bg=0:y=0:y2=0:bg2=0
7720 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7730 key$ = inkey$
7740 bg = strig(1)
7750 y = stick(1)
7760 y2 = stick(0)
7770 bg2 = strig(0)
7780 pause 5
7790 wend
7800 '十字キー　ここから
7810 '上の矢印　または、十字キー上
7820 if ((y = -1) or (key$ = chr$(30))) then
7830 select case No
7840 'No=-1:okのとき:初期の状態
7850 '0kボタンから３に移動
7860 '上に行く 処理
7870 case -1:
7880 No=3:sp_on 12,1:sp_on 14,0
7890 pause 200:goto Input_Born_Month2:
7900 '選択肢:3
7910 '3ボタンから 6に移動
7920 case 3:
7930 No=6:sp_on 12,0:sp_on 11,1
7940 pause 200:goto Input_Born_Month2:
7950 '6ボタンから ９に移動
7960 case 6:
7970 No=9:sp_on 10,1:sp_on 11,0
7980 pause 200:goto Input_Born_Month2:
7990 '6ボタンから ９に移動　ここまで
8000 '9で上を押して何もしない
8010 case 9:
8020 '何もしない
8030 No=9
8040 pause 200:goto Input_Born_Month2:
8050 '9で上を押しても何もしない　ここまで
8060 '上　 0ボタンから2ボタン
8070 'sp_on 6,1:1
8080 'sp_on 8,1:5
8090 'sp_on 7,1:7
8100 case 0:
8110 No=2:sp_on 13,0:sp_on 9,1:
8120 pause 200:goto Input_Born_Month2:
8130 '上  0ボタンから2ボタン　ここまで
8140 '2から５になる 上
8150 case 2:
8160 No=5:sp_on 8,1:sp_on 9,0:
8170 pause 200:goto Input_Born_Month2:
8180 case 5:
8190 No=8:sp_on 7,1:sp_on 8,0
8200 pause 200:goto Input_Born_Month2:
8210 case 8:
8220 pause 200:goto Input_Born_Month2:
8230 case 1:
8240 No=4:sp_on 5,1:sp_on 6,0
8250 pause 200:goto Input_Born_Month2:
8260 case 4:
8270 No=7:sp_on 4,1:sp_on 5,0
8280 pause 200:goto Input_Born_Month2:
8290 case 7:
8300 pause 200:goto Input_Born_Month2:
8310 end select
8320 endif
8330 '左３　ここまで
8340 '下の矢印
8350 '中央 2
8360 if ((y=1) or (key$ = chr$(31))) then
8370 select case No
8380 '9から６に下げる
8390 case 9:
8400 No=6:sp_on 11,1:sp_on 10,0
8410 pause 200:goto Input_Born_Month2:
8420 '6から３に下げる
8430 case 6:
8440 No=3:sp_on 12,1:sp_on 11,0
8450 pause 200:goto Input_Born_Month2:
8460 '3から０ｋに変える
8470 case 3:
8480 No=-1:sp_on 14,1:sp_on 12,0
8490 pause 200:goto Input_Born_Month2:
8500 'Okから下のボタンを押しても何もしない
8510 case -1:
8520 pause 200:goto Input_Born_Month2:
8530 case 8:
8540 No=5:sp_on 8,1:sp_on 7,0
8550 pause 200:goto Input_Born_Month2:
8560 case 5:
8570 No=2:sp_on 9,1:sp_on 8,0
8580 pause 200:goto Input_Born_Month2:
8590 case 2:
8600 No=0:sp_on 13,1:sp_on 9,0
8610 pause 200:goto Input_Born_Month2:
8620 case 0:
8630 pause 200:goto Input_Born_Month2:
8640 case 7:
8650 No=4:sp_on 5,1:sp_on 4,0
8660 pause 200:goto Input_Born_Month2:
8670 case 4:
8680 No=1:sp_on 6,1:sp_on 5,0
8690 pause 200:goto Input_Born_Month2:
8700 case 1:
8710 pause 200:goto Input_Born_Month2:
8720 end select
8730 endif
8740 '左へボタン 十字キー　左　or 　カーソル左
8750 if ((y2 = -1) or (key$ = chr$(29))) then
8760 select case No
8770 'Ok ボタン  Okから　左　０に行く
8780 case -1:
8790 No=0:sp_on 13,1:sp_on 14,0
8800 pause 200:goto Input_Born_Month2:
8810 '0 ボタン  左　何もしない
8820 case 0:
8830 pause 200:goto Input_Born_Month2:
8840 case 3:
8850 No=2:sp_on 9,1:sp_on 12,0:
8860 pause 200:goto Input_Born_Month2:
8870 case 2:
8880 No=1:sp_on 6,1:sp_on 9,0:
8890 pause 200:goto Input_Born_Month2:
8900 case 1:
8910 pause 200:goto Input_Born_Month2:
8920 case 6:
8930 No=5:sp_on 8,1:sp_on 11,0
8940 pause 200:goto Input_Born_Month2:
8950 case 5:
8960 No=4:sp_on 5,1:sp_on 8,0
8970 pause 200:goto Input_Born_Month2:
8980 case 4:
8990 pause 200:goto Input_Born_Month2:
9000 case 9:
9010 No=8:sp_on 7,1:sp_on 10,0
9020 pause 200:goto Input_Born_Month2:
9030 case 8:
9040 No=7:sp_on 4,1:sp_on 7,0
9050 pause 200:goto Input_Born_Month2:
9060 case 7:
9070 pause 200:goto Input_Born_Month2:
9080 end select
9090 endif
9100 '右  十字キー　右　or カーソル　右
9110 if ((y2 = 1) or (key$ = chr$(28))) then
9120 select case No
9130 '0ボタンからokボタン右に移動
9140 case 0:
9150 No=-1:sp_on 14,1:sp_on 13,0
9160 pause 200:goto Input_Born_Month2:
9170 '0ボタンからokボタン 右に移動　ここまで
9180 'OKボタンで右を押して何もしない
9190 case -1:
9200 pause 200:goto Input_Born_Month2:
9210 case 1:
9220 No=2:sp_on 9,1:sp_on 6,0
9230 pause 200:goto Input_Born_Month2:
9240 case 2:
9250 No=3:sp_on 12,1:sp_on 9,0
9260 pause 200:goto Input_Born_Month2:
9270 case 3:
9280 pause 200:goto Input_Born_Month2:
9290 case 4:
9300 No=5:sp_on 8,1:sp_on 5,0
9310 pause 200:goto Input_Born_Month2:
9320 case 5:
9330 No=6:sp_on 11,1:sp_on 8,0
9340 pause 200:goto Input_Born_Month2:
9350 case 7:
9360 No=8:sp_on 7,1:sp_on 4,0
9370 pause 200:goto Input_Born_Month2:
9380 case 8:
9390 No=9:sp_on 10,1:sp_on 7,0
9400 pause 200:goto Input_Born_Month2:
9410 case 9:
9420 pause 200:goto Input_Born_Month2:
9430 case 6:
9440 pause 200:goto Input_Born_Month2:
9450 end select
9460 'Okから右ボタンを押して何もしない ここまで
9470 endif
9480 '十字キー　ここまで
9490 '右の丸ボタン　決定キー
9500 if ((bg=2) or (key$=chr$(13))) then
9510 select case count
9520 case 0:
9530 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9540 if (buf_month = 1 or buf_month = 2) then
9550 locate 2,3
9560 color RGB(255,255,255)
9570 print "生まれた月(1月~12月):";buf_Month2$
9580 else
9590 locate 2,3
9600 color Rgb(255,255,255)
9610 print "生まれた月(1月~12月):";buf_Month$
9620 endif
9630 goto Input_Born_Month2:
9640 case 1:
9650 count = 2:c = No
9660 c = val(buf_Month$)
9670 if (No = -1) then
9680 'if No=1 or No=2 then
9690 'endif
9700 month = buf_month
9710 buf_month=val(buf_Month$)
9720 month=buf_month
9730 '生まれた日に飛ぶ
9740 goto Input_Born_Day:
9750 else
9760 buf_month = c*10 + No
9770 buf_Month$= str$(buf_month)
9780 locate 2,3
9790 color Rgb(255,255,255)
9800 print "生まれた月(1月~12月):";buf_Month$
9810 goto Input_Born_Month2:
9820 endif
9830 case 2:
9840 count=3:count2=1
9850 'c= val(buf_Month$)
9860 'buf_month = c*10 + No
9870 'buf_Month$ = str$(buf_month)
9880 'locate 2,3
9890 'print "生まれた月(1月～12月):";buf_Month$
9900 'goto Input_Born_Month2:
9910 'case 3:
9920 'count=4
9930 'b=val(buf_month$)
9940 'buf_month=c*10+No
9950 'buf_Month$=str$(buf_month)
9960 'locate 2,3
9970 'print "生まれた月(1月～12月):";buf_Month$
9980 'buf_month=val(buf_Month$)
9990 'year=val(buf_year$)
10000 if (No=-1) then
10010 goto Input_Born_Day:
10020 else
10030 'goto Input_Born_Month2:
10040 endif
10050 'case 4:
10060 'bufyear=buf_year
10070 'if (No=-1) then
10080 'buf_month = val(buf_Month$)
10090 'month = buf_month
10100 'sp_on 14,0
10110 'goto Input_Born_Day:
10120 'else
10130 'goto Input_Born_Month2:
10140 'endif
10150 end select
10160 endif
10170 '左の丸ボタン　キャンセル
10180 if (bg2=2) then
10190 select case count2
10200 case 0:
10210 if (No = -1) then
10220 buf_month=0:buf_Month$="**"
10230 count2=0:count=0
10240 locate 0,3:print "                                              "
10250 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10260 'if (buf_month > 1) then
10270 sp_on 14,0:goto Input_Born_Month2:
10280 'goto rewrite:
10290 else
10300 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10310 buf_month=0:buf_Month$="**"
10320 locate 2,3
10330 color rgb(255,255,255)
10340 print "                                       "
10350 goto rewrite:
10360 if (No>2) then
10370 ui_msg"値が範囲外です。"
10380 goto rewrite:
10390 endif
10400 endif
10410 'endif
10420 rewrite:
10430 locate 2,3
10440 color rgb(255,255,255)
10450 print "                                      "
10460 locate 2,3
10470 print "生まれた月(1月~12月):";buf_Month$
10480 goto Input_Born_Month2:
10490 endif
10500 case 1:
10510 buf_Month$="**":buf_month=0
10520 if No=-1 then
10530 count2=2:count=0
10540 locate 0,3
10550 print "                                      "
10560 locate 2,3:
10570 print "生まれた月(1月~12月):"+buf_Month$
10580 goto Input_Born_Month2:
10590 endif
10600 case 2:
10610 sp_on 14,0:goto Input_Seireki:
10620 end select
10630 endif
10640 'endif
10650 end
10660 'end
10670 '生れた日を入力
10680 Input_Born_Day:
10690 '生まれた日入力
10700 cls 3:play ""
10710 'No=-1:Okのとき
10720 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10730 for i=0 to 1
10740 buf_day(i)=0
10750 next i
10760 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10770 gload Gazo$ + "Screen1.png",0,0,0
10780 gload Gazo$ + "downscreen.png",0,0,800
10790 'Init"kb:2"
10800 '音声ファイル再生 2023.06.07
10810 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10820 font 48
10830 locate 0,1
10840 '文字色：黒　 color rgb(0,0,0)
10850 color rgb(255,255,255)
10860 print "生まれた日を入れて下さい" + chr$(13)
10870 color rgb(255,255,255)
10880 locate 2,3
10890 print "生まれた日(1日~31日):";buf_Day$
10900 color rgb(255,255,255)
10910 'locate 4,6:print ":7"
10920 'locate 9,6:print ":8"
10930 'locate 12,6:print ":9"
10940 locate 4,6
10950 print ":7  :8  :9" + chr$(13)
10960 '=======================
10970 'テンキー　色　白　決定ボタン　青
10980 '=======================
10990 color rgb(255,255,255)
11000 locate 4,8
11010 print ":4  :5  :6" + chr$(13)
11020 color rgb(255,255,255)
11030 locate 4,10
11040 print ":1  :2  :3" + chr$(13)
11050 locate 4,12
11060 print "    :0"
11070 locate 12,12
11080 color rgb(255,0,0)
11090 print ":Ok"
11100 sp_on 4,0: sp_on 5,0:sp_on 6,0
11110 sp_on 7,0:sp_on 8,0:sp_on 9,0
11120 sp_on 10,0:sp_on 11,0:sp_on 12,0
11130 sp_on 13,0:sp_on 14,1
11140 Input_Born_Day2:
11150 key$="":bg=0:y=0:y2=0:bg2=0
11160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
11170 key$ = inkey$
11180 bg = strig(1)
11190 y = stick(1)
11200 y2 = stick(0)
11210 bg2 = strig(0)
11220 pause 5
11230 wend
11240 '十字キー　ここから
11250 '上の矢印　または、十字キー上
11260 if ((y = -1) or (key$ = chr$(30))) then
11270 select case No
11280 'No=-1:okのとき:初期の状態
11290 '0kボタンから３に移動
11300 '上に行く 処理
11310 case -1:
11320 No=3:sp_on 12,1:sp_on 14,0
11330 pause 200:goto Input_Born_Day2:
11340 '選択肢:3
11350 '3ボタンから 6に移動
11360 case 3:
11370 No=6:sp_on 12,0:sp_on 11,1
11380 pause 200:goto Input_Born_Day2:
11390 '6ボタンから ９に移動
11400 case 6:
11410 No=9:sp_on 10,1:sp_on 11,0
11420 pause 200:goto Input_Born_Day2:
11430 '6ボタンから ９に移動　ここまで
11440 '9で上を押して何もしない
11450 case 9:
11460 '何もしない
11470 No=9
11480 pause 200:goto Input_Born_Day2:
11490 '9で上を押しても何もしない　ここまで
11500 '上　 0ボタンから2ボタン
11510 'sp_on 6,1:1
11520 'sp_on 8,1:5
11530 'sp_on 7,1:7
11540 case 0:
11550 No=2:sp_on 13,0:sp_on 9,1:
11560 pause 200:goto Input_Born_Day2:
11570 '上  0ボタンから2ボタン　ここまで
11580 '2から５になる 上
11590 case 2:
11600 No=5:sp_on 8,1:sp_on 9,0:
11610 pause 200:goto Input_Born_Day2:
11620 case 5:
11630 No=8:sp_on 7,1:sp_on 8,0
11640 pause 200:goto Input_Born_Day2:
11650 case 8:
11660 pause 200:goto Input_Born_Day2:
11670 case 1:
11680 No=4:sp_on 5,1:sp_on 6,0
11690 pause 200:goto Input_Born_Day2:
11700 case 4:
11710 No=7:sp_on 4,1:sp_on 5,0
11720 pause 200:goto Input_Born_Day2:
11730 case 7:
11740 pause 200:goto Input_Born_Day2:
11750 end select
11760 endif
11770 '左３　ここまで
11780 '下の矢印
11790 '中央 2
11800 if ((y=1) or (key$ = chr$(31))) then
11810 select case No
11820 '9から６に下げる
11830 case 9:
11840 No=6:sp_on 11,1:sp_on 10,0
11850 pause 200:goto Input_Born_Day2:
11860 '6から３に下げる
11870 case 6:
11880 No=3:sp_on 12,1:sp_on 11,0
11890 pause 200:goto Input_Born_Day2:
11900 '3から０ｋに変える
11910 case 3:
11920 No=-1:sp_on 14,1:sp_on 12,0
11930 pause 200:goto Input_Born_Day2:
11940 'Okから下のボタンを押しても何もしない
11950 case -1:
11960 pause 200:goto Input_Born_Day2:
11970 case 8:
11980 No=5:sp_on 8,1:sp_on 7,0
11990 pause 200:goto Input_Born_Day2:
12000 case 5:
12010 No=2:sp_on 9,1:sp_on 8,0
12020 pause 200:goto Input_Born_Day2:
12030 case 2:
12040 No=0:sp_on 13,1:sp_on 9,0
12050 pause 200:goto Input_Born_Day2:
12060 case 0:
12070 pause 200:goto Input_Born_Day2:
12080 case 7:
12090 No=4:sp_on 5,1:sp_on 4,0
12100 pause 200:goto Input_Born_Day2:
12110 case 4:
12120 No=1:sp_on 6,1:sp_on 5,0
12130 pause 200:goto Input_Born_Day2:
12140 case 1:
12150 pause 200:goto Input_Born_Day2:
12160 end select
12170 endif
12180 '左へボタン 十字キー　左　or 　カーソル左
12190 if ((y2 = -1) or (key$ = chr$(29))) then
12200 select case No
12210 'Ok ボタン  Okから　左　０に行く
12220 case -1:
12230 No=0:sp_on 13,1:sp_on 14,0
12240 pause 200:goto Input_Born_Day2:
12250 '0 ボタン  左　何もしない
12260 case 0:
12270 pause 200:goto Input_Born_Day2:
12280 case 3:
12290 No=2:sp_on 9,1:sp_on 12,0:
12300 pause 200:goto Input_Born_Day2:
12310 case 2:
12320 No=1:sp_on 6,1:sp_on 9,0:
12330 pause 200:goto Input_Born_Day2:
12340 case 1:
12350 pause 200:goto Input_Born_Day2:
12360 case 6:
12370 No=5:sp_on 8,1:sp_on 11,0
12380 pause 200:goto Input_Born_Day2:
12390 case 5:
12400 No=4:sp_on 5,1:sp_on 8,0
12410 pause 200:goto Input_Born_Day2:
12420 case 4:
12430 pause 200:goto Input_Born_Day2:
12440 case 9:
12450 No=8:sp_on 7,1:sp_on 10,0
12460 pause 200:goto Input_Born_Day2:
12470 case 8:
12480 No=7:sp_on 4,1:sp_on 7,0
12490 pause 200:goto Input_Born_Day2:
12500 case 7:
12510 pause 200:goto Input_Born_Day2:
12520 end select
12530 endif
12540 '右  十字キー　右　or カーソル　右
12550 if ((y2 = 1) or (key$ = chr$(28))) then
12560 select case No
12570 '0ボタンからokボタン右に移動
12580 case 0:
12590 No=-1:sp_on 14,1:sp_on 13,0
12600 pause 200:goto Input_Born_Day2:
12610 '0ボタンからokボタン 右に移動　ここまで
12620 'OKボタンで右を押して何もしない
12630 case -1:
12640 pause 200:goto Input_Born_Day2:
12650 case 1:
12660 No=2:sp_on 9,1:sp_on 6,0
12670 pause 200:goto Input_Born_Day2:
12680 case 2:
12690 No=3:sp_on 12,1:sp_on 9,0
12700 pause 200:goto Input_Born_Day2:
12710 case 3:
12720 pause 200:goto Input_Born_Day2:
12730 case 4:
12740 No=5:sp_on 8,1:sp_on 5,0
12750 pause 200:goto Input_Born_Day2:
12760 case 5:
12770 No=6:sp_on 11,1:sp_on 8,0
12780 pause 200:goto Input_Born_Day2:
12790 case 7:
12800 No=8:sp_on 7,1:sp_on 4,0
12810 pause 200:goto Input_Born_Day2:
12820 case 8:
12830 No=9:sp_on 10,1:sp_on 7,0
12840 pause 200:goto Input_Born_Day2:
12850 case 9:
12860 pause 200:goto Input_Born_Day2:
12870 case 6:
12880 pause 200:goto Input_Born_Day2:
12890 end select
12900 'Okから右ボタンを押して何もしない ここまで
12910 endif
12920 '十字キー　ここまで
12930 '右の丸ボタンを押したとき
12940 if ((bg = 2) or (key$ = chr$(13))) then
12950 'count :決定ボタンを押した回数
12960 select case (count mod 3)
12970 '1桁目入力
12980 case 0:
12990 count = 1:
13000 if (No = -1) then
13010 '1桁目　OKでは何もしない
13020 'goto check:
13030 else
13040 'ok以外のボタンを押したとき
13050 buf_day = No:buf_Day$ = str$(No)
13060 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
13070 locate 2,3
13080 color RGB(255,255,255)
13090 print "生まれた日(1日~31日):";buf_Day2$
13100 endif
13110 check:
13120 if (No >= 1 and No <= 9) then
13130 sp_on 14,0
13140 goto Input_Born_Day2:
13150 else
13160 sp_on 14,0
13170 goto complate:
13180 endif
13190 case 1:
13200 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
13210 count = 2:
13220 'locate 2,3
13230 'color RGB(255,255,255)
13240 'print "生まれた日(1日~31日):";buf_Day$
13250 'Okボタンを押したときの処理
13260 '入力値　10未満のとき
13270 'c = buf_day
13280 if (No = -1) then
13290 'c=buf_day
13300 ' buf_day = c
13310 'buf_Day$ = str$(buf_day)
13320 '10以下のとき
13330 if (buf_day < 10) then
13340 sp_on 14,0
13350 goto complate:
13360 endif
13370 else
13380 'c = No
13390 buf_day = c * 10 + No
13400 'buf_day = c
13410 buf_Day$ =str$(buf_day)
13420 locate 2,3
13430 color Rgb(255,255,255)
13440 print "生まれた日(1日~31日):";buf_Day$
13450 goto Input_Born_Day2:
13460 endif
13470 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13480 case 2:
13490 count=0
13500 'c=val(buf_Day$)
13510 'buf_day=c*10+No
13520 'buf_Day$=str$(buf_day)
13530 'day=buf_day
13540 'locate 2,3
13550 'print "生まれた日(1日〜31日):";buf_Day$
13560 'No=-1:ok ボタンを押したとき
13570 if (No = -1) then
13580 if ((buf_day > 0) and (buf_day < 32)) then
13590 sp_on 14,0
13600 goto complate:
13610 else
13620 goto Input_Born_Day2:
13630 endif
13640 'Okボタン以外を押したとき
13650 else
13660 c=val(buf_Day$)
13670 buf_day = c * 10 + No
13680 buf_Day$ = str$(buf_day)
13690 locate 2,3
13700 print "生まれた日(1日~31日):";buf_Day$
13710 'goto Input_Born_Day2:
13720 endif
13730 case 3:
13740 count = 4
13750 c=val(buf_day$)
13760 buf_day = c * 10 + No
13770 buf_day$ = str$(buf_day)
13780 locate 2,3
13790 print "生まれた日を入れてください:";buf_Day$
13800 year = val(buf_year$)
13810 if (No = -1) then
13820 'goto Input_Born_Day:
13830 sp_on 14,0:No=0
13840 goto complate:
13850 else
13860 goto Input_Born_Month2:
13870 endif
13880 'case 4:
13890 'bufyear=buf_year
13900 'if (No=-1) then
13910 'buf_day = val(buf_day$)
13920 'bufday = buf_day
13930 'sp_on 14,0
13940 'goto complate:
13950 'else
13960 'goto Input_Born_Day2:
13970 'endif
13980 end select
13990 endif
14000 if (bg2=2) then
14010 select case count2
14020 case 0:
14030 if (No=-1) then
14040 'buf_day=0:buf_Day$="**"
14050 if (buf_day>=1 and buf_day<=31) then
14060 count=0:No=0
14070 buf_day=0:buf_Day$="**"
14080 'goto rewrite_day:
14090 else
14100 buf_day=0:buf_Day$="**"
14110 ui_msg"値が範囲外です"
14120 endif
14130 goto rewrite_day:
14140 else
14150 goto rewrite_day:
14160 endif
14170 rewrite_day:
14180 locate 2,3
14190 color rgb(255,255,255)
14200 print "                                      "
14210 locate 2,3
14220 print "生まれた日(1日~31日):";buf_Day$
14230 goto Input_Born_Day2:
14240 end select
14250 endif
14260 '--------------------------Input_Born_Day:-------------------------------------------
14270 complate:
14280 suhiNo = buf_year + buf_month + buf_day
14290 'if (suhiNo < 1000) then
14300 a1 = fix(suhiNo / 1000)
14310 a2 = fix(suhiNo/100) - (a1 * 10)
14320 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14330 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14340 'endif
14350 bufsuhiNo = a1+a2+a3+a4
14360 recomp:
14370 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14380 'bufsuhiNo=a6
14390 goto Kabara_Result_Screen:
14400 else
14410 a5 = fix(bufsuhiNo / 10)
14420 a6 = bufsuhiNo - a5 * 10
14430 bufsuhiNo = a6 + a5
14440 if (bufsuhiNo = 10) then
14450 bufsuhiNo=1
14460 endif
14470 goto Kabara_Result_Screen:
14480 endif
14490 Kabara_Result_Screen:
14500 cls 3:
14510 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14520 gload Gazo$ + "downscreen.png",0,0,800
14530 init "kb:4"
14540 '
14550 play ""
14560 select case (bufsuhiNo)
14570 case 1:
14580 play Voice$ + "Result_Kabara_1_20230607.mp3"
14590 case 2:
14600 play Voice$ + "Result_Kabara_2_20231112.mp3"
14610 case 3:
14620 play Voice$ + "Result_Kabara_3_20230607.mp3"
14630 case 4:
14640 play Voice$ + "Result_Kabara_4_20230607.mp3"
14650 case 5:
14660 play Voice$ + "Result_Kabara_5_20231112.mp3"
14670 case 6:
14680 play Voice$ + "Result_Kabara_6_20230607.mp3"
14690 case 7:
14700 play Voice$ + "Result_Kabara_7_20230607.mp3"
14710 case 8:
14720 play Voice$ + "Result_Kabara_8_20230607.mp3"
14730 case 9:
14740 play Voice$ + "Result_Kabara_9_20230607.mp3"
14750 case 11:
14760 play Voice$ + "Result_Kabara_11_20230607.mp3"
14770 case 22:
14780 play Voice$ + "Result_Kabara_22_20230607.mp3"
14790 case 33:
14800 play Voice$ + "Result_Kabara_33_20230607.mp3"
14810 end select
14820 font 48
14830 key$ = "":bg = 0:bg2=0
14840 'COLOR rgb(255,255,255)
14850 'print "●診断結果"+chr$(13)
14860 locate 0,2
14870 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14880 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14890 locate 0,15:
14900 color rgb(255,255,255)
14910 print "右の丸:トップメニュー,左の丸：もう一度診断" + chr$(13)
14920 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
14930 key$ = inkey$
14940 bg = strig(1)
14950 bg2 = strig(0)
14960 pause 5
14970 wend
14980 'Enter or JoyPad right
14990 if ((key$ = chr$(13)) or (bg = 2)) then
15000 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
15010 endif
15020 if ((bg2=2)) then
15030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Input_Seireki:
15040 endif
15050 'suhiNo1 = fix(bufsuhiNo / 10)
15060 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
15070 'bufsuhiNo = suhiNo1 + suhiNo2
15080 'goto recomp:
15090 'endif
15100 'print chr$(13)
15110 'color rgb(255,0,0)
15120 'print"トップ:エンターキー,S or s:保存"+chr$(13)
15130 'key$ = input$(1)
15140 'if key$ = chr$(13) then goto Main_Screen:
15150 '"Menu2 占いのルール"
15160 Suhi_Rule:
15170 '数秘術占いルールの表示
15180 cls 3:play "":init"kb:4"
15190 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
15200 gload Gazo$ + "downscreen.png",0,0,800
15210 'cls 3:
15220 'line (0,0) - (1500,60),rgb(0,0,255),bf
15230 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
15240 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15250 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15260 locate 0,2:Font 48
15270 print chr$(13) + chr$(13)
15280 color rgb(0,0,0)
15290 print "誕生日を単数変換します";chr$(13)
15300 print "数字の範囲:1~９,11,22,33";chr$(13)
15310 print "例:1973年11月22日の場合";chr$(13)
15320 print "1+9+7+3+11+22=53 ";chr$(13)
15330 print "→ 5 + 3 = 8" + chr$(13)
15340 print "故に8が数秘ナンバーになります";chr$(13)
15350 locate 0,15
15360 color rgb(255,255,255)
15370 print "ジョイパッドの右を押してください"
15380 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15390 '"key$ = input$(1)"
15400 '"if key$ = chr$(13) then goto Main_Screen:"
15410 suhi_rule_selection:
15420 bg = 0:key$ = "":bg2=0
15430 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15440 bg = strig(1)
15450 key$ = inkey$
15460 bg2=strig(0)
15470 pause 2
15480 wend
15490 if ((bg = 2) or (key$ = chr$(13))) then
15500 pause 200:cls 4:goto Main_Screen:
15510 endif
15520 if (bg2=2) then
15530 play "":pause 200
15540 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15550 goto suhi_rule_selection:
15560 endif
15570 '2.設定
15580 '2-1.トップ画面に戻る
15590 Setting:
15600 cls 3:init"kb:4":font 48:No=0
15610 play ""
15620 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15630 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15640 gload Gazo$ + "downscreen.png",0,0,800
15650 print chr$(13) + chr$(13) + chr$(13)
15660 color rgb(255,255,255):sp_on 0,1:
15670 print "番号を選んでください" + chr$(13)
15680 print " :1.トップ画面に戻る"+ chr$(13)
15690 print " :2.未実装" + chr$(13)
15700 print " :3.未実装" + chr$(13)
15710 print " :4.未実装" + chr$(13)
15720 color rgb(0,0,0)
15730 locate 1,15:print "1.トップ画面に戻るを選択"
15740 Setting_Selection:
15750 y=0:key$="":bg=0:bg2=0
15760 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
15770 'y=stick(1)
15780 key$ = inkey$
15790 bg=strig(1)
15800 bg2 = strig(0)
15810 pause 2
15820 wend
15830 if ((bg = 2) or (key$ = chr$(13))) then
15840 select case No
15850 case 0:
15860 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
15870 end select
15880 endif
15890 if (bg2 = 2) then
15900 play "":pause 200
15910 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15920 goto Setting_Selection:
15930 endif
15940 '3.Help
15950 '3-1.ルールの表示
15960 '3-2.バージョン
15970 '3-3.トップに戻る
15980 Help:
15990 cls 3:Font 48:No=0
16000 play ""
16010 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
16020 gload Gazo$ + "downscreen.png",0,0,800
16030 color rgb(255,255,255)
16040 print chr$(13)+chr$(13)+chr$(13)
16050 print "番号を選んでください"+chr$(13)
16060 print " :1.ルールの表示" + chr$(13)
16070 print " :2.バージョンの表示" + chr$(13)
16080 print " :3.参考文献" + chr$(13)
16090 print " :4.トップ画面に戻る" + chr$(13)
16100 color rgb(0,0,0)
16110 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
16120 locate 1,15
16130 print "                                      "
16140 locate 1,15
16150 print "1.ルールの表示を選択"
16160 init"kb:4"
16170 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16180 Help_Select:
16190 bg=0:key$="":y=0:bg2=0
16200 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
16210 y = stick(1)
16220 key$ = inkey$
16230 bg = strig(1)
16240 bg2 = strig(0)
16250 pause 5
16260 wend
16270 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16280 if ((y = 1) or (key$ = chr$(31))) then
16290 select case No
16300 case 0:
16310 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16320 case 1:
16330 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16340 case 2:
16350 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16360 case 3:
16370 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16380 end select
16390 endif
16400 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16410 if ((y = -1) or (key$ = chr$(30))) then
16420 select case No
16430 case 0:
16440 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16450 case 1:
16460 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16470 case 2:
16480 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16490 case 3:
16500 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16510 end select
16520 endif
16530 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16540 if ((bg = 2) or (key$ = chr$(13))) then
16550 select case No
16560 case 0:
16570 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16580 case 1:
16590 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16600 case 2:
16610 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16620 '3:Top画面に行く
16630 case 3:
16640 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16650 end select
16660 endif
16670 if (bg2 = 2) then
16680 play "":pause 200
16690 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16700 goto Help_Select:
16710 endif
16720 '数秘術占い　トップ画面
16730 Kabara_TopScreen:
16740 cls 3:play ""
16750 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16760 gload Gazo$ + "downscreen.png",0,0,800
16770 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16780 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16790 init"kb:4":No=0
16800 color rgb(255,255,255)
16810 print chr$(13)+chr$(13)+chr$(13)
16820 print "番号を選んでください" + chr$(13)
16830 print " :1.数秘術占い" + chr$(13)
16840 print " :2.バーズアイグリット" + chr$(13)
16850 print " :3.相性占い" + chr$(13)
16860 print " :4.トップ画面に戻る" + chr$(13)
16870 color rgb(0,0,0)
16880 locate 1,15:print "1.数秘術占いを選択"
16890 Kabara_TopScreen2:
16900 y = 0:bg = 0:key$ = "":bg2 = 0
16910 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
16920 key$ = inkey$
16930 bg = strig(1)
16940 y = stick(1)
16950 bg2 = strig(0)
16960 pause 5
16970 wend
16980 '選択ボタン
16990 'カーソル　と　ジョイパッド　の下
17000 if ((y = 1) or (key$ = chr$(31))) then
17010 select case No
17020 case 2:
17030 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17040 case 3:
17050 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17060 case 0:
17070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17080 case 1:
17090 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17100 end select
17110 endif
17120 'カーソル　上
17130 if ((y=-1) or (key$=chr$(30))) then
17140 select case No
17150 case 0:
17160 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17170 case 1:
17180 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17190 case 2:
17200 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17210 case 3:
17220 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17230 end select
17240 endif
17250 '決定ボタン
17260 'ジョイパッドの右　or  Enter key
17270 if ((bg = 2) or (key$ = chr$(13))) then
17280 select case No
17290 case 0:
17300 '1.数秘術占い
17310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17320 case 3:
17330 '4.メイン画面にいく
17340 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17350 case 1:
17360 '2.バースアイグリッド
17370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17380 case 2:
17390 '3.相性占い
17400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17410 end select
17420 endif
17430 if (bg2 = 2) then
17440 play "":pause 200
17450 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17460 goto Kabara_TopScreen2:
17470 endif
17480 '1.バースアイグリット　名入力
17490 Inputname1:
17500 cls 3:init"kb:4":font 48
17510 bg=0:key$="":y=0:No=-1:name1$="":i=1
17520 gload Gazo$ + "Selection.png",1,10,100
17530 'Line 1:☓
17540 'A:選択肢
17550 sp_def 15,(50,250),16,16
17560 'B:選択肢
17570 sp_def 16,(200,250),16,16
17580 'C:選択肢
17590 sp_def 17,(350,250),16,16
17600 'D:選択肢
17610 sp_def 18,(500,250),16,16
17620 'E:選択肢
17630 sp_def 19,(630,250),16,16
17640 'F:選択肢
17650 sp_def 20,(780,250),16,16
17660 'G:選択肢
17670 sp_def 21,(930,250),16,16
17680 'Line 2:☓
17690 'H:選択肢
17700 sp_def 22,(50,345),16,16
17710 'I:選択肢
17720 sp_def 23,(200,345),16,16
17730 'J:選択肢
17740 sp_def 24,(350,345),16,16
17750 'K:選択肢
17760 sp_def 25,(500,345),16,16
17770 'L:選択肢
17780 sp_def 26,(630,345),16,16
17790 'M:選択肢
17800 sp_def 27,(780,345),16,16
17810 'N:選択肢
17820 sp_def 28,(930,345),16,16
17830 'Line 3:☓
17840 'O:選択肢
17850 sp_def 29,(50,440),16,16
17860 'P:選択肢
17870 sp_def 30,(200,440),16,16
17880 'Q:選択肢
17890 sp_def 31,(350,440),16,16
17900 'R:選択肢
17910 sp_def 32,(500,440),16,16
17920 'S:選択肢
17930 sp_def 33,(630,440),16,16
17940 'T:選択肢
17950 sp_def 34,(780,440),16,16
17960 'U:選択肢
17970 sp_def 35,(930,440),16,16
17980 'Line 4:◯
17990 'V:選択肢
18000 sp_def 36,(50,535),16,16
18010 'W:選択肢
18020 sp_def 37,(200,535),16,16
18030 'X:選択肢
18040 sp_def 38,(350,535),16,16
18050 'Y:選択肢
18060 sp_def 39,(500,535),16,16
18070 'Z:選択肢
18080 sp_def 40,(630,535),16,16
18090 'Ok:選択肢
18100 sp_def 41,(780,535),16,16
18110 'sp_def 42,(930,535),16,16
18120 'Line 1
18130 'A
18140 sp_on 15,0
18150 'B
18160 sp_on 16,0
18170 'C
18180 sp_on 17,0
18190 'D
18200 sp_on 18,0
18210 'E
18220 sp_on 19,0
18230 'F
18240 sp_on 20,0
18250 'G
18260 sp_on 21,0
18270 'Line 1
18280 'Line 2
18290 'H
18300 sp_on 22,0
18310 'I
18320 sp_on 23,0
18330 'J
18340 sp_on 24,0
18350 'K
18360 sp_on 25,0
18370 'L
18380 sp_on 26,0
18390 'M
18400 sp_on 27,0
18410 'N
18420 sp_on 28,0
18430 'Line 2
18440 'Line 3
18450 'O
18460 sp_on 29,0
18470 'P
18480 sp_on 30,0
18490 'Q
18500 sp_on 31,0
18510 'R
18520 sp_on 32,0
18530 'S
18540 sp_on 33,0
18550 'T
18560 sp_on 34,0
18570 'U
18580 sp_on 35,0
18590 'Line 3
18600 'Line 4
18610 'V
18620 sp_on 36,0
18630 'W
18640 sp_on 37,0
18650 'X
18660 sp_on 38,0
18670 'Y
18680 sp_on 39,0
18690 'Z
18700 sp_on 40,0
18710 'Ok
18720 sp_on 41,1
18730 'Line 4
18740 'sp_on 42,1
18750 'Line 1
18760 'sp_put 15,(50,250),0,0
18770 'sp_put 16,(200,250),0,0
18780 'sp_put 17,(350,250),0,0
18790 'sp_put 18,(500,250),0,0
18800 'sp_put 19,(630,250),0,0
18810 'sp_put 20,(780,250),0,0
18820 'sp_put 21,(930,250),0,0
18830 'Line 2
18840 'sp_put 22,(50,345),0,0
18850 'sp_put 23,(200,345),0,0
18860 'sp_put 24,(350,345),0,0
18870 'sp_put 25,(500,345),0,0
18880 'sp_put 26,(630,345),0,0
18890 'sp_put 27,(780,345),0,0
18900 'sp_put 28,(930,345),0,0
18910 'Line 3
18920 'sp_put 29,(50,440),0,0
18930 'sp_put 30,(200,440),0,0
18940 'sp_put 31,(350,440),0,0
18950 'sp_put 32,(500,440),0,0
18960 'sp_put 33,(630,440),0,0
18970 'sp_put 34,(780,440),0,0
18980 'sp_put 35,(930,440),0,0
18990 'Line 4
19000 'sp_put 36,(50,535),0,0
19010 'sp_put 37,(200,535),0,0
19020 'sp_put 38,(350,535),0,0
19030 'sp_put 39,(500,535),0,0
19040 'sp_put 40,(630,535),0,0
19050 sp_put 41,(780,535),0,0
19060 'sp_put 42,(930,536),0,0
19070 gload Gazo$ + "Screen1.png",0,0,0
19080 color rgb(255,255,255)
19090 locate 1,3
19100 print "名前の姓をアルファベットで入力してください"
19110 locate 1,5
19120 print " A  B  C  D  E  F  G"
19130 locate 1,7
19140 print " H  I  J  K  L  M  N"
19150 locate 1,9
19160 print " O  P  Q  R  S  T  U"
19170 locate 1,11
19180 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
19190 locate 1,15:color rgb(0,0,0)
19200 print "名前の姓:" + name1$
19210 select_name1:
19220 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
19230 '有効ボタン
19240 '1.決定ボタン(bg:2)
19250 '2.Enter Key$:chr$(13)
19260 '3.カーソル上 (chr$(31))
19270 '4.カーソル　左 (chr$(29))
19280 '5.ジョイパッド　上 (y:1)
19290 '6:ジョイパッド　左 (y2:-1)
19300 '7:ジョイパッド　下 (y:-1)
19310 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19320 key$ = inkey$
19330 'ジョイパッドの決定:bg
19340 bg = strig(1)
19350 y = stick(1)
19360 y2 = stick(0)
19370 pause 200
19380 wend
19390 '====================================
19400 'Birds Eye Grid 名前入力
19410 '入力スタイル　アルファベット入力
19420 'sp_on:　スプライトのオンオフ
19430 'sp_put :表示位置
19440 'No:ボタン番号
19450 '====================================
19460 'カーソルで下に行く
19470 if ((y=-1) or (key$=chr$(31))) then
19480 select case No
19490 '1.Ok ボタン
19500 'sp_on スプライトのオンオフ
19510 'sp_put スプライトを表示
19520 case -1:
19530 '1.アルファベット　入力ボタン
19540 '実装未完全なので終了
19550 'Ok → T ○ :No:20=T
19560 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19570 'T  → M ○
19580 case 20:
19590 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19600 'M  →　F ○
19610 case 13:
19620 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19630 'F  → Ok
19640 case 6:
19650 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19660 end select
19670 endif
19680 '2.決定ボタン
19690 if ((key$ = chr$(13)) OR  (bg = 2)) then
19700 select case No
19710 case -1:
19720 'スプライトをOFFにする
19730 sp_on 41,0
19740 end select
19750 endif
19760 '3.カーソル　左
19770 if (key$ = chr$(29) or (y2 =-1)) then
19780 select case No
19790 'Line 4
19800 'Line 4
19810 '1.
19820 'Z:-1 :Ok ボタン
19830 'Ok → Z
19840 case -1:
19850 'Ok →　Z
19860 'Ok ボタン OFF,Z Button ON
19870 'No=26:Z
19880 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
19890 '2.
19900 '26:Zボタン Z→ Y
19910 case 26:
19920 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
19930 '3.
19940 '25:Yボタン  Y → X
19950 case 25:
19960 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
19970 '4
19980 '24:Xボタン X → W
19990 case 24:
20000 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20010 '23:Wボタン X → W
20020 '5
20030 case 23:
20040 '22:Vボタン W → V
20050 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20060 case 22:
20070 '-1:V→ Ok
20080 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
20090 'Line 3
20100 case 20:
20110 '33:T34  → S:33 :◯
20120 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
20130 case 19:
20140 '32:S:33 → R:32 :◯
20150 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
20160 case 18:
20170 '31:R:32 → Q:31 :◯
20180 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20190 '30:O → P :◯
20200 case 17:
20210 '30:Q:31 → P:30 :◯
20220 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20230 case 16:
20240 '29:P:30 → O:29 :◯
20250 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20260 case 15:
20270 '28:O:29 → U:21  :◯
20280 'O:OFF,U:ON
20290 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20300 '27:U:21 → T:20  :◯
20310 case 21:
20320 'U:OFF:T:ON
20330 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20340 'Line 2
20350 '26:M:13 → L:12 : ○
20360 case 13:
20370 'M:OFF,L:ON
20380 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20390 '25:L:12 → K:11 : ○
20400 case 12:
20410 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20420 '24:K:11 → J:10 : ○
20430 case 11:
20440 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20450 '23:J:10 → I:9  : ○
20460 case 10:
20470 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20480 '22:I:9 → H:8    :○
20490 case 9:
20500 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20510 '21:H:8 → N:14:   :○
20520 case 8:
20530 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20540 '20:N:14 → M:13:   :○
20550 case 14:
20560 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20570 '●.Line 1:
20580 '19:F:20 → E:19 : ☓
20590 'F:OFF,E:ON
20600 case 6:
20610 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20620 '18:E → D
20630 'E:OFF,D:ON
20640 case 5:
20650 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20660 '17:D → C
20670 'D:OFF,C:ON
20680 case 4:
20690 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20700 case 3:
20710 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20720 case 2:
20730 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20740 case 1:
20750 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20760 case 7:
20770 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20780 end select
20790 endif
20800 '上から下の方向
20810 if ((key$ = chr$(31)) or  (y = 1)) then
20820 select case No
20830 '●.1
20840 '1:A→H
20850 case 1:
20860 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20870 '2:H→O
20880 case 8:
20890 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20900 '3:O→V
20910 case 15:
20920 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20930 '4:V→A
20940 case 22:
20950 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20960 '●.2
20970 '5.B→I
20980 case 2:
20990 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
21000 '6.I→P
21010 case 9:
21020 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
21030 '7.P→W
21040 case 16:
21050 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21060 '8.W→B
21070 case 23:
21080 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
21090 '●.3
21100 '9.C→J
21110 case 3:
21120 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
21130 '10.J→Q
21140 case 10:
21150 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21160 '11.Q→X
21170 case 17:
21180 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21190 '12.X→C
21200 case 24:
21210 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
21220 '●.4
21230 '13.D→K
21240 case 4:
21250 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21260 '14.K→R
21270 case 11:
21280 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21290 '15.R→Y
21300 case 18:
21310 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21320 '16.Y→D
21330 case 25:
21340 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21350 '●.5
21360 '17.E→L
21370 case 5:
21380 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21390 '18.L→S
21400 case 12:
21410 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21420 '19.S→Z
21430 case 19:
21440 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21450 '20.Z→E
21460 case 26:
21470 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21480 '●.6
21490 '21.F→M
21500 case 6:
21510 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21520 '22.M→T
21530 case 13:
21540 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21550 '23.T→Ok
21560 case 20:
21570 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21580 '24.Ok→F
21590 case -1:
21600 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21610 '●.7
21620 '25.G→N
21630 case 7:
21640 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21650 '26.N→U
21660 case 14:
21670 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21680 '27.U→G
21690 case 21:
21700 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21710 end select
21720 endif
21730 '決定ボタン　で名前の姓に文字を追加。
21740 if (key$ = chr$(13) or bg = 2) then
21750 select case No
21760 'Okボタン
21770 case -1:
21780 goto Inputname2:
21790 'Aの文字
21800 case 1:
21810 'if len(n$)=0 then
21820 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
21830 'else
21840 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
21850 'endif
21860 goto select_name1:
21870 case 2:
21880 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
21890 end select
21900 endif
21910 Input_name1_Birdseye:
21920 cls 3:init "kb:2":play ""
21930 gload Gazo$ + "Input_Birtheye2.png",0,0,0
21940 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
21950 color rgb(255,255,255)
21960 locate 1,2:print "名前をアルファベットで入れてください"
21970 color rgb(0,0,0)
21980 locate 1,5:Input "名前（姓の部分）:",name1$
21990 '27.U→G
22000 'locate 1,5:print "Hit any key"
22010 n1 = len(name1$)
22020 if (n1 < 11) then
22030 for i=1 to n1
22040 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
22050 next i
22060 endif
22070 goto Inputname2:
22080 '2.グリッドアイ　姓の入力
22090 'end
22100 Inputname2:
22110 cls 3:init"kb:2":font 48:play ""
22120 gload Gazo$ + "Input_Birtheye1.png",0,0,0
22130 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
22140 color rgb(255,255,255)
22150 locate 1,2:print "名前をアルファベットで入れてください"
22160 color rgb(0,0,0)
22170 locate 1,5:Input "名前(名の部分):",name2$
22180 n2 = len(name2$)
22190 for i=1 to n2
22200 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
22210 next i
22220 '計算領域
22230 Complate:
22240 'name1
22250 for i=0 to 25
22260 for n=1 to len(name1$)
22270 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22280 b = val(buf_chart$(i,1))
22290 buffer(b-1) = buffer(b-1) + 1
22300 endif
22310 next n
22320 next i
22330 'name2
22340 for i=0 to 25
22350 for n=1 to len(name2$)
22360 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22370 c = val(buf_chart$(i,1))
22380 buffer(c - 1) = buffer(c - 1) + 1
22390 endif
22400 next n
22410 next i
22420 '結果表示領域
22430 Result_Birtheye1:
22440 cls 3:init"kb:4":No=0:play "":'音を止める
22450 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22460 gload Gazo$ + "downscreen.png",0,0,800
22470 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
22480 color rgb(255,255,255)
22490 '1の表示
22500 locate 3,14:print buffer(0);
22510 '2の表示
22520 locate 3,9:print buffer(1);
22530 '3の表示
22540 locate 3,5:print buffer(2);
22550 '4の表示
22560 locate 10,14:print buffer(3);
22570 '5の表示
22580 locate 10,9:print buffer(4);
22590 '6の表示
22600 locate 10,5:print buffer(5);
22610 '7の表示
22620 locate 15,14:print buffer(6);
22630 '8の表示
22640 locate 15,9:print buffer(7);
22650 '9の表示
22660 locate 15,5:print buffer(8);
22670 'name を大文字に変換
22680 locate 5,3:print ucase$(name1$ + name2$)
22690 color rgb(0,0,0)
22700 'bg:右のボタン  ,bg2:左のボタン
22710 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
22720 bg=0:key$="":bg2=0
22730 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22740 'Enterと決定ボタン
22750 key$ = inkey$
22760 '右ボタン:1
22770 bg = strig(1)
22780 '左の丸ボタン:0
22790 bg2=strig(0)
22800 pause 200
22810 wend
22820 if ((bg=2) or (key$=chr$(13))) then
22830 'データーをクリアしてトップ画面に行く
22840 'for i=0 to 8
22850 'buffer(i)=0
22860 'next i
22870 'for n=0 to 9
22880 'buf_name1$(n) = ""
22890 'buf_name2$(n) = ""
22900 'next n
22910 'Topに行く
22920 'goto Main_Screen:
22930 'メニューを開く
22940 'goto BirdsEye_Result2:
22950 'Menu(ui_select) リストに飛ぶ
22960 goto Result_Birtheye_List1:
22970 endif
22980 if (bg2=2) then
22990 'データーをクリアする
23000 for i=0 to 8
23010 buffer(i)=0
23020 next i
23030 for n=0 to 9
23040 buf_name1$(n)=""
23050 buf_name2$(n)=""
23060 next n
23070 goto Main_Screen:
23080 endif
23090 'goto Result_Birtheye1:
23100 'Result_Birtheye2:
23110 'cls 3:color rgb(255,255,255)
23120 'end
23130 'Memory 消去
23140 '
23150 '横のフォーカスライン
23160 BirdsEye_Result2:
23170 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
23180 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
23190 Forcus1_buffer$(2)="○"
23200 else
23210 Forcus1_buffer$(2)="☓"
23220 endif
23230 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
23240 Forcus1_buffer$(1)="○"
23250 else
23260 Forcus1_buffer$(1) = "☓"
23270 endif
23280 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
23290 Forcus1_buffer$(0)="○"
23300 else
23310 Forcus1_buffer$(0)="☓"
23320 endif
23330 gload Gazo$ + "Screen1.png",0,0,0
23340 color rgb(255,0,0):
23350 locate 1,1
23360 print "バーズアイグリッド(フォーカスライン1)"
23370 color rgb(255,255,255)
23380 locate 1,3:
23390 print "●.横のフォーカスライン"
23400 locate 1,5
23410 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23420 locate 1,7
23430 print "2.調停者ライン:"+Forcus1_buffer$(1)
23440 locate 1,9
23450 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23460 color rgb(0,0,0)
23470 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23480 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
23490 key$=inkey$
23500 bg=strig(1)
23510 bg2=strig(0)
23520 pause 200
23530 wend
23540 if ((bg=2) or (key$=chr$(13))) then
23550 goto BirdsEye_Result3:
23560 endif
23570 if (bg2=2) then
23580 for i=0 to 8
23590 buffer(i)=0
23600 next i
23610 goto Main_Screen:
23620 endif
23630 BirdsEye_Result3:
23640 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23650 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23660 Forcus2_buffer$(2)="○"
23670 else
23680 Forcus2_buffer$(2)="☓"
23690 endif
23700 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23710 Forcus2_buffer$(1)="○"
23720 else
23730 Forcus2_buffer$(1) = "☓"
23740 endif
23750 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23760 Forcus2_buffer$(0)="○"
23770 else
23780 Forcus2_buffer$(0)="☓"
23790 endif
23800 gload Gazo$ + "Screen1.png",0,0,0
23810 color rgb(255,0,0):
23820 locate 1,1
23830 print "バーズアイグリッド(フォーカスライン2)"
23840 color rgb(255,255,255)
23850 locate 1,3:
23860 print "●.縦のフォーカスライン"
23870 locate 1,5
23880 print "1.表現者ライン:" + Forcus2_buffer$(2)
23890 locate 1,7
23900 print "2.司令塔ライン:" + Forcus2_buffer$(1)
23910 locate 1,9
23920 print "3.指導者ライン:" + Forcus2_buffer$(0)
23930 color rgb(0,0,0)
23940 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23950 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
23960 key$=inkey$
23970 bg=strig(1)
23980 bg2=strig(0)
23990 pause 200
24000 wend
24010 if ((bg = 2) or (key$ = chr$(13))) then
24020 goto BirdsEye_Result4:
24030 endif
24040 if (bg2=2) then
24050 for i=0 to 8
24060 buffer(i)=0
24070 next i
24080 goto Main_Screen:
24090 endif
24100 BirdsEye_Result4:
24110 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
24120 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
24130 Forcus3_buffer$(1) = "○"
24140 else
24150 Forcus3_buffer$(1) = "☓"
24160 endif
24170 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
24180 Forcus3_buffer$(0) = "○"
24190 else
24200 Forcus3_buffer$(0) = "☓"
24210 endif
24220 gload Gazo$ + "Screen1.png",0,0,0
24230 color rgb(255,0,0):
24240 locate 1,1
24250 print "バーズアイグリッド(フォーカスライン3)"
24260 color rgb(255,255,255)
24270 locate 1,3:
24280 print "●.斜めのフォーカスライン"
24290 locate 1,5
24300 print "1.成功者ライン:"+Forcus3_buffer$(1)
24310 locate 1,7
24320 print "2.セレブライン:"+Forcus3_buffer$(0)
24330 color rgb(0,0,0)
24340 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
24350 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24360 key$ = inkey$
24370 bg = strig(1)
24380 bg2 = strig(0)
24390 pause 200
24400 wend
24410 if ((bg=2) or (key$=chr$(13))) then
24420 goto Result_Birtheye1:
24430 endif
24440 if (bg2=2) then
24450 'データークリア
24460 for i=0 to 8
24470 buffer(i) = 0
24480 next i
24490 goto Main_Screen:
24500 endif
24510 References1:
24520 cls 3:key$ = "":bg = 0:play "":font 48-16
24530 gload Gazo$ + "Reference1_20230703.png",0,0,0
24540 print chr$(13)+chr$(13)+chr$(13)
24550 color rgb(0,0,0)
24560 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24570 print "Author:carol Adrinne,PhD"+chr$(13)
24580 print "出版社:幻冬舎" + chr$(13)
24590 print "HP:www.carolAdrienne.jp/"+chr$(13)
24600 print "ISBN:978-4-344-01394-0"+chr$(13)
24610 print "定価:1500円 + 税"+chr$(13)
24620 color rgb(255,255,255)
24630 locate 1,23
24640 print "ジョイパッド右：次へ"
24650 while (key$ <> chr$(13) and bg <> 2)
24660 bg = strig(1)
24670 key$ = inkey$
24680 wend
24690 '
24700 if ((bg = 2) or (key$ = chr$(13))) then
24710 pause 200:goto References2:
24720 endif
24730 'ユダヤの秘儀 カバラ大占術
24740 References2:
24750 cls 3:play "":bg = 0:key$ = ""
24760 gload Gazo$ + "Reference2_20230703.png",0,0,0
24770 '参考文献２
24780 'カバラ大占術
24790 print chr$(13) + chr$(13) + chr$(13)
24800 color  rgb(0,0,0):font 48-16
24810 locate 1,3
24820 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
24830 print "著者：浅野　八郎" + chr$(13)
24840 print "出版社:NON BOOK" + chr$(13)
24850 print "ISBN:4-396-10364-6" + chr$(13)
24860 print "定価:829円 + 税"
24870 color rgb(255,255,255)
24880 locate 1,23
24890 print "ジョイパッド右：トップへ行く"
24900 while ((key$ <> chr$(13)) and (bg <> 2))
24910 bg = strig(1)
24920 key$ = inkey$
24930 wend
24940 if ((bg = 2) or (key$ = chr$(13))) then
24950 pause 200:goto Main_Screen:
24960 endif
24970 end
24980 '1.数秘術　トップ画面
24990 Kabara_First_Top:
25000 cls 3:color rgb(255,255,255):play ""
25010 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
25020 gload Gazo$ + "downscreen.png",0,0,800
25030 No=0:init"kb:4"
25040 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
25050 print chr$(13);chr$(13)
25060 color rgb(255,255,255)
25070 locate 3,4:No=0
25080 print "番号選んでください" + chr$(13)
25090 print " :1.数秘術占い" + chr$(13)
25100 print " :2.トップ画面に戻る" + chr$(13)
25110 color rgb(0,0,0)
25120 sp_on 0,1
25130 locate 1,15:print "1.数秘術番号を求めるを選択"
25140 'KeyBord:true
25150 'Joy Pad:true
25160 '上、下:true
25170 '
25180 'ｂｇ：決定ボタン
25190 'カーソル　上
25200 'カーソル　下
25210 Kabara_First_Top2:
25220 key$ = "":bg = 0:y = 0:
25230 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
25240 key$ = inkey$
25250 bg = strig(1)
25260 y = stick(1)
25270 'PauseでCPUを休める
25280 pause 5
25290 wend
25300 '1.カーソル　下 処理 chr$(31)
25310 'カーソル　下
25320 if ((key$ = chr$(31)) or (y = 1)) then
25330 select case No
25340 '
25350 case 1:
25360 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
25370 case 0:
25380 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25390 'case 2:
25400 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25410 end select
25420 endif
25430 '2.カーソル　上 処理 chr$(30)
25440 if ((key$ = chr$(30)) or (y = -1)) then
25450 select case No
25460 case 0:
25470 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25480 case 1:
25490 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25500 'case 2:
25510 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25520 end select
25530 endif
25540 '3.決定 処理  bg:2 or Enter key:chr$(13)
25550 if ((bg = 2) or (key$ = chr$(13))) then
25560 select case No
25570 case 0:
25580 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25590 goto Kabara_TopScreen:
25600 'case 1:
25610 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25620 case 1:
25630 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25640 end select
25650 endif
25660 '
25670 'Kabara 相性占い トップ画面
25680 Kabara_Aishou_Top:
25690 cls 3:y=0:key$="":bg=0:No=0
25700 play ""
25710 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25720 gload Gazo$ + "downscreen.png",0,0,800
25730 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25740 print chr$(13) + chr$(13)
25750 locate 0,4:color rgb(255,255,255)
25760 'print "Ok"
25770 '
25780 print "番号を選んでください" + chr$(13)
25790 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
25800 print " :2.ビジネスの相性占い" + chr$(13)
25810 print " :3.トップ画面に戻る" + chr$(13)
25820 sp_on 0,1:sp_on 1,0:sp_on 2,0
25830 color rgb(0,0,0)
25840 locate 1,15:print "1.男女2人の相性占いを選択"
25850 Kabara_Aishou_Top2:
25860 key$ = "":y = 0:bg = 0:
25870 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
25880 'ジョイパッド(右) ,十字キー (上下)
25890 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
25900 y = stick(1)
25910 key$ = inkey$
25920 bg = strig(1)
25930 pause 200
25940 wend
25950 'カーソル　下 or 十字キー　下
25960 if ((key$ = chr$(31)) or (y = 1)) then
25970 select case No
25980 '選択肢　1 - 2に変更
25990 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26000 'ok
26010 case 0:
26020 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26030 '選択肢　2 - 3に変更
26040 case 1:
26050 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
26060 'リリース時 case 2コメント解除
26070 case 2:
26080 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
26090 case else:
26100 goto Kabara_Aishou_Top2:
26110 end select
26120 endif
26130 '十字キー　上　、カーソル　上
26140 if ((key$ = chr$(30)) or (y = -1)) then
26150 select case No
26160 case 0:
26170 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
26180 case 1:
26190 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
26200 case 2:
26210 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26220 case else:
26230 goto Kabara_Aishou_Top2:
26240 end select
26250 endif
26260 '十字キー　上下:選択
26270 'ジョイパッド 右:決定
26280 if ((bg = 2) or (key$ = chr$(13))) then
26290 select case No
26300 '1.男女の相性
26310 case 0:
26320 '男女の相性占い(未実装)トップ画面に飛ぶ
26330 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
26340 '2ビジネスの相性
26350 case 1:
26360 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
26370 case 2:
26380 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
26390 end select
26400 endif
26410 '0.男女の相性　トップ画面　ここから
26420 Danjyo_Aisyou_Top:
26430 cls 3:y=0:key$="":bg=0:No=0
26440 play ""
26450 gload Gazo$ + "Screen1.png",0,0,0
26460 gload Gazo$ + "downscreen.png",0,0,800
26470 print chr$(13) + chr$(13)
26480 locate 0,4:color rgb(255,255,255)
26490 'print "Ok"
26500 '
26510 print "番号を選んでください" + chr$(13)
26520 print " :1.自分と異性の相性(未実装)" + chr$(13)
26530 print " :2.男女2人の相性" + chr$(13)
26540 print " :3.トップ画面に戻る" + chr$(13)
26550 sp_on 0,1:sp_on 1,0:sp_on 2,0
26560 color rgb(0,0,0)
26570 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
26580 Danjyo_Aisyou_Top2:
26590 key$ = "":y = 0:bg = 0:
26600 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
26610 'ジョイパッド(右) ,十字キー (上下)
26620 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
26630 y = stick(1)
26640 key$ = inkey$
26650 bg = strig(1)
26660 pause 200
26670 wend
26680 'カーソル　下 or 十字キー　下
26690 if ((key$ = chr$(31)) or (y = 1)) then
26700 select case No
26710 '選択肢　1 - 2に変更
26720 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26730 'ok
26740 case 0:
26750 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
26760 '選択肢　2 - 3に変更
26770 case 1:
26780 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
26790 'リリース時 case 2コメント解除
26800 case 2:
26810 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
26820 case else:
26830 goto Kabara_Aishou_Top2:
26840 end select
26850 endif
26860 '十字キー　上　、カーソル　上
26870 if ((key$ = chr$(30)) or (y = -1)) then
26880 select case No
26890 case 0:
26900 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
26910 case 1:
26920 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
26930 case 2:
26940 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
26950 case else:
26960 goto Kabara_Aishou_Top2:
26970 end select
26980 endif
26990 '十字キー　上下:選択
27000 'ジョイパッド 右:決定
27010 if ((bg = 2) or (key$ = chr$(13))) then
27020 select case No
27030 '1.自分と異性の相性
27040 case 0:
27050 '未実装
27060 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
27070 '2男女の相性 男性の名前入力に飛ぶ
27080 case 1:
27090 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
27100 case 2:
27110 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
27120 end select
27130 endif
27140 '0.男女の相性　トップ画面　ここまで
27150 '1.男女の相性 ここから
27160 '1-1.男性の名前を入力
27170 Danjyo_Aisyou_Input_Name_male:
27180 No=0:color RGB(255,255,255)
27190 '入力:キーボード
27200 cls 3:init "kb:2"
27210 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27220 gload Gazo$ + "downscreen.png",0,0,800
27230 for i=0 to 3
27240 buf_male_year(i)=0
27250 next i
27260 play "":color rgb(255,0,0):male_name$ = ""
27270 locate 0,1
27280 print "男性の相性" + chr$(13) + chr$(13)
27290 color rgb(255,255,255):
27300 locate 0,3
27310 print "男性の相性を求めます。男性の名前を" + chr$(13)
27320 print "入れてください" + chr$(13)
27330 locate 0,15:color rgb(0,0,0)
27340 Input "男性の名前:",male_name$
27350 '-------------------------------------------
27360 '1-2:男性の生まれた年代
27370 Danjyo_Aisyou_Input_Born_Year:
27380 No=0:color RGB(255,255,255)
27390 cls 3:init "kb:4"
27400 gload Gazo$ + "Screen1.png",0,0,0
27410 gload Gazo$ + "downscreen.png",0,0,800
27420 play "":color rgb(255,0,0)
27430 '-------------------------------------------
27440 font 48
27450 locate 0,1
27460 '文字色：黒　 color rgb(0,0,0)
27470 color rgb(255,255,255)
27480 print "男性の生まれた年代を入れて下さい" + chr$(13)
27490 color rgb(255,255,255)
27500 locate 1,3
27510 print "男性の生まれた年代(西暦4桁):";buf_male_year$
27520 color rgb(255,255,255)
27530 'locate 4,6:print ":7"
27540 'locate 9,6:print ":8"
27550 'locate 12,6:print ":9"
27560 locate 4,6
27570 print ":7  :8  :9" + chr$(13)
27580 color rgb(255,255,255)
27590 locate 4,8
27600 print ":4  :5  :6" + chr$(13)
27610 color rgb(255,255,255)
27620 locate 4,10
27630 print ":1  :2  :3" + chr$(13)
27640 locate 4,12
27650 print "    :0"
27660 locate 12,12
27670 color rgb(0,0,255)
27680 print ":Ok"
27690 sp_on 4,0: sp_on 5,0:sp_on 6,0
27700 sp_on 7,0:sp_on 8,0:sp_on 9,0
27710 sp_on 10,0:sp_on 11,0:sp_on 12,0
27720 sp_on 13,0:sp_on 14,1
27730 '-------------------------------------------------------------------------------------
27740 Danjyo_Aisyou_Input_Male_Born_Year2:
27750 key$="":bg=0:y=0:y2=0:bg2=0:
27760 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27770 key$ = inkey$
27780 bg = strig(1)
27790 y = stick(1)
27800 y2 = stick(0)
27810 bg2=strig(0)
27820 pause 200
27830 wend
27840 '十字キー　ここから
27850 '上の矢印　または、十字キー上
27860 if ((y = -1) or (key$ = chr$(30))) then
27870 select case No
27880 'No=-1:okのとき:初期の状態
27890 '0kボタンから３に移動
27900 '上に行く 処理
27910 case -1:
27920 No=3:sp_on 12,1:sp_on 14,0
27930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
27940 '選択肢:3
27950 '3ボタンから 6に移動
27960 case 3:
27970 No=6:sp_on 12,0:sp_on 11,1
27980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
27990 '6ボタンから ９に移動
28000 case 6:
28010 No=9:sp_on 10,1:sp_on 11,0
28020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28030 '6ボタンから ９に移動　ここまで
28040 '9で上を押して何もしない
28050 case 9:
28060 '何もしない
28070 No=9
28080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28090 '9で上を押しても何もしない　ここまで
28100 '上　 0ボタンから2ボタン
28110 'sp_on 6,1:1
28120 'sp_on 8,1:5
28130 'sp_on 7,1:7
28140 case 0:
28150 No=2:sp_on 13,0:sp_on 9,1:
28160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28170 '上  0ボタンから2ボタン　ここまで
28180 '2から５になる 上
28190 case 2:
28200 No=5:sp_on 8,1:sp_on 9,0:
28210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28220 case 5:
28230 No=8:sp_on 7,1:sp_on 8,0
28240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28250 case 8:
28260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28270 case 1:
28280 No=4:sp_on 5,1:sp_on 6,0
28290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28300 case 4:
28310 No=7:sp_on 4,1:sp_on 5,0
28320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28330 case 7:
28340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28350 end select
28360 endif
28370 '左３　ここまで
28380 '下の矢印
28390 '中央 2
28400 if ((y=1) or (key$ = chr$(31))) then
28410 select case No
28420 '9から６に下げる
28430 case 9:
28440 No=6:sp_on 11,1:sp_on 10,0
28450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28460 '6から３に下げる
28470 case 6:
28480 No=3:sp_on 12,1:sp_on 11,0
28490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28500 '3から０ｋに変える
28510 case 3:
28520 No=-1:sp_on 14,1:sp_on 12,0
28530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28540 'Okから下のボタンを押しても何もしない
28550 case -1:
28560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28570 case 8:
28580 No=5:sp_on 8,1:sp_on 7,0
28590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28600 case 5:
28610 No=2:sp_on 9,1:sp_on 8,0
28620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28630 case 2:
28640 No=0:sp_on 13,1:sp_on 9,0
28650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28660 case 0:
28670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28680 case 7:
28690 No=4:sp_on 5,1:sp_on 4,0
28700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28710 case 4:
28720 No=1:sp_on 6,1:sp_on 5,0
28730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28740 case 1:
28750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28760 end select
28770 endif
28780 '左へボタン 十字キー　左　or 　カーソル左
28790 if ((y2 = -1) or (key$ = chr$(29))) then
28800 select case No
28810 'Ok ボタン  Okから　左　０に行く
28820 case -1:
28830 No=0:sp_on 13,1:sp_on 14,0
28840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28850 '0 ボタン  左　何もしない
28860 case 0:
28870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28880 case 3:
28890 No=2:sp_on 9,1:sp_on 12,0:
28900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28910 case 2:
28920 No=1:sp_on 6,1:sp_on 9,0:
28930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28940 case 1:
28950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28960 case 6:
28970 No=5:sp_on 8,1:sp_on 11,0
28980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28990 case 5:
29000 No=4:sp_on 5,1:sp_on 8,0
29010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29020 case 4:
29030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29040 case 9:
29050 No=8:sp_on 7,1:sp_on 10,0
29060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29070 case 8:
29080 No=7:sp_on 4,1:sp_on 7,0
29090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29100 case 7:
29110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29120 end select
29130 endif
29140 '右  十字キー　右　or カーソル　右
29150 if ((y2 = 1) or (key$ = chr$(28))) then
29160 select case No
29170 '0ボタンからokボタン右に移動
29180 case 0:
29190 No=-1:sp_on 14,1:sp_on 13,0
29200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29210 '0ボタンからokボタン 右に移動　ここまで
29220 'OKボタンで右を押して何もしない
29230 case -1:
29240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29250 case 1:
29260 No=2:sp_on 9,1:sp_on 6,0
29270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29280 case 2:
29290 No=3:sp_on 12,1:sp_on 9,0
29300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29310 case 3:
29320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29330 case 4:
29340 No=5:sp_on 8,1:sp_on 5,0
29350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29360 case 5:
29370 No=6:sp_on 11,1:sp_on 8,0
29380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29390 case 7:
29400 No=8:sp_on 7,1:sp_on 4,0
29410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29420 case 8:
29430 No=9:sp_on 10,1:sp_on 7,0
29440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29450 case 9:
29460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29470 case 6:
29480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29490 end select
29500 'Okから右ボタンを押して何もしない ここまで
29510 endif
29520 '十字キー　ここまで
29530 '==============================
29540 'ここから
29550 '==============================
29560 if ((bg = 2) or (key$ = chr$(13))) then
29570 select case count
29580 case 0:
29590 count = 1
29600 if (No = -1) then
29610 count = 0:No=0
29620 buf_male_year(0) = No
29630 'Okボタンを押したとき
29640 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29650 else
29660 'Okボタン以外が押されたとき
29670 if (No >= 1 and No <= 2) then
29680 buf_year$="":buf_year$ = str$(No) + "***"
29690 buf_year = No:a= No
29700 buf_Jyoushi_Born_Day(0) = No
29710 locate 1,3
29720 color rgb(255,255,255)
29730 print "男性の生まれた年代(西暦4桁):";buf_year$
29740 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29750 else
29760 count=0
29770 ui_msg"数字が範囲外になります。"
29780 buf_year$="":buf_year=0
29790 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29800 endif
29810 endif
29820 case 1:
29830 count = 2
29840 if (No = -1) then
29850 count = 1
29860 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29870 else
29880 buf_year = a * 10 + No
29890 b=buf_year
29900 buf_year$ = str$(buf_year) + "**"
29910 buf_male_year(0)=buf_year
29920 locate 1,3
29930 color rgb(255,255,255)
29940 print "                                                                "
29950 locate 1,3
29960 print "男性の生まれた年代(西暦4桁):" + buf_year$
29970 'if (No = -1) then
29980 'count=1
29990 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30000 endif
30010 case 2:
30020 count=3
30030 if (No=-1) then
30040 count =2
30050 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30060 else
30070 buf_year = b * 10 + No
30080 c=buf_year
30090 buf_year$ = str$(buf_year) + "*"
30100 buf_male_year(0) = buf_year
30110 locate 1,3
30120 color rgb(255,255,255)
30130 print "                                        "
30140 locate 1,3
30150 print "男性の生まれた年代(西暦4桁):";buf_year$
30160 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30170 endif
30180 case 3:
30190 count=4
30200 if (No = -1) then
30210 No=0
30220 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30230 else
30240 buf_year = c * 10 + No
30250 buf_year$ = str$(buf_year)
30260 buf_male_year(0) = buf_year
30270 locate 1,3
30280 color RGB(255,255,255)
30290 print "                                      "
30300 locate 1,3
30310 print "男性の生まれた年代(西暦4桁):";buf_year$
30320 buf_year=val(buf_year$)
30330 'year=val(buf_year$)
30340 'if (No=-1) then
30350 'goto Input_Born_Month:
30360 'else
30370 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30380 endif
30390 case 4:
30400 'bufyear=buf_year
30410 if (No=-1) then
30420 buf_year = val(buf_year$)
30430 buf_male_year(0)=buf_year
30440 sp_on 14,0:No=0
30450 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30460 else
30470 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30480 endif
30490 end select
30500 endif
30510 '===========================
30520 'ここまでを部下のところにコピーする.
30530 '===========================
30540 if (bg2 = 2) then
30550 select case count2
30560 case 0:
30570 if (No = -1) then
30580 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
30590 count=0
30600 locate 1,3
30610 color rgb(255,255,255)
30620 print "                                      "
30630 locate 1,3
30640 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
30650 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30660 else
30670 '(buf_year=0) then
30680 buf_male_year=0:buf_male_year$="****"
30690 locate 1,3
30700 print "                                       "
30710 locate 1,3
30720 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
30730 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30740 'endif
30750 endif
30760 end select
30770 endif
30780 '-------生まれた年代　男性-------------
30790 '-------生まれた月　男性-------------
30800 '1-2:男性の生まれた月
30810 Danjyo_Aisyou_Input_Male_Born_Month:
30820 cls 3:play "":count=0:count2=0
30830 'No=-1:Okのとき
30840 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
30850 for i=0 to 1
30860 buf_male_month(i)=0
30870 next i
30880 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
30890 gload Gazo$ + "Screen1.png",0,0,0
30900 gload Gazo$ + "downscreen.png",0,0,800
30910 'Init"kb:4"
30920 '音声ファイル再生 2023.06.07
30930 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
30940 font 48
30950 locate 0,1
30960 '文字色：黒　 color rgb(0,0,0)
30970 '文字色:白
30980 color rgb(255,255,255)
30990 print "男性の生まれた月を入れて下さい" + chr$(13)
31000 '文字色:白
31010 color rgb(255,255,255)
31020 locate 1,3
31030 '文字色:白
31040 print "男性の生まれた月(1月~12月):"+buf_male_Month$
31050 color rgb(255,255,255)
31060 'locate 4,6:print ":7"
31070 'locate 9,6:print ":8"
31080 'locate 12,6:print ":9"
31090 locate 4,6
31100 '文字色:赤
31110 print ":7  :8  :9" + chr$(13)
31120 color rgb(255,255,255)
31130 locate 4,8
31140 print ":4  :5  :6" + chr$(13)
31150 color rgb(255,255,255)
31160 locate 4,10
31170 print ":1  :2  :3" + chr$(13)
31180 locate 4,12
31190 print "    :0"
31200 locate 12,12
31210 color rgb(0,0,255)
31220 print ":Ok"
31230 sp_on 4,0: sp_on 5,0:sp_on 6,0
31240 sp_on 7,0:sp_on 8,0:sp_on 9,0
31250 sp_on 10,0:sp_on 11,0:sp_on 12,0
31260 sp_on 13,0:sp_on 14,1
31270 '----------------------------------------------------------------------------------------
31280 Danjyo_Aisyou_Input_Male_Born_Month2:
31290 key$="":bg=0:y=0:y2=0:bg2=0
31300 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31310 key$ = inkey$
31320 bg = strig(1)
31330 y = stick(1)
31340 y2 = stick(0)
31350 bg2 = strig(0)
31360 pause 5
31370 wend
31380 '十字キー　ここから
31390 '上の矢印　または、十字キー上
31400 if ((y = -1) or (key$ = chr$(30))) then
31410 select case No
31420 'No=-1:okのとき:初期の状態
31430 '0kボタンから３に移動
31440 '上に行く 処理
31450 case -1:
31460 No=3:sp_on 12,1:sp_on 14,0
31470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31480 '選択肢:3
31490 '3ボタンから 6に移動
31500 case 3:
31510 No=6:sp_on 12,0:sp_on 11,1
31520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31530 '6ボタンから ９に移動
31540 case 6:
31550 No=9:sp_on 10,1:sp_on 11,0
31560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31570 '6ボタンから ９に移動　ここまで
31580 '9で上を押して何もしない
31590 case 9:
31600 '何もしない
31610 No=9
31620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31630 '9で上を押しても何もしない　ここまで
31640 '上　 0ボタンから2ボタン
31650 'sp_on 6,1:1
31660 'sp_on 8,1:5
31670 'sp_on 7,1:7
31680 case 0:
31690 No=2:sp_on 13,0:sp_on 9,1:
31700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31710 '上  0ボタンから2ボタン　ここまで
31720 '2から５になる 上
31730 case 2:
31740 No=5:sp_on 8,1:sp_on 9,0:
31750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31760 case 5:
31770 No=8:sp_on 7,1:sp_on 8,0
31780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31790 case 8:
31800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31810 case 1:
31820 No=4:sp_on 5,1:sp_on 6,0
31830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31840 case 4:
31850 No=7:sp_on 4,1:sp_on 5,0
31860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31870 case 7:
31880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31890 end select
31900 endif
31910 '左３　ここまで
31920 '下の矢印
31930 '中央 2
31940 if ((y=1) or (key$ = chr$(31))) then
31950 select case No
31960 '9から６に下げる
31970 case 9:
31980 No=6:sp_on 11,1:sp_on 10,0
31990 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
32000 '6から３に下げる
32010 case 6:
32020 No=3:sp_on 12,1:sp_on 11,0
32030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32040 '3から０ｋに変える
32050 case 3:
32060 No=-1:sp_on 14,1:sp_on 12,0
32070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32080 'Okから下のボタンを押しても何もしない
32090 case -1:
32100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32110 case 8:
32120 No=5:sp_on 8,1:sp_on 7,0
32130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32140 case 5:
32150 No=2:sp_on 9,1:sp_on 8,0
32160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32170 case 2:
32180 No=0:sp_on 13,1:sp_on 9,0
32190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32200 case 0:
32210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32220 case 7:
32230 No=4:sp_on 5,1:sp_on 4,0
32240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32250 case 4:
32260 No=1:sp_on 6,1:sp_on 5,0
32270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32280 case 1:
32290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32300 end select
32310 endif
32320 '左へボタン 十字キー　左　or 　カーソル左
32330 if ((y2 = -1) or (key$ = chr$(29))) then
32340 select case No
32350 'Ok ボタン  Okから　左　０に行く
32360 case -1:
32370 No=0:sp_on 13,1:sp_on 14,0
32380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32390 '0 ボタン  左　何もしない
32400 case 0:
32410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32420 case 3:
32430 No=2:sp_on 9,1:sp_on 12,0:
32440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32450 case 2:
32460 No=1:sp_on 6,1:sp_on 9,0:
32470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32480 case 1:
32490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32500 case 6:
32510 No=5:sp_on 8,1:sp_on 11,0
32520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32530 case 5:
32540 No=4:sp_on 5,1:sp_on 8,0
32550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32560 case 4:
32570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32580 case 9:
32590 No=8:sp_on 7,1:sp_on 10,0
32600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32610 case 8:
32620 No=7:sp_on 4,1:sp_on 7,0
32630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32640 case 7:
32650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32660 end select
32670 endif
32680 '右  十字キー　右　or カーソル　右
32690 if ((y2 = 1) or (key$ = chr$(28))) then
32700 select case No
32710 '0ボタンからokボタン右に移動
32720 case 0:
32730 No=-1:sp_on 14,1:sp_on 13,0
32740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32750 '0ボタンからokボタン 右に移動　ここまで
32760 'OKボタンで右を押して何もしない
32770 case -1:
32780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32790 case 1:
32800 No=2:sp_on 9,1:sp_on 6,0
32810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32820 case 2:
32830 No=3:sp_on 12,1:sp_on 9,0
32840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32850 case 3:
32860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32870 case 4:
32880 No=5:sp_on 8,1:sp_on 5,0
32890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32900 case 5:
32910 No=6:sp_on 11,1:sp_on 8,0
32920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32930 case 7:
32940 No=8:sp_on 7,1:sp_on 4,0
32950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32960 case 8:
32970 No=9:sp_on 10,1:sp_on 7,0
32980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32990 case 9:
33000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33010 case 6:
33020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33030 end select
33040 'Okから右ボタンを押して何もしない ここまで
33050 endif
33060 '十字キー　ここまで
33070 '右の丸ボタン + Enter key 決定キー
33080 if ((bg=2) or (key$=chr$(13))) then
33090 select case count
33100 case 0:
33110 if (No=-1) then No=0
33120 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
33130 if (buf_male_month > 1 and buf_male_month < 10)  then
33140 buf_male_Month$ = str$(buf_male_month)
33150 'buf_month=No
33160 endif
33170 if (buf_male_month = 1)  then
33180 buf_male_Month$ = str$(buf_male_month) + "*"
33190 'c=buf_month
33200 endif
33210 locate 1,3
33220 print "                                     "
33230 color RGB(255,255,255)
33240 locate 1,3
33250 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33260 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33270 case 1:
33280 count = 2:
33290 'c = val(buf_Month$)
33300 if (No = -1) then
33310 'count=0
33320 No=0
33330 month=buf_male_month
33340 buf_male_month=val(buf_male_Month$)
33350 month=buf_male_month
33360 buf_Jyoushi_Born_Day(1)=month
33370 '生まれた日に飛ぶ
33380 goto Danjyo_Aisyou_Input_Male_Born_Day:
33390 else
33400 buf_male_month = c*10 + No
33410 'if (buf_month = 1) then
33420 'buf_Month$ = str$(buf_month)
33430 'endif
33440 buf_male_Month$ = str$(buf_male_month)
33450 buf_Jyoushi_Born_Day(1) = buf_male_month
33460 locate 0,3
33470 print "                                           "
33480 locate 1,3
33490 color Rgb(255,255,255)
33500 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33510 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33520 endif
33530 case 2:
33540 '==================================
33550 '何もしない
33560 'coun = 2
33570 '==================================
33580 'c= val(buf_Month$)
33590 'buf_month = c*10 + No
33600 'buf_Month$ = str$(buf_month)
33610 'locate 2,3
33620 'print "上司の生まれた月(1月～12月):";buf_Month$
33630 'goto Jyoushi_Input_Born_Month2:
33640 'case 3:
33650 'count=4
33660 'b=val(buf_month$)
33670 'buf_month=c*10+No
33680 'buf_Month$=str$(buf_month)
33690 'locate 2,3
33700 'print "上司の生まれた月(1月～12月):";buf_Month$
33710 'buf_month=val(buf_Month$)
33720 'year=val(buf_year$)
33730 if (No=-1) then
33740 No=0
33750 goto Danjyo_Aisyou_Input_Male_Born_Day:
33760 else
33770 goto Danjyo_Aisyou_Input_Male_Born_Day2:
33780 endif
33790 'case 4:
33800 'bufyear=buf_year
33810 'if (No=-1) then
33820 'buf_month = val(buf_Month$)
33830 'month = buf_month
33840 'sp_on 14,0
33850 'goto Input_Born_Day:
33860 'else
33870 'goto Input_Born_Month2:
33880 'endif
33890 end select
33900 endif
33910 '左の丸ボタン　キャンセル
33920 if (bg2=2) then
33930 select case count2
33940 case 0:
33950 if (No = -1) then
33960 buf_male_month=0:buf_male_Month$="**"
33970 count=0
33980 'goto rewrite2:
33990 else
34000 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
34010 buf_male_month = 0:buf_male_Month$ = "**"
34020 locate 0,3
34030 color rgb(255,255,255)
34040 print "                                       "
34050 goto rewrite2:
34060 if (No>12) then
34070 ui_msg"値が範囲外です。"
34080 goto rewrite2:
34090 endif
34100 endif
34110 endif
34120 rewrite2:
34130 locate 2,3
34140 color rgb(255,255,255)
34150 print "                                      "
34160 locate 2,3
34170 print "男性の生まれた月(1月~12月):"+buf_male_Month$
34180 goto Danjyo_Aisyou_Input_Male_Born_Month2:
34190 end select
34200 'endif
34210 endif
34220 end
34230 '-------生まれた月　男性 ここまで-------------
34240 '-------生まれた日　男性 ここから-------------
34250 Danjyo_Aisyou_Input_Male_Born_Day:
34260 cls 3:play "":count=0:count2=0
34270 'No=-1:Okのとき
34280 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
34290 for i=0 to 1
34300 buf_day(i)=0
34310 next i
34320 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34330 gload Gazo$ + "Screen1.png",0,0,0
34340 gload Gazo$ + "downscreen.png",0,0,800
34350 'Init"kb:4"
34360 '音声ファイル再生 2023.06.07
34370 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
34380 font 48
34390 locate 0,1
34400 '文字色：黒　 color rgb(0,0,0)
34410 '文字色:白
34420 color rgb(255,255,255)
34430 print "男性の生まれた日を入れて下さい" + chr$(13)
34440 '文字色:白
34450 color rgb(255,255,255)
34460 locate 1,3
34470 '文字色:白
34480 print "男性の生まれた日(1月~31月):" + buf_Day$
34490 color rgb(255,255,255)
34500 'locate 4,6:print ":7"
34510 'locate 9,6:print ":8"
34520 'locate 12,6:print ":9"
34530 locate 4,6
34540 '文字色:赤
34550 print ":7  :8  :9" + chr$(13)
34560 color rgb(255,255,255)
34570 locate 4,8
34580 print ":4  :5  :6" + chr$(13)
34590 color rgb(255,255,255)
34600 locate 4,10
34610 print ":1  :2  :3" + chr$(13)
34620 locate 4,12
34630 print "    :0"
34640 locate 12,12
34650 color rgb(0,0,255)
34660 print ":Ok"
34670 sp_on 4,0: sp_on 5,0:sp_on 6,0
34680 sp_on 7,0:sp_on 8,0:sp_on 9,0
34690 sp_on 10,0:sp_on 11,0:sp_on 12,0
34700 sp_on 13,0:sp_on 14,1
34710 '-------------------------------------------------
34720 Danjyo_Aisyou_Input_Male_Born_Day2:
34730 key$="":bg=0:y=0:y2=0:bg2=0
34740 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34750 key$ = inkey$
34760 bg = strig(1)
34770 y = stick(1)
34780 y2 = stick(0)
34790 bg2 = strig(0)
34800 pause 5
34810 wend
34820 '十字キー　ここから
34830 '上の矢印　または、十字キー上
34840 if ((y = -1) or (key$ = chr$(30))) then
34850 select case No
34860 'No=-1:okのとき:初期の状態
34870 '0kボタンから３に移動
34880 '上に行く 処理
34890 case -1:
34900 No=3:sp_on 12,1:sp_on 14,0
34910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
34920 '選択肢:3
34930 '3ボタンから 6に移動
34940 case 3:
34950 No=6:sp_on 12,0:sp_on 11,1
34960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
34970 '6ボタンから ９に移動
34980 case 6:
34990 No=9:sp_on 10,1:sp_on 11,0
35000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35010 '6ボタンから ９に移動　ここまで
35020 '9で上を押して何もしない
35030 case 9:
35040 '何もしない
35050 No=9
35060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35070 '9で上を押しても何もしない　ここまで
35080 '上　 0ボタンから2ボタン
35090 'sp_on 6,1:1
35100 'sp_on 8,1:5
35110 'sp_on 7,1:7
35120 case 0:
35130 No=2:sp_on 13,0:sp_on 9,1:
35140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35150 '上  0ボタンから2ボタン　ここまで
35160 '2から５になる 上
35170 case 2:
35180 No=5:sp_on 8,1:sp_on 9,0:
35190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35200 case 5:
35210 No=8:sp_on 7,1:sp_on 8,0
35220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35230 case 8:
35240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35250 case 1:
35260 No=4:sp_on 5,1:sp_on 6,0
35270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35280 case 4:
35290 No=7:sp_on 4,1:sp_on 5,0
35300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35310 case 7:
35320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35330 end select
35340 endif
35350 '左３　ここまで
35360 '下の矢印
35370 '中央 2
35380 if ((y=1) or (key$ = chr$(31))) then
35390 select case No
35400 '9から６に下げる
35410 case 9:
35420 No=6:sp_on 11,1:sp_on 10,0
35430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35440 '6から３に下げる
35450 case 6:
35460 No=3:sp_on 12,1:sp_on 11,0
35470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35480 '3から０ｋに変える
35490 case 3:
35500 No=-1:sp_on 14,1:sp_on 12,0
35510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35520 'Okから下のボタンを押しても何もしない
35530 case -1:
35540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35550 case 8:
35560 No=5:sp_on 8,1:sp_on 7,0
35570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35580 case 5:
35590 No=2:sp_on 9,1:sp_on 8,0
35600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35610 case 2:
35620 No=0:sp_on 13,1:sp_on 9,0
35630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35640 case 0:
35650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35660 case 7:
35670 No=4:sp_on 5,1:sp_on 4,0
35680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35690 case 4:
35700 No=1:sp_on 6,1:sp_on 5,0
35710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35720 case 1:
35730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35740 end select
35750 endif
35760 '左へボタン 十字キー　左　or 　カーソル左
35770 if ((y2 = -1) or (key$ = chr$(29))) then
35780 select case No
35790 'Ok ボタン  Okから　左　０に行く
35800 case -1:
35810 No=0:sp_on 13,1:sp_on 14,0
35820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35830 '0 ボタン  左　何もしない
35840 case 0:
35850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35860 case 3:
35870 No=2:sp_on 9,1:sp_on 12,0:
35880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35890 case 2:
35900 No=1:sp_on 6,1:sp_on 9,0:
35910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35920 case 1:
35930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35940 case 6:
35950 No=5:sp_on 8,1:sp_on 11,0
35960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35970 case 5:
35980 No=4:sp_on 5,1:sp_on 8,0
35990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36000 case 4:
36010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36020 case 9:
36030 No=8:sp_on 7,1:sp_on 10,0
36040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36050 case 8:
36060 No=7:sp_on 4,1:sp_on 7,0
36070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36080 case 7:
36090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36100 end select
36110 endif
36120 '右  十字キー　右　or カーソル　右
36130 if ((y2 = 1) or (key$ = chr$(28))) then
36140 select case No
36150 '0ボタンからokボタン右に移動
36160 case 0:
36170 No=-1:sp_on 14,1:sp_on 13,0
36180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36190 '0ボタンからokボタン 右に移動　ここまで
36200 'OKボタンで右を押して何もしない
36210 case -1:
36220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36230 case 1:
36240 No=2:sp_on 9,1:sp_on 6,0
36250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36260 case 2:
36270 No=3:sp_on 12,1:sp_on 9,0
36280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36290 case 3:
36300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36310 case 4:
36320 No=5:sp_on 8,1:sp_on 5,0
36330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36340 case 5:
36350 No=6:sp_on 11,1:sp_on 8,0
36360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36370 case 7:
36380 No=8:sp_on 7,1:sp_on 4,0
36390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36400 case 8:
36410 No=9:sp_on 10,1:sp_on 7,0
36420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36430 case 9:
36440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36450 case 6:
36460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36470 end select
36480 'Okから右ボタンを押して何もしない ここまで
36490 endif
36500 '十字キー　ここまで
36510 '右の丸ボタン + Enter key 決定キー
36520 if ((bg=2) or (key$=chr$(13))) then
36530 select case count
36540 case 0:
36550 if (No=-1) then No=0
36560 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
36570 if (buf_male_day > 1 and buf_male_day < 10)  then
36580 buf_male_Day$ = str$(buf_male_day)
36590 'buf_month=No
36600 endif
36610 if (buf_male_day = 1)  then
36620 buf_male_Day$ = str$(buf_male_day) + "*"
36630 'c=buf_month
36640 endif
36650 locate 1,3
36660 print "                                     "
36670 color RGB(255,255,255)
36680 locate 1,3
36690 print "男性の生まれた日(1月~31月):" + buf_male_Day$
36700 goto Danjyo_Aisyou_Input_Male_Born_Day2:
36710 case 1:
36720 count = 2:
36730 'c = val(buf_Month$)
36740 if (No = -1) then
36750 'count=0
36760 No=0
36770 day=buf_male_Day
36780 buf_male_Day=val(buf_male_Day$)
36790 day=buf_male_Day
36800 buf_Jyoushi_Born_Day(2)=day
36810 '生まれた日に飛ぶ
36820 goto Danjyo_Aisyou_Input_Male_Born_Day:
36830 else
36840 buf_male_Day = c*10 + No
36850 'if (buf_month = 1) then
36860 'buf_Month$ = str$(buf_month)
36870 'endif
36880 buf_male_Day$ = str$(buf_male_Day)
36890 buf_male_Born_Day(2) = buf_male_Day:
36900 locate 0,3
36910 print "                                           "
36920 locate 1,3
36930 color Rgb(255,255,255)
36940 print "男性の生まれた月(1月~12月):" + buf_male_Day$
36950 goto Danjyo_Aisyou_Input_Male_Born_Day2:
36960 endif
36970 case 2:
36980 '==================================
36990 '何もしない
37000 'coun = 2
37010 '==================================
37020 'c= val(buf_Month$)
37030 'buf_month = c*10 + No
37040 'buf_Month$ = str$(buf_month)
37050 'locate 2,3
37060 'print "上司の生まれた月(1月～12月):";buf_Month$
37070 'goto Jyoushi_Input_Born_Month2:
37080 'case 3:
37090 'count=4
37100 'b=val(buf_month$)
37110 'buf_month=c*10+No
37120 'buf_Month$=str$(buf_month)
37130 'locate 2,3
37140 'print "上司の生まれた月(1月～12月):";buf_Month$
37150 'buf_month=val(buf_Month$)
37160 'year=val(buf_year$)
37170 if (No=-1) then
37180 No=0
37190 goto Danjyo_Aisyou_Input_Male_Born_Day:
37200 else
37210 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37220 endif
37230 'case 4:
37240 'bufyear=buf_year
37250 'if (No=-1) then
37260 'buf_month = val(buf_Month$)
37270 'month = buf_month
37280 'sp_on 14,0
37290 'goto Input_Born_Day:
37300 'else
37310 'goto Input_Born_Month2:
37320 'endif
37330 end select
37340 endif
37350 '左の丸ボタン　キャンセル
37360 if (bg2=2) then
37370 select case count2
37380 case 0:
37390 if (No = -1) then
37400 buf_male_day=0:buf_male_Day$="**"
37410 count=0
37420 'goto rewrite2:
37430 else
37440 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
37450 buf_male_day = 0:buf_male_Day$ = "**"
37460 locate 0,3
37470 color rgb(255,255,255)
37480 print "                                       "
37490 goto rewrite2:
37500 if (No>12) then
37510 ui_msg"値が範囲外です。"
37520 goto rewrite2:
37530 endif
37540 endif
37550 endif
37560 rewrite2:
37570 locate 2,3
37580 color rgb(255,255,255)
37590 print "                                      "
37600 locate 2,3
37610 print "男性の生まれた日(1月~31月):"+buf_male_Day$
37620 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37630 end select
37640 'endif
37650 endif
37660 end
37670 '-------生まれた日　女性　ここまで-------------
37680 '1-1.女性の名前を入力
37690 Danjyo_Aisyou_Input_Name_female:
37700 No=0:color RGB(255,255,255)
37710 '入力:キーボード
37720 cls 3:init "kb:2"
37730 gload Gazo$ + "Screen1.png",0,0,0
37740 gload Gazo$ + "downscreen.png",0,0,800
37750 play "":color rgb(255,0,0):female_name$ = ""
37760 locate 0,1
37770 print "女性の相性" + chr$(13) + chr$(13)
37780 color rgb(255,255,255):
37790 locate 0,3
37800 print "女性の相性を求めます。男性の名前を" + chr$(13)
37810 print "入れてください" + chr$(13)
37820 locate 0,15:color rgb(0,0,0)
37830 Input "女性の名前:",female_name$
37840 '-------------------------------------------
37850 '-------生まれた年代　女性 ここから-------------
37860 Danjyo_Aisyou_Input_feMale_Born_Year:
37870 cls 3:play "":count=0:count2=0
37880 'No=-1:Okのとき
37890 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
37900 for i=0 to 1
37910 buf_day(i)=0
37920 next i
37930 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
37940 gload Gazo$ + "Screen1.png",0,0,0
37950 gload Gazo$ + "downscreen.png",0,0,800
37960 'Init"kb:4"
37970 '音声ファイル再生 2023.06.07
37980 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
37990 font 48
38000 locate 0,1
38010 '文字色：黒　 color rgb(0,0,0)
38020 '文字色:白
38030 color rgb(255,255,255)
38040 print "女性の生まれた年代を入れて下さい" + chr$(13)
38050 '文字色:白
38060 color rgb(255,255,255)
38070 locate 1,3
38080 '文字色:白
38090 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
38100 color rgb(255,255,255)
38110 'locate 4,6:print ":7"
38120 'locate 9,6:print ":8"
38130 'locate 12,6:print ":9"
38140 locate 4,6
38150 '文字色:赤
38160 print ":7  :8  :9" + chr$(13)
38170 color rgb(255,255,255)
38180 locate 4,8
38190 print ":4  :5  :6" + chr$(13)
38200 color rgb(255,255,255)
38210 locate 4,10
38220 print ":1  :2  :3" + chr$(13)
38230 locate 4,12
38240 print "    :0"
38250 locate 12,12
38260 color rgb(0,0,255)
38270 print ":Ok"
38280 sp_on 4,0: sp_on 5,0:sp_on 6,0
38290 sp_on 7,0:sp_on 8,0:sp_on 9,0
38300 sp_on 10,0:sp_on 11,0:sp_on 12,0
38310 sp_on 13,0:sp_on 14,1
38320 '---------------------------------------------
38330 Danjyo_Aisyou_Input_feMale_Born_Year2:
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
38520 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
38530 '選択肢:3
38540 '3ボタンから 6に移動
38550 case 3:
38560 No=6:sp_on 12,0:sp_on 11,1
38570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38580 '6ボタンから ９に移動
38590 case 6:
38600 No=9:sp_on 10,1:sp_on 11,0
38610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38620 '6ボタンから ９に移動　ここまで
38630 '9で上を押して何もしない
38640 case 9:
38650 '何もしない
38660 No=9
38670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38680 '9で上を押しても何もしない　ここまで
38690 '上　 0ボタンから2ボタン
38700 'sp_on 6,1:1
38710 'sp_on 8,1:5
38720 'sp_on 7,1:7
38730 case 0:
38740 No=2:sp_on 13,0:sp_on 9,1:
38750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38760 '上  0ボタンから2ボタン　ここまで
38770 '2から５になる 上
38780 case 2:
38790 No=5:sp_on 8,1:sp_on 9,0:
38800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38810 case 5:
38820 No=8:sp_on 7,1:sp_on 8,0
38830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38840 case 8:
38850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38860 case 1:
38870 No=4:sp_on 5,1:sp_on 6,0
38880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38890 case 4:
38900 No=7:sp_on 4,1:sp_on 5,0
38910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38920 case 7:
38930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
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
39040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39050 '6から３に下げる
39060 case 6:
39070 No=3:sp_on 12,1:sp_on 11,0
39080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39090 '3から０ｋに変える
39100 case 3:
39110 No=-1:sp_on 14,1:sp_on 12,0
39120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39130 'Okから下のボタンを押しても何もしない
39140 case -1:
39150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39160 case 8:
39170 No=5:sp_on 8,1:sp_on 7,0
39180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39190 case 5:
39200 No=2:sp_on 9,1:sp_on 8,0
39210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39220 case 2:
39230 No=0:sp_on 13,1:sp_on 9,0
39240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39250 case 0:
39260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39270 case 7:
39280 No=4:sp_on 5,1:sp_on 4,0
39290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39300 case 4:
39310 No=1:sp_on 6,1:sp_on 5,0
39320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39330 case 1:
39340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39350 end select
39360 endif
39370 '左へボタン 十字キー　左　or 　カーソル左
39380 if ((y2 = -1) or (key$ = chr$(29))) then
39390 select case No
39400 'Ok ボタン  Okから　左　０に行く
39410 case -1:
39420 No=0:sp_on 13,1:sp_on 14,0
39430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39440 '0 ボタン  左　何もしない
39450 case 0:
39460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39470 case 3:
39480 No=2:sp_on 9,1:sp_on 12,0:
39490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39500 case 2:
39510 No=1:sp_on 6,1:sp_on 9,0:
39520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39530 case 1:
39540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39550 case 6:
39560 No=5:sp_on 8,1:sp_on 11,0
39570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39580 case 5:
39590 No=4:sp_on 5,1:sp_on 8,0
39600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39610 case 4:
39620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39630 case 9:
39640 No=8:sp_on 7,1:sp_on 10,0
39650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39660 case 8:
39670 No=7:sp_on 4,1:sp_on 7,0
39680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39690 case 7:
39700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39710 end select
39720 endif
39730 '右  十字キー　右　or カーソル　右
39740 if ((y2 = 1) or (key$ = chr$(28))) then
39750 select case No
39760 '0ボタンからokボタン右に移動
39770 case 0:
39780 No=-1:sp_on 14,1:sp_on 13,0
39790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39800 '0ボタンからokボタン 右に移動　ここまで
39810 'OKボタンで右を押して何もしない
39820 case -1:
39830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39840 case 1:
39850 No=2:sp_on 9,1:sp_on 6,0
39860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39870 case 2:
39880 No=3:sp_on 12,1:sp_on 9,0
39890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39900 case 3:
39910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39920 case 4:
39930 No=5:sp_on 8,1:sp_on 5,0
39940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39950 case 5:
39960 No=6:sp_on 11,1:sp_on 8,0
39970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39980 case 7:
39990 No=8:sp_on 7,1:sp_on 4,0
40000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40010 case 8:
40020 No=9:sp_on 10,1:sp_on 7,0
40030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40040 case 9:
40050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40060 case 6:
40070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40080 end select
40090 'Okから右ボタンを押して何もしない ここまで
40100 endif
40110 '十字キー　ここまで
40120 '==============================
40130 'ここから
40140 '==============================
40150 if ((bg = 2) or (key$ = chr$(13))) then
40160 select case count
40170 case 0:
40180 count = 1
40190 if (No = -1) then
40200 count = 0:No=0
40210 buf_feMale_Born_Day(0) = No
40220 'Okボタンを押したとき
40230 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40240 else
40250 'Okボタン以外が押されたとき
40260 if (No >= 1 and No <= 2) then
40270 buf_female_year$="":buf_female_year$ = str$(No) + "***"
40280 buf_female_year = No:a= No
40290 buf_Jyoushi_Born_Day(0) = No
40300 locate 1,3
40310 color rgb(255,255,255)
40320 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40330 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40340 else
40350 count=0
40360 ui_msg"数字が範囲外になります。"
40370 buf_female_year$="":buf_female_year=0
40380 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40390 endif
40400 endif
40410 case 1:
40420 count = 2
40430 if (No = -1) then
40440 count = 1
40450 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40460 else
40470 buf_female_year = a * 10 + No
40480 b=buf_female_year
40490 buf_year$ = str$(buf_female_year) + "**"
40500 buf_Jyoushi_Born_Day(0)=buf_female_year
40510 locate 1,3
40520 color rgb(255,255,255)
40530 print "                                                                "
40540 locate 1,3
40550 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
40560 'if (No = -1) then
40570 'count=1
40580 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40590 endif
40600 case 2:
40610 count=3
40620 if (No=-1) then
40630 count =2
40640 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40650 else
40660 buf_female_year = b * 10 + No
40670 c=buf_female_year
40680 buf_female_year$ = str$(buf_female_year) + "*"
40690 buf_Jyoushi_Born_Day(0) = buf_female_year
40700 locate 1,3
40710 color rgb(255,255,255)
40720 print "                                        "
40730 locate 1,3
40740 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40750 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40760 endif
40770 case 3:
40780 count=4
40790 if (No = -1) then
40800 No=0
40810 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40820 else
40830 buf_female_year = c * 10 + No
40840 buf_female_year$ = str$(buf_female_year)
40850 buf_Jyoushi_Born_Day(0) = buf_female_year
40860 locate 1,3
40870 color RGB(255,255,255)
40880 print "                                      "
40890 locate 1,3
40900 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40910 buf_female_year=val(buf_female_year$)
40920 'year=val(buf_year$)
40930 'if (No=-1) then
40940 'goto Input_Born_Month:
40950 'else
40960 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40970 endif
40980 case 4:
40990 'bufyear=buf_year
41000 if (No=-1) then
41010 buf_female_year = val(buf_female_year$)
41020 buf_Jyoushi_Born_Day(0)=buf_female_year
41030 sp_on 14,0:No=0
41040 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41050 else
41060 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41070 endif
41080 end select
41090 endif
41100 '===========================
41110 'ここまでを部下のところにコピーする.
41120 '===========================
41130 if (bg2 = 2) then
41140 select case count2
41150 case 0:
41160 if (No = -1) then
41170 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
41180 count=0
41190 locate 1,3
41200 color rgb(255,255,255)
41210 print "                                      "
41220 locate 1,3
41230 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
41240 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41250 else
41260 '(buf_year=0) then
41270 buf_female_year=0:buf_year$="****"
41280 locate 1,3
41290 print "                                       "
41300 locate 1,3
41310 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
41320 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41330 'endif
41340 endif
41350 end select
41360 endif
41370 '-------生まれた年代　女性 ここまで-------------
41380 '-------生まれた月　女性 ここまで--------------
41390 Danjyo_Aisyou_Input_feMale_Born_Month:
41400 cls 3:play "":count=0:count2=0
41410 'No=-1:Okのとき
41420 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
41430 for i=0 to 1
41440 buf_month(i)=0
41450 next i
41460 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41470 gload Gazo$ + "Screen1.png",0,0,0
41480 gload Gazo$ + "downscreen.png",0,0,800
41490 'Init"kb:4"
41500 '音声ファイル再生 2023.06.07
41510 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
41520 font 48
41530 locate 0,1
41540 '文字色：黒　 color rgb(0,0,0)
41550 '文字色:白
41560 color rgb(255,255,255)
41570 print "女性の生まれた月を入れて下さい" + chr$(13)
41580 '文字色:白
41590 color rgb(255,255,255)
41600 locate 1,3
41610 '文字色:白
41620 print "女性の生まれた月(1月~12月):"+buf_female_Month$
41630 color rgb(255,255,255)
41640 'locate 4,6:print ":7"
41650 'locate 9,6:print ":8"
41660 'locate 12,6:print ":9"
41670 locate 4,6
41680 '文字色:赤
41690 print ":7  :8  :9" + chr$(13)
41700 color rgb(255,255,255)
41710 locate 4,8
41720 print ":4  :5  :6" + chr$(13)
41730 color rgb(255,255,255)
41740 locate 4,10
41750 print ":1  :2  :3" + chr$(13)
41760 locate 4,12
41770 print "    :0"
41780 locate 12,12
41790 color rgb(0,0,255)
41800 print ":Ok"
41810 sp_on 4,0: sp_on 5,0:sp_on 6,0
41820 sp_on 7,0:sp_on 8,0:sp_on 9,0
41830 sp_on 10,0:sp_on 11,0:sp_on 12,0
41840 sp_on 13,0:sp_on 14,1
41850 '---------------------------------------------
41860 Danjyo_Aisyou_Input_feMale_Born_Month2:
41870 key$="":bg=0:y=0:y2=0:bg2=0
41880 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
41890 key$ = inkey$
41900 bg = strig(1)
41910 y = stick(1)
41920 y2 = stick(0)
41930 bg2 = strig(0)
41940 pause 5
41950 wend
41960 '十字キー　ここから
41970 '上の矢印　または、十字キー上
41980 if ((y = -1) or (key$ = chr$(30))) then
41990 select case No
42000 'No=-1:okのとき:初期の状態
42010 '0kボタンから３に移動
42020 '上に行く 処理
42030 case -1:
42040 No=3:sp_on 12,1:sp_on 14,0
42050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42060 '選択肢:3
42070 '3ボタンから 6に移動
42080 case 3:
42090 No=6:sp_on 12,0:sp_on 11,1
42100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42110 '6ボタンから ９に移動
42120 case 6:
42130 No=9:sp_on 10,1:sp_on 11,0
42140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42150 '6ボタンから ９に移動　ここまで
42160 '9で上を押して何もしない
42170 case 9:
42180 '何もしない
42190 No=9
42200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42210 '9で上を押しても何もしない　ここまで
42220 '上　 0ボタンから2ボタン
42230 'sp_on 6,1:1
42240 'sp_on 8,1:5
42250 'sp_on 7,1:7
42260 case 0:
42270 No=2:sp_on 13,0:sp_on 9,1:
42280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42290 '上  0ボタンから2ボタン　ここまで
42300 '2から５になる 上
42310 case 2:
42320 No=5:sp_on 8,1:sp_on 9,0:
42330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42340 case 5:
42350 No=8:sp_on 7,1:sp_on 8,0
42360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42370 case 8:
42380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42390 case 1:
42400 No=4:sp_on 5,1:sp_on 6,0
42410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42420 case 4:
42430 No=7:sp_on 4,1:sp_on 5,0
42440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42450 case 7:
42460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42470 end select
42480 endif
42490 '左３　ここまで
42500 '下の矢印
42510 '中央 2
42520 if ((y=1) or (key$ = chr$(31))) then
42530 select case No
42540 '9から６に下げる
42550 case 9:
42560 No=6:sp_on 11,1:sp_on 10,0
42570 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
42580 '6から３に下げる
42590 case 6:
42600 No=3:sp_on 12,1:sp_on 11,0
42610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42620 '3から０ｋに変える
42630 case 3:
42640 No=-1:sp_on 14,1:sp_on 12,0
42650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42660 'Okから下のボタンを押しても何もしない
42670 case -1:
42680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42690 case 8:
42700 No=5:sp_on 8,1:sp_on 7,0
42710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42720 case 5:
42730 No=2:sp_on 9,1:sp_on 8,0
42740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42750 case 2:
42760 No=0:sp_on 13,1:sp_on 9,0
42770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42780 case 0:
42790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42800 case 7:
42810 No=4:sp_on 5,1:sp_on 4,0
42820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42830 case 4:
42840 No=1:sp_on 6,1:sp_on 5,0
42850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42860 case 1:
42870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42880 end select
42890 endif
42900 '左へボタン 十字キー　左　or 　カーソル左
42910 if ((y2 = -1) or (key$ = chr$(29))) then
42920 select case No
42930 'Ok ボタン  Okから　左　０に行く
42940 case -1:
42950 No=0:sp_on 13,1:sp_on 14,0
42960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42970 '0 ボタン  左　何もしない
42980 case 0:
42990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43000 case 3:
43010 No=2:sp_on 9,1:sp_on 12,0:
43020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43030 case 2:
43040 No=1:sp_on 6,1:sp_on 9,0:
43050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43060 case 1:
43070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43080 case 6:
43090 No=5:sp_on 8,1:sp_on 11,0
43100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43110 case 5:
43120 No=4:sp_on 5,1:sp_on 8,0
43130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43140 case 4:
43150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43160 case 9:
43170 No=8:sp_on 7,1:sp_on 10,0
43180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43190 case 8:
43200 No=7:sp_on 4,1:sp_on 7,0
43210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43220 case 7:
43230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43240 end select
43250 endif
43260 '右  十字キー　右　or カーソル　右
43270 if ((y2 = 1) or (key$ = chr$(28))) then
43280 select case No
43290 '0ボタンからokボタン右に移動
43300 case 0:
43310 No=-1:sp_on 14,1:sp_on 13,0
43320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43330 '0ボタンからokボタン 右に移動　ここまで
43340 'OKボタンで右を押して何もしない
43350 case -1:
43360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43370 case 1:
43380 No=2:sp_on 9,1:sp_on 6,0
43390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43400 case 2:
43410 No=3:sp_on 12,1:sp_on 9,0
43420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43430 case 3:
43440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43450 case 4:
43460 No=5:sp_on 8,1:sp_on 5,0
43470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43480 case 5:
43490 No=6:sp_on 11,1:sp_on 8,0
43500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43510 case 7:
43520 No=8:sp_on 7,1:sp_on 4,0
43530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43540 case 8:
43550 No=9:sp_on 10,1:sp_on 7,0
43560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43570 case 9:
43580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43590 case 6:
43600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43610 end select
43620 'Okから右ボタンを押して何もしない ここまで
43630 endif
43640 '十字キー　ここまで
43650 '右の丸ボタン + Enter key 決定キー
43660 if ((bg=2) or (key$=chr$(13))) then
43670 select case count
43680 case 0:
43690 if (No=-1) then No=0
43700 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
43710 if (buf_female_month > 1 and buf_female_month < 10)  then
43720 buf_female_Month$ = str$(buf_female_month)
43730 'buf_month=No
43740 endif
43750 if (buf_female_month = 1)  then
43760 buf_female_Month$ = str$(buf_female_month) + "*"
43770 'c=buf_month
43780 endif
43790 locate 1,3
43800 print "                                     "
43810 color RGB(255,255,255)
43820 locate 1,3
43830 print "女性の生まれた月(1月~12月):" + buf_female_Month$
43840 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43850 case 1:
43860 count = 2:
43870 'c = val(buf_Month$)
43880 if (No = -1) then
43890 'count=0
43900 No=0
43910 month=buf_female_month
43920 buf_female_month=val(buf_female_Month$)
43930 month=buf_female_month
43940 buf_Jyoushi_Born_Day(1)=month
43950 '生まれた日に飛ぶ
43960 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43970 else
43980 buf_female_month = c*10 + No
43990 'if (buf_month = 1) then
44000 'buf_Month$ = str$(buf_month)
44010 'endif
44020 buf_female_Month$ = str$(buf_female_month)
44030 buf_Jyoushi_Born_Day(1) = buf_female_month
44040 locate 0,3
44050 print "                                           "
44060 locate 1,3
44070 color Rgb(255,255,255)
44080 print "女性の生まれた月(1月~12月):" + buf_female_Month$
44090 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44100 endif
44110 case 2:
44120 '==================================
44130 '何もしない
44140 'coun = 2
44150 '==================================
44160 'c= val(buf_Month$)
44170 'buf_month = c*10 + No
44180 'buf_Month$ = str$(buf_month)
44190 'locate 2,3
44200 'print "上司の生まれた月(1月～12月):";buf_Month$
44210 'goto Jyoushi_Input_Born_Month2:
44220 'case 3:
44230 'count=4
44240 'b=val(buf_month$)
44250 'buf_month=c*10+No
44260 'buf_Month$=str$(buf_month)
44270 'locate 2,3
44280 'print "上司の生まれた月(1月～12月):";buf_Month$
44290 'buf_month=val(buf_Month$)
44300 'year=val(buf_year$)
44310 if (No=-1) then
44320 No=0
44330 goto Danjyo_Aisyou_Input_Male_Born_Day:
44340 else
44350 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44360 endif
44370 'case 4:
44380 'bufyear=buf_year
44390 'if (No=-1) then
44400 'buf_month = val(buf_Month$)
44410 'month = buf_month
44420 'sp_on 14,0
44430 'goto Input_Born_Day:
44440 'else
44450 'goto Input_Born_Month2:
44460 'endif
44470 end select
44480 endif
44490 '左の丸ボタン　キャンセル
44500 if (bg2=2) then
44510 select case count2
44520 case 0:
44530 if (No = -1) then
44540 buf_female_month=0:buf_female_Month$="**"
44550 count=0
44560 'goto rewrite2:
44570 else
44580 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
44590 buf_female_month = 0:buf_female_Month$ = "**"
44600 locate 0,3
44610 color rgb(255,255,255)
44620 print "                                       "
44630 goto rewrite2:
44640 if (No>12) then
44650 ui_msg"値が範囲外です。"
44660 goto rewrite2:
44670 endif
44680 endif
44690 endif
44700 rewrite2:
44710 locate 2,3
44720 color rgb(255,255,255)
44730 print "                                      "
44740 locate 2,3
44750 print "女性の生まれた月(1月~12月):"+buf_female_Month$
44760 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44770 end select
44780 'endif
44790 endif
44800 end
44810 '-------生まれた月　女性 ここまで-------------
44820 '-------生まれた日　女性 ここまで-------------
44830 Danjyo_Aisyou_Input_feMale_Born_Day:
44840 cls 3:play "":count=0:count2=0
44850 'No=-1:Okのとき
44860 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
44870 for i=0 to 1
44880 buf_female_day(i)=0
44890 next i
44900 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
44910 gload Gazo$ + "Screen1.png",0,0,0
44920 gload Gazo$ + "downscreen.png",0,0,800
44930 'Init"kb:4"
44940 '音声ファイル再生 2023.06.07
44950 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
44960 font 48
44970 locate 0,1
44980 '文字色：黒　 color rgb(0,0,0)
44990 '文字色:白
45000 color rgb(255,255,255)
45010 print "女性の生まれた日を入れて下さい" + chr$(13)
45020 '文字色:白
45030 color rgb(255,255,255)
45040 locate 1,3
45050 '文字色:白
45060 print "女性の生まれた日(1月~31月):" + buf_female_Day$
45070 color rgb(255,255,255)
45080 'locate 4,6:print ":7"
45090 'locate 9,6:print ":8"
45100 'locate 12,6:print ":9"
45110 locate 4,6
45120 '文字色:赤
45130 print ":7  :8  :9" + chr$(13)
45140 color rgb(255,255,255)
45150 locate 4,8
45160 print ":4  :5  :6" + chr$(13)
45170 color rgb(255,255,255)
45180 locate 4,10
45190 print ":1  :2  :3" + chr$(13)
45200 locate 4,12
45210 print "    :0"
45220 locate 12,12
45230 color rgb(0,0,255)
45240 print ":Ok"
45250 sp_on 4,0: sp_on 5,0:sp_on 6,0
45260 sp_on 7,0:sp_on 8,0:sp_on 9,0
45270 sp_on 10,0:sp_on 11,0:sp_on 12,0
45280 sp_on 13,0:sp_on 14,1
45290 '---------------------------------------------
45300 Danjyo_Aisyou_Input_feMale_Born_Day2:
45310 key$="":bg=0:y=0:y2=0:bg2=0
45320 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45330 key$ = inkey$
45340 bg = strig(1)
45350 y = stick(1)
45360 y2 = stick(0)
45370 bg2 = strig(0)
45380 pause 5
45390 wend
45400 '十字キー　ここから
45410 '上の矢印　または、十字キー上
45420 if ((y = -1) or (key$ = chr$(30))) then
45430 select case No
45440 'No=-1:okのとき:初期の状態
45450 '0kボタンから３に移動
45460 '上に行く 処理
45470 case -1:
45480 No=3:sp_on 12,1:sp_on 14,0
45490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45500 '選択肢:3
45510 '3ボタンから 6に移動
45520 case 3:
45530 No=6:sp_on 12,0:sp_on 11,1
45540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45550 '6ボタンから ９に移動
45560 case 6:
45570 No=9:sp_on 10,1:sp_on 11,0
45580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45590 '6ボタンから ９に移動　ここまで
45600 '9で上を押して何もしない
45610 case 9:
45620 '何もしない
45630 No=9
45640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45650 '9で上を押しても何もしない　ここまで
45660 '上　 0ボタンから2ボタン
45670 'sp_on 6,1:1
45680 'sp_on 8,1:5
45690 'sp_on 7,1:7
45700 case 0:
45710 No=2:sp_on 13,0:sp_on 9,1:
45720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45730 '上  0ボタンから2ボタン　ここまで
45740 '2から５になる 上
45750 case 2:
45760 No=5:sp_on 8,1:sp_on 9,0:
45770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45780 case 5:
45790 No=8:sp_on 7,1:sp_on 8,0
45800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45810 case 8:
45820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45830 case 1:
45840 No=4:sp_on 5,1:sp_on 6,0
45850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45860 case 4:
45870 No=7:sp_on 4,1:sp_on 5,0
45880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45890 case 7:
45900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45910 end select
45920 endif
45930 '左３　ここまで
45940 '下の矢印
45950 '中央 2
45960 if ((y=1) or (key$ = chr$(31))) then
45970 select case No
45980 '9から６に下げる
45990 case 9:
46000 No=6:sp_on 11,1:sp_on 10,0
46010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46020 '6から３に下げる
46030 case 6:
46040 No=3:sp_on 12,1:sp_on 11,0
46050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46060 '3から０ｋに変える
46070 case 3:
46080 No=-1:sp_on 14,1:sp_on 12,0
46090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46100 'Okから下のボタンを押しても何もしない
46110 case -1:
46120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46130 case 8:
46140 No=5:sp_on 8,1:sp_on 7,0
46150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46160 case 5:
46170 No=2:sp_on 9,1:sp_on 8,0
46180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46190 case 2:
46200 No=0:sp_on 13,1:sp_on 9,0
46210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46220 case 0:
46230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46240 case 7:
46250 No=4:sp_on 5,1:sp_on 4,0
46260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46270 case 4:
46280 No=1:sp_on 6,1:sp_on 5,0
46290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46300 case 1:
46310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46320 end select
46330 endif
46340 '左へボタン 十字キー　左　or 　カーソル左
46350 if ((y2 = -1) or (key$ = chr$(29))) then
46360 select case No
46370 'Ok ボタン  Okから　左　０に行く
46380 case -1:
46390 No=0:sp_on 13,1:sp_on 14,0
46400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46410 '0 ボタン  左　何もしない
46420 case 0:
46430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46440 case 3:
46450 No=2:sp_on 9,1:sp_on 12,0:
46460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46470 case 2:
46480 No=1:sp_on 6,1:sp_on 9,0:
46490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46500 case 1:
46510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46520 case 6:
46530 No=5:sp_on 8,1:sp_on 11,0
46540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46550 case 5:
46560 No=4:sp_on 5,1:sp_on 8,0
46570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46580 case 4:
46590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46600 case 9:
46610 No=8:sp_on 7,1:sp_on 10,0
46620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46630 case 8:
46640 No=7:sp_on 4,1:sp_on 7,0
46650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46660 case 7:
46670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46680 end select
46690 endif
46700 '右  十字キー　右　or カーソル　右
46710 if ((y2 = 1) or (key$ = chr$(28))) then
46720 select case No
46730 '0ボタンからokボタン右に移動
46740 case 0:
46750 No=-1:sp_on 14,1:sp_on 13,0
46760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46770 '0ボタンからokボタン 右に移動　ここまで
46780 'OKボタンで右を押して何もしない
46790 case -1:
46800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46810 case 1:
46820 No=2:sp_on 9,1:sp_on 6,0
46830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46840 case 2:
46850 No=3:sp_on 12,1:sp_on 9,0
46860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46870 case 3:
46880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46890 case 4:
46900 No=5:sp_on 8,1:sp_on 5,0
46910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46920 case 5:
46930 No=6:sp_on 11,1:sp_on 8,0
46940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46950 case 7:
46960 No=8:sp_on 7,1:sp_on 4,0
46970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46980 case 8:
46990 No=9:sp_on 10,1:sp_on 7,0
47000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47010 case 9:
47020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47030 case 6:
47040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47050 end select
47060 'Okから右ボタンを押して何もしない ここまで
47070 endif
47080 '十字キー　ここまで
47090 '右の丸ボタン + Enter key 決定キー
47100 if ((bg=2) or (key$=chr$(13))) then
47110 select case count
47120 case 0:
47130 if (No=-1) then No=0
47140 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
47150 if (buf_female_day > 1 and buf_female_day < 10)  then
47160 buf_female_Day$ = str$(buf_female_day)
47170 'buf_month=No
47180 endif
47190 if (buf_female_day = 1)  then
47200 buf_female_Day$ = str$(buf_female_day) + "*"
47210 'c=buf_month
47220 endif
47230 locate 1,3
47240 print "                                     "
47250 color RGB(255,255,255)
47260 locate 1,3
47270 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47280 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47290 case 1:
47300 count = 2:
47310 'c = val(buf_Month$)
47320 if (No = -1) then
47330 'count=0
47340 No=0
47350 day=buf_female_day
47360 buf_female_day=val(buf_female_day$)
47370 day=bu_female_day
47380 buf_female_day(1)=day
47390 '生まれた日に飛ぶ
47400 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47410 else
47420 bu_female_day = c*10 + No
47430 'if (buf_month = 1) then
47440 'buf_Month$ = str$(buf_month)
47450 'endif
47460 buf_female_day$ = str$(buf_female_day)
47470 buf_female_day(1) = buf_female_day
47480 locate 0,3
47490 print "                                           "
47500 locate 1,3
47510 color Rgb(255,255,255)
47520 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47530 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47540 endif
47550 case 2:
47560 '==================================
47570 '何もしない
47580 'coun = 2
47590 '==================================
47600 'c= val(buf_Month$)
47610 'buf_month = c*10 + No
47620 'buf_Month$ = str$(buf_month)
47630 'locate 2,3
47640 'print "上司の生まれた月(1月～12月):";buf_Month$
47650 'goto Jyoushi_Input_Born_Month2:
47660 'case 3:
47670 'count=4
47680 'b=val(buf_month$)
47690 'buf_month=c*10+No
47700 'buf_Month$=str$(buf_month)
47710 'locate 2,3
47720 'print "上司の生まれた月(1月～12月):";buf_Month$
47730 'buf_month=val(buf_Month$)
47740 'year=val(buf_year$)
47750 if (No=-1) then
47760 No=0
47770 goto Danjyo_Aisyou_Input_Male_Born_Day:
47780 else
47790 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47800 endif
47810 'case 4:
47820 'bufyear=buf_year
47830 'if (No=-1) then
47840 'buf_month = val(buf_Month$)
47850 'month = buf_month
47860 'sp_on 14,0
47870 'goto Input_Born_Day:
47880 'else
47890 'goto Input_Born_Month2:
47900 'endif
47910 end select
47920 endif
47930 '左の丸ボタン　キャンセル
47940 if (bg2=2) then
47950 select case count2
47960 case 0:
47970 if (No = -1) then
47980 buf_female_day=0:buf_female_Day$="**"
47990 count=0
48000 'goto rewrite2:
48010 else
48020 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
48030 buf_female_day = 0:buf_female_Day$ = "**"
48040 locate 0,3
48050 color rgb(255,255,255)
48060 print "                                       "
48070 goto rewrite2:
48080 if (No>12) then
48090 ui_msg"値が範囲外です。"
48100 goto rewrite2:
48110 endif
48120 endif
48130 endif
48140 rewrite2:
48150 locate 2,3
48160 color rgb(255,255,255)
48170 print "                                      "
48180 locate 2,3
48190 print "女性の生まれた日(1月~31月):"+buf_female_Day$
48200 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48210 end select
48220 'endif
48230 endif
48240 end
48250 '-------生まれた日　女性 ここまで-------------
48260 '1.男女の相性 ここまで
48270 '2.ビジネスの相性　
48280 '1.1人目のビジネスの相性　名前入力　1人目
48290 Business_Aishou_Input_1_parson:
48300 No=0:color RGB(255,255,255)
48310 cls 3:init "kb:2"
48320 gload Gazo$ + "Screen1.png",0,0,0
48330 gload Gazo$ + "downscreen.png",0,0,800
48340 play "":color rgb(255,0,0):name$ = ""
48350 locate 0,1
48360 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
48370 color rgb(255,255,255):
48380 locate 0,3
48390 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
48400 print "入れてください" + chr$(13)
48410 locate 0,15:color rgb(0,0,0)
48420 Input "1人目の名前:",name$
48430 'color rgb(0,0,0)
48440 'locate 0,13:print "                                     "
48450 'locate 0,13:print "1人目の名前を入力してエンターキー":
48460 'buffer_name$(0):1人目の名前
48470 buffer_name$(0) = name$:
48480 goto Business_Aishou_Input_2_Parson:
48490 '2.2人目のビジネスの相性 名前入力 2人目
48500 Business_Aishou_Input_2_Parson:
48510 cls 3:init "kb:2":name$ = "":No=0
48520 gload Gazo$ + "Screen1.png",0,0,0
48530 gload Gazo$ + "downscreen.png",0,0,800
48540 color rgb(255,0,0)
48550 'Title
48560 locate 0,1
48570 print "ビジネスの相性　2人目"
48580 locate 0,3
48590 color rgb(255,255,255)
48600 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
48610 print "入れてください" + chr$(13)
48620 locate 0,15:color rgb(0,0,0)
48630 Input "2人目の名前:",name$
48640 'color rgb(0,0,0)
48650 'locate 0,15:print "                                              "
48660 'locate 0,15:print "2人目の名前を入力してエンター ":
48670 '2人目
48680 '2人目の名前を入れるに代入
48690 buffer_name$(1) = name$:
48700 goto Select_jyoushi:
48710 '3.上司の選択
48720 Select_jyoushi:
48730 cls 3:gload Gazo$ + "Screen1.png",0,0,0
48740 gload Gazo$ + "downscreen.png",0,0,800
48750 init "kb:4":No=0
48760 color rgb(0,0,255)
48770 locate 1,1
48780 print "上司の選択"
48790 color rgb(255,255,255)
48800 locate 0,4:print "名前から上司の方を選んでください"
48810 locate 0,6
48820 print " :";buffer_name$(0);"が上 司";chr$(13)
48830 locate 0,8
48840 print " :";buffer_name$(1);"が上 司";chr$(13)
48850 locate 0,15:
48860 print "                                     "
48870 locate 0,15:color rgb(0,0,0)
48880 print "上司の方を選んで右の丸ボタン"
48890 sp_on 0,1:sp_on 1,0:sp_on 2,0
48900 Select_jyoushi2:
48910 'ここでNo=0をおいてはいけない
48920 y=0:key$="":bg=0:
48930 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
48940 y = stick(1)
48950 key$ = inkey$
48960 bg = strig(1)
48970 pause 5
48980 wend
48990 '1.カーソル下の処理　or 十字キーの下処理
49000 if ((key$ = chr$(31)) or (y = 1)) then
49010 select case No
49020 case 0:
49030 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49040 case 1:
49050 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49060 end select
49070 endif
49080 '2.カーソル上処理　or 十字キーの上の処理
49090 if ((key$ = chr$(30)) or (y = -1)) then
49100 select case No
49110 case 0:
49120 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
49130 case 1:
49140 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
49150 end select
49160 endif
49170 if ((key$ = chr$(13)) or (bg = 2)) then
49180 select case No
49190 case 0:
49200 '上司(name1)を配列に代入
49210 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49220 case 1:
49230 '上司（name2)を配列に代入
49240 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49250 end select
49260 endif
49270 '3.決定ボタン　Enter or 右の丸ボタン
49280 '1.誕生日入力
49290 '1-1.生まれた年を入力
49300 'Jyoushi_born_year:
49310 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
49320 '---------------------------------------------'
49330 '誕生日入力(生れた年代)
49340 Jyoushi_Input_Seireki:
49350 'buf_Jyoushi_Born_Year:上司の生まれた年代
49360 'buf_Jyoushi_Born_Day(0) = born_year
49370 cls 3:play "":count=0:count2=0
49380 init"kb:4"
49390 'No=-1:Okのとき
49400 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
49410 for i=0 to 3
49420 buf_Jyoushi_Born_Day(i)=0
49430 next i
49440 gload Gazo$ + "Screen1.png",0,0,0
49450 gload Gazo$ + "downscreen.png",0,0,800
49460 'Init"kb:2"
49470 '音声ファイル再生 2023.06.07
49480 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
49490 font 48
49500 locate 0,1
49510 '文字色：黒　 color rgb(0,0,0)
49520 color rgb(255,255,255)
49530 print "上司の生まれた年代を入れて下さい" + chr$(13)
49540 color rgb(255,255,255)
49550 locate 1,3
49560 print "上司の生まれた年代(西暦4桁):";buf_year$
49570 color rgb(255,255,255)
49580 'locate 4,6:print ":7"
49590 'locate 9,6:print ":8"
49600 'locate 12,6:print ":9"
49610 locate 4,6
49620 print ":7  :8  :9" + chr$(13)
49630 color rgb(255,255,255)
49640 locate 4,8
49650 print ":4  :5  :6" + chr$(13)
49660 color rgb(255,255,255)
49670 locate 4,10
49680 print ":1  :2  :3" + chr$(13)
49690 locate 4,12
49700 print "    :0"
49710 locate 12,12
49720 color rgb(0,0,255)
49730 print ":Ok"
49740 sp_on 4,0: sp_on 5,0:sp_on 6,0
49750 sp_on 7,0:sp_on 8,0:sp_on 9,0
49760 sp_on 10,0:sp_on 11,0:sp_on 12,0
49770 sp_on 13,0:sp_on 14,1
49780 Jyoushi_Input_Seireki2:
49790 key$="":bg=0:y=0:y2=0:bg2=0:
49800 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49810 key$ = inkey$
49820 bg = strig(1)
49830 y = stick(1)
49840 y2 = stick(0)
49850 bg2=strig(0)
49860 pause 5
49870 wend
49880 '十字キー　ここから
49890 '上の矢印　または、十字キー上
49900 if ((y = -1) or (key$ = chr$(30))) then
49910 select case No
49920 'No=-1:okのとき:初期の状態
49930 '0kボタンから３に移動
49940 '上に行く 処理
49950 case -1:
49960 No=3:sp_on 12,1:sp_on 14,0
49970 pause 200:goto Jyoushi_Input_Seireki2:
49980 '選択肢:3
49990 '3ボタンから 6に移動
50000 case 3:
50010 No=6:sp_on 12,0:sp_on 11,1
50020 pause 200:goto Jyoushi_Input_Seireki2:
50030 '6ボタンから ９に移動
50040 case 6:
50050 No=9:sp_on 10,1:sp_on 11,0
50060 pause 200:goto Jyoushi_Input_Seireki2:
50070 '6ボタンから ９に移動　ここまで
50080 '9で上を押して何もしない
50090 case 9:
50100 '何もしない
50110 No=9
50120 pause 200:goto Jyoushi_Input_Seireki2:
50130 '9で上を押しても何もしない　ここまで
50140 '上　 0ボタンから2ボタン
50150 'sp_on 6,1:1
50160 'sp_on 8,1:5
50170 'sp_on 7,1:7
50180 case 0:
50190 No=2:sp_on 13,0:sp_on 9,1:
50200 pause 200:goto Jyoushi_Input_Seireki2:
50210 '上  0ボタンから2ボタン　ここまで
50220 '2から５になる 上
50230 case 2:
50240 No=5:sp_on 8,1:sp_on 9,0:
50250 pause 200:goto Jyoushi_Input_Seireki2:
50260 case 5:
50270 No=8:sp_on 7,1:sp_on 8,0
50280 pause 200:goto Jyoushi_Input_Seireki2:
50290 case 8:
50300 pause 200:goto Jyoushi_Input_Seireki2:
50310 case 1:
50320 No=4:sp_on 5,1:sp_on 6,0
50330 pause 200:goto Jyoushi_Input_Seireki2:
50340 case 4:
50350 No=7:sp_on 4,1:sp_on 5,0
50360 pause 200:goto Jyoushi_Input_Seireki2:
50370 case 7:
50380 pause 200:goto Jyoushi_Input_Seireki2:
50390 end select
50400 endif
50410 '左３　ここまで
50420 '下の矢印
50430 '中央 2
50440 if ((y=1) or (key$ = chr$(31))) then
50450 select case No
50460 '9から６に下げる
50470 case 9:
50480 No=6:sp_on 11,1:sp_on 10,0
50490 pause 200:goto Jyoushi_Input_Seireki2:
50500 '6から３に下げる
50510 case 6:
50520 No=3:sp_on 12,1:sp_on 11,0
50530 pause 200:goto Jyoushi_Input_Seireki2:
50540 '3から０ｋに変える
50550 case 3:
50560 No=-1:sp_on 14,1:sp_on 12,0
50570 pause 200:goto Jyoushi_Input_Seireki2:
50580 'Okから下のボタンを押しても何もしない
50590 case -1:
50600 pause 200:goto Jyoushi_Input_Seireki2:
50610 case 8:
50620 No=5:sp_on 8,1:sp_on 7,0
50630 pause 200:goto Jyoushi_Input_Seireki2:
50640 case 5:
50650 No=2:sp_on 9,1:sp_on 8,0
50660 pause 200:goto Jyoushi_Input_Seireki2:
50670 case 2:
50680 No=0:sp_on 13,1:sp_on 9,0
50690 pause 200:goto Jyoushi_Input_Seireki2:
50700 case 0:
50710 pause 200:goto Jyoushi_Input_Seireki2:
50720 case 7:
50730 No=4:sp_on 5,1:sp_on 4,0
50740 pause 200:goto Jyoushi_Input_Seireki2:
50750 case 4:
50760 No=1:sp_on 6,1:sp_on 5,0
50770 pause 200:goto Jyoushi_Input_Seireki2:
50780 case 1:
50790 pause 200:goto Jyoushi_Input_Seireki2:
50800 end select
50810 endif
50820 '左へボタン 十字キー　左　or 　カーソル左
50830 if ((y2 = -1) or (key$ = chr$(29))) then
50840 select case No
50850 'Ok ボタン  Okから　左　０に行く
50860 case -1:
50870 No=0:sp_on 13,1:sp_on 14,0
50880 pause 200:goto Jyoushi_Input_Seireki2:
50890 '0 ボタン  左　何もしない
50900 case 0:
50910 pause 200:goto Jyoushi_Input_Seireki2:
50920 case 3:
50930 No=2:sp_on 9,1:sp_on 12,0:
50940 pause 200:goto Jyoushi_Input_Seireki2:
50950 case 2:
50960 No=1:sp_on 6,1:sp_on 9,0:
50970 pause 200:goto Jyoushi_Input_Seireki2:
50980 case 1:
50990 pause 200:goto Jyoushi_Input_Seireki2:
51000 case 6:
51010 No=5:sp_on 8,1:sp_on 11,0
51020 pause 200:goto Jyoushi_Input_Seireki2:
51030 case 5:
51040 No=4:sp_on 5,1:sp_on 8,0
51050 pause 200:goto Jyoushi_Input_Seireki2:
51060 case 4:
51070 pause 200:goto Jyoushi_Input_Seireki2:
51080 case 9:
51090 No=8:sp_on 7,1:sp_on 10,0
51100 pause 200:goto Jyoushi_Input_Seireki2:
51110 case 8:
51120 No=7:sp_on 4,1:sp_on 7,0
51130 pause 200:goto Jyoushi_Input_Seireki2:
51140 case 7:
51150 pause 200:goto Jyoushi_Input_Seireki2:
51160 end select
51170 endif
51180 '右  十字キー　右　or カーソル　右
51190 if ((y2 = 1) or (key$ = chr$(28))) then
51200 select case No
51210 '0ボタンからokボタン右に移動
51220 case 0:
51230 No=-1:sp_on 14,1:sp_on 13,0
51240 pause 200:goto Jyoushi_Input_Seireki2:
51250 '0ボタンからokボタン 右に移動　ここまで
51260 'OKボタンで右を押して何もしない
51270 case -1:
51280 pause 200:goto Jyoushi_Input_Seireki2:
51290 case 1:
51300 No=2:sp_on 9,1:sp_on 6,0
51310 pause 200:goto Jyoushi_Input_Seireki2:
51320 case 2:
51330 No=3:sp_on 12,1:sp_on 9,0
51340 pause 200:goto Jyoushi_Input_Seireki2:
51350 case 3:
51360 pause 200:goto Jyoushi_Input_Seireki2:
51370 case 4:
51380 No=5:sp_on 8,1:sp_on 5,0
51390 pause 200:goto Jyoushi_Input_Seireki2:
51400 case 5:
51410 No=6:sp_on 11,1:sp_on 8,0
51420 pause 200:goto Jyoushi_Input_Seireki2:
51430 case 7:
51440 No=8:sp_on 7,1:sp_on 4,0
51450 pause 200:goto Jyoushi_Input_Seireki2:
51460 case 8:
51470 No=9:sp_on 10,1:sp_on 7,0
51480 pause 200:goto Jyoushi_Input_Seireki2:
51490 case 9:
51500 pause 200:goto Jyoushi_Input_Seireki2:
51510 case 6:
51520 pause 200:goto Jyoushi_Input_Seireki2:
51530 end select
51540 'Okから右ボタンを押して何もしない ここまで
51550 endif
51560 '十字キー　ここまで
51570 '==============================
51580 'ここから
51590 '==============================
51600 if ((bg = 2) or (key$ = chr$(13))) then
51610 select case count
51620 case 0:
51630 count = 1
51640 if (No = -1) then
51650 count = 0:No=0
51660 buf_Jyoushi_Born_Day(0) = No
51670 'Okボタンを押したとき
51680 goto Jyoushi_Input_Seireki2:
51690 else
51700 'Okボタン以外が押されたとき
51710 if (No >= 1 and No <= 2) then
51720 buf_year$="":buf_year$ = str$(No) + "***"
51730 buf_year = No:a= No
51740 buf_Jyoushi_Born_Day(0) = No
51750 locate 1,3
51760 color rgb(255,255,255)
51770 print "上司の生まれた年代(西暦4桁):";buf_year$
51780 goto Jyoushi_Input_Seireki2:
51790 else
51800 count=0
51810 ui_msg"数字が範囲外になります。"
51820 buf_year$="":buf_year=0
51830 goto Jyoushi_Input_Seireki2:
51840 endif
51850 endif
51860 case 1:
51870 count = 2
51880 if (No = -1) then
51890 count = 1
51900 goto Jyoushi_Input_Seireki2:
51910 else
51920 buf_year = a * 10 + No
51930 b=buf_year
51940 buf_year$ = str$(buf_year) + "**"
51950 buf_Jyoushi_Born_Day(0)=buf_year
51960 locate 1,3
51970 color rgb(255,255,255)
51980 print "                                                                "
51990 locate 1,3
52000 print "上司の生まれた年代(西暦4桁):" + buf_year$
52010 'if (No = -1) then
52020 'count=1
52030 goto Jyoushi_Input_Seireki2:
52040 endif
52050 case 2:
52060 count=3
52070 if (No=-1) then
52080 count =2
52090 goto Jyoushi_Input_Seireki2:
52100 else
52110 buf_year = b * 10 + No
52120 c=buf_year
52130 buf_year$ = str$(buf_year) + "*"
52140 buf_Jyoushi_Born_Day(0) = buf_year
52150 locate 1,3
52160 color rgb(255,255,255)
52170 print "                                        "
52180 locate 1,3
52190 print "上司の生まれた年代(西暦4桁):";buf_year$
52200 goto Jyoushi_Input_Seireki2:
52210 endif
52220 case 3:
52230 count=4
52240 if (No = -1) then
52250 No=0
52260 goto Jyoushi_Input_Seireki2:
52270 else
52280 buf_year = c * 10 + No
52290 buf_year$ = str$(buf_year)
52300 buf_Jyoushi_Born_Day(0) = buf_year
52310 locate 1,3
52320 color RGB(255,255,255)
52330 print "                                      "
52340 locate 1,3
52350 print "上司の生まれた年代(西暦4桁):";buf_year$
52360 buf_year=val(buf_year$)
52370 'year=val(buf_year$)
52380 'if (No=-1) then
52390 'goto Input_Born_Month:
52400 'else
52410 goto Jyoushi_Input_Seireki2:
52420 endif
52430 case 4:
52440 'bufyear=buf_year
52450 if (No=-1) then
52460 buf_year = val(buf_year$)
52470 buf_Jyoushi_Born_Day(0)=buf_year
52480 sp_on 14,0:No=0
52490 goto Jyoushi_Input_Born_Month:
52500 else
52510 goto Jyoushi_Input_Seireki2:
52520 endif
52530 end select
52540 endif
52550 '===========================
52560 'ここまでを部下のところにコピーする.
52570 '===========================
52580 if (bg2 = 2) then
52590 select case count2
52600 case 0:
52610 if (No = -1) then
52620 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
52630 count=0
52640 locate 1,3
52650 color rgb(255,255,255)
52660 print "                                      "
52670 locate 1,3
52680 print "上司の生まれた年代（西暦4桁):" + buf_year$
52690 goto Jyoushi_Input_Seireki2:
52700 else
52710 '(buf_year=0) then
52720 buf_year=0:buf_year$="****"
52730 locate 1,3
52740 print "                                       "
52750 locate 1,3
52760 print "上司の生まれた年代(西暦4桁):"+buf_year$
52770 goto Jyoushi_Input_Seireki2:
52780 'endif
52790 endif
52800 end select
52810 endif
52820 'Input"上司の生れた年代(4桁,〜2025年):",year
52830 'if year > 2025 then goto Jyoushi_Input_Seireki:
52840 'if year = 123 then cls 3:cls 4:goto Main_Screen:
52850 '"4桁目"
52860 'bufyear4 = fix(year / 1000)
52870 '"3桁目"
52880 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
52890 '"2桁目"
52900 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
52910 '"1桁目"
52920 'bufyear1 = fix((year - ((bufyear4*
52930 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
52940 '2.生まれた月を入力
52950 Jyoushi_Input_Born_Month:
52960 cls 3:play "":count=0:count2=0
52970 'No=-1:Okのとき
52980 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
52990 for i=0 to 1
53000 buf_month(i)=0
53010 next i
53020 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53030 gload Gazo$ + "Screen1.png",0,0,0
53040 gload Gazo$ + "downscreen.png",0,0,800
53050 'Init"kb:4"
53060 '音声ファイル再生 2023.06.07
53070 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53080 font 48
53090 locate 0,1
53100 '文字色：黒　 color rgb(0,0,0)
53110 '文字色:白
53120 color rgb(255,255,255)
53130 print "上司の生まれた月を入れて下さい" + chr$(13)
53140 '文字色:白
53150 color rgb(255,255,255)
53160 locate 1,3
53170 '文字色:白
53180 print "上司の生まれた月(1月~12月):"+buf_Month$
53190 color rgb(255,255,255)
53200 'locate 4,6:print ":7"
53210 'locate 9,6:print ":8"
53220 'locate 12,6:print ":9"
53230 locate 4,6
53240 '文字色:赤
53250 print ":7  :8  :9" + chr$(13)
53260 color rgb(255,255,255)
53270 locate 4,8
53280 print ":4  :5  :6" + chr$(13)
53290 color rgb(255,255,255)
53300 locate 4,10
53310 print ":1  :2  :3" + chr$(13)
53320 locate 4,12
53330 print "    :0"
53340 locate 12,12
53350 color rgb(0,0,255)
53360 print ":Ok"
53370 sp_on 4,0: sp_on 5,0:sp_on 6,0
53380 sp_on 7,0:sp_on 8,0:sp_on 9,0
53390 sp_on 10,0:sp_on 11,0:sp_on 12,0
53400 sp_on 13,0:sp_on 14,1
53410 Jyoushi_Input_Born_Month2:
53420 key$="":bg=0:y=0:y2=0:bg2=0
53430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53440 key$ = inkey$
53450 bg = strig(1)
53460 y = stick(1)
53470 y2 = stick(0)
53480 bg2 = strig(0)
53490 pause 5
53500 wend
53510 '十字キー　ここから
53520 '上の矢印　または、十字キー上
53530 if ((y = -1) or (key$ = chr$(30))) then
53540 select case No
53550 'No=-1:okのとき:初期の状態
53560 '0kボタンから３に移動
53570 '上に行く 処理
53580 case -1:
53590 No=3:sp_on 12,1:sp_on 14,0
53600 pause 200:goto Jyoushi_Input_Born_Month2:
53610 '選択肢:3
53620 '3ボタンから 6に移動
53630 case 3:
53640 No=6:sp_on 12,0:sp_on 11,1
53650 pause 200:goto Jyoushi_Input_Born_Month2:
53660 '6ボタンから ９に移動
53670 case 6:
53680 No=9:sp_on 10,1:sp_on 11,0
53690 pause 200:goto Jyoushi_Input_Born_Month2:
53700 '6ボタンから ９に移動　ここまで
53710 '9で上を押して何もしない
53720 case 9:
53730 '何もしない
53740 No=9
53750 pause 200:goto Jyoushi_Input_Born_Month2:
53760 '9で上を押しても何もしない　ここまで
53770 '上　 0ボタンから2ボタン
53780 'sp_on 6,1:1
53790 'sp_on 8,1:5
53800 'sp_on 7,1:7
53810 case 0:
53820 No=2:sp_on 13,0:sp_on 9,1:
53830 pause 200:goto Jyoushi_Input_Born_Month2:
53840 '上  0ボタンから2ボタン　ここまで
53850 '2から５になる 上
53860 case 2:
53870 No=5:sp_on 8,1:sp_on 9,0:
53880 pause 200:goto Jyoushi_Input_Born_Month2:
53890 case 5:
53900 No=8:sp_on 7,1:sp_on 8,0
53910 pause 200:goto Jyoushi_Input_Born_Month2:
53920 case 8:
53930 pause 200:goto Input_Born_Month2:
53940 case 1:
53950 No=4:sp_on 5,1:sp_on 6,0
53960 pause 200:goto Jyoushi_Input_Born_Month2:
53970 case 4:
53980 No=7:sp_on 4,1:sp_on 5,0
53990 pause 200:goto Jyoushi_Input_Born_Month2:
54000 case 7:
54010 pause 200:goto Input_Born_Month2:
54020 end select
54030 endif
54040 '左３　ここまで
54050 '下の矢印
54060 '中央 2
54070 if ((y=1) or (key$ = chr$(31))) then
54080 select case No
54090 '9から６に下げる
54100 case 9:
54110 No=6:sp_on 11,1:sp_on 10,0
54120 pause 200:goto Jyoushi_Input_Born_Month2:
54130 '6から３に下げる
54140 case 6:
54150 No=3:sp_on 12,1:sp_on 11,0
54160 pause 200:goto Jyoushi_Input_Born_Month2:
54170 '3から０ｋに変える
54180 case 3:
54190 No=-1:sp_on 14,1:sp_on 12,0
54200 pause 200:goto Jyoushi_Input_Born_Month2:
54210 'Okから下のボタンを押しても何もしない
54220 case -1:
54230 pause 200:goto Jyoushi_Input_Born_Month2:
54240 case 8:
54250 No=5:sp_on 8,1:sp_on 7,0
54260 pause 200:goto Jyoushi_Input_Born_Month2:
54270 case 5:
54280 No=2:sp_on 9,1:sp_on 8,0
54290 pause 200:goto Jyoushi_Input_Born_Month2:
54300 case 2:
54310 No=0:sp_on 13,1:sp_on 9,0
54320 pause 200:goto Jyoushi_Input_Born_Month2:
54330 case 0:
54340 pause 200:goto Jyoushi_Input_Born_Month2:
54350 case 7:
54360 No=4:sp_on 5,1:sp_on 4,0
54370 pause 200:goto Jyoushi_Input_Born_Month2:
54380 case 4:
54390 No=1:sp_on 6,1:sp_on 5,0
54400 pause 200:goto Jyoushi_Input_Born_Month2:
54410 case 1:
54420 pause 200:goto Jyoushi_Input_Born_Month2:
54430 end select
54440 endif
54450 '左へボタン 十字キー　左　or 　カーソル左
54460 if ((y2 = -1) or (key$ = chr$(29))) then
54470 select case No
54480 'Ok ボタン  Okから　左　０に行く
54490 case -1:
54500 No=0:sp_on 13,1:sp_on 14,0
54510 pause 200:goto Jyoushi_Input_Born_Month2:
54520 '0 ボタン  左　何もしない
54530 case 0:
54540 pause 200:goto Jyoushi_Input_Born_Month2:
54550 case 3:
54560 No=2:sp_on 9,1:sp_on 12,0:
54570 pause 200:goto Jyoushi_Input_Born_Month2:
54580 case 2:
54590 No=1:sp_on 6,1:sp_on 9,0:
54600 pause 200:goto Jyoushi_Input_Born_Month2:
54610 case 1:
54620 pause 200:goto Jyoushi_Input_Born_Month2:
54630 case 6:
54640 No=5:sp_on 8,1:sp_on 11,0
54650 pause 200:goto Jyoushi_Input_Born_Month2:
54660 case 5:
54670 No=4:sp_on 5,1:sp_on 8,0
54680 pause 200:goto Jyoushi_Input_Born_Month2:
54690 case 4:
54700 pause 200:goto Jyoushi_Input_Born_Month2:
54710 case 9:
54720 No=8:sp_on 7,1:sp_on 10,0
54730 pause 200:goto Input_Born_Month2:
54740 case 8:
54750 No=7:sp_on 4,1:sp_on 7,0
54760 pause 200:goto Jyoushi_Input_Born_Month2:
54770 case 7:
54780 pause 200:goto Jyoushi_Input_Born_Month2:
54790 end select
54800 endif
54810 '右  十字キー　右　or カーソル　右
54820 if ((y2 = 1) or (key$ = chr$(28))) then
54830 select case No
54840 '0ボタンからokボタン右に移動
54850 case 0:
54860 No=-1:sp_on 14,1:sp_on 13,0
54870 pause 200:goto Jyoushi_Input_Born_Month2:
54880 '0ボタンからokボタン 右に移動　ここまで
54890 'OKボタンで右を押して何もしない
54900 case -1:
54910 pause 200:goto Jyoushi_Input_Born_Month2:
54920 case 1:
54930 No=2:sp_on 9,1:sp_on 6,0
54940 pause 200:goto Jyoushi_Input_Born_Month2:
54950 case 2:
54960 No=3:sp_on 12,1:sp_on 9,0
54970 pause 200:goto Jyoushi_Input_Born_Month2:
54980 case 3:
54990 pause 200:goto Jyoushi_Input_Born_Month2:
55000 case 4:
55010 No=5:sp_on 8,1:sp_on 5,0
55020 pause 200:goto Jyoushi_Input_Born_Month2:
55030 case 5:
55040 No=6:sp_on 11,1:sp_on 8,0
55050 pause 200:goto Jyoushi_Input_Born_Month2:
55060 case 7:
55070 No=8:sp_on 7,1:sp_on 4,0
55080 pause 200:goto Jyoushi_Input_Born_Month2:
55090 case 8:
55100 No=9:sp_on 10,1:sp_on 7,0
55110 pause 200:goto Jyoushi_Input_Born_Month2:
55120 case 9:
55130 pause 200:goto Jyoushi_Input_Born_Month2:
55140 case 6:
55150 pause 200:goto Jyoushi_Input_Born_Month2:
55160 end select
55170 'Okから右ボタンを押して何もしない ここまで
55180 endif
55190 '十字キー　ここまで
55200 '右の丸ボタン + Enter key 決定キー
55210 if ((bg=2) or (key$=chr$(13))) then
55220 select case count
55230 case 0:
55240 if (No=-1) then No=0
55250 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
55260 if (buf_month > 1 and buf_month < 10)  then
55270 buf_Month$ = str$(buf_month)
55280 'buf_month=No
55290 endif
55300 if (buf_month = 1)  then
55310 buf_Month$ = str$(buf_month) + "*"
55320 'c=buf_month
55330 endif
55340 locate 1,3
55350 print "                                     "
55360 color RGB(255,255,255)
55370 locate 1,3
55380 print "上司の生まれた月(1月~12月):" + buf_Month$
55390 goto Jyoushi_Input_Born_Month2:
55400 case 1:
55410 count = 2:
55420 'c = val(buf_Month$)
55430 if (No = -1) then
55440 'count=0
55450 No=0
55460 month=buf_month
55470 buf_month=val(buf_Month$)
55480 month=buf_month
55490 buf_Jyoushi_Born_Day(1)=month
55500 '生まれた日に飛ぶ
55510 goto Jyoushi_Input_Born_Day:
55520 else
55530 buf_month = c*10 + No
55540 'if (buf_month = 1) then
55550 'buf_Month$ = str$(buf_month)
55560 'endif
55570 buf_Month$ = str$(buf_month)
55580 buf_Jyoushi_Born_Day(1) = buf_month
55590 locate 0,3
55600 print "                                           "
55610 locate 1,3
55620 color Rgb(255,255,255)
55630 print "上司の生まれた月(1月~12月):" + buf_Month$
55640 goto Jyoushi_Input_Born_Month2:
55650 endif
55660 case 2:
55670 '==================================
55680 '何もしない
55690 'coun = 2
55700 '==================================
55710 'c= val(buf_Month$)
55720 'buf_month = c*10 + No
55730 'buf_Month$ = str$(buf_month)
55740 'locate 2,3
55750 'print "上司の生まれた月(1月～12月):";buf_Month$
55760 'goto Jyoushi_Input_Born_Month2:
55770 'case 3:
55780 'count=4
55790 'b=val(buf_month$)
55800 'buf_month=c*10+No
55810 'buf_Month$=str$(buf_month)
55820 'locate 2,3
55830 'print "上司の生まれた月(1月～12月):";buf_Month$
55840 'buf_month=val(buf_Month$)
55850 'year=val(buf_year$)
55860 if (No=-1) then
55870 No=0
55880 goto Jyoushi_Input_Born_Day:
55890 else
55900 goto Jyoushi_Input_Born_Month2:
55910 endif
55920 'case 4:
55930 'bufyear=buf_year
55940 'if (No=-1) then
55950 'buf_month = val(buf_Month$)
55960 'month = buf_month
55970 'sp_on 14,0
55980 'goto Input_Born_Day:
55990 'else
56000 'goto Input_Born_Month2:
56010 'endif
56020 end select
56030 endif
56040 '左の丸ボタン　キャンセル
56050 if (bg2=2) then
56060 select case count2
56070 case 0:
56080 if (No = -1) then
56090 buf_month=0:buf_Month$="**"
56100 count=0
56110 'goto rewrite2:
56120 else
56130 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
56140 buf_month = 0:buf_Month$ = "**"
56150 locate 0,3
56160 color rgb(255,255,255)
56170 print "                                       "
56180 goto rewrite2:
56190 if (No>12) then
56200 ui_msg"値が範囲外です。"
56210 goto rewrite2:
56220 endif
56230 endif
56240 endif
56250 rewrite2:
56260 locate 2,3
56270 color rgb(255,255,255)
56280 print "                                      "
56290 locate 2,3
56300 print "上司の生まれた月(1月~12月):"+buf_Month$
56310 goto Jyoushi_Input_Born_Month2:
56320 end select
56330 'endif
56340 endif
56350 end
56360 'end
56370 '生れた日を入力
56380 Jyoushi_Input_Born_Day:
56390 '生まれた日入力
56400 cls 3:play ""
56410 'No=-1:Okのとき
56420 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
56430 for i=0 to 1
56440 buf_day(i)=0
56450 next i
56460 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56470 gload Gazo$ + "Screen1.png",0,0,0
56480 gload Gazo$ + "downscreen.png",0,0,800
56490 'Init"kb:2"
56500 '音声ファイル再生 2023.06.07
56510 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
56520 font 48
56530 locate 1,1
56540 '文字色：黒　 color rgb(0,0,0)
56550 color rgb(255,255,255)
56560 print "上司の生まれた日を入れて下さい" + chr$(13)
56570 locate 1,3
56580 color rgb(255,255,255)
56590 print "                                      "
56600 locate 1,3
56610 print "上司の生まれた日(1日~31日):"+buf_Day$
56620 color rgb(255,255,255)
56630 'locate 4,6:print ":7"
56640 'locate 9,6:print ":8"
56650 'locate 12,6:print ":9"
56660 locate 4,6
56670 print ":7  :8  :9" + chr$(13)
56680 color rgb(255,255,255)
56690 locate 4,8
56700 print ":4  :5  :6" + chr$(13)
56710 color rgb(255,255,255)
56720 locate 4,10
56730 print ":1  :2  :3" + chr$(13)
56740 locate 4,12
56750 print "    :0"
56760 locate 12,12
56770 color rgb(0,0,255)
56780 print ":Ok"
56790 sp_on 4,0: sp_on 5,0:sp_on 6,0
56800 sp_on 7,0:sp_on 8,0:sp_on 9,0
56810 sp_on 10,0:sp_on 11,0:sp_on 12,0
56820 sp_on 13,0:sp_on 14,1
56830 Jyoushi_Input_Born_Day2:
56840 key$="":bg=0:y=0:y2=0:bg2=0:
56850 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
56860 key$ = inkey$
56870 bg = strig(1)
56880 y = stick(1)
56890 y2 = stick(0)
56900 bg2 = strig(0)
56910 pause 5
56920 wend
56930 '十字キー　ここから
56940 '上の矢印　または、十字キー上
56950 if ((y = -1) or (key$ = chr$(30))) then
56960 select case No
56970 'No=-1:okのとき:初期の状態
56980 '0kボタンから３に移動
56990 '上に行く 処理
57000 case -1:
57010 No=3:sp_on 12,1:sp_on 14,0
57020 pause 200:goto Jyoushi_Input_Born_Day2:
57030 '選択肢:3
57040 '3ボタンから 6に移動
57050 case 3:
57060 No=6:sp_on 12,0:sp_on 11,1
57070 pause 200:goto Jyoushi_Input_Born_Day2:
57080 '6ボタンから ９に移動
57090 case 6:
57100 No=9:sp_on 10,1:sp_on 11,0
57110 pause 200:goto Jyoushi_Input_Born_Day2:
57120 '6ボタンから ９に移動　ここまで
57130 '9で上を押して何もしない
57140 case 9:
57150 '何もしない
57160 No=9
57170 pause 200:goto Jyoushi_Input_Born_Day2:
57180 '9で上を押しても何もしない　ここまで
57190 '上　 0ボタンから2ボタン
57200 'sp_on 6,1:1
57210 'sp_on 8,1:5
57220 'sp_on 7,1:7
57230 case 0:
57240 No=2:sp_on 13,0:sp_on 9,1:
57250 pause 200:goto Jyoushi_Input_Born_Day2:
57260 '上  0ボタンから2ボタン　ここまで
57270 '2から５になる 上
57280 case 2:
57290 No=5:sp_on 8,1:sp_on 9,0:
57300 pause 200:goto Jyoushi_Input_Born_Day2:
57310 case 5:
57320 No=8:sp_on 7,1:sp_on 8,0
57330 pause 200:goto Jyoushi_Input_Born_Day2:
57340 case 8:
57350 pause 200:goto Jyoushi_Input_Born_Day2:
57360 case 1:
57370 No=4:sp_on 5,1:sp_on 6,0
57380 pause 200:goto Jyoushi_Input_Born_Day2:
57390 case 4:
57400 No=7:sp_on 4,1:sp_on 5,0
57410 pause 200:goto Jyoushi_Input_Born_Day2:
57420 case 7:
57430 pause 200:goto Jyoushi_Input_Born_Day2:
57440 end select
57450 endif
57460 '左３　ここまで
57470 '下の矢印
57480 '中央 2
57490 if ((y=1) or (key$ = chr$(31))) then
57500 select case No
57510 '9から６に下げる
57520 case 9:
57530 No=6:sp_on 11,1:sp_on 10,0
57540 pause 200:goto Jyoushi_Input_Born_Day2:
57550 '6から３に下げる
57560 case 6:
57570 No=3:sp_on 12,1:sp_on 11,0
57580 pause 200:goto Jyoushi_Input_Born_Day2:
57590 '3から０ｋに変える
57600 case 3:
57610 No=-1:sp_on 14,1:sp_on 12,0
57620 pause 200:goto Jyoushi_Input_Born_Day2:
57630 'Okから下のボタンを押しても何もしない
57640 case -1:
57650 pause 200:goto Jyoushi_Input_Born_Day2:
57660 case 8:
57670 No=5:sp_on 8,1:sp_on 7,0
57680 pause 200:goto Jyoushi_Input_Born_Day2:
57690 case 5:
57700 No=2:sp_on 9,1:sp_on 8,0
57710 pause 200:goto Jyoushi_Input_Born_Day2:
57720 case 2:
57730 No=0:sp_on 13,1:sp_on 9,0
57740 pause 200:goto Jyoushi_Input_Born_Day2:
57750 case 0:
57760 pause 200:goto Jyoushi_Input_Born_Day2:
57770 case 7:
57780 No=4:sp_on 5,1:sp_on 4,0
57790 pause 200:goto Jyoushi_Input_Born_Day2:
57800 case 4:
57810 No=1:sp_on 6,1:sp_on 5,0
57820 pause 200:goto Jyoushi_Input_Born_Day2:
57830 case 1:
57840 pause 200:goto Jyoushi_Input_Born_Day2:
57850 end select
57860 endif
57870 '左へボタン 十字キー　左　or 　カーソル左
57880 if ((y2 = -1) or (key$ = chr$(29))) then
57890 select case No
57900 'Ok ボタン  Okから　左　０に行く
57910 case -1:
57920 No=0:sp_on 13,1:sp_on 14,0
57930 pause 200:goto Jyoushi_Input_Born_Day2:
57940 '0 ボタン  左　何もしない
57950 case 0:
57960 pause 200:goto Jyoushi_Input_Born_Day2:
57970 case 3:
57980 No=2:sp_on 9,1:sp_on 12,0:
57990 pause 200:goto Jyoushi_Input_Born_Day2:
58000 case 2:
58010 No=1:sp_on 6,1:sp_on 9,0:
58020 pause 200:goto Jyoushi_Input_Born_Day2:
58030 case 1:
58040 pause 200:goto Jyoushi_Input_Born_Day2:
58050 case 6:
58060 No=5:sp_on 8,1:sp_on 11,0
58070 pause 200:goto Jyoushi_Input_Born_Day2:
58080 case 5:
58090 No=4:sp_on 5,1:sp_on 8,0
58100 pause 200:goto Jyoushi_Input_Born_Day2:
58110 case 4:
58120 pause 200:goto Jyoushi_Input_Born_Day2:
58130 case 9:
58140 No=8:sp_on 7,1:sp_on 10,0
58150 pause 200:goto Jyoushi_Input_Born_Day2:
58160 case 8:
58170 No=7:sp_on 4,1:sp_on 7,0
58180 pause 200:goto Jyoushi_Input_Born_Day2:
58190 case 7:
58200 pause 200:goto Jyoushi_Input_Born_Day2:
58210 end select
58220 endif
58230 '右  十字キー　右　or カーソル　右
58240 if ((y2 = 1) or (key$ = chr$(28))) then
58250 select case No
58260 '0ボタンからokボタン右に移動
58270 case 0:
58280 No=-1:sp_on 14,1:sp_on 13,0
58290 pause 200:goto Jyoushi_Input_Born_Day2:
58300 '0ボタンからokボタン 右に移動　ここまで
58310 'OKボタンで右を押して何もしない
58320 case -1:
58330 pause 200:goto Jyoushi_Input_Born_Day2:
58340 case 1:
58350 No=2:sp_on 9,1:sp_on 6,0
58360 pause 200:goto Jyoushi_Input_Born_Day2:
58370 case 2:
58380 No=3:sp_on 12,1:sp_on 9,0
58390 pause 200:goto Jyoushi_Input_Born_Day2:
58400 case 3:
58410 pause 200:goto Jyoushi_Input_Born_Day2:
58420 case 4:
58430 No=5:sp_on 8,1:sp_on 5,0
58440 pause 200:goto Jyoushi_Input_Born_Day2:
58450 case 5:
58460 No=6:sp_on 11,1:sp_on 8,0
58470 pause 200:goto Jyoushi_Input_Born_Day2:
58480 case 7:
58490 No=8:sp_on 7,1:sp_on 4,0
58500 pause 200:goto Jyoushi_Input_Born_Day2:
58510 case 8:
58520 No=9:sp_on 10,1:sp_on 7,0
58530 pause 200:goto Jyoushi_Input_Born_Day2:
58540 case 9:
58550 pause 200:goto Jyoushi_Input_Born_Day2:
58560 case 6:
58570 pause 200:goto Jyoushi_Input_Born_Day2:
58580 end select
58590 'Okから右ボタンを押して何もしない ここまで
58600 endif
58610 '十字キー　ここまで
58620 '右の丸ボタンを押したとき
58630 if ((bg = 2) or (key$ = chr$(13))) then
58640 'count :決定ボタンを押した回数
58650 select case (count)
58660 '1桁目入力
58670 case 0:
58680 count = 1:
58690 if (No = -1) then
58700 '1桁目　OKでは何もしない
58710 No=c
58720 'goto Jyoushi_Input_Born_Day2:
58730 else
58740 'ok以外のボタンを押したとき
58750 buf_day = No:buf_Day$ = str$(No)
58760 buf_Jyoushi_Born_Day(2)=buf_day
58770 c=No
58780 locate 1,3
58790 print "                                      "
58800 color RGB(255,255,255)
58810 locate 1,3
58820 print "上司の生まれた日(1日~31日):" + buf_Day$
58830 endif
58840 'check2:
58850 'if (buf_day >= 1 and buf_day <= 9) then
58860 'sp_on 14,0
58870 'goto complate_jyoushi:
58880 'else
58890 'sp_on 14,0
58900 goto Jyoushi_Input_Born_Day2:
58910 'end
58920 'endif
58930 case 1:
58940 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
58950 count = 2:
58960 'locate 2,3
58970 'color RGB(255,255,255)
58980 'print "生まれた日(1日~31日):";buf_Day$
58990 'Okボタンを押したときの処理
59000 '入力値　10未満のとき
59010 'buf_day = c * 10 + No
59020 if (No = -1) then
59030 c=buf_day:No=0
59040 'buf_day = c
59050 buf_Day$ = str$(buf_day)
59060 '10以下のとき
59070 'if (buf_day < 10) then
59080 sp_on 14,0
59090 goto complate_jyoushi:
59100 'end
59110 'endif
59120 else
59130 'c=No
59140 buf_day = c * 10 + No
59150 buf_Day$ = str$(buf_day)
59160 'buf_day = c:buf_Day$=str$(buf_day)
59170 buf_Jyoushi_Born_Day(2)=buf_day
59180 locate 1,3
59190 print "                                           "
59200 locate 1,3
59210 color Rgb(255,255,255)
59220 print "上司の生まれた日(1日~31日):" + buf_Day$
59230 goto Jyoushi_Input_Born_Day2:
59240 'goto
59250 endif
59260 'endif
59270 '生まれた日　2桁目の数字　or 1桁の数字 + ok
59280 case 2:
59290 'buf_day = c * 10 + No
59300 'buf_Jyoushi_Born_Day(2)=buf_day
59310 'locate 1,3
59320 'print "                                      "
59330 'locate 1,3
59340 'locate 2,3
59350 'print "生まれた日(1日〜31日):";buf_Day
59360 'No=-1:ok ボタンを押したとき
59370 if (No = -1) then
59380 'if ((buf_day > 0) and (buf_day < 32)) then
59390 No=0
59400 sp_on 14,0
59410 goto complate_jyoushi:
59420 'end
59430 else
59440 goto Jyoushi_Input_Born_Day2:
59450 'endif
59460 'Okボタン以外を押したとき
59470 'else
59480 'c=val(buf_Day$)
59490 'buf_day = c * 10 + No
59500 'buf_Jyoushi_Born_Day(2) = buf_day
59510 'buf_Day$ = str$(buf_day)
59520 'locate 1,3
59530 'print "上司の生まれた日(1日~31日):";buf_Day$
59540 'goto Jyoushi_Input_Born_Day2:
59550 endif
59560 'case 3:
59570 'count=4
59580 'c=val(buf_day$)
59590 'buf_day=c*10+No
59600 'buf_day$=str$(buf_day)
59610 'locate 2,3
59620 'print "生まれた日を入れてください:";buf_day$
59630 'year=val(buf_year$)
59640 'if (No = -1) then
59650 'goto Jyoushi_Input_Born_Day:
59660 'sp_on 14,0:
59670 'goto complate_jyoushi:
59680 'else
59690 'goto Jyoushi_Input_Born_Month2:
59700 'endif
59710 'case 4:
59720 'bufyear=buf_year
59730 'if (No=-1) then
59740 'buf_day = val(buf_day$)
59750 'bufday = buf_day
59760 'sp_on 14,0
59770 'goto Jyoushi_Input_Born_Day2:
59780 'else
59790 'goto Jyoushi_Input_Born_Day2:
59800 'endif
59810 end select
59820 endif
59830 if (bg2=2) then
59840 select case count2
59850 case 0:
59860 if (No=-1) then
59870 buf_day=0:buf_Day$="**":No=0
59880 if (buf_day >= 1 and buf_day <= 31) then
59890 count=0
59900 buf_day=0:buf_Day$ = "**"
59910 goto rewrite_day3:
59920 else
59930 buf_day=0:buf_Day$ = "**"
59940 ui_msg"値が範囲外です"
59950 endif
59960 goto rewrite_day3:
59970 else
59980 goto rewrite_day3:
59990 endif
60000 rewrite_day3:
60010 locate 2,3
60020 color rgb(255,255,255)
60030 print "                                      "
60040 locate 2,3
60050 print "生まれた日(1日~31日):" + buf_Day$
60060 goto Jyoushi_Input_Born_Day2:
60070 end select
60080 endif
60090 '--------------------------------------------'
60100 'locate 2,0:color rgb(255,0,0)
60110 'print "上司の生まれた年代を入力"
60120 'color rgb(255,255,255)
60130 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
60140 'locate 2,4:Input "上司の生まれた年:",born_year
60150 '誕生日データーを配列に代入
60160 'buf_Jyoushi_Born_Year:上司の生まれた年代
60170 'buf_Jyoushi_Born_Day(0) = born_year
60180 'born_year = 0
60190 '---------------------------------------------'
60200 'goto Jyoushi_born_month:
60210 '1-2.生まれた月を入力
60220 'Jyoushi_born_month:
60230 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60240 'init "kb:4"
60250 'locate 2,1:
60260 'color rgb(255,0,0)
60270 'print "上司の生まれた月入力"
60280 'color rgb(255,255,255)
60290 'locate 2,4:print "生まれた月を入力してください"
60300 'locate 2,5
60310 'Input "上司の生まれ月:",born_month
60320 'buf_Jyoushi_Born_Day(1) = born_month
60330 'born_month = 0
60340 'goto Jyoushi_born_day:
60350 'buf_Jyoushi_Born_day
60360 '1-3.生まれた日を入力
60370 'Jyoushi_born_day:
60380 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60390 'init "kb:4"
60400 'locate 2,1:color rgb(255,0,0)
60410 'print "上司の生まれた日　入力"
60420 'locate 2,4:color rgb(255,255,255)
60430 'print "生まれた日を入力してください"
60440 'locate 2,5
60450 'Input "上司の生まれた日:",born_day
60460 'buf_Jyoushi_Born_Day(2) = born_day
60470 'born_day = 0
60480 'goto buka_born_year:
60490 '2.部下の誕生日入力
60500 '2-1.生まれた年を入力
60510 'buka_born_year:
60520 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60530 'init "kb:2"
60540 'locate 1,1:color rgb(255,0,0)
60550 'print "部下の生まれた年代入力"
60560 'locate 0,4:color rgb(255,255,255)
60570 'print "部下の生まれた年（西暦4桁）を入れてください"
60580 'locate 0,5
60590 'Input "部下の生まれた年(西暦4桁):",born_year
60600 'buf_Buka_Born_Day(0) = born_year
60610 'born_year = 0
60620 '2-2.生まれた月を入力
60630 'buka_born_month:
60640 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60650 'init "kb:2"
60660 'locate 2,1:color rgb(255,0,0)
60670 'print "部下の生まれた月 入力"
60680 'locate 2,4:color rgb(255,255,255)
60690 'print "部下の生まれた月を入力してください"
60700 'locate 2,5:Input "部下の生まれた月:",born_month
60710 'buf_Buka_Born_Day(1) = born_month
60720 '2-3.生まれた日を入力
60730 'buka_born_day:
60740 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60750 'init "kb:2"
60760 'locate 2,1:color rgb(255,0,0)
60770 'print "生まれた日入力"
60780 'color rgb(255,255,255)
60790 'locate 2,4:print "生まれた日を入力してください"
60800 'locate 2,5:Input "部下の生まれた日:",born_day
60810 'buf_Buka_Born_Day(2) = born_day
60820 'born_day=0:goto Result_Business_Aisyou:
60830 '--------------------------------------------'
60840 complate_jyoushi:
60850 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
60860 buf_Jyoushi = Kabara_Num(a,b,c)
60870 a_1=buf_Jyoushi
60880 goto Buka_Input_Seireki:
60890 '--------------------------------------------'
60900 '部下'
60910 '1.部下の生まれた年代'
60920 Buka_Input_Seireki:
60930 cls 3:play "":count=0:count2=0
60940 init"kb:4"
60950 'No=-1:Okのとき
60960 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
60970 for i=0 to 3
60980 buf_Buka_Born_Day(i)=0
60990 next i
61000 gload Gazo$ + "Screen1.png",0,0,0
61010 gload Gazo$ + "downscreen.png",0,0,800
61020 'Init"kb:2"
61030 '音声ファイル再生 2023.06.07
61040 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
61050 font 48
61060 locate 0,1
61070 '文字色：黒　 color rgb(0,0,0)
61080 color rgb(255,255,255)
61090 print "部下の生まれた年代を入れて下さい" + chr$(13)
61100 color rgb(255,255,255)
61110 locate 1,3
61120 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
61130 color rgb(255,255,255)
61140 'locate 4,6:print ":7"
61150 'locate 9,6:print ":8"
61160 'locate 12,6:print ":9"
61170 locate 4,6
61180 print ":7  :8  :9" + chr$(13)
61190 color rgb(255,255,255)
61200 locate 4,8
61210 print ":4  :5  :6" + chr$(13)
61220 color rgb(255,255,255)
61230 locate 4,10
61240 print ":1  :2  :3" + chr$(13)
61250 locate 4,12
61260 print "    :0"
61270 locate 12,12
61280 color rgb(0,0,255)
61290 print ":Ok"
61300 sp_on 4,0: sp_on 5,0:sp_on 6,0
61310 sp_on 7,0:sp_on 8,0:sp_on 9,0
61320 sp_on 10,0:sp_on 11,0:sp_on 12,0
61330 sp_on 13,0:sp_on 14,1
61340 Buka_Input_Seireki2:
61350 key$="":bg=0:y=0:y2=0:bg2=0:
61360 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
61370 key$ = inkey$
61380 bg = strig(1)
61390 y = stick(1)
61400 y2 = stick(0)
61410 bg2=strig(0)
61420 pause 5
61430 wend
61440 '十字キー　ここから
61450 '上の矢印　または、十字キー上
61460 if ((y = -1) or (key$ = chr$(30))) then
61470 select case No
61480 'No=-1:okのとき:初期の状態
61490 '0kボタンから３に移動
61500 '上に行く 処理
61510 case -1:
61520 No=3:sp_on 12,1:sp_on 14,0
61530 pause 200:goto Buka_Input_Seireki2:
61540 '選択肢:3
61550 '3ボタンから 6に移動
61560 case 3:
61570 No=6:sp_on 12,0:sp_on 11,1
61580 pause 200:goto Buka_Input_Seireki2:
61590 '6ボタンから ９に移動
61600 case 6:
61610 No=9:sp_on 10,1:sp_on 11,0
61620 pause 200:goto Buka_Input_Seireki2:
61630 '6ボタンから ９に移動　ここまで
61640 '9で上を押して何もしない
61650 case 9:
61660 '何もしない
61670 No=9
61680 pause 200:goto Buka_Input_Seireki2:
61690 '9で上を押しても何もしない　ここまで
61700 '上　 0ボタンから2ボタン
61710 'sp_on 6,1:1
61720 'sp_on 8,1:5
61730 'sp_on 7,1:7
61740 case 0:
61750 No=2:sp_on 13,0:sp_on 9,1:
61760 pause 200:goto Buka_Input_Seireki2:
61770 '上  0ボタンから2ボタン　ここまで
61780 '2から５になる 上
61790 case 2:
61800 No=5:sp_on 8,1:sp_on 9,0:
61810 pause 200:goto Buka_Input_Seireki2:
61820 case 5:
61830 No=8:sp_on 7,1:sp_on 8,0
61840 pause 200:goto Buka_Input_Seireki2:
61850 case 8:
61860 pause 200:goto Buka_Input_Seireki2:
61870 case 1:
61880 No=4:sp_on 5,1:sp_on 6,0
61890 pause 200:goto Buka_Input_Seireki2:
61900 case 4:
61910 No=7:sp_on 4,1:sp_on 5,0
61920 pause 200:goto Buka_Input_Seireki2:
61930 case 7:
61940 pause 200:goto Buka_Input_Seireki2:
61950 end select
61960 endif
61970 '左３　ここまで
61980 '下の矢印
61990 '中央 2
62000 if ((y=1) or (key$ = chr$(31))) then
62010 select case No
62020 '9から６に下げる
62030 case 9:
62040 No=6:sp_on 11,1:sp_on 10,0
62050 pause 200:goto Buka_Input_Seireki2:
62060 '6から３に下げる
62070 case 6:
62080 No=3:sp_on 12,1:sp_on 11,0
62090 pause 200:goto Buka_Input_Seireki2:
62100 '3から０ｋに変える
62110 case 3:
62120 No=-1:sp_on 14,1:sp_on 12,0
62130 pause 200:goto Buka_Input_Seireki2:
62140 'Okから下のボタンを押しても何もしない
62150 case -1:
62160 pause 200:goto Buka_Input_Seireki2:
62170 case 8:
62180 No=5:sp_on 8,1:sp_on 7,0
62190 pause 200:goto Buka_Input_Seireki2:
62200 case 5:
62210 No=2:sp_on 9,1:sp_on 8,0
62220 pause 200:goto Buka_Input_Seireki2:
62230 case 2:
62240 No=0:sp_on 13,1:sp_on 9,0
62250 pause 200:goto Buka_Input_Seireki2:
62260 case 0:
62270 pause 200:goto Buka_Input_Seireki2:
62280 case 7:
62290 No=4:sp_on 5,1:sp_on 4,0
62300 pause 200:goto Buka_Input_Seireki2:
62310 case 4:
62320 No=1:sp_on 6,1:sp_on 5,0
62330 pause 200:goto Buka_Input_Seireki2:
62340 case 1:
62350 pause 200:goto Buka_Input_Seireki2:
62360 end select
62370 endif
62380 '左へボタン 十字キー　左　or 　カーソル左
62390 if ((y2 = -1) or (key$ = chr$(29))) then
62400 select case No
62410 'Ok ボタン  Okから　左　０に行く
62420 case -1:
62430 No=0:sp_on 13,1:sp_on 14,0
62440 pause 200:goto Buka_Input_Seireki2:
62450 '0 ボタン  左　何もしない
62460 case 0:
62470 pause 200:goto Buka_Input_Seireki2:
62480 case 3:
62490 No=2:sp_on 9,1:sp_on 12,0:
62500 pause 200:goto Buka_Input_Seireki2:
62510 case 2:
62520 No=1:sp_on 6,1:sp_on 9,0:
62530 pause 200:goto Buka_Input_Seireki2:
62540 case 1:
62550 pause 200:goto Buka_Input_Seireki2:
62560 case 6:
62570 No=5:sp_on 8,1:sp_on 11,0
62580 pause 200:goto Buka_Input_Seireki2:
62590 case 5:
62600 No=4:sp_on 5,1:sp_on 8,0
62610 pause 200:goto Buka_Input_Seireki2:
62620 case 4:
62630 pause 200:goto Buka_Input_Seireki2:
62640 case 9:
62650 No=8:sp_on 7,1:sp_on 10,0
62660 pause 200:goto Buka_Input_Seireki2:
62670 case 8:
62680 No=7:sp_on 4,1:sp_on 7,0
62690 pause 200:goto Buka_Input_Seireki2:
62700 case 7:
62710 pause 200:goto Buka_Input_Seireki2:
62720 end select
62730 endif
62740 '右  十字キー　右　or カーソル　右
62750 if ((y2 = 1) or (key$ = chr$(28))) then
62760 select case No
62770 '0ボタンからokボタン右に移動
62780 case 0:
62790 No=-1:sp_on 14,1:sp_on 13,0
62800 pause 200:goto Buka_Input_Seireki2:
62810 '0ボタンからokボタン 右に移動　ここまで
62820 'OKボタンで右を押して何もしない
62830 case -1:
62840 pause 200:goto Buka_Input_Seireki2:
62850 case 1:
62860 No=2:sp_on 9,1:sp_on 6,0
62870 pause 200:goto Buka_Input_Seireki2:
62880 case 2:
62890 No=3:sp_on 12,1:sp_on 9,0
62900 pause 200:goto Buka_Input_Seireki2:
62910 case 3:
62920 pause 200:goto Buka_Input_Seireki2:
62930 case 4:
62940 No=5:sp_on 8,1:sp_on 5,0
62950 pause 200:goto Buka_Input_Seireki2:
62960 case 5:
62970 No=6:sp_on 11,1:sp_on 8,0
62980 pause 200:goto Buka_Input_Seireki2:
62990 case 7:
63000 No=8:sp_on 7,1:sp_on 4,0
63010 pause 200:goto Buka_Input_Seireki2:
63020 case 8:
63030 No=9:sp_on 10,1:sp_on 7,0
63040 pause 200:goto Buka_Input_Seireki2:
63050 case 9:
63060 pause 200:goto Buka_Input_Seireki2:
63070 case 6:
63080 pause 200:goto Buka_Input_Seireki2:
63090 end select
63100 'Okから右ボタンを押して何もしない ここまで
63110 endif
63120 '十字キー　ここまで
63130 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
63140 'ここからコメント
63150 '右の丸ボタン決定を押した数:count
63160 'if ((bg=2) or (key$=chr$(13))) then
63170 'select case count
63180 'case 0:
63190 'count=1
63200 'if (No = -1) then
63210 'count = 0
63220 'Okボタンを押したとき
63230 '
63240 'goto Buka_Input_Seireki2:
63250 'else
63260 'Okボタン以外が押されたとき
63270 'if (No >= 1 and No <= 2) then
63280 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
63290 'buf_buka_year = No
63300 'buf_Buka_Born_Day(0) = bufyear
63310 'locate 2,3
63320 'color rgb(255,255,255)
63330 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63340 'goto Buka_Input_Seireki2:
63350 'else
63360 'count=0
63370 'ui_msg"数字が範囲外になります。"
63380 'buf_buka_year$ ="":buf_buka_year=0
63390 'goto Buka_Input_Seireki2:
63400 'endif
63410 'endif
63420 'case 1:
63430 'count = 2
63440 'if (No = -1) then
63450 'count = 1
63460 'goto Buka_Input_Seireki2:
63470 'else
63480 'b = val(buf_buka_year$)
63490 'buf_buka_year = b * 10 + No
63500 'buf_buka_year$ = str$(buf_buka_year)
63510 'buf_Buka_Born_Day(0) = bufyear
63520 'locate 1,3
63530 'color rgb(255,255,255)
63540 'print "                                                                "
63550 'locate 1,3
63560 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63570 'if (No = -1) then
63580 'count=1
63590 'goto Buka_Input_Seireki2:
63600 'endif
63610 'case 2:
63620 'count = 3
63630 'if (No = -1) then
63640 'count = 2
63650 'buf_Buka_Born_Day(0)=bufyear
63660 'goto Buka_Input_Seireki2:
63670 'else
63680 'b = val(buf_buka_year$)
63690 'buf_buka_year = b*10 + No
63700 'buf_buka_year$ = str$(buf_buka_year)
63710 'locate 1,3
63720 'color rgb(255,255,255)
63730 'print "                                        "
63740 'locate 1,3
63750 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
63760 'goto Buka_Input_Seireki2:
63770 'endif
63780 'case 3:
63790 'count=4
63800 'if (No = -1) then
63810 'count=3
63820 'goto Buka_Input_Seireki2:
63830 'else
63840 'b = buf_buka_year
63850 'buf_buka_year = b * 10 + No
63860 'buf_buka_year$=str$(buf_buka_year)
63870 'locate 1,3
63880 'color RGB(255,255,255)
63890 'print "                                      "
63900 'locate 1,3
63910 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63920 'buf_year=val(buf_year$)
63930 'year=val(buf_year$)
63940 'if (No=-1) then
63950 'goto Input_Born_Month:
63960 'else
63970 'goto Buka_Input_Seireki2:
63980 'endif
63990 'case 4:
64000 'bufyear=buf_year
64010 'if (No=-1) then
64020 'buf_year = val(buf_year$)
64030 'bufyear = buf_year
64040 'sp_on 14,0
64050 'goto Buka_Input_Born_Month:
64060 'else
64070 'goto Buka_Input_Seireki2:
64080 'endif
64090 'end select
64100 'endif
64110 'if (bg2 = 2) then
64120 'select case count2
64130 'case 0:
64140 'if (No = -1) then
64150 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
64160 'count=0
64170 'locate 1,3
64180 'color rgb(255,255,255)
64190 'print "                                      "
64200 'locate 1,3
64210 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
64220 'goto Buka_Input_Seireki2:
64230 'else
64240 '(buf_year=0) then
64250 'buf_buka_year=0:buf_buka_year$="****"
64260 'goto Buka_Input_Seireki2:
64270 'endif
64280 'endif
64290 'end select
64300 'endif
64310 'end
64320 'ここまでコメント
64330 '================================================================
64340 if ((bg=2) or (key$=chr$(13))) then
64350 select case count
64360 case 0:
64370 count = 1
64380 if (No=-1) then
64390 count = 0
64400 buf_Buka_Born_Day(0) = No
64410 'Okボタンを押したとき
64420 goto Buka_Input_Seireki2:
64430 else
64440 'Okボタン以外が押されたとき
64450 if (No>=1 and No<=2) then
64460 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
64470 buf_buka_year = No
64480 buf_Buka_Born_Day(0) = No
64490 locate 1,3
64500 color rgb(255,255,255)
64510 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64520 goto Buka_Input_Seireki2:
64530 else
64540 count=0
64550 ui_msg"数字が範囲外になります。"
64560 buf_buka_year$="":buf_buka_year=0
64570 goto Buka_Input_Seireki2:
64580 endif
64590 endif
64600 case 1:
64610 count = 2
64620 if (No = -1) then
64630 count = 1
64640 goto Buka_Input_Seireki2:
64650 else
64660 'b = val(buf_buka_year$)
64670 buf_buka_year = a * 10 + No
64680 b=buf_buka_year
64690 buf_buka_year$ = str$(buf_buka_year)+"**"
64700 buf_Buka_Born_Day(0)=buf_buka_year
64710 locate 1,3
64720 color rgb(255,255,255)
64730 print "                                                                "
64740 locate 1,3
64750 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
64760 'if (No = -1) then
64770 'count=1
64780 goto Buka_Input_Seireki2:
64790 endif
64800 case 2:
64810 count=3
64820 if (No=-1) then
64830 count =2:No=0
64840 goto Buka_Input_Seireki2:
64850 else
64860 'b = val(buf_buka_year$)
64870 buf_buka_year = b * 10 + No
64880 c = buf_buka_year
64890 buf_buka_year$ = str$(buf_buka_year) + "*"
64900 buf_Buka_Born_Day(0) = buf_buka_year
64910 locate 1,3
64920 color rgb(255,255,255)
64930 print "                                        "
64940 locate 1,3
64950 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64960 goto Buka_Input_Seireki2:
64970 endif
64980 case 3:
64990 count=4
65000 if (No = -1) then
65010 'count=3:No=0
65020 goto Buka_Input_Seireki2:
65030 else
65040 'b = val(buf_buka_year$)
65050 buf_buka_year=c * 10 + No
65060 buf_buka_year$=str$(buf_buka_year)
65070 buf_Buka_Born_Day(0)=buf_buka_year
65080 locate 1,3
65090 color RGB(255,255,255)
65100 print "                                      "
65110 locate 1,3
65120 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65130 buf_buka_year=val(buf_buka_year$)
65140 'year=val(buf_year$)
65150 'if (No=-1) then
65160 'goto Input_Born_Month:
65170 'else
65180 goto Buka_Input_Seireki2:
65190 endif
65200 case 4:
65210 'bufyear=buf_year
65220 if (No = -1) then
65230 buf_buka_year = val(buf_buka_year$)
65240 buf_Buka_Born_Day(0)=buf_buka_year
65250 sp_on 14,0
65260 goto Buka_Input_Born_Month:
65270 else
65280 goto Buka_Input_Seireki2:
65290 endif
65300 end select
65310 endif
65320 '================================================================
65330 'ここにコピーする。
65340 '================================================================
65350 'Input"部下の生れた年代(4桁,〜2025年):",year
65360 'if year > 2025 then goto Jyoushi_Input_Seireki:
65370 'if year = 123 then cls 3:cls 4:goto Main_Screen:
65380 '"4桁目"
65390 'bufyear4 = fix(year / 1000)
65400 '"3桁目"
65410 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
65420 '"2桁目"
65430 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
65440 '"1桁目"
65450 'bufyear1 = fix((year - ((bufyear4*
65460 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
65470 '1.部下の生まれた年代'
65480 '2.部下の生まれた月'
65490 Buka_Input_Born_Month:
65500 cls 3:play "":count=0:count2=0
65510 'No=-1:Okのとき
65520 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
65530 for i=0 to 1
65540 buf_month(i)=0
65550 next i
65560 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
65570 gload Gazo$ + "Screen1.png",0,0,0
65580 gload Gazo$ + "downscreen.png",0,0,800
65590 'Init"kb:4"
65600 '音声ファイル再生 2023.06.07
65610 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
65620 font 48
65630 locate 0,1
65640 '文字色：黒　 color rgb(0,0,0)
65650 '文字色:白
65660 color rgb(255,255,255)
65670 print "部下の生まれた月を入れて下さい" + chr$(13)
65680 '文字色:白
65690 color rgb(255,255,255)
65700 locate 1,3
65710 '文字色:白
65720 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
65730 color rgb(255,255,255)
65740 'locate 4,6:print ":7"
65750 'locate 9,6:print ":8"
65760 'locate 12,6:print ":9"
65770 locate 4,6
65780 '文字色:赤
65790 print ":7  :8  :9" + chr$(13)
65800 color rgb(255,255,255)
65810 locate 4,8
65820 print ":4  :5  :6" + chr$(13)
65830 color rgb(255,255,255)
65840 locate 4,10
65850 print ":1  :2  :3" + chr$(13)
65860 locate 4,12
65870 print "    :0"
65880 locate 12,12
65890 color rgb(0,0,255)
65900 print ":Ok"
65910 sp_on 4,0: sp_on 5,0:sp_on 6,0
65920 sp_on 7,0:sp_on 8,0:sp_on 9,0
65930 sp_on 10,0:sp_on 11,0:sp_on 12,0
65940 sp_on 13,0:sp_on 14,1
65950 Buka_Input_Born_Month2:
65960 key$="":bg=0:y=0:y2=0:bg2=0
65970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
65980 key$ = inkey$
65990 bg = strig(1)
66000 y = stick(1)
66010 y2 = stick(0)
66020 bg2 = strig(0)
66030 pause 5
66040 wend
66050 '十字キー　ここから
66060 '上の矢印　または、十字キー上
66070 if ((y = -1) or (key$ = chr$(30))) then
66080 select case No
66090 'No=-1:okのとき:初期の状態
66100 '0kボタンから３に移動
66110 '上に行く 処理
66120 case -1:
66130 No=3:sp_on 12,1:sp_on 14,0
66140 pause 200:goto Buka_Input_Born_Month2:
66150 '選択肢:3
66160 '3ボタンから 6に移動
66170 case 3:
66180 No=6:sp_on 12,0:sp_on 11,1
66190 pause 200:goto Buka_Input_Born_Month2:
66200 '6ボタンから ９に移動
66210 case 6:
66220 No=9:sp_on 10,1:sp_on 11,0
66230 pause 200:goto Buka_Input_Born_Month2:
66240 '6ボタンから ９に移動　ここまで
66250 '9で上を押して何もしない
66260 case 9:
66270 '何もしない
66280 No=9
66290 pause 200:goto Buka_Input_Born_Month2:
66300 '9で上を押しても何もしない　ここまで
66310 '上　 0ボタンから2ボタン
66320 'sp_on 6,1:1
66330 'sp_on 8,1:5
66340 'sp_on 7,1:7
66350 case 0:
66360 No=2:sp_on 13,0:sp_on 9,1:
66370 pause 200:goto Buka_Input_Born_Month2:
66380 '上  0ボタンから2ボタン　ここまで
66390 '2から５になる 上
66400 case 2:
66410 No=5:sp_on 8,1:sp_on 9,0:
66420 pause 200:goto Buka_Input_Born_Month2:
66430 case 5:
66440 No=8:sp_on 7,1:sp_on 8,0
66450 pause 200:goto Buka_Input_Born_Month2:
66460 case 8:
66470 pause 200:goto Buka_Input_Born_Month2:
66480 case 1:
66490 No=4:sp_on 5,1:sp_on 6,0
66500 pause 200:goto Buka_Input_Born_Month2:
66510 case 4:
66520 No=7:sp_on 4,1:sp_on 5,0
66530 pause 200:goto Buka_Input_Born_Month2:
66540 case 7:
66550 pause 200:goto Buka_Input_Born_Month2:
66560 end select
66570 endif
66580 '左３　ここまで
66590 '下の矢印
66600 '中央 2
66610 if ((y=1) or (key$ = chr$(31))) then
66620 select case No
66630 '9から６に下げる
66640 case 9:
66650 No=6:sp_on 11,1:sp_on 10,0
66660 pause 200:goto Buka_Input_Born_Month2:
66670 '6から３に下げる
66680 case 6:
66690 No=3:sp_on 12,1:sp_on 11,0
66700 pause 200:goto Buka_Input_Born_Month2:
66710 '3から０ｋに変える
66720 case 3:
66730 No=-1:sp_on 14,1:sp_on 12,0
66740 pause 200:goto Buka_Input_Born_Month2:
66750 'Okから下のボタンを押しても何もしない
66760 case -1:
66770 pause 200:goto Buka_Input_Born_Month2:
66780 case 8:
66790 No=5:sp_on 8,1:sp_on 7,0
66800 pause 200:goto Buka_Input_Born_Month2:
66810 case 5:
66820 No=2:sp_on 9,1:sp_on 8,0
66830 pause 200:goto Buka_Input_Born_Month2:
66840 case 2:
66850 No=0:sp_on 13,1:sp_on 9,0
66860 pause 200:goto Buka_Input_Born_Month2:
66870 case 0:
66880 pause 200:goto Buka_Input_Born_Month2:
66890 case 7:
66900 No=4:sp_on 5,1:sp_on 4,0
66910 pause 200:goto Buka_Input_Born_Month2:
66920 case 4:
66930 No=1:sp_on 6,1:sp_on 5,0
66940 pause 200:goto Buka_Input_Born_Month2:
66950 case 1:
66960 pause 200:goto Buka_Input_Born_Month2:
66970 end select
66980 endif
66990 '左へボタン 十字キー　左　or 　カーソル左
67000 if ((y2 = -1) or (key$ = chr$(29))) then
67010 select case No
67020 'Ok ボタン  Okから　左　０に行く
67030 case -1:
67040 No=0:sp_on 13,1:sp_on 14,0
67050 pause 200:goto Buka_Input_Born_Month2:
67060 '0 ボタン  左　何もしない
67070 case 0:
67080 pause 200:goto Buka_Input_Born_Month2:
67090 case 3:
67100 No=2:sp_on 9,1:sp_on 12,0:
67110 pause 200:goto Buka_Input_Born_Month2:
67120 case 2:
67130 No=1:sp_on 6,1:sp_on 9,0:
67140 pause 200:goto Buka_Input_Born_Month2:
67150 case 1:
67160 pause 200:goto Buka_Input_Born_Month2:
67170 case 6:
67180 No=5:sp_on 8,1:sp_on 11,0
67190 pause 200:goto Buka_Input_Born_Month2:
67200 case 5:
67210 No=4:sp_on 5,1:sp_on 8,0
67220 pause 200:goto Buka_Input_Born_Month2:
67230 case 4:
67240 pause 200:goto Buka_Input_Born_Month2:
67250 case 9:
67260 No=8:sp_on 7,1:sp_on 10,0
67270 pause 200:goto Buka_Input_Born_Month2:
67280 case 8:
67290 No=7:sp_on 4,1:sp_on 7,0
67300 pause 200:goto Buka_Input_Born_Month2:
67310 case 7:
67320 pause 200:goto Buka_Input_Born_Month2:
67330 end select
67340 endif
67350 '右  十字キー　右　or カーソル　右
67360 if ((y2 = 1) or (key$ = chr$(28))) then
67370 select case No
67380 '0ボタンからokボタン右に移動
67390 case 0:
67400 No=-1:sp_on 14,1:sp_on 13,0
67410 pause 200:goto Buka_Input_Born_Month2:
67420 '0ボタンからokボタン 右に移動　ここまで
67430 'OKボタンで右を押して何もしない
67440 case -1:
67450 pause 200:goto Buka_Input_Born_Month2:
67460 case 1:
67470 No=2:sp_on 9,1:sp_on 6,0
67480 pause 200:goto Buka_Input_Born_Month2:
67490 case 2:
67500 No=3:sp_on 12,1:sp_on 9,0
67510 pause 200:goto Buka_Input_Born_Month2:
67520 case 3:
67530 pause 200:goto Buka_Input_Born_Month2:
67540 case 4:
67550 No=5:sp_on 8,1:sp_on 5,0
67560 pause 200:goto Buka_Input_Born_Month2:
67570 case 5:
67580 No=6:sp_on 11,1:sp_on 8,0
67590 pause 200:goto Buka_Input_Born_Month2:
67600 case 7:
67610 No=8:sp_on 7,1:sp_on 4,0
67620 pause 200:goto Buka_Input_Born_Month2:
67630 case 8:
67640 No=9:sp_on 10,1:sp_on 7,0
67650 pause 200:goto Buka_Input_Born_Month2:
67660 case 9:
67670 pause 200:goto Buka_Input_Born_Month2:
67680 case 6:
67690 pause 200:goto Buka_Input_Born_Month2:
67700 end select
67710 'Okから右ボタンを押して何もしない ここまで
67720 endif
67730 '十字キー　ここまで
67740 '右の丸ボタン　決定キー
67750 if ((bg=2) or (key$=chr$(13))) then
67760 select case count
67770 case 0:
67780 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
67790 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
67800 locate 1,3
67810 color RGB(255,255,255)
67820 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
67830 goto Buka_Input_Born_Month2:
67840 case 1:
67850 count = 2:buf_buka_month=a*10+No
67860 if (No = -1) then
67870 'count=0
67880 month=buf_buka_month
67890 buf_buka_month=val(buf_buka_Month$)
67900 month=buf_buka_month
67910 '生まれた日に飛ぶ
67920 goto Buka_Input_Born_Day:
67930 else
67940 buf_buka_month = a * 10 + No
67950 buf_buka_Month$ = str$(buf_buka_month)
67960 buf_Buka_Born_Day(1) = buf_buka_month
67970 locate 1,3
67980 color Rgb(255,255,255)
67990 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
68000 goto Buka_Input_Born_Month2:
68010 endif
68020 case 2:
68030 count=3
68040 'c= val(buf_Month$)
68050 'buf_month = c*10 + No
68060 'buf_Month$ = str$(buf_month)
68070 'locate 2,3
68080 'print "部下の生まれた月(1月～12月):";buf_Month$
68090 'goto Buka_Input_Born_Month2:
68100 'case 3:
68110 'count=4
68120 'b=val(buf_month$)
68130 'buf_month=c*10+No
68140 'buf_Month$=str$(buf_month)
68150 'locate 2,3
68160 'print "部下の生まれた月(1月～12月):";buf_Month$
68170 'buf_month=val(buf_Month$)
68180 'year=val(buf_year$)
68190 if (No=-1) then
68200 goto Buka_Input_Born_Day:
68210 else
68220 goto Input_Born_Month2:
68230 endif
68240 'case 4:
68250 'bufyear=buf_year
68260 'if (No=-1) then
68270 'buf_month = val(buf_Month$)
68280 'month = buf_month
68290 'sp_on 14,0
68300 'goto Input_Born_Day:
68310 'else
68320 'goto Input_Born_Month2:
68330 'endif
68340 end select
68350 endif
68360 '左の丸ボタン　キャンセル
68370 if (bg2=2) then
68380 select case count2
68390 case 0:
68400 if (No = -1) then
68410 buf_buka_month=0:buf_buka_Month$="**"
68420 count=0
68430 goto rewrite2:
68440 else
68450 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
68460 buf_month=0:buf_Month$="**"
68470 locate 2,3
68480 color rgb(255,255,255)
68490 print "                                       "
68500 goto rewrite2:
68510 if (No>12) then
68520 ui_msg"値が範囲外です。"
68530 goto rewrite2:
68540 endif
68550 endif
68560 endif
68570 rewrite2:
68580 locate 2,3
68590 color rgb(255,255,255)
68600 print "                                      "
68610 locate 2,3
68620 print "部下の生まれた月(1月~12月):";buf_buka_Month$
68630 goto Buka_Input_Born_Month2:
68640 end select
68650 'endif
68660 endif
68670 end
68680 '2.部下の生まれた月'
68690 '3.部下の生まれた日'
68700 '生れた日を入力
68710 Buka_Input_Born_Day:
68720 '生まれた日入力
68730 cls 3:play ""
68740 'No=-1:Okのとき
68750 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
68760 for i=0 to 1
68770 buf_day(i)=0
68780 next i
68790 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
68800 gload Gazo$ + "Screen1.png",0,0,0
68810 gload Gazo$ + "downscreen.png",0,0,800
68820 'Init"kb:2"
68830 '音声ファイル再生 2023.06.07
68840 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
68850 font 48
68860 locate 0,1
68870 '文字色：黒　 color rgb(0,0,0)
68880 color rgb(255,255,255)
68890 print "部下の生まれた日を入れて下さい" + chr$(13)
68900 color rgb(255,255,255)
68910 locate 1,3
68920 print "部下の生まれた日(1日~31日):";buf_Day$
68930 color rgb(255,255,255)
68940 'locate 4,6:print ":7"
68950 'locate 9,6:print ":8"
68960 'locate 12,6:print ":9"
68970 locate 4,6
68980 print ":7  :8  :9" + chr$(13)
68990 color rgb(255,255,255)
69000 locate 4,8
69010 print ":4  :5  :6" + chr$(13)
69020 color rgb(255,255,255)
69030 locate 4,10
69040 print ":1  :2  :3" + chr$(13)
69050 locate 4,12
69060 print "    :0"
69070 locate 12,12
69080 color rgb(0,0,255)
69090 print ":Ok"
69100 sp_on 4,0: sp_on 5,0:sp_on 6,0
69110 sp_on 7,0:sp_on 8,0:sp_on 9,0
69120 sp_on 10,0:sp_on 11,0:sp_on 12,0
69130 sp_on 13,0:sp_on 14,1
69140 Buka_Input_Born_Day2:
69150 key$="":bg=0:y=0:y2=0:bg2=0
69160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
69170 key$ = inkey$
69180 bg = strig(1)
69190 y = stick(1)
69200 y2 = stick(0)
69210 bg2 = strig(0)
69220 pause 5
69230 wend
69240 '十字キー　ここから
69250 '上の矢印　または、十字キー上
69260 if ((y = -1) or (key$ = chr$(30))) then
69270 select case No
69280 'No=-1:okのとき:初期の状態
69290 '0kボタンから３に移動
69300 '上に行く 処理
69310 case -1:
69320 No=3:sp_on 12,1:sp_on 14,0
69330 pause 200:goto Buka_Input_Born_Day2:
69340 '選択肢:3
69350 '3ボタンから 6に移動
69360 case 3:
69370 No=6:sp_on 12,0:sp_on 11,1
69380 pause 200:goto Buka_Input_Born_Day2:
69390 '6ボタンから ９に移動
69400 case 6:
69410 No=9:sp_on 10,1:sp_on 11,0
69420 pause 200:goto Buka_Input_Born_Day2:
69430 '6ボタンから ９に移動　ここまで
69440 '9で上を押して何もしない
69450 case 9:
69460 '何もしない
69470 No=9
69480 pause 200:goto Buka_Input_Born_Day2:
69490 '9で上を押しても何もしない　ここまで
69500 '上　 0ボタンから2ボタン
69510 'sp_on 6,1:1
69520 'sp_on 8,1:5
69530 'sp_on 7,1:7
69540 case 0:
69550 No=2:sp_on 13,0:sp_on 9,1:
69560 pause 200:goto Buka_Input_Born_Day2:
69570 '上  0ボタンから2ボタン　ここまで
69580 '2から５になる 上
69590 case 2:
69600 No=5:sp_on 8,1:sp_on 9,0:
69610 pause 200:goto Buka_Input_Born_Day2:
69620 case 5:
69630 No=8:sp_on 7,1:sp_on 8,0
69640 pause 200:goto Buka_Input_Born_Day2:
69650 case 8:
69660 pause 200:goto Buka_Input_Born_Day2:
69670 case 1:
69680 No=4:sp_on 5,1:sp_on 6,0
69690 pause 200:goto Buka_Input_Born_Day2:
69700 case 4:
69710 No=7:sp_on 4,1:sp_on 5,0
69720 pause 200:goto Buka_Input_Born_Day2:
69730 case 7:
69740 pause 200:goto Buka_Input_Born_Day2:
69750 end select
69760 endif
69770 '左３　ここまで
69780 '下の矢印
69790 '中央 2
69800 if ((y=1) or (key$ = chr$(31))) then
69810 select case No
69820 '9から６に下げる
69830 case 9:
69840 No=6:sp_on 11,1:sp_on 10,0
69850 pause 200:goto Buka_Input_Born_Day2:
69860 '6から３に下げる
69870 case 6:
69880 No=3:sp_on 12,1:sp_on 11,0
69890 pause 200:goto Buka_Input_Born_Day2:
69900 '3から０ｋに変える
69910 case 3:
69920 No=-1:sp_on 14,1:sp_on 12,0
69930 pause 200:goto Buka_Input_Born_Day2:
69940 'Okから下のボタンを押しても何もしない
69950 case -1:
69960 pause 200:goto Buka_Input_Born_Day2:
69970 case 8:
69980 No=5:sp_on 8,1:sp_on 7,0
69990 pause 200:goto Buka_Input_Born_Day2:
70000 case 5:
70010 No=2:sp_on 9,1:sp_on 8,0
70020 pause 200:goto Buka_Input_Born_Day2:
70030 case 2:
70040 No=0:sp_on 13,1:sp_on 9,0
70050 pause 200:goto Buka_Input_Born_Day2:
70060 case 0:
70070 pause 200:goto Buka_Input_Born_Day2:
70080 case 7:
70090 No=4:sp_on 5,1:sp_on 4,0
70100 pause 200:goto Buka_Input_Born_Day2:
70110 case 4:
70120 No=1:sp_on 6,1:sp_on 5,0
70130 pause 200:goto Buka_Input_Born_Day2:
70140 case 1:
70150 pause 200:goto Buka_Input_Born_Day2:
70160 end select
70170 endif
70180 '左へボタン 十字キー　左　or 　カーソル左
70190 if ((y2 = -1) or (key$ = chr$(29))) then
70200 select case No
70210 'Ok ボタン  Okから　左　０に行く
70220 case -1:
70230 No=0:sp_on 13,1:sp_on 14,0
70240 pause 200:goto Buka_Input_Born_Day2:
70250 '0 ボタン  左　何もしない
70260 case 0:
70270 pause 200:goto Buka_Input_Born_Day2:
70280 case 3:
70290 No=2:sp_on 9,1:sp_on 12,0:
70300 pause 200:goto Buka_Input_Born_Day2:
70310 case 2:
70320 No=1:sp_on 6,1:sp_on 9,0:
70330 pause 200:goto Buka_Input_Born_Day2:
70340 case 1:
70350 pause 200:goto Buka_Input_Born_Day2:
70360 case 6:
70370 No=5:sp_on 8,1:sp_on 11,0
70380 pause 200:goto Buka_Input_Born_Day2:
70390 case 5:
70400 No=4:sp_on 5,1:sp_on 8,0
70410 pause 200:goto Buka_Input_Born_Day2:
70420 case 4:
70430 pause 200:goto Buka_Input_Born_Day2:
70440 case 9:
70450 No=8:sp_on 7,1:sp_on 10,0
70460 pause 200:goto Buka_Input_Born_Day2:
70470 case 8:
70480 No=7:sp_on 4,1:sp_on 7,0
70490 pause 200:goto Buka_Input_Born_Day2:
70500 case 7:
70510 pause 200:goto Buka_Input_Born_Day2:
70520 end select
70530 endif
70540 '右  十字キー　右　or カーソル　右
70550 if ((y2 = 1) or (key$ = chr$(28))) then
70560 select case No
70570 '0ボタンからokボタン右に移動
70580 case 0:
70590 No=-1:sp_on 14,1:sp_on 13,0
70600 pause 200:goto Buka_Input_Born_Day2:
70610 '0ボタンからokボタン 右に移動　ここまで
70620 'OKボタンで右を押して何もしない
70630 case -1:
70640 pause 200:goto Buka_Input_Born_Day2:
70650 case 1:
70660 No=2:sp_on 9,1:sp_on 6,0
70670 pause 200:goto Buka_Input_Born_Day2:
70680 case 2:
70690 No=3:sp_on 12,1:sp_on 9,0
70700 pause 200:goto Buka_Input_Born_Day2:
70710 case 3:
70720 pause 200:goto Buka_Input_Born_Day2:
70730 case 4:
70740 No=5:sp_on 8,1:sp_on 5,0
70750 pause 200:goto Buka_Input_Born_Day2:
70760 case 5:
70770 No=6:sp_on 11,1:sp_on 8,0
70780 pause 200:goto Buka_Input_Born_Day2:
70790 case 7:
70800 No=8:sp_on 7,1:sp_on 4,0
70810 pause 200:goto Buka_Input_Born_Day2:
70820 case 8:
70830 No=9:sp_on 10,1:sp_on 7,0
70840 pause 200:goto Buka_Input_Born_Day2:
70850 case 9:
70860 pause 200:goto Buka_Input_Born_Day2:
70870 case 6:
70880 pause 200:goto Buka_Input_Born_Day2:
70890 end select
70900 'Okから右ボタンを押して何もしない ここまで
70910 endif
70920 '十字キー　ここまで
70930 '右の丸ボタンを押したとき
70940 if ((bg = 2) or (key$ = chr$(13))) then
70950 'count :決定ボタンを押した回数
70960 select case (count)
70970 '1桁目入力
70980 case 0:
70990 count = 1:
71000 if (No = -1) then
71010 '1桁目　OKでは何もしない
71020 'goto check:
71030 No=0
71040 else
71050 'ok以外のボタンを押したとき
71060 buf_buka_day = No:buf_buka_Day$ = str$(No)
71070 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
71080 buf_buka_Day$ = str$(No) + "*"
71090 endif
71100 a=No
71110 buf_Buka_Born_Day(2) = buf_buka_day
71120 locate 1,3
71130 print"                                      "
71140 color RGB(255,255,255)
71150 locate 1,3
71160 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71170 endif
71180 check2:
71190 if (No >= 1 and No <= 9) then
71200 sp_on 14,0
71210 goto Buka_Input_Born_Day2:
71220 else
71230 sp_on 14,0
71240 goto Result_Business_Aisyou:
71250 end
71260 endif
71270 case 1:
71280 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
71290 count = 2:
71300 'locate 2,3
71310 'color RGB(255,255,255)
71320 'print "生まれた日(1日~31日):";buf_Day$
71330 'Okボタンを押したときの処理
71340 '入力値　10未満のとき
71350 'c = buf_day
71360 if (No = -1) then
71370 'c=buf_day
71380 ' buf_day = c
71390 'buf_Day$ = str$(buf_day)
71400 '10以下のとき
71410 No=0
71420 if (buf_day < 10) then
71430 sp_on 14,0
71440 goto Result_Business_Aisyou:
71450 end
71460 endif
71470 else
71480 sp_on 14,0
71490 'c=No
71500 buf_buka_day = a * 10 + No
71510 buf_buka_Day$ = str$(buf_buka_day)
71520 buf_Buka_Born_Day(2) = buf_buka_day
71530 locate 0,3
71540 color Rgb(255,255,255)
71550 print "                                       "
71560 locate 1,3
71570 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71580 goto Buka_Input_Born_Day2:
71590 endif
71600 '生まれた日　2桁目の数字　or 1桁の数字 + ok
71610 case 2:
71620 count=0
71630 'c=val(buf_Day$)
71640 'buf_day=c*10+No
71650 'buf_Day$=str$(buf_day)
71660 'day=buf_day
71670 'locate 2,3
71680 'print "生まれた日(1日〜31日):";buf_Day$
71690 'No=-1:ok ボタンを押したとき
71700 if (No = -1) then No=0
71710 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
71720 sp_on 14,0
71730 goto Result_Business_Aisyou:
71740 else
71750 goto Buka_Input_Born_Day2:
71760 endif
71770 'Okボタン以外を押したとき
71780 else
71790 c=val(buf_buka_Day$)
71800 buf_buka_day = c * 10 + No
71810 buf_buka_Day$ = str$(buf_buka_day)
71820 locate 1,3
71830 print "                "
71840 locate 1,3
71850 print "生まれた日(1日~31日):"+buf_buka_Day$
71860 goto Buka_Input_Born_Day2:
71870 'endif
71880 case 3:
71890 count=4
71900 'c=val(buf_day$)
71910 'buf_day=c*10+No
71920 'buf_day$=str$(buf_day)
71930 'locate 2,3
71940 'print "生まれた日を入れてください:";buf_day$
71950 'year=val(buf_year$)
71960 if (No = -1) then
71970 'goto Buka_Input_Born_Day:
71980 sp_on 14,0:
71990 goto complate_jyoushi:
72000 else
72010 goto Buka_Input_Born_Month2:
72020 endif
72030 'case 4:
72040 'bufyear=buf_year
72050 'if (No=-1) then
72060 'buf_day = val(buf_day$)
72070 'bufday = buf_day
72080 'sp_on 14,0
72090 goto complate_jyoushi:
72100 'else
72110 'goto Buka_Input_Born_Day2:
72120 'endif
72130 end select
72140 endif
72150 if (bg2=2) then
72160 select case count2
72170 case 0:
72180 if (No=-1) then
72190 'buf_day=0:buf_Day$="**"
72200 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
72210 count=0
72220 buf_buka_day=0:buf_buka_Day$="**"
72230 goto rewrite_day3:
72240 else
72250 buf_buka_day=0:buf_buka_Day$="**"
72260 ui_msg"値が範囲外です"
72270 endif
72280 goto rewrite_day3:
72290 else
72300 goto rewrite_day3:
72310 endif
72320 rewrite_day3:
72330 locate 2,3
72340 color rgb(255,255,255)
72350 print "                                      "
72360 locate 1,3
72370 print "生まれた日(1日~31日):"+buf_buka_Day$
72380 goto Buka_Input_Born_Day2:
72390 end select
72400 endif
72410 '3.部下の生まれた日'
72420 '部下'
72430 '--------------------------------------------'
72440 'ビジネの相性　結果表示
72450 Result_Business_Aisyou:
72460 cls 3:init "kb:4"
72470 a=0:b=0:c=0:d=0:e=0:f=0
72480 bg=0:key$=""
72490 gload Gazo$ + "Screen1.png",0,0,0
72500 gload Gazo$ + "downscreen.png",0,0,800
72510 sp_on 14,0
72520 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
72530 buf_Buka = Kabara_Num(d,e,f)
72540 a_2 = buf_Buka
72550 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
72560 locate 0,1
72570 color rgb(255,0,0)
72580 print "●.相性診断結果１"
72590 locate 0,4:
72600 color rgb(255,255,255)
72610 print "1.上司の名前:";buffer_name$(0)
72620 locate 0,6
72630 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
72640 locate 0,8
72650 print "2.部下の名前:";buffer_name$(1)
72660 locate 0,10
72670 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
72680 locate 0,12
72690 print "3.上司と部下の相性:";Result_Aisyou$
72700 locate 1,15
72710 color rgb(0,0,0)
72720 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
72730 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
72740 bg = strig(1)
72750 key$ = inkey$
72760 bg2 = strig(0)
72770 pause 5
72780 wend
72790 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
72800 if (bg2 = 2) then
72810 cls 3:goto Business_Aishou_Input_1_parson:
72820 endif
72830 'ビジネスの相性占い　結果2　説明
72840 Result_Business_Aisyou2:
72850 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
72860 gload Gazo$ + "Screen1.png",0,0,0
72870 locate 0,1
72880 color rgb(255,0,0)
72890 print "●.相性の説明"
72900 color rgb(255,255,255)
72910 locate 0,4
72920 print "相性:";Result_Aisyou$
72930 locate 0,6:
72940 print "相性の説明:";buf$
72950 locate 0,15
72960 color rgb(0,0,0)
72970 print "右の丸ボタン:トップ,左のボタン:前の画面"
72980 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
72990 bg = strig(1)
73000 bg2 = strig(0)
73010 key$ = inkey$
73020 pause 5
73030 wend
73040 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
73050 if ((bg2 = 2)) then goto Result_Business_Aisyou:
73060 'Birds Eye Menu List
73070 Result_Birtheye_List1:
73080 'dim List$(4) Topに定義
73090 List$(0) = "1.もう一度診断"
73100 List$(1) = "2.次へ行く"
73110 List$(2) = "3.データーを保存(未実装)"
73120 List$(3) = "4.トップ画面に戻る"
73130 Birds_List1 = ui_select("List$","Menu")
73140 select case (Birds_List1)
73150 case 0: '1.もう一度診断
73160 goto Input_name1_Birdseye:
73170 case 1: '2.次へ行く
73180 goto BirdsEye_Result2:
73190 case 2: '3.データーを保存
73200 goto Main_Screen:
73210 'ui_msg "データーを保存します"
73220 'goto BirdsEye_Save_data:
73230 case 3: '4.トップに戻る
73240 goto Main_Screen:
73250 end select
73260 'BirdsEye Data Save
73270 BirdsEye_Save_data:
73280 a$ = dir$("Save_data_Birdseye$",1)
73290 if a$ <> "" then
73300 Mkdir a$
73310 endif
73320 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
73330 input #1,name1$,nae2$,str$(buffer(0)),str$(buffer(1)),str$(buffer(2)),str$(buffer(3)),str$(buffer(4)),str$(buffer(5)),str$(buffer(6)),str$(buffer(7)),str$(buffer(8))
73340 close #1
73350 ui_msg "データーを保存しました"
73360 '自作関数 ここから
73370 func read_explain$(ba$)
73380 d$=""
73390 buf_String$=""
73400 if ba$="A" then
73410 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
73420 line input #1,a$
73430 a1$=mid$(a$,1,12)
73440 a2$=mid$(a$,13,17)
73450 a3$=mid$(a$,30,17)
73460 a4$=mid$(a$,47,18)
73470 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
73480 buf_String$ = a5$
73490 close #1
73500 endif
73510 if ba$="B"  then
73520 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
73530 line input #1,b$
73540 b1$=mid$(b$,1,15)
73550 b2$=mid$(b$,16,21)
73560 'b3$=mid$(b$,33,3)
73570 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
73580 buf_String$ = b4$
73590 close #1
73600 endif
73610 if ba$="C"  then
73620 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
73630 line input #1,c$
73640 c1$ = Mid$(c$,1,15)
73650 c2$ = Mid$(c$,16,33)
73660 c3$ = c1$ + chr$(13) + c2$
73670 buf_String$ = c3$
73680 close #1
73690 endif
73700 if ba$="D" then
73710 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
73720 line input #1,d$
73730 d1$=mid$(d$,1,15)
73740 d2$=mid$(d$,16,22)
73750 d3$=mid$(d$,38,7)
73760 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
73770 buf_String$ = d4$
73780 close #1
73790 endif
73800 if ba$="E"  then
73810 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
73820 line input #1,e$
73830 e1$=Mid$(e$,1,16)
73840 e2$=Mid$(e$,17,16)
73850 e3$=Mid$(e$,33,12)
73860 e4$=Mid$(e$,45,17)
73870 e5$=Mid$(e$,62,17)
73880 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
73890 buf_String$ = e6$
73900 close #1
73910 endif
73920 if ba$="F" then
73930 '改行を追加して表示を調整
73940 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
73950 line input #1,f$
73960 f1$=Mid$(f$,1,15)
73970 f2$=Mid$(f$,16,12)
73980 buf_String$ = f1$+chr$(13)+f2$
73990 close #1
74000 endif
74010 if ba$="G" then
74020 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
74030 line input #1,g$
74040 g1$ = mid$(g$,1,16)
74050 g2$ = mid$(g$,17,18)
74060 g3$ = mid$(g$,36,21)
74070 g4$ = mid$(g$,56,6)
74080 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
74090 buf_String$ = g5$
74100 close #1
74110 endif
74120 if ba$="H" then
74130 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
74140 line input #1,h$
74150 h1$=Mid$(h$,1,17)
74160 h2$=Mid$(h$,18,21)
74170 h3$=Mid$(h$,39,20)
74180 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
74190 buf_String$ = h$
74200 close #1
74210 endif
74220 if ba$ = "I" then
74230 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
74240 line input #1,i$
74250 i1$=Mid$(i$,1,10)
74260 i2$=Mid$(i$,11,13)
74270 i3$=Mid$(i$,25,16)
74280 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
74290 buf_String$ = i$
74300 close #1
74310 endif
74320 buffer$ = buf_String$
74330 endfunc buffer$
74340 'カバラ数（数秘番号を求める）
74350 func Kabara_Num(buffer_Year,month,day)
74360 '=============================
74370 'a1:4桁のうちの1桁目を求める
74380 '例 a1:1234の4が1桁目
74390 'a2:4桁のうちの2桁目を求める
74400 '例:a2:1234の3が2桁目
74410 'a3:4桁のうちの3桁目を求める
74420 '例 a3:1234の2が3桁目
74430 'a4:4桁のうちの4桁目を求める
74440 '例 a4:1234の1が4桁目
74450 '==============================
74460 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
74470 Year = buffer_Year
74480 '処理1　整数部分を取り出す。
74490 a4 = fix(Year / 1000)
74500 a3 = fix(Year / 100) - (a4 * 10)
74510 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
74520 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
74530 '処理　２　取り出した整数部分を足す。
74540 a_ = a1 + a2 + a3 + a4 +month + day
74550 'a1=0:a2=0:a3=0:a4=0
74560 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
74570 buffer = a_
74580 'else
74590 goto recomp2:
74600 'if (a_ = 10) then
74610 '  buffer = 1
74620 endif
74630 recomp2:
74640 a5=0:a6=0
74650 a5 = fix(a_ / 10)
74660 a6 = (a_) - (a5 * 10)
74670 a_ = a5 + a6
74680 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
74690 '結果に行く
74700 goto Res2:
74710 '  if ((a_>11) and (a_<99)) then
74720 else
74730 '再度計算
74740 goto recomp2:
74750 endif
74760 '     a1 = fix(a_ / 10)
74770 '     a2 = a_ - (a1 * 10)
74780 '     a_ = a1 + a2
74790 '     buffer = a_
74800 'endif
74810 'else
74820 '    bffer = a_
74830 'endif
74840 'endif
74850 'else
74860 'talk "プログラムを終了します。"
74870 'end
74880 'endif
74890 'kabara = 10
74900 Res2:
74910 kabara = a_
74920 endfunc kabara
74930 func Kabara_Aisyou$(buff1,buff2)
74940 a=0:b=0
74950 '範囲　1~9
74960 if ((buff1 > 0 and buff1 < 10)) then
74970 a = buff1
74980 else
74990 Select case buff1
75000 case 11:
75010 buff1=9:a=buff1
75020 case 22:
75030 buff1=10:a=buff1
75040 end select
75050 endif
75060 '範囲　１~９
75070 if ((buff2 > 0 and buff2 < 10)) then
75080 b = buff2
75090 else
75100 select case buff2
75110 case 11:
75120 buff2=9:b=buff2
75130 case 12:
75140 buff2=10:b=buff2
75150 end select
75160 endif
75170 Aisyou$ = Buffer_Business_Aisyou$(a,b)
75180 endfunc Aisyou$
75190 '=============================
75200 '自作関数 ここまで
75210 '1.数秘術　トップ画面
75220 '
75230 'Data_eraseを一番最後に持ってくる
75240 '=============================
75250 Data_erase:
75260 'メモリー削除
75270 erase buf_male_year
75280 erase buf_male_month
75290 erase buf_male_Born_Day
75300 erase buf_feMale_Born_Day
75310 erase buf_female_day
75320 erase buf_name1$
75330 erase buf_name2$
75340 erase buffer
75350 erase buf_chart$
75360 erase Buffer_Business_Aisyou$
75370 erase buffer_name$
75380 '上司の誕生日
75390 erase buf_Jyoushi_Born_Day
75400 '部下の誕生日
75410 erase buf_Buka_Born_Day
75420 erase buf_year
75430 erase buf_month
75440 erase buf_day
75450 'フォーカスライン
75460 erase Forcus1_buffer$
75470 erase Forcus2_buffer$
75480 erase Forcus3_buffer$
75490 'Birds eye List Data 配列
75500 erase List$
75510 buffer$ = ""
75520 buf$ = ""
75530 buf_year$ = ""
75540 buf_Jyoushi_Kabara_Num = 0
75550 buf_Buka_Kabara_Num = 0
75560 count = 0
75570 buf_Month$ = ""
75580 buf_Day$ = ""
75590 b=0
75600 c=0
75610 return
