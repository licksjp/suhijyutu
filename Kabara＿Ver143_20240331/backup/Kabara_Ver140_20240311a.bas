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
650 '2024.03.11 Ver140_20240311
660 Version$ = "Ver:1.4.0_20240311a"
670 'Gazo Folder Japan
680 Gazo$ = "./data/Picture/"
690 'Gazo Size folder
700 Gazo_1920x1200$ = "./1920x1200/"
710 Gazo_WXGA$ = "./907x680/"
720 'Gazo Folder English
730 Gazo_Eng$ = "./data/Picture/English/"
740 'Voice Folder 2023
750 Voice$ = "./data/Voice/Voice/"
760 'BirtheyeChart Data:20230626
770 Birth_eye_chart$ = "./data/chart_data/"
780 'Data Folder
790 Data$ = "./data/data/"
800 'Business Aisyou 結果説明保存フォルダ
810 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
820 'Save BirdsEyeGrit List Folder
830 Save_data_Birdseye$ = "./data/Parsonal_data/"
840 '変数定義 パート
850 b=0:c=0:n=0:count=0
860 '***********************************************************
870 '1.WXGAの時
880 '(1200 x 800)
890 '***********************************************************
900 if (((size(1) <= 1200) and (size(1) <= 800))) then
910 X=5:Y=200
920 FONT=32
930 '***********************************************************
940 '1.WXGAの時
950 '(1200 x 800)
960 '***********************************************************
970 else
980 '***********************************************************
990 '2.WUXGAの時(WXGA以外の時)
1000 '(1920 gload Gazo$ + "Selection.png",1,60,240
1010 '***********************************************************
1020 X=5:Y=300
1030 FONT=48
1040 '***********************************************************
1050 '2.WUXGAの時(WXGA以外の時)
1060 '(1920 x 1200)
1070 '***********************************************************
1080 endif
1090 'dim buffer_List$(11,1)
1100 dim buf_name1$(10),buf_name2$(10)
1110 dim buffer(9),buf_chart$(26,2)
1120 'ビジネスの相性　データー
1130 dim Buffer_Business_Aisyou$(12,12)
1140 '男女の相性
1150 dim Buffer_Bitween_sexes_Aisyou$(12,12)
1160 '生れた年代
1170 dim buf_year(4):buf_year$ = ""
1180 dim buf_month(2)
1190 dim buf_day(2)
1200 'フォーカスライン　配列
1210 dim Forcus1_buffer$(3)
1220 dim Forcus2_buffer$(3)
1230 dim Forcus3_buffer$(2)
1240 '生れた月
1250 buf_Month$ = ""
1260 '生れた日
1270 buf_Day$ = ""
1280 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
1290 dim buffer_name$(3)
1300 '1-1.上司の誕生日(数値データー)
1310 dim buf_Jyoushi_Born_Day(3)
1320 '1-2.上司の数秘ナンバー(数値データー)
1330 buf_Jyoushi_Kabara_Num = 0
1340 '2-1.部下の誕生日(数値データー)
1350 dim buf_Buka_Born_Day(3)
1360 '2-2.部下の数秘ナンバー(数秘データー)
1370 buf_Buka_Kabara_Num = 0
1380 dim buf_male_year(4)
1390 dim buf_male_month(2)
1400 dim buf_male_Born_Day(2)
1410 dim buf_feMale_Born_Day(2)
1420 dim buf_female_day(2)
1430 count=0
1440 'Birds Eye List 配列
1450 dim List$(6)
1460 '部下の数秘ナンバー
1470 'File 読み込み
1480 '1.ビジネスの相性占い
1490 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1500 for i=0 to 11
1510 for j=0 to 11
1520 input #1,a$
1530 Buffer_Business_Aisyou$(j,i) = a$
1540 next j
1550 next i
1560 close #1
1570 '2.男女の相性占い
1580 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1590 for i=0 to 11
1600 for j=0 to 11
1610 input #1,a$
1620 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1630 next j
1640 next i
1650 close #1
1660 '2.Birth Eye chart$
1670 '2.バーズアイグリッドを読み込む
1680 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1690 for j=0 to 25
1700 for i=0 to 1
1710 input #1,a$
1720 buf_chart$(j,i) = a$
1730 next i
1740 next j
1750 close #1
1760 'File 読み込み　ここまで
1770 'Main画面
1780 screen 1,1,1,1
1790 Main_Screen:
1800 cls 3:
1810 No=0
1820 '***********************************************************
1830 '1.WXGAの時
1840 '(1200 x 800)
1850 '***********************************************************
1860 if ((size(0) <= 1280) and (size(1) <= 800)) then
1870 gload Gazo$ + "Selection.png",1,5,220
1880 gload Gazo$ + "Selection.png",1,5,320
1890 gload Gazo$ + "Selection.png",1,5,420
1900 gload Gazo$ + "Selection.png",1,5,520
1910 '***********************************************************
1920 '1(4)
1930 gload Gazo$ + "Selection.png",1,130,420
1940 '2(5)
1950 gload Gazo$ + "Selection.png",1,280,420
1960 '3(6)
1970 gload Gazo$ + "Selection.png",1,430,420
1980 '4(7)
1990 gload Gazo$ + "Selection.png",1,130,330
2000 '5(8)
2010 gload Gazo$ + "Selection.png",1,280,330
2020 '6(9)
2030 'gload Gazo$ + "Selection.png",1,70,500
2040 gload Gazo$ + "Selection.png",1,430,330
2050 '7(10)
2060 gload Gazo$ + "Selection.png",1,130,250
2070 '8(11)
2080 gload Gazo$ + "Selection.png",1,280,250
2090 '9(12)
2100 gload Gazo$ + "Selection.png",1,430,250
2110 '0(13)
2120 gload Gazo$ + "Selection.png",1,280,495
2130 '14:(-1)OK ボタン
2140 gload Gazo$ + "Selection.png",1,430,495
2150 '***********************************************************
2160 '1.WXGAの時
2170 '(1200 x 800)
2180 '***********************************************************
2190 else
2200 '***********************************************************
2210 '2.WXGA(1200 x 800)以外の時
2220 '(1920 x 1200)のサイズ
2230 '***********************************************************
2240 gload Gazo$ + "Selection.png",1,5,200
2250 gload Gazo$ + "Selection.png",1,5,300
2260 gload Gazo$ + "Selection.png",1,5,400
2270 gload Gazo$ + "Selection.png",1,5,500
2280 '4:1
2290 gload Gazo$ + "Selection.png",1,35,300
2300 '5:2
2310 gload Gazo$ + "Selection.png",1,35,400
2320 '6:3
2330 gload Gazo$ + "Selection.png",1,35,500
2340 '7:4
2350 gload Gazo$ + "Selection.png",1,70,300
2360 '8:5
2370 gload Gazo$ + "Selection.png",1,70,400
2380 '9:6
2390 gload Gazo$ + "Selection.png",1,70,500
2400 '10:7
2410 gload Gazo$ + "Selection.png",1,430,295
2420 '11:8
2430 gload Gazo$ + "Selection.png",1,430,420
2440 '12:9
2450 gload Gazo$ + "Selection.png",1,430,440
2460 '13:0
2470 gload Gazo$ + "Selection.png",1,150,400
2480 '-1:Ok
2490 gload Gazo$ + "Selection.png",1,200,400
2500 '***********************************************************
2510 '2.WXGA(1200 x 800)以外の時
2520 '(1920 x 1200)のサイズ
2530 '***********************************************************
2540 endif
2550 if ex_info$(1) <> "JP" then
2560 '英語　トップ画面
2570 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
2580 'put@(0,0),1280,800,(1080,800)
2590 else
2600 '**********************************************************
2610 '［機能］　グラフィックバッファ（2番目の座標）からグラフィック画面（1番目の座標）へ画像データを引き出します。
2620 '
2630 '　［書式］　PUT@(x1,y1),w1,h1,(x2,y2)[,[w2],[h2][,描画モード]]
2640 '　［説明］
2650 '　　w1,w2=横サイズ h1,h2= 縦サイズ
2660 '　　転写元と転写先のサイズが異なる場合、拡大縮小描画されます。
2670 '　　各種重ね合わせの方式は pen命令で設定することができます。
2680 '　　<描画モード>の指定で次の選択ができます。
2690 '　　 0. グラフィックバッファからグラフィック画面への描画。
2700 '　　 1. グラフィック画面からグラフィック画面への描画。
2710 '　　 2. グラフィックバッファからグラフィックバッファへの描画。
2720 '***********************************************************'
2730 '*************************************************************************************************
2740 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2750 '日本語トップスクリーン
2760 'gload Gazo$ + "TopScreen_20230310.png",0,0,0
2770 'else
2780 '1.WXGAの時
2790 '************************************************************************************************
2800 if ((size(0) <= 1280) and (size(1) <= 800)) then
2810 gload Gazo$ + Gazo_WXGA$ + "Screen1_907x680_20240214.png",0,0,0
2820 else
2830 '************************************************************************************************
2840 '2.WXGA以外の時
2850 '************************************************************************************************
2860 gload Gazo$ + "TopScreen_20230310.png",0,0,0
2870 endif
2880 'put@(0,0),1280,800,(1080,800),,,0
2890 endif
2900 '***********************************************************************************************
2910 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2920 '***********************************************************************************************
2930 if ((size(0) <= 1280) and (size(1) <= 800)) then
2940 '************************************************************************************************
2950 'WXGAの場合　ここから (1280 x 800)
2960 '************************************************************************************************
2970 sp_def 0,(5,220),32,32
2980 sp_def 1,(5,320),32,32
2990 sp_def 2,(5,420),32,32
3000 sp_def 3,(5,520),32,32
3010 '1(4)
3020 sp_def 4,(130,420),32,32
3030 '2(5)
3040 sp_def 5,(280,420),32,32
3050 '3(6)
3060 sp_def 6,(430,420),32,32
3070 '4(7)
3080 sp_def 7,(130,330),32,32
3090 '5(8)
3100 sp_def 8,(280,330),32,32
3110 '6(9)
3120 sp_def 9,(430,330),32,32
3130 '9(10)
3140 sp_def 10,(130,250),32,32
3150 '6(11)
3160 sp_def 11,(280,250),32,32
3170 '9(12)
3180 sp_def 12,(430,250),32,32
3190 sp_def 13,(280,495),32,32
3200 '14:OK ボタン (-1)
3210 sp_def 14,(430,495),32,32
3220 'Sprite OFF
3230 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3240 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
3250 sp_put 0,(5,220),0,0
3260 sp_put 1,(5,320),1,0
3270 sp_put 2,(4,420),2,0
3280 sp_put 3,(5,520),3,0
3290 '1
3300 sp_put 4,(130,420),4,0
3310 '2
3320 sp_put 5,(280,420),5,0
3330 '3
3340 sp_put 6,(430,420),6,0
3350 '4
3360 sp_put 7,(130,330),7,0
3370 '5
3380 sp_put 8,(280,330),8,0
3390 '6
3400 sp_put 9,(430,330),9,0
3410 '7
3420 sp_put 10,(130,250),10,0
3430 '8
3440 sp_put 11,(280,250),11,0
3450 '9
3460 sp_put 12,(430,250),12,0
3470 '0
3480 sp_put 13,(280,495),13,0
3490 '14:OK ボタン
3500 sp_put 14,(430,495),14,0
3510 '************************************************************************************************
3520 'WXGAの場合　ここまで (1280 x 800)
3530 '************************************************************************************************
3540 else
3550 '選択肢の丸
3560 '************************************************************************************************
3570 'WUXGAの場合　ここから (1920 x 1200)
3580 '************************************************************************************************
3590 gload Gazo$ + "downscreen.png",0,0,800
3600 sp_def 0,(5,300),32,32
3610 sp_def 1,(5,400),32,32
3620 sp_def 2,(5,500),32,32
3630 sp_def 3,(5,600),32,32
3640 '1
3650 sp_def 4,(35,300),32,32
3660 '2
3670 sp_def 5,(35,400),32,32
3680 '3
3690 sp_def 6,(35,500),32,32
3700 '4
3710 sp_def 7,(70,300),32,32
3720 '5
3730 sp_def 8,(70,400),32,32
3740 '6
3750 sp_def 9,(70,500),32,32
3760 '7
3770 sp_def 10,(110,300),32,32
3780 '8
3790 sp_def 11,(110,400),32,32
3800 '9
3810 sp_def 12,(110,400),32,32
3820 sp_def 13,(150,400),32,32
3830 sp_def 14,(200,400),32,32
3840 'Sprite OFF
3850 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3860 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
3870 sp_put 0,(5,300),0,0
3880 sp_put 1,(5,400),1,0
3890 sp_put 2,(5,500),2,0
3900 sp_put 3,(5,600),3,0
3910 '1
3920 sp_put 4,(130,300),4,0
3930 '2
3940 sp_put 5,(130,400),5,0
3950 '3
3960 sp_put 6,(130,500),6,0
3970 '4
3980 sp_put 7,(340,300),7,0
3990 '5
4000 sp_put 8,(340,400),8,0
4010 '6
4020 sp_put 9,(340,500),9,0
4030 '7
4040 sp_put 10,(540,300),10,0
4050 '8
4060 sp_put 11,(540,400),11,0
4070 '9
4080 sp_put 12,(540,500),12,0
4090 '0
4100 sp_put 13,(340,600),13,0
4110 sp_put 14,(540,600),14,0
4120 '************************************************************************************************
4130 'WUXGAの場合　ここまで  (1920 x 1200)
4140 '************************************************************************************************
4150 endif
4160 Main_Top:
4170 'Main Message 2023.06.07
4180 '再生を止める
4190 play ""
4200 init "kb:4"
4210 'font 32:
4220 font 40
4230 if ex_info$(1) <> "JP" then
4240 '1.英語表示ターム
4250 print chr$(13) + chr$(13) + chr$(13)
4260 color rgb(217,255,212)
4270 print "Please Select Number?" + chr$(13)+chr$(13)
4280 '0
4290 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
4300 '1
4310 print " :2.Setting" + chr$(13)+chr$(13)
4320 '2
4330 print " :3.Help" + chr$(13)
4340 '3
4350 print " :4.(Finishing)Program" + chr$(13)
4360 COLOR rgb(0,0,0):No=0
4370 locate 1,15
4380 print "                                        "
4390 locate 1,15
4400 print "1.It has Selected Kabara Fortune Telling"
4410 '1.英語表示ターム
4420 '---------音声 日本語　英語に変える----------------
4430 'play Voice$ + "Voice_Main_Message_20230607.mp3"
4440 '---------音声 日本語　英語に変える----------------
4450 else
4460 '2.日本語表示ターム
4470 'Main_Screen_Select:
4480 '************************************************************************************************
4490 '1.WXGAの場合　ここから (1280 x 800)
4500 '************************************************************************************************
4510 if ((size(0) <= 1280) and (size(1) <= 800)) then
4520 '************************************************************************************************
4530 '1.WXGAの場合　ここから (1280 x 800)
4540 '************************************************************************************************
4550 font FONT
4560 color rgb(217,255,212)
4570 locate 1,5
4580 print "番号を選んでください"
4590 '0
4600 locate 1,7
4610 print " :1.数秘術占い"
4620 '1
4630 locate 1,10
4640 print " :2.設 定"
4650 '2
4660 locate 1,13
4670 print " :3.ヘルプ"
4680 '3
4690 locate 1,16
4700 print " :4.(プログラムを)終了する"
4710 COLOR rgb(0,0,0):No=0
4720 'locate 1,15
4730 '3行下げる
4740 if (count = 0) then
4750 locate 1,19
4760 print "           "
4770 locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択"
4780 play Voice$ + "Voice_Main_Message_20230607.mp3"
4790 endif
4800 '************************************************************************************************
4810 '1.WXGAの場合　ここまで (1280 x 800)
4820 '************************************************************************************************
4830 '2.日本語表示ターム
4840 else
4850 '************************************************************************************************
4860 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
4870 '************************************************************************************************
4880 font FONT
4890 print chr$(13) + chr$(13) + chr$(13)
4900 color rgb(217,255,212)
4910 print "番号を選んでください" + chr$(13)
4920 '0
4930 print " :1.数秘術占い" + chr$(13)
4940 '1
4950 print " :2.設 定" + chr$(13)
4960 '2
4970 print " :3.ヘルプ" + chr$(13)
4980 '3
4990 print " :4.(プログラムを)終了する" + chr$(13)
5000 COLOR rgb(0,0,0):No=0
5010 'locate 1,15
5020 '3行下げる
5030 if count=0 then
5040 locate 1,15
5050 print "           "
5060 locate 1,15:color rgb(0,0,0):print "1.数秘術占いを選択"
5070 play Voice$ + "Voice_Main_Message_20230607.mp3"
5080 endif
5090 '************************************************************************************************
5100 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5110 '************************************************************************************************
5120 endif
5130 '************************************************************************************************
5140 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5150 '************************************************************************************************
5160 endif
5170 Main_Screen_Select:
5180 y = 0:key$ = "":bg = 0:bg2=0
5190 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
5200 y = stick(1)
5210 '"May (2023)"
5220 key$ = inkey$
5230 bg = strig(1)
5240 bg2 = strig(0)
5250 pause 200
5260 wend
5270 '*******************************************************************************************************************************
5280 '  WUXGA(1920 x 1200)
5290 '  X=5:Y=300
5300 '  WXGA (1280 x 800)
5310 '  X=5:Y=200
5320 '*******************************************************************************************************************************
5330 '1.
5340 'ジョイパッドのソース ソート　ここから
5350 'カーソル　下 or 十字キー下
5360 '************************************************************************************************
5370 '1.WXGAの場合　ここから (1280 x 800)
5380 '************************************************************************************************
5390 if ((size(0) <= 1280) and (size(1) <= 800)) then
5400 '************************************************************************************************
5410 '1.WXGAの場合　ここから (1280 x 800)
5420 '************************************************************************************************
5430 if ((y = 1) or (key$ = chr$(31))) then
5440 select case No
5450 case 0:
5460 '1
5470 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:count = count + 1:beep:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":count=cunt+1:goto Main_Screen_Select:
5480 case 1:
5490 '2
5500 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                                 ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":count=count+1:goto Main_Screen_Select:
5510 case 2:
5520 '3
5530 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:color rgb(0,0,0):print "4.(プログラムを)終了するを選択":count=count+1:goto Main_Screen_Select:
5540 case 3:
5550 '0
5560 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(X,Y+20),0,0:beep:pause 200:count = count + 1:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択":count=count+1:goto Main_Screen_Select:
5570 end select
5580 endif
5590 '2.
5600 'カーソル　上　or 十字キー  上
5610 if ((y = -1) or (key$ = chr$(30))) then
5620 select case No
5630 case 0:
5640 '3
5650 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:COLOR rgb(0,0,0):print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
5660 case 1:
5670 '0
5680 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:COLOR rgb(0,0,0):print  "1.数秘術占いを選択":goto Main_Screen_Select:
5690 case 2:
5700 '1
5710 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":goto Main_Screen_Select:
5720 case 3:
5730 '2
5740 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                   ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":goto Main_Screen_Select:
5750 end select
5760 endif
5770 'ジョイパッド　ソース 部分　ここまで
5780 'ジョイパッド右　　or Enter key 決定
5790 if ((bg = 2) OR (key$ = chr$(13))) then
5800 select case No
5810 case 0:
5820 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen: 'Kabara_First_Top:
5830 case 1:
5840 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
5850 case 2:
5860 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
5870 case 3:
5880 play "":pause 200
5890 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:font 16:end
5900 end select
5910 endif
5920 if (bg2 = 2) then
5930 play "":pause 200
5940 play Voice$ + "Voice_Main_Message_20230607.mp3"
5950 goto Main_Screen_Select:
5960 endif
5970 '************************************************************************************************
5980 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
5990 '************************************************************************************************
6000 else
6010 if ((y = 1) or (key$ = chr$(31))) then
6020 select case No
6030 case 0:
6040 '1
6050 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6060 case 1:
6070 '2
6080 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6090 case 2:
6100 '3
6110 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6120 case 3:
6130 '0
6140 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
6150 end select
6160 endif
6170 '2.
6180 'カーソル　上　or 十字キー  上
6190 if ((y = -1) or (key$ = chr$(30))) then
6200 select case No
6210 case 0:
6220 '3
6230 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6240 case 1:
6250 '0
6260 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
6270 case 2:
6280 '1
6290 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6300 case 3:
6310 '2
6320 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6330 end select
6340 endif
6350 'ジョイパッド　ソース 部分　ここまで
6360 'ジョイパッド右　　or Enter key 決定
6370 if ((bg = 2) OR (key$ = chr$(13))) then
6380 select case No
6390 case 0:
6400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen:  'Kabara_First_Top:
6410 case 1:
6420 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
6430 case 2:
6440 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
6450 case 3:
6460 play "":pause 200
6470 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
6480 end select
6490 endif
6500 if (bg2 = 2) then
6510 play "":pause 200
6520 play Voice$ + "Voice_Main_Message_20230607.mp3"
6530 goto Main_Screen_Select:
6540 endif
6550 '************************************************************************************************
6560 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6570 '************************************************************************************************
6580 endif
6590 'Version
6600 Version:
6610 cls 3:PLAY ""
6620 if ((size(0) <= 1280) and (size(1) <= 800)) then
6630 '************************************************************************************************
6640 '1.WXGA ここから (1280 x 800)
6650 '************************************************************************************************
6660 gload Gazo$   + Gazo_WXGA$ + "VersionScreen_918x680_20240219.png",0,0,0
6670 '************************************************************************************************
6680 '1.WXGA ここまで (1280 x 800)
6690 '************************************************************************************************
6700 else
6710 '************************************************************************************************
6720 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
6730 '************************************************************************************************
6740 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
6750 gload Gazo$ + "downscreen.png",0,0,800
6760 '************************************************************************************************
6770 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6780 '************************************************************************************************
6790 endif
6800 init"kb:4":font FONT
6810 'talk"バージョン情報です"
6820 'Message :Version
6830 play Voice$ +  "Voice_Version_Message_20230607.mp3"
6840 if ((size(0) <= 1280) and (size(1) <= 800)) then
6850 color rgb(0,0,255)
6860 locate 1,5
6870 print "・Title:数秘術占い";chr$(13)
6880 locate 1,8
6890 print "・" + Version$ + chr$(13)
6900 locate 1,10
6910 print "・Author:licksjp"+chr$(13)
6920 locate 1,13
6930 print "・E-mail:licksjp@gmail.com" + chr$(13)
6940 locate 0,15
6950 print "(C)licksjp All rights " + chr$(13)
6960 locate 7,16
6970 print "reserved since 2009"+chr$(13)
6980 locate 0,19
6990 color rgb(0,0,0)
7000 print "ジョイパッドの右を押してください"
7010 else
7020 locate 0,3
7030 color rgb(0,0,255)
7040 print "・Title:数秘術占い";chr$(13)
7050 print "・" + Version$ + chr$(13)
7060 print "・Author:licksjp"+chr$(13)
7070 print "・E-mail:licksjp@gmail.com" + chr$(13)
7080 locate 0,12
7090 print "(C)licksjp All rights " + chr$(13)
7100 locate 7,13
7110 print "reserved since 2009"+chr$(13)
7120 locate 0,18
7130 color rgb(255,255,255)
7140 print "ジョイパッドの右を押してください"
7150 endif
7160 Versionn_Selection:
7170 bg = 0:key$ = "":bg2 = 0
7180 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
7190 bg = strig(1)
7200 key$ = inkey$
7210 bg2 = strig(0)
7220 pause 200
7230 wend
7240 if ((bg = 2) or (key$ = chr$(13))) then
7250 cls 4:goto Main_Screen:
7260 endif
7270 if (bg2=2) then
7280 play "":pause 200
7290 play Voice$ + "Voice_Version_Message_20230607.mp3"
7300 goto Versionn_Selection:
7310 endif
7320 '1.数秘ナンバーを求める
7330 '誕生日入力(生れた年代)
7340 Input_Seireki:
7350 '************************************************************************************************
7360 '1.WXGAの時1200x800の時
7370 '************************************************************************************************
7380 '************************************************************************************************
7390 '2.WUXGAの時1920x1200の時
7400 '************************************************************************************************
7410 cls 3:play "":count=0:count2=0
7420 'No = -1:Okのとき
7430 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
7440 '************************************************************************************************
7450 '配列buf_year(4)を0で埋める。:データー初期化 ここから
7460 '************************************************************************************************
7470 for i=0 to 3
7480 buf_year(i)=0
7490 next i
7500 '************************************************************************************************
7510 '配列buf_year(4)を0で埋める。 :データー初期化　ここまで
7520 '************************************************************************************************
7530 '************************************************************************************************
7540 '1.WXGAの時1200x800の時
7550 '************************************************************************************************
7560 if ((size(0) <= 1280) and (size(1) <= 800)) then
7570 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png",0,0,0
7580 else
7590 '************************************************************************************************
7600 '2.WUXGAの時1920x1200の時
7610 '************************************************************************************************
7620 gload Gazo$ + "Screen2.png",0,0,0
7630 gload Gazo$ + "downscreen.png",0,0,800
7640 '************************************************************************************************
7650 '2.WUXGAの時1920x1200の時
7660 '************************************************************************************************
7670 endif
7680 'Init"kb:2"
7690 '音声ファイル再生 2023.06.07
7700 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
7710 font FONT
7720 locate 0,1
7730 if ex_info$(1) <> "JP" then
7740 color rgb(255,255,255)
7750 color rgb(255,255,255)
7760 print "Input Born Year?" + chr$(13)
7770 color rgb(255,255,255)
7780 locate 2,4
7790 print "Your Born Year(4 dedgit for AC):" + buf_year$
7800 else
7810 '文字色：黒　 color rgb(0,0,0)
7820 color rgb(255,255,255)
7830 print "生まれた年代を入れて下さい" + chr$(13)
7840 color rgb(255,255,255)
7850 locate 2,4
7860 print "生まれた年代(西暦4桁):" + buf_year$
7870 endif
7880 '=============================
7890 'テンキーの色(1~９)　白 ,決定ボタン　青
7900 '=============================
7910 color rgb(255,255,255)
7920 sp_on 4,0: sp_on 5,0:sp_on 6,0
7930 sp_on 7,0:sp_on 8,0:sp_on 9,0
7940 sp_on 10,0:sp_on 11,0:sp_on 12,0
7950 sp_on 13,0:sp_on 14,1
7960 Input_Seireki2:
7970 key$="":bg=0:y=0:y2=0:bg2=0:
7980 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7990 key$ = inkey$
8000 bg = strig(1)
8010 y = stick(1)
8020 y2 = stick(0)
8030 bg2 = strig(0)
8040 pause 200
8050 wend
8060 '十字キー　ここから
8070 '上の矢印　または、十字キー上
8080 if ((y = -1) or (key$ = chr$(30))) then
8090 select case No
8100 'No=-1:okのとき:初期の状態
8110 '0kボタンから３に移動
8120 '上に行く 処理
8130 case -1:
8140 No=3:sp_on 6,1:sp_on 14,0:beep
8150 pause 200:goto Input_Seireki2:
8160 '選択肢:3
8170 '3ボタンから 6に移動
8180 case 3:
8190 No=6:sp_on 9,1:sp_on 6,0:beep
8200 pause 200:goto Input_Seireki2:
8210 '6ボタンから ９に移動
8220 case 6:
8230 No=9:sp_on 12,1:sp_on 9,0:beep
8240 pause 200:goto Input_Seireki2:
8250 '6ボタンから ９に移動　ここまで
8260 '9で上を押して何もしない
8270 case 9:
8280 '何もしない
8290 No=9
8300 beep:pause 200:goto Input_Seireki2:
8310 '9で上を押しても何もしない　ここまで
8320 '上　 0ボタンから2ボタン
8330 'sp_on 6,1:1
8340 'sp_on 8,1:5
8350 'sp_on 7,1:7
8360 case 0:
8370 No=2:sp_on 13,0:sp_on 5,1:beep
8380 pause 200:goto Input_Seireki2:
8390 '上  0ボタンから2ボタン　ここまで
8400 '2から５になる 上
8410 case 2:
8420 No=5:sp_on 8,1:sp_on 5,0:beep
8430 pause 200:goto Input_Seireki2:
8440 case 5:
8450 No=8:sp_on 11,1:sp_on 8,0:beep
8460 pause 200:goto Input_Seireki2:
8470 case 8:
8480 beep:pause 200:goto Input_Seireki2:
8490 case 1:
8500 No=4:sp_on 7,1:sp_on 4,0:beep
8510 pause 200:goto Input_Seireki2:
8520 case 4:
8530 No=7:sp_on 10,1:sp_on 7,0:beep
8540 pause 200:goto Input_Seireki2:
8550 case 7:
8560 beep:pause 200:goto Input_Seireki2:
8570 end select
8580 endif
8590 '左３　ここまで
8600 '下の矢印
8610 '中央 2
8620 if ((y=1) or (key$ = chr$(31))) then
8630 select case No
8640 '9から６に下げる
8650 case 9:
8660 No=6:sp_on 12,0:sp_on 9,1:beep
8670 pause 200:goto Input_Seireki2:
8680 '6から３に下げる
8690 case 6:
8700 No=3:sp_on 9,0:sp_on 6,1:beep
8710 pause 200:goto Input_Seireki2:
8720 '3から０ｋに変える
8730 case 3:
8740 No=-1:sp_on 14,1:sp_on 6,0:beep
8750 pause 200:goto Input_Seireki2:
8760 'Okから下のボタンを押しても何もしない
8770 case -1:
8780 beep:pause 200:goto Input_Seireki2:
8790 case 8:
8800 No=5:sp_on 8,1:sp_on 11,0:beep
8810 pause 200:goto Input_Seireki2:
8820 case 5:
8830 No=2:sp_on 5,1:sp_on 8,0:beep
8840 pause 200:goto Input_Seireki2:
8850 case 2:
8860 No=0:sp_on 13,1:sp_on 5,0:beep
8870 pause 200:goto Input_Seireki2:
8880 case 0:
8890 beep:pause 200:goto Input_Seireki2:
8900 case 7:
8910 No=4:sp_on 7,1:sp_on 10,0:beep
8920 pause 200:goto Input_Seireki2:
8930 case 4:
8940 No=1:sp_on 4,1:sp_on 7,0:beep
8950 pause 200:goto Input_Seireki2:
8960 case 1:
8970 beep:pause 200:goto Input_Seireki2:
8980 end select
8990 endif
9000 '左へボタン 十字キー　左　or 　カーソル左
9010 if ((y2 = -1) or (key$ = chr$(29))) then
9020 select case No
9030 'Ok ボタン  Okから　左　０に行く
9040 case -1:
9050 No=0:sp_on 13,1:sp_on 14,0:beep
9060 pause 200:goto Input_Seireki2:
9070 '0 ボタン  左　何もしない
9080 case 0:
9090 beep:pause 200:goto Input_Seireki2:
9100 case 3:
9110 No=2:sp_on 5,1:sp_on 6,0:beep
9120 pause 200:goto Input_Seireki2:
9130 case 2:
9140 No=1:sp_on 5,0:sp_on 4,1:beep
9150 pause 200:goto Input_Seireki2:
9160 case 1:
9170 beep:pause 200:goto Input_Seireki2:
9180 case 6:
9190 No=5:sp_on 8,1:sp_on 9,0:beep
9200 pause 200:goto Input_Seireki2:
9210 case 5:
9220 No=4:sp_on 7,1:sp_on 8,0:beep
9230 pause 200:goto Input_Seireki2:
9240 case 4:
9250 beep:pause 200:goto Input_Seireki2:
9260 case 9:
9270 No=8:sp_on 11,1:sp_on 12,0:beep
9280 pause 200:goto Input_Seireki2:
9290 case 8:
9300 No=7:sp_on 10,1:sp_on 11,0:beep
9310 pause 200:goto Input_Seireki2:
9320 case 7:
9330 beep:pause 200:goto Input_Seireki2:
9340 end select
9350 endif
9360 '右  十字キー　右　or カーソル　右
9370 if ((y2 = 1) or (key$ = chr$(28))) then
9380 select case No
9390 '0ボタンからokボタン右に移動
9400 case 0:
9410 No=-1:sp_on 14,1:sp_on 13,0:beep
9420 pause 200:goto Input_Seireki2:
9430 '0ボタンからokボタン 右に移動　ここまで
9440 'OKボタンで右を押して何もしない
9450 case -1:
9460 pause 200:goto Input_Seireki2:
9470 case 1:
9480 No=2:sp_on 5,1:sp_on 4,0:beep
9490 pause 200:goto Input_Seireki2:
9500 case 2:
9510 No=3:sp_on 6,1:sp_on 5,0
9520 beep:pause 200:goto Input_Seireki2:
9530 case 3:
9540 beep:pause 200:goto Input_Seireki2:
9550 case 4:
9560 No=5:sp_on 8,1:sp_on 7,0:beep
9570 pause 200:goto Input_Seireki2:
9580 case 5:
9590 No=6:sp_on 9,1:sp_on 8,0:beep
9600 pause 200:goto Input_Seireki2:
9610 case 7:
9620 No=8:sp_on 11,1:sp_on 10,0:beep
9630 pause 200:goto Input_Seireki2:
9640 case 8:
9650 No=9:sp_on 12,1:sp_on 11,0:beep
9660 pause 200:goto Input_Seireki2:
9670 case 9:
9680 beep:pause 200:goto Input_Seireki2:
9690 case 6:
9700 beep:pause 200:goto Input_Seireki2:
9710 end select
9720 'Okから右ボタンを押して何もしない ここまで
9730 endif
9740 '十字キー　ここまで
9750 if ((bg=2) or (key$=chr$(13))) then
9760 select case count
9770 case 0:
9780 count=1
9790 if (No=-1) then
9800 count=0
9810 'Okボタンを押したとき
9820 goto Input_Seireki2:
9830 else
9840 '===================================
9850 'Okボタン以外が押されたとき  1桁目の入力
9860 '===================================
9870 count2=1
9880 if (No >= 1 and No <= 2) then
9890 buf_year$="":buf_year$ = str$(No)
9900 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
9910 if ex_info$(1) <> "JP" then
9920 n1= len("Input Born Year?(4 dedgit):")
9930 else
9940 n1 = len("生まれた年代(西暦4桁):")
9950 endif
9960 locate 2,4
9970 color rgb(255,255,255)
9980 if ex_info$(1) <> "JP" then
9990 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
10000 else
10010 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
10020 endif
10030 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
10040 'print "生まれた年代(西暦4桁):";buf_year2$
10050 print buf_Born_Year_line$
10060 goto Input_Seireki2:
10070 else
10080 count=0
10090 ui_msg"数字が範囲外になります。"
10100 buf_year$="":buf_year=0
10110 goto Input_Seireki2:
10120 endif
10130 endif
10140 case 1:
10150 count = 2
10160 if (No = -1) then
10170 count = 1
10180 goto Input_Seireki2:
10190 else
10200 count2 = 1
10210 b = val(buf_year$)
10220 buf_year = b * 10 + No
10230 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
10240 locate 2,4
10250 color rgb(255,255,255)
10260 print "                                                                "
10270 locate 2,4
10280 if ex_info$(1) <> "JP" then
10290 print "Input Born Year(4 dedgit):";buf_year$
10300 else
10310 print "生まれた年代(西暦4桁):";buf_year2$
10320 endif
10330 'if (No = -1) then
10340 'count=1
10350 goto Input_Seireki2:
10360 endif
10370 case 2:
10380 count=3
10390 if (No=-1) then
10400 count =2
10410 goto Input_Seireki2:
10420 else
10430 b = val(buf_year$)
10440 buf_year = b*10 + No
10450 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
10460 locate 2,4
10470 color rgb(255,255,255)
10480 print "                                        "
10490 locate 2,4
10500 if ex_info$(1) <> "JP" then
10510 print "Input Born Year?(4 dedgit):";buf_year$
10520 else
10530 print "生まれた年代(西暦4桁):";buf_year2$
10540 endif
10550 goto Input_Seireki2:
10560 endif
10570 case 3:
10580 count=4
10590 if (No = -1) then
10600 count=3
10610 goto Input_Seireki2:
10620 else
10630 b = val(buf_year$)
10640 buf_year = b * 10 + No
10650 buf_year$ = str$(buf_year)
10660 locate 2,4
10670 color RGB(255,255,255)
10680 print "                                      "
10690 locate 2,4
10700 if ex_info$(1) <> "JP" then
10710 print "Input Born Year?(4 dedgit):";buf_year$
10720 else
10730 print "生まれた年代(西暦4桁):";buf_year$
10740 endif
10750 buf_year=val(buf_year$)
10760 'year=val(buf_year$)
10770 'if (No=-1) then
10780 'goto Input_Born_Month:
10790 'else
10800 goto Input_Seireki2:
10810 endif
10820 case 4:
10830 'bufyear=buf_year
10840 if (No = -1) then
10850 buf_year = val(buf_year$)
10860 bufyear = buf_year
10870 sp_on 14,0
10880 goto Input_Born_Month:
10890 else
10900 goto Input_Seireki2:
10910 endif
10920 end select
10930 endif
10940 '=========================
10950 'bg2　キャンセルボタン
10960 '=========================
10970 if (bg2 = 2) then
10980 select case count2
10990 case 0:
11000 'Okボタンを押したときの処理
11010 if (No = -1) then
11020 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
11030 'count = 0
11040 locate 2,4
11050 color rgb(255,255,255)
11060 print "                                      "
11070 locate 2,4
11080 if ex_info$(1) <> "JP" then
11090 print "Input Born Year?(4 dedgit):";buf_year$
11100 else
11110 print "生まれた年代（西暦4桁):";buf_year$
11120 endif
11130 '=============================
11140 'case 0:前の画面に戻る 数秘術トップメニュー
11150 '=============================
11160 sp_on 14,0:goto Kabara_TopScreen:
11170 else
11180 'count=0
11190 '(buf_year=0) then
11200 buf_year = 0:buf_year$ = string$(4,"*")
11210 goto Input_Seireki2:
11220 'endif
11230 endif
11240 case 1:
11250 if (No = -1) then
11260 count2 = 0:count = 0
11270 buf$=right$(buf_year$,1)
11280 if (val(buf$) >= 1 and val(buf$) <= 9) then
11290 buf_year$ = "****":buf_year=0
11300 color rgb(255,255,255)
11310 locate 0,4:
11320 print "                                      "
11330 locate 2,4
11340 if ex_info$(1) <> "JP" then
11350 print "Input Born Year(4 dedgit):";buf_year$
11360 else
11370 print "生まれた年代（西暦4桁):" + buf_year$
11380 endif
11390 goto Input_Seireki2:
11400 endif
11410 else
11420 endif
11430 end select
11440 endif
11450 end
11460 'Input"生れた年代(4桁,〜2025年):",year
11470 'if year > 2025 then goto Input_Seireki:
11480 'if year = 123 then cls 3:cls 4:goto Main_Screen:
11490 '"4桁目"
11500 'bufyear4 = fix(year / 1000)
11510 '"3桁目"
11520 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
11530 '"2桁目"
11540 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
11550 '"1桁目"
11560 'bufyear1 = fix((year - ((bufyear4*
11570 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
11580 '生れた月を入力
11590 Input_Born_Month:
11600 cls 3:play "":count=0:count2=0
11610 'No=-1:Okのとき
11620 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
11630 for i=0 to 1
11640 buf_month(i)=0
11650 next i
11660 '***********************************************************
11670 '1.WXGAの時 ここから
11680 '(1200 x 800)
11690 '***********************************************************
11700 if ((size(0) <= 1280) and (size(1) <= 800)) then
11710 gload Gazo$ + Gazo_WXGA$ +"Screen2_907x680_20240216.png",0,0,0
11720 '***********************************************************
11730 '1.WXGAの時　ここまで
11740 '(1200 x 800)
11750 '***********************************************************
11760 else
11770 '***********************************************************
11780 '2.WUXGAの時(WXGA以外の時)　ここから
11790 '(1920 gload Gazo$ + "Selection.png",1,60,240
11800 '***********************************************************
11810 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11820 gload Gazo$ + "Screen2.png",0,0,0
11830 gload Gazo$ + "downscreen.png",0,0,800
11840 '***********************************************************
11850 '2.WUXGAの時(WXGA以外の時)　ここまで
11860 '(1920 gload Gazo$ + "Selection.png",1,60,240
11870 '***********************************************************
11880 endif
11890 'Init"kb:2"
11900 if ex_info$(1) <> "JP" then
11910 else
11920 '音声ファイル再生 2023.06.07
11930 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
11940 endif
11950 font FONT
11960 locate 0,1
11970 '文字色：黒　 color rgb(0,0,0)
11980 if ex_info$(1) <> "JP" then
11990 '英語パート
12000 '文字色:白
12010 color rgb(255,255,255)
12020 print "Input Born Month?(1~12):" + chr$(13)
12030 '文字色:白
12040 color rgb(255,255,255)
12050 locate 2,4
12060 '文字色:白
12070 print "Your Born Month?(1~12):";buf_Month$
12080 color rgb(255,255,255)
12090 else
12100 '日本語パート
12110 color rgb(255,255,255)
12120 print "生まれた月を入れて下さい" + chr$(13)
12130 '文字色:白
12140 color rgb(255,255,255)
12150 locate 2,4
12160 '文字色:白
12170 print "生まれた月(1月~12月):";buf_Month$
12180 color rgb(255,255,255)
12190 endif
12200 'locate 4,6:print ":7"
12210 'locate 9,6:print ":8"
12220 'locate 12,6:print ":9"
12230 'locate 4,6
12240 '文字色:赤
12250 'print ":7  :8  :9" + chr$(13)
12260 'color rgb(255,255,255)
12270 'locate 4,8
12280 'print ":4  :5  :6" + chr$(13)
12290 'color rgb(255,255,255)
12300 'locate 4,10
12310 'print ":1  :2  :3" + chr$(13)
12320 'locate 4,12
12330 'print "    :0"
12340 'locate 12,12
12350 'color rgb(255,0,0)
12360 'print ":Ok"
12370 sp_on 4,0: sp_on 5,0:sp_on 6,0
12380 sp_on 7,0:sp_on 8,0:sp_on 9,0
12390 sp_on 10,0:sp_on 11,0:sp_on 12,0
12400 sp_on 13,0:sp_on 14,1
12410 Input_Born_Month2:
12420 key$="":bg=0:y=0:y2=0:bg2=0
12430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12440 key$ = inkey$
12450 bg = strig(1)
12460 y = stick(1)
12470 y2 = stick(0)
12480 bg2 = strig(0)
12490 pause 200
12500 wend
12510 if ((size(0) <= 1280) and (size(1) <= 800)) then
12520 '***********************************************************
12530 '1.WXGAの時 ここから
12540 '(1200 x 800)
12550 '***********************************************************
12560 '十字キー　ここから
12570 '上の矢印　または、十字キー上
12580 if ((y = -1) or (key$ = chr$(30))) then
12590 select case No
12600 'No=-1:okのとき:初期の状態
12610 '0kボタンから３に移動
12620 '上に行く 処理
12630 case -1:
12640 No=3:sp_on 6,1:sp_on 14,0:beep
12650 pause 200:goto Input_Born_Month2:
12660 '選択肢:3
12670 '3ボタンから 6に移動
12680 case 3:
12690 No=6:sp_on 9,1:sp_on 6,0:beep
12700 pause 200:goto Input_Born_Month2:
12710 '6ボタンから ９に移動
12720 case 6:
12730 No=9:sp_on 12,1:sp_on 9,0:beep
12740 pause 200:goto Input_Born_Month2:
12750 '6ボタンから ９に移動　ここまで
12760 '9で上を押して何もしない
12770 case 9:
12780 '何もしない
12790 No=9
12800 beep:pause 200:goto Input_Born_Month2:
12810 '9で上を押しても何もしない　ここまで
12820 '上　 0ボタンから2ボタン
12830 'sp_on 6,1:1
12840 'sp_on 8,1:5
12850 'sp_on 7,1:7
12860 case 0:
12870 No=2:sp_on 13,0:sp_on 5,1:beep
12880 pause 200:goto Input_Born_Month2:
12890 '上  0ボタンから2ボタン　ここまで
12900 '2から５になる 上
12910 case 2:
12920 No=5:sp_on 8,1:sp_on 5,0:beep
12930 pause 200:goto Input_Born_Month2:
12940 case 5:
12950 No=8:sp_on 11,1:sp_on 8,0:beep
12960 pause 200:goto Input_Born_Month2:
12970 case 8:
12980 beep:pause 200:goto Input_Born_Month2:
12990 case 1:
13000 No=4:sp_on 7,1:sp_on 4,0:beep
13010 pause 200:goto Input_Born_Month2:
13020 case 4:
13030 No=7:sp_on 10,1:sp_on 7,0:beep
13040 pause 200:goto Input_Born_Month2:
13050 case 7:
13060 beep:pause 200:goto Input_Born_Month2:
13070 end select
13080 endif
13090 '左３　ここまで
13100 '下の矢印
13110 '中央 2
13120 if ((y=1) or (key$ = chr$(31))) then
13130 select case No
13140 '9から６に下げる
13150 case 9:
13160 No=6:sp_on 12,0:sp_on 9,1:beep
13170 pause 200:goto Input_Born_Month2:
13180 '6から３に下げる
13190 case 6:
13200 No=3:sp_on 9,0:sp_on 6,1:beep
13210 pause 200:goto Input_Born_Month2:
13220 '3から０ｋに変える
13230 case 3:
13240 No=-1:sp_on 14,1:sp_on 6,0:beep
13250 pause 200:goto Input_Born_Month2:
13260 'Okから下のボタンを押しても何もしない
13270 case -1:
13280 beep:pause 200:goto Input_Born_Month2:
13290 case 8:
13300 No=5:sp_on 8,1:sp_on 11,0:beep
13310 pause 200:goto Input_Born_Month2:
13320 case 5:
13330 No=2:sp_on 5,1:sp_on 8,0:beep
13340 pause 200:goto Input_Born_Month2:
13350 case 2:
13360 No=0:sp_on 13,1:sp_on 5,0:beep
13370 pause 200:goto Input_Born_Month2:
13380 case 0:
13390 beep:pause 200:goto Input_Born_Month2:
13400 case 7:
13410 No=4:sp_on 7,1:sp_on 10,0:beep
13420 pause 200:goto Input_Born_Month2:
13430 case 4:
13440 No=1:sp_on 4,1:sp_on 7,0:beep
13450 pause 200:goto Input_Born_Month2:
13460 case 1:
13470 beep:pause 200:goto Input_Born_Month2:
13480 end select
13490 endif
13500 '左へボタン 十字キー　左　or 　カーソル左
13510 if ((y2 = -1) or (key$ = chr$(29))) then
13520 select case No
13530 'Ok ボタン  Okから　左　０に行く
13540 case -1:
13550 No=0:sp_on 13,1:sp_on 14,0:beep
13560 pause 200:goto Input_Born_Month2:
13570 '0 ボタン  左　何もしない
13580 case 0:
13590 beep:pause 200:goto Input_Born_Month2:
13600 case 3:
13610 No=2:sp_on 5,1:sp_on 6,0:beep
13620 pause 200:goto Input_Born_Month2:
13630 case 2:
13640 No=1:sp_on 5,0:sp_on 4,1:beep
13650 pause 200:goto Input_Born_Month2:
13660 case 1:
13670 beep:pause 200:goto Input_Born_Month2:
13680 case 6:
13690 No=5:sp_on 8,1:sp_on 9,0:beep
13700 pause 200:goto Input_Born_Month2:
13710 case 5:
13720 No=4:sp_on 7,1:sp_on 8,0:beep
13730 pause 200:goto Input_Born_Month2:
13740 case 4:
13750 beep:pause 200:goto Input_Born_Month2:
13760 case 9:
13770 No=8:sp_on 11,1:sp_on 12,0:beep
13780 pause 200:goto Input_Born_Month2:
13790 case 8:
13800 No=7:sp_on 10,1:sp_on 11,0:beep
13810 pause 200:goto Input_Born_Month2:
13820 case 7:
13830 beep:pause 200:goto Input_Born_Month2:
13840 end select
13850 endif
13860 '右  十字キー　右　or カーソル　右
13870 if ((y2 = 1) or (key$ = chr$(28))) then
13880 select case No
13890 '0ボタンからokボタン右に移動
13900 case 0:
13910 No=-1:sp_on 14,1:sp_on 13,0:beep
13920 pause 200:goto Input_Born_Month2:
13930 '0ボタンからokボタン 右に移動　ここまで
13940 'OKボタンで右を押して何もしない
13950 case -1:
13960 pause 200:goto Input_Born_Month2:
13970 case 1:
13980 No=2:sp_on 5,1:sp_on 4,0:beep
13990 pause 200:goto Input_Born_Month2:
14000 case 2:
14010 No=3:sp_on 6,1:sp_on 5,0
14020 beep:pause 200:goto Input_Born_Month2:
14030 case 3:
14040 beep:pause 200:goto Input_Born_Month2:
14050 case 4:
14060 No=5:sp_on 8,1:sp_on 7,0:beep
14070 pause 200:goto Input_Born_Month2:
14080 case 5:
14090 No=6:sp_on 9,1:sp_on 8,0:beep
14100 pause 200:goto Input_Born_Month2:
14110 case 7:
14120 No=8:sp_on 11,1:sp_on 10,0:beep
14130 pause 200:goto Input_Born_Month2:
14140 case 8:
14150 No=9:sp_on 12,1:sp_on 11,0:beep
14160 pause 200:goto Input_Born_Month2:
14170 case 9:
14180 beep:pause 200:goto Input_Born_Month2:
14190 case 6:
14200 beep:pause 200:goto Input_Born_Month2:
14210 end select
14220 'Okから右ボタンを押して何もしない ここまで
14230 endif
14240 '***********************************************************
14250 '1.WXGAの時 ここまで
14260 '(1200 x 800)
14270 '***********************************************************
14280 else
14290 '***********************************************************
14300 '2.WUXGAの時(WXGA以外の時)　ここから
14310 '(1920 gload Gazo$ + "Selection.png",1,60,240
14320 '***********************************************************
14330 '十字キー　ここから
14340 '上の矢印　または、十字キー上
14350 if ((y = -1) or (key$ = chr$(30))) then
14360 select case No
14370 'No=-1:okのとき:初期の状態
14380 '0kボタンから３に移動
14390 '上に行く 処理
14400 case -1:
14410 No=3:sp_on 12,1:sp_on 14,0:BEEP
14420 pause 200:goto Input_Born_Month2:
14430 '選択肢:3
14440 '3ボタンから 6に移動
14450 case 3:
14460 No=6:sp_on 12,0:sp_on 11,1:beep
14470 pause 200:goto Input_Born_Month2:
14480 '6ボタンから ９に移動
14490 case 6:
14500 No=9:sp_on 10,1:sp_on 11,0:beep
14510 pause 200:goto Input_Born_Month2:
14520 '6ボタンから ９に移動　ここまで
14530 '9で上を押して何もしない
14540 case 9:
14550 '何もしない
14560 No=9
14570 beep:pause 200:goto Input_Born_Month2:
14580 '9で上を押しても何もしない　ここまで
14590 '上　 0ボタンから2ボタン
14600 'sp_on 6,1:1
14610 'sp_on 8,1:5
14620 'sp_on 7,1:7
14630 case 0:
14640 No=2:sp_on 13,0:sp_on 9,1:beep
14650 pause 200:goto Input_Born_Month2:
14660 '上  0ボタンから2ボタン　ここまで
14670 '2から５になる 上
14680 case 2:
14690 No=5:sp_on 8,1:sp_on 9,0:beep
14700 pause 200:goto Input_Born_Month2:
14710 case 5:
14720 No=8:sp_on 7,1:sp_on 8,0:beep
14730 pause 200:goto Input_Born_Month2:
14740 case 8:
14750 beep:pause 200:goto Input_Born_Month2:
14760 case 1:
14770 No=4:sp_on 5,1:sp_on 6,0:beep
14780 pause 200:goto Input_Born_Month2:
14790 case 4:
14800 No=7:sp_on 4,1:sp_on 5,0:beep
14810 pause 200:goto Input_Born_Month2:
14820 case 7:
14830 beep:pause 200:goto Input_Born_Month2:
14840 end select
14850 endif
14860 '左３　ここまで
14870 '下の矢印
14880 '中央 2
14890 if ((y=1) or (key$ = chr$(31))) then
14900 select case No
14910 '9から６に下げる
14920 case 9:
14930 No=6:sp_on 11,1:sp_on 10,0:beep
14940 pause 200:goto Input_Born_Month2:
14950 '6から３に下げる
14960 case 6:
14970 No=3:sp_on 12,1:sp_on 11,0:beep
14980 pause 200:goto Input_Born_Month2:
14990 '3から０ｋに変える
15000 case 3:
15010 No=-1:sp_on 14,1:sp_on 12,0:beep
15020 pause 200:goto Input_Born_Month2:
15030 'Okから下のボタンを押しても何もしない
15040 case -1:
15050 beep:pause 200:goto Input_Born_Month2:
15060 case 8:
15070 No=5:sp_on 8,1:sp_on 7,0:beep
15080 pause 200:goto Input_Born_Month2:
15090 case 5:
15100 No=2:sp_on 9,1:sp_on 8,0:beep
15110 pause 200:goto Input_Born_Month2:
15120 case 2:
15130 No=0:sp_on 13,1:sp_on 9,0:beep
15140 pause 200:goto Input_Born_Month2:
15150 case 0:
15160 beep:pause 200:goto Input_Born_Month2:
15170 case 7:
15180 No=4:sp_on 5,1:sp_on 4,0:beep
15190 pause 200:goto Input_Born_Month2:
15200 case 4:
15210 No=1:sp_on 6,1:sp_on 5,0:beep
15220 pause 200:goto Input_Born_Month2:
15230 case 1:
15240 beep:pause 200:goto Input_Born_Month2:
15250 end select
15260 endif
15270 '左へボタン 十字キー　左　or 　カーソル左
15280 if ((y2 = -1) or (key$ = chr$(29))) then
15290 select case No
15300 'Ok ボタン  Okから　左　０に行く
15310 case -1:
15320 No=0:sp_on 13,1:sp_on 14,0
15330 beep:pause 200:goto Input_Born_Month2:
15340 '0 ボタン  左　何もしない
15350 case 0:
15360 beep:pause 200:goto Input_Born_Month2:
15370 case 3:
15380 No=2:sp_on 9,1:sp_on 12,0:beep
15390 pause 200:goto Input_Born_Month2:
15400 case 2:
15410 No=1:sp_on 6,1:sp_on 9,0:beep
15420 pause 200:goto Input_Born_Month2:
15430 case 1:
15440 beep:pause 200:goto Input_Born_Month2:
15450 case 6:
15460 No=5:sp_on 8,1:sp_on 11,0:beep
15470 pause 200:goto Input_Born_Month2:
15480 case 5:
15490 No=4:sp_on 5,1:sp_on 8,0:beep
15500 pause 200:goto Input_Born_Month2:
15510 case 4:
15520 beep:pause 200:goto Input_Born_Month2:
15530 case 9:
15540 No=8:sp_on 7,1:sp_on 10,0:beep
15550 pause 200:goto Input_Born_Month2:
15560 case 8:
15570 No=7:sp_on 4,1:sp_on 7,0:beep
15580 pause 200:goto Input_Born_Month2:
15590 case 7:
15600 beep:pause 200:goto Input_Born_Month2:
15610 end select
15620 endif
15630 '右  十字キー　右　or カーソル　右
15640 if ((y2 = 1) or (key$ = chr$(28))) then
15650 select case No
15660 '0ボタンからokボタン右に移動
15670 case 0:
15680 No=-1:sp_on 14,1:sp_on 13,0:beep
15690 pause 200:goto Input_Born_Month2:
15700 '0ボタンからokボタン 右に移動　ここまで
15710 'OKボタンで右を押して何もしない
15720 case -1:
15730 beep:pause 200:goto Input_Born_Month2:
15740 case 1:
15750 No=2:sp_on 9,1:sp_on 6,0:beep
15760 pause 200:goto Input_Born_Month2:
15770 case 2:
15780 No=3:sp_on 12,1:sp_on 9,0:beep
15790 pause 200:goto Input_Born_Month2:
15800 case 3:
15810 beep:pause 200:goto Input_Born_Month2:
15820 case 4:
15830 No=5:sp_on 8,1:sp_on 5,0:beep
15840 pause 200:goto Input_Born_Month2:
15850 case 5:
15860 No=6:sp_on 11,1:sp_on 8,0:beep
15870 pause 200:goto Input_Born_Month2:
15880 case 7:
15890 No=8:sp_on 7,1:sp_on 4,0:beep
15900 pause 200:goto Input_Born_Month2:
15910 case 8:
15920 No=9:sp_on 10,1:sp_on 7,0:beep
15930 pause 200:goto Input_Born_Month2:
15940 case 9:
15950 beep:pause 200:goto Input_Born_Month2:
15960 case 6:
15970 beep:pause 200:goto Input_Born_Month2:
15980 end select
15990 'Okから右ボタンを押して何もしない ここまで
16000 endif
16010 '***********************************************************
16020 '2.WUXGAの時(WXGA以外の時)　ここまで
16030 '(1920 gload Gazo$ + "Selection.png",1,60,240
16040 '***********************************************************
16050 endif
16060 '***********************************************************
16070 '2.WUXGAの時(WXGA以外の時)　ここまで
16080 '(1920 gload Gazo$ + "Selection.png",1,60,240
16090 '***********************************************************
16100 '十字キー　ここまで
16110 '右の丸ボタン　決定キー
16120 if ((bg=2) or (key$=chr$(13))) then
16130 select case count
16140 case 0:
16150 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
16160 if (buf_month = 1 or buf_month = 2) then
16170 locate 2,4
16180 color RGB(255,255,255)
16190 if ex_info$(1) <> "JP" then
16200 print "Input Born Month(1~12):";buf_Month2$
16210 else
16220 print "生まれた月(1月~12月):";buf_Month2$
16230 endif
16240 else
16250 locate 2,4
16260 color Rgb(255,255,255)
16270 if ex_info$(1) <> "JP" then
16280 print "Input Born Month(1~12):";buf_Month$
16290 else
16300 print "生まれた月(1月~12月):";buf_Month$
16310 endif
16320 endif
16330 goto Input_Born_Month2:
16340 case 1:
16350 count = 2:c = No
16360 c = val(buf_Month$)
16370 if (No = -1) then
16380 'if No=1 or No=2 then
16390 'endif
16400 month = buf_month
16410 buf_month=val(buf_Month$)
16420 month=buf_month
16430 '生まれた日に飛ぶ
16440 goto Input_Born_Day:
16450 else
16460 buf_month = c*10 + No
16470 buf_Month$= str$(buf_month)
16480 locate 2,4
16490 color Rgb(255,255,255)
16500 if ex_info$(1) <> "JP" then
16510 print "Input Born Month(1~12):";buf_Month$
16520 else
16530 print "生まれた月(1月~12月):";buf_Month$
16540 endif
16550 goto Input_Born_Month2:
16560 endif
16570 case 2:
16580 count=3:count2=1
16590 'c= val(buf_Month$)
16600 'buf_month = c*10 + No
16610 'buf_Month$ = str$(buf_month)
16620 'locate 2,3
16630 'print "生まれた月(1月～12月):";buf_Month$
16640 'goto Input_Born_Month2:
16650 'case 3:
16660 'count=4
16670 'b=val(buf_month$)
16680 'buf_month=c*10+No
16690 'buf_Month$=str$(buf_month)
16700 'locate 2,3
16710 'print "生まれた月(1月～12月):";buf_Month$
16720 'buf_month=val(buf_Month$)
16730 'year=val(buf_year$)
16740 if (No = -1) then
16750 goto Input_Born_Day:
16760 else
16770 goto Input_Born_Month2:
16780 endif
16790 'case 4:
16800 'bufyear=buf_year
16810 'if (No=-1) then
16820 'buf_month = val(buf_Month$)
16830 'month = buf_month
16840 'sp_on 14,0
16850 'goto Input_Born_Day:
16860 'else
16870 'goto Input_Born_Month2:
16880 'endif
16890 end select
16900 endif
16910 '左の丸ボタン　キャンセル
16920 if (bg2=2) then
16930 select case count2
16940 case 0:
16950 if (No = -1) then
16960 buf_month=0:buf_Month$="**"
16970 count2=0:count=0
16980 locate 0,3:print "                                   "
16990 if ex_info$(1) <> "JP" then
17000 print "Input Born Month?(1~12):";buf_Month$
17010 else
17020 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
17030 endif
17040 'if (buf_month > 1) then
17050 sp_on 14,0:goto Input_Born_Month2:
17060 'goto rewrite:
17070 else
17080 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
17090 buf_month=0:buf_Month$="**"
17100 locate 2,3
17110 color rgb(255,255,255)
17120 print "                                       "
17130 goto rewrite:
17140 if (No>2) then
17150 if ex_info$(1) <> "JP" then
17160 ui_msg "The value is out of range"
17170 else
17180 ui_msg "値が範囲外です。"
17190 endif
17200 goto rewrite:
17210 endif
17220 endif
17230 'endif
17240 rewrite:
17250 locate 2,4
17260 color rgb(255,255,255)
17270 print "                                      "
17280 locate 2,4
17290 if ex_info$(1) <> "JP" then
17300 print "Input Born Month?(1~12):";buf_Month$
17310 else
17320 print "生まれた月(1月~12月):";buf_Month$
17330 endif
17340 goto Input_Born_Month2:
17350 endif
17360 case 1:
17370 buf_Month$="**":buf_month=0
17380 if No=-1 then
17390 count2=2:count=0
17400 locate 0,4
17410 print "                                      "
17420 locate 2,4:
17430 if ex_info$(1) <> "JP" then
17440 print "Input Born Month?(1~12):";buf_Month$
17450 else
17460 print "生まれた月(1月~12月):" + buf_Month$
17470 endif
17480 goto Input_Born_Month2:
17490 endif
17500 case 2:
17510 sp_on 14,0:goto Input_Seireki:
17520 end select
17530 endif
17540 'endif
17550 end
17560 'end
17570 '生れた日を入力
17580 Input_Born_Day:
17590 '生まれた日入力
17600 cls 3:play ""
17610 'No=-1:Okのとき
17620 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
17630 for i=0 to 1
17640 buf_day(i)=0
17650 next i
17660 '***********************************************************
17670 '1.WXGAの時 ここから
17680 '(1200 x 800)
17690 '***********************************************************
17700 if ((size(0) <= 1280) and (size(1) <= 800)) then
17710 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png",0,0,0
17720 '***********************************************************
17730 '1.WXGAの時　ここまで
17740 '(1200 x 800)
17750 '***********************************************************
17760 else
17770 '***********************************************************
17780 '2.WUXGAの時(WXGA以外の時)　ここから
17790 '(1920 gload Gazo$ + "Selection.png",1,60,240
17800 '***********************************************************
17810 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
17820 gload Gazo$ + "Screen2.png",0,0,0
17830 gload Gazo$ + "downscreen.png",0,0,800
17840 '***********************************************************
17850 '2.WUXGAの時(WXGA以外の時)　ここまで
17860 '(1920 gload Gazo$ + "Selection.png",1,60,240
17870 '***********************************************************
17880 endif
17890 'Init"kb:2"
17900 if ex_info$(1) <> "JP" then
17910 '英語音声パート
17920 else
17930 '日本語音声パート
17940 '音声ファイル再生 2023.06.07
17950 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
17960 endif
17970 font FONT
17980 if ex_info$(1) <> "JP" then
17990 locate 0,1
18000 '文字色：黒　 color rgb(0,0,0)
18010 color rgb(255,255,255)
18020 print "Input Born day?" + chr$(13)
18030 color rgb(255,255,255)
18040 locate 2,4
18050 print "Born Day(1~31):";buf_Day$
18060 else
18070 locate 0,1
18080 '文字色：黒　 color rgb(0,0,0)
18090 color rgb(255,255,255)
18100 print "生まれた日を入れて下さい" + chr$(13)
18110 color rgb(255,255,255)
18120 locate 2,4
18130 print "生まれた日(1日~31日):";buf_Day$
18140 endif
18150 'color rgb(255,255,255)
18160 'locate 4,6:print ":7"
18170 'locate 9,6:print ":8"
18180 'locate 12,6:print ":9"
18190 'locate 4,6
18200 'print ":7  :8  :9" + chr$(13)
18210 '=======================
18220 'テンキー　色　白　決定ボタン　青
18230 '=======================
18240 'color rgb(255,255,255)
18250 'locate 4,8
18260 'print ":4  :5  :6" + chr$(13)
18270 'color rgb(255,255,255)
18280 'locate 4,10
18290 'print ":1  :2  :3" + chr$(13)
18300 'locate 4,12
18310 'print "    :0"
18320 'locate 12,12
18330 'color rgb(255,0,0)
18340 'print ":Ok"
18350 sp_on 4,0: sp_on 5,0:sp_on 6,0
18360 sp_on 7,0:sp_on 8,0:sp_on 9,0
18370 sp_on 10,0:sp_on 11,0:sp_on 12,0
18380 sp_on 13,0:sp_on 14,1
18390 Input_Born_Day2:
18400 key$="":bg=0:y=0:y2=0:bg2=0
18410 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
18420 key$ = inkey$
18430 bg = strig(1)
18440 y = stick(1)
18450 y2 = stick(0)
18460 bg2 = strig(0)
18470 pause 200
18480 wend
18490 if ((size(0) <= 1280) and (size(1) <= 800)) then
18500 '十字キー　ここから
18510 '上の矢印　または、十字キー上
18520 if ((y = -1) or (key$ = chr$(30))) then
18530 select case No
18540 'No=-1:okのとき:初期の状態
18550 '0kボタンから３に移動
18560 '上に行く 処理
18570 case -1:
18580 No=3:sp_on 6,1:sp_on 14,0:beep
18590 pause 200:goto Input_Born_Day2:
18600 '選択肢:3
18610 '3ボタンから 6に移動
18620 case 3:
18630 No=6:sp_on 9,1:sp_on 6,0:beep
18640 pause 200:goto Input_Born_Day2:
18650 '6ボタンから ９に移動
18660 case 6:
18670 No=9:sp_on 12,1:sp_on 9,0:beep
18680 pause 200:goto Input_Born_Day2:
18690 '6ボタンから ９に移動　ここまで
18700 '9で上を押して何もしない
18710 case 9:
18720 '何もしない
18730 No=9
18740 beep:pause 200:goto Input_Born_Day2:
18750 '9で上を押しても何もしない　ここまで
18760 '上　 0ボタンから2ボタン
18770 'sp_on 6,1:1
18780 'sp_on 8,1:5
18790 'sp_on 7,1:7
18800 case 0:
18810 No=2:sp_on 13,0:sp_on 5,1:beep
18820 pause 200:goto Input_Born_Day2:
18830 '上  0ボタンから2ボタン　ここまで
18840 '2から５になる 上
18850 case 2:
18860 No=5:sp_on 8,1:sp_on 5,0:beep
18870 pause 200:goto Input_Born_Day2:
18880 case 5:
18890 No=8:sp_on 11,1:sp_on 8,0:beep
18900 pause 200:goto Input_Born_Day2:
18910 case 8:
18920 beep:pause 200:goto Input_Born_Day2:
18930 case 1:
18940 No=4:sp_on 7,1:sp_on 4,0:beep
18950 pause 200:goto Input_Born_Day2:
18960 case 4:
18970 No=7:sp_on 10,1:sp_on 7,0:beep
18980 pause 200:goto Input_Born_Day2:
18990 case 7:
19000 beep:pause 200:goto Input_Born_Day2:
19010 end select
19020 endif
19030 '左３　ここまで
19040 '下の矢印
19050 '中央 2
19060 if ((y=1) or (key$ = chr$(31))) then
19070 select case No
19080 '9から６に下げる
19090 case 9:
19100 No=6:sp_on 12,0:sp_on 9,1:beep
19110 pause 200:goto Input_Born_Day2:
19120 '6から３に下げる
19130 case 6:
19140 No=3:sp_on 9,0:sp_on 6,1:beep
19150 pause 200:goto Input_Born_Day2:
19160 '3から０ｋに変える
19170 case 3:
19180 No=-1:sp_on 14,1:sp_on 6,0:beep
19190 pause 200:goto Input_Born_Day2:
19200 'Okから下のボタンを押しても何もしない
19210 case -1:
19220 beep:pause 200:goto Input_Born_Day2:
19230 case 8:
19240 No=5:sp_on 8,1:sp_on 11,0:beep
19250 pause 200:goto Input_Born_Day2:
19260 case 5:
19270 No=2:sp_on 5,1:sp_on 8,0:beep
19280 pause 200:goto Input_Born_Day2:
19290 case 2:
19300 No=0:sp_on 13,1:sp_on 5,0:beep
19310 pause 200:goto Input_Born_Day2:
19320 case 0:
19330 beep:pause 200:goto Input_Born_Day2:
19340 case 7:
19350 No=4:sp_on 7,1:sp_on 10,0:beep
19360 pause 200:goto Input_Born_Day2:
19370 case 4:
19380 No=1:sp_on 4,1:sp_on 7,0:beep
19390 pause 200:goto Input_Born_Day2:
19400 case 1:
19410 beep:pause 200:goto Input_Born_Day2:
19420 end select
19430 endif
19440 '左へボタン 十字キー　左　or 　カーソル左
19450 if ((y2 = -1) or (key$ = chr$(29))) then
19460 select case No
19470 'Ok ボタン  Okから　左　０に行く
19480 case -1:
19490 No=0:sp_on 13,1:sp_on 14,0:beep
19500 pause 200:goto Input_Born_Day2:
19510 '0 ボタン  左　何もしない
19520 case 0:
19530 beep:pause 200:goto Input_Born_Day2:
19540 case 3:
19550 No=2:sp_on 5,1:sp_on 6,0:beep
19560 pause 200:goto Input_Born_Day2:
19570 case 2:
19580 No=1:sp_on 5,0:sp_on 4,1:beep
19590 pause 200:goto Input_Born_Day2:
19600 case 1:
19610 beep:pause 200:goto Input_Born_Day2:
19620 case 6:
19630 No=5:sp_on 8,1:sp_on 9,0:beep
19640 pause 200:goto Input_Born_Day2:
19650 case 5:
19660 No=4:sp_on 7,1:sp_on 8,0:beep
19670 pause 200:goto Input_Born_Day2:
19680 case 4:
19690 beep:pause 200:goto Input_Born_Day2:
19700 case 9:
19710 No=8:sp_on 11,1:sp_on 12,0:beep
19720 pause 200:goto Input_Born_Day2:
19730 case 8:
19740 No=7:sp_on 10,1:sp_on 11,0:beep
19750 pause 200:goto Input_Born_Day2:
19760 case 7:
19770 beep:pause 200:goto Input_Born_Day2:
19780 end select
19790 endif
19800 '右  十字キー　右　or カーソル　右
19810 if ((y2 = 1) or (key$ = chr$(28))) then
19820 select case No
19830 '0ボタンからokボタン右に移動
19840 case 0:
19850 No=-1:sp_on 14,1:sp_on 13,0:beep
19860 pause 200:goto Input_Born_Day2:
19870 '0ボタンからokボタン 右に移動　ここまで
19880 'OKボタンで右を押して何もしない
19890 case -1:
19900 pause 200:goto Input_Born_Day2:
19910 case 1:
19920 No=2:sp_on 5,1:sp_on 4,0:beep
19930 pause 200:goto Input_Born_Day2:
19940 case 2:
19950 No=3:sp_on 6,1:sp_on 5,0
19960 beep:pause 200:goto Input_Born_Day2:
19970 case 3:
19980 beep:pause 200:goto Input_Born_Day2:
19990 case 4:
20000 No=5:sp_on 8,1:sp_on 7,0:beep
20010 pause 200:goto Input_Born_Day2:
20020 case 5:
20030 No=6:sp_on 9,1:sp_on 8,0:beep
20040 pause 200:goto Input_Born_Day2:
20050 case 7:
20060 No=8:sp_on 11,1:sp_on 10,0:beep
20070 pause 200:goto Input_Born_Day2:
20080 case 8:
20090 No=9:sp_on 12,1:sp_on 11,0:beep
20100 pause 200:goto Input_Born_Day2:
20110 case 9:
20120 beep:pause 200:goto Input_Born_Day2:
20130 case 6:
20140 beep:pause 200:goto Input_Born_Day2:
20150 end select
20160 'Okから右ボタンを押して何もしない ここまで
20170 endif
20180 else
20190 '***********************************************************
20200 '2.WUXGAの時(WXGA以外の時)　ここから
20210 '(1920 gload Gazo$ + "Selection.png",1,60,240
20220 '***********************************************************
20230 '十字キー　ここから
20240 '上の矢印　または、十字キー上
20250 if ((y = -1) or (key$ = chr$(30))) then
20260 select case No
20270 'No=-1:okのとき:初期の状態
20280 '0kボタンから３に移動
20290 '上に行く 処理
20300 case -1:
20310 No=3:sp_on 12,1:sp_on 14,0:beep
20320 pause 200:goto Input_Born_Day2:
20330 '選択肢:3
20340 '3ボタンから 6に移動
20350 case 3:
20360 No=6:sp_on 12,0:sp_on 11,1:beep
20370 pause 200:goto Input_Born_Day2:
20380 '6ボタンから ９に移動
20390 case 6:
20400 No=9:sp_on 10,1:sp_on 11,0:beep
20410 pause 200:goto Input_Born_Day2:
20420 '6ボタンから ９に移動　ここまで
20430 '9で上を押して何もしない
20440 case 9:
20450 '何もしない
20460 No=9
20470 beep:pause 200:goto Input_Born_Day2:
20480 '9で上を押しても何もしない　ここまで
20490 '上　 0ボタンから2ボタン
20500 'sp_on 6,1:1
20510 'sp_on 8,1:5
20520 'sp_on 7,1:7
20530 case 0:
20540 No=2:sp_on 13,0:sp_on 9,1:beep
20550 pause 200:goto Input_Born_Day2:
20560 '上  0ボタンから2ボタン　ここまで
20570 '2から５になる 上
20580 case 2:
20590 No=5:sp_on 8,1:sp_on 9,0:beep
20600 pause 200:goto Input_Born_Day2:
20610 case 5:
20620 No=8:sp_on 7,1:sp_on 8,0:beep
20630 pause 200:goto Input_Born_Day2:
20640 case 8:
20650 beep:pause 200:goto Input_Born_Day2:
20660 case 1:
20670 No=4:sp_on 5,1:sp_on 6,0:beep
20680 pause 200:goto Input_Born_Day2:
20690 case 4:
20700 No=7:sp_on 4,1:sp_on 5,0:beep
20710 pause 200:goto Input_Born_Day2:
20720 case 7:
20730 beep:pause 200:goto Input_Born_Day2:
20740 end select
20750 endif
20760 '左３　ここまで
20770 '下の矢印
20780 '中央 2
20790 if ((y=1) or (key$ = chr$(31))) then
20800 select case No
20810 '9から６に下げる
20820 case 9:
20830 No=6:sp_on 11,1:sp_on 10,0:beep
20840 pause 200:goto Input_Born_Day2:
20850 '6から３に下げる
20860 case 6:
20870 No=3:sp_on 12,1:sp_on 11,0:beep
20880 pause 200:goto Input_Born_Day2:
20890 '3から０ｋに変える
20900 case 3:
20910 No=-1:sp_on 14,1:sp_on 12,0:beep
20920 pause 200:goto Input_Born_Day2:
20930 'Okから下のボタンを押しても何もしない
20940 case -1:
20950 beep:pause 200:goto Input_Born_Day2:
20960 case 8:
20970 No=5:sp_on 8,1:sp_on 7,0:beep
20980 pause 200:goto Input_Born_Day2:
20990 case 5:
21000 No=2:sp_on 9,1:sp_on 8,0:beep
21010 pause 200:goto Input_Born_Day2:
21020 case 2:
21030 No=0:sp_on 13,1:sp_on 9,0:beep
21040 pause 200:goto Input_Born_Day2:
21050 case 0:
21060 beep:pause 200:goto Input_Born_Day2:
21070 case 7:
21080 No=4:sp_on 5,1:sp_on 4,0:beep
21090 pause 200:goto Input_Born_Day2:
21100 case 4:
21110 No=1:sp_on 6,1:sp_on 5,0:beep
21120 pause 200:goto Input_Born_Day2:
21130 case 1:
21140 beep:pause 200:goto Input_Born_Day2:
21150 end select
21160 endif
21170 '左へボタン 十字キー　左　or 　カーソル左
21180 if ((y2 = -1) or (key$ = chr$(29))) then
21190 select case No
21200 'Ok ボタン  Okから　左　０に行く
21210 case -1:
21220 No=0:sp_on 13,1:sp_on 14,0:beep
21230 pause 200:goto Input_Born_Day2:
21240 '0 ボタン  左　何もしない
21250 case 0:
21260 beep:pause 200:goto Input_Born_Day2:
21270 case 3:
21280 No=2:sp_on 9,1:sp_on 12,0:beep
21290 pause 200:goto Input_Born_Day2:
21300 case 2:
21310 No=1:sp_on 6,1:sp_on 9,0:beep
21320 pause 200:goto Input_Born_Day2:
21330 case 1:
21340 pause 200:goto Input_Born_Day2:
21350 case 6:
21360 No=5:sp_on 8,1:sp_on 11,0:beep
21370 pause 200:goto Input_Born_Day2:
21380 case 5:
21390 No=4:sp_on 5,1:sp_on 8,0:beep
21400 pause 200:goto Input_Born_Day2:
21410 case 4:
21420 beep:pause 200:goto Input_Born_Day2:
21430 case 9:
21440 No=8:sp_on 7,1:sp_on 10,0:beep
21450 pause 200:goto Input_Born_Day2:
21460 case 8:
21470 No=7:sp_on 4,1:sp_on 7,0:beep
21480 pause 200:goto Input_Born_Day2:
21490 case 7:
21500 beep:pause 200:goto Input_Born_Day2:
21510 end select
21520 endif
21530 '右  十字キー　右　or カーソル　右
21540 if ((y2 = 1) or (key$ = chr$(28))) then
21550 select case No
21560 '0ボタンからokボタン右に移動
21570 case 0:
21580 No=-1:sp_on 14,1:sp_on 13,0:beep
21590 pause 200:goto Input_Born_Day2:
21600 '0ボタンからokボタン 右に移動　ここまで
21610 'OKボタンで右を押して何もしない
21620 case -1:
21630 beep:pause 200:goto Input_Born_Day2:
21640 case 1:
21650 No=2:sp_on 9,1:sp_on 6,0:beep
21660 pause 200:goto Input_Born_Day2:
21670 case 2:
21680 No=3:sp_on 12,1:sp_on 9,0:beep
21690 pause 200:goto Input_Born_Day2:
21700 case 3:
21710 beep:pause 200:goto Input_Born_Day2:
21720 case 4:
21730 No=5:sp_on 8,1:sp_on 5,0:beep
21740 pause 200:goto Input_Born_Day2:
21750 case 5:
21760 No=6:sp_on 11,1:sp_on 8,0:beep
21770 pause 200:goto Input_Born_Day2:
21780 case 7:
21790 No=8:sp_on 7,1:sp_on 4,0:beep
21800 pause 200:goto Input_Born_Day2:
21810 case 8:
21820 No=9:sp_on 10,1:sp_on 7,0:beep
21830 pause 200:goto Input_Born_Day2:
21840 case 9:
21850 beep:pause 200:goto Input_Born_Day2:
21860 case 6:
21870 beep:pause 200:goto Input_Born_Day2:
21880 end select
21890 'Okから右ボタンを押して何もしない ここまで
21900 endif
21910 '***********************************************************
21920 '2.WUXGAの時(WXGA以外の時)　ここまで
21930 '(1920 gload Gazo$ + "Selection.png",1,60,240
21940 '***********************************************************
21950 endif
21960 '十字キー　ここまで
21970 '右の丸ボタンを押したとき
21980 if ((bg = 2) or (key$ = chr$(13))) then
21990 'count :決定ボタンを押した回数
22000 select case (count mod 3)
22010 '1桁目入力
22020 case 0:
22030 count = 1:
22040 if (No = -1) then
22050 '1桁目　OKでは何もしない
22060 'goto check:
22070 else
22080 'ok以外のボタンを押したとき
22090 buf_day = No:buf_Day$ = str$(No)
22100 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
22110 locate 2,3
22120 color RGB(255,255,255)
22130 if ex_info$(1) <> "JP" then
22140 print "Input Born Day(1~31):";buf_Day2$
22150 else
22160 print "生まれた日(1日~31日):";buf_Day2$
22170 endif
22180 endif
22190 check:
22200 if (No >= 1 and No <= 9) then
22210 sp_on 14,0
22220 goto Input_Born_Day2:
22230 else
22240 sp_on 14,0
22250 goto complate:
22260 endif
22270 case 1:
22280 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
22290 count = 2:
22300 'locate 2,3
22310 'color RGB(255,255,255)
22320 'print "生まれた日(1日~31日):";buf_Day$
22330 'Okボタンを押したときの処理
22340 '入力値　10未満のとき
22350 'c = buf_day
22360 if (No = -1) then
22370 'c=buf_day
22380 ' buf_day = c
22390 'buf_Day$ = str$(buf_day)
22400 '10以下のとき
22410 if (buf_day < 10) then
22420 sp_on 14,0
22430 goto complate:
22440 endif
22450 else
22460 'c = No
22470 buf_day = c * 10 + No
22480 'buf_day = c
22490 buf_Day$ =str$(buf_day)
22500 locate 2,4
22510 color Rgb(255,255,255)
22520 if ex_info$(1) <> "JP" then
22530 print "Input Born Day(1~31):";buf_Day$
22540 else
22550 print "生まれた日(1日~31日):";buf_Day$
22560 endif
22570 goto Input_Born_Day2:
22580 endif
22590 '生まれた日　2桁目の数字　or 1桁の数字 + ok
22600 case 2:
22610 count=0
22620 'c=val(buf_Day$)
22630 'buf_day=c*10+No
22640 'buf_Day$=str$(buf_day)
22650 'day=buf_day
22660 'locate 2,3
22670 'print "生まれた日(1日〜31日):";buf_Day$
22680 'No=-1:ok ボタンを押したとき
22690 if (No = -1) then
22700 if ((buf_day > 0) and (buf_day < 32)) then
22710 sp_on 14,0
22720 goto complate:
22730 else
22740 goto Input_Born_Day2:
22750 endif
22760 'Okボタン以外を押したとき
22770 else
22780 c=val(buf_Day$)
22790 buf_day = c * 10 + No
22800 buf_Day$ = str$(buf_day)
22810 locate 2,4
22820 if ex_info$(1) <> "JP" then
22830 print "Input Born Day?(1~31):";buf_Day$
22840 else
22850 print "生まれた日(1日~31日):";buf_Day$
22860 endif
22870 'goto Input_Born_Day2:
22880 endif
22890 case 3:
22900 count = 4
22910 c=val(buf_day$)
22920 buf_day = c * 10 + No
22930 buf_day$ = str$(buf_day)
22940 locate 2,4
22950 if ex_info$(1) <> "JP" then
22960 print "Input Born Day?(1~31):";buf_Day$
22970 else
22980 print "生まれた日を入れてください(1日~31日):";buf_Day$
22990 endif
23000 year = val(buf_year$)
23010 if (No = -1) then
23020 'goto Input_Born_Day:
23030 sp_on 14,0:No=0
23040 goto complate:
23050 else
23060 goto Input_Born_Month2:
23070 endif
23080 'case 4:
23090 'bufyear=buf_year
23100 'if (No=-1) then
23110 'buf_day = val(buf_day$)
23120 'bufday = buf_day
23130 'sp_on 14,0
23140 'goto complate:
23150 'else
23160 'goto Input_Born_Day2:
23170 'endif
23180 end select
23190 endif
23200 if (bg2=2) then
23210 select case count
23220 case 0:
23230 if (No=-1) then
23240 'buf_day=0:buf_Day$="**"
23250 if (buf_day>=1 and buf_day<=31) then
23260 count=0:No=0
23270 buf_day=0:buf_Day$="**"
23280 'goto rewrite_day:
23290 else
23300 buf_day=0:buf_Day$="**"
23310 ui_msg"値が範囲外です"
23320 endif
23330 goto rewrite_day:
23340 else
23350 goto rewrite_day:
23360 endif
23370 rewrite_day:
23380 locate 2,4
23390 color rgb(255,255,255)
23400 print "                                      "
23410 locate 2,4
23420 if ex_info$(1)<>"JP" then
23430 print "Born Day(1~31):";buf_Day$
23440 else
23450 print "生まれた日(1日~31日):";buf_Day$
23460 endif
23470 goto Input_Born_Day2:
23480 end select
23490 endif
23500 '--------------------------Input_Born_Day:-------------------------------------------
23510 complate:
23520 suhiNo = buf_year + buf_month + buf_day
23530 'if (suhiNo < 1000) then
23540 a1 = fix(suhiNo / 1000)
23550 a2 = fix(suhiNo/100) - (a1 * 10)
23560 a3 = fix(suhiNo/10)-(a1*100+a2*10)
23570 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
23580 'endif
23590 bufsuhiNo = a1 + a2 + a3 + a4
23600 recomp:
23610 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
23620 'bufsuhiNo=a6
23630 goto Kabara_Result_Screen:
23640 else
23650 a5 = fix(bufsuhiNo / 10)
23660 a6 = bufsuhiNo - a5 * 10
23670 bufsuhiNo = a6 + a5
23680 if (bufsuhiNo = 10) then
23690 bufsuhiNo=1
23700 endif
23710 goto Kabara_Result_Screen:
23720 endif
23730 Kabara_Result_Screen:
23740 cls 3:
23750 '****************************************************************************************************
23760 '1.WUXGA(1920x1200)の時
23770 '****************************************************************************************************
23780 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
23790 gload Gazo$ + "downscreen.png",0,0,800
23800 '****************************************************************************************************
23810 '1.WUXGA(1920x1200)の時
23820 '****************************************************************************************************
23830 init "kb:4"
23840 '
23850 play ""
23860 select case (bufsuhiNo)
23870 case 1:
23880 '****************************************************************************************************
23890 '1.数秘ナンバー 1
23900 '****************************************************************************************************
23910 play Voice$ + "Result_Kabara_1_20230607.mp3"
23920 '****************************************************************************************************
23930 '1.数秘ナンバー 1
23940 '****************************************************************************************************
23950 case 2:
23960 '****************************************************************************************************
23970 '1.数秘ナンバー 2
23980 '****************************************************************************************************
23990 play Voice$ + "Result_Kabara_2_20231112.mp3"
24000 '****************************************************************************************************
24010 '1.数秘ナンバー 2
24020 '****************************************************************************************************
24030 case 3:
24040 '****************************************************************************************************
24050 '1.数秘ナンバー 3
24060 '****************************************************************************************************
24070 play Voice$ + "Result_Kabara_3_20230607.mp3"
24080 '****************************************************************************************************
24090 '1.数秘ナンバー 3
24100 '****************************************************************************************************
24110 case 4:
24120 '****************************************************************************************************
24130 '1.数秘ナンバー 4
24140 '****************************************************************************************************
24150 play Voice$ + "Result_Kabara_4_20230607.mp3"
24160 '****************************************************************************************************
24170 '1.数秘ナンバー 4
24180 '****************************************************************************************************
24190 case 5:
24200 '****************************************************************************************************
24210 '1.数秘ナンバー 5
24220 '****************************************************************************************************
24230 play Voice$ + "Result_Kabara_5_20231112.mp3"
24240 '****************************************************************************************************
24250 '1.数秘ナンバー 5
24260 '****************************************************************************************************
24270 case 6:
24280 '****************************************************************************************************
24290 '1.数秘ナンバー 6
24300 '****************************************************************************************************
24310 play Voice$ + "Result_Kabara_6_20230607.mp3"
24320 '****************************************************************************************************
24330 '1.数秘ナンバー 6
24340 '****************************************************************************************************
24350 case 7:
24360 '****************************************************************************************************
24370 '1.数秘ナンバー 7
24380 '****************************************************************************************************
24390 play Voice$ + "Result_Kabara_7_20230607.mp3"
24400 '****************************************************************************************************
24410 '1.数秘ナンバー 7
24420 '****************************************************************************************************
24430 case 8:
24440 '****************************************************************************************************
24450 '1.数秘ナンバー 8
24460 '****************************************************************************************************
24470 play Voice$ + "Result_Kabara_8_20230607.mp3"
24480 '****************************************************************************************************
24490 '1.数秘ナンバー 8
24500 '****************************************************************************************************
24510 case 9:
24520 '****************************************************************************************************
24530 '1.数秘ナンバー 9
24540 '****************************************************************************************************
24550 play Voice$ + "Result_Kabara_9_20230607.mp3"
24560 '****************************************************************************************************
24570 '1.数秘ナンバー 9
24580 '****************************************************************************************************
24590 case 11:
24600 '****************************************************************************************************
24610 '1.数秘ナンバー 11
24620 '****************************************************************************************************
24630 play Voice$ + "Result_Kabara_11_20230607.mp3"
24640 '****************************************************************************************************
24650 '1.数秘ナンバー 11
24660 '****************************************************************************************************
24670 case 22:
24680 '****************************************************************************************************
24690 '1.数秘ナンバー 22
24700 '****************************************************************************************************
24710 play Voice$ + "Result_Kabara_22_20230607.mp3"
24720 '****************************************************************************************************
24730 '1.数秘ナンバー 22
24740 '****************************************************************************************************
24750 case 33:
24760 '****************************************************************************************************
24770 '1.数秘ナンバー 33
24780 '****************************************************************************************************
24790 play Voice$ + "Result_Kabara_33_20230607.mp3"
24800 '****************************************************************************************************
24810 '1.数秘ナンバー 33
24820 '****************************************************************************************************
24830 end select
24840 '****************************************************************************************************
24850 '
24860 '****************************************************************************************************
24870 font 48
24880 '****************************************************************************************************
24890 '
24900 '****************************************************************************************************
24910 key$ = "":bg = 0:bg2=0
24920 'COLOR rgb(255,255,255)
24930 'print "●診断結果"+chr$(13)
24940 locate 0,2
24950 if ex_info$(1)<>"JP" then
24960 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
24970 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
24980 locate 0,15:
24990 color rgb(255,255,255)
25000 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
25010 else
25020 '****************************************************************************************************
25030 'WUXG(1920x1200)の時ここから
25040 '****************************************************************************************************
25050 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
25060 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
25070 locate 0,15:
25080 color rgb(255,255,255)
25090 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
25100 endif
25110 '****************************************************************************************************
25120 'WUXG(1920x1200)の時ここまで
25130 '****************************************************************************************************
25140 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
25150 key$ = inkey$
25160 bg = strig(1)
25170 bg2 = strig(0)
25180 pause 200
25190 wend
25200 'Enter or JoyPad right
25210 if ((key$ = chr$(13)) or (bg = 2)) then
25220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
25230 endif
25240 if ((bg2=2)) then
25250 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
25260 endif
25270 'suhiNo1 = fix(bufsuhiNo / 10)
25280 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
25290 'bufsuhiNo = suhiNo1 + suhiNo2
25300 'goto recomp:
25310 'endif
25320 'print chr$(13)
25330 'color rgb(255,0,0)
25340 'print"トップ:エンターキー,S or s:保存"+chr$(13)
25350 'key$ = input$(1)
25360 'if key$ = chr$(13) then goto Main_Screen:
25370 '"Menu2 占いのルール"
25380 Suhi_Rule:
25390 '数秘術占いルールの表示
25400 cls 3:play "":init"kb:4"
25410 if ((size(0)<=1280) and (size(1)<=800)) then
25420 '****************************************************************************************************
25430 'WUXG(1920x1200)の時ここから
25440 '****************************************************************************************************
25450 gload Gazo$  + Gazo_WXGA$ +  "KabaraRuleScreen_864x640_20240219.png",0,0,0
25460 '****************************************************************************************************
25470 'WUXG(1920x1200)の時ここまで
25480 '****************************************************************************************************
25490 else
25500 '****************************************************************************************************
25510 'WUXG(1920x1200)の時ここから
25520 '****************************************************************************************************
25530 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
25540 gload Gazo$ + "downscreen.png",0,0,800
25550 '****************************************************************************************************
25560 'WUXG(1920x1200)の時ここまで
25570 '****************************************************************************************************
25580 endif
25590 'cls 3:
25600 'line (0,0) - (1500,60),rgb(0,0,255),bf
25610 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
25620 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
25630 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
25640 if ex_info$(1)<>"JP" then
25650 locate 0,2:Font 48
25660 print chr$(13) + chr$(13)
25670 color rgb(0,0,0)
25680 print "We will convert your birth date to a single number.";chr$(13)
25690 print "Number range: 1~9, 11, 22, 33";chr$(13)
25700 print "Example: If your birth date is 22nd November 1973";chr$(13)
25710 print "1+9+7+3+11+22=53 ";chr$(13)
25720 print "→ 5 + 3 = 8" + chr$(13)
25730 print "So, your numerology number is 8.";chr$(13)
25740 locate 0,15
25750 color rgb(255,255,255)
25760 print "Please press the right on the joystick"
25770 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
25780 else
25790 Font Font
25800 if ((size(0)<=1280) and (size(1)<=800)) then
25810 '************************************************************************************************
25820 '1.WXGAの時1200x800の時
25830 '************************************************************************************************
25840 color rgb(0,0,0)
25850 locate 1,5:print "誕生日を単数変換します";chr$(13)
25860 locate 1,7:print "数字の範囲:1~９,11,22,33";chr$(13)
25870 locate 1,9:print "例:1973年11月22日の場合";chr$(13)
25880 locate 1,11:print "1+9+7+3+11+22=53 ";chr$(13)
25890 locate 1,13:print "→ 5 + 3 = 8" + chr$(13)
25900 locate 1,15:print "故に8が数秘ナンバーになります";chr$(13)
25910 locate 0,19:color rgb(255,255,255)
25920 print "ジョイパッドの右を押してください"
25930 '************************************************************************************************
25940 '1.WXGAの時1200x800の時
25950 '************************************************************************************************
25960 else
25970 '****************************************************************************************************
25980 '2.WUXG(1920x1200)の時ここから
25990 '****************************************************************************************************
26000 print chr$(13) + chr$(13)
26010 color rgb(0,0,0)
26020 print "誕生日を単数変換します";chr$(13)
26030 print "数字の範囲:1~９,11,22,33";chr$(13)
26040 print "例:1973年11月22日の場合";chr$(13)
26050 print "1+9+7+3+11+22=53 ";chr$(13)
26060 print "→ 5 + 3 = 8" + chr$(13)
26070 print "故に8が数秘ナンバーになります";chr$(13)
26080 locate 0,15
26090 color rgb(255,255,255)
26100 print "ジョイパッドの右を押してください"
26110 '****************************************************************************************************
26120 '2.WUXG(1920x1200)の時ここまで
26130 '****************************************************************************************************
26140 endif
26150 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
26160 endif
26170 '"key$ = input$(1)"
26180 '"if key$ = chr$(13) then goto Main_Screen:"
26190 suhi_rule_selection:
26200 bg = 0:key$ = "":bg2=0
26210 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
26220 bg = strig(1)
26230 key$ = inkey$
26240 bg2=strig(0)
26250 pause 200
26260 wend
26270 if ((bg = 2) or (key$ = chr$(13))) then
26280 pause 200:cls 4:goto Main_Screen:
26290 endif
26300 if (bg2=2) then
26310 play "":pause 200
26320 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
26330 goto suhi_rule_selection:
26340 endif
26350 '2.設定 ここから
26360 '2-1.トップ画面に戻る
26370 Setting:
26380 cls 3:init"kb:4":font 48:No=0
26390 play ""
26400 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
26410 '****************************************************************************************************
26420 'W(1280x 800)の時ここから
26430 '****************************************************************************************************
26440 if (size(0)<=1280 and size(1)<=800) then
26450 gload Gazo$ + Gazo_WXGA$ + "Screen1_Setting_Top_907x680_20240221.png",0,0,0
26460 '****************************************************************************************************
26470 'W(1280 x800)の時ここまで
26480 '****************************************************************************************************
26490 else
26500 '****************************************************************************************************
26510 'WUXG(1920x1200)の時ここから
26520 '****************************************************************************************************
26530 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
26540 gload Gazo$ + "downscreen.png",0,0,800
26550 '****************************************************************************************************
26560 'WUXG(1920x1200)の時ここまで
26570 '****************************************************************************************************
26580 endif
26590 if (size(0)<=1280 and size(1)<=800) then
26600 font FONT:color rgb(255,255,255):cls
26610 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:
26620 '****************************************************************************************************
26630 '(1280x800)の時 ここから
26640 '****************************************************************************************************
26650 locate 1,5:
26660 print "番号を選んでください"
26670 locate 1,7:
26680 print " :1.トップ画面に戻る"
26690 locate 1,10:
26700 print " :2.バーズアイグリッドデーターリスト"
26710 locate 1,13:
26720 print " :3.未実装" + chr$(13)
26730 locate 1,16:
26740 print " :4.未実装" + chr$(13)
26750 color rgb(0,0,0):locate 1,19:
26760 print "1.トップ画面に戻るを選択"
26770 '****************************************************************************************************
26780 '(1280x800)の時 ここまで
26790 '****************************************************************************************************
26800 else
26810 font FONT
26820 print chr$(13) + chr$(13) + chr$(13)
26830 color rgb(255,255,255):sp_on 0,1:
26840 '****************************************************************************************************
26850 'WUXG(1920x1200)の時ここから
26860 '****************************************************************************************************
26870 print "番号を選んでください" + chr$(13)
26880 print " :1.トップ画面に戻る"+ chr$(13)
26890 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
26900 print " :3.未実装" + chr$(13)
26910 print " :4.未実装" + chr$(13)
26920 color rgb(0,0,0)
26930 locate 1,15:print "1.トップ画面に戻るを選択"
26940 '****************************************************************************************************
26950 'WUXG(1920x1200)の時ここまで
26960 '****************************************************************************************************
26970 endif
26980 Setting_Selection:
26990 y=0:key$="":bg=0:bg2=0
27000 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
27010 y=stick(1)
27020 key$ = inkey$
27030 bg=strig(1)
27040 bg2 = strig(0)
27050 pause 200
27060 wend
27070 if ((bg = 2) or (key$ = chr$(13))) then
27080 select case No
27090 case 0:
27100 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
27110 case 1:
27120 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
27130 end select
27140 endif
27150 if (bg2 = 2) then
27160 play "":pause 200
27170 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
27180 goto Setting_Selection:
27190 endif
27200 '****************************************************************************************************
27210 '(1280x800)の時 ここから
27220 '****************************************************************************************************
27230 if (size(0) <= 1280 and size(1) <= 800) then
27240 if ((y=1) or (y=-1)) then
27250 select case No
27260 case 0:
27270 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                    ":locate 1,19:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
27280 case else:
27290 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.トップ画面に戻るを選択":goto Setting_Selection:
27300 end select
27310 '****************************************************************************************************
27320 '(1280x800)の時 ここまで
27330 '****************************************************************************************************
27340 endif
27350 else
27360 '****************************************************************************************************
27370 '(1920x1280)の時 ここから
27380 '****************************************************************************************************
27390 if ((y=1) or (y=-1)) then
27400 select case No
27410 case 0:
27420 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
27430 case else:
27440 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
27450 end select
27460 endif
27470 '****************************************************************************************************
27480 '(1920x1200)の時 ここまで
27490 '****************************************************************************************************
27500 endif
27510 '2.設定 ここまで
27520 '3.Help
27530 '3-1.ルールの表示
27540 '3-2.バージョン
27550 '3-3.トップに戻る
27560 Help:
27570 cls 3:Font 48:No=0
27580 play ""
27590 '****************************************************************************************************
27600 ''WXGAの場合　ここから (1280 x 800)
27610 '****************************************************************************************************
27620 if ((size(0)<=1280) and (size(1)<=800)) then
27630 gload Gazo$ + Gazo_WXGA$ + "TopScreen_Help_907x680_20240216.png",0,0,0
27640 '****************************************************************************************************
27650 ''WXGAの場合　ここまで (1280 x 800)
27660 '****************************************************************************************************
27670 else
27680 '****************************************************************************************************
27690 'WUXG(1920x1200)の時ここから
27700 '****************************************************************************************************
27710 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
27720 gload Gazo$ + "downscreen.png",0,0,800
27730 endif
27740 '****************************************************************************************************
27750 'WUXG(1920x1200)の時ここまで
27760 '****************************************************************************************************
27770 if ex_info$(1)<>"JP" then
27780 font FONT
27790 color rgb(255,255,255)
27800 print chr$(13)+chr$(13)+chr$(13)
27810 print "Please select a number"+chr$(13)
27820 print " :1. Rules for Explain" + chr$(13)
27830 print " :2. Display Version" + chr$(13)
27840 print " :3. References" + chr$(13)
27850 print " :4. Return to Top Screen" + chr$(13)
27860 else
27870 if ((size(0)<=1280) and (size(1)<=800)) then
27880 color rgb(255,255,255)
27890 font FONT
27900 locate 1,5
27910 print "番号を選んでください"
27920 locate 1,7
27930 print " :1.ルールの説明"
27940 locate 1,10
27950 print " :2.バージョンの表示"
27960 locate 1,13
27970 print " :3.参考文献"
27980 locate 1,16
27990 print " :4.トップ画面に戻る"
28000 else
28010 '****************************************************************************************************
28020 'WUXG(1920x1200)の時ここから
28030 '****************************************************************************************************
28040 font FONT
28050 color rgb(255,255,255)
28060 print chr$(13)+chr$(13)+chr$(13)
28070 print "番号を選んでください"+chr$(13)
28080 print " :1.ルールの説明" + chr$(13)
28090 print " :2.バージョンの表示" + chr$(13)
28100 print " :3.参考文献" + chr$(13)
28110 print " :4.トップ画面に戻る" + chr$(13)
28120 endif
28130 endif
28140 '****************************************************************************************************
28150 'WUXG(1920x1200)の時ここまで
28160 '****************************************************************************************************
28170 '************************************************************************************************
28180 '1.WXGAの場合　ここから (1280 x 800)
28190 '************************************************************************************************
28200 color rgb(0,0,0)
28210 if ((size(0) <= 1280) and (size(1) <= 800)) then
28220 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
28230 locate 1,19
28240 print "                                  "
28250 if ex_info$(1) <> "JP" then
28260 print "1. Select Rules for Explain"
28270 else
28280 if count=0 then
28290 locate 1,19
28300 print "1.ルールの説明を選択"
28310 endif
28320 endif
28330 '************************************************************************************************
28340 '1.WXGAの場合　ここまで (1280 x 800)
28350 '************************************************************************************************
28360 else
28370 '*************************************************************************************************
28380 '2.WUXG(1920x1200)の時ここから
28390 '**************************************************************************************************
28400 'color rgb(0,0,0)
28410 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
28420 locate 1,15
28430 print "                                  "
28440 if ex_info$(1) <> "JP" then
28450 print "1. Select Rules for Explain"
28460 else
28470 locate 1,15
28480 print "1.ルールの説明を選択"
28490 endif
28500 '****************************************************************************************************
28510 '2.WUXG(1920x1200)の時ここまで
28520 '****************************************************************************************************
28530 endif
28540 init"kb:4"
28550 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
28560 Help_Select:
28570 bg=0:key$="":y=0:bg2=0
28580 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
28590 y = stick(1)
28600 key$ = inkey$
28610 bg = strig(1)
28620 bg2 = strig(0)
28630 pause 200
28640 wend
28650 if ex_info$(1)<>"JP" then
28660 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
28670 if ((y = 1) or (key$ = chr$(31))) then
28680 select case No
28690 case 0:
28700 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
28710 case 1:
28720 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
28730 case 2:
28740 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
28750 case 3:
28760 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
28770 end select
28780 endif
28790 '************************************************************************************************
28800 '1.WXGAの場合　ここから (1280 x 800)
28810 '************************************************************************************************
28820 if ((y = -1) or (key$ = chr$(30))) then
28830 select case No
28840 case 0:
28850 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "4.Return to Top Screen":goto Help_Select:
28860 case 1:
28870 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "1.Select Rules for Explain":goto Help_Select:
28880 case 2:
28890 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,19:print "                                        ":locate 1,19:print "2.Display Version":goto Help_Select:
28900 case 3:
28910 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,19:print "                                              ":locate 1,19:print "3.References":goto Help_Select:
28920 end select
28930 '************************************************************************************************
28940 '1.WXGAの場合　ここまで (1280 x 800)
28950 '************************************************************************************************
28960 else
28970 '****************************************************************************************************
28980 'WUXG(1920x1200)の時ここから
28990 '****************************************************************************************************
29000 if ((y = -1) or (key$ = chr$(30))) then
29010 select case No
29020 case 0:
29030 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
29040 case 1:
29050 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
29060 case 2:
29070 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
29080 case 3:
29090 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
29100 end select
29110 endif
29120 '****************************************************************************************************
29130 'WUXG(1920x1200)の時ここまで
29140 '****************************************************************************************************
29150 endif
29160 else
29170 '************************************************************************************************
29180 '1.WXGAの場合　ここから (1280 x 800)
29190 '************************************************************************************************
29200 if ((size(0) <= 1280) and (size(1) <= 800)) then
29210 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
29220 if ((y = 1) or (key$ = chr$(31))) then
29230 select case No
29240 case 0:
29250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y + 120),1,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バージョンの表示を選択":goto Help_Select:
29260 case 1:
29270 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y + 220),2,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
29280 case 2:
29290 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y + 320),0,0:count = count + 1:beep:pause 200:locate 1,19:gosub Help_Top_ReCheck:color rgb(0,0,0):print "                                      ":locate 1,19:print "4.トップ画面に戻る":goto Help_Select:
29300 case 3:
29310 '****************************
29320 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y + 20),0,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
29330 '****************************
29340 end select
29350 endif
29360 '************************************************************************************************
29370 '1.WXGAの場合　ここまで (1280 x 800)
29380 '************************************************************************************************
29390 else
29400 '****************************************************************************************************
29410 'WUXG(1920x1200)の時ここから
29420 '****************************************************************************************************
29430 if ((y = 1) or (key$ = chr$(31))) then
29440 select case No
29450 case 0:
29460 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
29470 case 1:
29480 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
29490 case 2:
29500 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
29510 case 3:
29520 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
29530 end select
29540 endif
29550 '****************************************************************************************************
29560 'WUXG(1920x1200)の時ここまで
29570 '****************************************************************************************************
29580 endif
29590 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
29600 '************************************************************************************************
29610 '1.WXGAの場合　ここから (1280 x 800)
29620 '************************************************************************************************
29630 if ((size(0) <= 1280) and (size(1) <= 800)) then
29640 if ((y = -1) or (key$ = chr$(30))) then
29650 select case No
29660 case 0:
29670 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y+320),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Help_Select:
29680 case 1:
29690 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0,0):locate 1,15:print "                                      ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
29700 case 2:
29710 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                        ":locate 1,19:print "2.バージョンの表示を選択":goto Help_Select:
29720 case 3:
29730 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y+220),2,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
29740 end select
29750 endif
29760 '************************************************************************************************
29770 '1.WXGAの場合　ここから (1280 x 800)
29780 '************************************************************************************************
29790 else
29800 '************************************************************************************************
29810 'WUXG(1920x1200)の時ここから
29820 '************************************************************************************************
29830 if ((y = -1) or (key$ = chr$(30))) then
29840 select case No
29850 case 0:
29860 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
29870 case 1:
29880 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
29890 case 2:
29900 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
29910 case 3:
29920 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
29930 end select
29940 endif
29950 '****************************************************************************************************
29960 'WUXG(1920x1200)の時ここまで
29970 '****************************************************************************************************
29980 endif
29990 endif
30000 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
30010 if ((bg = 2) or (key$ = chr$(13))) then
30020 select case No
30030 case 0:
30040 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop: 'Suhi_Rule:
30050 case 1:
30060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
30070 case 2:
30080 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
30090 '3:Top画面に行く
30100 case 3:
30110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
30120 end select
30130 endif
30140 if (bg2 = 2) then
30150 play "":pause 200
30160 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
30170 goto Help_Select:
30180 endif
30190 'ルールの説明　トップ画面
30200 Suhi_Rule_explainTop:
30210 '**********************************************************
30220 cls 3:No=0
30230 play ""
30240 '****************************************************************************************************
30250 'WUXG(1920x1200)の時ここから
30260 '背景画像
30270 '****************************************************************************************************
30280 Font FONT
30290 if ((size(0) <= 1280) and (size(1) <= 800)) then
30300 gload Gazo$ + Gazo_WXGA$ + "Rule_explain_TopScreen_907x680_20240218.png",0,0,0
30310 else
30320 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
30330 gload Gazo$ + "downscreen.png",0,0,800
30340 endif
30350 '****************************************************************************************************
30360 'WUXG(1920x1200)の時ここまで
30370 '背景画像
30380 '****************************************************************************************************
30390 if ex_info$(1)<>"JP" then
30400 color rgb(255,255,255)
30410 print chr$(13)+chr$(13)+chr$(13)
30420 print "Please select a number"+chr$(13)
30430 print " :1.How to Kabara" + chr$(13)
30440 print " :2. Explain for BirdseyeGrid" + chr$(13)
30450 print " :3. Return to Top Screen" + chr$(13)
30460 else
30470 '****************************************************************************************************
30480 'WUXG(1920x1200)の時ここから
30490 '****************************************************************************************************
30500 '****************************************************************************************************
30510 'Top画面メニュー表示文字　ここから
30520 '****************************************************************************************************
30530 '***************************************************************************************************
30540 'WXGA(1200x800)の時 ここから
30550 '***************************************************************************************************
30560 if ((size(0) <= 1280) and (size(1) <= 800)) then
30570 color rgb(255,255,255)
30580 locate 1,5
30590 print "番号を選んでください"
30600 locate 1,7:    '〇
30610 print " :1.数秘術のやり方"
30620 locate 1,10:   '〇
30630 print " :2.バーズアイグリットの説明"
30640 locate 1,13:    '〇
30650 print " :3.トップ画面に戻る"
30660 '***************************************************************************************************
30670 'WXGA(1200x800)の時 ここまで
30680 '***************************************************************************************************
30690 else
30700 '***************************************************************************************************
30710 'WXGA(1200x800) 以外の時 ここから
30720 '***************************************************************************************************
30730 color rgb(255,255,255)
30740 print chr$(13)+chr$(13)+chr$(13)
30750 print "番号を選んでください"+chr$(13)
30760 print " :1.数秘術のやり方" + chr$(13)
30770 print " :2.バーズアイグリットの説明" + chr$(13)
30780 print " :3.トップ画面に戻る" + chr$(13)
30790 '***************************************************************************************************
30800 'WXGA(1200x800) 以外の時 ここまで
30810 '***************************************************************************************************
30820 '****************************************************************************************************
30830 'Top画面メニュー表示文字　ここまで
30840 '****************************************************************************************************
30850 endif
30860 '****************************************************************************************************
30870 'WUXG(1920x1200)の時ここまで
30880 '****************************************************************************************************
30890 endif
30900 color rgb(0,0,0)
30910 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
30920 locate 1,15
30930 print "                                  "
30940 if ex_info$(1) <> "JP" then
30950 print "                                  "
30960 print ":1.How to Kabara"
30970 else
30980 if ((size(0) <= 1280) and (size(1) <= 800)) then
30990 if count=0 then
31000 '****************************************************************************************************
31010 '共通部分 WXGA ここから
31020 '****************************************************************************************************
31030 locate 1,19
31040 print ":1.数秘術のやり方"
31050 '****************************************************************************************************
31060 '共通部分 WXGA ここまで
31070 '****************************************************************************************************
31080 endif
31090 else
31100 if count = 0 then
31110 '****************************************************************************************************
31120 '共通部分 WUXGA ここから
31130 '****************************************************************************************************
31140 locate 1,15
31150 print ":1.数秘術のやり方"
31160 '****************************************************************************************************
31170 '共通部分 WUXGA ここまで
31180 '****************************************************************************************************
31190 endif
31200 endif
31210 init "kb:4"
31220 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
31230 Suhi_Rule_explainTop2:
31240 bg=0:key$="":y=0:bg2=0
31250 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
31260 y = stick(1)
31270 key$ = inkey$
31280 bg = strig(1)
31290 bg2 = strig(0)
31300 pause 200
31310 wend
31320 if ex_info$(1)<>"JP" then
31330 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
31340 if ((y = 1) or (key$ = chr$(31))) then
31350 select case No
31360 case 0:
31370 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
31380 case 1:
31390 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
31400 case 2:
31410 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
31420 end select
31430 endif
31440 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
31450 if ((y = -1) or (key$ = chr$(30))) then
31460 select case No
31470 case 0:
31480 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,Y+220),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
31490 case 2:
31500 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
31510 case 3:
31520 No=0:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,Y+20),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
31530 end select
31540 endif
31550 else
31560 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
31570 '*******************************************************************************************************
31580 'WXGA 1200x 800 日本語
31590 '*******************************************************************************************************
31600 if ((size(0) <= 1280) and (size(1) <= 800)) then
31610 if ((y = 1) or (key$ = chr$(31))) then
31620 select case No
31630 case 0:
31640 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(x,Y+120),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
31650 case 1:
31660 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
31670 case 2:
31680 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
31690 end select
31700 endif
31710 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
31720 if ((y = -1) or (key$ = chr$(30))) then
31730 select case No
31740 case 0:
31750 No=2:sp_on 1,0:sp_on 0,0:sp_on 2,1:sp_on 0,0:sp_put 2,(5,Y+220),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
31760 case 1:
31770 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                        ":locate 1,19:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
31780 case 2:
31790 No=1:sp_on 1,1:sp_on 1,0:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y+120),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
31800 end select
31810 endif
31820 endif
31830 '*******************************************************************************************************
31840 'WXGA 1200x 800 ここまで 日本語
31850 '*******************************************************************************************************
31860 else
31870 '*******************************************************************************************************
31880 'WXGA 1200x 800 以外　ここから
31890 '*******************************************************************************************************
31900 if ((y = 1) or (key$ = chr$(31))) then
31910 select case No
31920 case 0:
31930 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
31940 case 1:
31950 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
31960 case 2:
31970 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
31980 end select
31990 endif
32000 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
32010 if ((y = -1) or (key$ = chr$(30))) then
32020 select case No
32030 case 0:
32040 No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
32050 case 1:
32060 No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
32070 case 2:
32080 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
32090 end select
32100 endif
32110 endif
32120 '******************************************************************************************************
32130 'WXGA 1200x 800 以外　ここまで
32140 '******************************************************************************************************
32150 endif
32160 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
32170 '*******************************************************************************************************
32180 '決定ボタンを押したときの処理　共通部分　ここから
32190 '********************************************************************************************************
32200 '********************************************************************************************************
32210 'bg:右の丸ボタン　chr$(13):Enter Key
32220 '********************************************************************************************************
32230 if ((bg = 2) or (key$ = chr$(13))) then
32240 select case No
32250 case 0:
32260 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule: ' 1.数秘ルールの説明
32270 case 1:
32280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain1: '2.バーズアイグリットの説明
32290 '3:Top画面に行く
32300 case 2:
32310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen: '3.メイン画面に行く
32320 end select
32330 endif
32340 '********************************************************************************************************
32350 '決定ボタンを押したときの処理　共通部分　ここまで
32360 '*********************************************************************************************************
32370 if (bg2 = 2) then
32380 play "":pause 200
32390 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
32400 goto Suhi_Rule_explainTop2:
32410 endif
32420 '**********************************************************
32430 'バーズアイグリットの説明1
32440 'Help-
32450 '**********************************************************
32460 BirdsEyeGrid_Explain1:
32470 '●.初期設定
32480 cls 3:Font FONT:No=0:bg=0:key$="":bg2=0
32490 play "":'音を停める
32500 'バーズアイグリット基本チャートを表示　　ここから
32510 if ex_info$(1) <> "JP" then
32520 '英語ファイル
32530 else
32540 if ((size(0)<=1280) and (size(1)<=800)) then
32550 gload Gazo$ + Gazo_WXGA$ + "BirdsEyeGrid_Explain1_Chart_907x680_20240219.png",0,0,0
32560 else
32570 '****************************************************************************************************
32580 'WUXG(1920x1200)の時ここから
32590 '****************************************************************************************************
32600 '日本語ファイル
32610 gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png",0,0,0
32620 '****************************************************************************************************
32630 'WUXG(1920x1200)の時ここまで
32640 '****************************************************************************************************
32650 endif
32660 'バーズアイグリット基本チャートを表示　　ここまで
32670 endif
32680 'ジョイパッドの右で次へ行く
32690 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
32700 key$ = inkey$
32710 bg = strig(1)
32720 bg2 = strig(0)
32730 pause 200
32740 wend
32750 if (bg=2 or key$=chr$(13)) then
32760 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
32770 'goto バーズアイグリット説明の2番目に行く
32780 end
32790 endif
32800 if (bg2 = 2 or key$ = "") then
32810 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
32820 'goto Top画面に行く
32830 goto Main_Screen:
32840 'end
32850 endif
32860 '**********************************************************
32870 'バーズアイグリットの説明2
32880 'Help-
32890 '**********************************************************
32900 BirdsEyeGrid_Explain2:
32910 '●.初期設定
32920 cls 3:Font 48:No = 0:bg = 0:key$ = "":bg2 = 0
32930 play "":'音を停める
32940 'バーズアイグリット基本チャートを表示　　ここから
32950 if ex_info$(1) <> "JP" then
32960 '英語ファイル
32970 else
32980 '日本語ファイル
32990 '****************************************************************************************************
33000 'WUXG(1920x1200)の時ここから
33010 '****************************************************************************************************
33020 gload Gazo$ + "BirdsEyeGrid_Exaple1_Chart_20240202.png",0,0,0
33030 '****************************************************************************************************
33040 'WUXG(1920x1200)の時ここまで
33050 '****************************************************************************************************
33060 'バーズアイグリット基本チャートを表示　　ここまで
33070 endif
33080 'ジョイパッドの右で次へ行く
33090 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
33100 key$ = inkey$
33110 bg = strig(1)
33120 bg2 = strig(0)
33130 pause 200
33140 wend
33150 if (bg = 2 or key$ = chr$(13)) then
33160 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
33170 'goto バーズアイグリット説明の3番目に行く
33180 end
33190 endif
33200 if (bg2 = 2 or key$ = "") then
33210 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
33220 'goto Top画面に行く
33230 goto Main_Screen:
33240 'end
33250 endif
33260 '**********************************************************
33270 '数秘術占い　トップ画面
33280 Kabara_TopScreen:
33290 cls 3:play ""
33300 if ((size(0)<=1280) and (size(1)<=800)) then
33310 '***********************************************************
33320 '1280x800ここから
33330 '***********************************************************
33340 gload Gazo$ + Gazo_WXGA$ + "Kabara_TopScreen_853x640_20240223.png",0,0,0
33350 '************************************************************
33360 '1280x800ここまで
33370 '************************************************************
33380 else
33390 '****************************************************************************************************
33400 'WUXG(1920x1200)の時ここから
33410 '****************************************************************************************************
33420 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
33430 gload Gazo$ + "downscreen.png",0,0,800
33440 '****************************************************************************************************
33450 'WUXG(1920x1200)の時ここまで
33460 '****************************************************************************************************
33470 endif
33480 play Voice$ + "KabaraTop_Selection_20230721.mp3"
33490 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
33500 init"kb:4":No=0
33510 if ex_info$(1)<>"JP" then
33520 color rgb(255,255,255)
33530 print chr$(13)+chr$(13)+chr$(13)
33540 print "Please select a number" + chr$(13)
33550 print " :1.Numerology" + chr$(13)
33560 print " :2.Bird's Eye Grid" + chr$(13)
33570 print " :3.Compatibility Divination" + chr$(13)
33580 print " :4.Return to Top Screen" + chr$(13)
33590 color rgb(0,0,0)
33600 locate 1,15:print "1. Select Numerology"
33610 else
33620 if ((size(0)<=1280) and (size(1)<=800)) then
33630 '***************************************************************************************************
33640 '1280 x800 ここから
33650 '***************************************************************************************************
33660 color rgb(255,255,255):font FONT
33670 locate 1,5
33680 print "番号を選んでください" + chr$(13)
33690 locate 1,7
33700 print " :1.数秘術占い" + chr$(13)
33710 locate 1,10
33720 print " :2.バーズアイグリット" + chr$(13)
33730 locate 1,13
33740 print " :3.相性占い" + chr$(13)
33750 locate 1,16
33760 print " :4.トップ画面に戻る" + chr$(13)
33770 color rgb(0,0,0)
33780 locate 1,18:print "1.数秘術占いを選択"
33790 '***************************************************************************************************
33800 '1280 x800 ここまで
33810 '***************************************************************************************************
33820 else
33830 '****************************************************************************************************
33840 'WUXG(1920x1200)の時ここから
33850 '****************************************************************************************************
33860 color rgb(255,255,255):font FONT
33870 print chr$(13)+chr$(13)+chr$(13)
33880 print "番号を選んでください" + chr$(13)
33890 print " :1.数秘術占い" + chr$(13)
33900 print " :2.バーズアイグリット" + chr$(13)
33910 print " :3.相性占い" + chr$(13)
33920 print " :4.トップ画面に戻る" + chr$(13)
33930 color rgb(0,0,0)
33940 locate 1,15:print "1.数秘術占いを選択"
33950 '****************************************************************************************************
33960 'WUXG(1920x1200)の時ここまで
33970 '****************************************************************************************************
33980 endif
33990 endif
34000 Kabara_TopScreen2:
34010 y = 0:bg = 0:key$ = "":bg2 = 0
34020 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
34030 key$ = inkey$
34040 bg = strig(1)
34050 y = stick(1)
34060 bg2 = strig(0)
34070 pause 200
34080 wend
34090 '選択ボタン
34100 'カーソル下 　と　ジョイパッド　の下
34110 if ex_info$(1)<>"JP" then
34120 if ((y = 1) or (key$ = chr$(31))) then
34130 select case No
34140 case 2:
34150 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
34160 case 3:
34170 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
34180 case 0:
34190 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
34200 case 1:
34210 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
34220 end select
34230 endif
34240 else
34250 if ((size(0) <= 1280) and (size(1) <= 800)) then
34260 '******************************************************************************************************
34270 '1280x800ここから
34280 '*****************************************************************************************************
34290 if ((y = 1) or (key$ = chr$(31))) then
34300 select case No
34310 case 2:
34320 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                    ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34330 case 3:
34340 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0): locate 1,18:print"                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34350 case 0:
34360 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34370 case 1:
34380 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                              ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
34390 end select
34400 endif
34410 'カーソル　上  or  ジョイパッド　上
34420 if ((y=-1) or (key$=chr$(30))) then
34430 select case No
34440 case 0:
34450 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34460 case 1:
34470 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34480 case 2:
34490 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34500 case 3:
34510 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                       ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
34520 end select
34530 endif
34540 '*****************************************************************************************************
34550 '1280 x800 ここまで
34560 '******************************************************************************************************
34570 else
34580 '******************************************************************************************************
34590 '1920x1280 ここから
34600 '******************************************************************************************************
34610 if ((y = 1) or (key$ = chr$(31))) then
34620 select case No
34630 case 2:
34640 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34650 case 3:
34660 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34670 case 0:
34680 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34690 case 1:
34700 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
34710 end select
34720 endif
34730 'カーソル　上  or  ジョイパッド　上
34740 if ((y=-1) or (key$=chr$(30))) then
34750 select case No
34760 case 0:
34770 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
34780 case 1:
34790 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
34800 case 2:
34810 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
34820 case 3:
34830 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
34840 end select
34850 endif
34860 endif
34870 '******************************************************************************************************
34880 '1920x 1280 ここまで
34890 '******************************************************************************************************
34900 endif
34910 '決定ボタン
34920 'ジョイパッドの右　or  Enter key
34930 if ((bg = 2) or (key$ = chr$(13))) then
34940 select case No
34950 case 0:
34960 '1.数秘術占い
34970 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
34980 case 3:
34990 '4.メイン画面にいく
35000 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
35010 case 1:
35020 '2.バースアイグリッド
35030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
35040 case 2:
35050 '3.相性占い
35060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
35070 end select
35080 endif
35090 if (bg2 = 2) then
35100 play "":pause 200
35110 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
35120 goto Kabara_TopScreen2:
35130 endif
35140 '1.バースアイグリット　名入力
35150 Inputname1:
35160 cls 3:init"kb:4":
35170 '****************************************************************************************************
35180 'WUXG(1920x1200)の時ここから
35190 '****************************************************************************************************
35200 font 48
35210 bg=0:key$="":y=0:No=-1:name1$="":i=1
35220 gload Gazo$ + "Selection.png",1,10,100
35230 'Line 1:☓
35240 'A:選択肢
35250 sp_def 15,(50,250),16,16
35260 'B:選択肢
35270 sp_def 16,(200,250),16,16
35280 'C:選択肢
35290 sp_def 17,(350,250),16,16
35300 'D:選択肢
35310 sp_def 18,(500,250),16,16
35320 'E:選択肢
35330 sp_def 19,(630,250),16,16
35340 'F:選択肢
35350 sp_def 20,(780,250),16,16
35360 'G:選択肢
35370 sp_def 21,(930,250),16,16
35380 'Line 2:☓
35390 'H:選択肢
35400 sp_def 22,(50,345),16,16
35410 'I:選択肢
35420 sp_def 23,(200,345),16,16
35430 'J:選択肢
35440 sp_def 24,(350,345),16,16
35450 'K:選択肢
35460 sp_def 25,(500,345),16,16
35470 'L:選択肢
35480 sp_def 26,(630,345),16,16
35490 'M:選択肢
35500 sp_def 27,(780,345),16,16
35510 'N:選択肢
35520 sp_def 28,(930,345),16,16
35530 'Line 3:☓
35540 'O:選択肢
35550 sp_def 29,(50,440),16,16
35560 'P:選択肢
35570 sp_def 30,(200,440),16,16
35580 'Q:選択肢
35590 sp_def 31,(350,440),16,16
35600 'R:選択肢
35610 sp_def 32,(500,440),16,16
35620 'S:選択肢
35630 sp_def 33,(630,440),16,16
35640 'T:選択肢
35650 sp_def 34,(780,440),16,16
35660 'U:選択肢
35670 sp_def 35,(930,440),16,16
35680 'Line 4:◯
35690 'V:選択肢
35700 sp_def 36,(50,535),16,16
35710 'W:選択肢
35720 sp_def 37,(200,535),16,16
35730 'X:選択肢
35740 sp_def 38,(350,535),16,16
35750 'Y:選択肢
35760 sp_def 39,(500,535),16,16
35770 'Z:選択肢
35780 sp_def 40,(630,535),16,16
35790 'Ok:選択肢
35800 sp_def 41,(780,535),16,16
35810 'sp_def 42,(930,535),16,16
35820 'Line 1
35830 'A
35840 sp_on 15,0
35850 'B
35860 sp_on 16,0
35870 'C
35880 sp_on 17,0
35890 'D
35900 sp_on 18,0
35910 'E
35920 sp_on 19,0
35930 'F
35940 sp_on 20,0
35950 'G
35960 sp_on 21,0
35970 'Line 1
35980 'Line 2
35990 'H
36000 sp_on 22,0
36010 'I
36020 sp_on 23,0
36030 'J
36040 sp_on 24,0
36050 'K
36060 sp_on 25,0
36070 'L
36080 sp_on 26,0
36090 'M
36100 sp_on 27,0
36110 'N
36120 sp_on 28,0
36130 'Line 2
36140 'Line 3
36150 'O
36160 sp_on 29,0
36170 'P
36180 sp_on 30,0
36190 'Q
36200 sp_on 31,0
36210 'R
36220 sp_on 32,0
36230 'S
36240 sp_on 33,0
36250 'T
36260 sp_on 34,0
36270 'U
36280 sp_on 35,0
36290 'Line 3
36300 'Line 4
36310 'V
36320 sp_on 36,0
36330 'W
36340 sp_on 37,0
36350 'X
36360 sp_on 38,0
36370 'Y
36380 sp_on 39,0
36390 'Z
36400 sp_on 40,0
36410 'Ok
36420 sp_on 41,1
36430 '****************************************************************************************************
36440 'WUXG(1920x1200)の時ここまで
36450 '****************************************************************************************************
36460 'Line 4
36470 'sp_on 42,1
36480 'Line 1
36490 'sp_put 15,(50,250),0,0
36500 'sp_put 16,(200,250),0,0
36510 'sp_put 17,(350,250),0,0
36520 'sp_put 18,(500,250),0,0
36530 'sp_put 19,(630,250),0,0
36540 'sp_put 20,(780,250),0,0
36550 'sp_put 21,(930,250),0,0
36560 'Line 2
36570 'sp_put 22,(50,345),0,0
36580 'sp_put 23,(200,345),0,0
36590 'sp_put 24,(350,345),0,0
36600 'sp_put 25,(500,345),0,0
36610 'sp_put 26,(630,345),0,0
36620 'sp_put 27,(780,345),0,0
36630 'sp_put 28,(930,345),0,0
36640 'Line 3
36650 'sp_put 29,(50,440),0,0
36660 'sp_put 30,(200,440),0,0
36670 'sp_put 31,(350,440),0,0
36680 'sp_put 32,(500,440),0,0
36690 'sp_put 33,(630,440),0,0
36700 'sp_put 34,(780,440),0,0
36710 'sp_put 35,(930,440),0,0
36720 'Line 4
36730 'sp_put 36,(50,535),0,0
36740 'sp_put 37,(200,535),0,0
36750 'sp_put 38,(350,535),0,0
36760 'sp_put 39,(500,535),0,0
36770 'sp_put 40,(630,535),0,0
36780 sp_put 41,(780,535),0,0
36790 'sp_put 42,(930,536),0,0
36800 gload Gazo$ + "Screen1.png",0,0,0
36810 color rgb(255,255,255)
36820 locate 1,3
36830 print "名前の姓をアルファベットで入力してください"
36840 locate 1,5
36850 print " A  B  C  D  E  F  G"
36860 locate 1,7
36870 print " H  I  J  K  L  M  N"
36880 locate 1,9
36890 print " O  P  Q  R  S  T  U"
36900 locate 1,11
36910 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
36920 locate 1,15:color rgb(0,0,0)
36930 print "名前の姓:" + name1$
36940 select_name1:
36950 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
36960 '有効ボタン
36970 '1.決定ボタン(bg:2)
36980 '2.Enter Key$:chr$(13)
36990 '3.カーソル上 (chr$(31))
37000 '4.カーソル　左 (chr$(29))
37010 '5.ジョイパッド　上 (y:1)
37020 '6:ジョイパッド　左 (y2:-1)
37030 '7:ジョイパッド　下 (y:-1)
37040 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
37050 key$ = inkey$
37060 'ジョイパッドの決定:bg
37070 bg = strig(1)
37080 y = stick(1)
37090 y2 = stick(0)
37100 pause 200
37110 wend
37120 '====================================
37130 'Birds Eye Grid 名前入力
37140 '入力スタイル　アルファベット入力
37150 'sp_on:　スプライトのオンオフ
37160 'sp_put :表示位置
37170 'No:ボタン番号
37180 '====================================
37190 'カーソルで下に行く
37200 if ((y=-1) or (key$=chr$(31))) then
37210 select case No
37220 '1.Ok ボタン
37230 'sp_on スプライトのオンオフ
37240 'sp_put スプライトを表示
37250 case -1:
37260 '1.アルファベット　入力ボタン
37270 '実装未完全なので終了
37280 'Ok → T ○ :No:20=T
37290 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
37300 'T  → M ○
37310 case 20:
37320 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
37330 'M  →　F ○
37340 case 13:
37350 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
37360 'F  → Ok
37370 case 6:
37380 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
37390 end select
37400 endif
37410 '2.決定ボタン
37420 if ((key$ = chr$(13)) OR  (bg = 2)) then
37430 select case No
37440 case -1:
37450 'スプライトをOFFにする
37460 sp_on 41,0
37470 end select
37480 endif
37490 '3.カーソル　左
37500 if (key$ = chr$(29) or (y2 =-1)) then
37510 select case No
37520 'Line 4
37530 'Line 4
37540 '1.
37550 'Z:-1 :Ok ボタン
37560 'Ok → Z
37570 case -1:
37580 'Ok →　Z
37590 'Ok ボタン OFF,Z Button ON
37600 'No=26:Z
37610 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
37620 '2.
37630 '26:Zボタン Z→ Y
37640 case 26:
37650 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
37660 '3.
37670 '25:Yボタン  Y → X
37680 case 25:
37690 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
37700 '4
37710 '24:Xボタン X → W
37720 case 24:
37730 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
37740 '23:Wボタン X → W
37750 '5
37760 case 23:
37770 '22:Vボタン W → V
37780 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
37790 case 22:
37800 '-1:V→ Ok
37810 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
37820 'Line 3
37830 case 20:
37840 '33:T34  → S:33 :◯
37850 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
37860 case 19:
37870 '32:S:33 → R:32 :◯
37880 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
37890 case 18:
37900 '31:R:32 → Q:31 :◯
37910 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
37920 '30:O → P :◯
37930 case 17:
37940 '30:Q:31 → P:30 :◯
37950 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
37960 case 16:
37970 '29:P:30 → O:29 :◯
37980 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
37990 case 15:
38000 '28:O:29 → U:21  :◯
38010 'O:OFF,U:ON
38020 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
38030 '27:U:21 → T:20  :◯
38040 case 21:
38050 'U:OFF:T:ON
38060 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
38070 'Line 2
38080 '26:M:13 → L:12 : ○
38090 case 13:
38100 'M:OFF,L:ON
38110 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
38120 '25:L:12 → K:11 : ○
38130 case 12:
38140 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
38150 '24:K:11 → J:10 : ○
38160 case 11:
38170 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
38180 '23:J:10 → I:9  : ○
38190 case 10:
38200 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
38210 '22:I:9 → H:8    :○
38220 case 9:
38230 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
38240 '21:H:8 → N:14:   :○
38250 case 8:
38260 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
38270 '20:N:14 → M:13:   :○
38280 case 14:
38290 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
38300 '●.Line 1:
38310 '19:F:20 → E:19 : ☓
38320 'F:OFF,E:ON
38330 case 6:
38340 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
38350 '18:E → D
38360 'E:OFF,D:ON
38370 case 5:
38380 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
38390 '17:D → C
38400 'D:OFF,C:ON
38410 case 4:
38420 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
38430 case 3:
38440 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
38450 case 2:
38460 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
38470 case 1:
38480 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
38490 case 7:
38500 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
38510 end select
38520 endif
38530 '上から下の方向
38540 if ((key$ = chr$(31)) or  (y = 1)) then
38550 select case No
38560 '●.1
38570 '1:A→H
38580 case 1:
38590 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
38600 '2:H→O
38610 case 8:
38620 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
38630 '3:O→V
38640 case 15:
38650 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
38660 '4:V→A
38670 case 22:
38680 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
38690 '●.2
38700 '5.B→I
38710 case 2:
38720 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
38730 '6.I→P
38740 case 9:
38750 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
38760 '7.P→W
38770 case 16:
38780 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
38790 '8.W→B
38800 case 23:
38810 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
38820 '●.3
38830 '9.C→J
38840 case 3:
38850 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
38860 '10.J→Q
38870 case 10:
38880 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
38890 '11.Q→X
38900 case 17:
38910 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
38920 '12.X→C
38930 case 24:
38940 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
38950 '●.4
38960 '13.D→K
38970 case 4:
38980 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
38990 '14.K→R
39000 case 11:
39010 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
39020 '15.R→Y
39030 case 18:
39040 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
39050 '16.Y→D
39060 case 25:
39070 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
39080 '●.5
39090 '17.E→L
39100 case 5:
39110 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
39120 '18.L→S
39130 case 12:
39140 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
39150 '19.S→Z
39160 case 19:
39170 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
39180 '20.Z→E
39190 case 26:
39200 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
39210 '●.6
39220 '21.F→M
39230 case 6:
39240 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
39250 '22.M→T
39260 case 13:
39270 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
39280 '23.T→Ok
39290 case 20:
39300 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
39310 '24.Ok→F
39320 case -1:
39330 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
39340 '●.7
39350 '25.G→N
39360 case 7:
39370 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
39380 '26.N→U
39390 case 14:
39400 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
39410 '27.U→G
39420 case 21:
39430 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
39440 end select
39450 endif
39460 '決定ボタン　で名前の姓に文字を追加。
39470 if (key$ = chr$(13) or bg = 2) then
39480 select case No
39490 'Okボタン
39500 case -1:
39510 goto Inputname2:
39520 'Aの文字
39530 case 1:
39540 'if len(n$)=0 then
39550 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
39560 'else
39570 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
39580 'endif
39590 goto select_name1:
39600 case 2:
39610 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
39620 end select
39630 endif
39640 Input_name1_Birdseye:
39650 cls 3:init "kb:2":play ""
39660 gload Gazo$ + "Input_Birtheye2.png",0,0,0
39670 if ex_info$(1)<>"JP" then
39680 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
39690 color rgb(0,0,255)
39700 locate 1,2:print "Please enter your name in English"
39710 color rgb(0,0,0)
39720 locate 1,5:Input "Name (Surname):",name1$
39730 else
39740 '****************************************************************************************************
39750 '共通部分　ここから
39760 '****************************************************************************************************
39770 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
39780 color rgb(0,0,255)
39790 locate 1,2:print "名前をアルファベットで入れてください"
39800 color rgb(0,0,0)
39810 locate 1,5:Input "名前（姓の部分）:",name1$
39820 '****************************************************************************************************
39830 '共通部分　ここまで
39840 '****************************************************************************************************
39850 endif
39860 '27.U→G
39870 'locate 1,5:print "Hit any key"
39880 n1 = len(name1$)
39890 if (n1 < 11) then
39900 for i=1 to n1
39910 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
39920 next i
39930 endif
39940 goto Inputname2:
39950 '2.グリッドアイ　姓の入力
39960 'end
39970 Inputname2:
39980 cls 3:init"kb:2":font 48:play ""
39990 gload Gazo$ + "Input_Birtheye1.png",0,0,0
40000 if ex_info$(1)<>"JP" then
40010 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
40020 color rgb(0,0,255)
40030 locate 1,2:print "Please enter your name in English"
40040 color rgb(0,0,0)
40050 locate 1,5:Input "Name (First name):",name2$
40060 n2 = len(name2$)
40070 for i=1 to n2
40080 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
40090 next i
40100 else
40110 '****************************************************************************************************
40120 '共通部分　ここから
40130 '****************************************************************************************************
40140 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
40150 color rgb(0,0,255)
40160 locate 1,2:print "名前をアルファベットで入れてください"
40170 color rgb(0,0,0)
40180 locate 1,5:Input "名前(名の部分):",name2$
40190 n2 = len(name2$)
40200 for i=1 to n2
40210 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
40220 next i
40230 '****************************************************************************************************
40240 '共通部分　ここまで
40250 '****************************************************************************************************
40260 endif
40270 '****************************************************************************************************
40280 '計算領域　ここから
40290 '****************************************************************************************************
40300 Complate:
40310 'name1
40320 for i=0 to 25
40330 for n=1 to len(name1$)
40340 if (buf_chart$(i,0) = buf_name1$(n-1)) then
40350 b = val(buf_chart$(i,1))
40360 buffer(b-1) = buffer(b-1) + 1
40370 endif
40380 next n
40390 next i
40400 'name2
40410 for i=0 to 25
40420 for n=1 to len(name2$)
40430 if (buf_chart$(i,0) = buf_name2$(n-1)) then
40440 c = val(buf_chart$(i,1))
40450 buffer(c - 1) = buffer(c - 1) + 1
40460 endif
40470 next n
40480 next i
40490 '****************************************************************************************************
40500 '計算領域 ここまで
40510 '****************************************************************************************************
40520 '****************************************************************************************************
40530 '結果表示領域
40540 '****************************************************************************************************
40550 Result_Birtheye1:
40560 cls 3:init"kb:4":No=0:play "":'音を止める
40570 '****************************************************************************************************
40580 '1280x800　ここから
40590 '****************************************************************************************************
40600 if ((size(0) <= 1280) and (size(1) <= 800)) then
40610 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x640_20240223.png",0,0,0
40620 '****************************************************************************************************
40630 '1280x800　ここまで
40640 '****************************************************************************************************
40650 else
40660 '****************************************************************************************************
40670 '1920x1280　ここから
40680 '****************************************************************************************************
40690 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
40700 gload Gazo$ + "downscreen.png",0,0,800
40710 '****************************************************************************************************
40720 '1920x1280　ここまで
40730 '****************************************************************************************************
40740 endif
40750 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
40760 color rgb(255,255,255)
40770 '1の表示
40780 locate 3,14:print buffer(0);
40790 '2の表示
40800 locate 3,9:print buffer(1);
40810 '3の表示
40820 locate 3,5:print buffer(2);
40830 '4の表示
40840 locate 10,14:print buffer(3);
40850 '5の表示
40860 locate 10,9:print buffer(4);
40870 '6の表示
40880 locate 10,5:print buffer(5);
40890 '7の表示
40900 locate 15,14:print buffer(6);
40910 '8の表示
40920 locate 15,9:print buffer(7);
40930 '9の表示
40940 locate 15,5:print buffer(8);
40950 'name を大文字に変換
40960 locate 5,3:print ucase$(name1$ + name2$)
40970 color rgb(0,0,0)
40980 'bg:右のボタン  ,bg2:左のボタン
40990 if ex_info$(1)<>"JP" then
41000 color rgb(255,255,255)
41010 print "Left circle: Main Screen, Right circle: Open Menu"
41020 else
41030 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
41040 endif
41050 bg=0:key$="":bg2=0
41060 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
41070 'Enterと決定ボタン
41080 key$ = inkey$
41090 '右ボタン:1
41100 bg = strig(1)
41110 '左の丸ボタン:0
41120 bg2=strig(0)
41130 pause 200
41140 wend
41150 if ((bg=2) or (key$=chr$(13))) then
41160 'データーをクリアしてトップ画面に行く
41170 'for i=0 to 8
41180 'buffer(i)=0
41190 'next i
41200 'for n=0 to 9
41210 'buf_name1$(n) = ""
41220 'buf_name2$(n) = ""
41230 'next n
41240 'Topに行く
41250 'goto Main_Screen:
41260 'メニューを開く
41270 'goto BirdsEye_Result2:
41280 'Menu(ui_select) リストに飛ぶ
41290 goto Result_Birtheye_List1:
41300 endif
41310 if (bg2=2) then
41320 'データーをクリアする
41330 for i=0 to 8
41340 buffer(i)=0
41350 next i
41360 for n=0 to 9
41370 buf_name1$(n)=""
41380 buf_name2$(n)=""
41390 next n
41400 goto Main_Screen:
41410 endif
41420 'goto Result_Birtheye1:
41430 'Result_Birtheye2:
41440 'cls 3:color rgb(255,255,255)
41450 'end
41460 'Memory 消去
41470 '****************************************************************************************************
41480 '結果表示領域　ここまで
41490 '****************************************************************************************************
41500 '横のフォーカスライン
41510 BirdsEye_Result2:
41520 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
41530 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
41540 Forcus1_buffer$(2)="○"
41550 else
41560 Forcus1_buffer$(2)="☓"
41570 endif
41580 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
41590 Forcus1_buffer$(1)="○"
41600 else
41610 Forcus1_buffer$(1) = "☓"
41620 endif
41630 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
41640 Forcus1_buffer$(0)="○"
41650 else
41660 Forcus1_buffer$(0)="☓"
41670 endif
41680 gload Gazo$ + "Screen1.png",0,0,0
41690 if ex_info$(1)<>"JP" then
41700 color rgb(255,0,0):
41710 locate 1,1
41720 print "Bird's Eye Grid (Focus Line 1)"
41730 color rgb(255,255,255)
41740 locate 1,3:
41750 print "●. Horizontal Focus Line"
41760 locate 1,5
41770 print "1. Sharp Line:"+Forcus1_buffer$(2)
41780 locate 1,7
41790 print "2. Mediator Line:"+Forcus1_buffer$(1)
41800 locate 1,9
41810 print "3. Steady Line:"+Forcus1_buffer$(0)
41820 color rgb(0,0,0)
41830 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
41840 else
41850 color rgb(255,0,0):
41860 locate 1,1
41870 print "バーズアイグリッド(フォーカスライン1)"
41880 color rgb(255,255,255)
41890 locate 1,3:
41900 print "●.横のフォーカスライン"
41910 locate 1,5
41920 print "1.切れ者ライン:"+Forcus1_buffer$(2)
41930 locate 1,7
41940 print "2.調停者ライン:"+Forcus1_buffer$(1)
41950 locate 1,9
41960 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
41970 color rgb(0,0,0)
41980 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
41990 endif
42000 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
42010 key$ = inkey$
42020 bg = strig(1)
42030 bg2 = strig(0)
42040 pause 200
42050 wend
42060 if ((bg=2) or (key$=chr$(13))) then
42070 goto BirdsEye_Result3:
42080 endif
42090 if (bg2=2) then
42100 for i=0 to 8
42110 buffer(i)=0
42120 next i
42130 goto Main_Screen:
42140 endif
42150 BirdsEye_Result3:
42160 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
42170 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
42180 Forcus2_buffer$(2)="○"
42190 else
42200 Forcus2_buffer$(2)="☓"
42210 endif
42220 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
42230 Forcus2_buffer$(1)="○"
42240 else
42250 Forcus2_buffer$(1) = "☓"
42260 endif
42270 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
42280 Forcus2_buffer$(0)="○"
42290 else
42300 Forcus2_buffer$(0)="☓"
42310 endif
42320 gload Gazo$ + "Screen1.png",0,0,0
42330 if ex_info$(1)<>"JP" then
42340 color rgb(255,0,0):
42350 locate 1,1
42360 print "Bird's Eye Grid (Focus Line 2)"
42370 color rgb(255,255,255)
42380 locate 1,3
42390 print "●. Vertical Focus Line"
42400 locate 1,5
42410 print "1. Expresser Line:" + Forcus2_buffer$(2)
42420 locate 1,7
42430 print "2. Commander Line:" + Forcus2_buffer$(1)
42440 locate 1,9
42450 print "3. Leader Line:" + Forcus2_buffer$(0)
42460 color rgb(0,0,0)
42470 locate 0,15:print "Right circle: Next, Left circle: Retest "
42480 else
42490 '****************************************************************************************************
42500 'WUXG(1920x1200)の時ここから
42510 '****************************************************************************************************
42520 color rgb(255,0,0):
42530 locate 1,1
42540 print "バーズアイグリッド(フォーカスライン2)"
42550 color rgb(255,255,255)
42560 locate 1,3
42570 print "●.縦のフォーカスライン"
42580 locate 1,5
42590 print "1.表現者ライン:" + Forcus2_buffer$(2)
42600 locate 1,7
42610 print "2.司令塔ライン:" + Forcus2_buffer$(1)
42620 locate 1,9
42630 print "3.指導者ライン:" + Forcus2_buffer$(0)
42640 color rgb(0,0,0)
42650 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
42660 '****************************************************************************************************
42670 'WUXG(1920x1200)の時ここから
42680 '****************************************************************************************************
42690 endif
42700 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
42710 key$ = inkey$
42720 bg = strig(1)
42730 bg2 = strig(0)
42740 pause 200
42750 wend
42760 if ((bg = 2) or (key$ = chr$(13))) then
42770 goto BirdsEye_Result4:
42780 endif
42790 if (bg2=2) then
42800 for i=0 to 8
42810 buffer(i)=0
42820 next i
42830 goto Main_Screen:
42840 endif
42850 BirdsEye_Result4:
42860 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
42870 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
42880 Forcus3_buffer$(1) = "○"
42890 else
42900 Forcus3_buffer$(1) = "☓"
42910 endif
42920 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
42930 Forcus3_buffer$(0) = "○"
42940 else
42950 Forcus3_buffer$(0) = "☓"
42960 endif
42970 gload Gazo$ + "Screen1.png",0,0,0
42980 if ex_info$(1)<>"JP" then
42990 color rgb(255,0,0):
43000 locate 1,1
43010 print "Bird's Eye Grid (Focus Line 3)"
43020 color rgb(255,255,255)
43030 locate 1,3:
43040 print "●. Diagonal Focus Line"
43050 locate 1,5
43060 print "1. Success Line:"+Forcus3_buffer$(1)
43070 locate 1,7
43080 print "2. Celebrity Line:"+Forcus3_buffer$(0)
43090 color rgb(0,0,0)
43100 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
43110 else
43120 '****************************************************************************************************
43130 'WUXG(1920x1200)の時ここから
43140 '****************************************************************************************************
43150 color rgb(255,0,0):
43160 locate 1,1
43170 print "バーズアイグリッド(フォーカスライン3)"
43180 color rgb(255,255,255)
43190 locate 1,3:
43200 print "●.斜めのフォーカスライン"
43210 locate 1,5
43220 print "1.成功者ライン:"+Forcus3_buffer$(1)
43230 locate 1,7
43240 print "2.セレブライン:"+Forcus3_buffer$(0)
43250 color rgb(0,0,0)
43260 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
43270 '*************************************************************************************************
43280 'WUXG(1920x1200)の時ここまで
43290 '*************************************************************************************************
43300 endif
43310 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
43320 key$ = inkey$
43330 bg = strig(1)
43340 bg2 = strig(0)
43350 pause 200
43360 wend
43370 if ((bg=2) or (key$=chr$(13))) then
43380 goto Result_Birtheye1:
43390 endif
43400 if (bg2=2) then
43410 'データークリア
43420 for i=0 to 8
43430 buffer(i) = 0
43440 next i
43450 goto Main_Screen:
43460 endif
43470 References1:
43480 cls 3:key$ = "":bg = 0:play "":
43490 font 48-8
43500 if ((size(0) <= 1280) and (size(1) <= 800)) then
43510 gload Gazo$ + Gazo_WXGA$ +  "Reference1_864x640_20240219.png",0,0,0
43520 else
43530 gload Gazo$ + "Reference1_20230703.png",0,0,0
43540 gload Gazo$ + "downscreen.png",0,0,800
43550 endif
43560 if ex_info$(1)<>"JP" then
43570 print chr$(13)+chr$(13)+chr$(13)
43580 color rgb(0,0,255)
43590 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
43600 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
43610 print "・Publisher: Gento-sha" + chr$(13)
43620 print "・Website: www.carolAdrienne.jp/" + chr$(13)
43630 print "・ISBN: 978-4-344-01394-0" + chr$(13)
43640 print "・Price: 1500 yen + tax" + chr$(13)
43650 color rgb(255,255,255)
43660 locate 1,18
43670 print "Right joystick: Next"
43680 else
43690 '****************************************************************************************************
43700 '(1200x800)の時ここから
43710 '****************************************************************************************************
43720 if ((size(0)<=1280) and (size(1)<=800)) then
43730 font FONT
43740 color rgb(0,0,255)
43750 locate 1,5:
43760 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
43770 locate 1,7:
43780 print "・Author:carol Adrinne,PhD"+chr$(13)
43790 locate 1,9:
43800 print "・出版社:幻冬舎" + chr$(13)
43810 locate 1,11:
43820 print "・HP:www.carolAdrienne.jp/"+chr$(13)
43830 locate 1,13:
43840 print "・ISBN:978-4-344-01394-0"+chr$(13)
43850 locate 1,15
43860 print "・定価:1500円 + 税"+chr$(13)
43870 color rgb(255,255,255)
43880 locate 1,18
43890 print "ジョイパッド右：次へ"
43900 '****************************************************************************************************
43910 '(1200x800)の時ここまで
43920 '****************************************************************************************************
43930 else
43940 '****************************************************************************************************
43950 'WUXG(1920x1200)の時ここから
43960 '****************************************************************************************************
43970 font FONT
43980 print chr$(13)+chr$(13)+chr$(13)
43990 color rgb(0,0,255)
44000 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
44010 print "・Author:carol Adrinne,PhD"+chr$(13)
44020 print "・出版社:幻冬舎" + chr$(13)
44030 print "・HP:www.carolAdrienne.jp/"+chr$(13)
44040 print "・ISBN:978-4-344-01394-0"+chr$(13)
44050 print "・定価:1500円 + 税"+chr$(13)
44060 color rgb(255,255,255)
44070 locate 1,18
44080 print "ジョイパッド右：次へ"
44090 '****************************************************************************************************
44100 'WUXG(1920x1200)の時ここまで
44110 '****************************************************************************************************
44120 endif
44130 endif
44140 while (key$ <> chr$(13) and bg <> 2)
44150 bg = strig(1)
44160 key$ = inkey$
44170 pause 200
44180 wend
44190 '
44200 if ((bg = 2) or (key$ = chr$(13))) then
44210 pause 200:goto References2:
44220 endif
44230 'ユダヤの秘儀 カバラ大占術
44240 References2:
44250 cls 3:play "":bg = 0:key$ = ""
44260 if ((size(0)<=1280) and (size(1)<=800)) then
44270 gload Gazo$ + Gazo_WXGA$ +  "Reference2_864x640_20240219.png",0,0,0
44280 else
44290 gload Gazo$ + "Reference2_20230703.png",0,0,0
44300 gload Gazo$ + "downscreen.png",0,0,800
44310 endif
44320 '参考文献２
44330 'カバラ大占術
44340 if ex_info$(1)<>"JP" then
44350 print chr$(13) + chr$(13) + chr$(13)
44360 color  rgb(0,0,255):font 48-8
44370 locate 1,3
44380 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
44390 print "・Author: Hironari Asano" + chr$(13)
44400 print "・Publisher: NON BOOK" + chr$(13)
44410 print "・ISBN: 4-396-10364-6" + chr$(13)
44420 print "・Price: 829 yen + tax"
44430 color rgb(255,255,255)
44440 locate 1,18
44450 print "Right joystick: Return to top"
44460 else
44470 '****************************************************************************************************
44480 '(1200x800)の時 ここから
44490 '****************************************************************************************************
44500 if ((size(0)<=1280) and (size(1)<=800)) then
44510 font FONT
44520 color  rgb(0,0,255):
44530 locate 1,5:print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
44540 locate 1,7:print "・著者：浅野 八郎" + chr$(13)
44550 locate 1,9:print "・出版社:NON BOOK" + chr$(13)
44560 locate 1,11:print "・ISBN:4-396-10364-6" + chr$(13)
44570 locate 1,13:print "・定価:829円 + 税"
44580 color rgb(255,255,255)
44590 locate 1,18
44600 print "ジョイパッド右：トップへ行く"
44610 '****************************************************************************************************
44620 '(1200x800)の時 ここまで
44630 '****************************************************************************************************
44640 else
44650 '****************************************************************************************************
44660 'WUXG(1920x1200)の時ここから
44670 '****************************************************************************************************
44680 color  rgb(0,0,255):font FONT
44690 print chr$(13) + chr$(13) + chr$(13)
44700 locate 1,3
44710 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
44720 print "・著者：浅野　八郎" + chr$(13)
44730 print "・出版社:NON BOOK" + chr$(13)
44740 print "・ISBN:4-396-10364-6" + chr$(13)
44750 print "・定価:829円 + 税"
44760 color rgb(255,255,255)
44770 locate 1,18
44780 print "ジョイパッド右：トップへ行く"
44790 '****************************************************************************************************
44800 'WUXG(1920x1200)の時ここまで
44810 '****************************************************************************************************
44820 endif
44830 endif
44840 while ((key$ <> chr$(13)) and (bg <> 2))
44850 bg = strig(1)
44860 key$ = inkey$
44870 pause 200
44880 wend
44890 if ((bg = 2) or (key$ = chr$(13))) then
44900 pause 200:goto Main_Screen:
44910 endif
44920 end
44930 '1.数秘術　トップ画面
44940 Kabara_First_Top:
44950 cls 3:color rgb(255,255,255):play ""
44960 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
44970 gload Gazo$ + "downscreen.png",0,0,800
44980 No=0:init"kb:4"
44990 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
45000 if ex_info$(1)<>"JP" then
45010 print chr$(13);chr$(13)
45020 color rgb(255,255,255)
45030 locate 3,4:No=0
45040 print "Please select a number" + chr$(13)
45050 print " :1. Numerology" + chr$(13)
45060 print " :2. Return to the top screen" + chr$(13)
45070 color rgb(0,0,0)
45080 sp_on 0,1
45090 locate 1,15:print "1. Select Numerology"
45100 else
45110 '****************************************************************************************************
45120 'WUXG(1920x1200)の時ここから
45130 '****************************************************************************************************
45140 print chr$(13);chr$(13)
45150 color rgb(255,255,255)
45160 locate 3,4:No=0
45170 print "番号選んでください" + chr$(13)
45180 print " :1.数秘術占い" + chr$(13)
45190 print " :2.トップ画面に戻る" + chr$(13)
45200 color rgb(0,0,0)
45210 sp_on 0,1
45220 locate 1,15:print "1.数秘術番号を求めるを選択"
45230 '****************************************************************************************************
45240 'WUXG(1920x1200)の時ここまで
45250 '****************************************************************************************************
45260 endif
45270 'KeyBord:true
45280 'Joy Pad:true
45290 '上、下:true
45300 '
45310 'ｂｇ：決定ボタン
45320 'カーソル　上
45330 'カーソル　下
45340 Kabara_First_Top2:
45350 key$ = "":bg = 0:y = 0:
45360 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
45370 key$ = inkey$
45380 bg = strig(1)
45390 y = stick(1)
45400 'PauseでCPUを休める
45410 pause 5
45420 wend
45430 '1.カーソル　下 処理 chr$(31)
45440 'カーソル　下
45450 if ex_info$(1) <> "JP" then
45460 if ((key$ = chr$(31)) or (y = 1)) then
45470 select case No
45480 '
45490 case 1:
45500 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
45510 case 0:
45520 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
45530 'case 2:
45540 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
45550 end select
45560 endif
45570 else
45580 if ((key$ = chr$(31)) or (y = 1)) then
45590 select case No
45600 '
45610 case 1:
45620 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
45630 case 0:
45640 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
45650 'case 2:
45660 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
45670 end select
45680 endif
45690 '2.カーソル　上 処理 chr$(30)
45700 if ((key$ = chr$(30)) or (y = -1)) then
45710 select case No
45720 case 0:
45730 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
45740 case 1:
45750 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
45760 'case 2:
45770 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
45780 end select
45790 endif
45800 endif
45810 '3.決定 処理  bg:2 or Enter key:chr$(13)
45820 if ((bg = 2) or (key$ = chr$(13))) then
45830 select case No
45840 case 0:
45850 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
45860 goto Kabara_TopScreen:
45870 'case 1:
45880 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
45890 case 1:
45900 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
45910 end select
45920 endif
45930 '
45940 'Kabara 相性占い トップ画面
45950 Kabara_Aishou_Top:
45960 cls 3:y=0:key$="":bg=0:No=0
45970 play ""
45980 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
45990 gload Gazo$ + "downscreen.png",0,0,800
46000 if ex_info$(1)<>"JP" then
46010 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
46020 print chr$(13) + chr$(13)
46030 locate 0,4:color rgb(255,255,255)
46040 print "Please select a number" + chr$(13)
46050 print " :1. Compatibility fortune-telling ...." + chr$(13)
46060 print " :2. Business compatibility fortune-telling" + chr$(13)
46070 print " :3. Return to the top screen" + chr$(13)
46080 sp_on 0,1:sp_on 1,0:sp_on 2,0
46090 color rgb(0,0,0)
46100 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
46110 else
46120 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
46130 '****************************************************************************************************
46140 'WUXG(1920x1200)の時ここから
46150 '****************************************************************************************************
46160 print chr$(13) + chr$(13)
46170 locate 0,4:color rgb(255,255,255)
46180 'print "Ok"
46190 '
46200 print "番号を選んでください" + chr$(13)
46210 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
46220 print " :2.ビジネスの相性占い" + chr$(13)
46230 print " :3.トップ画面に戻る" + chr$(13)
46240 sp_on 0,1:sp_on 1,0:sp_on 2,0
46250 color rgb(0,0,0)
46260 locate 1,15:print "1.男女2人の相性占いを選択"
46270 '****************************************************************************************************
46280 'WUXG(1920x1200)の時ここまで
46290 '****************************************************************************************************
46300 endif
46310 Kabara_Aishou_Top2:
46320 key$ = "":y = 0:bg = 0:
46330 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
46340 'ジョイパッド(右) ,十字キー (上下)
46350 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
46360 y = stick(1)
46370 key$ = inkey$
46380 bg = strig(1)
46390 pause 200
46400 wend
46410 'カーソル　下 or 十字キー　下
46420 if ex_info$(1)<>"JP" then
46430 if ((key$ = chr$(31)) or (y = 1)) then
46440 select case No
46450 'Option change 1 - 2
46460 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
46470 'ok
46480 case 0:
46490 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
46500 'Option change 2 - 3
46510 case 1:
46520 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
46530 'Release time case 2 comment release
46540 case 2:
46550 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
46560 case else:
46570 goto Kabara_Aishou_Top2:
46580 end select
46590 endif
46600 if ((key$ = chr$(30)) or (y = -1)) then
46610 select case No
46620 case 0:
46630 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
46640 case 1:
46650 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
46660 case 2:
46670 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
46680 case else:
46690 goto Kabara_Aishou_Top2:
46700 end select
46710 endif
46720 else
46730 if ((key$ = chr$(31)) or (y = 1)) then
46740 select case No
46750 '選択肢　1 - 2に変更
46760 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
46770 'ok
46780 case 0:
46790 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
46800 '選択肢　2 - 3に変更
46810 case 1:
46820 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
46830 'リリース時 case 2コメント解除
46840 case 2:
46850 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
46860 case else:
46870 goto Kabara_Aishou_Top2:
46880 end select
46890 endif
46900 '十字キー　上　、カーソル　上
46910 if ((key$ = chr$(30)) or (y = -1)) then
46920 select case No
46930 case 0:
46940 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
46950 case 1:
46960 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
46970 case 2:
46980 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
46990 case else:
47000 goto Kabara_Aishou_Top2:
47010 end select
47020 endif
47030 endif
47040 '十字キー　上下:選択
47050 'ジョイパッド 右:決定
47060 if ((bg = 2) or (key$ = chr$(13))) then
47070 select case No
47080 '1.男女の相性
47090 case 0:
47100 '男女の相性占い(未実装)トップ画面に飛ぶ
47110 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
47120 '2ビジネスの相性
47130 case 1:
47140 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
47150 case 2:
47160 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
47170 end select
47180 endif
47190 '0.男女の相性　トップ画面　ここから
47200 Danjyo_Aisyou_Top:
47210 cls 3:y=0:key$="":bg=0:No=0
47220 play ""
47230 gload Gazo$ + "Screen1.png",0,0,0
47240 gload Gazo$ + "downscreen.png",0,0,800
47250 if ex_info$(1)<>"JP" then
47260 print chr$(13) + chr$(13)
47270 locate 0,4:color rgb(255,255,255)
47280 print "Please select a number" + chr$(13)
47290 print " :1. Compatibility with a person of ...." + chr$(13)
47300 print " :2. Compatibility between two people" + chr$(13)
47310 print " :3. Return to the top screen" + chr$(13)
47320 sp_on 0,1:sp_on 1,0:sp_on 2,0
47330 color rgb(0,0,0)
47340 locate 1,15:print "1. Compatibility with a person of ...."
47350 else
47360 print chr$(13) + chr$(13)
47370 locate 0,4:color rgb(255,255,255)
47380 '****************************************************************************************************
47390 'WUXG(1920x1200)の時ここから
47400 '****************************************************************************************************
47410 print "番号を選んでください" + chr$(13)
47420 print " :1.自分と異性の相性(未実装)" + chr$(13)
47430 print " :2.男女2人の相性" + chr$(13)
47440 print " :3.トップ画面に戻る" + chr$(13)
47450 sp_on 0,1:sp_on 1,0:sp_on 2,0
47460 color rgb(0,0,0)
47470 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
47480 '****************************************************************************************************
47490 'WUXG(1920x1200)の時ここまで
47500 '****************************************************************************************************
47510 endif
47520 Danjyo_Aisyou_Top2:
47530 key$ = "":y = 0:bg = 0:
47540 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
47550 'ジョイパッド(右) ,十字キー (上下)
47560 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
47570 y = stick(1)
47580 key$ = inkey$
47590 bg = strig(1)
47600 pause 200
47610 wend
47620 if ex_info$(1)<>"JP" then
47630 'Cursor down or arrow key down
47640 if ((key$ = chr$(31)) or (y = 1)) then
47650 select case No
47660 'Option 1 - 2 change
47670 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
47680 'ok
47690 case 0:
47700 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
47710 'Option 2 - 3 change
47720 case 1:
47730 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
47740 'Release time case 2 comment release
47750 case 2:
47760 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
47770 case else:
47780 goto Kabara_Aishou_Top2:
47790 end select
47800 endif
47810 'Arrow key up, cursor up
47820 if ((key$ = chr$(30)) or (y = -1)) then
47830 select case No
47840 case 0:
47850 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
47860 case 1:
47870 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
47880 case 2:
47890 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
47900 case else:
47910 goto Kabara_Aishou_Top2:
47920 end select
47930 endif
47940 else
47950 'カーソル　下 or 十字キー　下
47960 if ((key$ = chr$(31)) or (y = 1)) then
47970 select case No
47980 '選択肢　1 - 2に変更
47990 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
48000 'ok
48010 case 0:
48020 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
48030 '選択肢　2 - 3に変更
48040 case 1:
48050 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
48060 'リリース時 case 2コメント解除
48070 case 2:
48080 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
48090 case else:
48100 goto Kabara_Aishou_Top2:
48110 end select
48120 endif
48130 '十字キー　上　、カーソル　上
48140 if ((key$ = chr$(30)) or (y = -1)) then
48150 select case No
48160 case 0:
48170 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
48180 case 1:
48190 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
48200 case 2:
48210 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
48220 case else:
48230 goto Kabara_Aishou_Top2:
48240 end select
48250 endif
48260 endif
48270 end
48280 '十字キー　上下:選択
48290 'ジョイパッド 右:決定
48300 if ((bg = 2) or (key$ = chr$(13))) then
48310 select case No
48320 '1.自分と異性の相性
48330 case 0:
48340 '未実装
48350 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
48360 '2男女の相性 男性の名前入力に飛ぶ
48370 case 1:
48380 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
48390 case 2:
48400 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
48410 end select
48420 endif
48430 '0.男女の相性　トップ画面　ここまで
48440 '1.男女の相性 ここから
48450 '1-1.男性の名前を入力
48460 Danjyo_Aisyou_Input_Name_male:
48470 No=0:color RGB(255,255,255)
48480 '入力:キーボード
48490 cls 3:init "kb:2"
48500 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
48510 gload Gazo$ + "downscreen.png",0,0,800
48520 for i=0 to 3
48530 buf_male_year(i)=0
48540 next i
48550 if ex_info$(1)<>"JP" then
48560 play "":color rgb(255,0,0):male_name$ = ""
48570 locate 0,1
48580 print "Male Compatibility" + chr$(13) + chr$(13)
48590 color rgb(255,255,255):
48600 locate 0,3
48610 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
48620 locate 0,15:color rgb(0,0,0)
48630 Input "Man's Name:",male_name$
48640 else
48650 '****************************************************************************************************
48660 'WUXG(1920x1200)の時ここから
48670 '****************************************************************************************************
48680 play "":color rgb(255,0,0):male_name$ = ""
48690 locate 0,1
48700 print "男性の相性" + chr$(13) + chr$(13)
48710 color rgb(255,255,255):
48720 locate 0,3
48730 print "男性の相性を求めます。男性の名前を" + chr$(13)
48740 print "入れてください" + chr$(13)
48750 locate 0,15:color rgb(0,0,0)
48760 Input "男性の名前:",male_name$
48770 '****************************************************************************************************
48780 'WUXG(1920x1200)の時ここまで
48790 '****************************************************************************************************
48800 endif
48810 '-------------------------------------------
48820 '1-2:男性の生まれた年代
48830 Danjyo_Aisyou_Input_Born_Year:
48840 No=0:color RGB(255,255,255)
48850 cls 3:init "kb:4"
48860 '****************************************************************************************************
48870 'WUXG(1920x1200)の時ここから
48880 '****************************************************************************************************
48890 gload Gazo$ + "Screen1.png",0,0,0
48900 gload Gazo$ + "downscreen.png",0,0,800
48910 '****************************************************************************************************
48920 'WUXG(1920x1200)の時ここから
48930 '****************************************************************************************************
48940 play "":color rgb(255,0,0)
48950 '-------------------------------------------
48960 font 48
48970 if ex_info$(1)<>"JP" then
48980 locate 0,1
48990 color rgb(255,255,255)
49000 print "Please enter the man's birth year" + chr$(13)
49010 color rgb(255,255,255)
49020 locate 1,3
49030 print "Man's Birth Year (4 digits):";buf_male_year$
49040 else
49050 '****************************************************************************************************
49060 'WUXG(1920x1200)の時ここから
49070 '****************************************************************************************************
49080 locate 0,1
49090 '文字色：黒　 color rgb(0,0,0)
49100 color rgb(255,255,255)
49110 print "男性の生まれた年代を入れて下さい" + chr$(13)
49120 color rgb(255,255,255)
49130 locate 1,3
49140 print "男性の生まれた年代(西暦4桁):";buf_male_year$
49150 '****************************************************************************************************
49160 'WUXG(1920x1200)の時ここから
49170 '****************************************************************************************************
49180 endif
49190 color rgb(255,255,255)
49200 'locate 4,6:print ":7"
49210 'locate 9,6:print ":8"
49220 'locate 12,6:print ":9"
49230 locate 4,6
49240 print ":7  :8  :9" + chr$(13)
49250 color rgb(255,255,255)
49260 locate 4,8
49270 print ":4  :5  :6" + chr$(13)
49280 color rgb(255,255,255)
49290 locate 4,10
49300 print ":1  :2  :3" + chr$(13)
49310 locate 4,12
49320 print "    :0"
49330 locate 12,12
49340 color rgb(0,0,255)
49350 print ":Ok"
49360 sp_on 4,0: sp_on 5,0:sp_on 6,0
49370 sp_on 7,0:sp_on 8,0:sp_on 9,0
49380 sp_on 10,0:sp_on 11,0:sp_on 12,0
49390 sp_on 13,0:sp_on 14,1
49400 '-------------------------------------------------------------------------------------
49410 Danjyo_Aisyou_Input_Male_Born_Year2:
49420 key$="":bg=0:y=0:y2=0:bg2=0:
49430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49440 key$ = inkey$
49450 bg = strig(1)
49460 y = stick(1)
49470 y2 = stick(0)
49480 bg2=strig(0)
49490 pause 200
49500 wend
49510 '十字キー　ここから
49520 '上の矢印　または、十字キー上
49530 if ((y = -1) or (key$ = chr$(30))) then
49540 select case No
49550 'No=-1:okのとき:初期の状態
49560 '0kボタンから３に移動
49570 '上に行く 処理
49580 case -1:
49590 No=3:sp_on 12,1:sp_on 14,0
49600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49610 '選択肢:3
49620 '3ボタンから 6に移動
49630 case 3:
49640 No=6:sp_on 12,0:sp_on 11,1
49650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49660 '6ボタンから ９に移動
49670 case 6:
49680 No=9:sp_on 10,1:sp_on 11,0
49690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49700 '6ボタンから ９に移動　ここまで
49710 '9で上を押して何もしない
49720 case 9:
49730 '何もしない
49740 No=9
49750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49760 '9で上を押しても何もしない　ここまで
49770 '上　 0ボタンから2ボタン
49780 'sp_on 6,1:1
49790 'sp_on 8,1:5
49800 'sp_on 7,1:7
49810 case 0:
49820 No=2:sp_on 13,0:sp_on 9,1:
49830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49840 '上  0ボタンから2ボタン　ここまで
49850 '2から５になる 上
49860 case 2:
49870 No=5:sp_on 8,1:sp_on 9,0:
49880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49890 case 5:
49900 No=8:sp_on 7,1:sp_on 8,0
49910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49920 case 8:
49930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49940 case 1:
49950 No=4:sp_on 5,1:sp_on 6,0
49960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
49970 case 4:
49980 No=7:sp_on 4,1:sp_on 5,0
49990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50000 case 7:
50010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50020 end select
50030 endif
50040 '左３　ここまで
50050 '下の矢印
50060 '中央 2
50070 if ((y=1) or (key$ = chr$(31))) then
50080 select case No
50090 '9から６に下げる
50100 case 9:
50110 No=6:sp_on 11,1:sp_on 10,0
50120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50130 '6から３に下げる
50140 case 6:
50150 No=3:sp_on 12,1:sp_on 11,0
50160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50170 '3から０ｋに変える
50180 case 3:
50190 No=-1:sp_on 14,1:sp_on 12,0
50200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50210 'Okから下のボタンを押しても何もしない
50220 case -1:
50230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50240 case 8:
50250 No=5:sp_on 8,1:sp_on 7,0
50260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50270 case 5:
50280 No=2:sp_on 9,1:sp_on 8,0
50290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50300 case 2:
50310 No=0:sp_on 13,1:sp_on 9,0
50320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50330 case 0:
50340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50350 case 7:
50360 No=4:sp_on 5,1:sp_on 4,0
50370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50380 case 4:
50390 No=1:sp_on 6,1:sp_on 5,0
50400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50410 case 1:
50420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50430 end select
50440 endif
50450 '左へボタン 十字キー　左　or 　カーソル左
50460 if ((y2 = -1) or (key$ = chr$(29))) then
50470 select case No
50480 'Ok ボタン  Okから　左　０に行く
50490 case -1:
50500 No=0:sp_on 13,1:sp_on 14,0
50510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50520 '0 ボタン  左　何もしない
50530 case 0:
50540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50550 case 3:
50560 No=2:sp_on 9,1:sp_on 12,0:
50570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50580 case 2:
50590 No=1:sp_on 6,1:sp_on 9,0:
50600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50610 case 1:
50620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50630 case 6:
50640 No=5:sp_on 8,1:sp_on 11,0
50650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50660 case 5:
50670 No=4:sp_on 5,1:sp_on 8,0
50680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50690 case 4:
50700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50710 case 9:
50720 No=8:sp_on 7,1:sp_on 10,0
50730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50740 case 8:
50750 No=7:sp_on 4,1:sp_on 7,0
50760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50770 case 7:
50780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50790 end select
50800 endif
50810 '右  十字キー　右　or カーソル　右
50820 if ((y2 = 1) or (key$ = chr$(28))) then
50830 select case No
50840 '0ボタンからokボタン右に移動
50850 case 0:
50860 No=-1:sp_on 14,1:sp_on 13,0
50870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50880 '0ボタンからokボタン 右に移動　ここまで
50890 'OKボタンで右を押して何もしない
50900 case -1:
50910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50920 case 1:
50930 No=2:sp_on 9,1:sp_on 6,0
50940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50950 case 2:
50960 No=3:sp_on 12,1:sp_on 9,0
50970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
50980 case 3:
50990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51000 case 4:
51010 No=5:sp_on 8,1:sp_on 5,0
51020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51030 case 5:
51040 No=6:sp_on 11,1:sp_on 8,0
51050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51060 case 7:
51070 No=8:sp_on 7,1:sp_on 4,0
51080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51090 case 8:
51100 No=9:sp_on 10,1:sp_on 7,0
51110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51120 case 9:
51130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51140 case 6:
51150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
51160 end select
51170 'Okから右ボタンを押して何もしない ここまで
51180 endif
51190 '十字キー　ここまで
51200 '==============================
51210 'ここから
51220 '==============================
51230 if ((bg = 2) or (key$ = chr$(13))) then
51240 select case count
51250 case 0:
51260 count = 1
51270 if (No = -1) then
51280 count = 0:No=0
51290 buf_male_year(0) = No
51300 'Okボタンを押したとき
51310 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51320 else
51330 'Okボタン以外が押されたとき
51340 if (No >= 1 and No <= 2) then
51350 buf_year$="":buf_year$ = str$(No) + "***"
51360 buf_year = No:a= No
51370 buf_Jyoushi_Born_Day(0) = No
51380 if ex_info$(1)<>"JP" then
51390 locate 1,3
51400 color rgb(255,255,255)
51410 print "Year of birth of the male (4 digits AD):";buf_year$
51420 else
51430 count=0
51440 ui_msg"The number is out of range."
51450 endif
51460 else
51470 '****************************************************************************************************
51480 'WUXG(1920x1200)の時ここから
51490 '****************************************************************************************************
51500 locate 1,3
51510 color rgb(255,255,255)
51520 print "男性の生まれた年代(西暦4桁):";buf_year$
51530 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51540 '****************************************************************************************************
51550 'WUXG(1920x1200)の時ここまで
51560 '****************************************************************************************************
51570 else
51580 count=0
51590 ui_msg"数字が範囲外になります。"
51600 endif
51610 buf_year$="":buf_year=0
51620 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51630 endif
51640 'endif
51650 case 1:
51660 count = 2
51670 if (No = -1) then
51680 count = 1
51690 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51700 else
51710 '****************************************************************************************************
51720 'WUXG(1920x1200)の時ここから
51730 '****************************************************************************************************
51740 buf_year = a * 10 + No
51750 b=buf_year
51760 buf_year$ = str$(buf_year) + "**"
51770 buf_male_year(0)=buf_year
51780 locate 1,3
51790 color rgb(255,255,255)
51800 print "                                                                "
51810 locate 1,3
51820 print "男性の生まれた年代(西暦4桁):" + buf_year$
51830 'if (No = -1) then
51840 'count=1
51850 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51860 '****************************************************************************************************
51870 'WUXG(1920x1200)の時ここまで
51880 '****************************************************************************************************
51890 endif
51900 case 2:
51910 count=3
51920 if (No=-1) then
51930 count =2
51940 goto Danjyo_Aisyou_Input_Male_Born_Year2:
51950 else
51960 buf_year = b * 10 + No
51970 c=buf_year
51980 buf_year$ = str$(buf_year) + "*"
51990 buf_male_year(0) = buf_year
52000 locate 1,3
52010 color rgb(255,255,255)
52020 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
52030 if ex_info$(1)<>"JP" then
52040 locate 1,3
52050 print "Year of birth of the male (4 digits AD):";buf_year$
52060 else
52070 '****************************************************************************************************
52080 'WUXG(1920x1200)の時ここから
52090 '****************************************************************************************************
52100 locate 1,3
52110 print "男性の生まれた年代(西暦4桁):";buf_year$
52120 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52130 '****************************************************************************************************
52140 'WUXG(1920x1200)の時ここまで
52150 '****************************************************************************************************
52160 endif
52170 endif
52180 case 3:
52190 count=4
52200 if (No = -1) then
52210 No=0
52220 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52230 else
52240 buf_year = c * 10 + No
52250 buf_year$ = str$(buf_year)
52260 buf_male_year(0) = buf_year
52270 if ex_info$(1)<>"JP" then
52280 locate 1,3
52290 color RGB(255,255,255)
52300 print "                                      "
52310 locate 1,3
52320 print "Year of birth of the male (4 digits AD):";buf_year$
52330 else
52340 locate 1,3
52350 color RGB(255,255,255)
52360 print "                                      "
52370 locate 1,3
52380 print "男性の生まれた年代(西暦4桁):";buf_year$
52390 endif
52400 buf_year=val(buf_year$)
52410 'year=val(buf_year$)
52420 'if (No=-1) then
52430 'goto Input_Born_Month:
52440 'else
52450 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52460 endif
52470 case 4:
52480 'bufyear=buf_year
52490 if (No=-1) then
52500 buf_year = val(buf_year$)
52510 buf_male_year(0)=buf_year
52520 sp_on 14,0:No=0
52530 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52540 else
52550 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52560 endif
52570 end select
52580 endif
52590 '===========================
52600 'ここまでを部下のところにコピーする.
52610 '===========================
52620 if (bg2 = 2) then
52630 select case count2
52640 case 0:
52650 if (No = -1) then
52660 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
52670 count=0
52680 if ex_info$(1)<>"JP" then
52690 locate 1,3
52700 color rgb(255,255,255)
52710 print "                                      "
52720 locate 1,3
52730 print "Year of birth of the male (4 digits AD):" + buf_male_year$
52740 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52750 else
52760 '(buf_year=0) then
52770 buf_male_year=0:buf_male_year$="****"
52780 locate 1,3
52790 print "                                       "
52800 locate 1,3
52810 print "Year of birth of the male (4 digits AD):"+buf_male_year$
52820 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52830 else
52840 locate 1,3
52850 color rgb(255,255,255)
52860 print "                                      "
52870 locate 1,3
52880 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
52890 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52900 else
52910 '(buf_year=0) then
52920 buf_male_year=0:buf_male_year$="****"
52930 locate 1,3
52940 print "                                       "
52950 locate 1,3
52960 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
52970 goto Danjyo_Aisyou_Input_Male_Born_Year2:
52980 endif
52990 endif
53000 end select
53010 endif
53020 '-------生まれた年代　男性-------------
53030 '-------生まれた月　男性-------------
53040 '1-2:男性の生まれた月
53050 Danjyo_Aisyou_Input_Male_Born_Month:
53060 cls 3:play "":count=0:count2=0
53070 'No=-1:Okのとき
53080 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
53090 for i=0 to 1
53100 buf_male_month(i)=0
53110 next i
53120 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53130 '****************************************************************************************************
53140 'WUXG(1920x1200)の時ここから
53150 '****************************************************************************************************
53160 gload Gazo$ + "Screen1.png",0,0,0
53170 gload Gazo$ + "downscreen.png",0,0,800
53180 '****************************************************************************************************
53190 'WUXG(1920x1200)の時ここまで
53200 '****************************************************************************************************
53210 'Init"kb:4"
53220 '音声ファイル再生 2023.06.07
53230 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53240 '****************************************************************************************************
53250 'WUXG(1920x1200)の時ここから
53260 '****************************************************************************************************
53270 font 48
53280 '****************************************************************************************************
53290 'WUXG(1920x1200)の時ここまで
53300 '****************************************************************************************************
53310 locate 0,1
53320 '文字色：黒　 color rgb(0,0,0)
53330 '文字色:白
53340 color rgb(255,255,255)
53350 print "男性の生まれた月を入れて下さい" + chr$(13)
53360 '文字色:白
53370 color rgb(255,255,255)
53380 locate 1,3
53390 '文字色:白
53400 print "男性の生まれた月(1月~12月):"+buf_male_Month$
53410 color rgb(255,255,255)
53420 'locate 4,6:print ":7"
53430 'locate 9,6:print ":8"
53440 'locate 12,6:print ":9"
53450 locate 4,6
53460 '文字色:赤
53470 print ":7  :8  :9" + chr$(13)
53480 color rgb(255,255,255)
53490 locate 4,8
53500 print ":4  :5  :6" + chr$(13)
53510 color rgb(255,255,255)
53520 locate 4,10
53530 print ":1  :2  :3" + chr$(13)
53540 locate 4,12
53550 print "    :0"
53560 locate 12,12
53570 color rgb(0,0,255)
53580 print ":Ok"
53590 sp_on 4,0: sp_on 5,0:sp_on 6,0
53600 sp_on 7,0:sp_on 8,0:sp_on 9,0
53610 sp_on 10,0:sp_on 11,0:sp_on 12,0
53620 sp_on 13,0:sp_on 14,1
53630 '----------------------------------------------------------------------------------------
53640 Danjyo_Aisyou_Input_Male_Born_Month2:
53650 key$="":bg=0:y=0:y2=0:bg2=0
53660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53670 key$ = inkey$
53680 bg = strig(1)
53690 y = stick(1)
53700 y2 = stick(0)
53710 bg2 = strig(0)
53720 pause 200
53730 wend
53740 '十字キー　ここから
53750 '上の矢印　または、十字キー上
53760 if ((y = -1) or (key$ = chr$(30))) then
53770 select case No
53780 'No=-1:okのとき:初期の状態
53790 '0kボタンから３に移動
53800 '上に行く 処理
53810 case -1:
53820 No=3:sp_on 12,1:sp_on 14,0
53830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
53840 '選択肢:3
53850 '3ボタンから 6に移動
53860 case 3:
53870 No=6:sp_on 12,0:sp_on 11,1
53880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
53890 '6ボタンから ９に移動
53900 case 6:
53910 No=9:sp_on 10,1:sp_on 11,0
53920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
53930 '6ボタンから ９に移動　ここまで
53940 '9で上を押して何もしない
53950 case 9:
53960 '何もしない
53970 No=9
53980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
53990 '9で上を押しても何もしない　ここまで
54000 '上　 0ボタンから2ボタン
54010 'sp_on 6,1:1
54020 'sp_on 8,1:5
54030 'sp_on 7,1:7
54040 case 0:
54050 No=2:sp_on 13,0:sp_on 9,1:
54060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54070 '上  0ボタンから2ボタン　ここまで
54080 '2から５になる 上
54090 case 2:
54100 No=5:sp_on 8,1:sp_on 9,0:
54110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54120 case 5:
54130 No=8:sp_on 7,1:sp_on 8,0
54140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54150 case 8:
54160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54170 case 1:
54180 No=4:sp_on 5,1:sp_on 6,0
54190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54200 case 4:
54210 No=7:sp_on 4,1:sp_on 5,0
54220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54230 case 7:
54240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54250 end select
54260 endif
54270 '左３　ここまで
54280 '下の矢印
54290 '中央 2
54300 if ((y=1) or (key$ = chr$(31))) then
54310 select case No
54320 '9から６に下げる
54330 case 9:
54340 No=6:sp_on 11,1:sp_on 10,0
54350 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
54360 '6から３に下げる
54370 case 6:
54380 No=3:sp_on 12,1:sp_on 11,0
54390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54400 '3から０ｋに変える
54410 case 3:
54420 No=-1:sp_on 14,1:sp_on 12,0
54430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54440 'Okから下のボタンを押しても何もしない
54450 case -1:
54460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54470 case 8:
54480 No=5:sp_on 8,1:sp_on 7,0
54490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54500 case 5:
54510 No=2:sp_on 9,1:sp_on 8,0
54520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54530 case 2:
54540 No=0:sp_on 13,1:sp_on 9,0
54550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54560 case 0:
54570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54580 case 7:
54590 No=4:sp_on 5,1:sp_on 4,0
54600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54610 case 4:
54620 No=1:sp_on 6,1:sp_on 5,0
54630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54640 case 1:
54650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54660 end select
54670 endif
54680 '左へボタン 十字キー　左　or 　カーソル左
54690 if ((y2 = -1) or (key$ = chr$(29))) then
54700 select case No
54710 'Ok ボタン  Okから　左　０に行く
54720 case -1:
54730 No=0:sp_on 13,1:sp_on 14,0
54740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54750 '0 ボタン  左　何もしない
54760 case 0:
54770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54780 case 3:
54790 No=2:sp_on 9,1:sp_on 12,0:
54800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54810 case 2:
54820 No=1:sp_on 6,1:sp_on 9,0:
54830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54840 case 1:
54850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54860 case 6:
54870 No=5:sp_on 8,1:sp_on 11,0
54880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54890 case 5:
54900 No=4:sp_on 5,1:sp_on 8,0
54910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54920 case 4:
54930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54940 case 9:
54950 No=8:sp_on 7,1:sp_on 10,0
54960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
54970 case 8:
54980 No=7:sp_on 4,1:sp_on 7,0
54990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55000 case 7:
55010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55020 end select
55030 endif
55040 '右  十字キー　右　or カーソル　右
55050 if ((y2 = 1) or (key$ = chr$(28))) then
55060 select case No
55070 '0ボタンからokボタン右に移動
55080 case 0:
55090 No=-1:sp_on 14,1:sp_on 13,0
55100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55110 '0ボタンからokボタン 右に移動　ここまで
55120 'OKボタンで右を押して何もしない
55130 case -1:
55140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55150 case 1:
55160 No=2:sp_on 9,1:sp_on 6,0
55170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55180 case 2:
55190 No=3:sp_on 12,1:sp_on 9,0
55200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55210 case 3:
55220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55230 case 4:
55240 No=5:sp_on 8,1:sp_on 5,0
55250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55260 case 5:
55270 No=6:sp_on 11,1:sp_on 8,0
55280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55290 case 7:
55300 No=8:sp_on 7,1:sp_on 4,0
55310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55320 case 8:
55330 No=9:sp_on 10,1:sp_on 7,0
55340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55350 case 9:
55360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55370 case 6:
55380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
55390 end select
55400 'Okから右ボタンを押して何もしない ここまで
55410 endif
55420 '十字キー　ここまで
55430 '右の丸ボタン + Enter key 決定キー
55440 if ((bg=2) or (key$=chr$(13))) then
55450 select case count
55460 case 0:
55470 if (No=-1) then No=0
55480 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
55490 if (buf_male_month > 1 and buf_male_month < 10)  then
55500 buf_male_Month$ = str$(buf_male_month)
55510 'buf_month=No
55520 endif
55530 if (buf_male_month = 1)  then
55540 buf_male_Month$ = str$(buf_male_month) + "*"
55550 'c=buf_month
55560 endif
55570 locate 1,3
55580 print "                                     "
55590 color RGB(255,255,255)
55600 locate 1,3
55610 print "男性の生まれた月(1月~12月):" + buf_male_Month$
55620 goto Danjyo_Aisyou_Input_Male_Born_Month2:
55630 case 1:
55640 count = 2:
55650 'c = val(buf_Month$)
55660 if (No = -1) then
55670 'count=0
55680 No=0
55690 month=buf_male_month
55700 buf_male_month=val(buf_male_Month$)
55710 month=buf_male_month
55720 buf_Jyoushi_Born_Day(1)=month
55730 '生まれた日に飛ぶ
55740 goto Danjyo_Aisyou_Input_Male_Born_Day:
55750 else
55760 buf_male_month = c*10 + No
55770 'if (buf_month = 1) then
55780 'buf_Month$ = str$(buf_month)
55790 'endif
55800 buf_male_Month$ = str$(buf_male_month)
55810 buf_Jyoushi_Born_Day(1) = buf_male_month
55820 locate 0,3
55830 print "                                           "
55840 locate 1,3
55850 color Rgb(255,255,255)
55860 print "男性の生まれた月(1月~12月):" + buf_male_Month$
55870 goto Danjyo_Aisyou_Input_Male_Born_Month2:
55880 endif
55890 case 2:
55900 '==================================
55910 '何もしない
55920 'coun = 2
55930 '==================================
55940 'c= val(buf_Month$)
55950 'buf_month = c*10 + No
55960 'buf_Month$ = str$(buf_month)
55970 'locate 2,3
55980 'print "上司の生まれた月(1月～12月):";buf_Month$
55990 'goto Jyoushi_Input_Born_Month2:
56000 'case 3:
56010 'count=4
56020 'b=val(buf_month$)
56030 'buf_month=c*10+No
56040 'buf_Month$=str$(buf_month)
56050 'locate 2,3
56060 'print "上司の生まれた月(1月～12月):";buf_Month$
56070 'buf_month=val(buf_Month$)
56080 'year=val(buf_year$)
56090 if (No=-1) then
56100 No=0
56110 goto Danjyo_Aisyou_Input_Male_Born_Day:
56120 else
56130 goto Danjyo_Aisyou_Input_Male_Born_Day2:
56140 endif
56150 'case 4:
56160 'bufyear=buf_year
56170 'if (No=-1) then
56180 'buf_month = val(buf_Month$)
56190 'month = buf_month
56200 'sp_on 14,0
56210 'goto Input_Born_Day:
56220 'else
56230 'goto Input_Born_Month2:
56240 'endif
56250 end select
56260 endif
56270 '左の丸ボタン　キャンセル
56280 if (bg2=2) then
56290 select case count2
56300 case 0:
56310 if (No = -1) then
56320 buf_male_month=0:buf_male_Month$="**"
56330 count=0
56340 'goto rewrite2:
56350 else
56360 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
56370 buf_male_month = 0:buf_male_Month$ = "**"
56380 locate 0,3
56390 color rgb(255,255,255)
56400 print "                                       "
56410 goto rewrite2:
56420 if (No>12) then
56430 ui_msg"値が範囲外です。"
56440 goto rewrite2:
56450 endif
56460 endif
56470 endif
56480 rewrite2:
56490 locate 2,3
56500 color rgb(255,255,255)
56510 print "                                      "
56520 locate 2,3
56530 print "男性の生まれた月(1月~12月):"+buf_male_Month$
56540 goto Danjyo_Aisyou_Input_Male_Born_Month2:
56550 end select
56560 'endif
56570 endif
56580 end
56590 '-------生まれた月　男性 ここまで-------------
56600 '-------生まれた日　男性 ここから-------------
56610 Danjyo_Aisyou_Input_Male_Born_Day:
56620 cls 3:play "":count=0:count2=0
56630 'No=-1:Okのとき
56640 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
56650 for i=0 to 1
56660 buf_day(i)=0
56670 next i
56680 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56690 '****************************************************************************************************
56700 'WUXG(1920x1200)の時ここから
56710 '****************************************************************************************************
56720 gload Gazo$ + "Screen1.png",0,0,0
56730 gload Gazo$ + "downscreen.png",0,0,800
56740 '****************************************************************************************************
56750 'WUXG(1920x1200)の時ここまで
56760 '****************************************************************************************************
56770 'Init"kb:4"
56780 '音声ファイル再生 2023.06.07
56790 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
56800 font 48
56810 locate 0,1
56820 '文字色：黒　 color rgb(0,0,0)
56830 '文字色:白
56840 color rgb(255,255,255)
56850 print "男性の生まれた日を入れて下さい" + chr$(13)
56860 '文字色:白
56870 color rgb(255,255,255)
56880 locate 1,3
56890 '文字色:白
56900 print "男性の生まれた日(1月~31月):" + buf_Day$
56910 color rgb(255,255,255)
56920 'locate 4,6:print ":7"
56930 'locate 9,6:print ":8"
56940 'locate 12,6:print ":9"
56950 locate 4,6
56960 '文字色:赤
56970 print ":7  :8  :9" + chr$(13)
56980 color rgb(255,255,255)
56990 locate 4,8
57000 print ":4  :5  :6" + chr$(13)
57010 color rgb(255,255,255)
57020 locate 4,10
57030 print ":1  :2  :3" + chr$(13)
57040 locate 4,12
57050 print "    :0"
57060 locate 12,12
57070 color rgb(0,0,255)
57080 print ":Ok"
57090 sp_on 4,0: sp_on 5,0:sp_on 6,0
57100 sp_on 7,0:sp_on 8,0:sp_on 9,0
57110 sp_on 10,0:sp_on 11,0:sp_on 12,0
57120 sp_on 13,0:sp_on 14,1
57130 '-------------------------------------------------
57140 Danjyo_Aisyou_Input_Male_Born_Day2:
57150 key$="":bg=0:y=0:y2=0:bg2=0
57160 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
57170 key$ = inkey$
57180 bg = strig(1)
57190 y = stick(1)
57200 y2 = stick(0)
57210 bg2 = strig(0)
57220 pause 200
57230 wend
57240 '十字キー　ここから
57250 '上の矢印　または、十字キー上
57260 if ((y = -1) or (key$ = chr$(30))) then
57270 select case No
57280 'No=-1:okのとき:初期の状態
57290 '0kボタンから３に移動
57300 '上に行く 処理
57310 case -1:
57320 No=3:sp_on 12,1:sp_on 14,0
57330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57340 '選択肢:3
57350 '3ボタンから 6に移動
57360 case 3:
57370 No=6:sp_on 12,0:sp_on 11,1
57380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57390 '6ボタンから ９に移動
57400 case 6:
57410 No=9:sp_on 10,1:sp_on 11,0
57420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57430 '6ボタンから ９に移動　ここまで
57440 '9で上を押して何もしない
57450 case 9:
57460 '何もしない
57470 No=9
57480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57490 '9で上を押しても何もしない　ここまで
57500 '上　 0ボタンから2ボタン
57510 'sp_on 6,1:1
57520 'sp_on 8,1:5
57530 'sp_on 7,1:7
57540 case 0:
57550 No=2:sp_on 13,0:sp_on 9,1:
57560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57570 '上  0ボタンから2ボタン　ここまで
57580 '2から５になる 上
57590 case 2:
57600 No=5:sp_on 8,1:sp_on 9,0:
57610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57620 case 5:
57630 No=8:sp_on 7,1:sp_on 8,0
57640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57650 case 8:
57660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57670 case 1:
57680 No=4:sp_on 5,1:sp_on 6,0
57690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57700 case 4:
57710 No=7:sp_on 4,1:sp_on 5,0
57720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57730 case 7:
57740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57750 end select
57760 endif
57770 '左３　ここまで
57780 '下の矢印
57790 '中央 2
57800 if ((y=1) or (key$ = chr$(31))) then
57810 select case No
57820 '9から６に下げる
57830 case 9:
57840 No=6:sp_on 11,1:sp_on 10,0
57850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57860 '6から３に下げる
57870 case 6:
57880 No=3:sp_on 12,1:sp_on 11,0
57890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57900 '3から０ｋに変える
57910 case 3:
57920 No=-1:sp_on 14,1:sp_on 12,0
57930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57940 'Okから下のボタンを押しても何もしない
57950 case -1:
57960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
57970 case 8:
57980 No=5:sp_on 8,1:sp_on 7,0
57990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58000 case 5:
58010 No=2:sp_on 9,1:sp_on 8,0
58020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58030 case 2:
58040 No=0:sp_on 13,1:sp_on 9,0
58050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58060 case 0:
58070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58080 case 7:
58090 No=4:sp_on 5,1:sp_on 4,0
58100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58110 case 4:
58120 No=1:sp_on 6,1:sp_on 5,0
58130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58140 case 1:
58150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58160 end select
58170 endif
58180 '左へボタン 十字キー　左　or 　カーソル左
58190 if ((y2 = -1) or (key$ = chr$(29))) then
58200 select case No
58210 'Ok ボタン  Okから　左　０に行く
58220 case -1:
58230 No=0:sp_on 13,1:sp_on 14,0
58240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58250 '0 ボタン  左　何もしない
58260 case 0:
58270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58280 case 3:
58290 No=2:sp_on 9,1:sp_on 12,0:
58300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58310 case 2:
58320 No=1:sp_on 6,1:sp_on 9,0:
58330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58340 case 1:
58350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58360 case 6:
58370 No=5:sp_on 8,1:sp_on 11,0
58380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58390 case 5:
58400 No=4:sp_on 5,1:sp_on 8,0
58410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58420 case 4:
58430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58440 case 9:
58450 No=8:sp_on 7,1:sp_on 10,0
58460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58470 case 8:
58480 No=7:sp_on 4,1:sp_on 7,0
58490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58500 case 7:
58510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58520 end select
58530 endif
58540 '右  十字キー　右　or カーソル　右
58550 if ((y2 = 1) or (key$ = chr$(28))) then
58560 select case No
58570 '0ボタンからokボタン右に移動
58580 case 0:
58590 No=-1:sp_on 14,1:sp_on 13,0
58600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58610 '0ボタンからokボタン 右に移動　ここまで
58620 'OKボタンで右を押して何もしない
58630 case -1:
58640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58650 case 1:
58660 No=2:sp_on 9,1:sp_on 6,0
58670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58680 case 2:
58690 No=3:sp_on 12,1:sp_on 9,0
58700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58710 case 3:
58720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58730 case 4:
58740 No=5:sp_on 8,1:sp_on 5,0
58750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58760 case 5:
58770 No=6:sp_on 11,1:sp_on 8,0
58780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58790 case 7:
58800 No=8:sp_on 7,1:sp_on 4,0
58810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58820 case 8:
58830 No=9:sp_on 10,1:sp_on 7,0
58840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58850 case 9:
58860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58870 case 6:
58880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
58890 end select
58900 'Okから右ボタンを押して何もしない ここまで
58910 endif
58920 '十字キー　ここまで
58930 '右の丸ボタン + Enter key 決定キー
58940 if ((bg=2) or (key$=chr$(13))) then
58950 select case count
58960 case 0:
58970 if (No=-1) then No=0
58980 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
58990 if (buf_male_day > 1 and buf_male_day < 10)  then
59000 buf_male_Day$ = str$(buf_male_day)
59010 'buf_month=No
59020 endif
59030 if (buf_male_day = 1)  then
59040 buf_male_Day$ = str$(buf_male_day) + "*"
59050 'c=buf_month
59060 endif
59070 locate 1,3
59080 print "                                     "
59090 color RGB(255,255,255)
59100 locate 1,3
59110 print "男性の生まれた日(1月~31月):" + buf_male_Day$
59120 goto Danjyo_Aisyou_Input_Male_Born_Day2:
59130 case 1:
59140 count = 2:
59150 'c = val(buf_Month$)
59160 if (No = -1) then
59170 'count=0
59180 No=0
59190 day=buf_male_Day
59200 buf_male_Day=val(buf_male_Day$)
59210 day=buf_male_Day
59220 buf_Jyoushi_Born_Day(2)=day
59230 '生まれた日に飛ぶ
59240 goto Danjyo_Aisyou_Input_Male_Born_Day:
59250 else
59260 buf_male_Day = c*10 + No
59270 'if (buf_month = 1) then
59280 'buf_Month$ = str$(buf_month)
59290 'endif
59300 buf_male_Day$ = str$(buf_male_Day)
59310 buf_male_Born_Day(2) = buf_male_Day:
59320 locate 0,3
59330 print "                                           "
59340 locate 1,3
59350 color Rgb(255,255,255)
59360 print "男性の生まれた月(1月~12月):" + buf_male_Day$
59370 goto Danjyo_Aisyou_Input_Male_Born_Day2:
59380 endif
59390 case 2:
59400 '==================================
59410 '何もしない
59420 'coun = 2
59430 '==================================
59440 'c= val(buf_Month$)
59450 'buf_month = c*10 + No
59460 'buf_Month$ = str$(buf_month)
59470 'locate 2,3
59480 'print "上司の生まれた月(1月～12月):";buf_Month$
59490 'goto Jyoushi_Input_Born_Month2:
59500 'case 3:
59510 'count=4
59520 'b=val(buf_month$)
59530 'buf_month=c*10+No
59540 'buf_Month$=str$(buf_month)
59550 'locate 2,3
59560 'print "上司の生まれた月(1月～12月):";buf_Month$
59570 'buf_month=val(buf_Month$)
59580 'year=val(buf_year$)
59590 if (No=-1) then
59600 No=0
59610 goto Danjyo_Aisyou_Input_Male_Born_Day:
59620 else
59630 goto Danjyo_Aisyou_Input_Male_Born_Day2:
59640 endif
59650 'case 4:
59660 'bufyear=buf_year
59670 'if (No=-1) then
59680 'buf_month = val(buf_Month$)
59690 'month = buf_month
59700 'sp_on 14,0
59710 'goto Input_Born_Day:
59720 'else
59730 'goto Input_Born_Month2:
59740 'endif
59750 end select
59760 endif
59770 '左の丸ボタン　キャンセル
59780 if (bg2=2) then
59790 select case count2
59800 case 0:
59810 if (No = -1) then
59820 buf_male_day=0:buf_male_Day$="**"
59830 count=0
59840 'goto rewrite2:
59850 else
59860 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
59870 buf_male_day = 0:buf_male_Day$ = "**"
59880 locate 0,3
59890 color rgb(255,255,255)
59900 print "                                       "
59910 goto rewrite2:
59920 if (No>12) then
59930 ui_msg"値が範囲外です。"
59940 goto rewrite2:
59950 endif
59960 endif
59970 endif
59980 rewrite2:
59990 locate 2,3
60000 color rgb(255,255,255)
60010 print "                                      "
60020 locate 2,3
60030 print "男性の生まれた日(1月~31月):"+buf_male_Day$
60040 goto Danjyo_Aisyou_Input_Male_Born_Day2:
60050 end select
60060 'endif
60070 endif
60080 end
60090 '-------生まれた日　女性　ここまで-------------
60100 '1-1.女性の名前を入力
60110 Danjyo_Aisyou_Input_Name_female:
60120 No=0:color RGB(255,255,255)
60130 '入力:キーボード
60140 cls 3:init "kb:2"
60150 '****************************************************************************************************
60160 'WUXG(1920x1200)の時ここから
60170 '****************************************************************************************************
60180 gload Gazo$ + "Screen1.png",0,0,0
60190 gload Gazo$ + "downscreen.png",0,0,800
60200 '****************************************************************************************************
60210 'WUXG(1920x1200)の時ここまで
60220 '****************************************************************************************************
60230 play "":color rgb(255,0,0):female_name$ = ""
60240 locate 0,1
60250 print "女性の相性" + chr$(13) + chr$(13)
60260 color rgb(255,255,255):
60270 locate 0,3
60280 print "女性の相性を求めます。男性の名前を" + chr$(13)
60290 print "入れてください" + chr$(13)
60300 locate 0,15:color rgb(0,0,0)
60310 Input "女性の名前:",female_name$
60320 '-------------------------------------------
60330 '-------生まれた年代　女性 ここから-------------
60340 Danjyo_Aisyou_Input_feMale_Born_Year:
60350 cls 3:play "":count=0:count2=0
60360 'No=-1:Okのとき
60370 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
60380 for i=0 to 1
60390 buf_day(i)=0
60400 next i
60410 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
60420 gload Gazo$ + "Screen1.png",0,0,0
60430 gload Gazo$ + "downscreen.png",0,0,800
60440 'Init"kb:4"
60450 '音声ファイル再生 2023.06.07
60460 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
60470 '****************************************************************************************************
60480 'WUXG(1920x1200)の時ここから
60490 '****************************************************************************************************
60500 font 48
60510 '****************************************************************************************************
60520 'WUXG(1920x1200)の時ここまで
60530 '****************************************************************************************************
60540 locate 0,1
60550 '文字色：黒　 color rgb(0,0,0)
60560 '文字色:白
60570 color rgb(255,255,255)
60580 print "女性の生まれた年代を入れて下さい" + chr$(13)
60590 '文字色:白
60600 color rgb(255,255,255)
60610 locate 1,3
60620 '文字色:白
60630 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
60640 color rgb(255,255,255)
60650 'locate 4,6:print ":7"
60660 'locate 9,6:print ":8"
60670 'locate 12,6:print ":9"
60680 locate 4,6
60690 '文字色:赤
60700 print ":7  :8  :9" + chr$(13)
60710 color rgb(255,255,255)
60720 locate 4,8
60730 print ":4  :5  :6" + chr$(13)
60740 color rgb(255,255,255)
60750 locate 4,10
60760 print ":1  :2  :3" + chr$(13)
60770 locate 4,12
60780 print "    :0"
60790 locate 12,12
60800 color rgb(0,0,255)
60810 print ":Ok"
60820 sp_on 4,0: sp_on 5,0:sp_on 6,0
60830 sp_on 7,0:sp_on 8,0:sp_on 9,0
60840 sp_on 10,0:sp_on 11,0:sp_on 12,0
60850 sp_on 13,0:sp_on 14,1
60860 '---------------------------------------------
60870 Danjyo_Aisyou_Input_feMale_Born_Year2:
60880 key$="":bg=0:y=0:y2=0:bg2=0:
60890 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
60900 key$ = inkey$
60910 bg = strig(1)
60920 y = stick(1)
60930 y2 = stick(0)
60940 bg2=strig(0)
60950 pause 200
60960 wend
60970 '十字キー　ここから
60980 '上の矢印　または、十字キー上
60990 if ((y = -1) or (key$ = chr$(30))) then
61000 select case No
61010 'No=-1:okのとき:初期の状態
61020 '0kボタンから３に移動
61030 '上に行く 処理
61040 case -1:
61050 No=3:sp_on 12,1:sp_on 14,0
61060 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
61070 '選択肢:3
61080 '3ボタンから 6に移動
61090 case 3:
61100 No=6:sp_on 12,0:sp_on 11,1
61110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61120 '6ボタンから ９に移動
61130 case 6:
61140 No=9:sp_on 10,1:sp_on 11,0
61150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61160 '6ボタンから ９に移動　ここまで
61170 '9で上を押して何もしない
61180 case 9:
61190 '何もしない
61200 No=9
61210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61220 '9で上を押しても何もしない　ここまで
61230 '上　 0ボタンから2ボタン
61240 'sp_on 6,1:1
61250 'sp_on 8,1:5
61260 'sp_on 7,1:7
61270 case 0:
61280 No=2:sp_on 13,0:sp_on 9,1:
61290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61300 '上  0ボタンから2ボタン　ここまで
61310 '2から５になる 上
61320 case 2:
61330 No=5:sp_on 8,1:sp_on 9,0:
61340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61350 case 5:
61360 No=8:sp_on 7,1:sp_on 8,0
61370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61380 case 8:
61390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61400 case 1:
61410 No=4:sp_on 5,1:sp_on 6,0
61420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61430 case 4:
61440 No=7:sp_on 4,1:sp_on 5,0
61450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61460 case 7:
61470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61480 end select
61490 endif
61500 '左３　ここまで
61510 '下の矢印
61520 '中央 2
61530 if ((y=1) or (key$ = chr$(31))) then
61540 select case No
61550 '9から６に下げる
61560 case 9:
61570 No=6:sp_on 11,1:sp_on 10,0
61580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61590 '6から３に下げる
61600 case 6:
61610 No=3:sp_on 12,1:sp_on 11,0
61620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61630 '3から０ｋに変える
61640 case 3:
61650 No=-1:sp_on 14,1:sp_on 12,0
61660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61670 'Okから下のボタンを押しても何もしない
61680 case -1:
61690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61700 case 8:
61710 No=5:sp_on 8,1:sp_on 7,0
61720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61730 case 5:
61740 No=2:sp_on 9,1:sp_on 8,0
61750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61760 case 2:
61770 No=0:sp_on 13,1:sp_on 9,0
61780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61790 case 0:
61800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61810 case 7:
61820 No=4:sp_on 5,1:sp_on 4,0
61830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61840 case 4:
61850 No=1:sp_on 6,1:sp_on 5,0
61860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61870 case 1:
61880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61890 end select
61900 endif
61910 '左へボタン 十字キー　左　or 　カーソル左
61920 if ((y2 = -1) or (key$ = chr$(29))) then
61930 select case No
61940 'Ok ボタン  Okから　左　０に行く
61950 case -1:
61960 No=0:sp_on 13,1:sp_on 14,0
61970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
61980 '0 ボタン  左　何もしない
61990 case 0:
62000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62010 case 3:
62020 No=2:sp_on 9,1:sp_on 12,0:
62030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62040 case 2:
62050 No=1:sp_on 6,1:sp_on 9,0:
62060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62070 case 1:
62080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62090 case 6:
62100 No=5:sp_on 8,1:sp_on 11,0
62110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62120 case 5:
62130 No=4:sp_on 5,1:sp_on 8,0
62140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62150 case 4:
62160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62170 case 9:
62180 No=8:sp_on 7,1:sp_on 10,0
62190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62200 case 8:
62210 No=7:sp_on 4,1:sp_on 7,0
62220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62230 case 7:
62240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62250 end select
62260 endif
62270 '右  十字キー　右　or カーソル　右
62280 if ((y2 = 1) or (key$ = chr$(28))) then
62290 select case No
62300 '0ボタンからokボタン右に移動
62310 case 0:
62320 No=-1:sp_on 14,1:sp_on 13,0
62330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62340 '0ボタンからokボタン 右に移動　ここまで
62350 'OKボタンで右を押して何もしない
62360 case -1:
62370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62380 case 1:
62390 No=2:sp_on 9,1:sp_on 6,0
62400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62410 case 2:
62420 No=3:sp_on 12,1:sp_on 9,0
62430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62440 case 3:
62450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62460 case 4:
62470 No=5:sp_on 8,1:sp_on 5,0
62480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62490 case 5:
62500 No=6:sp_on 11,1:sp_on 8,0
62510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62520 case 7:
62530 No=8:sp_on 7,1:sp_on 4,0
62540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62550 case 8:
62560 No=9:sp_on 10,1:sp_on 7,0
62570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62580 case 9:
62590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62600 case 6:
62610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62620 end select
62630 'Okから右ボタンを押して何もしない ここまで
62640 endif
62650 '十字キー　ここまで
62660 '==============================
62670 'ここから
62680 '==============================
62690 if ((bg = 2) or (key$ = chr$(13))) then
62700 select case count
62710 case 0:
62720 count = 1
62730 if (No = -1) then
62740 count = 0:No=0
62750 buf_feMale_Born_Day(0) = No
62760 'Okボタンを押したとき
62770 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62780 else
62790 'Okボタン以外が押されたとき
62800 if (No >= 1 and No <= 2) then
62810 buf_female_year$="":buf_female_year$ = str$(No) + "***"
62820 buf_female_year = No:a= No
62830 buf_Jyoushi_Born_Day(0) = No
62840 locate 1,3
62850 color rgb(255,255,255)
62860 print "女性の生まれた年代(西暦4桁):";buf_female_year$
62870 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62880 else
62890 count=0
62900 ui_msg"数字が範囲外になります。"
62910 buf_female_year$="":buf_female_year=0
62920 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
62930 endif
62940 endif
62950 case 1:
62960 count = 2
62970 if (No = -1) then
62980 count = 1
62990 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63000 else
63010 buf_female_year = a * 10 + No
63020 b=buf_female_year
63030 buf_year$ = str$(buf_female_year) + "**"
63040 buf_Jyoushi_Born_Day(0)=buf_female_year
63050 locate 1,3
63060 color rgb(255,255,255)
63070 print "                                                                "
63080 locate 1,3
63090 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
63100 'if (No = -1) then
63110 'count=1
63120 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63130 endif
63140 case 2:
63150 count=3
63160 if (No=-1) then
63170 count =2
63180 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63190 else
63200 buf_female_year = b * 10 + No
63210 c=buf_female_year
63220 buf_female_year$ = str$(buf_female_year) + "*"
63230 buf_Jyoushi_Born_Day(0) = buf_female_year
63240 locate 1,3
63250 color rgb(255,255,255)
63260 print "                                        "
63270 locate 1,3
63280 print "女性の生まれた年代(西暦4桁):";buf_female_year$
63290 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63300 endif
63310 case 3:
63320 count=4
63330 if (No = -1) then
63340 No=0
63350 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63360 else
63370 buf_female_year = c * 10 + No
63380 buf_female_year$ = str$(buf_female_year)
63390 buf_Jyoushi_Born_Day(0) = buf_female_year
63400 locate 1,3
63410 color RGB(255,255,255)
63420 print "                                      "
63430 locate 1,3
63440 print "女性の生まれた年代(西暦4桁):";buf_female_year$
63450 buf_female_year=val(buf_female_year$)
63460 'year=val(buf_year$)
63470 'if (No=-1) then
63480 'goto Input_Born_Month:
63490 'else
63500 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63510 endif
63520 case 4:
63530 'bufyear=buf_year
63540 if (No=-1) then
63550 buf_female_year = val(buf_female_year$)
63560 buf_Jyoushi_Born_Day(0)=buf_female_year
63570 sp_on 14,0:No=0
63580 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63590 else
63600 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63610 endif
63620 end select
63630 endif
63640 '===========================
63650 'ここまでを部下のところにコピーする.
63660 '===========================
63670 if (bg2 = 2) then
63680 select case count2
63690 case 0:
63700 if (No = -1) then
63710 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
63720 count=0
63730 locate 1,3
63740 color rgb(255,255,255)
63750 print "                                      "
63760 locate 1,3
63770 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
63780 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63790 else
63800 '(buf_year=0) then
63810 buf_female_year=0:buf_year$="****"
63820 locate 1,3
63830 print "                                       "
63840 locate 1,3
63850 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
63860 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
63870 'endif
63880 endif
63890 end select
63900 endif
63910 '-------生まれた年代　女性 ここまで-------------
63920 '-------生まれた月　女性 ここまで--------------
63930 Danjyo_Aisyou_Input_feMale_Born_Month:
63940 cls 3:play "":count=0:count2=0
63950 'No=-1:Okのとき
63960 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
63970 for i=0 to 1
63980 buf_month(i)=0
63990 next i
64000 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
64010 '****************************************************************************************************
64020 'WUXG(1920x1200)の時ここから
64030 '****************************************************************************************************
64040 gload Gazo$ + "Screen1.png",0,0,0
64050 gload Gazo$ + "downscreen.png",0,0,800
64060 '****************************************************************************************************
64070 'WUXG(1920x1200)の時ここから
64080 '****************************************************************************************************
64090 'Init"kb:4"
64100 '音声ファイル再生 2023.06.07
64110 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
64120 font 48
64130 locate 0,1
64140 '文字色：黒　 color rgb(0,0,0)
64150 '文字色:白
64160 color rgb(255,255,255)
64170 print "女性の生まれた月を入れて下さい" + chr$(13)
64180 '文字色:白
64190 color rgb(255,255,255)
64200 locate 1,3
64210 '文字色:白
64220 print "女性の生まれた月(1月~12月):"+buf_female_Month$
64230 color rgb(255,255,255)
64240 'locate 4,6:print ":7"
64250 'locate 9,6:print ":8"
64260 'locate 12,6:print ":9"
64270 locate 4,6
64280 '文字色:赤
64290 print ":7  :8  :9" + chr$(13)
64300 color rgb(255,255,255)
64310 locate 4,8
64320 print ":4  :5  :6" + chr$(13)
64330 color rgb(255,255,255)
64340 locate 4,10
64350 print ":1  :2  :3" + chr$(13)
64360 locate 4,12
64370 print "    :0"
64380 locate 12,12
64390 color rgb(0,0,255)
64400 print ":Ok"
64410 sp_on 4,0: sp_on 5,0:sp_on 6,0
64420 sp_on 7,0:sp_on 8,0:sp_on 9,0
64430 sp_on 10,0:sp_on 11,0:sp_on 12,0
64440 sp_on 13,0:sp_on 14,1
64450 '---------------------------------------------
64460 Danjyo_Aisyou_Input_feMale_Born_Month2:
64470 key$="":bg=0:y=0:y2=0:bg2=0
64480 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
64490 key$ = inkey$
64500 bg = strig(1)
64510 y = stick(1)
64520 y2 = stick(0)
64530 bg2 = strig(0)
64540 pause 200
64550 wend
64560 '十字キー　ここから
64570 '上の矢印　または、十字キー上
64580 if ((y = -1) or (key$ = chr$(30))) then
64590 select case No
64600 'No=-1:okのとき:初期の状態
64610 '0kボタンから３に移動
64620 '上に行く 処理
64630 case -1:
64640 No=3:sp_on 12,1:sp_on 14,0
64650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64660 '選択肢:3
64670 '3ボタンから 6に移動
64680 case 3:
64690 No=6:sp_on 12,0:sp_on 11,1
64700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64710 '6ボタンから ９に移動
64720 case 6:
64730 No=9:sp_on 10,1:sp_on 11,0
64740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64750 '6ボタンから ９に移動　ここまで
64760 '9で上を押して何もしない
64770 case 9:
64780 '何もしない
64790 No=9
64800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64810 '9で上を押しても何もしない　ここまで
64820 '上　 0ボタンから2ボタン
64830 'sp_on 6,1:1
64840 'sp_on 8,1:5
64850 'sp_on 7,1:7
64860 case 0:
64870 No=2:sp_on 13,0:sp_on 9,1:
64880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64890 '上  0ボタンから2ボタン　ここまで
64900 '2から５になる 上
64910 case 2:
64920 No=5:sp_on 8,1:sp_on 9,0:
64930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64940 case 5:
64950 No=8:sp_on 7,1:sp_on 8,0
64960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64970 case 8:
64980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
64990 case 1:
65000 No=4:sp_on 5,1:sp_on 6,0
65010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65020 case 4:
65030 No=7:sp_on 4,1:sp_on 5,0
65040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65050 case 7:
65060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65070 end select
65080 endif
65090 '左３　ここまで
65100 '下の矢印
65110 '中央 2
65120 if ((y=1) or (key$ = chr$(31))) then
65130 select case No
65140 '9から６に下げる
65150 case 9:
65160 No=6:sp_on 11,1:sp_on 10,0
65170 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
65180 '6から３に下げる
65190 case 6:
65200 No=3:sp_on 12,1:sp_on 11,0
65210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65220 '3から０ｋに変える
65230 case 3:
65240 No=-1:sp_on 14,1:sp_on 12,0
65250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65260 'Okから下のボタンを押しても何もしない
65270 case -1:
65280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65290 case 8:
65300 No=5:sp_on 8,1:sp_on 7,0
65310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65320 case 5:
65330 No=2:sp_on 9,1:sp_on 8,0
65340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65350 case 2:
65360 No=0:sp_on 13,1:sp_on 9,0
65370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65380 case 0:
65390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65400 case 7:
65410 No=4:sp_on 5,1:sp_on 4,0
65420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65430 case 4:
65440 No=1:sp_on 6,1:sp_on 5,0
65450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65460 case 1:
65470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65480 end select
65490 endif
65500 '左へボタン 十字キー　左　or 　カーソル左
65510 if ((y2 = -1) or (key$ = chr$(29))) then
65520 select case No
65530 'Ok ボタン  Okから　左　０に行く
65540 case -1:
65550 No=0:sp_on 13,1:sp_on 14,0
65560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65570 '0 ボタン  左　何もしない
65580 case 0:
65590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65600 case 3:
65610 No=2:sp_on 9,1:sp_on 12,0:
65620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65630 case 2:
65640 No=1:sp_on 6,1:sp_on 9,0:
65650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65660 case 1:
65670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65680 case 6:
65690 No=5:sp_on 8,1:sp_on 11,0
65700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65710 case 5:
65720 No=4:sp_on 5,1:sp_on 8,0
65730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65740 case 4:
65750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65760 case 9:
65770 No=8:sp_on 7,1:sp_on 10,0
65780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65790 case 8:
65800 No=7:sp_on 4,1:sp_on 7,0
65810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65820 case 7:
65830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65840 end select
65850 endif
65860 '右  十字キー　右　or カーソル　右
65870 if ((y2 = 1) or (key$ = chr$(28))) then
65880 select case No
65890 '0ボタンからokボタン右に移動
65900 case 0:
65910 No=-1:sp_on 14,1:sp_on 13,0
65920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65930 '0ボタンからokボタン 右に移動　ここまで
65940 'OKボタンで右を押して何もしない
65950 case -1:
65960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
65970 case 1:
65980 No=2:sp_on 9,1:sp_on 6,0
65990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66000 case 2:
66010 No=3:sp_on 12,1:sp_on 9,0
66020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66030 case 3:
66040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66050 case 4:
66060 No=5:sp_on 8,1:sp_on 5,0
66070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66080 case 5:
66090 No=6:sp_on 11,1:sp_on 8,0
66100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66110 case 7:
66120 No=8:sp_on 7,1:sp_on 4,0
66130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66140 case 8:
66150 No=9:sp_on 10,1:sp_on 7,0
66160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66170 case 9:
66180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66190 case 6:
66200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66210 end select
66220 'Okから右ボタンを押して何もしない ここまで
66230 endif
66240 '十字キー　ここまで
66250 '右の丸ボタン + Enter key 決定キー
66260 if ((bg=2) or (key$=chr$(13))) then
66270 select case count
66280 case 0:
66290 if (No=-1) then No=0
66300 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
66310 if (buf_female_month > 1 and buf_female_month < 10)  then
66320 buf_female_Month$ = str$(buf_female_month)
66330 'buf_month=No
66340 endif
66350 if (buf_female_month = 1)  then
66360 buf_female_Month$ = str$(buf_female_month) + "*"
66370 'c=buf_month
66380 endif
66390 locate 1,3
66400 print "                                     "
66410 color RGB(255,255,255)
66420 locate 1,3
66430 print "女性の生まれた月(1月~12月):" + buf_female_Month$
66440 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66450 case 1:
66460 count = 2:
66470 'c = val(buf_Month$)
66480 if (No = -1) then
66490 'count=0
66500 No=0
66510 month=buf_female_month
66520 buf_female_month=val(buf_female_Month$)
66530 month=buf_female_month
66540 buf_Jyoushi_Born_Day(1)=month
66550 '生まれた日に飛ぶ
66560 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66570 else
66580 buf_female_month = c*10 + No
66590 'if (buf_month = 1) then
66600 'buf_Month$ = str$(buf_month)
66610 'endif
66620 buf_female_Month$ = str$(buf_female_month)
66630 buf_Jyoushi_Born_Day(1) = buf_female_month
66640 locate 0,3
66650 print "                                           "
66660 locate 1,3
66670 color Rgb(255,255,255)
66680 print "女性の生まれた月(1月~12月):" + buf_female_Month$
66690 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
66700 endif
66710 case 2:
66720 '==================================
66730 '何もしない
66740 'coun = 2
66750 '==================================
66760 'c= val(buf_Month$)
66770 'buf_month = c*10 + No
66780 'buf_Month$ = str$(buf_month)
66790 'locate 2,3
66800 'print "上司の生まれた月(1月～12月):";buf_Month$
66810 'goto Jyoushi_Input_Born_Month2:
66820 'case 3:
66830 'count=4
66840 'b=val(buf_month$)
66850 'buf_month=c*10+No
66860 'buf_Month$=str$(buf_month)
66870 'locate 2,3
66880 'print "上司の生まれた月(1月～12月):";buf_Month$
66890 'buf_month=val(buf_Month$)
66900 'year=val(buf_year$)
66910 if (No=-1) then
66920 No=0
66930 goto Danjyo_Aisyou_Input_Male_Born_Day:
66940 else
66950 goto Danjyo_Aisyou_Input_Male_Born_Day2:
66960 endif
66970 'case 4:
66980 'bufyear=buf_year
66990 'if (No=-1) then
67000 'buf_month = val(buf_Month$)
67010 'month = buf_month
67020 'sp_on 14,0
67030 'goto Input_Born_Day:
67040 'else
67050 'goto Input_Born_Month2:
67060 'endif
67070 end select
67080 endif
67090 '左の丸ボタン　キャンセル
67100 if (bg2=2) then
67110 select case count2
67120 case 0:
67130 if (No = -1) then
67140 buf_female_month=0:buf_female_Month$="**"
67150 count=0
67160 'goto rewrite2:
67170 else
67180 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
67190 buf_female_month = 0:buf_female_Month$ = "**"
67200 locate 0,3
67210 color rgb(255,255,255)
67220 print "                                       "
67230 goto rewrite2:
67240 if (No>12) then
67250 ui_msg"値が範囲外です。"
67260 goto rewrite2:
67270 endif
67280 endif
67290 endif
67300 rewrite2:
67310 locate 2,3
67320 color rgb(255,255,255)
67330 print "                                      "
67340 locate 2,3
67350 print "女性の生まれた月(1月~12月):"+buf_female_Month$
67360 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
67370 end select
67380 'endif
67390 endif
67400 end
67410 '-------生まれた月　女性 ここまで-------------
67420 '-------生まれた日　女性 ここまで-------------
67430 Danjyo_Aisyou_Input_feMale_Born_Day:
67440 cls 3:play "":count=0:count2=0
67450 'No=-1:Okのとき
67460 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
67470 for i=0 to 1
67480 buf_female_day(i)=0
67490 next i
67500 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
67510 '****************************************************************************************************
67520 'WUXG(1920x1200)の時ここから
67530 '****************************************************************************************************
67540 gload Gazo$ + "Screen1.png",0,0,0
67550 gload Gazo$ + "downscreen.png",0,0,800
67560 '****************************************************************************************************
67570 'WUXG(1920x1200)の時ここまで
67580 '****************************************************************************************************
67590 'Init"kb:4"
67600 '音声ファイル再生 2023.06.07
67610 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
67620 font 48
67630 locate 0,1
67640 '文字色：黒　 color rgb(0,0,0)
67650 '文字色:白
67660 color rgb(255,255,255)
67670 print "女性の生まれた日を入れて下さい" + chr$(13)
67680 '文字色:白
67690 color rgb(255,255,255)
67700 locate 1,3
67710 '文字色:白
67720 print "女性の生まれた日(1月~31月):" + buf_female_Day$
67730 color rgb(255,255,255)
67740 'locate 4,6:print ":7"
67750 'locate 9,6:print ":8"
67760 'locate 12,6:print ":9"
67770 locate 4,6
67780 '文字色:赤
67790 print ":7  :8  :9" + chr$(13)
67800 color rgb(255,255,255)
67810 locate 4,8
67820 print ":4  :5  :6" + chr$(13)
67830 color rgb(255,255,255)
67840 locate 4,10
67850 print ":1  :2  :3" + chr$(13)
67860 locate 4,12
67870 print "    :0"
67880 locate 12,12
67890 color rgb(0,0,255)
67900 print ":Ok"
67910 sp_on 4,0: sp_on 5,0:sp_on 6,0
67920 sp_on 7,0:sp_on 8,0:sp_on 9,0
67930 sp_on 10,0:sp_on 11,0:sp_on 12,0
67940 sp_on 13,0:sp_on 14,1
67950 '---------------------------------------------
67960 Danjyo_Aisyou_Input_feMale_Born_Day2:
67970 key$="":bg=0:y=0:y2=0:bg2=0
67980 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
67990 key$ = inkey$
68000 bg = strig(1)
68010 y = stick(1)
68020 y2 = stick(0)
68030 bg2 = strig(0)
68040 pause 200
68050 wend
68060 '十字キー　ここから
68070 '上の矢印　または、十字キー上
68080 if ((y = -1) or (key$ = chr$(30))) then
68090 select case No
68100 'No=-1:okのとき:初期の状態
68110 '0kボタンから３に移動
68120 '上に行く 処理
68130 case -1:
68140 No=3:sp_on 12,1:sp_on 14,0
68150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68160 '選択肢:3
68170 '3ボタンから 6に移動
68180 case 3:
68190 No=6:sp_on 12,0:sp_on 11,1
68200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68210 '6ボタンから ９に移動
68220 case 6:
68230 No=9:sp_on 10,1:sp_on 11,0
68240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68250 '6ボタンから ９に移動　ここまで
68260 '9で上を押して何もしない
68270 case 9:
68280 '何もしない
68290 No=9
68300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68310 '9で上を押しても何もしない　ここまで
68320 '上　 0ボタンから2ボタン
68330 'sp_on 6,1:1
68340 'sp_on 8,1:5
68350 'sp_on 7,1:7
68360 case 0:
68370 No=2:sp_on 13,0:sp_on 9,1:
68380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68390 '上  0ボタンから2ボタン　ここまで
68400 '2から５になる 上
68410 case 2:
68420 No=5:sp_on 8,1:sp_on 9,0:
68430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68440 case 5:
68450 No=8:sp_on 7,1:sp_on 8,0
68460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68470 case 8:
68480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68490 case 1:
68500 No=4:sp_on 5,1:sp_on 6,0
68510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68520 case 4:
68530 No=7:sp_on 4,1:sp_on 5,0
68540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68550 case 7:
68560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68570 end select
68580 endif
68590 '左３　ここまで
68600 '下の矢印
68610 '中央 2
68620 if ((y=1) or (key$ = chr$(31))) then
68630 select case No
68640 '9から６に下げる
68650 case 9:
68660 No=6:sp_on 11,1:sp_on 10,0
68670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68680 '6から３に下げる
68690 case 6:
68700 No=3:sp_on 12,1:sp_on 11,0
68710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68720 '3から０ｋに変える
68730 case 3:
68740 No=-1:sp_on 14,1:sp_on 12,0
68750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68760 'Okから下のボタンを押しても何もしない
68770 case -1:
68780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68790 case 8:
68800 No=5:sp_on 8,1:sp_on 7,0
68810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68820 case 5:
68830 No=2:sp_on 9,1:sp_on 8,0
68840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68850 case 2:
68860 No=0:sp_on 13,1:sp_on 9,0
68870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68880 case 0:
68890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68900 case 7:
68910 No=4:sp_on 5,1:sp_on 4,0
68920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68930 case 4:
68940 No=1:sp_on 6,1:sp_on 5,0
68950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68960 case 1:
68970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
68980 end select
68990 endif
69000 '左へボタン 十字キー　左　or 　カーソル左
69010 if ((y2 = -1) or (key$ = chr$(29))) then
69020 select case No
69030 'Ok ボタン  Okから　左　０に行く
69040 case -1:
69050 No=0:sp_on 13,1:sp_on 14,0
69060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69070 '0 ボタン  左　何もしない
69080 case 0:
69090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69100 case 3:
69110 No=2:sp_on 9,1:sp_on 12,0:
69120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69130 case 2:
69140 No=1:sp_on 6,1:sp_on 9,0:
69150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69160 case 1:
69170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69180 case 6:
69190 No=5:sp_on 8,1:sp_on 11,0
69200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69210 case 5:
69220 No=4:sp_on 5,1:sp_on 8,0
69230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69240 case 4:
69250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69260 case 9:
69270 No=8:sp_on 7,1:sp_on 10,0
69280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69290 case 8:
69300 No=7:sp_on 4,1:sp_on 7,0
69310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69320 case 7:
69330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69340 end select
69350 endif
69360 '右  十字キー　右　or カーソル　右
69370 if ((y2 = 1) or (key$ = chr$(28))) then
69380 select case No
69390 '0ボタンからokボタン右に移動
69400 case 0:
69410 No=-1:sp_on 14,1:sp_on 13,0
69420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69430 '0ボタンからokボタン 右に移動　ここまで
69440 'OKボタンで右を押して何もしない
69450 case -1:
69460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69470 case 1:
69480 No=2:sp_on 9,1:sp_on 6,0
69490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69500 case 2:
69510 No=3:sp_on 12,1:sp_on 9,0
69520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69530 case 3:
69540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69550 case 4:
69560 No=5:sp_on 8,1:sp_on 5,0
69570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69580 case 5:
69590 No=6:sp_on 11,1:sp_on 8,0
69600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69610 case 7:
69620 No=8:sp_on 7,1:sp_on 4,0
69630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69640 case 8:
69650 No=9:sp_on 10,1:sp_on 7,0
69660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69670 case 9:
69680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69690 case 6:
69700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69710 end select
69720 'Okから右ボタンを押して何もしない ここまで
69730 endif
69740 '十字キー　ここまで
69750 '右の丸ボタン + Enter key 決定キー
69760 if ((bg=2) or (key$=chr$(13))) then
69770 select case count
69780 case 0:
69790 if (No=-1) then No=0
69800 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
69810 if (buf_female_day > 1 and buf_female_day < 10)  then
69820 buf_female_Day$ = str$(buf_female_day)
69830 'buf_month=No
69840 endif
69850 if (buf_female_day = 1)  then
69860 buf_female_Day$ = str$(buf_female_day) + "*"
69870 'c=buf_month
69880 endif
69890 locate 1,3
69900 print "                                     "
69910 color RGB(255,255,255)
69920 locate 1,3
69930 print "女性の生まれた日(1月~31月):" + buf_female_Day$
69940 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
69950 case 1:
69960 count = 2:
69970 'c = val(buf_Month$)
69980 if (No = -1) then
69990 'count=0
70000 No=0
70010 day=buf_female_day
70020 buf_female_day=val(buf_female_day$)
70030 day=bu_female_day
70040 buf_female_day(1)=day
70050 '生まれた日に飛ぶ
70060 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70070 else
70080 bu_female_day = c*10 + No
70090 'if (buf_month = 1) then
70100 'buf_Month$ = str$(buf_month)
70110 'endif
70120 buf_female_day$ = str$(buf_female_day)
70130 buf_female_day(1) = buf_female_day
70140 locate 0,3
70150 print "                                           "
70160 locate 1,3
70170 color Rgb(255,255,255)
70180 print "女性の生まれた日(1月~31月):" + buf_female_Day$
70190 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70200 endif
70210 case 2:
70220 '==================================
70230 '何もしない
70240 'coun = 2
70250 '==================================
70260 'c= val(buf_Month$)
70270 'buf_month = c*10 + No
70280 'buf_Month$ = str$(buf_month)
70290 'locate 2,3
70300 'print "上司の生まれた月(1月～12月):";buf_Month$
70310 'goto Jyoushi_Input_Born_Month2:
70320 'case 3:
70330 'count=4
70340 'b=val(buf_month$)
70350 'buf_month=c*10+No
70360 'buf_Month$=str$(buf_month)
70370 'locate 2,3
70380 'print "上司の生まれた月(1月～12月):";buf_Month$
70390 'buf_month=val(buf_Month$)
70400 'year=val(buf_year$)
70410 if (No=-1) then
70420 No=0
70430 goto Danjyo_Aisyou_Input_Male_Born_Day:
70440 else
70450 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70460 endif
70470 'case 4:
70480 'bufyear=buf_year
70490 'if (No=-1) then
70500 'buf_month = val(buf_Month$)
70510 'month = buf_month
70520 'sp_on 14,0
70530 'goto Input_Born_Day:
70540 'else
70550 'goto Input_Born_Month2:
70560 'endif
70570 end select
70580 endif
70590 '左の丸ボタン　キャンセル
70600 if (bg2=2) then
70610 select case count2
70620 case 0:
70630 if (No = -1) then
70640 buf_female_day=0:buf_female_Day$="**"
70650 count=0
70660 'goto rewrite2:
70670 else
70680 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
70690 buf_female_day = 0:buf_female_Day$ = "**"
70700 locate 0,3
70710 color rgb(255,255,255)
70720 print "                                       "
70730 goto rewrite2:
70740 if (No>12) then
70750 ui_msg"値が範囲外です。"
70760 goto rewrite2:
70770 endif
70780 endif
70790 endif
70800 rewrite2:
70810 locate 2,3
70820 color rgb(255,255,255)
70830 print "                                      "
70840 locate 2,3
70850 print "女性の生まれた日(1月~31月):"+buf_female_Day$
70860 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
70870 end select
70880 'endif
70890 endif
70900 end
70910 '-------生まれた日　女性 ここまで-------------
70920 '1.男女の相性 ここまで
70930 '2.ビジネスの相性　
70940 '1.1人目のビジネスの相性　名前入力　1人目
70950 Business_Aishou_Input_1_parson:
70960 No=0:color RGB(255,255,255)
70970 cls 3:init "kb:2"
70980 '****************************************************************************************************
70990 'WUXG(1920x1200)の時ここから
71000 '****************************************************************************************************
71010 gload Gazo$ + "Screen1.png",0,0,0
71020 gload Gazo$ + "downscreen.png",0,0,800
71030 '****************************************************************************************************
71040 'WUXG(1920x1200)の時ここまで
71050 '****************************************************************************************************
71060 play "":color rgb(255,0,0):name$ = ""
71070 locate 0,1
71080 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
71090 color rgb(255,255,255):
71100 locate 0,3
71110 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
71120 print "入れてください" + chr$(13)
71130 locate 0,15:color rgb(0,0,0)
71140 Input "1人目の名前:",name$
71150 'color rgb(0,0,0)
71160 'locate 0,13:print "                                     "
71170 'locate 0,13:print "1人目の名前を入力してエンターキー":
71180 'buffer_name$(0):1人目の名前
71190 buffer_name$(0) = name$:
71200 goto Business_Aishou_Input_2_Parson:
71210 '2.2人目のビジネスの相性 名前入力 2人目
71220 Business_Aishou_Input_2_Parson:
71230 cls 3:init "kb:2":name$ = "":No=0
71240 '****************************************************************************************************
71250 'WUXG(1920x1200)の時ここから
71260 '****************************************************************************************************
71270 gload Gazo$ + "Screen1.png",0,0,0
71280 gload Gazo$ + "downscreen.png",0,0,800
71290 '****************************************************************************************************
71300 'WUXG(1920x1200)の時ここまで
71310 '****************************************************************************************************
71320 color rgb(255,0,0)
71330 'Title
71340 locate 0,1
71350 print "ビジネスの相性　2人目"
71360 locate 0,3
71370 color rgb(255,255,255)
71380 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
71390 print "入れてください" + chr$(13)
71400 locate 0,15:color rgb(0,0,0)
71410 Input "2人目の名前:",name$
71420 'color rgb(0,0,0)
71430 'locate 0,15:print "                                              "
71440 'locate 0,15:print "2人目の名前を入力してエンター ":
71450 '2人目
71460 '2人目の名前を入れるに代入
71470 buffer_name$(1) = name$:
71480 goto Select_jyoushi:
71490 '3.上司の選択
71500 Select_jyoushi:
71510 '****************************************************************************************************
71520 'WUXG(1920x1200)の時ここから
71530 '****************************************************************************************************
71540 cls 3:gload Gazo$ + "Screen1.png",0,0,0
71550 gload Gazo$ + "downscreen.png",0,0,800
71560 '****************************************************************************************************
71570 'WUXG(1920x1200)の時ここまで
71580 '****************************************************************************************************
71590 init "kb:4":No=0
71600 color rgb(0,0,255)
71610 locate 1,1
71620 print "上司の選択"
71630 color rgb(255,255,255)
71640 locate 0,4:print "名前から上司の方を選んでください"
71650 locate 0,6
71660 print " :";buffer_name$(0);"が上 司";chr$(13)
71670 locate 0,8
71680 print " :";buffer_name$(1);"が上 司";chr$(13)
71690 locate 0,15:
71700 print "                                     "
71710 locate 0,15:color rgb(0,0,0)
71720 print "上司の方を選んで右の丸ボタン"
71730 sp_on 0,1:sp_on 1,0:sp_on 2,0
71740 Select_jyoushi2:
71750 'ここでNo=0をおいてはいけない
71760 y=0:key$="":bg=0:
71770 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
71780 y = stick(1)
71790 key$ = inkey$
71800 bg = strig(1)
71810 pause 5
71820 wend
71830 '1.カーソル下の処理　or 十字キーの下処理
71840 if ((key$ = chr$(31)) or (y = 1)) then
71850 select case No
71860 case 0:
71870 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
71880 case 1:
71890 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
71900 end select
71910 endif
71920 '2.カーソル上処理　or 十字キーの上の処理
71930 if ((key$ = chr$(30)) or (y = -1)) then
71940 select case No
71950 case 0:
71960 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
71970 case 1:
71980 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
71990 end select
72000 endif
72010 if ((key$ = chr$(13)) or (bg = 2)) then
72020 select case No
72030 case 0:
72040 '上司(name1)を配列に代入
72050 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
72060 case 1:
72070 '上司（name2)を配列に代入
72080 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
72090 end select
72100 endif
72110 '3.決定ボタン　Enter or 右の丸ボタン
72120 '1.誕生日入力
72130 '1-1.生まれた年を入力
72140 'Jyoushi_born_year:
72150 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
72160 '---------------------------------------------'
72170 '誕生日入力(生れた年代)
72180 Jyoushi_Input_Seireki:
72190 'buf_Jyoushi_Born_Year:上司の生まれた年代
72200 'buf_Jyoushi_Born_Day(0) = born_year
72210 cls 3:play "":count=0:count2=0
72220 init"kb:4"
72230 'No=-1:Okのとき
72240 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
72250 for i=0 to 3
72260 buf_Jyoushi_Born_Day(i)=0
72270 next i
72280 '****************************************************************************************************
72290 'WUXG(1920x1200)の時ここから
72300 '****************************************************************************************************
72310 gload Gazo$ + "Screen2.png",0,0,0
72320 gload Gazo$ + "downscreen.png",0,0,800
72330 '****************************************************************************************************
72340 'WUXG(1920x1200)の時ここまで
72350 '****************************************************************************************************
72360 'Init"kb:2"
72370 '音声ファイル再生 2023.06.07
72380 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
72390 font 48
72400 locate 0,1
72410 '文字色：黒　 color rgb(0,0,0)
72420 color rgb(255,255,255)
72430 print "上司の生まれた年代を入れて下さい" + chr$(13)
72440 color rgb(255,255,255)
72450 locate 1,3
72460 print "上司の生まれた年代(西暦4桁):";buf_year$
72470 color rgb(255,255,255)
72480 'locate 4,6:print ":7"
72490 'locate 9,6:print ":8"
72500 'locate 12,6:print ":9"
72510 'locate 4,6
72520 'print ":7  :8  :9" + chr$(13)
72530 'color rgb(255,255,255)
72540 'locate 4,8
72550 'print ":4  :5  :6" + chr$(13)
72560 'color rgb(255,255,255)
72570 'locate 4,10
72580 'print ":1  :2  :3" + chr$(13)
72590 'locate 4,12
72600 'print "    :0"
72610 'locate 12,12
72620 'color rgb(0,0,255)
72630 'print ":Ok"
72640 sp_on 4,0: sp_on 5,0:sp_on 6,0
72650 sp_on 7,0:sp_on 8,0:sp_on 9,0
72660 sp_on 10,0:sp_on 11,0:sp_on 12,0
72670 sp_on 13,0:sp_on 14,1
72680 Jyoushi_Input_Seireki2:
72690 key$="":bg=0:y=0:y2=0:bg2=0:
72700 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72710 key$ = inkey$
72720 bg = strig(1)
72730 y = stick(1)
72740 y2 = stick(0)
72750 bg2=strig(0)
72760 pause 200
72770 wend
72780 '十字キー　ここから
72790 '上の矢印　または、十字キー上
72800 if ((y = -1) or (key$ = chr$(30))) then
72810 select case No
72820 'No=-1:okのとき:初期の状態
72830 '0kボタンから３に移動
72840 '上に行く 処理
72850 case -1:
72860 No=3:sp_on 12,1:sp_on 14,0
72870 pause 200:goto Jyoushi_Input_Seireki2:
72880 '選択肢:3
72890 '3ボタンから 6に移動
72900 case 3:
72910 No=6:sp_on 12,0:sp_on 11,1
72920 pause 200:goto Jyoushi_Input_Seireki2:
72930 '6ボタンから ９に移動
72940 case 6:
72950 No=9:sp_on 10,1:sp_on 11,0
72960 pause 200:goto Jyoushi_Input_Seireki2:
72970 '6ボタンから ９に移動　ここまで
72980 '9で上を押して何もしない
72990 case 9:
73000 '何もしない
73010 No=9
73020 pause 200:goto Jyoushi_Input_Seireki2:
73030 '9で上を押しても何もしない　ここまで
73040 '上　 0ボタンから2ボタン
73050 'sp_on 6,1:1
73060 'sp_on 8,1:5
73070 'sp_on 7,1:7
73080 case 0:
73090 No=2:sp_on 13,0:sp_on 9,1:
73100 pause 200:goto Jyoushi_Input_Seireki2:
73110 '上  0ボタンから2ボタン　ここまで
73120 '2から５になる 上
73130 case 2:
73140 No=5:sp_on 8,1:sp_on 9,0:
73150 pause 200:goto Jyoushi_Input_Seireki2:
73160 case 5:
73170 No=8:sp_on 7,1:sp_on 8,0
73180 pause 200:goto Jyoushi_Input_Seireki2:
73190 case 8:
73200 pause 200:goto Jyoushi_Input_Seireki2:
73210 case 1:
73220 No=4:sp_on 5,1:sp_on 6,0
73230 pause 200:goto Jyoushi_Input_Seireki2:
73240 case 4:
73250 No=7:sp_on 4,1:sp_on 5,0
73260 pause 200:goto Jyoushi_Input_Seireki2:
73270 case 7:
73280 pause 200:goto Jyoushi_Input_Seireki2:
73290 end select
73300 endif
73310 '左３　ここまで
73320 '下の矢印
73330 '中央 2
73340 if ((y=1) or (key$ = chr$(31))) then
73350 select case No
73360 '9から６に下げる
73370 case 9:
73380 No=6:sp_on 11,1:sp_on 10,0
73390 pause 200:goto Jyoushi_Input_Seireki2:
73400 '6から３に下げる
73410 case 6:
73420 No=3:sp_on 12,1:sp_on 11,0
73430 pause 200:goto Jyoushi_Input_Seireki2:
73440 '3から０ｋに変える
73450 case 3:
73460 No=-1:sp_on 14,1:sp_on 12,0
73470 pause 200:goto Jyoushi_Input_Seireki2:
73480 'Okから下のボタンを押しても何もしない
73490 case -1:
73500 pause 200:goto Jyoushi_Input_Seireki2:
73510 case 8:
73520 No=5:sp_on 8,1:sp_on 7,0
73530 pause 200:goto Jyoushi_Input_Seireki2:
73540 case 5:
73550 No=2:sp_on 9,1:sp_on 8,0
73560 pause 200:goto Jyoushi_Input_Seireki2:
73570 case 2:
73580 No=0:sp_on 13,1:sp_on 9,0
73590 pause 200:goto Jyoushi_Input_Seireki2:
73600 case 0:
73610 pause 200:goto Jyoushi_Input_Seireki2:
73620 case 7:
73630 No=4:sp_on 5,1:sp_on 4,0
73640 pause 200:goto Jyoushi_Input_Seireki2:
73650 case 4:
73660 No=1:sp_on 6,1:sp_on 5,0
73670 pause 200:goto Jyoushi_Input_Seireki2:
73680 case 1:
73690 pause 200:goto Jyoushi_Input_Seireki2:
73700 end select
73710 endif
73720 '左へボタン 十字キー　左　or 　カーソル左
73730 if ((y2 = -1) or (key$ = chr$(29))) then
73740 select case No
73750 'Ok ボタン  Okから　左　０に行く
73760 case -1:
73770 No=0:sp_on 13,1:sp_on 14,0
73780 pause 200:goto Jyoushi_Input_Seireki2:
73790 '0 ボタン  左　何もしない
73800 case 0:
73810 pause 200:goto Jyoushi_Input_Seireki2:
73820 case 3:
73830 No=2:sp_on 9,1:sp_on 12,0:
73840 pause 200:goto Jyoushi_Input_Seireki2:
73850 case 2:
73860 No=1:sp_on 6,1:sp_on 9,0:
73870 pause 200:goto Jyoushi_Input_Seireki2:
73880 case 1:
73890 pause 200:goto Jyoushi_Input_Seireki2:
73900 case 6:
73910 No=5:sp_on 8,1:sp_on 11,0
73920 pause 200:goto Jyoushi_Input_Seireki2:
73930 case 5:
73940 No=4:sp_on 5,1:sp_on 8,0
73950 pause 200:goto Jyoushi_Input_Seireki2:
73960 case 4:
73970 pause 200:goto Jyoushi_Input_Seireki2:
73980 case 9:
73990 No=8:sp_on 7,1:sp_on 10,0
74000 pause 200:goto Jyoushi_Input_Seireki2:
74010 case 8:
74020 No=7:sp_on 4,1:sp_on 7,0
74030 pause 200:goto Jyoushi_Input_Seireki2:
74040 case 7:
74050 pause 200:goto Jyoushi_Input_Seireki2:
74060 end select
74070 endif
74080 '右  十字キー　右　or カーソル　右
74090 if ((y2 = 1) or (key$ = chr$(28))) then
74100 select case No
74110 '0ボタンからokボタン右に移動
74120 case 0:
74130 No=-1:sp_on 14,1:sp_on 13,0
74140 pause 200:goto Jyoushi_Input_Seireki2:
74150 '0ボタンからokボタン 右に移動　ここまで
74160 'OKボタンで右を押して何もしない
74170 case -1:
74180 pause 200:goto Jyoushi_Input_Seireki2:
74190 case 1:
74200 No=2:sp_on 9,1:sp_on 6,0
74210 pause 200:goto Jyoushi_Input_Seireki2:
74220 case 2:
74230 No=3:sp_on 12,1:sp_on 9,0
74240 pause 200:goto Jyoushi_Input_Seireki2:
74250 case 3:
74260 pause 200:goto Jyoushi_Input_Seireki2:
74270 case 4:
74280 No=5:sp_on 8,1:sp_on 5,0
74290 pause 200:goto Jyoushi_Input_Seireki2:
74300 case 5:
74310 No=6:sp_on 11,1:sp_on 8,0
74320 pause 200:goto Jyoushi_Input_Seireki2:
74330 case 7:
74340 No=8:sp_on 7,1:sp_on 4,0
74350 pause 200:goto Jyoushi_Input_Seireki2:
74360 case 8:
74370 No=9:sp_on 10,1:sp_on 7,0
74380 pause 200:goto Jyoushi_Input_Seireki2:
74390 case 9:
74400 pause 200:goto Jyoushi_Input_Seireki2:
74410 case 6:
74420 pause 200:goto Jyoushi_Input_Seireki2:
74430 end select
74440 'Okから右ボタンを押して何もしない ここまで
74450 endif
74460 '十字キー　ここまで
74470 '==============================
74480 'ここから
74490 '==============================
74500 if ((bg = 2) or (key$ = chr$(13))) then
74510 select case count
74520 case 0:
74530 count = 1
74540 if (No = -1) then
74550 count = 0:No=0
74560 buf_Jyoushi_Born_Day(0) = No
74570 'Okボタンを押したとき
74580 goto Jyoushi_Input_Seireki2:
74590 else
74600 'Okボタン以外が押されたとき
74610 if (No >= 1 and No <= 2) then
74620 buf_year$="":buf_year$ = str$(No) + "***"
74630 buf_year = No:a= No
74640 buf_Jyoushi_Born_Day(0) = No
74650 locate 1,3
74660 color rgb(255,255,255)
74670 print "上司の生まれた年代(西暦4桁):";buf_year$
74680 goto Jyoushi_Input_Seireki2:
74690 else
74700 count=0
74710 ui_msg"数字が範囲外になります。"
74720 buf_year$="":buf_year=0
74730 goto Jyoushi_Input_Seireki2:
74740 endif
74750 endif
74760 case 1:
74770 count = 2
74780 if (No = -1) then
74790 count = 1
74800 goto Jyoushi_Input_Seireki2:
74810 else
74820 buf_year = a * 10 + No
74830 b=buf_year
74840 buf_year$ = str$(buf_year) + "**"
74850 buf_Jyoushi_Born_Day(0)=buf_year
74860 locate 1,3
74870 color rgb(255,255,255)
74880 print "                                                                "
74890 locate 1,3
74900 print "上司の生まれた年代(西暦4桁):" + buf_year$
74910 'if (No = -1) then
74920 'count=1
74930 goto Jyoushi_Input_Seireki2:
74940 endif
74950 case 2:
74960 count=3
74970 if (No=-1) then
74980 count =2
74990 goto Jyoushi_Input_Seireki2:
75000 else
75010 buf_year = b * 10 + No
75020 c=buf_year
75030 buf_year$ = str$(buf_year) + "*"
75040 buf_Jyoushi_Born_Day(0) = buf_year
75050 locate 1,3
75060 color rgb(255,255,255)
75070 print "                                        "
75080 locate 1,3
75090 print "上司の生まれた年代(西暦4桁):";buf_year$
75100 goto Jyoushi_Input_Seireki2:
75110 endif
75120 case 3:
75130 count=4
75140 if (No = -1) then
75150 No=0
75160 goto Jyoushi_Input_Seireki2:
75170 else
75180 buf_year = c * 10 + No
75190 buf_year$ = str$(buf_year)
75200 buf_Jyoushi_Born_Day(0) = buf_year
75210 locate 1,3
75220 color RGB(255,255,255)
75230 print "                                      "
75240 locate 1,3
75250 print "上司の生まれた年代(西暦4桁):";buf_year$
75260 buf_year=val(buf_year$)
75270 'year=val(buf_year$)
75280 'if (No=-1) then
75290 'goto Input_Born_Month:
75300 'else
75310 goto Jyoushi_Input_Seireki2:
75320 endif
75330 case 4:
75340 'bufyear=buf_year
75350 if (No=-1) then
75360 buf_year = val(buf_year$)
75370 buf_Jyoushi_Born_Day(0)=buf_year
75380 sp_on 14,0:No=0
75390 goto Jyoushi_Input_Born_Month:
75400 else
75410 goto Jyoushi_Input_Seireki2:
75420 endif
75430 end select
75440 endif
75450 '===========================
75460 'ここまでを部下のところにコピーする.
75470 '===========================
75480 if (bg2 = 2) then
75490 select case count2
75500 case 0:
75510 if (No = -1) then
75520 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
75530 count=0
75540 locate 1,3
75550 color rgb(255,255,255)
75560 print "                                      "
75570 locate 1,3
75580 print "上司の生まれた年代（西暦4桁):" + buf_year$
75590 goto Jyoushi_Input_Seireki2:
75600 else
75610 '(buf_year=0) then
75620 buf_year=0:buf_year$="****"
75630 locate 1,3
75640 print "                                       "
75650 locate 1,3
75660 print "上司の生まれた年代(西暦4桁):"+buf_year$
75670 goto Jyoushi_Input_Seireki2:
75680 'endif
75690 endif
75700 end select
75710 endif
75720 'Input"上司の生れた年代(4桁,〜2025年):",year
75730 'if year > 2025 then goto Jyoushi_Input_Seireki:
75740 'if year = 123 then cls 3:cls 4:goto Main_Screen:
75750 '"4桁目"
75760 'bufyear4 = fix(year / 1000)
75770 '"3桁目"
75780 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
75790 '"2桁目"
75800 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
75810 '"1桁目"
75820 'bufyear1 = fix((year - ((bufyear4*
75830 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
75840 '2.生まれた月を入力
75850 Jyoushi_Input_Born_Month:
75860 cls 3:play "":count=0:count2=0
75870 'No=-1:Okのとき
75880 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
75890 for i=0 to 1
75900 buf_month(i)=0
75910 next i
75920 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
75930 '****************************************************************************************************
75940 'WUXG(1920x1200)の時ここから
75950 '****************************************************************************************************
75960 gload Gazo$ + "Screen2.png",0,0,0
75970 gload Gazo$ + "downscreen.png",0,0,800
75980 '****************************************************************************************************
75990 'WUXG(1920x1200)の時ここまで
76000 '****************************************************************************************************
76010 'Init"kb:4"
76020 '音声ファイル再生 2023.06.07
76030 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
76040 font 48
76050 locate 0,1
76060 '文字色：黒　 color rgb(0,0,0)
76070 '文字色:白
76080 color rgb(255,255,255)
76090 print "上司の生まれた月を入れて下さい" + chr$(13)
76100 '文字色:白
76110 color rgb(255,255,255)
76120 locate 1,3
76130 '文字色:白
76140 print "上司の生まれた月(1月~12月):"+buf_Month$
76150 color rgb(255,255,255)
76160 'locate 4,6:print ":7"
76170 'locate 9,6:print ":8"
76180 'locate 12,6:print ":9"
76190 'locate 4,6
76200 '文字色:赤
76210 'print ":7  :8  :9" + chr$(13)
76220 'color rgb(255,255,255)
76230 'locate 4,8
76240 'print ":4  :5  :6" + chr$(13)
76250 'color rgb(255,255,255)
76260 'locate 4,10
76270 'print ":1  :2  :3" + chr$(13)
76280 'locate 4,12
76290 'print "    :0"
76300 'locate 12,12
76310 'color rgb(0,0,255)
76320 'print ":Ok"
76330 sp_on 4,0: sp_on 5,0:sp_on 6,0
76340 sp_on 7,0:sp_on 8,0:sp_on 9,0
76350 sp_on 10,0:sp_on 11,0:sp_on 12,0
76360 sp_on 13,0:sp_on 14,1
76370 Jyoushi_Input_Born_Month2:
76380 key$="":bg=0:y=0:y2=0:bg2=0
76390 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
76400 key$ = inkey$
76410 bg = strig(1)
76420 y = stick(1)
76430 y2 = stick(0)
76440 bg2 = strig(0)
76450 pause 200
76460 wend
76470 '十字キー　ここから
76480 '上の矢印　または、十字キー上
76490 if ((y = -1) or (key$ = chr$(30))) then
76500 select case No
76510 'No=-1:okのとき:初期の状態
76520 '0kボタンから３に移動
76530 '上に行く 処理
76540 case -1:
76550 No=3:sp_on 12,1:sp_on 14,0
76560 pause 200:goto Jyoushi_Input_Born_Month2:
76570 '選択肢:3
76580 '3ボタンから 6に移動
76590 case 3:
76600 No=6:sp_on 12,0:sp_on 11,1
76610 pause 200:goto Jyoushi_Input_Born_Month2:
76620 '6ボタンから ９に移動
76630 case 6:
76640 No=9:sp_on 10,1:sp_on 11,0
76650 pause 200:goto Jyoushi_Input_Born_Month2:
76660 '6ボタンから ９に移動　ここまで
76670 '9で上を押して何もしない
76680 case 9:
76690 '何もしない
76700 No=9
76710 pause 200:goto Jyoushi_Input_Born_Month2:
76720 '9で上を押しても何もしない　ここまで
76730 '上　 0ボタンから2ボタン
76740 'sp_on 6,1:1
76750 'sp_on 8,1:5
76760 'sp_on 7,1:7
76770 case 0:
76780 No=2:sp_on 13,0:sp_on 9,1:
76790 pause 200:goto Jyoushi_Input_Born_Month2:
76800 '上  0ボタンから2ボタン　ここまで
76810 '2から５になる 上
76820 case 2:
76830 No=5:sp_on 8,1:sp_on 9,0:
76840 pause 200:goto Jyoushi_Input_Born_Month2:
76850 case 5:
76860 No=8:sp_on 7,1:sp_on 8,0
76870 pause 200:goto Jyoushi_Input_Born_Month2:
76880 case 8:
76890 pause 200:goto Input_Born_Month2:
76900 case 1:
76910 No=4:sp_on 5,1:sp_on 6,0
76920 pause 200:goto Jyoushi_Input_Born_Month2:
76930 case 4:
76940 No=7:sp_on 4,1:sp_on 5,0
76950 pause 200:goto Jyoushi_Input_Born_Month2:
76960 case 7:
76970 pause 200:goto Input_Born_Month2:
76980 end select
76990 endif
77000 '左３　ここまで
77010 '下の矢印
77020 '中央 2
77030 if ((y=1) or (key$ = chr$(31))) then
77040 select case No
77050 '9から６に下げる
77060 case 9:
77070 No=6:sp_on 11,1:sp_on 10,0
77080 pause 200:goto Jyoushi_Input_Born_Month2:
77090 '6から３に下げる
77100 case 6:
77110 No=3:sp_on 12,1:sp_on 11,0
77120 pause 200:goto Jyoushi_Input_Born_Month2:
77130 '3から０ｋに変える
77140 case 3:
77150 No=-1:sp_on 14,1:sp_on 12,0
77160 pause 200:goto Jyoushi_Input_Born_Month2:
77170 'Okから下のボタンを押しても何もしない
77180 case -1:
77190 pause 200:goto Jyoushi_Input_Born_Month2:
77200 case 8:
77210 No=5:sp_on 8,1:sp_on 7,0
77220 pause 200:goto Jyoushi_Input_Born_Month2:
77230 case 5:
77240 No=2:sp_on 9,1:sp_on 8,0
77250 pause 200:goto Jyoushi_Input_Born_Month2:
77260 case 2:
77270 No=0:sp_on 13,1:sp_on 9,0
77280 pause 200:goto Jyoushi_Input_Born_Month2:
77290 case 0:
77300 pause 200:goto Jyoushi_Input_Born_Month2:
77310 case 7:
77320 No=4:sp_on 5,1:sp_on 4,0
77330 pause 200:goto Jyoushi_Input_Born_Month2:
77340 case 4:
77350 No=1:sp_on 6,1:sp_on 5,0
77360 pause 200:goto Jyoushi_Input_Born_Month2:
77370 case 1:
77380 pause 200:goto Jyoushi_Input_Born_Month2:
77390 end select
77400 endif
77410 '左へボタン 十字キー　左　or 　カーソル左
77420 if ((y2 = -1) or (key$ = chr$(29))) then
77430 select case No
77440 'Ok ボタン  Okから　左　０に行く
77450 case -1:
77460 No=0:sp_on 13,1:sp_on 14,0
77470 pause 200:goto Jyoushi_Input_Born_Month2:
77480 '0 ボタン  左　何もしない
77490 case 0:
77500 pause 200:goto Jyoushi_Input_Born_Month2:
77510 case 3:
77520 No=2:sp_on 9,1:sp_on 12,0:
77530 pause 200:goto Jyoushi_Input_Born_Month2:
77540 case 2:
77550 No=1:sp_on 6,1:sp_on 9,0:
77560 pause 200:goto Jyoushi_Input_Born_Month2:
77570 case 1:
77580 pause 200:goto Jyoushi_Input_Born_Month2:
77590 case 6:
77600 No=5:sp_on 8,1:sp_on 11,0
77610 pause 200:goto Jyoushi_Input_Born_Month2:
77620 case 5:
77630 No=4:sp_on 5,1:sp_on 8,0
77640 pause 200:goto Jyoushi_Input_Born_Month2:
77650 case 4:
77660 pause 200:goto Jyoushi_Input_Born_Month2:
77670 case 9:
77680 No=8:sp_on 7,1:sp_on 10,0
77690 pause 200:goto Input_Born_Month2:
77700 case 8:
77710 No=7:sp_on 4,1:sp_on 7,0
77720 pause 200:goto Jyoushi_Input_Born_Month2:
77730 case 7:
77740 pause 200:goto Jyoushi_Input_Born_Month2:
77750 end select
77760 endif
77770 '右  十字キー　右　or カーソル　右
77780 if ((y2 = 1) or (key$ = chr$(28))) then
77790 select case No
77800 '0ボタンからokボタン右に移動
77810 case 0:
77820 No=-1:sp_on 14,1:sp_on 13,0
77830 pause 200:goto Jyoushi_Input_Born_Month2:
77840 '0ボタンからokボタン 右に移動　ここまで
77850 'OKボタンで右を押して何もしない
77860 case -1:
77870 pause 200:goto Jyoushi_Input_Born_Month2:
77880 case 1:
77890 No=2:sp_on 9,1:sp_on 6,0
77900 pause 200:goto Jyoushi_Input_Born_Month2:
77910 case 2:
77920 No=3:sp_on 12,1:sp_on 9,0
77930 pause 200:goto Jyoushi_Input_Born_Month2:
77940 case 3:
77950 pause 200:goto Jyoushi_Input_Born_Month2:
77960 case 4:
77970 No=5:sp_on 8,1:sp_on 5,0
77980 pause 200:goto Jyoushi_Input_Born_Month2:
77990 case 5:
78000 No=6:sp_on 11,1:sp_on 8,0
78010 pause 200:goto Jyoushi_Input_Born_Month2:
78020 case 7:
78030 No=8:sp_on 7,1:sp_on 4,0
78040 pause 200:goto Jyoushi_Input_Born_Month2:
78050 case 8:
78060 No=9:sp_on 10,1:sp_on 7,0
78070 pause 200:goto Jyoushi_Input_Born_Month2:
78080 case 9:
78090 pause 200:goto Jyoushi_Input_Born_Month2:
78100 case 6:
78110 pause 200:goto Jyoushi_Input_Born_Month2:
78120 end select
78130 'Okから右ボタンを押して何もしない ここまで
78140 endif
78150 '十字キー　ここまで
78160 '右の丸ボタン + Enter key 決定キー
78170 if ((bg=2) or (key$=chr$(13))) then
78180 select case count
78190 case 0:
78200 if (No=-1) then No=0
78210 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
78220 if (buf_month > 1 and buf_month < 10)  then
78230 buf_Month$ = str$(buf_month)
78240 'buf_month=No
78250 endif
78260 if (buf_month = 1)  then
78270 buf_Month$ = str$(buf_month) + "*"
78280 'c=buf_month
78290 endif
78300 locate 1,3
78310 print "                                     "
78320 color RGB(255,255,255)
78330 locate 1,3
78340 print "上司の生まれた月(1月~12月):" + buf_Month$
78350 goto Jyoushi_Input_Born_Month2:
78360 case 1:
78370 count = 2:
78380 'c = val(buf_Month$)
78390 if (No = -1) then
78400 'count=0
78410 No=0
78420 month=buf_month
78430 buf_month=val(buf_Month$)
78440 month=buf_month
78450 buf_Jyoushi_Born_Day(1)=month
78460 '生まれた日に飛ぶ
78470 goto Jyoushi_Input_Born_Day:
78480 else
78490 buf_month = c*10 + No
78500 'if (buf_month = 1) then
78510 'buf_Month$ = str$(buf_month)
78520 'endif
78530 buf_Month$ = str$(buf_month)
78540 buf_Jyoushi_Born_Day(1) = buf_month
78550 locate 0,3
78560 print "                                           "
78570 locate 1,3
78580 color Rgb(255,255,255)
78590 print "上司の生まれた月(1月~12月):" + buf_Month$
78600 goto Jyoushi_Input_Born_Month2:
78610 endif
78620 case 2:
78630 '==================================
78640 '何もしない
78650 'coun = 2
78660 '==================================
78670 'c= val(buf_Month$)
78680 'buf_month = c*10 + No
78690 'buf_Month$ = str$(buf_month)
78700 'locate 2,3
78710 'print "上司の生まれた月(1月～12月):";buf_Month$
78720 'goto Jyoushi_Input_Born_Month2:
78730 'case 3:
78740 'count=4
78750 'b=val(buf_month$)
78760 'buf_month=c*10+No
78770 'buf_Month$=str$(buf_month)
78780 'locate 2,3
78790 'print "上司の生まれた月(1月～12月):";buf_Month$
78800 'buf_month=val(buf_Month$)
78810 'year=val(buf_year$)
78820 if (No=-1) then
78830 No=0
78840 goto Jyoushi_Input_Born_Day:
78850 else
78860 goto Jyoushi_Input_Born_Month2:
78870 endif
78880 'case 4:
78890 'bufyear=buf_year
78900 'if (No=-1) then
78910 'buf_month = val(buf_Month$)
78920 'month = buf_month
78930 'sp_on 14,0
78940 'goto Input_Born_Day:
78950 'else
78960 'goto Input_Born_Month2:
78970 'endif
78980 end select
78990 endif
79000 '左の丸ボタン　キャンセル
79010 if (bg2=2) then
79020 select case count2
79030 case 0:
79040 if (No = -1) then
79050 buf_month=0:buf_Month$="**"
79060 count=0
79070 'goto rewrite2:
79080 else
79090 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
79100 buf_month = 0:buf_Month$ = "**"
79110 locate 0,3
79120 color rgb(255,255,255)
79130 print "                                       "
79140 goto rewrite2:
79150 if (No>12) then
79160 ui_msg"値が範囲外です。"
79170 goto rewrite2:
79180 endif
79190 endif
79200 endif
79210 rewrite2:
79220 locate 2,3
79230 color rgb(255,255,255)
79240 print "                                      "
79250 locate 2,3
79260 print "上司の生まれた月(1月~12月):"+buf_Month$
79270 goto Jyoushi_Input_Born_Month2:
79280 end select
79290 'endif
79300 endif
79310 end
79320 'end
79330 '生れた日を入力
79340 Jyoushi_Input_Born_Day:
79350 '生まれた日入力
79360 cls 3:play ""
79370 'No=-1:Okのとき
79380 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
79390 for i=0 to 1
79400 buf_day(i)=0
79410 next i
79420 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
79430 '****************************************************************************************************
79440 'WUXG(1920x1200)の時ここから
79450 '****************************************************************************************************
79460 gload Gazo$ + "Screen2.png",0,0,0
79470 gload Gazo$ + "downscreen.png",0,0,800
79480 '****************************************************************************************************
79490 'WUXG(1920x1200)の時ここまで
79500 '****************************************************************************************************
79510 'Init"kb:2"
79520 '音声ファイル再生 2023.06.07
79530 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
79540 font 48
79550 locate 1,1
79560 '文字色：黒　 color rgb(0,0,0)
79570 color rgb(255,255,255)
79580 print "上司の生まれた日を入れて下さい" + chr$(13)
79590 locate 1,3
79600 color rgb(255,255,255)
79610 print "                                      "
79620 locate 1,3
79630 print "上司の生まれた日(1日~31日):"+buf_Day$
79640 color rgb(255,255,255)
79650 'locate 4,6:print ":7"
79660 'locate 9,6:print ":8"
79670 'locate 12,6:print ":9"
79680 'locate 4,6
79690 'print ":7  :8  :9" + chr$(13)
79700 'color rgb(255,255,255)
79710 'locate 4,8
79720 'print ":4  :5  :6" + chr$(13)
79730 'color rgb(255,255,255)
79740 'locate 4,10
79750 'print ":1  :2  :3" + chr$(13)
79760 'locate 4,12
79770 'print "    :0"
79780 'locate 12,12
79790 'color rgb(0,0,255)
79800 'print ":Ok"
79810 sp_on 4,0: sp_on 5,0:sp_on 6,0
79820 sp_on 7,0:sp_on 8,0:sp_on 9,0
79830 sp_on 10,0:sp_on 11,0:sp_on 12,0
79840 sp_on 13,0:sp_on 14,1
79850 Jyoushi_Input_Born_Day2:
79860 key$="":bg=0:y=0:y2=0:bg2=0:
79870 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
79880 key$ = inkey$
79890 bg = strig(1)
79900 y = stick(1)
79910 y2 = stick(0)
79920 bg2 = strig(0)
79930 pause 200
79940 wend
79950 '十字キー　ここから
79960 '上の矢印　または、十字キー上
79970 if ((y = -1) or (key$ = chr$(30))) then
79980 select case No
79990 'No=-1:okのとき:初期の状態
80000 '0kボタンから３に移動
80010 '上に行く 処理
80020 case -1:
80030 No=3:sp_on 12,1:sp_on 14,0
80040 pause 200:goto Jyoushi_Input_Born_Day2:
80050 '選択肢:3
80060 '3ボタンから 6に移動
80070 case 3:
80080 No=6:sp_on 12,0:sp_on 11,1
80090 pause 200:goto Jyoushi_Input_Born_Day2:
80100 '6ボタンから ９に移動
80110 case 6:
80120 No=9:sp_on 10,1:sp_on 11,0
80130 pause 200:goto Jyoushi_Input_Born_Day2:
80140 '6ボタンから ９に移動　ここまで
80150 '9で上を押して何もしない
80160 case 9:
80170 '何もしない
80180 No=9
80190 pause 200:goto Jyoushi_Input_Born_Day2:
80200 '9で上を押しても何もしない　ここまで
80210 '上　 0ボタンから2ボタン
80220 'sp_on 6,1:1
80230 'sp_on 8,1:5
80240 'sp_on 7,1:7
80250 case 0:
80260 No=2:sp_on 13,0:sp_on 9,1:
80270 pause 200:goto Jyoushi_Input_Born_Day2:
80280 '上  0ボタンから2ボタン　ここまで
80290 '2から５になる 上
80300 case 2:
80310 No=5:sp_on 8,1:sp_on 9,0:
80320 pause 200:goto Jyoushi_Input_Born_Day2:
80330 case 5:
80340 No=8:sp_on 7,1:sp_on 8,0
80350 pause 200:goto Jyoushi_Input_Born_Day2:
80360 case 8:
80370 pause 200:goto Jyoushi_Input_Born_Day2:
80380 case 1:
80390 No=4:sp_on 5,1:sp_on 6,0
80400 pause 200:goto Jyoushi_Input_Born_Day2:
80410 case 4:
80420 No=7:sp_on 4,1:sp_on 5,0
80430 pause 200:goto Jyoushi_Input_Born_Day2:
80440 case 7:
80450 pause 200:goto Jyoushi_Input_Born_Day2:
80460 end select
80470 endif
80480 '左３　ここまで
80490 '下の矢印
80500 '中央 2
80510 if ((y=1) or (key$ = chr$(31))) then
80520 select case No
80530 '9から６に下げる
80540 case 9:
80550 No=6:sp_on 11,1:sp_on 10,0
80560 pause 200:goto Jyoushi_Input_Born_Day2:
80570 '6から３に下げる
80580 case 6:
80590 No=3:sp_on 12,1:sp_on 11,0
80600 pause 200:goto Jyoushi_Input_Born_Day2:
80610 '3から０ｋに変える
80620 case 3:
80630 No=-1:sp_on 14,1:sp_on 12,0
80640 pause 200:goto Jyoushi_Input_Born_Day2:
80650 'Okから下のボタンを押しても何もしない
80660 case -1:
80670 pause 200:goto Jyoushi_Input_Born_Day2:
80680 case 8:
80690 No=5:sp_on 8,1:sp_on 7,0
80700 pause 200:goto Jyoushi_Input_Born_Day2:
80710 case 5:
80720 No=2:sp_on 9,1:sp_on 8,0
80730 pause 200:goto Jyoushi_Input_Born_Day2:
80740 case 2:
80750 No=0:sp_on 13,1:sp_on 9,0
80760 pause 200:goto Jyoushi_Input_Born_Day2:
80770 case 0:
80780 pause 200:goto Jyoushi_Input_Born_Day2:
80790 case 7:
80800 No=4:sp_on 5,1:sp_on 4,0
80810 pause 200:goto Jyoushi_Input_Born_Day2:
80820 case 4:
80830 No=1:sp_on 6,1:sp_on 5,0
80840 pause 200:goto Jyoushi_Input_Born_Day2:
80850 case 1:
80860 pause 200:goto Jyoushi_Input_Born_Day2:
80870 end select
80880 endif
80890 '左へボタン 十字キー　左　or 　カーソル左
80900 if ((y2 = -1) or (key$ = chr$(29))) then
80910 select case No
80920 'Ok ボタン  Okから　左　０に行く
80930 case -1:
80940 No=0:sp_on 13,1:sp_on 14,0
80950 pause 200:goto Jyoushi_Input_Born_Day2:
80960 '0 ボタン  左　何もしない
80970 case 0:
80980 pause 200:goto Jyoushi_Input_Born_Day2:
80990 case 3:
81000 No=2:sp_on 9,1:sp_on 12,0:
81010 pause 200:goto Jyoushi_Input_Born_Day2:
81020 case 2:
81030 No=1:sp_on 6,1:sp_on 9,0:
81040 pause 200:goto Jyoushi_Input_Born_Day2:
81050 case 1:
81060 pause 200:goto Jyoushi_Input_Born_Day2:
81070 case 6:
81080 No=5:sp_on 8,1:sp_on 11,0
81090 pause 200:goto Jyoushi_Input_Born_Day2:
81100 case 5:
81110 No=4:sp_on 5,1:sp_on 8,0
81120 pause 200:goto Jyoushi_Input_Born_Day2:
81130 case 4:
81140 pause 200:goto Jyoushi_Input_Born_Day2:
81150 case 9:
81160 No=8:sp_on 7,1:sp_on 10,0
81170 pause 200:goto Jyoushi_Input_Born_Day2:
81180 case 8:
81190 No=7:sp_on 4,1:sp_on 7,0
81200 pause 200:goto Jyoushi_Input_Born_Day2:
81210 case 7:
81220 pause 200:goto Jyoushi_Input_Born_Day2:
81230 end select
81240 endif
81250 '右  十字キー　右　or カーソル　右
81260 if ((y2 = 1) or (key$ = chr$(28))) then
81270 select case No
81280 '0ボタンからokボタン右に移動
81290 case 0:
81300 No=-1:sp_on 14,1:sp_on 13,0
81310 pause 200:goto Jyoushi_Input_Born_Day2:
81320 '0ボタンからokボタン 右に移動　ここまで
81330 'OKボタンで右を押して何もしない
81340 case -1:
81350 pause 200:goto Jyoushi_Input_Born_Day2:
81360 case 1:
81370 No=2:sp_on 9,1:sp_on 6,0
81380 pause 200:goto Jyoushi_Input_Born_Day2:
81390 case 2:
81400 No=3:sp_on 12,1:sp_on 9,0
81410 pause 200:goto Jyoushi_Input_Born_Day2:
81420 case 3:
81430 pause 200:goto Jyoushi_Input_Born_Day2:
81440 case 4:
81450 No=5:sp_on 8,1:sp_on 5,0
81460 pause 200:goto Jyoushi_Input_Born_Day2:
81470 case 5:
81480 No=6:sp_on 11,1:sp_on 8,0
81490 pause 200:goto Jyoushi_Input_Born_Day2:
81500 case 7:
81510 No=8:sp_on 7,1:sp_on 4,0
81520 pause 200:goto Jyoushi_Input_Born_Day2:
81530 case 8:
81540 No=9:sp_on 10,1:sp_on 7,0
81550 pause 200:goto Jyoushi_Input_Born_Day2:
81560 case 9:
81570 pause 200:goto Jyoushi_Input_Born_Day2:
81580 case 6:
81590 pause 200:goto Jyoushi_Input_Born_Day2:
81600 end select
81610 'Okから右ボタンを押して何もしない ここまで
81620 endif
81630 '十字キー　ここまで
81640 '右の丸ボタンを押したとき
81650 if ((bg = 2) or (key$ = chr$(13))) then
81660 'count :決定ボタンを押した回数
81670 select case (count)
81680 '1桁目入力
81690 case 0:
81700 count = 1:
81710 if (No = -1) then
81720 '1桁目　OKでは何もしない
81730 No=c
81740 'goto Jyoushi_Input_Born_Day2:
81750 else
81760 'ok以外のボタンを押したとき
81770 buf_day = No:buf_Day$ = str$(No)
81780 buf_Jyoushi_Born_Day(2)=buf_day
81790 c=No
81800 locate 1,3
81810 print "                                      "
81820 color RGB(255,255,255)
81830 locate 1,3
81840 print "上司の生まれた日(1日~31日):" + buf_Day$
81850 endif
81860 'check2:
81870 'if (buf_day >= 1 and buf_day <= 9) then
81880 'sp_on 14,0
81890 'goto complate_jyoushi:
81900 'else
81910 'sp_on 14,0
81920 goto Jyoushi_Input_Born_Day2:
81930 'end
81940 'endif
81950 case 1:
81960 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
81970 count = 2:
81980 'locate 2,3
81990 'color RGB(255,255,255)
82000 'print "生まれた日(1日~31日):";buf_Day$
82010 'Okボタンを押したときの処理
82020 '入力値　10未満のとき
82030 'buf_day = c * 10 + No
82040 if (No = -1) then
82050 c=buf_day:No=0
82060 'buf_day = c
82070 buf_Day$ = str$(buf_day)
82080 '10以下のとき
82090 'if (buf_day < 10) then
82100 sp_on 14,0
82110 goto complate_jyoushi:
82120 'end
82130 'endif
82140 else
82150 'c=No
82160 buf_day = c * 10 + No
82170 buf_Day$ = str$(buf_day)
82180 'buf_day = c:buf_Day$=str$(buf_day)
82190 buf_Jyoushi_Born_Day(2)=buf_day
82200 locate 1,3
82210 print "                                           "
82220 locate 1,3
82230 color Rgb(255,255,255)
82240 print "上司の生まれた日(1日~31日):" + buf_Day$
82250 goto Jyoushi_Input_Born_Day2:
82260 'goto
82270 endif
82280 'endif
82290 '生まれた日　2桁目の数字　or 1桁の数字 + ok
82300 case 2:
82310 'buf_day = c * 10 + No
82320 'buf_Jyoushi_Born_Day(2)=buf_day
82330 'locate 1,3
82340 'print "                                      "
82350 'locate 1,3
82360 'locate 2,3
82370 'print "生まれた日(1日〜31日):";buf_Day
82380 'No=-1:ok ボタンを押したとき
82390 if (No = -1) then
82400 'if ((buf_day > 0) and (buf_day < 32)) then
82410 No=0
82420 sp_on 14,0
82430 goto complate_jyoushi:
82440 'end
82450 else
82460 goto Jyoushi_Input_Born_Day2:
82470 'endif
82480 'Okボタン以外を押したとき
82490 'else
82500 'c=val(buf_Day$)
82510 'buf_day = c * 10 + No
82520 'buf_Jyoushi_Born_Day(2) = buf_day
82530 'buf_Day$ = str$(buf_day)
82540 'locate 1,3
82550 'print "上司の生まれた日(1日~31日):";buf_Day$
82560 'goto Jyoushi_Input_Born_Day2:
82570 endif
82580 'case 3:
82590 'count=4
82600 'c=val(buf_day$)
82610 'buf_day=c*10+No
82620 'buf_day$=str$(buf_day)
82630 'locate 2,3
82640 'print "生まれた日を入れてください:";buf_day$
82650 'year=val(buf_year$)
82660 'if (No = -1) then
82670 'goto Jyoushi_Input_Born_Day:
82680 'sp_on 14,0:
82690 'goto complate_jyoushi:
82700 'else
82710 'goto Jyoushi_Input_Born_Month2:
82720 'endif
82730 'case 4:
82740 'bufyear=buf_year
82750 'if (No=-1) then
82760 'buf_day = val(buf_day$)
82770 'bufday = buf_day
82780 'sp_on 14,0
82790 'goto Jyoushi_Input_Born_Day2:
82800 'else
82810 'goto Jyoushi_Input_Born_Day2:
82820 'endif
82830 end select
82840 endif
82850 if (bg2=2) then
82860 select case count2
82870 case 0:
82880 if (No=-1) then
82890 buf_day=0:buf_Day$="**":No=0
82900 if (buf_day >= 1 and buf_day <= 31) then
82910 count=0
82920 buf_day=0:buf_Day$ = "**"
82930 goto rewrite_day3:
82940 else
82950 buf_day=0:buf_Day$ = "**"
82960 ui_msg"値が範囲外です"
82970 endif
82980 goto rewrite_day3:
82990 else
83000 goto rewrite_day3:
83010 endif
83020 rewrite_day3:
83030 locate 2,3
83040 color rgb(255,255,255)
83050 print "                                      "
83060 locate 2,3
83070 print "生まれた日(1日~31日):" + buf_Day$
83080 goto Jyoushi_Input_Born_Day2:
83090 end select
83100 endif
83110 '--------------------------------------------'
83120 'locate 2,0:color rgb(255,0,0)
83130 'print "上司の生まれた年代を入力"
83140 'color rgb(255,255,255)
83150 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
83160 'locate 2,4:Input "上司の生まれた年:",born_year
83170 '誕生日データーを配列に代入
83180 'buf_Jyoushi_Born_Year:上司の生まれた年代
83190 'buf_Jyoushi_Born_Day(0) = born_year
83200 'born_year = 0
83210 '---------------------------------------------'
83220 'goto Jyoushi_born_month:
83230 '1-2.生まれた月を入力
83240 'Jyoushi_born_month:
83250 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
83260 'init "kb:4"
83270 'locate 2,1:
83280 'color rgb(255,0,0)
83290 'print "上司の生まれた月入力"
83300 'color rgb(255,255,255)
83310 'locate 2,4:print "生まれた月を入力してください"
83320 'locate 2,5
83330 'Input "上司の生まれ月:",born_month
83340 'buf_Jyoushi_Born_Day(1) = born_month
83350 'born_month = 0
83360 'goto Jyoushi_born_day:
83370 'buf_Jyoushi_Born_day
83380 '1-3.生まれた日を入力
83390 'Jyoushi_born_day:
83400 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
83410 'init "kb:4"
83420 'locate 2,1:color rgb(255,0,0)
83430 'print "上司の生まれた日　入力"
83440 'locate 2,4:color rgb(255,255,255)
83450 'print "生まれた日を入力してください"
83460 'locate 2,5
83470 'Input "上司の生まれた日:",born_day
83480 'buf_Jyoushi_Born_Day(2) = born_day
83490 'born_day = 0
83500 'goto buka_born_year:
83510 '2.部下の誕生日入力
83520 '2-1.生まれた年を入力
83530 'buka_born_year:
83540 'cls 3:gload Gazo$+"Screen1.png",0,0,0
83550 'init "kb:2"
83560 'locate 1,1:color rgb(255,0,0)
83570 'print "部下の生まれた年代入力"
83580 'locate 0,4:color rgb(255,255,255)
83590 'print "部下の生まれた年（西暦4桁）を入れてください"
83600 'locate 0,5
83610 'Input "部下の生まれた年(西暦4桁):",born_year
83620 'buf_Buka_Born_Day(0) = born_year
83630 'born_year = 0
83640 '2-2.生まれた月を入力
83650 'buka_born_month:
83660 'cls 3:gload Gazo$+"Screen1.png",0,0,0
83670 'init "kb:2"
83680 'locate 2,1:color rgb(255,0,0)
83690 'print "部下の生まれた月 入力"
83700 'locate 2,4:color rgb(255,255,255)
83710 'print "部下の生まれた月を入力してください"
83720 'locate 2,5:Input "部下の生まれた月:",born_month
83730 'buf_Buka_Born_Day(1) = born_month
83740 '2-3.生まれた日を入力
83750 'buka_born_day:
83760 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
83770 'init "kb:2"
83780 'locate 2,1:color rgb(255,0,0)
83790 'print "生まれた日入力"
83800 'color rgb(255,255,255)
83810 'locate 2,4:print "生まれた日を入力してください"
83820 'locate 2,5:Input "部下の生まれた日:",born_day
83830 'buf_Buka_Born_Day(2) = born_day
83840 'born_day=0:goto Result_Business_Aisyou:
83850 '--------------------------------------------'
83860 complate_jyoushi:
83870 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
83880 buf_Jyoushi = Kabara_Num(a,b,c)
83890 a_1=buf_Jyoushi
83900 goto Buka_Input_Seireki:
83910 '--------------------------------------------'
83920 '部下'
83930 '1.部下の生まれた年代'
83940 Buka_Input_Seireki:
83950 cls 3:play "":count=0:count2=0
83960 init"kb:4"
83970 'No=-1:Okのとき
83980 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
83990 for i=0 to 3
84000 buf_Buka_Born_Day(i)=0
84010 next i
84020 '****************************************************************************************************
84030 'WUXG(1920x1200)の時ここから
84040 '****************************************************************************************************
84050 gload Gazo$ + "Screen2.png",0,0,0
84060 gload Gazo$ + "downscreen.png",0,0,800
84070 '****************************************************************************************************
84080 'WUXG(1920x1200)の時ここまで
84090 '****************************************************************************************************
84100 'Init"kb:2"
84110 '音声ファイル再生 2023.06.07
84120 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
84130 font 48
84140 locate 0,1
84150 '文字色：黒　 color rgb(0,0,0)
84160 color rgb(255,255,255)
84170 print "部下の生まれた年代を入れて下さい" + chr$(13)
84180 color rgb(255,255,255)
84190 locate 1,3
84200 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
84210 color rgb(255,255,255)
84220 'locate 4,6:print ":7"
84230 'locate 9,6:print ":8"
84240 'locate 12,6:print ":9"
84250 'locate 4,6
84260 'print ":7  :8  :9" + chr$(13)
84270 'color rgb(255,255,255)
84280 'locate 4,8
84290 'print ":4  :5  :6" + chr$(13)
84300 'color rgb(255,255,255)
84310 'locate 4,10
84320 'print ":1  :2  :3" + chr$(13)
84330 'locate 4,12
84340 'print "    :0"
84350 'locate 12,12
84360 'color rgb(0,0,255)
84370 'print ":Ok"
84380 sp_on 4,0: sp_on 5,0:sp_on 6,0
84390 sp_on 7,0:sp_on 8,0:sp_on 9,0
84400 sp_on 10,0:sp_on 11,0:sp_on 12,0
84410 sp_on 13,0:sp_on 14,1
84420 Buka_Input_Seireki2:
84430 key$="":bg=0:y=0:y2=0:bg2=0:
84440 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
84450 key$ = inkey$
84460 bg = strig(1)
84470 y = stick(1)
84480 y2 = stick(0)
84490 bg2=strig(0)
84500 pause 200
84510 wend
84520 '十字キー　ここから
84530 '上の矢印　または、十字キー上
84540 if ((y = -1) or (key$ = chr$(30))) then
84550 select case No
84560 'No=-1:okのとき:初期の状態
84570 '0kボタンから３に移動
84580 '上に行く 処理
84590 case -1:
84600 No=3:sp_on 12,1:sp_on 14,0
84610 pause 200:goto Buka_Input_Seireki2:
84620 '選択肢:3
84630 '3ボタンから 6に移動
84640 case 3:
84650 No=6:sp_on 12,0:sp_on 11,1
84660 pause 200:goto Buka_Input_Seireki2:
84670 '6ボタンから ９に移動
84680 case 6:
84690 No=9:sp_on 10,1:sp_on 11,0
84700 pause 200:goto Buka_Input_Seireki2:
84710 '6ボタンから ９に移動　ここまで
84720 '9で上を押して何もしない
84730 case 9:
84740 '何もしない
84750 No=9
84760 pause 200:goto Buka_Input_Seireki2:
84770 '9で上を押しても何もしない　ここまで
84780 '上　 0ボタンから2ボタン
84790 'sp_on 6,1:1
84800 'sp_on 8,1:5
84810 'sp_on 7,1:7
84820 case 0:
84830 No=2:sp_on 13,0:sp_on 9,1:
84840 pause 200:goto Buka_Input_Seireki2:
84850 '上  0ボタンから2ボタン　ここまで
84860 '2から５になる 上
84870 case 2:
84880 No=5:sp_on 8,1:sp_on 9,0:
84890 pause 200:goto Buka_Input_Seireki2:
84900 case 5:
84910 No=8:sp_on 7,1:sp_on 8,0
84920 pause 200:goto Buka_Input_Seireki2:
84930 case 8:
84940 pause 200:goto Buka_Input_Seireki2:
84950 case 1:
84960 No=4:sp_on 5,1:sp_on 6,0
84970 pause 200:goto Buka_Input_Seireki2:
84980 case 4:
84990 No=7:sp_on 4,1:sp_on 5,0
85000 pause 200:goto Buka_Input_Seireki2:
85010 case 7:
85020 pause 200:goto Buka_Input_Seireki2:
85030 end select
85040 endif
85050 '左３　ここまで
85060 '下の矢印
85070 '中央 2
85080 if ((y=1) or (key$ = chr$(31))) then
85090 select case No
85100 '9から６に下げる
85110 case 9:
85120 No=6:sp_on 11,1:sp_on 10,0
85130 pause 200:goto Buka_Input_Seireki2:
85140 '6から３に下げる
85150 case 6:
85160 No=3:sp_on 12,1:sp_on 11,0
85170 pause 200:goto Buka_Input_Seireki2:
85180 '3から０ｋに変える
85190 case 3:
85200 No=-1:sp_on 14,1:sp_on 12,0
85210 pause 200:goto Buka_Input_Seireki2:
85220 'Okから下のボタンを押しても何もしない
85230 case -1:
85240 pause 200:goto Buka_Input_Seireki2:
85250 case 8:
85260 No=5:sp_on 8,1:sp_on 7,0
85270 pause 200:goto Buka_Input_Seireki2:
85280 case 5:
85290 No=2:sp_on 9,1:sp_on 8,0
85300 pause 200:goto Buka_Input_Seireki2:
85310 case 2:
85320 No=0:sp_on 13,1:sp_on 9,0
85330 pause 200:goto Buka_Input_Seireki2:
85340 case 0:
85350 pause 200:goto Buka_Input_Seireki2:
85360 case 7:
85370 No=4:sp_on 5,1:sp_on 4,0
85380 pause 200:goto Buka_Input_Seireki2:
85390 case 4:
85400 No=1:sp_on 6,1:sp_on 5,0
85410 pause 200:goto Buka_Input_Seireki2:
85420 case 1:
85430 pause 200:goto Buka_Input_Seireki2:
85440 end select
85450 endif
85460 '左へボタン 十字キー　左　or 　カーソル左
85470 if ((y2 = -1) or (key$ = chr$(29))) then
85480 select case No
85490 'Ok ボタン  Okから　左　０に行く
85500 case -1:
85510 No=0:sp_on 13,1:sp_on 14,0
85520 pause 200:goto Buka_Input_Seireki2:
85530 '0 ボタン  左　何もしない
85540 case 0:
85550 pause 200:goto Buka_Input_Seireki2:
85560 case 3:
85570 No=2:sp_on 9,1:sp_on 12,0:
85580 pause 200:goto Buka_Input_Seireki2:
85590 case 2:
85600 No=1:sp_on 6,1:sp_on 9,0:
85610 pause 200:goto Buka_Input_Seireki2:
85620 case 1:
85630 pause 200:goto Buka_Input_Seireki2:
85640 case 6:
85650 No=5:sp_on 8,1:sp_on 11,0
85660 pause 200:goto Buka_Input_Seireki2:
85670 case 5:
85680 No=4:sp_on 5,1:sp_on 8,0
85690 pause 200:goto Buka_Input_Seireki2:
85700 case 4:
85710 pause 200:goto Buka_Input_Seireki2:
85720 case 9:
85730 No=8:sp_on 7,1:sp_on 10,0
85740 pause 200:goto Buka_Input_Seireki2:
85750 case 8:
85760 No=7:sp_on 4,1:sp_on 7,0
85770 pause 200:goto Buka_Input_Seireki2:
85780 case 7:
85790 pause 200:goto Buka_Input_Seireki2:
85800 end select
85810 endif
85820 '右  十字キー　右　or カーソル　右
85830 if ((y2 = 1) or (key$ = chr$(28))) then
85840 select case No
85850 '0ボタンからokボタン右に移動
85860 case 0:
85870 No=-1:sp_on 14,1:sp_on 13,0
85880 pause 200:goto Buka_Input_Seireki2:
85890 '0ボタンからokボタン 右に移動　ここまで
85900 'OKボタンで右を押して何もしない
85910 case -1:
85920 pause 200:goto Buka_Input_Seireki2:
85930 case 1:
85940 No=2:sp_on 9,1:sp_on 6,0
85950 pause 200:goto Buka_Input_Seireki2:
85960 case 2:
85970 No=3:sp_on 12,1:sp_on 9,0
85980 pause 200:goto Buka_Input_Seireki2:
85990 case 3:
86000 pause 200:goto Buka_Input_Seireki2:
86010 case 4:
86020 No=5:sp_on 8,1:sp_on 5,0
86030 pause 200:goto Buka_Input_Seireki2:
86040 case 5:
86050 No=6:sp_on 11,1:sp_on 8,0
86060 pause 200:goto Buka_Input_Seireki2:
86070 case 7:
86080 No=8:sp_on 7,1:sp_on 4,0
86090 pause 200:goto Buka_Input_Seireki2:
86100 case 8:
86110 No=9:sp_on 10,1:sp_on 7,0
86120 pause 200:goto Buka_Input_Seireki2:
86130 case 9:
86140 pause 200:goto Buka_Input_Seireki2:
86150 case 6:
86160 pause 200:goto Buka_Input_Seireki2:
86170 end select
86180 'Okから右ボタンを押して何もしない ここまで
86190 endif
86200 '十字キー　ここまで
86210 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
86220 'ここからコメント
86230 '右の丸ボタン決定を押した数:count
86240 'if ((bg=2) or (key$=chr$(13))) then
86250 'select case count
86260 'case 0:
86270 'count=1
86280 'if (No = -1) then
86290 'count = 0
86300 'Okボタンを押したとき
86310 '
86320 'goto Buka_Input_Seireki2:
86330 'else
86340 'Okボタン以外が押されたとき
86350 'if (No >= 1 and No <= 2) then
86360 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
86370 'buf_buka_year = No
86380 'buf_Buka_Born_Day(0) = bufyear
86390 'locate 2,3
86400 'color rgb(255,255,255)
86410 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
86420 'goto Buka_Input_Seireki2:
86430 'else
86440 'count=0
86450 'ui_msg"数字が範囲外になります。"
86460 'buf_buka_year$ ="":buf_buka_year=0
86470 'goto Buka_Input_Seireki2:
86480 'endif
86490 'endif
86500 'case 1:
86510 'count = 2
86520 'if (No = -1) then
86530 'count = 1
86540 'goto Buka_Input_Seireki2:
86550 'else
86560 'b = val(buf_buka_year$)
86570 'buf_buka_year = b * 10 + No
86580 'buf_buka_year$ = str$(buf_buka_year)
86590 'buf_Buka_Born_Day(0) = bufyear
86600 'locate 1,3
86610 'color rgb(255,255,255)
86620 'print "                                                                "
86630 'locate 1,3
86640 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
86650 'if (No = -1) then
86660 'count=1
86670 'goto Buka_Input_Seireki2:
86680 'endif
86690 'case 2:
86700 'count = 3
86710 'if (No = -1) then
86720 'count = 2
86730 'buf_Buka_Born_Day(0)=bufyear
86740 'goto Buka_Input_Seireki2:
86750 'else
86760 'b = val(buf_buka_year$)
86770 'buf_buka_year = b*10 + No
86780 'buf_buka_year$ = str$(buf_buka_year)
86790 'locate 1,3
86800 'color rgb(255,255,255)
86810 'print "                                        "
86820 'locate 1,3
86830 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
86840 'goto Buka_Input_Seireki2:
86850 'endif
86860 'case 3:
86870 'count=4
86880 'if (No = -1) then
86890 'count=3
86900 'goto Buka_Input_Seireki2:
86910 'else
86920 'b = buf_buka_year
86930 'buf_buka_year = b * 10 + No
86940 'buf_buka_year$=str$(buf_buka_year)
86950 'locate 1,3
86960 'color RGB(255,255,255)
86970 'print "                                      "
86980 'locate 1,3
86990 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
87000 'buf_year=val(buf_year$)
87010 'year=val(buf_year$)
87020 'if (No=-1) then
87030 'goto Input_Born_Month:
87040 'else
87050 'goto Buka_Input_Seireki2:
87060 'endif
87070 'case 4:
87080 'bufyear=buf_year
87090 'if (No=-1) then
87100 'buf_year = val(buf_year$)
87110 'bufyear = buf_year
87120 'sp_on 14,0
87130 'goto Buka_Input_Born_Month:
87140 'else
87150 'goto Buka_Input_Seireki2:
87160 'endif
87170 'end select
87180 'endif
87190 'if (bg2 = 2) then
87200 'select case count2
87210 'case 0:
87220 'if (No = -1) then
87230 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
87240 'count=0
87250 'locate 1,3
87260 'color rgb(255,255,255)
87270 'print "                                      "
87280 'locate 1,3
87290 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
87300 'goto Buka_Input_Seireki2:
87310 'else
87320 '(buf_year=0) then
87330 'buf_buka_year=0:buf_buka_year$="****"
87340 'goto Buka_Input_Seireki2:
87350 'endif
87360 'endif
87370 'end select
87380 'endif
87390 'end
87400 'ここまでコメント
87410 '================================================================
87420 if ((bg=2) or (key$=chr$(13))) then
87430 select case count
87440 case 0:
87450 count = 1
87460 if (No=-1) then
87470 count = 0
87480 buf_Buka_Born_Day(0) = No
87490 'Okボタンを押したとき
87500 goto Buka_Input_Seireki2:
87510 else
87520 'Okボタン以外が押されたとき
87530 if (No>=1 and No<=2) then
87540 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
87550 buf_buka_year = No
87560 buf_Buka_Born_Day(0) = No
87570 locate 1,3
87580 color rgb(255,255,255)
87590 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
87600 goto Buka_Input_Seireki2:
87610 else
87620 count=0
87630 ui_msg"数字が範囲外になります。"
87640 buf_buka_year$="":buf_buka_year=0
87650 goto Buka_Input_Seireki2:
87660 endif
87670 endif
87680 case 1:
87690 count = 2
87700 if (No = -1) then
87710 count = 1
87720 goto Buka_Input_Seireki2:
87730 else
87740 'b = val(buf_buka_year$)
87750 buf_buka_year = a * 10 + No
87760 b=buf_buka_year
87770 buf_buka_year$ = str$(buf_buka_year)+"**"
87780 buf_Buka_Born_Day(0)=buf_buka_year
87790 locate 1,3
87800 color rgb(255,255,255)
87810 print "                                                                "
87820 locate 1,3
87830 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
87840 'if (No = -1) then
87850 'count=1
87860 goto Buka_Input_Seireki2:
87870 endif
87880 case 2:
87890 count=3
87900 if (No=-1) then
87910 count =2:No=0
87920 goto Buka_Input_Seireki2:
87930 else
87940 'b = val(buf_buka_year$)
87950 buf_buka_year = b * 10 + No
87960 c = buf_buka_year
87970 buf_buka_year$ = str$(buf_buka_year) + "*"
87980 buf_Buka_Born_Day(0) = buf_buka_year
87990 locate 1,3
88000 color rgb(255,255,255)
88010 print "                                        "
88020 locate 1,3
88030 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
88040 goto Buka_Input_Seireki2:
88050 endif
88060 case 3:
88070 count=4
88080 if (No = -1) then
88090 'count=3:No=0
88100 goto Buka_Input_Seireki2:
88110 else
88120 'b = val(buf_buka_year$)
88130 buf_buka_year=c * 10 + No
88140 buf_buka_year$=str$(buf_buka_year)
88150 buf_Buka_Born_Day(0)=buf_buka_year
88160 locate 1,3
88170 color RGB(255,255,255)
88180 print "                                      "
88190 locate 1,3
88200 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
88210 buf_buka_year=val(buf_buka_year$)
88220 'year=val(buf_year$)
88230 'if (No=-1) then
88240 'goto Input_Born_Month:
88250 'else
88260 goto Buka_Input_Seireki2:
88270 endif
88280 case 4:
88290 'bufyear=buf_year
88300 if (No = -1) then
88310 buf_buka_year = val(buf_buka_year$)
88320 buf_Buka_Born_Day(0)=buf_buka_year
88330 sp_on 14,0
88340 goto Buka_Input_Born_Month:
88350 else
88360 goto Buka_Input_Seireki2:
88370 endif
88380 end select
88390 endif
88400 '================================================================
88410 'ここにコピーする。
88420 '================================================================
88430 'Input"部下の生れた年代(4桁,〜2025年):",year
88440 'if year > 2025 then goto Jyoushi_Input_Seireki:
88450 'if year = 123 then cls 3:cls 4:goto Main_Screen:
88460 '"4桁目"
88470 'bufyear4 = fix(year / 1000)
88480 '"3桁目"
88490 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
88500 '"2桁目"
88510 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
88520 '"1桁目"
88530 'bufyear1 = fix((year - ((bufyear4*
88540 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
88550 '1.部下の生まれた年代'
88560 '2.部下の生まれた月'
88570 Buka_Input_Born_Month:
88580 cls 3:play "":count=0:count2=0
88590 'No=-1:Okのとき
88600 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
88610 for i=0 to 1
88620 buf_month(i)=0
88630 next i
88640 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
88650 '****************************************************************************************************
88660 'WUXG(1920x1200)の時ここから
88670 '****************************************************************************************************
88680 gload Gazo$ + "Screen2.png",0,0,0
88690 gload Gazo$ + "downscreen.png",0,0,800
88700 '****************************************************************************************************
88710 'WUXG(1920x1200)の時ここから
88720 '****************************************************************************************************
88730 'Init"kb:4"
88740 '音声ファイル再生 2023.06.07
88750 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
88760 '****************************************************************************************************
88770 'WUXG(1920x1200)の時ここから
88780 '****************************************************************************************************
88790 font 48
88800 '****************************************************************************************************
88810 'WUXG(1920x1200)の時ここまで
88820 '****************************************************************************************************
88830 locate 0,1
88840 '文字色：黒　 color rgb(0,0,0)
88850 '文字色:白
88860 color rgb(255,255,255)
88870 print "部下の生まれた月を入れて下さい" + chr$(13)
88880 '文字色:白
88890 color rgb(255,255,255)
88900 locate 1,3
88910 '文字色:白
88920 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
88930 color rgb(255,255,255)
88940 'locate 4,6:print ":7"
88950 'locate 9,6:print ":8"
88960 'locate 12,6:print ":9"
88970 'locate 4,6
88980 '文字色:赤
88990 'print ":7  :8  :9" + chr$(13)
89000 'color rgb(255,255,255)
89010 'locate 4,8
89020 'print ":4  :5  :6" + chr$(13)
89030 'color rgb(255,255,255)
89040 'locate 4,10
89050 'print ":1  :2  :3" + chr$(13)
89060 'locate 4,12
89070 'print "    :0"
89080 'locate 12,12
89090 'color rgb(0,0,255)
89100 'print ":Ok"
89110 sp_on 4,0: sp_on 5,0:sp_on 6,0
89120 sp_on 7,0:sp_on 8,0:sp_on 9,0
89130 sp_on 10,0:sp_on 11,0:sp_on 12,0
89140 sp_on 13,0:sp_on 14,1
89150 Buka_Input_Born_Month2:
89160 key$="":bg=0:y=0:y2=0:bg2=0
89170 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
89180 key$ = inkey$
89190 bg = strig(1)
89200 y = stick(1)
89210 y2 = stick(0)
89220 bg2 = strig(0)
89230 pause 200
89240 wend
89250 '十字キー　ここから
89260 '上の矢印　または、十字キー上
89270 if ((y = -1) or (key$ = chr$(30))) then
89280 select case No
89290 'No=-1:okのとき:初期の状態
89300 '0kボタンから３に移動
89310 '上に行く 処理
89320 case -1:
89330 No=3:sp_on 12,1:sp_on 14,0
89340 pause 200:goto Buka_Input_Born_Month2:
89350 '選択肢:3
89360 '3ボタンから 6に移動
89370 case 3:
89380 No=6:sp_on 12,0:sp_on 11,1
89390 pause 200:goto Buka_Input_Born_Month2:
89400 '6ボタンから ９に移動
89410 case 6:
89420 No=9:sp_on 10,1:sp_on 11,0
89430 pause 200:goto Buka_Input_Born_Month2:
89440 '6ボタンから ９に移動　ここまで
89450 '9で上を押して何もしない
89460 case 9:
89470 '何もしない
89480 No=9
89490 pause 200:goto Buka_Input_Born_Month2:
89500 '9で上を押しても何もしない　ここまで
89510 '上　 0ボタンから2ボタン
89520 'sp_on 6,1:1
89530 'sp_on 8,1:5
89540 'sp_on 7,1:7
89550 case 0:
89560 No=2:sp_on 13,0:sp_on 9,1:
89570 pause 200:goto Buka_Input_Born_Month2:
89580 '上  0ボタンから2ボタン　ここまで
89590 '2から５になる 上
89600 case 2:
89610 No=5:sp_on 8,1:sp_on 9,0:
89620 pause 200:goto Buka_Input_Born_Month2:
89630 case 5:
89640 No=8:sp_on 7,1:sp_on 8,0
89650 pause 200:goto Buka_Input_Born_Month2:
89660 case 8:
89670 pause 200:goto Buka_Input_Born_Month2:
89680 case 1:
89690 No=4:sp_on 5,1:sp_on 6,0
89700 pause 200:goto Buka_Input_Born_Month2:
89710 case 4:
89720 No=7:sp_on 4,1:sp_on 5,0
89730 pause 200:goto Buka_Input_Born_Month2:
89740 case 7:
89750 pause 200:goto Buka_Input_Born_Month2:
89760 end select
89770 endif
89780 '左３　ここまで
89790 '下の矢印
89800 '中央 2
89810 if ((y=1) or (key$ = chr$(31))) then
89820 select case No
89830 '9から６に下げる
89840 case 9:
89850 No=6:sp_on 11,1:sp_on 10,0
89860 pause 200:goto Buka_Input_Born_Month2:
89870 '6から３に下げる
89880 case 6:
89890 No=3:sp_on 12,1:sp_on 11,0
89900 pause 200:goto Buka_Input_Born_Month2:
89910 '3から０ｋに変える
89920 case 3:
89930 No=-1:sp_on 14,1:sp_on 12,0
89940 pause 200:goto Buka_Input_Born_Month2:
89950 'Okから下のボタンを押しても何もしない
89960 case -1:
89970 pause 200:goto Buka_Input_Born_Month2:
89980 case 8:
89990 No=5:sp_on 8,1:sp_on 7,0
90000 pause 200:goto Buka_Input_Born_Month2:
90010 case 5:
90020 No=2:sp_on 9,1:sp_on 8,0
90030 pause 200:goto Buka_Input_Born_Month2:
90040 case 2:
90050 No=0:sp_on 13,1:sp_on 9,0
90060 pause 200:goto Buka_Input_Born_Month2:
90070 case 0:
90080 pause 200:goto Buka_Input_Born_Month2:
90090 case 7:
90100 No=4:sp_on 5,1:sp_on 4,0
90110 pause 200:goto Buka_Input_Born_Month2:
90120 case 4:
90130 No=1:sp_on 6,1:sp_on 5,0
90140 pause 200:goto Buka_Input_Born_Month2:
90150 case 1:
90160 pause 200:goto Buka_Input_Born_Month2:
90170 end select
90180 endif
90190 '左へボタン 十字キー　左　or 　カーソル左
90200 if ((y2 = -1) or (key$ = chr$(29))) then
90210 select case No
90220 'Ok ボタン  Okから　左　０に行く
90230 case -1:
90240 No=0:sp_on 13,1:sp_on 14,0
90250 pause 200:goto Buka_Input_Born_Month2:
90260 '0 ボタン  左　何もしない
90270 case 0:
90280 pause 200:goto Buka_Input_Born_Month2:
90290 case 3:
90300 No=2:sp_on 9,1:sp_on 12,0:
90310 pause 200:goto Buka_Input_Born_Month2:
90320 case 2:
90330 No=1:sp_on 6,1:sp_on 9,0:
90340 pause 200:goto Buka_Input_Born_Month2:
90350 case 1:
90360 pause 200:goto Buka_Input_Born_Month2:
90370 case 6:
90380 No=5:sp_on 8,1:sp_on 11,0
90390 pause 200:goto Buka_Input_Born_Month2:
90400 case 5:
90410 No=4:sp_on 5,1:sp_on 8,0
90420 pause 200:goto Buka_Input_Born_Month2:
90430 case 4:
90440 pause 200:goto Buka_Input_Born_Month2:
90450 case 9:
90460 No=8:sp_on 7,1:sp_on 10,0
90470 pause 200:goto Buka_Input_Born_Month2:
90480 case 8:
90490 No=7:sp_on 4,1:sp_on 7,0
90500 pause 200:goto Buka_Input_Born_Month2:
90510 case 7:
90520 pause 200:goto Buka_Input_Born_Month2:
90530 end select
90540 endif
90550 '右  十字キー　右　or カーソル　右
90560 if ((y2 = 1) or (key$ = chr$(28))) then
90570 select case No
90580 '0ボタンからokボタン右に移動
90590 case 0:
90600 No=-1:sp_on 14,1:sp_on 13,0
90610 pause 200:goto Buka_Input_Born_Month2:
90620 '0ボタンからokボタン 右に移動　ここまで
90630 'OKボタンで右を押して何もしない
90640 case -1:
90650 pause 200:goto Buka_Input_Born_Month2:
90660 case 1:
90670 No=2:sp_on 9,1:sp_on 6,0
90680 pause 200:goto Buka_Input_Born_Month2:
90690 case 2:
90700 No=3:sp_on 12,1:sp_on 9,0
90710 pause 200:goto Buka_Input_Born_Month2:
90720 case 3:
90730 pause 200:goto Buka_Input_Born_Month2:
90740 case 4:
90750 No=5:sp_on 8,1:sp_on 5,0
90760 pause 200:goto Buka_Input_Born_Month2:
90770 case 5:
90780 No=6:sp_on 11,1:sp_on 8,0
90790 pause 200:goto Buka_Input_Born_Month2:
90800 case 7:
90810 No=8:sp_on 7,1:sp_on 4,0
90820 pause 200:goto Buka_Input_Born_Month2:
90830 case 8:
90840 No=9:sp_on 10,1:sp_on 7,0
90850 pause 200:goto Buka_Input_Born_Month2:
90860 case 9:
90870 pause 200:goto Buka_Input_Born_Month2:
90880 case 6:
90890 pause 200:goto Buka_Input_Born_Month2:
90900 end select
90910 'Okから右ボタンを押して何もしない ここまで
90920 endif
90930 '十字キー　ここまで
90940 '右の丸ボタン　決定キー
90950 if ((bg=2) or (key$=chr$(13))) then
90960 select case count
90970 case 0:
90980 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
90990 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
91000 locate 1,3
91010 color RGB(255,255,255)
91020 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
91030 goto Buka_Input_Born_Month2:
91040 case 1:
91050 count = 2:buf_buka_month=a*10+No
91060 if (No = -1) then
91070 'count=0
91080 month=buf_buka_month
91090 buf_buka_month=val(buf_buka_Month$)
91100 month=buf_buka_month
91110 '生まれた日に飛ぶ
91120 goto Buka_Input_Born_Day:
91130 else
91140 buf_buka_month = a * 10 + No
91150 buf_buka_Month$ = str$(buf_buka_month)
91160 buf_Buka_Born_Day(1) = buf_buka_month
91170 locate 1,3
91180 color Rgb(255,255,255)
91190 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
91200 goto Buka_Input_Born_Month2:
91210 endif
91220 case 2:
91230 count=3
91240 'c= val(buf_Month$)
91250 'buf_month = c*10 + No
91260 'buf_Month$ = str$(buf_month)
91270 'locate 2,3
91280 'print "部下の生まれた月(1月～12月):";buf_Month$
91290 'goto Buka_Input_Born_Month2:
91300 'case 3:
91310 'count=4
91320 'b=val(buf_month$)
91330 'buf_month=c*10+No
91340 'buf_Month$=str$(buf_month)
91350 'locate 2,3
91360 'print "部下の生まれた月(1月～12月):";buf_Month$
91370 'buf_month=val(buf_Month$)
91380 'year=val(buf_year$)
91390 if (No=-1) then
91400 goto Buka_Input_Born_Day:
91410 else
91420 goto Input_Born_Month2:
91430 endif
91440 'case 4:
91450 'bufyear=buf_year
91460 'if (No=-1) then
91470 'buf_month = val(buf_Month$)
91480 'month = buf_month
91490 'sp_on 14,0
91500 'goto Input_Born_Day:
91510 'else
91520 'goto Input_Born_Month2:
91530 'endif
91540 end select
91550 endif
91560 '左の丸ボタン　キャンセル
91570 if (bg2=2) then
91580 select case count2
91590 case 0:
91600 if (No = -1) then
91610 buf_buka_month=0:buf_buka_Month$="**"
91620 count=0
91630 goto rewrite2:
91640 else
91650 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
91660 buf_month=0:buf_Month$="**"
91670 locate 2,3
91680 color rgb(255,255,255)
91690 print "                                       "
91700 goto rewrite2:
91710 if (No>12) then
91720 ui_msg"値が範囲外です。"
91730 goto rewrite2:
91740 endif
91750 endif
91760 endif
91770 rewrite2:
91780 locate 2,3
91790 color rgb(255,255,255)
91800 print "                                      "
91810 locate 2,3
91820 print "部下の生まれた月(1月~12月):";buf_buka_Month$
91830 goto Buka_Input_Born_Month2:
91840 end select
91850 'endif
91860 endif
91870 end
91880 '2.部下の生まれた月'
91890 '3.部下の生まれた日'
91900 '生れた日を入力
91910 Buka_Input_Born_Day:
91920 '生まれた日入力
91930 cls 3:play ""
91940 'No=-1:Okのとき
91950 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
91960 for i=0 to 1
91970 buf_day(i)=0
91980 next i
91990 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
92000 '****************************************************************************************************
92010 'WUXG(1920x1200)の時ここから
92020 '****************************************************************************************************
92030 gload Gazo$ + "Screen2.png",0,0,0
92040 gload Gazo$ + "downscreen.png",0,0,800
92050 '****************************************************************************************************
92060 'WUXG(1920x1200)の時ここまで
92070 '****************************************************************************************************
92080 'Init"kb:2"
92090 '音声ファイル再生 2023.06.07
92100 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
92110 font 48
92120 locate 0,1
92130 '文字色：黒　 color rgb(0,0,0)
92140 color rgb(255,255,255)
92150 print "部下の生まれた日を入れて下さい" + chr$(13)
92160 color rgb(255,255,255)
92170 locate 1,3
92180 print "部下の生まれた日(1日~31日):";buf_Day$
92190 color rgb(255,255,255)
92200 'locate 4,6:print ":7"
92210 'locate 9,6:print ":8"
92220 'locate 12,6:print ":9"
92230 'locate 4,6
92240 'print ":7  :8  :9" + chr$(13)
92250 'color rgb(255,255,255)
92260 'locate 4,8
92270 'print ":4  :5  :6" + chr$(13)
92280 'color rgb(255,255,255)
92290 'locate 4,10
92300 'print ":1  :2  :3" + chr$(13)
92310 'locate 4,12
92320 'print "    :0"
92330 'locate 12,12
92340 'color rgb(0,0,255)
92350 'print ":Ok"
92360 sp_on 4,0: sp_on 5,0:sp_on 6,0
92370 sp_on 7,0:sp_on 8,0:sp_on 9,0
92380 sp_on 10,0:sp_on 11,0:sp_on 12,0
92390 sp_on 13,0:sp_on 14,1
92400 Buka_Input_Born_Day2:
92410 '
92420 key$="":bg=0:y=0:y2=0:bg2=0
92430 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
92440 key$ = inkey$
92450 bg = strig(1)
92460 y = stick(1)
92470 y2 = stick(0)
92480 bg2 = strig(0)
92490 pause 200
92500 wend
92510 '十字キー　ここから
92520 '上の矢印　または、十字キー上
92530 if ((y = -1) or (key$ = chr$(30))) then
92540 select case No
92550 'No=-1:okのとき:初期の状態
92560 '0kボタンから３に移動
92570 '上に行く 処理
92580 case -1:
92590 No=3:sp_on 12,1:sp_on 14,0
92600 pause 200:goto Buka_Input_Born_Day2:
92610 '選択肢:3
92620 '3ボタンから 6に移動
92630 case 3:
92640 No=6:sp_on 12,0:sp_on 11,1
92650 pause 200:goto Buka_Input_Born_Day2:
92660 '6ボタンから ９に移動
92670 case 6:
92680 No=9:sp_on 10,1:sp_on 11,0
92690 pause 200:goto Buka_Input_Born_Day2:
92700 '6ボタンから ９に移動　ここまで
92710 '9で上を押して何もしない
92720 case 9:
92730 '何もしない
92740 No=9
92750 pause 200:goto Buka_Input_Born_Day2:
92760 '9で上を押しても何もしない　ここまで
92770 '上　 0ボタンから2ボタン
92780 'sp_on 6,1:1
92790 'sp_on 8,1:5
92800 'sp_on 7,1:7
92810 case 0:
92820 No=2:sp_on 13,0:sp_on 9,1:
92830 pause 200:goto Buka_Input_Born_Day2:
92840 '上  0ボタンから2ボタン　ここまで
92850 '2から５になる 上
92860 case 2:
92870 No=5:sp_on 8,1:sp_on 9,0:
92880 pause 200:goto Buka_Input_Born_Day2:
92890 case 5:
92900 No=8:sp_on 7,1:sp_on 8,0
92910 pause 200:goto Buka_Input_Born_Day2:
92920 case 8:
92930 pause 200:goto Buka_Input_Born_Day2:
92940 case 1:
92950 No=4:sp_on 5,1:sp_on 6,0
92960 pause 200:goto Buka_Input_Born_Day2:
92970 case 4:
92980 No=7:sp_on 4,1:sp_on 5,0
92990 pause 200:goto Buka_Input_Born_Day2:
93000 case 7:
93010 pause 200:goto Buka_Input_Born_Day2:
93020 end select
93030 endif
93040 '左３　ここまで
93050 '下の矢印
93060 '中央 2
93070 if ((y=1) or (key$ = chr$(31))) then
93080 select case No
93090 '9から６に下げる
93100 case 9:
93110 No=6:sp_on 11,1:sp_on 10,0
93120 pause 200:goto Buka_Input_Born_Day2:
93130 '6から３に下げる
93140 case 6:
93150 No=3:sp_on 12,1:sp_on 11,0
93160 pause 200:goto Buka_Input_Born_Day2:
93170 '3から０ｋに変える
93180 case 3:
93190 No=-1:sp_on 14,1:sp_on 12,0
93200 pause 200:goto Buka_Input_Born_Day2:
93210 'Okから下のボタンを押しても何もしない
93220 case -1:
93230 pause 200:goto Buka_Input_Born_Day2:
93240 case 8:
93250 No=5:sp_on 8,1:sp_on 7,0
93260 pause 200:goto Buka_Input_Born_Day2:
93270 case 5:
93280 No=2:sp_on 9,1:sp_on 8,0
93290 pause 200:goto Buka_Input_Born_Day2:
93300 case 2:
93310 No=0:sp_on 13,1:sp_on 9,0
93320 pause 200:goto Buka_Input_Born_Day2:
93330 case 0:
93340 pause 200:goto Buka_Input_Born_Day2:
93350 case 7:
93360 No=4:sp_on 5,1:sp_on 4,0
93370 pause 200:goto Buka_Input_Born_Day2:
93380 case 4:
93390 No=1:sp_on 6,1:sp_on 5,0
93400 pause 200:goto Buka_Input_Born_Day2:
93410 case 1:
93420 pause 200:goto Buka_Input_Born_Day2:
93430 end select
93440 endif
93450 '左へボタン 十字キー　左　or 　カーソル左
93460 if ((y2 = -1) or (key$ = chr$(29))) then
93470 select case No
93480 'Ok ボタン  Okから　左　０に行く
93490 case -1:
93500 No=0:sp_on 13,1:sp_on 14,0
93510 pause 200:goto Buka_Input_Born_Day2:
93520 '0 ボタン  左　何もしない
93530 case 0:
93540 pause 200:goto Buka_Input_Born_Day2:
93550 case 3:
93560 No=2:sp_on 9,1:sp_on 12,0:
93570 pause 200:goto Buka_Input_Born_Day2:
93580 case 2:
93590 No=1:sp_on 6,1:sp_on 9,0:
93600 pause 200:goto Buka_Input_Born_Day2:
93610 case 1:
93620 pause 200:goto Buka_Input_Born_Day2:
93630 case 6:
93640 No=5:sp_on 8,1:sp_on 11,0
93650 pause 200:goto Buka_Input_Born_Day2:
93660 case 5:
93670 No=4:sp_on 5,1:sp_on 8,0
93680 pause 200:goto Buka_Input_Born_Day2:
93690 case 4:
93700 pause 200:goto Buka_Input_Born_Day2:
93710 case 9:
93720 No=8:sp_on 7,1:sp_on 10,0
93730 pause 200:goto Buka_Input_Born_Day2:
93740 case 8:
93750 No=7:sp_on 4,1:sp_on 7,0
93760 pause 200:goto Buka_Input_Born_Day2:
93770 case 7:
93780 pause 200:goto Buka_Input_Born_Day2:
93790 end select
93800 endif
93810 '右  十字キー　右　or カーソル　右
93820 if ((y2 = 1) or (key$ = chr$(28))) then
93830 select case No
93840 '0ボタンからokボタン右に移動
93850 case 0:
93860 No=-1:sp_on 14,1:sp_on 13,0
93870 pause 200:goto Buka_Input_Born_Day2:
93880 '0ボタンからokボタン 右に移動　ここまで
93890 'OKボタンで右を押して何もしない
93900 case -1:
93910 pause 200:goto Buka_Input_Born_Day2:
93920 case 1:
93930 No=2:sp_on 9,1:sp_on 6,0
93940 pause 200:goto Buka_Input_Born_Day2:
93950 case 2:
93960 No=3:sp_on 12,1:sp_on 9,0
93970 pause 200:goto Buka_Input_Born_Day2:
93980 case 3:
93990 pause 200:goto Buka_Input_Born_Day2:
94000 case 4:
94010 No=5:sp_on 8,1:sp_on 5,0
94020 pause 200:goto Buka_Input_Born_Day2:
94030 case 5:
94040 No=6:sp_on 11,1:sp_on 8,0
94050 pause 200:goto Buka_Input_Born_Day2:
94060 case 7:
94070 No=8:sp_on 7,1:sp_on 4,0
94080 pause 200:goto Buka_Input_Born_Day2:
94090 case 8:
94100 No=9:sp_on 10,1:sp_on 7,0
94110 pause 200:goto Buka_Input_Born_Day2:
94120 case 9:
94130 pause 200:goto Buka_Input_Born_Day2:
94140 case 6:
94150 pause 200:goto Buka_Input_Born_Day2:
94160 end select
94170 'Okから右ボタンを押して何もしない ここまで
94180 endif
94190 '十字キー　ここまで
94200 '右の丸ボタンを押したとき
94210 if ((bg = 2) or (key$ = chr$(13))) then
94220 'count :決定ボタンを押した回数
94230 select case (count)
94240 '1桁目入力
94250 case 0:
94260 count = 1:
94270 if (No = -1) then
94280 '1桁目　OKでは何もしない
94290 'goto check:
94300 No=0
94310 else
94320 'ok以外のボタンを押したとき
94330 buf_buka_day = No:buf_buka_Day$ = str$(No)
94340 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
94350 buf_buka_Day$ = str$(No) + "*"
94360 endif
94370 a=No
94380 buf_Buka_Born_Day(2) = buf_buka_day
94390 locate 1,3
94400 print"                                      "
94410 color RGB(255,255,255)
94420 locate 1,3
94430 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
94440 endif
94450 check2:
94460 if (No >= 1 and No <= 9) then
94470 sp_on 14,0
94480 goto Buka_Input_Born_Day2:
94490 else
94500 sp_on 14,0
94510 goto Result_Business_Aisyou:
94520 end
94530 endif
94540 case 1:
94550 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
94560 count = 2:
94570 'locate 2,3
94580 'color RGB(255,255,255)
94590 'print "生まれた日(1日~31日):";buf_Day$
94600 'Okボタンを押したときの処理
94610 '入力値　10未満のとき
94620 'c = buf_day
94630 if (No = -1) then
94640 'c=buf_day
94650 ' buf_day = c
94660 'buf_Day$ = str$(buf_day)
94670 '10以下のとき
94680 No=0
94690 if (buf_day < 10) then
94700 sp_on 14,0
94710 goto Result_Business_Aisyou:
94720 end
94730 endif
94740 else
94750 sp_on 14,0
94760 'c=No
94770 buf_buka_day = a * 10 + No
94780 buf_buka_Day$ = str$(buf_buka_day)
94790 buf_Buka_Born_Day(2) = buf_buka_day
94800 locate 0,3
94810 color Rgb(255,255,255)
94820 print "                                       "
94830 locate 1,3
94840 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
94850 goto Buka_Input_Born_Day2:
94860 endif
94870 '生まれた日　2桁目の数字　or 1桁の数字 + ok
94880 case 2:
94890 count=0
94900 'c=val(buf_Day$)
94910 'buf_day=c*10+No
94920 'buf_Day$=str$(buf_day)
94930 'day=buf_day
94940 'locate 2,3
94950 'print "生まれた日(1日〜31日):";buf_Day$
94960 'No=-1:ok ボタンを押したとき
94970 if (No = -1) then No=0
94980 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
94990 sp_on 14,0
95000 goto Result_Business_Aisyou:
95010 else
95020 goto Buka_Input_Born_Day2:
95030 endif
95040 'Okボタン以外を押したとき
95050 else
95060 c=val(buf_buka_Day$)
95070 buf_buka_day = c * 10 + No
95080 buf_buka_Day$ = str$(buf_buka_day)
95090 locate 1,3
95100 print "                "
95110 locate 1,3
95120 print "生まれた日(1日~31日):"+buf_buka_Day$
95130 goto Buka_Input_Born_Day2:
95140 'endif
95150 case 3:
95160 count=4
95170 'c=val(buf_day$)
95180 'buf_day=c*10+No
95190 'buf_day$=str$(buf_day)
95200 'locate 2,3
95210 'print "生まれた日を入れてください:";buf_day$
95220 'year=val(buf_year$)
95230 if (No = -1) then
95240 'goto Buka_Input_Born_Day:
95250 sp_on 14,0:
95260 goto complate_jyoushi:
95270 else
95280 goto Buka_Input_Born_Month2:
95290 endif
95300 'case 4:
95310 'bufyear=buf_year
95320 'if (No=-1) then
95330 'buf_day = val(buf_day$)
95340 'bufday = buf_day
95350 'sp_on 14,0
95360 goto complate_jyoushi:
95370 'else
95380 'goto Buka_Input_Born_Day2:
95390 'endif
95400 end select
95410 endif
95420 if (bg2=2) then
95430 select case count2
95440 case 0:
95450 if (No=-1) then
95460 'buf_day=0:buf_Day$="**"
95470 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
95480 count=0
95490 buf_buka_day=0:buf_buka_Day$="**"
95500 goto rewrite_day3:
95510 else
95520 buf_buka_day=0:buf_buka_Day$="**"
95530 ui_msg"値が範囲外です"
95540 endif
95550 goto rewrite_day3:
95560 else
95570 goto rewrite_day3:
95580 endif
95590 rewrite_day3:
95600 locate 2,3
95610 color rgb(255,255,255)
95620 print "                                      "
95630 locate 1,3
95640 print "生まれた日(1日~31日):"+buf_buka_Day$
95650 goto Buka_Input_Born_Day2:
95660 end select
95670 endif
95680 '3.部下の生まれた日'
95690 '部下'
95700 '--------------------------------------------'
95710 'ビジネの相性　結果表示
95720 Result_Business_Aisyou:
95730 cls 3:init "kb:4"
95740 a=0:b=0:c=0:d=0:e=0:f=0
95750 bg=0:key$=""
95760 '****************************************************************************************************
95770 'WUXG(1920x1200)の時ここから
95780 '****************************************************************************************************
95790 gload Gazo$ + "Screen1.png",0,0,0
95800 gload Gazo$ + "downscreen.png",0,0,800
95810 '****************************************************************************************************
95820 'WUXG(1920x1200)の時ここから
95830 '****************************************************************************************************
95840 sp_on 14,0
95850 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
95860 buf_Buka = Kabara_Num(d,e,f)
95870 a_2 = buf_Buka
95880 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
95890 locate 0,1
95900 color rgb(255,0,0)
95910 print "●.相性診断結果１"
95920 locate 0,4:
95930 color rgb(255,255,255)
95940 print "1.上司の名前:";buffer_name$(0)
95950 locate 0,6
95960 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
95970 locate 0,8
95980 print "2.部下の名前:";buffer_name$(1)
95990 locate 0,10
96000 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
96010 locate 0,12
96020 print "3.上司と部下の相性:";Result_Aisyou$
96030 locate 1,15
96040 color rgb(0,0,0)
96050 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
96060 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
96070 bg = strig(1)
96080 key$ = inkey$
96090 bg2 = strig(0)
96100 pause 5
96110 wend
96120 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
96130 if (bg2 = 2) then
96140 cls 3:goto Business_Aishou_Input_1_parson:
96150 endif
96160 'ビジネスの相性占い　結果2　説明
96170 Result_Business_Aisyou2:
96180 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
96190 gload Gazo$ + "Screen1.png",0,0,0
96200 locate 0,1
96210 color rgb(255,0,0)
96220 print "●.相性の説明"
96230 color rgb(255,255,255)
96240 locate 0,4
96250 print "相性:";Result_Aisyou$
96260 locate 0,6:
96270 print "相性の説明:";buf$
96280 locate 0,15
96290 color rgb(0,0,0)
96300 print "右の丸ボタン:トップ,左のボタン:前の画面"
96310 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
96320 bg = strig(1)
96330 bg2 = strig(0)
96340 key$ = inkey$
96350 pause 200
96360 wend
96370 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
96380 if ((bg2 = 2)) then goto Result_Business_Aisyou:
96390 'Birds Eye Menu List
96400 Result_Birtheye_List1:
96410 'dim List$(4) Topに定義
96420 List$(0) = "1.バーズアイグリッドをもう一度診断"
96430 List$(1) = "2.診断結果"
96440 List$(2) = "3.データーを保存"
96450 List$(3) = "4.トップ画面に戻る"
96460 Birds_List1 = ui_select("List$","Menu")
96470 select case (Birds_List1)
96480 case 0: '1.もう一度診断
96490 for i=0 to 8
96500 buffer(i)=0
96510 next i
96520 goto Input_name1_Birdseye:
96530 case 1: '2.次へ行く
96540 gosub BirdsEye_Result2:
96550 case 2: '3.データーを保存
96560 ui_msg "データーを保存します"
96570 goto BirdsEye_Save_data:
96580 case 3: '4.トップに戻る
96590 for i=0 to 8
96600 buffer(i)=0
96610 next i
96620 goto Main_Screen:
96630 end select
96640 'BirdsEye Data Save
96650 BirdsEye_Save_data:
96660 if dir$(Save_data_Birdseye$) = "" then
96670 Mkdir Save_data_Birdseye$
96680 endif
96690 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
96700 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
96710 close #1
96720 ui_msg "データーを保存しました"
96730 goto Result_Birtheye_List1:
96740 'return
96750 '自作関数 ここから
96760 BirdsEyeGrid_Entry:
96770 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
96780 '****************************************************************************************************
96790 'WUXG(1920x1200)の時 1280x 800の時共通　ここから
96800 '****************************************************************************************************
96810 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
96820 '****************************************************************************************************
96830 'WUXG(1920x1200)の時 1280x 800の時共通 ここまで
96840 '****************************************************************************************************
96850 font FONT
96860 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
96870 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
96880 locate 1,4:print "右の丸:メイン画面へ行く"
96890 else
96900 flag=1
96910 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
96920 while (eof(1)=0)
96930 line input #1,a$
96940 n = n + 1
96950 wend
96960 close #1
96970 'endif
96980 talk "登録件数は"+str$(n)+"件です。"
96990 if ((size(0)<=1280) and (size(1)<=800)) then
97000 '*****************************************************************************************************
97010 '1280x800の時　ここから
97020 '*****************************************************************************************************
97030 locate 1,3:print "登録件数は";str$(n);"件です"
97040 locate 1,6:print "左の丸：メイン画面へ行く"
97050 '*****************************************************************************************************
97060 '1280x800の時　ここまで
97070 '*****************************************************************************************************
97080 else
97090 '*****************************************************************************************************
97100 'WUXG(1920x1280)の時　ここから
97110 '*****************************************************************************************************
97120 locate 1,2:print "登録件数は";str$(n);"件です"
97130 locate 1,4:print "左の丸：メイン画面へ行く"
97140 '*****************************************************************************************************
97150 'WUXG(1920x1280)の時　ここまで
97160 '*****************************************************************************************************
97170 endif
97180 endif
97190 Entry_Count:
97200 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
97210 key$ = inkey$
97220 bg = strig(1)
97230 bg2 = strig(0)
97240 pause 200
97250 wend
97260 if ((bg = 2) or (key$ = chr$(13))) then
97270 if (n = 0) then
97280 '登録件数　０件のとき　メイン画面に行く
97290 goto Main_Screen:
97300 else
97310 '登録件数1件以上　次へ行く
97320 'ここを変更する
97330 goto Entry_List:
97340 endif
97350 endif
97360 if (bg2 = 2) then
97370 if (n > 0) then
97380 goto Main_Screen:
97390 else
97400 goto Entry_Count:
97410 endif
97420 endif
97430 Entry_List:
97440 cls 3:play"":color rgb(255,255,255):init "kb:4"
97450 if ((size(0)<=1280) and (size(1)<=800)) then
97460 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x680_20240222.png",0,0,0
97470 else
97480 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
97490 endif
97500 dim buffer_List$(11,n)
97510 'ファイル読み込み ここから
97520 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
97530 for i=0 to 10
97540 for j=0 to n-1
97550 input #1,a$
97560 buffer_List$(i,j)=a$
97570 next j
97580 next i
97590 close #1
97600 'erase buffer_List$
97610 'color rgb(255,255,255)
97620 i=0:key$="":bg=0:init"kb:4":bg2=0
97630 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
97640 key$ = inkey$
97650 bg = strig(1)
97660 bg2=strig(0)
97670 pause 200
97680 wend
97690 color rgb(0,0,0)
97700 locate 1,15:print "次へ"
97710 'show_ListData:
97720 'j=0
97730 repeat (j=0)
97740 show_ListData:
97750 cls
97760 color rgb(255,255,255)
97770 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
97780 '1の文字データー
97790 locate 4,14:print buffer_List$(2,j)
97800 '2の文字データー
97810 locate 4,9:print buffer_List$(3,j)
97820 '3の文字データー
97830 locate 4,5:print buffer_List$(4,j)
97840 '4の文字データー
97850 locate 11,14:print buffer_List$(5,j)
97860 '5の文字データー
97870 locate 11,9:PRINT buffer_List$(6,j)
97880 '6の文字データー
97890 locate 11,5:print buffer_List$(7,j)
97900 '7の文字データー
97910 locate 16,14:print buffer_List$(8,j)
97920 '8の文字データー
97930 locate 16,9:print buffer_List$(9,j)
97940 '9の文字データー
97950 locate 16,5:print buffer_List$(10,j)
97960 color rgb(0,0,0)
97970 locate 1,15:print "右の丸：次へ"
97980 if (bg=2 or key$=chr$(13)) then
97990 j=j+1
98000 endif
98010 if (bg2=2) then
98020 goto Main_Screen:
98030 endif
98040 until (j=n)
98050 'erase buffer_List$:
98060 goto show_ListData:
98070 'ファイル読み込み　ここまで
98080 func read_explain$(ba$)
98090 d$=""
98100 buf_String$=""
98110 if ba$="A" then
98120 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
98130 line input #1,a$
98140 a1$=mid$(a$,1,12)
98150 a2$=mid$(a$,13,17)
98160 a3$=mid$(a$,30,17)
98170 a4$=mid$(a$,47,18)
98180 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
98190 buf_String$ = a5$
98200 close #1
98210 endif
98220 if ba$="B"  then
98230 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
98240 line input #1,b$
98250 b1$=mid$(b$,1,15)
98260 b2$=mid$(b$,16,21)
98270 'b3$=mid$(b$,33,3)
98280 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
98290 buf_String$ = b4$
98300 close #1
98310 endif
98320 if ba$="C"  then
98330 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
98340 line input #1,c$
98350 c1$ = Mid$(c$,1,15)
98360 c2$ = Mid$(c$,16,33)
98370 c3$ = c1$ + chr$(13) + c2$
98380 buf_String$ = c3$
98390 close #1
98400 endif
98410 if ba$="D" then
98420 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
98430 line input #1,d$
98440 d1$=mid$(d$,1,15)
98450 d2$=mid$(d$,16,22)
98460 d3$=mid$(d$,38,7)
98470 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
98480 buf_String$ = d4$
98490 close #1
98500 endif
98510 if ba$="E"  then
98520 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
98530 line input #1,e$
98540 e1$=Mid$(e$,1,16)
98550 e2$=Mid$(e$,17,16)
98560 e3$=Mid$(e$,33,12)
98570 e4$=Mid$(e$,45,17)
98580 e5$=Mid$(e$,62,17)
98590 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
98600 buf_String$ = e6$
98610 close #1
98620 endif
98630 if ba$="F" then
98640 '改行を追加して表示を調整
98650 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
98660 line input #1,f$
98670 f1$=Mid$(f$,1,15)
98680 f2$=Mid$(f$,16,12)
98690 buf_String$ = f1$+chr$(13)+f2$
98700 close #1
98710 endif
98720 if ba$="G" then
98730 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
98740 line input #1,g$
98750 g1$ = mid$(g$,1,16)
98760 g2$ = mid$(g$,17,18)
98770 g3$ = mid$(g$,36,21)
98780 g4$ = mid$(g$,56,6)
98790 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
98800 buf_String$ = g5$
98810 close #1
98820 endif
98830 if ba$="H" then
98840 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
98850 line input #1,h$
98860 h1$=Mid$(h$,1,17)
98870 h2$=Mid$(h$,18,21)
98880 h3$=Mid$(h$,39,20)
98890 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
98900 buf_String$ = h$
98910 close #1
98920 endif
98930 if ba$ = "I" then
98940 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
98950 line input #1,i$
98960 i1$=Mid$(i$,1,10)
98970 i2$=Mid$(i$,11,13)
98980 i3$=Mid$(i$,25,16)
98990 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
99000 buf_String$ = i$
99010 close #1
99020 endif
99030 buffer$ = buf_String$
99040 endfunc buffer$
99050 'カバラ数（数秘番号を求める）
99060 func Kabara_Num(buffer_Year,month,day)
99070 '=============================
99080 'a1:4桁のうちの1桁目を求める
99090 '例 a1:1234の4が1桁目
99100 'a2:4桁のうちの2桁目を求める
99110 '例:a2:1234の3が2桁目
99120 'a3:4桁のうちの3桁目を求める
99130 '例 a3:1234の2が3桁目
99140 'a4:4桁のうちの4桁目を求める
99150 '例 a4:1234の1が4桁目
99160 '==============================
99170 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
99180 Year = buffer_Year
99190 '処理1　整数部分を取り出す。
99200 a4 = fix(Year / 1000)
99210 a3 = fix(Year / 100) - (a4 * 10)
99220 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
99230 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
99240 '処理　２　取り出した整数部分を足す。
99250 a_ = a1 + a2 + a3 + a4 +month + day
99260 'a1=0:a2=0:a3=0:a4=0
99270 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
99280 buffer = a_
99290 'else
99300 goto recomp2:
99310 'if (a_ = 10) then
99320 '  buffer = 1
99330 endif
99340 recomp2:
99350 a5=0:a6=0
99360 a5 = fix(a_ / 10)
99370 a6 = (a_) - (a5 * 10)
99380 a_ = a5 + a6
99390 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
99400 '結果に行く
99410 goto Res2:
99420 '  if ((a_>11) and (a_<99)) then
99430 else
99440 '再度計算
99450 goto recomp2:
99460 endif
99470 '     a1 = fix(a_ / 10)
99480 '     a2 = a_ - (a1 * 10)
99490 '     a_ = a1 + a2
99500 '     buffer = a_
99510 'endif
99520 'else
99530 '    bffer = a_
99540 'endif
99550 'endif
99560 'else
99570 'talk "プログラムを終了します。"
99580 'end
99590 'endif
99600 'kabara = 10
99610 Res2:
99620 kabara = a_
99630 endfunc kabara
99640 func Kabara_Aisyou$(buff1,buff2)
99650 a=0:b=0
99660 '範囲　1~9
99670 if ((buff1 > 0 and buff1 < 10)) then
99680 a = buff1
99690 else
99700 Select case buff1
99710 case 11:
99720 buff1=9:a=buff1
99730 case 22:
99740 buff1=10:a=buff1
99750 end select
99760 endif
99770 '範囲　１~９
99780 if ((buff2 > 0 and buff2 < 10)) then
99790 b = buff2
99800 else
99810 select case buff2
99820 case 11:
99830 buff2=9:b=buff2
99840 case 12:
99850 buff2=10:b=buff2
99860 end select
99870 endif
99880 Aisyou$ = Buffer_Business_Aisyou$(a,b)
99890 endfunc Aisyou$
99900 '**********************************************************
99910 '0-0.Top Screen Recheck: ここから
99920 '**********************************************************
99930 TopScreenRecheck:
99940 color rgb(217,255,212)
99950 locate 1,3:print  "                            "
99960 locate 1,4:print  "                            "
99970 locate 1,5
99980 print "番号を選んでください"
99990 locate 1,6:print  "                            "
100000  locate 1,7:print  " :1.数秘術占い"
100010  locate 1,8:print  "                            "
100020  locate 1,9:print  "                            "
100030  locate 1,10:print  "                            "
100040  locate 1,10:print  " :2.設 定"
100050  locate 1,11:print  "                            "
100060  locate 1,12:print  "                            "
100070  locate 1,13:print  " :3.ヘルプ"
100080  locate 1,14:print  "                            "
100090  locate 1,15:print  "                            "
100100  locate 1,16:print  "                            "
100110  locate 1,16:print  " :4.(プログラムを)終了する"
100120  locate 1,17:print  "                            "
100130  locate 1,18:print  "                            "
100140  return
100150  '**********************************************************
100160  '0-0.Top Screen Recheck:　ここまで
100170  '**********************************************************
100180  '***********************************************************
100190  '1-1.数秘術トップ画面 ここから
100200  '**********************************************************
100210  Kabara_TopScreen_Recheck:
100220  color rgb(255,255,255):font FONT
100230  locate 1,5
100240  print "番号を選んでください" + chr$(13)
100250  locate 1,7
100260  print " :1.数秘術占い" + chr$(13)
100270  locate 1,10
100280  print " :2.バーズアイグリット" + chr$(13)
100290  locate 1,13
100300  print " :3.相性占い" + chr$(13)
100310  locate 1,16
100320  print " :4.トップ画面に戻る" + chr$(13)
100330  return
100340  '***************************************************************
100350  '1-1.数秘術トップ画面　ここまで
100360  '*************************************************************
100370  '**********************************************************
100380  '2-1 Setting Top Screen ここから
100390  '**********************************************************
100400  Setting_Recheck:
100410  cls:color rgb(255,255,255)
100420  locate 1,3:print  "                            "
100430  locate 1,4:print  "                            "
100440  locate 1,5:
100450  print "番号を選んでください"
100460  locate 1,6:print  "                            "
100470  locate 1,7:
100480  print " :1.トップ画面に戻る"
100490  locate 1,8:print  "                            "
100500  locate 1,9:print  "                            "
100510  locate 1,10:
100520  print " :2.バーズアイグリッドデーターリスト"
100530  locate 1,11:print  "                            "
100540  locate 1,12:print  "                            "
100550  locate 1,13:
100560  print " :3.未実装" + chr$(13)
100570  locate 1,14:print  "                            "
100580  locate 1,15:print  "                            "
100590  locate 1,16:
100600  print " :4.未実装" + chr$(13)
100610  locate 1,17:print  "                            "
100620  locate 1,18:print  "                            "
100630  return
100640  '**********************************************************
100650  '2-1 Setting Top Screen ここまで
100660  '**********************************************************
100670  '**********************************************************
100680  '3-1Help Top ReCheck ここから
100690  '**********************************************************
100700  Help_Top_ReCheck:
100710  font FONT
100720  color rgb(217,255,212)
100730  locate 1,3:print  "                       "
100740  locate 1,4:print  "                       "
100750  locate 1,5:print "番号を選んでください"
100760  locate 1,6:print  "                       "
100770  '0
100780  locate 1,7:print " :1.ルールの説明"
100790  '1
100800  locate 1,8:print  "                       "
100810  locate 1,9:print  "                       "
100820  locate 1,10:print " :2.バージョンの表示"
100830  locate 1,11:print  "                      "
100840  locate 1,12:print  "                      "
100850  '2
100860  locate 1,13:print " :3.参考文献"
100870  locate 1,14:print  "                      "
100880  locate 1,15:print  "                      "
100890  '3
100900  locate 1,16:print " :4.トップ画面に戻る"
100910  return
100920  '**********************************************************
100930  '3-1.Help Top ReCheckここまで
100940  '**********************************************************
100950  '***********************************************************
100960  '**********************************************************
100970  Suhi_Rule_Screen_Recheck:
100980  color rgb(255,255,255)
100990  font FONT
101000  locate 1,3:print  "                       "
101010  locate 1,4:print  "                       "
101020  locate 1,5
101030  print "番号を選んでください"
101040  locate 1,6:print  "                       "
101050  locate 1,7:    '〇
101060  print " :1.数秘術のやり方"
101070  locate 1,8:print  "                       "
101080  locate 1,9:print  "                       "
101090  locate 1,10:   '〇
101100  print " :2.バーズアイグリットの説明"
101110  locate 1,11:print  "                       "
101120  locate 1,12:print  "                       "
101130  locate 1,13:    '〇
101140  print " :3.トップ画面に戻る"
101150  locate 1,14:print  "                       "
101160  locate 1,15:print  "                       "
101170  return
101180  '=============================
101190  '自作関数 ここまで
101200  '1.数秘術　トップ画面
101210  '
101220  'Data_eraseを一番最後に持ってくる
101230  '=============================
101240  Data_erase:
101250  'メモリー削除
101260  erase buf_male_year
101270  erase buf_male_month
101280  erase buf_male_Born_Day
101290  erase buf_feMale_Born_Day
101300  erase buf_female_day
101310  erase buf_name1$
101320  erase buf_name2$
101330  erase buffer
101340  erase buf_chart$
101350  erase Buffer_Business_Aisyou$
101360  erase buffer_name$
101370  '上司の誕生日
101380  erase buf_Jyoushi_Born_Day
101390  '部下の誕生日
101400  erase buf_Buka_Born_Day
101410  erase buf_year
101420  erase buf_month
101430  erase buf_day
101440  'フォーカスライン
101450  erase Forcus1_buffer$
101460  erase Forcus2_buffer$
101470  erase Forcus3_buffer$
101480  'erase buffer_List$
101490  'Birds eye List Data 配列
101500  erase List$
101510  buffer$ = ""
101520  buf$ = ""
101530  buf_year$ = ""
101540  buf_Jyoushi_Kabara_Num = 0
101550  buf_Buka_Kabara_Num = 0
101560  count = 0
101570  buf_Month$ = ""
101580  buf_Day$ = ""
101590  b=0
101600  c=0
101610  No=0
101620  count=0
101630  return
