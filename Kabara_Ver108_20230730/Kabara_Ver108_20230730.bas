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
270 Version$ = "Ver:1.0.8_20230730"
280 'Gazo file Folder
290 Gazo$ = "./data/Picture/"
300 'Voice files 2023
310 Voice$ = "./data/Voice/Voice/"
320 'BirtheyeChart Data:20230626
330 Birth_eye_chart$ = "./data/chart_data/"
340 'Data File
350 Data$ = "./data/data/"
360 '変数定義 パート
370 b=0:c=0
380 dim buf_name1$(10),buf_name2$(10)
390 dim buffer(9),buf_chart$(26,2)
400 'ビジネスの相性　データー
410 dim Buffer_Business_Aisyou$(12,12)
420 'buffer_name$(3):Name Data x 2 & 上司の名前 (文字データー)
430 dim buffer_name$(3)
440 '1-1.上司の誕生日(数値データー)
450 dim buf_Jyoushi_Born_Day(3)
460 '1-2.上司の数秘ナンバー(数値データー)
470 buf_Jyoushi_Kabara_Num = 0
480 '2-1.部下の誕生日(数値データー)
490 dim buf_Buka_Born_Day(3)
500 '2-2.部下の数秘ナンバー(数秘データー)
510 buf_Buka_Kabara_Num = 0
520 '部下の数秘ナンバー
530 'File 読み込み
540 '1.ビジネスの相性占い
550 open Data$ + "Kabara_Business_Aisyou.csv" for input as #1
560 for i=0 to 11
570 for j=0 to 11
580 input #1,a$
590 Buffer_Business_Aisyou$(i,j) = a$
600 next j
610 next i
620 close #1
630 '2.Birth Eye chart$
640 open Birth_eye_chart$ + "Birtheyechart.dat" for input as #1
650 for j=0 to 25
660 for i=0 to 1
670 input #1,a$
680 buf_chart$(j,i) = a$
690 next i
700 next j
710 close #1
720 'File 読み込み　ここまで
730 'Main画面
740 screen 1,1,1,1
750 Main_Screen:
760 cls 3:
770 No=0
780 gload Gazo$ + "Selection.png",1,5,200
790 gload Gazo$ + "Selection.png",1,5,300
800 gload Gazo$ + "Selection.png",1,5,400
810 gload Gazo$ + "Selection.png",1,5,500
820 gload Gazo$ + "TopScreen_20230310.png",0,0,0
830 gload Gazo$ + "downscreen.png",0,0,800
840 sp_def 0,(5,300),32,32
850 sp_def 1,(5,400),32,32
860 sp_def 2,(5,500),32,32
870 sp_def 3,(5,600),32,32
880 'Sprite OFF
890 sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0
900 sp_put 0,(5,300),0,0
910 sp_put 1,(5,400),1,0
920 sp_put 2,(5,500),2,0
930 sp_put 3,(5,600),3,0
940 Main_Top:
950 'Main Message 2023.06.07
960 '再生を止める
970 play ""
980 init "kb:4"
990 'font 32:
1000 font 48
1010 print chr$(13) + chr$(13) + chr$(13)
1020 color rgb(217,255,212)
1030 print "番号を選んでください" + chr$(13)
1040 '0
1050 print " :1.数秘術占い" + chr$(13)
1060 '1
1070 print " :2.設 定" + chr$(13)
1080 '2
1090 print " :3.ヘルプ" + chr$(13)
1100 '3
1110 print " :4.(プログラムを)終了する" + chr$(13)
1120 COLOR rgb(0,0,0):No=0
1130 locate 1,15
1140 print "                                       "
1150 locate 1,15:print "1.数秘術占いを選択"
1160 play Voice$ + "Voice_Main_Message_20230607.mp3"
1170 Main_Screen_Select:
1180 y = 0:key$ = "":bg = 0:bg2=0
1190 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (key$ <> chr$(30)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
1200 y = stick(1)
1210 '"May (2023)"
1220 key$ = inkey$
1230 bg = strig(1)
1240 bg2 = strig(0)
1250 pause 2
1260 wend
1270 '1.
1280 'ジョイパッドのソース ソート　ここから
1290 'カーソル　下 or 十字キー下
1300 if ((y = 1) or (key$ = chr$(31))) then
1310 select case No
1320 case 0:
1330 '1
1340 No = 1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1350 case 1:
1360 '2
1370 No = 2:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1380 case 2:
1390 '3
1400 No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1410 case 3:
1420 '0
1430 No=0:sp_on 0,1:sp_on 3,0:sp_on 1,0:sp_on 2,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                ":locate 1,15:print "1.数秘術占いを選択":goto Main_Screen_Select:
1440 end select
1450 endif
1460 '2.
1470 'カーソル　上　or 十字キー  上
1480 if ((y = -1) or (key$ = chr$(30))) then
1490 select case No
1500 case 0:
1510 '3
1520 No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print "4.(プログラムを)終了するを選択":goto Main_Screen_Select:
1530 case 1:
1540 '0
1550 No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                                          ":locate 1,15:print  "1.数秘術占いを選択":goto Main_Screen_Select:
1560 case 2:
1570 '1
1580 No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                                                                ":locate 1,15:print "2.設 定を選択":goto Main_Screen_Select:
1590 case 3:
1600 '2
1610 No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_on 3,0:sp_put 2,(5,500),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.ヘルプを選択":goto Main_Screen_Select:
1620 end select
1630 endif
1640 'ジョイパッド　ソース 部分　ここまで
1650 'ジョイパッド右　　or Enter key 決定
1660 if ((bg = 2) OR (key$ = chr$(13))) then
1670 select case No
1680 case 0:
1690 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Kabara_TopScreen: 'Kabara_First_Top:
1700 case 1:
1710 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Setting:
1720 case 2:
1730 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Help:
1740 case 3:
1750 play "":pause 200
1760 play Voice$ + "Voice_Finish_Program_20230607.mp3":ui_msg "プログラムを終了します":Gosub Data_erase:pause 200:color rgb(255,255,255):cls 3:cls 4:No=0:end
1770 end select
1780 endif
1790 if (bg2 = 2) then
1800 play "":pause 200
1810 play Voice$ + "Voice_Main_Message_20230607.mp3"
1820 goto Main_Screen_Select:
1830 endif
1840 'Version
1850 Version:
1860 cls 3:PLAY ""
1870 gload Gazo$  + "VersionScreen_20230601.png",0,0,0
1880 gload Gazo$ + "downscreen.png",0,0,800
1890 init"kb:4":font 32
1900 'talk"バージョン情報です"
1910 'Message :Version
1920 play Voice$ +  "Voice_Version_Message_20230607.mp3"
1930 locate 0,5
1940 color rgb(0,0,0)
1950 print "・Title:数秘術占い";chr$(13)
1960 print "・" + Version$ + chr$(13)
1970 print "・Author:licksjp"+chr$(13)
1980 print "・E-mail:licksjp@gmail.com" + chr$(13)
1990 locate 0,18
2000 print "(C)licksjp All rights " + chr$(13)
2010 locate 13,19
2020 print "reserved since 2009"+chr$(13)
2030 locate 0,23
2040 color rgb(255,255,255)
2050 print "ジョイパッドの右を押してください"
2060 Versionn_Selection:
2070 bg = 0:key$ = "":bg2=0
2080 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2 <> 2))
2090 bg = strig(1)
2100 key$ = inkey$
2110 bg2 = strig(0)
2120 pause 2
2130 wend
2140 if ((bg = 2) or (key$ = chr$(13))) then
2150 pause 200:cls 4:goto Main_Screen:
2160 endif
2170 if (bg2=2) then
2180 play "":pause 200
2190 play Voice$ + "Voice_Version_Message_20230607.mp3"
2200 goto Versionn_Selection:
2210 endif
2220 '1.数秘ナンバーを求める
2230 '誕生日入力(生れた年代)
2240 Input_Seireki:
2250 CLS 3:play ""
2260 gload Gazo$ + "Input_BornYear_20230601.png",0,0,0
2270 init"kb:2"
2280 '音声ファイル再生 2023.06.07
2290 play Voice$ + "Voice_Input_Born_Year_20230607.mp3"
2300 font 48
2310 locate 0,2
2320 '文字色：黒　 color rgb(0,0,0)
2330 color rgb(0,0,0)
2340 Input"生れた年代(4桁,〜2025年):",year
2350 if year > 2025 then goto Input_Seireki:
2360 if year = 123 then cls 3:cls 4:goto Main_Screen:
2370 '"4桁目"
2380 bufyear4 = fix(year / 1000)
2390 '"3桁目"
2400 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
2410 '"2桁目"
2420 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
2430 '"1桁目"
2440 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
2450 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
2460 '生れた月を入力
2470 Input_Born_Month:
2480 cls 3:font 48:play ""
2490 '生まれた月入力
2500 gload Gazo$ + "Input_BornMonth_20230601.png",0,0,0
2510 init"kb:2"
2520 'talk "生まれた月を入れてください"
2530 'ボイス再生 2023.06.07
2540 play Voice$ + "Voice_Input_Born_Month_20230607.mp3"
2550 'color rgb(255,255,255):print "生れた月を入れてください(前の画面に戻る :0)";chr$(13)
2560 locate 0,2
2570 '文字色：黒 color rgb(0,0,0)
2580 color rgb(0,0,0,)
2590 Input"生れた月:",month
2600 if month=0 then goto Input_Seireki:
2610 if (month > 12) then ui_msg "入力が範囲外です、入れ直してください。":goto Input_Born_Month:
2620 '生れた日を入力
2630 Input_Born_Day:
2640 '生まれた日入力
2650 cls 3:gload Gazo$ + "Input_Bornday_20230601.png",0,0,0:play ""
2660 init"kb:2":font 48
2670 play Voice$ + "Voice_Input_Born_Day_20230607.mp3"
2680 locate 0,2
2690 color rgb(0,0,0)
2700 Input"生れた日:",day
2710 if day=0 then goto Input_Born_Month:
2720 if (day > 31) then ui_msg"入力値が範囲外です、入れ直してください。":goto Input_Born_Day:
2730 suhiNo = bufyear + month + day
2740 if (suhiNo < 100) then
2750 suhiNo1 = fix(suhiNo / 10)
2760 suhiNo2 = suhiNo - (suhiNo1 * 10)
2770 endif
2780 recomp:
2790 bufsuhiNo = suhiNo1 + suhiNo2
2800 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
2810 cls 3:
2820 gload Gazo$ + "ResultScreen_20230601.png",0,0,0
2830 gload Gazo$ + "downscreen.png",0,0,800
2840 init "kb:4"
2850 '
2860 Kabara_Result_Screen:
2870 play ""
2880 select case (bufsuhiNo)
2890 case 1:
2900       play Voice$ + "Result_Kabara_1_20230607.mp3"
2910 case 2:
2920       play Voice$ + "Result_Kabara_2_20230607.mp3"
2930 case 3:
2940       play Voice$ + "Result_Kabara_3_20230607.mp3"
2950 case 4:
2960       play Voice$ + "Result_Kabara_4_20230607.mp3"
2970 case 5:
2980       play Voice$ + "Result_Kabara_5_20230607.mp3"
2990 case 6:
3000       play Voice$ + "Result_Kabara_6_20230607.mp3"
3010 case 7:
3020       play Voice$ + "Result_Kabara_7_20230607.mp3"
3030 case 8:
3040       play Voice$ + "Result_Kabara_8_20230607.mp3"
3050 case 9:
3060       play Voice$ + "Result_Kabara_9_20230607.mp3"
3070 case 11:
3080       play Voice$ + "Result_Kabara_11_20230607.mp3"
3090 case 22:
3100       play Voice$ + "Result_Kabara_22_20230607.mp3"
3110 case 33:
3120       play Voice$ + "Result_Kabara_33_20230607.mp3"
3130 end select
3140 font 48
3150 key$ = "":bg = 0:
3160 'COLOR rgb(255,255,255)
3170 'print "●診断結果"+chr$(13)
3180 locate 0,2
3190 color rgb(0,0,0):print "誕生日：";year;"年";month;"月";day;"日";chr$(13)
3200 color rgb(0,0,0):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
3210 locate 1,15:
3220 color rgb(255,255,255)
3230 print "ジョイパッドの右:トップメニュー" + chr$(13)
3240 while ((key$ <> chr$(13)) and (bg <> 2))
3250 key$ = inkey$
3260 bg = strig(1)
3270 pause 2
3280 wend
3290 'Enter or JoyPad right
3300 if ((key$ = chr$(13)) or (bg = 2)) then
3310 sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:cls 3:goto Main_Screen:
3320 endif
3330 else
3340 suhiNo1 = fix(bufsuhiNo / 10)
3350 suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
3360 bufsuhiNo = suhiNo1 + suhiNo2
3370 goto recomp:
3380 endif
3390 'print chr$(13)
3400 'color rgb(255,0,0)
3410 'print"トップ:エンターキー,S or s:保存"+chr$(13)
3420 'key$ = input$(1)
3430 'if key$ = chr$(13) then goto Main_Screen:
3440 '"Menu2 占いのルール"
3450 Suhi_Rule:
3460 '数秘術占いルールの表示
3470 cls 3:play "":init"kb:4"
3480 gload Gazo$ + "KabaraRuleScreen_20230601.png",0,0,0
3490 gload Gazo$ + "downscreen.png",0,0,800
3500 'cls 3:
3510 'line (0,0) - (1500,60),rgb(0,0,255),bf
3520 'line (0,60) - (1500,60*9),rgb(127,255,212),bf
3530 'line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
3540 'COLOR rgb(255,255,255):print "Menu2 数秘術のルール";chr$(13)
3550 locate 0,2:Font 48
3560 print chr$(13) + chr$(13)
3570 color rgb(0,0,0)
3580 print "誕生日を単数変換します";chr$(13)
3590 print "数字の範囲:1〜９,11,22,33";chr$(13)
3600 print "例:1973年11月22日の場合";chr$(13)
3610 print "1+9+7+3+11+22=53 ";chr$(13)
3620 print "→ 5 + 3 = 8" + chr$(13)
3630 print "故に8が数秘ナンバーになります";chr$(13)
3640 locate 0,15
3650 color rgb(255,255,255)
3660 print "ジョイパッドの右を押してください"
3670 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3680 '"key$ = input$(1)"
3690 '"if key$ = chr$(13) then goto Main_Screen:"
3700 suhi_rule_selection:
3710 bg = 0:key$ = "":bg2=0
3720 while ((bg <> 2) and (key$ <> chr$(13)) and (bg2<>2))
3730 bg = strig(1)
3740 key$ = inkey$
3750 bg2=strig(0)
3760 pause 2
3770 wend
3780 if ((bg = 2) or (key$ = chr$(13))) then
3790 pause 200:cls 4:goto Main_Screen:
3800 endif
3810 if (bg2=2) then
3820 play "":pause 200
3830 play Voice$ + "Voice_Kabara_Rule_Message_20230607.mp3"
3840 goto suhi_rule_selection:
3850 endif
3860 '2.設定
3870 '2-1.トップ画面に戻る
3880 Setting:
3890 cls 3:init"kb:4":font 48:No=0
3900 play ""
3910 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
3920 gload Gazo$ + "Screen1_Setting_Top.png",0,0,0
3930 gload Gazo$ + "downscreen.png",0,0,800
3940 print chr$(13) + chr$(13) + chr$(13)
3950 color rgb(255,255,255):sp_on 0,1:
3960 print "番号を選んでください" + chr$(13)
3970 print " :1.トップ画面に戻る"+ chr$(13)
3980 print " :2.未実装" + chr$(13)
3990 print " :3.未実装" + chr$(13)
4000 print " :4.未実装" + chr$(13)
4010 color rgb(0,0,0)
4020 locate 1,15:print "1.トップ画面に戻るを選択"
4030 Setting_Selection:
4040 y=0:key$="":bg=0:bg2=0
4050 while ((key$ <> chr$(13)) and (bg <> 2) and (bg2<>2))
4060 'y=stick(1)
4070 key$ = inkey$
4080 bg=strig(1)
4090 bg2 = strig(0)
4100 pause 2
4110 wend
4120 if ((bg = 2) or (key$ = chr$(13))) then
4130 select case No
4140 case 0:
4150       sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:cls 4:goto Main_Screen:
4160 end select
4170 endif
4180 if (bg2 = 2) then
4190 play "":pause 200
4200 play Voice$ + "Voice_Kabara_Setting_20230614.mp3"
4210 goto Setting_Selection:
4220 endif
4230 '3.Help
4240 '3-1.ルールの表示
4250 '3-2.バージョン
4260 '3-3.トップに戻る
4270 Help:
4280 cls 3:Font 48:No=0
4290 play ""
4300 gload Gazo$ + "TopScreen_Help20230612.png",0,0,0
4310 gload Gazo$ + "downscreen.png",0,0,800
4320 color rgb(255,255,255)
4330 print chr$(13)+chr$(13)+chr$(13)
4340 print "番号を選んでください"+chr$(13)
4350 print " :1.ルールの表示" + chr$(13)
4360 print " :2.バージョンの表示" + chr$(13)
4370 print " :3.参考文献" + chr$(13)
4380 print " :4.トップ画面に戻る" + chr$(13)
4390 color rgb(0,0,0)
4400 sp_on 0,1:sp_on 1,0:sp_on 2,0,sp_on 3,0
4410 locate 1,15
4420 print "                                      "
4430 locate 1,15
4440 print "1.ルールの表示を選択"
4450 init"kb:4"
4460 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4470 Help_Select:
4480 bg=0:key$="":y=0:bg2=0
4490 while ((key$ <> chr$(31)) and (key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (bg2 <> 2))
4500 y = stick(1)
4510 key$ = inkey$
4520 bg = strig(1)
4530 bg2 = strig(0)
4540 pause 2
4550 wend
4560 'ジョイパッド：下 (y=1)、カーソル：下 (key$=chr$(31))
4570 if ((y = 1) or (key$ = chr$(31))) then
4580 select case No
4590 case 0:
4600       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print"2.バージョンの表示を選択":goto Help_Select:
4610 case 1:
4620       No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "3.参考文献(未実装）":goto Help_Select:
4630 case 2:
4640       No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻る":goto Help_Select:
4650 case 3:
4660       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4670 end select
4680 endif
4690 'ジョイパッド：上  (y=-1) 、カーソル上 (key$=chr$(30))
4700 if ((y = -1) or (key$ = chr$(30))) then
4710 select case No
4720 case 0:
4730        No=3:sp_on 3,1:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Help_Select:
4740 case 1:
4750        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.ルールの表示を選択":goto Help_Select:
4760 case 2:
4770        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),1,0:pause 200:locate 1,15:print "                                        ":locate 1,15:print "2.バージョンの表示を選択":goto Help_Select:
4780 case 3:
4790        No=2:sp_on 2,1:sp_on 1,0:sp_on 0,0:sp_on 3,0:sp_put 2,(5,500),2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "3.参考文献を表示を選択":goto Help_Select:
4800 end select
4810 endif
4820 'ジョイパッド　右(bg=2) or Enter key (key$=chr$(13))
4830 if ((bg = 2) or (key$ = chr$(13))) then
4840 select case No
4850 case 0:
4860       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Suhi_Rule:
4870 case 1:
4880       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Version:
4890 case 2:
4900       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto References1:
4910 '3:Top画面に行く
4920 case 3:
4930       sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:Pause 200:cls 4:goto Main_Screen:
4940 end select
4950 endif
4960 if (bg2 = 2) then
4970 play "":pause 200
4980 play Voice$ + "Voice_Kabara_Help_Top_20230614.mp3"
4990 goto Help_Select:
5000 endif
5010 '数秘術占い　トップ画面
5020 Kabara_TopScreen:
5030 cls 3:play ""
5040 gload Gazo$ + "Kabara_TopScreen20230618.png",0,0,0
5050 gload Gazo$ + "downscreen.png",0,0,800
5060 play Voice$ + "KabaraTop_Selection_20230721.mp3"
5070 sp_on 0,1:sp_on  1,0:sp_on 2,0:sp_on 3,0
5080 init"kb:4":No=0
5090 color rgb(255,255,255)
5100 print chr$(13)+chr$(13)+chr$(13)
5110 print "番号を選んでください" + chr$(13)
5120 print " :1.数秘術占い" + chr$(13)
5130 print " :2.バーズアイグリット" + chr$(13)
5140 print " :3.相性占い" + chr$(13)
5150 print " :4.トップ画面に戻る" + chr$(13)
5160 color rgb(0,0,0)
5170 locate 1,15:print "1.数秘番号を求めるを選択"
5180 Kabara_TopScreen2:
5190 y = 0:bg = 0:key$ = "":bg2 = 0
5200 while ((y <> 1) and (y <> -1) and (key$ <> chr$(31)) and (key$ <> chr$(30)) and (key$ <> chr$(13)) and (bg <> 2) and (bg2 <> 2))
5210 key$ = inkey$
5220 bg = strig(1)
5230 y = stick(1)
5240 bg2 = strig(0)
5250 pause 2
5260 wend
5270 '選択ボタン
5280 'カーソル　と　ジョイパッド　の下
5290 if ((y = 1) or (key$ = chr$(31))) then
5300 select case No
5310 case 1:
5320       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                    ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5330 case 3:
5340 No=0:sp_on 0,1:sp_on 2,0:sp_on 1,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200: locate 1,15:print"                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5350 case 0:
5360       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5370 end select
5380 endif
5390 'カーソル　上
5400 if ((y=-1) or (key$=chr$(30))) then
5410 select case No
5420 case 0:
5430       No=3:sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,1:sp_put 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5440 case 1:
5450       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_put 0,(5,300),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.数秘番号を求めるを選択":goto Kabara_TopScreen2:
5460 case 3:
5470       No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:sp_on 3,0:sp_put 1,(5,400),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.バーズアイグリッドを選択":goto Kabara_TopScreen2:
5480 case 0:
5490       No=3:sp_on 3,1:sp_on 1,0:sp_on 2,0:sp_on 0,0:sp_on 3,(5,600),0,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "4.トップ画面に戻るを選択":goto Kabara_TopScreen2:
5500 end select
5510 endif
5520 '決定ボタン
5530 'ジョイパッドの右　or  Enter key
5540 if ((bg = 2) or (key$ = chr$(13))) then
5550 select case No
5560 case 0:
5570        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Input_Seireki:
5580 case 3:
5590        sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:goto Main_Screen:
5600 case else:
5610          play"":sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:pause 200:goto Inputname1:
5620 end select
5630 endif
5640 if ((bg2 = 2)) then
5650 play "":pause 200
5660 play Voice$ + "Voice_Kabara_Top_20230621.mp3"
5670 goto Kabara_TopScreen2:
5680 endif
5690 '1.バースアイグリット　名入力
5700 Inputname1:
5710 cls 3:init"kb:2":font 48
5720 gload Gazo$ + "Input_Birtheye2.png",0,0,0
5730 color rgb(255,255,255)
5740 locate 1,2:print "名前をアルファベットで入れてください"
5750 color rgb(0,0,0)
5760 locate 1,5:Input "名前（姓の部分）:",name1$
5770 'locate 1,5:print "Hit any key"
5780 n1 = len(name1$)
5790 if (n1 < 11) then
5800 for i=1 to n1
5810 buf_name1$(i-1) = Mid$(ucase$(name1$),i,1)
5820 next i
5830 endif
5840 'if b$=chr$(13) then goto Inputname2:
5850 '2.グリッドアイ　姓の入力
5860 Inputname2:
5870 cls 3:init"kb:2":font 48
5880 gload Gazo$ + "Input_Birtheye1.png",0,0,0
5890 color rgb(255,255,255)
5900 locate 1,2:print "名前をアルファベットで入れてください"
5910 color rgb(0,0,0)
5920 locate 1,5:Input "名前(名の部分):",name2$
5930 n2=len(name2$)
5940 for i=1 to n2
5950 buf_name2$(i-1) = Mid$(ucase$(name2$),i,1)
5960 next i
5970 '計算領域
5980 Complate:
5990 'name1
6000 for i=0 to 25
6010 for n=1 to len(name1$)
6020 if (buf_chart$(i,0) = buf_name1$(n-1)) then
6030 b = val(buf_chart$(i,1))
6040 buffer(b-1) = buffer(b-1) + 1
6050 endif
6060 next n
6070 next i
6080 'name2
6090 for i=0 to 25
6100 for n=1 to len(name2$)
6110 if (buf_chart$(i,0) = buf_name2$(n-1)) then
6120 c = val(buf_chart$(i,1))
6130 buffer(c - 1) = buffer(c - 1) + 1
6140 endif
6150 next n
6160 next i
6170 '結果表示領域
6180 Result_Birtheye1:
6190 cls 3:init"kb:4":No=0
6200 gload Gazo$ + "Result_Birtheye1_20230630.png",0,0,0
6210 gload Gazo$ + "downscreen.png",0,0,800
6220 color rgb(255,255,255)
6230 '1の表示
6240 locate 3,14:print buffer(0);
6250 '2の表示
6260 locate 3,9:print buffer(1);
6270 '3の表示
6280 locate 3,5:print buffer(2);
6290 '4の表示
6300 locate 10,14:print buffer(3);
6310 '5の表示
6320 locate 10,9:print buffer(4);
6330 '6の表示
6340 locate 10,5:print buffer(5);
6350 '7の表示
6360 locate 15,14:print buffer(6);
6370 '8の表示
6380 locate 15,9:print buffer(7);
6390 '9の表示
6400 locate 15,5:print buffer(8);
6410 'name を大文字に変換
6420 locate 5,3:print ucase$(name1$ + name2$)
6430 color rgb(0,0,0)
6440 locate 2,15:print "右の丸ボタン:トップ画面"
6450 bg=0:key$="":
6460 while ((bg <> 2) and (key$ <> chr$(13)))
6470 'Enterと決定ボタン
6480 key$ = inkey$
6490 bg = strig(1)
6500 pause 200
6510 wend
6520 if ((bg=2) or (key$=chr$(13))) then
6530 'データーをクリアしてトップ画面に行く
6540 for i=0 to 8
6550 buffer(i)=0
6560 next i
6570 for n=0 to 9
6580 buf_name1$(n) = ""
6590 buf_name2$(n) = ""
6600 next n
6610 'Topに行く
6620 goto Main_Screen:
6630 endif
6640 'goto Result_Birtheye1:
6650 'Result_Birtheye2:
6660 'cls 3:color rgb(255,255,255)
6670 'end
6680 'Memory 消去
6690 '
6700 References1:
6710 cls 3:key$="":bg=0:play "":font 48-16
6720 gload Gazo$ + "Reference1_20230703.png",0,0,0
6730 print chr$(13)+chr$(13)+chr$(13)
6740 color rgb(0,0,0)
6750 print "Title:名前で運命のすべてがわかる　数秘術" + chr$(13)
6760 print "Author:carol Adrinne,PhD"+chr$(13)
6770 print "出版社:幻冬舎" + chr$(13)
6780 print "HP:www.carolAdrienne.jp/"+chr$(13)
6790 print "ISBN:978-4-344-01394-0"+chr$(13)
6800 print "定価:1500円 + 税"+chr$(13)
6810 color rgb(255,255,255)
6820 locate 1,23
6830 print "ジョイパッド右：次へ"
6840 while (key$ <> chr$(13) and bg <> 2)
6850 bg = strig(1)
6860 key$ = inkey$
6870 wend
6880 '
6890 if ((bg = 2) or (key$ = chr$(13))) then
6900 pause 200:goto References2:
6910 endif
6920 'ユダヤの秘儀 カバラ大占術
6930 References2:
6940 cls 3:play "":bg = 0:key$ = ""
6950 gload Gazo$ + "Reference2_20230703.png",0,0,0
6960 '参考文献２
6970 'カバラ大占術
6980 print chr$(13) + chr$(13) + chr$(13)
6990 color  rgb(0,0,0):font 48-16
7000 locate 1,3
7010 print "Title:ユダヤの秘儀 大占術占術" + chr$(13)
7020 print "著者：浅野　八郎" + chr$(13)
7030 print "出版社:NON BOOK" + chr$(13)
7040 print "ISBN:4-396-10364-6" + chr$(13)
7050 print "定価:829円 + 税"
7060 color rgb(255,255,255)
7070 locate 1,23
7080 print "ジョイパッド右：トップへ行く"
7090 while ((key$ <> chr$(13)) and (bg <> 2))
7100 bg = strig(1)
7110 key$ = inkey$
7120 wend
7130 if ((bg = 2) or (key$ = chr$(13))) then
7140 pause 200:goto Main_Screen:
7150 endif
7160 end
7170 '1.数秘術　トップ画面
7180 Kabara_First_Top:
7190 cls 3:color rgb(255,255,255):play ""
7200 gload Gazo$ + "Kabara_First_Top_20230710.png",0,0,0
7210 gload Gazo$ + "downscreen.png",0,0,800
7220 No=0:init"kb:4"
7230 Play Voice$ + "KabaraTop_Selection_20230721.mp3"
7240 print chr$(13);chr$(13)
7250 color rgb(255,255,255)
7260 locate 3,4:No=0
7270 print "番号選んでください" + chr$(13)
7280 print " :1.数秘術占い" + chr$(13)
7290 print " :2.トップ画面に戻る" + chr$(13)
7300 color rgb(0,0,0)
7310 sp_on 0,1
7320 locate 1,15:print "1.数秘術番号を求めるを選択"
7330 'KeyBord:true
7340 'Joy Pad:true
7350 '上、下:true
7360 '
7370 'ｂｇ：決定ボタン
7380 'カーソル　上
7390 'カーソル　下
7400 Kabara_First_Top2:
7410 key$ = "":bg = 0:y = 0:
7420 while (((key$ <> chr$(13)) and (key$ <> chr$(30)) and (key$ <> chr$(31)) and (bg <> 2) and (y <> 1) and (y <> -1)))
7430 key$ = inkey$
7440 bg = strig(1)
7450 y = stick(1)
7460 'PauseでCPUを休める
7470 pause 5
7480 wend
7490 '1.カーソル　下 処理 chr$(31)
7500 'カーソル　下
7510 if ((key$ = chr$(31)) or (y = 1)) then
7520 select case No
7530 '
7540 case 1:
7550        No = 0:sp_on 0,1:sp_on 2,0:sp_on 3,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "1.数秘術占いを選択":goto Kabara_First_Top2:
7560 case 0:
7570        No=1:sp_on 1,1:sp_on 0,0:sp_on 3,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
7580 'case 2:
7590 '       No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                              ":locate 1,15:print "1.数秘術番号を求めるを選択":goto Kabara_First_Top2:
7600 end select
7610 endif
7620 '2.カーソル　上 処理 chr$(30)
7630 if ((key$ = chr$(30)) or (y = -1)) then
7640 select case No
7650 case 0:
7660        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:Print "                                       ":locate 1,15:print "2.トップ画面に戻るを選択":goto Kabara_First_Top2:
7670 case 1:
7680     No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:PRINT"                                       ":locate 1,15:print "1.数秘術占いを求める":goto Kabara_First_Top2:
7690 'case 2:
7700 '      No=1:sp_on 0,0:sp_on 2,0:sp_on 1,1:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.数秘術の相性占いを選択":goto Kabara_First_Top2:
7710 end select
7720 endif
7730 '3.決定 処理  bg:2 or Enter key:chr$(13)
7740 if ((bg = 2) or (key$ = chr$(13))) then
7750 select case No
7760 case 0:
7770       sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0: 'goto Input_Seireki:
7780 goto Kabara_TopScreen:
7790 'case 1:
7800   '    sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Kabara_Aishou_Top:
7810 case 1:
7820       sp_on 0,0:sp_on 1,0:sp_on 2,0:No=0:goto Main_Screen:
7830 end select
7840 endif
7850 '
7860 'Kabara 相性占い トップ画面
7870 Kabara_Aishou_Top:
7880 cls 3:y=0:key$="":bg=0:No=0
7890 play ""
7900 gload Gazo$ + "Kabara_Aishou_Top_20230717.png",0,0,0
7910 play Voice$ + "Kabara_Aishou_TopScreen_20230721.mp3"
7920 print chr$(13) + chr$(13)
7930 locate 0,4:color rgb(255,255,255)
7940 'print "Ok"
7950 '
7960 print "番号を選んでください" + chr$(13)
7970 print " :1.男女2人の相性(未実装)" + chr$(13)
7980 print " :2.ビジネスの相性(未実装)" + chr$(13)
7990 print " :3.トップ画面に戻る" + chr$(13)
8000 sp_on 0,1:sp_on 1,0:sp_on 2,0
8010 color rgb(0,0,0)
8020 locate 1,15:print "1.男女2人の相性占いを選択"
8030 Kabara_Aishou_Top2:
8040 key$ = "":y = 0:bg = 0:
8050 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2) and (key$ <> chr$(30)) and (key$ <> chr$(31)))
8060 'ジョイパッド(右) ,十字キー (上下)
8070 'ジョイパッドの右のボタン bg = 2(ジョイパッド右：決定　)、Enter(chr$(13):（決定）)
8080 y = stick(1)
8090 key$ = inkey$
8100 bg = strig(1)
8110 pause 5
8120 wend
8130 'カーソル　下 or 十字キー　下
8140 if ((key$ = chr$(31)) or (y = 1)) then
8150 select case No
8160 '選択肢　1 - 2に変更
8170 'case 0 1.男女の相性占い => 2.ビジネスの相性占い
8180 'ok
8190 case 0:
8200       No = 1:sp_on 1,1:sp_on 2,0:sp_on 0,0:pause 200:locate 1,15:print "                                                                               ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
8210 '選択肢　2 - 3に変更
8220 case 1:
8230       No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":locate 1,16:goto Kabara_Aishou_Top2:
8240 'リリース時 case 2コメント解除
8250 case 2:
8260        No = 0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "1.男女の相性占いを選択":goto Kabara_Aishou_Top2:
8270 case else:
8280          goto Kabara_Aishou_Top2:
8290 end select
8300 endif
8310 '十字キー　上　、カーソル　上
8320 if ((key$ = chr$(30)) or (y = -1)) then
8330 select case No
8340 case 0:
8350        No=2:sp_on 2,1:sp_on 0,0:sp_on 1,0:pause 200:locate 1,15:print "                                       ":locate 1,15:print "3.トップ画面に戻るを選択":goto Kabara_Aishou_Top2:
8360 case 1:
8370        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:pause 200:locate 1,15:print"                                       ":locate 1,15:print "1.男女2人の相性を選択":goto Kabara_Aishou_Top2:
8380 case 2:
8390        No=1:sp_on 1,1:sp_on 0,0:sp_on 2,0:pause 200:locate 1,15:print "                                      ":locate 1,15:print "2.ビジネスの相性を選択":goto Kabara_Aishou_Top2:
8400 case else:
8410           goto Kabara_Aishou_Top2:
8420 end select
8430 endif
8440 '十字キー　上下:選択
8450 'ジョイパッド 右:決定
8460 if ((bg = 2) or (key$ = chr$(13))) then
8470 select case No
8480 '1.男女の相性
8490 case 0:
8500        ui_msg "未実装だよー,終了するよ":cls 3::color rgb(255,255,255):end
8510 '2ビジネスの相性
8520 case 1:
8530        :cls 3:sp_on 0,0:sp_on 1,0:sp_on 2,0:goto Business_Aishou_Input_1_parson:
8540 case 2:
8550        sp_on 0,0:sp_on 1,0:sp_on 2,0:pause 200:goto Main_Screen:
8560 end select
8570 endif
8580 'ビジネスの相性　
8590 '1.1人目のビジネスの相性　名前入力　1人目
8600 Business_Aishou_Input_1_parson:
8610 No=0:color RGB(255,255,255)
8620 cls 3:init "kb:2"
8630 gload Gazo$ + "Screen1.png",0,0,0
8640 play "":color rgb(255,0,0):name$ = ""
8650 print "ビジネスの相性 1人目" + chr$(13) + chr$(13)
8660 color rgb(255,255,255):
8670 locate 0,4
8680 print "ビジネスの相性を求めます。1人目の名前を" + chr$(13)
8690 print "入れてください" + chr$(13)
8700 Input "1人目の名前:",name$
8710 color rgb(0,0,0)
8720 locate 0,15:print "                                     "
8730 locate 0,15:print "1人目の名前を入力してエンターキー":cls 3
8740 'buffer_name$(0):1人目の名前
8750 buffer_name$(0) = name$:
8760 goto Business_Aishou_Input_2_Parson:
8770 '2.2人目のビジネスの相性 名前入力 2人目
8780 Business_Aishou_Input_2_Parson:
8790 cls 3:init "kb:2":name$ = "":No=0
8800 gload Gazo$ + "Screen1.png",0,0,0
8810 color rgb(255,0,0)
8820 'Title
8830 print "ビジネスの相性　2人目" + chr$(13) + chr$(13)
8840 locate 0,4
8850 color rgb(255,255,255)
8860 print "ビジネスの相性を求めます。2人目の相性を" + chr$(13)
8870 print "入れてください" + chr$(13)
8880 color rgb(255,255,255)
8890 Input "2人目の名前:",name$
8900 color rgb(0,0,0)
8910 locate 0,15:print "                                       "
8920 locate 0,15:print "2人目の名前を入力してエンター ":cls 3
8930 '2人目
8940 '2人目の名前を入れるに代入
8950 buffer_name$(1) = name$:
8960 goto Select_jyoushi:
8970 '3.上司の選択
8980 Select_jyoushi:
8990 cls 3:gload Gazo$ + "Screen1.png",0,0,0
9000 init "kb:4":No=0
9010 color rgb(255,255,255)
9020 locate 0,4:print "名前から上司の方を選んでください"
9030 locate 0,6
9040 print " :";buffer_name$(0);"が上 司";chr$(13)
9050 locate 0,8
9060 print " :";buffer_name$(1);"が上 司";chr$(13)
9070 locate 0,15:
9080 print "                                     "
9090 locate 0,15:color rgb(0,0,0)
9100 print "上司の方を選んで右の丸ボタン"
9110 sp_on 0,1:sp_on 1,0:sp_on 2,0
9120 Select_jyoushi2:
9130 'ここでNo=0をおいてはいけない
9140 y=0:key$="":bg=0:
9150 while ((key$ <> chr$(13)) and (y <> 1) and (y <> -1) and (bg <> 2))
9160 y = stick(1)
9170 key$ = inkey$
9180 bg = strig(1)
9190 pause 5
9200 wend
9210 '1.カーソル下の処理　or 十字キーの下処理
9220 if ((key$ = chr$(31)) or (y = 1)) then
9230 select case No
9240 case 0:
9250       No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:'上司の方を選択
9260 case 1:
9270       No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:'上司の方を選択
9280 end select
9290 endif
9300 '2.カーソル上処理　or 十字キーの上の処理
9310 if ((key$ = chr$(30)) or (y = -1)) then
9320 select case No
9330 case 0:
9340       No=1:sp_on 1,1:sp_on 0,0:pause 200:goto Select_jyoushi2:
9350 case 1:
9360       No=0:sp_on 0,1:sp_on 1,0:pause 200:goto Select_jyoushi2:
9370 end select
9380 endif
9390 if ((key$ = chr$(13)) or (bg = 2)) then
9400 select case No
9410 case 0:
9420       '上司(name1)を配列に代入
9430       buffer_name$(2) = buffer_name$(0):cls 3:color rgb(255,255,255):print buffer_name$(2);chr$(13):sp_on 0,0:sp_on 1,0:sp_on 2,0:sp_on 3,0:goto Jyoushi_born_year:
9440 case 1:
9450       '上司（name2)を配列に代入
9460       buffer_name$(2) = buffer_name$(1):print buffer_name$(2);chr$(13):goto Jyoushi_born_year:
9470 end select
9480 endif
9490 '3.決定ボタン　Enter or 右の丸ボタン
9500 '1.誕生日入力
9510 '1-1.生まれた年を入力
9520 Jyoushi_born_year:
9530 cls 3:gload Gazo$ + "Screen1.png",0,0,0
9540 init "kb:2"
9550 locate 2,1:color rgb(255,0,0)
9560 print "上司の生まれた年代を入力"
9570 color rgb(255,255,255)
9580 locate 2,4:print "生まれた年代を西暦4桁で入れてください"
9590 locate 2,5:Input "上司の生まれた年:",born_year
9600 '誕生日データーを配列に代入
9610 'buf_Jyoushi_Born_Year:上司の生まれた年代
9620 buf_Jyoushi_Born_Day(0) = born_year
9630 'born_year = 0
9640 goto Jyoushi_born_month:
9650 '1-2.生まれた月を入力
9660 Jyoushi_born_month:
9670 cls 3:gload Gazo$ + "Screen1.png",0,0,0
9680 init "kb:2"
9690 locate 2,1:
9700 color rgb(255,0,0)
9710 print "上司の生まれた月入力"
9720 color rgb(255,255,255)
9730 locate 2,4:print "生まれた月を入力してください"
9740 locate 2,5
9750 Input "上司の生まれ月:",born_month
9760 buf_Jyoushi_Born_Day(1) = born_month
9770 'born_month = 0
9780 goto Jyoushi_born_day:
9790 'buf_Jyoushi_Born_day
9800 '1-3.生まれた日を入力
9810 Jyoushi_born_day:
9820 cls 3:gload Gazo$ + "Screen1.png",0,0,0
9830 init "kb:2"
9840 locate 2,1:color rgb(255,0,0)
9850 print "上司の生まれた日　入力"
9860 locate 2,4:color rgb(255,255,255)
9870 print "生まれた日を入力してください"
9880 locate 2,5
9890 Input "上司の生まれた日:",born_day
9900 buf_Jyoushi_Born_Day(2) = born_day
9910 born_day = 0
9920 goto buka_born_year:
9930 '2.部下の誕生日入力
9940 '2-1.生まれた年を入力
9950 buka_born_year:
9960 cls 3:gload Gazo$+"Screen1.png",0,0,0
9970 init "kb:2"
9980 locate 1,1:color rgb(255,0,0)
9990 print "部下の生まれた年代入力"
10000 locate 0,4:color rgb(255,255,255)
10010 print "部下の生まれた年（西暦4桁）を入れてください"
10020 locate 0,5
10030 Input "部下の生まれた年(西暦4桁):",born_year
10040 buf_Buka_Born_Day(0) = born_year
10050 born_year = 0
10060 '2-2.生まれた月を入力
10070 buka_born_month:
10080 cls 3:gload Gazo$+"Screen1.png",0,0,0
10090 init "kb:2"
10100 locate 2,1:color rgb(255,0,0)
10110 print "部下の生まれた月 入力"
10120 locate 2,4:color rgb(255,255,255)
10130 print "部下の生まれた月を入力してください"
10140 locate 2,5:Input "部下の生まれた月:",born_month
10150 buf_Buka_Born_Day(1) = born_month
10160 '2-3.生まれた日を入力
10170 buka_born_day:
10180 cls 3:gload Gazo$ + "Screen1.png",0,0,0
10190 init "kb:2"
10200 locate 2,1:color rgb(255,0,0)
10210 print "生まれた日入力"
10220 color rgb(255,255,255)
10230 locate 2,4:print "生まれた日を入力してください"
10240 locate 2,5:Input "部下の生まれた日:",born_day
10250 buf_Buka_Born_Day(2) = born_day
10260 born_day=0
10270 cls 3:
10280 a = 1973
10290 Num = Kabara_Num(a)
10300 print "Num =";Num
10310 print "a=";a
10320 end
10330 '自作関数 ここから
10340 'カバラ数（数秘番号を求める）
10350 func Kabara_Num(buffer_Year)
10360 'if ((a > 1900) and (a < 3000)) then
10370 'a1:4桁のうちの1桁目を求める
10380 '例 a1:1234の4が1桁目
10390 'a2:4桁のうちの2桁目を求める
10400 '例:a2:1234の3が2桁目
10410 'a3:4桁のうちの3桁目を求める
10420 '例 a3:1234の2が3桁目
10430 'a4:4桁のうちの4桁目を求める
10440 '例 a4:1234の1が4桁目
10450 a1=0:a2=0:a3=0:a4=0:a_=0:buffer=0
10460 Year=buffer_Year
10470 a4 = fix(Year / 1000)
10480 a3 = fix(Year / 100) - a4 * 10
10490 a2 = fix(Year / 10) - a4 * 100 + a3 * 10
10500 a1 = Year - (Year - fix(Year - (a4 * 1000 + a3 * 100)))
10510 a_ = a1 + a2 + a3 + a4
10520 'a1=0:a2=0:a3=0:a4=0
10530 'if ((a_ = 11) or (a_ > 1 and a _< 9)) then
10540 'buffer = a_
10550 'else
10560 'if (a_ = 10) then
10570 '  buffer = 1
10580 'else
10590 '  if ((a_>11) and (a_<99)) then
10600 '     a1 = fix(a_ / 10)
10610 '     a2 = a_ - (a1 * 10)
10620 '     a_ = a1 + a2
10630 '     buffer = a_
10640 '  endif
10650 'else
10660 '    bffer = a_
10670 'endif
10680 'endif
10690 'else
10700 'talk "プログラムを終了します。"
10710 'end
10720 'endif
10730 kabara = 10
10740 kabara = buffer
10750 endfunc kabara
10760 func Kabara_Aisyou$(a,b)
10770 endfunc Aisyou$
10780 '自作関数 ここまで
10790 '1.数秘術　トップ画面
10800 '
10810 'Data_eraseを一番最後に持ってくる
10820 Data_erase:
10830 erase buf_name1$
10840 'メモリー削除
10850 erase buf_name2$
10860 erase buffer
10870 erase buf_chart$
10880 erase Buffer_Business_Aisyou$
10890 erase buffer_name$
10900 'erase buf_Jyoushi_Born_Year
10910 'erase buf_Jyoushi_Born_Month
10920 erase buf_Jyoushi_Born_Day
10930 'erase buf_Buka_Born_Year
10940 'erase buf_Buka_Born_Month
10950 erase buf_Buka_Born_Day
10960 return
