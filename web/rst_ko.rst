====================
 |reStructuredText|
====================
-------------------------------------------------
 마크업 문법과 독유틸즈 파서 구성
-------------------------------------------------

:Date: $Date$

.. Note:: "리스트럭처드텍스트(reStructuredText)" is 두 단어가 아니고 **한** 단어이다!

.. contents::

리스트럭처드텍스트는 읽기 쉽고 쓰는 그대로 얻을 수 있는,
일반 텍스트로 되어 있는 마크업 문법이자 파서 시스템이다.
(파이썬 독스트링 같은) 프로그램 내의 인라인 문서를 만들때 혹은
간단한 웹 페이지나 독립적인 문서를 만드는 데도 유용한다.
리스트럭처드텍스트는 특정 애플리케이션 도메인에 대해 확장가능하도록 설계되었다.
리스트럭처드텍스트 파서는 독유틸즈(Docutils_)의 구성 요소의 하나다.
리스트럭처드텍스트는 스트럭처드텍스트(StructuredText_)과 셋텍스트(Setext_)라는
가벼운 마크업 시스템의 개정판이다.

리스트럭처드텍스트의 최종 목표는 파이썬 독스트링과 다른 문서화 부문에 쓰이는,
가독성이 좋고 단순하지만 여러가지 경우에 사용할 수 있는 충분히 강력한
마크업 문법을 정의하고 구현하는 것이다.
마크업의 목표는 리스트럭처드텍스트 문서를 다른 유용한 구조화된 데이터 포맷으로
변환하는 것이다.

리스트럭처드텍스트로 문서화된 파이썬 모듈의 예를 보고 싶다면
statemachine.py_ 코드를 참조하라.


사용자 가이드
==================

- `리스트럭처드텍스트 기초`__ (`소스 코드`__).
- `초간단 리스트럭처드텍스트 가이드`__ (사용자 참조 문서)
- `리스트럭처드텍스트 치트시트`__ (텍스트 문서. 문법 1 페이지와 지시자, 역할자 목록 1 페이지)

독유틸즈나 리스트럭처드텍스트에 대해 질문이 있거나 도움이 필요하면 `독유틸즈 사용자 메일링 리스트`_\ 를 참조한다.

__ docs/user/rst/quickstart_ko.html
__ https://github.com/VeranosTech/docs-korean-docutils/blob/docs-korean/docutils/docs/user/rst/quickstart_ko.rst
__ docs/user/rst/quickref_ko.html
__ https://github.com/VeranosTech/docs-korean-docutils/blob/docs-korean/docutils/docs/user/rst/cheatsheet_ko.rst
.. _독유틸즈 사용자 메일링 리스트: docs/user/mailing-lists.html#docutils-users


참조 문서
=======================

- `An Introduction to reStructuredText`__ (includes the Goals__ and History__ of reStructuredText)
- `reStructuredText Markup Specification`__
- `reStructuredText Directives`__
- `reStructuredText Interpreted Text Roles`__

__ docs/ref/rst/introduction.html
__ docs/ref/rst/introduction.html#goals
__ docs/ref/rst/introduction.html#history
__ docs/ref/rst/restructuredtext.html
__ docs/ref/rst/directives.html
__ docs/ref/rst/roles.html


개발자용 문서
=======================

- `A Record of reStructuredText Syntax Alternatives`__
- `Problems With StructuredText`__

__ docs/dev/rst/alternatives.html
__ docs/dev/rst/problems.html


하우투 문서
----------------

- `Creating reStructuredText Directives`__
- `Creating reStructuredText Interpreted Text Roles`__

__ docs/howto/rst-directives.html
__ docs/howto/rst-roles.html


온라인에서 사용해 보기
==========================

If you want to try reStructuredText out without downloading Docutils, you
can play with the "simple online editor for reStructuredText" on
http://rst.ninjs.org/


Testimonials
============

The following testimonials are excerpts from unsolicited posts to
mailing lists and the comp.lang.python newsgroup.  Being excerpts,
there's often context missing, which sometimes tones down the message.

`Ueli Schlaepfer on Doc-SIG, 2002-03-28`__:

__ http://mail.python.org/pipermail/doc-sig/2002-March/002526.html

    I have adopted reST as my tool of choice for producing notes while
    doing lab work (mostly in a matlab environment).  Since then, the
    quality of such documentation has increased noticeably, mostly for
    two reasons:

    - I no longer need to switch to another tool, so the threshold has
      fallen to very low.  Note that "another tool" means Winword...
    - Still, I have a powerful set of markup constructs at my
      fingertips that let me create the kind of documents I need with
      more ease than any other tool I can think of.

    Thanks to reST/DPS [now Docutils --ed], I'll soon be able to go
    ahead and apply the same tools for extracting documentation out of
    my Python code.  Hey, that's a printable and a browsable version
    *for free*!  Personally, I consider this a large benefit.

    ... All essential constructs for everyday use are there, and much
    more if needed. ...

`Guido van Rossum, enthusiastic about PEP 287 but a bit hasty (see the
follow-ups) on Python-Dev, 2002-04-02`__:

__ http://mail.python.org/pipermail/python-dev/2002-April/022131.html

    Good PEP, David!  What's the next step?  Should the processing
    code be incorporated in the standard library?  Should we start
    converting the standard library docs to reStructuredText?

`Timothy Delaney on comp.lang.python, 2002-04-03`__:

__ http://mail.python.org/pipermail/python-list/2002-April/096013.html

    I read through all the reStructuredText docs, comparing the text
    versions to the html versions.  I found the text versions to be
    *very* easy to read, whilst making it obvious in most cases when
    something was "special".

    I particularly like the system of doing hyperlinks...

    Definitely +1 from me ... I would really like a standard, clean
    docstring format.  Might make it easier to get my next project
    done in Python...

`Guido van Rossum on Python-Dev, 2002-04-03`__:

__ http://mail.python.org/pipermail/python-dev/2002-April/022212.html

    I think that reStructuredText is a good format for marking up
    docstrings; it's probably as good as it gets given the
    requirements (a fairly elaborate feature set, yet more readable
    "in the raw" than HTML).

`Richard Jones on comp.lang.python, 2002-04-03`__:

__ http://mail.python.org/pipermail/python-list/2002-April/096117.html

    How I see it is that ReST is a middle ground between markup and
    non-.  It has markup, and you can use it to the extreme.  Or you
    can follow some simple conventions (the most basic form of markup)
    and not worry about all the finer detail stuff. The difference
    between::

        @section{The Section Title}

    and::

        The Section Title
        -----------------

    Is pretty clearly to me that the second doesn't *look* like
    markup, even though it is.

`Guido van Rossum on Python-Dev, 2002-04-04`__:

__ http://mail.python.org/pipermail/python-dev/2002-April/022247.html

    Structured text is really a great idea for certain situations;
    reST is a much better implementation of the idea than any versions
    I've seen before.

`Max M on comp.lang.python, 2002-04-05`__:

__ http://mail.python.org/pipermail/python-list/2002-April/096656.html

    Any programmer can learn the basics in 15 minutes or less.

    And it really is very very easy to write documents in it.  I do
    belive that if I were ever to write a book (again) I would write
    it in ReST.

    And as far as I can tell from the specs, ReST solves most of the
    problems I have had with structured text.  A few things gets a
    little more complicated and some get simpler.  All in all a good
    bargain.

    I would certainly use it.  I also hope that it gets integrated
    into Zope.

`David Abrahams on Python-Dev, 2002-04-06`__:

__ http://mail.python.org/pipermail/python-dev/2002-April/022443.html

    Incidentally, I'm really excited about reST.  I've been looking
    for a tolerable markup for C++ comments, and reST looks like it
    might fit the bill.

`Eric Jones on Python-Dev, 2002-08-01`__:

__ http://mail.python.org/pipermail/python-dev/2002-August/027198.html

    I would very much like to see reStructuredText, or some minor
    variation on it, move forward as a "standard" for doc-strings very
    soon.  I have long lamented not having a prescribed format *and*
    an associated processing tool suite included in the standard
    library.  Even if the format isn't perfect (I think it looks very
    good), it is time to pick a reasonable candidate and go.

This being the Internet, there were plenty of people opposed to the
idea of reStructuredText, some vehemently.  Discovering *those* gems
is left as an exercise for the reader.

.. _Docutils: index.html
.. _StructuredText:
   http://dev.zope.org/Members/jim/StructuredTextWiki/FrontPage/
.. _Setext: mirror/setext.html
.. _statemachine.py: docutils/statemachine.py

.. |reStructuredText| image:: rst.png


..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   End:
