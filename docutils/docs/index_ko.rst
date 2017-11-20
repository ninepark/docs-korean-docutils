==========================================
 Docutils_ Project 도큐먼테이션 개요
==========================================

:Author: David Goodger
:Contact: docutils-develop@lists.sourceforge.net
:Date: $Date$
:Revision: $Revision$
:Copyright: This document has been placed in the public domain.

The latest working documents may be accessed individually below, or
from the ``docs`` directory of the `Docutils distribution`_.

.. _Docutils: http://docutils.sourceforge.net/
.. _Docutils distribution: http://docutils.sourceforge.net/#download

.. contents::


Docutils Stakeholders
=====================

Docutils stakeholders can be categorized in several groups:

1. End-users: users of reStructuredText and the Docutils tools.
   Although some are developers (e.g. Python developers utilizing
   reStructuredText for docstrings in their source), many are not.

2. Client-developers: developers using Docutils as a library,
   programmers developing *with* Docutils.

3. Component-developers: those who implement application-specific
   components, directives, and/or roles, separately from Docutils.

4. Core-developers: developers of the Docutils codebase and
   participants in the Docutils project community.

5. Re-implementers: developers of alternate implementations of
   Docutils.

There's a lot of overlap between these groups.  Most (perhaps all)
core-developers, component-developers, client-developers, and
re-implementers are also end-users.  Core-developers are also
client-developers, and may also be component-developers in other
projects.  Component-developers are also client-developers.


Project Fundamentals
====================

These files are for all Docutils stakeholders.  They are kept at the
top level of the Docutils project directory.

:README.txt_: Project overview: quick-start, requirements,
              installation, and usage.
:COPYING.txt_: Conditions for Docutils redistribution, with links to
               licenses.
:FAQ.txt_: Docutils Frequently Asked Questions.  If you have a
           question or issue, there's a good chance it's already
           answered here.
:BUGS.txt_: A list of known bugs, and how to report a bug.
:RELEASE-NOTES.txt_: Summary of the major changes in recent releases.
:HISTORY.txt_: Detailed change history log.
:THANKS.txt_: Acknowledgements.

.. _README.txt: ../README.html
.. _BUGS.txt: ../BUGS.html
.. _COPYING.txt: ../COPYING.html
.. _Docutils FAQ:
.. _FAQ.txt: ../FAQ.html
.. _RELEASE-NOTES.txt: ../RELEASE-NOTES.html
.. _HISTORY.txt: ../HISTORY.html
.. _THANKS.txt: ../THANKS.html


.. _user:

``user/``: Introductory & Tutorial Material for End-Users
=========================================================

Docutils-general:

* `Docutils Front-End Tools <user/tools.html>`__
* `Docutils Configuration <user/config.html>`__
* `Docutils Mailing Lists <user/mailing-lists.html>`__
* `Docutils Link List <user/links.html>`__

Writer-specific:

* `Docutils HTML writers <user/html.html>`__
* `Easy Slide Shows With reStructuredText & S5 <user/slide-shows.html>`__
* `Docutils LaTeX Writer <user/latex.html>`__
* `Docutils ODF/OpenOffice/odt Writer <user/odt.html>`__

`reStructuredText <http://docutils.sourceforge.net/rst.html>`_:

* `ReStructuredText 입문 (HTML) <user/rst/quickstart_ko.html>`__ (또는
  `텍스트 소스 <user/rst/quickstart_ko.txt>`__)
* `빠른 reStructuredText <user/rst/quickref_ko.html>`__ (사용자 레퍼런스)
* `reStructuredText 치트 시트 <user/rst/cheatsheet_ko.txt>`__ (텍스트; 신택스 1 페이지, 명령어 & 역할 레퍼런스 1페이지)
* `reStructuredText 데모 <user/rst/demo_ko.html>`_ (reStructuredText의 대부분 기능에 대한 데모; `텍스트 소스 <user/rst/demo_ko.txt>`__\ 를 참고할 수도 있다.)

Editor support:

* `Emacs support for reStructuredText <user/emacs.html>`_


.. _ref:

``ref/``: Reference Material for All Groups
===========================================

Many of these files began as developer specifications, but now that
they're mature and used by end-users and client-developers, they have
become reference material.  Successful specs evolve into refs.

Docutils-general:

* `The Docutils Document Tree <ref/doctree.html>`__ (incomplete)
* `Docutils Transforms <ref/transforms.html>`__
* `Docutils Generic DTD <ref/docutils.dtd>`__
* `OASIS XML Exchange Table Model Declaration Module
  <ref/soextblx.dtd>`__ (CALS tables DTD module)

Although not in the "ref" directory, `PEP 258`_ is a must-read
reference for any Docutils developer.

reStructuredText_:

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

``peps/``: Python Enhancement Proposals
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

``api/``: API Reference Material for Client-Developers
======================================================

* `The Docutils Publisher <api/publisher.html>`__
* `Inside A Docutils Command-Line Front-End Tool <api/cmdline-tool.html>`__
* `Docutils Runtime Settings <api/runtime-settings.html>`__
* (`Docutils Transforms <ref/transforms.html>`__ should be moved here)

`PEP 258`_ is an overview of the architecture of Docutils.


.. _howto:

``howto/``: Instructions for Developers
=======================================

* **Security:** `Deploying Docutils Securely <howto/security.html>`__
* `Writing HTML (CSS) Stylesheets for Docutils
  <howto/html-stylesheets.html>`__
* `Docutils Internationalization <howto/i18n.html>`__
* `Creating reStructuredText Directives <howto/rst-directives.html>`__
* `Creating reStructuredText Interpreted Text Roles
  <howto/rst-roles.html>`__


.. _dev:

``dev/``: Development Notes and Plans for Core-Developers
=========================================================

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

reStructuredText_:

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
