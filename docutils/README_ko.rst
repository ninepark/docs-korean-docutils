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
  `테스트수트 실행`_\ 을 참조한다.

파이썬 3으로 설치할 때 생성되는 디렉토리:

* build: 파이썬2으로 변환된 소스 코드.

* test3: 파이썬2으로 변환된 테스트 코드.


설치
============

처음 단계는 ``.tgz`` 아카이브 파일을 임시 디렉토리(파이썬의 ``site-packages``\ 는 안된다)에 푸는 것이다.
여기에는 "setup.py" distutils 설치 파일이 포함되어 있다. 운영체제에 따른 설치방법은 아래를 참조한다.


GNU/리눅스, BSD, 유닉스, 맥 OS X 등
----------------------------------------------

1. 셸을 연다.

2. 아카이브 파일을 풀 때 만들어진 디렉토리로 들어간다.::

       cd <archive_directory_path>

3. 패키지를 설치한다(관리자 권한이 있어야 한다).::

       su
       (enter admin password)
       python setup.py install

   만약 파이썬 실행 파일이 패스 환경에 없다면 ``/usr/local/bin/python``\ 와 같이 전체 경로를 지정해야 한다.

   특정한 파이썬 버전용으로 설치하려면 설치 호출시에 다음과 같이 해당 버전을 사용해야 한다.::

       python3.1 setup.py install

   다른 파이썬 버전에 대해서 설치하려면 필요한 모든 파이선 버전에 대해 위의 단계를 반복한다.
   
   ``rst2*.py`` 래퍼 스크립트의 `셔뱅 라인(shebang line)`_\ 에 대해서는
   가장 마지막에 설치된 버전이 사용된다.
  
   .. _셔뱅 라인(shebang line): http://en.wikipedia.org/wiki/Shebang_%28Unix%29

윈도우
-------

``install.py``\ 를 더블클릭한다.  만약 동작하지 않으면 다음과 같이 실행한다.

1. 도스(DOS) 박스(커맨드 셸, 도스 프롬프트, 또는 현재 사용되는 동등한 이름)를 연다.

2. 아카이브 파일을 풀 때 만들어진 디렉토리로 들어간다.::

       cd <archive_directory_path>

3. 패키지를 설치한다.::

       <path_to_python.exe>\python setup.py install

   특정한 파이썬 버전용으로 설치하려면 설치 호출시에 해당 버전을 사용해야 한다.

   다른 파이썬 버전에 대해서 설치하려면 필요한 모든 파이선 버전에 대해 위의 단계를 반복한다.

추가적인 단계:

* `테스트수트 실행`_

* `문서 변환`_


사용법
========

압축이 풀린 "tools" 서브디렉토리에는 여러가지 프론트엔드 도구가 있다.
유닉스에서는 복사본 위치를 PATH 설정에 추가한다.
보통 "rst2html.py" 프론트엔드 도구부터 쓰게 된다.
대부분의 도구는 소스 코드의 경로과 목표 파일의 경로, 두 개의 인수를 받는다.
인수가 없으면 디폴트로 표준입력(STDIN)과 표준출력(STDOUT)을 사용한다. 
프론트엔드 도구의 옵션과 인수에 대해 더 자세히 알고싶으면 "--help" 옵션을 사용한다.
더 상세한 내용은 독유틸즈 프론트엔드 도구(``docs/user/tools.txt``) 문서를 참조한다.

패키지내의 모듈은 계속 바뀌고 늘어난다.
``docutils.statemachine`` 모듈은 독립적으로 사용할 수 있다.
이 모듈에는 (리스트럭처드텍스트 형식으로 되어 있는) 인라인 설명문이 방대하게 포함되어 있다.

여러분이 보다 기여해 줄 수 있기를 바란다.


문서 변환
============================

독유틸즈 패키지 압축을 풀고 설치한 후에는 다음 셸 명령으로 포함된 문서의 HTML을 생성한다.::

    cd <archive_directory_path>/tools
    ./buildhtml.py ../

윈도우 시스템에서는 다음처럼 실행한다.::

    cd <archive_directory_path>\tools
    python buildhtml.py ..

소스코드 스냅샷에서 ``<archive_directory_path>``\ 의 마지막 디렉토리 이름은 "docutils"이다.

공식 버전에서는 이 이름이 "docutils-X.Y.Z"일 수 있다. 여기에서 "X.Y.Z"는 배포 버전이다. 
이 때는 다음과 같이 실행한다.::

    cd <archive_directory_path>
    tools/buildhtml.py --config=tools/docutils.conf          (Unix)
    python tools\buildhtml.py --config=tools\docutils.conf   (Windows)

몇몇 파일은 (경고나 에러과 같은) 시스템 메세지를 출력할 수 있다.
(아카이브 디렉토리 아래의) ``docs/user/rst/demo.txt`` 파일에는 의도적으로 
5개의 에러가 있다. (이는 에러 리포트 메커니즘을 테스트하기 위한 것이다.)

테스트수트 실행
======================

테스트수트에 대한 문서는 `독유틸즈 테스팅`_ (docs/dev/testing.txt)에 있다.

전체 테스트수트를 실행하려면 셸을 열고 다음 명령을 실행한다.::

    cd <archive_directory_path>/test
    ./alltests.py

윈도우즈에서는 다음처럼 실행한다.::

    cd <archive_directory_path>\test
    python alltests.py

파이썬 3로 테스팅하려면 변환된 테스트수트를 사용한다.::

    cd <archive_directory_path>/test3
    python3 alltests.py


실행하면 마침표(마침표 하나가 테스트 하나이다)가 길게 나오고 다음처럼 결과 요약이 출력된다.::
    Ran 1111 tests in 24.653s

    OK
    Elapsed time: 26.189 seconds

테스트의 수는 시간이 지나면 늘어날 것이다. 그리고 시간은 테스트를 수행하는 컴퓨터에 의존한다.
두 시간 값의 차이는 테스트를 (모듈을 임포트하고 데이터 구조를 생성하는 등의) 셋업 시간 때문이다.

만약 테스트가 실패하면 `버그 리포팅하기`_\ 나 `이메일 보내기`_\ 를 해주길 바란다
(`버그 <BUGS_ko.html>`_ 참조).

관련 출력 모두와 운영체제, 파이썬 버전, 그리고 독유틸즈 버전에 대한 정보가 있어야 한다.
독유틸즈 버전을 보려면 ``rst2*`` 프론트엔드 도구 또는 ``tools/quicktest.py``\ 를 
``--version`` 옵션과 함께 실행한다.::

    cd ../tools
    ./quicktest.py --version

윈도우에서는 다음 명령을 사용한다.::

    cd ..\tools
    python quicktest.py --version


.. _독유틸즈 테스팅: http://docutils.sourceforge.net/docs/dev/testing.html
.. _버그 리포팅하기:
   http://sourceforge.net/p/docutils/bugs/
.. _이메일 보내기: mailto:docutils-users@lists.sourceforge.net
   ?subject=Test%20suite%20failure
.. _웹 인터페이스: https://sourceforge.net/p/docutils/mailman/


도움말
============

만약 독유틸즈나 리스트럭처드텍스트에 대해 질문이 있거나 도움이 필요하면 
`독유틸즈 사용자`_ 메일링리스트에 메세지를 보내주길 바란다.

.. _독유틸즈 사용자: docs/user/mailing-lists.html#docutils-users


..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   End:
