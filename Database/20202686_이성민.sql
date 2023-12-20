create database starbucks5;

use starbucks5;

create table category (
	id int not null,
	name varchar(45),
	primary key(id)
);

create table theme(
	id int not null,
	name varchar(45),
	primary key(id)
);

create table size(
	id int not null,
	name varchar(45),
	size_ml int,
	primary key(id)
);

create table allergy(
	id int not null,
	name varchar(45),
	primary key(id)
);

create table drink(
	id int not null,
	category_id int,
	theme_id int,
	size_id int,
	korean_name varchar(45),
	english_name varchar(45),
	comment text,
	kcal decimal(10,2),
	나트륨 decimal(10,2),
	포화지방 decimal(10,2),
	당류 decimal(10,2),
	단백질 decimal(10,2),
	카페인 decimal(10,2),
	primary key(id),
	foreign key (category_id) references category(id),
	foreign key (theme_id) references theme(id),
	foreign key (size_id) references size(id)
);

create table allergy_drink(
	id int not null,
	allergy_id int,
	drink_id int,
	primary key (id),
	foreign key (allergy_id) references allergy(id),
	foreign key (drink_id) references drink(id)
);

create table Users(
	id int not null,
	user_name varchar(45),
	email varchar(100),
	user_password varchar(20),
	age int ,
	phone varchar(50) ,
	current_address varchar(100),
	grade varchar(45),
	primary key(id)
);

create table Users_like(
	id int not null,
	user_id int ,
	drink_id int,
	primary key(id),
	foreign key(user_id) references Users(id),
	foreign key(drink_id) references drink(id),
);

insert into category values (1 , '콜드브루커피');
insert into category values (2 , '브루드커피');
insert into category values (3 , '에스프레소');
insert into category values (4 , '프라푸치노');
insert into category values (5 , '블렌디드');
insert into category values (6 , '스타벅스리프레셔');
insert into category values (7 , '스타벅스피지오');
insert into category values (8 , '티');
insert into category values (9 , '기타제조음료');
insert into category values (10 , '스타벅스주스');

select *
from category;

insert into theme values(1,'peak holiday vibes');
insert into theme values(2,'없음');

select *
from theme;

insert into allergy values (100, '우유');
insert into allergy values (101, '대두/우유');
insert into allergy values (102, '대두/우우/밀');
insert into allergy values (103, '땅콩/대두/우유/알류/밀/오징어');
insert into allergy values (104, '땅콩/우유');
insert into allergy values (105, '대두');
insert into allergy values (106, '우유 / 복숭아');
insert into allergy values (107, '복숭아');
insert into allergy values (108 , '없음');

select *
from allergy;

insert into size values (300 , 'Tall' , 355);
insert into size values (301 , 'Bottle' , 500);
insert into size values (302 , 'Trenta' , 887);
insert into size values (303 , 'Grande', 473);
insert into size values (304 , '전용보틀' , 500);
insert into size values (305 , '정보없음' , null);
insert into size values (306 , '병음료' , 190);
insert into size values (307, 'Solo', 22);

select *
from size;


insert into drink values (1000, 1, 2 , 300 , '나이트로 바닐라 크림' , 'Nitro Vanilla Cream' , '부드러운 목넘김의 나이트로 커피와 바닐라 크림의 매력을 한번에 느껴보세요!', 80,40,2,10,1,232); 
insert into drink values (1001, 1, 2 , 300 , '나이트로 콜드 브루' , 'Nitro Cold Brew' , '나이트로 커피 정통의 캐스케이딩과 부드러운 콜드 크레마! 부드러운 목 넘김과 완벽한 밸런스에 커피 본연의 단맛을 경험할 수 있습니다.', 5,5,0,0,0,245);
insert into drink values (1002, 1, 2 , 300 , '돌체 콜드 브루' , 'Dolce Cold Brew' , '무더운 여름철,동남아 휴가지에서 즐기는 커피를 떠오르게 하는스타벅스 음료의 베스트 x 베스트 조합인돌체 콜드 브루를 만나보세요!', 265,130,9,29,8,155);
insert into drink values (1003, 1, 2 , 300 , '리저브 나이트로' , 'Reserve Nitrom' , '나이트로 커피 정통의 캐스케이딩과 부드러운 콜드 크레마!부드러운 목 넘김과 완벽한 밸런스에 커피 본연의 단맛을 경험할 수 있습니다.', 5,0,0,0,0,190); 
insert into drink values (1004, 1, 2 , 300 , '리저브 콜드 브루' , 'Reserve Cold Brew' , '리저브 커피 마스터의 정성으로 차갑게 추출한 깊고 부드러운 풍미의 커피', 5,0,0,0,0,190); 
insert into drink values (1005, 1, 2 , 300 , '민트 콜드 브루' , 'Mint Cold Brew' , '상쾌한 민트향 시럽과 잘게 갈린 얼음이어우러져 시원함이 강렬하게 느껴지는 리저브만의콜드 브루 음료', 100,0,0,23,0,415);
insert into drink values (1006, 1, 2 , 300 , '바닐라 크림 콜드 브루' , 'Vanilla Cream Cold Brew' , '콜드 브루에 더해진 바닐라 크림으로 깔끔하면서 달콤한 콜드 브루를 새롭게 즐길 수 있는 음료입니다.', 125,58,6,11,3,155);
insert into drink values (1007, 1, 2 , 301 , '시그니처 더 블랙 콜드 브루' , 'Signature The Black Cold Brew' , '콜드 브루 전용 원두를 차가운 물로 매장에서 직접추출하여 부드럽고 진한 풍미의 콜드브루를언제 어디서나 편하게 즐겨보세요 (전용 보틀 /500ml)', 25,50,0,0,0,680);
insert into drink values (1008, 1, 2 , 305 , '여수 윤슬 헤이즐넛 콜드브루' , 'Yeosu Shining Hazelnut Cold Brew' , '햇빛이나 달빛에 비치어 반짝이는 잔물결이라는"윤슬"을 형상화한 헤이즐넛 콜드브루', 245,85,9,27,5,53); 
insert into drink values (1009, 1, 2 , 300 , '오트 콜드 브루' , 'Oat Cold Brew' , '콜드 브루의 풍미와 깔끔한 오트음료(식물성 대체유)가 어우러진 달콤 고소한 라떼.식물성 대체유를 사용해 모든 고객이 부담없이 즐길 수 있는 콜드 브루 음료', 120,95,0.3,14,1,65);
insert into drink values (1010, 1, 2 , 303 , '제주 비자림 콜드 브루' , 'Jeju Forest Cold Brew' , '제주 천년의 숲 비자림을 연상시키는 음료로 제주 유기농 말차와 콜드 브루가 조화로운 제주 특화 콜드 브루 음료', 360,140,8,39,11,305); 
insert into drink values (1011, 1, 2 , 300 , '콜드 브루' , 'Cold Brew' , '스타벅스 바리스타의 정성으로 탄생한 콜드 브루!', 5,11,0,0,0,155); 
insert into drink values (1012, 1, 2 , 300 , '콜드 브루 몰트' , 'Cold Brew Malt' , '[리저브 전용음료] 리저브 콜드 브루, 바닐라 아이스크림, 몰트가 블렌딩된 리저브만의 쉐이크', 505,150,20,41,7,190); 
insert into drink values (1013, 1, 2 , 300 , '콜드 브루 플로트' , 'Cold Brew Float' , '[리저브 전용음료] 리저브 콜드 브루 위에 녹아 내리는 한 스쿱의 바닐라 아이스크림', 255,70,10,18,3,190); 

