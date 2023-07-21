# COCONOAH
## 1. About Us
### Members
김다현 김용원 박주형 조승연 이하린

### Contribution
김다현 : 회원신고(관리자 열람 가능), 사진 인증(업로드 및 DB저장),
회원 마이페이지 (수정 기능), 회원 상세페이지(타회원 열람) 및 Frontend

김용원 : 질문 답변 페이지(문의글 작성, 수정, 삭제-로그인 사용자 본인 글에만 접근
답변글 작성, 수정, 삭제-관리자만 접근)

박주용 : 시니어 리스트 페이지, 매칭 신청 시 알림메시지
매칭 기능 (부모 회원 신청 < - > 시니어 수락 or 거절)

조승연 : 회원가입 유형 페이지, 부모회원가입페이지, 시니어회원가입페이지,로그인 페이지(아이디&비밀번호 검증, 회원유형코드 조회 및 대조기능)

이하린 : 관리자 페이지(시니어 등록기능 , 신고 관리 기능, 매칭 이력 조회, 블랙리스트 관리)

## 2.Project
뜻 : CO : Communication(의사소통) / CO : Companion(동반자,동행) / NO : 노인 / AH : 아이 = COCONOAH

주제 : 만65세 이상 노인들을 대상으로 진행하는 어린이 등하교 도우미 서비스 신청 사이트

목적 : 은퇴한 시니어들의 일자리 지원과      어린이 범죄 예방

### 문제정의

1) 어린이 보행자 교통사고는 등하교시간에 집중적으로 발생
2) 고령사회(65세 이상의 인구비율 : 14%이상) 노인 일자리 문제
3) 어린이(12세 이하)의 교통사고율 감소 방안
4) 65세 이상 시니어분들의 일자리 창출 목적
5) 자녀들의 등하교/하원 시 보호자의 부담 감소

### 요구사항

1) 로그인 사용자만 동행 서비스 신청이 가능하다.
2) 회원 유형에 따라 상단 링크가 다르게 노출된다.
3) 시니어 인증신청은 중복이 가능해야한다.
4) 관리자 페이지에서 회원이 신청한 정보를 전부 열람할 수 있어야 한다.
5) 매칭이 완료된 후, 해당 건의 시간에는 시니어의 스케줄에 관한 접근을 제어해야 한다.
6) 게시판의 글은 본인 글만 수정이 가능해야 한다.

