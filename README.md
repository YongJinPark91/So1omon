# So1omon
So1omon

### Team Members : 박용진(Leader), 강주원, 류지완, 최성윤, 하민정 

### 1. Final Report List

 
![1](https://github.com/YongJinPark91/So1omon/assets/130638184/27243dcd-e6cf-4b03-b68f-976535ffbbc2)
![2](https://github.com/YongJinPark91/So1omon/assets/130638184/1e86738a-8efd-459e-9bd2-28c212b30f09)
![3](https://github.com/YongJinPark91/So1omon/assets/130638184/f99b4487-21df-41e2-b603-4022935079b1)
![4](https://github.com/YongJinPark91/So1omon/assets/130638184/38d640fa-9141-43ab-b9b5-30c04cc80008)
![5](https://github.com/YongJinPark91/So1omon/assets/130638184/12c72b76-e763-45a8-a57d-dc2196c86732)
![6](https://github.com/YongJinPark91/So1omon/assets/130638184/efe7b518-4d30-4796-a157-9fa951b19b06)
![7](https://github.com/YongJinPark91/So1omon/assets/130638184/9405dbb1-4850-4018-9df9-c1d743736f20)
![8](https://github.com/YongJinPark91/So1omon/assets/130638184/5cd1cc78-6f52-4045-b4d6-dddb1894271c)
![9](https://github.com/YongJinPark91/So1omon/assets/130638184/4a59493b-a72d-4302-a09a-d1702ec12630)
![10](https://github.com/YongJinPark91/So1omon/assets/130638184/3300f10d-ac31-41cd-b710-affbae8ab220)

### 2. Data-Base Detail Script
<details>
<summary>접기/펼치기</summary>
<pre>
 <code>
  -----------------삭제------------------
--접속유저의 모든테이블 및 제약조건 삭제
BEGIN
    FOR C IN (SELECT TABLE_NAME FROM USER_TABLES) LOOP
    EXECUTE IMMEDIATE ('DROP TABLE '||C.TABLE_NAME||' CASCADE CONSTRAINTS');
    END LOOP;
END;
/
--접속유저의 모든 시퀀스 삭제
BEGIN
FOR C IN (SELECT * FROM USER_SEQUENCES) LOOP
  EXECUTE IMMEDIATE 'DROP SEQUENCE '||C.SEQUENCE_NAME;
END LOOP;
END;
/
--접속유저의 모든 뷰 삭제
BEGIN
FOR C IN (SELECT * FROM USER_VIEWS) LOOP
  EXECUTE IMMEDIATE 'DROP VIEW '||C.VIEW_NAME;
END LOOP;
END;
/
--접속유저의 모든 트리거 삭제
BEGIN
FOR C IN (SELECT * FROM USER_TRIGGERS) LOOP
  EXECUTE IMMEDIATE 'DROP TRIGGER '||C.TRIGGER_NAME;
END LOOP;
END;
/

-- 사용자(MEMBER)
CREATE TABLE MEMBER(
    USER_NO NUMBER CONSTRAINT UNO_PK PRIMARY KEY,
    USER_ID VARCHAR2(15) CONSTRAINT UID_NN NOT NULL,
    USER_PWD VARCHAR2(20) CONSTRAINT UPWD_NN NOT NULL,
    USER_NAME VARCHAR2(20) CONSTRAINT UNAME_NN NOT NULL,
    NICKNAME VARCHAR2(30) CONSTRAINT NICKNAME_NN NOT NULL,
    ADDRESS VARCHAR2(100) CONSTRAINT ADDRESS_NN NOT NULL,
    EMAIL VARCHAR2(100) CONSTRAINT EMAIL_NN NOT NULL,
    PHONE VARCHAR2(13) CONSTRAINT PHONE_NN NOT NULL,
    POINT NUMBER DEFAULT 0,
    PROFILE VARCHAR2(100),
    ENROLL_DATE DATE DEFAULT SYSDATE,
    MODIFY_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y'  CHECK (STATUS IN('Y', 'N')),
    USER_TOKEN VARCHAR2(4000),
    CONSTRAINT UID_UQ UNIQUE(USER_ID)
);

COMMENT ON COLUMN MEMBER.USER_NO IS '사용자번호';
COMMENT ON COLUMN MEMBER.USER_ID IS '아이디';
COMMENT ON COLUMN MEMBER.USER_PWD IS '비밀번호';
COMMENT ON COLUMN MEMBER.USER_NAME IS '이름';
COMMENT ON COLUMN MEMBER.NICKNAME IS '닉네임';
COMMENT ON COLUMN MEMBER.ADDRESS IS '주소';
COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.PHONE IS '휴대폰번호';
COMMENT ON COLUMN MEMBER.POINT IS '포인트';
COMMENT ON COLUMN MEMBER.PROFILE IS '프로필사진';
COMMENT ON COLUMN MEMBER.ENROLL_DATE IS '회원가입날짜';
COMMENT ON COLUMN MEMBER.MODIFY_DATE IS '회원수정날짜';
COMMENT ON COLUMN MEMBER.STATUS IS '상태(Y/N)';

CREATE SEQUENCE SEQ_UNO NOCACHE;

INSERT INTO MEMBER
VALUES(SEQ_UNO.NEXTVAL, 'admin', '1234', '관리자', '관리자', '서울시 강남구 역삼동', 'admin@kh.or.kr', '010-1234-5678', DEFAULT, NULL, DEFAULT, DEFAULT, DEFAULT, NULL);

INSERT INTO MEMBER
VALUES(SEQ_UNO.NEXTVAL, 'user01', 'pass01', '차은우', '얼굴천재', '서울시 강남구 청담동', 'cha@kh.or.kr', '010-1111-2222', DEFAULT, NULL, DEFAULT, DEFAULT, DEFAULT, NULL);

INSERT INTO MEMBER
VALUES(SEQ_UNO.NEXTVAL, 'user02', 'pass02', '장원영', '인형', '서울시 용산구 이촌동', 'jang@kh.or.kr', '010-2222-3333', DEFAULT, NULL, DEFAULT, DEFAULT, DEFAULT, NULL);

INSERT INTO MEMBER
VALUES(SEQ_UNO.NEXTVAL, 'user03', 'pass03', '박용진', '조장', '서울시 용산구', 'dragon@kh.or.kr', '010-4444-5555', DEFAULT, NULL, DEFAULT, DEFAULT, DEFAULT, NULL);

INSERT INTO MEMBER
VALUES(SEQ_UNO.NEXTVAL, 'user04', 'pass04', '하민정', '좁눈', '서울시 동작구 사당동', 'mmj@kh.or.kr', '010-6666-7777', DEFAULT, NULL, DEFAULT, DEFAULT, DEFAULT, NULL);


-- 상품 카테고리
CREATE TABLE CATEGORY(
    CATEGORY_NO NUMBER CONSTRAINT CTG_NO_PK PRIMARY KEY,
    CATEGORY_L VARCHAR2(100) CONSTRAINT CTG_L_NN NOT NULL,
    CATEGORY_S VARCHAR2(100),
    CATEGORY_STATUS VARCHAR2(1) DEFAULT 'Y'
);

COMMENT ON COLUMN CATEGORY.CATEGORY_NO IS '카테고리번호';
COMMENT ON COLUMN CATEGORY.CATEGORY_L IS '대분류';
COMMENT ON COLUMN CATEGORY.CATEGORY_S IS '소분류';
COMMENT ON COLUMN CATEGORY.CATEGORY_STATUS IS '카테고리상태';

CREATE SEQUENCE SEQ_CTGR NOCACHE;

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '침대', '침대프레임', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '침대', '매트리스', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '테이블·식탁·책상', '식탁', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '테이블·식탁·책상', '책상', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '테이블·식탁·책상', '좌식테이블', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '서랍·수납장', '서랍장', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '서랍·수납장', '수납장', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '서랍·수납장', '캐비닛', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '밀키트·간편식.', '밀키트', DEFAULT);

INSERT INTO CATEGORY
VALUES(SEQ_CTGR.NEXTVAL, '생필품', '세탁세제·유연제', DEFAULT);


-- 상품
CREATE TABLE PRODUCT(
    PRODUCT_NO VARCHAR2(10) CONSTRAINT PR_PK PRIMARY KEY,
    CATEGORY_NO NUMBER NOT NULL,
    PRODUCT_NAME VARCHAR2(300) CONSTRAINT PR_PR_NM NOT NULL,
    SALE NUMBER,
    DELIVERY NUMBER CONSTRAINT DEL_NN NOT NULL,
    COUNT NUMBER DEFAULT 0,
    PRODUCT_OPTION VARCHAR2(10) CONSTRAINT POPT_NN NOT NULL, 
    STATUS VARCHAR2(1) DEFAULT 'Y'  CHECK (STATUS IN('Y', 'N')),
    CONSTRAINT PR_CTGR_FK FOREIGN KEY (CATEGORY_NO) REFERENCES CATEGORY
);

COMMENT ON COLUMN PRODUCT.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN PRODUCT.CATEGORY_NO IS '카테고리번호';
COMMENT ON COLUMN PRODUCT.PRODUCT_NAME IS '상품명';
COMMENT ON COLUMN PRODUCT.SALE IS '할인률';
COMMENT ON COLUMN PRODUCT.DELIVERY IS '배송비';
COMMENT ON COLUMN PRODUCT.COUNT IS '조회수';
COMMENT ON COLUMN PRODUCT.PRODUCT_OPTION IS '옵션구분';
COMMENT ON COLUMN PRODUCT.STATUS IS '상태';

CREATE SEQUENCE SEQ_PNO NOCACHE;

INSERT INTO PRODUCT
VALUES('P' || SEQ_PNO.NEXTVAL, 1, '유사품에 속지마세요! 원조 어메이징 원목 침대 매트리스 깔판', 0.2, 50000, DEFAULT, '사이즈', DEFAULT);

INSERT INTO PRODUCT
VALUES('P' || SEQ_PNO.NEXTVAL, 3, '안나 원형 식탁테이블 600 700 800 1000 4type', 0, 25000, DEFAULT, '색상', DEFAULT);

INSERT INTO PRODUCT
VALUES('P' || SEQ_PNO.NEXTVAL, 6, '깔끔한 화이트 서랍장 3종', 0.1, 10000, DEFAULT, '색상', DEFAULT);

INSERT INTO PRODUCT
VALUES('P' || SEQ_PNO.NEXTVAL, 7, '따뜻하게 집에서! 베트남쌀국수 15팩/30팩', 0.2, 0, DEFAULT, '선택', DEFAULT);

INSERT INTO PRODUCT
VALUES('P' || SEQ_PNO.NEXTVAL, 10, '대용량 4L+리필 2600ml 초고농축 섬유유연제', 0, 0, DEFAULT, '선택', DEFAULT);

-- 상품옵션
CREATE TABLE OPTIONS(
    PRODUCT_NO VARCHAR2(10),
    OPTION_NAME VARCHAR2(100),
    STOCK NUMBER DEFAULT 0,
    PRICE NUMBER CONSTRAINT PRICE_NN NOT NULL,
    CONSTRAINT PNO_FK FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT,
    CONSTRAINT OPTION_PK PRIMARY KEY(PRODUCT_NO, OPTION_NAME)
);

COMMENT ON COLUMN OPTIONS.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN OPTIONS.OPTION_NAME IS '옵션명';
COMMENT ON COLUMN OPTIONS.STOCK IS '재고';
COMMENT ON COLUMN OPTIONS.PRICE IS '가격';

--CREATE SEQUENCE SEQ_OPTNO NOCACHE;

INSERT INTO OPTIONS
VALUES('P2', '화이트', DEFAULT, 50000);

INSERT INTO OPTIONS
VALUES('P2', '블랙', DEFAULT, 50000);

INSERT INTO OPTIONS
VALUES('P3', '블루', DEFAULT, 75000);

INSERT INTO OPTIONS
VALUES('P3', '화이트', DEFAULT, 70000);

INSERT INTO OPTIONS
VALUES('P4', '15팩', DEFAULT, 25000);

INSERT INTO OPTIONS
VALUES('P4', '30팩', DEFAULT, 45000);

INSERT INTO OPTIONS
VALUES('P1', 'S', DEFAULT, 50000);

INSERT INTO OPTIONS
VALUES('P1', 'SS', DEFAULT, 55000);



--- 장바구니
CREATE TABLE CART(
    PRODUCT_NO VARCHAR2(10),
    USER_NO NUMBER,
    VOLUME NUMBER DEFAULT 1,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER,
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT,
    CONSTRAINT CART_PK PRIMARY KEY (PRODUCT_NO, USER_NO)
);

COMMENT ON COLUMN CART.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN CART.USER_NO IS '사용자번호';
COMMENT ON COLUMN CART.VOLUME IS '상품수량';

INSERT INTO CART
VALUES('P1', 2, DEFAULT);

INSERT INTO CART
VALUES('P2', 3, 2);

INSERT INTO CART
VALUES('P3', 1, DEFAULT);

INSERT INTO CART
VALUES('P4', 4, 3);


INSERT INTO CART
VALUES('P5', 5, DEFAULT);

-- 주문
CREATE TABLE ORDERS(
    ORDER_NO NUMBER CONSTRAINT ORDER_PK PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    TRACKING NUMBER CONSTRAINT TRACKING_NN NOT NULL,
    ORDER_DATE DATE DEFAULT SYSDATE,
    CASH_TYPE VARCHAR2(30) CONSTRAINT CASHTYPE_NN NOT NULL,
    STATUS VARCHAR2(1) DEFAULT 'Y'  CHECK (STATUS IN('Y', 'N')),
    ADDRESS VARCHAR2(4000) CONSTRAINT ADDR_NN NOT NULL,
    MEMBER_STATUS VARCHAR2(1) DEFAULT 'M',
    CONSTRAINT UNO_FK FOREIGN KEY (USER_NO) REFERENCES MEMBER
);

COMMENT ON COLUMN ORDERS.ORDER_NO IS '주문번호';
COMMENT ON COLUMN ORDERS.USER_NO IS '사용자번호';
COMMENT ON COLUMN ORDERS.TRACKING IS '송장번호';
COMMENT ON COLUMN ORDERS.ORDER_DATE IS '구매일자';
COMMENT ON COLUMN ORDERS.CASH_TYPE IS '결제수단';
COMMENT ON COLUMN ORDERS.STATUS IS '상태';
COMMENT ON COLUMN ORDERS.ADDRESS IS '주소';
COMMENT ON COLUMN ORDERS.MEMBER_STATUS IS '회원상태';


INSERT INTO ORDERS
VALUES(202310111812, 1, 123456789, DEFAULT, '카드', DEFAULT, '서울시 용산구', DEFAULT);

INSERT INTO ORDERS
VALUES(202310111813, 2, 123456780, DEFAULT, '카드', DEFAULT, '서울시 동작구', DEFAULT);

INSERT INTO ORDERS
VALUES(202310111814, 3, 123456782, DEFAULT, '카드', DEFAULT, '서울시 관악구', DEFAULT);

INSERT INTO ORDERS
VALUES(202310111815, 4, 123456788, DEFAULT, '카드', DEFAULT, '광주광역시 북구', DEFAULT);

INSERT INTO ORDERS
VALUES(202310111816, 5, 123456787, DEFAULT, '카드', DEFAULT, '경남 거제시', DEFAULT);


-- 주문상세
CREATE TABLE ORDER_DETAIL(
    ORDER_NO NUMBER,
    PRODUCT_NO VARCHAR2(10) NOT NULL,
    OPTION_NAME VARCHAR2(300) NOT NULL,
    VOLUME NUMBER CONSTRAINT VOL_NN NOT NULL,
    FOREIGN KEY (ORDER_NO) REFERENCES ORDERS,
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT
);

COMMENT ON COLUMN ORDER_DETAIL.ORDER_NO IS '주문번호';
COMMENT ON COLUMN ORDER_DETAIL.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN ORDER_DETAIL.OPTION_NAME IS '옵션명';
COMMENT ON COLUMN ORDER_DETAIL.VOLUME IS '구매수량';

INSERT INTO ORDER_DETAIL
VALUES(202310111812, 'P2', '화이트', 1);

INSERT INTO ORDER_DETAIL
VALUES(202310111812, 'P3', '블루', 1);

INSERT INTO ORDER_DETAIL
VALUES(202310111813, 'P3', '화이트', 2);

INSERT INTO ORDER_DETAIL
VALUES(202310111814, 'P3', '화이트', 1);

INSERT INTO ORDER_DETAIL
VALUES(202310111815, 'P4', '30팩', 1);

INSERT INTO ORDER_DETAIL
VALUES(202310111816, 'P1', 'S', 1);

-- 찜하기
CREATE TABLE WISH(
    PRODUCT_NO VARCHAR2(10),
    USER_NO NUMBER,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER,
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT,
    CONSTRAINT WISH_PK PRIMARY KEY (PRODUCT_NO, USER_NO)
);

COMMENT ON COLUMN WISH.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN WISH.USER_NO IS '사용자번호';


INSERT INTO WISH
VALUES('P1', 2);

INSERT INTO WISH
VALUES('P1', 3);

INSERT INTO WISH
VALUES('P2', 1);

INSERT INTO WISH
VALUES('P3', 4);

INSERT INTO WISH
VALUES('P5', 5);



-- 상품리뷰
CREATE TABLE REVIEW(
    REVIEW_NO VARCHAR2(10) CONSTRAINT REVIEW_PK PRIMARY KEY,
    ORDER_NO NUMBER CONSTRAINT ORDERNO_NN NOT NULL,
    PRODUCT_NO VARCHAR2(10) NOT NULL,
    OPTION_NAME VARCHAR2(300) NOT NULL,
    REVIEW_CONTENT VARCHAR2(3000) NOT NULL,
    RATING NUMBER NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y','N')),
    FOREIGN KEY (ORDER_NO) REFERENCES ORDERS,
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT
);

COMMENT ON COLUMN REVIEW.REVIEW_NO IS '리뷰번호';
COMMENT ON COLUMN REVIEW.ORDER_NO IS '주문번호';
COMMENT ON COLUMN REVIEW.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN REVIEW.OPTION_NAME IS '옵션명';
COMMENT ON COLUMN REVIEW.REVIEW_CONTENT IS '내용';
COMMENT ON COLUMN REVIEW.RATING IS '별점';
COMMENT ON COLUMN REVIEW.CREATE_DATE IS '작성일';
COMMENT ON COLUMN REVIEW.STATUS IS '상태';

CREATE SEQUENCE SEQ_REVIEW NOCACHE;

INSERT INTO REVIEW
VALUES('R' || SEQ_REVIEW.NEXTVAL, 202310111812, 'P1', 'S', '생각보다 더 튼튼한거같아서 마음에 들어요', 4, DEFAULT, DEFAULT);

INSERT INTO REVIEW
VALUES('R' || SEQ_REVIEW.NEXTVAL, 202310111813, 'P2', '블랙', '아주 좋아요', 5, DEFAULT, DEFAULT);

INSERT INTO REVIEW
VALUES('R' || SEQ_REVIEW.NEXTVAL, 202310111814, 'P3', '화이트', '그저 그래요', 3, DEFAULT, DEFAULT);

INSERT INTO REVIEW
VALUES('R' || SEQ_REVIEW.NEXTVAL, 202310111815, 'P3', '블루', '색상이 너무 예뻐요', 4, DEFAULT, DEFAULT);

INSERT INTO REVIEW
VALUES('R' || SEQ_REVIEW.NEXTVAL, 202310111816, 'P4', '30팩', '깊은맛이 나요 맛나요', 5, DEFAULT, DEFAULT);


-- 공동구매상품
CREATE TABLE GROUP_BUY(
    GBUY_NO NUMBER CONSTRAINT GBUYNO_PK PRIMARY KEY,
    PRODUCT_NO VARCHAR2(10) NOT NULL,
    GBUY_START DATE NOT NULL,
    GBUY_END DATE NOT NULL,
    GBUY_MIN NUMBER NOT NULL,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT
);

COMMENT ON COLUMN GROUP_BUY.GBUY_NO IS '공동구매번호';
COMMENT ON COLUMN GROUP_BUY.PRODUCT_NO IS '상품번호';
COMMENT ON COLUMN GROUP_BUY.GBUY_START IS '시작날짜';
COMMENT ON COLUMN GROUP_BUY.GBUY_END IS '종료날짜';
COMMENT ON COLUMN GROUP_BUY.GBUY_MIN IS '최소인원';
COMMENT ON COLUMN GROUP_BUY.STATUS IS '상태';

CREATE SEQUENCE SEQ_GBUY NOCACHE;

INSERT INTO GROUP_BUY
VALUES(SEQ_GBUY.NEXTVAL, 'P3', '2023-10-23', '2023-10-25', 10, DEFAULT);

INSERT INTO GROUP_BUY
VALUES(SEQ_GBUY.NEXTVAL, 'P5', '2023-10-30', '2023-11-25', 10, DEFAULT);

INSERT INTO GROUP_BUY
VALUES(SEQ_GBUY.NEXTVAL, 'P4', '2023-11-01', '2023-11-05', 8, DEFAULT);

INSERT INTO GROUP_BUY
VALUES(SEQ_GBUY.NEXTVAL, 'P2', '2023-11-25', '2023-12-25', 15, DEFAULT);


-- 공동구매자
CREATE TABLE GROUP_BUYER(
    GBUY_NO,
    USER_NO,
    FOREIGN KEY (GBUY_NO) REFERENCES GROUP_BUY,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER,
    CONSTRAINT GBUYER_PK PRIMARY KEY(GBUY_NO, USER_NO)
);

COMMENT ON COLUMN GROUP_BUYER.GBUY_NO IS '공동구매번호';
COMMENT ON COLUMN GROUP_BUYER.USER_NO IS '사용자번호';

INSERT INTO GROUP_BUYER
VALUES(1, 1);

INSERT INTO GROUP_BUYER
VALUES(1, 2);

INSERT INTO GROUP_BUYER
VALUES(1, 3);

INSERT INTO GROUP_BUYER
VALUES(2, 4);

INSERT INTO GROUP_BUYER
VALUES(2, 5);

-- 게시판
CREATE TABLE BOARD(
    BOARD_NO VARCHAR2(10) CONSTRAINT BNO_PK PRIMARY KEY,
    BOARD_WRITER NUMBER NOT NULL,
    BOARD_TITLE VARCHAR2(100) NOT NULL,
    BOARD_CONTENT VARCHAR2(4000) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
    COUNT NUMBER DEFAULT 0,
    TAG VARCHAR2(200),
    BOARD_TYPE NUMBER NOT NULL CHECK (BOARD_TYPE IN(1, 2)),
    STATUS VARCHAR2(1) DEFAULT 'Y'  CHECK (STATUS IN('Y', 'N')),
    FOREIGN KEY (BOARD_WRITER) REFERENCES MEMBER
);

COMMENT ON COLUMN BOARD.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN BOARD.BOARD_WRITER IS '작성자';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '제목';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '내용';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '작성일';
COMMENT ON COLUMN BOARD.COUNT IS '조회수';
COMMENT ON COLUMN BOARD.TAG IS '태그';
COMMENT ON COLUMN BOARD.BOARD_TYPE IS '게시글타입';
COMMENT ON COLUMN BOARD.STATUS IS '상태(Y/N)';

CREATE SEQUENCE SEQ_BNO NOCACHE;

INSERT INTO BOARD
VALUES('B' || SEQ_BNO.NEXTVAL, 1, '첫번째 게시글', '첫번째 게시글임다', DEFAULT, DEFAULT, '첫게시글', 1, DEFAULT);
-- 엑셀 샘플


-- 중고게시판
CREATE TABLE T_BOARD(
    TBOARD_NO VARCHAR2(10) CONSTRAINT TBNO_PK PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    TBOARD_TITLE VARCHAR2(100) NOT NULL,
    TBOARD_CONTENT VARCHAR2(4000) NOT NULL,
    PRICE VARCHAR2(100) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
    COUNT NUMBER DEFAULT 0,
    TAG VARCHAR2(200),
    STATUS VARCHAR2(1) DEFAULT 'Y'  CHECK (STATUS IN('Y', 'N')),
    FOREIGN KEY (USER_NO) REFERENCES MEMBER
);

COMMENT ON COLUMN T_BOARD.TBOARD_NO IS '중고게시글번호';
COMMENT ON COLUMN T_BOARD.USER_NO IS '사용자번호';
COMMENT ON COLUMN T_BOARD.TBOARD_TITLE IS '제목';
COMMENT ON COLUMN T_BOARD.TBOARD_CONTENT IS '내용';
COMMENT ON COLUMN T_BOARD.PRICE IS '가격';
COMMENT ON COLUMN T_BOARD.CREATE_DATE IS '작성일';
COMMENT ON COLUMN T_BOARD.COUNT IS '조회수';
COMMENT ON COLUMN T_BOARD.TAG IS '태그';
COMMENT ON COLUMN T_BOARD.STATUS IS '상태';

CREATE SEQUENCE SEQ_TBNO NOCACHE;

INSERT INTO T_BOARD
VALUES('T' || SEQ_TBNO.NEXTVAL, 1, '문상 팔아요', '네고사절', '45000', DEFAULT, DEFAULT, '중고게시판1', DEFAULT);

INSERT INTO T_BOARD
VALUES('T' || SEQ_TBNO.NEXTVAL, 2, '문어 삽니다', '싸게 주세요', '가격제시', DEFAULT, DEFAULT, '중고게시판2', DEFAULT);

INSERT INTO T_BOARD
VALUES('T' || SEQ_TBNO.NEXTVAL, 3, '무료나눔', '짜잔', '0', DEFAULT, DEFAULT, '중고게시판3', DEFAULT);

INSERT INTO T_BOARD
VALUES('T' || SEQ_TBNO.NEXTVAL, 4, '뿌링클 깊티', '찔러봐주세요', '20000', DEFAULT, DEFAULT, '중고게시판4', DEFAULT);

INSERT INTO T_BOARD
VALUES('T' || SEQ_TBNO.NEXTVAL, 5, '벌레 잡아드립니다', '무슨 벌레든 ㅇㅋ 심야추가금 있습니다', '20000', DEFAULT, DEFAULT, '중고게시판5', DEFAULT);


-- 댓글
CREATE TABLE REPLY(
    REPLY_NO NUMBER CONSTRAINT RPLNO_PK PRIMARY KEY,
    BOARD_NO VARCHAR2(10) NOT NULL,
    REPLY_WRITER NUMBER NOT NULL,
    REPLY_CONTENT VARCHAR2(1000) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y'  CHECK (STATUS IN('Y', 'N')),
    FOREIGN KEY (REPLY_WRITER) REFERENCES MEMBER
);

COMMENT ON COLUMN REPLY.REPLY_NO IS '댓글번호';
COMMENT ON COLUMN REPLY.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN REPLY.REPLY_WRITER IS '작성자';
COMMENT ON COLUMN REPLY.REPLY_CONTENT IS '댓글내용';
COMMENT ON COLUMN REPLY.CREATE_DATE IS '작성일';
COMMENT ON COLUMN REPLY.STATUS IS '상태';

CREATE SEQUENCE SEQ_RPL NOCACHE;

INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'B1', 2, '댓글1', DEFAULT, DEFAULT);


INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'B1', 1, '댓글2', DEFAULT, DEFAULT);

INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'T1', 3, '댓글3', DEFAULT, DEFAULT);

INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'T2', 4, '댓글4', DEFAULT, DEFAULT);

/*
INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'B2', 2, '댓글3', DEFAULT, DEFAULT);

INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'B2', 3, '댓글4', DEFAULT, DEFAULT);

INSERT INTO REPLY
VALUES(SEQ_RPL.NEXTVAL, 'B2', 5, '댓글5', DEFAULT, DEFAULT);
*/

-- 좋아요
CREATE TABLE LIKES(
    BOARD_NO VARCHAR2(10),
    USER_NO NUMBER,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER,
    CONSTRAINT LIKES_PK PRIMARY KEY (BOARD_NO, USER_NO)
);

COMMENT ON COLUMN LIKES.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN LIKES.USER_NO IS '사용자번호';

INSERT INTO LIKES
VALUES('B1', 2);

INSERT INTO LIKES
VALUES('B1', 3);

INSERT INTO LIKES
VALUES('T1', 4);

INSERT INTO LIKES
VALUES('T1', 5);

INSERT INTO LIKES
VALUES('T3', 5);


-- 질문
CREATE TABLE QUESTION(
    Q_NO NUMBER CONSTRAINT QNO_PK PRIMARY KEY,
    Q_WRITER NUMBER NOT NULL,
    REF_NO VARCHAR2(10),
    Q_TITLE VARCHAR2(100) NOT NULL,
    Q_CONTENT VARCHAR2(4000) NOT NULL,
    Q_CATEGORY VARCHAR2(100),
    Q_DATE DATE DEFAULT SYSDATE,
    Q_STATUS VARCHAR2(1) DEFAULT 'N' CHECK (Q_STATUS IN('Y','N')),
    FOREIGN KEY (Q_WRITER) REFERENCES MEMBER
);

COMMENT ON COLUMN QUESTION.Q_NO IS '문의번호';
COMMENT ON COLUMN QUESTION.Q_WRITER IS '작성자';
COMMENT ON COLUMN QUESTION.REF_NO IS '참조번호';
COMMENT ON COLUMN QUESTION.Q_TITLE IS '제목';
COMMENT ON COLUMN QUESTION.Q_CONTENT IS '내용';
COMMENT ON COLUMN QUESTION.Q_CATEGORY IS '질문카테고리';
COMMENT ON COLUMN QUESTION.Q_DATE IS '작성일';
COMMENT ON COLUMN QUESTION.Q_STATUS IS '처리여부';

CREATE SEQUENCE SEQ_QNO NOCACHE;

INSERT INTO QUESTION
VALUES(SEQ_QNO.NEXTVAL, 2, NULL, '신고처리는 어떻게 이뤄지나요?', '궁금합니다', NULL, DEFAULT, DEFAULT);

INSERT INTO QUESTION
VALUES(SEQ_QNO.NEXTVAL, 3, 'P1', '원목 원산지가 어딘가요?', '궁금합니다', '상품문의', DEFAULT, 'Y');

INSERT INTO QUESTION
VALUES(SEQ_QNO.NEXTVAL, 4, 'P3', '색상이 잘못 왔어요', '블루로 주문했는데 블랙이왔어요', '배송문의', DEFAULT, DEFAULT);

INSERT INTO QUESTION
VALUES(SEQ_QNO.NEXTVAL, 5, 'P4', '어떤향인가요', '궁금', '배송문의', DEFAULT, DEFAULT);

INSERT INTO QUESTION
VALUES(SEQ_QNO.NEXTVAL, 3, 'P5', '왜이렇게 맛이 없나요', '실망이에요', '상품문의', DEFAULT, DEFAULT);

-- 답변
CREATE TABLE ANSWER(
    A_NO NUMBER CONSTRAINT ANO_PK PRIMARY KEY,
    Q_NO NUMBER NOT NULL,
    A_CONTENT VARCHAR2(4000) NOT NULL,
    A_DATE DATE DEFAULT SYSDATE,
    A_STATUS VARCHAR2(1) DEFAULT 'N' CHECK (A_STATUS IN('Y', 'N')),
    FOREIGN KEY (Q_NO) REFERENCES QUESTION
);

COMMENT ON COLUMN ANSWER.A_NO IS '답변번호';
COMMENT ON COLUMN ANSWER.Q_NO IS '문의번호';
COMMENT ON COLUMN ANSWER.A_CONTENT IS '답변내용';
COMMENT ON COLUMN ANSWER.A_DATE IS '작성일';
COMMENT ON COLUMN ANSWER.A_STATUS IS '작성상태';

CREATE SEQUENCE SEQ_ANO NOCACHE;

INSERT INTO ANSWER
VALUES(SEQ_ANO.NEXTVAL, 2, '글쎄요', DEFAULT, DEFAULT);

INSERT INTO ANSWER
VALUES(SEQ_ANO.NEXTVAL, 3, '몰루', DEFAULT, DEFAULT);

INSERT INTO ANSWER
VALUES(SEQ_ANO.NEXTVAL, 1, '잘', DEFAULT, DEFAULT);

-- 포인트
CREATE TABLE POINT(
    POINT_NO NUMBER CONSTRAINT POINT_PK PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    POINT_DATE DATE DEFAULT SYSDATE,
    REASON VARCHAR2(20) NOT NULL,
    POINT VARCHAR2(10) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER
);

COMMENT ON COLUMN POINT.POINT_NO IS '포인트번호';
COMMENT ON COLUMN POINT.USER_NO IS '사용자번호';
COMMENT ON COLUMN POINT.POINT_DATE IS '변동일자';
COMMENT ON COLUMN POINT.REASON IS '사유';
COMMENT ON COLUMN POINT.POINT IS '증감';

CREATE SEQUENCE SEQ_POINT NOCACHE;

INSERT INTO POINT
VALUES(SEQ_POINT.NEXTVAL, 2, DEFAULT, '추천', '+1000');

INSERT INTO POINT
VALUES(SEQ_POINT.NEXTVAL, 3, DEFAULT, '적립', '+500');

INSERT INTO POINT
VALUES(SEQ_POINT.NEXTVAL, 2, DEFAULT, '사용', '-1000');

INSERT INTO POINT
VALUES(SEQ_POINT.NEXTVAL, 4, DEFAULT, '추천', '+1000');

INSERT INTO POINT
VALUES(SEQ_POINT.NEXTVAL, 5, DEFAULT, '사용', '-500');


-- 신고
CREATE TABLE REPORT(
    REPORT_NO NUMBER CONSTRAINT RPT_PK PRIMARY KEY,
    REPORTER NUMBER NOT NULL,
    SUSPECT NUMBER NOT NULL,
    GUILTY VARCHAR2(50) NOT NULL,
    REPORT_CONTENT VARCHAR2(1000),
    REPORT_DATE DATE DEFAULT SYSDATE,
    REF_NO VARCHAR2(10) NOT NULL,
    RESULT VARCHAR2(10) DEFAULT 'N',
    FOREIGN KEY (REPORTER) REFERENCES MEMBER,
    FOREIGN KEY (SUSPECT) REFERENCES MEMBER
);

COMMENT ON COLUMN REPORT.REPORT_NO IS '신고번호';
COMMENT ON COLUMN REPORT.REPORTER IS '신고자';
COMMENT ON COLUMN REPORT.SUSPECT IS '피신고자';
COMMENT ON COLUMN REPORT.GUILTY IS '신고종류';
COMMENT ON COLUMN REPORT.REPORT_CONTENT IS '신고내용';
COMMENT ON COLUMN REPORT.REPORT_DATE IS '신고일자';
COMMENT ON COLUMN REPORT.RESULT IS '처리여부';

CREATE SEQUENCE SEQ_RPT NOCACHE;

INSERT INTO REPORT
VALUES(SEQ_RPT.NEXTVAL, 2, 1, '신고종류', '그냥', DEFAULT, 'B1', DEFAULT); 

INSERT INTO REPORT
VALUES(SEQ_RPT.NEXTVAL, 4, 2, '신고종류', '내용', DEFAULT, 'T1', DEFAULT); 

/*
INSERT INTO REPORT
VALUES(SEQ_RPT.NEXTVAL, 3, 1, '신고종류', '그냥2', DEFAULT, 'B4', DEFAULT); 

INSERT INTO REPORT
VALUES(SEQ_RPT.NEXTVAL, 4, 1, '신고종류', '그냥3', DEFAULT, 'B2', DEFAULT); 

INSERT INTO REPORT
VALUES(SEQ_RPT.NEXTVAL, 5, 1, '신고종류', '그냥4', DEFAULT, 'B7', DEFAULT); 
*/


-- 알림
CREATE TABLE ALERT(
    ALERT_NO NUMBER CONSTRAINT ALERT_PK PRIMARY KEY,
    USER_NO NUMBER NOT NULL,
    ALERT_CONTENT VARCHAR2(1000) NOT NULL,
    ALERT_TIME DATE DEFAULT SYSDATE,
    ALERT_STATUS VARCHAR2(1) DEFAULT 'N',
    REF_NO VARCHAR2(10) NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER
);

COMMENT ON COLUMN ALERT.ALERT_NO IS '알림번호';
COMMENT ON COLUMN ALERT.USER_NO IS '사용자번호';
COMMENT ON COLUMN ALERT.ALERT_CONTENT IS '알림내용';
COMMENT ON COLUMN ALERT.ALERT_TIME IS '알림시간';
COMMENT ON COLUMN ALERT.ALERT_STATUS IS '알림상태';
COMMENT ON COLUMN ALERT.REF_NO IS '참조번호';


CREATE SEQUENCE SEQ_ALERT NOCACHE;

INSERT INTO ALERT
VALUES(SEQ_ALERT.NEXTVAL, 1, '[참조게시글제목]에 댓글이 달렸습니다', DEFAULT, DEFAULT, 'B1');

/*
INSERT INTO ALERT
VALUES(SEQ_ALERT.NEXTVAL, 2, '[참조게시글제목]에 댓글이 달렸습니다', DEFAULT, DEFAULT, 'B2');

INSERT INTO ALERT
VALUES(SEQ_ALERT.NEXTVAL, 3, '[참조게시글제목]에 댓글이 달렸습니다', DEFAULT, DEFAULT, 'B3');

INSERT INTO ALERT
VALUES(SEQ_ALERT.NEXTVAL, 3, '[참조게시글제목]에 댓글이 달렸습니다', DEFAULT, DEFAULT, 'B4');

INSERT INTO ALERT
VALUES(SEQ_ALERT.NEXTVAL, 1, '게시글참조번호에 댓글이 달렸습니다', DEFAULT, DEFAULT, 'B1');
*/

-- 파일첨부
CREATE TABLE ATTACHMENT(
    FILE_NO NUMBER CONSTRAINT ATT_PK PRIMARY KEY,
    REF_NO VARCHAR2(10) NOT NULL,
    ORIGIN_NAME VARCHAR2(100) NOT NULL,
    CHANGE_NAME VARCHAR2(10) NOT NULL,
    FILE_PATH VARCHAR2(100) NOT NULL,
    UPLOAD_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y'
);

COMMENT ON COLUMN ATTACHMENT.FILE_NO IS '파일번호';
COMMENT ON COLUMN ATTACHMENT.REF_NO IS '참조번호';
COMMENT ON COLUMN ATTACHMENT.ORIGIN_NAME IS '원본명';
COMMENT ON COLUMN ATTACHMENT.CHANGE_NAME IS '저장경로';
COMMENT ON COLUMN ATTACHMENT.FILE_PATH IS '저장경로';
COMMENT ON COLUMN ATTACHMENT.UPLOAD_DATE IS '업로드일';
COMMENT ON COLUMN ATTACHMENT.STATUS IS '상태';

CREATE SEQUENCE SEQ_FNO;

-- 광고
CREATE TABLE ADVERTISEMENT(
    AD_NO NUMBER CONSTRAINT ADNO_PK PRIMARY KEY,
    AD_TYPE NUMBER NOT NULL,
    AD_START DATE NOT NULL,
    AD_END DATE NOT NULL,
    AD_STATUS VARCHAR2(1) DEFAULT 'Y'
);

COMMENT ON COLUMN ADVERTISEMENT.AD_NO IS '광고번호';
COMMENT ON COLUMN ADVERTISEMENT.AD_TYPE IS '배너종류';
COMMENT ON COLUMN ADVERTISEMENT.AD_START IS '광고게시일';
COMMENT ON COLUMN ADVERTISEMENT.AD_END IS '광고종료일';
COMMENT ON COLUMN ADVERTISEMENT.AD_STATUS IS '광고상태';

CREATE SEQUENCE SEQ_ADNO NOCACHE;

-- 검색
CREATE TABLE SEARCH(
    SEARCH_NO NUMBER CONSTRAINT SEARCH_PK PRIMARY KEY,
    SEARCH_NAME VARCHAR2(1000) NOT NULL,
    SEARCH_DATE DATE DEFAULT SYSDATE
);

COMMENT ON COLUMN SEARCH.SEARCH_NO IS '검색번호';
COMMENT ON COLUMN SEARCH.SEARCH_NAME IS '검색어';
COMMENT ON COLUMN SEARCH.SEARCH_DATE IS '검색일';

CREATE SEQUENCE SEQ_SEARCH NOCACHE;



-- 비회원 장바구니
CREATE TABLE N_MEMBER_CART(
    NMEMBER_NO VARCHAR2(4000),
    PRODUCT_NO VARCHAR2(10),
    FOREIGN KEY (PRODUCT_NO) REFERENCES PRODUCT,
    CONSTRAINT NMEM_CART_PK PRIMARY KEY(NMEMBER_NO, PRODUCT_NO)
);

COMMENT ON COLUMN N_MEMBER_CART.NMEMBER_NO IS '비회원 식별번호';
COMMENT ON COLUMN N_MEMBER_CART.PRODUCT_NO IS '상품번호';




 </code>
</pre>
</details>
