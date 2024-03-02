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
650 Version$ = "Ver:1.3.9_20240303b"
660 'Gazo Folder Japan
670 Gazo$ = "./data/Picture/"
680 'Gazo Size folder
690 Gazo_1920x1200$ = "/1920x1200/"
700 Gazo_WXGA$ = "907x680/"
710 'Gazo Folder English
720 Gazo_Eng$ = "./data/Picture/English/"
730 'Voice Folder 2023
740 Voice$ = "./data/Voice/Voice/"
750 'BirtheyeChart Data:20230626
760 Birth_eye_chart$ = "./data/chart_data/"
770 'Data Folder
780 Data$ = "./data/data/"
790 'Business Aisyou 結果説明保存フォルダ
800 Business_Aisyou_Explain$ = "./data/data/Business_Aisyou/"
810 'Save BirdsEyeGrit List Folder
820 Save_data_Birdseye$ = "./data/Parsonal_data/"
830 '変数定義 パート
840 b=0:c=0:n=0:count=0
850 '***********************************************************
860 '1.WXGAの時
870 '(1200 x 800)
880 '***********************************************************
890 if (((size(1) <= 1200) and (size(1) <= 800))) then
900 X=5:Y=200
910 FONT=32
920 '***********************************************************
930 '1.WXGAの時
940 '(1200 x 800)
950 '***********************************************************
960 else
970 '***********************************************************
980 '2.WUXGAの時(WXGA以外の時)
990 '(1920 gload Gazo$ + "Selection.png",1,60,240
1000 '***********************************************************
1010 X=5:Y=300
1020 FONT=48
1030 '***********************************************************
1040 '2.WUXGAの時(WXGA以外の時)
1050 '(1920 x 1200)
1060 '***********************************************************
1070 endif
1080 'dim buffer_List$(11,1)
1090 dim buf_name1$(10),buf_name2$(10)
1100 dim buffer(9),buf_chart$(26,2)
1110 'ビジネスの相性　データー
1120 dim Buffer_Business_Aisyou$(12,12)
1130 '男女の相性
1140 dim Buffer_Bitween_sexes_Aisyou$(12,12)
1150 '生れた年代
1160 dim buf_year(4):buf_year$ = ""
1170 dim buf_month(2)
1180 dim buf_day(2)
1190 'フォーカスライン　配列
1200 dim Forcus1_buffer$(3)
1210 dim Forcus2_buffer$(3)
1220 dim Forcus3_buffer$(2)
1230 '生れた月
1240 buf_Month$ = ""
1250 '生れた日
1260 buf_Day$ = ""
1270 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
1280 dim buffer_name$(3)
1290 '1-1.上司の誕生日(数値データー)
1300 dim buf_Jyoushi_Born_Day(3)
1310 '1-2.上司の数秘ナンバー(数値データー)
1320 buf_Jyoushi_Kabara_Num = 0
1330 '2-1.部下の誕生日(数値データー)
1340 dim buf_Buka_Born_Day(3)
1350 '2-2.部下の数秘ナンバー(数秘データー)
1360 buf_Buka_Kabara_Num = 0
1370 dim buf_male_year(4)
1380 dim buf_male_month(2)
1390 dim buf_male_Born_Day(2)
1400 dim buf_feMale_Born_Day(2)
1410 dim buf_female_day(2)
1420 count=0
1430 'Birds Eye List 配列
1440 dim List$(6)
1450 '部下の数秘ナンバー
1460 'File 読み込み
1470 '1.ビジネスの相性占い
1480 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
1490 for i=0 to 11
1500 for j=0 to 11
1510 input #1,a$
1520 Buffer_Business_Aisyou$(j,i) = a$
1530 next j
1540 next i
1550 close #1
1560 '2.男女の相性占い
1570 open Data$ + "Kabara_bitween_sexes_Aisyou.csv" for input as #1
1580 for i=0 to 11
1590 for j=0 to 11
1600 input #1,a$
1610 Buffer_Bitween_sexes_Aisyou$(j,i) = a$
1620 next j
1630 next i
1640 close #1
1650 '2.Birth Eye chart$
1660 '2.バーズアイグリッドを読み込む
1670 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
1680 for j=0 to 25
1690 for i=0 to 1
1700 input #1,a$
1710 buf_chart$(j,i) = a$
1720 next i
1730 next j
1740 close #1
1750 'File 読み込み　ここまで
1760 'Main画面
1770 screen 1,1,1,1
1780 Main_Screen:
1790 cls 3:
1800 No=0
1810 '***********************************************************
1820 '1.WXGAの時
1830 '(1200 x 800)
1840 '***********************************************************
1850 if ((size(0) <= 1280) and (size(1) <= 800)) then
1860 gload Gazo$ + "Selection.png",1,5,220
1870 gload Gazo$ + "Selection.png",1,5,320
1880 gload Gazo$ + "Selection.png",1,5,420
1890 gload Gazo$ + "Selection.png",1,5,520
1900 '***********************************************************
1910 '1(4)
1920 gload Gazo$ + "Selection.png",1,30,300
1930 '2(5)
1940 gload Gazo$ + "Selection.png",1,30,485
1950 '3(6)
1960 gload Gazo$ + "Selection.png",1,30,340
1970 '4(7)
1980 gload Gazo$ + "Selection.png",1,70,300
1990 '5(8)
2000 gload Gazo$ + "Selection.png",1,280,335
2010 '6(9)
2020 'gload Gazo$ + "Selection.png",1,70,500
2030 gload Gazo$ + "Selection.png",1,70,490
2040 '7(10)
2050 gload Gazo$ + "Selection.png",1,110,300
2060 '8(11)
2070 gload Gazo$ + "Selection.png",1,110,295
2080 '9(12)
2090 gload Gazo$ + "Selection.png",1,430,340
2100 '0(13)
2110 gload Gazo$ + "Selection.png",1,280,485
2120 '14:(-1)OK ボタン
2130 gload Gazo$ + "Selection.png",1,430,495
2140 '***********************************************************
2150 '1.WXGAの時
2160 '(1200 x 800)
2170 '***********************************************************
2180 else
2190 '***********************************************************
2200 '2.WXGA(1200 x 800)以外の時
2210 '(1920 x 1200)のサイズ
2220 '***********************************************************
2230 gload Gazo$ + "Selection.png",1,5,200
2240 gload Gazo$ + "Selection.png",1,5,300
2250 gload Gazo$ + "Selection.png",1,5,400
2260 gload Gazo$ + "Selection.png",1,5,500
2270 '1
2280 gload Gazo$ + "Selection.png",1,35,300
2290 '2
2300 gload Gazo$ + "Selection.png",1,40,400
2310 '3
2320 gload Gazo$ + "Selection.png",1,35,500
2330 '4
2340 gload Gazo$ + "Selection.png",1,70,300
2350 '5
2360 gload Gazo$ + "Selection.png",1,70,400
2370 '6
2380 gload Gazo$ + "Selection.png",1,70,500
2390 '7
2400 gload Gazo$ + "Selection.png",1,110,300
2410 '8
2420 gload Gazo$ + "Selection.png",1,430,300
2430 '9
2440 gload Gazo$ + "Selection.png",1,430,340
2450 '0:13
2460 gload Gazo$ + "Selection.png",1,280,485
2470 'OK ボタン =1
2480 gload Gazo$ + "Selection.png",1,430,490
2490 '***********************************************************
2500 '2.WXGA(1200 x 800)以外の時
2510 '(1920 x 1200)のサイズ
2520 '***********************************************************
2530 endif
2540 if ex_info$(1) <> "JP" then
2550 '英語　トップ画面
2560 gload Gazo_Eng$ + "Kabara_TopScreen_Eng_20240110.png",0,0,0
2570 'put@(0,0),1280,800,(1080,800)
2580 else
2590 '**********************************************************
2600 '［機能］　グラフィックバッファ（2番目の座標）からグラフィック画面（1番目の座標）へ画像データを引き出します。
2610 '
2620 '　［書式］　PUT@(x1,y1),w1,h1,(x2,y2)[,[w2],[h2][,描画モード]]
2630 '　［説明］
2640 '　　w1,w2=横サイズ h1,h2= 縦サイズ
2650 '　　転写元と転写先のサイズが異なる場合、拡大縮小描画されます。
2660 '　　各種重ね合わせの方式は pen命令で設定することができます。
2670 '　　<描画モード>の指定で次の選択ができます。
2680 '　　 0. グラフィックバッファからグラフィック画面への描画。
2690 '　　 1. グラフィック画面からグラフィック画面への描画。
2700 '　　 2. グラフィックバッファからグラフィックバッファへの描画。
2710 '***********************************************************'
2720 '*************************************************************************************************
2730 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2740 '日本語トップスクリーン
2750 'gload Gazo$ + "TopScreen_20230310.png",0,0,0
2760 'else
2770 '1.WXGAの時
2780 '************************************************************************************************
2790 if ((size(0) <= 1280) and (size(1) <= 800)) then
2800 gload Gazo$ + Gazo_WXGA$ + "Screen1_907x680_20240214.png",0,0,0
2810 else
2820 '************************************************************************************************
2830 '2.WXGA以外の時
2840 '************************************************************************************************
2850 gload Gazo$ + "TopScreen_20230310.png",0,0,0
2860 endif
2870 'put@(0,0),1280,800,(1080,800),,,0
2880 endif
2890 '***********************************************************************************************
2900 'if (((size(0) >= 1280) and (size(0) <= 1920)) and ((size(1) <= 1200) and (size(1) > 800))) then
2910 '***********************************************************************************************
2920 if ((size(0) <= 1280) and (size(1) <= 800)) then
2930 '************************************************************************************************
2940 'WXGAの場合　ここから (1280 x 800)
2950 '************************************************************************************************
2960 sp_def 0,(5,220),32,32
2970 sp_def 1,(5,320),32,32
2980 sp_def 2,(5,420),32,32
2990 sp_def 3,(5,520),32,32
3000 '1(4)
3010 sp_def 4,(30,300),32,32
3020 '2(5)
3030 sp_def 5,(40,400),32,32
3040 '3(6)
3050 sp_def 6,(430,335),32,32
3060 '4(7)
3070 sp_def 7,(200,235),32,32
3080 '5(8)
3090 sp_def 8,(280,335),32,32
3100 '6(9)
3110 sp_def 9,(130,335),32,32
3120 '7(10)
3130 sp_def 10,(110,300),32,32
3140 '8(11)
3150 sp_def 11,(430,300),32,32
3160 '9(12)
3170 sp_def 12,(430,340),32,32
3180 sp_def 13,(350,495),32,32
3190 '14:OK ボタン (-1)
3200 sp_def 14,(430,495),32,32
3210 'Sprite OFF
3220 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3230 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
3240 sp_put 0,(5,220),0,0
3250 sp_put 1,(5,320),1,0
3260 sp_put 2,(4,420),2,0
3270 sp_put 3,(5,520),3,0
3280 '1
3290 sp_put 4,(105,405),4,0
3300 '2
3310 sp_put 5,(105,345),5,0
3320 '3
3330 sp_put 6,(280,335),6,0
3340 '4
3350 sp_put 7,(280,335),7,0
3360 '5
3370 sp_put 8,(340,300),8,0
3380 '6
3390 sp_put 9,(30,340),9,0
3400 '7
3410 sp_put 10,(110,200),10,0
3420 '8
3430 sp_put 11,(110,300),11,0
3440 '9
3450 sp_put 12,(430,420),12,0
3460 '0
3470 sp_put 13,(350,495),13,0
3480 '14:OK ボタン
3490 sp_put 14,(430,495),14,0
3500 '************************************************************************************************
3510 'WXGAの場合　ここまで (1280 x 800)
3520 '************************************************************************************************
3530 else
3540 '選択肢の丸
3550 '************************************************************************************************
3560 'WUXGAの場合　ここから (1920 x 1200)
3570 '************************************************************************************************
3580 gload Gazo$ + "downscreen.png",0,0,800
3590 sp_def 0,(5,300),32,32
3600 sp_def 1,(5,400),32,32
3610 sp_def 2,(5,500),32,32
3620 sp_def 3,(5,600),32,32
3630 '1
3640 sp_def 4,(35,300),32,32
3650 '2
3660 sp_def 5,(35,400),32,32
3670 '3
3680 sp_def 6,(35,500),32,32
3690 '4
3700 sp_def 7,(70,300),32,32
3710 '5
3720 sp_def 8,(70,400),32,32
3730 '6
3740 sp_def 9,(70,500),32,32
3750 '7
3760 sp_def 10,(110,300),32,32
3770 '8
3780 sp_def 11,(110,400),32,32
3790 '9
3800 sp_def 12,(110,400),32,32
3810 sp_def 13,(150,400),32,32
3820 sp_def 14,(200,400),32,32
3830 'Sprite OFF
3840 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 4,0:sp_on 5,0:sp_on 6,0
3850 sp_on 7,0:sp_on 8,0:sp_on 9,0:sp_on 10,0:sp_on 11,0:sp_on 12,0:sp_on 13,0:sp_on 14,0
3860 sp_put 0,(5,300),0,0
3870 sp_put 1,(5,400),1,0
3880 sp_put 2,(5,500),2,0
3890 sp_put 3,(5,600),3,0
3900 '1
3910 sp_put 4,(130,300),4,0
3920 '2
3930 sp_put 5,(130,400),5,0
3940 '3
3950 sp_put 6,(130,500),6,0
3960 '4
3970 sp_put 7,(340,300),7,0
3980 '5
3990 sp_put 8,(340,400),8,0
4000 '6
4010 sp_put 9,(340,500),9,0
4020 '7
4030 sp_put 10,(540,300),10,0
4040 '8
4050 sp_put 11,(540,400),11,0
4060 '9
4070 sp_put 12,(540,500),12,0
4080 '
4090 sp_put 13,(300,500),13,0
4100 sp_put 14,(540,500),14,0
4110 '************************************************************************************************
4120 'WUXGAの場合　ここまで  (1920 x 1200)
4130 '************************************************************************************************
4140 endif
4150 Main_Top:
4160 'Main Message 2023.06.07
4170 '再生を止める
4180 play ""
4190 init "kb:4"
4200 'font 32:
4210 font 40
4220 if ex_info$(1) <> "JP" then
4230 '1.英語表示ターム
4240 print chr$(13) + chr$(13) + chr$(13)
4250 color rgb(217,255,212)
4260 print "Please Select Number?" + chr$(13)+chr$(13)
4270 '0
4280 print " :1.Kabara Fortune..." + chr$(13)+chr$(13)
4290 '1
4300 print " :2.Setting" + chr$(13)+chr$(13)
4310 '2
4320 print " :3.Help" + chr$(13)
4330 '3
4340 print " :4.(Finishing)Program" + chr$(13)
4350 COLOR rgb(0,0,0):No=0
4360 locate 1,15
4370 print "                                        "
4380 locate 1,15
4390 print "1.It has Selected Kabara Fortune Telling"
4400 '1.英語表示ターム
4410 '---------音声 日本語　英語に変える----------------
4420 'play Voice$ + "Voice_Main_Message_20230607.mp3"
4430 '---------音声 日本語　英語に変える----------------
4440 else
4450 '2.日本語表示ターム
4460 'Main_Screen_Select:
4470 '************************************************************************************************
4480 '1.WXGAの場合　ここから (1280 x 800)
4490 '************************************************************************************************
4500 if ((size(0) <= 1280) and (size(1) <= 800)) then
4510 '************************************************************************************************
4520 '1.WXGAの場合　ここから (1280 x 800)
4530 '************************************************************************************************
4540 font FONT
4550 color rgb(217,255,212)
4560 locate 1,5
4570 print "番号を選んでください"
4580 '0
4590 locate 1,7
4600 print " :1.数秘術占い"
4610 '1
4620 locate 1,10
4630 print " :2.設 定"
4640 '2
4650 locate 1,13
4660 print " :3.ヘルプ"
4670 '3
4680 locate 1,16
4690 print " :4.(プログラムを)終了する"
4700 COLOR rgb(0,0,0):No=0
4710 'locate 1,15
4720 '3行下げる
4730 if (count = 0) then
4740 locate 1,19
4750 print "           "
4760 locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択"
4770 play Voice$ + "Voice_Main_Message_20230607.mp3"
4780 endif
4790 '************************************************************************************************
4800 '1.WXGAの場合　ここまで (1280 x 800)
4810 '************************************************************************************************
4820 '2.日本語表示ターム
4830 else
4840 '************************************************************************************************
4850 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
4860 '************************************************************************************************
4870 font FONT
4880 print chr$(13) + chr$(13) + chr$(13)
4890 color rgb(217,255,212)
4900 print "番号を選んでください" + chr$(13)
4910 '0
4920 print " :1.数秘術占い" + chr$(13)
4930 '1
4940 print " :2.設 定" + chr$(13)
4950 '2
4960 print " :3.ヘルプ" + chr$(13)
4970 '3
4980 print " :4.(プログラムを)終了する" + chr$(13)
4990 COLOR rgb(0,0,0):No=0
5000 'locate 1,15
5010 '3行下げる
5020 if count=0 then
5030 locate 1,15
5040 print "           "
5050 locate 1,15:color rgb(0,0,0):print "1.数秘術占いを選択"
5060 play Voice$ + "Voice_Main_Message_20230607.mp3"
5070 endif
5080 '************************************************************************************************
5090 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5100 '************************************************************************************************
5110 endif
5120 '************************************************************************************************
5130 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
5140 '************************************************************************************************
5150 endif
5160 Main_Screen_Select:
5170 y = 0:key$ = "":bg = 0:bg2=0
5180 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
5190 y = stick(1)
5200 '"May (2023)"
5210 key$ = inkey$
5220 bg = strig(1)
5230 bg2 = strig(0)
5240 pause 200
5250 wend
5260 '*******************************************************************************************************************************
5270 '  WUXGA(1920 x 1200)
5280 '  X=5:Y=300
5290 '  WXGA (1280 x 800)
5300 '  X=5:Y=200
5310 '*******************************************************************************************************************************
5320 '1.
5330 'ジョイパッドのソース ソート　ここから
5340 'カーソル　下 or 十字キー下
5350 '************************************************************************************************
5360 '1.WXGAの場合　ここから (1280 x 800)
5370 '************************************************************************************************
5380 if ((size(0) <= 1280) and (size(1) <= 800)) then
5390 '************************************************************************************************
5400 '1.WXGAの場合　ここから (1280 x 800)
5410 '************************************************************************************************
5420 if ((y = 1) or (key$ = chr$(31))) then
5430 select case No
5440 case 0:
5450 '1
5460 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:count = count + 1:beep:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":count=cunt+1:goto Main_Screen_Select:
5470 case 1:
5480 '2
5490 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                                 ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":count=count+1:goto Main_Screen_Select:
5500 case 2:
5510 '3
5520 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:color rgb(0,0,0):print "4.(プログラムを)終了するを選択":count=count+1:goto Main_Screen_Select:
5530 case 3:
5540 '0
5550 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(X,Y+20),0,0:beep:pause 200:count = count + 1:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:color rgb(0,0,0):print "1.数秘術占いを選択":count=count+1:goto Main_Screen_Select:
5560 end select
5570 endif
5580 '2.
5590 'カーソル　上　or 十字キー  上
5600 if ((y = -1) or (key$ = chr$(30))) then
5610 select case No
5620 case 0:
5630 '3
5640 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                              ":locate 1,19:COLOR rgb(0,0,0):print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
5650 case 1:
5660 '0
5670 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                            ":locate 1,19:COLOR rgb(0,0,0):print  "1.数秘術占いを選択":goto Main_Screen_Select:
5680 case 2:
5690 '1
5700 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                          ":locate 1,19:color rgb(0,0,0):print "2.設 定を選択":goto Main_Screen_Select:
5710 case 3:
5720 '2
5730 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:count = count + 1:pause 200:gosub TopScreenRecheck:locate 1,19:print "                   ":locate 1,19:color rgb(0,0,0):print "3.ヘルプを選択":goto Main_Screen_Select:
5740 end select
5750 endif
5760 'ジョイパッド　ソース 部分　ここまで
5770 'ジョイパッド右　　or Enter key 決定
5780 if ((bg = 2) OR (key$ = chr$(13))) then
5790 select case No
5800 case 0:
5810 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen: 'Kabara_First_Top:
5820 case 1:
5830 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
5840 case 2:
5850 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
5860 case 3:
5870 play "":pause 200
5880 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:font 16:end
5890 end select
5900 endif
5910 if (bg2 = 2) then
5920 play "":pause 200
5930 play Voice$ + "Voice_Main_Message_20230607.mp3"
5940 goto Main_Screen_Select:
5950 endif
5960 '************************************************************************************************
5970 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
5980 '************************************************************************************************
5990 else
6000 if ((y = 1) or (key$ = chr$(31))) then
6010 select case No
6020 case 0:
6030 '1
6040 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6050 case 1:
6060 '2
6070 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6080 case 2:
6090 '3
6100 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6110 case 3:
6120 '0
6130 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
6140 end select
6150 endif
6160 '2.
6170 'カーソル　上　or 十字キー  上
6180 if ((y = -1) or (key$ = chr$(30))) then
6190 select case No
6200 case 0:
6210 '3
6220 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
6230 case 1:
6240 '0
6250 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
6260 case 2:
6270 '1
6280 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
6290 case 3:
6300 '2
6310 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
6320 end select
6330 endif
6340 'ジョイパッド　ソース 部分　ここまで
6350 'ジョイパッド右　　or Enter key 決定
6360 if ((bg = 2) OR (key$ = chr$(13))) then
6370 select case No
6380 case 0:
6390 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Kabara_TopScreen:  'Kabara_First_Top:
6400 case 1:
6410 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Setting:
6420 case 2:
6430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:count=0:goto Help:
6440 case 3:
6450 play "":pause 200
6460 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
6470 end select
6480 endif
6490 if (bg2 = 2) then
6500 play "":pause 200
6510 play Voice$ + "Voice_Main_Message_20230607.mp3"
6520 goto Main_Screen_Select:
6530 endif
6540 '************************************************************************************************
6550 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6560 '************************************************************************************************
6570 endif
6580 'Version
6590 Version:
6600 cls 3:PLAY ""
6610 if ((size(0) <= 1280) and (size(1) <= 800)) then
6620 '************************************************************************************************
6630 '1.WXGA ここから (1280 x 800)
6640 '************************************************************************************************
6650 gload Gazo$   + Gazo_WXGA$ + "VersionScreen_918x680_20240219.png",0,0,0
6660 '************************************************************************************************
6670 '1.WXGA ここまで (1280 x 800)
6680 '************************************************************************************************
6690 else
6700 '************************************************************************************************
6710 '2.WXGA以外の場合（WUXGAの場合）　ここから (1920 x 1280)
6720 '************************************************************************************************
6730 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
6740 gload Gazo$ + "downscreen.png",0,0,800
6750 '************************************************************************************************
6760 '2.WXGA以外の場合（WUXGAの場合）　ここまで (1920 x 1280)
6770 '************************************************************************************************
6780 endif
6790 init"kb:4":font FONT
6800 'talk"バージョン情報です"
6810 'Message :Version
6820 play Voice$ +  "Voice_Version_Message_20230607.mp3"
6830 if ((size(0) <= 1280) and (size(1) <= 800)) then
6840 color rgb(0,0,255)
6850 locate 1,5
6860 print "・Title:数秘術占い";chr$(13)
6870 locate 1,8
6880 print "・" + Version$ + chr$(13)
6890 locate 1,10
6900 print "・Author:licksjp"+chr$(13)
6910 locate 1,13
6920 print "・E-mail:licksjp@gmail.com" + chr$(13)
6930 locate 0,15
6940 print "(C)licksjp All rights " + chr$(13)
6950 locate 7,16
6960 print "reserved since 2009"+chr$(13)
6970 locate 0,19
6980 color rgb(0,0,0)
6990 print "ジョイパッドの右を押してください"
7000 else
7010 locate 0,3
7020 color rgb(0,0,255)
7030 print "・Title:数秘術占い";chr$(13)
7040 print "・" + Version$ + chr$(13)
7050 print "・Author:licksjp"+chr$(13)
7060 print "・E-mail:licksjp@gmail.com" + chr$(13)
7070 locate 0,12
7080 print "(C)licksjp All rights " + chr$(13)
7090 locate 7,13
7100 print "reserved since 2009"+chr$(13)
7110 locate 0,18
7120 color rgb(255,255,255)
7130 print "ジョイパッドの右を押してください"
7140 endif
7150 Versionn_Selection:
7160 bg = 0:key$ = "":bg2 = 0
7170 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
7180 bg = strig(1)
7190 key$ = inkey$
7200 bg2 = strig(0)
7210 pause 200
7220 wend
7230 if ((bg = 2) or (key$ = chr$(13))) then
7240 cls 4:goto Main_Screen:
7250 endif
7260 if (bg2=2) then
7270 play "":pause 200
7280 play Voice$ + "Voice_Version_Message_20230607.mp3"
7290 goto Versionn_Selection:
7300 endif
7310 '1.数秘ナンバーを求める
7320 '誕生日入力(生れた年代)
7330 Input_Seireki:
7340 '************************************************************************************************
7350 '1.WXGAの時1200x800の時
7360 '************************************************************************************************
7370 '************************************************************************************************
7380 '2.WUXGAの時1920x1200の時
7390 '************************************************************************************************
7400 cls 3:play "":count=0:count2=0
7410 'No = -1:Okのとき
7420 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
7430 '************************************************************************************************
7440 '配列buf_year(4)を0で埋める。:データー初期化 ここから
7450 '************************************************************************************************
7460 for i=0 to 3
7470 buf_year(i)=0
7480 next i
7490 '************************************************************************************************
7500 '配列buf_year(4)を0で埋める。 :データー初期化　ここまで
7510 '************************************************************************************************
7520 '************************************************************************************************
7530 '1.WXGAの時1200x800の時
7540 '************************************************************************************************
7550 if ((size(0) <= 1280) and (size(1) <= 800)) then
7560 gload Gazo$ + Gazo_WXGA$ + "Screen2_907x680_20240216.png"
7570 else
7580 '************************************************************************************************
7590 '2.WUXGAの時1920x1200の時
7600 '************************************************************************************************
7610 gload Gazo$ + "Screen2.png",0,0,0
7620 gload Gazo$ + "downscreen.png",0,0,800
7630 '************************************************************************************************
7640 '2.WUXGAの時1920x1200の時
7650 '************************************************************************************************
7660 endif
7670 'Init"kb:2"
7680 '音声ファイル再生 2023.06.07
7690 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
7700 font FONT
7710 locate 0,1
7720 if ex_info$(1) <> "JP" then
7730 color rgb(255,255,255)
7740 color rgb(255,255,255)
7750 print "Input Born Year?" + chr$(13)
7760 color rgb(255,255,255)
7770 locate 2,4
7780 print "Your Born Year(4 dedgit for AC):" + buf_year$
7790 else
7800 '文字色：黒　 color rgb(0,0,0)
7810 color rgb(255,255,255)
7820 print "生まれた年代を入れて下さい" + chr$(13)
7830 color rgb(255,255,255)
7840 locate 2,5
7850 print "生まれた年代(西暦4桁):" + buf_year$
7860 endif
7870 '=============================
7880 'テンキーの色(1~９)　白 ,決定ボタン　青
7890 '=============================
7900 color rgb(255,255,255)
7910 sp_on 4,1: sp_on 5,1:sp_on 6,0
7920 sp_on 7,0:sp_on 8,0:sp_on 9,0
7930 sp_on 10,0:sp_on 11,0:sp_on 12,0
7940 sp_on 13,1:sp_on 14,1
7950 Input_Seireki2:
7960 key$="":bg=0:y=0:y2=0:bg2=0:
7970 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
7980 key$ = inkey$
7990 bg = strig(1)
8000 y = stick(1)
8010 y2 = stick(0)
8020 bg2 = strig(0)
8030 pause 200
8040 wend
8050 '十字キー　ここから
8060 '上の矢印　または、十字キー上
8070 if ((y = -1) or (key$ = chr$(30))) then
8080 select case No
8090 'No=-1:okのとき:初期の状態
8100 '0kボタンから３に移動
8110 '上に行く 処理 12,1 =>3 Button
8120 case -1:
8130 No=3:sp_on 12,1:sp_on 14,0:beep
8140 pause 200:goto Input_Seireki2:
8150 '選択肢:3
8160 '3ボタンから 6に移動
8170 case 3:
8180 No=6:sp_on 12,0:sp_on 9,1:beep
8190 pause 200:goto Input_Seireki2:
8200 '6ボタンから ９に移動
8210 case 6:
8220 No=9:sp_on 7,1:sp_on 9,0:beep
8230 pause 200:goto Input_Seireki2:
8240 '6ボタンから ９に移動　ここまで
8250 '9で上を押して何もしない
8260 case 9:
8270 '何もしない
8280 No=9
8290 beep:pause 200:goto Input_Seireki2:
8300 '9で上を押しても何もしない　ここまで
8310 '上　 0ボタンから2ボタン
8320 'sp_on 6,1:1
8330 'sp_on 8,1:5
8340 'sp_on 7,1:7
8350 case 0:
8360 No=2:sp_on 13,0:sp_on 9,1:beep
8370 pause 200:goto Input_Seireki2:
8380 '上  0ボタンから2ボタン　ここまで
8390 '2から５になる 上
8400 case 2:
8410 No=5:sp_on 8,1:sp_on 9,0:beep
8420 pause 200:goto Input_Seireki2:
8430 case 5:
8440 No=8:sp_on 7,1:sp_on 8,0:beep
8450 pause 200:goto Input_Seireki2:
8460 case 8:
8470 beep:pause 200:goto Input_Seireki2:
8480 case 1:
8490 No=4:sp_on 5,1:sp_on 6,0:beep
8500 pause 200:goto Input_Seireki2:
8510 case 4:
8520 No=7:sp_on 4,1:sp_on 5,0:beep
8530 pause 200:goto Input_Seireki2:
8540 case 7:
8550 beep:pause 200:goto Input_Seireki2:
8560 end select
8570 endif
8580 '左３　ここまで
8590 '下の矢印
8600 '中央 2
8610 if ((y=1) or (key$ = chr$(31))) then
8620 select case No
8630 '9から６に下げる
8640 case 9:
8650 No=6:sp_on 7,0:sp_on 9,1:beep
8660 pause 200:goto Input_Seireki2:
8670 '6から３に下げる
8680 case 6:
8690 No=3:sp_on 12,1:sp_on 9,0:beep
8700 pause 200:goto Input_Seireki2:
8710 '3から０ｋに変える
8720 case 3:
8730 No=-1:sp_on 14,1:sp_on 12,0:beep
8740 pause 200:goto Input_Seireki2:
8750 'Okから下のボタンを押しても何もしない
8760 case -1:
8770 beep:pause 200:goto Input_Seireki2:
8780 case 8:
8790 No=5:sp_on 8,1:sp_on 7,0:beep
8800 pause 200:goto Input_Seireki2:
8810 case 5:
8820 No=2:sp_on 9,1:sp_on 8,0:beep
8830 pause 200:goto Input_Seireki2:
8840 case 2:
8850 No=0:sp_on 13,1:sp_on 9,0:beep
8860 pause 200:goto Input_Seireki2:
8870 case 0:
8880 beep:pause 200:goto Input_Seireki2:
8890 case 7:
8900 No=4:sp_on 5,1:sp_on 4,0:beep
8910 pause 200:goto Input_Seireki2:
8920 case 4:
8930 No=1:sp_on 6,1:sp_on 5,0:beep
8940 pause 200:goto Input_Seireki2:
8950 case 1:
8960 beep:pause 200:goto Input_Seireki2:
8970 end select
8980 endif
8990 '左へボタン 十字キー　左　or 　カーソル左
9000 if ((y2 = -1) or (key$ = chr$(29))) then
9010 select case No
9020 'Ok ボタン  Okから　左　０に行く
9030 case -1:
9040 No=0:sp_on 13,1:sp_on 14,0:beep
9050 pause 200:goto Input_Seireki2:
9060 '0 ボタン  左　何もしない
9070 case 0:
9080 beep:pause 200:goto Input_Seireki2:
9090 case 3:
9100 No=2:sp_on 6,1:sp_on 9,0:beep
9110 pause 200:goto Input_Seireki2:
9120 case 2:
9130 No=1:sp_on 6,0:sp_on 9,0:beep
9140 pause 200:goto Input_Seireki2:
9150 case 1:
9160 beep:pause 200:goto Input_Seireki2:
9170 case 6:
9180 No=5:sp_on 8,1:sp_on 11,0:beep
9190 pause 200:goto Input_Seireki2:
9200 case 5:
9210 No=4:sp_on 5,1:sp_on 8,0:beep
9220 pause 200:goto Input_Seireki2:
9230 case 4:
9240 beep:pause 200:goto Input_Seireki2:
9250 case 9:
9260 No=8:sp_on 7,1:sp_on 10,0:beep
9270 pause 200:goto Input_Seireki2:
9280 case 8:
9290 No=7:sp_on 4,1:sp_on 7,0:beep
9300 pause 200:goto Input_Seireki2:
9310 case 7:
9320 beep:pause 200:goto Input_Seireki2:
9330 end select
9340 endif
9350 '右  十字キー　右　or カーソル　右
9360 if ((y2 = 1) or (key$ = chr$(28))) then
9370 select case No
9380 '0ボタンからokボタン右に移動
9390 case 0:
9400 No=-1:sp_on 14,1:sp_on 13,0:beep
9410 pause 200:goto Input_Seireki2:
9420 '0ボタンからokボタン 右に移動　ここまで
9430 'OKボタンで右を押して何もしない
9440 case -1:
9450 pause 200:goto Input_Seireki2:
9460 case 1:
9470 No=2:sp_on 9,1:sp_on 6,0:beep
9480 pause 200:goto Input_Seireki2:
9490 case 2:
9500 No=3:sp_on 12,1:sp_on 9,0
9510 beep:pause 200:goto Input_Seireki2:
9520 case 3:
9530 beep:pause 200:goto Input_Seireki2:
9540 case 4:
9550 No=5:sp_on 8,1:sp_on 5,0:beep
9560 pause 200:goto Input_Seireki2:
9570 case 5:
9580 No=6:sp_on 11,1:sp_on 8,0:beep
9590 pause 200:goto Input_Seireki2:
9600 case 7:
9610 No=8:sp_on 7,1:sp_on 4,0:beep
9620 pause 200:goto Input_Seireki2:
9630 case 8:
9640 No=9:sp_on 10,1:sp_on 7,0:beep
9650 pause 200:goto Input_Seireki2:
9660 case 9:
9670 beep:pause 200:goto Input_Seireki2:
9680 case 6:
9690 beep:pause 200:goto Input_Seireki2:
9700 end select
9710 'Okから右ボタンを押して何もしない ここまで
9720 endif
9730 '十字キー　ここまで
9740 if ((bg=2) or (key$=chr$(13))) then
9750 select case count
9760 case 0:
9770 count=1
9780 if (No=-1) then
9790 count=0
9800 'Okボタンを押したとき
9810 goto Input_Seireki2:
9820 else
9830 '===================================
9840 'Okボタン以外が押されたとき  1桁目の入力
9850 '===================================
9860 count2=1
9870 if (No >= 1 and No <= 2) then
9880 buf_year$="":buf_year$ = str$(No)
9890 buf_year=No:buf_year2$ = buf_year$ + string$(3,"*") :'"***"
9900 if ex_info$(1) <> "JP" then
9910 n1= len("Input Born Year?(4 dedgit):")
9920 else
9930 n1 = len("生まれた年代(西暦4桁):")
9940 endif
9950 locate 2,3
9960 color rgb(255,255,255)
9970 if ex_info$(1) <> "JP" then
9980 buf_Born_Year_line$ = trim$("Input Born Year?(4 dedgit):" + buf_year2$)
9990 else
10000 buf_Born_Year_line$ = trim$("生まれた年代(西暦4桁):" + buf_year2$)
10010 endif
10020 'buf_Born_Year_line$ = left$(buf_Born_year_5490 'buf_Born_Year_line$ = left$(buf_Born_year_name$,1)
10030 'print "生まれた年代(西暦4桁):";buf_year2$
10040 print buf_Born_Year_line$
10050 goto Input_Seireki2:
10060 else
10070 count=0
10080 ui_msg"数字が範囲外になります。"
10090 buf_year$="":buf_year=0
10100 goto Input_Seireki2:
10110 endif
10120 endif
10130 case 1:
10140 count = 2
10150 if (No = -1) then
10160 count = 1
10170 goto Input_Seireki2:
10180 else
10190 count2 = 1
10200 b = val(buf_year$)
10210 buf_year = b * 10 + No
10220 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(2,"**")
10230 locate 2,3
10240 color rgb(255,255,255)
10250 print "                                                                "
10260 locate 2,3
10270 if ex_info$(1) <> "JP" then
10280 print "Input Born Year(4 dedgit):";buf_year$
10290 else
10300 print "生まれた年代(西暦4桁):";buf_year2$
10310 endif
10320 'if (No = -1) then
10330 'count=1
10340 goto Input_Seireki2:
10350 endif
10360 case 2:
10370 count=3
10380 if (No=-1) then
10390 count =2
10400 goto Input_Seireki2:
10410 else
10420 b = val(buf_year$)
10430 buf_year = b*10 + No
10440 buf_year$ = str$(buf_year):buf_year2$ = buf_year$ + string$(1,"*")
10450 locate 2,3
10460 color rgb(255,255,255)
10470 print "                                        "
10480 locate 2,3
10490 if ex_info$(1) <> "JP" then
10500 print "Input Born Year?(4 dedgit):";buf_year$
10510 else
10520 print "生まれた年代(西暦4桁):";buf_year2$
10530 endif
10540 goto Input_Seireki2:
10550 endif
10560 case 3:
10570 count=4
10580 if (No = -1) then
10590 count=3
10600 goto Input_Seireki2:
10610 else
10620 b = val(buf_year$)
10630 buf_year = b * 10 + No
10640 buf_year$ = str$(buf_year)
10650 locate 2,3
10660 color RGB(255,255,255)
10670 print "                                      "
10680 locate 2,3
10690 if ex_info$(1) <> "JP" then
10700 print "Input Born Year?(4 dedgit):";buf_year$
10710 else
10720 print "生まれた年代(西暦4桁):";buf_year$
10730 endif
10740 buf_year=val(buf_year$)
10750 'year=val(buf_year$)
10760 'if (No=-1) then
10770 'goto Input_Born_Month:
10780 'else
10790 goto Input_Seireki2:
10800 endif
10810 case 4:
10820 'bufyear=buf_year
10830 if (No = -1) then
10840 buf_year = val(buf_year$)
10850 bufyear = buf_year
10860 sp_on 14,0
10870 goto Input_Born_Month:
10880 else
10890 goto Input_Seireki2:
10900 endif
10910 end select
10920 endif
10930 '=========================
10940 'bg2　キャンセルボタン
10950 '=========================
10960 if (bg2 = 2) then
10970 select case count2
10980 case 0:
10990 'Okボタンを押したときの処理
11000 if (No = -1) then
11010 buf_year=0:buf_year$=(""):buf_year$=trim$("****")
11020 'count = 0
11030 locate 2,3
11040 color rgb(255,255,255)
11050 print "                                      "
11060 locate 2,3
11070 if ex_info$(1) <> "JP" then
11080 print "Input Born Year?(4 dedgit):";buf_year$
11090 else
11100 print "生まれた年代（西暦4桁):";buf_year$
11110 endif
11120 '=============================
11130 'case 0:前の画面に戻る 数秘術トップメニュー
11140 '=============================
11150 sp_on 14,0:goto Kabara_TopScreen:
11160 else
11170 'count=0
11180 '(buf_year=0) then
11190 buf_year = 0:buf_year$ = string$(4,"*")
11200 goto Input_Seireki2:
11210 'endif
11220 endif
11230 case 1:
11240 if (No = -1) then
11250 count2 = 0:count = 0
11260 buf$=right$(buf_year$,1)
11270 if (val(buf$) >= 1 and val(buf$) <= 9) then
11280 buf_year$ = "****":buf_year=0
11290 color rgb(255,255,255)
11300 locate 0,3:
11310 print "                                      "
11320 locate 2,3
11330 if ex_info$(1) <> "JP" then
11340 print "Input Born Year(4 dedgit):";buf_year$
11350 else
11360 print "生まれた年代（西暦4桁):" + buf_year$
11370 endif
11380 goto Input_Seireki2:
11390 endif
11400 else
11410 endif
11420 end select
11430 endif
11440 end
11450 'Input"生れた年代(4桁,〜2025年):",year
11460 'if year > 2025 then goto Input_Seireki:
11470 'if year = 123 then cls 3:cls 4:goto Main_Screen:
11480 '"4桁目"
11490 'bufyear4 = fix(year / 1000)
11500 '"3桁目"
11510 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
11520 '"2桁目"
11530 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
11540 '"1桁目"
11550 'bufyear1 = fix((year - ((bufyear4*
11560 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
11570 '生れた月を入力
11580 Input_Born_Month:
11590 cls 3:play "":count=0:count2=0
11600 'No=-1:Okのとき
11610 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
11620 for i=0 to 1
11630 buf_month(i)=0
11640 next i
11650 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
11660 gload Gazo$ + "Screen2.png",0,0,0
11670 gload Gazo$ + "downscreen.png",0,0,800
11680 'Init"kb:2"
11690 if ex_info$(1) <> "JP" then
11700 else
11710 '音声ファイル再生 2023.06.07
11720 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
11730 endif
11740 font 48
11750 locate 0,1
11760 '文字色：黒　 color rgb(0,0,0)
11770 if ex_info$(1) <> "JP" then
11780 '英語パート
11790 '文字色:白
11800 color rgb(255,255,255)
11810 print "Input Born Month?(1~12):" + chr$(13)
11820 '文字色:白
11830 color rgb(255,255,255)
11840 locate 2,3
11850 '文字色:白
11860 print "Your Born Month?(1~12):";buf_Month$
11870 color rgb(255,255,255)
11880 else
11890 '日本語パート
11900 color rgb(255,255,255)
11910 print "生まれた月を入れて下さい" + chr$(13)
11920 '文字色:白
11930 color rgb(255,255,255)
11940 locate 2,3
11950 '文字色:白
11960 print "生まれた月(1月~12月):";buf_Month$
11970 color rgb(255,255,255)
11980 endif
11990 'locate 4,6:print ":7"
12000 'locate 9,6:print ":8"
12010 'locate 12,6:print ":9"
12020 'locate 4,6
12030 '文字色:赤
12040 'print ":7  :8  :9" + chr$(13)
12050 'color rgb(255,255,255)
12060 'locate 4,8
12070 'print ":4  :5  :6" + chr$(13)
12080 'color rgb(255,255,255)
12090 'locate 4,10
12100 'print ":1  :2  :3" + chr$(13)
12110 'locate 4,12
12120 'print "    :0"
12130 'locate 12,12
12140 'color rgb(255,0,0)
12150 'print ":Ok"
12160 sp_on 4,0: sp_on 5,0:sp_on 6,0
12170 sp_on 7,0:sp_on 8,0:sp_on 9,0
12180 sp_on 10,0:sp_on 11,0:sp_on 12,0
12190 sp_on 13,0:sp_on 14,1
12200 Input_Born_Month2:
12210 key$="":bg=0:y=0:y2=0:bg2=0
12220 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
12230 key$ = inkey$
12240 bg = strig(1)
12250 y = stick(1)
12260 y2 = stick(0)
12270 bg2 = strig(0)
12280 pause 200
12290 wend
12300 '十字キー　ここから
12310 '上の矢印　または、十字キー上
12320 if ((y = -1) or (key$ = chr$(30))) then
12330 select case No
12340 'No=-1:okのとき:初期の状態
12350 '0kボタンから３に移動
12360 '上に行く 処理
12370 case -1:
12380 No=3:sp_on 12,1:sp_on 14,0:BEEP
12390 pause 200:goto Input_Born_Month2:
12400 '選択肢:3
12410 '3ボタンから 6に移動
12420 case 3:
12430 No=6:sp_on 12,0:sp_on 11,1:beep
12440 pause 200:goto Input_Born_Month2:
12450 '6ボタンから ９に移動
12460 case 6:
12470 No=9:sp_on 10,1:sp_on 11,0:beep
12480 pause 200:goto Input_Born_Month2:
12490 '6ボタンから ９に移動　ここまで
12500 '9で上を押して何もしない
12510 case 9:
12520 '何もしない
12530 No=9
12540 beep:pause 200:goto Input_Born_Month2:
12550 '9で上を押しても何もしない　ここまで
12560 '上　 0ボタンから2ボタン
12570 'sp_on 6,1:1
12580 'sp_on 8,1:5
12590 'sp_on 7,1:7
12600 case 0:
12610 No=2:sp_on 13,0:sp_on 9,1:beep
12620 pause 200:goto Input_Born_Month2:
12630 '上  0ボタンから2ボタン　ここまで
12640 '2から５になる 上
12650 case 2:
12660 No=5:sp_on 8,1:sp_on 9,0:beep
12670 pause 200:goto Input_Born_Month2:
12680 case 5:
12690 No=8:sp_on 7,1:sp_on 8,0:beep
12700 pause 200:goto Input_Born_Month2:
12710 case 8:
12720 beep:pause 200:goto Input_Born_Month2:
12730 case 1:
12740 No=4:sp_on 5,1:sp_on 6,0:beep
12750 pause 200:goto Input_Born_Month2:
12760 case 4:
12770 No=7:sp_on 4,1:sp_on 5,0:beep
12780 pause 200:goto Input_Born_Month2:
12790 case 7:
12800 beep:pause 200:goto Input_Born_Month2:
12810 end select
12820 endif
12830 '左３　ここまで
12840 '下の矢印
12850 '中央 2
12860 if ((y=1) or (key$ = chr$(31))) then
12870 select case No
12880 '9から６に下げる
12890 case 9:
12900 No=6:sp_on 11,1:sp_on 10,0:beep
12910 pause 200:goto Input_Born_Month2:
12920 '6から３に下げる
12930 case 6:
12940 No=3:sp_on 12,1:sp_on 11,0:beep
12950 pause 200:goto Input_Born_Month2:
12960 '3から０ｋに変える
12970 case 3:
12980 No=-1:sp_on 14,1:sp_on 12,0:beep
12990 pause 200:goto Input_Born_Month2:
13000 'Okから下のボタンを押しても何もしない
13010 case -1:
13020 beep:pause 200:goto Input_Born_Month2:
13030 case 8:
13040 No=5:sp_on 8,1:sp_on 7,0:beep
13050 pause 200:goto Input_Born_Month2:
13060 case 5:
13070 No=2:sp_on 9,1:sp_on 8,0:beep
13080 pause 200:goto Input_Born_Month2:
13090 case 2:
13100 No=0:sp_on 13,1:sp_on 9,0:beep
13110 pause 200:goto Input_Born_Month2:
13120 case 0:
13130 beep:pause 200:goto Input_Born_Month2:
13140 case 7:
13150 No=4:sp_on 5,1:sp_on 4,0:beep
13160 pause 200:goto Input_Born_Month2:
13170 case 4:
13180 No=1:sp_on 6,1:sp_on 5,0:beep
13190 pause 200:goto Input_Born_Month2:
13200 case 1:
13210 beep:pause 200:goto Input_Born_Month2:
13220 end select
13230 endif
13240 '左へボタン 十字キー　左　or 　カーソル左
13250 if ((y2 = -1) or (key$ = chr$(29))) then
13260 select case No
13270 'Ok ボタン  Okから　左　０に行く
13280 case -1:
13290 No=0:sp_on 13,1:sp_on 14,0
13300 beep:pause 200:goto Input_Born_Month2:
13310 '0 ボタン  左　何もしない
13320 case 0:
13330 beep:pause 200:goto Input_Born_Month2:
13340 case 3:
13350 No=2:sp_on 9,1:sp_on 12,0:beep
13360 pause 200:goto Input_Born_Month2:
13370 case 2:
13380 No=1:sp_on 6,1:sp_on 9,0:beep
13390 pause 200:goto Input_Born_Month2:
13400 case 1:
13410 beep:pause 200:goto Input_Born_Month2:
13420 case 6:
13430 No=5:sp_on 8,1:sp_on 11,0:beep
13440 pause 200:goto Input_Born_Month2:
13450 case 5:
13460 No=4:sp_on 5,1:sp_on 8,0:beep
13470 pause 200:goto Input_Born_Month2:
13480 case 4:
13490 beep:pause 200:goto Input_Born_Month2:
13500 case 9:
13510 No=8:sp_on 7,1:sp_on 10,0:beep
13520 pause 200:goto Input_Born_Month2:
13530 case 8:
13540 No=7:sp_on 4,1:sp_on 7,0:beep
13550 pause 200:goto Input_Born_Month2:
13560 case 7:
13570 beep:pause 200:goto Input_Born_Month2:
13580 end select
13590 endif
13600 '右  十字キー　右　or カーソル　右
13610 if ((y2 = 1) or (key$ = chr$(28))) then
13620 select case No
13630 '0ボタンからokボタン右に移動
13640 case 0:
13650 No=-1:sp_on 14,1:sp_on 13,0:beep
13660 pause 200:goto Input_Born_Month2:
13670 '0ボタンからokボタン 右に移動　ここまで
13680 'OKボタンで右を押して何もしない
13690 case -1:
13700 beep:pause 200:goto Input_Born_Month2:
13710 case 1:
13720 No=2:sp_on 9,1:sp_on 6,0:beep
13730 pause 200:goto Input_Born_Month2:
13740 case 2:
13750 No=3:sp_on 12,1:sp_on 9,0:beep
13760 pause 200:goto Input_Born_Month2:
13770 case 3:
13780 beep:pause 200:goto Input_Born_Month2:
13790 case 4:
13800 No=5:sp_on 8,1:sp_on 5,0:beep
13810 pause 200:goto Input_Born_Month2:
13820 case 5:
13830 No=6:sp_on 11,1:sp_on 8,0:beep
13840 pause 200:goto Input_Born_Month2:
13850 case 7:
13860 No=8:sp_on 7,1:sp_on 4,0:beep
13870 pause 200:goto Input_Born_Month2:
13880 case 8:
13890 No=9:sp_on 10,1:sp_on 7,0:beep
13900 pause 200:goto Input_Born_Month2:
13910 case 9:
13920 beep:pause 200:goto Input_Born_Month2:
13930 case 6:
13940 beep:pause 200:goto Input_Born_Month2:
13950 end select
13960 'Okから右ボタンを押して何もしない ここまで
13970 endif
13980 '十字キー　ここまで
13990 '右の丸ボタン　決定キー
14000 if ((bg=2) or (key$=chr$(13))) then
14010 select case count
14020 case 0:
14030 count = 1:buf_Month$ = str$(No):buf_month = No:buf_Month2$ = buf_Month$ + string$(1,"*"):count2=1
14040 if (buf_month = 1 or buf_month = 2) then
14050 locate 2,3
14060 color RGB(255,255,255)
14070 if ex_info$(1) <> "JP" then
14080 print "Input Born Month(1~12):";buf_Month$
14090 else
14100 print "生まれた月(1月~12月):";buf_Month2$
14110 endif
14120 else
14130 locate 2,3
14140 color Rgb(255,255,255)
14150 if ex_info$(1) <> "JP" then
14160 print "Input Born Month(1~12):";buf_Month$
14170 else
14180 print "生まれた月(1月~12月):";buf_Month$
14190 endif
14200 endif
14210 goto Input_Born_Month2:
14220 case 1:
14230 count = 2:c = No
14240 c = val(buf_Month$)
14250 if (No = -1) then
14260 'if No=1 or No=2 then
14270 'endif
14280 month = buf_month
14290 buf_month=val(buf_Month$)
14300 month=buf_month
14310 '生まれた日に飛ぶ
14320 goto Input_Born_Day:
14330 else
14340 buf_month = c*10 + No
14350 buf_Month$= str$(buf_month)
14360 locate 2,3
14370 color Rgb(255,255,255)
14380 if ex_info$(1) <> "JP" then
14390 print "Input Born Month(1~12):";buf_Month$
14400 else
14410 print "生まれた月(1月~12月):";buf_Month$
14420 endif
14430 goto Input_Born_Month2:
14440 endif
14450 case 2:
14460 count=3:count2=1
14470 'c= val(buf_Month$)
14480 'buf_month = c*10 + No
14490 'buf_Month$ = str$(buf_month)
14500 'locate 2,3
14510 'print "生まれた月(1月～12月):";buf_Month$
14520 'goto Input_Born_Month2:
14530 'case 3:
14540 'count=4
14550 'b=val(buf_month$)
14560 'buf_month=c*10+No
14570 'buf_Month$=str$(buf_month)
14580 'locate 2,3
14590 'print "生まれた月(1月～12月):";buf_Month$
14600 'buf_month=val(buf_Month$)
14610 'year=val(buf_year$)
14620 if (No=-1) then
14630 goto Input_Born_Day:
14640 else
14650 'goto Input_Born_Month2:
14660 endif
14670 'case 4:
14680 'bufyear=buf_year
14690 'if (No=-1) then
14700 'buf_month = val(buf_Month$)
14710 'month = buf_month
14720 'sp_on 14,0
14730 'goto Input_Born_Day:
14740 'else
14750 'goto Input_Born_Month2:
14760 'endif
14770 end select
14780 endif
14790 '左の丸ボタン　キャンセル
14800 if (bg2=2) then
14810 select case count2
14820 case 0:
14830 if (No = -1) then
14840 buf_month=0:buf_Month$="**"
14850 count2=0:count=0
14860 locate 0,3:print "                                   "
14870 if ex_info$(1) <> "JP" then
14880 print "Input Born Month?(1~12):";buf_Month$
14890 else
14900 locate 2,3:print "生まれた月(1月~12月):"+buf_Month$
14910 endif
14920 'if (buf_month > 1) then
14930 sp_on 14,0:goto Input_Born_Month2:
14940 'goto rewrite:
14950 else
14960 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
14970 buf_month=0:buf_Month$="**"
14980 locate 2,3
14990 color rgb(255,255,255)
15000 print "                                       "
15010 goto rewrite:
15020 if (No>2) then
15030 if ex_info$(1) <> "JP" then
15040 ui_msg "The value is out of range"
15050 else
15060 ui_msg "値が範囲外です。"
15070 endif
15080 goto rewrite:
15090 endif
15100 endif
15110 'endif
15120 rewrite:
15130 locate 2,3
15140 color rgb(255,255,255)
15150 print "                                      "
15160 locate 2,3
15170 if ex_info$(1) <> "JP" then
15180 print "Input Born Month?(1~12):";buf_Month$
15190 else
15200 print "生まれた月(1月~12月):";buf_Month$
15210 endif
15220 goto Input_Born_Month2:
15230 endif
15240 case 1:
15250 buf_Month$="**":buf_month=0
15260 if No=-1 then
15270 count2=2:count=0
15280 locate 0,3
15290 print "                                      "
15300 locate 2,3:
15310 if ex_info$(1) <> "JP" then
15320 print "Input Born Month?(1~12):";buf_Month$
15330 else
15340 print "生まれた月(1月~12月):" + buf_Month$
15350 endif
15360 goto Input_Born_Month2:
15370 endif
15380 case 2:
15390 sp_on 14,0:goto Input_Seireki:
15400 end select
15410 endif
15420 'endif
15430 end
15440 'end
15450 '生れた日を入力
15460 Input_Born_Day:
15470 '生まれた日入力
15480 cls 3:play ""
15490 'No=-1:Okのとき
15500 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
15510 for i=0 to 1
15520 buf_day(i)=0
15530 next i
15540 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
15550 gload Gazo$ + "Screen2.png",0,0,0
15560 gload Gazo$ + "downscreen.png",0,0,800
15570 'Init"kb:2"
15580 if ex_info$(1) <> "JP" then
15590 '英語音声パート
15600 else
15610 '日本語音声パート
15620 '音声ファイル再生 2023.06.07
15630 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
15640 endif
15650 font 48
15660 if ex_info$(1) <> "JP" then
15670 locate 0,1
15680 '文字色：黒　 color rgb(0,0,0)
15690 color rgb(255,255,255)
15700 print "Input Born day?" + chr$(13)
15710 color rgb(255,255,255)
15720 locate 2,3
15730 print "Born Day(1~31):";buf_Day$
15740 else
15750 locate 0,1
15760 '文字色：黒　 color rgb(0,0,0)
15770 color rgb(255,255,255)
15780 print "生まれた日を入れて下さい" + chr$(13)
15790 color rgb(255,255,255)
15800 locate 2,3
15810 print "生まれた日(1日~31日):";buf_Day$
15820 endif
15830 'color rgb(255,255,255)
15840 'locate 4,6:print ":7"
15850 'locate 9,6:print ":8"
15860 'locate 12,6:print ":9"
15870 'locate 4,6
15880 'print ":7  :8  :9" + chr$(13)
15890 '=======================
15900 'テンキー　色　白　決定ボタン　青
15910 '=======================
15920 'color rgb(255,255,255)
15930 'locate 4,8
15940 'print ":4  :5  :6" + chr$(13)
15950 'color rgb(255,255,255)
15960 'locate 4,10
15970 'print ":1  :2  :3" + chr$(13)
15980 'locate 4,12
15990 'print "    :0"
16000 'locate 12,12
16010 'color rgb(255,0,0)
16020 'print ":Ok"
16030 sp_on 4,0: sp_on 5,0:sp_on 6,0
16040 sp_on 7,0:sp_on 8,0:sp_on 9,0
16050 sp_on 10,0:sp_on 11,0:sp_on 12,0
16060 sp_on 13,0:sp_on 14,1
16070 Input_Born_Day2:
16080 key$="":bg=0:y=0:y2=0:bg2=0
16090 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
16100 key$ = inkey$
16110 bg = strig(1)
16120 y = stick(1)
16130 y2 = stick(0)
16140 bg2 = strig(0)
16150 pause 200
16160 wend
16170 '十字キー　ここから
16180 '上の矢印　または、十字キー上
16190 if ((y = -1) or (key$ = chr$(30))) then
16200 select case No
16210 'No=-1:okのとき:初期の状態
16220 '0kボタンから３に移動
16230 '上に行く 処理
16240 case -1:
16250 No=3:sp_on 12,1:sp_on 14,0:beep
16260 pause 200:goto Input_Born_Day2:
16270 '選択肢:3
16280 '3ボタンから 6に移動
16290 case 3:
16300 No=6:sp_on 12,0:sp_on 11,1:beep
16310 pause 200:goto Input_Born_Day2:
16320 '6ボタンから ９に移動
16330 case 6:
16340 No=9:sp_on 10,1:sp_on 11,0:beep
16350 pause 200:goto Input_Born_Day2:
16360 '6ボタンから ９に移動　ここまで
16370 '9で上を押して何もしない
16380 case 9:
16390 '何もしない
16400 No=9
16410 beep:pause 200:goto Input_Born_Day2:
16420 '9で上を押しても何もしない　ここまで
16430 '上　 0ボタンから2ボタン
16440 'sp_on 6,1:1
16450 'sp_on 8,1:5
16460 'sp_on 7,1:7
16470 case 0:
16480 No=2:sp_on 13,0:sp_on 9,1:beep
16490 pause 200:goto Input_Born_Day2:
16500 '上  0ボタンから2ボタン　ここまで
16510 '2から５になる 上
16520 case 2:
16530 No=5:sp_on 8,1:sp_on 9,0:beep
16540 pause 200:goto Input_Born_Day2:
16550 case 5:
16560 No=8:sp_on 7,1:sp_on 8,0:beep
16570 pause 200:goto Input_Born_Day2:
16580 case 8:
16590 beep:pause 200:goto Input_Born_Day2:
16600 case 1:
16610 No=4:sp_on 5,1:sp_on 6,0:beep
16620 pause 200:goto Input_Born_Day2:
16630 case 4:
16640 No=7:sp_on 4,1:sp_on 5,0:beep
16650 pause 200:goto Input_Born_Day2:
16660 case 7:
16670 beep:pause 200:goto Input_Born_Day2:
16680 end select
16690 endif
16700 '左３　ここまで
16710 '下の矢印
16720 '中央 2
16730 if ((y=1) or (key$ = chr$(31))) then
16740 select case No
16750 '9から６に下げる
16760 case 9:
16770 No=6:sp_on 11,1:sp_on 10,0:beep
16780 pause 200:goto Input_Born_Day2:
16790 '6から３に下げる
16800 case 6:
16810 No=3:sp_on 12,1:sp_on 11,0:beep
16820 pause 200:goto Input_Born_Day2:
16830 '3から０ｋに変える
16840 case 3:
16850 No=-1:sp_on 14,1:sp_on 12,0:beep
16860 pause 200:goto Input_Born_Day2:
16870 'Okから下のボタンを押しても何もしない
16880 case -1:
16890 beep:pause 200:goto Input_Born_Day2:
16900 case 8:
16910 No=5:sp_on 8,1:sp_on 7,0:beep
16920 pause 200:goto Input_Born_Day2:
16930 case 5:
16940 No=2:sp_on 9,1:sp_on 8,0:beep
16950 pause 200:goto Input_Born_Day2:
16960 case 2:
16970 No=0:sp_on 13,1:sp_on 9,0:beep
16980 pause 200:goto Input_Born_Day2:
16990 case 0:
17000 beep:pause 200:goto Input_Born_Day2:
17010 case 7:
17020 No=4:sp_on 5,1:sp_on 4,0:beep
17030 pause 200:goto Input_Born_Day2:
17040 case 4:
17050 No=1:sp_on 6,1:sp_on 5,0:beep
17060 pause 200:goto Input_Born_Day2:
17070 case 1:
17080 beep:pause 200:goto Input_Born_Day2:
17090 end select
17100 endif
17110 '左へボタン 十字キー　左　or 　カーソル左
17120 if ((y2 = -1) or (key$ = chr$(29))) then
17130 select case No
17140 'Ok ボタン  Okから　左　０に行く
17150 case -1:
17160 No=0:sp_on 13,1:sp_on 14,0:beep
17170 pause 200:goto Input_Born_Day2:
17180 '0 ボタン  左　何もしない
17190 case 0:
17200 beep:pause 200:goto Input_Born_Day2:
17210 case 3:
17220 No=2:sp_on 9,1:sp_on 12,0:beep
17230 pause 200:goto Input_Born_Day2:
17240 case 2:
17250 No=1:sp_on 6,1:sp_on 9,0:beep
17260 pause 200:goto Input_Born_Day2:
17270 case 1:
17280 pause 200:goto Input_Born_Day2:
17290 case 6:
17300 No=5:sp_on 8,1:sp_on 11,0:beep
17310 pause 200:goto Input_Born_Day2:
17320 case 5:
17330 No=4:sp_on 5,1:sp_on 8,0:beep
17340 pause 200:goto Input_Born_Day2:
17350 case 4:
17360 beep:pause 200:goto Input_Born_Day2:
17370 case 9:
17380 No=8:sp_on 7,1:sp_on 10,0:beep
17390 pause 200:goto Input_Born_Day2:
17400 case 8:
17410 No=7:sp_on 4,1:sp_on 7,0:beep
17420 pause 200:goto Input_Born_Day2:
17430 case 7:
17440 beep:pause 200:goto Input_Born_Day2:
17450 end select
17460 endif
17470 '右  十字キー　右　or カーソル　右
17480 if ((y2 = 1) or (key$ = chr$(28))) then
17490 select case No
17500 '0ボタンからokボタン右に移動
17510 case 0:
17520 No=-1:sp_on 14,1:sp_on 13,0:beep
17530 pause 200:goto Input_Born_Day2:
17540 '0ボタンからokボタン 右に移動　ここまで
17550 'OKボタンで右を押して何もしない
17560 case -1:
17570 beep:pause 200:goto Input_Born_Day2:
17580 case 1:
17590 No=2:sp_on 9,1:sp_on 6,0:beep
17600 pause 200:goto Input_Born_Day2:
17610 case 2:
17620 No=3:sp_on 12,1:sp_on 9,0:beep
17630 pause 200:goto Input_Born_Day2:
17640 case 3:
17650 beep:pause 200:goto Input_Born_Day2:
17660 case 4:
17670 No=5:sp_on 8,1:sp_on 5,0:beep
17680 pause 200:goto Input_Born_Day2:
17690 case 5:
17700 No=6:sp_on 11,1:sp_on 8,0:beep
17710 pause 200:goto Input_Born_Day2:
17720 case 7:
17730 No=8:sp_on 7,1:sp_on 4,0:beep
17740 pause 200:goto Input_Born_Day2:
17750 case 8:
17760 No=9:sp_on 10,1:sp_on 7,0:beep
17770 pause 200:goto Input_Born_Day2:
17780 case 9:
17790 beep:pause 200:goto Input_Born_Day2:
17800 case 6:
17810 beep:pause 200:goto Input_Born_Day2:
17820 end select
17830 'Okから右ボタンを押して何もしない ここまで
17840 endif
17850 '十字キー　ここまで
17860 '右の丸ボタンを押したとき
17870 if ((bg = 2) or (key$ = chr$(13))) then
17880 'count :決定ボタンを押した回数
17890 select case (count mod 3)
17900 '1桁目入力
17910 case 0:
17920 count = 1:
17930 if (No = -1) then
17940 '1桁目　OKでは何もしない
17950 'goto check:
17960 else
17970 'ok以外のボタンを押したとき
17980 buf_day = No:buf_Day$ = str$(No)
17990 c=No:buf_Day2$ = buf_Day$ + string$(1,"*")
18000 locate 2,3
18010 color RGB(255,255,255)
18020 if ex_info$(1) <> "JP" then
18030 print "Input Born Day(1~31):";buf_Day2$
18040 else
18050 print "生まれた日(1日~31日):";buf_Day2$
18060 endif
18070 endif
18080 check:
18090 if (No >= 1 and No <= 9) then
18100 sp_on 14,0
18110 goto Input_Born_Day2:
18120 else
18130 sp_on 14,0
18140 goto complate:
18150 endif
18160 case 1:
18170 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
18180 count = 2:
18190 'locate 2,3
18200 'color RGB(255,255,255)
18210 'print "生まれた日(1日~31日):";buf_Day$
18220 'Okボタンを押したときの処理
18230 '入力値　10未満のとき
18240 'c = buf_day
18250 if (No = -1) then
18260 'c=buf_day
18270 ' buf_day = c
18280 'buf_Day$ = str$(buf_day)
18290 '10以下のとき
18300 if (buf_day < 10) then
18310 sp_on 14,0
18320 goto complate:
18330 endif
18340 else
18350 'c = No
18360 buf_day = c * 10 + No
18370 'buf_day = c
18380 buf_Day$ =str$(buf_day)
18390 locate 2,3
18400 color Rgb(255,255,255)
18410 if ex_info$(1) <> "JP" then
18420 print "Input Born Day(1~31):";buf_Day$
18430 else
18440 print "生まれた日(1日~31日):";buf_Day$
18450 endif
18460 goto Input_Born_Day2:
18470 endif
18480 '生まれた日　2桁目の数字　or 1桁の数字 + ok
18490 case 2:
18500 count=0
18510 'c=val(buf_Day$)
18520 'buf_day=c*10+No
18530 'buf_Day$=str$(buf_day)
18540 'day=buf_day
18550 'locate 2,3
18560 'print "生まれた日(1日〜31日):";buf_Day$
18570 'No=-1:ok ボタンを押したとき
18580 if (No = -1) then
18590 if ((buf_day > 0) and (buf_day < 32)) then
18600 sp_on 14,0
18610 goto complate:
18620 else
18630 goto Input_Born_Day2:
18640 endif
18650 'Okボタン以外を押したとき
18660 else
18670 c=val(buf_Day$)
18680 buf_day = c * 10 + No
18690 buf_Day$ = str$(buf_day)
18700 locate 2,3
18710 if ex_info$(1) <> "JP" then
18720 print "Input Born Day?(1~31):";buf_Day$
18730 else
18740 print "生まれた日(1日~31日):";buf_Day$
18750 endif
18760 'goto Input_Born_Day2:
18770 endif
18780 case 3:
18790 count = 4
18800 c=val(buf_day$)
18810 buf_day = c * 10 + No
18820 buf_day$ = str$(buf_day)
18830 locate 2,3
18840 if ex_info$(1) <> "JP" then
18850 print "Input Born Day?(1~31):";buf_Day$
18860 else
18870 print "生まれた日を入れてください(1日~31日):";buf_Day$
18880 endif
18890 year = val(buf_year$)
18900 if (No = -1) then
18910 'goto Input_Born_Day:
18920 sp_on 14,0:No=0
18930 goto complate:
18940 else
18950 goto Input_Born_Month2:
18960 endif
18970 'case 4:
18980 'bufyear=buf_year
18990 'if (No=-1) then
19000 'buf_day = val(buf_day$)
19010 'bufday = buf_day
19020 'sp_on 14,0
19030 'goto complate:
19040 'else
19050 'goto Input_Born_Day2:
19060 'endif
19070 end select
19080 endif
19090 if (bg2=2) then
19100 select case count2
19110 case 0:
19120 if (No=-1) then
19130 'buf_day=0:buf_Day$="**"
19140 if (buf_day>=1 and buf_day<=31) then
19150 count=0:No=0
19160 buf_day=0:buf_Day$="**"
19170 'goto rewrite_day:
19180 else
19190 buf_day=0:buf_Day$="**"
19200 ui_msg"値が範囲外です"
19210 endif
19220 goto rewrite_day:
19230 else
19240 goto rewrite_day:
19250 endif
19260 rewrite_day:
19270 locate 2,3
19280 color rgb(255,255,255)
19290 print "                                      "
19300 locate 2,3
19310 if ex_info$(1)<>"JP" then
19320 print "Born Day(1~31):";buf_Day$
19330 else
19340 print "生まれた日(1日~31日):";buf_Day$
19350 endif
19360 goto Input_Born_Day2:
19370 end select
19380 endif
19390 '--------------------------Input_Born_Day:-------------------------------------------
19400 complate:
19410 suhiNo = buf_year + buf_month + buf_day
19420 'if (suhiNo < 1000) then
19430 a1 = fix(suhiNo / 1000)
19440 a2 = fix(suhiNo/100) - (a1 * 10)
19450 a3 = fix(suhiNo/10)-(a1*100+a2*10)
19460 a4 =fix(suhiNo-((a1*1000+a2*100+a3*10)))
19470 'endif
19480 bufsuhiNo = a1 + a2 + a3 + a4
19490 recomp:
19500 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
19510 'bufsuhiNo=a6
19520 goto Kabara_Result_Screen:
19530 else
19540 a5 = fix(bufsuhiNo / 10)
19550 a6 = bufsuhiNo - a5 * 10
19560 bufsuhiNo = a6 + a5
19570 if (bufsuhiNo = 10) then
19580 bufsuhiNo=1
19590 endif
19600 goto Kabara_Result_Screen:
19610 endif
19620 Kabara_Result_Screen:
19630 cls 3:
19640 '****************************************************************************************************
19650 '1.WUXGA(1920x1200)の時
19660 '****************************************************************************************************
19670 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
19680 gload Gazo$ + "downscreen.png",0,0,800
19690 '****************************************************************************************************
19700 '1.WUXGA(1920x1200)の時
19710 '****************************************************************************************************
19720 init "kb:4"
19730 '
19740 play ""
19750 select case (bufsuhiNo)
19760 case 1:
19770 '****************************************************************************************************
19780 '1.数秘ナンバー 1
19790 '****************************************************************************************************
19800 play Voice$ + "Result_Kabara_1_20230607.mp3"
19810 '****************************************************************************************************
19820 '1.数秘ナンバー 1
19830 '****************************************************************************************************
19840 case 2:
19850 '****************************************************************************************************
19860 '1.数秘ナンバー 2
19870 '****************************************************************************************************
19880 play Voice$ + "Result_Kabara_2_20231112.mp3"
19890 '****************************************************************************************************
19900 '1.数秘ナンバー 2
19910 '****************************************************************************************************
19920 case 3:
19930 '****************************************************************************************************
19940 '1.数秘ナンバー 3
19950 '****************************************************************************************************
19960 play Voice$ + "Result_Kabara_3_20230607.mp3"
19970 '****************************************************************************************************
19980 '1.数秘ナンバー 3
19990 '****************************************************************************************************
20000 case 4:
20010 '****************************************************************************************************
20020 '1.数秘ナンバー 4
20030 '****************************************************************************************************
20040 play Voice$ + "Result_Kabara_4_20230607.mp3"
20050 '****************************************************************************************************
20060 '1.数秘ナンバー 4
20070 '****************************************************************************************************
20080 case 5:
20090 '****************************************************************************************************
20100 '1.数秘ナンバー 5
20110 '****************************************************************************************************
20120 play Voice$ + "Result_Kabara_5_20231112.mp3"
20130 '****************************************************************************************************
20140 '1.数秘ナンバー 5
20150 '****************************************************************************************************
20160 case 6:
20170 '****************************************************************************************************
20180 '1.数秘ナンバー 6
20190 '****************************************************************************************************
20200 play Voice$ + "Result_Kabara_6_20230607.mp3"
20210 '****************************************************************************************************
20220 '1.数秘ナンバー 6
20230 '****************************************************************************************************
20240 case 7:
20250 '****************************************************************************************************
20260 '1.数秘ナンバー 7
20270 '****************************************************************************************************
20280 play Voice$ + "Result_Kabara_7_20230607.mp3"
20290 '****************************************************************************************************
20300 '1.数秘ナンバー 7
20310 '****************************************************************************************************
20320 case 8:
20330 '****************************************************************************************************
20340 '1.数秘ナンバー 8
20350 '****************************************************************************************************
20360 play Voice$ + "Result_Kabara_8_20230607.mp3"
20370 '****************************************************************************************************
20380 '1.数秘ナンバー 8
20390 '****************************************************************************************************
20400 case 9:
20410 '****************************************************************************************************
20420 '1.数秘ナンバー 9
20430 '****************************************************************************************************
20440 play Voice$ + "Result_Kabara_9_20230607.mp3"
20450 '****************************************************************************************************
20460 '1.数秘ナンバー 9
20470 '****************************************************************************************************
20480 case 11:
20490 '****************************************************************************************************
20500 '1.数秘ナンバー 11
20510 '****************************************************************************************************
20520 play Voice$ + "Result_Kabara_11_20230607.mp3"
20530 '****************************************************************************************************
20540 '1.数秘ナンバー 11
20550 '****************************************************************************************************
20560 case 22:
20570 '****************************************************************************************************
20580 '1.数秘ナンバー 22
20590 '****************************************************************************************************
20600 play Voice$ + "Result_Kabara_22_20230607.mp3"
20610 '****************************************************************************************************
20620 '1.数秘ナンバー 22
20630 '****************************************************************************************************
20640 case 33:
20650 '****************************************************************************************************
20660 '1.数秘ナンバー 33
20670 '****************************************************************************************************
20680 play Voice$ + "Result_Kabara_33_20230607.mp3"
20690 '****************************************************************************************************
20700 '1.数秘ナンバー 33
20710 '****************************************************************************************************
20720 end select
20730 '****************************************************************************************************
20740 '
20750 '****************************************************************************************************
20760 font 48
20770 '****************************************************************************************************
20780 '
20790 '****************************************************************************************************
20800 key$ = "":bg = 0:bg2=0
20810 'COLOR rgb(255,255,255)
20820 'print "●診断結果"+chr$(13)
20830 locate 0,2
20840 if ex_info$(1)<>"JP" then
20850 color rgb(0,0,0):print "Your Birth Day：";buf_year;".";buf_month;".";buf_day;".";chr$(13)
20860 color rgb(0,0,0):print"Your Kabara Kabara Number is";bufsuhiNo;".";chr$(13)
20870 locate 0,15:
20880 color rgb(255,255,255)
20890 print "Left button：Retry,Right Button：Main Screen" + chr$(13)
20900 else
20910 '****************************************************************************************************
20920 'WUXG(1920x1200)の時ここから
20930 '****************************************************************************************************
20940 color rgb(0,0,0):print "誕生日：";buf_year;"年";buf_month;"月";buf_day;"日";chr$(13)
20950 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
20960 locate 0,15:
20970 color rgb(255,255,255)
20980 print "左の丸：もう一度診断,右の丸：メイン画面" + chr$(13)
20990 endif
21000 '****************************************************************************************************
21010 'WUXG(1920x1200)の時ここまで
21020 '****************************************************************************************************
21030 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
21040 key$ = inkey$
21050 bg = strig(1)
21060 bg2 = strig(0)
21070 pause 200
21080 wend
21090 'Enter or JoyPad right
21100 if ((key$ = chr$(13)) or (bg = 2)) then
21110 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Main_Screen:
21120 endif
21130 if ((bg2=2)) then
21140 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 100:cls 3:goto Input_Seireki:
21150 endif
21160 'suhiNo1 = fix(bufsuhiNo / 10)
21170 'suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
21180 'bufsuhiNo = suhiNo1 + suhiNo2
21190 'goto recomp:
21200 'endif
21210 'print chr$(13)
21220 'color rgb(255,0,0)
21230 'print"トップ:エンターキー,S or s:保存"+chr$(13)
21240 'key$ = input$(1)
21250 'if key$ = chr$(13) then goto Main_Screen:
21260 '"Menu2 占いのルール"
21270 Suhi_Rule:
21280 '数秘術占いルールの表示
21290 cls 3:play "":init"kb:4"
21300 if ((size(0)<=1280) and (size(1)<=800)) then
21310 '****************************************************************************************************
21320 'WUXG(1920x1200)の時ここから
21330 '****************************************************************************************************
21340 gload Gazo$  + Gazo_WXGA$ +  "KabaraRuleScreen_864x640_20240219.png",0,0,0
21350 '****************************************************************************************************
21360 'WUXG(1920x1200)の時ここまで
21370 '****************************************************************************************************
21380 else
21390 '****************************************************************************************************
21400 'WUXG(1920x1200)の時ここから
21410 '****************************************************************************************************
21420 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
21430 gload Gazo$ + "downscreen.png",0,0,800
21440 '****************************************************************************************************
21450 'WUXG(1920x1200)の時ここまで
21460 '****************************************************************************************************
21470 endif
21480 'cls 3:
21490 'line (0,0) - (1500,60),rgb(0,0,255),bf
21500 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
21510 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
21520 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
21530 if ex_info$(1)<>"JP" then
21540 locate 0,2:Font 48
21550 print chr$(13) + chr$(13)
21560 color rgb(0,0,0)
21570 print "We will convert your birth date to a single number.";chr$(13)
21580 print "Number range: 1~9, 11, 22, 33";chr$(13)
21590 print "Example: If your birth date is 22nd November 1973";chr$(13)
21600 print "1+9+7+3+11+22=53 ";chr$(13)
21610 print "→ 5 + 3 = 8" + chr$(13)
21620 print "So, your numerology number is 8.";chr$(13)
21630 locate 0,15
21640 color rgb(255,255,255)
21650 print "Please press the right on the joystick"
21660 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
21670 else
21680 Font Font
21690 if ((size(0)<=1280) and (size(1)<=800)) then
21700 '************************************************************************************************
21710 '1.WXGAの時1200x800の時
21720 '************************************************************************************************
21730 color rgb(0,0,0)
21740 locate 1,5:print "誕生日を単数変換します";chr$(13)
21750 locate 1,7:print "数字の範囲:1~９,11,22,33";chr$(13)
21760 locate 1,9:print "例:1973年11月22日の場合";chr$(13)
21770 locate 1,11:print "1+9+7+3+11+22=53 ";chr$(13)
21780 locate 1,13:print "→ 5 + 3 = 8" + chr$(13)
21790 locate 1,15:print "故に8が数秘ナンバーになります";chr$(13)
21800 locate 0,19:color rgb(255,255,255)
21810 print "ジョイパッドの右を押してください"
21820 '************************************************************************************************
21830 '1.WXGAの時1200x800の時
21840 '************************************************************************************************
21850 else
21860 '****************************************************************************************************
21870 '2.WUXG(1920x1200)の時ここから
21880 '****************************************************************************************************
21890 print chr$(13) + chr$(13)
21900 color rgb(0,0,0)
21910 print "誕生日を単数変換します";chr$(13)
21920 print "数字の範囲:1~９,11,22,33";chr$(13)
21930 print "例:1973年11月22日の場合";chr$(13)
21940 print "1+9+7+3+11+22=53 ";chr$(13)
21950 print "→ 5 + 3 = 8" + chr$(13)
21960 print "故に8が数秘ナンバーになります";chr$(13)
21970 locate 0,15
21980 color rgb(255,255,255)
21990 print "ジョイパッドの右を押してください"
22000 '****************************************************************************************************
22010 '2.WUXG(1920x1200)の時ここまで
22020 '****************************************************************************************************
22030 endif
22040 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
22050 endif
22060 '"key$ = input$(1)"
22070 '"if key$ = chr$(13) then goto Main_Screen:"
22080 suhi_rule_selection:
22090 bg = 0:key$ = "":bg2=0
22100 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
22110 bg = strig(1)
22120 key$ = inkey$
22130 bg2=strig(0)
22140 pause 200
22150 wend
22160 if ((bg = 2) or (key$ = chr$(13))) then
22170 pause 200:cls 4:goto Main_Screen:
22180 endif
22190 if (bg2=2) then
22200 play "":pause 200
22210 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
22220 goto suhi_rule_selection:
22230 endif
22240 '2.設定 ここから
22250 '2-1.トップ画面に戻る
22260 Setting:
22270 cls 3:init"kb:4":font 48:No=0
22280 play ""
22290 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
22300 '****************************************************************************************************
22310 'W(1280x 800)の時ここから
22320 '****************************************************************************************************
22330 if (size(0)<=1280 and size(1)<=800) then
22340 gload Gazo$ + Gazo_WXGA$ + "Screen1_Setting_Top_907x680_20240221.png",0,0,0
22350 '****************************************************************************************************
22360 'W(1280 x800)の時ここまで
22370 '****************************************************************************************************
22380 else
22390 '****************************************************************************************************
22400 'WUXG(1920x1200)の時ここから
22410 '****************************************************************************************************
22420 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
22430 gload Gazo$ + "downscreen.png",0,0,800
22440 '****************************************************************************************************
22450 'WUXG(1920x1200)の時ここまで
22460 '****************************************************************************************************
22470 endif
22480 if (size(0)<=1280 and size(1)<=800) then
22490 font FONT:color rgb(255,255,255):cls
22500 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:
22510 '****************************************************************************************************
22520 '(1280x800)の時 ここから
22530 '****************************************************************************************************
22540 locate 1,5:
22550 print "番号を選んでください"
22560 locate 1,7:
22570 print " :1.トップ画面に戻る"
22580 locate 1,10:
22590 print " :2.バーズアイグリッドデーターリスト"
22600 locate 1,13:
22610 print " :3.未実装" + chr$(13)
22620 locate 1,16:
22630 print " :4.未実装" + chr$(13)
22640 color rgb(0,0,0):locate 1,19:
22650 print "1.トップ画面に戻るを選択"
22660 '****************************************************************************************************
22670 '(1280x800)の時 ここまで
22680 '****************************************************************************************************
22690 else
22700 font FONT
22710 print chr$(13) + chr$(13) + chr$(13)
22720 color rgb(255,255,255):sp_on 0,1:
22730 '****************************************************************************************************
22740 'WUXG(1920x1200)の時ここから
22750 '****************************************************************************************************
22760 print "番号を選んでください" + chr$(13)
22770 print " :1.トップ画面に戻る"+ chr$(13)
22780 print " :2.バーズアイグリッドデーターリスト" + chr$(13)
22790 print " :3.未実装" + chr$(13)
22800 print " :4.未実装" + chr$(13)
22810 color rgb(0,0,0)
22820 locate 1,15:print "1.トップ画面に戻るを選択"
22830 '****************************************************************************************************
22840 'WUXG(1920x1200)の時ここまで
22850 '****************************************************************************************************
22860 endif
22870 Setting_Selection:
22880 y=0:key$="":bg=0:bg2=0
22890 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2) and (y <> -1) and (y <> 1))
22900 y=stick(1)
22910 key$ = inkey$
22920 bg=strig(1)
22930 bg2 = strig(0)
22940 pause 200
22950 wend
22960 if ((bg = 2) or (key$ = chr$(13))) then
22970 select case No
22980 case 0:
22990 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:cls 3:goto Main_Screen:
23000 case 1:
23010 sp_on 0,0:sp_on 1,0:sp_on 2,0:beep:pause 200:goto BirdsEyeGrid_Entry:
23020 end select
23030 endif
23040 if (bg2 = 2) then
23050 play "":pause 200
23060 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
23070 goto Setting_Selection:
23080 endif
23090 '****************************************************************************************************
23100 '(1280x800)の時 ここから
23110 '****************************************************************************************************
23120 if (size(0) <= 1280 and size(1) <= 800) then
23130 if ((y=1) or (y=-1)) then
23140 select case No
23150 case 0:
23160 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:color rgb(0,0,0):locate 1,19:print "                    ":locate 1,19:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
23170 case else:
23180 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:gosub Setting_Recheck:pause 200:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.トップ画面に戻るを選択":goto Setting_Selection:
23190 end select
23200 '****************************************************************************************************
23210 '(1280x800)の時 ここまで
23220 '****************************************************************************************************
23230 endif
23240 else
23250 '****************************************************************************************************
23260 '(1920x1280)の時 ここから
23270 '****************************************************************************************************
23280 if ((y=1) or (y=-1)) then
23290 select case No
23300 case 0:
23310 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print"2.バーズアイグリットデーターリストを選択":goto Setting_Selection:
23320 case else:
23330 No=0:sp_on 1,0:sp_on 0,1:sp_on 2,0:sp_on 3,0:beep:pause 200:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,15:print "1.トップ画面に戻るを選択":goto Setting_Selection:
23340 end select
23350 endif
23360 '****************************************************************************************************
23370 '(1920x1200)の時 ここまで
23380 '****************************************************************************************************
23390 endif
23400 '2.設定 ここまで
23410 '3.Help
23420 '3-1.ルールの表示
23430 '3-2.バージョン
23440 '3-3.トップに戻る
23450 Help:
23460 cls 3:Font 48:No=0
23470 play ""
23480 '****************************************************************************************************
23490 ''WXGAの場合　ここから (1280 x 800)
23500 '****************************************************************************************************
23510 if ((size(0)<=1280) and (size(1)<=800)) then
23520 gload Gazo$ + Gazo_WXGA$ + "TopScreen_Help_907x680_20240216.png",0,0,0
23530 '****************************************************************************************************
23540 ''WXGAの場合　ここまで (1280 x 800)
23550 '****************************************************************************************************
23560 else
23570 '****************************************************************************************************
23580 'WUXG(1920x1200)の時ここから
23590 '****************************************************************************************************
23600 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
23610 gload Gazo$ + "downscreen.png",0,0,800
23620 endif
23630 '****************************************************************************************************
23640 'WUXG(1920x1200)の時ここまで
23650 '****************************************************************************************************
23660 if ex_info$(1)<>"JP" then
23670 font FONT
23680 color rgb(255,255,255)
23690 print chr$(13)+chr$(13)+chr$(13)
23700 print "Please select a number"+chr$(13)
23710 print " :1. Rules for Explain" + chr$(13)
23720 print " :2. Display Version" + chr$(13)
23730 print " :3. References" + chr$(13)
23740 print " :4. Return to Top Screen" + chr$(13)
23750 else
23760 if ((size(0)<=1280) and (size(1)<=800)) then
23770 color rgb(255,255,255)
23780 font FONT
23790 locate 1,5
23800 print "番号を選んでください"
23810 locate 1,7
23820 print " :1.ルールの説明"
23830 locate 1,10
23840 print " :2.バージョンの表示"
23850 locate 1,13
23860 print " :3.参考文献"
23870 locate 1,16
23880 print " :4.トップ画面に戻る"
23890 else
23900 '****************************************************************************************************
23910 'WUXG(1920x1200)の時ここから
23920 '****************************************************************************************************
23930 font FONT
23940 color rgb(255,255,255)
23950 print chr$(13)+chr$(13)+chr$(13)
23960 print "番号を選んでください"+chr$(13)
23970 print " :1.ルールの説明" + chr$(13)
23980 print " :2.バージョンの表示" + chr$(13)
23990 print " :3.参考文献" + chr$(13)
24000 print " :4.トップ画面に戻る" + chr$(13)
24010 endif
24020 endif
24030 '****************************************************************************************************
24040 'WUXG(1920x1200)の時ここまで
24050 '****************************************************************************************************
24060 '************************************************************************************************
24070 '1.WXGAの場合　ここから (1280 x 800)
24080 '************************************************************************************************
24090 color rgb(0,0,0)
24100 if ((size(0) <= 1280) and (size(1) <= 800)) then
24110 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
24120 locate 1,19
24130 print "                                  "
24140 if ex_info$(1) <> "JP" then
24150 print "1. Select Rules for Explain"
24160 else
24170 if count=0 then
24180 locate 1,19
24190 print "1.ルールの説明を選択"
24200 endif
24210 endif
24220 '************************************************************************************************
24230 '1.WXGAの場合　ここまで (1280 x 800)
24240 '************************************************************************************************
24250 else
24260 '*************************************************************************************************
24270 '2.WUXG(1920x1200)の時ここから
24280 '**************************************************************************************************
24290 'color rgb(0,0,0)
24300 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
24310 locate 1,15
24320 print "                                  "
24330 if ex_info$(1) <> "JP" then
24340 print "1. Select Rules for Explain"
24350 else
24360 locate 1,15
24370 print "1.ルールの説明を選択"
24380 endif
24390 '****************************************************************************************************
24400 '2.WUXG(1920x1200)の時ここまで
24410 '****************************************************************************************************
24420 endif
24430 init"kb:4"
24440 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
24450 Help_Select:
24460 bg=0:key$="":y=0:bg2=0
24470 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
24480 y = stick(1)
24490 key$ = inkey$
24500 bg = strig(1)
24510 bg2 = strig(0)
24520 pause 200
24530 wend
24540 if ex_info$(1)<>"JP" then
24550 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
24560 if ((y = 1) or (key$ = chr$(31))) then
24570 select case No
24580 case 0:
24590 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Display Version":goto Help_Select:
24600 case 1:
24610 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. References":goto Help_Select:
24620 case 2:
24630 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4. Return to Top Screen":goto Help_Select:
24640 case 3:
24650 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Rule for Explain":goto Help_Select:
24660 end select
24670 endif
24680 '************************************************************************************************
24690 '1.WXGAの場合　ここから (1280 x 800)
24700 '************************************************************************************************
24710 if ((y = -1) or (key$ = chr$(30))) then
24720 select case No
24730 case 0:
24740 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "4.Return to Top Screen":goto Help_Select:
24750 case 1:
24760 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,19:print "                                      ":locate 1,19:print "1.Select Rules for Explain":goto Help_Select:
24770 case 2:
24780 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,19:print "                                        ":locate 1,19:print "2.Display Version":goto Help_Select:
24790 case 3:
24800 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,19:print "                                              ":locate 1,19:print "3.References":goto Help_Select:
24810 end select
24820 '************************************************************************************************
24830 '1.WXGAの場合　ここまで (1280 x 800)
24840 '************************************************************************************************
24850 else
24860 '****************************************************************************************************
24870 'WUXG(1920x1200)の時ここから
24880 '****************************************************************************************************
24890 if ((y = -1) or (key$ = chr$(30))) then
24900 select case No
24910 case 0:
24920 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.Return to Top Screen":goto Help_Select:
24930 case 1:
24940 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.Select Rules for Explain":goto Help_Select:
24950 case 2:
24960 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.Display Version":goto Help_Select:
24970 case 3:
24980 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.References":goto Help_Select:
24990 end select
25000 endif
25010 '****************************************************************************************************
25020 'WUXG(1920x1200)の時ここまで
25030 '****************************************************************************************************
25040 endif
25050 else
25060 '************************************************************************************************
25070 '1.WXGAの場合　ここから (1280 x 800)
25080 '************************************************************************************************
25090 if ((size(0) <= 1280) and (size(1) <= 800)) then
25100 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
25110 if ((y = 1) or (key$ = chr$(31))) then
25120 select case No
25130 case 0:
25140 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y + 120),1,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バージョンの表示を選択":goto Help_Select:
25150 case 1:
25160 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y + 220),2,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
25170 case 2:
25180 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y + 320),0,0:count = count + 1:beep:pause 200:locate 1,19:gosub Help_Top_ReCheck:color rgb(0,0,0):print "                                      ":locate 1,19:print "4.トップ画面に戻る":goto Help_Select:
25190 case 3:
25200 '****************************
25210 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y + 20),0,0:count = count + 1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,19:print "                                              ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
25220 '****************************
25230 end select
25240 endif
25250 '************************************************************************************************
25260 '1.WXGAの場合　ここまで (1280 x 800)
25270 '************************************************************************************************
25280 else
25290 '****************************************************************************************************
25300 'WUXG(1920x1200)の時ここから
25310 '****************************************************************************************************
25320 if ((y = 1) or (key$ = chr$(31))) then
25330 select case No
25340 case 0:
25350 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
25360 case 1:
25370 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
25380 case 2:
25390 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
25400 case 3:
25410 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
25420 end select
25430 endif
25440 '****************************************************************************************************
25450 'WUXG(1920x1200)の時ここまで
25460 '****************************************************************************************************
25470 endif
25480 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
25490 '************************************************************************************************
25500 '1.WXGAの場合　ここから (1280 x 800)
25510 '************************************************************************************************
25520 if ((size(0) <= 1280) and (size(1) <= 800)) then
25530 if ((y = -1) or (key$ = chr$(30))) then
25540 select case No
25550 case 0:
25560 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,Y+320),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                      ":locate 1,19:print "4.トップ画面に戻るを選択":goto Help_Select:
25570 case 1:
25580 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),0,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0,0):locate 1,15:print "                                      ":locate 1,19:print "1.ルールの説明を選択":goto Help_Select:
25590 case 2:
25600 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                        ":locate 1,19:print "2.バージョンの表示を選択":goto Help_Select:
25610 case 3:
25620 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,Y+220),2,0:count=count+1:beep:pause 200:gosub Help_Top_ReCheck:color rgb(0,0,0):locate 1,15:print "                                              ":locate 1,19:print "3.参考文献を選択":goto Help_Select:
25630 end select
25640 endif
25650 '************************************************************************************************
25660 '1.WXGAの場合　ここから (1280 x 800)
25670 '************************************************************************************************
25680 else
25690 '************************************************************************************************
25700 'WUXG(1920x1200)の時ここから
25710 '************************************************************************************************
25720 if ((y = -1) or (key$ = chr$(30))) then
25730 select case No
25740 case 0:
25750 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
25760 case 1:
25770 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの説明を選択":goto Help_Select:
25780 case 2:
25790 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
25800 case 3:
25810 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を選択":goto Help_Select:
25820 end select
25830 endif
25840 '****************************************************************************************************
25850 'WUXG(1920x1200)の時ここまで
25860 '****************************************************************************************************
25870 endif
25880 endif
25890 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
25900 if ((bg = 2) or (key$ = chr$(13))) then
25910 select case No
25920 case 0:
25930 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule_explainTop: 'Suhi_Rule:
25940 case 1:
25950 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Version:
25960 case 2:
25970 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto References1:
25980 '3:Top画面に行く
25990 case 3:
26000 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen:
26010 end select
26020 endif
26030 if (bg2 = 2) then
26040 play "":pause 200
26050 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
26060 goto Help_Select:
26070 endif
26080 'ルールの説明　トップ画面
26090 Suhi_Rule_explainTop:
26100 '**********************************************************
26110 cls 3:No=0
26120 play ""
26130 '****************************************************************************************************
26140 'WUXG(1920x1200)の時ここから
26150 '背景画像
26160 '****************************************************************************************************
26170 Font FONT
26180 if ((size(0) <= 1280) and (size(1) <= 800)) then
26190 gload Gazo$ + Gazo_WXGA$ + "Rule_explain_TopScreen_907x680_20240218.png",0,0,0
26200 else
26210 gload Gazo$ + "Rule_explain_TopScreen20240201.png",0,0,0
26220 gload Gazo$ + "downscreen.png",0,0,800
26230 endif
26240 '****************************************************************************************************
26250 'WUXG(1920x1200)の時ここまで
26260 '背景画像
26270 '****************************************************************************************************
26280 if ex_info$(1)<>"JP" then
26290 color rgb(255,255,255)
26300 print chr$(13)+chr$(13)+chr$(13)
26310 print "Please select a number"+chr$(13)
26320 print " :1.How to Kabara" + chr$(13)
26330 print " :2. Explain for BirdseyeGrid" + chr$(13)
26340 print " :3. Return to Top Screen" + chr$(13)
26350 else
26360 '****************************************************************************************************
26370 'WUXG(1920x1200)の時ここから
26380 '****************************************************************************************************
26390 '****************************************************************************************************
26400 'Top画面メニュー表示文字　ここから
26410 '****************************************************************************************************
26420 '***************************************************************************************************
26430 'WXGA(1200x800)の時 ここから
26440 '***************************************************************************************************
26450 if ((size(0) <= 1280) and (size(1) <= 800)) then
26460 color rgb(255,255,255)
26470 locate 1,5
26480 print "番号を選んでください"
26490 locate 1,7:    '〇
26500 print " :1.数秘術のやり方"
26510 locate 1,10:   '〇
26520 print " :2.バーズアイグリットの説明"
26530 locate 1,13:    '〇
26540 print " :3.トップ画面に戻る"
26550 '***************************************************************************************************
26560 'WXGA(1200x800)の時 ここまで
26570 '***************************************************************************************************
26580 else
26590 '***************************************************************************************************
26600 'WXGA(1200x800) 以外の時 ここから
26610 '***************************************************************************************************
26620 color rgb(255,255,255)
26630 print chr$(13)+chr$(13)+chr$(13)
26640 print "番号を選んでください"+chr$(13)
26650 print " :1.数秘術のやり方" + chr$(13)
26660 print " :2.バーズアイグリットの説明" + chr$(13)
26670 print " :3.トップ画面に戻る" + chr$(13)
26680 '***************************************************************************************************
26690 'WXGA(1200x800) 以外の時 ここまで
26700 '***************************************************************************************************
26710 '****************************************************************************************************
26720 'Top画面メニュー表示文字　ここまで
26730 '****************************************************************************************************
26740 endif
26750 '****************************************************************************************************
26760 'WUXG(1920x1200)の時ここまで
26770 '****************************************************************************************************
26780 endif
26790 color rgb(0,0,0)
26800 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
26810 locate 1,15
26820 print "                                  "
26830 if ex_info$(1) <> "JP" then
26840 print "                                  "
26850 print ":1.How to Kabara"
26860 else
26870 if ((size(0) <= 1280) and (size(1) <= 800)) then
26880 if count=0 then
26890 '****************************************************************************************************
26900 '共通部分 WXGA ここから
26910 '****************************************************************************************************
26920 locate 1,19
26930 print ":1.数秘術のやり方"
26940 '****************************************************************************************************
26950 '共通部分 WXGA ここまで
26960 '****************************************************************************************************
26970 endif
26980 else
26990 if count = 0 then
27000 '****************************************************************************************************
27010 '共通部分 WUXGA ここから
27020 '****************************************************************************************************
27030 locate 1,15
27040 print ":1.数秘術のやり方"
27050 '****************************************************************************************************
27060 '共通部分 WUXGA ここまで
27070 '****************************************************************************************************
27080 endif
27090 endif
27100 init "kb:4"
27110 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
27120 Suhi_Rule_explainTop2:
27130 bg=0:key$="":y=0:bg2=0
27140 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
27150 y = stick(1)
27160 key$ = inkey$
27170 bg = strig(1)
27180 bg2 = strig(0)
27190 pause 200
27200 wend
27210 if ex_info$(1)<>"JP" then
27220 'Joypad: Down (y=1), Cursor: Down (key$=chr$(31))
27230 if ((y = 1) or (key$ = chr$(31))) then
27240 select case No
27250 case 0:
27260 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
27270 case 1:
27280 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
27290 case 2:
27300 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
27310 end select
27320 endif
27330 'Joypad: Up (y=-1), Cursor: Up (key$=chr$(30))
27340 if ((y = -1) or (key$ = chr$(30))) then
27350 select case No
27360 case 0:
27370 No=2:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,Y+220),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.How to Kabara":goto Suhi_Rule_explainTop2:
27380 case 2:
27390 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,Y+120),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2. Explain for BirdseyeGrid":goto Suhi_Rule_explainTop2:
27400 case 3:
27410 No=0:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,Y+20),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3. Return to Top Screen":goto Suhi_Rule_explainTop2:
27420 end select
27430 endif
27440 else
27450 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
27460 '*******************************************************************************************************
27470 'WXGA 1200x 800 日本語
27480 '*******************************************************************************************************
27490 if ((size(0) <= 1280) and (size(1) <= 800)) then
27500 if ((y = 1) or (key$ = chr$(31))) then
27510 select case No
27520 case 0:
27530 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(x,Y+120),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:color rgb(0,0,0):locate 1,19:print "                                      ":locate 1,19:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
27540 case 1:
27550 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
27560 case 2:
27570 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
27580 end select
27590 endif
27600 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
27610 if ((y = -1) or (key$ = chr$(30))) then
27620 select case No
27630 case 0:
27640 No=2:sp_on 1,0:sp_on 0,0:sp_on 2,1:sp_on 0,0:sp_put 2,(5,Y+220),0,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                      ":locate 1,19:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
27650 case 1:
27660 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,Y+20),1,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                        ":locate 1,19:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
27670 case 2:
27680 No=1:sp_on 1,1:sp_on 1,0:sp_on 0,0:sp_on 2,0:sp_put 1,(5,Y+120),2,0:beep:gosub Suhi_Rule_Screen_Recheck:pause 200:count=count+1:locate 1,19:color rgb(0,0,0):print "                                              ":locate 1,19:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
27690 end select
27700 endif
27710 endif
27720 '*******************************************************************************************************
27730 'WXGA 1200x 800 ここまで 日本語
27740 '*******************************************************************************************************
27750 else
27760 '*******************************************************************************************************
27770 'WXGA 1200x 800 以外　ここから
27780 '*******************************************************************************************************
27790 if ((y = 1) or (key$ = chr$(31))) then
27800 select case No
27810 case 0:
27820 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バーズアイグリットの説明":goto Suhi_Rule_explainTop2:
27830 case 1:
27840 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻る":goto Suhi_Rule_explainTop2:
27850 case 2:
27860 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術のやり方を選択":goto Suhi_Rule_explainTop2:
27870 end select
27880 endif
27890 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
27900 if ((y = -1) or (key$ = chr$(30))) then
27910 select case No
27920 case 0:
27930 No=0:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術のやり方":goto Suhi_Rule_explainTop2:
27940 case 1:
27950 No=1:sp_on 2,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 2,(5,500),1,0:beep:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バーズアイグリットの説明を選択":goto Suhi_Rule_explainTop2:
27960 case 2:
27970 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 0,(5,300),2,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行く":goto Suhi_Rule_explainTop2:
27980 end select
27990 endif
28000 endif
28010 '******************************************************************************************************
28020 'WXGA 1200x 800 以外　ここまで
28030 '******************************************************************************************************
28040 endif
28050 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
28060 '*******************************************************************************************************
28070 '決定ボタンを押したときの処理　共通部分　ここから
28080 '********************************************************************************************************
28090 '********************************************************************************************************
28100 'bg:右の丸ボタン　chr$(13):Enter Key
28110 '********************************************************************************************************
28120 if ((bg = 2) or (key$ = chr$(13))) then
28130 select case No
28140 case 0:
28150 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto Suhi_Rule: ' 1.数秘ルールの説明
28160 case 1:
28170 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 20:goto BirdsEyeGrid_Explain1: '2.バーズアイグリットの説明
28180 '3:Top画面に行く
28190 case 2:
28200 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:cls 4:goto Main_Screen: '3.メイン画面に行く
28210 end select
28220 endif
28230 '********************************************************************************************************
28240 '決定ボタンを押したときの処理　共通部分　ここまで
28250 '*********************************************************************************************************
28260 if (bg2 = 2) then
28270 play "":pause 200
28280 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
28290 goto Suhi_Rule_explainTop2:
28300 endif
28310 '**********************************************************
28320 'バーズアイグリットの説明1
28330 'Help-
28340 '**********************************************************
28350 BirdsEyeGrid_Explain1:
28360 '●.初期設定
28370 cls 3:Font FONT:No=0:bg=0:key$="":bg2=0
28380 play "":'音を停める
28390 'バーズアイグリット基本チャートを表示　　ここから
28400 if ex_info$(1) <> "JP" then
28410 '英語ファイル
28420 else
28430 if ((size(0)<=1280) and (size(1)<=800)) then
28440 gload Gazo$ + Gazo_WXGA$ + "BirdsEyeGrid_Explain1_Chart_907x680_20240219.png",0,0,0
28450 else
28460 '****************************************************************************************************
28470 'WUXG(1920x1200)の時ここから
28480 '****************************************************************************************************
28490 '日本語ファイル
28500 gload Gazo$ + "BirdsEyeGrid_Explain1_Chart_20240202.png",0,0,0
28510 '****************************************************************************************************
28520 'WUXG(1920x1200)の時ここまで
28530 '****************************************************************************************************
28540 endif
28550 'バーズアイグリット基本チャートを表示　　ここまで
28560 endif
28570 'ジョイパッドの右で次へ行く
28580 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
28590 key$ = inkey$
28600 bg = strig(1)
28610 bg2 = strig(0)
28620 pause 200
28630 wend
28640 if (bg=2 or key$=chr$(13)) then
28650 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
28660 'goto バーズアイグリット説明の2番目に行く
28670 end
28680 endif
28690 if (bg2 = 2 or key$ = "") then
28700 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
28710 'goto Top画面に行く
28720 goto Main_Screen:
28730 'end
28740 endif
28750 '**********************************************************
28760 'バーズアイグリットの説明2
28770 'Help-
28780 '**********************************************************
28790 BirdsEyeGrid_Explain2:
28800 '●.初期設定
28810 cls 3:Font 48:No = 0:bg = 0:key$ = "":bg2 = 0
28820 play "":'音を停める
28830 'バーズアイグリット基本チャートを表示　　ここから
28840 if ex_info$(1) <> "JP" then
28850 '英語ファイル
28860 else
28870 '日本語ファイル
28880 '****************************************************************************************************
28890 'WUXG(1920x1200)の時ここから
28900 '****************************************************************************************************
28910 gload Gazo$ + "BirdsEyeGrid_Exaple1_Chart_20240202.png",0,0,0
28920 '****************************************************************************************************
28930 'WUXG(1920x1200)の時ここまで
28940 '****************************************************************************************************
28950 'バーズアイグリット基本チャートを表示　　ここまで
28960 endif
28970 'ジョイパッドの右で次へ行く
28980 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
28990 key$ = inkey$
29000 bg = strig(1)
29010 bg2 = strig(0)
29020 pause 200
29030 wend
29040 if (bg = 2 or key$ = chr$(13)) then
29050 'ジョイパッドの右を押した時、もしくはEnterを押したときの処理
29060 'goto バーズアイグリット説明の3番目に行く
29070 end
29080 endif
29090 if (bg2 = 2 or key$ = "") then
29100 'ジョイパッドの左を押した時、もしくはSpaceを押したときの処理
29110 'goto Top画面に行く
29120 goto Main_Screen:
29130 'end
29140 endif
29150 '**********************************************************
29160 '数秘術占い　トップ画面
29170 Kabara_TopScreen:
29180 cls 3:play ""
29190 if ((size(0)<=1280) and (size(1)<=800)) then
29200 '***********************************************************
29210 '1280x800ここから
29220 '***********************************************************
29230 gload Gazo$ + Gazo_WXGA$ + "Kabara_TopScreen_853x640_20240223.png",0,0,0
29240 '************************************************************
29250 '1280x800ここまで
29260 '************************************************************
29270 else
29280 '****************************************************************************************************
29290 'WUXG(1920x1200)の時ここから
29300 '****************************************************************************************************
29310 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
29320 gload Gazo$ + "downscreen.png",0,0,800
29330 '****************************************************************************************************
29340 'WUXG(1920x1200)の時ここまで
29350 '****************************************************************************************************
29360 endif
29370 play Voice$ + "KabaraTop_Selection_20230721.mp3"
29380 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
29390 init"kb:4":No=0
29400 if ex_info$(1)<>"JP" then
29410 color rgb(255,255,255)
29420 print chr$(13)+chr$(13)+chr$(13)
29430 print "Please select a number" + chr$(13)
29440 print " :1.Numerology" + chr$(13)
29450 print " :2.Bird's Eye Grid" + chr$(13)
29460 print " :3.Compatibility Divination" + chr$(13)
29470 print " :4.Return to Top Screen" + chr$(13)
29480 color rgb(0,0,0)
29490 locate 1,15:print "1. Select Numerology"
29500 else
29510 if ((size(0)<=1280) and (size(1)<=800)) then
29520 '***************************************************************************************************
29530 '1280 x800 ここから
29540 '***************************************************************************************************
29550 color rgb(255,255,255):font FONT
29560 locate 1,5
29570 print "番号を選んでください" + chr$(13)
29580 locate 1,7
29590 print " :1.数秘術占い" + chr$(13)
29600 locate 1,10
29610 print " :2.バーズアイグリット" + chr$(13)
29620 locate 1,13
29630 print " :3.相性占い" + chr$(13)
29640 locate 1,16
29650 print " :4.トップ画面に戻る" + chr$(13)
29660 color rgb(0,0,0)
29670 locate 1,18:print "1.数秘術占いを選択"
29680 '***************************************************************************************************
29690 '1280 x800 ここまで
29700 '***************************************************************************************************
29710 else
29720 '****************************************************************************************************
29730 'WUXG(1920x1200)の時ここから
29740 '****************************************************************************************************
29750 color rgb(255,255,255):font FONT
29760 print chr$(13)+chr$(13)+chr$(13)
29770 print "番号を選んでください" + chr$(13)
29780 print " :1.数秘術占い" + chr$(13)
29790 print " :2.バーズアイグリット" + chr$(13)
29800 print " :3.相性占い" + chr$(13)
29810 print " :4.トップ画面に戻る" + chr$(13)
29820 color rgb(0,0,0)
29830 locate 1,15:print "1.数秘術占いを選択"
29840 '****************************************************************************************************
29850 'WUXG(1920x1200)の時ここまで
29860 '****************************************************************************************************
29870 endif
29880 endif
29890 Kabara_TopScreen2:
29900 y = 0:bg = 0:key$ = "":bg2 = 0
29910 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
29920 key$ = inkey$
29930 bg = strig(1)
29940 y = stick(1)
29950 bg2 = strig(0)
29960 pause 200
29970 wend
29980 '選択ボタン
29990 'カーソル下 　と　ジョイパッド　の下
30000 if ex_info$(1)<>"JP" then
30010 if ((y = 1) or (key$ = chr$(31))) then
30020 select case No
30030 case 2:
30040 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.Return to Top Screen":goto Kabara_TopScreen2:
30050 case 3:
30060 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.Select Numerology":goto Kabara_TopScreen2:
30070 case 0:
30080 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.Select Bird's Eye Grid":goto Kabara_TopScreen2:
30090 case 1:
30100 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.Select Compatibility Divination":goto Kabara_TopScreen2:
30110 end select
30120 endif
30130 else
30140 if ((size(0) <= 1280) and (size(1) <= 800)) then
30150 '******************************************************************************************************
30160 '1280x800ここから
30170 '*****************************************************************************************************
30180 if ((y = 1) or (key$ = chr$(31))) then
30190 select case No
30200 case 2:
30210 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                    ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30220 case 3:
30230 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0): locate 1,18:print"                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30240 case 0:
30250 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30260 case 1:
30270 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                              ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
30280 end select
30290 endif
30300 'カーソル　上  or  ジョイパッド　上
30310 if ((y=-1) or (key$=chr$(30))) then
30320 select case No
30330 case 0:
30340 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(X,Y+320),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30350 case 1:
30360 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(X,Y+20),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30370 case 2:
30380 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(X,Y+120),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                      ":locate 1,18:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30390 case 3:
30400 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(X,Y+220),0,0:beep:gosub Kabara_TopScreen_Recheck:pause 200:color rgb(0,0,0):locate 1,18:print "                                       ":locate 1,18:print"3.相性占いを選択":goto Kabara_TopScreen2:
30410 end select
30420 endif
30430 '*****************************************************************************************************
30440 '1280 x800 ここまで
30450 '******************************************************************************************************
30460 else
30470 '******************************************************************************************************
30480 '1920x1280 ここから
30490 '******************************************************************************************************
30500 if ((y = 1) or (key$ = chr$(31))) then
30510 select case No
30520 case 2:
30530 No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30540 case 3:
30550 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30560 case 0:
30570 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30580 case 1:
30590 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                              ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
30600 end select
30610 endif
30620 'カーソル　上  or  ジョイパッド　上
30630 if ((y=-1) or (key$=chr$(30))) then
30640 select case No
30650 case 0:
30660 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
30670 case 1:
30680 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘占いを選択":goto Kabara_TopScreen2:
30690 case 2:
30700 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:beep:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
30710 case 3:
30720 No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),0,0:beep:pause 200:locate 1,15:print "                                       ":locate 1,15:print"3.相性占いを選択":goto Kabara_TopScreen2:
30730 end select
30740 endif
30750 endif
30760 '******************************************************************************************************
30770 '1920x 1280 ここまで
30780 '******************************************************************************************************
30790 endif
30800 '決定ボタン
30810 'ジョイパッドの右　or  Enter key
30820 if ((bg = 2) or (key$ = chr$(13))) then
30830 select case No
30840 case 0:
30850 '1.数秘術占い
30860 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
30870 case 3:
30880 '4.メイン画面にいく
30890 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:goto Main_Screen:
30900 case 1:
30910 '2.バースアイグリッド
30920 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_name1_Birdseye:
30930 case 2:
30940 '3.相性占い
30950 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Kabara_Aishou_Top:
30960 end select
30970 endif
30980 if (bg2 = 2) then
30990 play "":pause 200
31000 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
31010 goto Kabara_TopScreen2:
31020 endif
31030 '1.バースアイグリット　名入力
31040 Inputname1:
31050 cls 3:init"kb:4":
31060 '****************************************************************************************************
31070 'WUXG(1920x1200)の時ここから
31080 '****************************************************************************************************
31090 font 48
31100 bg=0:key$="":y=0:No=-1:name1$="":i=1
31110 gload Gazo$ + "Selection.png",1,10,100
31120 'Line 1:☓
31130 'A:選択肢
31140 sp_def 15,(50,250),16,16
31150 'B:選択肢
31160 sp_def 16,(200,250),16,16
31170 'C:選択肢
31180 sp_def 17,(350,250),16,16
31190 'D:選択肢
31200 sp_def 18,(500,250),16,16
31210 'E:選択肢
31220 sp_def 19,(630,250),16,16
31230 'F:選択肢
31240 sp_def 20,(780,250),16,16
31250 'G:選択肢
31260 sp_def 21,(930,250),16,16
31270 'Line 2:☓
31280 'H:選択肢
31290 sp_def 22,(50,345),16,16
31300 'I:選択肢
31310 sp_def 23,(200,345),16,16
31320 'J:選択肢
31330 sp_def 24,(350,345),16,16
31340 'K:選択肢
31350 sp_def 25,(500,345),16,16
31360 'L:選択肢
31370 sp_def 26,(630,345),16,16
31380 'M:選択肢
31390 sp_def 27,(780,345),16,16
31400 'N:選択肢
31410 sp_def 28,(930,345),16,16
31420 'Line 3:☓
31430 'O:選択肢
31440 sp_def 29,(50,440),16,16
31450 'P:選択肢
31460 sp_def 30,(200,440),16,16
31470 'Q:選択肢
31480 sp_def 31,(350,440),16,16
31490 'R:選択肢
31500 sp_def 32,(500,440),16,16
31510 'S:選択肢
31520 sp_def 33,(630,440),16,16
31530 'T:選択肢
31540 sp_def 34,(780,440),16,16
31550 'U:選択肢
31560 sp_def 35,(930,440),16,16
31570 'Line 4:◯
31580 'V:選択肢
31590 sp_def 36,(50,535),16,16
31600 'W:選択肢
31610 sp_def 37,(200,535),16,16
31620 'X:選択肢
31630 sp_def 38,(350,535),16,16
31640 'Y:選択肢
31650 sp_def 39,(500,535),16,16
31660 'Z:選択肢
31670 sp_def 40,(630,535),16,16
31680 'Ok:選択肢
31690 sp_def 41,(780,535),16,16
31700 'sp_def 42,(930,535),16,16
31710 'Line 1
31720 'A
31730 sp_on 15,0
31740 'B
31750 sp_on 16,0
31760 'C
31770 sp_on 17,0
31780 'D
31790 sp_on 18,0
31800 'E
31810 sp_on 19,0
31820 'F
31830 sp_on 20,0
31840 'G
31850 sp_on 21,0
31860 'Line 1
31870 'Line 2
31880 'H
31890 sp_on 22,0
31900 'I
31910 sp_on 23,0
31920 'J
31930 sp_on 24,0
31940 'K
31950 sp_on 25,0
31960 'L
31970 sp_on 26,0
31980 'M
31990 sp_on 27,0
32000 'N
32010 sp_on 28,0
32020 'Line 2
32030 'Line 3
32040 'O
32050 sp_on 29,0
32060 'P
32070 sp_on 30,0
32080 'Q
32090 sp_on 31,0
32100 'R
32110 sp_on 32,0
32120 'S
32130 sp_on 33,0
32140 'T
32150 sp_on 34,0
32160 'U
32170 sp_on 35,0
32180 'Line 3
32190 'Line 4
32200 'V
32210 sp_on 36,0
32220 'W
32230 sp_on 37,0
32240 'X
32250 sp_on 38,0
32260 'Y
32270 sp_on 39,0
32280 'Z
32290 sp_on 40,0
32300 'Ok
32310 sp_on 41,1
32320 '****************************************************************************************************
32330 'WUXG(1920x1200)の時ここまで
32340 '****************************************************************************************************
32350 'Line 4
32360 'sp_on 42,1
32370 'Line 1
32380 'sp_put 15,(50,250),0,0
32390 'sp_put 16,(200,250),0,0
32400 'sp_put 17,(350,250),0,0
32410 'sp_put 18,(500,250),0,0
32420 'sp_put 19,(630,250),0,0
32430 'sp_put 20,(780,250),0,0
32440 'sp_put 21,(930,250),0,0
32450 'Line 2
32460 'sp_put 22,(50,345),0,0
32470 'sp_put 23,(200,345),0,0
32480 'sp_put 24,(350,345),0,0
32490 'sp_put 25,(500,345),0,0
32500 'sp_put 26,(630,345),0,0
32510 'sp_put 27,(780,345),0,0
32520 'sp_put 28,(930,345),0,0
32530 'Line 3
32540 'sp_put 29,(50,440),0,0
32550 'sp_put 30,(200,440),0,0
32560 'sp_put 31,(350,440),0,0
32570 'sp_put 32,(500,440),0,0
32580 'sp_put 33,(630,440),0,0
32590 'sp_put 34,(780,440),0,0
32600 'sp_put 35,(930,440),0,0
32610 'Line 4
32620 'sp_put 36,(50,535),0,0
32630 'sp_put 37,(200,535),0,0
32640 'sp_put 38,(350,535),0,0
32650 'sp_put 39,(500,535),0,0
32660 'sp_put 40,(630,535),0,0
32670 sp_put 41,(780,535),0,0
32680 'sp_put 42,(930,536),0,0
32690 gload Gazo$ + "Screen1.png",0,0,0
32700 color rgb(255,255,255)
32710 locate 1,3
32720 print "名前の姓をアルファベットで入力してください"
32730 locate 1,5
32740 print " A  B  C  D  E  F  G"
32750 locate 1,7
32760 print " H  I  J  K  L  M  N"
32770 locate 1,9
32780 print " O  P  Q  R  S  T  U"
32790 locate 1,11
32800 print " V  W  X  Y  Z":locate 17,11:color rgb(255,0,0):print "Ok"
32810 locate 1,15:color rgb(0,0,0)
32820 print "名前の姓:" + name1$
32830 select_name1:
32840 bg = 0:y = 0:key$ = "":y2=0:init"kb:4":
32850 '有効ボタン
32860 '1.決定ボタン(bg:2)
32870 '2.Enter Key$:chr$(13)
32880 '3.カーソル上 (chr$(31))
32890 '4.カーソル　左 (chr$(29))
32900 '5.ジョイパッド　上 (y:1)
32910 '6:ジョイパッド　左 (y2:-1)
32920 '7:ジョイパッド　下 (y:-1)
32930 while ((bg <> 2) and (key$ <> chr$(13)) and (y <> -1) and (y <> 1) and (key$ <> chr$(31)) and (y2 <> -1) and (key$ <> chr$(29)))
32940 key$ = inkey$
32950 'ジョイパッドの決定:bg
32960 bg = strig(1)
32970 y = stick(1)
32980 y2 = stick(0)
32990 pause 200
33000 wend
33010 '====================================
33020 'Birds Eye Grid 名前入力
33030 '入力スタイル　アルファベット入力
33040 'sp_on:　スプライトのオンオフ
33050 'sp_put :表示位置
33060 'No:ボタン番号
33070 '====================================
33080 'カーソルで下に行く
33090 if ((y=-1) or (key$=chr$(31))) then
33100 select case No
33110 '1.Ok ボタン
33120 'sp_on スプライトのオンオフ
33130 'sp_put スプライトを表示
33140 case -1:
33150 '1.アルファベット　入力ボタン
33160 '実装未完全なので終了
33170 'Ok → T ○ :No:20=T
33180 No=20:sp_on 41,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
33190 'T  → M ○
33200 case 20:
33210 No = 13:sp_on 34,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
33220 'M  →　F ○
33230 case 13:
33240 No = 6:sp_on 27,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
33250 'F  → Ok
33260 case 6:
33270 No=-1:sp_on 20,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
33280 end select
33290 endif
33300 '2.決定ボタン
33310 if ((key$ = chr$(13)) OR  (bg = 2)) then
33320 select case No
33330 case -1:
33340 'スプライトをOFFにする
33350 sp_on 41,0
33360 end select
33370 endif
33380 '3.カーソル　左
33390 if (key$ = chr$(29) or (y2 =-1)) then
33400 select case No
33410 'Line 4
33420 'Line 4
33430 '1.
33440 'Z:-1 :Ok ボタン
33450 'Ok → Z
33460 case -1:
33470 'Ok →　Z
33480 'Ok ボタン OFF,Z Button ON
33490 'No=26:Z
33500 No = 26:sp_on 41,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
33510 '2.
33520 '26:Zボタン Z→ Y
33530 case 26:
33540 No=25:sp_on 40,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
33550 '3.
33560 '25:Yボタン  Y → X
33570 case 25:
33580 No=24:sp_on 39,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
33590 '4
33600 '24:Xボタン X → W
33610 case 24:
33620 No=23:sp_on 38,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
33630 '23:Wボタン X → W
33640 '5
33650 case 23:
33660 '22:Vボタン W → V
33670 No=22:sp_on 37,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
33680 case 22:
33690 '-1:V→ Ok
33700 No=-1:sp_on 36,0:sp_on 41,1:sp_put 41,(780,535),0,0:goto select_name1:
33710 'Line 3
33720 case 20:
33730 '33:T34  → S:33 :◯
33740 No=19:sp_on 34,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
33750 case 19:
33760 '32:S:33 → R:32 :◯
33770 No=18:sp_on 33,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
33780 case 18:
33790 '31:R:32 → Q:31 :◯
33800 No=17:sp_on 32,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
33810 '30:O → P :◯
33820 case 17:
33830 '30:Q:31 → P:30 :◯
33840 No=16:sp_on 31,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
33850 case 16:
33860 '29:P:30 → O:29 :◯
33870 No=15:sp_on 30,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
33880 case 15:
33890 '28:O:29 → U:21  :◯
33900 'O:OFF,U:ON
33910 No=21:sp_on 29,0:sp_on 35,1:sp_put 35,(930,440),0,0:goto select_name1:
33920 '27:U:21 → T:20  :◯
33930 case 21:
33940 'U:OFF:T:ON
33950 No=20:sp_on 35,0:sp_on  34,1:sp_put 34,(780,440),0,0:goto select_name1:
33960 'Line 2
33970 '26:M:13 → L:12 : ○
33980 case 13:
33990 'M:OFF,L:ON
34000 No=12:sp_on 27,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
34010 '25:L:12 → K:11 : ○
34020 case 12:
34030 No=11:sp_on 26,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
34040 '24:K:11 → J:10 : ○
34050 case 11:
34060 No=10:sp_on 25,0:sp_on 24,1:sp_put 24,(350,345),0,0:goto select_name1:
34070 '23:J:10 → I:9  : ○
34080 case 10:
34090 No=9:sp_on 24,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
34100 '22:I:9 → H:8    :○
34110 case 9:
34120 No=8:sp_on 23,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
34130 '21:H:8 → N:14:   :○
34140 case 8:
34150 No=14:sp_on 22,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
34160 '20:N:14 → M:13:   :○
34170 case 14:
34180 No=6:sp_on 28,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
34190 '●.Line 1:
34200 '19:F:20 → E:19 : ☓
34210 'F:OFF,E:ON
34220 case 6:
34230 No = 5:sp_on 20,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
34240 '18:E → D
34250 'E:OFF,D:ON
34260 case 5:
34270 No=4:sp_on 19,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
34280 '17:D → C
34290 'D:OFF,C:ON
34300 case 4:
34310 No=3:sp_on 18,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
34320 case 3:
34330 No=2:sp_on 17,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
34340 case 2:
34350 No=1:sp_on 16,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
34360 case 1:
34370 No=7:sp_on 15,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
34380 case 7:
34390 No=6:sp_on 21,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
34400 end select
34410 endif
34420 '上から下の方向
34430 if ((key$ = chr$(31)) or  (y = 1)) then
34440 select case No
34450 '●.1
34460 '1:A→H
34470 case 1:
34480 No=8:sp_on 15,0:sp_on 22,1:sp_put 22,(50,345),0,0:goto select_name1:
34490 '2:H→O
34500 case 8:
34510 No=15:sp_on 22,0:sp_on 29,1:sp_put 29,(50,440),0,0:goto select_name1:
34520 '3:O→V
34530 case 15:
34540 No=22:sp_on 29,0:sp_on 36,1:sp_put 36,(50,535),0,0:goto select_name1:
34550 '4:V→A
34560 case 22:
34570 No=1:sp_on 36,0:sp_on 15,1:sp_put 15,(50,250),0,0:goto select_name1:
34580 '●.2
34590 '5.B→I
34600 case 2:
34610 No=9:sp_on 16,0:sp_on 23,1:sp_put 23,(200,345),0,0:goto select_name1:
34620 '6.I→P
34630 case 9:
34640 No=16:sp_on 23,0:sp_on 30,1:sp_put 30,(200,440),0,0:goto select_name1:
34650 '7.P→W
34660 case 16:
34670 No=23:sp_on 30,0:sp_on 37,1:sp_put 37,(200,535),0,0:goto select_name1:
34680 '8.W→B
34690 case 23:
34700 No=2:sp_on 37,0:sp_on 16,1:sp_put 16,(200,250),0,0:goto select_name1:
34710 '●.3
34720 '9.C→J
34730 case 3:
34740 No=10:sp_on 17,0:sp_on 24,1:Sp_put 24,(350,345),0,0:goto select_name1:
34750 '10.J→Q
34760 case 10:
34770 No=17:sp_on 24,0:sp_on 31,1:sp_put 31,(350,440),0,0:goto select_name1:
34780 '11.Q→X
34790 case 17:
34800 No=24:sp_on 31,0:sp_on 38,1:sp_put 38,(350,535),0,0:goto select_name1:
34810 '12.X→C
34820 case 24:
34830 No=3:sp_on 38,0:sp_on 17,1:sp_put 17,(350,250),0,0:goto select_name1:
34840 '●.4
34850 '13.D→K
34860 case 4:
34870 No=11:sp_on 18,0:sp_on 25,1:sp_put 25,(500,345),0,0:goto select_name1:
34880 '14.K→R
34890 case 11:
34900 No=18:sp_on 25,0:sp_on 32,1:sp_put 32,(500,440),0,0:goto select_name1:
34910 '15.R→Y
34920 case 18:
34930 No=25:sp_on 32,0:sp_on 39,1:sp_put 39,(500,535),0,0:goto select_name1:
34940 '16.Y→D
34950 case 25:
34960 No=4:sp_on 39,0:sp_on 18,1:sp_put 18,(500,250),0,0:goto select_name1:
34970 '●.5
34980 '17.E→L
34990 case 5:
35000 No=12:sp_on 19,0:sp_on 26,1:sp_put 26,(630,345),0,0:goto select_name1:
35010 '18.L→S
35020 case 12:
35030 No=19:sp_on 26,0:sp_on 33,1:sp_put 33,(630,440),0,0:goto select_name1:
35040 '19.S→Z
35050 case 19:
35060 No=26:sp_on 33,0:sp_on 40,1:sp_put 40,(630,535),0,0:goto select_name1:
35070 '20.Z→E
35080 case 26:
35090 No=5:sp_on 40,0:sp_on 19,1:sp_put 19,(630,250),0,0:goto select_name1:
35100 '●.6
35110 '21.F→M
35120 case 6:
35130 No=13:sp_on 20,0:sp_on 27,1:sp_put 27,(780,345),0,0:goto select_name1:
35140 '22.M→T
35150 case 13:
35160 No=20:sp_on 27,0:sp_on 34,1:sp_put 34,(780,440),0,0:goto select_name1:
35170 '23.T→Ok
35180 case 20:
35190 No=-1:sp_on 34,0:sp_on 41,1:sp_PUT 41,(780,535),0,0:goto select_name1:
35200 '24.Ok→F
35210 case -1:
35220 No=6:sp_on 41,0:sp_on 20,1:sp_put 20,(780,250),0,0:goto select_name1:
35230 '●.7
35240 '25.G→N
35250 case 7:
35260 No=14:sp_on 21,0:sp_on 28,1:sp_put 28,(930,345),0,0:goto select_name1:
35270 '26.N→U
35280 case 14:
35290 No=21:sp_on 28,0:sp_on 35,1:sp_PUT 35,(930,440),0,0:goto select_name1:
35300 '27.U→G
35310 case 21:
35320 No=7:sp_on 35,0:sp_on 21,1:sp_put 21,(930,250),0,0:goto select_name1:
35330 end select
35340 endif
35350 '決定ボタン　で名前の姓に文字を追加。
35360 if (key$ = chr$(13) or bg = 2) then
35370 select case No
35380 'Okボタン
35390 case -1:
35400 goto Inputname2:
35410 'Aの文字
35420 case 1:
35430 'if len(n$)=0 then
35440 n$=String$(i,"A"):name1$=n$:locate 1,15:print "                       ":locate 1,15:print "名前の姓:" +name1$:i=i+1:
35450 'else
35460 'name1$=Mid$("A",i,i+1):locate 1,15:print "                                      ":locate 1,15:print "名前の姓:"+name1$:i=i+1
35470 'endif
35480 goto select_name1:
35490 case 2:
35500 n$=String$(i,"B"):name1$=n$:locate 1,15:print "                                     ":locate 1,15:print "名前の姓:"+name1$:i=i+1:goto select_name1:
35510 end select
35520 endif
35530 Input_name1_Birdseye:
35540 cls 3:init "kb:2":play ""
35550 gload Gazo$ + "Input_Birtheye2.png",0,0,0
35560 if ex_info$(1)<>"JP" then
35570 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
35580 color rgb(0,0,255)
35590 locate 1,2:print "Please enter your name in English"
35600 color rgb(0,0,0)
35610 locate 1,5:Input "Name (Surname):",name1$
35620 else
35630 '****************************************************************************************************
35640 '共通部分　ここから
35650 '****************************************************************************************************
35660 play Voice$ + "Birdseyegrid_InputName1_20231120.mp3"
35670 color rgb(0,0,255)
35680 locate 1,2:print "名前をアルファベットで入れてください"
35690 color rgb(0,0,0)
35700 locate 1,5:Input "名前（姓の部分）:",name1$
35710 '****************************************************************************************************
35720 '共通部分　ここまで
35730 '****************************************************************************************************
35740 endif
35750 '27.U→G
35760 'locate 1,5:print "Hit any key"
35770 n1 = len(name1$)
35780 if (n1 < 11) then
35790 for i=1 to n1
35800 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
35810 next i
35820 endif
35830 goto Inputname2:
35840 '2.グリッドアイ　姓の入力
35850 'end
35860 Inputname2:
35870 cls 3:init"kb:2":font 48:play ""
35880 gload Gazo$ + "Input_Birtheye1.png",0,0,0
35890 if ex_info$(1)<>"JP" then
35900 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
35910 color rgb(0,0,255)
35920 locate 1,2:print "Please enter your name in English"
35930 color rgb(0,0,0)
35940 locate 1,5:Input "Name (First name):",name2$
35950 n2 = len(name2$)
35960 for i=1 to n2
35970 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
35980 next i
35990 else
36000 '****************************************************************************************************
36010 '共通部分　ここから
36020 '****************************************************************************************************
36030 play Voice$ + "Birdseyegrid_InputName2_20231120.mp3"
36040 color rgb(0,0,255)
36050 locate 1,2:print "名前をアルファベットで入れてください"
36060 color rgb(0,0,0)
36070 locate 1,5:Input "名前(名の部分):",name2$
36080 n2 = len(name2$)
36090 for i=1 to n2
36100 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
36110 next i
36120 '****************************************************************************************************
36130 '共通部分　ここまで
36140 '****************************************************************************************************
36150 endif
36160 '****************************************************************************************************
36170 '計算領域　ここから
36180 '****************************************************************************************************
36190 Complate:
36200 'name1
36210 for i=0 to 25
36220 for n=1 to len(name1$)
36230 if (buf_chart$(i,0) = buf_name1$(n-1)) then
36240 b = val(buf_chart$(i,1))
36250 buffer(b-1) = buffer(b-1) + 1
36260 endif
36270 next n
36280 next i
36290 'name2
36300 for i=0 to 25
36310 for n=1 to len(name2$)
36320 if (buf_chart$(i,0) = buf_name2$(n-1)) then
36330 c = val(buf_chart$(i,1))
36340 buffer(c - 1) = buffer(c - 1) + 1
36350 endif
36360 next n
36370 next i
36380 '****************************************************************************************************
36390 '計算領域 ここまで
36400 '****************************************************************************************************
36410 '****************************************************************************************************
36420 '結果表示領域
36430 '****************************************************************************************************
36440 Result_Birtheye1:
36450 cls 3:init"kb:4":No=0:play "":'音を止める
36460 '****************************************************************************************************
36470 '1280x800　ここから
36480 '****************************************************************************************************
36490 if ((size(0) <= 1280) and (size(1) <= 800)) then
36500 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x640_20240223.png",0,0,0
36510 '****************************************************************************************************
36520 '1280x800　ここまで
36530 '****************************************************************************************************
36540 else
36550 '****************************************************************************************************
36560 '1920x1280　ここから
36570 '****************************************************************************************************
36580 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
36590 gload Gazo$ + "downscreen.png",0,0,800
36600 '****************************************************************************************************
36610 '1920x1280　ここまで
36620 '****************************************************************************************************
36630 endif
36640 play Voice$ + "Result_Birdseyegrid_20231120.mp3"
36650 color rgb(255,255,255)
36660 '1の表示
36670 locate 3,14:print buffer(0);
36680 '2の表示
36690 locate 3,9:print buffer(1);
36700 '3の表示
36710 locate 3,5:print buffer(2);
36720 '4の表示
36730 locate 10,14:print buffer(3);
36740 '5の表示
36750 locate 10,9:print buffer(4);
36760 '6の表示
36770 locate 10,5:print buffer(5);
36780 '7の表示
36790 locate 15,14:print buffer(6);
36800 '8の表示
36810 locate 15,9:print buffer(7);
36820 '9の表示
36830 locate 15,5:print buffer(8);
36840 'name を大文字に変換
36850 locate 5,3:print ucase$(name1$ + name2$)
36860 color rgb(0,0,0)
36870 'bg:右のボタン  ,bg2:左のボタン
36880 if ex_info$(1)<>"JP" then
36890 color rgb(255,255,255)
36900 print "Left circle: Main Screen, Right circle: Open Menu"
36910 else
36920 locate 0,15:print "左の丸:メイン画面,右の丸：メニューを開く"
36930 endif
36940 bg=0:key$="":bg2=0
36950 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
36960 'Enterと決定ボタン
36970 key$ = inkey$
36980 '右ボタン:1
36990 bg = strig(1)
37000 '左の丸ボタン:0
37010 bg2=strig(0)
37020 pause 200
37030 wend
37040 if ((bg=2) or (key$=chr$(13))) then
37050 'データーをクリアしてトップ画面に行く
37060 'for i=0 to 8
37070 'buffer(i)=0
37080 'next i
37090 'for n=0 to 9
37100 'buf_name1$(n) = ""
37110 'buf_name2$(n) = ""
37120 'next n
37130 'Topに行く
37140 'goto Main_Screen:
37150 'メニューを開く
37160 'goto BirdsEye_Result2:
37170 'Menu(ui_select) リストに飛ぶ
37180 goto Result_Birtheye_List1:
37190 endif
37200 if (bg2=2) then
37210 'データーをクリアする
37220 for i=0 to 8
37230 buffer(i)=0
37240 next i
37250 for n=0 to 9
37260 buf_name1$(n)=""
37270 buf_name2$(n)=""
37280 next n
37290 goto Main_Screen:
37300 endif
37310 'goto Result_Birtheye1:
37320 'Result_Birtheye2:
37330 'cls 3:color rgb(255,255,255)
37340 'end
37350 'Memory 消去
37360 '****************************************************************************************************
37370 '結果表示領域　ここまで
37380 '****************************************************************************************************
37390 '横のフォーカスライン
37400 BirdsEye_Result2:
37410 cls 3:init"kb:4":No = 0:bg = 0:key$ = "":bg2 = 0
37420 if ((buffer(2) > 0) and (buffer(5) > 0) and  (buffer(8) >  0)) then
37430 Forcus1_buffer$(2)="○"
37440 else
37450 Forcus1_buffer$(2)="☓"
37460 endif
37470 if ((buffer(1) > 0 ) and  (buffer(4) > 0) and   (buffer(7) > 0)) then
37480 Forcus1_buffer$(1)="○"
37490 else
37500 Forcus1_buffer$(1) = "☓"
37510 endif
37520 if ((buffer(0) > 0) and (buffer(3) > 0) and (buffer(6) > 0)) then
37530 Forcus1_buffer$(0)="○"
37540 else
37550 Forcus1_buffer$(0)="☓"
37560 endif
37570 gload Gazo$ + "Screen1.png",0,0,0
37580 if ex_info$(1)<>"JP" then
37590 color rgb(255,0,0):
37600 locate 1,1
37610 print "Bird's Eye Grid (Focus Line 1)"
37620 color rgb(255,255,255)
37630 locate 1,3:
37640 print "●. Horizontal Focus Line"
37650 locate 1,5
37660 print "1. Sharp Line:"+Forcus1_buffer$(2)
37670 locate 1,7
37680 print "2. Mediator Line:"+Forcus1_buffer$(1)
37690 locate 1,9
37700 print "3. Steady Line:"+Forcus1_buffer$(0)
37710 color rgb(0,0,0)
37720 locate 0,15:print "Right circle: Next, Left circle: Diagnose again "
37730 else
37740 color rgb(255,0,0):
37750 locate 1,1
37760 print "バーズアイグリッド(フォーカスライン1)"
37770 color rgb(255,255,255)
37780 locate 1,3:
37790 print "●.横のフォーカスライン"
37800 locate 1,5
37810 print "1.切れ者ライン:"+Forcus1_buffer$(2)
37820 locate 1,7
37830 print "2.調停者ライン:"+Forcus1_buffer$(1)
37840 locate 1,9
37850 print "3.しっかり者ライン:"+Forcus1_buffer$(0)
37860 color rgb(0,0,0)
37870 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
37880 endif
37890 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2 )
37900 key$ = inkey$
37910 bg = strig(1)
37920 bg2 = strig(0)
37930 pause 200
37940 wend
37950 if ((bg=2) or (key$=chr$(13))) then
37960 goto BirdsEye_Result3:
37970 endif
37980 if (bg2=2) then
37990 for i=0 to 8
38000 buffer(i)=0
38010 next i
38020 goto Main_Screen:
38030 endif
38040 BirdsEye_Result3:
38050 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
38060 if ((buffer(2) > 0) and (buffer(1) > 0) and  (buffer(0) >  0)) then
38070 Forcus2_buffer$(2)="○"
38080 else
38090 Forcus2_buffer$(2)="☓"
38100 endif
38110 if ((buffer(5) > 0 ) and  (buffer(4) > 0) and   (buffer(3) > 0)) then
38120 Forcus2_buffer$(1)="○"
38130 else
38140 Forcus2_buffer$(1) = "☓"
38150 endif
38160 if ((buffer(8) > 0) and (buffer(7) > 0) and (buffer(6) > 0)) then
38170 Forcus2_buffer$(0)="○"
38180 else
38190 Forcus2_buffer$(0)="☓"
38200 endif
38210 gload Gazo$ + "Screen1.png",0,0,0
38220 if ex_info$(1)<>"JP" then
38230 color rgb(255,0,0):
38240 locate 1,1
38250 print "Bird's Eye Grid (Focus Line 2)"
38260 color rgb(255,255,255)
38270 locate 1,3
38280 print "●. Vertical Focus Line"
38290 locate 1,5
38300 print "1. Expresser Line:" + Forcus2_buffer$(2)
38310 locate 1,7
38320 print "2. Commander Line:" + Forcus2_buffer$(1)
38330 locate 1,9
38340 print "3. Leader Line:" + Forcus2_buffer$(0)
38350 color rgb(0,0,0)
38360 locate 0,15:print "Right circle: Next, Left circle: Retest "
38370 else
38380 '****************************************************************************************************
38390 'WUXG(1920x1200)の時ここから
38400 '****************************************************************************************************
38410 color rgb(255,0,0):
38420 locate 1,1
38430 print "バーズアイグリッド(フォーカスライン2)"
38440 color rgb(255,255,255)
38450 locate 1,3
38460 print "●.縦のフォーカスライン"
38470 locate 1,5
38480 print "1.表現者ライン:" + Forcus2_buffer$(2)
38490 locate 1,7
38500 print "2.司令塔ライン:" + Forcus2_buffer$(1)
38510 locate 1,9
38520 print "3.指導者ライン:" + Forcus2_buffer$(0)
38530 color rgb(0,0,0)
38540 locate 0,15:print "右の丸:次へ,左の丸：もう一度診断 "
38550 '****************************************************************************************************
38560 'WUXG(1920x1200)の時ここから
38570 '****************************************************************************************************
38580 endif
38590 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
38600 key$ = inkey$
38610 bg = strig(1)
38620 bg2 = strig(0)
38630 pause 200
38640 wend
38650 if ((bg = 2) or (key$ = chr$(13))) then
38660 goto BirdsEye_Result4:
38670 endif
38680 if (bg2=2) then
38690 for i=0 to 8
38700 buffer(i)=0
38710 next i
38720 goto Main_Screen:
38730 endif
38740 BirdsEye_Result4:
38750 cls 3:init"kb:4":bg=0:bg2=0:key$="":No=0
38760 if ((buffer(0) > 0) and (buffer(4) > 0) and  (buffer(8) >  0)) then
38770 Forcus3_buffer$(1) = "○"
38780 else
38790 Forcus3_buffer$(1) = "☓"
38800 endif
38810 if ((buffer(2) > 0 ) and  (buffer(4) > 0) and   (buffer(6) > 0)) then
38820 Forcus3_buffer$(0) = "○"
38830 else
38840 Forcus3_buffer$(0) = "☓"
38850 endif
38860 gload Gazo$ + "Screen1.png",0,0,0
38870 if ex_info$(1)<>"JP" then
38880 color rgb(255,0,0):
38890 locate 1,1
38900 print "Bird's Eye Grid (Focus Line 3)"
38910 color rgb(255,255,255)
38920 locate 1,3:
38930 print "●. Diagonal Focus Line"
38940 locate 1,5
38950 print "1. Success Line:"+Forcus3_buffer$(1)
38960 locate 1,7
38970 print "2. Celebrity Line:"+Forcus3_buffer$(0)
38980 color rgb(0,0,0)
38990 locate 0,15:print "Right circle: Top Menu, Left circle: Top Diagnosis"
39000 else
39010 '****************************************************************************************************
39020 'WUXG(1920x1200)の時ここから
39030 '****************************************************************************************************
39040 color rgb(255,0,0):
39050 locate 1,1
39060 print "バーズアイグリッド(フォーカスライン3)"
39070 color rgb(255,255,255)
39080 locate 1,3:
39090 print "●.斜めのフォーカスライン"
39100 locate 1,5
39110 print "1.成功者ライン:"+Forcus3_buffer$(1)
39120 locate 1,7
39130 print "2.セレブライン:"+Forcus3_buffer$(0)
39140 color rgb(0,0,0)
39150 locate 0,15:print "右の丸:トップメニュー,左の丸：診断トップ "
39160 '*************************************************************************************************
39170 'WUXG(1920x1200)の時ここまで
39180 '*************************************************************************************************
39190 endif
39200 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
39210 key$ = inkey$
39220 bg = strig(1)
39230 bg2 = strig(0)
39240 pause 200
39250 wend
39260 if ((bg=2) or (key$=chr$(13))) then
39270 goto Result_Birtheye1:
39280 endif
39290 if (bg2=2) then
39300 'データークリア
39310 for i=0 to 8
39320 buffer(i) = 0
39330 next i
39340 goto Main_Screen:
39350 endif
39360 References1:
39370 cls 3:key$ = "":bg = 0:play "":
39380 font 48-8
39390 if ((size(0) <= 1280) and (size(1) <= 800)) then
39400 gload Gazo$ + Gazo_WXGA$ +  "Reference1_864x640_20240219.png",0,0,0
39410 else
39420 gload Gazo$ + "Reference1_20230703.png",0,0,0
39430 gload Gazo$ + "downscreen.png",0,0,800
39440 endif
39450 if ex_info$(1)<>"JP" then
39460 print chr$(13)+chr$(13)+chr$(13)
39470 color rgb(0,0,255)
39480 print "・Title: 名前で運命のすべてがわかる　数秘術" + chr$(13)
39490 print "・Author: Carol Adrienne, Ph.D" + chr$(13)
39500 print "・Publisher: Gento-sha" + chr$(13)
39510 print "・Website: www.carolAdrienne.jp/" + chr$(13)
39520 print "・ISBN: 978-4-344-01394-0" + chr$(13)
39530 print "・Price: 1500 yen + tax" + chr$(13)
39540 color rgb(255,255,255)
39550 locate 1,18
39560 print "Right joystick: Next"
39570 else
39580 '****************************************************************************************************
39590 '(1200x800)の時ここから
39600 '****************************************************************************************************
39610 if ((size(0)<=1280) and (size(1)<=800)) then
39620 font FONT
39630 color rgb(0,0,255)
39640 locate 1,5:
39650 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
39660 locate 1,7:
39670 print "・Author:carol Adrinne,PhD"+chr$(13)
39680 locate 1,9:
39690 print "・出版社:幻冬舎" + chr$(13)
39700 locate 1,11:
39710 print "・HP:www.carolAdrienne.jp/"+chr$(13)
39720 locate 1,13:
39730 print "・ISBN:978-4-344-01394-0"+chr$(13)
39740 locate 1,15
39750 print "・定価:1500円 + 税"+chr$(13)
39760 color rgb(255,255,255)
39770 locate 1,18
39780 print "ジョイパッド右：次へ"
39790 '****************************************************************************************************
39800 '(1200x800)の時ここまで
39810 '****************************************************************************************************
39820 else
39830 '****************************************************************************************************
39840 'WUXG(1920x1200)の時ここから
39850 '****************************************************************************************************
39860 font FONT
39870 print chr$(13)+chr$(13)+chr$(13)
39880 color rgb(0,0,255)
39890 print "・Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
39900 print "・Author:carol Adrinne,PhD"+chr$(13)
39910 print "・出版社:幻冬舎" + chr$(13)
39920 print "・HP:www.carolAdrienne.jp/"+chr$(13)
39930 print "・ISBN:978-4-344-01394-0"+chr$(13)
39940 print "・定価:1500円 + 税"+chr$(13)
39950 color rgb(255,255,255)
39960 locate 1,18
39970 print "ジョイパッド右：次へ"
39980 '****************************************************************************************************
39990 'WUXG(1920x1200)の時ここまで
40000 '****************************************************************************************************
40010 endif
40020 endif
40030 while (key$ <> chr$(13) and bg <> 2)
40040 bg = strig(1)
40050 key$ = inkey$
40060 pause 200
40070 wend
40080 '
40090 if ((bg = 2) or (key$ = chr$(13))) then
40100 pause 200:goto References2:
40110 endif
40120 'ユダヤの秘儀 カバラ大占術
40130 References2:
40140 cls 3:play "":bg = 0:key$ = ""
40150 if ((size(0)<=1280) and (size(1)<=800)) then
40160 gload Gazo$ + Gazo_WXGA$ +  "Reference2_864x640_20240219.png",0,0,0
40170 else
40180 gload Gazo$ + "Reference2_20230703.png",0,0,0
40190 gload Gazo$ + "downscreen.png",0,0,800
40200 endif
40210 '参考文献２
40220 'カバラ大占術
40230 if ex_info$(1)<>"JP" then
40240 print chr$(13) + chr$(13) + chr$(13)
40250 color  rgb(0,0,255):font 48-8
40260 locate 1,3
40270 print "・Title: ユダヤの秘儀 大占術占術" + chr$(13)
40280 print "・Author: Hironari Asano" + chr$(13)
40290 print "・Publisher: NON BOOK" + chr$(13)
40300 print "・ISBN: 4-396-10364-6" + chr$(13)
40310 print "・Price: 829 yen + tax"
40320 color rgb(255,255,255)
40330 locate 1,18
40340 print "Right joystick: Return to top"
40350 else
40360 '****************************************************************************************************
40370 '(1200x800)の時 ここから
40380 '****************************************************************************************************
40390 if ((size(0)<=1280) and (size(1)<=800)) then
40400 font FONT
40410 color  rgb(0,0,255):
40420 locate 1,5:print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
40430 locate 1,7:print "・著者：浅野 八郎" + chr$(13)
40440 locate 1,9:print "・出版社:NON BOOK" + chr$(13)
40450 locate 1,11:print "・ISBN:4-396-10364-6" + chr$(13)
40460 locate 1,13:print "・定価:829円 + 税"
40470 color rgb(255,255,255)
40480 locate 1,18
40490 print "ジョイパッド右：トップへ行く"
40500 '****************************************************************************************************
40510 '(1200x800)の時 ここまで
40520 '****************************************************************************************************
40530 else
40540 '****************************************************************************************************
40550 'WUXG(1920x1200)の時ここから
40560 '****************************************************************************************************
40570 color  rgb(0,0,255):font FONT
40580 print chr$(13) + chr$(13) + chr$(13)
40590 locate 1,3
40600 print "・Title:ユダヤの秘儀 大占術占術" + chr$(13)
40610 print "・著者：浅野　八郎" + chr$(13)
40620 print "・出版社:NON BOOK" + chr$(13)
40630 print "・ISBN:4-396-10364-6" + chr$(13)
40640 print "・定価:829円 + 税"
40650 color rgb(255,255,255)
40660 locate 1,18
40670 print "ジョイパッド右：トップへ行く"
40680 '****************************************************************************************************
40690 'WUXG(1920x1200)の時ここまで
40700 '****************************************************************************************************
40710 endif
40720 endif
40730 while ((key$ <> chr$(13)) and (bg <> 2))
40740 bg = strig(1)
40750 key$ = inkey$
40760 pause 200
40770 wend
40780 if ((bg = 2) or (key$ = chr$(13))) then
40790 pause 200:goto Main_Screen:
40800 endif
40810 end
40820 '1.数秘術　トップ画面
40830 Kabara_First_Top:
40840 cls 3:color rgb(255,255,255):play ""
40850 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
40860 gload Gazo$ + "downscreen.png",0,0,800
40870 No=0:init"kb:4"
40880 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
40890 if ex_info$(1)<>"JP" then
40900 print chr$(13);chr$(13)
40910 color rgb(255,255,255)
40920 locate 3,4:No=0
40930 print "Please select a number" + chr$(13)
40940 print " :1. Numerology" + chr$(13)
40950 print " :2. Return to the top screen" + chr$(13)
40960 color rgb(0,0,0)
40970 sp_on 0,1
40980 locate 1,15:print "1. Select Numerology"
40990 else
41000 '****************************************************************************************************
41010 'WUXG(1920x1200)の時ここから
41020 '****************************************************************************************************
41030 print chr$(13);chr$(13)
41040 color rgb(255,255,255)
41050 locate 3,4:No=0
41060 print "番号選んでください" + chr$(13)
41070 print " :1.数秘術占い" + chr$(13)
41080 print " :2.トップ画面に戻る" + chr$(13)
41090 color rgb(0,0,0)
41100 sp_on 0,1
41110 locate 1,15:print "1.数秘術番号を求めるを選択"
41120 '****************************************************************************************************
41130 'WUXG(1920x1200)の時ここまで
41140 '****************************************************************************************************
41150 endif
41160 'KeyBord:true
41170 'Joy Pad:true
41180 '上、下:true
41190 '
41200 'ｂｇ：決定ボタン
41210 'カーソル　上
41220 'カーソル　下
41230 Kabara_First_Top2:
41240 key$ = "":bg = 0:y = 0:
41250 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
41260 key$ = inkey$
41270 bg = strig(1)
41280 y = stick(1)
41290 'PauseでCPUを休める
41300 pause 5
41310 wend
41320 '1.カーソル　下 処理 chr$(31)
41330 'カーソル　下
41340 if ex_info$(1) <> "JP" then
41350 if ((key$ = chr$(31)) or (y = 1)) then
41360 select case No
41370 '
41380 case 1:
41390 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1. Select Numerology":goto Kabara_First_Top2:
41400 case 0:
41410 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2. Return to the top screen":goto Kabara_First_Top2:
41420 'case 2:
41430 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1. Select Numerology Number":goto Kabara_First_Top2:
41440 end select
41450 endif
41460 else
41470 if ((key$ = chr$(31)) or (y = 1)) then
41480 select case No
41490 '
41500 case 1:
41510 No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
41520 case 0:
41530 No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
41540 'case 2:
41550 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
41560 end select
41570 endif
41580 '2.カーソル　上 処理 chr$(30)
41590 if ((key$ = chr$(30)) or (y = -1)) then
41600 select case No
41610 case 0:
41620 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
41630 case 1:
41640 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
41650 'case 2:
41660 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
41670 end select
41680 endif
41690 endif
41700 '3.決定 処理  bg:2 or Enter key:chr$(13)
41710 if ((bg = 2) or (key$ = chr$(13))) then
41720 select case No
41730 case 0:
41740 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
41750 goto Kabara_TopScreen:
41760 'case 1:
41770 '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
41780 case 1:
41790 sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
41800 end select
41810 endif
41820 '
41830 'Kabara 相性占い トップ画面
41840 Kabara_Aishou_Top:
41850 cls 3:y=0:key$="":bg=0:No=0
41860 play ""
41870 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
41880 gload Gazo$ + "downscreen.png",0,0,800
41890 if ex_info$(1)<>"JP" then
41900 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
41910 print chr$(13) + chr$(13)
41920 locate 0,4:color rgb(255,255,255)
41930 print "Please select a number" + chr$(13)
41940 print " :1. Compatibility fortune-telling ...." + chr$(13)
41950 print " :2. Business compatibility fortune-telling" + chr$(13)
41960 print " :3. Return to the top screen" + chr$(13)
41970 sp_on 0,1:sp_on 1,0:sp_on 2,0
41980 color rgb(0,0,0)
41990 locate 1,15:print "1. Select compatibility fortune-telling of two men and women"
42000 else
42010 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
42020 '****************************************************************************************************
42030 'WUXG(1920x1200)の時ここから
42040 '****************************************************************************************************
42050 print chr$(13) + chr$(13)
42060 locate 0,4:color rgb(255,255,255)
42070 'print "Ok"
42080 '
42090 print "番号を選んでください" + chr$(13)
42100 print " :1.男女2人の相性占い(実装不完全)" + chr$(13)
42110 print " :2.ビジネスの相性占い" + chr$(13)
42120 print " :3.トップ画面に戻る" + chr$(13)
42130 sp_on 0,1:sp_on 1,0:sp_on 2,0
42140 color rgb(0,0,0)
42150 locate 1,15:print "1.男女2人の相性占いを選択"
42160 '****************************************************************************************************
42170 'WUXG(1920x1200)の時ここまで
42180 '****************************************************************************************************
42190 endif
42200 Kabara_Aishou_Top2:
42210 key$ = "":y = 0:bg = 0:
42220 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
42230 'ジョイパッド(右) ,十字キー (上下)
42240 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
42250 y = stick(1)
42260 key$ = inkey$
42270 bg = strig(1)
42280 pause 200
42290 wend
42300 'カーソル　下 or 十字キー　下
42310 if ex_info$(1)<>"JP" then
42320 if ((key$ = chr$(31)) or (y = 1)) then
42330 select case No
42340 'Option change 1 - 2
42350 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
42360 'ok
42370 case 0:
42380 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select business compatibility fortune-telling":goto Kabara_Aishou_Top2:
42390 'Option change 2 - 3
42400 case 1:
42410 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Kabara_Aishou_Top2:
42420 'Release time case 2 comment release
42430 case 2:
42440 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility fortune-telling of two men and women":goto Kabara_Aishou_Top2:
42450 case else:
42460 goto Kabara_Aishou_Top2:
42470 end select
42480 endif
42490 if ((key$ = chr$(30)) or (y = -1)) then
42500 select case No
42510 case 0:
42520 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print " :3. Return to the top screen" :goto Kabara_Aishou_Top2:
42530 case 1:
42540 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print " :1. Compatibility fortune-telling...." :goto Kabara_Aishou_Top2:
42550 case 2:
42560 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print " :2. Business compatibility fortune-telling":goto Kabara_Aishou_Top2:
42570 case else:
42580 goto Kabara_Aishou_Top2:
42590 end select
42600 endif
42610 else
42620 if ((key$ = chr$(31)) or (y = 1)) then
42630 select case No
42640 '選択肢　1 - 2に変更
42650 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
42660 'ok
42670 case 0:
42680 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
42690 '選択肢　2 - 3に変更
42700 case 1:
42710 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
42720 'リリース時 case 2コメント解除
42730 case 2:
42740 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
42750 case else:
42760 goto Kabara_Aishou_Top2:
42770 end select
42780 endif
42790 '十字キー　上　、カーソル　上
42800 if ((key$ = chr$(30)) or (y = -1)) then
42810 select case No
42820 case 0:
42830 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
42840 case 1:
42850 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
42860 case 2:
42870 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
42880 case else:
42890 goto Kabara_Aishou_Top2:
42900 end select
42910 endif
42920 endif
42930 '十字キー　上下:選択
42940 'ジョイパッド 右:決定
42950 if ((bg = 2) or (key$ = chr$(13))) then
42960 select case No
42970 '1.男女の相性
42980 case 0:
42990 '男女の相性占い(未実装)トップ画面に飛ぶ
43000 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Top:
43010 '2ビジネスの相性
43020 case 1:
43030 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
43040 case 2:
43050 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
43060 end select
43070 endif
43080 '0.男女の相性　トップ画面　ここから
43090 Danjyo_Aisyou_Top:
43100 cls 3:y=0:key$="":bg=0:No=0
43110 play ""
43120 gload Gazo$ + "Screen1.png",0,0,0
43130 gload Gazo$ + "downscreen.png",0,0,800
43140 if ex_info$(1)<>"JP" then
43150 print chr$(13) + chr$(13)
43160 locate 0,4:color rgb(255,255,255)
43170 print "Please select a number" + chr$(13)
43180 print " :1. Compatibility with a person of ...." + chr$(13)
43190 print " :2. Compatibility between two people" + chr$(13)
43200 print " :3. Return to the top screen" + chr$(13)
43210 sp_on 0,1:sp_on 1,0:sp_on 2,0
43220 color rgb(0,0,0)
43230 locate 1,15:print "1. Compatibility with a person of ...."
43240 else
43250 print chr$(13) + chr$(13)
43260 locate 0,4:color rgb(255,255,255)
43270 '****************************************************************************************************
43280 'WUXG(1920x1200)の時ここから
43290 '****************************************************************************************************
43300 print "番号を選んでください" + chr$(13)
43310 print " :1.自分と異性の相性(未実装)" + chr$(13)
43320 print " :2.男女2人の相性" + chr$(13)
43330 print " :3.トップ画面に戻る" + chr$(13)
43340 sp_on 0,1:sp_on 1,0:sp_on 2,0
43350 color rgb(0,0,0)
43360 locate 1,15:print "1.自分と異性の相性(未実装)を選択"
43370 '****************************************************************************************************
43380 'WUXG(1920x1200)の時ここまで
43390 '****************************************************************************************************
43400 endif
43410 Danjyo_Aisyou_Top2:
43420 key$ = "":y = 0:bg = 0:
43430 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
43440 'ジョイパッド(右) ,十字キー (上下)
43450 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
43460 y = stick(1)
43470 key$ = inkey$
43480 bg = strig(1)
43490 pause 200
43500 wend
43510 if ex_info$(1)<>"JP" then
43520 'Cursor down or arrow key down
43530 if ((key$ = chr$(31)) or (y = 1)) then
43540 select case No
43550 'Option 1 - 2 change
43560 'case 0 1. Compatibility fortune-telling => 2. Business compatibility fortune-telling
43570 'ok
43580 case 0:
43590 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
43600 'Option 2 - 3 change
43610 case 1:
43620 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3. Select return to the top screen":locate 1,16:goto Danjyo_Aisyou_Top2:
43630 'Release time case 2 comment release
43640 case 2:
43650 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
43660 case else:
43670 goto Kabara_Aishou_Top2:
43680 end select
43690 endif
43700 'Arrow key up, cursor up
43710 if ((key$ = chr$(30)) or (y = -1)) then
43720 select case No
43730 case 0:
43740 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3. Select return to the top screen":goto Danjyo_Aisyou_Top2:
43750 case 1:
43760 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1. Select compatibility with a person of the opposite sex (not implemented)":goto Danjyo_Aisyou_Top2:
43770 case 2:
43780 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2. Select compatibility between two people":goto Danjyo_Aisyou_Top2:
43790 case else:
43800 goto Kabara_Aishou_Top2:
43810 end select
43820 endif
43830 else
43840 'カーソル　下 or 十字キー　下
43850 if ((key$ = chr$(31)) or (y = 1)) then
43860 select case No
43870 '選択肢　1 - 2に変更
43880 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
43890 'ok
43900 case 0:
43910 No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
43920 '選択肢　2 - 3に変更
43930 case 1:
43940 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Danjyo_Aisyou_Top2:
43950 'リリース時 case 2コメント解除
43960 case 2:
43970 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.自分と異性の相性(未実装)を選択":goto Danjyo_Aisyou_Top2:
43980 case else:
43990 goto Kabara_Aishou_Top2:
44000 end select
44010 endif
44020 '十字キー　上　、カーソル　上
44030 if ((key$ = chr$(30)) or (y = -1)) then
44040 select case No
44050 case 0:
44060 No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Danjyo_Aisyou_Top2:
44070 case 1:
44080 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.自分と異性の相性(未実装)":goto Danjyo_Aisyou_Top2:
44090 case 2:
44100 No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.男女2人の相性を選択":goto Danjyo_Aisyou_Top2:
44110 case else:
44120 goto Kabara_Aishou_Top2:
44130 end select
44140 endif
44150 endif
44160 end
44170 '十字キー　上下:選択
44180 'ジョイパッド 右:決定
44190 if ((bg = 2) or (key$ = chr$(13))) then
44200 select case No
44210 '1.自分と異性の相性
44220 case 0:
44230 '未実装
44240 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:
44250 '2男女の相性 男性の名前入力に飛ぶ
44260 case 1:
44270 cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Danjyo_Aisyou_Input_Name_male:
44280 case 2:
44290 sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
44300 end select
44310 endif
44320 '0.男女の相性　トップ画面　ここまで
44330 '1.男女の相性 ここから
44340 '1-1.男性の名前を入力
44350 Danjyo_Aisyou_Input_Name_male:
44360 No=0:color RGB(255,255,255)
44370 '入力:キーボード
44380 cls 3:init "kb:2"
44390 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
44400 gload Gazo$ + "downscreen.png",0,0,800
44410 for i=0 to 3
44420 buf_male_year(i)=0
44430 next i
44440 if ex_info$(1)<>"JP" then
44450 play "":color rgb(255,0,0):male_name$ = ""
44460 locate 0,1
44470 print "Male Compatibility" + chr$(13) + chr$(13)
44480 color rgb(255,255,255):
44490 locate 0,3
44500 print "We will find the compatibility with a man. Please enter the man's name" + chr$(13)
44510 locate 0,15:color rgb(0,0,0)
44520 Input "Man's Name:",male_name$
44530 else
44540 '****************************************************************************************************
44550 'WUXG(1920x1200)の時ここから
44560 '****************************************************************************************************
44570 play "":color rgb(255,0,0):male_name$ = ""
44580 locate 0,1
44590 print "男性の相性" + chr$(13) + chr$(13)
44600 color rgb(255,255,255):
44610 locate 0,3
44620 print "男性の相性を求めます。男性の名前を" + chr$(13)
44630 print "入れてください" + chr$(13)
44640 locate 0,15:color rgb(0,0,0)
44650 Input "男性の名前:",male_name$
44660 '****************************************************************************************************
44670 'WUXG(1920x1200)の時ここまで
44680 '****************************************************************************************************
44690 endif
44700 '-------------------------------------------
44710 '1-2:男性の生まれた年代
44720 Danjyo_Aisyou_Input_Born_Year:
44730 No=0:color RGB(255,255,255)
44740 cls 3:init "kb:4"
44750 '****************************************************************************************************
44760 'WUXG(1920x1200)の時ここから
44770 '****************************************************************************************************
44780 gload Gazo$ + "Screen1.png",0,0,0
44790 gload Gazo$ + "downscreen.png",0,0,800
44800 '****************************************************************************************************
44810 'WUXG(1920x1200)の時ここから
44820 '****************************************************************************************************
44830 play "":color rgb(255,0,0)
44840 '-------------------------------------------
44850 font 48
44860 if ex_info$(1)<>"JP" then
44870 locate 0,1
44880 color rgb(255,255,255)
44890 print "Please enter the man's birth year" + chr$(13)
44900 color rgb(255,255,255)
44910 locate 1,3
44920 print "Man's Birth Year (4 digits):";buf_male_year$
44930 else
44940 '****************************************************************************************************
44950 'WUXG(1920x1200)の時ここから
44960 '****************************************************************************************************
44970 locate 0,1
44980 '文字色：黒　 color rgb(0,0,0)
44990 color rgb(255,255,255)
45000 print "男性の生まれた年代を入れて下さい" + chr$(13)
45010 color rgb(255,255,255)
45020 locate 1,3
45030 print "男性の生まれた年代(西暦4桁):";buf_male_year$
45040 '****************************************************************************************************
45050 'WUXG(1920x1200)の時ここから
45060 '****************************************************************************************************
45070 endif
45080 color rgb(255,255,255)
45090 'locate 4,6:print ":7"
45100 'locate 9,6:print ":8"
45110 'locate 12,6:print ":9"
45120 locate 4,6
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
45290 '-------------------------------------------------------------------------------------
45300 Danjyo_Aisyou_Input_Male_Born_Year2:
45310 key$="":bg=0:y=0:y2=0:bg2=0:
45320 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
45330 key$ = inkey$
45340 bg = strig(1)
45350 y = stick(1)
45360 y2 = stick(0)
45370 bg2=strig(0)
45380 pause 200
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
45490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45500 '選択肢:3
45510 '3ボタンから 6に移動
45520 case 3:
45530 No=6:sp_on 12,0:sp_on 11,1
45540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45550 '6ボタンから ９に移動
45560 case 6:
45570 No=9:sp_on 10,1:sp_on 11,0
45580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45590 '6ボタンから ９に移動　ここまで
45600 '9で上を押して何もしない
45610 case 9:
45620 '何もしない
45630 No=9
45640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45650 '9で上を押しても何もしない　ここまで
45660 '上　 0ボタンから2ボタン
45670 'sp_on 6,1:1
45680 'sp_on 8,1:5
45690 'sp_on 7,1:7
45700 case 0:
45710 No=2:sp_on 13,0:sp_on 9,1:
45720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45730 '上  0ボタンから2ボタン　ここまで
45740 '2から５になる 上
45750 case 2:
45760 No=5:sp_on 8,1:sp_on 9,0:
45770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45780 case 5:
45790 No=8:sp_on 7,1:sp_on 8,0
45800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45810 case 8:
45820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45830 case 1:
45840 No=4:sp_on 5,1:sp_on 6,0
45850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45860 case 4:
45870 No=7:sp_on 4,1:sp_on 5,0
45880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
45890 case 7:
45900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
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
46010 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46020 '6から３に下げる
46030 case 6:
46040 No=3:sp_on 12,1:sp_on 11,0
46050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46060 '3から０ｋに変える
46070 case 3:
46080 No=-1:sp_on 14,1:sp_on 12,0
46090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46100 'Okから下のボタンを押しても何もしない
46110 case -1:
46120 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46130 case 8:
46140 No=5:sp_on 8,1:sp_on 7,0
46150 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46160 case 5:
46170 No=2:sp_on 9,1:sp_on 8,0
46180 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46190 case 2:
46200 No=0:sp_on 13,1:sp_on 9,0
46210 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46220 case 0:
46230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46240 case 7:
46250 No=4:sp_on 5,1:sp_on 4,0
46260 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46270 case 4:
46280 No=1:sp_on 6,1:sp_on 5,0
46290 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46300 case 1:
46310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46320 end select
46330 endif
46340 '左へボタン 十字キー　左　or 　カーソル左
46350 if ((y2 = -1) or (key$ = chr$(29))) then
46360 select case No
46370 'Ok ボタン  Okから　左　０に行く
46380 case -1:
46390 No=0:sp_on 13,1:sp_on 14,0
46400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46410 '0 ボタン  左　何もしない
46420 case 0:
46430 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46440 case 3:
46450 No=2:sp_on 9,1:sp_on 12,0:
46460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46470 case 2:
46480 No=1:sp_on 6,1:sp_on 9,0:
46490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46500 case 1:
46510 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46520 case 6:
46530 No=5:sp_on 8,1:sp_on 11,0
46540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46550 case 5:
46560 No=4:sp_on 5,1:sp_on 8,0
46570 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46580 case 4:
46590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46600 case 9:
46610 No=8:sp_on 7,1:sp_on 10,0
46620 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46630 case 8:
46640 No=7:sp_on 4,1:sp_on 7,0
46650 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46660 case 7:
46670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46680 end select
46690 endif
46700 '右  十字キー　右　or カーソル　右
46710 if ((y2 = 1) or (key$ = chr$(28))) then
46720 select case No
46730 '0ボタンからokボタン右に移動
46740 case 0:
46750 No=-1:sp_on 14,1:sp_on 13,0
46760 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46770 '0ボタンからokボタン 右に移動　ここまで
46780 'OKボタンで右を押して何もしない
46790 case -1:
46800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46810 case 1:
46820 No=2:sp_on 9,1:sp_on 6,0
46830 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46840 case 2:
46850 No=3:sp_on 12,1:sp_on 9,0
46860 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46870 case 3:
46880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46890 case 4:
46900 No=5:sp_on 8,1:sp_on 5,0
46910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46920 case 5:
46930 No=6:sp_on 11,1:sp_on 8,0
46940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46950 case 7:
46960 No=8:sp_on 7,1:sp_on 4,0
46970 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
46980 case 8:
46990 No=9:sp_on 10,1:sp_on 7,0
47000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
47010 case 9:
47020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
47030 case 6:
47040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Year2:
47050 end select
47060 'Okから右ボタンを押して何もしない ここまで
47070 endif
47080 '十字キー　ここまで
47090 '==============================
47100 'ここから
47110 '==============================
47120 if ((bg = 2) or (key$ = chr$(13))) then
47130 select case count
47140 case 0:
47150 count = 1
47160 if (No = -1) then
47170 count = 0:No=0
47180 buf_male_year(0) = No
47190 'Okボタンを押したとき
47200 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47210 else
47220 'Okボタン以外が押されたとき
47230 if (No >= 1 and No <= 2) then
47240 buf_year$="":buf_year$ = str$(No) + "***"
47250 buf_year = No:a= No
47260 buf_Jyoushi_Born_Day(0) = No
47270 if ex_info$(1)<>"JP" then
47280 locate 1,3
47290 color rgb(255,255,255)
47300 print "Year of birth of the male (4 digits AD):";buf_year$
47310 else
47320 count=0
47330 ui_msg"The number is out of range."
47340 endif
47350 else
47360 '****************************************************************************************************
47370 'WUXG(1920x1200)の時ここから
47380 '****************************************************************************************************
47390 locate 1,3
47400 color rgb(255,255,255)
47410 print "男性の生まれた年代(西暦4桁):";buf_year$
47420 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47430 '****************************************************************************************************
47440 'WUXG(1920x1200)の時ここまで
47450 '****************************************************************************************************
47460 else
47470 count=0
47480 ui_msg"数字が範囲外になります。"
47490 endif
47500 buf_year$="":buf_year=0
47510 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47520 endif
47530 'endif
47540 case 1:
47550 count = 2
47560 if (No = -1) then
47570 count = 1
47580 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47590 else
47600 '****************************************************************************************************
47610 'WUXG(1920x1200)の時ここから
47620 '****************************************************************************************************
47630 buf_year = a * 10 + No
47640 b=buf_year
47650 buf_year$ = str$(buf_year) + "**"
47660 buf_male_year(0)=buf_year
47670 locate 1,3
47680 color rgb(255,255,255)
47690 print "                                                                "
47700 locate 1,3
47710 print "男性の生まれた年代(西暦4桁):" + buf_year$
47720 'if (No = -1) then
47730 'count=1
47740 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47750 '****************************************************************************************************
47760 'WUXG(1920x1200)の時ここまで
47770 '****************************************************************************************************
47780 endif
47790 case 2:
47800 count=3
47810 if (No=-1) then
47820 count =2
47830 goto Danjyo_Aisyou_Input_Male_Born_Year2:
47840 else
47850 buf_year = b * 10 + No
47860 c=buf_year
47870 buf_year$ = str$(buf_year) + "*"
47880 buf_male_year(0) = buf_year
47890 locate 1,3
47900 color rgb(255,255,255)
47910 print " 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"
47920 if ex_info$(1)<>"JP" then
47930 locate 1,3
47940 print "Year of birth of the male (4 digits AD):";buf_year$
47950 else
47960 '****************************************************************************************************
47970 'WUXG(1920x1200)の時ここから
47980 '****************************************************************************************************
47990 locate 1,3
48000 print "男性の生まれた年代(西暦4桁):";buf_year$
48010 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48020 '****************************************************************************************************
48030 'WUXG(1920x1200)の時ここまで
48040 '****************************************************************************************************
48050 endif
48060 endif
48070 case 3:
48080 count=4
48090 if (No = -1) then
48100 No=0
48110 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48120 else
48130 buf_year = c * 10 + No
48140 buf_year$ = str$(buf_year)
48150 buf_male_year(0) = buf_year
48160 if ex_info$(1)<>"JP" then
48170 locate 1,3
48180 color RGB(255,255,255)
48190 print "                                      "
48200 locate 1,3
48210 print "Year of birth of the male (4 digits AD):";buf_year$
48220 else
48230 locate 1,3
48240 color RGB(255,255,255)
48250 print "                                      "
48260 locate 1,3
48270 print "男性の生まれた年代(西暦4桁):";buf_year$
48280 endif
48290 buf_year=val(buf_year$)
48300 'year=val(buf_year$)
48310 'if (No=-1) then
48320 'goto Input_Born_Month:
48330 'else
48340 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48350 endif
48360 case 4:
48370 'bufyear=buf_year
48380 if (No=-1) then
48390 buf_year = val(buf_year$)
48400 buf_male_year(0)=buf_year
48410 sp_on 14,0:No=0
48420 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48430 else
48440 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48450 endif
48460 end select
48470 endif
48480 '===========================
48490 'ここまでを部下のところにコピーする.
48500 '===========================
48510 if (bg2 = 2) then
48520 select case count2
48530 case 0:
48540 if (No = -1) then
48550 buf_male_year=0:buf_male_year$=trim$(""):buf_male_year$=trim$("****")
48560 count=0
48570 if ex_info$(1)<>"JP" then
48580 locate 1,3
48590 color rgb(255,255,255)
48600 print "                                      "
48610 locate 1,3
48620 print "Year of birth of the male (4 digits AD):" + buf_male_year$
48630 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48640 else
48650 '(buf_year=0) then
48660 buf_male_year=0:buf_male_year$="****"
48670 locate 1,3
48680 print "                                       "
48690 locate 1,3
48700 print "Year of birth of the male (4 digits AD):"+buf_male_year$
48710 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48720 else
48730 locate 1,3
48740 color rgb(255,255,255)
48750 print "                                      "
48760 locate 1,3
48770 print "男性の生まれた年代（西暦4桁):" + buf_male_year$
48780 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48790 else
48800 '(buf_year=0) then
48810 buf_male_year=0:buf_male_year$="****"
48820 locate 1,3
48830 print "                                       "
48840 locate 1,3
48850 print "男性の生まれた年代(西暦4桁):"+buf_male_year$
48860 goto Danjyo_Aisyou_Input_Male_Born_Year2:
48870 endif
48880 endif
48890 end select
48900 endif
48910 '-------生まれた年代　男性-------------
48920 '-------生まれた月　男性-------------
48930 '1-2:男性の生まれた月
48940 Danjyo_Aisyou_Input_Male_Born_Month:
48950 cls 3:play "":count=0:count2=0
48960 'No=-1:Okのとき
48970 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Month$ = "**":buf_male_month=0
48980 for i=0 to 1
48990 buf_male_month(i)=0
49000 next i
49010 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
49020 '****************************************************************************************************
49030 'WUXG(1920x1200)の時ここから
49040 '****************************************************************************************************
49050 gload Gazo$ + "Screen1.png",0,0,0
49060 gload Gazo$ + "downscreen.png",0,0,800
49070 '****************************************************************************************************
49080 'WUXG(1920x1200)の時ここまで
49090 '****************************************************************************************************
49100 'Init"kb:4"
49110 '音声ファイル再生 2023.06.07
49120 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
49130 '****************************************************************************************************
49140 'WUXG(1920x1200)の時ここから
49150 '****************************************************************************************************
49160 font 48
49170 '****************************************************************************************************
49180 'WUXG(1920x1200)の時ここまで
49190 '****************************************************************************************************
49200 locate 0,1
49210 '文字色：黒　 color rgb(0,0,0)
49220 '文字色:白
49230 color rgb(255,255,255)
49240 print "男性の生まれた月を入れて下さい" + chr$(13)
49250 '文字色:白
49260 color rgb(255,255,255)
49270 locate 1,3
49280 '文字色:白
49290 print "男性の生まれた月(1月~12月):"+buf_male_Month$
49300 color rgb(255,255,255)
49310 'locate 4,6:print ":7"
49320 'locate 9,6:print ":8"
49330 'locate 12,6:print ":9"
49340 locate 4,6
49350 '文字色:赤
49360 print ":7  :8  :9" + chr$(13)
49370 color rgb(255,255,255)
49380 locate 4,8
49390 print ":4  :5  :6" + chr$(13)
49400 color rgb(255,255,255)
49410 locate 4,10
49420 print ":1  :2  :3" + chr$(13)
49430 locate 4,12
49440 print "    :0"
49450 locate 12,12
49460 color rgb(0,0,255)
49470 print ":Ok"
49480 sp_on 4,0: sp_on 5,0:sp_on 6,0
49490 sp_on 7,0:sp_on 8,0:sp_on 9,0
49500 sp_on 10,0:sp_on 11,0:sp_on 12,0
49510 sp_on 13,0:sp_on 14,1
49520 '----------------------------------------------------------------------------------------
49530 Danjyo_Aisyou_Input_Male_Born_Month2:
49540 key$="":bg=0:y=0:y2=0:bg2=0
49550 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
49560 key$ = inkey$
49570 bg = strig(1)
49580 y = stick(1)
49590 y2 = stick(0)
49600 bg2 = strig(0)
49610 pause 200
49620 wend
49630 '十字キー　ここから
49640 '上の矢印　または、十字キー上
49650 if ((y = -1) or (key$ = chr$(30))) then
49660 select case No
49670 'No=-1:okのとき:初期の状態
49680 '0kボタンから３に移動
49690 '上に行く 処理
49700 case -1:
49710 No=3:sp_on 12,1:sp_on 14,0
49720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49730 '選択肢:3
49740 '3ボタンから 6に移動
49750 case 3:
49760 No=6:sp_on 12,0:sp_on 11,1
49770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49780 '6ボタンから ９に移動
49790 case 6:
49800 No=9:sp_on 10,1:sp_on 11,0
49810 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49820 '6ボタンから ９に移動　ここまで
49830 '9で上を押して何もしない
49840 case 9:
49850 '何もしない
49860 No=9
49870 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49880 '9で上を押しても何もしない　ここまで
49890 '上　 0ボタンから2ボタン
49900 'sp_on 6,1:1
49910 'sp_on 8,1:5
49920 'sp_on 7,1:7
49930 case 0:
49940 No=2:sp_on 13,0:sp_on 9,1:
49950 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
49960 '上  0ボタンから2ボタン　ここまで
49970 '2から５になる 上
49980 case 2:
49990 No=5:sp_on 8,1:sp_on 9,0:
50000 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50010 case 5:
50020 No=8:sp_on 7,1:sp_on 8,0
50030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50040 case 8:
50050 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50060 case 1:
50070 No=4:sp_on 5,1:sp_on 6,0
50080 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50090 case 4:
50100 No=7:sp_on 4,1:sp_on 5,0
50110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50120 case 7:
50130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50140 end select
50150 endif
50160 '左３　ここまで
50170 '下の矢印
50180 '中央 2
50190 if ((y=1) or (key$ = chr$(31))) then
50200 select case No
50210 '9から６に下げる
50220 case 9:
50230 No=6:sp_on 11,1:sp_on 10,0
50240 pause 200:gotoDanjyo_Aisyou_Input_Male_Born_Month2:
50250 '6から３に下げる
50260 case 6:
50270 No=3:sp_on 12,1:sp_on 11,0
50280 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50290 '3から０ｋに変える
50300 case 3:
50310 No=-1:sp_on 14,1:sp_on 12,0
50320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50330 'Okから下のボタンを押しても何もしない
50340 case -1:
50350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50360 case 8:
50370 No=5:sp_on 8,1:sp_on 7,0
50380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50390 case 5:
50400 No=2:sp_on 9,1:sp_on 8,0
50410 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50420 case 2:
50430 No=0:sp_on 13,1:sp_on 9,0
50440 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50450 case 0:
50460 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50470 case 7:
50480 No=4:sp_on 5,1:sp_on 4,0
50490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50500 case 4:
50510 No=1:sp_on 6,1:sp_on 5,0
50520 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50530 case 1:
50540 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50550 end select
50560 endif
50570 '左へボタン 十字キー　左　or 　カーソル左
50580 if ((y2 = -1) or (key$ = chr$(29))) then
50590 select case No
50600 'Ok ボタン  Okから　左　０に行く
50610 case -1:
50620 No=0:sp_on 13,1:sp_on 14,0
50630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50640 '0 ボタン  左　何もしない
50650 case 0:
50660 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50670 case 3:
50680 No=2:sp_on 9,1:sp_on 12,0:
50690 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50700 case 2:
50710 No=1:sp_on 6,1:sp_on 9,0:
50720 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50730 case 1:
50740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50750 case 6:
50760 No=5:sp_on 8,1:sp_on 11,0
50770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50780 case 5:
50790 No=4:sp_on 5,1:sp_on 8,0
50800 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50810 case 4:
50820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50830 case 9:
50840 No=8:sp_on 7,1:sp_on 10,0
50850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50860 case 8:
50870 No=7:sp_on 4,1:sp_on 7,0
50880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50890 case 7:
50900 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
50910 end select
50920 endif
50930 '右  十字キー　右　or カーソル　右
50940 if ((y2 = 1) or (key$ = chr$(28))) then
50950 select case No
50960 '0ボタンからokボタン右に移動
50970 case 0:
50980 No=-1:sp_on 14,1:sp_on 13,0
50990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51000 '0ボタンからokボタン 右に移動　ここまで
51010 'OKボタンで右を押して何もしない
51020 case -1:
51030 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51040 case 1:
51050 No=2:sp_on 9,1:sp_on 6,0
51060 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51070 case 2:
51080 No=3:sp_on 12,1:sp_on 9,0
51090 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51100 case 3:
51110 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51120 case 4:
51130 No=5:sp_on 8,1:sp_on 5,0
51140 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51150 case 5:
51160 No=6:sp_on 11,1:sp_on 8,0
51170 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51180 case 7:
51190 No=8:sp_on 7,1:sp_on 4,0
51200 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51210 case 8:
51220 No=9:sp_on 10,1:sp_on 7,0
51230 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51240 case 9:
51250 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51260 case 6:
51270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Month2:
51280 end select
51290 'Okから右ボタンを押して何もしない ここまで
51300 endif
51310 '十字キー　ここまで
51320 '右の丸ボタン + Enter key 決定キー
51330 if ((bg=2) or (key$=chr$(13))) then
51340 select case count
51350 case 0:
51360 if (No=-1) then No=0
51370 count = 1:buf_male_Month$ = "**":buf_male_Month$ = str$(No):buf_male_month = No:c=No
51380 if (buf_male_month > 1 and buf_male_month < 10)  then
51390 buf_male_Month$ = str$(buf_male_month)
51400 'buf_month=No
51410 endif
51420 if (buf_male_month = 1)  then
51430 buf_male_Month$ = str$(buf_male_month) + "*"
51440 'c=buf_month
51450 endif
51460 locate 1,3
51470 print "                                     "
51480 color RGB(255,255,255)
51490 locate 1,3
51500 print "男性の生まれた月(1月~12月):" + buf_male_Month$
51510 goto Danjyo_Aisyou_Input_Male_Born_Month2:
51520 case 1:
51530 count = 2:
51540 'c = val(buf_Month$)
51550 if (No = -1) then
51560 'count=0
51570 No=0
51580 month=buf_male_month
51590 buf_male_month=val(buf_male_Month$)
51600 month=buf_male_month
51610 buf_Jyoushi_Born_Day(1)=month
51620 '生まれた日に飛ぶ
51630 goto Danjyo_Aisyou_Input_Male_Born_Day:
51640 else
51650 buf_male_month = c*10 + No
51660 'if (buf_month = 1) then
51670 'buf_Month$ = str$(buf_month)
51680 'endif
51690 buf_male_Month$ = str$(buf_male_month)
51700 buf_Jyoushi_Born_Day(1) = buf_male_month
51710 locate 0,3
51720 print "                                           "
51730 locate 1,3
51740 color Rgb(255,255,255)
51750 print "男性の生まれた月(1月~12月):" + buf_male_Month$
51760 goto Danjyo_Aisyou_Input_Male_Born_Month2:
51770 endif
51780 case 2:
51790 '==================================
51800 '何もしない
51810 'coun = 2
51820 '==================================
51830 'c= val(buf_Month$)
51840 'buf_month = c*10 + No
51850 'buf_Month$ = str$(buf_month)
51860 'locate 2,3
51870 'print "上司の生まれた月(1月～12月):";buf_Month$
51880 'goto Jyoushi_Input_Born_Month2:
51890 'case 3:
51900 'count=4
51910 'b=val(buf_month$)
51920 'buf_month=c*10+No
51930 'buf_Month$=str$(buf_month)
51940 'locate 2,3
51950 'print "上司の生まれた月(1月～12月):";buf_Month$
51960 'buf_month=val(buf_Month$)
51970 'year=val(buf_year$)
51980 if (No=-1) then
51990 No=0
52000 goto Danjyo_Aisyou_Input_Male_Born_Day:
52010 else
52020 goto Danjyo_Aisyou_Input_Male_Born_Day2:
52030 endif
52040 'case 4:
52050 'bufyear=buf_year
52060 'if (No=-1) then
52070 'buf_month = val(buf_Month$)
52080 'month = buf_month
52090 'sp_on 14,0
52100 'goto Input_Born_Day:
52110 'else
52120 'goto Input_Born_Month2:
52130 'endif
52140 end select
52150 endif
52160 '左の丸ボタン　キャンセル
52170 if (bg2=2) then
52180 select case count2
52190 case 0:
52200 if (No = -1) then
52210 buf_male_month=0:buf_male_Month$="**"
52220 count=0
52230 'goto rewrite2:
52240 else
52250 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
52260 buf_male_month = 0:buf_male_Month$ = "**"
52270 locate 0,3
52280 color rgb(255,255,255)
52290 print "                                       "
52300 goto rewrite2:
52310 if (No>12) then
52320 ui_msg"値が範囲外です。"
52330 goto rewrite2:
52340 endif
52350 endif
52360 endif
52370 rewrite2:
52380 locate 2,3
52390 color rgb(255,255,255)
52400 print "                                      "
52410 locate 2,3
52420 print "男性の生まれた月(1月~12月):"+buf_male_Month$
52430 goto Danjyo_Aisyou_Input_Male_Born_Month2:
52440 end select
52450 'endif
52460 endif
52470 end
52480 '-------生まれた月　男性 ここまで-------------
52490 '-------生まれた日　男性 ここから-------------
52500 Danjyo_Aisyou_Input_Male_Born_Day:
52510 cls 3:play "":count=0:count2=0
52520 'No=-1:Okのとき
52530 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_male_Day$ = "**":buf_male_day = 0
52540 for i=0 to 1
52550 buf_day(i)=0
52560 next i
52570 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
52580 '****************************************************************************************************
52590 'WUXG(1920x1200)の時ここから
52600 '****************************************************************************************************
52610 gload Gazo$ + "Screen1.png",0,0,0
52620 gload Gazo$ + "downscreen.png",0,0,800
52630 '****************************************************************************************************
52640 'WUXG(1920x1200)の時ここまで
52650 '****************************************************************************************************
52660 'Init"kb:4"
52670 '音声ファイル再生 2023.06.07
52680 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
52690 font 48
52700 locate 0,1
52710 '文字色：黒　 color rgb(0,0,0)
52720 '文字色:白
52730 color rgb(255,255,255)
52740 print "男性の生まれた日を入れて下さい" + chr$(13)
52750 '文字色:白
52760 color rgb(255,255,255)
52770 locate 1,3
52780 '文字色:白
52790 print "男性の生まれた日(1月~31月):" + buf_Day$
52800 color rgb(255,255,255)
52810 'locate 4,6:print ":7"
52820 'locate 9,6:print ":8"
52830 'locate 12,6:print ":9"
52840 locate 4,6
52850 '文字色:赤
52860 print ":7  :8  :9" + chr$(13)
52870 color rgb(255,255,255)
52880 locate 4,8
52890 print ":4  :5  :6" + chr$(13)
52900 color rgb(255,255,255)
52910 locate 4,10
52920 print ":1  :2  :3" + chr$(13)
52930 locate 4,12
52940 print "    :0"
52950 locate 12,12
52960 color rgb(0,0,255)
52970 print ":Ok"
52980 sp_on 4,0: sp_on 5,0:sp_on 6,0
52990 sp_on 7,0:sp_on 8,0:sp_on 9,0
53000 sp_on 10,0:sp_on 11,0:sp_on 12,0
53010 sp_on 13,0:sp_on 14,1
53020 '-------------------------------------------------
53030 Danjyo_Aisyou_Input_Male_Born_Day2:
53040 key$="":bg=0:y=0:y2=0:bg2=0
53050 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
53060 key$ = inkey$
53070 bg = strig(1)
53080 y = stick(1)
53090 y2 = stick(0)
53100 bg2 = strig(0)
53110 pause 200
53120 wend
53130 '十字キー　ここから
53140 '上の矢印　または、十字キー上
53150 if ((y = -1) or (key$ = chr$(30))) then
53160 select case No
53170 'No=-1:okのとき:初期の状態
53180 '0kボタンから３に移動
53190 '上に行く 処理
53200 case -1:
53210 No=3:sp_on 12,1:sp_on 14,0
53220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53230 '選択肢:3
53240 '3ボタンから 6に移動
53250 case 3:
53260 No=6:sp_on 12,0:sp_on 11,1
53270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53280 '6ボタンから ９に移動
53290 case 6:
53300 No=9:sp_on 10,1:sp_on 11,0
53310 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53320 '6ボタンから ９に移動　ここまで
53330 '9で上を押して何もしない
53340 case 9:
53350 '何もしない
53360 No=9
53370 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53380 '9で上を押しても何もしない　ここまで
53390 '上　 0ボタンから2ボタン
53400 'sp_on 6,1:1
53410 'sp_on 8,1:5
53420 'sp_on 7,1:7
53430 case 0:
53440 No=2:sp_on 13,0:sp_on 9,1:
53450 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53460 '上  0ボタンから2ボタン　ここまで
53470 '2から５になる 上
53480 case 2:
53490 No=5:sp_on 8,1:sp_on 9,0:
53500 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53510 case 5:
53520 No=8:sp_on 7,1:sp_on 8,0
53530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53540 case 8:
53550 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53560 case 1:
53570 No=4:sp_on 5,1:sp_on 6,0
53580 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53590 case 4:
53600 No=7:sp_on 4,1:sp_on 5,0
53610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53620 case 7:
53630 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53640 end select
53650 endif
53660 '左３　ここまで
53670 '下の矢印
53680 '中央 2
53690 if ((y=1) or (key$ = chr$(31))) then
53700 select case No
53710 '9から６に下げる
53720 case 9:
53730 No=6:sp_on 11,1:sp_on 10,0
53740 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53750 '6から３に下げる
53760 case 6:
53770 No=3:sp_on 12,1:sp_on 11,0
53780 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53790 '3から０ｋに変える
53800 case 3:
53810 No=-1:sp_on 14,1:sp_on 12,0
53820 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53830 'Okから下のボタンを押しても何もしない
53840 case -1:
53850 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53860 case 8:
53870 No=5:sp_on 8,1:sp_on 7,0
53880 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53890 case 5:
53900 No=2:sp_on 9,1:sp_on 8,0
53910 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53920 case 2:
53930 No=0:sp_on 13,1:sp_on 9,0
53940 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53950 case 0:
53960 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
53970 case 7:
53980 No=4:sp_on 5,1:sp_on 4,0
53990 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54000 case 4:
54010 No=1:sp_on 6,1:sp_on 5,0
54020 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54030 case 1:
54040 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54050 end select
54060 endif
54070 '左へボタン 十字キー　左　or 　カーソル左
54080 if ((y2 = -1) or (key$ = chr$(29))) then
54090 select case No
54100 'Ok ボタン  Okから　左　０に行く
54110 case -1:
54120 No=0:sp_on 13,1:sp_on 14,0
54130 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54140 '0 ボタン  左　何もしない
54150 case 0:
54160 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54170 case 3:
54180 No=2:sp_on 9,1:sp_on 12,0:
54190 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54200 case 2:
54210 No=1:sp_on 6,1:sp_on 9,0:
54220 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54230 case 1:
54240 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54250 case 6:
54260 No=5:sp_on 8,1:sp_on 11,0
54270 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54280 case 5:
54290 No=4:sp_on 5,1:sp_on 8,0
54300 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54310 case 4:
54320 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54330 case 9:
54340 No=8:sp_on 7,1:sp_on 10,0
54350 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54360 case 8:
54370 No=7:sp_on 4,1:sp_on 7,0
54380 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54390 case 7:
54400 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54410 end select
54420 endif
54430 '右  十字キー　右　or カーソル　右
54440 if ((y2 = 1) or (key$ = chr$(28))) then
54450 select case No
54460 '0ボタンからokボタン右に移動
54470 case 0:
54480 No=-1:sp_on 14,1:sp_on 13,0
54490 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54500 '0ボタンからokボタン 右に移動　ここまで
54510 'OKボタンで右を押して何もしない
54520 case -1:
54530 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54540 case 1:
54550 No=2:sp_on 9,1:sp_on 6,0
54560 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54570 case 2:
54580 No=3:sp_on 12,1:sp_on 9,0
54590 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54600 case 3:
54610 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54620 case 4:
54630 No=5:sp_on 8,1:sp_on 5,0
54640 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54650 case 5:
54660 No=6:sp_on 11,1:sp_on 8,0
54670 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54680 case 7:
54690 No=8:sp_on 7,1:sp_on 4,0
54700 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54710 case 8:
54720 No=9:sp_on 10,1:sp_on 7,0
54730 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54740 case 9:
54750 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54760 case 6:
54770 pause 200:goto Danjyo_Aisyou_Input_Male_Born_Day2:
54780 end select
54790 'Okから右ボタンを押して何もしない ここまで
54800 endif
54810 '十字キー　ここまで
54820 '右の丸ボタン + Enter key 決定キー
54830 if ((bg=2) or (key$=chr$(13))) then
54840 select case count
54850 case 0:
54860 if (No=-1) then No=0
54870 count = 1:buf_male_Day$ = "**":buf_male_Day$ = str$(No):buf_male_day = No:c=No
54880 if (buf_male_day > 1 and buf_male_day < 10)  then
54890 buf_male_Day$ = str$(buf_male_day)
54900 'buf_month=No
54910 endif
54920 if (buf_male_day = 1)  then
54930 buf_male_Day$ = str$(buf_male_day) + "*"
54940 'c=buf_month
54950 endif
54960 locate 1,3
54970 print "                                     "
54980 color RGB(255,255,255)
54990 locate 1,3
55000 print "男性の生まれた日(1月~31月):" + buf_male_Day$
55010 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55020 case 1:
55030 count = 2:
55040 'c = val(buf_Month$)
55050 if (No = -1) then
55060 'count=0
55070 No=0
55080 day=buf_male_Day
55090 buf_male_Day=val(buf_male_Day$)
55100 day=buf_male_Day
55110 buf_Jyoushi_Born_Day(2)=day
55120 '生まれた日に飛ぶ
55130 goto Danjyo_Aisyou_Input_Male_Born_Day:
55140 else
55150 buf_male_Day = c*10 + No
55160 'if (buf_month = 1) then
55170 'buf_Month$ = str$(buf_month)
55180 'endif
55190 buf_male_Day$ = str$(buf_male_Day)
55200 buf_male_Born_Day(2) = buf_male_Day:
55210 locate 0,3
55220 print "                                           "
55230 locate 1,3
55240 color Rgb(255,255,255)
55250 print "男性の生まれた月(1月~12月):" + buf_male_Day$
55260 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55270 endif
55280 case 2:
55290 '==================================
55300 '何もしない
55310 'coun = 2
55320 '==================================
55330 'c= val(buf_Month$)
55340 'buf_month = c*10 + No
55350 'buf_Month$ = str$(buf_month)
55360 'locate 2,3
55370 'print "上司の生まれた月(1月～12月):";buf_Month$
55380 'goto Jyoushi_Input_Born_Month2:
55390 'case 3:
55400 'count=4
55410 'b=val(buf_month$)
55420 'buf_month=c*10+No
55430 'buf_Month$=str$(buf_month)
55440 'locate 2,3
55450 'print "上司の生まれた月(1月～12月):";buf_Month$
55460 'buf_month=val(buf_Month$)
55470 'year=val(buf_year$)
55480 if (No=-1) then
55490 No=0
55500 goto Danjyo_Aisyou_Input_Male_Born_Day:
55510 else
55520 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55530 endif
55540 'case 4:
55550 'bufyear=buf_year
55560 'if (No=-1) then
55570 'buf_month = val(buf_Month$)
55580 'month = buf_month
55590 'sp_on 14,0
55600 'goto Input_Born_Day:
55610 'else
55620 'goto Input_Born_Month2:
55630 'endif
55640 end select
55650 endif
55660 '左の丸ボタン　キャンセル
55670 if (bg2=2) then
55680 select case count2
55690 case 0:
55700 if (No = -1) then
55710 buf_male_day=0:buf_male_Day$="**"
55720 count=0
55730 'goto rewrite2:
55740 else
55750 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
55760 buf_male_day = 0:buf_male_Day$ = "**"
55770 locate 0,3
55780 color rgb(255,255,255)
55790 print "                                       "
55800 goto rewrite2:
55810 if (No>12) then
55820 ui_msg"値が範囲外です。"
55830 goto rewrite2:
55840 endif
55850 endif
55860 endif
55870 rewrite2:
55880 locate 2,3
55890 color rgb(255,255,255)
55900 print "                                      "
55910 locate 2,3
55920 print "男性の生まれた日(1月~31月):"+buf_male_Day$
55930 goto Danjyo_Aisyou_Input_Male_Born_Day2:
55940 end select
55950 'endif
55960 endif
55970 end
55980 '-------生まれた日　女性　ここまで-------------
55990 '1-1.女性の名前を入力
56000 Danjyo_Aisyou_Input_Name_female:
56010 No=0:color RGB(255,255,255)
56020 '入力:キーボード
56030 cls 3:init "kb:2"
56040 '****************************************************************************************************
56050 'WUXG(1920x1200)の時ここから
56060 '****************************************************************************************************
56070 gload Gazo$ + "Screen1.png",0,0,0
56080 gload Gazo$ + "downscreen.png",0,0,800
56090 '****************************************************************************************************
56100 'WUXG(1920x1200)の時ここまで
56110 '****************************************************************************************************
56120 play "":color rgb(255,0,0):female_name$ = ""
56130 locate 0,1
56140 print "女性の相性" + chr$(13) + chr$(13)
56150 color rgb(255,255,255):
56160 locate 0,3
56170 print "女性の相性を求めます。男性の名前を" + chr$(13)
56180 print "入れてください" + chr$(13)
56190 locate 0,15:color rgb(0,0,0)
56200 Input "女性の名前:",female_name$
56210 '-------------------------------------------
56220 '-------生まれた年代　女性 ここから-------------
56230 Danjyo_Aisyou_Input_feMale_Born_Year:
56240 cls 3:play "":count=0:count2=0
56250 'No=-1:Okのとき
56260 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Year$ = "****":buf_female_year = 0
56270 for i=0 to 1
56280 buf_day(i)=0
56290 next i
56300 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
56310 gload Gazo$ + "Screen1.png",0,0,0
56320 gload Gazo$ + "downscreen.png",0,0,800
56330 'Init"kb:4"
56340 '音声ファイル再生 2023.06.07
56350 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
56360 '****************************************************************************************************
56370 'WUXG(1920x1200)の時ここから
56380 '****************************************************************************************************
56390 font 48
56400 '****************************************************************************************************
56410 'WUXG(1920x1200)の時ここまで
56420 '****************************************************************************************************
56430 locate 0,1
56440 '文字色：黒　 color rgb(0,0,0)
56450 '文字色:白
56460 color rgb(255,255,255)
56470 print "女性の生まれた年代を入れて下さい" + chr$(13)
56480 '文字色:白
56490 color rgb(255,255,255)
56500 locate 1,3
56510 '文字色:白
56520 print "女性の生まれた年代(西暦4桁):" + buf_female_Year$
56530 color rgb(255,255,255)
56540 'locate 4,6:print ":7"
56550 'locate 9,6:print ":8"
56560 'locate 12,6:print ":9"
56570 locate 4,6
56580 '文字色:赤
56590 print ":7  :8  :9" + chr$(13)
56600 color rgb(255,255,255)
56610 locate 4,8
56620 print ":4  :5  :6" + chr$(13)
56630 color rgb(255,255,255)
56640 locate 4,10
56650 print ":1  :2  :3" + chr$(13)
56660 locate 4,12
56670 print "    :0"
56680 locate 12,12
56690 color rgb(0,0,255)
56700 print ":Ok"
56710 sp_on 4,0: sp_on 5,0:sp_on 6,0
56720 sp_on 7,0:sp_on 8,0:sp_on 9,0
56730 sp_on 10,0:sp_on 11,0:sp_on 12,0
56740 sp_on 13,0:sp_on 14,1
56750 '---------------------------------------------
56760 Danjyo_Aisyou_Input_feMale_Born_Year2:
56770 key$="":bg=0:y=0:y2=0:bg2=0:
56780 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
56790 key$ = inkey$
56800 bg = strig(1)
56810 y = stick(1)
56820 y2 = stick(0)
56830 bg2=strig(0)
56840 pause 200
56850 wend
56860 '十字キー　ここから
56870 '上の矢印　または、十字キー上
56880 if ((y = -1) or (key$ = chr$(30))) then
56890 select case No
56900 'No=-1:okのとき:初期の状態
56910 '0kボタンから３に移動
56920 '上に行く 処理
56930 case -1:
56940 No=3:sp_on 12,1:sp_on 14,0
56950 pause 200:gotoDanjyo_Aisyou_Input_feMale_Born_Year2:
56960 '選択肢:3
56970 '3ボタンから 6に移動
56980 case 3:
56990 No=6:sp_on 12,0:sp_on 11,1
57000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57010 '6ボタンから ９に移動
57020 case 6:
57030 No=9:sp_on 10,1:sp_on 11,0
57040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57050 '6ボタンから ９に移動　ここまで
57060 '9で上を押して何もしない
57070 case 9:
57080 '何もしない
57090 No=9
57100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57110 '9で上を押しても何もしない　ここまで
57120 '上　 0ボタンから2ボタン
57130 'sp_on 6,1:1
57140 'sp_on 8,1:5
57150 'sp_on 7,1:7
57160 case 0:
57170 No=2:sp_on 13,0:sp_on 9,1:
57180 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57190 '上  0ボタンから2ボタン　ここまで
57200 '2から５になる 上
57210 case 2:
57220 No=5:sp_on 8,1:sp_on 9,0:
57230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57240 case 5:
57250 No=8:sp_on 7,1:sp_on 8,0
57260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57270 case 8:
57280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57290 case 1:
57300 No=4:sp_on 5,1:sp_on 6,0
57310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57320 case 4:
57330 No=7:sp_on 4,1:sp_on 5,0
57340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57350 case 7:
57360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57370 end select
57380 endif
57390 '左３　ここまで
57400 '下の矢印
57410 '中央 2
57420 if ((y=1) or (key$ = chr$(31))) then
57430 select case No
57440 '9から６に下げる
57450 case 9:
57460 No=6:sp_on 11,1:sp_on 10,0
57470 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57480 '6から３に下げる
57490 case 6:
57500 No=3:sp_on 12,1:sp_on 11,0
57510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57520 '3から０ｋに変える
57530 case 3:
57540 No=-1:sp_on 14,1:sp_on 12,0
57550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57560 'Okから下のボタンを押しても何もしない
57570 case -1:
57580 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57590 case 8:
57600 No=5:sp_on 8,1:sp_on 7,0
57610 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57620 case 5:
57630 No=2:sp_on 9,1:sp_on 8,0
57640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57650 case 2:
57660 No=0:sp_on 13,1:sp_on 9,0
57670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57680 case 0:
57690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57700 case 7:
57710 No=4:sp_on 5,1:sp_on 4,0
57720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57730 case 4:
57740 No=1:sp_on 6,1:sp_on 5,0
57750 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57760 case 1:
57770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57780 end select
57790 endif
57800 '左へボタン 十字キー　左　or 　カーソル左
57810 if ((y2 = -1) or (key$ = chr$(29))) then
57820 select case No
57830 'Ok ボタン  Okから　左　０に行く
57840 case -1:
57850 No=0:sp_on 13,1:sp_on 14,0
57860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57870 '0 ボタン  左　何もしない
57880 case 0:
57890 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57900 case 3:
57910 No=2:sp_on 9,1:sp_on 12,0:
57920 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57930 case 2:
57940 No=1:sp_on 6,1:sp_on 9,0:
57950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57960 case 1:
57970 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
57980 case 6:
57990 No=5:sp_on 8,1:sp_on 11,0
58000 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58010 case 5:
58020 No=4:sp_on 5,1:sp_on 8,0
58030 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58040 case 4:
58050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58060 case 9:
58070 No=8:sp_on 7,1:sp_on 10,0
58080 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58090 case 8:
58100 No=7:sp_on 4,1:sp_on 7,0
58110 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58120 case 7:
58130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58140 end select
58150 endif
58160 '右  十字キー　右　or カーソル　右
58170 if ((y2 = 1) or (key$ = chr$(28))) then
58180 select case No
58190 '0ボタンからokボタン右に移動
58200 case 0:
58210 No=-1:sp_on 14,1:sp_on 13,0
58220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58230 '0ボタンからokボタン 右に移動　ここまで
58240 'OKボタンで右を押して何もしない
58250 case -1:
58260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58270 case 1:
58280 No=2:sp_on 9,1:sp_on 6,0
58290 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58300 case 2:
58310 No=3:sp_on 12,1:sp_on 9,0
58320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58330 case 3:
58340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58350 case 4:
58360 No=5:sp_on 8,1:sp_on 5,0
58370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58380 case 5:
58390 No=6:sp_on 11,1:sp_on 8,0
58400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58410 case 7:
58420 No=8:sp_on 7,1:sp_on 4,0
58430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58440 case 8:
58450 No=9:sp_on 10,1:sp_on 7,0
58460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58470 case 9:
58480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58490 case 6:
58500 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58510 end select
58520 'Okから右ボタンを押して何もしない ここまで
58530 endif
58540 '十字キー　ここまで
58550 '==============================
58560 'ここから
58570 '==============================
58580 if ((bg = 2) or (key$ = chr$(13))) then
58590 select case count
58600 case 0:
58610 count = 1
58620 if (No = -1) then
58630 count = 0:No=0
58640 buf_feMale_Born_Day(0) = No
58650 'Okボタンを押したとき
58660 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58670 else
58680 'Okボタン以外が押されたとき
58690 if (No >= 1 and No <= 2) then
58700 buf_female_year$="":buf_female_year$ = str$(No) + "***"
58710 buf_female_year = No:a= No
58720 buf_Jyoushi_Born_Day(0) = No
58730 locate 1,3
58740 color rgb(255,255,255)
58750 print "女性の生まれた年代(西暦4桁):";buf_female_year$
58760 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58770 else
58780 count=0
58790 ui_msg"数字が範囲外になります。"
58800 buf_female_year$="":buf_female_year=0
58810 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58820 endif
58830 endif
58840 case 1:
58850 count = 2
58860 if (No = -1) then
58870 count = 1
58880 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
58890 else
58900 buf_female_year = a * 10 + No
58910 b=buf_female_year
58920 buf_year$ = str$(buf_female_year) + "**"
58930 buf_Jyoushi_Born_Day(0)=buf_female_year
58940 locate 1,3
58950 color rgb(255,255,255)
58960 print "                                                                "
58970 locate 1,3
58980 print "女性の生まれた年代(西暦4桁):" + buf_female_year$
58990 'if (No = -1) then
59000 'count=1
59010 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59020 endif
59030 case 2:
59040 count=3
59050 if (No=-1) then
59060 count =2
59070 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59080 else
59090 buf_female_year = b * 10 + No
59100 c=buf_female_year
59110 buf_female_year$ = str$(buf_female_year) + "*"
59120 buf_Jyoushi_Born_Day(0) = buf_female_year
59130 locate 1,3
59140 color rgb(255,255,255)
59150 print "                                        "
59160 locate 1,3
59170 print "女性の生まれた年代(西暦4桁):";buf_female_year$
59180 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59190 endif
59200 case 3:
59210 count=4
59220 if (No = -1) then
59230 No=0
59240 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59250 else
59260 buf_female_year = c * 10 + No
59270 buf_female_year$ = str$(buf_female_year)
59280 buf_Jyoushi_Born_Day(0) = buf_female_year
59290 locate 1,3
59300 color RGB(255,255,255)
59310 print "                                      "
59320 locate 1,3
59330 print "女性の生まれた年代(西暦4桁):";buf_female_year$
59340 buf_female_year=val(buf_female_year$)
59350 'year=val(buf_year$)
59360 'if (No=-1) then
59370 'goto Input_Born_Month:
59380 'else
59390 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59400 endif
59410 case 4:
59420 'bufyear=buf_year
59430 if (No=-1) then
59440 buf_female_year = val(buf_female_year$)
59450 buf_Jyoushi_Born_Day(0)=buf_female_year
59460 sp_on 14,0:No=0
59470 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59480 else
59490 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59500 endif
59510 end select
59520 endif
59530 '===========================
59540 'ここまでを部下のところにコピーする.
59550 '===========================
59560 if (bg2 = 2) then
59570 select case count2
59580 case 0:
59590 if (No = -1) then
59600 buf_female_year=0:buf_female_year$=trim$(""):buf_female_year$=trim$("****")
59610 count=0
59620 locate 1,3
59630 color rgb(255,255,255)
59640 print "                                      "
59650 locate 1,3
59660 print "女性の生まれた年代（西暦4桁):" + buf_female_year$
59670 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59680 else
59690 '(buf_year=0) then
59700 buf_female_year=0:buf_year$="****"
59710 locate 1,3
59720 print "                                       "
59730 locate 1,3
59740 print "女性の生まれた年代(西暦4桁):"+buf_female_year$
59750 goto Danjyo_Aisyou_Input_feMale_Born_Year2:
59760 'endif
59770 endif
59780 end select
59790 endif
59800 '-------生まれた年代　女性 ここまで-------------
59810 '-------生まれた月　女性 ここまで--------------
59820 Danjyo_Aisyou_Input_feMale_Born_Month:
59830 cls 3:play "":count=0:count2=0
59840 'No=-1:Okのとき
59850 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Month$ = "**":buf_female_month=0
59860 for i=0 to 1
59870 buf_month(i)=0
59880 next i
59890 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
59900 '****************************************************************************************************
59910 'WUXG(1920x1200)の時ここから
59920 '****************************************************************************************************
59930 gload Gazo$ + "Screen1.png",0,0,0
59940 gload Gazo$ + "downscreen.png",0,0,800
59950 '****************************************************************************************************
59960 'WUXG(1920x1200)の時ここから
59970 '****************************************************************************************************
59980 'Init"kb:4"
59990 '音声ファイル再生 2023.06.07
60000 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
60010 font 48
60020 locate 0,1
60030 '文字色：黒　 color rgb(0,0,0)
60040 '文字色:白
60050 color rgb(255,255,255)
60060 print "女性の生まれた月を入れて下さい" + chr$(13)
60070 '文字色:白
60080 color rgb(255,255,255)
60090 locate 1,3
60100 '文字色:白
60110 print "女性の生まれた月(1月~12月):"+buf_female_Month$
60120 color rgb(255,255,255)
60130 'locate 4,6:print ":7"
60140 'locate 9,6:print ":8"
60150 'locate 12,6:print ":9"
60160 locate 4,6
60170 '文字色:赤
60180 print ":7  :8  :9" + chr$(13)
60190 color rgb(255,255,255)
60200 locate 4,8
60210 print ":4  :5  :6" + chr$(13)
60220 color rgb(255,255,255)
60230 locate 4,10
60240 print ":1  :2  :3" + chr$(13)
60250 locate 4,12
60260 print "    :0"
60270 locate 12,12
60280 color rgb(0,0,255)
60290 print ":Ok"
60300 sp_on 4,0: sp_on 5,0:sp_on 6,0
60310 sp_on 7,0:sp_on 8,0:sp_on 9,0
60320 sp_on 10,0:sp_on 11,0:sp_on 12,0
60330 sp_on 13,0:sp_on 14,1
60340 '---------------------------------------------
60350 Danjyo_Aisyou_Input_feMale_Born_Month2:
60360 key$="":bg=0:y=0:y2=0:bg2=0
60370 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
60380 key$ = inkey$
60390 bg = strig(1)
60400 y = stick(1)
60410 y2 = stick(0)
60420 bg2 = strig(0)
60430 pause 200
60440 wend
60450 '十字キー　ここから
60460 '上の矢印　または、十字キー上
60470 if ((y = -1) or (key$ = chr$(30))) then
60480 select case No
60490 'No=-1:okのとき:初期の状態
60500 '0kボタンから３に移動
60510 '上に行く 処理
60520 case -1:
60530 No=3:sp_on 12,1:sp_on 14,0
60540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60550 '選択肢:3
60560 '3ボタンから 6に移動
60570 case 3:
60580 No=6:sp_on 12,0:sp_on 11,1
60590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60600 '6ボタンから ９に移動
60610 case 6:
60620 No=9:sp_on 10,1:sp_on 11,0
60630 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60640 '6ボタンから ９に移動　ここまで
60650 '9で上を押して何もしない
60660 case 9:
60670 '何もしない
60680 No=9
60690 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60700 '9で上を押しても何もしない　ここまで
60710 '上　 0ボタンから2ボタン
60720 'sp_on 6,1:1
60730 'sp_on 8,1:5
60740 'sp_on 7,1:7
60750 case 0:
60760 No=2:sp_on 13,0:sp_on 9,1:
60770 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60780 '上  0ボタンから2ボタン　ここまで
60790 '2から５になる 上
60800 case 2:
60810 No=5:sp_on 8,1:sp_on 9,0:
60820 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60830 case 5:
60840 No=8:sp_on 7,1:sp_on 8,0
60850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60860 case 8:
60870 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60880 case 1:
60890 No=4:sp_on 5,1:sp_on 6,0
60900 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60910 case 4:
60920 No=7:sp_on 4,1:sp_on 5,0
60930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60940 case 7:
60950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
60960 end select
60970 endif
60980 '左３　ここまで
60990 '下の矢印
61000 '中央 2
61010 if ((y=1) or (key$ = chr$(31))) then
61020 select case No
61030 '9から６に下げる
61040 case 9:
61050 No=6:sp_on 11,1:sp_on 10,0
61060 pause 200:goto　Danjyo_Aisyou_Input_feMale_Born_Month2:
61070 '6から３に下げる
61080 case 6:
61090 No=3:sp_on 12,1:sp_on 11,0
61100 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61110 '3から０ｋに変える
61120 case 3:
61130 No=-1:sp_on 14,1:sp_on 12,0
61140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61150 'Okから下のボタンを押しても何もしない
61160 case -1:
61170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61180 case 8:
61190 No=5:sp_on 8,1:sp_on 7,0
61200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61210 case 5:
61220 No=2:sp_on 9,1:sp_on 8,0
61230 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61240 case 2:
61250 No=0:sp_on 13,1:sp_on 9,0
61260 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61270 case 0:
61280 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61290 case 7:
61300 No=4:sp_on 5,1:sp_on 4,0
61310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61320 case 4:
61330 No=1:sp_on 6,1:sp_on 5,0
61340 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61350 case 1:
61360 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61370 end select
61380 endif
61390 '左へボタン 十字キー　左　or 　カーソル左
61400 if ((y2 = -1) or (key$ = chr$(29))) then
61410 select case No
61420 'Ok ボタン  Okから　左　０に行く
61430 case -1:
61440 No=0:sp_on 13,1:sp_on 14,0
61450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61460 '0 ボタン  左　何もしない
61470 case 0:
61480 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61490 case 3:
61500 No=2:sp_on 9,1:sp_on 12,0:
61510 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61520 case 2:
61530 No=1:sp_on 6,1:sp_on 9,0:
61540 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61550 case 1:
61560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61570 case 6:
61580 No=5:sp_on 8,1:sp_on 11,0
61590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61600 case 5:
61610 No=4:sp_on 5,1:sp_on 8,0
61620 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61630 case 4:
61640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61650 case 9:
61660 No=8:sp_on 7,1:sp_on 10,0
61670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61680 case 8:
61690 No=7:sp_on 4,1:sp_on 7,0
61700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61710 case 7:
61720 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61730 end select
61740 endif
61750 '右  十字キー　右　or カーソル　右
61760 if ((y2 = 1) or (key$ = chr$(28))) then
61770 select case No
61780 '0ボタンからokボタン右に移動
61790 case 0:
61800 No=-1:sp_on 14,1:sp_on 13,0
61810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61820 '0ボタンからokボタン 右に移動　ここまで
61830 'OKボタンで右を押して何もしない
61840 case -1:
61850 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61860 case 1:
61870 No=2:sp_on 9,1:sp_on 6,0
61880 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61890 case 2:
61900 No=3:sp_on 12,1:sp_on 9,0
61910 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61920 case 3:
61930 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61940 case 4:
61950 No=5:sp_on 8,1:sp_on 5,0
61960 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
61970 case 5:
61980 No=6:sp_on 11,1:sp_on 8,0
61990 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62000 case 7:
62010 No=8:sp_on 7,1:sp_on 4,0
62020 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62030 case 8:
62040 No=9:sp_on 10,1:sp_on 7,0
62050 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62060 case 9:
62070 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62080 case 6:
62090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62100 end select
62110 'Okから右ボタンを押して何もしない ここまで
62120 endif
62130 '十字キー　ここまで
62140 '右の丸ボタン + Enter key 決定キー
62150 if ((bg=2) or (key$=chr$(13))) then
62160 select case count
62170 case 0:
62180 if (No=-1) then No=0
62190 count = 1:buf_female_Month$ = "**":buf_female_Month$ = str$(No):buf_female_month = No:c=No
62200 if (buf_female_month > 1 and buf_female_month < 10)  then
62210 buf_female_Month$ = str$(buf_female_month)
62220 'buf_month=No
62230 endif
62240 if (buf_female_month = 1)  then
62250 buf_female_Month$ = str$(buf_female_month) + "*"
62260 'c=buf_month
62270 endif
62280 locate 1,3
62290 print "                                     "
62300 color RGB(255,255,255)
62310 locate 1,3
62320 print "女性の生まれた月(1月~12月):" + buf_female_Month$
62330 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62340 case 1:
62350 count = 2:
62360 'c = val(buf_Month$)
62370 if (No = -1) then
62380 'count=0
62390 No=0
62400 month=buf_female_month
62410 buf_female_month=val(buf_female_Month$)
62420 month=buf_female_month
62430 buf_Jyoushi_Born_Day(1)=month
62440 '生まれた日に飛ぶ
62450 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62460 else
62470 buf_female_month = c*10 + No
62480 'if (buf_month = 1) then
62490 'buf_Month$ = str$(buf_month)
62500 'endif
62510 buf_female_Month$ = str$(buf_female_month)
62520 buf_Jyoushi_Born_Day(1) = buf_female_month
62530 locate 0,3
62540 print "                                           "
62550 locate 1,3
62560 color Rgb(255,255,255)
62570 print "女性の生まれた月(1月~12月):" + buf_female_Month$
62580 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
62590 endif
62600 case 2:
62610 '==================================
62620 '何もしない
62630 'coun = 2
62640 '==================================
62650 'c= val(buf_Month$)
62660 'buf_month = c*10 + No
62670 'buf_Month$ = str$(buf_month)
62680 'locate 2,3
62690 'print "上司の生まれた月(1月～12月):";buf_Month$
62700 'goto Jyoushi_Input_Born_Month2:
62710 'case 3:
62720 'count=4
62730 'b=val(buf_month$)
62740 'buf_month=c*10+No
62750 'buf_Month$=str$(buf_month)
62760 'locate 2,3
62770 'print "上司の生まれた月(1月～12月):";buf_Month$
62780 'buf_month=val(buf_Month$)
62790 'year=val(buf_year$)
62800 if (No=-1) then
62810 No=0
62820 goto Danjyo_Aisyou_Input_Male_Born_Day:
62830 else
62840 goto Danjyo_Aisyou_Input_Male_Born_Day2:
62850 endif
62860 'case 4:
62870 'bufyear=buf_year
62880 'if (No=-1) then
62890 'buf_month = val(buf_Month$)
62900 'month = buf_month
62910 'sp_on 14,0
62920 'goto Input_Born_Day:
62930 'else
62940 'goto Input_Born_Month2:
62950 'endif
62960 end select
62970 endif
62980 '左の丸ボタン　キャンセル
62990 if (bg2=2) then
63000 select case count2
63010 case 0:
63020 if (No = -1) then
63030 buf_female_month=0:buf_female_Month$="**"
63040 count=0
63050 'goto rewrite2:
63060 else
63070 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
63080 buf_female_month = 0:buf_female_Month$ = "**"
63090 locate 0,3
63100 color rgb(255,255,255)
63110 print "                                       "
63120 goto rewrite2:
63130 if (No>12) then
63140 ui_msg"値が範囲外です。"
63150 goto rewrite2:
63160 endif
63170 endif
63180 endif
63190 rewrite2:
63200 locate 2,3
63210 color rgb(255,255,255)
63220 print "                                      "
63230 locate 2,3
63240 print "女性の生まれた月(1月~12月):"+buf_female_Month$
63250 goto Danjyo_Aisyou_Input_feMale_Born_Month2:
63260 end select
63270 'endif
63280 endif
63290 end
63300 '-------生まれた月　女性 ここまで-------------
63310 '-------生まれた日　女性 ここまで-------------
63320 Danjyo_Aisyou_Input_feMale_Born_Day:
63330 cls 3:play "":count=0:count2=0
63340 'No=-1:Okのとき
63350 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_female_Day$ = "**":buf_female_day = 0
63360 for i=0 to 1
63370 buf_female_day(i)=0
63380 next i
63390 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
63400 '****************************************************************************************************
63410 'WUXG(1920x1200)の時ここから
63420 '****************************************************************************************************
63430 gload Gazo$ + "Screen1.png",0,0,0
63440 gload Gazo$ + "downscreen.png",0,0,800
63450 '****************************************************************************************************
63460 'WUXG(1920x1200)の時ここまで
63470 '****************************************************************************************************
63480 'Init"kb:4"
63490 '音声ファイル再生 2023.06.07
63500 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
63510 font 48
63520 locate 0,1
63530 '文字色：黒　 color rgb(0,0,0)
63540 '文字色:白
63550 color rgb(255,255,255)
63560 print "女性の生まれた日を入れて下さい" + chr$(13)
63570 '文字色:白
63580 color rgb(255,255,255)
63590 locate 1,3
63600 '文字色:白
63610 print "女性の生まれた日(1月~31月):" + buf_female_Day$
63620 color rgb(255,255,255)
63630 'locate 4,6:print ":7"
63640 'locate 9,6:print ":8"
63650 'locate 12,6:print ":9"
63660 locate 4,6
63670 '文字色:赤
63680 print ":7  :8  :9" + chr$(13)
63690 color rgb(255,255,255)
63700 locate 4,8
63710 print ":4  :5  :6" + chr$(13)
63720 color rgb(255,255,255)
63730 locate 4,10
63740 print ":1  :2  :3" + chr$(13)
63750 locate 4,12
63760 print "    :0"
63770 locate 12,12
63780 color rgb(0,0,255)
63790 print ":Ok"
63800 sp_on 4,0: sp_on 5,0:sp_on 6,0
63810 sp_on 7,0:sp_on 8,0:sp_on 9,0
63820 sp_on 10,0:sp_on 11,0:sp_on 12,0
63830 sp_on 13,0:sp_on 14,1
63840 '---------------------------------------------
63850 Danjyo_Aisyou_Input_feMale_Born_Day2:
63860 key$="":bg=0:y=0:y2=0:bg2=0
63870 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
63880 key$ = inkey$
63890 bg = strig(1)
63900 y = stick(1)
63910 y2 = stick(0)
63920 bg2 = strig(0)
63930 pause 200
63940 wend
63950 '十字キー　ここから
63960 '上の矢印　または、十字キー上
63970 if ((y = -1) or (key$ = chr$(30))) then
63980 select case No
63990 'No=-1:okのとき:初期の状態
64000 '0kボタンから３に移動
64010 '上に行く 処理
64020 case -1:
64030 No=3:sp_on 12,1:sp_on 14,0
64040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64050 '選択肢:3
64060 '3ボタンから 6に移動
64070 case 3:
64080 No=6:sp_on 12,0:sp_on 11,1
64090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64100 '6ボタンから ９に移動
64110 case 6:
64120 No=9:sp_on 10,1:sp_on 11,0
64130 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64140 '6ボタンから ９に移動　ここまで
64150 '9で上を押して何もしない
64160 case 9:
64170 '何もしない
64180 No=9
64190 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64200 '9で上を押しても何もしない　ここまで
64210 '上　 0ボタンから2ボタン
64220 'sp_on 6,1:1
64230 'sp_on 8,1:5
64240 'sp_on 7,1:7
64250 case 0:
64260 No=2:sp_on 13,0:sp_on 9,1:
64270 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64280 '上  0ボタンから2ボタン　ここまで
64290 '2から５になる 上
64300 case 2:
64310 No=5:sp_on 8,1:sp_on 9,0:
64320 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64330 case 5:
64340 No=8:sp_on 7,1:sp_on 8,0
64350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64360 case 8:
64370 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64380 case 1:
64390 No=4:sp_on 5,1:sp_on 6,0
64400 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64410 case 4:
64420 No=7:sp_on 4,1:sp_on 5,0
64430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64440 case 7:
64450 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64460 end select
64470 endif
64480 '左３　ここまで
64490 '下の矢印
64500 '中央 2
64510 if ((y=1) or (key$ = chr$(31))) then
64520 select case No
64530 '9から６に下げる
64540 case 9:
64550 No=6:sp_on 11,1:sp_on 10,0
64560 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64570 '6から３に下げる
64580 case 6:
64590 No=3:sp_on 12,1:sp_on 11,0
64600 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64610 '3から０ｋに変える
64620 case 3:
64630 No=-1:sp_on 14,1:sp_on 12,0
64640 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64650 'Okから下のボタンを押しても何もしない
64660 case -1:
64670 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64680 case 8:
64690 No=5:sp_on 8,1:sp_on 7,0
64700 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64710 case 5:
64720 No=2:sp_on 9,1:sp_on 8,0
64730 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64740 case 2:
64750 No=0:sp_on 13,1:sp_on 9,0
64760 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64770 case 0:
64780 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64790 case 7:
64800 No=4:sp_on 5,1:sp_on 4,0
64810 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64820 case 4:
64830 No=1:sp_on 6,1:sp_on 5,0
64840 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64850 case 1:
64860 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64870 end select
64880 endif
64890 '左へボタン 十字キー　左　or 　カーソル左
64900 if ((y2 = -1) or (key$ = chr$(29))) then
64910 select case No
64920 'Ok ボタン  Okから　左　０に行く
64930 case -1:
64940 No=0:sp_on 13,1:sp_on 14,0
64950 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64960 '0 ボタン  左　何もしない
64970 case 0:
64980 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
64990 case 3:
65000 No=2:sp_on 9,1:sp_on 12,0:
65010 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65020 case 2:
65030 No=1:sp_on 6,1:sp_on 9,0:
65040 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65050 case 1:
65060 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65070 case 6:
65080 No=5:sp_on 8,1:sp_on 11,0
65090 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65100 case 5:
65110 No=4:sp_on 5,1:sp_on 8,0
65120 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65130 case 4:
65140 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65150 case 9:
65160 No=8:sp_on 7,1:sp_on 10,0
65170 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65180 case 8:
65190 No=7:sp_on 4,1:sp_on 7,0
65200 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65210 case 7:
65220 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65230 end select
65240 endif
65250 '右  十字キー　右　or カーソル　右
65260 if ((y2 = 1) or (key$ = chr$(28))) then
65270 select case No
65280 '0ボタンからokボタン右に移動
65290 case 0:
65300 No=-1:sp_on 14,1:sp_on 13,0
65310 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65320 '0ボタンからokボタン 右に移動　ここまで
65330 'OKボタンで右を押して何もしない
65340 case -1:
65350 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65360 case 1:
65370 No=2:sp_on 9,1:sp_on 6,0
65380 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65390 case 2:
65400 No=3:sp_on 12,1:sp_on 9,0
65410 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65420 case 3:
65430 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65440 case 4:
65450 No=5:sp_on 8,1:sp_on 5,0
65460 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65470 case 5:
65480 No=6:sp_on 11,1:sp_on 8,0
65490 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65500 case 7:
65510 No=8:sp_on 7,1:sp_on 4,0
65520 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65530 case 8:
65540 No=9:sp_on 10,1:sp_on 7,0
65550 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65560 case 9:
65570 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65580 case 6:
65590 pause 200:goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65600 end select
65610 'Okから右ボタンを押して何もしない ここまで
65620 endif
65630 '十字キー　ここまで
65640 '右の丸ボタン + Enter key 決定キー
65650 if ((bg=2) or (key$=chr$(13))) then
65660 select case count
65670 case 0:
65680 if (No=-1) then No=0
65690 count = 1:buf_female_Day$ = "**":buf_female_Day$ = str$(No):buf_female_day = No:c=No
65700 if (buf_female_day > 1 and buf_female_day < 10)  then
65710 buf_female_Day$ = str$(buf_female_day)
65720 'buf_month=No
65730 endif
65740 if (buf_female_day = 1)  then
65750 buf_female_Day$ = str$(buf_female_day) + "*"
65760 'c=buf_month
65770 endif
65780 locate 1,3
65790 print "                                     "
65800 color RGB(255,255,255)
65810 locate 1,3
65820 print "女性の生まれた日(1月~31月):" + buf_female_Day$
65830 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65840 case 1:
65850 count = 2:
65860 'c = val(buf_Month$)
65870 if (No = -1) then
65880 'count=0
65890 No=0
65900 day=buf_female_day
65910 buf_female_day=val(buf_female_day$)
65920 day=bu_female_day
65930 buf_female_day(1)=day
65940 '生まれた日に飛ぶ
65950 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
65960 else
65970 bu_female_day = c*10 + No
65980 'if (buf_month = 1) then
65990 'buf_Month$ = str$(buf_month)
66000 'endif
66010 buf_female_day$ = str$(buf_female_day)
66020 buf_female_day(1) = buf_female_day
66030 locate 0,3
66040 print "                                           "
66050 locate 1,3
66060 color Rgb(255,255,255)
66070 print "女性の生まれた日(1月~31月):" + buf_female_Day$
66080 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
66090 endif
66100 case 2:
66110 '==================================
66120 '何もしない
66130 'coun = 2
66140 '==================================
66150 'c= val(buf_Month$)
66160 'buf_month = c*10 + No
66170 'buf_Month$ = str$(buf_month)
66180 'locate 2,3
66190 'print "上司の生まれた月(1月～12月):";buf_Month$
66200 'goto Jyoushi_Input_Born_Month2:
66210 'case 3:
66220 'count=4
66230 'b=val(buf_month$)
66240 'buf_month=c*10+No
66250 'buf_Month$=str$(buf_month)
66260 'locate 2,3
66270 'print "上司の生まれた月(1月～12月):";buf_Month$
66280 'buf_month=val(buf_Month$)
66290 'year=val(buf_year$)
66300 if (No=-1) then
66310 No=0
66320 goto Danjyo_Aisyou_Input_Male_Born_Day:
66330 else
66340 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
66350 endif
66360 'case 4:
66370 'bufyear=buf_year
66380 'if (No=-1) then
66390 'buf_month = val(buf_Month$)
66400 'month = buf_month
66410 'sp_on 14,0
66420 'goto Input_Born_Day:
66430 'else
66440 'goto Input_Born_Month2:
66450 'endif
66460 end select
66470 endif
66480 '左の丸ボタン　キャンセル
66490 if (bg2=2) then
66500 select case count2
66510 case 0:
66520 if (No = -1) then
66530 buf_female_day=0:buf_female_Day$="**"
66540 count=0
66550 'goto rewrite2:
66560 else
66570 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
66580 buf_female_day = 0:buf_female_Day$ = "**"
66590 locate 0,3
66600 color rgb(255,255,255)
66610 print "                                       "
66620 goto rewrite2:
66630 if (No>12) then
66640 ui_msg"値が範囲外です。"
66650 goto rewrite2:
66660 endif
66670 endif
66680 endif
66690 rewrite2:
66700 locate 2,3
66710 color rgb(255,255,255)
66720 print "                                      "
66730 locate 2,3
66740 print "女性の生まれた日(1月~31月):"+buf_female_Day$
66750 goto Danjyo_Aisyou_Input_feMale_Born_Day2:
66760 end select
66770 'endif
66780 endif
66790 end
66800 '-------生まれた日　女性 ここまで-------------
66810 '1.男女の相性 ここまで
66820 '2.ビジネスの相性　
66830 '1.1人目のビジネスの相性　名前入力　1人目
66840 Business_Aishou_Input_1_parson:
66850 No=0:color RGB(255,255,255)
66860 cls 3:init "kb:2"
66870 '****************************************************************************************************
66880 'WUXG(1920x1200)の時ここから
66890 '****************************************************************************************************
66900 gload Gazo$ + "Screen1.png",0,0,0
66910 gload Gazo$ + "downscreen.png",0,0,800
66920 '****************************************************************************************************
66930 'WUXG(1920x1200)の時ここまで
66940 '****************************************************************************************************
66950 play "":color rgb(255,0,0):name$ = ""
66960 locate 0,1
66970 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
66980 color rgb(255,255,255):
66990 locate 0,3
67000 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
67010 print "入れてください" + chr$(13)
67020 locate 0,15:color rgb(0,0,0)
67030 Input "1人目の名前:",name$
67040 'color rgb(0,0,0)
67050 'locate 0,13:print "                                     "
67060 'locate 0,13:print "1人目の名前を入力してエンターキー":
67070 'buffer_name$(0):1人目の名前
67080 buffer_name$(0) = name$:
67090 goto Business_Aishou_Input_2_Parson:
67100 '2.2人目のビジネスの相性 名前入力 2人目
67110 Business_Aishou_Input_2_Parson:
67120 cls 3:init "kb:2":name$ = "":No=0
67130 '****************************************************************************************************
67140 'WUXG(1920x1200)の時ここから
67150 '****************************************************************************************************
67160 gload Gazo$ + "Screen1.png",0,0,0
67170 gload Gazo$ + "downscreen.png",0,0,800
67180 '****************************************************************************************************
67190 'WUXG(1920x1200)の時ここまで
67200 '****************************************************************************************************
67210 color rgb(255,0,0)
67220 'Title
67230 locate 0,1
67240 print "ビジネスの相性　2人目"
67250 locate 0,3
67260 color rgb(255,255,255)
67270 print "ビジネスの相性を求めます。2人目の名前を" + chr$(13)
67280 print "入れてください" + chr$(13)
67290 locate 0,15:color rgb(0,0,0)
67300 Input "2人目の名前:",name$
67310 'color rgb(0,0,0)
67320 'locate 0,15:print "                                              "
67330 'locate 0,15:print "2人目の名前を入力してエンター ":
67340 '2人目
67350 '2人目の名前を入れるに代入
67360 buffer_name$(1) = name$:
67370 goto Select_jyoushi:
67380 '3.上司の選択
67390 Select_jyoushi:
67400 '****************************************************************************************************
67410 'WUXG(1920x1200)の時ここから
67420 '****************************************************************************************************
67430 cls 3:gload Gazo$ + "Screen1.png",0,0,0
67440 gload Gazo$ + "downscreen.png",0,0,800
67450 '****************************************************************************************************
67460 'WUXG(1920x1200)の時ここまで
67470 '****************************************************************************************************
67480 init "kb:4":No=0
67490 color rgb(0,0,255)
67500 locate 1,1
67510 print "上司の選択"
67520 color rgb(255,255,255)
67530 locate 0,4:print "名前から上司の方を選んでください"
67540 locate 0,6
67550 print " :";buffer_name$(0);"が上 司";chr$(13)
67560 locate 0,8
67570 print " :";buffer_name$(1);"が上 司";chr$(13)
67580 locate 0,15:
67590 print "                                     "
67600 locate 0,15:color rgb(0,0,0)
67610 print "上司の方を選んで右の丸ボタン"
67620 sp_on 0,1:sp_on 1,0:sp_on 2,0
67630 Select_jyoushi2:
67640 'ここでNo=0をおいてはいけない
67650 y=0:key$="":bg=0:
67660 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
67670 y = stick(1)
67680 key$ = inkey$
67690 bg = strig(1)
67700 pause 5
67710 wend
67720 '1.カーソル下の処理　or 十字キーの下処理
67730 if ((key$ = chr$(31)) or (y = 1)) then
67740 select case No
67750 case 0:
67760 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
67770 case 1:
67780 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
67790 end select
67800 endif
67810 '2.カーソル上処理　or 十字キーの上の処理
67820 if ((key$ = chr$(30)) or (y = -1)) then
67830 select case No
67840 case 0:
67850 No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
67860 case 1:
67870 No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
67880 end select
67890 endif
67900 if ((key$ = chr$(13)) or (bg = 2)) then
67910 select case No
67920 case 0:
67930 '上司(name1)を配列に代入
67940 buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
67950 case 1:
67960 '上司（name2)を配列に代入
67970 buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_Input_Seireki:
67980 end select
67990 endif
68000 '3.決定ボタン　Enter or 右の丸ボタン
68010 '1.誕生日入力
68020 '1-1.生まれた年を入力
68030 'Jyoushi_born_year:
68040 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
68050 '---------------------------------------------'
68060 '誕生日入力(生れた年代)
68070 Jyoushi_Input_Seireki:
68080 'buf_Jyoushi_Born_Year:上司の生まれた年代
68090 'buf_Jyoushi_Born_Day(0) = born_year
68100 cls 3:play "":count=0:count2=0
68110 init"kb:4"
68120 'No=-1:Okのとき
68130 :key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_year$ = "****"
68140 for i=0 to 3
68150 buf_Jyoushi_Born_Day(i)=0
68160 next i
68170 '****************************************************************************************************
68180 'WUXG(1920x1200)の時ここから
68190 '****************************************************************************************************
68200 gload Gazo$ + "Screen2.png",0,0,0
68210 gload Gazo$ + "downscreen.png",0,0,800
68220 '****************************************************************************************************
68230 'WUXG(1920x1200)の時ここまで
68240 '****************************************************************************************************
68250 'Init"kb:2"
68260 '音声ファイル再生 2023.06.07
68270 play Voice$ + "Input_Born_Year_Jyoushi_20230831.mp3"
68280 font 48
68290 locate 0,1
68300 '文字色：黒　 color rgb(0,0,0)
68310 color rgb(255,255,255)
68320 print "上司の生まれた年代を入れて下さい" + chr$(13)
68330 color rgb(255,255,255)
68340 locate 1,3
68350 print "上司の生まれた年代(西暦4桁):";buf_year$
68360 color rgb(255,255,255)
68370 'locate 4,6:print ":7"
68380 'locate 9,6:print ":8"
68390 'locate 12,6:print ":9"
68400 'locate 4,6
68410 'print ":7  :8  :9" + chr$(13)
68420 'color rgb(255,255,255)
68430 'locate 4,8
68440 'print ":4  :5  :6" + chr$(13)
68450 'color rgb(255,255,255)
68460 'locate 4,10
68470 'print ":1  :2  :3" + chr$(13)
68480 'locate 4,12
68490 'print "    :0"
68500 'locate 12,12
68510 'color rgb(0,0,255)
68520 'print ":Ok"
68530 sp_on 4,0: sp_on 5,0:sp_on 6,0
68540 sp_on 7,0:sp_on 8,0:sp_on 9,0
68550 sp_on 10,0:sp_on 11,0:sp_on 12,0
68560 sp_on 13,0:sp_on 14,1
68570 Jyoushi_Input_Seireki2:
68580 key$="":bg=0:y=0:y2=0:bg2=0:
68590 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
68600 key$ = inkey$
68610 bg = strig(1)
68620 y = stick(1)
68630 y2 = stick(0)
68640 bg2=strig(0)
68650 pause 200
68660 wend
68670 '十字キー　ここから
68680 '上の矢印　または、十字キー上
68690 if ((y = -1) or (key$ = chr$(30))) then
68700 select case No
68710 'No=-1:okのとき:初期の状態
68720 '0kボタンから３に移動
68730 '上に行く 処理
68740 case -1:
68750 No=3:sp_on 12,1:sp_on 14,0
68760 pause 200:goto Jyoushi_Input_Seireki2:
68770 '選択肢:3
68780 '3ボタンから 6に移動
68790 case 3:
68800 No=6:sp_on 12,0:sp_on 11,1
68810 pause 200:goto Jyoushi_Input_Seireki2:
68820 '6ボタンから ９に移動
68830 case 6:
68840 No=9:sp_on 10,1:sp_on 11,0
68850 pause 200:goto Jyoushi_Input_Seireki2:
68860 '6ボタンから ９に移動　ここまで
68870 '9で上を押して何もしない
68880 case 9:
68890 '何もしない
68900 No=9
68910 pause 200:goto Jyoushi_Input_Seireki2:
68920 '9で上を押しても何もしない　ここまで
68930 '上　 0ボタンから2ボタン
68940 'sp_on 6,1:1
68950 'sp_on 8,1:5
68960 'sp_on 7,1:7
68970 case 0:
68980 No=2:sp_on 13,0:sp_on 9,1:
68990 pause 200:goto Jyoushi_Input_Seireki2:
69000 '上  0ボタンから2ボタン　ここまで
69010 '2から５になる 上
69020 case 2:
69030 No=5:sp_on 8,1:sp_on 9,0:
69040 pause 200:goto Jyoushi_Input_Seireki2:
69050 case 5:
69060 No=8:sp_on 7,1:sp_on 8,0
69070 pause 200:goto Jyoushi_Input_Seireki2:
69080 case 8:
69090 pause 200:goto Jyoushi_Input_Seireki2:
69100 case 1:
69110 No=4:sp_on 5,1:sp_on 6,0
69120 pause 200:goto Jyoushi_Input_Seireki2:
69130 case 4:
69140 No=7:sp_on 4,1:sp_on 5,0
69150 pause 200:goto Jyoushi_Input_Seireki2:
69160 case 7:
69170 pause 200:goto Jyoushi_Input_Seireki2:
69180 end select
69190 endif
69200 '左３　ここまで
69210 '下の矢印
69220 '中央 2
69230 if ((y=1) or (key$ = chr$(31))) then
69240 select case No
69250 '9から６に下げる
69260 case 9:
69270 No=6:sp_on 11,1:sp_on 10,0
69280 pause 200:goto Jyoushi_Input_Seireki2:
69290 '6から３に下げる
69300 case 6:
69310 No=3:sp_on 12,1:sp_on 11,0
69320 pause 200:goto Jyoushi_Input_Seireki2:
69330 '3から０ｋに変える
69340 case 3:
69350 No=-1:sp_on 14,1:sp_on 12,0
69360 pause 200:goto Jyoushi_Input_Seireki2:
69370 'Okから下のボタンを押しても何もしない
69380 case -1:
69390 pause 200:goto Jyoushi_Input_Seireki2:
69400 case 8:
69410 No=5:sp_on 8,1:sp_on 7,0
69420 pause 200:goto Jyoushi_Input_Seireki2:
69430 case 5:
69440 No=2:sp_on 9,1:sp_on 8,0
69450 pause 200:goto Jyoushi_Input_Seireki2:
69460 case 2:
69470 No=0:sp_on 13,1:sp_on 9,0
69480 pause 200:goto Jyoushi_Input_Seireki2:
69490 case 0:
69500 pause 200:goto Jyoushi_Input_Seireki2:
69510 case 7:
69520 No=4:sp_on 5,1:sp_on 4,0
69530 pause 200:goto Jyoushi_Input_Seireki2:
69540 case 4:
69550 No=1:sp_on 6,1:sp_on 5,0
69560 pause 200:goto Jyoushi_Input_Seireki2:
69570 case 1:
69580 pause 200:goto Jyoushi_Input_Seireki2:
69590 end select
69600 endif
69610 '左へボタン 十字キー　左　or 　カーソル左
69620 if ((y2 = -1) or (key$ = chr$(29))) then
69630 select case No
69640 'Ok ボタン  Okから　左　０に行く
69650 case -1:
69660 No=0:sp_on 13,1:sp_on 14,0
69670 pause 200:goto Jyoushi_Input_Seireki2:
69680 '0 ボタン  左　何もしない
69690 case 0:
69700 pause 200:goto Jyoushi_Input_Seireki2:
69710 case 3:
69720 No=2:sp_on 9,1:sp_on 12,0:
69730 pause 200:goto Jyoushi_Input_Seireki2:
69740 case 2:
69750 No=1:sp_on 6,1:sp_on 9,0:
69760 pause 200:goto Jyoushi_Input_Seireki2:
69770 case 1:
69780 pause 200:goto Jyoushi_Input_Seireki2:
69790 case 6:
69800 No=5:sp_on 8,1:sp_on 11,0
69810 pause 200:goto Jyoushi_Input_Seireki2:
69820 case 5:
69830 No=4:sp_on 5,1:sp_on 8,0
69840 pause 200:goto Jyoushi_Input_Seireki2:
69850 case 4:
69860 pause 200:goto Jyoushi_Input_Seireki2:
69870 case 9:
69880 No=8:sp_on 7,1:sp_on 10,0
69890 pause 200:goto Jyoushi_Input_Seireki2:
69900 case 8:
69910 No=7:sp_on 4,1:sp_on 7,0
69920 pause 200:goto Jyoushi_Input_Seireki2:
69930 case 7:
69940 pause 200:goto Jyoushi_Input_Seireki2:
69950 end select
69960 endif
69970 '右  十字キー　右　or カーソル　右
69980 if ((y2 = 1) or (key$ = chr$(28))) then
69990 select case No
70000 '0ボタンからokボタン右に移動
70010 case 0:
70020 No=-1:sp_on 14,1:sp_on 13,0
70030 pause 200:goto Jyoushi_Input_Seireki2:
70040 '0ボタンからokボタン 右に移動　ここまで
70050 'OKボタンで右を押して何もしない
70060 case -1:
70070 pause 200:goto Jyoushi_Input_Seireki2:
70080 case 1:
70090 No=2:sp_on 9,1:sp_on 6,0
70100 pause 200:goto Jyoushi_Input_Seireki2:
70110 case 2:
70120 No=3:sp_on 12,1:sp_on 9,0
70130 pause 200:goto Jyoushi_Input_Seireki2:
70140 case 3:
70150 pause 200:goto Jyoushi_Input_Seireki2:
70160 case 4:
70170 No=5:sp_on 8,1:sp_on 5,0
70180 pause 200:goto Jyoushi_Input_Seireki2:
70190 case 5:
70200 No=6:sp_on 11,1:sp_on 8,0
70210 pause 200:goto Jyoushi_Input_Seireki2:
70220 case 7:
70230 No=8:sp_on 7,1:sp_on 4,0
70240 pause 200:goto Jyoushi_Input_Seireki2:
70250 case 8:
70260 No=9:sp_on 10,1:sp_on 7,0
70270 pause 200:goto Jyoushi_Input_Seireki2:
70280 case 9:
70290 pause 200:goto Jyoushi_Input_Seireki2:
70300 case 6:
70310 pause 200:goto Jyoushi_Input_Seireki2:
70320 end select
70330 'Okから右ボタンを押して何もしない ここまで
70340 endif
70350 '十字キー　ここまで
70360 '==============================
70370 'ここから
70380 '==============================
70390 if ((bg = 2) or (key$ = chr$(13))) then
70400 select case count
70410 case 0:
70420 count = 1
70430 if (No = -1) then
70440 count = 0:No=0
70450 buf_Jyoushi_Born_Day(0) = No
70460 'Okボタンを押したとき
70470 goto Jyoushi_Input_Seireki2:
70480 else
70490 'Okボタン以外が押されたとき
70500 if (No >= 1 and No <= 2) then
70510 buf_year$="":buf_year$ = str$(No) + "***"
70520 buf_year = No:a= No
70530 buf_Jyoushi_Born_Day(0) = No
70540 locate 1,3
70550 color rgb(255,255,255)
70560 print "上司の生まれた年代(西暦4桁):";buf_year$
70570 goto Jyoushi_Input_Seireki2:
70580 else
70590 count=0
70600 ui_msg"数字が範囲外になります。"
70610 buf_year$="":buf_year=0
70620 goto Jyoushi_Input_Seireki2:
70630 endif
70640 endif
70650 case 1:
70660 count = 2
70670 if (No = -1) then
70680 count = 1
70690 goto Jyoushi_Input_Seireki2:
70700 else
70710 buf_year = a * 10 + No
70720 b=buf_year
70730 buf_year$ = str$(buf_year) + "**"
70740 buf_Jyoushi_Born_Day(0)=buf_year
70750 locate 1,3
70760 color rgb(255,255,255)
70770 print "                                                                "
70780 locate 1,3
70790 print "上司の生まれた年代(西暦4桁):" + buf_year$
70800 'if (No = -1) then
70810 'count=1
70820 goto Jyoushi_Input_Seireki2:
70830 endif
70840 case 2:
70850 count=3
70860 if (No=-1) then
70870 count =2
70880 goto Jyoushi_Input_Seireki2:
70890 else
70900 buf_year = b * 10 + No
70910 c=buf_year
70920 buf_year$ = str$(buf_year) + "*"
70930 buf_Jyoushi_Born_Day(0) = buf_year
70940 locate 1,3
70950 color rgb(255,255,255)
70960 print "                                        "
70970 locate 1,3
70980 print "上司の生まれた年代(西暦4桁):";buf_year$
70990 goto Jyoushi_Input_Seireki2:
71000 endif
71010 case 3:
71020 count=4
71030 if (No = -1) then
71040 No=0
71050 goto Jyoushi_Input_Seireki2:
71060 else
71070 buf_year = c * 10 + No
71080 buf_year$ = str$(buf_year)
71090 buf_Jyoushi_Born_Day(0) = buf_year
71100 locate 1,3
71110 color RGB(255,255,255)
71120 print "                                      "
71130 locate 1,3
71140 print "上司の生まれた年代(西暦4桁):";buf_year$
71150 buf_year=val(buf_year$)
71160 'year=val(buf_year$)
71170 'if (No=-1) then
71180 'goto Input_Born_Month:
71190 'else
71200 goto Jyoushi_Input_Seireki2:
71210 endif
71220 case 4:
71230 'bufyear=buf_year
71240 if (No=-1) then
71250 buf_year = val(buf_year$)
71260 buf_Jyoushi_Born_Day(0)=buf_year
71270 sp_on 14,0:No=0
71280 goto Jyoushi_Input_Born_Month:
71290 else
71300 goto Jyoushi_Input_Seireki2:
71310 endif
71320 end select
71330 endif
71340 '===========================
71350 'ここまでを部下のところにコピーする.
71360 '===========================
71370 if (bg2 = 2) then
71380 select case count2
71390 case 0:
71400 if (No = -1) then
71410 buf_year=0:buf_year$=trim$(""):buf_year$=trim$("****")
71420 count=0
71430 locate 1,3
71440 color rgb(255,255,255)
71450 print "                                      "
71460 locate 1,3
71470 print "上司の生まれた年代（西暦4桁):" + buf_year$
71480 goto Jyoushi_Input_Seireki2:
71490 else
71500 '(buf_year=0) then
71510 buf_year=0:buf_year$="****"
71520 locate 1,3
71530 print "                                       "
71540 locate 1,3
71550 print "上司の生まれた年代(西暦4桁):"+buf_year$
71560 goto Jyoushi_Input_Seireki2:
71570 'endif
71580 endif
71590 end select
71600 endif
71610 'Input"上司の生れた年代(4桁,〜2025年):",year
71620 'if year > 2025 then goto Jyoushi_Input_Seireki:
71630 'if year = 123 then cls 3:cls 4:goto Main_Screen:
71640 '"4桁目"
71650 'bufyear4 = fix(year / 1000)
71660 '"3桁目"
71670 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
71680 '"2桁目"
71690 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
71700 '"1桁目"
71710 'bufyear1 = fix((year - ((bufyear4*
71720 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
71730 '2.生まれた月を入力
71740 Jyoushi_Input_Born_Month:
71750 cls 3:play "":count=0:count2=0
71760 'No=-1:Okのとき
71770 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Month$ = "**":buf_month=0
71780 for i=0 to 1
71790 buf_month(i)=0
71800 next i
71810 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
71820 '****************************************************************************************************
71830 'WUXG(1920x1200)の時ここから
71840 '****************************************************************************************************
71850 gload Gazo$ + "Screen2.png",0,0,0
71860 gload Gazo$ + "downscreen.png",0,0,800
71870 '****************************************************************************************************
71880 'WUXG(1920x1200)の時ここまで
71890 '****************************************************************************************************
71900 'Init"kb:4"
71910 '音声ファイル再生 2023.06.07
71920 play Voice$ + "Input_Born_Month_Jyoushi_20230831.mp3"
71930 font 48
71940 locate 0,1
71950 '文字色：黒　 color rgb(0,0,0)
71960 '文字色:白
71970 color rgb(255,255,255)
71980 print "上司の生まれた月を入れて下さい" + chr$(13)
71990 '文字色:白
72000 color rgb(255,255,255)
72010 locate 1,3
72020 '文字色:白
72030 print "上司の生まれた月(1月~12月):"+buf_Month$
72040 color rgb(255,255,255)
72050 'locate 4,6:print ":7"
72060 'locate 9,6:print ":8"
72070 'locate 12,6:print ":9"
72080 'locate 4,6
72090 '文字色:赤
72100 'print ":7  :8  :9" + chr$(13)
72110 'color rgb(255,255,255)
72120 'locate 4,8
72130 'print ":4  :5  :6" + chr$(13)
72140 'color rgb(255,255,255)
72150 'locate 4,10
72160 'print ":1  :2  :3" + chr$(13)
72170 'locate 4,12
72180 'print "    :0"
72190 'locate 12,12
72200 'color rgb(0,0,255)
72210 'print ":Ok"
72220 sp_on 4,0: sp_on 5,0:sp_on 6,0
72230 sp_on 7,0:sp_on 8,0:sp_on 9,0
72240 sp_on 10,0:sp_on 11,0:sp_on 12,0
72250 sp_on 13,0:sp_on 14,1
72260 Jyoushi_Input_Born_Month2:
72270 key$="":bg=0:y=0:y2=0:bg2=0
72280 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
72290 key$ = inkey$
72300 bg = strig(1)
72310 y = stick(1)
72320 y2 = stick(0)
72330 bg2 = strig(0)
72340 pause 200
72350 wend
72360 '十字キー　ここから
72370 '上の矢印　または、十字キー上
72380 if ((y = -1) or (key$ = chr$(30))) then
72390 select case No
72400 'No=-1:okのとき:初期の状態
72410 '0kボタンから３に移動
72420 '上に行く 処理
72430 case -1:
72440 No=3:sp_on 12,1:sp_on 14,0
72450 pause 200:goto Jyoushi_Input_Born_Month2:
72460 '選択肢:3
72470 '3ボタンから 6に移動
72480 case 3:
72490 No=6:sp_on 12,0:sp_on 11,1
72500 pause 200:goto Jyoushi_Input_Born_Month2:
72510 '6ボタンから ９に移動
72520 case 6:
72530 No=9:sp_on 10,1:sp_on 11,0
72540 pause 200:goto Jyoushi_Input_Born_Month2:
72550 '6ボタンから ９に移動　ここまで
72560 '9で上を押して何もしない
72570 case 9:
72580 '何もしない
72590 No=9
72600 pause 200:goto Jyoushi_Input_Born_Month2:
72610 '9で上を押しても何もしない　ここまで
72620 '上　 0ボタンから2ボタン
72630 'sp_on 6,1:1
72640 'sp_on 8,1:5
72650 'sp_on 7,1:7
72660 case 0:
72670 No=2:sp_on 13,0:sp_on 9,1:
72680 pause 200:goto Jyoushi_Input_Born_Month2:
72690 '上  0ボタンから2ボタン　ここまで
72700 '2から５になる 上
72710 case 2:
72720 No=5:sp_on 8,1:sp_on 9,0:
72730 pause 200:goto Jyoushi_Input_Born_Month2:
72740 case 5:
72750 No=8:sp_on 7,1:sp_on 8,0
72760 pause 200:goto Jyoushi_Input_Born_Month2:
72770 case 8:
72780 pause 200:goto Input_Born_Month2:
72790 case 1:
72800 No=4:sp_on 5,1:sp_on 6,0
72810 pause 200:goto Jyoushi_Input_Born_Month2:
72820 case 4:
72830 No=7:sp_on 4,1:sp_on 5,0
72840 pause 200:goto Jyoushi_Input_Born_Month2:
72850 case 7:
72860 pause 200:goto Input_Born_Month2:
72870 end select
72880 endif
72890 '左３　ここまで
72900 '下の矢印
72910 '中央 2
72920 if ((y=1) or (key$ = chr$(31))) then
72930 select case No
72940 '9から６に下げる
72950 case 9:
72960 No=6:sp_on 11,1:sp_on 10,0
72970 pause 200:goto Jyoushi_Input_Born_Month2:
72980 '6から３に下げる
72990 case 6:
73000 No=3:sp_on 12,1:sp_on 11,0
73010 pause 200:goto Jyoushi_Input_Born_Month2:
73020 '3から０ｋに変える
73030 case 3:
73040 No=-1:sp_on 14,1:sp_on 12,0
73050 pause 200:goto Jyoushi_Input_Born_Month2:
73060 'Okから下のボタンを押しても何もしない
73070 case -1:
73080 pause 200:goto Jyoushi_Input_Born_Month2:
73090 case 8:
73100 No=5:sp_on 8,1:sp_on 7,0
73110 pause 200:goto Jyoushi_Input_Born_Month2:
73120 case 5:
73130 No=2:sp_on 9,1:sp_on 8,0
73140 pause 200:goto Jyoushi_Input_Born_Month2:
73150 case 2:
73160 No=0:sp_on 13,1:sp_on 9,0
73170 pause 200:goto Jyoushi_Input_Born_Month2:
73180 case 0:
73190 pause 200:goto Jyoushi_Input_Born_Month2:
73200 case 7:
73210 No=4:sp_on 5,1:sp_on 4,0
73220 pause 200:goto Jyoushi_Input_Born_Month2:
73230 case 4:
73240 No=1:sp_on 6,1:sp_on 5,0
73250 pause 200:goto Jyoushi_Input_Born_Month2:
73260 case 1:
73270 pause 200:goto Jyoushi_Input_Born_Month2:
73280 end select
73290 endif
73300 '左へボタン 十字キー　左　or 　カーソル左
73310 if ((y2 = -1) or (key$ = chr$(29))) then
73320 select case No
73330 'Ok ボタン  Okから　左　０に行く
73340 case -1:
73350 No=0:sp_on 13,1:sp_on 14,0
73360 pause 200:goto Jyoushi_Input_Born_Month2:
73370 '0 ボタン  左　何もしない
73380 case 0:
73390 pause 200:goto Jyoushi_Input_Born_Month2:
73400 case 3:
73410 No=2:sp_on 9,1:sp_on 12,0:
73420 pause 200:goto Jyoushi_Input_Born_Month2:
73430 case 2:
73440 No=1:sp_on 6,1:sp_on 9,0:
73450 pause 200:goto Jyoushi_Input_Born_Month2:
73460 case 1:
73470 pause 200:goto Jyoushi_Input_Born_Month2:
73480 case 6:
73490 No=5:sp_on 8,1:sp_on 11,0
73500 pause 200:goto Jyoushi_Input_Born_Month2:
73510 case 5:
73520 No=4:sp_on 5,1:sp_on 8,0
73530 pause 200:goto Jyoushi_Input_Born_Month2:
73540 case 4:
73550 pause 200:goto Jyoushi_Input_Born_Month2:
73560 case 9:
73570 No=8:sp_on 7,1:sp_on 10,0
73580 pause 200:goto Input_Born_Month2:
73590 case 8:
73600 No=7:sp_on 4,1:sp_on 7,0
73610 pause 200:goto Jyoushi_Input_Born_Month2:
73620 case 7:
73630 pause 200:goto Jyoushi_Input_Born_Month2:
73640 end select
73650 endif
73660 '右  十字キー　右　or カーソル　右
73670 if ((y2 = 1) or (key$ = chr$(28))) then
73680 select case No
73690 '0ボタンからokボタン右に移動
73700 case 0:
73710 No=-1:sp_on 14,1:sp_on 13,0
73720 pause 200:goto Jyoushi_Input_Born_Month2:
73730 '0ボタンからokボタン 右に移動　ここまで
73740 'OKボタンで右を押して何もしない
73750 case -1:
73760 pause 200:goto Jyoushi_Input_Born_Month2:
73770 case 1:
73780 No=2:sp_on 9,1:sp_on 6,0
73790 pause 200:goto Jyoushi_Input_Born_Month2:
73800 case 2:
73810 No=3:sp_on 12,1:sp_on 9,0
73820 pause 200:goto Jyoushi_Input_Born_Month2:
73830 case 3:
73840 pause 200:goto Jyoushi_Input_Born_Month2:
73850 case 4:
73860 No=5:sp_on 8,1:sp_on 5,0
73870 pause 200:goto Jyoushi_Input_Born_Month2:
73880 case 5:
73890 No=6:sp_on 11,1:sp_on 8,0
73900 pause 200:goto Jyoushi_Input_Born_Month2:
73910 case 7:
73920 No=8:sp_on 7,1:sp_on 4,0
73930 pause 200:goto Jyoushi_Input_Born_Month2:
73940 case 8:
73950 No=9:sp_on 10,1:sp_on 7,0
73960 pause 200:goto Jyoushi_Input_Born_Month2:
73970 case 9:
73980 pause 200:goto Jyoushi_Input_Born_Month2:
73990 case 6:
74000 pause 200:goto Jyoushi_Input_Born_Month2:
74010 end select
74020 'Okから右ボタンを押して何もしない ここまで
74030 endif
74040 '十字キー　ここまで
74050 '右の丸ボタン + Enter key 決定キー
74060 if ((bg=2) or (key$=chr$(13))) then
74070 select case count
74080 case 0:
74090 if (No=-1) then No=0
74100 count = 1:buf_Month$ = "**":buf_Month$ = str$(No):buf_month = No:c=No
74110 if (buf_month > 1 and buf_month < 10)  then
74120 buf_Month$ = str$(buf_month)
74130 'buf_month=No
74140 endif
74150 if (buf_month = 1)  then
74160 buf_Month$ = str$(buf_month) + "*"
74170 'c=buf_month
74180 endif
74190 locate 1,3
74200 print "                                     "
74210 color RGB(255,255,255)
74220 locate 1,3
74230 print "上司の生まれた月(1月~12月):" + buf_Month$
74240 goto Jyoushi_Input_Born_Month2:
74250 case 1:
74260 count = 2:
74270 'c = val(buf_Month$)
74280 if (No = -1) then
74290 'count=0
74300 No=0
74310 month=buf_month
74320 buf_month=val(buf_Month$)
74330 month=buf_month
74340 buf_Jyoushi_Born_Day(1)=month
74350 '生まれた日に飛ぶ
74360 goto Jyoushi_Input_Born_Day:
74370 else
74380 buf_month = c*10 + No
74390 'if (buf_month = 1) then
74400 'buf_Month$ = str$(buf_month)
74410 'endif
74420 buf_Month$ = str$(buf_month)
74430 buf_Jyoushi_Born_Day(1) = buf_month
74440 locate 0,3
74450 print "                                           "
74460 locate 1,3
74470 color Rgb(255,255,255)
74480 print "上司の生まれた月(1月~12月):" + buf_Month$
74490 goto Jyoushi_Input_Born_Month2:
74500 endif
74510 case 2:
74520 '==================================
74530 '何もしない
74540 'coun = 2
74550 '==================================
74560 'c= val(buf_Month$)
74570 'buf_month = c*10 + No
74580 'buf_Month$ = str$(buf_month)
74590 'locate 2,3
74600 'print "上司の生まれた月(1月～12月):";buf_Month$
74610 'goto Jyoushi_Input_Born_Month2:
74620 'case 3:
74630 'count=4
74640 'b=val(buf_month$)
74650 'buf_month=c*10+No
74660 'buf_Month$=str$(buf_month)
74670 'locate 2,3
74680 'print "上司の生まれた月(1月～12月):";buf_Month$
74690 'buf_month=val(buf_Month$)
74700 'year=val(buf_year$)
74710 if (No=-1) then
74720 No=0
74730 goto Jyoushi_Input_Born_Day:
74740 else
74750 goto Jyoushi_Input_Born_Month2:
74760 endif
74770 'case 4:
74780 'bufyear=buf_year
74790 'if (No=-1) then
74800 'buf_month = val(buf_Month$)
74810 'month = buf_month
74820 'sp_on 14,0
74830 'goto Input_Born_Day:
74840 'else
74850 'goto Input_Born_Month2:
74860 'endif
74870 end select
74880 endif
74890 '左の丸ボタン　キャンセル
74900 if (bg2=2) then
74910 select case count2
74920 case 0:
74930 if (No = -1) then
74940 buf_month=0:buf_Month$="**"
74950 count=0
74960 'goto rewrite2:
74970 else
74980 if ((No >= 1 and No <= 9) or (No >= 10 and No <= 12)) then
74990 buf_month = 0:buf_Month$ = "**"
75000 locate 0,3
75010 color rgb(255,255,255)
75020 print "                                       "
75030 goto rewrite2:
75040 if (No>12) then
75050 ui_msg"値が範囲外です。"
75060 goto rewrite2:
75070 endif
75080 endif
75090 endif
75100 rewrite2:
75110 locate 2,3
75120 color rgb(255,255,255)
75130 print "                                      "
75140 locate 2,3
75150 print "上司の生まれた月(1月~12月):"+buf_Month$
75160 goto Jyoushi_Input_Born_Month2:
75170 end select
75180 'endif
75190 endif
75200 end
75210 'end
75220 '生れた日を入力
75230 Jyoushi_Input_Born_Day:
75240 '生まれた日入力
75250 cls 3:play ""
75260 'No=-1:Okのとき
75270 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0:count2=0
75280 for i=0 to 1
75290 buf_day(i)=0
75300 next i
75310 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
75320 '****************************************************************************************************
75330 'WUXG(1920x1200)の時ここから
75340 '****************************************************************************************************
75350 gload Gazo$ + "Screen2.png",0,0,0
75360 gload Gazo$ + "downscreen.png",0,0,800
75370 '****************************************************************************************************
75380 'WUXG(1920x1200)の時ここまで
75390 '****************************************************************************************************
75400 'Init"kb:2"
75410 '音声ファイル再生 2023.06.07
75420 play Voice$ + "Input_Born_Day_Jyoushi_20230831.mp3"
75430 font 48
75440 locate 1,1
75450 '文字色：黒　 color rgb(0,0,0)
75460 color rgb(255,255,255)
75470 print "上司の生まれた日を入れて下さい" + chr$(13)
75480 locate 1,3
75490 color rgb(255,255,255)
75500 print "                                      "
75510 locate 1,3
75520 print "上司の生まれた日(1日~31日):"+buf_Day$
75530 color rgb(255,255,255)
75540 'locate 4,6:print ":7"
75550 'locate 9,6:print ":8"
75560 'locate 12,6:print ":9"
75570 'locate 4,6
75580 'print ":7  :8  :9" + chr$(13)
75590 'color rgb(255,255,255)
75600 'locate 4,8
75610 'print ":4  :5  :6" + chr$(13)
75620 'color rgb(255,255,255)
75630 'locate 4,10
75640 'print ":1  :2  :3" + chr$(13)
75650 'locate 4,12
75660 'print "    :0"
75670 'locate 12,12
75680 'color rgb(0,0,255)
75690 'print ":Ok"
75700 sp_on 4,0: sp_on 5,0:sp_on 6,0
75710 sp_on 7,0:sp_on 8,0:sp_on 9,0
75720 sp_on 10,0:sp_on 11,0:sp_on 12,0
75730 sp_on 13,0:sp_on 14,1
75740 Jyoushi_Input_Born_Day2:
75750 key$="":bg=0:y=0:y2=0:bg2=0:
75760 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
75770 key$ = inkey$
75780 bg = strig(1)
75790 y = stick(1)
75800 y2 = stick(0)
75810 bg2 = strig(0)
75820 pause 200
75830 wend
75840 '十字キー　ここから
75850 '上の矢印　または、十字キー上
75860 if ((y = -1) or (key$ = chr$(30))) then
75870 select case No
75880 'No=-1:okのとき:初期の状態
75890 '0kボタンから３に移動
75900 '上に行く 処理
75910 case -1:
75920 No=3:sp_on 12,1:sp_on 14,0
75930 pause 200:goto Jyoushi_Input_Born_Day2:
75940 '選択肢:3
75950 '3ボタンから 6に移動
75960 case 3:
75970 No=6:sp_on 12,0:sp_on 11,1
75980 pause 200:goto Jyoushi_Input_Born_Day2:
75990 '6ボタンから ９に移動
76000 case 6:
76010 No=9:sp_on 10,1:sp_on 11,0
76020 pause 200:goto Jyoushi_Input_Born_Day2:
76030 '6ボタンから ９に移動　ここまで
76040 '9で上を押して何もしない
76050 case 9:
76060 '何もしない
76070 No=9
76080 pause 200:goto Jyoushi_Input_Born_Day2:
76090 '9で上を押しても何もしない　ここまで
76100 '上　 0ボタンから2ボタン
76110 'sp_on 6,1:1
76120 'sp_on 8,1:5
76130 'sp_on 7,1:7
76140 case 0:
76150 No=2:sp_on 13,0:sp_on 9,1:
76160 pause 200:goto Jyoushi_Input_Born_Day2:
76170 '上  0ボタンから2ボタン　ここまで
76180 '2から５になる 上
76190 case 2:
76200 No=5:sp_on 8,1:sp_on 9,0:
76210 pause 200:goto Jyoushi_Input_Born_Day2:
76220 case 5:
76230 No=8:sp_on 7,1:sp_on 8,0
76240 pause 200:goto Jyoushi_Input_Born_Day2:
76250 case 8:
76260 pause 200:goto Jyoushi_Input_Born_Day2:
76270 case 1:
76280 No=4:sp_on 5,1:sp_on 6,0
76290 pause 200:goto Jyoushi_Input_Born_Day2:
76300 case 4:
76310 No=7:sp_on 4,1:sp_on 5,0
76320 pause 200:goto Jyoushi_Input_Born_Day2:
76330 case 7:
76340 pause 200:goto Jyoushi_Input_Born_Day2:
76350 end select
76360 endif
76370 '左３　ここまで
76380 '下の矢印
76390 '中央 2
76400 if ((y=1) or (key$ = chr$(31))) then
76410 select case No
76420 '9から６に下げる
76430 case 9:
76440 No=6:sp_on 11,1:sp_on 10,0
76450 pause 200:goto Jyoushi_Input_Born_Day2:
76460 '6から３に下げる
76470 case 6:
76480 No=3:sp_on 12,1:sp_on 11,0
76490 pause 200:goto Jyoushi_Input_Born_Day2:
76500 '3から０ｋに変える
76510 case 3:
76520 No=-1:sp_on 14,1:sp_on 12,0
76530 pause 200:goto Jyoushi_Input_Born_Day2:
76540 'Okから下のボタンを押しても何もしない
76550 case -1:
76560 pause 200:goto Jyoushi_Input_Born_Day2:
76570 case 8:
76580 No=5:sp_on 8,1:sp_on 7,0
76590 pause 200:goto Jyoushi_Input_Born_Day2:
76600 case 5:
76610 No=2:sp_on 9,1:sp_on 8,0
76620 pause 200:goto Jyoushi_Input_Born_Day2:
76630 case 2:
76640 No=0:sp_on 13,1:sp_on 9,0
76650 pause 200:goto Jyoushi_Input_Born_Day2:
76660 case 0:
76670 pause 200:goto Jyoushi_Input_Born_Day2:
76680 case 7:
76690 No=4:sp_on 5,1:sp_on 4,0
76700 pause 200:goto Jyoushi_Input_Born_Day2:
76710 case 4:
76720 No=1:sp_on 6,1:sp_on 5,0
76730 pause 200:goto Jyoushi_Input_Born_Day2:
76740 case 1:
76750 pause 200:goto Jyoushi_Input_Born_Day2:
76760 end select
76770 endif
76780 '左へボタン 十字キー　左　or 　カーソル左
76790 if ((y2 = -1) or (key$ = chr$(29))) then
76800 select case No
76810 'Ok ボタン  Okから　左　０に行く
76820 case -1:
76830 No=0:sp_on 13,1:sp_on 14,0
76840 pause 200:goto Jyoushi_Input_Born_Day2:
76850 '0 ボタン  左　何もしない
76860 case 0:
76870 pause 200:goto Jyoushi_Input_Born_Day2:
76880 case 3:
76890 No=2:sp_on 9,1:sp_on 12,0:
76900 pause 200:goto Jyoushi_Input_Born_Day2:
76910 case 2:
76920 No=1:sp_on 6,1:sp_on 9,0:
76930 pause 200:goto Jyoushi_Input_Born_Day2:
76940 case 1:
76950 pause 200:goto Jyoushi_Input_Born_Day2:
76960 case 6:
76970 No=5:sp_on 8,1:sp_on 11,0
76980 pause 200:goto Jyoushi_Input_Born_Day2:
76990 case 5:
77000 No=4:sp_on 5,1:sp_on 8,0
77010 pause 200:goto Jyoushi_Input_Born_Day2:
77020 case 4:
77030 pause 200:goto Jyoushi_Input_Born_Day2:
77040 case 9:
77050 No=8:sp_on 7,1:sp_on 10,0
77060 pause 200:goto Jyoushi_Input_Born_Day2:
77070 case 8:
77080 No=7:sp_on 4,1:sp_on 7,0
77090 pause 200:goto Jyoushi_Input_Born_Day2:
77100 case 7:
77110 pause 200:goto Jyoushi_Input_Born_Day2:
77120 end select
77130 endif
77140 '右  十字キー　右　or カーソル　右
77150 if ((y2 = 1) or (key$ = chr$(28))) then
77160 select case No
77170 '0ボタンからokボタン右に移動
77180 case 0:
77190 No=-1:sp_on 14,1:sp_on 13,0
77200 pause 200:goto Jyoushi_Input_Born_Day2:
77210 '0ボタンからokボタン 右に移動　ここまで
77220 'OKボタンで右を押して何もしない
77230 case -1:
77240 pause 200:goto Jyoushi_Input_Born_Day2:
77250 case 1:
77260 No=2:sp_on 9,1:sp_on 6,0
77270 pause 200:goto Jyoushi_Input_Born_Day2:
77280 case 2:
77290 No=3:sp_on 12,1:sp_on 9,0
77300 pause 200:goto Jyoushi_Input_Born_Day2:
77310 case 3:
77320 pause 200:goto Jyoushi_Input_Born_Day2:
77330 case 4:
77340 No=5:sp_on 8,1:sp_on 5,0
77350 pause 200:goto Jyoushi_Input_Born_Day2:
77360 case 5:
77370 No=6:sp_on 11,1:sp_on 8,0
77380 pause 200:goto Jyoushi_Input_Born_Day2:
77390 case 7:
77400 No=8:sp_on 7,1:sp_on 4,0
77410 pause 200:goto Jyoushi_Input_Born_Day2:
77420 case 8:
77430 No=9:sp_on 10,1:sp_on 7,0
77440 pause 200:goto Jyoushi_Input_Born_Day2:
77450 case 9:
77460 pause 200:goto Jyoushi_Input_Born_Day2:
77470 case 6:
77480 pause 200:goto Jyoushi_Input_Born_Day2:
77490 end select
77500 'Okから右ボタンを押して何もしない ここまで
77510 endif
77520 '十字キー　ここまで
77530 '右の丸ボタンを押したとき
77540 if ((bg = 2) or (key$ = chr$(13))) then
77550 'count :決定ボタンを押した回数
77560 select case (count)
77570 '1桁目入力
77580 case 0:
77590 count = 1:
77600 if (No = -1) then
77610 '1桁目　OKでは何もしない
77620 No=c
77630 'goto Jyoushi_Input_Born_Day2:
77640 else
77650 'ok以外のボタンを押したとき
77660 buf_day = No:buf_Day$ = str$(No)
77670 buf_Jyoushi_Born_Day(2)=buf_day
77680 c=No
77690 locate 1,3
77700 print "                                      "
77710 color RGB(255,255,255)
77720 locate 1,3
77730 print "上司の生まれた日(1日~31日):" + buf_Day$
77740 endif
77750 'check2:
77760 'if (buf_day >= 1 and buf_day <= 9) then
77770 'sp_on 14,0
77780 'goto complate_jyoushi:
77790 'else
77800 'sp_on 14,0
77810 goto Jyoushi_Input_Born_Day2:
77820 'end
77830 'endif
77840 case 1:
77850 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
77860 count = 2:
77870 'locate 2,3
77880 'color RGB(255,255,255)
77890 'print "生まれた日(1日~31日):";buf_Day$
77900 'Okボタンを押したときの処理
77910 '入力値　10未満のとき
77920 'buf_day = c * 10 + No
77930 if (No = -1) then
77940 c=buf_day:No=0
77950 'buf_day = c
77960 buf_Day$ = str$(buf_day)
77970 '10以下のとき
77980 'if (buf_day < 10) then
77990 sp_on 14,0
78000 goto complate_jyoushi:
78010 'end
78020 'endif
78030 else
78040 'c=No
78050 buf_day = c * 10 + No
78060 buf_Day$ = str$(buf_day)
78070 'buf_day = c:buf_Day$=str$(buf_day)
78080 buf_Jyoushi_Born_Day(2)=buf_day
78090 locate 1,3
78100 print "                                           "
78110 locate 1,3
78120 color Rgb(255,255,255)
78130 print "上司の生まれた日(1日~31日):" + buf_Day$
78140 goto Jyoushi_Input_Born_Day2:
78150 'goto
78160 endif
78170 'endif
78180 '生まれた日　2桁目の数字　or 1桁の数字 + ok
78190 case 2:
78200 'buf_day = c * 10 + No
78210 'buf_Jyoushi_Born_Day(2)=buf_day
78220 'locate 1,3
78230 'print "                                      "
78240 'locate 1,3
78250 'locate 2,3
78260 'print "生まれた日(1日〜31日):";buf_Day
78270 'No=-1:ok ボタンを押したとき
78280 if (No = -1) then
78290 'if ((buf_day > 0) and (buf_day < 32)) then
78300 No=0
78310 sp_on 14,0
78320 goto complate_jyoushi:
78330 'end
78340 else
78350 goto Jyoushi_Input_Born_Day2:
78360 'endif
78370 'Okボタン以外を押したとき
78380 'else
78390 'c=val(buf_Day$)
78400 'buf_day = c * 10 + No
78410 'buf_Jyoushi_Born_Day(2) = buf_day
78420 'buf_Day$ = str$(buf_day)
78430 'locate 1,3
78440 'print "上司の生まれた日(1日~31日):";buf_Day$
78450 'goto Jyoushi_Input_Born_Day2:
78460 endif
78470 'case 3:
78480 'count=4
78490 'c=val(buf_day$)
78500 'buf_day=c*10+No
78510 'buf_day$=str$(buf_day)
78520 'locate 2,3
78530 'print "生まれた日を入れてください:";buf_day$
78540 'year=val(buf_year$)
78550 'if (No = -1) then
78560 'goto Jyoushi_Input_Born_Day:
78570 'sp_on 14,0:
78580 'goto complate_jyoushi:
78590 'else
78600 'goto Jyoushi_Input_Born_Month2:
78610 'endif
78620 'case 4:
78630 'bufyear=buf_year
78640 'if (No=-1) then
78650 'buf_day = val(buf_day$)
78660 'bufday = buf_day
78670 'sp_on 14,0
78680 'goto Jyoushi_Input_Born_Day2:
78690 'else
78700 'goto Jyoushi_Input_Born_Day2:
78710 'endif
78720 end select
78730 endif
78740 if (bg2=2) then
78750 select case count2
78760 case 0:
78770 if (No=-1) then
78780 buf_day=0:buf_Day$="**":No=0
78790 if (buf_day >= 1 and buf_day <= 31) then
78800 count=0
78810 buf_day=0:buf_Day$ = "**"
78820 goto rewrite_day3:
78830 else
78840 buf_day=0:buf_Day$ = "**"
78850 ui_msg"値が範囲外です"
78860 endif
78870 goto rewrite_day3:
78880 else
78890 goto rewrite_day3:
78900 endif
78910 rewrite_day3:
78920 locate 2,3
78930 color rgb(255,255,255)
78940 print "                                      "
78950 locate 2,3
78960 print "生まれた日(1日~31日):" + buf_Day$
78970 goto Jyoushi_Input_Born_Day2:
78980 end select
78990 endif
79000 '--------------------------------------------'
79010 'locate 2,0:color rgb(255,0,0)
79020 'print "上司の生まれた年代を入力"
79030 'color rgb(255,255,255)
79040 'locate 2,3:print "生まれた年代を西暦4桁で入れてください"
79050 'locate 2,4:Input "上司の生まれた年:",born_year
79060 '誕生日データーを配列に代入
79070 'buf_Jyoushi_Born_Year:上司の生まれた年代
79080 'buf_Jyoushi_Born_Day(0) = born_year
79090 'born_year = 0
79100 '---------------------------------------------'
79110 'goto Jyoushi_born_month:
79120 '1-2.生まれた月を入力
79130 'Jyoushi_born_month:
79140 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
79150 'init "kb:4"
79160 'locate 2,1:
79170 'color rgb(255,0,0)
79180 'print "上司の生まれた月入力"
79190 'color rgb(255,255,255)
79200 'locate 2,4:print "生まれた月を入力してください"
79210 'locate 2,5
79220 'Input "上司の生まれ月:",born_month
79230 'buf_Jyoushi_Born_Day(1) = born_month
79240 'born_month = 0
79250 'goto Jyoushi_born_day:
79260 'buf_Jyoushi_Born_day
79270 '1-3.生まれた日を入力
79280 'Jyoushi_born_day:
79290 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
79300 'init "kb:4"
79310 'locate 2,1:color rgb(255,0,0)
79320 'print "上司の生まれた日　入力"
79330 'locate 2,4:color rgb(255,255,255)
79340 'print "生まれた日を入力してください"
79350 'locate 2,5
79360 'Input "上司の生まれた日:",born_day
79370 'buf_Jyoushi_Born_Day(2) = born_day
79380 'born_day = 0
79390 'goto buka_born_year:
79400 '2.部下の誕生日入力
79410 '2-1.生まれた年を入力
79420 'buka_born_year:
79430 'cls 3:gload Gazo$+"Screen1.png",0,0,0
79440 'init "kb:2"
79450 'locate 1,1:color rgb(255,0,0)
79460 'print "部下の生まれた年代入力"
79470 'locate 0,4:color rgb(255,255,255)
79480 'print "部下の生まれた年（西暦4桁）を入れてください"
79490 'locate 0,5
79500 'Input "部下の生まれた年(西暦4桁):",born_year
79510 'buf_Buka_Born_Day(0) = born_year
79520 'born_year = 0
79530 '2-2.生まれた月を入力
79540 'buka_born_month:
79550 'cls 3:gload Gazo$+"Screen1.png",0,0,0
79560 'init "kb:2"
79570 'locate 2,1:color rgb(255,0,0)
79580 'print "部下の生まれた月 入力"
79590 'locate 2,4:color rgb(255,255,255)
79600 'print "部下の生まれた月を入力してください"
79610 'locate 2,5:Input "部下の生まれた月:",born_month
79620 'buf_Buka_Born_Day(1) = born_month
79630 '2-3.生まれた日を入力
79640 'buka_born_day:
79650 'cls 3:gload Gazo$ + "Screen1.png",0,0,0
79660 'init "kb:2"
79670 'locate 2,1:color rgb(255,0,0)
79680 'print "生まれた日入力"
79690 'color rgb(255,255,255)
79700 'locate 2,4:print "生まれた日を入力してください"
79710 'locate 2,5:Input "部下の生まれた日:",born_day
79720 'buf_Buka_Born_Day(2) = born_day
79730 'born_day=0:goto Result_Business_Aisyou:
79740 '--------------------------------------------'
79750 complate_jyoushi:
79760 a = buf_Jyoushi_Born_Day(0):b = buf_Jyoushi_Born_Day(1):c = buf_Jyoushi_Born_Day(2)
79770 buf_Jyoushi = Kabara_Num(a,b,c)
79780 a_1=buf_Jyoushi
79790 goto Buka_Input_Seireki:
79800 '--------------------------------------------'
79810 '部下'
79820 '1.部下の生まれた年代'
79830 Buka_Input_Seireki:
79840 cls 3:play "":count=0:count2=0
79850 init"kb:4"
79860 'No=-1:Okのとき
79870 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_year$ = "****":buf_buka_year=0
79880 for i=0 to 3
79890 buf_Buka_Born_Day(i)=0
79900 next i
79910 '****************************************************************************************************
79920 'WUXG(1920x1200)の時ここから
79930 '****************************************************************************************************
79940 gload Gazo$ + "Screen2.png",0,0,0
79950 gload Gazo$ + "downscreen.png",0,0,800
79960 '****************************************************************************************************
79970 'WUXG(1920x1200)の時ここまで
79980 '****************************************************************************************************
79990 'Init"kb:2"
80000 '音声ファイル再生 2023.06.07
80010 play Voice$ + "Input_Born_Year_Buka_20230831.mp3"
80020 font 48
80030 locate 0,1
80040 '文字色：黒　 color rgb(0,0,0)
80050 color rgb(255,255,255)
80060 print "部下の生まれた年代を入れて下さい" + chr$(13)
80070 color rgb(255,255,255)
80080 locate 1,3
80090 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
80100 color rgb(255,255,255)
80110 'locate 4,6:print ":7"
80120 'locate 9,6:print ":8"
80130 'locate 12,6:print ":9"
80140 'locate 4,6
80150 'print ":7  :8  :9" + chr$(13)
80160 'color rgb(255,255,255)
80170 'locate 4,8
80180 'print ":4  :5  :6" + chr$(13)
80190 'color rgb(255,255,255)
80200 'locate 4,10
80210 'print ":1  :2  :3" + chr$(13)
80220 'locate 4,12
80230 'print "    :0"
80240 'locate 12,12
80250 'color rgb(0,0,255)
80260 'print ":Ok"
80270 sp_on 4,0: sp_on 5,0:sp_on 6,0
80280 sp_on 7,0:sp_on 8,0:sp_on 9,0
80290 sp_on 10,0:sp_on 11,0:sp_on 12,0
80300 sp_on 13,0:sp_on 14,1
80310 Buka_Input_Seireki2:
80320 key$="":bg=0:y=0:y2=0:bg2=0:
80330 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
80340 key$ = inkey$
80350 bg = strig(1)
80360 y = stick(1)
80370 y2 = stick(0)
80380 bg2=strig(0)
80390 pause 200
80400 wend
80410 '十字キー　ここから
80420 '上の矢印　または、十字キー上
80430 if ((y = -1) or (key$ = chr$(30))) then
80440 select case No
80450 'No=-1:okのとき:初期の状態
80460 '0kボタンから３に移動
80470 '上に行く 処理
80480 case -1:
80490 No=3:sp_on 12,1:sp_on 14,0
80500 pause 200:goto Buka_Input_Seireki2:
80510 '選択肢:3
80520 '3ボタンから 6に移動
80530 case 3:
80540 No=6:sp_on 12,0:sp_on 11,1
80550 pause 200:goto Buka_Input_Seireki2:
80560 '6ボタンから ９に移動
80570 case 6:
80580 No=9:sp_on 10,1:sp_on 11,0
80590 pause 200:goto Buka_Input_Seireki2:
80600 '6ボタンから ９に移動　ここまで
80610 '9で上を押して何もしない
80620 case 9:
80630 '何もしない
80640 No=9
80650 pause 200:goto Buka_Input_Seireki2:
80660 '9で上を押しても何もしない　ここまで
80670 '上　 0ボタンから2ボタン
80680 'sp_on 6,1:1
80690 'sp_on 8,1:5
80700 'sp_on 7,1:7
80710 case 0:
80720 No=2:sp_on 13,0:sp_on 9,1:
80730 pause 200:goto Buka_Input_Seireki2:
80740 '上  0ボタンから2ボタン　ここまで
80750 '2から５になる 上
80760 case 2:
80770 No=5:sp_on 8,1:sp_on 9,0:
80780 pause 200:goto Buka_Input_Seireki2:
80790 case 5:
80800 No=8:sp_on 7,1:sp_on 8,0
80810 pause 200:goto Buka_Input_Seireki2:
80820 case 8:
80830 pause 200:goto Buka_Input_Seireki2:
80840 case 1:
80850 No=4:sp_on 5,1:sp_on 6,0
80860 pause 200:goto Buka_Input_Seireki2:
80870 case 4:
80880 No=7:sp_on 4,1:sp_on 5,0
80890 pause 200:goto Buka_Input_Seireki2:
80900 case 7:
80910 pause 200:goto Buka_Input_Seireki2:
80920 end select
80930 endif
80940 '左３　ここまで
80950 '下の矢印
80960 '中央 2
80970 if ((y=1) or (key$ = chr$(31))) then
80980 select case No
80990 '9から６に下げる
81000 case 9:
81010 No=6:sp_on 11,1:sp_on 10,0
81020 pause 200:goto Buka_Input_Seireki2:
81030 '6から３に下げる
81040 case 6:
81050 No=3:sp_on 12,1:sp_on 11,0
81060 pause 200:goto Buka_Input_Seireki2:
81070 '3から０ｋに変える
81080 case 3:
81090 No=-1:sp_on 14,1:sp_on 12,0
81100 pause 200:goto Buka_Input_Seireki2:
81110 'Okから下のボタンを押しても何もしない
81120 case -1:
81130 pause 200:goto Buka_Input_Seireki2:
81140 case 8:
81150 No=5:sp_on 8,1:sp_on 7,0
81160 pause 200:goto Buka_Input_Seireki2:
81170 case 5:
81180 No=2:sp_on 9,1:sp_on 8,0
81190 pause 200:goto Buka_Input_Seireki2:
81200 case 2:
81210 No=0:sp_on 13,1:sp_on 9,0
81220 pause 200:goto Buka_Input_Seireki2:
81230 case 0:
81240 pause 200:goto Buka_Input_Seireki2:
81250 case 7:
81260 No=4:sp_on 5,1:sp_on 4,0
81270 pause 200:goto Buka_Input_Seireki2:
81280 case 4:
81290 No=1:sp_on 6,1:sp_on 5,0
81300 pause 200:goto Buka_Input_Seireki2:
81310 case 1:
81320 pause 200:goto Buka_Input_Seireki2:
81330 end select
81340 endif
81350 '左へボタン 十字キー　左　or 　カーソル左
81360 if ((y2 = -1) or (key$ = chr$(29))) then
81370 select case No
81380 'Ok ボタン  Okから　左　０に行く
81390 case -1:
81400 No=0:sp_on 13,1:sp_on 14,0
81410 pause 200:goto Buka_Input_Seireki2:
81420 '0 ボタン  左　何もしない
81430 case 0:
81440 pause 200:goto Buka_Input_Seireki2:
81450 case 3:
81460 No=2:sp_on 9,1:sp_on 12,0:
81470 pause 200:goto Buka_Input_Seireki2:
81480 case 2:
81490 No=1:sp_on 6,1:sp_on 9,0:
81500 pause 200:goto Buka_Input_Seireki2:
81510 case 1:
81520 pause 200:goto Buka_Input_Seireki2:
81530 case 6:
81540 No=5:sp_on 8,1:sp_on 11,0
81550 pause 200:goto Buka_Input_Seireki2:
81560 case 5:
81570 No=4:sp_on 5,1:sp_on 8,0
81580 pause 200:goto Buka_Input_Seireki2:
81590 case 4:
81600 pause 200:goto Buka_Input_Seireki2:
81610 case 9:
81620 No=8:sp_on 7,1:sp_on 10,0
81630 pause 200:goto Buka_Input_Seireki2:
81640 case 8:
81650 No=7:sp_on 4,1:sp_on 7,0
81660 pause 200:goto Buka_Input_Seireki2:
81670 case 7:
81680 pause 200:goto Buka_Input_Seireki2:
81690 end select
81700 endif
81710 '右  十字キー　右　or カーソル　右
81720 if ((y2 = 1) or (key$ = chr$(28))) then
81730 select case No
81740 '0ボタンからokボタン右に移動
81750 case 0:
81760 No=-1:sp_on 14,1:sp_on 13,0
81770 pause 200:goto Buka_Input_Seireki2:
81780 '0ボタンからokボタン 右に移動　ここまで
81790 'OKボタンで右を押して何もしない
81800 case -1:
81810 pause 200:goto Buka_Input_Seireki2:
81820 case 1:
81830 No=2:sp_on 9,1:sp_on 6,0
81840 pause 200:goto Buka_Input_Seireki2:
81850 case 2:
81860 No=3:sp_on 12,1:sp_on 9,0
81870 pause 200:goto Buka_Input_Seireki2:
81880 case 3:
81890 pause 200:goto Buka_Input_Seireki2:
81900 case 4:
81910 No=5:sp_on 8,1:sp_on 5,0
81920 pause 200:goto Buka_Input_Seireki2:
81930 case 5:
81940 No=6:sp_on 11,1:sp_on 8,0
81950 pause 200:goto Buka_Input_Seireki2:
81960 case 7:
81970 No=8:sp_on 7,1:sp_on 4,0
81980 pause 200:goto Buka_Input_Seireki2:
81990 case 8:
82000 No=9:sp_on 10,1:sp_on 7,0
82010 pause 200:goto Buka_Input_Seireki2:
82020 case 9:
82030 pause 200:goto Buka_Input_Seireki2:
82040 case 6:
82050 pause 200:goto Buka_Input_Seireki2:
82060 end select
82070 'Okから右ボタンを押して何もしない ここまで
82080 endif
82090 '十字キー　ここまで
82100 '＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
82110 'ここからコメント
82120 '右の丸ボタン決定を押した数:count
82130 'if ((bg=2) or (key$=chr$(13))) then
82140 'select case count
82150 'case 0:
82160 'count=1
82170 'if (No = -1) then
82180 'count = 0
82190 'Okボタンを押したとき
82200 '
82210 'goto Buka_Input_Seireki2:
82220 'else
82230 'Okボタン以外が押されたとき
82240 'if (No >= 1 and No <= 2) then
82250 'buf_buka_year$ = "":buf_buka_year$ = str$(No)
82260 'buf_buka_year = No
82270 'buf_Buka_Born_Day(0) = bufyear
82280 'locate 2,3
82290 'color rgb(255,255,255)
82300 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
82310 'goto Buka_Input_Seireki2:
82320 'else
82330 'count=0
82340 'ui_msg"数字が範囲外になります。"
82350 'buf_buka_year$ ="":buf_buka_year=0
82360 'goto Buka_Input_Seireki2:
82370 'endif
82380 'endif
82390 'case 1:
82400 'count = 2
82410 'if (No = -1) then
82420 'count = 1
82430 'goto Buka_Input_Seireki2:
82440 'else
82450 'b = val(buf_buka_year$)
82460 'buf_buka_year = b * 10 + No
82470 'buf_buka_year$ = str$(buf_buka_year)
82480 'buf_Buka_Born_Day(0) = bufyear
82490 'locate 1,3
82500 'color rgb(255,255,255)
82510 'print "                                                                "
82520 'locate 1,3
82530 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
82540 'if (No = -1) then
82550 'count=1
82560 'goto Buka_Input_Seireki2:
82570 'endif
82580 'case 2:
82590 'count = 3
82600 'if (No = -1) then
82610 'count = 2
82620 'buf_Buka_Born_Day(0)=bufyear
82630 'goto Buka_Input_Seireki2:
82640 'else
82650 'b = val(buf_buka_year$)
82660 'buf_buka_year = b*10 + No
82670 'buf_buka_year$ = str$(buf_buka_year)
82680 'locate 1,3
82690 'color rgb(255,255,255)
82700 'print "                                        "
82710 'locate 1,3
82720 'print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
82730 'goto Buka_Input_Seireki2:
82740 'endif
82750 'case 3:
82760 'count=4
82770 'if (No = -1) then
82780 'count=3
82790 'goto Buka_Input_Seireki2:
82800 'else
82810 'b = buf_buka_year
82820 'buf_buka_year = b * 10 + No
82830 'buf_buka_year$=str$(buf_buka_year)
82840 'locate 1,3
82850 'color RGB(255,255,255)
82860 'print "                                      "
82870 'locate 1,3
82880 'print "部下の生まれた年代(西暦4桁):";buf_buka_year$
82890 'buf_year=val(buf_year$)
82900 'year=val(buf_year$)
82910 'if (No=-1) then
82920 'goto Input_Born_Month:
82930 'else
82940 'goto Buka_Input_Seireki2:
82950 'endif
82960 'case 4:
82970 'bufyear=buf_year
82980 'if (No=-1) then
82990 'buf_year = val(buf_year$)
83000 'bufyear = buf_year
83010 'sp_on 14,0
83020 'goto Buka_Input_Born_Month:
83030 'else
83040 'goto Buka_Input_Seireki2:
83050 'endif
83060 'end select
83070 'endif
83080 'if (bg2 = 2) then
83090 'select case count2
83100 'case 0:
83110 'if (No = -1) then
83120 'buf_buka_year=0:buf_buka_year$=trim$(""):buf_buka_year$=trim$("****")
83130 'count=0
83140 'locate 1,3
83150 'color rgb(255,255,255)
83160 'print "                                      "
83170 'locate 1,3
83180 'print "部下の生まれた年代（西暦4桁):";buf_buka_year$
83190 'goto Buka_Input_Seireki2:
83200 'else
83210 '(buf_year=0) then
83220 'buf_buka_year=0:buf_buka_year$="****"
83230 'goto Buka_Input_Seireki2:
83240 'endif
83250 'endif
83260 'end select
83270 'endif
83280 'end
83290 'ここまでコメント
83300 '================================================================
83310 if ((bg=2) or (key$=chr$(13))) then
83320 select case count
83330 case 0:
83340 count = 1
83350 if (No=-1) then
83360 count = 0
83370 buf_Buka_Born_Day(0) = No
83380 'Okボタンを押したとき
83390 goto Buka_Input_Seireki2:
83400 else
83410 'Okボタン以外が押されたとき
83420 if (No>=1 and No<=2) then
83430 buf_buka_year$="":buf_buka_year$=str$(No) + "***":a = No
83440 buf_buka_year = No
83450 buf_Buka_Born_Day(0) = No
83460 locate 1,3
83470 color rgb(255,255,255)
83480 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
83490 goto Buka_Input_Seireki2:
83500 else
83510 count=0
83520 ui_msg"数字が範囲外になります。"
83530 buf_buka_year$="":buf_buka_year=0
83540 goto Buka_Input_Seireki2:
83550 endif
83560 endif
83570 case 1:
83580 count = 2
83590 if (No = -1) then
83600 count = 1
83610 goto Buka_Input_Seireki2:
83620 else
83630 'b = val(buf_buka_year$)
83640 buf_buka_year = a * 10 + No
83650 b=buf_buka_year
83660 buf_buka_year$ = str$(buf_buka_year)+"**"
83670 buf_Buka_Born_Day(0)=buf_buka_year
83680 locate 1,3
83690 color rgb(255,255,255)
83700 print "                                                                "
83710 locate 1,3
83720 print "部下の生まれた年代(西暦4桁):"+buf_buka_year$
83730 'if (No = -1) then
83740 'count=1
83750 goto Buka_Input_Seireki2:
83760 endif
83770 case 2:
83780 count=3
83790 if (No=-1) then
83800 count =2:No=0
83810 goto Buka_Input_Seireki2:
83820 else
83830 'b = val(buf_buka_year$)
83840 buf_buka_year = b * 10 + No
83850 c = buf_buka_year
83860 buf_buka_year$ = str$(buf_buka_year) + "*"
83870 buf_Buka_Born_Day(0) = buf_buka_year
83880 locate 1,3
83890 color rgb(255,255,255)
83900 print "                                        "
83910 locate 1,3
83920 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
83930 goto Buka_Input_Seireki2:
83940 endif
83950 case 3:
83960 count=4
83970 if (No = -1) then
83980 'count=3:No=0
83990 goto Buka_Input_Seireki2:
84000 else
84010 'b = val(buf_buka_year$)
84020 buf_buka_year=c * 10 + No
84030 buf_buka_year$=str$(buf_buka_year)
84040 buf_Buka_Born_Day(0)=buf_buka_year
84050 locate 1,3
84060 color RGB(255,255,255)
84070 print "                                      "
84080 locate 1,3
84090 print "部下の生まれた年代(西暦4桁):";buf_buka_year$
84100 buf_buka_year=val(buf_buka_year$)
84110 'year=val(buf_year$)
84120 'if (No=-1) then
84130 'goto Input_Born_Month:
84140 'else
84150 goto Buka_Input_Seireki2:
84160 endif
84170 case 4:
84180 'bufyear=buf_year
84190 if (No = -1) then
84200 buf_buka_year = val(buf_buka_year$)
84210 buf_Buka_Born_Day(0)=buf_buka_year
84220 sp_on 14,0
84230 goto Buka_Input_Born_Month:
84240 else
84250 goto Buka_Input_Seireki2:
84260 endif
84270 end select
84280 endif
84290 '================================================================
84300 'ここにコピーする。
84310 '================================================================
84320 'Input"部下の生れた年代(4桁,〜2025年):",year
84330 'if year > 2025 then goto Jyoushi_Input_Seireki:
84340 'if year = 123 then cls 3:cls 4:goto Main_Screen:
84350 '"4桁目"
84360 'bufyear4 = fix(year / 1000)
84370 '"3桁目"
84380 'bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
84390 '"2桁目"
84400 'bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
84410 '"1桁目"
84420 'bufyear1 = fix((year - ((bufyear4*
84430 'bufyear = bufyear1+bufyear2+bufyear3+bufyear4
84440 '1.部下の生まれた年代'
84450 '2.部下の生まれた月'
84460 Buka_Input_Born_Month:
84470 cls 3:play "":count=0:count2=0
84480 'No=-1:Okのとき
84490 key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_buka_Month$ = "**":buf_buka_month=0
84500 for i=0 to 1
84510 buf_month(i)=0
84520 next i
84530 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
84540 '****************************************************************************************************
84550 'WUXG(1920x1200)の時ここから
84560 '****************************************************************************************************
84570 gload Gazo$ + "Screen2.png",0,0,0
84580 gload Gazo$ + "downscreen.png",0,0,800
84590 '****************************************************************************************************
84600 'WUXG(1920x1200)の時ここから
84610 '****************************************************************************************************
84620 'Init"kb:4"
84630 '音声ファイル再生 2023.06.07
84640 play Voice$ + "Input_Born_Month_Buka_20230831.mp3"
84650 '****************************************************************************************************
84660 'WUXG(1920x1200)の時ここから
84670 '****************************************************************************************************
84680 font 48
84690 '****************************************************************************************************
84700 'WUXG(1920x1200)の時ここまで
84710 '****************************************************************************************************
84720 locate 0,1
84730 '文字色：黒　 color rgb(0,0,0)
84740 '文字色:白
84750 color rgb(255,255,255)
84760 print "部下の生まれた月を入れて下さい" + chr$(13)
84770 '文字色:白
84780 color rgb(255,255,255)
84790 locate 1,3
84800 '文字色:白
84810 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
84820 color rgb(255,255,255)
84830 'locate 4,6:print ":7"
84840 'locate 9,6:print ":8"
84850 'locate 12,6:print ":9"
84860 'locate 4,6
84870 '文字色:赤
84880 'print ":7  :8  :9" + chr$(13)
84890 'color rgb(255,255,255)
84900 'locate 4,8
84910 'print ":4  :5  :6" + chr$(13)
84920 'color rgb(255,255,255)
84930 'locate 4,10
84940 'print ":1  :2  :3" + chr$(13)
84950 'locate 4,12
84960 'print "    :0"
84970 'locate 12,12
84980 'color rgb(0,0,255)
84990 'print ":Ok"
85000 sp_on 4,0: sp_on 5,0:sp_on 6,0
85010 sp_on 7,0:sp_on 8,0:sp_on 9,0
85020 sp_on 10,0:sp_on 11,0:sp_on 12,0
85030 sp_on 13,0:sp_on 14,1
85040 Buka_Input_Born_Month2:
85050 key$="":bg=0:y=0:y2=0:bg2=0
85060 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
85070 key$ = inkey$
85080 bg = strig(1)
85090 y = stick(1)
85100 y2 = stick(0)
85110 bg2 = strig(0)
85120 pause 200
85130 wend
85140 '十字キー　ここから
85150 '上の矢印　または、十字キー上
85160 if ((y = -1) or (key$ = chr$(30))) then
85170 select case No
85180 'No=-1:okのとき:初期の状態
85190 '0kボタンから３に移動
85200 '上に行く 処理
85210 case -1:
85220 No=3:sp_on 12,1:sp_on 14,0
85230 pause 200:goto Buka_Input_Born_Month2:
85240 '選択肢:3
85250 '3ボタンから 6に移動
85260 case 3:
85270 No=6:sp_on 12,0:sp_on 11,1
85280 pause 200:goto Buka_Input_Born_Month2:
85290 '6ボタンから ９に移動
85300 case 6:
85310 No=9:sp_on 10,1:sp_on 11,0
85320 pause 200:goto Buka_Input_Born_Month2:
85330 '6ボタンから ９に移動　ここまで
85340 '9で上を押して何もしない
85350 case 9:
85360 '何もしない
85370 No=9
85380 pause 200:goto Buka_Input_Born_Month2:
85390 '9で上を押しても何もしない　ここまで
85400 '上　 0ボタンから2ボタン
85410 'sp_on 6,1:1
85420 'sp_on 8,1:5
85430 'sp_on 7,1:7
85440 case 0:
85450 No=2:sp_on 13,0:sp_on 9,1:
85460 pause 200:goto Buka_Input_Born_Month2:
85470 '上  0ボタンから2ボタン　ここまで
85480 '2から５になる 上
85490 case 2:
85500 No=5:sp_on 8,1:sp_on 9,0:
85510 pause 200:goto Buka_Input_Born_Month2:
85520 case 5:
85530 No=8:sp_on 7,1:sp_on 8,0
85540 pause 200:goto Buka_Input_Born_Month2:
85550 case 8:
85560 pause 200:goto Buka_Input_Born_Month2:
85570 case 1:
85580 No=4:sp_on 5,1:sp_on 6,0
85590 pause 200:goto Buka_Input_Born_Month2:
85600 case 4:
85610 No=7:sp_on 4,1:sp_on 5,0
85620 pause 200:goto Buka_Input_Born_Month2:
85630 case 7:
85640 pause 200:goto Buka_Input_Born_Month2:
85650 end select
85660 endif
85670 '左３　ここまで
85680 '下の矢印
85690 '中央 2
85700 if ((y=1) or (key$ = chr$(31))) then
85710 select case No
85720 '9から６に下げる
85730 case 9:
85740 No=6:sp_on 11,1:sp_on 10,0
85750 pause 200:goto Buka_Input_Born_Month2:
85760 '6から３に下げる
85770 case 6:
85780 No=3:sp_on 12,1:sp_on 11,0
85790 pause 200:goto Buka_Input_Born_Month2:
85800 '3から０ｋに変える
85810 case 3:
85820 No=-1:sp_on 14,1:sp_on 12,0
85830 pause 200:goto Buka_Input_Born_Month2:
85840 'Okから下のボタンを押しても何もしない
85850 case -1:
85860 pause 200:goto Buka_Input_Born_Month2:
85870 case 8:
85880 No=5:sp_on 8,1:sp_on 7,0
85890 pause 200:goto Buka_Input_Born_Month2:
85900 case 5:
85910 No=2:sp_on 9,1:sp_on 8,0
85920 pause 200:goto Buka_Input_Born_Month2:
85930 case 2:
85940 No=0:sp_on 13,1:sp_on 9,0
85950 pause 200:goto Buka_Input_Born_Month2:
85960 case 0:
85970 pause 200:goto Buka_Input_Born_Month2:
85980 case 7:
85990 No=4:sp_on 5,1:sp_on 4,0
86000 pause 200:goto Buka_Input_Born_Month2:
86010 case 4:
86020 No=1:sp_on 6,1:sp_on 5,0
86030 pause 200:goto Buka_Input_Born_Month2:
86040 case 1:
86050 pause 200:goto Buka_Input_Born_Month2:
86060 end select
86070 endif
86080 '左へボタン 十字キー　左　or 　カーソル左
86090 if ((y2 = -1) or (key$ = chr$(29))) then
86100 select case No
86110 'Ok ボタン  Okから　左　０に行く
86120 case -1:
86130 No=0:sp_on 13,1:sp_on 14,0
86140 pause 200:goto Buka_Input_Born_Month2:
86150 '0 ボタン  左　何もしない
86160 case 0:
86170 pause 200:goto Buka_Input_Born_Month2:
86180 case 3:
86190 No=2:sp_on 9,1:sp_on 12,0:
86200 pause 200:goto Buka_Input_Born_Month2:
86210 case 2:
86220 No=1:sp_on 6,1:sp_on 9,0:
86230 pause 200:goto Buka_Input_Born_Month2:
86240 case 1:
86250 pause 200:goto Buka_Input_Born_Month2:
86260 case 6:
86270 No=5:sp_on 8,1:sp_on 11,0
86280 pause 200:goto Buka_Input_Born_Month2:
86290 case 5:
86300 No=4:sp_on 5,1:sp_on 8,0
86310 pause 200:goto Buka_Input_Born_Month2:
86320 case 4:
86330 pause 200:goto Buka_Input_Born_Month2:
86340 case 9:
86350 No=8:sp_on 7,1:sp_on 10,0
86360 pause 200:goto Buka_Input_Born_Month2:
86370 case 8:
86380 No=7:sp_on 4,1:sp_on 7,0
86390 pause 200:goto Buka_Input_Born_Month2:
86400 case 7:
86410 pause 200:goto Buka_Input_Born_Month2:
86420 end select
86430 endif
86440 '右  十字キー　右　or カーソル　右
86450 if ((y2 = 1) or (key$ = chr$(28))) then
86460 select case No
86470 '0ボタンからokボタン右に移動
86480 case 0:
86490 No=-1:sp_on 14,1:sp_on 13,0
86500 pause 200:goto Buka_Input_Born_Month2:
86510 '0ボタンからokボタン 右に移動　ここまで
86520 'OKボタンで右を押して何もしない
86530 case -1:
86540 pause 200:goto Buka_Input_Born_Month2:
86550 case 1:
86560 No=2:sp_on 9,1:sp_on 6,0
86570 pause 200:goto Buka_Input_Born_Month2:
86580 case 2:
86590 No=3:sp_on 12,1:sp_on 9,0
86600 pause 200:goto Buka_Input_Born_Month2:
86610 case 3:
86620 pause 200:goto Buka_Input_Born_Month2:
86630 case 4:
86640 No=5:sp_on 8,1:sp_on 5,0
86650 pause 200:goto Buka_Input_Born_Month2:
86660 case 5:
86670 No=6:sp_on 11,1:sp_on 8,0
86680 pause 200:goto Buka_Input_Born_Month2:
86690 case 7:
86700 No=8:sp_on 7,1:sp_on 4,0
86710 pause 200:goto Buka_Input_Born_Month2:
86720 case 8:
86730 No=9:sp_on 10,1:sp_on 7,0
86740 pause 200:goto Buka_Input_Born_Month2:
86750 case 9:
86760 pause 200:goto Buka_Input_Born_Month2:
86770 case 6:
86780 pause 200:goto Buka_Input_Born_Month2:
86790 end select
86800 'Okから右ボタンを押して何もしない ここまで
86810 endif
86820 '十字キー　ここまで
86830 '右の丸ボタン　決定キー
86840 if ((bg=2) or (key$=chr$(13))) then
86850 select case count
86860 case 0:
86870 count=1:buf_buka_Month$="*":buf_buka_Month$=str$(No)+"*":buf_buka_month=No
86880 buf_Buka_Born_Day(1)=buf_buka_month:a=buf_buka_month
86890 locate 1,3
86900 color RGB(255,255,255)
86910 print "部下の生まれた月(1月~12月):"+buf_buka_Month$
86920 goto Buka_Input_Born_Month2:
86930 case 1:
86940 count = 2:buf_buka_month=a*10+No
86950 if (No = -1) then
86960 'count=0
86970 month=buf_buka_month
86980 buf_buka_month=val(buf_buka_Month$)
86990 month=buf_buka_month
87000 '生まれた日に飛ぶ
87010 goto Buka_Input_Born_Day:
87020 else
87030 buf_buka_month = a * 10 + No
87040 buf_buka_Month$ = str$(buf_buka_month)
87050 buf_Buka_Born_Day(1) = buf_buka_month
87060 locate 1,3
87070 color Rgb(255,255,255)
87080 print "部下の生まれた月(1月~12月):" + buf_buka_Month$
87090 goto Buka_Input_Born_Month2:
87100 endif
87110 case 2:
87120 count=3
87130 'c= val(buf_Month$)
87140 'buf_month = c*10 + No
87150 'buf_Month$ = str$(buf_month)
87160 'locate 2,3
87170 'print "部下の生まれた月(1月～12月):";buf_Month$
87180 'goto Buka_Input_Born_Month2:
87190 'case 3:
87200 'count=4
87210 'b=val(buf_month$)
87220 'buf_month=c*10+No
87230 'buf_Month$=str$(buf_month)
87240 'locate 2,3
87250 'print "部下の生まれた月(1月～12月):";buf_Month$
87260 'buf_month=val(buf_Month$)
87270 'year=val(buf_year$)
87280 if (No=-1) then
87290 goto Buka_Input_Born_Day:
87300 else
87310 goto Input_Born_Month2:
87320 endif
87330 'case 4:
87340 'bufyear=buf_year
87350 'if (No=-1) then
87360 'buf_month = val(buf_Month$)
87370 'month = buf_month
87380 'sp_on 14,0
87390 'goto Input_Born_Day:
87400 'else
87410 'goto Input_Born_Month2:
87420 'endif
87430 end select
87440 endif
87450 '左の丸ボタン　キャンセル
87460 if (bg2=2) then
87470 select case count2
87480 case 0:
87490 if (No = -1) then
87500 buf_buka_month=0:buf_buka_Month$="**"
87510 count=0
87520 goto rewrite2:
87530 else
87540 if ((No>=1 and No<=9) or (No>=10 and No <=12)) then
87550 buf_month=0:buf_Month$="**"
87560 locate 2,3
87570 color rgb(255,255,255)
87580 print "                                       "
87590 goto rewrite2:
87600 if (No>12) then
87610 ui_msg"値が範囲外です。"
87620 goto rewrite2:
87630 endif
87640 endif
87650 endif
87660 rewrite2:
87670 locate 2,3
87680 color rgb(255,255,255)
87690 print "                                      "
87700 locate 2,3
87710 print "部下の生まれた月(1月~12月):";buf_buka_Month$
87720 goto Buka_Input_Born_Month2:
87730 end select
87740 'endif
87750 endif
87760 end
87770 '2.部下の生まれた月'
87780 '3.部下の生まれた日'
87790 '生れた日を入力
87800 Buka_Input_Born_Day:
87810 '生まれた日入力
87820 cls 3:play ""
87830 'No=-1:Okのとき
87840 init"kb:4":key$="":bg = 0:y = 0:No = -1:y2 = 0:buf_Day$ = "**":count=0:bg2=0
87850 for i=0 to 1
87860 buf_day(i)=0
87870 next i
87880 'gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
87890 '****************************************************************************************************
87900 'WUXG(1920x1200)の時ここから
87910 '****************************************************************************************************
87920 gload Gazo$ + "Screen2.png",0,0,0
87930 gload Gazo$ + "downscreen.png",0,0,800
87940 '****************************************************************************************************
87950 'WUXG(1920x1200)の時ここまで
87960 '****************************************************************************************************
87970 'Init"kb:2"
87980 '音声ファイル再生 2023.06.07
87990 play Voice$ + "Input_Born_Day_Buka_20230831.mp3"
88000 font 48
88010 locate 0,1
88020 '文字色：黒　 color rgb(0,0,0)
88030 color rgb(255,255,255)
88040 print "部下の生まれた日を入れて下さい" + chr$(13)
88050 color rgb(255,255,255)
88060 locate 1,3
88070 print "部下の生まれた日(1日~31日):";buf_Day$
88080 color rgb(255,255,255)
88090 'locate 4,6:print ":7"
88100 'locate 9,6:print ":8"
88110 'locate 12,6:print ":9"
88120 'locate 4,6
88130 'print ":7  :8  :9" + chr$(13)
88140 'color rgb(255,255,255)
88150 'locate 4,8
88160 'print ":4  :5  :6" + chr$(13)
88170 'color rgb(255,255,255)
88180 'locate 4,10
88190 'print ":1  :2  :3" + chr$(13)
88200 'locate 4,12
88210 'print "    :0"
88220 'locate 12,12
88230 'color rgb(0,0,255)
88240 'print ":Ok"
88250 sp_on 4,0: sp_on 5,0:sp_on 6,0
88260 sp_on 7,0:sp_on 8,0:sp_on 9,0
88270 sp_on 10,0:sp_on 11,0:sp_on 12,0
88280 sp_on 13,0:sp_on 14,1
88290 Buka_Input_Born_Day2:
88300 '
88310 key$="":bg=0:y=0:y2=0:bg2=0
88320 while ((key$ <> chr$(13)) and (bg <> 2) and (y <> 1) and (y <> -1) and (y2 <> 1) and (y2 <> -1) and (key$ <> chr$(29)) and (bg2 <> 2))
88330 key$ = inkey$
88340 bg = strig(1)
88350 y = stick(1)
88360 y2 = stick(0)
88370 bg2 = strig(0)
88380 pause 200
88390 wend
88400 '十字キー　ここから
88410 '上の矢印　または、十字キー上
88420 if ((y = -1) or (key$ = chr$(30))) then
88430 select case No
88440 'No=-1:okのとき:初期の状態
88450 '0kボタンから３に移動
88460 '上に行く 処理
88470 case -1:
88480 No=3:sp_on 12,1:sp_on 14,0
88490 pause 200:goto Buka_Input_Born_Day2:
88500 '選択肢:3
88510 '3ボタンから 6に移動
88520 case 3:
88530 No=6:sp_on 12,0:sp_on 11,1
88540 pause 200:goto Buka_Input_Born_Day2:
88550 '6ボタンから ９に移動
88560 case 6:
88570 No=9:sp_on 10,1:sp_on 11,0
88580 pause 200:goto Buka_Input_Born_Day2:
88590 '6ボタンから ９に移動　ここまで
88600 '9で上を押して何もしない
88610 case 9:
88620 '何もしない
88630 No=9
88640 pause 200:goto Buka_Input_Born_Day2:
88650 '9で上を押しても何もしない　ここまで
88660 '上　 0ボタンから2ボタン
88670 'sp_on 6,1:1
88680 'sp_on 8,1:5
88690 'sp_on 7,1:7
88700 case 0:
88710 No=2:sp_on 13,0:sp_on 9,1:
88720 pause 200:goto Buka_Input_Born_Day2:
88730 '上  0ボタンから2ボタン　ここまで
88740 '2から５になる 上
88750 case 2:
88760 No=5:sp_on 8,1:sp_on 9,0:
88770 pause 200:goto Buka_Input_Born_Day2:
88780 case 5:
88790 No=8:sp_on 7,1:sp_on 8,0
88800 pause 200:goto Buka_Input_Born_Day2:
88810 case 8:
88820 pause 200:goto Buka_Input_Born_Day2:
88830 case 1:
88840 No=4:sp_on 5,1:sp_on 6,0
88850 pause 200:goto Buka_Input_Born_Day2:
88860 case 4:
88870 No=7:sp_on 4,1:sp_on 5,0
88880 pause 200:goto Buka_Input_Born_Day2:
88890 case 7:
88900 pause 200:goto Buka_Input_Born_Day2:
88910 end select
88920 endif
88930 '左３　ここまで
88940 '下の矢印
88950 '中央 2
88960 if ((y=1) or (key$ = chr$(31))) then
88970 select case No
88980 '9から６に下げる
88990 case 9:
89000 No=6:sp_on 11,1:sp_on 10,0
89010 pause 200:goto Buka_Input_Born_Day2:
89020 '6から３に下げる
89030 case 6:
89040 No=3:sp_on 12,1:sp_on 11,0
89050 pause 200:goto Buka_Input_Born_Day2:
89060 '3から０ｋに変える
89070 case 3:
89080 No=-1:sp_on 14,1:sp_on 12,0
89090 pause 200:goto Buka_Input_Born_Day2:
89100 'Okから下のボタンを押しても何もしない
89110 case -1:
89120 pause 200:goto Buka_Input_Born_Day2:
89130 case 8:
89140 No=5:sp_on 8,1:sp_on 7,0
89150 pause 200:goto Buka_Input_Born_Day2:
89160 case 5:
89170 No=2:sp_on 9,1:sp_on 8,0
89180 pause 200:goto Buka_Input_Born_Day2:
89190 case 2:
89200 No=0:sp_on 13,1:sp_on 9,0
89210 pause 200:goto Buka_Input_Born_Day2:
89220 case 0:
89230 pause 200:goto Buka_Input_Born_Day2:
89240 case 7:
89250 No=4:sp_on 5,1:sp_on 4,0
89260 pause 200:goto Buka_Input_Born_Day2:
89270 case 4:
89280 No=1:sp_on 6,1:sp_on 5,0
89290 pause 200:goto Buka_Input_Born_Day2:
89300 case 1:
89310 pause 200:goto Buka_Input_Born_Day2:
89320 end select
89330 endif
89340 '左へボタン 十字キー　左　or 　カーソル左
89350 if ((y2 = -1) or (key$ = chr$(29))) then
89360 select case No
89370 'Ok ボタン  Okから　左　０に行く
89380 case -1:
89390 No=0:sp_on 13,1:sp_on 14,0
89400 pause 200:goto Buka_Input_Born_Day2:
89410 '0 ボタン  左　何もしない
89420 case 0:
89430 pause 200:goto Buka_Input_Born_Day2:
89440 case 3:
89450 No=2:sp_on 9,1:sp_on 12,0:
89460 pause 200:goto Buka_Input_Born_Day2:
89470 case 2:
89480 No=1:sp_on 6,1:sp_on 9,0:
89490 pause 200:goto Buka_Input_Born_Day2:
89500 case 1:
89510 pause 200:goto Buka_Input_Born_Day2:
89520 case 6:
89530 No=5:sp_on 8,1:sp_on 11,0
89540 pause 200:goto Buka_Input_Born_Day2:
89550 case 5:
89560 No=4:sp_on 5,1:sp_on 8,0
89570 pause 200:goto Buka_Input_Born_Day2:
89580 case 4:
89590 pause 200:goto Buka_Input_Born_Day2:
89600 case 9:
89610 No=8:sp_on 7,1:sp_on 10,0
89620 pause 200:goto Buka_Input_Born_Day2:
89630 case 8:
89640 No=7:sp_on 4,1:sp_on 7,0
89650 pause 200:goto Buka_Input_Born_Day2:
89660 case 7:
89670 pause 200:goto Buka_Input_Born_Day2:
89680 end select
89690 endif
89700 '右  十字キー　右　or カーソル　右
89710 if ((y2 = 1) or (key$ = chr$(28))) then
89720 select case No
89730 '0ボタンからokボタン右に移動
89740 case 0:
89750 No=-1:sp_on 14,1:sp_on 13,0
89760 pause 200:goto Buka_Input_Born_Day2:
89770 '0ボタンからokボタン 右に移動　ここまで
89780 'OKボタンで右を押して何もしない
89790 case -1:
89800 pause 200:goto Buka_Input_Born_Day2:
89810 case 1:
89820 No=2:sp_on 9,1:sp_on 6,0
89830 pause 200:goto Buka_Input_Born_Day2:
89840 case 2:
89850 No=3:sp_on 12,1:sp_on 9,0
89860 pause 200:goto Buka_Input_Born_Day2:
89870 case 3:
89880 pause 200:goto Buka_Input_Born_Day2:
89890 case 4:
89900 No=5:sp_on 8,1:sp_on 5,0
89910 pause 200:goto Buka_Input_Born_Day2:
89920 case 5:
89930 No=6:sp_on 11,1:sp_on 8,0
89940 pause 200:goto Buka_Input_Born_Day2:
89950 case 7:
89960 No=8:sp_on 7,1:sp_on 4,0
89970 pause 200:goto Buka_Input_Born_Day2:
89980 case 8:
89990 No=9:sp_on 10,1:sp_on 7,0
90000 pause 200:goto Buka_Input_Born_Day2:
90010 case 9:
90020 pause 200:goto Buka_Input_Born_Day2:
90030 case 6:
90040 pause 200:goto Buka_Input_Born_Day2:
90050 end select
90060 'Okから右ボタンを押して何もしない ここまで
90070 endif
90080 '十字キー　ここまで
90090 '右の丸ボタンを押したとき
90100 if ((bg = 2) or (key$ = chr$(13))) then
90110 'count :決定ボタンを押した回数
90120 select case (count)
90130 '1桁目入力
90140 case 0:
90150 count = 1:
90160 if (No = -1) then
90170 '1桁目　OKでは何もしない
90180 'goto check:
90190 No=0
90200 else
90210 'ok以外のボタンを押したとき
90220 buf_buka_day = No:buf_buka_Day$ = str$(No)
90230 if (buf_buka_day = 1 or buf_buka_day=2 or buf_buka_buka_day=3 ) then
90240 buf_buka_Day$ = str$(No) + "*"
90250 endif
90260 a=No
90270 buf_Buka_Born_Day(2) = buf_buka_day
90280 locate 1,3
90290 print"                                      "
90300 color RGB(255,255,255)
90310 locate 1,3
90320 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
90330 endif
90340 check2:
90350 if (No >= 1 and No <= 9) then
90360 sp_on 14,0
90370 goto Buka_Input_Born_Day2:
90380 else
90390 sp_on 14,0
90400 goto Result_Business_Aisyou:
90410 end
90420 endif
90430 case 1:
90440 '10未満の数字ボタン+okボタン or 2桁目の数字ボタン
90450 count = 2:
90460 'locate 2,3
90470 'color RGB(255,255,255)
90480 'print "生まれた日(1日~31日):";buf_Day$
90490 'Okボタンを押したときの処理
90500 '入力値　10未満のとき
90510 'c = buf_day
90520 if (No = -1) then
90530 'c=buf_day
90540 ' buf_day = c
90550 'buf_Day$ = str$(buf_day)
90560 '10以下のとき
90570 No=0
90580 if (buf_day < 10) then
90590 sp_on 14,0
90600 goto Result_Business_Aisyou:
90610 end
90620 endif
90630 else
90640 sp_on 14,0
90650 'c=No
90660 buf_buka_day = a * 10 + No
90670 buf_buka_Day$ = str$(buf_buka_day)
90680 buf_Buka_Born_Day(2) = buf_buka_day
90690 locate 0,3
90700 color Rgb(255,255,255)
90710 print "                                       "
90720 locate 1,3
90730 print "部下の生まれた日(1日~31日):" + buf_buka_Day$
90740 goto Buka_Input_Born_Day2:
90750 endif
90760 '生まれた日　2桁目の数字　or 1桁の数字 + ok
90770 case 2:
90780 count=0
90790 'c=val(buf_Day$)
90800 'buf_day=c*10+No
90810 'buf_Day$=str$(buf_day)
90820 'day=buf_day
90830 'locate 2,3
90840 'print "生まれた日(1日〜31日):";buf_Day$
90850 'No=-1:ok ボタンを押したとき
90860 if (No = -1) then No=0
90870 if ((buf_buka_day > 0) and (buf_buka_day < 32)) then
90880 sp_on 14,0
90890 goto Result_Business_Aisyou:
90900 else
90910 goto Buka_Input_Born_Day2:
90920 endif
90930 'Okボタン以外を押したとき
90940 else
90950 c=val(buf_buka_Day$)
90960 buf_buka_day = c * 10 + No
90970 buf_buka_Day$ = str$(buf_buka_day)
90980 locate 1,3
90990 print "                "
91000 locate 1,3
91010 print "生まれた日(1日~31日):"+buf_buka_Day$
91020 goto Buka_Input_Born_Day2:
91030 'endif
91040 case 3:
91050 count=4
91060 'c=val(buf_day$)
91070 'buf_day=c*10+No
91080 'buf_day$=str$(buf_day)
91090 'locate 2,3
91100 'print "生まれた日を入れてください:";buf_day$
91110 'year=val(buf_year$)
91120 if (No = -1) then
91130 'goto Buka_Input_Born_Day:
91140 sp_on 14,0:
91150 goto complate_jyoushi:
91160 else
91170 goto Buka_Input_Born_Month2:
91180 endif
91190 'case 4:
91200 'bufyear=buf_year
91210 'if (No=-1) then
91220 'buf_day = val(buf_day$)
91230 'bufday = buf_day
91240 'sp_on 14,0
91250 goto complate_jyoushi:
91260 'else
91270 'goto Buka_Input_Born_Day2:
91280 'endif
91290 end select
91300 endif
91310 if (bg2=2) then
91320 select case count2
91330 case 0:
91340 if (No=-1) then
91350 'buf_day=0:buf_Day$="**"
91360 if (buf_buka_day >= 1 and buf_buka_day <= 31) then
91370 count=0
91380 buf_buka_day=0:buf_buka_Day$="**"
91390 goto rewrite_day3:
91400 else
91410 buf_buka_day=0:buf_buka_Day$="**"
91420 ui_msg"値が範囲外です"
91430 endif
91440 goto rewrite_day3:
91450 else
91460 goto rewrite_day3:
91470 endif
91480 rewrite_day3:
91490 locate 2,3
91500 color rgb(255,255,255)
91510 print "                                      "
91520 locate 1,3
91530 print "生まれた日(1日~31日):"+buf_buka_Day$
91540 goto Buka_Input_Born_Day2:
91550 end select
91560 endif
91570 '3.部下の生まれた日'
91580 '部下'
91590 '--------------------------------------------'
91600 'ビジネの相性　結果表示
91610 Result_Business_Aisyou:
91620 cls 3:init "kb:4"
91630 a=0:b=0:c=0:d=0:e=0:f=0
91640 bg=0:key$=""
91650 '****************************************************************************************************
91660 'WUXG(1920x1200)の時ここから
91670 '****************************************************************************************************
91680 gload Gazo$ + "Screen1.png",0,0,0
91690 gload Gazo$ + "downscreen.png",0,0,800
91700 '****************************************************************************************************
91710 'WUXG(1920x1200)の時ここから
91720 '****************************************************************************************************
91730 sp_on 14,0
91740 d = buf_Buka_Born_Day(0):e = buf_Buka_Born_Day(1):f = buf_Buka_Born_Day(2)
91750 buf_Buka = Kabara_Num(d,e,f)
91760 a_2 = buf_Buka
91770 Result_Aisyou$ = Kabara_Aisyou$(a_1,a_2)
91780 locate 0,1
91790 color rgb(255,0,0)
91800 print "●.相性診断結果１"
91810 locate 0,4:
91820 color rgb(255,255,255)
91830 print "1.上司の名前:";buffer_name$(0)
91840 locate 0,6
91850 print buf_Jyoushi_Born_Day(0) ;"." ;buf_Jyoushi_Born_Day(1);"." ;buf_Jyoushi_Born_Day(2);",数秘:";buf_Jyoushi
91860 locate 0,8
91870 print "2.部下の名前:";buffer_name$(1)
91880 locate 0,10
91890 print buf_Buka_Born_Day(0);".";buf_Buka_Born_Day(1);".";buf_Buka_Born_Day(2); ",";"数秘:";buf_Buka
91900 locate 0,12
91910 print "3.上司と部下の相性:";Result_Aisyou$
91920 locate 1,15
91930 color rgb(0,0,0)
91940 print "丸ボタン右:相性の説明,丸ボタン左:再診断"
91950 while ((bg <> 2) and (key$ <> chr$(13)) and bg2<>2 )
91960 bg = strig(1)
91970 key$ = inkey$
91980 bg2 = strig(0)
91990 pause 5
92000 wend
92010 if ((bg = 2) or (key$ = chr$(13))) then goto Result_Business_Aisyou2:
92020 if (bg2 = 2) then
92030 cls 3:goto Business_Aishou_Input_1_parson:
92040 endif
92050 'ビジネスの相性占い　結果2　説明
92060 Result_Business_Aisyou2:
92070 cls 3:bg=0:bg2=0:key$="":buf$=read_explain$(Result_Aisyou$):init "kb:4"
92080 gload Gazo$ + "Screen1.png",0,0,0
92090 locate 0,1
92100 color rgb(255,0,0)
92110 print "●.相性の説明"
92120 color rgb(255,255,255)
92130 locate 0,4
92140 print "相性:";Result_Aisyou$
92150 locate 0,6:
92160 print "相性の説明:";buf$
92170 locate 0,15
92180 color rgb(0,0,0)
92190 print "右の丸ボタン:トップ,左のボタン:前の画面"
92200 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
92210 bg = strig(1)
92220 bg2 = strig(0)
92230 key$ = inkey$
92240 pause 200
92250 wend
92260 if ((bg = 2) or (key$ = chr$(13))) then goto Main_Screen:
92270 if ((bg2 = 2)) then goto Result_Business_Aisyou:
92280 'Birds Eye Menu List
92290 Result_Birtheye_List1:
92300 'dim List$(4) Topに定義
92310 List$(0) = "1.バーズアイグリッドをもう一度診断"
92320 List$(1) = "2.診断結果"
92330 List$(2) = "3.データーを保存"
92340 List$(3) = "4.トップ画面に戻る"
92350 Birds_List1 = ui_select("List$","Menu")
92360 select case (Birds_List1)
92370 case 0: '1.もう一度診断
92380 for i=0 to 8
92390 buffer(i)=0
92400 next i
92410 goto Input_name1_Birdseye:
92420 case 1: '2.次へ行く
92430 gosub BirdsEye_Result2:
92440 case 2: '3.データーを保存
92450 ui_msg "データーを保存します"
92460 goto BirdsEye_Save_data:
92470 case 3: '4.トップに戻る
92480 for i=0 to 8
92490 buffer(i)=0
92500 next i
92510 goto Main_Screen:
92520 end select
92530 'BirdsEye Data Save
92540 BirdsEye_Save_data:
92550 if dir$(Save_data_Birdseye$) = "" then
92560 Mkdir Save_data_Birdseye$
92570 endif
92580 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for append as #1
92590 print #1,ucase$(name1$) + "," + ucase$(name2$) + "," + str$(buffer(0))+ "," + str$(buffer(1)) + "," + str$(buffer(2))+"," + str$(buffer(3)) + "," + str$(buffer(4)) + "," + str$(buffer(5)) + "," + str$(buffer(6)) + "," + str$(buffer(7)) + "," + str$(buffer(8))
92600 close #1
92610 ui_msg "データーを保存しました"
92620 goto Result_Birtheye_List1:
92630 'return
92640 '自作関数 ここから
92650 BirdsEyeGrid_Entry:
92660 cls 3:init "kb:4":key$="":bg=0:flag=0:bg2=0:play""
92670 '****************************************************************************************************
92680 'WUXG(1920x1200)の時 1280x 800の時共通　ここから
92690 '****************************************************************************************************
92700 gload Gazo$ + "BirdsEyeGrid_Entry_1080x240_20231220.png",0,0,0
92710 '****************************************************************************************************
92720 'WUXG(1920x1200)の時 1280x 800の時共通 ここまで
92730 '****************************************************************************************************
92740 font FONT
92750 if dir$(Save_data_Birdseye$ + "BirdsEyedata_List.dat") = "" then
92760 locate 1,2:print "登録件数は0件です。" + chr$(13):flag=0
92770 locate 1,4:print "右の丸:メイン画面へ行く"
92780 else
92790 flag=1
92800 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
92810 while (eof(1)=0)
92820 line input #1,a$
92830 n = n + 1
92840 wend
92850 close #1
92860 'endif
92870 talk "登録件数は"+str$(n)+"件です。"
92880 if ((size(0)<=1280) and (size(1)<=800)) then
92890 '*****************************************************************************************************
92900 '1280x800の時　ここから
92910 '*****************************************************************************************************
92920 locate 1,3:print "登録件数は";str$(n);"件です"
92930 locate 1,6:print "左の丸：メイン画面へ行く"
92940 '*****************************************************************************************************
92950 '1280x800の時　ここまで
92960 '*****************************************************************************************************
92970 else
92980 '*****************************************************************************************************
92990 'WUXG(1920x1280)の時　ここから
93000 '*****************************************************************************************************
93010 locate 1,2:print "登録件数は";str$(n);"件です"
93020 locate 1,4:print "左の丸：メイン画面へ行く"
93030 '*****************************************************************************************************
93040 'WUXG(1920x1280)の時　ここまで
93050 '*****************************************************************************************************
93060 endif
93070 endif
93080 Entry_Count:
93090 while (bg <> 2 and key$ <> chr$(13) and bg2 <> 2)
93100 key$ = inkey$
93110 bg = strig(1)
93120 bg2 = strig(0)
93130 pause 200
93140 wend
93150 if ((bg = 2) or (key$ = chr$(13))) then
93160 if (n = 0) then
93170 '登録件数　０件のとき　メイン画面に行く
93180 goto Main_Screen:
93190 else
93200 '登録件数1件以上　次へ行く
93210 'ここを変更する
93220 goto Entry_List:
93230 endif
93240 endif
93250 if (bg2 = 2) then
93260 if (n > 0) then
93270 goto Main_Screen:
93280 else
93290 goto Entry_Count:
93300 endif
93310 endif
93320 Entry_List:
93330 cls 3:play"":color rgb(255,255,255):init "kb:4"
93340 if ((size(0)<=1280) and (size(1)<=800)) then
93350 gload Gazo$ + Gazo_WXGA$ + "Result_Birtheye1_907x680_20240222.png",0,0,0
93360 else
93370 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
93380 endif
93390 dim buffer_List$(11,n)
93400 'ファイル読み込み ここから
93410 open Save_data_Birdseye$ + "BirdsEyedata_List.dat" for input as #1
93420 for i=0 to 10
93430 for j=0 to n-1
93440 input #1,a$
93450 buffer_List$(i,j)=a$
93460 next j
93470 next i
93480 close #1
93490 'erase buffer_List$
93500 'color rgb(255,255,255)
93510 i=0:key$="":bg=0:init"kb:4":bg2=0
93520 while (key$ <> chr$(13) and bg <> 2 and bg2 <> 2)
93530 key$ = inkey$
93540 bg = strig(1)
93550 bg2=strig(0)
93560 pause 200
93570 wend
93580 color rgb(0,0,0)
93590 locate 1,15:print "次へ"
93600 'show_ListData:
93610 'j=0
93620 repeat (j=0)
93630 show_ListData:
93640 cls
93650 color rgb(255,255,255)
93660 locate 6,3:print buffer_List$(0,j) + buffer_List$(1,j)
93670 '1の文字データー
93680 locate 4,14:print buffer_List$(2,j)
93690 '2の文字データー
93700 locate 4,9:print buffer_List$(3,j)
93710 '3の文字データー
93720 locate 4,5:print buffer_List$(4,j)
93730 '4の文字データー
93740 locate 11,14:print buffer_List$(5,j)
93750 '5の文字データー
93760 locate 11,9:PRINT buffer_List$(6,j)
93770 '6の文字データー
93780 locate 11,5:print buffer_List$(7,j)
93790 '7の文字データー
93800 locate 16,14:print buffer_List$(8,j)
93810 '8の文字データー
93820 locate 16,9:print buffer_List$(9,j)
93830 '9の文字データー
93840 locate 16,5:print buffer_List$(10,j)
93850 color rgb(0,0,0)
93860 locate 1,15:print "右の丸：次へ"
93870 if (bg=2 or key$=chr$(13)) then
93880 j=j+1
93890 endif
93900 if (bg2=2) then
93910 goto Main_Screen:
93920 endif
93930 until (j=n)
93940 'erase buffer_List$:
93950 goto show_ListData:
93960 'ファイル読み込み　ここまで
93970 func read_explain$(ba$)
93980 d$=""
93990 buf_String$=""
94000 if ba$="A" then
94010 open Business_Aisyou_Explain$ + "Business_Result_Explain_A.dat" for input as #1
94020 line input #1,a$
94030 a1$=mid$(a$,1,12)
94040 a2$=mid$(a$,13,17)
94050 a3$=mid$(a$,30,17)
94060 a4$=mid$(a$,47,18)
94070 a5$ = a1$ + chr$(13) + a2$ + chr$(13) + a3$+chr$(13)+a4$
94080 buf_String$ = a5$
94090 close #1
94100 endif
94110 if ba$="B"  then
94120 open Business_Aisyou_Explain$ + "Business_Result_Explain_B.dat" for input as #1
94130 line input #1,b$
94140 b1$=mid$(b$,1,15)
94150 b2$=mid$(b$,16,21)
94160 'b3$=mid$(b$,33,3)
94170 b4$ = b1$ + chr$(13) + b2$ + chr$(13)
94180 buf_String$ = b4$
94190 close #1
94200 endif
94210 if ba$="C"  then
94220 open Business_Aisyou_Explain$ + "Business_Result_Explain_C.dat" for input as #1
94230 line input #1,c$
94240 c1$ = Mid$(c$,1,15)
94250 c2$ = Mid$(c$,16,33)
94260 c3$ = c1$ + chr$(13) + c2$
94270 buf_String$ = c3$
94280 close #1
94290 endif
94300 if ba$="D" then
94310 open Business_Aisyou_Explain$ + "Business_Result_Explain_D.dat" for input as #1
94320 line input #1,d$
94330 d1$=mid$(d$,1,15)
94340 d2$=mid$(d$,16,22)
94350 d3$=mid$(d$,38,7)
94360 d4$ = d1$ + chr$(13) + d2$ + chr$(13) + d3$
94370 buf_String$ = d4$
94380 close #1
94390 endif
94400 if ba$="E"  then
94410 open Business_Aisyou_Explain$ + "Business_Result_Explain_E.dat" for input as #1
94420 line input #1,e$
94430 e1$=Mid$(e$,1,16)
94440 e2$=Mid$(e$,17,16)
94450 e3$=Mid$(e$,33,12)
94460 e4$=Mid$(e$,45,17)
94470 e5$=Mid$(e$,62,17)
94480 e6$ = e1$ +chr$(13) + e2$ + chr$(13) + e3$ + chr$(13) + e4$ + chr$(13) + e5$
94490 buf_String$ = e6$
94500 close #1
94510 endif
94520 if ba$="F" then
94530 '改行を追加して表示を調整
94540 open Business_Aisyou_Explain$ + "Business_Result_Explain_F.dat" for input as #1
94550 line input #1,f$
94560 f1$=Mid$(f$,1,15)
94570 f2$=Mid$(f$,16,12)
94580 buf_String$ = f1$+chr$(13)+f2$
94590 close #1
94600 endif
94610 if ba$="G" then
94620 open Business_Aisyou_Explain$ + "Business_Result_Explain_G.dat" for input as #1
94630 line input #1,g$
94640 g1$ = mid$(g$,1,16)
94650 g2$ = mid$(g$,17,18)
94660 g3$ = mid$(g$,36,21)
94670 g4$ = mid$(g$,56,6)
94680 g5$ = g1$ + chr$(13) + g2$ + chr$(13) + g3$ + chr$(13) +g4$
94690 buf_String$ = g5$
94700 close #1
94710 endif
94720 if ba$="H" then
94730 open Business_Aisyou_Explain$ + "Business_Result_Explain_H.dat" for input as #1
94740 line input #1,h$
94750 h1$=Mid$(h$,1,17)
94760 h2$=Mid$(h$,18,21)
94770 h3$=Mid$(h$,39,20)
94780 h$ = chr$(13) + h1$ + chr$(13) + h2$ + chr$(13) + h3$
94790 buf_String$ = h$
94800 close #1
94810 endif
94820 if ba$ = "I" then
94830 open Business_Aisyou_Explain$ + "Business_Result_Explain_I.dat" for input as #1
94840 line input #1,i$
94850 i1$=Mid$(i$,1,10)
94860 i2$=Mid$(i$,11,13)
94870 i3$=Mid$(i$,25,16)
94880 i$=i1$+chr$(13)+i2$+chr$(13)+i3$
94890 buf_String$ = i$
94900 close #1
94910 endif
94920 buffer$ = buf_String$
94930 endfunc buffer$
94940 'カバラ数（数秘番号を求める）
94950 func Kabara_Num(buffer_Year,month,day)
94960 '=============================
94970 'a1:4桁のうちの1桁目を求める
94980 '例 a1:1234の4が1桁目
94990 'a2:4桁のうちの2桁目を求める
95000 '例:a2:1234の3が2桁目
95010 'a3:4桁のうちの3桁目を求める
95020 '例 a3:1234の2が3桁目
95030 'a4:4桁のうちの4桁目を求める
95040 '例 a4:1234の1が4桁目
95050 '==============================
95060 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
95070 Year = buffer_Year
95080 '処理1　整数部分を取り出す。
95090 a4 = fix(Year / 1000)
95100 a3 = fix(Year / 100) - (a4 * 10)
95110 a2 = fix(Year / 10) - (a4 * 100 + a3 * 10)
95120 a1 = fix(Year - (a4 * 1000 + a3 * 100 + a2 * 10))
95130 '処理　２　取り出した整数部分を足す。
95140 a_ = a1 + a2 + a3 + a4 +month + day
95150 'a1=0:a2=0:a3=0:a4=0
95160 if ((a_ = 11) or (a_ > 1 and a _< 9)) then
95170 buffer = a_
95180 'else
95190 goto recomp2:
95200 'if (a_ = 10) then
95210 '  buffer = 1
95220 endif
95230 recomp2:
95240 a5=0:a6=0
95250 a5 = fix(a_ / 10)
95260 a6 = (a_) - (a5 * 10)
95270 a_ = a5 + a6
95280 if ((a_>0 and a_<10) or (a_=11) or (a_=22)) then
95290 '結果に行く
95300 goto Res2:
95310 '  if ((a_>11) and (a_<99)) then
95320 else
95330 '再度計算
95340 goto recomp2:
95350 endif
95360 '     a1 = fix(a_ / 10)
95370 '     a2 = a_ - (a1 * 10)
95380 '     a_ = a1 + a2
95390 '     buffer = a_
95400 'endif
95410 'else
95420 '    bffer = a_
95430 'endif
95440 'endif
95450 'else
95460 'talk "プログラムを終了します。"
95470 'end
95480 'endif
95490 'kabara = 10
95500 Res2:
95510 kabara = a_
95520 endfunc kabara
95530 func Kabara_Aisyou$(buff1,buff2)
95540 a=0:b=0
95550 '範囲　1~9
95560 if ((buff1 > 0 and buff1 < 10)) then
95570 a = buff1
95580 else
95590 Select case buff1
95600 case 11:
95610 buff1=9:a=buff1
95620 case 22:
95630 buff1=10:a=buff1
95640 end select
95650 endif
95660 '範囲　１~９
95670 if ((buff2 > 0 and buff2 < 10)) then
95680 b = buff2
95690 else
95700 select case buff2
95710 case 11:
95720 buff2=9:b=buff2
95730 case 12:
95740 buff2=10:b=buff2
95750 end select
95760 endif
95770 Aisyou$ = Buffer_Business_Aisyou$(a,b)
95780 endfunc Aisyou$
95790 '**********************************************************
95800 '0-0.Top Screen Recheck: ここから
95810 '**********************************************************
95820 TopScreenRecheck:
95830 color rgb(217,255,212)
95840 locate 1,3:print  "                            "
95850 locate 1,4:print  "                            "
95860 locate 1,5
95870 print "番号を選んでください"
95880 locate 1,6:print  "                            "
95890 locate 1,7:print  " :1.数秘術占い"
95900 locate 1,8:print  "                            "
95910 locate 1,9:print  "                            "
95920 locate 1,10:print  "                            "
95930 locate 1,10:print  " :2.設 定"
95940 locate 1,11:print  "                            "
95950 locate 1,12:print  "                            "
95960 locate 1,13:print  " :3.ヘルプ"
95970 locate 1,14:print  "                            "
95980 locate 1,15:print  "                            "
95990 locate 1,16:print  "                            "
96000 locate 1,16:print  " :4.(プログラムを)終了する"
96010 locate 1,17:print  "                            "
96020 locate 1,18:print  "                            "
96030 return
96040 '**********************************************************
96050 '0-0.Top Screen Recheck:　ここまで
96060 '**********************************************************
96070 '***********************************************************
96080 '1-1.数秘術トップ画面 ここから
96090 '**********************************************************
96100 Kabara_TopScreen_Recheck:
96110 color rgb(255,255,255):font FONT
96120 locate 1,5
96130 print "番号を選んでください" + chr$(13)
96140 locate 1,7
96150 print " :1.数秘術占い" + chr$(13)
96160 locate 1,10
96170 print " :2.バーズアイグリット" + chr$(13)
96180 locate 1,13
96190 print " :3.相性占い" + chr$(13)
96200 locate 1,16
96210 print " :4.トップ画面に戻る" + chr$(13)
96220 return
96230 '***************************************************************
96240 '1-1.数秘術トップ画面　ここまで
96250 '*************************************************************
96260 '**********************************************************
96270 '2-1 Setting Top Screen ここから
96280 '**********************************************************
96290 Setting_Recheck:
96300 cls:color rgb(255,255,255)
96310 locate 1,3:print  "                            "
96320 locate 1,4:print  "                            "
96330 locate 1,5:
96340 print "番号を選んでください"
96350 locate 1,6:print  "                            "
96360 locate 1,7:
96370 print " :1.トップ画面に戻る"
96380 locate 1,8:print  "                            "
96390 locate 1,9:print  "                            "
96400 locate 1,10:
96410 print " :2.バーズアイグリッドデーターリスト"
96420 locate 1,11:print  "                            "
96430 locate 1,12:print  "                            "
96440 locate 1,13:
96450 print " :3.未実装" + chr$(13)
96460 locate 1,14:print  "                            "
96470 locate 1,15:print  "                            "
96480 locate 1,16:
96490 print " :4.未実装" + chr$(13)
96500 locate 1,17:print  "                            "
96510 locate 1,18:print  "                            "
96520 return
96530 '**********************************************************
96540 '2-1 Setting Top Screen ここまで
96550 '**********************************************************
96560 '**********************************************************
96570 '3-1Help Top ReCheck ここから
96580 '**********************************************************
96590 Help_Top_ReCheck:
96600 font FONT
96610 color rgb(217,255,212)
96620 locate 1,3:print  "                       "
96630 locate 1,4:print  "                       "
96640 locate 1,5:print "番号を選んでください"
96650 locate 1,6:print  "                       "
96660 '0
96670 locate 1,7:print " :1.ルールの説明"
96680 '1
96690 locate 1,8:print  "                       "
96700 locate 1,9:print  "                       "
96710 locate 1,10:print " :2.バージョンの表示"
96720 locate 1,11:print  "                      "
96730 locate 1,12:print  "                      "
96740 '2
96750 locate 1,13:print " :3.参考文献"
96760 locate 1,14:print  "                      "
96770 locate 1,15:print  "                      "
96780 '3
96790 locate 1,16:print " :4.トップ画面に戻る"
96800 return
96810 '**********************************************************
96820 '3-1.Help Top ReCheckここまで
96830 '**********************************************************
96840 '***********************************************************
96850 '**********************************************************
96860 Suhi_Rule_Screen_Recheck:
96870 color rgb(255,255,255)
96880 font FONT
96890 locate 1,3:print  "                       "
96900 locate 1,4:print  "                       "
96910 locate 1,5
96920 print "番号を選んでください"
96930 locate 1,6:print  "                       "
96940 locate 1,7:    '〇
96950 print " :1.数秘術のやり方"
96960 locate 1,8:print  "                       "
96970 locate 1,9:print  "                       "
96980 locate 1,10:   '〇
96990 print " :2.バーズアイグリットの説明"
97000 locate 1,11:print  "                       "
97010 locate 1,12:print  "                       "
97020 locate 1,13:    '〇
97030 print " :3.トップ画面に戻る"
97040 locate 1,14:print  "                       "
97050 locate 1,15:print  "                       "
97060 return
97070 '=============================
97080 '自作関数 ここまで
97090 '1.数秘術　トップ画面
97100 '
97110 'Data_eraseを一番最後に持ってくる
97120 '=============================
97130 Data_erase:
97140 'メモリー削除
97150 erase buf_male_year
97160 erase buf_male_month
97170 erase buf_male_Born_Day
97180 erase buf_feMale_Born_Day
97190 erase buf_female_day
97200 erase buf_name1$
97210 erase buf_name2$
97220 erase buffer
97230 erase buf_chart$
97240 erase Buffer_Business_Aisyou$
97250 erase buffer_name$
97260 '上司の誕生日
97270 erase buf_Jyoushi_Born_Day
97280 '部下の誕生日
97290 erase buf_Buka_Born_Day
97300 erase buf_year
97310 erase buf_month
97320 erase buf_day
97330 'フォーカスライン
97340 erase Forcus1_buffer$
97350 erase Forcus2_buffer$
97360 erase Forcus3_buffer$
97370 'erase buffer_List$
97380 'Birds eye List Data 配列
97390 erase List$
97400 buffer$ = ""
97410 buf$ = ""
97420 buf_year$ = ""
97430 buf_Jyoushi_Kabara_Num = 0
97440 buf_Buka_Kabara_Num = 0
97450 count = 0
97460 buf_Month$ = ""
97470 buf_Day$ = ""
97480 b=0
97490 c=0
97500 No=0
97510 count=0
97520 return
