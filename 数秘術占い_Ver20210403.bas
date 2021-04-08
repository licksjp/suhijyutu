100 '数秘術占い 2019.08.16
110 '改変履歴
120 '2021.03.31 α版 画面背景アップデート
130 '2021.04.02 β版 更にアップデート音声追加
140 '2021.04.03 β2版 画面表示拡張
150 '変数定義 パート
160 'Main画面
170 Main_Screen:
180 cls 3
190 '描画領域 ここから
200 '1行
210 line (0,0) - (850,60),rgb(0,0,255),bf
220 line (0,0) - (850,63),rgb(0,255,0),b
230 '2行
240 line (0,60) - (850,70*8),rgb(127,255,212),bf
250 line (0,57) - (850,70*8-3),rgb(0,255,0),b
260 '3行
270 line (0,70*8) - (850,70+70*8),rgb(0,255,0),bf
280 line (0,70*8) - (850,70+70*8+3),rgb(0,0,255),b
290 '描画領域　ここまで
300 cls
310 talk "メイン画面です。番号を選んでエンターキーを押してください。"
320 font 48:color rgb(255,255,255):print"メイン画面" + chr$(13)
330 color rgb(255,0,255)
340 print"番号を選んでください";chr$(13)
350 print"1.数秘術占い";chr$(13)
360 print"2.数秘術占いのルール";chr$(13)
370 print"3.バージョン";chr$(13)
380 print"4.終了する";chr$(13)
390 COLOR rgb(0,0,0)
400 Input"番号:",selectNo
410 if (selectNo = 1) then goto Input_Seireki:
420 if (selectNo = 2) then goto Suhi_Rule:
430 if (selectNo = 3) then goto Version:
440 if (selectNo = 4) then talk"終了します":cls 3:ui_msg"終了します":color rgb(255,255,255):end
450 if (selectNo > 4 or selectNo = 0)  then goto Main_Screen:
460 'Version
470 Version:
480 cls 3
490 '描画領域　ここから
500 line(0,0)-(1100,60),rgb(0,0,255),bf
510 line(0,60)-(1100,180+200),rgb(127,255,212),bf
520 line(0,180+200)-(1100,180+200+60),rgb(0,255,0),bf
530 '描画領域　ここまで
540 cls
550 talk"バージョン情報です"
560 color rgb(255,255,255)
570 print"バージョン情報"+chr$(13)
580 color rgb(255,0,255)
590 print"Title:数秘術占い";chr$(13)
600 print"Ver:β2版.20210403"+chr$(13)
610 print"(C)Copy rights licksjp"+chr$(13)
620 color rgb(0,0,0)
630 print"エンターキーを押してください"
640 key$ = input$(1)
650 if key$ = chr$(13)  then goto Main_Screen:
660 'Menu1 Top Screen1
670 '誕生日入力(生れた年代)
680 Input_Seireki:
690 cls 3:
700 '描画領域　ここから
710 line (0,0)-(1100,60),rgb(0,0,255),bf
720 line (0,60)-(1100,160),rgb(0,255,0),bf
730 '描画領域　ここまで
740 cls
750 talk"生まれたねんだいを入れてください"
760 color rgb(255,255,255):print "生れた年（西暦4桁)を入れてください";chr$(13)
770 color rgb(0,0,0)
780 Input"生れた年代(4桁,〜2022年):",year
790 if year > 2022 then goto Input_Seireki:
800 '4桁目
810 bufyear4 = fix(year / 1000)
820 '3桁目
830 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
840 '2桁目
850 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
860 '1桁目
870 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
880 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
890 'cls:
900 'print "bufyer4=";bufyear4
910 'print "bufyear3=";bufyear3
920 'print "bufyear2=";bufyear2
930 'print "bufyear1=";bufyear1
940 'print "bufyear=";bufyear
950 '生れた月を入力
960 Input_Born_Month:
970 cls
980 talk"生まれた月を入れてください"
990 color rgb(255,255,255):print"生れた月を入れてください";chr$(13)
1000 color rgb(0,0,0)
1010 Input"生れた月:",month
1020 if (month > 12) then goto Input_Born_Month:
1030 '生れた日を入力
1040 Input_Born_Day:
1050 cls
1060 talk"生まれた日を入れてください"
1070 color rgb(255,255,255):print"生れた日を入れてください";chr$(13)
1080 color rgb(0,0,0)
1090 Input"生れた日:",day
1100 if (day > 31) then goto Input_Born_Day:
1110 suhiNo = bufyear + month + day
1120 if (suhiNo < 100) then
1130    suhiNo1 = fix(suhiNo / 10)
1140    suhiNo2 = suhiNo - (suhiNo1 * 10)
1150 endif
1160 recomp:
1170 bufsuhiNo = suhiNo1 + suhiNo2
1180 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
1190 cls
1200 talk "あなたの数秘ナンバーは," + str$(bufsuhiNo) + "です。"
1210 color rgb(255,255,255):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
1220 else
1230  suhiNo1 = fix(bufsuhiNo / 10)
1240  suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
1250  bufsuhiNo = suhiNo1 + suhiNo2
1260  goto recomp:
1270 endif
1280 color rgb(0,0,0)
1290 print"エンターキーを押してください"
1300 key$ = input$(1)
1310 if key$ = chr$(13) then goto Main_Screen:
1320 'Menu2 占いのルール
1330 Suhi_Rule:
1340 cls 3
1350 line (0,0) - (1500,60),rgb(0,0,255),bf
1360 line (0,60) - (1500,60*9),rgb(127,255,212),bf
1370 line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
1380 cls
1390 talk "数秘術の計算ルールです"
1400 COLOR rgb(255,255,255):print"Menu2 数秘術のルール";chr$(13)
1410 color rgb(255,0,255)
1420 print"誕生日を単数変換します";chr$(13)
1430 print"出てくる数字の範囲は1〜９,11,22,33になります";chr$(13)
1440 print"例:1973年11月22日の場合";chr$(13)
1450 print"1+9+7+3+11+22=53==>5+3=8となります";chr$(13)
1460 print"故に8が数秘ナンバーになります";chr$(13)
1470 color rgb(0,0,0)
1480 print "エンターキーを押してください"
1490 key$ = input$(1)
1500 if key$ = chr$(13) then goto Main_Screen:
