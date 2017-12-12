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
일부 면책사항을 아래에 제시하였다.
샌드박스_\ 의 파일은 독유틸즈 배포판과 같이 배포되지 않으며 별개의 라이선스 조항을 가질 수 있다.


퍼블릭 도메인 기증
================================================

자신의 작업물을 이 프로젝트에 연관시킨 사람(이하 "기여자": 데이비드 굿저와 많은 독유틸즈 프로젝트 기여자)들은
아래에 명시한 몇가지 예외를 제외하고 아래의 "독유틸즈"로 알려진 저작권 작업(이하 "저작물")의 전체 저작권을 퍼블릭 도메인에 바친다.

저작물의 일차 레포지토리는 인터넷 웹 사이트 <http://docutils.sourceforge.net/>\ 이다.
저작물은 독유틸즈 프로젝트의 서브버전 레포지토리(인터넷 호스트 docutils.svn.sourceforge.net의 파일 시스템의 /svnroot/docutils 경로)의 "docutils" 모듈내의 파일로 이루어지며 웹 인터페이스는 <http://docutils.svn.sourceforge.net/viewvc/docutils/>\ 이다.
퍼블릭 도메인에 기여된 파일은 각 파일의 시작 부근에 다음 형식의 내용이 추가된다.::

    Copyright: This document/module/DTD/stylesheet/file/etc. has been
               placed in the public domain.

기여자는 기여자의 상속자가 아닌 공공의 이익을 위해 이러한 기여를 행한다.
기여자는 작업에 대한 이러한 기여가 저작물에 대해 미리 확보된 혹은 앞으로 발생할 현재 및 미래의 저작권법상의 모든 권리의 소유를 포기하는 행위임을 인지한다.
기여자는 이러한 권리의 포기가 작업의 저작권을 강제하는 소송 및 기타 행위에 대한 권리의 포기도 포함하고 있음을 이해한다.

기여자는 퍼블릭 도메인에서 저작물이 영리 또는 비영리 목적으로 아직 알려지지 않은 방법을 포함하여 어떤 방법으로든 자유롭게 재생산, 배포, 전송, 사용, 수정, 빌드 및 기타의 방법으로 이용된다는 점을 인식한다.

(이 기증문은 `크리에이티브 커먼즈 퍼블릭 도메인 기증`\ 에서 파생하였다. [#]_)

.. [#] 크리에이티브 커먼즈는 `이 법률적 도구를  더이상 사용하지 않으며`__ 
   작업물에 적용하는 것을 권장하지 않는다. 이 도구는 미합중국 법률에 기반한 것으로 미합중국 외부에서는 적용되지 않을 수 있다.
   크리에이티브 커먼즈는 퍼블릭 도메인에 새로운 저작물을 기증할 때 
   Public Domain Dedication CC0_ (CC zero, "No Rights Reserved")와 자유 소프트웨어 제단의 `라이선스 목록`_ 중에서 
   사용할 것을 권장한다.

   __  http://creativecommons.org/retiredlicenses
   .. _CC0: http://creativecommons.org/about/cc0

면책사항
==========

위의 `퍼블릭 도메인 기증`_ 에 대한 면책사항은 다음과 같다.

* docutils/writers/s5_html/themes/default/iepngfix.htc:

      IE5.5+ PNG Alpha Fix v1.0 by Angus Turnbull
      <http://www.twinhelix.com>.  이 경고문이 변경없이 남아있는한 자유로운 사용이 허용된다.

* docutils/utils/math/__init__.py,
  docutils/utils/math/latex2mathml.py,
  docutils/writers/xetex/__init__.py,
  docutils/writers/latex2e/docutils-05-compat.sty,
  docs/user/docutils-05-compat.sty.txt,
  docutils/utils/error_reporting.py,
  docutils/test/transforms/test_smartquotes.py:

  저작권 © Günter Milde.
  `2조항 BSD 라이선스`_\ 의 조항에 따라 배포.
  (`복제본 <licenses/BSD-2-Clause.txt>`__).

* docutils/utils/smartquotes.py

  저작권 © 2011 Günter Milde,
  `SmartyPants`_ © 2003 John Gruber 와
  (이 파일에 포함된 3조항 BSD 라이선스의 조항에 따라 배포)
  smartypants.py © 2004, 2007 Chad Miller 에 기반 
  `2조항 BSD 라이선스`_\ 의 조항에 따라 배포.
  (`복제본 <licenses/BSD-2-Clause.txt>`__).

  .. _SmartyPants: http://daringfireball.net/projects/smartypants/

* docutils/utils/math/math2html.py,
  docutils/writers/html4css1/math.css

  저작권 © Alex Fernández
  이 파일은 eLyXer_\ 의 일부로,
  `GNU General Public License`_\ 버전 3 이후에 따라 배포. 
  저자는  `2조항 BSD 라이선스`_\ 의 조항에 따라 독유틸즈에 라이선스를 줌.
  (`복제본 <licenses/BSD-2-Clause.txt>`__).

  .. _eLyXer: http://www.nongnu.org/elyxer/

* docutils/utils/roman.py, Mark Pilgrim에 의한 저작권 소유, 
  `파이썬 2.1.1 라이선스`_ (`복제본`__).

  __ licenses/python-2-1-1.txt

* tools/editors/emacs/rst.el, 자유 소프트웨어 제단에 의한 저작권 소유.
  Inc., released under the `GNU General Public License`_ version 3 or
  later (`복제본`__).

  __ licenses/gpl-3-0.txt

`2조항 BSD 라이선스`_ 와 파이썬 라이선스는 `OSI-인증`_\ 이며 `GPL-호환`_\ 이다.

링크된 모든 라이선스의 본문은 licenses_ 디렉토리에 있다.

.. _샌드박스: http://docutils.sourceforge.net/sandbox/README.html
.. _licenses: licenses/
.. _파이썬 2.1.1 라이선스: http://www.python.org/2.1.1/license.html
.. _GNU General Public License: http://www.gnu.org/copyleft/gpl.html
.. _2조항 BSD 라이선스: http://www.spdx.org/licenses/BSD-2-Clause
.. _OSI-인증: http://opensource.org/licenses/
.. _라이선스 목록:
.. _GPL-호환: http://www.gnu.org/licenses/license-list.html
