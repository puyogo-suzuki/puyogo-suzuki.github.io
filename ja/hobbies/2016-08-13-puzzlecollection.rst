---
title: 落ちものゲームの寄せ集め（途中執筆）
subtitle: PuzzleCollection
tags: game, csharp, monogame, skia, xamarin, uwp
cover: puzzlecollection/2017_04_battle.jpg
lastdate: 2021-09-23
---

ぷよぷよとテトリスで対戦できる落ちものパズルゲーの寄せ集めゲームです．
.Net Framework 4.5（→4.7），MonoGame 3.7（→3.8）, Xamarin.Android, 2016年代のUWPを用いました．
Windows Vista以降，Linux，Windows 10 Mobile，Android 4.0以降で動作していました．
（現在は，Windows 8.1以降，Linux，Android 8.0以降）

2017年4月（バージョン～0.1.17.4xx）
==============================================

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-template-rows: repeat(3, auto); width: 100%;">
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_title.jpg" alt="Title of PuzzleCollection 0.1.17.409"><br>Title of PuzzleCollection 0.1.17.409</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_tsu.jpg" alt="Puyo pop tsu (0.1.17.409)"><br>Puyo pop tsu (0.1.17.409)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_guideline.jpg" alt="Gudeline tetris (0.1.17.409)"><br>Gudeline tetris (0.1.17.409)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_sega.jpg" alt="Sega tetris (0.1.17.409)"><br>Sega tetris (0.1.17.409)</div>
        <div style="margin: 2em; grid-column: 1/3;"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_04_battle.jpg" alt="Battle, Puyo pop SUN vs Guideline Tetris (0.1.17.409)"><br>Battle, Puyo pop SUN vs Guideline Tetris (0.1.17.409)</div>
    </div>

学校の春休み課題に提出しました．
ぷよぷよは，ぷよの消去判定よりは，ぷよの落下速度をうまい感じに決めること，ぷよぷよが接地するときに，ぷよってするアニメーションにこだわりました．
テトリスはTスピンの仕様をあんまり理解せずに実装したので，若干判定などが異なるようです．（素人にはわかりませんが）

この時点で，DirectX, OpenGL, Android（設定画面未実装）, UWP（設定画面未実装）で動いていました．Monogameすごい！


新規ゲームルール
---------------------
 * ぷよぷよ
 * ぷよぷよ通
 * ぷよぷよ通（おつりあり）
 * ぷよぷよSUN
 * ぷよぷよSUN（GB版）
 * ガイドラインテトリス
 * セガテトリス
 * 異次元ステージ

動画一覧(Youtube)
----------------------
 * ぷよぷよ通ルール https://youtu.be/XT9K48qb9h8
 * ガイドラインテトリスルール https://youtu.be/Ien5FlKvhvk
 * セガテトリスルール https://youtu.be/WpsQ7CAhSVU
 * 2人対戦 https://youtu.be/mOWsOM3glz0

Related Links
---------------------
 * `松江高専情報工学科の該当記事 <http://www.matsue-ct.jp/it/index.php/47-topics/topics2017a/296-topics20170525>`_

2017年8月（バージョン0.1.17.411～0.1.17.827）
==================================================

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-template-rows: repeat(3, auto); width: 100%;">
        <div style="margin: 2em;"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/PuzzleCollection.png" alt="Logo of PuzzleCollection"><br>Logo of PuzzleCollection</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_tsu.jpg" alt="Puyo pop tsu (0.1.17.827)"><br>Puyo pop tsu (0.1.17.827)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_guideline.jpg" alt="Gudeline tetris (0.1.17.827)"><br>Gudeline tetris (0.1.17.827)</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_yon.jpg" alt="Puyo pop 4 (0.1.17.827)"><br>Puyo pop 4 (0.1.17.827)</div>
        <div style="margin: 2em; grid-column: 1/3;"><img style="max-width: 100%;object-fit: scale-down;" src="../images/puzzlecollection/2017_08_battle.jpg" alt="Battle, 8 players (0.1.17.827)"><br>Battle, 8 players (0.1.17.827)</div>
    </div>


学校のオープンキャンパスに使われました．

バグや操作感覚を修正した他に，ガイドラインテトリスルールではやっとT-Spinボーナスを追加，バランス修正などをしました．
また，目玉として， **Wiiリモコン** と **8人対戦** に対応しました．非携帯機で8人対戦可能はPuzzleCollectionが一番最初ですね．

なお，この時期のPuzzleCollectionはIntelのCPUでは動作しますが，AMDのCPUではマルチスレッド関連の処理で排他制御失敗しているのでクラッシュします．

新規ゲームルール
---------------------
 * クイックステージ
 * ぷよぷよ～ん

動画一覧(Youtube)
----------------------
 * 2人対戦 https://youtu.be/4wV-ZeWyGr8
 * ぷよぷよ～んルール https://youtu.be/s95SlBvCOa0
 * T-Spin https://youtu.be/IaThuAVVQwc
 * 8人対戦 https://youtu.be/WFJtuX0QAOI

PuzzleCollection Ultimate（2018年4月1日,バージョン0.0.17.903～0.0.2018.327, 0.0.2018.401）
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
