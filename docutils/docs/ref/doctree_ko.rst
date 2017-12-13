============================
 독유틸즈 문서 트리
============================

독유틸즈 DTD 가이드
***************************

:저자: 데이비드 굿저
:연락처: docutils-develop@lists.sourceforge.net
:리비전: $Revision$
:날짜: $Date$
:저작권: 이 문서는 퍼블릭 도메인에 속한다.


.. contents:: :depth: 1


이 문서는 독유틸즈 문서의 XML 데이터 구조 즉, 각 요소와 속성의 관계 및 문법을 서술한다.
독유틸 문서 구조는 `독유틸즈 제너릭 DTD`_ XML 문서 타입 정의 문서인 docutils.dtd_\ 에 정식으로 정의되어 있다.
이 문서는 각 요소의 구조적 관계에 대한 세부사항을 정의한다.

이 문서는 자세한 구현 사항까지 논의하지 않는다.
그러한 정보는 트리 데이터 구조를 클래스 라이브러리로 구현한 ``docutils.nodes`` 모듈의 내부 문서(독스트링)에서 볼 수 있다.

이 글의 독자는 XML이나 SGML에 익숙하고 "트리" 데이터 구조에 대해 이해하고 있다고 가정한다.
입문용 글들이 필요하면 `Introducing the Extensible Markup Language (XML)`_\ 을 보라.

reStructuredText_ 마크업은 이 문서 전반에 걸쳐 설명예제로 사용된다.
기초적인 소개서로는 `A ReStructuredText Primer`_\ 가 있다.
완벽하고 기술적인 세부 사항은 `reStructuredText Markup Specification`_\ 에 있다.


.. _Docutils: http://docutils.sourceforge.net/
.. _독유틸즈 제너릭 DTD:
.. _독유틸즈 DTD:
.. _docutils.dtd: docutils.dtd
.. _Introducing the Extensible Markup Language (XML):
   http://xml.coverpages.org/xmlIntro.html
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _A ReStructuredText Primer: ../user/rst/quickstart.html
.. _reStructuredText Markup Specification: rst/restructuredtext.html


-------------------
요소의 상하관계
-------------------

.. contents:: :local:

아래는 독유틸즈 문서 트리 구조를 이루는 각 요소의 상하관계를 간단하게 그린 다이어그램이다.
하나의 요소는 바로 아래에 다른 요소를 포함할 수 있다.
대괄호안에는 주의 사항을 썼다.
소괄호안의 요소 타입은 재귀적이거나 일대다(one-to-many) 관계를 나타낸다.
절(section)은 소절(subsection)을 포함할 수 있고
표는 다른 바디(body) 요소들을 포함할 수 있다.::

  +--------------------------------------------------------------------+
  | 문서  [제목, 부제목, 꾸밈말, docinfo로 시작할 수 있다.]            |
  |                             +--------------------------------------+
  |                             | 절  [각 절은 제목으로 시작한다.]     |
  +-----------------------------+--------------------------+-----------+
  | [바디 요소:]                                           | (절)      |
  |          | - 리터럴  | - 리스트  |      | - 하이퍼링크 +-----------+
  |          |   블럭    | - 표      |      |   타겟       |
  | 문단     | - doctest | - 블럭    | 각주 | - 정의       |
  |          |   블럭    |   인용    |      | - 주석       |
  +----------+-----------+-----------+------+--------------+
  | [텍스트]+| [텍스트]  |(바디 요소)       | [텍스트]     |
  | (인라인  +-----------+------------------+--------------+
  | 마크업)  |
  +----------+

독유틸즈 문서(document) 모델은 단순하고 재귀적인 절(section) 구조이다.
문서_ 노드는 바디 요소와 절_ 요소를 포함할 수 있다.
절은 바디 요소와 다른 절을 포함할 수 있다.
절 요소의 레벨(깊이)은 물리적인 포함 레벨로 결정된다.
다른 문서 모델(HTML의 ``<h1>``, DocBook_\ 의 ``<sect1>``, 또는 XMLSpec_\ 의 ``<div1>`` 등)과 달리
레벨과 이름은 관련성이가 없다.

독유틸 문서 모형은 엄격한 요소 내용 모델(strict element content model)이다.
모든 요소는 유일한 구조와 문법을 가지지만 (아래와 같이) 다른 카테고리로 분류될 수 있다.
텍스트 데이터만 직접 가지고 있는 요소만이 혼합 내용 모형(mixed content model)을 가진다.
여기에서는 텍스트 데이터와 인라인 요소들이 섞여있을 수 있다.
이 점이 문단과 텍스트 데이터가 같은 레벨에 나올 수 있는 훨씬 덜 엄격한 HTML_ 문서 모델과 다른 점이다.



구조 요소
======================================

구조 요소(structural elements)는 자식 요소만 가질 수 있다.
직접 텍스트 데이터를 가질 수는 없다.
구조 요소는 바디 요소 또는 다른 구조 요소를 가질 수 있다.
구조 요소는 다른 구조 요소의 자식 요소가 될 수 있다.

카테고리 멤버: 문서_, 절_, 토픽_, 사이드바_


구조 서브요소
--------------------------------------------

구조 서브요소(structural subelements)는 구조 요소의 자식 요소이다.
간단한 구조 서브요소(제목_\ , 부제목_\ )는 텍스트 데이터를 가질 수 있다.
다른 구조 서브요소는 복합 요소로서 직접 텍스트 데이터를 가질 수 없다.

카테고리 멤버: 제목_\ , 부제목_\ , 장식_, 문서정보_, 전환_


문헌 요소
````````````````````````````````````````````

문서정보_ 요소는 문서_\ 의 선택적인(optional) 자식이 될 수 있다.
문서정보 요소는 문헌 요소들을 합쳐놓을 것이다.
복수저자_\ 와 필드_\ 를 제외한 모든 문헌 요소(bibliographic elements)는 텍스트 데이터를 가진다.
복수저자_\ 는 다른 문헌 요소(보통 저자_)를 가질 수 있다.
필드_ 는 필드_이름_\ 과 필드_바디_ 바디 요소를 가진다.

카테고리 멤버: 주소_, 저자_, 복수저자_, 연락처_, 저작권_,
날짜_, 필드_, 기관_, 리비전_, 상태_, 버전_


장식 요소
``````````````````````````````````````

장식_ 요소(decoration elements)는 문서_\ 의 선택적인(optional) 자식이 될 수 있다.
장식 요소는 페이지 머리말과 꼬리말을 생성하는데 쓰인다.

카테고리 멤버: 꼬리말_, 머리말_


바디 요소
==========================

바디 요소(body elements)는 구조 요소와 복합 바디 요소에 들어간다.
바디 요소에는 단순 바디 요소와 복합 바디 요소, 두 종류가 있다.


카테고리 멤버: admonition_, attention_, block_quote_, bullet_list_,
caution_, citation_, comment_, compound_, container_, danger_,
definition_list_, doctest_block_, enumerated_list_, error_,
필드_리스트_, figure_, footnote_, hint_, image_, important_,
line_block_, literal_block_, note_, option_list_, paragraph_,
pending_, raw_, rubric_, substitution_definition_, system_message_,
table_, target_, tip_, warning_


단순 바디 요소
----------------------------------------

단순 바디 요소(simple body elements) are empty or directly contain text data.  Those
that contain text data may also contain inline elements.  Such
elements therefore have a "mixed content model".

카테고리 멤버: comment_, doctest_block_, image_, literal_block_,
math_block_, paragraph_, pending_, raw_, rubric_, substitution_definition_,
target_


복합 바디 요소
----------------------------------------

복합 바디 요소(compound body elements) contain local substructure (body subelements)
and further body elements.  They do not directly contain text data.

카테고리 멤버: admonition_, attention_, block_quote_, bullet_list_,
caution_, citation_, compound_, container_, danger_, definition_list_,
enumerated_list_, error_, 필드_리스트_, figure_, footnote_, hint_,
important_, line_block, note_, option_list_, system_message_, table_,
tip_, warning_


Body Subelements
````````````````

Compound body elements contain specific subelements (e.g. bullet_list_
contains list_item_).  Subelements may themselves be compound elements
(containing further child elements, like 필드_) or simple data
elements (containing text data, like 필드_이름_).  These subelements
always occur within specific parent elements, never at the body
element level (beside paragraphs, etc.).

Category members (simple): attribution_, caption_, classifier_,
colspec_, 필드_이름_, label_, line_, option_argument_,
option_string_, term_

Category members (compound): definition_, definition_list_item_,
description_, entry_, 필드_, 필드_바디_, legend_, list_item_,
option_, option_group_, option_list_item_, row_, tbody_, tgroup_,
thead_


Inline Elements
===============

Inline elements directly contain text data, and may also contain
further inline elements.  Inline elements are contained within simple
body elements.  Most inline elements have a "mixed content model".

Category members: abbreviation_, acronym_, citation_reference_,
emphasis_, footnote_reference_, generated_, image_, inline_, literal_,
math_, problematic_, reference_, strong_, subscript_,
substitution_reference_, superscript_, target_, 제목_\ 참조_, raw_


.. _HTML: http://www.w3.org/MarkUp/
.. _DocBook: http://docbook.org/tdg/en/html/docbook.html
.. _XMLSpec: http://www.w3.org/XML/1998/06/xmlspec-report.htm


-------------------
 Element Reference
-------------------

.. contents:: :local:
              :depth: 1

Each element in the DTD (document type definition) is described in its
own section below.  Each section contains an introduction plus the
following subsections:

* Details (of element relationships and semantics):

  - Category: One or more references to the element categories in
    `Element Hierarchy`_ above.  Some elements belong to more than one
    category.

  - Parents: A list of elements which may contain the element.

  - Children: A list of elements which may occur within the element.

  - Analogues: Describes analogous elements in well-known document
    models such as HTML_ or DocBook_.  Lists similarities and
    differences.

  - Processing: Lists formatting or rendering recommendations for the
    element.

* Content Model:

  The formal XML content model from the `독유틸즈 DTD`_, followed by:

  - Attributes: Describes (or refers to descriptions of) the possible
    values and semantics of each attribute.

  - Parameter Entities: Lists the parameter entities which directly or
    indirectly include the element.

* Examples: reStructuredText_ examples are shown along with
  fragments of the document trees resulting from parsing.
  _`Pseudo-XML` is used for the results of parsing and processing.
  Pseudo-XML is a representation of XML where nesting is indicated by
  indentation and end-tags are not shown.  Some of the precision of
  real XML is given up in exchange for easier readability.  For
  example, the following are equivalent:

  - Real XML::

        <document>
        <section ids="a-title" names="a title">
        <title>A Title</title>
        <paragraph>A paragraph.</paragraph>
        </section>
        </document>

  - Pseudo-XML::

        <document>
            <section ids="a-title" names="a title">
                <title>
                    A Title
                <paragraph>
                    A paragraph.

--------------------

