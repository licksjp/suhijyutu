100 '数秘術占い 2019.08.16
110 '改変履歴
120 '2021.03.31 α版 画面背景アップデート
130 '2021.04.02 β版 更にアップデート音声追加
140 '変数定義 パート
150 'Main画面
160 Main_Screen:
170 cls 3
180 '描画領域 ここから
190 '1行
200 line (0,0) - (850,60),rgb(0,0,255),bf
210 line (0,0) - (850,63),rgb(0,255,0),b
220 '2行
230 line (0,60) - (850,70*8),rgb(127,255,212),bf
240 line (0,57) - (850,70*8-3),rgb(0,255,0),b
250 '3行
260 line (0,70*8) - (850,70+70*8),rgb(0,255,0),bf
270 line (0,70*8) - (850,70+70*8+3),rgb(0,0,255),b
280 '描画領域　ここまで
290 cls
300 talk "メイン画面です。番号を選んでエンターキーを押してください。"
310 font 48:color rgb(255,255,255):print"メイン画面" + chr$(13)
320 color rgb(255,0,255)
330 print"番号を選んでください";chr$(13)
340 print"1.数秘術占い";chr$(13)
350 print"2.数秘術占いのルール";chr$(13)
360 print"3.バージョン";chr$(13)
370 print"4.終了する";chr$(13)
380 COLOR rgb(0,0,0)
390 Input"番号:",selectNo
400 if (selectNo = 1) then goto Input_Seireki:
410 if (selectNo = 2) then goto Suhi_Rule:
420 if (selectNo = 3) then goto Version:
430 if (selectNo = 4) then cls 3:color rgb(255,255,255):end
440 if (selectNo > 4 or selectNo = 0)  then goto Main_Screen:
450 'Version
460 Version:
470 cls 3
480 line(0,0)-(1100,60),rgb(0,0,255),bf
490 line(0,60)-(1100,180+200),rgb(127,255,212),bf
500 line(0,180+200)-(1100,180+200+60),rgb(0,255,0),bf
510 cls
520 color rgb(255,255,255)
530 print"バージョン情報"+chr$(13)
540 color rgb(255,0,255)
550 print"Title:数秘術占い";chr$(13)
560 print"Ver:β版.20210402"+chr$(13)
570 print"(C)Copy rights licksjp"+chr$(13)
580 color rgb(0,0,0)
590 print"エンターキーを押してください"
600 key$ = input$(1)
610 if key$ = chr$(13)  then goto Main_Screen:
620 'Menu1 Top Screen1
630 '誕生日入力(生れた年代)
640 Input_Seireki:
650 cls 3:
660 '描画領域　ここから
670 line (0,0)-(900,60),rgb(0,0,255),bf
680 line (0,60)-(900,160),rgb(0,255,0),bf
690 '描画領域　ここまで
700 cls
710 talk"生まれたねんだいを入れてください"
720 color rgb(255,255,255):print "生れた年（西暦4桁)を入れてください";chr$(13)
730 color rgb(0,0,0)
740 Input"生れた年代(4桁):",year
750 if year > 2022 then goto Input_Seireki:
760 '4桁目
770 bufyear4 = fix(year / 1000)
780 '3桁目
790 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
800 '2桁目
810 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
820 '1桁目
830 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
840 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
850 'cls:
860 'print "bufyer4=";bufyear4
870 'print "bufyear3=";bufyear3
880 'print "bufyear2=";bufyear2
890 'print "bufyear1=";bufyear1
900 'print "bufyear=";bufyear
910 '生れた月を入力
920 Input_Born_Month:
930 cls
940 talk"生まれた月を入れてください"
950 color rgb(255,255,255):print"生れた月を入れてください";chr$(13)
960 color rgb(0,0,0)
970 Input"生れた月:",month
980 if (month > 12) then goto Input_Born_Month:
990 '生れた日を入力
1000 Input_Born_Day:
1010 cls
1020 talk"生まれた日を入れてください"
1030 color rgb(255,255,255):print"生れた日を入れてください";chr$(13)
1040 color rgb(0,0,0)
1050 Input"生れた日:",day
1060 if (day > 31) then goto Input_Born_Day:
1070 suhiNo = bufyear + month + day
1080 if (suhiNo < 100) then
1090    suhiNo1 = fix(suhiNo / 10)
1100    suhiNo2 = suhiNo - (suhiNo1 * 10)
1110 endif
1120 recomp:
1130 bufsuhiNo = suhiNo1 + suhiNo2
1140 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
1150 cls
1160 talk "あなたの数秘ナンバーは," + str$(bufsuhiNo) + "です。"
1170 color rgb(255,255,255):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
1180 else
1190  suhiNo1 = fix(bufsuhiNo / 10)
1200  suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
1210  bufsuhiNo = suhiNo1 + suhiNo2
1220  goto recomp:
1230 endif
1240 color rgb(0,0,0)
1250 print"エンターキーを押してください"
1260 key$ = input$(1)
1270 if key$ = chr$(13) then goto Main_Screen:
1280 'Menu2 占いのルール
1290 Suhi_Rule:
1300 cls 3
1310 line (0,0) - (1500,60),rgb(0,0,255),bf
1320 line (0,60) - (1500,60*9),rgb(127,255,212),bf
1330 line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
1340 cls:COLOR rgb(255,255,255):print"Menu2 数秘術のルール";chr$(13)
1350 color rgb(255,0,255)
1360 print"誕生日を単数変換します";chr$(13)
1370 print"出てくる数字の範囲は1〜９,11,22,33になります";chr$(13)
1380 print"例:1973年11月22日の場合";chr$(13)
1390 print"1+9+7+3+11+22=53==>5+3=8となります";chr$(13)
1400 print"故に8が数秘ナンバーになります";chr$(13)
1410 color rgb(0,0,0)
1420 print "エンターキーを押してください"
1430 key$ = input$(1)
1440 if key$ = chr$(13) then goto Main_Screen:
