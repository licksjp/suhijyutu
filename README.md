# 数秘術占い　for Basic for Android 

# ●バージョン履歴(Version History)
# Ver20210331　α版。
# Ver20210402 β版。
# Ver20210403 β2版。

# Ver100_20230604:開発再開。
# Ver101_20230611:AI Voice 追加、依存ファイルフォルダ整理。
# Ver102_20230618:メニュー項目整理、AI Voice追加。
# Ver103_20230625:メニュー項目整理、メニュー1数秘術占い項目整理。
# Ver104_20230702:バーズアイグリッドを追加、メニュー表示整理。
# Ver105_20230708:参考文献追加。
# Ver106_20230715:トップ画面数秘術占い拡張、数秘術占い（1.数秘番号を求める 2.グリッドナンバーを求める(未実装) 3.トップ画面に戻る)に拡張。
# Ver107_20230723:数秘術占いの項目のトップ画面を整理、音声を追加。
# Ver108_20230730:相性占い追加（実装不完全)、トップ画面から数秘術占いのメニューを整理。参考文献表示不具合、修正。
# Ver109_20230806:数秘術計算入力をテンキー入力方式に 拡張。
# Ver110_20230813:数秘術計算入力をテンキー入力方式に 換装。上司と部下の相性をさらに拡張（不完全実装)。
# Ver111_20230820:上司と部下の相性占いにテンキー入力を追加。実装不完全。
# Ver112_20230827:上司と部下の相性の結果の2つ目の説明を追加。実装不完全。
# Ver113_20230903:上司と部下の相性の結果一つ目の表示を見やすく調整。その結果表示の不具合調整。AI Voice追加。
# Ver114_20230910:上司と部下の相性西暦と部下の生まれた年代、生まれた月、生まれた日、テンキー入力（数字)色を白に変更.その他、入力調整。
# Ver115_20230917:数秘術計算のキャンセル機能アップデート（生まれた年代、生まれた月)、テンキーの色ＯＫボタンを赤に変更。
# Ver116_20230924:テンキー表示調整、数秘術占い、バーズアイグリッド、終了時再度診断機能追加。
# Ver117_20231001:バーズアイグリッドの名前入力を十字キー入力方式に改良(実装不完全)
# Ver118_20231008:バーズアイグリッド文字拡張（名前の入力方式拡張:実装不完全)
#  Ver119_20231015:バーズアイグリッド文字拡張（名前の入力方式拡張:実装不完全)
#  Ver120_20231022:バーズアイグリッド文字拡張（名前の入力方式拡張:実装不完全)
#  Ver121_20231029:バーズアイグリッド文字拡張（名前の入力方式拡張:実装不完全)
#  Ver122_20231105:バーズアイグリッド文字拡張（名前の入力方式拡張:実装不完全)
#  Ver125_20231126:バーズアイグリッド　説明音声追加(3つ)





# ●計算ルール
# 例：1973年11月22日生まれの場合
# 1+9+7+3+1+1+2+2==>26 ==> 2+6=8
# 故に　8がエンジェル番号になる。

# このプログラムはこの数字を求めるプログラムです。
# 出てくる数字の範囲は1~9,11,22,33です。

# バーズアイグリットの説明
# バーズアイグリッドは、名前からタイプを求める数秘術の一種です。
# 1.名前をアルファベットで入力します。
# 2.大文字を使いますが、このアプリでは、小文字で入力しても
# 名前が大文字になるようになっています。

# 1:A、J、S
# 2:B、K、T
# 3:C、L、U
# 4:D、M、V
# 5:E、N、W
# 6:F、O、X
# 7:G、P、Y
# 8:H、Q、Z
# 9:I、R

# この表を参考に、徳川家康で考えます。

# 例:徳川家康 => TOKUGAWAIEYASU
# T(2),O(6),K(2),U(3),G(7),A(1),W(5),A(1) I(9),E(5),Y(7),A(1),S(1),U(3)

# バーズアイグリッドは、
# 3(2),6(1),9(1)
# 2(2),5(2),8(0)
# 1(4),4(0),7(2)
# となります。

# この計算を自動で入力する計算機です。


# ●.参考文献1(Reference Book1)

# 1.Title:名前で運命の全てが分かる　数秘術
# Author:Carol Adrinne,Phd
# 出版社:幻冬舎
# HP:www.carolAdrinne.jp/
# ISBN:978-4-344-01394-0
# 定価:1500円 + 税

# ●.参考文献2 (Reference Book2)

# 2.Title:ユダヤの秘儀　大占術占術
# 著者:浅野八郎
# 出版社:NON BOOK
# ISBN:4-396-10364-6
# 定価:829円 + 税

# ●.English Explanation:
# Calculation Rules for Kabara
# Example: If you were born on November 22, 1973
# 1 + 9 + 7 + 3 + 1 + 1 + 2 + 2 = 26
# 2 + 6 = 8
# Therefore, 8 is the angel number.

# Description of Bird's Eye Grid:
# Bird's Eye Grid is a form of numerology that identifies your type based on your name.
# 1. Write down your name in alphabetical order.
# 2. Use uppercase letters. However, in this application, even if you enter lowercase letters, 
# the name will be automatically capitalized.

# Refer to the provided table while considering the case of Tokugawa Ieyasu.

# The resulting value will be automatically calculated by this calculator.
# 1:A、J、S
# 2:B、K、T
# 3:C、L、U
# 4:D、M、V
# 5:E、N、W
# 6:F、O、X
# 7:G、P、Y
# 8:H、Q、Z
# 9:I、R

 # Using this table as a reference, think in terms of Tokugawa Ieyasu.

# Example:徳川家康:Tokugawa Ieyasu => TOKUGAWAIEYASU
# T(2),O(6),K(2),U(3),G(7),A(1),W(5),A(1) I(9),E(5),Y(7),A(1),S(1),U(3)

# Bird's eye grid is,
# 3(2),6(1),9(1)
# 2(2),5(2),8(0)
# 1(4),4(0),7(2)
# The result will be.

# This calculator automatically inputs this calculation.


