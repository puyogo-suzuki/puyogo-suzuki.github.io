---
title: 時間割管理Slack Bot
subtitle: ClassSlackBot
tags: csharp, sqlite
cover: classslackbot/main.jpg
lastdate: 2021-09-23
---

.. figure::../images/classslackbot/main.jpg
   :alt: Class Slack bot
   :width: 1000px
   Class Slack bot

.NET CORE 2.1, C# 6, SQLite(Entity Framework CORE)を用いました．
時間割や掲示板，宿題の情報を定刻にSlackに告知してくれます．

設定はJsonを投げることで行います．（情報系のクラスだからね，大丈夫だよね）

.. figure::../images/classslackbot/settings.jpg
   :alt: Class Slack bot setting
   :width: 1000px
   Class Slack bot setting

エラーメッセージはそのまま``Exception.ToString()``です．（情報系のクラスだから(ry）


.. figure::../images/classslackbot/settings_fail.jpg
   :alt: Class Slack bot error
   :width: 1000px
   Class Slack bot error


自然言語も若干処理できます（MeCab使用）


.. figure::../images/classslackbot/naturallang.jpg
   :alt: Throw natural language into Class Slack bot
   :width: 600px
   Throw natural language into Class Slack bot

.. figure::../images/classslackbot/naturallang2.jpg
   :alt: Holy HAGE
   :width: 600px
   Holy HAGE