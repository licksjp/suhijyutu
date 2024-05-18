100 '(プログラムを)終了するを選択
110 cls 3
120 'AC.2019
130 '数秘術占い 2019.08.16
140 '改変履歴
150 'AC.2021
160 '"2021.03.31 α版 画面背景アップデート"
170 '"2021.04.02 β版 更にアップデート音声追加"
180 '"2021.04.03 β2版 画面表示拡張"
190 'AC.2023
200 '"2023.05.20 β3版　入力方式拡張"
210 'Version 更新履歴
220 '2023.06.04:Ver100_20230604
230 '2023.06.11:Ver101_20230611
240 '2023.06.18:Ver102_20230618
250 '2023.06.25:Ver103_20230625
260 '2023.07.02:Ver104_20230702
270 '2023.07.09:Ver105_20230709
280 '2023.07.16:Ver106_20230716
290 '2023.07.23:Ver107_20230723
300 '2023.07.30:Ver108_20230730
310 '2023.08.06:Ver109_20230806
320 '2023.08.13:Ver110_20230813
330 '2023.08.20:Ver111_20230820
340 '2023.08.27:Ver112_20230827
350 '2023.09.03:Ver113_20230903
360 '2023.09.10:Ver114_20230910
370 '2023.09.17:Ver115_20230917
380 '2023.09.24:Ver116_20230924
390 '2023.10.01:Ver117_20231001
400 '2023.10.08:Ver118_20231008
410 '2023.10.15:Ver119_20231015
420 '2023.10.22:Ver120_20231022
430 '2023.10.29:Ver121_20231029
440 '2023.11.05:Ver122_20231105
450 '2023.11.12:Ver123_20231112
460 '2023.11.19:Ver124_20231119
470 '2023.11.26:Ver125_20231126
480 '2023.12.03:Ver126_20231203
490 '2023.12.10:Ver127_20231210
500 '2023.12.17:Ver128_20231217
510 '2023.12.24:Ver129_20231224
520 '2023.12.31:Ver130_20231231
530 'AC.2024
540 '2024.01.07:Ver131_20240107
550 Version$ = "Ver:1.3.1_20240107"
560 'Gazo file Folder
570 Gazo$ = "./data/Picture/"
580 'Voice files 2023
590 Voice$ = "./data/Voice/Voice/"
600 'BirtheyeChart Data:20230626
610 Birth_eye_chart$ = "./data/chart_data/"
620 'Data File
630 Data$ = "./data/data/"
640 'Business Aisyou 結果説明保存フォルダ
650 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
660 'Save BirdsEyeGrit List
670 Save_data_Birdseye$ = "./data/Parsonal_data/"
680 '変数定義 パート
690 b=0:c=0:n=0
700 'dim buffer_List$(11,1)
710 dim buf_name1$(10),buf_name2$(10)
720 dim buffer(9),buf_chart$(26,2)
730 'ビジネスの相性　データー
740 dim Buffer_Business_Aisyou$(12,12)
750 '男女の相性
760 dim Buffer_Bitween_sexes_Aisyou$(12,12)
770 '生れた年代
780 dim buf_year(4):buf_year$ = ""
790 dim buf_month(2)
800 dim buf_day(2)
810 'フォーカスライン　配列
820 dim Forcus1_buffer$(3)
830 dim Forcus2_buffer$(3)
840 dim Forcus3_buffer$(2)
850 '生れた月
860 buf_Month$ = ""
870 '生れた日
880 buf_Day$ = ""
890 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
900 dim buffer_name$(3)
910 '1-1.上司の誕生日(数値データー)
920 dim buf_Jyoushi_Born_Day(3)
930 '1-2.上司の数秘ナンバー(数値データー)
940 buf_Jyoushi_Kabara_Num = 0
950 '2-1.部下の誕生日(数値データー)
960 dim buf_Buka_Born_Day(3)
970 '2-2.部下の数秘ナンバー(数秘データー)
980 buf_Buka_Kabara_Num = 0
990 dim buf_male_year(4)
1000 dim buf_male_month(2)
1010 dim buf_male_Born_Day(2)
1020 dim buf_feMale_Born_Day(2)
1030 dim buf_female_day(2)
1040 count=0
1050 'Birds Eye List 配列
1060 dim List$(6)
1070 '部下の数秘ナンバー
1080 'File 読み込み
1090 '1.ビジネスの相性占い
1100 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1110 for i=0 to 11
1120 for j=0 to 11
1130 input #1,a$
1140 Buffer_Business_Aisyou$(j,i) = a$
1150 next j
1160 next i
1170 close #1
1180 '2.男女の相性占い
1190 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1200 for i=0 to 11
1210 for j=0 to 11
1220 input #1,a$
1230 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1240 next j
1250 next i
1260 close #1
1270 '2.Birth Eye chart$
1280 '2.バーズアイグリッドを読み込む
1290 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1300 for j=0 to 25
1310 for i=0 to 1
1320 input #1,a$
1330 buf_chart$(j,i) = a$
1340 next i
1350 next j
1360 close #1
1370 'File 読み込み　ここまで
1380 'Main画面
1390 screen 1,1,1,1
1400 Main_Screen:
1410 cls 3:
1420 No=0
1430 gload Gazo$ + "Selection.png",1,5,200
1440 gload Gazo$ + "Selection.png",1,5,300
1450 gload Gazo$ + "Selection.png",1,5,400
1460 gload Gazo$ + "Selection.png",1,5,500
1470 '4
1480 gload Gazo$ + "Selection.png",1,35,300
1490 '5
1500 gload Gazo$ + "Selection.png",1,35,400
1510 '6
1520 gload Gazo$ + "Selection.png",1,35,500
1530 '7
1540 gload Gazo$ + "Selection.png",1,70,300
1550 '8
1560 gload Gazo$ + "Selection.png",1,70,400
1570 '9
1580 gload Gazo$ + "Selection.png",1,70,500
1590 '10
1600 gload Gazo$ + "Selection.png",1,110,300
1610 '11
1620 gload Gazo$ + "Selection.png",1,110,400
1630 '12
1640 gload Gazo$ + "Selection.png",1,110,500
1650 '13:0
1660 gload Gazo$ + "Selection.png",1,150,400
1670 gload Gazo$ + "Selection.png",1,200,400
1680 gload Gazo$ + "TopScreen_20230310.png",0,0,0
1690 '選択肢の丸
1700 gload Gazo$ + "downscreen.png",0,0,800
1710 sp_def 0,(5,300),32,32
1720 sp_def 1,(5,400),32,32
1730 sp_def 2,(5,500),32,32
1740 sp_def 3,(5,600),32,32
1750 '1
1760 sp_def 4,(35,300),32,32
1770 '2
1780 sp_def 5,(35,400),32,32
1790 '3
1800 sp_def 6,(35,500),32,32
1810 '4
1820 sp_def 7,(70,300),32,32
1830 '5
1840 sp_def 8,(70,400),32,32
1850 '6
1860 sp_def 9,(70,500),32,32
1870 '7
1880 sp_def 10,(110,300),32,32
1890 '8
1900 sp_def 11,(110,400),32,32
1910 '9
1920 sp_def 12,(110,400),32,32
1930 sp_def 13,(150,400),32,32
1940 sp_def 14,(200,400),32,32
1950 'Sprite OFF
1960 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
1970 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
1980 sp_put 0,(5,300),0,0
1990 sp_put 1,(5,400),1,0
2000 sp_put 2,(5,500),2,0
2010 sp_put 3,(5,600),3,0
2020 '1
2030 sp_put 4,(130,300),4,0
2040 '2
2050 sp_put 5,(130,400),5,0
2060 '3
2070 sp_put 6,(130,500),6,0
2080 '4
2090 sp_put 7,(340,300),7,0
2100 '5
2110 sp_put 8,(340,400),8,0
2120 '6
2130 sp_put 9,(340,500),9,0
2140 '7
2150 sp_put 10,(540,300),10,0
2160 '8
2170 sp_put 11,(540,400),11,0
2180 '9
2190 sp_put 12,(540,500),12,0
2200 '
2210 sp_put 13,(340,600),13,0
2220 sp_put 14,(540,600),14,0
2230 Main_Top:
2240 'Main Message 2023.06.07
2250 '再生を止める
2260 play ""
2270 init "kb:4"
2280 'font 32:
2290 font 48
2300 print chr$(13) + chr$(13) + chr$(13)
2310 color rgb(217,255,212)
2320 print "番号を選んでください" + chr$(13)
2330 '0
2340 print " :1.数秘術占い" + chr$(13)
2350 '1
2360 print " :2.設 定" + chr$(13)
2370 '2
2380 print " :3.ヘルプ" + chr$(13)
2390 '3
2400 print " :4.(プログラムを)終了する" + chr$(13)
2410 COLOR rgb(0,0,0):No=0
2420 locate 1,15
2430 print "                                       "
2440 locate 1,15:print "1.数秘術占いを選択"
2450 play Voice$ + "Voice_Main_Message_20230607.mp3"
2460 Main_Screen_Select:
2470 y = 0:key$ = "":bg = 0:bg2=0
2480 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
2490 y = stick(1)
2500 '"May (2023)"
2510 key$ = inkey$
2520 bg = strig(1)
2530 bg2 = strig(0)
2540 pause 200
2550 wend
2560 '1.
2570 'ジョイパッドのソース ソート　ここから
2580 'カーソル　下 or 十字キー下
2590 if ((y = 1) or (key$ = chr$(31))) then
2600 select case No
2610 case 0:
2620 '1
2630 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2640 case 1:
2650 '2
2660 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2670 case 2:
2680 '3
2690 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2700 case 3:
2710 '0
2720 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
2730 end select
2740 endif
2750 '2.
2760 'カーソル　上　or 十字キー  上
2770 if ((y = -1) or (key$ = chr$(30))) then
2780 select case No
2790 case 0:
2800 '3
2810 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
2820 case 1:
2830 '0
2840 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
2850 case 2:
2860 '1
2870 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
2880 case 3:
2890 '2
2900 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
2910 end select
2920 endif
2930 'ジョイパッド　ソース 部分　ここまで
2940 'ジョイパッド右　　or Enter key 決定
2950 if ((bg = 2) OR (key$ = chr$(13))) then
2960 select case No
2970 case 0:
2980 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
2990 case 1:
3000 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
3010 case 2:
3020 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
3030 case 3:
3040 play "":pause 200
3050 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
3060 end select
3070 endif
3080 if (bg2 = 2) then
3090 play "":pause 200
3100 play Voice$ + "Voice_Main_Message_20230607.mp3"
3110 goto Main_Screen_Select:
3120 endif
3130 'Version
3140 Version:
3150 cls 3:PLAY ""
3160 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
3170 gload Gazo$ + "downscreen.png",0,0,800
3180 init"kb:4":font 32+8
3190 'talk"バージョン情報です"
3200 'Message :Version
3210 play Voice$ +  "Voice_Version_Message_20230607.mp3"
3220 locate 0,3
3230 color rgb(0,0,0)
3240 print "・Title:数秘術占い";chr$(13)
3250 print "・" + Version$ + chr$(13)
3260 print "・Author:licksjp"+chr$(13)
3270 print "・E-mail:licksjp@gmail.com" + chr$(13)
3280 locate 0,12
3290 print "(C)licksjp All rights " + chr$(13)
3300 locate 7,13
3310 print "reserved since 2009"+chr$(13)
3320 locate 0,18
3330 color rgb(255,255,255)
3340 print "ジョイパッドの右を押してください"
3350 Versionn_Selection:
3360 bg = 0:key$ = "":bg2 = 0
3370 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
3380 bg = strig(1)
3390 key$ = inkey$
3400 bg2 = strig(0)
3410 pause 2
3420 wend
3430 if ((bg = 2) or (key$ = chr$(13))) then
3440 pause 200:cls 4:goto Main_Screen:
3450 endif
3460 if (bg2=2) then
3470 play "":pause 200
3480 play Voice$ + "Voice_Version_Message_20230607.mp3"
3490 goto Versionn_Selection:
3500 endif
3510 '1.数秘ナンバーを求める
3520 '誕生日入力(生れた年代)
3530 Input_Seireki:
3540 cls 3:play "":count=0:count2=0
3550 'No = -1:Okのとき
3560 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
3570 for i=0 to 3
3580 buf_year(i)=0
3590 next i
3600 gload Gazo$ + "Screen2.png",0,0,0
3610 gload Gazo$ + "downscreen.png",0,0,800
3620 'Init"kb:2"
3630 '音声ファイル再生 2023.06.07
3640 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
3650 font 48
3660 locate 0,1
3670 '文字色：黒　 color rgb(0,0,0)
3680 color rgb(255,255,255)
3690 print "生まれた年代を入れて下さい" + chr$(13)
3700 color rgb(255,255,255)
3710 locate 2,3
3720 print "生まれた年代(西暦4桁):" + buf_year$
3730 '=============================
3740 'テンキーの色(1~９)　白 ,決定ボタン　青
3750 '=============================
3760 color rgb(255,255,255)
3770 'locate 4,6:print ":7"
3780 'locate 9,6:print ":8"
3790 'locate 12,6:print ":9"
3800 'locate 4,6
3810 'print ":7  :8  :9" + chr$(13)
3820 'color rgb(255,255,255)
3830 'locate 4,8
3840 'print ":4  :5  :6" + chr$(13)
3850 'color rgb(255,255,255)
3860 'locate 4,10
3870 'print ":1  :2  :3" + chr$(13)
3880 'locate 4,12
3890 'print "    :0"
3900 'locate 12,12
3910 'color rgb(255,0,0)
3920 'print ":Ok"
3930 sp_on 4,0: sp_on 5,0:sp_on 6,0
3940 sp_on 7,0:sp_on 8,0:sp_on 9,0
3950 sp_on 10,0:sp_on 11,0:sp_on 12,0
3960 sp_on 13,0:sp_on 14,1
3970 Input_Seireki2:
3980 key$="":bg=0:y=0:y2=0:bg2=0:
3990 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
4000 key$ = inkey$
4010 bg = strig(1)
4020 y = stick(1)
4030 y2 = stick(0)
4040 bg2 = strig(0)
4050 pause 200
4060 wend
4070 '十字キー　ここから
4080 '上の矢印　または、十字キー上
4090 if ((y = -1) or (key$ = chr$(30))) then
4100 select case No
4110 'No=-1:okのとき:初期の状態
4120 '0kボタンから３に移動
4130 '上に行く 処理
4140 case -1:
4150 No=3:sp_on 12,1:sp_on 14,0
4160 pause 200:goto Input_Seireki2:
4170 '選択肢:3
4180 '3ボタンから 6に移動
4190 case 3:
4200 No=6:sp_on 12,0:sp_on 11,1
4210 pause 200:goto Input_Seireki2:
4220 '6ボタンから ９に移動
4230 case 6:
4240 No=9:sp_on 10,1:sp_on 11,0
4250 pause 200:goto Input_Seireki2:
4260 '6ボタンから ９に移動　ここまで
4270 '9で上を押して何もしない
4280 case 9:
4290 '何もしない
4300 No=9
4310 pause 200:goto Input_Seireki2:
4320 '9で上を押しても何もしない　ここまで
4330 '上　 0ボタンから2ボタン
4340 'sp_on 6,1:1
4350 'sp_on 8,1:5
4360 'sp_on 7,1:7
4370 case 0:
4380 No=2:sp_on 13,0:sp_on 9,1:
4390 pause 200:goto Input_Seireki2:
4400 '上  0ボタンから2ボタン　ここまで
4410 '2から５になる 上
4420 case 2:
4430 No=5:sp_on 8,1:sp_on 9,0:
4440 pause 200:goto Input_Seireki2:
4450 case 5:
4460 No=8:sp_on 7,1:sp_on 8,0
4470 pause 200:goto Input_Seireki2:
4480 case 8:
4490 pause 200:goto Input_Seireki2:
4500 case 1:
4510 No=4:sp_on 5,1:sp_on 6,0
4520 pause 200:goto Input_Seireki2:
4530 case 4:
4540 No=7:sp_on 4,1:sp_on 5,0
4550 pause 200:goto Input_Seireki2:
4560 case 7:
4570 pause 200:goto Input_Seireki2:
4580 end select
4590 endif
4600 '左３　ここまで
4610 '下の矢印
4620 '中央 2
4630 if ((y=1) or (key$ = chr$(31))) then
4640 select case No
4650 '9から６に下げる
4660 case 9:
4670 No=6:sp_on 11,1:sp_on 10,0
4680 pause 200:goto Input_Seireki2:
4690 '6から３に下げる
4700 case 6:
4710 No=3:sp_on 12,1:sp_on 11,0
4720 pause 200:goto Input_Seireki2:
4730 '3から０ｋに変える
4740 case 3:
4750 No=-1:sp_on 14,1:sp_on 12,0
4760 pause 200:goto Input_Seireki2:
4770 'Okから下のボタンを押しても何もしない
4780 case -1:
4790 pause 200:goto Input_Seireki2:
4800 case 8:
4810 No=5:sp_on 8,1:sp_on 7,0
4820 pause 200:goto Input_Seireki2:
4830 case 5:
4840 No=2:sp_on 9,1:sp_on 8,0
4850 pause 200:goto Input_Seireki2:
4860 case 2:
4870 No=0:sp_on 13,1:sp_on 9,0
4880 pause 200:goto Input_Seireki2:
4890 case 0:
4900 pause 200:goto Input_Seireki2:
4910 case 7:
4920 No=4:sp_on 5,1:sp_on 4,0
4930 pause 200:goto Input_Seireki2:
4940 case 4:
4950 No=1:sp_on 6,1:sp_on 5,0
4960 pause 200:goto Input_Seireki2:
4970 case 1:
4980 pause 200:goto Input_Seireki2:
4990 end select
5000 endif
5010 '左へボタン 十字キー　左　or 　カーソル左
5020 if ((y2 = -1) or (key$ = chr$(29))) then
5030 select case No
5040 'Ok ボタン  Okから　左　０に行く
5050 case -1:
5060 No=0:sp_on 13,1:sp_on 14,0
5070 pause 200:goto Input_Seireki2:
5080 '0 ボタン  左　何もしない
5090 case 0:
5100 pause 200:goto Input_Seireki2:
5110 case 3:
5120 No=2:sp_on 9,1:sp_on 12,0:
5130 pause 200:goto Input_Seireki2:
5140 case 2:
5150 No=1:sp_on 6,1:sp_on 9,0:
5160 pause 200:goto Input_Seireki2:
5170 case 1:
5180 pause 200:goto Input_Seireki2:
5190 case 6:
5200 No=5:sp_on 8,1:sp_on 11,0
5210 pause 200:goto Input_Seireki2:
5220 case 5:
5230 No=4:sp_on 5,1:sp_on 8,0
5240 pause 200:goto Input_Seireki2:
5250 case 4:
5260 pause 200:goto Input_Seireki2:
5270 case 9:
5280 No=8:sp_on 7,1:sp_on 10,0
5290 pause 200:goto Input_Seireki2:
5300 case 8:
5310 No=7:sp_on 4,1:sp_on 7,0
5320 pause 200:goto Input_Seireki2:
5330 case 7:
5340 pause 200:goto Input_Seireki2:
5350 end select
5360 endif
5370 '右  十字キー　右　or カーソル　右
5380 if ((y2 = 1) or (key$ = chr$(28))) then
5390 select case No
5400 '0ボタンからokボタン右に移動
5410 case 0:
5420 No=-1:sp_on 14,1:sp_on 13,0
5430 pause 200:goto Input_Seireki2:
5440 '0ボタンからokボタン 右に移動　ここまで
5450 'OKボタンで右を押して何もしない
5460 case -1:
5470 pause 200:goto Input_Seireki2:
5480 case 1:
5490 No=2:sp_on 9,1:sp_on 6,0
5500 pause 200:goto Input_Seireki2:
5510 case 2:
5520 No=3:sp_on 12,1:sp_on 9,0
5530 pause 200:goto Input_Seireki2:
5540 case 3:
5550 pause 200:goto Input_Seireki2:
5560 case 4:
5570 No=5:sp_on 8,1:sp_on 5,0
5580 pause 200:goto Input_Seireki2:
5590 case 5:
5600 No=6:sp_on 11,1:sp_on 8,0
5610 pause 200:goto Input_Seireki2:
5620 case 7:
5630 No=8:sp_on 7,1:sp_on 4,0
5640 pause 200:goto Input_Seireki2:
5650 case 8:
5660 No=9:sp_on 10,1:sp_on 7,0
5670 pause 200:goto Input_Seireki2:
5680 case 9:
5690 pause 200:goto Input_Seireki2:
5700 case 6:
5710 pause 200:goto Input_Seireki2:
5720 end select
5730 'Okから右ボタンを押して何もしない ここまで
5740 endif
5750 '十字キー　ここまで
5760 if ((bg=2) or (key$=chr$(13))) then
5770 select case count
5780 case 0:
5790 count=1
5800 if (No=-1) then
5810 count=0
5820 'Okボタンを押したとき
5830 goto Input_Seireki2:
5840 else
5850 '===================================
5860 'Okボタン以外が押されたとき  1桁目の入力
5870 '===================================
5880 count2=1
5890 if (No >= 1 and No <= 2) then
5900 buf_year$="":buf_year$ = str$(No)
5910 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
5920 n1 = len("生まれた年代(西暦4桁): ")
5930 locate 2,3
5940 color rgb(255,255,255)
5950 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
5960 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
5970 'print "生まれた年代(西暦4桁):";buf_year2$
5980 print buf_Born_Year_line$
5990 goto Input_Seireki2:
6000 else
6010 count=0
6020 ui_msg"数字が範囲外になります。"
6030 buf_year$="":buf_year=0
6040 goto Input_Seireki2:
6050 endif
6060 endif
6070 case 1:
6080 count = 2
6090 if (No = -1) then
6100 count = 1
6110 goto Input_Seireki2:
6120 else
6130 count2 = 1
6140 b = val(buf_year$)
6150 buf_year = b * 10 + No
6160 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
6170 locate 2,3
6180 color rgb(255,255,255)
6190 print "                                                                "
6200 locate 2,3
6210 print "生まれた年代(西暦4桁):";buf_year2$
6220 'if (No = -1) then
6230 'count=1
6240 goto Input_Seireki2:
6250 endif
6260 case 2:
6270 count=3
6280 if (No=-1) then
6290 count =2
6300 goto Input_Seireki2:
6310 else
6320 b = val(buf_year$)
6330 buf_year = b*10 + No
6340 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
6350 locate 2,3
6360 color rgb(255,255,255)
6370 print "                                        "
6380 locate 2,3
6390 print "生まれた年代(西暦4桁):";buf_year2$
6400 goto Input_Seireki2:
6410 endif
6420 case 3:
6430 count=4
6440 if (No = -1) then
6450 count=3
6460 goto Input_Seireki2:
6470 else
6480 b = val(buf_year$)
6490 buf_year = b * 10 + No
6500 buf_year$ = str$(buf_year)
6510 locate 2,3
6520 color RGB(255,255,255)
6530 print "                                      "
6540 locate 2,3
6550 print "生まれた年代(西暦4桁):";buf_year$
6560 buf_year=val(buf_year$)
6570 'year=val(buf_year$)
6580 'if (No=-1) then
6590 'goto Input_Born_Month:
6600 'else
6610 goto Input_Seireki2:
6620 endif
6630 case 4:
6640 'bufyear=buf_year
6650 if (No = -1) then
6660 buf_year = val(buf_year$)
6670 bufyear = buf_year
6680 sp_on 14,0
6690 goto Input_Born_Month:
6700 else
6710 goto Input_Seireki2:
6720 endif
6730 end select
6740 endif
6750 '=========================
6760 'bg2　キャンセルボタン
6770 '=========================
6780 if (bg2 = 2) then
6790 select case count2
6800 case 0:
6810 'Okボタンを押したときの処理
6820 if (No = -1) then
6830 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
6840 'count = 0
6850 locate 2,3
6860 color rgb(255,255,255)
6870 print "                                      "
6880 locate 2,3
6890 print "生まれた年代（西暦4桁):";buf_year$
6900 '=============================
6910 'case 0:前の画面に戻る 数秘術トップメニュー
6920 '=============================
6930 sp_on 14,0:goto Kabara_TopScreen:
6940 else
6950 'count=0
6960 '(buf_year=0) then
6970 buf_year = 0:buf_year$ = string$(4,"*")
6980 goto Input_Seireki2:
6990 'endif
7000 endif
7010 case 1:
7020 if (No = -1) then
7030 count2 = 0:count = 0
7040 buf$=right$(buf_year$,1)
7050 if (val(buf$) >= 1 and val(buf$) <= 9) then
7060 buf_year$ = "****":buf_year=0
7070 color rgb(255,255,255)
7080 locate 0,3:
7090 print "                                      "
7100 locate 2,3
7110 print "生まれた年代（西暦4桁):" + buf_year$
7120 goto Input_Seireki2:
7130 endif
7140 else
7150 endif
7160 end select
7170 endif
7180 end
7190 'Input"生れた年代(4桁,〜2025年):",year
7200 'if year > 2025 then goto Input_Seireki:
7210 'if year = 123 then cls 3:cls 4:goto Main_Screen:
7220 '"4桁目"
7230 'bufyear4 = fix(year / 1000)
7240 '"3桁目"
7250 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
7260 '"2桁目"
7270 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
7280 '"1桁目"
7290 'bufyear1 = fix((year - ((bufyear4*
7300 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
7310 '生れた月を入力
7320 Input_Born_Month:
7330 cls 3:play "":count=0:count2=0
7340 'No=-1:Okのとき
7350 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
7360 for i=0 to 1
7370 buf_month(i)=0
7380 next i
7390 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
7400 gload Gazo$ + "Screen2.png",0,0,0
7410 gload Gazo$ + "downscreen.png",0,0,800
7420 'Init"kb:2"
7430 '音声ファイル再生 2023.06.07
7440 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
7450 font 48
7460 locate 0,1
7470 '文字色：黒　 color rgb(0,0,0)
7480 '文字色:白
7490 color rgb(255,255,255)
7500 print "生まれた月を入れて下さい" + chr$(13)
7510 '文字色:白
7520 color rgb(255,255,255)
7530 locate 2,3
7540 '文字色:白
7550 print "生まれた月(1月~12月):";buf_Month$
7560 color rgb(255,255,255)
7570 'locate 4,6:print ":7"
7580 'locate 9,6:print ":8"
7590 'locate 12,6:print ":9"
7600 'locate 4,6
7610 '文字色:赤
7620 'print ":7  :8  :9" + chr$(13)
7630 'color rgb(255,255,255)
7640 'locate 4,8
7650 'print ":4  :5  :6" + chr$(13)
7660 'color rgb(255,255,255)
7670 'locate 4,10
7680 'print ":1  :2  :3" + chr$(13)
7690 'locate 4,12
7700 'print "    :0"
7710 'locate 12,12
7720 'color rgb(255,0,0)
7730 'print ":Ok"
7740 sp_on 4,0: sp_on 5,0:sp_on 6,0
7750 sp_on 7,0:sp_on 8,0:sp_on 9,0
7760 sp_on 10,0:sp_on 11,0:sp_on 12,0
7770 sp_on 13,0:sp_on 14,1
7780 Input_Born_Month2:
7790 key$="":bg=0:y=0:y2=0:bg2=0
7800 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7810 key$ = inkey$
7820 bg = strig(1)
7830 y = stick(1)
7840 y2 = stick(0)
7850 bg2 = strig(0)
7860 pause 5
7870 wend
7880 '十字キー　ここから
7890 '上の矢印　または、十字キー上
7900 if ((y = -1) or (key$ = chr$(30))) then
7910 select case No
7920 'No=-1:okのとき:初期の状態
7930 '0kボタンから３に移動
7940 '上に行く 処理
7950 case -1:
7960 No=3:sp_on 12,1:sp_on 14,0
7970 pause 200:goto Input_Born_Month2:
7980 '選択肢:3
7990 '3ボタンから 6に移動
8000 case 3:
8010 No=6:sp_on 12,0:sp_on 11,1
8020 pause 200:goto Input_Born_Month2:
8030 '6ボタンから ９に移動
8040 case 6:
8050 No=9:sp_on 10,1:sp_on 11,0
8060 pause 200:goto Input_Born_Month2:
8070 '6ボタンから ９に移動　ここまで
8080 '9で上を押して何もしない
8090 case 9:
8100 '何もしない
8110 No=9
8120 pause 200:goto Input_Born_Month2:
8130 '9で上を押しても何もしない　ここまで
8140 '上　 0ボタンから2ボタン
8150 'sp_on 6,1:1
8160 'sp_on 8,1:5
8170 'sp_on 7,1:7
8180 case 0:
8190 No=2:sp_on 13,0:sp_on 9,1:
8200 pause 200:goto Input_Born_Month2:
8210 '上  0ボタンから2ボタン　ここまで
8220 '2から５になる 上
8230 case 2:
8240 No=5:sp_on 8,1:sp_on 9,0:
8250 pause 200:goto Input_Born_Month2:
8260 case 5:
8270 No=8:sp_on 7,1:sp_on 8,0
8280 pause 200:goto Input_Born_Month2:
8290 case 8:
8300 pause 200:goto Input_Born_Month2:
8310 case 1:
8320 No=4:sp_on 5,1:sp_on 6,0
8330 pause 200:goto Input_Born_Month2:
8340 case 4:
8350 No=7:sp_on 4,1:sp_on 5,0
8360 pause 200:goto Input_Born_Month2:
8370 case 7:
8380 pause 200:goto Input_Born_Month2:
8390 end select
8400 endif
8410 '左３　ここまで
8420 '下の矢印
8430 '中央 2
8440 if ((y=1) or (key$ = chr$(31))) then
8450 select case No
8460 '9から６に下げる
8470 case 9:
8480 No=6:sp_on 11,1:sp_on 10,0
8490 pause 200:goto Input_Born_Month2:
8500 '6から３に下げる
8510 case 6:
8520 No=3:sp_on 12,1:sp_on 11,0
8530 pause 200:goto Input_Born_Month2:
8540 '3から０ｋに変える
8550 case 3:
8560 No=-1:sp_on 14,1:sp_on 12,0
8570 pause 200:goto Input_Born_Month2:
8580 'Okから下のボタンを押しても何もしない
8590 case -1:
8600 pause 200:goto Input_Born_Month2:
8610 case 8:
8620 No=5:sp_on 8,1:sp_on 7,0
8630 pause 200:goto Input_Born_Month2:
8640 case 5:
8650 No=2:sp_on 9,1:sp_on 8,0
8660 pause 200:goto Input_Born_Month2:
8670 case 2:
8680 No=0:sp_on 13,1:sp_on 9,0
8690 pause 200:goto Input_Born_Month2:
8700 case 0:
8710 pause 200:goto Input_Born_Month2:
8720 case 7:
8730 No=4:sp_on 5,1:sp_on 4,0
8740 pause 200:goto Input_Born_Month2:
8750 case 4:
8760 No=1:sp_on 6,1:sp_on 5,0
8770 pause 200:goto Input_Born_Month2:
8780 case 1:
8790 pause 200:goto Input_Born_Month2:
8800 end select
8810 endif
8820 '左へボタン 十字キー　左　or 　カーソル左
8830 if ((y2 = -1) or (key$ = chr$(29))) then
8840 select case No
8850 'Ok ボタン  Okから　左　０に行く
8860 case -1:
8870 No=0:sp_on 13,1:sp_on 14,0
8880 pause 200:goto Input_Born_Month2:
8890 '0 ボタン  左　何もしない
8900 case 0:
8910 pause 200:goto Input_Born_Month2:
8920 case 3:
8930 No=2:sp_on 9,1:sp_on 12,0:
8940 pause 200:goto Input_Born_Month2:
8950 case 2:
8960 No=1:sp_on 6,1:sp_on 9,0:
8970 pause 200:goto Input_Born_Month2:
8980 case 1:
8990 pause 200:goto Input_Born_Month2:
9000 case 6:
9010 No=5:sp_on 8,1:sp_on 11,0
9020 pause 200:goto Input_Born_Month2:
9030 case 5:
9040 No=4:sp_on 5,1:sp_on 8,0
9050 pause 200:goto Input_Born_Month2:
9060 case 4:
9070 pause 200:goto Input_Born_Month2:
9080 case 9:
9090 No=8:sp_on 7,1:sp_on 10,0
9100 pause 200:goto Input_Born_Month2:
9110 case 8:
9120 No=7:sp_on 4,1:sp_on 7,0
9130 pause 200:goto Input_Born_Month2:
9140 case 7:
9150 pause 200:goto Input_Born_Month2:
9160 end select
9170 endif
9180 '右  十字キー　右　or カーソル　右
9190 if ((y2 = 1) or (key$ = chr$(28))) then
9200 select case No
9210 '0ボタンからokボタン右に移動
9220 case 0:
9230 No=-1:sp_on 14,1:sp_on 13,0
9240 pause 200:goto Input_Born_Month2:
9250 '0ボタンからokボタン 右に移動　ここまで
9260 'OKボタンで右を押して何もしない
9270 case -1:
9280 pause 200:goto Input_Born_Month2:
9290 case 1:
9300 No=2:sp_on 9,1:sp_on 6,0
9310 pause 200:goto Input_Born_Month2:
9320 case 2:
9330 No=3:sp_on 12,1:sp_on 9,0
9340 pause 200:goto Input_Born_Month2:
9350 case 3:
9360 pause 200:goto Input_Born_Month2:
9370 case 4:
9380 No=5:sp_on 8,1:sp_on 5,0
9390 pause 200:goto Input_Born_Month2:
9400 case 5:
9410 No=6:sp_on 11,1:sp_on 8,0
9420 pause 200:goto Input_Born_Month2:
9430 case 7:
9440 No=8:sp_on 7,1:sp_on 4,0
9450 pause 200:goto Input_Born_Month2:
9460 case 8:
9470 No=9:sp_on 10,1:sp_on 7,0
9480 pause 200:goto Input_Born_Month2:
9490 case 9:
9500 pause 200:goto Input_Born_Month2:
9510 case 6:
9520 pause 200:goto Input_Born_Month2:
9530 end select
9540 'Okから右ボタンを押して何もしない ここまで
9550 endif
9560 '十字キー　ここまで
9570 '右の丸ボタン　決定キー
9580 if ((bg=2) or (key$=chr$(13))) then
9590 select case count
9600 case 0:
9610 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
9620 if (buf_month = 1 or buf_month = 2) then
9630 locate 2,3
9640 color RGB(255,255,255)
9650 print "生まれた月(1月~12月):";buf_Month2$
9660 else
9670 locate 2,3
9680 color Rgb(255,255,255)
9690 print "生まれた月(1月~12月):";buf_Month$
9700 endif
9710 goto Input_Born_Month2:
9720 case 1:
9730 count = 2:c = No
9740 c = val(buf_Month$)
9750 if (No = -1) then
9760 'if No=1 or No=2 then
9770 'endif
9780 month = buf_month
9790 buf_month=val(buf_Month$)
9800 month=buf_month
9810 '生まれた日に飛ぶ
9820 goto Input_Born_Day:
9830 else
9840 buf_month = c*10 + No
9850 buf_Month$= str$(buf_month)
9860 locate 2,3
9870 color Rgb(255,255,255)
9880 print "生まれた月(1月~12月):";buf_Month$
9890 goto Input_Born_Month2:
9900 endif
9910 case 2:
9920 count=3:count2=1
9930 'c= val(buf_Month$)
9940 'buf_month = c*10 + No
9950 'buf_Month$ = str$(buf_month)
9960 'locate 2,3
9970 'print "生まれた月(1月～12月):";buf_Month$
9980 'goto Input_Born_Month2:
9990 'case 3:
10000 'count=4
10010 'b=val(buf_month$)
10020 'buf_month=c*10+No
10030 'buf_Month$=str$(buf_month)
10040 'locate 2,3
10050 'print "生まれた月(1月～12月):";buf_Month$
10060 'buf_month=val(buf_Month$)
10070 'year=val(buf_year$)
10080 if (No=-1) then
10090 goto Input_Born_Day:
10100 else
10110 'goto Input_Born_Month2:
10120 endif
10130 'case 4:
10140 'bufyear=buf_year
10150 'if (No=-1) then
10160 'buf_month = val(buf_Month$)
10170 'month = buf_month
10180 'sp_on 14,0
10190 'goto Input_Born_Day:
10200 'else
10210 'goto Input_Born_Month2:
10220 'endif
10230 end select
10240 endif
10250 '左の丸ボタン　キャンセル
10260 if (bg2=2) then
10270 select case count2
10280 case 0:
10290 if (No = -1) then
10300 buf_month=0:buf_Month$="**"
10310 count2=0:count=0
10320 locate 0,3:print "                                              "
10330 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
10340 'if (buf_month > 1) then
10350 sp_on 14,0:goto Input_Born_Month2:
10360 'goto rewrite:
10370 else
10380 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
10390 buf_month=0:buf_Month$="**"
10400 locate 2,3
10410 color rgb(255,255,255)
10420 print "                                       "
10430 goto rewrite:
10440 if (No>2) then
10450 ui_msg"値が範囲外です。"
10460 goto rewrite:
10470 endif
10480 endif
10490 'endif
10500 rewrite:
10510 locate 2,3
10520 color rgb(255,255,255)
10530 print "                                      "
10540 locate 2,3
10550 print "生まれた月(1月~12月):";buf_Month$
10560 goto Input_Born_Month2:
10570 endif
10580 case 1:
10590 buf_Month$="**":buf_month=0
10600 if No=-1 then
10610 count2=2:count=0
10620 locate 0,3
10630 print "                                      "
10640 locate 2,3:
10650 print "生まれた月(1月~12月):"+buf_Month$
10660 goto Input_Born_Month2:
10670 endif
10680 case 2:
10690 sp_on 14,0:goto Input_Seireki:
10700 end select
10710 endif
10720 'endif
10730 end
10740 'end
10750 '生れた日を入力
10760 Input_Born_Day:
10770 '生まれた日入力
10780 cls 3:play ""
10790 'No=-1:Okのとき
10800 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
10810 for i=0 to 1
10820 buf_day(i)=0
10830 next i
10840 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
10850 gload Gazo$ + "Screen2.png",0,0,0
10860 gload Gazo$ + "downscreen.png",0,0,800
10870 'Init"kb:2"
10880 '音声ファイル再生 2023.06.07
10890 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
10900 font 48
10910 locate 0,1
10920 '文字色：黒　 color rgb(0,0,0)
10930 color rgb(255,255,255)
10940 print "生まれた日を入れて下さい" + chr$(13)
10950 color rgb(255,255,255)
10960 locate 2,3
10970 print "生まれた日(1日~31日):";buf_Day$
10980 'color rgb(255,255,255)
10990 'locate 4,6:print ":7"
11000 'locate 9,6:print ":8"
11010 'locate 12,6:print ":9"
11020 'locate 4,6
11030 'print ":7  :8  :9" + chr$(13)
11040 '=======================
11050 'テンキー　色　白　決定ボタン　青
11060 '=======================
11070 'color rgb(255,255,255)
11080 'locate 4,8
11090 'print ":4  :5  :6" + chr$(13)
11100 'color rgb(255,255,255)
11110 'locate 4,10
11120 'print ":1  :2  :3" + chr$(13)
11130 'locate 4,12
11140 'print "    :0"
11150 'locate 12,12
11160 'color rgb(255,0,0)
11170 'print ":Ok"
11180 sp_on 4,0: sp_on 5,0:sp_on 6,0
11190 sp_on 7,0:sp_on 8,0:sp_on 9,0
11200 sp_on 10,0:sp_on 11,0:sp_on 12,0
11210 sp_on 13,0:sp_on 14,1
11220 Input_Born_Day2:
11230 key$="":bg=0:y=0:y2=0:bg2=0
11240 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
11250 key$ = inkey$
11260 bg = strig(1)
11270 y = stick(1)
11280 y2 = stick(0)
11290 bg2 = strig(0)
11300 pause 5
11310 wend
11320 '十字キー　ここから
11330 '上の矢印　または、十字キー上
11340 if ((y = -1) or (key$ = chr$(30))) then
11350 select case No
11360 'No=-1:okのとき:初期の状態
11370 '0kボタンから３に移動
11380 '上に行く 処理
11390 case -1:
11400 No=3:sp_on 12,1:sp_on 14,0
11410 pause 200:goto Input_Born_Day2:
11420 '選択肢:3
11430 '3ボタンから 6に移動
11440 case 3:
11450 No=6:sp_on 12,0:sp_on 11,1
11460 pause 200:goto Input_Born_Day2:
11470 '6ボタンから ９に移動
11480 case 6:
11490 No=9:sp_on 10,1:sp_on 11,0
11500 pause 200:goto Input_Born_Day2:
11510 '6ボタンから ９に移動　ここまで
11520 '9で上を押して何もしない
11530 case 9:
11540 '何もしない
11550 No=9
11560 pause 200:goto Input_Born_Day2:
11570 '9で上を押しても何もしない　ここまで
11580 '上　 0ボタンから2ボタン
11590 'sp_on 6,1:1
11600 'sp_on 8,1:5
11610 'sp_on 7,1:7
11620 case 0:
11630 No=2:sp_on 13,0:sp_on 9,1:
11640 pause 200:goto Input_Born_Day2:
11650 '上  0ボタンから2ボタン　ここまで
11660 '2から５になる 上
11670 case 2:
11680 No=5:sp_on 8,1:sp_on 9,0:
11690 pause 200:goto Input_Born_Day2:
11700 case 5:
11710 No=8:sp_on 7,1:sp_on 8,0
11720 pause 200:goto Input_Born_Day2:
11730 case 8:
11740 pause 200:goto Input_Born_Day2:
11750 case 1:
11760 No=4:sp_on 5,1:sp_on 6,0
11770 pause 200:goto Input_Born_Day2:
11780 case 4:
11790 No=7:sp_on 4,1:sp_on 5,0
11800 pause 200:goto Input_Born_Day2:
11810 case 7:
11820 pause 200:goto Input_Born_Day2:
11830 end select
11840 endif
11850 '左３　ここまで
11860 '下の矢印
11870 '中央 2
11880 if ((y=1) or (key$ = chr$(31))) then
11890 select case No
11900 '9から６に下げる
11910 case 9:
11920 No=6:sp_on 11,1:sp_on 10,0
11930 pause 200:goto Input_Born_Day2:
11940 '6から３に下げる
11950 case 6:
11960 No=3:sp_on 12,1:sp_on 11,0
11970 pause 200:goto Input_Born_Day2:
11980 '3から０ｋに変える
11990 case 3:
12000 No=-1:sp_on 14,1:sp_on 12,0
12010 pause 200:goto Input_Born_Day2:
12020 'Okから下のボタンを押しても何もしない
12030 case -1:
12040 pause 200:goto Input_Born_Day2:
12050 case 8:
12060 No=5:sp_on 8,1:sp_on 7,0
12070 pause 200:goto Input_Born_Day2:
12080 case 5:
12090 No=2:sp_on 9,1:sp_on 8,0
12100 pause 200:goto Input_Born_Day2:
12110 case 2:
12120 No=0:sp_on 13,1:sp_on 9,0
12130 pause 200:goto Input_Born_Day2:
12140 case 0:
12150 pause 200:goto Input_Born_Day2:
12160 case 7:
12170 No=4:sp_on 5,1:sp_on 4,0
12180 pause 200:goto Input_Born_Day2:
12190 case 4:
12200 No=1:sp_on 6,1:sp_on 5,0
12210 pause 200:goto Input_Born_Day2:
12220 case 1:
12230 pause 200:goto Input_Born_Day2:
12240 end select
12250 endif
12260 '左へボタン 十字キー　左　or 　カーソル左
12270 if ((y2 = -1) or (key$ = chr$(29))) then
12280 select case No
12290 'Ok ボタン  Okから　左　０に行く
12300 case -1:
12310 No=0:sp_on 13,1:sp_on 14,0
12320 pause 200:goto Input_Born_Day2:
12330 '0 ボタン  左　何もしない
12340 case 0:
12350 pause 200:goto Input_Born_Day2:
12360 case 3:
12370 No=2:sp_on 9,1:sp_on 12,0:
12380 pause 200:goto Input_Born_Day2:
12390 case 2:
12400 No=1:sp_on 6,1:sp_on 9,0:
12410 pause 200:goto Input_Born_Day2:
12420 case 1:
12430 pause 200:goto Input_Born_Day2:
12440 case 6:
12450 No=5:sp_on 8,1:sp_on 11,0
12460 pause 200:goto Input_Born_Day2:
12470 case 5:
12480 No=4:sp_on 5,1:sp_on 8,0
12490 pause 200:goto Input_Born_Day2:
12500 case 4:
12510 pause 200:goto Input_Born_Day2:
12520 case 9:
12530 No=8:sp_on 7,1:sp_on 10,0
12540 pause 200:goto Input_Born_Day2:
12550 case 8:
12560 No=7:sp_on 4,1:sp_on 7,0
12570 pause 200:goto Input_Born_Day2:
12580 case 7:
12590 pause 200:goto Input_Born_Day2:
12600 end select
12610 endif
12620 '右  十字キー　右　or カーソル　右
12630 if ((y2 = 1) or (key$ = chr$(28))) then
12640 select case No
12650 '0ボタンからokボタン右に移動
12660 case 0:
12670 No=-1:sp_on 14,1:sp_on 13,0
12680 pause 200:goto Input_Born_Day2:
12690 '0ボタンからokボタン 右に移動　ここまで
12700 'OKボタンで右を押して何もしない
12710 case -1:
12720 pause 200:goto Input_Born_Day2:
12730 case 1:
12740 No=2:sp_on 9,1:sp_on 6,0
12750 pause 200:goto Input_Born_Day2:
12760 case 2:
12770 No=3:sp_on 12,1:sp_on 9,0
12780 pause 200:goto Input_Born_Day2:
12790 case 3:
12800 pause 200:goto Input_Born_Day2:
12810 case 4:
12820 No=5:sp_on 8,1:sp_on 5,0
12830 pause 200:goto Input_Born_Day2:
12840 case 5:
12850 No=6:sp_on 11,1:sp_on 8,0
12860 pause 200:goto Input_Born_Day2:
12870 case 7:
12880 No=8:sp_on 7,1:sp_on 4,0
12890 pause 200:goto Input_Born_Day2:
12900 case 8:
12910 No=9:sp_on 10,1:sp_on 7,0
12920 pause 200:goto Input_Born_Day2:
12930 case 9:
12940 pause 200:goto Input_Born_Day2:
12950 case 6:
12960 pause 200:goto Input_Born_Day2:
12970 end select
12980 'Okから右ボタンを押して何もしない ここまで
12990 endif
13000 '十字キー　ここまで
13010 '右の丸ボタンを押したとき
13020 if ((bg = 2) or (key$ = chr$(13))) then
13030 'count :決定ボタンを押した回数
13040 select case (count mod 3)
13050 '1桁目入力
13060 case 0:
13070 count = 1:
13080 if (No = -1) then
13090 '1桁目　OKでは何もしない
13100 'goto check:
13110 else
13120 'ok以外のボタンを押したとき
13130 buf_day = No:buf_Day$ = str$(No)
13140 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
13150 locate 2,3
13160 color RGB(255,255,255)
13170 print "生まれた日(1日~31日):";buf_Day2$
13180 endif
13190 check:
13200 if (No >= 1 and No <= 9) then
13210 sp_on 14,0
13220 goto Input_Born_Day2:
13230 else
13240 sp_on 14,0
13250 goto complate:
13260 endif
13270 case 1:
13280 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
13290 count = 2:
13300 'locate 2,3
13310 'color RGB(255,255,255)
13320 'print "生まれた日(1日~31日):";buf_Day$
13330 'Okボタンを押したときの処理
13340 '入力値　10未満のとき
13350 'c = buf_day
13360 if (No = -1) then
13370 'c=buf_day
13380 ' buf_day = c
13390 'buf_Day$ = str$(buf_day)
13400 '10以下のとき
13410 if (buf_day < 10) then
13420 sp_on 14,0
13430 goto complate:
13440 endif
13450 else
13460 'c = No
13470 buf_day = c * 10 + No
13480 'buf_day = c
13490 buf_Day$ =str$(buf_day)
13500 locate 2,3
13510 color Rgb(255,255,255)
13520 print "生まれた日(1日~31日):";buf_Day$
13530 goto Input_Born_Day2:
13540 endif
13550 '生まれた日　2桁目の数字　or 1桁の数字 + ok
13560 case 2:
13570 count=0
13580 'c=val(buf_Day$)
13590 'buf_day=c*10+No
13600 'buf_Day$=str$(buf_day)
13610 'day=buf_day
13620 'locate 2,3
13630 'print "生まれた日(1日〜31日):";buf_Day$
13640 'No=-1:ok ボタンを押したとき
13650 if (No = -1) then
13660 if ((buf_day > 0) and (buf_day < 32)) then
13670 sp_on 14,0
13680 goto complate:
13690 else
13700 goto Input_Born_Day2:
13710 endif
13720 'Okボタン以外を押したとき
13730 else
13740 c=val(buf_Day$)
13750 buf_day = c * 10 + No
13760 buf_Day$ = str$(buf_day)
13770 locate 2,3
13780 print "生まれた日(1日~31日):";buf_Day$
13790 'goto Input_Born_Day2:
13800 endif
13810 case 3:
13820 count = 4
13830 c=val(buf_day$)
13840 buf_day = c * 10 + No
13850 buf_day$ = str$(buf_day)
13860 locate 2,3
13870 print "生まれた日を入れてください:";buf_Day$
13880 year = val(buf_year$)
13890 if (No = -1) then
13900 'goto Input_Born_Day:
13910 sp_on 14,0:No=0
13920 goto complate:
13930 else
13940 goto Input_Born_Month2:
13950 endif
13960 'case 4:
13970 'bufyear=buf_year
13980 'if (No=-1) then
13990 'buf_day = val(buf_day$)
14000 'bufday = buf_day
14010 'sp_on 14,0
14020 'goto complate:
14030 'else
14040 'goto Input_Born_Day2:
14050 'endif
14060 end select
14070 endif
14080 if (bg2=2) then
14090 select case count2
14100 case 0:
14110 if (No=-1) then
14120 'buf_day=0:buf_Day$="**"
14130 if (buf_day>=1 and buf_day<=31) then
14140 count=0:No=0
14150 buf_day=0:buf_Day$="**"
14160 'goto rewrite_day:
14170 else
14180 buf_day=0:buf_Day$="**"
14190 ui_msg"値が範囲外です"
14200 endif
14210 goto rewrite_day:
14220 else
14230 goto rewrite_day:
14240 endif
14250 rewrite_day:
14260 locate 2,3
14270 color rgb(255,255,255)
14280 print "                                      "
14290 locate 2,3
14300 print "生まれた日(1日~31日):";buf_Day$
14310 goto Input_Born_Day2:
14320 end select
14330 endif
14340 '--------------------------Input_Born_Day:-------------------------------------------
14350 complate:
14360 suhiNo = buf_year + buf_month + buf_day
14370 'if (suhiNo < 1000) then
14380 a1 = fix(suhiNo / 1000)
14390 a2 = fix(suhiNo/100) - (a1 * 10)
14400 a3 = fix(suhiNo/10)-(a1*100+a2*10)
14410 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
14420 'endif
14430 bufsuhiNo = a1+a2+a3+a4
14440 recomp:
14450 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
14460 'bufsuhiNo=a6
14470 goto Kabara_Result_Screen:
14480 else
14490 a5 = fix(bufsuhiNo / 10)
14500 a6 = bufsuhiNo - a5 * 10
14510 bufsuhiNo = a6 + a5
14520 if (bufsuhiNo = 10) then
14530 bufsuhiNo=1
14540 endif
14550 goto Kabara_Result_Screen:
14560 endif
14570 Kabara_Result_Screen:
14580 cls 3:
14590 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
14600 gload Gazo$ + "downscreen.png",0,0,800
14610 init "kb:4"
14620 '
14630 play ""
14640 select case (bufsuhiNo)
14650 case 1:
14660 play Voice$ + "Result_Kabara_1_20230607.mp3"
14670 case 2:
14680 play Voice$ + "Result_Kabara_2_20231112.mp3"
14690 case 3:
14700 play Voice$ + "Result_Kabara_3_20230607.mp3"
14710 case 4:
14720 play Voice$ + "Result_Kabara_4_20230607.mp3"
14730 case 5:
14740 play Voice$ + "Result_Kabara_5_20231112.mp3"
14750 case 6:
14760 play Voice$ + "Result_Kabara_6_20230607.mp3"
14770 case 7:
14780 play Voice$ + "Result_Kabara_7_20230607.mp3"
14790 case 8:
14800 play Voice$ + "Result_Kabara_8_20230607.mp3"
14810 case 9:
14820 play Voice$ + "Result_Kabara_9_20230607.mp3"
14830 case 11:
14840 play Voice$ + "Result_Kabara_11_20230607.mp3"
14850 case 22:
14860 play Voice$ + "Result_Kabara_22_20230607.mp3"
14870 case 33:
14880 play Voice$ + "Result_Kabara_33_20230607.mp3"
14890 end select
14900 font 48
14910 key$ = "":bg = 0:bg2=0
14920 'COLOR rgb(255,255,255)
14930 'print "●診断結果"+chr$(13)
14940 locate 0,2
14950 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
14960 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
14970 locate 0,15:
14980 color rgb(255,255,255)
14990 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
15000 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
15010 key$ = inkey$
15020 bg = strig(1)
15030 bg2 = strig(0)
15040 pause 200
15050 wend
15060 'Enter or JoyPad right
15070 if ((key$ = chr$(13)) or (bg = 2)) then
15080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
15090 endif
15100 if ((bg2=2)) then
15110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
15120 endif
15130 'suhiNo1 = fix(bufsuhiNo / 10)
15140 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
15150 'bufsuhiNo = suhiNo1 + suhiNo2
15160 'goto recomp:
15170 'endif
15180 'print chr$(13)
15190 'color rgb(255,0,0)
15200 'print"トップ:エンターキー,S or s:保存"+chr$(13)
15210 'key$ = input$(1)
15220 'if key$ = chr$(13) then goto Main_Screen:
15230 '"Menu2 占いのルール"
15240 Suhi_Rule:
15250 '数秘術占いルールの表示
15260 cls 3:play "":init"kb:4"
15270 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
15280 gload Gazo$ + "downscreen.png",0,0,800
15290 'cls 3:
15300 'line (0,0) - (1500,60),rgb(0,0,255),bf
15310 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
15320 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
15330 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
15340 locate 0,2:Font 48
15350 print chr$(13) + chr$(13)
15360 color rgb(0,0,0)
15370 print "誕生日を単数変換します";chr$(13)
15380 print "数字の範囲:1~９,11,22,33";chr$(13)
15390 print "例:1973年11月22日の場合";chr$(13)
15400 print "1+9+7+3+11+22=53 ";chr$(13)
15410 print "→ 5 + 3 = 8" + chr$(13)
15420 print "故に8が数秘ナンバーになります";chr$(13)
15430 locate 0,15
15440 color rgb(255,255,255)
15450 print "ジョイパッドの右を押してください"
15460 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15470 '"key$ = input$(1)"
15480 '"if key$ = chr$(13) then goto Main_Screen:"
15490 suhi_rule_selection:
15500 bg = 0:key$ = "":bg2=0
15510 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
15520 bg = strig(1)
15530 key$ = inkey$
15540 bg2=strig(0)
15550 pause 200
15560 wend
15570 if ((bg = 2) or (key$ = chr$(13))) then
15580 pause 200:cls 4:goto Main_Screen:
15590 endif
15600 if (bg2=2) then
15610 play "":pause 200
15620 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
15630 goto suhi_rule_selection:
15640 endif
15650 '2.設定
15660 '2-1.トップ画面に戻る
15670 Setting:
15680 cls 3:init"kb:4":font 48:No=0
15690 play ""
15700 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
15710 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
15720 gload Gazo$ + "downscreen.png",0,0,800
15730 print chr$(13) + chr$(13) + chr$(13)
15740 color rgb(255,255,255):sp_on 0,1:
15750 print "番号を選んでください" + chr$(13)
15760 print " :1.トップ画面に戻る"+ chr$(13)
15770 print " :2.バーズアイグリッドデータリスト" + chr$(13)
15780 print " :3.未実装" + chr$(13)
15790 print " :4.未実装" + chr$(13)
15800 color rgb(0,0,0)
15810 locate 1,15:print "1.トップ画面に戻るを選択"
15820 Setting_Selection:
15830 y=0:key$="":bg=0:bg2=0
15840 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
15850 y=stick(1)
15860 key$ = inkey$
15870 bg=strig(1)
15880 bg2 = strig(0)
15890 pause 2
15900 wend
15910 if ((bg = 2) or (key$ = chr$(13))) then
15920 select case No
15930 case 0:
15940 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 3:goto Main_Screen:
15950 case 1:
15960 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto BirdsEyeGrid_Entry:
15970 end select
15980 endif
15990 if (bg2 = 2) then
16000 play "":pause 200
16010 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
16020 goto Setting_Selection:
16030 endif
16040 if (y=1) then
16050 select case No
16060 case 0:
16070       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:goto Setting_Selection:
16080 case else:
16090       No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:pause 200:goto Setting_Selection:
16100 end select
16110 'ase else:
16120 endif
16130 '3.Help
16140 '3-1.ルールの表示
16150 '3-2.バージョン
16160 '3-3.トップに戻る
16170 Help:
16180 cls 3:Font 48:No=0
16190 play ""
16200 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
16210 gload Gazo$ + "downscreen.png",0,0,800
16220 color rgb(255,255,255)
16230 print chr$(13)+chr$(13)+chr$(13)
16240 print "番号を選んでください"+chr$(13)
16250 print " :1.ルールの表示" + chr$(13)
16260 print " :2.バージョンの表示" + chr$(13)
16270 print " :3.参考文献" + chr$(13)
16280 print " :4.トップ画面に戻る" + chr$(13)
16290 color rgb(0,0,0)
16300 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
16310 locate 1,15
16320 print "                                      "
16330 locate 1,15
16340 print "1.ルールの表示を選択"
16350 init"kb:4"
16360 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16370 Help_Select:
16380 bg=0:key$="":y=0:bg2=0
16390 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
16400 y = stick(1)
16410 key$ = inkey$
16420 bg = strig(1)
16430 bg2 = strig(0)
16440 pause 200
16450 wend
16460 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
16470 if ((y = 1) or (key$ = chr$(31))) then
16480 select case No
16490 case 0:
16500 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
16510 case 1:
16520 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
16530 case 2:
16540 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
16550 case 3:
16560 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16570 end select
16580 endif
16590 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
16600 if ((y = -1) or (key$ = chr$(30))) then
16610 select case No
16620 case 0:
16630 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
16640 case 1:
16650 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
16660 case 2:
16670 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
16680 case 3:
16690 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
16700 end select
16710 endif
16720 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
16730 if ((bg = 2) or (key$ = chr$(13))) then
16740 select case No
16750 case 0:
16760 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
16770 case 1:
16780 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
16790 case 2:
16800 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
16810 '3:Top画面に行く
16820 case 3:
16830 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
16840 end select
16850 endif
16860 if (bg2 = 2) then
16870 play "":pause 200
16880 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
16890 goto Help_Select:
16900 endif
16910 '数秘術占い　トップ画面
16920 Kabara_TopScreen:
16930 cls 3:play ""
16940 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
16950 gload Gazo$ + "downscreen.png",0,0,800
16960 play Voice$ + "KabaraTop_Selection_20230721.mp3"
16970 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
16980 init"kb:4":No=0
16990 color rgb(255,255,255)
17000 print chr$(13)+chr$(13)+chr$(13)
17010 print "番号を選んでください" + chr$(13)
17020 print " :1.数秘術占い" + chr$(13)
17030 print " :2.バーズアイグリット" + chr$(13)
17040 print " :3.相性占い" + chr$(13)
17050 print " :4.トップ画面に戻る" + chr$(13)
17060 color rgb(0,0,0)
17070 locate 1,15:print "1.数秘術占いを選択"
17080 Kabara_TopScreen2:
17090 y = 0:bg = 0:key$ = "":bg2 = 0
17100 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
17110 key$ = inkey$
17120 bg = strig(1)
17130 y = stick(1)
17140 bg2 = strig(0)
17150 pause 5
17160 wend
17170 '選択ボタン
17180 'カーソル　と　ジョイパッド　の下
17190 if ((y = 1) or (key$ = chr$(31))) then
17200 select case No
17210 case 2:
17220 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17230 case 3:
17240 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17250 case 0:
17260 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17270 case 1:
17280 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17290 end select
17300 endif
17310 'カーソル　上
17320 if ((y=-1) or (key$=chr$(30))) then
17330 select case No
17340 case 0:
17350 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
17360 case 1:
17370 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
17380 case 2:
17390 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
17400 case 3:
17410 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
17420 end select
17430 endif
17440 '決定ボタン
17450 'ジョイパッドの右　or  Enter key
17460 if ((bg = 2) or (key$ = chr$(13))) then
17470 select case No
17480 case 0:
17490 '1.数秘術占い
17500 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
17510 case 3:
17520 '4.メイン画面にいく
17530 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
17540 case 1:
17550 '2.バースアイグリッド
17560 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
17570 case 2:
17580 '3.相性占い
17590 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_Aishou_Top:
17600 end select
17610 endif
17620 if (bg2 = 2) then
17630 play "":pause 200
17640 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
17650 goto Kabara_TopScreen2:
17660 endif
17670 '1.バースアイグリット　名入力
17680 Inputname1:
17690 cls 3:init"kb:4":font 48
17700 bg=0:key$="":y=0:No=-1:name1$="":i=1
17710 gload Gazo$ + "Selection.png",1,10,100
17720 'Line 1:☓
17730 'A:選択肢
17740 sp_def 15,(50,250),16,16
17750 'B:選択肢
17760 sp_def 16,(200,250),16,16
17770 'C:選択肢
17780 sp_def 17,(350,250),16,16
17790 'D:選択肢
17800 sp_def 18,(500,250),16,16
17810 'E:選択肢
17820 sp_def 19,(630,250),16,16
17830 'F:選択肢
17840 sp_def 20,(780,250),16,16
17850 'G:選択肢
17860 sp_def 21,(930,250),16,16
17870 'Line 2:☓
17880 'H:選択肢
17890 sp_def 22,(50,345),16,16
17900 'I:選択肢
17910 sp_def 23,(200,345),16,16
17920 'J:選択肢
17930 sp_def 24,(350,345),16,16
17940 'K:選択肢
17950 sp_def 25,(500,345),16,16
17960 'L:選択肢
17970 sp_def 26,(630,345),16,16
17980 'M:選択肢
17990 sp_def 27,(780,345),16,16
18000 'N:選択肢
18010 sp_def 28,(930,345),16,16
18020 'Line 3:☓
18030 'O:選択肢
18040 sp_def 29,(50,440),16,16
18050 'P:選択肢
18060 sp_def 30,(200,440),16,16
18070 'Q:選択肢
18080 sp_def 31,(350,440),16,16
18090 'R:選択肢
18100 sp_def 32,(500,440),16,16
18110 'S:選択肢
18120 sp_def 33,(630,440),16,16
18130 'T:選択肢
18140 sp_def 34,(780,440),16,16
18150 'U:選択肢
18160 sp_def 35,(930,440),16,16
18170 'Line 4:◯
18180 'V:選択肢
18190 sp_def 36,(50,535),16,16
18200 'W:選択肢
18210 sp_def 37,(200,535),16,16
18220 'X:選択肢
18230 sp_def 38,(350,535),16,16
18240 'Y:選択肢
18250 sp_def 39,(500,535),16,16
18260 'Z:選択肢
18270 sp_def 40,(630,535),16,16
18280 'Ok:選択肢
18290 sp_def 41,(780,535),16,16
18300 'sp_def 42,(930,535),16,16
18310 'Line 1
18320 'A
18330 sp_on 15,0
18340 'B
18350 sp_on 16,0
18360 'C
18370 sp_on 17,0
18380 'D
18390 sp_on 18,0
18400 'E
18410 sp_on 19,0
18420 'F
18430 sp_on 20,0
18440 'G
18450 sp_on 21,0
18460 'Line 1
18470 'Line 2
18480 'H
18490 sp_on 22,0
18500 'I
18510 sp_on 23,0
18520 'J
18530 sp_on 24,0
18540 'K
18550 sp_on 25,0
18560 'L
18570 sp_on 26,0
18580 'M
18590 sp_on 27,0
18600 'N
18610 sp_on 28,0
18620 'Line 2
18630 'Line 3
18640 'O
18650 sp_on 29,0
18660 'P
18670 sp_on 30,0
18680 'Q
18690 sp_on 31,0
18700 'R
18710 sp_on 32,0
18720 'S
18730 sp_on 33,0
18740 'T
18750 sp_on 34,0
18760 'U
18770 sp_on 35,0
18780 'Line 3
18790 'Line 4
18800 'V
18810 sp_on 36,0
18820 'W
18830 sp_on 37,0
18840 'X
18850 sp_on 38,0
18860 'Y
18870 sp_on 39,0
18880 'Z
18890 sp_on 40,0
18900 'Ok
18910 sp_on 41,1
18920 'Line 4
18930 'sp_on 42,1
18940 'Line 1
18950 'sp_put 15,(50,250),0,0
18960 'sp_put 16,(200,250),0,0
18970 'sp_put 17,(350,250),0,0
18980 'sp_put 18,(500,250),0,0
18990 'sp_put 19,(630,250),0,0
19000 'sp_put 20,(780,250),0,0
19010 'sp_put 21,(930,250),0,0
19020 'Line 2
19030 'sp_put 22,(50,345),0,0
19040 'sp_put 23,(200,345),0,0
19050 'sp_put 24,(350,345),0,0
19060 'sp_put 25,(500,345),0,0
19070 'sp_put 26,(630,345),0,0
19080 'sp_put 27,(780,345),0,0
19090 'sp_put 28,(930,345),0,0
19100 'Line 3
19110 'sp_put 29,(50,440),0,0
19120 'sp_put 30,(200,440),0,0
19130 'sp_put 31,(350,440),0,0
19140 'sp_put 32,(500,440),0,0
19150 'sp_put 33,(630,440),0,0
19160 'sp_put 34,(780,440),0,0
19170 'sp_put 35,(930,440),0,0
19180 'Line 4
19190 'sp_put 36,(50,535),0,0
19200 'sp_put 37,(200,535),0,0
19210 'sp_put 38,(350,535),0,0
19220 'sp_put 39,(500,535),0,0
19230 'sp_put 40,(630,535),0,0
19240 sp_put 41,(780,535),0,0
19250 'sp_put 42,(930,536),0,0
19260 gload Gazo$ + "Screen1.png",0,0,0
19270 color rgb(255,255,255)
19280 locate 1,3
19290 print "名前の姓をアルファベットで入力してください"
19300 locate 1,5
19310 print " A  B  C  D  E  F  G"
19320 locate 1,7
19330 print " H  I  J  K  L  M  N"
19340 locate 1,9
19350 print " O  P  Q  R  S  T  U"
19360 locate 1,11
19370 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
19380 locate 1,15:color rgb(0,0,0)
19390 print "名前の姓:" + name1$
19400 select_name1:
19410 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
19420 '有効ボタン
19430 '1.決定ボタン(bg:2)
19440 '2.Enter Key$:chr$(13)
19450 '3.カーソル上 (chr$(31))
19460 '4.カーソル　左 (chr$(29))
19470 '5.ジョイパッド　上 (y:1)
19480 '6:ジョイパッド　左 (y2:-1)
19490 '7:ジョイパッド　下 (y:-1)
19500 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
19510 key$ = inkey$
19520 'ジョイパッドの決定:bg
19530 bg = strig(1)
19540 y = stick(1)
19550 y2 = stick(0)
19560 pause 200
19570 wend
19580 '====================================
19590 'Birds Eye Grid 名前入力
19600 '入力スタイル　アルファベット入力
19610 'sp_on:　スプライトのオンオフ
19620 'sp_put :表示位置
19630 'No:ボタン番号
19640 '====================================
19650 'カーソルで下に行く
19660 if ((y=-1) or (key$=chr$(31))) then
19670 select case No
19680 '1.Ok ボタン
19690 'sp_on スプライトのオンオフ
19700 'sp_put スプライトを表示
19710 case -1:
19720 '1.アルファベット　入力ボタン
19730 '実装未完全なので終了
19740 'Ok → T ○ :No:20=T
19750 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
19760 'T  → M ○
19770 case 20:
19780 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
19790 'M  →　F ○
19800 case 13:
19810 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
19820 'F  → Ok
19830 case 6:
19840 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
19850 end select
19860 endif
19870 '2.決定ボタン
19880 if ((key$ = chr$(13)) OR  (bg = 2)) then
19890 select case No
19900 case -1:
19910 'スプライトをOFFにする
19920 sp_on 41,0
19930 end select
19940 endif
19950 '3.カーソル　左
19960 if (key$ = chr$(29) or (y2 =-1)) then
19970 select case No
19980 'Line 4
19990 'Line 4
20000 '1.
20010 'Z:-1 :Ok ボタン
20020 'Ok → Z
20030 case -1:
20040 'Ok →　Z
20050 'Ok ボタン OFF,Z Button ON
20060 'No=26:Z
20070 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
20080 '2.
20090 '26:Zボタン Z→ Y
20100 case 26:
20110 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
20120 '3.
20130 '25:Yボタン  Y → X
20140 case 25:
20150 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
20160 '4
20170 '24:Xボタン X → W
20180 case 24:
20190 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
20200 '23:Wボタン X → W
20210 '5
20220 case 23:
20230 '22:Vボタン W → V
20240 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
20250 case 22:
20260 '-1:V→ Ok
20270 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
20280 'Line 3
20290 case 20:
20300 '33:T34  → S:33 :◯
20310 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
20320 case 19:
20330 '32:S:33 → R:32 :◯
20340 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
20350 case 18:
20360 '31:R:32 → Q:31 :◯
20370 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
20380 '30:O → P :◯
20390 case 17:
20400 '30:Q:31 → P:30 :◯
20410 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
20420 case 16:
20430 '29:P:30 → O:29 :◯
20440 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
20450 case 15:
20460 '28:O:29 → U:21  :◯
20470 'O:OFF,U:ON
20480 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
20490 '27:U:21 → T:20  :◯
20500 case 21:
20510 'U:OFF:T:ON
20520 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
20530 'Line 2
20540 '26:M:13 → L:12 : ○
20550 case 13:
20560 'M:OFF,L:ON
20570 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
20580 '25:L:12 → K:11 : ○
20590 case 12:
20600 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
20610 '24:K:11 → J:10 : ○
20620 case 11:
20630 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
20640 '23:J:10 → I:9  : ○
20650 case 10:
20660 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
20670 '22:I:9 → H:8    :○
20680 case 9:
20690 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
20700 '21:H:8 → N:14:   :○
20710 case 8:
20720 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
20730 '20:N:14 → M:13:   :○
20740 case 14:
20750 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
20760 '●.Line 1:
20770 '19:F:20 → E:19 : ☓
20780 'F:OFF,E:ON
20790 case 6:
20800 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
20810 '18:E → D
20820 'E:OFF,D:ON
20830 case 5:
20840 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
20850 '17:D → C
20860 'D:OFF,C:ON
20870 case 4:
20880 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
20890 case 3:
20900 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
20910 case 2:
20920 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
20930 case 1:
20940 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
20950 case 7:
20960 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
20970 end select
20980 endif
20990 '上から下の方向
21000 if ((key$ = chr$(31)) or  (y = 1)) then
21010 select case No
21020 '●.1
21030 '1:A→H
21040 case 1:
21050 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
21060 '2:H→O
21070 case 8:
21080 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
21090 '3:O→V
21100 case 15:
21110 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
21120 '4:V→A
21130 case 22:
21140 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
21150 '●.2
21160 '5.B→I
21170 case 2:
21180 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
21190 '6.I→P
21200 case 9:
21210 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
21220 '7.P→W
21230 case 16:
21240 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
21250 '8.W→B
21260 case 23:
21270 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
21280 '●.3
21290 '9.C→J
21300 case 3:
21310 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
21320 '10.J→Q
21330 case 10:
21340 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
21350 '11.Q→X
21360 case 17:
21370 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
21380 '12.X→C
21390 case 24:
21400 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
21410 '●.4
21420 '13.D→K
21430 case 4:
21440 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
21450 '14.K→R
21460 case 11:
21470 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
21480 '15.R→Y
21490 case 18:
21500 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
21510 '16.Y→D
21520 case 25:
21530 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
21540 '●.5
21550 '17.E→L
21560 case 5:
21570 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
21580 '18.L→S
21590 case 12:
21600 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
21610 '19.S→Z
21620 case 19:
21630 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
21640 '20.Z→E
21650 case 26:
21660 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
21670 '●.6
21680 '21.F→M
21690 case 6:
21700 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
21710 '22.M→T
21720 case 13:
21730 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
21740 '23.T→Ok
21750 case 20:
21760 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
21770 '24.Ok→F
21780 case -1:
21790 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
21800 '●.7
21810 '25.G→N
21820 case 7:
21830 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
21840 '26.N→U
21850 case 14:
21860 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
21870 '27.U→G
21880 case 21:
21890 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
21900 end select
21910 endif
21920 '決定ボタン　で名前の姓に文字を追加。
21930 if (key$ = chr$(13) or bg = 2) then
21940 select case No
21950 'Okボタン
21960 case -1:
21970 goto Inputname2:
21980 'Aの文字
21990 case 1:
22000 'if len(n$)=0 then
22010 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
22020 'else
22030 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
22040 'endif
22050 goto select_name1:
22060 case 2:
22070 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
22080 end select
22090 endif
22100 Input_name1_Birdseye:
22110 cls 3:init "kb:2":play ""
22120 gload Gazo$ + "Input_Birtheye2.png",0,0,0
22130 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
22140 color rgb(255,255,255)
22150 locate 1,2:print "名前をアルファベットで入れてください"
22160 color rgb(0,0,0)
22170 locate 1,5:Input "名前（姓の部分）:",name1$
22180 '27.U→G
22190 'locate 1,5:print "Hit any key"
22200 n1 = len(name1$)
22210 if (n1 < 11) then
22220 for i=1 to n1
22230 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
22240 next i
22250 endif
22260 goto Inputname2:
22270 '2.グリッドアイ　姓の入力
22280 'end
22290 Inputname2:
22300 cls 3:init"kb:2":font 48:play ""
22310 gload Gazo$ + "Input_Birtheye1.png",0,0,0
22320 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
22330 color rgb(255,255,255)
22340 locate 1,2:print "名前をアルファベットで入れてください"
22350 color rgb(0,0,0)
22360 locate 1,5:Input "名前(名の部分):",name2$
22370 n2 = len(name2$)
22380 for i=1 to n2
22390 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
22400 next i
22410 '計算領域
22420 Complate:
22430 'name1
22440 for i=0 to 25
22450 for n=1 to len(name1$)
22460 if (buf_chart$(i,0) = buf_name1$(n-1)) then
22470 b = val(buf_chart$(i,1))
22480 buffer(b-1) = buffer(b-1) + 1
22490 endif
22500 next n
22510 next i
22520 'name2
22530 for i=0 to 25
22540 for n=1 to len(name2$)
22550 if (buf_chart$(i,0) = buf_name2$(n-1)) then
22560 c = val(buf_chart$(i,1))
22570 buffer(c - 1) = buffer(c - 1) + 1
22580 endif
22590 next n
22600 next i
22610 '結果表示領域
22620 Result_Birtheye1:
22630 cls 3:init"kb:4":No=0:play "":'音を止める
22640 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
22650 gload Gazo$ + "downscreen.png",0,0,800
22660 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
22670 color rgb(255,255,255)
22680 '1の表示
22690 locate 3,14:print buffer(0);
22700 '2の表示
22710 locate 3,9:print buffer(1);
22720 '3の表示
22730 locate 3,5:print buffer(2);
22740 '4の表示
22750 locate 10,14:print buffer(3);
22760 '5の表示
22770 locate 10,9:print buffer(4);
22780 '6の表示
22790 locate 10,5:print buffer(5);
22800 '7の表示
22810 locate 15,14:print buffer(6);
22820 '8の表示
22830 locate 15,9:print buffer(7);
22840 '9の表示
22850 locate 15,5:print buffer(8);
22860 'name を大文字に変換
22870 locate 5,3:print ucase$(name1$ + name2$)
22880 color rgb(0,0,0)
22890 'bg:右のボタン  ,bg2:左のボタン
22900 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
22910 bg=0:key$="":bg2=0
22920 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
22930 'Enterと決定ボタン
22940 key$ = inkey$
22950 '右ボタン:1
22960 bg = strig(1)
22970 '左の丸ボタン:0
22980 bg2=strig(0)
22990 pause 200
23000 wend
23010 if ((bg=2) or (key$=chr$(13))) then
23020 'データーをクリアしてトップ画面に行く
23030 'for i=0 to 8
23040 'buffer(i)=0
23050 'next i
23060 'for n=0 to 9
23070 'buf_name1$(n) = ""
23080 'buf_name2$(n) = ""
23090 'next n
23100 'Topに行く
23110 'goto Main_Screen:
23120 'メニューを開く
23130 'goto BirdsEye_Result2:
23140 'Menu(ui_select) リストに飛ぶ
23150 goto Result_Birtheye_List1:
23160 endif
23170 if (bg2=2) then
23180 'データーをクリアする
23190 for i=0 to 8
23200 buffer(i)=0
23210 next i
23220 for n=0 to 9
23230 buf_name1$(n)=""
23240 buf_name2$(n)=""
23250 next n
23260 goto Main_Screen:
23270 endif
23280 'goto Result_Birtheye1:
23290 'Result_Birtheye2:
23300 'cls 3:color rgb(255,255,255)
23310 'end
23320 'Memory 消去
23330 '
23340 '横のフォーカスライン
23350 BirdsEye_Result2:
23360 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
23370 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
23380 Forcus1_buffer$(2)="○"
23390 else
23400 Forcus1_buffer$(2)="☓"
23410 endif
23420 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
23430 Forcus1_buffer$(1)="○"
23440 else
23450 Forcus1_buffer$(1) = "☓"
23460 endif
23470 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
23480 Forcus1_buffer$(0)="○"
23490 else
23500 Forcus1_buffer$(0)="☓"
23510 endif
23520 gload Gazo$ + "Screen1.png",0,0,0
23530 color rgb(255,0,0):
23540 locate 1,1
23550 print "バーズアイグリッド(フォーカスライン1)"
23560 color rgb(255,255,255)
23570 locate 1,3:
23580 print "●.横のフォーカスライン"
23590 locate 1,5
23600 print "1.切れ者ライン:"+Forcus1_buffer$(2)
23610 locate 1,7
23620 print "2.調停者ライン:"+Forcus1_buffer$(1)
23630 locate 1,9
23640 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
23650 color rgb(0,0,0)
23660 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
23670 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
23680 key$ = inkey$
23690 bg = strig(1)
23700 bg2 = strig(0)
23710 pause 200
23720 wend
23730 if ((bg=2) or (key$=chr$(13))) then
23740 goto BirdsEye_Result3:
23750 endif
23760 if (bg2=2) then
23770 for i=0 to 8
23780 buffer(i)=0
23790 next i
23800 goto Main_Screen:
23810 endif
23820 BirdsEye_Result3:
23830 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
23840 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
23850 Forcus2_buffer$(2)="○"
23860 else
23870 Forcus2_buffer$(2)="☓"
23880 endif
23890 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
23900 Forcus2_buffer$(1)="○"
23910 else
23920 Forcus2_buffer$(1) = "☓"
23930 endif
23940 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
23950 Forcus2_buffer$(0)="○"
23960 else
23970 Forcus2_buffer$(0)="☓"
23980 endif
23990 gload Gazo$ + "Screen1.png",0,0,0
24000 color rgb(255,0,0):
24010 locate 1,1
24020 print "バーズアイグリッド(フォーカスライン2)"
24030 color rgb(255,255,255)
24040 locate 1,3
24050 print "●.縦のフォーカスライン"
24060 locate 1,5
24070 print "1.表現者ライン:" + Forcus2_buffer$(2)
24080 locate 1,7
24090 print "2.司令塔ライン:" + Forcus2_buffer$(1)
24100 locate 1,9
24110 print "3.指導者ライン:" + Forcus2_buffer$(0)
24120 color rgb(0,0,0)
24130 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
24140 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24150 key$ = inkey$
24160 bg = strig(1)
24170 bg2 = strig(0)
24180 pause 200
24190 wend
24200 if ((bg = 2) or (key$ = chr$(13))) then
24210 goto BirdsEye_Result4:
24220 endif
24230 if (bg2=2) then
24240 for i=0 to 8
24250 buffer(i)=0
24260 next i
24270 goto Main_Screen:
24280 endif
24290 BirdsEye_Result4:
24300 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
24310 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
24320 Forcus3_buffer$(1) = "○"
24330 else
24340 Forcus3_buffer$(1) = "☓"
24350 endif
24360 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
24370 Forcus3_buffer$(0) = "○"
24380 else
24390 Forcus3_buffer$(0) = "☓"
24400 endif
24410 gload Gazo$ + "Screen1.png",0,0,0
24420 color rgb(255,0,0):
24430 locate 1,1
24440 print "バーズアイグリッド(フォーカスライン3)"
24450 color rgb(255,255,255)
24460 locate 1,3:
24470 print "●.斜めのフォーカスライン"
24480 locate 1,5
24490 print "1.成功者ライン:"+Forcus3_buffer$(1)
24500 locate 1,7
24510 print "2.セレブライン:"+Forcus3_buffer$(0)
24520 color rgb(0,0,0)
24530 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
24540 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
24550 key$ = inkey$
24560 bg = strig(1)
24570 bg2 = strig(0)
24580 pause 200
24590 wend
24600 if ((bg=2) or (key$=chr$(13))) then
24610 goto Result_Birtheye1:
24620 endif
24630 if (bg2=2) then
24640 'データークリア
24650 for i=0 to 8
24660 buffer(i) = 0
24670 next i
24680 goto Main_Screen:
24690 endif
24700 References1:
24710 cls 3:key$ = "":bg = 0:play "":font 48-16
24720 gload Gazo$ + "Reference1_20230703.png",0,0,0
24730 print chr$(13)+chr$(13)+chr$(13)
24740 color rgb(0,0,0)
24750 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
24760 print "Author:carol Adrinne,PhD"+chr$(13)
24770 print "出版社:幻冬舎" + chr$(13)
24780 print "HP:www.carolAdrienne.jp/"+chr$(13)
24790 print "ISBN:978-4-344-01394-0"+chr$(13)
24800 print "定価:1500円 + 税"+chr$(13)
24810 color rgb(255,255,255)
24820 locate 1,23
24830 print "ジョイパッド右：次へ"
24840 while (key$ <> chr$(13) and bg <> 2)
24850 bg = strig(1)
24860 key$ = inkey$
24870 wend
24880 '
24890 if ((bg = 2) or (key$ = chr$(13))) then
24900 pause 200:goto References2:
24910 endif
24920 'ユダヤの秘儀 カバラ大占術
24930 References2:
24940 cls 3:play "":bg = 0:key$ = ""
24950 gload Gazo$ + "Reference2_20230703.png",0,0,0
24960 '参考文献２
24970 'カバラ大占術
24980 print chr$(13) + chr$(13) + chr$(13)
24990 color  rgb(0,0,0):font 48-16
25000 locate 1,3
25010 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
25020 print "著者：浅野　八郎" + chr$(13)
25030 print "出版社:NON BOOK" + chr$(13)
25040 print "ISBN:4-396-10364-6" + chr$(13)
25050 print "定価:829円 + 税"
25060 color rgb(255,255,255)
25070 locate 1,23
25080 print "ジョイパッド右：トップへ行く"
25090 while ((key$ <> chr$(13)) and (bg <> 2))
25100 bg = strig(1)
25110 key$ = inkey$
25120 wend
25130 if ((bg = 2) or (key$ = chr$(13))) then
25140 pause 200:goto Main_Screen:
25150 endif
25160 end
25170 '1.数秘術　トップ画面
25180 Kabara_First_Top:
25190 cls 3:color rgb(255,255,255):play ""
25200 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
25210 gload Gazo$ + "downscreen.png",0,0,800
25220 No=0:init"kb:4"
25230 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
25240 print chr$(13);chr$(13)
25250 color rgb(255,255,255)
25260 locate 3,4:No=0
25270 print "番号選んでください" + chr$(13)
25280 print " :1.数秘術占い" + chr$(13)
25290 print " :2.トップ画面に戻る" + chr$(13)
25300 color rgb(0,0,0)
25310 sp_on 0,1
25320 locate 1,15:print "1.数秘術番号を求めるを選択"
25330 'KeyBord:true
25340 'Joy Pad:true
25350 '上、下:true
25360 '
25370 'ｂｇ：決定ボタン
25380 'カーソル　上
25390 'カーソル　下
25400 Kabara_First_Top2:
25410 key$ = "":bg = 0:y = 0:
25420 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
25430 key$ = inkey$
25440 bg = strig(1)
25450 y = stick(1)
25460 'PauseでCPUを休める
25470 pause 5
25480 wend
25490 '1.カーソル　下 処理 chr$(31)
25500 'カーソル　下
25510 if ((key$ = chr$(31)) or (y = 1)) then
25520 select case No
25530 '
25540 case 1:
25550 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
25560 case 0:
25570 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25580 'case 2:
25590 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
25600 end select
25610 endif
25620 '2.カーソル　上 処理 chr$(30)
25630 if ((key$ = chr$(30)) or (y = -1)) then
25640 select case No
25650 case 0:
25660 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
25670 case 1:
25680 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
25690 'case 2:
25700 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
25710 end select
25720 endif
25730 '3.決定 処理  bg:2 or Enter key:chr$(13)
25740 if ((bg = 2) or (key$ = chr$(13))) then
25750 select case No
25760 case 0:
25770 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
25780 goto Kabara_TopScreen:
25790 'case 1:
25800 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
25810 case 1:
25820 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
25830 end select
25840 endif
25850 '
25860 'Kabara 相性占い トップ画面
25870 Kabara_Aishou_Top:
25880 cls 3:y=0:key$="":bg=0:No=0
25890 play ""
25900 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
25910 gload Gazo$ + "downscreen.png",0,0,800
25920 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
25930 print chr$(13) + chr$(13)
25940 locate 0,4:color rgb(255,255,255)
25950 'print "Ok"
25960 '
25970 print "番号を選んでください" + chr$(13)
25980 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
25990 print " :2.ビジネスの相性占い" + chr$(13)
26000 print " :3.トップ画面に戻る" + chr$(13)
26010 sp_on 0,1:sp_on 1,0:sp_on 2,0
26020 color rgb(0,0,0)
26030 locate 1,15:print "1.男女2人の相性占いを選択"
26040 Kabara_Aishou_Top2:
26050 key$ = "":y = 0:bg = 0:
26060 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
26070 'ジョイパッド(右) ,十字キー (上下)
26080 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
26090 y = stick(1)
26100 key$ = inkey$
26110 bg = strig(1)
26120 pause 200
26130 wend
26140 'カーソル　下 or 十字キー　下
26150 if ((key$ = chr$(31)) or (y = 1)) then
26160 select case No
26170 '選択肢　1 - 2に変更
26180 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26190 'ok
26200 case 0:
26210 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26220 '選択肢　2 - 3に変更
26230 case 1:
26240 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
26250 'リリース時 case 2コメント解除
26260 case 2:
26270 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
26280 case else:
26290 goto Kabara_Aishou_Top2:
26300 end select
26310 endif
26320 '十字キー　上　、カーソル　上
26330 if ((key$ = chr$(30)) or (y = -1)) then
26340 select case No
26350 case 0:
26360 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
26370 case 1:
26380 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
26390 case 2:
26400 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
26410 case else:
26420 goto Kabara_Aishou_Top2:
26430 end select
26440 endif
26450 '十字キー　上下:選択
26460 'ジョイパッド 右:決定
26470 if ((bg = 2) or (key$ = chr$(13))) then
26480 select case No
26490 '1.男女の相性
26500 case 0:
26510 '男女の相性占い(未実装)トップ画面に飛ぶ
26520 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
26530 '2ビジネスの相性
26540 case 1:
26550 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
26560 case 2:
26570 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
26580 end select
26590 endif
26600 '0.男女の相性　トップ画面　ここから
26610 Danjyo_Aisyou_Top:
26620 cls 3:y=0:key$="":bg=0:No=0
26630 play ""
26640 gload Gazo$ + "Screen1.png",0,0,0
26650 gload Gazo$ + "downscreen.png",0,0,800
26660 print chr$(13) + chr$(13)
26670 locate 0,4:color rgb(255,255,255)
26680 'print "Ok"
26690 '
26700 print "番号を選んでください" + chr$(13)
26710 print " :1.自分と異性の相性(未実装)" + chr$(13)
26720 print " :2.男女2人の相性" + chr$(13)
26730 print " :3.トップ画面に戻る" + chr$(13)
26740 sp_on 0,1:sp_on 1,0:sp_on 2,0
26750 color rgb(0,0,0)
26760 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
26770 Danjyo_Aisyou_Top2:
26780 key$ = "":y = 0:bg = 0:
26790 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
26800 'ジョイパッド(右) ,十字キー (上下)
26810 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
26820 y = stick(1)
26830 key$ = inkey$
26840 bg = strig(1)
26850 pause 200
26860 wend
26870 'カーソル　下 or 十字キー　下
26880 if ((key$ = chr$(31)) or (y = 1)) then
26890 select case No
26900 '選択肢　1 - 2に変更
26910 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
26920 'ok
26930 case 0:
26940 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
26950 '選択肢　2 - 3に変更
26960 case 1:
26970 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
26980 'リリース時 case 2コメント解除
26990 case 2:
27000 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
27010 case else:
27020 goto Kabara_Aishou_Top2:
27030 end select
27040 endif
27050 '十字キー　上　、カーソル　上
27060 if ((key$ = chr$(30)) or (y = -1)) then
27070 select case No
27080 case 0:
27090 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
27100 case 1:
27110 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
27120 case 2:
27130 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
27140 case else:
27150 goto Kabara_Aishou_Top2:
27160 end select
27170 endif
27180 '十字キー　上下:選択
27190 'ジョイパッド 右:決定
27200 if ((bg = 2) or (key$ = chr$(13))) then
27210 select case No
27220 '1.自分と異性の相性
27230 case 0:
27240 '未実装
27250 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
27260 '2男女の相性 男性の名前入力に飛ぶ
27270 case 1:
27280 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
27290 case 2:
27300 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
27310 end select
27320 endif
27330 '0.男女の相性　トップ画面　ここまで
27340 '1.男女の相性 ここから
27350 '1-1.男性の名前を入力
27360 Danjyo_Aisyou_Input_Name_male:
27370 No=0:color RGB(255,255,255)
27380 '入力:キーボード
27390 cls 3:init "kb:2"
27400 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
27410 gload Gazo$ + "downscreen.png",0,0,800
27420 for i=0 to 3
27430 buf_male_year(i)=0
27440 next i
27450 play "":color rgb(255,0,0):male_name$ = ""
27460 locate 0,1
27470 print "男性の相性" + chr$(13) + chr$(13)
27480 color rgb(255,255,255):
27490 locate 0,3
27500 print "男性の相性を求めます。男性の名前を" + chr$(13)
27510 print "入れてください" + chr$(13)
27520 locate 0,15:color rgb(0,0,0)
27530 Input "男性の名前:",male_name$
27540 '-------------------------------------------
27550 '1-2:男性の生まれた年代
27560 Danjyo_Aisyou_Input_Born_Year:
27570 No=0:color RGB(255,255,255)
27580 cls 3:init "kb:4"
27590 gload Gazo$ + "Screen1.png",0,0,0
27600 gload Gazo$ + "downscreen.png",0,0,800
27610 play "":color rgb(255,0,0)
27620 '-------------------------------------------
27630 font 48
27640 locate 0,1
27650 '文字色：黒　 color rgb(0,0,0)
27660 color rgb(255,255,255)
27670 print "男性の生まれた年代を入れて下さい" + chr$(13)
27680 color rgb(255,255,255)
27690 locate 1,3
27700 print "男性の生まれた年代(西暦4桁):";buf_male_year$
27710 color rgb(255,255,255)
27720 'locate 4,6:print ":7"
27730 'locate 9,6:print ":8"
27740 'locate 12,6:print ":9"
27750 locate 4,6
27760 print ":7  :8  :9" + chr$(13)
27770 color rgb(255,255,255)
27780 locate 4,8
27790 print ":4  :5  :6" + chr$(13)
27800 color rgb(255,255,255)
27810 locate 4,10
27820 print ":1  :2  :3" + chr$(13)
27830 locate 4,12
27840 print "    :0"
27850 locate 12,12
27860 color rgb(0,0,255)
27870 print ":Ok"
27880 sp_on 4,0: sp_on 5,0:sp_on 6,0
27890 sp_on 7,0:sp_on 8,0:sp_on 9,0
27900 sp_on 10,0:sp_on 11,0:sp_on 12,0
27910 sp_on 13,0:sp_on 14,1
27920 '-------------------------------------------------------------------------------------
27930 Danjyo_Aisyou_Input_Male_Born_Year2:
27940 key$="":bg=0:y=0:y2=0:bg2=0:
27950 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
27960 key$ = inkey$
27970 bg = strig(1)
27980 y = stick(1)
27990 y2 = stick(0)
28000 bg2=strig(0)
28010 pause 200
28020 wend
28030 '十字キー　ここから
28040 '上の矢印　または、十字キー上
28050 if ((y = -1) or (key$ = chr$(30))) then
28060 select case No
28070 'No=-1:okのとき:初期の状態
28080 '0kボタンから３に移動
28090 '上に行く 処理
28100 case -1:
28110 No=3:sp_on 12,1:sp_on 14,0
28120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28130 '選択肢:3
28140 '3ボタンから 6に移動
28150 case 3:
28160 No=6:sp_on 12,0:sp_on 11,1
28170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28180 '6ボタンから ９に移動
28190 case 6:
28200 No=9:sp_on 10,1:sp_on 11,0
28210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28220 '6ボタンから ９に移動　ここまで
28230 '9で上を押して何もしない
28240 case 9:
28250 '何もしない
28260 No=9
28270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28280 '9で上を押しても何もしない　ここまで
28290 '上　 0ボタンから2ボタン
28300 'sp_on 6,1:1
28310 'sp_on 8,1:5
28320 'sp_on 7,1:7
28330 case 0:
28340 No=2:sp_on 13,0:sp_on 9,1:
28350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28360 '上  0ボタンから2ボタン　ここまで
28370 '2から５になる 上
28380 case 2:
28390 No=5:sp_on 8,1:sp_on 9,0:
28400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28410 case 5:
28420 No=8:sp_on 7,1:sp_on 8,0
28430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28440 case 8:
28450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28460 case 1:
28470 No=4:sp_on 5,1:sp_on 6,0
28480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28490 case 4:
28500 No=7:sp_on 4,1:sp_on 5,0
28510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28520 case 7:
28530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28540 end select
28550 endif
28560 '左３　ここまで
28570 '下の矢印
28580 '中央 2
28590 if ((y=1) or (key$ = chr$(31))) then
28600 select case No
28610 '9から６に下げる
28620 case 9:
28630 No=6:sp_on 11,1:sp_on 10,0
28640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28650 '6から３に下げる
28660 case 6:
28670 No=3:sp_on 12,1:sp_on 11,0
28680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28690 '3から０ｋに変える
28700 case 3:
28710 No=-1:sp_on 14,1:sp_on 12,0
28720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28730 'Okから下のボタンを押しても何もしない
28740 case -1:
28750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28760 case 8:
28770 No=5:sp_on 8,1:sp_on 7,0
28780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28790 case 5:
28800 No=2:sp_on 9,1:sp_on 8,0
28810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28820 case 2:
28830 No=0:sp_on 13,1:sp_on 9,0
28840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28850 case 0:
28860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28870 case 7:
28880 No=4:sp_on 5,1:sp_on 4,0
28890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28900 case 4:
28910 No=1:sp_on 6,1:sp_on 5,0
28920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28930 case 1:
28940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
28950 end select
28960 endif
28970 '左へボタン 十字キー　左　or 　カーソル左
28980 if ((y2 = -1) or (key$ = chr$(29))) then
28990 select case No
29000 'Ok ボタン  Okから　左　０に行く
29010 case -1:
29020 No=0:sp_on 13,1:sp_on 14,0
29030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29040 '0 ボタン  左　何もしない
29050 case 0:
29060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29070 case 3:
29080 No=2:sp_on 9,1:sp_on 12,0:
29090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29100 case 2:
29110 No=1:sp_on 6,1:sp_on 9,0:
29120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29130 case 1:
29140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29150 case 6:
29160 No=5:sp_on 8,1:sp_on 11,0
29170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29180 case 5:
29190 No=4:sp_on 5,1:sp_on 8,0
29200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29210 case 4:
29220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29230 case 9:
29240 No=8:sp_on 7,1:sp_on 10,0
29250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29260 case 8:
29270 No=7:sp_on 4,1:sp_on 7,0
29280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29290 case 7:
29300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29310 end select
29320 endif
29330 '右  十字キー　右　or カーソル　右
29340 if ((y2 = 1) or (key$ = chr$(28))) then
29350 select case No
29360 '0ボタンからokボタン右に移動
29370 case 0:
29380 No=-1:sp_on 14,1:sp_on 13,0
29390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29400 '0ボタンからokボタン 右に移動　ここまで
29410 'OKボタンで右を押して何もしない
29420 case -1:
29430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29440 case 1:
29450 No=2:sp_on 9,1:sp_on 6,0
29460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29470 case 2:
29480 No=3:sp_on 12,1:sp_on 9,0
29490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29500 case 3:
29510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29520 case 4:
29530 No=5:sp_on 8,1:sp_on 5,0
29540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29550 case 5:
29560 No=6:sp_on 11,1:sp_on 8,0
29570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29580 case 7:
29590 No=8:sp_on 7,1:sp_on 4,0
29600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29610 case 8:
29620 No=9:sp_on 10,1:sp_on 7,0
29630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29640 case 9:
29650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29660 case 6:
29670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
29680 end select
29690 'Okから右ボタンを押して何もしない ここまで
29700 endif
29710 '十字キー　ここまで
29720 '==============================
29730 'ここから
29740 '==============================
29750 if ((bg = 2) or (key$ = chr$(13))) then
29760 select case count
29770 case 0:
29780 count = 1
29790 if (No = -1) then
29800 count = 0:No=0
29810 buf_male_year(0) = No
29820 'Okボタンを押したとき
29830 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29840 else
29850 'Okボタン以外が押されたとき
29860 if (No >= 1 and No <= 2) then
29870 buf_year$="":buf_year$ = str$(No) + "***"
29880 buf_year = No:a= No
29890 buf_Jyoushi_Born_Day(0) = No
29900 locate 1,3
29910 color rgb(255,255,255)
29920 print "男性の生まれた年代(西暦4桁):";buf_year$
29930 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29940 else
29950 count=0
29960 ui_msg"数字が範囲外になります。"
29970 buf_year$="":buf_year=0
29980 goto Danjyo_Aisyou_Input_Male_Born_Year2:
29990 endif
30000 endif
30010 case 1:
30020 count = 2
30030 if (No = -1) then
30040 count = 1
30050 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30060 else
30070 buf_year = a * 10 + No
30080 b=buf_year
30090 buf_year$ = str$(buf_year) + "**"
30100 buf_male_year(0)=buf_year
30110 locate 1,3
30120 color rgb(255,255,255)
30130 print "                                                                "
30140 locate 1,3
30150 print "男性の生まれた年代(西暦4桁):" + buf_year$
30160 'if (No = -1) then
30170 'count=1
30180 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30190 endif
30200 case 2:
30210 count=3
30220 if (No=-1) then
30230 count =2
30240 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30250 else
30260 buf_year = b * 10 + No
30270 c=buf_year
30280 buf_year$ = str$(buf_year) + "*"
30290 buf_male_year(0) = buf_year
30300 locate 1,3
30310 color rgb(255,255,255)
30320 print "                                        "
30330 locate 1,3
30340 print "男性の生まれた年代(西暦4桁):";buf_year$
30350 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30360 endif
30370 case 3:
30380 count=4
30390 if (No = -1) then
30400 No=0
30410 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30420 else
30430 buf_year = c * 10 + No
30440 buf_year$ = str$(buf_year)
30450 buf_male_year(0) = buf_year
30460 locate 1,3
30470 color RGB(255,255,255)
30480 print "                                      "
30490 locate 1,3
30500 print "男性の生まれた年代(西暦4桁):";buf_year$
30510 buf_year=val(buf_year$)
30520 'year=val(buf_year$)
30530 'if (No=-1) then
30540 'goto Input_Born_Month:
30550 'else
30560 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30570 endif
30580 case 4:
30590 'bufyear=buf_year
30600 if (No=-1) then
30610 buf_year = val(buf_year$)
30620 buf_male_year(0)=buf_year
30630 sp_on 14,0:No=0
30640 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30650 else
30660 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30670 endif
30680 end select
30690 endif
30700 '===========================
30710 'ここまでを部下のところにコピーする.
30720 '===========================
30730 if (bg2 = 2) then
30740 select case count2
30750 case 0:
30760 if (No = -1) then
30770 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
30780 count=0
30790 locate 1,3
30800 color rgb(255,255,255)
30810 print "                                      "
30820 locate 1,3
30830 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
30840 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30850 else
30860 '(buf_year=0) then
30870 buf_male_year=0:buf_male_year$="****"
30880 locate 1,3
30890 print "                                       "
30900 locate 1,3
30910 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
30920 goto Danjyo_Aisyou_Input_Male_Born_Year2:
30930 'endif
30940 endif
30950 end select
30960 endif
30970 '-------生まれた年代　男性-------------
30980 '-------生まれた月　男性-------------
30990 '1-2:男性の生まれた月
31000 Danjyo_Aisyou_Input_Male_Born_Month:
31010 cls 3:play "":count=0:count2=0
31020 'No=-1:Okのとき
31030 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
31040 for i=0 to 1
31050 buf_male_month(i)=0
31060 next i
31070 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
31080 gload Gazo$ + "Screen1.png",0,0,0
31090 gload Gazo$ + "downscreen.png",0,0,800
31100 'Init"kb:4"
31110 '音声ファイル再生 2023.06.07
31120 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
31130 font 48
31140 locate 0,1
31150 '文字色：黒　 color rgb(0,0,0)
31160 '文字色:白
31170 color rgb(255,255,255)
31180 print "男性の生まれた月を入れて下さい" + chr$(13)
31190 '文字色:白
31200 color rgb(255,255,255)
31210 locate 1,3
31220 '文字色:白
31230 print "男性の生まれた月(1月~12月):"+buf_male_Month$
31240 color rgb(255,255,255)
31250 'locate 4,6:print ":7"
31260 'locate 9,6:print ":8"
31270 'locate 12,6:print ":9"
31280 locate 4,6
31290 '文字色:赤
31300 print ":7  :8  :9" + chr$(13)
31310 color rgb(255,255,255)
31320 locate 4,8
31330 print ":4  :5  :6" + chr$(13)
31340 color rgb(255,255,255)
31350 locate 4,10
31360 print ":1  :2  :3" + chr$(13)
31370 locate 4,12
31380 print "    :0"
31390 locate 12,12
31400 color rgb(0,0,255)
31410 print ":Ok"
31420 sp_on 4,0: sp_on 5,0:sp_on 6,0
31430 sp_on 7,0:sp_on 8,0:sp_on 9,0
31440 sp_on 10,0:sp_on 11,0:sp_on 12,0
31450 sp_on 13,0:sp_on 14,1
31460 '----------------------------------------------------------------------------------------
31470 Danjyo_Aisyou_Input_Male_Born_Month2:
31480 key$="":bg=0:y=0:y2=0:bg2=0
31490 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
31500 key$ = inkey$
31510 bg = strig(1)
31520 y = stick(1)
31530 y2 = stick(0)
31540 bg2 = strig(0)
31550 pause 5
31560 wend
31570 '十字キー　ここから
31580 '上の矢印　または、十字キー上
31590 if ((y = -1) or (key$ = chr$(30))) then
31600 select case No
31610 'No=-1:okのとき:初期の状態
31620 '0kボタンから３に移動
31630 '上に行く 処理
31640 case -1:
31650 No=3:sp_on 12,1:sp_on 14,0
31660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31670 '選択肢:3
31680 '3ボタンから 6に移動
31690 case 3:
31700 No=6:sp_on 12,0:sp_on 11,1
31710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31720 '6ボタンから ９に移動
31730 case 6:
31740 No=9:sp_on 10,1:sp_on 11,0
31750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31760 '6ボタンから ９に移動　ここまで
31770 '9で上を押して何もしない
31780 case 9:
31790 '何もしない
31800 No=9
31810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31820 '9で上を押しても何もしない　ここまで
31830 '上　 0ボタンから2ボタン
31840 'sp_on 6,1:1
31850 'sp_on 8,1:5
31860 'sp_on 7,1:7
31870 case 0:
31880 No=2:sp_on 13,0:sp_on 9,1:
31890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31900 '上  0ボタンから2ボタン　ここまで
31910 '2から５になる 上
31920 case 2:
31930 No=5:sp_on 8,1:sp_on 9,0:
31940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31950 case 5:
31960 No=8:sp_on 7,1:sp_on 8,0
31970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
31980 case 8:
31990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32000 case 1:
32010 No=4:sp_on 5,1:sp_on 6,0
32020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32030 case 4:
32040 No=7:sp_on 4,1:sp_on 5,0
32050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32060 case 7:
32070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32080 end select
32090 endif
32100 '左３　ここまで
32110 '下の矢印
32120 '中央 2
32130 if ((y=1) or (key$ = chr$(31))) then
32140 select case No
32150 '9から６に下げる
32160 case 9:
32170 No=6:sp_on 11,1:sp_on 10,0
32180 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
32190 '6から３に下げる
32200 case 6:
32210 No=3:sp_on 12,1:sp_on 11,0
32220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32230 '3から０ｋに変える
32240 case 3:
32250 No=-1:sp_on 14,1:sp_on 12,0
32260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32270 'Okから下のボタンを押しても何もしない
32280 case -1:
32290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32300 case 8:
32310 No=5:sp_on 8,1:sp_on 7,0
32320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32330 case 5:
32340 No=2:sp_on 9,1:sp_on 8,0
32350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32360 case 2:
32370 No=0:sp_on 13,1:sp_on 9,0
32380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32390 case 0:
32400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32410 case 7:
32420 No=4:sp_on 5,1:sp_on 4,0
32430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32440 case 4:
32450 No=1:sp_on 6,1:sp_on 5,0
32460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32470 case 1:
32480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32490 end select
32500 endif
32510 '左へボタン 十字キー　左　or 　カーソル左
32520 if ((y2 = -1) or (key$ = chr$(29))) then
32530 select case No
32540 'Ok ボタン  Okから　左　０に行く
32550 case -1:
32560 No=0:sp_on 13,1:sp_on 14,0
32570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32580 '0 ボタン  左　何もしない
32590 case 0:
32600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32610 case 3:
32620 No=2:sp_on 9,1:sp_on 12,0:
32630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32640 case 2:
32650 No=1:sp_on 6,1:sp_on 9,0:
32660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32670 case 1:
32680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32690 case 6:
32700 No=5:sp_on 8,1:sp_on 11,0
32710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32720 case 5:
32730 No=4:sp_on 5,1:sp_on 8,0
32740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32750 case 4:
32760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32770 case 9:
32780 No=8:sp_on 7,1:sp_on 10,0
32790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32800 case 8:
32810 No=7:sp_on 4,1:sp_on 7,0
32820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32830 case 7:
32840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32850 end select
32860 endif
32870 '右  十字キー　右　or カーソル　右
32880 if ((y2 = 1) or (key$ = chr$(28))) then
32890 select case No
32900 '0ボタンからokボタン右に移動
32910 case 0:
32920 No=-1:sp_on 14,1:sp_on 13,0
32930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32940 '0ボタンからokボタン 右に移動　ここまで
32950 'OKボタンで右を押して何もしない
32960 case -1:
32970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
32980 case 1:
32990 No=2:sp_on 9,1:sp_on 6,0
33000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33010 case 2:
33020 No=3:sp_on 12,1:sp_on 9,0
33030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33040 case 3:
33050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33060 case 4:
33070 No=5:sp_on 8,1:sp_on 5,0
33080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33090 case 5:
33100 No=6:sp_on 11,1:sp_on 8,0
33110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33120 case 7:
33130 No=8:sp_on 7,1:sp_on 4,0
33140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33150 case 8:
33160 No=9:sp_on 10,1:sp_on 7,0
33170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33180 case 9:
33190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33200 case 6:
33210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
33220 end select
33230 'Okから右ボタンを押して何もしない ここまで
33240 endif
33250 '十字キー　ここまで
33260 '右の丸ボタン + Enter key 決定キー
33270 if ((bg=2) or (key$=chr$(13))) then
33280 select case count
33290 case 0:
33300 if (No=-1) then No=0
33310 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
33320 if (buf_male_month > 1 and buf_male_month < 10)  then
33330 buf_male_Month$ = str$(buf_male_month)
33340 'buf_month=No
33350 endif
33360 if (buf_male_month = 1)  then
33370 buf_male_Month$ = str$(buf_male_month) + "*"
33380 'c=buf_month
33390 endif
33400 locate 1,3
33410 print "                                     "
33420 color RGB(255,255,255)
33430 locate 1,3
33440 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33450 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33460 case 1:
33470 count = 2:
33480 'c = val(buf_Month$)
33490 if (No = -1) then
33500 'count=0
33510 No=0
33520 month=buf_male_month
33530 buf_male_month=val(buf_male_Month$)
33540 month=buf_male_month
33550 buf_Jyoushi_Born_Day(1)=month
33560 '生まれた日に飛ぶ
33570 goto Danjyo_Aisyou_Input_Male_Born_Day:
33580 else
33590 buf_male_month = c*10 + No
33600 'if (buf_month = 1) then
33610 'buf_Month$ = str$(buf_month)
33620 'endif
33630 buf_male_Month$ = str$(buf_male_month)
33640 buf_Jyoushi_Born_Day(1) = buf_male_month
33650 locate 0,3
33660 print "                                           "
33670 locate 1,3
33680 color Rgb(255,255,255)
33690 print "男性の生まれた月(1月~12月):" + buf_male_Month$
33700 goto Danjyo_Aisyou_Input_Male_Born_Month2:
33710 endif
33720 case 2:
33730 '==================================
33740 '何もしない
33750 'coun = 2
33760 '==================================
33770 'c= val(buf_Month$)
33780 'buf_month = c*10 + No
33790 'buf_Month$ = str$(buf_month)
33800 'locate 2,3
33810 'print "上司の生まれた月(1月～12月):";buf_Month$
33820 'goto Jyoushi_Input_Born_Month2:
33830 'case 3:
33840 'count=4
33850 'b=val(buf_month$)
33860 'buf_month=c*10+No
33870 'buf_Month$=str$(buf_month)
33880 'locate 2,3
33890 'print "上司の生まれた月(1月～12月):";buf_Month$
33900 'buf_month=val(buf_Month$)
33910 'year=val(buf_year$)
33920 if (No=-1) then
33930 No=0
33940 goto Danjyo_Aisyou_Input_Male_Born_Day:
33950 else
33960 goto Danjyo_Aisyou_Input_Male_Born_Day2:
33970 endif
33980 'case 4:
33990 'bufyear=buf_year
34000 'if (No=-1) then
34010 'buf_month = val(buf_Month$)
34020 'month = buf_month
34030 'sp_on 14,0
34040 'goto Input_Born_Day:
34050 'else
34060 'goto Input_Born_Month2:
34070 'endif
34080 end select
34090 endif
34100 '左の丸ボタン　キャンセル
34110 if (bg2=2) then
34120 select case count2
34130 case 0:
34140 if (No = -1) then
34150 buf_male_month=0:buf_male_Month$="**"
34160 count=0
34170 'goto rewrite2:
34180 else
34190 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
34200 buf_male_month = 0:buf_male_Month$ = "**"
34210 locate 0,3
34220 color rgb(255,255,255)
34230 print "                                       "
34240 goto rewrite2:
34250 if (No>12) then
34260 ui_msg"値が範囲外です。"
34270 goto rewrite2:
34280 endif
34290 endif
34300 endif
34310 rewrite2:
34320 locate 2,3
34330 color rgb(255,255,255)
34340 print "                                      "
34350 locate 2,3
34360 print "男性の生まれた月(1月~12月):"+buf_male_Month$
34370 goto Danjyo_Aisyou_Input_Male_Born_Month2:
34380 end select
34390 'endif
34400 endif
34410 end
34420 '-------生まれた月　男性 ここまで-------------
34430 '-------生まれた日　男性 ここから-------------
34440 Danjyo_Aisyou_Input_Male_Born_Day:
34450 cls 3:play "":count=0:count2=0
34460 'No=-1:Okのとき
34470 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
34480 for i=0 to 1
34490 buf_day(i)=0
34500 next i
34510 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
34520 gload Gazo$ + "Screen1.png",0,0,0
34530 gload Gazo$ + "downscreen.png",0,0,800
34540 'Init"kb:4"
34550 '音声ファイル再生 2023.06.07
34560 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
34570 font 48
34580 locate 0,1
34590 '文字色：黒　 color rgb(0,0,0)
34600 '文字色:白
34610 color rgb(255,255,255)
34620 print "男性の生まれた日を入れて下さい" + chr$(13)
34630 '文字色:白
34640 color rgb(255,255,255)
34650 locate 1,3
34660 '文字色:白
34670 print "男性の生まれた日(1月~31月):" + buf_Day$
34680 color rgb(255,255,255)
34690 'locate 4,6:print ":7"
34700 'locate 9,6:print ":8"
34710 'locate 12,6:print ":9"
34720 locate 4,6
34730 '文字色:赤
34740 print ":7  :8  :9" + chr$(13)
34750 color rgb(255,255,255)
34760 locate 4,8
34770 print ":4  :5  :6" + chr$(13)
34780 color rgb(255,255,255)
34790 locate 4,10
34800 print ":1  :2  :3" + chr$(13)
34810 locate 4,12
34820 print "    :0"
34830 locate 12,12
34840 color rgb(0,0,255)
34850 print ":Ok"
34860 sp_on 4,0: sp_on 5,0:sp_on 6,0
34870 sp_on 7,0:sp_on 8,0:sp_on 9,0
34880 sp_on 10,0:sp_on 11,0:sp_on 12,0
34890 sp_on 13,0:sp_on 14,1
34900 '-------------------------------------------------
34910 Danjyo_Aisyou_Input_Male_Born_Day2:
34920 key$="":bg=0:y=0:y2=0:bg2=0
34930 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
34940 key$ = inkey$
34950 bg = strig(1)
34960 y = stick(1)
34970 y2 = stick(0)
34980 bg2 = strig(0)
34990 pause 5
35000 wend
35010 '十字キー　ここから
35020 '上の矢印　または、十字キー上
35030 if ((y = -1) or (key$ = chr$(30))) then
35040 select case No
35050 'No=-1:okのとき:初期の状態
35060 '0kボタンから３に移動
35070 '上に行く 処理
35080 case -1:
35090 No=3:sp_on 12,1:sp_on 14,0
35100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35110 '選択肢:3
35120 '3ボタンから 6に移動
35130 case 3:
35140 No=6:sp_on 12,0:sp_on 11,1
35150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35160 '6ボタンから ９に移動
35170 case 6:
35180 No=9:sp_on 10,1:sp_on 11,0
35190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35200 '6ボタンから ９に移動　ここまで
35210 '9で上を押して何もしない
35220 case 9:
35230 '何もしない
35240 No=9
35250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35260 '9で上を押しても何もしない　ここまで
35270 '上　 0ボタンから2ボタン
35280 'sp_on 6,1:1
35290 'sp_on 8,1:5
35300 'sp_on 7,1:7
35310 case 0:
35320 No=2:sp_on 13,0:sp_on 9,1:
35330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35340 '上  0ボタンから2ボタン　ここまで
35350 '2から５になる 上
35360 case 2:
35370 No=5:sp_on 8,1:sp_on 9,0:
35380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35390 case 5:
35400 No=8:sp_on 7,1:sp_on 8,0
35410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35420 case 8:
35430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35440 case 1:
35450 No=4:sp_on 5,1:sp_on 6,0
35460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35470 case 4:
35480 No=7:sp_on 4,1:sp_on 5,0
35490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35500 case 7:
35510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35520 end select
35530 endif
35540 '左３　ここまで
35550 '下の矢印
35560 '中央 2
35570 if ((y=1) or (key$ = chr$(31))) then
35580 select case No
35590 '9から６に下げる
35600 case 9:
35610 No=6:sp_on 11,1:sp_on 10,0
35620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35630 '6から３に下げる
35640 case 6:
35650 No=3:sp_on 12,1:sp_on 11,0
35660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35670 '3から０ｋに変える
35680 case 3:
35690 No=-1:sp_on 14,1:sp_on 12,0
35700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35710 'Okから下のボタンを押しても何もしない
35720 case -1:
35730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35740 case 8:
35750 No=5:sp_on 8,1:sp_on 7,0
35760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35770 case 5:
35780 No=2:sp_on 9,1:sp_on 8,0
35790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35800 case 2:
35810 No=0:sp_on 13,1:sp_on 9,0
35820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35830 case 0:
35840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35850 case 7:
35860 No=4:sp_on 5,1:sp_on 4,0
35870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35880 case 4:
35890 No=1:sp_on 6,1:sp_on 5,0
35900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35910 case 1:
35920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
35930 end select
35940 endif
35950 '左へボタン 十字キー　左　or 　カーソル左
35960 if ((y2 = -1) or (key$ = chr$(29))) then
35970 select case No
35980 'Ok ボタン  Okから　左　０に行く
35990 case -1:
36000 No=0:sp_on 13,1:sp_on 14,0
36010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36020 '0 ボタン  左　何もしない
36030 case 0:
36040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36050 case 3:
36060 No=2:sp_on 9,1:sp_on 12,0:
36070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36080 case 2:
36090 No=1:sp_on 6,1:sp_on 9,0:
36100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36110 case 1:
36120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36130 case 6:
36140 No=5:sp_on 8,1:sp_on 11,0
36150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36160 case 5:
36170 No=4:sp_on 5,1:sp_on 8,0
36180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36190 case 4:
36200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36210 case 9:
36220 No=8:sp_on 7,1:sp_on 10,0
36230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36240 case 8:
36250 No=7:sp_on 4,1:sp_on 7,0
36260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36270 case 7:
36280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36290 end select
36300 endif
36310 '右  十字キー　右　or カーソル　右
36320 if ((y2 = 1) or (key$ = chr$(28))) then
36330 select case No
36340 '0ボタンからokボタン右に移動
36350 case 0:
36360 No=-1:sp_on 14,1:sp_on 13,0
36370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36380 '0ボタンからokボタン 右に移動　ここまで
36390 'OKボタンで右を押して何もしない
36400 case -1:
36410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36420 case 1:
36430 No=2:sp_on 9,1:sp_on 6,0
36440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36450 case 2:
36460 No=3:sp_on 12,1:sp_on 9,0
36470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36480 case 3:
36490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36500 case 4:
36510 No=5:sp_on 8,1:sp_on 5,0
36520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36530 case 5:
36540 No=6:sp_on 11,1:sp_on 8,0
36550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36560 case 7:
36570 No=8:sp_on 7,1:sp_on 4,0
36580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36590 case 8:
36600 No=9:sp_on 10,1:sp_on 7,0
36610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36620 case 9:
36630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36640 case 6:
36650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
36660 end select
36670 'Okから右ボタンを押して何もしない ここまで
36680 endif
36690 '十字キー　ここまで
36700 '右の丸ボタン + Enter key 決定キー
36710 if ((bg=2) or (key$=chr$(13))) then
36720 select case count
36730 case 0:
36740 if (No=-1) then No=0
36750 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
36760 if (buf_male_day > 1 and buf_male_day < 10)  then
36770 buf_male_Day$ = str$(buf_male_day)
36780 'buf_month=No
36790 endif
36800 if (buf_male_day = 1)  then
36810 buf_male_Day$ = str$(buf_male_day) + "*"
36820 'c=buf_month
36830 endif
36840 locate 1,3
36850 print "                                     "
36860 color RGB(255,255,255)
36870 locate 1,3
36880 print "男性の生まれた日(1月~31月):" + buf_male_Day$
36890 goto Danjyo_Aisyou_Input_Male_Born_Day2:
36900 case 1:
36910 count = 2:
36920 'c = val(buf_Month$)
36930 if (No = -1) then
36940 'count=0
36950 No=0
36960 day=buf_male_Day
36970 buf_male_Day=val(buf_male_Day$)
36980 day=buf_male_Day
36990 buf_Jyoushi_Born_Day(2)=day
37000 '生まれた日に飛ぶ
37010 goto Danjyo_Aisyou_Input_Male_Born_Day:
37020 else
37030 buf_male_Day = c*10 + No
37040 'if (buf_month = 1) then
37050 'buf_Month$ = str$(buf_month)
37060 'endif
37070 buf_male_Day$ = str$(buf_male_Day)
37080 buf_male_Born_Day(2) = buf_male_Day:
37090 locate 0,3
37100 print "                                           "
37110 locate 1,3
37120 color Rgb(255,255,255)
37130 print "男性の生まれた月(1月~12月):" + buf_male_Day$
37140 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37150 endif
37160 case 2:
37170 '==================================
37180 '何もしない
37190 'coun = 2
37200 '==================================
37210 'c= val(buf_Month$)
37220 'buf_month = c*10 + No
37230 'buf_Month$ = str$(buf_month)
37240 'locate 2,3
37250 'print "上司の生まれた月(1月～12月):";buf_Month$
37260 'goto Jyoushi_Input_Born_Month2:
37270 'case 3:
37280 'count=4
37290 'b=val(buf_month$)
37300 'buf_month=c*10+No
37310 'buf_Month$=str$(buf_month)
37320 'locate 2,3
37330 'print "上司の生まれた月(1月～12月):";buf_Month$
37340 'buf_month=val(buf_Month$)
37350 'year=val(buf_year$)
37360 if (No=-1) then
37370 No=0
37380 goto Danjyo_Aisyou_Input_Male_Born_Day:
37390 else
37400 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37410 endif
37420 'case 4:
37430 'bufyear=buf_year
37440 'if (No=-1) then
37450 'buf_month = val(buf_Month$)
37460 'month = buf_month
37470 'sp_on 14,0
37480 'goto Input_Born_Day:
37490 'else
37500 'goto Input_Born_Month2:
37510 'endif
37520 end select
37530 endif
37540 '左の丸ボタン　キャンセル
37550 if (bg2=2) then
37560 select case count2
37570 case 0:
37580 if (No = -1) then
37590 buf_male_day=0:buf_male_Day$="**"
37600 count=0
37610 'goto rewrite2:
37620 else
37630 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
37640 buf_male_day = 0:buf_male_Day$ = "**"
37650 locate 0,3
37660 color rgb(255,255,255)
37670 print "                                       "
37680 goto rewrite2:
37690 if (No>12) then
37700 ui_msg"値が範囲外です。"
37710 goto rewrite2:
37720 endif
37730 endif
37740 endif
37750 rewrite2:
37760 locate 2,3
37770 color rgb(255,255,255)
37780 print "                                      "
37790 locate 2,3
37800 print "男性の生まれた日(1月~31月):"+buf_male_Day$
37810 goto Danjyo_Aisyou_Input_Male_Born_Day2:
37820 end select
37830 'endif
37840 endif
37850 end
37860 '-------生まれた日　女性　ここまで-------------
37870 '1-1.女性の名前を入力
37880 Danjyo_Aisyou_Input_Name_female:
37890 No=0:color RGB(255,255,255)
37900 '入力:キーボード
37910 cls 3:init "kb:2"
37920 gload Gazo$ + "Screen1.png",0,0,0
37930 gload Gazo$ + "downscreen.png",0,0,800
37940 play "":color rgb(255,0,0):female_name$ = ""
37950 locate 0,1
37960 print "女性の相性" + chr$(13) + chr$(13)
37970 color rgb(255,255,255):
37980 locate 0,3
37990 print "女性の相性を求めます。男性の名前を" + chr$(13)
38000 print "入れてください" + chr$(13)
38010 locate 0,15:color rgb(0,0,0)
38020 Input "女性の名前:",female_name$
38030 '-------------------------------------------
38040 '-------生まれた年代　女性 ここから-------------
38050 Danjyo_Aisyou_Input_feMale_Born_Year:
38060 cls 3:play "":count=0:count2=0
38070 'No=-1:Okのとき
38080 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
38090 for i=0 to 1
38100 buf_day(i)=0
38110 next i
38120 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
38130 gload Gazo$ + "Screen1.png",0,0,0
38140 gload Gazo$ + "downscreen.png",0,0,800
38150 'Init"kb:4"
38160 '音声ファイル再生 2023.06.07
38170 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
38180 font 48
38190 locate 0,1
38200 '文字色：黒　 color rgb(0,0,0)
38210 '文字色:白
38220 color rgb(255,255,255)
38230 print "女性の生まれた年代を入れて下さい" + chr$(13)
38240 '文字色:白
38250 color rgb(255,255,255)
38260 locate 1,3
38270 '文字色:白
38280 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
38290 color rgb(255,255,255)
38300 'locate 4,6:print ":7"
38310 'locate 9,6:print ":8"
38320 'locate 12,6:print ":9"
38330 locate 4,6
38340 '文字色:赤
38350 print ":7  :8  :9" + chr$(13)
38360 color rgb(255,255,255)
38370 locate 4,8
38380 print ":4  :5  :6" + chr$(13)
38390 color rgb(255,255,255)
38400 locate 4,10
38410 print ":1  :2  :3" + chr$(13)
38420 locate 4,12
38430 print "    :0"
38440 locate 12,12
38450 color rgb(0,0,255)
38460 print ":Ok"
38470 sp_on 4,0: sp_on 5,0:sp_on 6,0
38480 sp_on 7,0:sp_on 8,0:sp_on 9,0
38490 sp_on 10,0:sp_on 11,0:sp_on 12,0
38500 sp_on 13,0:sp_on 14,1
38510 '---------------------------------------------
38520 Danjyo_Aisyou_Input_feMale_Born_Year2:
38530 key$="":bg=0:y=0:y2=0:bg2=0:
38540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
38550 key$ = inkey$
38560 bg = strig(1)
38570 y = stick(1)
38580 y2 = stick(0)
38590 bg2=strig(0)
38600 pause 5
38610 wend
38620 '十字キー　ここから
38630 '上の矢印　または、十字キー上
38640 if ((y = -1) or (key$ = chr$(30))) then
38650 select case No
38660 'No=-1:okのとき:初期の状態
38670 '0kボタンから３に移動
38680 '上に行く 処理
38690 case -1:
38700 No=3:sp_on 12,1:sp_on 14,0
38710 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
38720 '選択肢:3
38730 '3ボタンから 6に移動
38740 case 3:
38750 No=6:sp_on 12,0:sp_on 11,1
38760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38770 '6ボタンから ９に移動
38780 case 6:
38790 No=9:sp_on 10,1:sp_on 11,0
38800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38810 '6ボタンから ９に移動　ここまで
38820 '9で上を押して何もしない
38830 case 9:
38840 '何もしない
38850 No=9
38860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38870 '9で上を押しても何もしない　ここまで
38880 '上　 0ボタンから2ボタン
38890 'sp_on 6,1:1
38900 'sp_on 8,1:5
38910 'sp_on 7,1:7
38920 case 0:
38930 No=2:sp_on 13,0:sp_on 9,1:
38940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
38950 '上  0ボタンから2ボタン　ここまで
38960 '2から５になる 上
38970 case 2:
38980 No=5:sp_on 8,1:sp_on 9,0:
38990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39000 case 5:
39010 No=8:sp_on 7,1:sp_on 8,0
39020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39030 case 8:
39040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39050 case 1:
39060 No=4:sp_on 5,1:sp_on 6,0
39070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39080 case 4:
39090 No=7:sp_on 4,1:sp_on 5,0
39100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39110 case 7:
39120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39130 end select
39140 endif
39150 '左３　ここまで
39160 '下の矢印
39170 '中央 2
39180 if ((y=1) or (key$ = chr$(31))) then
39190 select case No
39200 '9から６に下げる
39210 case 9:
39220 No=6:sp_on 11,1:sp_on 10,0
39230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39240 '6から３に下げる
39250 case 6:
39260 No=3:sp_on 12,1:sp_on 11,0
39270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39280 '3から０ｋに変える
39290 case 3:
39300 No=-1:sp_on 14,1:sp_on 12,0
39310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39320 'Okから下のボタンを押しても何もしない
39330 case -1:
39340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39350 case 8:
39360 No=5:sp_on 8,1:sp_on 7,0
39370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39380 case 5:
39390 No=2:sp_on 9,1:sp_on 8,0
39400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39410 case 2:
39420 No=0:sp_on 13,1:sp_on 9,0
39430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39440 case 0:
39450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39460 case 7:
39470 No=4:sp_on 5,1:sp_on 4,0
39480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39490 case 4:
39500 No=1:sp_on 6,1:sp_on 5,0
39510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39520 case 1:
39530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39540 end select
39550 endif
39560 '左へボタン 十字キー　左　or 　カーソル左
39570 if ((y2 = -1) or (key$ = chr$(29))) then
39580 select case No
39590 'Ok ボタン  Okから　左　０に行く
39600 case -1:
39610 No=0:sp_on 13,1:sp_on 14,0
39620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39630 '0 ボタン  左　何もしない
39640 case 0:
39650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39660 case 3:
39670 No=2:sp_on 9,1:sp_on 12,0:
39680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39690 case 2:
39700 No=1:sp_on 6,1:sp_on 9,0:
39710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39720 case 1:
39730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39740 case 6:
39750 No=5:sp_on 8,1:sp_on 11,0
39760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39770 case 5:
39780 No=4:sp_on 5,1:sp_on 8,0
39790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39800 case 4:
39810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39820 case 9:
39830 No=8:sp_on 7,1:sp_on 10,0
39840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39850 case 8:
39860 No=7:sp_on 4,1:sp_on 7,0
39870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39880 case 7:
39890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39900 end select
39910 endif
39920 '右  十字キー　右　or カーソル　右
39930 if ((y2 = 1) or (key$ = chr$(28))) then
39940 select case No
39950 '0ボタンからokボタン右に移動
39960 case 0:
39970 No=-1:sp_on 14,1:sp_on 13,0
39980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
39990 '0ボタンからokボタン 右に移動　ここまで
40000 'OKボタンで右を押して何もしない
40010 case -1:
40020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40030 case 1:
40040 No=2:sp_on 9,1:sp_on 6,0
40050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40060 case 2:
40070 No=3:sp_on 12,1:sp_on 9,0
40080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40090 case 3:
40100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40110 case 4:
40120 No=5:sp_on 8,1:sp_on 5,0
40130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40140 case 5:
40150 No=6:sp_on 11,1:sp_on 8,0
40160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40170 case 7:
40180 No=8:sp_on 7,1:sp_on 4,0
40190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40200 case 8:
40210 No=9:sp_on 10,1:sp_on 7,0
40220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40230 case 9:
40240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40250 case 6:
40260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40270 end select
40280 'Okから右ボタンを押して何もしない ここまで
40290 endif
40300 '十字キー　ここまで
40310 '==============================
40320 'ここから
40330 '==============================
40340 if ((bg = 2) or (key$ = chr$(13))) then
40350 select case count
40360 case 0:
40370 count = 1
40380 if (No = -1) then
40390 count = 0:No=0
40400 buf_feMale_Born_Day(0) = No
40410 'Okボタンを押したとき
40420 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40430 else
40440 'Okボタン以外が押されたとき
40450 if (No >= 1 and No <= 2) then
40460 buf_female_year$="":buf_female_year$ = str$(No) + "***"
40470 buf_female_year = No:a= No
40480 buf_Jyoushi_Born_Day(0) = No
40490 locate 1,3
40500 color rgb(255,255,255)
40510 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40520 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40530 else
40540 count=0
40550 ui_msg"数字が範囲外になります。"
40560 buf_female_year$="":buf_female_year=0
40570 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40580 endif
40590 endif
40600 case 1:
40610 count = 2
40620 if (No = -1) then
40630 count = 1
40640 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40650 else
40660 buf_female_year = a * 10 + No
40670 b=buf_female_year
40680 buf_year$ = str$(buf_female_year) + "**"
40690 buf_Jyoushi_Born_Day(0)=buf_female_year
40700 locate 1,3
40710 color rgb(255,255,255)
40720 print "                                                                "
40730 locate 1,3
40740 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
40750 'if (No = -1) then
40760 'count=1
40770 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40780 endif
40790 case 2:
40800 count=3
40810 if (No=-1) then
40820 count =2
40830 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40840 else
40850 buf_female_year = b * 10 + No
40860 c=buf_female_year
40870 buf_female_year$ = str$(buf_female_year) + "*"
40880 buf_Jyoushi_Born_Day(0) = buf_female_year
40890 locate 1,3
40900 color rgb(255,255,255)
40910 print "                                        "
40920 locate 1,3
40930 print "女性の生まれた年代(西暦4桁):";buf_female_year$
40940 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
40950 endif
40960 case 3:
40970 count=4
40980 if (No = -1) then
40990 No=0
41000 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41010 else
41020 buf_female_year = c * 10 + No
41030 buf_female_year$ = str$(buf_female_year)
41040 buf_Jyoushi_Born_Day(0) = buf_female_year
41050 locate 1,3
41060 color RGB(255,255,255)
41070 print "                                      "
41080 locate 1,3
41090 print "女性の生まれた年代(西暦4桁):";buf_female_year$
41100 buf_female_year=val(buf_female_year$)
41110 'year=val(buf_year$)
41120 'if (No=-1) then
41130 'goto Input_Born_Month:
41140 'else
41150 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41160 endif
41170 case 4:
41180 'bufyear=buf_year
41190 if (No=-1) then
41200 buf_female_year = val(buf_female_year$)
41210 buf_Jyoushi_Born_Day(0)=buf_female_year
41220 sp_on 14,0:No=0
41230 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41240 else
41250 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41260 endif
41270 end select
41280 endif
41290 '===========================
41300 'ここまでを部下のところにコピーする.
41310 '===========================
41320 if (bg2 = 2) then
41330 select case count2
41340 case 0:
41350 if (No = -1) then
41360 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
41370 count=0
41380 locate 1,3
41390 color rgb(255,255,255)
41400 print "                                      "
41410 locate 1,3
41420 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
41430 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41440 else
41450 '(buf_year=0) then
41460 buf_female_year=0:buf_year$="****"
41470 locate 1,3
41480 print "                                       "
41490 locate 1,3
41500 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
41510 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
41520 'endif
41530 endif
41540 end select
41550 endif
41560 '-------生まれた年代　女性 ここまで-------------
41570 '-------生まれた月　女性 ここまで--------------
41580 Danjyo_Aisyou_Input_feMale_Born_Month:
41590 cls 3:play "":count=0:count2=0
41600 'No=-1:Okのとき
41610 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
41620 for i=0 to 1
41630 buf_month(i)=0
41640 next i
41650 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41660 gload Gazo$ + "Screen1.png",0,0,0
41670 gload Gazo$ + "downscreen.png",0,0,800
41680 'Init"kb:4"
41690 '音声ファイル再生 2023.06.07
41700 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
41710 font 48
41720 locate 0,1
41730 '文字色：黒　 color rgb(0,0,0)
41740 '文字色:白
41750 color rgb(255,255,255)
41760 print "女性の生まれた月を入れて下さい" + chr$(13)
41770 '文字色:白
41780 color rgb(255,255,255)
41790 locate 1,3
41800 '文字色:白
41810 print "女性の生まれた月(1月~12月):"+buf_female_Month$
41820 color rgb(255,255,255)
41830 'locate 4,6:print ":7"
41840 'locate 9,6:print ":8"
41850 'locate 12,6:print ":9"
41860 locate 4,6
41870 '文字色:赤
41880 print ":7  :8  :9" + chr$(13)
41890 color rgb(255,255,255)
41900 locate 4,8
41910 print ":4  :5  :6" + chr$(13)
41920 color rgb(255,255,255)
41930 locate 4,10
41940 print ":1  :2  :3" + chr$(13)
41950 locate 4,12
41960 print "    :0"
41970 locate 12,12
41980 color rgb(0,0,255)
41990 print ":Ok"
42000 sp_on 4,0: sp_on 5,0:sp_on 6,0
42010 sp_on 7,0:sp_on 8,0:sp_on 9,0
42020 sp_on 10,0:sp_on 11,0:sp_on 12,0
42030 sp_on 13,0:sp_on 14,1
42040 '---------------------------------------------
42050 Danjyo_Aisyou_Input_feMale_Born_Month2:
42060 key$="":bg=0:y=0:y2=0:bg2=0
42070 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42080 key$ = inkey$
42090 bg = strig(1)
42100 y = stick(1)
42110 y2 = stick(0)
42120 bg2 = strig(0)
42130 pause 5
42140 wend
42150 '十字キー　ここから
42160 '上の矢印　または、十字キー上
42170 if ((y = -1) or (key$ = chr$(30))) then
42180 select case No
42190 'No=-1:okのとき:初期の状態
42200 '0kボタンから３に移動
42210 '上に行く 処理
42220 case -1:
42230 No=3:sp_on 12,1:sp_on 14,0
42240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42250 '選択肢:3
42260 '3ボタンから 6に移動
42270 case 3:
42280 No=6:sp_on 12,0:sp_on 11,1
42290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42300 '6ボタンから ９に移動
42310 case 6:
42320 No=9:sp_on 10,1:sp_on 11,0
42330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42340 '6ボタンから ９に移動　ここまで
42350 '9で上を押して何もしない
42360 case 9:
42370 '何もしない
42380 No=9
42390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42400 '9で上を押しても何もしない　ここまで
42410 '上　 0ボタンから2ボタン
42420 'sp_on 6,1:1
42430 'sp_on 8,1:5
42440 'sp_on 7,1:7
42450 case 0:
42460 No=2:sp_on 13,0:sp_on 9,1:
42470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42480 '上  0ボタンから2ボタン　ここまで
42490 '2から５になる 上
42500 case 2:
42510 No=5:sp_on 8,1:sp_on 9,0:
42520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42530 case 5:
42540 No=8:sp_on 7,1:sp_on 8,0
42550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42560 case 8:
42570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42580 case 1:
42590 No=4:sp_on 5,1:sp_on 6,0
42600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42610 case 4:
42620 No=7:sp_on 4,1:sp_on 5,0
42630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42640 case 7:
42650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42660 end select
42670 endif
42680 '左３　ここまで
42690 '下の矢印
42700 '中央 2
42710 if ((y=1) or (key$ = chr$(31))) then
42720 select case No
42730 '9から６に下げる
42740 case 9:
42750 No=6:sp_on 11,1:sp_on 10,0
42760 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
42770 '6から３に下げる
42780 case 6:
42790 No=3:sp_on 12,1:sp_on 11,0
42800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42810 '3から０ｋに変える
42820 case 3:
42830 No=-1:sp_on 14,1:sp_on 12,0
42840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42850 'Okから下のボタンを押しても何もしない
42860 case -1:
42870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42880 case 8:
42890 No=5:sp_on 8,1:sp_on 7,0
42900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42910 case 5:
42920 No=2:sp_on 9,1:sp_on 8,0
42930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42940 case 2:
42950 No=0:sp_on 13,1:sp_on 9,0
42960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42970 case 0:
42980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
42990 case 7:
43000 No=4:sp_on 5,1:sp_on 4,0
43010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43020 case 4:
43030 No=1:sp_on 6,1:sp_on 5,0
43040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43050 case 1:
43060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43070 end select
43080 endif
43090 '左へボタン 十字キー　左　or 　カーソル左
43100 if ((y2 = -1) or (key$ = chr$(29))) then
43110 select case No
43120 'Ok ボタン  Okから　左　０に行く
43130 case -1:
43140 No=0:sp_on 13,1:sp_on 14,0
43150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43160 '0 ボタン  左　何もしない
43170 case 0:
43180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43190 case 3:
43200 No=2:sp_on 9,1:sp_on 12,0:
43210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43220 case 2:
43230 No=1:sp_on 6,1:sp_on 9,0:
43240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43250 case 1:
43260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43270 case 6:
43280 No=5:sp_on 8,1:sp_on 11,0
43290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43300 case 5:
43310 No=4:sp_on 5,1:sp_on 8,0
43320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43330 case 4:
43340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43350 case 9:
43360 No=8:sp_on 7,1:sp_on 10,0
43370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43380 case 8:
43390 No=7:sp_on 4,1:sp_on 7,0
43400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43410 case 7:
43420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43430 end select
43440 endif
43450 '右  十字キー　右　or カーソル　右
43460 if ((y2 = 1) or (key$ = chr$(28))) then
43470 select case No
43480 '0ボタンからokボタン右に移動
43490 case 0:
43500 No=-1:sp_on 14,1:sp_on 13,0
43510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43520 '0ボタンからokボタン 右に移動　ここまで
43530 'OKボタンで右を押して何もしない
43540 case -1:
43550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43560 case 1:
43570 No=2:sp_on 9,1:sp_on 6,0
43580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43590 case 2:
43600 No=3:sp_on 12,1:sp_on 9,0
43610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43620 case 3:
43630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43640 case 4:
43650 No=5:sp_on 8,1:sp_on 5,0
43660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43670 case 5:
43680 No=6:sp_on 11,1:sp_on 8,0
43690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43700 case 7:
43710 No=8:sp_on 7,1:sp_on 4,0
43720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43730 case 8:
43740 No=9:sp_on 10,1:sp_on 7,0
43750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43760 case 9:
43770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43780 case 6:
43790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
43800 end select
43810 'Okから右ボタンを押して何もしない ここまで
43820 endif
43830 '十字キー　ここまで
43840 '右の丸ボタン + Enter key 決定キー
43850 if ((bg=2) or (key$=chr$(13))) then
43860 select case count
43870 case 0:
43880 if (No=-1) then No=0
43890 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
43900 if (buf_female_month > 1 and buf_female_month < 10)  then
43910 buf_female_Month$ = str$(buf_female_month)
43920 'buf_month=No
43930 endif
43940 if (buf_female_month = 1)  then
43950 buf_female_Month$ = str$(buf_female_month) + "*"
43960 'c=buf_month
43970 endif
43980 locate 1,3
43990 print "                                     "
44000 color RGB(255,255,255)
44010 locate 1,3
44020 print "女性の生まれた月(1月~12月):" + buf_female_Month$
44030 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44040 case 1:
44050 count = 2:
44060 'c = val(buf_Month$)
44070 if (No = -1) then
44080 'count=0
44090 No=0
44100 month=buf_female_month
44110 buf_female_month=val(buf_female_Month$)
44120 month=buf_female_month
44130 buf_Jyoushi_Born_Day(1)=month
44140 '生まれた日に飛ぶ
44150 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44160 else
44170 buf_female_month = c*10 + No
44180 'if (buf_month = 1) then
44190 'buf_Month$ = str$(buf_month)
44200 'endif
44210 buf_female_Month$ = str$(buf_female_month)
44220 buf_Jyoushi_Born_Day(1) = buf_female_month
44230 locate 0,3
44240 print "                                           "
44250 locate 1,3
44260 color Rgb(255,255,255)
44270 print "女性の生まれた月(1月~12月):" + buf_female_Month$
44280 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44290 endif
44300 case 2:
44310 '==================================
44320 '何もしない
44330 'coun = 2
44340 '==================================
44350 'c= val(buf_Month$)
44360 'buf_month = c*10 + No
44370 'buf_Month$ = str$(buf_month)
44380 'locate 2,3
44390 'print "上司の生まれた月(1月～12月):";buf_Month$
44400 'goto Jyoushi_Input_Born_Month2:
44410 'case 3:
44420 'count=4
44430 'b=val(buf_month$)
44440 'buf_month=c*10+No
44450 'buf_Month$=str$(buf_month)
44460 'locate 2,3
44470 'print "上司の生まれた月(1月～12月):";buf_Month$
44480 'buf_month=val(buf_Month$)
44490 'year=val(buf_year$)
44500 if (No=-1) then
44510 No=0
44520 goto Danjyo_Aisyou_Input_Male_Born_Day:
44530 else
44540 goto Danjyo_Aisyou_Input_Male_Born_Day2:
44550 endif
44560 'case 4:
44570 'bufyear=buf_year
44580 'if (No=-1) then
44590 'buf_month = val(buf_Month$)
44600 'month = buf_month
44610 'sp_on 14,0
44620 'goto Input_Born_Day:
44630 'else
44640 'goto Input_Born_Month2:
44650 'endif
44660 end select
44670 endif
44680 '左の丸ボタン　キャンセル
44690 if (bg2=2) then
44700 select case count2
44710 case 0:
44720 if (No = -1) then
44730 buf_female_month=0:buf_female_Month$="**"
44740 count=0
44750 'goto rewrite2:
44760 else
44770 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
44780 buf_female_month = 0:buf_female_Month$ = "**"
44790 locate 0,3
44800 color rgb(255,255,255)
44810 print "                                       "
44820 goto rewrite2:
44830 if (No>12) then
44840 ui_msg"値が範囲外です。"
44850 goto rewrite2:
44860 endif
44870 endif
44880 endif
44890 rewrite2:
44900 locate 2,3
44910 color rgb(255,255,255)
44920 print "                                      "
44930 locate 2,3
44940 print "女性の生まれた月(1月~12月):"+buf_female_Month$
44950 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
44960 end select
44970 'endif
44980 endif
44990 end
45000 '-------生まれた月　女性 ここまで-------------
45010 '-------生まれた日　女性 ここまで-------------
45020 Danjyo_Aisyou_Input_feMale_Born_Day:
45030 cls 3:play "":count=0:count2=0
45040 'No=-1:Okのとき
45050 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
45060 for i=0 to 1
45070 buf_female_day(i)=0
45080 next i
45090 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
45100 gload Gazo$ + "Screen1.png",0,0,0
45110 gload Gazo$ + "downscreen.png",0,0,800
45120 'Init"kb:4"
45130 '音声ファイル再生 2023.06.07
45140 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
45150 font 48
45160 locate 0,1
45170 '文字色：黒　 color rgb(0,0,0)
45180 '文字色:白
45190 color rgb(255,255,255)
45200 print "女性の生まれた日を入れて下さい" + chr$(13)
45210 '文字色:白
45220 color rgb(255,255,255)
45230 locate 1,3
45240 '文字色:白
45250 print "女性の生まれた日(1月~31月):" + buf_female_Day$
45260 color rgb(255,255,255)
45270 'locate 4,6:print ":7"
45280 'locate 9,6:print ":8"
45290 'locate 12,6:print ":9"
45300 locate 4,6
45310 '文字色:赤
45320 print ":7  :8  :9" + chr$(13)
45330 color rgb(255,255,255)
45340 locate 4,8
45350 print ":4  :5  :6" + chr$(13)
45360 color rgb(255,255,255)
45370 locate 4,10
45380 print ":1  :2  :3" + chr$(13)
45390 locate 4,12
45400 print "    :0"
45410 locate 12,12
45420 color rgb(0,0,255)
45430 print ":Ok"
45440 sp_on 4,0: sp_on 5,0:sp_on 6,0
45450 sp_on 7,0:sp_on 8,0:sp_on 9,0
45460 sp_on 10,0:sp_on 11,0:sp_on 12,0
45470 sp_on 13,0:sp_on 14,1
45480 '---------------------------------------------
45490 Danjyo_Aisyou_Input_feMale_Born_Day2:
45500 key$="":bg=0:y=0:y2=0:bg2=0
45510 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45520 key$ = inkey$
45530 bg = strig(1)
45540 y = stick(1)
45550 y2 = stick(0)
45560 bg2 = strig(0)
45570 pause 5
45580 wend
45590 '十字キー　ここから
45600 '上の矢印　または、十字キー上
45610 if ((y = -1) or (key$ = chr$(30))) then
45620 select case No
45630 'No=-1:okのとき:初期の状態
45640 '0kボタンから３に移動
45650 '上に行く 処理
45660 case -1:
45670 No=3:sp_on 12,1:sp_on 14,0
45680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45690 '選択肢:3
45700 '3ボタンから 6に移動
45710 case 3:
45720 No=6:sp_on 12,0:sp_on 11,1
45730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45740 '6ボタンから ９に移動
45750 case 6:
45760 No=9:sp_on 10,1:sp_on 11,0
45770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45780 '6ボタンから ９に移動　ここまで
45790 '9で上を押して何もしない
45800 case 9:
45810 '何もしない
45820 No=9
45830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45840 '9で上を押しても何もしない　ここまで
45850 '上　 0ボタンから2ボタン
45860 'sp_on 6,1:1
45870 'sp_on 8,1:5
45880 'sp_on 7,1:7
45890 case 0:
45900 No=2:sp_on 13,0:sp_on 9,1:
45910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45920 '上  0ボタンから2ボタン　ここまで
45930 '2から５になる 上
45940 case 2:
45950 No=5:sp_on 8,1:sp_on 9,0:
45960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
45970 case 5:
45980 No=8:sp_on 7,1:sp_on 8,0
45990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46000 case 8:
46010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46020 case 1:
46030 No=4:sp_on 5,1:sp_on 6,0
46040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46050 case 4:
46060 No=7:sp_on 4,1:sp_on 5,0
46070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46080 case 7:
46090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46100 end select
46110 endif
46120 '左３　ここまで
46130 '下の矢印
46140 '中央 2
46150 if ((y=1) or (key$ = chr$(31))) then
46160 select case No
46170 '9から６に下げる
46180 case 9:
46190 No=6:sp_on 11,1:sp_on 10,0
46200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46210 '6から３に下げる
46220 case 6:
46230 No=3:sp_on 12,1:sp_on 11,0
46240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46250 '3から０ｋに変える
46260 case 3:
46270 No=-1:sp_on 14,1:sp_on 12,0
46280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46290 'Okから下のボタンを押しても何もしない
46300 case -1:
46310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46320 case 8:
46330 No=5:sp_on 8,1:sp_on 7,0
46340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46350 case 5:
46360 No=2:sp_on 9,1:sp_on 8,0
46370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46380 case 2:
46390 No=0:sp_on 13,1:sp_on 9,0
46400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46410 case 0:
46420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46430 case 7:
46440 No=4:sp_on 5,1:sp_on 4,0
46450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46460 case 4:
46470 No=1:sp_on 6,1:sp_on 5,0
46480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46490 case 1:
46500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46510 end select
46520 endif
46530 '左へボタン 十字キー　左　or 　カーソル左
46540 if ((y2 = -1) or (key$ = chr$(29))) then
46550 select case No
46560 'Ok ボタン  Okから　左　０に行く
46570 case -1:
46580 No=0:sp_on 13,1:sp_on 14,0
46590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46600 '0 ボタン  左　何もしない
46610 case 0:
46620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46630 case 3:
46640 No=2:sp_on 9,1:sp_on 12,0:
46650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46660 case 2:
46670 No=1:sp_on 6,1:sp_on 9,0:
46680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46690 case 1:
46700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46710 case 6:
46720 No=5:sp_on 8,1:sp_on 11,0
46730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46740 case 5:
46750 No=4:sp_on 5,1:sp_on 8,0
46760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46770 case 4:
46780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46790 case 9:
46800 No=8:sp_on 7,1:sp_on 10,0
46810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46820 case 8:
46830 No=7:sp_on 4,1:sp_on 7,0
46840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46850 case 7:
46860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46870 end select
46880 endif
46890 '右  十字キー　右　or カーソル　右
46900 if ((y2 = 1) or (key$ = chr$(28))) then
46910 select case No
46920 '0ボタンからokボタン右に移動
46930 case 0:
46940 No=-1:sp_on 14,1:sp_on 13,0
46950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
46960 '0ボタンからokボタン 右に移動　ここまで
46970 'OKボタンで右を押して何もしない
46980 case -1:
46990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47000 case 1:
47010 No=2:sp_on 9,1:sp_on 6,0
47020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47030 case 2:
47040 No=3:sp_on 12,1:sp_on 9,0
47050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47060 case 3:
47070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47080 case 4:
47090 No=5:sp_on 8,1:sp_on 5,0
47100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47110 case 5:
47120 No=6:sp_on 11,1:sp_on 8,0
47130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47140 case 7:
47150 No=8:sp_on 7,1:sp_on 4,0
47160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47170 case 8:
47180 No=9:sp_on 10,1:sp_on 7,0
47190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47200 case 9:
47210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47220 case 6:
47230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47240 end select
47250 'Okから右ボタンを押して何もしない ここまで
47260 endif
47270 '十字キー　ここまで
47280 '右の丸ボタン + Enter key 決定キー
47290 if ((bg=2) or (key$=chr$(13))) then
47300 select case count
47310 case 0:
47320 if (No=-1) then No=0
47330 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
47340 if (buf_female_day > 1 and buf_female_day < 10)  then
47350 buf_female_Day$ = str$(buf_female_day)
47360 'buf_month=No
47370 endif
47380 if (buf_female_day = 1)  then
47390 buf_female_Day$ = str$(buf_female_day) + "*"
47400 'c=buf_month
47410 endif
47420 locate 1,3
47430 print "                                     "
47440 color RGB(255,255,255)
47450 locate 1,3
47460 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47470 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47480 case 1:
47490 count = 2:
47500 'c = val(buf_Month$)
47510 if (No = -1) then
47520 'count=0
47530 No=0
47540 day=buf_female_day
47550 buf_female_day=val(buf_female_day$)
47560 day=bu_female_day
47570 buf_female_day(1)=day
47580 '生まれた日に飛ぶ
47590 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47600 else
47610 bu_female_day = c*10 + No
47620 'if (buf_month = 1) then
47630 'buf_Month$ = str$(buf_month)
47640 'endif
47650 buf_female_day$ = str$(buf_female_day)
47660 buf_female_day(1) = buf_female_day
47670 locate 0,3
47680 print "                                           "
47690 locate 1,3
47700 color Rgb(255,255,255)
47710 print "女性の生まれた日(1月~31月):" + buf_female_Day$
47720 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47730 endif
47740 case 2:
47750 '==================================
47760 '何もしない
47770 'coun = 2
47780 '==================================
47790 'c= val(buf_Month$)
47800 'buf_month = c*10 + No
47810 'buf_Month$ = str$(buf_month)
47820 'locate 2,3
47830 'print "上司の生まれた月(1月～12月):";buf_Month$
47840 'goto Jyoushi_Input_Born_Month2:
47850 'case 3:
47860 'count=4
47870 'b=val(buf_month$)
47880 'buf_month=c*10+No
47890 'buf_Month$=str$(buf_month)
47900 'locate 2,3
47910 'print "上司の生まれた月(1月～12月):";buf_Month$
47920 'buf_month=val(buf_Month$)
47930 'year=val(buf_year$)
47940 if (No=-1) then
47950 No=0
47960 goto Danjyo_Aisyou_Input_Male_Born_Day:
47970 else
47980 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
47990 endif
48000 'case 4:
48010 'bufyear=buf_year
48020 'if (No=-1) then
48030 'buf_month = val(buf_Month$)
48040 'month = buf_month
48050 'sp_on 14,0
48060 'goto Input_Born_Day:
48070 'else
48080 'goto Input_Born_Month2:
48090 'endif
48100 end select
48110 endif
48120 '左の丸ボタン　キャンセル
48130 if (bg2=2) then
48140 select case count2
48150 case 0:
48160 if (No = -1) then
48170 buf_female_day=0:buf_female_Day$="**"
48180 count=0
48190 'goto rewrite2:
48200 else
48210 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
48220 buf_female_day = 0:buf_female_Day$ = "**"
48230 locate 0,3
48240 color rgb(255,255,255)
48250 print "                                       "
48260 goto rewrite2:
48270 if (No>12) then
48280 ui_msg"値が範囲外です。"
48290 goto rewrite2:
48300 endif
48310 endif
48320 endif
48330 rewrite2:
48340 locate 2,3
48350 color rgb(255,255,255)
48360 print "                                      "
48370 locate 2,3
48380 print "女性の生まれた日(1月~31月):"+buf_female_Day$
48390 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
48400 end select
48410 'endif
48420 endif
48430 end
48440 '-------生まれた日　女性 ここまで-------------
48450 '1.男女の相性 ここまで
48460 '2.ビジネスの相性　
48470 '1.1人目のビジネスの相性　名前入力　1人目
48480 Business_Aishou_Input_1_parson:
48490 No=0:color RGB(255,255,255)
48500 cls 3:init "kb:2"
48510 gload Gazo$ + "Screen1.png",0,0,0
48520 gload Gazo$ + "downscreen.png",0,0,800
48530 play "":color rgb(255,0,0):name$ = ""
48540 locate 0,1
48550 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
48560 color rgb(255,255,255):
48570 locate 0,3
48580 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
48590 print "入れてください" + chr$(13)
48600 locate 0,15:color rgb(0,0,0)
48610 Input "1人目の名前:",name$
48620 'color rgb(0,0,0)
48630 'locate 0,13:print "                                     "
48640 'locate 0,13:print "1人目の名前を入力してエンターキー":
48650 'buffer_name$(0):1人目の名前
48660 buffer_name$(0) = name$:
48670 goto Business_Aishou_Input_2_Parson:
48680 '2.2人目のビジネスの相性 名前入力 2人目
48690 Business_Aishou_Input_2_Parson:
48700 cls 3:init "kb:2":name$ = "":No=0
48710 gload Gazo$ + "Screen1.png",0,0,0
48720 gload Gazo$ + "downscreen.png",0,0,800
48730 color rgb(255,0,0)
48740 'Title
48750 locate 0,1
48760 print "ビジネスの相性　2人目"
48770 locate 0,3
48780 color rgb(255,255,255)
48790 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
48800 print "入れてください" + chr$(13)
48810 locate 0,15:color rgb(0,0,0)
48820 Input "2人目の名前:",name$
48830 'color rgb(0,0,0)
48840 'locate 0,15:print "                                              "
48850 'locate 0,15:print "2人目の名前を入力してエンター ":
48860 '2人目
48870 '2人目の名前を入れるに代入
48880 buffer_name$(1) = name$:
48890 goto Select_jyoushi:
48900 '3.上司の選択
48910 Select_jyoushi:
48920 cls 3:gload Gazo$ + "Screen1.png",0,0,0
48930 gload Gazo$ + "downscreen.png",0,0,800
48940 init "kb:4":No=0
48950 color rgb(0,0,255)
48960 locate 1,1
48970 print "上司の選択"
48980 color rgb(255,255,255)
48990 locate 0,4:print "名前から上司の方を選んでください"
49000 locate 0,6
49010 print " :";buffer_name$(0);"が上 司";chr$(13)
49020 locate 0,8
49030 print " :";buffer_name$(1);"が上 司";chr$(13)
49040 locate 0,15:
49050 print "                                     "
49060 locate 0,15:color rgb(0,0,0)
49070 print "上司の方を選んで右の丸ボタン"
49080 sp_on 0,1:sp_on 1,0:sp_on 2,0
49090 Select_jyoushi2:
49100 'ここでNo=0をおいてはいけない
49110 y=0:key$="":bg=0:
49120 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
49130 y = stick(1)
49140 key$ = inkey$
49150 bg = strig(1)
49160 pause 5
49170 wend
49180 '1.カーソル下の処理　or 十字キーの下処理
49190 if ((key$ = chr$(31)) or (y = 1)) then
49200 select case No
49210 case 0:
49220 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49230 case 1:
49240 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
49250 end select
49260 endif
49270 '2.カーソル上処理　or 十字キーの上の処理
49280 if ((key$ = chr$(30)) or (y = -1)) then
49290 select case No
49300 case 0:
49310 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
49320 case 1:
49330 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
49340 end select
49350 endif
49360 if ((key$ = chr$(13)) or (bg = 2)) then
49370 select case No
49380 case 0:
49390 '上司(name1)を配列に代入
49400 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49410 case 1:
49420 '上司（name2)を配列に代入
49430 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
49440 end select
49450 endif
49460 '3.決定ボタン　Enter or 右の丸ボタン
49470 '1.誕生日入力
49480 '1-1.生まれた年を入力
49490 'Jyoushi_born_year:
49500 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
49510 '---------------------------------------------'
49520 '誕生日入力(生れた年代)
49530 Jyoushi_Input_Seireki:
49540 'buf_Jyoushi_Born_Year:上司の生まれた年代
49550 'buf_Jyoushi_Born_Day(0) = born_year
49560 cls 3:play "":count=0:count2=0
49570 init"kb:4"
49580 'No=-1:Okのとき
49590 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
49600 for i=0 to 3
49610 buf_Jyoushi_Born_Day(i)=0
49620 next i
49630 gload Gazo$ + "Screen2.png",0,0,0
49640 gload Gazo$ + "downscreen.png",0,0,800
49650 'Init"kb:2"
49660 '音声ファイル再生 2023.06.07
49670 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
49680 font 48
49690 locate 0,1
49700 '文字色：黒　 color rgb(0,0,0)
49710 color rgb(255,255,255)
49720 print "上司の生まれた年代を入れて下さい" + chr$(13)
49730 color rgb(255,255,255)
49740 locate 1,3
49750 print "上司の生まれた年代(西暦4桁):";buf_year$
49760 color rgb(255,255,255)
49770 'locate 4,6:print ":7"
49780 'locate 9,6:print ":8"
49790 'locate 12,6:print ":9"
49800 'locate 4,6
49810 'print ":7  :8  :9" + chr$(13)
49820 'color rgb(255,255,255)
49830 'locate 4,8
49840 'print ":4  :5  :6" + chr$(13)
49850 'color rgb(255,255,255)
49860 'locate 4,10
49870 'print ":1  :2  :3" + chr$(13)
49880 'locate 4,12
49890 'print "    :0"
49900 'locate 12,12
49910 'color rgb(0,0,255)
49920 'print ":Ok"
49930 sp_on 4,0: sp_on 5,0:sp_on 6,0
49940 sp_on 7,0:sp_on 8,0:sp_on 9,0
49950 sp_on 10,0:sp_on 11,0:sp_on 12,0
49960 sp_on 13,0:sp_on 14,1
49970 Jyoushi_Input_Seireki2:
49980 key$="":bg=0:y=0:y2=0:bg2=0:
49990 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
50000 key$ = inkey$
50010 bg = strig(1)
50020 y = stick(1)
50030 y2 = stick(0)
50040 bg2=strig(0)
50050 pause 5
50060 wend
50070 '十字キー　ここから
50080 '上の矢印　または、十字キー上
50090 if ((y = -1) or (key$ = chr$(30))) then
50100 select case No
50110 'No=-1:okのとき:初期の状態
50120 '0kボタンから３に移動
50130 '上に行く 処理
50140 case -1:
50150 No=3:sp_on 12,1:sp_on 14,0
50160 pause 200:goto Jyoushi_Input_Seireki2:
50170 '選択肢:3
50180 '3ボタンから 6に移動
50190 case 3:
50200 No=6:sp_on 12,0:sp_on 11,1
50210 pause 200:goto Jyoushi_Input_Seireki2:
50220 '6ボタンから ９に移動
50230 case 6:
50240 No=9:sp_on 10,1:sp_on 11,0
50250 pause 200:goto Jyoushi_Input_Seireki2:
50260 '6ボタンから ９に移動　ここまで
50270 '9で上を押して何もしない
50280 case 9:
50290 '何もしない
50300 No=9
50310 pause 200:goto Jyoushi_Input_Seireki2:
50320 '9で上を押しても何もしない　ここまで
50330 '上　 0ボタンから2ボタン
50340 'sp_on 6,1:1
50350 'sp_on 8,1:5
50360 'sp_on 7,1:7
50370 case 0:
50380 No=2:sp_on 13,0:sp_on 9,1:
50390 pause 200:goto Jyoushi_Input_Seireki2:
50400 '上  0ボタンから2ボタン　ここまで
50410 '2から５になる 上
50420 case 2:
50430 No=5:sp_on 8,1:sp_on 9,0:
50440 pause 200:goto Jyoushi_Input_Seireki2:
50450 case 5:
50460 No=8:sp_on 7,1:sp_on 8,0
50470 pause 200:goto Jyoushi_Input_Seireki2:
50480 case 8:
50490 pause 200:goto Jyoushi_Input_Seireki2:
50500 case 1:
50510 No=4:sp_on 5,1:sp_on 6,0
50520 pause 200:goto Jyoushi_Input_Seireki2:
50530 case 4:
50540 No=7:sp_on 4,1:sp_on 5,0
50550 pause 200:goto Jyoushi_Input_Seireki2:
50560 case 7:
50570 pause 200:goto Jyoushi_Input_Seireki2:
50580 end select
50590 endif
50600 '左３　ここまで
50610 '下の矢印
50620 '中央 2
50630 if ((y=1) or (key$ = chr$(31))) then
50640 select case No
50650 '9から６に下げる
50660 case 9:
50670 No=6:sp_on 11,1:sp_on 10,0
50680 pause 200:goto Jyoushi_Input_Seireki2:
50690 '6から３に下げる
50700 case 6:
50710 No=3:sp_on 12,1:sp_on 11,0
50720 pause 200:goto Jyoushi_Input_Seireki2:
50730 '3から０ｋに変える
50740 case 3:
50750 No=-1:sp_on 14,1:sp_on 12,0
50760 pause 200:goto Jyoushi_Input_Seireki2:
50770 'Okから下のボタンを押しても何もしない
50780 case -1:
50790 pause 200:goto Jyoushi_Input_Seireki2:
50800 case 8:
50810 No=5:sp_on 8,1:sp_on 7,0
50820 pause 200:goto Jyoushi_Input_Seireki2:
50830 case 5:
50840 No=2:sp_on 9,1:sp_on 8,0
50850 pause 200:goto Jyoushi_Input_Seireki2:
50860 case 2:
50870 No=0:sp_on 13,1:sp_on 9,0
50880 pause 200:goto Jyoushi_Input_Seireki2:
50890 case 0:
50900 pause 200:goto Jyoushi_Input_Seireki2:
50910 case 7:
50920 No=4:sp_on 5,1:sp_on 4,0
50930 pause 200:goto Jyoushi_Input_Seireki2:
50940 case 4:
50950 No=1:sp_on 6,1:sp_on 5,0
50960 pause 200:goto Jyoushi_Input_Seireki2:
50970 case 1:
50980 pause 200:goto Jyoushi_Input_Seireki2:
50990 end select
51000 endif
51010 '左へボタン 十字キー　左　or 　カーソル左
51020 if ((y2 = -1) or (key$ = chr$(29))) then
51030 select case No
51040 'Ok ボタン  Okから　左　０に行く
51050 case -1:
51060 No=0:sp_on 13,1:sp_on 14,0
51070 pause 200:goto Jyoushi_Input_Seireki2:
51080 '0 ボタン  左　何もしない
51090 case 0:
51100 pause 200:goto Jyoushi_Input_Seireki2:
51110 case 3:
51120 No=2:sp_on 9,1:sp_on 12,0:
51130 pause 200:goto Jyoushi_Input_Seireki2:
51140 case 2:
51150 No=1:sp_on 6,1:sp_on 9,0:
51160 pause 200:goto Jyoushi_Input_Seireki2:
51170 case 1:
51180 pause 200:goto Jyoushi_Input_Seireki2:
51190 case 6:
51200 No=5:sp_on 8,1:sp_on 11,0
51210 pause 200:goto Jyoushi_Input_Seireki2:
51220 case 5:
51230 No=4:sp_on 5,1:sp_on 8,0
51240 pause 200:goto Jyoushi_Input_Seireki2:
51250 case 4:
51260 pause 200:goto Jyoushi_Input_Seireki2:
51270 case 9:
51280 No=8:sp_on 7,1:sp_on 10,0
51290 pause 200:goto Jyoushi_Input_Seireki2:
51300 case 8:
51310 No=7:sp_on 4,1:sp_on 7,0
51320 pause 200:goto Jyoushi_Input_Seireki2:
51330 case 7:
51340 pause 200:goto Jyoushi_Input_Seireki2:
51350 end select
51360 endif
51370 '右  十字キー　右　or カーソル　右
51380 if ((y2 = 1) or (key$ = chr$(28))) then
51390 select case No
51400 '0ボタンからokボタン右に移動
51410 case 0:
51420 No=-1:sp_on 14,1:sp_on 13,0
51430 pause 200:goto Jyoushi_Input_Seireki2:
51440 '0ボタンからokボタン 右に移動　ここまで
51450 'OKボタンで右を押して何もしない
51460 case -1:
51470 pause 200:goto Jyoushi_Input_Seireki2:
51480 case 1:
51490 No=2:sp_on 9,1:sp_on 6,0
51500 pause 200:goto Jyoushi_Input_Seireki2:
51510 case 2:
51520 No=3:sp_on 12,1:sp_on 9,0
51530 pause 200:goto Jyoushi_Input_Seireki2:
51540 case 3:
51550 pause 200:goto Jyoushi_Input_Seireki2:
51560 case 4:
51570 No=5:sp_on 8,1:sp_on 5,0
51580 pause 200:goto Jyoushi_Input_Seireki2:
51590 case 5:
51600 No=6:sp_on 11,1:sp_on 8,0
51610 pause 200:goto Jyoushi_Input_Seireki2:
51620 case 7:
51630 No=8:sp_on 7,1:sp_on 4,0
51640 pause 200:goto Jyoushi_Input_Seireki2:
51650 case 8:
51660 No=9:sp_on 10,1:sp_on 7,0
51670 pause 200:goto Jyoushi_Input_Seireki2:
51680 case 9:
51690 pause 200:goto Jyoushi_Input_Seireki2:
51700 case 6:
51710 pause 200:goto Jyoushi_Input_Seireki2:
51720 end select
51730 'Okから右ボタンを押して何もしない ここまで
51740 endif
51750 '十字キー　ここまで
51760 '==============================
51770 'ここから
51780 '==============================
51790 if ((bg = 2) or (key$ = chr$(13))) then
51800 select case count
51810 case 0:
51820 count = 1
51830 if (No = -1) then
51840 count = 0:No=0
51850 buf_Jyoushi_Born_Day(0) = No
51860 'Okボタンを押したとき
51870 goto Jyoushi_Input_Seireki2:
51880 else
51890 'Okボタン以外が押されたとき
51900 if (No >= 1 and No <= 2) then
51910 buf_year$="":buf_year$ = str$(No) + "***"
51920 buf_year = No:a= No
51930 buf_Jyoushi_Born_Day(0) = No
51940 locate 1,3
51950 color rgb(255,255,255)
51960 print "上司の生まれた年代(西暦4桁):";buf_year$
51970 goto Jyoushi_Input_Seireki2:
51980 else
51990 count=0
52000 ui_msg"数字が範囲外になります。"
52010 buf_year$="":buf_year=0
52020 goto Jyoushi_Input_Seireki2:
52030 endif
52040 endif
52050 case 1:
52060 count = 2
52070 if (No = -1) then
52080 count = 1
52090 goto Jyoushi_Input_Seireki2:
52100 else
52110 buf_year = a * 10 + No
52120 b=buf_year
52130 buf_year$ = str$(buf_year) + "**"
52140 buf_Jyoushi_Born_Day(0)=buf_year
52150 locate 1,3
52160 color rgb(255,255,255)
52170 print "                                                                "
52180 locate 1,3
52190 print "上司の生まれた年代(西暦4桁):" + buf_year$
52200 'if (No = -1) then
52210 'count=1
52220 goto Jyoushi_Input_Seireki2:
52230 endif
52240 case 2:
52250 count=3
52260 if (No=-1) then
52270 count =2
52280 goto Jyoushi_Input_Seireki2:
52290 else
52300 buf_year = b * 10 + No
52310 c=buf_year
52320 buf_year$ = str$(buf_year) + "*"
52330 buf_Jyoushi_Born_Day(0) = buf_year
52340 locate 1,3
52350 color rgb(255,255,255)
52360 print "                                        "
52370 locate 1,3
52380 print "上司の生まれた年代(西暦4桁):";buf_year$
52390 goto Jyoushi_Input_Seireki2:
52400 endif
52410 case 3:
52420 count=4
52430 if (No = -1) then
52440 No=0
52450 goto Jyoushi_Input_Seireki2:
52460 else
52470 buf_year = c * 10 + No
52480 buf_year$ = str$(buf_year)
52490 buf_Jyoushi_Born_Day(0) = buf_year
52500 locate 1,3
52510 color RGB(255,255,255)
52520 print "                                      "
52530 locate 1,3
52540 print "上司の生まれた年代(西暦4桁):";buf_year$
52550 buf_year=val(buf_year$)
52560 'year=val(buf_year$)
52570 'if (No=-1) then
52580 'goto Input_Born_Month:
52590 'else
52600 goto Jyoushi_Input_Seireki2:
52610 endif
52620 case 4:
52630 'bufyear=buf_year
52640 if (No=-1) then
52650 buf_year = val(buf_year$)
52660 buf_Jyoushi_Born_Day(0)=buf_year
52670 sp_on 14,0:No=0
52680 goto Jyoushi_Input_Born_Month:
52690 else
52700 goto Jyoushi_Input_Seireki2:
52710 endif
52720 end select
52730 endif
52740 '===========================
52750 'ここまでを部下のところにコピーする.
52760 '===========================
52770 if (bg2 = 2) then
52780 select case count2
52790 case 0:
52800 if (No = -1) then
52810 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
52820 count=0
52830 locate 1,3
52840 color rgb(255,255,255)
52850 print "                                      "
52860 locate 1,3
52870 print "上司の生まれた年代（西暦4桁):" + buf_year$
52880 goto Jyoushi_Input_Seireki2:
52890 else
52900 '(buf_year=0) then
52910 buf_year=0:buf_year$="****"
52920 locate 1,3
52930 print "                                       "
52940 locate 1,3
52950 print "上司の生まれた年代(西暦4桁):"+buf_year$
52960 goto Jyoushi_Input_Seireki2:
52970 'endif
52980 endif
52990 end select
53000 endif
53010 'Input"上司の生れた年代(4桁,〜2025年):",year
53020 'if year > 2025 then goto Jyoushi_Input_Seireki:
53030 'if year = 123 then cls 3:cls 4:goto Main_Screen:
53040 '"4桁目"
53050 'bufyear4 = fix(year / 1000)
53060 '"3桁目"
53070 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
53080 '"2桁目"
53090 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
53100 '"1桁目"
53110 'bufyear1 = fix((year - ((bufyear4*
53120 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
53130 '2.生まれた月を入力
53140 Jyoushi_Input_Born_Month:
53150 cls 3:play "":count=0:count2=0
53160 'No=-1:Okのとき
53170 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
53180 for i=0 to 1
53190 buf_month(i)=0
53200 next i
53210 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53220 gload Gazo$ + "Screen2.png",0,0,0
53230 gload Gazo$ + "downscreen.png",0,0,800
53240 'Init"kb:4"
53250 '音声ファイル再生 2023.06.07
53260 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53270 font 48
53280 locate 0,1
53290 '文字色：黒　 color rgb(0,0,0)
53300 '文字色:白
53310 color rgb(255,255,255)
53320 print "上司の生まれた月を入れて下さい" + chr$(13)
53330 '文字色:白
53340 color rgb(255,255,255)
53350 locate 1,3
53360 '文字色:白
53370 print "上司の生まれた月(1月~12月):"+buf_Month$
53380 color rgb(255,255,255)
53390 'locate 4,6:print ":7"
53400 'locate 9,6:print ":8"
53410 'locate 12,6:print ":9"
53420 'locate 4,6
53430 '文字色:赤
53440 'print ":7  :8  :9" + chr$(13)
53450 'color rgb(255,255,255)
53460 'locate 4,8
53470 'print ":4  :5  :6" + chr$(13)
53480 'color rgb(255,255,255)
53490 'locate 4,10
53500 'print ":1  :2  :3" + chr$(13)
53510 'locate 4,12
53520 'print "    :0"
53530 'locate 12,12
53540 'color rgb(0,0,255)
53550 'print ":Ok"
53560 sp_on 4,0: sp_on 5,0:sp_on 6,0
53570 sp_on 7,0:sp_on 8,0:sp_on 9,0
53580 sp_on 10,0:sp_on 11,0:sp_on 12,0
53590 sp_on 13,0:sp_on 14,1
53600 Jyoushi_Input_Born_Month2:
53610 key$="":bg=0:y=0:y2=0:bg2=0
53620 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53630 key$ = inkey$
53640 bg = strig(1)
53650 y = stick(1)
53660 y2 = stick(0)
53670 bg2 = strig(0)
53680 pause 5
53690 wend
53700 '十字キー　ここから
53710 '上の矢印　または、十字キー上
53720 if ((y = -1) or (key$ = chr$(30))) then
53730 select case No
53740 'No=-1:okのとき:初期の状態
53750 '0kボタンから３に移動
53760 '上に行く 処理
53770 case -1:
53780 No=3:sp_on 12,1:sp_on 14,0
53790 pause 200:goto Jyoushi_Input_Born_Month2:
53800 '選択肢:3
53810 '3ボタンから 6に移動
53820 case 3:
53830 No=6:sp_on 12,0:sp_on 11,1
53840 pause 200:goto Jyoushi_Input_Born_Month2:
53850 '6ボタンから ９に移動
53860 case 6:
53870 No=9:sp_on 10,1:sp_on 11,0
53880 pause 200:goto Jyoushi_Input_Born_Month2:
53890 '6ボタンから ９に移動　ここまで
53900 '9で上を押して何もしない
53910 case 9:
53920 '何もしない
53930 No=9
53940 pause 200:goto Jyoushi_Input_Born_Month2:
53950 '9で上を押しても何もしない　ここまで
53960 '上　 0ボタンから2ボタン
53970 'sp_on 6,1:1
53980 'sp_on 8,1:5
53990 'sp_on 7,1:7
54000 case 0:
54010 No=2:sp_on 13,0:sp_on 9,1:
54020 pause 200:goto Jyoushi_Input_Born_Month2:
54030 '上  0ボタンから2ボタン　ここまで
54040 '2から５になる 上
54050 case 2:
54060 No=5:sp_on 8,1:sp_on 9,0:
54070 pause 200:goto Jyoushi_Input_Born_Month2:
54080 case 5:
54090 No=8:sp_on 7,1:sp_on 8,0
54100 pause 200:goto Jyoushi_Input_Born_Month2:
54110 case 8:
54120 pause 200:goto Input_Born_Month2:
54130 case 1:
54140 No=4:sp_on 5,1:sp_on 6,0
54150 pause 200:goto Jyoushi_Input_Born_Month2:
54160 case 4:
54170 No=7:sp_on 4,1:sp_on 5,0
54180 pause 200:goto Jyoushi_Input_Born_Month2:
54190 case 7:
54200 pause 200:goto Input_Born_Month2:
54210 end select
54220 endif
54230 '左３　ここまで
54240 '下の矢印
54250 '中央 2
54260 if ((y=1) or (key$ = chr$(31))) then
54270 select case No
54280 '9から６に下げる
54290 case 9:
54300 No=6:sp_on 11,1:sp_on 10,0
54310 pause 200:goto Jyoushi_Input_Born_Month2:
54320 '6から３に下げる
54330 case 6:
54340 No=3:sp_on 12,1:sp_on 11,0
54350 pause 200:goto Jyoushi_Input_Born_Month2:
54360 '3から０ｋに変える
54370 case 3:
54380 No=-1:sp_on 14,1:sp_on 12,0
54390 pause 200:goto Jyoushi_Input_Born_Month2:
54400 'Okから下のボタンを押しても何もしない
54410 case -1:
54420 pause 200:goto Jyoushi_Input_Born_Month2:
54430 case 8:
54440 No=5:sp_on 8,1:sp_on 7,0
54450 pause 200:goto Jyoushi_Input_Born_Month2:
54460 case 5:
54470 No=2:sp_on 9,1:sp_on 8,0
54480 pause 200:goto Jyoushi_Input_Born_Month2:
54490 case 2:
54500 No=0:sp_on 13,1:sp_on 9,0
54510 pause 200:goto Jyoushi_Input_Born_Month2:
54520 case 0:
54530 pause 200:goto Jyoushi_Input_Born_Month2:
54540 case 7:
54550 No=4:sp_on 5,1:sp_on 4,0
54560 pause 200:goto Jyoushi_Input_Born_Month2:
54570 case 4:
54580 No=1:sp_on 6,1:sp_on 5,0
54590 pause 200:goto Jyoushi_Input_Born_Month2:
54600 case 1:
54610 pause 200:goto Jyoushi_Input_Born_Month2:
54620 end select
54630 endif
54640 '左へボタン 十字キー　左　or 　カーソル左
54650 if ((y2 = -1) or (key$ = chr$(29))) then
54660 select case No
54670 'Ok ボタン  Okから　左　０に行く
54680 case -1:
54690 No=0:sp_on 13,1:sp_on 14,0
54700 pause 200:goto Jyoushi_Input_Born_Month2:
54710 '0 ボタン  左　何もしない
54720 case 0:
54730 pause 200:goto Jyoushi_Input_Born_Month2:
54740 case 3:
54750 No=2:sp_on 9,1:sp_on 12,0:
54760 pause 200:goto Jyoushi_Input_Born_Month2:
54770 case 2:
54780 No=1:sp_on 6,1:sp_on 9,0:
54790 pause 200:goto Jyoushi_Input_Born_Month2:
54800 case 1:
54810 pause 200:goto Jyoushi_Input_Born_Month2:
54820 case 6:
54830 No=5:sp_on 8,1:sp_on 11,0
54840 pause 200:goto Jyoushi_Input_Born_Month2:
54850 case 5:
54860 No=4:sp_on 5,1:sp_on 8,0
54870 pause 200:goto Jyoushi_Input_Born_Month2:
54880 case 4:
54890 pause 200:goto Jyoushi_Input_Born_Month2:
54900 case 9:
54910 No=8:sp_on 7,1:sp_on 10,0
54920 pause 200:goto Input_Born_Month2:
54930 case 8:
54940 No=7:sp_on 4,1:sp_on 7,0
54950 pause 200:goto Jyoushi_Input_Born_Month2:
54960 case 7:
54970 pause 200:goto Jyoushi_Input_Born_Month2:
54980 end select
54990 endif
55000 '右  十字キー　右　or カーソル　右
55010 if ((y2 = 1) or (key$ = chr$(28))) then
55020 select case No
55030 '0ボタンからokボタン右に移動
55040 case 0:
55050 No=-1:sp_on 14,1:sp_on 13,0
55060 pause 200:goto Jyoushi_Input_Born_Month2:
55070 '0ボタンからokボタン 右に移動　ここまで
55080 'OKボタンで右を押して何もしない
55090 case -1:
55100 pause 200:goto Jyoushi_Input_Born_Month2:
55110 case 1:
55120 No=2:sp_on 9,1:sp_on 6,0
55130 pause 200:goto Jyoushi_Input_Born_Month2:
55140 case 2:
55150 No=3:sp_on 12,1:sp_on 9,0
55160 pause 200:goto Jyoushi_Input_Born_Month2:
55170 case 3:
55180 pause 200:goto Jyoushi_Input_Born_Month2:
55190 case 4:
55200 No=5:sp_on 8,1:sp_on 5,0
55210 pause 200:goto Jyoushi_Input_Born_Month2:
55220 case 5:
55230 No=6:sp_on 11,1:sp_on 8,0
55240 pause 200:goto Jyoushi_Input_Born_Month2:
55250 case 7:
55260 No=8:sp_on 7,1:sp_on 4,0
55270 pause 200:goto Jyoushi_Input_Born_Month2:
55280 case 8:
55290 No=9:sp_on 10,1:sp_on 7,0
55300 pause 200:goto Jyoushi_Input_Born_Month2:
55310 case 9:
55320 pause 200:goto Jyoushi_Input_Born_Month2:
55330 case 6:
55340 pause 200:goto Jyoushi_Input_Born_Month2:
55350 end select
55360 'Okから右ボタンを押して何もしない ここまで
55370 endif
55380 '十字キー　ここまで
55390 '右の丸ボタン + Enter key 決定キー
55400 if ((bg=2) or (key$=chr$(13))) then
55410 select case count
55420 case 0:
55430 if (No=-1) then No=0
55440 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
55450 if (buf_month > 1 and buf_month < 10)  then
55460 buf_Month$ = str$(buf_month)
55470 'buf_month=No
55480 endif
55490 if (buf_month = 1)  then
55500 buf_Month$ = str$(buf_month) + "*"
55510 'c=buf_month
55520 endif
55530 locate 1,3
55540 print "                                     "
55550 color RGB(255,255,255)
55560 locate 1,3
55570 print "上司の生まれた月(1月~12月):" + buf_Month$
55580 goto Jyoushi_Input_Born_Month2:
55590 case 1:
55600 count = 2:
55610 'c = val(buf_Month$)
55620 if (No = -1) then
55630 'count=0
55640 No=0
55650 month=buf_month
55660 buf_month=val(buf_Month$)
55670 month=buf_month
55680 buf_Jyoushi_Born_Day(1)=month
55690 '生まれた日に飛ぶ
55700 goto Jyoushi_Input_Born_Day:
55710 else
55720 buf_month = c*10 + No
55730 'if (buf_month = 1) then
55740 'buf_Month$ = str$(buf_month)
55750 'endif
55760 buf_Month$ = str$(buf_month)
55770 buf_Jyoushi_Born_Day(1) = buf_month
55780 locate 0,3
55790 print "                                           "
55800 locate 1,3
55810 color Rgb(255,255,255)
55820 print "上司の生まれた月(1月~12月):" + buf_Month$
55830 goto Jyoushi_Input_Born_Month2:
55840 endif
55850 case 2:
55860 '==================================
55870 '何もしない
55880 'coun = 2
55890 '==================================
55900 'c= val(buf_Month$)
55910 'buf_month = c*10 + No
55920 'buf_Month$ = str$(buf_month)
55930 'locate 2,3
55940 'print "上司の生まれた月(1月～12月):";buf_Month$
55950 'goto Jyoushi_Input_Born_Month2:
55960 'case 3:
55970 'count=4
55980 'b=val(buf_month$)
55990 'buf_month=c*10+No
56000 'buf_Month$=str$(buf_month)
56010 'locate 2,3
56020 'print "上司の生まれた月(1月～12月):";buf_Month$
56030 'buf_month=val(buf_Month$)
56040 'year=val(buf_year$)
56050 if (No=-1) then
56060 No=0
56070 goto Jyoushi_Input_Born_Day:
56080 else
56090 goto Jyoushi_Input_Born_Month2:
56100 endif
56110 'case 4:
56120 'bufyear=buf_year
56130 'if (No=-1) then
56140 'buf_month = val(buf_Month$)
56150 'month = buf_month
56160 'sp_on 14,0
56170 'goto Input_Born_Day:
56180 'else
56190 'goto Input_Born_Month2:
56200 'endif
56210 end select
56220 endif
56230 '左の丸ボタン　キャンセル
56240 if (bg2=2) then
56250 select case count2
56260 case 0:
56270 if (No = -1) then
56280 buf_month=0:buf_Month$="**"
56290 count=0
56300 'goto rewrite2:
56310 else
56320 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
56330 buf_month = 0:buf_Month$ = "**"
56340 locate 0,3
56350 color rgb(255,255,255)
56360 print "                                       "
56370 goto rewrite2:
56380 if (No>12) then
56390 ui_msg"値が範囲外です。"
56400 goto rewrite2:
56410 endif
56420 endif
56430 endif
56440 rewrite2:
56450 locate 2,3
56460 color rgb(255,255,255)
56470 print "                                      "
56480 locate 2,3
56490 print "上司の生まれた月(1月~12月):"+buf_Month$
56500 goto Jyoushi_Input_Born_Month2:
56510 end select
56520 'endif
56530 endif
56540 end
56550 'end
56560 '生れた日を入力
56570 Jyoushi_Input_Born_Day:
56580 '生まれた日入力
56590 cls 3:play ""
56600 'No=-1:Okのとき
56610 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
56620 for i=0 to 1
56630 buf_day(i)=0
56640 next i
56650 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56660 gload Gazo$ + "Screen2.png",0,0,0
56670 gload Gazo$ + "downscreen.png",0,0,800
56680 'Init"kb:2"
56690 '音声ファイル再生 2023.06.07
56700 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
56710 font 48
56720 locate 1,1
56730 '文字色：黒　 color rgb(0,0,0)
56740 color rgb(255,255,255)
56750 print "上司の生まれた日を入れて下さい" + chr$(13)
56760 locate 1,3
56770 color rgb(255,255,255)
56780 print "                                      "
56790 locate 1,3
56800 print "上司の生まれた日(1日~31日):"+buf_Day$
56810 color rgb(255,255,255)
56820 'locate 4,6:print ":7"
56830 'locate 9,6:print ":8"
56840 'locate 12,6:print ":9"
56850 'locate 4,6
56860 'print ":7  :8  :9" + chr$(13)
56870 'color rgb(255,255,255)
56880 'locate 4,8
56890 'print ":4  :5  :6" + chr$(13)
56900 'color rgb(255,255,255)
56910 'locate 4,10
56920 'print ":1  :2  :3" + chr$(13)
56930 'locate 4,12
56940 'print "    :0"
56950 'locate 12,12
56960 'color rgb(0,0,255)
56970 'print ":Ok"
56980 sp_on 4,0: sp_on 5,0:sp_on 6,0
56990 sp_on 7,0:sp_on 8,0:sp_on 9,0
57000 sp_on 10,0:sp_on 11,0:sp_on 12,0
57010 sp_on 13,0:sp_on 14,1
57020 Jyoushi_Input_Born_Day2:
57030 key$="":bg=0:y=0:y2=0:bg2=0:
57040 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
57050 key$ = inkey$
57060 bg = strig(1)
57070 y = stick(1)
57080 y2 = stick(0)
57090 bg2 = strig(0)
57100 pause 5
57110 wend
57120 '十字キー　ここから
57130 '上の矢印　または、十字キー上
57140 if ((y = -1) or (key$ = chr$(30))) then
57150 select case No
57160 'No=-1:okのとき:初期の状態
57170 '0kボタンから３に移動
57180 '上に行く 処理
57190 case -1:
57200 No=3:sp_on 12,1:sp_on 14,0
57210 pause 200:goto Jyoushi_Input_Born_Day2:
57220 '選択肢:3
57230 '3ボタンから 6に移動
57240 case 3:
57250 No=6:sp_on 12,0:sp_on 11,1
57260 pause 200:goto Jyoushi_Input_Born_Day2:
57270 '6ボタンから ９に移動
57280 case 6:
57290 No=9:sp_on 10,1:sp_on 11,0
57300 pause 200:goto Jyoushi_Input_Born_Day2:
57310 '6ボタンから ９に移動　ここまで
57320 '9で上を押して何もしない
57330 case 9:
57340 '何もしない
57350 No=9
57360 pause 200:goto Jyoushi_Input_Born_Day2:
57370 '9で上を押しても何もしない　ここまで
57380 '上　 0ボタンから2ボタン
57390 'sp_on 6,1:1
57400 'sp_on 8,1:5
57410 'sp_on 7,1:7
57420 case 0:
57430 No=2:sp_on 13,0:sp_on 9,1:
57440 pause 200:goto Jyoushi_Input_Born_Day2:
57450 '上  0ボタンから2ボタン　ここまで
57460 '2から５になる 上
57470 case 2:
57480 No=5:sp_on 8,1:sp_on 9,0:
57490 pause 200:goto Jyoushi_Input_Born_Day2:
57500 case 5:
57510 No=8:sp_on 7,1:sp_on 8,0
57520 pause 200:goto Jyoushi_Input_Born_Day2:
57530 case 8:
57540 pause 200:goto Jyoushi_Input_Born_Day2:
57550 case 1:
57560 No=4:sp_on 5,1:sp_on 6,0
57570 pause 200:goto Jyoushi_Input_Born_Day2:
57580 case 4:
57590 No=7:sp_on 4,1:sp_on 5,0
57600 pause 200:goto Jyoushi_Input_Born_Day2:
57610 case 7:
57620 pause 200:goto Jyoushi_Input_Born_Day2:
57630 end select
57640 endif
57650 '左３　ここまで
57660 '下の矢印
57670 '中央 2
57680 if ((y=1) or (key$ = chr$(31))) then
57690 select case No
57700 '9から６に下げる
57710 case 9:
57720 No=6:sp_on 11,1:sp_on 10,0
57730 pause 200:goto Jyoushi_Input_Born_Day2:
57740 '6から３に下げる
57750 case 6:
57760 No=3:sp_on 12,1:sp_on 11,0
57770 pause 200:goto Jyoushi_Input_Born_Day2:
57780 '3から０ｋに変える
57790 case 3:
57800 No=-1:sp_on 14,1:sp_on 12,0
57810 pause 200:goto Jyoushi_Input_Born_Day2:
57820 'Okから下のボタンを押しても何もしない
57830 case -1:
57840 pause 200:goto Jyoushi_Input_Born_Day2:
57850 case 8:
57860 No=5:sp_on 8,1:sp_on 7,0
57870 pause 200:goto Jyoushi_Input_Born_Day2:
57880 case 5:
57890 No=2:sp_on 9,1:sp_on 8,0
57900 pause 200:goto Jyoushi_Input_Born_Day2:
57910 case 2:
57920 No=0:sp_on 13,1:sp_on 9,0
57930 pause 200:goto Jyoushi_Input_Born_Day2:
57940 case 0:
57950 pause 200:goto Jyoushi_Input_Born_Day2:
57960 case 7:
57970 No=4:sp_on 5,1:sp_on 4,0
57980 pause 200:goto Jyoushi_Input_Born_Day2:
57990 case 4:
58000 No=1:sp_on 6,1:sp_on 5,0
58010 pause 200:goto Jyoushi_Input_Born_Day2:
58020 case 1:
58030 pause 200:goto Jyoushi_Input_Born_Day2:
58040 end select
58050 endif
58060 '左へボタン 十字キー　左　or 　カーソル左
58070 if ((y2 = -1) or (key$ = chr$(29))) then
58080 select case No
58090 'Ok ボタン  Okから　左　０に行く
58100 case -1:
58110 No=0:sp_on 13,1:sp_on 14,0
58120 pause 200:goto Jyoushi_Input_Born_Day2:
58130 '0 ボタン  左　何もしない
58140 case 0:
58150 pause 200:goto Jyoushi_Input_Born_Day2:
58160 case 3:
58170 No=2:sp_on 9,1:sp_on 12,0:
58180 pause 200:goto Jyoushi_Input_Born_Day2:
58190 case 2:
58200 No=1:sp_on 6,1:sp_on 9,0:
58210 pause 200:goto Jyoushi_Input_Born_Day2:
58220 case 1:
58230 pause 200:goto Jyoushi_Input_Born_Day2:
58240 case 6:
58250 No=5:sp_on 8,1:sp_on 11,0
58260 pause 200:goto Jyoushi_Input_Born_Day2:
58270 case 5:
58280 No=4:sp_on 5,1:sp_on 8,0
58290 pause 200:goto Jyoushi_Input_Born_Day2:
58300 case 4:
58310 pause 200:goto Jyoushi_Input_Born_Day2:
58320 case 9:
58330 No=8:sp_on 7,1:sp_on 10,0
58340 pause 200:goto Jyoushi_Input_Born_Day2:
58350 case 8:
58360 No=7:sp_on 4,1:sp_on 7,0
58370 pause 200:goto Jyoushi_Input_Born_Day2:
58380 case 7:
58390 pause 200:goto Jyoushi_Input_Born_Day2:
58400 end select
58410 endif
58420 '右  十字キー　右　or カーソル　右
58430 if ((y2 = 1) or (key$ = chr$(28))) then
58440 select case No
58450 '0ボタンからokボタン右に移動
58460 case 0:
58470 No=-1:sp_on 14,1:sp_on 13,0
58480 pause 200:goto Jyoushi_Input_Born_Day2:
58490 '0ボタンからokボタン 右に移動　ここまで
58500 'OKボタンで右を押して何もしない
58510 case -1:
58520 pause 200:goto Jyoushi_Input_Born_Day2:
58530 case 1:
58540 No=2:sp_on 9,1:sp_on 6,0
58550 pause 200:goto Jyoushi_Input_Born_Day2:
58560 case 2:
58570 No=3:sp_on 12,1:sp_on 9,0
58580 pause 200:goto Jyoushi_Input_Born_Day2:
58590 case 3:
58600 pause 200:goto Jyoushi_Input_Born_Day2:
58610 case 4:
58620 No=5:sp_on 8,1:sp_on 5,0
58630 pause 200:goto Jyoushi_Input_Born_Day2:
58640 case 5:
58650 No=6:sp_on 11,1:sp_on 8,0
58660 pause 200:goto Jyoushi_Input_Born_Day2:
58670 case 7:
58680 No=8:sp_on 7,1:sp_on 4,0
58690 pause 200:goto Jyoushi_Input_Born_Day2:
58700 case 8:
58710 No=9:sp_on 10,1:sp_on 7,0
58720 pause 200:goto Jyoushi_Input_Born_Day2:
58730 case 9:
58740 pause 200:goto Jyoushi_Input_Born_Day2:
58750 case 6:
58760 pause 200:goto Jyoushi_Input_Born_Day2:
58770 end select
58780 'Okから右ボタンを押して何もしない ここまで
58790 endif
58800 '十字キー　ここまで
58810 '右の丸ボタンを押したとき
58820 if ((bg = 2) or (key$ = chr$(13))) then
58830 'count :決定ボタンを押した回数
58840 select case (count)
58850 '1桁目入力
58860 case 0:
58870 count = 1:
58880 if (No = -1) then
58890 '1桁目　OKでは何もしない
58900 No=c
58910 'goto Jyoushi_Input_Born_Day2:
58920 else
58930 'ok以外のボタンを押したとき
58940 buf_day = No:buf_Day$ = str$(No)
58950 buf_Jyoushi_Born_Day(2)=buf_day
58960 c=No
58970 locate 1,3
58980 print "                                      "
58990 color RGB(255,255,255)
59000 locate 1,3
59010 print "上司の生まれた日(1日~31日):" + buf_Day$
59020 endif
59030 'check2:
59040 'if (buf_day >= 1 and buf_day <= 9) then
59050 'sp_on 14,0
59060 'goto complate_jyoushi:
59070 'else
59080 'sp_on 14,0
59090 goto Jyoushi_Input_Born_Day2:
59100 'end
59110 'endif
59120 case 1:
59130 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
59140 count = 2:
59150 'locate 2,3
59160 'color RGB(255,255,255)
59170 'print "生まれた日(1日~31日):";buf_Day$
59180 'Okボタンを押したときの処理
59190 '入力値　10未満のとき
59200 'buf_day = c * 10 + No
59210 if (No = -1) then
59220 c=buf_day:No=0
59230 'buf_day = c
59240 buf_Day$ = str$(buf_day)
59250 '10以下のとき
59260 'if (buf_day < 10) then
59270 sp_on 14,0
59280 goto complate_jyoushi:
59290 'end
59300 'endif
59310 else
59320 'c=No
59330 buf_day = c * 10 + No
59340 buf_Day$ = str$(buf_day)
59350 'buf_day = c:buf_Day$=str$(buf_day)
59360 buf_Jyoushi_Born_Day(2)=buf_day
59370 locate 1,3
59380 print "                                           "
59390 locate 1,3
59400 color Rgb(255,255,255)
59410 print "上司の生まれた日(1日~31日):" + buf_Day$
59420 goto Jyoushi_Input_Born_Day2:
59430 'goto
59440 endif
59450 'endif
59460 '生まれた日　2桁目の数字　or 1桁の数字 + ok
59470 case 2:
59480 'buf_day = c * 10 + No
59490 'buf_Jyoushi_Born_Day(2)=buf_day
59500 'locate 1,3
59510 'print "                                      "
59520 'locate 1,3
59530 'locate 2,3
59540 'print "生まれた日(1日〜31日):";buf_Day
59550 'No=-1:ok ボタンを押したとき
59560 if (No = -1) then
59570 'if ((buf_day > 0) and (buf_day < 32)) then
59580 No=0
59590 sp_on 14,0
59600 goto complate_jyoushi:
59610 'end
59620 else
59630 goto Jyoushi_Input_Born_Day2:
59640 'endif
59650 'Okボタン以外を押したとき
59660 'else
59670 'c=val(buf_Day$)
59680 'buf_day = c * 10 + No
59690 'buf_Jyoushi_Born_Day(2) = buf_day
59700 'buf_Day$ = str$(buf_day)
59710 'locate 1,3
59720 'print "上司の生まれた日(1日~31日):";buf_Day$
59730 'goto Jyoushi_Input_Born_Day2:
59740 endif
59750 'case 3:
59760 'count=4
59770 'c=val(buf_day$)
59780 'buf_day=c*10+No
59790 'buf_day$=str$(buf_day)
59800 'locate 2,3
59810 'print "生まれた日を入れてください:";buf_day$
59820 'year=val(buf_year$)
59830 'if (No = -1) then
59840 'goto Jyoushi_Input_Born_Day:
59850 'sp_on 14,0:
59860 'goto complate_jyoushi:
59870 'else
59880 'goto Jyoushi_Input_Born_Month2:
59890 'endif
59900 'case 4:
59910 'bufyear=buf_year
59920 'if (No=-1) then
59930 'buf_day = val(buf_day$)
59940 'bufday = buf_day
59950 'sp_on 14,0
59960 'goto Jyoushi_Input_Born_Day2:
59970 'else
59980 'goto Jyoushi_Input_Born_Day2:
59990 'endif
60000 end select
60010 endif
60020 if (bg2=2) then
60030 select case count2
60040 case 0:
60050 if (No=-1) then
60060 buf_day=0:buf_Day$="**":No=0
60070 if (buf_day >= 1 and buf_day <= 31) then
60080 count=0
60090 buf_day=0:buf_Day$ = "**"
60100 goto rewrite_day3:
60110 else
60120 buf_day=0:buf_Day$ = "**"
60130 ui_msg"値が範囲外です"
60140 endif
60150 goto rewrite_day3:
60160 else
60170 goto rewrite_day3:
60180 endif
60190 rewrite_day3:
60200 locate 2,3
60210 color rgb(255,255,255)
60220 print "                                      "
60230 locate 2,3
60240 print "生まれた日(1日~31日):" + buf_Day$
60250 goto Jyoushi_Input_Born_Day2:
60260 end select
60270 endif
60280 '--------------------------------------------'
60290 'locate 2,0:color rgb(255,0,0)
60300 'print "上司の生まれた年代を入力"
60310 'color rgb(255,255,255)
60320 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
60330 'locate 2,4:Input "上司の生まれた年:",born_year
60340 '誕生日データーを配列に代入
60350 'buf_Jyoushi_Born_Year:上司の生まれた年代
60360 'buf_Jyoushi_Born_Day(0) = born_year
60370 'born_year = 0
60380 '---------------------------------------------'
60390 'goto Jyoushi_born_month:
60400 '1-2.生まれた月を入力
60410 'Jyoushi_born_month:
60420 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60430 'init "kb:4"
60440 'locate 2,1:
60450 'color rgb(255,0,0)
60460 'print "上司の生まれた月入力"
60470 'color rgb(255,255,255)
60480 'locate 2,4:print "生まれた月を入力してください"
60490 'locate 2,5
60500 'Input "上司の生まれ月:",born_month
60510 'buf_Jyoushi_Born_Day(1) = born_month
60520 'born_month = 0
60530 'goto Jyoushi_born_day:
60540 'buf_Jyoushi_Born_day
60550 '1-3.生まれた日を入力
60560 'Jyoushi_born_day:
60570 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60580 'init "kb:4"
60590 'locate 2,1:color rgb(255,0,0)
60600 'print "上司の生まれた日　入力"
60610 'locate 2,4:color rgb(255,255,255)
60620 'print "生まれた日を入力してください"
60630 'locate 2,5
60640 'Input "上司の生まれた日:",born_day
60650 'buf_Jyoushi_Born_Day(2) = born_day
60660 'born_day = 0
60670 'goto buka_born_year:
60680 '2.部下の誕生日入力
60690 '2-1.生まれた年を入力
60700 'buka_born_year:
60710 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60720 'init "kb:2"
60730 'locate 1,1:color rgb(255,0,0)
60740 'print "部下の生まれた年代入力"
60750 'locate 0,4:color rgb(255,255,255)
60760 'print "部下の生まれた年（西暦4桁）を入れてください"
60770 'locate 0,5
60780 'Input "部下の生まれた年(西暦4桁):",born_year
60790 'buf_Buka_Born_Day(0) = born_year
60800 'born_year = 0
60810 '2-2.生まれた月を入力
60820 'buka_born_month:
60830 'cls 3:gload Gazo$+"Screen1.png",0,0,0
60840 'init "kb:2"
60850 'locate 2,1:color rgb(255,0,0)
60860 'print "部下の生まれた月 入力"
60870 'locate 2,4:color rgb(255,255,255)
60880 'print "部下の生まれた月を入力してください"
60890 'locate 2,5:Input "部下の生まれた月:",born_month
60900 'buf_Buka_Born_Day(1) = born_month
60910 '2-3.生まれた日を入力
60920 'buka_born_day:
60930 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
60940 'init "kb:2"
60950 'locate 2,1:color rgb(255,0,0)
60960 'print "生まれた日入力"
60970 'color rgb(255,255,255)
60980 'locate 2,4:print "生まれた日を入力してください"
60990 'locate 2,5:Input "部下の生まれた日:",born_day
61000 'buf_Buka_Born_Day(2) = born_day
61010 'born_day=0:goto Result_Business_Aisyou:
61020 '--------------------------------------------'
61030 complate_jyoushi:
61040 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
61050 buf_Jyoushi = Kabara_Num(a,b,c)
61060 a_1=buf_Jyoushi
61070 goto Buka_Input_Seireki:
61080 '--------------------------------------------'
61090 '部下'
61100 '1.部下の生まれた年代'
61110 Buka_Input_Seireki:
61120 cls 3:play "":count=0:count2=0
61130 init"kb:4"
61140 'No=-1:Okのとき
61150 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
61160 for i=0 to 3
61170 buf_Buka_Born_Day(i)=0
61180 next i
61190 gload Gazo$ + "Screen2.png",0,0,0
61200 gload Gazo$ + "downscreen.png",0,0,800
61210 'Init"kb:2"
61220 '音声ファイル再生 2023.06.07
61230 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
61240 font 48
61250 locate 0,1
61260 '文字色：黒　 color rgb(0,0,0)
61270 color rgb(255,255,255)
61280 print "部下の生まれた年代を入れて下さい" + chr$(13)
61290 color rgb(255,255,255)
61300 locate 1,3
61310 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
61320 color rgb(255,255,255)
61330 'locate 4,6:print ":7"
61340 'locate 9,6:print ":8"
61350 'locate 12,6:print ":9"
61360 'locate 4,6
61370 'print ":7  :8  :9" + chr$(13)
61380 'color rgb(255,255,255)
61390 'locate 4,8
61400 'print ":4  :5  :6" + chr$(13)
61410 'color rgb(255,255,255)
61420 'locate 4,10
61430 'print ":1  :2  :3" + chr$(13)
61440 'locate 4,12
61450 'print "    :0"
61460 'locate 12,12
61470 'color rgb(0,0,255)
61480 'print ":Ok"
61490 sp_on 4,0: sp_on 5,0:sp_on 6,0
61500 sp_on 7,0:sp_on 8,0:sp_on 9,0
61510 sp_on 10,0:sp_on 11,0:sp_on 12,0
61520 sp_on 13,0:sp_on 14,1
61530 Buka_Input_Seireki2:
61540 key$="":bg=0:y=0:y2=0:bg2=0:
61550 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
61560 key$ = inkey$
61570 bg = strig(1)
61580 y = stick(1)
61590 y2 = stick(0)
61600 bg2=strig(0)
61610 pause 5
61620 wend
61630 '十字キー　ここから
61640 '上の矢印　または、十字キー上
61650 if ((y = -1) or (key$ = chr$(30))) then
61660 select case No
61670 'No=-1:okのとき:初期の状態
61680 '0kボタンから３に移動
61690 '上に行く 処理
61700 case -1:
61710 No=3:sp_on 12,1:sp_on 14,0
61720 pause 200:goto Buka_Input_Seireki2:
61730 '選択肢:3
61740 '3ボタンから 6に移動
61750 case 3:
61760 No=6:sp_on 12,0:sp_on 11,1
61770 pause 200:goto Buka_Input_Seireki2:
61780 '6ボタンから ９に移動
61790 case 6:
61800 No=9:sp_on 10,1:sp_on 11,0
61810 pause 200:goto Buka_Input_Seireki2:
61820 '6ボタンから ９に移動　ここまで
61830 '9で上を押して何もしない
61840 case 9:
61850 '何もしない
61860 No=9
61870 pause 200:goto Buka_Input_Seireki2:
61880 '9で上を押しても何もしない　ここまで
61890 '上　 0ボタンから2ボタン
61900 'sp_on 6,1:1
61910 'sp_on 8,1:5
61920 'sp_on 7,1:7
61930 case 0:
61940 No=2:sp_on 13,0:sp_on 9,1:
61950 pause 200:goto Buka_Input_Seireki2:
61960 '上  0ボタンから2ボタン　ここまで
61970 '2から５になる 上
61980 case 2:
61990 No=5:sp_on 8,1:sp_on 9,0:
62000 pause 200:goto Buka_Input_Seireki2:
62010 case 5:
62020 No=8:sp_on 7,1:sp_on 8,0
62030 pause 200:goto Buka_Input_Seireki2:
62040 case 8:
62050 pause 200:goto Buka_Input_Seireki2:
62060 case 1:
62070 No=4:sp_on 5,1:sp_on 6,0
62080 pause 200:goto Buka_Input_Seireki2:
62090 case 4:
62100 No=7:sp_on 4,1:sp_on 5,0
62110 pause 200:goto Buka_Input_Seireki2:
62120 case 7:
62130 pause 200:goto Buka_Input_Seireki2:
62140 end select
62150 endif
62160 '左３　ここまで
62170 '下の矢印
62180 '中央 2
62190 if ((y=1) or (key$ = chr$(31))) then
62200 select case No
62210 '9から６に下げる
62220 case 9:
62230 No=6:sp_on 11,1:sp_on 10,0
62240 pause 200:goto Buka_Input_Seireki2:
62250 '6から３に下げる
62260 case 6:
62270 No=3:sp_on 12,1:sp_on 11,0
62280 pause 200:goto Buka_Input_Seireki2:
62290 '3から０ｋに変える
62300 case 3:
62310 No=-1:sp_on 14,1:sp_on 12,0
62320 pause 200:goto Buka_Input_Seireki2:
62330 'Okから下のボタンを押しても何もしない
62340 case -1:
62350 pause 200:goto Buka_Input_Seireki2:
62360 case 8:
62370 No=5:sp_on 8,1:sp_on 7,0
62380 pause 200:goto Buka_Input_Seireki2:
62390 case 5:
62400 No=2:sp_on 9,1:sp_on 8,0
62410 pause 200:goto Buka_Input_Seireki2:
62420 case 2:
62430 No=0:sp_on 13,1:sp_on 9,0
62440 pause 200:goto Buka_Input_Seireki2:
62450 case 0:
62460 pause 200:goto Buka_Input_Seireki2:
62470 case 7:
62480 No=4:sp_on 5,1:sp_on 4,0
62490 pause 200:goto Buka_Input_Seireki2:
62500 case 4:
62510 No=1:sp_on 6,1:sp_on 5,0
62520 pause 200:goto Buka_Input_Seireki2:
62530 case 1:
62540 pause 200:goto Buka_Input_Seireki2:
62550 end select
62560 endif
62570 '左へボタン 十字キー　左　or 　カーソル左
62580 if ((y2 = -1) or (key$ = chr$(29))) then
62590 select case No
62600 'Ok ボタン  Okから　左　０に行く
62610 case -1:
62620 No=0:sp_on 13,1:sp_on 14,0
62630 pause 200:goto Buka_Input_Seireki2:
62640 '0 ボタン  左　何もしない
62650 case 0:
62660 pause 200:goto Buka_Input_Seireki2:
62670 case 3:
62680 No=2:sp_on 9,1:sp_on 12,0:
62690 pause 200:goto Buka_Input_Seireki2:
62700 case 2:
62710 No=1:sp_on 6,1:sp_on 9,0:
62720 pause 200:goto Buka_Input_Seireki2:
62730 case 1:
62740 pause 200:goto Buka_Input_Seireki2:
62750 case 6:
62760 No=5:sp_on 8,1:sp_on 11,0
62770 pause 200:goto Buka_Input_Seireki2:
62780 case 5:
62790 No=4:sp_on 5,1:sp_on 8,0
62800 pause 200:goto Buka_Input_Seireki2:
62810 case 4:
62820 pause 200:goto Buka_Input_Seireki2:
62830 case 9:
62840 No=8:sp_on 7,1:sp_on 10,0
62850 pause 200:goto Buka_Input_Seireki2:
62860 case 8:
62870 No=7:sp_on 4,1:sp_on 7,0
62880 pause 200:goto Buka_Input_Seireki2:
62890 case 7:
62900 pause 200:goto Buka_Input_Seireki2:
62910 end select
62920 endif
62930 '右  十字キー　右　or カーソル　右
62940 if ((y2 = 1) or (key$ = chr$(28))) then
62950 select case No
62960 '0ボタンからokボタン右に移動
62970 case 0:
62980 No=-1:sp_on 14,1:sp_on 13,0
62990 pause 200:goto Buka_Input_Seireki2:
63000 '0ボタンからokボタン 右に移動　ここまで
63010 'OKボタンで右を押して何もしない
63020 case -1:
63030 pause 200:goto Buka_Input_Seireki2:
63040 case 1:
63050 No=2:sp_on 9,1:sp_on 6,0
63060 pause 200:goto Buka_Input_Seireki2:
63070 case 2:
63080 No=3:sp_on 12,1:sp_on 9,0
63090 pause 200:goto Buka_Input_Seireki2:
63100 case 3:
63110 pause 200:goto Buka_Input_Seireki2:
63120 case 4:
63130 No=5:sp_on 8,1:sp_on 5,0
63140 pause 200:goto Buka_Input_Seireki2:
63150 case 5:
63160 No=6:sp_on 11,1:sp_on 8,0
63170 pause 200:goto Buka_Input_Seireki2:
63180 case 7:
63190 No=8:sp_on 7,1:sp_on 4,0
63200 pause 200:goto Buka_Input_Seireki2:
63210 case 8:
63220 No=9:sp_on 10,1:sp_on 7,0
63230 pause 200:goto Buka_Input_Seireki2:
63240 case 9:
63250 pause 200:goto Buka_Input_Seireki2:
63260 case 6:
63270 pause 200:goto Buka_Input_Seireki2:
63280 end select
63290 'Okから右ボタンを押して何もしない ここまで
63300 endif
63310 '十字キー　ここまで
63320 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
63330 'ここからコメント
63340 '右の丸ボタン決定を押した数:count
63350 'if ((bg=2) or (key$=chr$(13))) then
63360 'select case count
63370 'case 0:
63380 'count=1
63390 'if (No = -1) then
63400 'count = 0
63410 'Okボタンを押したとき
63420 '
63430 'goto Buka_Input_Seireki2:
63440 'else
63450 'Okボタン以外が押されたとき
63460 'if (No >= 1 and No <= 2) then
63470 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
63480 'buf_buka_year = No
63490 'buf_Buka_Born_Day(0) = bufyear
63500 'locate 2,3
63510 'color rgb(255,255,255)
63520 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63530 'goto Buka_Input_Seireki2:
63540 'else
63550 'count=0
63560 'ui_msg"数字が範囲外になります。"
63570 'buf_buka_year$ ="":buf_buka_year=0
63580 'goto Buka_Input_Seireki2:
63590 'endif
63600 'endif
63610 'case 1:
63620 'count = 2
63630 'if (No = -1) then
63640 'count = 1
63650 'goto Buka_Input_Seireki2:
63660 'else
63670 'b = val(buf_buka_year$)
63680 'buf_buka_year = b * 10 + No
63690 'buf_buka_year$ = str$(buf_buka_year)
63700 'buf_Buka_Born_Day(0) = bufyear
63710 'locate 1,3
63720 'color rgb(255,255,255)
63730 'print "                                                                "
63740 'locate 1,3
63750 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
63760 'if (No = -1) then
63770 'count=1
63780 'goto Buka_Input_Seireki2:
63790 'endif
63800 'case 2:
63810 'count = 3
63820 'if (No = -1) then
63830 'count = 2
63840 'buf_Buka_Born_Day(0)=bufyear
63850 'goto Buka_Input_Seireki2:
63860 'else
63870 'b = val(buf_buka_year$)
63880 'buf_buka_year = b*10 + No
63890 'buf_buka_year$ = str$(buf_buka_year)
63900 'locate 1,3
63910 'color rgb(255,255,255)
63920 'print "                                        "
63930 'locate 1,3
63940 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
63950 'goto Buka_Input_Seireki2:
63960 'endif
63970 'case 3:
63980 'count=4
63990 'if (No = -1) then
64000 'count=3
64010 'goto Buka_Input_Seireki2:
64020 'else
64030 'b = buf_buka_year
64040 'buf_buka_year = b * 10 + No
64050 'buf_buka_year$=str$(buf_buka_year)
64060 'locate 1,3
64070 'color RGB(255,255,255)
64080 'print "                                      "
64090 'locate 1,3
64100 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64110 'buf_year=val(buf_year$)
64120 'year=val(buf_year$)
64130 'if (No=-1) then
64140 'goto Input_Born_Month:
64150 'else
64160 'goto Buka_Input_Seireki2:
64170 'endif
64180 'case 4:
64190 'bufyear=buf_year
64200 'if (No=-1) then
64210 'buf_year = val(buf_year$)
64220 'bufyear = buf_year
64230 'sp_on 14,0
64240 'goto Buka_Input_Born_Month:
64250 'else
64260 'goto Buka_Input_Seireki2:
64270 'endif
64280 'end select
64290 'endif
64300 'if (bg2 = 2) then
64310 'select case count2
64320 'case 0:
64330 'if (No = -1) then
64340 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
64350 'count=0
64360 'locate 1,3
64370 'color rgb(255,255,255)
64380 'print "                                      "
64390 'locate 1,3
64400 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
64410 'goto Buka_Input_Seireki2:
64420 'else
64430 '(buf_year=0) then
64440 'buf_buka_year=0:buf_buka_year$="****"
64450 'goto Buka_Input_Seireki2:
64460 'endif
64470 'endif
64480 'end select
64490 'endif
64500 'end
64510 'ここまでコメント
64520 '================================================================
64530 if ((bg=2) or (key$=chr$(13))) then
64540 select case count
64550 case 0:
64560 count = 1
64570 if (No=-1) then
64580 count = 0
64590 buf_Buka_Born_Day(0) = No
64600 'Okボタンを押したとき
64610 goto Buka_Input_Seireki2:
64620 else
64630 'Okボタン以外が押されたとき
64640 if (No>=1 and No<=2) then
64650 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
64660 buf_buka_year = No
64670 buf_Buka_Born_Day(0) = No
64680 locate 1,3
64690 color rgb(255,255,255)
64700 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
64710 goto Buka_Input_Seireki2:
64720 else
64730 count=0
64740 ui_msg"数字が範囲外になります。"
64750 buf_buka_year$="":buf_buka_year=0
64760 goto Buka_Input_Seireki2:
64770 endif
64780 endif
64790 case 1:
64800 count = 2
64810 if (No = -1) then
64820 count = 1
64830 goto Buka_Input_Seireki2:
64840 else
64850 'b = val(buf_buka_year$)
64860 buf_buka_year = a * 10 + No
64870 b=buf_buka_year
64880 buf_buka_year$ = str$(buf_buka_year)+"**"
64890 buf_Buka_Born_Day(0)=buf_buka_year
64900 locate 1,3
64910 color rgb(255,255,255)
64920 print "                                                                "
64930 locate 1,3
64940 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
64950 'if (No = -1) then
64960 'count=1
64970 goto Buka_Input_Seireki2:
64980 endif
64990 case 2:
65000 count=3
65010 if (No=-1) then
65020 count =2:No=0
65030 goto Buka_Input_Seireki2:
65040 else
65050 'b = val(buf_buka_year$)
65060 buf_buka_year = b * 10 + No
65070 c = buf_buka_year
65080 buf_buka_year$ = str$(buf_buka_year) + "*"
65090 buf_Buka_Born_Day(0) = buf_buka_year
65100 locate 1,3
65110 color rgb(255,255,255)
65120 print "                                        "
65130 locate 1,3
65140 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65150 goto Buka_Input_Seireki2:
65160 endif
65170 case 3:
65180 count=4
65190 if (No = -1) then
65200 'count=3:No=0
65210 goto Buka_Input_Seireki2:
65220 else
65230 'b = val(buf_buka_year$)
65240 buf_buka_year=c * 10 + No
65250 buf_buka_year$=str$(buf_buka_year)
65260 buf_Buka_Born_Day(0)=buf_buka_year
65270 locate 1,3
65280 color RGB(255,255,255)
65290 print "                                      "
65300 locate 1,3
65310 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
65320 buf_buka_year=val(buf_buka_year$)
65330 'year=val(buf_year$)
65340 'if (No=-1) then
65350 'goto Input_Born_Month:
65360 'else
65370 goto Buka_Input_Seireki2:
65380 endif
65390 case 4:
65400 'bufyear=buf_year
65410 if (No = -1) then
65420 buf_buka_year = val(buf_buka_year$)
65430 buf_Buka_Born_Day(0)=buf_buka_year
65440 sp_on 14,0
65450 goto Buka_Input_Born_Month:
65460 else
65470 goto Buka_Input_Seireki2:
65480 endif
65490 end select
65500 endif
65510 '================================================================
65520 'ここにコピーする。
65530 '================================================================
65540 'Input"部下の生れた年代(4桁,〜2025年):",year
65550 'if year > 2025 then goto Jyoushi_Input_Seireki:
65560 'if year = 123 then cls 3:cls 4:goto Main_Screen:
65570 '"4桁目"
65580 'bufyear4 = fix(year / 1000)
65590 '"3桁目"
65600 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
65610 '"2桁目"
65620 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
65630 '"1桁目"
65640 'bufyear1 = fix((year - ((bufyear4*
65650 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
65660 '1.部下の生まれた年代'
65670 '2.部下の生まれた月'
65680 Buka_Input_Born_Month:
65690 cls 3:play "":count=0:count2=0
65700 'No=-1:Okのとき
65710 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
65720 for i=0 to 1
65730 buf_month(i)=0
65740 next i
65750 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
65760 gload Gazo$ + "Screen2.png",0,0,0
65770 gload Gazo$ + "downscreen.png",0,0,800
65780 'Init"kb:4"
65790 '音声ファイル再生 2023.06.07
65800 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
65810 font 48
65820 locate 0,1
65830 '文字色：黒　 color rgb(0,0,0)
65840 '文字色:白
65850 color rgb(255,255,255)
65860 print "部下の生まれた月を入れて下さい" + chr$(13)
65870 '文字色:白
65880 color rgb(255,255,255)
65890 locate 1,3
65900 '文字色:白
65910 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
65920 color rgb(255,255,255)
65930 'locate 4,6:print ":7"
65940 'locate 9,6:print ":8"
65950 'locate 12,6:print ":9"
65960 'locate 4,6
65970 '文字色:赤
65980 'print ":7  :8  :9" + chr$(13)
65990 'color rgb(255,255,255)
66000 'locate 4,8
66010 'print ":4  :5  :6" + chr$(13)
66020 'color rgb(255,255,255)
66030 'locate 4,10
66040 'print ":1  :2  :3" + chr$(13)
66050 'locate 4,12
66060 'print "    :0"
66070 'locate 12,12
66080 'color rgb(0,0,255)
66090 'print ":Ok"
66100 sp_on 4,0: sp_on 5,0:sp_on 6,0
66110 sp_on 7,0:sp_on 8,0:sp_on 9,0
66120 sp_on 10,0:sp_on 11,0:sp_on 12,0
66130 sp_on 13,0:sp_on 14,1
66140 Buka_Input_Born_Month2:
66150 key$="":bg=0:y=0:y2=0:bg2=0
66160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
66170 key$ = inkey$
66180 bg = strig(1)
66190 y = stick(1)
66200 y2 = stick(0)
66210 bg2 = strig(0)
66220 pause 5
66230 wend
66240 '十字キー　ここから
66250 '上の矢印　または、十字キー上
66260 if ((y = -1) or (key$ = chr$(30))) then
66270 select case No
66280 'No=-1:okのとき:初期の状態
66290 '0kボタンから３に移動
66300 '上に行く 処理
66310 case -1:
66320 No=3:sp_on 12,1:sp_on 14,0
66330 pause 200:goto Buka_Input_Born_Month2:
66340 '選択肢:3
66350 '3ボタンから 6に移動
66360 case 3:
66370 No=6:sp_on 12,0:sp_on 11,1
66380 pause 200:goto Buka_Input_Born_Month2:
66390 '6ボタンから ９に移動
66400 case 6:
66410 No=9:sp_on 10,1:sp_on 11,0
66420 pause 200:goto Buka_Input_Born_Month2:
66430 '6ボタンから ９に移動　ここまで
66440 '9で上を押して何もしない
66450 case 9:
66460 '何もしない
66470 No=9
66480 pause 200:goto Buka_Input_Born_Month2:
66490 '9で上を押しても何もしない　ここまで
66500 '上　 0ボタンから2ボタン
66510 'sp_on 6,1:1
66520 'sp_on 8,1:5
66530 'sp_on 7,1:7
66540 case 0:
66550 No=2:sp_on 13,0:sp_on 9,1:
66560 pause 200:goto Buka_Input_Born_Month2:
66570 '上  0ボタンから2ボタン　ここまで
66580 '2から５になる 上
66590 case 2:
66600 No=5:sp_on 8,1:sp_on 9,0:
66610 pause 200:goto Buka_Input_Born_Month2:
66620 case 5:
66630 No=8:sp_on 7,1:sp_on 8,0
66640 pause 200:goto Buka_Input_Born_Month2:
66650 case 8:
66660 pause 200:goto Buka_Input_Born_Month2:
66670 case 1:
66680 No=4:sp_on 5,1:sp_on 6,0
66690 pause 200:goto Buka_Input_Born_Month2:
66700 case 4:
66710 No=7:sp_on 4,1:sp_on 5,0
66720 pause 200:goto Buka_Input_Born_Month2:
66730 case 7:
66740 pause 200:goto Buka_Input_Born_Month2:
66750 end select
66760 endif
66770 '左３　ここまで
66780 '下の矢印
66790 '中央 2
66800 if ((y=1) or (key$ = chr$(31))) then
66810 select case No
66820 '9から６に下げる
66830 case 9:
66840 No=6:sp_on 11,1:sp_on 10,0
66850 pause 200:goto Buka_Input_Born_Month2:
66860 '6から３に下げる
66870 case 6:
66880 No=3:sp_on 12,1:sp_on 11,0
66890 pause 200:goto Buka_Input_Born_Month2:
66900 '3から０ｋに変える
66910 case 3:
66920 No=-1:sp_on 14,1:sp_on 12,0
66930 pause 200:goto Buka_Input_Born_Month2:
66940 'Okから下のボタンを押しても何もしない
66950 case -1:
66960 pause 200:goto Buka_Input_Born_Month2:
66970 case 8:
66980 No=5:sp_on 8,1:sp_on 7,0
66990 pause 200:goto Buka_Input_Born_Month2:
67000 case 5:
67010 No=2:sp_on 9,1:sp_on 8,0
67020 pause 200:goto Buka_Input_Born_Month2:
67030 case 2:
67040 No=0:sp_on 13,1:sp_on 9,0
67050 pause 200:goto Buka_Input_Born_Month2:
67060 case 0:
67070 pause 200:goto Buka_Input_Born_Month2:
67080 case 7:
67090 No=4:sp_on 5,1:sp_on 4,0
67100 pause 200:goto Buka_Input_Born_Month2:
67110 case 4:
67120 No=1:sp_on 6,1:sp_on 5,0
67130 pause 200:goto Buka_Input_Born_Month2:
67140 case 1:
67150 pause 200:goto Buka_Input_Born_Month2:
67160 end select
67170 endif
67180 '左へボタン 十字キー　左　or 　カーソル左
67190 if ((y2 = -1) or (key$ = chr$(29))) then
67200 select case No
67210 'Ok ボタン  Okから　左　０に行く
67220 case -1:
67230 No=0:sp_on 13,1:sp_on 14,0
67240 pause 200:goto Buka_Input_Born_Month2:
67250 '0 ボタン  左　何もしない
67260 case 0:
67270 pause 200:goto Buka_Input_Born_Month2:
67280 case 3:
67290 No=2:sp_on 9,1:sp_on 12,0:
67300 pause 200:goto Buka_Input_Born_Month2:
67310 case 2:
67320 No=1:sp_on 6,1:sp_on 9,0:
67330 pause 200:goto Buka_Input_Born_Month2:
67340 case 1:
67350 pause 200:goto Buka_Input_Born_Month2:
67360 case 6:
67370 No=5:sp_on 8,1:sp_on 11,0
67380 pause 200:goto Buka_Input_Born_Month2:
67390 case 5:
67400 No=4:sp_on 5,1:sp_on 8,0
67410 pause 200:goto Buka_Input_Born_Month2:
67420 case 4:
67430 pause 200:goto Buka_Input_Born_Month2:
67440 case 9:
67450 No=8:sp_on 7,1:sp_on 10,0
67460 pause 200:goto Buka_Input_Born_Month2:
67470 case 8:
67480 No=7:sp_on 4,1:sp_on 7,0
67490 pause 200:goto Buka_Input_Born_Month2:
67500 case 7:
67510 pause 200:goto Buka_Input_Born_Month2:
67520 end select
67530 endif
67540 '右  十字キー　右　or カーソル　右
67550 if ((y2 = 1) or (key$ = chr$(28))) then
67560 select case No
67570 '0ボタンからokボタン右に移動
67580 case 0:
67590 No=-1:sp_on 14,1:sp_on 13,0
67600 pause 200:goto Buka_Input_Born_Month2:
67610 '0ボタンからokボタン 右に移動　ここまで
67620 'OKボタンで右を押して何もしない
67630 case -1:
67640 pause 200:goto Buka_Input_Born_Month2:
67650 case 1:
67660 No=2:sp_on 9,1:sp_on 6,0
67670 pause 200:goto Buka_Input_Born_Month2:
67680 case 2:
67690 No=3:sp_on 12,1:sp_on 9,0
67700 pause 200:goto Buka_Input_Born_Month2:
67710 case 3:
67720 pause 200:goto Buka_Input_Born_Month2:
67730 case 4:
67740 No=5:sp_on 8,1:sp_on 5,0
67750 pause 200:goto Buka_Input_Born_Month2:
67760 case 5:
67770 No=6:sp_on 11,1:sp_on 8,0
67780 pause 200:goto Buka_Input_Born_Month2:
67790 case 7:
67800 No=8:sp_on 7,1:sp_on 4,0
67810 pause 200:goto Buka_Input_Born_Month2:
67820 case 8:
67830 No=9:sp_on 10,1:sp_on 7,0
67840 pause 200:goto Buka_Input_Born_Month2:
67850 case 9:
67860 pause 200:goto Buka_Input_Born_Month2:
67870 case 6:
67880 pause 200:goto Buka_Input_Born_Month2:
67890 end select
67900 'Okから右ボタンを押して何もしない ここまで
67910 endif
67920 '十字キー　ここまで
67930 '右の丸ボタン　決定キー
67940 if ((bg=2) or (key$=chr$(13))) then
67950 select case count
67960 case 0:
67970 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
67980 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
67990 locate 1,3
68000 color RGB(255,255,255)
68010 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
68020 goto Buka_Input_Born_Month2:
68030 case 1:
68040 count = 2:buf_buka_month=a*10+No
68050 if (No = -1) then
68060 'count=0
68070 month=buf_buka_month
68080 buf_buka_month=val(buf_buka_Month$)
68090 month=buf_buka_month
68100 '生まれた日に飛ぶ
68110 goto Buka_Input_Born_Day:
68120 else
68130 buf_buka_month = a * 10 + No
68140 buf_buka_Month$ = str$(buf_buka_month)
68150 buf_Buka_Born_Day(1) = buf_buka_month
68160 locate 1,3
68170 color Rgb(255,255,255)
68180 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
68190 goto Buka_Input_Born_Month2:
68200 endif
68210 case 2:
68220 count=3
68230 'c= val(buf_Month$)
68240 'buf_month = c*10 + No
68250 'buf_Month$ = str$(buf_month)
68260 'locate 2,3
68270 'print "部下の生まれた月(1月～12月):";buf_Month$
68280 'goto Buka_Input_Born_Month2:
68290 'case 3:
68300 'count=4
68310 'b=val(buf_month$)
68320 'buf_month=c*10+No
68330 'buf_Month$=str$(buf_month)
68340 'locate 2,3
68350 'print "部下の生まれた月(1月～12月):";buf_Month$
68360 'buf_month=val(buf_Month$)
68370 'year=val(buf_year$)
68380 if (No=-1) then
68390 goto Buka_Input_Born_Day:
68400 else
68410 goto Input_Born_Month2:
68420 endif
68430 'case 4:
68440 'bufyear=buf_year
68450 'if (No=-1) then
68460 'buf_month = val(buf_Month$)
68470 'month = buf_month
68480 'sp_on 14,0
68490 'goto Input_Born_Day:
68500 'else
68510 'goto Input_Born_Month2:
68520 'endif
68530 end select
68540 endif
68550 '左の丸ボタン　キャンセル
68560 if (bg2=2) then
68570 select case count2
68580 case 0:
68590 if (No = -1) then
68600 buf_buka_month=0:buf_buka_Month$="**"
68610 count=0
68620 goto rewrite2:
68630 else
68640 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
68650 buf_month=0:buf_Month$="**"
68660 locate 2,3
68670 color rgb(255,255,255)
68680 print "                                       "
68690 goto rewrite2:
68700 if (No>12) then
68710 ui_msg"値が範囲外です。"
68720 goto rewrite2:
68730 endif
68740 endif
68750 endif
68760 rewrite2:
68770 locate 2,3
68780 color rgb(255,255,255)
68790 print "                                      "
68800 locate 2,3
68810 print "部下の生まれた月(1月~12月):";buf_buka_Month$
68820 goto Buka_Input_Born_Month2:
68830 end select
68840 'endif
68850 endif
68860 end
68870 '2.部下の生まれた月'
68880 '3.部下の生まれた日'
68890 '生れた日を入力
68900 Buka_Input_Born_Day:
68910 '生まれた日入力
68920 cls 3:play ""
68930 'No=-1:Okのとき
68940 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
68950 for i=0 to 1
68960 buf_day(i)=0
68970 next i
68980 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
68990 gload Gazo$ + "Screen2.png",0,0,0
69000 gload Gazo$ + "downscreen.png",0,0,800
69010 'Init"kb:2"
69020 '音声ファイル再生 2023.06.07
69030 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
69040 font 48
69050 locate 0,1
69060 '文字色：黒　 color rgb(0,0,0)
69070 color rgb(255,255,255)
69080 print "部下の生まれた日を入れて下さい" + chr$(13)
69090 color rgb(255,255,255)
69100 locate 1,3
69110 print "部下の生まれた日(1日~31日):";buf_Day$
69120 color rgb(255,255,255)
69130 'locate 4,6:print ":7"
69140 'locate 9,6:print ":8"
69150 'locate 12,6:print ":9"
69160 'locate 4,6
69170 'print ":7  :8  :9" + chr$(13)
69180 'color rgb(255,255,255)
69190 'locate 4,8
69200 'print ":4  :5  :6" + chr$(13)
69210 'color rgb(255,255,255)
69220 'locate 4,10
69230 'print ":1  :2  :3" + chr$(13)
69240 'locate 4,12
69250 'print "    :0"
69260 'locate 12,12
69270 'color rgb(0,0,255)
69280 'print ":Ok"
69290 sp_on 4,0: sp_on 5,0:sp_on 6,0
69300 sp_on 7,0:sp_on 8,0:sp_on 9,0
69310 sp_on 10,0:sp_on 11,0:sp_on 12,0
69320 sp_on 13,0:sp_on 14,1
69330 Buka_Input_Born_Day2:
69340 '
69350 key$="":bg=0:y=0:y2=0:bg2=0
69360 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
69370 key$ = inkey$
69380 bg = strig(1)
69390 y = stick(1)
69400 y2 = stick(0)
69410 bg2 = strig(0)
69420 pause 200
69430 wend
69440 '十字キー　ここから
69450 '上の矢印　または、十字キー上
69460 if ((y = -1) or (key$ = chr$(30))) then
69470 select case No
69480 'No=-1:okのとき:初期の状態
69490 '0kボタンから３に移動
69500 '上に行く 処理
69510 case -1:
69520 No=3:sp_on 12,1:sp_on 14,0
69530 pause 200:goto Buka_Input_Born_Day2:
69540 '選択肢:3
69550 '3ボタンから 6に移動
69560 case 3:
69570 No=6:sp_on 12,0:sp_on 11,1
69580 pause 200:goto Buka_Input_Born_Day2:
69590 '6ボタンから ９に移動
69600 case 6:
69610 No=9:sp_on 10,1:sp_on 11,0
69620 pause 200:goto Buka_Input_Born_Day2:
69630 '6ボタンから ９に移動　ここまで
69640 '9で上を押して何もしない
69650 case 9:
69660 '何もしない
69670 No=9
69680 pause 200:goto Buka_Input_Born_Day2:
69690 '9で上を押しても何もしない　ここまで
69700 '上　 0ボタンから2ボタン
69710 'sp_on 6,1:1
69720 'sp_on 8,1:5
69730 'sp_on 7,1:7
69740 case 0:
69750 No=2:sp_on 13,0:sp_on 9,1:
69760 pause 200:goto Buka_Input_Born_Day2:
69770 '上  0ボタンから2ボタン　ここまで
69780 '2から５になる 上
69790 case 2:
69800 No=5:sp_on 8,1:sp_on 9,0:
69810 pause 200:goto Buka_Input_Born_Day2:
69820 case 5:
69830 No=8:sp_on 7,1:sp_on 8,0
69840 pause 200:goto Buka_Input_Born_Day2:
69850 case 8:
69860 pause 200:goto Buka_Input_Born_Day2:
69870 case 1:
69880 No=4:sp_on 5,1:sp_on 6,0
69890 pause 200:goto Buka_Input_Born_Day2:
69900 case 4:
69910 No=7:sp_on 4,1:sp_on 5,0
69920 pause 200:goto Buka_Input_Born_Day2:
69930 case 7:
69940 pause 200:goto Buka_Input_Born_Day2:
69950 end select
69960 endif
69970 '左３　ここまで
69980 '下の矢印
69990 '中央 2
70000 if ((y=1) or (key$ = chr$(31))) then
70010 select case No
70020 '9から６に下げる
70030 case 9:
70040 No=6:sp_on 11,1:sp_on 10,0
70050 pause 200:goto Buka_Input_Born_Day2:
70060 '6から３に下げる
70070 case 6:
70080 No=3:sp_on 12,1:sp_on 11,0
70090 pause 200:goto Buka_Input_Born_Day2:
70100 '3から０ｋに変える
70110 case 3:
70120 No=-1:sp_on 14,1:sp_on 12,0
70130 pause 200:goto Buka_Input_Born_Day2:
70140 'Okから下のボタンを押しても何もしない
70150 case -1:
70160 pause 200:goto Buka_Input_Born_Day2:
70170 case 8:
70180 No=5:sp_on 8,1:sp_on 7,0
70190 pause 200:goto Buka_Input_Born_Day2:
70200 case 5:
70210 No=2:sp_on 9,1:sp_on 8,0
70220 pause 200:goto Buka_Input_Born_Day2:
70230 case 2:
70240 No=0:sp_on 13,1:sp_on 9,0
70250 pause 200:goto Buka_Input_Born_Day2:
70260 case 0:
70270 pause 200:goto Buka_Input_Born_Day2:
70280 case 7:
70290 No=4:sp_on 5,1:sp_on 4,0
70300 pause 200:goto Buka_Input_Born_Day2:
70310 case 4:
70320 No=1:sp_on 6,1:sp_on 5,0
70330 pause 200:goto Buka_Input_Born_Day2:
70340 case 1:
70350 pause 200:goto Buka_Input_Born_Day2:
70360 end select
70370 endif
70380 '左へボタン 十字キー　左　or 　カーソル左
70390 if ((y2 = -1) or (key$ = chr$(29))) then
70400 select case No
70410 'Ok ボタン  Okから　左　０に行く
70420 case -1:
70430 No=0:sp_on 13,1:sp_on 14,0
70440 pause 200:goto Buka_Input_Born_Day2:
70450 '0 ボタン  左　何もしない
70460 case 0:
70470 pause 200:goto Buka_Input_Born_Day2:
70480 case 3:
70490 No=2:sp_on 9,1:sp_on 12,0:
70500 pause 200:goto Buka_Input_Born_Day2:
70510 case 2:
70520 No=1:sp_on 6,1:sp_on 9,0:
70530 pause 200:goto Buka_Input_Born_Day2:
70540 case 1:
70550 pause 200:goto Buka_Input_Born_Day2:
70560 case 6:
70570 No=5:sp_on 8,1:sp_on 11,0
70580 pause 200:goto Buka_Input_Born_Day2:
70590 case 5:
70600 No=4:sp_on 5,1:sp_on 8,0
70610 pause 200:goto Buka_Input_Born_Day2:
70620 case 4:
70630 pause 200:goto Buka_Input_Born_Day2:
70640 case 9:
70650 No=8:sp_on 7,1:sp_on 10,0
70660 pause 200:goto Buka_Input_Born_Day2:
70670 case 8:
70680 No=7:sp_on 4,1:sp_on 7,0
70690 pause 200:goto Buka_Input_Born_Day2:
70700 case 7:
70710 pause 200:goto Buka_Input_Born_Day2:
70720 end select
70730 endif
70740 '右  十字キー　右　or カーソル　右
70750 if ((y2 = 1) or (key$ = chr$(28))) then
70760 select case No
70770 '0ボタンからokボタン右に移動
70780 case 0:
70790 No=-1:sp_on 14,1:sp_on 13,0
70800 pause 200:goto Buka_Input_Born_Day2:
70810 '0ボタンからokボタン 右に移動　ここまで
70820 'OKボタンで右を押して何もしない
70830 case -1:
70840 pause 200:goto Buka_Input_Born_Day2:
70850 case 1:
70860 No=2:sp_on 9,1:sp_on 6,0
70870 pause 200:goto Buka_Input_Born_Day2:
70880 case 2:
70890 No=3:sp_on 12,1:sp_on 9,0
70900 pause 200:goto Buka_Input_Born_Day2:
70910 case 3:
70920 pause 200:goto Buka_Input_Born_Day2:
70930 case 4:
70940 No=5:sp_on 8,1:sp_on 5,0
70950 pause 200:goto Buka_Input_Born_Day2:
70960 case 5:
70970 No=6:sp_on 11,1:sp_on 8,0
70980 pause 200:goto Buka_Input_Born_Day2:
70990 case 7:
71000 No=8:sp_on 7,1:sp_on 4,0
71010 pause 200:goto Buka_Input_Born_Day2:
71020 case 8:
71030 No=9:sp_on 10,1:sp_on 7,0
71040 pause 200:goto Buka_Input_Born_Day2:
71050 case 9:
71060 pause 200:goto Buka_Input_Born_Day2:
71070 case 6:
71080 pause 200:goto Buka_Input_Born_Day2:
71090 end select
71100 'Okから右ボタンを押して何もしない ここまで
71110 endif
71120 '十字キー　ここまで
71130 '右の丸ボタンを押したとき
71140 if ((bg = 2) or (key$ = chr$(13))) then
71150 'count :決定ボタンを押した回数
71160 select case (count)
71170 '1桁目入力
71180 case 0:
71190 count = 1:
71200 if (No = -1) then
71210 '1桁目　OKでは何もしない
71220 'goto check:
71230 No=0
71240 else
71250 'ok以外のボタンを押したとき
71260 buf_buka_day = No:buf_buka_Day$ = str$(No)
71270 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
71280 buf_buka_Day$ = str$(No) + "*"
71290 endif
71300 a=No
71310 buf_Buka_Born_Day(2) = buf_buka_day
71320 locate 1,3
71330 print"                                      "
71340 color RGB(255,255,255)
71350 locate 1,3
71360 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71370 endif
71380 check2:
71390 if (No >= 1 and No <= 9) then
71400 sp_on 14,0
71410 goto Buka_Input_Born_Day2:
71420 else
71430 sp_on 14,0
71440 goto Result_Business_Aisyou:
71450 end
71460 endif
71470 case 1:
71480 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
71490 count = 2:
71500 'locate 2,3
71510 'color RGB(255,255,255)
71520 'print "生まれた日(1日~31日):";buf_Day$
71530 'Okボタンを押したときの処理
71540 '入力値　10未満のとき
71550 'c = buf_day
71560 if (No = -1) then
71570 'c=buf_day
71580 ' buf_day = c
71590 'buf_Day$ = str$(buf_day)
71600 '10以下のとき
71610 No=0
71620 if (buf_day < 10) then
71630 sp_on 14,0
71640 goto Result_Business_Aisyou:
71650 end
71660 endif
71670 else
71680 sp_on 14,0
71690 'c=No
71700 buf_buka_day = a * 10 + No
71710 buf_buka_Day$ = str$(buf_buka_day)
71720 buf_Buka_Born_Day(2) = buf_buka_day
71730 locate 0,3
71740 color Rgb(255,255,255)
71750 print "                                       "
71760 locate 1,3
71770 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
71780 goto Buka_Input_Born_Day2:
71790 endif
71800 '生まれた日　2桁目の数字　or 1桁の数字 + ok
71810 case 2:
71820 count=0
71830 'c=val(buf_Day$)
71840 'buf_day=c*10+No
71850 'buf_Day$=str$(buf_day)
71860 'day=buf_day
71870 'locate 2,3
71880 'print "生まれた日(1日〜31日):";buf_Day$
71890 'No=-1:ok ボタンを押したとき
71900 if (No = -1) then No=0
71910 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
71920 sp_on 14,0
71930 goto Result_Business_Aisyou:
71940 else
71950 goto Buka_Input_Born_Day2:
71960 endif
71970 'Okボタン以外を押したとき
71980 else
71990 c=val(buf_buka_Day$)
72000 buf_buka_day = c * 10 + No
72010 buf_buka_Day$ = str$(buf_buka_day)
72020 locate 1,3
72030 print "                "
72040 locate 1,3
72050 print "生まれた日(1日~31日):"+buf_buka_Day$
72060 goto Buka_Input_Born_Day2:
72070 'endif
72080 case 3:
72090 count=4
72100 'c=val(buf_day$)
72110 'buf_day=c*10+No
72120 'buf_day$=str$(buf_day)
72130 'locate 2,3
72140 'print "生まれた日を入れてください:";buf_day$
72150 'year=val(buf_year$)
72160 if (No = -1) then
72170 'goto Buka_Input_Born_Day:
72180 sp_on 14,0:
72190 goto complate_jyoushi:
72200 else
72210 goto Buka_Input_Born_Month2:
72220 endif
72230 'case 4:
72240 'bufyear=buf_year
72250 'if (No=-1) then
72260 'buf_day = val(buf_day$)
72270 'bufday = buf_day
72280 'sp_on 14,0
72290 goto complate_jyoushi:
72300 'else
72310 'goto Buka_Input_Born_Day2:
72320 'endif
72330 end select
72340 endif
72350 if (bg2=2) then
72360 select case count2
72370 case 0:
72380 if (No=-1) then
72390 'buf_day=0:buf_Day$="**"
72400 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
72410 count=0
72420 buf_buka_day=0:buf_buka_Day$="**"
72430 goto rewrite_day3:
72440 else
72450 buf_buka_day=0:buf_buka_Day$="**"
72460 ui_msg"値が範囲外です"
72470 endif
72480 goto rewrite_day3:
72490 else
72500 goto rewrite_day3:
72510 endif
72520 rewrite_day3:
72530 locate 2,3
72540 color rgb(255,255,255)
72550 print "                                      "
72560 locate 1,3
72570 print "生まれた日(1日~31日):"+buf_buka_Day$
72580 goto Buka_Input_Born_Day2:
72590 end select
72600 endif
72610 '3.部下の生まれた日'
72620 '部下'
72630 '--------------------------------------------'
72640 'ビジネの相性　結果表示
72650 Result_Business_Aisyou:
72660 cls 3:init "kb:4"
72670 a=0:b=0:c=0:d=0:e=0:f=0
72680 bg=0:key$=""
72690 gload Gazo$ + "Screen1.png",0,0,0
72700 gload Gazo$ + "downscreen.png",0,0,800
72710 sp_on 14,0
72720 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
72730 buf_Buka = Kabara_Num(d,e,f)
72740 a_2 = buf_Buka
72750 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
72760 locate 0,1
72770 color rgb(255,0,0)
72780 print "●.相性診断結果１"
72790 locate 0,4:
72800 color rgb(255,255,255)
72810 print "1.上司の名前:";buffer_name$(0)
72820 locate 0,6
72830 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
72840 locate 0,8
72850 print "2.部下の名前:";buffer_name$(1)
72860 locate 0,10
72870 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
72880 locate 0,12
72890 print "3.上司と部下の相性:";Result_Aisyou$
72900 locate 1,15
72910 color rgb(0,0,0)
72920 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
72930 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
72940 bg = strig(1)
72950 key$ = inkey$
72960 bg2 = strig(0)
72970 pause 5
72980 wend
72990 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
73000 if (bg2 = 2) then
73010 cls 3:goto Business_Aishou_Input_1_parson:
73020 endif
73030 'ビジネスの相性占い　結果2　説明
73040 Result_Business_Aisyou2:
73050 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
73060 gload Gazo$ + "Screen1.png",0,0,0
73070 locate 0,1
73080 color rgb(255,0,0)
73090 print "●.相性の説明"
73100 color rgb(255,255,255)
73110 locate 0,4
73120 print "相性:";Result_Aisyou$
73130 locate 0,6:
73140 print "相性の説明:";buf$
73150 locate 0,15
73160 color rgb(0,0,0)
73170 print "右の丸ボタン:トップ,左のボタン:前の画面"
73180 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
73190 bg = strig(1)
73200 bg2 = strig(0)
73210 key$ = inkey$
73220 pause 100
73230 wend
73240 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
73250 if ((bg2 = 2)) then goto Result_Business_Aisyou:
73260 'Birds Eye Menu List
73270 Result_Birtheye_List1:
73280 'dim List$(4) Topに定義
73290 List$(0) = "1.バーズアイグリッドをもう一度診断"
73300 List$(1) = "2.診断結果"
73310 List$(2) = "3.データーを保存"
73320 List$(3) = "4.トップ画面に戻る"
73330 Birds_List1 = ui_select("List$","Menu")
73340 select case (Birds_List1)
73350 case 0: '1.もう一度診断
73360 for i=0 to 8
73370 buffer(i)=0
73380 next i
73390 goto Input_name1_Birdseye:
73400 case 1: '2.次へ行く
73410 gosub BirdsEye_Result2:
73420 case 2: '3.データーを保存
73430 ui_msg "データーを保存します"
73440 goto BirdsEye_Save_data:
73450 case 3: '4.トップに戻る
73460 for i=0 to 8
73470 buffer(i)=0
73480 next i
73490 goto Main_Screen:
73500 end select
73510 'BirdsEye Data Save
73520 BirdsEye_Save_data:
73530 if dir$(Save_data_Birdseye$) = "" then
73540    Mkdir Save_data_Birdseye$
73550 endif
73560 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
73570 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
73580 close #1
73590 ui_msg "データーを保存しました"
73600 goto Result_Birtheye_List1:
73610 'return
73620 '自作関数 ここから
73630 BirdsEyeGrid_Entry:
73640 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
73650 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
73660 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
73670 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
73680 locate 1,4:print "右の丸:メイン画面へ行く"
73690 else
73700 flag=1
73710 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
73720 while (eof(1)=0)
73730   line input #1,a$
73740   n = n + 1
73750 wend
73760 close #1
73770 'endif
73780 talk "登録件数は"+str$(n)+"件です。"
73790 locate 1,2:print "登録件数は";str$(n);"件です"
73800 locate 1,4:print "左の丸：メイン画面へ行く"
73810 endif
73820 Entry_Count:
73830 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
73840 key$ = inkey$
73850 bg = strig(1)
73860 bg2 = strig(0)
73870 pause 200
73880 wend
73890 if ((bg = 2) or (key$ = chr$(13))) then
73900   if (n = 0) then
73910 '登録件数　０件のとき　メイン画面に行く
73920      goto Main_Screen:
73930   else
73940 '登録件数1件以上　次へ行く
73950 'ここを変更する
73960      goto Entry_List:
73970   endif
73980 endif
73990 if (bg2 = 2) then
74000    if (n > 0) then
74010       goto Main_Screen:
74020    else
74030       goto Entry_Count:
74040    endif
74050 endif
74060 Entry_List:
74070           cls 3:play"":color rgb(255,255,255)
74080           gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
74090 dim buffer_List$(11,n)
74100           'ファイル読み込み ここから
74110 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
74120 for i=0 to 10
74130 for j=0 to n-1
74140 input #1,a$
74150 buffer_List$(i,j)=a$
74160 next j
74170 next i
74180 close #1
74190 'erase buffer_List$
74200 'color rgb(255,255,255)
74210 i=0:key$="":bg=0:init"kb:4":bg2=0
74220 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
74230 key$ = inkey$
74240 bg = strig(1)
74250 bg2=strig(0)
74260 pause 200
74270 wend
74280 color rgb(0,0,0)
74290 locate 1,15:print "次へ"
74300 'show_ListData:
74310 'j=0
74320 repeat (j=0)
74330 show_ListData:
74340 cls
74350 color rgb(255,255,255)
74360 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
74370 '1の文字データー
74380 locate 4,14:print buffer_List$(2,j)
74390 '2の文字データー
74400 locate 4,9:print buffer_List$(3,j)
74410 '3の文字データー
74420 locate 4,5:print buffer_List$(4,j)
74430 '4の文字データー
74440 locate 11,14:print buffer_List$(5,j)
74450 '5の文字データー
74460 locate 11,9:PRINT buffer_List$(6,j)
74470 '6の文字データー
74480 locate 11,5:print buffer_List$(7,j)
74490 '7の文字データー
74500 locate 16,14:print buffer_List$(8,j)
74510 '8の文字データー
74520 locate 16,9:print buffer_List$(9,j)
74530 '9の文字データー
74540 locate 16,5:print buffer_List$(10,j)
74550 color rgb(0,0,0)
74560 locate 1,15:print "右の丸：次へ"
74570 if (bg=2 or key$=chr$(13)) then
74580     j=j+1
74590 endif
74600 if (bg2=2) then
74610    goto Main_Screen:
74620 endif
74630 until (j=n)
74640 'erase buffer_List$:
74650 goto show_ListData:
74660           'ファイル読み込み　ここまで
74670 func read_explain$(ba$)
74680 d$=""
74690 buf_String$=""
74700 if ba$="A" then
74710 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
74720 line input #1,a$
74730 a1$=mid$(a$,1,12)
74740 a2$=mid$(a$,13,17)
74750 a3$=mid$(a$,30,17)
74760 a4$=mid$(a$,47,18)
74770 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
74780 buf_String$ = a5$
74790 close #1
74800 endif
74810 if ba$="B"  then
74820 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
74830 line input #1,b$
74840 b1$=mid$(b$,1,15)
74850 b2$=mid$(b$,16,21)
74860 'b3$=mid$(b$,33,3)
74870 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
74880 buf_String$ = b4$
74890 close #1
74900 endif
74910 if ba$="C"  then
74920 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
74930 line input #1,c$
74940 c1$ = Mid$(c$,1,15)
74950 c2$ = Mid$(c$,16,33)
74960 c3$ = c1$ + chr$(13) + c2$
74970 buf_String$ = c3$
74980 close #1
74990 endif
75000 if ba$="D" then
75010 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
75020 line input #1,d$
75030 d1$=mid$(d$,1,15)
75040 d2$=mid$(d$,16,22)
75050 d3$=mid$(d$,38,7)
75060 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
75070 buf_String$ = d4$
75080 close #1
75090 endif
75100 if ba$="E"  then
75110 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
75120 line input #1,e$
75130 e1$=Mid$(e$,1,16)
75140 e2$=Mid$(e$,17,16)
75150 e3$=Mid$(e$,33,12)
75160 e4$=Mid$(e$,45,17)
75170 e5$=Mid$(e$,62,17)
75180 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
75190 buf_String$ = e6$
75200 close #1
75210 endif
75220 if ba$="F" then
75230 '改行を追加して表示を調整
75240 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
75250 line input #1,f$
75260 f1$=Mid$(f$,1,15)
75270 f2$=Mid$(f$,16,12)
75280 buf_String$ = f1$+chr$(13)+f2$
75290 close #1
75300 endif
75310 if ba$="G" then
75320 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
75330 line input #1,g$
75340 g1$ = mid$(g$,1,16)
75350 g2$ = mid$(g$,17,18)
75360 g3$ = mid$(g$,36,21)
75370 g4$ = mid$(g$,56,6)
75380 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
75390 buf_String$ = g5$
75400 close #1
75410 endif
75420 if ba$="H" then
75430 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
75440 line input #1,h$
75450 h1$=Mid$(h$,1,17)
75460 h2$=Mid$(h$,18,21)
75470 h3$=Mid$(h$,39,20)
75480 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
75490 buf_String$ = h$
75500 close #1
75510 endif
75520 if ba$ = "I" then
75530 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
75540 line input #1,i$
75550 i1$=Mid$(i$,1,10)
75560 i2$=Mid$(i$,11,13)
75570 i3$=Mid$(i$,25,16)
75580 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
75590 buf_String$ = i$
75600 close #1
75610 endif
75620 buffer$ = buf_String$
75630 endfunc buffer$
75640 'カバラ数（数秘番号を求める）
75650 func Kabara_Num(buffer_Year,month,day)
75660 '=============================
75670 'a1:4桁のうちの1桁目を求める
75680 '例 a1:1234の4が1桁目
75690 'a2:4桁のうちの2桁目を求める
75700 '例:a2:1234の3が2桁目
75710 'a3:4桁のうちの3桁目を求める
75720 '例 a3:1234の2が3桁目
75730 'a4:4桁のうちの4桁目を求める
75740 '例 a4:1234の1が4桁目
75750 '==============================
75760 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
75770 Year = buffer_Year
75780 '処理1　整数部分を取り出す。
75790 a4 = fix(Year / 1000)
75800 a3 = fix(Year / 100) - (a4 * 10)
75810 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
75820 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
75830 '処理　２　取り出した整数部分を足す。
75840 a_ = a1 + a2 + a3 + a4 +month + day
75850 'a1=0:a2=0:a3=0:a4=0
75860 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
75870 buffer = a_
75880 'else
75890 goto recomp2:
75900 'if (a_ = 10) then
75910 '  buffer = 1
75920 endif
75930 recomp2:
75940 a5=0:a6=0
75950 a5 = fix(a_ / 10)
75960 a6 = (a_) - (a5 * 10)
75970 a_ = a5 + a6
75980 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
75990 '結果に行く
76000 goto Res2:
76010 '  if ((a_>11) and (a_<99)) then
76020 else
76030 '再度計算
76040 goto recomp2:
76050 endif
76060 '     a1 = fix(a_ / 10)
76070 '     a2 = a_ - (a1 * 10)
76080 '     a_ = a1 + a2
76090 '     buffer = a_
76100 'endif
76110 'else
76120 '    bffer = a_
76130 'endif
76140 'endif
76150 'else
76160 'talk "プログラムを終了します。"
76170 'end
76180 'endif
76190 'kabara = 10
76200 Res2:
76210 kabara = a_
76220 endfunc kabara
76230 func Kabara_Aisyou$(buff1,buff2)
76240 a=0:b=0
76250 '範囲　1~9
76260 if ((buff1 > 0 and buff1 < 10)) then
76270 a = buff1
76280 else
76290 Select case buff1
76300 case 11:
76310 buff1=9:a=buff1
76320 case 22:
76330 buff1=10:a=buff1
76340 end select
76350 endif
76360 '範囲　１~９
76370 if ((buff2 > 0 and buff2 < 10)) then
76380 b = buff2
76390 else
76400 select case buff2
76410 case 11:
76420 buff2=9:b=buff2
76430 case 12:
76440 buff2=10:b=buff2
76450 end select
76460 endif
76470 Aisyou$ = Buffer_Business_Aisyou$(a,b)
76480 endfunc Aisyou$
76490 '=============================
76500 '自作関数 ここまで
76510 '1.数秘術　トップ画面
76520 '
76530 'Data_eraseを一番最後に持ってくる
76540 '=============================
76550 Data_erase:
76560 'メモリー削除
76570 erase buf_male_year
76580 erase buf_male_month
76590 erase buf_male_Born_Day
76600 erase buf_feMale_Born_Day
76610 erase buf_female_day
76620 erase buf_name1$
76630 erase buf_name2$
76640 erase buffer
76650 erase buf_chart$
76660 erase Buffer_Business_Aisyou$
76670 erase buffer_name$
76680 '上司の誕生日
76690 erase buf_Jyoushi_Born_Day
76700 '部下の誕生日
76710 erase buf_Buka_Born_Day
76720 erase buf_year
76730 erase buf_month
76740 erase buf_day
76750 'フォーカスライン
76760 erase Forcus1_buffer$
76770 erase Forcus2_buffer$
76780 erase Forcus3_buffer$
76790 'erase buffer_List$
76800 'Birds eye List Data 配列
76810 erase List$
76820 buffer$ = ""
76830 buf$ = ""
76840 buf_year$ = ""
76850 buf_Jyoushi_Kabara_Num = 0
76860 buf_Buka_Kabara_Num = 0
76870 count = 0
76880 buf_Month$ = ""
76890 buf_Day$ = ""
76900 b=0
76910 c=0
76920 return
