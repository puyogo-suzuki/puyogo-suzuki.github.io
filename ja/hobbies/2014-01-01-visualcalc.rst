---
title: 喋る電卓ソフト
subtitle: VisualCalc
tags: csharp, wpf, win32
cover: visualcalc/rp.jpg
lastdate: 2021-09-23
---

.. figure::../images/visualcalc/rp.jpg
   :alt: Screenshot of VisualCalc Release Preview
   :width: 500px
   Screenshot of VisualCalc Release Preview

喋る電卓ソフトVisual Calc．初めて大きなプログラムを書きました．
.Net Framework 4.5, C# 5, WPFを用いたもので，Windows Vista以降で動作します．

機能
================

喋る機能
-----------------------
数字を読み上げてくれるのがこの電卓の特徴です．
ボタンを押すたびに喋ってくれます．（三角関数とかは...無い）

マスコット機能
-----------------------
電卓の横で応援してくれます．
Release Preview以降は削除されていました．
これいる？

.. figure::../images/visualcalc/mascot.jpg
   :alt: Mascot feature
   :width: 500px
   Mascot feature

税金の計算
-----------------------
税金の計算もできます．初期設定が5%なので，時代を感じます．（2021年現在10%）

.. figure::../images/visualcalc/tax.jpg
   :alt: Tax is 5%
   :width: 500px
   Tax is 5%

途中で8%になってる．

.. figure::../images/visualcalc/tax2.jpg
   :alt: Tax is 8%
   :width: 500px
   Tax is 8%


21億桁計算機能
-----------------------
String型の最大文字数が21億（32ビット符号付きの最大値）なので，21億桁計算できます．（やったことはない．）

.. figure::../images/visualcalc/release.jpg
   :alt: 100! on Visual Calc Release v1.01
   :width: 500px
   100! on Visual Calc Release v1.01

グラフ
---------
申し訳程度の機能．今ならWindows標準の電卓にあります．これいる？

.. figure::../images/visualcalc/graph.jpg
   :alt: Graph on Visual Calc Release v1.01
   :width: 500px
   Graph on Visual Calc Release v1.01

謎機能
---------
これいる？

.. figure::../images/visualcalc/tools.jpg
   :alt: Tools on Visual Calc Release v1.01
   :width: 500px
   Tools on Visual Calc Release v1.01

小話（初めてのマルチスレッド）
====================================================

そして，21億桁計算機能はめちゃくちゃ時間がかかる場合があったので，UIがフリーズしてしまいます．
そのために，別スレッドで計算をすることが必要でした．
当時は，Async/Awaitが出たばかりで，.Net Frameworkにはあまたのスレッド生成の方法があります．（``Thread``クラス, ``ThreadPool.QueueUserWorkItem``, ``Task.Factory.StartNew``, ``Task.Run``）
そのために，わけわからず，次のようなコードを書いていたり．


.. code-block::csharp

    await Task.Factory.StartNew(( o ) => {
        Tuple<int, BigDecimal> data = (Tuple<int, BigDecimal>)o;
        NextNumberBig = BigDecimal.Sqrt(data.Item2, data.Item1);
        return data.Item2;
    }, new Tuple<int,BigDecimal>((int)ConmaScroll.Value, bd) ).ContinueWith((t) => {
        StateLabel.Content = "√";
        HistoryAppend("sqrt(" + t.Result.ToString() + ")");
        LoadingWindow.Visibility = Visibility.Collapsed;
        IsEnabled = true;
    }, TaskScheduler.FromCurrentSynchronizationContext());


こうでいいはずです．

.. code-block::csharp

    int csv = ConmaScroll.Value;
    var bd2 = bd;
    await Task.Run(() => {
        NextNumberBig = BigDecimal.Sqrt(bd2, csv);
    });
    StateLabel.Content = "√";
    HistoryAppend("sqrt(" + bd2.ToString() + ")");
    LoadingWindow.Visibility = Visibility.Collapsed;
    IsEnabled = true;

``SynchronizationCotext``の闇に入るぐらいなら``Semaphore``と``DispatcherObject``を使った方がいいですね．

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); width: 100%;">
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/visualcalc/beta2.jpg" alt="Screenshot of VisualCalc beta2"><br>VisualCalc Beta 2</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/visualcalc/beta3.jpg" alt="Screenshot of VisualCalc beta3"><br>VisualCalc Beta 3</div>
    </div>

