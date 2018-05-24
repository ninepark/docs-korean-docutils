.. -*- coding: utf-8 -*-


.. 관리자 주의 사항: 새로운 질문은 각 절의 마지막에 덧붙여서 절과 질문의 번호가
   바뀌지 않도록 한다.


======================================================================================
 독유틸즈에 대해 자주 물어보는 질문들(FAQ: Frequently Asked Questions)
======================================================================================

:날짜: $Date$
:리비전: $Revision$
:웹사이트: http://docutils.sourceforge.net/
:저작권: 이 문서는 퍼블릭 도메인에 속한다.

.. contents::
.. sectnum::


이 작업은 계속 진행 중이다. 만약 복사본을 읽고 있다면 `마스터 문서`_\ 가 더 새로운 문서이다.
이 문서에는 상대 경로 링크들이 포함되어 있는데 만약 동작하지 않는다면 `마스터 문서`_\ 을 이용하라.

`독유틸즈 사용자`_ 메일링 리스트로 이 메일을 보내 자유롭게 질문을 하거나 대답을 작성해 줄 수 있다.
프로젝트 멤버들은 소스 텍스트 파일을 직접 고칠 수도 있다.

.. _마스터 문서: https://veranostech.github.io/docs-korean-docutils/docutils/FAQ_ko.html
.. _연락 바람:
.. _독유틸즈 사용자: docs/user/mailing-lists.html#Docutils-users



독유틸즈
================

독유틸즈란 무엇인가?
----------------------------------


독유틸즈_ 는 일반 텍스트 문서를 처리하여 HTML, XML, LaTeX과 같은 유용한 형식으로
바꾸기 위한 시스템이다. 독립 파일(구현되었다.),
파이썬 모듈과 패키지내의 인라인 문서(구현중이다.),
`파이썬 개선 제안(PEP)`_\ (구현되었다.) 등
여러가지 입력 형식을 지원한다.

독유틸즈 배포판은 다음처럼 구성된다.:

* 라이브러리("docutils" 패키지), `클라이언트 코드에서 자유롭게 사용`_\ 할 수 있다.
* (리스트럭처드텍스트를 HTML로 바꾸는 ``rst2html.py`` 과 같은) 몇가지 `프론트엔드 도구`_
* `테스트스위트`_
* 방대한 문서_.

독유틸즈 프로젝트 개요에 대한 사항은 `PEP 258`_,
"독유틸즈 설계 상세서(Docutils Design Specification)"를 참조한다.

독유틸즈는 파이썬_\ 으로 구현되었다.

.. _독유틸즈: http://docutils.sourceforge.net/
.. _`파이썬 개선 제안(PEP)`: http://www.python.org/peps/pep-0012.html
.. _클라이언트 코드에서 자유롭게 사용: docs/api/publisher_ko.html
.. _프론트엔드 도구: docs/user/tools_ko.html
.. _테스트스위트: docs/dev/testing_ko.html
.. _문서: docs/index_ko.html
.. _PEP 258: http://www.python.org/peps/pep-0258.html
.. _파이썬: http://www.python.org/


왜 "독유틸즈(Docutils)"라고 부르는가?
--------------------------------------------------------

독유틸즈(Docutils)는 "파이썬 문서화 유틸리티(Python Documentation Utilities)"의 줄임말이다.
그렉 와드(Greg Ward)가 설계한 파이썬 배포 유틸리티로 파이썬의 표준 라이브러리인 "Distutils" 패키지에서 영감을 받았다.

독유틸즈라는 이름이 파이썬에서 처음 쓰인 것은 1999년 12월 2일 프레드 드레이크(Fred Drake)가
파이썬 Doc-SIG 메일링리스트에 보낸 메세지에서 잠깐 `언급`__\ 한 때다.
2000년 11월 27일에는 Doc-SIG에서 토니 "팁스" 이비(Tony "Tibs" Ibbs)가
"이걸 대체 뭐라고 부르죠?"라고 한 질문에 대해 프레드 드레이크가 대답할 때
프로젝트 이름으로 다시 `제안`__\ 되었다.
이는 데이비드 굿저(David Goodger)가 리스럭처드텍스트(reStructuredText)를
Doc-SIG에 최초로 `발표`__\ 한 직후였다.

팁스는 "독유틸즈"란 이름을
문서화 문자열(documentation strings)을 포함하여
파이썬 독유틸즈 패키지가 지원해야 할 사항을 문서화할 때 이 이름을 `사용`__\ 하였다.
팁스는 이 프로젝트에 참여하였고 너그럽게 그 이름을 프로젝트에 기증하였다.

리스트럭처드텍스트와 독유틸즈 프로젝트의 역사에 대한 더 자세한 내용은
`리스트럭처드텍스트의 소개`_\ 를 참조한다.

철자가 "DocUtils"나 "Doc-Utils"Docutils" 등이 아니고 "Docutils"임에 주의한다.
발음할 때는 독유틸즈라고 한다.

.. _리스트럭처드텍스트의 소개: docs/ref/rst/introduction_ko.html
__ http://mail.python.org/pipermail/doc-sig/1999-December/000878.html
__ http://mail.python.org/pipermail/doc-sig/2000-November/001252.html
__ http://mail.python.org/pipermail/doc-sig/2000-November/001239.html
__ http://homepage.ntlworld.com/tibsnjoan/docutils/STpy.html


독유틸즈용 GUI 저작 도구가 있는가?
--------------------------------------------------

DocFactory_\ 가 개발중이다. wxPython을 사용하며 유망하게 보인다.

.. _DocFactory:
   http://docutils.sf.net/sandbox/gschwant/docfactory/doc/


독유틸즈 프로젝트의 상황은 어떤가?
---------------------------------------------------------------------

독유틸즈는 유용하고 상대적으로 안정적이지만, 여전히 실험용 코드이며
API와 구조적인 주제들이 바뀔 수 있다.

우리의 최우선 순위는 보고된 버그를 잡는 것이다.
따라서 레포지토리_\ (또는 스냅샷_)은 항상 버그 없이 안정적이고
기능도 가장 많이 포함한다.


독유틸즈 프로젝트의 배포 정책은?
--------------------------------------------

"빨리 그리고 자주" 배포하는 것이다.
스냅샷_\ 은 레포지토리_\ 의 최신코드를 포함하여 자동으로 생성된다.
프로젝트가 성숙해지면 안정/개발-브랜치 방식을 사용하게 될 것이지만
지금은 그런 것을 사용하지 않는다.

.. _레포지토리: docs/dev/repository.html
.. _스냅샷: http://docutils.sourceforge.net/#download


리스트럭처드텍스트
================================================================

리스트럭처드텍스트(reStructuredText)는 무엇인가?
---------------------------------------------------------------------------

리스트럭처드텍스트_\ (reStructuredText)는 읽기 쉽고 좋고 보이는 것 그대로 결과가 나오는 평문 마크업 문법과 파싱 시스템이다.
(파이썬 독스트링과 같은) 인라인 프로그램 문서나 간단한 웹페이지, 혹은 독립적인 문서를 만들때 유용하다.
StructuredText_ 와 Setext_ 간편 마크업 시스템의 재해석한 개정판으로 제안한 것이 바로 리스트럭처드텍스트_\ 이다.

만약 이 문서를 웹에서 보고 잇다면
`이 문서의 소스코드 <https://raw.githubusercontent.com/VeranosTech/docs-korean-docutils/docs-korean/docutils/FAQ_ko.rst>`_
링크를 이용하여 리스트럭처드텍스트로 씌여진 소스코드를 볼 수 있다.
소스코드를 옆 창에 열어놓고 비교해 보아라.

`리스트럭처드텍스트 입문`_\ 과 `빠른 리스트럭처드텍스트`_\ 는
출발점으로 좋은 문서이다.
`리스트럭처드텍스트 마크업 상세`_\ 는 자세한 기술 명세서다.

.. _리스트럭처드텍스트 입문: docs/user/rst/quickstart_ko.html
.. _빠른 리스트럭처드텍스트: docs/user/rst/quickref_ko.html
.. _리스트럭처드텍스트 마크업 상세: docs/ref/rst/restructuredtext_ko.html
.. _리스트럭처드텍스트: https://veranostech.github.io/docs-korean-docutils/web/rst_ko.html
.. _StructuredText: http://dev.zope.org/Members/jim/StructuredTextWiki/FrontPage/
.. _Setext: http://docutils.sourceforge.net/mirror/setext.html


왜 "리스트럭처드텍스트"라고 부르는가
------------------------------------------------------------------------

이 단어는 리스트럭처드텍스트의 선조격인 "스트럭처드텍스트(StructuredText)"와
"개정(revised)", "재작업(reworked)",  "재해석(reinterpreted)", 그리고
정규 표현식(regular expression) 모듈을 뚯하는
"re"라는 단어를 합성한 것이다.

리스트럭처드텍스트와 독유틸즈의 자세한 역사에 대해서는 `리스트럭처드텍스트의 소개`_
문서를 참조한다.


"리스트럭처드텍스트(reStructuredText)"는 **두 단어가 아니라 한 단어**\ 다!


리스트럭처드텍스트의 표준 약자는?
--------------------------------------------------------

"RST"와 "ReST"(또는 "reST") 둘 다 사용할 수 있다.
대문자를 사용할 때는 "Representational State Transfer"을 뜻하는
"REST__"와 혼동되지 않도록 주의해야 한다.

"reSTX"나 "rSTX", "rstx"는 Zope의 스트럭처드텍스트를 강조하는 표현이므로 사용하면 안된다.

__ http://en.wikipedia.org/wiki/Representational_State_Transfer


리스트럭처드텍스트의 표준 파일 확장자는?
-------------------------------------------------------------------

".txt"이다.  몇몇은 ".rest", ".rst", ".restx"를 사용하는데 그럴 필요가 있는가?
리스트럭처드텍스트 소스코드는 읽기 쉬운 평문이고 대부분의 운영체제는 이미
텍스트 파일에 대해 ".txt" 확장자를 사용한다. 특별한 파일 확장자를 사용하면
사용자가 운영체제 설정을 바꿔야 하고 대부분의 사용자가 그렇게 할 수 없거나
하기 싫어한다.

`리스트럭처드텍스트의 공식 MIME 타입은?`_ 질문을 참조하라.


리스트럭처드텍스트용 편집기 확장 프로그램이 있는가?
-----------------------------------------------------------------------------------

`리스트럭처드텍스트를 위한 편집기 지원`__ 참조.

__ tools/editors/README_ko.html


문서의 제목과 부제목을 어떻게 지정하는가?
-----------------------------------------------------------

문서의 시작부분에서 다른 절 제목들과 구분되는 유일한 형식으로 장식한 절 제목은 특별히
문서 제목으로 취급한다.
비슷하게 문서 제목 바로 다음에 오면서 다른 절 제목들과 구분되는 유일한 형식으로 장식한 절 제목은
문서의 부제목(subtitle)으로 취급한다.

예::

    이것은 문서 제목입니다.
    =======================

    이것은 문서 부제목입니다.
    -------------------------

    이것은 문서의 본문입니다.

잘못된 예::

    이것은 문서의 본문입니다.

    이것은 문서 제목이 **아닙니다.**
    ================================

    절 제목 위에 본문이 오면 절 제목은 문서 제목이 되지 못합니다.

또다른 잘못된 예::

    이것도 문서 제목이 아닙니다. 왜나하면...
    ========================================

    이것은 문서의 본문입니다.

    ... 제목 장식이 다른 것들과 구분되지 않기 때문입니다.
    =====================================================

    이것은 문서의 본문입니다.


문서에서 특수 글자는 어떻게 표시하는가?
--------------------------------------------------------------------------------

예를 들어 문서에 엠-대시(em-dash. XML 캐릭터로는 &mdash;,
유니코드로는 U+2014)를 넣고 싶다고 하자. 그러면 진짜 엠-대시를 사용하면 된다.
실제 캐릭터를 입력 파일에 넣고(**진짜로** 엠-대시를 타이핑한다.)
애플리케이션에 맞는 인코딩을 하여 독유틸즈에 지시한다.
독유틸즈는 내부적으로 유니코드를 사용하므로 엠-대시 캐릭터는
내부적으로 진짜 엠-대시로 취급된다.

이맥스 사용자는 `이맥스의 리스트럭처드텍스트 지원`__
문서를 참조한다.  다른 에디터도 지원하면 알려주기 바란다.

__ tools/editors/emacs/README_ko.html

