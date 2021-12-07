/*
# 데이터베이스 모델링


1. exerd 모델링 툴 설치
	http://exerd.com/update
2. ERD
	Entity Relation Diagram
	Entity(객체) : 설계에서 물리적 모델링에서 테이블로 만들어질 객체를 말한다.
	Relation : 엔티티와 엔티티의 연관관계를 설정하는 것을 말한다
	
*/
/*
데이터베이스 생명주기
1. 요구사항 수집 및 분석
	사용자들의 요구사항을 듣고 분석하여 데이터베이스 구축의 범위를 정하는 단계
	
2. 설계
	분석된 요구사항을 기초로 주요 개념과 업무 프로세스 등을 식별하고(개념적 설계, 사용하는 DBMS의 종류의 맞게
	변환(논리적 설계)한후 데이터베이스 스키마를 도출(물리적설계)함
	
3. 구현
	설계 단계에서 생성한 스키마를 실제 DBMS에 적용하여 테이블 및 관련 객체(뷰,인덱스 등)를 만듦
	
4. 운영
	구현된 데이터베이스를 기반으로 소프트웨어를 구축하여 서비스를 제공함
	
5. 감시 및 개선
	데이터베이스 운영에 따른 시스템의 문제를 관찰하고 데이터베이스 자체의 문제점을 파악하여 개선함
	

데이터모델링 과정
1. 요구사항 수집 및 분석
	현실 세계의 대상및 사용자의 요구 등을 정리 및 분석
		- 사용자 식별
		- 데이터베이스 용도 식별
		- 사용자 요구사항 수집 및 명세
2. 개념적 모델링(설계)
	중요 개념을 구분
		- 핵심 엔티티 도출
		- ERD작성

3. 논리적 모델링(설계)
	각 개념을 구체화
		- ERD-RDB 모델 사상
		- 상세 속성 정의
		- 정규화 등
4. 물리적 모델링(설계)
	데이터베이스 생성 계획에 따라 개체, 인덱스 등을 생성
		- DB 개체 정의
		- 테이블 및 인덱스 등 설계

5. 데이터베이스구현


요구사항 수집 및 분석
- 요구사항 수집 방법
	1. 실제 문서를 수집하고 분석함.
	2. 담당자와 인터뷰나 설문조사를 통해 요구사항을 직접 수렴함
	3. 비슷한 업무를 처리하는 기존의 데이터베이스를 분석함.
	4. 각 업무와 연관된 모든 부분을 살펴봄.
	
개념적 모델링
- 요구사항을 수집하고 분석한 결과르 토대로 업무의 핵심적인 개념을 구분하고 전체적인 뼈대를 만드는 과정
- 개체(entity)를 추출하고 각 개체들 간의 관계를 정의하여 ER 다이어그램(ERD)을 만드는과정까지를 말함.

논리적 모델링
- 개념적 모델링에서 만든 ER 다이어그램을 사용하려는 DBMS에 맞게 사상(매피으 mapping)하여
	실제 데이터베이스로 구현하기 위한 모델을 만드는과정
	
논리적 모델링 과정
1. 개념적 모델링에서 추출하지 않았던 상세 속성들을 모두 추출함
2. 정규화 수행
3. 데이터 표준화 수행

물리적 모델링
- 작성하는 논리적 모델을 실제 컴퓨터의 저장 장치에 저장하기 위한 물리적 구조를 정의하고 구현하는 과정
- DBMS의 특성에 맞게 저장 구조를 정의해야 데이터베이스가 최적의 성능을 낼수 있음

물리적 모델링 시 트랜잭션, 저장 공간 설계 측면에서 고려할 사항
1. 응답시간을 최소화해야 한다.
2. 얼마나 많은 트랜잭션을 동시에 발생시킬 수 있는지 검토해야 한다.
3. 데이터가 저장될 공간을 효율적으로 배치해야 한다.

ER 모델
1. 세상의 사물을 개체와 개체간의 관계로 표현함
2. 개체
	- 독립적인 의미를 지니고 있는 유무형의 사람 또는 사물, 개체의 특성을 나타내는 속성에 의새 식별
	- 개체끼리 서로 관계를 가짐
ER 모델
1. ER 다이어그램 : ER모델은 개체와 개체간의 관계를 표준화된 그림으로 나타냄.

개체(entity)
1. 사람, 사물, 장소, 개념, 사건과 같이 유무형의 정보를 가지고 있는 독립적인 실체.
2. 데이터베이스에서 주로 다루는 개체 - (낱개로 구성된것, 낱개가 각각 데이터값을 가지는 것, 데이터 값이 변하는것)
3. 비슷한 속성의 개체 타입(entity type)을 구성하며, 개체 집합(entity set)으로 묶임

개체 타입의 ER다이터그램 표현
1. ER다이어그램상에서 개체 타입은 직사각형으로 나타냄
2. 개체타입 유형
	- 강한 개체 : 다른 개체의 도움없이 독자적으로 존재할 수 있는 개체
	- 약한 개체 : 독자적으로는 존재할 수 없고 반드시 상위 개체타입을 가짐.
	
속성
1. 속성(attribute) : 개체가 가진 성질
2. 속성의 ER 다이어그램 표현
- 속성은 기본적으로 타원으로 표현, 개체 타입을 나타내는 직사각형과 실선으로 연결됨.
- 속성의 이름은 타원의 중앙에 표기함.
속성이 개체를 유일하게 식별할 수 있는 키일 경우 속성 이름에 밑줄을 그음

관계와 관계 타입
1. 관계(relationship)
- 개체 사이의 연관성을 나타내는 개념
2. 관계 타입(relationship type)
- 개체 타입과 개체 타입간의 연결 가능한 관계를 정의한 것
- 관계 집합(relationship set)은 관계로 연결된 집합을 의미함

차수에 따른 관계 타입의 유형
1. 일대일 관계
- 좌측 개체 타입에 포홤된 개체가 우측 개체 타입에 포함된 개체와 일대일로 대응하는관계
 */
CREATE TABLE Book(
	bookid NUMBER Primary KEY,
	bookname varchar2(40),
	publisher varchar2(40),
	price number
);
CREATE TABLE Customer(
	custid NUMBER PRIMARY KEY,
	name varchar2(40),
	address varchar2(40),
	phone varchar2(30)
);
CREATE TABLE orders (
	ORDERid NUMBER PRIMARY KEY,
	custid NUMBER REFERENCES customer(custid),
	bookid NUMBER REFERENCES book(bookid),
	ORDERdatte DATE,
	saleprice number
);