insert into drink values (1014, 2, 2, 300, '아이스 커피' , 'Iced Coffee' , '아이스 커피로 적합한 프리미엄 원두를 이용하여 깔끔하고 상큼한 맛을 느끼실 수 있습니다.' , 5,10,0,0,0,140);
insert into drink values (1015, 2, 2, 300, '오늘의 커피' , 'Brewed Coffee' , '시즌에 어울리는 원두 종류를 선정하여 신선하게 브루드(Brewed)되어 제공되는 드립커피로, 원두 커피의 풍부한 맛과 향을 따뜻하게 즐기실 수 있습니다.' , 5,15,0,0,0,260);

insert into drink values (1016, 3,1, 300 , '더블 에스프레소 크림 라떼', 'Double Espresso Cream Latte' , '달콤한 바닐라와 진한 에스프레소 풍미가 돋보이는 음료', 270,140,10,26,9,76);
insert into drink values (1017, 3,1, 300 , '아이스 더블 에스프레소 크림 라떼', 'Iced Double Espresso Cream Latte' , '달콤한 바닐라와 진한 에스프레소 풍미가 돋보이는 음료', 220,95,8,21,6,76);
insert into drink values (1018, 3,1, 300 , '아이스 토피 넛 라떼', 'Iced Toffee Nut Latte' , '스타벅스의 겨울 시그니처 음료버터 향이 은은하게 느껴지는 토피와 고소한 견과류의 풍미,진한 에스프레소가 어우러진 크리스마스 시즌 음료', 240,180,8,27,5,75);
insert into drink values (1019, 3,1, 300 , '토피 넛 라떼', 'Toffee Nut Latte' , '스타벅스의 겨울 시그니처 음료버터 향이 은은하게 느껴지는 토피와 고소한 견과류의 풍미,진한 에스프레소가 어우러진 크리스마스 시즌 음료', 325,250,11,34,10,75);
insert into drink values (1020, 3, 2, 307, '에스프레소 콘 파나' , 'Espresso Con Panna' , '신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료' , 30,0,1.5,1,0,75);
insert into drink values (1021, 3, 2, 307, '에스프레소 마키아또' , 'Espresso Macchiato' , '신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로써, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료' , 10,0,0,0,1,75);
insert into drink values (1022, 3, 2, 300, '아이스 카페 아메리카노' , 'Iced Caffe Americano' , '진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피' , 10,5,0,0,1,150);
insert into drink values (1023, 3, 2, 300, '카페 아메리카노' , 'Caffe Americano' , '진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피' , 10,5,0,0,1,150);
insert into drink values (1024, 3, 2, 300, '아이스 카라멜 마키아또' , 'Iced Caramel Macchiato' , '향긋한 바닐라 시럽과 시원한 우유와 얼음을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료' , 190, 110, 4.6, 22, 6,75);
insert into drink values (1025, 3, 2, 300, '카라멜 마키아또' , 'Caramel Macchiato' , '향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료' , 200,130,5,22,8,75);
insert into drink values (1026, 3, 2, 300, '아이스 카푸치노' , 'Iced Cappuccino' , '풍부하고 진한 에스프레소에 신선한 우유와 우유 거품이 얼음과 함께 들어간 시원하고 부드러운 커피 음료' , 110,90,3.5,9,6,75);
insert into drink values (1027, 3, 2, 300, '카푸치노' , 'ICappuccino' , '풍부하고 진한 에스프레소에 따뜻한 우유와 벨벳 같은 우유 거품이 1:1 비율로 어우러져 마무리된 커피 음료' , 110,70,3,8,6,75);
insert into drink values (1028, 3, 2, 303, '더 그린 쑥 크림 라떼' , 'The Green Mugwort Cream Latte' , '은은한 쑥과 곡물에 블론드 샷이 어우러져 고소하고 부드러운 라떼달콤한 쑥 폼이 올라가 부드럽게 즐기는 아인슈페너 음료 *더북한산,경동1960,대구종로고택 매장에서만 판매하는 음료입니다.' , 365,570,11,33,11,170);
insert into drink values (1029, 3, 2, 300, '아이스 라벤더 카페 브레베' , 'Iced Lavender Cafe Breve' , '진한 리저브 에스프레소 샷과 은은한 라벤더향이 고급스럽게 어우러진 부드럽고 세련된 풍미의 라벤더 카페 브레베' , 335,110,18,27,6,105);
insert into drink values (1030, 3, 2, 300, '아이스 바닐라 빈 라떼' , 'Iced Vanilla Bean Latte' , '리저브만을 위한 바닐라 빈 시럽이 부드럽게 어우러진 카페 라떼' , 155,75,2.9,20,5,210);
insert into drink values (1031, 3, 2, 300, '아이스 스타벅스 1호점 바닐라 빈 라떼' , 'Iced Vanilla 1st Store Bean Latte' , '한국 스타벅스 1호점인 이대R점을 상징하는 리저브 바닐라 빈 라떼.' , 159,90,2.9,21,6,210);
insert into drink values (1032, 3, 2, 300, '아이스 스타벅스 1호점 카페 라떼' , 'Iced Starbucks 1st Store Cafe Latte' , '한국 스타벅스 1호점인 이대R점을 상징하는 리저브 카페 라떼.' , 117,100,3.2,9,6,210);