리스트럭처드텍스트는 캐릭터 개체 서브시스템을 가지지 않는다.
XML 캐릭터에 대해서는 전혀 알지 못한다.
독유틀즈에게 입력 텍스트에 있는  "&mdash;" 글자는
그냥 7개의 캐릭터일 뿐이다. 어떠한 해석도 이루어지지 않는다.
HTML을 출력하면 "&"가 "&amp;"로 변환된다. 따라서
HTML 소스코드에서는 "&amp;mdash;"로 보여진다.
인라인 리터럴(literals)이나 리터럴 블럭(literals block) 내부의
텍스트를 해설할 때도 마찬가지다. 어떤 경우에도 캐릭터 개체
해석은 없다.

만약 유니코드 호환 인코딩을 사용할 수 없고 7비트 아스키코드만 써야 한다면
돌아가는 방법이 있기는 하다.
독유틸즈 0.3.10에는 `표준 치환 정의 집합(Standard Substitution Definition Sets)`_\ 이 추가되었다.
이를 사용하면 치환 정의(substitution definitions)를 사용하여
XML이나 HTML 캐릭터를 넣을 수 있다.
예를 들어 일본 엔화 표시는 다음과 같이 쓸 수 있다.

    .. include:: <xhtml1-lat1.txt>

    식사가 |yen| 600이라고?  정말 싸네!

옛날 버전의 독유틸즈에서는
캐릭터 개체 셋의 치환 정의를 할 때 "unicode_" 지시어를 사용할 수 있다.
아이디어를 제공해준 데이비드 프리스트(David Priest)에게 감사한다.

만약 XML 스타일의 캐릭터 개체를 사용해야 한다면
UTF-8이나 비슷한 걸로 변환하는 전처리기를 직접 구현해야 한다.
하지만 이렇게 하면 더이상 캐릭터 개체를 자연스럽게 사용할 수 없기 때문에
상황이 복잡해진다.
"&mdash;"라고 쓰는 대신에 "&amp;mdash;"라고 써야 할 것이다.

롱-대시(long dash)의 경우에도 ("unicode_" 지시자를 사용하여)
문서에 다음처럼 치환 정의를 넣을 수 있다.::

    .. |--| unicode:: U+2013   .. 엔-대시(en dash)
    .. |---| unicode:: U+2014  .. 엠-대시(em dash), 좌우의 공백을 없앰.
       :trim:

.. |--| unicode:: U+2013   .. 엔-대시(en dash)
.. |---| unicode:: U+2014  .. 엠-대시(em dash), 좌우의 공백을 없앰.
   :trim:

이렇게 하면 다음 처럼 순수 아스키코드로 대시를 사용할 수 있다.:
"``foo |--| bar; foo |---| bar``",
는 "foo |--| bar; foo |---| bar"로
보일 것이다(모질라와 파이어폭스에서는 잘 안보일 수도 있다.).

"``foo|---|bar``"라고는 쓸 수 없기 때문에 일단 공백을 넣고
리스트럭처드텍스트 파서가 공백을 없애도록 ``:trim:`` 옵션이 필요하다.

.. _표준 치환 정의 집합(Standard Substitution Definition Sets):
   docs/ref/rst/definitions_ko.html
.. _unicode: docs/ref/rst/directives.html#unicode-character-codes
.. _tarball: http://docutils.sourceforge.net/tmp/charents.tgz
.. _to-do list: docs/dev/todo.html


