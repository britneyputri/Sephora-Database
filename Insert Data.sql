-- =============================================
-- Author:      Britney
-- Create date: 08 - Oct -2022
-- Description: Insert Data (Parent Table)
-- =============================================

insert into customer values
('timothy.tan@hotmail.com','Timothy Tan',92333211,'Non'),
('elissa.woo@hotmail.com','elissa Woo', 94691307, 'M'),
('david.lim@gmail.com','david Lim',95551617,'M'),
('justin.tan@gmail.com','Justin Tan', 95452835,'M'),
('joel.lim@hotmail.com','Joel Lim',96482109,'Non'),
('jacob.wong@hotmail.com','Jacob Wong',97435487,'M'),
('elle.ng@gmail.com', 'elle Ng', 92200867,'M'),
('melvin.chua@gmail.com', 'Melvin chua',95431809,'Non'),
('esther.chong@gmail.com','esther chong,',92357819,'M'),
('brendakim03@gmail.com','brenda Kim',97821456,'M'),
('clara.tan@yahoo.com','clara Tan', 99800746,'M'),
('natania.huang03@gmail.com','Natania Huang', 91024678, 'M'),
('jerald03@gmail.com','Jerald Lim','92365620','M');

insert into membership values 
('White',0),
('Black',150),
('Gold',300);

insert into `member` values
('elissa.woo@hotmail.com', 123456, '2003-09-09','2020-02-05'),
('david.lim@gmail.com',654321,'1988-01-03','2021-08-18'),
('justin.tan@gmail.com',246810,'1994-03-09','2019-01-28'),
('jacob.wong@hotmail.com',369123,'1985-07-02','2017-08-27'),
('elle.ng@gmail.com',481216,'1992-05-02','2018-01-16'),
('esther.chong@gmail.com',51052,'1999-01-06','2013-03-10'),
('brendakim03@gmail.com',612182,'1997-03-08','2019-03-22'),
('clara.tan@yahoo.com',816243,'1991-11-04','2018-12-17'),
('natania.huang03@gmail.com',918273,'1985-12-25','2017-03-19'),
('jerald03@gmail.com',102030,'1986-11-10','2019-01-11');

insert into beauty_service values
('S01',"Benefit She's a Stunner",70.00,'brow, lip, chin wax and tint'),
('S02',"Benefit 'Hair' You Go",37.00,'brow and lip wax'),
('S03','Benefit Brow Up',47.00, 'brow, wax and tint'),
('S04','Benefit Dashing Diva',59.00,'brow, lip wax and tint'),
('S05','Skincredible Skin Consultation',20.00,'sephora skincare service with skin analysis app and product recommendations'),
('S06','Sephora Flash Makeover Eye Makeup',20.00,'smokey eyes, party eyes, essential eyeliner'),
('S07','Sephora Flash Makeover Full Makeup',40.00,'flawless foundation, nude look, contour, blush & brzone, perfect lips'),
('S08','Sephora Custom Makeover',100.00, "full face makeover by sephora's beauty studio artist"),
('S09','Benefit Lip Wax',18.00, 'lip wax'),
('S10','Benefit Waxing Wonder', 29.00, "lip and chin wax");

insert into distributor values
('D1','Millions','100 Eu Tong Sen Street #02-37 Pearls Centre','059812'),
('D2','P&J','101c Telok Ayer Street #03-02','068574'),
('D3','Le Bono','502 Sims Avenue','387567'),
('D4','Natural Biocept','373 Balestier Rd','329709'),
('D5','Bath Labz','46a Crawford Lane','190462'),
('D6','Allies Group','101 Cecil Street #23-06 Tong Eng Building','069533'),
('D7','Nu Skin','315 Outram Road #05-06','169074'),
('D8','Au Naturale','351 Jalan Besar #02-04 Reliance Building','208988'),
('D9','LVMH','540 Sims Ave #04-01','387603'),
('D10','Au Lait','133 New Bridge Road #04-41 Chinatown Point','059413');


 insert into product values
