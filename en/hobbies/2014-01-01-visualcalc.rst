---
title: Speaking Calculator
subtitle: VisualCalc
tags: csharp, wpf, win32
cover: visualcalc/beta2.jpg
---

.. figure::../images/visualcalc/rp.jpg
   :alt: Screenshot of VisualCalc Release Preview
   :width: 500px
   Screenshot of VisualCalc Release Preview

Speaking Calculator, Visual Calc. 
This is a first big program written by me.
I used .Net Framework 4.5, C# 5 and WPF.
This works on Windows Vista or later.

Features
================

Speaking
-----------------------
The main feature of this calculator is reading numbers,
and this calculator speaks when you click buttons.
(There are no voice on trigonometric functions, etc...)

Mascot
-----------------------
The mascot cheers you by calculator.
This feature is removed after Release Preview.
Isn't it needed?

.. figure::../images/visualcalc/mascot.jpg
   :alt: Mascot feature
   :width: 500px
   Mascot feature

Tax
-----------------------
You can calucate tax.
Initial tax rate is 5%, so I feel time. (In Japan, in 2021, tax rate is 10%.)

.. figure::../images/visualcalc/tax.jpg
   :alt: Tax is 5%
   :width: 500px
   Tax is 5%

Since some recent version, initial tax rate have been 8%.

.. figure::../images/visualcalc/tax2.jpg
   :alt: Tax is 8%
   :width: 500px
   Tax is 8%


2.1 billion-digit Number Calculation
------------------------------------------
Maximum length of String type is 2.1 billion(maximum value of signed 32 bit integer),
so you can calculate 2.1 billion-digit numbers.(I have never done.)

.. figure::../images/visualcalc/release.jpg
   :alt: 100! on Visual Calc Release v1.01
   :width: 500px
   100! on Visual Calc Release v1.01

Graph
---------
Nearly non-existent feature.
Now, standard Windows Calculator have.
Isn't it needed?

.. figure::../images/visualcalc/graph.jpg
   :alt: Graph on Visual Calc Release v1.01
   :width: 500px
   Graph on Visual Calc Release v1.01

Riddle feature
-----------------
Isn't it needed?
(gcd, lcm, amicable numbers, fibonacci, and more...)

.. figure::../images/visualcalc/tools.jpg
   :alt: Tools on Visual Calc Release v1.01
   :width: 500px
   Tools on Visual Calc Release v1.01

Digression (My first multi-threading.)
====================================================

2.1 billion-figure numbers calculation feature may take long time and freeze UI.
Then I need make it calculate on another thread.
In those days, Async/Await jas just appeared, and .Net Framework have many ways to create threads
(``Thread`` Class, ``ThreadPool.QueueUserWorkItem``, ``Task.Factory.StartNew``, ``Task.Run``),
so I didn't understand, and I wrote the code below,

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


This code is not so good, it can be wrote like the code below.

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

I should have used ``Semaphore`` and ``DispatcherObject`` rather than entering darkness of ``SynchronizationContext``.

.. raw::html

    <div style="display: grid; grid-template-columns: repeat(2, 1fr); width: 100%;">
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/visualcalc/beta2.jpg" alt="Screenshot of VisualCalc beta2"><br>VisualCalc Beta 2</div>
        <div style="margin: 2em"><img style="max-width: 100%;object-fit: scale-down;" src="../images/visualcalc/beta3.jpg" alt="Screenshot of VisualCalc beta3"><br>VisualCalc Beta 3</div>
    </div>

