==============================================
 독유틸즈_\ (docutils) 프로젝트 문서 개요
==============================================

:저자: 데이비드 굿저(David Goodger)
:연락처: docutils-develop@lists.sourceforge.net
:날짜: $Date$
:리비전: $Revision$
:저작권: 이 문서는 퍼블릭 도메인에 속한다.

이 문서의 가장 최신 버전은 아래의 `독유틸즈 배포판`_\ 의 ``docs`` 디렉토리나 아래의 개별 링크에서 구할 수 있다.

.. _독유틸즈: https://veranostech.github.io/docs-korean-docutils/web/index_ko.html
.. _독유틸즈 배포판: https://veranostech.github.io/docs-korean-docutils/web/index_ko.html#download

.. contents::


독유틸즈 관련자
=====================

독유틸즈 관련자는 몇 가지 그룹으로 나뉜다.

1. 최종 사용자: 리스트럭처드텍스트(reStructuredTest)와 독유틸즈 도구를 사용하는 사람들.
   일부 개발자(소스코드의 독스트링에 리스트럭처드텍스트를 사용하는 파이썬 개발자)가 해당되며 대부분은 최종 사용자가 아니다.

2. 클라이언트 개발자: 독유틸즈를 라이브러리로 사용하는 개발자 혹은 독유틸즈를 (도구로) 사용하여 개발하는 개발자.

3. 컴포넌트 개발자: 특정 응용프로그램을 위한 독유틸즈 컴포넌트, 지시자(directives), 역할자(roles) 등을 개발하는 사람.

4. 핵심 개발자: 독유틸즈 코드 자체를 개발하고 독유틸즈 프로젝트 커뮤니티에 참여하는 사람.

5. 재구현자(re-implementers): 독유틸즈의 다른 구현(implementation)을 만드는 개발자.

이 그룹들은 겹칠수 있다.
(다는 아니라도) 대부분의 핵심 개발자와 컴포넌트 개발자, 클라이어트 개발자, 그리고 재구현자는 최종 사용자이기도 하다.
핵심 개발자는 클라이언트 개발자일 수도 있고 다른 프로젝트의 컴포넌트 개발자일 수도 있다.
컴포넌트 개발자도 클라이언트 개발자 일 수 있다.


프로젝트 핵심
====================

이 파일들은 모든 독유틸즈 관련자에게 필요하다.
이 파일들은 독유틸즈 프로젝트 디렉토리의 최상단에 있다.

(역주. 파일의 이름과 확장자는 편의를 위해 변경하였다.)

:README_ko.rst_: 프로젝트 개요: 간단한 지침서, 필요사항과 설치방법, 그리고 사용법

:COPYING_ko.rst_: 독유틸즈 재배포 조건. 라이선스와 링크.

:FAQ_ko.rst_: 독유틸즈에 관련하여 자주 물어보는 질문들.
              만약 질문이나 이슈가 있으면 여기에 이미 대답이 있을 가능성이 높다.

:BUGS_ko.rst_: 알려진 버그 목록과 버그를 보고하는 방법.
:RELEASE-NOTES_ko.rst_: 최근 배포판의 중요한 변화 요약.
:HISTORY_ko.rst_: 상세 변화 기록 로그.
:THANKS_ko.rst_: 감사의 글.

.. _README_ko.rst: ../README_ko.html
.. _BUGS_ko.rst: ../BUGS_ko.html
.. _COPYING_ko.rst: ../COPYING_ko.html
.. _Docutils FAQ:
.. _FAQ_ko.rst: ../FAQ_ko.html
.. _RELEASE-NOTES_ko.rst: ../RELEASE-NOTES_ko.html
.. _HISTORY_ko.rst: ../HISTORY_ko.html
.. _THANKS_ko.rst: ../THANKS_ko.html


.. _user:

``user/``: 최종 사용자를 위한 소개와 입문용 자료
=========================================================================

독유틸즈 일반:

* `독유틸즈 프론트엔드 도구 <user/tools.html>`__
* `독유틸즈 설정 <user/config.html>`__
* `독유틸즈 메일링 리스트 <user/mailing-lists.html>`__
* `독유틸즈 링크 목록 <user/links.html>`__

문서 작셩자용:

* `독유틸즈로 HTML 작성 <user/html.html>`__
* `리스트럭처드텍스트와 S5로 쉽게 슬라이드 쇼를 만드는 법 <user/slide-shows.html>`__
* `독유틸즈로 레이텍(LaTeX) 작성 <user/latex.html>`__
* `독유틸즈로 ODF/OpenOffice/odt 작성 <user/odt.html>`__

`리스트럭처드텍스트 <https://veranostech.github.io/docs-korean-docutils/web/rst_ko.html>`_\ (reStructuredTest):

* `리스트럭처드텍스트 입문 (HTML) <user/rst/quickstart_ko.html>`__ (또는 `텍스트 소스 <user/rst/quickstart_ko.txt>`__)
* `리스트럭처드텍스트 간단 참고서 <user/rst/quickref_ko.html>`__ (사용자 레퍼런스)
* `리스트럭처드텍스트 치트시트 <user/rst/cheatsheet_ko.txt>`__ (텍스트; 신택스 1 페이지, 명령어 & 역할 레퍼런스 1페이지)
* `리스트럭처드텍스트 데모 <user/rst/demo_ko.html>`_ (리스트럭처드텍스트의 기능에 대부분에 대한 데모; `텍스트 소스 <user/rst/demo_ko.txt>`__\ 를 참고할 수도 있다.)

