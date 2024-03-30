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
530 'AC.2024.01(Jan)
540 '2024.01.07:Ver131_20240107
550 '2024.01.14:Ver132_20240114
560 '2024.01.21:Ver133_20240121
570 '2024.01.28:Ver134_20240128
580 'AC.2024.02(Feb)
590 '2024.02.04:Ver135_20240204
600 '2024.02.11:Ver136_20240211
610 '2024.02.18:Ver137_20240218
620 '2024.02.25:Ver138_20240225
630 'AC.2024.03 (March)
640 '2024.03.03:Ver139_20240303
650 '2024.03.11:Ver140_20240311
660 '2024.03.18:Ver141_20240318
670 Version$ = "Ver:1.4.1_20240318a"
680 'Gazo Folder Japan
690 Gazo$ = "./data/Picture/"
700 'Gazo Size folder
710 Gazo_1920x1200$ = "./1920x1200/"
720 Gazo_WXGA$ = "./907x680/"
730 'Gazo Folder English
740 Gazo_Eng$ = "./data/Picture/English/"
750 'Voice Folder 2023
760 Voice$ = "./data/Voice/Voice/"
770 'BirtheyeChart Data:20230626
780 Birth_eye_chart$ = "./data/chart_data/"
790 'Data Folder
800 Data$ = "./data/data/"
810 'Business Aisyou 結果説明保存フォルダ
820 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
830 'Save BirdsEyeGrit List Folder
840 Save_data_Birdseye$ = "./data/Parsonal_data/"
850 '変数定義 パート
860 b=0:c=0:n=0:count=0
870 '***********************************************************
880 '1.WXGAの時
890 '(1200 x 800)
900 '***********************************************************
910 if (((size(1) <= 1200) and (size(1) <= 800))) then
920 X=5:Y=200
930 FONT=32
940 '***********************************************************
950 '1.WXGAの時
960 '(1200 x 800)
970 '***********************************************************
980 else
990 '***********************************************************
1000 '2.WUXGAの時(WXGA以外の時)
1010 '(1920 gload Gazo$ + "Selection.png",1,60,240
1020 '***********************************************************
1030 X=5:Y=300
1040 FONT=48
1050 '***********************************************************
1060 '2.WUXGAの時(WXGA以外の時)
1070 '(1920 x 1200)
1080 '***********************************************************
1090 endif
1100 'dim buffer_List$(11,1)
1110 dim buf_name1$(10),buf_name2$(10)
1120 dim buffer(9),buf_chart$(26,2)
1130 'ビジネスの相性　データー
1140 dim Buffer_Business_Aisyou$(12,12)
1150 '男女の相性
1160 dim Buffer_Bitween_sexes_Aisyou$(12,12)
1170 '生れた年代
1180 dim buf_year(4):buf_year$ = ""
1190 dim buf_month(2)
1200 dim buf_day(2)
1210 'フォーカスライン　配列
1220 dim Forcus1_buffer$(3)
1230 dim Forcus2_buffer$(3)
1240 dim Forcus3_buffer$(2)
1250 '生れた月
1260 buf_Month$ = ""
1270 '生れた日
1280 buf_Day$ = ""
1290 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
1300 dim buffer_name$(3)
1310 '1-1.上司の誕生日(数値データー)
1320 dim buf_Jyoushi_Born_Day(3)
1330 '1-2.上司の数秘ナンバー(数値データー)
1340 buf_Jyoushi_Kabara_Num = 0
1350 '2-1.部下の誕生日(数値データー)
1360 dim buf_Buka_Born_Day(3)
1370 '2-2.部下の数秘ナンバー(数秘データー)
1380 buf_Buka_Kabara_Num = 0
1390 dim buf_male_year(4)
1400 dim buf_male_month(2)
1410 dim buf_male_Born_Day(2)
1420 dim buf_feMale_Born_Day(2)
1430 dim buf_female_day(2)
1440 count=0
1450 'Birds Eye List 配列
1460 dim List$(6)
1470 '部下の数秘ナンバー
1480 'File 読み込み
1490 '1.ビジネスの相性占い
1500 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1510 for i=0 to 11
1520 for j=0 to 11
1530 input #1,a$
1540 Buffer_Business_Aisyou$(j,i) = a$
1550 next j
1560 next i
1570 close #1
1580 '2.男女の相性占い
1590 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1600 for i=0 to 11
1610 for j=0 to 11
1620 input #1,a$
1630 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1640 next j
1650 next i
1660 close #1
1670 '2.Birth Eye chart$
1680 '2.バーズアイグリッドを読み込む
1690 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1700 for j=0 to 25
1710 for i=0 to 1
1720 input #1,a$
1730 buf_chart$(j,i) = a$
1740 next i
1750 next j
1760 close #1
1770 'File 読み込み　ここまで
1780 'Main画面
1790 screen 1,1,1,1
1800 Main_Screen:
1810 cls 3:
1820 No=0
1830 '***********************************************************
1840 '1.WXGAの時
1850 '(1200 x 800)
1860 '***********************************************************
1870 if ((size(0) <= 1280) and (size(1) <= 800)) then
1880 gload Gazo$ + "Selection.png",1,5,220
1890 gload Gazo$ + "Selection.png",1,5,320
1900 gload Gazo$ + "Selection.png",1,5,420
1910 gload Gazo$ + "Selection.png",1,5,520
1920 '***********************************************************
1930 '1(4)
1940 gload Gazo$ + "Selection.png",1,130,420
1950 '2(5)
1960 gload Gazo$ + "Selection.png",1,280,420
1970 '3(6)
1980 gload Gazo$ + "Selection.png",1,430,420
1990 '4(7)
2000 gload Gazo$ + "Selection.png",1,130,330
2010 '5(8)
2020 gload Gazo$ + "Selection.png",1,280,330
2030 '6(9)
2040 'gload Gazo$ + "Selection.png",1,70,500
2050 gload Gazo$ + "Selection.png",1,430,330
2060 '7(10)
2070 gload Gazo$ + "Selection.png",1,130,250
2080 '8(11)
2090 gload Gazo$ + "Selection.png",1,280,250
2100 '9(12)
2110 gload Gazo$ + "Selection.png",1,430,250
2120 '0(13)
2130 gload Gazo$ + "Selection.png",1,280,495
2140 '14:(-1)OK ボタン
2150 gload Gazo$ + "Selection.png",1,430,495
2160 '***********************************************************
2170 '1.WXGAの時
2180 '(1200 x 800)
2190 '***********************************************************
2200 else
2210 '***********************************************************
2220 '2.WXGA(1200 x 800)以外の時
2230 '(1920 x 1200)のサイズ
2240 '***********************************************************
2250 gload Gazo$ + "Selection.png",1,5,200
2260 gload Gazo$ + "Selection.png",1,5,300
2270 gload Gazo$ + "Selection.png",1,5,400
2280 gload Gazo$ + "Selection.png",1,5,500
2290 '4:1
2300 gload Gazo$ + "Selection.png",1,35,300
2310 '5:2
2320 gload Gazo$ + "Selection.png",1,35,400
2330 '6:3
2340 gload Gazo$ + "Selection.png",1,35,500
2350 '7:4
2360 gload Gazo$ + "Selection.png",1,70,300
2370 '8:5
2380 gload Gazo$ + "Selection.png",1,70,400
2390 '9:6
2400 gload Gazo$ + "Selection.png",1,70,500
2410 '10:7
2420 gload Gazo$ + "Selection.png",1,430,295
2430 '11:8
2440 gload Gazo$ + "Selection.png",1,430,420
2450 '12:9
2460 gload Gazo$ + "Selection.png",1,430,440
2470 '13:0
2480 gload Gazo$ + "Selection.png",1,150,400
2490 '-1:Ok
2500 gload Gazo$ + "Selection.png",1,200,400
2510 '***********************************************************
2520 '2.WXGA(1200 x 800)以外の時
2530 '(1920 x 1200)のサイズ
2540 '***********************************************************
2550 endif
2560 if ex_info$(1) <> "JP" then
2570 '英語　トップ画面
2580 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
2590 'put@(0,0),1280,800,(1080,800)
2600 else
2610 '**********************************************************
2620 '［機能］　グラフィックバッファ（2番目の座標）からグラフィック画面（1番目の座標）へ画像データを引き出します。
2630 '
2640 '　［書式］　PUT@(x1,y1),w1,h1,(x2,y2)[,[w2],[h2][,描画モード]]
2650 '　［説明］
2660 '　　w1,w2=横サイズ h1,h2= 縦サイズ
2670 '　　転写元と転写先のサイズが異なる場合、拡大縮小描画されます。
2680 '　　各種重ね合わせの方式は pen命令で設定することができます。
2690 '　　<描画モード>の指定で次の選択ができます。
2700 '　　 0. グラフィックバッファからグラフィック画面への描画。
2710 '　　 1. グラフィック画面からグラフィック画面への描画。
2720 '　　 2. グラフィックバッファからグラフィックバッファへの描画。
2730 '***********************************************************'
2740 '*************************************************************************************************
2750 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2760 '日本語トップスクリーン
2770 'gload Gazo$ + "TopScreen_20230310.png",0,0,0
2780 'else
2790 '1.WXGAの時
2800 '************************************************************************************************
2810 if ((size(0) <= 1280) and (size(1) <= 800)) then
2820 gload Gazo$ + Gazo_WXGA$ + "Screen1_907x680_20240214.png",0,0,0
2830 else
2840 '************************************************************************************************
2850 '2.WXGA以外の時
2860 '************************************************************************************************
2870 gload Gazo$ + "TopScreen_20230310.png",0,0,0
2880 endif
2890 'put@(0,0),1280,800,(1080,800),,,0
2900 endif
2910 '***********************************************************************************************
2920 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2930 '***********************************************************************************************
2940 if ((size(0) <= 1280) and (size(1) <= 800)) then
2950 '************************************************************************************************
2960 'WXGAの場合　ここから (1280 x 800)
2970 '************************************************************************************************
2980 sp_def 0,(5,220),32,32
2990 sp_def 1,(5,320),32,32
3000 sp_def 2,(5,420),32,32
3010 sp_def 3,(5,520),32,32
3020 '1(4)
3030 sp_def 4,(130,420),32,32
3040 '2(5)
3050 sp_def 5,(280,420),32,32
3060 '3(6)
3070 sp_def 6,(430,420),32,32
3080 '4(7)
3090 sp_def 7,(130,330),32,32
3100 '5(8)
3110 sp_def 8,(280,330),32,32
3120 '6(9)
3130 sp_def 9,(430,330),32,32
3140 '9(10)
3150 sp_def 10,(130,250),32,32
3160 '6(11)
3170 sp_def 11,(280,250),32,32
3180 '9(12)
3190 sp_def 12,(430,250),32,32
3200 sp_def 13,(280,495),32,32
3210 '14:OK ボタン (-1)
3220 sp_def 14,(430,495),32,32
3230 'Sprite OFF
3240 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3250 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
3260 sp_put 0,(5,220),0,0
3270 sp_put 1,(5,320),1,0
3280 sp_put 2,(4,420),2,0
3290 sp_put 3,(5,520),3,0
3300 '1
3310 sp_put 4,(130,420),4,0
3320 '2
3330 sp_put 5,(280,420),5,0
3340 '3
3350 sp_put 6,(430,420),6,0
3360 '4
3370 sp_put 7,(130,330),7,0
3380 '5
3390 sp_put 8,(280,330),8,0
3400 '6
3410 sp_put 9,(430,330),9,0
3420 '7
3430 sp_put 10,(130,250),10,0
3440 '8
3450 sp_put 11,(280,250),11,0
3460 '9
3470 sp_put 12,(430,250),12,0
3480 '0
3490 sp_put 13,(280,495),13,0
3500 '14:OK ボタン
3510 sp_put 14,(430,495),14,0
3520 '************************************************************************************************
3530 'WXGAの場合　ここまで (1280 x 800)
3540 '************************************************************************************************
3550 else
3560 '選択肢の丸
3570 '************************************************************************************************
3580 'WUXGAの場合　ここから (1920 x 1200)
3590 '************************************************************************************************
3600 gload Gazo$ + "downscreen.png",0,0,800
3610 sp_def 0,(5,300),32,32
3620 sp_def 1,(5,400),32,32
3630 sp_def 2,(5,500),32,32
3640 sp_def 3,(5,600),32,32
3650 '1
3660 sp_def 4,(35,300),32,32
3670 '2
3680 sp_def 5,(35,400),32,32
3690 '3
3700 sp_def 6,(35,500),32,32
3710 '4
3720 sp_def 7,(70,300),32,32
3730 '5
3740 sp_def 8,(70,400),32,32
3750 '6
3760 sp_def 9,(70,500),32,32
3770 '7
3780 sp_def 10,(110,300),32,32
3790 '8
3800 sp_def 11,(110,400),32,32
3810 '9
3820 sp_def 12,(110,400),32,32
3830 sp_def 13,(150,400),32,32
3840 sp_def 14,(200,400),32,32
3850 'Sprite OFF
3860 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3870 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
3880 sp_put 0,(5,300),0,0
3890 sp_put 1,(5,400),1,0
3900 sp_put 2,(5,500),2,0
3910 sp_put 3,(5,600),3,0
3920 '1
3930 sp_put 4,(130,300),4,0
3940 '2
3950 sp_put 5,(130,400),5,0
3960 '3
3970 sp_put 6,(130,500),6,0
3980 '4
3990 sp_put 7,(340,300),7,0
4000 '5
4010 sp_put 8,(340,400),8,0
4020 '6
4030 sp_put 9,(340,500),9,0
4040 '7
4050 sp_put 10,(540,300),10,0
4060 '8
4070 sp_put 11,(540,400),11,0
4080 '9
4090 sp_put 12,(540,500),12,0
4100 '0
4110 sp_put 13,(340,600),13,0
4120 sp_put 14,(540,600),14,0
4130 '************************************************************************************************
4140 'WUXGAの場合　ここまで  (1920 x 1200)
4150 '************************************************************************************************
4160 endif
4170 Main_Top:
4180 'Main Message 2023.06.07
4190 '再生を止める
4200 play ""
4210 init "kb:4"
4220 'font 32:
4230 font 40
4240 if ex_info$(1) <> "JP" then
4250 '1.英語表示ターム
4260 print chr$(13) + chr$(13) + chr$(13)
4270 color rgb(217,255,212)
4280 print "Please Select Number?" + chr$(13)+chr$(13)
4290 '0
4300 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
4310 '1
4320 print " :2.Setting" + chr$(13)+chr$(13)
4330 '2
4340 print " :3.Help" + chr$(13)
4350 '3
4360 print " :4.(Finishing)Program" + chr$(13)
4370 COLOR rgb(0,0,0):No=0
4380 locate 1,15
4390 print "                                        "
4400 locate 1,15
4410 print "1.It has Selected Kabara Fortune Telling"
4420 '1.英語表示ターム
4430 '---------音声 日本語　英語に変える----------------
4440 'play Voice$ + "Voice_Main_Message_20230607.mp3"
4450 '---------音声 日本語　英語に変える----------------
4460 else
4470 '2.日本語表示ターム
4480 'Main_Screen_Select:
4490 '************************************************************************************************
4500 '1.WXGAの場合　ここから (1280 x 800)
4510 '************************************************************************************************
4520 if ((size(0) <= 1280) and (size(1) <= 800)) then
4530 '************************************************************************************************
4540 '1.WXGAの場合　ここから (1280 x 800)
4550 '************************************************************************************************
4560 font FONT
4570 color rgb(217,255,212)
4580 locate 1,5
4590 print "番号を選んでください"
4600 '0
4610 locate 1,7
4620 print " :1.数秘術占い"
4630 '1
4640 locate 1,10
4650 print " :2.設 定"
4660 '2
4670 locate 1,13
4680 print " :3.ヘルプ"
4690 '3
4700 locate 1,16
4710 print " :4.(プログラムを)終了する"
4720 COLOR rgb(0,0,0):No=0
4730 'locate 1,15
4740 '3行下げる
4750 if (count = 0) then
4760 locate 1,19
4770 print "           "
4780 locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択"
4790 play Voice$ + "Voice_Main_Message_20230607.mp3"
4800 endif
4810 '************************************************************************************************
4820 '1.WXGAの場合　ここまで (1280 x 800)
4830 '************************************************************************************************
4840 '2.日本語表示ターム
4850 else
4860 '************************************************************************************************
4870 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
4880 '************************************************************************************************
4890 font FONT
4900 print chr$(13) + chr$(13) + chr$(13)
4910 color rgb(217,255,212)
4920 print "番号を選んでください" + chr$(13)
4930 '0
4940 print " :1.数秘術占い" + chr$(13)
4950 '1
4960 print " :2.設 定" + chr$(13)
4970 '2
4980 print " :3.ヘルプ" + chr$(13)
4990 '3
5000 print " :4.(プログラムを)終了する" + chr$(13)
5010 COLOR rgb(0,0,0):No=0
5020 'locate 1,15
5030 '3行下げる
5040 if count=0 then
5050 locate 1,15
5060 print "           "
5070 locate 1,15:color rgb(0,0,0):print "1.数秘術占いを選択"
5080 play Voice$ + "Voice_Main_Message_20230607.mp3"
5090 endif
5100 '************************************************************************************************
5110 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5120 '************************************************************************************************
5130 endif
5140 '************************************************************************************************
5150 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5160 '************************************************************************************************
5170 endif
5180 Main_Screen_Select:
5190 y = 0:key$ = "":bg = 0:bg2=0
5200 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
5210 y = stick(1)
5220 '"May (2023)"
5230 key$ = inkey$
5240 bg = strig(1)
5250 bg2 = strig(0)
5260 pause 200
5270 wend
5280 '*******************************************************************************************************************************
5290 '  WUXGA(1920 x 1200)
5300 '  X=5:Y=300
5310 '  WXGA (1280 x 800)
5320 '  X=5:Y=200
5330 '*******************************************************************************************************************************
5340 '1.
5350 'ジョイパッドのソース ソート　ここから
5360 'カーソル　下 or 十字キー下
5370 '************************************************************************************************
5380 '1.WXGAの場合　ここから (1280 x 800)
5390 '************************************************************************************************
5400 if ((size(0) <= 1280) and (size(1) <= 800)) then
5410 '************************************************************************************************
5420 '1.WXGAの場合　ここから (1280 x 800)
5430 '************************************************************************************************
5440 if ((y = 1) or (key$ = chr$(31))) then
5450 select case No
5460 case 0:
5470 '1
5480 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:count = count + 1:beep:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":count=cunt+1:goto Main_Screen_Select:
5490 case 1:
5500 '2
5510 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                                 ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":count=count+1:goto Main_Screen_Select:
5520 case 2:
5530 '3
5540 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:color rgb(0,0,0):print "4.(プログラムを)終了するを選択":count=count+1:goto Main_Screen_Select:
5550 case 3:
5560 '0
5570 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(X,Y+20),0,0:beep:pause 200:count = count + 1:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択":count=count+1:goto Main_Screen_Select:
5580 end select
5590 endif
5600 '2.
5610 'カーソル　上　or 十字キー  上
5620 if ((y = -1) or (key$ = chr$(30))) then
5630 select case No
5640 case 0:
5650 '3
5660 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:COLOR rgb(0,0,0):print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
5670 case 1:
5680 '0
5690 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:COLOR rgb(0,0,0):print  "1.数秘術占いを選択":goto Main_Screen_Select:
5700 case 2:
5710 '1
5720 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":goto Main_Screen_Select:
5730 case 3:
5740 '2
5750 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                   ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":goto Main_Screen_Select:
5760 end select
5770 endif
5780 'ジョイパッド　ソース 部分　ここまで
5790 'ジョイパッド右　　or Enter key 決定
5800 if ((bg = 2) OR (key$ = chr$(13))) then
5810 select case No
5820 case 0:
5830 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen: 'Kabara_First_Top:
5840 case 1:
5850 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
5860 case 2:
5870 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
5880 case 3:
5890 play "":pause 200
5900 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:font 16:end
5910 end select
5920 endif
5930 if (bg2 = 2) then
5940 play "":pause 200
5950 play Voice$ + "Voice_Main_Message_20230607.mp3"
5960 goto Main_Screen_Select:
5970 endif
5980 '************************************************************************************************
5990 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
6000 '************************************************************************************************
6010 else
6020 if ((y = 1) or (key$ = chr$(31))) then
6030 select case No
6040 case 0:
6050 '1
6060 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6070 case 1:
6080 '2
6090 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6100 case 2:
6110 '3
6120 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6130 case 3:
6140 '0
6150 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
6160 end select
6170 endif
6180 '2.
6190 'カーソル　上　or 十字キー  上
6200 if ((y = -1) or (key$ = chr$(30))) then
6210 select case No
6220 case 0:
6230 '3
6240 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6250 case 1:
6260 '0
6270 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
6280 case 2:
6290 '1
6300 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6310 case 3:
6320 '2
6330 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6340 end select
6350 endif
6360 'ジョイパッド　ソース 部分　ここまで
6370 'ジョイパッド右　　or Enter key 決定
6380 if ((bg = 2) OR (key$ = chr$(13))) then
6390 select case No
6400 case 0:
6410 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen:  'Kabara_First_Top:
6420 case 1:
6430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
6440 case 2:
6450 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
6460 case 3:
6470 play "":pause 200
6480 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
6490 end select
6500 endif
6510 if (bg2 = 2) then
6520 play "":pause 200
6530 play Voice$ + "Voice_Main_Message_20230607.mp3"
6540 goto Main_Screen_Select:
6550 endif
6560 '************************************************************************************************
6570 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6580 '************************************************************************************************
6590 endif
6600 'Version
6610 Version:
6620 cls 3:PLAY ""
6630 if ((size(0) <= 1280) and (size(1) <= 800)) then
6640 '************************************************************************************************
6650 '1.WXGA ここから (1280 x 800)
6660 '************************************************************************************************
6670 gload Gazo$   + Gazo_WXGA$ + "VersionScreen_918x680_20240219.png",0,0,0
6680 '************************************************************************************************
6690 '1.WXGA ここまで (1280 x 800)
6700 '************************************************************************************************
6710 else
6720 '************************************************************************************************
6730 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
6740 '************************************************************************************************
6750 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
6760 gload Gazo$ + "downscreen.png",0,0,800
6770 '************************************************************************************************
6780 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6790 '************************************************************************************************
6800 endif
6810 init"kb:4":font FONT
6820 'talk"バージョン情報です"
6830 'Message :Version
6840 play Voice$ +  "Voice_Version_Message_20230607.mp3"
6850 if ((size(0) <= 1280) and (size(1) <= 800)) then
6860 color rgb(0,0,255)
6870 locate 1,5
6880 print "・Title:数秘術占い";chr$(13)
6890 locate 1,8
6900 print "・" + Version$ + chr$(13)
6910 locate 1,10
6920 print "・Author:licksjp"+chr$(13)
6930 locate 1,13
6940 print "・E-mail:licksjp@gmail.com" + chr$(13)
6950 locate 0,15
6960 print "(C)licksjp All rights " + chr$(13)
6970 locate 7,16
6980 print "reserved since 2009"+chr$(13)
6990 locate 0,19
7000 color rgb(0,0,0)
7010 print "ジョイパッドの右を押してください"
7020 else
7030 locate 0,3
7040 color rgb(0,0,255)
7050 print "・Title:数秘術占い";chr$(13)
7060 print "・" + Version$ + chr$(13)
7070 print "・Author:licksjp"+chr$(13)
7080 print "・E-mail:licksjp@gmail.com" + chr$(13)
7090 locate 0,12
7100 print "(C)licksjp All rights " + chr$(13)
7110 locate 7,13
7120 print "reserved since 2009"+chr$(13)
7130 locate 0,18
7140 color rgb(255,255,255)
7150 print "ジョイパッドの右を押してください"
7160 endif
7170 Versionn_Selection:
7180 bg = 0:key$ = "":bg2 = 0
7190 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
7200 bg = strig(1)
7210 key$ = inkey$
7220 bg2 = strig(0)
7230 pause 200
7240 wend
7250 if ((bg = 2) or (key$ = chr$(13))) then
7260 cls 4:goto Main_Screen:
7270 endif
7280 if (bg2=2) then
7290 play "":pause 200
7300 play Voice$ + "Voice_Version_Message_20230607.mp3"
7310 goto Versionn_Selection:
7320 endif
7330 '1.数秘ナンバーを求める
7340 '誕生日入力(生れた年代)
7350 Input_Seireki:
7360 '************************************************************************************************
7370 '1.WXGAの時1200x800の時
7380 '************************************************************************************************
7390 '************************************************************************************************
7400 '2.WUXGAの時1920x1200の時
7410 '************************************************************************************************
7420 cls 3:play "":count=0:count2=0
7430 'No = -1:Okのとき
7440 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
7450 '************************************************************************************************
7460 '配列buf_year(4)を0で埋める。:データー初期化 ここから
7470 '************************************************************************************************
7480 for i=0 to 3
7490 buf_year(i)=0
7500 next i
7510 '************************************************************************************************
7520 '配列buf_year(4)を0で埋める。 :データー初期化　ここまで
7530 '************************************************************************************************
7540 '************************************************************************************************
7550 '1.WXGAの時1200x800の時
7560 '************************************************************************************************
7570 if ((size(0) <= 1280) and (size(1) <= 800)) then
7580 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png",0,0,0
7590 else
7600 '************************************************************************************************
7610 '2.WUXGAの時1920x1200の時
7620 '************************************************************************************************
7630 gload Gazo$ + "Screen2.png",0,0,0
7640 gload Gazo$ + "downscreen.png",0,0,800
7650 '************************************************************************************************
7660 '2.WUXGAの時1920x1200の時
7670 '************************************************************************************************
7680 endif
7690 'Init"kb:2"
7700 '音声ファイル再生 2023.06.07
7710 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
7720 font FONT
7730 locate 0,1
7740 if ex_info$(1) <> "JP" then
7750 color rgb(255,255,255)
7760 color rgb(255,255,255)
7770 print "Input Born Year?" + chr$(13)
7780 color rgb(255,255,255)
7790 locate 2,4
7800 print "Your Born Year(4 dedgit for AC):" + buf_year$
7810 else
7820 '文字色：黒　 color rgb(0,0,0)
7830 color rgb(255,255,255)
7840 print "生まれた年代を入れて下さい" + chr$(13)
7850 color rgb(255,255,255)
7860 locate 2,4
7870 print "生まれた年代(西暦4桁):" + buf_year$
7880 endif
7890 '=============================
7900 'テンキーの色(1~９)　白 ,決定ボタン　青
7910 '=============================
7920 color rgb(255,255,255)
7930 sp_on 4,0: sp_on 5,0:sp_on 6,0
7940 sp_on 7,0:sp_on 8,0:sp_on 9,0
7950 sp_on 10,0:sp_on 11,0:sp_on 12,0
7960 sp_on 13,0:sp_on 14,1
7970 Input_Seireki2:
7980 key$="":bg=0:y=0:y2=0:bg2=0:
7990 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
8000 key$ = inkey$
8010 bg = strig(1)
8020 y = stick(1)
8030 y2 = stick(0)
8040 bg2 = strig(0)
8050 pause 200
8060 wend
8070 '十字キー　ここから
8080 '上の矢印　または、十字キー上
8090 if ((y = -1) or (key$ = chr$(30))) then
8100 select case No
8110 'No=-1:okのとき:初期の状態
8120 '0kボタンから３に移動
8130 '上に行く 処理
8140 case -1:
8150 No=3:sp_on 6,1:sp_on 14,0:beep
8160 pause 200:goto Input_Seireki2:
8170 '選択肢:3
8180 '3ボタンから 6に移動
8190 case 3:
8200 No=6:sp_on 9,1:sp_on 6,0:beep
8210 pause 200:goto Input_Seireki2:
8220 '6ボタンから ９に移動
8230 case 6:
8240 No=9:sp_on 12,1:sp_on 9,0:beep
8250 pause 200:goto Input_Seireki2:
8260 '6ボタンから ９に移動　ここまで
8270 '9で上を押して何もしない
8280 case 9:
8290 '何もしない
8300 No=9
8310 beep:pause 200:goto Input_Seireki2:
8320 '9で上を押しても何もしない　ここまで
8330 '上　 0ボタンから2ボタン
8340 'sp_on 6,1:1
8350 'sp_on 8,1:5
8360 'sp_on 7,1:7
8370 case 0:
8380 No=2:sp_on 13,0:sp_on 5,1:beep
8390 pause 200:goto Input_Seireki2:
8400 '上  0ボタンから2ボタン　ここまで
8410 '2から５になる 上
8420 case 2:
8430 No=5:sp_on 8,1:sp_on 5,0:beep
8440 pause 200:goto Input_Seireki2:
8450 case 5:
8460 No=8:sp_on 11,1:sp_on 8,0:beep
8470 pause 200:goto Input_Seireki2:
8480 case 8:
8490 beep:pause 200:goto Input_Seireki2:
8500 case 1:
8510 No=4:sp_on 7,1:sp_on 4,0:beep
8520 pause 200:goto Input_Seireki2:
8530 case 4:
8540 No=7:sp_on 10,1:sp_on 7,0:beep
8550 pause 200:goto Input_Seireki2:
8560 case 7:
8570 beep:pause 200:goto Input_Seireki2:
8580 end select
8590 endif
8600 '左３　ここまで
8610 '下の矢印
8620 '中央 2
8630 if ((y=1) or (key$ = chr$(31))) then
8640 select case No
8650 '9から６に下げる
8660 case 9:
8670 No=6:sp_on 12,0:sp_on 9,1:beep
8680 pause 200:goto Input_Seireki2:
8690 '6から３に下げる
8700 case 6:
8710 No=3:sp_on 9,0:sp_on 6,1:beep
8720 pause 200:goto Input_Seireki2:
8730 '3から０ｋに変える
8740 case 3:
8750 No=-1:sp_on 14,1:sp_on 6,0:beep
8760 pause 200:goto Input_Seireki2:
8770 'Okから下のボタンを押しても何もしない
8780 case -1:
8790 beep:pause 200:goto Input_Seireki2:
8800 case 8:
8810 No=5:sp_on 8,1:sp_on 11,0:beep
8820 pause 200:goto Input_Seireki2:
8830 case 5:
8840 No=2:sp_on 5,1:sp_on 8,0:beep
8850 pause 200:goto Input_Seireki2:
8860 case 2:
8870 No=0:sp_on 13,1:sp_on 5,0:beep
8880 pause 200:goto Input_Seireki2:
8890 case 0:
8900 beep:pause 200:goto Input_Seireki2:
8910 case 7:
8920 No=4:sp_on 7,1:sp_on 10,0:beep
8930 pause 200:goto Input_Seireki2:
8940 case 4:
8950 No=1:sp_on 4,1:sp_on 7,0:beep
8960 pause 200:goto Input_Seireki2:
8970 case 1:
8980 beep:pause 200:goto Input_Seireki2:
8990 end select
9000 endif
9010 '左へボタン 十字キー　左　or 　カーソル左
9020 if ((y2 = -1) or (key$ = chr$(29))) then
9030 select case No
9040 'Ok ボタン  Okから　左　０に行く
9050 case -1:
9060 No=0:sp_on 13,1:sp_on 14,0:beep
9070 pause 200:goto Input_Seireki2:
9080 '0 ボタン  左　何もしない
9090 case 0:
9100 beep:pause 200:goto Input_Seireki2:
9110 case 3:
9120 No=2:sp_on 5,1:sp_on 6,0:beep
9130 pause 200:goto Input_Seireki2:
9140 case 2:
9150 No=1:sp_on 5,0:sp_on 4,1:beep
9160 pause 200:goto Input_Seireki2:
9170 case 1:
9180 beep:pause 200:goto Input_Seireki2:
9190 case 6:
9200 No=5:sp_on 8,1:sp_on 9,0:beep
9210 pause 200:goto Input_Seireki2:
9220 case 5:
9230 No=4:sp_on 7,1:sp_on 8,0:beep
9240 pause 200:goto Input_Seireki2:
9250 case 4:
9260 beep:pause 200:goto Input_Seireki2:
9270 case 9:
9280 No=8:sp_on 11,1:sp_on 12,0:beep
9290 pause 200:goto Input_Seireki2:
9300 case 8:
9310 No=7:sp_on 10,1:sp_on 11,0:beep
9320 pause 200:goto Input_Seireki2:
9330 case 7:
9340 beep:pause 200:goto Input_Seireki2:
9350 end select
9360 endif
9370 '右  十字キー　右　or カーソル　右
9380 if ((y2 = 1) or (key$ = chr$(28))) then
9390 select case No
9400 '0ボタンからokボタン右に移動
9410 case 0:
9420 No=-1:sp_on 14,1:sp_on 13,0:beep
9430 pause 200:goto Input_Seireki2:
9440 '0ボタンからokボタン 右に移動　ここまで
9450 'OKボタンで右を押して何もしない
9460 case -1:
9470 pause 200:goto Input_Seireki2:
9480 case 1:
9490 No=2:sp_on 5,1:sp_on 4,0:beep
9500 pause 200:goto Input_Seireki2:
9510 case 2:
9520 No=3:sp_on 6,1:sp_on 5,0
9530 beep:pause 200:goto Input_Seireki2:
9540 case 3:
9550 beep:pause 200:goto Input_Seireki2:
9560 case 4:
9570 No=5:sp_on 8,1:sp_on 7,0:beep
9580 pause 200:goto Input_Seireki2:
9590 case 5:
9600 No=6:sp_on 9,1:sp_on 8,0:beep
9610 pause 200:goto Input_Seireki2:
9620 case 7:
9630 No=8:sp_on 11,1:sp_on 10,0:beep
9640 pause 200:goto Input_Seireki2:
9650 case 8:
9660 No=9:sp_on 12,1:sp_on 11,0:beep
9670 pause 200:goto Input_Seireki2:
9680 case 9:
9690 beep:pause 200:goto Input_Seireki2:
9700 case 6:
9710 beep:pause 200:goto Input_Seireki2:
9720 end select
9730 'Okから右ボタンを押して何もしない ここまで
9740 endif
9750 '十字キー　ここまで
9760 if ((bg=2) or (key$=chr$(13))) then
9770 select case count
9780 case 0:
9790 count=1
9800 if (No=-1) then
9810 count=0
9820 'Okボタンを押したとき
9830 goto Input_Seireki2:
9840 else
9850 '===================================
9860 'Okボタン以外が押されたとき  1桁目の入力
9870 '===================================
9880 count2=1
9890 if (No >= 1 and No <= 2) then
9900 buf_year$="":buf_year$ = str$(No)
9910 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
9920 if ex_info$(1) <> "JP" then
9930 n1= len("Input Born Year?(4 dedgit):")
9940 else
9950 n1 = len("生まれた年代(西暦4桁):")
9960 endif
9970 locate 2,4
9980 color rgb(255,255,255)
9990 if ex_info$(1) <> "JP" then
10000 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
10010 else
10020 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
10030 endif
10040 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
10050 'print "生まれた年代(西暦4桁):";buf_year2$
10060 print buf_Born_Year_line$
10070 goto Input_Seireki2:
10080 else
10090 count=0
10100 ui_msg"数字が範囲外になります。"
10110 buf_year$="":buf_year=0
10120 goto Input_Seireki2:
10130 endif
10140 endif
10150 case 1:
10160 count = 2
10170 if (No = -1) then
10180 count = 1
10190 goto Input_Seireki2:
10200 else
10210 count2 = 1
10220 b = val(buf_year$)
10230 buf_year = b * 10 + No
10240 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
10250 locate 2,4
10260 color rgb(255,255,255)
10270 print "                                                                "
10280 locate 2,4
10290 if ex_info$(1) <> "JP" then
10300 print "Input Born Year(4 dedgit):";buf_year$
10310 else
10320 print "生まれた年代(西暦4桁):";buf_year2$
10330 endif
10340 'if (No = -1) then
10350 'count=1
10360 goto Input_Seireki2:
10370 endif
10380 case 2:
10390 count=3
10400 if (No=-1) then
10410 count =2
10420 goto Input_Seireki2:
10430 else
10440 b = val(buf_year$)
10450 buf_year = b*10 + No
10460 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
10470 locate 2,4
10480 color rgb(255,255,255)
10490 print "                                        "
10500 locate 2,4
10510 if ex_info$(1) <> "JP" then
10520 print "Input Born Year?(4 dedgit):";buf_year$
10530 else
10540 print "生まれた年代(西暦4桁):";buf_year2$
10550 endif
10560 goto Input_Seireki2:
10570 endif
10580 case 3:
10590 count=4
10600 if (No = -1) then
10610 count=3
10620 goto Input_Seireki2:
10630 else
10640 b = val(buf_year$)
10650 buf_year = b * 10 + No
10660 buf_year$ = str$(buf_year)
10670 locate 2,4
10680 color RGB(255,255,255)
10690 print "                                      "
10700 locate 2,4
10710 if ex_info$(1) <> "JP" then
10720 print "Input Born Year?(4 dedgit):";buf_year$
10730 else
10740 print "生まれた年代(西暦4桁):";buf_year$
10750 endif
10760 buf_year=val(buf_year$)
10770 'year=val(buf_year$)
10780 'if (No=-1) then
10790 'goto Input_Born_Month:
10800 'else
10810 goto Input_Seireki2:
10820 endif
10830 case 4:
10840 'bufyear=buf_year
10850 if (No = -1) then
10860 buf_year = val(buf_year$)
10870 bufyear = buf_year
10880 sp_on 14,0
10890 goto Input_Born_Month:
10900 else
10910 goto Input_Seireki2:
10920 endif
10930 end select
10940 endif
10950 '=========================
10960 'bg2　キャンセルボタン
10970 '=========================
10980 if (bg2 = 2) then
10990 select case count2
11000 case 0:
11010 'Okボタンを押したときの処理
11020 if (No = -1) then
11030 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
11040 'count = 0
11050 locate 2,4
11060 color rgb(255,255,255)
11070 print "                                      "
11080 locate 2,4
11090 if ex_info$(1) <> "JP" then
11100 print "Input Born Year?(4 dedgit):";buf_year$
11110 else
11120 print "生まれた年代（西暦4桁):";buf_year$
11130 endif
11140 '=============================
11150 'case 0:前の画面に戻る 数秘術トップメニュー
11160 '=============================
11170 sp_on 14,0:goto Kabara_TopScreen:
11180 else
11190 'count=0
11200 '(buf_year=0) then
11210 buf_year = 0:buf_year$ = string$(4,"*")
11220 goto Input_Seireki2:
11230 'endif
11240 endif
11250 case 1:
11260 if (No = -1) then
11270 count2 = 0:count = 0
11280 buf$=right$(buf_year$,1)
11290 if (val(buf$) >= 1 and val(buf$) <= 9) then
11300 buf_year$ = "****":buf_year=0
11310 color rgb(255,255,255)
11320 locate 0,4:
11330 print "                                      "
11340 locate 2,4
11350 if ex_info$(1) <> "JP" then
11360 print "Input Born Year(4 dedgit):";buf_year$
11370 else
11380 print "生まれた年代（西暦4桁):" + buf_year$
11390 endif
11400 goto Input_Seireki2:
11410 endif
11420 else
11430 endif
11440 end select
11450 endif
11460 end
11470 'Input"生れた年代(4桁,〜2025年):",year
11480 'if year > 2025 then goto Input_Seireki:
11490 'if year = 123 then cls 3:cls 4:goto Main_Screen:
11500 '"4桁目"
11510 'bufyear4 = fix(year / 1000)
11520 '"3桁目"
11530 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
11540 '"2桁目"
11550 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
11560 '"1桁目"
11570 'bufyear1 = fix((year - ((bufyear4*
11580 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
11590 '生れた月を入力
11600 Input_Born_Month:
11610 cls 3:play "":count=0:count2=0
11620 'No=-1:Okのとき
11630 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
11640 for i=0 to 1
11650 buf_month(i)=0
11660 next i
11670 '***********************************************************
11680 '1.WXGAの時 ここから
11690 '(1200 x 800)
11700 '***********************************************************
11710 if ((size(0) <= 1280) and (size(1) <= 800)) then
11720 gload Gazo$ + Gazo_WXGA$ +"Screen2_907x680_20240216.png",0,0,0
11730 '***********************************************************
11740 '1.WXGAの時　ここまで
11750 '(1200 x 800)
11760 '***********************************************************
11770 else
11780 '***********************************************************
11790 '2.WUXGAの時(WXGA以外の時)　ここから
11800 '(1920 gload Gazo$ + "Selection.png",1,60,240
11810 '***********************************************************
11820 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11830 gload Gazo$ + "Screen2.png",0,0,0
11840 gload Gazo$ + "downscreen.png",0,0,800
11850 '***********************************************************
11860 '2.WUXGAの時(WXGA以外の時)　ここまで
11870 '(1920 gload Gazo$ + "Selection.png",1,60,240
11880 '***********************************************************
11890 endif
11900 'Init"kb:2"
11910 if ex_info$(1) <> "JP" then
11920 else
11930 '音声ファイル再生 2023.06.07
11940 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
11950 endif
11960 font FONT
11970 locate 0,1
11980 '文字色：黒　 color rgb(0,0,0)
11990 if ex_info$(1) <> "JP" then
12000 '英語パート
12010 '文字色:白
12020 color rgb(255,255,255)
12030 print "Input Born Month?(1~12):" + chr$(13)
12040 '文字色:白
12050 color rgb(255,255,255)
12060 locate 2,4
12070 '文字色:白
12080 print "Your Born Month?(1~12):";buf_Month$
12090 color rgb(255,255,255)
12100 else
12110 '日本語パート
12120 color rgb(255,255,255)
12130 print "生まれた月を入れて下さい" + chr$(13)
12140 '文字色:白
12150 color rgb(255,255,255)
12160 locate 2,4
12170 '文字色:白
12180 print "生まれた月(1月~12月):";buf_Month$
12190 color rgb(255,255,255)
12200 endif
12210 'locate 4,6:print ":7"
12220 'locate 9,6:print ":8"
12230 'locate 12,6:print ":9"
12240 'locate 4,6
12250 '文字色:赤
12260 'print ":7  :8  :9" + chr$(13)
12270 'color rgb(255,255,255)
12280 'locate 4,8
12290 'print ":4  :5  :6" + chr$(13)
12300 'color rgb(255,255,255)
12310 'locate 4,10
12320 'print ":1  :2  :3" + chr$(13)
12330 'locate 4,12
12340 'print "    :0"
12350 'locate 12,12
12360 'color rgb(255,0,0)
12370 'print ":Ok"
12380 sp_on 4,0: sp_on 5,0:sp_on 6,0
12390 sp_on 7,0:sp_on 8,0:sp_on 9,0
12400 sp_on 10,0:sp_on 11,0:sp_on 12,0
12410 sp_on 13,0:sp_on 14,1
12420 Input_Born_Month2:
12430 key$="":bg=0:y=0:y2=0:bg2=0
12440 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12450 key$ = inkey$
12460 bg = strig(1)
12470 y = stick(1)
12480 y2 = stick(0)
12490 bg2 = strig(0)
12500 pause 200
12510 wend
12520 if ((size(0) <= 1280) and (size(1) <= 800)) then
12530 '***********************************************************
12540 '1.WXGAの時 ここから
12550 '(1200 x 800)
12560 '***********************************************************
12570 '十字キー　ここから
12580 '上の矢印　または、十字キー上
12590 if ((y = -1) or (key$ = chr$(30))) then
12600 select case No
12610 'No=-1:okのとき:初期の状態
12620 '0kボタンから３に移動
12630 '上に行く 処理
12640 case -1:
12650 No=3:sp_on 6,1:sp_on 14,0:beep
12660 pause 200:goto Input_Born_Month2:
12670 '選択肢:3
12680 '3ボタンから 6に移動
12690 case 3:
12700 No=6:sp_on 9,1:sp_on 6,0:beep
12710 pause 200:goto Input_Born_Month2:
12720 '6ボタンから ９に移動
12730 case 6:
12740 No=9:sp_on 12,1:sp_on 9,0:beep
12750 pause 200:goto Input_Born_Month2:
12760 '6ボタンから ９に移動　ここまで
12770 '9で上を押して何もしない
12780 case 9:
12790 '何もしない
12800 No=9
12810 beep:pause 200:goto Input_Born_Month2:
12820 '9で上を押しても何もしない　ここまで
12830 '上　 0ボタンから2ボタン
12840 'sp_on 6,1:1
12850 'sp_on 8,1:5
12860 'sp_on 7,1:7
12870 case 0:
12880 No=2:sp_on 13,0:sp_on 5,1:beep
12890 pause 200:goto Input_Born_Month2:
12900 '上  0ボタンから2ボタン　ここまで
12910 '2から５になる 上
12920 case 2:
12930 No=5:sp_on 8,1:sp_on 5,0:beep
12940 pause 200:goto Input_Born_Month2:
12950 case 5:
12960 No=8:sp_on 11,1:sp_on 8,0:beep
12970 pause 200:goto Input_Born_Month2:
12980 case 8:
12990 beep:pause 200:goto Input_Born_Month2:
13000 case 1:
13010 No=4:sp_on 7,1:sp_on 4,0:beep
13020 pause 200:goto Input_Born_Month2:
13030 case 4:
13040 No=7:sp_on 10,1:sp_on 7,0:beep
13050 pause 200:goto Input_Born_Month2:
13060 case 7:
13070 beep:pause 200:goto Input_Born_Month2:
13080 end select
13090 endif
13100 '左３　ここまで
13110 '下の矢印
13120 '中央 2
13130 if ((y=1) or (key$ = chr$(31))) then
13140 select case No
13150 '9から６に下げる
13160 case 9:
13170 No=6:sp_on 12,0:sp_on 9,1:beep
13180 pause 200:goto Input_Born_Month2:
13190 '6から３に下げる
13200 case 6:
13210 No=3:sp_on 9,0:sp_on 6,1:beep
13220 pause 200:goto Input_Born_Month2:
13230 '3から０ｋに変える
13240 case 3:
13250 No=-1:sp_on 14,1:sp_on 6,0:beep
13260 pause 200:goto Input_Born_Month2:
13270 'Okから下のボタンを押しても何もしない
13280 case -1:
13290 beep:pause 200:goto Input_Born_Month2:
13300 case 8:
13310 No=5:sp_on 8,1:sp_on 11,0:beep
13320 pause 200:goto Input_Born_Month2:
13330 case 5:
13340 No=2:sp_on 5,1:sp_on 8,0:beep
13350 pause 200:goto Input_Born_Month2:
13360 case 2:
13370 No=0:sp_on 13,1:sp_on 5,0:beep
13380 pause 200:goto Input_Born_Month2:
13390 case 0:
13400 beep:pause 200:goto Input_Born_Month2:
13410 case 7:
13420 No=4:sp_on 7,1:sp_on 10,0:beep
13430 pause 200:goto Input_Born_Month2:
13440 case 4:
13450 No=1:sp_on 4,1:sp_on 7,0:beep
13460 pause 200:goto Input_Born_Month2:
13470 case 1:
13480 beep:pause 200:goto Input_Born_Month2:
13490 end select
13500 endif
13510 '左へボタン 十字キー　左　or 　カーソル左
13520 if ((y2 = -1) or (key$ = chr$(29))) then
13530 select case No
13540 'Ok ボタン  Okから　左　０に行く
13550 case -1:
13560 No=0:sp_on 13,1:sp_on 14,0:beep
13570 pause 200:goto Input_Born_Month2:
13580 '0 ボタン  左　何もしない
13590 case 0:
13600 beep:pause 200:goto Input_Born_Month2:
13610 case 3:
13620 No=2:sp_on 5,1:sp_on 6,0:beep
13630 pause 200:goto Input_Born_Month2:
13640 case 2:
13650 No=1:sp_on 5,0:sp_on 4,1:beep
13660 pause 200:goto Input_Born_Month2:
13670 case 1:
13680 beep:pause 200:goto Input_Born_Month2:
13690 case 6:
13700 No=5:sp_on 8,1:sp_on 9,0:beep
13710 pause 200:goto Input_Born_Month2:
13720 case 5:
13730 No=4:sp_on 7,1:sp_on 8,0:beep
13740 pause 200:goto Input_Born_Month2:
13750 case 4:
13760 beep:pause 200:goto Input_Born_Month2:
13770 case 9:
13780 No=8:sp_on 11,1:sp_on 12,0:beep
13790 pause 200:goto Input_Born_Month2:
13800 case 8:
13810 No=7:sp_on 10,1:sp_on 11,0:beep
13820 pause 200:goto Input_Born_Month2:
13830 case 7:
13840 beep:pause 200:goto Input_Born_Month2:
13850 end select
13860 endif
13870 '右  十字キー　右　or カーソル　右
13880 if ((y2 = 1) or (key$ = chr$(28))) then
13890 select case No
13900 '0ボタンからokボタン右に移動
13910 case 0:
13920 No=-1:sp_on 14,1:sp_on 13,0:beep
13930 pause 200:goto Input_Born_Month2:
13940 '0ボタンからokボタン 右に移動　ここまで
13950 'OKボタンで右を押して何もしない
13960 case -1:
13970 pause 200:goto Input_Born_Month2:
13980 case 1:
13990 No=2:sp_on 5,1:sp_on 4,0:beep
14000 pause 200:goto Input_Born_Month2:
14010 case 2:
14020 No=3:sp_on 6,1:sp_on 5,0
14030 beep:pause 200:goto Input_Born_Month2:
14040 case 3:
14050 beep:pause 200:goto Input_Born_Month2:
14060 case 4:
14070 No=5:sp_on 8,1:sp_on 7,0:beep
14080 pause 200:goto Input_Born_Month2:
14090 case 5:
14100 No=6:sp_on 9,1:sp_on 8,0:beep
14110 pause 200:goto Input_Born_Month2:
14120 case 7:
14130 No=8:sp_on 11,1:sp_on 10,0:beep
14140 pause 200:goto Input_Born_Month2:
14150 case 8:
14160 No=9:sp_on 12,1:sp_on 11,0:beep
14170 pause 200:goto Input_Born_Month2:
14180 case 9:
14190 beep:pause 200:goto Input_Born_Month2:
14200 case 6:
14210 beep:pause 200:goto Input_Born_Month2:
14220 end select
14230 'Okから右ボタンを押して何もしない ここまで
14240 endif
14250 '***********************************************************
14260 '1.WXGAの時 ここまで
14270 '(1200 x 800)
14280 '***********************************************************
14290 else
14300 '***********************************************************
14310 '2.WUXGAの時(WXGA以外の時)　ここから
14320 '(1920 gload Gazo$ + "Selection.png",1,60,240
14330 '***********************************************************
14340 '十字キー　ここから
14350 '上の矢印　または、十字キー上
14360 if ((y = -1) or (key$ = chr$(30))) then
14370 select case No
14380 'No=-1:okのとき:初期の状態
14390 '0kボタンから３に移動
14400 '上に行く 処理
14410 case -1:
14420 No=3:sp_on 12,1:sp_on 14,0:BEEP
14430 pause 200:goto Input_Born_Month2:
14440 '選択肢:3
14450 '3ボタンから 6に移動
14460 case 3:
14470 No=6:sp_on 12,0:sp_on 11,1:beep
14480 pause 200:goto Input_Born_Month2:
14490 '6ボタンから ９に移動
14500 case 6:
14510 No=9:sp_on 10,1:sp_on 11,0:beep
14520 pause 200:goto Input_Born_Month2:
14530 '6ボタンから ９に移動　ここまで
14540 '9で上を押して何もしない
14550 case 9:
14560 '何もしない
14570 No=9
14580 beep:pause 200:goto Input_Born_Month2:
14590 '9で上を押しても何もしない　ここまで
14600 '上　 0ボタンから2ボタン
14610 'sp_on 6,1:1
14620 'sp_on 8,1:5
14630 'sp_on 7,1:7
14640 case 0:
14650 No=2:sp_on 13,0:sp_on 9,1:beep
14660 pause 200:goto Input_Born_Month2:
14670 '上  0ボタンから2ボタン　ここまで
14680 '2から５になる 上
14690 case 2:
14700 No=5:sp_on 8,1:sp_on 9,0:beep
14710 pause 200:goto Input_Born_Month2:
14720 case 5:
14730 No=8:sp_on 7,1:sp_on 8,0:beep
14740 pause 200:goto Input_Born_Month2:
14750 case 8:
14760 beep:pause 200:goto Input_Born_Month2:
14770 case 1:
14780 No=4:sp_on 5,1:sp_on 6,0:beep
14790 pause 200:goto Input_Born_Month2:
14800 case 4:
14810 No=7:sp_on 4,1:sp_on 5,0:beep
14820 pause 200:goto Input_Born_Month2:
14830 case 7:
14840 beep:pause 200:goto Input_Born_Month2:
14850 end select
14860 endif
14870 '左３　ここまで
14880 '下の矢印
14890 '中央 2
14900 if ((y=1) or (key$ = chr$(31))) then
14910 select case No
14920 '9から６に下げる
14930 case 9:
14940 No=6:sp_on 11,1:sp_on 10,0:beep
14950 pause 200:goto Input_Born_Month2:
14960 '6から３に下げる
14970 case 6:
14980 No=3:sp_on 12,1:sp_on 11,0:beep
14990 pause 200:goto Input_Born_Month2:
15000 '3から０ｋに変える
15010 case 3:
15020 No=-1:sp_on 14,1:sp_on 12,0:beep
15030 pause 200:goto Input_Born_Month2:
15040 'Okから下のボタンを押しても何もしない
15050 case -1:
15060 beep:pause 200:goto Input_Born_Month2:
15070 case 8:
15080 No=5:sp_on 8,1:sp_on 7,0:beep
15090 pause 200:goto Input_Born_Month2:
15100 case 5:
15110 No=2:sp_on 9,1:sp_on 8,0:beep
15120 pause 200:goto Input_Born_Month2:
15130 case 2:
15140 No=0:sp_on 13,1:sp_on 9,0:beep
15150 pause 200:goto Input_Born_Month2:
15160 case 0:
15170 beep:pause 200:goto Input_Born_Month2:
15180 case 7:
15190 No=4:sp_on 5,1:sp_on 4,0:beep
15200 pause 200:goto Input_Born_Month2:
15210 case 4:
15220 No=1:sp_on 6,1:sp_on 5,0:beep
15230 pause 200:goto Input_Born_Month2:
15240 case 1:
15250 beep:pause 200:goto Input_Born_Month2:
15260 end select
15270 endif
15280 '左へボタン 十字キー　左　or 　カーソル左
15290 if ((y2 = -1) or (key$ = chr$(29))) then
15300 select case No
15310 'Ok ボタン  Okから　左　０に行く
15320 case -1:
15330 No=0:sp_on 13,1:sp_on 14,0
15340 beep:pause 200:goto Input_Born_Month2:
15350 '0 ボタン  左　何もしない
15360 case 0:
15370 beep:pause 200:goto Input_Born_Month2:
15380 case 3:
15390 No=2:sp_on 9,1:sp_on 12,0:beep
15400 pause 200:goto Input_Born_Month2:
15410 case 2:
15420 No=1:sp_on 6,1:sp_on 9,0:beep
15430 pause 200:goto Input_Born_Month2:
15440 case 1:
15450 beep:pause 200:goto Input_Born_Month2:
15460 case 6:
15470 No=5:sp_on 8,1:sp_on 11,0:beep
15480 pause 200:goto Input_Born_Month2:
15490 case 5:
15500 No=4:sp_on 5,1:sp_on 8,0:beep
15510 pause 200:goto Input_Born_Month2:
15520 case 4:
15530 beep:pause 200:goto Input_Born_Month2:
15540 case 9:
15550 No=8:sp_on 7,1:sp_on 10,0:beep
15560 pause 200:goto Input_Born_Month2:
15570 case 8:
15580 No=7:sp_on 4,1:sp_on 7,0:beep
15590 pause 200:goto Input_Born_Month2:
15600 case 7:
15610 beep:pause 200:goto Input_Born_Month2:
15620 end select
15630 endif
15640 '右  十字キー　右　or カーソル　右
15650 if ((y2 = 1) or (key$ = chr$(28))) then
15660 select case No
15670 '0ボタンからokボタン右に移動
15680 case 0:
15690 No=-1:sp_on 14,1:sp_on 13,0:beep
15700 pause 200:goto Input_Born_Month2:
15710 '0ボタンからokボタン 右に移動　ここまで
15720 'OKボタンで右を押して何もしない
15730 case -1:
15740 beep:pause 200:goto Input_Born_Month2:
15750 case 1:
15760 No=2:sp_on 9,1:sp_on 6,0:beep
15770 pause 200:goto Input_Born_Month2:
15780 case 2:
15790 No=3:sp_on 12,1:sp_on 9,0:beep
15800 pause 200:goto Input_Born_Month2:
15810 case 3:
15820 beep:pause 200:goto Input_Born_Month2:
15830 case 4:
15840 No=5:sp_on 8,1:sp_on 5,0:beep
15850 pause 200:goto Input_Born_Month2:
15860 case 5:
15870 No=6:sp_on 11,1:sp_on 8,0:beep
15880 pause 200:goto Input_Born_Month2:
15890 case 7:
15900 No=8:sp_on 7,1:sp_on 4,0:beep
15910 pause 200:goto Input_Born_Month2:
15920 case 8:
15930 No=9:sp_on 10,1:sp_on 7,0:beep
15940 pause 200:goto Input_Born_Month2:
15950 case 9:
15960 beep:pause 200:goto Input_Born_Month2:
15970 case 6:
15980 beep:pause 200:goto Input_Born_Month2:
15990 end select
16000 'Okから右ボタンを押して何もしない ここまで
16010 endif
16020 '***********************************************************
16030 '2.WUXGAの時(WXGA以外の時)　ここまで
16040 '(1920 gload Gazo$ + "Selection.png",1,60,240
16050 '***********************************************************
16060 endif
16070 '***********************************************************
16080 '2.WUXGAの時(WXGA以外の時)　ここまで
16090 '(1920 gload Gazo$ + "Selection.png",1,60,240
16100 '***********************************************************
16110 '十字キー　ここまで
16120 '右の丸ボタン　決定キー
16130 if ((bg=2) or (key$=chr$(13))) then
16140 select case count
16150 case 0:
16160 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
16170 if (buf_month = 1 or buf_month = 2) then
16180 locate 2,4
16190 color RGB(255,255,255)
16200 if ex_info$(1) <> "JP" then
16210 print "Input Born Month(1~12):";buf_Month2$
16220 else
16230 print "生まれた月(1月~12月):";buf_Month2$
16240 endif
16250 else
16260 locate 2,4
16270 color Rgb(255,255,255)
16280 if ex_info$(1) <> "JP" then
16290 print "Input Born Month(1~12):";buf_Month$
16300 else
16310 print "生まれた月(1月~12月):";buf_Month$
16320 endif
16330 endif
16340 goto Input_Born_Month2:
16350 case 1:
16360 count = 2:c = No
16370 c = val(buf_Month$)
16380 if (No = -1) then
16390 'if No=1 or No=2 then
16400 'endif
16410 month = buf_month
16420 buf_month=val(buf_Month$)
16430 month=buf_month
16440 '生まれた日に飛ぶ
16450 goto Input_Born_Day:
16460 else
16470 buf_month = c*10 + No
16480 buf_Month$= str$(buf_month)
16490 locate 2,4
16500 color Rgb(255,255,255)
16510 if ex_info$(1) <> "JP" then
16520 print "Input Born Month(1~12):";buf_Month$
16530 else
16540 print "生まれた月(1月~12月):";buf_Month$
16550 endif
16560 goto Input_Born_Month2:
16570 endif
16580 case 2:
16590 count=3:count2=1
16600 'c= val(buf_Month$)
16610 'buf_month = c*10 + No
16620 'buf_Month$ = str$(buf_month)
16630 'locate 2,3
16640 'print "生まれた月(1月～12月):";buf_Month$
16650 'goto Input_Born_Month2:
16660 'case 3:
16670 'count=4
16680 'b=val(buf_month$)
16690 'buf_month=c*10+No
16700 'buf_Month$=str$(buf_month)
16710 'locate 2,3
16720 'print "生まれた月(1月～12月):";buf_Month$
16730 'buf_month=val(buf_Month$)
16740 'year=val(buf_year$)
16750 if (No = -1) then
16760 goto Input_Born_Day:
16770 else
16780 goto Input_Born_Month2:
16790 endif
16800 'case 4:
16810 'bufyear=buf_year
16820 'if (No=-1) then
16830 'buf_month = val(buf_Month$)
16840 'month = buf_month
16850 'sp_on 14,0
16860 'goto Input_Born_Day:
16870 'else
16880 'goto Input_Born_Month2:
16890 'endif
16900 end select
16910 endif
16920 '左の丸ボタン　キャンセル
16930 if (bg2=2) then
16940 select case count2
16950 case 0:
16960 if (No = -1) then
16970 buf_month=0:buf_Month$="**"
16980 count2=0:count=0
16990 locate 0,3:print "                                   "
17000 if ex_info$(1) <> "JP" then
17010 print "Input Born Month?(1~12):";buf_Month$
17020 else
17030 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
17040 endif
17050 'if (buf_month > 1) then
17060 sp_on 14,0:goto Input_Born_Month2:
17070 'goto rewrite:
17080 else
17090 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
17100 buf_month=0:buf_Month$="**"
17110 locate 2,3
17120 color rgb(255,255,255)
17130 print "                                       "
17140 goto rewrite:
17150 if (No>2) then
17160 if ex_info$(1) <> "JP" then
17170 ui_msg "The value is out of range"
17180 else
17190 ui_msg "値が範囲外です。"
17200 endif
17210 goto rewrite:
17220 endif
17230 endif
17240 'endif
17250 rewrite:
17260 locate 2,4
17270 color rgb(255,255,255)
17280 print "                                      "
17290 locate 2,4
17300 if ex_info$(1) <> "JP" then
17310 print "Input Born Month?(1~12):";buf_Month$
17320 else
17330 print "生まれた月(1月~12月):";buf_Month$
17340 endif
17350 goto Input_Born_Month2:
17360 endif
17370 case 1:
17380 buf_Month$="**":buf_month=0
17390 if No=-1 then
17400 count2=2:count=0
17410 locate 0,4
17420 print "                                      "
17430 locate 2,4:
17440 if ex_info$(1) <> "JP" then
17450 print "Input Born Month?(1~12):";buf_Month$
17460 else
17470 print "生まれた月(1月~12月):" + buf_Month$
17480 endif
17490 goto Input_Born_Month2:
17500 endif
17510 case 2:
17520 sp_on 14,0:goto Input_Seireki:
17530 end select
17540 endif
17550 'endif
17560 end
17570 'end
17580 '生れた日を入力
17590 Input_Born_Day:
17600 '生まれた日入力
17610 cls 3:play ""
17620 'No=-1:Okのとき
17630 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
17640 for i=0 to 1
17650 buf_day(i)=0
17660 next i
17670 '***********************************************************
17680 '1.WXGAの時 ここから
17690 '(1200 x 800)
17700 '***********************************************************
17710 if ((size(0) <= 1280) and (size(1) <= 800)) then
17720 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png",0,0,0
17730 '***********************************************************
17740 '1.WXGAの時　ここまで
17750 '(1200 x 800)
17760 '***********************************************************
17770 else
17780 '***********************************************************
17790 '2.WUXGAの時(WXGA以外の時)　ここから
17800 '(1920 gload Gazo$ + "Selection.png",1,60,240
17810 '***********************************************************
17820 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
17830 gload Gazo$ + "Screen2.png",0,0,0
17840 gload Gazo$ + "downscreen.png",0,0,800
17850 '***********************************************************
17860 '2.WUXGAの時(WXGA以外の時)　ここまで
17870 '(1920 gload Gazo$ + "Selection.png",1,60,240
17880 '***********************************************************
17890 endif
17900 'Init"kb:2"
17910 if ex_info$(1) <> "JP" then
17920 '英語音声パート
17930 else
17940 '日本語音声パート
17950 '音声ファイル再生 2023.06.07
17960 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
17970 endif
17980 font FONT
17990 if ex_info$(1) <> "JP" then
18000 locate 0,1
18010 '文字色：黒　 color rgb(0,0,0)
18020 color rgb(255,255,255)
18030 print "Input Born day?" + chr$(13)
18040 color rgb(255,255,255)
18050 locate 2,4
18060 print "Born Day(1~31):";buf_Day$
18070 else
18080 locate 0,1
18090 '文字色：黒　 color rgb(0,0,0)
18100 color rgb(255,255,255)
18110 print "生まれた日を入れて下さい" + chr$(13)
18120 color rgb(255,255,255)
18130 locate 2,4
18140 print "生まれた日(1日~31日):";buf_Day$
18150 endif
18160 'color rgb(255,255,255)
18170 'locate 4,6:print ":7"
18180 'locate 9,6:print ":8"
18190 'locate 12,6:print ":9"
18200 'locate 4,6
18210 'print ":7  :8  :9" + chr$(13)
18220 '=======================
18230 'テンキー　色　白　決定ボタン　青
18240 '=======================
18250 'color rgb(255,255,255)
18260 'locate 4,8
18270 'print ":4  :5  :6" + chr$(13)
18280 'color rgb(255,255,255)
18290 'locate 4,10
18300 'print ":1  :2  :3" + chr$(13)
18310 'locate 4,12
18320 'print "    :0"
18330 'locate 12,12
18340 'color rgb(255,0,0)
18350 'print ":Ok"
18360 sp_on 4,0: sp_on 5,0:sp_on 6,0
18370 sp_on 7,0:sp_on 8,0:sp_on 9,0
18380 sp_on 10,0:sp_on 11,0:sp_on 12,0
18390 sp_on 13,0:sp_on 14,1
18400 Input_Born_Day2:
18410 key$="":bg=0:y=0:y2=0:bg2=0
18420 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
18430 key$ = inkey$
18440 bg = strig(1)
18450 y = stick(1)
18460 y2 = stick(0)
18470 bg2 = strig(0)
18480 pause 200
18490 wend
18500 if ((size(0) <= 1280) and (size(1) <= 800)) then
18510 '十字キー　ここから
18520 '上の矢印　または、十字キー上
18530 if ((y = -1) or (key$ = chr$(30))) then
18540 select case No
18550 'No=-1:okのとき:初期の状態
18560 '0kボタンから３に移動
18570 '上に行く 処理
18580 case -1:
18590 No=3:sp_on 6,1:sp_on 14,0:beep
18600 pause 200:goto Input_Born_Day2:
18610 '選択肢:3
18620 '3ボタンから 6に移動
18630 case 3:
18640 No=6:sp_on 9,1:sp_on 6,0:beep
18650 pause 200:goto Input_Born_Day2:
18660 '6ボタンから ９に移動
18670 case 6:
18680 No=9:sp_on 12,1:sp_on 9,0:beep
18690 pause 200:goto Input_Born_Day2:
18700 '6ボタンから ９に移動　ここまで
18710 '9で上を押して何もしない
18720 case 9:
18730 '何もしない
18740 No=9
18750 beep:pause 200:goto Input_Born_Day2:
18760 '9で上を押しても何もしない　ここまで
18770 '上　 0ボタンから2ボタン
18780 'sp_on 6,1:1
18790 'sp_on 8,1:5
18800 'sp_on 7,1:7
18810 case 0:
18820 No=2:sp_on 13,0:sp_on 5,1:beep
18830 pause 200:goto Input_Born_Day2:
18840 '上  0ボタンから2ボタン　ここまで
18850 '2から５になる 上
18860 case 2:
18870 No=5:sp_on 8,1:sp_on 5,0:beep
18880 pause 200:goto Input_Born_Day2:
18890 case 5:
18900 No=8:sp_on 11,1:sp_on 8,0:beep
18910 pause 200:goto Input_Born_Day2:
18920 case 8:
18930 beep:pause 200:goto Input_Born_Day2:
18940 case 1:
18950 No=4:sp_on 7,1:sp_on 4,0:beep
18960 pause 200:goto Input_Born_Day2:
18970 case 4:
18980 No=7:sp_on 10,1:sp_on 7,0:beep
18990 pause 200:goto Input_Born_Day2:
19000 case 7:
19010 beep:pause 200:goto Input_Born_Day2:
19020 end select
19030 endif
19040 '左３　ここまで
19050 '下の矢印
19060 '中央 2
19070 if ((y=1) or (key$ = chr$(31))) then
19080 select case No
19090 '9から６に下げる
19100 case 9:
19110 No=6:sp_on 12,0:sp_on 9,1:beep
19120 pause 200:goto Input_Born_Day2:
19130 '6から３に下げる
19140 case 6:
19150 No=3:sp_on 9,0:sp_on 6,1:beep
19160 pause 200:goto Input_Born_Day2:
19170 '3から０ｋに変える
19180 case 3:
19190 No=-1:sp_on 14,1:sp_on 6,0:beep
19200 pause 200:goto Input_Born_Day2:
19210 'Okから下のボタンを押しても何もしない
19220 case -1:
19230 beep:pause 200:goto Input_Born_Day2:
19240 case 8:
19250 No=5:sp_on 8,1:sp_on 11,0:beep
19260 pause 200:goto Input_Born_Day2:
19270 case 5:
19280 No=2:sp_on 5,1:sp_on 8,0:beep
19290 pause 200:goto Input_Born_Day2:
19300 case 2:
19310 No=0:sp_on 13,1:sp_on 5,0:beep
19320 pause 200:goto Input_Born_Day2:
19330 case 0:
19340 beep:pause 200:goto Input_Born_Day2:
19350 case 7:
19360 No=4:sp_on 7,1:sp_on 10,0:beep
19370 pause 200:goto Input_Born_Day2:
19380 case 4:
19390 No=1:sp_on 4,1:sp_on 7,0:beep
19400 pause 200:goto Input_Born_Day2:
19410 case 1:
19420 beep:pause 200:goto Input_Born_Day2:
19430 end select
19440 endif
19450 '左へボタン 十字キー　左　or 　カーソル左
19460 if ((y2 = -1) or (key$ = chr$(29))) then
19470 select case No
19480 'Ok ボタン  Okから　左　０に行く
19490 case -1:
19500 No=0:sp_on 13,1:sp_on 14,0:beep
19510 pause 200:goto Input_Born_Day2:
19520 '0 ボタン  左　何もしない
19530 case 0:
19540 beep:pause 200:goto Input_Born_Day2:
19550 case 3:
19560 No=2:sp_on 5,1:sp_on 6,0:beep
19570 pause 200:goto Input_Born_Day2:
19580 case 2:
19590 No=1:sp_on 5,0:sp_on 4,1:beep
19600 pause 200:goto Input_Born_Day2:
19610 case 1:
19620 beep:pause 200:goto Input_Born_Day2:
19630 case 6:
19640 No=5:sp_on 8,1:sp_on 9,0:beep
19650 pause 200:goto Input_Born_Day2:
19660 case 5:
19670 No=4:sp_on 7,1:sp_on 8,0:beep
19680 pause 200:goto Input_Born_Day2:
19690 case 4:
19700 beep:pause 200:goto Input_Born_Day2:
19710 case 9:
19720 No=8:sp_on 11,1:sp_on 12,0:beep
19730 pause 200:goto Input_Born_Day2:
19740 case 8:
19750 No=7:sp_on 10,1:sp_on 11,0:beep
19760 pause 200:goto Input_Born_Day2:
19770 case 7:
19780 beep:pause 200:goto Input_Born_Day2:
19790 end select
19800 endif
19810 '右  十字キー　右　or カーソル　右
19820 if ((y2 = 1) or (key$ = chr$(28))) then
19830 select case No
19840 '0ボタンからokボタン右に移動
19850 case 0:
19860 No=-1:sp_on 14,1:sp_on 13,0:beep
19870 pause 200:goto Input_Born_Day2:
19880 '0ボタンからokボタン 右に移動　ここまで
19890 'OKボタンで右を押して何もしない
19900 case -1:
19910 pause 200:goto Input_Born_Day2:
19920 case 1:
19930 No=2:sp_on 5,1:sp_on 4,0:beep
19940 pause 200:goto Input_Born_Day2:
19950 case 2:
19960 No=3:sp_on 6,1:sp_on 5,0
19970 beep:pause 200:goto Input_Born_Day2:
19980 case 3:
19990 beep:pause 200:goto Input_Born_Day2:
20000 case 4:
20010 No=5:sp_on 8,1:sp_on 7,0:beep
20020 pause 200:goto Input_Born_Day2:
20030 case 5:
20040 No=6:sp_on 9,1:sp_on 8,0:beep
20050 pause 200:goto Input_Born_Day2:
20060 case 7:
20070 No=8:sp_on 11,1:sp_on 10,0:beep
20080 pause 200:goto Input_Born_Day2:
20090 case 8:
20100 No=9:sp_on 12,1:sp_on 11,0:beep
20110 pause 200:goto Input_Born_Day2:
20120 case 9:
20130 beep:pause 200:goto Input_Born_Day2:
20140 case 6:
20150 beep:pause 200:goto Input_Born_Day2:
20160 end select
20170 'Okから右ボタンを押して何もしない ここまで
20180 endif
20190 else
20200 '***********************************************************
20210 '2.WUXGAの時(WXGA以外の時)　ここから
20220 '(1920 gload Gazo$ + "Selection.png",1,60,240
20230 '***********************************************************
20240 '十字キー　ここから
20250 '上の矢印　または、十字キー上
20260 if ((y = -1) or (key$ = chr$(30))) then
20270 select case No
20280 'No=-1:okのとき:初期の状態
20290 '0kボタンから３に移動
20300 '上に行く 処理
20310 case -1:
20320 No=3:sp_on 12,1:sp_on 14,0:beep
20330 pause 200:goto Input_Born_Day2:
20340 '選択肢:3
20350 '3ボタンから 6に移動
20360 case 3:
20370 No=6:sp_on 12,0:sp_on 11,1:beep
20380 pause 200:goto Input_Born_Day2:
20390 '6ボタンから ９に移動
20400 case 6:
20410 No=9:sp_on 10,1:sp_on 11,0:beep
20420 pause 200:goto Input_Born_Day2:
20430 '6ボタンから ９に移動　ここまで
20440 '9で上を押して何もしない
20450 case 9:
20460 '何もしない
20470 No=9
20480 beep:pause 200:goto Input_Born_Day2:
20490 '9で上を押しても何もしない　ここまで
20500 '上　 0ボタンから2ボタン
20510 'sp_on 6,1:1
20520 'sp_on 8,1:5
20530 'sp_on 7,1:7
20540 case 0:
20550 No=2:sp_on 13,0:sp_on 9,1:beep
20560 pause 200:goto Input_Born_Day2:
20570 '上  0ボタンから2ボタン　ここまで
20580 '2から５になる 上
20590 case 2:
20600 No=5:sp_on 8,1:sp_on 9,0:beep
20610 pause 200:goto Input_Born_Day2:
20620 case 5:
20630 No=8:sp_on 7,1:sp_on 8,0:beep
20640 pause 200:goto Input_Born_Day2:
20650 case 8:
20660 beep:pause 200:goto Input_Born_Day2:
20670 case 1:
20680 No=4:sp_on 5,1:sp_on 6,0:beep
20690 pause 200:goto Input_Born_Day2:
20700 case 4:
20710 No=7:sp_on 4,1:sp_on 5,0:beep
20720 pause 200:goto Input_Born_Day2:
20730 case 7:
20740 beep:pause 200:goto Input_Born_Day2:
20750 end select
20760 endif
20770 '左３　ここまで
20780 '下の矢印
20790 '中央 2
20800 if ((y=1) or (key$ = chr$(31))) then
20810 select case No
20820 '9から６に下げる
20830 case 9:
20840 No=6:sp_on 11,1:sp_on 10,0:beep
20850 pause 200:goto Input_Born_Day2:
20860 '6から３に下げる
20870 case 6:
20880 No=3:sp_on 12,1:sp_on 11,0:beep
20890 pause 200:goto Input_Born_Day2:
20900 '3から０ｋに変える
20910 case 3:
20920 No=-1:sp_on 14,1:sp_on 12,0:beep
20930 pause 200:goto Input_Born_Day2:
20940 'Okから下のボタンを押しても何もしない
20950 case -1:
20960 beep:pause 200:goto Input_Born_Day2:
20970 case 8:
20980 No=5:sp_on 8,1:sp_on 7,0:beep
20990 pause 200:goto Input_Born_Day2:
21000 case 5:
21010 No=2:sp_on 9,1:sp_on 8,0:beep
21020 pause 200:goto Input_Born_Day2:
21030 case 2:
21040 No=0:sp_on 13,1:sp_on 9,0:beep
21050 pause 200:goto Input_Born_Day2:
21060 case 0:
21070 beep:pause 200:goto Input_Born_Day2:
21080 case 7:
21090 No=4:sp_on 5,1:sp_on 4,0:beep
21100 pause 200:goto Input_Born_Day2:
21110 case 4:
21120 No=1:sp_on 6,1:sp_on 5,0:beep
21130 pause 200:goto Input_Born_Day2:
21140 case 1:
21150 beep:pause 200:goto Input_Born_Day2:
21160 end select
21170 endif
21180 '左へボタン 十字キー　左　or 　カーソル左
21190 if ((y2 = -1) or (key$ = chr$(29))) then
21200 select case No
21210 'Ok ボタン  Okから　左　０に行く
21220 case -1:
21230 No=0:sp_on 13,1:sp_on 14,0:beep
21240 pause 200:goto Input_Born_Day2:
21250 '0 ボタン  左　何もしない
21260 case 0:
21270 beep:pause 200:goto Input_Born_Day2:
21280 case 3:
21290 No=2:sp_on 9,1:sp_on 12,0:beep
21300 pause 200:goto Input_Born_Day2:
21310 case 2:
21320 No=1:sp_on 6,1:sp_on 9,0:beep
21330 pause 200:goto Input_Born_Day2:
21340 case 1:
21350 pause 200:goto Input_Born_Day2:
21360 case 6:
21370 No=5:sp_on 8,1:sp_on 11,0:beep
21380 pause 200:goto Input_Born_Day2:
21390 case 5:
21400 No=4:sp_on 5,1:sp_on 8,0:beep
21410 pause 200:goto Input_Born_Day2:
21420 case 4:
21430 beep:pause 200:goto Input_Born_Day2:
21440 case 9:
21450 No=8:sp_on 7,1:sp_on 10,0:beep
21460 pause 200:goto Input_Born_Day2:
21470 case 8:
21480 No=7:sp_on 4,1:sp_on 7,0:beep
21490 pause 200:goto Input_Born_Day2:
21500 case 7:
21510 beep:pause 200:goto Input_Born_Day2:
21520 end select
21530 endif
21540 '右  十字キー　右　or カーソル　右
21550 if ((y2 = 1) or (key$ = chr$(28))) then
21560 select case No
21570 '0ボタンからokボタン右に移動
21580 case 0:
21590 No=-1:sp_on 14,1:sp_on 13,0:beep
21600 pause 200:goto Input_Born_Day2:
21610 '0ボタンからokボタン 右に移動　ここまで
21620 'OKボタンで右を押して何もしない
21630 case -1:
21640 beep:pause 200:goto Input_Born_Day2:
21650 case 1:
21660 No=2:sp_on 9,1:sp_on 6,0:beep
21670 pause 200:goto Input_Born_Day2:
21680 case 2:
21690 No=3:sp_on 12,1:sp_on 9,0:beep
21700 pause 200:goto Input_Born_Day2:
21710 case 3:
21720 beep:pause 200:goto Input_Born_Day2:
21730 case 4:
21740 No=5:sp_on 8,1:sp_on 5,0:beep
21750 pause 200:goto Input_Born_Day2:
21760 case 5:
21770 No=6:sp_on 11,1:sp_on 8,0:beep
21780 pause 200:goto Input_Born_Day2:
21790 case 7:
21800 No=8:sp_on 7,1:sp_on 4,0:beep
21810 pause 200:goto Input_Born_Day2:
21820 case 8:
21830 No=9:sp_on 10,1:sp_on 7,0:beep
21840 pause 200:goto Input_Born_Day2:
21850 case 9:
21860 beep:pause 200:goto Input_Born_Day2:
21870 case 6:
21880 beep:pause 200:goto Input_Born_Day2:
21890 end select
21900 'Okから右ボタンを押して何もしない ここまで
21910 endif
21920 '***********************************************************
21930 '2.WUXGAの時(WXGA以外の時)　ここまで
21940 '(1920 gload Gazo$ + "Selection.png",1,60,240
21950 '***********************************************************
21960 endif
21970 '十字キー　ここまで
21980 '右の丸ボタンを押したとき
21990 if ((bg = 2) or (key$ = chr$(13))) then
22000 'count :決定ボタンを押した回数
22010 select case (count mod 3)
22020 '1桁目入力
22030 case 0:
22040 count = 1:
22050 if (No = -1) then
22060 '1桁目　OKでは何もしない
22070 'goto check:
22080 else
22090 'ok以外のボタンを押したとき
22100 buf_day = No:buf_Day$ = str$(No)
22110 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
22120 locate 2,3
22130 color RGB(255,255,255)
22140 if ex_info$(1) <> "JP" then
22150 print "Input Born Day(1~31):";buf_Day2$
22160 else
22170 print "生まれた日(1日~31日):";buf_Day2$
22180 endif
22190 endif
22200 check:
22210 if (No >= 1 and No <= 9) then
22220 sp_on 14,0
22230 goto Input_Born_Day2:
22240 else
22250 sp_on 14,0
22260 goto complate:
22270 endif
22280 case 1:
22290 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
22300 count = 2:
22310 'locate 2,3
22320 'color RGB(255,255,255)
22330 'print "生まれた日(1日~31日):";buf_Day$
22340 'Okボタンを押したときの処理
22350 '入力値　10未満のとき
22360 'c = buf_day
22370 if (No = -1) then
22380 'c=buf_day
22390 ' buf_day = c
22400 'buf_Day$ = str$(buf_day)
22410 '10以下のとき
22420 if (buf_day < 10) then
22430 sp_on 14,0
22440 goto complate:
22450 endif
22460 else
22470 'c = No
22480 buf_day = c * 10 + No
22490 'buf_day = c
22500 buf_Day$ =str$(buf_day)
22510 locate 2,4
22520 color Rgb(255,255,255)
22530 if ex_info$(1) <> "JP" then
22540 print "Input Born Day(1~31):";buf_Day$
22550 else
22560 print "生まれた日(1日~31日):";buf_Day$
22570 endif
22580 goto Input_Born_Day2:
22590 endif
22600 '生まれた日　2桁目の数字　or 1桁の数字 + ok
22610 case 2:
22620 count=0
22630 'c=val(buf_Day$)
22640 'buf_day=c*10+No
22650 'buf_Day$=str$(buf_day)
22660 'day=buf_day
22670 'locate 2,3
22680 'print "生まれた日(1日〜31日):";buf_Day$
22690 'No=-1:ok ボタンを押したとき
22700 if (No = -1) then
22710 if ((buf_day > 0) and (buf_day < 32)) then
22720 sp_on 14,0
22730 goto complate:
22740 else
22750 goto Input_Born_Day2:
22760 endif
22770 'Okボタン以外を押したとき
22780 else
22790 c=val(buf_Day$)
22800 buf_day = c * 10 + No
22810 buf_Day$ = str$(buf_day)
22820 locate 2,4
22830 if ex_info$(1) <> "JP" then
22840 print "Input Born Day?(1~31):";buf_Day$
22850 else
22860 print "生まれた日(1日~31日):";buf_Day$
22870 endif
22880 'goto Input_Born_Day2:
22890 endif
22900 case 3:
22910 count = 4
22920 c=val(buf_day$)
22930 buf_day = c * 10 + No
22940 buf_day$ = str$(buf_day)
22950 locate 2,4
22960 if ex_info$(1) <> "JP" then
22970 print "Input Born Day?(1~31):";buf_Day$
22980 else
22990 print "生まれた日を入れてください(1日~31日):";buf_Day$
23000 endif
23010 year = val(buf_year$)
23020 if (No = -1) then
23030 'goto Input_Born_Day:
23040 sp_on 14,0:No=0
23050 goto complate:
23060 else
23070 goto Input_Born_Month2:
23080 endif
23090 'case 4:
23100 'bufyear=buf_year
23110 'if (No=-1) then
23120 'buf_day = val(buf_day$)
23130 'bufday = buf_day
23140 'sp_on 14,0
23150 'goto complate:
23160 'else
23170 'goto Input_Born_Day2:
23180 'endif
23190 end select
23200 endif
23210 if (bg2=2) then
23220 select case count
23230 case 0:
23240 if (No=-1) then
23250 'buf_day=0:buf_Day$="**"
23260 if (buf_day>=1 and buf_day<=31) then
23270 count=0:No=0
23280 buf_day=0:buf_Day$="**"
23290 'goto rewrite_day:
23300 else
23310 buf_day=0:buf_Day$="**"
23320 ui_msg"値が範囲外です"
23330 endif
23340 goto rewrite_day:
23350 else
23360 goto rewrite_day:
23370 endif
23380 rewrite_day:
23390 locate 2,4
23400 color rgb(255,255,255)
23410 print "                                      "
23420 locate 2,4
23430 if ex_info$(1)<>"JP" then
23440 print "Born Day(1~31):";buf_Day$
23450 else
23460 print "生まれた日(1日~31日):";buf_Day$
23470 endif
23480 goto Input_Born_Day2:
23490 end select
23500 endif
23510 '--------------------------Input_Born_Day:-------------------------------------------
23520 complate:
23530 suhiNo = buf_year + buf_month + buf_day
23540 'if (suhiNo < 1000) then
23550 a1 = fix(suhiNo / 1000)
23560 a2 = fix(suhiNo/100) - (a1 * 10)
23570 a3 = fix(suhiNo/10)-(a1*100+a2*10)
23580 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
23590 'endif
23600 bufsuhiNo = a1 + a2 + a3 + a4
23610 recomp:
23620 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
23630 'bufsuhiNo=a6
23640 goto Kabara_Result_Screen:
23650 else
23660 a5 = fix(bufsuhiNo / 10)
23670 a6 = bufsuhiNo - a5 * 10
23680 bufsuhiNo = a6 + a5
23690 if (bufsuhiNo = 10) then
23700 bufsuhiNo=1
23710 endif
23720 goto Kabara_Result_Screen:
23730 endif
23740 Kabara_Result_Screen:
23750 cls 3:
23760 if ((size(0) <= 1280) and (size(1) <= 800)) then
23770 '****************************************************************************************************
23780 '1.WUXGA(1260x800)の時
23790 '****************************************************************************************************
23800 gload Gazo$ + Gazo_WXGA$ + "ResultScreen_918x680_20240309.png",0,0,0
23810 '****************************************************************************************************
23820 '1.WUXGA(1260x800)の時
23830 '****************************************************************************************************
23840 else
23850 '****************************************************************************************************
23860 '1.WUXGA(1920x1200)の時
23870 '****************************************************************************************************
23880 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
23890 gload Gazo$ + "downscreen.png",0,0,800
23900 '****************************************************************************************************
23910 '1.WUXGA(1920x1200)の時
23920 '****************************************************************************************************
23930 endif
23940 init "kb:4"
23950 '
23960 play ""
23970 select case (bufsuhiNo)
23980 case 1:
23990 '****************************************************************************************************
24000 '1.数秘ナンバー 1
24010 '****************************************************************************************************
24020 play Voice$ + "Result_Kabara_1_20230607.mp3"
24030 '****************************************************************************************************
24040 '1.数秘ナンバー 1
24050 '****************************************************************************************************
24060 case 2:
24070 '****************************************************************************************************
24080 '1.数秘ナンバー 2
24090 '****************************************************************************************************
24100 play Voice$ + "Result_Kabara_2_20231112.mp3"
24110 '****************************************************************************************************
24120 '1.数秘ナンバー 2
24130 '****************************************************************************************************
24140 case 3:
24150 '****************************************************************************************************
24160 '1.数秘ナンバー 3
24170 '****************************************************************************************************
24180 play Voice$ + "Result_Kabara_3_20230607.mp3"
24190 '****************************************************************************************************
24200 '1.数秘ナンバー 3
24210 '****************************************************************************************************
24220 case 4:
24230 '****************************************************************************************************
24240 '1.数秘ナンバー 4
24250 '****************************************************************************************************
24260 play Voice$ + "Result_Kabara_4_20230607.mp3"
24270 '****************************************************************************************************
24280 '1.数秘ナンバー 4
24290 '****************************************************************************************************
24300 case 5:
24310 '****************************************************************************************************
24320 '1.数秘ナンバー 5
24330 '****************************************************************************************************
24340 play Voice$ + "Result_Kabara_5_20231112.mp3"
24350 '****************************************************************************************************
24360 '1.数秘ナンバー 5
24370 '****************************************************************************************************
24380 case 6:
24390 '****************************************************************************************************
24400 '1.数秘ナンバー 6
24410 '****************************************************************************************************
24420 play Voice$ + "Result_Kabara_6_20230607.mp3"
24430 '****************************************************************************************************
24440 '1.数秘ナンバー 6
24450 '****************************************************************************************************
24460 case 7:
24470 '****************************************************************************************************
24480 '1.数秘ナンバー 7
24490 '****************************************************************************************************
24500 play Voice$ + "Result_Kabara_7_20230607.mp3"
24510 '****************************************************************************************************
24520 '1.数秘ナンバー 7
24530 '****************************************************************************************************
24540 case 8:
24550 '****************************************************************************************************
24560 '1.数秘ナンバー 8
24570 '****************************************************************************************************
24580 play Voice$ + "Result_Kabara_8_20230607.mp3"
24590 '****************************************************************************************************
24600 '1.数秘ナンバー 8
24610 '****************************************************************************************************
24620 case 9:
24630 '****************************************************************************************************
24640 '1.数秘ナンバー 9
24650 '****************************************************************************************************
24660 play Voice$ + "Result_Kabara_9_20230607.mp3"
24670 '****************************************************************************************************
24680 '1.数秘ナンバー 9
24690 '****************************************************************************************************
24700 case 11:
24710 '****************************************************************************************************
24720 '1.数秘ナンバー 11
24730 '****************************************************************************************************
24740 play Voice$ + "Result_Kabara_11_20230607.mp3"
24750 '****************************************************************************************************
24760 '1.数秘ナンバー 11
24770 '****************************************************************************************************
24780 case 22:
24790 '****************************************************************************************************
24800 '1.数秘ナンバー 22
24810 '****************************************************************************************************
24820 play Voice$ + "Result_Kabara_22_20230607.mp3"
24830 '****************************************************************************************************
24840 '1.数秘ナンバー 22
24850 '****************************************************************************************************
24860 case 33:
24870 '****************************************************************************************************
24880 '1.数秘ナンバー 33
24890 '****************************************************************************************************
24900 play Voice$ + "Result_Kabara_33_20230607.mp3"
24910 '****************************************************************************************************
24920 '1.数秘ナンバー 33
24930 '****************************************************************************************************
24940 end select
24950 '****************************************************************************************************
24960 '
24970 '****************************************************************************************************
24980 font FONT
24990 '****************************************************************************************************
25000 '
25010 '****************************************************************************************************
25020 key$ = "":bg = 0:bg2=0
25030 'COLOR rgb(255,255,255)
25040 'print "●診断結果"+chr$(13)
25050 locate 0,2
25060 if ex_info$(1)<>"JP" then
25070 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
25080 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
25090 locate 0,15:
25100 color rgb(255,255,255)
25110 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
25120 else
25130 '****************************************************************************************************
25140 'WUXG(1920x1200)の時ここから
25150 '****************************************************************************************************
25160 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
25170 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
25180 locate 0,15:
25190 color rgb(255,255,255)
25200 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
25210 endif
25220 '****************************************************************************************************
25230 'WUXG(1920x1200)の時ここまで
25240 '****************************************************************************************************
25250 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
25260 key$ = inkey$
25270 bg = strig(1)
25280 bg2 = strig(0)
25290 pause 200
25300 wend
25310 'Enter or JoyPad right
25320 if ((key$ = chr$(13)) or (bg = 2)) then
25330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
25340 endif
25350 if ((bg2=2)) then
25360 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
25370 endif
25380 'suhiNo1 = fix(bufsuhiNo / 10)
25390 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
25400 'bufsuhiNo = suhiNo1 + suhiNo2
25410 'goto recomp:
25420 'endif
25430 'print chr$(13)
25440 'color rgb(255,0,0)
25450 'print"トップ:エンターキー,S or s:保存"+chr$(13)
25460 'key$ = input$(1)
25470 'if key$ = chr$(13) then goto Main_Screen:
25480 '"Menu2 占いのルール"
25490 Suhi_Rule:
25500 '数秘術占いルールの表示
25510 cls 3:play "":init"kb:4"
25520 if ((size(0)<=1280) and (size(1)<=800)) then
25530 '****************************************************************************************************
25540 'WUXG(1920x1200)の時ここから
25550 '****************************************************************************************************
25560 gload Gazo$  + Gazo_WXGA$ +  "KabaraRuleScreen_864x640_20240219.png",0,0,0
25570 '****************************************************************************************************
25580 'WUXG(1920x1200)の時ここまで
25590 '****************************************************************************************************
25600 else
25610 '****************************************************************************************************
25620 'WUXG(1920x1200)の時ここから
25630 '****************************************************************************************************
25640 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
25650 gload Gazo$ + "downscreen.png",0,0,800
25660 '****************************************************************************************************
25670 'WUXG(1920x1200)の時ここまで
25680 '****************************************************************************************************
25690 endif
25700 'cls 3:
25710 'line (0,0) - (1500,60),rgb(0,0,255),bf
25720 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
25730 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
25740 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
25750 if ex_info$(1)<>"JP" then
25760 locate 0,2:Font 48
25770 print chr$(13) + chr$(13)
25780 color rgb(0,0,0)
25790 print "We will convert your birth date to a single number.";chr$(13)
25800 print "Number range: 1~9, 11, 22, 33";chr$(13)
25810 print "Example: If your birth date is 22nd November 1973";chr$(13)
25820 print "1+9+7+3+11+22=53 ";chr$(13)
25830 print "→ 5 + 3 = 8" + chr$(13)
25840 print "So, your numerology number is 8.";chr$(13)
25850 locate 0,15
25860 color rgb(255,255,255)
25870 print "Please press the right on the joystick"
25880 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
25890 else
25900 Font Font
25910 if ((size(0)<=1280) and (size(1)<=800)) then
25920 '************************************************************************************************
25930 '1.WXGAの時1200x800の時
25940 '************************************************************************************************
25950 color rgb(0,0,0)
25960 locate 1,5:print "誕生日を単数変換します";chr$(13)
25970 locate 1,7:print "数字の範囲:1~９,11,22,33";chr$(13)
25980 locate 1,9:print "例:1973年11月22日の場合";chr$(13)
25990 locate 1,11:print "1+9+7+3+11+22=53 ";chr$(13)
26000 locate 1,13:print "→ 5 + 3 = 8" + chr$(13)
26010 locate 1,15:print "故に8が数秘ナンバーになります";chr$(13)
26020 locate 0,19:color rgb(255,255,255)
26030 print "ジョイパッドの右を押してください"
26040 '************************************************************************************************
26050 '1.WXGAの時1200x800の時
26060 '************************************************************************************************
26070 else
26080 '****************************************************************************************************
26090 '2.WUXG(1920x1200)の時ここから
26100 '****************************************************************************************************
26110 print chr$(13) + chr$(13)
26120 color rgb(0,0,0)
26130 print "誕生日を単数変換します";chr$(13)
26140 print "数字の範囲:1~９,11,22,33";chr$(13)
26150 print "例:1973年11月22日の場合";chr$(13)
26160 print "1+9+7+3+11+22=53 ";chr$(13)
26170 print "→ 5 + 3 = 8" + chr$(13)
26180 print "故に8が数秘ナンバーになります";chr$(13)
26190 locate 0,15
26200 color rgb(255,255,255)
26210 print "ジョイパッドの右を押してください"
26220 '****************************************************************************************************
26230 '2.WUXG(1920x1200)の時ここまで
26240 '****************************************************************************************************
26250 endif
26260 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
26270 endif
26280 '"key$ = input$(1)"
26290 '"if key$ = chr$(13) then goto Main_Screen:"
26300 suhi_rule_selection:
26310 bg = 0:key$ = "":bg2=0
26320 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
26330 bg = strig(1)
26340 key$ = inkey$
26350 bg2=strig(0)
26360 pause 200
26370 wend
26380 if ((bg = 2) or (key$ = chr$(13))) then
26390 pause 200:cls 4:goto Main_Screen:
26400 endif
26410 if (bg2=2) then
26420 play "":pause 200
26430 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
26440 goto suhi_rule_selection:
26450 endif
26460 '2.設定 ここから
26470 '2-1.トップ画面に戻る
26480 Setting:
26490 cls 3:init"kb:4":font 48:No=0
26500 play ""
26510 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
26520 '****************************************************************************************************
26530 'W(1280x 800)の時ここから
26540 '****************************************************************************************************
26550 if (size(0)<=1280 and size(1)<=800) then
26560 gload Gazo$ + Gazo_WXGA$ + "Screen1_Setting_Top_907x680_20240221.png",0,0,0
26570 '****************************************************************************************************
26580 'W(1280 x800)の時ここまで
26590 '****************************************************************************************************
26600 else
26610 '****************************************************************************************************
26620 'WUXG(1920x1200)の時ここから
26630 '****************************************************************************************************
26640 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
26650 gload Gazo$ + "downscreen.png",0,0,800
26660 '****************************************************************************************************
26670 'WUXG(1920x1200)の時ここまで
26680 '****************************************************************************************************
26690 endif
26700 if (size(0)<=1280 and size(1)<=800) then
26710 font FONT:color rgb(255,255,255):cls
26720 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:
26730 '****************************************************************************************************
26740 '(1280x800)の時 ここから
26750 '****************************************************************************************************
26760 locate 1,5:
26770 print "番号を選んでください"
26780 locate 1,7:
26790 print " :1.トップ画面に戻る"
26800 locate 1,10:
26810 print " :2.バーズアイグリッドデーターリスト"
26820 locate 1,13:
26830 print " :3.未実装" + chr$(13)
26840 locate 1,16:
26850 print " :4.未実装" + chr$(13)
26860 color rgb(0,0,0):locate 1,19:
26870 print "1.トップ画面に戻るを選択"
26880 '****************************************************************************************************
26890 '(1280x800)の時 ここまで
26900 '****************************************************************************************************
26910 else
26920 font FONT
26930 print chr$(13) + chr$(13) + chr$(13)
26940 color rgb(255,255,255):sp_on 0,1:
26950 '****************************************************************************************************
26960 'WUXG(1920x1200)の時ここから
26970 '****************************************************************************************************
26980 print "番号を選んでください" + chr$(13)
26990 print " :1.トップ画面に戻る"+ chr$(13)
27000 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
27010 print " :3.未実装" + chr$(13)
27020 print " :4.未実装" + chr$(13)
27030 color rgb(0,0,0)
27040 locate 1,15:print "1.トップ画面に戻るを選択"
27050 '****************************************************************************************************
27060 'WUXG(1920x1200)の時ここまで
27070 '****************************************************************************************************
27080 endif
27090 Setting_Selection:
27100 y=0:key$="":bg=0:bg2=0
27110 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
27120 y=stick(1)
27130 key$ = inkey$
27140 bg=strig(1)
27150 bg2 = strig(0)
27160 pause 200
27170 wend
27180 if ((bg = 2) or (key$ = chr$(13))) then
27190 select case No
27200 case 0:
27210 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
27220 case 1:
27230 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
27240 end select
27250 endif
27260 if (bg2 = 2) then
27270 play "":pause 200
27280 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
27290 goto Setting_Selection:
27300 endif
27310 '****************************************************************************************************
27320 '(1280x800)の時 ここから
27330 '****************************************************************************************************
27340 if (size(0) <= 1280 and size(1) <= 800) then
27350 if ((y=1) or (y=-1)) then
27360 select case No
27370 case 0:
27380 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                    ":locate 1,19:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
27390 case else:
27400 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.トップ画面に戻るを選択":goto Setting_Selection:
27410 end select
27420 '****************************************************************************************************
27430 '(1280x800)の時 ここまで
27440 '****************************************************************************************************
27450 endif
27460 else
27470 '****************************************************************************************************
27480 '(1920x1280)の時 ここから
27490 '****************************************************************************************************
27500 if ((y=1) or (y=-1)) then
27510 select case No
27520 case 0:
27530 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
27540 case else:
27550 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
27560 end select
27570 endif
27580 '****************************************************************************************************
27590 '(1920x1200)の時 ここまで
27600 '****************************************************************************************************
27610 endif
27620 '2.設定 ここまで
27630 '3.Help
27640 '3-1.ルールの表示
27650 '3-2.バージョン
27660 '3-3.トップに戻る
27670 Help:
27680 cls 3:Font 48:No=0
27690 play ""
27700 '****************************************************************************************************
27710 ''WXGAの場合　ここから (1280 x 800)
27720 '****************************************************************************************************
27730 if ((size(0)<=1280) and (size(1)<=800)) then
27740 gload Gazo$ + Gazo_WXGA$ + "TopScreen_Help_907x680_20240216.png",0,0,0
27750 '****************************************************************************************************
27760 ''WXGAの場合　ここまで (1280 x 800)
27770 '****************************************************************************************************
27780 else
27790 '****************************************************************************************************
27800 'WUXG(1920x1200)の時ここから
27810 '****************************************************************************************************
27820 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
27830 gload Gazo$ + "downscreen.png",0,0,800
27840 endif
27850 '****************************************************************************************************
27860 'WUXG(1920x1200)の時ここまで
27870 '****************************************************************************************************
27880 if ex_info$(1)<>"JP" then
27890 font FONT
27900 color rgb(255,255,255)
27910 print chr$(13)+chr$(13)+chr$(13)
27920 print "Please select a number"+chr$(13)
27930 print " :1. Rules for Explain" + chr$(13)
27940 print " :2. Display Version" + chr$(13)
27950 print " :3. References" + chr$(13)
27960 print " :4. Return to Top Screen" + chr$(13)
27970 else
27980 if ((size(0)<=1280) and (size(1)<=800)) then
27990 color rgb(255,255,255)
28000 font FONT
28010 locate 1,5
28020 print "番号を選んでください"
28030 locate 1,7
28040 print " :1.ルールの説明"
28050 locate 1,10
28060 print " :2.バージョンの表示"
28070 locate 1,13
28080 print " :3.参考文献"
28090 locate 1,16
28100 print " :4.トップ画面に戻る"
28110 else
28120 '****************************************************************************************************
28130 'WUXG(1920x1200)の時ここから
28140 '****************************************************************************************************
28150 font FONT
28160 color rgb(255,255,255)
28170 print chr$(13)+chr$(13)+chr$(13)
28180 print "番号を選んでください"+chr$(13)
28190 print " :1.ルールの説明" + chr$(13)
28200 print " :2.バージョンの表示" + chr$(13)
28210 print " :3.参考文献" + chr$(13)
28220 print " :4.トップ画面に戻る" + chr$(13)
28230 endif
28240 endif
28250 '****************************************************************************************************
28260 'WUXG(1920x1200)の時ここまで
28270 '****************************************************************************************************
28280 '************************************************************************************************
28290 '1.WXGAの場合　ここから (1280 x 800)
28300 '************************************************************************************************
28310 color rgb(0,0,0)
28320 if ((size(0) <= 1280) and (size(1) <= 800)) then
28330 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
28340 locate 1,19
28350 print "                                  "
28360 if ex_info$(1) <> "JP" then
28370 print "1. Select Rules for Explain"
28380 else
28390 if count=0 then
28400 locate 1,19
28410 print "1.ルールの説明を選択"
28420 endif
28430 endif
28440 '************************************************************************************************
28450 '1.WXGAの場合　ここまで (1280 x 800)
28460 '************************************************************************************************
28470 else
28480 '*************************************************************************************************
28490 '2.WUXG(1920x1200)の時ここから
28500 '**************************************************************************************************
28510 'color rgb(0,0,0)
28520 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
28530 locate 1,15
28540 print "                                  "
28550 if ex_info$(1) <> "JP" then
28560 print "1. Select Rules for Explain"
28570 else
28580 locate 1,15
28590 print "1.ルールの説明を選択"
28600 endif
28610 '****************************************************************************************************
28620 '2.WUXG(1920x1200)の時ここまで
28630 '****************************************************************************************************
28640 endif
28650 init"kb:4"
28660 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
28670 Help_Select:
28680 bg=0:key$="":y=0:bg2=0
28690 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
28700 y = stick(1)
28710 key$ = inkey$
28720 bg = strig(1)
28730 bg2 = strig(0)
28740 pause 200
28750 wend
28760 if ex_info$(1)<>"JP" then
28770 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
28780 if ((y = 1) or (key$ = chr$(31))) then
28790 select case No
28800 case 0:
28810 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
28820 case 1:
28830 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
28840 case 2:
28850 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
28860 case 3:
28870 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
28880 end select
28890 endif
28900 '************************************************************************************************
28910 '1.WXGAの場合　ここから (1280 x 800)
28920 '************************************************************************************************
28930 if ((y = -1) or (key$ = chr$(30))) then
28940 select case No
28950 case 0:
28960 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "4.Return to Top Screen":goto Help_Select:
28970 case 1:
28980 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "1.Select Rules for Explain":goto Help_Select:
28990 case 2:
29000 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,19:print "                                        ":locate 1,19:print "2.Display Version":goto Help_Select:
29010 case 3:
29020 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,19:print "                                              ":locate 1,19:print "3.References":goto Help_Select:
29030 end select
29040 '************************************************************************************************
29050 '1.WXGAの場合　ここまで (1280 x 800)
29060 '************************************************************************************************
29070 else
29080 '****************************************************************************************************
29090 'WUXG(1920x1200)の時ここから
29100 '****************************************************************************************************
29110 if ((y = -1) or (key$ = chr$(30))) then
29120 select case No
29130 case 0:
29140 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
29150 case 1:
29160 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
29170 case 2:
29180 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
29190 case 3:
29200 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
29210 end select
29220 endif
29230 '****************************************************************************************************
29240 'WUXG(1920x1200)の時ここまで
29250 '****************************************************************************************************
29260 endif
29270 else
29280 '************************************************************************************************
29290 '1.WXGAの場合　ここから (1280 x 800)
29300 '************************************************************************************************
29310 if ((size(0) <= 1280) and (size(1) <= 800)) then
29320 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
29330 if ((y = 1) or (key$ = chr$(31))) then
29340 select case No
29350 case 0:
29360 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y + 120),1,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バージョンの表示を選択":goto Help_Select:
29370 case 1:
29380 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y + 220),2,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
29390 case 2:
29400 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y + 320),0,0:count = count + 1:beep:pause 200:locate 1,19:gosub Help_Top_ReCheck:color rgb(0,0,0):print "                                      ":locate 1,19:print "4.トップ画面に戻る":goto Help_Select:
29410 case 3:
29420 '****************************
29430 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y + 20),0,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
29440 '****************************
29450 end select
29460 endif
29470 '************************************************************************************************
29480 '1.WXGAの場合　ここまで (1280 x 800)
29490 '************************************************************************************************
29500 else
29510 '****************************************************************************************************
29520 'WUXG(1920x1200)の時ここから
29530 '****************************************************************************************************
29540 if ((y = 1) or (key$ = chr$(31))) then
29550 select case No
29560 case 0:
29570 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
29580 case 1:
29590 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
29600 case 2:
29610 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
29620 case 3:
29630 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
29640 end select
29650 endif
29660 '****************************************************************************************************
29670 'WUXG(1920x1200)の時ここまで
29680 '****************************************************************************************************
29690 endif
29700 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
29710 '************************************************************************************************
29720 '1.WXGAの場合　ここから (1280 x 800)
29730 '************************************************************************************************
29740 if ((size(0) <= 1280) and (size(1) <= 800)) then
29750 if ((y = -1) or (key$ = chr$(30))) then
29760 select case No
29770 case 0:
29780 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y+320),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Help_Select:
29790 case 1:
29800 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0,0):locate 1,15:print "                                      ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
29810 case 2:
29820 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                        ":locate 1,19:print "2.バージョンの表示を選択":goto Help_Select:
29830 case 3:
29840 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y+220),2,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
29850 end select
29860 endif
29870 '************************************************************************************************
29880 '1.WXGAの場合　ここから (1280 x 800)
29890 '************************************************************************************************
29900 else
29910 '************************************************************************************************
29920 'WUXG(1920x1200)の時ここから
29930 '************************************************************************************************
29940 if ((y = -1) or (key$ = chr$(30))) then
29950 select case No
29960 case 0:
29970 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
29980 case 1:
29990 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
30000 case 2:
30010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
30020 case 3:
30030 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
30040 end select
30050 endif
30060 '****************************************************************************************************
30070 'WUXG(1920x1200)の時ここまで
30080 '****************************************************************************************************
30090 endif
30100 endif
30110 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
30120 if ((bg = 2) or (key$ = chr$(13))) then
30130 select case No
30140 case 0:
30150 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop: 'Suhi_Rule:
30160 case 1:
30170 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
30180 case 2:
30190 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
30200 '3:Top画面に行く
30210 case 3:
30220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
30230 end select
30240 endif
30250 if (bg2 = 2) then
30260 play "":pause 200
30270 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
30280 goto Help_Select:
30290 endif
30300 'ルールの説明　トップ画面
30310 Suhi_Rule_explainTop:
30320 '**********************************************************
30330 cls 3:No=0
30340 play ""
30350 '****************************************************************************************************
30360 'WUXG(1920x1200)の時ここから
30370 '背景画像
30380 '****************************************************************************************************
30390 Font FONT
30400 if ((size(0) <= 1280) and (size(1) <= 800)) then
30410 gload Gazo$ + Gazo_WXGA$ + "Rule_explain_TopScreen_907x680_20240218.png",0,0,0
30420 else
30430 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
30440 gload Gazo$ + "downscreen.png",0,0,800
30450 endif
30460 '****************************************************************************************************
30470 'WUXG(1920x1200)の時ここまで
30480 '背景画像
30490 '****************************************************************************************************
30500 if ex_info$(1)<>"JP" then
30510 color rgb(255,255,255)
30520 print chr$(13)+chr$(13)+chr$(13)
30530 print "Please select a number"+chr$(13)
30540 print " :1.How to Kabara" + chr$(13)
30550 print " :2. Explain for BirdseyeGrid" + chr$(13)
30560 print " :3. Return to Top Screen" + chr$(13)
30570 else
30580 '****************************************************************************************************
30590 'WUXG(1920x1200)の時ここから
30600 '****************************************************************************************************
30610 '****************************************************************************************************
30620 'Top画面メニュー表示文字　ここから
30630 '****************************************************************************************************
30640 '***************************************************************************************************
30650 'WXGA(1200x800)の時 ここから
30660 '***************************************************************************************************
30670 if ((size(0) <= 1280) and (size(1) <= 800)) then
30680 color rgb(255,255,255)
30690 locate 1,5
30700 print "番号を選んでください"
30710 locate 1,7:    '〇
30720 print " :1.数秘術のやり方"
30730 locate 1,10:   '〇
30740 print " :2.バーズアイグリットの説明"
30750 locate 1,13:    '〇
30760 print " :3.トップ画面に戻る"
30770 '***************************************************************************************************
30780 'WXGA(1200x800)の時 ここまで
30790 '***************************************************************************************************
30800 else
30810 '***************************************************************************************************
30820 'WXGA(1200x800) 以外の時 ここから
30830 '***************************************************************************************************
30840 color rgb(255,255,255)
30850 print chr$(13)+chr$(13)+chr$(13)
30860 print "番号を選んでください"+chr$(13)
30870 print " :1.数秘術のやり方" + chr$(13)
30880 print " :2.バーズアイグリットの説明" + chr$(13)
30890 print " :3.トップ画面に戻る" + chr$(13)
30900 '***************************************************************************************************
30910 'WXGA(1200x800) 以外の時 ここまで
30920 '***************************************************************************************************
30930 '****************************************************************************************************
30940 'Top画面メニュー表示文字　ここまで
30950 '****************************************************************************************************
30960 endif
30970 '****************************************************************************************************
30980 'WUXG(1920x1200)の時ここまで
30990 '****************************************************************************************************
31000 endif
31010 color rgb(0,0,0)
31020 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
31030 locate 1,15
31040 print "                                  "
31050 if ex_info$(1) <> "JP" then
31060 print "                                  "
31070 print ":1.How to Kabara"
31080 else
31090 if ((size(0) <= 1280) and (size(1) <= 800)) then
31100 if count=0 then
31110 '****************************************************************************************************
31120 '共通部分 WXGA ここから
31130 '****************************************************************************************************
31140 locate 1,19
31150 print ":1.数秘術のやり方"
31160 '****************************************************************************************************
31170 '共通部分 WXGA ここまで
31180 '****************************************************************************************************
31190 endif
31200 else
31210 if count = 0 then
31220 '****************************************************************************************************
31230 '共通部分 WUXGA ここから
31240 '****************************************************************************************************
31250 locate 1,15
31260 print ":1.数秘術のやり方"
31270 '****************************************************************************************************
31280 '共通部分 WUXGA ここまで
31290 '****************************************************************************************************
31300 endif
31310 endif
31320 init "kb:4"
31330 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
31340 Suhi_Rule_explainTop2:
31350 bg=0:key$="":y=0:bg2=0
31360 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
31370 y = stick(1)
31380 key$ = inkey$
31390 bg = strig(1)
31400 bg2 = strig(0)
31410 pause 200
31420 wend
31430 if ex_info$(1)<>"JP" then
31440 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
31450 if ((y = 1) or (key$ = chr$(31))) then
31460 select case No
31470 case 0:
31480 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
31490 case 1:
31500 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
31510 case 2:
31520 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
31530 end select
31540 endif
31550 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
31560 if ((y = -1) or (key$ = chr$(30))) then
31570 select case No
31580 case 0:
31590 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,Y+220),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
31600 case 2:
31610 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
31620 case 3:
31630 No=0:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,Y+20),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
31640 end select
31650 endif
31660 else
31670 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
31680 '*******************************************************************************************************
31690 'WXGA 1200x 800 日本語
31700 '*******************************************************************************************************
31710 if ((size(0) <= 1280) and (size(1) <= 800)) then
31720 if ((y = 1) or (key$ = chr$(31))) then
31730 select case No
31740 case 0:
31750 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(x,Y+120),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
31760 case 1:
31770 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
31780 case 2:
31790 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
31800 end select
31810 endif
31820 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
31830 if ((y = -1) or (key$ = chr$(30))) then
31840 select case No
31850 case 0:
31860 No=2:sp_on 1,0:sp_on 0,0:sp_on 2,1:sp_on 0,0:sp_put 2,(5,Y+220),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
31870 case 1:
31880 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                        ":locate 1,19:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
31890 case 2:
31900 No=1:sp_on 1,1:sp_on 1,0:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y+120),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
31910 end select
31920 endif
31930 endif
31940 '*******************************************************************************************************
31950 'WXGA 1200x 800 ここまで 日本語
31960 '*******************************************************************************************************
31970 else
31980 '*******************************************************************************************************
31990 'WXGA 1200x 800 以外　ここから
32000 '*******************************************************************************************************
32010 if ((y = 1) or (key$ = chr$(31))) then
32020 select case No
32030 case 0:
32040 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
32050 case 1:
32060 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
32070 case 2:
32080 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
32090 end select
32100 endif
32110 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
32120 if ((y = -1) or (key$ = chr$(30))) then
32130 select case No
32140 case 0:
32150 No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
32160 case 1:
32170 No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
32180 case 2:
32190 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
32200 end select
32210 endif
32220 endif
32230 '******************************************************************************************************
32240 'WXGA 1200x 800 以外　ここまで
32250 '******************************************************************************************************
32260 endif
32270 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
32280 '*******************************************************************************************************
32290 '決定ボタンを押したときの処理　共通部分　ここから
32300 '********************************************************************************************************
32310 '********************************************************************************************************
32320 'bg:右の丸ボタン　chr$(13):Enter Key
32330 '********************************************************************************************************
32340 if ((bg = 2) or (key$ = chr$(13))) then
32350 select case No
32360 case 0:
32370 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule: ' 1.数秘ルールの説明
32380 case 1:
32390 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain1: '2.バーズアイグリットの説明
32400 '3:Top画面に行く
32410 case 2:
32420 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen: '3.メイン画面に行く
32430 end select
32440 endif
32450 '********************************************************************************************************
32460 '決定ボタンを押したときの処理　共通部分　ここまで
32470 '*********************************************************************************************************
32480 if (bg2 = 2) then
32490 play "":pause 200
32500 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
32510 goto Suhi_Rule_explainTop2:
32520 endif
32530 '**********************************************************
32540 'バーズアイグリットの説明1
32550 'Help-
32560 '**********************************************************
32570 BirdsEyeGrid_Explain1:
32580 '●.初期設定
32590 cls 3:Font FONT:No=0:bg=0:key$="":bg2=0
32600 play "":'音を停める
32610 'バーズアイグリット基本チャートを表示　　ここから
32620 if ex_info$(1) <> "JP" then
32630 '英語ファイル
32640 else
32650 if ((size(0)<=1280) and (size(1)<=800)) then
32660 gload Gazo$ + Gazo_WXGA$ + "BirdsEyeGrid_Explain1_Chart_907x680_20240219.png",0,0,0
32670 else
32680 '****************************************************************************************************
32690 'WUXG(1920x1200)の時ここから
32700 '****************************************************************************************************
32710 '日本語ファイル
32720 gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png",0,0,0
32730 '****************************************************************************************************
32740 'WUXG(1920x1200)の時ここまで
32750 '****************************************************************************************************
32760 endif
32770 'バーズアイグリット基本チャートを表示　　ここまで
32780 endif
32790 'ジョイパッドの右で次へ行く
32800 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
32810 key$ = inkey$
32820 bg = strig(1)
32830 bg2 = strig(0)
32840 pause 200
32850 wend
32860 if (bg=2 or key$=chr$(13)) then
32870 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
32880 'goto バーズアイグリット説明の2番目に行く
32890 end
32900 endif
32910 if (bg2 = 2 or key$ = "") then
32920 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
32930 'goto Top画面に行く
32940 goto Main_Screen:
32950 'end
32960 endif
32970 '**********************************************************
32980 'バーズアイグリットの説明2
32990 'Help-
33000 '**********************************************************
33010 BirdsEyeGrid_Explain2:
33020 '●.初期設定
33030 cls 3:Font 48:No = 0:bg = 0:key$ = "":bg2 = 0
33040 play "":'音を停める
33050 'バーズアイグリット基本チャートを表示　　ここから
33060 if ex_info$(1) <> "JP" then
33070 '英語ファイル
33080 else
33090 '日本語ファイル
33100 '****************************************************************************************************
33110 'WUXG(1920x1200)の時ここから
33120 '****************************************************************************************************
33130 gload Gazo$ + "BirdsEyeGrid_Exaple1_Chart_20240202.png",0,0,0
33140 '****************************************************************************************************
33150 'WUXG(1920x1200)の時ここまで
33160 '****************************************************************************************************
33170 'バーズアイグリット基本チャートを表示　　ここまで
33180 endif
33190 'ジョイパッドの右で次へ行く
33200 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
33210 key$ = inkey$
33220 bg = strig(1)
33230 bg2 = strig(0)
33240 pause 200
33250 wend
33260 if (bg = 2 or key$ = chr$(13)) then
33270 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
33280 'goto バーズアイグリット説明の3番目に行く
33290 end
33300 endif
33310 if (bg2 = 2 or key$ = "") then
33320 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
33330 'goto Top画面に行く
33340 goto Main_Screen:
33350 'end
33360 endif
33370 '**********************************************************
33380 '数秘術占い　トップ画面
33390 Kabara_TopScreen:
33400 cls 3:play ""
33410 if ((size(0)<=1280) and (size(1)<=800)) then
33420 '***********************************************************
33430 '1280x800ここから
33440 '***********************************************************
33450 gload Gazo$ + Gazo_WXGA$ + "Kabara_TopScreen_853x640_20240223.png",0,0,0
33460 '************************************************************
33470 '1280x800ここまで
33480 '************************************************************
33490 else
33500 '****************************************************************************************************
33510 'WUXG(1920x1200)の時ここから
33520 '****************************************************************************************************
33530 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
33540 gload Gazo$ + "downscreen.png",0,0,800
33550 '****************************************************************************************************
33560 'WUXG(1920x1200)の時ここまで
33570 '****************************************************************************************************
33580 endif
33590 play Voice$ + "KabaraTop_Selection_20230721.mp3"
33600 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
33610 init"kb:4":No=0
33620 if ex_info$(1)<>"JP" then
33630 color rgb(255,255,255)
33640 print chr$(13)+chr$(13)+chr$(13)
33650 print "Please select a number" + chr$(13)
33660 print " :1.Numerology" + chr$(13)
33670 print " :2.Bird's Eye Grid" + chr$(13)
33680 print " :3.Compatibility Divination" + chr$(13)
33690 print " :4.Return to Top Screen" + chr$(13)
33700 color rgb(0,0,0)
33710 locate 1,15:print "1. Select Numerology"
33720 else
33730 if ((size(0)<=1280) and (size(1)<=800)) then
33740 '***************************************************************************************************
33750 '1280 x800 ここから
33760 '***************************************************************************************************
33770 color rgb(255,255,255):font FONT
33780 locate 1,5
33790 print "番号を選んでください" + chr$(13)
33800 locate 1,7
33810 print " :1.数秘術占い" + chr$(13)
33820 locate 1,10
33830 print " :2.バーズアイグリット" + chr$(13)
33840 locate 1,13
33850 print " :3.相性占い" + chr$(13)
33860 locate 1,16
33870 print " :4.トップ画面に戻る" + chr$(13)
33880 color rgb(0,0,0)
33890 locate 1,18:print "1.数秘術占いを選択"
33900 '***************************************************************************************************
33910 '1280 x800 ここまで
33920 '***************************************************************************************************
33930 else
33940 '****************************************************************************************************
33950 'WUXG(1920x1200)の時ここから
33960 '****************************************************************************************************
33970 color rgb(255,255,255):font FONT
33980 print chr$(13)+chr$(13)+chr$(13)
33990 print "番号を選んでください" + chr$(13)
34000 print " :1.数秘術占い" + chr$(13)
34010 print " :2.バーズアイグリット" + chr$(13)
34020 print " :3.相性占い" + chr$(13)
34030 print " :4.トップ画面に戻る" + chr$(13)
34040 color rgb(0,0,0)
34050 locate 1,15:print "1.数秘術占いを選択"
34060 '****************************************************************************************************
34070 'WUXG(1920x1200)の時ここまで
34080 '****************************************************************************************************
34090 endif
34100 endif
34110 Kabara_TopScreen2:
34120 y = 0:bg = 0:key$ = "":bg2 = 0
34130 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
34140 key$ = inkey$
34150 bg = strig(1)
34160 y = stick(1)
34170 bg2 = strig(0)
34180 pause 200
34190 wend
34200 '選択ボタン
34210 'カーソル下 　と　ジョイパッド　の下
34220 if ex_info$(1)<>"JP" then
34230 if ((y = 1) or (key$ = chr$(31))) then
34240 select case No
34250 case 2:
34260 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
34270 case 3:
34280 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
34290 case 0:
34300 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
34310 case 1:
34320 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
34330 end select
34340 endif
34350 else
34360 if ((size(0) <= 1280) and (size(1) <= 800)) then
34370 '******************************************************************************************************
34380 '1280x800ここから
34390 '*****************************************************************************************************
34400 if ((y = 1) or (key$ = chr$(31))) then
34410 select case No
34420 case 2:
34430 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                    ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34440 case 3:
34450 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0): locate 1,18:print"                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34460 case 0:
34470 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34480 case 1:
34490 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                              ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
34500 end select
34510 endif
34520 'カーソル　上  or  ジョイパッド　上
34530 if ((y=-1) or (key$=chr$(30))) then
34540 select case No
34550 case 0:
34560 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34570 case 1:
34580 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34590 case 2:
34600 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34610 case 3:
34620 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                       ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
34630 end select
34640 endif
34650 '*****************************************************************************************************
34660 '1280 x800 ここまで
34670 '******************************************************************************************************
34680 else
34690 '******************************************************************************************************
34700 '1920x1280 ここから
34710 '******************************************************************************************************
34720 if ((y = 1) or (key$ = chr$(31))) then
34730 select case No
34740 case 2:
34750 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34760 case 3:
34770 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34780 case 0:
34790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34800 case 1:
34810 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
34820 end select
34830 endif
34840 'カーソル　上  or  ジョイパッド　上
34850 if ((y=-1) or (key$=chr$(30))) then
34860 select case No
34870 case 0:
34880 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34890 case 1:
34900 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34910 case 2:
34920 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34930 case 3:
34940 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
34950 end select
34960 endif
34970 endif
34980 '******************************************************************************************************
34990 '1920x 1280 ここまで
35000 '******************************************************************************************************
35010 endif
35020 '決定ボタン
35030 'ジョイパッドの右　or  Enter key
35040 if ((bg = 2) or (key$ = chr$(13))) then
35050 select case No
35060 case 0:
35070 '1.数秘術占い
35080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
35090 case 3:
35100 '4.メイン画面にいく
35110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
35120 case 1:
35130 '2.バースアイグリッド
35140 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
35150 case 2:
35160 '3.相性占い
35170 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
35180 end select
35190 endif
35200 if (bg2 = 2) then
35210 play "":pause 200
35220 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
35230 goto Kabara_TopScreen2:
35240 endif
35250 '1.バースアイグリット　名入力
35260 Inputname1:
35270 cls 3:init"kb:4":
35280 '****************************************************************************************************
35290 'WUXG(1920x1200)の時ここから
35300 '****************************************************************************************************
35310 font 48
35320 bg=0:key$="":y=0:No=-1:name1$="":i=1
35330 gload Gazo$ + "Selection.png",1,10,100
35340 'Line 1:☓
35350 'A:選択肢
35360 sp_def 15,(50,250),16,16
35370 'B:選択肢
35380 sp_def 16,(200,250),16,16
35390 'C:選択肢
35400 sp_def 17,(350,250),16,16
35410 'D:選択肢
35420 sp_def 18,(500,250),16,16
35430 'E:選択肢
35440 sp_def 19,(630,250),16,16
35450 'F:選択肢
35460 sp_def 20,(780,250),16,16
35470 'G:選択肢
35480 sp_def 21,(930,250),16,16
35490 'Line 2:☓
35500 'H:選択肢
35510 sp_def 22,(50,345),16,16
35520 'I:選択肢
35530 sp_def 23,(200,345),16,16
35540 'J:選択肢
35550 sp_def 24,(350,345),16,16
35560 'K:選択肢
35570 sp_def 25,(500,345),16,16
35580 'L:選択肢
35590 sp_def 26,(630,345),16,16
35600 'M:選択肢
35610 sp_def 27,(780,345),16,16
35620 'N:選択肢
35630 sp_def 28,(930,345),16,16
35640 'Line 3:☓
35650 'O:選択肢
35660 sp_def 29,(50,440),16,16
35670 'P:選択肢
35680 sp_def 30,(200,440),16,16
35690 'Q:選択肢
35700 sp_def 31,(350,440),16,16
35710 'R:選択肢
35720 sp_def 32,(500,440),16,16
35730 'S:選択肢
35740 sp_def 33,(630,440),16,16
35750 'T:選択肢
35760 sp_def 34,(780,440),16,16
35770 'U:選択肢
35780 sp_def 35,(930,440),16,16
35790 'Line 4:◯
35800 'V:選択肢
35810 sp_def 36,(50,535),16,16
35820 'W:選択肢
35830 sp_def 37,(200,535),16,16
35840 'X:選択肢
35850 sp_def 38,(350,535),16,16
35860 'Y:選択肢
35870 sp_def 39,(500,535),16,16
35880 'Z:選択肢
35890 sp_def 40,(630,535),16,16
35900 'Ok:選択肢
35910 sp_def 41,(780,535),16,16
35920 'sp_def 42,(930,535),16,16
35930 'Line 1
35940 'A
35950 sp_on 15,0
35960 'B
35970 sp_on 16,0
35980 'C
35990 sp_on 17,0
36000 'D
36010 sp_on 18,0
36020 'E
36030 sp_on 19,0
36040 'F
36050 sp_on 20,0
36060 'G
36070 sp_on 21,0
36080 'Line 1
36090 'Line 2
36100 'H
36110 sp_on 22,0
36120 'I
36130 sp_on 23,0
36140 'J
36150 sp_on 24,0
36160 'K
36170 sp_on 25,0
36180 'L
36190 sp_on 26,0
36200 'M
36210 sp_on 27,0
36220 'N
36230 sp_on 28,0
36240 'Line 2
36250 'Line 3
36260 'O
36270 sp_on 29,0
36280 'P
36290 sp_on 30,0
36300 'Q
36310 sp_on 31,0
36320 'R
36330 sp_on 32,0
36340 'S
36350 sp_on 33,0
36360 'T
36370 sp_on 34,0
36380 'U
36390 sp_on 35,0
36400 'Line 3
36410 'Line 4
36420 'V
36430 sp_on 36,0
36440 'W
36450 sp_on 37,0
36460 'X
36470 sp_on 38,0
36480 'Y
36490 sp_on 39,0
36500 'Z
36510 sp_on 40,0
36520 'Ok
36530 sp_on 41,1
36540 '****************************************************************************************************
36550 'WUXG(1920x1200)の時ここまで
36560 '****************************************************************************************************
36570 'Line 4
36580 'sp_on 42,1
36590 'Line 1
36600 'sp_put 15,(50,250),0,0
36610 'sp_put 16,(200,250),0,0
36620 'sp_put 17,(350,250),0,0
36630 'sp_put 18,(500,250),0,0
36640 'sp_put 19,(630,250),0,0
36650 'sp_put 20,(780,250),0,0
36660 'sp_put 21,(930,250),0,0
36670 'Line 2
36680 'sp_put 22,(50,345),0,0
36690 'sp_put 23,(200,345),0,0
36700 'sp_put 24,(350,345),0,0
36710 'sp_put 25,(500,345),0,0
36720 'sp_put 26,(630,345),0,0
36730 'sp_put 27,(780,345),0,0
36740 'sp_put 28,(930,345),0,0
36750 'Line 3
36760 'sp_put 29,(50,440),0,0
36770 'sp_put 30,(200,440),0,0
36780 'sp_put 31,(350,440),0,0
36790 'sp_put 32,(500,440),0,0
36800 'sp_put 33,(630,440),0,0
36810 'sp_put 34,(780,440),0,0
36820 'sp_put 35,(930,440),0,0
36830 'Line 4
36840 'sp_put 36,(50,535),0,0
36850 'sp_put 37,(200,535),0,0
36860 'sp_put 38,(350,535),0,0
36870 'sp_put 39,(500,535),0,0
36880 'sp_put 40,(630,535),0,0
36890 sp_put 41,(780,535),0,0
36900 'sp_put 42,(930,536),0,0
36910 gload Gazo$ + "Screen1.png",0,0,0
36920 color rgb(255,255,255)
36930 locate 1,3
36940 print "名前の姓をアルファベットで入力してください"
36950 locate 1,5
36960 print " A  B  C  D  E  F  G"
36970 locate 1,7
36980 print " H  I  J  K  L  M  N"
36990 locate 1,9
37000 print " O  P  Q  R  S  T  U"
37010 locate 1,11
37020 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
37030 locate 1,15:color rgb(0,0,0)
37040 print "名前の姓:" + name1$
37050 select_name1:
37060 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
37070 '有効ボタン
37080 '1.決定ボタン(bg:2)
37090 '2.Enter Key$:chr$(13)
37100 '3.カーソル上 (chr$(31))
37110 '4.カーソル　左 (chr$(29))
37120 '5.ジョイパッド　上 (y:1)
37130 '6:ジョイパッド　左 (y2:-1)
37140 '7:ジョイパッド　下 (y:-1)
37150 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
37160 key$ = inkey$
37170 'ジョイパッドの決定:bg
37180 bg = strig(1)
37190 y = stick(1)
37200 y2 = stick(0)
37210 pause 200
37220 wend
37230 '====================================
37240 'Birds Eye Grid 名前入力
37250 '入力スタイル　アルファベット入力
37260 'sp_on:　スプライトのオンオフ
37270 'sp_put :表示位置
37280 'No:ボタン番号
37290 '====================================
37300 'カーソルで下に行く
37310 if ((y=-1) or (key$=chr$(31))) then
37320 select case No
37330 '1.Ok ボタン
37340 'sp_on スプライトのオンオフ
37350 'sp_put スプライトを表示
37360 case -1:
37370 '1.アルファベット　入力ボタン
37380 '実装未完全なので終了
37390 'Ok → T ○ :No:20=T
37400 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
37410 'T  → M ○
37420 case 20:
37430 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
37440 'M  →　F ○
37450 case 13:
37460 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
37470 'F  → Ok
37480 case 6:
37490 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
37500 end select
37510 endif
37520 '2.決定ボタン
37530 if ((key$ = chr$(13)) OR  (bg = 2)) then
37540 select case No
37550 case -1:
37560 'スプライトをOFFにする
37570 sp_on 41,0
37580 end select
37590 endif
37600 '3.カーソル　左
37610 if (key$ = chr$(29) or (y2 =-1)) then
37620 select case No
37630 'Line 4
37640 'Line 4
37650 '1.
37660 'Z:-1 :Ok ボタン
37670 'Ok → Z
37680 case -1:
37690 'Ok →　Z
37700 'Ok ボタン OFF,Z Button ON
37710 'No=26:Z
37720 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
37730 '2.
37740 '26:Zボタン Z→ Y
37750 case 26:
37760 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
37770 '3.
37780 '25:Yボタン  Y → X
37790 case 25:
37800 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
37810 '4
37820 '24:Xボタン X → W
37830 case 24:
37840 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
37850 '23:Wボタン X → W
37860 '5
37870 case 23:
37880 '22:Vボタン W → V
37890 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
37900 case 22:
37910 '-1:V→ Ok
37920 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
37930 'Line 3
37940 case 20:
37950 '33:T34  → S:33 :◯
37960 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
37970 case 19:
37980 '32:S:33 → R:32 :◯
37990 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
38000 case 18:
38010 '31:R:32 → Q:31 :◯
38020 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
38030 '30:O → P :◯
38040 case 17:
38050 '30:Q:31 → P:30 :◯
38060 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
38070 case 16:
38080 '29:P:30 → O:29 :◯
38090 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
38100 case 15:
38110 '28:O:29 → U:21  :◯
38120 'O:OFF,U:ON
38130 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
38140 '27:U:21 → T:20  :◯
38150 case 21:
38160 'U:OFF:T:ON
38170 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
38180 'Line 2
38190 '26:M:13 → L:12 : ○
38200 case 13:
38210 'M:OFF,L:ON
38220 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
38230 '25:L:12 → K:11 : ○
38240 case 12:
38250 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
38260 '24:K:11 → J:10 : ○
38270 case 11:
38280 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
38290 '23:J:10 → I:9  : ○
38300 case 10:
38310 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
38320 '22:I:9 → H:8    :○
38330 case 9:
38340 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
38350 '21:H:8 → N:14:   :○
38360 case 8:
38370 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
38380 '20:N:14 → M:13:   :○
38390 case 14:
38400 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
38410 '●.Line 1:
38420 '19:F:20 → E:19 : ☓
38430 'F:OFF,E:ON
38440 case 6:
38450 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
38460 '18:E → D
38470 'E:OFF,D:ON
38480 case 5:
38490 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
38500 '17:D → C
38510 'D:OFF,C:ON
38520 case 4:
38530 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
38540 case 3:
38550 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
38560 case 2:
38570 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
38580 case 1:
38590 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
38600 case 7:
38610 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
38620 end select
38630 endif
38640 '上から下の方向
38650 if ((key$ = chr$(31)) or  (y = 1)) then
38660 select case No
38670 '●.1
38680 '1:A→H
38690 case 1:
38700 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
38710 '2:H→O
38720 case 8:
38730 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
38740 '3:O→V
38750 case 15:
38760 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
38770 '4:V→A
38780 case 22:
38790 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
38800 '●.2
38810 '5.B→I
38820 case 2:
38830 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
38840 '6.I→P
38850 case 9:
38860 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
38870 '7.P→W
38880 case 16:
38890 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
38900 '8.W→B
38910 case 23:
38920 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
38930 '●.3
38940 '9.C→J
38950 case 3:
38960 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
38970 '10.J→Q
38980 case 10:
38990 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
39000 '11.Q→X
39010 case 17:
39020 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
39030 '12.X→C
39040 case 24:
39050 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
39060 '●.4
39070 '13.D→K
39080 case 4:
39090 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
39100 '14.K→R
39110 case 11:
39120 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
39130 '15.R→Y
39140 case 18:
39150 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
39160 '16.Y→D
39170 case 25:
39180 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
39190 '●.5
39200 '17.E→L
39210 case 5:
39220 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
39230 '18.L→S
39240 case 12:
39250 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
39260 '19.S→Z
39270 case 19:
39280 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
39290 '20.Z→E
39300 case 26:
39310 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
39320 '●.6
39330 '21.F→M
39340 case 6:
39350 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
39360 '22.M→T
39370 case 13:
39380 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
39390 '23.T→Ok
39400 case 20:
39410 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
39420 '24.Ok→F
39430 case -1:
39440 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
39450 '●.7
39460 '25.G→N
39470 case 7:
39480 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
39490 '26.N→U
39500 case 14:
39510 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
39520 '27.U→G
39530 case 21:
39540 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
39550 end select
39560 endif
39570 '決定ボタン　で名前の姓に文字を追加。
39580 if (key$ = chr$(13) or bg = 2) then
39590 select case No
39600 'Okボタン
39610 case -1:
39620 goto Inputname2:
39630 'Aの文字
39640 case 1:
39650 'if len(n$)=0 then
39660 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
39670 'else
39680 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
39690 'endif
39700 goto select_name1:
39710 case 2:
39720 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
39730 end select
39740 endif
39750 Input_name1_Birdseye:
39760 cls 3:init "kb:2":play ""
39770 gload Gazo$ + "Input_Birtheye2.png",0,0,0
39780 if ex_info$(1)<>"JP" then
39790 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
39800 color rgb(0,0,255)
39810 locate 1,2:print "Please enter your name in English"
39820 color rgb(0,0,0)
39830 locate 1,5:Input "Name (Surname):",name1$
39840 else
39850 '****************************************************************************************************
39860 '共通部分　ここから
39870 '****************************************************************************************************
39880 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
39890 color rgb(0,0,255)
39900 locate 1,2:print "名前をアルファベットで入れてください"
39910 color rgb(0,0,0)
39920 locate 1,5:Input "名前（姓の部分）:",name1$
39930 '****************************************************************************************************
39940 '共通部分　ここまで
39950 '****************************************************************************************************
39960 endif
39970 '27.U→G
39980 'locate 1,5:print "Hit any key"
39990 n1 = len(name1$)
40000 if (n1 < 11) then
40010 for i=1 to n1
40020 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
40030 next i
40040 endif
40050 goto Inputname2:
40060 '2.グリッドアイ　姓の入力
40070 'end
40080 Inputname2:
40090 cls 3:init"kb:2":font 48:play ""
40100 gload Gazo$ + "Input_Birtheye1.png",0,0,0
40110 if ex_info$(1)<>"JP" then
40120 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
40130 color rgb(0,0,255)
40140 locate 1,2:print "Please enter your name in English"
40150 color rgb(0,0,0)
40160 locate 1,5:Input "Name (First name):",name2$
40170 n2 = len(name2$)
40180 for i=1 to n2
40190 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
40200 next i
40210 else
40220 '****************************************************************************************************
40230 '共通部分　ここから
40240 '****************************************************************************************************
40250 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
40260 color rgb(0,0,255)
40270 locate 1,2:print "名前をアルファベットで入れてください"
40280 color rgb(0,0,0)
40290 locate 1,5:Input "名前(名の部分):",name2$
40300 n2 = len(name2$)
40310 for i=1 to n2
40320 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
40330 next i
40340 '****************************************************************************************************
40350 '共通部分　ここまで
40360 '****************************************************************************************************
40370 endif
40380 '****************************************************************************************************
40390 '計算領域　ここから
40400 '****************************************************************************************************
40410 Complate:
40420 'name1
40430 for i=0 to 25
40440 for n=1 to len(name1$)
40450 if (buf_chart$(i,0) = buf_name1$(n-1)) then
40460 b = val(buf_chart$(i,1))
40470 buffer(b-1) = buffer(b-1) + 1
40480 endif
40490 next n
40500 next i
40510 'name2
40520 for i=0 to 25
40530 for n=1 to len(name2$)
40540 if (buf_chart$(i,0) = buf_name2$(n-1)) then
40550 c = val(buf_chart$(i,1))
40560 buffer(c - 1) = buffer(c - 1) + 1
40570 endif
40580 next n
40590 next i
40600 '****************************************************************************************************
40610 '計算領域 ここまで
40620 '****************************************************************************************************
40630 '****************************************************************************************************
40640 '結果表示領域
40650 '****************************************************************************************************
40660 Result_Birtheye1:
40670 cls 3:init"kb:4":No=0:play "":'音を止める
40680 '****************************************************************************************************
40690 '1280x800　ここから
40700 '****************************************************************************************************
40710 if ((size(0) <= 1280) and (size(1) <= 800)) then
40720 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x640_20240223.png",0,0,0
40730 '****************************************************************************************************
40740 '1280x800　ここまで
40750 '****************************************************************************************************
40760 else
40770 '****************************************************************************************************
40780 '1920x1280　ここから
40790 '****************************************************************************************************
40800 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
40810 gload Gazo$ + "downscreen.png",0,0,800
40820 '****************************************************************************************************
40830 '1920x1280　ここまで
40840 '****************************************************************************************************
40850 endif
40860 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
40870 color rgb(255,255,255)
40880 '1の表示
40890 locate 3,14:print buffer(0);
40900 '2の表示
40910 locate 3,9:print buffer(1);
40920 '3の表示
40930 locate 3,5:print buffer(2);
40940 '4の表示
40950 locate 10,14:print buffer(3);
40960 '5の表示
40970 locate 10,9:print buffer(4);
40980 '6の表示
40990 locate 10,5:print buffer(5);
41000 '7の表示
41010 locate 15,14:print buffer(6);
41020 '8の表示
41030 locate 15,9:print buffer(7);
41040 '9の表示
41050 locate 15,5:print buffer(8);
41060 'name を大文字に変換
41070 locate 5,3:print ucase$(name1$ + name2$)
41080 color rgb(0,0,0)
41090 'bg:右のボタン  ,bg2:左のボタン
41100 if ex_info$(1)<>"JP" then
41110 color rgb(255,255,255)
41120 print "Left circle: Main Screen, Right circle: Open Menu"
41130 else
41140 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
41150 endif
41160 bg=0:key$="":bg2=0
41170 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
41180 'Enterと決定ボタン
41190 key$ = inkey$
41200 '右ボタン:1
41210 bg = strig(1)
41220 '左の丸ボタン:0
41230 bg2=strig(0)
41240 pause 200
41250 wend
41260 if ((bg=2) or (key$=chr$(13))) then
41270 'データーをクリアしてトップ画面に行く
41280 'for i=0 to 8
41290 'buffer(i)=0
41300 'next i
41310 'for n=0 to 9
41320 'buf_name1$(n) = ""
41330 'buf_name2$(n) = ""
41340 'next n
41350 'Topに行く
41360 'goto Main_Screen:
41370 'メニューを開く
41380 'goto BirdsEye_Result2:
41390 'Menu(ui_select) リストに飛ぶ
41400 goto Result_Birtheye_List1:
41410 endif
41420 if (bg2=2) then
41430 'データーをクリアする
41440 for i=0 to 8
41450 buffer(i)=0
41460 next i
41470 for n=0 to 9
41480 buf_name1$(n)=""
41490 buf_name2$(n)=""
41500 next n
41510 goto Main_Screen:
41520 endif
41530 'goto Result_Birtheye1:
41540 'Result_Birtheye2:
41550 'cls 3:color rgb(255,255,255)
41560 'end
41570 'Memory 消去
41580 '****************************************************************************************************
41590 '結果表示領域　ここまで
41600 '****************************************************************************************************
41610 '横のフォーカスライン
41620 BirdsEye_Result2:
41630 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
41640 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
41650 Forcus1_buffer$(2)="○"
41660 else
41670 Forcus1_buffer$(2)="☓"
41680 endif
41690 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
41700 Forcus1_buffer$(1)="○"
41710 else
41720 Forcus1_buffer$(1) = "☓"
41730 endif
41740 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
41750 Forcus1_buffer$(0)="○"
41760 else
41770 Forcus1_buffer$(0)="☓"
41780 endif
41790 gload Gazo$ + "Screen1.png",0,0,0
41800 if ex_info$(1)<>"JP" then
41810 color rgb(255,0,0):
41820 locate 1,1
41830 print "Bird's Eye Grid (Focus Line 1)"
41840 color rgb(255,255,255)
41850 locate 1,3:
41860 print "●. Horizontal Focus Line"
41870 locate 1,5
41880 print "1. Sharp Line:"+Forcus1_buffer$(2)
41890 locate 1,7
41900 print "2. Mediator Line:"+Forcus1_buffer$(1)
41910 locate 1,9
41920 print "3. Steady Line:"+Forcus1_buffer$(0)
41930 color rgb(0,0,0)
41940 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
41950 else
41960 color rgb(255,0,0):
41970 locate 1,1
41980 print "バーズアイグリッド(フォーカスライン1)"
41990 color rgb(255,255,255)
42000 locate 1,3:
42010 print "●.横のフォーカスライン"
42020 locate 1,5
42030 print "1.切れ者ライン:"+Forcus1_buffer$(2)
42040 locate 1,7
42050 print "2.調停者ライン:"+Forcus1_buffer$(1)
42060 locate 1,9
42070 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
42080 color rgb(0,0,0)
42090 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
42100 endif
42110 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
42120 key$ = inkey$
42130 bg = strig(1)
42140 bg2 = strig(0)
42150 pause 200
42160 wend
42170 if ((bg=2) or (key$=chr$(13))) then
42180 goto BirdsEye_Result3:
42190 endif
42200 if (bg2=2) then
42210 for i=0 to 8
42220 buffer(i)=0
42230 next i
42240 goto Main_Screen:
42250 endif
42260 BirdsEye_Result3:
42270 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
42280 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
42290 Forcus2_buffer$(2)="○"
42300 else
42310 Forcus2_buffer$(2)="☓"
42320 endif
42330 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
42340 Forcus2_buffer$(1)="○"
42350 else
42360 Forcus2_buffer$(1) = "☓"
42370 endif
42380 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
42390 Forcus2_buffer$(0)="○"
42400 else
42410 Forcus2_buffer$(0)="☓"
42420 endif
42430 gload Gazo$ + "Screen1.png",0,0,0
42440 if ex_info$(1)<>"JP" then
42450 color rgb(255,0,0):
42460 locate 1,1
42470 print "Bird's Eye Grid (Focus Line 2)"
42480 color rgb(255,255,255)
42490 locate 1,3
42500 print "●. Vertical Focus Line"
42510 locate 1,5
42520 print "1. Expresser Line:" + Forcus2_buffer$(2)
42530 locate 1,7
42540 print "2. Commander Line:" + Forcus2_buffer$(1)
42550 locate 1,9
42560 print "3. Leader Line:" + Forcus2_buffer$(0)
42570 color rgb(0,0,0)
42580 locate 0,15:print "Right circle: Next, Left circle: Retest "
42590 else
42600 '****************************************************************************************************
42610 'WUXG(1920x1200)の時ここから
42620 '****************************************************************************************************
42630 color rgb(255,0,0):
42640 locate 1,1
42650 print "バーズアイグリッド(フォーカスライン2)"
42660 color rgb(255,255,255)
42670 locate 1,3
42680 print "●.縦のフォーカスライン"
42690 locate 1,5
42700 print "1.表現者ライン:" + Forcus2_buffer$(2)
42710 locate 1,7
42720 print "2.司令塔ライン:" + Forcus2_buffer$(1)
42730 locate 1,9
42740 print "3.指導者ライン:" + Forcus2_buffer$(0)
42750 color rgb(0,0,0)
42760 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
42770 '****************************************************************************************************
42780 'WUXG(1920x1200)の時ここから
42790 '****************************************************************************************************
42800 endif
42810 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
42820 key$ = inkey$
42830 bg = strig(1)
42840 bg2 = strig(0)
42850 pause 200
42860 wend
42870 if ((bg = 2) or (key$ = chr$(13))) then
42880 goto BirdsEye_Result4:
42890 endif
42900 if (bg2=2) then
42910 for i=0 to 8
42920 buffer(i)=0
42930 next i
42940 goto Main_Screen:
42950 endif
42960 BirdsEye_Result4:
42970 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
42980 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
42990 Forcus3_buffer$(1) = "○"
43000 else
43010 Forcus3_buffer$(1) = "☓"
43020 endif
43030 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
43040 Forcus3_buffer$(0) = "○"
43050 else
43060 Forcus3_buffer$(0) = "☓"
43070 endif
43080 gload Gazo$ + "Screen1.png",0,0,0
43090 if ex_info$(1)<>"JP" then
43100 color rgb(255,0,0):
43110 locate 1,1
43120 print "Bird's Eye Grid (Focus Line 3)"
43130 color rgb(255,255,255)
43140 locate 1,3:
43150 print "●. Diagonal Focus Line"
43160 locate 1,5
43170 print "1. Success Line:"+Forcus3_buffer$(1)
43180 locate 1,7
43190 print "2. Celebrity Line:"+Forcus3_buffer$(0)
43200 color rgb(0,0,0)
43210 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
43220 else
43230 '****************************************************************************************************
43240 'WUXG(1920x1200)の時ここから
43250 '****************************************************************************************************
43260 color rgb(255,0,0):
43270 locate 1,1
43280 print "バーズアイグリッド(フォーカスライン3)"
43290 color rgb(255,255,255)
43300 locate 1,3:
43310 print "●.斜めのフォーカスライン"
43320 locate 1,5
43330 print "1.成功者ライン:"+Forcus3_buffer$(1)
43340 locate 1,7
43350 print "2.セレブライン:"+Forcus3_buffer$(0)
43360 color rgb(0,0,0)
43370 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
43380 '*************************************************************************************************
43390 'WUXG(1920x1200)の時ここまで
43400 '*************************************************************************************************
43410 endif
43420 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
43430 key$ = inkey$
43440 bg = strig(1)
43450 bg2 = strig(0)
43460 pause 200
43470 wend
43480 if ((bg=2) or (key$=chr$(13))) then
43490 goto Result_Birtheye1:
43500 endif
43510 if (bg2=2) then
43520 'データークリア
43530 for i=0 to 8
43540 buffer(i) = 0
43550 next i
43560 goto Main_Screen:
43570 endif
43580 References1:
43590 cls 3:key$ = "":bg = 0:play "":
43600 font 48-8
43610 if ((size(0) <= 1280) and (size(1) <= 800)) then
43620 gload Gazo$ + Gazo_WXGA$ +  "Reference1_864x640_20240219.png",0,0,0
43630 else
43640 gload Gazo$ + "Reference1_20230703.png",0,0,0
43650 gload Gazo$ + "downscreen.png",0,0,800
43660 endif
43670 if ex_info$(1)<>"JP" then
43680 print chr$(13)+chr$(13)+chr$(13)
43690 color rgb(0,0,255)
43700 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
43710 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
43720 print "・Publisher: Gento-sha" + chr$(13)
43730 print "・Website: www.carolAdrienne.jp/" + chr$(13)
43740 print "・ISBN: 978-4-344-01394-0" + chr$(13)
43750 print "・Price: 1500 yen + tax" + chr$(13)
43760 color rgb(255,255,255)
43770 locate 1,18
43780 print "Right joystick: Next"
43790 else
43800 '****************************************************************************************************
43810 '(1200x800)の時ここから
43820 '****************************************************************************************************
43830 if ((size(0)<=1280) and (size(1)<=800)) then
43840 font FONT
43850 color rgb(0,0,255)
43860 locate 1,5:
43870 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
43880 locate 1,7:
43890 print "・Author:carol Adrinne,PhD"+chr$(13)
43900 locate 1,9:
43910 print "・出版社:幻冬舎" + chr$(13)
43920 locate 1,11:
43930 print "・HP:www.carolAdrienne.jp/"+chr$(13)
43940 locate 1,13:
43950 print "・ISBN:978-4-344-01394-0"+chr$(13)
43960 locate 1,15
43970 print "・定価:1500円 + 税"+chr$(13)
43980 color rgb(255,255,255)
43990 locate 1,18
44000 print "ジョイパッド右：次へ"
44010 '****************************************************************************************************
44020 '(1200x800)の時ここまで
44030 '****************************************************************************************************
44040 else
44050 '****************************************************************************************************
44060 'WUXG(1920x1200)の時ここから
44070 '****************************************************************************************************
44080 font FONT
44090 print chr$(13)+chr$(13)+chr$(13)
44100 color rgb(0,0,255)
44110 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
44120 print "・Author:carol Adrinne,PhD"+chr$(13)
44130 print "・出版社:幻冬舎" + chr$(13)
44140 print "・HP:www.carolAdrienne.jp/"+chr$(13)
44150 print "・ISBN:978-4-344-01394-0"+chr$(13)
44160 print "・定価:1500円 + 税"+chr$(13)
44170 color rgb(255,255,255)
44180 locate 1,18
44190 print "ジョイパッド右：次へ"
44200 '****************************************************************************************************
44210 'WUXG(1920x1200)の時ここまで
44220 '****************************************************************************************************
44230 endif
44240 endif
44250 while (key$ <> chr$(13) and bg <> 2)
44260 bg = strig(1)
44270 key$ = inkey$
44280 pause 200
44290 wend
44300 '
44310 if ((bg = 2) or (key$ = chr$(13))) then
44320 pause 200:goto References2:
44330 endif
44340 'ユダヤの秘儀 カバラ大占術
44350 References2:
44360 cls 3:play "":bg = 0:key$ = ""
44370 if ((size(0)<=1280) and (size(1)<=800)) then
44380 gload Gazo$ + Gazo_WXGA$ +  "Reference2_864x640_20240219.png",0,0,0
44390 else
44400 gload Gazo$ + "Reference2_20230703.png",0,0,0
44410 gload Gazo$ + "downscreen.png",0,0,800
44420 endif
44430 '参考文献２
44440 'カバラ大占術
44450 if ex_info$(1)<>"JP" then
44460 print chr$(13) + chr$(13) + chr$(13)
44470 color  rgb(0,0,255):font 48-8
44480 locate 1,3
44490 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
44500 print "・Author: Hironari Asano" + chr$(13)
44510 print "・Publisher: NON BOOK" + chr$(13)
44520 print "・ISBN: 4-396-10364-6" + chr$(13)
44530 print "・Price: 829 yen + tax"
44540 color rgb(255,255,255)
44550 locate 1,18
44560 print "Right joystick: Return to top"
44570 else
44580 '****************************************************************************************************
44590 '(1200x800)の時 ここから
44600 '****************************************************************************************************
44610 if ((size(0)<=1280) and (size(1)<=800)) then
44620 font FONT
44630 color  rgb(0,0,255):
44640 locate 1,5:print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
44650 locate 1,7:print "・著者：浅野 八郎" + chr$(13)
44660 locate 1,9:print "・出版社:NON BOOK" + chr$(13)
44670 locate 1,11:print "・ISBN:4-396-10364-6" + chr$(13)
44680 locate 1,13:print "・定価:829円 + 税"
44690 color rgb(255,255,255)
44700 locate 1,18
44710 print "ジョイパッド右：トップへ行く"
44720 '****************************************************************************************************
44730 '(1200x800)の時 ここまで
44740 '****************************************************************************************************
44750 else
44760 '****************************************************************************************************
44770 'WUXG(1920x1200)の時ここから
44780 '****************************************************************************************************
44790 color  rgb(0,0,255):font FONT
44800 print chr$(13) + chr$(13) + chr$(13)
44810 locate 1,3
44820 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
44830 print "・著者：浅野　八郎" + chr$(13)
44840 print "・出版社:NON BOOK" + chr$(13)
44850 print "・ISBN:4-396-10364-6" + chr$(13)
44860 print "・定価:829円 + 税"
44870 color rgb(255,255,255)
44880 locate 1,18
44890 print "ジョイパッド右：トップへ行く"
44900 '****************************************************************************************************
44910 'WUXG(1920x1200)の時ここまで
44920 '****************************************************************************************************
44930 endif
44940 endif
44950 while ((key$ <> chr$(13)) and (bg <> 2))
44960 bg = strig(1)
44970 key$ = inkey$
44980 pause 200
44990 wend
45000 if ((bg = 2) or (key$ = chr$(13))) then
45010 pause 200:goto Main_Screen:
45020 endif
45030 end
45040 '1.数秘術　トップ画面
45050 Kabara_First_Top:
45060 cls 3:color rgb(255,255,255):play ""
45070 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
45080 gload Gazo$ + "downscreen.png",0,0,800
45090 No=0:init"kb:4"
45100 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
45110 if ex_info$(1)<>"JP" then
45120 print chr$(13);chr$(13)
45130 color rgb(255,255,255)
45140 locate 3,4:No=0
45150 print "Please select a number" + chr$(13)
45160 print " :1. Numerology" + chr$(13)
45170 print " :2. Return to the top screen" + chr$(13)
45180 color rgb(0,0,0)
45190 sp_on 0,1
45200 locate 1,15:print "1. Select Numerology"
45210 else
45220 '****************************************************************************************************
45230 'WUXG(1920x1200)の時ここから
45240 '****************************************************************************************************
45250 print chr$(13);chr$(13)
45260 color rgb(255,255,255)
45270 locate 3,4:No=0
45280 print "番号選んでください" + chr$(13)
45290 print " :1.数秘術占い" + chr$(13)
45300 print " :2.トップ画面に戻る" + chr$(13)
45310 color rgb(0,0,0)
45320 sp_on 0,1
45330 locate 1,15:print "1.数秘術番号を求めるを選択"
45340 '****************************************************************************************************
45350 'WUXG(1920x1200)の時ここまで
45360 '****************************************************************************************************
45370 endif
45380 'KeyBord:true
45390 'Joy Pad:true
45400 '上、下:true
45410 '
45420 'ｂｇ：決定ボタン
45430 'カーソル　上
45440 'カーソル　下
45450 Kabara_First_Top2:
45460 key$ = "":bg = 0:y = 0:
45470 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
45480 key$ = inkey$
45490 bg = strig(1)
45500 y = stick(1)
45510 'PauseでCPUを休める
45520 pause 5
45530 wend
45540 '1.カーソル　下 処理 chr$(31)
45550 'カーソル　下
45560 if ex_info$(1) <> "JP" then
45570 if ((key$ = chr$(31)) or (y = 1)) then
45580 select case No
45590 '
45600 case 1:
45610 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
45620 case 0:
45630 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
45640 'case 2:
45650 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
45660 end select
45670 endif
45680 else
45690 if ((key$ = chr$(31)) or (y = 1)) then
45700 select case No
45710 '
45720 case 1:
45730 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
45740 case 0:
45750 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
45760 'case 2:
45770 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
45780 end select
45790 endif
45800 '2.カーソル　上 処理 chr$(30)
45810 if ((key$ = chr$(30)) or (y = -1)) then
45820 select case No
45830 case 0:
45840 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
45850 case 1:
45860 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
45870 'case 2:
45880 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
45890 end select
45900 endif
45910 endif
45920 '3.決定 処理  bg:2 or Enter key:chr$(13)
45930 if ((bg = 2) or (key$ = chr$(13))) then
45940 select case No
45950 case 0:
45960 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
45970 goto Kabara_TopScreen:
45980 'case 1:
45990 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
46000 case 1:
46010 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
46020 end select
46030 endif
46040 '
46050 'Kabara 相性占い トップ画面
46060 Kabara_Aishou_Top:
46070 cls 3:y=0:key$="":bg=0:No=0
46080 play ""
46090 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
46100 gload Gazo$ + "downscreen.png",0,0,800
46110 if ex_info$(1)<>"JP" then
46120 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
46130 print chr$(13) + chr$(13)
46140 locate 0,4:color rgb(255,255,255)
46150 print "Please select a number" + chr$(13)
46160 print " :1. Compatibility fortune-telling ...." + chr$(13)
46170 print " :2. Business compatibility fortune-telling" + chr$(13)
46180 print " :3. Return to the top screen" + chr$(13)
46190 sp_on 0,1:sp_on 1,0:sp_on 2,0
46200 color rgb(0,0,0)
46210 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
46220 else
46230 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
46240 '****************************************************************************************************
46250 'WUXG(1920x1200)の時ここから
46260 '****************************************************************************************************
46270 print chr$(13) + chr$(13)
46280 locate 0,4:color rgb(255,255,255)
46290 'print "Ok"
46300 '
46310 print "番号を選んでください" + chr$(13)
46320 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
46330 print " :2.ビジネスの相性占い" + chr$(13)
46340 print " :3.トップ画面に戻る" + chr$(13)
46350 sp_on 0,1:sp_on 1,0:sp_on 2,0
46360 color rgb(0,0,0)
46370 locate 1,15:print "1.男女2人の相性占いを選択"
46380 '****************************************************************************************************
46390 'WUXG(1920x1200)の時ここまで
46400 '****************************************************************************************************
46410 endif
46420 Kabara_Aishou_Top2:
46430 key$ = "":y = 0:bg = 0:
46440 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
46450 'ジョイパッド(右) ,十字キー (上下)
46460 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
46470 y = stick(1)
46480 key$ = inkey$
46490 bg = strig(1)
46500 pause 200
46510 wend
46520 'カーソル　下 or 十字キー　下
46530 if ex_info$(1)<>"JP" then
46540 if ((key$ = chr$(31)) or (y = 1)) then
46550 select case No
46560 'Option change 1 - 2
46570 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
46580 'ok
46590 case 0:
46600 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
46610 'Option change 2 - 3
46620 case 1:
46630 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
46640 'Release time case 2 comment release
46650 case 2:
46660 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
46670 case else:
46680 goto Kabara_Aishou_Top2:
46690 end select
46700 endif
46710 if ((key$ = chr$(30)) or (y = -1)) then
46720 select case No
46730 case 0:
46740 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
46750 case 1:
46760 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
46770 case 2:
46780 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
46790 case else:
46800 goto Kabara_Aishou_Top2:
46810 end select
46820 endif
46830 else
46840 if ((key$ = chr$(31)) or (y = 1)) then
46850 select case No
46860 '選択肢　1 - 2に変更
46870 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
46880 'ok
46890 case 0:
46900 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
46910 '選択肢　2 - 3に変更
46920 case 1:
46930 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
46940 'リリース時 case 2コメント解除
46950 case 2:
46960 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
46970 case else:
46980 goto Kabara_Aishou_Top2:
46990 end select
47000 endif
47010 '十字キー　上　、カーソル　上
47020 if ((key$ = chr$(30)) or (y = -1)) then
47030 select case No
47040 case 0:
47050 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
47060 case 1:
47070 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
47080 case 2:
47090 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
47100 case else:
47110 goto Kabara_Aishou_Top2:
47120 end select
47130 endif
47140 endif
47150 '十字キー　上下:選択
47160 'ジョイパッド 右:決定
47170 if ((bg = 2) or (key$ = chr$(13))) then
47180 select case No
47190 '1.男女の相性
47200 case 0:
47210 '男女の相性占い(未実装)トップ画面に飛ぶ
47220 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
47230 '2ビジネスの相性
47240 case 1:
47250 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
47260 case 2:
47270 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
47280 end select
47290 endif
47300 '0.男女の相性　トップ画面　ここから
47310 Danjyo_Aisyou_Top:
47320 cls 3:y=0:key$="":bg=0:No=0
47330 play ""
47340 gload Gazo$ + "Screen1.png",0,0,0
47350 gload Gazo$ + "downscreen.png",0,0,800
47360 if ex_info$(1)<>"JP" then
47370 print chr$(13) + chr$(13)
47380 locate 0,4:color rgb(255,255,255)
47390 print "Please select a number" + chr$(13)
47400 print " :1. Compatibility with a person of ...." + chr$(13)
47410 print " :2. Compatibility between two people" + chr$(13)
47420 print " :3. Return to the top screen" + chr$(13)
47430 sp_on 0,1:sp_on 1,0:sp_on 2,0
47440 color rgb(0,0,0)
47450 locate 1,15:print "1. Compatibility with a person of ...."
47460 else
47470 print chr$(13) + chr$(13)
47480 locate 0,4:color rgb(255,255,255)
47490 '****************************************************************************************************
47500 'WUXG(1920x1200)の時ここから
47510 '****************************************************************************************************
47520 print "番号を選んでください" + chr$(13)
47530 print " :1.自分と異性の相性(未実装)" + chr$(13)
47540 print " :2.男女2人の相性" + chr$(13)
47550 print " :3.トップ画面に戻る" + chr$(13)
47560 sp_on 0,1:sp_on 1,0:sp_on 2,0
47570 color rgb(0,0,0)
47580 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
47590 '****************************************************************************************************
47600 'WUXG(1920x1200)の時ここまで
47610 '****************************************************************************************************
47620 endif
47630 Danjyo_Aisyou_Top2:
47640 key$ = "":y = 0:bg = 0:
47650 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
47660 'ジョイパッド(右) ,十字キー (上下)
47670 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
47680 y = stick(1)
47690 key$ = inkey$
47700 bg = strig(1)
47710 pause 200
47720 wend
47730 if ex_info$(1)<>"JP" then
47740 'Cursor down or arrow key down
47750 if ((key$ = chr$(31)) or (y = 1)) then
47760 select case No
47770 'Option 1 - 2 change
47780 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
47790 'ok
47800 case 0:
47810 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
47820 'Option 2 - 3 change
47830 case 1:
47840 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
47850 'Release time case 2 comment release
47860 case 2:
47870 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
47880 case else:
47890 goto Kabara_Aishou_Top2:
47900 end select
47910 endif
47920 'Arrow key up, cursor up
47930 if ((key$ = chr$(30)) or (y = -1)) then
47940 select case No
47950 case 0:
47960 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
47970 case 1:
47980 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
47990 case 2:
48000 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
48010 case else:
48020 goto Kabara_Aishou_Top2:
48030 end select
48040 endif
48050 else
48060 'カーソル　下 or 十字キー　下
48070 if ((key$ = chr$(31)) or (y = 1)) then
48080 select case No
48090 '選択肢　1 - 2に変更
48100 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
48110 'ok
48120 case 0:
48130 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
48140 '選択肢　2 - 3に変更
48150 case 1:
48160 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
48170 'リリース時 case 2コメント解除
48180 case 2:
48190 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
48200 case else:
48210 goto Kabara_Aishou_Top2:
48220 end select
48230 endif
48240 '十字キー　上　、カーソル　上
48250 if ((key$ = chr$(30)) or (y = -1)) then
48260 select case No
48270 case 0:
48280 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
48290 case 1:
48300 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
48310 case 2:
48320 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
48330 case else:
48340 goto Kabara_Aishou_Top2:
48350 end select
48360 endif
48370 endif
48380 end
48390 '十字キー　上下:選択
48400 'ジョイパッド 右:決定
48410 if ((bg = 2) or (key$ = chr$(13))) then
48420 select case No
48430 '1.自分と異性の相性
48440 case 0:
48450 '未実装
48460 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
48470 '2男女の相性 男性の名前入力に飛ぶ
48480 case 1:
48490 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
48500 case 2:
48510 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
48520 end select
48530 endif
48540 '0.男女の相性　トップ画面　ここまで
48550 '1.男女の相性 ここから
48560 '1-1.男性の名前を入力
48570 Danjyo_Aisyou_Input_Name_male:
48580 No=0:color RGB(255,255,255)
48590 '入力:キーボード
48600 cls 3:init "kb:2"
48610 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
48620 gload Gazo$ + "downscreen.png",0,0,800
48630 for i=0 to 3
48640 buf_male_year(i)=0
48650 next i
48660 if ex_info$(1)<>"JP" then
48670 play "":color rgb(255,0,0):male_name$ = ""
48680 locate 0,1
48690 print "Male Compatibility" + chr$(13) + chr$(13)
48700 color rgb(255,255,255):
48710 locate 0,3
48720 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
48730 locate 0,15:color rgb(0,0,0)
48740 Input "Man's Name:",male_name$
48750 else
48760 '****************************************************************************************************
48770 'WUXG(1920x1200)の時ここから
48780 '****************************************************************************************************
48790 play "":color rgb(255,0,0):male_name$ = ""
48800 locate 0,1
48810 print "男性の相性" + chr$(13) + chr$(13)
48820 color rgb(255,255,255):
48830 locate 0,3
48840 print "男性の相性を求めます。男性の名前を" + chr$(13)
48850 print "入れてください" + chr$(13)
48860 locate 0,15:color rgb(0,0,0)
48870 Input "男性の名前:",male_name$
48880 '****************************************************************************************************
48890 'WUXG(1920x1200)の時ここまで
48900 '****************************************************************************************************
48910 endif
48920 '-------------------------------------------
48930 '1-2:男性の生まれた年代
48940 Danjyo_Aisyou_Input_Born_Year:
48950 No=0:color RGB(255,255,255)
48960 cls 3:init "kb:4"
48970 '****************************************************************************************************
48980 'WUXG(1920x1200)の時ここから
48990 '****************************************************************************************************
49000 gload Gazo$ + "Screen1.png",0,0,0
49010 gload Gazo$ + "downscreen.png",0,0,800
49020 '****************************************************************************************************
49030 'WUXG(1920x1200)の時ここから
49040 '****************************************************************************************************
49050 play "":color rgb(255,0,0)
49060 '-------------------------------------------
49070 font 48
49080 if ex_info$(1)<>"JP" then
49090 locate 0,1
49100 color rgb(255,255,255)
49110 print "Please enter the man's birth year" + chr$(13)
49120 color rgb(255,255,255)
49130 locate 1,3
49140 print "Man's Birth Year (4 digits):";buf_male_year$
49150 else
49160 '****************************************************************************************************
49170 'WUXG(1920x1200)の時ここから
49180 '****************************************************************************************************
49190 locate 0,1
49200 '文字色：黒　 color rgb(0,0,0)
49210 color rgb(255,255,255)
49220 print "男性の生まれた年代を入れて下さい" + chr$(13)
49230 color rgb(255,255,255)
49240 locate 1,3
49250 print "男性の生まれた年代(西暦4桁):";buf_male_year$
49260 '****************************************************************************************************
49270 'WUXG(1920x1200)の時ここから
49280 '****************************************************************************************************
49290 endif
49300 color rgb(255,255,255)
49310 'locate 4,6:print ":7"
49320 'locate 9,6:print ":8"
49330 'locate 12,6:print ":9"
49340 locate 4,6
49350 print ":7  :8  :9" + chr$(13)
49360 color rgb(255,255,255)
49370 locate 4,8
49380 print ":4  :5  :6" + chr$(13)
49390 color rgb(255,255,255)
49400 locate 4,10
49410 print ":1  :2  :3" + chr$(13)
49420 locate 4,12
49430 print "    :0"
49440 locate 12,12
49450 color rgb(0,0,255)
49460 print ":Ok"
49470 sp_on 4,0: sp_on 5,0:sp_on 6,0
49480 sp_on 7,0:sp_on 8,0:sp_on 9,0
49490 sp_on 10,0:sp_on 11,0:sp_on 12,0
49500 sp_on 13,0:sp_on 14,1
49510 '-------------------------------------------------------------------------------------
49520 Danjyo_Aisyou_Input_Male_Born_Year2:
49530 key$="":bg=0:y=0:y2=0:bg2=0:
49540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49550 key$ = inkey$
49560 bg = strig(1)
49570 y = stick(1)
49580 y2 = stick(0)
49590 bg2=strig(0)
49600 pause 200
49610 wend
49620 '十字キー　ここから
49630 '上の矢印　または、十字キー上
49640 if ((y = -1) or (key$ = chr$(30))) then
49650 select case No
49660 'No=-1:okのとき:初期の状態
49670 '0kボタンから３に移動
49680 '上に行く 処理
49690 case -1:
49700 No=3:sp_on 12,1:sp_on 14,0
49710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49720 '選択肢:3
49730 '3ボタンから 6に移動
49740 case 3:
49750 No=6:sp_on 12,0:sp_on 11,1
49760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49770 '6ボタンから ９に移動
49780 case 6:
49790 No=9:sp_on 10,1:sp_on 11,0
49800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49810 '6ボタンから ９に移動　ここまで
49820 '9で上を押して何もしない
49830 case 9:
49840 '何もしない
49850 No=9
49860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49870 '9で上を押しても何もしない　ここまで
49880 '上　 0ボタンから2ボタン
49890 'sp_on 6,1:1
49900 'sp_on 8,1:5
49910 'sp_on 7,1:7
49920 case 0:
49930 No=2:sp_on 13,0:sp_on 9,1:
49940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49950 '上  0ボタンから2ボタン　ここまで
49960 '2から５になる 上
49970 case 2:
49980 No=5:sp_on 8,1:sp_on 9,0:
49990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50000 case 5:
50010 No=8:sp_on 7,1:sp_on 8,0
50020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50030 case 8:
50040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50050 case 1:
50060 No=4:sp_on 5,1:sp_on 6,0
50070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50080 case 4:
50090 No=7:sp_on 4,1:sp_on 5,0
50100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50110 case 7:
50120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50130 end select
50140 endif
50150 '左３　ここまで
50160 '下の矢印
50170 '中央 2
50180 if ((y=1) or (key$ = chr$(31))) then
50190 select case No
50200 '9から６に下げる
50210 case 9:
50220 No=6:sp_on 11,1:sp_on 10,0
50230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50240 '6から３に下げる
50250 case 6:
50260 No=3:sp_on 12,1:sp_on 11,0
50270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50280 '3から０ｋに変える
50290 case 3:
50300 No=-1:sp_on 14,1:sp_on 12,0
50310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50320 'Okから下のボタンを押しても何もしない
50330 case -1:
50340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50350 case 8:
50360 No=5:sp_on 8,1:sp_on 7,0
50370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50380 case 5:
50390 No=2:sp_on 9,1:sp_on 8,0
50400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50410 case 2:
50420 No=0:sp_on 13,1:sp_on 9,0
50430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50440 case 0:
50450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50460 case 7:
50470 No=4:sp_on 5,1:sp_on 4,0
50480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50490 case 4:
50500 No=1:sp_on 6,1:sp_on 5,0
50510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50520 case 1:
50530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50540 end select
50550 endif
50560 '左へボタン 十字キー　左　or 　カーソル左
50570 if ((y2 = -1) or (key$ = chr$(29))) then
50580 select case No
50590 'Ok ボタン  Okから　左　０に行く
50600 case -1:
50610 No=0:sp_on 13,1:sp_on 14,0
50620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50630 '0 ボタン  左　何もしない
50640 case 0:
50650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50660 case 3:
50670 No=2:sp_on 9,1:sp_on 12,0:
50680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50690 case 2:
50700 No=1:sp_on 6,1:sp_on 9,0:
50710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50720 case 1:
50730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50740 case 6:
50750 No=5:sp_on 8,1:sp_on 11,0
50760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50770 case 5:
50780 No=4:sp_on 5,1:sp_on 8,0
50790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50800 case 4:
50810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50820 case 9:
50830 No=8:sp_on 7,1:sp_on 10,0
50840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50850 case 8:
50860 No=7:sp_on 4,1:sp_on 7,0
50870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50880 case 7:
50890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50900 end select
50910 endif
50920 '右  十字キー　右　or カーソル　右
50930 if ((y2 = 1) or (key$ = chr$(28))) then
50940 select case No
50950 '0ボタンからokボタン右に移動
50960 case 0:
50970 No=-1:sp_on 14,1:sp_on 13,0
50980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50990 '0ボタンからokボタン 右に移動　ここまで
51000 'OKボタンで右を押して何もしない
51010 case -1:
51020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51030 case 1:
51040 No=2:sp_on 9,1:sp_on 6,0
51050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51060 case 2:
51070 No=3:sp_on 12,1:sp_on 9,0
51080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51090 case 3:
51100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51110 case 4:
51120 No=5:sp_on 8,1:sp_on 5,0
51130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51140 case 5:
51150 No=6:sp_on 11,1:sp_on 8,0
51160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51170 case 7:
51180 No=8:sp_on 7,1:sp_on 4,0
51190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51200 case 8:
51210 No=9:sp_on 10,1:sp_on 7,0
51220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51230 case 9:
51240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51250 case 6:
51260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51270 end select
51280 'Okから右ボタンを押して何もしない ここまで
51290 endif
51300 '十字キー　ここまで
51310 '==============================
51320 'ここから
51330 '==============================
51340 if ((bg = 2) or (key$ = chr$(13))) then
51350 select case count
51360 case 0:
51370 count = 1
51380 if (No = -1) then
51390 count = 0:No=0
51400 buf_male_year(0) = No
51410 'Okボタンを押したとき
51420 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51430 else
51440 'Okボタン以外が押されたとき
51450 if (No >= 1 and No <= 2) then
51460 buf_year$="":buf_year$ = str$(No) + "***"
51470 buf_year = No:a= No
51480 buf_Jyoushi_Born_Day(0) = No
51490 if ex_info$(1)<>"JP" then
51500 locate 1,3
51510 color rgb(255,255,255)
51520 print "Year of birth of the male (4 digits AD):";buf_year$
51530 else
51540 count=0
51550 ui_msg"The number is out of range."
51560 endif
51570 else
51580 '****************************************************************************************************
51590 'WUXG(1920x1200)の時ここから
51600 '****************************************************************************************************
51610 locate 1,3
51620 color rgb(255,255,255)
51630 print "男性の生まれた年代(西暦4桁):";buf_year$
51640 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51650 '****************************************************************************************************
51660 'WUXG(1920x1200)の時ここまで
51670 '****************************************************************************************************
51680 else
51690 count=0
51700 ui_msg"数字が範囲外になります。"
51710 endif
51720 buf_year$="":buf_year=0
51730 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51740 endif
51750 'endif
51760 case 1:
51770 count = 2
51780 if (No = -1) then
51790 count = 1
51800 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51810 else
51820 '****************************************************************************************************
51830 'WUXG(1920x1200)の時ここから
51840 '****************************************************************************************************
51850 buf_year = a * 10 + No
51860 b=buf_year
51870 buf_year$ = str$(buf_year) + "**"
51880 buf_male_year(0)=buf_year
51890 locate 1,3
51900 color rgb(255,255,255)
51910 print "                                                                "
51920 locate 1,3
51930 print "男性の生まれた年代(西暦4桁):" + buf_year$
51940 'if (No = -1) then
51950 'count=1
51960 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51970 '****************************************************************************************************
51980 'WUXG(1920x1200)の時ここまで
51990 '****************************************************************************************************
52000 endif
52010 case 2:
52020 count=3
52030 if (No=-1) then
52040 count =2
52050 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52060 else
52070 buf_year = b * 10 + No
52080 c=buf_year
52090 buf_year$ = str$(buf_year) + "*"
52100 buf_male_year(0) = buf_year
52110 locate 1,3
52120 color rgb(255,255,255)
52130 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
52140 if ex_info$(1)<>"JP" then
52150 locate 1,3
52160 print "Year of birth of the male (4 digits AD):";buf_year$
52170 else
52180 '****************************************************************************************************
52190 'WUXG(1920x1200)の時ここから
52200 '****************************************************************************************************
52210 locate 1,3
52220 print "男性の生まれた年代(西暦4桁):";buf_year$
52230 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52240 '****************************************************************************************************
52250 'WUXG(1920x1200)の時ここまで
52260 '****************************************************************************************************
52270 endif
52280 endif
52290 case 3:
52300 count=4
52310 if (No = -1) then
52320 No=0
52330 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52340 else
52350 buf_year = c * 10 + No
52360 buf_year$ = str$(buf_year)
52370 buf_male_year(0) = buf_year
52380 if ex_info$(1)<>"JP" then
52390 locate 1,3
52400 color RGB(255,255,255)
52410 print "                                      "
52420 locate 1,3
52430 print "Year of birth of the male (4 digits AD):";buf_year$
52440 else
52450 locate 1,3
52460 color RGB(255,255,255)
52470 print "                                      "
52480 locate 1,3
52490 print "男性の生まれた年代(西暦4桁):";buf_year$
52500 endif
52510 buf_year=val(buf_year$)
52520 'year=val(buf_year$)
52530 'if (No=-1) then
52540 'goto Input_Born_Month:
52550 'else
52560 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52570 endif
52580 case 4:
52590 'bufyear=buf_year
52600 if (No=-1) then
52610 buf_year = val(buf_year$)
52620 buf_male_year(0)=buf_year
52630 sp_on 14,0:No=0
52640 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52650 else
52660 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52670 endif
52680 end select
52690 endif
52700 '===========================
52710 'ここまでを部下のところにコピーする.
52720 '===========================
52730 if (bg2 = 2) then
52740 select case count2
52750 case 0:
52760 if (No = -1) then
52770 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
52780 count=0
52790 if ex_info$(1)<>"JP" then
52800 locate 1,3
52810 color rgb(255,255,255)
52820 print "                                      "
52830 locate 1,3
52840 print "Year of birth of the male (4 digits AD):" + buf_male_year$
52850 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52860 else
52870 '(buf_year=0) then
52880 buf_male_year=0:buf_male_year$="****"
52890 locate 1,3
52900 print "                                       "
52910 locate 1,3
52920 print "Year of birth of the male (4 digits AD):"+buf_male_year$
52930 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52940 else
52950 locate 1,3
52960 color rgb(255,255,255)
52970 print "                                      "
52980 locate 1,3
52990 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
53000 goto Danjyo_Aisyou_Input_Male_Born_Year2:
53010 else
53020 '(buf_year=0) then
53030 buf_male_year=0:buf_male_year$="****"
53040 locate 1,3
53050 print "                                       "
53060 locate 1,3
53070 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
53080 goto Danjyo_Aisyou_Input_Male_Born_Year2:
53090 endif
53100 endif
53110 end select
53120 endif
53130 '-------生まれた年代　男性-------------
53140 '-------生まれた月　男性-------------
53150 '1-2:男性の生まれた月
53160 Danjyo_Aisyou_Input_Male_Born_Month:
53170 cls 3:play "":count=0:count2=0
53180 'No=-1:Okのとき
53190 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
53200 for i=0 to 1
53210 buf_male_month(i)=0
53220 next i
53230 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53240 '****************************************************************************************************
53250 'WUXG(1920x1200)の時ここから
53260 '****************************************************************************************************
53270 gload Gazo$ + "Screen1.png",0,0,0
53280 gload Gazo$ + "downscreen.png",0,0,800
53290 '****************************************************************************************************
53300 'WUXG(1920x1200)の時ここまで
53310 '****************************************************************************************************
53320 'Init"kb:4"
53330 '音声ファイル再生 2023.06.07
53340 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53350 '****************************************************************************************************
53360 'WUXG(1920x1200)の時ここから
53370 '****************************************************************************************************
53380 font 48
53390 '****************************************************************************************************
53400 'WUXG(1920x1200)の時ここまで
53410 '****************************************************************************************************
53420 locate 0,1
53430 '文字色：黒　 color rgb(0,0,0)
53440 '文字色:白
53450 color rgb(255,255,255)
53460 print "男性の生まれた月を入れて下さい" + chr$(13)
53470 '文字色:白
53480 color rgb(255,255,255)
53490 locate 1,3
53500 '文字色:白
53510 print "男性の生まれた月(1月~12月):"+buf_male_Month$
53520 color rgb(255,255,255)
53530 'locate 4,6:print ":7"
53540 'locate 9,6:print ":8"
53550 'locate 12,6:print ":9"
53560 locate 4,6
53570 '文字色:赤
53580 print ":7  :8  :9" + chr$(13)
53590 color rgb(255,255,255)
53600 locate 4,8
53610 print ":4  :5  :6" + chr$(13)
53620 color rgb(255,255,255)
53630 locate 4,10
53640 print ":1  :2  :3" + chr$(13)
53650 locate 4,12
53660 print "    :0"
53670 locate 12,12
53680 color rgb(0,0,255)
53690 print ":Ok"
53700 sp_on 4,0: sp_on 5,0:sp_on 6,0
53710 sp_on 7,0:sp_on 8,0:sp_on 9,0
53720 sp_on 10,0:sp_on 11,0:sp_on 12,0
53730 sp_on 13,0:sp_on 14,1
53740 '----------------------------------------------------------------------------------------
53750 Danjyo_Aisyou_Input_Male_Born_Month2:
53760 key$="":bg=0:y=0:y2=0:bg2=0
53770 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53780 key$ = inkey$
53790 bg = strig(1)
53800 y = stick(1)
53810 y2 = stick(0)
53820 bg2 = strig(0)
53830 pause 200
53840 wend
53850 '十字キー　ここから
53860 '上の矢印　または、十字キー上
53870 if ((y = -1) or (key$ = chr$(30))) then
53880 select case No
53890 'No=-1:okのとき:初期の状態
53900 '0kボタンから３に移動
53910 '上に行く 処理
53920 case -1:
53930 No=3:sp_on 12,1:sp_on 14,0
53940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
53950 '選択肢:3
53960 '3ボタンから 6に移動
53970 case 3:
53980 No=6:sp_on 12,0:sp_on 11,1
53990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54000 '6ボタンから ９に移動
54010 case 6:
54020 No=9:sp_on 10,1:sp_on 11,0
54030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54040 '6ボタンから ９に移動　ここまで
54050 '9で上を押して何もしない
54060 case 9:
54070 '何もしない
54080 No=9
54090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54100 '9で上を押しても何もしない　ここまで
54110 '上　 0ボタンから2ボタン
54120 'sp_on 6,1:1
54130 'sp_on 8,1:5
54140 'sp_on 7,1:7
54150 case 0:
54160 No=2:sp_on 13,0:sp_on 9,1:
54170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54180 '上  0ボタンから2ボタン　ここまで
54190 '2から５になる 上
54200 case 2:
54210 No=5:sp_on 8,1:sp_on 9,0:
54220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54230 case 5:
54240 No=8:sp_on 7,1:sp_on 8,0
54250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54260 case 8:
54270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54280 case 1:
54290 No=4:sp_on 5,1:sp_on 6,0
54300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54310 case 4:
54320 No=7:sp_on 4,1:sp_on 5,0
54330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54340 case 7:
54350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54360 end select
54370 endif
54380 '左３　ここまで
54390 '下の矢印
54400 '中央 2
54410 if ((y=1) or (key$ = chr$(31))) then
54420 select case No
54430 '9から６に下げる
54440 case 9:
54450 No=6:sp_on 11,1:sp_on 10,0
54460 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
54470 '6から３に下げる
54480 case 6:
54490 No=3:sp_on 12,1:sp_on 11,0
54500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54510 '3から０ｋに変える
54520 case 3:
54530 No=-1:sp_on 14,1:sp_on 12,0
54540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54550 'Okから下のボタンを押しても何もしない
54560 case -1:
54570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54580 case 8:
54590 No=5:sp_on 8,1:sp_on 7,0
54600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54610 case 5:
54620 No=2:sp_on 9,1:sp_on 8,0
54630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54640 case 2:
54650 No=0:sp_on 13,1:sp_on 9,0
54660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54670 case 0:
54680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54690 case 7:
54700 No=4:sp_on 5,1:sp_on 4,0
54710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54720 case 4:
54730 No=1:sp_on 6,1:sp_on 5,0
54740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54750 case 1:
54760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54770 end select
54780 endif
54790 '左へボタン 十字キー　左　or 　カーソル左
54800 if ((y2 = -1) or (key$ = chr$(29))) then
54810 select case No
54820 'Ok ボタン  Okから　左　０に行く
54830 case -1:
54840 No=0:sp_on 13,1:sp_on 14,0
54850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54860 '0 ボタン  左　何もしない
54870 case 0:
54880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54890 case 3:
54900 No=2:sp_on 9,1:sp_on 12,0:
54910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54920 case 2:
54930 No=1:sp_on 6,1:sp_on 9,0:
54940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54950 case 1:
54960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54970 case 6:
54980 No=5:sp_on 8,1:sp_on 11,0
54990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55000 case 5:
55010 No=4:sp_on 5,1:sp_on 8,0
55020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55030 case 4:
55040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55050 case 9:
55060 No=8:sp_on 7,1:sp_on 10,0
55070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55080 case 8:
55090 No=7:sp_on 4,1:sp_on 7,0
55100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55110 case 7:
55120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55130 end select
55140 endif
55150 '右  十字キー　右　or カーソル　右
55160 if ((y2 = 1) or (key$ = chr$(28))) then
55170 select case No
55180 '0ボタンからokボタン右に移動
55190 case 0:
55200 No=-1:sp_on 14,1:sp_on 13,0
55210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55220 '0ボタンからokボタン 右に移動　ここまで
55230 'OKボタンで右を押して何もしない
55240 case -1:
55250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55260 case 1:
55270 No=2:sp_on 9,1:sp_on 6,0
55280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55290 case 2:
55300 No=3:sp_on 12,1:sp_on 9,0
55310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55320 case 3:
55330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55340 case 4:
55350 No=5:sp_on 8,1:sp_on 5,0
55360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55370 case 5:
55380 No=6:sp_on 11,1:sp_on 8,0
55390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55400 case 7:
55410 No=8:sp_on 7,1:sp_on 4,0
55420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55430 case 8:
55440 No=9:sp_on 10,1:sp_on 7,0
55450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55460 case 9:
55470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55480 case 6:
55490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55500 end select
55510 'Okから右ボタンを押して何もしない ここまで
55520 endif
55530 '十字キー　ここまで
55540 '右の丸ボタン + Enter key 決定キー
55550 if ((bg=2) or (key$=chr$(13))) then
55560 select case count
55570 case 0:
55580 if (No=-1) then No=0
55590 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
55600 if (buf_male_month > 1 and buf_male_month < 10)  then
55610 buf_male_Month$ = str$(buf_male_month)
55620 'buf_month=No
55630 endif
55640 if (buf_male_month = 1)  then
55650 buf_male_Month$ = str$(buf_male_month) + "*"
55660 'c=buf_month
55670 endif
55680 locate 1,3
55690 print "                                     "
55700 color RGB(255,255,255)
55710 locate 1,3
55720 print "男性の生まれた月(1月~12月):" + buf_male_Month$
55730 goto Danjyo_Aisyou_Input_Male_Born_Month2:
55740 case 1:
55750 count = 2:
55760 'c = val(buf_Month$)
55770 if (No = -1) then
55780 'count=0
55790 No=0
55800 month=buf_male_month
55810 buf_male_month=val(buf_male_Month$)
55820 month=buf_male_month
55830 buf_Jyoushi_Born_Day(1)=month
55840 '生まれた日に飛ぶ
55850 goto Danjyo_Aisyou_Input_Male_Born_Day:
55860 else
55870 buf_male_month = c*10 + No
55880 'if (buf_month = 1) then
55890 'buf_Month$ = str$(buf_month)
55900 'endif
55910 buf_male_Month$ = str$(buf_male_month)
55920 buf_Jyoushi_Born_Day(1) = buf_male_month
55930 locate 0,3
55940 print "                                           "
55950 locate 1,3
55960 color Rgb(255,255,255)
55970 print "男性の生まれた月(1月~12月):" + buf_male_Month$
55980 goto Danjyo_Aisyou_Input_Male_Born_Month2:
55990 endif
56000 case 2:
56010 '==================================
56020 '何もしない
56030 'coun = 2
56040 '==================================
56050 'c= val(buf_Month$)
56060 'buf_month = c*10 + No
56070 'buf_Month$ = str$(buf_month)
56080 'locate 2,3
56090 'print "上司の生まれた月(1月～12月):";buf_Month$
56100 'goto Jyoushi_Input_Born_Month2:
56110 'case 3:
56120 'count=4
56130 'b=val(buf_month$)
56140 'buf_month=c*10+No
56150 'buf_Month$=str$(buf_month)
56160 'locate 2,3
56170 'print "上司の生まれた月(1月～12月):";buf_Month$
56180 'buf_month=val(buf_Month$)
56190 'year=val(buf_year$)
56200 if (No=-1) then
56210 No=0
56220 goto Danjyo_Aisyou_Input_Male_Born_Day:
56230 else
56240 goto Danjyo_Aisyou_Input_Male_Born_Day2:
56250 endif
56260 'case 4:
56270 'bufyear=buf_year
56280 'if (No=-1) then
56290 'buf_month = val(buf_Month$)
56300 'month = buf_month
56310 'sp_on 14,0
56320 'goto Input_Born_Day:
56330 'else
56340 'goto Input_Born_Month2:
56350 'endif
56360 end select
56370 endif
56380 '左の丸ボタン　キャンセル
56390 if (bg2=2) then
56400 select case count2
56410 case 0:
56420 if (No = -1) then
56430 buf_male_month=0:buf_male_Month$="**"
56440 count=0
56450 'goto rewrite2:
56460 else
56470 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
56480 buf_male_month = 0:buf_male_Month$ = "**"
56490 locate 0,3
56500 color rgb(255,255,255)
56510 print "                                       "
56520 goto rewrite2:
56530 if (No>12) then
56540 ui_msg"値が範囲外です。"
56550 goto rewrite2:
56560 endif
56570 endif
56580 endif
56590 rewrite2:
56600 locate 2,3
56610 color rgb(255,255,255)
56620 print "                                      "
56630 locate 2,3
56640 print "男性の生まれた月(1月~12月):"+buf_male_Month$
56650 goto Danjyo_Aisyou_Input_Male_Born_Month2:
56660 end select
56670 'endif
56680 endif
56690 end
56700 '-------生まれた月　男性 ここまで-------------
56710 '-------生まれた日　男性 ここから-------------
56720 Danjyo_Aisyou_Input_Male_Born_Day:
56730 cls 3:play "":count=0:count2=0
56740 'No=-1:Okのとき
56750 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
56760 for i=0 to 1
56770 buf_day(i)=0
56780 next i
56790 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56800 '****************************************************************************************************
56810 'WUXG(1920x1200)の時ここから
56820 '****************************************************************************************************
56830 gload Gazo$ + "Screen1.png",0,0,0
56840 gload Gazo$ + "downscreen.png",0,0,800
56850 '****************************************************************************************************
56860 'WUXG(1920x1200)の時ここまで
56870 '****************************************************************************************************
56880 'Init"kb:4"
56890 '音声ファイル再生 2023.06.07
56900 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
56910 font 48
56920 locate 0,1
56930 '文字色：黒　 color rgb(0,0,0)
56940 '文字色:白
56950 color rgb(255,255,255)
56960 print "男性の生まれた日を入れて下さい" + chr$(13)
56970 '文字色:白
56980 color rgb(255,255,255)
56990 locate 1,3
57000 '文字色:白
57010 print "男性の生まれた日(1月~31月):" + buf_Day$
57020 color rgb(255,255,255)
57030 'locate 4,6:print ":7"
57040 'locate 9,6:print ":8"
57050 'locate 12,6:print ":9"
57060 locate 4,6
57070 '文字色:赤
57080 print ":7  :8  :9" + chr$(13)
57090 color rgb(255,255,255)
57100 locate 4,8
57110 print ":4  :5  :6" + chr$(13)
57120 color rgb(255,255,255)
57130 locate 4,10
57140 print ":1  :2  :3" + chr$(13)
57150 locate 4,12
57160 print "    :0"
57170 locate 12,12
57180 color rgb(0,0,255)
57190 print ":Ok"
57200 sp_on 4,0: sp_on 5,0:sp_on 6,0
57210 sp_on 7,0:sp_on 8,0:sp_on 9,0
57220 sp_on 10,0:sp_on 11,0:sp_on 12,0
57230 sp_on 13,0:sp_on 14,1
57240 '-------------------------------------------------
57250 Danjyo_Aisyou_Input_Male_Born_Day2:
57260 key$="":bg=0:y=0:y2=0:bg2=0
57270 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
57280 key$ = inkey$
57290 bg = strig(1)
57300 y = stick(1)
57310 y2 = stick(0)
57320 bg2 = strig(0)
57330 pause 200
57340 wend
57350 '十字キー　ここから
57360 '上の矢印　または、十字キー上
57370 if ((y = -1) or (key$ = chr$(30))) then
57380 select case No
57390 'No=-1:okのとき:初期の状態
57400 '0kボタンから３に移動
57410 '上に行く 処理
57420 case -1:
57430 No=3:sp_on 12,1:sp_on 14,0
57440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57450 '選択肢:3
57460 '3ボタンから 6に移動
57470 case 3:
57480 No=6:sp_on 12,0:sp_on 11,1
57490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57500 '6ボタンから ９に移動
57510 case 6:
57520 No=9:sp_on 10,1:sp_on 11,0
57530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57540 '6ボタンから ９に移動　ここまで
57550 '9で上を押して何もしない
57560 case 9:
57570 '何もしない
57580 No=9
57590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57600 '9で上を押しても何もしない　ここまで
57610 '上　 0ボタンから2ボタン
57620 'sp_on 6,1:1
57630 'sp_on 8,1:5
57640 'sp_on 7,1:7
57650 case 0:
57660 No=2:sp_on 13,0:sp_on 9,1:
57670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57680 '上  0ボタンから2ボタン　ここまで
57690 '2から５になる 上
57700 case 2:
57710 No=5:sp_on 8,1:sp_on 9,0:
57720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57730 case 5:
57740 No=8:sp_on 7,1:sp_on 8,0
57750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57760 case 8:
57770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57780 case 1:
57790 No=4:sp_on 5,1:sp_on 6,0
57800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57810 case 4:
57820 No=7:sp_on 4,1:sp_on 5,0
57830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57840 case 7:
57850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57860 end select
57870 endif
57880 '左３　ここまで
57890 '下の矢印
57900 '中央 2
57910 if ((y=1) or (key$ = chr$(31))) then
57920 select case No
57930 '9から６に下げる
57940 case 9:
57950 No=6:sp_on 11,1:sp_on 10,0
57960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57970 '6から３に下げる
57980 case 6:
57990 No=3:sp_on 12,1:sp_on 11,0
58000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58010 '3から０ｋに変える
58020 case 3:
58030 No=-1:sp_on 14,1:sp_on 12,0
58040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58050 'Okから下のボタンを押しても何もしない
58060 case -1:
58070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58080 case 8:
58090 No=5:sp_on 8,1:sp_on 7,0
58100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58110 case 5:
58120 No=2:sp_on 9,1:sp_on 8,0
58130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58140 case 2:
58150 No=0:sp_on 13,1:sp_on 9,0
58160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58170 case 0:
58180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58190 case 7:
58200 No=4:sp_on 5,1:sp_on 4,0
58210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58220 case 4:
58230 No=1:sp_on 6,1:sp_on 5,0
58240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58250 case 1:
58260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58270 end select
58280 endif
58290 '左へボタン 十字キー　左　or 　カーソル左
58300 if ((y2 = -1) or (key$ = chr$(29))) then
58310 select case No
58320 'Ok ボタン  Okから　左　０に行く
58330 case -1:
58340 No=0:sp_on 13,1:sp_on 14,0
58350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58360 '0 ボタン  左　何もしない
58370 case 0:
58380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58390 case 3:
58400 No=2:sp_on 9,1:sp_on 12,0:
58410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58420 case 2:
58430 No=1:sp_on 6,1:sp_on 9,0:
58440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58450 case 1:
58460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58470 case 6:
58480 No=5:sp_on 8,1:sp_on 11,0
58490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58500 case 5:
58510 No=4:sp_on 5,1:sp_on 8,0
58520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58530 case 4:
58540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58550 case 9:
58560 No=8:sp_on 7,1:sp_on 10,0
58570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58580 case 8:
58590 No=7:sp_on 4,1:sp_on 7,0
58600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58610 case 7:
58620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58630 end select
58640 endif
58650 '右  十字キー　右　or カーソル　右
58660 if ((y2 = 1) or (key$ = chr$(28))) then
58670 select case No
58680 '0ボタンからokボタン右に移動
58690 case 0:
58700 No=-1:sp_on 14,1:sp_on 13,0
58710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58720 '0ボタンからokボタン 右に移動　ここまで
58730 'OKボタンで右を押して何もしない
58740 case -1:
58750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58760 case 1:
58770 No=2:sp_on 9,1:sp_on 6,0
58780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58790 case 2:
58800 No=3:sp_on 12,1:sp_on 9,0
58810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58820 case 3:
58830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58840 case 4:
58850 No=5:sp_on 8,1:sp_on 5,0
58860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58870 case 5:
58880 No=6:sp_on 11,1:sp_on 8,0
58890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58900 case 7:
58910 No=8:sp_on 7,1:sp_on 4,0
58920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58930 case 8:
58940 No=9:sp_on 10,1:sp_on 7,0
58950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58960 case 9:
58970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58980 case 6:
58990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
59000 end select
59010 'Okから右ボタンを押して何もしない ここまで
59020 endif
59030 '十字キー　ここまで
59040 '右の丸ボタン + Enter key 決定キー
59050 if ((bg=2) or (key$=chr$(13))) then
59060 select case count
59070 case 0:
59080 if (No=-1) then No=0
59090 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
59100 if (buf_male_day > 1 and buf_male_day < 10)  then
59110 buf_male_Day$ = str$(buf_male_day)
59120 'buf_month=No
59130 endif
59140 if (buf_male_day = 1)  then
59150 buf_male_Day$ = str$(buf_male_day) + "*"
59160 'c=buf_month
59170 endif
59180 locate 1,3
59190 print "                                     "
59200 color RGB(255,255,255)
59210 locate 1,3
59220 print "男性の生まれた日(1月~31月):" + buf_male_Day$
59230 goto Danjyo_Aisyou_Input_Male_Born_Day2:
59240 case 1:
59250 count = 2:
59260 'c = val(buf_Month$)
59270 if (No = -1) then
59280 'count=0
59290 No=0
59300 day=buf_male_Day
59310 buf_male_Day=val(buf_male_Day$)
59320 day=buf_male_Day
59330 buf_Jyoushi_Born_Day(2)=day
59340 '生まれた日に飛ぶ
59350 goto Danjyo_Aisyou_Input_Male_Born_Day:
59360 else
59370 buf_male_Day = c*10 + No
59380 'if (buf_month = 1) then
59390 'buf_Month$ = str$(buf_month)
59400 'endif
59410 buf_male_Day$ = str$(buf_male_Day)
59420 buf_male_Born_Day(2) = buf_male_Day:
59430 locate 0,3
59440 print "                                           "
59450 locate 1,3
59460 color Rgb(255,255,255)
59470 print "男性の生まれた月(1月~12月):" + buf_male_Day$
59480 goto Danjyo_Aisyou_Input_Male_Born_Day2:
59490 endif
59500 case 2:
59510 '==================================
59520 '何もしない
59530 'coun = 2
59540 '==================================
59550 'c= val(buf_Month$)
59560 'buf_month = c*10 + No
59570 'buf_Month$ = str$(buf_month)
59580 'locate 2,3
59590 'print "上司の生まれた月(1月～12月):";buf_Month$
59600 'goto Jyoushi_Input_Born_Month2:
59610 'case 3:
59620 'count=4
59630 'b=val(buf_month$)
59640 'buf_month=c*10+No
59650 'buf_Month$=str$(buf_month)
59660 'locate 2,3
59670 'print "上司の生まれた月(1月～12月):";buf_Month$
59680 'buf_month=val(buf_Month$)
59690 'year=val(buf_year$)
59700 if (No=-1) then
59710 No=0
59720 goto Danjyo_Aisyou_Input_Male_Born_Day:
59730 else
59740 goto Danjyo_Aisyou_Input_Male_Born_Day2:
59750 endif
59760 'case 4:
59770 'bufyear=buf_year
59780 'if (No=-1) then
59790 'buf_month = val(buf_Month$)
59800 'month = buf_month
59810 'sp_on 14,0
59820 'goto Input_Born_Day:
59830 'else
59840 'goto Input_Born_Month2:
59850 'endif
59860 end select
59870 endif
59880 '左の丸ボタン　キャンセル
59890 if (bg2=2) then
59900 select case count2
59910 case 0:
59920 if (No = -1) then
59930 buf_male_day=0:buf_male_Day$="**"
59940 count=0
59950 'goto rewrite2:
59960 else
59970 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
59980 buf_male_day = 0:buf_male_Day$ = "**"
59990 locate 0,3
60000 color rgb(255,255,255)
60010 print "                                       "
60020 goto rewrite2:
60030 if (No>12) then
60040 ui_msg"値が範囲外です。"
60050 goto rewrite2:
60060 endif
60070 endif
60080 endif
60090 rewrite2:
60100 locate 2,3
60110 color rgb(255,255,255)
60120 print "                                      "
60130 locate 2,3
60140 print "男性の生まれた日(1月~31月):"+buf_male_Day$
60150 goto Danjyo_Aisyou_Input_Male_Born_Day2:
60160 end select
60170 'endif
60180 endif
60190 end
60200 '-------生まれた日　女性　ここまで-------------
60210 '1-1.女性の名前を入力
60220 Danjyo_Aisyou_Input_Name_female:
60230 No=0:color RGB(255,255,255)
60240 '入力:キーボード
60250 cls 3:init "kb:2"
60260 '****************************************************************************************************
60270 'WUXG(1920x1200)の時ここから
60280 '****************************************************************************************************
60290 gload Gazo$ + "Screen1.png",0,0,0
60300 gload Gazo$ + "downscreen.png",0,0,800
60310 '****************************************************************************************************
60320 'WUXG(1920x1200)の時ここまで
60330 '****************************************************************************************************
60340 play "":color rgb(255,0,0):female_name$ = ""
60350 locate 0,1
60360 print "女性の相性" + chr$(13) + chr$(13)
60370 color rgb(255,255,255):
60380 locate 0,3
60390 print "女性の相性を求めます。男性の名前を" + chr$(13)
60400 print "入れてください" + chr$(13)
60410 locate 0,15:color rgb(0,0,0)
60420 Input "女性の名前:",female_name$
60430 '-------------------------------------------
60440 '-------生まれた年代　女性 ここから-------------
60450 Danjyo_Aisyou_Input_feMale_Born_Year:
60460 cls 3:play "":count=0:count2=0
60470 'No=-1:Okのとき
60480 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
60490 for i=0 to 1
60500 buf_day(i)=0
60510 next i
60520 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
60530 gload Gazo$ + "Screen1.png",0,0,0
60540 gload Gazo$ + "downscreen.png",0,0,800
60550 'Init"kb:4"
60560 '音声ファイル再生 2023.06.07
60570 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
60580 '****************************************************************************************************
60590 'WUXG(1920x1200)の時ここから
60600 '****************************************************************************************************
60610 font 48
60620 '****************************************************************************************************
60630 'WUXG(1920x1200)の時ここまで
60640 '****************************************************************************************************
60650 locate 0,1
60660 '文字色：黒　 color rgb(0,0,0)
60670 '文字色:白
60680 color rgb(255,255,255)
60690 print "女性の生まれた年代を入れて下さい" + chr$(13)
60700 '文字色:白
60710 color rgb(255,255,255)
60720 locate 1,3
60730 '文字色:白
60740 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
60750 color rgb(255,255,255)
60760 'locate 4,6:print ":7"
60770 'locate 9,6:print ":8"
60780 'locate 12,6:print ":9"
60790 locate 4,6
60800 '文字色:赤
60810 print ":7  :8  :9" + chr$(13)
60820 color rgb(255,255,255)
60830 locate 4,8
60840 print ":4  :5  :6" + chr$(13)
60850 color rgb(255,255,255)
60860 locate 4,10
60870 print ":1  :2  :3" + chr$(13)
60880 locate 4,12
60890 print "    :0"
60900 locate 12,12
60910 color rgb(0,0,255)
60920 print ":Ok"
60930 sp_on 4,0: sp_on 5,0:sp_on 6,0
60940 sp_on 7,0:sp_on 8,0:sp_on 9,0
60950 sp_on 10,0:sp_on 11,0:sp_on 12,0
60960 sp_on 13,0:sp_on 14,1
60970 '---------------------------------------------
60980 Danjyo_Aisyou_Input_feMale_Born_Year2:
60990 key$="":bg=0:y=0:y2=0:bg2=0:
61000 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
61010 key$ = inkey$
61020 bg = strig(1)
61030 y = stick(1)
61040 y2 = stick(0)
61050 bg2=strig(0)
61060 pause 200
61070 wend
61080 '十字キー　ここから
61090 '上の矢印　または、十字キー上
61100 if ((y = -1) or (key$ = chr$(30))) then
61110 select case No
61120 'No=-1:okのとき:初期の状態
61130 '0kボタンから３に移動
61140 '上に行く 処理
61150 case -1:
61160 No=3:sp_on 12,1:sp_on 14,0
61170 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
61180 '選択肢:3
61190 '3ボタンから 6に移動
61200 case 3:
61210 No=6:sp_on 12,0:sp_on 11,1
61220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61230 '6ボタンから ９に移動
61240 case 6:
61250 No=9:sp_on 10,1:sp_on 11,0
61260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61270 '6ボタンから ９に移動　ここまで
61280 '9で上を押して何もしない
61290 case 9:
61300 '何もしない
61310 No=9
61320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61330 '9で上を押しても何もしない　ここまで
61340 '上　 0ボタンから2ボタン
61350 'sp_on 6,1:1
61360 'sp_on 8,1:5
61370 'sp_on 7,1:7
61380 case 0:
61390 No=2:sp_on 13,0:sp_on 9,1:
61400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61410 '上  0ボタンから2ボタン　ここまで
61420 '2から５になる 上
61430 case 2:
61440 No=5:sp_on 8,1:sp_on 9,0:
61450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61460 case 5:
61470 No=8:sp_on 7,1:sp_on 8,0
61480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61490 case 8:
61500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61510 case 1:
61520 No=4:sp_on 5,1:sp_on 6,0
61530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61540 case 4:
61550 No=7:sp_on 4,1:sp_on 5,0
61560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61570 case 7:
61580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61590 end select
61600 endif
61610 '左３　ここまで
61620 '下の矢印
61630 '中央 2
61640 if ((y=1) or (key$ = chr$(31))) then
61650 select case No
61660 '9から６に下げる
61670 case 9:
61680 No=6:sp_on 11,1:sp_on 10,0
61690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61700 '6から３に下げる
61710 case 6:
61720 No=3:sp_on 12,1:sp_on 11,0
61730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61740 '3から０ｋに変える
61750 case 3:
61760 No=-1:sp_on 14,1:sp_on 12,0
61770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61780 'Okから下のボタンを押しても何もしない
61790 case -1:
61800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61810 case 8:
61820 No=5:sp_on 8,1:sp_on 7,0
61830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61840 case 5:
61850 No=2:sp_on 9,1:sp_on 8,0
61860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61870 case 2:
61880 No=0:sp_on 13,1:sp_on 9,0
61890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61900 case 0:
61910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61920 case 7:
61930 No=4:sp_on 5,1:sp_on 4,0
61940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61950 case 4:
61960 No=1:sp_on 6,1:sp_on 5,0
61970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61980 case 1:
61990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62000 end select
62010 endif
62020 '左へボタン 十字キー　左　or 　カーソル左
62030 if ((y2 = -1) or (key$ = chr$(29))) then
62040 select case No
62050 'Ok ボタン  Okから　左　０に行く
62060 case -1:
62070 No=0:sp_on 13,1:sp_on 14,0
62080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62090 '0 ボタン  左　何もしない
62100 case 0:
62110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62120 case 3:
62130 No=2:sp_on 9,1:sp_on 12,0:
62140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62150 case 2:
62160 No=1:sp_on 6,1:sp_on 9,0:
62170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62180 case 1:
62190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62200 case 6:
62210 No=5:sp_on 8,1:sp_on 11,0
62220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62230 case 5:
62240 No=4:sp_on 5,1:sp_on 8,0
62250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62260 case 4:
62270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62280 case 9:
62290 No=8:sp_on 7,1:sp_on 10,0
62300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62310 case 8:
62320 No=7:sp_on 4,1:sp_on 7,0
62330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62340 case 7:
62350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62360 end select
62370 endif
62380 '右  十字キー　右　or カーソル　右
62390 if ((y2 = 1) or (key$ = chr$(28))) then
62400 select case No
62410 '0ボタンからokボタン右に移動
62420 case 0:
62430 No=-1:sp_on 14,1:sp_on 13,0
62440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62450 '0ボタンからokボタン 右に移動　ここまで
62460 'OKボタンで右を押して何もしない
62470 case -1:
62480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62490 case 1:
62500 No=2:sp_on 9,1:sp_on 6,0
62510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62520 case 2:
62530 No=3:sp_on 12,1:sp_on 9,0
62540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62550 case 3:
62560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62570 case 4:
62580 No=5:sp_on 8,1:sp_on 5,0
62590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62600 case 5:
62610 No=6:sp_on 11,1:sp_on 8,0
62620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62630 case 7:
62640 No=8:sp_on 7,1:sp_on 4,0
62650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62660 case 8:
62670 No=9:sp_on 10,1:sp_on 7,0
62680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62690 case 9:
62700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62710 case 6:
62720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62730 end select
62740 'Okから右ボタンを押して何もしない ここまで
62750 endif
62760 '十字キー　ここまで
62770 '==============================
62780 'ここから
62790 '==============================
62800 if ((bg = 2) or (key$ = chr$(13))) then
62810 select case count
62820 case 0:
62830 count = 1
62840 if (No = -1) then
62850 count = 0:No=0
62860 buf_feMale_Born_Day(0) = No
62870 'Okボタンを押したとき
62880 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62890 else
62900 'Okボタン以外が押されたとき
62910 if (No >= 1 and No <= 2) then
62920 buf_female_year$="":buf_female_year$ = str$(No) + "***"
62930 buf_female_year = No:a= No
62940 buf_Jyoushi_Born_Day(0) = No
62950 locate 1,3
62960 color rgb(255,255,255)
62970 print "女性の生まれた年代(西暦4桁):";buf_female_year$
62980 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62990 else
63000 count=0
63010 ui_msg"数字が範囲外になります。"
63020 buf_female_year$="":buf_female_year=0
63030 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63040 endif
63050 endif
63060 case 1:
63070 count = 2
63080 if (No = -1) then
63090 count = 1
63100 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63110 else
63120 buf_female_year = a * 10 + No
63130 b=buf_female_year
63140 buf_year$ = str$(buf_female_year) + "**"
63150 buf_Jyoushi_Born_Day(0)=buf_female_year
63160 locate 1,3
63170 color rgb(255,255,255)
63180 print "                                                                "
63190 locate 1,3
63200 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
63210 'if (No = -1) then
63220 'count=1
63230 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63240 endif
63250 case 2:
63260 count=3
63270 if (No=-1) then
63280 count =2
63290 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63300 else
63310 buf_female_year = b * 10 + No
63320 c=buf_female_year
63330 buf_female_year$ = str$(buf_female_year) + "*"
63340 buf_Jyoushi_Born_Day(0) = buf_female_year
63350 locate 1,3
63360 color rgb(255,255,255)
63370 print "                                        "
63380 locate 1,3
63390 print "女性の生まれた年代(西暦4桁):";buf_female_year$
63400 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63410 endif
63420 case 3:
63430 count=4
63440 if (No = -1) then
63450 No=0
63460 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63470 else
63480 buf_female_year = c * 10 + No
63490 buf_female_year$ = str$(buf_female_year)
63500 buf_Jyoushi_Born_Day(0) = buf_female_year
63510 locate 1,3
63520 color RGB(255,255,255)
63530 print "                                      "
63540 locate 1,3
63550 print "女性の生まれた年代(西暦4桁):";buf_female_year$
63560 buf_female_year=val(buf_female_year$)
63570 'year=val(buf_year$)
63580 'if (No=-1) then
63590 'goto Input_Born_Month:
63600 'else
63610 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63620 endif
63630 case 4:
63640 'bufyear=buf_year
63650 if (No=-1) then
63660 buf_female_year = val(buf_female_year$)
63670 buf_Jyoushi_Born_Day(0)=buf_female_year
63680 sp_on 14,0:No=0
63690 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63700 else
63710 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63720 endif
63730 end select
63740 endif
63750 '===========================
63760 'ここまでを部下のところにコピーする.
63770 '===========================
63780 if (bg2 = 2) then
63790 select case count2
63800 case 0:
63810 if (No = -1) then
63820 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
63830 count=0
63840 locate 1,3
63850 color rgb(255,255,255)
63860 print "                                      "
63870 locate 1,3
63880 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
63890 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63900 else
63910 '(buf_year=0) then
63920 buf_female_year=0:buf_year$="****"
63930 locate 1,3
63940 print "                                       "
63950 locate 1,3
63960 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
63970 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63980 'endif
63990 endif
64000 end select
64010 endif
64020 '-------生まれた年代　女性 ここまで-------------
64030 '-------生まれた月　女性 ここまで--------------
64040 Danjyo_Aisyou_Input_feMale_Born_Month:
64050 cls 3:play "":count=0:count2=0
64060 'No=-1:Okのとき
64070 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
64080 for i=0 to 1
64090 buf_month(i)=0
64100 next i
64110 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
64120 '****************************************************************************************************
64130 'WUXG(1920x1200)の時ここから
64140 '****************************************************************************************************
64150 gload Gazo$ + "Screen1.png",0,0,0
64160 gload Gazo$ + "downscreen.png",0,0,800
64170 '****************************************************************************************************
64180 'WUXG(1920x1200)の時ここから
64190 '****************************************************************************************************
64200 'Init"kb:4"
64210 '音声ファイル再生 2023.06.07
64220 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
64230 font 48
64240 locate 0,1
64250 '文字色：黒　 color rgb(0,0,0)
64260 '文字色:白
64270 color rgb(255,255,255)
64280 print "女性の生まれた月を入れて下さい" + chr$(13)
64290 '文字色:白
64300 color rgb(255,255,255)
64310 locate 1,3
64320 '文字色:白
64330 print "女性の生まれた月(1月~12月):"+buf_female_Month$
64340 color rgb(255,255,255)
64350 'locate 4,6:print ":7"
64360 'locate 9,6:print ":8"
64370 'locate 12,6:print ":9"
64380 locate 4,6
64390 '文字色:赤
64400 print ":7  :8  :9" + chr$(13)
64410 color rgb(255,255,255)
64420 locate 4,8
64430 print ":4  :5  :6" + chr$(13)
64440 color rgb(255,255,255)
64450 locate 4,10
64460 print ":1  :2  :3" + chr$(13)
64470 locate 4,12
64480 print "    :0"
64490 locate 12,12
64500 color rgb(0,0,255)
64510 print ":Ok"
64520 sp_on 4,0: sp_on 5,0:sp_on 6,0
64530 sp_on 7,0:sp_on 8,0:sp_on 9,0
64540 sp_on 10,0:sp_on 11,0:sp_on 12,0
64550 sp_on 13,0:sp_on 14,1
64560 '---------------------------------------------
64570 Danjyo_Aisyou_Input_feMale_Born_Month2:
64580 key$="":bg=0:y=0:y2=0:bg2=0
64590 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
64600 key$ = inkey$
64610 bg = strig(1)
64620 y = stick(1)
64630 y2 = stick(0)
64640 bg2 = strig(0)
64650 pause 200
64660 wend
64670 '十字キー　ここから
64680 '上の矢印　または、十字キー上
64690 if ((y = -1) or (key$ = chr$(30))) then
64700 select case No
64710 'No=-1:okのとき:初期の状態
64720 '0kボタンから３に移動
64730 '上に行く 処理
64740 case -1:
64750 No=3:sp_on 12,1:sp_on 14,0
64760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64770 '選択肢:3
64780 '3ボタンから 6に移動
64790 case 3:
64800 No=6:sp_on 12,0:sp_on 11,1
64810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64820 '6ボタンから ９に移動
64830 case 6:
64840 No=9:sp_on 10,1:sp_on 11,0
64850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64860 '6ボタンから ９に移動　ここまで
64870 '9で上を押して何もしない
64880 case 9:
64890 '何もしない
64900 No=9
64910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64920 '9で上を押しても何もしない　ここまで
64930 '上　 0ボタンから2ボタン
64940 'sp_on 6,1:1
64950 'sp_on 8,1:5
64960 'sp_on 7,1:7
64970 case 0:
64980 No=2:sp_on 13,0:sp_on 9,1:
64990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65000 '上  0ボタンから2ボタン　ここまで
65010 '2から５になる 上
65020 case 2:
65030 No=5:sp_on 8,1:sp_on 9,0:
65040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65050 case 5:
65060 No=8:sp_on 7,1:sp_on 8,0
65070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65080 case 8:
65090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65100 case 1:
65110 No=4:sp_on 5,1:sp_on 6,0
65120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65130 case 4:
65140 No=7:sp_on 4,1:sp_on 5,0
65150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65160 case 7:
65170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65180 end select
65190 endif
65200 '左３　ここまで
65210 '下の矢印
65220 '中央 2
65230 if ((y=1) or (key$ = chr$(31))) then
65240 select case No
65250 '9から６に下げる
65260 case 9:
65270 No=6:sp_on 11,1:sp_on 10,0
65280 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
65290 '6から３に下げる
65300 case 6:
65310 No=3:sp_on 12,1:sp_on 11,0
65320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65330 '3から０ｋに変える
65340 case 3:
65350 No=-1:sp_on 14,1:sp_on 12,0
65360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65370 'Okから下のボタンを押しても何もしない
65380 case -1:
65390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65400 case 8:
65410 No=5:sp_on 8,1:sp_on 7,0
65420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65430 case 5:
65440 No=2:sp_on 9,1:sp_on 8,0
65450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65460 case 2:
65470 No=0:sp_on 13,1:sp_on 9,0
65480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65490 case 0:
65500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65510 case 7:
65520 No=4:sp_on 5,1:sp_on 4,0
65530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65540 case 4:
65550 No=1:sp_on 6,1:sp_on 5,0
65560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65570 case 1:
65580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65590 end select
65600 endif
65610 '左へボタン 十字キー　左　or 　カーソル左
65620 if ((y2 = -1) or (key$ = chr$(29))) then
65630 select case No
65640 'Ok ボタン  Okから　左　０に行く
65650 case -1:
65660 No=0:sp_on 13,1:sp_on 14,0
65670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65680 '0 ボタン  左　何もしない
65690 case 0:
65700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65710 case 3:
65720 No=2:sp_on 9,1:sp_on 12,0:
65730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65740 case 2:
65750 No=1:sp_on 6,1:sp_on 9,0:
65760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65770 case 1:
65780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65790 case 6:
65800 No=5:sp_on 8,1:sp_on 11,0
65810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65820 case 5:
65830 No=4:sp_on 5,1:sp_on 8,0
65840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65850 case 4:
65860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65870 case 9:
65880 No=8:sp_on 7,1:sp_on 10,0
65890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65900 case 8:
65910 No=7:sp_on 4,1:sp_on 7,0
65920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65930 case 7:
65940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65950 end select
65960 endif
65970 '右  十字キー　右　or カーソル　右
65980 if ((y2 = 1) or (key$ = chr$(28))) then
65990 select case No
66000 '0ボタンからokボタン右に移動
66010 case 0:
66020 No=-1:sp_on 14,1:sp_on 13,0
66030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66040 '0ボタンからokボタン 右に移動　ここまで
66050 'OKボタンで右を押して何もしない
66060 case -1:
66070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66080 case 1:
66090 No=2:sp_on 9,1:sp_on 6,0
66100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66110 case 2:
66120 No=3:sp_on 12,1:sp_on 9,0
66130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66140 case 3:
66150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66160 case 4:
66170 No=5:sp_on 8,1:sp_on 5,0
66180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66190 case 5:
66200 No=6:sp_on 11,1:sp_on 8,0
66210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66220 case 7:
66230 No=8:sp_on 7,1:sp_on 4,0
66240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66250 case 8:
66260 No=9:sp_on 10,1:sp_on 7,0
66270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66280 case 9:
66290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66300 case 6:
66310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66320 end select
66330 'Okから右ボタンを押して何もしない ここまで
66340 endif
66350 '十字キー　ここまで
66360 '右の丸ボタン + Enter key 決定キー
66370 if ((bg=2) or (key$=chr$(13))) then
66380 select case count
66390 case 0:
66400 if (No=-1) then No=0
66410 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
66420 if (buf_female_month > 1 and buf_female_month < 10)  then
66430 buf_female_Month$ = str$(buf_female_month)
66440 'buf_month=No
66450 endif
66460 if (buf_female_month = 1)  then
66470 buf_female_Month$ = str$(buf_female_month) + "*"
66480 'c=buf_month
66490 endif
66500 locate 1,3
66510 print "                                     "
66520 color RGB(255,255,255)
66530 locate 1,3
66540 print "女性の生まれた月(1月~12月):" + buf_female_Month$
66550 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66560 case 1:
66570 count = 2:
66580 'c = val(buf_Month$)
66590 if (No = -1) then
66600 'count=0
66610 No=0
66620 month=buf_female_month
66630 buf_female_month=val(buf_female_Month$)
66640 month=buf_female_month
66650 buf_Jyoushi_Born_Day(1)=month
66660 '生まれた日に飛ぶ
66670 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66680 else
66690 buf_female_month = c*10 + No
66700 'if (buf_month = 1) then
66710 'buf_Month$ = str$(buf_month)
66720 'endif
66730 buf_female_Month$ = str$(buf_female_month)
66740 buf_Jyoushi_Born_Day(1) = buf_female_month
66750 locate 0,3
66760 print "                                           "
66770 locate 1,3
66780 color Rgb(255,255,255)
66790 print "女性の生まれた月(1月~12月):" + buf_female_Month$
66800 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66810 endif
66820 case 2:
66830 '==================================
66840 '何もしない
66850 'coun = 2
66860 '==================================
66870 'c= val(buf_Month$)
66880 'buf_month = c*10 + No
66890 'buf_Month$ = str$(buf_month)
66900 'locate 2,3
66910 'print "上司の生まれた月(1月～12月):";buf_Month$
66920 'goto Jyoushi_Input_Born_Month2:
66930 'case 3:
66940 'count=4
66950 'b=val(buf_month$)
66960 'buf_month=c*10+No
66970 'buf_Month$=str$(buf_month)
66980 'locate 2,3
66990 'print "上司の生まれた月(1月～12月):";buf_Month$
67000 'buf_month=val(buf_Month$)
67010 'year=val(buf_year$)
67020 if (No=-1) then
67030 No=0
67040 goto Danjyo_Aisyou_Input_Male_Born_Day:
67050 else
67060 goto Danjyo_Aisyou_Input_Male_Born_Day2:
67070 endif
67080 'case 4:
67090 'bufyear=buf_year
67100 'if (No=-1) then
67110 'buf_month = val(buf_Month$)
67120 'month = buf_month
67130 'sp_on 14,0
67140 'goto Input_Born_Day:
67150 'else
67160 'goto Input_Born_Month2:
67170 'endif
67180 end select
67190 endif
67200 '左の丸ボタン　キャンセル
67210 if (bg2=2) then
67220 select case count2
67230 case 0:
67240 if (No = -1) then
67250 buf_female_month=0:buf_female_Month$="**"
67260 count=0
67270 'goto rewrite2:
67280 else
67290 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
67300 buf_female_month = 0:buf_female_Month$ = "**"
67310 locate 0,3
67320 color rgb(255,255,255)
67330 print "                                       "
67340 goto rewrite2:
67350 if (No>12) then
67360 ui_msg"値が範囲外です。"
67370 goto rewrite2:
67380 endif
67390 endif
67400 endif
67410 rewrite2:
67420 locate 2,3
67430 color rgb(255,255,255)
67440 print "                                      "
67450 locate 2,3
67460 print "女性の生まれた月(1月~12月):"+buf_female_Month$
67470 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
67480 end select
67490 'endif
67500 endif
67510 end
67520 '-------生まれた月　女性 ここまで-------------
67530 '-------生まれた日　女性 ここまで-------------
67540 Danjyo_Aisyou_Input_feMale_Born_Day:
67550 cls 3:play "":count=0:count2=0
67560 'No=-1:Okのとき
67570 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
67580 for i=0 to 1
67590 buf_female_day(i)=0
67600 next i
67610 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
67620 '****************************************************************************************************
67630 'WUXG(1920x1200)の時ここから
67640 '****************************************************************************************************
67650 gload Gazo$ + "Screen1.png",0,0,0
67660 gload Gazo$ + "downscreen.png",0,0,800
67670 '****************************************************************************************************
67680 'WUXG(1920x1200)の時ここまで
67690 '****************************************************************************************************
67700 'Init"kb:4"
67710 '音声ファイル再生 2023.06.07
67720 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
67730 font 48
67740 locate 0,1
67750 '文字色：黒　 color rgb(0,0,0)
67760 '文字色:白
67770 color rgb(255,255,255)
67780 print "女性の生まれた日を入れて下さい" + chr$(13)
67790 '文字色:白
67800 color rgb(255,255,255)
67810 locate 1,3
67820 '文字色:白
67830 print "女性の生まれた日(1月~31月):" + buf_female_Day$
67840 color rgb(255,255,255)
67850 'locate 4,6:print ":7"
67860 'locate 9,6:print ":8"
67870 'locate 12,6:print ":9"
67880 locate 4,6
67890 '文字色:赤
67900 print ":7  :8  :9" + chr$(13)
67910 color rgb(255,255,255)
67920 locate 4,8
67930 print ":4  :5  :6" + chr$(13)
67940 color rgb(255,255,255)
67950 locate 4,10
67960 print ":1  :2  :3" + chr$(13)
67970 locate 4,12
67980 print "    :0"
67990 locate 12,12
68000 color rgb(0,0,255)
68010 print ":Ok"
68020 sp_on 4,0: sp_on 5,0:sp_on 6,0
68030 sp_on 7,0:sp_on 8,0:sp_on 9,0
68040 sp_on 10,0:sp_on 11,0:sp_on 12,0
68050 sp_on 13,0:sp_on 14,1
68060 '---------------------------------------------
68070 Danjyo_Aisyou_Input_feMale_Born_Day2:
68080 key$="":bg=0:y=0:y2=0:bg2=0
68090 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
68100 key$ = inkey$
68110 bg = strig(1)
68120 y = stick(1)
68130 y2 = stick(0)
68140 bg2 = strig(0)
68150 pause 200
68160 wend
68170 '十字キー　ここから
68180 '上の矢印　または、十字キー上
68190 if ((y = -1) or (key$ = chr$(30))) then
68200 select case No
68210 'No=-1:okのとき:初期の状態
68220 '0kボタンから３に移動
68230 '上に行く 処理
68240 case -1:
68250 No=3:sp_on 12,1:sp_on 14,0
68260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68270 '選択肢:3
68280 '3ボタンから 6に移動
68290 case 3:
68300 No=6:sp_on 12,0:sp_on 11,1
68310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68320 '6ボタンから ９に移動
68330 case 6:
68340 No=9:sp_on 10,1:sp_on 11,0
68350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68360 '6ボタンから ９に移動　ここまで
68370 '9で上を押して何もしない
68380 case 9:
68390 '何もしない
68400 No=9
68410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68420 '9で上を押しても何もしない　ここまで
68430 '上　 0ボタンから2ボタン
68440 'sp_on 6,1:1
68450 'sp_on 8,1:5
68460 'sp_on 7,1:7
68470 case 0:
68480 No=2:sp_on 13,0:sp_on 9,1:
68490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68500 '上  0ボタンから2ボタン　ここまで
68510 '2から５になる 上
68520 case 2:
68530 No=5:sp_on 8,1:sp_on 9,0:
68540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68550 case 5:
68560 No=8:sp_on 7,1:sp_on 8,0
68570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68580 case 8:
68590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68600 case 1:
68610 No=4:sp_on 5,1:sp_on 6,0
68620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68630 case 4:
68640 No=7:sp_on 4,1:sp_on 5,0
68650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68660 case 7:
68670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68680 end select
68690 endif
68700 '左３　ここまで
68710 '下の矢印
68720 '中央 2
68730 if ((y=1) or (key$ = chr$(31))) then
68740 select case No
68750 '9から６に下げる
68760 case 9:
68770 No=6:sp_on 11,1:sp_on 10,0
68780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68790 '6から３に下げる
68800 case 6:
68810 No=3:sp_on 12,1:sp_on 11,0
68820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68830 '3から０ｋに変える
68840 case 3:
68850 No=-1:sp_on 14,1:sp_on 12,0
68860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68870 'Okから下のボタンを押しても何もしない
68880 case -1:
68890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68900 case 8:
68910 No=5:sp_on 8,1:sp_on 7,0
68920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68930 case 5:
68940 No=2:sp_on 9,1:sp_on 8,0
68950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68960 case 2:
68970 No=0:sp_on 13,1:sp_on 9,0
68980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68990 case 0:
69000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69010 case 7:
69020 No=4:sp_on 5,1:sp_on 4,0
69030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69040 case 4:
69050 No=1:sp_on 6,1:sp_on 5,0
69060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69070 case 1:
69080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69090 end select
69100 endif
69110 '左へボタン 十字キー　左　or 　カーソル左
69120 if ((y2 = -1) or (key$ = chr$(29))) then
69130 select case No
69140 'Ok ボタン  Okから　左　０に行く
69150 case -1:
69160 No=0:sp_on 13,1:sp_on 14,0
69170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69180 '0 ボタン  左　何もしない
69190 case 0:
69200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69210 case 3:
69220 No=2:sp_on 9,1:sp_on 12,0:
69230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69240 case 2:
69250 No=1:sp_on 6,1:sp_on 9,0:
69260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69270 case 1:
69280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69290 case 6:
69300 No=5:sp_on 8,1:sp_on 11,0
69310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69320 case 5:
69330 No=4:sp_on 5,1:sp_on 8,0
69340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69350 case 4:
69360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69370 case 9:
69380 No=8:sp_on 7,1:sp_on 10,0
69390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69400 case 8:
69410 No=7:sp_on 4,1:sp_on 7,0
69420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69430 case 7:
69440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69450 end select
69460 endif
69470 '右  十字キー　右　or カーソル　右
69480 if ((y2 = 1) or (key$ = chr$(28))) then
69490 select case No
69500 '0ボタンからokボタン右に移動
69510 case 0:
69520 No=-1:sp_on 14,1:sp_on 13,0
69530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69540 '0ボタンからokボタン 右に移動　ここまで
69550 'OKボタンで右を押して何もしない
69560 case -1:
69570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69580 case 1:
69590 No=2:sp_on 9,1:sp_on 6,0
69600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69610 case 2:
69620 No=3:sp_on 12,1:sp_on 9,0
69630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69640 case 3:
69650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69660 case 4:
69670 No=5:sp_on 8,1:sp_on 5,0
69680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69690 case 5:
69700 No=6:sp_on 11,1:sp_on 8,0
69710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69720 case 7:
69730 No=8:sp_on 7,1:sp_on 4,0
69740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69750 case 8:
69760 No=9:sp_on 10,1:sp_on 7,0
69770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69780 case 9:
69790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69800 case 6:
69810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69820 end select
69830 'Okから右ボタンを押して何もしない ここまで
69840 endif
69850 '十字キー　ここまで
69860 '右の丸ボタン + Enter key 決定キー
69870 if ((bg=2) or (key$=chr$(13))) then
69880 select case count
69890 case 0:
69900 if (No=-1) then No=0
69910 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
69920 if (buf_female_day > 1 and buf_female_day < 10)  then
69930 buf_female_Day$ = str$(buf_female_day)
69940 'buf_month=No
69950 endif
69960 if (buf_female_day = 1)  then
69970 buf_female_Day$ = str$(buf_female_day) + "*"
69980 'c=buf_month
69990 endif
70000 locate 1,3
70010 print "                                     "
70020 color RGB(255,255,255)
70030 locate 1,3
70040 print "女性の生まれた日(1月~31月):" + buf_female_Day$
70050 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70060 case 1:
70070 count = 2:
70080 'c = val(buf_Month$)
70090 if (No = -1) then
70100 'count=0
70110 No=0
70120 day=buf_female_day
70130 buf_female_day=val(buf_female_day$)
70140 day=bu_female_day
70150 buf_female_day(1)=day
70160 '生まれた日に飛ぶ
70170 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70180 else
70190 bu_female_day = c*10 + No
70200 'if (buf_month = 1) then
70210 'buf_Month$ = str$(buf_month)
70220 'endif
70230 buf_female_day$ = str$(buf_female_day)
70240 buf_female_day(1) = buf_female_day
70250 locate 0,3
70260 print "                                           "
70270 locate 1,3
70280 color Rgb(255,255,255)
70290 print "女性の生まれた日(1月~31月):" + buf_female_Day$
70300 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70310 endif
70320 case 2:
70330 '==================================
70340 '何もしない
70350 'coun = 2
70360 '==================================
70370 'c= val(buf_Month$)
70380 'buf_month = c*10 + No
70390 'buf_Month$ = str$(buf_month)
70400 'locate 2,3
70410 'print "上司の生まれた月(1月～12月):";buf_Month$
70420 'goto Jyoushi_Input_Born_Month2:
70430 'case 3:
70440 'count=4
70450 'b=val(buf_month$)
70460 'buf_month=c*10+No
70470 'buf_Month$=str$(buf_month)
70480 'locate 2,3
70490 'print "上司の生まれた月(1月～12月):";buf_Month$
70500 'buf_month=val(buf_Month$)
70510 'year=val(buf_year$)
70520 if (No=-1) then
70530 No=0
70540 goto Danjyo_Aisyou_Input_Male_Born_Day:
70550 else
70560 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70570 endif
70580 'case 4:
70590 'bufyear=buf_year
70600 'if (No=-1) then
70610 'buf_month = val(buf_Month$)
70620 'month = buf_month
70630 'sp_on 14,0
70640 'goto Input_Born_Day:
70650 'else
70660 'goto Input_Born_Month2:
70670 'endif
70680 end select
70690 endif
70700 '左の丸ボタン　キャンセル
70710 if (bg2=2) then
70720 select case count2
70730 case 0:
70740 if (No = -1) then
70750 buf_female_day=0:buf_female_Day$="**"
70760 count=0
70770 'goto rewrite2:
70780 else
70790 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
70800 buf_female_day = 0:buf_female_Day$ = "**"
70810 locate 0,3
70820 color rgb(255,255,255)
70830 print "                                       "
70840 goto rewrite2:
70850 if (No>12) then
70860 ui_msg"値が範囲外です。"
70870 goto rewrite2:
70880 endif
70890 endif
70900 endif
70910 rewrite2:
70920 locate 2,3
70930 color rgb(255,255,255)
70940 print "                                      "
70950 locate 2,3
70960 print "女性の生まれた日(1月~31月):"+buf_female_Day$
70970 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70980 end select
70990 'endif
71000 endif
71010 end
71020 '-------生まれた日　女性 ここまで-------------
71030 '1.男女の相性 ここまで
71040 '2.ビジネスの相性　
71050 '1.1人目のビジネスの相性　名前入力　1人目
71060 Business_Aishou_Input_1_parson:
71070 No=0:color RGB(255,255,255)
71080 cls 3:init "kb:2"
71090 '****************************************************************************************************
71100 'WUXG(1920x1200)の時ここから
71110 '****************************************************************************************************
71120 gload Gazo$ + "Screen1.png",0,0,0
71130 gload Gazo$ + "downscreen.png",0,0,800
71140 '****************************************************************************************************
71150 'WUXG(1920x1200)の時ここまで
71160 '****************************************************************************************************
71170 play "":color rgb(255,0,0):name$ = ""
71180 locate 0,1
71190 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
71200 color rgb(255,255,255):
71210 locate 0,3
71220 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
71230 print "入れてください" + chr$(13)
71240 locate 0,15:color rgb(0,0,0)
71250 Input "1人目の名前:",name$
71260 'color rgb(0,0,0)
71270 'locate 0,13:print "                                     "
71280 'locate 0,13:print "1人目の名前を入力してエンターキー":
71290 'buffer_name$(0):1人目の名前
71300 buffer_name$(0) = name$:
71310 goto Business_Aishou_Input_2_Parson:
71320 '2.2人目のビジネスの相性 名前入力 2人目
71330 Business_Aishou_Input_2_Parson:
71340 cls 3:init "kb:2":name$ = "":No=0
71350 '****************************************************************************************************
71360 'WUXG(1920x1200)の時ここから
71370 '****************************************************************************************************
71380 gload Gazo$ + "Screen1.png",0,0,0
71390 gload Gazo$ + "downscreen.png",0,0,800
71400 '****************************************************************************************************
71410 'WUXG(1920x1200)の時ここまで
71420 '****************************************************************************************************
71430 color rgb(255,0,0)
71440 'Title
71450 locate 0,1
71460 print "ビジネスの相性　2人目"
71470 locate 0,3
71480 color rgb(255,255,255)
71490 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
71500 print "入れてください" + chr$(13)
71510 locate 0,15:color rgb(0,0,0)
71520 Input "2人目の名前:",name$
71530 'color rgb(0,0,0)
71540 'locate 0,15:print "                                              "
71550 'locate 0,15:print "2人目の名前を入力してエンター ":
71560 '2人目
71570 '2人目の名前を入れるに代入
71580 buffer_name$(1) = name$:
71590 goto Select_jyoushi:
71600 '3.上司の選択
71610 Select_jyoushi:
71620 '****************************************************************************************************
71630 'WUXG(1920x1200)の時ここから
71640 '****************************************************************************************************
71650 cls 3:gload Gazo$ + "Screen1.png",0,0,0
71660 gload Gazo$ + "downscreen.png",0,0,800
71670 '****************************************************************************************************
71680 'WUXG(1920x1200)の時ここまで
71690 '****************************************************************************************************
71700 init "kb:4":No=0
71710 color rgb(0,0,255)
71720 locate 1,1
71730 print "上司の選択"
71740 color rgb(255,255,255)
71750 locate 0,4:print "名前から上司の方を選んでください"
71760 locate 0,6
71770 print " :";buffer_name$(0);"が上 司";chr$(13)
71780 locate 0,8
71790 print " :";buffer_name$(1);"が上 司";chr$(13)
71800 locate 0,15:
71810 print "                                     "
71820 locate 0,15:color rgb(0,0,0)
71830 print "上司の方を選んで右の丸ボタン"
71840 sp_on 0,1:sp_on 1,0:sp_on 2,0
71850 Select_jyoushi2:
71860 'ここでNo=0をおいてはいけない
71870 y=0:key$="":bg=0:
71880 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
71890 y = stick(1)
71900 key$ = inkey$
71910 bg = strig(1)
71920 pause 5
71930 wend
71940 '1.カーソル下の処理　or 十字キーの下処理
71950 if ((key$ = chr$(31)) or (y = 1)) then
71960 select case No
71970 case 0:
71980 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
71990 case 1:
72000 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
72010 end select
72020 endif
72030 '2.カーソル上処理　or 十字キーの上の処理
72040 if ((key$ = chr$(30)) or (y = -1)) then
72050 select case No
72060 case 0:
72070 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
72080 case 1:
72090 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
72100 end select
72110 endif
72120 if ((key$ = chr$(13)) or (bg = 2)) then
72130 select case No
72140 case 0:
72150 '上司(name1)を配列に代入
72160 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
72170 case 1:
72180 '上司（name2)を配列に代入
72190 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
72200 end select
72210 endif
72220 '3.決定ボタン　Enter or 右の丸ボタン
72230 '1.誕生日入力
72240 '1-1.生まれた年を入力
72250 'Jyoushi_born_year:
72260 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
72270 '---------------------------------------------'
72280 '誕生日入力(生れた年代)
72290 Jyoushi_Input_Seireki:
72300 'buf_Jyoushi_Born_Year:上司の生まれた年代
72310 'buf_Jyoushi_Born_Day(0) = born_year
72320 cls 3:play "":count=0:count2=0
72330 init"kb:4"
72340 'No=-1:Okのとき
72350 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
72360 for i=0 to 3
72370 buf_Jyoushi_Born_Day(i)=0
72380 next i
72390 '****************************************************************************************************
72400 'WUXG(1920x1200)の時ここから
72410 '****************************************************************************************************
72420 gload Gazo$ + "Screen2.png",0,0,0
72430 gload Gazo$ + "downscreen.png",0,0,800
72440 '****************************************************************************************************
72450 'WUXG(1920x1200)の時ここまで
72460 '****************************************************************************************************
72470 'Init"kb:2"
72480 '音声ファイル再生 2023.06.07
72490 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
72500 font 48
72510 locate 0,1
72520 '文字色：黒　 color rgb(0,0,0)
72530 color rgb(255,255,255)
72540 print "上司の生まれた年代を入れて下さい" + chr$(13)
72550 color rgb(255,255,255)
72560 locate 1,3
72570 print "上司の生まれた年代(西暦4桁):";buf_year$
72580 color rgb(255,255,255)
72590 'locate 4,6:print ":7"
72600 'locate 9,6:print ":8"
72610 'locate 12,6:print ":9"
72620 'locate 4,6
72630 'print ":7  :8  :9" + chr$(13)
72640 'color rgb(255,255,255)
72650 'locate 4,8
72660 'print ":4  :5  :6" + chr$(13)
72670 'color rgb(255,255,255)
72680 'locate 4,10
72690 'print ":1  :2  :3" + chr$(13)
72700 'locate 4,12
72710 'print "    :0"
72720 'locate 12,12
72730 'color rgb(0,0,255)
72740 'print ":Ok"
72750 sp_on 4,0: sp_on 5,0:sp_on 6,0
72760 sp_on 7,0:sp_on 8,0:sp_on 9,0
72770 sp_on 10,0:sp_on 11,0:sp_on 12,0
72780 sp_on 13,0:sp_on 14,1
72790 Jyoushi_Input_Seireki2:
72800 key$="":bg=0:y=0:y2=0:bg2=0:
72810 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72820 key$ = inkey$
72830 bg = strig(1)
72840 y = stick(1)
72850 y2 = stick(0)
72860 bg2=strig(0)
72870 pause 200
72880 wend
72890 '十字キー　ここから
72900 '上の矢印　または、十字キー上
72910 if ((y = -1) or (key$ = chr$(30))) then
72920 select case No
72930 'No=-1:okのとき:初期の状態
72940 '0kボタンから３に移動
72950 '上に行く 処理
72960 case -1:
72970 No=3:sp_on 12,1:sp_on 14,0
72980 pause 200:goto Jyoushi_Input_Seireki2:
72990 '選択肢:3
73000 '3ボタンから 6に移動
73010 case 3:
73020 No=6:sp_on 12,0:sp_on 11,1
73030 pause 200:goto Jyoushi_Input_Seireki2:
73040 '6ボタンから ９に移動
73050 case 6:
73060 No=9:sp_on 10,1:sp_on 11,0
73070 pause 200:goto Jyoushi_Input_Seireki2:
73080 '6ボタンから ９に移動　ここまで
73090 '9で上を押して何もしない
73100 case 9:
73110 '何もしない
73120 No=9
73130 pause 200:goto Jyoushi_Input_Seireki2:
73140 '9で上を押しても何もしない　ここまで
73150 '上　 0ボタンから2ボタン
73160 'sp_on 6,1:1
73170 'sp_on 8,1:5
73180 'sp_on 7,1:7
73190 case 0:
73200 No=2:sp_on 13,0:sp_on 9,1:
73210 pause 200:goto Jyoushi_Input_Seireki2:
73220 '上  0ボタンから2ボタン　ここまで
73230 '2から５になる 上
73240 case 2:
73250 No=5:sp_on 8,1:sp_on 9,0:
73260 pause 200:goto Jyoushi_Input_Seireki2:
73270 case 5:
73280 No=8:sp_on 7,1:sp_on 8,0
73290 pause 200:goto Jyoushi_Input_Seireki2:
73300 case 8:
73310 pause 200:goto Jyoushi_Input_Seireki2:
73320 case 1:
73330 No=4:sp_on 5,1:sp_on 6,0
73340 pause 200:goto Jyoushi_Input_Seireki2:
73350 case 4:
73360 No=7:sp_on 4,1:sp_on 5,0
73370 pause 200:goto Jyoushi_Input_Seireki2:
73380 case 7:
73390 pause 200:goto Jyoushi_Input_Seireki2:
73400 end select
73410 endif
73420 '左３　ここまで
73430 '下の矢印
73440 '中央 2
73450 if ((y=1) or (key$ = chr$(31))) then
73460 select case No
73470 '9から６に下げる
73480 case 9:
73490 No=6:sp_on 11,1:sp_on 10,0
73500 pause 200:goto Jyoushi_Input_Seireki2:
73510 '6から３に下げる
73520 case 6:
73530 No=3:sp_on 12,1:sp_on 11,0
73540 pause 200:goto Jyoushi_Input_Seireki2:
73550 '3から０ｋに変える
73560 case 3:
73570 No=-1:sp_on 14,1:sp_on 12,0
73580 pause 200:goto Jyoushi_Input_Seireki2:
73590 'Okから下のボタンを押しても何もしない
73600 case -1:
73610 pause 200:goto Jyoushi_Input_Seireki2:
73620 case 8:
73630 No=5:sp_on 8,1:sp_on 7,0
73640 pause 200:goto Jyoushi_Input_Seireki2:
73650 case 5:
73660 No=2:sp_on 9,1:sp_on 8,0
73670 pause 200:goto Jyoushi_Input_Seireki2:
73680 case 2:
73690 No=0:sp_on 13,1:sp_on 9,0
73700 pause 200:goto Jyoushi_Input_Seireki2:
73710 case 0:
73720 pause 200:goto Jyoushi_Input_Seireki2:
73730 case 7:
73740 No=4:sp_on 5,1:sp_on 4,0
73750 pause 200:goto Jyoushi_Input_Seireki2:
73760 case 4:
73770 No=1:sp_on 6,1:sp_on 5,0
73780 pause 200:goto Jyoushi_Input_Seireki2:
73790 case 1:
73800 pause 200:goto Jyoushi_Input_Seireki2:
73810 end select
73820 endif
73830 '左へボタン 十字キー　左　or 　カーソル左
73840 if ((y2 = -1) or (key$ = chr$(29))) then
73850 select case No
73860 'Ok ボタン  Okから　左　０に行く
73870 case -1:
73880 No=0:sp_on 13,1:sp_on 14,0
73890 pause 200:goto Jyoushi_Input_Seireki2:
73900 '0 ボタン  左　何もしない
73910 case 0:
73920 pause 200:goto Jyoushi_Input_Seireki2:
73930 case 3:
73940 No=2:sp_on 9,1:sp_on 12,0:
73950 pause 200:goto Jyoushi_Input_Seireki2:
73960 case 2:
73970 No=1:sp_on 6,1:sp_on 9,0:
73980 pause 200:goto Jyoushi_Input_Seireki2:
73990 case 1:
74000 pause 200:goto Jyoushi_Input_Seireki2:
74010 case 6:
74020 No=5:sp_on 8,1:sp_on 11,0
74030 pause 200:goto Jyoushi_Input_Seireki2:
74040 case 5:
74050 No=4:sp_on 5,1:sp_on 8,0
74060 pause 200:goto Jyoushi_Input_Seireki2:
74070 case 4:
74080 pause 200:goto Jyoushi_Input_Seireki2:
74090 case 9:
74100 No=8:sp_on 7,1:sp_on 10,0
74110 pause 200:goto Jyoushi_Input_Seireki2:
74120 case 8:
74130 No=7:sp_on 4,1:sp_on 7,0
74140 pause 200:goto Jyoushi_Input_Seireki2:
74150 case 7:
74160 pause 200:goto Jyoushi_Input_Seireki2:
74170 end select
74180 endif
74190 '右  十字キー　右　or カーソル　右
74200 if ((y2 = 1) or (key$ = chr$(28))) then
74210 select case No
74220 '0ボタンからokボタン右に移動
74230 case 0:
74240 No=-1:sp_on 14,1:sp_on 13,0
74250 pause 200:goto Jyoushi_Input_Seireki2:
74260 '0ボタンからokボタン 右に移動　ここまで
74270 'OKボタンで右を押して何もしない
74280 case -1:
74290 pause 200:goto Jyoushi_Input_Seireki2:
74300 case 1:
74310 No=2:sp_on 9,1:sp_on 6,0
74320 pause 200:goto Jyoushi_Input_Seireki2:
74330 case 2:
74340 No=3:sp_on 12,1:sp_on 9,0
74350 pause 200:goto Jyoushi_Input_Seireki2:
74360 case 3:
74370 pause 200:goto Jyoushi_Input_Seireki2:
74380 case 4:
74390 No=5:sp_on 8,1:sp_on 5,0
74400 pause 200:goto Jyoushi_Input_Seireki2:
74410 case 5:
74420 No=6:sp_on 11,1:sp_on 8,0
74430 pause 200:goto Jyoushi_Input_Seireki2:
74440 case 7:
74450 No=8:sp_on 7,1:sp_on 4,0
74460 pause 200:goto Jyoushi_Input_Seireki2:
74470 case 8:
74480 No=9:sp_on 10,1:sp_on 7,0
74490 pause 200:goto Jyoushi_Input_Seireki2:
74500 case 9:
74510 pause 200:goto Jyoushi_Input_Seireki2:
74520 case 6:
74530 pause 200:goto Jyoushi_Input_Seireki2:
74540 end select
74550 'Okから右ボタンを押して何もしない ここまで
74560 endif
74570 '十字キー　ここまで
74580 '==============================
74590 'ここから
74600 '==============================
74610 if ((bg = 2) or (key$ = chr$(13))) then
74620 select case count
74630 case 0:
74640 count = 1
74650 if (No = -1) then
74660 count = 0:No=0
74670 buf_Jyoushi_Born_Day(0) = No
74680 'Okボタンを押したとき
74690 goto Jyoushi_Input_Seireki2:
74700 else
74710 'Okボタン以外が押されたとき
74720 if (No >= 1 and No <= 2) then
74730 buf_year$="":buf_year$ = str$(No) + "***"
74740 buf_year = No:a= No
74750 buf_Jyoushi_Born_Day(0) = No
74760 locate 1,3
74770 color rgb(255,255,255)
74780 print "上司の生まれた年代(西暦4桁):";buf_year$
74790 goto Jyoushi_Input_Seireki2:
74800 else
74810 count=0
74820 ui_msg"数字が範囲外になります。"
74830 buf_year$="":buf_year=0
74840 goto Jyoushi_Input_Seireki2:
74850 endif
74860 endif
74870 case 1:
74880 count = 2
74890 if (No = -1) then
74900 count = 1
74910 goto Jyoushi_Input_Seireki2:
74920 else
74930 buf_year = a * 10 + No
74940 b=buf_year
74950 buf_year$ = str$(buf_year) + "**"
74960 buf_Jyoushi_Born_Day(0)=buf_year
74970 locate 1,3
74980 color rgb(255,255,255)
74990 print "                                                                "
75000 locate 1,3
75010 print "上司の生まれた年代(西暦4桁):" + buf_year$
75020 'if (No = -1) then
75030 'count=1
75040 goto Jyoushi_Input_Seireki2:
75050 endif
75060 case 2:
75070 count=3
75080 if (No=-1) then
75090 count =2
75100 goto Jyoushi_Input_Seireki2:
75110 else
75120 buf_year = b * 10 + No
75130 c=buf_year
75140 buf_year$ = str$(buf_year) + "*"
75150 buf_Jyoushi_Born_Day(0) = buf_year
75160 locate 1,3
75170 color rgb(255,255,255)
75180 print "                                        "
75190 locate 1,3
75200 print "上司の生まれた年代(西暦4桁):";buf_year$
75210 goto Jyoushi_Input_Seireki2:
75220 endif
75230 case 3:
75240 count=4
75250 if (No = -1) then
75260 No=0
75270 goto Jyoushi_Input_Seireki2:
75280 else
75290 buf_year = c * 10 + No
75300 buf_year$ = str$(buf_year)
75310 buf_Jyoushi_Born_Day(0) = buf_year
75320 locate 1,3
75330 color RGB(255,255,255)
75340 print "                                      "
75350 locate 1,3
75360 print "上司の生まれた年代(西暦4桁):";buf_year$
75370 buf_year=val(buf_year$)
75380 'year=val(buf_year$)
75390 'if (No=-1) then
75400 'goto Input_Born_Month:
75410 'else
75420 goto Jyoushi_Input_Seireki2:
75430 endif
75440 case 4:
75450 'bufyear=buf_year
75460 if (No=-1) then
75470 buf_year = val(buf_year$)
75480 buf_Jyoushi_Born_Day(0)=buf_year
75490 sp_on 14,0:No=0
75500 goto Jyoushi_Input_Born_Month:
75510 else
75520 goto Jyoushi_Input_Seireki2:
75530 endif
75540 end select
75550 endif
75560 '===========================
75570 'ここまでを部下のところにコピーする.
75580 '===========================
75590 if (bg2 = 2) then
75600 select case count2
75610 case 0:
75620 if (No = -1) then
75630 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
75640 count=0
75650 locate 1,3
75660 color rgb(255,255,255)
75670 print "                                      "
75680 locate 1,3
75690 print "上司の生まれた年代（西暦4桁):" + buf_year$
75700 goto Jyoushi_Input_Seireki2:
75710 else
75720 '(buf_year=0) then
75730 buf_year=0:buf_year$="****"
75740 locate 1,3
75750 print "                                       "
75760 locate 1,3
75770 print "上司の生まれた年代(西暦4桁):"+buf_year$
75780 goto Jyoushi_Input_Seireki2:
75790 'endif
75800 endif
75810 end select
75820 endif
75830 'Input"上司の生れた年代(4桁,〜2025年):",year
75840 'if year > 2025 then goto Jyoushi_Input_Seireki:
75850 'if year = 123 then cls 3:cls 4:goto Main_Screen:
75860 '"4桁目"
75870 'bufyear4 = fix(year / 1000)
75880 '"3桁目"
75890 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
75900 '"2桁目"
75910 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
75920 '"1桁目"
75930 'bufyear1 = fix((year - ((bufyear4*
75940 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
75950 '2.生まれた月を入力
75960 Jyoushi_Input_Born_Month:
75970 cls 3:play "":count=0:count2=0
75980 'No=-1:Okのとき
75990 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
76000 for i=0 to 1
76010 buf_month(i)=0
76020 next i
76030 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
76040 '****************************************************************************************************
76050 'WUXG(1920x1200)の時ここから
76060 '****************************************************************************************************
76070 gload Gazo$ + "Screen2.png",0,0,0
76080 gload Gazo$ + "downscreen.png",0,0,800
76090 '****************************************************************************************************
76100 'WUXG(1920x1200)の時ここまで
76110 '****************************************************************************************************
76120 'Init"kb:4"
76130 '音声ファイル再生 2023.06.07
76140 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
76150 font 48
76160 locate 0,1
76170 '文字色：黒　 color rgb(0,0,0)
76180 '文字色:白
76190 color rgb(255,255,255)
76200 print "上司の生まれた月を入れて下さい" + chr$(13)
76210 '文字色:白
76220 color rgb(255,255,255)
76230 locate 1,3
76240 '文字色:白
76250 print "上司の生まれた月(1月~12月):"+buf_Month$
76260 color rgb(255,255,255)
76270 'locate 4,6:print ":7"
76280 'locate 9,6:print ":8"
76290 'locate 12,6:print ":9"
76300 'locate 4,6
76310 '文字色:赤
76320 'print ":7  :8  :9" + chr$(13)
76330 'color rgb(255,255,255)
76340 'locate 4,8
76350 'print ":4  :5  :6" + chr$(13)
76360 'color rgb(255,255,255)
76370 'locate 4,10
76380 'print ":1  :2  :3" + chr$(13)
76390 'locate 4,12
76400 'print "    :0"
76410 'locate 12,12
76420 'color rgb(0,0,255)
76430 'print ":Ok"
76440 sp_on 4,0: sp_on 5,0:sp_on 6,0
76450 sp_on 7,0:sp_on 8,0:sp_on 9,0
76460 sp_on 10,0:sp_on 11,0:sp_on 12,0
76470 sp_on 13,0:sp_on 14,1
76480 Jyoushi_Input_Born_Month2:
76490 key$="":bg=0:y=0:y2=0:bg2=0
76500 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
76510 key$ = inkey$
76520 bg = strig(1)
76530 y = stick(1)
76540 y2 = stick(0)
76550 bg2 = strig(0)
76560 pause 200
76570 wend
76580 '十字キー　ここから
76590 '上の矢印　または、十字キー上
76600 if ((y = -1) or (key$ = chr$(30))) then
76610 select case No
76620 'No=-1:okのとき:初期の状態
76630 '0kボタンから３に移動
76640 '上に行く 処理
76650 case -1:
76660 No=3:sp_on 12,1:sp_on 14,0
76670 pause 200:goto Jyoushi_Input_Born_Month2:
76680 '選択肢:3
76690 '3ボタンから 6に移動
76700 case 3:
76710 No=6:sp_on 12,0:sp_on 11,1
76720 pause 200:goto Jyoushi_Input_Born_Month2:
76730 '6ボタンから ９に移動
76740 case 6:
76750 No=9:sp_on 10,1:sp_on 11,0
76760 pause 200:goto Jyoushi_Input_Born_Month2:
76770 '6ボタンから ９に移動　ここまで
76780 '9で上を押して何もしない
76790 case 9:
76800 '何もしない
76810 No=9
76820 pause 200:goto Jyoushi_Input_Born_Month2:
76830 '9で上を押しても何もしない　ここまで
76840 '上　 0ボタンから2ボタン
76850 'sp_on 6,1:1
76860 'sp_on 8,1:5
76870 'sp_on 7,1:7
76880 case 0:
76890 No=2:sp_on 13,0:sp_on 9,1:
76900 pause 200:goto Jyoushi_Input_Born_Month2:
76910 '上  0ボタンから2ボタン　ここまで
76920 '2から５になる 上
76930 case 2:
76940 No=5:sp_on 8,1:sp_on 9,0:
76950 pause 200:goto Jyoushi_Input_Born_Month2:
76960 case 5:
76970 No=8:sp_on 7,1:sp_on 8,0
76980 pause 200:goto Jyoushi_Input_Born_Month2:
76990 case 8:
77000 pause 200:goto Input_Born_Month2:
77010 case 1:
77020 No=4:sp_on 5,1:sp_on 6,0
77030 pause 200:goto Jyoushi_Input_Born_Month2:
77040 case 4:
77050 No=7:sp_on 4,1:sp_on 5,0
77060 pause 200:goto Jyoushi_Input_Born_Month2:
77070 case 7:
77080 pause 200:goto Input_Born_Month2:
77090 end select
77100 endif
77110 '左３　ここまで
77120 '下の矢印
77130 '中央 2
77140 if ((y=1) or (key$ = chr$(31))) then
77150 select case No
77160 '9から６に下げる
77170 case 9:
77180 No=6:sp_on 11,1:sp_on 10,0
77190 pause 200:goto Jyoushi_Input_Born_Month2:
77200 '6から３に下げる
77210 case 6:
77220 No=3:sp_on 12,1:sp_on 11,0
77230 pause 200:goto Jyoushi_Input_Born_Month2:
77240 '3から０ｋに変える
77250 case 3:
77260 No=-1:sp_on 14,1:sp_on 12,0
77270 pause 200:goto Jyoushi_Input_Born_Month2:
77280 'Okから下のボタンを押しても何もしない
77290 case -1:
77300 pause 200:goto Jyoushi_Input_Born_Month2:
77310 case 8:
77320 No=5:sp_on 8,1:sp_on 7,0
77330 pause 200:goto Jyoushi_Input_Born_Month2:
77340 case 5:
77350 No=2:sp_on 9,1:sp_on 8,0
77360 pause 200:goto Jyoushi_Input_Born_Month2:
77370 case 2:
77380 No=0:sp_on 13,1:sp_on 9,0
77390 pause 200:goto Jyoushi_Input_Born_Month2:
77400 case 0:
77410 pause 200:goto Jyoushi_Input_Born_Month2:
77420 case 7:
77430 No=4:sp_on 5,1:sp_on 4,0
77440 pause 200:goto Jyoushi_Input_Born_Month2:
77450 case 4:
77460 No=1:sp_on 6,1:sp_on 5,0
77470 pause 200:goto Jyoushi_Input_Born_Month2:
77480 case 1:
77490 pause 200:goto Jyoushi_Input_Born_Month2:
77500 end select
77510 endif
77520 '左へボタン 十字キー　左　or 　カーソル左
77530 if ((y2 = -1) or (key$ = chr$(29))) then
77540 select case No
77550 'Ok ボタン  Okから　左　０に行く
77560 case -1:
77570 No=0:sp_on 13,1:sp_on 14,0
77580 pause 200:goto Jyoushi_Input_Born_Month2:
77590 '0 ボタン  左　何もしない
77600 case 0:
77610 pause 200:goto Jyoushi_Input_Born_Month2:
77620 case 3:
77630 No=2:sp_on 9,1:sp_on 12,0:
77640 pause 200:goto Jyoushi_Input_Born_Month2:
77650 case 2:
77660 No=1:sp_on 6,1:sp_on 9,0:
77670 pause 200:goto Jyoushi_Input_Born_Month2:
77680 case 1:
77690 pause 200:goto Jyoushi_Input_Born_Month2:
77700 case 6:
77710 No=5:sp_on 8,1:sp_on 11,0
77720 pause 200:goto Jyoushi_Input_Born_Month2:
77730 case 5:
77740 No=4:sp_on 5,1:sp_on 8,0
77750 pause 200:goto Jyoushi_Input_Born_Month2:
77760 case 4:
77770 pause 200:goto Jyoushi_Input_Born_Month2:
77780 case 9:
77790 No=8:sp_on 7,1:sp_on 10,0
77800 pause 200:goto Input_Born_Month2:
77810 case 8:
77820 No=7:sp_on 4,1:sp_on 7,0
77830 pause 200:goto Jyoushi_Input_Born_Month2:
77840 case 7:
77850 pause 200:goto Jyoushi_Input_Born_Month2:
77860 end select
77870 endif
77880 '右  十字キー　右　or カーソル　右
77890 if ((y2 = 1) or (key$ = chr$(28))) then
77900 select case No
77910 '0ボタンからokボタン右に移動
77920 case 0:
77930 No=-1:sp_on 14,1:sp_on 13,0
77940 pause 200:goto Jyoushi_Input_Born_Month2:
77950 '0ボタンからokボタン 右に移動　ここまで
77960 'OKボタンで右を押して何もしない
77970 case -1:
77980 pause 200:goto Jyoushi_Input_Born_Month2:
77990 case 1:
78000 No=2:sp_on 9,1:sp_on 6,0
78010 pause 200:goto Jyoushi_Input_Born_Month2:
78020 case 2:
78030 No=3:sp_on 12,1:sp_on 9,0
78040 pause 200:goto Jyoushi_Input_Born_Month2:
78050 case 3:
78060 pause 200:goto Jyoushi_Input_Born_Month2:
78070 case 4:
78080 No=5:sp_on 8,1:sp_on 5,0
78090 pause 200:goto Jyoushi_Input_Born_Month2:
78100 case 5:
78110 No=6:sp_on 11,1:sp_on 8,0
78120 pause 200:goto Jyoushi_Input_Born_Month2:
78130 case 7:
78140 No=8:sp_on 7,1:sp_on 4,0
78150 pause 200:goto Jyoushi_Input_Born_Month2:
78160 case 8:
78170 No=9:sp_on 10,1:sp_on 7,0
78180 pause 200:goto Jyoushi_Input_Born_Month2:
78190 case 9:
78200 pause 200:goto Jyoushi_Input_Born_Month2:
78210 case 6:
78220 pause 200:goto Jyoushi_Input_Born_Month2:
78230 end select
78240 'Okから右ボタンを押して何もしない ここまで
78250 endif
78260 '十字キー　ここまで
78270 '右の丸ボタン + Enter key 決定キー
78280 if ((bg=2) or (key$=chr$(13))) then
78290 select case count
78300 case 0:
78310 if (No=-1) then No=0
78320 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
78330 if (buf_month > 1 and buf_month < 10)  then
78340 buf_Month$ = str$(buf_month)
78350 'buf_month=No
78360 endif
78370 if (buf_month = 1)  then
78380 buf_Month$ = str$(buf_month) + "*"
78390 'c=buf_month
78400 endif
78410 locate 1,3
78420 print "                                     "
78430 color RGB(255,255,255)
78440 locate 1,3
78450 print "上司の生まれた月(1月~12月):" + buf_Month$
78460 goto Jyoushi_Input_Born_Month2:
78470 case 1:
78480 count = 2:
78490 'c = val(buf_Month$)
78500 if (No = -1) then
78510 'count=0
78520 No=0
78530 month=buf_month
78540 buf_month=val(buf_Month$)
78550 month=buf_month
78560 buf_Jyoushi_Born_Day(1)=month
78570 '生まれた日に飛ぶ
78580 goto Jyoushi_Input_Born_Day:
78590 else
78600 buf_month = c*10 + No
78610 'if (buf_month = 1) then
78620 'buf_Month$ = str$(buf_month)
78630 'endif
78640 buf_Month$ = str$(buf_month)
78650 buf_Jyoushi_Born_Day(1) = buf_month
78660 locate 0,3
78670 print "                                           "
78680 locate 1,3
78690 color Rgb(255,255,255)
78700 print "上司の生まれた月(1月~12月):" + buf_Month$
78710 goto Jyoushi_Input_Born_Month2:
78720 endif
78730 case 2:
78740 '==================================
78750 '何もしない
78760 'coun = 2
78770 '==================================
78780 'c= val(buf_Month$)
78790 'buf_month = c*10 + No
78800 'buf_Month$ = str$(buf_month)
78810 'locate 2,3
78820 'print "上司の生まれた月(1月～12月):";buf_Month$
78830 'goto Jyoushi_Input_Born_Month2:
78840 'case 3:
78850 'count=4
78860 'b=val(buf_month$)
78870 'buf_month=c*10+No
78880 'buf_Month$=str$(buf_month)
78890 'locate 2,3
78900 'print "上司の生まれた月(1月～12月):";buf_Month$
78910 'buf_month=val(buf_Month$)
78920 'year=val(buf_year$)
78930 if (No=-1) then
78940 No=0
78950 goto Jyoushi_Input_Born_Day:
78960 else
78970 goto Jyoushi_Input_Born_Month2:
78980 endif
78990 'case 4:
79000 'bufyear=buf_year
79010 'if (No=-1) then
79020 'buf_month = val(buf_Month$)
79030 'month = buf_month
79040 'sp_on 14,0
79050 'goto Input_Born_Day:
79060 'else
79070 'goto Input_Born_Month2:
79080 'endif
79090 end select
79100 endif
79110 '左の丸ボタン　キャンセル
79120 if (bg2=2) then
79130 select case count2
79140 case 0:
79150 if (No = -1) then
79160 buf_month=0:buf_Month$="**"
79170 count=0
79180 'goto rewrite2:
79190 else
79200 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
79210 buf_month = 0:buf_Month$ = "**"
79220 locate 0,3
79230 color rgb(255,255,255)
79240 print "                                       "
79250 goto rewrite2:
79260 if (No>12) then
79270 ui_msg"値が範囲外です。"
79280 goto rewrite2:
79290 endif
79300 endif
79310 endif
79320 rewrite2:
79330 locate 2,3
79340 color rgb(255,255,255)
79350 print "                                      "
79360 locate 2,3
79370 print "上司の生まれた月(1月~12月):"+buf_Month$
79380 goto Jyoushi_Input_Born_Month2:
79390 end select
79400 'endif
79410 endif
79420 end
79430 'end
79440 '生れた日を入力
79450 Jyoushi_Input_Born_Day:
79460 '生まれた日入力
79470 cls 3:play ""
79480 'No=-1:Okのとき
79490 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
79500 for i=0 to 1
79510 buf_day(i)=0
79520 next i
79530 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
79540 '****************************************************************************************************
79550 'WUXG(1920x1200)の時ここから
79560 '****************************************************************************************************
79570 gload Gazo$ + "Screen2.png",0,0,0
79580 gload Gazo$ + "downscreen.png",0,0,800
79590 '****************************************************************************************************
79600 'WUXG(1920x1200)の時ここまで
79610 '****************************************************************************************************
79620 'Init"kb:2"
79630 '音声ファイル再生 2023.06.07
79640 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
79650 font 48
79660 locate 1,1
79670 '文字色：黒　 color rgb(0,0,0)
79680 color rgb(255,255,255)
79690 print "上司の生まれた日を入れて下さい" + chr$(13)
79700 locate 1,3
79710 color rgb(255,255,255)
79720 print "                                      "
79730 locate 1,3
79740 print "上司の生まれた日(1日~31日):"+buf_Day$
79750 color rgb(255,255,255)
79760 'locate 4,6:print ":7"
79770 'locate 9,6:print ":8"
79780 'locate 12,6:print ":9"
79790 'locate 4,6
79800 'print ":7  :8  :9" + chr$(13)
79810 'color rgb(255,255,255)
79820 'locate 4,8
79830 'print ":4  :5  :6" + chr$(13)
79840 'color rgb(255,255,255)
79850 'locate 4,10
79860 'print ":1  :2  :3" + chr$(13)
79870 'locate 4,12
79880 'print "    :0"
79890 'locate 12,12
79900 'color rgb(0,0,255)
79910 'print ":Ok"
79920 sp_on 4,0: sp_on 5,0:sp_on 6,0
79930 sp_on 7,0:sp_on 8,0:sp_on 9,0
79940 sp_on 10,0:sp_on 11,0:sp_on 12,0
79950 sp_on 13,0:sp_on 14,1
79960 Jyoushi_Input_Born_Day2:
79970 key$="":bg=0:y=0:y2=0:bg2=0:
79980 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
79990 key$ = inkey$
80000 bg = strig(1)
80010 y = stick(1)
80020 y2 = stick(0)
80030 bg2 = strig(0)
80040 pause 200
80050 wend
80060 '十字キー　ここから
80070 '上の矢印　または、十字キー上
80080 if ((y = -1) or (key$ = chr$(30))) then
80090 select case No
80100 'No=-1:okのとき:初期の状態
80110 '0kボタンから３に移動
80120 '上に行く 処理
80130 case -1:
80140 No=3:sp_on 12,1:sp_on 14,0
80150 pause 200:goto Jyoushi_Input_Born_Day2:
80160 '選択肢:3
80170 '3ボタンから 6に移動
80180 case 3:
80190 No=6:sp_on 12,0:sp_on 11,1
80200 pause 200:goto Jyoushi_Input_Born_Day2:
80210 '6ボタンから ９に移動
80220 case 6:
80230 No=9:sp_on 10,1:sp_on 11,0
80240 pause 200:goto Jyoushi_Input_Born_Day2:
80250 '6ボタンから ９に移動　ここまで
80260 '9で上を押して何もしない
80270 case 9:
80280 '何もしない
80290 No=9
80300 pause 200:goto Jyoushi_Input_Born_Day2:
80310 '9で上を押しても何もしない　ここまで
80320 '上　 0ボタンから2ボタン
80330 'sp_on 6,1:1
80340 'sp_on 8,1:5
80350 'sp_on 7,1:7
80360 case 0:
80370 No=2:sp_on 13,0:sp_on 9,1:
80380 pause 200:goto Jyoushi_Input_Born_Day2:
80390 '上  0ボタンから2ボタン　ここまで
80400 '2から５になる 上
80410 case 2:
80420 No=5:sp_on 8,1:sp_on 9,0:
80430 pause 200:goto Jyoushi_Input_Born_Day2:
80440 case 5:
80450 No=8:sp_on 7,1:sp_on 8,0
80460 pause 200:goto Jyoushi_Input_Born_Day2:
80470 case 8:
80480 pause 200:goto Jyoushi_Input_Born_Day2:
80490 case 1:
80500 No=4:sp_on 5,1:sp_on 6,0
80510 pause 200:goto Jyoushi_Input_Born_Day2:
80520 case 4:
80530 No=7:sp_on 4,1:sp_on 5,0
80540 pause 200:goto Jyoushi_Input_Born_Day2:
80550 case 7:
80560 pause 200:goto Jyoushi_Input_Born_Day2:
80570 end select
80580 endif
80590 '左３　ここまで
80600 '下の矢印
80610 '中央 2
80620 if ((y=1) or (key$ = chr$(31))) then
80630 select case No
80640 '9から６に下げる
80650 case 9:
80660 No=6:sp_on 11,1:sp_on 10,0
80670 pause 200:goto Jyoushi_Input_Born_Day2:
80680 '6から３に下げる
80690 case 6:
80700 No=3:sp_on 12,1:sp_on 11,0
80710 pause 200:goto Jyoushi_Input_Born_Day2:
80720 '3から０ｋに変える
80730 case 3:
80740 No=-1:sp_on 14,1:sp_on 12,0
80750 pause 200:goto Jyoushi_Input_Born_Day2:
80760 'Okから下のボタンを押しても何もしない
80770 case -1:
80780 pause 200:goto Jyoushi_Input_Born_Day2:
80790 case 8:
80800 No=5:sp_on 8,1:sp_on 7,0
80810 pause 200:goto Jyoushi_Input_Born_Day2:
80820 case 5:
80830 No=2:sp_on 9,1:sp_on 8,0
80840 pause 200:goto Jyoushi_Input_Born_Day2:
80850 case 2:
80860 No=0:sp_on 13,1:sp_on 9,0
80870 pause 200:goto Jyoushi_Input_Born_Day2:
80880 case 0:
80890 pause 200:goto Jyoushi_Input_Born_Day2:
80900 case 7:
80910 No=4:sp_on 5,1:sp_on 4,0
80920 pause 200:goto Jyoushi_Input_Born_Day2:
80930 case 4:
80940 No=1:sp_on 6,1:sp_on 5,0
80950 pause 200:goto Jyoushi_Input_Born_Day2:
80960 case 1:
80970 pause 200:goto Jyoushi_Input_Born_Day2:
80980 end select
80990 endif
81000 '左へボタン 十字キー　左　or 　カーソル左
81010 if ((y2 = -1) or (key$ = chr$(29))) then
81020 select case No
81030 'Ok ボタン  Okから　左　０に行く
81040 case -1:
81050 No=0:sp_on 13,1:sp_on 14,0
81060 pause 200:goto Jyoushi_Input_Born_Day2:
81070 '0 ボタン  左　何もしない
81080 case 0:
81090 pause 200:goto Jyoushi_Input_Born_Day2:
81100 case 3:
81110 No=2:sp_on 9,1:sp_on 12,0:
81120 pause 200:goto Jyoushi_Input_Born_Day2:
81130 case 2:
81140 No=1:sp_on 6,1:sp_on 9,0:
81150 pause 200:goto Jyoushi_Input_Born_Day2:
81160 case 1:
81170 pause 200:goto Jyoushi_Input_Born_Day2:
81180 case 6:
81190 No=5:sp_on 8,1:sp_on 11,0
81200 pause 200:goto Jyoushi_Input_Born_Day2:
81210 case 5:
81220 No=4:sp_on 5,1:sp_on 8,0
81230 pause 200:goto Jyoushi_Input_Born_Day2:
81240 case 4:
81250 pause 200:goto Jyoushi_Input_Born_Day2:
81260 case 9:
81270 No=8:sp_on 7,1:sp_on 10,0
81280 pause 200:goto Jyoushi_Input_Born_Day2:
81290 case 8:
81300 No=7:sp_on 4,1:sp_on 7,0
81310 pause 200:goto Jyoushi_Input_Born_Day2:
81320 case 7:
81330 pause 200:goto Jyoushi_Input_Born_Day2:
81340 end select
81350 endif
81360 '右  十字キー　右　or カーソル　右
81370 if ((y2 = 1) or (key$ = chr$(28))) then
81380 select case No
81390 '0ボタンからokボタン右に移動
81400 case 0:
81410 No=-1:sp_on 14,1:sp_on 13,0
81420 pause 200:goto Jyoushi_Input_Born_Day2:
81430 '0ボタンからokボタン 右に移動　ここまで
81440 'OKボタンで右を押して何もしない
81450 case -1:
81460 pause 200:goto Jyoushi_Input_Born_Day2:
81470 case 1:
81480 No=2:sp_on 9,1:sp_on 6,0
81490 pause 200:goto Jyoushi_Input_Born_Day2:
81500 case 2:
81510 No=3:sp_on 12,1:sp_on 9,0
81520 pause 200:goto Jyoushi_Input_Born_Day2:
81530 case 3:
81540 pause 200:goto Jyoushi_Input_Born_Day2:
81550 case 4:
81560 No=5:sp_on 8,1:sp_on 5,0
81570 pause 200:goto Jyoushi_Input_Born_Day2:
81580 case 5:
81590 No=6:sp_on 11,1:sp_on 8,0
81600 pause 200:goto Jyoushi_Input_Born_Day2:
81610 case 7:
81620 No=8:sp_on 7,1:sp_on 4,0
81630 pause 200:goto Jyoushi_Input_Born_Day2:
81640 case 8:
81650 No=9:sp_on 10,1:sp_on 7,0
81660 pause 200:goto Jyoushi_Input_Born_Day2:
81670 case 9:
81680 pause 200:goto Jyoushi_Input_Born_Day2:
81690 case 6:
81700 pause 200:goto Jyoushi_Input_Born_Day2:
81710 end select
81720 'Okから右ボタンを押して何もしない ここまで
81730 endif
81740 '十字キー　ここまで
81750 '右の丸ボタンを押したとき
81760 if ((bg = 2) or (key$ = chr$(13))) then
81770 'count :決定ボタンを押した回数
81780 select case (count)
81790 '1桁目入力
81800 case 0:
81810 count = 1:
81820 if (No = -1) then
81830 '1桁目　OKでは何もしない
81840 No=c
81850 'goto Jyoushi_Input_Born_Day2:
81860 else
81870 'ok以外のボタンを押したとき
81880 buf_day = No:buf_Day$ = str$(No)
81890 buf_Jyoushi_Born_Day(2)=buf_day
81900 c=No
81910 locate 1,3
81920 print "                                      "
81930 color RGB(255,255,255)
81940 locate 1,3
81950 print "上司の生まれた日(1日~31日):" + buf_Day$
81960 endif
81970 'check2:
81980 'if (buf_day >= 1 and buf_day <= 9) then
81990 'sp_on 14,0
82000 'goto complate_jyoushi:
82010 'else
82020 'sp_on 14,0
82030 goto Jyoushi_Input_Born_Day2:
82040 'end
82050 'endif
82060 case 1:
82070 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
82080 count = 2:
82090 'locate 2,3
82100 'color RGB(255,255,255)
82110 'print "生まれた日(1日~31日):";buf_Day$
82120 'Okボタンを押したときの処理
82130 '入力値　10未満のとき
82140 'buf_day = c * 10 + No
82150 if (No = -1) then
82160 c=buf_day:No=0
82170 'buf_day = c
82180 buf_Day$ = str$(buf_day)
82190 '10以下のとき
82200 'if (buf_day < 10) then
82210 sp_on 14,0
82220 goto complate_jyoushi:
82230 'end
82240 'endif
82250 else
82260 'c=No
82270 buf_day = c * 10 + No
82280 buf_Day$ = str$(buf_day)
82290 'buf_day = c:buf_Day$=str$(buf_day)
82300 buf_Jyoushi_Born_Day(2)=buf_day
82310 locate 1,3
82320 print "                                           "
82330 locate 1,3
82340 color Rgb(255,255,255)
82350 print "上司の生まれた日(1日~31日):" + buf_Day$
82360 goto Jyoushi_Input_Born_Day2:
82370 'goto
82380 endif
82390 'endif
82400 '生まれた日　2桁目の数字　or 1桁の数字 + ok
82410 case 2:
82420 'buf_day = c * 10 + No
82430 'buf_Jyoushi_Born_Day(2)=buf_day
82440 'locate 1,3
82450 'print "                                      "
82460 'locate 1,3
82470 'locate 2,3
82480 'print "生まれた日(1日〜31日):";buf_Day
82490 'No=-1:ok ボタンを押したとき
82500 if (No = -1) then
82510 'if ((buf_day > 0) and (buf_day < 32)) then
82520 No=0
82530 sp_on 14,0
82540 goto complate_jyoushi:
82550 'end
82560 else
82570 goto Jyoushi_Input_Born_Day2:
82580 'endif
82590 'Okボタン以外を押したとき
82600 'else
82610 'c=val(buf_Day$)
82620 'buf_day = c * 10 + No
82630 'buf_Jyoushi_Born_Day(2) = buf_day
82640 'buf_Day$ = str$(buf_day)
82650 'locate 1,3
82660 'print "上司の生まれた日(1日~31日):";buf_Day$
82670 'goto Jyoushi_Input_Born_Day2:
82680 endif
82690 'case 3:
82700 'count=4
82710 'c=val(buf_day$)
82720 'buf_day=c*10+No
82730 'buf_day$=str$(buf_day)
82740 'locate 2,3
82750 'print "生まれた日を入れてください:";buf_day$
82760 'year=val(buf_year$)
82770 'if (No = -1) then
82780 'goto Jyoushi_Input_Born_Day:
82790 'sp_on 14,0:
82800 'goto complate_jyoushi:
82810 'else
82820 'goto Jyoushi_Input_Born_Month2:
82830 'endif
82840 'case 4:
82850 'bufyear=buf_year
82860 'if (No=-1) then
82870 'buf_day = val(buf_day$)
82880 'bufday = buf_day
82890 'sp_on 14,0
82900 'goto Jyoushi_Input_Born_Day2:
82910 'else
82920 'goto Jyoushi_Input_Born_Day2:
82930 'endif
82940 end select
82950 endif
82960 if (bg2=2) then
82970 select case count2
82980 case 0:
82990 if (No=-1) then
83000 buf_day=0:buf_Day$="**":No=0
83010 if (buf_day >= 1 and buf_day <= 31) then
83020 count=0
83030 buf_day=0:buf_Day$ = "**"
83040 goto rewrite_day3:
83050 else
83060 buf_day=0:buf_Day$ = "**"
83070 ui_msg"値が範囲外です"
83080 endif
83090 goto rewrite_day3:
83100 else
83110 goto rewrite_day3:
83120 endif
83130 rewrite_day3:
83140 locate 2,3
83150 color rgb(255,255,255)
83160 print "                                      "
83170 locate 2,3
83180 print "生まれた日(1日~31日):" + buf_Day$
83190 goto Jyoushi_Input_Born_Day2:
83200 end select
83210 endif
83220 '--------------------------------------------'
83230 'locate 2,0:color rgb(255,0,0)
83240 'print "上司の生まれた年代を入力"
83250 'color rgb(255,255,255)
83260 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
83270 'locate 2,4:Input "上司の生まれた年:",born_year
83280 '誕生日データーを配列に代入
83290 'buf_Jyoushi_Born_Year:上司の生まれた年代
83300 'buf_Jyoushi_Born_Day(0) = born_year
83310 'born_year = 0
83320 '---------------------------------------------'
83330 'goto Jyoushi_born_month:
83340 '1-2.生まれた月を入力
83350 'Jyoushi_born_month:
83360 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
83370 'init "kb:4"
83380 'locate 2,1:
83390 'color rgb(255,0,0)
83400 'print "上司の生まれた月入力"
83410 'color rgb(255,255,255)
83420 'locate 2,4:print "生まれた月を入力してください"
83430 'locate 2,5
83440 'Input "上司の生まれ月:",born_month
83450 'buf_Jyoushi_Born_Day(1) = born_month
83460 'born_month = 0
83470 'goto Jyoushi_born_day:
83480 'buf_Jyoushi_Born_day
83490 '1-3.生まれた日を入力
83500 'Jyoushi_born_day:
83510 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
83520 'init "kb:4"
83530 'locate 2,1:color rgb(255,0,0)
83540 'print "上司の生まれた日　入力"
83550 'locate 2,4:color rgb(255,255,255)
83560 'print "生まれた日を入力してください"
83570 'locate 2,5
83580 'Input "上司の生まれた日:",born_day
83590 'buf_Jyoushi_Born_Day(2) = born_day
83600 'born_day = 0
83610 'goto buka_born_year:
83620 '2.部下の誕生日入力
83630 '2-1.生まれた年を入力
83640 'buka_born_year:
83650 'cls 3:gload Gazo$+"Screen1.png",0,0,0
83660 'init "kb:2"
83670 'locate 1,1:color rgb(255,0,0)
83680 'print "部下の生まれた年代入力"
83690 'locate 0,4:color rgb(255,255,255)
83700 'print "部下の生まれた年（西暦4桁）を入れてください"
83710 'locate 0,5
83720 'Input "部下の生まれた年(西暦4桁):",born_year
83730 'buf_Buka_Born_Day(0) = born_year
83740 'born_year = 0
83750 '2-2.生まれた月を入力
83760 'buka_born_month:
83770 'cls 3:gload Gazo$+"Screen1.png",0,0,0
83780 'init "kb:2"
83790 'locate 2,1:color rgb(255,0,0)
83800 'print "部下の生まれた月 入力"
83810 'locate 2,4:color rgb(255,255,255)
83820 'print "部下の生まれた月を入力してください"
83830 'locate 2,5:Input "部下の生まれた月:",born_month
83840 'buf_Buka_Born_Day(1) = born_month
83850 '2-3.生まれた日を入力
83860 'buka_born_day:
83870 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
83880 'init "kb:2"
83890 'locate 2,1:color rgb(255,0,0)
83900 'print "生まれた日入力"
83910 'color rgb(255,255,255)
83920 'locate 2,4:print "生まれた日を入力してください"
83930 'locate 2,5:Input "部下の生まれた日:",born_day
83940 'buf_Buka_Born_Day(2) = born_day
83950 'born_day=0:goto Result_Business_Aisyou:
83960 '--------------------------------------------'
83970 complate_jyoushi:
83980 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
83990 buf_Jyoushi = Kabara_Num(a,b,c)
84000 a_1=buf_Jyoushi
84010 goto Buka_Input_Seireki:
84020 '--------------------------------------------'
84030 '部下'
84040 '1.部下の生まれた年代'
84050 Buka_Input_Seireki:
84060 cls 3:play "":count=0:count2=0
84070 init"kb:4"
84080 'No=-1:Okのとき
84090 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
84100 for i=0 to 3
84110 buf_Buka_Born_Day(i)=0
84120 next i
84130 '****************************************************************************************************
84140 'WUXG(1920x1200)の時ここから
84150 '****************************************************************************************************
84160 gload Gazo$ + "Screen2.png",0,0,0
84170 gload Gazo$ + "downscreen.png",0,0,800
84180 '****************************************************************************************************
84190 'WUXG(1920x1200)の時ここまで
84200 '****************************************************************************************************
84210 'Init"kb:2"
84220 '音声ファイル再生 2023.06.07
84230 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
84240 font 48
84250 locate 0,1
84260 '文字色：黒　 color rgb(0,0,0)
84270 color rgb(255,255,255)
84280 print "部下の生まれた年代を入れて下さい" + chr$(13)
84290 color rgb(255,255,255)
84300 locate 1,3
84310 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
84320 color rgb(255,255,255)
84330 'locate 4,6:print ":7"
84340 'locate 9,6:print ":8"
84350 'locate 12,6:print ":9"
84360 'locate 4,6
84370 'print ":7  :8  :9" + chr$(13)
84380 'color rgb(255,255,255)
84390 'locate 4,8
84400 'print ":4  :5  :6" + chr$(13)
84410 'color rgb(255,255,255)
84420 'locate 4,10
84430 'print ":1  :2  :3" + chr$(13)
84440 'locate 4,12
84450 'print "    :0"
84460 'locate 12,12
84470 'color rgb(0,0,255)
84480 'print ":Ok"
84490 sp_on 4,0: sp_on 5,0:sp_on 6,0
84500 sp_on 7,0:sp_on 8,0:sp_on 9,0
84510 sp_on 10,0:sp_on 11,0:sp_on 12,0
84520 sp_on 13,0:sp_on 14,1
84530 Buka_Input_Seireki2:
84540 key$="":bg=0:y=0:y2=0:bg2=0:
84550 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
84560 key$ = inkey$
84570 bg = strig(1)
84580 y = stick(1)
84590 y2 = stick(0)
84600 bg2=strig(0)
84610 pause 200
84620 wend
84630 '十字キー　ここから
84640 '上の矢印　または、十字キー上
84650 if ((y = -1) or (key$ = chr$(30))) then
84660 select case No
84670 'No=-1:okのとき:初期の状態
84680 '0kボタンから３に移動
84690 '上に行く 処理
84700 case -1:
84710 No=3:sp_on 12,1:sp_on 14,0
84720 pause 200:goto Buka_Input_Seireki2:
84730 '選択肢:3
84740 '3ボタンから 6に移動
84750 case 3:
84760 No=6:sp_on 12,0:sp_on 11,1
84770 pause 200:goto Buka_Input_Seireki2:
84780 '6ボタンから ９に移動
84790 case 6:
84800 No=9:sp_on 10,1:sp_on 11,0
84810 pause 200:goto Buka_Input_Seireki2:
84820 '6ボタンから ９に移動　ここまで
84830 '9で上を押して何もしない
84840 case 9:
84850 '何もしない
84860 No=9
84870 pause 200:goto Buka_Input_Seireki2:
84880 '9で上を押しても何もしない　ここまで
84890 '上　 0ボタンから2ボタン
84900 'sp_on 6,1:1
84910 'sp_on 8,1:5
84920 'sp_on 7,1:7
84930 case 0:
84940 No=2:sp_on 13,0:sp_on 9,1:
84950 pause 200:goto Buka_Input_Seireki2:
84960 '上  0ボタンから2ボタン　ここまで
84970 '2から５になる 上
84980 case 2:
84990 No=5:sp_on 8,1:sp_on 9,0:
85000 pause 200:goto Buka_Input_Seireki2:
85010 case 5:
85020 No=8:sp_on 7,1:sp_on 8,0
85030 pause 200:goto Buka_Input_Seireki2:
85040 case 8:
85050 pause 200:goto Buka_Input_Seireki2:
85060 case 1:
85070 No=4:sp_on 5,1:sp_on 6,0
85080 pause 200:goto Buka_Input_Seireki2:
85090 case 4:
85100 No=7:sp_on 4,1:sp_on 5,0
85110 pause 200:goto Buka_Input_Seireki2:
85120 case 7:
85130 pause 200:goto Buka_Input_Seireki2:
85140 end select
85150 endif
85160 '左３　ここまで
85170 '下の矢印
85180 '中央 2
85190 if ((y=1) or (key$ = chr$(31))) then
85200 select case No
85210 '9から６に下げる
85220 case 9:
85230 No=6:sp_on 11,1:sp_on 10,0
85240 pause 200:goto Buka_Input_Seireki2:
85250 '6から３に下げる
85260 case 6:
85270 No=3:sp_on 12,1:sp_on 11,0
85280 pause 200:goto Buka_Input_Seireki2:
85290 '3から０ｋに変える
85300 case 3:
85310 No=-1:sp_on 14,1:sp_on 12,0
85320 pause 200:goto Buka_Input_Seireki2:
85330 'Okから下のボタンを押しても何もしない
85340 case -1:
85350 pause 200:goto Buka_Input_Seireki2:
85360 case 8:
85370 No=5:sp_on 8,1:sp_on 7,0
85380 pause 200:goto Buka_Input_Seireki2:
85390 case 5:
85400 No=2:sp_on 9,1:sp_on 8,0
85410 pause 200:goto Buka_Input_Seireki2:
85420 case 2:
85430 No=0:sp_on 13,1:sp_on 9,0
85440 pause 200:goto Buka_Input_Seireki2:
85450 case 0:
85460 pause 200:goto Buka_Input_Seireki2:
85470 case 7:
85480 No=4:sp_on 5,1:sp_on 4,0
85490 pause 200:goto Buka_Input_Seireki2:
85500 case 4:
85510 No=1:sp_on 6,1:sp_on 5,0
85520 pause 200:goto Buka_Input_Seireki2:
85530 case 1:
85540 pause 200:goto Buka_Input_Seireki2:
85550 end select
85560 endif
85570 '左へボタン 十字キー　左　or 　カーソル左
85580 if ((y2 = -1) or (key$ = chr$(29))) then
85590 select case No
85600 'Ok ボタン  Okから　左　０に行く
85610 case -1:
85620 No=0:sp_on 13,1:sp_on 14,0
85630 pause 200:goto Buka_Input_Seireki2:
85640 '0 ボタン  左　何もしない
85650 case 0:
85660 pause 200:goto Buka_Input_Seireki2:
85670 case 3:
85680 No=2:sp_on 9,1:sp_on 12,0:
85690 pause 200:goto Buka_Input_Seireki2:
85700 case 2:
85710 No=1:sp_on 6,1:sp_on 9,0:
85720 pause 200:goto Buka_Input_Seireki2:
85730 case 1:
85740 pause 200:goto Buka_Input_Seireki2:
85750 case 6:
85760 No=5:sp_on 8,1:sp_on 11,0
85770 pause 200:goto Buka_Input_Seireki2:
85780 case 5:
85790 No=4:sp_on 5,1:sp_on 8,0
85800 pause 200:goto Buka_Input_Seireki2:
85810 case 4:
85820 pause 200:goto Buka_Input_Seireki2:
85830 case 9:
85840 No=8:sp_on 7,1:sp_on 10,0
85850 pause 200:goto Buka_Input_Seireki2:
85860 case 8:
85870 No=7:sp_on 4,1:sp_on 7,0
85880 pause 200:goto Buka_Input_Seireki2:
85890 case 7:
85900 pause 200:goto Buka_Input_Seireki2:
85910 end select
85920 endif
85930 '右  十字キー　右　or カーソル　右
85940 if ((y2 = 1) or (key$ = chr$(28))) then
85950 select case No
85960 '0ボタンからokボタン右に移動
85970 case 0:
85980 No=-1:sp_on 14,1:sp_on 13,0
85990 pause 200:goto Buka_Input_Seireki2:
86000 '0ボタンからokボタン 右に移動　ここまで
86010 'OKボタンで右を押して何もしない
86020 case -1:
86030 pause 200:goto Buka_Input_Seireki2:
86040 case 1:
86050 No=2:sp_on 9,1:sp_on 6,0
86060 pause 200:goto Buka_Input_Seireki2:
86070 case 2:
86080 No=3:sp_on 12,1:sp_on 9,0
86090 pause 200:goto Buka_Input_Seireki2:
86100 case 3:
86110 pause 200:goto Buka_Input_Seireki2:
86120 case 4:
86130 No=5:sp_on 8,1:sp_on 5,0
86140 pause 200:goto Buka_Input_Seireki2:
86150 case 5:
86160 No=6:sp_on 11,1:sp_on 8,0
86170 pause 200:goto Buka_Input_Seireki2:
86180 case 7:
86190 No=8:sp_on 7,1:sp_on 4,0
86200 pause 200:goto Buka_Input_Seireki2:
86210 case 8:
86220 No=9:sp_on 10,1:sp_on 7,0
86230 pause 200:goto Buka_Input_Seireki2:
86240 case 9:
86250 pause 200:goto Buka_Input_Seireki2:
86260 case 6:
86270 pause 200:goto Buka_Input_Seireki2:
86280 end select
86290 'Okから右ボタンを押して何もしない ここまで
86300 endif
86310 '十字キー　ここまで
86320 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
86330 'ここからコメント
86340 '右の丸ボタン決定を押した数:count
86350 'if ((bg=2) or (key$=chr$(13))) then
86360 'select case count
86370 'case 0:
86380 'count=1
86390 'if (No = -1) then
86400 'count = 0
86410 'Okボタンを押したとき
86420 '
86430 'goto Buka_Input_Seireki2:
86440 'else
86450 'Okボタン以外が押されたとき
86460 'if (No >= 1 and No <= 2) then
86470 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
86480 'buf_buka_year = No
86490 'buf_Buka_Born_Day(0) = bufyear
86500 'locate 2,3
86510 'color rgb(255,255,255)
86520 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
86530 'goto Buka_Input_Seireki2:
86540 'else
86550 'count=0
86560 'ui_msg"数字が範囲外になります。"
86570 'buf_buka_year$ ="":buf_buka_year=0
86580 'goto Buka_Input_Seireki2:
86590 'endif
86600 'endif
86610 'case 1:
86620 'count = 2
86630 'if (No = -1) then
86640 'count = 1
86650 'goto Buka_Input_Seireki2:
86660 'else
86670 'b = val(buf_buka_year$)
86680 'buf_buka_year = b * 10 + No
86690 'buf_buka_year$ = str$(buf_buka_year)
86700 'buf_Buka_Born_Day(0) = bufyear
86710 'locate 1,3
86720 'color rgb(255,255,255)
86730 'print "                                                                "
86740 'locate 1,3
86750 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
86760 'if (No = -1) then
86770 'count=1
86780 'goto Buka_Input_Seireki2:
86790 'endif
86800 'case 2:
86810 'count = 3
86820 'if (No = -1) then
86830 'count = 2
86840 'buf_Buka_Born_Day(0)=bufyear
86850 'goto Buka_Input_Seireki2:
86860 'else
86870 'b = val(buf_buka_year$)
86880 'buf_buka_year = b*10 + No
86890 'buf_buka_year$ = str$(buf_buka_year)
86900 'locate 1,3
86910 'color rgb(255,255,255)
86920 'print "                                        "
86930 'locate 1,3
86940 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
86950 'goto Buka_Input_Seireki2:
86960 'endif
86970 'case 3:
86980 'count=4
86990 'if (No = -1) then
87000 'count=3
87010 'goto Buka_Input_Seireki2:
87020 'else
87030 'b = buf_buka_year
87040 'buf_buka_year = b * 10 + No
87050 'buf_buka_year$=str$(buf_buka_year)
87060 'locate 1,3
87070 'color RGB(255,255,255)
87080 'print "                                      "
87090 'locate 1,3
87100 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
87110 'buf_year=val(buf_year$)
87120 'year=val(buf_year$)
87130 'if (No=-1) then
87140 'goto Input_Born_Month:
87150 'else
87160 'goto Buka_Input_Seireki2:
87170 'endif
87180 'case 4:
87190 'bufyear=buf_year
87200 'if (No=-1) then
87210 'buf_year = val(buf_year$)
87220 'bufyear = buf_year
87230 'sp_on 14,0
87240 'goto Buka_Input_Born_Month:
87250 'else
87260 'goto Buka_Input_Seireki2:
87270 'endif
87280 'end select
87290 'endif
87300 'if (bg2 = 2) then
87310 'select case count2
87320 'case 0:
87330 'if (No = -1) then
87340 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
87350 'count=0
87360 'locate 1,3
87370 'color rgb(255,255,255)
87380 'print "                                      "
87390 'locate 1,3
87400 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
87410 'goto Buka_Input_Seireki2:
87420 'else
87430 '(buf_year=0) then
87440 'buf_buka_year=0:buf_buka_year$="****"
87450 'goto Buka_Input_Seireki2:
87460 'endif
87470 'endif
87480 'end select
87490 'endif
87500 'end
87510 'ここまでコメント
87520 '================================================================
87530 if ((bg=2) or (key$=chr$(13))) then
87540 select case count
87550 case 0:
87560 count = 1
87570 if (No=-1) then
87580 count = 0
87590 buf_Buka_Born_Day(0) = No
87600 'Okボタンを押したとき
87610 goto Buka_Input_Seireki2:
87620 else
87630 'Okボタン以外が押されたとき
87640 if (No>=1 and No<=2) then
87650 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
87660 buf_buka_year = No
87670 buf_Buka_Born_Day(0) = No
87680 locate 1,3
87690 color rgb(255,255,255)
87700 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
87710 goto Buka_Input_Seireki2:
87720 else
87730 count=0
87740 ui_msg"数字が範囲外になります。"
87750 buf_buka_year$="":buf_buka_year=0
87760 goto Buka_Input_Seireki2:
87770 endif
87780 endif
87790 case 1:
87800 count = 2
87810 if (No = -1) then
87820 count = 1
87830 goto Buka_Input_Seireki2:
87840 else
87850 'b = val(buf_buka_year$)
87860 buf_buka_year = a * 10 + No
87870 b=buf_buka_year
87880 buf_buka_year$ = str$(buf_buka_year)+"**"
87890 buf_Buka_Born_Day(0)=buf_buka_year
87900 locate 1,3
87910 color rgb(255,255,255)
87920 print "                                                                "
87930 locate 1,3
87940 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
87950 'if (No = -1) then
87960 'count=1
87970 goto Buka_Input_Seireki2:
87980 endif
87990 case 2:
88000 count=3
88010 if (No=-1) then
88020 count =2:No=0
88030 goto Buka_Input_Seireki2:
88040 else
88050 'b = val(buf_buka_year$)
88060 buf_buka_year = b * 10 + No
88070 c = buf_buka_year
88080 buf_buka_year$ = str$(buf_buka_year) + "*"
88090 buf_Buka_Born_Day(0) = buf_buka_year
88100 locate 1,3
88110 color rgb(255,255,255)
88120 print "                                        "
88130 locate 1,3
88140 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
88150 goto Buka_Input_Seireki2:
88160 endif
88170 case 3:
88180 count=4
88190 if (No = -1) then
88200 'count=3:No=0
88210 goto Buka_Input_Seireki2:
88220 else
88230 'b = val(buf_buka_year$)
88240 buf_buka_year=c * 10 + No
88250 buf_buka_year$=str$(buf_buka_year)
88260 buf_Buka_Born_Day(0)=buf_buka_year
88270 locate 1,3
88280 color RGB(255,255,255)
88290 print "                                      "
88300 locate 1,3
88310 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
88320 buf_buka_year=val(buf_buka_year$)
88330 'year=val(buf_year$)
88340 'if (No=-1) then
88350 'goto Input_Born_Month:
88360 'else
88370 goto Buka_Input_Seireki2:
88380 endif
88390 case 4:
88400 'bufyear=buf_year
88410 if (No = -1) then
88420 buf_buka_year = val(buf_buka_year$)
88430 buf_Buka_Born_Day(0)=buf_buka_year
88440 sp_on 14,0
88450 goto Buka_Input_Born_Month:
88460 else
88470 goto Buka_Input_Seireki2:
88480 endif
88490 end select
88500 endif
88510 '================================================================
88520 'ここにコピーする。
88530 '================================================================
88540 'Input"部下の生れた年代(4桁,〜2025年):",year
88550 'if year > 2025 then goto Jyoushi_Input_Seireki:
88560 'if year = 123 then cls 3:cls 4:goto Main_Screen:
88570 '"4桁目"
88580 'bufyear4 = fix(year / 1000)
88590 '"3桁目"
88600 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
88610 '"2桁目"
88620 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
88630 '"1桁目"
88640 'bufyear1 = fix((year - ((bufyear4*
88650 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
88660 '1.部下の生まれた年代'
88670 '2.部下の生まれた月'
88680 Buka_Input_Born_Month:
88690 cls 3:play "":count=0:count2=0
88700 'No=-1:Okのとき
88710 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
88720 for i=0 to 1
88730 buf_month(i)=0
88740 next i
88750 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
88760 '****************************************************************************************************
88770 'WUXG(1920x1200)の時ここから
88780 '****************************************************************************************************
88790 gload Gazo$ + "Screen2.png",0,0,0
88800 gload Gazo$ + "downscreen.png",0,0,800
88810 '****************************************************************************************************
88820 'WUXG(1920x1200)の時ここから
88830 '****************************************************************************************************
88840 'Init"kb:4"
88850 '音声ファイル再生 2023.06.07
88860 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
88870 '****************************************************************************************************
88880 'WUXG(1920x1200)の時ここから
88890 '****************************************************************************************************
88900 font 48
88910 '****************************************************************************************************
88920 'WUXG(1920x1200)の時ここまで
88930 '****************************************************************************************************
88940 locate 0,1
88950 '文字色：黒　 color rgb(0,0,0)
88960 '文字色:白
88970 color rgb(255,255,255)
88980 print "部下の生まれた月を入れて下さい" + chr$(13)
88990 '文字色:白
89000 color rgb(255,255,255)
89010 locate 1,3
89020 '文字色:白
89030 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
89040 color rgb(255,255,255)
89050 'locate 4,6:print ":7"
89060 'locate 9,6:print ":8"
89070 'locate 12,6:print ":9"
89080 'locate 4,6
89090 '文字色:赤
89100 'print ":7  :8  :9" + chr$(13)
89110 'color rgb(255,255,255)
89120 'locate 4,8
89130 'print ":4  :5  :6" + chr$(13)
89140 'color rgb(255,255,255)
89150 'locate 4,10
89160 'print ":1  :2  :3" + chr$(13)
89170 'locate 4,12
89180 'print "    :0"
89190 'locate 12,12
89200 'color rgb(0,0,255)
89210 'print ":Ok"
89220 sp_on 4,0: sp_on 5,0:sp_on 6,0
89230 sp_on 7,0:sp_on 8,0:sp_on 9,0
89240 sp_on 10,0:sp_on 11,0:sp_on 12,0
89250 sp_on 13,0:sp_on 14,1
89260 Buka_Input_Born_Month2:
89270 key$="":bg=0:y=0:y2=0:bg2=0
89280 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
89290 key$ = inkey$
89300 bg = strig(1)
89310 y = stick(1)
89320 y2 = stick(0)
89330 bg2 = strig(0)
89340 pause 200
89350 wend
89360 '十字キー　ここから
89370 '上の矢印　または、十字キー上
89380 if ((y = -1) or (key$ = chr$(30))) then
89390 select case No
89400 'No=-1:okのとき:初期の状態
89410 '0kボタンから３に移動
89420 '上に行く 処理
89430 case -1:
89440 No=3:sp_on 12,1:sp_on 14,0
89450 pause 200:goto Buka_Input_Born_Month2:
89460 '選択肢:3
89470 '3ボタンから 6に移動
89480 case 3:
89490 No=6:sp_on 12,0:sp_on 11,1
89500 pause 200:goto Buka_Input_Born_Month2:
89510 '6ボタンから ９に移動
89520 case 6:
89530 No=9:sp_on 10,1:sp_on 11,0
89540 pause 200:goto Buka_Input_Born_Month2:
89550 '6ボタンから ９に移動　ここまで
89560 '9で上を押して何もしない
89570 case 9:
89580 '何もしない
89590 No=9
89600 pause 200:goto Buka_Input_Born_Month2:
89610 '9で上を押しても何もしない　ここまで
89620 '上　 0ボタンから2ボタン
89630 'sp_on 6,1:1
89640 'sp_on 8,1:5
89650 'sp_on 7,1:7
89660 case 0:
89670 No=2:sp_on 13,0:sp_on 9,1:
89680 pause 200:goto Buka_Input_Born_Month2:
89690 '上  0ボタンから2ボタン　ここまで
89700 '2から５になる 上
89710 case 2:
89720 No=5:sp_on 8,1:sp_on 9,0:
89730 pause 200:goto Buka_Input_Born_Month2:
89740 case 5:
89750 No=8:sp_on 7,1:sp_on 8,0
89760 pause 200:goto Buka_Input_Born_Month2:
89770 case 8:
89780 pause 200:goto Buka_Input_Born_Month2:
89790 case 1:
89800 No=4:sp_on 5,1:sp_on 6,0
89810 pause 200:goto Buka_Input_Born_Month2:
89820 case 4:
89830 No=7:sp_on 4,1:sp_on 5,0
89840 pause 200:goto Buka_Input_Born_Month2:
89850 case 7:
89860 pause 200:goto Buka_Input_Born_Month2:
89870 end select
89880 endif
89890 '左３　ここまで
89900 '下の矢印
89910 '中央 2
89920 if ((y=1) or (key$ = chr$(31))) then
89930 select case No
89940 '9から６に下げる
89950 case 9:
89960 No=6:sp_on 11,1:sp_on 10,0
89970 pause 200:goto Buka_Input_Born_Month2:
89980 '6から３に下げる
89990 case 6:
90000 No=3:sp_on 12,1:sp_on 11,0
90010 pause 200:goto Buka_Input_Born_Month2:
90020 '3から０ｋに変える
90030 case 3:
90040 No=-1:sp_on 14,1:sp_on 12,0
90050 pause 200:goto Buka_Input_Born_Month2:
90060 'Okから下のボタンを押しても何もしない
90070 case -1:
90080 pause 200:goto Buka_Input_Born_Month2:
90090 case 8:
90100 No=5:sp_on 8,1:sp_on 7,0
90110 pause 200:goto Buka_Input_Born_Month2:
90120 case 5:
90130 No=2:sp_on 9,1:sp_on 8,0
90140 pause 200:goto Buka_Input_Born_Month2:
90150 case 2:
90160 No=0:sp_on 13,1:sp_on 9,0
90170 pause 200:goto Buka_Input_Born_Month2:
90180 case 0:
90190 pause 200:goto Buka_Input_Born_Month2:
90200 case 7:
90210 No=4:sp_on 5,1:sp_on 4,0
90220 pause 200:goto Buka_Input_Born_Month2:
90230 case 4:
90240 No=1:sp_on 6,1:sp_on 5,0
90250 pause 200:goto Buka_Input_Born_Month2:
90260 case 1:
90270 pause 200:goto Buka_Input_Born_Month2:
90280 end select
90290 endif
90300 '左へボタン 十字キー　左　or 　カーソル左
90310 if ((y2 = -1) or (key$ = chr$(29))) then
90320 select case No
90330 'Ok ボタン  Okから　左　０に行く
90340 case -1:
90350 No=0:sp_on 13,1:sp_on 14,0
90360 pause 200:goto Buka_Input_Born_Month2:
90370 '0 ボタン  左　何もしない
90380 case 0:
90390 pause 200:goto Buka_Input_Born_Month2:
90400 case 3:
90410 No=2:sp_on 9,1:sp_on 12,0:
90420 pause 200:goto Buka_Input_Born_Month2:
90430 case 2:
90440 No=1:sp_on 6,1:sp_on 9,0:
90450 pause 200:goto Buka_Input_Born_Month2:
90460 case 1:
90470 pause 200:goto Buka_Input_Born_Month2:
90480 case 6:
90490 No=5:sp_on 8,1:sp_on 11,0
90500 pause 200:goto Buka_Input_Born_Month2:
90510 case 5:
90520 No=4:sp_on 5,1:sp_on 8,0
90530 pause 200:goto Buka_Input_Born_Month2:
90540 case 4:
90550 pause 200:goto Buka_Input_Born_Month2:
90560 case 9:
90570 No=8:sp_on 7,1:sp_on 10,0
90580 pause 200:goto Buka_Input_Born_Month2:
90590 case 8:
90600 No=7:sp_on 4,1:sp_on 7,0
90610 pause 200:goto Buka_Input_Born_Month2:
90620 case 7:
90630 pause 200:goto Buka_Input_Born_Month2:
90640 end select
90650 endif
90660 '右  十字キー　右　or カーソル　右
90670 if ((y2 = 1) or (key$ = chr$(28))) then
90680 select case No
90690 '0ボタンからokボタン右に移動
90700 case 0:
90710 No=-1:sp_on 14,1:sp_on 13,0
90720 pause 200:goto Buka_Input_Born_Month2:
90730 '0ボタンからokボタン 右に移動　ここまで
90740 'OKボタンで右を押して何もしない
90750 case -1:
90760 pause 200:goto Buka_Input_Born_Month2:
90770 case 1:
90780 No=2:sp_on 9,1:sp_on 6,0
90790 pause 200:goto Buka_Input_Born_Month2:
90800 case 2:
90810 No=3:sp_on 12,1:sp_on 9,0
90820 pause 200:goto Buka_Input_Born_Month2:
90830 case 3:
90840 pause 200:goto Buka_Input_Born_Month2:
90850 case 4:
90860 No=5:sp_on 8,1:sp_on 5,0
90870 pause 200:goto Buka_Input_Born_Month2:
90880 case 5:
90890 No=6:sp_on 11,1:sp_on 8,0
90900 pause 200:goto Buka_Input_Born_Month2:
90910 case 7:
90920 No=8:sp_on 7,1:sp_on 4,0
90930 pause 200:goto Buka_Input_Born_Month2:
90940 case 8:
90950 No=9:sp_on 10,1:sp_on 7,0
90960 pause 200:goto Buka_Input_Born_Month2:
90970 case 9:
90980 pause 200:goto Buka_Input_Born_Month2:
90990 case 6:
91000 pause 200:goto Buka_Input_Born_Month2:
91010 end select
91020 'Okから右ボタンを押して何もしない ここまで
91030 endif
91040 '十字キー　ここまで
91050 '右の丸ボタン　決定キー
91060 if ((bg=2) or (key$=chr$(13))) then
91070 select case count
91080 case 0:
91090 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
91100 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
91110 locate 1,3
91120 color RGB(255,255,255)
91130 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
91140 goto Buka_Input_Born_Month2:
91150 case 1:
91160 count = 2:buf_buka_month=a*10+No
91170 if (No = -1) then
91180 'count=0
91190 month=buf_buka_month
91200 buf_buka_month=val(buf_buka_Month$)
91210 month=buf_buka_month
91220 '生まれた日に飛ぶ
91230 goto Buka_Input_Born_Day:
91240 else
91250 buf_buka_month = a * 10 + No
91260 buf_buka_Month$ = str$(buf_buka_month)
91270 buf_Buka_Born_Day(1) = buf_buka_month
91280 locate 1,3
91290 color Rgb(255,255,255)
91300 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
91310 goto Buka_Input_Born_Month2:
91320 endif
91330 case 2:
91340 count=3
91350 'c= val(buf_Month$)
91360 'buf_month = c*10 + No
91370 'buf_Month$ = str$(buf_month)
91380 'locate 2,3
91390 'print "部下の生まれた月(1月～12月):";buf_Month$
91400 'goto Buka_Input_Born_Month2:
91410 'case 3:
91420 'count=4
91430 'b=val(buf_month$)
91440 'buf_month=c*10+No
91450 'buf_Month$=str$(buf_month)
91460 'locate 2,3
91470 'print "部下の生まれた月(1月～12月):";buf_Month$
91480 'buf_month=val(buf_Month$)
91490 'year=val(buf_year$)
91500 if (No=-1) then
91510 goto Buka_Input_Born_Day:
91520 else
91530 goto Input_Born_Month2:
91540 endif
91550 'case 4:
91560 'bufyear=buf_year
91570 'if (No=-1) then
91580 'buf_month = val(buf_Month$)
91590 'month = buf_month
91600 'sp_on 14,0
91610 'goto Input_Born_Day:
91620 'else
91630 'goto Input_Born_Month2:
91640 'endif
91650 end select
91660 endif
91670 '左の丸ボタン　キャンセル
91680 if (bg2=2) then
91690 select case count2
91700 case 0:
91710 if (No = -1) then
91720 buf_buka_month=0:buf_buka_Month$="**"
91730 count=0
91740 goto rewrite2:
91750 else
91760 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
91770 buf_month=0:buf_Month$="**"
91780 locate 2,3
91790 color rgb(255,255,255)
91800 print "                                       "
91810 goto rewrite2:
91820 if (No>12) then
91830 ui_msg"値が範囲外です。"
91840 goto rewrite2:
91850 endif
91860 endif
91870 endif
91880 rewrite2:
91890 locate 2,3
91900 color rgb(255,255,255)
91910 print "                                      "
91920 locate 2,3
91930 print "部下の生まれた月(1月~12月):";buf_buka_Month$
91940 goto Buka_Input_Born_Month2:
91950 end select
91960 'endif
91970 endif
91980 end
91990 '2.部下の生まれた月'
92000 '3.部下の生まれた日'
92010 '生れた日を入力
92020 Buka_Input_Born_Day:
92030 '生まれた日入力
92040 cls 3:play ""
92050 'No=-1:Okのとき
92060 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
92070 for i=0 to 1
92080 buf_day(i)=0
92090 next i
92100 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
92110 '****************************************************************************************************
92120 'WUXG(1920x1200)の時ここから
92130 '****************************************************************************************************
92140 gload Gazo$ + "Screen2.png",0,0,0
92150 gload Gazo$ + "downscreen.png",0,0,800
92160 '****************************************************************************************************
92170 'WUXG(1920x1200)の時ここまで
92180 '****************************************************************************************************
92190 'Init"kb:2"
92200 '音声ファイル再生 2023.06.07
92210 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
92220 font 48
92230 locate 0,1
92240 '文字色：黒　 color rgb(0,0,0)
92250 color rgb(255,255,255)
92260 print "部下の生まれた日を入れて下さい" + chr$(13)
92270 color rgb(255,255,255)
92280 locate 1,3
92290 print "部下の生まれた日(1日~31日):";buf_Day$
92300 color rgb(255,255,255)
92310 'locate 4,6:print ":7"
92320 'locate 9,6:print ":8"
92330 'locate 12,6:print ":9"
92340 'locate 4,6
92350 'print ":7  :8  :9" + chr$(13)
92360 'color rgb(255,255,255)
92370 'locate 4,8
92380 'print ":4  :5  :6" + chr$(13)
92390 'color rgb(255,255,255)
92400 'locate 4,10
92410 'print ":1  :2  :3" + chr$(13)
92420 'locate 4,12
92430 'print "    :0"
92440 'locate 12,12
92450 'color rgb(0,0,255)
92460 'print ":Ok"
92470 sp_on 4,0: sp_on 5,0:sp_on 6,0
92480 sp_on 7,0:sp_on 8,0:sp_on 9,0
92490 sp_on 10,0:sp_on 11,0:sp_on 12,0
92500 sp_on 13,0:sp_on 14,1
92510 Buka_Input_Born_Day2:
92520 '
92530 key$="":bg=0:y=0:y2=0:bg2=0
92540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
92550 key$ = inkey$
92560 bg = strig(1)
92570 y = stick(1)
92580 y2 = stick(0)
92590 bg2 = strig(0)
92600 pause 200
92610 wend
92620 '十字キー　ここから
92630 '上の矢印　または、十字キー上
92640 if ((y = -1) or (key$ = chr$(30))) then
92650 select case No
92660 'No=-1:okのとき:初期の状態
92670 '0kボタンから３に移動
92680 '上に行く 処理
92690 case -1:
92700 No=3:sp_on 12,1:sp_on 14,0
92710 pause 200:goto Buka_Input_Born_Day2:
92720 '選択肢:3
92730 '3ボタンから 6に移動
92740 case 3:
92750 No=6:sp_on 12,0:sp_on 11,1
92760 pause 200:goto Buka_Input_Born_Day2:
92770 '6ボタンから ９に移動
92780 case 6:
92790 No=9:sp_on 10,1:sp_on 11,0
92800 pause 200:goto Buka_Input_Born_Day2:
92810 '6ボタンから ９に移動　ここまで
92820 '9で上を押して何もしない
92830 case 9:
92840 '何もしない
92850 No=9
92860 pause 200:goto Buka_Input_Born_Day2:
92870 '9で上を押しても何もしない　ここまで
92880 '上　 0ボタンから2ボタン
92890 'sp_on 6,1:1
92900 'sp_on 8,1:5
92910 'sp_on 7,1:7
92920 case 0:
92930 No=2:sp_on 13,0:sp_on 9,1:
92940 pause 200:goto Buka_Input_Born_Day2:
92950 '上  0ボタンから2ボタン　ここまで
92960 '2から５になる 上
92970 case 2:
92980 No=5:sp_on 8,1:sp_on 9,0:
92990 pause 200:goto Buka_Input_Born_Day2:
93000 case 5:
93010 No=8:sp_on 7,1:sp_on 8,0
93020 pause 200:goto Buka_Input_Born_Day2:
93030 case 8:
93040 pause 200:goto Buka_Input_Born_Day2:
93050 case 1:
93060 No=4:sp_on 5,1:sp_on 6,0
93070 pause 200:goto Buka_Input_Born_Day2:
93080 case 4:
93090 No=7:sp_on 4,1:sp_on 5,0
93100 pause 200:goto Buka_Input_Born_Day2:
93110 case 7:
93120 pause 200:goto Buka_Input_Born_Day2:
93130 end select
93140 endif
93150 '左３　ここまで
93160 '下の矢印
93170 '中央 2
93180 if ((y=1) or (key$ = chr$(31))) then
93190 select case No
93200 '9から６に下げる
93210 case 9:
93220 No=6:sp_on 11,1:sp_on 10,0
93230 pause 200:goto Buka_Input_Born_Day2:
93240 '6から３に下げる
93250 case 6:
93260 No=3:sp_on 12,1:sp_on 11,0
93270 pause 200:goto Buka_Input_Born_Day2:
93280 '3から０ｋに変える
93290 case 3:
93300 No=-1:sp_on 14,1:sp_on 12,0
93310 pause 200:goto Buka_Input_Born_Day2:
93320 'Okから下のボタンを押しても何もしない
93330 case -1:
93340 pause 200:goto Buka_Input_Born_Day2:
93350 case 8:
93360 No=5:sp_on 8,1:sp_on 7,0
93370 pause 200:goto Buka_Input_Born_Day2:
93380 case 5:
93390 No=2:sp_on 9,1:sp_on 8,0
93400 pause 200:goto Buka_Input_Born_Day2:
93410 case 2:
93420 No=0:sp_on 13,1:sp_on 9,0
93430 pause 200:goto Buka_Input_Born_Day2:
93440 case 0:
93450 pause 200:goto Buka_Input_Born_Day2:
93460 case 7:
93470 No=4:sp_on 5,1:sp_on 4,0
93480 pause 200:goto Buka_Input_Born_Day2:
93490 case 4:
93500 No=1:sp_on 6,1:sp_on 5,0
93510 pause 200:goto Buka_Input_Born_Day2:
93520 case 1:
93530 pause 200:goto Buka_Input_Born_Day2:
93540 end select
93550 endif
93560 '左へボタン 十字キー　左　or 　カーソル左
93570 if ((y2 = -1) or (key$ = chr$(29))) then
93580 select case No
93590 'Ok ボタン  Okから　左　０に行く
93600 case -1:
93610 No=0:sp_on 13,1:sp_on 14,0
93620 pause 200:goto Buka_Input_Born_Day2:
93630 '0 ボタン  左　何もしない
93640 case 0:
93650 pause 200:goto Buka_Input_Born_Day2:
93660 case 3:
93670 No=2:sp_on 9,1:sp_on 12,0:
93680 pause 200:goto Buka_Input_Born_Day2:
93690 case 2:
93700 No=1:sp_on 6,1:sp_on 9,0:
93710 pause 200:goto Buka_Input_Born_Day2:
93720 case 1:
93730 pause 200:goto Buka_Input_Born_Day2:
93740 case 6:
93750 No=5:sp_on 8,1:sp_on 11,0
93760 pause 200:goto Buka_Input_Born_Day2:
93770 case 5:
93780 No=4:sp_on 5,1:sp_on 8,0
93790 pause 200:goto Buka_Input_Born_Day2:
93800 case 4:
93810 pause 200:goto Buka_Input_Born_Day2:
93820 case 9:
93830 No=8:sp_on 7,1:sp_on 10,0
93840 pause 200:goto Buka_Input_Born_Day2:
93850 case 8:
93860 No=7:sp_on 4,1:sp_on 7,0
93870 pause 200:goto Buka_Input_Born_Day2:
93880 case 7:
93890 pause 200:goto Buka_Input_Born_Day2:
93900 end select
93910 endif
93920 '右  十字キー　右　or カーソル　右
93930 if ((y2 = 1) or (key$ = chr$(28))) then
93940 select case No
93950 '0ボタンからokボタン右に移動
93960 case 0:
93970 No=-1:sp_on 14,1:sp_on 13,0
93980 pause 200:goto Buka_Input_Born_Day2:
93990 '0ボタンからokボタン 右に移動　ここまで
94000 'OKボタンで右を押して何もしない
94010 case -1:
94020 pause 200:goto Buka_Input_Born_Day2:
94030 case 1:
94040 No=2:sp_on 9,1:sp_on 6,0
94050 pause 200:goto Buka_Input_Born_Day2:
94060 case 2:
94070 No=3:sp_on 12,1:sp_on 9,0
94080 pause 200:goto Buka_Input_Born_Day2:
94090 case 3:
94100 pause 200:goto Buka_Input_Born_Day2:
94110 case 4:
94120 No=5:sp_on 8,1:sp_on 5,0
94130 pause 200:goto Buka_Input_Born_Day2:
94140 case 5:
94150 No=6:sp_on 11,1:sp_on 8,0
94160 pause 200:goto Buka_Input_Born_Day2:
94170 case 7:
94180 No=8:sp_on 7,1:sp_on 4,0
94190 pause 200:goto Buka_Input_Born_Day2:
94200 case 8:
94210 No=9:sp_on 10,1:sp_on 7,0
94220 pause 200:goto Buka_Input_Born_Day2:
94230 case 9:
94240 pause 200:goto Buka_Input_Born_Day2:
94250 case 6:
94260 pause 200:goto Buka_Input_Born_Day2:
94270 end select
94280 'Okから右ボタンを押して何もしない ここまで
94290 endif
94300 '十字キー　ここまで
94310 '右の丸ボタンを押したとき
94320 if ((bg = 2) or (key$ = chr$(13))) then
94330 'count :決定ボタンを押した回数
94340 select case (count)
94350 '1桁目入力
94360 case 0:
94370 count = 1:
94380 if (No = -1) then
94390 '1桁目　OKでは何もしない
94400 'goto check:
94410 No=0
94420 else
94430 'ok以外のボタンを押したとき
94440 buf_buka_day = No:buf_buka_Day$ = str$(No)
94450 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
94460 buf_buka_Day$ = str$(No) + "*"
94470 endif
94480 a=No
94490 buf_Buka_Born_Day(2) = buf_buka_day
94500 locate 1,3
94510 print"                                      "
94520 color RGB(255,255,255)
94530 locate 1,3
94540 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
94550 endif
94560 check2:
94570 if (No >= 1 and No <= 9) then
94580 sp_on 14,0
94590 goto Buka_Input_Born_Day2:
94600 else
94610 sp_on 14,0
94620 goto Result_Business_Aisyou:
94630 end
94640 endif
94650 case 1:
94660 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
94670 count = 2:
94680 'locate 2,3
94690 'color RGB(255,255,255)
94700 'print "生まれた日(1日~31日):";buf_Day$
94710 'Okボタンを押したときの処理
94720 '入力値　10未満のとき
94730 'c = buf_day
94740 if (No = -1) then
94750 'c=buf_day
94760 ' buf_day = c
94770 'buf_Day$ = str$(buf_day)
94780 '10以下のとき
94790 No=0
94800 if (buf_day < 10) then
94810 sp_on 14,0
94820 goto Result_Business_Aisyou:
94830 end
94840 endif
94850 else
94860 sp_on 14,0
94870 'c=No
94880 buf_buka_day = a * 10 + No
94890 buf_buka_Day$ = str$(buf_buka_day)
94900 buf_Buka_Born_Day(2) = buf_buka_day
94910 locate 0,3
94920 color Rgb(255,255,255)
94930 print "                                       "
94940 locate 1,3
94950 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
94960 goto Buka_Input_Born_Day2:
94970 endif
94980 '生まれた日　2桁目の数字　or 1桁の数字 + ok
94990 case 2:
95000 count=0
95010 'c=val(buf_Day$)
95020 'buf_day=c*10+No
95030 'buf_Day$=str$(buf_day)
95040 'day=buf_day
95050 'locate 2,3
95060 'print "生まれた日(1日〜31日):";buf_Day$
95070 'No=-1:ok ボタンを押したとき
95080 if (No = -1) then No=0
95090 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
95100 sp_on 14,0
95110 goto Result_Business_Aisyou:
95120 else
95130 goto Buka_Input_Born_Day2:
95140 endif
95150 'Okボタン以外を押したとき
95160 else
95170 c=val(buf_buka_Day$)
95180 buf_buka_day = c * 10 + No
95190 buf_buka_Day$ = str$(buf_buka_day)
95200 locate 1,3
95210 print "                "
95220 locate 1,3
95230 print "生まれた日(1日~31日):"+buf_buka_Day$
95240 goto Buka_Input_Born_Day2:
95250 'endif
95260 case 3:
95270 count=4
95280 'c=val(buf_day$)
95290 'buf_day=c*10+No
95300 'buf_day$=str$(buf_day)
95310 'locate 2,3
95320 'print "生まれた日を入れてください:";buf_day$
95330 'year=val(buf_year$)
95340 if (No = -1) then
95350 'goto Buka_Input_Born_Day:
95360 sp_on 14,0:
95370 goto complate_jyoushi:
95380 else
95390 goto Buka_Input_Born_Month2:
95400 endif
95410 'case 4:
95420 'bufyear=buf_year
95430 'if (No=-1) then
95440 'buf_day = val(buf_day$)
95450 'bufday = buf_day
95460 'sp_on 14,0
95470 goto complate_jyoushi:
95480 'else
95490 'goto Buka_Input_Born_Day2:
95500 'endif
95510 end select
95520 endif
95530 if (bg2=2) then
95540 select case count2
95550 case 0:
95560 if (No=-1) then
95570 'buf_day=0:buf_Day$="**"
95580 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
95590 count=0
95600 buf_buka_day=0:buf_buka_Day$="**"
95610 goto rewrite_day3:
95620 else
95630 buf_buka_day=0:buf_buka_Day$="**"
95640 ui_msg"値が範囲外です"
95650 endif
95660 goto rewrite_day3:
95670 else
95680 goto rewrite_day3:
95690 endif
95700 rewrite_day3:
95710 locate 2,3
95720 color rgb(255,255,255)
95730 print "                                      "
95740 locate 1,3
95750 print "生まれた日(1日~31日):"+buf_buka_Day$
95760 goto Buka_Input_Born_Day2:
95770 end select
95780 endif
95790 '3.部下の生まれた日'
95800 '部下'
95810 '--------------------------------------------'
95820 'ビジネの相性　結果表示
95830 Result_Business_Aisyou:
95840 cls 3:init "kb:4"
95850 a=0:b=0:c=0:d=0:e=0:f=0
95860 bg=0:key$=""
95870 '****************************************************************************************************
95880 'WUXG(1920x1200)の時ここから
95890 '****************************************************************************************************
95900 gload Gazo$ + "Screen1.png",0,0,0
95910 gload Gazo$ + "downscreen.png",0,0,800
95920 '****************************************************************************************************
95930 'WUXG(1920x1200)の時ここから
95940 '****************************************************************************************************
95950 sp_on 14,0
95960 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
95970 buf_Buka = Kabara_Num(d,e,f)
95980 a_2 = buf_Buka
95990 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
96000 locate 0,1
96010 color rgb(255,0,0)
96020 print "●.相性診断結果１"
96030 locate 0,4:
96040 color rgb(255,255,255)
96050 print "1.上司の名前:";buffer_name$(0)
96060 locate 0,6
96070 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
96080 locate 0,8
96090 print "2.部下の名前:";buffer_name$(1)
96100 locate 0,10
96110 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
96120 locate 0,12
96130 print "3.上司と部下の相性:";Result_Aisyou$
96140 locate 1,15
96150 color rgb(0,0,0)
96160 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
96170 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
96180 bg = strig(1)
96190 key$ = inkey$
96200 bg2 = strig(0)
96210 pause 5
96220 wend
96230 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
96240 if (bg2 = 2) then
96250 cls 3:goto Business_Aishou_Input_1_parson:
96260 endif
96270 'ビジネスの相性占い　結果2　説明
96280 Result_Business_Aisyou2:
96290 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
96300 gload Gazo$ + "Screen1.png",0,0,0
96310 locate 0,1
96320 color rgb(255,0,0)
96330 print "●.相性の説明"
96340 color rgb(255,255,255)
96350 locate 0,4
96360 print "相性:";Result_Aisyou$
96370 locate 0,6:
96380 print "相性の説明:";buf$
96390 locate 0,15
96400 color rgb(0,0,0)
96410 print "右の丸ボタン:トップ,左のボタン:前の画面"
96420 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
96430 bg = strig(1)
96440 bg2 = strig(0)
96450 key$ = inkey$
96460 pause 200
96470 wend
96480 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
96490 if ((bg2 = 2)) then goto Result_Business_Aisyou:
96500 'Birds Eye Menu List
96510 Result_Birtheye_List1:
96520 'dim List$(4) Topに定義
96530 List$(0) = "1.バーズアイグリッドをもう一度診断"
96540 List$(1) = "2.診断結果"
96550 List$(2) = "3.データーを保存"
96560 List$(3) = "4.トップ画面に戻る"
96570 Birds_List1 = ui_select("List$","Menu")
96580 select case (Birds_List1)
96590 case 0: '1.もう一度診断
96600 for i=0 to 8
96610 buffer(i)=0
96620 next i
96630 goto Input_name1_Birdseye:
96640 case 1: '2.次へ行く
96650 gosub BirdsEye_Result2:
96660 case 2: '3.データーを保存
96670 ui_msg "データーを保存します"
96680 goto BirdsEye_Save_data:
96690 case 3: '4.トップに戻る
96700 for i=0 to 8
96710 buffer(i)=0
96720 next i
96730 goto Main_Screen:
96740 end select
96750 'BirdsEye Data Save
96760 BirdsEye_Save_data:
96770 if dir$(Save_data_Birdseye$) = "" then
96780 Mkdir Save_data_Birdseye$
96790 endif
96800 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
96810 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
96820 close #1
96830 ui_msg "データーを保存しました"
96840 goto Result_Birtheye_List1:
96850 'return
96860 '自作関数 ここから
96870 BirdsEyeGrid_Entry:
96880 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
96890 '****************************************************************************************************
96900 'WUXG(1920x1200)の時 1280x 800の時共通　ここから
96910 '****************************************************************************************************
96920 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
96930 '****************************************************************************************************
96940 'WUXG(1920x1200)の時 1280x 800の時共通 ここまで
96950 '****************************************************************************************************
96960 font FONT
96970 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
96980 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
96990 locate 1,4:print "右の丸:メイン画面へ行く"
97000 else
97010 flag=1
97020 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
97030 while (eof(1)=0)
97040 line input #1,a$
97050 n = n + 1
97060 wend
97070 close #1
97080 'endif
97090 talk "登録件数は"+str$(n)+"件です。"
97100 if ((size(0)<=1280) and (size(1)<=800)) then
97110 '*****************************************************************************************************
97120 '1280x800の時　ここから
97130 '*****************************************************************************************************
97140 locate 1,3:print "登録件数は";str$(n);"件です"
97150 locate 1,6:print "左の丸：メイン画面へ行く"
97160 '*****************************************************************************************************
97170 '1280x800の時　ここまで
97180 '*****************************************************************************************************
97190 else
97200 '*****************************************************************************************************
97210 'WUXG(1920x1280)の時　ここから
97220 '*****************************************************************************************************
97230 locate 1,2:print "登録件数は";str$(n);"件です"
97240 locate 1,4:print "左の丸：メイン画面へ行く"
97250 '*****************************************************************************************************
97260 'WUXG(1920x1280)の時　ここまで
97270 '*****************************************************************************************************
97280 endif
97290 endif
97300 Entry_Count:
97310 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
97320 key$ = inkey$
97330 bg = strig(1)
97340 bg2 = strig(0)
97350 pause 200
97360 wend
97370 if ((bg = 2) or (key$ = chr$(13))) then
97380 if (n = 0) then
97390 '登録件数　０件のとき　メイン画面に行く
97400 goto Main_Screen:
97410 else
97420 '登録件数1件以上　次へ行く
97430 'ここを変更する
97440 goto Entry_List:
97450 endif
97460 endif
97470 if (bg2 = 2) then
97480 if (n > 0) then
97490 goto Main_Screen:
97500 else
97510 goto Entry_Count:
97520 endif
97530 endif
97540 Entry_List:
97550 cls 3:play"":color rgb(255,255,255):init "kb:4"
97560 if ((size(0)<=1280) and (size(1)<=800)) then
97570 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x680_20240222.png",0,0,0
97580 else
97590 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
97600 endif
97610 dim buffer_List$(11,n)
97620 'ファイル読み込み ここから
97630 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
97640 for i=0 to 10
97650 for j=0 to n-1
97660 input #1,a$
97670 buffer_List$(i,j)=a$
97680 next j
97690 next i
97700 close #1
97710 'erase buffer_List$
97720 'color rgb(255,255,255)
97730 i=0:key$="":bg=0:init"kb:4":bg2=0
97740 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
97750 key$ = inkey$
97760 bg = strig(1)
97770 bg2=strig(0)
97780 pause 200
97790 wend
97800 color rgb(0,0,0)
97810 locate 1,15:print "次へ"
97820 'show_ListData:
97830 'j=0
97840 repeat (j=0)
97850 show_ListData:
97860 cls
97870 color rgb(255,255,255)
97880 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
97890 '1の文字データー
97900 locate 4,14:print buffer_List$(2,j)
97910 '2の文字データー
97920 locate 4,9:print buffer_List$(3,j)
97930 '3の文字データー
97940 locate 4,5:print buffer_List$(4,j)
97950 '4の文字データー
97960 locate 11,14:print buffer_List$(5,j)
97970 '5の文字データー
97980 locate 11,9:PRINT buffer_List$(6,j)
97990 '6の文字データー
98000 locate 11,5:print buffer_List$(7,j)
98010 '7の文字データー
98020 locate 16,14:print buffer_List$(8,j)
98030 '8の文字データー
98040 locate 16,9:print buffer_List$(9,j)
98050 '9の文字データー
98060 locate 16,5:print buffer_List$(10,j)
98070 color rgb(0,0,0)
98080 locate 1,15:print "右の丸：次へ"
98090 if (bg=2 or key$=chr$(13)) then
98100 j=j+1
98110 endif
98120 if (bg2=2) then
98130 goto Main_Screen:
98140 endif
98150 until (j=n)
98160 'erase buffer_List$:
98170 goto show_ListData:
98180 'ファイル読み込み　ここまで
98190 func read_explain$(ba$)
98200 d$=""
98210 buf_String$=""
98220 if ba$="A" then
98230 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
98240 line input #1,a$
98250 a1$=mid$(a$,1,12)
98260 a2$=mid$(a$,13,17)
98270 a3$=mid$(a$,30,17)
98280 a4$=mid$(a$,47,18)
98290 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
98300 buf_String$ = a5$
98310 close #1
98320 endif
98330 if ba$="B"  then
98340 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
98350 line input #1,b$
98360 b1$=mid$(b$,1,15)
98370 b2$=mid$(b$,16,21)
98380 'b3$=mid$(b$,33,3)
98390 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
98400 buf_String$ = b4$
98410 close #1
98420 endif
98430 if ba$="C"  then
98440 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
98450 line input #1,c$
98460 c1$ = Mid$(c$,1,15)
98470 c2$ = Mid$(c$,16,33)
98480 c3$ = c1$ + chr$(13) + c2$
98490 buf_String$ = c3$
98500 close #1
98510 endif
98520 if ba$="D" then
98530 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
98540 line input #1,d$
98550 d1$=mid$(d$,1,15)
98560 d2$=mid$(d$,16,22)
98570 d3$=mid$(d$,38,7)
98580 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
98590 buf_String$ = d4$
98600 close #1
98610 endif
98620 if ba$="E"  then
98630 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
98640 line input #1,e$
98650 e1$=Mid$(e$,1,16)
98660 e2$=Mid$(e$,17,16)
98670 e3$=Mid$(e$,33,12)
98680 e4$=Mid$(e$,45,17)
98690 e5$=Mid$(e$,62,17)
98700 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
98710 buf_String$ = e6$
98720 close #1
98730 endif
98740 if ba$="F" then
98750 '改行を追加して表示を調整
98760 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
98770 line input #1,f$
98780 f1$=Mid$(f$,1,15)
98790 f2$=Mid$(f$,16,12)
98800 buf_String$ = f1$+chr$(13)+f2$
98810 close #1
98820 endif
98830 if ba$="G" then
98840 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
98850 line input #1,g$
98860 g1$ = mid$(g$,1,16)
98870 g2$ = mid$(g$,17,18)
98880 g3$ = mid$(g$,36,21)
98890 g4$ = mid$(g$,56,6)
98900 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
98910 buf_String$ = g5$
98920 close #1
98930 endif
98940 if ba$="H" then
98950 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
98960 line input #1,h$
98970 h1$=Mid$(h$,1,17)
98980 h2$=Mid$(h$,18,21)
98990 h3$=Mid$(h$,39,20)
99000 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
99010 buf_String$ = h$
99020 close #1
99030 endif
99040 if ba$ = "I" then
99050 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
99060 line input #1,i$
99070 i1$=Mid$(i$,1,10)
99080 i2$=Mid$(i$,11,13)
99090 i3$=Mid$(i$,25,16)
99100 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
99110 buf_String$ = i$
99120 close #1
99130 endif
99140 buffer$ = buf_String$
99150 endfunc buffer$
99160 'カバラ数（数秘番号を求める）
99170 func Kabara_Num(buffer_Year,month,day)
99180 '=============================
99190 'a1:4桁のうちの1桁目を求める
99200 '例 a1:1234の4が1桁目
99210 'a2:4桁のうちの2桁目を求める
99220 '例:a2:1234の3が2桁目
99230 'a3:4桁のうちの3桁目を求める
99240 '例 a3:1234の2が3桁目
99250 'a4:4桁のうちの4桁目を求める
99260 '例 a4:1234の1が4桁目
99270 '==============================
99280 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
99290 Year = buffer_Year
99300 '処理1　整数部分を取り出す。
99310 a4 = fix(Year / 1000)
99320 a3 = fix(Year / 100) - (a4 * 10)
99330 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
99340 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
99350 '処理　２　取り出した整数部分を足す。
99360 a_ = a1 + a2 + a3 + a4 +month + day
99370 'a1=0:a2=0:a3=0:a4=0
99380 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
99390 buffer = a_
99400 'else
99410 goto recomp2:
99420 'if (a_ = 10) then
99430 '  buffer = 1
99440 endif
99450 recomp2:
99460 a5=0:a6=0
99470 a5 = fix(a_ / 10)
99480 a6 = (a_) - (a5 * 10)
99490 a_ = a5 + a6
99500 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
99510 '結果に行く
99520 goto Res2:
99530 '  if ((a_>11) and (a_<99)) then
99540 else
99550 '再度計算
99560 goto recomp2:
99570 endif
99580 '     a1 = fix(a_ / 10)
99590 '     a2 = a_ - (a1 * 10)
99600 '     a_ = a1 + a2
99610 '     buffer = a_
99620 'endif
99630 'else
99640 '    bffer = a_
99650 'endif
99660 'endif
99670 'else
99680 'talk "プログラムを終了します。"
99690 'end
99700 'endif
99710 'kabara = 10
99720 Res2:
99730 kabara = a_
99740 endfunc kabara
99750 func Kabara_Aisyou$(buff1,buff2)
99760 a=0:b=0
99770 '範囲　1~9
99780 if ((buff1 > 0 and buff1 < 10)) then
99790 a = buff1
99800 else
99810 Select case buff1
99820 case 11:
99830 buff1=9:a=buff1
99840 case 22:
99850 buff1=10:a=buff1
99860 end select
99870 endif
99880 '範囲　１~９
99890 if ((buff2 > 0 and buff2 < 10)) then
99900 b = buff2
99910 else
99920 select case buff2
99930 case 11:
99940 buff2=9:b=buff2
99950 case 12:
99960 buff2=10:b=buff2
99970 end select
99980 endif
99990 Aisyou$ = Buffer_Business_Aisyou$(a,b)
100000 endfunc Aisyou$
100010 '**********************************************************
100020 '0-0.Top Screen Recheck: ここから
100030 '**********************************************************
100040 TopScreenRecheck:
100050 color rgb(217,255,212)
100060 locate 1,3:print  "                            "
100070 locate 1,4:print  "                            "
100080 locate 1,5
100090 print "番号を選んでください"
100100 locate 1,6:print  "                            "
100110 locate 1,7:print  " :1.数秘術占い"
100120 locate 1,8:print  "                            "
100130 locate 1,9:print  "                            "
100140 locate 1,10:print  "                            "
100150 locate 1,10:print  " :2.設 定"
100160 locate 1,11:print  "                            "
100170 locate 1,12:print  "                            "
100180 locate 1,13:print  " :3.ヘルプ"
100190 locate 1,14:print  "                            "
100200 locate 1,15:print  "                            "
100210 locate 1,16:print  "                            "
100220 locate 1,16:print  " :4.(プログラムを)終了する"
100230 locate 1,17:print  "                            "
100240 locate 1,18:print  "                            "
100250 return
100260 '**********************************************************
100270 '0-0.Top Screen Recheck:　ここまで
100280 '**********************************************************
100290 '***********************************************************
100300 '1-1.数秘術トップ画面 ここから
100310 '**********************************************************
100320 Kabara_TopScreen_Recheck:
100330 color rgb(255,255,255):font FONT
100340 locate 1,5
100350 print "番号を選んでください" + chr$(13)
100360 locate 1,7
100370 print " :1.数秘術占い" + chr$(13)
100380 locate 1,10
100390 print " :2.バーズアイグリット" + chr$(13)
100400 locate 1,13
100410 print " :3.相性占い" + chr$(13)
100420 locate 1,16
100430 print " :4.トップ画面に戻る" + chr$(13)
100440 return
100450 '***************************************************************
100460 '1-1.数秘術トップ画面　ここまで
100470 '*************************************************************
100480 '**********************************************************
100490 '2-1 Setting Top Screen ここから
100500 '**********************************************************
100510 Setting_Recheck:
100520 cls:color rgb(255,255,255)
100530 locate 1,3:print  "                            "
100540 locate 1,4:print  "                            "
100550 locate 1,5:
100560 print "番号を選んでください"
100570 locate 1,6:print  "                            "
100580 locate 1,7:
100590 print " :1.トップ画面に戻る"
100600 locate 1,8:print  "                            "
100610 locate 1,9:print  "                            "
100620 locate 1,10:
100630 print " :2.バーズアイグリッドデーターリスト"
100640 locate 1,11:print  "                            "
100650 locate 1,12:print  "                            "
100660 locate 1,13:
100670 print " :3.未実装" + chr$(13)
100680 locate 1,14:print  "                            "
100690 locate 1,15:print  "                            "
100700 locate 1,16:
100710 print " :4.未実装" + chr$(13)
100720 locate 1,17:print  "                            "
100730 locate 1,18:print  "                            "
100740 return
100750 '**********************************************************
100760 '2-1 Setting Top Screen ここまで
100770 '**********************************************************
100780 '**********************************************************
100790 '3-1Help Top ReCheck ここから
100800 '**********************************************************
100810 Help_Top_ReCheck:
100820 font FONT
100830 color rgb(217,255,212)
100840 locate 1,3:print  "                       "
100850 locate 1,4:print  "                       "
100860 locate 1,5:print "番号を選んでください"
100870 locate 1,6:print  "                       "
100880 '0
100890 locate 1,7:print " :1.ルールの説明"
100900 '1
100910 locate 1,8:print  "                       "
100920 locate 1,9:print  "                       "
100930 locate 1,10:print " :2.バージョンの表示"
100940 locate 1,11:print  "                      "
100950 locate 1,12:print  "                      "
100960 '2
100970 locate 1,13:print " :3.参考文献"
100980 locate 1,14:print  "                      "
100990 locate 1,15:print  "                      "
101000 '3
101010 locate 1,16:print " :4.トップ画面に戻る"
101020 return
101030 '**********************************************************
101040 '3-1.Help Top ReCheckここまで
101050 '**********************************************************
101060 '***********************************************************
101070 '**********************************************************
101080 Suhi_Rule_Screen_Recheck:
101090 color rgb(255,255,255)
101100 font FONT
101110 locate 1,3:print  "                       "
101120 locate 1,4:print  "                       "
101130 locate 1,5
101140 print "番号を選んでください"
101150 locate 1,6:print  "                       "
101160 locate 1,7:    '〇
101170 print " :1.数秘術のやり方"
101180 locate 1,8:print  "                       "
101190 locate 1,9:print  "                       "
101200 locate 1,10:   '〇
101210 print " :2.バーズアイグリットの説明"
101220 locate 1,11:print  "                       "
101230 locate 1,12:print  "                       "
101240 locate 1,13:    '〇
101250 print " :3.トップ画面に戻る"
101260 locate 1,14:print  "                       "
101270 locate 1,15:print  "                       "
101280 return
101290 '=============================
101300 '自作関数 ここまで
101310 '1.数秘術　トップ画面
101320 '
101330 'Data_erase:を一番最後に持ってくる
101340 '=============================
101350 Data_erase:
101360 'メモリー削除
101370 erase buf_male_year
101380 erase buf_male_month
101390 erase buf_male_Born_Day
101400 erase buf_feMale_Born_Day
101410 erase buf_female_day
101420 erase buf_name1$
101430 erase buf_name2$
101440 erase buffer
101450 erase buf_chart$
101460 erase Buffer_Business_Aisyou$
101470 erase buffer_name$
101480 '上司の誕生日
101490 erase buf_Jyoushi_Born_Day
101500 '部下の誕生日
101510 erase buf_Buka_Born_Day
101520 erase buf_year
101530 erase buf_month
101540 erase buf_day
101550 'フォーカスライン
101560 erase Forcus1_buffer$
101570 erase Forcus2_buffer$
101580 erase Forcus3_buffer$
101590 'erase buffer_List$
101600 'Birds eye List Data 配列
101610 erase List$
101620 buffer$ = ""
101630 buf$ = ""
101640 buf_year$ = ""
101650 buf_Jyoushi_Kabara_Num = 0
101660 buf_Buka_Kabara_Num = 0
101670 count = 0
101680 buf_Month$ = ""
101690 buf_Day$ = ""
101700 b=0
101710 c=0
101720 No=0
101730 count=0
101740 return
