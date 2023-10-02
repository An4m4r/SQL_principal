-- Comando para criar banco de dados
CREATE DATABASE ADOTAPET;

-- Selecionar o banco de dados para uso
use ADOTAPET;

-- Criar tabela Animal
CREATE TABLE ANIMAL ( RG INT PRIMARY KEY, 
	NOME VARCHAR(15), 
	TIPO VARCHAR(20),
	RACA VARCHAR(30) );

-- Consultar dados da tabela
SELECT * FROM ANIMAL;

-- Inserir dados na tabela
INSERT INTO ANIMAL VALUES (100,'Rex','Cachorro','Pastor');
INSERT INTO ANIMAL VALUES (101,'Mingal','Gato','Siam�s');
INSERT INTO ANIMAL VALUES (102,'Pipoca','Cachorro','Shi tzu');
INSERT INTO ANIMAL VALUES (103,'Max','Papagaio','Verde');

SELECT NOME, TIPO FROM ANIMAL;
SELECT NOME, RACA FROM ANIMAL;
SELECT NOME, TIPO, RACA FROM ANIMAL;
SELECT * FROM ANIMAL WHERE TIPO = 'Cachorro';
SELECT * FROM ANIMAL WHERE RG = 103;


CREATE TABLE CLIENTE_W3 (
	COD_CLIENTE	INT PRIMARY KEY,
	NOME VARCHAR (50),
	NOME_CONTATO VARCHAR(30),
	ENDERECO VARCHAR (50),
	CIDADE VARCHAR (30),
	COD_POSTAL CHAR (15),
	PAIS CHAR(15)
)
go