insert into drink values (1033 , 4, 2, 300 , '에스프레소 프라푸치노' , 'Espresso Frappuccino', '에스프레소 샷의 강렬함과 약간의 단맛이 어우러진 프라푸치노', 145 , 115 ,1.1 , 29 , 2 , 120);
insert into drink values (1034 , 4, 2, 300 , '자바칩 프라푸치노' , 'Java Chip Frappuccino', '커피, 모카 소스, 진한 초콜릿 칩이 입안 가득 느껴지는 스타벅스에서만 맛볼 수 있는 프라푸치노', 340 , 180 ,9 , 42 , 6 , 100);
insert into drink values (1035 , 4, 2, 300 , '카라멜 프라푸치노' , 'Caramel Frappuccino', '카라멜과 커피가 어우러진 프라푸치노', 300 , 190 , 7 , 39 , 4 , 85);
insert into drink values (1036 , 4, 2, 300 , '화이트 초콜릿 모카 프라푸치노' , 'White Chocolate Mocha Frappuccino', '화이트 초콜릿, 커피와 우유가 조화로운 프라푸치노', 265 , 160 , 6 , 43 , 4 , 85);
insert into drink values (1037 , 4, 2, 303 , '제주 까망 크림 프라푸치노' , 'Jeju Black Sesame Cream Frappuccino', '[제주지역 한정음료] 제주 까망 라떼의 프라푸치노 버전으로 쫄깃한 흑임자 떡과 블랙 소보로 토핑으로 컵빙수처럼 먹는 음료.', 600 , 330 , 7 , 79 , 9 , 0);
insert into drink values (1038 , 4, 2, 303 , '제주 쑥떡 크림 프라푸치노' , 'Jeju Mugwort Cream Frappuccino', '[제주지역 한정음료] 제주 쑥쑥 라떼의 시원한 버전으로쫄깃쫄깃한 흑임자 떡으로 씹는 재미를 즐길 수 있는 음료.', 460 , 250 , 10 , 57 , 8 , 0);
insert into drink values (1039 , 4, 2, 300 , '제주 유기농 말차로 만든 크림 프라푸치노' , ' Malcha Cream Frappuccino', '깊고 진한 말차 본연의 맛과 향을 시원하고 부드럽게 즐길 수 있는 프라푸치노', 230 , 150 , 7 , 28 , 5 , 60);
insert into drink values (1040 , 4, 2, 300 , '초콜릿 크림 칩 프라푸치노' , 'Chocolate Cream Chip Frappuccino', '모카 소스와 진한 초콜릿 칩, 초콜릿 드리즐이 올라간 달콤한 크림 프라푸치노', 300 , 160 , 7 , 40 , 6 , 10);

insert into drink values (1041 , 5, 2, 300 , '망고 패션 티 블렌디드' , 'Mango Passion Tea Blended', '망고 패션 프루트 주스와 패션 탱고 티가 상큼하게 어우러진 과일 블렌디드', 150 , 105 , 0,  29 , 2 , 0);
insert into drink values (1042 , 5, 2, 300 , '북한산 레몬 얼 그레이 블렌디드' , 'Bukhansan Lemon Earl Grey Blended', '꼬냑 향을 가미한 상큼한 레모네이드와 은은한 얼 그레이 티가 어우러진 블렌디드 음료', 110 , 10 , 0.1,  25 , 0 , 8);
insert into drink values (1043 , 5, 2, 305 , '스타벅스 클래식 밀크티 블렌디드' , 'Starbucks Classic Milk Tea Blended', '블랙티의 풍미와 향이 더욱 풍요롭게 느껴질 수 있는 밀크티 블렌디드', 315 , 55 , 13,  37 , 3 , 60);
insert into drink values (1044 , 5, 2, 303 , '여수 바다 유자 블렌디드' , 'Yeosu Sea Yuja Blended', '맑고 깨끗한 여수 경도의 낮 바다 풍경을 형상화한 음료로 상큼하게 즐길 수 있는 유자 블렌디드 음료 (유자:국내산)', 235 , 10 , 0,  57 , 0 , 0);
insert into drink values (1045 , 5, 2, 303 , '더 그린 쑥 블렌디드' , 'The Green Mugwort Blended', '은은한 쑥과 곡물에 말차샷이 어우러져 고소하고 달콤하게 즐기는 블렌디드', 370 , 610 , 6,  40 , 13 , 157);
insert into drink values (1046 , 5, 2, 300 , '딸기 딜라이트 요거트 블렌디드' , 'Strawberry Delight Yogurt Blended', '유산균이 살아있는 리얼 요거트와 풍성한 딸기 과육이더욱 상큼하게 어우러진 과일 요거트 블렌디드', 370 , 110 , 4.3,  57 , 9 , 0);

insert into drink values (1047 , 6, 2, 302 , '딸기 아사이 레모네이드 스타벅스 리프레셔' , 'Strawberry Acai  Starbucks Refreshers', '딸기, 아사이베리 주스와 레모네이드가 달콤 상큼하게 조화된 맛에 가볍게 에너지 부스팅을 할 수 있는 리프레셔 음료.', 265 , 0 , 0,  62 , 1 , 73);
insert into drink values (1048 , 6, 2, 300 , '망고 용과 레모네이드 스타벅스 리프레셔' , 'Mango Dragonfruit Starbucks Refreshers', '망고 용과와 레모네이드가 달콤 상큼하게 조화된 맛에가볍게 에너지 부스팅을 할 수 있는 음료', 55 , 35 , 0,  23 , 0 , 25);
insert into drink values (1049 , 6, 2, 300 , '퍼플 드링크 위드 망고 용과 스타벅스 리프레셔' , 'Purple Drink Dragonfruit Starbucks Refreshers', '망고 용과와 코코넛 밀크가 달콤하고 부드럽게 조화된 맛에 가볍게 에너지 부스팅을 할 수 있는 음료', 90 , 70 , 0,  16 , 0 , 25);