스칸디나비아 키보드에서 백틱(backtick, \`)은 어떻게 타이핑하나?
---------------------------------------------------------------------------------------------------------

스칸디나비아 키보드를 쓰면 백틱(backtick, \`)키가 없으므로
리스트럭처드텍스트에서 백틱 사용이 어렵다.
백틱(\`) 캐릭터를 쓰려면 SHIFT-` + SPACE를 눌러야 한다.

불행하게도 현재까지 나온 어떤 방법으로도 모든 사람을 만족시킬 수 있는 방법은 없다.

스칸디나비아 프로그래머와 기술서 작가의 경우, 이 상황은
리스트럭처드텍스트 뿐 아니라 다른 프로그래밍 언어와 환경에서도 마찬가지이다.

가능한 해결방법은 다음과 같다.

* 백틱을 많이 상요하지 않는다면 가장 단순한 방법으로 백틱을 하나 치고서는
  카피-페이스트(copy and then paste)를 한다.
  이 방법이 SHIFT-` + SPACE를 계속 치는 것보다는 빠르다.

* 키보드 마크로를 사용한다.

* 키보드 매핑을 바꾼다. 스칸디나비아 키보드 배열은 프로그래밍과 기술서용의
  다른 캐릭터도 사용하기 힘들다.
  예를 들어 []{} 기호들도 미국식 자판에 비해 치기 힘들게 되어 있다.

  Axel Kollmorgen을 인용하면,

      윈도우에서는 `Microsoft Keyboard Layout Creator
      <http://www.microsoft.com/globaldev/tools/msklc.mspx>`__\ 를 쓰면
      쉽게 백틱 키를 매핑할 수 있다.

* 가상 키보드 및 캐릭터 팔레트를 사용한다.:

  - `Web-based keyboards <http://keyboard.lab.co.il/>`__ (IE에서만 사용가능).
  - 윈도우: `Click-N-Type <http://www.lakefolks.org/cnt/>`__.
  - 맥 OS X: 선호하는 캐릭터를 쉽게 입력하도록 저장 가능한 캐릭터 팔레트.
    시스템 환경설정을 열고 언어 및 지역, 키보드 환경 설정의 키보드 탭에서
    "메뉴 막대에서 키보드 및 이모티콘 표시"를 설정한다.

만약 더 나은 방법이 있다면 `연락 바람`_\ .


HTML/XML을 리스트럭처드텍스트로 변환하는 도구가 있는가?
---------------------------------------------------------------------------------------

여러 사람들이 이 아이디어를 교류하였으며 `독유틸즈 링크 목록`_\ 에
몇가지 리스트럭처드텍스트 생성 도구가 구현되어 있다.

리스트럭처드텍스트에서 다시 XML로 변환하는것이 불가능한 이유는 없다.
기술적으로 구현이 안된다면 버그로 간주해야 한다.
공백은 같지 않아도 문단은 상관없다.
링크나 ID 처리와 같은 자잘한 부분에서 어려움이 있을 수는 있다.

링크와 ID, 기타 부기(bookkeeping)와 같은 작은 디테일에서는 좀 더 까다로워 질 수 있다.

HTML의 경우에는 완벽하게 변환하는 것이 불가능하다.
추가 클래스 속성을 많이 추가한다고 해도 어려울 수 있다.
"아주 간단한 HTML"(간단한 정도를 잘 정의하면)을 리스트럭처드텍스트로
변환하는 것은 가능하겠지만 HTML 자체가 단순한 형식화에 지나지 않기 때문에
변환기가 유용하지 않을 것이다.
80% 정도는 자동으로 변환하고 나머지 20%를 수동으로 변환하는 80/20 접근방법을 쓸 수도 있다.

.. _독유틸즈 링크 목록: docs/user/links_ko.html


리스트럭처드텍스트 문법을 사용하는 위키가 있는가?
-----------------------------------------------------------------------------

There are several, with various degrees of completeness.  With no
implied endorsement or recommendation, and in no particular order:

다양한 완성도의 여러 위키가 있다. 일체의 추천과 칭찬을 배제하여 무작위 순서로 정리한 목록은 다음과 같다.:

* `Ian Bicking'의 실험적인 코드
  <http://docutils.sf.net/sandbox/ianb/wiki/Wiki.py>`__

* `모인모인(MoinMoin) <http://moinmoin.wikiwikiweb.de/>`__\ 도 일부 지원한다.
  다음은 `샘플 <http://moinmoin.wikiwikiweb.de/RestSample>`__\ 이다.

* Zope 기반의 `Zwiki <http://zwiki.org/>`__

* Zope3 기반의 Zwiki (Zope 3 소스트리 ``zope.products.zwiki``)

* `StikiWiki <http://mithrandr.moria.org/code/stikiwiki/>`__

* `Trac <http://trac.edgewall.com//>`__ \ 도 위키 마크업의 대체품으로
  리스트럭처드텍스트 문법을
  `지원 <http://trac.edgewall.com//wiki/WikiRestructuredText>`__\ 한다.
  RST 참조 지시어나 'trac' 역할 지시자를 사용한 `TracLinks
  <http://trac.edgewall.com//wiki/TracLinks>`__\ 도 지원한다.

다른 리스트럭처드텍스트 지원 위키가 있다면 `연락 바람`_\ .

.. dead link
.. The example application for the `Web Framework Shootout
.. <http://colorstudy.com/docs/shootout.html>`__ article is a Wiki using
.. reStructuredText.


리스트럭처드텍스트 문법을 사용하는 블로그 프로젝트가 있는가?
-----------------------------------------------------------------------------

다음 목록은 특정한 순서를 따르지 않으며 특별히 어떤 것을 추천하지도 않는다.

* `Firedrop <http://www.voidspace.org.uk/python/firedrop2/>`__
* `PyBloxsom <http://pyblosxom.sourceforge.net/>`__
* `Lino WebMan <http://lino.sourceforge.net/webman.html>`__
* `Pelican <http://blog.getpelican.com/>`__
  (`PyPi <http://pypi.python.org/pypi/pelican>`__)

다른 리스트럭처드텍스트 지원 블로그가 있다면 `연락 바람`_\ .


.. _Can lists be indented without generating block quotes?:

어떻게 목록 마크업을 하는가?
------------------------------------------------------

`글머리 기호 목록`_ & `순서 목록`_ 마크업은 아주 직관적이지만
다음 두 가지를 주의해야 한다.

.. _글머리 기호 목록: docs/ref/rst/restructuredtext_ko.html#bullet-lists
.. _순서 목록: docs/ref/rst/restructuredtext_ko.html#enumerated-lists

1. 목록을 **들여쓰기하면 안된다**\ . 다음은 옳은 예이다.::

       문장

       * 목록 항목 1

         * 내포 항목 1.1
         * 내포 항목 1.2

       * 목록 항목 2

   다음은 틀린 예이다.::

       문장

         * 목록 항목 1

             * 내포 항목 1.1
             * 내포 항목 1.2

         * 목록 항목 2

   (항목 1.1이나 1.2처럼) 들여쓰기를 하면 블럭 인용(block quote)으로 간주한다.
   아마도 의도한 바와 다를 것이다.
   이렇게 하면 출력에서 목록이 너무 많이 들어가게 된다.

2. 같은 레벨의 항목인 경우만 제외하고 목록 항목 **앞뒤로 반드시 빈 줄**\ 이 있어야 한다.
   같은 레벨의 항목의 경우에는 빈 줄이 있어도 되고 없어도 된다.
   위 예제에서도 볼 수 있다.

*출력*\ 된 형식은 입력에 의존하지 않으며 출력기(writer)와 스타일시트에 의해 결정된다.
예를 들어 HTML 출력에서 리스트는 기본으로 들여쓰기 되지는 않는다.
자세한 내용은 `목록은 HTML에서 어떻게 보이나?`_ 항목을 참조한다.


블럭 인용을 만들지 않고 목록을 들여쓰기 할 수 있는가?
-----------------------------------------------------------------------------------------

어떤 사람들은 들여쓰기가 있는 목록을 쓰면서 블럭 인용을 만들지 않기를 바란다.
리스트럭처드텍스트에서 이것을 허용하는가에 대한 많은 토론이 있었다. 하지만
이렇게 구현하려면 몇가지 해결해야 할 이슈가 있다. 이 이슈에 대해 정리한 내용은
`앞으로 해야 할 일`__\ 을 참조한다.

__ docs/dev/todo.html#indented-lists


꼭 목록 앞뒤로 빈 줄이 있어야 하는가? 생략할 수 없나?
--------------------------------------------------------------

대답: 생략할 수 없다.

리스트럭처드텍스트에서는 목록의 앞뒤로 빈 줄(blank lines) 없이 목록을
마크업하거나 파싱할 수 없다. 빈 줄이 많으면 중첩된 목록이 보기 흉해질 수 있지만
불명확한 마크업을 피하기 위해 치루어야 할 대가이다.
몇몇 다른 텍스트기반 마크업 시스템은 중첩된 목록에서 빈 줄을 요구하지 않는다.
그 대신 더 불명확해 지거나 복잡하게 된다.
예를 들어, `Epytext <http://epydoc.sf.net/epytext.html#list>`_\ 에서는
목록 앞뒤로 빈 줄이 필요없지만 대신 목록 자체를 들여쓰기 해야 하고
불명확한 경우를 피해야 한다.


문서에 수학식을 포함할 수 있나?
------------------------------------------------------

`수학 지시자(math directive)`_\ 와 `수학 역할자(math role)`_\ 를 사용한다.
독유틸즈 0.8 이후 버전에서 사용할 수 있다.

.. _수학 지시자(math directive): docs/ref/rst/directives_ko.html#math
.. _수학 역할자(math role): docs/ref/rst/roles_ko.html#math


인라인 마크업을 중첩하는 것도 가능한가?
-----------------------------------------------------------

현재로서는 불가능하다.
`앞으로 해야 할 일`__ (`세부사항은 여기에`__)\ 에 나와있다.
리스트럭처드텍스트 파서에 곧 포함되기를 바란다.
포함되면 다음과 같은 마크업도 가능해 진다.::

    이 글은 *`하이퍼링크`_\ 와
    ``인라인 리터럴``\ 을 포함하는 텍스트 강조*\ 의 예이다..

__ docs/dev/todo.html#nested-inline-markup
__ docs/dev/rst/alternatives.html#nested-inline-markup

해결 방법이 있지만, 꼬이거나 보기 안좋아지므로 권장하지 않는다.

* 인라인 마크업과 하이퍼링크를 결합하려면
  `치환 정의(substitution_definition)`__\ 와
  `참조(reference)`__\ 를
  `"replace" 지시자`__\ 와 같이 사용하면 된다.
  다음은 예문이다.::

      이것은 |강조표시된 하이퍼링크|_\ 이다..

      .. |강조표시된 하이퍼링크| replace:: *강조표시된 하이퍼링크*
      .. _강조표시된 하이퍼링크: http://example.org

  하이퍼링크의 일부분만 치환하는 것은 불가능하다.
  전체를 치환하거나 아예 치환하지 않아야 한다.

  __ docs/ref/rst/restructuredtext_ko.html#substitution-definitions
  __ docs/ref/rst/restructuredtext_ko.html#substitution-references
  __ docs/ref/rst/directives_ko.html#replace

* `"raw" 지시자`__\ 를 사용하여 HTML 문을 HTML 출력에 삽입할 수 있다.::

      이것은 |stuff|\ 이다.

      .. |stuff| raw:: html

         <em>
         <a href="http://example.org">하이펄링크</a>와
         <tt>인라인 리터럴</tt>을 동시에 가지면서
         강조표시가 된 예
         </em>

  LaTeX 출력인 경우에는 LaTeX 명령을 삽입할 수도 있다.

  __ docs/ref/rst/directives_ko.html#raw


강제개행 또는 의미있는 개행을  어떻게 표시하나?
------------------------------------------------------

`라인 블록`__ 은 주소 블록, 절, 그리고 강제개행이 의미있거나 반드시 유지되어야 할때를 위해 마련된 기능이다.
일반적인 리터럴 블록과는 달리 타입페이스(typeface)가 바뀌지 않으며 인라인 마크업 역시 인식된다. 예를 들면::

    | A one, two, a one two three four
    |
    | Half a bee, philosophically,
    |     must, *ipso facto*, half not be.
    | But half the bee has got to be,
    |     *vis a vis* its entity.  D'you see?
    |
    | But can a bee be said to be
    |     or not to be an entire bee,
    |         when half the bee is not a bee,
    |             due to some ancient injury?
    |
    | Singing...

__ docs/ref/rst/restructuredtext.html#line-blocks

수동으로 명시된 강제개행을 HTML 아웃풋에 삽입해야 할 경우의 또다른 해결책은 다음과 같다::

    .. |br| raw:: html

       <br />

    여기서 강제개행을 하고 싶다: |br| 여긴 개행 이.

    혹시 여분의 공백이 신경 쓰인다면, |br|\ 백슬래쉬-이스케이프를 하시오.


별표가 들어가있는 URL이 동작하지 않면 어떻게 해야하나?
-----------------------------------------------------

별표는 URL에 사용가능한 문자로 (참조 :RFC:`2396`), 종 URL에 사용되곤 한다. 예를 들면 다음과 같다::

    http://cvs.example.org/viewcvs.py/*checkout*/module/file

안타깝게도 파서는 별표를 강조 표시로 받아들인다. 슬래쉬는 구두점을 나타내는 용도로 사용되며 별표들을 마크업으로 인지하게 된다.
위의 예시를 파서를 사용하여 결절된 URL (truncated URL), 강조문구, 일반 텍스트들로 구분하면 다음과 같이 표현된다::

    http://cvs.example.org/viewcvs.py/
    *checkout*
    /module/file

마크업 인식을 차단하기 위해서는 백슬래쉬를 적어도 첫번째 별표에 적용하여 다음과 같이 이스케이프 시켜야한다::

    http://cvs.example.org/viewcvs.py/\*checkout*/module/file

두번째 별표에 이스케이핑을 적용해도 문제될 것은 없지만 꼭 해야할 필요는 없다.


일련의 포매팅을 지닌 리터럴 블록을 어떻게 만들수 있는가?
------------------------------------------------------

`파싱된 리터럴`_ 디렉티브를 사용하면 된다.

.. _파싱된 리터럴: docs/ref/rst/directives.html#parsed-literal

시나리오: 강제개행과 공백을 유지하기 위해 리터럴 블록을 호출하는 소스코드를 지닌 문서가 있고
문서 내 소스코드의 일부가 강조 표시 혹은 하이퍼링크와 같이 포매팅이 되어야 할 때 파싱된 리터럴 블록을 사용한다::

    .. parsed-literal::

       print "Hello world!"  # *tricky* code [1]_

강조문구 (``*tricky*``) 와 주석 참조 (``[1]_``) 가 파싱될 것이다.


리스트럭처드텍스트를 웹 혹은 일반적 템플레이팅에 활용 가능한가?
-----------------------------------------------------------

Docutils and reStructuredText can be used with or as a component of a
templating system, but they do not themselves include templating
functionality.  Templating should simply be left to dedicated
templating systems.  Users can choose a templating system to apply to
their reStructuredText documents as best serves their interests.

There are many good templating systems for Python (ht2html_, YAPTU_,
Quixote_'s PTL, Cheetah_, etc.; see this non-exhaustive list of `some
other templating systems`_), and many more for other languages, each
with different approaches.  We invite you to try several and find one
you like.  If you adapt it to use Docutils/reStructuredText, please
consider contributing the code to Docutils or `연락 바람`_ and we'll
keep a list here.

One reST-specific web templating system is `rest2web
<http://www.voidspace.org.uk/python/rest2web>`_, a tool for
automatically building websites, or parts of websites.

.. _ht2html: http://ht2html.sourceforge.net/
.. _YAPTU:
   http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/52305
.. _Quixote: http://www.mems-exchange.org/software/quixote/
.. _Cheetah: http://www.cheetahtemplate.org/
.. _some other templating systems:
   http://webware.sourceforge.net/Papers/Templates/


How can I mark up a FAQ or other list of questions & answers?
-------------------------------------------------------------

There is no specific syntax for FAQs and Q&A lists.  Here are two
options:

1. For a FAQ (Frequently Asked Questions, usually with answers), a
   convenient way to mark up the questions is as section titles, with
   the answer(s) as section content.  This document is marked up in
   this way.

   The advantages of using section titles for questions are: sections
   can be numbered automatically, and a table of contents can be
   generated automatically.  One limitation of this format is that
   questions must fit on one line (section titles may not wrap, in the
   source text).  For very long questions, the title may be a summary
   of the question, with the full question in the section body.

2. Field lists work well as Q&A lists::

       :Q: What kind of questions can we
           put here?

       :A: Any kind we like!

   In order to separate questions, lists can be used:

       1. :Q: What kind of question can we
              put here?
          :A: Any kind we like!

       2. :Q: How many answers can a question have?
          :A: It can have one,
          :A: or more.
          :A3: Answers can be numbered like this.
          :A: 1. Or like this.
              2. We're flexible!

   If you don't want to number or otherwise mark questions, you can
   use an empty comment between individual field lists to separate
   them::

       :Q: First question?
       :A: Answer.

       ..

       :Q: Second question?
       :A: Answer.


.. _bidi:

Can I produce documents in right-to-left languages?
---------------------------------------------------

Languages written from right to left, such as Arabic and Hebrew, must
be reordered according to the `Unicode Bidi Algorithm`_.  This
requires support from the editor and special markup in the output
format.

The source format of reStructuredText is relatively bidi-friendly:
most constructs are denoted by punctuation without intrusion of
English and when you must write in English, it's usually on a separate
line.  So any editor that auto-detects direction per-line (like gedit
or geresh_) will suffice.

Moreover, it's possible to translate_ all reStructuredText keywords.
This was not yet done for any RTL language, but when it is, it will be
possible to write an RTL document with vitually no English.  This will
allow reasonable use of editors limited to a single base direction for
the whole document (like Notepad, Vim and text boxes in Firefox).

.. _Unicode Bidi Algorithm: http://www.unicode.org/reports/tr9/
.. _geresh: http://www.typo.co.il/~mooffie/geresh/
.. _translate: docs/howto/i18n.html

The second problem is bidi markup of the output.  There is an almost
transparent implicit solution for HTML:

* Grab http://cben-hacks.sourceforge.net/bidi/hibidi.py and
  http://cben-hacks.sourceforge.net/bidi/rst2html_hibidi.py.
  Put them both in the same directory and make them executable.

* Use ``rst2html_hibidi.py`` instead of ``rst2html.py``.

* It infers dir attributes in the HTML from the text.  It does it
  hierachically, giving much better results than usual.  You can still
  use LRM/RLM and LRE/RLE/PDF control codes to help it.

  * If you want the gory details: See the full theory_, and note the
    incomplete practice_ (this is still a partial implementation - but
    sufficient for most needs).

    .. _theory: http://cben-hacks.sf.net/bidi/hibidi.html
    .. _practice: http://cben-hacks.sf.net/bidi/hibidi.html#practice

There is also an explicit way to set directions through CSS and
classes in the HTML:

* Copy ``default.css`` to a new file and add relevant parts of the
  following::

      /* Use these two if the main document direction is RTL */
      body { direction: rtl; }
      div.sidebar { float: left !important; }

      /* The next 3 rules are very useful in documents containing pieces
      of code in english */
      /* Use this if you all your literal blocks (::) are LTR */
      pre {direction: ltr; unicode-bidi: embed; }
      /* Use this if you all your inline literals (``) are LTR */
      tt {direction: ltr; unicode-bidi: embed; }
      /* Use this if you all your interpretted text (`) is LTR */
      cite {direction: ltr; unicode-bidi: embed; }

      /* Allow manual direction override by class directive and roles */
      .rtl { direction: rtl; }
      .ltr { direction: ltr; }

* Select this new stylesheet with ``--stylesheet=<file>`` or the
  stylesheet_ setting.

* Now if you need to override the direction of some element (from a
  paragraph to a whole section), write::

      .. class:: rtl

  or::

      .. class:: ltr

  before it (see the class_ directive for details).

* To change the direction of some inline text fragment, you can use
  RLE/LRE/PDF control characters, or write ``:rtl:`RTL text``` /
  ``:ltr:`RTL text```.  To use the latter syntax, you must write this
  once at the beginning of your document::

      .. role:: ltr
      .. role:: rtl

.. _stylesheet: docs/user/config.html#stylesheet
.. _class: docs/ref/rst/directives.txt#class

LaTeX is quite hard to implement (it doesn't support the bidi
algorithm, so all direction changes - even numbers in RTL text - must
be explicitly marked).  Other formats are more-or-less easy.

If you have any questions/problems/bugs related to bidi with docutils,
ask `Beni Cherniavsky`__ directly or the `독유틸즈 사용자`_ mailing
list.

__ mailto:cben@users.sf.net


리스트럭처드텍스트의 공식 MIME 타입은?
--------------------------------------------------------

While there is no registered MIME type for reStructuredText, the
"official unofficial" standard MIME type is "text/x-rst".  This was
invented for the build system for 파이썬 개선 제안(PEP: Python Enhancement Proposals),
and it's used by the python.org web site build system.

(The "x-" prefix means it's an unregistered MIME type.)

Also see `리스트럭처드텍스트의 표준 파일 확장자는?`_


HTML Writer
===========

What is the status of the HTML Writer?
--------------------------------------

The HTML Writer module, ``docutils/writers/html4css1.py``, is a
proof-of-concept reference implementation.  While it is a complete
implementation, some aspects of the HTML it produces may be incompatible
with older browsers or specialized applications (such as web templating).
The sandbox has some alternative HTML writers, contributions are welcome.


What kind of HTML does it produce?
----------------------------------

It produces XHTML compatible with the `XHTML 1.0`_ specification.  A
cascading stylesheet is required for proper viewing with a modern
graphical browser.  Correct rendering of the HTML produced depends on
the CSS support of the browser.  A general-purpose stylesheet,
``html4css1.css`` is provided with the code, and is embedded by
default.  It is installed in the "writers/html4css1/" subdirectory
within the Docutils package.  Use the ``--help`` command-line option
to see the specific location on your machine.

.. _XHTML 1.0: http://www.w3.org/TR/xhtml1/


What browsers are supported?
----------------------------

No specific browser is targeted; all modern graphical browsers should
work.  Some older browsers, text-only browsers, and browsers without
full CSS support are known to produce inferior results.  Firefox,
Safari, Mozilla (version 1.0 and up), Opera, and MS Internet Explorer
(version 5.0 and up) are known to give good results.  Reports of
experiences with other browsers are welcome.


Unexpected results from tools/rst2html.py: H1, H1 instead of H1, H2.  Why?
--------------------------------------------------------------------------

Here's the question in full:

    I have this text::

        Heading 1
        =========

        All my life, I wanted to be H1.

        Heading 1.1
        -----------

        But along came H1, and so shouldn't I be H2?
        No!  I'm H1!

        Heading 1.1.1
        *************

        Yeah, imagine me, I'm stuck at H3!  No?!?

    When I run it through tools/rst2html.py, I get unexpected results
    (below).  I was expecting H1, H2, then H3; instead, I get H1, H1,
    H2::

        ...
        <html lang="en">
        <head>
        ...
        <title>Heading 1</title>
        </head>
        <body>
        <div class="document" id="heading-1">
        <h1 class="title">Heading 1</h1>                <-- first H1
        <p>All my life, I wanted to be H1.</p>
        <div class="section" id="heading-1-1">
        <h1><a name="heading-1-1">Heading 1.1</a></h1>        <-- H1
        <p>But along came H1, and so now I must be H2.</p>
        <div class="section" id="heading-1-1-1">
        <h2><a name="heading-1-1-1">Heading 1.1.1</a></h2>
        <p>Yeah, imagine me, I'm stuck at H3!</p>
        ...

    What gives?

Check the "class" attribute on the H1 tags, and you will see a
difference.  The first H1 is actually ``<h1 class="title">``; this is
the document title, and the default stylesheet renders it centered.
There can also be an ``<h2 class="subtitle">`` for the document
subtitle.

If there's only one highest-level section title at the beginning of a
document, it is treated specially, as the document title.  (Similarly, a
lone second-highest-level section title may become the document
subtitle.)  See `문서의 제목과 부제목을 어떻게 지정하는가?`_ for
details.  Rather than use a plain H1 for the document title, we use ``<h1
class="title">`` so that we can use H1 again within the document.  Why
do we do this?  HTML only has H1-H6, so by making H1 do double duty, we
effectively reserve these tags to provide 6 levels of heading beyond the
single document title.

HTML is being used for dumb formatting for nothing but final display.
A stylesheet *is required*, and one is provided; see `What kind of
HTML does it produce?`_ above.  Of course, you're welcome to roll your
own.  The default stylesheet provides rules to format ``<h1
class="title">`` and ``<h2 class="subtitle">`` differently from
ordinary ``<h1>`` and ``<h2>``::

    h1.title {
      text-align: center }

    h2.subtitle {
      text-align: center }

If you don't want the top section heading to be interpreted as a
title at all, disable the `doctitle_xform`_ setting
(``--no-doc-title`` option).  This will interpret your document
differently from the standard settings, which might not be a good
idea.  If you don't like the reuse of the H1 in the HTML output, you
can tweak the `initial_header_level`_ setting
(``--initial-header-level`` option) -- but unless you match its value
to your specific document, you might end up with bad HTML (e.g. H3
without H2).

.. _doctitle_xform: docs/user/config.html#doctitle-xform
.. _initial_header_level: docs/user/config.html#initial-header-level

(Thanks to Mark McEahern for the question and much of the answer.)


목록은 HTML에서 어떻게 보이나?
--------------------------------

If list formatting looks strange, first check that you understand
`list markup`__.

__ `어떻게 목록 마크업을 하는가?`_

* By default, HTML browsers indent lists relative to their context.
  This follows a long tradition in browsers (but isn't so established
  in print).  If you don't like it, you should change the stylesheet.

  This is different from how lists look in reStructuredText source.
  Extra indentation in the source indicates a blockquote, resulting in
  too much indentation in the browser.

* A list item can contain multiple paragraphs etc.  In complex cases
  list items are separated by vertical space.  By default this spacing
  is omitted in "simple" lists.  A list is simple if every item
  contains a simple paragraph and/or a "simple" nested list.  For
  example:

      * text

        * simple

          * simple
          * simple

        * simple

        text after a nested list

      * multiple

        paragraphs

  In this example the nested lists are simple (and should appear
  compacted) but the outer list is not.

  If you want all lists to have equal spacing, disable the
  `compact_lists`_ setting (``--no-compact-lists`` option).  The
  precise spacing can be controlled in the stylesheet.

  Note again that this is not exactly WYSIWYG: it partially resembles
  the rules about blank lines being optional between list items in
  reStructuredText -- but adding/removing optional blank lines does
  not affect spacing in the output!  It's a feature, not a bug: you
  write it as you like but the output is styled consistently.

  .. _compact_lists: docs/user/config.html#compact-lists


Why do enumerated lists only use numbers (no letters or roman numerals)?
------------------------------------------------------------------------

The rendering of enumerators (the numbers or letters acting as list
markers) is completely governed by the stylesheet, so either the
browser can't find the stylesheet (try enabling the
`embed_stylesheet`_ setting [``--embed-stylesheet`` option]), or the
browser can't understand it (try a recent Firefox, Mozilla, Konqueror,
Opera, Safari, or even MSIE).

.. _embed_stylesheet: docs/user/config.html#embed-stylesheet


There appear to be garbage characters in the HTML.  What's up?
--------------------------------------------------------------

What you're seeing is most probably not garbage, but the result of a
mismatch between the actual encoding of the HTML output and the
encoding your browser is expecting.  Your browser is misinterpreting
the HTML data, which is encoded text.  A discussion of text encodings
is beyond the scope of this FAQ; see one or more of these documents
for more info:

* `UTF-8 and Unicode FAQ for Unix/Linux
  <http://www.cl.cam.ac.uk/~mgk25/unicode.html>`_

* Chapters 3 and 4 of `Introduction to i18n [Internationalization]
  <http://www.debian.org/doc/manuals/intro-i18n/>`_

* `Python Unicode Tutorial
  <http://www.reportlab.com/i18n/python_unicode_tutorial.html>`_

* `Python Unicode Objects: Some Observations on Working With Non-ASCII
  Character Sets <http://effbot.org/zone/unicode-objects.htm>`_

The common case is with the default output encoding (UTF-8), when
either numbered sections are used (via the "sectnum_" directive) or
symbol-footnotes.  3 non-breaking spaces are inserted in each numbered
section title, between the generated number and the title text.  Most
footnote symbols are not available in ASCII, nor are non-breaking
spaces.  When encoded with UTF-8 and viewed with ordinary ASCII tools,
these characters will appear to be multi-character garbage.

You may have an decoding problem in your browser (or editor, etc.).
The encoding of the output is set to "utf-8", but your browswer isn't
recognizing that.  You can either try to fix your browser (enable
"UTF-8 character set", sometimes called "Unicode"), or choose a
different encoding for the HTML output.  You can also try
``--output-encoding=ascii:xmlcharrefreplace`` for HTML or XML, but not
applicable to non-XMLish outputs (if using runtime
settings/configuration files, use ``output_encoding=ascii`` and
``output_encoding_error_handler=xmlcharrefreplace``).

If you're generating document fragments, the "Content-Type" metadata
(between the HTML ``<head>`` and ``</head>`` tags) must agree with the
encoding of the rest of the document.  For UTF-8, it should be::

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

Also, Docutils normally generates an XML declaration as the first line
of the output.  It must also match the document encoding.  For UTF-8::

    <?xml version="1.0" encoding="utf-8" ?>

.. _sectnum: docs/ref/rst/directives.html#sectnum


How can I retrieve the body of the HTML document?
-------------------------------------------------

(This is usually needed when using Docutils in conjunction with a
templating system.)

You can use the `docutils.core.publish_parts()`_ function, which
returns a dictionary containing an 'html_body_' entry.

.. _docutils.core.publish_parts(): docs/api/publisher.html#publish-parts
.. _html_body: docs/api/publisher.html#html-body


Why is the Docutils XHTML served as "Content-type: text/html"?
--------------------------------------------------------------

Full question:

    Docutils' HTML output looks like XHTML and is advertised as such::

      <?xml version="1.0" encoding="utf-8" ?>
      <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xht ml1/DTD/xhtml1-transitional.dtd">

    But this is followed by::

      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    Shouldn't this be "application/xhtml+xml" instead of "text/html"?

In a perfect web, the Docutils XHTML output would be 100% strict
XHTML.  But it's not a perfect web, and a major source of imperfection
is Internet Explorer.  Despite it's drawbacks, IE still represents the
majority of web browsers, and cannot be ignored.

Short answer: if we didn't serve XHTML as "text/html" (which is a
perfectly valid thing to do), it couldn't be viewed in Internet
Explorer.

