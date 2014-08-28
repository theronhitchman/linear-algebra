---
layout: default
title: Sage for Linear Algebra
---

There are two main ways in which modern technology (computers of all kinds)
can make the study of mathematics easier:

* fast, reliable execution of routine computations, and
* easily rendered, manipulable visualizations of shapes in three dimensions.

It is getting to the point where calling yourself a mathematician means you can
use a computer to do those things as part of problem solving, when appropriate.

The UNI Math Department has decided that Math 2500 is the course where we
will teach basic mathematical computing. The main reason is that introductory
linear algebra is full of interesting things that can only be understood after
routine, tedious computations, and also has a important 3d visualization component.

We do not expect that you have any significant experience with computing or
programming before you enroll. This semester, you will learn some of the basics
of how to use a mathematical software system. This will help you with linear
algebra and, if you stick with it, it can help you with other parts of your study.
To get through some of the basics, I have made available some materials for
an [introductory workshop as a web-page][workshop].

This semester, I have chosen to use the Computer Algebra System [Sage][sagemath].
Sage is free and open-source, which has some big benefits. The most important one
is that you will learn a system you can take with you, and will always be free to
use. Another point in favor of Sage is that it is built using [Python][python], a powerful,
high-level programming language. Eventually, you will want to write some small
program, and Python is easy to learn and easy to use.

To do our work, we will use the [SageMathCloud][sagecloud] service. SMC allows us
to use Sage (and lots of other software) through a web browser. It essentially turns
whatever web browser you have on you into a terminal for a powerful linux machine.
(You won't need all that power at first, but you might come to appreciate it later. It
is a system designed by mathematicians and programmers for doing what they need.)

<p class="text-center">
<a class="btn btn-primary btn-lg" href="{{site.url}}/sage-workshop" target="_blank">Go to the SMC Intro</a>
</p>

### The Linear Algebra Quick Reference Guide

Rob Beezer wrote a [guide to the basic linear algebra functionality][laqr] available in
Sage. I find it useful to have a copy of this guide tucked in my textbook as a
bookmark.

[laqr]: http://wiki.sagemath.org/quickref?action=AttachFile&do=get&target=quickref-linalg.pdf

[sagemath]: {{site.sageurl}}
[sagecloud]: {{site.smcurl}}

[workshop]: {{site.url}}/sage-workshop/
[python]: {{site.pythonurl}}
