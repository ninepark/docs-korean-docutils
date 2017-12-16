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


이 작업은 계속 진행 중이다. 만약 복사본을 읽고 있다면 `마스터 문서`_\ 이 더 새로운 문서이다.
이 문서에는 상대 경로 링크들이 포함되어 있는데 만약 동작하지 않는다면 `마스터 문서`_\ 을 이용하라.

`독유틸즈 사용자`_ 메일링 리스트로 이 메일을 보내 자유롭게 질문을 하거나 대답을 작성해 줄 수 있다.
프로젝트 멤버들은 소스 텍스트 파일을 직접 고칠 수도 있다.

.. _마스터 문서: https://veranostech.github.io/docs-korean-docutils/docutils/FAQ_ko.html
.. _let us know:
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


문서에서 특이한 글자는 어떻게 표시하는가?
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


How can I generate backticks using a Scandinavian keyboard?
-----------------------------------------------------------

The use of backticks in reStructuredText is a bit awkward with
Scandinavian keyboards, where the backtick is a "dead" key.  To get
one ` character one must press SHIFT-` + SPACE.

Unfortunately, with all the variations out there, there's no way to
please everyone.  For Scandinavian programmers and technical writers,
this is not limited to reStructuredText but affects many languages and
environments.

Possible solutions include

