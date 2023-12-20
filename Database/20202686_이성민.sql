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
	��Ʈ�� decimal(10,2),
	��ȭ���� decimal(10,2),
	��� decimal(10,2),
	�ܹ��� decimal(10,2),
	ī���� decimal(10,2),
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

insert into category values (1 , '�ݵ���Ŀ��');
insert into category values (2 , '����Ŀ��');
insert into category values (3 , '����������');
insert into category values (4 , '����Ǫġ��');
insert into category values (5 , '�����');
insert into category values (6 , '��Ÿ������������');
insert into category values (7 , '��Ÿ����������');
insert into category values (8 , 'Ƽ');
insert into category values (9 , '��Ÿ��������');
insert into category values (10 , '��Ÿ�����ֽ�');

select *
from category;

insert into theme values(1,'peak holiday vibes');
insert into theme values(2,'����');

select *
from theme;

insert into allergy values (100, '����');
insert into allergy values (101, '���/����');
insert into allergy values (102, '���/���/��');
insert into allergy values (103, '����/���/����/�˷�/��/��¡��');
insert into allergy values (104, '����/����');
insert into allergy values (105, '���');
insert into allergy values (106, '���� / ������');
insert into allergy values (107, '������');
insert into allergy values (108 , '����');

select *
from allergy;

insert into size values (300 , 'Tall' , 355);
insert into size values (301 , 'Bottle' , 500);
insert into size values (302 , 'Trenta' , 887);
insert into size values (303 , 'Grande', 473);
insert into size values (304 , '���뺸Ʋ' , 500);
insert into size values (305 , '��������' , null);
insert into size values (306 , '������' , 190);
insert into size values (307, 'Solo', 22);

select *
from size;


insert into drink values (1000, 1, 2 , 300 , '����Ʈ�� �ٴҶ� ũ��' , 'Nitro Vanilla Cream' , '�ε巯�� ��ѱ��� ����Ʈ�� Ŀ�ǿ� �ٴҶ� ũ���� �ŷ��� �ѹ��� ����������!', 80,40,2,10,1,232); 
insert into drink values (1001, 1, 2 , 300 , '����Ʈ�� �ݵ� ���' , 'Nitro Cold Brew' , '����Ʈ�� Ŀ�� ������ ĳ�����̵��� �ε巯�� �ݵ� ũ����! �ε巯�� �� �ѱ�� �Ϻ��� �뷱���� Ŀ�� ������ �ܸ��� ������ �� �ֽ��ϴ�.', 5,5,0,0,0,245);
insert into drink values (1002, 1, 2 , 300 , '��ü �ݵ� ���' , 'Dolce Cold Brew' , '������ ����ö,������ �ް������� ���� Ŀ�Ǹ� �������� �ϴ½�Ÿ���� ������ ����Ʈ x ����Ʈ �����ε�ü �ݵ� ��縦 ����������!', 265,130,9,29,8,155);
insert into drink values (1003, 1, 2 , 300 , '������ ����Ʈ��' , 'Reserve Nitrom' , '����Ʈ�� Ŀ�� ������ ĳ�����̵��� �ε巯�� �ݵ� ũ����!�ε巯�� �� �ѱ�� �Ϻ��� �뷱���� Ŀ�� ������ �ܸ��� ������ �� �ֽ��ϴ�.', 5,0,0,0,0,190); 
insert into drink values (1004, 1, 2 , 300 , '������ �ݵ� ���' , 'Reserve Cold Brew' , '������ Ŀ�� �������� �������� ������ ������ ��� �ε巯�� ǳ���� Ŀ��', 5,0,0,0,0,190); 
insert into drink values (1005, 1, 2 , 300 , '��Ʈ �ݵ� ���' , 'Mint Cold Brew' , '������ ��Ʈ�� �÷��� �߰� ���� �����̾�췯�� �ÿ����� �����ϰ� �������� �����길���ݵ� ��� ����', 100,0,0,23,0,415);
insert into drink values (1006, 1, 2 , 300 , '�ٴҶ� ũ�� �ݵ� ���' , 'Vanilla Cream Cold Brew' , '�ݵ� ��翡 ������ �ٴҶ� ũ������ ����ϸ鼭 ������ �ݵ� ��縦 ���Ӱ� ��� �� �ִ� �����Դϴ�.', 125,58,6,11,3,155);
insert into drink values (1007, 1, 2 , 301 , '�ñ״�ó �� �� �ݵ� ���' , 'Signature The Black Cold Brew' , '�ݵ� ��� ���� ���θ� ������ ���� ���忡�� ���������Ͽ� �ε巴�� ���� ǳ���� �ݵ��縦���� ��𼭳� ���ϰ� ��ܺ����� (���� ��Ʋ /500ml)', 25,50,0,0,0,680);
insert into drink values (1008, 1, 2 , 305 , '���� ���� ������� �ݵ���' , 'Yeosu Shining Hazelnut Cold Brew' , '�޺��̳� �޺��� ��ġ�� ��¦�̴� �ܹ����̶��"����"�� ����ȭ�� ������� �ݵ���', 245,85,9,27,5,53); 
insert into drink values (1009, 1, 2 , 300 , '��Ʈ �ݵ� ���' , 'Oat Cold Brew' , '�ݵ� ����� ǳ�̿� ����� ��Ʈ����(�Ĺ��� ��ü��)�� ��췯�� ���� ����� ��.�Ĺ��� ��ü���� ����� ��� ���� �δ���� ��� �� �ִ� �ݵ� ��� ����', 120,95,0.3,14,1,65);
insert into drink values (1010, 1, 2 , 303 , '���� ���ڸ� �ݵ� ���' , 'Jeju Forest Cold Brew' , '���� õ���� �� ���ڸ��� �����Ű�� ����� ���� ����� ������ �ݵ� ��簡 ��ȭ�ο� ���� Ưȭ �ݵ� ��� ����', 360,140,8,39,11,305); 
insert into drink values (1011, 1, 2 , 300 , '�ݵ� ���' , 'Cold Brew' , '��Ÿ���� �ٸ���Ÿ�� �������� ź���� �ݵ� ���!', 5,11,0,0,0,155); 
insert into drink values (1012, 1, 2 , 300 , '�ݵ� ��� ��Ʈ' , 'Cold Brew Malt' , '[������ ��������] ������ �ݵ� ���, �ٴҶ� ���̽�ũ��, ��Ʈ�� ������ �����길�� ����ũ', 505,150,20,41,7,190); 
insert into drink values (1013, 1, 2 , 300 , '�ݵ� ��� �÷�Ʈ' , 'Cold Brew Float' , '[������ ��������] ������ �ݵ� ��� ���� ��� ������ �� ������ �ٴҶ� ���̽�ũ��', 255,70,10,18,3,190); 

