# runningdog
## 목차
1. [프로젝트 소개](#1-프로젝트-소개)
2. [개발 환경](#2-개발-환경)
3. [구현 기능](#3-구현-기능)
4. [구현 이미지](#4-구현-이미지)
5. [구현 영상](#5-구현-영상)
6. [저작권](#6-저작권)
7. [업데이트 현황](#7-업데이트-현황)

## 1. 프로젝트 소개
KH_정보교육원에서 6명이 함께한 Final 팀 프로젝트입니다.<br>
유기된 동물들의 원래 가족과 새로운 가족을 빠른 시간 내에 찾아주고<br>
봉사, 기부, 콘텐츠 등 반려동물을 키우는데 있어 정보를 주는 반응형 웹 사이트입니다.<br>

저는 공지사항게시판 CRUD와 반려동물 관련 정보를 크롤링하여 제공하는 콘텐츠 상식/이슈 게시판을 맡았습니다.<br>
Java와 Spring Framwork, MyBatis를 사용했고 프론트는 HTML5/CSS/JS, JSP를 DBMS는 Oracle을 사용하였습니다.<br>
크롤링하는데 Python을 사용했습니다.

총 개발기간은 약 한달 반 입니다.(2020/08/18 ~ 2020/09/29)<br>
자세한 보고서(기획, 설계, 화면 구현 설명)를 보시려면 [여기](https://drive.google.com/file/d/127KXohCfuYMI1BZzExAtZPy60RfR0oxD/view?usp=sharing)를 클릭해주세요.

## 2. 개발 환경
&nbsp;&nbsp; 💻 &nbsp; Eclipse 2019-12 (4.14.0) | Oracle SQL Developer 19.4.0.354 | Visual Studio Code 1.49.2 <br>
&nbsp;&nbsp; 🔨 &nbsp; Java 1.8 | Spring Framwork 5.1.5.release | JSP | Python2.7<br>
&nbsp;&nbsp; 🌐 &nbsp; HTML5 | CSS | JavaScript | jQuery 3.5.1 <br>
&nbsp;&nbsp; 🛢 &nbsp; Oracle Database 11g Release 11.2.0.2.0 | SQL | MyBatis3.5.0<br>
&nbsp;&nbsp; 🔧 &nbsp; Git | SourceTree | Maven 3.6.3<br>
&nbsp;&nbsp; 📡 &nbsp; apache-tomcat-8.5.57 <br>

## 3. 구현 기능
`Code, View 클릭시 해당 기능이 있는 코드 위치로 이동합니다`
- 공지사항 관련 [Code](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/java/com/kh/runningdog/notice)<br>
목록, 검색, 페이징, 상세 페이지, 작성, 수정, 삭제, 선택 삭제, 다음 글 이전 글, 첨부파일<br>
헤더부분에 알림 표시, 한달 이내 작성한 공지사항 롤링처리, 관리자 페이지-공지 관리 
  - 첨부파일 다운로드 [Code](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/java/com/kh/runningdog/notice/controller/NoticeFileDownLoadView.java)
  - 공지사항 [View](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/webapp/WEB-INF/views/notice)
  - 공지사항 헤더 부분에 롤링 [View](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/webapp/WEB-INF/views/include/header.jsp#L12)
  - 공지사항 관리 [Code](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/java/com/kh/runningdog/admin/notice/controller/AdminNoticeController.java) / 
  [View](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/webapp/WEB-INF/views/admin/userBoard)
  - 공지사항 js 파일 [Code](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/webapp/resources/common/js/notice.js)

- 콘텐츠 게시판 관련 [Code](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/java/com/kh/runningdog/contents)<br>
Python BeautifulSoup으로 데이터를 크롤링 후 Jython 사용하여 자바와 연결<br>
상식 - ‘종합유기견보호센터’ 에서 상식부분 강아지, 고양이, 기타 크롤링<br>
오늘의 이슈 - ‘1boon kakao’ 동물 관련 파트너 5명, 최신 순, 인기순 100개 크롤링
  - 크롤링하기 [Code](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/webapp/resources/contents_pythonFiles)
  - 상식 / 이슈 [View](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/webapp/WEB-INF/views/issue)
  - 이슈 메인페이지 출력 [View](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/webapp/WEB-INF/views/main/main.jsp#L145)
  - 콘텐츠 관리 [Code](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/java/com/kh/runningdog/admin/contents/controller/AdminContentsController.java) / 
  [View](https://github.com/Tiger200627/runningdog/tree/NOTICE5/src/main/webapp/WEB-INF/views/admin/contents)
  - 이슈 공유하기 js 파일 [View](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/webapp/resources/common/js/issueShare.js)


- 사이트 소개 페이지 [View](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/webapp/WEB-INF/views/about/aboutView.jsp) / 
CSS 파일 [Code](https://github.com/Tiger200627/runningdog/blob/NOTICE5/src/main/webapp/resources/common/css/about.css)<br>
기존에 제공된 디자인을 바탕으로 반응형 웹 페이지를 구현 CSS

## 4. 구현 이미지
공지사항 목록 / 상세 / 헤더
<img src="https://user-images.githubusercontent.com/67498192/104023527-24c2ea80-5205-11eb-8065-0be28b94ab76.png">
<img src="https://user-images.githubusercontent.com/67498192/104023580-373d2400-5205-11eb-8c06-1cb23c3e587e.png">

공지사항 작성 / 수정
<img src="https://user-images.githubusercontent.com/67498192/104023611-42904f80-5205-11eb-84c3-579f918629c2.png">
<img src="https://user-images.githubusercontent.com/67498192/104023654-4f14a800-5205-11eb-9ba6-2ea5253ea000.png">

공지사항 관리자 페이지
<img src="https://user-images.githubusercontent.com/67498192/104023692-5cca2d80-5205-11eb-969b-672f5c499d45.png">

콘텐츠 - 상식 / 목록(축약) / 상세 / 관리자 페이지
<img src="https://user-images.githubusercontent.com/67498192/104026551-72d9ed00-5209-11eb-8c38-04f535f96c65.png">
<img src="https://user-images.githubusercontent.com/67498192/104026551-72d9ed00-5209-11eb-8c38-04f535f96c65.png">
<img src="https://user-images.githubusercontent.com/67498192/104026900-f398e900-5209-11eb-9986-707e23651f24.png">

사이트 저작권
출처 : 종합 유기견 보호센터

콘텐츠 - 이슈 / 목록 / 상세 / 관리자 페이지
<img src="https://user-images.githubusercontent.com/67498192/104026975-13301180-520a-11eb-90fe-d9d6e026b636.png">
<img src="https://user-images.githubusercontent.com/67498192/104027394-acf7be80-520a-11eb-8e58-ffbf9b05b358.png">
<img src="https://user-images.githubusercontent.com/67498192/104027052-33f86700-520a-11eb-9138-126f37cb8e3c.png">

사이트 소개 웹 / 모바일
<img src="https://user-images.githubusercontent.com/67498192/104027481-cc8ee700-520a-11eb-805c-afff54ae898c.png">
<img src="https://user-images.githubusercontent.com/67498192/104027564-e8928880-520a-11eb-85c8-50f791eb3409.png" width="50%">


## 5. 구현 영상
아직 촬영 전

## 6. 저작권
>콘텐츠 - 상식 크롤링
출처 : [종합 유기견 보호센터](https://www.zooseyo.or.kr/Yu_board/know.html?gubun=f&animal=dog)

>콘텐츠 - 이슈 크롤링
출처 : [1boon](https://1boon.kakao.com/)
>- 동그람이(네이버 동물공감판 운영, 관리)
https://1boon.kakao.com/animalandhuman
>- 노트펫
https://1boon.kakao.com/notepet
>- 한국애견신문
https://1boon.kakao.com/koreadognews
>- 팻찌
https://1boon.kakao.com/petzzi


> 사이트 소개 아이콘 저작권 from [Flaticon](www.flaticon.com)
>- 유기동물 주인찾기, 보호센터 정보, 콘텐츠 : <a href="https://www.flaticon.com/kr/authors/photo3idea-studio" title="photo3idea_studio">photo3idea_studio</a> <br>
>- 유기동물 정보 : <a href="https://www.flaticon.com/kr/free-icon/pets_2809702" title="monkik">monkik</a><br>
>- 자원봉사, 후원, 채팅, 공지사항: <a href="http://www.freepik.com/" title="Freepik">Freepik</a>

## 7. 업데이트 현황
- ~~보고서 작성하기~~ (2021/01/07 완료)
- ~~ReadMe 작성하기~~  (2021/01/08 완료)