Many of the element reference sections below are marked "_`to be
completed`".  Please help complete this document by contributing to
its writing.


``abbreviation``
================

The ``abbreviation`` element is an inline element used to represent an
abbreviation being used in the document. An example of an abbreviation is 'St'
being used instead of 'Street'.

Details
-------

:Category:
    `Inline Elements`_

:Parents:
     All elements employing the %inline.elements; parameter entities in their
     content models may contain ``abbreviation``.

:Children:
    ``abbreviation`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``abbreviation`` is analogous to the HTML "abbr" element.

Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``abbreviation`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

Examples
--------

The ``abbreviation`` element is not exposed in default restructured text. It
can only be accessed through custom roles.

Pseudo-XML_ example from a custom `:abbr:` role::

    <paragraph>
        <abbreviation explanation="Street">
            St
        is a common abbreviation for "street".


``acronym``
===========

`To be completed`_.


``주소``
======================

The ``주소`` element holds the surface mailing address information
for the author (individual or group) of the document, or a third-party
contact address.  Its structure is identical to that of the
literal_block_ element: whitespace is significant, especially
newlines.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    The following elements may contain ``주소``: 문서정보_, 복수저자_

:Children:
    ``주소`` elements contain text data plus `inline elements`_.

:Analogues:
    ``주소`` is analogous to the DocBook "address" element.

:Processing:
    As with the literal_block_ element, newlines and other whitespace
    is significant and must be preserved.  However, a monospaced
    typeface need not be used.

    See also 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``주소`` element contains the `common attributes`_ (ids_,
    names_, dupnames_, source_, and classes_), plus `xml:space`_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``주소``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Address: 123 Example Ave.
              Example, EX

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <address>
                123 Example Ave.
                Example, EX

See 문서정보_ for a more complete example, including processing
context.


``admonition``
==============

This element is a generic, titled admonition.  Also see the specific
admonition elements Docutils offers (in alphabetical order): caution_,
danger_, error_, hint_, important_, note_, tip_, warning_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``admonition``.

:Children:
    ``admonition`` elements begin with a 제목_\  and may contain one or
    more `바디 요소`_.

:Analogues:
    ``admonition`` has no direct analogues in common DTDs.  It can be
    emulated with primitives and type effects.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.).


Content Model
-------------

.. parsed-literal::

   (제목_\ , (`%body.elements;`_)+)

:Attributes:
    The ``admonition`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``admonition``.  The `%structure.model;`_ parameter entity
    indirectly includes ``admonition``.


Examples
--------

reStructuredText source::

    .. admonition:: And, by the way...

       You can make up your own admonition too.

Pseudo-XML_ fragment from simple parsing::

    <admonition class="admonition-and-by-the-way">
        <title>
            And, by the way...
        <paragraph>
            You can make up your own admonition too.


``attention``
=============

The ``attention`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): caution_, danger_, error_,
hint_, important_, note_, tip_, warning_, and the generic admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``attention``.

:Children:
    ``attention`` elements contain one or more `바디 요소`_.

:Analogues:
    ``attention`` has no direct analogues in common DTDs.  It can be
    emulated with primitives and type effects.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Attention!" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``attention`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``attention``.  The `%structure.model;`_ parameter entity
    indirectly includes ``attention``.


Examples
--------

reStructuredText source::

    .. Attention:: All your base are belong to us.

Pseudo-XML_ fragment from simple parsing::

    <attention>
        <paragraph>
            All your base are belong to us.


``attribution``
===============

`To be completed`_.


``저자``
=====================

The ``저자`` element holds the name of the author of the document.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    The following elements may contain ``저자``: 문서정보_, 복수저자_

:Children:
    ``저자`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``저자`` is analogous to the DocBook "author" element.

:Processing:
    See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``저자`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``저자``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Author: J. Random Hacker

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <author>
                J. Random Hacker

See 문서정보_ for a more complete example, including processing
context.


``복수저자``
======================

The ``복수저자`` element is a container for author information for
documents with multiple authors.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``복수저자``.

:Children:
    ``복수저자`` elements may contain the following elements: 저자_,
    기관_, 주소_, 연락처_

:Analogues:
    ``복수저자`` is analogous to the DocBook "authors" element.

:Processing:
    See 문서정보_.


Content Model
-------------

.. parsed-literal::

    ((저자_, 기관_?, 주소_?, 연락처_?)+)

:Attributes:
    The ``복수저자`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``복수저자``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Authors: J. Random Hacker; Jane Doe

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <authors>
                <author>
                    J. Random Hacker
                <author>
                    Jane Doe

In reStructuredText, multiple author's names are separated with
semicolons (";") or commas (","); semicolons take precedence.  There
is currently no way to represent the author's organization, address,
or contact in a reStructuredText "Authors" field.

See 문서정보_ for a more complete example, including processing
context.


``block_quote``
===============

The ``block_quote`` element is used for quotations set off from the
main text (standalone).


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``block_quote``.

:Children:
    ``block_quote`` elements contain `바디 요소`_ followed by an
    optional attribution_ element.

:Analogues:
    ``block_quote`` is analogous to the "blockquote" element in both
    HTML and DocBook.

:Processing:
    ``block_quote`` elements serve to set their contents off from the
    main text, typically with indentation and/or other decoration.


Content Model
-------------

.. parsed-literal::

   ((`%body.elements;`_)+, attribution_?)

:Attributes:
    The ``block_quote`` element contains only the `common
    attributes`_: ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``block_quote``.  The `%structure.model;`_ parameter entity
    indirectly includes ``block_quote``.


Examples
--------

reStructuredText source::

    As a great paleontologist once said,

        This theory, that is mine, is mine.

        -- Anne Elk (Miss)

Pseudo-XML_ fragment from simple parsing::

    <paragraph>
        As a great paleontologist once said,
    <block_quote>
        <paragraph>
            This theory, that is mine, is mine.
        <attribution>
            Anne Elk (Miss)


``bullet_list``
===============

The ``bullet_list`` element contains list_item_ elements which are
uniformly marked with bullets.  Bullets are typically simple dingbats
(symbols) such as circles and squares.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``bullet_list``.

:Children:
    ``bullet_list`` elements contain one or more list_item_ elements.

:Analogues:
    ``bullet_list`` is analogous to the HTML "ul" element and to the
    DocBook "itemizedlist" element.  HTML's "ul" is short for
    "unordered list", which we consider to be a misnomer.  "Unordered"
    implies that the list items may be randomly rearranged without
    affecting the meaning of the list.  Bullet lists *are* often
    ordered; the ordering is simply left implicit.

:Processing:
    Each list item should begin a new vertical block, prefaced by a
    bullet/dingbat.


Content Model
-------------

.. parsed-literal::

    (list_item_ +)

:Attributes:
    The ``bullet_list`` element contains the `common attributes`_
    (ids_, names_, dupnames_, source_, and classes_), plus bullet_.

    ``bullet`` is used to record the style of bullet from the input
    data.  In documents processed from reStructuredText_, it contains
    one of "-", "+", or "*".  It may be ignored in processing.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``bullet_list``.  The `%structure.model;`_ parameter entity
    indirectly includes ``bullet_list``.


Examples
--------

reStructuredText_ source::

    - Item 1, paragraph 1.

      Item 1, paragraph 2.

    - Item 2.

Pseudo-XML_ fragment from simple parsing::

    <bullet_list bullet="-">
        <list_item>
            <paragraph>
                Item 1, paragraph 1.
            <paragraph>
                Item 1, paragraph 2.
        <list_item>
            <paragraph>
                Item 2.

See list_item_ for another example.


``caption``
===========

`To be completed`_.


``caution``
===========

The ``caution`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, danger_, error_,
hint_, important_, note_, tip_, warning_, and the generic admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``caution``.

:Children:
    ``caution`` elements contain one or more `바디 요소`_.

:Analogues:
    ``caution`` is analogous to the DocBook "caution" element.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Caution" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``caution`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``caution``.  The `%structure.model;`_ parameter entity
    indirectly includes ``caution``.


Examples
--------

reStructuredText source::

    .. Caution:: Don't take any wooden nickels.

Pseudo-XML_ fragment from simple parsing::

    <caution>
        <paragraph>
            Don't take any wooden nickels.


``citation``
============

`To be completed`_.


``citation_reference``
======================

`To be completed`_.


``classifier``
==============

The ``classifier`` element contains the classification or type of the
term_ being defined in a definition_list_.  For example, it can be
used to indicate the type of a variable.


Details
-------

:Category:
    `Body Subelements`_ (simple)

:Parents:
    Only the definition_list_item_ element contains ``classifier``.

:Children:
    ``classifier`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``classifier`` has no direct analogues in common DTDs.  It can be
    emulated with primitives or type effects.

:Processing:
    See definition_list_item_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``classifier`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

Here is a hypothetical data dictionary.  reStructuredText_ source::

    name : string
        Customer name.
    i : int
        Temporary index variable.

Pseudo-XML_ fragment from simple parsing::

    <definition_list>
        <definition_list_item>
            <term>
                name
            <classifier>
                string
            <definition>
                <paragraph>
                    Customer name.
        <definition_list_item>
            <term>
                i
            <classifier>
                int
            <definition>
                <paragraph>
                    Temporary index variable.


``colspec``
===========

`To be completed`_.


``comment``
===========

`To be completed`_.


``compound``
============

`To be completed`_.


``연락처``
======================

The ``연락처`` element holds contact information for the author
(individual or group) of the document, or a third-party contact.  It
is typically used for an email or web address.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    The following elements may contain ``연락처``: 문서정보_, 복수저자_

:Children:
    ``연락처`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``연락처`` is analogous to the DocBook "email" element.  The HTML
    "address" element serves a similar purpose.

:Processing:
    See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``연락처`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``연락처``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Contact: jrh@example.com

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <contact>
                <reference refuri="mailto:jrh@example.com">
                    jrh@example.com

See 문서정보_ for a more complete example, including processing
context.


``container``
=============

`To be completed`_.


``저작권``
========================

The ``저작권`` element contains the document's copyright statement.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``저작권``.

:Children:
    ``저작권`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``저작권`` is analogous to the DocBook "copyright" element.

:Processing:
    See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``저작권`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``저작권``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Copyright: This document has been placed in the public domain.

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <copyright>
                This document has been placed in the public domain.

See 문서정보_ for a more complete example, including processing
context.


``danger``
==========

The ``danger`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, caution_, error_,
hint_, important_, note_, tip_, warning_, and the generic admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``danger``.

:Children:
    ``danger`` elements contain one or more `바디 요소`_.

:Analogues:
    ``danger`` has no direct analogues in common DTDs.  It can be
    emulated with primitives and type effects.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "!DANGER!" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``danger`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``danger``.  The `%structure.model;`_ parameter entity
    indirectly includes ``danger``.


Examples
--------

reStructuredText source::

    .. DANGER:: Mad scientist at work!

Pseudo-XML_ fragment from simple parsing::

    <danger>
        <paragraph>
            Mad scientist at work!


``날짜``
===================

The ``날짜`` element contains the date of publication, release, or
last modification of the document.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``날짜``.

:Children:
    ``날짜`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``날짜`` is analogous to the DocBook "date" element.

:Processing:
    Often used with the RCS/CVS keyword "Date".  See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``날짜`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``날짜``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Date: 2002-08-20

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <date>
                2002-08-20

See 문서정보_ for a more complete example, including processing
context.


``장식``
==============

The ``장식`` element is a container for 머리말_ and 꼬리말_
elements and potential future extensions.  These elements are used for
notes, time/datestamp, processing information, etc.


Details
-------

:Category:
    `구조 서브요소`_

:Parents:
    Only the 문서_ element contains ``장식``.

:Children:
    ``장식`` elements may contain `decorative elements`_.

:Analogues:
    There are no direct analogies to ``장식`` in HTML or in
    DocBook.  Equivalents are typically constructed from primitives
    and/or generated by the processing system.

:Processing:
    See the individual `decorative elements`_.


Content Model
-------------

.. parsed-literal::

    (머리말_?, 꼬리말_?)

Although the content model doesn't specifically require contents, no
empty ``장식`` elements are ever created.

:Attributes:
    The ``장식`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

reStructuredText_ source::

    A paragraph.

Complete pseudo-XML_ result after parsing and applying transforms,
assuming that the datestamp command-line option or configuration
setting has been supplied::

    <document>
        <decoration>
            <footer>
                <paragraph>
                    Generated on: 2002-08-20.
        <paragraph>
            A paragraph.


``definition``
==============

The ``definition`` element is a container for the body elements used
to define a term_ in a definition_list_.


Details
-------

:Category:
    `Body Subelements`_ (compound)

:Parents:
    Only definition_list_item_ elements contain ``definition``.

:Children:
    ``definition`` elements may contain `바디 요소`_.

:Analogues:
    ``definition`` is analogous to the HTML "dd" element and to the
    DocBook "listitem" element (inside a "variablelistentry" element).

:Processing:
    See definition_list_item_.


Content Model
-------------

.. parsed-literal::

    (`%body.elements;`_)+

:Attributes:
    The ``definition`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the definition_list_, definition_list_item_, and
classifier_ elements.


``definition_list``
===================

The ``definition_list`` element contains a list of terms and their
definitions.  It can be used for glossaries or dictionaries, to
describe or classify things, for dialogues, or to itemize subtopics
(such as in this reference).


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``definition_list``.

:Children:
    ``definition_list`` elements contain one or more
    definition_list_item_ elements.

:Analogues:
    ``definition_list`` is analogous to the HTML "dl" element and to
    the DocBook "variablelist" element.

:Processing:
    See definition_list_item_.


Content Model
-------------

.. parsed-literal::

    (definition_list_item_ +)

:Attributes:
    The ``definition_list`` element contains only the `common
    attributes`_: ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``definition_list``.  The `%structure.model;`_ parameter entity
    indirectly includes ``definition_list``.


Examples
--------

reStructuredText_ source::

    Term
      Definition.

    Term : classifier
        The ' : ' indicates a classifier in
        definition list item terms only.

Pseudo-XML_ fragment from simple parsing::

    <definition_list>
        <definition_list_item>
            <term>
                Term
            <definition>
                <paragraph>
                    Definition.
        <definition_list_item>
            <term>
                Term
            <classifier>
                classifier
            <definition>
                <paragraph>
                    The ' : ' indicates a classifier in
                    definition list item terms only.

See definition_list_item_ and classifier_ for further examples.


``definition_list_item``
========================

The ``definition_list_item`` element contains a single
term_/definition_ pair (with optional classifier_).


Details
-------

:Category:
    `Body Subelements`_ (compound)

:Parents:
    Only the definition_list_ element contains
    ``definition_list_item``.

:Children:
    ``definition_list_item`` elements each contain a single term_,
    an optional classifier_, and a definition_.

:Analogues:
    ``definition_list_item`` is analogous to the DocBook
    "variablelistentry" element.

:Processing:
    The optional classifier_ can be rendered differently from the
    term_.  They should be separated visually, typically by spaces
    plus a colon or dash.


Content Model
-------------

.. parsed-literal::

    (term_, classifier_?, definition_)

:Attributes:
    The ``definition_list_item`` element contains only the `common
    attributes`_: ids_, names_, dupnames_, source_, and classes_.


Examples
--------

reStructuredText_ source::

    Tyrannosaurus Rex : carnivore
        Big and scary; the "Tyrant King".

    Brontosaurus : herbivore
        All brontosauruses are thin at one end,
        much much thicker in the middle
        and then thin again at the far end.

        -- Anne Elk (Miss)

Pseudo-XML_ fragment from simple parsing::

    <definition_list>
        <definition_list_item>
            <term>
                Tyrannosaurus Rex
            <classifier>
                carnivore
            <definition>
                <paragraph>
                    Big and scary; the "Tyrant King".
        <definition_list_item>
            <term>
                Brontosaurus
            <classifier>
                herbivore
            <definition>
                <paragraph>
                    All brontosauruses are thin at one end,
                    much much thicker in the middle
                    and then thin again at the far end.
                <paragraph>
                    -- Anne Elk (Miss)

See definition_list_ and classifier_ for further examples.


``description``
===============

The ``description`` element contains body elements, describing the
purpose or effect of a command-line option or group of options.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the option_list_item_ element contains ``description``.

:Children:
    ``description`` elements may contain `바디 요소`_.

:Analogues:
    ``description`` has no direct analogues in common DTDs.

:Processing:
    See option_list_.


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``description`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the option_list_ element.


``문서정보``
===========

The ``문서정보`` element is a container for document bibliographic
data, or meta-data (data about the document).  It corresponds to the
front matter of a book, such as the title page and copyright page.


Details
-------

:Category:
    `구조 서브요소`_

:Parents:
    Only the 문서_ element contains ``문서정보``.

:Children:
    ``문서정보`` elements contain `문헌 요소`_.

:Analogues:
    ``문서정보`` is analogous to DocBook "info" elements ("bookinfo"
    etc.).  There are no directly analogous HTML elements; the "meta"
    element carries some of the same information, albeit invisibly.

:Processing:
    The ``문서정보`` element may be rendered as a two-column table or
    in other styles.  It may even be invisible or omitted from the
    processed output.  Meta-data may be extracted from ``문서정보``
    children; for example, HTML ``<meta>`` tags may be constructed.

    When Docutils_ transforms a reStructuredText_ 필드_리스트_ into a
    ``문서정보`` element (see the examples below), RCS/CVS keywords are
    normally stripped from simple (one paragraph) field bodies.  For
    complete details, please see `RCS Keywords`_ in the
    `reStructuredText Markup Specification`_.

    .. _RCS Keywords: rst/restructuredtext.html#rcs-keywords


Content Model
-------------

.. parsed-literal::

    (`%bibliographic.elements;`_)+

:Attributes:
    The ``문서정보`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

Docinfo is represented in reStructuredText_ by a 필드_리스트_ in a
bibliographic context: the first non-comment element of a 문서_,
after any document 제목_\ /부제목_\ .  The field list is transformed
into a ``문서정보`` element and its children by a transform.  Source::

    Docinfo Example
    ===============

    :Author: J. Random Hacker
    :Contact: jrh@example.com
    :Date: 2002-08-18
    :Status: Work In Progress
    :Version: 1
    :Filename: $RCSfile$
    :Copyright: This document has been placed in the public domain.

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="docinfo-example" names="docinfo example">
        <title>
            Docinfo Example
        <docinfo>
            <author>
                J. Random Hacker
            <contact>
                <reference refuri="mailto:jrh@example.com">
                    jrh@example.com
            <date>
                2002-08-18
            <status>
                Work In Progress
            <version>
                1
            <field>
                <필드_name>
                    Filename
                <필드_body>
                    <paragraph>
                        doctree.txt
            <copyright>
                This document has been placed in the public domain.

Note that "Filename" is a non-standard ``문서정보`` field, so becomes a
generic ``필드`` element.  Also note that the "RCSfile" keyword
syntax has been stripped from the "Filename" data.

See 필드_리스트_ for an example in a non-bibliographic context.  Also
see the individual examples for the various `문헌 요소`_.


``doctest_block``
=================

The ``doctest_block`` element is a Python-specific variant of
literal_block_.  It is a block of text where line breaks and
whitespace are significant and must be preserved.  ``doctest_block``
elements are used for interactive Python interpreter sessions, which
are distinguished by their input prompt: ``>>>``.  They are meant to
illustrate usage by example, and provide an elegant and powerful
testing environment via the `doctest module`_ in the Python standard
library.

.. _doctest module:
   http://www.python.org/doc/current/lib/module-doctest.html


Details
-------

:Category:
    `단순 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``doctest_block``.

:Children:
    ``doctest_block`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``doctest_block`` is analogous to the HTML "pre" element and to
    the DocBook "programlisting" and "screen" elements.

:Processing:
    As with literal_block_, ``doctest_block`` elements are typically
    rendered in a monospaced typeface.  It is crucial that all
    whitespace and line breaks are preserved in the rendered form.


Content Model
-------------

.. parsed-literal::

   `%text.model;`_

:Attributes:
    The ``doctest_block`` element contains the `common attributes`_
    (ids_, names_, dupnames_, source_, and classes_), plus `xml:space`_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``doctest_block``.  The `%structure.model;`_ parameter entity
    indirectly includes ``doctest_block``.


Examples
--------

reStructuredText source::

    This is an ordinary paragraph.

    >>> print 'this is a Doctest block'
    this is a Doctest block

Pseudo-XML_ fragment from simple parsing::

    <paragraph>
        This is an ordinary paragraph.
    <doctest_block xml:space="preserve">
        >>> print 'this is a Doctest block'
        this is a Doctest block


``문서``
============

The ``문서`` element is the root (topmost) element of the Docutils
document tree.  ``문서`` is the direct or indirect ancestor of
every other element in the tree.  It encloses the entire document
tree.  It is the starting point for a document.


Details
-------

:Category:
    `구조 요소`_

:Parents:
    The ``문서`` element has no parents.

:Children:
    ``문서`` elements may contain `structural subelements`_,
    `structural elements`_, and `바디 요소`_.

:Analogues:
    ``문서`` is analogous to the HTML "html" element and to
    several DocBook elements such as "book".


Content Model
-------------

.. parsed-literal::

    ( (제목_\ , 부제목_\ ?)?,
      장식_?,
      (문서정보_, 전환_?)?,
      `%structure.model;`_ )

Depending on the source of the data and the stage of processing, the
"document" may not initially contain a "title".  A document title is
not directly representable in reStructuredText_.  Instead, a lone
top-level section may have its title promoted to become the document
제목_\ , and similarly for a lone second-level (sub)section's title to
become the document 부제목_\ .

The contents of "장식_" may be specified in a document,
constructed programmatically, or both.  The "문서정보_" may be
transformed from an initial 필드_리스트_.

See the `%structure.model;`_ parameter entity for details of the body
of a ``문서``.

:Attributes:
    The ``문서`` element contains the `common attributes`_ (ids_,
    names_, dupnames_, source_, and classes_), plus an optional 제목_\ _
    attribute which stores the document title metadata.

    __ `title (attribute)`_


Examples
--------

reStructuredText_ source::

    A Title
    =======

    A paragraph.

Complete pseudo-XML_ result from simple parsing::

    <document>
        <section ids="a-title" names="a title">
            <title>
                A Title
            <paragraph>
                A paragraph.

After applying transforms, the section title is promoted to become the
document title::

    <document ids="a-title" names="a title">
        <title>
            A Title
        <paragraph>
            A paragraph.


``emphasis``
============

`To be completed`_.


``entry``
=========

`To be completed`_.


``enumerated_list``
===================

The ``enumerated_list`` element contains list_item_ elements which are
uniformly marked with enumerator labels.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``enumerated_list``.

:Children:
    ``enumerated_list`` elements contain one or more list_item_
    elements.

:Analogues:
    ``enumerated_list`` is analogous to the HTML "ol" element and to
    the DocBook "orderedlist" element.

:Processing:
    Each list item should begin a new vertical block, prefaced by a
    enumeration marker (such as "1.").


Content Model
-------------

.. parsed-literal::

    (list_item_ +)

:Attributes:
    The ``enumerated_list`` element contains the `common attributes`_
    (ids_, names_, dupnames_, source_, and classes_), plus enumtype_,
    prefix_, suffix_, and start_.

    ``enumtype`` is used to record the intended enumeration sequence,
    one of "arabic" (1, 2, 3, ...), "loweralpha" (a, b, c, ..., z),
    "upperalpha" (A, B, C, ..., Z), "lowerroman" (i, ii, iii, iv, ...,
    mmmmcmxcix [4999]), or "upperroman" (I, II, III, IV, ...,
    MMMMCMXCIX [4999]).

    ``prefix`` stores the formatting characters used before the
    enumerator.  In documents originating from reStructuredText_ data,
    it will contain either "" (empty string) or "(" (left
    parenthesis).  It may or may not affect processing.

    ``suffix`` stores the formatting characters used after the
    enumerator.  In documents originating from reStructuredText_ data,
    it will contain either "." (period) or ")" (right parenthesis).
    Depending on the capabilities of the output format, this attribute
    may or may not affect processing.

    ``start`` contains the ordinal value of the first item in the
    list, in decimal.  For lists beginning at value 1 ("1", "a", "A",
    "i", or "I"), this attribute may be omitted.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``enumerated_list``.  The `%structure.model;`_ parameter entity
    indirectly includes ``enumerated_list``.


Examples
--------

reStructuredText_ source::

    1. Item 1.

       (A) Item A.
       (B) Item B.
       (C) Item C.

    2. Item 2.

Pseudo-XML_ fragment from simple parsing::

    <enumerated_list enumtype="arabic" prefix="" suffix=".">
        <list_item>
            <paragraph>
                Item 1.
            <enumerated_list enumtype="upperalpha" prefix="(" suffix=")">
                <list_item>
                    <paragraph>
                        Item A.
                <list_item>
                    <paragraph>
                        Item B.
                <list_item>
                    <paragraph>
                        Item C.
        <list_item>
            <paragraph>
                Item 2.

See list_item_ for another example.


``error``
=========

The ``error`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, caution_,
danger_, hint_, important_, note_, tip_, warning_, and the generic
admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``error``.

:Children:
    ``error`` elements contain one or more `바디 요소`_.

:Analogues:
    ``error`` has no direct analogues in common DTDs.  It can be
    emulated with primitives and type effects.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Error" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``error`` element contains only the `common attributes`_: ids_,
    names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``error``.  The `%structure.model;`_ parameter entity indirectly
    includes ``error``.


Examples
--------

reStructuredText source::

    .. Error:: Does not compute.

Pseudo-XML_ fragment from simple parsing::

    <error>
        <paragraph>
            Does not compute.


``필드``
=========

The ``필드`` element contains a pair of 필드_이름_ and 필드_바디_
elements.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    The following elements may contain ``필드``: 문서정보_,
    필드_리스트_

:Children:
    Each ``필드`` element contains one 필드_이름_ and one
    필드_바디_ element.

:Analogues:
    ``필드`` has no direct analogues in common DTDs.

:Processing:
    See 필드_리스트_.


Content Model
-------------

.. parsed-literal::

   (필드_이름_, 필드_바디_)

:Attributes:
    The ``필드`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``필드``.


Examples
--------

See the examples for the 필드_리스트_ and 문서정보_ elements.


``필드_바디``
==============

The ``필드_바디`` element contains body elements.  It is analogous to
a database field's data.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the 필드_ element contains ``필드_바디``.

:Children:
    ``필드_바디`` elements may contain `바디 요소`_.

:Analogues:
    ``필드_바디`` has no direct analogues in common DTDs.

:Processing:
    See 필드_리스트_.


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)*

:Attributes:
    The ``필드_바디`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the 필드_리스트_ and 문서정보_ elements.


``필드_리스트``
==============

The ``필드_리스트`` element contains two-column table-like structures
resembling database records (label & data pairs).  Field lists are
often meant for further processing.  In reStructuredText_, field lists
are used to represent bibliographic fields (contents of the 문서정보_
element) and directive options.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``필드_리스트``.

:Children:
    ``필드_리스트`` elements contain one or more 필드_ elements.

:Analogues:
    ``필드_리스트`` has no direct analogues in common DTDs.  It can be
    emulated with primitives such as tables.

:Processing:
    A ``필드_리스트`` is typically rendered as a two-column list, where
    the first column contains "labels" (usually with a colon suffix).
    However, field lists are often used for extension syntax or
    special processing.  Such structures do not survive as field lists
    to be rendered.


Content Model
-------------

.. parsed-literal::

   (필드_ +)

:Attributes:
    The ``필드_리스트`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``필드_리스트``.  The `%structure.model;`_ parameter entity
    indirectly includes ``필드_리스트``.


Examples
--------

reStructuredText_ source::

    :Author: Me
    :Version: 1
    :Date: 2001-08-11
    :Parameter i: integer

Pseudo-XML_ fragment from simple parsing::

    <필드_list>
        <field>
            <필드_name>
                Author
            <필드_body>
                <paragraph>
                    Me
        <field>
            <필드_name>
                Version
            <필드_body>
                <paragraph>
                    1
        <field>
            <필드_name>
                Date
            <필드_body>
                <paragraph>
                    2001-08-11
        <field>
            <필드_name>
                Parameter i
            <필드_body>
                <paragraph>
                    integer


``필드_이름``
==============

The ``필드_이름`` element contains text; it is analogous to a
database field's name.


Details
-------

:Category:
    `Body Subelements`_ (simple)

:Parents:
    Only the 필드_ element contains ``필드_이름``.

:Children:
    ``필드_이름`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``필드_이름`` has no direct analogues in common DTDs.

:Processing:
    See 필드_리스트_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``필드_이름`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the 필드_리스트_ and 문서정보_ elements.


``figure``
==========

`To be completed`_.


``꼬리말``
==========

The ``꼬리말`` element is a container element whose contents are meant
to appear at the bottom of a web page, or repeated at the bottom of
every printed page.  The ``꼬리말`` element may contain processing
information (datestamp, a link to Docutils_, etc.) as well as custom
content.


Details
-------

:Category:
    `Decorative Elements`_

:Parents:
    Only the 장식_ element contains ``꼬리말``.

:Children:
    ``꼬리말`` elements may contain `바디 요소`_.

:Analogues:
    There are no direct analogies to ``꼬리말`` in HTML or DocBook.
    Equivalents are typically constructed from primitives and/or
    generated by the processing system.


Content Model
-------------

.. parsed-literal::

    (`%body.elements;`_)+

:Attributes:
    The ``꼬리말`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

reStructuredText_ source::

    A paragraph.

Complete pseudo-XML_ result after parsing and applying transforms,
assuming that the datestamp command-line option or configuration
setting has been supplied::

    <document>
        <decoration>
            <footer>
                <paragraph>
                    Generated on: 2002-08-20.
        <paragraph>
            A paragraph.


``footnote``
============

`To be completed`_.


``footnote_reference``
======================

`To be completed`_.


``generated``
=============

Docutils wraps ``generated`` elements around text that is inserted
(generated) by Docutils; i.e., text that was not in the document, like
section numbers inserted by the "sectnum" directive.

`To be completed`_.


``머리말``
==========

The ``머리말`` element is a container element whose contents are meant
to appear at the top of a web page, or at the top of every printed
page.


Details
-------

:Category:
    `Decorative Elements`_

:Parents:
    Only the 장식_ element contains ``머리말``.

:Children:
    ``머리말`` elements may contain `바디 요소`_.

:Analogues:
    There are no direct analogies to ``머리말`` in HTML or DocBook.
    Equivalents are typically constructed from primitives and/or
    generated by the processing system.


Content Model
-------------

.. parsed-literal::

    (`%body.elements;`_)+

:Attributes:
    The ``머리말`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

reStructuredText source fragment::

    .. header:: This space for rent.

Pseudo-XML_ fragment from simple parsing::

    <document>
        <decoration>
            <header>
                <paragraph>
                    This space for rent.


``hint``
========

The ``hint`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, caution_,
danger_, error_, important_, note_, tip_, warning_, and the generic
admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``hint``.

:Children:
    ``hint`` elements contain one or more `바디 요소`_.

:Analogues:
    ``hint`` has no direct analogues in common DTDs.  It can be
    emulated with primitives and type effects.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Hint" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``hint`` element contains only the `common attributes`_: ids_,
    names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``hint``.  The `%structure.model;`_ parameter entity indirectly
    includes ``hint``.


Examples
--------

reStructuredText source::

    .. Hint:: It's bigger than a bread box.

Pseudo-XML_ fragment from simple parsing::

    <hint>
        <paragraph>
            It's bigger than a bread box.


``image``
=========

`To be completed`_.


``important``
=============

The ``important`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, caution_,
danger_, error_, hint_, note_, tip_, warning_, and the generic
admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``important``.

:Children:
    ``important`` elements contain one or more `바디 요소`_.

:Analogues:
    ``important`` is analogous to the DocBook "important" element.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Important" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``important`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``important``.  The `%structure.model;`_ parameter entity
    indirectly includes ``important``.


Examples
--------

reStructuredText source::

    .. Important::

       * Wash behind your ears.
       * Clean up your room.
       * Back up your data.
       * Call your mother.

Pseudo-XML_ fragment from simple parsing::

    <important>
        <bullet_list>
            <list_item>
                <paragraph>
                    Wash behind your ears.
            <list_item>
                <paragraph>
                    Clean up your room.
            <list_item>
                <paragraph>
                    Back up your data.
            <list_item>
                <paragraph>
                    Call your mother.


``inline``
==========

`To be completed`_.


``label``
=========

`To be completed`_.


``legend``
==========

`To be completed`_.


``line``
========

The ``line`` element contains a single line of text, part of a
`line_block`_.


Details
-------

:Category:
    `Body Subelements`_ (simple)

:Parents:
    Only the `line_block`_ element contains ``line``.