insert into drink values (1050 , 7 , 2 , 305 , '레드 애플 피지오' ,  'Red Apple Fizzio' , '달콤상큼한 사과맛으로 가볍게 즐길 수 있는 애플 피지오' , 110 , 10 , 0 , 26 , 0 , 0);
insert into drink values (1051 , 7 , 2 , 300 , '아이스크림 레드 애플 피지오' ,  'Ice Cream Red Apple Fizzio' , '리저브 전용 아이스크림과 함께 달콤 상큼한 사과맛으로 부드럽게 먹을 수 있는 애플 피지오' , 240 , 45 , 5 , 36 , 2 , 0);
insert into drink values (1052 , 7 , 2 , 303 , '여수 바다 자몽 피지오' ,  'Yeosu Sea Grapefruit Fizzio' , '여수의 풍경을 바라보며 즐길 수 있는 트로피컬 맛의 음료' , 250 , 105 , 0 , 45 , 1 , 0);
insert into drink values (1053 , 7 , 2 , 300 , '유자 패션 피지오' ,  'Yuja Passion Starbucks Fizzio' , '상콤달콤 고흥 유자와 스타벅스 시그니처 패션 탱고 티에 한 잔 한 잔 탄산을 넣어 제조하는 피지오 음료.' , 145 , 5 , 0 , 36 , 0 , 0);
insert into drink values (1054 , 7 , 2 , 300 , '쿨 라임 피지오' ,  'Cool Lime Starbucks Fizzio™' , '그린 빈 추출액이 들어간 라임 베이스에 건조된 라임 슬라이스를 넣고 스파클링한 시원하고 청량감 있는 음료입니다.' , 105 , 20 , 0 , 25 , 0 , 110);
insert into drink values (1055 , 7 , 2 , 300 , '피치 딸기 피지오' ,  'Peach Strawberry Starbucks Fizzio' , '상큼한 과일과 청량한 탄산의 조화.' , 145 , 20 , 0 , 26 , 0 , 37);

insert into drink values (1056 , 8 , 1, 300 , '아이스 크리스마스 루비 뱅쇼' , 'Iced Christmas Ruby Vin Chaud', '카베르네 쇼비뇽 와인 추출액이 들어간 진한 레드 와인 베이스에 허브&스파이스백을 넣어 추운 겨울에 잘 어울리는 클래식한 뱅쇼' , 180 , 5 , 0 , 38 , 0 , 0);
insert into drink values (1057 , 8 , 1, 300 , '아이스 핑크 캐모마일 릴렉서' , 'Iced Pink Chamomile Relaxer', '크리스마스에 어울리는 샴페인 한 잔과 같은 핑크 캐모마일 릴렉서!' , 130 , 10 , 0 , 24 , 0 , 1);
insert into drink values (1058 , 8 , 1, 300 , '말차 크림 브륄레 라떼' , 'Malcha Cream Brulee Latte', '부드러운 버터, 바닐라 풍미와 쌉싸름한 말차의 맛이 조화롭게 어우러진 디저트 타입의 말차 라떼' , 325 , 140 , 10 , 35 , 9 , 46);
insert into drink values (1059 , 8 , 2, 300 , '민트 블렌드 티' , 'Mint Blend Brewed Tea', '스피어민트, 페퍼민트, 레몬머틀이 블렌딩된 상쾌한 허브 티' , 0 , 0 , 0 , 0 , 0 , 0);
insert into drink values (1060 , 8 , 2, 300 , '아이스 얼 그레이 티' , 'Iced Earl Grey Brewed Tea', '꽃향 가득한 라벤더와 베르가못 향이 진한 홍차와 블렌딩된 향긋한 블랙 티' , 0 , 0 , 0 , 0 , 0 , 50);
insert into drink values (1061 , 8 , 2, 304 , '스타벅스 클래식 밀크 티 보틀' , 'Starbucks Classic Milk Tea Bottle', '진하게 우려낸 블랙 티의 깊은 풍미와 우유의 조화로움을 담아낸 클래식 밀크 티를 전용 보틀과 함께, 언제 어디서나, 편하게 즐겨보세요.' , 485 , 130 , 21 , 51 , 7 , 195);

insert into drink values (1062 , 9 , 1, 300 , '스타벅스 딸기 라떼' , 'Starbucks Strawberry Milk', '매년 봄 꾸준히 사랑 받는 스타벅스 딸기 라떼가 추운 겨울을 상큼하게 물들이러 돌아왔다!' , 150 , 55 , 2 , 24 , 3 , 0);
insert into drink values (1063 , 9 , 2, 300 , '스팀 우유' , 'Steamed Milk', '부드럽고 담백한 따뜻한 우유.' , 215 , 173 , 7 , 18 , 13 , 0);
insert into drink values (1064 , 9 , 2, 300 , '아이스 제주 까망 라떼' , 'Iced Jeju Black Sesame Latte', '[제주지역 한정음료] 제주도의 돌담길과 하르방의 풍경을 느낄 수 있는 음료로 고소한 흑임자와 달콤한 소보로 토핑으로 시원하게 누구나 즐길 수 있는 음료' , 440 , 210 , 11 , 45 , 10 , 0);
insert into drink values (1065 , 9 , 2, 300 , '시그니처 핫 초콜릿' , 'Signature Hot Chocolate', '깊고 진한 초콜릿과 부드러운 휘핑크림이 입안에서 사르르 녹는 초콜릿 음료' , 500 , 105 , 9 , 52 , 15 , 15);
insert into drink values (1066 , 9 , 2, 303 , '플러피 판다 핫 초콜릿' , 'Fluffy Panda Hot Chocolate', '고소한 헤이즐넛과 진한 핫초콜릿의 만남, 귀여운 판다까지 더해진 플러피 판다 핫 초콜릿!' , 470 , 160 , 17 , 48 , 12 , 0);

