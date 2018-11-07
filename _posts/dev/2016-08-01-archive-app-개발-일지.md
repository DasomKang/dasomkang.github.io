---
layout: post
title: 안드로이드 어플 개발 간단 일지 및 메모 (업데이트 중)
date: 2016-08-01
navigation: True
tags: [android]
categories: dev
comments: true
---

### 2016년 8월 안드로이드 어플 개발 일지&메모 (계속 업데이트 중)


#### 추가할 기능
1) 녹음, mp3플레이어
2) 회원가입, 로그인, 서버, mysql연동
3) 파일 서버 업로드
5) 데이터베이스
6) gcm알림, 구글지도를 연동한 알림(특정 장소에 가면 알림이 뜨게끔)
7) 통계 (그래프 추가)
8) 설정
9) 캘린더
10) 친구 초대하기

#### 주별 계획
1주차: 녹음기능
2주차: 회원가입, 서버, mysql연동
3주차: 파일 서버 업로드
4주차: 데이터베이스
5주차: mp3플레이어
6주차: gcm알림
7주차: ?
8주차: ?
9주차: 그래프
10주차: 캘린더

---
#### 1주차 - 녹음 기능

1. 녹음기능
    - sd카드 저장
    - 녹음 시작, 저장
    - 이름 중복 막음!

2. 하단 네비게이션 탭바
    - 태블릿에도 적용 가능

<참고사항 + 나중에 꼭 추가할 기능>
- 녹음 일시정지, 다시 이어서 하기 기능
    - 녹음된 데이터 서버 저장  -> 8/16일 완료
    - 네비게이션 탭바 fragment 공부하기 -> 8월 14일 완료

#### 2주차 - 회원가입, 서버, mysql 연동

*모두 서버, mysql과 연동*

1. 서버와 mysql연동 했음.
2. 회원가입
   - 아이디 중복 가입 막음
3. 로그인
    - 자동로그인 ( 자동로그인 체크 시 ), 일단은 sharedpreferences 이용
3. 로그아웃
    - 로그아웃 클릭 시, sharedpreferences 삭제 및 로그인 화면으로 이동

<참고사항 + 나중에 꼭 추가할 기능>
    - 카카오톡 로그인 넣기
    - 녹음 시 숫자 카운트 쓰레드 추가
    - 아이디 비밀번호 sharedpreferences에 임시아이디랑 비밀번호 넣어서 저장해야한다. -> 8/22
    - 데이터베이스를 새로 만드는 것이 좋다.

#### 3주차 - 서버 업로드

**일요일**
- 프레그먼트 + 뷰페이저 였는데 프레그먼트만으로 바꿈 !!!
- 카카오톡 로그인 성공

**월요일**
- sd카드에 있는 파일 업로드 성공
- 안드로이드  녹음 시 숫자 카운트 스레드 추가  (오후2시!!!!!!!!)

**화요일**
- 녹음종료와 동시에 서버에 파일 업로드 성공 !!!!!(오후 2시반부터 7시까지 작업)
   - 녹음종료 버튼을 누르면 서버에 파일이 업로드 된다.
   - 파일명은 그대로 저장된다 일단은!
- phpmyadmin설치 완료.
- retrofit  공부했다.. 쓰잘데없이 ㅠㅠ


**수요일**

<참고사항 + 나중에 꼭 추가할 기능>
- 서버 파일 업로드와 디비 연결하기 -> 8월 21일 완료
- 개인 리스트뷰 만들기 (녹음파일) -> 8월 24일 완료
- 서버에 업로드 될 때 파일명 변경 -> 8월 21일 완료
- 환경설정에서 sd카드에 파일 저장할 지 말지 옵션 추가
- 저장폴더 없을 시 저장폴더 생성
- 오류 발견, 한글 파일 업로드 시 깨짐 현상-> 8월 20일 (토요일 낮 12시)
- 인코딩 관련해서 공부(클라이언트와 서버쪽)
- 다른 음성파일 확장자는 추가할 지 말지 생각 . 생각하지 못했던 부분임!
- 이거는 고려해보자.


#### 4주차. - 데이터베이스

- 데이터베이스와 연동 (로그인데이터베이스, 임시 데이터베이스, 서버 오디오 데이터베이스)
- 리스트뷰 연습, 그리고 리사이클러뷰 까지

**일요일**
- 파일명 변경해서 업로드 후 db에 파일 정보 저장.


**월요일**
- 로그인 시 임시아이디 발급.
   - 자동로그인 시 sharedpreferences에 임시아이디 저장.
- mysql db에 한글 꺠짐 현상 해결
- php에서 녹음파일명 변경 후 서버 업로드 완료

<참고사항 + 나중에 꼭 추가할 기능>
- 안드로이드에서 파일 녹음 시 파일명에 특수기호 못 넣게 해야 함.

**수요일**
- mysql데이터 json으로 파싱, 그다음에 안드로이드 리스트뷰로 뿌려주기
  - 임시아이디 확인해서 실제아이디를 찾고 실제아이디로 다시 오디오 디비를 접속 , 가져오기
  - json , retrofit 공부

