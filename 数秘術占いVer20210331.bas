100 '数秘術占い 2019.08.16
110 '変数定義 パート
120 'Main画面
130 Main_Screen:
140 cls 3
150 '描画領域 ここから
160 '1行
170 line (0,0) - (850,60),rgb(0,0,255),bf
180 line (0,0) - (850,63),rgb(0,255,0),b
190 '2行
200 line (0,60) - (850,70*8),rgb(127,255,212),bf
210 line (0,57) - (850,70*8-3),rgb(0,255,0),b
220 '3行
230 line (0,70*8) - (850,70+70*8),rgb(0,255,0),bf
240 line (0,70*8) - (850,70+70*8+3),rgb(0,0,255),b
250 '描画領域　ここまで
260 cls:font 48:color rgb(255,255,255):print"メイン画面" + chr$(13)
270 color rgb(255,0,255)
280 print"番号を選んでください";chr$(13)
290 print"1.数秘術占い";chr$(13)
300 print"2.数秘術占いのルール";chr$(13)
310 print"3.バージョン";chr$(13)
320 print"4.終了する";chr$(13)
330 COLOR rgb(0,0,0)
340 Input"番号:",selectNo
350 if (selectNo = 1) then goto Input_Seireki:
360 if (selectNo = 2) then goto Suhi_Rule:
370 if (selectNo = 3) then goto Version:
380 if (selectNo = 4) then cls 3:color rgb(255,255,255):end
390 if (selectNo > 4 or selectNo = 0)  then goto Main_Screen:
400 'Version
410 Version:
420 cls 3
430 line(0,0)-(850,60),rgb(0,0,255),bf
440 line(0,60)-(850,180+60),rgb(127,255,212),bf
450 line(0,180+60)-(850,180+60+60),rgb(0,255,0),bf
460 cls
470 color rgb(255,255,255)
480 print"バージョン情報"+chr$(13)
490 color rgb(255,0,255)
500 print"Title:数秘術占い";chr$(13)
510 print"Ver:α版.20210331"
520 color rgb(0,0,0)
530 print"エンターキーを押してください"
540 key$ = input$(1)
550 if key$ = chr$(13)  then goto Main_Screen:
560 'Menu1 Top Screen1
570 '誕生日入力(生れた年代)
580 Input_Seireki:
590 cls 3:
600 '描画領域　ここから
610 line (0,0)-(900,60),rgb(0,0,255),bf
620 line (0,60)-(900,160),rgb(0,255,0),bf
630 '描画領域　ここまで
640 cls:color rgb(255,255,255):print "生れた年（西暦4桁)を入れてください";chr$(13)
650 color rgb(0,0,0)
660 Input"生れた年代(4桁):",year
670 if year > 2022 then goto Input_Seireki:
680 '4桁目
690 bufyear4 = fix(year / 1000)
700 '3桁目
710 bufyear3 = fix((year - (bufyear4 * 1000)) / 100)
720 '2桁目
730 bufyear2 = fix((year - ((bufyear4 * 1000)+(bufyear3*100)))/10)
740 '1桁目
750 bufyear1 = fix((year - ((bufyear4*1000)+(bufyear3*100)+(bufyear2*10))))
760 bufyear = bufyear1+bufyear2+bufyear3+bufyear4
770 'cls:
780 'print "bufyer4=";bufyear4
790 'print "bufyear3=";bufyear3
800 'print "bufyear2=";bufyear2
810 'print "bufyear1=";bufyear1
820 'print "bufyear=";bufyear
830 '生れた月を入力
840 Input_Born_Month:
850 cls:color rgb(255,255,255):print"生れた月を入れてください";chr$(13)
860 color rgb(0,0,0)
870 Input"生れた月:",month
880 if (month > 12) then goto Input_Born_Month:
890 '生れた日を入力
900 Input_Born_Day:
910 cls:color rgb(255,255,255):print"生れた日を入れてください";chr$(13)
920 color rgb(0,0,0)
930 Input"生れた日:",day
940 if (day > 31) then goto Input_Born_Day:
950 suhiNo = bufyear + month + day
960 if (suhiNo < 100) then
970    suhiNo1 = fix(suhiNo / 10)
980    suhiNo2 = suhiNo - (suhiNo1 * 10)
990 endif
1000 recomp:
1010 bufsuhiNo = suhiNo1 + suhiNo2
1020 if ((bufsuhiNo > 0 and bufsuhiNo < 10) or (bufsuhiNo = 11) or (bufsuhiNo = 22) or (bufsuhiNo = 33)) then
1030 cls:color rgb(255,255,255):print"あなたの数秘ナンバーは";bufsuhiNo;"です";chr$(13)
1040 else
1050  suhiNo1 = fix(bufsuhiNo / 10)
1060  suhiNo2 = bufsuhiNo - (suhiNo1 * 10)
1070  bufsuhiNo = suhiNo1 + suhiNo2
1080  goto recomp:
1090 endif
1100 color rgb(0,0,0)
1110 print"エンターキーを押してください"
1120 key$ = input$(1)
1130 if key$ = chr$(13) then goto Main_Screen:
1140 'Menu2 占いのルール
1150 Suhi_Rule:
1160 cls 3
1170 line (0,0) - (1500,60),rgb(0,0,255),bf
1180 line (0,60) - (1500,60*9),rgb(127,255,212),bf
1190 line (0,60 * 9) - (1500,60 * 10 + 30),rgb(0,255,0),bf
1200 cls:COLOR rgb(255,255,255):print"Menu2 数秘術のルール";chr$(13)
1210 color rgb(255,0,255)
1220 print"誕生日を単数変換します";chr$(13)
1230 print"出てくる数字の範囲は1〜９,11,22,33になります";chr$(13)
1240 print"例:1973年11月22日の場合";chr$(13)
1250 print"1+9+7+3+11+22=53==>5+3=8となります";chr$(13)
1260 print"故に8が数秘ナンバーになります";chr$(13)
1270 color rgb(0,0,0)
1280 input "エンターキーを押してください",key$
1290 key$ = input$(1)
1300 if key$ = chr$(13) then goto Main_Screen:
