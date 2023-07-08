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
230 '2023.07.09:Ver105_20230709
240 Version$ = "Ver:1.0.5_20230709"
250 'Gazo file Folder
260 Gazo$ = "./data/Picture/"
270 'Voice files 2023
280 Voice$ = "./data/Voice/Voice/"
290 'BirtheyeChart Data:20230626
300 Birth_eye_chart$ = "./data/chart_data/"
310 '変数定義 パート
320 b=0:c=0
330 dim buf_name1$(10),buf_name2$(10)
340 dim buffer(9),buf_chart$(26,2)
350 'File 読み込み
360 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
370 for j=0 to 25
380 for i=0 to 1
390 input #1,a$
400 buf_chart$(j,i) = a$
410 next i
420 next j
430 close #1
440 'File 読み込み　ここまで
450 'Main画面
460 screen 1,1,1,1
470 Main_Screen:
480 cls 3:
490 No=0
500 gload Gazo$ + "Selection.png",1,5,200
510 gload Gazo$ + "Selection.png",1,5,300
520 gload Gazo$ + "Selection.png",1,5,400
530 gload Gazo$ + "Selection.png",1,5,500
540 gload Gazo$ + "TopScreen_20230310.png",0,0,0
550 gload Gazo$ + "downscreen.png",0,0,800
560 sp_def 0,(5,300),32,32
570 sp_def 1,(5,400),32,32
580 sp_def 2,(5,500),32,32
590 sp_def 3,(5,600),32,32
600 'Sprite OFF
610 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
620 sp_put 0,(5,300),0,0
630 sp_put 1,(5,400),1,0
640 sp_put 2,(5,500),2,0
650 sp_put 3,(5,600),3,0
660 Main_Top:
670 'Main Message 2023.06.07
680 play ""
690 init"kb:4"
700 font 48:
710 print chr$(13) + chr$(13) + chr$(13)
720 color rgb(217,255,212)
730 print"番号を選んでください"+chr$(13)
740 '0
750 print" :1.数秘術占い" + chr$(13)
760 '1
770 print" :2.設 定" + chr$(13)
780 '2
790 print" :3.ヘルプ" + chr$(13)
800 '3
810 print" :4.(プログラムを)終了する"
820 COLOR rgb(0,0,0):No=0
830 locate 1,15
840 print "                                       "
850 locate 1,15:print "1.数秘術占いを選択"
860 play Voice$ + "Voice_Main_Message_20230607.mp3"
870 Main_Screen_Select:
880 y = 0:key$ = "":bg = 0:bg2=0
890 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
900 y = stick(1)
910 '"May (2023)"
920 key$ = inkey$
930 bg = strig(1)
940 bg2 = strig(0)
950 pause 2
960 wend
970 '1.
980 'ジョイパッドのソース ソート　ここから
990 'カーソル　下 or 十字キー下
1000 if ((y = 1) or (key$ = chr$(31))) then
1010 select case No
1020 case 0:
1030 '1
1040 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1050 case 1:
1060 '2
1070 No=2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1080 case 2:
1090 '3
1100 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1110 case 3:
1120 '0
1130 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on  2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
1140 end select
1150 endif
1160 '2.
1170 'カーソル　上　or 十字キー  上
1180 if ((y = -1) or (key$ = chr$(30))) then
1190 select case No
1200 case 0:
1210 '3
1220 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1230 case 1:
1240 '0
1250 No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1260 case 2:
1270 '1
1280 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1290 case 3:
1300 '2
1310 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1320 end select
1330 endif
1340 'ジョイパッド　ソース 部分　ここまで
1350 'ジョイパッド右　　or Enter key 決定
1360 if ((bg = 2) OR (key$ = chr$(13))) then
1370 select case No
1380 case 0:
1390 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen:
1400 case 1:
1410 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1420 case 2:
1430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1440 case 3:
1450 play "":pause 20
1460 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 2000:color rgb(255,255,255):cls 3:cls 4:end
1470 end select
1480 endif
1490 if (bg2 = 2) then
1500 play "":pause 200
1510 play Voice$ + "Voice_Main_Message_20230607.mp3"
1520 goto Main_Screen_Select:
1530 endif
1540 'Version
1550 Version:
1560 cls 3:PLAY ""
1570 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1580 gload Gazo$ + "downscreen.png",0,0,800
1590 init"kb:4":font 32
1600 'talk"バージョン情報です"
1610 'Message :Version
1620 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1630 locate 0,5
1640 color rgb(0,0,0)
1650 print "・Title:数秘術占い";chr$(13)
1660 print "・" + Version$ + chr$(13)
1670 print "・Author:licksjp"+chr$(13)
1680 print "・E-mail:licksjp@gmail.com" + chr$(13)
1690 locate 0,18
1700 print "(C)licksjp All rights " + chr$(13)
1710 locate 13,19
1720 print "reserved since 2009"+chr$(13)
1730 locate 0,23
1740 color rgb(255,255,255)
1750 print "ジョイパッドの右を押してください"
1760 Versionn_Selection:
1770 bg = 0:key$ = "":bg2=0
1780 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
1790 bg = strig(1)
1800 key$ = inkey$
1810 bg2 = strig(0)
1820 pause 2
1830 wend
1840 if ((bg = 2) or (key$ = chr$(13))) then
1850 pause 200:cls 4:goto Main_Screen:
1860 endif
1870 if (bg2=2) then
1880 play "":pause 200
1890 play Voice$ + "Voice_Version_Message_20230607.mp3"
1900 goto Versionn_Selection:
1910 endif
1920 '1.数秘ナンバーを求める
1930 '誕生日入力(生れた年代)
1940 Input_Seireki:
1950 CLS 3:play ""
1960 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
1970 init"kb:2"
1980 '音声ファイル再生 2023.06.07
1990 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
2000 font 48
2010 locate 0,2
2020 '文字色：黒　 color rgb(0,0,0)
2030 color rgb(0,0,0)
2040 Input"生れた年代(4桁,〜2025年):",year
2050 if year > 2025 then goto Input_Seireki:
2060 if year = 123 then cls 3:cls 4:goto Main_Screen:
2070 '"4桁目"
2080 bufyear4 = fix(year / 1000)
2090 '"3桁目"
2100 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2110 '"2桁目"
2120 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2130 '"1桁目"
2140 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2150 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2160 '生れた月を入力
2170 Input_Born_Month:
2180 cls 3:font 48:play ""
2190 '生まれた月入力
2200 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2210 init"kb:2"
2220 'talk "生まれた月を入れてください"
2230 'ボイス再生 2023.06.07
2240 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2250 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2260 locate 0,2
2270 '文字色：黒 color rgb(0,0,0)
2280 color rgb(0,0,0,)
2290 Input"生れた月:",month
2300 if month=0 then goto Input_Seireki:
2310 if (month > 12) then ui_msg "入力が範囲外です、入れ直してください。":goto Input_Born_Month:
2320 '生れた日を入力
2330 Input_Born_Day:
2340 '生まれた日入力
2350 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2360 init"kb:2":font 48
2370 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2380 locate 0,2
2390 color rgb(0,0,0)
2400 Input"生れた日:",day
2410 if day=0 then goto Input_Born_Month:
2420 if (day > 31) then ui_msg"入力値が範囲外です、入れ直してください。":goto Input_Born_Day:
2430 suhiNo = bufyear + month + day
2440 if (suhiNo < 100) then
2450 suhiNo1 = fix(suhiNo / 10)
2460 suhiNo2 = suhiNo - (suhiNo1 * 10)
2470 endif
2480 recomp:
2490 bufsuhiNo = suhiNo1 + suhiNo2
2500 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2510 cls 3:
2520 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2530 gload Gazo$ + "downscreen.png",0,0,800
2540 init "kb:4"
2550 '
2560 Kabara_Result_Screen:
2570 play ""
2580 select case (bufsuhiNo)
2590 case 1:
2600       play Voice$ + "Result_Kabara_1_20230607.mp3"
2610 case 2:
2620       play Voice$ + "Result_Kabara_2_20230607.mp3"
2630 case 3:
2640       play Voice$ + "Result_Kabara_3_20230607.mp3"
2650 case 4:
2660       play Voice$ + "Result_Kabara_4_20230607.mp3"
2670 case 5:
2680       play Voice$ + "Result_Kabara_5_20230607.mp3"
2690 case 6:
2700       play Voice$ + "Result_Kabara_6_20230607.mp3"
2710 case 7:
2720       play Voice$ + "Result_Kabara_7_20230607.mp3"
2730 case 8:
2740       play Voice$ + "Result_Kabara_8_20230607.mp3"
2750 case 9:
2760       play Voice$ + "Result_Kabara_9_20230607.mp3"
2770 case 11:
2780       play Voice$ + "Result_Kabara_11_20230607.mp3"
2790 case 22:
2800       play Voice$ + "Result_Kabara_22_20230607.mp3"
2810 case 33:
2820       play Voice$ + "Result_Kabara_33_20230607.mp3"
2830 end select
2840 font 48
2850 key$ = "":bg = 0:
2860 'COLOR rgb(255,255,255)
2870 'print "●診断結果"+chr$(13)
2880 locate 0,2
2890 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2900 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2910 locate 1,15:
2920 color rgb(255,255,255)
2930 print "ジョイパッドの右:トップメニュー" + chr$(13)
2940 while ((key$ <> chr$(13)) and (bg <> 2))
2950 key$ = inkey$
2960 bg = strig(1)
2970 pause 2
2980 wend
2990 'Enter or JoyPad right
3000 if ((key$ = chr$(13)) or (bg = 2)) then
3010 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
3020 endif
3030 else
3040 suhiNo1 = fix(bufsuhiNo / 10)
3050 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
3060 bufsuhiNo = suhiNo1 + suhiNo2
3070 goto recomp:
3080 endif
3090 'print chr$(13)
3100 'color rgb(255,0,0)
3110 'print"トップ:エンターキー,S or s:保存"+chr$(13)
3120 'key$ = input$(1)
3130 'if key$ = chr$(13) then goto Main_Screen:
3140 '"Menu2 占いのルール"
3150 Suhi_Rule:
3160 '数秘術占いルールの表示
3170 cls 3:play "":init"kb:4"
3180 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3190 gload Gazo$ + "downscreen.png",0,0,800
3200 'cls 3:
3210 'line (0,0) - (1500,60),rgb(0,0,255),bf
3220 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3230 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3240 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3250 locate 0,2:Font 48
3260 print chr$(13) + chr$(13)
3270 color rgb(0,0,0)
3280 print "誕生日を単数変換します";chr$(13)
3290 print "数字の範囲:1〜９,11,22,33";chr$(13)
3300 print "例:1973年11月22日の場合";chr$(13)
3310 print "1+9+7+3+11+22=53 ";chr$(13)
3320 print "→ 5 + 3 = 8" + chr$(13)
3330 print "故に8が数秘ナンバーになります";chr$(13)
3340 locate 0,15
3350 color rgb(255,255,255)
3360 print "ジョイパッドの右を押してください"
3370 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3380 '"key$ = input$(1)"
3390 '"if key$ = chr$(13) then goto Main_Screen:"
3400 suhi_rule_selection:
3410 bg = 0:key$ = "":bg2=0
3420 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
3430 bg = strig(1)
3440 key$ = inkey$
3450 bg2=strig(0)
3460 pause 2
3470 wend
3480 if ((bg = 2) or (key$ = chr$(13))) then
3490 pause 200:cls 4:goto Main_Screen:
3500 endif
3510 if (bg2=2) then
3520 play "":pause 200
3530 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3540 goto suhi_rule_selection:
3550 endif
3560 '2.設定
3570 '2-1.トップ画面に戻る
3580 Setting:
3590 cls 3:init"kb:4":font 48:No=0
3600 play ""
3610 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3620 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3630 gload Gazo$ + "downscreen.png",0,0,800
3640 print chr$(13)+chr$(13)+chr$(13)
3650 color rgb(255,255,255):sp_on 0,1:
3660 print "番号を選んでください"+chr$(13)
3670 print " :1.トップ画面に戻る"+ chr$(13)
3680 print " :2.未実装" + chr$(13)
3690 print " :3.未実装" + chr$(13)
3700 print " :4.未実装" + chr$(13)
3710 color rgb(0,0,0)
3720 locate 1,15:print "1.トップ画面に戻るを選択"
3730 Setting_Selection:
3740 y=0:key$="":bg=0:bg2=0
3750 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
3760 'y=stick(1)
3770 key$ = inkey$
3780 bg=strig(1)
3790 bg2 = strig(0)
3800 pause 2
3810 wend
3820 if ((bg = 2) or (key$ = chr$(13))) then
3830 select case No
3840 case 0:
3850       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
3860 end select
3870 endif
3880 if (bg2 = 2) then
3890 play "":pause 200
3900 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3910 goto Setting_Selection:
3920 endif
3930 '3.Help
3940 '3-1.ルールの表示
3950 '3-2.バージョン
3960 '3-3.トップに戻る
3970 Help:
3980 cls 3:Font 48:No=0
3990 play ""
4000 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
4010 gload Gazo$ + "downscreen.png",0,0,800
4020 color rgb(255,255,255)
4030 print chr$(13)+chr$(13)+chr$(13)
4040 print "番号を選んでください"+chr$(13)
4050 print " :1.ルールの表示" + chr$(13)
4060 print " :2.バージョンの表示" + chr$(13)
4070 print " :3.参考文献" + chr$(13)
4080 print " :4.トップ画面に戻る" + chr$(13)
4090 color rgb(0,0,0)
4100 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
4110 locate 1,15
4120 print "                                      "
4130 locate 1,15
4140 print "1.ルールの表示を選択"
4150 init"kb:4"
4160 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4170 Help_Select:
4180 bg=0:key$="":y=0:bg2=0
4190 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
4200 y = stick(1)
4210 key$ = inkey$
4220 bg = strig(1)
4230 bg2 = strig(0)
4240 pause 2
4250 wend
4260 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
4270 if ((y = 1) or (key$ = chr$(31))) then
4280 select case No
4290 case 0:
4300       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
4310 case 1:
4320       No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
4330 case 2:
4340       No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
4350 case 3:
4360       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4370 end select
4380 endif
4390 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
4400 if ((y = -1) or (key$ = chr$(30))) then
4410 select case No
4420 case 0:
4430        No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
4440 case 1:
4450        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4460 case 2:
4470        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
4480 case 3:
4490        No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
4500 end select
4510 endif
4520 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
4530 if ((bg = 2) or (key$ = chr$(13))) then
4540 select case No
4550 case 0:
4560       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
4570 case 1:
4580       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
4590 case 2:
4600       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
4610 '3:Top画面に行く
4620 case 3:
4630       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
4640 end select
4650 endif
4660 if (bg2 = 2) then
4670 play "":pause 200
4680 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4690 goto Help_Select:
4700 endif
4710 '数秘術占い　トップ画面
4720 Kabara_TopScreen:
4730 cls 3:play ""
4740 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
4750 gload Gazo$ + "downscreen.png",0,0,800
4760 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
4770 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
4780 init"kb:4":No=0
4790 color rgb(255,255,255)
4800 print chr$(13)+chr$(13)+chr$(13)
4810 print "番号を選んでください" + chr$(13)
4820 print " :1.数秘術占い" + chr$(13)
4830 print " :2.バーズアイグリット" + chr$(13)
4840 print " :3.未実装" + chr$(13)
4850 print " :4.トップ画面に戻る" + chr$(13)
4860 color rgb(0,0,0)
4870 locate 1,15:print "1.数秘番号を求めるを選択"
4880 Kabara_TopScreen2:
4890 y = 0:bg = 0:key$ = "":bg2 = 0
4900 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
4910 key$ = inkey$
4920 bg = strig(1)
4930 y = stick(1)
4940 bg2 = strig(0)
4950 pause 2
4960 wend
4970 '選択ボタン
4980 'カーソル　と　ジョイパッド　の下
4990 if ((y = 1) or (key$ = chr$(31))) then
5000 select case No
5010 case 1:
5020       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5030 case 3:
5040 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5050 case 0:
5060       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5070 end select
5080 endif
5090 'カーソル　上
5100 if ((y=-1) or (key$=chr$(30))) then
5110 select case No
5120 case 0:
5130       No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5140 case 1:
5150       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5160 case 3:
5170       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5180 case 0:
5190       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_on 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5200 end select
5210 endif
5220 '決定ボタン
5230 'ジョイパッドの右　or  Enter key
5240 if ((bg = 2) or (key$ = chr$(13))) then
5250 select case No
5260 case 0:
5270        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
5280 case 3:
5290        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
5300 case else:
5310          play"":sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
5320 end select
5330 endif
5340 if ((bg2 = 2)) then
5350 play "":pause 200
5360 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
5370 goto Kabara_TopScreen2:
5380 endif
5390 '1.バースアイグリット　名入力
5400 Inputname1:
5410 cls 3:init"kb:2":font 48
5420 gload Gazo$ + "Input_Birtheye2.png",0,0,0
5430 color rgb(255,255,255)
5440 locate 1,2:print "名前をアルファベットで入れてください"
5450 color rgb(0,0,0)
5460 locate 1,5:Input "名前（姓の部分）:",name1$
5470 'locate 1,5:print "Hit any key"
5480 n1 = len(name1$)
5490 if (n1 < 11) then
5500 for i=1 to n1
5510 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
5520 next i
5530 endif
5540 'if b$=chr$(13) then goto Inputname2:
5550 '2.グリッドアイ　姓の入力
5560 Inputname2:
5570 cls 3:init"kb:2":font 48
5580 gload Gazo$ + "Input_Birtheye1.png",0,0,0
5590 color rgb(255,255,255)
5600 locate 1,2:print "名前をアルファベットで入れてください"
5610 color rgb(0,0,0)
5620 locate 1,5:Input "名前(名の部分):",name2$
5630 n2=len(name2$)
5640 for i=1 to n2
5650 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
5660 next i
5670 '計算領域
5680 Complate:
5690 'name1
5700 for i=0 to 25
5710 for n=1 to len(name1$)
5720 if (buf_chart$(i,0) = buf_name1$(n-1)) then
5730 b = val(buf_chart$(i,1))
5740 buffer(b-1) = buffer(b-1) + 1
5750 endif
5760 next n
5770 next i
5780 'name2
5790 for i=0 to 25
5800 for n=1 to len(name2$)
5810 if (buf_chart$(i,0) = buf_name2$(n-1)) then
5820 c = val(buf_chart$(i,1))
5830 buffer(c - 1) = buffer(c - 1) + 1
5840 endif
5850 next n
5860 next i
5870 '結果表示領域
5880 Result_Birtheye1:
5890 cls 3:init"kb:4":No=0
5900 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
5910 gload Gazo$ + "downscreen.png",0,0,800
5920 color rgb(255,255,255)
5930 '1の表示
5940 locate 3,14:print buffer(0);
5950 '2の表示
5960 locate 3,9:print buffer(1);
5970 '3の表示
5980 locate 3,5:print buffer(2);
5990 '4の表示
6000 locate 10,14:print buffer(3);
6010 '5の表示
6020 locate 10,9:print buffer(4);
6030 '6の表示
6040 locate 10,5:print buffer(5);
6050 '7の表示
6060 locate  15,14:print buffer(6);
6070 '8の表示
6080 locate 15,9:print buffer(7);
6090 '9の表示
6100 locate 15,5:print buffer(8);
6110 'name を大文字に変換
6120 locate 5,3:print ucase$(name1$ + name2$)
6130 color rgb(0,0,0)
6140 locate 2,15:print "右の丸ボタン:トップ画面"
6150 bg=0:key$="":
6160 while ((bg <> 2) and (key$ <> chr$(13)))
6170 key$ = inkey$
6180 bg = strig(1)
6190 wend
6200 if ((bg=2) or (key$=chr$(13))) then
6210 'データーをクリアしてトップ画面に行く
6220 for i=0 to 8
6230 buffer(i)=0
6240 next i
6250 for n=0 to 9
6260 buf_name1$(n) = ""
6270 buf_name2$(n) = ""
6280 next n
6290 'Topに行く
6300 goto Main_Screen:
6310 endif
6320 'goto Result_Birtheye1:
6330 'Result_Birtheye2:
6340 'cls 3:color rgb(255,255,255)
6350 'end
6360 'Memory 消去
6370 '
6380 References1:
6390 cls 3:key$="":bg=0:play "":font 48-16
6400 gload Gazo$ + "Reference1_20230703.png",0,0,0
6410 print chr$(13)+chr$(13)+chr$(13)
6420 color rgb(0,0,0)
6430 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
6440 print "Author:carol Adrinne,PhD"+chr$(13)
6450 print "出版社:幻冬舎" + chr$(13)
6460 print "HP:www.carolAdrienne.jp/"+chr$(13)
6470 print "ISBN:978-4-344-01394-0"+chr$(13)
6480 print "定価:1500円 + 税"+chr$(13)
6490 color rgb(255,255,255)
6500 locate 1,23
6510 print "ジョイパッド右：次へ"
6520 while (key$<>chr$(13) and bg<>2)
6530 bg = strig(1)
6540 key$ = inkey$
6550 wend
6560 '
6570 if ((bg = 2) or (key$ = chr$(13))) then
6580 pause 200:goto References2:
6590 endif
6600 'ユダヤの秘儀 カバラ大占術
6610 References2:
6620 cls 3:play "":bg = 0:key$ = ""
6630 gload Gazo$ + "Reference2_20230703.png",0,0,0
6640 '参考文献２
6650 'カバラ大占術
6660 print chr$(13) + chr$(13)
6670 color  rgb(0,0,0)
6680 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
6690 print "著者：浅野　八郎" + chr$(13)
6700 print "出版社:NON BOOK" + chr$(13)
6710 print "ISBN:4-396-10364-6" + chr$(13)
6720 print "定価:829円 + 税"
6730 color rgb(255,255,255)
6740 locate 1,23
6750 print "ジョイパッド右：トップへ行く"
6760 while ((key$ <> chr$(13)) and (bg <> 2))
6770 bg = strig(1)
6780 key$ = inkey$
6790 wend
6800 if ((bg=2) or (key$=chr$(13))) then
6810 pause 200:goto Main_Screen:
6820 endif
6830 '
6840 'Data_eraseを一番最後に持ってくる
6850 Data_erase:
6860 erase buf_name1$
6870 erase buf_name2$
6880 erase buffer
6890 erase buf_chart$
6900 return