('P01','Watermelon Glow Sleeping Mask','Skincare',45,'Glow Recipe','0'),
('P02','Glow Pink Dream Body Cream', 'Bath & Body',53,'Glow Recipe','0'),
('P03','Soft Eye Palette','Makeup',81,'Anastasia Beverly Hills','0'),
('P04','Purple Toning Shampoo','Hair',47,'Benefit','0'), 
('P05','Rose oil','Skincare',110,'Laura Mercier','0'),
('P06','Lightful Up Eye Cream','Skincare',70,'Mac Cosmetics','0'),
('P07','Duo Eyeshadow','Makeup',52,'NARS','0'), 
('P08','Bitter Mandarin cologne','Fragrance',228,'Tarte','0'),
('P09','Skin Foundation' ,'Makeup',79,'Bobbi Brown','0'), 
('P10','Clinique Moisturising Gel','Skincare',65,'Clinique','0'), 
('P11','Gloss Bomb Lip Gloss','Makeup',32,'Fenty Beauty','0') ;

 insert into shipment values
 ('P01', 620,'D6','2021/12/1'),
('P02',945,'D6', '2021/12/1'),
('P03',322,'D1','2021/12/1'),
('P04',803,'D2','2021/12/1'),
('P05',102,'D7','2021/12/1'),
('P06',684,'D8','2021/12/1'),
('P07',521,'D9','2021/12/1'),
('P08',1450,'D10','2021/12/1'),
('P09',282,'D3','2021/12/1'),
('P10',220,'D4','2021/12/1'),
('P11',678,'D5','2021/12/1');

insert into payment values
('PM01', '2021-12-11',241,'c'),
('PM02', '2022-01-01',243,'c'),
('PM03', '2022-01-05',212,'a'),
('PM04', '2022-01-05',94,'p'),
('PM05', '2022-01-10',330,'c'),
('PM08', '2022-01-14',456,'p'),
('PM07', '2022-01-16',104,'c'),
('PM06', '2022-01-17',140,'a'),
('PM09', '2022-01-25',316,'p'),
('PM10', '2022-01-28',260,'c'),
('PM11', '2022-01-31',64,'a'),
('PM12', '2022-02-03',32,'c'),
('PM13', '2021-12-12',70,'p'),
('PM15', '2022-01-02',37,'p'),
('PM14', '2022-01-06',47,'a'),
('PM18', '2022-01-06',47,'c'),
('PM19', '2022-02-10',47,'p'),
('PM16', '2022-01-12',100,'p'),
('PM17', '2022-01-20',18,'a'),
('PM21', '2022-09-17',18,'p'),
('PM20', '2022-01-22',18,'a'),
('PM22', '2022-03-28',18,'a'),
('PM23', '2022-02-03',422,'c'),
('PM24', '2022-03-31',143,'p'),
('PM25', '2022-03-31',45,'p'),
('PM26', '2022-03-31',106,'a'),
('PM27', '2022-03-31',106,'p');

 insert into purchase_order values
