100 cls 3
110 '数秘術占い 2019.08.16
120 '改変履歴
130 '"2021.03.31 α版 画面背景アップデート"
140 '"2021.04.02 β版 更にアップデート音声追加"
150 '"2021.04.03 β2版 画面表示拡張"
160 '"2023.05.20 β3版　入力方式拡張"
170 'Version 更新履歴
180 '2023.06.04:Ver100_20230604
190 '2023.06.11:Ver101_20230611
200 '2023.06.18:Ver102_20230618
210 '2023.06.25:Ver103_20230625
220 '2023.07.02:Ver104_20230702
230 Version$ = "Ver:1.0.4_20230702"
240 'Gazo file Folder
250 Gazo$ = "./data/Picture/"
260 'Voice files 2023
270 Voice$ = "./data/Voice/Voice/"
280 'BirtheyeChart Data:20230626
290 Birth_eye_chart$="./data/chart_data/"
300 '変数定義 パート
310 b=0:c=0
320 dim buf_name1$(10),buf_name2$(10)
330 dim buffer(9),buf_chart$(26,2)
340 'File 読み込み
350 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
360 for j=0 to 25
370 for i=0 to 1
380 input #1,a$
390 buf_chart$(j,i) = a$
400 next i
410 next j
420 close #1
430 'Main画面
440 screen 1,1,1,1
450 Main_Screen:
460 cls 3:
470 No=0
480 gload Gazo$ + "Selection.png",1,5,200
490 gload Gazo$ + "Selection.png",1,5,300
500 gload Gazo$ + "Selection.png",1,5,400
510 gload Gazo$ + "Selection.png",1,5,500
520 gload Gazo$ + "TopScreen_20230310.png",0,0,0
530 gload Gazo$ + "downscreen.png",0,0,800
540 sp_def 0,(5,300),32,32
550 sp_def 1,(5,400),32,32
560 sp_def 2,(5,500),32,32
570 sp_def 3,(5,600),32,32
580 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
590 sp_put 0,(5,300),0,0
600 sp_put 1,(5,400),1,0
610 sp_put 2,(5,500),2,0
620 sp_put 3,(5,600),3,0
630 Main_Top:
640 'Main Message 2023.06.07
650 play ""
660 init"kb:4"
670 font 48:
680 print chr$(13)+chr$(13)+chr$(13)
690 color rgb(217,255,212)
700 print"番号を選んでください"+chr$(13)
710 '0
720 print" :1.数秘術占い" + chr$(13)
730 '1
740 print" :2.設 定" + chr$(13)
750 '2
760 print" :3.ヘルプ" + chr$(13)
770 '3
780 print" :4.(プログラムを)終了する"
790 COLOR rgb(0,0,0):No=0
800 locate 1,15
810 print "                                       "
820 locate 1,15:print "1.数秘術占いを選択"
830 play Voice$ + "Voice_Main_Message_20230607.mp3"
840 Main_Screen_Select:
850 y = 0:key$ = "":bg = 0:bg2=0
860 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
870 y = stick(1)
880 '"May (2023)"
890 key$ = inkey$
900 bg = strig(1)
910 bg2 = strig(0)
920 pause 2
930 wend
940 '1.
950 'ジョイパッドのソース ソート　ここから
960 'カーソル　下 or 十字キー下
970 if ((y = 1) or (key$ = chr$(31))) then
980 select case No
990 case 0:
1000 '1
1010 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1020 case 1:
1030 '2
1040 No=2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1050 case 2:
1060 '3
1070 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1080 case 3:
1090 '0
1100 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on  2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
1110 end select
1120 endif
1130 '2.
1140 'カーソル　上　or 十字キー  上
1150 if ((y = -1) or (key$ = chr$(30))) then
1160 select case No
1170 case 0:
1180 '3
1190 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1200 case 1:
1210 '0
1220 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1230 case 2:
1240 '1
1250 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1260 case 3:
1270 '2
1280 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1290 end select
1300 endif
1310 'ジョイパッド　ソース 部分　ここまで
1320 'ジョイパッド右　　or Enter key 決定
1330 if ((bg = 2) OR (key$ = chr$(13))) then
1340 select case No
1350 case 0:
1360 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen:
1370 case 1:
1380 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1390 case 2:
1400 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1410 case 3:
1420 play "":pause 20
1430 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 2000:color rgb(255,255,255):cls 3:cls 4:end
1440 end select
1450 endif
1460 if (bg2 = 2) then
1470 play "":pause 200
1480 play Voice$ + "Voice_Main_Message_20230607.mp3"
1490 goto Main_Screen_Select:
1500 endif
1510 'Version
1520 Version:
1530 cls 3:PLAY ""
1540 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1550 gload Gazo$ + "downscreen.png",0,0,800
1560 init"kb:4":font 32
1570 'talk"バージョン情報です"
1580 'Message :Version
1590 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1600 locate 0,5
1610 color rgb(0,0,0)
1620 print "・Title:数秘術占い";chr$(13)
1630 print "・" + Version$ + chr$(13)
1640 print "・Author:licksjp"+chr$(13)
1650 print "・E-mail:licksjp@gmail.com" + chr$(13)
1660 locate 0,18
1670 print "(C)licksjp All rights " + chr$(13)
1680 locate 13,19
1690 print "reserved since 2009"+chr$(13)
1700 locate 0,23
1710 color rgb(255,255,255)
1720 print "ジョイパッドの右を押してください"
1730 Versionn_Selection:
1740 bg = 0:key$ = "":bg2=0
1750 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
1760 bg = strig(1)
1770 key$ = inkey$
1780 bg2 = strig(0)
1790 pause 2
1800 wend
1810 if ((bg = 2) or (key$ = chr$(13))) then
1820 pause 200:cls 4:goto Main_Screen:
1830 endif
1840 if (bg2=2) then
1850 play "":pause 200
1860 play Voice$ + "Voice_Version_Message_20230607.mp3"
1870 goto Versionn_Selection:
1880 endif
1890 '1.数秘ナンバーを求める
1900 '誕生日入力(生れた年代)
1910 Input_Seireki:
1920 CLS 3:play ""
1930 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
1940 init"kb:2"
1950 '音声ファイル再生 2023.06.07
1960 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
1970 font 48
1980 locate 0,2
1990 '文字色：黒　 color rgb(0,0,0)
2000 color rgb(0,0,0)
2010 Input"生れた年代(4桁,〜2025年):",year
2020 if year > 2025 then goto Input_Seireki:
2030 if year = 123 then cls 3:cls 4:goto Main_Screen:
2040 '"4桁目"
2050 bufyear4 = fix(year / 1000)
2060 '"3桁目"
2070 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2080 '"2桁目"
2090 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2100 '"1桁目"
2110 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2120 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2130 '生れた月を入力
2140 Input_Born_Month:
2150 cls 3:font 48:play ""
2160 '生まれた月入力
2170 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2180 init"kb:2"
2190 'talk "生まれた月を入れてください"
2200 'ボイス再生 2023.06.07
2210 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2220 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2230 locate 0,2
2240 '文字色：黒 color rgb(0,0,0)
2250 color rgb(0,0,0,)
2260 Input"生れた月:",month
2270 if month=0 then goto Input_Seireki:
2280 if (month > 12) then ui_msg "入力が範囲外です、入れ直してください。":goto Input_Born_Month:
2290 '生れた日を入力
2300 Input_Born_Day:
2310 '生まれた日入力
2320 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2330 init"kb:2":font 48
2340 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2350 locate 0,2
2360 color rgb(0,0,0)
2370 Input"生れた日:",day
2380 if day=0 then goto Input_Born_Month:
2390 if (day > 31) then ui_msg"入力値が範囲外です、入れ直してください。":goto Input_Born_Day:
2400 suhiNo = bufyear + month + day
2410 if (suhiNo < 100) then
2420 suhiNo1 = fix(suhiNo / 10)
2430 suhiNo2 = suhiNo - (suhiNo1 * 10)
2440 endif
2450 recomp:
2460 bufsuhiNo = suhiNo1 + suhiNo2
2470 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2480 cls 3:
2490 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2500 gload Gazo$ + "downscreen.png",0,0,800
2510 init "kb:4"
2520 '
2530 Kabara_Result_Screen:
2540 play ""
2550 select case (bufsuhiNo)
2560 case 1:
2570       play Voice$ + "Result_Kabara_1_20230607.mp3"
2580 case 2:
2590       play Voice$ + "Result_Kabara_2_20230607.mp3"
2600 case 3:
2610       play Voice$ + "Result_Kabara_3_20230607.mp3"
2620 case 4:
2630       play Voice$ + "Result_Kabara_4_20230607.mp3"
2640 case 5:
2650       play Voice$ + "Result_Kabara_5_20230607.mp3"
2660 case 6:
2670       play Voice$ + "Result_Kabara_6_20230607.mp3"
2680 case 7:
2690       play Voice$ + "Result_Kabara_7_20230607.mp3"
2700 case 8:
2710       play Voice$ + "Result_Kabara_8_20230607.mp3"
2720 case 9:
2730       play Voice$ + "Result_Kabara_9_20230607.mp3"
2740 case 11:
2750       play Voice$ + "Result_Kabara_11_20230607.mp3"
2760 case 22:
2770       play Voice$ + "Result_Kabara_22_20230607.mp3"
2780 case 33:
2790       play Voice$ + "Result_Kabara_33_20230607.mp3"
2800 end select
2810 font 48
2820 key$ = "":bg = 0:
2830 'COLOR rgb(255,255,255)
2840 'print "●診断結果"+chr$(13)
2850 locate 0,2
2860 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2870 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2880 locate 1,15:
2890 color rgb(255,255,255)
2900 print "ジョイパッドの右:トップメニュー" + chr$(13)
2910 while ((key$ <> chr$(13)) and (bg <> 2))
2920 key$ = inkey$
2930 bg = strig(1)
2940 pause 2
2950 wend
2960 'Enter or JoyPad right
2970 if ((key$ = chr$(13)) or (bg = 2)) then
2980 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
2990 endif
3000 else
3010 suhiNo1 = fix(bufsuhiNo / 10)
3020 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
3030 bufsuhiNo = suhiNo1 + suhiNo2
3040 goto recomp:
3050 endif
3060 'print chr$(13)
3070 'color rgb(255,0,0)
3080 'print"トップ:エンターキー,S or s:保存"+chr$(13)
3090 'key$ = input$(1)
3100 'if key$ = chr$(13) then goto Main_Screen:
3110 '"Menu2 占いのルール"
3120 Suhi_Rule:
3130 '数秘術占いルールの表示
3140 cls 3:play "":init"kb:4"
3150 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3160 gload Gazo$ + "downscreen.png",0,0,800
3170 'cls 3:
3180 'line (0,0) - (1500,60),rgb(0,0,255),bf
3190 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3200 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3210 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3220 locate 0,2:Font 48
3230 print chr$(13) + chr$(13)
3240 color rgb(0,0,0)
3250 print "誕生日を単数変換します";chr$(13)
3260 print "数字の範囲:1〜９,11,22,33";chr$(13)
3270 print "例:1973年11月22日の場合";chr$(13)
3280 print "1+9+7+3+11+22=53 ";chr$(13)
3290 print "→ 5 + 3 = 8" + chr$(13)
3300 print "故に8が数秘ナンバーになります";chr$(13)
3310 locate 0,15
3320 color rgb(255,255,255)
3330 print "ジョイパッドの右を押してください"
3340 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3350 '"key$ = input$(1)"
3360 '"if key$ = chr$(13) then goto Main_Screen:"
3370 suhi_rule_selection:
3380 bg = 0:key$ = "":bg2=0
3390 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
3400 bg = strig(1)
3410 key$ = inkey$
3420 bg2=strig(0)
3430 pause 2
3440 wend
3450 if ((bg = 2) or (key$ = chr$(13))) then
3460 pause 200:cls 4:goto Main_Screen:
3470 endif
3480 if (bg2=2) then
3490 play "":pause 200
3500 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3510 goto suhi_rule_selection:
3520 endif
3530 '2.設定
3540 '2-1.トップ画面に戻る
3550 Setting:
3560 cls 3:init"kb:4":font 48:No=0
3570 play ""
3580 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3590 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3600 gload Gazo$ + "downscreen.png",0,0,800
3610 print chr$(13)+chr$(13)+chr$(13)
3620 color rgb(255,255,255):sp_on 0,1:
3630 print "番号を選んでください"+chr$(13)
3640 print " :1.トップ画面に戻る"+ chr$(13)
3650 print " :2.未実装" + chr$(13)
3660 print " :3.未実装" + chr$(13)
3670 print " :4.未実装" + chr$(13)
3680 color rgb(0,0,0)
3690 locate 1,15:print "1.トップ画面に戻るを選択"
3700 Setting_Selection:
3710 y=0:key$="":bg=0:bg2=0
3720 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
3730 'y=stick(1)
3740 key$ = inkey$
3750 bg=strig(1)
3760 bg2 = strig(0)
3770 pause 2
3780 wend
3790 if ((bg = 2) or (key$ = chr$(13))) then
3800 select case No
3810 case 0:
3820       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
3830 end select
3840 endif
3850 if (bg2=2) then
3860 play "":pause 200
3870 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3880 goto Setting_Selection:
3890 endif
3900 '3.Help
3910 '3-1.ルールの表示
3920 '3-2.バージョン
3930 '3-3.トップに戻る
3940 Help:
3950 cls 3:Font 48:No=0
3960 play ""
3970 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
3980 gload Gazo$ + "downscreen.png",0,0,800
3990 color rgb(255,255,255)
4000 print chr$(13)+chr$(13)+chr$(13)
4010 print "番号を選んでください"+chr$(13)
4020 print " :1.ルールの表示" + chr$(13)
4030 print " :2.バージョンの表示" + chr$(13)
4040 print " :3.トップ画面に戻る" + chr$(13)
4050 color rgb(0,0,0)
4060 sp_on 0,1:sp_on 1,0:sp_on 2,0
4070 locate 1,15
4080 print "                                      "
4090 locate 1,15
4100 print "1.ルールの表示を選択"
4110 init"kb:4"
4120 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4130 Help_Select:
4140 bg=0:key$="":y=0:bg2=0
4150 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
4160 y = stick(1)
4170 key$ = inkey$
4180 bg = strig(1)
4190 bg2 = strig(0)
4200 pause 2
4210 wend
4220 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
4230 if ((y = 1) or (key$ = chr$(31))) then
4240 select case No
4250 case 0:
4260       No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
4270 case 1:
4280       No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Help_Select:
4290 case 2:
4300       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4310 end select
4320 endif
4330 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
4340 if ((y = -1) or (key$ = chr$(30))) then
4350 select case No
4360 case 0:
4370        No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Help_Select:
4380 case 1:
4390        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4400 case 2:
4410        No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
4420 end select
4430 endif
4440 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
4450 if ((bg = 2) or (key$ = chr$(13))) then
4460 select case No
4470 case 0:
4480       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Suhi_Rule:
4490 case 1:
4500       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Version:
4510 case 2:
4520       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
4530 end select
4540 endif
4550 if (bg2 = 2) then
4560 play "":pause 200
4570 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4580 goto Help_Select:
4590 endif
4600 '数秘術占い　トップ画面
4610 Kabara_TopScreen:
4620 cls 3:play ""
4630 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
4640 gload Gazo$ + "downscreen.png",0,0,800
4650 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
4660 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
4670 init"kb:4":No=0
4680 color rgb(255,255,255)
4690 print chr$(13)+chr$(13)+chr$(13)
4700 print "番号を選んでください" +chr$(13)
4710 print " :1.数秘番号を求める" +chr$(13)
4720 print " :2.バーズアイグリット"  + chr$(13)
4730 print " :3.未実装"  + chr$(13)
4740 print " :4.トップ画面に戻る" + chr$(13)
4750 color rgb(0,0,0)
4760 locate 1,15:print "1.数秘番号を求めるを選択"
4770 Kabara_TopScreen2:
4780 y = 0:bg = 0:key$ = "":bg2 = 0
4790 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
4800 key$ = inkey$
4810 bg = strig(1)
4820 y = stick(1)
4830 bg2 = strig(0)
4840 pause 2
4850 wend
4860 '選択ボタン
4870 'カーソル　と　ジョイパッド　の下
4880 if ((y = 1) or (key$ = chr$(30))) then
4890 select case No
4900 case 1:
4910       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
4920 case 3:
4930 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
4940 case 0:
4950       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バースアイグリッドを選択":goto Kabara_TopScreen2:
4960 end select
4970 endif
4980 'カーソル　上
4990 if ((y=-1) or (key$=chr$(31))) then
5000 select case No
5010 case 0:
5020       No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5030 case 1:
5040       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5050 case 3:
5060       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バースアイグリッドを選択":goto Kabara_TopScreen2:
5070 case 0:
5080       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_on 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5090 end select
5100 endif
5110 '決定ボタン
5120 'ジョイパッドの右　or  Enter key
5130 if ((bg = 2) or (key$ = chr$(13))) then
5140 select case No
5150 case 0:
5160        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
5170 case 3:
5180        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
5190 case else:
5200          play"":sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
5210 end select
5220 endif
5230 if ((bg2 = 2)) then
5240 play "":pause 200
5250 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
5260 goto Kabara_TopScreen2:
5270 endif
5280 '1.バースアイグリット　名入力
5290 Inputname1:
5300 cls 3:init"kb:2":font 48
5310 gload Gazo$ + "Input_Birtheye2.png",0,0,0
5320 color rgb(255,255,255)
5330 locate 1,2:print "名前をアルファベットで入れてください"
5340 color rgb(0,0,0)
5350 locate 1,5:Input "名前（姓の部分）:",name1$
5360 'locate 1,5:print "Hit any key"
5370 n1 = len(name1$)
5380 if (n1 < 11) then
5390 for i=1 to n1
5400 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
5410 next i
5420 endif
5430 'if b$=chr$(13) then goto Inputname2:
5440 '2.グリッドアイ　姓の入力
5450 Inputname2:
5460 cls 3:init"kb:2":font 48
5470 gload Gazo$ + "Input_Birtheye1.png",0,0,0
5480 color rgb(255,255,255)
5490 locate 1,2:print "名前をアルファベットで入れてください"
5500 color rgb(0,0,0)
5510 locate 1,5:Input "名前(名の部分):",name2$
5520 n2=len(name2$)
5530 for i=1 to n2
5540 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
5550 next i
5560 '計算領域
5570 Complate:
5580 'name1
5590 for i=0 to 25
5600 for n=1 to len(name1$)
5610 if (buf_chart$(i,0) = buf_name1$(n-1)) then
5620 b = val(buf_chart$(i,1))
5630 buffer(b-1) = buffer(b-1) + 1
5640 endif
5650 next n
5660 next i
5670 'name2
5680 for i=0 to 25
5690 for n=1 to len(name2$)
5700 if (buf_chart$(i,0) = buf_name2$(n-1)) then
5710 c = val(buf_chart$(i,1))
5720 buffer(c - 1) = buffer(c - 1) + 1
5730 endif
5740 next n
5750 next i
5760 '結果表示領域
5770 Result_Birtheye1:
5780 cls 3:init"kb:4":No=0
5790 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
5800 gload Gazo$ + "downscreen.png",0,0,800
5810 color rgb(255,255,255)
5820 '1の表示
5830 locate 3,14:print buffer(0);
5840 '2の表示
5850 locate 3,9:print buffer(1);
5860 '3の表示
5870 locate 3,5:print buffer(2);
5880 '4の表示
5890 locate 10,14:print buffer(3);
5900 '5の表示
5910 locate 10,9:print buffer(4);
5920 '6の表示
5930 locate 10,5:print buffer(5);
5940 '7の表示
5950 locate  15,14:print buffer(6);
5960 '8の表示
5970 locate 15,9:print buffer(7);
5980 '9の表示
5990 locate 15,5:print buffer(8);
6000 locate 5,3:print ucase$(name1$ + name2$)
6010 color rgb(0,0,0)
6020 locate 2,15:print "右の丸ボタン:トップ画面"
6030 bg=0:key$="":
6040 while ((bg <> 2) and (key$ <> chr$(13)))
6050 key$ = inkey$
6060 bg = strig(1)
6070 wend
6080 if ((bg=2) or (key$=chr$(13))) then
6090 for i=0 to 8
6100 buffer(i)=0
6110 next i
6120 for n=0 to 9
6130 buf_name1$(n)=""
6140 buf_name2$(n)=""
6150 next n
6160 goto Main_Screen:
6170 endif
6180 'goto Result_Birtheye1:
6190 'Result_Birtheye2:
6200 'cls 3:color rgb(255,255,255)
6210 'end
6220 'Memory 消去
6230 Data_erase:
6240 timer=0
6250 for i=0 to 1000000
6260 next
6270 erase buf_name1$
6280 erase buf_name2$
6290 erase buffer
6300 erase buf_chart$
6310 ui_msg str$(timer)
6320 return
