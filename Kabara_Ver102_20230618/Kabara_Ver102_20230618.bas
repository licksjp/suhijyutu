100 '数秘術占い 2019.08.16"
110 '改変履歴
120 '"2021.03.31 α版 画面背景アップデート"
130 '"2021.04.02 β版 更にアップデート音声追加"
140 '"2021.04.03 β2版 画面表示拡張"
150 '"2023.05.20 β3版　入力方式拡張"
160 'Version 更新履歴
170 '2023.06.04:Ver100_20230604
180 '2023.06.11:Ver101_20230611
190 '2023.06.18:Ver102_20230618
200 Version$ = "Ver:1.0.2_20230618"
210 'Gazo file Folder
220 Gazo$ = "./data/Picture/"
230 'Voice files 2023
240 Voice$ = "./data/Voice/Voice/"
250 '変数定義 パート
260 'Main画面
270 screen 1,1,1,1
280 Main_Screen:
290 cls 3:
300 No=0
310 gload Gazo$ + "Selection.png",1,5,200
320 gload Gazo$ + "Selection.png",1,5,300
330 gload Gazo$ + "Selection.png",1,5,400
340 gload Gazo$ + "Selection.png",1,5,500
350 gload Gazo$ + "TopScreen_20230310.png",0,0,0
360 gload Gazo$ + "downscreen.png",0,0,800
370 sp_def 0,(5,300),32,32
380 sp_def 1,(5,400),32,32
390 sp_def 2,(5,500),32,32
400 sp_def 3,(5,600),32,32
410 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
420 sp_put 0,(5,300),0,0
430 sp_put 1,(5,400),1,0
440 sp_put 2,(5,500),2,0
450 sp_put 3,(5,600),3,0
460 Main_Top:
470 'Main Message 2023.06.07
480 play ""
490 init"kb:4"
500 font 48:
510 print chr$(13)+chr$(13)+chr$(13)
520 color rgb(217,255,212)
530 print"番号を選んでください"+chr$(13)
540 '0
550 print" :1.数秘術占い" + chr$(13)
560 '1
570 print" :2.設 定" + chr$(13)
580 '2
590 print" :3.ヘルプ" + chr$(13)
600 '3
610 print" :4.(プログラムを)終了する"
620 COLOR rgb(0,0,0):No=0
630 locate 1,15
640 print "                                       "
650 locate 1,15:print " 1.数秘術占いを選択"
660 play Voice$ + "Voice_Main_Message_20230607.mp3":
670 Main_Screen_Select:
680 y = 0:key$ = "":bg = 0
690 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2))
700 y = stick(1)
710 '"May (2023)"
720 key$ = inkey$
730 bg = strig(1)
740 pause 2
750 wend
760 '1.
770 'ジョイパッドのソース ソート　ここから
780 'カーソル　下 or 十字キー下
790 if ((y = 1) or (key$ = chr$(31))) then
800 select case No
810 case 0:
820 '1
830 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
840 case 1:
850 '2
860 No=2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
870 case 2:
880 '3
890 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
900 case 3:
910 '0
920 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on  2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
930 end select
940 endif
950 '2.
960 'カーソル　上　or 十字キー  上
970 if ((y = -1) or (key$ = chr$(30))) then
980 select case No
990 case 0:
1000 '3
1010 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1020 case 1:
1030 '0
1040 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1050 case 2:
1060 '1
1070 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1080 case 3:
1090 '2
1100 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1110 end select
1120 endif
1130 'ジョイパッド　ソース 部分　ここまで
1140 'ジョイパッド右　　or Enter key 決定
1150 if ((bg = 2) OR (key$ = chr$(13))) then
1160 select case No
1170 case 0:
1180 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
1190 case 1:
1200 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1210 case 2:
1220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1230 case 3:
1240 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":pause 300:color rgb(255,255,255):cls 3:cls 4:end
1250 end select
1260 endif
1270 'Version
1280 Version:
1290 cls 3
1300 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1310 gload Gazo$ + "downscreen.png",0,0,800
1320 init"kb:4":font 32
1330 'talk"バージョン情報です"
1340 'Message :Version
1350 play ""
1360 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1370 locate 0,5
1380 color rgb(0,0,0)
1390 print "・Title:数秘術占い";chr$(13)
1400 print "・" + Version$ + chr$(13)
1410 print "・Author:licksjp"+chr$(13)
1420 print "・E-mail:licksjp@gmail.com" + chr$(13)
1430 locate 0,18
1440 print "(C)licksjp All rights " + chr$(13)
1450 locate 13,19
1460 print "reserved since 2009"+chr$(13)
1470 locate 0,23
1480 color rgb(255,255,255)
1490 print "ジョイパッドの右を押してください"
1500 Versionn_Selection:
1510 bg = 0:key$ = ""
1520 while ((bg <> 2) and (key$ <> chr$(13)))
1530 bg = strig(1)
1540 key$ = inkey$
1550 pause 2
1560 wend
1570 if ((bg = 2) or (key$ = chr$(13))) then
1580 pause 200:cls 4:goto Main_Screen:
1590 endif
1600 '誕生日入力(生れた年代)
1610 Input_Seireki:
1620 CLS 3:font 48:play ""
1630 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
1640 init"kb:2"
1650 '音声ファイル再生 2023.06.07
1660 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
1670 locate 0,2
1680 '文字色：黒　 color rgb(0,0,0)
1690 color rgb(0,0,0)
1700 Input"生れた年代(4桁,〜2025年):",year
1710 if year > 2025 then goto Input_Seireki:
1720 if year = 123 then cls 3:cls 4:goto Main_Screen:
1730 '"4桁目"
1740 bufyear4 = fix(year / 1000)
1750 '"3桁目"
1760 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
1770 '"2桁目"
1780 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
1790 '"1桁目"
1800 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
1810 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
1820 '生れた月を入力
1830 Input_Born_Month:
1840 cls 3:font 48:play ""
1850 '生まれた月入力
1860 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
1870 init"kb:2"
1880 'talk "生まれた月を入れてください"
1890 'ボイス再生 2023.06.07
1900 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
1910 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
1920 locate 0,2
1930 '文字色：黒 color rgb(0,0,0)
1940 color rgb(0,0,0,)
1950 Input"生れた月:",month
1960 if month=0 then goto Input_Seireki:
1970 if (month > 12) then goto Input_Born_Month:
1980 '生れた日を入力
1990 Input_Born_Day:
2000 '生まれた日入力
2010 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2020 init"kb:2":font 48
2030 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2040 locate 0,2
2050 color rgb(0,0,0)
2060 Input"生れた日:",day
2070 if day=0 then goto Input_Born_Month:
2080 if (day > 31) then goto Input_Born_Day:
2090 suhiNo = bufyear + month + day
2100 if (suhiNo < 100) then
2110 suhiNo1 = fix(suhiNo / 10)
2120 suhiNo2 = suhiNo - (suhiNo1 * 10)
2130 endif
2140 recomp:
2150 bufsuhiNo = suhiNo1 + suhiNo2
2160 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2170 cls 3:
2180 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2190 gload Gazo$ + "downscreen.png",0,0,800
2200 init "kb:4"
2210 '
2220 Kabara_Result_Screen:
2230 play ""
2240 select case (bufsuhiNo)
2250 case 1:
2260       play Voice$ + "Result_Kabara_1_20230607.mp3"
2270 case 2:
2280       play Voice$ + "Result_Kabara_2_20230607.mp3"
2290 case 3:
2300       play Voice$ + "Result_Kabara_3_20230607.mp3"
2310 case 4:
2320       play Voice$ + "Result_Kabara_4_20230607.mp3"
2330 case 5:
2340       play Voice$ + "Result_Kabara_5_20230607.mp3"
2350 case 6:
2360       play Voice$ + "Result_Kabara_6_20230607.mp3"
2370 case 7:
2380       play Voice$ + "Result_Kabara_7_20230607.mp3"
2390 case 8:
2400       play Voice$ + "Result_Kabara_8_20230607.mp3"
2410 case 9:
2420       play Voice$ + "Result_Kabara_9_20230607.mp3"
2430 case 11:
2440       play Voice$ + "Result_Kabara_11_20230607.mp3"
2450 case 22:
2460       play Voice$ + "Result_Kabara_22_20230607.mp3"
2470 case 33:
2480       play Voice$ + "Result_Kabara_33_20230607.mp3"
2490 end select
2500 font 48
2510 key$ = "":bg = 0:
2520 'COLOR rgb(255,255,255)
2530 'print "●診断結果"+chr$(13)
2540 locate 0,2
2550 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2560 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2570 locate 1,15:
2580 color rgb(255,255,255)
2590 print "ジョイパッドの右を押してください" + chr$(13)
2600 while ((key$ <> chr$(13)) and (bg <> 2))
2610 key$ =  inkey$
2620 bg = strig(1)
2630 pause 2
2640 wend
2650 'Enter or JoyPad right
2660 if ((key$ = chr$(13)) or (bg = 2)) then
2670 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 4:goto Main_Screen:
2680 endif
2690 else
2700 suhiNo1 = fix(bufsuhiNo / 10)
2710 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
2720 bufsuhiNo = suhiNo1 + suhiNo2
2730 goto recomp:
2740 endif
2750 'print chr$(13)
2760 'color rgb(255,0,0)
2770 'print"トップ:エンターキー,S or s:保存"+chr$(13)
2780 'key$ = input$(1)
2790 'if key$ = chr$(13) then goto Main_Screen:
2800 '"Menu2 占いのルール"
2810 Suhi_Rule:
2820 '数秘術占いルールの表示
2830 cls 3:play "":init"kb:4"
2840 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
2850 gload Gazo$ + "downscreen.png",0,0,800
2860 'cls 3:
2870 'line (0,0) - (1500,60),rgb(0,0,255),bf
2880 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
2890 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
2900 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
2910 locate 0,2:Font 48
2920 print chr$(13)+chr$(13)
2930 color rgb(0,0,0)
2940 print "誕生日を単数変換します";chr$(13)
2950 print "数字の範囲:1〜９,11,22,33";chr$(13)
2960 print "例:1973年11月22日の場合";chr$(13)
2970 print "1+9+7+3+11+22=53 ";chr$(13)
2980 print "→ 5 + 3 = 8" + chr$(13)
2990 print "故に8が数秘ナンバーになります";chr$(13)
3000 locate 0,15
3010 color rgb(255,255,255)
3020 print "ジョイパッドの右を押してください"
3030 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3040 '"key$ = input$(1)"
3050 '"if key$ = chr$(13) then goto Main_Screen:"
3060 suhi_rule_selection:
3070 bg = 0:key$ = ""
3080 while ((bg <> 2) and (key$ <> chr$(13)))
3090 bg = strig(1)
3100 key$ = inkey$
3110 pause 2
3120 wend
3130 if ((bg = 2) or (key$ = chr$(13))) then
3140 pause 200:cls 4:goto Main_Screen:
3150 endif
3160 '2.設定
3170 '2-1.トップ画面に戻る
3180 Setting:
3190 cls 3:init"kb:4":font 48:No=0
3200 y=0:key$="":bg=0
3210 play ""
3220 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3230 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3240 gload Gazo$ + "downscreen.png",0,0,800
3250 print chr$(13)+chr$(13)+chr$(13)
3260 color rgb(255,255,255):sp_on 0,1:
3270 print "番号を選んでください"+chr$(13)
3280 print " :1.トップ画面に戻る"
3290 color rgb(0,0,0)
3300 locate 1,15:print "1.トップ画面に戻るを選択"
3310 while ((key$ <> chr$(13)) and (bg <> 2))
3320 'y=stick(1)
3330 key$ = inkey$
3340 bg=strig(1)
3350 pause 2
3360 wend
3370 if ((bg = 2) or (key$ = chr$(13))) then
3380 select case No
3390 case 0:
3400       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
3410 end select
3420 endif
3430 '3.Help
3440 '3-1.ルールの表示
3450 '3-2.バージョン
3460 '3-3.トップに戻る
3470 Help:
3480 cls 3:Font 48:No=0
3490 play ""
3500 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
3510 gload Gazo$ + "downscreen.png",0,0,800
3520 color rgb(255,255,255)
3530 print chr$(13)+chr$(13)+chr$(13)
3540 print "番号を選んでください"+chr$(13)
3550 print " :1.ルールの表示" + chr$(13)
3560 print " :2.バージョンの表示" + chr$(13)
3570 print " :3.トップ画面に戻る" + chr$(13)
3580 color rgb(0,0,0)
3590 sp_on 0,1:sp_on 1,0:sp_on 2,0
3600 locate 1,15
3610 print "                                      "
3620 locate 1,15
3630 print "1.ルールの表示を選択"
3640 init"kb:4"
3650 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
3660 Help_Select:
3670 bg=0:key$="":y=0
3680 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
3690 y = stick(1)
3700 key$ = inkey$
3710 bg = strig(1)
3720 pause 2
3730 wend
3740 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
3750 if ((y = 1) or (key$ = chr$(31))) then
3760 select case No
3770 case 0:
3780       No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
3790 case 1:
3800       No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Help_Select:
3810 case 2:
3820       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
3830 end select
3840 endif
3850 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
3860 if ((y = -1) or (key$ = chr$(30))) then
3870 select case No
3880 case 0:
3890        No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Help_Select:
3900 case 1:
3910        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
3920 case 2:
3930        No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
3940 end select
3950 endif
3960 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
3970 if ((bg = 2) or (key$ = chr$(13))) then
3980 select case No
3990 case 0:
4000       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Suhi_Rule:
4010 case 1:
4020       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Version:
4030 case 2:
4040       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
4050 end select
4060 endif