insert into drink values (1014, 2, 2, 300, '���̽� Ŀ��' , 'Iced Coffee' , '���̽� Ŀ�Ƿ� ������ �����̾� ���θ� �̿��Ͽ� ����ϰ� ��ŭ�� ���� ������ �� �ֽ��ϴ�.' , 5,10,0,0,0,140);
insert into drink values (1015, 2, 2, 300, '������ Ŀ��' , 'Brewed Coffee' , '���� ��︮�� ���� ������ �����Ͽ� �ż��ϰ� ����(Brewed)�Ǿ� �����Ǵ� �帳Ŀ�Ƿ�, ���� Ŀ���� ǳ���� ���� ���� �����ϰ� ���� �� �ֽ��ϴ�.' , 5,15,0,0,0,260);

insert into drink values (1016, 3,1, 300 , '���� ���������� ũ�� ��', 'Double Espresso Cream Latte' , '������ �ٴҶ�� ���� ���������� ǳ�̰� �����̴� ����', 270,140,10,26,9,76);
insert into drink values (1017, 3,1, 300 , '���̽� ���� ���������� ũ�� ��', 'Iced Double Espresso Cream Latte' , '������ �ٴҶ�� ���� ���������� ǳ�̰� �����̴� ����', 220,95,8,21,6,76);
insert into drink values (1018, 3,1, 300 , '���̽� ���� �� ��', 'Iced Toffee Nut Latte' , '��Ÿ������ �ܿ� �ñ״�ó ������� ���� �����ϰ� �������� ���ǿ� ����� �߰����� ǳ��,���� ���������Ұ� ��췯�� ũ�������� ���� ����', 240,180,8,27,5,75);
insert into drink values (1019, 3,1, 300 , '���� �� ��', 'Toffee Nut Latte' , '��Ÿ������ �ܿ� �ñ״�ó ������� ���� �����ϰ� �������� ���ǿ� ����� �߰����� ǳ��,���� ���������Ұ� ��췯�� ũ�������� ���� ����', 325,250,11,34,10,75);
insert into drink values (1020, 3, 2, 307, '���������� �� �ĳ�' , 'Espresso Con Panna' , '�ż��� ���������� ���� ǳ���� ����ũ���� ���� Ŀ�� ����μ�, �߰ſ� Ŀ���� ���� ������ ������ ��ũ���� ���� ���� ��� �� �ִ� Ŀ�� ����' , 30,0,1.5,1,0,75);
insert into drink values (1021, 3, 2, 307, '���������� ��Ű�ƶ�' , 'Espresso Macchiato' , '�ż��� ���������� ���� ���� ��ǰ�� ��¦ ���� Ŀ�� ����ν�, ������ ������������ ���� ������ �ε巯���� ���� ��� �� �ִ� Ŀ�� ����' , 10,0,0,0,1,75);
insert into drink values (1022, 3, 2, 300, '���̽� ī�� �Ƹ޸�ī��' , 'Iced Caffe Americano' , '���� ���������ҿ� �ÿ��� �������� ������ ���Ͽ� ��Ÿ������ ����ϰ� ������ ���������Ҹ� ���� �ε巴�� �ÿ��ϰ� ��� �� �ִ� Ŀ��' , 10,5,0,0,1,150);
insert into drink values (1023, 3, 2, 300, 'ī�� �Ƹ޸�ī��' , 'Caffe Americano' , '���� ���������ҿ� �߰ſ� ���� ���� ��Ÿ������ ����ϰ� ������ ���������Ҹ� ���� �ε巴�� �� ���� �� �ִ� Ŀ��' , 10,5,0,0,1,150);
insert into drink values (1024, 3, 2, 300, '���̽� ī��� ��Ű�ƶ�' , 'Iced Caramel Macchiato' , '����� �ٴҶ� �÷��� �ÿ��� ������ ������ �ְ� ���� ����� ���������Ҹ� ���� �� ���� ������� ī��� �帮���� �ø� ������ Ŀ�� ����' , 190, 110, 4.6, 22, 6,75);
insert into drink values (1025, 3, 2, 300, 'ī��� ��Ű�ƶ�' , 'Caramel Macchiato' , '����� �ٴҶ� �÷��� ������ ���� ��ũ ���� ǳ���� ���� ��ǰ�� ��� ���� ����� ���������Ҹ� ���� �� ���� ������� ī��� �帮���� �ø� ������ Ŀ�� ����' , 200,130,5,22,8,75);
insert into drink values (1026, 3, 2, 300, '���̽� īǪġ��' , 'Iced Cappuccino' , 'ǳ���ϰ� ���� ���������ҿ� �ż��� ������ ���� ��ǰ�� ������ �Բ� �� �ÿ��ϰ� �ε巯�� Ŀ�� ����' , 110,90,3.5,9,6,75);
insert into drink values (1027, 3, 2, 300, 'īǪġ��' , 'ICappuccino' , 'ǳ���ϰ� ���� ���������ҿ� ������ ������ ���� ���� ���� ��ǰ�� 1:1 ������ ��췯�� �������� Ŀ�� ����' , 110,70,3,8,6,75);
insert into drink values (1028, 3, 2, 303, '�� �׸� �� ũ�� ��' , 'The Green Mugwort Cream Latte' , '������ ���� ��� ��е� ���� ��췯�� ����ϰ� �ε巯�� �󶼴����� �� ���� �ö� �ε巴�� ���� ���ν���� ���� *�����ѻ�,�浿1960,�뱸���ΰ��� ���忡���� �Ǹ��ϴ� �����Դϴ�.' , 365,570,11,33,11,170);
insert into drink values (1029, 3, 2, 300, '���̽� �󺥴� ī�� �극��' , 'Iced Lavender Cafe Breve' , '���� ������ ���������� ���� ������ �󺥴����� ��޽����� ��췯�� �ε巴�� ���õ� ǳ���� �󺥴� ī�� �극��' , 335,110,18,27,6,105);
insert into drink values (1030, 3, 2, 300, '���̽� �ٴҶ� �� ��' , 'Iced Vanilla Bean Latte' , '�����길�� ���� �ٴҶ� �� �÷��� �ε巴�� ��췯�� ī�� ��' , 155,75,2.9,20,5,210);
insert into drink values (1031, 3, 2, 300, '���̽� ��Ÿ���� 1ȣ�� �ٴҶ� �� ��' , 'Iced Vanilla 1st Store Bean Latte' , '�ѱ� ��Ÿ���� 1ȣ���� �̴�R���� ��¡�ϴ� ������ �ٴҶ� �� ��.' , 159,90,2.9,21,6,210);
insert into drink values (1032, 3, 2, 300, '���̽� ��Ÿ���� 1ȣ�� ī�� ��' , 'Iced Starbucks 1st Store Cafe Latte' , '�ѱ� ��Ÿ���� 1ȣ���� �̴�R���� ��¡�ϴ� ������ ī�� ��.' , 117,100,3.2,9,6,210);

insert into drink values (1033 , 4, 2, 300 , '���������� ����Ǫġ��' , 'Espresso Frappuccino', '���������� ���� �����԰� �ణ�� �ܸ��� ��췯�� ����Ǫġ��', 145 , 115 ,1.1 , 29 , 2 , 120);
insert into drink values (1034 , 4, 2, 300 , '�ڹ�Ĩ ����Ǫġ��' , 'Java Chip Frappuccino', 'Ŀ��, ��ī �ҽ�, ���� ���ݸ� Ĩ�� �Ծ� ���� �������� ��Ÿ���������� ���� �� �ִ� ����Ǫġ��', 340 , 180 ,9 , 42 , 6 , 100);
insert into drink values (1035 , 4, 2, 300 , 'ī��� ����Ǫġ��' , 'Caramel Frappuccino', 'ī���� Ŀ�ǰ� ��췯�� ����Ǫġ��', 300 , 190 , 7 , 39 , 4 , 85);
insert into drink values (1036 , 4, 2, 300 , 'ȭ��Ʈ ���ݸ� ��ī ����Ǫġ��' , 'White Chocolate Mocha Frappuccino', 'ȭ��Ʈ ���ݸ�, Ŀ�ǿ� ������ ��ȭ�ο� ����Ǫġ��', 265 , 160 , 6 , 43 , 4 , 85);
insert into drink values (1037 , 4, 2, 303 , '���� ��� ũ�� ����Ǫġ��' , 'Jeju Black Sesame Cream Frappuccino', '[�������� ��������] ���� ��� ���� ����Ǫġ�� �������� �̱��� ������ ���� �� �Һ��� �������� �ź���ó�� �Դ� ����.', 600 , 330 , 7 , 79 , 9 , 0);
insert into drink values (1038 , 4, 2, 303 , '���� ���� ũ�� ����Ǫġ��' , 'Jeju Mugwort Cream Frappuccino', '[�������� ��������] ���� ���� ���� �ÿ��� ���������̱��̱��� ������ ������ �ô� ��̸� ��� �� �ִ� ����.', 460 , 250 , 10 , 57 , 8 , 0);
insert into drink values (1039 , 4, 2, 300 , '���� ����� ������ ���� ũ�� ����Ǫġ��' , ' Malcha Cream Frappuccino', '��� ���� ���� ������ ���� ���� �ÿ��ϰ� �ε巴�� ��� �� �ִ� ����Ǫġ��', 230 , 150 , 7 , 28 , 5 , 60);
insert into drink values (1040 , 4, 2, 300 , '���ݸ� ũ�� Ĩ ����Ǫġ��' , 'Chocolate Cream Chip Frappuccino', '��ī �ҽ��� ���� ���ݸ� Ĩ, ���ݸ� �帮���� �ö� ������ ũ�� ����Ǫġ��', 300 , 160 , 7 , 40 , 6 , 10);

insert into drink values (1041 , 5, 2, 300 , '���� �м� Ƽ �����' , 'Mango Passion Tea Blended', '���� �м� ����Ʈ �ֽ��� �м� �ʰ� Ƽ�� ��ŭ�ϰ� ��췯�� ���� �����', 150 , 105 , 0,  29 , 2 , 0);
insert into drink values (1042 , 5, 2, 300 , '���ѻ� ���� �� �׷��� �����' , 'Bukhansan Lemon Earl Grey Blended', '���� ���� ������ ��ŭ�� ������̵�� ������ �� �׷��� Ƽ�� ��췯�� ����� ����', 110 , 10 , 0.1,  25 , 0 , 8);
insert into drink values (1043 , 5, 2, 305 , '��Ÿ���� Ŭ���� ��ũƼ �����' , 'Starbucks Classic Milk Tea Blended', '��Ƽ�� ǳ�̿� ���� ���� ǳ��Ӱ� ������ �� �ִ� ��ũƼ �����', 315 , 55 , 13,  37 , 3 , 60);
insert into drink values (1044 , 5, 2, 303 , '���� �ٴ� ���� �����' , 'Yeosu Sea Yuja Blended', '���� ������ ���� �浵�� �� �ٴ� ǳ���� ����ȭ�� ����� ��ŭ�ϰ� ��� �� �ִ� ���� ����� ���� (����:������)', 235 , 10 , 0,  57 , 0 , 0);
insert into drink values (1045 , 5, 2, 303 , '�� �׸� �� �����' , 'The Green Mugwort Blended', '������ ���� ��� �������� ��췯�� ����ϰ� �����ϰ� ���� �����', 370 , 610 , 6,  40 , 13 , 157);
insert into drink values (1046 , 5, 2, 300 , '���� ������Ʈ ���Ʈ �����' , 'Strawberry Delight Yogurt Blended', '������� ����ִ� ���� ���Ʈ�� ǳ���� ���� �����̴��� ��ŭ�ϰ� ��췯�� ���� ���Ʈ �����', 370 , 110 , 4.3,  57 , 9 , 0);