insert into drink values (1067 , 10 , 2, 306 , '필 더 그린' , 'Fill The Green', '과일 및 채소를 착즙하여 만든 주스!' , 90 , 15 , 1 , 15 , 0.2 , 0);
insert into drink values (1068 , 10 , 2, 306 , '필 더 레드' , 'Fill The Red', '과일 및 채소를 착즙하여 만든 주스!' , 90 , 16 , 1 , 45 , 0.1 , 0);
insert into drink values (1070 , 10 , 2, 306 , '필 더 옐로우' , 'Fill The Yellow', '과일 및 채소를 착즙하여 만든 주스!' ,  100 , 16 , 1 , 0 , 0.1 , 0);
insert into drink values (1071 , 10 , 2, 306 , '딸기 주스' , 'Strawberry Juice', '달콤한 국내산 딸기의 과육이 듬뿍 느껴지는 주스' , 110 , 25 , 0 , 30 ,0 , 0);
insert into drink values (1072 , 10 , 2, 306 , '유기농 오렌지 100% 주스' , 'Organic Orange 100% Juice', '프리미엄 유기농 오렌지 주스로 스페인산 오렌지 착즙!' , 95 , 20 , 2 , 5 ,0 , 0);

select *
from drink;


insert into allergy_drink values (10000 , 100 , 1000);
insert into allergy_drink values (10001 , 108 , 1001);
insert into allergy_drink values (10002 , 100 , 1002);
insert into allergy_drink values (10003 , 108 , 1003);
insert into allergy_drink values (10004 , 108 , 1004);
insert into allergy_drink values (10005 , 108 , 1005);
insert into allergy_drink values (10006 , 108 , 1006);
insert into allergy_drink values (10007 , 108 , 1007);
insert into allergy_drink values (10008 , 100 , 1008);
insert into allergy_drink values (10009 , 108 , 1009);
insert into allergy_drink values (10010 , 100 , 1010);
insert into allergy_drink values (10011 , 108 , 1011);
insert into allergy_drink values (10012 , 101 , 1012);
insert into allergy_drink values (10013 , 100 , 1013);

insert into allergy_drink values (10014 , 108 , 1014);
insert into allergy_drink values (10015 , 108 , 1015);

insert into allergy_drink values (10016 , 100 , 1016);
insert into allergy_drink values (10017 , 100 , 1017);
insert into allergy_drink values (10018 , 100 , 1018);
insert into allergy_drink values (10019 , 100 , 1019);
insert into allergy_drink values (10020 , 100 , 1020);
insert into allergy_drink values (10021 , 100 , 1021);
insert into allergy_drink values (10022 , 108 , 1022);
insert into allergy_drink values (10023 , 108 , 1023);
insert into allergy_drink values (10024 , 101 , 1024);
insert into allergy_drink values (10025 , 101 , 1025);
insert into allergy_drink values (10026 , 100 , 1026);
insert into allergy_drink values (10027 , 100 , 1027);
insert into allergy_drink values (10028 , 101 , 1028);
insert into allergy_drink values (10029 , 100 , 1029);
insert into allergy_drink values (10030 , 100 , 1030);
insert into allergy_drink values (10031 , 100 , 1031);
insert into allergy_drink values (10032 , 100 , 1032);


insert into allergy_drink values (10033 , 100 , 1033);
insert into allergy_drink values (10034 , 102 , 1034);
insert into allergy_drink values (10035 , 101 , 1035);
insert into allergy_drink values (10036 , 100 , 1036);
insert into allergy_drink values (10037 , 103 , 1037);
insert into allergy_drink values (10038 , 102 , 1038);
insert into allergy_drink values (10039 , 100 , 1039);
insert into allergy_drink values (10040 , 102 , 1040);

insert into allergy_drink values (10041 , 105 , 1041);
insert into allergy_drink values (10042 , 100 , 1042);
insert into allergy_drink values (10043 , 100 , 1043);
insert into allergy_drink values (10044 , 100 , 1044);
insert into allergy_drink values (10045 , 101 , 1045);
insert into allergy_drink values (10046 , 100 , 1046);

insert into allergy_drink values (10047 , 108 , 1047);
insert into allergy_drink values (10048 , 108 , 1048);
insert into allergy_drink values (10049 , 108 , 1049);

insert into allergy_drink values (10050 , 108 , 1050);
insert into allergy_drink values (10051 , 100 , 1051);
insert into allergy_drink values (10052 , 107 , 1052);
insert into allergy_drink values (10053 , 108 , 1053);
insert into allergy_drink values (10054 , 108 , 1054);
insert into allergy_drink values (10055 , 107 , 1055);

insert into allergy_drink values (10056 , 108 , 1056);
insert into allergy_drink values (10057 , 108 , 1057);
insert into allergy_drink values (10058 , 100 , 1058);
insert into allergy_drink values (10059 , 108 , 1059);
insert into allergy_drink values (10060 , 108 , 1060);
insert into allergy_drink values (10061 , 100 , 1061);

insert into allergy_drink values (10062 , 100 , 1062);
insert into allergy_drink values (10063 , 100 , 1063);
insert into allergy_drink values (10064 , 103 , 1064);
insert into allergy_drink values (10065 , 100 , 1065);
insert into allergy_drink values (10066 , 100 , 1066);

insert into allergy_drink values (10067 , 108 , 1067);
insert into allergy_drink values (10068 , 108 , 1068);
insert into allergy_drink values (10070 , 108 , 1070);
insert into allergy_drink values (10071 , 108 , 1071);
insert into allergy_drink values (10072 , 108 , 1072);

select *
from allergy_drink;

insert into Users values (30000 , '이성민' , 'ler0101@naver.com' , 'qwe123!@' , 24, '010-8389-0439' , '경기도 수원시 권선구 세지로66번길 33-6' , 'green');
insert into Users values (30001 , '최녕환' , 'qks30202@naver.com' , 'sudghks123@@' , 24, '010-8129-0559' , '전라북도 완주군 화산면 신구로 419' , 'gold');
insert into Users values (30002 , '김현수' , 'gustn02@naver.com' , 'gustn33@' , 20, '010-1129-0356' , '전라북도 완주군 화산면 신구로 419' , 'welcome');
insert into Users values (30003 , '이대박' , 'eoqkr103@naver.com' , 'eoqkr66@' , 30, '010-4328-1263' , '강원도 횡성군 둔내면 고원로425번길 112' , 'gold');
insert into Users values (30004 , '최미래' , 'alfo1004@naver.com' , 'alfodlqslek12' , 15, '010-1269-0386' , '대전광역시 중구 계백로 1725-21' , 'welcome');
insert into Users values (30005 , '김성수' , 'tjdtndi1233@naver.com' , 'tjdtnwlrma1' , 34, '010-1683-9283' , '경기도 하남시 산곡북로 51-67' , 'green');
insert into Users values (30006 , '이수민' , 'tnalsdldi103@naver.com' , 'tnalsdl2k' , 40, '010-1328-3858' , '경기도 화성시 팔탄면 푸른들판로 937-13' , 'green');
insert into Users values (30007 , '박재정' , 'wowjd9993@naver.com' , 'wowjd@@03' , 28, '010-1382-0863' , '충청남도 청양군 장평면 충의로 557-24 ' , 'welcome');
insert into Users values (30008 , '박효신' , 'gytlsi393@naver.com' , 'gytlsdlqslek11' , 33, '010-1832-8695' , '광주광역시 광산구 월곡반월로76번길 11' , 'gold');
insert into Users values (30009 , '김범수' , 'qjatndis233@naver.com' , 'qjatndkd2' , 46, '010-8283-6823' , '경상남도 합천군 야로면 선원우복길 45-8' , 'gold');
insert into Users values (30010 , '김진수' , 'wlstndk11939@naver.com' , 'wlstn0429' , 19, '010-8652-8693' , '서울특별시 송파구 새말로13길 13' , 'green');
insert into Users values (30011 , '나미래' , 'alfo0233@naver.com' , 'dhtmsxlsr66@' , 29, '010-0183-0283' , '충청남도 보령시 주산면 주산벚꽃로 94-62' , 'welcome');

select *
from Users;


insert into Users_like values (100000 , 30000 , 1003 );
insert into Users_like values (100001 , 30000 , 1010 );
insert into Users_like values (100002 , 30000 , 1032 );
insert into Users_like values (100003 , 30000 , 1002 );
insert into Users_like values (100004 , 30000 , 1015 );
insert into Users_like values (100005 , 30000 , 1017 );
insert into Users_like values (100006 , 30000 , 1039 );
insert into Users_like values (100007 , 30000 , 1042 );
insert into Users_like values (100008 , 30000 , 1048 );
insert into Users_like values (100009 , 30000 , 1052 );
insert into Users_like values (100010 , 30000 , 1063 );
insert into Users_like values (100011 , 30000 , 1021 );
insert into Users_like values (100012 , 30000 , 1023 );
insert into Users_like values (100013 , 30000 , 1025 );
insert into Users_like values (100014 , 30000 , 1027 );

insert into Users_like values (100015 , 30001 , 1003 );
insert into Users_like values (100016 , 30001 , 1011 );
insert into Users_like values (100017 , 30001 , 1032 );
insert into Users_like values (100018 , 30001 , 1005 );
insert into Users_like values (100019 , 30001 , 1015 );
insert into Users_like values (100020 , 30001 , 1053 );
insert into Users_like values (100021 , 30001 , 1027 );
insert into Users_like values (100022 , 30001 , 1063 );
insert into Users_like values (100023 , 30001 , 1058 );
insert into Users_like values (100024 , 30001 , 1059 );
insert into Users_like values (100025 , 30001 , 1060 );
insert into Users_like values (100026 , 30001 , 1042 );

insert into Users_like values (100027 , 30002 , 1003 );
insert into Users_like values (100028 , 30002 , 1011 );
insert into Users_like values (100029 , 30002 , 1032 );
insert into Users_like values (100030 , 30002 , 1013 );
insert into Users_like values (100031 , 30002 , 1018 );
insert into Users_like values (100032 , 30002 , 1048 );
insert into Users_like values (100033 , 30002 , 1042 );
insert into Users_like values (100034 , 30002 , 1040 );
insert into Users_like values (100035 , 30002 , 1058 );
insert into Users_like values (100036 , 30002 , 1059 );
insert into Users_like values (100037 , 30002 , 1060 );
insert into Users_like values (100038 , 30002 , 1067 );

insert into Users_like values (100039 , 30003 , 1000 );
insert into Users_like values (100040 , 30003 , 1012 );
insert into Users_like values (100041 , 30003 , 1032 );
insert into Users_like values (100042 , 30003 , 1058 );
insert into Users_like values (100043 , 30003 , 1038 );
insert into Users_like values (100044 , 30003 , 1027 );
insert into Users_like values (100045 , 30003 , 1029 );
insert into Users_like values (100046 , 30003 , 1039 );
insert into Users_like values (100047 , 30003 , 1005 );
insert into Users_like values (100048 , 30003 , 1058 );
insert into Users_like values (100049 , 30003 , 1023 );
insert into Users_like values (100050 , 30003 , 1070 );

insert into Users_like values (100051 , 30004 , 1000 );
insert into Users_like values (100052 , 30004 , 1012 );
insert into Users_like values (100053 , 30004 , 1032 );
insert into Users_like values (100054 , 30004 , 1058 );
insert into Users_like values (100055 , 30004 , 1030 );
insert into Users_like values (100056 , 30004 , 1036 );
insert into Users_like values (100057 , 30004 , 1066 );
insert into Users_like values (100058 , 30004 , 1042 );
insert into Users_like values (100059 , 30004 , 1048 );
insert into Users_like values (100060 , 30004 , 1040 );
insert into Users_like values (100061 , 30004 , 1045 );
insert into Users_like values (100062 , 30004 , 1044 );