:Children:
    ``line`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``line`` has no direct analogues in common DTDs.  It can be
    emulated with primitives or type effects.

:Processing:
    See `line_block`_.


Content Model
-------------

.. parsed-literal::

   `%text.model;`_

:Attributes:
    The ``line`` element contains the `common attributes`_ (ids_,
    names_, dupnames_, source_, and classes_), plus `xml:space`_.


Examples
--------

See `line_block`_.


``line_block``
==============

The ``line_block`` element contains a sequence of lines and nested
line blocks.  Line breaks (implied between elements) and leading
whitespace (indicated by nesting) is significant and must be
preserved.  ``line_block`` elements are commonly used for verse and
addresses.  See `literal_block`_ for an alternative useful for program
listings and interactive computer sessions.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``line_block``.

:Children:
    ``line_block`` elements may contain line_ elements and nested
    ``line_block`` elements.

:Analogues:
    ``line_block`` is analogous to the DocBook "literallayout" element
    and to the HTML "pre" element (with modifications to typeface
    styles).

:Processing:
    Unlike ``literal_block``, ``line_block`` elements are typically
    rendered in an ordinary text typeface.  It is crucial that leading
    whitespace and line breaks are preserved in the rendered form.


Content Model
-------------

.. parsed-literal::

   (line_ | line_block_)+

:Attributes:
    The ``line_block`` element contains the `common attributes`_ (ids_,
    names_, dupnames_, source_, and classes_), plus `xml:space`_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``line_block``.  The `%structure.model;`_ parameter entity
    indirectly includes ``line_block``.


Examples
--------

reStructuredText uses a directive to indicate a ``line_block``.
Example source::

    Take it away, Eric the Orchestra Leader!

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

Pseudo-XML_ fragment from simple parsing::

    <paragraph>
        Take it away, Eric the Orchestra Leader!
    <line_block>
        <line>
            A one, two, a one two three four
        <line>
        <line>
            Half a bee, philosophically,
        <line_block>
            <line>
                must,
                <emphasis>
                    ipso facto
                , half not be.
        <line>
            But half the bee has got to be,
        <line_block>
            <line>
                <emphasis>
                    vis a vis
                 its entity.  D'you see?
            <line>
        <line>
            But can a bee be said to be
        <line_block>
            <line>
                or not to be an entire bee,
            <line_block>
                <line>
                    when half the bee is not a bee,
                <line_block>
                    <line>
                        due to some ancient injury?
                    <line>
        <line>
            Singing...


``list_item``
=============

The ``list_item`` element is a container for the elements of a list
item.


Details
-------

:Category:
    `Body Subelements`_ (compound)

:Parents:
    The bullet_list_ and enumerated_list_ elements contain
    ``list_item``.

:Children:
    ``list_item`` elements may contain `바디 요소`_.

:Analogues:
    ``list_item`` is analogous to the HTML "li" element and to the
    DocBook "listitem" element.

:Processing:
    See bullet_list_ or enumerated_list_.


Content Model
-------------

.. parsed-literal::

    (`%body.elements;`_)*

:Attributes:
    The ``list_item`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

reStructuredText_ source::

    1. Outer list, item 1.

       * Inner list, item 1.
       * Inner list, item 2.

    2. Outer list, item 2.

Pseudo-XML_ fragment from simple parsing::

    <enumerated_list enumtype="arabic" prefix="" suffix=".">
        <list_item>
            <paragraph>
                Outer list, item 1.
            <bullet_list bullet="*">
                <list_item>
                    <paragraph>
                        Inner list, item 1.
                <list_item>
                    <paragraph>
                        Inner list, item 2.
        <list_item>
            <paragraph>
                Outer list, item 2.

See bullet_list_ or enumerated_list_ for further examples.


``literal``
===========

`To be completed`_.


``literal_block``
=================

The ``literal_block`` element contains a block of text where line
breaks and whitespace are significant and must be preserved.
``literal_block`` elements are commonly used for program listings and
interactive computer sessions.  See `line_block`_ for an alternative
useful for verse and addresses.


Details
-------

:Category:
    `단순 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``literal_block``.

:Children:
    ``literal_block`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``literal_block`` is analogous to the HTML "pre" element and to
    the DocBook "programlisting" and "screen" elements.

:Processing:
    ``literal_block`` elements are typically rendered in a monospaced
    typeface.  It is crucial that all whitespace and line breaks are
    preserved in the rendered form.


Content Model
-------------

.. parsed-literal::

   `%text.model;`_

:Attributes:
    The ``literal_block`` element contains the `common attributes`_
    (ids_, names_, dupnames_, source_, and classes_), plus `xml:space`_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``literal_block``.  The `%structure.model;`_ parameter entity
    indirectly includes ``literal_block``.


Examples
--------

reStructuredText source::

    Here is a literal block::

        if literal_block:
            text = 'is left as-is'
            spaces_and_linebreaks = 'are preserved'
            markup_processing = None

Pseudo-XML_ fragment from simple parsing::

    <paragraph>
        Here is a literal block:
    <literal_block xml:space="preserve">
        if literal_block:
            text = 'is left as-is'
            spaces_and_linebreaks = 'are preserved'
            markup_processing = None

``math``
========

