==================
독유틸즈 복제
==================

:저자: 데이비드 굿저
:연락처: goodger@python.org
:날짜: $Date$
:웹 사이트: http://docutils.sourceforge.net/
:저작권: 이 문서는 퍼블릭 도메인에 속한다.

이 프로젝트에 포함된 대부분의 파일은 퍼블릭 도메인에 속한다. 
따라서 라이선스가 필요하지 않으며 복제나 사용상의 제한도 없다.
아래의 `퍼블릭 도메인 기여`\ 를 참조하라. 
아래에 제시한 몇가지 예외가 있다.
샌드박스_\ 의 파일은 독유틸즈 배포판과 같이 배포되지 않으며 별개의 라이선스 조항을 가질 수 있다.


퍼블릭 도메인 기여
================================================

자신의 작업물을 이 프로젝트에 연관시킨 사람(이하 "기여자": 데이비드 굿저와 많은 독유틸즈 프로젝트 기여자)들은
아래에 명시한 몇가지 예외를 제외하고 아래의 "독유틸즈"로 알려진 저작권 작업(이하 "작업")의 전체 저작권을 퍼블릭 도메인에 바친다.

작업의 일차 레포지토리는 인터넷 웹 사이트 <http://docutils.sourceforge.net/>\ 이다.
작업은 독유틸즈 프로젝트의 서브버전 레포지토리(인터넷 호스트 docutils.svn.sourceforge.net의 파일 시스템의 /svnroot/docutils 경로)의 "docutils" 모듈내의 파일로 이루어지며 웹 인터페이스는 <http://docutils.svn.sourceforge.net/viewvc/docutils/>\ 이다.
퍼블릭 도메인에 기여된 파일은 각 파일의 시작 부근에 다음 형식의 내용이 추가된다.::

    Copyright: This document/module/DTD/stylesheet/file/etc. has been
               placed in the public domain.

기여자는 기여자의 상속자가 아닌 공공의 이익을 위해 이러한 기여를 행한다.

Dedicator intends this dedication to be an overt act of relinquishment in
perpetuity of all present and future rights under copyright law,
whether vested or contingent, in the Work.  Dedicator understands that
such relinquishment of all rights includes the relinquishment of all
rights to enforce (by lawsuit or otherwise) those copyrights in the
Work.

Dedicator recognizes that, once placed in the public domain, the Work
may be freely reproduced, distributed, transmitted, used, modified,
built upon, or otherwise exploited by anyone for any purpose,
commercial or non-commercial, and in any way, including by methods
that have not yet been invented or conceived.

(This dedication is derived from the text of the `Creative Commons
Public Domain Dedication`. [#]_)

.. [#] Creative Commons has `retired this legal tool`__ and does not
   recommend that it be applied to works: This tool is based on United
   States law and may not be applicable outside the US. For dedicating new
   works to the public domain, Creative Commons recommend the replacement
   Public Domain Dedication CC0_ (CC zero, "No Rights Reserved"). So does
   the Free Software Foundation in its license-list_.

   __  http://creativecommons.org/retiredlicenses
   .. _CC0: http://creativecommons.org/about/cc0

Exceptions
==========

The exceptions to the `Public Domain Dedication`_ above are:

* docutils/writers/s5_html/themes/default/iepngfix.htc:

      IE5.5+ PNG Alpha Fix v1.0 by Angus Turnbull
      <http://www.twinhelix.com>.  Free usage permitted as long as
      this notice remains intact.

* docutils/utils/math/__init__.py,
  docutils/utils/math/latex2mathml.py,
  docutils/writers/xetex/__init__.py,
  docutils/writers/latex2e/docutils-05-compat.sty,
  docs/user/docutils-05-compat.sty.txt,
  docutils/utils/error_reporting.py,
  docutils/test/transforms/test_smartquotes.py:

  Copyright © Günter Milde.
  Released under the terms of the `2-Clause BSD license`_
  (`local copy <licenses/BSD-2-Clause.txt>`__).

* docutils/utils/smartquotes.py

  Copyright © 2011 Günter Milde,
  based on `SmartyPants`_ © 2003 John Gruber
  (released under a 3-Clause BSD license included in the file)
  and smartypants.py © 2004, 2007 Chad Miller.
  Released under the terms of the `2-Clause BSD license`_
  (`local copy <licenses/BSD-2-Clause.txt>`__).

  .. _SmartyPants: http://daringfireball.net/projects/smartypants/

* docutils/utils/math/math2html.py,
  docutils/writers/html4css1/math.css

  Copyright © Alex Fernández
  These files are part of eLyXer_, released under the `GNU
  General Public License`_ version 3 or later. The author relicensed
  them for Docutils under the terms of the `2-Clause BSD license`_
  (`local copy <licenses/BSD-2-Clause.txt>`__).

  .. _eLyXer: http://www.nongnu.org/elyxer/

* docutils/utils/roman.py, copyright by Mark Pilgrim, released under the
  `Python 2.1.1 license`_ (`local copy`__).

  __ licenses/python-2-1-1.txt

* tools/editors/emacs/rst.el, copyright by Free Software Foundation,
  Inc., released under the `GNU General Public License`_ version 3 or
  later (`local copy`__).

  __ licenses/gpl-3-0.txt

The `2-Clause BSD license`_ and the Python licenses are OSI-approved_
and GPL-compatible_.

Plaintext versions of all the linked-to licenses are provided in the
licenses_ directory.

.. _sandbox: http://docutils.sourceforge.net/sandbox/README.html
.. _licenses: licenses/
.. _Python 2.1.1 license: http://www.python.org/2.1.1/license.html
.. _GNU General Public License: http://www.gnu.org/copyleft/gpl.html
.. _2-Clause BSD license: http://www.spdx.org/licenses/BSD-2-Clause
.. _OSI-approved: http://opensource.org/licenses/
.. _license-list:
.. _GPL-compatible: http://www.gnu.org/licenses/license-list.html