insert into Users_like values (100063 , 30005 , 1000 );
insert into Users_like values (100064 , 30005 , 1012 );
insert into Users_like values (100065 , 30005 , 1032 );
insert into Users_like values (100066 , 30005 , 1047 );
insert into Users_like values (100067 , 30005 , 1038 );
insert into Users_like values (100068 , 30005 , 1033 );
insert into Users_like values (100069 , 30005 , 1056 );
insert into Users_like values (100070 , 30005 , 1055 );
insert into Users_like values (100071 , 30005 , 1050 );
insert into Users_like values (100072 , 30005 , 1023 );
insert into Users_like values (100073 , 30005 , 1025 );
insert into Users_like values (100074 , 30005 , 1029 );

insert into Users_like values (100075 , 30006 , 1000 );
insert into Users_like values (100076 , 30006 , 1009 );
insert into Users_like values (100077 , 30006 , 1010 );
insert into Users_like values (100078 , 30006 , 1020 );
insert into Users_like values (100079 , 30006 , 1023 );
insert into Users_like values (100080 , 30006 , 1025 );
insert into Users_like values (100081 , 30006 , 1029 );
insert into Users_like values (100082 , 30006 , 1030 );
insert into Users_like values (100083 , 30006 , 1040 );
insert into Users_like values (100084 , 30006 , 1059 );
insert into Users_like values (100085 , 30006 , 1060 );
insert into Users_like values (100086 , 30006 , 1063 );

insert into Users_like values (100087 , 30007 , 1000 );
insert into Users_like values (100088 , 30007 , 1003 );
insert into Users_like values (100089 , 30007 , 1006 );
insert into Users_like values (100090 , 30007 , 1009 );
insert into Users_like values (100091 , 30007 , 1023 );
insert into Users_like values (100092 , 30007 , 1024 );
insert into Users_like values (100093 , 30007 , 1030 );
insert into Users_like values (100094 , 30007 , 1038 );
insert into Users_like values (100095 , 30007 , 1043 );
insert into Users_like values (100096 , 30007 , 1045 );
insert into Users_like values (100097 , 30007 , 1047 );
insert into Users_like values (100098 , 30007 , 1050 );


insert into Users_like values (100099 , 30008 , 1000 );
insert into Users_like values (100100 , 30008 , 1003 );
insert into Users_like values (100101 , 30008 , 1019 );
insert into Users_like values (100102 , 30008 , 1025 );
insert into Users_like values (100103 , 30008 , 1027 );
insert into Users_like values (100104 , 30008 , 1037 );
insert into Users_like values (100105 , 30008 , 1042 );
insert into Users_like values (100106 , 30008 , 1047 );
insert into Users_like values (100107 , 30008 , 1050 );
insert into Users_like values (100108 , 30008 , 1057 );
insert into Users_like values (100109 , 30008 , 1060 );
insert into Users_like values (100110 , 30008 , 1063 );

insert into Users_like values (100111 , 30009 , 1000 );
insert into Users_like values (100112 , 30009 , 1002 );
insert into Users_like values (100113 , 30009 , 1005 );
insert into Users_like values (100114 , 30009 , 1021 );
insert into Users_like values (100115 , 30009 , 1026 );
insert into Users_like values (100116 , 30009 , 1033 );
insert into Users_like values (100117 , 30009 , 1036 );
insert into Users_like values (100118 , 30009 , 1037 );
insert into Users_like values (100119 , 30009 , 1040 );
insert into Users_like values (100120 , 30009 , 1043 );
insert into Users_like values (100121 , 30009 , 1048 );
insert into Users_like values (100122 , 30009 , 1062 );

insert into Users_like values (100123 , 30010 , 1000 );
insert into Users_like values (100124 , 30010 , 1012 );
insert into Users_like values (100125 , 30010 , 1015 );
insert into Users_like values (100126 , 30010 , 1017 );
insert into Users_like values (100127 , 30010 , 1018 );
insert into Users_like values (100128 , 30010 , 1039 );
insert into Users_like values (100129 , 30010 , 1049 );
insert into Users_like values (100130 , 30010 , 1052 );
insert into Users_like values (100131 , 30010 , 1055 );

insert into Users_like values (100132 , 30011 , 1000 );
insert into Users_like values (100133 , 30011 , 1005 );
insert into Users_like values (100134 , 30011 , 1006 );
insert into Users_like values (100135 , 30011 , 1010 );
insert into Users_like values (100136 , 30011 , 1011 );
insert into Users_like values (100137 , 30011 , 1015 );
insert into Users_like values (100138 , 30011 , 1018 );
insert into Users_like values (100139 , 30011 , 1032 );
insert into Users_like values (100140 , 30011 , 1033 );
insert into Users_like values (100141 , 30011 , 1038 );

select *
from Users_like;

--실제 발생할 수 있는 질문?


-- 지금 진행중인 테마 이름과 음료 이름을 알려주세요 

select theme.name , drink.korean_name
from theme, drink
where theme.id = drink.theme_id and drink.theme_id = 1;

-- 이성민이 좋아하는 음료 이름(한국어) ?

select drink.korean_name
from Users_like,Users , drink
where Users_like.user_id = Users.id and  Users_like.drink_id = drink.id and  Users.user_name = '이성민';

-- 우유가 들어간 음료의 개수는?

select count(drink.id)
from allergy_drink, drink , allergy
where drink.id=allergy_drink.drink_id and  allergy.id = allergy_drink.allergy_id and allergy.name like '%우유%';

-- 현재 스타벅스의 음료의 개수는?

select count(*)
from drink;

-- 최녕환이 좋아요를 누른 음료 개수?

select count(*)
from Users_like , Users
where Users.id = Users_like.user_id and Users.user_name = '최녕환';

-- 제주에 관련된 음료명과 설명을 알려주세요 

select drink.korean_name , drink.comment
from drink
where comment like '%제주%';


-- 카페인이 0인 음료는 무엇이 있을까요 ??