The ``math`` element contains text in `LaTeX math format` [#latex-math]_
that is typeset as mathematical notation (inline formula).

If the output format does not support math typesetting, the content is
inserted verbatim.

Details
-------

:Category:
    `Inline Elements`_

:Parents:
    All elements employing the `%inline.elements;`_ parameter entities in
    their content models may contain ``math``.

:Children:
    ``math`` elements may contain text data.

:Analogues:
    ``math`` is analogous to a MathML "math" element or
    the LaTeX (``$ math $``) mode.

:Processing:
    Rendered as mathematical notation.

Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``math`` element contains the `common attributes`_
    (ids_, names_, dupnames_, source_, and classes_).

.. [#latex-math] For details of the supported mathematical language, see
   the `"math" directive`_

.. _"math" directive: rst/directives.html#math


``math_block``
==============

The ``math_block`` element contains a block of text in `LaTeX math
format` [#latex-math]_ that is typeset as mathematical notation
(display formula). The ``math_block`` element is generated during
the initial parse from a "math" directive.

If the output format does not support math typesetting, the content is
inserted verbatim.

Details
-------

:Category:
    `단순 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``math_block``.

:Children:
    ``math_block`` elements may contain text data.

:Analogues:
    ``math_block`` is analogous to a LaTeX "equation*" environment or
    a MathML "math" element displayed as block-level element.

:Processing:
    Rendered in a block as mathematical notation, typically centered or with
    indentation

Content Model
-------------

.. parsed-literal::

    (#PCDATA)

:Attributes:
    The ``math`` element contains the `common attributes`_
    (ids_, names_, dupnames_, source_, and classes_).


``note``
========

The ``note`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, caution_,
danger_, error_, hint_, important_, tip_, warning_, and the generic
admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``note``.

:Children:
    ``note`` elements contain one or more `바디 요소`_.

:Analogues:
    ``note`` is analogous to the DocBook "note" element.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Note" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``note`` element contains only the `common attributes`_: ids_,
    names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``note``.  The `%structure.model;`_ parameter entity indirectly
    includes ``note``.


Examples
--------

reStructuredText source::

    .. Note:: Admonitions can be handy to break up a
       long boring technical document.

Pseudo-XML_ fragment from simple parsing::

    <note>
        <paragraph>
            Admonitions can be handy to break up a
            long boring technical document.

``option``
==========

The ``option`` element groups an option string together with zero or
more option argument placeholders.  Note that reStructuredText_
currently supports only one argument per option.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the option_group_ element contains ``option``.

:Children:
    Each ``option`` element contains one option_string_ and zero or
    more option_argument_ elements.

:Analogues:
    ``option`` has no direct analogues in common DTDs.

:Processing:
    See option_list_.


Content Model
-------------

.. parsed-literal::

   (option_string_, option_argument_ \*)

:Attributes:
    The ``option`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the option_list_ element.


``option_argument``
===================

The ``option_argument`` element contains placeholder text for option
arguments.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the option_ element contains ``option_argument``.

:Children:
    ``option_argument`` elements contain text data only.

:Analogues:
    ``option_argument`` has no direct analogues in common DTDs.

:Processing:
    The value of the "delimiter" attribute is prefixed to the
    ``option_argument``, separating it from its option_string_ or a
    preceding ``option_argument``.  The ``option_argument`` text is
    typically rendered in a monospaced typeface, possibly italicized
    or otherwise altered to indicate its placeholder nature.


Content Model
-------------

.. parsed-literal::

   (#PCDATA)

:Attributes:
    The ``option_argument`` element contains the `common attributes`_ (ids_,
    names_, dupnames_, source_, and classes_), plus delimiter_.

    ``delimiter`` contains the text preceding the ``option_argument``:
    either the text separating it from the option_string_ (typically
    either "=" or " ") or the text between option arguments (typically
    either "," or " ").


Examples
--------

See the examples for the option_list_ element.


``option_group``
================

The ``option_group`` element groups together one or more option_
elements, all synonyms.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the option_list_item_ element contains ``option_group``.

:Children:
    ``option_group`` elements contain one or more option_ elements.

    ``option_group`` is an empty element and has no children.

    Each ``option_group`` element contains one _ and
    one _ element.

:Analogues:
    ``option_group`` has no direct analogues in common DTDs.

:Processing:
    Typically option_ elements within an ``option_group`` are joined
    together in a comma-separated list.


Content Model
-------------

.. parsed-literal::

   (option_group_, description_)

:Attributes:
    The ``option_group`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the option_list_ element.


``option_list``
===============

Each ``option_list`` element contains a two-column list of
command-line options and descriptions, documenting a program's
options.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``option_list``.

:Children:
    ``option_list`` elements contain one or more option_list_item_
    elements.

:Analogues:
    ``option_list`` has no direct analogues in common DTDs.  It can be
    emulated with primitives such as tables.

:Processing:
    An ``option_list`` is typically rendered as a two-column list,
    where the first column contains option strings and arguments, and
    the second column contains descriptions.


Content Model
-------------

.. parsed-literal::

   (option_list_item_ +)

:Attributes:
    The ``option_list`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``option_list``.  The `%structure.model;`_ parameter entity
    indirectly includes ``option_list``.


Examples
--------

reStructuredText_ source::

    -a            command-line option "a"
    -1 file, --one=file, --two file
                  Multiple options with arguments.

Pseudo-XML_ fragment from simple parsing::

    <option_list>
        <option_list_item>
            <option_group>
                <option>
                    <option_string>
                        -a
            <description>
                <paragraph>
                    command-line option "a"
        <option_list_item>
            <option_group>
                <option>
                    <option_string>
                        -1
                    <option_argument delimiter=" ">
                        file
                <option>
                    <option_string>
                        --one
                    <option_argument delimiter="=">
                        file
                <option>
                    <option_string>
                        --two
                    <option_argument delimiter=" ">
                        file
            <description>
                <paragraph>
                    Multiple options with arguments.


``option_list_item``
====================

The ``option_list_item`` element is a container for a pair of
option_group_ and description_ elements.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the option_list_ element contains ``option_list_item``.

:Children:
    Each ``option_list_item`` element contains one option_group_ and
    one description_ element.

:Analogues:
    ``option_list_item`` has no direct analogues in common DTDs.

:Processing:
    See option_list_.


Content Model
-------------

.. parsed-literal::

   (option_group_, description_)

:Attributes:
    The ``option_list_item`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the option_list_ element.


``option_string``
=================

The ``option_string`` element contains the text of a command-line
option.


Details
-------

:Category:
    `Body Subelements`_

:Parents:
    Only the option_ element contains ``option_string``.

:Children:
    ``option_string`` elements contain text data only.

:Analogues:
    ``option_string`` has no direct analogues in common DTDs.

:Processing:
    The ``option_string`` text is typically rendered in a monospaced
    typeface.


Content Model
-------------

.. parsed-literal::

   (#PCDATA)

:Attributes:
    The ``option_string`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the option_list_ element.


``기관``
================

The ``기관`` element contains the name of document author's
organization, or the organization responsible for the document.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``기관``.

:Children:
    ``기관`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``기관`` is analogous to the DocBook "orgname",
    "corpname", or "publishername" elements.

:Processing:
    See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``기관`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``기관``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Organization: Humankind

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <organization>
                Humankind

See 문서정보_ for a more complete example, including processing
context.


``paragraph``
=============

The ``paragraph`` element contains the text and inline elements of a
single paragraph, a fundamental building block of documents.


Details
-------

:Category:
    `단순 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``paragraph``.

:Children:
    ``paragraph`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``paragraph`` is analogous to the HTML "p" element and to the
    DocBook "para" elements.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``paragraph`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``paragraph``.  The `%structure.model;`_ parameter entity
    indirectly includes ``paragraph``.


Examples
--------

reStructuredText_ source::

    A paragraph.

Pseudo-XML_ fragment from simple parsing::

    <paragraph>
        A paragraph.


``pending``
===========

`To be completed`_.


``problematic``
===============

`To be completed`_.


``raw``
=======

`To be completed`_.


``reference``
=============

`To be completed`_.


``리비전``
============

The ``리비전`` element contains the revision number of the document.
It can be used alone or in conjunction with 버전_.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``리비전``.

:Children:
    ``리비전`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``리비전`` is analogous to but simpler than the DocBook
    "revision" element.  It closely matches the DocBook "revnumber"
    element, but in a simpler context.

:Processing:
    Often used with the RCS/CVS keyword "Revision".  See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``리비전`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``리비전``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Version: 1
    :Revision: b

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <version>
                1
            <revision>
                b

See 문서정보_ for a more complete example, including processing
context.


``row``
=======

`To be completed`_.


``rubric``
==========

     rubric n. 1. a title, heading, or the like, in a manuscript,
     book, statute, etc., written or printed in red or otherwise
     distinguished from the rest of the text. ...

     -- Random House Webster's College Dictionary, 1991

A rubric is like an informal heading that doesn't correspond to the
document's structure.

`To be completed`_.


``절``
===========

The ``절`` element is the main unit of hierarchy for Docutils
documents.  Docutils ``절`` elements are a recursive structure; a
``절`` may contain other ``절`` elements, without limit.
Paragraphs and other body elements may occur before a ``절``, but
not after it.


Details
-------

:Category:
    `구조 요소`_

:Parents:
    The following elements may contain ``절``: 문서_,
    절_

:Children:
    ``절`` elements begin with a 제목_\ , and may contain `body
    elements`_ as well as 전환_, 토픽_, and 사이드바_ elements.

:Analogues:
    ``절`` is analogous to DocBook recursive "section" elements,
    and to HTML "div" elements combined with "h1" etc. title elements.


Content Model
-------------

.. parsed-literal::

    (제목_\ ,
     `%structure.model;`_)

See the `%structure.model;`_ parameter entity for details of the body
of a ``절``.

:Attributes:
    The ``절`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%section.elements;`_ parameter entity directly includes
    ``절``.  The `%structure.model;`_ parameter entity indirectly
    includes ``절``.


Examples
--------

reStructuredText_ source::

    Title 1
    =======
    Paragraph 1.

    Title 2
    -------
    Paragraph 2.

    Title 3
    =======
    Paragraph 3.

    Title 4
    -------
    Paragraph 4.

Complete pseudo-XML_ result after parsing::

    <document>
        <section ids="title-1" names="title 1">
            <title>
                Title 1
            <paragraph>
                Paragraph 1.
            <section ids="title-2" names="title 2">
                <title>
                    Title 2
                <paragraph>
                    Paragraph 2.
        <section ids="title-3" names="title 3">
            <title>
                Title 3
            <paragraph>
                Paragraph 3.
            <section ids="title-4" names="title 4">
                <title>
                    Title 4
                <paragraph>
                    Paragraph 4.


``사이드바``
===========

Sidebars are like miniature, parallel documents that occur inside
other documents, providing related or reference material.  A
``사이드바`` is typically offset by a border and "floats" to the side
of the page; the document's main text may flow around it.  Sidebars
can also be likened to super-footnotes; their content is outside of
the flow of the document's main text.

The ``사이드바`` element is a nonrecursive 절_-like construct
which may occur at the top level of a 절_ wherever a body element
(list, table, etc.) is allowed.  In other words, ``사이드바`` elements
cannot nest inside body elements, so you can't have a ``사이드바``
inside a ``table`` or a ``list``, or inside another ``사이드바`` (or
토픽_).


Details
-------

:Category:
    `구조 요소`_

:Parents:
    The following elements may contain ``사이드바``: 문서_,
    절_

:Children:
    ``사이드바`` elements begin with a 제목_\  and an optional 부제목_\
    and contain `바디 요소`_ and 토픽_ elements.

:Analogues:
    ``사이드바`` is analogous to the DocBook "sidebar" element.

:Processing:
    A ``사이드바`` element should be set off from the rest of the
    document somehow, typically with a border.  Sidebars typically
    "float" to the side of the page and the document's main text flows
    around them.


Content Model
-------------

.. parsed-literal::

    (제목_\ , 부제목_\ ?,
     (`%body.elements;`_ | 토픽_)+)

:Attributes:
    The ``사이드바`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%structure.model;`_ parameter entity directly includes
    ``사이드바``.


Examples
--------

The `"sidebar" directive`_ is used to create a ``사이드바`` element.
reStructuredText_ source::

    .. sidebar:: Title
       :subtitle: If Desired

       Body.

Pseudo-XML_ fragment from simple parsing::

    <sidebar>
        <title>
            Title
        <subtitle>
            If Desired
        <paragraph>
            Body.

.. _"sidebar" directive: rst/directives.html#sidebar


``상태``
==========

The ``상태`` element contains a status statement for the document,
such as "Draft", "Final", "Work In Progress", etc.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``상태``.

:Children:
    ``상태`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``상태`` is analogous to the DocBook "status" element.

:Processing:
    See 문서정보_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``상태`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``상태``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Status: Work In Progress

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <status>
                Work In Progress

See 문서정보_ for a more complete example, including processing
context.


``strong``
==========

`To be completed`_.


``subscript``
=============

`To be completed`_.


``substitution_definition``
===========================

`To be completed`_.


``substitution_reference``
==========================

`To be completed`_.


``부제목``
============

The ``부제목`` element stores the subtitle of a 문서_.


Details
-------

:Category:
    `구조 서브요소`_

:Parents:
    The 문서_ and 사이드바_ elements may contain ``부제목``.

:Children:
    ``부제목`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``부제목`` is analogous to HTML header elements ("h2" etc.) and
    to the DocBook "subtitle" element.

:Processing:
    A document's subtitle is usually rendered smaller than its 제목_\ .


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``부제목`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

reStructuredText_ source::

    =======
     Title
    =======
    ----------
     Subtitle
    ----------

    A paragraph.

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="title" names="title">
        <title>
            Title
        <subtitle ids="subtitle" names="subtitle">
            Subtitle
        <paragraph>
            A paragraph.

Note how two section levels have collapsed, promoting their titles to
become the document's title and subtitle.  Since there is only one
structural element (document), the subsection's ``ids`` and ``names``
attributes are stored in the ``부제목`` element.


``superscript``
===============

`To be completed`_.


``system_message``
==================

`To be completed`_.


``table``
=========

Docutils tables are based on the Exchange subset of the CALS-table model
(OASIS Technical Memorandum 9901:1999 "XML Exchange Table Model DTD",
http://www.oasis-open.org/html/tm9901.htm).

`To be completed`_.


``target``
==========

`To be completed`_.


``tbody``
=========

`To be completed`_.


``term``
========

The ``term`` element contains a word or phrase being defined in a
definition_list_.


Details
-------

:Category:
    `Body Subelements`_ (simple)

:Parents:
    Only the definition_list_item_ element contains ``term``.

:Children:
    ``term`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``term`` is analogous to the HTML "dt" element and to the DocBook
    "term" element.

:Processing:
    See definition_list_item_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``term`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.


Examples
--------

See the examples for the definition_list_, definition_list_item_, and
classifier_ elements.


``tgroup``
==========

`To be completed`_.


``thead``
=========

`To be completed`_.


``tip``
=======

The ``tip`` element is an admonition, a distinctive and self-contained
notice.  Also see the other admonition elements Docutils offers (in
alphabetical order): attention_, caution_, danger_, error_, hint_,
important_, note_, warning_, and the generic admonition_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``tip``.

:Children:
    ``tip`` elements contain one or more `바디 요소`_.

:Analogues:
    ``tip`` is analogous to the DocBook "tip" element.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Tip" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``tip`` element contains only the `common attributes`_: ids_,
    names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes ``tip``.
    The `%structure.model;`_ parameter entity indirectly includes
    ``tip``.


Examples
--------

reStructuredText source::

    .. Tip:: 15% if the service is good.

Pseudo-XML_ fragment from simple parsing::

    <tip>
        <paragraph>
            15% if the service is good.


.. _title:

``제목``
=================

The ``제목`` element stores the title of a 문서_, 절_,
토픽_, 사이드바_, or generic admonition_.


Details
-------

:Category:
    `구조 서브요소`_

:Parents:
    The following elements may contain ``제목``: 문서_, 절_,
    토픽_, 사이드바_, admonition_

:Children:
    ``제목`` elements may contain text data plus `inline elements`_.

:Analogues:
    ``제목`` is analogous to HTML "title" and header ("h1" etc.)
    elements, and to the DocBook "title" element.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``제목`` element contains the `common attributes`_ (ids_,
    names_, dupnames_, source_, and classes_), plus refid_ and auto_.

    ``refid`` is used as a backlink to a table of contents entry.

    ``auto`` is used to indicate (with value "1") that the ``제목``
    has been numbered automatically.


Examples
--------

reStructuredText_ source::

    A Title
    =======

    A paragraph.

Pseudo-XML_ fragment from simple parsing::

    <section ids="a-title" names="a title">
        <title>
            A Title
        <paragraph>
            A paragraph.


``제목_\ 참조``
======================================

`To be completed`_.


``토픽``
============================

The ``토픽`` element is a nonrecursive 절_-like construct which
may occur at the top level of a 절_ wherever a body element
(list, table, etc.) is allowed.  In other words, ``토픽`` elements
cannot nest inside body elements, so you can't have a ``토픽`` inside
a ``table`` or a ``list``, or inside another ``토픽``.


Details
-------

:Category:
    `구조 요소`_

:Parents:
    The following elements may contain ``토픽``: 문서_, 절_,
    사이드바_

:Children:
    ``토픽`` elements begin with a 제목_\  and may contain `body
    elements`_.

:Analogues:
    ``토픽`` is analogous to the DocBook "simplesect" element.

:Processing:
    A ``토픽`` element should be set off from the rest of the
    document somehow, such as with indentation or a border.


Content Model
-------------

.. parsed-literal::

    (제목_\ ?,
     (`%body.elements;`_)+)

:Attributes:
    The ``토픽`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%structure.model;`_ parameter entity directly includes
    ``토픽``.


Examples
--------

The `"topic" directive`_ is used to create a ``토픽`` element.
reStructuredText_ source::

    .. topic:: Title

       Body.

Pseudo-XML_ fragment from simple parsing::

    <topic>
        <title>
            Title
        <paragraph>
            Body.

.. _"topic" directive: rst/directives.html#topic


``전환``
==============

The ``전환`` element is commonly seen in novels and short
fiction, as a gap spanning one or more lines, with or without a type
ornament such as a row of asterisks.  Transitions separate body
elements and sections, dividing a section into untitled divisions.  A
transition may not begin or end a section [#]_ or document, nor may
two transitions be immediately adjacent.

See `Doctree Representation of Transitions`__ in `A Record of
reStructuredText Syntax Alternatives`__.

.. [#] In reStructuredText markup, a transition may appear to fall at
   the end of a section immediately before another section.  A
   transform recognizes this case and moves the transition so it
   separates the sections.

__ ../dev/rst/alternatives.html#doctree-representation-of-transitions
__ ../dev/rst/alternatives.html


Details
-------

:Category:
    `구조 서브요소`_

:Parents:
    The following elements may contain ``전환``: 문서_,
    절_

:Children:
    ``전환`` is an empty element and has no children.

:Analogues:
    ``전환`` is analogous to the HTML "hr" element.

:Processing:
    The ``전환`` element is typically rendered as vertical
    whitespace (more than that separating paragraphs), with or without
    a horizontal line or row of asterisks.  In novels, transitions are
    often represented as a row of three well-spaced asterisks with
    vertical space above and below.


Content Model
-------------

::

    EMPTY

The ``전환`` element has no content; it is a "point element".

:Attributes:
    The ``전환`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%structure.model;`_ parameter entity directly includes
    ``전환``.


Examples
--------

reStructuredText_ source::

    Paragraph 1.

    --------

    Paragraph 2.

Complete pseudo-XML_ result after parsing::

    <document>
        <paragraph>
            Paragraph 1.
        <transition>
        <paragraph>
            Paragraph 2.


``버전``
===========

The ``버전`` element contains the version number of the document.
It can be used alone or in conjunction with 리비전_.


Details
-------

:Category:
    `문헌 요소`_

:Parents:
    Only the 문서정보_ element contains ``버전``.

:Children:
    ``버전`` elements may contain text data plus `inline
    elements`_.

:Analogues:
    ``버전`` may be considered analogous to the DocBook "revision",
    "revnumber", or "biblioid" elements.

:Processing:
    Sometimes used with the RCS/CVS keyword "Revision".  See 문서정보_
    and 리비전_.


Content Model
-------------

.. parsed-literal::

    `%text.model;`_

:Attributes:
    The ``버전`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%bibliographic.elements;`_ parameter entity directly includes
    ``버전``.


Examples
--------

reStructuredText_ source::

    Document Title
    ==============

    :Version: 1.1

Complete pseudo-XML_ result after parsing and applying transforms::

    <document ids="document-title" names="document title">
        <title>
            Document Title
        <docinfo>
            <version>
                1.1

See 문서정보_ for a more complete example, including processing
context.


``warning``
===========

The ``warning`` element is an admonition, a distinctive and
self-contained notice.  Also see the other admonition elements
Docutils offers (in alphabetical order): attention_, caution_,
danger_, error_, hint_, important_, note_, tip_.


Details
-------

:Category:
    `복합 바디 요소`_

:Parents:
    All elements employing the `%body.elements;`_ or
    `%structure.model;`_ parameter entities in their content models
    may contain ``warning``.

:Children:
    ``warning`` elements contain one or more `바디 요소`_.

:Analogues:
    ``warning`` is analogous to the DocBook "warning" element.

:Processing:
    Rendered distinctly (inset and/or in a box, etc.), with the
    generated title "Warning" (or similar).


Content Model
-------------

.. parsed-literal::

   (`%body.elements;`_)+

:Attributes:
    The ``warning`` element contains only the `common attributes`_:
    ids_, names_, dupnames_, source_, and classes_.

:Parameter Entities:
    The `%body.elements;`_ parameter entity directly includes
    ``warning``.  The `%structure.model;`_ parameter entity indirectly
    includes ``warning``.


Examples
--------

reStructuredText source::

    .. WARNING:: Reader discretion is strongly advised.

Pseudo-XML_ fragment from simple parsing::

    <warning>
        <paragraph>
            Reader discretion is strongly advised.


---------------------
 Attribute Reference
---------------------

.. contents:: :local:
              :depth: 1

_`Common Attributes`: Through the `%basic.atts;`_ parameter entity,
all elements contain the following attributes: ids_, names_, dupnames_,
source_, and classes_.

.. _attribute type:

Attribute types:

``CDATA``
    Character data.  ``CDATA`` attributes may contain arbitrary text.

``ID``
    Like a ``NMTOKEN``, but it must begin with a letter (a "name
    production").  Identical ``ID`` values must not appear more than
    once in a document; i.e., ID values must uniquely identify their
    elements.

``IDREF``
    A reference to an ``ID`` value (a name production) of another
    element.

``IDREFS``
    One or more space-separated ``ID`` references (name productions).

``NMTOKEN``
    A "name token".  One or more of letters, digits, ".", "-", and
    "_".

``NMTOKENS``
    One or more space-separated ``NMTOKEN`` names.

``%yesorno;``
    No if zero ("0"), yes if any other value.  This is a parameter
    entity which resolves to a ``NMTOKEN`` attribute type.

``%number;``
    This emphasizes that the attribute value must be a number.  This
    is a parameter entity which resolves to a ``NMTOKEN`` attribute
    type.

enumeration
    The attribute value may be one of a specified list of values.


``anonymous``
=============

`Attribute type`_: ``%yesorno;``.  Default value: none (implies no).

The ``anonymous`` attribute is used for unnamed hyperlinks in the
target_ and reference_ elements (via the `%anonymous.att;`_ parameter
entity).


``auto``
========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``auto`` attribute is used to indicate automatically-numbered
footnote_, footnote_reference_ and 제목_\  elements (via the
`%auto.att;`_ parameter entity).


``backrefs``
============

`Attribute type`_: ``IDREFS``.  Default value: none.

The ``backrefs`` attribute contains a space-separated list of ids_
references, used for backlinks from footnote_, citation_, and
system_message_ elements (via the `%backrefs.att;`_ parameter entity).


``bullet``
==========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``bullet`` attribute is used in the bullet_list_ element.


``classes``
===========

`Attribute type`_: ``NMTOKENS``.  Default value: none.

The ``classes`` attribute is a list containing zero or more names used
to classify an element. The names are converted to conform to the
regular expression ``[a-z](-?[a-z0-9]+)*`` (see the `"class"
directive`_ description for details and rationale_).

The purpose of the attribute is to indicate
an "is-a" variant relationship, to allow an extensible way of defining
sub-classes of existing elements.  It can be used to carry context
forward between a Docutils Reader and Writer, when a custom structure
is reduced to a standardized document tree.  One common use is in
conjunction with stylesheets, to add selection criteria.  It should
not be used to carry formatting instructions or arbitrary content.

The ``classes`` attribute's contents should be ignorable.  Writers that
are not familiar with the variant expressed should be able to ignore
the attribute.

``classes`` is one of the `common attributes`_, shared by all Docutils
elements.

.. _"class" directive: rst/directives.html#class
.. _rationale: rst/directives.html#rationale

``delimiter``
=============

`Attribute type`_: ``CDATA``.  Default value: none.

The ``delimiter`` attribute is used in the option_argument_ element.


``dupnames``
============

`Attribute type`_: ``CDATA``.  Default value: none.

The ``dupnames`` attribute is a list containing the names of an
element when there has been a naming conflict.  The contents of the
``dupnames`` attribute would have been transferred from the `names`_
attribute.  An element may have at most one of the ``names`` or
``dupnames`` attributes, but not both.  ``dupnames`` is one of the
`common attributes`_, shared by all Docutils elements.


``enumtype``
============

`Attribute type`_: enumeration, one of "arabic", "loweralpha",
"upperalpha", "lowerroman", or "upperroman".  Default value: none.

The ``enumtype`` attribute is used in the enumerated_list_ element.


``ids``
=======

`Attribute type`_: ``NMTOKENS``.  Default value: none.

The ``ids`` attribute is a list containing one or more unique
identifier keys.  ``ids`` is one of the `common attributes`_, shared
by all Docutils elements.


``names``
=========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``names`` attribute is a list containing the names of an element,
typically originating from the element's title or content.  Each name
in ``names`` must be unique; if there are name conflicts (two or more
elements want to the same name), the contents will be transferred to
the `dupnames`_ attribute on the duplicate elements.  An element may
have at most one of the ``names`` or ``dupnames`` attributes, but not
both.  ``names`` is one of the `common attributes`_, shared by all
Docutils elements.


``prefix``
==========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``prefix`` attribute is used in the enumerated_list_ element.


``refid``
=========

`Attribute type`_: ``IDREF``.  Default value: none.

The ``refid`` attribute contains references to `ids`_ attributes in
other elements.  It is used by the target_, reference_,
footnote_reference_, citation_reference_, 제목_\  and problematic_
elements (via the `%refid.att;`_ and `%reference.atts;`_ parameter
entities).


``refname``
===========

`Attribute type`_: ``NMTOKENS``.  Default value: none.

The ``refname`` attribute contains an internal reference to the
`names`_ attribute of another element.  On a `target`_ element,
``refname`` indicates an indirect target which may resolve to either
an internal or external reference.  ``refname`` is used by the
target_, reference_, footnote_reference_, citation_reference_, and
substitution_reference_ elements (via the `%refname.att;`_ and
`%reference.atts;`_ parameter entities).


``refuri``
==========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``refuri`` attribute contains an external reference to a URI/URL.
It is used by the target_, reference_, footnote_reference_, and
citation_reference_ elements (via the `%reference.atts;`_ parameter
entity).


``source``
==========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``source`` attribute is used to store the path or URL to the
source text that was used to produce the document tree.  It is one of
the `common attributes`_, shared by all Docutils elements.


``start``
=========

`Attribute type`_: ``%number;``.  Default value: none.

The ``start`` attribute is used in the enumerated_list_ element.


``suffix``
==========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``suffix`` attribute is used in the enumerated_list_ element.


``xml:space``
=============

`Attribute type`_: one of "default" or "preserve".  Default value:
"preserve" (fixed).

The ``xml:space`` attribute is a standard XML attribute for
whitespace-preserving elements.  It is used by the literal_block_,
line_block_, doctest_block_, comment_, and raw_ elements (via the
`%fixedspace.att;`_ parameter entity).  It is a fixed attribute, meant
to communicate to an XML parser that the element contains significant
whitespace.  The attribute value should not be set in a document
instance.


.. _title (attribute):

``제목``
=========

`Attribute type`_: ``CDATA``.  Default value: none.

The ``제목`` attribute stores the title metadata of a document.  This
title is typically not part of the rendered document.  It may for
example be used in HTML's ``제목`` element.


----------------------------
 Parameter Entity Reference
----------------------------

.. contents:: :local:
              :depth: 1

Parameter entities are used to simplify the DTD (to share definitions
and reduce duplication) and to allow the DTD to be customized by
wrapper DTDs (external client DTDs that use or import the Docutils
DTD).  Parameter entities may be overridden by wrapper DTDs, replacing
the definitions below with custom definitions.  Parameter entities
whose names begin with "additional" are meant to allow easy extension
by wrapper DTDs.


``%anonymous.att;``
===================

The ``%anonymous.att;`` parameter entity contains the anonymous_
attribute, used for unnamed hyperlinks.

Entity definition:

.. parsed-literal::

    anonymous_ %yesorno; #IMPLIED

The reference_ and target_ elements directly employ the
``%anonymous.att;`` parameter entity in their attribute lists.


``%auto.att;``
==============

The ``%auto.att;`` parameter entity contains the auto_ attribute, used
to indicate an automatically-numbered footnote or title.

Entity definition:

.. parsed-literal::

    auto_     CDATA     #IMPLIED

The footnote_, footnote_reference_, and 제목_\  elements directly
employ the ``%auto.att;`` parameter entity in their attribute lists.


``%backrefs.att;``
==================

The ``%backrefs.att;`` parameter entity contains the backrefs_
attribute, a space-separated list of id references, for backlinks.

Entity definition:

.. parsed-literal::

    backrefs_  IDREFS    #IMPLIED

The citation_, footnote_, and system_message_ elements directly employ
the ``%backrefs.att;`` parameter entity in their attribute lists.


``%basic.atts;``
================

The ``%basic.atts;`` parameter entity lists attributes common to all
Docutils elements.  See `Common Attributes`_.

Entity definition:

.. parsed-literal::

    ids_      NMTOKENS  #IMPLIED
    names_    CDATA     #IMPLIED
    dupnames_ CDATA     #IMPLIED
    source_   CDATA     #IMPLIED
    classes_  NMTOKENS  #IMPLIED
    %additional.basic.atts;

The ``%additional.basic.atts;`` parameter entity can be used by
wrapper DTDs to extend ``%basic.atts;``.


``%bibliographic.elements;``
============================

The ``%bibliographic.elements;`` parameter entity contains an OR-list of all
`문헌 요소`_.

Entity definition:

.. parsed-literal::

    저자_ | 복수저자_ | 기관_ | 연락처_ | 주소_
    | 버전_ | 리비전_ | 상태_ | 날짜_ | 저작권_
    | 필드_
    %additional.bibliographic.elements;

The ``%additional.bibliographic.elements;`` parameter entity can be used by
wrapper DTDs to extend ``%bibliographic.elements;``.

Only the 문서정보_ element directly employs the
``%bibliographic.elements;`` parameter entity in its content model.


``%body.elements;``
===================

The ``%body.elements;`` parameter entity contains an OR-list of all
`바디 요소`_.  ``%body.elements;`` is itself contained within the
`%structure.model;`_ parameter entity.

Entity definition:

.. parsed-literal::

    admonition_ | attention_ | block_quote_ | bullet_list_ | caution_
    | citation_ | compound_ | comment_ | container_ | danger_ |
      definition_list_ | doctest_block_ | enumerated_list_ | error_ |
      필드_리스트_ | figure_ | footnote_ | hint_ | image_ | important_
      | line_block_ | literal_block_ | note_ | option_list_ |
      paragraph_ | pending_ | raw_ reference_ | rubric_ |
      substitution_definition_ | system_message_ | table_ | target_ |
      tip_ | warning_ %additional.body.elements;

The ``%additional.body.elements;`` parameter entity can be used by
wrapper DTDs to extend ``%body.elements;``.

The ``%body.elements;`` parameter entity is directly employed in the
content models of the following elements: admonition_, attention_,
block_quote_, caution_, citation_, compound_, danger_, definition_,
description_, entry_, error_, 필드_바디_, 꼬리말_, footnote_,
머리말_, hint_, important_, legend_, list_item_, note_, 사이드바_,
system_message_, tip_, 토픽_, warning_

Via `%structure.model;`_, the ``%body.elements;`` parameter entity is
indirectly employed in the content models of the 문서_ and
절_ elements.


``%fixedspace.att;``
====================

The ``%fixedspace.att;`` parameter entity contains the `xml:space`_
attribute, a standard XML attribute for whitespace-preserving
elements.

Entity definition:

.. parsed-literal::

    `xml:space`_ (default | preserve) #FIXED 'preserve'

The ``%fixedspace.att;`` parameter entity is directly employed in the
attribute lists of the following elements: 주소_, comment_,
doctest_block_, line_block_, literal_block_, raw_


``%inline.elements;``
=====================

The ``%inline.elements;`` parameter entity contains an OR-list of all
`inline elements`_.

Entity definition:

.. parsed-literal::

    abbreviation_ | acronym_ | citation_reference_ | emphasis_ |
    footnote_reference_ | generated_ | image_ | inline_ | literal_ |
    problematic_ | raw_ | reference_ | strong_ | substitution_reference_ |
    subscript_ | superscript_ | target_ | 제목_\ 참조_
    %additional.inline.elements;

The ``%additional.inline.elements;`` parameter entity can be used by
wrapper DTDs to extend ``%inline.elements;``.

Via `%text.model;`_, the ``%inline.elements;`` parameter entity is
indirectly employed in the content models of the following elements:
abbreviation_, acronym_, 주소_, attribution_, 저자_, caption_,
classifier_, 연락처_, 저작권_, 날짜_, doctest_block_, emphasis_,
generated_, inline_, line_block_, literal_block_, math_, math_block_,
기관_,
paragraph_, problematic_, raw_, reference_, 리비전_, rubric_,
상태_, strong_, subscript_, substitution_definition_,
substitution_reference_, 부제목_\ , superscript_, target_, term_,
제목_\ , 제목_\ 참조_, 버전_


``%reference.atts;``
====================

The ``%reference.atts;`` parameter entity groups together the refuri_,
refid_, and refname_ attributes.

Entity definition:

.. parsed-literal::

    `%refuri.att;`_
    `%refid.att;`_
    `%refname.att;`_
    %additional.reference.atts;

The ``%additional.reference.atts;`` parameter entity can be used by
wrapper DTDs to extend ``%additional.reference.atts;``.

The citation_reference_, footnote_reference_, reference_, and target_
elements directly employ the ``%reference.att;`` parameter entity in
their attribute lists.


``%refid.att;``
================

The ``%refid.att;`` parameter entity contains the refid_ attribute, an
internal reference to the `ids`_ attribute of another element.

Entity definition:

.. parsed-literal::

    refid_   CDATA     #IMPLIED

The 제목_\  and problematic_ elements directly employ the
``%refid.att;`` parameter entity in their attribute lists.

Via `%reference.atts;`_, the ``%refid.att;`` parameter entity is
indirectly employed in the attribute lists of the citation_reference_,
footnote_reference_, reference_, and target_ elements.


``%refname.att;``
=================

The ``%refname.att;`` parameter entity contains the refname_
attribute, an internal reference to the `names`_ attribute of another
element.  On a `target`_ element, ``refname`` indicates an indirect
target which may resolve to either an internal or external
reference.

Entity definition:

.. parsed-literal::

    refname_  NMTOKENS  #IMPLIED

The substitution_reference_ element directly employs the
``%refname.att;`` parameter entity in its attribute list.

Via `%reference.atts;`_, the ``%refname.att;`` parameter entity is
indirectly employed in the attribute lists of the citation_reference_,
footnote_reference_, reference_, and target_ elements.


``%refuri.att;``
================

The ``%refuri.att;`` parameter entity contains the refuri_ attribute,
an external reference to a URI/URL.

Entity definition:

.. parsed-literal::

    refuri_   CDATA     #IMPLIED

Via `%reference.atts;`_, the ``%refuri.att;`` parameter entity is
indirectly employed in the attribute lists of the citation_reference_,
footnote_reference_, reference_, and target_ elements.


``%section.elements;``
======================

The ``%section.elements;`` parameter entity contains an OR-list of all
절_-equivalent elements.  ``%section.elements;`` is itself
contained within the `%structure.model;`_ parameter entity.

Entity definition:

.. parsed-literal::

    절_
    %additional.section.elements;

The ``%additional.section.elements;`` parameter entity can be used
by wrapper DTDs to extend ``%section.elements;``.

Via `%structure.model;`_, the ``%section.elements;`` parameter entity
is indirectly employed in the content models of the 문서_ and
절_ elements.


``%structure.model;``
=====================

The ``%structure.model;`` parameter entity encapsulates the
hierarchical structure of a document and of its constituent parts.
See the discussion of the `element hierarchy`_ above.

Entity definition:

.. parsed-literal::

   ( ( (`%body.elements;`_ | 토픽_ | 사이드바_)+, 전환_? )*,
     ( (`%section.elements;`_), (전환_?, (`%section.elements;`_) )* )? )

Each 문서_ or 절_ contains zero or more body elements,
topics, and/or sidebars, optionally interspersed with single
transitions, followed by zero or more sections (whose contents are
recursively the same as this model) optionally interspersed with
transitions.

The following restrictions are imposed by this model:

* Transitions must be separated by other elements (body elements,
  sections, etc.).  In other words, a transition may not be
  immediately adjacent to another transition.

* A transition may not occur at the beginning of a document or
  section.

An additional restriction, which cannot be expressed in the language
of DTDs, is imposed by software:

* A transition may not occur at the end of a document or section.

The `%structure.model;`_ parameter entity is directly employed in the
content models of the 문서_ and 절_ elements.


``%text.model;``
================

The ``%text.model;`` parameter entity is used by many elements to
represent text data mixed with `inline elements`_.

Entity definition:

.. parsed-literal::

    (#PCDATA | `%inline.elements;`_)*

The ``%text.model;`` parameter entity is directly employed in the
content models of the following elements: abbreviation_, acronym_,
주소_, 저자_, caption_, classifier_, 연락처_, 저작권_, 날짜_,
doctest_block_, emphasis_, 필드_이름_, generated_, line_block_,
literal_block_, 기관_, paragraph_, problematic_, raw_,
reference_, 리비전_, 상태_, strong_, substitution_definition_,
substitution_reference_, 부제목_\ , target_, term_, 제목_\ , 버전_



..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   End:
