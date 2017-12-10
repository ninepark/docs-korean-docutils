============================================
 README: 독유틸즈(Docutils) 0.15b.dev
============================================

:저자: 데이비드 굿저(David Goodger)
:연락처: goodger@python.org
:날짜: $Date$
:웹 사이트: http://docutils.sourceforge.net/
:저작권: 이 문서는 퍼블릭 도메인에 속한다.

.. contents::


빠른 시작 안내
===============

다음은 독유틸즈를 빨리 한 번 실행해 보고 싶은 사람을 위한 내용이다.

1. 독유틸즈를 실행하려면 파이썬(버전 2.6 이상)이 필요하다. 다음 웹 사이트에서 구할 수 있다.

     http://www.python.org/

   자세한 내용은 아래의 `요구사항`_\ 을 참조한다.

2. 최신 독유틸즈 코드를 사용한다. 코드는 `서브버전 레포지토리`_\ 나 다음 링크에서 얻을 수 있다.

     http://docutils.svn.sourceforge.net/viewvc/docutils/trunk/docutils/?view=tar
   
   자세한 내용은 아래의 `배포판과 스냅샷`_\ 을 참조한다.

3. 소스 압축파일을 임시 디렉토리(파이썬의 ``site-packages``\ 디렉토리는 안된다)에서 압축해제한 후, 
   새로 생긴 디렉토리에 들어가서 ``setup.py install``\ 을 실행한다.
   윈도우 환경에서는 ``install.py``\ 를 더블클릭해도 된다.
  
  자세한 내용은 `설치`_ 부분을 참조한다.
  
4. 리스트럭처드텍스트 문서를 변환하려면 프론트엔드 스크립트를 사용한다. 
   예를 들면 다음과 같다.::

       rst2html.py FAQ.txt FAQ.html         (Unix)
       python tools/rst2html.py FAQ.txt FAQ.html  (Windows)

   자세한 내용은 `사용법`_ 부분을 참조한다.

목적
=======

독유틸즈 프로젝트의 목적은 일반 텍스트 문서를 HTML이나 XML, 또는 LaTeX과 같은 유용한 형식으로 변환하기 위한 도구들을 만드는 것이다.
다음과 같은 소스를 지원하도록 구현하였다.

* 단독 파일.

* `PEP (Python Enhancement Proposals. 파이썬 개선 제안서)`_.

다음 소스 코드에 대한 지원도 계획하고 있다.

* 네임스페이스 문맥과 같이 추출된 파이썬 모듈과 패키지내의 인라인 문서

* 이메일 (RFC-822 헤더, 인용구, 서명, MIME 파트).

* "위키 링크"로 참조할 수 있는 위키 문서.

* 책을 만들기 위해 여러개의 장(chapter)이 결합된 복합 문서

* 다른 형식들도 있다..

.. _PEP (Python Enhancement Proposals. 파이썬 개선 제안서):
   http://www.python.org/peps/pep-0012.html


배포판과 스냅샷
====================

"빨리, 그리고 자주 배포하기" 정책을 따르려고 노력하므로 기능이 자주 추가된다.
서브버전 리포지토리의 코드는 보통 버그가 없는 상태이므로 최신 코드 스냅샷(snapshot)을 사용하는 것을 권장한다.

코드 스냅샷은 다음 코드 페이지로 가서 "스냅샷 내려받기(download snapshot)" 버튼을 눌러 받을 수 있다.

* 독유틸즈 코드, 문서, 프론트엔드 도구, 테스트:
  https://sourceforge.net/p/docutils/code/HEAD/tree/trunk/docutils/

* 샌드박스(Sandbox) (실험적인 코드나 외부 기여 코드):
  https://sourceforge.net/p/docutils/code/HEAD/tree/trunk/sandbox/

최신 개발 상황을 따라가려면 스냅샷을 정기적으로 내려받거나 `서브버전 레포지토리`_\ 를 이용한다.

.. _서브버전 레포지토리: docs/dev/repository.html


요구사항
============

코드를 실행하려면 파이썬_\ 이 설치되어 있어야 한다.
독유틸즈는 파이썬 버전 2.6, 2.7, 그리고 3.3부터 3.5까지 호환된다(`파이썬 3 호환`_ 참조).

독유틸즈는 기능 강화를 위해 다음과 같은 패키지를 (설치된 경우) 사용한다.