에디터 지원:

* `이맥스(Emacs)의 리스트럭처드텍스트 지원 <user/emacs.html>`_


.. _ref:

``ref/``: 모든 사용자를 위한 참고 자료
=====================================================================

Many of these files began as developer specifications, but now that
they're mature and used by end-users and client-developers, they have
become reference material.  Successful specs evolve into refs.

Docutils-general:

* `독유틸즈 문서 트리 <ref/doctree_ko.html>`__ (미완성)
* `Docutils Transforms <ref/transforms.html>`__
* `Docutils Generic DTD <ref/docutils.dtd>`__
* `OASIS XML Exchange Table Model Declaration Module
  <ref/soextblx.dtd>`__ (CALS tables DTD module)

Although not in the "ref" directory, `PEP 258`_ is a must-read
reference for any Docutils developer.

리스트럭처드텍스트_:

* `reStructuredText 소개 <ref/rst/introduction_ko.html>`__
  (`목표 <ref/rst/introduction_ko.html#목표>`__\ 와
  `reStructuredText 이력 <ref/rst/introduction_ko.html#이력>`__ 포함)
* `reStructuredText 마크업 설명서 <ref/rst/restructuredtext_ko.html>`__
* `reStructuredText 명령어 <ref/rst/directives_ko.html>`__
* `reStructuredText 해석 텍스트 기능 <ref/rst/roles_ko.html>`__
* `reStructuredText 표준 정의 파일
  <ref/rst/definitions_ko.html>`_

Prehistoric:

* `Setext Documents Mirror
  <http://docutils.sourceforge.net/mirror/setext.html>`__


.. _peps:

``peps/``: 파이썬 개선 제안서
=======================================

* `PEP 256: Docstring Processing System Framework`__ is a high-level
  generic proposal.  [`PEP 256`__ in the `master repository`_]
* `PEP 257: Docstring Conventions`__ addresses docstring style and
  touches on content.  [`PEP 257`__ in the `master repository`_]
* `PEP 258: Docutils Design Specification`__ is an overview of the
  architecture of Docutils.  It documents design issues and
  implementation details.  [`PEP 258`__ in the `master repository`_]
* `PEP 287: reStructuredText Docstring Format`__ proposes a standard
  markup syntax.  [`PEP 287`__ in the `master repository`_]

Please note that PEPs in the `master repository`_ may not be current,
whereas the local versions are.

__ peps/pep-0256_ko.html
__ http://www.python.org/peps/pep-0256.html
__ peps/pep-0257_ko.html
__ http://www.python.org/peps/pep-0257.html
.. _PEP 258:
__ peps/pep-0258.html
__ http://www.python.org/peps/pep-0258.html
__ peps/pep-0287.html
__ http://www.python.org/peps/pep-0287.html
.. _master repository: http://www.python.org/peps/


.. _api:

``api/``: 클라이언트 개발자를 위한 API 참고서
================================================================

* `The Docutils Publisher <api/publisher.html>`__
* `Inside A Docutils Command-Line Front-End Tool <api/cmdline-tool.html>`__
* `Docutils Runtime Settings <api/runtime-settings.html>`__
* (`Docutils Transforms <ref/transforms.html>`__ should be moved here)

`PEP 258`_ is an overview of the architecture of Docutils.


.. _howto:

``howto/``: 개발자를 위한 지침서
================================================================

* **Security:** `Deploying Docutils Securely <howto/security.html>`__
* `Writing HTML (CSS) Stylesheets for Docutils
  <howto/html-stylesheets.html>`__
* `Docutils Internationalization <howto/i18n.html>`__
* `Creating reStructuredText Directives <howto/rst-directives.html>`__
* `Creating reStructuredText Interpreted Text Roles
  <howto/rst-roles.html>`__


.. _dev:

``dev/``: 핵심 개발자를 위한 개발시 주의 사항과 계획
=======================================================================

Docutils-general:

* `Docutils Hacker's Guide <dev/hacking.html>`__
* `Docutils Distributor's Guide <dev/distributing.html>`__
* `Docutils To Do List <dev/todo.html>`__
* `Docutils Project Policies <dev/policies.html>`__
* `Docutils Web Site <dev/website.html>`__
* `Docutils Release Procedure <dev/release.html>`__
* `The Docutils Subversion Repository <dev/repository.html>`__
* `Docutils Testing <dev/testing.html>`__
* `Docstring Semantics <dev/semantics.html>`__ (incomplete)
* `Python Source Reader <dev/pysource.html>`_ (incomplete)
* `Docutils Python DTD <dev/pysource.dtd>`_ (experimental)
* `Plan for Enthought API Documentation Tool <dev/enthought-plan.html>`_
* `Enthought API Documentation Tool RFP <dev/enthought-rfp.html>`_

리스트럭처드텍스트_:

* `A Record of reStructuredText Syntax Alternatives
  <dev/rst/alternatives.html>`__
* `Problems With StructuredText <dev/rst/problems.html>`__


..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   End:
