100 '数秘術占い 2019.08.16"
110 '改変履歴
120 '"2021.03.31 α版 画面背景アップデート"
130 '"2021.04.02 β版 更にアップデート音声追加"
140 '"2021.04.03 β2版 画面表示拡張"
150 '"2023.05.20 β3版　入力方式拡張"
160 'Version 更新履歴
170 '2023.06.04:Ver1.00_20230604
180 Version$ = "Ver:1.0.0_20230604"
190 'Gazo file Folder
200 Gazo$ = "./Picture/"
210 '変数定義 パート
220 'Main画面
230 screen 1,1,1,1
240 Main_Screen:
250 cls 3:
260 'font 32
270 No=0
280 '描画領域 ここから
290 '"1行"
300 '"line (0,0) - (850,60),rgb(0,0,255),bf"
310 '"line (0,0) - (850,63),rgb(0,255,0),b"
320 '"2行"
330 '"line (0,60) - (850,70*8),rgb(127,255,212),bf"
340 '"line (0,57) - (850,70*8-3),rgb(0,255,0),b"
350 '"3行"
360 '"line (0,70*8) - (850,70+70*8),rgb(0,255,0),bf"
370 '"line (0,70*8) - (850,70+70*8+3),rgb(0,0,255),b"
380 '描画領域　ここまで
390 gload Gazo$ + "Selection.png",1,5,200
400 gload Gazo$ + "Selection.png",1,5,300
410 gload Gazo$ + "Selection.png",1,5,400
420 gload Gazo$ + "Selection.png",1,5,500
430 gload Gazo$ + "TopScreen_20230310.png",0,0,0
440 sp_def 0,(5,300),32,32
450 sp_def 1,(5,400),32,32
460 sp_def 2,(5,500),32,32
470 sp_def 3,(5,600),32,32
480 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
490 sp_put 0,(5,300),0,0
500 sp_put 1,(5,400),1,0
510 sp_put 2,(5,500),2,0
520 sp_put 3,(5,600),3,0
530 Main_Top:
540 cls
550 talk "メイン画面です。番号を選んでエンターキーを押してください。"
560 font 48:init"kb:4"
570 print chr$(13)+chr$(13)+chr$(13)
580 '"color rgb(255,0,255)"
590 color rgb(217,255,212)
600 print"番号を選んでください"+chr$(13)
610 '0
620 print" :1.数秘術占い"+chr$(13)
630 '1
640 print" :2.数秘術占いのルール";chr$(13)
650 '2
660 print" :3.バージョン"+chr$(13)
670 '3
680 print" :4.終了する"
690 COLOR rgb(0,0,0):No=0
700 locate 1,15
710 print "                                       "
720 locate 1,15:print " 1.数秘術占いを選択"
730 Main_Screen_Select:
740 y = 0:key$ = "":bg = 0
750 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2))
760 y = stick(1)
770 '"May (2023)"
780 key$ = inkey$
790 bg = strig(1)
800 pause 2
810 wend
820 '1.
830 'ジョイパッドのソース ソート　ここから
840 'カーソル　下 or 十字キー下
850 if ((y = 1) or (key$ = chr$(31))) then
860 select case No
870 case 0:
880 '1
890 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術占いのルールを選択":goto Main_Screen_Select:
900 case 1:
910 '2
920 No=2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.バージョンを選択":goto Main_Screen_Select:
930 case 2:
940 '3
950 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.終了するを選択":goto Main_Screen_Select:
960 case 3:
970 '0
980 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on  2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
990 end select
1000 endif
1010 '2.
1020 'カーソル　上　or 十字キー  上
1030 if ((y = -1) or (key$ = chr$(30))) then
1040 select case No
1050 case 0:
1060 '3
1070 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.終了するを選択":goto Main_Screen_Select:
1080 case 1:
1090 '0
1100 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1110 case 2:
1120 '1
1130 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.数秘術占いのルールを選択":goto Main_Screen_Select:
1140 case 3:
1150 '2
1160 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.バージョンを選択":goto Main_Screen_Select:
1170 end select
1180 endif
1190 'ジョイパッド　ソース 部分　ここまで
1200 'ジョイパッド右　　or Enter key 決定
1210 if ((bg = 2) OR (key$ = chr$(13))) then
1220 select case No
1230 case 0:
1240 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
1250 case 1:
1260 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
1270 case 2:
1280 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
1290 case 3:
1300 talk "終了します":pause 200:color rgb(255,255,255):cls 3:cls 4:end
1310 end select
1320 endif
1330 'Input"番号:",selectNo
1340 '"if (selectNo = 1) then goto Input_Seireki:"
1350 '"if (selectNo = 2) then goto Suhi_Rule:"
1360 '"if (selectNo = 3) then goto Version:"
1370 '"if (selectNo = 4) then talk"終了します":cls 3:ui_msg"終了します":color rgb(255,255,255):end"
1380 '"if (selectNo > 4 or selectNo = 0)  then goto Main_Screen:"
1390 'Version
1400 Version:
1410 cls 3
1420 '描画領域　ここから
1430 '"line(0,0)-(1100,60),rgb(0,0,255),bf"
1440 '"line(0,60)-(1100,180+200),rgb(127,255,212),bf"
1450 '"line(0,180+200)-(1100,180+200+60),rgb(0,255,0),bf"
1460 '描画領域　ここまで
1470 '画像表示　バージョン画面
1480 '画像非表示
1490 '"Gload"Picture/Screen1.png",1,0,0"
1500 '"Gload"picture/Input_Seireki_back.png",1,0,0"
1510 '画像非表示
1520 '画像表示
1530 '
1540 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1550 init"kb:4":font 32
1560 talk"バージョン情報です"
1570 'color rgb(255,255,255)
1580 'print "バージョン情報"+chr$(13)
1590 locate 0,5
1600 color rgb(0,0,0)
1610 print "・Title:数秘術占い";chr$(13)
1620 print "・" + Version$ + chr$(13)
1630 print "・Author:licksjp"+chr$(13)
1640 print "・E-mail:licksjp@gmail.com" + chr$(13)
1650 locate 0,18
1660 print "(C)licksjp All rights " + chr$(13)
1670 locate 13,19
1680 print "reserved since 2009"+chr$(13)
1690 locate 0,23
1700 color rgb(255,255,255)
1710 print "ジョイパッドの右を押してください"
1720 Versionn_Selection:
1730 bg = 0:key$ = ""
1740 while ((bg <> 2) and (key$ <> chr$(13)))
1750 bg = strig(1)
1760 key$ = inkey$
1770 pause 2
1780 wend
1790 if ((bg = 2) or (key$ = chr$(13))) then
1800 goto Main_Screen:
1810 endif
1820 '"key$ = input$(1)"
1830 '"if key$ = chr$(13)  then goto Main_Screen:"
1840 '"Menu1 Top Screen1"
1850 '誕生日入力(生れた年代)
1860 Input_Seireki:
1870 CLS 3:font 48
1880 '"gload "Picture/Screen1.png",1,0,0"
1890 '"gload "Picture/Input_Seireki_back.png",1,0,0"
1900 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
1910 '"cls 3:"
1920 '描画領域　ここから
1930 '"line (0,0)-(1100,60),rgb(0,0,255),bf"
1940 '"line (0,60)-(1100,160),rgb(0,255,0),bf"
1950 '描画領域　ここまで
1960 init"kb:2"
1970 talk "生まれたねんだいを入れてください"
1980 'color rgb(255,255,255):print "生れた年（西暦4桁)を入れてください:トップ画面に戻る:123";chr$(13)
1990 locate 0,2
2000 '文字色：黒　 color rgb(0,0,0)
2010 color rgb(0,0,0)
2020 Input"生れた年代(4桁,〜2022年):",year
2030 if year > 2022 then goto Input_Seireki:
2040 if year = 123 then goto Main_Screen:
2050 '"4桁目"
2060 bufyear4 = fix(year / 1000)
2070 '"3桁目"
2080 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2090 '"2桁目"
2100 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2110 '"1桁目"
2120 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2130 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2140 'cls:
2150 '"print "bufyer4=";bufyear4"
2160 '"print "bufyear3=";bufyear3"
2170 '"print "bufyear2=";bufyear2"
2180 '"print "bufyear1=";bufyear1"
2190 'print "bufyear=";bufyear
2200 '生れた月を入力
2210 Input_Born_Month:
2220 cls 3:font 48
2230 '生まれた月入力
2240 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2250 init"kb:2":font 48
2260 talk "生まれた月を入れてください"
2270 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2280 locate 0,2
2290 '文字色：黒 color rgb(0,0,0)
2300 color rgb(0,0,0,)
2310 Input"生れた月:",month
2320 if month=0 then goto Input_Seireki:
2330 if (month > 12) then goto Input_Born_Month:
2340 '生れた日を入力
2350 Input_Born_Day:
2360 '生まれた日入力
2370 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0
2380 init"kb:2":font 48
2390 talk"生まれた日を入れてください"
2400 'color rgb(212,255,212):print"生れた日を入れてください(前の画面に戻る:0)";chr$(13)
2410 locate 0,2
2420 color rgb(0,0,0)
2430 Input"生れた日:",day
2440 if day=0 then goto Input_Born_Month:
2450 if (day > 31) then goto Input_Born_Day:
2460 suhiNo = bufyear + month + day
2470 if (suhiNo < 100) then
2480 suhiNo1 = fix(suhiNo / 10)
2490 suhiNo2 = suhiNo - (suhiNo1 * 10)
2500 endif
2510 recomp:
2520 bufsuhiNo = suhiNo1 + suhiNo2
2530 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2540 cls 3:
2550 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2560 init "kb:4"
2570 '非表示　ここから
2580 'gload "Picture/Screen1.png",1,0,0
2590 'gload "Picture/Input_Seireki_back.png",1,0,0
2600 '非表示　ここまで
2610 '表示　ここから
2620 'gload "Picture/Version_Screen.png",0,0,0
2630 '表示　ここまで
2640 Kabara_Result_Screen:
2650 talk "あなたの数秘ナンバーは," + str$(bufsuhiNo) + "です。"
2660 font 48
2670 key$ = "":bg = 0:
2680 'COLOR rgb(255,255,255)
2690 'print "●診断結果"+chr$(13)
2700 locate 0,2
2710 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2720 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2730 locate 1,15:
2740 color rgb(255,255,255)
2750 print "ジョイパッドの右を押してください"+chr$(13)
2760 while ((key$ <> chr$(13)) and (bg <> 2))
2770 key$=inkey$
2780 bg=strig(1)
2790 pause 2
2800 wend
2810 if ((key$ = chr$(13)) or (bg = 2)) then
2820 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Main_Screen:
2830 endif
2840 else
2850 suhiNo1 = fix(bufsuhiNo / 10)
2860 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
2870 bufsuhiNo = suhiNo1 + suhiNo2
2880 goto recomp:
2890 endif
2900 print chr$(13)
2910 color rgb(255,0,0)
2920 print"トップ:エンターキー,S or s:保存"+chr$(13)
2930 key$ = input$(1)
2940 if key$ = chr$(13) then goto Main_Screen:
2950 '"Menu2 占いのルール"
2960 Suhi_Rule:
2970 '数秘術占いルールの表示
2980 cls 3
2990 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3000 'cls 3:
3010 'line (0,0) - (1500,60),rgb(0,0,255),bf
3020 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3030 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3040 init:"kb:4":FONT 48
3050 talk "数秘術の計算ルールです"
3060 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3070 locate 0,2
3080 color rgb(0,0,0)
3090 print "誕生日を単数変換します";chr$(13)
3100 print "数字の範囲:1〜９,11,22,33";chr$(13)
3110 print "例:1973年11月22日の場合";chr$(13)
3120 print "1+9+7+3+11+22=53 ";chr$(13)
3130 print "→ 5 + 3 = 8" + chr$(13)
3140 print "故に8が数秘ナンバーになります";chr$(13)
3150 locate 0,15
3160 color rgb(255,255,255)
3170 print "ジョイパッドの右を押してください"
3180 '"key$ = input$(1)"
3190 '"if key$ = chr$(13) then goto Main_Screen:"
3200 suhi_rule_selection:
3210 bg = 0:key$ = ""
3220 while ((bg <> 2) and (key$ <> chr$(13)))
3230 bg = strig(1)
3240 key$ = inkey$
3250 pause 2
3260 wend
3270 if ((bg = 2) or (key$ = chr$(13))) then
3280 pause 200:goto Main_Screen:
3290 endif