* `Python Image Library`_, 즉 PIL 패키지를 사용하여 이미지를 다룬다.
  manipulation operations.

* `Pygments`_ 문법 하이라이터(syntax highlighter)를 사용하여 코드 명령어와 역할 지시자를 다룬다.

.. _파이썬: http://www.python.org/.
.. _Python Image Library: http://www.pythonware.com/products/pil/
.. _Pygments: http://pygments.org/


파이썬 3 호환
----------------------

독유틸즈 코드는 파이썬 2에 기반하여 작성되었지만 `파이썬 3로 포팅하기`_\ 에 따른 변환이 가능하다.

* `setup.py` 스크립트는 ``build/`` 디렉토리에 파이썬 3 호환 코드와 
  ``tests3/`` 서브디렉토리에 파이썬 3에 호환되는 테스트 코드를 생성한다.

* ``tools/`` 서브디렉토리에 있는 스크립트는 파이썬 버전과 상관없이 동작한다.

* (테스트 등을 위해) 설치하지 않고 변환만 하려면 ``python3 setup.py build`` 이라고 실행한다.

* 소스코드를 편집할 때는 파이썬 2 버전을 변경하고 build 명령을 다시 실행한다.

.. _파이썬 3로 포팅하기: http://docs.python.org/py3k/howto/pyporting.html


프로젝트 파일과 디렉토리
===========================

(한글 번역본의 제목은 ``_ko`` 접미사가 붙어있다.)

* README.txt: 지금 읽고 있는 이 파일.

* COPYING.txt: 퍼블릭 도메인 기여 및 퍼블릭 도메인이 아닌 파일에 대한 저작권 상세.

* FAQ.txt: 자주 물어보는 질문(Frequently Asked Questions)과 답변.

* RELEASE-NOTES.txt: 최근 배포판의 중요한 변화 사항 요약.

* HISTORY.txt: 현재 및 과거의 모든 프로젝트 배포판의 자세한 변화 로그

* BUGS.txt: 알려진 버그과 버그 보고 방법.

* THANKS.txt: 기여자 복록.

* setup.py: 설치 파일. 아래의 "설치" 항목 참조.

* install.py: 빠른 설치용 스크립트. 그냥 실행하된 된다. 개인화를 하려면 setup.py 파일을 사용해야 한다.

* docutils: 프로젝트 소스 디렉토리. 파이썬 패키지로서 설치된다.

* docs: 프로젝트 문서 디렉토리.  개략적인 내용은 ``docs/index.txt``\ 를 참조한다.

* docs/user: 프로젝트 사용자 문서 디렉토리.
  다음 문서를 포함하고 있다.:

  - docs/user/tools.txt: 독유틸즈 프론트엔드 도구.
  - docs/user/latex.txt: 독유틸즈 LaTeX 작성기(Writer).
  - docs/user/rst/quickstart.txt: 리스트럭처드텍스트 소개의 글.
  - docs/user/rst/quickref.html: 리스트럭처드텍스트의 간략한 소개(HTML파일만 존재한다).

* docs/ref: 프로젝트 참조 디렉토리.
  ``docs/ref/rst/restructuredtext.txt`` 리스트럭처드텍스트의 참조서이다.

* licenses: 퍼블릭 도메인이 아닌 파일에 대한 라이선스 파일 복사본을 담고 있는 디렉토리.

* tools: 독유틸즈 프론트엔드 도구 디렉토리. 
  자세한 사항은 ``docs/user/tools.txt``\ 를 참조.

* test: 유니트 테스트. 소프트웨어 사용에는 필요하지 않으나 개발과 수정에 유용하다.
  `테스트수트 실행`_\ 를 참조한다.

파이썬 3으로 설치할 때 생성되는 디렉토리:

* build: 파이썬2으로 변환된 소스 코드.

* test3: 파이썬2으로 변환된 테스트 코드.


설치
============

The first step is to expand the ``.tgz`` archive in a temporary
directory (**not** directly in Python's ``site-packages``).  It
contains a distutils setup file "setup.py".  OS-specific installation
instructions follow.


GNU/Linux, BSDs, Unix, Mac OS X, etc.
-------------------------------------

1. Open a shell.

2. Go to the directory created by expanding the archive::

       cd <archive_directory_path>

3. Install the package (you may need root permissions to complete this
   step)::

       su
       (enter admin password)
       python setup.py install

   If the python executable isn't on your path, you'll have to specify
   the complete path, such as ``/usr/local/bin/python``.

   To install for a specific Python version, use this version in the
   setup call, e.g. ::

       python3.1 setup.py install

   To install for different Python versions, repeat step 3 for every
   required version. The last installed version will be used in the
   `shebang line`_ of the ``rst2*.py`` wrapper scripts.

   .. _shebang line: http://en.wikipedia.org/wiki/Shebang_%28Unix%29

윈도우
-------

Just double-click ``install.py``.  If this doesn't work, try the
following:

1. Open a DOS Box (Command Shell, MS-DOS Prompt, or whatever they're
   calling it these days).

2. Go to the directory created by expanding the archive::

       cd <archive_directory_path>

3. Install the package::

       <path_to_python.exe>\python setup.py install

   To install for a specific python version, specify the Python
   executable for this version.

   To install for different Python versions, repeat step 3 for every
   required version.

Optional steps:

* `running the test suite`_

* `converting the documentation`_


사용법
========

There are many front-end tools in the unpacked "tools" subdirectory.
Installation under Unix places copies in the PATH.
You may want to begin with the "rst2html.py" front-end tool.  Most
tools take up to two arguments, the source path and destination path,
with STDIN and STDOUT being the defaults.  Use the "--help" option to
the front-end tools for details on options and arguments.  See
Docutils Front-End Tools (``docs/user/tools.txt``) for full documentation.

The package modules are continually growing and evolving.  The
``docutils.statemachine`` module is usable independently.  It contains
extensive inline documentation (in reStructuredText format of course).

Contributions are welcome!


Converting the documentation
============================

After unpacking and installing the Docutils package, the following
shell commands will generate HTML for all included documentation::

    cd <archive_directory_path>/tools
    ./buildhtml.py ../

On Windows systems, type::

    cd <archive_directory_path>\tools
    python buildhtml.py ..

The final directory name of the ``<archive_directory_path>`` is
"docutils" for snapshots.  For official releases, the directory may be
called "docutils-X.Y.Z", where "X.Y.Z" is the release version.
Alternatively::

    cd <archive_directory_path>
    tools/buildhtml.py --config=tools/docutils.conf          (Unix)
    python tools\buildhtml.py --config=tools\docutils.conf   (Windows)

Some files may generate system messages (warnings and errors).  The
``docs/user/rst/demo.txt`` file (under the archive directory) contains
five intentional errors.  (They test the error reporting mechanism!)


테스트수트 실행
======================

The test suite is documented in `Docutils Testing`_ (docs/dev/testing.txt).

To run the entire test suite, open a shell and use the following
commands::

    cd <archive_directory_path>/test
    ./alltests.py

Under Windows, type::

    cd <archive_directory_path>\test
    python alltests.py

For testing with Python 3 use the converted test suite::

    cd <archive_directory_path>/test3
    python3 alltests.py


You should see a long line of periods, one for each test, and then a
summary like this::

    Ran 1111 tests in 24.653s

    OK
    Elapsed time: 26.189 seconds

The number of tests will grow over time, and the times reported will
depend on the computer running the tests.  The difference between the
two times represents the time required to set up the tests (import
modules, create data structures, etc.).

If any of the tests fail, please `open a bug report`_ or `send an email`_
(see `Bugs <BUGS.html>`_).
Please include all relevant output, information about your operating
system, Python version, and Docutils version.  To see the Docutils
version, use one of the ``rst2*`` front ends or ``tools/quicktest.py``
with the ``--version`` option, e.g.::

    cd ../tools
    ./quicktest.py --version

Windows users type these commands::

    cd ..\tools
    python quicktest.py --version


.. _Docutils Testing: http://docutils.sourceforge.net/docs/dev/testing.html
.. _open a bug report:
   http://sourceforge.net/p/docutils/bugs/
.. _send an email: mailto:docutils-users@lists.sourceforge.net
   ?subject=Test%20suite%20failure
.. _web interface: https://sourceforge.net/p/docutils/mailman/


Getting Help
============

If you have questions or need assistance with Docutils or
reStructuredText, please post a message to the Docutils-users_ mailing
list.

.. _Docutils-users: docs/user/mailing-lists.html#docutils-users


..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   End:
