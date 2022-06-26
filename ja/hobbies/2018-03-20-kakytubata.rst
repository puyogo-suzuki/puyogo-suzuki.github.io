---
title: 音楽管理・プレイヤー
subtitle: Kakytubata
tags: csharp, wpf, win32, ffmpeg, vlc, rx
cover: kakytubata/play.jpg
lastdate: 2021-09-23
---

.. figure::../images/kakytubata/mainwindow.jpg
   :alt: Screenshot of Kakytubata
   :width: 500px
   Screenshot of Kakytubata

OpusやFLACで管理する音楽プレイヤーが欲しくて作りました．
.Net Framework 4.7.1, C# 6, WPF + System.Reactive, FFmpeg, VLCで作りました．

ライブラリは独自形式です．

.. figure::../images/kakytubata/wizard1.png
   :alt: Library Creation
   :width: 500px
   Library Creation

アルバムを作ることができます．
つまり，音楽ファイルのアルバムの項を参照するのではなく，独自形式で，ディレクトリに分かれて管理します．

.. figure::../images/kakytubata/addalbum.jpg
   :alt: Album Creation
   :width: 500px
   Album Creation

音楽ファイルをドラッグアンドドロップすれば，勝手に変換が始まります．
変換先の形式はFLACやOpusです．

.. figure::../images/kakytubata/addalbum2.png
   :alt: Album Creation 2
   :width: 500px
   Album Creation 2

再生画面

.. figure::../images/kakytubata/play.jpg
   :alt: Playing Album
   :width: 500px
   Playing Album


検索機能とかさっさとつけたいですね…