* If you have to input a lot of backticks, simply type one in the
  normal/awkward way, select it, copy and then paste the rest (CTRL-V
  is a lot faster than SHIFT-` + SPACE).

* Use keyboard macros.

* Remap the keyboard.  The Scandinavian keyboard layout is awkward for
  other programming/technical characters too; for example, []{}
  etc. are a bit awkward compared to US keyboards.

  According to Axel Kollmorgen,

      Under Windows, you can use the `Microsoft Keyboard Layout Creator
      <http://www.microsoft.com/globaldev/tools/msklc.mspx>`__ to easily
      map the backtick key to a real backtick (no dead key). took me
      five minutes to load my default (german) keyboard layout, untick
      "Dead Key?" from the backtick key properties ("in all shift
      states"), "build dll and setup package", install the generated
      .msi, and add my custom keyboard layout via Control Panel >
      Regional and Language Options > Languages > Details > Add
      Keyboard layout (and setting it as default "when you start your
      computer").

* Use a virtual/screen keyboard or character palette, such as:

  - `Web-based keyboards <http://keyboard.lab.co.il/>`__ (IE only
    unfortunately).
  - Windows: `Click-N-Type <http://www.lakefolks.org/cnt/>`__.
  - Mac OS X: the Character Palette can store a set of favorite
    characters for easy input.  Open System Preferences,
    International, Input Menu tab, enable "Show input menu in menu
    bar", and be sure that Character Palette is enabled in the list.

If anyone knows of other/better solutions, please `let us know`_.


Are there any tools for HTML/XML-to-reStructuredText?  (Round-tripping)
-----------------------------------------------------------------------

People have tossed the idea around, and some implementations of
reStructuredText-generating tools can be found in the `독유틸즈 링크 리스트`_.

There's no reason why reStructuredText should not be round-trippable
to/from XML; any technicalities which prevent round-tripping would be
considered bugs.  Whitespace would not be identical, but paragraphs
shouldn't suffer.  The tricky parts would be the smaller details, like
links and IDs and other bookkeeping.

For HTML, true round-tripping may not be possible.  Even adding lots
of extra "class" attributes may not be enough.  A "simple HTML" to RST
filter is possible -- for some definition of "simple HTML" -- but HTML
is used as dumb formatting so much that such a filter may not be
particularly useful.  An 80/20 approach should work though: build a
tool that does 80% of the work automatically, leaving the other 20%
for manual tweaks.

.. _독유틸즈 링크 리스트: docs/user/links_ko.html


Are there any Wikis that use reStructuredText syntax?
-----------------------------------------------------

There are several, with various degrees of completeness.  With no
implied endorsement or recommendation, and in no particular order:

* `Ian Bicking's experimental code
  <http://docutils.sf.net/sandbox/ianb/wiki/Wiki.py>`__

* `MoinMoin <http://moinmoin.wikiwikiweb.de/>`__ has some support;
  `here's a sample <http://moinmoin.wikiwikiweb.de/RestSample>`__

* Zope-based `Zwiki <http://zwiki.org/>`__

* Zope3-based Zwiki (in the Zope 3 source tree as
  ``zope.products.zwiki``)

* `StikiWiki <http://mithrandr.moria.org/code/stikiwiki/>`__

* `Trac <http://trac.edgewall.com//>`__ `supports using
  reStructuredText
  <http://trac.edgewall.com//wiki/WikiRestructuredText>`__ as
  an alternative to wiki markup. This includes support for `TracLinks
  <http://trac.edgewall.com//wiki/TracLinks>`__ from within
  RST text via a custom RST reference-directive or, even easier, an
  interpreted text role 'trac'

Please `let us know`_ of any other reStructuredText Wikis.

.. dead link
.. The example application for the `Web Framework Shootout
.. <http://colorstudy.com/docs/shootout.html>`__ article is a Wiki using
.. reStructuredText.


Are there any Weblog (Blog) projects that use reStructuredText syntax?
----------------------------------------------------------------------

With no implied endorsement or recommendation, and in no particular
order:

* `Firedrop <http://www.voidspace.org.uk/python/firedrop2/>`__
* `PyBloxsom <http://pyblosxom.sourceforge.net/>`__
* `Lino WebMan <http://lino.sourceforge.net/webman.html>`__
* `Pelican <http://blog.getpelican.com/>`__
  (also  listed `on PyPi <http://pypi.python.org/pypi/pelican>`__)

Please `let us know`_ of any other reStructuredText Blogs.


.. _Can lists be indented without generating block quotes?:

How should I mark up lists?
---------------------------

Bullet_ & enumerated_ list markup is very intuitive but there are 2
points that must be noted:

.. _bullet: docs/ref/rst/restructuredtext.html#bullet-lists
.. _enumerated: docs/ref/rst/restructuredtext.html#enumerated-lists

1. Lists should **not** be indented.  This is correct::

       paragraph

       * list item 1

         * nested item 1.1
         * nested item 1.2

       * list item 2

   while this is probably incorrect::

       paragraph

         * list item 1

             * nested item 1.1
             * nested item 1.2

         * list item 2

   The extra indentation (of the list containing items 1.1 and 1.2) is
   recognized as a block quote.  This is usually not what you mean and
   it causes the list in the output to be indented too much.

2. There **must** be blank lines around list items, except between
   items of the same level, where blank lines are optional.  The
   example above shows this.

Note that formatting of the *output* is independent of the input, and
is decided by the writer and the stylesheet.  For instance, lists
*are* indented in HTML output by default.  See `How are lists
formatted in HTML?`_ for details.


Could lists be indented without generating block quotes?
--------------------------------------------------------

Some people like to write lists with indentation but don't intend a
blockquote context.  There has been a lot of discussion about allowing
this in reStructuredText, but there are some issues that would need to
be resolved before it could be implemented.  There is a summary of the
issues and pointers to the discussions in `the to-do list`__.

__ docs/dev/todo.html#indented-lists


Could the requirement for blank lines around lists be relaxed?
--------------------------------------------------------------

Short answer: no.

In reStructuredText, it would be impossible to unambigously mark up
and parse lists without blank lines before and after.  Deeply nested
lists may look ugly with so many blank lines, but it's a price we pay
for unambiguous markup.  Some other plaintext markup systems do not
require blank lines in nested lists, but they have to compromise
somehow, either accepting ambiguity or requiring extra complexity.
For example, `Epytext <http://epydoc.sf.net/epytext.html#list>`__ does
not require blank lines around lists, but it does require that lists
be indented and that ambiguous cases be escaped.


How can I include mathematical equations in documents?
------------------------------------------------------

Use the `math directive`_ and `math role`_, available since Docutils 0.8.

.. _math directive: docs/ref/rst/directives.html#math
.. _math role: docs/ref/rst/roles.html#math


Is nested inline markup possible?
---------------------------------

Not currently, no.  It's on the `to-do list`__ (`details here`__), and
hopefully will be part of the reStructuredText parser soon.  At that
time, markup like this will become possible::

    Here is some *emphasized text containing a `hyperlink`_ and
    ``inline literals``*.

__ docs/dev/todo.html#nested-inline-markup
__ docs/dev/rst/alternatives.html#nested-inline-markup

There are workarounds, but they are either convoluted or ugly or both.
They are not recommended.

* Inline markup can be combined with hyperlinks using `substitution
  definitions`__ and references__ with the `"replace" directive`__.
  For example::

      Here is an |emphasized hyperlink|_.

      .. |emphasized hyperlink| replace:: *emphasized hyperlink*
      .. _emphasized hyperlink: http://example.org

  It is not possible for just a portion of the replacement text to be
  a hyperlink; it's the entire replacement text or nothing.

  __ docs/ref/rst/restructuredtext.html#substitution-definitions
  __ docs/ref/rst/restructuredtext.html#substitution-references
  __ docs/ref/rst/directives.html#replace

* The `"raw" directive`__ can be used to insert raw HTML into HTML
  output::

      Here is some |stuff|.

      .. |stuff| raw:: html

         <em>emphasized text containing a
         <a href="http://example.org">hyperlink</a> and
         <tt>inline literals</tt></em>

  Raw LaTeX is supported for LaTeX output, etc.

  __ docs/ref/rst/directives.html#raw


How to indicate a line break or a significant newline?
------------------------------------------------------

`Line blocks`__ are designed for address blocks, verse, and other
cases where line breaks are significant and must be preserved.  Unlike
literal blocks, the typeface is not changed, and inline markup is
recognized.  For example::

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

Here's a workaround for manually inserting explicit line breaks in
HTML output::

    .. |br| raw:: html

       <br />

    I want to break this line here: |br| this is after the break.

    If the extra whitespace bothers you, |br|\ backslash-escape it.


A URL containing asterisks doesn't work.  What to do?
-----------------------------------------------------

Asterisks are valid URL characters (see :RFC:`2396`), sometimes used
in URLs.  For example::

    http://cvs.example.org/viewcvs.py/*checkout*/module/file

Unfortunately, the parser thinks the asterisks are indicating
emphasis.  The slashes serve as delineating punctuation, allowing the
asterisks to be recognized as markup.  The example above is separated
by the parser into a truncated URL, an emphasized word, and some
regular text::

    http://cvs.example.org/viewcvs.py/
    *checkout*
    /module/file

To turn off markup recognition, use a backslash to escape at least the
first asterisk, like this::

    http://cvs.example.org/viewcvs.py/\*checkout*/module/file

Escaping the second asterisk doesn't hurt, but it isn't necessary.


How can I make a literal block with *some* formatting?
------------------------------------------------------

Use the `parsed-literal`_ directive.

.. _parsed-literal: docs/ref/rst/directives.html#parsed-literal

Scenario: a document contains some source code, which calls for a
literal block to preserve linebreaks and whitespace.  But part of the
source code should be formatted, for example as emphasis or as a
hyperlink.  This calls for a *parsed* literal block::

    .. parsed-literal::

       print "Hello world!"  # *tricky* code [1]_

The emphasis (``*tricky*``) and footnote reference (``[1]_``) will be
parsed.


Can reStructuredText be used for web or generic templating?
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
consider contributing the code to Docutils or `let us know`_ and we'll
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


How are lists formatted in HTML?
--------------------------------

If list formatting looks strange, first check that you understand
`list markup`__.

__ `How should I mark up lists?`_

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