Long answer: see the `"Criticisms of Internet Explorer" Wikipedia
entry <http://en.wikipedia.org/wiki/Criticisms_of_Internet_Explorer#XHTML>`__.

However, there's also `Sending XHTML as text/html Considered
Harmful`__.  What to do, what to do?  We're damned no matter what we
do.  So we'll continue to do the practical instead of the pure:
support the browsers that are actually out there, and not fight for
strict standards compliance.

__ http://hixie.ch/advocacy/xhtml

(Thanks to Martin F. Krafft, Robert Kern, Michael Foord, and Alan
G. Isaac.)


Python Source Reader
====================

Can I use Docutils for Python auto-documentation?
-------------------------------------------------

Yes, in conjunction with other projects.

The Sphinx_ documentation generator includes an autodoc module.

.. _Sphinx: http://sphinx.pocoo.org/index.html

Version 2.0 of Ed Loper's `Epydoc <http://epydoc.sourceforge.net/>`_
supports reStructuredText-format docstrings for HTML output.  Docutils
0.3 or newer is required.  Development of a Docutils-specific
auto-documentation tool will continue.  Epydoc works by importing
Python modules to be documented, whereas the Docutils-specific tool,
described above, will parse modules without importing them (as with
`HappyDoc <http://happydoc.sourceforge.net/>`_, which doesn't support
reStructuredText).

