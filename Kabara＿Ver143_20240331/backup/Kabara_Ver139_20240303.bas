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
630 Version$ = "Ver:1.3.9_20240303a"
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
870 if (((size(1) <= 1200) and (size(1) <= 800))) then
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
1890 gload Gazo$ + "Selection.png",1,30,300
1900 '5
1910 gload Gazo$ + "Selection.png",1,30,400
1920 '6
1930 gload Gazo$ + "Selection.png",1,30,500
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
2070 gload Gazo$ + "Selection.png",1,150,420
2080 gload Gazo$ + "Selection.png",1,240,500
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
2350 gload Gazo$ + "Selection.png",1,240,300
2360 '11
2370 gload Gazo$ + "Selection.png",1,240,400
2380 '12
2390 gload Gazo$ + "Selection.png",1,240,500
2400 '13:0
2410 gload Gazo$ + "Selection.png",1,200,400
2420 gload Gazo$ + "Selection.png",1,240,400
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
2950 sp_def 4,(30,200),32,32
2960 '2
2970 sp_def 5,(30,300),32,32
2980 '3
2990 sp_def 6,(30,400),32,32
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
3130 sp_def 14,(240,500),32,32
3140 'Sprite OFF
3150 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3160 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
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
3340 sp_put 10,(240,200),10,0
3350 '8
3360 sp_put 11,(240,300),11,0
3370 '9
3380 sp_put 12,(240,400),12,0
3390 '
3400 sp_put 13,(340,500),13,0
3410 sp_put 14,(240,500),14,0
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
3770 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
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
4010 sp_put 13,(340,500),13,0
4020 sp_put 14,(540,500),14,0
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
4890 '3
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
6530 if ((size(0) <= 1280) and (size(1) <= 800)) then
6540 '************************************************************************************************
6550 '1.WXGA ここから (1280 x 800)
6560 '************************************************************************************************
6570 gload Gazo$   + Gazo_WXGA$ + "VersionScreen_918x680_20240219.png",0,0,0
6580 '************************************************************************************************
6590 '1.WXGA ここまで (1280 x 800)
6600 '************************************************************************************************
6610 else
6620 '************************************************************************************************
6630 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
6640 '************************************************************************************************
6650 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
6660 gload Gazo$ + "downscreen.png",0,0,800
6670 '************************************************************************************************
6680 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6690 '************************************************************************************************
6700 endif
6710 init"kb:4":font FONT
6720 'talk"バージョン情報です"
6730 'Message :Version
6740 play Voice$ +  "Voice_Version_Message_20230607.mp3"
6750 if ((size(0) <= 1280) and (size(1) <= 800)) then
6760 color rgb(0,0,255)
6770 locate 1,5
6780 print "・Title:数秘術占い";chr$(13)
6790 locate 1,8
6800 print "・" + Version$ + chr$(13)
6810 locate 1,10
6820 print "・Author:licksjp"+chr$(13)
6830 locate 1,13
6840 print "・E-mail:licksjp@gmail.com" + chr$(13)
6850 locate 0,15
6860 print "(C)licksjp All rights " + chr$(13)
6870 locate 7,16
6880 print "reserved since 2009"+chr$(13)
6890 locate 0,19
6900 color rgb(0,0,0)
6910 print "ジョイパッドの右を押してください"
6920 else
6930 locate 0,3
6940 color rgb(0,0,255)
6950 print "・Title:数秘術占い";chr$(13)
6960 print "・" + Version$ + chr$(13)
6970 print "・Author:licksjp"+chr$(13)
6980 print "・E-mail:licksjp@gmail.com" + chr$(13)
6990 locate 0,12
7000 print "(C)licksjp All rights " + chr$(13)
7010 locate 7,13
7020 print "reserved since 2009"+chr$(13)
7030 locate 0,18
7040 color rgb(255,255,255)
7050 print "ジョイパッドの右を押してください"
7060 endif
7070 Versionn_Selection:
7080 bg = 0:key$ = "":bg2 = 0
7090 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
7100 bg = strig(1)
7110 key$ = inkey$
7120 bg2 = strig(0)
7130 pause 200
7140 wend
7150 if ((bg = 2) or (key$ = chr$(13))) then
7160 cls 4:goto Main_Screen:
7170 endif
7180 if (bg2=2) then
7190 play "":pause 200
7200 play Voice$ + "Voice_Version_Message_20230607.mp3"
7210 goto Versionn_Selection:
7220 endif
7230 '1.数秘ナンバーを求める
7240 '誕生日入力(生れた年代)
7250 Input_Seireki:
7260 '************************************************************************************************
7270 '1.WXGAの時1200x800の時
7280 '************************************************************************************************
7290 '************************************************************************************************
7300 '2.WUXGAの時1920x1200の時
7310 '************************************************************************************************
7320 cls 3:play "":count=0:count2=0
7330 'No = -1:Okのとき
7340 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
7350 '************************************************************************************************
7360 '配列buf_year(4)を0で埋める。:データー初期化 ここから
7370 '************************************************************************************************
7380 for i=0 to 3
7390 buf_year(i)=0
7400 next i
7410 '************************************************************************************************
7420 '配列buf_year(4)を0で埋める。 :データー初期化　ここまで
7430 '************************************************************************************************
7440 '************************************************************************************************
7450 '1.WXGAの時1200x800の時
7460 '************************************************************************************************
7470 if ((size(0) <= 1280) and (size(1) <= 800)) then
7480 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png"
7490 else
7500 '************************************************************************************************
7510 '2.WUXGAの時1920x1200の時
7520 '************************************************************************************************
7530 gload Gazo$ + "Screen2.png",0,0,0
7540 gload Gazo$ + "downscreen.png",0,0,800
7550 '************************************************************************************************
7560 '2.WUXGAの時1920x1200の時
7570 '************************************************************************************************
7580 endif
7590 'Init"kb:2"
7600 '音声ファイル再生 2023.06.07
7610 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
7620 font FONT
7630 locate 0,1
7640 if ex_info$(1) <> "JP" then
7650 color rgb(255,255,255)
7660 color rgb(255,255,255)
7670 print "Input Born Year?" + chr$(13)
7680 color rgb(255,255,255)
7690 locate 2,4
7700 print "Your Born Year(4 dedgit for AC):" + buf_year$
7710 else
7720 '文字色：黒　 color rgb(0,0,0)
7730 color rgb(255,255,255)
7740 print "生まれた年代を入れて下さい" + chr$(13)
7750 color rgb(255,255,255)
7760 locate 2,5
7770 print "生まれた年代(西暦4桁):" + buf_year$
7780 endif
7790 '=============================
7800 'テンキーの色(1~９)　白 ,決定ボタン　青
7810 '=============================
7820 color rgb(255,255,255)
7830 sp_on 4,0: sp_on 5,0:sp_on 6,0
7840 sp_on 7,0:sp_on 8,0:sp_on 9,0
7850 sp_on 10,0:sp_on 11,0:sp_on 12,0
7860 sp_on 13,0:sp_on 14,1
7870 Input_Seireki2:
7880 key$="":bg=0:y=0:y2=0:bg2=0:
7890 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7900 key$ = inkey$
7910 bg = strig(1)
7920 y = stick(1)
7930 y2 = stick(0)
7940 bg2 = strig(0)
7950 pause 200
7960 wend
7970 '十字キー　ここから
7980 '上の矢印　または、十字キー上
7990 if ((y = -1) or (key$ = chr$(30))) then
8000 select case No
8010 'No=-1:okのとき:初期の状態
8020 '0kボタンから３に移動
8030 '上に行く 処理
8040 case -1:
8050 No=3:sp_on 12,1:sp_on 14,0:beep
8060 pause 200:goto Input_Seireki2:
8070 '選択肢:3
8080 '3ボタンから 6に移動
8090 case 3:
8100 No=6:sp_on 12,0:sp_on 11,1:beep
8110 pause 200:goto Input_Seireki2:
8120 '6ボタンから ９に移動
8130 case 6:
8140 No=9:sp_on 10,1:sp_on 11,0:beep
8150 pause 200:goto Input_Seireki2:
8160 '6ボタンから ９に移動　ここまで
8170 '9で上を押して何もしない
8180 case 9:
8190 '何もしない
8200 No=9
8210 beep:pause 200:goto Input_Seireki2:
8220 '9で上を押しても何もしない　ここまで
8230 '上　 0ボタンから2ボタン
8240 'sp_on 6,1:1
8250 'sp_on 8,1:5
8260 'sp_on 7,1:7
8270 case 0:
8280 No=2:sp_on 13,0:sp_on 9,1:beep
8290 pause 200:goto Input_Seireki2:
8300 '上  0ボタンから2ボタン　ここまで
8310 '2から５になる 上
8320 case 2:
8330 No=5:sp_on 8,1:sp_on 9,0:beep
8340 pause 200:goto Input_Seireki2:
8350 case 5:
8360 No=8:sp_on 7,1:sp_on 8,0:beep
8370 pause 200:goto Input_Seireki2:
8380 case 8:
8390 beep:pause 200:goto Input_Seireki2:
8400 case 1:
8410 No=4:sp_on 5,1:sp_on 6,0:beep
8420 pause 200:goto Input_Seireki2:
8430 case 4:
8440 No=7:sp_on 4,1:sp_on 5,0:beep
8450 pause 200:goto Input_Seireki2:
8460 case 7:
8470 beep:pause 200:goto Input_Seireki2:
8480 end select
8490 endif
8500 '左３　ここまで
8510 '下の矢印
8520 '中央 2
8530 if ((y=1) or (key$ = chr$(31))) then
8540 select case No
8550 '9から６に下げる
8560 case 9:
8570 No=6:sp_on 11,1:sp_on 10,0:beep
8580 pause 200:goto Input_Seireki2:
8590 '6から３に下げる
8600 case 6:
8610 No=3:sp_on 12,1:sp_on 11,0:beep
8620 pause 200:goto Input_Seireki2:
8630 '3から０ｋに変える
8640 case 3:
8650 No=-1:sp_on 14,1:sp_on 12,0:beep
8660 pause 200:goto Input_Seireki2:
8670 'Okから下のボタンを押しても何もしない
8680 case -1:
8690 beep:pause 200:goto Input_Seireki2:
8700 case 8:
8710 No=5:sp_on 8,1:sp_on 7,0:beep
8720 pause 200:goto Input_Seireki2:
8730 case 5:
8740 No=2:sp_on 9,1:sp_on 8,0:beep
8750 pause 200:goto Input_Seireki2:
8760 case 2:
8770 No=0:sp_on 13,1:sp_on 9,0:beep
8780 pause 200:goto Input_Seireki2:
8790 case 0:
8800 beep:pause 200:goto Input_Seireki2:
8810 case 7:
8820 No=4:sp_on 5,1:sp_on 4,0:beep
8830 pause 200:goto Input_Seireki2:
8840 case 4:
8850 No=1:sp_on 6,1:sp_on 5,0:beep
8860 pause 200:goto Input_Seireki2:
8870 case 1:
8880 beep:pause 200:goto Input_Seireki2:
8890 end select
8900 endif
8910 '左へボタン 十字キー　左　or 　カーソル左
8920 if ((y2 = -1) or (key$ = chr$(29))) then
8930 select case No
8940 'Ok ボタン  Okから　左　０に行く
8950 case -1:
8960 No=0:sp_on 13,1:sp_on 14,0:beep
8970 pause 200:goto Input_Seireki2:
8980 '0 ボタン  左　何もしない
8990 case 0:
9000 beep:pause 200:goto Input_Seireki2:
9010 case 3:
9020 No=2:sp_on 9,1:sp_on 12,0:beep
9030 pause 200:goto Input_Seireki2:
9040 case 2:
9050 No=1:sp_on 6,1:sp_on 9,0:beep
9060 pause 200:goto Input_Seireki2:
9070 case 1:
9080 beep:pause 200:goto Input_Seireki2:
9090 case 6:
9100 No=5:sp_on 8,1:sp_on 11,0:beep
9110 pause 200:goto Input_Seireki2:
9120 case 5:
9130 No=4:sp_on 5,1:sp_on 8,0:beep
9140 pause 200:goto Input_Seireki2:
9150 case 4:
9160 beep:pause 200:goto Input_Seireki2:
9170 case 9:
9180 No=8:sp_on 7,1:sp_on 10,0:beep
9190 pause 200:goto Input_Seireki2:
9200 case 8:
9210 No=7:sp_on 4,1:sp_on 7,0:beep
9220 pause 200:goto Input_Seireki2:
9230 case 7:
9240 beep:pause 200:goto Input_Seireki2:
9250 end select
9260 endif
9270 '右  十字キー　右　or カーソル　右
9280 if ((y2 = 1) or (key$ = chr$(28))) then
9290 select case No
9300 '0ボタンからokボタン右に移動
9310 case 0:
9320 No=-1:sp_on 14,1:sp_on 13,0:beep
9330 pause 200:goto Input_Seireki2:
9340 '0ボタンからokボタン 右に移動　ここまで
9350 'OKボタンで右を押して何もしない
9360 case -1:
9370 pause 200:goto Input_Seireki2:
9380 case 1:
9390 No=2:sp_on 9,1:sp_on 6,0:beep
9400 pause 200:goto Input_Seireki2:
9410 case 2:
9420 No=3:sp_on 12,1:sp_on 9,0
9430 beep:pause 200:goto Input_Seireki2:
9440 case 3:
9450 beep:pause 200:goto Input_Seireki2:
9460 case 4:
9470 No=5:sp_on 8,1:sp_on 5,0:beep
9480 pause 200:goto Input_Seireki2:
9490 case 5:
9500 No=6:sp_on 11,1:sp_on 8,0:beep
9510 pause 200:goto Input_Seireki2:
9520 case 7:
9530 No=8:sp_on 7,1:sp_on 4,0:beep
9540 pause 200:goto Input_Seireki2:
9550 case 8:
9560 No=9:sp_on 10,1:sp_on 7,0:beep
9570 pause 200:goto Input_Seireki2:
9580 case 9:
9590 beep:pause 200:goto Input_Seireki2:
9600 case 6:
9610 beep:pause 200:goto Input_Seireki2:
9620 end select
9630 'Okから右ボタンを押して何もしない ここまで
9640 endif
9650 '十字キー　ここまで
9660 if ((bg=2) or (key$=chr$(13))) then
9670 select case count
9680 case 0:
9690 count=1
9700 if (No=-1) then
9710 count=0
9720 'Okボタンを押したとき
9730 goto Input_Seireki2:
9740 else
9750 '===================================
9760 'Okボタン以外が押されたとき  1桁目の入力
9770 '===================================
9780 count2=1
9790 if (No >= 1 and No <= 2) then
9800 buf_year$="":buf_year$ = str$(No)
9810 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
9820 if ex_info$(1) <> "JP" then
9830 n1= len("Input Born Year?(4 dedgit):")
9840 else
9850 n1 = len("生まれた年代(西暦4桁):")
9860 endif
9870 locate 2,3
9880 color rgb(255,255,255)
9890 if ex_info$(1) <> "JP" then
9900 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
9910 else
9920 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
9930 endif
9940 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
9950 'print "生まれた年代(西暦4桁):";buf_year2$
9960 print buf_Born_Year_line$
9970 goto Input_Seireki2:
9980 else
9990 count=0
10000 ui_msg"数字が範囲外になります。"
10010 buf_year$="":buf_year=0
10020 goto Input_Seireki2:
10030 endif
10040 endif
10050 case 1:
10060 count = 2
10070 if (No = -1) then
10080 count = 1
10090 goto Input_Seireki2:
10100 else
10110 count2 = 1
10120 b = val(buf_year$)
10130 buf_year = b * 10 + No
10140 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
10150 locate 2,3
10160 color rgb(255,255,255)
10170 print "                                                                "
10180 locate 2,3
10190 if ex_info$(1) <> "JP" then
10200 print "Input Born Year(4 dedgit):";buf_year$
10210 else
10220 print "生まれた年代(西暦4桁):";buf_year2$
10230 endif
10240 'if (No = -1) then
10250 'count=1
10260 goto Input_Seireki2:
10270 endif
10280 case 2:
10290 count=3
10300 if (No=-1) then
10310 count =2
10320 goto Input_Seireki2:
10330 else
10340 b = val(buf_year$)
10350 buf_year = b*10 + No
10360 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
10370 locate 2,3
10380 color rgb(255,255,255)
10390 print "                                        "
10400 locate 2,3
10410 if ex_info$(1) <> "JP" then
10420 print "Input Born Year?(4 dedgit):";buf_year$
10430 else
10440 print "生まれた年代(西暦4桁):";buf_year2$
10450 endif
10460 goto Input_Seireki2:
10470 endif
10480 case 3:
10490 count=4
10500 if (No = -1) then
10510 count=3
10520 goto Input_Seireki2:
10530 else
10540 b = val(buf_year$)
10550 buf_year = b * 10 + No
10560 buf_year$ = str$(buf_year)
10570 locate 2,3
10580 color RGB(255,255,255)
10590 print "                                      "
10600 locate 2,3
10610 if ex_info$(1) <> "JP" then
10620 print "Input Born Year?(4 dedgit):";buf_year$
10630 else
10640 print "生まれた年代(西暦4桁):";buf_year$
10650 endif
10660 buf_year=val(buf_year$)
10670 'year=val(buf_year$)
10680 'if (No=-1) then
10690 'goto Input_Born_Month:
10700 'else
10710 goto Input_Seireki2:
10720 endif
10730 case 4:
10740 'bufyear=buf_year
10750 if (No = -1) then
10760 buf_year = val(buf_year$)
10770 bufyear = buf_year
10780 sp_on 14,0
10790 goto Input_Born_Month:
10800 else
10810 goto Input_Seireki2:
10820 endif
10830 end select
10840 endif
10850 '=========================
10860 'bg2　キャンセルボタン
10870 '=========================
10880 if (bg2 = 2) then
10890 select case count2
10900 case 0:
10910 'Okボタンを押したときの処理
10920 if (No = -1) then
10930 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
10940 'count = 0
10950 locate 2,3
10960 color rgb(255,255,255)
10970 print "                                      "
10980 locate 2,3
10990 if ex_info$(1) <> "JP" then
11000 print "Input Born Year?(4 dedgit):";buf_year$
11010 else
11020 print "生まれた年代（西暦4桁):";buf_year$
11030 endif
11040 '=============================
11050 'case 0:前の画面に戻る 数秘術トップメニュー
11060 '=============================
11070 sp_on 14,0:goto Kabara_TopScreen:
11080 else
11090 'count=0
11100 '(buf_year=0) then
11110 buf_year = 0:buf_year$ = string$(4,"*")
11120 goto Input_Seireki2:
11130 'endif
11140 endif
11150 case 1:
11160 if (No = -1) then
11170 count2 = 0:count = 0
11180 buf$=right$(buf_year$,1)
11190 if (val(buf$) >= 1 and val(buf$) <= 9) then
11200 buf_year$ = "****":buf_year=0
11210 color rgb(255,255,255)
11220 locate 0,3:
11230 print "                                      "
11240 locate 2,3
11250 if ex_info$(1) <> "JP" then
11260 print "Input Born Year(4 dedgit):";buf_year$
11270 else
11280 print "生まれた年代（西暦4桁):" + buf_year$
11290 endif
11300 goto Input_Seireki2:
11310 endif
11320 else
11330 endif
11340 end select
11350 endif
11360 end
11370 'Input"生れた年代(4桁,〜2025年):",year
11380 'if year > 2025 then goto Input_Seireki:
11390 'if year = 123 then cls 3:cls 4:goto Main_Screen:
11400 '"4桁目"
11410 'bufyear4 = fix(year / 1000)
11420 '"3桁目"
11430 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
11440 '"2桁目"
11450 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
11460 '"1桁目"
11470 'bufyear1 = fix((year - ((bufyear4*
11480 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
11490 '生れた月を入力
11500 Input_Born_Month:
11510 cls 3:play "":count=0:count2=0
11520 'No=-1:Okのとき
11530 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
11540 for i=0 to 1
11550 buf_month(i)=0
11560 next i
11570 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11580 gload Gazo$ + "Screen2.png",0,0,0
11590 gload Gazo$ + "downscreen.png",0,0,800
11600 'Init"kb:2"
11610 if ex_info$(1) <> "JP" then
11620 else
11630 '音声ファイル再生 2023.06.07
11640 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
11650 endif
11660 font 48
11670 locate 0,1
11680 '文字色：黒　 color rgb(0,0,0)
11690 if ex_info$(1) <> "JP" then
11700 '英語パート
11710 '文字色:白
11720 color rgb(255,255,255)
11730 print "Input Born Month?(1~12):" + chr$(13)
11740 '文字色:白
11750 color rgb(255,255,255)
11760 locate 2,3
11770 '文字色:白
11780 print "Your Born Month?(1~12):";buf_Month$
11790 color rgb(255,255,255)
11800 else
11810 '日本語パート
11820 color rgb(255,255,255)
11830 print "生まれた月を入れて下さい" + chr$(13)
11840 '文字色:白
11850 color rgb(255,255,255)
11860 locate 2,3
11870 '文字色:白
11880 print "生まれた月(1月~12月):";buf_Month$
11890 color rgb(255,255,255)
11900 endif
11910 'locate 4,6:print ":7"
11920 'locate 9,6:print ":8"
11930 'locate 12,6:print ":9"
11940 'locate 4,6
11950 '文字色:赤
11960 'print ":7  :8  :9" + chr$(13)
11970 'color rgb(255,255,255)
11980 'locate 4,8
11990 'print ":4  :5  :6" + chr$(13)
12000 'color rgb(255,255,255)
12010 'locate 4,10
12020 'print ":1  :2  :3" + chr$(13)
12030 'locate 4,12
12040 'print "    :0"
12050 'locate 12,12
12060 'color rgb(255,0,0)
12070 'print ":Ok"
12080 sp_on 4,0: sp_on 5,0:sp_on 6,0
12090 sp_on 7,0:sp_on 8,0:sp_on 9,0
12100 sp_on 10,0:sp_on 11,0:sp_on 12,0
12110 sp_on 13,0:sp_on 14,1
12120 Input_Born_Month2:
12130 key$="":bg=0:y=0:y2=0:bg2=0
12140 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12150 key$ = inkey$
12160 bg = strig(1)
12170 y = stick(1)
12180 y2 = stick(0)
12190 bg2 = strig(0)
12200 pause 200
12210 wend
12220 '十字キー　ここから
12230 '上の矢印　または、十字キー上
12240 if ((y = -1) or (key$ = chr$(30))) then
12250 select case No
12260 'No=-1:okのとき:初期の状態
12270 '0kボタンから３に移動
12280 '上に行く 処理
12290 case -1:
12300 No=3:sp_on 12,1:sp_on 14,0:BEEP
12310 pause 200:goto Input_Born_Month2:
12320 '選択肢:3
12330 '3ボタンから 6に移動
12340 case 3:
12350 No=6:sp_on 12,0:sp_on 11,1:beep
12360 pause 200:goto Input_Born_Month2:
12370 '6ボタンから ９に移動
12380 case 6:
12390 No=9:sp_on 10,1:sp_on 11,0:beep
12400 pause 200:goto Input_Born_Month2:
12410 '6ボタンから ９に移動　ここまで
12420 '9で上を押して何もしない
12430 case 9:
12440 '何もしない
12450 No=9
12460 beep:pause 200:goto Input_Born_Month2:
12470 '9で上を押しても何もしない　ここまで
12480 '上　 0ボタンから2ボタン
12490 'sp_on 6,1:1
12500 'sp_on 8,1:5
12510 'sp_on 7,1:7
12520 case 0:
12530 No=2:sp_on 13,0:sp_on 9,1:beep
12540 pause 200:goto Input_Born_Month2:
12550 '上  0ボタンから2ボタン　ここまで
12560 '2から５になる 上
12570 case 2:
12580 No=5:sp_on 8,1:sp_on 9,0:beep
12590 pause 200:goto Input_Born_Month2:
12600 case 5:
12610 No=8:sp_on 7,1:sp_on 8,0:beep
12620 pause 200:goto Input_Born_Month2:
12630 case 8:
12640 beep:pause 200:goto Input_Born_Month2:
12650 case 1:
12660 No=4:sp_on 5,1:sp_on 6,0:beep
12670 pause 200:goto Input_Born_Month2:
12680 case 4:
12690 No=7:sp_on 4,1:sp_on 5,0:beep
12700 pause 200:goto Input_Born_Month2:
12710 case 7:
12720 beep:pause 200:goto Input_Born_Month2:
12730 end select
12740 endif
12750 '左３　ここまで
12760 '下の矢印
12770 '中央 2
12780 if ((y=1) or (key$ = chr$(31))) then
12790 select case No
12800 '9から６に下げる
12810 case 9:
12820 No=6:sp_on 11,1:sp_on 10,0:beep
12830 pause 200:goto Input_Born_Month2:
12840 '6から３に下げる
12850 case 6:
12860 No=3:sp_on 12,1:sp_on 11,0:beep
12870 pause 200:goto Input_Born_Month2:
12880 '3から０ｋに変える
12890 case 3:
12900 No=-1:sp_on 14,1:sp_on 12,0:beep
12910 pause 200:goto Input_Born_Month2:
12920 'Okから下のボタンを押しても何もしない
12930 case -1:
12940 beep:pause 200:goto Input_Born_Month2:
12950 case 8:
12960 No=5:sp_on 8,1:sp_on 7,0:beep
12970 pause 200:goto Input_Born_Month2:
12980 case 5:
12990 No=2:sp_on 9,1:sp_on 8,0:beep
13000 pause 200:goto Input_Born_Month2:
13010 case 2:
13020 No=0:sp_on 13,1:sp_on 9,0:beep
13030 pause 200:goto Input_Born_Month2:
13040 case 0:
13050 beep:pause 200:goto Input_Born_Month2:
13060 case 7:
13070 No=4:sp_on 5,1:sp_on 4,0:beep
13080 pause 200:goto Input_Born_Month2:
13090 case 4:
13100 No=1:sp_on 6,1:sp_on 5,0:beep
13110 pause 200:goto Input_Born_Month2:
13120 case 1:
13130 beep:pause 200:goto Input_Born_Month2:
13140 end select
13150 endif
13160 '左へボタン 十字キー　左　or 　カーソル左
13170 if ((y2 = -1) or (key$ = chr$(29))) then
13180 select case No
13190 'Ok ボタン  Okから　左　０に行く
13200 case -1:
13210 No=0:sp_on 13,1:sp_on 14,0
13220 beep:pause 200:goto Input_Born_Month2:
13230 '0 ボタン  左　何もしない
13240 case 0:
13250 beep:pause 200:goto Input_Born_Month2:
13260 case 3:
13270 No=2:sp_on 9,1:sp_on 12,0:beep
13280 pause 200:goto Input_Born_Month2:
13290 case 2:
13300 No=1:sp_on 6,1:sp_on 9,0:beep
13310 pause 200:goto Input_Born_Month2:
13320 case 1:
13330 beep:pause 200:goto Input_Born_Month2:
13340 case 6:
13350 No=5:sp_on 8,1:sp_on 11,0:beep
13360 pause 200:goto Input_Born_Month2:
13370 case 5:
13380 No=4:sp_on 5,1:sp_on 8,0:beep
13390 pause 200:goto Input_Born_Month2:
13400 case 4:
13410 beep:pause 200:goto Input_Born_Month2:
13420 case 9:
13430 No=8:sp_on 7,1:sp_on 10,0:beep
13440 pause 200:goto Input_Born_Month2:
13450 case 8:
13460 No=7:sp_on 4,1:sp_on 7,0:beep
13470 pause 200:goto Input_Born_Month2:
13480 case 7:
13490 beep:pause 200:goto Input_Born_Month2:
13500 end select
13510 endif
13520 '右  十字キー　右　or カーソル　右
13530 if ((y2 = 1) or (key$ = chr$(28))) then
13540 select case No
13550 '0ボタンからokボタン右に移動
13560 case 0:
13570 No=-1:sp_on 14,1:sp_on 13,0:beep
13580 pause 200:goto Input_Born_Month2:
13590 '0ボタンからokボタン 右に移動　ここまで
13600 'OKボタンで右を押して何もしない
13610 case -1:
13620 beep:pause 200:goto Input_Born_Month2:
13630 case 1:
13640 No=2:sp_on 9,1:sp_on 6,0:beep
13650 pause 200:goto Input_Born_Month2:
13660 case 2:
13670 No=3:sp_on 12,1:sp_on 9,0:beep
13680 pause 200:goto Input_Born_Month2:
13690 case 3:
13700 beep:pause 200:goto Input_Born_Month2:
13710 case 4:
13720 No=5:sp_on 8,1:sp_on 5,0:beep
13730 pause 200:goto Input_Born_Month2:
13740 case 5:
13750 No=6:sp_on 11,1:sp_on 8,0:beep
13760 pause 200:goto Input_Born_Month2:
13770 case 7:
13780 No=8:sp_on 7,1:sp_on 4,0:beep
13790 pause 200:goto Input_Born_Month2:
13800 case 8:
13810 No=9:sp_on 10,1:sp_on 7,0:beep
13820 pause 200:goto Input_Born_Month2:
13830 case 9:
13840 beep:pause 200:goto Input_Born_Month2:
13850 case 6:
13860 beep:pause 200:goto Input_Born_Month2:
13870 end select
13880 'Okから右ボタンを押して何もしない ここまで
13890 endif
13900 '十字キー　ここまで
13910 '右の丸ボタン　決定キー
13920 if ((bg=2) or (key$=chr$(13))) then
13930 select case count
13940 case 0:
13950 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
13960 if (buf_month = 1 or buf_month = 2) then
13970 locate 2,3
13980 color RGB(255,255,255)
13990 if ex_info$(1) <> "JP" then
14000 print "Input Born Month(1~12):";buf_Month$
14010 else
14020 print "生まれた月(1月~12月):";buf_Month2$
14030 endif
14040 else
14050 locate 2,3
14060 color Rgb(255,255,255)
14070 if ex_info$(1) <> "JP" then
14080 print "Input Born Month(1~12):";buf_Month$
14090 else
14100 print "生まれた月(1月~12月):";buf_Month$
14110 endif
14120 endif
14130 goto Input_Born_Month2:
14140 case 1:
14150 count = 2:c = No
14160 c = val(buf_Month$)
14170 if (No = -1) then
14180 'if No=1 or No=2 then
14190 'endif
14200 month = buf_month
14210 buf_month=val(buf_Month$)
14220 month=buf_month
14230 '生まれた日に飛ぶ
14240 goto Input_Born_Day:
14250 else
14260 buf_month = c*10 + No
14270 buf_Month$= str$(buf_month)
14280 locate 2,3
14290 color Rgb(255,255,255)
14300 if ex_info$(1) <> "JP" then
14310 print "Input Born Month(1~12):";buf_Month$
14320 else
14330 print "生まれた月(1月~12月):";buf_Month$
14340 endif
14350 goto Input_Born_Month2:
14360 endif
14370 case 2:
14380 count=3:count2=1
14390 'c= val(buf_Month$)
14400 'buf_month = c*10 + No
14410 'buf_Month$ = str$(buf_month)
14420 'locate 2,3
14430 'print "生まれた月(1月～12月):";buf_Month$
14440 'goto Input_Born_Month2:
14450 'case 3:
14460 'count=4
14470 'b=val(buf_month$)
14480 'buf_month=c*10+No
14490 'buf_Month$=str$(buf_month)
14500 'locate 2,3
14510 'print "生まれた月(1月～12月):";buf_Month$
14520 'buf_month=val(buf_Month$)
14530 'year=val(buf_year$)
14540 if (No=-1) then
14550 goto Input_Born_Day:
14560 else
14570 'goto Input_Born_Month2:
14580 endif
14590 'case 4:
14600 'bufyear=buf_year
14610 'if (No=-1) then
14620 'buf_month = val(buf_Month$)
14630 'month = buf_month
14640 'sp_on 14,0
14650 'goto Input_Born_Day:
14660 'else
14670 'goto Input_Born_Month2:
14680 'endif
14690 end select
14700 endif
14710 '左の丸ボタン　キャンセル
14720 if (bg2=2) then
14730 select case count2
14740 case 0:
14750 if (No = -1) then
14760 buf_month=0:buf_Month$="**"
14770 count2=0:count=0
14780 locate 0,3:print "                                   "
14790 if ex_info$(1) <> "JP" then
14800 print "Input Born Month?(1~12):";buf_Month$
14810 else
14820 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
14830 endif
14840 'if (buf_month > 1) then
14850 sp_on 14,0:goto Input_Born_Month2:
14860 'goto rewrite:
14870 else
14880 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
14890 buf_month=0:buf_Month$="**"
14900 locate 2,3
14910 color rgb(255,255,255)
14920 print "                                       "
14930 goto rewrite:
14940 if (No>2) then
14950 if ex_info$(1) <> "JP" then
14960 ui_msg "The value is out of range"
14970 else
14980 ui_msg "値が範囲外です。"
14990 endif
15000 goto rewrite:
15010 endif
15020 endif
15030 'endif
15040 rewrite:
15050 locate 2,3
15060 color rgb(255,255,255)
15070 print "                                      "
15080 locate 2,3
15090 if ex_info$(1) <> "JP" then
15100 print "Input Born Month?(1~12):";buf_Month$
15110 else
15120 print "生まれた月(1月~12月):";buf_Month$
15130 endif
15140 goto Input_Born_Month2:
15150 endif
15160 case 1:
15170 buf_Month$="**":buf_month=0
15180 if No=-1 then
15190 count2=2:count=0
15200 locate 0,3
15210 print "                                      "
15220 locate 2,3:
15230 if ex_info$(1) <> "JP" then
15240 print "Input Born Month?(1~12):";buf_Month$
15250 else
15260 print "生まれた月(1月~12月):" + buf_Month$
15270 endif
15280 goto Input_Born_Month2:
15290 endif
15300 case 2:
15310 sp_on 14,0:goto Input_Seireki:
15320 end select
15330 endif
15340 'endif
15350 end
15360 'end
15370 '生れた日を入力
15380 Input_Born_Day:
15390 '生まれた日入力
15400 cls 3:play ""
15410 'No=-1:Okのとき
15420 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
15430 for i=0 to 1
15440 buf_day(i)=0
15450 next i
15460 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
15470 gload Gazo$ + "Screen2.png",0,0,0
15480 gload Gazo$ + "downscreen.png",0,0,800
15490 'Init"kb:2"
15500 if ex_info$(1) <> "JP" then
15510 '英語音声パート
15520 else
15530 '日本語音声パート
15540 '音声ファイル再生 2023.06.07
15550 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
15560 endif
15570 font 48
15580 if ex_info$(1) <> "JP" then
15590 locate 0,1
15600 '文字色：黒　 color rgb(0,0,0)
15610 color rgb(255,255,255)
15620 print "Input Born day?" + chr$(13)
15630 color rgb(255,255,255)
15640 locate 2,3
15650 print "Born Day(1~31):";buf_Day$
15660 else
15670 locate 0,1
15680 '文字色：黒　 color rgb(0,0,0)
15690 color rgb(255,255,255)
15700 print "生まれた日を入れて下さい" + chr$(13)
15710 color rgb(255,255,255)
15720 locate 2,3
15730 print "生まれた日(1日~31日):";buf_Day$
15740 endif
15750 'color rgb(255,255,255)
15760 'locate 4,6:print ":7"
15770 'locate 9,6:print ":8"
15780 'locate 12,6:print ":9"
15790 'locate 4,6
15800 'print ":7  :8  :9" + chr$(13)
15810 '=======================
15820 'テンキー　色　白　決定ボタン　青
15830 '=======================
15840 'color rgb(255,255,255)
15850 'locate 4,8
15860 'print ":4  :5  :6" + chr$(13)
15870 'color rgb(255,255,255)
15880 'locate 4,10
15890 'print ":1  :2  :3" + chr$(13)
15900 'locate 4,12
15910 'print "    :0"
15920 'locate 12,12
15930 'color rgb(255,0,0)
15940 'print ":Ok"
15950 sp_on 4,0: sp_on 5,0:sp_on 6,0
15960 sp_on 7,0:sp_on 8,0:sp_on 9,0
15970 sp_on 10,0:sp_on 11,0:sp_on 12,0
15980 sp_on 13,0:sp_on 14,1
15990 Input_Born_Day2:
16000 key$="":bg=0:y=0:y2=0:bg2=0
16010 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
16020 key$ = inkey$
16030 bg = strig(1)
16040 y = stick(1)
16050 y2 = stick(0)
16060 bg2 = strig(0)
16070 pause 200
16080 wend
16090 '十字キー　ここから
16100 '上の矢印　または、十字キー上
16110 if ((y = -1) or (key$ = chr$(30))) then
16120 select case No
16130 'No=-1:okのとき:初期の状態
16140 '0kボタンから３に移動
16150 '上に行く 処理
16160 case -1:
16170 No=3:sp_on 12,1:sp_on 14,0:beep
16180 pause 200:goto Input_Born_Day2:
16190 '選択肢:3
16200 '3ボタンから 6に移動
16210 case 3:
16220 No=6:sp_on 12,0:sp_on 11,1:beep
16230 pause 200:goto Input_Born_Day2:
16240 '6ボタンから ９に移動
16250 case 6:
16260 No=9:sp_on 10,1:sp_on 11,0:beep
16270 pause 200:goto Input_Born_Day2:
16280 '6ボタンから ９に移動　ここまで
16290 '9で上を押して何もしない
16300 case 9:
16310 '何もしない
16320 No=9
16330 beep:pause 200:goto Input_Born_Day2:
16340 '9で上を押しても何もしない　ここまで
16350 '上　 0ボタンから2ボタン
16360 'sp_on 6,1:1
16370 'sp_on 8,1:5
16380 'sp_on 7,1:7
16390 case 0:
16400 No=2:sp_on 13,0:sp_on 9,1:beep
16410 pause 200:goto Input_Born_Day2:
16420 '上  0ボタンから2ボタン　ここまで
16430 '2から５になる 上
16440 case 2:
16450 No=5:sp_on 8,1:sp_on 9,0:beep
16460 pause 200:goto Input_Born_Day2:
16470 case 5:
16480 No=8:sp_on 7,1:sp_on 8,0:beep
16490 pause 200:goto Input_Born_Day2:
16500 case 8:
16510 beep:pause 200:goto Input_Born_Day2:
16520 case 1:
16530 No=4:sp_on 5,1:sp_on 6,0:beep
16540 pause 200:goto Input_Born_Day2:
16550 case 4:
16560 No=7:sp_on 4,1:sp_on 5,0:beep
16570 pause 200:goto Input_Born_Day2:
16580 case 7:
16590 beep:pause 200:goto Input_Born_Day2:
16600 end select
16610 endif
16620 '左３　ここまで
16630 '下の矢印
16640 '中央 2
16650 if ((y=1) or (key$ = chr$(31))) then
16660 select case No
16670 '9から６に下げる
16680 case 9:
16690 No=6:sp_on 11,1:sp_on 10,0:beep
16700 pause 200:goto Input_Born_Day2:
16710 '6から３に下げる
16720 case 6:
16730 No=3:sp_on 12,1:sp_on 11,0:beep
16740 pause 200:goto Input_Born_Day2:
16750 '3から０ｋに変える
16760 case 3:
16770 No=-1:sp_on 14,1:sp_on 12,0:beep
16780 pause 200:goto Input_Born_Day2:
16790 'Okから下のボタンを押しても何もしない
16800 case -1:
16810 beep:pause 200:goto Input_Born_Day2:
16820 case 8:
16830 No=5:sp_on 8,1:sp_on 7,0:beep
16840 pause 200:goto Input_Born_Day2:
16850 case 5:
16860 No=2:sp_on 9,1:sp_on 8,0:beep
16870 pause 200:goto Input_Born_Day2:
16880 case 2:
16890 No=0:sp_on 13,1:sp_on 9,0:beep
16900 pause 200:goto Input_Born_Day2:
16910 case 0:
16920 beep:pause 200:goto Input_Born_Day2:
16930 case 7:
16940 No=4:sp_on 5,1:sp_on 4,0:beep
16950 pause 200:goto Input_Born_Day2:
16960 case 4:
16970 No=1:sp_on 6,1:sp_on 5,0:beep
16980 pause 200:goto Input_Born_Day2:
16990 case 1:
17000 beep:pause 200:goto Input_Born_Day2:
17010 end select
17020 endif
17030 '左へボタン 十字キー　左　or 　カーソル左
17040 if ((y2 = -1) or (key$ = chr$(29))) then
17050 select case No
17060 'Ok ボタン  Okから　左　０に行く
17070 case -1:
17080 No=0:sp_on 13,1:sp_on 14,0:beep
17090 pause 200:goto Input_Born_Day2:
17100 '0 ボタン  左　何もしない
17110 case 0:
17120 beep:pause 200:goto Input_Born_Day2:
17130 case 3:
17140 No=2:sp_on 9,1:sp_on 12,0:beep
17150 pause 200:goto Input_Born_Day2:
17160 case 2:
17170 No=1:sp_on 6,1:sp_on 9,0:beep
17180 pause 200:goto Input_Born_Day2:
17190 case 1:
17200 pause 200:goto Input_Born_Day2:
17210 case 6:
17220 No=5:sp_on 8,1:sp_on 11,0:beep
17230 pause 200:goto Input_Born_Day2:
17240 case 5:
17250 No=4:sp_on 5,1:sp_on 8,0:beep
17260 pause 200:goto Input_Born_Day2:
17270 case 4:
17280 beep:pause 200:goto Input_Born_Day2:
17290 case 9:
17300 No=8:sp_on 7,1:sp_on 10,0:beep
17310 pause 200:goto Input_Born_Day2:
17320 case 8:
17330 No=7:sp_on 4,1:sp_on 7,0:beep
17340 pause 200:goto Input_Born_Day2:
17350 case 7:
17360 beep:pause 200:goto Input_Born_Day2:
17370 end select
17380 endif
17390 '右  十字キー　右　or カーソル　右
17400 if ((y2 = 1) or (key$ = chr$(28))) then
17410 select case No
17420 '0ボタンからokボタン右に移動
17430 case 0:
17440 No=-1:sp_on 14,1:sp_on 13,0:beep
17450 pause 200:goto Input_Born_Day2:
17460 '0ボタンからokボタン 右に移動　ここまで
17470 'OKボタンで右を押して何もしない
17480 case -1:
17490 beep:pause 200:goto Input_Born_Day2:
17500 case 1:
17510 No=2:sp_on 9,1:sp_on 6,0:beep
17520 pause 200:goto Input_Born_Day2:
17530 case 2:
17540 No=3:sp_on 12,1:sp_on 9,0:beep
17550 pause 200:goto Input_Born_Day2:
17560 case 3:
17570 beep:pause 200:goto Input_Born_Day2:
17580 case 4:
17590 No=5:sp_on 8,1:sp_on 5,0:beep
17600 pause 200:goto Input_Born_Day2:
17610 case 5:
17620 No=6:sp_on 11,1:sp_on 8,0:beep
17630 pause 200:goto Input_Born_Day2:
17640 case 7:
17650 No=8:sp_on 7,1:sp_on 4,0:beep
17660 pause 200:goto Input_Born_Day2:
17670 case 8:
17680 No=9:sp_on 10,1:sp_on 7,0:beep
17690 pause 200:goto Input_Born_Day2:
17700 case 9:
17710 beep:pause 200:goto Input_Born_Day2:
17720 case 6:
17730 beep:pause 200:goto Input_Born_Day2:
17740 end select
17750 'Okから右ボタンを押して何もしない ここまで
17760 endif
17770 '十字キー　ここまで
17780 '右の丸ボタンを押したとき
17790 if ((bg = 2) or (key$ = chr$(13))) then
17800 'count :決定ボタンを押した回数
17810 select case (count mod 3)
17820 '1桁目入力
17830 case 0:
17840 count = 1:
17850 if (No = -1) then
17860 '1桁目　OKでは何もしない
17870 'goto check:
17880 else
17890 'ok以外のボタンを押したとき
17900 buf_day = No:buf_Day$ = str$(No)
17910 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
17920 locate 2,3
17930 color RGB(255,255,255)
17940 if ex_info$(1) <> "JP" then
17950 print "Input Born Day(1~31):";buf_Day2$
17960 else
17970 print "生まれた日(1日~31日):";buf_Day2$
17980 endif
17990 endif
18000 check:
18010 if (No >= 1 and No <= 9) then
18020 sp_on 14,0
18030 goto Input_Born_Day2:
18040 else
18050 sp_on 14,0
18060 goto complate:
18070 endif
18080 case 1:
18090 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
18100 count = 2:
18110 'locate 2,3
18120 'color RGB(255,255,255)
18130 'print "生まれた日(1日~31日):";buf_Day$
18140 'Okボタンを押したときの処理
18150 '入力値　10未満のとき
18160 'c = buf_day
18170 if (No = -1) then
18180 'c=buf_day
18190 ' buf_day = c
18200 'buf_Day$ = str$(buf_day)
18210 '10以下のとき
18220 if (buf_day < 10) then
18230 sp_on 14,0
18240 goto complate:
18250 endif
18260 else
18270 'c = No
18280 buf_day = c * 10 + No
18290 'buf_day = c
18300 buf_Day$ =str$(buf_day)
18310 locate 2,3
18320 color Rgb(255,255,255)
18330 if ex_info$(1) <> "JP" then
18340 print "Input Born Day(1~31):";buf_Day$
18350 else
18360 print "生まれた日(1日~31日):";buf_Day$
18370 endif
18380 goto Input_Born_Day2:
18390 endif
18400 '生まれた日　2桁目の数字　or 1桁の数字 + ok
18410 case 2:
18420 count=0
18430 'c=val(buf_Day$)
18440 'buf_day=c*10+No
18450 'buf_Day$=str$(buf_day)
18460 'day=buf_day
18470 'locate 2,3
18480 'print "生まれた日(1日〜31日):";buf_Day$
18490 'No=-1:ok ボタンを押したとき
18500 if (No = -1) then
18510 if ((buf_day > 0) and (buf_day < 32)) then
18520 sp_on 14,0
18530 goto complate:
18540 else
18550 goto Input_Born_Day2:
18560 endif
18570 'Okボタン以外を押したとき
18580 else
18590 c=val(buf_Day$)
18600 buf_day = c * 10 + No
18610 buf_Day$ = str$(buf_day)
18620 locate 2,3
18630 if ex_info$(1) <> "JP" then
18640 print "Input Born Day?(1~31):";buf_Day$
18650 else
18660 print "生まれた日(1日~31日):";buf_Day$
18670 endif
18680 'goto Input_Born_Day2:
18690 endif
18700 case 3:
18710 count = 4
18720 c=val(buf_day$)
18730 buf_day = c * 10 + No
18740 buf_day$ = str$(buf_day)
18750 locate 2,3
18760 if ex_info$(1) <> "JP" then
18770 print "Input Born Day?(1~31):";buf_Day$
18780 else
18790 print "生まれた日を入れてください(1日~31日):";buf_Day$
18800 endif
18810 year = val(buf_year$)
18820 if (No = -1) then
18830 'goto Input_Born_Day:
18840 sp_on 14,0:No=0
18850 goto complate:
18860 else
18870 goto Input_Born_Month2:
18880 endif
18890 'case 4:
18900 'bufyear=buf_year
18910 'if (No=-1) then
18920 'buf_day = val(buf_day$)
18930 'bufday = buf_day
18940 'sp_on 14,0
18950 'goto complate:
18960 'else
18970 'goto Input_Born_Day2:
18980 'endif
18990 end select
19000 endif
19010 if (bg2=2) then
19020 select case count2
19030 case 0:
19040 if (No=-1) then
19050 'buf_day=0:buf_Day$="**"
19060 if (buf_day>=1 and buf_day<=31) then
19070 count=0:No=0
19080 buf_day=0:buf_Day$="**"
19090 'goto rewrite_day:
19100 else
19110 buf_day=0:buf_Day$="**"
19120 ui_msg"値が範囲外です"
19130 endif
19140 goto rewrite_day:
19150 else
19160 goto rewrite_day:
19170 endif
19180 rewrite_day:
19190 locate 2,3
19200 color rgb(255,255,255)
19210 print "                                      "
19220 locate 2,3
19230 if ex_info$(1)<>"JP" then
19240 print "Born Day(1~31):";buf_Day$
19250 else
19260 print "生まれた日(1日~31日):";buf_Day$
19270 endif
19280 goto Input_Born_Day2:
19290 end select
19300 endif
19310 '--------------------------Input_Born_Day:-------------------------------------------
19320 complate:
19330 suhiNo = buf_year + buf_month + buf_day
19340 'if (suhiNo < 1000) then
19350 a1 = fix(suhiNo / 1000)
19360 a2 = fix(suhiNo/100) - (a1 * 10)
19370 a3 = fix(suhiNo/10)-(a1*100+a2*10)
19380 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
19390 'endif
19400 bufsuhiNo = a1 + a2 + a3 + a4
19410 recomp:
19420 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
19430 'bufsuhiNo=a6
19440 goto Kabara_Result_Screen:
19450 else
19460 a5 = fix(bufsuhiNo / 10)
19470 a6 = bufsuhiNo - a5 * 10
19480 bufsuhiNo = a6 + a5
19490 if (bufsuhiNo = 10) then
19500 bufsuhiNo=1
19510 endif
19520 goto Kabara_Result_Screen:
19530 endif
19540 Kabara_Result_Screen:
19550 cls 3:
19560 '****************************************************************************************************
19570 '1.WUXGA(1920x1200)の時
19580 '****************************************************************************************************
19590 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
19600 gload Gazo$ + "downscreen.png",0,0,800
19610 '****************************************************************************************************
19620 '1.WUXGA(1920x1200)の時
19630 '****************************************************************************************************
19640 init "kb:4"
19650 '
19660 play ""
19670 select case (bufsuhiNo)
19680 case 1:
19690 '****************************************************************************************************
19700 '1.数秘ナンバー 1
19710 '****************************************************************************************************
19720 play Voice$ + "Result_Kabara_1_20230607.mp3"
19730 '****************************************************************************************************
19740 '1.数秘ナンバー 1
19750 '****************************************************************************************************
19760 case 2:
19770 '****************************************************************************************************
19780 '1.数秘ナンバー 2
19790 '****************************************************************************************************
19800 play Voice$ + "Result_Kabara_2_20231112.mp3"
19810 '****************************************************************************************************
19820 '1.数秘ナンバー 2
19830 '****************************************************************************************************
19840 case 3:
19850 '****************************************************************************************************
19860 '1.数秘ナンバー 3
19870 '****************************************************************************************************
19880 play Voice$ + "Result_Kabara_3_20230607.mp3"
19890 '****************************************************************************************************
19900 '1.数秘ナンバー 3
19910 '****************************************************************************************************
19920 case 4:
19930 '****************************************************************************************************
19940 '1.数秘ナンバー 4
19950 '****************************************************************************************************
19960 play Voice$ + "Result_Kabara_4_20230607.mp3"
19970 '****************************************************************************************************
19980 '1.数秘ナンバー 4
19990 '****************************************************************************************************
20000 case 5:
20010 '****************************************************************************************************
20020 '1.数秘ナンバー 5
20030 '****************************************************************************************************
20040 play Voice$ + "Result_Kabara_5_20231112.mp3"
20050 '****************************************************************************************************
20060 '1.数秘ナンバー 5
20070 '****************************************************************************************************
20080 case 6:
20090 '****************************************************************************************************
20100 '1.数秘ナンバー 6
20110 '****************************************************************************************************
20120 play Voice$ + "Result_Kabara_6_20230607.mp3"
20130 '****************************************************************************************************
20140 '1.数秘ナンバー 6
20150 '****************************************************************************************************
20160 case 7:
20170 '****************************************************************************************************
20180 '1.数秘ナンバー 7
20190 '****************************************************************************************************
20200 play Voice$ + "Result_Kabara_7_20230607.mp3"
20210 '****************************************************************************************************
20220 '1.数秘ナンバー 7
20230 '****************************************************************************************************
20240 case 8:
20250 '****************************************************************************************************
20260 '1.数秘ナンバー 8
20270 '****************************************************************************************************
20280 play Voice$ + "Result_Kabara_8_20230607.mp3"
20290 '****************************************************************************************************
20300 '1.数秘ナンバー 8
20310 '****************************************************************************************************
20320 case 9:
20330 '****************************************************************************************************
20340 '1.数秘ナンバー 9
20350 '****************************************************************************************************
20360 play Voice$ + "Result_Kabara_9_20230607.mp3"
20370 '****************************************************************************************************
20380 '1.数秘ナンバー 9
20390 '****************************************************************************************************
20400 case 11:
20410 '****************************************************************************************************
20420 '1.数秘ナンバー 11
20430 '****************************************************************************************************
20440 play Voice$ + "Result_Kabara_11_20230607.mp3"
20450 '****************************************************************************************************
20460 '1.数秘ナンバー 11
20470 '****************************************************************************************************
20480 case 22:
20490 '****************************************************************************************************
20500 '1.数秘ナンバー 22
20510 '****************************************************************************************************
20520 play Voice$ + "Result_Kabara_22_20230607.mp3"
20530 '****************************************************************************************************
20540 '1.数秘ナンバー 22
20550 '****************************************************************************************************
20560 case 33:
20570 '****************************************************************************************************
20580 '1.数秘ナンバー 33
20590 '****************************************************************************************************
20600 play Voice$ + "Result_Kabara_33_20230607.mp3"
20610 '****************************************************************************************************
20620 '1.数秘ナンバー 33
20630 '****************************************************************************************************
20640 end select
20650 '****************************************************************************************************
20660 '
20670 '****************************************************************************************************
20680 font 48
20690 '****************************************************************************************************
20700 '
20710 '****************************************************************************************************
20720 key$ = "":bg = 0:bg2=0
20730 'COLOR rgb(255,255,255)
20740 'print "●診断結果"+chr$(13)
20750 locate 0,2
20760 if ex_info$(1)<>"JP" then
20770 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
20780 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
20790 locate 0,15:
20800 color rgb(255,255,255)
20810 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
20820 else
20830 '****************************************************************************************************
20840 'WUXG(1920x1200)の時ここから
20850 '****************************************************************************************************
20860 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
20870 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
20880 locate 0,15:
20890 color rgb(255,255,255)
20900 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
20910 endif
20920 '****************************************************************************************************
20930 'WUXG(1920x1200)の時ここまで
20940 '****************************************************************************************************
20950 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
20960 key$ = inkey$
20970 bg = strig(1)
20980 bg2 = strig(0)
20990 pause 200
21000 wend
21010 'Enter or JoyPad right
21020 if ((key$ = chr$(13)) or (bg = 2)) then
21030 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
21040 endif
21050 if ((bg2=2)) then
21060 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
21070 endif
21080 'suhiNo1 = fix(bufsuhiNo / 10)
21090 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
21100 'bufsuhiNo = suhiNo1 + suhiNo2
21110 'goto recomp:
21120 'endif
21130 'print chr$(13)
21140 'color rgb(255,0,0)
21150 'print"トップ:エンターキー,S or s:保存"+chr$(13)
21160 'key$ = input$(1)
21170 'if key$ = chr$(13) then goto Main_Screen:
21180 '"Menu2 占いのルール"
21190 Suhi_Rule:
21200 '数秘術占いルールの表示
21210 cls 3:play "":init"kb:4"
21220 if ((size(0)<=1280) and (size(1)<=800)) then
21230 '****************************************************************************************************
21240 'WUXG(1920x1200)の時ここから
21250 '****************************************************************************************************
21260 gload Gazo$  + Gazo_WXGA$ +  "KabaraRuleScreen_864x640_20240219.png",0,0,0
21270 '****************************************************************************************************
21280 'WUXG(1920x1200)の時ここまで
21290 '****************************************************************************************************
21300 else
21310 '****************************************************************************************************
21320 'WUXG(1920x1200)の時ここから
21330 '****************************************************************************************************
21340 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
21350 gload Gazo$ + "downscreen.png",0,0,800
21360 '****************************************************************************************************
21370 'WUXG(1920x1200)の時ここまで
21380 '****************************************************************************************************
21390 endif
21400 'cls 3:
21410 'line (0,0) - (1500,60),rgb(0,0,255),bf
21420 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
21430 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
21440 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
21450 if ex_info$(1)<>"JP" then
21460 locate 0,2:Font 48
21470 print chr$(13) + chr$(13)
21480 color rgb(0,0,0)
21490 print "We will convert your birth date to a single number.";chr$(13)
21500 print "Number range: 1~9, 11, 22, 33";chr$(13)
21510 print "Example: If your birth date is 22nd November 1973";chr$(13)
21520 print "1+9+7+3+11+22=53 ";chr$(13)
21530 print "→ 5 + 3 = 8" + chr$(13)
21540 print "So, your numerology number is 8.";chr$(13)
21550 locate 0,15
21560 color rgb(255,255,255)
21570 print "Please press the right on the joystick"
21580 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
21590 else
21600 Font Font
21610 if ((size(0)<=1280) and (size(1)<=800)) then
21620 '************************************************************************************************
21630 '1.WXGAの時1200x800の時
21640 '************************************************************************************************
21650 color rgb(0,0,0)
21660 locate 1,5:print "誕生日を単数変換します";chr$(13)
21670 locate 1,7:print "数字の範囲:1~９,11,22,33";chr$(13)
21680 locate 1,9:print "例:1973年11月22日の場合";chr$(13)
21690 locate 1,11:print "1+9+7+3+11+22=53 ";chr$(13)
21700 locate 1,13:print "→ 5 + 3 = 8" + chr$(13)
21710 locate 1,15:print "故に8が数秘ナンバーになります";chr$(13)
21720 locate 0,19:color rgb(255,255,255)
21730 print "ジョイパッドの右を押してください"
21740 '************************************************************************************************
21750 '1.WXGAの時1200x800の時
21760 '************************************************************************************************
21770 else
21780 '****************************************************************************************************
21790 '2.WUXG(1920x1200)の時ここから
21800 '****************************************************************************************************
21810 print chr$(13) + chr$(13)
21820 color rgb(0,0,0)
21830 print "誕生日を単数変換します";chr$(13)
21840 print "数字の範囲:1~９,11,22,33";chr$(13)
21850 print "例:1973年11月22日の場合";chr$(13)
21860 print "1+9+7+3+11+22=53 ";chr$(13)
21870 print "→ 5 + 3 = 8" + chr$(13)
21880 print "故に8が数秘ナンバーになります";chr$(13)
21890 locate 0,15
21900 color rgb(255,255,255)
21910 print "ジョイパッドの右を押してください"
21920 '****************************************************************************************************
21930 '2.WUXG(1920x1200)の時ここまで
21940 '****************************************************************************************************
21950 endif
21960 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
21970 endif
21980 '"key$ = input$(1)"
21990 '"if key$ = chr$(13) then goto Main_Screen:"
22000 suhi_rule_selection:
22010 bg = 0:key$ = "":bg2=0
22020 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
22030 bg = strig(1)
22040 key$ = inkey$
22050 bg2=strig(0)
22060 pause 200
22070 wend
22080 if ((bg = 2) or (key$ = chr$(13))) then
22090 pause 200:cls 4:goto Main_Screen:
22100 endif
22110 if (bg2=2) then
22120 play "":pause 200
22130 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
22140 goto suhi_rule_selection:
22150 endif
22160 '2.設定 ここから
22170 '2-1.トップ画面に戻る
22180 Setting:
22190 cls 3:init"kb:4":font 48:No=0
22200 play ""
22210 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
22220 '****************************************************************************************************
22230 'W(1280x 800)の時ここから
22240 '****************************************************************************************************
22250 if (size(0)<=1280 and size(1)<=800) then
22260 gload Gazo$ + Gazo_WXGA$ + "Screen1_Setting_Top_907x680_20240221.png",0,0,0
22270 '****************************************************************************************************
22280 'W(1280 x800)の時ここまで
22290 '****************************************************************************************************
22300 else
22310 '****************************************************************************************************
22320 'WUXG(1920x1200)の時ここから
22330 '****************************************************************************************************
22340 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
22350 gload Gazo$ + "downscreen.png",0,0,800
22360 '****************************************************************************************************
22370 'WUXG(1920x1200)の時ここまで
22380 '****************************************************************************************************
22390 endif
22400 if (size(0)<=1280 and size(1)<=800) then
22410 font FONT:color rgb(255,255,255):cls
22420 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:
22430 '****************************************************************************************************
22440 '(1280x800)の時 ここから
22450 '****************************************************************************************************
22460 locate 1,5:
22470 print "番号を選んでください"
22480 locate 1,7:
22490 print " :1.トップ画面に戻る"
22500 locate 1,10:
22510 print " :2.バーズアイグリッドデーターリスト"
22520 locate 1,13:
22530 print " :3.未実装" + chr$(13)
22540 locate 1,16:
22550 print " :4.未実装" + chr$(13)
22560 color rgb(0,0,0):locate 1,19:
22570 print "1.トップ画面に戻るを選択"
22580 '****************************************************************************************************
22590 '(1280x800)の時 ここまで
22600 '****************************************************************************************************
22610 else
22620 font FONT
22630 print chr$(13) + chr$(13) + chr$(13)
22640 color rgb(255,255,255):sp_on 0,1:
22650 '****************************************************************************************************
22660 'WUXG(1920x1200)の時ここから
22670 '****************************************************************************************************
22680 print "番号を選んでください" + chr$(13)
22690 print " :1.トップ画面に戻る"+ chr$(13)
22700 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
22710 print " :3.未実装" + chr$(13)
22720 print " :4.未実装" + chr$(13)
22730 color rgb(0,0,0)
22740 locate 1,15:print "1.トップ画面に戻るを選択"
22750 '****************************************************************************************************
22760 'WUXG(1920x1200)の時ここまで
22770 '****************************************************************************************************
22780 endif
22790 Setting_Selection:
22800 y=0:key$="":bg=0:bg2=0
22810 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
22820 y=stick(1)
22830 key$ = inkey$
22840 bg=strig(1)
22850 bg2 = strig(0)
22860 pause 200
22870 wend
22880 if ((bg = 2) or (key$ = chr$(13))) then
22890 select case No
22900 case 0:
22910 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
22920 case 1:
22930 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
22940 end select
22950 endif
22960 if (bg2 = 2) then
22970 play "":pause 200
22980 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
22990 goto Setting_Selection:
23000 endif
23010 '****************************************************************************************************
23020 '(1280x800)の時 ここから
23030 '****************************************************************************************************
23040 if (size(0) <= 1280 and size(1) <= 800) then
23050 if ((y=1) or (y=-1)) then
23060 select case No
23070 case 0:
23080 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                    ":locate 1,19:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
23090 case else:
23100 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.トップ画面に戻るを選択":goto Setting_Selection:
23110 end select
23120 '****************************************************************************************************
23130 '(1280x800)の時 ここまで
23140 '****************************************************************************************************
23150 endif
23160 else
23170 '****************************************************************************************************
23180 '(1920x1280)の時 ここから
23190 '****************************************************************************************************
23200 if ((y=1) or (y=-1)) then
23210 select case No
23220 case 0:
23230 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
23240 case else:
23250 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
23260 end select
23270 endif
23280 '****************************************************************************************************
23290 '(1920x1200)の時 ここまで
23300 '****************************************************************************************************
23310 endif
23320 '2.設定 ここまで
23330 '3.Help
23340 '3-1.ルールの表示
23350 '3-2.バージョン
23360 '3-3.トップに戻る
23370 Help:
23380 cls 3:Font 48:No=0
23390 play ""
23400 '****************************************************************************************************
23410 ''WXGAの場合　ここから (1280 x 800)
23420 '****************************************************************************************************
23430 if ((size(0)<=1280) and (size(1)<=800)) then
23440 gload Gazo$ + Gazo_WXGA$ + "TopScreen_Help_907x680_20240216.png",0,0,0
23450 '****************************************************************************************************
23460 ''WXGAの場合　ここまで (1280 x 800)
23470 '****************************************************************************************************
23480 else
23490 '****************************************************************************************************
23500 'WUXG(1920x1200)の時ここから
23510 '****************************************************************************************************
23520 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
23530 gload Gazo$ + "downscreen.png",0,0,800
23540 endif
23550 '****************************************************************************************************
23560 'WUXG(1920x1200)の時ここまで
23570 '****************************************************************************************************
23580 if ex_info$(1)<>"JP" then
23590 font FONT
23600 color rgb(255,255,255)
23610 print chr$(13)+chr$(13)+chr$(13)
23620 print "Please select a number"+chr$(13)
23630 print " :1. Rules for Explain" + chr$(13)
23640 print " :2. Display Version" + chr$(13)
23650 print " :3. References" + chr$(13)
23660 print " :4. Return to Top Screen" + chr$(13)
23670 else
23680 if ((size(0)<=1280) and (size(1)<=800)) then
23690 color rgb(255,255,255)
23700 font FONT
23710 locate 1,5
23720 print "番号を選んでください"
23730 locate 1,7
23740 print " :1.ルールの説明"
23750 locate 1,10
23760 print " :2.バージョンの表示"
23770 locate 1,13
23780 print " :3.参考文献"
23790 locate 1,16
23800 print " :4.トップ画面に戻る"
23810 else
23820 '****************************************************************************************************
23830 'WUXG(1920x1200)の時ここから
23840 '****************************************************************************************************
23850 font FONT
23860 color rgb(255,255,255)
23870 print chr$(13)+chr$(13)+chr$(13)
23880 print "番号を選んでください"+chr$(13)
23890 print " :1.ルールの説明" + chr$(13)
23900 print " :2.バージョンの表示" + chr$(13)
23910 print " :3.参考文献" + chr$(13)
23920 print " :4.トップ画面に戻る" + chr$(13)
23930 endif
23940 endif
23950 '****************************************************************************************************
23960 'WUXG(1920x1200)の時ここまで
23970 '****************************************************************************************************
23980 '************************************************************************************************
23990 '1.WXGAの場合　ここから (1280 x 800)
24000 '************************************************************************************************
24010 color rgb(0,0,0)
24020 if ((size(0) <= 1280) and (size(1) <= 800)) then
24030 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
24040 locate 1,19
24050 print "                                  "
24060 if ex_info$(1) <> "JP" then
24070 print "1. Select Rules for Explain"
24080 else
24090 if count=0 then
24100 locate 1,19
24110 print "1.ルールの説明を選択"
24120 endif
24130 endif
24140 '************************************************************************************************
24150 '1.WXGAの場合　ここまで (1280 x 800)
24160 '************************************************************************************************
24170 else
24180 '*************************************************************************************************
24190 '2.WUXG(1920x1200)の時ここから
24200 '**************************************************************************************************
24210 'color rgb(0,0,0)
24220 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
24230 locate 1,15
24240 print "                                  "
24250 if ex_info$(1) <> "JP" then
24260 print "1. Select Rules for Explain"
24270 else
24280 locate 1,15
24290 print "1.ルールの説明を選択"
24300 endif
24310 '****************************************************************************************************
24320 '2.WUXG(1920x1200)の時ここまで
24330 '****************************************************************************************************
24340 endif
24350 init"kb:4"
24360 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
24370 Help_Select:
24380 bg=0:key$="":y=0:bg2=0
24390 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
24400 y = stick(1)
24410 key$ = inkey$
24420 bg = strig(1)
24430 bg2 = strig(0)
24440 pause 200
24450 wend
24460 if ex_info$(1)<>"JP" then
24470 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
24480 if ((y = 1) or (key$ = chr$(31))) then
24490 select case No
24500 case 0:
24510 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
24520 case 1:
24530 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
24540 case 2:
24550 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
24560 case 3:
24570 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
24580 end select
24590 endif
24600 '************************************************************************************************
24610 '1.WXGAの場合　ここから (1280 x 800)
24620 '************************************************************************************************
24630 if ((y = -1) or (key$ = chr$(30))) then
24640 select case No
24650 case 0:
24660 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "4.Return to Top Screen":goto Help_Select:
24670 case 1:
24680 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "1.Select Rules for Explain":goto Help_Select:
24690 case 2:
24700 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,19:print "                                        ":locate 1,19:print "2.Display Version":goto Help_Select:
24710 case 3:
24720 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,19:print "                                              ":locate 1,19:print "3.References":goto Help_Select:
24730 end select
24740 '************************************************************************************************
24750 '1.WXGAの場合　ここまで (1280 x 800)
24760 '************************************************************************************************
24770 else
24780 '****************************************************************************************************
24790 'WUXG(1920x1200)の時ここから
24800 '****************************************************************************************************
24810 if ((y = -1) or (key$ = chr$(30))) then
24820 select case No
24830 case 0:
24840 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
24850 case 1:
24860 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
24870 case 2:
24880 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
24890 case 3:
24900 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
24910 end select
24920 endif
24930 '****************************************************************************************************
24940 'WUXG(1920x1200)の時ここまで
24950 '****************************************************************************************************
24960 endif
24970 else
24980 '************************************************************************************************
24990 '1.WXGAの場合　ここから (1280 x 800)
25000 '************************************************************************************************
25010 if ((size(0) <= 1280) and (size(1) <= 800)) then
25020 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
25030 if ((y = 1) or (key$ = chr$(31))) then
25040 select case No
25050 case 0:
25060 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y + 120),1,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バージョンの表示を選択":goto Help_Select:
25070 case 1:
25080 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y + 220),2,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
25090 case 2:
25100 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y + 320),0,0:count = count + 1:beep:pause 200:locate 1,19:gosub Help_Top_ReCheck:color rgb(0,0,0):print "                                      ":locate 1,19:print "4.トップ画面に戻る":goto Help_Select:
25110 case 3:
25120 '****************************
25130 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y + 20),0,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
25140 '****************************
25150 end select
25160 endif
25170 '************************************************************************************************
25180 '1.WXGAの場合　ここまで (1280 x 800)
25190 '************************************************************************************************
25200 else
25210 '****************************************************************************************************
25220 'WUXG(1920x1200)の時ここから
25230 '****************************************************************************************************
25240 if ((y = 1) or (key$ = chr$(31))) then
25250 select case No
25260 case 0:
25270 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
25280 case 1:
25290 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
25300 case 2:
25310 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
25320 case 3:
25330 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
25340 end select
25350 endif
25360 '****************************************************************************************************
25370 'WUXG(1920x1200)の時ここまで
25380 '****************************************************************************************************
25390 endif
25400 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
25410 '************************************************************************************************
25420 '1.WXGAの場合　ここから (1280 x 800)
25430 '************************************************************************************************
25440 if ((size(0) <= 1280) and (size(1) <= 800)) then
25450 if ((y = -1) or (key$ = chr$(30))) then
25460 select case No
25470 case 0:
25480 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y+320),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Help_Select:
25490 case 1:
25500 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0,0):locate 1,15:print "                                      ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
25510 case 2:
25520 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                        ":locate 1,19:print "2.バージョンの表示を選択":goto Help_Select:
25530 case 3:
25540 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y+220),2,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
25550 end select
25560 endif
25570 '************************************************************************************************
25580 '1.WXGAの場合　ここから (1280 x 800)
25590 '************************************************************************************************
25600 else
25610 '************************************************************************************************
25620 'WUXG(1920x1200)の時ここから
25630 '************************************************************************************************
25640 if ((y = -1) or (key$ = chr$(30))) then
25650 select case No
25660 case 0:
25670 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
25680 case 1:
25690 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
25700 case 2:
25710 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
25720 case 3:
25730 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
25740 end select
25750 endif
25760 '****************************************************************************************************
25770 'WUXG(1920x1200)の時ここまで
25780 '****************************************************************************************************
25790 endif
25800 endif
25810 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
25820 if ((bg = 2) or (key$ = chr$(13))) then
25830 select case No
25840 case 0:
25850 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop: 'Suhi_Rule:
25860 case 1:
25870 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
25880 case 2:
25890 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
25900 '3:Top画面に行く
25910 case 3:
25920 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
25930 end select
25940 endif
25950 if (bg2 = 2) then
25960 play "":pause 200
25970 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
25980 goto Help_Select:
25990 endif
26000 'ルールの説明　トップ画面
26010 Suhi_Rule_explainTop:
26020 '**********************************************************
26030 cls 3:No=0
26040 play ""
26050 '****************************************************************************************************
26060 'WUXG(1920x1200)の時ここから
26070 '背景画像
26080 '****************************************************************************************************
26090 Font FONT
26100 if ((size(0) <= 1280) and (size(1) <= 800)) then
26110 gload Gazo$ + Gazo_WXGA$ + "Rule_explain_TopScreen_907x680_20240218.png",0,0,0
26120 else
26130 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
26140 gload Gazo$ + "downscreen.png",0,0,800
26150 endif
26160 '****************************************************************************************************
26170 'WUXG(1920x1200)の時ここまで
26180 '背景画像
26190 '****************************************************************************************************
26200 if ex_info$(1)<>"JP" then
26210 color rgb(255,255,255)
26220 print chr$(13)+chr$(13)+chr$(13)
26230 print "Please select a number"+chr$(13)
26240 print " :1.How to Kabara" + chr$(13)
26250 print " :2. Explain for BirdseyeGrid" + chr$(13)
26260 print " :3. Return to Top Screen" + chr$(13)
26270 else
26280 '****************************************************************************************************
26290 'WUXG(1920x1200)の時ここから
26300 '****************************************************************************************************
26310 '****************************************************************************************************
26320 'Top画面メニュー表示文字　ここから
26330 '****************************************************************************************************
26340 '***************************************************************************************************
26350 'WXGA(1200x800)の時 ここから
26360 '***************************************************************************************************
26370 if ((size(0) <= 1280) and (size(1) <= 800)) then
26380 color rgb(255,255,255)
26390 locate 1,5
26400 print "番号を選んでください"
26410 locate 1,7:    '〇
26420 print " :1.数秘術のやり方"
26430 locate 1,10:   '〇
26440 print " :2.バーズアイグリットの説明"
26450 locate 1,13:    '〇
26460 print " :3.トップ画面に戻る"
26470 '***************************************************************************************************
26480 'WXGA(1200x800)の時 ここまで
26490 '***************************************************************************************************
26500 else
26510 '***************************************************************************************************
26520 'WXGA(1200x800) 以外の時 ここから
26530 '***************************************************************************************************
26540 color rgb(255,255,255)
26550 print chr$(13)+chr$(13)+chr$(13)
26560 print "番号を選んでください"+chr$(13)
26570 print " :1.数秘術のやり方" + chr$(13)
26580 print " :2.バーズアイグリットの説明" + chr$(13)
26590 print " :3.トップ画面に戻る" + chr$(13)
26600 '***************************************************************************************************
26610 'WXGA(1200x800) 以外の時 ここまで
26620 '***************************************************************************************************
26630 '****************************************************************************************************
26640 'Top画面メニュー表示文字　ここまで
26650 '****************************************************************************************************
26660 endif
26670 '****************************************************************************************************
26680 'WUXG(1920x1200)の時ここまで
26690 '****************************************************************************************************
26700 endif
26710 color rgb(0,0,0)
26720 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
26730 locate 1,15
26740 print "                                  "
26750 if ex_info$(1) <> "JP" then
26760 print "                                  "
26770 print ":1.How to Kabara"
26780 else
26790 if ((size(0) <= 1280) and (size(1) <= 800)) then
26800 if count=0 then
26810 '****************************************************************************************************
26820 '共通部分 WXGA ここから
26830 '****************************************************************************************************
26840 locate 1,19
26850 print ":1.数秘術のやり方"
26860 '****************************************************************************************************
26870 '共通部分 WXGA ここまで
26880 '****************************************************************************************************
26890 endif
26900 else
26910 if count = 0 then
26920 '****************************************************************************************************
26930 '共通部分 WUXGA ここから
26940 '****************************************************************************************************
26950 locate 1,15
26960 print ":1.数秘術のやり方"
26970 '****************************************************************************************************
26980 '共通部分 WUXGA ここまで
26990 '****************************************************************************************************
27000 endif
27010 endif
27020 init "kb:4"
27030 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
27040 Suhi_Rule_explainTop2:
27050 bg=0:key$="":y=0:bg2=0
27060 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
27070 y = stick(1)
27080 key$ = inkey$
27090 bg = strig(1)
27100 bg2 = strig(0)
27110 pause 200
27120 wend
27130 if ex_info$(1)<>"JP" then
27140 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
27150 if ((y = 1) or (key$ = chr$(31))) then
27160 select case No
27170 case 0:
27180 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
27190 case 1:
27200 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
27210 case 2:
27220 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
27230 end select
27240 endif
27250 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
27260 if ((y = -1) or (key$ = chr$(30))) then
27270 select case No
27280 case 0:
27290 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,Y+220),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
27300 case 2:
27310 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
27320 case 3:
27330 No=0:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,Y+20),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
27340 end select
27350 endif
27360 else
27370 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
27380 '*******************************************************************************************************
27390 'WXGA 1200x 800 日本語
27400 '*******************************************************************************************************
27410 if ((size(0) <= 1280) and (size(1) <= 800)) then
27420 if ((y = 1) or (key$ = chr$(31))) then
27430 select case No
27440 case 0:
27450 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(x,Y+120),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
27460 case 1:
27470 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
27480 case 2:
27490 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
27500 end select
27510 endif
27520 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
27530 if ((y = -1) or (key$ = chr$(30))) then
27540 select case No
27550 case 0:
27560 No=2:sp_on 1,0:sp_on 0,0:sp_on 2,1:sp_on 0,0:sp_put 2,(5,Y+220),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
27570 case 1:
27580 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                        ":locate 1,19:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
27590 case 2:
27600 No=1:sp_on 1,1:sp_on 1,0:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y+120),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
27610 end select
27620 endif
27630 endif
27640 '*******************************************************************************************************
27650 'WXGA 1200x 800 ここまで 日本語
27660 '*******************************************************************************************************
27670 else
27680 '*******************************************************************************************************
27690 'WXGA 1200x 800 以外　ここから
27700 '*******************************************************************************************************
27710 if ((y = 1) or (key$ = chr$(31))) then
27720 select case No
27730 case 0:
27740 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
27750 case 1:
27760 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
27770 case 2:
27780 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
27790 end select
27800 endif
27810 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
27820 if ((y = -1) or (key$ = chr$(30))) then
27830 select case No
27840 case 0:
27850 No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
27860 case 1:
27870 No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
27880 case 2:
27890 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
27900 end select
27910 endif
27920 endif
27930 '******************************************************************************************************
27940 'WXGA 1200x 800 以外　ここまで
27950 '******************************************************************************************************
27960 endif
27970 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
27980 '*******************************************************************************************************
27990 '決定ボタンを押したときの処理　共通部分　ここから
28000 '********************************************************************************************************
28010 '********************************************************************************************************
28020 'bg:右の丸ボタン　chr$(13):Enter Key
28030 '********************************************************************************************************
28040 if ((bg = 2) or (key$ = chr$(13))) then
28050 select case No
28060 case 0:
28070 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule: ' 1.数秘ルールの説明
28080 case 1:
28090 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain1: '2.バーズアイグリットの説明
28100 '3:Top画面に行く
28110 case 2:
28120 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen: '3.メイン画面に行く
28130 end select
28140 endif
28150 '********************************************************************************************************
28160 '決定ボタンを押したときの処理　共通部分　ここまで
28170 '*********************************************************************************************************
28180 if (bg2 = 2) then
28190 play "":pause 200
28200 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
28210 goto Suhi_Rule_explainTop2:
28220 endif
28230 '**********************************************************
28240 'バーズアイグリットの説明1
28250 'Help-
28260 '**********************************************************
28270 BirdsEyeGrid_Explain1:
28280 '●.初期設定
28290 cls 3:Font FONT:No=0:bg=0:key$="":bg2=0
28300 play "":'音を停める
28310 'バーズアイグリット基本チャートを表示　　ここから
28320 if ex_info$(1) <> "JP" then
28330 '英語ファイル
28340 else
28350 if ((size(0)<=1280) and (size(1)<=800)) then
28360 gload Gazo$ + Gazo_WXGA$ + "BirdsEyeGrid_Explain1_Chart_907x680_20240219.png",0,0,0
28370 else
28380 '****************************************************************************************************
28390 'WUXG(1920x1200)の時ここから
28400 '****************************************************************************************************
28410 '日本語ファイル
28420 gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png",0,0,0
28430 '****************************************************************************************************
28440 'WUXG(1920x1200)の時ここまで
28450 '****************************************************************************************************
28460 endif
28470 'バーズアイグリット基本チャートを表示　　ここまで
28480 endif
28490 'ジョイパッドの右で次へ行く
28500 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
28510 key$ = inkey$
28520 bg = strig(1)
28530 bg2 = strig(0)
28540 pause 200
28550 wend
28560 if (bg=2 or key$=chr$(13)) then
28570 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
28580 'goto バーズアイグリット説明の2番目に行く
28590 end
28600 endif
28610 if (bg2 = 2 or key$ = "") then
28620 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
28630 'goto Top画面に行く
28640 goto Main_Screen:
28650 'end
28660 endif
28670 '**********************************************************
28680 'バーズアイグリットの説明2
28690 'Help-
28700 '**********************************************************
28710 BirdsEyeGrid_Explain2:
28720 '●.初期設定
28730 cls 3:Font 48:No = 0:bg = 0:key$ = "":bg2 = 0
28740 play "":'音を停める
28750 'バーズアイグリット基本チャートを表示　　ここから
28760 if ex_info$(1) <> "JP" then
28770 '英語ファイル
28780 else
28790 '日本語ファイル
28800 '****************************************************************************************************
28810 'WUXG(1920x1200)の時ここから
28820 '****************************************************************************************************
28830 gload Gazo$ + "BirdsEyeGrid_Exaple1_Chart_20240202.png",0,0,0
28840 '****************************************************************************************************
28850 'WUXG(1920x1200)の時ここまで
28860 '****************************************************************************************************
28870 'バーズアイグリット基本チャートを表示　　ここまで
28880 endif
28890 'ジョイパッドの右で次へ行く
28900 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
28910 key$ = inkey$
28920 bg = strig(1)
28930 bg2 = strig(0)
28940 pause 200
28950 wend
28960 if (bg = 2 or key$ = chr$(13)) then
28970 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
28980 'goto バーズアイグリット説明の3番目に行く
28990 end
29000 endif
29010 if (bg2 = 2 or key$ = "") then
29020 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
29030 'goto Top画面に行く
29040 goto Main_Screen:
29050 'end
29060 endif
29070 '**********************************************************
29080 '数秘術占い　トップ画面
29090 Kabara_TopScreen:
29100 cls 3:play ""
29110 if ((size(0)<=1280) and (size(1)<=800)) then
29120 '***********************************************************
29130 '1280x800ここから
29140 '***********************************************************
29150 gload Gazo$ + Gazo_WXGA$ + "Kabara_TopScreen_853x640_20240223.png",0,0,0
29160 '************************************************************
29170 '1280x800ここまで
29180 '************************************************************
29190 else
29200 '****************************************************************************************************
29210 'WUXG(1920x1200)の時ここから
29220 '****************************************************************************************************
29230 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
29240 gload Gazo$ + "downscreen.png",0,0,800
29250 '****************************************************************************************************
29260 'WUXG(1920x1200)の時ここまで
29270 '****************************************************************************************************
29280 endif
29290 play Voice$ + "KabaraTop_Selection_20230721.mp3"
29300 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
29310 init"kb:4":No=0
29320 if ex_info$(1)<>"JP" then
29330 color rgb(255,255,255)
29340 print chr$(13)+chr$(13)+chr$(13)
29350 print "Please select a number" + chr$(13)
29360 print " :1.Numerology" + chr$(13)
29370 print " :2.Bird's Eye Grid" + chr$(13)
29380 print " :3.Compatibility Divination" + chr$(13)
29390 print " :4.Return to Top Screen" + chr$(13)
29400 color rgb(0,0,0)
29410 locate 1,15:print "1. Select Numerology"
29420 else
29430 if ((size(0)<=1280) and (size(1)<=800)) then
29440 '***************************************************************************************************
29450 '1280 x800 ここから
29460 '***************************************************************************************************
29470 color rgb(255,255,255):font FONT
29480 locate 1,5
29490 print "番号を選んでください" + chr$(13)
29500 locate 1,7
29510 print " :1.数秘術占い" + chr$(13)
29520 locate 1,10
29530 print " :2.バーズアイグリット" + chr$(13)
29540 locate 1,13
29550 print " :3.相性占い" + chr$(13)
29560 locate 1,16
29570 print " :4.トップ画面に戻る" + chr$(13)
29580 color rgb(0,0,0)
29590 locate 1,19:print "1.数秘術占いを選択"
29600 '***************************************************************************************************
29610 '1280 x800 ここまで
29620 '***************************************************************************************************
29630 else
29640 '****************************************************************************************************
29650 'WUXG(1920x1200)の時ここから
29660 '****************************************************************************************************
29670 color rgb(255,255,255):font FONT
29680 print chr$(13)+chr$(13)+chr$(13)
29690 print "番号を選んでください" + chr$(13)
29700 print " :1.数秘術占い" + chr$(13)
29710 print " :2.バーズアイグリット" + chr$(13)
29720 print " :3.相性占い" + chr$(13)
29730 print " :4.トップ画面に戻る" + chr$(13)
29740 color rgb(0,0,0)
29750 locate 1,15:print "1.数秘術占いを選択"
29760 '****************************************************************************************************
29770 'WUXG(1920x1200)の時ここまで
29780 '****************************************************************************************************
29790 endif
29800 endif
29810 Kabara_TopScreen2:
29820 y = 0:bg = 0:key$ = "":bg2 = 0
29830 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
29840 key$ = inkey$
29850 bg = strig(1)
29860 y = stick(1)
29870 bg2 = strig(0)
29880 pause 200
29890 wend
29900 '選択ボタン
29910 'カーソル下 　と　ジョイパッド　の下
29920 if ex_info$(1)<>"JP" then
29930 if ((y = 1) or (key$ = chr$(31))) then
29940 select case No
29950 case 2:
29960 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
29970 case 3:
29980 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
29990 case 0:
30000 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
30010 case 1:
30020 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
30030 end select
30040 endif
30050 else
30060 if ((size(0) <= 1280) and (size(1) <= 800)) then
30070 '******************************************************************************************************
30080 '1280x800ここから
30090 '*****************************************************************************************************
30100 if ((y = 1) or (key$ = chr$(31))) then
30110 select case No
30120 case 2:
30130 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                    ":locate 1,19:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30140 case 3:
30150 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0): locate 1,19:print"                                      ":locate 1,19:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30160 case 0:
30170 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30180 case 1:
30190 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print"3.相性占いを選択":goto Kabara_TopScreen2:
30200 end select
30210 endif
30220 'カーソル　上  or  ジョイパッド　上
30230 if ((y=-1) or (key$=chr$(30))) then
30240 select case No
30250 case 0:
30260 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30270 case 1:
30280 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30290 case 2:
30300 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30310 case 3:
30320 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                                       ":locate 1,19:print"3.相性占いを選択":goto Kabara_TopScreen2:
30330 end select
30340 endif
30350 '*****************************************************************************************************
30360 '1280 x800 ここまで
30370 '******************************************************************************************************
30380 else
30390 '******************************************************************************************************
30400 '1920x1280 ここから
30410 '******************************************************************************************************
30420 if ((y = 1) or (key$ = chr$(31))) then
30430 select case No
30440 case 2:
30450 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30460 case 3:
30470 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30480 case 0:
30490 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30500 case 1:
30510 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
30520 end select
30530 endif
30540 'カーソル　上  or  ジョイパッド　上
30550 if ((y=-1) or (key$=chr$(30))) then
30560 select case No
30570 case 0:
30580 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30590 case 1:
30600 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30610 case 2:
30620 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30630 case 3:
30640 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
30650 end select
30660 endif
30670 endif
30680 '******************************************************************************************************
30690 '1920x 1280 ここまで
30700 '******************************************************************************************************
30710 endif
30720 '決定ボタン
30730 'ジョイパッドの右　or  Enter key
30740 if ((bg = 2) or (key$ = chr$(13))) then
30750 select case No
30760 case 0:
30770 '1.数秘術占い
30780 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
30790 case 3:
30800 '4.メイン画面にいく
30810 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
30820 case 1:
30830 '2.バースアイグリッド
30840 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
30850 case 2:
30860 '3.相性占い
30870 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
30880 end select
30890 endif
30900 if (bg2 = 2) then
30910 play "":pause 200
30920 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
30930 goto Kabara_TopScreen2:
30940 endif
30950 '1.バースアイグリット　名入力
30960 Inputname1:
30970 cls 3:init"kb:4":
30980 '****************************************************************************************************
30990 'WUXG(1920x1200)の時ここから
31000 '****************************************************************************************************
31010 font 48
31020 bg=0:key$="":y=0:No=-1:name1$="":i=1
31030 gload Gazo$ + "Selection.png",1,10,100
31040 'Line 1:☓
31050 'A:選択肢
31060 sp_def 15,(50,250),16,16
31070 'B:選択肢
31080 sp_def 16,(200,250),16,16
31090 'C:選択肢
31100 sp_def 17,(350,250),16,16
31110 'D:選択肢
31120 sp_def 18,(500,250),16,16
31130 'E:選択肢
31140 sp_def 19,(630,250),16,16
31150 'F:選択肢
31160 sp_def 20,(780,250),16,16
31170 'G:選択肢
31180 sp_def 21,(930,250),16,16
31190 'Line 2:☓
31200 'H:選択肢
31210 sp_def 22,(50,345),16,16
31220 'I:選択肢
31230 sp_def 23,(200,345),16,16
31240 'J:選択肢
31250 sp_def 24,(350,345),16,16
31260 'K:選択肢
31270 sp_def 25,(500,345),16,16
31280 'L:選択肢
31290 sp_def 26,(630,345),16,16
31300 'M:選択肢
31310 sp_def 27,(780,345),16,16
31320 'N:選択肢
31330 sp_def 28,(930,345),16,16
31340 'Line 3:☓
31350 'O:選択肢
31360 sp_def 29,(50,440),16,16
31370 'P:選択肢
31380 sp_def 30,(200,440),16,16
31390 'Q:選択肢
31400 sp_def 31,(350,440),16,16
31410 'R:選択肢
31420 sp_def 32,(500,440),16,16
31430 'S:選択肢
31440 sp_def 33,(630,440),16,16
31450 'T:選択肢
31460 sp_def 34,(780,440),16,16
31470 'U:選択肢
31480 sp_def 35,(930,440),16,16
31490 'Line 4:◯
31500 'V:選択肢
31510 sp_def 36,(50,535),16,16
31520 'W:選択肢
31530 sp_def 37,(200,535),16,16
31540 'X:選択肢
31550 sp_def 38,(350,535),16,16
31560 'Y:選択肢
31570 sp_def 39,(500,535),16,16
31580 'Z:選択肢
31590 sp_def 40,(630,535),16,16
31600 'Ok:選択肢
31610 sp_def 41,(780,535),16,16
31620 'sp_def 42,(930,535),16,16
31630 'Line 1
31640 'A
31650 sp_on 15,0
31660 'B
31670 sp_on 16,0
31680 'C
31690 sp_on 17,0
31700 'D
31710 sp_on 18,0
31720 'E
31730 sp_on 19,0
31740 'F
31750 sp_on 20,0
31760 'G
31770 sp_on 21,0
31780 'Line 1
31790 'Line 2
31800 'H
31810 sp_on 22,0
31820 'I
31830 sp_on 23,0
31840 'J
31850 sp_on 24,0
31860 'K
31870 sp_on 25,0
31880 'L
31890 sp_on 26,0
31900 'M
31910 sp_on 27,0
31920 'N
31930 sp_on 28,0
31940 'Line 2
31950 'Line 3
31960 'O
31970 sp_on 29,0
31980 'P
31990 sp_on 30,0
32000 'Q
32010 sp_on 31,0
32020 'R
32030 sp_on 32,0
32040 'S
32050 sp_on 33,0
32060 'T
32070 sp_on 34,0
32080 'U
32090 sp_on 35,0
32100 'Line 3
32110 'Line 4
32120 'V
32130 sp_on 36,0
32140 'W
32150 sp_on 37,0
32160 'X
32170 sp_on 38,0
32180 'Y
32190 sp_on 39,0
32200 'Z
32210 sp_on 40,0
32220 'Ok
32230 sp_on 41,1
32240 '****************************************************************************************************
32250 'WUXG(1920x1200)の時ここまで
32260 '****************************************************************************************************
32270 'Line 4
32280 'sp_on 42,1
32290 'Line 1
32300 'sp_put 15,(50,250),0,0
32310 'sp_put 16,(200,250),0,0
32320 'sp_put 17,(350,250),0,0
32330 'sp_put 18,(500,250),0,0
32340 'sp_put 19,(630,250),0,0
32350 'sp_put 20,(780,250),0,0
32360 'sp_put 21,(930,250),0,0
32370 'Line 2
32380 'sp_put 22,(50,345),0,0
32390 'sp_put 23,(200,345),0,0
32400 'sp_put 24,(350,345),0,0
32410 'sp_put 25,(500,345),0,0
32420 'sp_put 26,(630,345),0,0
32430 'sp_put 27,(780,345),0,0
32440 'sp_put 28,(930,345),0,0
32450 'Line 3
32460 'sp_put 29,(50,440),0,0
32470 'sp_put 30,(200,440),0,0
32480 'sp_put 31,(350,440),0,0
32490 'sp_put 32,(500,440),0,0
32500 'sp_put 33,(630,440),0,0
32510 'sp_put 34,(780,440),0,0
32520 'sp_put 35,(930,440),0,0
32530 'Line 4
32540 'sp_put 36,(50,535),0,0
32550 'sp_put 37,(200,535),0,0
32560 'sp_put 38,(350,535),0,0
32570 'sp_put 39,(500,535),0,0
32580 'sp_put 40,(630,535),0,0
32590 sp_put 41,(780,535),0,0
32600 'sp_put 42,(930,536),0,0
32610 gload Gazo$ + "Screen1.png",0,0,0
32620 color rgb(255,255,255)
32630 locate 1,3
32640 print "名前の姓をアルファベットで入力してください"
32650 locate 1,5
32660 print " A  B  C  D  E  F  G"
32670 locate 1,7
32680 print " H  I  J  K  L  M  N"
32690 locate 1,9
32700 print " O  P  Q  R  S  T  U"
32710 locate 1,11
32720 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
32730 locate 1,15:color rgb(0,0,0)
32740 print "名前の姓:" + name1$
32750 select_name1:
32760 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
32770 '有効ボタン
32780 '1.決定ボタン(bg:2)
32790 '2.Enter Key$:chr$(13)
32800 '3.カーソル上 (chr$(31))
32810 '4.カーソル　左 (chr$(29))
32820 '5.ジョイパッド　上 (y:1)
32830 '6:ジョイパッド　左 (y2:-1)
32840 '7:ジョイパッド　下 (y:-1)
32850 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
32860 key$ = inkey$
32870 'ジョイパッドの決定:bg
32880 bg = strig(1)
32890 y = stick(1)
32900 y2 = stick(0)
32910 pause 200
32920 wend
32930 '====================================
32940 'Birds Eye Grid 名前入力
32950 '入力スタイル　アルファベット入力
32960 'sp_on:　スプライトのオンオフ
32970 'sp_put :表示位置
32980 'No:ボタン番号
32990 '====================================
33000 'カーソルで下に行く
33010 if ((y=-1) or (key$=chr$(31))) then
33020 select case No
33030 '1.Ok ボタン
33040 'sp_on スプライトのオンオフ
33050 'sp_put スプライトを表示
33060 case -1:
33070 '1.アルファベット　入力ボタン
33080 '実装未完全なので終了
33090 'Ok → T ○ :No:20=T
33100 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
33110 'T  → M ○
33120 case 20:
33130 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
33140 'M  →　F ○
33150 case 13:
33160 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
33170 'F  → Ok
33180 case 6:
33190 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
33200 end select
33210 endif
33220 '2.決定ボタン
33230 if ((key$ = chr$(13)) OR  (bg = 2)) then
33240 select case No
33250 case -1:
33260 'スプライトをOFFにする
33270 sp_on 41,0
33280 end select
33290 endif
33300 '3.カーソル　左
33310 if (key$ = chr$(29) or (y2 =-1)) then
33320 select case No
33330 'Line 4
33340 'Line 4
33350 '1.
33360 'Z:-1 :Ok ボタン
33370 'Ok → Z
33380 case -1:
33390 'Ok →　Z
33400 'Ok ボタン OFF,Z Button ON
33410 'No=26:Z
33420 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
33430 '2.
33440 '26:Zボタン Z→ Y
33450 case 26:
33460 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
33470 '3.
33480 '25:Yボタン  Y → X
33490 case 25:
33500 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
33510 '4
33520 '24:Xボタン X → W
33530 case 24:
33540 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
33550 '23:Wボタン X → W
33560 '5
33570 case 23:
33580 '22:Vボタン W → V
33590 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
33600 case 22:
33610 '-1:V→ Ok
33620 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
33630 'Line 3
33640 case 20:
33650 '33:T34  → S:33 :◯
33660 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
33670 case 19:
33680 '32:S:33 → R:32 :◯
33690 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
33700 case 18:
33710 '31:R:32 → Q:31 :◯
33720 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
33730 '30:O → P :◯
33740 case 17:
33750 '30:Q:31 → P:30 :◯
33760 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
33770 case 16:
33780 '29:P:30 → O:29 :◯
33790 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
33800 case 15:
33810 '28:O:29 → U:21  :◯
33820 'O:OFF,U:ON
33830 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
33840 '27:U:21 → T:20  :◯
33850 case 21:
33860 'U:OFF:T:ON
33870 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
33880 'Line 2
33890 '26:M:13 → L:12 : ○
33900 case 13:
33910 'M:OFF,L:ON
33920 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
33930 '25:L:12 → K:11 : ○
33940 case 12:
33950 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
33960 '24:K:11 → J:10 : ○
33970 case 11:
33980 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
33990 '23:J:10 → I:9  : ○
34000 case 10:
34010 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
34020 '22:I:9 → H:8    :○
34030 case 9:
34040 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
34050 '21:H:8 → N:14:   :○
34060 case 8:
34070 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
34080 '20:N:14 → M:13:   :○
34090 case 14:
34100 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
34110 '●.Line 1:
34120 '19:F:20 → E:19 : ☓
34130 'F:OFF,E:ON
34140 case 6:
34150 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
34160 '18:E → D
34170 'E:OFF,D:ON
34180 case 5:
34190 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
34200 '17:D → C
34210 'D:OFF,C:ON
34220 case 4:
34230 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
34240 case 3:
34250 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
34260 case 2:
34270 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
34280 case 1:
34290 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
34300 case 7:
34310 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
34320 end select
34330 endif
34340 '上から下の方向
34350 if ((key$ = chr$(31)) or  (y = 1)) then
34360 select case No
34370 '●.1
34380 '1:A→H
34390 case 1:
34400 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
34410 '2:H→O
34420 case 8:
34430 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
34440 '3:O→V
34450 case 15:
34460 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
34470 '4:V→A
34480 case 22:
34490 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
34500 '●.2
34510 '5.B→I
34520 case 2:
34530 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
34540 '6.I→P
34550 case 9:
34560 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
34570 '7.P→W
34580 case 16:
34590 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
34600 '8.W→B
34610 case 23:
34620 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
34630 '●.3
34640 '9.C→J
34650 case 3:
34660 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
34670 '10.J→Q
34680 case 10:
34690 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
34700 '11.Q→X
34710 case 17:
34720 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
34730 '12.X→C
34740 case 24:
34750 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
34760 '●.4
34770 '13.D→K
34780 case 4:
34790 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
34800 '14.K→R
34810 case 11:
34820 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
34830 '15.R→Y
34840 case 18:
34850 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
34860 '16.Y→D
34870 case 25:
34880 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
34890 '●.5
34900 '17.E→L
34910 case 5:
34920 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
34930 '18.L→S
34940 case 12:
34950 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
34960 '19.S→Z
34970 case 19:
34980 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
34990 '20.Z→E
35000 case 26:
35010 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
35020 '●.6
35030 '21.F→M
35040 case 6:
35050 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
35060 '22.M→T
35070 case 13:
35080 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
35090 '23.T→Ok
35100 case 20:
35110 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
35120 '24.Ok→F
35130 case -1:
35140 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
35150 '●.7
35160 '25.G→N
35170 case 7:
35180 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
35190 '26.N→U
35200 case 14:
35210 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
35220 '27.U→G
35230 case 21:
35240 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
35250 end select
35260 endif
35270 '決定ボタン　で名前の姓に文字を追加。
35280 if (key$ = chr$(13) or bg = 2) then
35290 select case No
35300 'Okボタン
35310 case -1:
35320 goto Inputname2:
35330 'Aの文字
35340 case 1:
35350 'if len(n$)=0 then
35360 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
35370 'else
35380 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
35390 'endif
35400 goto select_name1:
35410 case 2:
35420 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
35430 end select
35440 endif
35450 Input_name1_Birdseye:
35460 cls 3:init "kb:2":play ""
35470 gload Gazo$ + "Input_Birtheye2.png",0,0,0
35480 if ex_info$(1)<>"JP" then
35490 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
35500 color rgb(0,0,255)
35510 locate 1,2:print "Please enter your name in English"
35520 color rgb(0,0,0)
35530 locate 1,5:Input "Name (Surname):",name1$
35540 else
35550 '****************************************************************************************************
35560 '共通部分　ここから
35570 '****************************************************************************************************
35580 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
35590 color rgb(0,0,255)
35600 locate 1,2:print "名前をアルファベットで入れてください"
35610 color rgb(0,0,0)
35620 locate 1,5:Input "名前（姓の部分）:",name1$
35630 '****************************************************************************************************
35640 '共通部分　ここまで
35650 '****************************************************************************************************
35660 endif
35670 '27.U→G
35680 'locate 1,5:print "Hit any key"
35690 n1 = len(name1$)
35700 if (n1 < 11) then
35710 for i=1 to n1
35720 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
35730 next i
35740 endif
35750 goto Inputname2:
35760 '2.グリッドアイ　姓の入力
35770 'end
35780 Inputname2:
35790 cls 3:init"kb:2":font 48:play ""
35800 gload Gazo$ + "Input_Birtheye1.png",0,0,0
35810 if ex_info$(1)<>"JP" then
35820 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
35830 color rgb(0,0,255)
35840 locate 1,2:print "Please enter your name in English"
35850 color rgb(0,0,0)
35860 locate 1,5:Input "Name (First name):",name2$
35870 n2 = len(name2$)
35880 for i=1 to n2
35890 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
35900 next i
35910 else
35920 '****************************************************************************************************
35930 '共通部分　ここから
35940 '****************************************************************************************************
35950 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
35960 color rgb(0,0,255)
35970 locate 1,2:print "名前をアルファベットで入れてください"
35980 color rgb(0,0,0)
35990 locate 1,5:Input "名前(名の部分):",name2$
36000 n2 = len(name2$)
36010 for i=1 to n2
36020 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
36030 next i
36040 '****************************************************************************************************
36050 '共通部分　ここまで
36060 '****************************************************************************************************
36070 endif
36080 '****************************************************************************************************
36090 '計算領域　ここから
36100 '****************************************************************************************************
36110 Complate:
36120 'name1
36130 for i=0 to 25
36140 for n=1 to len(name1$)
36150 if (buf_chart$(i,0) = buf_name1$(n-1)) then
36160 b = val(buf_chart$(i,1))
36170 buffer(b-1) = buffer(b-1) + 1
36180 endif
36190 next n
36200 next i
36210 'name2
36220 for i=0 to 25
36230 for n=1 to len(name2$)
36240 if (buf_chart$(i,0) = buf_name2$(n-1)) then
36250 c = val(buf_chart$(i,1))
36260 buffer(c - 1) = buffer(c - 1) + 1
36270 endif
36280 next n
36290 next i
36300 '****************************************************************************************************
36310 '計算領域 ここまで
36320 '****************************************************************************************************
36330 '****************************************************************************************************
36340 '結果表示領域
36350 '****************************************************************************************************
36360 Result_Birtheye1:
36370 cls 3:init"kb:4":No=0:play "":'音を止める
36380 '****************************************************************************************************
36390 '1280x800　ここから
36400 '****************************************************************************************************
36410 if ((size(0) <= 1280) and (size(1) <= 800)) then
36420 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x640_20240223.png",0,0,0
36430 '****************************************************************************************************
36440 '1280x800　ここまで
36450 '****************************************************************************************************
36460 else
36470 '****************************************************************************************************
36480 '1920x1280　ここから
36490 '****************************************************************************************************
36500 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
36510 gload Gazo$ + "downscreen.png",0,0,800
36520 '****************************************************************************************************
36530 '1920x1280　ここまで
36540 '****************************************************************************************************
36550 endif
36560 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
36570 color rgb(255,255,255)
36580 '1の表示
36590 locate 3,14:print buffer(0);
36600 '2の表示
36610 locate 3,9:print buffer(1);
36620 '3の表示
36630 locate 3,5:print buffer(2);
36640 '4の表示
36650 locate 10,14:print buffer(3);
36660 '5の表示
36670 locate 10,9:print buffer(4);
36680 '6の表示
36690 locate 10,5:print buffer(5);
36700 '7の表示
36710 locate 15,14:print buffer(6);
36720 '8の表示
36730 locate 15,9:print buffer(7);
36740 '9の表示
36750 locate 15,5:print buffer(8);
36760 'name を大文字に変換
36770 locate 5,3:print ucase$(name1$ + name2$)
36780 color rgb(0,0,0)
36790 'bg:右のボタン  ,bg2:左のボタン
36800 if ex_info$(1)<>"JP" then
36810 color rgb(255,255,255)
36820 print "Left circle: Main Screen, Right circle: Open Menu"
36830 else
36840 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
36850 endif
36860 bg=0:key$="":bg2=0
36870 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
36880 'Enterと決定ボタン
36890 key$ = inkey$
36900 '右ボタン:1
36910 bg = strig(1)
36920 '左の丸ボタン:0
36930 bg2=strig(0)
36940 pause 200
36950 wend
36960 if ((bg=2) or (key$=chr$(13))) then
36970 'データーをクリアしてトップ画面に行く
36980 'for i=0 to 8
36990 'buffer(i)=0
37000 'next i
37010 'for n=0 to 9
37020 'buf_name1$(n) = ""
37030 'buf_name2$(n) = ""
37040 'next n
37050 'Topに行く
37060 'goto Main_Screen:
37070 'メニューを開く
37080 'goto BirdsEye_Result2:
37090 'Menu(ui_select) リストに飛ぶ
37100 goto Result_Birtheye_List1:
37110 endif
37120 if (bg2=2) then
37130 'データーをクリアする
37140 for i=0 to 8
37150 buffer(i)=0
37160 next i
37170 for n=0 to 9
37180 buf_name1$(n)=""
37190 buf_name2$(n)=""
37200 next n
37210 goto Main_Screen:
37220 endif
37230 'goto Result_Birtheye1:
37240 'Result_Birtheye2:
37250 'cls 3:color rgb(255,255,255)
37260 'end
37270 'Memory 消去
37280 '****************************************************************************************************
37290 '結果表示領域　ここまで
37300 '****************************************************************************************************
37310 '横のフォーカスライン
37320 BirdsEye_Result2:
37330 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
37340 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
37350 Forcus1_buffer$(2)="○"
37360 else
37370 Forcus1_buffer$(2)="☓"
37380 endif
37390 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
37400 Forcus1_buffer$(1)="○"
37410 else
37420 Forcus1_buffer$(1) = "☓"
37430 endif
37440 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
37450 Forcus1_buffer$(0)="○"
37460 else
37470 Forcus1_buffer$(0)="☓"
37480 endif
37490 gload Gazo$ + "Screen1.png",0,0,0
37500 if ex_info$(1)<>"JP" then
37510 color rgb(255,0,0):
37520 locate 1,1
37530 print "Bird's Eye Grid (Focus Line 1)"
37540 color rgb(255,255,255)
37550 locate 1,3:
37560 print "●. Horizontal Focus Line"
37570 locate 1,5
37580 print "1. Sharp Line:"+Forcus1_buffer$(2)
37590 locate 1,7
37600 print "2. Mediator Line:"+Forcus1_buffer$(1)
37610 locate 1,9
37620 print "3. Steady Line:"+Forcus1_buffer$(0)
37630 color rgb(0,0,0)
37640 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
37650 else
37660 color rgb(255,0,0):
37670 locate 1,1
37680 print "バーズアイグリッド(フォーカスライン1)"
37690 color rgb(255,255,255)
37700 locate 1,3:
37710 print "●.横のフォーカスライン"
37720 locate 1,5
37730 print "1.切れ者ライン:"+Forcus1_buffer$(2)
37740 locate 1,7
37750 print "2.調停者ライン:"+Forcus1_buffer$(1)
37760 locate 1,9
37770 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
37780 color rgb(0,0,0)
37790 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
37800 endif
37810 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
37820 key$ = inkey$
37830 bg = strig(1)
37840 bg2 = strig(0)
37850 pause 200
37860 wend
37870 if ((bg=2) or (key$=chr$(13))) then
37880 goto BirdsEye_Result3:
37890 endif
37900 if (bg2=2) then
37910 for i=0 to 8
37920 buffer(i)=0
37930 next i
37940 goto Main_Screen:
37950 endif
37960 BirdsEye_Result3:
37970 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
37980 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
37990 Forcus2_buffer$(2)="○"
38000 else
38010 Forcus2_buffer$(2)="☓"
38020 endif
38030 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
38040 Forcus2_buffer$(1)="○"
38050 else
38060 Forcus2_buffer$(1) = "☓"
38070 endif
38080 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
38090 Forcus2_buffer$(0)="○"
38100 else
38110 Forcus2_buffer$(0)="☓"
38120 endif
38130 gload Gazo$ + "Screen1.png",0,0,0
38140 if ex_info$(1)<>"JP" then
38150 color rgb(255,0,0):
38160 locate 1,1
38170 print "Bird's Eye Grid (Focus Line 2)"
38180 color rgb(255,255,255)
38190 locate 1,3
38200 print "●. Vertical Focus Line"
38210 locate 1,5
38220 print "1. Expresser Line:" + Forcus2_buffer$(2)
38230 locate 1,7
38240 print "2. Commander Line:" + Forcus2_buffer$(1)
38250 locate 1,9
38260 print "3. Leader Line:" + Forcus2_buffer$(0)
38270 color rgb(0,0,0)
38280 locate 0,15:print "Right circle: Next, Left circle: Retest "
38290 else
38300 '****************************************************************************************************
38310 'WUXG(1920x1200)の時ここから
38320 '****************************************************************************************************
38330 color rgb(255,0,0):
38340 locate 1,1
38350 print "バーズアイグリッド(フォーカスライン2)"
38360 color rgb(255,255,255)
38370 locate 1,3
38380 print "●.縦のフォーカスライン"
38390 locate 1,5
38400 print "1.表現者ライン:" + Forcus2_buffer$(2)
38410 locate 1,7
38420 print "2.司令塔ライン:" + Forcus2_buffer$(1)
38430 locate 1,9
38440 print "3.指導者ライン:" + Forcus2_buffer$(0)
38450 color rgb(0,0,0)
38460 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
38470 '****************************************************************************************************
38480 'WUXG(1920x1200)の時ここから
38490 '****************************************************************************************************
38500 endif
38510 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
38520 key$ = inkey$
38530 bg = strig(1)
38540 bg2 = strig(0)
38550 pause 200
38560 wend
38570 if ((bg = 2) or (key$ = chr$(13))) then
38580 goto BirdsEye_Result4:
38590 endif
38600 if (bg2=2) then
38610 for i=0 to 8
38620 buffer(i)=0
38630 next i
38640 goto Main_Screen:
38650 endif
38660 BirdsEye_Result4:
38670 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
38680 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
38690 Forcus3_buffer$(1) = "○"
38700 else
38710 Forcus3_buffer$(1) = "☓"
38720 endif
38730 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
38740 Forcus3_buffer$(0) = "○"
38750 else
38760 Forcus3_buffer$(0) = "☓"
38770 endif
38780 gload Gazo$ + "Screen1.png",0,0,0
38790 if ex_info$(1)<>"JP" then
38800 color rgb(255,0,0):
38810 locate 1,1
38820 print "Bird's Eye Grid (Focus Line 3)"
38830 color rgb(255,255,255)
38840 locate 1,3:
38850 print "●. Diagonal Focus Line"
38860 locate 1,5
38870 print "1. Success Line:"+Forcus3_buffer$(1)
38880 locate 1,7
38890 print "2. Celebrity Line:"+Forcus3_buffer$(0)
38900 color rgb(0,0,0)
38910 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
38920 else
38930 '****************************************************************************************************
38940 'WUXG(1920x1200)の時ここから
38950 '****************************************************************************************************
38960 color rgb(255,0,0):
38970 locate 1,1
38980 print "バーズアイグリッド(フォーカスライン3)"
38990 color rgb(255,255,255)
39000 locate 1,3:
39010 print "●.斜めのフォーカスライン"
39020 locate 1,5
39030 print "1.成功者ライン:"+Forcus3_buffer$(1)
39040 locate 1,7
39050 print "2.セレブライン:"+Forcus3_buffer$(0)
39060 color rgb(0,0,0)
39070 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
39080 '*************************************************************************************************
39090 'WUXG(1920x1200)の時ここまで
39100 '*************************************************************************************************
39110 endif
39120 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
39130 key$ = inkey$
39140 bg = strig(1)
39150 bg2 = strig(0)
39160 pause 200
39170 wend
39180 if ((bg=2) or (key$=chr$(13))) then
39190 goto Result_Birtheye1:
39200 endif
39210 if (bg2=2) then
39220 'データークリア
39230 for i=0 to 8
39240 buffer(i) = 0
39250 next i
39260 goto Main_Screen:
39270 endif
39280 References1:
39290 cls 3:key$ = "":bg = 0:play "":
39300 font 48-8
39310 if ((size(0) <= 1280) and (size(1) <= 800)) then
39320 gload Gazo$ + Gazo_WXGA$ +  "Reference1_864x640_20240219.png",0,0,0
39330 else
39340 gload Gazo$ + "Reference1_20230703.png",0,0,0
39350 gload Gazo$ + "downscreen.png",0,0,800
39360 endif
39370 if ex_info$(1)<>"JP" then
39380 print chr$(13)+chr$(13)+chr$(13)
39390 color rgb(0,0,255)
39400 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
39410 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
39420 print "・Publisher: Gento-sha" + chr$(13)
39430 print "・Website: www.carolAdrienne.jp/" + chr$(13)
39440 print "・ISBN: 978-4-344-01394-0" + chr$(13)
39450 print "・Price: 1500 yen + tax" + chr$(13)
39460 color rgb(255,255,255)
39470 locate 1,18
39480 print "Right joystick: Next"
39490 else
39500 '****************************************************************************************************
39510 '(1200x800)の時ここから
39520 '****************************************************************************************************
39530 if ((size(0)<=1280) and (size(1)<=800)) then
39540 font FONT
39550 color rgb(0,0,255)
39560 locate 1,5:
39570 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
39580 locate 1,7:
39590 print "・Author:carol Adrinne,PhD"+chr$(13)
39600 locate 1,9:
39610 print "・出版社:幻冬舎" + chr$(13)
39620 locate 1,11:
39630 print "・HP:www.carolAdrienne.jp/"+chr$(13)
39640 locate 1,13:
39650 print "・ISBN:978-4-344-01394-0"+chr$(13)
39660 locate 1,15
39670 print "・定価:1500円 + 税"+chr$(13)
39680 color rgb(255,255,255)
39690 locate 1,18
39700 print "ジョイパッド右：次へ"
39710 '****************************************************************************************************
39720 '(1200x800)の時ここまで
39730 '****************************************************************************************************
39740 else
39750 '****************************************************************************************************
39760 'WUXG(1920x1200)の時ここから
39770 '****************************************************************************************************
39780 font FONT
39790 print chr$(13)+chr$(13)+chr$(13)
39800 color rgb(0,0,255)
39810 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
39820 print "・Author:carol Adrinne,PhD"+chr$(13)
39830 print "・出版社:幻冬舎" + chr$(13)
39840 print "・HP:www.carolAdrienne.jp/"+chr$(13)
39850 print "・ISBN:978-4-344-01394-0"+chr$(13)
39860 print "・定価:1500円 + 税"+chr$(13)
39870 color rgb(255,255,255)
39880 locate 1,18
39890 print "ジョイパッド右：次へ"
39900 '****************************************************************************************************
39910 'WUXG(1920x1200)の時ここまで
39920 '****************************************************************************************************
39930 endif
39940 endif
39950 while (key$ <> chr$(13) and bg <> 2)
39960 bg = strig(1)
39970 key$ = inkey$
39980 pause 200
39990 wend
40000 '
40010 if ((bg = 2) or (key$ = chr$(13))) then
40020 pause 200:goto References2:
40030 endif
40040 'ユダヤの秘儀 カバラ大占術
40050 References2:
40060 cls 3:play "":bg = 0:key$ = ""
40070 if ((size(0)<=1280) and (size(1)<=800)) then
40080 gload Gazo$ + Gazo_WXGA$ +  "Reference2_864x640_20240219.png",0,0,0
40090 else
40100 gload Gazo$ + "Reference2_20230703.png",0,0,0
40110 gload Gazo$ + "downscreen.png",0,0,800
40120 endif
40130 '参考文献２
40140 'カバラ大占術
40150 if ex_info$(1)<>"JP" then
40160 print chr$(13) + chr$(13) + chr$(13)
40170 color  rgb(0,0,255):font 48-8
40180 locate 1,3
40190 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
40200 print "・Author: Hironari Asano" + chr$(13)
40210 print "・Publisher: NON BOOK" + chr$(13)
40220 print "・ISBN: 4-396-10364-6" + chr$(13)
40230 print "・Price: 829 yen + tax"
40240 color rgb(255,255,255)
40250 locate 1,18
40260 print "Right joystick: Return to top"
40270 else
40280 '****************************************************************************************************
40290 '(1200x800)の時 ここから
40300 '****************************************************************************************************
40310 if ((size(0)<=1280) and (size(1)<=800)) then
40320 font FONT
40330 color  rgb(0,0,255):
40340 locate 1,5:print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
40350 locate 1,7:print "・著者：浅野 八郎" + chr$(13)
40360 locate 1,9:print "・出版社:NON BOOK" + chr$(13)
40370 locate 1,11:print "・ISBN:4-396-10364-6" + chr$(13)
40380 locate 1,13:print "・定価:829円 + 税"
40390 color rgb(255,255,255)
40400 locate 1,18
40410 print "ジョイパッド右：トップへ行く"
40420 '****************************************************************************************************
40430 '(1200x800)の時 ここまで
40440 '****************************************************************************************************
40450 else
40460 '****************************************************************************************************
40470 'WUXG(1920x1200)の時ここから
40480 '****************************************************************************************************
40490 color  rgb(0,0,255):font FONT
40500 print chr$(13) + chr$(13) + chr$(13)
40510 locate 1,3
40520 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
40530 print "・著者：浅野　八郎" + chr$(13)
40540 print "・出版社:NON BOOK" + chr$(13)
40550 print "・ISBN:4-396-10364-6" + chr$(13)
40560 print "・定価:829円 + 税"
40570 color rgb(255,255,255)
40580 locate 1,18
40590 print "ジョイパッド右：トップへ行く"
40600 '****************************************************************************************************
40610 'WUXG(1920x1200)の時ここまで
40620 '****************************************************************************************************
40630 endif
40640 endif
40650 while ((key$ <> chr$(13)) and (bg <> 2))
40660 bg = strig(1)
40670 key$ = inkey$
40680 pause 200
40690 wend
40700 if ((bg = 2) or (key$ = chr$(13))) then
40710 pause 200:goto Main_Screen:
40720 endif
40730 end
40740 '1.数秘術　トップ画面
40750 Kabara_First_Top:
40760 cls 3:color rgb(255,255,255):play ""
40770 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
40780 gload Gazo$ + "downscreen.png",0,0,800
40790 No=0:init"kb:4"
40800 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
40810 if ex_info$(1)<>"JP" then
40820 print chr$(13);chr$(13)
40830 color rgb(255,255,255)
40840 locate 3,4:No=0
40850 print "Please select a number" + chr$(13)
40860 print " :1. Numerology" + chr$(13)
40870 print " :2. Return to the top screen" + chr$(13)
40880 color rgb(0,0,0)
40890 sp_on 0,1
40900 locate 1,15:print "1. Select Numerology"
40910 else
40920 '****************************************************************************************************
40930 'WUXG(1920x1200)の時ここから
40940 '****************************************************************************************************
40950 print chr$(13);chr$(13)
40960 color rgb(255,255,255)
40970 locate 3,4:No=0
40980 print "番号選んでください" + chr$(13)
40990 print " :1.数秘術占い" + chr$(13)
41000 print " :2.トップ画面に戻る" + chr$(13)
41010 color rgb(0,0,0)
41020 sp_on 0,1
41030 locate 1,15:print "1.数秘術番号を求めるを選択"
41040 '****************************************************************************************************
41050 'WUXG(1920x1200)の時ここまで
41060 '****************************************************************************************************
41070 endif
41080 'KeyBord:true
41090 'Joy Pad:true
41100 '上、下:true
41110 '
41120 'ｂｇ：決定ボタン
41130 'カーソル　上
41140 'カーソル　下
41150 Kabara_First_Top2:
41160 key$ = "":bg = 0:y = 0:
41170 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
41180 key$ = inkey$
41190 bg = strig(1)
41200 y = stick(1)
41210 'PauseでCPUを休める
41220 pause 5
41230 wend
41240 '1.カーソル　下 処理 chr$(31)
41250 'カーソル　下
41260 if ex_info$(1) <> "JP" then
41270 if ((key$ = chr$(31)) or (y = 1)) then
41280 select case No
41290 '
41300 case 1:
41310 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
41320 case 0:
41330 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
41340 'case 2:
41350 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
41360 end select
41370 endif
41380 else
41390 if ((key$ = chr$(31)) or (y = 1)) then
41400 select case No
41410 '
41420 case 1:
41430 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
41440 case 0:
41450 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
41460 'case 2:
41470 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
41480 end select
41490 endif
41500 '2.カーソル　上 処理 chr$(30)
41510 if ((key$ = chr$(30)) or (y = -1)) then
41520 select case No
41530 case 0:
41540 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
41550 case 1:
41560 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
41570 'case 2:
41580 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
41590 end select
41600 endif
41610 endif
41620 '3.決定 処理  bg:2 or Enter key:chr$(13)
41630 if ((bg = 2) or (key$ = chr$(13))) then
41640 select case No
41650 case 0:
41660 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
41670 goto Kabara_TopScreen:
41680 'case 1:
41690 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
41700 case 1:
41710 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
41720 end select
41730 endif
41740 '
41750 'Kabara 相性占い トップ画面
41760 Kabara_Aishou_Top:
41770 cls 3:y=0:key$="":bg=0:No=0
41780 play ""
41790 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
41800 gload Gazo$ + "downscreen.png",0,0,800
41810 if ex_info$(1)<>"JP" then
41820 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
41830 print chr$(13) + chr$(13)
41840 locate 0,4:color rgb(255,255,255)
41850 print "Please select a number" + chr$(13)
41860 print " :1. Compatibility fortune-telling ...." + chr$(13)
41870 print " :2. Business compatibility fortune-telling" + chr$(13)
41880 print " :3. Return to the top screen" + chr$(13)
41890 sp_on 0,1:sp_on 1,0:sp_on 2,0
41900 color rgb(0,0,0)
41910 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
41920 else
41930 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
41940 '****************************************************************************************************
41950 'WUXG(1920x1200)の時ここから
41960 '****************************************************************************************************
41970 print chr$(13) + chr$(13)
41980 locate 0,4:color rgb(255,255,255)
41990 'print "Ok"
42000 '
42010 print "番号を選んでください" + chr$(13)
42020 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
42030 print " :2.ビジネスの相性占い" + chr$(13)
42040 print " :3.トップ画面に戻る" + chr$(13)
42050 sp_on 0,1:sp_on 1,0:sp_on 2,0
42060 color rgb(0,0,0)
42070 locate 1,15:print "1.男女2人の相性占いを選択"
42080 '****************************************************************************************************
42090 'WUXG(1920x1200)の時ここまで
42100 '****************************************************************************************************
42110 endif
42120 Kabara_Aishou_Top2:
42130 key$ = "":y = 0:bg = 0:
42140 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
42150 'ジョイパッド(右) ,十字キー (上下)
42160 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
42170 y = stick(1)
42180 key$ = inkey$
42190 bg = strig(1)
42200 pause 200
42210 wend
42220 'カーソル　下 or 十字キー　下
42230 if ex_info$(1)<>"JP" then
42240 if ((key$ = chr$(31)) or (y = 1)) then
42250 select case No
42260 'Option change 1 - 2
42270 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
42280 'ok
42290 case 0:
42300 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
42310 'Option change 2 - 3
42320 case 1:
42330 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
42340 'Release time case 2 comment release
42350 case 2:
42360 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
42370 case else:
42380 goto Kabara_Aishou_Top2:
42390 end select
42400 endif
42410 if ((key$ = chr$(30)) or (y = -1)) then
42420 select case No
42430 case 0:
42440 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
42450 case 1:
42460 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
42470 case 2:
42480 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
42490 case else:
42500 goto Kabara_Aishou_Top2:
42510 end select
42520 endif
42530 else
42540 if ((key$ = chr$(31)) or (y = 1)) then
42550 select case No
42560 '選択肢　1 - 2に変更
42570 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
42580 'ok
42590 case 0:
42600 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
42610 '選択肢　2 - 3に変更
42620 case 1:
42630 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
42640 'リリース時 case 2コメント解除
42650 case 2:
42660 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
42670 case else:
42680 goto Kabara_Aishou_Top2:
42690 end select
42700 endif
42710 '十字キー　上　、カーソル　上
42720 if ((key$ = chr$(30)) or (y = -1)) then
42730 select case No
42740 case 0:
42750 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
42760 case 1:
42770 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
42780 case 2:
42790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
42800 case else:
42810 goto Kabara_Aishou_Top2:
42820 end select
42830 endif
42840 endif
42850 '十字キー　上下:選択
42860 'ジョイパッド 右:決定
42870 if ((bg = 2) or (key$ = chr$(13))) then
42880 select case No
42890 '1.男女の相性
42900 case 0:
42910 '男女の相性占い(未実装)トップ画面に飛ぶ
42920 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
42930 '2ビジネスの相性
42940 case 1:
42950 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
42960 case 2:
42970 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
42980 end select
42990 endif
43000 '0.男女の相性　トップ画面　ここから
43010 Danjyo_Aisyou_Top:
43020 cls 3:y=0:key$="":bg=0:No=0
43030 play ""
43040 gload Gazo$ + "Screen1.png",0,0,0
43050 gload Gazo$ + "downscreen.png",0,0,800
43060 if ex_info$(1)<>"JP" then
43070 print chr$(13) + chr$(13)
43080 locate 0,4:color rgb(255,255,255)
43090 print "Please select a number" + chr$(13)
43100 print " :1. Compatibility with a person of ...." + chr$(13)
43110 print " :2. Compatibility between two people" + chr$(13)
43120 print " :3. Return to the top screen" + chr$(13)
43130 sp_on 0,1:sp_on 1,0:sp_on 2,0
43140 color rgb(0,0,0)
43150 locate 1,15:print "1. Compatibility with a person of ...."
43160 else
43170 print chr$(13) + chr$(13)
43180 locate 0,4:color rgb(255,255,255)
43190 '****************************************************************************************************
43200 'WUXG(1920x1200)の時ここから
43210 '****************************************************************************************************
43220 print "番号を選んでください" + chr$(13)
43230 print " :1.自分と異性の相性(未実装)" + chr$(13)
43240 print " :2.男女2人の相性" + chr$(13)
43250 print " :3.トップ画面に戻る" + chr$(13)
43260 sp_on 0,1:sp_on 1,0:sp_on 2,0
43270 color rgb(0,0,0)
43280 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
43290 '****************************************************************************************************
43300 'WUXG(1920x1200)の時ここまで
43310 '****************************************************************************************************
43320 endif
43330 Danjyo_Aisyou_Top2:
43340 key$ = "":y = 0:bg = 0:
43350 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
43360 'ジョイパッド(右) ,十字キー (上下)
43370 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
43380 y = stick(1)
43390 key$ = inkey$
43400 bg = strig(1)
43410 pause 200
43420 wend
43430 if ex_info$(1)<>"JP" then
43440 'Cursor down or arrow key down
43450 if ((key$ = chr$(31)) or (y = 1)) then
43460 select case No
43470 'Option 1 - 2 change
43480 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
43490 'ok
43500 case 0:
43510 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
43520 'Option 2 - 3 change
43530 case 1:
43540 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
43550 'Release time case 2 comment release
43560 case 2:
43570 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
43580 case else:
43590 goto Kabara_Aishou_Top2:
43600 end select
43610 endif
43620 'Arrow key up, cursor up
43630 if ((key$ = chr$(30)) or (y = -1)) then
43640 select case No
43650 case 0:
43660 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
43670 case 1:
43680 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
43690 case 2:
43700 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
43710 case else:
43720 goto Kabara_Aishou_Top2:
43730 end select
43740 endif
43750 else
43760 'カーソル　下 or 十字キー　下
43770 if ((key$ = chr$(31)) or (y = 1)) then
43780 select case No
43790 '選択肢　1 - 2に変更
43800 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
43810 'ok
43820 case 0:
43830 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
43840 '選択肢　2 - 3に変更
43850 case 1:
43860 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
43870 'リリース時 case 2コメント解除
43880 case 2:
43890 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
43900 case else:
43910 goto Kabara_Aishou_Top2:
43920 end select
43930 endif
43940 '十字キー　上　、カーソル　上
43950 if ((key$ = chr$(30)) or (y = -1)) then
43960 select case No
43970 case 0:
43980 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
43990 case 1:
44000 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
44010 case 2:
44020 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
44030 case else:
44040 goto Kabara_Aishou_Top2:
44050 end select
44060 endif
44070 endif
44080 end
44090 '十字キー　上下:選択
44100 'ジョイパッド 右:決定
44110 if ((bg = 2) or (key$ = chr$(13))) then
44120 select case No
44130 '1.自分と異性の相性
44140 case 0:
44150 '未実装
44160 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
44170 '2男女の相性 男性の名前入力に飛ぶ
44180 case 1:
44190 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
44200 case 2:
44210 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
44220 end select
44230 endif
44240 '0.男女の相性　トップ画面　ここまで
44250 '1.男女の相性 ここから
44260 '1-1.男性の名前を入力
44270 Danjyo_Aisyou_Input_Name_male:
44280 No=0:color RGB(255,255,255)
44290 '入力:キーボード
44300 cls 3:init "kb:2"
44310 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
44320 gload Gazo$ + "downscreen.png",0,0,800
44330 for i=0 to 3
44340 buf_male_year(i)=0
44350 next i
44360 if ex_info$(1)<>"JP" then
44370 play "":color rgb(255,0,0):male_name$ = ""
44380 locate 0,1
44390 print "Male Compatibility" + chr$(13) + chr$(13)
44400 color rgb(255,255,255):
44410 locate 0,3
44420 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
44430 locate 0,15:color rgb(0,0,0)
44440 Input "Man's Name:",male_name$
44450 else
44460 '****************************************************************************************************
44470 'WUXG(1920x1200)の時ここから
44480 '****************************************************************************************************
44490 play "":color rgb(255,0,0):male_name$ = ""
44500 locate 0,1
44510 print "男性の相性" + chr$(13) + chr$(13)
44520 color rgb(255,255,255):
44530 locate 0,3
44540 print "男性の相性を求めます。男性の名前を" + chr$(13)
44550 print "入れてください" + chr$(13)
44560 locate 0,15:color rgb(0,0,0)
44570 Input "男性の名前:",male_name$
44580 '****************************************************************************************************
44590 'WUXG(1920x1200)の時ここまで
44600 '****************************************************************************************************
44610 endif
44620 '-------------------------------------------
44630 '1-2:男性の生まれた年代
44640 Danjyo_Aisyou_Input_Born_Year:
44650 No=0:color RGB(255,255,255)
44660 cls 3:init "kb:4"
44670 '****************************************************************************************************
44680 'WUXG(1920x1200)の時ここから
44690 '****************************************************************************************************
44700 gload Gazo$ + "Screen1.png",0,0,0
44710 gload Gazo$ + "downscreen.png",0,0,800
44720 '****************************************************************************************************
44730 'WUXG(1920x1200)の時ここから
44740 '****************************************************************************************************
44750 play "":color rgb(255,0,0)
44760 '-------------------------------------------
44770 font 48
44780 if ex_info$(1)<>"JP" then
44790 locate 0,1
44800 color rgb(255,255,255)
44810 print "Please enter the man's birth year" + chr$(13)
44820 color rgb(255,255,255)
44830 locate 1,3
44840 print "Man's Birth Year (4 digits):";buf_male_year$
44850 else
44860 '****************************************************************************************************
44870 'WUXG(1920x1200)の時ここから
44880 '****************************************************************************************************
44890 locate 0,1
44900 '文字色：黒　 color rgb(0,0,0)
44910 color rgb(255,255,255)
44920 print "男性の生まれた年代を入れて下さい" + chr$(13)
44930 color rgb(255,255,255)
44940 locate 1,3
44950 print "男性の生まれた年代(西暦4桁):";buf_male_year$
44960 '****************************************************************************************************
44970 'WUXG(1920x1200)の時ここから
44980 '****************************************************************************************************
44990 endif
45000 color rgb(255,255,255)
45010 'locate 4,6:print ":7"
45020 'locate 9,6:print ":8"
45030 'locate 12,6:print ":9"
45040 locate 4,6
45050 print ":7  :8  :9" + chr$(13)
45060 color rgb(255,255,255)
45070 locate 4,8
45080 print ":4  :5  :6" + chr$(13)
45090 color rgb(255,255,255)
45100 locate 4,10
45110 print ":1  :2  :3" + chr$(13)
45120 locate 4,12
45130 print "    :0"
45140 locate 12,12
45150 color rgb(0,0,255)
45160 print ":Ok"
45170 sp_on 4,0: sp_on 5,0:sp_on 6,0
45180 sp_on 7,0:sp_on 8,0:sp_on 9,0
45190 sp_on 10,0:sp_on 11,0:sp_on 12,0
45200 sp_on 13,0:sp_on 14,1
45210 '-------------------------------------------------------------------------------------
45220 Danjyo_Aisyou_Input_Male_Born_Year2:
45230 key$="":bg=0:y=0:y2=0:bg2=0:
45240 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45250 key$ = inkey$
45260 bg = strig(1)
45270 y = stick(1)
45280 y2 = stick(0)
45290 bg2=strig(0)
45300 pause 200
45310 wend
45320 '十字キー　ここから
45330 '上の矢印　または、十字キー上
45340 if ((y = -1) or (key$ = chr$(30))) then
45350 select case No
45360 'No=-1:okのとき:初期の状態
45370 '0kボタンから３に移動
45380 '上に行く 処理
45390 case -1:
45400 No=3:sp_on 12,1:sp_on 14,0
45410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45420 '選択肢:3
45430 '3ボタンから 6に移動
45440 case 3:
45450 No=6:sp_on 12,0:sp_on 11,1
45460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45470 '6ボタンから ９に移動
45480 case 6:
45490 No=9:sp_on 10,1:sp_on 11,0
45500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45510 '6ボタンから ９に移動　ここまで
45520 '9で上を押して何もしない
45530 case 9:
45540 '何もしない
45550 No=9
45560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45570 '9で上を押しても何もしない　ここまで
45580 '上　 0ボタンから2ボタン
45590 'sp_on 6,1:1
45600 'sp_on 8,1:5
45610 'sp_on 7,1:7
45620 case 0:
45630 No=2:sp_on 13,0:sp_on 9,1:
45640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45650 '上  0ボタンから2ボタン　ここまで
45660 '2から５になる 上
45670 case 2:
45680 No=5:sp_on 8,1:sp_on 9,0:
45690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45700 case 5:
45710 No=8:sp_on 7,1:sp_on 8,0
45720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45730 case 8:
45740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45750 case 1:
45760 No=4:sp_on 5,1:sp_on 6,0
45770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45780 case 4:
45790 No=7:sp_on 4,1:sp_on 5,0
45800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45810 case 7:
45820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45830 end select
45840 endif
45850 '左３　ここまで
45860 '下の矢印
45870 '中央 2
45880 if ((y=1) or (key$ = chr$(31))) then
45890 select case No
45900 '9から６に下げる
45910 case 9:
45920 No=6:sp_on 11,1:sp_on 10,0
45930 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45940 '6から３に下げる
45950 case 6:
45960 No=3:sp_on 12,1:sp_on 11,0
45970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45980 '3から０ｋに変える
45990 case 3:
46000 No=-1:sp_on 14,1:sp_on 12,0
46010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46020 'Okから下のボタンを押しても何もしない
46030 case -1:
46040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46050 case 8:
46060 No=5:sp_on 8,1:sp_on 7,0
46070 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46080 case 5:
46090 No=2:sp_on 9,1:sp_on 8,0
46100 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46110 case 2:
46120 No=0:sp_on 13,1:sp_on 9,0
46130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46140 case 0:
46150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46160 case 7:
46170 No=4:sp_on 5,1:sp_on 4,0
46180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46190 case 4:
46200 No=1:sp_on 6,1:sp_on 5,0
46210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46220 case 1:
46230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46240 end select
46250 endif
46260 '左へボタン 十字キー　左　or 　カーソル左
46270 if ((y2 = -1) or (key$ = chr$(29))) then
46280 select case No
46290 'Ok ボタン  Okから　左　０に行く
46300 case -1:
46310 No=0:sp_on 13,1:sp_on 14,0
46320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46330 '0 ボタン  左　何もしない
46340 case 0:
46350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46360 case 3:
46370 No=2:sp_on 9,1:sp_on 12,0:
46380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46390 case 2:
46400 No=1:sp_on 6,1:sp_on 9,0:
46410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46420 case 1:
46430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46440 case 6:
46450 No=5:sp_on 8,1:sp_on 11,0
46460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46470 case 5:
46480 No=4:sp_on 5,1:sp_on 8,0
46490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46500 case 4:
46510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46520 case 9:
46530 No=8:sp_on 7,1:sp_on 10,0
46540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46550 case 8:
46560 No=7:sp_on 4,1:sp_on 7,0
46570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46580 case 7:
46590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46600 end select
46610 endif
46620 '右  十字キー　右　or カーソル　右
46630 if ((y2 = 1) or (key$ = chr$(28))) then
46640 select case No
46650 '0ボタンからokボタン右に移動
46660 case 0:
46670 No=-1:sp_on 14,1:sp_on 13,0
46680 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46690 '0ボタンからokボタン 右に移動　ここまで
46700 'OKボタンで右を押して何もしない
46710 case -1:
46720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46730 case 1:
46740 No=2:sp_on 9,1:sp_on 6,0
46750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46760 case 2:
46770 No=3:sp_on 12,1:sp_on 9,0
46780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46790 case 3:
46800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46810 case 4:
46820 No=5:sp_on 8,1:sp_on 5,0
46830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46840 case 5:
46850 No=6:sp_on 11,1:sp_on 8,0
46860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46870 case 7:
46880 No=8:sp_on 7,1:sp_on 4,0
46890 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46900 case 8:
46910 No=9:sp_on 10,1:sp_on 7,0
46920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46930 case 9:
46940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46950 case 6:
46960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46970 end select
46980 'Okから右ボタンを押して何もしない ここまで
46990 endif
47000 '十字キー　ここまで
47010 '==============================
47020 'ここから
47030 '==============================
47040 if ((bg = 2) or (key$ = chr$(13))) then
47050 select case count
47060 case 0:
47070 count = 1
47080 if (No = -1) then
47090 count = 0:No=0
47100 buf_male_year(0) = No
47110 'Okボタンを押したとき
47120 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47130 else
47140 'Okボタン以外が押されたとき
47150 if (No >= 1 and No <= 2) then
47160 buf_year$="":buf_year$ = str$(No) + "***"
47170 buf_year = No:a= No
47180 buf_Jyoushi_Born_Day(0) = No
47190 if ex_info$(1)<>"JP" then
47200 locate 1,3
47210 color rgb(255,255,255)
47220 print "Year of birth of the male (4 digits AD):";buf_year$
47230 else
47240 count=0
47250 ui_msg"The number is out of range."
47260 endif
47270 else
47280 '****************************************************************************************************
47290 'WUXG(1920x1200)の時ここから
47300 '****************************************************************************************************
47310 locate 1,3
47320 color rgb(255,255,255)
47330 print "男性の生まれた年代(西暦4桁):";buf_year$
47340 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47350 '****************************************************************************************************
47360 'WUXG(1920x1200)の時ここまで
47370 '****************************************************************************************************
47380 else
47390 count=0
47400 ui_msg"数字が範囲外になります。"
47410 endif
47420 buf_year$="":buf_year=0
47430 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47440 endif
47450 'endif
47460 case 1:
47470 count = 2
47480 if (No = -1) then
47490 count = 1
47500 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47510 else
47520 '****************************************************************************************************
47530 'WUXG(1920x1200)の時ここから
47540 '****************************************************************************************************
47550 buf_year = a * 10 + No
47560 b=buf_year
47570 buf_year$ = str$(buf_year) + "**"
47580 buf_male_year(0)=buf_year
47590 locate 1,3
47600 color rgb(255,255,255)
47610 print "                                                                "
47620 locate 1,3
47630 print "男性の生まれた年代(西暦4桁):" + buf_year$
47640 'if (No = -1) then
47650 'count=1
47660 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47670 '****************************************************************************************************
47680 'WUXG(1920x1200)の時ここまで
47690 '****************************************************************************************************
47700 endif
47710 case 2:
47720 count=3
47730 if (No=-1) then
47740 count =2
47750 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47760 else
47770 buf_year = b * 10 + No
47780 c=buf_year
47790 buf_year$ = str$(buf_year) + "*"
47800 buf_male_year(0) = buf_year
47810 locate 1,3
47820 color rgb(255,255,255)
47830 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
47840 if ex_info$(1)<>"JP" then
47850 locate 1,3
47860 print "Year of birth of the male (4 digits AD):";buf_year$
47870 else
47880 '****************************************************************************************************
47890 'WUXG(1920x1200)の時ここから
47900 '****************************************************************************************************
47910 locate 1,3
47920 print "男性の生まれた年代(西暦4桁):";buf_year$
47930 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47940 '****************************************************************************************************
47950 'WUXG(1920x1200)の時ここまで
47960 '****************************************************************************************************
47970 endif
47980 endif
47990 case 3:
48000 count=4
48010 if (No = -1) then
48020 No=0
48030 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48040 else
48050 buf_year = c * 10 + No
48060 buf_year$ = str$(buf_year)
48070 buf_male_year(0) = buf_year
48080 if ex_info$(1)<>"JP" then
48090 locate 1,3
48100 color RGB(255,255,255)
48110 print "                                      "
48120 locate 1,3
48130 print "Year of birth of the male (4 digits AD):";buf_year$
48140 else
48150 locate 1,3
48160 color RGB(255,255,255)
48170 print "                                      "
48180 locate 1,3
48190 print "男性の生まれた年代(西暦4桁):";buf_year$
48200 endif
48210 buf_year=val(buf_year$)
48220 'year=val(buf_year$)
48230 'if (No=-1) then
48240 'goto Input_Born_Month:
48250 'else
48260 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48270 endif
48280 case 4:
48290 'bufyear=buf_year
48300 if (No=-1) then
48310 buf_year = val(buf_year$)
48320 buf_male_year(0)=buf_year
48330 sp_on 14,0:No=0
48340 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48350 else
48360 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48370 endif
48380 end select
48390 endif
48400 '===========================
48410 'ここまでを部下のところにコピーする.
48420 '===========================
48430 if (bg2 = 2) then
48440 select case count2
48450 case 0:
48460 if (No = -1) then
48470 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
48480 count=0
48490 if ex_info$(1)<>"JP" then
48500 locate 1,3
48510 color rgb(255,255,255)
48520 print "                                      "
48530 locate 1,3
48540 print "Year of birth of the male (4 digits AD):" + buf_male_year$
48550 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48560 else
48570 '(buf_year=0) then
48580 buf_male_year=0:buf_male_year$="****"
48590 locate 1,3
48600 print "                                       "
48610 locate 1,3
48620 print "Year of birth of the male (4 digits AD):"+buf_male_year$
48630 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48640 else
48650 locate 1,3
48660 color rgb(255,255,255)
48670 print "                                      "
48680 locate 1,3
48690 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
48700 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48710 else
48720 '(buf_year=0) then
48730 buf_male_year=0:buf_male_year$="****"
48740 locate 1,3
48750 print "                                       "
48760 locate 1,3
48770 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
48780 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48790 endif
48800 endif
48810 end select
48820 endif
48830 '-------生まれた年代　男性-------------
48840 '-------生まれた月　男性-------------
48850 '1-2:男性の生まれた月
48860 Danjyo_Aisyou_Input_Male_Born_Month:
48870 cls 3:play "":count=0:count2=0
48880 'No=-1:Okのとき
48890 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
48900 for i=0 to 1
48910 buf_male_month(i)=0
48920 next i
48930 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
48940 '****************************************************************************************************
48950 'WUXG(1920x1200)の時ここから
48960 '****************************************************************************************************
48970 gload Gazo$ + "Screen1.png",0,0,0
48980 gload Gazo$ + "downscreen.png",0,0,800
48990 '****************************************************************************************************
49000 'WUXG(1920x1200)の時ここまで
49010 '****************************************************************************************************
49020 'Init"kb:4"
49030 '音声ファイル再生 2023.06.07
49040 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
49050 '****************************************************************************************************
49060 'WUXG(1920x1200)の時ここから
49070 '****************************************************************************************************
49080 font 48
49090 '****************************************************************************************************
49100 'WUXG(1920x1200)の時ここまで
49110 '****************************************************************************************************
49120 locate 0,1
49130 '文字色：黒　 color rgb(0,0,0)
49140 '文字色:白
49150 color rgb(255,255,255)
49160 print "男性の生まれた月を入れて下さい" + chr$(13)
49170 '文字色:白
49180 color rgb(255,255,255)
49190 locate 1,3
49200 '文字色:白
49210 print "男性の生まれた月(1月~12月):"+buf_male_Month$
49220 color rgb(255,255,255)
49230 'locate 4,6:print ":7"
49240 'locate 9,6:print ":8"
49250 'locate 12,6:print ":9"
49260 locate 4,6
49270 '文字色:赤
49280 print ":7  :8  :9" + chr$(13)
49290 color rgb(255,255,255)
49300 locate 4,8
49310 print ":4  :5  :6" + chr$(13)
49320 color rgb(255,255,255)
49330 locate 4,10
49340 print ":1  :2  :3" + chr$(13)
49350 locate 4,12
49360 print "    :0"
49370 locate 12,12
49380 color rgb(0,0,255)
49390 print ":Ok"
49400 sp_on 4,0: sp_on 5,0:sp_on 6,0
49410 sp_on 7,0:sp_on 8,0:sp_on 9,0
49420 sp_on 10,0:sp_on 11,0:sp_on 12,0
49430 sp_on 13,0:sp_on 14,1
49440 '----------------------------------------------------------------------------------------
49450 Danjyo_Aisyou_Input_Male_Born_Month2:
49460 key$="":bg=0:y=0:y2=0:bg2=0
49470 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49480 key$ = inkey$
49490 bg = strig(1)
49500 y = stick(1)
49510 y2 = stick(0)
49520 bg2 = strig(0)
49530 pause 200
49540 wend
49550 '十字キー　ここから
49560 '上の矢印　または、十字キー上
49570 if ((y = -1) or (key$ = chr$(30))) then
49580 select case No
49590 'No=-1:okのとき:初期の状態
49600 '0kボタンから３に移動
49610 '上に行く 処理
49620 case -1:
49630 No=3:sp_on 12,1:sp_on 14,0
49640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49650 '選択肢:3
49660 '3ボタンから 6に移動
49670 case 3:
49680 No=6:sp_on 12,0:sp_on 11,1
49690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49700 '6ボタンから ９に移動
49710 case 6:
49720 No=9:sp_on 10,1:sp_on 11,0
49730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49740 '6ボタンから ９に移動　ここまで
49750 '9で上を押して何もしない
49760 case 9:
49770 '何もしない
49780 No=9
49790 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49800 '9で上を押しても何もしない　ここまで
49810 '上　 0ボタンから2ボタン
49820 'sp_on 6,1:1
49830 'sp_on 8,1:5
49840 'sp_on 7,1:7
49850 case 0:
49860 No=2:sp_on 13,0:sp_on 9,1:
49870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49880 '上  0ボタンから2ボタン　ここまで
49890 '2から５になる 上
49900 case 2:
49910 No=5:sp_on 8,1:sp_on 9,0:
49920 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49930 case 5:
49940 No=8:sp_on 7,1:sp_on 8,0
49950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49960 case 8:
49970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49980 case 1:
49990 No=4:sp_on 5,1:sp_on 6,0
50000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50010 case 4:
50020 No=7:sp_on 4,1:sp_on 5,0
50030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50040 case 7:
50050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50060 end select
50070 endif
50080 '左３　ここまで
50090 '下の矢印
50100 '中央 2
50110 if ((y=1) or (key$ = chr$(31))) then
50120 select case No
50130 '9から６に下げる
50140 case 9:
50150 No=6:sp_on 11,1:sp_on 10,0
50160 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
50170 '6から３に下げる
50180 case 6:
50190 No=3:sp_on 12,1:sp_on 11,0
50200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50210 '3から０ｋに変える
50220 case 3:
50230 No=-1:sp_on 14,1:sp_on 12,0
50240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50250 'Okから下のボタンを押しても何もしない
50260 case -1:
50270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50280 case 8:
50290 No=5:sp_on 8,1:sp_on 7,0
50300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50310 case 5:
50320 No=2:sp_on 9,1:sp_on 8,0
50330 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50340 case 2:
50350 No=0:sp_on 13,1:sp_on 9,0
50360 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50370 case 0:
50380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50390 case 7:
50400 No=4:sp_on 5,1:sp_on 4,0
50410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50420 case 4:
50430 No=1:sp_on 6,1:sp_on 5,0
50440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50450 case 1:
50460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50470 end select
50480 endif
50490 '左へボタン 十字キー　左　or 　カーソル左
50500 if ((y2 = -1) or (key$ = chr$(29))) then
50510 select case No
50520 'Ok ボタン  Okから　左　０に行く
50530 case -1:
50540 No=0:sp_on 13,1:sp_on 14,0
50550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50560 '0 ボタン  左　何もしない
50570 case 0:
50580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50590 case 3:
50600 No=2:sp_on 9,1:sp_on 12,0:
50610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50620 case 2:
50630 No=1:sp_on 6,1:sp_on 9,0:
50640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50650 case 1:
50660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50670 case 6:
50680 No=5:sp_on 8,1:sp_on 11,0
50690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50700 case 5:
50710 No=4:sp_on 5,1:sp_on 8,0
50720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50730 case 4:
50740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50750 case 9:
50760 No=8:sp_on 7,1:sp_on 10,0
50770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50780 case 8:
50790 No=7:sp_on 4,1:sp_on 7,0
50800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50810 case 7:
50820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50830 end select
50840 endif
50850 '右  十字キー　右　or カーソル　右
50860 if ((y2 = 1) or (key$ = chr$(28))) then
50870 select case No
50880 '0ボタンからokボタン右に移動
50890 case 0:
50900 No=-1:sp_on 14,1:sp_on 13,0
50910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50920 '0ボタンからokボタン 右に移動　ここまで
50930 'OKボタンで右を押して何もしない
50940 case -1:
50950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50960 case 1:
50970 No=2:sp_on 9,1:sp_on 6,0
50980 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50990 case 2:
51000 No=3:sp_on 12,1:sp_on 9,0
51010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51020 case 3:
51030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51040 case 4:
51050 No=5:sp_on 8,1:sp_on 5,0
51060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51070 case 5:
51080 No=6:sp_on 11,1:sp_on 8,0
51090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51100 case 7:
51110 No=8:sp_on 7,1:sp_on 4,0
51120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51130 case 8:
51140 No=9:sp_on 10,1:sp_on 7,0
51150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51160 case 9:
51170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51180 case 6:
51190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51200 end select
51210 'Okから右ボタンを押して何もしない ここまで
51220 endif
51230 '十字キー　ここまで
51240 '右の丸ボタン + Enter key 決定キー
51250 if ((bg=2) or (key$=chr$(13))) then
51260 select case count
51270 case 0:
51280 if (No=-1) then No=0
51290 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
51300 if (buf_male_month > 1 and buf_male_month < 10)  then
51310 buf_male_Month$ = str$(buf_male_month)
51320 'buf_month=No
51330 endif
51340 if (buf_male_month = 1)  then
51350 buf_male_Month$ = str$(buf_male_month) + "*"
51360 'c=buf_month
51370 endif
51380 locate 1,3
51390 print "                                     "
51400 color RGB(255,255,255)
51410 locate 1,3
51420 print "男性の生まれた月(1月~12月):" + buf_male_Month$
51430 goto Danjyo_Aisyou_Input_Male_Born_Month2:
51440 case 1:
51450 count = 2:
51460 'c = val(buf_Month$)
51470 if (No = -1) then
51480 'count=0
51490 No=0
51500 month=buf_male_month
51510 buf_male_month=val(buf_male_Month$)
51520 month=buf_male_month
51530 buf_Jyoushi_Born_Day(1)=month
51540 '生まれた日に飛ぶ
51550 goto Danjyo_Aisyou_Input_Male_Born_Day:
51560 else
51570 buf_male_month = c*10 + No
51580 'if (buf_month = 1) then
51590 'buf_Month$ = str$(buf_month)
51600 'endif
51610 buf_male_Month$ = str$(buf_male_month)
51620 buf_Jyoushi_Born_Day(1) = buf_male_month
51630 locate 0,3
51640 print "                                           "
51650 locate 1,3
51660 color Rgb(255,255,255)
51670 print "男性の生まれた月(1月~12月):" + buf_male_Month$
51680 goto Danjyo_Aisyou_Input_Male_Born_Month2:
51690 endif
51700 case 2:
51710 '==================================
51720 '何もしない
51730 'coun = 2
51740 '==================================
51750 'c= val(buf_Month$)
51760 'buf_month = c*10 + No
51770 'buf_Month$ = str$(buf_month)
51780 'locate 2,3
51790 'print "上司の生まれた月(1月～12月):";buf_Month$
51800 'goto Jyoushi_Input_Born_Month2:
51810 'case 3:
51820 'count=4
51830 'b=val(buf_month$)
51840 'buf_month=c*10+No
51850 'buf_Month$=str$(buf_month)
51860 'locate 2,3
51870 'print "上司の生まれた月(1月～12月):";buf_Month$
51880 'buf_month=val(buf_Month$)
51890 'year=val(buf_year$)
51900 if (No=-1) then
51910 No=0
51920 goto Danjyo_Aisyou_Input_Male_Born_Day:
51930 else
51940 goto Danjyo_Aisyou_Input_Male_Born_Day2:
51950 endif
51960 'case 4:
51970 'bufyear=buf_year
51980 'if (No=-1) then
51990 'buf_month = val(buf_Month$)
52000 'month = buf_month
52010 'sp_on 14,0
52020 'goto Input_Born_Day:
52030 'else
52040 'goto Input_Born_Month2:
52050 'endif
52060 end select
52070 endif
52080 '左の丸ボタン　キャンセル
52090 if (bg2=2) then
52100 select case count2
52110 case 0:
52120 if (No = -1) then
52130 buf_male_month=0:buf_male_Month$="**"
52140 count=0
52150 'goto rewrite2:
52160 else
52170 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
52180 buf_male_month = 0:buf_male_Month$ = "**"
52190 locate 0,3
52200 color rgb(255,255,255)
52210 print "                                       "
52220 goto rewrite2:
52230 if (No>12) then
52240 ui_msg"値が範囲外です。"
52250 goto rewrite2:
52260 endif
52270 endif
52280 endif
52290 rewrite2:
52300 locate 2,3
52310 color rgb(255,255,255)
52320 print "                                      "
52330 locate 2,3
52340 print "男性の生まれた月(1月~12月):"+buf_male_Month$
52350 goto Danjyo_Aisyou_Input_Male_Born_Month2:
52360 end select
52370 'endif
52380 endif
52390 end
52400 '-------生まれた月　男性 ここまで-------------
52410 '-------生まれた日　男性 ここから-------------
52420 Danjyo_Aisyou_Input_Male_Born_Day:
52430 cls 3:play "":count=0:count2=0
52440 'No=-1:Okのとき
52450 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
52460 for i=0 to 1
52470 buf_day(i)=0
52480 next i
52490 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
52500 '****************************************************************************************************
52510 'WUXG(1920x1200)の時ここから
52520 '****************************************************************************************************
52530 gload Gazo$ + "Screen1.png",0,0,0
52540 gload Gazo$ + "downscreen.png",0,0,800
52550 '****************************************************************************************************
52560 'WUXG(1920x1200)の時ここまで
52570 '****************************************************************************************************
52580 'Init"kb:4"
52590 '音声ファイル再生 2023.06.07
52600 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
52610 font 48
52620 locate 0,1
52630 '文字色：黒　 color rgb(0,0,0)
52640 '文字色:白
52650 color rgb(255,255,255)
52660 print "男性の生まれた日を入れて下さい" + chr$(13)
52670 '文字色:白
52680 color rgb(255,255,255)
52690 locate 1,3
52700 '文字色:白
52710 print "男性の生まれた日(1月~31月):" + buf_Day$
52720 color rgb(255,255,255)
52730 'locate 4,6:print ":7"
52740 'locate 9,6:print ":8"
52750 'locate 12,6:print ":9"
52760 locate 4,6
52770 '文字色:赤
52780 print ":7  :8  :9" + chr$(13)
52790 color rgb(255,255,255)
52800 locate 4,8
52810 print ":4  :5  :6" + chr$(13)
52820 color rgb(255,255,255)
52830 locate 4,10
52840 print ":1  :2  :3" + chr$(13)
52850 locate 4,12
52860 print "    :0"
52870 locate 12,12
52880 color rgb(0,0,255)
52890 print ":Ok"
52900 sp_on 4,0: sp_on 5,0:sp_on 6,0
52910 sp_on 7,0:sp_on 8,0:sp_on 9,0
52920 sp_on 10,0:sp_on 11,0:sp_on 12,0
52930 sp_on 13,0:sp_on 14,1
52940 '-------------------------------------------------
52950 Danjyo_Aisyou_Input_Male_Born_Day2:
52960 key$="":bg=0:y=0:y2=0:bg2=0
52970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
52980 key$ = inkey$
52990 bg = strig(1)
53000 y = stick(1)
53010 y2 = stick(0)
53020 bg2 = strig(0)
53030 pause 200
53040 wend
53050 '十字キー　ここから
53060 '上の矢印　または、十字キー上
53070 if ((y = -1) or (key$ = chr$(30))) then
53080 select case No
53090 'No=-1:okのとき:初期の状態
53100 '0kボタンから３に移動
53110 '上に行く 処理
53120 case -1:
53130 No=3:sp_on 12,1:sp_on 14,0
53140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53150 '選択肢:3
53160 '3ボタンから 6に移動
53170 case 3:
53180 No=6:sp_on 12,0:sp_on 11,1
53190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53200 '6ボタンから ９に移動
53210 case 6:
53220 No=9:sp_on 10,1:sp_on 11,0
53230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53240 '6ボタンから ９に移動　ここまで
53250 '9で上を押して何もしない
53260 case 9:
53270 '何もしない
53280 No=9
53290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53300 '9で上を押しても何もしない　ここまで
53310 '上　 0ボタンから2ボタン
53320 'sp_on 6,1:1
53330 'sp_on 8,1:5
53340 'sp_on 7,1:7
53350 case 0:
53360 No=2:sp_on 13,0:sp_on 9,1:
53370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53380 '上  0ボタンから2ボタン　ここまで
53390 '2から５になる 上
53400 case 2:
53410 No=5:sp_on 8,1:sp_on 9,0:
53420 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53430 case 5:
53440 No=8:sp_on 7,1:sp_on 8,0
53450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53460 case 8:
53470 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53480 case 1:
53490 No=4:sp_on 5,1:sp_on 6,0
53500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53510 case 4:
53520 No=7:sp_on 4,1:sp_on 5,0
53530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53540 case 7:
53550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53560 end select
53570 endif
53580 '左３　ここまで
53590 '下の矢印
53600 '中央 2
53610 if ((y=1) or (key$ = chr$(31))) then
53620 select case No
53630 '9から６に下げる
53640 case 9:
53650 No=6:sp_on 11,1:sp_on 10,0
53660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53670 '6から３に下げる
53680 case 6:
53690 No=3:sp_on 12,1:sp_on 11,0
53700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53710 '3から０ｋに変える
53720 case 3:
53730 No=-1:sp_on 14,1:sp_on 12,0
53740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53750 'Okから下のボタンを押しても何もしない
53760 case -1:
53770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53780 case 8:
53790 No=5:sp_on 8,1:sp_on 7,0
53800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53810 case 5:
53820 No=2:sp_on 9,1:sp_on 8,0
53830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53840 case 2:
53850 No=0:sp_on 13,1:sp_on 9,0
53860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53870 case 0:
53880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53890 case 7:
53900 No=4:sp_on 5,1:sp_on 4,0
53910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53920 case 4:
53930 No=1:sp_on 6,1:sp_on 5,0
53940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53950 case 1:
53960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53970 end select
53980 endif
53990 '左へボタン 十字キー　左　or 　カーソル左
54000 if ((y2 = -1) or (key$ = chr$(29))) then
54010 select case No
54020 'Ok ボタン  Okから　左　０に行く
54030 case -1:
54040 No=0:sp_on 13,1:sp_on 14,0
54050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54060 '0 ボタン  左　何もしない
54070 case 0:
54080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54090 case 3:
54100 No=2:sp_on 9,1:sp_on 12,0:
54110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54120 case 2:
54130 No=1:sp_on 6,1:sp_on 9,0:
54140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54150 case 1:
54160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54170 case 6:
54180 No=5:sp_on 8,1:sp_on 11,0
54190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54200 case 5:
54210 No=4:sp_on 5,1:sp_on 8,0
54220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54230 case 4:
54240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54250 case 9:
54260 No=8:sp_on 7,1:sp_on 10,0
54270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54280 case 8:
54290 No=7:sp_on 4,1:sp_on 7,0
54300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54310 case 7:
54320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54330 end select
54340 endif
54350 '右  十字キー　右　or カーソル　右
54360 if ((y2 = 1) or (key$ = chr$(28))) then
54370 select case No
54380 '0ボタンからokボタン右に移動
54390 case 0:
54400 No=-1:sp_on 14,1:sp_on 13,0
54410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54420 '0ボタンからokボタン 右に移動　ここまで
54430 'OKボタンで右を押して何もしない
54440 case -1:
54450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54460 case 1:
54470 No=2:sp_on 9,1:sp_on 6,0
54480 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54490 case 2:
54500 No=3:sp_on 12,1:sp_on 9,0
54510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54520 case 3:
54530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54540 case 4:
54550 No=5:sp_on 8,1:sp_on 5,0
54560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54570 case 5:
54580 No=6:sp_on 11,1:sp_on 8,0
54590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54600 case 7:
54610 No=8:sp_on 7,1:sp_on 4,0
54620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54630 case 8:
54640 No=9:sp_on 10,1:sp_on 7,0
54650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54660 case 9:
54670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54680 case 6:
54690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54700 end select
54710 'Okから右ボタンを押して何もしない ここまで
54720 endif
54730 '十字キー　ここまで
54740 '右の丸ボタン + Enter key 決定キー
54750 if ((bg=2) or (key$=chr$(13))) then
54760 select case count
54770 case 0:
54780 if (No=-1) then No=0
54790 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
54800 if (buf_male_day > 1 and buf_male_day < 10)  then
54810 buf_male_Day$ = str$(buf_male_day)
54820 'buf_month=No
54830 endif
54840 if (buf_male_day = 1)  then
54850 buf_male_Day$ = str$(buf_male_day) + "*"
54860 'c=buf_month
54870 endif
54880 locate 1,3
54890 print "                                     "
54900 color RGB(255,255,255)
54910 locate 1,3
54920 print "男性の生まれた日(1月~31月):" + buf_male_Day$
54930 goto Danjyo_Aisyou_Input_Male_Born_Day2:
54940 case 1:
54950 count = 2:
54960 'c = val(buf_Month$)
54970 if (No = -1) then
54980 'count=0
54990 No=0
55000 day=buf_male_Day
55010 buf_male_Day=val(buf_male_Day$)
55020 day=buf_male_Day
55030 buf_Jyoushi_Born_Day(2)=day
55040 '生まれた日に飛ぶ
55050 goto Danjyo_Aisyou_Input_Male_Born_Day:
55060 else
55070 buf_male_Day = c*10 + No
55080 'if (buf_month = 1) then
55090 'buf_Month$ = str$(buf_month)
55100 'endif
55110 buf_male_Day$ = str$(buf_male_Day)
55120 buf_male_Born_Day(2) = buf_male_Day:
55130 locate 0,3
55140 print "                                           "
55150 locate 1,3
55160 color Rgb(255,255,255)
55170 print "男性の生まれた月(1月~12月):" + buf_male_Day$
55180 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55190 endif
55200 case 2:
55210 '==================================
55220 '何もしない
55230 'coun = 2
55240 '==================================
55250 'c= val(buf_Month$)
55260 'buf_month = c*10 + No
55270 'buf_Month$ = str$(buf_month)
55280 'locate 2,3
55290 'print "上司の生まれた月(1月～12月):";buf_Month$
55300 'goto Jyoushi_Input_Born_Month2:
55310 'case 3:
55320 'count=4
55330 'b=val(buf_month$)
55340 'buf_month=c*10+No
55350 'buf_Month$=str$(buf_month)
55360 'locate 2,3
55370 'print "上司の生まれた月(1月～12月):";buf_Month$
55380 'buf_month=val(buf_Month$)
55390 'year=val(buf_year$)
55400 if (No=-1) then
55410 No=0
55420 goto Danjyo_Aisyou_Input_Male_Born_Day:
55430 else
55440 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55450 endif
55460 'case 4:
55470 'bufyear=buf_year
55480 'if (No=-1) then
55490 'buf_month = val(buf_Month$)
55500 'month = buf_month
55510 'sp_on 14,0
55520 'goto Input_Born_Day:
55530 'else
55540 'goto Input_Born_Month2:
55550 'endif
55560 end select
55570 endif
55580 '左の丸ボタン　キャンセル
55590 if (bg2=2) then
55600 select case count2
55610 case 0:
55620 if (No = -1) then
55630 buf_male_day=0:buf_male_Day$="**"
55640 count=0
55650 'goto rewrite2:
55660 else
55670 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
55680 buf_male_day = 0:buf_male_Day$ = "**"
55690 locate 0,3
55700 color rgb(255,255,255)
55710 print "                                       "
55720 goto rewrite2:
55730 if (No>12) then
55740 ui_msg"値が範囲外です。"
55750 goto rewrite2:
55760 endif
55770 endif
55780 endif
55790 rewrite2:
55800 locate 2,3
55810 color rgb(255,255,255)
55820 print "                                      "
55830 locate 2,3
55840 print "男性の生まれた日(1月~31月):"+buf_male_Day$
55850 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55860 end select
55870 'endif
55880 endif
55890 end
55900 '-------生まれた日　女性　ここまで-------------
55910 '1-1.女性の名前を入力
55920 Danjyo_Aisyou_Input_Name_female:
55930 No=0:color RGB(255,255,255)
55940 '入力:キーボード
55950 cls 3:init "kb:2"
55960 '****************************************************************************************************
55970 'WUXG(1920x1200)の時ここから
55980 '****************************************************************************************************
55990 gload Gazo$ + "Screen1.png",0,0,0
56000 gload Gazo$ + "downscreen.png",0,0,800
56010 '****************************************************************************************************
56020 'WUXG(1920x1200)の時ここまで
56030 '****************************************************************************************************
56040 play "":color rgb(255,0,0):female_name$ = ""
56050 locate 0,1
56060 print "女性の相性" + chr$(13) + chr$(13)
56070 color rgb(255,255,255):
56080 locate 0,3
56090 print "女性の相性を求めます。男性の名前を" + chr$(13)
56100 print "入れてください" + chr$(13)
56110 locate 0,15:color rgb(0,0,0)
56120 Input "女性の名前:",female_name$
56130 '-------------------------------------------
56140 '-------生まれた年代　女性 ここから-------------
56150 Danjyo_Aisyou_Input_feMale_Born_Year:
56160 cls 3:play "":count=0:count2=0
56170 'No=-1:Okのとき
56180 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
56190 for i=0 to 1
56200 buf_day(i)=0
56210 next i
56220 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56230 gload Gazo$ + "Screen1.png",0,0,0
56240 gload Gazo$ + "downscreen.png",0,0,800
56250 'Init"kb:4"
56260 '音声ファイル再生 2023.06.07
56270 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
56280 '****************************************************************************************************
56290 'WUXG(1920x1200)の時ここから
56300 '****************************************************************************************************
56310 font 48
56320 '****************************************************************************************************
56330 'WUXG(1920x1200)の時ここまで
56340 '****************************************************************************************************
56350 locate 0,1
56360 '文字色：黒　 color rgb(0,0,0)
56370 '文字色:白
56380 color rgb(255,255,255)
56390 print "女性の生まれた年代を入れて下さい" + chr$(13)
56400 '文字色:白
56410 color rgb(255,255,255)
56420 locate 1,3
56430 '文字色:白
56440 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
56450 color rgb(255,255,255)
56460 'locate 4,6:print ":7"
56470 'locate 9,6:print ":8"
56480 'locate 12,6:print ":9"
56490 locate 4,6
56500 '文字色:赤
56510 print ":7  :8  :9" + chr$(13)
56520 color rgb(255,255,255)
56530 locate 4,8
56540 print ":4  :5  :6" + chr$(13)
56550 color rgb(255,255,255)
56560 locate 4,10
56570 print ":1  :2  :3" + chr$(13)
56580 locate 4,12
56590 print "    :0"
56600 locate 12,12
56610 color rgb(0,0,255)
56620 print ":Ok"
56630 sp_on 4,0: sp_on 5,0:sp_on 6,0
56640 sp_on 7,0:sp_on 8,0:sp_on 9,0
56650 sp_on 10,0:sp_on 11,0:sp_on 12,0
56660 sp_on 13,0:sp_on 14,1
56670 '---------------------------------------------
56680 Danjyo_Aisyou_Input_feMale_Born_Year2:
56690 key$="":bg=0:y=0:y2=0:bg2=0:
56700 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
56710 key$ = inkey$
56720 bg = strig(1)
56730 y = stick(1)
56740 y2 = stick(0)
56750 bg2=strig(0)
56760 pause 200
56770 wend
56780 '十字キー　ここから
56790 '上の矢印　または、十字キー上
56800 if ((y = -1) or (key$ = chr$(30))) then
56810 select case No
56820 'No=-1:okのとき:初期の状態
56830 '0kボタンから３に移動
56840 '上に行く 処理
56850 case -1:
56860 No=3:sp_on 12,1:sp_on 14,0
56870 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
56880 '選択肢:3
56890 '3ボタンから 6に移動
56900 case 3:
56910 No=6:sp_on 12,0:sp_on 11,1
56920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56930 '6ボタンから ９に移動
56940 case 6:
56950 No=9:sp_on 10,1:sp_on 11,0
56960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
56970 '6ボタンから ９に移動　ここまで
56980 '9で上を押して何もしない
56990 case 9:
57000 '何もしない
57010 No=9
57020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57030 '9で上を押しても何もしない　ここまで
57040 '上　 0ボタンから2ボタン
57050 'sp_on 6,1:1
57060 'sp_on 8,1:5
57070 'sp_on 7,1:7
57080 case 0:
57090 No=2:sp_on 13,0:sp_on 9,1:
57100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57110 '上  0ボタンから2ボタン　ここまで
57120 '2から５になる 上
57130 case 2:
57140 No=5:sp_on 8,1:sp_on 9,0:
57150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57160 case 5:
57170 No=8:sp_on 7,1:sp_on 8,0
57180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57190 case 8:
57200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57210 case 1:
57220 No=4:sp_on 5,1:sp_on 6,0
57230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57240 case 4:
57250 No=7:sp_on 4,1:sp_on 5,0
57260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57270 case 7:
57280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57290 end select
57300 endif
57310 '左３　ここまで
57320 '下の矢印
57330 '中央 2
57340 if ((y=1) or (key$ = chr$(31))) then
57350 select case No
57360 '9から６に下げる
57370 case 9:
57380 No=6:sp_on 11,1:sp_on 10,0
57390 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57400 '6から３に下げる
57410 case 6:
57420 No=3:sp_on 12,1:sp_on 11,0
57430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57440 '3から０ｋに変える
57450 case 3:
57460 No=-1:sp_on 14,1:sp_on 12,0
57470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57480 'Okから下のボタンを押しても何もしない
57490 case -1:
57500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57510 case 8:
57520 No=5:sp_on 8,1:sp_on 7,0
57530 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57540 case 5:
57550 No=2:sp_on 9,1:sp_on 8,0
57560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57570 case 2:
57580 No=0:sp_on 13,1:sp_on 9,0
57590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57600 case 0:
57610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57620 case 7:
57630 No=4:sp_on 5,1:sp_on 4,0
57640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57650 case 4:
57660 No=1:sp_on 6,1:sp_on 5,0
57670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57680 case 1:
57690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57700 end select
57710 endif
57720 '左へボタン 十字キー　左　or 　カーソル左
57730 if ((y2 = -1) or (key$ = chr$(29))) then
57740 select case No
57750 'Ok ボタン  Okから　左　０に行く
57760 case -1:
57770 No=0:sp_on 13,1:sp_on 14,0
57780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57790 '0 ボタン  左　何もしない
57800 case 0:
57810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57820 case 3:
57830 No=2:sp_on 9,1:sp_on 12,0:
57840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57850 case 2:
57860 No=1:sp_on 6,1:sp_on 9,0:
57870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57880 case 1:
57890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57900 case 6:
57910 No=5:sp_on 8,1:sp_on 11,0
57920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57930 case 5:
57940 No=4:sp_on 5,1:sp_on 8,0
57950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57960 case 4:
57970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57980 case 9:
57990 No=8:sp_on 7,1:sp_on 10,0
58000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58010 case 8:
58020 No=7:sp_on 4,1:sp_on 7,0
58030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58040 case 7:
58050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58060 end select
58070 endif
58080 '右  十字キー　右　or カーソル　右
58090 if ((y2 = 1) or (key$ = chr$(28))) then
58100 select case No
58110 '0ボタンからokボタン右に移動
58120 case 0:
58130 No=-1:sp_on 14,1:sp_on 13,0
58140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58150 '0ボタンからokボタン 右に移動　ここまで
58160 'OKボタンで右を押して何もしない
58170 case -1:
58180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58190 case 1:
58200 No=2:sp_on 9,1:sp_on 6,0
58210 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58220 case 2:
58230 No=3:sp_on 12,1:sp_on 9,0
58240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58250 case 3:
58260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58270 case 4:
58280 No=5:sp_on 8,1:sp_on 5,0
58290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58300 case 5:
58310 No=6:sp_on 11,1:sp_on 8,0
58320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58330 case 7:
58340 No=8:sp_on 7,1:sp_on 4,0
58350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58360 case 8:
58370 No=9:sp_on 10,1:sp_on 7,0
58380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58390 case 9:
58400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58410 case 6:
58420 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58430 end select
58440 'Okから右ボタンを押して何もしない ここまで
58450 endif
58460 '十字キー　ここまで
58470 '==============================
58480 'ここから
58490 '==============================
58500 if ((bg = 2) or (key$ = chr$(13))) then
58510 select case count
58520 case 0:
58530 count = 1
58540 if (No = -1) then
58550 count = 0:No=0
58560 buf_feMale_Born_Day(0) = No
58570 'Okボタンを押したとき
58580 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58590 else
58600 'Okボタン以外が押されたとき
58610 if (No >= 1 and No <= 2) then
58620 buf_female_year$="":buf_female_year$ = str$(No) + "***"
58630 buf_female_year = No:a= No
58640 buf_Jyoushi_Born_Day(0) = No
58650 locate 1,3
58660 color rgb(255,255,255)
58670 print "女性の生まれた年代(西暦4桁):";buf_female_year$
58680 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58690 else
58700 count=0
58710 ui_msg"数字が範囲外になります。"
58720 buf_female_year$="":buf_female_year=0
58730 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58740 endif
58750 endif
58760 case 1:
58770 count = 2
58780 if (No = -1) then
58790 count = 1
58800 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58810 else
58820 buf_female_year = a * 10 + No
58830 b=buf_female_year
58840 buf_year$ = str$(buf_female_year) + "**"
58850 buf_Jyoushi_Born_Day(0)=buf_female_year
58860 locate 1,3
58870 color rgb(255,255,255)
58880 print "                                                                "
58890 locate 1,3
58900 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
58910 'if (No = -1) then
58920 'count=1
58930 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58940 endif
58950 case 2:
58960 count=3
58970 if (No=-1) then
58980 count =2
58990 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59000 else
59010 buf_female_year = b * 10 + No
59020 c=buf_female_year
59030 buf_female_year$ = str$(buf_female_year) + "*"
59040 buf_Jyoushi_Born_Day(0) = buf_female_year
59050 locate 1,3
59060 color rgb(255,255,255)
59070 print "                                        "
59080 locate 1,3
59090 print "女性の生まれた年代(西暦4桁):";buf_female_year$
59100 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59110 endif
59120 case 3:
59130 count=4
59140 if (No = -1) then
59150 No=0
59160 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59170 else
59180 buf_female_year = c * 10 + No
59190 buf_female_year$ = str$(buf_female_year)
59200 buf_Jyoushi_Born_Day(0) = buf_female_year
59210 locate 1,3
59220 color RGB(255,255,255)
59230 print "                                      "
59240 locate 1,3
59250 print "女性の生まれた年代(西暦4桁):";buf_female_year$
59260 buf_female_year=val(buf_female_year$)
59270 'year=val(buf_year$)
59280 'if (No=-1) then
59290 'goto Input_Born_Month:
59300 'else
59310 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59320 endif
59330 case 4:
59340 'bufyear=buf_year
59350 if (No=-1) then
59360 buf_female_year = val(buf_female_year$)
59370 buf_Jyoushi_Born_Day(0)=buf_female_year
59380 sp_on 14,0:No=0
59390 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59400 else
59410 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59420 endif
59430 end select
59440 endif
59450 '===========================
59460 'ここまでを部下のところにコピーする.
59470 '===========================
59480 if (bg2 = 2) then
59490 select case count2
59500 case 0:
59510 if (No = -1) then
59520 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
59530 count=0
59540 locate 1,3
59550 color rgb(255,255,255)
59560 print "                                      "
59570 locate 1,3
59580 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
59590 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59600 else
59610 '(buf_year=0) then
59620 buf_female_year=0:buf_year$="****"
59630 locate 1,3
59640 print "                                       "
59650 locate 1,3
59660 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
59670 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59680 'endif
59690 endif
59700 end select
59710 endif
59720 '-------生まれた年代　女性 ここまで-------------
59730 '-------生まれた月　女性 ここまで--------------
59740 Danjyo_Aisyou_Input_feMale_Born_Month:
59750 cls 3:play "":count=0:count2=0
59760 'No=-1:Okのとき
59770 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
59780 for i=0 to 1
59790 buf_month(i)=0
59800 next i
59810 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
59820 '****************************************************************************************************
59830 'WUXG(1920x1200)の時ここから
59840 '****************************************************************************************************
59850 gload Gazo$ + "Screen1.png",0,0,0
59860 gload Gazo$ + "downscreen.png",0,0,800
59870 '****************************************************************************************************
59880 'WUXG(1920x1200)の時ここから
59890 '****************************************************************************************************
59900 'Init"kb:4"
59910 '音声ファイル再生 2023.06.07
59920 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
59930 font 48
59940 locate 0,1
59950 '文字色：黒　 color rgb(0,0,0)
59960 '文字色:白
59970 color rgb(255,255,255)
59980 print "女性の生まれた月を入れて下さい" + chr$(13)
59990 '文字色:白
60000 color rgb(255,255,255)
60010 locate 1,3
60020 '文字色:白
60030 print "女性の生まれた月(1月~12月):"+buf_female_Month$
60040 color rgb(255,255,255)
60050 'locate 4,6:print ":7"
60060 'locate 9,6:print ":8"
60070 'locate 12,6:print ":9"
60080 locate 4,6
60090 '文字色:赤
60100 print ":7  :8  :9" + chr$(13)
60110 color rgb(255,255,255)
60120 locate 4,8
60130 print ":4  :5  :6" + chr$(13)
60140 color rgb(255,255,255)
60150 locate 4,10
60160 print ":1  :2  :3" + chr$(13)
60170 locate 4,12
60180 print "    :0"
60190 locate 12,12
60200 color rgb(0,0,255)
60210 print ":Ok"
60220 sp_on 4,0: sp_on 5,0:sp_on 6,0
60230 sp_on 7,0:sp_on 8,0:sp_on 9,0
60240 sp_on 10,0:sp_on 11,0:sp_on 12,0
60250 sp_on 13,0:sp_on 14,1
60260 '---------------------------------------------
60270 Danjyo_Aisyou_Input_feMale_Born_Month2:
60280 key$="":bg=0:y=0:y2=0:bg2=0
60290 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
60300 key$ = inkey$
60310 bg = strig(1)
60320 y = stick(1)
60330 y2 = stick(0)
60340 bg2 = strig(0)
60350 pause 200
60360 wend
60370 '十字キー　ここから
60380 '上の矢印　または、十字キー上
60390 if ((y = -1) or (key$ = chr$(30))) then
60400 select case No
60410 'No=-1:okのとき:初期の状態
60420 '0kボタンから３に移動
60430 '上に行く 処理
60440 case -1:
60450 No=3:sp_on 12,1:sp_on 14,0
60460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60470 '選択肢:3
60480 '3ボタンから 6に移動
60490 case 3:
60500 No=6:sp_on 12,0:sp_on 11,1
60510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60520 '6ボタンから ９に移動
60530 case 6:
60540 No=9:sp_on 10,1:sp_on 11,0
60550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60560 '6ボタンから ９に移動　ここまで
60570 '9で上を押して何もしない
60580 case 9:
60590 '何もしない
60600 No=9
60610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60620 '9で上を押しても何もしない　ここまで
60630 '上　 0ボタンから2ボタン
60640 'sp_on 6,1:1
60650 'sp_on 8,1:5
60660 'sp_on 7,1:7
60670 case 0:
60680 No=2:sp_on 13,0:sp_on 9,1:
60690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60700 '上  0ボタンから2ボタン　ここまで
60710 '2から５になる 上
60720 case 2:
60730 No=5:sp_on 8,1:sp_on 9,0:
60740 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60750 case 5:
60760 No=8:sp_on 7,1:sp_on 8,0
60770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60780 case 8:
60790 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60800 case 1:
60810 No=4:sp_on 5,1:sp_on 6,0
60820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60830 case 4:
60840 No=7:sp_on 4,1:sp_on 5,0
60850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60860 case 7:
60870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60880 end select
60890 endif
60900 '左３　ここまで
60910 '下の矢印
60920 '中央 2
60930 if ((y=1) or (key$ = chr$(31))) then
60940 select case No
60950 '9から６に下げる
60960 case 9:
60970 No=6:sp_on 11,1:sp_on 10,0
60980 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
60990 '6から３に下げる
61000 case 6:
61010 No=3:sp_on 12,1:sp_on 11,0
61020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61030 '3から０ｋに変える
61040 case 3:
61050 No=-1:sp_on 14,1:sp_on 12,0
61060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61070 'Okから下のボタンを押しても何もしない
61080 case -1:
61090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61100 case 8:
61110 No=5:sp_on 8,1:sp_on 7,0
61120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61130 case 5:
61140 No=2:sp_on 9,1:sp_on 8,0
61150 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61160 case 2:
61170 No=0:sp_on 13,1:sp_on 9,0
61180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61190 case 0:
61200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61210 case 7:
61220 No=4:sp_on 5,1:sp_on 4,0
61230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61240 case 4:
61250 No=1:sp_on 6,1:sp_on 5,0
61260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61270 case 1:
61280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61290 end select
61300 endif
61310 '左へボタン 十字キー　左　or 　カーソル左
61320 if ((y2 = -1) or (key$ = chr$(29))) then
61330 select case No
61340 'Ok ボタン  Okから　左　０に行く
61350 case -1:
61360 No=0:sp_on 13,1:sp_on 14,0
61370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61380 '0 ボタン  左　何もしない
61390 case 0:
61400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61410 case 3:
61420 No=2:sp_on 9,1:sp_on 12,0:
61430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61440 case 2:
61450 No=1:sp_on 6,1:sp_on 9,0:
61460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61470 case 1:
61480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61490 case 6:
61500 No=5:sp_on 8,1:sp_on 11,0
61510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61520 case 5:
61530 No=4:sp_on 5,1:sp_on 8,0
61540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61550 case 4:
61560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61570 case 9:
61580 No=8:sp_on 7,1:sp_on 10,0
61590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61600 case 8:
61610 No=7:sp_on 4,1:sp_on 7,0
61620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61630 case 7:
61640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61650 end select
61660 endif
61670 '右  十字キー　右　or カーソル　右
61680 if ((y2 = 1) or (key$ = chr$(28))) then
61690 select case No
61700 '0ボタンからokボタン右に移動
61710 case 0:
61720 No=-1:sp_on 14,1:sp_on 13,0
61730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61740 '0ボタンからokボタン 右に移動　ここまで
61750 'OKボタンで右を押して何もしない
61760 case -1:
61770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61780 case 1:
61790 No=2:sp_on 9,1:sp_on 6,0
61800 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61810 case 2:
61820 No=3:sp_on 12,1:sp_on 9,0
61830 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61840 case 3:
61850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61860 case 4:
61870 No=5:sp_on 8,1:sp_on 5,0
61880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61890 case 5:
61900 No=6:sp_on 11,1:sp_on 8,0
61910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61920 case 7:
61930 No=8:sp_on 7,1:sp_on 4,0
61940 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61950 case 8:
61960 No=9:sp_on 10,1:sp_on 7,0
61970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61980 case 9:
61990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62000 case 6:
62010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62020 end select
62030 'Okから右ボタンを押して何もしない ここまで
62040 endif
62050 '十字キー　ここまで
62060 '右の丸ボタン + Enter key 決定キー
62070 if ((bg=2) or (key$=chr$(13))) then
62080 select case count
62090 case 0:
62100 if (No=-1) then No=0
62110 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
62120 if (buf_female_month > 1 and buf_female_month < 10)  then
62130 buf_female_Month$ = str$(buf_female_month)
62140 'buf_month=No
62150 endif
62160 if (buf_female_month = 1)  then
62170 buf_female_Month$ = str$(buf_female_month) + "*"
62180 'c=buf_month
62190 endif
62200 locate 1,3
62210 print "                                     "
62220 color RGB(255,255,255)
62230 locate 1,3
62240 print "女性の生まれた月(1月~12月):" + buf_female_Month$
62250 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62260 case 1:
62270 count = 2:
62280 'c = val(buf_Month$)
62290 if (No = -1) then
62300 'count=0
62310 No=0
62320 month=buf_female_month
62330 buf_female_month=val(buf_female_Month$)
62340 month=buf_female_month
62350 buf_Jyoushi_Born_Day(1)=month
62360 '生まれた日に飛ぶ
62370 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62380 else
62390 buf_female_month = c*10 + No
62400 'if (buf_month = 1) then
62410 'buf_Month$ = str$(buf_month)
62420 'endif
62430 buf_female_Month$ = str$(buf_female_month)
62440 buf_Jyoushi_Born_Day(1) = buf_female_month
62450 locate 0,3
62460 print "                                           "
62470 locate 1,3
62480 color Rgb(255,255,255)
62490 print "女性の生まれた月(1月~12月):" + buf_female_Month$
62500 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62510 endif
62520 case 2:
62530 '==================================
62540 '何もしない
62550 'coun = 2
62560 '==================================
62570 'c= val(buf_Month$)
62580 'buf_month = c*10 + No
62590 'buf_Month$ = str$(buf_month)
62600 'locate 2,3
62610 'print "上司の生まれた月(1月～12月):";buf_Month$
62620 'goto Jyoushi_Input_Born_Month2:
62630 'case 3:
62640 'count=4
62650 'b=val(buf_month$)
62660 'buf_month=c*10+No
62670 'buf_Month$=str$(buf_month)
62680 'locate 2,3
62690 'print "上司の生まれた月(1月～12月):";buf_Month$
62700 'buf_month=val(buf_Month$)
62710 'year=val(buf_year$)
62720 if (No=-1) then
62730 No=0
62740 goto Danjyo_Aisyou_Input_Male_Born_Day:
62750 else
62760 goto Danjyo_Aisyou_Input_Male_Born_Day2:
62770 endif
62780 'case 4:
62790 'bufyear=buf_year
62800 'if (No=-1) then
62810 'buf_month = val(buf_Month$)
62820 'month = buf_month
62830 'sp_on 14,0
62840 'goto Input_Born_Day:
62850 'else
62860 'goto Input_Born_Month2:
62870 'endif
62880 end select
62890 endif
62900 '左の丸ボタン　キャンセル
62910 if (bg2=2) then
62920 select case count2
62930 case 0:
62940 if (No = -1) then
62950 buf_female_month=0:buf_female_Month$="**"
62960 count=0
62970 'goto rewrite2:
62980 else
62990 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
63000 buf_female_month = 0:buf_female_Month$ = "**"
63010 locate 0,3
63020 color rgb(255,255,255)
63030 print "                                       "
63040 goto rewrite2:
63050 if (No>12) then
63060 ui_msg"値が範囲外です。"
63070 goto rewrite2:
63080 endif
63090 endif
63100 endif
63110 rewrite2:
63120 locate 2,3
63130 color rgb(255,255,255)
63140 print "                                      "
63150 locate 2,3
63160 print "女性の生まれた月(1月~12月):"+buf_female_Month$
63170 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
63180 end select
63190 'endif
63200 endif
63210 end
63220 '-------生まれた月　女性 ここまで-------------
63230 '-------生まれた日　女性 ここまで-------------
63240 Danjyo_Aisyou_Input_feMale_Born_Day:
63250 cls 3:play "":count=0:count2=0
63260 'No=-1:Okのとき
63270 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
63280 for i=0 to 1
63290 buf_female_day(i)=0
63300 next i
63310 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
63320 '****************************************************************************************************
63330 'WUXG(1920x1200)の時ここから
63340 '****************************************************************************************************
63350 gload Gazo$ + "Screen1.png",0,0,0
63360 gload Gazo$ + "downscreen.png",0,0,800
63370 '****************************************************************************************************
63380 'WUXG(1920x1200)の時ここまで
63390 '****************************************************************************************************
63400 'Init"kb:4"
63410 '音声ファイル再生 2023.06.07
63420 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
63430 font 48
63440 locate 0,1
63450 '文字色：黒　 color rgb(0,0,0)
63460 '文字色:白
63470 color rgb(255,255,255)
63480 print "女性の生まれた日を入れて下さい" + chr$(13)
63490 '文字色:白
63500 color rgb(255,255,255)
63510 locate 1,3
63520 '文字色:白
63530 print "女性の生まれた日(1月~31月):" + buf_female_Day$
63540 color rgb(255,255,255)
63550 'locate 4,6:print ":7"
63560 'locate 9,6:print ":8"
63570 'locate 12,6:print ":9"
63580 locate 4,6
63590 '文字色:赤
63600 print ":7  :8  :9" + chr$(13)
63610 color rgb(255,255,255)
63620 locate 4,8
63630 print ":4  :5  :6" + chr$(13)
63640 color rgb(255,255,255)
63650 locate 4,10
63660 print ":1  :2  :3" + chr$(13)
63670 locate 4,12
63680 print "    :0"
63690 locate 12,12
63700 color rgb(0,0,255)
63710 print ":Ok"
63720 sp_on 4,0: sp_on 5,0:sp_on 6,0
63730 sp_on 7,0:sp_on 8,0:sp_on 9,0
63740 sp_on 10,0:sp_on 11,0:sp_on 12,0
63750 sp_on 13,0:sp_on 14,1
63760 '---------------------------------------------
63770 Danjyo_Aisyou_Input_feMale_Born_Day2:
63780 key$="":bg=0:y=0:y2=0:bg2=0
63790 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63800 key$ = inkey$
63810 bg = strig(1)
63820 y = stick(1)
63830 y2 = stick(0)
63840 bg2 = strig(0)
63850 pause 200
63860 wend
63870 '十字キー　ここから
63880 '上の矢印　または、十字キー上
63890 if ((y = -1) or (key$ = chr$(30))) then
63900 select case No
63910 'No=-1:okのとき:初期の状態
63920 '0kボタンから３に移動
63930 '上に行く 処理
63940 case -1:
63950 No=3:sp_on 12,1:sp_on 14,0
63960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
63970 '選択肢:3
63980 '3ボタンから 6に移動
63990 case 3:
64000 No=6:sp_on 12,0:sp_on 11,1
64010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64020 '6ボタンから ９に移動
64030 case 6:
64040 No=9:sp_on 10,1:sp_on 11,0
64050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64060 '6ボタンから ９に移動　ここまで
64070 '9で上を押して何もしない
64080 case 9:
64090 '何もしない
64100 No=9
64110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64120 '9で上を押しても何もしない　ここまで
64130 '上　 0ボタンから2ボタン
64140 'sp_on 6,1:1
64150 'sp_on 8,1:5
64160 'sp_on 7,1:7
64170 case 0:
64180 No=2:sp_on 13,0:sp_on 9,1:
64190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64200 '上  0ボタンから2ボタン　ここまで
64210 '2から５になる 上
64220 case 2:
64230 No=5:sp_on 8,1:sp_on 9,0:
64240 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64250 case 5:
64260 No=8:sp_on 7,1:sp_on 8,0
64270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64280 case 8:
64290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64300 case 1:
64310 No=4:sp_on 5,1:sp_on 6,0
64320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64330 case 4:
64340 No=7:sp_on 4,1:sp_on 5,0
64350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64360 case 7:
64370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64380 end select
64390 endif
64400 '左３　ここまで
64410 '下の矢印
64420 '中央 2
64430 if ((y=1) or (key$ = chr$(31))) then
64440 select case No
64450 '9から６に下げる
64460 case 9:
64470 No=6:sp_on 11,1:sp_on 10,0
64480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64490 '6から３に下げる
64500 case 6:
64510 No=3:sp_on 12,1:sp_on 11,0
64520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64530 '3から０ｋに変える
64540 case 3:
64550 No=-1:sp_on 14,1:sp_on 12,0
64560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64570 'Okから下のボタンを押しても何もしない
64580 case -1:
64590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64600 case 8:
64610 No=5:sp_on 8,1:sp_on 7,0
64620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64630 case 5:
64640 No=2:sp_on 9,1:sp_on 8,0
64650 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64660 case 2:
64670 No=0:sp_on 13,1:sp_on 9,0
64680 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64690 case 0:
64700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64710 case 7:
64720 No=4:sp_on 5,1:sp_on 4,0
64730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64740 case 4:
64750 No=1:sp_on 6,1:sp_on 5,0
64760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64770 case 1:
64780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64790 end select
64800 endif
64810 '左へボタン 十字キー　左　or 　カーソル左
64820 if ((y2 = -1) or (key$ = chr$(29))) then
64830 select case No
64840 'Ok ボタン  Okから　左　０に行く
64850 case -1:
64860 No=0:sp_on 13,1:sp_on 14,0
64870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64880 '0 ボタン  左　何もしない
64890 case 0:
64900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64910 case 3:
64920 No=2:sp_on 9,1:sp_on 12,0:
64930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64940 case 2:
64950 No=1:sp_on 6,1:sp_on 9,0:
64960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64970 case 1:
64980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64990 case 6:
65000 No=5:sp_on 8,1:sp_on 11,0
65010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65020 case 5:
65030 No=4:sp_on 5,1:sp_on 8,0
65040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65050 case 4:
65060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65070 case 9:
65080 No=8:sp_on 7,1:sp_on 10,0
65090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65100 case 8:
65110 No=7:sp_on 4,1:sp_on 7,0
65120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65130 case 7:
65140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65150 end select
65160 endif
65170 '右  十字キー　右　or カーソル　右
65180 if ((y2 = 1) or (key$ = chr$(28))) then
65190 select case No
65200 '0ボタンからokボタン右に移動
65210 case 0:
65220 No=-1:sp_on 14,1:sp_on 13,0
65230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65240 '0ボタンからokボタン 右に移動　ここまで
65250 'OKボタンで右を押して何もしない
65260 case -1:
65270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65280 case 1:
65290 No=2:sp_on 9,1:sp_on 6,0
65300 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65310 case 2:
65320 No=3:sp_on 12,1:sp_on 9,0
65330 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65340 case 3:
65350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65360 case 4:
65370 No=5:sp_on 8,1:sp_on 5,0
65380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65390 case 5:
65400 No=6:sp_on 11,1:sp_on 8,0
65410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65420 case 7:
65430 No=8:sp_on 7,1:sp_on 4,0
65440 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65450 case 8:
65460 No=9:sp_on 10,1:sp_on 7,0
65470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65480 case 9:
65490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65500 case 6:
65510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65520 end select
65530 'Okから右ボタンを押して何もしない ここまで
65540 endif
65550 '十字キー　ここまで
65560 '右の丸ボタン + Enter key 決定キー
65570 if ((bg=2) or (key$=chr$(13))) then
65580 select case count
65590 case 0:
65600 if (No=-1) then No=0
65610 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
65620 if (buf_female_day > 1 and buf_female_day < 10)  then
65630 buf_female_Day$ = str$(buf_female_day)
65640 'buf_month=No
65650 endif
65660 if (buf_female_day = 1)  then
65670 buf_female_Day$ = str$(buf_female_day) + "*"
65680 'c=buf_month
65690 endif
65700 locate 1,3
65710 print "                                     "
65720 color RGB(255,255,255)
65730 locate 1,3
65740 print "女性の生まれた日(1月~31月):" + buf_female_Day$
65750 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65760 case 1:
65770 count = 2:
65780 'c = val(buf_Month$)
65790 if (No = -1) then
65800 'count=0
65810 No=0
65820 day=buf_female_day
65830 buf_female_day=val(buf_female_day$)
65840 day=bu_female_day
65850 buf_female_day(1)=day
65860 '生まれた日に飛ぶ
65870 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65880 else
65890 bu_female_day = c*10 + No
65900 'if (buf_month = 1) then
65910 'buf_Month$ = str$(buf_month)
65920 'endif
65930 buf_female_day$ = str$(buf_female_day)
65940 buf_female_day(1) = buf_female_day
65950 locate 0,3
65960 print "                                           "
65970 locate 1,3
65980 color Rgb(255,255,255)
65990 print "女性の生まれた日(1月~31月):" + buf_female_Day$
66000 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
66010 endif
66020 case 2:
66030 '==================================
66040 '何もしない
66050 'coun = 2
66060 '==================================
66070 'c= val(buf_Month$)
66080 'buf_month = c*10 + No
66090 'buf_Month$ = str$(buf_month)
66100 'locate 2,3
66110 'print "上司の生まれた月(1月～12月):";buf_Month$
66120 'goto Jyoushi_Input_Born_Month2:
66130 'case 3:
66140 'count=4
66150 'b=val(buf_month$)
66160 'buf_month=c*10+No
66170 'buf_Month$=str$(buf_month)
66180 'locate 2,3
66190 'print "上司の生まれた月(1月～12月):";buf_Month$
66200 'buf_month=val(buf_Month$)
66210 'year=val(buf_year$)
66220 if (No=-1) then
66230 No=0
66240 goto Danjyo_Aisyou_Input_Male_Born_Day:
66250 else
66260 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
66270 endif
66280 'case 4:
66290 'bufyear=buf_year
66300 'if (No=-1) then
66310 'buf_month = val(buf_Month$)
66320 'month = buf_month
66330 'sp_on 14,0
66340 'goto Input_Born_Day:
66350 'else
66360 'goto Input_Born_Month2:
66370 'endif
66380 end select
66390 endif
66400 '左の丸ボタン　キャンセル
66410 if (bg2=2) then
66420 select case count2
66430 case 0:
66440 if (No = -1) then
66450 buf_female_day=0:buf_female_Day$="**"
66460 count=0
66470 'goto rewrite2:
66480 else
66490 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
66500 buf_female_day = 0:buf_female_Day$ = "**"
66510 locate 0,3
66520 color rgb(255,255,255)
66530 print "                                       "
66540 goto rewrite2:
66550 if (No>12) then
66560 ui_msg"値が範囲外です。"
66570 goto rewrite2:
66580 endif
66590 endif
66600 endif
66610 rewrite2:
66620 locate 2,3
66630 color rgb(255,255,255)
66640 print "                                      "
66650 locate 2,3
66660 print "女性の生まれた日(1月~31月):"+buf_female_Day$
66670 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
66680 end select
66690 'endif
66700 endif
66710 end
66720 '-------生まれた日　女性 ここまで-------------
66730 '1.男女の相性 ここまで
66740 '2.ビジネスの相性　
66750 '1.1人目のビジネスの相性　名前入力　1人目
66760 Business_Aishou_Input_1_parson:
66770 No=0:color RGB(255,255,255)
66780 cls 3:init "kb:2"
66790 '****************************************************************************************************
66800 'WUXG(1920x1200)の時ここから
66810 '****************************************************************************************************
66820 gload Gazo$ + "Screen1.png",0,0,0
66830 gload Gazo$ + "downscreen.png",0,0,800
66840 '****************************************************************************************************
66850 'WUXG(1920x1200)の時ここまで
66860 '****************************************************************************************************
66870 play "":color rgb(255,0,0):name$ = ""
66880 locate 0,1
66890 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
66900 color rgb(255,255,255):
66910 locate 0,3
66920 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
66930 print "入れてください" + chr$(13)
66940 locate 0,15:color rgb(0,0,0)
66950 Input "1人目の名前:",name$
66960 'color rgb(0,0,0)
66970 'locate 0,13:print "                                     "
66980 'locate 0,13:print "1人目の名前を入力してエンターキー":
66990 'buffer_name$(0):1人目の名前
67000 buffer_name$(0) = name$:
67010 goto Business_Aishou_Input_2_Parson:
67020 '2.2人目のビジネスの相性 名前入力 2人目
67030 Business_Aishou_Input_2_Parson:
67040 cls 3:init "kb:2":name$ = "":No=0
67050 '****************************************************************************************************
67060 'WUXG(1920x1200)の時ここから
67070 '****************************************************************************************************
67080 gload Gazo$ + "Screen1.png",0,0,0
67090 gload Gazo$ + "downscreen.png",0,0,800
67100 '****************************************************************************************************
67110 'WUXG(1920x1200)の時ここまで
67120 '****************************************************************************************************
67130 color rgb(255,0,0)
67140 'Title
67150 locate 0,1
67160 print "ビジネスの相性　2人目"
67170 locate 0,3
67180 color rgb(255,255,255)
67190 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
67200 print "入れてください" + chr$(13)
67210 locate 0,15:color rgb(0,0,0)
67220 Input "2人目の名前:",name$
67230 'color rgb(0,0,0)
67240 'locate 0,15:print "                                              "
67250 'locate 0,15:print "2人目の名前を入力してエンター ":
67260 '2人目
67270 '2人目の名前を入れるに代入
67280 buffer_name$(1) = name$:
67290 goto Select_jyoushi:
67300 '3.上司の選択
67310 Select_jyoushi:
67320 '****************************************************************************************************
67330 'WUXG(1920x1200)の時ここから
67340 '****************************************************************************************************
67350 cls 3:gload Gazo$ + "Screen1.png",0,0,0
67360 gload Gazo$ + "downscreen.png",0,0,800
67370 '****************************************************************************************************
67380 'WUXG(1920x1200)の時ここまで
67390 '****************************************************************************************************
67400 init "kb:4":No=0
67410 color rgb(0,0,255)
67420 locate 1,1
67430 print "上司の選択"
67440 color rgb(255,255,255)
67450 locate 0,4:print "名前から上司の方を選んでください"
67460 locate 0,6
67470 print " :";buffer_name$(0);"が上 司";chr$(13)
67480 locate 0,8
67490 print " :";buffer_name$(1);"が上 司";chr$(13)
67500 locate 0,15:
67510 print "                                     "
67520 locate 0,15:color rgb(0,0,0)
67530 print "上司の方を選んで右の丸ボタン"
67540 sp_on 0,1:sp_on 1,0:sp_on 2,0
67550 Select_jyoushi2:
67560 'ここでNo=0をおいてはいけない
67570 y=0:key$="":bg=0:
67580 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
67590 y = stick(1)
67600 key$ = inkey$
67610 bg = strig(1)
67620 pause 5
67630 wend
67640 '1.カーソル下の処理　or 十字キーの下処理
67650 if ((key$ = chr$(31)) or (y = 1)) then
67660 select case No
67670 case 0:
67680 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
67690 case 1:
67700 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
67710 end select
67720 endif
67730 '2.カーソル上処理　or 十字キーの上の処理
67740 if ((key$ = chr$(30)) or (y = -1)) then
67750 select case No
67760 case 0:
67770 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
67780 case 1:
67790 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
67800 end select
67810 endif
67820 if ((key$ = chr$(13)) or (bg = 2)) then
67830 select case No
67840 case 0:
67850 '上司(name1)を配列に代入
67860 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
67870 case 1:
67880 '上司（name2)を配列に代入
67890 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
67900 end select
67910 endif
67920 '3.決定ボタン　Enter or 右の丸ボタン
67930 '1.誕生日入力
67940 '1-1.生まれた年を入力
67950 'Jyoushi_born_year:
67960 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
67970 '---------------------------------------------'
67980 '誕生日入力(生れた年代)
67990 Jyoushi_Input_Seireki:
68000 'buf_Jyoushi_Born_Year:上司の生まれた年代
68010 'buf_Jyoushi_Born_Day(0) = born_year
68020 cls 3:play "":count=0:count2=0
68030 init"kb:4"
68040 'No=-1:Okのとき
68050 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
68060 for i=0 to 3
68070 buf_Jyoushi_Born_Day(i)=0
68080 next i
68090 '****************************************************************************************************
68100 'WUXG(1920x1200)の時ここから
68110 '****************************************************************************************************
68120 gload Gazo$ + "Screen2.png",0,0,0
68130 gload Gazo$ + "downscreen.png",0,0,800
68140 '****************************************************************************************************
68150 'WUXG(1920x1200)の時ここまで
68160 '****************************************************************************************************
68170 'Init"kb:2"
68180 '音声ファイル再生 2023.06.07
68190 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
68200 font 48
68210 locate 0,1
68220 '文字色：黒　 color rgb(0,0,0)
68230 color rgb(255,255,255)
68240 print "上司の生まれた年代を入れて下さい" + chr$(13)
68250 color rgb(255,255,255)
68260 locate 1,3
68270 print "上司の生まれた年代(西暦4桁):";buf_year$
68280 color rgb(255,255,255)
68290 'locate 4,6:print ":7"
68300 'locate 9,6:print ":8"
68310 'locate 12,6:print ":9"
68320 'locate 4,6
68330 'print ":7  :8  :9" + chr$(13)
68340 'color rgb(255,255,255)
68350 'locate 4,8
68360 'print ":4  :5  :6" + chr$(13)
68370 'color rgb(255,255,255)
68380 'locate 4,10
68390 'print ":1  :2  :3" + chr$(13)
68400 'locate 4,12
68410 'print "    :0"
68420 'locate 12,12
68430 'color rgb(0,0,255)
68440 'print ":Ok"
68450 sp_on 4,0: sp_on 5,0:sp_on 6,0
68460 sp_on 7,0:sp_on 8,0:sp_on 9,0
68470 sp_on 10,0:sp_on 11,0:sp_on 12,0
68480 sp_on 13,0:sp_on 14,1
68490 Jyoushi_Input_Seireki2:
68500 key$="":bg=0:y=0:y2=0:bg2=0:
68510 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
68520 key$ = inkey$
68530 bg = strig(1)
68540 y = stick(1)
68550 y2 = stick(0)
68560 bg2=strig(0)
68570 pause 200
68580 wend
68590 '十字キー　ここから
68600 '上の矢印　または、十字キー上
68610 if ((y = -1) or (key$ = chr$(30))) then
68620 select case No
68630 'No=-1:okのとき:初期の状態
68640 '0kボタンから３に移動
68650 '上に行く 処理
68660 case -1:
68670 No=3:sp_on 12,1:sp_on 14,0
68680 pause 200:goto Jyoushi_Input_Seireki2:
68690 '選択肢:3
68700 '3ボタンから 6に移動
68710 case 3:
68720 No=6:sp_on 12,0:sp_on 11,1
68730 pause 200:goto Jyoushi_Input_Seireki2:
68740 '6ボタンから ９に移動
68750 case 6:
68760 No=9:sp_on 10,1:sp_on 11,0
68770 pause 200:goto Jyoushi_Input_Seireki2:
68780 '6ボタンから ９に移動　ここまで
68790 '9で上を押して何もしない
68800 case 9:
68810 '何もしない
68820 No=9
68830 pause 200:goto Jyoushi_Input_Seireki2:
68840 '9で上を押しても何もしない　ここまで
68850 '上　 0ボタンから2ボタン
68860 'sp_on 6,1:1
68870 'sp_on 8,1:5
68880 'sp_on 7,1:7
68890 case 0:
68900 No=2:sp_on 13,0:sp_on 9,1:
68910 pause 200:goto Jyoushi_Input_Seireki2:
68920 '上  0ボタンから2ボタン　ここまで
68930 '2から５になる 上
68940 case 2:
68950 No=5:sp_on 8,1:sp_on 9,0:
68960 pause 200:goto Jyoushi_Input_Seireki2:
68970 case 5:
68980 No=8:sp_on 7,1:sp_on 8,0
68990 pause 200:goto Jyoushi_Input_Seireki2:
69000 case 8:
69010 pause 200:goto Jyoushi_Input_Seireki2:
69020 case 1:
69030 No=4:sp_on 5,1:sp_on 6,0
69040 pause 200:goto Jyoushi_Input_Seireki2:
69050 case 4:
69060 No=7:sp_on 4,1:sp_on 5,0
69070 pause 200:goto Jyoushi_Input_Seireki2:
69080 case 7:
69090 pause 200:goto Jyoushi_Input_Seireki2:
69100 end select
69110 endif
69120 '左３　ここまで
69130 '下の矢印
69140 '中央 2
69150 if ((y=1) or (key$ = chr$(31))) then
69160 select case No
69170 '9から６に下げる
69180 case 9:
69190 No=6:sp_on 11,1:sp_on 10,0
69200 pause 200:goto Jyoushi_Input_Seireki2:
69210 '6から３に下げる
69220 case 6:
69230 No=3:sp_on 12,1:sp_on 11,0
69240 pause 200:goto Jyoushi_Input_Seireki2:
69250 '3から０ｋに変える
69260 case 3:
69270 No=-1:sp_on 14,1:sp_on 12,0
69280 pause 200:goto Jyoushi_Input_Seireki2:
69290 'Okから下のボタンを押しても何もしない
69300 case -1:
69310 pause 200:goto Jyoushi_Input_Seireki2:
69320 case 8:
69330 No=5:sp_on 8,1:sp_on 7,0
69340 pause 200:goto Jyoushi_Input_Seireki2:
69350 case 5:
69360 No=2:sp_on 9,1:sp_on 8,0
69370 pause 200:goto Jyoushi_Input_Seireki2:
69380 case 2:
69390 No=0:sp_on 13,1:sp_on 9,0
69400 pause 200:goto Jyoushi_Input_Seireki2:
69410 case 0:
69420 pause 200:goto Jyoushi_Input_Seireki2:
69430 case 7:
69440 No=4:sp_on 5,1:sp_on 4,0
69450 pause 200:goto Jyoushi_Input_Seireki2:
69460 case 4:
69470 No=1:sp_on 6,1:sp_on 5,0
69480 pause 200:goto Jyoushi_Input_Seireki2:
69490 case 1:
69500 pause 200:goto Jyoushi_Input_Seireki2:
69510 end select
69520 endif
69530 '左へボタン 十字キー　左　or 　カーソル左
69540 if ((y2 = -1) or (key$ = chr$(29))) then
69550 select case No
69560 'Ok ボタン  Okから　左　０に行く
69570 case -1:
69580 No=0:sp_on 13,1:sp_on 14,0
69590 pause 200:goto Jyoushi_Input_Seireki2:
69600 '0 ボタン  左　何もしない
69610 case 0:
69620 pause 200:goto Jyoushi_Input_Seireki2:
69630 case 3:
69640 No=2:sp_on 9,1:sp_on 12,0:
69650 pause 200:goto Jyoushi_Input_Seireki2:
69660 case 2:
69670 No=1:sp_on 6,1:sp_on 9,0:
69680 pause 200:goto Jyoushi_Input_Seireki2:
69690 case 1:
69700 pause 200:goto Jyoushi_Input_Seireki2:
69710 case 6:
69720 No=5:sp_on 8,1:sp_on 11,0
69730 pause 200:goto Jyoushi_Input_Seireki2:
69740 case 5:
69750 No=4:sp_on 5,1:sp_on 8,0
69760 pause 200:goto Jyoushi_Input_Seireki2:
69770 case 4:
69780 pause 200:goto Jyoushi_Input_Seireki2:
69790 case 9:
69800 No=8:sp_on 7,1:sp_on 10,0
69810 pause 200:goto Jyoushi_Input_Seireki2:
69820 case 8:
69830 No=7:sp_on 4,1:sp_on 7,0
69840 pause 200:goto Jyoushi_Input_Seireki2:
69850 case 7:
69860 pause 200:goto Jyoushi_Input_Seireki2:
69870 end select
69880 endif
69890 '右  十字キー　右　or カーソル　右
69900 if ((y2 = 1) or (key$ = chr$(28))) then
69910 select case No
69920 '0ボタンからokボタン右に移動
69930 case 0:
69940 No=-1:sp_on 14,1:sp_on 13,0
69950 pause 200:goto Jyoushi_Input_Seireki2:
69960 '0ボタンからokボタン 右に移動　ここまで
69970 'OKボタンで右を押して何もしない
69980 case -1:
69990 pause 200:goto Jyoushi_Input_Seireki2:
70000 case 1:
70010 No=2:sp_on 9,1:sp_on 6,0
70020 pause 200:goto Jyoushi_Input_Seireki2:
70030 case 2:
70040 No=3:sp_on 12,1:sp_on 9,0
70050 pause 200:goto Jyoushi_Input_Seireki2:
70060 case 3:
70070 pause 200:goto Jyoushi_Input_Seireki2:
70080 case 4:
70090 No=5:sp_on 8,1:sp_on 5,0
70100 pause 200:goto Jyoushi_Input_Seireki2:
70110 case 5:
70120 No=6:sp_on 11,1:sp_on 8,0
70130 pause 200:goto Jyoushi_Input_Seireki2:
70140 case 7:
70150 No=8:sp_on 7,1:sp_on 4,0
70160 pause 200:goto Jyoushi_Input_Seireki2:
70170 case 8:
70180 No=9:sp_on 10,1:sp_on 7,0
70190 pause 200:goto Jyoushi_Input_Seireki2:
70200 case 9:
70210 pause 200:goto Jyoushi_Input_Seireki2:
70220 case 6:
70230 pause 200:goto Jyoushi_Input_Seireki2:
70240 end select
70250 'Okから右ボタンを押して何もしない ここまで
70260 endif
70270 '十字キー　ここまで
70280 '==============================
70290 'ここから
70300 '==============================
70310 if ((bg = 2) or (key$ = chr$(13))) then
70320 select case count
70330 case 0:
70340 count = 1
70350 if (No = -1) then
70360 count = 0:No=0
70370 buf_Jyoushi_Born_Day(0) = No
70380 'Okボタンを押したとき
70390 goto Jyoushi_Input_Seireki2:
70400 else
70410 'Okボタン以外が押されたとき
70420 if (No >= 1 and No <= 2) then
70430 buf_year$="":buf_year$ = str$(No) + "***"
70440 buf_year = No:a= No
70450 buf_Jyoushi_Born_Day(0) = No
70460 locate 1,3
70470 color rgb(255,255,255)
70480 print "上司の生まれた年代(西暦4桁):";buf_year$
70490 goto Jyoushi_Input_Seireki2:
70500 else
70510 count=0
70520 ui_msg"数字が範囲外になります。"
70530 buf_year$="":buf_year=0
70540 goto Jyoushi_Input_Seireki2:
70550 endif
70560 endif
70570 case 1:
70580 count = 2
70590 if (No = -1) then
70600 count = 1
70610 goto Jyoushi_Input_Seireki2:
70620 else
70630 buf_year = a * 10 + No
70640 b=buf_year
70650 buf_year$ = str$(buf_year) + "**"
70660 buf_Jyoushi_Born_Day(0)=buf_year
70670 locate 1,3
70680 color rgb(255,255,255)
70690 print "                                                                "
70700 locate 1,3
70710 print "上司の生まれた年代(西暦4桁):" + buf_year$
70720 'if (No = -1) then
70730 'count=1
70740 goto Jyoushi_Input_Seireki2:
70750 endif
70760 case 2:
70770 count=3
70780 if (No=-1) then
70790 count =2
70800 goto Jyoushi_Input_Seireki2:
70810 else
70820 buf_year = b * 10 + No
70830 c=buf_year
70840 buf_year$ = str$(buf_year) + "*"
70850 buf_Jyoushi_Born_Day(0) = buf_year
70860 locate 1,3
70870 color rgb(255,255,255)
70880 print "                                        "
70890 locate 1,3
70900 print "上司の生まれた年代(西暦4桁):";buf_year$
70910 goto Jyoushi_Input_Seireki2:
70920 endif
70930 case 3:
70940 count=4
70950 if (No = -1) then
70960 No=0
70970 goto Jyoushi_Input_Seireki2:
70980 else
70990 buf_year = c * 10 + No
71000 buf_year$ = str$(buf_year)
71010 buf_Jyoushi_Born_Day(0) = buf_year
71020 locate 1,3
71030 color RGB(255,255,255)
71040 print "                                      "
71050 locate 1,3
71060 print "上司の生まれた年代(西暦4桁):";buf_year$
71070 buf_year=val(buf_year$)
71080 'year=val(buf_year$)
71090 'if (No=-1) then
71100 'goto Input_Born_Month:
71110 'else
71120 goto Jyoushi_Input_Seireki2:
71130 endif
71140 case 4:
71150 'bufyear=buf_year
71160 if (No=-1) then
71170 buf_year = val(buf_year$)
71180 buf_Jyoushi_Born_Day(0)=buf_year
71190 sp_on 14,0:No=0
71200 goto Jyoushi_Input_Born_Month:
71210 else
71220 goto Jyoushi_Input_Seireki2:
71230 endif
71240 end select
71250 endif
71260 '===========================
71270 'ここまでを部下のところにコピーする.
71280 '===========================
71290 if (bg2 = 2) then
71300 select case count2
71310 case 0:
71320 if (No = -1) then
71330 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
71340 count=0
71350 locate 1,3
71360 color rgb(255,255,255)
71370 print "                                      "
71380 locate 1,3
71390 print "上司の生まれた年代（西暦4桁):" + buf_year$
71400 goto Jyoushi_Input_Seireki2:
71410 else
71420 '(buf_year=0) then
71430 buf_year=0:buf_year$="****"
71440 locate 1,3
71450 print "                                       "
71460 locate 1,3
71470 print "上司の生まれた年代(西暦4桁):"+buf_year$
71480 goto Jyoushi_Input_Seireki2:
71490 'endif
71500 endif
71510 end select
71520 endif
71530 'Input"上司の生れた年代(4桁,〜2025年):",year
71540 'if year > 2025 then goto Jyoushi_Input_Seireki:
71550 'if year = 123 then cls 3:cls 4:goto Main_Screen:
71560 '"4桁目"
71570 'bufyear4 = fix(year / 1000)
71580 '"3桁目"
71590 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
71600 '"2桁目"
71610 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
71620 '"1桁目"
71630 'bufyear1 = fix((year - ((bufyear4*
71640 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
71650 '2.生まれた月を入力
71660 Jyoushi_Input_Born_Month:
71670 cls 3:play "":count=0:count2=0
71680 'No=-1:Okのとき
71690 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
71700 for i=0 to 1
71710 buf_month(i)=0
71720 next i
71730 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
71740 '****************************************************************************************************
71750 'WUXG(1920x1200)の時ここから
71760 '****************************************************************************************************
71770 gload Gazo$ + "Screen2.png",0,0,0
71780 gload Gazo$ + "downscreen.png",0,0,800
71790 '****************************************************************************************************
71800 'WUXG(1920x1200)の時ここまで
71810 '****************************************************************************************************
71820 'Init"kb:4"
71830 '音声ファイル再生 2023.06.07
71840 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
71850 font 48
71860 locate 0,1
71870 '文字色：黒　 color rgb(0,0,0)
71880 '文字色:白
71890 color rgb(255,255,255)
71900 print "上司の生まれた月を入れて下さい" + chr$(13)
71910 '文字色:白
71920 color rgb(255,255,255)
71930 locate 1,3
71940 '文字色:白
71950 print "上司の生まれた月(1月~12月):"+buf_Month$
71960 color rgb(255,255,255)
71970 'locate 4,6:print ":7"
71980 'locate 9,6:print ":8"
71990 'locate 12,6:print ":9"
72000 'locate 4,6
72010 '文字色:赤
72020 'print ":7  :8  :9" + chr$(13)
72030 'color rgb(255,255,255)
72040 'locate 4,8
72050 'print ":4  :5  :6" + chr$(13)
72060 'color rgb(255,255,255)
72070 'locate 4,10
72080 'print ":1  :2  :3" + chr$(13)
72090 'locate 4,12
72100 'print "    :0"
72110 'locate 12,12
72120 'color rgb(0,0,255)
72130 'print ":Ok"
72140 sp_on 4,0: sp_on 5,0:sp_on 6,0
72150 sp_on 7,0:sp_on 8,0:sp_on 9,0
72160 sp_on 10,0:sp_on 11,0:sp_on 12,0
72170 sp_on 13,0:sp_on 14,1
72180 Jyoushi_Input_Born_Month2:
72190 key$="":bg=0:y=0:y2=0:bg2=0
72200 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72210 key$ = inkey$
72220 bg = strig(1)
72230 y = stick(1)
72240 y2 = stick(0)
72250 bg2 = strig(0)
72260 pause 200
72270 wend
72280 '十字キー　ここから
72290 '上の矢印　または、十字キー上
72300 if ((y = -1) or (key$ = chr$(30))) then
72310 select case No
72320 'No=-1:okのとき:初期の状態
72330 '0kボタンから３に移動
72340 '上に行く 処理
72350 case -1:
72360 No=3:sp_on 12,1:sp_on 14,0
72370 pause 200:goto Jyoushi_Input_Born_Month2:
72380 '選択肢:3
72390 '3ボタンから 6に移動
72400 case 3:
72410 No=6:sp_on 12,0:sp_on 11,1
72420 pause 200:goto Jyoushi_Input_Born_Month2:
72430 '6ボタンから ９に移動
72440 case 6:
72450 No=9:sp_on 10,1:sp_on 11,0
72460 pause 200:goto Jyoushi_Input_Born_Month2:
72470 '6ボタンから ９に移動　ここまで
72480 '9で上を押して何もしない
72490 case 9:
72500 '何もしない
72510 No=9
72520 pause 200:goto Jyoushi_Input_Born_Month2:
72530 '9で上を押しても何もしない　ここまで
72540 '上　 0ボタンから2ボタン
72550 'sp_on 6,1:1
72560 'sp_on 8,1:5
72570 'sp_on 7,1:7
72580 case 0:
72590 No=2:sp_on 13,0:sp_on 9,1:
72600 pause 200:goto Jyoushi_Input_Born_Month2:
72610 '上  0ボタンから2ボタン　ここまで
72620 '2から５になる 上
72630 case 2:
72640 No=5:sp_on 8,1:sp_on 9,0:
72650 pause 200:goto Jyoushi_Input_Born_Month2:
72660 case 5:
72670 No=8:sp_on 7,1:sp_on 8,0
72680 pause 200:goto Jyoushi_Input_Born_Month2:
72690 case 8:
72700 pause 200:goto Input_Born_Month2:
72710 case 1:
72720 No=4:sp_on 5,1:sp_on 6,0
72730 pause 200:goto Jyoushi_Input_Born_Month2:
72740 case 4:
72750 No=7:sp_on 4,1:sp_on 5,0
72760 pause 200:goto Jyoushi_Input_Born_Month2:
72770 case 7:
72780 pause 200:goto Input_Born_Month2:
72790 end select
72800 endif
72810 '左３　ここまで
72820 '下の矢印
72830 '中央 2
72840 if ((y=1) or (key$ = chr$(31))) then
72850 select case No
72860 '9から６に下げる
72870 case 9:
72880 No=6:sp_on 11,1:sp_on 10,0
72890 pause 200:goto Jyoushi_Input_Born_Month2:
72900 '6から３に下げる
72910 case 6:
72920 No=3:sp_on 12,1:sp_on 11,0
72930 pause 200:goto Jyoushi_Input_Born_Month2:
72940 '3から０ｋに変える
72950 case 3:
72960 No=-1:sp_on 14,1:sp_on 12,0
72970 pause 200:goto Jyoushi_Input_Born_Month2:
72980 'Okから下のボタンを押しても何もしない
72990 case -1:
73000 pause 200:goto Jyoushi_Input_Born_Month2:
73010 case 8:
73020 No=5:sp_on 8,1:sp_on 7,0
73030 pause 200:goto Jyoushi_Input_Born_Month2:
73040 case 5:
73050 No=2:sp_on 9,1:sp_on 8,0
73060 pause 200:goto Jyoushi_Input_Born_Month2:
73070 case 2:
73080 No=0:sp_on 13,1:sp_on 9,0
73090 pause 200:goto Jyoushi_Input_Born_Month2:
73100 case 0:
73110 pause 200:goto Jyoushi_Input_Born_Month2:
73120 case 7:
73130 No=4:sp_on 5,1:sp_on 4,0
73140 pause 200:goto Jyoushi_Input_Born_Month2:
73150 case 4:
73160 No=1:sp_on 6,1:sp_on 5,0
73170 pause 200:goto Jyoushi_Input_Born_Month2:
73180 case 1:
73190 pause 200:goto Jyoushi_Input_Born_Month2:
73200 end select
73210 endif
73220 '左へボタン 十字キー　左　or 　カーソル左
73230 if ((y2 = -1) or (key$ = chr$(29))) then
73240 select case No
73250 'Ok ボタン  Okから　左　０に行く
73260 case -1:
73270 No=0:sp_on 13,1:sp_on 14,0
73280 pause 200:goto Jyoushi_Input_Born_Month2:
73290 '0 ボタン  左　何もしない
73300 case 0:
73310 pause 200:goto Jyoushi_Input_Born_Month2:
73320 case 3:
73330 No=2:sp_on 9,1:sp_on 12,0:
73340 pause 200:goto Jyoushi_Input_Born_Month2:
73350 case 2:
73360 No=1:sp_on 6,1:sp_on 9,0:
73370 pause 200:goto Jyoushi_Input_Born_Month2:
73380 case 1:
73390 pause 200:goto Jyoushi_Input_Born_Month2:
73400 case 6:
73410 No=5:sp_on 8,1:sp_on 11,0
73420 pause 200:goto Jyoushi_Input_Born_Month2:
73430 case 5:
73440 No=4:sp_on 5,1:sp_on 8,0
73450 pause 200:goto Jyoushi_Input_Born_Month2:
73460 case 4:
73470 pause 200:goto Jyoushi_Input_Born_Month2:
73480 case 9:
73490 No=8:sp_on 7,1:sp_on 10,0
73500 pause 200:goto Input_Born_Month2:
73510 case 8:
73520 No=7:sp_on 4,1:sp_on 7,0
73530 pause 200:goto Jyoushi_Input_Born_Month2:
73540 case 7:
73550 pause 200:goto Jyoushi_Input_Born_Month2:
73560 end select
73570 endif
73580 '右  十字キー　右　or カーソル　右
73590 if ((y2 = 1) or (key$ = chr$(28))) then
73600 select case No
73610 '0ボタンからokボタン右に移動
73620 case 0:
73630 No=-1:sp_on 14,1:sp_on 13,0
73640 pause 200:goto Jyoushi_Input_Born_Month2:
73650 '0ボタンからokボタン 右に移動　ここまで
73660 'OKボタンで右を押して何もしない
73670 case -1:
73680 pause 200:goto Jyoushi_Input_Born_Month2:
73690 case 1:
73700 No=2:sp_on 9,1:sp_on 6,0
73710 pause 200:goto Jyoushi_Input_Born_Month2:
73720 case 2:
73730 No=3:sp_on 12,1:sp_on 9,0
73740 pause 200:goto Jyoushi_Input_Born_Month2:
73750 case 3:
73760 pause 200:goto Jyoushi_Input_Born_Month2:
73770 case 4:
73780 No=5:sp_on 8,1:sp_on 5,0
73790 pause 200:goto Jyoushi_Input_Born_Month2:
73800 case 5:
73810 No=6:sp_on 11,1:sp_on 8,0
73820 pause 200:goto Jyoushi_Input_Born_Month2:
73830 case 7:
73840 No=8:sp_on 7,1:sp_on 4,0
73850 pause 200:goto Jyoushi_Input_Born_Month2:
73860 case 8:
73870 No=9:sp_on 10,1:sp_on 7,0
73880 pause 200:goto Jyoushi_Input_Born_Month2:
73890 case 9:
73900 pause 200:goto Jyoushi_Input_Born_Month2:
73910 case 6:
73920 pause 200:goto Jyoushi_Input_Born_Month2:
73930 end select
73940 'Okから右ボタンを押して何もしない ここまで
73950 endif
73960 '十字キー　ここまで
73970 '右の丸ボタン + Enter key 決定キー
73980 if ((bg=2) or (key$=chr$(13))) then
73990 select case count
74000 case 0:
74010 if (No=-1) then No=0
74020 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
74030 if (buf_month > 1 and buf_month < 10)  then
74040 buf_Month$ = str$(buf_month)
74050 'buf_month=No
74060 endif
74070 if (buf_month = 1)  then
74080 buf_Month$ = str$(buf_month) + "*"
74090 'c=buf_month
74100 endif
74110 locate 1,3
74120 print "                                     "
74130 color RGB(255,255,255)
74140 locate 1,3
74150 print "上司の生まれた月(1月~12月):" + buf_Month$
74160 goto Jyoushi_Input_Born_Month2:
74170 case 1:
74180 count = 2:
74190 'c = val(buf_Month$)
74200 if (No = -1) then
74210 'count=0
74220 No=0
74230 month=buf_month
74240 buf_month=val(buf_Month$)
74250 month=buf_month
74260 buf_Jyoushi_Born_Day(1)=month
74270 '生まれた日に飛ぶ
74280 goto Jyoushi_Input_Born_Day:
74290 else
74300 buf_month = c*10 + No
74310 'if (buf_month = 1) then
74320 'buf_Month$ = str$(buf_month)
74330 'endif
74340 buf_Month$ = str$(buf_month)
74350 buf_Jyoushi_Born_Day(1) = buf_month
74360 locate 0,3
74370 print "                                           "
74380 locate 1,3
74390 color Rgb(255,255,255)
74400 print "上司の生まれた月(1月~12月):" + buf_Month$
74410 goto Jyoushi_Input_Born_Month2:
74420 endif
74430 case 2:
74440 '==================================
74450 '何もしない
74460 'coun = 2
74470 '==================================
74480 'c= val(buf_Month$)
74490 'buf_month = c*10 + No
74500 'buf_Month$ = str$(buf_month)
74510 'locate 2,3
74520 'print "上司の生まれた月(1月～12月):";buf_Month$
74530 'goto Jyoushi_Input_Born_Month2:
74540 'case 3:
74550 'count=4
74560 'b=val(buf_month$)
74570 'buf_month=c*10+No
74580 'buf_Month$=str$(buf_month)
74590 'locate 2,3
74600 'print "上司の生まれた月(1月～12月):";buf_Month$
74610 'buf_month=val(buf_Month$)
74620 'year=val(buf_year$)
74630 if (No=-1) then
74640 No=0
74650 goto Jyoushi_Input_Born_Day:
74660 else
74670 goto Jyoushi_Input_Born_Month2:
74680 endif
74690 'case 4:
74700 'bufyear=buf_year
74710 'if (No=-1) then
74720 'buf_month = val(buf_Month$)
74730 'month = buf_month
74740 'sp_on 14,0
74750 'goto Input_Born_Day:
74760 'else
74770 'goto Input_Born_Month2:
74780 'endif
74790 end select
74800 endif
74810 '左の丸ボタン　キャンセル
74820 if (bg2=2) then
74830 select case count2
74840 case 0:
74850 if (No = -1) then
74860 buf_month=0:buf_Month$="**"
74870 count=0
74880 'goto rewrite2:
74890 else
74900 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
74910 buf_month = 0:buf_Month$ = "**"
74920 locate 0,3
74930 color rgb(255,255,255)
74940 print "                                       "
74950 goto rewrite2:
74960 if (No>12) then
74970 ui_msg"値が範囲外です。"
74980 goto rewrite2:
74990 endif
75000 endif
75010 endif
75020 rewrite2:
75030 locate 2,3
75040 color rgb(255,255,255)
75050 print "                                      "
75060 locate 2,3
75070 print "上司の生まれた月(1月~12月):"+buf_Month$
75080 goto Jyoushi_Input_Born_Month2:
75090 end select
75100 'endif
75110 endif
75120 end
75130 'end
75140 '生れた日を入力
75150 Jyoushi_Input_Born_Day:
75160 '生まれた日入力
75170 cls 3:play ""
75180 'No=-1:Okのとき
75190 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
75200 for i=0 to 1
75210 buf_day(i)=0
75220 next i
75230 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
75240 '****************************************************************************************************
75250 'WUXG(1920x1200)の時ここから
75260 '****************************************************************************************************
75270 gload Gazo$ + "Screen2.png",0,0,0
75280 gload Gazo$ + "downscreen.png",0,0,800
75290 '****************************************************************************************************
75300 'WUXG(1920x1200)の時ここまで
75310 '****************************************************************************************************
75320 'Init"kb:2"
75330 '音声ファイル再生 2023.06.07
75340 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
75350 font 48
75360 locate 1,1
75370 '文字色：黒　 color rgb(0,0,0)
75380 color rgb(255,255,255)
75390 print "上司の生まれた日を入れて下さい" + chr$(13)
75400 locate 1,3
75410 color rgb(255,255,255)
75420 print "                                      "
75430 locate 1,3
75440 print "上司の生まれた日(1日~31日):"+buf_Day$
75450 color rgb(255,255,255)
75460 'locate 4,6:print ":7"
75470 'locate 9,6:print ":8"
75480 'locate 12,6:print ":9"
75490 'locate 4,6
75500 'print ":7  :8  :9" + chr$(13)
75510 'color rgb(255,255,255)
75520 'locate 4,8
75530 'print ":4  :5  :6" + chr$(13)
75540 'color rgb(255,255,255)
75550 'locate 4,10
75560 'print ":1  :2  :3" + chr$(13)
75570 'locate 4,12
75580 'print "    :0"
75590 'locate 12,12
75600 'color rgb(0,0,255)
75610 'print ":Ok"
75620 sp_on 4,0: sp_on 5,0:sp_on 6,0
75630 sp_on 7,0:sp_on 8,0:sp_on 9,0
75640 sp_on 10,0:sp_on 11,0:sp_on 12,0
75650 sp_on 13,0:sp_on 14,1
75660 Jyoushi_Input_Born_Day2:
75670 key$="":bg=0:y=0:y2=0:bg2=0:
75680 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
75690 key$ = inkey$
75700 bg = strig(1)
75710 y = stick(1)
75720 y2 = stick(0)
75730 bg2 = strig(0)
75740 pause 200
75750 wend
75760 '十字キー　ここから
75770 '上の矢印　または、十字キー上
75780 if ((y = -1) or (key$ = chr$(30))) then
75790 select case No
75800 'No=-1:okのとき:初期の状態
75810 '0kボタンから３に移動
75820 '上に行く 処理
75830 case -1:
75840 No=3:sp_on 12,1:sp_on 14,0
75850 pause 200:goto Jyoushi_Input_Born_Day2:
75860 '選択肢:3
75870 '3ボタンから 6に移動
75880 case 3:
75890 No=6:sp_on 12,0:sp_on 11,1
75900 pause 200:goto Jyoushi_Input_Born_Day2:
75910 '6ボタンから ９に移動
75920 case 6:
75930 No=9:sp_on 10,1:sp_on 11,0
75940 pause 200:goto Jyoushi_Input_Born_Day2:
75950 '6ボタンから ９に移動　ここまで
75960 '9で上を押して何もしない
75970 case 9:
75980 '何もしない
75990 No=9
76000 pause 200:goto Jyoushi_Input_Born_Day2:
76010 '9で上を押しても何もしない　ここまで
76020 '上　 0ボタンから2ボタン
76030 'sp_on 6,1:1
76040 'sp_on 8,1:5
76050 'sp_on 7,1:7
76060 case 0:
76070 No=2:sp_on 13,0:sp_on 9,1:
76080 pause 200:goto Jyoushi_Input_Born_Day2:
76090 '上  0ボタンから2ボタン　ここまで
76100 '2から５になる 上
76110 case 2:
76120 No=5:sp_on 8,1:sp_on 9,0:
76130 pause 200:goto Jyoushi_Input_Born_Day2:
76140 case 5:
76150 No=8:sp_on 7,1:sp_on 8,0
76160 pause 200:goto Jyoushi_Input_Born_Day2:
76170 case 8:
76180 pause 200:goto Jyoushi_Input_Born_Day2:
76190 case 1:
76200 No=4:sp_on 5,1:sp_on 6,0
76210 pause 200:goto Jyoushi_Input_Born_Day2:
76220 case 4:
76230 No=7:sp_on 4,1:sp_on 5,0
76240 pause 200:goto Jyoushi_Input_Born_Day2:
76250 case 7:
76260 pause 200:goto Jyoushi_Input_Born_Day2:
76270 end select
76280 endif
76290 '左３　ここまで
76300 '下の矢印
76310 '中央 2
76320 if ((y=1) or (key$ = chr$(31))) then
76330 select case No
76340 '9から６に下げる
76350 case 9:
76360 No=6:sp_on 11,1:sp_on 10,0
76370 pause 200:goto Jyoushi_Input_Born_Day2:
76380 '6から３に下げる
76390 case 6:
76400 No=3:sp_on 12,1:sp_on 11,0
76410 pause 200:goto Jyoushi_Input_Born_Day2:
76420 '3から０ｋに変える
76430 case 3:
76440 No=-1:sp_on 14,1:sp_on 12,0
76450 pause 200:goto Jyoushi_Input_Born_Day2:
76460 'Okから下のボタンを押しても何もしない
76470 case -1:
76480 pause 200:goto Jyoushi_Input_Born_Day2:
76490 case 8:
76500 No=5:sp_on 8,1:sp_on 7,0
76510 pause 200:goto Jyoushi_Input_Born_Day2:
76520 case 5:
76530 No=2:sp_on 9,1:sp_on 8,0
76540 pause 200:goto Jyoushi_Input_Born_Day2:
76550 case 2:
76560 No=0:sp_on 13,1:sp_on 9,0
76570 pause 200:goto Jyoushi_Input_Born_Day2:
76580 case 0:
76590 pause 200:goto Jyoushi_Input_Born_Day2:
76600 case 7:
76610 No=4:sp_on 5,1:sp_on 4,0
76620 pause 200:goto Jyoushi_Input_Born_Day2:
76630 case 4:
76640 No=1:sp_on 6,1:sp_on 5,0
76650 pause 200:goto Jyoushi_Input_Born_Day2:
76660 case 1:
76670 pause 200:goto Jyoushi_Input_Born_Day2:
76680 end select
76690 endif
76700 '左へボタン 十字キー　左　or 　カーソル左
76710 if ((y2 = -1) or (key$ = chr$(29))) then
76720 select case No
76730 'Ok ボタン  Okから　左　０に行く
76740 case -1:
76750 No=0:sp_on 13,1:sp_on 14,0
76760 pause 200:goto Jyoushi_Input_Born_Day2:
76770 '0 ボタン  左　何もしない
76780 case 0:
76790 pause 200:goto Jyoushi_Input_Born_Day2:
76800 case 3:
76810 No=2:sp_on 9,1:sp_on 12,0:
76820 pause 200:goto Jyoushi_Input_Born_Day2:
76830 case 2:
76840 No=1:sp_on 6,1:sp_on 9,0:
76850 pause 200:goto Jyoushi_Input_Born_Day2:
76860 case 1:
76870 pause 200:goto Jyoushi_Input_Born_Day2:
76880 case 6:
76890 No=5:sp_on 8,1:sp_on 11,0
76900 pause 200:goto Jyoushi_Input_Born_Day2:
76910 case 5:
76920 No=4:sp_on 5,1:sp_on 8,0
76930 pause 200:goto Jyoushi_Input_Born_Day2:
76940 case 4:
76950 pause 200:goto Jyoushi_Input_Born_Day2:
76960 case 9:
76970 No=8:sp_on 7,1:sp_on 10,0
76980 pause 200:goto Jyoushi_Input_Born_Day2:
76990 case 8:
77000 No=7:sp_on 4,1:sp_on 7,0
77010 pause 200:goto Jyoushi_Input_Born_Day2:
77020 case 7:
77030 pause 200:goto Jyoushi_Input_Born_Day2:
77040 end select
77050 endif
77060 '右  十字キー　右　or カーソル　右
77070 if ((y2 = 1) or (key$ = chr$(28))) then
77080 select case No
77090 '0ボタンからokボタン右に移動
77100 case 0:
77110 No=-1:sp_on 14,1:sp_on 13,0
77120 pause 200:goto Jyoushi_Input_Born_Day2:
77130 '0ボタンからokボタン 右に移動　ここまで
77140 'OKボタンで右を押して何もしない
77150 case -1:
77160 pause 200:goto Jyoushi_Input_Born_Day2:
77170 case 1:
77180 No=2:sp_on 9,1:sp_on 6,0
77190 pause 200:goto Jyoushi_Input_Born_Day2:
77200 case 2:
77210 No=3:sp_on 12,1:sp_on 9,0
77220 pause 200:goto Jyoushi_Input_Born_Day2:
77230 case 3:
77240 pause 200:goto Jyoushi_Input_Born_Day2:
77250 case 4:
77260 No=5:sp_on 8,1:sp_on 5,0
77270 pause 200:goto Jyoushi_Input_Born_Day2:
77280 case 5:
77290 No=6:sp_on 11,1:sp_on 8,0
77300 pause 200:goto Jyoushi_Input_Born_Day2:
77310 case 7:
77320 No=8:sp_on 7,1:sp_on 4,0
77330 pause 200:goto Jyoushi_Input_Born_Day2:
77340 case 8:
77350 No=9:sp_on 10,1:sp_on 7,0
77360 pause 200:goto Jyoushi_Input_Born_Day2:
77370 case 9:
77380 pause 200:goto Jyoushi_Input_Born_Day2:
77390 case 6:
77400 pause 200:goto Jyoushi_Input_Born_Day2:
77410 end select
77420 'Okから右ボタンを押して何もしない ここまで
77430 endif
77440 '十字キー　ここまで
77450 '右の丸ボタンを押したとき
77460 if ((bg = 2) or (key$ = chr$(13))) then
77470 'count :決定ボタンを押した回数
77480 select case (count)
77490 '1桁目入力
77500 case 0:
77510 count = 1:
77520 if (No = -1) then
77530 '1桁目　OKでは何もしない
77540 No=c
77550 'goto Jyoushi_Input_Born_Day2:
77560 else
77570 'ok以外のボタンを押したとき
77580 buf_day = No:buf_Day$ = str$(No)
77590 buf_Jyoushi_Born_Day(2)=buf_day
77600 c=No
77610 locate 1,3
77620 print "                                      "
77630 color RGB(255,255,255)
77640 locate 1,3
77650 print "上司の生まれた日(1日~31日):" + buf_Day$
77660 endif
77670 'check2:
77680 'if (buf_day >= 1 and buf_day <= 9) then
77690 'sp_on 14,0
77700 'goto complate_jyoushi:
77710 'else
77720 'sp_on 14,0
77730 goto Jyoushi_Input_Born_Day2:
77740 'end
77750 'endif
77760 case 1:
77770 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
77780 count = 2:
77790 'locate 2,3
77800 'color RGB(255,255,255)
77810 'print "生まれた日(1日~31日):";buf_Day$
77820 'Okボタンを押したときの処理
77830 '入力値　10未満のとき
77840 'buf_day = c * 10 + No
77850 if (No = -1) then
77860 c=buf_day:No=0
77870 'buf_day = c
77880 buf_Day$ = str$(buf_day)
77890 '10以下のとき
77900 'if (buf_day < 10) then
77910 sp_on 14,0
77920 goto complate_jyoushi:
77930 'end
77940 'endif
77950 else
77960 'c=No
77970 buf_day = c * 10 + No
77980 buf_Day$ = str$(buf_day)
77990 'buf_day = c:buf_Day$=str$(buf_day)
78000 buf_Jyoushi_Born_Day(2)=buf_day
78010 locate 1,3
78020 print "                                           "
78030 locate 1,3
78040 color Rgb(255,255,255)
78050 print "上司の生まれた日(1日~31日):" + buf_Day$
78060 goto Jyoushi_Input_Born_Day2:
78070 'goto
78080 endif
78090 'endif
78100 '生まれた日　2桁目の数字　or 1桁の数字 + ok
78110 case 2:
78120 'buf_day = c * 10 + No
78130 'buf_Jyoushi_Born_Day(2)=buf_day
78140 'locate 1,3
78150 'print "                                      "
78160 'locate 1,3
78170 'locate 2,3
78180 'print "生まれた日(1日〜31日):";buf_Day
78190 'No=-1:ok ボタンを押したとき
78200 if (No = -1) then
78210 'if ((buf_day > 0) and (buf_day < 32)) then
78220 No=0
78230 sp_on 14,0
78240 goto complate_jyoushi:
78250 'end
78260 else
78270 goto Jyoushi_Input_Born_Day2:
78280 'endif
78290 'Okボタン以外を押したとき
78300 'else
78310 'c=val(buf_Day$)
78320 'buf_day = c * 10 + No
78330 'buf_Jyoushi_Born_Day(2) = buf_day
78340 'buf_Day$ = str$(buf_day)
78350 'locate 1,3
78360 'print "上司の生まれた日(1日~31日):";buf_Day$
78370 'goto Jyoushi_Input_Born_Day2:
78380 endif
78390 'case 3:
78400 'count=4
78410 'c=val(buf_day$)
78420 'buf_day=c*10+No
78430 'buf_day$=str$(buf_day)
78440 'locate 2,3
78450 'print "生まれた日を入れてください:";buf_day$
78460 'year=val(buf_year$)
78470 'if (No = -1) then
78480 'goto Jyoushi_Input_Born_Day:
78490 'sp_on 14,0:
78500 'goto complate_jyoushi:
78510 'else
78520 'goto Jyoushi_Input_Born_Month2:
78530 'endif
78540 'case 4:
78550 'bufyear=buf_year
78560 'if (No=-1) then
78570 'buf_day = val(buf_day$)
78580 'bufday = buf_day
78590 'sp_on 14,0
78600 'goto Jyoushi_Input_Born_Day2:
78610 'else
78620 'goto Jyoushi_Input_Born_Day2:
78630 'endif
78640 end select
78650 endif
78660 if (bg2=2) then
78670 select case count2
78680 case 0:
78690 if (No=-1) then
78700 buf_day=0:buf_Day$="**":No=0
78710 if (buf_day >= 1 and buf_day <= 31) then
78720 count=0
78730 buf_day=0:buf_Day$ = "**"
78740 goto rewrite_day3:
78750 else
78760 buf_day=0:buf_Day$ = "**"
78770 ui_msg"値が範囲外です"
78780 endif
78790 goto rewrite_day3:
78800 else
78810 goto rewrite_day3:
78820 endif
78830 rewrite_day3:
78840 locate 2,3
78850 color rgb(255,255,255)
78860 print "                                      "
78870 locate 2,3
78880 print "生まれた日(1日~31日):" + buf_Day$
78890 goto Jyoushi_Input_Born_Day2:
78900 end select
78910 endif
78920 '--------------------------------------------'
78930 'locate 2,0:color rgb(255,0,0)
78940 'print "上司の生まれた年代を入力"
78950 'color rgb(255,255,255)
78960 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
78970 'locate 2,4:Input "上司の生まれた年:",born_year
78980 '誕生日データーを配列に代入
78990 'buf_Jyoushi_Born_Year:上司の生まれた年代
79000 'buf_Jyoushi_Born_Day(0) = born_year
79010 'born_year = 0
79020 '---------------------------------------------'
79030 'goto Jyoushi_born_month:
79040 '1-2.生まれた月を入力
79050 'Jyoushi_born_month:
79060 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
79070 'init "kb:4"
79080 'locate 2,1:
79090 'color rgb(255,0,0)
79100 'print "上司の生まれた月入力"
79110 'color rgb(255,255,255)
79120 'locate 2,4:print "生まれた月を入力してください"
79130 'locate 2,5
79140 'Input "上司の生まれ月:",born_month
79150 'buf_Jyoushi_Born_Day(1) = born_month
79160 'born_month = 0
79170 'goto Jyoushi_born_day:
79180 'buf_Jyoushi_Born_day
79190 '1-3.生まれた日を入力
79200 'Jyoushi_born_day:
79210 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
79220 'init "kb:4"
79230 'locate 2,1:color rgb(255,0,0)
79240 'print "上司の生まれた日　入力"
79250 'locate 2,4:color rgb(255,255,255)
79260 'print "生まれた日を入力してください"
79270 'locate 2,5
79280 'Input "上司の生まれた日:",born_day
79290 'buf_Jyoushi_Born_Day(2) = born_day
79300 'born_day = 0
79310 'goto buka_born_year:
79320 '2.部下の誕生日入力
79330 '2-1.生まれた年を入力
79340 'buka_born_year:
79350 'cls 3:gload Gazo$+"Screen1.png",0,0,0
79360 'init "kb:2"
79370 'locate 1,1:color rgb(255,0,0)
79380 'print "部下の生まれた年代入力"
79390 'locate 0,4:color rgb(255,255,255)
79400 'print "部下の生まれた年（西暦4桁）を入れてください"
79410 'locate 0,5
79420 'Input "部下の生まれた年(西暦4桁):",born_year
79430 'buf_Buka_Born_Day(0) = born_year
79440 'born_year = 0
79450 '2-2.生まれた月を入力
79460 'buka_born_month:
79470 'cls 3:gload Gazo$+"Screen1.png",0,0,0
79480 'init "kb:2"
79490 'locate 2,1:color rgb(255,0,0)
79500 'print "部下の生まれた月 入力"
79510 'locate 2,4:color rgb(255,255,255)
79520 'print "部下の生まれた月を入力してください"
79530 'locate 2,5:Input "部下の生まれた月:",born_month
79540 'buf_Buka_Born_Day(1) = born_month
79550 '2-3.生まれた日を入力
79560 'buka_born_day:
79570 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
79580 'init "kb:2"
79590 'locate 2,1:color rgb(255,0,0)
79600 'print "生まれた日入力"
79610 'color rgb(255,255,255)
79620 'locate 2,4:print "生まれた日を入力してください"
79630 'locate 2,5:Input "部下の生まれた日:",born_day
79640 'buf_Buka_Born_Day(2) = born_day
79650 'born_day=0:goto Result_Business_Aisyou:
79660 '--------------------------------------------'
79670 complate_jyoushi:
79680 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
79690 buf_Jyoushi = Kabara_Num(a,b,c)
79700 a_1=buf_Jyoushi
79710 goto Buka_Input_Seireki:
79720 '--------------------------------------------'
79730 '部下'
79740 '1.部下の生まれた年代'
79750 Buka_Input_Seireki:
79760 cls 3:play "":count=0:count2=0
79770 init"kb:4"
79780 'No=-1:Okのとき
79790 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
79800 for i=0 to 3
79810 buf_Buka_Born_Day(i)=0
79820 next i
79830 '****************************************************************************************************
79840 'WUXG(1920x1200)の時ここから
79850 '****************************************************************************************************
79860 gload Gazo$ + "Screen2.png",0,0,0
79870 gload Gazo$ + "downscreen.png",0,0,800
79880 '****************************************************************************************************
79890 'WUXG(1920x1200)の時ここまで
79900 '****************************************************************************************************
79910 'Init"kb:2"
79920 '音声ファイル再生 2023.06.07
79930 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
79940 font 48
79950 locate 0,1
79960 '文字色：黒　 color rgb(0,0,0)
79970 color rgb(255,255,255)
79980 print "部下の生まれた年代を入れて下さい" + chr$(13)
79990 color rgb(255,255,255)
80000 locate 1,3
80010 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
80020 color rgb(255,255,255)
80030 'locate 4,6:print ":7"
80040 'locate 9,6:print ":8"
80050 'locate 12,6:print ":9"
80060 'locate 4,6
80070 'print ":7  :8  :9" + chr$(13)
80080 'color rgb(255,255,255)
80090 'locate 4,8
80100 'print ":4  :5  :6" + chr$(13)
80110 'color rgb(255,255,255)
80120 'locate 4,10
80130 'print ":1  :2  :3" + chr$(13)
80140 'locate 4,12
80150 'print "    :0"
80160 'locate 12,12
80170 'color rgb(0,0,255)
80180 'print ":Ok"
80190 sp_on 4,0: sp_on 5,0:sp_on 6,0
80200 sp_on 7,0:sp_on 8,0:sp_on 9,0
80210 sp_on 10,0:sp_on 11,0:sp_on 12,0
80220 sp_on 13,0:sp_on 14,1
80230 Buka_Input_Seireki2:
80240 key$="":bg=0:y=0:y2=0:bg2=0:
80250 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
80260 key$ = inkey$
80270 bg = strig(1)
80280 y = stick(1)
80290 y2 = stick(0)
80300 bg2=strig(0)
80310 pause 200
80320 wend
80330 '十字キー　ここから
80340 '上の矢印　または、十字キー上
80350 if ((y = -1) or (key$ = chr$(30))) then
80360 select case No
80370 'No=-1:okのとき:初期の状態
80380 '0kボタンから３に移動
80390 '上に行く 処理
80400 case -1:
80410 No=3:sp_on 12,1:sp_on 14,0
80420 pause 200:goto Buka_Input_Seireki2:
80430 '選択肢:3
80440 '3ボタンから 6に移動
80450 case 3:
80460 No=6:sp_on 12,0:sp_on 11,1
80470 pause 200:goto Buka_Input_Seireki2:
80480 '6ボタンから ９に移動
80490 case 6:
80500 No=9:sp_on 10,1:sp_on 11,0
80510 pause 200:goto Buka_Input_Seireki2:
80520 '6ボタンから ９に移動　ここまで
80530 '9で上を押して何もしない
80540 case 9:
80550 '何もしない
80560 No=9
80570 pause 200:goto Buka_Input_Seireki2:
80580 '9で上を押しても何もしない　ここまで
80590 '上　 0ボタンから2ボタン
80600 'sp_on 6,1:1
80610 'sp_on 8,1:5
80620 'sp_on 7,1:7
80630 case 0:
80640 No=2:sp_on 13,0:sp_on 9,1:
80650 pause 200:goto Buka_Input_Seireki2:
80660 '上  0ボタンから2ボタン　ここまで
80670 '2から５になる 上
80680 case 2:
80690 No=5:sp_on 8,1:sp_on 9,0:
80700 pause 200:goto Buka_Input_Seireki2:
80710 case 5:
80720 No=8:sp_on 7,1:sp_on 8,0
80730 pause 200:goto Buka_Input_Seireki2:
80740 case 8:
80750 pause 200:goto Buka_Input_Seireki2:
80760 case 1:
80770 No=4:sp_on 5,1:sp_on 6,0
80780 pause 200:goto Buka_Input_Seireki2:
80790 case 4:
80800 No=7:sp_on 4,1:sp_on 5,0
80810 pause 200:goto Buka_Input_Seireki2:
80820 case 7:
80830 pause 200:goto Buka_Input_Seireki2:
80840 end select
80850 endif
80860 '左３　ここまで
80870 '下の矢印
80880 '中央 2
80890 if ((y=1) or (key$ = chr$(31))) then
80900 select case No
80910 '9から６に下げる
80920 case 9:
80930 No=6:sp_on 11,1:sp_on 10,0
80940 pause 200:goto Buka_Input_Seireki2:
80950 '6から３に下げる
80960 case 6:
80970 No=3:sp_on 12,1:sp_on 11,0
80980 pause 200:goto Buka_Input_Seireki2:
80990 '3から０ｋに変える
81000 case 3:
81010 No=-1:sp_on 14,1:sp_on 12,0
81020 pause 200:goto Buka_Input_Seireki2:
81030 'Okから下のボタンを押しても何もしない
81040 case -1:
81050 pause 200:goto Buka_Input_Seireki2:
81060 case 8:
81070 No=5:sp_on 8,1:sp_on 7,0
81080 pause 200:goto Buka_Input_Seireki2:
81090 case 5:
81100 No=2:sp_on 9,1:sp_on 8,0
81110 pause 200:goto Buka_Input_Seireki2:
81120 case 2:
81130 No=0:sp_on 13,1:sp_on 9,0
81140 pause 200:goto Buka_Input_Seireki2:
81150 case 0:
81160 pause 200:goto Buka_Input_Seireki2:
81170 case 7:
81180 No=4:sp_on 5,1:sp_on 4,0
81190 pause 200:goto Buka_Input_Seireki2:
81200 case 4:
81210 No=1:sp_on 6,1:sp_on 5,0
81220 pause 200:goto Buka_Input_Seireki2:
81230 case 1:
81240 pause 200:goto Buka_Input_Seireki2:
81250 end select
81260 endif
81270 '左へボタン 十字キー　左　or 　カーソル左
81280 if ((y2 = -1) or (key$ = chr$(29))) then
81290 select case No
81300 'Ok ボタン  Okから　左　０に行く
81310 case -1:
81320 No=0:sp_on 13,1:sp_on 14,0
81330 pause 200:goto Buka_Input_Seireki2:
81340 '0 ボタン  左　何もしない
81350 case 0:
81360 pause 200:goto Buka_Input_Seireki2:
81370 case 3:
81380 No=2:sp_on 9,1:sp_on 12,0:
81390 pause 200:goto Buka_Input_Seireki2:
81400 case 2:
81410 No=1:sp_on 6,1:sp_on 9,0:
81420 pause 200:goto Buka_Input_Seireki2:
81430 case 1:
81440 pause 200:goto Buka_Input_Seireki2:
81450 case 6:
81460 No=5:sp_on 8,1:sp_on 11,0
81470 pause 200:goto Buka_Input_Seireki2:
81480 case 5:
81490 No=4:sp_on 5,1:sp_on 8,0
81500 pause 200:goto Buka_Input_Seireki2:
81510 case 4:
81520 pause 200:goto Buka_Input_Seireki2:
81530 case 9:
81540 No=8:sp_on 7,1:sp_on 10,0
81550 pause 200:goto Buka_Input_Seireki2:
81560 case 8:
81570 No=7:sp_on 4,1:sp_on 7,0
81580 pause 200:goto Buka_Input_Seireki2:
81590 case 7:
81600 pause 200:goto Buka_Input_Seireki2:
81610 end select
81620 endif
81630 '右  十字キー　右　or カーソル　右
81640 if ((y2 = 1) or (key$ = chr$(28))) then
81650 select case No
81660 '0ボタンからokボタン右に移動
81670 case 0:
81680 No=-1:sp_on 14,1:sp_on 13,0
81690 pause 200:goto Buka_Input_Seireki2:
81700 '0ボタンからokボタン 右に移動　ここまで
81710 'OKボタンで右を押して何もしない
81720 case -1:
81730 pause 200:goto Buka_Input_Seireki2:
81740 case 1:
81750 No=2:sp_on 9,1:sp_on 6,0
81760 pause 200:goto Buka_Input_Seireki2:
81770 case 2:
81780 No=3:sp_on 12,1:sp_on 9,0
81790 pause 200:goto Buka_Input_Seireki2:
81800 case 3:
81810 pause 200:goto Buka_Input_Seireki2:
81820 case 4:
81830 No=5:sp_on 8,1:sp_on 5,0
81840 pause 200:goto Buka_Input_Seireki2:
81850 case 5:
81860 No=6:sp_on 11,1:sp_on 8,0
81870 pause 200:goto Buka_Input_Seireki2:
81880 case 7:
81890 No=8:sp_on 7,1:sp_on 4,0
81900 pause 200:goto Buka_Input_Seireki2:
81910 case 8:
81920 No=9:sp_on 10,1:sp_on 7,0
81930 pause 200:goto Buka_Input_Seireki2:
81940 case 9:
81950 pause 200:goto Buka_Input_Seireki2:
81960 case 6:
81970 pause 200:goto Buka_Input_Seireki2:
81980 end select
81990 'Okから右ボタンを押して何もしない ここまで
82000 endif
82010 '十字キー　ここまで
82020 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
82030 'ここからコメント
82040 '右の丸ボタン決定を押した数:count
82050 'if ((bg=2) or (key$=chr$(13))) then
82060 'select case count
82070 'case 0:
82080 'count=1
82090 'if (No = -1) then
82100 'count = 0
82110 'Okボタンを押したとき
82120 '
82130 'goto Buka_Input_Seireki2:
82140 'else
82150 'Okボタン以外が押されたとき
82160 'if (No >= 1 and No <= 2) then
82170 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
82180 'buf_buka_year = No
82190 'buf_Buka_Born_Day(0) = bufyear
82200 'locate 2,3
82210 'color rgb(255,255,255)
82220 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
82230 'goto Buka_Input_Seireki2:
82240 'else
82250 'count=0
82260 'ui_msg"数字が範囲外になります。"
82270 'buf_buka_year$ ="":buf_buka_year=0
82280 'goto Buka_Input_Seireki2:
82290 'endif
82300 'endif
82310 'case 1:
82320 'count = 2
82330 'if (No = -1) then
82340 'count = 1
82350 'goto Buka_Input_Seireki2:
82360 'else
82370 'b = val(buf_buka_year$)
82380 'buf_buka_year = b * 10 + No
82390 'buf_buka_year$ = str$(buf_buka_year)
82400 'buf_Buka_Born_Day(0) = bufyear
82410 'locate 1,3
82420 'color rgb(255,255,255)
82430 'print "                                                                "
82440 'locate 1,3
82450 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
82460 'if (No = -1) then
82470 'count=1
82480 'goto Buka_Input_Seireki2:
82490 'endif
82500 'case 2:
82510 'count = 3
82520 'if (No = -1) then
82530 'count = 2
82540 'buf_Buka_Born_Day(0)=bufyear
82550 'goto Buka_Input_Seireki2:
82560 'else
82570 'b = val(buf_buka_year$)
82580 'buf_buka_year = b*10 + No
82590 'buf_buka_year$ = str$(buf_buka_year)
82600 'locate 1,3
82610 'color rgb(255,255,255)
82620 'print "                                        "
82630 'locate 1,3
82640 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
82650 'goto Buka_Input_Seireki2:
82660 'endif
82670 'case 3:
82680 'count=4
82690 'if (No = -1) then
82700 'count=3
82710 'goto Buka_Input_Seireki2:
82720 'else
82730 'b = buf_buka_year
82740 'buf_buka_year = b * 10 + No
82750 'buf_buka_year$=str$(buf_buka_year)
82760 'locate 1,3
82770 'color RGB(255,255,255)
82780 'print "                                      "
82790 'locate 1,3
82800 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
82810 'buf_year=val(buf_year$)
82820 'year=val(buf_year$)
82830 'if (No=-1) then
82840 'goto Input_Born_Month:
82850 'else
82860 'goto Buka_Input_Seireki2:
82870 'endif
82880 'case 4:
82890 'bufyear=buf_year
82900 'if (No=-1) then
82910 'buf_year = val(buf_year$)
82920 'bufyear = buf_year
82930 'sp_on 14,0
82940 'goto Buka_Input_Born_Month:
82950 'else
82960 'goto Buka_Input_Seireki2:
82970 'endif
82980 'end select
82990 'endif
83000 'if (bg2 = 2) then
83010 'select case count2
83020 'case 0:
83030 'if (No = -1) then
83040 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
83050 'count=0
83060 'locate 1,3
83070 'color rgb(255,255,255)
83080 'print "                                      "
83090 'locate 1,3
83100 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
83110 'goto Buka_Input_Seireki2:
83120 'else
83130 '(buf_year=0) then
83140 'buf_buka_year=0:buf_buka_year$="****"
83150 'goto Buka_Input_Seireki2:
83160 'endif
83170 'endif
83180 'end select
83190 'endif
83200 'end
83210 'ここまでコメント
83220 '================================================================
83230 if ((bg=2) or (key$=chr$(13))) then
83240 select case count
83250 case 0:
83260 count = 1
83270 if (No=-1) then
83280 count = 0
83290 buf_Buka_Born_Day(0) = No
83300 'Okボタンを押したとき
83310 goto Buka_Input_Seireki2:
83320 else
83330 'Okボタン以外が押されたとき
83340 if (No>=1 and No<=2) then
83350 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
83360 buf_buka_year = No
83370 buf_Buka_Born_Day(0) = No
83380 locate 1,3
83390 color rgb(255,255,255)
83400 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
83410 goto Buka_Input_Seireki2:
83420 else
83430 count=0
83440 ui_msg"数字が範囲外になります。"
83450 buf_buka_year$="":buf_buka_year=0
83460 goto Buka_Input_Seireki2:
83470 endif
83480 endif
83490 case 1:
83500 count = 2
83510 if (No = -1) then
83520 count = 1
83530 goto Buka_Input_Seireki2:
83540 else
83550 'b = val(buf_buka_year$)
83560 buf_buka_year = a * 10 + No
83570 b=buf_buka_year
83580 buf_buka_year$ = str$(buf_buka_year)+"**"
83590 buf_Buka_Born_Day(0)=buf_buka_year
83600 locate 1,3
83610 color rgb(255,255,255)
83620 print "                                                                "
83630 locate 1,3
83640 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
83650 'if (No = -1) then
83660 'count=1
83670 goto Buka_Input_Seireki2:
83680 endif
83690 case 2:
83700 count=3
83710 if (No=-1) then
83720 count =2:No=0
83730 goto Buka_Input_Seireki2:
83740 else
83750 'b = val(buf_buka_year$)
83760 buf_buka_year = b * 10 + No
83770 c = buf_buka_year
83780 buf_buka_year$ = str$(buf_buka_year) + "*"
83790 buf_Buka_Born_Day(0) = buf_buka_year
83800 locate 1,3
83810 color rgb(255,255,255)
83820 print "                                        "
83830 locate 1,3
83840 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
83850 goto Buka_Input_Seireki2:
83860 endif
83870 case 3:
83880 count=4
83890 if (No = -1) then
83900 'count=3:No=0
83910 goto Buka_Input_Seireki2:
83920 else
83930 'b = val(buf_buka_year$)
83940 buf_buka_year=c * 10 + No
83950 buf_buka_year$=str$(buf_buka_year)
83960 buf_Buka_Born_Day(0)=buf_buka_year
83970 locate 1,3
83980 color RGB(255,255,255)
83990 print "                                      "
84000 locate 1,3
84010 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
84020 buf_buka_year=val(buf_buka_year$)
84030 'year=val(buf_year$)
84040 'if (No=-1) then
84050 'goto Input_Born_Month:
84060 'else
84070 goto Buka_Input_Seireki2:
84080 endif
84090 case 4:
84100 'bufyear=buf_year
84110 if (No = -1) then
84120 buf_buka_year = val(buf_buka_year$)
84130 buf_Buka_Born_Day(0)=buf_buka_year
84140 sp_on 14,0
84150 goto Buka_Input_Born_Month:
84160 else
84170 goto Buka_Input_Seireki2:
84180 endif
84190 end select
84200 endif
84210 '================================================================
84220 'ここにコピーする。
84230 '================================================================
84240 'Input"部下の生れた年代(4桁,〜2025年):",year
84250 'if year > 2025 then goto Jyoushi_Input_Seireki:
84260 'if year = 123 then cls 3:cls 4:goto Main_Screen:
84270 '"4桁目"
84280 'bufyear4 = fix(year / 1000)
84290 '"3桁目"
84300 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
84310 '"2桁目"
84320 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
84330 '"1桁目"
84340 'bufyear1 = fix((year - ((bufyear4*
84350 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
84360 '1.部下の生まれた年代'
84370 '2.部下の生まれた月'
84380 Buka_Input_Born_Month:
84390 cls 3:play "":count=0:count2=0
84400 'No=-1:Okのとき
84410 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
84420 for i=0 to 1
84430 buf_month(i)=0
84440 next i
84450 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
84460 '****************************************************************************************************
84470 'WUXG(1920x1200)の時ここから
84480 '****************************************************************************************************
84490 gload Gazo$ + "Screen2.png",0,0,0
84500 gload Gazo$ + "downscreen.png",0,0,800
84510 '****************************************************************************************************
84520 'WUXG(1920x1200)の時ここから
84530 '****************************************************************************************************
84540 'Init"kb:4"
84550 '音声ファイル再生 2023.06.07
84560 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
84570 '****************************************************************************************************
84580 'WUXG(1920x1200)の時ここから
84590 '****************************************************************************************************
84600 font 48
84610 '****************************************************************************************************
84620 'WUXG(1920x1200)の時ここまで
84630 '****************************************************************************************************
84640 locate 0,1
84650 '文字色：黒　 color rgb(0,0,0)
84660 '文字色:白
84670 color rgb(255,255,255)
84680 print "部下の生まれた月を入れて下さい" + chr$(13)
84690 '文字色:白
84700 color rgb(255,255,255)
84710 locate 1,3
84720 '文字色:白
84730 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
84740 color rgb(255,255,255)
84750 'locate 4,6:print ":7"
84760 'locate 9,6:print ":8"
84770 'locate 12,6:print ":9"
84780 'locate 4,6
84790 '文字色:赤
84800 'print ":7  :8  :9" + chr$(13)
84810 'color rgb(255,255,255)
84820 'locate 4,8
84830 'print ":4  :5  :6" + chr$(13)
84840 'color rgb(255,255,255)
84850 'locate 4,10
84860 'print ":1  :2  :3" + chr$(13)
84870 'locate 4,12
84880 'print "    :0"
84890 'locate 12,12
84900 'color rgb(0,0,255)
84910 'print ":Ok"
84920 sp_on 4,0: sp_on 5,0:sp_on 6,0
84930 sp_on 7,0:sp_on 8,0:sp_on 9,0
84940 sp_on 10,0:sp_on 11,0:sp_on 12,0
84950 sp_on 13,0:sp_on 14,1
84960 Buka_Input_Born_Month2:
84970 key$="":bg=0:y=0:y2=0:bg2=0
84980 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
84990 key$ = inkey$
85000 bg = strig(1)
85010 y = stick(1)
85020 y2 = stick(0)
85030 bg2 = strig(0)
85040 pause 200
85050 wend
85060 '十字キー　ここから
85070 '上の矢印　または、十字キー上
85080 if ((y = -1) or (key$ = chr$(30))) then
85090 select case No
85100 'No=-1:okのとき:初期の状態
85110 '0kボタンから３に移動
85120 '上に行く 処理
85130 case -1:
85140 No=3:sp_on 12,1:sp_on 14,0
85150 pause 200:goto Buka_Input_Born_Month2:
85160 '選択肢:3
85170 '3ボタンから 6に移動
85180 case 3:
85190 No=6:sp_on 12,0:sp_on 11,1
85200 pause 200:goto Buka_Input_Born_Month2:
85210 '6ボタンから ９に移動
85220 case 6:
85230 No=9:sp_on 10,1:sp_on 11,0
85240 pause 200:goto Buka_Input_Born_Month2:
85250 '6ボタンから ９に移動　ここまで
85260 '9で上を押して何もしない
85270 case 9:
85280 '何もしない
85290 No=9
85300 pause 200:goto Buka_Input_Born_Month2:
85310 '9で上を押しても何もしない　ここまで
85320 '上　 0ボタンから2ボタン
85330 'sp_on 6,1:1
85340 'sp_on 8,1:5
85350 'sp_on 7,1:7
85360 case 0:
85370 No=2:sp_on 13,0:sp_on 9,1:
85380 pause 200:goto Buka_Input_Born_Month2:
85390 '上  0ボタンから2ボタン　ここまで
85400 '2から５になる 上
85410 case 2:
85420 No=5:sp_on 8,1:sp_on 9,0:
85430 pause 200:goto Buka_Input_Born_Month2:
85440 case 5:
85450 No=8:sp_on 7,1:sp_on 8,0
85460 pause 200:goto Buka_Input_Born_Month2:
85470 case 8:
85480 pause 200:goto Buka_Input_Born_Month2:
85490 case 1:
85500 No=4:sp_on 5,1:sp_on 6,0
85510 pause 200:goto Buka_Input_Born_Month2:
85520 case 4:
85530 No=7:sp_on 4,1:sp_on 5,0
85540 pause 200:goto Buka_Input_Born_Month2:
85550 case 7:
85560 pause 200:goto Buka_Input_Born_Month2:
85570 end select
85580 endif
85590 '左３　ここまで
85600 '下の矢印
85610 '中央 2
85620 if ((y=1) or (key$ = chr$(31))) then
85630 select case No
85640 '9から６に下げる
85650 case 9:
85660 No=6:sp_on 11,1:sp_on 10,0
85670 pause 200:goto Buka_Input_Born_Month2:
85680 '6から３に下げる
85690 case 6:
85700 No=3:sp_on 12,1:sp_on 11,0
85710 pause 200:goto Buka_Input_Born_Month2:
85720 '3から０ｋに変える
85730 case 3:
85740 No=-1:sp_on 14,1:sp_on 12,0
85750 pause 200:goto Buka_Input_Born_Month2:
85760 'Okから下のボタンを押しても何もしない
85770 case -1:
85780 pause 200:goto Buka_Input_Born_Month2:
85790 case 8:
85800 No=5:sp_on 8,1:sp_on 7,0
85810 pause 200:goto Buka_Input_Born_Month2:
85820 case 5:
85830 No=2:sp_on 9,1:sp_on 8,0
85840 pause 200:goto Buka_Input_Born_Month2:
85850 case 2:
85860 No=0:sp_on 13,1:sp_on 9,0
85870 pause 200:goto Buka_Input_Born_Month2:
85880 case 0:
85890 pause 200:goto Buka_Input_Born_Month2:
85900 case 7:
85910 No=4:sp_on 5,1:sp_on 4,0
85920 pause 200:goto Buka_Input_Born_Month2:
85930 case 4:
85940 No=1:sp_on 6,1:sp_on 5,0
85950 pause 200:goto Buka_Input_Born_Month2:
85960 case 1:
85970 pause 200:goto Buka_Input_Born_Month2:
85980 end select
85990 endif
86000 '左へボタン 十字キー　左　or 　カーソル左
86010 if ((y2 = -1) or (key$ = chr$(29))) then
86020 select case No
86030 'Ok ボタン  Okから　左　０に行く
86040 case -1:
86050 No=0:sp_on 13,1:sp_on 14,0
86060 pause 200:goto Buka_Input_Born_Month2:
86070 '0 ボタン  左　何もしない
86080 case 0:
86090 pause 200:goto Buka_Input_Born_Month2:
86100 case 3:
86110 No=2:sp_on 9,1:sp_on 12,0:
86120 pause 200:goto Buka_Input_Born_Month2:
86130 case 2:
86140 No=1:sp_on 6,1:sp_on 9,0:
86150 pause 200:goto Buka_Input_Born_Month2:
86160 case 1:
86170 pause 200:goto Buka_Input_Born_Month2:
86180 case 6:
86190 No=5:sp_on 8,1:sp_on 11,0
86200 pause 200:goto Buka_Input_Born_Month2:
86210 case 5:
86220 No=4:sp_on 5,1:sp_on 8,0
86230 pause 200:goto Buka_Input_Born_Month2:
86240 case 4:
86250 pause 200:goto Buka_Input_Born_Month2:
86260 case 9:
86270 No=8:sp_on 7,1:sp_on 10,0
86280 pause 200:goto Buka_Input_Born_Month2:
86290 case 8:
86300 No=7:sp_on 4,1:sp_on 7,0
86310 pause 200:goto Buka_Input_Born_Month2:
86320 case 7:
86330 pause 200:goto Buka_Input_Born_Month2:
86340 end select
86350 endif
86360 '右  十字キー　右　or カーソル　右
86370 if ((y2 = 1) or (key$ = chr$(28))) then
86380 select case No
86390 '0ボタンからokボタン右に移動
86400 case 0:
86410 No=-1:sp_on 14,1:sp_on 13,0
86420 pause 200:goto Buka_Input_Born_Month2:
86430 '0ボタンからokボタン 右に移動　ここまで
86440 'OKボタンで右を押して何もしない
86450 case -1:
86460 pause 200:goto Buka_Input_Born_Month2:
86470 case 1:
86480 No=2:sp_on 9,1:sp_on 6,0
86490 pause 200:goto Buka_Input_Born_Month2:
86500 case 2:
86510 No=3:sp_on 12,1:sp_on 9,0
86520 pause 200:goto Buka_Input_Born_Month2:
86530 case 3:
86540 pause 200:goto Buka_Input_Born_Month2:
86550 case 4:
86560 No=5:sp_on 8,1:sp_on 5,0
86570 pause 200:goto Buka_Input_Born_Month2:
86580 case 5:
86590 No=6:sp_on 11,1:sp_on 8,0
86600 pause 200:goto Buka_Input_Born_Month2:
86610 case 7:
86620 No=8:sp_on 7,1:sp_on 4,0
86630 pause 200:goto Buka_Input_Born_Month2:
86640 case 8:
86650 No=9:sp_on 10,1:sp_on 7,0
86660 pause 200:goto Buka_Input_Born_Month2:
86670 case 9:
86680 pause 200:goto Buka_Input_Born_Month2:
86690 case 6:
86700 pause 200:goto Buka_Input_Born_Month2:
86710 end select
86720 'Okから右ボタンを押して何もしない ここまで
86730 endif
86740 '十字キー　ここまで
86750 '右の丸ボタン　決定キー
86760 if ((bg=2) or (key$=chr$(13))) then
86770 select case count
86780 case 0:
86790 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
86800 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
86810 locate 1,3
86820 color RGB(255,255,255)
86830 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
86840 goto Buka_Input_Born_Month2:
86850 case 1:
86860 count = 2:buf_buka_month=a*10+No
86870 if (No = -1) then
86880 'count=0
86890 month=buf_buka_month
86900 buf_buka_month=val(buf_buka_Month$)
86910 month=buf_buka_month
86920 '生まれた日に飛ぶ
86930 goto Buka_Input_Born_Day:
86940 else
86950 buf_buka_month = a * 10 + No
86960 buf_buka_Month$ = str$(buf_buka_month)
86970 buf_Buka_Born_Day(1) = buf_buka_month
86980 locate 1,3
86990 color Rgb(255,255,255)
87000 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
87010 goto Buka_Input_Born_Month2:
87020 endif
87030 case 2:
87040 count=3
87050 'c= val(buf_Month$)
87060 'buf_month = c*10 + No
87070 'buf_Month$ = str$(buf_month)
87080 'locate 2,3
87090 'print "部下の生まれた月(1月～12月):";buf_Month$
87100 'goto Buka_Input_Born_Month2:
87110 'case 3:
87120 'count=4
87130 'b=val(buf_month$)
87140 'buf_month=c*10+No
87150 'buf_Month$=str$(buf_month)
87160 'locate 2,3
87170 'print "部下の生まれた月(1月～12月):";buf_Month$
87180 'buf_month=val(buf_Month$)
87190 'year=val(buf_year$)
87200 if (No=-1) then
87210 goto Buka_Input_Born_Day:
87220 else
87230 goto Input_Born_Month2:
87240 endif
87250 'case 4:
87260 'bufyear=buf_year
87270 'if (No=-1) then
87280 'buf_month = val(buf_Month$)
87290 'month = buf_month
87300 'sp_on 14,0
87310 'goto Input_Born_Day:
87320 'else
87330 'goto Input_Born_Month2:
87340 'endif
87350 end select
87360 endif
87370 '左の丸ボタン　キャンセル
87380 if (bg2=2) then
87390 select case count2
87400 case 0:
87410 if (No = -1) then
87420 buf_buka_month=0:buf_buka_Month$="**"
87430 count=0
87440 goto rewrite2:
87450 else
87460 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
87470 buf_month=0:buf_Month$="**"
87480 locate 2,3
87490 color rgb(255,255,255)
87500 print "                                       "
87510 goto rewrite2:
87520 if (No>12) then
87530 ui_msg"値が範囲外です。"
87540 goto rewrite2:
87550 endif
87560 endif
87570 endif
87580 rewrite2:
87590 locate 2,3
87600 color rgb(255,255,255)
87610 print "                                      "
87620 locate 2,3
87630 print "部下の生まれた月(1月~12月):";buf_buka_Month$
87640 goto Buka_Input_Born_Month2:
87650 end select
87660 'endif
87670 endif
87680 end
87690 '2.部下の生まれた月'
87700 '3.部下の生まれた日'
87710 '生れた日を入力
87720 Buka_Input_Born_Day:
87730 '生まれた日入力
87740 cls 3:play ""
87750 'No=-1:Okのとき
87760 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
87770 for i=0 to 1
87780 buf_day(i)=0
87790 next i
87800 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
87810 '****************************************************************************************************
87820 'WUXG(1920x1200)の時ここから
87830 '****************************************************************************************************
87840 gload Gazo$ + "Screen2.png",0,0,0
87850 gload Gazo$ + "downscreen.png",0,0,800
87860 '****************************************************************************************************
87870 'WUXG(1920x1200)の時ここまで
87880 '****************************************************************************************************
87890 'Init"kb:2"
87900 '音声ファイル再生 2023.06.07
87910 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
87920 font 48
87930 locate 0,1
87940 '文字色：黒　 color rgb(0,0,0)
87950 color rgb(255,255,255)
87960 print "部下の生まれた日を入れて下さい" + chr$(13)
87970 color rgb(255,255,255)
87980 locate 1,3
87990 print "部下の生まれた日(1日~31日):";buf_Day$
88000 color rgb(255,255,255)
88010 'locate 4,6:print ":7"
88020 'locate 9,6:print ":8"
88030 'locate 12,6:print ":9"
88040 'locate 4,6
88050 'print ":7  :8  :9" + chr$(13)
88060 'color rgb(255,255,255)
88070 'locate 4,8
88080 'print ":4  :5  :6" + chr$(13)
88090 'color rgb(255,255,255)
88100 'locate 4,10
88110 'print ":1  :2  :3" + chr$(13)
88120 'locate 4,12
88130 'print "    :0"
88140 'locate 12,12
88150 'color rgb(0,0,255)
88160 'print ":Ok"
88170 sp_on 4,0: sp_on 5,0:sp_on 6,0
88180 sp_on 7,0:sp_on 8,0:sp_on 9,0
88190 sp_on 10,0:sp_on 11,0:sp_on 12,0
88200 sp_on 13,0:sp_on 14,1
88210 Buka_Input_Born_Day2:
88220 '
88230 key$="":bg=0:y=0:y2=0:bg2=0
88240 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
88250 key$ = inkey$
88260 bg = strig(1)
88270 y = stick(1)
88280 y2 = stick(0)
88290 bg2 = strig(0)
88300 pause 200
88310 wend
88320 '十字キー　ここから
88330 '上の矢印　または、十字キー上
88340 if ((y = -1) or (key$ = chr$(30))) then
88350 select case No
88360 'No=-1:okのとき:初期の状態
88370 '0kボタンから３に移動
88380 '上に行く 処理
88390 case -1:
88400 No=3:sp_on 12,1:sp_on 14,0
88410 pause 200:goto Buka_Input_Born_Day2:
88420 '選択肢:3
88430 '3ボタンから 6に移動
88440 case 3:
88450 No=6:sp_on 12,0:sp_on 11,1
88460 pause 200:goto Buka_Input_Born_Day2:
88470 '6ボタンから ９に移動
88480 case 6:
88490 No=9:sp_on 10,1:sp_on 11,0
88500 pause 200:goto Buka_Input_Born_Day2:
88510 '6ボタンから ９に移動　ここまで
88520 '9で上を押して何もしない
88530 case 9:
88540 '何もしない
88550 No=9
88560 pause 200:goto Buka_Input_Born_Day2:
88570 '9で上を押しても何もしない　ここまで
88580 '上　 0ボタンから2ボタン
88590 'sp_on 6,1:1
88600 'sp_on 8,1:5
88610 'sp_on 7,1:7
88620 case 0:
88630 No=2:sp_on 13,0:sp_on 9,1:
88640 pause 200:goto Buka_Input_Born_Day2:
88650 '上  0ボタンから2ボタン　ここまで
88660 '2から５になる 上
88670 case 2:
88680 No=5:sp_on 8,1:sp_on 9,0:
88690 pause 200:goto Buka_Input_Born_Day2:
88700 case 5:
88710 No=8:sp_on 7,1:sp_on 8,0
88720 pause 200:goto Buka_Input_Born_Day2:
88730 case 8:
88740 pause 200:goto Buka_Input_Born_Day2:
88750 case 1:
88760 No=4:sp_on 5,1:sp_on 6,0
88770 pause 200:goto Buka_Input_Born_Day2:
88780 case 4:
88790 No=7:sp_on 4,1:sp_on 5,0
88800 pause 200:goto Buka_Input_Born_Day2:
88810 case 7:
88820 pause 200:goto Buka_Input_Born_Day2:
88830 end select
88840 endif
88850 '左３　ここまで
88860 '下の矢印
88870 '中央 2
88880 if ((y=1) or (key$ = chr$(31))) then
88890 select case No
88900 '9から６に下げる
88910 case 9:
88920 No=6:sp_on 11,1:sp_on 10,0
88930 pause 200:goto Buka_Input_Born_Day2:
88940 '6から３に下げる
88950 case 6:
88960 No=3:sp_on 12,1:sp_on 11,0
88970 pause 200:goto Buka_Input_Born_Day2:
88980 '3から０ｋに変える
88990 case 3:
89000 No=-1:sp_on 14,1:sp_on 12,0
89010 pause 200:goto Buka_Input_Born_Day2:
89020 'Okから下のボタンを押しても何もしない
89030 case -1:
89040 pause 200:goto Buka_Input_Born_Day2:
89050 case 8:
89060 No=5:sp_on 8,1:sp_on 7,0
89070 pause 200:goto Buka_Input_Born_Day2:
89080 case 5:
89090 No=2:sp_on 9,1:sp_on 8,0
89100 pause 200:goto Buka_Input_Born_Day2:
89110 case 2:
89120 No=0:sp_on 13,1:sp_on 9,0
89130 pause 200:goto Buka_Input_Born_Day2:
89140 case 0:
89150 pause 200:goto Buka_Input_Born_Day2:
89160 case 7:
89170 No=4:sp_on 5,1:sp_on 4,0
89180 pause 200:goto Buka_Input_Born_Day2:
89190 case 4:
89200 No=1:sp_on 6,1:sp_on 5,0
89210 pause 200:goto Buka_Input_Born_Day2:
89220 case 1:
89230 pause 200:goto Buka_Input_Born_Day2:
89240 end select
89250 endif
89260 '左へボタン 十字キー　左　or 　カーソル左
89270 if ((y2 = -1) or (key$ = chr$(29))) then
89280 select case No
89290 'Ok ボタン  Okから　左　０に行く
89300 case -1:
89310 No=0:sp_on 13,1:sp_on 14,0
89320 pause 200:goto Buka_Input_Born_Day2:
89330 '0 ボタン  左　何もしない
89340 case 0:
89350 pause 200:goto Buka_Input_Born_Day2:
89360 case 3:
89370 No=2:sp_on 9,1:sp_on 12,0:
89380 pause 200:goto Buka_Input_Born_Day2:
89390 case 2:
89400 No=1:sp_on 6,1:sp_on 9,0:
89410 pause 200:goto Buka_Input_Born_Day2:
89420 case 1:
89430 pause 200:goto Buka_Input_Born_Day2:
89440 case 6:
89450 No=5:sp_on 8,1:sp_on 11,0
89460 pause 200:goto Buka_Input_Born_Day2:
89470 case 5:
89480 No=4:sp_on 5,1:sp_on 8,0
89490 pause 200:goto Buka_Input_Born_Day2:
89500 case 4:
89510 pause 200:goto Buka_Input_Born_Day2:
89520 case 9:
89530 No=8:sp_on 7,1:sp_on 10,0
89540 pause 200:goto Buka_Input_Born_Day2:
89550 case 8:
89560 No=7:sp_on 4,1:sp_on 7,0
89570 pause 200:goto Buka_Input_Born_Day2:
89580 case 7:
89590 pause 200:goto Buka_Input_Born_Day2:
89600 end select
89610 endif
89620 '右  十字キー　右　or カーソル　右
89630 if ((y2 = 1) or (key$ = chr$(28))) then
89640 select case No
89650 '0ボタンからokボタン右に移動
89660 case 0:
89670 No=-1:sp_on 14,1:sp_on 13,0
89680 pause 200:goto Buka_Input_Born_Day2:
89690 '0ボタンからokボタン 右に移動　ここまで
89700 'OKボタンで右を押して何もしない
89710 case -1:
89720 pause 200:goto Buka_Input_Born_Day2:
89730 case 1:
89740 No=2:sp_on 9,1:sp_on 6,0
89750 pause 200:goto Buka_Input_Born_Day2:
89760 case 2:
89770 No=3:sp_on 12,1:sp_on 9,0
89780 pause 200:goto Buka_Input_Born_Day2:
89790 case 3:
89800 pause 200:goto Buka_Input_Born_Day2:
89810 case 4:
89820 No=5:sp_on 8,1:sp_on 5,0
89830 pause 200:goto Buka_Input_Born_Day2:
89840 case 5:
89850 No=6:sp_on 11,1:sp_on 8,0
89860 pause 200:goto Buka_Input_Born_Day2:
89870 case 7:
89880 No=8:sp_on 7,1:sp_on 4,0
89890 pause 200:goto Buka_Input_Born_Day2:
89900 case 8:
89910 No=9:sp_on 10,1:sp_on 7,0
89920 pause 200:goto Buka_Input_Born_Day2:
89930 case 9:
89940 pause 200:goto Buka_Input_Born_Day2:
89950 case 6:
89960 pause 200:goto Buka_Input_Born_Day2:
89970 end select
89980 'Okから右ボタンを押して何もしない ここまで
89990 endif
90000 '十字キー　ここまで
90010 '右の丸ボタンを押したとき
90020 if ((bg = 2) or (key$ = chr$(13))) then
90030 'count :決定ボタンを押した回数
90040 select case (count)
90050 '1桁目入力
90060 case 0:
90070 count = 1:
90080 if (No = -1) then
90090 '1桁目　OKでは何もしない
90100 'goto check:
90110 No=0
90120 else
90130 'ok以外のボタンを押したとき
90140 buf_buka_day = No:buf_buka_Day$ = str$(No)
90150 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
90160 buf_buka_Day$ = str$(No) + "*"
90170 endif
90180 a=No
90190 buf_Buka_Born_Day(2) = buf_buka_day
90200 locate 1,3
90210 print"                                      "
90220 color RGB(255,255,255)
90230 locate 1,3
90240 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
90250 endif
90260 check2:
90270 if (No >= 1 and No <= 9) then
90280 sp_on 14,0
90290 goto Buka_Input_Born_Day2:
90300 else
90310 sp_on 14,0
90320 goto Result_Business_Aisyou:
90330 end
90340 endif
90350 case 1:
90360 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
90370 count = 2:
90380 'locate 2,3
90390 'color RGB(255,255,255)
90400 'print "生まれた日(1日~31日):";buf_Day$
90410 'Okボタンを押したときの処理
90420 '入力値　10未満のとき
90430 'c = buf_day
90440 if (No = -1) then
90450 'c=buf_day
90460 ' buf_day = c
90470 'buf_Day$ = str$(buf_day)
90480 '10以下のとき
90490 No=0
90500 if (buf_day < 10) then
90510 sp_on 14,0
90520 goto Result_Business_Aisyou:
90530 end
90540 endif
90550 else
90560 sp_on 14,0
90570 'c=No
90580 buf_buka_day = a * 10 + No
90590 buf_buka_Day$ = str$(buf_buka_day)
90600 buf_Buka_Born_Day(2) = buf_buka_day
90610 locate 0,3
90620 color Rgb(255,255,255)
90630 print "                                       "
90640 locate 1,3
90650 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
90660 goto Buka_Input_Born_Day2:
90670 endif
90680 '生まれた日　2桁目の数字　or 1桁の数字 + ok
90690 case 2:
90700 count=0
90710 'c=val(buf_Day$)
90720 'buf_day=c*10+No
90730 'buf_Day$=str$(buf_day)
90740 'day=buf_day
90750 'locate 2,3
90760 'print "生まれた日(1日〜31日):";buf_Day$
90770 'No=-1:ok ボタンを押したとき
90780 if (No = -1) then No=0
90790 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
90800 sp_on 14,0
90810 goto Result_Business_Aisyou:
90820 else
90830 goto Buka_Input_Born_Day2:
90840 endif
90850 'Okボタン以外を押したとき
90860 else
90870 c=val(buf_buka_Day$)
90880 buf_buka_day = c * 10 + No
90890 buf_buka_Day$ = str$(buf_buka_day)
90900 locate 1,3
90910 print "                "
90920 locate 1,3
90930 print "生まれた日(1日~31日):"+buf_buka_Day$
90940 goto Buka_Input_Born_Day2:
90950 'endif
90960 case 3:
90970 count=4
90980 'c=val(buf_day$)
90990 'buf_day=c*10+No
91000 'buf_day$=str$(buf_day)
91010 'locate 2,3
91020 'print "生まれた日を入れてください:";buf_day$
91030 'year=val(buf_year$)
91040 if (No = -1) then
91050 'goto Buka_Input_Born_Day:
91060 sp_on 14,0:
91070 goto complate_jyoushi:
91080 else
91090 goto Buka_Input_Born_Month2:
91100 endif
91110 'case 4:
91120 'bufyear=buf_year
91130 'if (No=-1) then
91140 'buf_day = val(buf_day$)
91150 'bufday = buf_day
91160 'sp_on 14,0
91170 goto complate_jyoushi:
91180 'else
91190 'goto Buka_Input_Born_Day2:
91200 'endif
91210 end select
91220 endif
91230 if (bg2=2) then
91240 select case count2
91250 case 0:
91260 if (No=-1) then
91270 'buf_day=0:buf_Day$="**"
91280 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
91290 count=0
91300 buf_buka_day=0:buf_buka_Day$="**"
91310 goto rewrite_day3:
91320 else
91330 buf_buka_day=0:buf_buka_Day$="**"
91340 ui_msg"値が範囲外です"
91350 endif
91360 goto rewrite_day3:
91370 else
91380 goto rewrite_day3:
91390 endif
91400 rewrite_day3:
91410 locate 2,3
91420 color rgb(255,255,255)
91430 print "                                      "
91440 locate 1,3
91450 print "生まれた日(1日~31日):"+buf_buka_Day$
91460 goto Buka_Input_Born_Day2:
91470 end select
91480 endif
91490 '3.部下の生まれた日'
91500 '部下'
91510 '--------------------------------------------'
91520 'ビジネの相性　結果表示
91530 Result_Business_Aisyou:
91540 cls 3:init "kb:4"
91550 a=0:b=0:c=0:d=0:e=0:f=0
91560 bg=0:key$=""
91570 '****************************************************************************************************
91580 'WUXG(1920x1200)の時ここから
91590 '****************************************************************************************************
91600 gload Gazo$ + "Screen1.png",0,0,0
91610 gload Gazo$ + "downscreen.png",0,0,800
91620 '****************************************************************************************************
91630 'WUXG(1920x1200)の時ここから
91640 '****************************************************************************************************
91650 sp_on 14,0
91660 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
91670 buf_Buka = Kabara_Num(d,e,f)
91680 a_2 = buf_Buka
91690 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
91700 locate 0,1
91710 color rgb(255,0,0)
91720 print "●.相性診断結果１"
91730 locate 0,4:
91740 color rgb(255,255,255)
91750 print "1.上司の名前:";buffer_name$(0)
91760 locate 0,6
91770 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
91780 locate 0,8
91790 print "2.部下の名前:";buffer_name$(1)
91800 locate 0,10
91810 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
91820 locate 0,12
91830 print "3.上司と部下の相性:";Result_Aisyou$
91840 locate 1,15
91850 color rgb(0,0,0)
91860 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
91870 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
91880 bg = strig(1)
91890 key$ = inkey$
91900 bg2 = strig(0)
91910 pause 5
91920 wend
91930 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
91940 if (bg2 = 2) then
91950 cls 3:goto Business_Aishou_Input_1_parson:
91960 endif
91970 'ビジネスの相性占い　結果2　説明
91980 Result_Business_Aisyou2:
91990 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
92000 gload Gazo$ + "Screen1.png",0,0,0
92010 locate 0,1
92020 color rgb(255,0,0)
92030 print "●.相性の説明"
92040 color rgb(255,255,255)
92050 locate 0,4
92060 print "相性:";Result_Aisyou$
92070 locate 0,6:
92080 print "相性の説明:";buf$
92090 locate 0,15
92100 color rgb(0,0,0)
92110 print "右の丸ボタン:トップ,左のボタン:前の画面"
92120 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
92130 bg = strig(1)
92140 bg2 = strig(0)
92150 key$ = inkey$
92160 pause 200
92170 wend
92180 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
92190 if ((bg2 = 2)) then goto Result_Business_Aisyou:
92200 'Birds Eye Menu List
92210 Result_Birtheye_List1:
92220 'dim List$(4) Topに定義
92230 List$(0) = "1.バーズアイグリッドをもう一度診断"
92240 List$(1) = "2.診断結果"
92250 List$(2) = "3.データーを保存"
92260 List$(3) = "4.トップ画面に戻る"
92270 Birds_List1 = ui_select("List$","Menu")
92280 select case (Birds_List1)
92290 case 0: '1.もう一度診断
92300 for i=0 to 8
92310 buffer(i)=0
92320 next i
92330 goto Input_name1_Birdseye:
92340 case 1: '2.次へ行く
92350 gosub BirdsEye_Result2:
92360 case 2: '3.データーを保存
92370 ui_msg "データーを保存します"
92380 goto BirdsEye_Save_data:
92390 case 3: '4.トップに戻る
92400 for i=0 to 8
92410 buffer(i)=0
92420 next i
92430 goto Main_Screen:
92440 end select
92450 'BirdsEye Data Save
92460 BirdsEye_Save_data:
92470 if dir$(Save_data_Birdseye$) = "" then
92480 Mkdir Save_data_Birdseye$
92490 endif
92500 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
92510 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
92520 close #1
92530 ui_msg "データーを保存しました"
92540 goto Result_Birtheye_List1:
92550 'return
92560 '自作関数 ここから
92570 BirdsEyeGrid_Entry:
92580 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
92590 '****************************************************************************************************
92600 'WUXG(1920x1200)の時 1280x 800の時共通　ここから
92610 '****************************************************************************************************
92620 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
92630 '****************************************************************************************************
92640 'WUXG(1920x1200)の時 1280x 800の時共通 ここまで
92650 '****************************************************************************************************
92660 font FONT
92670 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
92680 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
92690 locate 1,4:print "右の丸:メイン画面へ行く"
92700 else
92710 flag=1
92720 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
92730 while (eof(1)=0)
92740 line input #1,a$
92750 n = n + 1
92760 wend
92770 close #1
92780 'endif
92790 talk "登録件数は"+str$(n)+"件です。"
92800 if ((size(0)<=1280) and (size(1)<=800)) then
92810 '*****************************************************************************************************
92820 '1280x800の時　ここから
92830 '*****************************************************************************************************
92840 locate 1,3:print "登録件数は";str$(n);"件です"
92850 locate 1,6:print "左の丸：メイン画面へ行く"
92860 '*****************************************************************************************************
92870 '1280x800の時　ここまで
92880 '*****************************************************************************************************
92890 else
92900 '*****************************************************************************************************
92910 'WUXG(1920x1280)の時　ここから
92920 '*****************************************************************************************************
92930 locate 1,2:print "登録件数は";str$(n);"件です"
92940 locate 1,4:print "左の丸：メイン画面へ行く"
92950 '*****************************************************************************************************
92960 'WUXG(1920x1280)の時　ここまで
92970 '*****************************************************************************************************
92980 endif
92990 endif
93000 Entry_Count:
93010 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
93020 key$ = inkey$
93030 bg = strig(1)
93040 bg2 = strig(0)
93050 pause 200
93060 wend
93070 if ((bg = 2) or (key$ = chr$(13))) then
93080 if (n = 0) then
93090 '登録件数　０件のとき　メイン画面に行く
93100 goto Main_Screen:
93110 else
93120 '登録件数1件以上　次へ行く
93130 'ここを変更する
93140 goto Entry_List:
93150 endif
93160 endif
93170 if (bg2 = 2) then
93180 if (n > 0) then
93190 goto Main_Screen:
93200 else
93210 goto Entry_Count:
93220 endif
93230 endif
93240 Entry_List:
93250 cls 3:play"":color rgb(255,255,255):init "kb:4"
93260 if ((size(0)<=1280) and (size(1)<=800)) then
93270 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x680_20240222.png",0,0,0
93280 else
93290 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
93300 endif
93310 dim buffer_List$(11,n)
93320 'ファイル読み込み ここから
93330 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
93340 for i=0 to 10
93350 for j=0 to n-1
93360 input #1,a$
93370 buffer_List$(i,j)=a$
93380 next j
93390 next i
93400 close #1
93410 'erase buffer_List$
93420 'color rgb(255,255,255)
93430 i=0:key$="":bg=0:init"kb:4":bg2=0
93440 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
93450 key$ = inkey$
93460 bg = strig(1)
93470 bg2=strig(0)
93480 pause 200
93490 wend
93500 color rgb(0,0,0)
93510 locate 1,15:print "次へ"
93520 'show_ListData:
93530 'j=0
93540 repeat (j=0)
93550 show_ListData:
93560 cls
93570 color rgb(255,255,255)
93580 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
93590 '1の文字データー
93600 locate 4,14:print buffer_List$(2,j)
93610 '2の文字データー
93620 locate 4,9:print buffer_List$(3,j)
93630 '3の文字データー
93640 locate 4,5:print buffer_List$(4,j)
93650 '4の文字データー
93660 locate 11,14:print buffer_List$(5,j)
93670 '5の文字データー
93680 locate 11,9:PRINT buffer_List$(6,j)
93690 '6の文字データー
93700 locate 11,5:print buffer_List$(7,j)
93710 '7の文字データー
93720 locate 16,14:print buffer_List$(8,j)
93730 '8の文字データー
93740 locate 16,9:print buffer_List$(9,j)
93750 '9の文字データー
93760 locate 16,5:print buffer_List$(10,j)
93770 color rgb(0,0,0)
93780 locate 1,15:print "右の丸：次へ"
93790 if (bg=2 or key$=chr$(13)) then
93800 j=j+1
93810 endif
93820 if (bg2=2) then
93830 goto Main_Screen:
93840 endif
93850 until (j=n)
93860 'erase buffer_List$:
93870 goto show_ListData:
93880 'ファイル読み込み　ここまで
93890 func read_explain$(ba$)
93900 d$=""
93910 buf_String$=""
93920 if ba$="A" then
93930 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
93940 line input #1,a$
93950 a1$=mid$(a$,1,12)
93960 a2$=mid$(a$,13,17)
93970 a3$=mid$(a$,30,17)
93980 a4$=mid$(a$,47,18)
93990 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
94000 buf_String$ = a5$
94010 close #1
94020 endif
94030 if ba$="B"  then
94040 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
94050 line input #1,b$
94060 b1$=mid$(b$,1,15)
94070 b2$=mid$(b$,16,21)
94080 'b3$=mid$(b$,33,3)
94090 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
94100 buf_String$ = b4$
94110 close #1
94120 endif
94130 if ba$="C"  then
94140 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
94150 line input #1,c$
94160 c1$ = Mid$(c$,1,15)
94170 c2$ = Mid$(c$,16,33)
94180 c3$ = c1$ + chr$(13) + c2$
94190 buf_String$ = c3$
94200 close #1
94210 endif
94220 if ba$="D" then
94230 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
94240 line input #1,d$
94250 d1$=mid$(d$,1,15)
94260 d2$=mid$(d$,16,22)
94270 d3$=mid$(d$,38,7)
94280 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
94290 buf_String$ = d4$
94300 close #1
94310 endif
94320 if ba$="E"  then
94330 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
94340 line input #1,e$
94350 e1$=Mid$(e$,1,16)
94360 e2$=Mid$(e$,17,16)
94370 e3$=Mid$(e$,33,12)
94380 e4$=Mid$(e$,45,17)
94390 e5$=Mid$(e$,62,17)
94400 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
94410 buf_String$ = e6$
94420 close #1
94430 endif
94440 if ba$="F" then
94450 '改行を追加して表示を調整
94460 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
94470 line input #1,f$
94480 f1$=Mid$(f$,1,15)
94490 f2$=Mid$(f$,16,12)
94500 buf_String$ = f1$+chr$(13)+f2$
94510 close #1
94520 endif
94530 if ba$="G" then
94540 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
94550 line input #1,g$
94560 g1$ = mid$(g$,1,16)
94570 g2$ = mid$(g$,17,18)
94580 g3$ = mid$(g$,36,21)
94590 g4$ = mid$(g$,56,6)
94600 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
94610 buf_String$ = g5$
94620 close #1
94630 endif
94640 if ba$="H" then
94650 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
94660 line input #1,h$
94670 h1$=Mid$(h$,1,17)
94680 h2$=Mid$(h$,18,21)
94690 h3$=Mid$(h$,39,20)
94700 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
94710 buf_String$ = h$
94720 close #1
94730 endif
94740 if ba$ = "I" then
94750 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
94760 line input #1,i$
94770 i1$=Mid$(i$,1,10)
94780 i2$=Mid$(i$,11,13)
94790 i3$=Mid$(i$,25,16)
94800 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
94810 buf_String$ = i$
94820 close #1
94830 endif
94840 buffer$ = buf_String$
94850 endfunc buffer$
94860 'カバラ数（数秘番号を求める）
94870 func Kabara_Num(buffer_Year,month,day)
94880 '=============================
94890 'a1:4桁のうちの1桁目を求める
94900 '例 a1:1234の4が1桁目
94910 'a2:4桁のうちの2桁目を求める
94920 '例:a2:1234の3が2桁目
94930 'a3:4桁のうちの3桁目を求める
94940 '例 a3:1234の2が3桁目
94950 'a4:4桁のうちの4桁目を求める
94960 '例 a4:1234の1が4桁目
94970 '==============================
94980 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
94990 Year = buffer_Year
95000 '処理1　整数部分を取り出す。
95010 a4 = fix(Year / 1000)
95020 a3 = fix(Year / 100) - (a4 * 10)
95030 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
95040 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
95050 '処理　２　取り出した整数部分を足す。
95060 a_ = a1 + a2 + a3 + a4 +month + day
95070 'a1=0:a2=0:a3=0:a4=0
95080 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
95090 buffer = a_
95100 'else
95110 goto recomp2:
95120 'if (a_ = 10) then
95130 '  buffer = 1
95140 endif
95150 recomp2:
95160 a5=0:a6=0
95170 a5 = fix(a_ / 10)
95180 a6 = (a_) - (a5 * 10)
95190 a_ = a5 + a6
95200 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
95210 '結果に行く
95220 goto Res2:
95230 '  if ((a_>11) and (a_<99)) then
95240 else
95250 '再度計算
95260 goto recomp2:
95270 endif
95280 '     a1 = fix(a_ / 10)
95290 '     a2 = a_ - (a1 * 10)
95300 '     a_ = a1 + a2
95310 '     buffer = a_
95320 'endif
95330 'else
95340 '    bffer = a_
95350 'endif
95360 'endif
95370 'else
95380 'talk "プログラムを終了します。"
95390 'end
95400 'endif
95410 'kabara = 10
95420 Res2:
95430 kabara = a_
95440 endfunc kabara
95450 func Kabara_Aisyou$(buff1,buff2)
95460 a=0:b=0
95470 '範囲　1~9
95480 if ((buff1 > 0 and buff1 < 10)) then
95490 a = buff1
95500 else
95510 Select case buff1
95520 case 11:
95530 buff1=9:a=buff1
95540 case 22:
95550 buff1=10:a=buff1
95560 end select
95570 endif
95580 '範囲　１~９
95590 if ((buff2 > 0 and buff2 < 10)) then
95600 b = buff2
95610 else
95620 select case buff2
95630 case 11:
95640 buff2=9:b=buff2
95650 case 12:
95660 buff2=10:b=buff2
95670 end select
95680 endif
95690 Aisyou$ = Buffer_Business_Aisyou$(a,b)
95700 endfunc Aisyou$
95710 '**********************************************************
95720 '0-0.Top Screen Recheck: ここから
95730 '**********************************************************
95740 TopScreenRecheck:
95750 color rgb(217,255,212)
95760 locate 1,3:print  "                            "
95770 locate 1,4:print  "                            "
95780 locate 1,5
95790 print "番号を選んでください"
95800 locate 1,6:print  "                            "
95810 locate 1,7:print  " :1.数秘術占い"
95820 locate 1,8:print  "                            "
95830 locate 1,9:print  "                            "
95840 locate 1,10:print  "                            "
95850 locate 1,10:print  " :2.設 定"
95860 locate 1,11:print  "                            "
95870 locate 1,12:print  "                            "
95880 locate 1,13:print  " :3.ヘルプ"
95890 locate 1,14:print  "                            "
95900 locate 1,15:print  "                            "
95910 locate 1,16:print  "                            "
95920 locate 1,16:print  " :4.(プログラムを)終了する"
95930 locate 1,17:print  "                            "
95940 locate 1,18:print  "                            "
95950 return
95960 '**********************************************************
95970 '0-0.Top Screen Recheck:　ここまで
95980 '**********************************************************
95990 '***********************************************************
96000 '1-1.数秘術トップ画面 ここから
96010 '**********************************************************
96020 Kabara_TopScreen_Recheck:
96030 color rgb(255,255,255):font FONT
96040 locate 1,5
96050 print "番号を選んでください" + chr$(13)
96060 locate 1,7
96070 print " :1.数秘術占い" + chr$(13)
96080 locate 1,10
96090 print " :2.バーズアイグリット" + chr$(13)
96100 locate 1,13
96110 print " :3.相性占い" + chr$(13)
96120 locate 1,16
96130 print " :4.トップ画面に戻る" + chr$(13)
96140 return
96150 '***************************************************************
96160 '1-1.数秘術トップ画面　ここまで
96170 '*************************************************************
96180 '**********************************************************
96190 '2-1 Setting Top Screen ここから
96200 '**********************************************************
96210 Setting_Recheck:
96220 cls:color rgb(255,255,255)
96230 locate 1,3:print  "                            "
96240 locate 1,4:print  "                            "
96250 locate 1,5:
96260 print "番号を選んでください"
96270 locate 1,6:print  "                            "
96280 locate 1,7:
96290 print " :1.トップ画面に戻る"
96300 locate 1,8:print  "                            "
96310 locate 1,9:print  "                            "
96320 locate 1,10:
96330 print " :2.バーズアイグリッドデーターリスト"
96340 locate 1,11:print  "                            "
96350 locate 1,12:print  "                            "
96360 locate 1,13:
96370 print " :3.未実装" + chr$(13)
96380 locate 1,14:print  "                            "
96390 locate 1,15:print  "                            "
96400 locate 1,16:
96410 print " :4.未実装" + chr$(13)
96420 locate 1,17:print  "                            "
96430 locate 1,18:print  "                            "
96440 return
96450 '**********************************************************
96460 '2-1 Setting Top Screen ここまで
96470 '**********************************************************
96480 '**********************************************************
96490 '3-1Help Top ReCheck ここから
96500 '**********************************************************
96510 Help_Top_ReCheck:
96520 font FONT
96530 color rgb(217,255,212)
96540 locate 1,3:print  "                       "
96550 locate 1,4:print  "                       "
96560 locate 1,5:print "番号を選んでください"
96570 locate 1,6:print  "                       "
96580 '0
96590 locate 1,7:print " :1.ルールの説明"
96600 '1
96610 locate 1,8:print  "                       "
96620 locate 1,9:print  "                       "
96630 locate 1,10:print " :2.バージョンの表示"
96640 locate 1,11:print  "                      "
96650 locate 1,12:print  "                      "
96660 '2
96670 locate 1,13:print " :3.参考文献"
96680 locate 1,14:print  "                      "
96690 locate 1,15:print  "                      "
96700 '3
96710 locate 1,16:print " :4.トップ画面に戻る"
96720 return
96730 '**********************************************************
96740 '3-1.Help Top ReCheckここまで
96750 '**********************************************************
96760 '***********************************************************
96770 '**********************************************************
96780 Suhi_Rule_Screen_Recheck:
96790 color rgb(255,255,255)
96800 font FONT
96810 locate 1,3:print  "                       "
96820 locate 1,4:print  "                       "
96830 locate 1,5
96840 print "番号を選んでください"
96850 locate 1,6:print  "                       "
96860 locate 1,7:    '〇
96870 print " :1.数秘術のやり方"
96880 locate 1,8:print  "                       "
96890 locate 1,9:print  "                       "
96900 locate 1,10:   '〇
96910 print " :2.バーズアイグリットの説明"
96920 locate 1,11:print  "                       "
96930 locate 1,12:print  "                       "
96940 locate 1,13:    '〇
96950 print " :3.トップ画面に戻る"
96960 locate 1,14:print  "                       "
96970 locate 1,15:print  "                       "
96980 return
96990 '=============================
97000 '自作関数 ここまで
97010 '1.数秘術　トップ画面
97020 '
97030 'Data_eraseを一番最後に持ってくる
97040 '=============================
97050 Data_erase:
97060 'メモリー削除
97070 erase buf_male_year
97080 erase buf_male_month
97090 erase buf_male_Born_Day
97100 erase buf_feMale_Born_Day
97110 erase buf_female_day
97120 erase buf_name1$
97130 erase buf_name2$
97140 erase buffer
97150 erase buf_chart$
97160 erase Buffer_Business_Aisyou$
97170 erase buffer_name$
97180 '上司の誕生日
97190 erase buf_Jyoushi_Born_Day
97200 '部下の誕生日
97210 erase buf_Buka_Born_Day
97220 erase buf_year
97230 erase buf_month
97240 erase buf_day
97250 'フォーカスライン
97260 erase Forcus1_buffer$
97270 erase Forcus2_buffer$
97280 erase Forcus3_buffer$
97290 'erase buffer_List$
97300 'Birds eye List Data 配列
97310 erase List$
97320 buffer$ = ""
97330 buf$ = ""
97340 buf_year$ = ""
97350 buf_Jyoushi_Kabara_Num = 0
97360 buf_Buka_Kabara_Num = 0
97370 count = 0
97380 buf_Month$ = ""
97390 buf_Day$ = ""
97400 b=0
97410 c=0
97420 No=0
97430 count=0
97440 return
