---
title: Collection of Ochimono(Falling) Puzzle game (halfway of writing)
subtitle: PuzzleCollection
tags: game, csharp, monogame, skia, xamarin, uwp
cover: puzzlecollection/2017_04_battle.jpg
lastdate: 2021-09-23
---

This is a collection game of Falling Block Puzzle Game that you can battle on Puyo Pop and Tetris.
I used .Net Framework 4.5（→4.7），MonoGame 3.7（→3.8）, Xamarin.Android, and UWP 2016 versions.
It colud run on Windows Vista or later，Linux，Windows 10 Mobile，Android 4.0 or later.
(currently, Windows 8.1 or later，Linux，Android 8.0 or later)

April 2017 (Version 0.1.17.4xx)
==============================================

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-template-rows: repeat(3, auto); width: 100%;">
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_title.jpg" alt="Title of PuzzleCollection 0.1.17.409"><br>Title of PuzzleCollection 0.1.17.409</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_tsu.jpg" alt="Puyo pop tsu (0.1.17.409)"><br>Puyo pop tsu (0.1.17.409)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_guideline.jpg" alt="Gudeline tetris (0.1.17.409)"><br>Gudeline tetris (0.1.17.409)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_sega.jpg" alt="Sega tetris (0.1.17.409)"><br>Sega tetris (0.1.17.409)</div>
        <div style="margin: 2em; grid-column: 1/3;"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_battle.jpg" alt="Battle, Puyo pop SUN vs Guideline Tetris (0.1.17.409)"><br>Battle, Puyo pop SUN vs Guideline Tetris (0.1.17.409)</div>
    </div>

I submitted this as spring homework at school.
Puyo's erasing check is not difficult in implementing Puyo Pop, but deciding falling speed of Puyo is very hard, and I am particular about animation when setting.
I implemented Tetris when I don't understand T-spin well, so it differs some rules. (I'm amateur, so I don't know.)

On this time, it can run on DirectX, OpenGL, Android (Setting window is not implemented.), UWP (Setting window is not implemented.). Monogame is wonderful!


New Game Rule!
---------------------
 * Puyo Pop
 * Puyo Pop Tsu
 * Puyo Pop Tsu (with otsuri)
 * Puyo Pop SUN
 * Puyo Pop SUN (GameBoy)
 * GuideLine Tetris
 * Sega Tetris
 * Difference Dimension Stage

Movies (Youtube)
----------------------
 * Puyo Pop Tsu Rule https://youtu.be/XT9K48qb9h8
 * GuideLine Tetris Rule https://youtu.be/Ien5FlKvhvk
 * Sega Tetris Rule https://youtu.be/WpsQ7CAhSVU
 * Two Players Battle https://youtu.be/mOWsOM3glz0

Related Links
---------------------
 * `Article about this in Matsue College of Technology dept. Information Technology(Japanese) <http://www.matsue-ct.jp/it/index.php/47-topics/topics2017a/296-topics20170525>`_

August 2017 (Version 0.1.17.411～0.1.17.827)
==================================================

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-template-rows: repeat(3, auto); width: 100%;">
        <div style="margin: 2em;"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/PuzzleCollection.png" alt="Logo of PuzzleCollection"><br>Logo of PuzzleCollection</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_tsu.jpg" alt="Puyo pop tsu (0.1.17.827)"><br>Puyo pop tsu (0.1.17.827)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_guideline.jpg" alt="Gudeline tetris (0.1.17.827)"><br>Gudeline tetris (0.1.17.827)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_yon.jpg" alt="Puyo pop 4 (0.1.17.827)"><br>Puyo pop 4 (0.1.17.827)</div>
        <div style="margin: 2em; grid-column: 1/3;"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_battle.jpg" alt="Battle, 8 players (0.1.17.827)"><br>Battle, 8 players (0.1.17.827)</div>
    </div>


This is used in Open Campus.

I fixed bugs and sense of controlling, and added T-Spin bonus in GuideLine Tetris rule, also improved balance of battle.
It supports **Wii mote** and **8 players battle**. On non portable game edition, Puzzle Collection is the first 8 playerable.

These time Puzzle Collection, could run on Intel CPUs, but on AMD CPUs, it crashes due to failure of lock on multithreaded processings.

New Game Rule!
---------------------
 * Quick Stage
 * Puyo Pop 4

Movies(Youtube)
----------------------
 * 2-player battle https://youtu.be/4wV-ZeWyGr8
 * Puyo Pop 4 Rule https://youtu.be/s95SlBvCOa0
 * T-Spin https://youtu.be/IaThuAVVQwc
 * 8-player battle https://youtu.be/WFJtuX0QAOI

PuzzleCollection Ultimate (1 April 2018, Version 0.0.17.903～0.0.2018.327, 0.0.2018.401)
=================================================================================================


.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-template-rows: repeat(2, auto); width: 100%;">
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2018_04_ultimate_title.jpg" alt="Title of PuzzleCollection Ultimate (0.1.2018.401)"><br>Title of PuzzleCollection Ultimate (0.1.2018.401)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2018_04_ultimate.jpg" alt="PuzzleCollection Ultimate (0.1.2018.401)"><br>PuzzleCollection Ultimate (0.1.2018.401)</div>
    </div>

Tetris Effectがエフェクトマシマシでプレイしずらそうなのと，Tetris Ultimateがバグばっかりなので，エイプリルフールに，ブルームマシマシ，たまに固まるバージョンのPuzzle Collectionを部内に放流しました．

地味にハーピーAIを搭載しています．

2018年8月（バージョン0.1.2018.610～0.0.2018.730）
==================================================

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-template-rows: repeat(2, auto); width: 100%;">
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2018_08_tsu.jpg" alt="Puyo pop tsu (0.1.2018.930)"><br>Puyo pop tsu (0.1.2018.930)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2018_08_guideline.jpg" alt="Guideline tetris (0.1.2018.930)"><br>Guideline tetris (0.1.2018.930)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2018_08_curry.jpg" alt="Difficulty selection (0.1.2018.930)"><br>Difficulty selection (0.1.2018.930)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2020_06_rule.jpg" alt="Rule selection (0.1.2020.607)"><br>Rule selection (0.1.2020.607)</div>
    </div>

ルール追加とかはせずに，操作性向上を目指した時期です．難易度選択がそれらしくなった他，ルール選択画面も新しくなりました．
（その時代の実行ファイルも画像データも無かったので，今のルール選択画面を表示しています．）

チーム対戦もできるようになりました．

新規ゲームルール
---------------------
 * でかぷよステージ


動画一覧(Youtube)
----------------------
 * ぷよぷよ通ルール https://youtu.be/aw_a7R3Uzao
 * ガイドラインテトリスルール https://youtu.be/xqwrQiLbK0U


2019年8月（バージョン0.1.2018.731～0.0.2019.808）
==================================================

TBD

目玉はぷよぷよフィーバーです．

新規ゲームルール
---------------------
 * ぷよぷよフィーバー