select drink.korean_name
from drink
where drink.카페인 = 0;

-- 300칼로리 이하인 음료 리스트와 그 음료의 칼로리를 내림차순 순서로 알려주세요

select drink.korean_name , drink.kcal
from drink
where drink.kcal <= 300
order by kcal desc;

--  green level 에 있는 사람들 이름과 이메일을 알려줘 

select Users.user_name , Users.email
from Users
where Users.grade = 'green';

-- 나이 30 이상인 유저들이 좋아하는 음료를 알려줘 

select drink.korean_name
from drink,Users , Users_like
where Users_like.drink_id = drink.id and Users_like.user_id = Users.id and  Users.age >= 30;  


-- 카테고리당 음료의 수를 알려주세요 

select category.name , count(drink.id)
from drink , category
where drink.category_id = category.id
group by drink.category_id , category.name;

-- 좋아요수가 가장 높은 음료 순서대로 알려줘

select drink.korean_name, count(Users_like.id) as 좋아요수
from drink , Users_like 
where Users_like.drink_id = drink.id
group by drink.id , drink.korean_name
order by count(Users_like.id) desc;


-- 전용보틀에 담긴 음료가 있나요? 있다면 음료 이름과 코멘트를 알려주세요

select drink.korean_name, drink.comment
from drink ,size
where drink.size_id = size.id and size.name = '전용보틀';

-- 에스프레소 중에 당류가 제일 높은 음료이름과 당류정보를 알려줘 

select drink.korean_name , drink.당류
from drink , category
where drink.category_id = category.id and  drink.당류 = (
														select MAX(당류)
														from drink, category
														where drink.category_id = category.id  and category.name = '에스프레소'
														);

-- 0kcal , 당류 0 , 카페인 0 인 음료를 찾아주세요

select drink.korean_name , drink.english_name
from drink
where drink.kcal = 0  and drink.당류 = 0 and drink.카페인 = 0;

-- 부드러운 음료를 추천받을 수 있을까요 ??

select drink.korean_name
from drink
where drink.comment like '%부드러운%';

-- 스타벅스 음료중에 단백질이 높은 순서대로 5개를 짤라서 평균을 내면 몇그램이 나오나요 ??

select avg(단백질)
from drink
where 단백질 in (
				 select top 5 단백질
				 from drink
				 order by 단백질 desc
);

-- 좋아요 수가 가장 높은 음료는 무엇인가요 ??

select top 1 drink.korean_name
from drink , Users_like 
where Users_like.drink_id = drink.id
group by drink.id , drink.korean_name
order by count(Users_like.id) desc;


-- 스타벅스 음료의 평균 영양정보는 ?

select avg(kcal) as 칼로리 , avg(당류) as 당류 ,avg(단백질) as 단백질 ,avg(나트륨) as 나트륨 ,avg(포화지방) as 포화지방 , avg(카페인) as 카페인
from drink;


-- 모든 영양 정보가 0인 음료가 있을까요 ? 그 정보를 알려주고 음료를 좋아하는 사람이 있다면 알려주세요
select korean_name , english_name , comment , kcal , 나트륨 , 포화지방 , 당류 , 단백질 , 카페인 , Users.user_name
from drink , Users , Users_like
where Users.id = Users_like.user_id and Users_like.drink_id = drink.id and Users_like.drink_id = (
																									select id
																									from drink
																									where kcal = 0 and 당류 = 0 and  단백질 = 0 and 나트륨 = 0 and 포화지방 = 0 and 카페인 = 0
																									);


-- 당뇨환자를 위한 당이 없는 음료를 추천해주세요 

select korean_name , 당류 
from drink
where 당류 = 0;

-- 경기도 사는 사람들이 좋아하는 음료 

select korean_name,english_name ,comment
from drink , Users , Users_like
where Users.id = Users_like.user_id and Users_like.drink_id = drink.id and Users.current_address like '경기도%';


-- 초콜릿이 들어간 음료를 추천해주세요 

select korean_name,english_name,comment
from drink
where korean_name like '%초콜릿%' or english_name like '%chocolate%' or comment like '%초콜릿%';

-- 20대들이 좋아하는 음료를 추천해주세요 

select korean_name , english_name ,comment
from drink,Users , Users_like
where Users.id = Users_like.user_id and Users_like.drink_id = drink.id and Users.age  between 20 and 29;


-- 카페인이 가장 높은 음료를 추천해주세요 

select korean_name , comment , 카페인
from drink
where 카페인 = (
			    select Max(카페인)
				from drink
				);


-- 우유 들어간 음료중 칼로리가 가장 낮은 음료가 무엇인가요 ??

select top 1 korean_name ,comment,  kcal
from drink , allergy , allergy_drink
where allergy.id = allergy_drink.allergy_id and allergy_drink.drink_id = drink.id and allergy.name like '%우유%' 
order by kcal asc;


-- 회원 등급 별로 몇명인지 알려주세요

select grade , count(grade) 
from Users
group by grade;

-- 스타벅스 회원들의 평균 나이는 ??

select avg(age)
from Users;

-- 밀가루 알러지가 있는 사람들을 위한 음료를 추천해주세요 

select drink.korean_name , drink.comment , allergy.name as 알러지유발인자
from drink, allergy , allergy_drink
where drink.id = allergy_drink.drink_id and allergy.id = allergy_drink.allergy_id and allergy.name not like '%밀%';

-- Solo 사이즈의 음료를 좋아하는 회원이 있나요 ??

select Users.user_name , drink.korean_name , size.name as 사이즈
from Users , drink , size , Users_like
where Users.id = Users_like.user_id and  drink.id = Users_like.drink_id and drink.size_id = size.id and size.name = 'solo';



-- 나이가 30이상인 조건으로 뷰를 만들어보세요 

create view 나이가30이상
as select user_name,phone,age
	from Users
	where age >= 30;

select *
from 나이가30이상
order by age;


-- 카페인이 0인 조건으로 뷰를 만들어보세요 

create view 카페인0음료
as select drink.korean_name,drink.comment,drink.카페인
	from drink
	where 카페인=0;

select *
from 카페인0음료;