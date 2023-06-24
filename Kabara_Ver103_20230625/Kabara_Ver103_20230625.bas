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
200 '2023.06.25:Ver103_20230625
210 Version$ = "Ver:1.0.3_20230625"
220 'Gazo file Folder
230 Gazo$ = "./data/Picture/"
240 'Voice files 2023
250 Voice$ = "./data/Voice/Voice/"
260 '変数定義 パート
270 'Main画面
280 screen 1,1,1,1
290 Main_Screen:
300 cls 3:
310 No=0
320 gload Gazo$ + "Selection.png",1,5,200
330 gload Gazo$ + "Selection.png",1,5,300
340 gload Gazo$ + "Selection.png",1,5,400
350 gload Gazo$ + "Selection.png",1,5,500
360 gload Gazo$ + "TopScreen_20230310.png",0,0,0
370 gload Gazo$ + "downscreen.png",0,0,800
380 sp_def 0,(5,300),32,32
390 sp_def 1,(5,400),32,32
400 sp_def 2,(5,500),32,32
410 sp_def 3,(5,600),32,32
420 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
430 sp_put 0,(5,300),0,0
440 sp_put 1,(5,400),1,0
450 sp_put 2,(5,500),2,0
460 sp_put 3,(5,600),3,0
470 Main_Top:
480 'Main Message 2023.06.07
490 play ""
500 init"kb:4"
510 font 48:
520 print chr$(13)+chr$(13)+chr$(13)
530 color rgb(217,255,212)
540 print"番号を選んでください"+chr$(13)
550 '0
560 print" :1.数秘術占い" + chr$(13)
570 '1
580 print" :2.設 定" + chr$(13)
590 '2
600 print" :3.ヘルプ" + chr$(13)
610 '3
620 print" :4.(プログラムを)終了する"
630 COLOR rgb(0,0,0):No=0
640 locate 1,15
650 print "                                       "
660 locate 1,15:print " 1.数秘術占いを選択"
670 play Voice$ + "Voice_Main_Message_20230607.mp3"
680 Main_Screen_Select:
690 y = 0:key$ = "":bg = 0:bg2=0
700 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
710 y = stick(1)
720 '"May (2023)"
730 key$ = inkey$
740 bg = strig(1)
750 bg2 = strig(0)
760 pause 2
770 wend
780 '1.
790 'ジョイパッドのソース ソート　ここから
800 'カーソル　下 or 十字キー下
810 if ((y = 1) or (key$ = chr$(31))) then
820 select case No
830 case 0:
840 '1
850 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
860 case 1:
870 '2
880 No=2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
890 case 2:
900 '3
910 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
920 case 3:
930 '0
940 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on  2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
950 end select
960 endif
970 '2.
980 'カーソル　上　or 十字キー  上
990 if ((y = -1) or (key$ = chr$(30))) then
1000 select case No
1010 case 0:
1020 '3
1030 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1040 case 1:
1050 '0
1060 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1070 case 2:
1080 '1
1090 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1100 case 3:
1110 '2
1120 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1130 end select
1140 endif
1150 'ジョイパッド　ソース 部分　ここまで
1160 'ジョイパッド右　　or Enter key 決定
1170 if ((bg = 2) OR (key$ = chr$(13))) then
1180 select case No
1190 case 0:
1200 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen:
1210 case 1:
1220 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1230 case 2:
1240 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1250 case 3:
1260 play "":pause 200
1270 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":pause 300:color rgb(255,255,255):cls 3:cls 4:end
1280 end select
1290 endif
1300 if (bg2 = 2) then
1310 play "":pause 200
1320 play Voice$ + "Voice_Main_Message_20230607.mp3"
1330 goto Main_Screen_Select:
1340 endif
1350 'Version
1360 Version:
1370 cls 3:PLAY ""
1380 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1390 gload Gazo$ + "downscreen.png",0,0,800
1400 init"kb:4":font 32
1410 'talk"バージョン情報です"
1420 'Message :Version
1430 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1440 locate 0,5
1450 color rgb(0,0,0)
1460 print "・Title:数秘術占い";chr$(13)
1470 print "・" + Version$ + chr$(13)
1480 print "・Author:licksjp"+chr$(13)
1490 print "・E-mail:licksjp@gmail.com" + chr$(13)
1500 locate 0,18
1510 print "(C)licksjp All rights " + chr$(13)
1520 locate 13,19
1530 print "reserved since 2009"+chr$(13)
1540 locate 0,23
1550 color rgb(255,255,255)
1560 print "ジョイパッドの右を押してください"
1570 Versionn_Selection:
1580 bg = 0:key$ = "":bg2=0
1590 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
1600 bg = strig(1)
1610 key$ = inkey$
1620 bg2 = strig(0)
1630 pause 2
1640 wend
1650 if ((bg = 2) or (key$ = chr$(13))) then
1660 pause 200:cls 4:goto Main_Screen:
1670 endif
1680 if (bg2=2) then
1690 play "":pause 200
1700 play Voice$ + "Voice_Version_Message_20230607.mp3"
1710 goto Versionn_Selection:
1720 endif
1730 '1.数秘ナンバーを求める
1740 '誕生日入力(生れた年代)
1750 Input_Seireki:
1760 CLS 3:play ""
1770 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
1780 init"kb:2"
1790 '音声ファイル再生 2023.06.07
1800 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
1810 font 48
1820 locate 0,2
1830 '文字色：黒　 color rgb(0,0,0)
1840 color rgb(0,0,0)
1850 Input"生れた年代(4桁,〜2025年):",year
1860 if year > 2025 then goto Input_Seireki:
1870 if year = 123 then cls 3:cls 4:goto Main_Screen:
1880 '"4桁目"
1890 bufyear4 = fix(year / 1000)
1900 '"3桁目"
1910 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
1920 '"2桁目"
1930 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
1940 '"1桁目"
1950 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
1960 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
1970 '生れた月を入力
1980 Input_Born_Month:
1990 cls 3:font 48:play ""
2000 '生まれた月入力
2010 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2020 init"kb:2"
2030 'talk "生まれた月を入れてください"
2040 'ボイス再生 2023.06.07
2050 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2060 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2070 locate 0,2
2080 '文字色：黒 color rgb(0,0,0)
2090 color rgb(0,0,0,)
2100 Input"生れた月:",month
2110 if month=0 then goto Input_Seireki:
2120 if (month > 12) then goto Input_Born_Month:
2130 '生れた日を入力
2140 Input_Born_Day:
2150 '生まれた日入力
2160 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2170 init"kb:2":font 48
2180 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2190 locate 0,2
2200 color rgb(0,0,0)
2210 Input"生れた日:",day
2220 if day=0 then goto Input_Born_Month:
2230 if (day > 31) then goto Input_Born_Day:
2240 suhiNo = bufyear + month + day
2250 if (suhiNo < 100) then
2260 suhiNo1 = fix(suhiNo / 10)
2270 suhiNo2 = suhiNo - (suhiNo1 * 10)
2280 endif
2290 recomp:
2300 bufsuhiNo = suhiNo1 + suhiNo2
2310 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2320 cls 3:
2330 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2340 gload Gazo$ + "downscreen.png",0,0,800
2350 init "kb:4"
2360 '
2370 Kabara_Result_Screen:
2380 play ""
2390 select case (bufsuhiNo)
2400 case 1:
2410       play Voice$ + "Result_Kabara_1_20230607.mp3"
2420 case 2:
2430       play Voice$ + "Result_Kabara_2_20230607.mp3"
2440 case 3:
2450       play Voice$ + "Result_Kabara_3_20230607.mp3"
2460 case 4:
2470       play Voice$ + "Result_Kabara_4_20230607.mp3"
2480 case 5:
2490       play Voice$ + "Result_Kabara_5_20230607.mp3"
2500 case 6:
2510       play Voice$ + "Result_Kabara_6_20230607.mp3"
2520 case 7:
2530       play Voice$ + "Result_Kabara_7_20230607.mp3"
2540 case 8:
2550       play Voice$ + "Result_Kabara_8_20230607.mp3"
2560 case 9:
2570       play Voice$ + "Result_Kabara_9_20230607.mp3"
2580 case 11:
2590       play Voice$ + "Result_Kabara_11_20230607.mp3"
2600 case 22:
2610       play Voice$ + "Result_Kabara_22_20230607.mp3"
2620 case 33:
2630       play Voice$ + "Result_Kabara_33_20230607.mp3"
2640 end select
2650 font 48
2660 key$ = "":bg = 0:
2670 'COLOR rgb(255,255,255)
2680 'print "●診断結果"+chr$(13)
2690 locate 0,2
2700 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2710 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2720 locate 1,15:
2730 color rgb(255,255,255)
2740 print "ジョイパッドの右を押してください" + chr$(13)
2750 while ((key$ <> chr$(13)) and (bg <> 2))
2760 key$ =  inkey$
2770 bg = strig(1)
2780 pause 2
2790 wend
2800 'Enter or JoyPad right
2810 if ((key$ = chr$(13)) or (bg = 2)) then
2820 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 4:goto Main_Screen:
2830 endif
2840 else
2850 suhiNo1 = fix(bufsuhiNo / 10)
2860 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
2870 bufsuhiNo = suhiNo1 + suhiNo2
2880 goto recomp:
2890 endif
2900 'print chr$(13)
2910 'color rgb(255,0,0)
2920 'print"トップ:エンターキー,S or s:保存"+chr$(13)
2930 'key$ = input$(1)
2940 'if key$ = chr$(13) then goto Main_Screen:
2950 '"Menu2 占いのルール"
2960 Suhi_Rule:
2970 '数秘術占いルールの表示
2980 cls 3:play "":init"kb:4"
2990 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3000 gload Gazo$ + "downscreen.png",0,0,800
3010 'cls 3:
3020 'line (0,0) - (1500,60),rgb(0,0,255),bf
3030 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3040 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3050 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3060 locate 0,2:Font 48
3070 print chr$(13)+chr$(13)
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
3180 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3190 '"key$ = input$(1)"
3200 '"if key$ = chr$(13) then goto Main_Screen:"
3210 suhi_rule_selection:
3220 bg = 0:key$ = "":bg2=0
3230 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
3240 bg = strig(1)
3250 key$ = inkey$
3260 bg2=strig(0)
3270 pause 2
3280 wend
3290 if ((bg = 2) or (key$ = chr$(13))) then
3300 pause 200:cls 4:goto Main_Screen:
3310 endif
3320 if (bg2=2) then
3330 play "":pause 200
3340 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3350 goto suhi_rule_selection:
3360 endif
3370 '2.設定
3380 '2-1.トップ画面に戻る
3390 Setting:
3400 cls 3:init"kb:4":font 48:No=0
3410 play ""
3420 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3430 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3440 gload Gazo$ + "downscreen.png",0,0,800
3450 print chr$(13)+chr$(13)+chr$(13)
3460 color rgb(255,255,255):sp_on 0,1:
3470 print "番号を選んでください"+chr$(13)
3480 print " :1.トップ画面に戻る"+ chr$(13)
3490 print " :2.未実装" + chr$(13)
3500 print " :3.未実装" + chr$(13)
3510 print " :4.未実装" + chr$(13)
3520 color rgb(0,0,0)
3530 locate 1,15:print "1.トップ画面に戻るを選択"
3540 Setting_Selection:
3550 y=0:key$="":bg=0:bg2=0
3560 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
3570 'y=stick(1)
3580 key$ = inkey$
3590 bg=strig(1)
3600 bg2 = strig(0)
3610 pause 2
3620 wend
3630 if ((bg = 2) or (key$ = chr$(13))) then
3640 select case No
3650 case 0:
3660       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
3670 end select
3680 endif
3690 if (bg2=2) then
3700 play "":pause 200
3710 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3720 goto Setting_Selection:
3730 endif
3740 '3.Help
3750 '3-1.ルールの表示
3760 '3-2.バージョン
3770 '3-3.トップに戻る
3780 Help:
3790 cls 3:Font 48:No=0
3800 play ""
3810 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
3820 gload Gazo$ + "downscreen.png",0,0,800
3830 color rgb(255,255,255)
3840 print chr$(13)+chr$(13)+chr$(13)
3850 print "番号を選んでください"+chr$(13)
3860 print " :1.ルールの表示" + chr$(13)
3870 print " :2.バージョンの表示" + chr$(13)
3880 print " :3.トップ画面に戻る" + chr$(13)
3890 color rgb(0,0,0)
3900 sp_on 0,1:sp_on 1,0:sp_on 2,0
3910 locate 1,15
3920 print "                                      "
3930 locate 1,15
3940 print "1.ルールの表示を選択"
3950 init"kb:4"
3960 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
3970 Help_Select:
3980 bg=0:key$="":y=0:bg2=0
3990 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
4000 y = stick(1)
4010 key$ = inkey$
4020 bg = strig(1)
4030 bg2 = strig(0)
4040 pause 2
4050 wend
4060 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
4070 if ((y = 1) or (key$ = chr$(31))) then
4080 select case No
4090 case 0:
4100       No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
4110 case 1:
4120       No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Help_Select:
4130 case 2:
4140       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4150 end select
4160 endif
4170 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
4180 if ((y = -1) or (key$ = chr$(30))) then
4190 select case No
4200 case 0:
4210        No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Help_Select:
4220 case 1:
4230        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4240 case 2:
4250        No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
4260 end select
4270 endif
4280 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
4290 if ((bg = 2) or (key$ = chr$(13))) then
4300 select case No
4310 case 0:
4320       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Suhi_Rule:
4330 case 1:
4340       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Version:
4350 case 2:
4360       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
4370 end select
4380 endif
4390 if (bg2 = 2) then
4400 play "":pause 200
4410 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4420 goto Help_Select:
4430 endif
4440 '数秘術占い　トップ画面
4450 Kabara_TopScreen:
4460 cls 3:play ""
4470 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
4480 gload Gazo$ + "downscreen.png",0,0,800
4490 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
4500 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
4510 init"kb:4":No=0
4520 color rgb(255,255,255)
4530 print chr$(13)+chr$(13)+chr$(13)
4540 print "番号を選んでください"+chr$(13)
4550 print " :1.数秘番号を求める"+chr$(13)
4560 print " :2.未実装"  + chr$(13)
4570 print " :3.未実装"  + chr$(13)
4580 print " :4.トップ画面に戻る"+chr$(13)
4590 color rgb(0,0,0)
4600 locate 2,15:print "1.数秘番号を求めるを選択"
4610 Kabara_TopScreen2:
4620 y=0:bg=0:key$="":bg2=0
4630 while ((y <> 1) and (y <> -1) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2 ))
4640 key$ = inkey$
4650 bg = strig(1)
4660 y = stick(1)
4670 bg2 = strig(0)
4680 pause 2
4690 wend
4700 'カーソル　と　ジョイパッド　の上下
4710 if ((y = 1) or (key$ = chr$(31)) or (y = -1) or (key$ = chr$(30))) then
4720 select case No
4730 case 0:
4740       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 2,15:print "                                    ":locate 2,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
4750 case 3:
4760 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 2,15:print"                                      ":locate 2,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
4770 end select
4780 endif
4790 'ジョイパッドの右　or  Enter key
4800 if ((bg = 2) or (key$ = chr$(13))) then
4810 select case No
4820 case 0:
4830        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
4840 case 3:
4850        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
4860 end select
4870 endif
4880 if ((bg2 = 2)) then
4890 play "":pause 200
4900 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
4910 endif