INSERT INTO CLIENTE_W3 VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany')
INSERT INTO CLIENTE_W3 VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constituci�n 2222','M�xico D.F.','05021','Mexico')
INSERT INTO CLIENTE_W3 VALUES (3,'Antonio Moreno Taquer�a','Antonio Moreno','Mataderos 2312','M�xico D.F.','05023','Mexico')
INSERT INTO CLIENTE_W3 VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK')
INSERT INTO CLIENTE_W3 VALUES (5,'Berglunds snabbk�p','Christina Berglund','Berguvsv�gen 8','Lule�','S-958 22','Sweden')
INSERT INTO CLIENTE_W3 VALUES (6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany')
INSERT INTO CLIENTE_W3 VALUES (7,'Blondel p�re et fils','Fr�d�rique Citeaux','24, place Kl�ber','Strasbourg','67000','France')
INSERT INTO CLIENTE_W3 VALUES (8,'B�lido Comidas preparadas','Mart�n Sommer','C/ Araquil, 67','Madrid','28023','Spain')
INSERT INTO CLIENTE_W3 VALUES (9,'Bon app','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France')
INSERT INTO CLIENTE_W3 VALUES (10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada')
INSERT INTO CLIENTE_W3 VALUES (11,'Bs Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK')
INSERT INTO CLIENTE_W3 VALUES (12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina')
INSERT INTO CLIENTE_W3 VALUES (13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','M�xico D.F.','05022','Mexico')
INSERT INTO CLIENTE_W3 VALUES (14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland')
INSERT INTO CLIENTE_W3 VALUES (15,'Com�rcio Mineiro','Pedro Afonso','Av. dos Lus�adas, 23','S�o Paulo','05432-043','Brazil')
INSERT INTO CLIENTE_W3 VALUES (16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery ','London','WX1 6LT','UK')
INSERT INTO CLIENTE_W3 VALUES (17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany')
INSERT INTO CLIENTE_W3 VALUES (18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France')
INSERT INTO CLIENTE_W3 VALUES (19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK')
INSERT INTO CLIENTE_W3 VALUES (20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria')
INSERT INTO CLIENTE_W3 VALUES (21,'Familia Arquibaldo','Aria Cruz','Rua Or�s, 92','S�o Paulo','05442-030','Brazil')
INSERT INTO CLIENTE_W3 VALUES (22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain')
INSERT INTO CLIENTE_W3 VALUES (23,'Folies gourmandes','Martine Ranc�','184, chauss�e de Tournai','Lille','59000','France')
INSERT INTO CLIENTE_W3 VALUES (24,'Folk och f� HB','Maria Larsson','�kergatan 24','Br�cke','S-844 67','Sweden')
INSERT INTO CLIENTE_W3 VALUES (25,'Frankenversand','Peter Franken','Berliner Platz 43','M�nchen','80805','Germany')
INSERT INTO CLIENTE_W3 VALUES (26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France')
INSERT INTO CLIENTE_W3 VALUES (27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy')
INSERT INTO CLIENTE_W3 VALUES (28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez ','Jardim das rosas n. 32','Lisboa','1675','Portugal')
INSERT INTO CLIENTE_W3 VALUES (29,'Galer�a del gastr�nomo','Eduardo Saavedra','Rambla de Catalu�a, 23','Barcelona','08022','Spain')
INSERT INTO CLIENTE_W3 VALUES (30,'Godos Cocina T�pica','Jos� Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain')
INSERT INTO CLIENTE_W3 VALUES (31,'Gourmet Lanchonetes','Andr� Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil')
INSERT INTO CLIENTE_W3 VALUES (32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA')
INSERT INTO CLIENTE_W3 VALUES (33,'GROSELLA-Restaurante','Manuel Pereira','5� Ave. Los Palos Grandes','Caracas','1081','Venezuela')
INSERT INTO CLIENTE_W3 VALUES (34,'Hanari Carnes','Mario Pontes','Rua do Pa�o, 67','Rio de Janeiro','05454-876','Brazil')
INSERT INTO CLIENTE_W3 VALUES (35,'HILARI�N-Abastos','Carlos Hern�ndez','Carrera 22 con Ave. Carlos Soublette #8-35','San Crist�bal','5022','Venezuela')
INSERT INTO CLIENTE_W3 VALUES (36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA')
INSERT INTO CLIENTE_W3 VALUES (37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland')
INSERT INTO CLIENTE_W3 VALUES (38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK')
INSERT INTO CLIENTE_W3 VALUES (39,'K�niglich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany')
INSERT INTO CLIENTE_W3 VALUES (40,'La corne dabondance','Daniel Tonini','67, avenue de lEurope','Versailles','78000','France')
INSERT INTO CLIENTE_W3 VALUES (41,'La maison dAsie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France')
INSERT INTO CLIENTE_W3 VALUES (42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada')
INSERT INTO CLIENTE_W3 VALUES (43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA')
INSERT INTO CLIENTE_W3 VALUES (44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M. ','60528','Germany')
INSERT INTO CLIENTE_W3 VALUES (45,'Lets Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA')
INSERT INTO CLIENTE_W3 VALUES (46,'LILA-Supermercado','Carlos Gonz�lez','Carrera 52 con Ave. Bol�var #65-98 Llano Largo','Barquisimeto','3508','Venezuela')
INSERT INTO CLIENTE_W3 VALUES (47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela')
INSERT INTO CLIENTE_W3 VALUES (48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA')
INSERT INTO CLIENTE_W3 VALUES (49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy')
INSERT INTO CLIENTE_W3 VALUES (50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium')
INSERT INTO CLIENTE_W3 VALUES (51,'M�re Paillarde','Jean Fresni�re','43 rue St. Laurent','Montr�al','H1J 1C3','Canada')
INSERT INTO CLIENTE_W3 VALUES (52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany')
INSERT INTO CLIENTE_W3 VALUES (53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK')
INSERT INTO CLIENTE_W3 VALUES (54,'Oc�ano Atl�ntico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina')
INSERT INTO CLIENTE_W3 VALUES (55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA')
INSERT INTO CLIENTE_W3 VALUES (56,'Ottilies K�seladen','Henriette Pfalzheim','Mehrheimerstr. 369','K�ln','50739','Germany')
INSERT INTO CLIENTE_W3 VALUES (57,'Paris sp�cialit�s','Marie Bertrand','265, boulevard Charonne','Paris','75012','France')
INSERT INTO CLIENTE_W3 VALUES (58,'Pericles Comidas cl�sicas','Guillermo Fern�ndez','Calle Dr. Jorge Cash 321','M�xico D.F.','05033','Mexico')
INSERT INTO CLIENTE_W3 VALUES (59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria')
INSERT INTO CLIENTE_W3 VALUES (60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da sa�de n. 58','Lisboa','1756','Portugal')
INSERT INTO CLIENTE_W3 VALUES (61,'Que Del�cia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil')
INSERT INTO CLIENTE_W3 VALUES (62,'Queen Cozinha','L�cia Carvalho','Alameda dos Can�rios, 891','S�o Paulo','05487-020','Brazil')
INSERT INTO CLIENTE_W3 VALUES (63,'QUICK-Stop','Horst Kloss','Taucherstra�e 10','Cunewalde','01307','Germany')
INSERT INTO CLIENTE_W3 VALUES (64,'Rancho grande','Sergio Guti�rrez','Av. del Libertador 900','Buenos Aires','1010','Argentina')
INSERT INTO CLIENTE_W3 VALUES (65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA')
INSERT INTO CLIENTE_W3 VALUES (66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy')
INSERT INTO CLIENTE_W3 VALUES (67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil')
INSERT INTO CLIENTE_W3 VALUES (68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Gen�ve','1203','Switzerland')
INSERT INTO CLIENTE_W3 VALUES (69,'Romero y tomillo','Alejandra Camino','Gran V�a, 1','Madrid','28001','Spain')
INSERT INTO CLIENTE_W3 VALUES (70,'Sant� Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway')
INSERT INTO CLIENTE_W3 VALUES (71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA')
INSERT INTO CLIENTE_W3 VALUES (72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK')
INSERT INTO CLIENTE_W3 VALUES (73,'Simons bistro','Jytte Petersen','Vinb�ltet 34','K�benhavn','1734','Denmark')
INSERT INTO CLIENTE_W3 VALUES (74,'Sp�cialit�s du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France')
INSERT INTO CLIENTE_W3 VALUES (75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA')
INSERT INTO CLIENTE_W3 VALUES (76,'Supr�mes d�lices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium')
INSERT INTO CLIENTE_W3 VALUES (77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA')
INSERT INTO CLIENTE_W3 VALUES (78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA')
INSERT INTO CLIENTE_W3 VALUES (79,'Toms Spezialit�ten','Karin Josephs','Luisenstr. 48','M�nster','44087','Germany')
INSERT INTO CLIENTE_W3 VALUES (80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','M�xico D.F.','05033','Mexico')
INSERT INTO CLIENTE_W3 VALUES (81,'Tradi��o Hipermercados','Anabela Domingues','Av. In�s de Castro, 414','S�o Paulo','05634-030','Brazil')
INSERT INTO CLIENTE_W3 VALUES (82,'Trails Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA')
INSERT INTO CLIENTE_W3 VALUES (83,'Vaffeljernet','Palle Ibsen','Smagsl�get 45','�rhus','8200','Denmark')
INSERT INTO CLIENTE_W3 VALUES (84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France')
INSERT INTO CLIENTE_W3 VALUES (85,'Vins et alcools Chevalier','Paul Henriot','59 rue de lAbbaye','Reims','51100','France')
INSERT INTO CLIENTE_W3 VALUES (86,'Die Wandernde Kuh','Rita M�ller','Adenauerallee 900','Stuttgart','70563','Germany')
INSERT INTO CLIENTE_W3 VALUES (87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland')
INSERT INTO CLIENTE_W3 VALUES (88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil')
INSERT INTO CLIENTE_W3 VALUES (89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA')
INSERT INTO CLIENTE_W3 VALUES (90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland')
INSERT INTO CLIENTE_W3 VALUES (91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland')


SELECT * FROM CLIENTE_W3;
SELECT * FROM CLIENTE_W3 WHERE COD_CLIENTE > 80;

SELECT NOME, NOME_CONTATO, CIDADE
FROM CLIENTE_W3 
WHERE PAIS like '%Spain%';

SELECT NOME, NOME_CONTATO, CIDADE
FROM CLIENTE_W3 
WHERE NOME like 'C%';

SELECT * FROM CLIENTE_W3;
SELECT NOME,PAIS FROM CLIENTE_W3;
SELECT NOME, CIDADE, NOME, PAIS FROM CLIENTE_W3
SELECT * FROM ANIMAL; 
SELECT NOME FROM ANIMAL;
SELECT NOME,RACA FROM ANIMAL;
SELECT PAIS, CIDADE, NOME 

FROM CLIENTE_W3
WHERE CIDADE = 'Berlin'

SELECT COD_CLIENTE, NOME_CONTATO, CIDADE
FROM CLIENTE_W3
WHERE PAIS='Mexico'

SELECT NOME FROM CLIENTE_W3
WHERE PAIS= 'USA'


SELECT NOME FROM CLIENTE_W3
WHERE PAIS= 'FRANCE'

SELECT PAIS, COUNT(*)
FROM CLIENTE_W3
GROUP BY PAIS 
ORDER BY 2 DESC

