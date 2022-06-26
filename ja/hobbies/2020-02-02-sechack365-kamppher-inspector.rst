---
title: SecHack365 - ハードウェアによる不正な書き換えのビジュアライザ
subtitle: KAMPPHER Inspector
tags: fpga, socfpga, quartus, chisel, scala, fsharp, monogame, sechack365
lastdate: 2021-09-28
cover: sechack365/inspector-reference.jpg
---

KAMPPHERのビジュアライザKAMPPHER Inspectorです．ChiselやF#を用いて実装しました．

.. figure::../images/sechack365/Overview.svg
   :alt: KAMPPHER Components
   :width: 1000px
   Components(from development figure)

.. figure::../images/sechack365/inspector-first.jpg
   :alt: First version of KAMPPHER Inspector
   :width: 500px
   First version of KAMPPHER Inspector

.. figure::../images/sechack365/inspector-initial.jpg
   :alt: Second version of KAMPPHER Inspector
   :width: 500px
   Second version of KAMPPHER Inspector

.. figure::../images/sechack365/inspector-early.jpg
   :alt: Early version of KAMPPHER Inspector
   :width: 1000px
   Early version of KAMPPHER Inspector

.. figure::../images/sechack365/inspector-reference.jpg
   :alt: KAMPPHER Inspector Reading
   :width: 1000px
   KAMPPHER Inspector Reading

.. figure::../images/sechack365/inspector-error.jpg
   :alt: KAMPPHER Inspector Write Error
   :width: 1000px
   KAMPPHER Inspector Write Error

SoC内通信
============

もともとKAMPPHERのデバッグにSoC FPGAでやっていました．（SignalTapが無料で使えることを知りませんでした．）
それを流用してInspectorはちょちょいのちょいで完成しました．

``mmap``とポインタ使える関数型言語はF#だけでは？？

ネットワーク通信
======================

MagicOnion使おうと思いましたが，ARMではgRPCが動かないようです．（自分でビルドする必要があります）
締め切り間近なので，高専プロコンのIPCのコードをパクりました．

グラフィック
==================

とりあえずMonogame使いました．Unityとかわからん．
Arduino UNOのモデル使っていますが，本当に動いているのはESP32です．
だって，ESP32のモデル見つからなかったから…
M5Stackはマイコン感が出ないので却下です．

弾丸は若干ずらしている．
そうしないと一本の線に見えてしまうからである．
でもやっぱりダサいような気がする…

Related Links
================
 * ` SecHack365 2019 第7章 レポート 優秀修了生からのメッセージ | SecHack365 <https://sechack365.nict.go.jp/report/2019/report07.html>`_
 * ` 2019 作品一覧 | SecHack365 <https://sechack365.nict.go.jp/achievement/2019/index.html>`_
 * Arduino UNO 3Dモデル CC-BY - ビボーログ https://sites.google.com/site/bknobiboroku/blender/arduino_uno_board
 * `KAMPPHERの記事 <2020-02-02-sechack365-kamppher.html>`_
 * `KAMPPHER Noticeの記事 <2020-02-02-sechack365-kamppher-notice.html>`_
