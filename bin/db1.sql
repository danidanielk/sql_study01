

--용어정리!
-- 테이블(=릴레이션)	: 데이터베이스에서 정보를 구분하여 저장하는 기본단위 행과 열로 이루어진 데이터 집합
-- 행			: 테이블을 구성하는 데이터 중 가로부분이다. 튜플 또는 레코드라고도 부름
-- 열			: 테이블을 구성하는 데이터 중 세로부분이다. 필드 또는 속성 이라고도 부른다.
-- 스키마			: 데이터 베이스에서 기본 구조를 정의해주는 역할이다. 쉽게말하면 제목부분이다.
-- 인스턴스		: 테이블에서 실제로 저장된 데이터의 값.
-- 도메인			: 속성이 가질수 있는 값의 집합. 특정 속성에서 사용할 데이터의 범위를 사용자가 정의.
--				  ex) p_age number(3) 이면 정수를 3자리까지만 받겠다는 의미. 
--				      4자리를 넘어가면 값이 받아지지 않음
-- 컬런			: 중복해서 만들면 테이블 생성 오류난다.
-- 특징1			: 한 속서의 값은 모두 같은 도메인 값을 가진다. 
--				  ex) p_age :3자리 정수로 된값을가진다.
-- 특징2			: 속성의 순서는 상관없다. 속성의 순서가 달라도 테이블 스키마는 같다.




--SQL 명령문 종류
-- 데이터 정의어	: DDL ( Data Definition Language)
--				: 테이블이나 관계의 구조를 생성하는데 생성하며 Create ,alter, drop 등이 있다.

-- 데이터 조작어	: DML ( Data Manipulation Language) 제일많이쓰임
--				: 테이블 데이터를 검색 , 삽입, 수정, 삭제 하는데 사용하며 Select, insert, update, delete 등이있다.
--				: Select, insert, update, delete 를 줄여서 (CRUD {크리에이트 리드 업데이트 딜리트} 라고한다.)
--				: 그중 Select 는 특별히 질의어(Query) 라고한다.

-- 데이터 제어어	: DCL ( Data Control Language) 제어어는 DBA 의 업무라서 우리가 쓸 일은 거의없다..
--				:데이터 베이스에 접근하고 객체들을 사용하도록 권한을 주고 회수하는데 사용하며,
--				: GRANT(권한부여), REVOKE(권한회수) 등이있다.

-- 트랜잭션 처리어	: TCL ( Transaction Control Language)
--				: DML 에 의해 조작된 결과를 작업단위(트랜잭션) 별로 제어하는데 사용하며,
--				: Comit, Rollback, Savepoint 등이 있다.



-- 한줄이지만 가독성으로 나눠놓은 상태
-- 여러줄을 실행하고 싶다면 : 그 줄들을 다 드래그 해서 alt+x
create table person(
p_name varchar2(10 char),
p_age number(3),
p_gender varchar2(2 char)
);


-- 한줄실행 : 커서를 그줄에 놓고 alt + s 
insert into person values('홍길동', 10, '남');
insert into person values('홍길동', 10, '남');
insert into person values('김길동', 20, '여');
insert into person values('최길동', 30, '남');
insert into person values('최길동', 1000, '남'); --오류

--출력
select * from PERSON
where P_gender ='남'
order by P_age asc;


-- 홍길동은 같은 임물이라 판단. 중복값을 없애고 한번만 출력하고 싶음
select distinct * from PERSON;  --중복값 없앨때사용
select * from tab; -- 테이블 확인하기
desc person; -- 테이블 구조할때 .. 이클립스에서 안먹힘
drop table person cascade constraint purge;  --테이블 지우기