- 리스트뷰에 적용 후 리사이클러뷰 사용해서 적용.
  - json, recycler view 사용


**목,금요일**
- 피드창에 리사이클러뷰 적용
- mp4 재생이 안되어서 계쏙 오류였음.. 하루종일 찾았음
- mp4 플레이어 오픈소스 가져와서 적용하려다가 종일 시간 투자 ㅠㅠ

#### 5주차 - 플레이어 기능, 리스트뷰
mp4플레이어 만들기 , 서버 업로드 완전 성공 끝내기 , 개인 프로필창 만들기


**일요일**
업로드 및 오디오 재생 문제에서
- 아파치에 업로드 시 재생 오류 -> mime.types 추가해줌
- 안드로이드에서 mp4 재생 테스트 확인  -> 잘 됨
- 안드로이드에서 녹음한 파일 이나 업로드한 파일은 재생이 안되는 오류가 있었음.

=> 총 금,토,일 을 소요: 결국 인코딩의 문제였음. getbyte를 쓰면 화면에는 나오나 재생이 안되는 오류


**화요일**
- 앱 디자인 고름

**수요일**
- 오디오 플레이어 완성
- 리스트뷰 디자인 다시 정리


**금요일**
- 파일과 문자 동시에 업로드
- duration 같이 업로드

- 문제 해결 :
  - 녹음이 종료되고 업로드될 때, 해당 폴더에 있는 파일의 절대경로에서 녹음된 시간을 가져온다. 그다음에 post로 같이 전송한다. 와 이거 지금 1시간째 안되었는데, 뛰어쓰기때문에 안되는거였다. 진짜 매의 눈으로 찾음

  ~~~java
  dos.writeBytes(twoHyphens + boundary + lineEnd);

  dos.writeBytes("Content-Disposition: form-data; name=\"duration\"" +lineEnd);

  dos.writeBytes(lineEnd);

  dos.writeBytes(duration + lineEnd);

  System.out.println(duration);
  ~~~

  여기에서 **name = \"duration**어찌고저찌고 안되는 경우 뛰어쓰기를 잘 봐야함 ㅠㅠㅠㅠ뛰어쓰기되어있으면 안됨 .ㅠ.ㅠ.ㅠ.ㅠ.ㅠ....

<참고사항 + 나중에 꼭 추가할 기능>
- 좋아요 기능 넣고 duration 총 길이 넣기

#### 6주차
- 개인 프로필창 만들기

**일요일**
사진 업로드 하는 과정에서 시간을 많이 잡아 먹음

- 프로필 사진 지정 및 서버 업로드
  - 사진 크롭 저장기능 = 라이브러리 사용
  - 서버업로드 시 에러가 있었음. 파일 주소앞에 / 를 붙이면 안되는데 붙여서 저장안됨 ㅠ

~~~ java
private void beginCrop(Uri source) {

    Log.d("beginCrop", "start");

    Uri destination = Uri.fromFile(new File( Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "cropped.jpg"));

    //Uri destination = Uri.fromFile(new File(getActivity().getCacheDir(), "cropped"));

    Crop.of(source, destination).asSquare().start(getContext(),this);

    System.out.println(destination);

    //start(Activity activity) 부분을 start(Context context, Fragment fragment)로 변경
}

private void handleCrop(int resultCode, Intent result) {

    if (resultCode == Activity.RESULT_OK) {

        // Activity 의 RESULT_OK값을 사용

        Log.d("handleCrop", "RESULT_OK");

        imageView.setImageURI(Crop.getOutput(result));

        Uri path = Crop.getOutput(result);

        //꼭 만들 때 storage 앞에 /를 붙이지 말것 !!

        absolutePath = "storage/emulated/0/Pictures/cropped.jpg";

        System.out.println("abs=" + absolutePath);

        imageUpload();
 ~~~
 이제 업로드하는 것 잘 알겠음


1. 서버의 파일 권한 777로 풀어주기
2. 파일 경로 제대로 체크 해야함.
~~~ Java
//꼭 만들 때 storage 앞에 /를 붙이지 말것 !!
absolutePath = "storage/emulated/0/Pictures/cropped.jpg";
~~~

3. 크롭한 파일 저장될 주소 잘 찾기
~~~ Java
Uri destination = Uri.fromFile(new File( Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "cropped.jpg"));
//Uri destination = Uri.fromFile(new File(getActivity().getCacheDir(), "cropped"));
~~~
이런식으로 나는, sd카드에 picture에 저장할 것

4. 서버 업로드 시 mysql이용할 떄, 같은 데이터베이스를 이용할 경우, **mysqli_close($conn);** 를 중간에 쓰면 절대 안됨~ ㅠㅠㅠㅠ


**수요일**
1. 피드 새로고침
  - ultimaterecyclerview 사용
  - feedfragment  ->  당겨서 새로고침

2. sticky header
  - ultimaterecyclerview 사용
  - 날짜 헤더 추가


날짜를 long형으로 바꿔서

~~~ Java
java.text.SimpleDateFormat df = new java.text.SimpleDateFormat("yyyy.MM.dd/HH:mm:ss");
java.util.Date date = df.parse("2001.07.02/18:26:00");
long time = date.getTime();
~~~