insert into drink values (1047 , 6, 2, 302 , '���� �ƻ��� ������̵� ��Ÿ���� ��������' , 'Strawberry Acai  Starbucks Refreshers', '����, �ƻ��̺��� �ֽ��� ������̵尡 ���� ��ŭ�ϰ� ��ȭ�� ���� ������ ������ �ν����� �� �� �ִ� �������� ����.', 265 , 0 , 0,  62 , 1 , 73);
insert into drink values (1048 , 6, 2, 300 , '���� ��� ������̵� ��Ÿ���� ��������' , 'Mango Dragonfruit Starbucks Refreshers', '���� ����� ������̵尡 ���� ��ŭ�ϰ� ��ȭ�� ���������� ������ �ν����� �� �� �ִ� ����', 55 , 35 , 0,  23 , 0 , 25);
insert into drink values (1049 , 6, 2, 300 , '���� �帵ũ ���� ���� ��� ��Ÿ���� ��������' , 'Purple Drink Dragonfruit Starbucks Refreshers', '���� ����� ���ڳ� ��ũ�� �����ϰ� �ε巴�� ��ȭ�� ���� ������ ������ �ν����� �� �� �ִ� ����', 90 , 70 , 0,  16 , 0 , 25);

insert into drink values (1050 , 7 , 2 , 305 , '���� ���� ������' ,  'Red Apple Fizzio' , '���޻�ŭ�� ��������� ������ ��� �� �ִ� ���� ������' , 110 , 10 , 0 , 26 , 0 , 0);
insert into drink values (1051 , 7 , 2 , 300 , '���̽�ũ�� ���� ���� ������' ,  'Ice Cream Red Apple Fizzio' , '������ ���� ���̽�ũ���� �Բ� ���� ��ŭ�� ��������� �ε巴�� ���� �� �ִ� ���� ������' , 240 , 45 , 5 , 36 , 2 , 0);
insert into drink values (1052 , 7 , 2 , 303 , '���� �ٴ� �ڸ� ������' ,  'Yeosu Sea Grapefruit Fizzio' , '������ ǳ���� �ٶ󺸸� ��� �� �ִ� Ʈ������ ���� ����' , 250 , 105 , 0 , 45 , 1 , 0);
insert into drink values (1053 , 7 , 2 , 300 , '���� �м� ������' ,  'Yuja Passion Starbucks Fizzio' , '���޴��� ���� ���ڿ� ��Ÿ���� �ñ״�ó �м� �ʰ� Ƽ�� �� �� �� �� ź���� �־� �����ϴ� ������ ����.' , 145 , 5 , 0 , 36 , 0 , 0);
insert into drink values (1054 , 7 , 2 , 300 , '�� ���� ������' ,  'Cool Lime Starbucks Fizzio��' , '�׸� �� ������� �� ���� ���̽��� ������ ���� �����̽��� �ְ� ����Ŭ���� �ÿ��ϰ� û���� �ִ� �����Դϴ�.' , 105 , 20 , 0 , 25 , 0 , 110);
insert into drink values (1055 , 7 , 2 , 300 , '��ġ ���� ������' ,  'Peach Strawberry Starbucks Fizzio' , '��ŭ�� ���ϰ� û���� ź���� ��ȭ.' , 145 , 20 , 0 , 26 , 0 , 37);

insert into drink values (1056 , 8 , 1, 300 , '���̽� ũ�������� ��� ���' , 'Iced Christmas Ruby Vin Chaud', 'ī������ ��� ���� ������� �� ���� ���� ���� ���̽��� ���&�����̽����� �־� �߿� �ܿ￡ �� ��︮�� Ŭ������ ���' , 180 , 5 , 0 , 38 , 0 , 0);
insert into drink values (1057 , 8 , 1, 300 , '���̽� ��ũ ĳ���� ������' , 'Iced Pink Chamomile Relaxer', 'ũ���������� ��︮�� ������ �� �ܰ� ���� ��ũ ĳ���� ������!' , 130 , 10 , 0 , 24 , 0 , 1);
insert into drink values (1058 , 8 , 1, 300 , '���� ũ�� ����� ��' , 'Malcha Cream Brulee Latte', '�ε巯�� ����, �ٴҶ� ǳ�̿� �Խθ��� ������ ���� ��ȭ�Ӱ� ��췯�� ����Ʈ Ÿ���� ���� ��' , 325 , 140 , 10 , 35 , 9 , 46);
insert into drink values (1059 , 8 , 2, 300 , '��Ʈ ���� Ƽ' , 'Mint Blend Brewed Tea', '���Ǿ��Ʈ, ���۹�Ʈ, �����Ʋ�� ������ ������ ��� Ƽ' , 0 , 0 , 0 , 0 , 0 , 0);
insert into drink values (1060 , 8 , 2, 300 , '���̽� �� �׷��� Ƽ' , 'Iced Earl Grey Brewed Tea', '���� ������ �󺥴��� �������� ���� ���� ȫ���� ������ ����� �� Ƽ' , 0 , 0 , 0 , 0 , 0 , 50);
insert into drink values (1061 , 8 , 2, 304 , '��Ÿ���� Ŭ���� ��ũ Ƽ ��Ʋ' , 'Starbucks Classic Milk Tea Bottle', '���ϰ� ����� �� Ƽ�� ���� ǳ�̿� ������ ��ȭ�ο��� ��Ƴ� Ŭ���� ��ũ Ƽ�� ���� ��Ʋ�� �Բ�, ���� ��𼭳�, ���ϰ� ��ܺ�����.' , 485 , 130 , 21 , 51 , 7 , 195);

insert into drink values (1062 , 9 , 1, 300 , '��Ÿ���� ���� ��' , 'Starbucks Strawberry Milk', '�ų� �� ������ ��� �޴� ��Ÿ���� ���� �󶼰� �߿� �ܿ��� ��ŭ�ϰ� �����̷� ���ƿԴ�!' , 150 , 55 , 2 , 24 , 3 , 0);
insert into drink values (1063 , 9 , 2, 300 , '���� ����' , 'Steamed Milk', '�ε巴�� ����� ������ ����.' , 215 , 173 , 7 , 18 , 13 , 0);
insert into drink values (1064 , 9 , 2, 300 , '���̽� ���� ��� ��' , 'Iced Jeju Black Sesame Latte', '[�������� ��������] ���ֵ��� ������ �ϸ����� ǳ���� ���� �� �ִ� ����� ����� �����ڿ� ������ �Һ��� �������� �ÿ��ϰ� ������ ��� �� �ִ� ����' , 440 , 210 , 11 , 45 , 10 , 0);
insert into drink values (1065 , 9 , 2, 300 , '�ñ״�ó �� ���ݸ�' , 'Signature Hot Chocolate', '��� ���� ���ݸ��� �ε巯�� ����ũ���� �Ծȿ��� �縣�� ��� ���ݸ� ����' , 500 , 105 , 9 , 52 , 15 , 15);
insert into drink values (1066 , 9 , 2, 303 , '�÷��� �Ǵ� �� ���ݸ�' , 'Fluffy Panda Hot Chocolate', '����� ������Ӱ� ���� �����ݸ��� ����, �Ϳ��� �Ǵٱ��� ������ �÷��� �Ǵ� �� ���ݸ�!' , 470 , 160 , 17 , 48 , 12 , 0);

insert into drink values (1067 , 10 , 2, 306 , '�� �� �׸�' , 'Fill The Green', '���� �� ä�Ҹ� �����Ͽ� ���� �ֽ�!' , 90 , 15 , 1 , 15 , 0.2 , 0);
insert into drink values (1068 , 10 , 2, 306 , '�� �� ����' , 'Fill The Red', '���� �� ä�Ҹ� �����Ͽ� ���� �ֽ�!' , 90 , 16 , 1 , 45 , 0.1 , 0);
insert into drink values (1070 , 10 , 2, 306 , '�� �� ���ο�' , 'Fill The Yellow', '���� �� ä�Ҹ� �����Ͽ� ���� �ֽ�!' ,  100 , 16 , 1 , 0 , 0.1 , 0);
insert into drink values (1071 , 10 , 2, 306 , '���� �ֽ�' , 'Strawberry Juice', '������ ������ ������ ������ ��� �������� �ֽ�' , 110 , 25 , 0 , 30 ,0 , 0);
insert into drink values (1072 , 10 , 2, 306 , '����� ������ 100% �ֽ�' , 'Organic Orange 100% Juice', '�����̾� ����� ������ �ֽ��� �����λ� ������ ����!' , 95 , 20 , 2 , 5 ,0 , 0);

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

insert into Users values (30000 , '�̼���' , 'ler0101@naver.com' , 'qwe123!@' , 24, '010-8389-0439' , '��⵵ ������ �Ǽ��� ������66���� 33-6' , 'green');
insert into Users values (30001 , '�ֳ�ȯ' , 'qks30202@naver.com' , 'sudghks123@@' , 24, '010-8129-0559' , '����ϵ� ���ֱ� ȭ��� �ű��� 419' , 'gold');
insert into Users values (30002 , '������' , 'gustn02@naver.com' , 'gustn33@' , 20, '010-1129-0356' , '����ϵ� ���ֱ� ȭ��� �ű��� 419' , 'welcome');
insert into Users values (30003 , '�̴��' , 'eoqkr103@naver.com' , 'eoqkr66@' , 30, '010-4328-1263' , '������ Ⱦ���� �г��� �����425���� 112' , 'gold');
insert into Users values (30004 , '�̷ֹ�' , 'alfo1004@naver.com' , 'alfodlqslek12' , 15, '010-1269-0386' , '���������� �߱� ���� 1725-21' , 'welcome');
insert into Users values (30005 , '�輺��' , 'tjdtndi1233@naver.com' , 'tjdtnwlrma1' , 34, '010-1683-9283' , '��⵵ �ϳ��� ���Ϸ� 51-67' , 'green');
insert into Users values (30006 , '�̼���' , 'tnalsdldi103@naver.com' , 'tnalsdl2k' , 40, '010-1328-3858' , '��⵵ ȭ���� ��ź�� Ǫ�����Ƿ� 937-13' , 'green');
insert into Users values (30007 , '������' , 'wowjd9993@naver.com' , 'wowjd@@03' , 28, '010-1382-0863' , '��û���� û�籺 ����� ���Ƿ� 557-24 ' , 'welcome');
insert into Users values (30008 , '��ȿ��' , 'gytlsi393@naver.com' , 'gytlsdlqslek11' , 33, '010-1832-8695' , '���ֱ����� ���걸 ����ݿ���76���� 11' , 'gold');
insert into Users values (30009 , '�����' , 'qjatndis233@naver.com' , 'qjatndkd2' , 46, '010-8283-6823' , '��󳲵� ��õ�� �߷θ� �����캹�� 45-8' , 'gold');
insert into Users values (30010 , '������' , 'wlstndk11939@naver.com' , 'wlstn0429' , 19, '010-8652-8693' , '����Ư���� ���ı� ������13�� 13' , 'green');
insert into Users values (30011 , '���̷�' , 'alfo0233@naver.com' , 'dhtmsxlsr66@' , 29, '010-0183-0283' , '��û���� ���ɽ� �ֻ�� �ֻ꺢�ɷ� 94-62' , 'welcome');

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

--���� �߻��� �� �ִ� ����?


-- ���� �������� �׸� �̸��� ���� �̸��� �˷��ּ��� 

select theme.name , drink.korean_name
from theme, drink
where theme.id = drink.theme_id and drink.theme_id = 1;

-- �̼����� �����ϴ� ���� �̸�(�ѱ���) ?

select drink.korean_name
from Users_like,Users , drink
where Users_like.user_id = Users.id and  Users_like.drink_id = drink.id and  Users.user_name = '�̼���';

-- ������ �� ������ ������?

select count(drink.id)
from allergy_drink, drink , allergy
where drink.id=allergy_drink.drink_id and  allergy.id = allergy_drink.allergy_id and allergy.name like '%����%';

-- ���� ��Ÿ������ ������ ������?

select count(*)
from drink;

-- �ֳ�ȯ�� ���ƿ並 ���� ���� ����?

select count(*)
from Users_like , Users
where Users.id = Users_like.user_id and Users.user_name = '�ֳ�ȯ';

-- ���ֿ� ���õ� ������ ������ �˷��ּ��� 

select drink.korean_name , drink.comment
from drink
where comment like '%����%';


-- ī������ 0�� ����� ������ ������� ??

select drink.korean_name
from drink
where drink.ī���� = 0;

-- 300Į�θ� ������ ���� ����Ʈ�� �� ������ Į�θ��� �������� ������ �˷��ּ���

select drink.korean_name , drink.kcal
from drink
where drink.kcal <= 300
order by kcal desc;

--  green level �� �ִ� ����� �̸��� �̸����� �˷��� 

select Users.user_name , Users.email
from Users
where Users.grade = 'green';

-- ���� 30 �̻��� �������� �����ϴ� ���Ḧ �˷��� 

select drink.korean_name
from drink,Users , Users_like
where Users_like.drink_id = drink.id and Users_like.user_id = Users.id and  Users.age >= 30;  


-- ī�װ��� ������ ���� �˷��ּ��� 

select category.name , count(drink.id)
from drink , category
where drink.category_id = category.id
group by drink.category_id , category.name;

-- ���ƿ���� ���� ���� ���� ������� �˷���

select drink.korean_name, count(Users_like.id) as ���ƿ��
from drink , Users_like 
where Users_like.drink_id = drink.id
group by drink.id , drink.korean_name
order by count(Users_like.id) desc;


-- ���뺸Ʋ�� ��� ���ᰡ �ֳ���? �ִٸ� ���� �̸��� �ڸ�Ʈ�� �˷��ּ���

select drink.korean_name, drink.comment
from drink ,size
where drink.size_id = size.id and size.name = '���뺸Ʋ';

-- ���������� �߿� ����� ���� ���� �����̸��� ��������� �˷��� 

select drink.korean_name , drink.���
from drink , category
where drink.category_id = category.id and  drink.��� = (
														select MAX(���)
														from drink, category
														where drink.category_id = category.id  and category.name = '����������'
														);

