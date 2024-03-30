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
630 Version$ = "Ver:1.3.8_20240225c"
640 'Gazo Folder Japan
650 Gazo$ = "./data/Picture/"
660 'Gazo Size folder
670 Gazo_1920x1200$ = "/1920x1200/"
680 Gazo_WXGA$ = "907x680/"
690 'Gazo Folder English
700 Gazo_Eng$ = "./data/Picture/English/"
710 'Voice Folder 2023
720 Voice$ = "./data/Voice/Voice/"
730 'BirtheyeChart Data:20230626
740 Birth_eye_chart$ = "./data/chart_data/"
750 'Data Folder
760 Data$ = "./data/data/"
770 'Business Aisyou 結果説明保存フォルダ
780 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
790 'Save BirdsEyeGrit List Folder
800 Save_data_Birdseye$ = "./data/Parsonal_data/"
810 '変数定義 パート
820 b=0:c=0:n=0:count=0
830 '***********************************************************
840 '1.WXGAの時
850 '(1200 x 800)
860 '***********************************************************
870 if (((size(1) <= 1200) and (size(1) > 800))) then
880 X=5:Y=200
890 FONT=32
900 '***********************************************************
910 '1.WXGAの時
920 '(1200 x 800)
930 '***********************************************************
940 else
950 '***********************************************************
960 '2.WUXGAの時(WXGA以外の時)
970 '(1920 x 1200)
980 '***********************************************************
990 X=5:Y=300
1000 FONT=48
1010 '***********************************************************
1020 '2.WUXGAの時(WXGA以外の時)
1030 '(1920 x 1200)
1040 '***********************************************************
1050 endif
1060 'dim buffer_List$(11,1)
1070 dim buf_name1$(10),buf_name2$(10)
1080 dim buffer(9),buf_chart$(26,2)
1090 'ビジネスの相性　データー
1100 dim Buffer_Business_Aisyou$(12,12)
1110 '男女の相性
1120 dim Buffer_Bitween_sexes_Aisyou$(12,12)
1130 '生れた年代
1140 dim buf_year(4):buf_year$ = ""
1150 dim buf_month(2)
1160 dim buf_day(2)
1170 'フォーカスライン　配列
1180 dim Forcus1_buffer$(3)
1190 dim Forcus2_buffer$(3)
1200 dim Forcus3_buffer$(2)
1210 '生れた月
1220 buf_Month$ = ""
1230 '生れた日
1240 buf_Day$ = ""
1250 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
1260 dim buffer_name$(3)
1270 '1-1.上司の誕生日(数値データー)
1280 dim buf_Jyoushi_Born_Day(3)
1290 '1-2.上司の数秘ナンバー(数値データー)
1300 buf_Jyoushi_Kabara_Num = 0
1310 '2-1.部下の誕生日(数値データー)
1320 dim buf_Buka_Born_Day(3)
1330 '2-2.部下の数秘ナンバー(数秘データー)
1340 buf_Buka_Kabara_Num = 0
1350 dim buf_male_year(4)
1360 dim buf_male_month(2)
1370 dim buf_male_Born_Day(2)
1380 dim buf_feMale_Born_Day(2)
1390 dim buf_female_day(2)
1400 count=0
1410 'Birds Eye List 配列
1420 dim List$(6)
1430 '部下の数秘ナンバー
1440 'File 読み込み
1450 '1.ビジネスの相性占い
1460 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1470 for i=0 to 11
1480 for j=0 to 11
1490 input #1,a$
1500 Buffer_Business_Aisyou$(j,i) = a$
1510 next j
1520 next i
1530 close #1
1540 '2.男女の相性占い
1550 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1560 for i=0 to 11
1570 for j=0 to 11
1580 input #1,a$
1590 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1600 next j
1610 next i
1620 close #1
1630 '2.Birth Eye chart$
1640 '2.バーズアイグリッドを読み込む
1650 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1660 for j=0 to 25
1670 for i=0 to 1
1680 input #1,a$
1690 buf_chart$(j,i) = a$
1700 next i
1710 next j
1720 close #1
1730 'File 読み込み　ここまで
1740 'Main画面
1750 screen 1,1,1,1
1760 Main_Screen:
1770 cls 3:
1780 No=0
1790 '***********************************************************
1800 '1.WXGAの時
1810 '(1200 x 800)
1820 '***********************************************************
1830 if ((size(0) <= 1280) and (size(1) <= 800)) then
1840 gload Gazo$ + "Selection.png",1,5,220
1850 gload Gazo$ + "Selection.png",1,5,320
1860 gload Gazo$ + "Selection.png",1,5,420
1870 gload Gazo$ + "Selection.png",1,5,520
1880 '4
1890 gload Gazo$ + "Selection.png",1,35,300
1900 '5
1910 gload Gazo$ + "Selection.png",1,35,400
1920 '6
1930 gload Gazo$ + "Selection.png",1,35,500
1940 '7
1950 gload Gazo$ + "Selection.png",1,70,300
1960 '8
1970 gload Gazo$ + "Selection.png",1,70,400
1980 '9
1990 gload Gazo$ + "Selection.png",1,70,500
2000 '10
2010 gload Gazo$ + "Selection.png",1,110,300
2020 '11
2030 gload Gazo$ + "Selection.png",1,110,400
2040 '12
2050 gload Gazo$ + "Selection.png",1,110,500
2060 '13:0
2070 gload Gazo$ + "Selection.png",1,150,400
2080 gload Gazo$ + "Selection.png",1,200,400
2090 '***********************************************************
2100 '1.WXGAの時
2110 '(1200 x 800)
2120 '***********************************************************
2130 else
2140 '***********************************************************
2150 '2.WXGA(1200 x 800)以外の時
2160 '(1920 x 1200)のサイズ
2170 '***********************************************************
2180 gload Gazo$ + "Selection.png",1,5,200
2190 gload Gazo$ + "Selection.png",1,5,300
2200 gload Gazo$ + "Selection.png",1,5,400
2210 gload Gazo$ + "Selection.png",1,5,500
2220 '4
2230 gload Gazo$ + "Selection.png",1,35,300
2240 '5
2250 gload Gazo$ + "Selection.png",1,35,400
2260 '6
2270 gload Gazo$ + "Selection.png",1,35,500
2280 '7
2290 gload Gazo$ + "Selection.png",1,70,300
2300 '8
2310 gload Gazo$ + "Selection.png",1,70,400
2320 '9
2330 gload Gazo$ + "Selection.png",1,70,500
2340 '10
2350 gload Gazo$ + "Selection.png",1,110,300
2360 '11
2370 gload Gazo$ + "Selection.png",1,110,400
2380 '12
2390 gload Gazo$ + "Selection.png",1,110,500
2400 '13:0
2410 gload Gazo$ + "Selection.png",1,150,400
2420 gload Gazo$ + "Selection.png",1,200,400
2430 '***********************************************************
2440 '2.WXGA(1200 x 800)以外の時
2450 '(1920 x 1200)のサイズ
2460 '***********************************************************
2470 endif
2480 if ex_info$(1) <> "JP" then
2490 '英語　トップ画面
2500 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
2510 'put@(0,0),1280,800,(1080,800)
2520 else
2530 '**********************************************************
2540 '［機能］　グラフィックバッファ（2番目の座標）からグラフィック画面（1番目の座標）へ画像データを引き出します。
2550 '
2560 '　［書式］　PUT@(x1,y1),w1,h1,(x2,y2)[,[w2],[h2][,描画モード]]
2570 '　［説明］
2580 '　　w1,w2=横サイズ h1,h2= 縦サイズ
2590 '　　転写元と転写先のサイズが異なる場合、拡大縮小描画されます。
2600 '　　各種重ね合わせの方式は pen命令で設定することができます。
2610 '　　<描画モード>の指定で次の選択ができます。
2620 '　　 0. グラフィックバッファからグラフィック画面への描画。
2630 '　　 1. グラフィック画面からグラフィック画面への描画。
2640 '　　 2. グラフィックバッファからグラフィックバッファへの描画。
2650 '***********************************************************'
2660 '*************************************************************************************************
2670 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2680 '日本語トップスクリーン
2690 'gload Gazo$ + "TopScreen_20230310.png",0,0,0
2700 'else
2710 '1.WXGAの時
2720 '************************************************************************************************
2730 if ((size(0) <= 1280) and (size(1) <= 800)) then
2740 gload Gazo$ + Gazo_WXGA$ + "Screen1_907x680_20240214.png",0,0,0
2750 else
2760 '************************************************************************************************
2770 '2.WXGA以外の時
2780 '************************************************************************************************
2790 gload Gazo$ + "TopScreen_20230310.png",0,0,0
2800 endif
2810 'put@(0,0),1280,800,(1080,800),,,0
2820 endif
2830 '***********************************************************************************************
2840 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2850 '***********************************************************************************************
2860 if ((size(0) <= 1280) and (size(1) <= 800)) then
2870 '************************************************************************************************
2880 'WXGAの場合　ここから (1280 x 800)
2890 '************************************************************************************************
2900 sp_def 0,(5,220),32,32
2910 sp_def 1,(5,320),32,32
2920 sp_def 2,(5,420),32,32
2930 sp_def 3,(5,520),32,32
2940 '1
2950 sp_def 4,(35,200),32,32
2960 '2
2970 sp_def 5,(35,300),32,32
2980 '3
2990 sp_def 6,(35,400),32,32
3000 '4
3010 sp_def 7,(70,200),32,32
3020 '5
3030 sp_def 8,(70,300),32,32
3040 '6
3050 sp_def 9,(70,400),32,32
3060 '7
3070 sp_def 10,(110,200),32,32
3080 '8
3090 sp_def 11,(110,200),32,32
3100 '9
3110 sp_def 12,(110,200),32,32
3120 sp_def 13,(150,300),32,32
3130 sp_def 14,(200,300),32,32
3140 'Sprite OFF
3150 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3160 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
3170 sp_put 0,(5,220),0,0
3180 sp_put 1,(5,320),1,0
3190 sp_put 2,(5,420),2,0
3200 sp_put 3,(5,520),3,0
3210 '1
3220 sp_put 4,(130,200),4,0
3230 '2
3240 sp_put 5,(130,300),5,0
3250 '3
3260 sp_put 6,(130,400),6,0
3270 '4
3280 sp_put 7,(340,200),7,0
3290 '5
3300 sp_put 8,(340,300),8,0
3310 '6
3320 sp_put 9,(340,400),9,0
3330 '7
3340 sp_put 10,(540,200),10,0
3350 '8
3360 sp_put 11,(540,300),11,0
3370 '9
3380 sp_put 12,(540,400),12,0
3390 '
3400 sp_put 13,(340,500),13,0
3410 sp_put 14,(540,500),14,0
3420 '************************************************************************************************
3430 'WXGAの場合　ここまで (1280 x 800)
3440 '************************************************************************************************
3450 else
3460 '選択肢の丸
3470 '************************************************************************************************
3480 'WUXGAの場合　ここから (1920 x 1200)
3490 '************************************************************************************************
3500 gload Gazo$ + "downscreen.png",0,0,800
3510 sp_def 0,(5,300),32,32
3520 sp_def 1,(5,400),32,32
3530 sp_def 2,(5,500),32,32
3540 sp_def 3,(5,600),32,32
3550 '1
3560 sp_def 4,(35,300),32,32
3570 '2
3580 sp_def 5,(35,400),32,32
3590 '3
3600 sp_def 6,(35,500),32,32
3610 '4
3620 sp_def 7,(70,300),32,32
3630 '5
3640 sp_def 8,(70,400),32,32
3650 '6
3660 sp_def 9,(70,500),32,32
3670 '7
3680 sp_def 10,(110,300),32,32
3690 '8
3700 sp_def 11,(110,400),32,32
3710 '9
3720 sp_def 12,(110,400),32,32
3730 sp_def 13,(150,400),32,32
3740 sp_def 14,(200,400),32,32
3750 'Sprite OFF
3760 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3770 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0
3780 sp_put 0,(5,300),0,0
3790 sp_put 1,(5,400),1,0
3800 sp_put 2,(5,500),2,0
3810 sp_put 3,(5,600),3,0
3820 '1
3830 sp_put 4,(130,300),4,0
3840 '2
3850 sp_put 5,(130,400),5,0
3860 '3
3870 sp_put 6,(130,500),6,0
3880 '4
3890 sp_put 7,(340,300),7,0
3900 '5
3910 sp_put 8,(340,400),8,0
3920 '6
3930 sp_put 9,(340,500),9,0
3940 '7
3950 sp_put 10,(540,300),10,0
3960 '8
3970 sp_put 11,(540,400),11,0
3980 '9
3990 sp_put 12,(540,500),12,0
4000 '
4010 sp_put 13,(340,600),13,0
4020 sp_put 14,(540,600),14,0
4030 '************************************************************************************************
4040 'WUXGAの場合　ここまで  (1920 x 1200)
4050 '************************************************************************************************
4060 endif
4070 Main_Top:
4080 'Main Message 2023.06.07
4090 '再生を止める
4100 play ""
4110 init "kb:4"
4120 'font 32:
4130 font 40
4140 if ex_info$(1) <> "JP" then
4150 '1.英語表示ターム
4160 print chr$(13) + chr$(13) + chr$(13)
4170 color rgb(217,255,212)
4180 print "Please Select Number?" + chr$(13)+chr$(13)
4190 '0
4200 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
4210 '1
4220 print " :2.Setting" + chr$(13)+chr$(13)
4230 '2
4240 print " :3.Help" + chr$(13)
4250 '3
4260 print " :4.(Finishing)Program" + chr$(13)
4270 COLOR rgb(0,0,0):No=0
4280 locate 1,15
4290 print "                                        "
4300 locate 1,15
4310 print "1.It has Selected Kabara Fortune Telling"
4320 '1.英語表示ターム
4330 '---------音声 日本語　英語に変える----------------
4340 'play Voice$ + "Voice_Main_Message_20230607.mp3"
4350 '---------音声 日本語　英語に変える----------------
4360 else
4370 '2.日本語表示ターム
4380 'Main_Screen_Select:
4390 '************************************************************************************************
4400 '1.WXGAの場合　ここから (1280 x 800)
4410 '************************************************************************************************
4420 if ((size(0) <= 1280) and (size(1) <= 800)) then
4430 '************************************************************************************************
4440 '1.WXGAの場合　ここから (1280 x 800)
4450 '************************************************************************************************
4460 font FONT
4470 color rgb(217,255,212)
4480 locate 1,5
4490 print "番号を選んでください"
4500 '0
4510 locate 1,7
4520 print " :1.数秘術占い"
4530 '1
4540 locate 1,10
4550 print " :2.設 定"
4560 '2
4570 locate 1,13
4580 print " :3.ヘルプ"
4590 '3
4600 locate 1,16
4610 print " :4.(プログラムを)終了する"
4620 COLOR rgb(0,0,0):No=0
4630 'locate 1,15
4640 '3行下げる
4650 if (count = 0) then
4660 locate 1,19
4670 print "           "
4680 locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択"
4690 play Voice$ + "Voice_Main_Message_20230607.mp3"
4700 endif
4710 '************************************************************************************************
4720 '1.WXGAの場合　ここまで (1280 x 800)
4730 '************************************************************************************************
4740 '2.日本語表示ターム
4750 else
4760 '************************************************************************************************
4770 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
4780 '************************************************************************************************
4790 font FONT
4800 print chr$(13) + chr$(13) + chr$(13)
4810 color rgb(217,255,212)
4820 print "番号を選んでください" + chr$(13)
4830 '0
4840 print " :1.数秘術占い" + chr$(13)
4850 '1
4860 print " :2.設 定" + chr$(13)
4870 '2
4880 print " :3.ヘルプ" + chr$(13)
4890 '3\
4900 print " :4.(プログラムを)終了する" + chr$(13)
4910 COLOR rgb(0,0,0):No=0
4920 'locate 1,15
4930 '3行下げる
4940 if count=0 then
4950 locate 1,15
4960 print "           "
4970 locate 1,15:color rgb(0,0,0):print "1.数秘術占いを選択"
4980 play Voice$ + "Voice_Main_Message_20230607.mp3"
4990 endif
5000 '************************************************************************************************
5010 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5020 '************************************************************************************************
5030 endif
5040 '************************************************************************************************
5050 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5060 '************************************************************************************************
5070 endif
5080 Main_Screen_Select:
5090 y = 0:key$ = "":bg = 0:bg2=0
5100 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
5110 y = stick(1)
5120 '"May (2023)"
5130 key$ = inkey$
5140 bg = strig(1)
5150 bg2 = strig(0)
5160 pause 200
5170 wend
5180 '*******************************************************************************************************************************
5190 '  WUXGA(1920 x 1200)
5200 '  X=5:Y=300
5210 '  WXGA (1280 x 800)
5220 '  X=5:Y=200
5230 '*******************************************************************************************************************************
5240 '1.
5250 'ジョイパッドのソース ソート　ここから
5260 'カーソル　下 or 十字キー下
5270 '************************************************************************************************
5280 '1.WXGAの場合　ここから (1280 x 800)
5290 '************************************************************************************************
5300 if ((size(0) <= 1280) and (size(1) <= 800)) then
5310 '************************************************************************************************
5320 '1.WXGAの場合　ここから (1280 x 800)
5330 '************************************************************************************************
5340 if ((y = 1) or (key$ = chr$(31))) then
5350 select case No
5360 case 0:
5370 '1
5380 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:count = count + 1:beep:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":count=cunt+1:goto Main_Screen_Select:
5390 case 1:
5400 '2
5410 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                                 ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":count=count+1:goto Main_Screen_Select:
5420 case 2:
5430 '3
5440 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:color rgb(0,0,0):print "4.(プログラムを)終了するを選択":count=count+1:goto Main_Screen_Select:
5450 case 3:
5460 '0
5470 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(X,Y+20),0,0:beep:pause 200:count = count + 1:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択":count=count+1:goto Main_Screen_Select:
5480 end select
5490 endif
5500 '2.
5510 'カーソル　上　or 十字キー  上
5520 if ((y = -1) or (key$ = chr$(30))) then
5530 select case No
5540 case 0:
5550 '3
5560 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:COLOR rgb(0,0,0):print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
5570 case 1:
5580 '0
5590 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:COLOR rgb(0,0,0):print  "1.数秘術占いを選択":goto Main_Screen_Select:
5600 case 2:
5610 '1
5620 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":goto Main_Screen_Select:
5630 case 3:
5640 '2
5650 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                   ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":goto Main_Screen_Select:
5660 end select
5670 endif
5680 'ジョイパッド　ソース 部分　ここまで
5690 'ジョイパッド右　　or Enter key 決定
5700 if ((bg = 2) OR (key$ = chr$(13))) then
5710 select case No
5720 case 0:
5730 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen: 'Kabara_First_Top:
5740 case 1:
5750 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
5760 case 2:
5770 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
5780 case 3:
5790 play "":pause 200
5800 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:font 16:end
5810 end select
5820 endif
5830 if (bg2 = 2) then
5840 play "":pause 200
5850 play Voice$ + "Voice_Main_Message_20230607.mp3"
5860 goto Main_Screen_Select:
5870 endif
5880 '************************************************************************************************
5890 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
5900 '************************************************************************************************
5910 else
5920 if ((y = 1) or (key$ = chr$(31))) then
5930 select case No
5940 case 0:
5950 '1
5960 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
5970 case 1:
5980 '2
5990 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6000 case 2:
6010 '3
6020 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6030 case 3:
6040 '0
6050 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
6060 end select
6070 endif
6080 '2.
6090 'カーソル　上　or 十字キー  上
6100 if ((y = -1) or (key$ = chr$(30))) then
6110 select case No
6120 case 0:
6130 '3
6140 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6150 case 1:
6160 '0
6170 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
6180 case 2:
6190 '1
6200 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6210 case 3:
6220 '2
6230 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6240 end select
6250 endif
6260 'ジョイパッド　ソース 部分　ここまで
6270 'ジョイパッド右　　or Enter key 決定
6280 if ((bg = 2) OR (key$ = chr$(13))) then
6290 select case No
6300 case 0:
6310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen: 'Kabara_First_Top:
6320 case 1:
6330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
6340 case 2:
6350 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
6360 case 3:
6370 play "":pause 200
6380 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
6390 end select
6400 endif
6410 if (bg2 = 2) then
6420 play "":pause 200
6430 play Voice$ + "Voice_Main_Message_20230607.mp3"
6440 goto Main_Screen_Select:
6450 endif
6460 '************************************************************************************************
6470 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6480 '************************************************************************************************
6490 endif
6500 'Version
6510 Version:
6520 cls 3:PLAY ""
6530 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
6540 gload Gazo$ + "downscreen.png",0,0,800
6550 init"kb:4":font 32+8
6560 'talk"バージョン情報です"
6570 'Message :Version
6580 play Voice$ +  "Voice_Version_Message_20230607.mp3"
6590 locate 0,3
6600 color rgb(0,0,255)
6610 print "・Title:数秘術占い";chr$(13)
6620 print "・" + Version$ + chr$(13)
6630 print "・Author:licksjp"+chr$(13)
6640 print "・E-mail:licksjp@gmail.com" + chr$(13)
6650 locate 0,12
6660 print "(C)licksjp All rights " + chr$(13)
6670 locate 7,13
6680 print "reserved since 2009"+chr$(13)
6690 locate 0,18
6700 color rgb(255,255,255)
6710 print "ジョイパッドの右を押してください"
6720 Versionn_Selection:
6730 bg = 0:key$ = "":bg2 = 0
6740 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
6750 bg = strig(1)
6760 key$ = inkey$
6770 bg2 = strig(0)
6780 pause 200
6790 wend
6800 if ((bg = 2) or (key$ = chr$(13))) then
6810 cls 4:goto Main_Screen:
6820 endif
6830 if (bg2=2) then
6840 play "":pause 200
6850 play Voice$ + "Voice_Version_Message_20230607.mp3"
6860 goto Versionn_Selection:
6870 endif
6880 '1.数秘ナンバーを求める
6890 '誕生日入力(生れた年代)
6900 Input_Seireki:
6910 '************************************************************************************************
6920 '1.WXGAの時1200x800の時
6930 '************************************************************************************************
6940 '************************************************************************************************
6950 '2.WUXGAの時1920x1200の時
6960 '************************************************************************************************
6970 cls 3:play "":count=0:count2=0
6980 'No = -1:Okのとき
6990 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
7000 '************************************************************************************************
7010 '配列buf_year(4)を0で埋める。:データー初期化 ここから
7020 '************************************************************************************************
7030 for i=0 to 3
7040 buf_year(i)=0
7050 next i
7060 '************************************************************************************************
7070 '配列buf_year(4)を0で埋める。 :データー初期化　ここまで
7080 '************************************************************************************************
7090 '************************************************************************************************
7100 '1.WXGAの時1200x800の時
7110 '************************************************************************************************
7120 if ((size(0) <= 1280) and (size(1) <= 800)) then
7130 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png"
7140 else
7150 '************************************************************************************************
7160 '2.WUXGAの時1920x1200の時
7170 '************************************************************************************************
7180 gload Gazo$ + "Screen2.png",0,0,0
7190 gload Gazo$ + "downscreen.png",0,0,800
7200 '************************************************************************************************
7210 '2.WUXGAの時1920x1200の時
7220 '************************************************************************************************
7230 endif
7240 'Init"kb:2"
7250 '音声ファイル再生 2023.06.07
7260 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
7270 font 48
7280 locate 0,1
7290 if ex_info$(1) <> "JP" then
7300 color rgb(255,255,255)
7310 color rgb(255,255,255)
7320 print "Input Born Year?" + chr$(13)
7330 color rgb(255,255,255)
7340 locate 2,3
7350 print "Your Born Year(4 dedgit for AC):" + buf_year$
7360 else
7370 '文字色：黒　 color rgb(0,0,0)
7380 color rgb(255,255,255)
7390 print "生まれた年代を入れて下さい" + chr$(13)
7400 color rgb(255,255,255)
7410 locate 2,3
7420 print "生まれた年代(西暦4桁):" + buf_year$
7430 endif
7440 '=============================
7450 'テンキーの色(1~９)　白 ,決定ボタン　青
7460 '=============================
7470 color rgb(255,255,255)
7480 sp_on 4,0: sp_on 5,0:sp_on 6,0
7490 sp_on 7,0:sp_on 8,0:sp_on 9,0
7500 sp_on 10,0:sp_on 11,0:sp_on 12,0
7510 sp_on 13,0:sp_on 14,1
7520 Input_Seireki2:
7530 key$="":bg=0:y=0:y2=0:bg2=0:
7540 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7550 key$ = inkey$
7560 bg = strig(1)
7570 y = stick(1)
7580 y2 = stick(0)
7590 bg2 = strig(0)
7600 pause 200
7610 wend
7620 '十字キー　ここから
7630 '上の矢印　または、十字キー上
7640 if ((y = -1) or (key$ = chr$(30))) then
7650 select case No
7660 'No=-1:okのとき:初期の状態
7670 '0kボタンから３に移動
7680 '上に行く 処理
7690 case -1:
7700 No=3:sp_on 12,1:sp_on 14,0:beep
7710 pause 200:goto Input_Seireki2:
7720 '選択肢:3
7730 '3ボタンから 6に移動
7740 case 3:
7750 No=6:sp_on 12,0:sp_on 11,1:beep
7760 pause 200:goto Input_Seireki2:
7770 '6ボタンから ９に移動
7780 case 6:
7790 No=9:sp_on 10,1:sp_on 11,0:beep
7800 pause 200:goto Input_Seireki2:
7810 '6ボタンから ９に移動　ここまで
7820 '9で上を押して何もしない
7830 case 9:
7840 '何もしない
7850 No=9
7860 beep:pause 200:goto Input_Seireki2:
7870 '9で上を押しても何もしない　ここまで
7880 '上　 0ボタンから2ボタン
7890 'sp_on 6,1:1
7900 'sp_on 8,1:5
7910 'sp_on 7,1:7
7920 case 0:
7930 No=2:sp_on 13,0:sp_on 9,1:beep
7940 pause 200:goto Input_Seireki2:
7950 '上  0ボタンから2ボタン　ここまで
7960 '2から５になる 上
7970 case 2:
7980 No=5:sp_on 8,1:sp_on 9,0:beep
7990 pause 200:goto Input_Seireki2:
8000 case 5:
8010 No=8:sp_on 7,1:sp_on 8,0:beep
8020 pause 200:goto Input_Seireki2:
8030 case 8:
8040 beep:pause 200:goto Input_Seireki2:
8050 case 1:
8060 No=4:sp_on 5,1:sp_on 6,0:beep
8070 pause 200:goto Input_Seireki2:
8080 case 4:
8090 No=7:sp_on 4,1:sp_on 5,0:beep
8100 pause 200:goto Input_Seireki2:
8110 case 7:
8120 beep:pause 200:goto Input_Seireki2:
8130 end select
8140 endif
8150 '左３　ここまで
8160 '下の矢印
8170 '中央 2
8180 if ((y=1) or (key$ = chr$(31))) then
8190 select case No
8200 '9から６に下げる
8210 case 9:
8220 No=6:sp_on 11,1:sp_on 10,0:beep
8230 pause 200:goto Input_Seireki2:
8240 '6から３に下げる
8250 case 6:
8260 No=3:sp_on 12,1:sp_on 11,0:beep
8270 pause 200:goto Input_Seireki2:
8280 '3から０ｋに変える
8290 case 3:
8300 No=-1:sp_on 14,1:sp_on 12,0:beep
8310 pause 200:goto Input_Seireki2:
8320 'Okから下のボタンを押しても何もしない
8330 case -1:
8340 beep:pause 200:goto Input_Seireki2:
8350 case 8:
8360 No=5:sp_on 8,1:sp_on 7,0:beep
8370 pause 200:goto Input_Seireki2:
8380 case 5:
8390 No=2:sp_on 9,1:sp_on 8,0:beep
8400 pause 200:goto Input_Seireki2:
8410 case 2:
8420 No=0:sp_on 13,1:sp_on 9,0:beep
8430 pause 200:goto Input_Seireki2:
8440 case 0:
8450 beep:pause 200:goto Input_Seireki2:
8460 case 7:
8470 No=4:sp_on 5,1:sp_on 4,0:beep
8480 pause 200:goto Input_Seireki2:
8490 case 4:
8500 No=1:sp_on 6,1:sp_on 5,0:beep
8510 pause 200:goto Input_Seireki2:
8520 case 1:
8530 beep:pause 200:goto Input_Seireki2:
8540 end select
8550 endif
8560 '左へボタン 十字キー　左　or 　カーソル左
8570 if ((y2 = -1) or (key$ = chr$(29))) then
8580 select case No
8590 'Ok ボタン  Okから　左　０に行く
8600 case -1:
8610 No=0:sp_on 13,1:sp_on 14,0:beep
8620 pause 200:goto Input_Seireki2:
8630 '0 ボタン  左　何もしない
8640 case 0:
8650 beep:pause 200:goto Input_Seireki2:
8660 case 3:
8670 No=2:sp_on 9,1:sp_on 12,0:beep
8680 pause 200:goto Input_Seireki2:
8690 case 2:
8700 No=1:sp_on 6,1:sp_on 9,0:beep
8710 pause 200:goto Input_Seireki2:
8720 case 1:
8730 beep:pause 200:goto Input_Seireki2:
8740 case 6:
8750 No=5:sp_on 8,1:sp_on 11,0:beep
8760 pause 200:goto Input_Seireki2:
8770 case 5:
8780 No=4:sp_on 5,1:sp_on 8,0:beep
8790 pause 200:goto Input_Seireki2:
8800 case 4:
8810 beep:pause 200:goto Input_Seireki2:
8820 case 9:
8830 No=8:sp_on 7,1:sp_on 10,0:beep
8840 pause 200:goto Input_Seireki2:
8850 case 8:
8860 No=7:sp_on 4,1:sp_on 7,0:beep
8870 pause 200:goto Input_Seireki2:
8880 case 7:
8890 beep:pause 200:goto Input_Seireki2:
8900 end select
8910 endif
8920 '右  十字キー　右　or カーソル　右
8930 if ((y2 = 1) or (key$ = chr$(28))) then
8940 select case No
8950 '0ボタンからokボタン右に移動
8960 case 0:
8970 No=-1:sp_on 14,1:sp_on 13,0:beep
8980 pause 200:goto Input_Seireki2:
8990 '0ボタンからokボタン 右に移動　ここまで
9000 'OKボタンで右を押して何もしない
9010 case -1:
9020 pause 200:goto Input_Seireki2:
9030 case 1:
9040 No=2:sp_on 9,1:sp_on 6,0:beep
9050 pause 200:goto Input_Seireki2:
9060 case 2:
9070 No=3:sp_on 12,1:sp_on 9,0
9080 beep:pause 200:goto Input_Seireki2:
9090 case 3:
9100 beep:pause 200:goto Input_Seireki2:
9110 case 4:
9120 No=5:sp_on 8,1:sp_on 5,0:beep
9130 pause 200:goto Input_Seireki2:
9140 case 5:
9150 No=6:sp_on 11,1:sp_on 8,0:beep
9160 pause 200:goto Input_Seireki2:
9170 case 7:
9180 No=8:sp_on 7,1:sp_on 4,0:beep
9190 pause 200:goto Input_Seireki2:
9200 case 8:
9210 No=9:sp_on 10,1:sp_on 7,0:beep
9220 pause 200:goto Input_Seireki2:
9230 case 9:
9240 beep:pause 200:goto Input_Seireki2:
9250 case 6:
9260 beep:pause 200:goto Input_Seireki2:
9270 end select
9280 'Okから右ボタンを押して何もしない ここまで
9290 endif
9300 '十字キー　ここまで
9310 if ((bg=2) or (key$=chr$(13))) then
9320 select case count
9330 case 0:
9340 count=1
9350 if (No=-1) then
9360 count=0
9370 'Okボタンを押したとき
9380 goto Input_Seireki2:
9390 else
9400 '===================================
9410 'Okボタン以外が押されたとき  1桁目の入力
9420 '===================================
9430 count2=1
9440 if (No >= 1 and No <= 2) then
9450 buf_year$="":buf_year$ = str$(No)
9460 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
9470 if ex_info$(1) <> "JP" then
9480 n1= len("Input Born Year?(4 dedgit):")
9490 else
9500 n1 = len("生まれた年代(西暦4桁):")
9510 endif
9520 locate 2,3
9530 color rgb(255,255,255)
9540 if ex_info$(1) <> "JP" then
9550 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
9560 else
9570 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
9580 endif
9590 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
9600 'print "生まれた年代(西暦4桁):";buf_year2$
9610 print buf_Born_Year_line$
9620 goto Input_Seireki2:
9630 else
9640 count=0
9650 ui_msg"数字が範囲外になります。"
9660 buf_year$="":buf_year=0
9670 goto Input_Seireki2:
9680 endif
9690 endif
9700 case 1:
9710 count = 2
9720 if (No = -1) then
9730 count = 1
9740 goto Input_Seireki2:
9750 else
9760 count2 = 1
9770 b = val(buf_year$)
9780 buf_year = b * 10 + No
9790 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
9800 locate 2,3
9810 color rgb(255,255,255)
9820 print "                                                                "
9830 locate 2,3
9840 if ex_info$(1) <> "JP" then
9850 print "Input Born Year(4 dedgit):";buf_year$
9860 else
9870 print "生まれた年代(西暦4桁):";buf_year2$
9880 endif
9890 'if (No = -1) then
9900 'count=1
9910 goto Input_Seireki2:
9920 endif
9930 case 2:
9940 count=3
9950 if (No=-1) then
9960 count =2
9970 goto Input_Seireki2:
9980 else
9990 b = val(buf_year$)
10000 buf_year = b*10 + No
10010 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
10020 locate 2,3
10030 color rgb(255,255,255)
10040 print "                                        "
10050 locate 2,3
10060 if ex_info$(1) <> "JP" then
10070 print "Input Born Year?(4 dedgit):";buf_year$
10080 else
10090 print "生まれた年代(西暦4桁):";buf_year2$
10100 endif
10110 goto Input_Seireki2:
10120 endif
10130 case 3:
10140 count=4
10150 if (No = -1) then
10160 count=3
10170 goto Input_Seireki2:
10180 else
10190 b = val(buf_year$)
10200 buf_year = b * 10 + No
10210 buf_year$ = str$(buf_year)
10220 locate 2,3
10230 color RGB(255,255,255)
10240 print "                                      "
10250 locate 2,3
10260 if ex_info$(1) <> "JP" then
10270 print "Input Born Year?(4 dedgit):";buf_year$
10280 else
10290 print "生まれた年代(西暦4桁):";buf_year$
10300 endif
10310 buf_year=val(buf_year$)
10320 'year=val(buf_year$)
10330 'if (No=-1) then
10340 'goto Input_Born_Month:
10350 'else
10360 goto Input_Seireki2:
10370 endif
10380 case 4:
10390 'bufyear=buf_year
10400 if (No = -1) then
10410 buf_year = val(buf_year$)
10420 bufyear = buf_year
10430 sp_on 14,0
10440 goto Input_Born_Month:
10450 else
10460 goto Input_Seireki2:
10470 endif
10480 end select
10490 endif
10500 '=========================
10510 'bg2　キャンセルボタン
10520 '=========================
10530 if (bg2 = 2) then
10540 select case count2
10550 case 0:
10560 'Okボタンを押したときの処理
10570 if (No = -1) then
10580 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
10590 'count = 0
10600 locate 2,3
10610 color rgb(255,255,255)
10620 print "                                      "
10630 locate 2,3
10640 if ex_info$(1) <> "JP" then
10650 print "Input Born Year?(4 dedgit):";buf_year$
10660 else
10670 print "生まれた年代（西暦4桁):";buf_year$
10680 endif
10690 '=============================
10700 'case 0:前の画面に戻る 数秘術トップメニュー
10710 '=============================
10720 sp_on 14,0:goto Kabara_TopScreen:
10730 else
10740 'count=0
10750 '(buf_year=0) then
10760 buf_year = 0:buf_year$ = string$(4,"*")
10770 goto Input_Seireki2:
10780 'endif
10790 endif
10800 case 1:
10810 if (No = -1) then
10820 count2 = 0:count = 0
10830 buf$=right$(buf_year$,1)
10840 if (val(buf$) >= 1 and val(buf$) <= 9) then
10850 buf_year$ = "****":buf_year=0
10860 color rgb(255,255,255)
10870 locate 0,3:
10880 print "                                      "
10890 locate 2,3
10900 if ex_info$(1) <> "JP" then
10910 print "Input Born Year(4 dedgit):";buf_year$
10920 else
10930 print "生まれた年代（西暦4桁):" + buf_year$
10940 endif
10950 goto Input_Seireki2:
10960 endif
10970 else
10980 endif
10990 end select
11000 endif
11010 end
11020 'Input"生れた年代(4桁,〜2025年):",year
11030 'if year > 2025 then goto Input_Seireki:
11040 'if year = 123 then cls 3:cls 4:goto Main_Screen:
11050 '"4桁目"
11060 'bufyear4 = fix(year / 1000)
11070 '"3桁目"
11080 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
11090 '"2桁目"
11100 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
11110 '"1桁目"
11120 'bufyear1 = fix((year - ((bufyear4*
11130 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
11140 '生れた月を入力
11150 Input_Born_Month:
11160 cls 3:play "":count=0:count2=0
11170 'No=-1:Okのとき
11180 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
11190 for i=0 to 1
11200 buf_month(i)=0
11210 next i
11220 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11230 gload Gazo$ + "Screen2.png",0,0,0
11240 gload Gazo$ + "downscreen.png",0,0,800
11250 'Init"kb:2"
11260 if ex_info$(1) <> "JP" then
11270 else
11280 '音声ファイル再生 2023.06.07
11290 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
11300 endif
11310 font 48
11320 locate 0,1
11330 '文字色：黒　 color rgb(0,0,0)
11340 if ex_info$(1) <> "JP" then
11350 '英語パート
11360 '文字色:白
11370 color rgb(255,255,255)
11380 print "Input Born Month?(1~12):" + chr$(13)
11390 '文字色:白
11400 color rgb(255,255,255)
11410 locate 2,3
11420 '文字色:白
11430 print "Your Born Month?(1~12):";buf_Month$
11440 color rgb(255,255,255)
11450 else
11460 '日本語パート
11470 color rgb(255,255,255)
11480 print "生まれた月を入れて下さい" + chr$(13)
11490 '文字色:白
11500 color rgb(255,255,255)
11510 locate 2,3
11520 '文字色:白
11530 print "生まれた月(1月~12月):";buf_Month$
11540 color rgb(255,255,255)
11550 endif
11560 'locate 4,6:print ":7"
11570 'locate 9,6:print ":8"
11580 'locate 12,6:print ":9"
11590 'locate 4,6
11600 '文字色:赤
11610 'print ":7  :8  :9" + chr$(13)
11620 'color rgb(255,255,255)
11630 'locate 4,8
11640 'print ":4  :5  :6" + chr$(13)
11650 'color rgb(255,255,255)
11660 'locate 4,10
11670 'print ":1  :2  :3" + chr$(13)
11680 'locate 4,12
11690 'print "    :0"
11700 'locate 12,12
11710 'color rgb(255,0,0)
11720 'print ":Ok"
11730 sp_on 4,0: sp_on 5,0:sp_on 6,0
11740 sp_on 7,0:sp_on 8,0:sp_on 9,0
11750 sp_on 10,0:sp_on 11,0:sp_on 12,0
11760 sp_on 13,0:sp_on 14,1
11770 Input_Born_Month2:
11780 key$="":bg=0:y=0:y2=0:bg2=0
11790 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
11800 key$ = inkey$
11810 bg = strig(1)
11820 y = stick(1)
11830 y2 = stick(0)
11840 bg2 = strig(0)
11850 pause 200
11860 wend
11870 '十字キー　ここから
11880 '上の矢印　または、十字キー上
11890 if ((y = -1) or (key$ = chr$(30))) then
11900 select case No
11910 'No=-1:okのとき:初期の状態
11920 '0kボタンから３に移動
11930 '上に行く 処理
11940 case -1:
11950 No=3:sp_on 12,1:sp_on 14,0:BEEP
11960 pause 200:goto Input_Born_Month2:
11970 '選択肢:3
11980 '3ボタンから 6に移動
11990 case 3:
12000 No=6:sp_on 12,0:sp_on 11,1:beep
12010 pause 200:goto Input_Born_Month2:
12020 '6ボタンから ９に移動
12030 case 6:
12040 No=9:sp_on 10,1:sp_on 11,0:beep
12050 pause 200:goto Input_Born_Month2:
12060 '6ボタンから ９に移動　ここまで
12070 '9で上を押して何もしない
12080 case 9:
12090 '何もしない
12100 No=9
12110 beep:pause 200:goto Input_Born_Month2:
12120 '9で上を押しても何もしない　ここまで
12130 '上　 0ボタンから2ボタン
12140 'sp_on 6,1:1
12150 'sp_on 8,1:5
12160 'sp_on 7,1:7
12170 case 0:
12180 No=2:sp_on 13,0:sp_on 9,1:beep
12190 pause 200:goto Input_Born_Month2:
12200 '上  0ボタンから2ボタン　ここまで
12210 '2から５になる 上
12220 case 2:
12230 No=5:sp_on 8,1:sp_on 9,0:beep
12240 pause 200:goto Input_Born_Month2:
12250 case 5:
12260 No=8:sp_on 7,1:sp_on 8,0:beep
12270 pause 200:goto Input_Born_Month2:
12280 case 8:
12290 beep:pause 200:goto Input_Born_Month2:
12300 case 1:
12310 No=4:sp_on 5,1:sp_on 6,0:beep
12320 pause 200:goto Input_Born_Month2:
12330 case 4:
12340 No=7:sp_on 4,1:sp_on 5,0:beep
12350 pause 200:goto Input_Born_Month2:
12360 case 7:
12370 beep:pause 200:goto Input_Born_Month2:
12380 end select
12390 endif
12400 '左３　ここまで
12410 '下の矢印
12420 '中央 2
12430 if ((y=1) or (key$ = chr$(31))) then
12440 select case No
12450 '9から６に下げる
12460 case 9:
12470 No=6:sp_on 11,1:sp_on 10,0:beep
12480 pause 200:goto Input_Born_Month2:
12490 '6から３に下げる
12500 case 6:
12510 No=3:sp_on 12,1:sp_on 11,0:beep
12520 pause 200:goto Input_Born_Month2:
12530 '3から０ｋに変える
12540 case 3:
12550 No=-1:sp_on 14,1:sp_on 12,0:beep
12560 pause 200:goto Input_Born_Month2:
12570 'Okから下のボタンを押しても何もしない
12580 case -1:
12590 beep:pause 200:goto Input_Born_Month2:
12600 case 8:
12610 No=5:sp_on 8,1:sp_on 7,0:beep
12620 pause 200:goto Input_Born_Month2:
12630 case 5:
12640 No=2:sp_on 9,1:sp_on 8,0:beep
12650 pause 200:goto Input_Born_Month2:
12660 case 2:
12670 No=0:sp_on 13,1:sp_on 9,0:beep
12680 pause 200:goto Input_Born_Month2:
12690 case 0:
12700 beep:pause 200:goto Input_Born_Month2:
12710 case 7:
12720 No=4:sp_on 5,1:sp_on 4,0:beep
12730 pause 200:goto Input_Born_Month2:
12740 case 4:
12750 No=1:sp_on 6,1:sp_on 5,0:beep
12760 pause 200:goto Input_Born_Month2:
12770 case 1:
12780 beep:pause 200:goto Input_Born_Month2:
12790 end select
12800 endif
12810 '左へボタン 十字キー　左　or 　カーソル左
12820 if ((y2 = -1) or (key$ = chr$(29))) then
12830 select case No
12840 'Ok ボタン  Okから　左　０に行く
12850 case -1:
12860 No=0:sp_on 13,1:sp_on 14,0
12870 beep:pause 200:goto Input_Born_Month2:
12880 '0 ボタン  左　何もしない
12890 case 0:
12900 beep:pause 200:goto Input_Born_Month2:
12910 case 3:
12920 No=2:sp_on 9,1:sp_on 12,0:beep
12930 pause 200:goto Input_Born_Month2:
12940 case 2:
12950 No=1:sp_on 6,1:sp_on 9,0:beep
12960 pause 200:goto Input_Born_Month2:
12970 case 1:
12980 beep:pause 200:goto Input_Born_Month2:
12990 case 6:
13000 No=5:sp_on 8,1:sp_on 11,0:beep
13010 pause 200:goto Input_Born_Month2:
13020 case 5:
13030 No=4:sp_on 5,1:sp_on 8,0:beep
13040 pause 200:goto Input_Born_Month2:
13050 case 4:
13060 beep:pause 200:goto Input_Born_Month2:
13070 case 9:
13080 No=8:sp_on 7,1:sp_on 10,0:beep
13090 pause 200:goto Input_Born_Month2:
13100 case 8:
13110 No=7:sp_on 4,1:sp_on 7,0:beep
13120 pause 200:goto Input_Born_Month2:
13130 case 7:
13140 beep:pause 200:goto Input_Born_Month2:
13150 end select
13160 endif
13170 '右  十字キー　右　or カーソル　右
13180 if ((y2 = 1) or (key$ = chr$(28))) then
13190 select case No
13200 '0ボタンからokボタン右に移動
13210 case 0:
13220 No=-1:sp_on 14,1:sp_on 13,0:beep
13230 pause 200:goto Input_Born_Month2:
13240 '0ボタンからokボタン 右に移動　ここまで
13250 'OKボタンで右を押して何もしない
13260 case -1:
13270 beep:pause 200:goto Input_Born_Month2:
13280 case 1:
13290 No=2:sp_on 9,1:sp_on 6,0:beep
13300 pause 200:goto Input_Born_Month2:
13310 case 2:
13320 No=3:sp_on 12,1:sp_on 9,0:beep
13330 pause 200:goto Input_Born_Month2:
13340 case 3:
13350 beep:pause 200:goto Input_Born_Month2:
13360 case 4:
13370 No=5:sp_on 8,1:sp_on 5,0:beep
13380 pause 200:goto Input_Born_Month2:
13390 case 5:
13400 No=6:sp_on 11,1:sp_on 8,0:beep
13410 pause 200:goto Input_Born_Month2:
13420 case 7:
13430 No=8:sp_on 7,1:sp_on 4,0:beep
13440 pause 200:goto Input_Born_Month2:
13450 case 8:
13460 No=9:sp_on 10,1:sp_on 7,0:beep
13470 pause 200:goto Input_Born_Month2:
13480 case 9:
13490 beep:pause 200:goto Input_Born_Month2:
13500 case 6:
13510 beep:pause 200:goto Input_Born_Month2:
13520 end select
13530 'Okから右ボタンを押して何もしない ここまで
13540 endif
13550 '十字キー　ここまで
13560 '右の丸ボタン　決定キー
13570 if ((bg=2) or (key$=chr$(13))) then
13580 select case count
13590 case 0:
13600 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
13610 if (buf_month = 1 or buf_month = 2) then
13620 locate 2,3
13630 color RGB(255,255,255)
13640 if ex_info$(1) <> "JP" then
13650 print "Input Born Month(1~12):";buf_Month$
13660 else
13670 print "生まれた月(1月~12月):";buf_Month2$
13680 endif
13690 else
13700 locate 2,3
13710 color Rgb(255,255,255)
13720 if ex_info$(1) <> "JP" then
13730 print "Input Born Month(1~12):";buf_Month$
13740 else
13750 print "生まれた月(1月~12月):";buf_Month$
13760 endif
13770 endif
13780 goto Input_Born_Month2:
13790 case 1:
13800 count = 2:c = No
13810 c = val(buf_Month$)
13820 if (No = -1) then
13830 'if No=1 or No=2 then
13840 'endif
13850 month = buf_month
13860 buf_month=val(buf_Month$)
13870 month=buf_month
13880 '生まれた日に飛ぶ
13890 goto Input_Born_Day:
13900 else
13910 buf_month = c*10 + No
13920 buf_Month$= str$(buf_month)
13930 locate 2,3
13940 color Rgb(255,255,255)
13950 if ex_info$(1) <> "JP" then
13960 print "Input Born Month(1~12):";buf_Month$
13970 else
13980 print "生まれた月(1月~12月):";buf_Month$
13990 endif
14000 goto Input_Born_Month2:
14010 endif
14020 case 2:
14030 count=3:count2=1
14040 'c= val(buf_Month$)
14050 'buf_month = c*10 + No
14060 'buf_Month$ = str$(buf_month)
14070 'locate 2,3
14080 'print "生まれた月(1月～12月):";buf_Month$
14090 'goto Input_Born_Month2:
14100 'case 3:
14110 'count=4
14120 'b=val(buf_month$)
14130 'buf_month=c*10+No
14140 'buf_Month$=str$(buf_month)
14150 'locate 2,3
14160 'print "生まれた月(1月～12月):";buf_Month$
14170 'buf_month=val(buf_Month$)
14180 'year=val(buf_year$)
14190 if (No=-1) then
14200 goto Input_Born_Day:
14210 else
14220 'goto Input_Born_Month2:
14230 endif
14240 'case 4:
14250 'bufyear=buf_year
14260 'if (No=-1) then
14270 'buf_month = val(buf_Month$)
14280 'month = buf_month
14290 'sp_on 14,0
14300 'goto Input_Born_Day:
14310 'else
14320 'goto Input_Born_Month2:
14330 'endif
14340 end select
14350 endif
14360 '左の丸ボタン　キャンセル
14370 if (bg2=2) then
14380 select case count2
14390 case 0:
14400 if (No = -1) then
14410 buf_month=0:buf_Month$="**"
14420 count2=0:count=0
14430 locate 0,3:print "                                   "
14440 if ex_info$(1) <> "JP" then
14450 print "Input Born Month?(1~12):";buf_Month$
14460 else
14470 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
14480 endif
14490 'if (buf_month > 1) then
14500 sp_on 14,0:goto Input_Born_Month2:
14510 'goto rewrite:
14520 else
14530 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
14540 buf_month=0:buf_Month$="**"
14550 locate 2,3
14560 color rgb(255,255,255)
14570 print "                                       "
14580 goto rewrite:
14590 if (No>2) then
14600 if ex_info$(1) <> "JP" then
14610 ui_msg "The value is out of range"
14620 else
14630 ui_msg "値が範囲外です。"
14640 endif
14650 goto rewrite:
14660 endif
14670 endif
14680 'endif
14690 rewrite:
14700 locate 2,3
14710 color rgb(255,255,255)
14720 print "                                      "
14730 locate 2,3
14740 if ex_info$(1) <> "JP" then
14750 print "Input Born Month?(1~12):";buf_Month$
14760 else
14770 print "生まれた月(1月~12月):";buf_Month$
14780 endif
14790 goto Input_Born_Month2:
14800 endif
14810 case 1:
14820 buf_Month$="**":buf_month=0
14830 if No=-1 then
14840 count2=2:count=0
14850 locate 0,3
14860 print "                                      "
14870 locate 2,3:
14880 if ex_info$(1) <> "JP" then
14890 print "Input Born Month?(1~12):";buf_Month$
14900 else
14910 print "生まれた月(1月~12月):" + buf_Month$
14920 endif
14930 goto Input_Born_Month2:
14940 endif
14950 case 2:
14960 sp_on 14,0:goto Input_Seireki:
14970 end select
14980 endif
14990 'endif
15000 end
15010 'end
15020 '生れた日を入力
15030 Input_Born_Day:
15040 '生まれた日入力
15050 cls 3:play ""
15060 'No=-1:Okのとき
15070 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
15080 for i=0 to 1
15090 buf_day(i)=0
15100 next i
15110 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
15120 gload Gazo$ + "Screen2.png",0,0,0
15130 gload Gazo$ + "downscreen.png",0,0,800
15140 'Init"kb:2"
15150 if ex_info$(1) <> "JP" then
15160 '英語音声パート
15170 else
15180 '日本語音声パート
15190 '音声ファイル再生 2023.06.07
15200 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
15210 endif
15220 font 48
15230 if ex_info$(1) <> "JP" then
15240 locate 0,1
15250 '文字色：黒　 color rgb(0,0,0)
15260 color rgb(255,255,255)
15270 print "Input Born day?" + chr$(13)
15280 color rgb(255,255,255)
15290 locate 2,3
15300 print "Born Day(1~31):";buf_Day$
15310 else
15320 locate 0,1
15330 '文字色：黒　 color rgb(0,0,0)
15340 color rgb(255,255,255)
15350 print "生まれた日を入れて下さい" + chr$(13)
15360 color rgb(255,255,255)
15370 locate 2,3
15380 print "生まれた日(1日~31日):";buf_Day$
15390 endif
15400 'color rgb(255,255,255)
15410 'locate 4,6:print ":7"
15420 'locate 9,6:print ":8"
15430 'locate 12,6:print ":9"
15440 'locate 4,6
15450 'print ":7  :8  :9" + chr$(13)
15460 '=======================
15470 'テンキー　色　白　決定ボタン　青
15480 '=======================
15490 'color rgb(255,255,255)
15500 'locate 4,8
15510 'print ":4  :5  :6" + chr$(13)
15520 'color rgb(255,255,255)
15530 'locate 4,10
15540 'print ":1  :2  :3" + chr$(13)
15550 'locate 4,12
15560 'print "    :0"
15570 'locate 12,12
15580 'color rgb(255,0,0)
15590 'print ":Ok"
15600 sp_on 4,0: sp_on 5,0:sp_on 6,0
15610 sp_on 7,0:sp_on 8,0:sp_on 9,0
15620 sp_on 10,0:sp_on 11,0:sp_on 12,0
15630 sp_on 13,0:sp_on 14,1
15640 Input_Born_Day2:
15650 key$="":bg=0:y=0:y2=0:bg2=0
15660 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
15670 key$ = inkey$
15680 bg = strig(1)
15690 y = stick(1)
15700 y2 = stick(0)
15710 bg2 = strig(0)
15720 pause 200
15730 wend
15740 '十字キー　ここから
15750 '上の矢印　または、十字キー上
15760 if ((y = -1) or (key$ = chr$(30))) then
15770 select case No
15780 'No=-1:okのとき:初期の状態
15790 '0kボタンから３に移動
15800 '上に行く 処理
15810 case -1:
15820 No=3:sp_on 12,1:sp_on 14,0:beep
15830 pause 200:goto Input_Born_Day2:
15840 '選択肢:3
15850 '3ボタンから 6に移動
15860 case 3:
15870 No=6:sp_on 12,0:sp_on 11,1:beep
15880 pause 200:goto Input_Born_Day2:
15890 '6ボタンから ９に移動
15900 case 6:
15910 No=9:sp_on 10,1:sp_on 11,0:beep
15920 pause 200:goto Input_Born_Day2:
15930 '6ボタンから ９に移動　ここまで
15940 '9で上を押して何もしない
15950 case 9:
15960 '何もしない
15970 No=9
15980 beep:pause 200:goto Input_Born_Day2:
15990 '9で上を押しても何もしない　ここまで
16000 '上　 0ボタンから2ボタン
16010 'sp_on 6,1:1
16020 'sp_on 8,1:5
16030 'sp_on 7,1:7
16040 case 0:
16050 No=2:sp_on 13,0:sp_on 9,1:beep
16060 pause 200:goto Input_Born_Day2:
16070 '上  0ボタンから2ボタン　ここまで
16080 '2から５になる 上
16090 case 2:
16100 No=5:sp_on 8,1:sp_on 9,0:beep
16110 pause 200:goto Input_Born_Day2:
16120 case 5:
16130 No=8:sp_on 7,1:sp_on 8,0:beep
16140 pause 200:goto Input_Born_Day2:
16150 case 8:
16160 beep:pause 200:goto Input_Born_Day2:
16170 case 1:
16180 No=4:sp_on 5,1:sp_on 6,0:beep
16190 pause 200:goto Input_Born_Day2:
16200 case 4:
16210 No=7:sp_on 4,1:sp_on 5,0:beep
16220 pause 200:goto Input_Born_Day2:
16230 case 7:
16240 beep:pause 200:goto Input_Born_Day2:
16250 end select
16260 endif
16270 '左３　ここまで
16280 '下の矢印
16290 '中央 2
16300 if ((y=1) or (key$ = chr$(31))) then
16310 select case No
16320 '9から６に下げる
16330 case 9:
16340 No=6:sp_on 11,1:sp_on 10,0:beep
16350 pause 200:goto Input_Born_Day2:
16360 '6から３に下げる
16370 case 6:
16380 No=3:sp_on 12,1:sp_on 11,0:beep
16390 pause 200:goto Input_Born_Day2:
16400 '3から０ｋに変える
16410 case 3:
16420 No=-1:sp_on 14,1:sp_on 12,0:beep
16430 pause 200:goto Input_Born_Day2:
16440 'Okから下のボタンを押しても何もしない
16450 case -1:
16460 beep:pause 200:goto Input_Born_Day2:
16470 case 8:
16480 No=5:sp_on 8,1:sp_on 7,0:beep
16490 pause 200:goto Input_Born_Day2:
16500 case 5:
16510 No=2:sp_on 9,1:sp_on 8,0:beep
16520 pause 200:goto Input_Born_Day2:
16530 case 2:
16540 No=0:sp_on 13,1:sp_on 9,0:beep
16550 pause 200:goto Input_Born_Day2:
16560 case 0:
16570 beep:pause 200:goto Input_Born_Day2:
16580 case 7:
16590 No=4:sp_on 5,1:sp_on 4,0:beep
16600 pause 200:goto Input_Born_Day2:
16610 case 4:
16620 No=1:sp_on 6,1:sp_on 5,0:beep
16630 pause 200:goto Input_Born_Day2:
16640 case 1:
16650 beep:pause 200:goto Input_Born_Day2:
16660 end select
16670 endif
16680 '左へボタン 十字キー　左　or 　カーソル左
16690 if ((y2 = -1) or (key$ = chr$(29))) then
16700 select case No
16710 'Ok ボタン  Okから　左　０に行く
16720 case -1:
16730 No=0:sp_on 13,1:sp_on 14,0:beep
16740 pause 200:goto Input_Born_Day2:
16750 '0 ボタン  左　何もしない
16760 case 0:
16770 beep:pause 200:goto Input_Born_Day2:
16780 case 3:
16790 No=2:sp_on 9,1:sp_on 12,0:beep
16800 pause 200:goto Input_Born_Day2:
16810 case 2:
16820 No=1:sp_on 6,1:sp_on 9,0:beep
16830 pause 200:goto Input_Born_Day2:
16840 case 1:
16850 pause 200:goto Input_Born_Day2:
16860 case 6:
16870 No=5:sp_on 8,1:sp_on 11,0:beep
16880 pause 200:goto Input_Born_Day2:
16890 case 5:
16900 No=4:sp_on 5,1:sp_on 8,0:beep
16910 pause 200:goto Input_Born_Day2:
16920 case 4:
16930 beep:pause 200:goto Input_Born_Day2:
16940 case 9:
16950 No=8:sp_on 7,1:sp_on 10,0:beep
16960 pause 200:goto Input_Born_Day2:
16970 case 8:
16980 No=7:sp_on 4,1:sp_on 7,0:beep
16990 pause 200:goto Input_Born_Day2:
17000 case 7:
17010 beep:pause 200:goto Input_Born_Day2:
17020 end select
17030 endif
17040 '右  十字キー　右　or カーソル　右
17050 if ((y2 = 1) or (key$ = chr$(28))) then
17060 select case No
17070 '0ボタンからokボタン右に移動
17080 case 0:
17090 No=-1:sp_on 14,1:sp_on 13,0:beep
17100 pause 200:goto Input_Born_Day2:
17110 '0ボタンからokボタン 右に移動　ここまで
17120 'OKボタンで右を押して何もしない
17130 case -1:
17140 beep:pause 200:goto Input_Born_Day2:
17150 case 1:
17160 No=2:sp_on 9,1:sp_on 6,0:beep
17170 pause 200:goto Input_Born_Day2:
17180 case 2:
17190 No=3:sp_on 12,1:sp_on 9,0:beep
17200 pause 200:goto Input_Born_Day2:
17210 case 3:
17220 beep:pause 200:goto Input_Born_Day2:
17230 case 4:
17240 No=5:sp_on 8,1:sp_on 5,0:beep
17250 pause 200:goto Input_Born_Day2:
17260 case 5:
17270 No=6:sp_on 11,1:sp_on 8,0:beep
17280 pause 200:goto Input_Born_Day2:
17290 case 7:
17300 No=8:sp_on 7,1:sp_on 4,0:beep
17310 pause 200:goto Input_Born_Day2:
17320 case 8:
17330 No=9:sp_on 10,1:sp_on 7,0:beep
17340 pause 200:goto Input_Born_Day2:
17350 case 9:
17360 beep:pause 200:goto Input_Born_Day2:
17370 case 6:
17380 beep:pause 200:goto Input_Born_Day2:
17390 end select
17400 'Okから右ボタンを押して何もしない ここまで
17410 endif
17420 '十字キー　ここまで
17430 '右の丸ボタンを押したとき
17440 if ((bg = 2) or (key$ = chr$(13))) then
17450 'count :決定ボタンを押した回数
17460 select case (count mod 3)
17470 '1桁目入力
17480 case 0:
17490 count = 1:
17500 if (No = -1) then
17510 '1桁目　OKでは何もしない
17520 'goto check:
17530 else
17540 'ok以外のボタンを押したとき
17550 buf_day = No:buf_Day$ = str$(No)
17560 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
17570 locate 2,3
17580 color RGB(255,255,255)
17590 if ex_info$(1) <> "JP" then
17600 print "Input Born Day(1~31):";buf_Day2$
17610 else
17620 print "生まれた日(1日~31日):";buf_Day2$
17630 endif
17640 endif
17650 check:
17660 if (No >= 1 and No <= 9) then
17670 sp_on 14,0
17680 goto Input_Born_Day2:
17690 else
17700 sp_on 14,0
17710 goto complate:
17720 endif
17730 case 1:
17740 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
17750 count = 2:
17760 'locate 2,3
17770 'color RGB(255,255,255)
17780 'print "生まれた日(1日~31日):";buf_Day$
17790 'Okボタンを押したときの処理
17800 '入力値　10未満のとき
17810 'c = buf_day
17820 if (No = -1) then
17830 'c=buf_day
17840 ' buf_day = c
17850 'buf_Day$ = str$(buf_day)
17860 '10以下のとき
17870 if (buf_day < 10) then
17880 sp_on 14,0
17890 goto complate:
17900 endif
17910 else
17920 'c = No
17930 buf_day = c * 10 + No
17940 'buf_day = c
17950 buf_Day$ =str$(buf_day)
17960 locate 2,3
17970 color Rgb(255,255,255)
17980 if ex_info$(1) <> "JP" then
17990 print "Input Born Day(1~31):";buf_Day$
18000 else
18010 print "生まれた日(1日~31日):";buf_Day$
18020 endif
18030 goto Input_Born_Day2:
18040 endif
18050 '生まれた日　2桁目の数字　or 1桁の数字 + ok
18060 case 2:
18070 count=0
18080 'c=val(buf_Day$)
18090 'buf_day=c*10+No
18100 'buf_Day$=str$(buf_day)
18110 'day=buf_day
18120 'locate 2,3
18130 'print "生まれた日(1日〜31日):";buf_Day$
18140 'No=-1:ok ボタンを押したとき
18150 if (No = -1) then
18160 if ((buf_day > 0) and (buf_day < 32)) then
18170 sp_on 14,0
18180 goto complate:
18190 else
18200 goto Input_Born_Day2:
18210 endif
18220 'Okボタン以外を押したとき
18230 else
18240 c=val(buf_Day$)
18250 buf_day = c * 10 + No
18260 buf_Day$ = str$(buf_day)
18270 locate 2,3
18280 if ex_info$(1) <> "JP" then
18290 print "Input Born Day?(1~31):";buf_Day$
18300 else
18310 print "生まれた日(1日~31日):";buf_Day$
18320 endif
18330 'goto Input_Born_Day2:
18340 endif
18350 case 3:
18360 count = 4
18370 c=val(buf_day$)
18380 buf_day = c * 10 + No
18390 buf_day$ = str$(buf_day)
18400 locate 2,3
18410 if ex_info$(1) <> "JP" then
18420 print "Input Born Day?(1~31):";buf_Day$
18430 else
18440 print "生まれた日を入れてください(1日~31日):";buf_Day$
18450 endif
18460 year = val(buf_year$)
18470 if (No = -1) then
18480 'goto Input_Born_Day:
18490 sp_on 14,0:No=0
18500 goto complate:
18510 else
18520 goto Input_Born_Month2:
18530 endif
18540 'case 4:
18550 'bufyear=buf_year
18560 'if (No=-1) then
18570 'buf_day = val(buf_day$)
18580 'bufday = buf_day
18590 'sp_on 14,0
18600 'goto complate:
18610 'else
18620 'goto Input_Born_Day2:
18630 'endif
18640 end select
18650 endif
18660 if (bg2=2) then
18670 select case count2
18680 case 0:
18690 if (No=-1) then
18700 'buf_day=0:buf_Day$="**"
18710 if (buf_day>=1 and buf_day<=31) then
18720 count=0:No=0
18730 buf_day=0:buf_Day$="**"
18740 'goto rewrite_day:
18750 else
18760 buf_day=0:buf_Day$="**"
18770 ui_msg"値が範囲外です"
18780 endif
18790 goto rewrite_day:
18800 else
18810 goto rewrite_day:
18820 endif
18830 rewrite_day:
18840 locate 2,3
18850 color rgb(255,255,255)
18860 print "                                      "
18870 locate 2,3
18880 if ex_info$(1)<>"JP" then
18890 print "Born Day(1~31):";buf_Day$
18900 else
18910 print "生まれた日(1日~31日):";buf_Day$
18920 endif
18930 goto Input_Born_Day2:
18940 end select
18950 endif
18960 '--------------------------Input_Born_Day:-------------------------------------------
18970 complate:
18980 suhiNo = buf_year + buf_month + buf_day
18990 'if (suhiNo < 1000) then
19000 a1 = fix(suhiNo / 1000)
19010 a2 = fix(suhiNo/100) - (a1 * 10)
19020 a3 = fix(suhiNo/10)-(a1*100+a2*10)
19030 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
19040 'endif
19050 bufsuhiNo = a1 + a2 + a3 + a4
19060 recomp:
19070 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
19080 'bufsuhiNo=a6
19090 goto Kabara_Result_Screen:
19100 else
19110 a5 = fix(bufsuhiNo / 10)
19120 a6 = bufsuhiNo - a5 * 10
19130 bufsuhiNo = a6 + a5
19140 if (bufsuhiNo = 10) then
19150 bufsuhiNo=1
19160 endif
19170 goto Kabara_Result_Screen:
19180 endif
19190 Kabara_Result_Screen:
19200 cls 3:
19210 '****************************************************************************************************
19220 '1.WUXGA(1920x1200)の時
19230 '****************************************************************************************************
19240 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
19250 gload Gazo$ + "downscreen.png",0,0,800
19260 '****************************************************************************************************
19270 '1.WUXGA(1920x1200)の時
19280 '****************************************************************************************************
19290 init "kb:4"
19300 '
19310 play ""
19320 select case (bufsuhiNo)
19330 case 1:
19340 '****************************************************************************************************
19350 '1.数秘ナンバー 1
19360 '****************************************************************************************************
19370 play Voice$ + "Result_Kabara_1_20230607.mp3"
19380 '****************************************************************************************************
19390 '1.数秘ナンバー 1
19400 '****************************************************************************************************
19410 case 2:
19420 '****************************************************************************************************
19430 '1.数秘ナンバー 2
19440 '****************************************************************************************************
19450 play Voice$ + "Result_Kabara_2_20231112.mp3"
19460 '****************************************************************************************************
19470 '1.数秘ナンバー 2
19480 '****************************************************************************************************
19490 case 3:
19500 '****************************************************************************************************
19510 '1.数秘ナンバー 3
19520 '****************************************************************************************************
19530 play Voice$ + "Result_Kabara_3_20230607.mp3"
19540 '****************************************************************************************************
19550 '1.数秘ナンバー 3
19560 '****************************************************************************************************
19570 case 4:
19580 '****************************************************************************************************
19590 '1.数秘ナンバー 4
19600 '****************************************************************************************************
19610 play Voice$ + "Result_Kabara_4_20230607.mp3"
19620 '****************************************************************************************************
19630 '1.数秘ナンバー 4
19640 '****************************************************************************************************
19650 case 5:
19660 '****************************************************************************************************
19670 '1.数秘ナンバー 5
19680 '****************************************************************************************************
19690 play Voice$ + "Result_Kabara_5_20231112.mp3"
19700 '****************************************************************************************************
19710 '1.数秘ナンバー 5
19720 '****************************************************************************************************
19730 case 6:
19740 '****************************************************************************************************
19750 '1.数秘ナンバー 6
19760 '****************************************************************************************************
19770 play Voice$ + "Result_Kabara_6_20230607.mp3"
19780 '****************************************************************************************************
19790 '1.数秘ナンバー 6
19800 '****************************************************************************************************
19810 case 7:
19820 '****************************************************************************************************
19830 '1.数秘ナンバー 7
19840 '****************************************************************************************************
19850 play Voice$ + "Result_Kabara_7_20230607.mp3"
19860 '****************************************************************************************************
19870 '1.数秘ナンバー 7
19880 '****************************************************************************************************
19890 case 8:
19900 '****************************************************************************************************
19910 '1.数秘ナンバー 8
19920 '****************************************************************************************************
19930 play Voice$ + "Result_Kabara_8_20230607.mp3"
19940 '****************************************************************************************************
19950 '1.数秘ナンバー 8
19960 '****************************************************************************************************
19970 case 9:
19980 '****************************************************************************************************
19990 '1.数秘ナンバー 9
20000 '****************************************************************************************************
20010 play Voice$ + "Result_Kabara_9_20230607.mp3"
20020 '****************************************************************************************************
20030 '1.数秘ナンバー 9
20040 '****************************************************************************************************
20050 case 11:
20060 '****************************************************************************************************
20070 '1.数秘ナンバー 11
20080 '****************************************************************************************************
20090 play Voice$ + "Result_Kabara_11_20230607.mp3"
20100 '****************************************************************************************************
20110 '1.数秘ナンバー 11
20120 '****************************************************************************************************
20130 case 22:
20140 '****************************************************************************************************
20150 '1.数秘ナンバー 22
20160 '****************************************************************************************************
20170 play Voice$ + "Result_Kabara_22_20230607.mp3"
20180 '****************************************************************************************************
20190 '1.数秘ナンバー 22
20200 '****************************************************************************************************
20210 case 33:
20220 '****************************************************************************************************
20230 '1.数秘ナンバー 33
20240 '****************************************************************************************************
20250 play Voice$ + "Result_Kabara_33_20230607.mp3"
20260 '****************************************************************************************************
20270 '1.数秘ナンバー 33
20280 '****************************************************************************************************
20290 end select
20300 '****************************************************************************************************
20310 '
20320 '****************************************************************************************************
20330 font 48
20340 '****************************************************************************************************
20350 '
20360 '****************************************************************************************************
20370 key$ = "":bg = 0:bg2=0
20380 'COLOR rgb(255,255,255)
20390 'print "●診断結果"+chr$(13)
20400 locate 0,2
20410 if ex_info$(1)<>"JP" then
20420 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
20430 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
20440 locate 0,15:
20450 color rgb(255,255,255)
20460 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
20470 else
20480 '****************************************************************************************************
20490 'WUXG(1920x1200)の時ここから
20500 '****************************************************************************************************
20510 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
20520 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
20530 locate 0,15:
20540 color rgb(255,255,255)
20550 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
20560 endif
20570 '****************************************************************************************************
20580 'WUXG(1920x1200)の時ここまで
20590 '****************************************************************************************************
20600 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
20610 key$ = inkey$
20620 bg = strig(1)
20630 bg2 = strig(0)
20640 pause 200
20650 wend
20660 'Enter or JoyPad right
20670 if ((key$ = chr$(13)) or (bg = 2)) then
20680 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
20690 endif
20700 if ((bg2=2)) then
20710 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
20720 endif
20730 'suhiNo1 = fix(bufsuhiNo / 10)
20740 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
20750 'bufsuhiNo = suhiNo1 + suhiNo2
20760 'goto recomp:
20770 'endif
20780 'print chr$(13)
20790 'color rgb(255,0,0)
20800 'print"トップ:エンターキー,S or s:保存"+chr$(13)
20810 'key$ = input$(1)
20820 'if key$ = chr$(13) then goto Main_Screen:
20830 '"Menu2 占いのルール"
20840 Suhi_Rule:
20850 '数秘術占いルールの表示
20860 cls 3:play "":init"kb:4"
20870 '****************************************************************************************************
20880 'WUXG(1920x1200)の時ここから
20890 '****************************************************************************************************
20900 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
20910 gload Gazo$ + "downscreen.png",0,0,800
20920 '****************************************************************************************************
20930 'WUXG(1920x1200)の時ここまで
20940 '****************************************************************************************************
20950 'cls 3:
20960 'line (0,0) - (1500,60),rgb(0,0,255),bf
20970 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
20980 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
20990 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
21000 if ex_info$(1)<>"JP" then
21010 locate 0,2:Font 48
21020 print chr$(13) + chr$(13)
21030 color rgb(0,0,0)
21040 print "We will convert your birth date to a single number.";chr$(13)
21050 print "Number range: 1~9, 11, 22, 33";chr$(13)
21060 print "Example: If your birth date is 22nd November 1973";chr$(13)
21070 print "1+9+7+3+11+22=53 ";chr$(13)
21080 print "→ 5 + 3 = 8" + chr$(13)
21090 print "So, your numerology number is 8.";chr$(13)
21100 locate 0,15
21110 color rgb(255,255,255)
21120 print "Please press the right on the joystick"
21130 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
21140 else
21150 locate 0,2:Font 48
21160 print chr$(13) + chr$(13)
21170 color rgb(0,0,0)
21180 print "誕生日を単数変換します";chr$(13)
21190 print "数字の範囲:1~９,11,22,33";chr$(13)
21200 print "例:1973年11月22日の場合";chr$(13)
21210 print "1+9+7+3+11+22=53 ";chr$(13)
21220 print "→ 5 + 3 = 8" + chr$(13)
21230 print "故に8が数秘ナンバーになります";chr$(13)
21240 locate 0,15
21250 color rgb(255,255,255)
21260 print "ジョイパッドの右を押してください"
21270 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
21280 endif
21290 '"key$ = input$(1)"
21300 '"if key$ = chr$(13) then goto Main_Screen:"
21310 suhi_rule_selection:
21320 bg = 0:key$ = "":bg2=0
21330 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
21340 bg = strig(1)
21350 key$ = inkey$
21360 bg2=strig(0)
21370 pause 200
21380 wend
21390 if ((bg = 2) or (key$ = chr$(13))) then
21400 pause 200:cls 4:goto Main_Screen:
21410 endif
21420 if (bg2=2) then
21430 play "":pause 200
21440 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
21450 goto suhi_rule_selection:
21460 endif
21470 '2.設定
21480 '2-1.トップ画面に戻る
21490 Setting:
21500 cls 3:init"kb:4":font 48:No=0
21510 play ""
21520 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
21530 '****************************************************************************************************
21540 'WUXG(1920x1200)の時ここから
21550 '****************************************************************************************************
21560 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
21570 gload Gazo$ + "downscreen.png",0,0,800
21580 print chr$(13) + chr$(13) + chr$(13)
21590 '****************************************************************************************************
21600 'WUXG(1920x1200)の時ここまで
21610 '****************************************************************************************************
21620 color rgb(255,255,255):sp_on 0,1:
21630 '****************************************************************************************************
21640 'WUXG(1920x1200)の時ここから
21650 '****************************************************************************************************
21660 print "番号を選んでください" + chr$(13)
21670 print " :1.トップ画面に戻る"+ chr$(13)
21680 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
21690 print " :3.未実装" + chr$(13)
21700 print " :4.未実装" + chr$(13)
21710 color rgb(0,0,0)
21720 locate 1,15:print "1.トップ画面に戻るを選択"
21730 '****************************************************************************************************
21740 'WUXG(1920x1200)の時ここまで
21750 '****************************************************************************************************
21760 Setting_Selection:
21770 y=0:key$="":bg=0:bg2=0
21780 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
21790 y=stick(1)
21800 key$ = inkey$
21810 bg=strig(1)
21820 bg2 = strig(0)
21830 pause 200
21840 wend
21850 if ((bg = 2) or (key$ = chr$(13))) then
21860 select case No
21870 case 0:
21880 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
21890 case 1:
21900 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
21910 end select
21920 endif
21930 if (bg2 = 2) then
21940 play "":pause 200
21950 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
21960 goto Setting_Selection:
21970 endif
21980 if ((y=1) or (y=-1)) then
21990 select case No
22000 case 0:
22010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
22020 case else:
22030 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
22040 end select
22050 'ase else:
22060 endif
22070 '3.Help
22080 '3-1.ルールの表示
22090 '3-2.バージョン
22100 '3-3.トップに戻る
22110 Help:
22120 cls 3:Font 48:No=0
22130 play ""
22140 '****************************************************************************************************
22150 ''WXGAの場合　ここから (1280 x 800)
22160 '****************************************************************************************************
22170 if ((size(0)<=1280) and (size(1)<=800)) then
22180 gload Gazo$ + Gazo_WXGA$ + "TopScreen_Help_907x680_20240216.png",0,0,0
22190 '****************************************************************************************************
22200 ''WXGAの場合　ここまで (1280 x 800)
22210 '****************************************************************************************************
22220 else
22230 '****************************************************************************************************
22240 'WUXG(1920x1200)の時ここから
22250 '****************************************************************************************************
22260 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
22270 gload Gazo$ + "downscreen.png",0,0,800
22280 endif
22290 '****************************************************************************************************
22300 'WUXG(1920x1200)の時ここまで
22310 '****************************************************************************************************
22320 if ex_info$(1)<>"JP" then
22330 font FONT
22340 color rgb(255,255,255)
22350 print chr$(13)+chr$(13)+chr$(13)
22360 print "Please select a number"+chr$(13)
22370 print " :1. Rules for Explain" + chr$(13)
22380 print " :2. Display Version" + chr$(13)
22390 print " :3. References" + chr$(13)
22400 print " :4. Return to Top Screen" + chr$(13)
22410 else
22420 if ((size(0)<=1280) and (size(1)<=800)) then
22430 color rgb(255,255,255)
22440 font FONT
22450 locate 1,5
22460 print "番号を選んでください"
22470 locate 1,7
22480 print " :1.ルールの説明"
22490 locate 1,10
22500 print " :2.バージョンの表示"
22510 locate 1,13
22520 print " :3.参考文献"
22530 locate 1,16
22540 print " :4.トップ画面に戻る"
22550 else
22560 '****************************************************************************************************
22570 'WUXG(1920x1200)の時ここから
22580 '****************************************************************************************************
22590 font FONT
22600 color rgb(255,255,255)
22610 print chr$(13)+chr$(13)+chr$(13)
22620 print "番号を選んでください"+chr$(13)
22630 print " :1.ルールの説明" + chr$(13)
22640 print " :2.バージョンの表示" + chr$(13)
22650 print " :3.参考文献" + chr$(13)
22660 print " :4.トップ画面に戻る" + chr$(13)
22670 endif
22680 endif
22690 '****************************************************************************************************
22700 'WUXG(1920x1200)の時ここまで
22710 '****************************************************************************************************
22720 '************************************************************************************************
22730 '1.WXGAの場合　ここから (1280 x 800)
22740 '************************************************************************************************
22750 color rgb(0,0,0)
22760 if ((size(0) <= 1280) and (size(1) <= 800)) then
22770 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
22780 locate 1,19
22790 print "                                  "
22800 if ex_info$(1) <> "JP" then
22810 print "1. Select Rules for Explain"
22820 else
22830 if count=0 then
22840 locate 1,19
22850 print "1.ルールの説明を選択"
22860 endif
22870 endif
22880 '************************************************************************************************
22890 '1.WXGAの場合　ここまで (1280 x 800)
22900 '************************************************************************************************
22910 else
22920 '*************************************************************************************************
22930 '2.WUXG(1920x1200)の時ここから
22940 '**************************************************************************************************
22950 'color rgb(0,0,0)
22960 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
22970 locate 1,15
22980 print "                                  "
22990 if ex_info$(1) <> "JP" then
23000 print "1. Select Rules for Explain"
23010 else
23020 locate 1,15
23030 print "1.ルールの説明を選択"
23040 endif
23050 '****************************************************************************************************
23060 '2.WUXG(1920x1200)の時ここまで
23070 '****************************************************************************************************
23080 endif
23090 init"kb:4"
23100 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
23110 Help_Select:
23120 bg=0:key$="":y=0:bg2=0
23130 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
23140 y = stick(1)
23150 key$ = inkey$
23160 bg = strig(1)
23170 bg2 = strig(0)
23180 pause 200
23190 wend
23200 if ex_info$(1)<>"JP" then
23210 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
23220 if ((y = 1) or (key$ = chr$(31))) then
23230 select case No
23240 case 0:
23250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
23260 case 1:
23270 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
23280 case 2:
23290 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
23300 case 3:
23310 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
23320 end select
23330 endif
23340 '************************************************************************************************
23350 '1.WXGAの場合　ここから (1280 x 800)
23360 '************************************************************************************************
23370 if ((y = -1) or (key$ = chr$(30))) then
23380 select case No
23390 case 0:
23400 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "4.Return to Top Screen":goto Help_Select:
23410 case 1:
23420 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "1.Select Rules for Explain":goto Help_Select:
23430 case 2:
23440 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,19:print "                                        ":locate 1,19:print "2.Display Version":goto Help_Select:
23450 case 3:
23460 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,19:print "                                              ":locate 1,19:print "3.References":goto Help_Select:
23470 end select
23480 '************************************************************************************************
23490 '1.WXGAの場合　ここまで (1280 x 800)
23500 '************************************************************************************************
23510 else
23520 '****************************************************************************************************
23530 'WUXG(1920x1200)の時ここから
23540 '****************************************************************************************************
23550 if ((y = -1) or (key$ = chr$(30))) then
23560 select case No
23570 case 0:
23580 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
23590 case 1:
23600 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
23610 case 2:
23620 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
23630 case 3:
23640 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
23650 end select
23660 endif
23670 '****************************************************************************************************
23680 'WUXG(1920x1200)の時ここまで
23690 '****************************************************************************************************
23700 endif
23710 else
23720 '************************************************************************************************
23730 '1.WXGAの場合　ここから (1280 x 800)
23740 '************************************************************************************************
23750 if ((size(0) <= 1280) and (size(1) <= 800)) then
23760 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
23770 if ((y = 1) or (key$ = chr$(31))) then
23780 select case No
23790 case 0:
23800 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y + 120),1,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バージョンの表示を選択":goto Help_Select:
23810 case 1:
23820 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y + 220),2,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
23830 case 2:
23840 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y + 320),0,0:count = count + 1:beep:pause 200:locate 1,19:gosub Help_Top_ReCheck:color rgb(0,0,0):print "                                      ":locate 1,19:print "4.トップ画面に戻る":goto Help_Select:
23850 case 3:
23860 '****************************
23870 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y + 20),0,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
23880 '****************************
23890 end select
23900 endif
23910 '************************************************************************************************
23920 '1.WXGAの場合　ここまで (1280 x 800)
23930 '************************************************************************************************
23940 else
23950 '****************************************************************************************************
23960 'WUXG(1920x1200)の時ここから
23970 '****************************************************************************************************
23980 if ((y = 1) or (key$ = chr$(31))) then
23990 select case No
24000 case 0:
24010 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
24020 case 1:
24030 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
24040 case 2:
24050 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
24060 case 3:
24070 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
24080 end select
24090 endif
24100 '****************************************************************************************************
24110 'WUXG(1920x1200)の時ここまで
24120 '****************************************************************************************************
24130 endif
24140 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
24150 '************************************************************************************************
24160 '1.WXGAの場合　ここから (1280 x 800)
24170 '************************************************************************************************
24180 if ((size(0) <= 1280) and (size(1) <= 800)) then
24190 if ((y = -1) or (key$ = chr$(30))) then
24200 select case No
24210 case 0:
24220 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y+320),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Help_Select:
24230 case 1:
24240 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0,0):locate 1,15:print "                                      ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
24250 case 2:
24260 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                        ":locate 1,19:print "2.バージョンの表示を選択":goto Help_Select:
24270 case 3:
24280 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y+220),2,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
24290 end select
24300 endif
24310 '************************************************************************************************
24320 '1.WXGAの場合　ここから (1280 x 800)
24330 '************************************************************************************************
24340 else
24350 '************************************************************************************************
24360 'WUXG(1920x1200)の時ここから
24370 '************************************************************************************************
24380 if ((y = -1) or (key$ = chr$(30))) then
24390 select case No
24400 case 0:
24410 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
24420 case 1:
24430 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
24440 case 2:
24450 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
24460 case 3:
24470 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
24480 end select
24490 endif
24500 '****************************************************************************************************
24510 'WUXG(1920x1200)の時ここまで
24520 '****************************************************************************************************
24530 endif
24540 endif
24550 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
24560 if ((bg = 2) or (key$ = chr$(13))) then
24570 select case No
24580 case 0:
24590 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop: 'Suhi_Rule:
24600 case 1:
24610 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
24620 case 2:
24630 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
24640 '3:Top画面に行く
24650 case 3:
24660 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
24670 end select
24680 endif
24690 if (bg2 = 2) then
24700 play "":pause 200
24710 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
24720 goto Help_Select:
24730 endif
24740 'ルールの説明　トップ画面
24750 Suhi_Rule_explainTop:
24760 '**********************************************************
24770 cls 3:No=0
24780 play ""
24790 '****************************************************************************************************
24800 'WUXG(1920x1200)の時ここから
24810 '背景画像
24820 '****************************************************************************************************
24830 Font FONT
24840 if ((size(0) <= 1280) and (size(1) <= 800)) then
24850 gload Gazo$ + Gazo_WXGA$ + "Rule_explain_TopScreen_907x680_20240218.png",0,0,0
24860 else
24870 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
24880 gload Gazo$ + "downscreen.png",0,0,800
24890 endif
24900 '****************************************************************************************************
24910 'WUXG(1920x1200)の時ここまで
24920 '背景画像
24930 '****************************************************************************************************
24940 if ex_info$(1)<>"JP" then
24950 color rgb(255,255,255)
24960 print chr$(13)+chr$(13)+chr$(13)
24970 print "Please select a number"+chr$(13)
24980 print " :1.How to Kabara" + chr$(13)
24990 print " :2. Explain for BirdseyeGrid" + chr$(13)
25000 print " :3. Return to Top Screen" + chr$(13)
25010 else
25020 '****************************************************************************************************
25030 'WUXG(1920x1200)の時ここから
25040 '****************************************************************************************************
25050 '****************************************************************************************************
25060 'Top画面メニュー表示文字　ここから
25070 '****************************************************************************************************
25080 '***************************************************************************************************
25090 'WXGA(1200x800)の時 ここから
25100 '***************************************************************************************************
25110 if ((size(0) <= 1280) and (size(1) <= 800)) then
25120 color rgb(255,255,255)
25130 locate 1,5
25140 print "番号を選んでください"
25150 locate 1,7:    '〇
25160 print " :1.数秘術のやり方"
25170 locate 1,10:   '〇
25180 print " :2.バーズアイグリットの説明"
25190 locate 1,13:    '〇
25200 print " :3.トップ画面に戻る"
25210 '***************************************************************************************************
25220 'WXGA(1200x800)の時 ここまで
25230 '***************************************************************************************************
25240 else
25250 '***************************************************************************************************
25260 'WXGA(1200x800) 以外の時 ここから
25270 '***************************************************************************************************
25280 color rgb(255,255,255)
25290 print chr$(13)+chr$(13)+chr$(13)
25300 print "番号を選んでください"+chr$(13)
25310 print " :1.数秘術のやり方" + chr$(13)
25320 print " :2.バーズアイグリットの説明" + chr$(13)
25330 print " :3.トップ画面に戻る" + chr$(13)
25340 '***************************************************************************************************
25350 'WXGA(1200x800) 以外の時 ここまで
25360 '***************************************************************************************************
25370 '****************************************************************************************************
25380 'Top画面メニュー表示文字　ここまで
25390 '****************************************************************************************************
25400 endif
25410 '****************************************************************************************************
25420 'WUXG(1920x1200)の時ここまで
25430 '****************************************************************************************************
25440 endif
25450 color rgb(0,0,0)
25460 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
25470 locate 1,15
25480 print "                                  "
25490 if ex_info$(1) <> "JP" then
25500 print "                                  "
25510 print ":1.How to Kabara"
25520 else
25530 if ((size(0) <= 1280) and (size(1) <= 800)) then
25540 if count=0 then
25550 '****************************************************************************************************
25560 '共通部分 WXGA ここから
25570 '****************************************************************************************************
25580 locate 1,19
25590 print ":1.数秘術のやり方"
25600 '****************************************************************************************************
25610 '共通部分 WXGA ここまで
25620 '****************************************************************************************************
25630 endif
25640 else
25650 if count = 0 then
25660 '****************************************************************************************************
25670 '共通部分 WUXGA ここから
25680 '****************************************************************************************************
25690 locate 1,15
25700 print ":1.数秘術のやり方"
25710 '****************************************************************************************************
25720 '共通部分 WUXGA ここまで
25730 '****************************************************************************************************
25740 endif
25750 endif
25760 init "kb:4"
25770 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
25780 Suhi_Rule_explainTop2:
25790 bg=0:key$="":y=0:bg2=0
25800 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
25810 y = stick(1)
25820 key$ = inkey$
25830 bg = strig(1)
25840 bg2 = strig(0)
25850 pause 200
25860 wend
25870 if ex_info$(1)<>"JP" then
25880 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
25890 if ((y = 1) or (key$ = chr$(31))) then
25900 select case No
25910 case 0:
25920 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
25930 case 1:
25940 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
25950 case 2:
25960 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
25970 end select
25980 endif
25990 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
26000 if ((y = -1) or (key$ = chr$(30))) then
26010 select case No
26020 case 0:
26030 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,Y+220),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
26040 case 2:
26050 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
26060 case 3:
26070 No=0:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,Y+20),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
26080 end select
26090 endif
26100 else
26110 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
26120 '*******************************************************************************************************
26130 'WXGA 1200x 800 日本語
26140 '*******************************************************************************************************
26150 if ((size(0) <= 1280) and (size(1) <= 800)) then
26160 if ((y = 1) or (key$ = chr$(31))) then
26170 select case No
26180 case 0:
26190 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(x,Y+120),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
26200 case 1:
26210 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
26220 case 2:
26230 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
26240 end select
26250 endif
26260 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
26270 if ((y = -1) or (key$ = chr$(30))) then
26280 select case No
26290 case 0:
26300 No=2:sp_on 1,0:sp_on 0,0:sp_on 2,1:sp_on 0,0:sp_put 2,(5,Y+220),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
26310 case 1:
26320 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                        ":locate 1,19:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
26330 case 2:
26340 No=1:sp_on 1,1:sp_on 1,0:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y+120),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
26350 end select
26360 endif
26370 endif
26380 '*******************************************************************************************************
26390 'WXGA 1200x 800 ここまで 日本語
26400 '*******************************************************************************************************
26410 else
26420 '*******************************************************************************************************
26430 'WXGA 1200x 800 以外　ここから
26440 '*******************************************************************************************************
26450 if ((y = 1) or (key$ = chr$(31))) then
26460 select case No
26470 case 0:
26480 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
26490 case 1:
26500 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
26510 case 2:
26520 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
26530 end select
26540 endif
26550 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
26560 if ((y = -1) or (key$ = chr$(30))) then
26570 select case No
26580 case 0:
26590 No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
26600 case 1:
26610 No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
26620 case 2:
26630 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
26640 end select
26650 endif
26660 endif
26670 '******************************************************************************************************
26680 'WXGA 1200x 800 以外　ここまで
26690 '******************************************************************************************************
26700 endif
26710 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
26720 '*******************************************************************************************************
26730 '決定ボタンを押したときの処理　共通部分　ここから
26740 '********************************************************************************************************
26750 '********************************************************************************************************
26760 'bg:右の丸ボタン　chr$(13):Enter Key
26770 '********************************************************************************************************
26780 if ((bg = 2) or (key$ = chr$(13))) then
26790 select case No
26800 case 0:
26810 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule: ' 1.数秘ルールの説明
26820 case 1:
26830 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain1: '2.バーズアイグリットの説明
26840 '3:Top画面に行く
26850 case 2:
26860 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen: '3.メイン画面に行く
26870 end select
26880 endif
26890 '********************************************************************************************************
26900 '決定ボタンを押したときの処理　共通部分　ここまで
26910 '*********************************************************************************************************
26920 if (bg2 = 2) then
26930 play "":pause 200
26940 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
26950 goto Suhi_Rule_explainTop2:
26960 endif
26970 '**********************************************************
26980 'バーズアイグリットの説明1
26990 'Help-
27000 '**********************************************************
27010 BirdsEyeGrid_Explain1:
27020 '●.初期設定
27030 cls 3:Font 48:No=0:bg=0:key$="":bg2=0
27040 play "":'音を停める
27050 'バーズアイグリット基本チャートを表示　　ここから
27060 if ex_info$(1) <> "JP" then
27070 '英語ファイル
27080 else
27090 '****************************************************************************************************
27100 'WUXG(1920x1200)の時ここから
27110 '****************************************************************************************************
27120 '日本語ファイル
27130 gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png",0,0,0
27140 '****************************************************************************************************
27150 'WUXG(1920x1200)の時ここまで
27160 '****************************************************************************************************
27170 'バーズアイグリット基本チャートを表示　　ここまで
27180 endif
27190 'ジョイパッドの右で次へ行く
27200 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
27210 key$ = inkey$
27220 bg = strig(1)
27230 bg2 = strig(0)
27240 pause 200
27250 wend
27260 if (bg=2 or key$=chr$(13)) then
27270 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
27280 'goto バーズアイグリット説明の2番目に行く
27290 end
27300 endif
27310 if (bg2 = 2 or key$ = "") then
27320 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
27330 'goto Top画面に行く
27340 goto Main_Screen:
27350 'end
27360 endif
27370 '**********************************************************
27380 'バーズアイグリットの説明2
27390 'Help-
27400 '**********************************************************
27410 BirdsEyeGrid_Explain2:
27420 '●.初期設定
27430 cls 3:Font 48:No = 0:bg = 0:key$ = "":bg2 = 0
27440 play "":'音を停める
27450 'バーズアイグリット基本チャートを表示　　ここから
27460 if ex_info$(1) <> "JP" then
27470 '英語ファイル
27480 else
27490 '日本語ファイル
27500 '****************************************************************************************************
27510 'WUXG(1920x1200)の時ここから
27520 '****************************************************************************************************
27530 gload Gazo$ + "BirdsEyeGrid_Exaple1_Chart_20240202.png",0,0,0
27540 '****************************************************************************************************
27550 'WUXG(1920x1200)の時ここまで
27560 '****************************************************************************************************
27570 'バーズアイグリット基本チャートを表示　　ここまで
27580 endif
27590 'ジョイパッドの右で次へ行く
27600 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
27610 key$ = inkey$
27620 bg = strig(1)
27630 bg2 = strig(0)
27640 pause 200
27650 wend
27660 if (bg = 2 or key$ = chr$(13)) then
27670 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
27680 'goto バーズアイグリット説明の3番目に行く
27690 end
27700 endif
27710 if (bg2 = 2 or key$ = "") then
27720 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
27730 'goto Top画面に行く
27740 goto Main_Screen:
27750 'end
27760 endif
27770 '**********************************************************
27780 '数秘術占い　トップ画面
27790 Kabara_TopScreen:
27800 cls 3:play ""
27810 '****************************************************************************************************
27820 'WUXG(1920x1200)の時ここから
27830 '****************************************************************************************************
27840 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
27850 gload Gazo$ + "downscreen.png",0,0,800
27860 '****************************************************************************************************
27870 'WUXG(1920x1200)の時ここまで
27880 '****************************************************************************************************
27890 play Voice$ + "KabaraTop_Selection_20230721.mp3"
27900 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
27910 init"kb:4":No=0
27920 if ex_info$(1)<>"JP" then
27930 color rgb(255,255,255)
27940 print chr$(13)+chr$(13)+chr$(13)
27950 print "Please select a number" + chr$(13)
27960 print " :1.Numerology" + chr$(13)
27970 print " :2.Bird's Eye Grid" + chr$(13)
27980 print " :3.Compatibility Divination" + chr$(13)
27990 print " :4.Return to Top Screen" + chr$(13)
28000 color rgb(0,0,0)
28010 locate 1,15:print "1. Select Numerology"
28020 else
28030 '****************************************************************************************************
28040 'WUXG(1920x1200)の時ここから
28050 '****************************************************************************************************
28060 color rgb(255,255,255)
28070 print chr$(13)+chr$(13)+chr$(13)
28080 print "番号を選んでください" + chr$(13)
28090 print " :1.数秘術占い" + chr$(13)
28100 print " :2.バーズアイグリット" + chr$(13)
28110 print " :3.相性占い" + chr$(13)
28120 print " :4.トップ画面に戻る" + chr$(13)
28130 color rgb(0,0,0)
28140 locate 1,15:print "1.数秘術占いを選択"
28150 '****************************************************************************************************
28160 'WUXG(1920x1200)の時ここまで
28170 '****************************************************************************************************
28180 endif
28190 Kabara_TopScreen2:
28200 y = 0:bg = 0:key$ = "":bg2 = 0
28210 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
28220 key$ = inkey$
28230 bg = strig(1)
28240 y = stick(1)
28250 bg2 = strig(0)
28260 pause 200
28270 wend
28280 '選択ボタン
28290 'カーソル下 　と　ジョイパッド　の下
28300 if ex_info$(1)<>"JP" then
28310 if ((y = 1) or (key$ = chr$(31))) then
28320 select case No
28330 case 2:
28340 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
28350 case 3:
28360 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
28370 case 0:
28380 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
28390 case 1:
28400 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
28410 end select
28420 endif
28430 else
28440 if ((y = 1) or (key$ = chr$(31))) then
28450 select case No
28460 case 2:
28470 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
28480 case 3:
28490 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
28500 case 0:
28510 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
28520 case 1:
28530 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
28540 end select
28550 endif
28560 'カーソル　上  or  ジョイパッド　上
28570 if ((y=-1) or (key$=chr$(30))) then
28580 select case No
28590 case 0:
28600 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
28610 case 1:
28620 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
28630 case 2:
28640 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
28650 case 3:
28660 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
28670 end select
28680 endif
28690 endif
28700 '決定ボタン
28710 'ジョイパッドの右　or  Enter key
28720 if ((bg = 2) or (key$ = chr$(13))) then
28730 select case No
28740 case 0:
28750 '1.数秘術占い
28760 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
28770 case 3:
28780 '4.メイン画面にいく
28790 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
28800 case 1:
28810 '2.バースアイグリッド
28820 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
28830 case 2:
28840 '3.相性占い
28850 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
28860 end select
28870 endif
28880 if (bg2 = 2) then
28890 play "":pause 200
28900 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
28910 goto Kabara_TopScreen2:
28920 endif
28930 '1.バースアイグリット　名入力
28940 Inputname1:
28950 cls 3:init"kb:4":
28960 '****************************************************************************************************
28970 'WUXG(1920x1200)の時ここから
28980 '****************************************************************************************************
28990 font 48
29000 bg=0:key$="":y=0:No=-1:name1$="":i=1
29010 gload Gazo$ + "Selection.png",1,10,100
29020 'Line 1:☓
29030 'A:選択肢
29040 sp_def 15,(50,250),16,16
29050 'B:選択肢
29060 sp_def 16,(200,250),16,16
29070 'C:選択肢
29080 sp_def 17,(350,250),16,16
29090 'D:選択肢
29100 sp_def 18,(500,250),16,16
29110 'E:選択肢
29120 sp_def 19,(630,250),16,16
29130 'F:選択肢
29140 sp_def 20,(780,250),16,16
29150 'G:選択肢
29160 sp_def 21,(930,250),16,16
29170 'Line 2:☓
29180 'H:選択肢
29190 sp_def 22,(50,345),16,16
29200 'I:選択肢
29210 sp_def 23,(200,345),16,16
29220 'J:選択肢
29230 sp_def 24,(350,345),16,16
29240 'K:選択肢
29250 sp_def 25,(500,345),16,16
29260 'L:選択肢
29270 sp_def 26,(630,345),16,16
29280 'M:選択肢
29290 sp_def 27,(780,345),16,16
29300 'N:選択肢
29310 sp_def 28,(930,345),16,16
29320 'Line 3:☓
29330 'O:選択肢
29340 sp_def 29,(50,440),16,16
29350 'P:選択肢
29360 sp_def 30,(200,440),16,16
29370 'Q:選択肢
29380 sp_def 31,(350,440),16,16
29390 'R:選択肢
29400 sp_def 32,(500,440),16,16
29410 'S:選択肢
29420 sp_def 33,(630,440),16,16
29430 'T:選択肢
29440 sp_def 34,(780,440),16,16
29450 'U:選択肢
29460 sp_def 35,(930,440),16,16
29470 'Line 4:◯
29480 'V:選択肢
29490 sp_def 36,(50,535),16,16
29500 'W:選択肢
29510 sp_def 37,(200,535),16,16
29520 'X:選択肢
29530 sp_def 38,(350,535),16,16
29540 'Y:選択肢
29550 sp_def 39,(500,535),16,16
29560 'Z:選択肢
29570 sp_def 40,(630,535),16,16
29580 'Ok:選択肢
29590 sp_def 41,(780,535),16,16
29600 'sp_def 42,(930,535),16,16
29610 'Line 1
29620 'A
29630 sp_on 15,0
29640 'B
29650 sp_on 16,0
29660 'C
29670 sp_on 17,0
29680 'D
29690 sp_on 18,0
29700 'E
29710 sp_on 19,0
29720 'F
29730 sp_on 20,0
29740 'G
29750 sp_on 21,0
29760 'Line 1
29770 'Line 2
29780 'H
29790 sp_on 22,0
29800 'I
29810 sp_on 23,0
29820 'J
29830 sp_on 24,0
29840 'K
29850 sp_on 25,0
29860 'L
29870 sp_on 26,0
29880 'M
29890 sp_on 27,0
29900 'N
29910 sp_on 28,0
29920 'Line 2
29930 'Line 3
29940 'O
29950 sp_on 29,0
29960 'P
29970 sp_on 30,0
29980 'Q
29990 sp_on 31,0
30000 'R
30010 sp_on 32,0
30020 'S
30030 sp_on 33,0
30040 'T
30050 sp_on 34,0
30060 'U
30070 sp_on 35,0
30080 'Line 3
30090 'Line 4
30100 'V
30110 sp_on 36,0
30120 'W
30130 sp_on 37,0
30140 'X
30150 sp_on 38,0
30160 'Y
30170 sp_on 39,0
30180 'Z
30190 sp_on 40,0
30200 'Ok
30210 sp_on 41,1
30220 '****************************************************************************************************
30230 'WUXG(1920x1200)の時ここまで
30240 '****************************************************************************************************
30250 'Line 4
30260 'sp_on 42,1
30270 'Line 1
30280 'sp_put 15,(50,250),0,0
30290 'sp_put 16,(200,250),0,0
30300 'sp_put 17,(350,250),0,0
30310 'sp_put 18,(500,250),0,0
30320 'sp_put 19,(630,250),0,0
30330 'sp_put 20,(780,250),0,0
30340 'sp_put 21,(930,250),0,0
30350 'Line 2
30360 'sp_put 22,(50,345),0,0
30370 'sp_put 23,(200,345),0,0
30380 'sp_put 24,(350,345),0,0
30390 'sp_put 25,(500,345),0,0
30400 'sp_put 26,(630,345),0,0
30410 'sp_put 27,(780,345),0,0
30420 'sp_put 28,(930,345),0,0
30430 'Line 3
30440 'sp_put 29,(50,440),0,0
30450 'sp_put 30,(200,440),0,0
30460 'sp_put 31,(350,440),0,0
30470 'sp_put 32,(500,440),0,0
30480 'sp_put 33,(630,440),0,0
30490 'sp_put 34,(780,440),0,0
30500 'sp_put 35,(930,440),0,0
30510 'Line 4
30520 'sp_put 36,(50,535),0,0
30530 'sp_put 37,(200,535),0,0
30540 'sp_put 38,(350,535),0,0
30550 'sp_put 39,(500,535),0,0
30560 'sp_put 40,(630,535),0,0
30570 sp_put 41,(780,535),0,0
30580 'sp_put 42,(930,536),0,0
30590 gload Gazo$ + "Screen1.png",0,0,0
30600 color rgb(255,255,255)
30610 locate 1,3
30620 print "名前の姓をアルファベットで入力してください"
30630 locate 1,5
30640 print " A  B  C  D  E  F  G"
30650 locate 1,7
30660 print " H  I  J  K  L  M  N"
30670 locate 1,9
30680 print " O  P  Q  R  S  T  U"
30690 locate 1,11
30700 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
30710 locate 1,15:color rgb(0,0,0)
30720 print "名前の姓:" + name1$
30730 select_name1:
30740 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
30750 '有効ボタン
30760 '1.決定ボタン(bg:2)
30770 '2.Enter Key$:chr$(13)
30780 '3.カーソル上 (chr$(31))
30790 '4.カーソル　左 (chr$(29))
30800 '5.ジョイパッド　上 (y:1)
30810 '6:ジョイパッド　左 (y2:-1)
30820 '7:ジョイパッド　下 (y:-1)
30830 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
30840 key$ = inkey$
30850 'ジョイパッドの決定:bg
30860 bg = strig(1)
30870 y = stick(1)
30880 y2 = stick(0)
30890 pause 200
30900 wend
30910 '====================================
30920 'Birds Eye Grid 名前入力
30930 '入力スタイル　アルファベット入力
30940 'sp_on:　スプライトのオンオフ
30950 'sp_put :表示位置
30960 'No:ボタン番号
30970 '====================================
30980 'カーソルで下に行く
30990 if ((y=-1) or (key$=chr$(31))) then
31000 select case No
31010 '1.Ok ボタン
31020 'sp_on スプライトのオンオフ
31030 'sp_put スプライトを表示
31040 case -1:
31050 '1.アルファベット　入力ボタン
31060 '実装未完全なので終了
31070 'Ok → T ○ :No:20=T
31080 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
31090 'T  → M ○
31100 case 20:
31110 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
31120 'M  →　F ○
31130 case 13:
31140 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
31150 'F  → Ok
31160 case 6:
31170 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
31180 end select
31190 endif
31200 '2.決定ボタン
31210 if ((key$ = chr$(13)) OR  (bg = 2)) then
31220 select case No
31230 case -1:
31240 'スプライトをOFFにする
31250 sp_on 41,0
31260 end select
31270 endif
31280 '3.カーソル　左
31290 if (key$ = chr$(29) or (y2 =-1)) then
31300 select case No
31310 'Line 4
31320 'Line 4
31330 '1.
31340 'Z:-1 :Ok ボタン
31350 'Ok → Z
31360 case -1:
31370 'Ok →　Z
31380 'Ok ボタン OFF,Z Button ON
31390 'No=26:Z
31400 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
31410 '2.
31420 '26:Zボタン Z→ Y
31430 case 26:
31440 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
31450 '3.
31460 '25:Yボタン  Y → X
31470 case 25:
31480 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
31490 '4
31500 '24:Xボタン X → W
31510 case 24:
31520 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
31530 '23:Wボタン X → W
31540 '5
31550 case 23:
31560 '22:Vボタン W → V
31570 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
31580 case 22:
31590 '-1:V→ Ok
31600 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
31610 'Line 3
31620 case 20:
31630 '33:T34  → S:33 :◯
31640 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
31650 case 19:
31660 '32:S:33 → R:32 :◯
31670 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
31680 case 18:
31690 '31:R:32 → Q:31 :◯
31700 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
31710 '30:O → P :◯
31720 case 17:
31730 '30:Q:31 → P:30 :◯
31740 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
31750 case 16:
31760 '29:P:30 → O:29 :◯
31770 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
31780 case 15:
31790 '28:O:29 → U:21  :◯
31800 'O:OFF,U:ON
31810 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
31820 '27:U:21 → T:20  :◯
31830 case 21:
31840 'U:OFF:T:ON
31850 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
31860 'Line 2
31870 '26:M:13 → L:12 : ○
31880 case 13:
31890 'M:OFF,L:ON
31900 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
31910 '25:L:12 → K:11 : ○
31920 case 12:
31930 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
31940 '24:K:11 → J:10 : ○
31950 case 11:
31960 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
31970 '23:J:10 → I:9  : ○
31980 case 10:
31990 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
32000 '22:I:9 → H:8    :○
32010 case 9:
32020 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
32030 '21:H:8 → N:14:   :○
32040 case 8:
32050 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
32060 '20:N:14 → M:13:   :○
32070 case 14:
32080 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
32090 '●.Line 1:
32100 '19:F:20 → E:19 : ☓
32110 'F:OFF,E:ON
32120 case 6:
32130 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
32140 '18:E → D
32150 'E:OFF,D:ON
32160 case 5:
32170 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
32180 '17:D → C
32190 'D:OFF,C:ON
32200 case 4:
32210 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
32220 case 3:
32230 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
32240 case 2:
32250 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
32260 case 1:
32270 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
32280 case 7:
32290 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
32300 end select
32310 endif
32320 '上から下の方向
32330 if ((key$ = chr$(31)) or  (y = 1)) then
32340 select case No
32350 '●.1
32360 '1:A→H
32370 case 1:
32380 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
32390 '2:H→O
32400 case 8:
32410 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
32420 '3:O→V
32430 case 15:
32440 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
32450 '4:V→A
32460 case 22:
32470 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
32480 '●.2
32490 '5.B→I
32500 case 2:
32510 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
32520 '6.I→P
32530 case 9:
32540 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
32550 '7.P→W
32560 case 16:
32570 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
32580 '8.W→B
32590 case 23:
32600 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
32610 '●.3
32620 '9.C→J
32630 case 3:
32640 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
32650 '10.J→Q
32660 case 10:
32670 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
32680 '11.Q→X
32690 case 17:
32700 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
32710 '12.X→C
32720 case 24:
32730 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
32740 '●.4
32750 '13.D→K
32760 case 4:
32770 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
32780 '14.K→R
32790 case 11:
32800 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
32810 '15.R→Y
32820 case 18:
32830 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
32840 '16.Y→D
32850 case 25:
32860 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
32870 '●.5
32880 '17.E→L
32890 case 5:
32900 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
32910 '18.L→S
32920 case 12:
32930 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
32940 '19.S→Z
32950 case 19:
32960 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
32970 '20.Z→E
32980 case 26:
32990 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
33000 '●.6
33010 '21.F→M
33020 case 6:
33030 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
33040 '22.M→T
33050 case 13:
33060 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
33070 '23.T→Ok
33080 case 20:
33090 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
33100 '24.Ok→F
33110 case -1:
33120 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
33130 '●.7
33140 '25.G→N
33150 case 7:
33160 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
33170 '26.N→U
33180 case 14:
33190 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
33200 '27.U→G
33210 case 21:
33220 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
33230 end select
33240 endif
33250 '決定ボタン　で名前の姓に文字を追加。
33260 if (key$ = chr$(13) or bg = 2) then
33270 select case No
33280 'Okボタン
33290 case -1:
33300 goto Inputname2:
33310 'Aの文字
33320 case 1:
33330 'if len(n$)=0 then
33340 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
33350 'else
33360 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
33370 'endif
33380 goto select_name1:
33390 case 2:
33400 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
33410 end select
33420 endif
33430 Input_name1_Birdseye:
33440 cls 3:init "kb:2":play ""
33450 gload Gazo$ + "Input_Birtheye2.png",0,0,0
33460 if ex_info$(1)<>"JP" then
33470 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
33480 color rgb(0,0,255)
33490 locate 1,2:print "Please enter your name in English"
33500 color rgb(0,0,0)
33510 locate 1,5:Input "Name (Surname):",name1$
33520 else
33530 '****************************************************************************************************
33540 '共通部分　ここから
33550 '****************************************************************************************************
33560 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
33570 color rgb(0,0,255)
33580 locate 1,2:print "名前をアルファベットで入れてください"
33590 color rgb(0,0,0)
33600 locate 1,5:Input "名前（姓の部分）:",name1$
33610 '****************************************************************************************************
33620 '共通部分　ここまで
33630 '****************************************************************************************************
33640 endif
33650 '27.U→G
33660 'locate 1,5:print "Hit any key"
33670 n1 = len(name1$)
33680 if (n1 < 11) then
33690 for i=1 to n1
33700 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
33710 next i
33720 endif
33730 goto Inputname2:
33740 '2.グリッドアイ　姓の入力
33750 'end
33760 Inputname2:
33770 cls 3:init"kb:2":font 48:play ""
33780 gload Gazo$ + "Input_Birtheye1.png",0,0,0
33790 if ex_info$(1)<>"JP" then
33800 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
33810 color rgb(0,0,255)
33820 locate 1,2:print "Please enter your name in English"
33830 color rgb(0,0,0)
33840 locate 1,5:Input "Name (First name):",name2$
33850 n2 = len(name2$)
33860 for i=1 to n2
33870 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
33880 next i
33890 else
33900 '****************************************************************************************************
33910 '共通部分　ここから
33920 '****************************************************************************************************
33930 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
33940 color rgb(0,0,255)
33950 locate 1,2:print "名前をアルファベットで入れてください"
33960 color rgb(0,0,0)
33970 locate 1,5:Input "名前(名の部分):",name2$
33980 n2 = len(name2$)
33990 for i=1 to n2
34000 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
34010 next i
34020 '****************************************************************************************************
34030 '共通部分　ここまで
34040 '****************************************************************************************************
34050 endif
34060 '****************************************************************************************************
34070 '計算領域　ここから
34080 '****************************************************************************************************
34090 Complate:
34100 'name1
34110 for i=0 to 25
34120 for n=1 to len(name1$)
34130 if (buf_chart$(i,0) = buf_name1$(n-1)) then
34140 b = val(buf_chart$(i,1))
34150 buffer(b-1) = buffer(b-1) + 1
34160 endif
34170 next n
34180 next i
34190 'name2
34200 for i=0 to 25
34210 for n=1 to len(name2$)
34220 if (buf_chart$(i,0) = buf_name2$(n-1)) then
34230 c = val(buf_chart$(i,1))
34240 buffer(c - 1) = buffer(c - 1) + 1
34250 endif
34260 next n
34270 next i
34280 '****************************************************************************************************
34290 '計算領域 ここまで
34300 '****************************************************************************************************
34310 '****************************************************************************************************
34320 '結果表示領域
34330 '****************************************************************************************************
34340 Result_Birtheye1:
34350 cls 3:init"kb:4":No=0:play "":'音を止める
34360 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
34370 gload Gazo$ + "downscreen.png",0,0,800
34380 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
34390 color rgb(255,255,255)
34400 '1の表示
34410 locate 3,14:print buffer(0);
34420 '2の表示
34430 locate 3,9:print buffer(1);
34440 '3の表示
34450 locate 3,5:print buffer(2);
34460 '4の表示
34470 locate 10,14:print buffer(3);
34480 '5の表示
34490 locate 10,9:print buffer(4);
34500 '6の表示
34510 locate 10,5:print buffer(5);
34520 '7の表示
34530 locate 15,14:print buffer(6);
34540 '8の表示
34550 locate 15,9:print buffer(7);
34560 '9の表示
34570 locate 15,5:print buffer(8);
34580 'name を大文字に変換
34590 locate 5,3:print ucase$(name1$ + name2$)
34600 color rgb(0,0,0)
34610 'bg:右のボタン  ,bg2:左のボタン
34620 if ex_info$(1)<>"JP" then
34630 color rgb(255,255,255)
34640 print "Left circle: Main Screen, Right circle: Open Menu"
34650 else
34660 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
34670 endif
34680 bg=0:key$="":bg2=0
34690 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
34700 'Enterと決定ボタン
34710 key$ = inkey$
34720 '右ボタン:1
34730 bg = strig(1)
34740 '左の丸ボタン:0
34750 bg2=strig(0)
34760 pause 200
34770 wend
34780 if ((bg=2) or (key$=chr$(13))) then
34790 'データーをクリアしてトップ画面に行く
34800 'for i=0 to 8
34810 'buffer(i)=0
34820 'next i
34830 'for n=0 to 9
34840 'buf_name1$(n) = ""
34850 'buf_name2$(n) = ""
34860 'next n
34870 'Topに行く
34880 'goto Main_Screen:
34890 'メニューを開く
34900 'goto BirdsEye_Result2:
34910 'Menu(ui_select) リストに飛ぶ
34920 goto Result_Birtheye_List1:
34930 endif
34940 if (bg2=2) then
34950 'データーをクリアする
34960 for i=0 to 8
34970 buffer(i)=0
34980 next i
34990 for n=0 to 9
35000 buf_name1$(n)=""
35010 buf_name2$(n)=""
35020 next n
35030 goto Main_Screen:
35040 endif
35050 'goto Result_Birtheye1:
35060 'Result_Birtheye2:
35070 'cls 3:color rgb(255,255,255)
35080 'end
35090 'Memory 消去
35100 '****************************************************************************************************
35110 '結果表示領域　ここまで
35120 '****************************************************************************************************
35130 '横のフォーカスライン
35140 BirdsEye_Result2:
35150 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
35160 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
35170 Forcus1_buffer$(2)="○"
35180 else
35190 Forcus1_buffer$(2)="☓"
35200 endif
35210 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
35220 Forcus1_buffer$(1)="○"
35230 else
35240 Forcus1_buffer$(1) = "☓"
35250 endif
35260 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
35270 Forcus1_buffer$(0)="○"
35280 else
35290 Forcus1_buffer$(0)="☓"
35300 endif
35310 gload Gazo$ + "Screen1.png",0,0,0
35320 if ex_info$(1)<>"JP" then
35330 color rgb(255,0,0):
35340 locate 1,1
35350 print "Bird's Eye Grid (Focus Line 1)"
35360 color rgb(255,255,255)
35370 locate 1,3:
35380 print "●. Horizontal Focus Line"
35390 locate 1,5
35400 print "1. Sharp Line:"+Forcus1_buffer$(2)
35410 locate 1,7
35420 print "2. Mediator Line:"+Forcus1_buffer$(1)
35430 locate 1,9
35440 print "3. Steady Line:"+Forcus1_buffer$(0)
35450 color rgb(0,0,0)
35460 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
35470 else
35480 color rgb(255,0,0):
35490 locate 1,1
35500 print "バーズアイグリッド(フォーカスライン1)"
35510 color rgb(255,255,255)
35520 locate 1,3:
35530 print "●.横のフォーカスライン"
35540 locate 1,5
35550 print "1.切れ者ライン:"+Forcus1_buffer$(2)
35560 locate 1,7
35570 print "2.調停者ライン:"+Forcus1_buffer$(1)
35580 locate 1,9
35590 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
35600 color rgb(0,0,0)
35610 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
35620 endif
35630 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
35640 key$ = inkey$
35650 bg = strig(1)
35660 bg2 = strig(0)
35670 pause 200
35680 wend
35690 if ((bg=2) or (key$=chr$(13))) then
35700 goto BirdsEye_Result3:
35710 endif
35720 if (bg2=2) then
35730 for i=0 to 8
35740 buffer(i)=0
35750 next i
35760 goto Main_Screen:
35770 endif
35780 BirdsEye_Result3:
35790 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
35800 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
35810 Forcus2_buffer$(2)="○"
35820 else
35830 Forcus2_buffer$(2)="☓"
35840 endif
35850 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
35860 Forcus2_buffer$(1)="○"
35870 else
35880 Forcus2_buffer$(1) = "☓"
35890 endif
35900 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
35910 Forcus2_buffer$(0)="○"
35920 else
35930 Forcus2_buffer$(0)="☓"
35940 endif
35950 gload Gazo$ + "Screen1.png",0,0,0
35960 if ex_info$(1)<>"JP" then
35970 color rgb(255,0,0):
35980 locate 1,1
35990 print "Bird's Eye Grid (Focus Line 2)"
36000 color rgb(255,255,255)
36010 locate 1,3
36020 print "●. Vertical Focus Line"
36030 locate 1,5
36040 print "1. Expresser Line:" + Forcus2_buffer$(2)
36050 locate 1,7
36060 print "2. Commander Line:" + Forcus2_buffer$(1)
36070 locate 1,9
36080 print "3. Leader Line:" + Forcus2_buffer$(0)
36090 color rgb(0,0,0)
36100 locate 0,15:print "Right circle: Next, Left circle: Retest "
36110 else
36120 '****************************************************************************************************
36130 'WUXG(1920x1200)の時ここから
36140 '****************************************************************************************************
36150 color rgb(255,0,0):
36160 locate 1,1
36170 print "バーズアイグリッド(フォーカスライン2)"
36180 color rgb(255,255,255)
36190 locate 1,3
36200 print "●.縦のフォーカスライン"
36210 locate 1,5
36220 print "1.表現者ライン:" + Forcus2_buffer$(2)
36230 locate 1,7
36240 print "2.司令塔ライン:" + Forcus2_buffer$(1)
36250 locate 1,9
36260 print "3.指導者ライン:" + Forcus2_buffer$(0)
36270 color rgb(0,0,0)
36280 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
36290 '****************************************************************************************************
36300 'WUXG(1920x1200)の時ここから
36310 '****************************************************************************************************
36320 endif
36330 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
36340 key$ = inkey$
36350 bg = strig(1)
36360 bg2 = strig(0)
36370 pause 200
36380 wend
36390 if ((bg = 2) or (key$ = chr$(13))) then
36400 goto BirdsEye_Result4:
36410 endif
36420 if (bg2=2) then
36430 for i=0 to 8
36440 buffer(i)=0
36450 next i
36460 goto Main_Screen:
36470 endif
36480 BirdsEye_Result4:
36490 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
36500 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
36510 Forcus3_buffer$(1) = "○"
36520 else
36530 Forcus3_buffer$(1) = "☓"
36540 endif
36550 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
36560 Forcus3_buffer$(0) = "○"
36570 else
36580 Forcus3_buffer$(0) = "☓"
36590 endif
36600 gload Gazo$ + "Screen1.png",0,0,0
36610 if ex_info$(1)<>"JP" then
36620 color rgb(255,0,0):
36630 locate 1,1
36640 print "Bird's Eye Grid (Focus Line 3)"
36650 color rgb(255,255,255)
36660 locate 1,3:
36670 print "●. Diagonal Focus Line"
36680 locate 1,5
36690 print "1. Success Line:"+Forcus3_buffer$(1)
36700 locate 1,7
36710 print "2. Celebrity Line:"+Forcus3_buffer$(0)
36720 color rgb(0,0,0)
36730 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
36740 else
36750 '****************************************************************************************************
36760 'WUXG(1920x1200)の時ここから
36770 '****************************************************************************************************
36780 color rgb(255,0,0):
36790 locate 1,1
36800 print "バーズアイグリッド(フォーカスライン3)"
36810 color rgb(255,255,255)
36820 locate 1,3:
36830 print "●.斜めのフォーカスライン"
36840 locate 1,5
36850 print "1.成功者ライン:"+Forcus3_buffer$(1)
36860 locate 1,7
36870 print "2.セレブライン:"+Forcus3_buffer$(0)
36880 color rgb(0,0,0)
36890 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
36900 '*************************************************************************************************
36910 'WUXG(1920x1200)の時ここまで
36920 '*************************************************************************************************
36930 endif
36940 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
36950 key$ = inkey$
36960 bg = strig(1)
36970 bg2 = strig(0)
36980 pause 200
36990 wend
37000 if ((bg=2) or (key$=chr$(13))) then
37010 goto Result_Birtheye1:
37020 endif
37030 if (bg2=2) then
37040 'データークリア
37050 for i=0 to 8
37060 buffer(i) = 0
37070 next i
37080 goto Main_Screen:
37090 endif
37100 References1:
37110 cls 3:key$ = "":bg = 0:play "":font 48-8
37120 gload Gazo$ + "Reference1_20230703.png",0,0,0
37130 gload Gazo$ + "downscreen.png",0,0,800
37140 if ex_info$(1)<>"JP" then
37150 print chr$(13)+chr$(13)+chr$(13)
37160 color rgb(0,0,255)
37170 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
37180 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
37190 print "・Publisher: Gento-sha" + chr$(13)
37200 print "・Website: www.carolAdrienne.jp/" + chr$(13)
37210 print "・ISBN: 978-4-344-01394-0" + chr$(13)
37220 print "・Price: 1500 yen + tax" + chr$(13)
37230 color rgb(255,255,255)
37240 locate 1,18
37250 print "Right joystick: Next"
37260 else
37270 '****************************************************************************************************
37280 'WUXG(1920x1200)の時ここから
37290 '****************************************************************************************************
37300 print chr$(13)+chr$(13)+chr$(13)
37310 color rgb(0,0,255)
37320 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
37330 print "・Author:carol Adrinne,PhD"+chr$(13)
37340 print "・出版社:幻冬舎" + chr$(13)
37350 print "・HP:www.carolAdrienne.jp/"+chr$(13)
37360 print "・ISBN:978-4-344-01394-0"+chr$(13)
37370 print "・定価:1500円 + 税"+chr$(13)
37380 color rgb(255,255,255)
37390 locate 1,18
37400 print "ジョイパッド右：次へ"
37410 '****************************************************************************************************
37420 'WUXG(1920x1200)の時ここまで
37430 '****************************************************************************************************
37440 endif
37450 while (key$ <> chr$(13) and bg <> 2)
37460 bg = strig(1)
37470 key$ = inkey$
37480 pause 200
37490 wend
37500 '
37510 if ((bg = 2) or (key$ = chr$(13))) then
37520 pause 200:goto References2:
37530 endif
37540 'ユダヤの秘儀 カバラ大占術
37550 References2:
37560 cls 3:play "":bg = 0:key$ = ""
37570 gload Gazo$ + "Reference2_20230703.png",0,0,0
37580 gload Gazo$ + "downscreen.png",0,0,800
37590 '参考文献２
37600 'カバラ大占術
37610 if ex_info$(1)<>"JP" then
37620 print chr$(13) + chr$(13) + chr$(13)
37630 color  rgb(0,0,255):font 48-8
37640 locate 1,3
37650 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
37660 print "・Author: Hironari Asano" + chr$(13)
37670 print "・Publisher: NON BOOK" + chr$(13)
37680 print "・ISBN: 4-396-10364-6" + chr$(13)
37690 print "・Price: 829 yen + tax"
37700 color rgb(255,255,255)
37710 locate 1,18
37720 print "Right joystick: Return to top"
37730 else
37740 '****************************************************************************************************
37750 'WUXG(1920x1200)の時ここから
37760 '****************************************************************************************************
37770 print chr$(13) + chr$(13) + chr$(13)
37780 color  rgb(0,0,255):font 48-8
37790 locate 1,3
37800 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
37810 print "・著者：浅野　八郎" + chr$(13)
37820 print "・出版社:NON BOOK" + chr$(13)
37830 print "・ISBN:4-396-10364-6" + chr$(13)
37840 print "・定価:829円 + 税"
37850 color rgb(255,255,255)
37860 locate 1,18
37870 print "ジョイパッド右：トップへ行く"
37880 '****************************************************************************************************
37890 'WUXG(1920x1200)の時ここまで
37900 '****************************************************************************************************
37910 endif
37920 while ((key$ <> chr$(13)) and (bg <> 2))
37930 bg = strig(1)
37940 key$ = inkey$
37950 pause 200
37960 wend
37970 if ((bg = 2) or (key$ = chr$(13))) then
37980 pause 200:goto Main_Screen:
37990 endif
38000 end
38010 '1.数秘術　トップ画面
38020 Kabara_First_Top:
38030 cls 3:color rgb(255,255,255):play ""
38040 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
38050 gload Gazo$ + "downscreen.png",0,0,800
38060 No=0:init"kb:4"
38070 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
38080 if ex_info$(1)<>"JP" then
38090 print chr$(13);chr$(13)
38100 color rgb(255,255,255)
38110 locate 3,4:No=0
38120 print "Please select a number" + chr$(13)
38130 print " :1. Numerology" + chr$(13)
38140 print " :2. Return to the top screen" + chr$(13)
38150 color rgb(0,0,0)
38160 sp_on 0,1
38170 locate 1,15:print "1. Select Numerology"
38180 else
38190 '****************************************************************************************************
38200 'WUXG(1920x1200)の時ここから
38210 '****************************************************************************************************
38220 print chr$(13);chr$(13)
38230 color rgb(255,255,255)
38240 locate 3,4:No=0
38250 print "番号選んでください" + chr$(13)
38260 print " :1.数秘術占い" + chr$(13)
38270 print " :2.トップ画面に戻る" + chr$(13)
38280 color rgb(0,0,0)
38290 sp_on 0,1
38300 locate 1,15:print "1.数秘術番号を求めるを選択"
38310 '****************************************************************************************************
38320 'WUXG(1920x1200)の時ここまで
38330 '****************************************************************************************************
38340 endif
38350 'KeyBord:true
38360 'Joy Pad:true
38370 '上、下:true
38380 '
38390 'ｂｇ：決定ボタン
38400 'カーソル　上
38410 'カーソル　下
38420 Kabara_First_Top2:
38430 key$ = "":bg = 0:y = 0:
38440 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
38450 key$ = inkey$
38460 bg = strig(1)
38470 y = stick(1)
38480 'PauseでCPUを休める
38490 pause 5
38500 wend
38510 '1.カーソル　下 処理 chr$(31)
38520 'カーソル　下
38530 if ex_info$(1) <> "JP" then
38540 if ((key$ = chr$(31)) or (y = 1)) then
38550 select case No
38560 '
38570 case 1:
38580 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
38590 case 0:
38600 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
38610 'case 2:
38620 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
38630 end select
38640 endif
38650 else
38660 if ((key$ = chr$(31)) or (y = 1)) then
38670 select case No
38680 '
38690 case 1:
38700 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
38710 case 0:
38720 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
38730 'case 2:
38740 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
38750 end select
38760 endif
38770 '2.カーソル　上 処理 chr$(30)
38780 if ((key$ = chr$(30)) or (y = -1)) then
38790 select case No
38800 case 0:
38810 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
38820 case 1:
38830 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
38840 'case 2:
38850 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
38860 end select
38870 endif
38880 endif
38890 '3.決定 処理  bg:2 or Enter key:chr$(13)
38900 if ((bg = 2) or (key$ = chr$(13))) then
38910 select case No
38920 case 0:
38930 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
38940 goto Kabara_TopScreen:
38950 'case 1:
38960 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
38970 case 1:
38980 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
38990 end select
39000 endif
39010 '
39020 'Kabara 相性占い トップ画面
39030 Kabara_Aishou_Top:
39040 cls 3:y=0:key$="":bg=0:No=0
39050 play ""
39060 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
39070 gload Gazo$ + "downscreen.png",0,0,800
39080 if ex_info$(1)<>"JP" then
39090 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
39100 print chr$(13) + chr$(13)
39110 locate 0,4:color rgb(255,255,255)
39120 print "Please select a number" + chr$(13)
39130 print " :1. Compatibility fortune-telling ...." + chr$(13)
39140 print " :2. Business compatibility fortune-telling" + chr$(13)
39150 print " :3. Return to the top screen" + chr$(13)
39160 sp_on 0,1:sp_on 1,0:sp_on 2,0
39170 color rgb(0,0,0)
39180 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
39190 else
39200 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
39210 '****************************************************************************************************
39220 'WUXG(1920x1200)の時ここから
39230 '****************************************************************************************************
39240 print chr$(13) + chr$(13)
39250 locate 0,4:color rgb(255,255,255)
39260 'print "Ok"
39270 '
39280 print "番号を選んでください" + chr$(13)
39290 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
39300 print " :2.ビジネスの相性占い" + chr$(13)
39310 print " :3.トップ画面に戻る" + chr$(13)
39320 sp_on 0,1:sp_on 1,0:sp_on 2,0
39330 color rgb(0,0,0)
39340 locate 1,15:print "1.男女2人の相性占いを選択"
39350 '****************************************************************************************************
39360 'WUXG(1920x1200)の時ここまで
39370 '****************************************************************************************************
39380 endif
39390 Kabara_Aishou_Top2:
39400 key$ = "":y = 0:bg = 0:
39410 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
39420 'ジョイパッド(右) ,十字キー (上下)
39430 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
39440 y = stick(1)
39450 key$ = inkey$
39460 bg = strig(1)
39470 pause 200
39480 wend
39490 'カーソル　下 or 十字キー　下
39500 if ex_info$(1)<>"JP" then
39510 if ((key$ = chr$(31)) or (y = 1)) then
39520 select case No
39530 'Option change 1 - 2
39540 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
39550 'ok
39560 case 0:
39570 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
39580 'Option change 2 - 3
39590 case 1:
39600 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
39610 'Release time case 2 comment release
39620 case 2:
39630 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
39640 case else:
39650 goto Kabara_Aishou_Top2:
39660 end select
39670 endif
39680 if ((key$ = chr$(30)) or (y = -1)) then
39690 select case No
39700 case 0:
39710 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
39720 case 1:
39730 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
39740 case 2:
39750 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
39760 case else:
39770 goto Kabara_Aishou_Top2:
39780 end select
39790 endif
39800 else
39810 if ((key$ = chr$(31)) or (y = 1)) then
39820 select case No
39830 '選択肢　1 - 2に変更
39840 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
39850 'ok
39860 case 0:
39870 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
39880 '選択肢　2 - 3に変更
39890 case 1:
39900 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
39910 'リリース時 case 2コメント解除
39920 case 2:
39930 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
39940 case else:
39950 goto Kabara_Aishou_Top2:
39960 end select
39970 endif
39980 '十字キー　上　、カーソル　上
39990 if ((key$ = chr$(30)) or (y = -1)) then
40000 select case No
40010 case 0:
40020 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
40030 case 1:
40040 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
40050 case 2:
40060 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
40070 case else:
40080 goto Kabara_Aishou_Top2:
40090 end select
40100 endif
40110 endif
40120 '十字キー　上下:選択
40130 'ジョイパッド 右:決定
40140 if ((bg = 2) or (key$ = chr$(13))) then
40150 select case No
40160 '1.男女の相性
40170 case 0:
40180 '男女の相性占い(未実装)トップ画面に飛ぶ
40190 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
40200 '2ビジネスの相性
40210 case 1:
40220 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
40230 case 2:
40240 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
40250 end select
40260 endif
40270 '0.男女の相性　トップ画面　ここから
40280 Danjyo_Aisyou_Top:
40290 cls 3:y=0:key$="":bg=0:No=0
40300 play ""
40310 gload Gazo$ + "Screen1.png",0,0,0
40320 gload Gazo$ + "downscreen.png",0,0,800
40330 if ex_info$(1)<>"JP" then
40340 print chr$(13) + chr$(13)
40350 locate 0,4:color rgb(255,255,255)
40360 print "Please select a number" + chr$(13)
40370 print " :1. Compatibility with a person of ...." + chr$(13)
40380 print " :2. Compatibility between two people" + chr$(13)
40390 print " :3. Return to the top screen" + chr$(13)
40400 sp_on 0,1:sp_on 1,0:sp_on 2,0
40410 color rgb(0,0,0)
40420 locate 1,15:print "1. Compatibility with a person of ...."
40430 else
40440 print chr$(13) + chr$(13)
40450 locate 0,4:color rgb(255,255,255)
40460 '****************************************************************************************************
40470 'WUXG(1920x1200)の時ここから
40480 '****************************************************************************************************
40490 print "番号を選んでください" + chr$(13)
40500 print " :1.自分と異性の相性(未実装)" + chr$(13)
40510 print " :2.男女2人の相性" + chr$(13)
40520 print " :3.トップ画面に戻る" + chr$(13)
40530 sp_on 0,1:sp_on 1,0:sp_on 2,0
40540 color rgb(0,0,0)
40550 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
40560 '****************************************************************************************************
40570 'WUXG(1920x1200)の時ここまで
40580 '****************************************************************************************************
40590 endif
40600 Danjyo_Aisyou_Top2:
40610 key$ = "":y = 0:bg = 0:
40620 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
40630 'ジョイパッド(右) ,十字キー (上下)
40640 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
40650 y = stick(1)
40660 key$ = inkey$
40670 bg = strig(1)
40680 pause 200
40690 wend
40700 if ex_info$(1)<>"JP" then
40710 'Cursor down or arrow key down
40720 if ((key$ = chr$(31)) or (y = 1)) then
40730 select case No
40740 'Option 1 - 2 change
40750 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
40760 'ok
40770 case 0:
40780 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
40790 'Option 2 - 3 change
40800 case 1:
40810 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
40820 'Release time case 2 comment release
40830 case 2:
40840 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
40850 case else:
40860 goto Kabara_Aishou_Top2:
40870 end select
40880 endif
40890 'Arrow key up, cursor up
40900 if ((key$ = chr$(30)) or (y = -1)) then
40910 select case No
40920 case 0:
40930 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
40940 case 1:
40950 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
40960 case 2:
40970 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
40980 case else:
40990 goto Kabara_Aishou_Top2:
41000 end select
41010 endif
41020 else
41030 'カーソル　下 or 十字キー　下
41040 if ((key$ = chr$(31)) or (y = 1)) then
41050 select case No
41060 '選択肢　1 - 2に変更
41070 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
41080 'ok
41090 case 0:
41100 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
41110 '選択肢　2 - 3に変更
41120 case 1:
41130 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
41140 'リリース時 case 2コメント解除
41150 case 2:
41160 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
41170 case else:
41180 goto Kabara_Aishou_Top2:
41190 end select
41200 endif
41210 '十字キー　上　、カーソル　上
41220 if ((key$ = chr$(30)) or (y = -1)) then
41230 select case No
41240 case 0:
41250 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
41260 case 1:
41270 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
41280 case 2:
41290 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
41300 case else:
41310 goto Kabara_Aishou_Top2:
41320 end select
41330 endif
41340 endif
41350 end
41360 '十字キー　上下:選択
41370 'ジョイパッド 右:決定
41380 if ((bg = 2) or (key$ = chr$(13))) then
41390 select case No
41400 '1.自分と異性の相性
41410 case 0:
41420 '未実装
41430 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
41440 '2男女の相性 男性の名前入力に飛ぶ
41450 case 1:
41460 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
41470 case 2:
41480 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
41490 end select
41500 endif
41510 '0.男女の相性　トップ画面　ここまで
41520 '1.男女の相性 ここから
41530 '1-1.男性の名前を入力
41540 Danjyo_Aisyou_Input_Name_male:
41550 No=0:color RGB(255,255,255)
41560 '入力:キーボード
41570 cls 3:init "kb:2"
41580 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
41590 gload Gazo$ + "downscreen.png",0,0,800
41600 for i=0 to 3
41610 buf_male_year(i)=0
41620 next i
41630 if ex_info$(1)<>"JP" then
41640 play "":color rgb(255,0,0):male_name$ = ""
41650 locate 0,1
41660 print "Male Compatibility" + chr$(13) + chr$(13)
41670 color rgb(255,255,255):
41680 locate 0,3
41690 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
41700 locate 0,15:color rgb(0,0,0)
41710 Input "Man's Name:",male_name$
41720 else
41730 '****************************************************************************************************
41740 'WUXG(1920x1200)の時ここから
41750 '****************************************************************************************************
41760 play "":color rgb(255,0,0):male_name$ = ""
41770 locate 0,1
41780 print "男性の相性" + chr$(13) + chr$(13)
41790 color rgb(255,255,255):
41800 locate 0,3
41810 print "男性の相性を求めます。男性の名前を" + chr$(13)
41820 print "入れてください" + chr$(13)
41830 locate 0,15:color rgb(0,0,0)
41840 Input "男性の名前:",male_name$
41850 '****************************************************************************************************
41860 'WUXG(1920x1200)の時ここまで
41870 '****************************************************************************************************
41880 endif
41890 '-------------------------------------------
41900 '1-2:男性の生まれた年代
41910 Danjyo_Aisyou_Input_Born_Year:
41920 No=0:color RGB(255,255,255)
41930 cls 3:init "kb:4"
41940 '****************************************************************************************************
41950 'WUXG(1920x1200)の時ここから
41960 '****************************************************************************************************
41970 gload Gazo$ + "Screen1.png",0,0,0
41980 gload Gazo$ + "downscreen.png",0,0,800
41990 '****************************************************************************************************
42000 'WUXG(1920x1200)の時ここから
42010 '****************************************************************************************************
42020 play "":color rgb(255,0,0)
42030 '-------------------------------------------
42040 font 48
42050 if ex_info$(1)<>"JP" then
42060 locate 0,1
42070 color rgb(255,255,255)
42080 print "Please enter the man's birth year" + chr$(13)
42090 color rgb(255,255,255)
42100 locate 1,3
42110 print "Man's Birth Year (4 digits):";buf_male_year$
42120 else
42130 '****************************************************************************************************
42140 'WUXG(1920x1200)の時ここから
42150 '****************************************************************************************************
42160 locate 0,1
42170 '文字色：黒　 color rgb(0,0,0)
42180 color rgb(255,255,255)
42190 print "男性の生まれた年代を入れて下さい" + chr$(13)
42200 color rgb(255,255,255)
42210 locate 1,3
42220 print "男性の生まれた年代(西暦4桁):";buf_male_year$
42230 '****************************************************************************************************
42240 'WUXG(1920x1200)の時ここから
42250 '****************************************************************************************************
42260 endif
42270 color rgb(255,255,255)
42280 'locate 4,6:print ":7"
42290 'locate 9,6:print ":8"
42300 'locate 12,6:print ":9"
42310 locate 4,6
42320 print ":7  :8  :9" + chr$(13)
42330 color rgb(255,255,255)
42340 locate 4,8
42350 print ":4  :5  :6" + chr$(13)
42360 color rgb(255,255,255)
42370 locate 4,10
42380 print ":1  :2  :3" + chr$(13)
42390 locate 4,12
42400 print "    :0"
42410 locate 12,12
42420 color rgb(0,0,255)
42430 print ":Ok"
42440 sp_on 4,0: sp_on 5,0:sp_on 6,0
42450 sp_on 7,0:sp_on 8,0:sp_on 9,0
42460 sp_on 10,0:sp_on 11,0:sp_on 12,0
42470 sp_on 13,0:sp_on 14,1
42480 '-------------------------------------------------------------------------------------
42490 Danjyo_Aisyou_Input_Male_Born_Year2:
42500 key$="":bg=0:y=0:y2=0:bg2=0:
42510 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
42520 key$ = inkey$
42530 bg = strig(1)
42540 y = stick(1)
42550 y2 = stick(0)
42560 bg2=strig(0)
42570 pause 200
42580 wend
42590 '十字キー　ここから
42600 '上の矢印　または、十字キー上
42610 if ((y = -1) or (key$ = chr$(30))) then
42620 select case No
42630 'No=-1:okのとき:初期の状態
42640 '0kボタンから３に移動
42650 '上に行く 処理
42660 case -1:
42670 No=3:sp_on 12,1:sp_on 14,0
42680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
42690 '選択肢:3
42700 '3ボタンから 6に移動
42710 case 3:
42720 No=6:sp_on 12,0:sp_on 11,1
42730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
42740 '6ボタンから ９に移動
42750 case 6:
42760 No=9:sp_on 10,1:sp_on 11,0
42770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
42780 '6ボタンから ９に移動　ここまで
42790 '9で上を押して何もしない
42800 case 9:
42810 '何もしない
42820 No=9
42830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
42840 '9で上を押しても何もしない　ここまで
42850 '上　 0ボタンから2ボタン
42860 'sp_on 6,1:1
42870 'sp_on 8,1:5
42880 'sp_on 7,1:7
42890 case 0:
42900 No=2:sp_on 13,0:sp_on 9,1:
42910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
42920 '上  0ボタンから2ボタン　ここまで
42930 '2から５になる 上
42940 case 2:
42950 No=5:sp_on 8,1:sp_on 9,0:
42960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
42970 case 5:
42980 No=8:sp_on 7,1:sp_on 8,0
42990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43000 case 8:
43010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43020 case 1:
43030 No=4:sp_on 5,1:sp_on 6,0
43040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43050 case 4:
43060 No=7:sp_on 4,1:sp_on 5,0
43070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43080 case 7:
43090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43100 end select
43110 endif
43120 '左３　ここまで
43130 '下の矢印
43140 '中央 2
43150 if ((y=1) or (key$ = chr$(31))) then
43160 select case No
43170 '9から６に下げる
43180 case 9:
43190 No=6:sp_on 11,1:sp_on 10,0
43200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43210 '6から３に下げる
43220 case 6:
43230 No=3:sp_on 12,1:sp_on 11,0
43240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43250 '3から０ｋに変える
43260 case 3:
43270 No=-1:sp_on 14,1:sp_on 12,0
43280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43290 'Okから下のボタンを押しても何もしない
43300 case -1:
43310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43320 case 8:
43330 No=5:sp_on 8,1:sp_on 7,0
43340 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43350 case 5:
43360 No=2:sp_on 9,1:sp_on 8,0
43370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43380 case 2:
43390 No=0:sp_on 13,1:sp_on 9,0
43400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43410 case 0:
43420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43430 case 7:
43440 No=4:sp_on 5,1:sp_on 4,0
43450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43460 case 4:
43470 No=1:sp_on 6,1:sp_on 5,0
43480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43490 case 1:
43500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43510 end select
43520 endif
43530 '左へボタン 十字キー　左　or 　カーソル左
43540 if ((y2 = -1) or (key$ = chr$(29))) then
43550 select case No
43560 'Ok ボタン  Okから　左　０に行く
43570 case -1:
43580 No=0:sp_on 13,1:sp_on 14,0
43590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43600 '0 ボタン  左　何もしない
43610 case 0:
43620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43630 case 3:
43640 No=2:sp_on 9,1:sp_on 12,0:
43650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43660 case 2:
43670 No=1:sp_on 6,1:sp_on 9,0:
43680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43690 case 1:
43700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43710 case 6:
43720 No=5:sp_on 8,1:sp_on 11,0
43730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43740 case 5:
43750 No=4:sp_on 5,1:sp_on 8,0
43760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43770 case 4:
43780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43790 case 9:
43800 No=8:sp_on 7,1:sp_on 10,0
43810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43820 case 8:
43830 No=7:sp_on 4,1:sp_on 7,0
43840 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43850 case 7:
43860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43870 end select
43880 endif
43890 '右  十字キー　右　or カーソル　右
43900 if ((y2 = 1) or (key$ = chr$(28))) then
43910 select case No
43920 '0ボタンからokボタン右に移動
43930 case 0:
43940 No=-1:sp_on 14,1:sp_on 13,0
43950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
43960 '0ボタンからokボタン 右に移動　ここまで
43970 'OKボタンで右を押して何もしない
43980 case -1:
43990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44000 case 1:
44010 No=2:sp_on 9,1:sp_on 6,0
44020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44030 case 2:
44040 No=3:sp_on 12,1:sp_on 9,0
44050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44060 case 3:
44070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44080 case 4:
44090 No=5:sp_on 8,1:sp_on 5,0
44100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44110 case 5:
44120 No=6:sp_on 11,1:sp_on 8,0
44130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44140 case 7:
44150 No=8:sp_on 7,1:sp_on 4,0
44160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44170 case 8:
44180 No=9:sp_on 10,1:sp_on 7,0
44190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44200 case 9:
44210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44220 case 6:
44230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
44240 end select
44250 'Okから右ボタンを押して何もしない ここまで
44260 endif
44270 '十字キー　ここまで
44280 '==============================
44290 'ここから
44300 '==============================
44310 if ((bg = 2) or (key$ = chr$(13))) then
44320 select case count
44330 case 0:
44340 count = 1
44350 if (No = -1) then
44360 count = 0:No=0
44370 buf_male_year(0) = No
44380 'Okボタンを押したとき
44390 goto Danjyo_Aisyou_Input_Male_Born_Year2:
44400 else
44410 'Okボタン以外が押されたとき
44420 if (No >= 1 and No <= 2) then
44430 buf_year$="":buf_year$ = str$(No) + "***"
44440 buf_year = No:a= No
44450 buf_Jyoushi_Born_Day(0) = No
44460 if ex_info$(1)<>"JP" then
44470 locate 1,3
44480 color rgb(255,255,255)
44490 print "Year of birth of the male (4 digits AD):";buf_year$
44500 else
44510 count=0
44520 ui_msg"The number is out of range."
44530 endif
44540 else
44550 '****************************************************************************************************
44560 'WUXG(1920x1200)の時ここから
44570 '****************************************************************************************************
44580 locate 1,3
44590 color rgb(255,255,255)
44600 print "男性の生まれた年代(西暦4桁):";buf_year$
44610 goto Danjyo_Aisyou_Input_Male_Born_Year2:
44620 '****************************************************************************************************
44630 'WUXG(1920x1200)の時ここまで
44640 '****************************************************************************************************
44650 else
44660 count=0
44670 ui_msg"数字が範囲外になります。"
44680 endif
44690 buf_year$="":buf_year=0
44700 goto Danjyo_Aisyou_Input_Male_Born_Year2:
44710 endif
44720 'endif
44730 case 1:
44740 count = 2
44750 if (No = -1) then
44760 count = 1
44770 goto Danjyo_Aisyou_Input_Male_Born_Year2:
44780 else
44790 '****************************************************************************************************
44800 'WUXG(1920x1200)の時ここから
44810 '****************************************************************************************************
44820 buf_year = a * 10 + No
44830 b=buf_year
44840 buf_year$ = str$(buf_year) + "**"
44850 buf_male_year(0)=buf_year
44860 locate 1,3
44870 color rgb(255,255,255)
44880 print "                                                                "
44890 locate 1,3
44900 print "男性の生まれた年代(西暦4桁):" + buf_year$
44910 'if (No = -1) then
44920 'count=1
44930 goto Danjyo_Aisyou_Input_Male_Born_Year2:
44940 '****************************************************************************************************
44950 'WUXG(1920x1200)の時ここまで
44960 '****************************************************************************************************
44970 endif
44980 case 2:
44990 count=3
45000 if (No=-1) then
45010 count =2
45020 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45030 else
45040 buf_year = b * 10 + No
45050 c=buf_year
45060 buf_year$ = str$(buf_year) + "*"
45070 buf_male_year(0) = buf_year
45080 locate 1,3
45090 color rgb(255,255,255)
45100 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
45110 if ex_info$(1)<>"JP" then
45120 locate 1,3
45130 print "Year of birth of the male (4 digits AD):";buf_year$
45140 else
45150 '****************************************************************************************************
45160 'WUXG(1920x1200)の時ここから
45170 '****************************************************************************************************
45180 locate 1,3
45190 print "男性の生まれた年代(西暦4桁):";buf_year$
45200 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45210 '****************************************************************************************************
45220 'WUXG(1920x1200)の時ここまで
45230 '****************************************************************************************************
45240 endif
45250 endif
45260 case 3:
45270 count=4
45280 if (No = -1) then
45290 No=0
45300 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45310 else
45320 buf_year = c * 10 + No
45330 buf_year$ = str$(buf_year)
45340 buf_male_year(0) = buf_year
45350 if ex_info$(1)<>"JP" then
45360 locate 1,3
45370 color RGB(255,255,255)
45380 print "                                      "
45390 locate 1,3
45400 print "Year of birth of the male (4 digits AD):";buf_year$
45410 else
45420 locate 1,3
45430 color RGB(255,255,255)
45440 print "                                      "
45450 locate 1,3
45460 print "男性の生まれた年代(西暦4桁):";buf_year$
45470 endif
45480 buf_year=val(buf_year$)
45490 'year=val(buf_year$)
45500 'if (No=-1) then
45510 'goto Input_Born_Month:
45520 'else
45530 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45540 endif
45550 case 4:
45560 'bufyear=buf_year
45570 if (No=-1) then
45580 buf_year = val(buf_year$)
45590 buf_male_year(0)=buf_year
45600 sp_on 14,0:No=0
45610 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45620 else
45630 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45640 endif
45650 end select
45660 endif
45670 '===========================
45680 'ここまでを部下のところにコピーする.
45690 '===========================
45700 if (bg2 = 2) then
45710 select case count2
45720 case 0:
45730 if (No = -1) then
45740 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
45750 count=0
45760 if ex_info$(1)<>"JP" then
45770 locate 1,3
45780 color rgb(255,255,255)
45790 print "                                      "
45800 locate 1,3
45810 print "Year of birth of the male (4 digits AD):" + buf_male_year$
45820 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45830 else
45840 '(buf_year=0) then
45850 buf_male_year=0:buf_male_year$="****"
45860 locate 1,3
45870 print "                                       "
45880 locate 1,3
45890 print "Year of birth of the male (4 digits AD):"+buf_male_year$
45900 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45910 else
45920 locate 1,3
45930 color rgb(255,255,255)
45940 print "                                      "
45950 locate 1,3
45960 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
45970 goto Danjyo_Aisyou_Input_Male_Born_Year2:
45980 else
45990 '(buf_year=0) then
46000 buf_male_year=0:buf_male_year$="****"
46010 locate 1,3
46020 print "                                       "
46030 locate 1,3
46040 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
46050 goto Danjyo_Aisyou_Input_Male_Born_Year2:
46060 endif
46070 endif
46080 end select
46090 endif
46100 '-------生まれた年代　男性-------------
46110 '-------生まれた月　男性-------------
46120 '1-2:男性の生まれた月
46130 Danjyo_Aisyou_Input_Male_Born_Month:
46140 cls 3:play "":count=0:count2=0
46150 'No=-1:Okのとき
46160 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
46170 for i=0 to 1
46180 buf_male_month(i)=0
46190 next i
46200 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
46210 '****************************************************************************************************
46220 'WUXG(1920x1200)の時ここから
46230 '****************************************************************************************************
46240 gload Gazo$ + "Screen1.png",0,0,0
46250 gload Gazo$ + "downscreen.png",0,0,800
46260 '****************************************************************************************************
46270 'WUXG(1920x1200)の時ここまで
46280 '****************************************************************************************************
46290 'Init"kb:4"
46300 '音声ファイル再生 2023.06.07
46310 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
46320 '****************************************************************************************************
46330 'WUXG(1920x1200)の時ここから
46340 '****************************************************************************************************
46350 font 48
46360 '****************************************************************************************************
46370 'WUXG(1920x1200)の時ここまで
46380 '****************************************************************************************************
46390 locate 0,1
46400 '文字色：黒　 color rgb(0,0,0)
46410 '文字色:白
46420 color rgb(255,255,255)
46430 print "男性の生まれた月を入れて下さい" + chr$(13)
46440 '文字色:白
46450 color rgb(255,255,255)
46460 locate 1,3
46470 '文字色:白
46480 print "男性の生まれた月(1月~12月):"+buf_male_Month$
46490 color rgb(255,255,255)
46500 'locate 4,6:print ":7"
46510 'locate 9,6:print ":8"
46520 'locate 12,6:print ":9"
46530 locate 4,6
46540 '文字色:赤
46550 print ":7  :8  :9" + chr$(13)
46560 color rgb(255,255,255)
46570 locate 4,8
46580 print ":4  :5  :6" + chr$(13)
46590 color rgb(255,255,255)
46600 locate 4,10
46610 print ":1  :2  :3" + chr$(13)
46620 locate 4,12
46630 print "    :0"
46640 locate 12,12
46650 color rgb(0,0,255)
46660 print ":Ok"
46670 sp_on 4,0: sp_on 5,0:sp_on 6,0
46680 sp_on 7,0:sp_on 8,0:sp_on 9,0
46690 sp_on 10,0:sp_on 11,0:sp_on 12,0
46700 sp_on 13,0:sp_on 14,1
46710 '----------------------------------------------------------------------------------------
46720 Danjyo_Aisyou_Input_Male_Born_Month2:
46730 key$="":bg=0:y=0:y2=0:bg2=0
46740 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
46750 key$ = inkey$
46760 bg = strig(1)
46770 y = stick(1)
46780 y2 = stick(0)
46790 bg2 = strig(0)
46800 pause 200
46810 wend
46820 '十字キー　ここから
46830 '上の矢印　または、十字キー上
46840 if ((y = -1) or (key$ = chr$(30))) then
46850 select case No
46860 'No=-1:okのとき:初期の状態
46870 '0kボタンから３に移動
46880 '上に行く 処理
46890 case -1:
46900 No=3:sp_on 12,1:sp_on 14,0
46910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
46920 '選択肢:3
46930 '3ボタンから 6に移動
46940 case 3:
46950 No=6:sp_on 12,0:sp_on 11,1
46960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
46970 '6ボタンから ９に移動
46980 case 6:
46990 No=9:sp_on 10,1:sp_on 11,0
47000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47010 '6ボタンから ９に移動　ここまで
47020 '9で上を押して何もしない
47030 case 9:
47040 '何もしない
47050 No=9
47060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47070 '9で上を押しても何もしない　ここまで
47080 '上　 0ボタンから2ボタン
47090 'sp_on 6,1:1
47100 'sp_on 8,1:5
47110 'sp_on 7,1:7
47120 case 0:
47130 No=2:sp_on 13,0:sp_on 9,1:
47140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47150 '上  0ボタンから2ボタン　ここまで
47160 '2から５になる 上
47170 case 2:
47180 No=5:sp_on 8,1:sp_on 9,0:
47190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47200 case 5:
47210 No=8:sp_on 7,1:sp_on 8,0
47220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47230 case 8:
47240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47250 case 1:
47260 No=4:sp_on 5,1:sp_on 6,0
47270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47280 case 4:
47290 No=7:sp_on 4,1:sp_on 5,0
47300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47310 case 7:
47320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47330 end select
47340 endif
47350 '左３　ここまで
47360 '下の矢印
47370 '中央 2
47380 if ((y=1) or (key$ = chr$(31))) then
47390 select case No
47400 '9から６に下げる
47410 case 9:
47420 No=6:sp_on 11,1:sp_on 10,0
47430 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
47440 '6から３に下げる
47450 case 6:
47460 No=3:sp_on 12,1:sp_on 11,0
47470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47480 '3から０ｋに変える
47490 case 3:
47500 No=-1:sp_on 14,1:sp_on 12,0
47510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47520 'Okから下のボタンを押しても何もしない
47530 case -1:
47540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47550 case 8:
47560 No=5:sp_on 8,1:sp_on 7,0
47570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47580 case 5:
47590 No=2:sp_on 9,1:sp_on 8,0
47600 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47610 case 2:
47620 No=0:sp_on 13,1:sp_on 9,0
47630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47640 case 0:
47650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47660 case 7:
47670 No=4:sp_on 5,1:sp_on 4,0
47680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47690 case 4:
47700 No=1:sp_on 6,1:sp_on 5,0
47710 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47720 case 1:
47730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47740 end select
47750 endif
47760 '左へボタン 十字キー　左　or 　カーソル左
47770 if ((y2 = -1) or (key$ = chr$(29))) then
47780 select case No
47790 'Ok ボタン  Okから　左　０に行く
47800 case -1:
47810 No=0:sp_on 13,1:sp_on 14,0
47820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47830 '0 ボタン  左　何もしない
47840 case 0:
47850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47860 case 3:
47870 No=2:sp_on 9,1:sp_on 12,0:
47880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47890 case 2:
47900 No=1:sp_on 6,1:sp_on 9,0:
47910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47920 case 1:
47930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47940 case 6:
47950 No=5:sp_on 8,1:sp_on 11,0
47960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
47970 case 5:
47980 No=4:sp_on 5,1:sp_on 8,0
47990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48000 case 4:
48010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48020 case 9:
48030 No=8:sp_on 7,1:sp_on 10,0
48040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48050 case 8:
48060 No=7:sp_on 4,1:sp_on 7,0
48070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48080 case 7:
48090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48100 end select
48110 endif
48120 '右  十字キー　右　or カーソル　右
48130 if ((y2 = 1) or (key$ = chr$(28))) then
48140 select case No
48150 '0ボタンからokボタン右に移動
48160 case 0:
48170 No=-1:sp_on 14,1:sp_on 13,0
48180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48190 '0ボタンからokボタン 右に移動　ここまで
48200 'OKボタンで右を押して何もしない
48210 case -1:
48220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48230 case 1:
48240 No=2:sp_on 9,1:sp_on 6,0
48250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48260 case 2:
48270 No=3:sp_on 12,1:sp_on 9,0
48280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48290 case 3:
48300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48310 case 4:
48320 No=5:sp_on 8,1:sp_on 5,0
48330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48340 case 5:
48350 No=6:sp_on 11,1:sp_on 8,0
48360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48370 case 7:
48380 No=8:sp_on 7,1:sp_on 4,0
48390 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48400 case 8:
48410 No=9:sp_on 10,1:sp_on 7,0
48420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48430 case 9:
48440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48450 case 6:
48460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
48470 end select
48480 'Okから右ボタンを押して何もしない ここまで
48490 endif
48500 '十字キー　ここまで
48510 '右の丸ボタン + Enter key 決定キー
48520 if ((bg=2) or (key$=chr$(13))) then
48530 select case count
48540 case 0:
48550 if (No=-1) then No=0
48560 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
48570 if (buf_male_month > 1 and buf_male_month < 10)  then
48580 buf_male_Month$ = str$(buf_male_month)
48590 'buf_month=No
48600 endif
48610 if (buf_male_month = 1)  then
48620 buf_male_Month$ = str$(buf_male_month) + "*"
48630 'c=buf_month
48640 endif
48650 locate 1,3
48660 print "                                     "
48670 color RGB(255,255,255)
48680 locate 1,3
48690 print "男性の生まれた月(1月~12月):" + buf_male_Month$
48700 goto Danjyo_Aisyou_Input_Male_Born_Month2:
48710 case 1:
48720 count = 2:
48730 'c = val(buf_Month$)
48740 if (No = -1) then
48750 'count=0
48760 No=0
48770 month=buf_male_month
48780 buf_male_month=val(buf_male_Month$)
48790 month=buf_male_month
48800 buf_Jyoushi_Born_Day(1)=month
48810 '生まれた日に飛ぶ
48820 goto Danjyo_Aisyou_Input_Male_Born_Day:
48830 else
48840 buf_male_month = c*10 + No
48850 'if (buf_month = 1) then
48860 'buf_Month$ = str$(buf_month)
48870 'endif
48880 buf_male_Month$ = str$(buf_male_month)
48890 buf_Jyoushi_Born_Day(1) = buf_male_month
48900 locate 0,3
48910 print "                                           "
48920 locate 1,3
48930 color Rgb(255,255,255)
48940 print "男性の生まれた月(1月~12月):" + buf_male_Month$
48950 goto Danjyo_Aisyou_Input_Male_Born_Month2:
48960 endif
48970 case 2:
48980 '==================================
48990 '何もしない
49000 'coun = 2
49010 '==================================
49020 'c= val(buf_Month$)
49030 'buf_month = c*10 + No
49040 'buf_Month$ = str$(buf_month)
49050 'locate 2,3
49060 'print "上司の生まれた月(1月～12月):";buf_Month$
49070 'goto Jyoushi_Input_Born_Month2:
49080 'case 3:
49090 'count=4
49100 'b=val(buf_month$)
49110 'buf_month=c*10+No
49120 'buf_Month$=str$(buf_month)
49130 'locate 2,3
49140 'print "上司の生まれた月(1月～12月):";buf_Month$
49150 'buf_month=val(buf_Month$)
49160 'year=val(buf_year$)
49170 if (No=-1) then
49180 No=0
49190 goto Danjyo_Aisyou_Input_Male_Born_Day:
49200 else
49210 goto Danjyo_Aisyou_Input_Male_Born_Day2:
49220 endif
49230 'case 4:
49240 'bufyear=buf_year
49250 'if (No=-1) then
49260 'buf_month = val(buf_Month$)
49270 'month = buf_month
49280 'sp_on 14,0
49290 'goto Input_Born_Day:
49300 'else
49310 'goto Input_Born_Month2:
49320 'endif
49330 end select
49340 endif
49350 '左の丸ボタン　キャンセル
49360 if (bg2=2) then
49370 select case count2
49380 case 0:
49390 if (No = -1) then
49400 buf_male_month=0:buf_male_Month$="**"
49410 count=0
49420 'goto rewrite2:
49430 else
49440 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
49450 buf_male_month = 0:buf_male_Month$ = "**"
49460 locate 0,3
49470 color rgb(255,255,255)
49480 print "                                       "
49490 goto rewrite2:
49500 if (No>12) then
49510 ui_msg"値が範囲外です。"
49520 goto rewrite2:
49530 endif
49540 endif
49550 endif
49560 rewrite2:
49570 locate 2,3
49580 color rgb(255,255,255)
49590 print "                                      "
49600 locate 2,3
49610 print "男性の生まれた月(1月~12月):"+buf_male_Month$
49620 goto Danjyo_Aisyou_Input_Male_Born_Month2:
49630 end select
49640 'endif
49650 endif
49660 end
49670 '-------生まれた月　男性 ここまで-------------
49680 '-------生まれた日　男性 ここから-------------
49690 Danjyo_Aisyou_Input_Male_Born_Day:
49700 cls 3:play "":count=0:count2=0
49710 'No=-1:Okのとき
49720 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
49730 for i=0 to 1
49740 buf_day(i)=0
49750 next i
49760 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
49770 '****************************************************************************************************
49780 'WUXG(1920x1200)の時ここから
49790 '****************************************************************************************************
49800 gload Gazo$ + "Screen1.png",0,0,0
49810 gload Gazo$ + "downscreen.png",0,0,800
49820 '****************************************************************************************************
49830 'WUXG(1920x1200)の時ここまで
49840 '****************************************************************************************************
49850 'Init"kb:4"
49860 '音声ファイル再生 2023.06.07
49870 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
49880 font 48
49890 locate 0,1
49900 '文字色：黒　 color rgb(0,0,0)
49910 '文字色:白
49920 color rgb(255,255,255)
49930 print "男性の生まれた日を入れて下さい" + chr$(13)
49940 '文字色:白
49950 color rgb(255,255,255)
49960 locate 1,3
49970 '文字色:白
49980 print "男性の生まれた日(1月~31月):" + buf_Day$
49990 color rgb(255,255,255)
50000 'locate 4,6:print ":7"
50010 'locate 9,6:print ":8"
50020 'locate 12,6:print ":9"
50030 locate 4,6
50040 '文字色:赤
50050 print ":7  :8  :9" + chr$(13)
50060 color rgb(255,255,255)
50070 locate 4,8
50080 print ":4  :5  :6" + chr$(13)
50090 color rgb(255,255,255)
50100 locate 4,10
50110 print ":1  :2  :3" + chr$(13)
50120 locate 4,12
50130 print "    :0"
50140 locate 12,12
50150 color rgb(0,0,255)
50160 print ":Ok"
50170 sp_on 4,0: sp_on 5,0:sp_on 6,0
50180 sp_on 7,0:sp_on 8,0:sp_on 9,0
50190 sp_on 10,0:sp_on 11,0:sp_on 12,0
50200 sp_on 13,0:sp_on 14,1
50210 '-------------------------------------------------
50220 Danjyo_Aisyou_Input_Male_Born_Day2:
50230 key$="":bg=0:y=0:y2=0:bg2=0
50240 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
50250 key$ = inkey$
50260 bg = strig(1)
50270 y = stick(1)
50280 y2 = stick(0)
50290 bg2 = strig(0)
50300 pause 200
50310 wend
50320 '十字キー　ここから
50330 '上の矢印　または、十字キー上
50340 if ((y = -1) or (key$ = chr$(30))) then
50350 select case No
50360 'No=-1:okのとき:初期の状態
50370 '0kボタンから３に移動
50380 '上に行く 処理
50390 case -1:
50400 No=3:sp_on 12,1:sp_on 14,0
50410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50420 '選択肢:3
50430 '3ボタンから 6に移動
50440 case 3:
50450 No=6:sp_on 12,0:sp_on 11,1
50460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50470 '6ボタンから ９に移動
50480 case 6:
50490 No=9:sp_on 10,1:sp_on 11,0
50500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50510 '6ボタンから ９に移動　ここまで
50520 '9で上を押して何もしない
50530 case 9:
50540 '何もしない
50550 No=9
50560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50570 '9で上を押しても何もしない　ここまで
50580 '上　 0ボタンから2ボタン
50590 'sp_on 6,1:1
50600 'sp_on 8,1:5
50610 'sp_on 7,1:7
50620 case 0:
50630 No=2:sp_on 13,0:sp_on 9,1:
50640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50650 '上  0ボタンから2ボタン　ここまで
50660 '2から５になる 上
50670 case 2:
50680 No=5:sp_on 8,1:sp_on 9,0:
50690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50700 case 5:
50710 No=8:sp_on 7,1:sp_on 8,0
50720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50730 case 8:
50740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50750 case 1:
50760 No=4:sp_on 5,1:sp_on 6,0
50770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50780 case 4:
50790 No=7:sp_on 4,1:sp_on 5,0
50800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50810 case 7:
50820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50830 end select
50840 endif
50850 '左３　ここまで
50860 '下の矢印
50870 '中央 2
50880 if ((y=1) or (key$ = chr$(31))) then
50890 select case No
50900 '9から６に下げる
50910 case 9:
50920 No=6:sp_on 11,1:sp_on 10,0
50930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50940 '6から３に下げる
50950 case 6:
50960 No=3:sp_on 12,1:sp_on 11,0
50970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
50980 '3から０ｋに変える
50990 case 3:
51000 No=-1:sp_on 14,1:sp_on 12,0
51010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51020 'Okから下のボタンを押しても何もしない
51030 case -1:
51040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51050 case 8:
51060 No=5:sp_on 8,1:sp_on 7,0
51070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51080 case 5:
51090 No=2:sp_on 9,1:sp_on 8,0
51100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51110 case 2:
51120 No=0:sp_on 13,1:sp_on 9,0
51130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51140 case 0:
51150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51160 case 7:
51170 No=4:sp_on 5,1:sp_on 4,0
51180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51190 case 4:
51200 No=1:sp_on 6,1:sp_on 5,0
51210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51220 case 1:
51230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51240 end select
51250 endif
51260 '左へボタン 十字キー　左　or 　カーソル左
51270 if ((y2 = -1) or (key$ = chr$(29))) then
51280 select case No
51290 'Ok ボタン  Okから　左　０に行く
51300 case -1:
51310 No=0:sp_on 13,1:sp_on 14,0
51320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51330 '0 ボタン  左　何もしない
51340 case 0:
51350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51360 case 3:
51370 No=2:sp_on 9,1:sp_on 12,0:
51380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51390 case 2:
51400 No=1:sp_on 6,1:sp_on 9,0:
51410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51420 case 1:
51430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51440 case 6:
51450 No=5:sp_on 8,1:sp_on 11,0
51460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51470 case 5:
51480 No=4:sp_on 5,1:sp_on 8,0
51490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51500 case 4:
51510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51520 case 9:
51530 No=8:sp_on 7,1:sp_on 10,0
51540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51550 case 8:
51560 No=7:sp_on 4,1:sp_on 7,0
51570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51580 case 7:
51590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51600 end select
51610 endif
51620 '右  十字キー　右　or カーソル　右
51630 if ((y2 = 1) or (key$ = chr$(28))) then
51640 select case No
51650 '0ボタンからokボタン右に移動
51660 case 0:
51670 No=-1:sp_on 14,1:sp_on 13,0
51680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51690 '0ボタンからokボタン 右に移動　ここまで
51700 'OKボタンで右を押して何もしない
51710 case -1:
51720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51730 case 1:
51740 No=2:sp_on 9,1:sp_on 6,0
51750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51760 case 2:
51770 No=3:sp_on 12,1:sp_on 9,0
51780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51790 case 3:
51800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51810 case 4:
51820 No=5:sp_on 8,1:sp_on 5,0
51830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51840 case 5:
51850 No=6:sp_on 11,1:sp_on 8,0
51860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51870 case 7:
51880 No=8:sp_on 7,1:sp_on 4,0
51890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51900 case 8:
51910 No=9:sp_on 10,1:sp_on 7,0
51920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51930 case 9:
51940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51950 case 6:
51960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
51970 end select
51980 'Okから右ボタンを押して何もしない ここまで
51990 endif
52000 '十字キー　ここまで
52010 '右の丸ボタン + Enter key 決定キー
52020 if ((bg=2) or (key$=chr$(13))) then
52030 select case count
52040 case 0:
52050 if (No=-1) then No=0
52060 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
52070 if (buf_male_day > 1 and buf_male_day < 10)  then
52080 buf_male_Day$ = str$(buf_male_day)
52090 'buf_month=No
52100 endif
52110 if (buf_male_day = 1)  then
52120 buf_male_Day$ = str$(buf_male_day) + "*"
52130 'c=buf_month
52140 endif
52150 locate 1,3
52160 print "                                     "
52170 color RGB(255,255,255)
52180 locate 1,3
52190 print "男性の生まれた日(1月~31月):" + buf_male_Day$
52200 goto Danjyo_Aisyou_Input_Male_Born_Day2:
52210 case 1:
52220 count = 2:
52230 'c = val(buf_Month$)
52240 if (No = -1) then
52250 'count=0
52260 No=0
52270 day=buf_male_Day
52280 buf_male_Day=val(buf_male_Day$)
52290 day=buf_male_Day
52300 buf_Jyoushi_Born_Day(2)=day
52310 '生まれた日に飛ぶ
52320 goto Danjyo_Aisyou_Input_Male_Born_Day:
52330 else
52340 buf_male_Day = c*10 + No
52350 'if (buf_month = 1) then
52360 'buf_Month$ = str$(buf_month)
52370 'endif
52380 buf_male_Day$ = str$(buf_male_Day)
52390 buf_male_Born_Day(2) = buf_male_Day:
52400 locate 0,3
52410 print "                                           "
52420 locate 1,3
52430 color Rgb(255,255,255)
52440 print "男性の生まれた月(1月~12月):" + buf_male_Day$
52450 goto Danjyo_Aisyou_Input_Male_Born_Day2:
52460 endif
52470 case 2:
52480 '==================================
52490 '何もしない
52500 'coun = 2
52510 '==================================
52520 'c= val(buf_Month$)
52530 'buf_month = c*10 + No
52540 'buf_Month$ = str$(buf_month)
52550 'locate 2,3
52560 'print "上司の生まれた月(1月～12月):";buf_Month$
52570 'goto Jyoushi_Input_Born_Month2:
52580 'case 3:
52590 'count=4
52600 'b=val(buf_month$)
52610 'buf_month=c*10+No
52620 'buf_Month$=str$(buf_month)
52630 'locate 2,3
52640 'print "上司の生まれた月(1月～12月):";buf_Month$
52650 'buf_month=val(buf_Month$)
52660 'year=val(buf_year$)
52670 if (No=-1) then
52680 No=0
52690 goto Danjyo_Aisyou_Input_Male_Born_Day:
52700 else
52710 goto Danjyo_Aisyou_Input_Male_Born_Day2:
52720 endif
52730 'case 4:
52740 'bufyear=buf_year
52750 'if (No=-1) then
52760 'buf_month = val(buf_Month$)
52770 'month = buf_month
52780 'sp_on 14,0
52790 'goto Input_Born_Day:
52800 'else
52810 'goto Input_Born_Month2:
52820 'endif
52830 end select
52840 endif
52850 '左の丸ボタン　キャンセル
52860 if (bg2=2) then
52870 select case count2
52880 case 0:
52890 if (No = -1) then
52900 buf_male_day=0:buf_male_Day$="**"
52910 count=0
52920 'goto rewrite2:
52930 else
52940 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
52950 buf_male_day = 0:buf_male_Day$ = "**"
52960 locate 0,3
52970 color rgb(255,255,255)
52980 print "                                       "
52990 goto rewrite2:
53000 if (No>12) then
53010 ui_msg"値が範囲外です。"
53020 goto rewrite2:
53030 endif
53040 endif
53050 endif
53060 rewrite2:
53070 locate 2,3
53080 color rgb(255,255,255)
53090 print "                                      "
53100 locate 2,3
53110 print "男性の生まれた日(1月~31月):"+buf_male_Day$
53120 goto Danjyo_Aisyou_Input_Male_Born_Day2:
53130 end select
53140 'endif
53150 endif
53160 end
53170 '-------生まれた日　女性　ここまで-------------
53180 '1-1.女性の名前を入力
53190 Danjyo_Aisyou_Input_Name_female:
53200 No=0:color RGB(255,255,255)
53210 '入力:キーボード
53220 cls 3:init "kb:2"
53230 '****************************************************************************************************
53240 'WUXG(1920x1200)の時ここから
53250 '****************************************************************************************************
53260 gload Gazo$ + "Screen1.png",0,0,0
53270 gload Gazo$ + "downscreen.png",0,0,800
53280 '****************************************************************************************************
53290 'WUXG(1920x1200)の時ここまで
53300 '****************************************************************************************************
53310 play "":color rgb(255,0,0):female_name$ = ""
53320 locate 0,1
53330 print "女性の相性" + chr$(13) + chr$(13)
53340 color rgb(255,255,255):
53350 locate 0,3
53360 print "女性の相性を求めます。男性の名前を" + chr$(13)
53370 print "入れてください" + chr$(13)
53380 locate 0,15:color rgb(0,0,0)
53390 Input "女性の名前:",female_name$
53400 '-------------------------------------------
53410 '-------生まれた年代　女性 ここから-------------
53420 Danjyo_Aisyou_Input_feMale_Born_Year:
53430 cls 3:play "":count=0:count2=0
53440 'No=-1:Okのとき
53450 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
53460 for i=0 to 1
53470 buf_day(i)=0
53480 next i
53490 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
53500 gload Gazo$ + "Screen1.png",0,0,0
53510 gload Gazo$ + "downscreen.png",0,0,800
53520 'Init"kb:4"
53530 '音声ファイル再生 2023.06.07
53540 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
53550 '****************************************************************************************************
53560 'WUXG(1920x1200)の時ここから
53570 '****************************************************************************************************
53580 font 48
53590 '****************************************************************************************************
53600 'WUXG(1920x1200)の時ここまで
53610 '****************************************************************************************************
53620 locate 0,1
53630 '文字色：黒　 color rgb(0,0,0)
53640 '文字色:白
53650 color rgb(255,255,255)
53660 print "女性の生まれた年代を入れて下さい" + chr$(13)
53670 '文字色:白
53680 color rgb(255,255,255)
53690 locate 1,3
53700 '文字色:白
53710 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
53720 color rgb(255,255,255)
53730 'locate 4,6:print ":7"
53740 'locate 9,6:print ":8"
53750 'locate 12,6:print ":9"
53760 locate 4,6
53770 '文字色:赤
53780 print ":7  :8  :9" + chr$(13)
53790 color rgb(255,255,255)
53800 locate 4,8
53810 print ":4  :5  :6" + chr$(13)
53820 color rgb(255,255,255)
53830 locate 4,10
53840 print ":1  :2  :3" + chr$(13)
53850 locate 4,12
53860 print "    :0"
53870 locate 12,12
53880 color rgb(0,0,255)
53890 print ":Ok"
53900 sp_on 4,0: sp_on 5,0:sp_on 6,0
53910 sp_on 7,0:sp_on 8,0:sp_on 9,0
53920 sp_on 10,0:sp_on 11,0:sp_on 12,0
53930 sp_on 13,0:sp_on 14,1
53940 '---------------------------------------------
53950 Danjyo_Aisyou_Input_feMale_Born_Year2:
53960 key$="":bg=0:y=0:y2=0:bg2=0:
53970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53980 key$ = inkey$
53990 bg = strig(1)
54000 y = stick(1)
54010 y2 = stick(0)
54020 bg2=strig(0)
54030 pause 200
54040 wend
54050 '十字キー　ここから
54060 '上の矢印　または、十字キー上
54070 if ((y = -1) or (key$ = chr$(30))) then
54080 select case No
54090 'No=-1:okのとき:初期の状態
54100 '0kボタンから３に移動
54110 '上に行く 処理
54120 case -1:
54130 No=3:sp_on 12,1:sp_on 14,0
54140 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
54150 '選択肢:3
54160 '3ボタンから 6に移動
54170 case 3:
54180 No=6:sp_on 12,0:sp_on 11,1
54190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54200 '6ボタンから ９に移動
54210 case 6:
54220 No=9:sp_on 10,1:sp_on 11,0
54230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54240 '6ボタンから ９に移動　ここまで
54250 '9で上を押して何もしない
54260 case 9:
54270 '何もしない
54280 No=9
54290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54300 '9で上を押しても何もしない　ここまで
54310 '上　 0ボタンから2ボタン
54320 'sp_on 6,1:1
54330 'sp_on 8,1:5
54340 'sp_on 7,1:7
54350 case 0:
54360 No=2:sp_on 13,0:sp_on 9,1:
54370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54380 '上  0ボタンから2ボタン　ここまで
54390 '2から５になる 上
54400 case 2:
54410 No=5:sp_on 8,1:sp_on 9,0:
54420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54430 case 5:
54440 No=8:sp_on 7,1:sp_on 8,0
54450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54460 case 8:
54470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54480 case 1:
54490 No=4:sp_on 5,1:sp_on 6,0
54500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54510 case 4:
54520 No=7:sp_on 4,1:sp_on 5,0
54530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54540 case 7:
54550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54560 end select
54570 endif
54580 '左３　ここまで
54590 '下の矢印
54600 '中央 2
54610 if ((y=1) or (key$ = chr$(31))) then
54620 select case No
54630 '9から６に下げる
54640 case 9:
54650 No=6:sp_on 11,1:sp_on 10,0
54660 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54670 '6から３に下げる
54680 case 6:
54690 No=3:sp_on 12,1:sp_on 11,0
54700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54710 '3から０ｋに変える
54720 case 3:
54730 No=-1:sp_on 14,1:sp_on 12,0
54740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54750 'Okから下のボタンを押しても何もしない
54760 case -1:
54770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54780 case 8:
54790 No=5:sp_on 8,1:sp_on 7,0
54800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54810 case 5:
54820 No=2:sp_on 9,1:sp_on 8,0
54830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54840 case 2:
54850 No=0:sp_on 13,1:sp_on 9,0
54860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54870 case 0:
54880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54890 case 7:
54900 No=4:sp_on 5,1:sp_on 4,0
54910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54920 case 4:
54930 No=1:sp_on 6,1:sp_on 5,0
54940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54950 case 1:
54960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
54970 end select
54980 endif
54990 '左へボタン 十字キー　左　or 　カーソル左
55000 if ((y2 = -1) or (key$ = chr$(29))) then
55010 select case No
55020 'Ok ボタン  Okから　左　０に行く
55030 case -1:
55040 No=0:sp_on 13,1:sp_on 14,0
55050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55060 '0 ボタン  左　何もしない
55070 case 0:
55080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55090 case 3:
55100 No=2:sp_on 9,1:sp_on 12,0:
55110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55120 case 2:
55130 No=1:sp_on 6,1:sp_on 9,0:
55140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55150 case 1:
55160 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55170 case 6:
55180 No=5:sp_on 8,1:sp_on 11,0
55190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55200 case 5:
55210 No=4:sp_on 5,1:sp_on 8,0
55220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55230 case 4:
55240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55250 case 9:
55260 No=8:sp_on 7,1:sp_on 10,0
55270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55280 case 8:
55290 No=7:sp_on 4,1:sp_on 7,0
55300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55310 case 7:
55320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55330 end select
55340 endif
55350 '右  十字キー　右　or カーソル　右
55360 if ((y2 = 1) or (key$ = chr$(28))) then
55370 select case No
55380 '0ボタンからokボタン右に移動
55390 case 0:
55400 No=-1:sp_on 14,1:sp_on 13,0
55410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55420 '0ボタンからokボタン 右に移動　ここまで
55430 'OKボタンで右を押して何もしない
55440 case -1:
55450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55460 case 1:
55470 No=2:sp_on 9,1:sp_on 6,0
55480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55490 case 2:
55500 No=3:sp_on 12,1:sp_on 9,0
55510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55520 case 3:
55530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55540 case 4:
55550 No=5:sp_on 8,1:sp_on 5,0
55560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55570 case 5:
55580 No=6:sp_on 11,1:sp_on 8,0
55590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55600 case 7:
55610 No=8:sp_on 7,1:sp_on 4,0
55620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55630 case 8:
55640 No=9:sp_on 10,1:sp_on 7,0
55650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55660 case 9:
55670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55680 case 6:
55690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55700 end select
55710 'Okから右ボタンを押して何もしない ここまで
55720 endif
55730 '十字キー　ここまで
55740 '==============================
55750 'ここから
55760 '==============================
55770 if ((bg = 2) or (key$ = chr$(13))) then
55780 select case count
55790 case 0:
55800 count = 1
55810 if (No = -1) then
55820 count = 0:No=0
55830 buf_feMale_Born_Day(0) = No
55840 'Okボタンを押したとき
55850 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55860 else
55870 'Okボタン以外が押されたとき
55880 if (No >= 1 and No <= 2) then
55890 buf_female_year$="":buf_female_year$ = str$(No) + "***"
55900 buf_female_year = No:a= No
55910 buf_Jyoushi_Born_Day(0) = No
55920 locate 1,3
55930 color rgb(255,255,255)
55940 print "女性の生まれた年代(西暦4桁):";buf_female_year$
55950 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
55960 else
55970 count=0
55980 ui_msg"数字が範囲外になります。"
55990 buf_female_year$="":buf_female_year=0
56000 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56010 endif
56020 endif
56030 case 1:
56040 count = 2
56050 if (No = -1) then
56060 count = 1
56070 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56080 else
56090 buf_female_year = a * 10 + No
56100 b=buf_female_year
56110 buf_year$ = str$(buf_female_year) + "**"
56120 buf_Jyoushi_Born_Day(0)=buf_female_year
56130 locate 1,3
56140 color rgb(255,255,255)
56150 print "                                                                "
56160 locate 1,3
56170 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
56180 'if (No = -1) then
56190 'count=1
56200 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56210 endif
56220 case 2:
56230 count=3
56240 if (No=-1) then
56250 count =2
56260 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56270 else
56280 buf_female_year = b * 10 + No
56290 c=buf_female_year
56300 buf_female_year$ = str$(buf_female_year) + "*"
56310 buf_Jyoushi_Born_Day(0) = buf_female_year
56320 locate 1,3
56330 color rgb(255,255,255)
56340 print "                                        "
56350 locate 1,3
56360 print "女性の生まれた年代(西暦4桁):";buf_female_year$
56370 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56380 endif
56390 case 3:
56400 count=4
56410 if (No = -1) then
56420 No=0
56430 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56440 else
56450 buf_female_year = c * 10 + No
56460 buf_female_year$ = str$(buf_female_year)
56470 buf_Jyoushi_Born_Day(0) = buf_female_year
56480 locate 1,3
56490 color RGB(255,255,255)
56500 print "                                      "
56510 locate 1,3
56520 print "女性の生まれた年代(西暦4桁):";buf_female_year$
56530 buf_female_year=val(buf_female_year$)
56540 'year=val(buf_year$)
56550 'if (No=-1) then
56560 'goto Input_Born_Month:
56570 'else
56580 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56590 endif
56600 case 4:
56610 'bufyear=buf_year
56620 if (No=-1) then
56630 buf_female_year = val(buf_female_year$)
56640 buf_Jyoushi_Born_Day(0)=buf_female_year
56650 sp_on 14,0:No=0
56660 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56670 else
56680 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56690 endif
56700 end select
56710 endif
56720 '===========================
56730 'ここまでを部下のところにコピーする.
56740 '===========================
56750 if (bg2 = 2) then
56760 select case count2
56770 case 0:
56780 if (No = -1) then
56790 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
56800 count=0
56810 locate 1,3
56820 color rgb(255,255,255)
56830 print "                                      "
56840 locate 1,3
56850 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
56860 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56870 else
56880 '(buf_year=0) then
56890 buf_female_year=0:buf_year$="****"
56900 locate 1,3
56910 print "                                       "
56920 locate 1,3
56930 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
56940 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56950 'endif
56960 endif
56970 end select
56980 endif
56990 '-------生まれた年代　女性 ここまで-------------
57000 '-------生まれた月　女性 ここまで--------------
57010 Danjyo_Aisyou_Input_feMale_Born_Month:
57020 cls 3:play "":count=0:count2=0
57030 'No=-1:Okのとき
57040 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
57050 for i=0 to 1
57060 buf_month(i)=0
57070 next i
57080 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
57090 '****************************************************************************************************
57100 'WUXG(1920x1200)の時ここから
57110 '****************************************************************************************************
57120 gload Gazo$ + "Screen1.png",0,0,0
57130 gload Gazo$ + "downscreen.png",0,0,800
57140 '****************************************************************************************************
57150 'WUXG(1920x1200)の時ここから
57160 '****************************************************************************************************
57170 'Init"kb:4"
57180 '音声ファイル再生 2023.06.07
57190 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
57200 font 48
57210 locate 0,1
57220 '文字色：黒　 color rgb(0,0,0)
57230 '文字色:白
57240 color rgb(255,255,255)
57250 print "女性の生まれた月を入れて下さい" + chr$(13)
57260 '文字色:白
57270 color rgb(255,255,255)
57280 locate 1,3
57290 '文字色:白
57300 print "女性の生まれた月(1月~12月):"+buf_female_Month$
57310 color rgb(255,255,255)
57320 'locate 4,6:print ":7"
57330 'locate 9,6:print ":8"
57340 'locate 12,6:print ":9"
57350 locate 4,6
57360 '文字色:赤
57370 print ":7  :8  :9" + chr$(13)
57380 color rgb(255,255,255)
57390 locate 4,8
57400 print ":4  :5  :6" + chr$(13)
57410 color rgb(255,255,255)
57420 locate 4,10
57430 print ":1  :2  :3" + chr$(13)
57440 locate 4,12
57450 print "    :0"
57460 locate 12,12
57470 color rgb(0,0,255)
57480 print ":Ok"
57490 sp_on 4,0: sp_on 5,0:sp_on 6,0
57500 sp_on 7,0:sp_on 8,0:sp_on 9,0
57510 sp_on 10,0:sp_on 11,0:sp_on 12,0
57520 sp_on 13,0:sp_on 14,1
57530 '---------------------------------------------
57540 Danjyo_Aisyou_Input_feMale_Born_Month2:
57550 key$="":bg=0:y=0:y2=0:bg2=0
57560 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
57570 key$ = inkey$
57580 bg = strig(1)
57590 y = stick(1)
57600 y2 = stick(0)
57610 bg2 = strig(0)
57620 pause 200
57630 wend
57640 '十字キー　ここから
57650 '上の矢印　または、十字キー上
57660 if ((y = -1) or (key$ = chr$(30))) then
57670 select case No
57680 'No=-1:okのとき:初期の状態
57690 '0kボタンから３に移動
57700 '上に行く 処理
57710 case -1:
57720 No=3:sp_on 12,1:sp_on 14,0
57730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
57740 '選択肢:3
57750 '3ボタンから 6に移動
57760 case 3:
57770 No=6:sp_on 12,0:sp_on 11,1
57780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
57790 '6ボタンから ９に移動
57800 case 6:
57810 No=9:sp_on 10,1:sp_on 11,0
57820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
57830 '6ボタンから ９に移動　ここまで
57840 '9で上を押して何もしない
57850 case 9:
57860 '何もしない
57870 No=9
57880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
57890 '9で上を押しても何もしない　ここまで
57900 '上　 0ボタンから2ボタン
57910 'sp_on 6,1:1
57920 'sp_on 8,1:5
57930 'sp_on 7,1:7
57940 case 0:
57950 No=2:sp_on 13,0:sp_on 9,1:
57960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
57970 '上  0ボタンから2ボタン　ここまで
57980 '2から５になる 上
57990 case 2:
58000 No=5:sp_on 8,1:sp_on 9,0:
58010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58020 case 5:
58030 No=8:sp_on 7,1:sp_on 8,0
58040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58050 case 8:
58060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58070 case 1:
58080 No=4:sp_on 5,1:sp_on 6,0
58090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58100 case 4:
58110 No=7:sp_on 4,1:sp_on 5,0
58120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58130 case 7:
58140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58150 end select
58160 endif
58170 '左３　ここまで
58180 '下の矢印
58190 '中央 2
58200 if ((y=1) or (key$ = chr$(31))) then
58210 select case No
58220 '9から６に下げる
58230 case 9:
58240 No=6:sp_on 11,1:sp_on 10,0
58250 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
58260 '6から３に下げる
58270 case 6:
58280 No=3:sp_on 12,1:sp_on 11,0
58290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58300 '3から０ｋに変える
58310 case 3:
58320 No=-1:sp_on 14,1:sp_on 12,0
58330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58340 'Okから下のボタンを押しても何もしない
58350 case -1:
58360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58370 case 8:
58380 No=5:sp_on 8,1:sp_on 7,0
58390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58400 case 5:
58410 No=2:sp_on 9,1:sp_on 8,0
58420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58430 case 2:
58440 No=0:sp_on 13,1:sp_on 9,0
58450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58460 case 0:
58470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58480 case 7:
58490 No=4:sp_on 5,1:sp_on 4,0
58500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58510 case 4:
58520 No=1:sp_on 6,1:sp_on 5,0
58530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58540 case 1:
58550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58560 end select
58570 endif
58580 '左へボタン 十字キー　左　or 　カーソル左
58590 if ((y2 = -1) or (key$ = chr$(29))) then
58600 select case No
58610 'Ok ボタン  Okから　左　０に行く
58620 case -1:
58630 No=0:sp_on 13,1:sp_on 14,0
58640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58650 '0 ボタン  左　何もしない
58660 case 0:
58670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58680 case 3:
58690 No=2:sp_on 9,1:sp_on 12,0:
58700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58710 case 2:
58720 No=1:sp_on 6,1:sp_on 9,0:
58730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58740 case 1:
58750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58760 case 6:
58770 No=5:sp_on 8,1:sp_on 11,0
58780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58790 case 5:
58800 No=4:sp_on 5,1:sp_on 8,0
58810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58820 case 4:
58830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58840 case 9:
58850 No=8:sp_on 7,1:sp_on 10,0
58860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58870 case 8:
58880 No=7:sp_on 4,1:sp_on 7,0
58890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58900 case 7:
58910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
58920 end select
58930 endif
58940 '右  十字キー　右　or カーソル　右
58950 if ((y2 = 1) or (key$ = chr$(28))) then
58960 select case No
58970 '0ボタンからokボタン右に移動
58980 case 0:
58990 No=-1:sp_on 14,1:sp_on 13,0
59000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59010 '0ボタンからokボタン 右に移動　ここまで
59020 'OKボタンで右を押して何もしない
59030 case -1:
59040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59050 case 1:
59060 No=2:sp_on 9,1:sp_on 6,0
59070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59080 case 2:
59090 No=3:sp_on 12,1:sp_on 9,0
59100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59110 case 3:
59120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59130 case 4:
59140 No=5:sp_on 8,1:sp_on 5,0
59150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59160 case 5:
59170 No=6:sp_on 11,1:sp_on 8,0
59180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59190 case 7:
59200 No=8:sp_on 7,1:sp_on 4,0
59210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59220 case 8:
59230 No=9:sp_on 10,1:sp_on 7,0
59240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59250 case 9:
59260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59270 case 6:
59280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59290 end select
59300 'Okから右ボタンを押して何もしない ここまで
59310 endif
59320 '十字キー　ここまで
59330 '右の丸ボタン + Enter key 決定キー
59340 if ((bg=2) or (key$=chr$(13))) then
59350 select case count
59360 case 0:
59370 if (No=-1) then No=0
59380 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
59390 if (buf_female_month > 1 and buf_female_month < 10)  then
59400 buf_female_Month$ = str$(buf_female_month)
59410 'buf_month=No
59420 endif
59430 if (buf_female_month = 1)  then
59440 buf_female_Month$ = str$(buf_female_month) + "*"
59450 'c=buf_month
59460 endif
59470 locate 1,3
59480 print "                                     "
59490 color RGB(255,255,255)
59500 locate 1,3
59510 print "女性の生まれた月(1月~12月):" + buf_female_Month$
59520 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59530 case 1:
59540 count = 2:
59550 'c = val(buf_Month$)
59560 if (No = -1) then
59570 'count=0
59580 No=0
59590 month=buf_female_month
59600 buf_female_month=val(buf_female_Month$)
59610 month=buf_female_month
59620 buf_Jyoushi_Born_Day(1)=month
59630 '生まれた日に飛ぶ
59640 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59650 else
59660 buf_female_month = c*10 + No
59670 'if (buf_month = 1) then
59680 'buf_Month$ = str$(buf_month)
59690 'endif
59700 buf_female_Month$ = str$(buf_female_month)
59710 buf_Jyoushi_Born_Day(1) = buf_female_month
59720 locate 0,3
59730 print "                                           "
59740 locate 1,3
59750 color Rgb(255,255,255)
59760 print "女性の生まれた月(1月~12月):" + buf_female_Month$
59770 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
59780 endif
59790 case 2:
59800 '==================================
59810 '何もしない
59820 'coun = 2
59830 '==================================
59840 'c= val(buf_Month$)
59850 'buf_month = c*10 + No
59860 'buf_Month$ = str$(buf_month)
59870 'locate 2,3
59880 'print "上司の生まれた月(1月～12月):";buf_Month$
59890 'goto Jyoushi_Input_Born_Month2:
59900 'case 3:
59910 'count=4
59920 'b=val(buf_month$)
59930 'buf_month=c*10+No
59940 'buf_Month$=str$(buf_month)
59950 'locate 2,3
59960 'print "上司の生まれた月(1月～12月):";buf_Month$
59970 'buf_month=val(buf_Month$)
59980 'year=val(buf_year$)
59990 if (No=-1) then
60000 No=0
60010 goto Danjyo_Aisyou_Input_Male_Born_Day:
60020 else
60030 goto Danjyo_Aisyou_Input_Male_Born_Day2:
60040 endif
60050 'case 4:
60060 'bufyear=buf_year
60070 'if (No=-1) then
60080 'buf_month = val(buf_Month$)
60090 'month = buf_month
60100 'sp_on 14,0
60110 'goto Input_Born_Day:
60120 'else
60130 'goto Input_Born_Month2:
60140 'endif
60150 end select
60160 endif
60170 '左の丸ボタン　キャンセル
60180 if (bg2=2) then
60190 select case count2
60200 case 0:
60210 if (No = -1) then
60220 buf_female_month=0:buf_female_Month$="**"
60230 count=0
60240 'goto rewrite2:
60250 else
60260 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
60270 buf_female_month = 0:buf_female_Month$ = "**"
60280 locate 0,3
60290 color rgb(255,255,255)
60300 print "                                       "
60310 goto rewrite2:
60320 if (No>12) then
60330 ui_msg"値が範囲外です。"
60340 goto rewrite2:
60350 endif
60360 endif
60370 endif
60380 rewrite2:
60390 locate 2,3
60400 color rgb(255,255,255)
60410 print "                                      "
60420 locate 2,3
60430 print "女性の生まれた月(1月~12月):"+buf_female_Month$
60440 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60450 end select
60460 'endif
60470 endif
60480 end
60490 '-------生まれた月　女性 ここまで-------------
60500 '-------生まれた日　女性 ここまで-------------
60510 Danjyo_Aisyou_Input_feMale_Born_Day:
60520 cls 3:play "":count=0:count2=0
60530 'No=-1:Okのとき
60540 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
60550 for i=0 to 1
60560 buf_female_day(i)=0
60570 next i
60580 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
60590 '****************************************************************************************************
60600 'WUXG(1920x1200)の時ここから
60610 '****************************************************************************************************
60620 gload Gazo$ + "Screen1.png",0,0,0
60630 gload Gazo$ + "downscreen.png",0,0,800
60640 '****************************************************************************************************
60650 'WUXG(1920x1200)の時ここまで
60660 '****************************************************************************************************
60670 'Init"kb:4"
60680 '音声ファイル再生 2023.06.07
60690 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
60700 font 48
60710 locate 0,1
60720 '文字色：黒　 color rgb(0,0,0)
60730 '文字色:白
60740 color rgb(255,255,255)
60750 print "女性の生まれた日を入れて下さい" + chr$(13)
60760 '文字色:白
60770 color rgb(255,255,255)
60780 locate 1,3
60790 '文字色:白
60800 print "女性の生まれた日(1月~31月):" + buf_female_Day$
60810 color rgb(255,255,255)
60820 'locate 4,6:print ":7"
60830 'locate 9,6:print ":8"
60840 'locate 12,6:print ":9"
60850 locate 4,6
60860 '文字色:赤
60870 print ":7  :8  :9" + chr$(13)
60880 color rgb(255,255,255)
60890 locate 4,8
60900 print ":4  :5  :6" + chr$(13)
60910 color rgb(255,255,255)
60920 locate 4,10
60930 print ":1  :2  :3" + chr$(13)
60940 locate 4,12
60950 print "    :0"
60960 locate 12,12
60970 color rgb(0,0,255)
60980 print ":Ok"
60990 sp_on 4,0: sp_on 5,0:sp_on 6,0
61000 sp_on 7,0:sp_on 8,0:sp_on 9,0
61010 sp_on 10,0:sp_on 11,0:sp_on 12,0
61020 sp_on 13,0:sp_on 14,1
61030 '---------------------------------------------
61040 Danjyo_Aisyou_Input_feMale_Born_Day2:
61050 key$="":bg=0:y=0:y2=0:bg2=0
61060 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
61070 key$ = inkey$
61080 bg = strig(1)
61090 y = stick(1)
61100 y2 = stick(0)
61110 bg2 = strig(0)
61120 pause 200
61130 wend
61140 '十字キー　ここから
61150 '上の矢印　または、十字キー上
61160 if ((y = -1) or (key$ = chr$(30))) then
61170 select case No
61180 'No=-1:okのとき:初期の状態
61190 '0kボタンから３に移動
61200 '上に行く 処理
61210 case -1:
61220 No=3:sp_on 12,1:sp_on 14,0
61230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61240 '選択肢:3
61250 '3ボタンから 6に移動
61260 case 3:
61270 No=6:sp_on 12,0:sp_on 11,1
61280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61290 '6ボタンから ９に移動
61300 case 6:
61310 No=9:sp_on 10,1:sp_on 11,0
61320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61330 '6ボタンから ９に移動　ここまで
61340 '9で上を押して何もしない
61350 case 9:
61360 '何もしない
61370 No=9
61380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61390 '9で上を押しても何もしない　ここまで
61400 '上　 0ボタンから2ボタン
61410 'sp_on 6,1:1
61420 'sp_on 8,1:5
61430 'sp_on 7,1:7
61440 case 0:
61450 No=2:sp_on 13,0:sp_on 9,1:
61460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61470 '上  0ボタンから2ボタン　ここまで
61480 '2から５になる 上
61490 case 2:
61500 No=5:sp_on 8,1:sp_on 9,0:
61510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61520 case 5:
61530 No=8:sp_on 7,1:sp_on 8,0
61540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61550 case 8:
61560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61570 case 1:
61580 No=4:sp_on 5,1:sp_on 6,0
61590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61600 case 4:
61610 No=7:sp_on 4,1:sp_on 5,0
61620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61630 case 7:
61640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61650 end select
61660 endif
61670 '左３　ここまで
61680 '下の矢印
61690 '中央 2
61700 if ((y=1) or (key$ = chr$(31))) then
61710 select case No
61720 '9から６に下げる
61730 case 9:
61740 No=6:sp_on 11,1:sp_on 10,0
61750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61760 '6から３に下げる
61770 case 6:
61780 No=3:sp_on 12,1:sp_on 11,0
61790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61800 '3から０ｋに変える
61810 case 3:
61820 No=-1:sp_on 14,1:sp_on 12,0
61830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61840 'Okから下のボタンを押しても何もしない
61850 case -1:
61860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61870 case 8:
61880 No=5:sp_on 8,1:sp_on 7,0
61890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61900 case 5:
61910 No=2:sp_on 9,1:sp_on 8,0
61920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61930 case 2:
61940 No=0:sp_on 13,1:sp_on 9,0
61950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61960 case 0:
61970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
61980 case 7:
61990 No=4:sp_on 5,1:sp_on 4,0
62000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62010 case 4:
62020 No=1:sp_on 6,1:sp_on 5,0
62030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62040 case 1:
62050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62060 end select
62070 endif
62080 '左へボタン 十字キー　左　or 　カーソル左
62090 if ((y2 = -1) or (key$ = chr$(29))) then
62100 select case No
62110 'Ok ボタン  Okから　左　０に行く
62120 case -1:
62130 No=0:sp_on 13,1:sp_on 14,0
62140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62150 '0 ボタン  左　何もしない
62160 case 0:
62170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62180 case 3:
62190 No=2:sp_on 9,1:sp_on 12,0:
62200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62210 case 2:
62220 No=1:sp_on 6,1:sp_on 9,0:
62230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62240 case 1:
62250 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62260 case 6:
62270 No=5:sp_on 8,1:sp_on 11,0
62280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62290 case 5:
62300 No=4:sp_on 5,1:sp_on 8,0
62310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62320 case 4:
62330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62340 case 9:
62350 No=8:sp_on 7,1:sp_on 10,0
62360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62370 case 8:
62380 No=7:sp_on 4,1:sp_on 7,0
62390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62400 case 7:
62410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62420 end select
62430 endif
62440 '右  十字キー　右　or カーソル　右
62450 if ((y2 = 1) or (key$ = chr$(28))) then
62460 select case No
62470 '0ボタンからokボタン右に移動
62480 case 0:
62490 No=-1:sp_on 14,1:sp_on 13,0
62500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62510 '0ボタンからokボタン 右に移動　ここまで
62520 'OKボタンで右を押して何もしない
62530 case -1:
62540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62550 case 1:
62560 No=2:sp_on 9,1:sp_on 6,0
62570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62580 case 2:
62590 No=3:sp_on 12,1:sp_on 9,0
62600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62610 case 3:
62620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62630 case 4:
62640 No=5:sp_on 8,1:sp_on 5,0
62650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62660 case 5:
62670 No=6:sp_on 11,1:sp_on 8,0
62680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62690 case 7:
62700 No=8:sp_on 7,1:sp_on 4,0
62710 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62720 case 8:
62730 No=9:sp_on 10,1:sp_on 7,0
62740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62750 case 9:
62760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62770 case 6:
62780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
62790 end select
62800 'Okから右ボタンを押して何もしない ここまで
62810 endif
62820 '十字キー　ここまで
62830 '右の丸ボタン + Enter key 決定キー
62840 if ((bg=2) or (key$=chr$(13))) then
62850 select case count
62860 case 0:
62870 if (No=-1) then No=0
62880 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
62890 if (buf_female_day > 1 and buf_female_day < 10)  then
62900 buf_female_Day$ = str$(buf_female_day)
62910 'buf_month=No
62920 endif
62930 if (buf_female_day = 1)  then
62940 buf_female_Day$ = str$(buf_female_day) + "*"
62950 'c=buf_month
62960 endif
62970 locate 1,3
62980 print "                                     "
62990 color RGB(255,255,255)
63000 locate 1,3
63010 print "女性の生まれた日(1月~31月):" + buf_female_Day$
63020 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
63030 case 1:
63040 count = 2:
63050 'c = val(buf_Month$)
63060 if (No = -1) then
63070 'count=0
63080 No=0
63090 day=buf_female_day
63100 buf_female_day=val(buf_female_day$)
63110 day=bu_female_day
63120 buf_female_day(1)=day
63130 '生まれた日に飛ぶ
63140 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
63150 else
63160 bu_female_day = c*10 + No
63170 'if (buf_month = 1) then
63180 'buf_Month$ = str$(buf_month)
63190 'endif
63200 buf_female_day$ = str$(buf_female_day)
63210 buf_female_day(1) = buf_female_day
63220 locate 0,3
63230 print "                                           "
63240 locate 1,3
63250 color Rgb(255,255,255)
63260 print "女性の生まれた日(1月~31月):" + buf_female_Day$
63270 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
63280 endif
63290 case 2:
63300 '==================================
63310 '何もしない
63320 'coun = 2
63330 '==================================
63340 'c= val(buf_Month$)
63350 'buf_month = c*10 + No
63360 'buf_Month$ = str$(buf_month)
63370 'locate 2,3
63380 'print "上司の生まれた月(1月～12月):";buf_Month$
63390 'goto Jyoushi_Input_Born_Month2:
63400 'case 3:
63410 'count=4
63420 'b=val(buf_month$)
63430 'buf_month=c*10+No
63440 'buf_Month$=str$(buf_month)
63450 'locate 2,3
63460 'print "上司の生まれた月(1月～12月):";buf_Month$
63470 'buf_month=val(buf_Month$)
63480 'year=val(buf_year$)
63490 if (No=-1) then
63500 No=0
63510 goto Danjyo_Aisyou_Input_Male_Born_Day:
63520 else
63530 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
63540 endif
63550 'case 4:
63560 'bufyear=buf_year
63570 'if (No=-1) then
63580 'buf_month = val(buf_Month$)
63590 'month = buf_month
63600 'sp_on 14,0
63610 'goto Input_Born_Day:
63620 'else
63630 'goto Input_Born_Month2:
63640 'endif
63650 end select
63660 endif
63670 '左の丸ボタン　キャンセル
63680 if (bg2=2) then
63690 select case count2
63700 case 0:
63710 if (No = -1) then
63720 buf_female_day=0:buf_female_Day$="**"
63730 count=0
63740 'goto rewrite2:
63750 else
63760 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
63770 buf_female_day = 0:buf_female_Day$ = "**"
63780 locate 0,3
63790 color rgb(255,255,255)
63800 print "                                       "
63810 goto rewrite2:
63820 if (No>12) then
63830 ui_msg"値が範囲外です。"
63840 goto rewrite2:
63850 endif
63860 endif
63870 endif
63880 rewrite2:
63890 locate 2,3
63900 color rgb(255,255,255)
63910 print "                                      "
63920 locate 2,3
63930 print "女性の生まれた日(1月~31月):"+buf_female_Day$
63940 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
63950 end select
63960 'endif
63970 endif
63980 end
63990 '-------生まれた日　女性 ここまで-------------
64000 '1.男女の相性 ここまで
64010 '2.ビジネスの相性　
64020 '1.1人目のビジネスの相性　名前入力　1人目
64030 Business_Aishou_Input_1_parson:
64040 No=0:color RGB(255,255,255)
64050 cls 3:init "kb:2"
64060 '****************************************************************************************************
64070 'WUXG(1920x1200)の時ここから
64080 '****************************************************************************************************
64090 gload Gazo$ + "Screen1.png",0,0,0
64100 gload Gazo$ + "downscreen.png",0,0,800
64110 '****************************************************************************************************
64120 'WUXG(1920x1200)の時ここまで
64130 '****************************************************************************************************
64140 play "":color rgb(255,0,0):name$ = ""
64150 locate 0,1
64160 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
64170 color rgb(255,255,255):
64180 locate 0,3
64190 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
64200 print "入れてください" + chr$(13)
64210 locate 0,15:color rgb(0,0,0)
64220 Input "1人目の名前:",name$
64230 'color rgb(0,0,0)
64240 'locate 0,13:print "                                     "
64250 'locate 0,13:print "1人目の名前を入力してエンターキー":
64260 'buffer_name$(0):1人目の名前
64270 buffer_name$(0) = name$:
64280 goto Business_Aishou_Input_2_Parson:
64290 '2.2人目のビジネスの相性 名前入力 2人目
64300 Business_Aishou_Input_2_Parson:
64310 cls 3:init "kb:2":name$ = "":No=0
64320 '****************************************************************************************************
64330 'WUXG(1920x1200)の時ここから
64340 '****************************************************************************************************
64350 gload Gazo$ + "Screen1.png",0,0,0
64360 gload Gazo$ + "downscreen.png",0,0,800
64370 '****************************************************************************************************
64380 'WUXG(1920x1200)の時ここまで
64390 '****************************************************************************************************
64400 color rgb(255,0,0)
64410 'Title
64420 locate 0,1
64430 print "ビジネスの相性　2人目"
64440 locate 0,3
64450 color rgb(255,255,255)
64460 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
64470 print "入れてください" + chr$(13)
64480 locate 0,15:color rgb(0,0,0)
64490 Input "2人目の名前:",name$
64500 'color rgb(0,0,0)
64510 'locate 0,15:print "                                              "
64520 'locate 0,15:print "2人目の名前を入力してエンター ":
64530 '2人目
64540 '2人目の名前を入れるに代入
64550 buffer_name$(1) = name$:
64560 goto Select_jyoushi:
64570 '3.上司の選択
64580 Select_jyoushi:
64590 '****************************************************************************************************
64600 'WUXG(1920x1200)の時ここから
64610 '****************************************************************************************************
64620 cls 3:gload Gazo$ + "Screen1.png",0,0,0
64630 gload Gazo$ + "downscreen.png",0,0,800
64640 '****************************************************************************************************
64650 'WUXG(1920x1200)の時ここまで
64660 '****************************************************************************************************
64670 init "kb:4":No=0
64680 color rgb(0,0,255)
64690 locate 1,1
64700 print "上司の選択"
64710 color rgb(255,255,255)
64720 locate 0,4:print "名前から上司の方を選んでください"
64730 locate 0,6
64740 print " :";buffer_name$(0);"が上 司";chr$(13)
64750 locate 0,8
64760 print " :";buffer_name$(1);"が上 司";chr$(13)
64770 locate 0,15:
64780 print "                                     "
64790 locate 0,15:color rgb(0,0,0)
64800 print "上司の方を選んで右の丸ボタン"
64810 sp_on 0,1:sp_on 1,0:sp_on 2,0
64820 Select_jyoushi2:
64830 'ここでNo=0をおいてはいけない
64840 y=0:key$="":bg=0:
64850 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
64860 y = stick(1)
64870 key$ = inkey$
64880 bg = strig(1)
64890 pause 5
64900 wend
64910 '1.カーソル下の処理　or 十字キーの下処理
64920 if ((key$ = chr$(31)) or (y = 1)) then
64930 select case No
64940 case 0:
64950 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
64960 case 1:
64970 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
64980 end select
64990 endif
65000 '2.カーソル上処理　or 十字キーの上の処理
65010 if ((key$ = chr$(30)) or (y = -1)) then
65020 select case No
65030 case 0:
65040 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
65050 case 1:
65060 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
65070 end select
65080 endif
65090 if ((key$ = chr$(13)) or (bg = 2)) then
65100 select case No
65110 case 0:
65120 '上司(name1)を配列に代入
65130 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
65140 case 1:
65150 '上司（name2)を配列に代入
65160 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
65170 end select
65180 endif
65190 '3.決定ボタン　Enter or 右の丸ボタン
65200 '1.誕生日入力
65210 '1-1.生まれた年を入力
65220 'Jyoushi_born_year:
65230 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
65240 '---------------------------------------------'
65250 '誕生日入力(生れた年代)
65260 Jyoushi_Input_Seireki:
65270 'buf_Jyoushi_Born_Year:上司の生まれた年代
65280 'buf_Jyoushi_Born_Day(0) = born_year
65290 cls 3:play "":count=0:count2=0
65300 init"kb:4"
65310 'No=-1:Okのとき
65320 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
65330 for i=0 to 3
65340 buf_Jyoushi_Born_Day(i)=0
65350 next i
65360 '****************************************************************************************************
65370 'WUXG(1920x1200)の時ここから
65380 '****************************************************************************************************
65390 gload Gazo$ + "Screen2.png",0,0,0
65400 gload Gazo$ + "downscreen.png",0,0,800
65410 '****************************************************************************************************
65420 'WUXG(1920x1200)の時ここまで
65430 '****************************************************************************************************
65440 'Init"kb:2"
65450 '音声ファイル再生 2023.06.07
65460 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
65470 font 48
65480 locate 0,1
65490 '文字色：黒　 color rgb(0,0,0)
65500 color rgb(255,255,255)
65510 print "上司の生まれた年代を入れて下さい" + chr$(13)
65520 color rgb(255,255,255)
65530 locate 1,3
65540 print "上司の生まれた年代(西暦4桁):";buf_year$
65550 color rgb(255,255,255)
65560 'locate 4,6:print ":7"
65570 'locate 9,6:print ":8"
65580 'locate 12,6:print ":9"
65590 'locate 4,6
65600 'print ":7  :8  :9" + chr$(13)
65610 'color rgb(255,255,255)
65620 'locate 4,8
65630 'print ":4  :5  :6" + chr$(13)
65640 'color rgb(255,255,255)
65650 'locate 4,10
65660 'print ":1  :2  :3" + chr$(13)
65670 'locate 4,12
65680 'print "    :0"
65690 'locate 12,12
65700 'color rgb(0,0,255)
65710 'print ":Ok"
65720 sp_on 4,0: sp_on 5,0:sp_on 6,0
65730 sp_on 7,0:sp_on 8,0:sp_on 9,0
65740 sp_on 10,0:sp_on 11,0:sp_on 12,0
65750 sp_on 13,0:sp_on 14,1
65760 Jyoushi_Input_Seireki2:
65770 key$="":bg=0:y=0:y2=0:bg2=0:
65780 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
65790 key$ = inkey$
65800 bg = strig(1)
65810 y = stick(1)
65820 y2 = stick(0)
65830 bg2=strig(0)
65840 pause 200
65850 wend
65860 '十字キー　ここから
65870 '上の矢印　または、十字キー上
65880 if ((y = -1) or (key$ = chr$(30))) then
65890 select case No
65900 'No=-1:okのとき:初期の状態
65910 '0kボタンから３に移動
65920 '上に行く 処理
65930 case -1:
65940 No=3:sp_on 12,1:sp_on 14,0
65950 pause 200:goto Jyoushi_Input_Seireki2:
65960 '選択肢:3
65970 '3ボタンから 6に移動
65980 case 3:
65990 No=6:sp_on 12,0:sp_on 11,1
66000 pause 200:goto Jyoushi_Input_Seireki2:
66010 '6ボタンから ９に移動
66020 case 6:
66030 No=9:sp_on 10,1:sp_on 11,0
66040 pause 200:goto Jyoushi_Input_Seireki2:
66050 '6ボタンから ９に移動　ここまで
66060 '9で上を押して何もしない
66070 case 9:
66080 '何もしない
66090 No=9
66100 pause 200:goto Jyoushi_Input_Seireki2:
66110 '9で上を押しても何もしない　ここまで
66120 '上　 0ボタンから2ボタン
66130 'sp_on 6,1:1
66140 'sp_on 8,1:5
66150 'sp_on 7,1:7
66160 case 0:
66170 No=2:sp_on 13,0:sp_on 9,1:
66180 pause 200:goto Jyoushi_Input_Seireki2:
66190 '上  0ボタンから2ボタン　ここまで
66200 '2から５になる 上
66210 case 2:
66220 No=5:sp_on 8,1:sp_on 9,0:
66230 pause 200:goto Jyoushi_Input_Seireki2:
66240 case 5:
66250 No=8:sp_on 7,1:sp_on 8,0
66260 pause 200:goto Jyoushi_Input_Seireki2:
66270 case 8:
66280 pause 200:goto Jyoushi_Input_Seireki2:
66290 case 1:
66300 No=4:sp_on 5,1:sp_on 6,0
66310 pause 200:goto Jyoushi_Input_Seireki2:
66320 case 4:
66330 No=7:sp_on 4,1:sp_on 5,0
66340 pause 200:goto Jyoushi_Input_Seireki2:
66350 case 7:
66360 pause 200:goto Jyoushi_Input_Seireki2:
66370 end select
66380 endif
66390 '左３　ここまで
66400 '下の矢印
66410 '中央 2
66420 if ((y=1) or (key$ = chr$(31))) then
66430 select case No
66440 '9から６に下げる
66450 case 9:
66460 No=6:sp_on 11,1:sp_on 10,0
66470 pause 200:goto Jyoushi_Input_Seireki2:
66480 '6から３に下げる
66490 case 6:
66500 No=3:sp_on 12,1:sp_on 11,0
66510 pause 200:goto Jyoushi_Input_Seireki2:
66520 '3から０ｋに変える
66530 case 3:
66540 No=-1:sp_on 14,1:sp_on 12,0
66550 pause 200:goto Jyoushi_Input_Seireki2:
66560 'Okから下のボタンを押しても何もしない
66570 case -1:
66580 pause 200:goto Jyoushi_Input_Seireki2:
66590 case 8:
66600 No=5:sp_on 8,1:sp_on 7,0
66610 pause 200:goto Jyoushi_Input_Seireki2:
66620 case 5:
66630 No=2:sp_on 9,1:sp_on 8,0
66640 pause 200:goto Jyoushi_Input_Seireki2:
66650 case 2:
66660 No=0:sp_on 13,1:sp_on 9,0
66670 pause 200:goto Jyoushi_Input_Seireki2:
66680 case 0:
66690 pause 200:goto Jyoushi_Input_Seireki2:
66700 case 7:
66710 No=4:sp_on 5,1:sp_on 4,0
66720 pause 200:goto Jyoushi_Input_Seireki2:
66730 case 4:
66740 No=1:sp_on 6,1:sp_on 5,0
66750 pause 200:goto Jyoushi_Input_Seireki2:
66760 case 1:
66770 pause 200:goto Jyoushi_Input_Seireki2:
66780 end select
66790 endif
66800 '左へボタン 十字キー　左　or 　カーソル左
66810 if ((y2 = -1) or (key$ = chr$(29))) then
66820 select case No
66830 'Ok ボタン  Okから　左　０に行く
66840 case -1:
66850 No=0:sp_on 13,1:sp_on 14,0
66860 pause 200:goto Jyoushi_Input_Seireki2:
66870 '0 ボタン  左　何もしない
66880 case 0:
66890 pause 200:goto Jyoushi_Input_Seireki2:
66900 case 3:
66910 No=2:sp_on 9,1:sp_on 12,0:
66920 pause 200:goto Jyoushi_Input_Seireki2:
66930 case 2:
66940 No=1:sp_on 6,1:sp_on 9,0:
66950 pause 200:goto Jyoushi_Input_Seireki2:
66960 case 1:
66970 pause 200:goto Jyoushi_Input_Seireki2:
66980 case 6:
66990 No=5:sp_on 8,1:sp_on 11,0
67000 pause 200:goto Jyoushi_Input_Seireki2:
67010 case 5:
67020 No=4:sp_on 5,1:sp_on 8,0
67030 pause 200:goto Jyoushi_Input_Seireki2:
67040 case 4:
67050 pause 200:goto Jyoushi_Input_Seireki2:
67060 case 9:
67070 No=8:sp_on 7,1:sp_on 10,0
67080 pause 200:goto Jyoushi_Input_Seireki2:
67090 case 8:
67100 No=7:sp_on 4,1:sp_on 7,0
67110 pause 200:goto Jyoushi_Input_Seireki2:
67120 case 7:
67130 pause 200:goto Jyoushi_Input_Seireki2:
67140 end select
67150 endif
67160 '右  十字キー　右　or カーソル　右
67170 if ((y2 = 1) or (key$ = chr$(28))) then
67180 select case No
67190 '0ボタンからokボタン右に移動
67200 case 0:
67210 No=-1:sp_on 14,1:sp_on 13,0
67220 pause 200:goto Jyoushi_Input_Seireki2:
67230 '0ボタンからokボタン 右に移動　ここまで
67240 'OKボタンで右を押して何もしない
67250 case -1:
67260 pause 200:goto Jyoushi_Input_Seireki2:
67270 case 1:
67280 No=2:sp_on 9,1:sp_on 6,0
67290 pause 200:goto Jyoushi_Input_Seireki2:
67300 case 2:
67310 No=3:sp_on 12,1:sp_on 9,0
67320 pause 200:goto Jyoushi_Input_Seireki2:
67330 case 3:
67340 pause 200:goto Jyoushi_Input_Seireki2:
67350 case 4:
67360 No=5:sp_on 8,1:sp_on 5,0
67370 pause 200:goto Jyoushi_Input_Seireki2:
67380 case 5:
67390 No=6:sp_on 11,1:sp_on 8,0
67400 pause 200:goto Jyoushi_Input_Seireki2:
67410 case 7:
67420 No=8:sp_on 7,1:sp_on 4,0
67430 pause 200:goto Jyoushi_Input_Seireki2:
67440 case 8:
67450 No=9:sp_on 10,1:sp_on 7,0
67460 pause 200:goto Jyoushi_Input_Seireki2:
67470 case 9:
67480 pause 200:goto Jyoushi_Input_Seireki2:
67490 case 6:
67500 pause 200:goto Jyoushi_Input_Seireki2:
67510 end select
67520 'Okから右ボタンを押して何もしない ここまで
67530 endif
67540 '十字キー　ここまで
67550 '==============================
67560 'ここから
67570 '==============================
67580 if ((bg = 2) or (key$ = chr$(13))) then
67590 select case count
67600 case 0:
67610 count = 1
67620 if (No = -1) then
67630 count = 0:No=0
67640 buf_Jyoushi_Born_Day(0) = No
67650 'Okボタンを押したとき
67660 goto Jyoushi_Input_Seireki2:
67670 else
67680 'Okボタン以外が押されたとき
67690 if (No >= 1 and No <= 2) then
67700 buf_year$="":buf_year$ = str$(No) + "***"
67710 buf_year = No:a= No
67720 buf_Jyoushi_Born_Day(0) = No
67730 locate 1,3
67740 color rgb(255,255,255)
67750 print "上司の生まれた年代(西暦4桁):";buf_year$
67760 goto Jyoushi_Input_Seireki2:
67770 else
67780 count=0
67790 ui_msg"数字が範囲外になります。"
67800 buf_year$="":buf_year=0
67810 goto Jyoushi_Input_Seireki2:
67820 endif
67830 endif
67840 case 1:
67850 count = 2
67860 if (No = -1) then
67870 count = 1
67880 goto Jyoushi_Input_Seireki2:
67890 else
67900 buf_year = a * 10 + No
67910 b=buf_year
67920 buf_year$ = str$(buf_year) + "**"
67930 buf_Jyoushi_Born_Day(0)=buf_year
67940 locate 1,3
67950 color rgb(255,255,255)
67960 print "                                                                "
67970 locate 1,3
67980 print "上司の生まれた年代(西暦4桁):" + buf_year$
67990 'if (No = -1) then
68000 'count=1
68010 goto Jyoushi_Input_Seireki2:
68020 endif
68030 case 2:
68040 count=3
68050 if (No=-1) then
68060 count =2
68070 goto Jyoushi_Input_Seireki2:
68080 else
68090 buf_year = b * 10 + No
68100 c=buf_year
68110 buf_year$ = str$(buf_year) + "*"
68120 buf_Jyoushi_Born_Day(0) = buf_year
68130 locate 1,3
68140 color rgb(255,255,255)
68150 print "                                        "
68160 locate 1,3
68170 print "上司の生まれた年代(西暦4桁):";buf_year$
68180 goto Jyoushi_Input_Seireki2:
68190 endif
68200 case 3:
68210 count=4
68220 if (No = -1) then
68230 No=0
68240 goto Jyoushi_Input_Seireki2:
68250 else
68260 buf_year = c * 10 + No
68270 buf_year$ = str$(buf_year)
68280 buf_Jyoushi_Born_Day(0) = buf_year
68290 locate 1,3
68300 color RGB(255,255,255)
68310 print "                                      "
68320 locate 1,3
68330 print "上司の生まれた年代(西暦4桁):";buf_year$
68340 buf_year=val(buf_year$)
68350 'year=val(buf_year$)
68360 'if (No=-1) then
68370 'goto Input_Born_Month:
68380 'else
68390 goto Jyoushi_Input_Seireki2:
68400 endif
68410 case 4:
68420 'bufyear=buf_year
68430 if (No=-1) then
68440 buf_year = val(buf_year$)
68450 buf_Jyoushi_Born_Day(0)=buf_year
68460 sp_on 14,0:No=0
68470 goto Jyoushi_Input_Born_Month:
68480 else
68490 goto Jyoushi_Input_Seireki2:
68500 endif
68510 end select
68520 endif
68530 '===========================
68540 'ここまでを部下のところにコピーする.
68550 '===========================
68560 if (bg2 = 2) then
68570 select case count2
68580 case 0:
68590 if (No = -1) then
68600 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
68610 count=0
68620 locate 1,3
68630 color rgb(255,255,255)
68640 print "                                      "
68650 locate 1,3
68660 print "上司の生まれた年代（西暦4桁):" + buf_year$
68670 goto Jyoushi_Input_Seireki2:
68680 else
68690 '(buf_year=0) then
68700 buf_year=0:buf_year$="****"
68710 locate 1,3
68720 print "                                       "
68730 locate 1,3
68740 print "上司の生まれた年代(西暦4桁):"+buf_year$
68750 goto Jyoushi_Input_Seireki2:
68760 'endif
68770 endif
68780 end select
68790 endif
68800 'Input"上司の生れた年代(4桁,〜2025年):",year
68810 'if year > 2025 then goto Jyoushi_Input_Seireki:
68820 'if year = 123 then cls 3:cls 4:goto Main_Screen:
68830 '"4桁目"
68840 'bufyear4 = fix(year / 1000)
68850 '"3桁目"
68860 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
68870 '"2桁目"
68880 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
68890 '"1桁目"
68900 'bufyear1 = fix((year - ((bufyear4*
68910 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
68920 '2.生まれた月を入力
68930 Jyoushi_Input_Born_Month:
68940 cls 3:play "":count=0:count2=0
68950 'No=-1:Okのとき
68960 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
68970 for i=0 to 1
68980 buf_month(i)=0
68990 next i
69000 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
69010 '****************************************************************************************************
69020 'WUXG(1920x1200)の時ここから
69030 '****************************************************************************************************
69040 gload Gazo$ + "Screen2.png",0,0,0
69050 gload Gazo$ + "downscreen.png",0,0,800
69060 '****************************************************************************************************
69070 'WUXG(1920x1200)の時ここまで
69080 '****************************************************************************************************
69090 'Init"kb:4"
69100 '音声ファイル再生 2023.06.07
69110 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
69120 font 48
69130 locate 0,1
69140 '文字色：黒　 color rgb(0,0,0)
69150 '文字色:白
69160 color rgb(255,255,255)
69170 print "上司の生まれた月を入れて下さい" + chr$(13)
69180 '文字色:白
69190 color rgb(255,255,255)
69200 locate 1,3
69210 '文字色:白
69220 print "上司の生まれた月(1月~12月):"+buf_Month$
69230 color rgb(255,255,255)
69240 'locate 4,6:print ":7"
69250 'locate 9,6:print ":8"
69260 'locate 12,6:print ":9"
69270 'locate 4,6
69280 '文字色:赤
69290 'print ":7  :8  :9" + chr$(13)
69300 'color rgb(255,255,255)
69310 'locate 4,8
69320 'print ":4  :5  :6" + chr$(13)
69330 'color rgb(255,255,255)
69340 'locate 4,10
69350 'print ":1  :2  :3" + chr$(13)
69360 'locate 4,12
69370 'print "    :0"
69380 'locate 12,12
69390 'color rgb(0,0,255)
69400 'print ":Ok"
69410 sp_on 4,0: sp_on 5,0:sp_on 6,0
69420 sp_on 7,0:sp_on 8,0:sp_on 9,0
69430 sp_on 10,0:sp_on 11,0:sp_on 12,0
69440 sp_on 13,0:sp_on 14,1
69450 Jyoushi_Input_Born_Month2:
69460 key$="":bg=0:y=0:y2=0:bg2=0
69470 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
69480 key$ = inkey$
69490 bg = strig(1)
69500 y = stick(1)
69510 y2 = stick(0)
69520 bg2 = strig(0)
69530 pause 200
69540 wend
69550 '十字キー　ここから
69560 '上の矢印　または、十字キー上
69570 if ((y = -1) or (key$ = chr$(30))) then
69580 select case No
69590 'No=-1:okのとき:初期の状態
69600 '0kボタンから３に移動
69610 '上に行く 処理
69620 case -1:
69630 No=3:sp_on 12,1:sp_on 14,0
69640 pause 200:goto Jyoushi_Input_Born_Month2:
69650 '選択肢:3
69660 '3ボタンから 6に移動
69670 case 3:
69680 No=6:sp_on 12,0:sp_on 11,1
69690 pause 200:goto Jyoushi_Input_Born_Month2:
69700 '6ボタンから ９に移動
69710 case 6:
69720 No=9:sp_on 10,1:sp_on 11,0
69730 pause 200:goto Jyoushi_Input_Born_Month2:
69740 '6ボタンから ９に移動　ここまで
69750 '9で上を押して何もしない
69760 case 9:
69770 '何もしない
69780 No=9
69790 pause 200:goto Jyoushi_Input_Born_Month2:
69800 '9で上を押しても何もしない　ここまで
69810 '上　 0ボタンから2ボタン
69820 'sp_on 6,1:1
69830 'sp_on 8,1:5
69840 'sp_on 7,1:7
69850 case 0:
69860 No=2:sp_on 13,0:sp_on 9,1:
69870 pause 200:goto Jyoushi_Input_Born_Month2:
69880 '上  0ボタンから2ボタン　ここまで
69890 '2から５になる 上
69900 case 2:
69910 No=5:sp_on 8,1:sp_on 9,0:
69920 pause 200:goto Jyoushi_Input_Born_Month2:
69930 case 5:
69940 No=8:sp_on 7,1:sp_on 8,0
69950 pause 200:goto Jyoushi_Input_Born_Month2:
69960 case 8:
69970 pause 200:goto Input_Born_Month2:
69980 case 1:
69990 No=4:sp_on 5,1:sp_on 6,0
70000 pause 200:goto Jyoushi_Input_Born_Month2:
70010 case 4:
70020 No=7:sp_on 4,1:sp_on 5,0
70030 pause 200:goto Jyoushi_Input_Born_Month2:
70040 case 7:
70050 pause 200:goto Input_Born_Month2:
70060 end select
70070 endif
70080 '左３　ここまで
70090 '下の矢印
70100 '中央 2
70110 if ((y=1) or (key$ = chr$(31))) then
70120 select case No
70130 '9から６に下げる
70140 case 9:
70150 No=6:sp_on 11,1:sp_on 10,0
70160 pause 200:goto Jyoushi_Input_Born_Month2:
70170 '6から３に下げる
70180 case 6:
70190 No=3:sp_on 12,1:sp_on 11,0
70200 pause 200:goto Jyoushi_Input_Born_Month2:
70210 '3から０ｋに変える
70220 case 3:
70230 No=-1:sp_on 14,1:sp_on 12,0
70240 pause 200:goto Jyoushi_Input_Born_Month2:
70250 'Okから下のボタンを押しても何もしない
70260 case -1:
70270 pause 200:goto Jyoushi_Input_Born_Month2:
70280 case 8:
70290 No=5:sp_on 8,1:sp_on 7,0
70300 pause 200:goto Jyoushi_Input_Born_Month2:
70310 case 5:
70320 No=2:sp_on 9,1:sp_on 8,0
70330 pause 200:goto Jyoushi_Input_Born_Month2:
70340 case 2:
70350 No=0:sp_on 13,1:sp_on 9,0
70360 pause 200:goto Jyoushi_Input_Born_Month2:
70370 case 0:
70380 pause 200:goto Jyoushi_Input_Born_Month2:
70390 case 7:
70400 No=4:sp_on 5,1:sp_on 4,0
70410 pause 200:goto Jyoushi_Input_Born_Month2:
70420 case 4:
70430 No=1:sp_on 6,1:sp_on 5,0
70440 pause 200:goto Jyoushi_Input_Born_Month2:
70450 case 1:
70460 pause 200:goto Jyoushi_Input_Born_Month2:
70470 end select
70480 endif
70490 '左へボタン 十字キー　左　or 　カーソル左
70500 if ((y2 = -1) or (key$ = chr$(29))) then
70510 select case No
70520 'Ok ボタン  Okから　左　０に行く
70530 case -1:
70540 No=0:sp_on 13,1:sp_on 14,0
70550 pause 200:goto Jyoushi_Input_Born_Month2:
70560 '0 ボタン  左　何もしない
70570 case 0:
70580 pause 200:goto Jyoushi_Input_Born_Month2:
70590 case 3:
70600 No=2:sp_on 9,1:sp_on 12,0:
70610 pause 200:goto Jyoushi_Input_Born_Month2:
70620 case 2:
70630 No=1:sp_on 6,1:sp_on 9,0:
70640 pause 200:goto Jyoushi_Input_Born_Month2:
70650 case 1:
70660 pause 200:goto Jyoushi_Input_Born_Month2:
70670 case 6:
70680 No=5:sp_on 8,1:sp_on 11,0
70690 pause 200:goto Jyoushi_Input_Born_Month2:
70700 case 5:
70710 No=4:sp_on 5,1:sp_on 8,0
70720 pause 200:goto Jyoushi_Input_Born_Month2:
70730 case 4:
70740 pause 200:goto Jyoushi_Input_Born_Month2:
70750 case 9:
70760 No=8:sp_on 7,1:sp_on 10,0
70770 pause 200:goto Input_Born_Month2:
70780 case 8:
70790 No=7:sp_on 4,1:sp_on 7,0
70800 pause 200:goto Jyoushi_Input_Born_Month2:
70810 case 7:
70820 pause 200:goto Jyoushi_Input_Born_Month2:
70830 end select
70840 endif
70850 '右  十字キー　右　or カーソル　右
70860 if ((y2 = 1) or (key$ = chr$(28))) then
70870 select case No
70880 '0ボタンからokボタン右に移動
70890 case 0:
70900 No=-1:sp_on 14,1:sp_on 13,0
70910 pause 200:goto Jyoushi_Input_Born_Month2:
70920 '0ボタンからokボタン 右に移動　ここまで
70930 'OKボタンで右を押して何もしない
70940 case -1:
70950 pause 200:goto Jyoushi_Input_Born_Month2:
70960 case 1:
70970 No=2:sp_on 9,1:sp_on 6,0
70980 pause 200:goto Jyoushi_Input_Born_Month2:
70990 case 2:
71000 No=3:sp_on 12,1:sp_on 9,0
71010 pause 200:goto Jyoushi_Input_Born_Month2:
71020 case 3:
71030 pause 200:goto Jyoushi_Input_Born_Month2:
71040 case 4:
71050 No=5:sp_on 8,1:sp_on 5,0
71060 pause 200:goto Jyoushi_Input_Born_Month2:
71070 case 5:
71080 No=6:sp_on 11,1:sp_on 8,0
71090 pause 200:goto Jyoushi_Input_Born_Month2:
71100 case 7:
71110 No=8:sp_on 7,1:sp_on 4,0
71120 pause 200:goto Jyoushi_Input_Born_Month2:
71130 case 8:
71140 No=9:sp_on 10,1:sp_on 7,0
71150 pause 200:goto Jyoushi_Input_Born_Month2:
71160 case 9:
71170 pause 200:goto Jyoushi_Input_Born_Month2:
71180 case 6:
71190 pause 200:goto Jyoushi_Input_Born_Month2:
71200 end select
71210 'Okから右ボタンを押して何もしない ここまで
71220 endif
71230 '十字キー　ここまで
71240 '右の丸ボタン + Enter key 決定キー
71250 if ((bg=2) or (key$=chr$(13))) then
71260 select case count
71270 case 0:
71280 if (No=-1) then No=0
71290 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
71300 if (buf_month > 1 and buf_month < 10)  then
71310 buf_Month$ = str$(buf_month)
71320 'buf_month=No
71330 endif
71340 if (buf_month = 1)  then
71350 buf_Month$ = str$(buf_month) + "*"
71360 'c=buf_month
71370 endif
71380 locate 1,3
71390 print "                                     "
71400 color RGB(255,255,255)
71410 locate 1,3
71420 print "上司の生まれた月(1月~12月):" + buf_Month$
71430 goto Jyoushi_Input_Born_Month2:
71440 case 1:
71450 count = 2:
71460 'c = val(buf_Month$)
71470 if (No = -1) then
71480 'count=0
71490 No=0
71500 month=buf_month
71510 buf_month=val(buf_Month$)
71520 month=buf_month
71530 buf_Jyoushi_Born_Day(1)=month
71540 '生まれた日に飛ぶ
71550 goto Jyoushi_Input_Born_Day:
71560 else
71570 buf_month = c*10 + No
71580 'if (buf_month = 1) then
71590 'buf_Month$ = str$(buf_month)
71600 'endif
71610 buf_Month$ = str$(buf_month)
71620 buf_Jyoushi_Born_Day(1) = buf_month
71630 locate 0,3
71640 print "                                           "
71650 locate 1,3
71660 color Rgb(255,255,255)
71670 print "上司の生まれた月(1月~12月):" + buf_Month$
71680 goto Jyoushi_Input_Born_Month2:
71690 endif
71700 case 2:
71710 '==================================
71720 '何もしない
71730 'coun = 2
71740 '==================================
71750 'c= val(buf_Month$)
71760 'buf_month = c*10 + No
71770 'buf_Month$ = str$(buf_month)
71780 'locate 2,3
71790 'print "上司の生まれた月(1月～12月):";buf_Month$
71800 'goto Jyoushi_Input_Born_Month2:
71810 'case 3:
71820 'count=4
71830 'b=val(buf_month$)
71840 'buf_month=c*10+No
71850 'buf_Month$=str$(buf_month)
71860 'locate 2,3
71870 'print "上司の生まれた月(1月～12月):";buf_Month$
71880 'buf_month=val(buf_Month$)
71890 'year=val(buf_year$)
71900 if (No=-1) then
71910 No=0
71920 goto Jyoushi_Input_Born_Day:
71930 else
71940 goto Jyoushi_Input_Born_Month2:
71950 endif
71960 'case 4:
71970 'bufyear=buf_year
71980 'if (No=-1) then
71990 'buf_month = val(buf_Month$)
72000 'month = buf_month
72010 'sp_on 14,0
72020 'goto Input_Born_Day:
72030 'else
72040 'goto Input_Born_Month2:
72050 'endif
72060 end select
72070 endif
72080 '左の丸ボタン　キャンセル
72090 if (bg2=2) then
72100 select case count2
72110 case 0:
72120 if (No = -1) then
72130 buf_month=0:buf_Month$="**"
72140 count=0
72150 'goto rewrite2:
72160 else
72170 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
72180 buf_month = 0:buf_Month$ = "**"
72190 locate 0,3
72200 color rgb(255,255,255)
72210 print "                                       "
72220 goto rewrite2:
72230 if (No>12) then
72240 ui_msg"値が範囲外です。"
72250 goto rewrite2:
72260 endif
72270 endif
72280 endif
72290 rewrite2:
72300 locate 2,3
72310 color rgb(255,255,255)
72320 print "                                      "
72330 locate 2,3
72340 print "上司の生まれた月(1月~12月):"+buf_Month$
72350 goto Jyoushi_Input_Born_Month2:
72360 end select
72370 'endif
72380 endif
72390 end
72400 'end
72410 '生れた日を入力
72420 Jyoushi_Input_Born_Day:
72430 '生まれた日入力
72440 cls 3:play ""
72450 'No=-1:Okのとき
72460 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
72470 for i=0 to 1
72480 buf_day(i)=0
72490 next i
72500 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
72510 '****************************************************************************************************
72520 'WUXG(1920x1200)の時ここから
72530 '****************************************************************************************************
72540 gload Gazo$ + "Screen2.png",0,0,0
72550 gload Gazo$ + "downscreen.png",0,0,800
72560 '****************************************************************************************************
72570 'WUXG(1920x1200)の時ここまで
72580 '****************************************************************************************************
72590 'Init"kb:2"
72600 '音声ファイル再生 2023.06.07
72610 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
72620 font 48
72630 locate 1,1
72640 '文字色：黒　 color rgb(0,0,0)
72650 color rgb(255,255,255)
72660 print "上司の生まれた日を入れて下さい" + chr$(13)
72670 locate 1,3
72680 color rgb(255,255,255)
72690 print "                                      "
72700 locate 1,3
72710 print "上司の生まれた日(1日~31日):"+buf_Day$
72720 color rgb(255,255,255)
72730 'locate 4,6:print ":7"
72740 'locate 9,6:print ":8"
72750 'locate 12,6:print ":9"
72760 'locate 4,6
72770 'print ":7  :8  :9" + chr$(13)
72780 'color rgb(255,255,255)
72790 'locate 4,8
72800 'print ":4  :5  :6" + chr$(13)
72810 'color rgb(255,255,255)
72820 'locate 4,10
72830 'print ":1  :2  :3" + chr$(13)
72840 'locate 4,12
72850 'print "    :0"
72860 'locate 12,12
72870 'color rgb(0,0,255)
72880 'print ":Ok"
72890 sp_on 4,0: sp_on 5,0:sp_on 6,0
72900 sp_on 7,0:sp_on 8,0:sp_on 9,0
72910 sp_on 10,0:sp_on 11,0:sp_on 12,0
72920 sp_on 13,0:sp_on 14,1
72930 Jyoushi_Input_Born_Day2:
72940 key$="":bg=0:y=0:y2=0:bg2=0:
72950 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72960 key$ = inkey$
72970 bg = strig(1)
72980 y = stick(1)
72990 y2 = stick(0)
73000 bg2 = strig(0)
73010 pause 200
73020 wend
73030 '十字キー　ここから
73040 '上の矢印　または、十字キー上
73050 if ((y = -1) or (key$ = chr$(30))) then
73060 select case No
73070 'No=-1:okのとき:初期の状態
73080 '0kボタンから３に移動
73090 '上に行く 処理
73100 case -1:
73110 No=3:sp_on 12,1:sp_on 14,0
73120 pause 200:goto Jyoushi_Input_Born_Day2:
73130 '選択肢:3
73140 '3ボタンから 6に移動
73150 case 3:
73160 No=6:sp_on 12,0:sp_on 11,1
73170 pause 200:goto Jyoushi_Input_Born_Day2:
73180 '6ボタンから ９に移動
73190 case 6:
73200 No=9:sp_on 10,1:sp_on 11,0
73210 pause 200:goto Jyoushi_Input_Born_Day2:
73220 '6ボタンから ９に移動　ここまで
73230 '9で上を押して何もしない
73240 case 9:
73250 '何もしない
73260 No=9
73270 pause 200:goto Jyoushi_Input_Born_Day2:
73280 '9で上を押しても何もしない　ここまで
73290 '上　 0ボタンから2ボタン
73300 'sp_on 6,1:1
73310 'sp_on 8,1:5
73320 'sp_on 7,1:7
73330 case 0:
73340 No=2:sp_on 13,0:sp_on 9,1:
73350 pause 200:goto Jyoushi_Input_Born_Day2:
73360 '上  0ボタンから2ボタン　ここまで
73370 '2から５になる 上
73380 case 2:
73390 No=5:sp_on 8,1:sp_on 9,0:
73400 pause 200:goto Jyoushi_Input_Born_Day2:
73410 case 5:
73420 No=8:sp_on 7,1:sp_on 8,0
73430 pause 200:goto Jyoushi_Input_Born_Day2:
73440 case 8:
73450 pause 200:goto Jyoushi_Input_Born_Day2:
73460 case 1:
73470 No=4:sp_on 5,1:sp_on 6,0
73480 pause 200:goto Jyoushi_Input_Born_Day2:
73490 case 4:
73500 No=7:sp_on 4,1:sp_on 5,0
73510 pause 200:goto Jyoushi_Input_Born_Day2:
73520 case 7:
73530 pause 200:goto Jyoushi_Input_Born_Day2:
73540 end select
73550 endif
73560 '左３　ここまで
73570 '下の矢印
73580 '中央 2
73590 if ((y=1) or (key$ = chr$(31))) then
73600 select case No
73610 '9から６に下げる
73620 case 9:
73630 No=6:sp_on 11,1:sp_on 10,0
73640 pause 200:goto Jyoushi_Input_Born_Day2:
73650 '6から３に下げる
73660 case 6:
73670 No=3:sp_on 12,1:sp_on 11,0
73680 pause 200:goto Jyoushi_Input_Born_Day2:
73690 '3から０ｋに変える
73700 case 3:
73710 No=-1:sp_on 14,1:sp_on 12,0
73720 pause 200:goto Jyoushi_Input_Born_Day2:
73730 'Okから下のボタンを押しても何もしない
73740 case -1:
73750 pause 200:goto Jyoushi_Input_Born_Day2:
73760 case 8:
73770 No=5:sp_on 8,1:sp_on 7,0
73780 pause 200:goto Jyoushi_Input_Born_Day2:
73790 case 5:
73800 No=2:sp_on 9,1:sp_on 8,0
73810 pause 200:goto Jyoushi_Input_Born_Day2:
73820 case 2:
73830 No=0:sp_on 13,1:sp_on 9,0
73840 pause 200:goto Jyoushi_Input_Born_Day2:
73850 case 0:
73860 pause 200:goto Jyoushi_Input_Born_Day2:
73870 case 7:
73880 No=4:sp_on 5,1:sp_on 4,0
73890 pause 200:goto Jyoushi_Input_Born_Day2:
73900 case 4:
73910 No=1:sp_on 6,1:sp_on 5,0
73920 pause 200:goto Jyoushi_Input_Born_Day2:
73930 case 1:
73940 pause 200:goto Jyoushi_Input_Born_Day2:
73950 end select
73960 endif
73970 '左へボタン 十字キー　左　or 　カーソル左
73980 if ((y2 = -1) or (key$ = chr$(29))) then
73990 select case No
74000 'Ok ボタン  Okから　左　０に行く
74010 case -1:
74020 No=0:sp_on 13,1:sp_on 14,0
74030 pause 200:goto Jyoushi_Input_Born_Day2:
74040 '0 ボタン  左　何もしない
74050 case 0:
74060 pause 200:goto Jyoushi_Input_Born_Day2:
74070 case 3:
74080 No=2:sp_on 9,1:sp_on 12,0:
74090 pause 200:goto Jyoushi_Input_Born_Day2:
74100 case 2:
74110 No=1:sp_on 6,1:sp_on 9,0:
74120 pause 200:goto Jyoushi_Input_Born_Day2:
74130 case 1:
74140 pause 200:goto Jyoushi_Input_Born_Day2:
74150 case 6:
74160 No=5:sp_on 8,1:sp_on 11,0
74170 pause 200:goto Jyoushi_Input_Born_Day2:
74180 case 5:
74190 No=4:sp_on 5,1:sp_on 8,0
74200 pause 200:goto Jyoushi_Input_Born_Day2:
74210 case 4:
74220 pause 200:goto Jyoushi_Input_Born_Day2:
74230 case 9:
74240 No=8:sp_on 7,1:sp_on 10,0
74250 pause 200:goto Jyoushi_Input_Born_Day2:
74260 case 8:
74270 No=7:sp_on 4,1:sp_on 7,0
74280 pause 200:goto Jyoushi_Input_Born_Day2:
74290 case 7:
74300 pause 200:goto Jyoushi_Input_Born_Day2:
74310 end select
74320 endif
74330 '右  十字キー　右　or カーソル　右
74340 if ((y2 = 1) or (key$ = chr$(28))) then
74350 select case No
74360 '0ボタンからokボタン右に移動
74370 case 0:
74380 No=-1:sp_on 14,1:sp_on 13,0
74390 pause 200:goto Jyoushi_Input_Born_Day2:
74400 '0ボタンからokボタン 右に移動　ここまで
74410 'OKボタンで右を押して何もしない
74420 case -1:
74430 pause 200:goto Jyoushi_Input_Born_Day2:
74440 case 1:
74450 No=2:sp_on 9,1:sp_on 6,0
74460 pause 200:goto Jyoushi_Input_Born_Day2:
74470 case 2:
74480 No=3:sp_on 12,1:sp_on 9,0
74490 pause 200:goto Jyoushi_Input_Born_Day2:
74500 case 3:
74510 pause 200:goto Jyoushi_Input_Born_Day2:
74520 case 4:
74530 No=5:sp_on 8,1:sp_on 5,0
74540 pause 200:goto Jyoushi_Input_Born_Day2:
74550 case 5:
74560 No=6:sp_on 11,1:sp_on 8,0
74570 pause 200:goto Jyoushi_Input_Born_Day2:
74580 case 7:
74590 No=8:sp_on 7,1:sp_on 4,0
74600 pause 200:goto Jyoushi_Input_Born_Day2:
74610 case 8:
74620 No=9:sp_on 10,1:sp_on 7,0
74630 pause 200:goto Jyoushi_Input_Born_Day2:
74640 case 9:
74650 pause 200:goto Jyoushi_Input_Born_Day2:
74660 case 6:
74670 pause 200:goto Jyoushi_Input_Born_Day2:
74680 end select
74690 'Okから右ボタンを押して何もしない ここまで
74700 endif
74710 '十字キー　ここまで
74720 '右の丸ボタンを押したとき
74730 if ((bg = 2) or (key$ = chr$(13))) then
74740 'count :決定ボタンを押した回数
74750 select case (count)
74760 '1桁目入力
74770 case 0:
74780 count = 1:
74790 if (No = -1) then
74800 '1桁目　OKでは何もしない
74810 No=c
74820 'goto Jyoushi_Input_Born_Day2:
74830 else
74840 'ok以外のボタンを押したとき
74850 buf_day = No:buf_Day$ = str$(No)
74860 buf_Jyoushi_Born_Day(2)=buf_day
74870 c=No
74880 locate 1,3
74890 print "                                      "
74900 color RGB(255,255,255)
74910 locate 1,3
74920 print "上司の生まれた日(1日~31日):" + buf_Day$
74930 endif
74940 'check2:
74950 'if (buf_day >= 1 and buf_day <= 9) then
74960 'sp_on 14,0
74970 'goto complate_jyoushi:
74980 'else
74990 'sp_on 14,0
75000 goto Jyoushi_Input_Born_Day2:
75010 'end
75020 'endif
75030 case 1:
75040 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
75050 count = 2:
75060 'locate 2,3
75070 'color RGB(255,255,255)
75080 'print "生まれた日(1日~31日):";buf_Day$
75090 'Okボタンを押したときの処理
75100 '入力値　10未満のとき
75110 'buf_day = c * 10 + No
75120 if (No = -1) then
75130 c=buf_day:No=0
75140 'buf_day = c
75150 buf_Day$ = str$(buf_day)
75160 '10以下のとき
75170 'if (buf_day < 10) then
75180 sp_on 14,0
75190 goto complate_jyoushi:
75200 'end
75210 'endif
75220 else
75230 'c=No
75240 buf_day = c * 10 + No
75250 buf_Day$ = str$(buf_day)
75260 'buf_day = c:buf_Day$=str$(buf_day)
75270 buf_Jyoushi_Born_Day(2)=buf_day
75280 locate 1,3
75290 print "                                           "
75300 locate 1,3
75310 color Rgb(255,255,255)
75320 print "上司の生まれた日(1日~31日):" + buf_Day$
75330 goto Jyoushi_Input_Born_Day2:
75340 'goto
75350 endif
75360 'endif
75370 '生まれた日　2桁目の数字　or 1桁の数字 + ok
75380 case 2:
75390 'buf_day = c * 10 + No
75400 'buf_Jyoushi_Born_Day(2)=buf_day
75410 'locate 1,3
75420 'print "                                      "
75430 'locate 1,3
75440 'locate 2,3
75450 'print "生まれた日(1日〜31日):";buf_Day
75460 'No=-1:ok ボタンを押したとき
75470 if (No = -1) then
75480 'if ((buf_day > 0) and (buf_day < 32)) then
75490 No=0
75500 sp_on 14,0
75510 goto complate_jyoushi:
75520 'end
75530 else
75540 goto Jyoushi_Input_Born_Day2:
75550 'endif
75560 'Okボタン以外を押したとき
75570 'else
75580 'c=val(buf_Day$)
75590 'buf_day = c * 10 + No
75600 'buf_Jyoushi_Born_Day(2) = buf_day
75610 'buf_Day$ = str$(buf_day)
75620 'locate 1,3
75630 'print "上司の生まれた日(1日~31日):";buf_Day$
75640 'goto Jyoushi_Input_Born_Day2:
75650 endif
75660 'case 3:
75670 'count=4
75680 'c=val(buf_day$)
75690 'buf_day=c*10+No
75700 'buf_day$=str$(buf_day)
75710 'locate 2,3
75720 'print "生まれた日を入れてください:";buf_day$
75730 'year=val(buf_year$)
75740 'if (No = -1) then
75750 'goto Jyoushi_Input_Born_Day:
75760 'sp_on 14,0:
75770 'goto complate_jyoushi:
75780 'else
75790 'goto Jyoushi_Input_Born_Month2:
75800 'endif
75810 'case 4:
75820 'bufyear=buf_year
75830 'if (No=-1) then
75840 'buf_day = val(buf_day$)
75850 'bufday = buf_day
75860 'sp_on 14,0
75870 'goto Jyoushi_Input_Born_Day2:
75880 'else
75890 'goto Jyoushi_Input_Born_Day2:
75900 'endif
75910 end select
75920 endif
75930 if (bg2=2) then
75940 select case count2
75950 case 0:
75960 if (No=-1) then
75970 buf_day=0:buf_Day$="**":No=0
75980 if (buf_day >= 1 and buf_day <= 31) then
75990 count=0
76000 buf_day=0:buf_Day$ = "**"
76010 goto rewrite_day3:
76020 else
76030 buf_day=0:buf_Day$ = "**"
76040 ui_msg"値が範囲外です"
76050 endif
76060 goto rewrite_day3:
76070 else
76080 goto rewrite_day3:
76090 endif
76100 rewrite_day3:
76110 locate 2,3
76120 color rgb(255,255,255)
76130 print "                                      "
76140 locate 2,3
76150 print "生まれた日(1日~31日):" + buf_Day$
76160 goto Jyoushi_Input_Born_Day2:
76170 end select
76180 endif
76190 '--------------------------------------------'
76200 'locate 2,0:color rgb(255,0,0)
76210 'print "上司の生まれた年代を入力"
76220 'color rgb(255,255,255)
76230 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
76240 'locate 2,4:Input "上司の生まれた年:",born_year
76250 '誕生日データーを配列に代入
76260 'buf_Jyoushi_Born_Year:上司の生まれた年代
76270 'buf_Jyoushi_Born_Day(0) = born_year
76280 'born_year = 0
76290 '---------------------------------------------'
76300 'goto Jyoushi_born_month:
76310 '1-2.生まれた月を入力
76320 'Jyoushi_born_month:
76330 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
76340 'init "kb:4"
76350 'locate 2,1:
76360 'color rgb(255,0,0)
76370 'print "上司の生まれた月入力"
76380 'color rgb(255,255,255)
76390 'locate 2,4:print "生まれた月を入力してください"
76400 'locate 2,5
76410 'Input "上司の生まれ月:",born_month
76420 'buf_Jyoushi_Born_Day(1) = born_month
76430 'born_month = 0
76440 'goto Jyoushi_born_day:
76450 'buf_Jyoushi_Born_day
76460 '1-3.生まれた日を入力
76470 'Jyoushi_born_day:
76480 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
76490 'init "kb:4"
76500 'locate 2,1:color rgb(255,0,0)
76510 'print "上司の生まれた日　入力"
76520 'locate 2,4:color rgb(255,255,255)
76530 'print "生まれた日を入力してください"
76540 'locate 2,5
76550 'Input "上司の生まれた日:",born_day
76560 'buf_Jyoushi_Born_Day(2) = born_day
76570 'born_day = 0
76580 'goto buka_born_year:
76590 '2.部下の誕生日入力
76600 '2-1.生まれた年を入力
76610 'buka_born_year:
76620 'cls 3:gload Gazo$+"Screen1.png",0,0,0
76630 'init "kb:2"
76640 'locate 1,1:color rgb(255,0,0)
76650 'print "部下の生まれた年代入力"
76660 'locate 0,4:color rgb(255,255,255)
76670 'print "部下の生まれた年（西暦4桁）を入れてください"
76680 'locate 0,5
76690 'Input "部下の生まれた年(西暦4桁):",born_year
76700 'buf_Buka_Born_Day(0) = born_year
76710 'born_year = 0
76720 '2-2.生まれた月を入力
76730 'buka_born_month:
76740 'cls 3:gload Gazo$+"Screen1.png",0,0,0
76750 'init "kb:2"
76760 'locate 2,1:color rgb(255,0,0)
76770 'print "部下の生まれた月 入力"
76780 'locate 2,4:color rgb(255,255,255)
76790 'print "部下の生まれた月を入力してください"
76800 'locate 2,5:Input "部下の生まれた月:",born_month
76810 'buf_Buka_Born_Day(1) = born_month
76820 '2-3.生まれた日を入力
76830 'buka_born_day:
76840 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
76850 'init "kb:2"
76860 'locate 2,1:color rgb(255,0,0)
76870 'print "生まれた日入力"
76880 'color rgb(255,255,255)
76890 'locate 2,4:print "生まれた日を入力してください"
76900 'locate 2,5:Input "部下の生まれた日:",born_day
76910 'buf_Buka_Born_Day(2) = born_day
76920 'born_day=0:goto Result_Business_Aisyou:
76930 '--------------------------------------------'
76940 complate_jyoushi:
76950 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
76960 buf_Jyoushi = Kabara_Num(a,b,c)
76970 a_1=buf_Jyoushi
76980 goto Buka_Input_Seireki:
76990 '--------------------------------------------'
77000 '部下'
77010 '1.部下の生まれた年代'
77020 Buka_Input_Seireki:
77030 cls 3:play "":count=0:count2=0
77040 init"kb:4"
77050 'No=-1:Okのとき
77060 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
77070 for i=0 to 3
77080 buf_Buka_Born_Day(i)=0
77090 next i
77100 '****************************************************************************************************
77110 'WUXG(1920x1200)の時ここから
77120 '****************************************************************************************************
77130 gload Gazo$ + "Screen2.png",0,0,0
77140 gload Gazo$ + "downscreen.png",0,0,800
77150 '****************************************************************************************************
77160 'WUXG(1920x1200)の時ここまで
77170 '****************************************************************************************************
77180 'Init"kb:2"
77190 '音声ファイル再生 2023.06.07
77200 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
77210 font 48
77220 locate 0,1
77230 '文字色：黒　 color rgb(0,0,0)
77240 color rgb(255,255,255)
77250 print "部下の生まれた年代を入れて下さい" + chr$(13)
77260 color rgb(255,255,255)
77270 locate 1,3
77280 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
77290 color rgb(255,255,255)
77300 'locate 4,6:print ":7"
77310 'locate 9,6:print ":8"
77320 'locate 12,6:print ":9"
77330 'locate 4,6
77340 'print ":7  :8  :9" + chr$(13)
77350 'color rgb(255,255,255)
77360 'locate 4,8
77370 'print ":4  :5  :6" + chr$(13)
77380 'color rgb(255,255,255)
77390 'locate 4,10
77400 'print ":1  :2  :3" + chr$(13)
77410 'locate 4,12
77420 'print "    :0"
77430 'locate 12,12
77440 'color rgb(0,0,255)
77450 'print ":Ok"
77460 sp_on 4,0: sp_on 5,0:sp_on 6,0
77470 sp_on 7,0:sp_on 8,0:sp_on 9,0
77480 sp_on 10,0:sp_on 11,0:sp_on 12,0
77490 sp_on 13,0:sp_on 14,1
77500 Buka_Input_Seireki2:
77510 key$="":bg=0:y=0:y2=0:bg2=0:
77520 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
77530 key$ = inkey$
77540 bg = strig(1)
77550 y = stick(1)
77560 y2 = stick(0)
77570 bg2=strig(0)
77580 pause 200
77590 wend
77600 '十字キー　ここから
77610 '上の矢印　または、十字キー上
77620 if ((y = -1) or (key$ = chr$(30))) then
77630 select case No
77640 'No=-1:okのとき:初期の状態
77650 '0kボタンから３に移動
77660 '上に行く 処理
77670 case -1:
77680 No=3:sp_on 12,1:sp_on 14,0
77690 pause 200:goto Buka_Input_Seireki2:
77700 '選択肢:3
77710 '3ボタンから 6に移動
77720 case 3:
77730 No=6:sp_on 12,0:sp_on 11,1
77740 pause 200:goto Buka_Input_Seireki2:
77750 '6ボタンから ９に移動
77760 case 6:
77770 No=9:sp_on 10,1:sp_on 11,0
77780 pause 200:goto Buka_Input_Seireki2:
77790 '6ボタンから ９に移動　ここまで
77800 '9で上を押して何もしない
77810 case 9:
77820 '何もしない
77830 No=9
77840 pause 200:goto Buka_Input_Seireki2:
77850 '9で上を押しても何もしない　ここまで
77860 '上　 0ボタンから2ボタン
77870 'sp_on 6,1:1
77880 'sp_on 8,1:5
77890 'sp_on 7,1:7
77900 case 0:
77910 No=2:sp_on 13,0:sp_on 9,1:
77920 pause 200:goto Buka_Input_Seireki2:
77930 '上  0ボタンから2ボタン　ここまで
77940 '2から５になる 上
77950 case 2:
77960 No=5:sp_on 8,1:sp_on 9,0:
77970 pause 200:goto Buka_Input_Seireki2:
77980 case 5:
77990 No=8:sp_on 7,1:sp_on 8,0
78000 pause 200:goto Buka_Input_Seireki2:
78010 case 8:
78020 pause 200:goto Buka_Input_Seireki2:
78030 case 1:
78040 No=4:sp_on 5,1:sp_on 6,0
78050 pause 200:goto Buka_Input_Seireki2:
78060 case 4:
78070 No=7:sp_on 4,1:sp_on 5,0
78080 pause 200:goto Buka_Input_Seireki2:
78090 case 7:
78100 pause 200:goto Buka_Input_Seireki2:
78110 end select
78120 endif
78130 '左３　ここまで
78140 '下の矢印
78150 '中央 2
78160 if ((y=1) or (key$ = chr$(31))) then
78170 select case No
78180 '9から６に下げる
78190 case 9:
78200 No=6:sp_on 11,1:sp_on 10,0
78210 pause 200:goto Buka_Input_Seireki2:
78220 '6から３に下げる
78230 case 6:
78240 No=3:sp_on 12,1:sp_on 11,0
78250 pause 200:goto Buka_Input_Seireki2:
78260 '3から０ｋに変える
78270 case 3:
78280 No=-1:sp_on 14,1:sp_on 12,0
78290 pause 200:goto Buka_Input_Seireki2:
78300 'Okから下のボタンを押しても何もしない
78310 case -1:
78320 pause 200:goto Buka_Input_Seireki2:
78330 case 8:
78340 No=5:sp_on 8,1:sp_on 7,0
78350 pause 200:goto Buka_Input_Seireki2:
78360 case 5:
78370 No=2:sp_on 9,1:sp_on 8,0
78380 pause 200:goto Buka_Input_Seireki2:
78390 case 2:
78400 No=0:sp_on 13,1:sp_on 9,0
78410 pause 200:goto Buka_Input_Seireki2:
78420 case 0:
78430 pause 200:goto Buka_Input_Seireki2:
78440 case 7:
78450 No=4:sp_on 5,1:sp_on 4,0
78460 pause 200:goto Buka_Input_Seireki2:
78470 case 4:
78480 No=1:sp_on 6,1:sp_on 5,0
78490 pause 200:goto Buka_Input_Seireki2:
78500 case 1:
78510 pause 200:goto Buka_Input_Seireki2:
78520 end select
78530 endif
78540 '左へボタン 十字キー　左　or 　カーソル左
78550 if ((y2 = -1) or (key$ = chr$(29))) then
78560 select case No
78570 'Ok ボタン  Okから　左　０に行く
78580 case -1:
78590 No=0:sp_on 13,1:sp_on 14,0
78600 pause 200:goto Buka_Input_Seireki2:
78610 '0 ボタン  左　何もしない
78620 case 0:
78630 pause 200:goto Buka_Input_Seireki2:
78640 case 3:
78650 No=2:sp_on 9,1:sp_on 12,0:
78660 pause 200:goto Buka_Input_Seireki2:
78670 case 2:
78680 No=1:sp_on 6,1:sp_on 9,0:
78690 pause 200:goto Buka_Input_Seireki2:
78700 case 1:
78710 pause 200:goto Buka_Input_Seireki2:
78720 case 6:
78730 No=5:sp_on 8,1:sp_on 11,0
78740 pause 200:goto Buka_Input_Seireki2:
78750 case 5:
78760 No=4:sp_on 5,1:sp_on 8,0
78770 pause 200:goto Buka_Input_Seireki2:
78780 case 4:
78790 pause 200:goto Buka_Input_Seireki2:
78800 case 9:
78810 No=8:sp_on 7,1:sp_on 10,0
78820 pause 200:goto Buka_Input_Seireki2:
78830 case 8:
78840 No=7:sp_on 4,1:sp_on 7,0
78850 pause 200:goto Buka_Input_Seireki2:
78860 case 7:
78870 pause 200:goto Buka_Input_Seireki2:
78880 end select
78890 endif
78900 '右  十字キー　右　or カーソル　右
78910 if ((y2 = 1) or (key$ = chr$(28))) then
78920 select case No
78930 '0ボタンからokボタン右に移動
78940 case 0:
78950 No=-1:sp_on 14,1:sp_on 13,0
78960 pause 200:goto Buka_Input_Seireki2:
78970 '0ボタンからokボタン 右に移動　ここまで
78980 'OKボタンで右を押して何もしない
78990 case -1:
79000 pause 200:goto Buka_Input_Seireki2:
79010 case 1:
79020 No=2:sp_on 9,1:sp_on 6,0
79030 pause 200:goto Buka_Input_Seireki2:
79040 case 2:
79050 No=3:sp_on 12,1:sp_on 9,0
79060 pause 200:goto Buka_Input_Seireki2:
79070 case 3:
79080 pause 200:goto Buka_Input_Seireki2:
79090 case 4:
79100 No=5:sp_on 8,1:sp_on 5,0
79110 pause 200:goto Buka_Input_Seireki2:
79120 case 5:
79130 No=6:sp_on 11,1:sp_on 8,0
79140 pause 200:goto Buka_Input_Seireki2:
79150 case 7:
79160 No=8:sp_on 7,1:sp_on 4,0
79170 pause 200:goto Buka_Input_Seireki2:
79180 case 8:
79190 No=9:sp_on 10,1:sp_on 7,0
79200 pause 200:goto Buka_Input_Seireki2:
79210 case 9:
79220 pause 200:goto Buka_Input_Seireki2:
79230 case 6:
79240 pause 200:goto Buka_Input_Seireki2:
79250 end select
79260 'Okから右ボタンを押して何もしない ここまで
79270 endif
79280 '十字キー　ここまで
79290 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
79300 'ここからコメント
79310 '右の丸ボタン決定を押した数:count
79320 'if ((bg=2) or (key$=chr$(13))) then
79330 'select case count
79340 'case 0:
79350 'count=1
79360 'if (No = -1) then
79370 'count = 0
79380 'Okボタンを押したとき
79390 '
79400 'goto Buka_Input_Seireki2:
79410 'else
79420 'Okボタン以外が押されたとき
79430 'if (No >= 1 and No <= 2) then
79440 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
79450 'buf_buka_year = No
79460 'buf_Buka_Born_Day(0) = bufyear
79470 'locate 2,3
79480 'color rgb(255,255,255)
79490 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
79500 'goto Buka_Input_Seireki2:
79510 'else
79520 'count=0
79530 'ui_msg"数字が範囲外になります。"
79540 'buf_buka_year$ ="":buf_buka_year=0
79550 'goto Buka_Input_Seireki2:
79560 'endif
79570 'endif
79580 'case 1:
79590 'count = 2
79600 'if (No = -1) then
79610 'count = 1
79620 'goto Buka_Input_Seireki2:
79630 'else
79640 'b = val(buf_buka_year$)
79650 'buf_buka_year = b * 10 + No
79660 'buf_buka_year$ = str$(buf_buka_year)
79670 'buf_Buka_Born_Day(0) = bufyear
79680 'locate 1,3
79690 'color rgb(255,255,255)
79700 'print "                                                                "
79710 'locate 1,3
79720 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
79730 'if (No = -1) then
79740 'count=1
79750 'goto Buka_Input_Seireki2:
79760 'endif
79770 'case 2:
79780 'count = 3
79790 'if (No = -1) then
79800 'count = 2
79810 'buf_Buka_Born_Day(0)=bufyear
79820 'goto Buka_Input_Seireki2:
79830 'else
79840 'b = val(buf_buka_year$)
79850 'buf_buka_year = b*10 + No
79860 'buf_buka_year$ = str$(buf_buka_year)
79870 'locate 1,3
79880 'color rgb(255,255,255)
79890 'print "                                        "
79900 'locate 1,3
79910 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
79920 'goto Buka_Input_Seireki2:
79930 'endif
79940 'case 3:
79950 'count=4
79960 'if (No = -1) then
79970 'count=3
79980 'goto Buka_Input_Seireki2:
79990 'else
80000 'b = buf_buka_year
80010 'buf_buka_year = b * 10 + No
80020 'buf_buka_year$=str$(buf_buka_year)
80030 'locate 1,3
80040 'color RGB(255,255,255)
80050 'print "                                      "
80060 'locate 1,3
80070 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
80080 'buf_year=val(buf_year$)
80090 'year=val(buf_year$)
80100 'if (No=-1) then
80110 'goto Input_Born_Month:
80120 'else
80130 'goto Buka_Input_Seireki2:
80140 'endif
80150 'case 4:
80160 'bufyear=buf_year
80170 'if (No=-1) then
80180 'buf_year = val(buf_year$)
80190 'bufyear = buf_year
80200 'sp_on 14,0
80210 'goto Buka_Input_Born_Month:
80220 'else
80230 'goto Buka_Input_Seireki2:
80240 'endif
80250 'end select
80260 'endif
80270 'if (bg2 = 2) then
80280 'select case count2
80290 'case 0:
80300 'if (No = -1) then
80310 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
80320 'count=0
80330 'locate 1,3
80340 'color rgb(255,255,255)
80350 'print "                                      "
80360 'locate 1,3
80370 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
80380 'goto Buka_Input_Seireki2:
80390 'else
80400 '(buf_year=0) then
80410 'buf_buka_year=0:buf_buka_year$="****"
80420 'goto Buka_Input_Seireki2:
80430 'endif
80440 'endif
80450 'end select
80460 'endif
80470 'end
80480 'ここまでコメント
80490 '================================================================
80500 if ((bg=2) or (key$=chr$(13))) then
80510 select case count
80520 case 0:
80530 count = 1
80540 if (No=-1) then
80550 count = 0
80560 buf_Buka_Born_Day(0) = No
80570 'Okボタンを押したとき
80580 goto Buka_Input_Seireki2:
80590 else
80600 'Okボタン以外が押されたとき
80610 if (No>=1 and No<=2) then
80620 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
80630 buf_buka_year = No
80640 buf_Buka_Born_Day(0) = No
80650 locate 1,3
80660 color rgb(255,255,255)
80670 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
80680 goto Buka_Input_Seireki2:
80690 else
80700 count=0
80710 ui_msg"数字が範囲外になります。"
80720 buf_buka_year$="":buf_buka_year=0
80730 goto Buka_Input_Seireki2:
80740 endif
80750 endif
80760 case 1:
80770 count = 2
80780 if (No = -1) then
80790 count = 1
80800 goto Buka_Input_Seireki2:
80810 else
80820 'b = val(buf_buka_year$)
80830 buf_buka_year = a * 10 + No
80840 b=buf_buka_year
80850 buf_buka_year$ = str$(buf_buka_year)+"**"
80860 buf_Buka_Born_Day(0)=buf_buka_year
80870 locate 1,3
80880 color rgb(255,255,255)
80890 print "                                                                "
80900 locate 1,3
80910 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
80920 'if (No = -1) then
80930 'count=1
80940 goto Buka_Input_Seireki2:
80950 endif
80960 case 2:
80970 count=3
80980 if (No=-1) then
80990 count =2:No=0
81000 goto Buka_Input_Seireki2:
81010 else
81020 'b = val(buf_buka_year$)
81030 buf_buka_year = b * 10 + No
81040 c = buf_buka_year
81050 buf_buka_year$ = str$(buf_buka_year) + "*"
81060 buf_Buka_Born_Day(0) = buf_buka_year
81070 locate 1,3
81080 color rgb(255,255,255)
81090 print "                                        "
81100 locate 1,3
81110 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
81120 goto Buka_Input_Seireki2:
81130 endif
81140 case 3:
81150 count=4
81160 if (No = -1) then
81170 'count=3:No=0
81180 goto Buka_Input_Seireki2:
81190 else
81200 'b = val(buf_buka_year$)
81210 buf_buka_year=c * 10 + No
81220 buf_buka_year$=str$(buf_buka_year)
81230 buf_Buka_Born_Day(0)=buf_buka_year
81240 locate 1,3
81250 color RGB(255,255,255)
81260 print "                                      "
81270 locate 1,3
81280 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
81290 buf_buka_year=val(buf_buka_year$)
81300 'year=val(buf_year$)
81310 'if (No=-1) then
81320 'goto Input_Born_Month:
81330 'else
81340 goto Buka_Input_Seireki2:
81350 endif
81360 case 4:
81370 'bufyear=buf_year
81380 if (No = -1) then
81390 buf_buka_year = val(buf_buka_year$)
81400 buf_Buka_Born_Day(0)=buf_buka_year
81410 sp_on 14,0
81420 goto Buka_Input_Born_Month:
81430 else
81440 goto Buka_Input_Seireki2:
81450 endif
81460 end select
81470 endif
81480 '================================================================
81490 'ここにコピーする。
81500 '================================================================
81510 'Input"部下の生れた年代(4桁,〜2025年):",year
81520 'if year > 2025 then goto Jyoushi_Input_Seireki:
81530 'if year = 123 then cls 3:cls 4:goto Main_Screen:
81540 '"4桁目"
81550 'bufyear4 = fix(year / 1000)
81560 '"3桁目"
81570 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
81580 '"2桁目"
81590 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
81600 '"1桁目"
81610 'bufyear1 = fix((year - ((bufyear4*
81620 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
81630 '1.部下の生まれた年代'
81640 '2.部下の生まれた月'
81650 Buka_Input_Born_Month:
81660 cls 3:play "":count=0:count2=0
81670 'No=-1:Okのとき
81680 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
81690 for i=0 to 1
81700 buf_month(i)=0
81710 next i
81720 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
81730 '****************************************************************************************************
81740 'WUXG(1920x1200)の時ここから
81750 '****************************************************************************************************
81760 gload Gazo$ + "Screen2.png",0,0,0
81770 gload Gazo$ + "downscreen.png",0,0,800
81780 '****************************************************************************************************
81790 'WUXG(1920x1200)の時ここから
81800 '****************************************************************************************************
81810 'Init"kb:4"
81820 '音声ファイル再生 2023.06.07
81830 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
81840 '****************************************************************************************************
81850 'WUXG(1920x1200)の時ここから
81860 '****************************************************************************************************
81870 font 48
81880 '****************************************************************************************************
81890 'WUXG(1920x1200)の時ここまで
81900 '****************************************************************************************************
81910 locate 0,1
81920 '文字色：黒　 color rgb(0,0,0)
81930 '文字色:白
81940 color rgb(255,255,255)
81950 print "部下の生まれた月を入れて下さい" + chr$(13)
81960 '文字色:白
81970 color rgb(255,255,255)
81980 locate 1,3
81990 '文字色:白
82000 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
82010 color rgb(255,255,255)
82020 'locate 4,6:print ":7"
82030 'locate 9,6:print ":8"
82040 'locate 12,6:print ":9"
82050 'locate 4,6
82060 '文字色:赤
82070 'print ":7  :8  :9" + chr$(13)
82080 'color rgb(255,255,255)
82090 'locate 4,8
82100 'print ":4  :5  :6" + chr$(13)
82110 'color rgb(255,255,255)
82120 'locate 4,10
82130 'print ":1  :2  :3" + chr$(13)
82140 'locate 4,12
82150 'print "    :0"
82160 'locate 12,12
82170 'color rgb(0,0,255)
82180 'print ":Ok"
82190 sp_on 4,0: sp_on 5,0:sp_on 6,0
82200 sp_on 7,0:sp_on 8,0:sp_on 9,0
82210 sp_on 10,0:sp_on 11,0:sp_on 12,0
82220 sp_on 13,0:sp_on 14,1
82230 Buka_Input_Born_Month2:
82240 key$="":bg=0:y=0:y2=0:bg2=0
82250 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
82260 key$ = inkey$
82270 bg = strig(1)
82280 y = stick(1)
82290 y2 = stick(0)
82300 bg2 = strig(0)
82310 pause 200
82320 wend
82330 '十字キー　ここから
82340 '上の矢印　または、十字キー上
82350 if ((y = -1) or (key$ = chr$(30))) then
82360 select case No
82370 'No=-1:okのとき:初期の状態
82380 '0kボタンから３に移動
82390 '上に行く 処理
82400 case -1:
82410 No=3:sp_on 12,1:sp_on 14,0
82420 pause 200:goto Buka_Input_Born_Month2:
82430 '選択肢:3
82440 '3ボタンから 6に移動
82450 case 3:
82460 No=6:sp_on 12,0:sp_on 11,1
82470 pause 200:goto Buka_Input_Born_Month2:
82480 '6ボタンから ９に移動
82490 case 6:
82500 No=9:sp_on 10,1:sp_on 11,0
82510 pause 200:goto Buka_Input_Born_Month2:
82520 '6ボタンから ９に移動　ここまで
82530 '9で上を押して何もしない
82540 case 9:
82550 '何もしない
82560 No=9
82570 pause 200:goto Buka_Input_Born_Month2:
82580 '9で上を押しても何もしない　ここまで
82590 '上　 0ボタンから2ボタン
82600 'sp_on 6,1:1
82610 'sp_on 8,1:5
82620 'sp_on 7,1:7
82630 case 0:
82640 No=2:sp_on 13,0:sp_on 9,1:
82650 pause 200:goto Buka_Input_Born_Month2:
82660 '上  0ボタンから2ボタン　ここまで
82670 '2から５になる 上
82680 case 2:
82690 No=5:sp_on 8,1:sp_on 9,0:
82700 pause 200:goto Buka_Input_Born_Month2:
82710 case 5:
82720 No=8:sp_on 7,1:sp_on 8,0
82730 pause 200:goto Buka_Input_Born_Month2:
82740 case 8:
82750 pause 200:goto Buka_Input_Born_Month2:
82760 case 1:
82770 No=4:sp_on 5,1:sp_on 6,0
82780 pause 200:goto Buka_Input_Born_Month2:
82790 case 4:
82800 No=7:sp_on 4,1:sp_on 5,0
82810 pause 200:goto Buka_Input_Born_Month2:
82820 case 7:
82830 pause 200:goto Buka_Input_Born_Month2:
82840 end select
82850 endif
82860 '左３　ここまで
82870 '下の矢印
82880 '中央 2
82890 if ((y=1) or (key$ = chr$(31))) then
82900 select case No
82910 '9から６に下げる
82920 case 9:
82930 No=6:sp_on 11,1:sp_on 10,0
82940 pause 200:goto Buka_Input_Born_Month2:
82950 '6から３に下げる
82960 case 6:
82970 No=3:sp_on 12,1:sp_on 11,0
82980 pause 200:goto Buka_Input_Born_Month2:
82990 '3から０ｋに変える
83000 case 3:
83010 No=-1:sp_on 14,1:sp_on 12,0
83020 pause 200:goto Buka_Input_Born_Month2:
83030 'Okから下のボタンを押しても何もしない
83040 case -1:
83050 pause 200:goto Buka_Input_Born_Month2:
83060 case 8:
83070 No=5:sp_on 8,1:sp_on 7,0
83080 pause 200:goto Buka_Input_Born_Month2:
83090 case 5:
83100 No=2:sp_on 9,1:sp_on 8,0
83110 pause 200:goto Buka_Input_Born_Month2:
83120 case 2:
83130 No=0:sp_on 13,1:sp_on 9,0
83140 pause 200:goto Buka_Input_Born_Month2:
83150 case 0:
83160 pause 200:goto Buka_Input_Born_Month2:
83170 case 7:
83180 No=4:sp_on 5,1:sp_on 4,0
83190 pause 200:goto Buka_Input_Born_Month2:
83200 case 4:
83210 No=1:sp_on 6,1:sp_on 5,0
83220 pause 200:goto Buka_Input_Born_Month2:
83230 case 1:
83240 pause 200:goto Buka_Input_Born_Month2:
83250 end select
83260 endif
83270 '左へボタン 十字キー　左　or 　カーソル左
83280 if ((y2 = -1) or (key$ = chr$(29))) then
83290 select case No
83300 'Ok ボタン  Okから　左　０に行く
83310 case -1:
83320 No=0:sp_on 13,1:sp_on 14,0
83330 pause 200:goto Buka_Input_Born_Month2:
83340 '0 ボタン  左　何もしない
83350 case 0:
83360 pause 200:goto Buka_Input_Born_Month2:
83370 case 3:
83380 No=2:sp_on 9,1:sp_on 12,0:
83390 pause 200:goto Buka_Input_Born_Month2:
83400 case 2:
83410 No=1:sp_on 6,1:sp_on 9,0:
83420 pause 200:goto Buka_Input_Born_Month2:
83430 case 1:
83440 pause 200:goto Buka_Input_Born_Month2:
83450 case 6:
83460 No=5:sp_on 8,1:sp_on 11,0
83470 pause 200:goto Buka_Input_Born_Month2:
83480 case 5:
83490 No=4:sp_on 5,1:sp_on 8,0
83500 pause 200:goto Buka_Input_Born_Month2:
83510 case 4:
83520 pause 200:goto Buka_Input_Born_Month2:
83530 case 9:
83540 No=8:sp_on 7,1:sp_on 10,0
83550 pause 200:goto Buka_Input_Born_Month2:
83560 case 8:
83570 No=7:sp_on 4,1:sp_on 7,0
83580 pause 200:goto Buka_Input_Born_Month2:
83590 case 7:
83600 pause 200:goto Buka_Input_Born_Month2:
83610 end select
83620 endif
83630 '右  十字キー　右　or カーソル　右
83640 if ((y2 = 1) or (key$ = chr$(28))) then
83650 select case No
83660 '0ボタンからokボタン右に移動
83670 case 0:
83680 No=-1:sp_on 14,1:sp_on 13,0
83690 pause 200:goto Buka_Input_Born_Month2:
83700 '0ボタンからokボタン 右に移動　ここまで
83710 'OKボタンで右を押して何もしない
83720 case -1:
83730 pause 200:goto Buka_Input_Born_Month2:
83740 case 1:
83750 No=2:sp_on 9,1:sp_on 6,0
83760 pause 200:goto Buka_Input_Born_Month2:
83770 case 2:
83780 No=3:sp_on 12,1:sp_on 9,0
83790 pause 200:goto Buka_Input_Born_Month2:
83800 case 3:
83810 pause 200:goto Buka_Input_Born_Month2:
83820 case 4:
83830 No=5:sp_on 8,1:sp_on 5,0
83840 pause 200:goto Buka_Input_Born_Month2:
83850 case 5:
83860 No=6:sp_on 11,1:sp_on 8,0
83870 pause 200:goto Buka_Input_Born_Month2:
83880 case 7:
83890 No=8:sp_on 7,1:sp_on 4,0
83900 pause 200:goto Buka_Input_Born_Month2:
83910 case 8:
83920 No=9:sp_on 10,1:sp_on 7,0
83930 pause 200:goto Buka_Input_Born_Month2:
83940 case 9:
83950 pause 200:goto Buka_Input_Born_Month2:
83960 case 6:
83970 pause 200:goto Buka_Input_Born_Month2:
83980 end select
83990 'Okから右ボタンを押して何もしない ここまで
84000 endif
84010 '十字キー　ここまで
84020 '右の丸ボタン　決定キー
84030 if ((bg=2) or (key$=chr$(13))) then
84040 select case count
84050 case 0:
84060 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
84070 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
84080 locate 1,3
84090 color RGB(255,255,255)
84100 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
84110 goto Buka_Input_Born_Month2:
84120 case 1:
84130 count = 2:buf_buka_month=a*10+No
84140 if (No = -1) then
84150 'count=0
84160 month=buf_buka_month
84170 buf_buka_month=val(buf_buka_Month$)
84180 month=buf_buka_month
84190 '生まれた日に飛ぶ
84200 goto Buka_Input_Born_Day:
84210 else
84220 buf_buka_month = a * 10 + No
84230 buf_buka_Month$ = str$(buf_buka_month)
84240 buf_Buka_Born_Day(1) = buf_buka_month
84250 locate 1,3
84260 color Rgb(255,255,255)
84270 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
84280 goto Buka_Input_Born_Month2:
84290 endif
84300 case 2:
84310 count=3
84320 'c= val(buf_Month$)
84330 'buf_month = c*10 + No
84340 'buf_Month$ = str$(buf_month)
84350 'locate 2,3
84360 'print "部下の生まれた月(1月～12月):";buf_Month$
84370 'goto Buka_Input_Born_Month2:
84380 'case 3:
84390 'count=4
84400 'b=val(buf_month$)
84410 'buf_month=c*10+No
84420 'buf_Month$=str$(buf_month)
84430 'locate 2,3
84440 'print "部下の生まれた月(1月～12月):";buf_Month$
84450 'buf_month=val(buf_Month$)
84460 'year=val(buf_year$)
84470 if (No=-1) then
84480 goto Buka_Input_Born_Day:
84490 else
84500 goto Input_Born_Month2:
84510 endif
84520 'case 4:
84530 'bufyear=buf_year
84540 'if (No=-1) then
84550 'buf_month = val(buf_Month$)
84560 'month = buf_month
84570 'sp_on 14,0
84580 'goto Input_Born_Day:
84590 'else
84600 'goto Input_Born_Month2:
84610 'endif
84620 end select
84630 endif
84640 '左の丸ボタン　キャンセル
84650 if (bg2=2) then
84660 select case count2
84670 case 0:
84680 if (No = -1) then
84690 buf_buka_month=0:buf_buka_Month$="**"
84700 count=0
84710 goto rewrite2:
84720 else
84730 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
84740 buf_month=0:buf_Month$="**"
84750 locate 2,3
84760 color rgb(255,255,255)
84770 print "                                       "
84780 goto rewrite2:
84790 if (No>12) then
84800 ui_msg"値が範囲外です。"
84810 goto rewrite2:
84820 endif
84830 endif
84840 endif
84850 rewrite2:
84860 locate 2,3
84870 color rgb(255,255,255)
84880 print "                                      "
84890 locate 2,3
84900 print "部下の生まれた月(1月~12月):";buf_buka_Month$
84910 goto Buka_Input_Born_Month2:
84920 end select
84930 'endif
84940 endif
84950 end
84960 '2.部下の生まれた月'
84970 '3.部下の生まれた日'
84980 '生れた日を入力
84990 Buka_Input_Born_Day:
85000 '生まれた日入力
85010 cls 3:play ""
85020 'No=-1:Okのとき
85030 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
85040 for i=0 to 1
85050 buf_day(i)=0
85060 next i
85070 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
85080 '****************************************************************************************************
85090 'WUXG(1920x1200)の時ここから
85100 '****************************************************************************************************
85110 gload Gazo$ + "Screen2.png",0,0,0
85120 gload Gazo$ + "downscreen.png",0,0,800
85130 '****************************************************************************************************
85140 'WUXG(1920x1200)の時ここまで
85150 '****************************************************************************************************
85160 'Init"kb:2"
85170 '音声ファイル再生 2023.06.07
85180 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
85190 font 48
85200 locate 0,1
85210 '文字色：黒　 color rgb(0,0,0)
85220 color rgb(255,255,255)
85230 print "部下の生まれた日を入れて下さい" + chr$(13)
85240 color rgb(255,255,255)
85250 locate 1,3
85260 print "部下の生まれた日(1日~31日):";buf_Day$
85270 color rgb(255,255,255)
85280 'locate 4,6:print ":7"
85290 'locate 9,6:print ":8"
85300 'locate 12,6:print ":9"
85310 'locate 4,6
85320 'print ":7  :8  :9" + chr$(13)
85330 'color rgb(255,255,255)
85340 'locate 4,8
85350 'print ":4  :5  :6" + chr$(13)
85360 'color rgb(255,255,255)
85370 'locate 4,10
85380 'print ":1  :2  :3" + chr$(13)
85390 'locate 4,12
85400 'print "    :0"
85410 'locate 12,12
85420 'color rgb(0,0,255)
85430 'print ":Ok"
85440 sp_on 4,0: sp_on 5,0:sp_on 6,0
85450 sp_on 7,0:sp_on 8,0:sp_on 9,0
85460 sp_on 10,0:sp_on 11,0:sp_on 12,0
85470 sp_on 13,0:sp_on 14,1
85480 Buka_Input_Born_Day2:
85490 '
85500 key$="":bg=0:y=0:y2=0:bg2=0
85510 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
85520 key$ = inkey$
85530 bg = strig(1)
85540 y = stick(1)
85550 y2 = stick(0)
85560 bg2 = strig(0)
85570 pause 200
85580 wend
85590 '十字キー　ここから
85600 '上の矢印　または、十字キー上
85610 if ((y = -1) or (key$ = chr$(30))) then
85620 select case No
85630 'No=-1:okのとき:初期の状態
85640 '0kボタンから３に移動
85650 '上に行く 処理
85660 case -1:
85670 No=3:sp_on 12,1:sp_on 14,0
85680 pause 200:goto Buka_Input_Born_Day2:
85690 '選択肢:3
85700 '3ボタンから 6に移動
85710 case 3:
85720 No=6:sp_on 12,0:sp_on 11,1
85730 pause 200:goto Buka_Input_Born_Day2:
85740 '6ボタンから ９に移動
85750 case 6:
85760 No=9:sp_on 10,1:sp_on 11,0
85770 pause 200:goto Buka_Input_Born_Day2:
85780 '6ボタンから ９に移動　ここまで
85790 '9で上を押して何もしない
85800 case 9:
85810 '何もしない
85820 No=9
85830 pause 200:goto Buka_Input_Born_Day2:
85840 '9で上を押しても何もしない　ここまで
85850 '上　 0ボタンから2ボタン
85860 'sp_on 6,1:1
85870 'sp_on 8,1:5
85880 'sp_on 7,1:7
85890 case 0:
85900 No=2:sp_on 13,0:sp_on 9,1:
85910 pause 200:goto Buka_Input_Born_Day2:
85920 '上  0ボタンから2ボタン　ここまで
85930 '2から５になる 上
85940 case 2:
85950 No=5:sp_on 8,1:sp_on 9,0:
85960 pause 200:goto Buka_Input_Born_Day2:
85970 case 5:
85980 No=8:sp_on 7,1:sp_on 8,0
85990 pause 200:goto Buka_Input_Born_Day2:
86000 case 8:
86010 pause 200:goto Buka_Input_Born_Day2:
86020 case 1:
86030 No=4:sp_on 5,1:sp_on 6,0
86040 pause 200:goto Buka_Input_Born_Day2:
86050 case 4:
86060 No=7:sp_on 4,1:sp_on 5,0
86070 pause 200:goto Buka_Input_Born_Day2:
86080 case 7:
86090 pause 200:goto Buka_Input_Born_Day2:
86100 end select
86110 endif
86120 '左３　ここまで
86130 '下の矢印
86140 '中央 2
86150 if ((y=1) or (key$ = chr$(31))) then
86160 select case No
86170 '9から６に下げる
86180 case 9:
86190 No=6:sp_on 11,1:sp_on 10,0
86200 pause 200:goto Buka_Input_Born_Day2:
86210 '6から３に下げる
86220 case 6:
86230 No=3:sp_on 12,1:sp_on 11,0
86240 pause 200:goto Buka_Input_Born_Day2:
86250 '3から０ｋに変える
86260 case 3:
86270 No=-1:sp_on 14,1:sp_on 12,0
86280 pause 200:goto Buka_Input_Born_Day2:
86290 'Okから下のボタンを押しても何もしない
86300 case -1:
86310 pause 200:goto Buka_Input_Born_Day2:
86320 case 8:
86330 No=5:sp_on 8,1:sp_on 7,0
86340 pause 200:goto Buka_Input_Born_Day2:
86350 case 5:
86360 No=2:sp_on 9,1:sp_on 8,0
86370 pause 200:goto Buka_Input_Born_Day2:
86380 case 2:
86390 No=0:sp_on 13,1:sp_on 9,0
86400 pause 200:goto Buka_Input_Born_Day2:
86410 case 0:
86420 pause 200:goto Buka_Input_Born_Day2:
86430 case 7:
86440 No=4:sp_on 5,1:sp_on 4,0
86450 pause 200:goto Buka_Input_Born_Day2:
86460 case 4:
86470 No=1:sp_on 6,1:sp_on 5,0
86480 pause 200:goto Buka_Input_Born_Day2:
86490 case 1:
86500 pause 200:goto Buka_Input_Born_Day2:
86510 end select
86520 endif
86530 '左へボタン 十字キー　左　or 　カーソル左
86540 if ((y2 = -1) or (key$ = chr$(29))) then
86550 select case No
86560 'Ok ボタン  Okから　左　０に行く
86570 case -1:
86580 No=0:sp_on 13,1:sp_on 14,0
86590 pause 200:goto Buka_Input_Born_Day2:
86600 '0 ボタン  左　何もしない
86610 case 0:
86620 pause 200:goto Buka_Input_Born_Day2:
86630 case 3:
86640 No=2:sp_on 9,1:sp_on 12,0:
86650 pause 200:goto Buka_Input_Born_Day2:
86660 case 2:
86670 No=1:sp_on 6,1:sp_on 9,0:
86680 pause 200:goto Buka_Input_Born_Day2:
86690 case 1:
86700 pause 200:goto Buka_Input_Born_Day2:
86710 case 6:
86720 No=5:sp_on 8,1:sp_on 11,0
86730 pause 200:goto Buka_Input_Born_Day2:
86740 case 5:
86750 No=4:sp_on 5,1:sp_on 8,0
86760 pause 200:goto Buka_Input_Born_Day2:
86770 case 4:
86780 pause 200:goto Buka_Input_Born_Day2:
86790 case 9:
86800 No=8:sp_on 7,1:sp_on 10,0
86810 pause 200:goto Buka_Input_Born_Day2:
86820 case 8:
86830 No=7:sp_on 4,1:sp_on 7,0
86840 pause 200:goto Buka_Input_Born_Day2:
86850 case 7:
86860 pause 200:goto Buka_Input_Born_Day2:
86870 end select
86880 endif
86890 '右  十字キー　右　or カーソル　右
86900 if ((y2 = 1) or (key$ = chr$(28))) then
86910 select case No
86920 '0ボタンからokボタン右に移動
86930 case 0:
86940 No=-1:sp_on 14,1:sp_on 13,0
86950 pause 200:goto Buka_Input_Born_Day2:
86960 '0ボタンからokボタン 右に移動　ここまで
86970 'OKボタンで右を押して何もしない
86980 case -1:
86990 pause 200:goto Buka_Input_Born_Day2:
87000 case 1:
87010 No=2:sp_on 9,1:sp_on 6,0
87020 pause 200:goto Buka_Input_Born_Day2:
87030 case 2:
87040 No=3:sp_on 12,1:sp_on 9,0
87050 pause 200:goto Buka_Input_Born_Day2:
87060 case 3:
87070 pause 200:goto Buka_Input_Born_Day2:
87080 case 4:
87090 No=5:sp_on 8,1:sp_on 5,0
87100 pause 200:goto Buka_Input_Born_Day2:
87110 case 5:
87120 No=6:sp_on 11,1:sp_on 8,0
87130 pause 200:goto Buka_Input_Born_Day2:
87140 case 7:
87150 No=8:sp_on 7,1:sp_on 4,0
87160 pause 200:goto Buka_Input_Born_Day2:
87170 case 8:
87180 No=9:sp_on 10,1:sp_on 7,0
87190 pause 200:goto Buka_Input_Born_Day2:
87200 case 9:
87210 pause 200:goto Buka_Input_Born_Day2:
87220 case 6:
87230 pause 200:goto Buka_Input_Born_Day2:
87240 end select
87250 'Okから右ボタンを押して何もしない ここまで
87260 endif
87270 '十字キー　ここまで
87280 '右の丸ボタンを押したとき
87290 if ((bg = 2) or (key$ = chr$(13))) then
87300 'count :決定ボタンを押した回数
87310 select case (count)
87320 '1桁目入力
87330 case 0:
87340 count = 1:
87350 if (No = -1) then
87360 '1桁目　OKでは何もしない
87370 'goto check:
87380 No=0
87390 else
87400 'ok以外のボタンを押したとき
87410 buf_buka_day = No:buf_buka_Day$ = str$(No)
87420 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
87430 buf_buka_Day$ = str$(No) + "*"
87440 endif
87450 a=No
87460 buf_Buka_Born_Day(2) = buf_buka_day
87470 locate 1,3
87480 print"                                      "
87490 color RGB(255,255,255)
87500 locate 1,3
87510 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
87520 endif
87530 check2:
87540 if (No >= 1 and No <= 9) then
87550 sp_on 14,0
87560 goto Buka_Input_Born_Day2:
87570 else
87580 sp_on 14,0
87590 goto Result_Business_Aisyou:
87600 end
87610 endif
87620 case 1:
87630 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
87640 count = 2:
87650 'locate 2,3
87660 'color RGB(255,255,255)
87670 'print "生まれた日(1日~31日):";buf_Day$
87680 'Okボタンを押したときの処理
87690 '入力値　10未満のとき
87700 'c = buf_day
87710 if (No = -1) then
87720 'c=buf_day
87730 ' buf_day = c
87740 'buf_Day$ = str$(buf_day)
87750 '10以下のとき
87760 No=0
87770 if (buf_day < 10) then
87780 sp_on 14,0
87790 goto Result_Business_Aisyou:
87800 end
87810 endif
87820 else
87830 sp_on 14,0
87840 'c=No
87850 buf_buka_day = a * 10 + No
87860 buf_buka_Day$ = str$(buf_buka_day)
87870 buf_Buka_Born_Day(2) = buf_buka_day
87880 locate 0,3
87890 color Rgb(255,255,255)
87900 print "                                       "
87910 locate 1,3
87920 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
87930 goto Buka_Input_Born_Day2:
87940 endif
87950 '生まれた日　2桁目の数字　or 1桁の数字 + ok
87960 case 2:
87970 count=0
87980 'c=val(buf_Day$)
87990 'buf_day=c*10+No
88000 'buf_Day$=str$(buf_day)
88010 'day=buf_day
88020 'locate 2,3
88030 'print "生まれた日(1日〜31日):";buf_Day$
88040 'No=-1:ok ボタンを押したとき
88050 if (No = -1) then No=0
88060 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
88070 sp_on 14,0
88080 goto Result_Business_Aisyou:
88090 else
88100 goto Buka_Input_Born_Day2:
88110 endif
88120 'Okボタン以外を押したとき
88130 else
88140 c=val(buf_buka_Day$)
88150 buf_buka_day = c * 10 + No
88160 buf_buka_Day$ = str$(buf_buka_day)
88170 locate 1,3
88180 print "                "
88190 locate 1,3
88200 print "生まれた日(1日~31日):"+buf_buka_Day$
88210 goto Buka_Input_Born_Day2:
88220 'endif
88230 case 3:
88240 count=4
88250 'c=val(buf_day$)
88260 'buf_day=c*10+No
88270 'buf_day$=str$(buf_day)
88280 'locate 2,3
88290 'print "生まれた日を入れてください:";buf_day$
88300 'year=val(buf_year$)
88310 if (No = -1) then
88320 'goto Buka_Input_Born_Day:
88330 sp_on 14,0:
88340 goto complate_jyoushi:
88350 else
88360 goto Buka_Input_Born_Month2:
88370 endif
88380 'case 4:
88390 'bufyear=buf_year
88400 'if (No=-1) then
88410 'buf_day = val(buf_day$)
88420 'bufday = buf_day
88430 'sp_on 14,0
88440 goto complate_jyoushi:
88450 'else
88460 'goto Buka_Input_Born_Day2:
88470 'endif
88480 end select
88490 endif
88500 if (bg2=2) then
88510 select case count2
88520 case 0:
88530 if (No=-1) then
88540 'buf_day=0:buf_Day$="**"
88550 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
88560 count=0
88570 buf_buka_day=0:buf_buka_Day$="**"
88580 goto rewrite_day3:
88590 else
88600 buf_buka_day=0:buf_buka_Day$="**"
88610 ui_msg"値が範囲外です"
88620 endif
88630 goto rewrite_day3:
88640 else
88650 goto rewrite_day3:
88660 endif
88670 rewrite_day3:
88680 locate 2,3
88690 color rgb(255,255,255)
88700 print "                                      "
88710 locate 1,3
88720 print "生まれた日(1日~31日):"+buf_buka_Day$
88730 goto Buka_Input_Born_Day2:
88740 end select
88750 endif
88760 '3.部下の生まれた日'
88770 '部下'
88780 '--------------------------------------------'
88790 'ビジネの相性　結果表示
88800 Result_Business_Aisyou:
88810 cls 3:init "kb:4"
88820 a=0:b=0:c=0:d=0:e=0:f=0
88830 bg=0:key$=""
88840 '****************************************************************************************************
88850 'WUXG(1920x1200)の時ここから
88860 '****************************************************************************************************
88870 gload Gazo$ + "Screen1.png",0,0,0
88880 gload Gazo$ + "downscreen.png",0,0,800
88890 '****************************************************************************************************
88900 'WUXG(1920x1200)の時ここから
88910 '****************************************************************************************************
88920 sp_on 14,0
88930 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
88940 buf_Buka = Kabara_Num(d,e,f)
88950 a_2 = buf_Buka
88960 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
88970 locate 0,1
88980 color rgb(255,0,0)
88990 print "●.相性診断結果１"
89000 locate 0,4:
89010 color rgb(255,255,255)
89020 print "1.上司の名前:";buffer_name$(0)
89030 locate 0,6
89040 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
89050 locate 0,8
89060 print "2.部下の名前:";buffer_name$(1)
89070 locate 0,10
89080 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
89090 locate 0,12
89100 print "3.上司と部下の相性:";Result_Aisyou$
89110 locate 1,15
89120 color rgb(0,0,0)
89130 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
89140 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
89150 bg = strig(1)
89160 key$ = inkey$
89170 bg2 = strig(0)
89180 pause 5
89190 wend
89200 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
89210 if (bg2 = 2) then
89220 cls 3:goto Business_Aishou_Input_1_parson:
89230 endif
89240 'ビジネスの相性占い　結果2　説明
89250 Result_Business_Aisyou2:
89260 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
89270 gload Gazo$ + "Screen1.png",0,0,0
89280 locate 0,1
89290 color rgb(255,0,0)
89300 print "●.相性の説明"
89310 color rgb(255,255,255)
89320 locate 0,4
89330 print "相性:";Result_Aisyou$
89340 locate 0,6:
89350 print "相性の説明:";buf$
89360 locate 0,15
89370 color rgb(0,0,0)
89380 print "右の丸ボタン:トップ,左のボタン:前の画面"
89390 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
89400 bg = strig(1)
89410 bg2 = strig(0)
89420 key$ = inkey$
89430 pause 200
89440 wend
89450 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
89460 if ((bg2 = 2)) then goto Result_Business_Aisyou:
89470 'Birds Eye Menu List
89480 Result_Birtheye_List1:
89490 'dim List$(4) Topに定義
89500 List$(0) = "1.バーズアイグリッドをもう一度診断"
89510 List$(1) = "2.診断結果"
89520 List$(2) = "3.データーを保存"
89530 List$(3) = "4.トップ画面に戻る"
89540 Birds_List1 = ui_select("List$","Menu")
89550 select case (Birds_List1)
89560 case 0: '1.もう一度診断
89570 for i=0 to 8
89580 buffer(i)=0
89590 next i
89600 goto Input_name1_Birdseye:
89610 case 1: '2.次へ行く
89620 gosub BirdsEye_Result2:
89630 case 2: '3.データーを保存
89640 ui_msg "データーを保存します"
89650 goto BirdsEye_Save_data:
89660 case 3: '4.トップに戻る
89670 for i=0 to 8
89680 buffer(i)=0
89690 next i
89700 goto Main_Screen:
89710 end select
89720 'BirdsEye Data Save
89730 BirdsEye_Save_data:
89740 if dir$(Save_data_Birdseye$) = "" then
89750 Mkdir Save_data_Birdseye$
89760 endif
89770 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
89780 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
89790 close #1
89800 ui_msg "データーを保存しました"
89810 goto Result_Birtheye_List1:
89820 'return
89830 '自作関数 ここから
89840 BirdsEyeGrid_Entry:
89850 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
89860 '****************************************************************************************************
89870 'WUXG(1920x1200)の時ここから
89880 '****************************************************************************************************
89890 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
89900 '****************************************************************************************************
89910 'WUXG(1920x1200)の時ここまで
89920 '****************************************************************************************************
89930 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
89940 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
89950 locate 1,4:print "右の丸:メイン画面へ行く"
89960 else
89970 flag=1
89980 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
89990 while (eof(1)=0)
90000 line input #1,a$
90010 n = n + 1
90020 wend
90030 close #1
90040 'endif
90050 talk "登録件数は"+str$(n)+"件です。"
90060 locate 1,2:print "登録件数は";str$(n);"件です"
90070 locate 1,4:print "左の丸：メイン画面へ行く"
90080 endif
90090 Entry_Count:
90100 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
90110 key$ = inkey$
90120 bg = strig(1)
90130 bg2 = strig(0)
90140 pause 200
90150 wend
90160 if ((bg = 2) or (key$ = chr$(13))) then
90170 if (n = 0) then
90180 '登録件数　０件のとき　メイン画面に行く
90190 goto Main_Screen:
90200 else
90210 '登録件数1件以上　次へ行く
90220 'ここを変更する
90230 goto Entry_List:
90240 endif
90250 endif
90260 if (bg2 = 2) then
90270 if (n > 0) then
90280 goto Main_Screen:
90290 else
90300 goto Entry_Count:
90310 endif
90320 endif
90330 Entry_List:
90340 cls 3:play"":color rgb(255,255,255)
90350 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0:init "kb:4"
90360 dim buffer_List$(11,n)
90370 'ファイル読み込み ここから
90380 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
90390 for i=0 to 10
90400 for j=0 to n-1
90410 input #1,a$
90420 buffer_List$(i,j)=a$
90430 next j
90440 next i
90450 close #1
90460 'erase buffer_List$
90470 'color rgb(255,255,255)
90480 i=0:key$="":bg=0:init"kb:4":bg2=0
90490 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
90500 key$ = inkey$
90510 bg = strig(1)
90520 bg2=strig(0)
90530 pause 200
90540 wend
90550 color rgb(0,0,0)
90560 locate 1,15:print "次へ"
90570 'show_ListData:
90580 'j=0
90590 repeat (j=0)
90600 show_ListData:
90610 cls
90620 color rgb(255,255,255)
90630 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
90640 '1の文字データー
90650 locate 4,14:print buffer_List$(2,j)
90660 '2の文字データー
90670 locate 4,9:print buffer_List$(3,j)
90680 '3の文字データー
90690 locate 4,5:print buffer_List$(4,j)
90700 '4の文字データー
90710 locate 11,14:print buffer_List$(5,j)
90720 '5の文字データー
90730 locate 11,9:PRINT buffer_List$(6,j)
90740 '6の文字データー
90750 locate 11,5:print buffer_List$(7,j)
90760 '7の文字データー
90770 locate 16,14:print buffer_List$(8,j)
90780 '8の文字データー
90790 locate 16,9:print buffer_List$(9,j)
90800 '9の文字データー
90810 locate 16,5:print buffer_List$(10,j)
90820 color rgb(0,0,0)
90830 locate 1,15:print "右の丸：次へ"
90840 if (bg=2 or key$=chr$(13)) then
90850 j=j+1
90860 endif
90870 if (bg2=2) then
90880 goto Main_Screen:
90890 endif
90900 until (j=n)
90910 'erase buffer_List$:
90920 goto show_ListData:
90930 'ファイル読み込み　ここまで
90940 func read_explain$(ba$)
90950 d$=""
90960 buf_String$=""
90970 if ba$="A" then
90980 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
90990 line input #1,a$
91000 a1$=mid$(a$,1,12)
91010 a2$=mid$(a$,13,17)
91020 a3$=mid$(a$,30,17)
91030 a4$=mid$(a$,47,18)
91040 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
91050 buf_String$ = a5$
91060 close #1
91070 endif
91080 if ba$="B"  then
91090 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
91100 line input #1,b$
91110 b1$=mid$(b$,1,15)
91120 b2$=mid$(b$,16,21)
91130 'b3$=mid$(b$,33,3)
91140 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
91150 buf_String$ = b4$
91160 close #1
91170 endif
91180 if ba$="C"  then
91190 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
91200 line input #1,c$
91210 c1$ = Mid$(c$,1,15)
91220 c2$ = Mid$(c$,16,33)
91230 c3$ = c1$ + chr$(13) + c2$
91240 buf_String$ = c3$
91250 close #1
91260 endif
91270 if ba$="D" then
91280 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
91290 line input #1,d$
91300 d1$=mid$(d$,1,15)
91310 d2$=mid$(d$,16,22)
91320 d3$=mid$(d$,38,7)
91330 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
91340 buf_String$ = d4$
91350 close #1
91360 endif
91370 if ba$="E"  then
91380 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
91390 line input #1,e$
91400 e1$=Mid$(e$,1,16)
91410 e2$=Mid$(e$,17,16)
91420 e3$=Mid$(e$,33,12)
91430 e4$=Mid$(e$,45,17)
91440 e5$=Mid$(e$,62,17)
91450 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
91460 buf_String$ = e6$
91470 close #1
91480 endif
91490 if ba$="F" then
91500 '改行を追加して表示を調整
91510 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
91520 line input #1,f$
91530 f1$=Mid$(f$,1,15)
91540 f2$=Mid$(f$,16,12)
91550 buf_String$ = f1$+chr$(13)+f2$
91560 close #1
91570 endif
91580 if ba$="G" then
91590 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
91600 line input #1,g$
91610 g1$ = mid$(g$,1,16)
91620 g2$ = mid$(g$,17,18)
91630 g3$ = mid$(g$,36,21)
91640 g4$ = mid$(g$,56,6)
91650 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
91660 buf_String$ = g5$
91670 close #1
91680 endif
91690 if ba$="H" then
91700 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
91710 line input #1,h$
91720 h1$=Mid$(h$,1,17)
91730 h2$=Mid$(h$,18,21)
91740 h3$=Mid$(h$,39,20)
91750 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
91760 buf_String$ = h$
91770 close #1
91780 endif
91790 if ba$ = "I" then
91800 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
91810 line input #1,i$
91820 i1$=Mid$(i$,1,10)
91830 i2$=Mid$(i$,11,13)
91840 i3$=Mid$(i$,25,16)
91850 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
91860 buf_String$ = i$
91870 close #1
91880 endif
91890 buffer$ = buf_String$
91900 endfunc buffer$
91910 'カバラ数（数秘番号を求める）
91920 func Kabara_Num(buffer_Year,month,day)
91930 '=============================
91940 'a1:4桁のうちの1桁目を求める
91950 '例 a1:1234の4が1桁目
91960 'a2:4桁のうちの2桁目を求める
91970 '例:a2:1234の3が2桁目
91980 'a3:4桁のうちの3桁目を求める
91990 '例 a3:1234の2が3桁目
92000 'a4:4桁のうちの4桁目を求める
92010 '例 a4:1234の1が4桁目
92020 '==============================
92030 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
92040 Year = buffer_Year
92050 '処理1　整数部分を取り出す。
92060 a4 = fix(Year / 1000)
92070 a3 = fix(Year / 100) - (a4 * 10)
92080 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
92090 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
92100 '処理　２　取り出した整数部分を足す。
92110 a_ = a1 + a2 + a3 + a4 +month + day
92120 'a1=0:a2=0:a3=0:a4=0
92130 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
92140 buffer = a_
92150 'else
92160 goto recomp2:
92170 'if (a_ = 10) then
92180 '  buffer = 1
92190 endif
92200 recomp2:
92210 a5=0:a6=0
92220 a5 = fix(a_ / 10)
92230 a6 = (a_) - (a5 * 10)
92240 a_ = a5 + a6
92250 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
92260 '結果に行く
92270 goto Res2:
92280 '  if ((a_>11) and (a_<99)) then
92290 else
92300 '再度計算
92310 goto recomp2:
92320 endif
92330 '     a1 = fix(a_ / 10)
92340 '     a2 = a_ - (a1 * 10)
92350 '     a_ = a1 + a2
92360 '     buffer = a_
92370 'endif
92380 'else
92390 '    bffer = a_
92400 'endif
92410 'endif
92420 'else
92430 'talk "プログラムを終了します。"
92440 'end
92450 'endif
92460 'kabara = 10
92470 Res2:
92480 kabara = a_
92490 endfunc kabara
92500 func Kabara_Aisyou$(buff1,buff2)
92510 a=0:b=0
92520 '範囲　1~9
92530 if ((buff1 > 0 and buff1 < 10)) then
92540 a = buff1
92550 else
92560 Select case buff1
92570 case 11:
92580 buff1=9:a=buff1
92590 case 22:
92600 buff1=10:a=buff1
92610 end select
92620 endif
92630 '範囲　１~９
92640 if ((buff2 > 0 and buff2 < 10)) then
92650 b = buff2
92660 else
92670 select case buff2
92680 case 11:
92690 buff2=9:b=buff2
92700 case 12:
92710 buff2=10:b=buff2
92720 end select
92730 endif
92740 Aisyou$ = Buffer_Business_Aisyou$(a,b)
92750 endfunc Aisyou$
92760 '**********************************************************
92770 '0-0.Top Screen Recheck: ここから
92780 '**********************************************************
92790 TopScreenRecheck:
92800 color rgb(217,255,212)
92810 locate 1,3:print  "                            "
92820 locate 1,4:print  "                            "
92830 locate 1,5
92840 print "番号を選んでください"
92850 locate 1,6:print  "                            "
92860 locate 1,7:print  " :1.数秘術占い"
92870 locate 1,8:print  "                            "
92880 locate 1,9:print  "                            "
92890 locate 1,10:print  "                            "
92900 locate 1,10:print  " :2.設 定"
92910 locate 1,11:print  "                            "
92920 locate 1,12:print  "                            "
92930 locate 1,13:print  "                            "
92940 locate 1,13:print  " :3.ヘルプ"
92950 locate 1,14:print  "                            "
92960 locate 1,15:print  "                            "
92970 locate 1,16:print  "                            "
92980 locate 1,16:print  " :4.(プログラムを)終了する"
92990 locate 1,17:print  "                            "
93000 locate 1,18:print  "                            "
93010 return
93020 '**********************************************************
93030 '0-0.Top Screen Recheck:　ここまで
93040 '**********************************************************
93050 '**********************************************************
93060 '3-1Help Top ReCheck ここから
93070 '**********************************************************
93080 Help_Top_ReCheck:
93090 font FONT
93100 color rgb(217,255,212)
93110 locate 1,3:print  "                       "
93120 locate 1,4:print  "                       "
93130 locate 1,5:print "番号を選んでください"
93140 locate 1,6:print  "                       "
93150 '0
93160 locate 1,7:print " :1.ルールの説明"
93170 '1
93180 locate 1,8:print  "                       "
93190 locate 1,9:print  "                       "
93200 locate 1,10:print " :2.バージョンの表示"
93210 locate 1,11:print  "                      "
93220 locate 1,12:print  "                      "
93230 '2
93240 locate 1,13:print " :3.参考文献"
93250 locate 1,14:print  "                      "
93260 locate 1,15:print  "                      "
93270 '3
93280 locate 1,16:print " :4.トップ画面に戻る"
93290 return
93300 '**********************************************************
93310 '3-1.Help Top ReCheckここまで
93320 '**********************************************************
93330 '***********************************************************
93340 '**********************************************************
93350 Suhi_Rule_Screen_Recheck:
93360 color rgb(255,255,255)
93370 font FONT
93380 locate 1,3:print  "                       "
93390 locate 1,4:print  "                       "
93400 locate 1,5
93410 print "番号を選んでください"
93420 locate 1,6:print  "                       "
93430 locate 1,7:    '〇
93440 print " :1.数秘術のやり方"
93450 locate 1,8:print  "                       "
93460 locate 1,9:print  "                       "
93470 locate 1,10:   '〇
93480 print " :2.バーズアイグリットの説明"
93490 locate 1,11:print  "                       "
93500 locate 1,12:print  "                       "
93510 locate 1,13:    '〇
93520 print " :3.トップ画面に戻る"
93530 locate 1,14:print  "                       "
93540 locate 1,15:print  "                       "
93550 return
93560 '=============================
93570 '自作関数 ここまで
93580 '1.数秘術　トップ画面
93590 '
93600 'Data_eraseを一番最後に持ってくる
93610 '=============================
93620 Data_erase:
93630 'メモリー削除
93640 erase buf_male_year
93650 erase buf_male_month
93660 erase buf_male_Born_Day
93670 erase buf_feMale_Born_Day
93680 erase buf_female_day
93690 erase buf_name1$
93700 erase buf_name2$
93710 erase buffer
93720 erase buf_chart$
93730 erase Buffer_Business_Aisyou$
93740 erase buffer_name$
93750 '上司の誕生日
93760 erase buf_Jyoushi_Born_Day
93770 '部下の誕生日
93780 erase buf_Buka_Born_Day
93790 erase buf_year
93800 erase buf_month
93810 erase buf_day
93820 'フォーカスライン
93830 erase Forcus1_buffer$
93840 erase Forcus2_buffer$
93850 erase Forcus3_buffer$
93860 'erase buffer_List$
93870 'Birds eye List Data 配列
93880 erase List$
93890 buffer$ = ""
93900 buf$ = ""
93910 buf_year$ = ""
93920 buf_Jyoushi_Kabara_Num = 0
93930 buf_Buka_Kabara_Num = 0
93940 count = 0
93950 buf_Month$ = ""
93960 buf_Day$ = ""
93970 b=0
93980 c=0
93990 No=0
94000 count=0
94010 return
