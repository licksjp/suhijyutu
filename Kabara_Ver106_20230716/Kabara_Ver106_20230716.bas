100 '(プログラムを)終了するを選択
110 cls 3
120 '数秘術占い 2019.08.16
130 '改変履歴
140 '"2021.03.31 α版 画面背景アップデート"
150 '"2021.04.02 β版 更にアップデート音声追加"
160 '"2021.04.03 β2版 画面表示拡張"
170 '"2023.05.20 β3版　入力方式拡張"
180 'Version 更新履歴
190 '2023.06.04:Ver100_20230604
200 '2023.06.11:Ver101_20230611
210 '2023.06.18:Ver102_20230618
220 '2023.06.25:Ver103_20230625
230 '2023.07.02:Ver104_20230702
240 '2023.07.09:Ver105_20230709
250 '2023.07.16:Ver106_20230716
260 Version$ = "Ver:1.0.6_20230716"
270 'Gazo file Folder
280 Gazo$ = "./data/Picture/"
290 'Voice files 2023
300 Voice$ = "./data/Voice/Voice/"
310 'BirtheyeChart Data:20230626
320 Birth_eye_chart$ = "./data/chart_data/"
330 '変数定義 パート
340 b=0:c=0
350 dim buf_name1$(10),buf_name2$(10)
360 dim buffer(9),buf_chart$(26,2)
370 'File 読み込み
380 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
390 for j=0 to 25
400 for i=0 to 1
410 input #1,a$
420 buf_chart$(j,i) = a$
430 next i
440 next j
450 close #1
460 'File 読み込み　ここまで
470 'Main画面
480 screen 1,1,1,1
490 Main_Screen:
500 cls 3:
510 No=0
520 gload Gazo$ + "Selection.png",1,5,200
530 gload Gazo$ + "Selection.png",1,5,300
540 gload Gazo$ + "Selection.png",1,5,400
550 gload Gazo$ + "Selection.png",1,5,500
560 gload Gazo$ + "TopScreen_20230310.png",0,0,0
570 gload Gazo$ + "downscreen.png",0,0,800
580 sp_def 0,(5,300),32,32
590 sp_def 1,(5,400),32,32
600 sp_def 2,(5,500),32,32
610 sp_def 3,(5,600),32,32
620 'Sprite OFF
630 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
640 sp_put 0,(5,300),0,0
650 sp_put 1,(5,400),1,0
660 sp_put 2,(5,500),2,0
670 sp_put 3,(5,600),3,0
680 Main_Top:
690 'Main Message 2023.06.07
700 '再生を止める
710 play ""
720 init "kb:4"
730 font 48:
740 print chr$(13) + chr$(13) + chr$(13)
750 color rgb(217,255,212)
760 print "番号を選んでください" + chr$(13)
770 '0
780 print " :1.数秘術占い" + chr$(13)
790 '1
800 print " :2.設 定" + chr$(13)
810 '2
820 print " :3.ヘルプ" + chr$(13)
830 '3
840 print " :4.(プログラムを)終了する" + chr$(13)
850 COLOR rgb(0,0,0):No=0
860 locate 1,15
870 print "                                       "
880 locate 1,15:print "1.数秘術占いを選択"
890 play Voice$ + "Voice_Main_Message_20230607.mp3"
900 Main_Screen_Select:
910 y = 0:key$ = "":bg = 0:bg2=0
920 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
930 y = stick(1)
940 '"May (2023)"
950 key$ = inkey$
960 bg = strig(1)
970 bg2 = strig(0)
980 pause 2
990 wend
1000 '1.
1010 'ジョイパッドのソース ソート　ここから
1020 'カーソル　下 or 十字キー下
1030 if ((y = 1) or (key$ = chr$(31))) then
1040 select case No
1050 case 0:
1060 '1
1070 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1080 case 1:
1090 '2
1100 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1110 case 2:
1120 '3
1130 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1140 case 3:
1150 '0
1160 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
1170 end select
1180 endif
1190 '2.
1200 'カーソル　上　or 十字キー  上
1210 if ((y = -1) or (key$ = chr$(30))) then
1220 select case No
1230 case 0:
1240 '3
1250 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1260 case 1:
1270 '0
1280 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1290 case 2:
1300 '1
1310 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1320 case 3:
1330 '2
1340 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1350 end select
1360 endif
1370 'ジョイパッド　ソース 部分　ここまで
1380 'ジョイパッド右　　or Enter key 決定
1390 if ((bg = 2) OR (key$ = chr$(13))) then
1400 select case No
1410 case 0:
1420 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_First_Top:
1430 case 1:
1440 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1450 case 2:
1460 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1470 case 3:
1480 play "":pause 200
1490 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:end
1500 end select
1510 endif
1520 if (bg2 = 2) then
1530 play "":pause 200
1540 play Voice$ + "Voice_Main_Message_20230607.mp3"
1550 goto Main_Screen_Select:
1560 endif
1570 'Version
1580 Version:
1590 cls 3:PLAY ""
1600 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1610 gload Gazo$ + "downscreen.png",0,0,800
1620 init"kb:4":font 32
1630 'talk"バージョン情報です"
1640 'Message :Version
1650 play Voice$ +  "Voice_Version_Message_20230607.mp3"
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
1800 bg = 0:key$ = "":bg2=0
1810 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
1820 bg = strig(1)
1830 key$ = inkey$
1840 bg2 = strig(0)
1850 pause 2
1860 wend
1870 if ((bg = 2) or (key$ = chr$(13))) then
1880 pause 200:cls 4:goto Main_Screen:
1890 endif
1900 if (bg2=2) then
1910 play "":pause 200
1920 play Voice$ + "Voice_Version_Message_20230607.mp3"
1930 goto Versionn_Selection:
1940 endif
1950 '1.数秘ナンバーを求める
1960 '誕生日入力(生れた年代)
1970 Input_Seireki:
1980 CLS 3:play ""
1990 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
2000 init"kb:2"
2010 '音声ファイル再生 2023.06.07
2020 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
2030 font 48
2040 locate 0,2
2050 '文字色：黒　 color rgb(0,0,0)
2060 color rgb(0,0,0)
2070 Input"生れた年代(4桁,〜2025年):",year
2080 if year > 2025 then goto Input_Seireki:
2090 if year = 123 then cls 3:cls 4:goto Main_Screen:
2100 '"4桁目"
2110 bufyear4 = fix(year / 1000)
2120 '"3桁目"
2130 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2140 '"2桁目"
2150 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2160 '"1桁目"
2170 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2180 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2190 '生れた月を入力
2200 Input_Born_Month:
2210 cls 3:font 48:play ""
2220 '生まれた月入力
2230 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2240 init"kb:2"
2250 'talk "生まれた月を入れてください"
2260 'ボイス再生 2023.06.07
2270 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2280 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2290 locate 0,2
2300 '文字色：黒 color rgb(0,0,0)
2310 color rgb(0,0,0,)
2320 Input"生れた月:",month
2330 if month=0 then goto Input_Seireki:
2340 if (month > 12) then ui_msg "入力が範囲外です、入れ直してください。":goto Input_Born_Month:
2350 '生れた日を入力
2360 Input_Born_Day:
2370 '生まれた日入力
2380 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2390 init"kb:2":font 48
2400 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2410 locate 0,2
2420 color rgb(0,0,0)
2430 Input"生れた日:",day
2440 if day=0 then goto Input_Born_Month:
2450 if (day > 31) then ui_msg"入力値が範囲外です、入れ直してください。":goto Input_Born_Day:
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
2560 gload Gazo$ + "downscreen.png",0,0,800
2570 init "kb:4"
2580 '
2590 Kabara_Result_Screen:
2600 play ""
2610 select case (bufsuhiNo)
2620 case 1:
2630       play Voice$ + "Result_Kabara_1_20230607.mp3"
2640 case 2:
2650       play Voice$ + "Result_Kabara_2_20230607.mp3"
2660 case 3:
2670       play Voice$ + "Result_Kabara_3_20230607.mp3"
2680 case 4:
2690       play Voice$ + "Result_Kabara_4_20230607.mp3"
2700 case 5:
2710       play Voice$ + "Result_Kabara_5_20230607.mp3"
2720 case 6:
2730       play Voice$ + "Result_Kabara_6_20230607.mp3"
2740 case 7:
2750       play Voice$ + "Result_Kabara_7_20230607.mp3"
2760 case 8:
2770       play Voice$ + "Result_Kabara_8_20230607.mp3"
2780 case 9:
2790       play Voice$ + "Result_Kabara_9_20230607.mp3"
2800 case 11:
2810       play Voice$ + "Result_Kabara_11_20230607.mp3"
2820 case 22:
2830       play Voice$ + "Result_Kabara_22_20230607.mp3"
2840 case 33:
2850       play Voice$ + "Result_Kabara_33_20230607.mp3"
2860 end select
2870 font 48
2880 key$ = "":bg = 0:
2890 'COLOR rgb(255,255,255)
2900 'print "●診断結果"+chr$(13)
2910 locate 0,2
2920 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2930 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2940 locate 1,15:
2950 color rgb(255,255,255)
2960 print "ジョイパッドの右:トップメニュー" + chr$(13)
2970 while ((key$ <> chr$(13)) and (bg <> 2))
2980 key$ = inkey$
2990 bg = strig(1)
3000 pause 2
3010 wend
3020 'Enter or JoyPad right
3030 if ((key$ = chr$(13)) or (bg = 2)) then
3040 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
3050 endif
3060 else
3070 suhiNo1 = fix(bufsuhiNo / 10)
3080 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
3090 bufsuhiNo = suhiNo1 + suhiNo2
3100 goto recomp:
3110 endif
3120 'print chr$(13)
3130 'color rgb(255,0,0)
3140 'print"トップ:エンターキー,S or s:保存"+chr$(13)
3150 'key$ = input$(1)
3160 'if key$ = chr$(13) then goto Main_Screen:
3170 '"Menu2 占いのルール"
3180 Suhi_Rule:
3190 '数秘術占いルールの表示
3200 cls 3:play "":init"kb:4"
3210 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3220 gload Gazo$ + "downscreen.png",0,0,800
3230 'cls 3:
3240 'line (0,0) - (1500,60),rgb(0,0,255),bf
3250 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3260 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3270 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3280 locate 0,2:Font 48
3290 print chr$(13) + chr$(13)
3300 color rgb(0,0,0)
3310 print "誕生日を単数変換します";chr$(13)
3320 print "数字の範囲:1〜９,11,22,33";chr$(13)
3330 print "例:1973年11月22日の場合";chr$(13)
3340 print "1+9+7+3+11+22=53 ";chr$(13)
3350 print "→ 5 + 3 = 8" + chr$(13)
3360 print "故に8が数秘ナンバーになります";chr$(13)
3370 locate 0,15
3380 color rgb(255,255,255)
3390 print "ジョイパッドの右を押してください"
3400 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3410 '"key$ = input$(1)"
3420 '"if key$ = chr$(13) then goto Main_Screen:"
3430 suhi_rule_selection:
3440 bg = 0:key$ = "":bg2=0
3450 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
3460 bg = strig(1)
3470 key$ = inkey$
3480 bg2=strig(0)
3490 pause 2
3500 wend
3510 if ((bg = 2) or (key$ = chr$(13))) then
3520 pause 200:cls 4:goto Main_Screen:
3530 endif
3540 if (bg2=2) then
3550 play "":pause 200
3560 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3570 goto suhi_rule_selection:
3580 endif
3590 '2.設定
3600 '2-1.トップ画面に戻る
3610 Setting:
3620 cls 3:init"kb:4":font 48:No=0
3630 play ""
3640 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3650 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3660 gload Gazo$ + "downscreen.png",0,0,800
3670 print chr$(13) + chr$(13) + chr$(13)
3680 color rgb(255,255,255):sp_on 0,1:
3690 print "番号を選んでください" + chr$(13)
3700 print " :1.トップ画面に戻る"+ chr$(13)
3710 print " :2.未実装" + chr$(13)
3720 print " :3.未実装" + chr$(13)
3730 print " :4.未実装" + chr$(13)
3740 color rgb(0,0,0)
3750 locate 1,15:print "1.トップ画面に戻るを選択"
3760 Setting_Selection:
3770 y=0:key$="":bg=0:bg2=0
3780 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
3790 'y=stick(1)
3800 key$ = inkey$
3810 bg=strig(1)
3820 bg2 = strig(0)
3830 pause 2
3840 wend
3850 if ((bg = 2) or (key$ = chr$(13))) then
3860 select case No
3870 case 0:
3880       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
3890 end select
3900 endif
3910 if (bg2 = 2) then
3920 play "":pause 200
3930 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3940 goto Setting_Selection:
3950 endif
3960 '3.Help
3970 '3-1.ルールの表示
3980 '3-2.バージョン
3990 '3-3.トップに戻る
4000 Help:
4010 cls 3:Font 48:No=0
4020 play ""
4030 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
4040 gload Gazo$ + "downscreen.png",0,0,800
4050 color rgb(255,255,255)
4060 print chr$(13)+chr$(13)+chr$(13)
4070 print "番号を選んでください"+chr$(13)
4080 print " :1.ルールの表示" + chr$(13)
4090 print " :2.バージョンの表示" + chr$(13)
4100 print " :3.参考文献" + chr$(13)
4110 print " :4.トップ画面に戻る" + chr$(13)
4120 color rgb(0,0,0)
4130 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
4140 locate 1,15
4150 print "                                      "
4160 locate 1,15
4170 print "1.ルールの表示を選択"
4180 init"kb:4"
4190 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4200 Help_Select:
4210 bg=0:key$="":y=0:bg2=0
4220 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
4230 y = stick(1)
4240 key$ = inkey$
4250 bg = strig(1)
4260 bg2 = strig(0)
4270 pause 2
4280 wend
4290 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
4300 if ((y = 1) or (key$ = chr$(31))) then
4310 select case No
4320 case 0:
4330       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
4340 case 1:
4350       No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
4360 case 2:
4370       No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
4380 case 3:
4390       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4400 end select
4410 endif
4420 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
4430 if ((y = -1) or (key$ = chr$(30))) then
4440 select case No
4450 case 0:
4460        No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
4470 case 1:
4480        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4490 case 2:
4500        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
4510 case 3:
4520        No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
4530 end select
4540 endif
4550 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
4560 if ((bg = 2) or (key$ = chr$(13))) then
4570 select case No
4580 case 0:
4590       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
4600 case 1:
4610       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
4620 case 2:
4630       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
4640 '3:Top画面に行く
4650 case 3:
4660       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
4670 end select
4680 endif
4690 if (bg2 = 2) then
4700 play "":pause 200
4710 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4720 goto Help_Select:
4730 endif
4740 '数秘術占い　トップ画面
4750 Kabara_TopScreen:
4760 cls 3:play ""
4770 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
4780 gload Gazo$ + "downscreen.png",0,0,800
4790 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
4800 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
4810 init"kb:4":No=0
4820 color rgb(255,255,255)
4830 print chr$(13)+chr$(13)+chr$(13)
4840 print "番号を選んでください" + chr$(13)
4850 print " :1.数秘術占い" + chr$(13)
4860 print " :2.バーズアイグリット" + chr$(13)
4870 print " :3.未実装" + chr$(13)
4880 print " :4.トップ画面に戻る" + chr$(13)
4890 color rgb(0,0,0)
4900 locate 1,15:print "1.数秘番号を求めるを選択"
4910 Kabara_TopScreen2:
4920 y = 0:bg = 0:key$ = "":bg2 = 0
4930 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
4940 key$ = inkey$
4950 bg = strig(1)
4960 y = stick(1)
4970 bg2 = strig(0)
4980 pause 2
4990 wend
5000 '選択ボタン
5010 'カーソル　と　ジョイパッド　の下
5020 if ((y = 1) or (key$ = chr$(31))) then
5030 select case No
5040 case 1:
5050       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5060 case 3:
5070 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5080 case 0:
5090       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5100 end select
5110 endif
5120 'カーソル　上
5130 if ((y=-1) or (key$=chr$(30))) then
5140 select case No
5150 case 0:
5160       No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5170 case 1:
5180       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5190 case 3:
5200       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5210 case 0:
5220       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_on 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5230 end select
5240 endif
5250 '決定ボタン
5260 'ジョイパッドの右　or  Enter key
5270 if ((bg = 2) or (key$ = chr$(13))) then
5280 select case No
5290 case 0:
5300        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
5310 case 3:
5320        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
5330 case else:
5340          play"":sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
5350 end select
5360 endif
5370 if ((bg2 = 2)) then
5380 play "":pause 200
5390 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
5400 goto Kabara_TopScreen2:
5410 endif
5420 '1.バースアイグリット　名入力
5430 Inputname1:
5440 cls 3:init"kb:2":font 48
5450 gload Gazo$ + "Input_Birtheye2.png",0,0,0
5460 color rgb(255,255,255)
5470 locate 1,2:print "名前をアルファベットで入れてください"
5480 color rgb(0,0,0)
5490 locate 1,5:Input "名前（姓の部分）:",name1$
5500 'locate 1,5:print "Hit any key"
5510 n1 = len(name1$)
5520 if (n1 < 11) then
5530 for i=1 to n1
5540 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
5550 next i
5560 endif
5570 'if b$=chr$(13) then goto Inputname2:
5580 '2.グリッドアイ　姓の入力
5590 Inputname2:
5600 cls 3:init"kb:2":font 48
5610 gload Gazo$ + "Input_Birtheye1.png",0,0,0
5620 color rgb(255,255,255)
5630 locate 1,2:print "名前をアルファベットで入れてください"
5640 color rgb(0,0,0)
5650 locate 1,5:Input "名前(名の部分):",name2$
5660 n2=len(name2$)
5670 for i=1 to n2
5680 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
5690 next i
5700 '計算領域
5710 Complate:
5720 'name1
5730 for i=0 to 25
5740 for n=1 to len(name1$)
5750 if (buf_chart$(i,0) = buf_name1$(n-1)) then
5760 b = val(buf_chart$(i,1))
5770 buffer(b-1) = buffer(b-1) + 1
5780 endif
5790 next n
5800 next i
5810 'name2
5820 for i=0 to 25
5830 for n=1 to len(name2$)
5840 if (buf_chart$(i,0) = buf_name2$(n-1)) then
5850 c = val(buf_chart$(i,1))
5860 buffer(c - 1) = buffer(c - 1) + 1
5870 endif
5880 next n
5890 next i
5900 '結果表示領域
5910 Result_Birtheye1:
5920 cls 3:init"kb:4":No=0
5930 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
5940 gload Gazo$ + "downscreen.png",0,0,800
5950 color rgb(255,255,255)
5960 '1の表示
5970 locate 3,14:print buffer(0);
5980 '2の表示
5990 locate 3,9:print buffer(1);
6000 '3の表示
6010 locate 3,5:print buffer(2);
6020 '4の表示
6030 locate 10,14:print buffer(3);
6040 '5の表示
6050 locate 10,9:print buffer(4);
6060 '6の表示
6070 locate 10,5:print buffer(5);
6080 '7の表示
6090 locate  15,14:print buffer(6);
6100 '8の表示
6110 locate 15,9:print buffer(7);
6120 '9の表示
6130 locate 15,5:print buffer(8);
6140 'name を大文字に変換
6150 locate 5,3:print ucase$(name1$ + name2$)
6160 color rgb(0,0,0)
6170 locate 2,15:print "右の丸ボタン:トップ画面"
6180 bg=0:key$="":
6190 while ((bg <> 2) and (key$ <> chr$(13)))
6200 'Enterと決定ボタン
6210 key$ = inkey$
6220 bg = strig(1)
6230 pause 200
6240 wend
6250 if ((bg=2) or (key$=chr$(13))) then
6260 'データーをクリアしてトップ画面に行く
6270 for i=0 to 8
6280 buffer(i)=0
6290 next i
6300 for n=0 to 9
6310 buf_name1$(n) = ""
6320 buf_name2$(n) = ""
6330 next n
6340 'Topに行く
6350 goto Main_Screen:
6360 endif
6370 'goto Result_Birtheye1:
6380 'Result_Birtheye2:
6390 'cls 3:color rgb(255,255,255)
6400 'end
6410 'Memory 消去
6420 '
6430 References1:
6440 cls 3:key$="":bg=0:play "":font 48-16
6450 gload Gazo$ + "Reference1_20230703.png",0,0,0
6460 print chr$(13)+chr$(13)+chr$(13)
6470 color rgb(0,0,0)
6480 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
6490 print "Author:carol Adrinne,PhD"+chr$(13)
6500 print "出版社:幻冬舎" + chr$(13)
6510 print "HP:www.carolAdrienne.jp/"+chr$(13)
6520 print "ISBN:978-4-344-01394-0"+chr$(13)
6530 print "定価:1500円 + 税"+chr$(13)
6540 color rgb(255,255,255)
6550 locate 1,23
6560 print "ジョイパッド右：次へ"
6570 while (key$ <> chr$(13) and bg <> 2)
6580 bg = strig(1)
6590 key$ = inkey$
6600 wend
6610 '
6620 if ((bg = 2) or (key$ = chr$(13))) then
6630 pause 200:goto References2:
6640 endif
6650 'ユダヤの秘儀 カバラ大占術
6660 References2:
6670 cls 3:play "":bg = 0:key$ = ""
6680 gload Gazo$ + "Reference2_20230703.png",0,0,0
6690 '参考文献２
6700 'カバラ大占術
6710 print chr$(13) + chr$(13)
6720 color  rgb(0,0,0):font 48
6730 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
6740 print "著者：浅野　八郎" + chr$(13)
6750 print "出版社:NON BOOK" + chr$(13)
6760 print "ISBN:4-396-10364-6" + chr$(13)
6770 print "定価:829円 + 税"
6780 color rgb(255,255,255)
6790 locate 1,23
6800 print "ジョイパッド右：トップへ行く"
6810 while ((key$ <> chr$(13)) and (bg <> 2))
6820 bg = strig(1)
6830 key$ = inkey$
6840 wend
6850 if ((bg=2) or (key$=chr$(13))) then
6860 pause 200:goto Main_Screen:
6870 endif
6880 '1.数秘術　トップ画面
6890 Kabara_First_Top:
6900 cls 3:color rgb(255,255,255)
6910 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
6920 gload Gazo$ + "downscreen.png",0,0,800
6930 No=0:init"kb:4"
6940 print chr$(13);chr$(13)
6950 color rgb(255,255,255)
6960 locate 3,4:No=0
6970 print "番号選んでください" + chr$(13)
6980 print " :1.数秘術番号を求める" + chr$(13)
6990 print " :2.数秘術の相性占い(未実装) " + chr$(13)
7000 print " :3.トップ画面に戻る" + chr$(13)
7010 color rgb(0,0,0)
7020 sp_on 0,1
7030 locate 1,15:print "1.数秘術番号を求めるを選択"
7040 'KeyBord:true
7050 'Joy Pad:true
7060 '上、下:true
7070 '
7080 'ｂｇ：決定ボタン
7090 'カーソル　上
7100 'カーソル　下
7110 Kabara_First_Top2:
7120 key$ = "":bg = 0:y = 0:
7130 while (((key$ <> chr$(13)) and (bg  <> 2) and (y <> 1) and (y <> -1)))
7140 key$ = inkey$
7150 bg = strig(1)
7160 y = stick(1)
7170 'PauseでCPUを休める
7180 pause 200
7190 wend
7200 '1.カーソル　下 処理 chr$(31)
7210 if (key$ = chr$(31) or (y=1)) then
7220 select case No
7230 '0:
7240 case 0:
7250        No = 2:sp_on 2,1:sp_on 1,0:sp_on 3,0:sp_on 0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_First_Top2:
7260 case 1:
7270        No = 2:sp_on 2,1:sp_on 0,0:sp_on 3,0:sp_on 1,0:pause 200:goto Kabara_First_Top2:
7280 case 2:
7290        No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
7300 'case 3:
7310 '       No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_First_Top2:
7320 end select
7330 endif
7340 '2.カーソル　上 処理 chr$(30)
7350 if ((key$ = chr$(30)) or (y=-1)) then
7360 select case No
7370 case 0:
7380        No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_First_Top2:
7390 'case 1:
7400  '    No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:goto Kabara_First_Top2:
7410 case 2:
7420       No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
7430 end select
7440 endif
7450 '3.決定 処理  bg:2 or Enter key:chr$(13)
7460 if ((bg = 2) or (key$=chr$(13))) then
7470 select case No
7480 case 0:
7490       cls 4:goto Input_Seireki:
7500 case 1:
7510       'cls 4:goto Kabara_First_Top2:
7520 case 2:
7530       cls 4:goto Main_Screen:
7540 end select
7550 endif
7560 '
7570 '1.数秘術　トップ画面
7580 '
7590 'Data_eraseを一番最後に持ってくる
7600 Data_erase:
7610 erase buf_name1$
7620 erase buf_name2$
7630 erase buffer
7640 erase buf_chart$
7650 return
