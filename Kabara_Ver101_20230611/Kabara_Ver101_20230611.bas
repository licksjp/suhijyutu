100 '数秘術占い 2019.08.16"
110 '改変履歴
120 '"2021.03.31 α版 画面背景アップデート"
130 '"2021.04.02 β版 更にアップデート音声追加"
140 '"2021.04.03 β2版 画面表示拡張"
150 '"2023.05.20 β3版　入力方式拡張"
160 'Version 更新履歴
170 '2023.06.04:Ver1.00_20230604
180 '2023.06.11:Ver101_20230611
190 Version$ = "Ver:1.0.1_20230611"
200 'Gazo file Folder
210 Gazo$ = "./data/Picture/"
220 'Voice files 2023
230 Voice$ = "./data/Voice/Voice/"
240 '変数定義 パート
250 'Main画面
260 screen 1,1,1,1
270 Main_Screen:
280 cls 3:
290 'font 32
300 No=0
310 '描画領域 ここから
320 '"1行"
330 '"line (0,0) - (850,60),rgb(0,0,255),bf"
340 '"line (0,0) - (850,63),rgb(0,255,0),b"
350 '"2行"
360 '"line (0,60) - (850,70*8),rgb(127,255,212),bf"
370 '"line (0,57) - (850,70*8-3),rgb(0,255,0),b"
380 '"3行"
390 '"line (0,70*8) - (850,70+70*8),rgb(0,255,0),bf"
400 '"line (0,70*8) - (850,70+70*8+3),rgb(0,0,255),b"
410 '描画領域　ここまで
420 gload Gazo$ + "Selection.png",1,5,200
430 gload Gazo$ + "Selection.png",1,5,300
440 gload Gazo$ + "Selection.png",1,5,400
450 gload Gazo$ + "Selection.png",1,5,500
460 gload Gazo$ + "TopScreen_20230310.png",0,0,0
470 sp_def 0,(5,300),32,32
480 sp_def 1,(5,400),32,32
490 sp_def 2,(5,500),32,32
500 sp_def 3,(5,600),32,32
510 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
520 sp_put 0,(5,300),0,0
530 sp_put 1,(5,400),1,0
540 sp_put 2,(5,500),2,0
550 sp_put 3,(5,600),3,0
560 Main_Top:
570 cls
580 'talk "メイン画面です。番号を選んでエンターキーを押してください。"
590 'Main Message 2023.06.07
600 play Voice$ + "Voice_Main_Message_20230607.mp3"
610 font 48:init"kb:4"
620 print chr$(13)+chr$(13)+chr$(13)
630 '"color rgb(255,0,255)"
640 color rgb(217,255,212)
650 print"番号を選んでください"+chr$(13)
660 '0
670 print" :1.数秘術占い"+chr$(13)
680 '1
690 print" :2.数秘術占いのルール";chr$(13)
700 '2
710 print" :3.バージョン"+chr$(13)
720 '3
730 print" :4.終了する"
740 COLOR rgb(0,0,0):No=0
750 locate 1,15
760 print "                                       "
770 locate 1,15:print " 1.数秘術占いを選択"
780 Main_Screen_Select:
790 y = 0:key$ = "":bg = 0
800 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2))
810 y = stick(1)
820 '"May (2023)"
830 key$ = inkey$
840 bg = strig(1)
850 pause 2
860 wend
870 '1.
880 'ジョイパッドのソース ソート　ここから
890 'カーソル　下 or 十字キー下
900 if ((y = 1) or (key$ = chr$(31))) then
910 select case No
920 case 0:
930 '1
940 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術占いのルールを選択":goto Main_Screen_Select:
950 case 1:
960 '2
970 No=2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.バージョンを選択":goto Main_Screen_Select:
980 case 2:
990 '3
1000 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.終了するを選択":goto Main_Screen_Select:
1010 case 3:
1020 '0
1030 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on  2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
1040 end select
1050 endif
1060 '2.
1070 'カーソル　上　or 十字キー  上
1080 if ((y = -1) or (key$ = chr$(30))) then
1090 select case No
1100 case 0:
1110 '3
1120 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.終了するを選択":goto Main_Screen_Select:
1130 case 1:
1140 '0
1150 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1160 case 2:
1170 '1
1180 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.数秘術占いのルールを選択":goto Main_Screen_Select:
1190 case 3:
1200 '2
1210 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.バージョンを選択":goto Main_Screen_Select:
1220 end select
1230 endif
1240 'ジョイパッド　ソース 部分　ここまで
1250 'ジョイパッド右　　or Enter key 決定
1260 if ((bg = 2) OR (key$ = chr$(13))) then
1270 select case No
1280 case 0:
1290 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
1300 case 1:
1310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
1320 case 2:
1330 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
1340 case 3:
1350 play Voice$ + "Voice_Finish_Program_20230607.mp3":pause 300:color rgb(255,255,255):cls 3:cls 4:end
1360 end select
1370 endif
1380 'Input"番号:",selectNo
1390 '"if (selectNo = 1) then goto Input_Seireki:"
1400 '"if (selectNo = 2) then goto Suhi_Rule:"
1410 '"if (selectNo = 3) then goto Version:"
1420 '"if (selectNo = 4) then talk"終了します":cls 3:ui_msg"終了します":color rgb(255,255,255):end"
1430 '"if (selectNo > 4 or selectNo = 0)  then goto Main_Screen:"
1440 'Version
1450 Version:
1460 cls 3
1470 '描画領域　ここから
1480 '"line(0,0)-(1100,60),rgb(0,0,255),bf"
1490 '"line(0,60)-(1100,180+200),rgb(127,255,212),bf"
1500 '"line(0,180+200)-(1100,180+200+60),rgb(0,255,0),bf"
1510 '描画領域　ここまで
1520 '画像表示　バージョン画面
1530 '画像非表示
1540 '"Gload"Picture/Screen1.png",1,0,0"
1550 '"Gload"picture/Input_Seireki_back.png",1,0,0"
1560 '画像非表示
1570 '画像表示
1580 '
1590 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1600 init"kb:4":font 32
1610 'talk"バージョン情報です"
1620 'Message :Version
1630 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1640 'color rgb(255,255,255)
1650 'print "バージョン情報"+chr$(13)
1660 locate 0,5
1670 color rgb(0,0,0)
1680 print "・Title:数秘術占い";chr$(13)
1690 print "・" + Version$ + chr$(13)
1700 print "・Author:licksjp"+chr$(13)
1710 print "・E-mail:licksjp@gmail.com" + chr$(13)
1720 locate 0,18
1730 print "(C)licksjp All rights " + chr$(13)
1740 locate 13,19
1750 print "reserved since 2009"+chr$(13)
1760 locate 0,23
1770 color rgb(255,255,255)
1780 print "ジョイパッドの右を押してください"
1790 Versionn_Selection:
1800 bg = 0:key$ = ""
1810 while ((bg <> 2) and (key$ <> chr$(13)))
1820 bg = strig(1)
1830 key$ = inkey$
1840 pause 2
1850 wend
1860 if ((bg = 2) or (key$ = chr$(13))) then
1870 goto Main_Screen:
1880 endif
1890 '"key$ = input$(1)"
1900 '"if key$ = chr$(13)  then goto Main_Screen:"
1910 '"Menu1 Top Screen1"
1920 '誕生日入力(生れた年代)
1930 Input_Seireki:
1940 CLS 3:font 48
1950 '"gload "Picture/Screen1.png",1,0,0"
1960 '"gload "Picture/Input_Seireki_back.png",1,0,0"
1970 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
1980 '"cls 3:"
1990 '描画領域　ここから
2000 '"line (0,0)-(1100,60),rgb(0,0,255),bf"
2010 '"line (0,60)-(1100,160),rgb(0,255,0),bf"
2020 '描画領域　ここまで
2030 init"kb:2"
2040 'talk "生まれたねんだいを入れてください"
2050 '音声ファイル再生 2023.06.07
2060 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
2070 'color rgb(255,255,255):print "生れた年（西暦4桁)を入れてください:トップ画面に戻る:123";chr$(13)
2080 locate 0,2
2090 '文字色：黒　 color rgb(0,0,0)
2100 color rgb(0,0,0)
2110 Input"生れた年代(4桁,〜2022年):",year
2120 if year > 2022 then goto Input_Seireki:
2130 if year = 123 then goto Main_Screen:
2140 '"4桁目"
2150 bufyear4 = fix(year / 1000)
2160 '"3桁目"
2170 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2180 '"2桁目"
2190 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2200 '"1桁目"
2210 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2220 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2230 'cls:
2240 '"print "bufyer4=";bufyear4"
2250 '"print "bufyear3=";bufyear3"
2260 '"print "bufyear2=";bufyear2"
2270 '"print "bufyear1=";bufyear1"
2280 'print "bufyear=";bufyear
2290 '生れた月を入力
2300 Input_Born_Month:
2310 cls 3:font 48
2320 '生まれた月入力
2330 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2340 init"kb:2":font 48
2350 'talk "生まれた月を入れてください"
2360 'ボイス再生 2023.06.07
2370 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2380 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2390 locate 0,2
2400 '文字色：黒 color rgb(0,0,0)
2410 color rgb(0,0,0,)
2420 Input"生れた月:",month
2430 if month=0 then goto Input_Seireki:
2440 if (month > 12) then goto Input_Born_Month:
2450 '生れた日を入力
2460 Input_Born_Day:
2470 '生まれた日入力
2480 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0
2490 init"kb:2":font 48
2500 'alk"生まれた日を入れてください"
2510 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2520 'color rgb(212,255,212):print"生れた日を入れてください(前の画面に戻る:0)";chr$(13)
2530 locate 0,2
2540 color rgb(0,0,0)
2550 Input"生れた日:",day
2560 if day=0 then goto Input_Born_Month:
2570 if (day > 31) then goto Input_Born_Day:
2580 suhiNo = bufyear + month + day
2590 if (suhiNo < 100) then
2600 suhiNo1 = fix(suhiNo / 10)
2610 suhiNo2 = suhiNo - (suhiNo1 * 10)
2620 endif
2630 recomp:
2640 bufsuhiNo = suhiNo1 + suhiNo2
2650 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2660 cls 3:
2670 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2680 init "kb:4"
2690 '非表示　ここから
2700 'gload "Picture/Screen1.png",1,0,0
2710 'gload "Picture/Input_Seireki_back.png",1,0,0
2720 '非表示　ここまで
2730 '表示　ここから
2740 'gload "Picture/Version_Screen.png",0,0,0
2750 '表示　ここまで
2760 Kabara_Result_Screen:
2770 'talk "あなたの数秘ナンバーは," + str$(bufsuhiNo) + "です。"
2780 select case (bufsuhiNo)
2790 case 1:
2800       play Voice$ + "Result_Kabara_1_20230607.mp3"
2810 case 2:
2820       play Voice$ + "Result_Kabara_2_20230607.mp3"
2830 case 3:
2840       play Voice$ + "Result_Kabara_3_20230607.mp3"
2850 case 4:
2860       play Voice$ + "Result_Kabara_4_20230607.mp3"
2870 case 5:
2880       play Voice$ + "Result_Kabara_5_20230607.mp3"
2890 case 6:
2900       play Voice$ + "Result_Kabara_6_20230607.mp3"
2910 case 7:
2920       play Voice$ + "Result_Kabara_7_20230607.mp3"
2930 case 8:
2940       play Voice$ + "Result_Kabara_8_20230607.mp3"
2950 case 9:
2960       play Voice$ + "Result_Kabara_9_20230607.mp3"
2970 case 11:
2980       play Voice$ + "Result_Kabara_11_20230607.mp3"
2990 case 22:
3000       play Voice$ + "Result_Kabara_22_20230607.mp3"
3010 case 33:
3020       play Voice$ + "Result_Kabara_33_20230607.mp3"
3030 end select
3040 font 48
3050 key$ = "":bg = 0:
3060 'COLOR rgb(255,255,255)
3070 'print "●診断結果"+chr$(13)
3080 locate 0,2
3090 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
3100 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
3110 locate 1,15:
3120 color rgb(255,255,255)
3130 print "ジョイパッドの右を押してください"+chr$(13)
3140 while ((key$ <> chr$(13)) and (bg <> 2))
3150 key$=inkey$
3160 bg=strig(1)
3170 pause 2
3180 wend
3190 if ((key$ = chr$(13)) or (bg = 2)) then
3200 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Main_Screen:
3210 endif
3220 else
3230 suhiNo1 = fix(bufsuhiNo / 10)
3240 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
3250 bufsuhiNo = suhiNo1 + suhiNo2
3260 goto recomp:
3270 endif
3280 print chr$(13)
3290 color rgb(255,0,0)
3300 print"トップ:エンターキー,S or s:保存"+chr$(13)
3310 key$ = input$(1)
3320 if key$ = chr$(13) then goto Main_Screen:
3330 '"Menu2 占いのルール"
3340 Suhi_Rule:
3350 '数秘術占いルールの表示
3360 cls 3
3370 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3380 'cls 3:
3390 'line (0,0) - (1500,60),rgb(0,0,255),bf
3400 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3410 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3420 init:"kb:4":FONT 48
3430 'talk "数秘術の計算ルールです"
3440 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3450 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3460 locate 0,2
3470 color rgb(0,0,0)
3480 print "誕生日を単数変換します";chr$(13)
3490 print "数字の範囲:1〜９,11,22,33";chr$(13)
3500 print "例:1973年11月22日の場合";chr$(13)
3510 print "1+9+7+3+11+22=53 ";chr$(13)
3520 print "→ 5 + 3 = 8" + chr$(13)
3530 print "故に8が数秘ナンバーになります";chr$(13)
3540 locate 0,15
3550 color rgb(255,255,255)
3560 print "ジョイパッドの右を押してください"
3570 '"key$ = input$(1)"
3580 '"if key$ = chr$(13) then goto Main_Screen:"
3590 suhi_rule_selection:
3600 bg = 0:key$ = ""
3610 while ((bg <> 2) and (key$ <> chr$(13)))
3620 bg = strig(1)
3630 key$ = inkey$
3640 pause 2
3650 wend
3660 if ((bg = 2) or (key$ = chr$(13))) then
3670 pause 200:goto Main_Screen:
3680 endif