('O1', 'justin.tan@gmail.com','PM01', '2021/12/11','20:56:00','blk 22 boon Keng Rd #03-44','200322'), 
('O2','elissa.woo@hotmail.com','PM02','2022/01/01','15:22:00','blk 715 Woodlands dr 70 #07-146', '320715'),
('O3','brendakim03@gmail.com','PM03','2022/01/05','10:34:00','blk 951 Hougang avenue 9 #09-510','390951'),
('O4' ,'esther.chong@gmail.com','PM04',	'2022/01/05','12:43:00','blk 63 Teban Gardens Road #24-631','310063'),
('O5','joel.lim@hotmail.com','PM05','2022/01/10','21:44:00','blk 683a choa chu Kang crescent','340683'),
('O6','melvin.chua@gmail.com','PM08','2022/01/14','22:33:23','297 bedok South ave #03-01','300297'),
('O7','elle.ng@gmail.com','PM07','2022/01/16','23:13:24','8a bedok ave 2 #22-33','210298'),
('O8','clara.tan@yahoo.com','PM06','2022/01/17','23:55:21','Yishun Ring Road blk 236 #08-10','109236'),
('O9','joel.lim@hotmail.com','PM09','2022/01/25','10:23:00','block 23 ang Mo Kio ave 9 #16-08','120923'),
('O10','natania.huang03@gmail.com','PM10','2022/01/28','11:33:00','28a Lorong ong Lye #03-14','149328'),
('O11','david.lim@gmail.com','PM11','2022/01/31','12:55:00','choa chu Kang St.51 blk 523 #09-309','109523'),
('O12','clara.tan@yahoo.com','PM12','2022/02/03','19:19:00','blk 22 cashew Road #10-137','294822'),
('O13','natania.huang03@gmail.com','PM23','2022/02/03','19:19:00','28a Lorong ong Lye #03-14','149328'),
('O14','david.lim@gmail.com','PM24','2022/02/28','23:55:21','choa chu Kang St.51 blk 523 #09-309','109523'),
('O15','timothy.tan@hotmail.com','PM25','2022/03/31','10:23:00','10 Whampoa east #06-31','338521'),
('O16','joel.lim@hotmail.com','PM26','2022/03/31','11:33:00','12 Whampoa east #10-03','338522'),
('O17','melvin.chua@gmail.com','PM27','2022/03/31','12:55:00','348 balestier Rd, prestige Heights #09-03','329778');

insert into purchase_order_product values
('O1','P01',3),
('O1','P02',2),
('O2','P03',2),
('O3','P02',4),
('O4','P04',2),
('O5','P05',3),
('O6','P08',2),
('O7','P07',2),
('O8','P06',2),
('O9','P09',4),
('O10','P10',4),
('O11','P11',2),
('O12','P11',1),
('O13','P10',2),
('O13','P11',2),
('O13','P08',1),
('O14','P01',2),
('O14','P02',1),
('O15','P01',1),
('O16','P02',2),
('O17','P02',2);

insert into beauty_service_booking values
('B01','2021/12/12','20:56:00','B1','PM13','elle.ng@gmail.com','S01'),
('B02',	'2022/01/02','15:22:00','B2', 'PM15','david.lim@gmail.com','S02'),
('B03','2022/01/06','10:34:00','B3','PM14','elissa.woo@hotmail.com','S03'),
('B04', '2022/01/06','12:43:00','B4','PM18', 'natania.huang03@gmail.com','S03'),	
('B05','2022/02/10','21:44:00','B5','PM19', 'justin.tan@gmail.com','S03'),
('B06','2022/01/12','22:33:23','B6','PM16', 'jacob.wong@hotmail.com','S08'),
('B07','2022/01/20','23:13:24','B7','PM17','jerald03@gmail.com','S09'),
('B08',	'2022/09/17','23:55:21','B8','PM21','esther.chong@gmail.com','S09'),
('B09','2022/01/22','10:23:00', 'B9','PM20', 'brendakim03@gmail.com','S09'),
('B10','2022/03/28','11:33:00','B10','PM22','clara.tan@yahoo.com','S09');

Insert into atome values
('PM03','S-01245'),
('PM08','S-03982'),
('PM11','S-02343'),
('PM15','S-87651'),
('PM17','S-89739'),
('PM20','S-76518'),
('PM22','S-65178'),
('PM26','S-12465');

Insert into paypal values
('PM04', '112-233-134'),
('PM06', '126-134-450'),
('PM09', '289-542-753'),
('PM13', '243-643-327'),
('PM14', '210-345-520'),
('PM19', '218-353-520'),
('PM16', '211-354-519'),
('PM21', '102-453-520'),
('PM24', '102-435-205'),
('PM25', '112-349-521'),
('PM27', '111-345-205');

Insert into credit_card values
('PM01', '223-123-456-9','DBS'),
('PM02', '112-345-321-0','UOB'),
('PM05', '341-259-231-2','UOB'),
('PM07', '391-240-424-3','OCBC'),
('PM10', '341-204-420-1','HSBC'),
('PM12', '345-679-402-8','OCBC'),
('PM18', '341-194-400-9','HSBC'),
('PM23', '345-184-502-9','OCBC');