-- 0kcal , ��� 0 , ī���� 0 �� ���Ḧ ã���ּ���

select drink.korean_name , drink.english_name
from drink
where drink.kcal = 0  and drink.��� = 0 and drink.ī���� = 0;

-- �ε巯�� ���Ḧ ��õ���� �� ������� ??

select drink.korean_name
from drink
where drink.comment like '%�ε巯��%';

-- ��Ÿ���� �����߿� �ܹ����� ���� ������� 5���� ©�� ����� ���� ��׷��� �������� ??

select avg(�ܹ���)
from drink
where �ܹ��� in (
				 select top 5 �ܹ���
				 from drink
				 order by �ܹ��� desc
);

-- ���ƿ� ���� ���� ���� ����� �����ΰ��� ??

select top 1 drink.korean_name
from drink , Users_like 
where Users_like.drink_id = drink.id
group by drink.id , drink.korean_name
order by count(Users_like.id) desc;


-- ��Ÿ���� ������ ��� ���������� ?

select avg(kcal) as Į�θ� , avg(���) as ��� ,avg(�ܹ���) as �ܹ��� ,avg(��Ʈ��) as ��Ʈ�� ,avg(��ȭ����) as ��ȭ���� , avg(ī����) as ī����
from drink;


-- ��� ���� ������ 0�� ���ᰡ ������� ? �� ������ �˷��ְ� ���Ḧ �����ϴ� ����� �ִٸ� �˷��ּ���
select korean_name , english_name , comment , kcal , ��Ʈ�� , ��ȭ���� , ��� , �ܹ��� , ī���� , Users.user_name
from drink , Users , Users_like
where Users.id = Users_like.user_id and Users_like.drink_id = drink.id and Users_like.drink_id = (
																									select id
																									from drink
																									where kcal = 0 and ��� = 0 and  �ܹ��� = 0 and ��Ʈ�� = 0 and ��ȭ���� = 0 and ī���� = 0
																									);


-- �索ȯ�ڸ� ���� ���� ���� ���Ḧ ��õ���ּ��� 

select korean_name , ��� 
from drink
where ��� = 0;

-- ��⵵ ��� ������� �����ϴ� ���� 

select korean_name,english_name ,comment
from drink , Users , Users_like
where Users.id = Users_like.user_id and Users_like.drink_id = drink.id and Users.current_address like '��⵵%';


-- ���ݸ��� �� ���Ḧ ��õ���ּ��� 

select korean_name,english_name,comment
from drink
where korean_name like '%���ݸ�%' or english_name like '%chocolate%' or comment like '%���ݸ�%';

-- 20����� �����ϴ� ���Ḧ ��õ���ּ��� 

select korean_name , english_name ,comment
from drink,Users , Users_like
where Users.id = Users_like.user_id and Users_like.drink_id = drink.id and Users.age  between 20 and 29;


-- ī������ ���� ���� ���Ḧ ��õ���ּ��� 

select korean_name , comment , ī����
from drink
where ī���� = (
			    select Max(ī����)
				from drink
				);


-- ���� �� ������ Į�θ��� ���� ���� ���ᰡ �����ΰ��� ??

select top 1 korean_name ,comment,  kcal
from drink , allergy , allergy_drink
where allergy.id = allergy_drink.allergy_id and allergy_drink.drink_id = drink.id and allergy.name like '%����%' 
order by kcal asc;


-- ȸ�� ��� ���� ������� �˷��ּ���

select grade , count(grade) 
from Users
group by grade;

-- ��Ÿ���� ȸ������ ��� ���̴� ??

select avg(age)
from Users;

-- �а��� �˷����� �ִ� ������� ���� ���Ḧ ��õ���ּ��� 

select drink.korean_name , drink.comment , allergy.name as �˷�����������
from drink, allergy , allergy_drink
where drink.id = allergy_drink.drink_id and allergy.id = allergy_drink.allergy_id and allergy.name not like '%��%';

-- Solo �������� ���Ḧ �����ϴ� ȸ���� �ֳ��� ??

select Users.user_name , drink.korean_name , size.name as ������
from Users , drink , size , Users_like
where Users.id = Users_like.user_id and  drink.id = Users_like.drink_id and drink.size_id = size.id and size.name = 'solo';



-- ���̰� 30�̻��� �������� �並 �������� 

create view ���̰�30�̻�
as select user_name,phone,age
	from Users
	where age >= 30;

select *
from ���̰�30�̻�
order by age;


-- ī������ 0�� �������� �並 �������� 

create view ī����0����
as select drink.korean_name,drink.comment,drink.ī����
	from drink
	where ī����=0;

select *
from ī����0����;