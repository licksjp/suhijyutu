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
260 '2023.07.23:Ver107_20230723
270 Version$ = "Ver:1.0.7_20230723"
280 'Gazo file Folder
290 Gazo$ = "./data/Picture/"
300 'Voice files 2023
310 Voice$ = "./data/Voice/Voice/"
320 'BirtheyeChart Data:20230626
330 Birth_eye_chart$ = "./data/chart_data/"
340 '変数定義 パート
350 b=0:c=0
360 dim buf_name1$(10),buf_name2$(10)
370 dim buffer(9),buf_chart$(26,2)
380 'File 読み込み
390 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
400 for j=0 to 25
410 for i=0 to 1
420 input #1,a$
430 buf_chart$(j,i) = a$
440 next i
450 next j
460 close #1
470 'File 読み込み　ここまで
480 'Main画面
490 screen 1,1,1,1
500 Main_Screen:
510 cls 3:
520 No=0
530 gload Gazo$ + "Selection.png",1,5,200
540 gload Gazo$ + "Selection.png",1,5,300
550 gload Gazo$ + "Selection.png",1,5,400
560 gload Gazo$ + "Selection.png",1,5,500
570 gload Gazo$ + "TopScreen_20230310.png",0,0,0
580 gload Gazo$ + "downscreen.png",0,0,800
590 sp_def 0,(5,300),32,32
600 sp_def 1,(5,400),32,32
610 sp_def 2,(5,500),32,32
620 sp_def 3,(5,600),32,32
630 'Sprite OFF
640 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
650 sp_put 0,(5,300),0,0
660 sp_put 1,(5,400),1,0
670 sp_put 2,(5,500),2,0
680 sp_put 3,(5,600),3,0
690 Main_Top:
700 'Main Message 2023.06.07
710 '再生を止める
720 play ""
730 init "kb:4"
740 font 48:
750 print chr$(13) + chr$(13) + chr$(13)
760 color rgb(217,255,212)
770 print "番号を選んでください" + chr$(13)
780 '0
790 print " :1.数秘術占い" + chr$(13)
800 '1
810 print " :2.設 定" + chr$(13)
820 '2
830 print " :3.ヘルプ" + chr$(13)
840 '3
850 print " :4.(プログラムを)終了する" + chr$(13)
860 COLOR rgb(0,0,0):No=0
870 locate 1,15
880 print "                                       "
890 locate 1,15:print "1.数秘術占いを選択"
900 play Voice$ + "Voice_Main_Message_20230607.mp3"
910 Main_Screen_Select:
920 y = 0:key$ = "":bg = 0:bg2=0
930 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
940 y = stick(1)
950 '"May (2023)"
960 key$ = inkey$
970 bg = strig(1)
980 bg2 = strig(0)
990 pause 2
1000 wend
1010 '1.
1020 'ジョイパッドのソース ソート　ここから
1030 'カーソル　下 or 十字キー下
1040 if ((y = 1) or (key$ = chr$(31))) then
1050 select case No
1060 case 0:
1070 '1
1080 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1090 case 1:
1100 '2
1110 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1120 case 2:
1130 '3
1140 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1150 case 3:
1160 '0
1170 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
1180 end select
1190 endif
1200 '2.
1210 'カーソル　上　or 十字キー  上
1220 if ((y = -1) or (key$ = chr$(30))) then
1230 select case No
1240 case 0:
1250 '3
1260 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1270 case 1:
1280 '0
1290 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1300 case 2:
1310 '1
1320 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1330 case 3:
1340 '2
1350 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1360 end select
1370 endif
1380 'ジョイパッド　ソース 部分　ここまで
1390 'ジョイパッド右　　or Enter key 決定
1400 if ((bg = 2) OR (key$ = chr$(13))) then
1410 select case No
1420 case 0:
1430 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_First_Top:
1440 case 1:
1450 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1460 case 2:
1470 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1480 case 3:
1490 play "":pause 200
1500 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
1510 end select
1520 endif
1530 if (bg2 = 2) then
1540 play "":pause 200
1550 play Voice$ + "Voice_Main_Message_20230607.mp3"
1560 goto Main_Screen_Select:
1570 endif
1580 'Version
1590 Version:
1600 cls 3:PLAY ""
1610 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1620 gload Gazo$ + "downscreen.png",0,0,800
1630 init"kb:4":font 32
1640 'talk"バージョン情報です"
1650 'Message :Version
1660 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1670 locate 0,5
1680 color rgb(0,0,0)
1690 print "・Title:数秘術占い";chr$(13)
1700 print "・" + Version$ + chr$(13)
1710 print "・Author:licksjp"+chr$(13)
1720 print "・E-mail:licksjp@gmail.com" + chr$(13)
1730 locate 0,18
1740 print "(C)licksjp All rights " + chr$(13)
1750 locate 13,19
1760 print "reserved since 2009"+chr$(13)
1770 locate 0,23
1780 color rgb(255,255,255)
1790 print "ジョイパッドの右を押してください"
1800 Versionn_Selection:
1810 bg = 0:key$ = "":bg2=0
1820 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
1830 bg = strig(1)
1840 key$ = inkey$
1850 bg2 = strig(0)
1860 pause 2
1870 wend
1880 if ((bg = 2) or (key$ = chr$(13))) then
1890 pause 200:cls 4:goto Main_Screen:
1900 endif
1910 if (bg2=2) then
1920 play "":pause 200
1930 play Voice$ + "Voice_Version_Message_20230607.mp3"
1940 goto Versionn_Selection:
1950 endif
1960 '1.数秘ナンバーを求める
1970 '誕生日入力(生れた年代)
1980 Input_Seireki:
1990 CLS 3:play ""
2000 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
2010 init"kb:2"
2020 '音声ファイル再生 2023.06.07
2030 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
2040 font 48
2050 locate 0,2
2060 '文字色：黒　 color rgb(0,0,0)
2070 color rgb(0,0,0)
2080 Input"生れた年代(4桁,〜2025年):",year
2090 if year > 2025 then goto Input_Seireki:
2100 if year = 123 then cls 3:cls 4:goto Main_Screen:
2110 '"4桁目"
2120 bufyear4 = fix(year / 1000)
2130 '"3桁目"
2140 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2150 '"2桁目"
2160 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2170 '"1桁目"
2180 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2190 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2200 '生れた月を入力
2210 Input_Born_Month:
2220 cls 3:font 48:play ""
2230 '生まれた月入力
2240 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2250 init"kb:2"
2260 'talk "生まれた月を入れてください"
2270 'ボイス再生 2023.06.07
2280 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2290 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2300 locate 0,2
2310 '文字色：黒 color rgb(0,0,0)
2320 color rgb(0,0,0,)
2330 Input"生れた月:",month
2340 if month=0 then goto Input_Seireki:
2350 if (month > 12) then ui_msg "入力が範囲外です、入れ直してください。":goto Input_Born_Month:
2360 '生れた日を入力
2370 Input_Born_Day:
2380 '生まれた日入力
2390 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2400 init"kb:2":font 48
2410 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2420 locate 0,2
2430 color rgb(0,0,0)
2440 Input"生れた日:",day
2450 if day=0 then goto Input_Born_Month:
2460 if (day > 31) then ui_msg"入力値が範囲外です、入れ直してください。":goto Input_Born_Day:
2470 suhiNo = bufyear + month + day
2480 if (suhiNo < 100) then
2490 suhiNo1 = fix(suhiNo / 10)
2500 suhiNo2 = suhiNo - (suhiNo1 * 10)
2510 endif
2520 recomp:
2530 bufsuhiNo = suhiNo1 + suhiNo2
2540 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2550 cls 3:
2560 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2570 gload Gazo$ + "downscreen.png",0,0,800
2580 init "kb:4"
2590 '
2600 Kabara_Result_Screen:
2610 play ""
2620 select case (bufsuhiNo)
2630 case 1:
2640       play Voice$ + "Result_Kabara_1_20230607.mp3"
2650 case 2:
2660       play Voice$ + "Result_Kabara_2_20230607.mp3"
2670 case 3:
2680       play Voice$ + "Result_Kabara_3_20230607.mp3"
2690 case 4:
2700       play Voice$ + "Result_Kabara_4_20230607.mp3"
2710 case 5:
2720       play Voice$ + "Result_Kabara_5_20230607.mp3"
2730 case 6:
2740       play Voice$ + "Result_Kabara_6_20230607.mp3"
2750 case 7:
2760       play Voice$ + "Result_Kabara_7_20230607.mp3"
2770 case 8:
2780       play Voice$ + "Result_Kabara_8_20230607.mp3"
2790 case 9:
2800       play Voice$ + "Result_Kabara_9_20230607.mp3"
2810 case 11:
2820       play Voice$ + "Result_Kabara_11_20230607.mp3"
2830 case 22:
2840       play Voice$ + "Result_Kabara_22_20230607.mp3"
2850 case 33:
2860       play Voice$ + "Result_Kabara_33_20230607.mp3"
2870 end select
2880 font 48
2890 key$ = "":bg = 0:
2900 'COLOR rgb(255,255,255)
2910 'print "●診断結果"+chr$(13)
2920 locate 0,2
2930 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
2940 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
2950 locate 1,15:
2960 color rgb(255,255,255)
2970 print "ジョイパッドの右:トップメニュー" + chr$(13)
2980 while ((key$ <> chr$(13)) and (bg <> 2))
2990 key$ = inkey$
3000 bg = strig(1)
3010 pause 2
3020 wend
3030 'Enter or JoyPad right
3040 if ((key$ = chr$(13)) or (bg = 2)) then
3050 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
3060 endif
3070 else
3080 suhiNo1 = fix(bufsuhiNo / 10)
3090 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
3100 bufsuhiNo = suhiNo1 + suhiNo2
3110 goto recomp:
3120 endif
3130 'print chr$(13)
3140 'color rgb(255,0,0)
3150 'print"トップ:エンターキー,S or s:保存"+chr$(13)
3160 'key$ = input$(1)
3170 'if key$ = chr$(13) then goto Main_Screen:
3180 '"Menu2 占いのルール"
3190 Suhi_Rule:
3200 '数秘術占いルールの表示
3210 cls 3:play "":init"kb:4"
3220 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3230 gload Gazo$ + "downscreen.png",0,0,800
3240 'cls 3:
3250 'line (0,0) - (1500,60),rgb(0,0,255),bf
3260 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3270 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3280 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3290 locate 0,2:Font 48
3300 print chr$(13) + chr$(13)
3310 color rgb(0,0,0)
3320 print "誕生日を単数変換します";chr$(13)
3330 print "数字の範囲:1〜９,11,22,33";chr$(13)
3340 print "例:1973年11月22日の場合";chr$(13)
3350 print "1+9+7+3+11+22=53 ";chr$(13)
3360 print "→ 5 + 3 = 8" + chr$(13)
3370 print "故に8が数秘ナンバーになります";chr$(13)
3380 locate 0,15
3390 color rgb(255,255,255)
3400 print "ジョイパッドの右を押してください"
3410 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3420 '"key$ = input$(1)"
3430 '"if key$ = chr$(13) then goto Main_Screen:"
3440 suhi_rule_selection:
3450 bg = 0:key$ = "":bg2=0
3460 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
3470 bg = strig(1)
3480 key$ = inkey$
3490 bg2=strig(0)
3500 pause 2
3510 wend
3520 if ((bg = 2) or (key$ = chr$(13))) then
3530 pause 200:cls 4:goto Main_Screen:
3540 endif
3550 if (bg2=2) then
3560 play "":pause 200
3570 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3580 goto suhi_rule_selection:
3590 endif
3600 '2.設定
3610 '2-1.トップ画面に戻る
3620 Setting:
3630 cls 3:init"kb:4":font 48:No=0
3640 play ""
3650 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3660 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3670 gload Gazo$ + "downscreen.png",0,0,800
3680 print chr$(13) + chr$(13) + chr$(13)
3690 color rgb(255,255,255):sp_on 0,1:
3700 print "番号を選んでください" + chr$(13)
3710 print " :1.トップ画面に戻る"+ chr$(13)
3720 print " :2.未実装" + chr$(13)
3730 print " :3.未実装" + chr$(13)
3740 print " :4.未実装" + chr$(13)
3750 color rgb(0,0,0)
3760 locate 1,15:print "1.トップ画面に戻るを選択"
3770 Setting_Selection:
3780 y=0:key$="":bg=0:bg2=0
3790 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
3800 'y=stick(1)
3810 key$ = inkey$
3820 bg=strig(1)
3830 bg2 = strig(0)
3840 pause 2
3850 wend
3860 if ((bg = 2) or (key$ = chr$(13))) then
3870 select case No
3880 case 0:
3890       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
3900 end select
3910 endif
3920 if (bg2 = 2) then
3930 play "":pause 200
3940 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3950 goto Setting_Selection:
3960 endif
3970 '3.Help
3980 '3-1.ルールの表示
3990 '3-2.バージョン
4000 '3-3.トップに戻る
4010 Help:
4020 cls 3:Font 48:No=0
4030 play ""
4040 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
4050 gload Gazo$ + "downscreen.png",0,0,800
4060 color rgb(255,255,255)
4070 print chr$(13)+chr$(13)+chr$(13)
4080 print "番号を選んでください"+chr$(13)
4090 print " :1.ルールの表示" + chr$(13)
4100 print " :2.バージョンの表示" + chr$(13)
4110 print " :3.参考文献" + chr$(13)
4120 print " :4.トップ画面に戻る" + chr$(13)
4130 color rgb(0,0,0)
4140 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
4150 locate 1,15
4160 print "                                      "
4170 locate 1,15
4180 print "1.ルールの表示を選択"
4190 init"kb:4"
4200 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4210 Help_Select:
4220 bg=0:key$="":y=0:bg2=0
4230 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
4240 y = stick(1)
4250 key$ = inkey$
4260 bg = strig(1)
4270 bg2 = strig(0)
4280 pause 2
4290 wend
4300 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
4310 if ((y = 1) or (key$ = chr$(31))) then
4320 select case No
4330 case 0:
4340       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
4350 case 1:
4360       No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
4370 case 2:
4380       No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
4390 case 3:
4400       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4410 end select
4420 endif
4430 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
4440 if ((y = -1) or (key$ = chr$(30))) then
4450 select case No
4460 case 0:
4470        No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
4480 case 1:
4490        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4500 case 2:
4510        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
4520 case 3:
4530        No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
4540 end select
4550 endif
4560 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
4570 if ((bg = 2) or (key$ = chr$(13))) then
4580 select case No
4590 case 0:
4600       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
4610 case 1:
4620       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
4630 case 2:
4640       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
4650 '3:Top画面に行く
4660 case 3:
4670       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
4680 end select
4690 endif
4700 if (bg2 = 2) then
4710 play "":pause 200
4720 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4730 goto Help_Select:
4740 endif
4750 '数秘術占い　トップ画面
4760 Kabara_TopScreen:
4770 cls 3:play ""
4780 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
4790 gload Gazo$ + "downscreen.png",0,0,800
4800 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
4810 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
4820 init"kb:4":No=0
4830 color rgb(255,255,255)
4840 print chr$(13)+chr$(13)+chr$(13)
4850 print "番号を選んでください" + chr$(13)
4860 print " :1.数秘術占い" + chr$(13)
4870 print " :2.バーズアイグリット" + chr$(13)
4880 print " :3.未実装" + chr$(13)
4890 print " :4.トップ画面に戻る" + chr$(13)
4900 color rgb(0,0,0)
4910 locate 1,15:print "1.数秘番号を求めるを選択"
4920 Kabara_TopScreen2:
4930 y = 0:bg = 0:key$ = "":bg2 = 0
4940 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
4950 key$ = inkey$
4960 bg = strig(1)
4970 y = stick(1)
4980 bg2 = strig(0)
4990 pause 2
5000 wend
5010 '選択ボタン
5020 'カーソル　と　ジョイパッド　の下
5030 if ((y = 1) or (key$ = chr$(31))) then
5040 select case No
5050 case 1:
5060       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5070 case 3:
5080 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5090 case 0:
5100       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5110 end select
5120 endif
5130 'カーソル　上
5140 if ((y=-1) or (key$=chr$(30))) then
5150 select case No
5160 case 0:
5170       No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5180 case 1:
5190       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5200 case 3:
5210       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5220 case 0:
5230       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_on 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5240 end select
5250 endif
5260 '決定ボタン
5270 'ジョイパッドの右　or  Enter key
5280 if ((bg = 2) or (key$ = chr$(13))) then
5290 select case No
5300 case 0:
5310        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
5320 case 3:
5330        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
5340 case else:
5350          play"":sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
5360 end select
5370 endif
5380 if ((bg2 = 2)) then
5390 play "":pause 200
5400 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
5410 goto Kabara_TopScreen2:
5420 endif
5430 '1.バースアイグリット　名入力
5440 Inputname1:
5450 cls 3:init"kb:2":font 48
5460 gload Gazo$ + "Input_Birtheye2.png",0,0,0
5470 color rgb(255,255,255)
5480 locate 1,2:print "名前をアルファベットで入れてください"
5490 color rgb(0,0,0)
5500 locate 1,5:Input "名前（姓の部分）:",name1$
5510 'locate 1,5:print "Hit any key"
5520 n1 = len(name1$)
5530 if (n1 < 11) then
5540 for i=1 to n1
5550 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
5560 next i
5570 endif
5580 'if b$=chr$(13) then goto Inputname2:
5590 '2.グリッドアイ　姓の入力
5600 Inputname2:
5610 cls 3:init"kb:2":font 48
5620 gload Gazo$ + "Input_Birtheye1.png",0,0,0
5630 color rgb(255,255,255)
5640 locate 1,2:print "名前をアルファベットで入れてください"
5650 color rgb(0,0,0)
5660 locate 1,5:Input "名前(名の部分):",name2$
5670 n2=len(name2$)
5680 for i=1 to n2
5690 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
5700 next i
5710 '計算領域
5720 Complate:
5730 'name1
5740 for i=0 to 25
5750 for n=1 to len(name1$)
5760 if (buf_chart$(i,0) = buf_name1$(n-1)) then
5770 b = val(buf_chart$(i,1))
5780 buffer(b-1) = buffer(b-1) + 1
5790 endif
5800 next n
5810 next i
5820 'name2
5830 for i=0 to 25
5840 for n=1 to len(name2$)
5850 if (buf_chart$(i,0) = buf_name2$(n-1)) then
5860 c = val(buf_chart$(i,1))
5870 buffer(c - 1) = buffer(c - 1) + 1
5880 endif
5890 next n
5900 next i
5910 '結果表示領域
5920 Result_Birtheye1:
5930 cls 3:init"kb:4":No=0
5940 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
5950 gload Gazo$ + "downscreen.png",0,0,800
5960 color rgb(255,255,255)
5970 '1の表示
5980 locate 3,14:print buffer(0);
5990 '2の表示
6000 locate 3,9:print buffer(1);
6010 '3の表示
6020 locate 3,5:print buffer(2);
6030 '4の表示
6040 locate 10,14:print buffer(3);
6050 '5の表示
6060 locate 10,9:print buffer(4);
6070 '6の表示
6080 locate 10,5:print buffer(5);
6090 '7の表示
6100 locate  15,14:print buffer(6);
6110 '8の表示
6120 locate 15,9:print buffer(7);
6130 '9の表示
6140 locate 15,5:print buffer(8);
6150 'name を大文字に変換
6160 locate 5,3:print ucase$(name1$ + name2$)
6170 color rgb(0,0,0)
6180 locate 2,15:print "右の丸ボタン:トップ画面"
6190 bg=0:key$="":
6200 while ((bg <> 2) and (key$ <> chr$(13)))
6210 'Enterと決定ボタン
6220 key$ = inkey$
6230 bg = strig(1)
6240 pause 200
6250 wend
6260 if ((bg=2) or (key$=chr$(13))) then
6270 'データーをクリアしてトップ画面に行く
6280 for i=0 to 8
6290 buffer(i)=0
6300 next i
6310 for n=0 to 9
6320 buf_name1$(n) = ""
6330 buf_name2$(n) = ""
6340 next n
6350 'Topに行く
6360 goto Main_Screen:
6370 endif
6380 'goto Result_Birtheye1:
6390 'Result_Birtheye2:
6400 'cls 3:color rgb(255,255,255)
6410 'end
6420 'Memory 消去
6430 '
6440 References1:
6450 cls 3:key$="":bg=0:play "":font 48-16
6460 gload Gazo$ + "Reference1_20230703.png",0,0,0
6470 print chr$(13)+chr$(13)+chr$(13)
6480 color rgb(0,0,0)
6490 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
6500 print "Author:carol Adrinne,PhD"+chr$(13)
6510 print "出版社:幻冬舎" + chr$(13)
6520 print "HP:www.carolAdrienne.jp/"+chr$(13)
6530 print "ISBN:978-4-344-01394-0"+chr$(13)
6540 print "定価:1500円 + 税"+chr$(13)
6550 color rgb(255,255,255)
6560 locate 1,23
6570 print "ジョイパッド右：次へ"
6580 while (key$ <> chr$(13) and bg <> 2)
6590 bg = strig(1)
6600 key$ = inkey$
6610 wend
6620 '
6630 if ((bg = 2) or (key$ = chr$(13))) then
6640 pause 200:goto References2:
6650 endif
6660 'ユダヤの秘儀 カバラ大占術
6670 References2:
6680 cls 3:play "":bg = 0:key$ = ""
6690 gload Gazo$ + "Reference2_20230703.png",0,0,0
6700 '参考文献２
6710 'カバラ大占術
6720 print chr$(13) + chr$(13)
6730 color  rgb(0,0,0):font 48
6740 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
6750 print "著者：浅野　八郎" + chr$(13)
6760 print "出版社:NON BOOK" + chr$(13)
6770 print "ISBN:4-396-10364-6" + chr$(13)
6780 print "定価:829円 + 税"
6790 color rgb(255,255,255)
6800 locate 1,23
6810 print "ジョイパッド右：トップへ行く"
6820 while ((key$ <> chr$(13)) and (bg <> 2))
6830 bg = strig(1)
6840 key$ = inkey$
6850 wend
6860 if ((bg=2) or (key$=chr$(13))) then
6870 pause 200:goto Main_Screen:
6880 endif
6890 '1.数秘術　トップ画面
6900 Kabara_First_Top:
6910 cls 3:color rgb(255,255,255):play ""
6920 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
6930 gload Gazo$ + "downscreen.png",0,0,800
6940 No=0:init"kb:4"
6950 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
6960 print chr$(13);chr$(13)
6970 color rgb(255,255,255)
6980 locate 3,4:No=0
6990 print "番号選んでください" + chr$(13)
7000 print " :1.数秘術番号を求める" + chr$(13)
7010 print " :2.数秘術の相性占い" + chr$(13)
7020 print " :3.トップ画面に戻る" + chr$(13)
7030 color rgb(0,0,0)
7040 sp_on 0,1
7050 locate 1,15:print "1.数秘術番号を求めるを選択"
7060 'KeyBord:true
7070 'Joy Pad:true
7080 '上、下:true
7090 '
7100 'ｂｇ：決定ボタン
7110 'カーソル　上
7120 'カーソル　下
7130 Kabara_First_Top2:
7140 key$ = "":bg = 0:y = 0:
7150 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
7160 key$ = inkey$
7170 bg = strig(1)
7180 y = stick(1)
7190 'PauseでCPUを休める
7200 pause 5
7210 wend
7220 '1.カーソル　下 処理 chr$(31)
7230 if ((key$ = chr$(31)) or (y = 1)) then
7240 select case No
7250 '0:
7260 case 0:
7270        No = 1:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_on 0,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
7280 case 1:
7290        No=2:sp_on 2,1:sp_on 0,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.トップ画面に行くを選択":goto Kabara_First_Top2:
7300 case 2:
7310        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
7320 end select
7330 endif
7340 '2.カーソル　上 処理 chr$(30)
7350 if ((key$ = chr$(30)) or (y=-1)) then
7360 select case No
7370 case 0:
7380        No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_First_Top2:
7390 case 1:
7400     No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術番号を求める":goto Kabara_First_Top2:
7410 case 2:
7420       No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
7430 end select
7440 endif
7450 '3.決定 処理  bg:2 or Enter key:chr$(13)
7460 if ((bg = 2) or (key$ = chr$(13))) then
7470 select case No
7480 case 0:
7490       sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Input_Seireki:
7500 case 1:
7510       sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
7520 case 2:
7530       sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
7540 end select
7550 endif
7560 '
7570 'Kabara 相性占い トップ画面
7580 Kabara_Aishou_Top:
7590 cls 3:y=0:key$="":bg=0:No=0
7600 play ""
7610 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
7620 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
7630 print chr$(13) + chr$(13)
7640 locate 0,4:color rgb(255,255,255)
7650 'print "Ok"
7660 '
7670 print "番号を選んでください" + chr$(13)
7680 print " :1.男女2人の相性(未実装)" + chr$(13)
7690 print " :2.ビジネスの相性(未実装)" + chr$(13)
7700 print " :3.トップ画面に戻る" + chr$(13)
7710 sp_on 0,1:sp_on 1,0:sp_on 2,0
7720 color rgb(0,0,0)
7730 locate 1,15:print "1.男女2人の相性占いを選択"
7740 Kabara_Aishou_Top2:
7750 key$ = "":y = 0:bg = 0:
7760 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
7770 'ジョイパッド(右) ,十字キー (上下)
7780 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
7790 y = stick(1)
7800 key$ = inkey$
7810 bg = strig(1)
7820 pause 5
7830 wend
7840 'カーソル　下 or 十字キー　下
7850 if ((key$ = chr$(31)) or (y = 1)) then
7860 select case No
7870 '選択肢　1 - 2に変更
7880 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
7890 'ok
7900 case 0:
7910       No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
7920 '選択肢　2 - 3に変更
7930 case 1:
7940       No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
7950 'リリース時 case 2コメント解除
7960 case 2:
7970        No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
7980 case else:
7990          goto Kabara_Aishou_Top2:
8000 end select
8010 endif
8020 '十字キー　上　、カーソル　上
8030 if ((key$ = chr$(30)) or (y = -1)) then
8040 select case No
8050 case 0:
8060        No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
8070 case 1:
8080        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
8090 case 2:
8100        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビネスの相性を選択":goto Kabara_Aishou_Top2:
8110 case else:
8120           goto Kabara_Aishou_Top2:
8130 end select
8140 endif
8150 '十字キー　上下:選択
8160 'ジョイパッド 右:決定
8170 if ((bg=2) or (key$=chr$(13))) then
8180 select case No
8190 case 0:
8200        ui_msg "未実装だよー,終了するよ":cls 3:cls 4::color rgb(255,255,255):end
8210 case 1:
8220        ui_msg "未実装だよー 終了するよ":color rgb(255,255,255):cls 3:cls 4:end
8230 case 2:
8240        sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
8250 end select
8260 endif
8270 '1.数秘術　トップ画面
8280 '
8290 'Data_eraseを一番最後に持ってくる
8300 Data_erase:
8310 erase buf_name1$
8320 erase buf_name2$
8330 erase buffer
8340 erase buf_chart$
8350 return