The advantages of parsing over importing are security and flexibility;
the disadvantage is complexity/difficulty.

* Security: untrusted code that shouldn't be executed can be parsed;
  importing a module executes its top-level code.
* Flexibility: comments and unofficial docstrings (those not supported
  by Python syntax) can only be processed by parsing.
* Complexity/difficulty: it's a lot harder to parse and analyze a
  module than it is to ``import`` and analyze one.

For more details, please see "Docstring Extraction Rules" in `PEP
258`_, item 3 ("How").


Miscellaneous
=============

Is the Docutils document model based on any existing XML models?
----------------------------------------------------------------

Not directly, no.  It borrows bits from DocBook, HTML, and others.  I
(David Goodger) have designed several document models over the years,
and have my own biases.  The Docutils document model is designed for
simplicity and extensibility, and has been influenced by the needs of
the reStructuredText markup.


..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   End:

.. Here's a code css to make a table colourful::

   /* Table: */

   th {
       background-color: #ede;
   }

   /* alternating colors in table rows */
   table.docutils tr:nth-child(even) {
       background-color: #F3F3FF;
   }
   table.docutils tr:nth-child(odd) {
       background-color: #FFFFEE;
   }

   table.docutils tr {
       border-style: solid none solid none;
       border-width: 1px 0 1px 0;
       border-color: #AAAAAA;
   }