### 사용기술
![image](https://github.com/KimDaH1/3thfullstack/assets/129045969/d14b80c0-4ab3-4691-ba8b-9c56a212ca06)

### 프로그램 설계(ERD)

![image](https://github.com/KimDaH1/3thfullstack/assets/129045969/21709512-94cb-48d1-b2f5-45316066b3a9)


## 3. Screen
### 화면 구성

#### 메인페이지

header 부분 비로그인시 보여지는 카테고리 3개만 보이기 시니어 로그인시 매칭현황 카테고리 추가

부모로그인시 시니어 찾기 카테고리 추가

스크롤에 따라 크기번경 body

하단 스크롤시 옆으로 이동하여 페이지 노출

footer 부분 구글 지도로 위치 지정하여 노출 확대 축소 가능

![메인화면](https://github.com/KimDaH1/3thfullstack/assets/129045969/9ab40265-e69f-42f8-9e68-6000934180eb)

---

#### 회원가입 페이지

회원가입시 부모님으로가입/시니어로가입나눔

common code가 ‘PAR’ 인지 ‘SNR’ 인지 나누어지는 단계

‘PAR’=부모님

‘SNR’=시니어

휴대폰 인증 API를 통해 인증번호 발신 인증번호와 일치하면 인증성공 및 회원가입 가능

부모님&시니어 동일 ) 우편번호로 주소지 찾기 가능 

부모님부분) 자녀 이름,나이,출생년도,자녀성격 필수사항으로 입력을 하지 않으면 회원가입 불가 

-시니어 회원가입 페이지는 위 내용은 부모님과 동일하고 다른점은 자기소개는 선택사항 작성안해도됌 (마이페이지에서 수정가능)

-픽업시간 필수사항 본인이 오전 오후로 나누어서 등하교가 가능한 요일&시간대체크(마이페이지에서 수정가능)

![회원가입](https://github.com/KimDaH1/3thfullstack/assets/129045969/02822d98-ab67-4864-a7df-40a5781577e0)

---

#### 마이페이지수정

부모님&시니어 동일) 각종 마이페이지에서 프로필사진 및 소개글 수정가능

비밀번호 수정가능

![마이페이지수정](https://github.com/KimDaH1/3thfullstack/assets/129045969/3667d423-aae6-4c3f-89f2-d2c40579f1d8)

---

#### 매칭시스템

부모님 로그인시 시니어찾기 페이지에서 원하는 시니어 클릭시 시니어 상세페이지로이동 상세페이지에서 스케줄확인 후 원하는 시간대에 신청

신청이 완료가되면 시니어 로그인시 알림 발생 수락할것인지 거절할것인지 택

수락 후 매칭현황에서 확인가능 및 매칭완료가능(매일 완료날이 지나야 최종완료가능) 

![매칭하기](https://github.com/KimDaH1/3thfullstack/assets/129045969/6e769b2d-f881-49da-9681-8ee18b9c30b8)

---

#### 관리자에서 매칭내역 조회가능

관리자페이지에서 현재 시니어와 부모님의 매칭상태 확인가능 

![매칭이력 확인](https://github.com/KimDaH1/3thfullstack/assets/129045969/c43b5707-1b21-42bf-bcc5-f5acabc51991)

---

#### 인증하기

처음 시니어로 가입을하게되면 시니어찾기에 노출이 되지않음 

마이페이지에서 추가인증을통해 신분증과 범죄이력조회 사진을 인증

인증을 보내면 관리자페이지에서 확인가능 확인후 최종적으로 인증수락 

인증을 수락하게되면 시니어찾기에 시니어목록 노출

![인증하기](https://github.com/KimDaH1/3thfullstack/assets/129045969/306f6a9e-6914-4a78-8f91-8d58980d5c2c)

---

#### 신고하기

부모님이 시니어 신고기능 

신고를하게되면 관리자페이지에서 확인가능 

신고사유가 타당하면 경고처리 누적경고가 3회면 블랙리스트 등록 블랙리스트가 등록이된 사람은 시니어활동 불가 

![신고하기](https://github.com/KimDaH1/3thfullstack/assets/129045969/5149bc25-e875-4d39-bbb3-c6b4cffe7ada)

---

#### 문의게시판

부모님 & 시니어 문의게시판 이용가능 

문의 답변글은 관리자에서만 답변가능 

본인이 작성한글 외에는 삭제 및 수정 불가 

![문의게시판](https://github.com/KimDaH1/3thfullstack/assets/129045969/6d116912-50b1-49cc-a439-9e57cf09f936)

---

## 4.느낀점 및 보완사항

### 느낀점

더 많은 아이디어와 계획이 있었지만 시간문제로 조금씩 없애버린것이 좀 아쉽기도하다.
조원들에게 너무 많은 도움을 받아서 혼자서는 하기 힘들었을 거 같다.
처음에는 spring에 대해 어느 정도 맥락은 알았지만 직접 코드로 작성하고 실행하기가 너무 어려웠다. 
특히 오류가나는 부분을 찾아서 수정하는게 너무 많이 어려웠다. 그치만 3차 프로젝트를 하면서 많이 성장한거 같다. 
앞으로도 개선할거에 대해 개선하고 더 열심히 공부를 해야할거 같다.

### 보완사항

관리자에서 인증이 완료가되면 인증 완료마이페이지에 인증이 완료가 된 표식 남기기 - 완료
스케줄표 스크롤 없애고 한눈에 보이게 하기 - 완료
사진인증시 한장만 인증하게되면 db에 아이디 + 사진에 null이 들어간다 이부분 수정을 하였는데  머지할때 충돌이 생겨 수정 전으로 되돌아감 수정필요 - 완료
추후에 시니어리스트에서 검색기능을 추가하면 아주 좋을거같다. 

