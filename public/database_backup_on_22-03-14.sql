

CREATE TABLE `admin_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_category (id, name, created_at, updated_at) VALUES ('1','Company','2021-09-12 11:03:49','2021-09-12 11:03:49');

INSERT INTO admin_category (id, name, created_at, updated_at) VALUES ('2','Charity','2021-09-12 11:03:53','2021-09-12 11:03:53');

INSERT INTO admin_category (id, name, created_at, updated_at) VALUES ('3','Individual','2021-09-12 11:04:01','2021-09-12 11:04:01');


CREATE TABLE `admin_clients_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_highlights` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deduction_highlights` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attached_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dependents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bs_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dependents_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resident` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_own_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_fee` int(11) DEFAULT NULL,
  `home_tax_fee` int(11) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dod_date` date DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('3','Abel','Miloslav','','1968-11-05','1','Individual','499-989-929','','123','Canada',',1,5,7,11,15,',',1,8,11,','','<p>Moving on Feb 16, 2022</p>','','','','','','2021-09-26 17:09:00','2022-02-16 16:06:06','','','Abel Miloslav','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('4','Abramowitz','Carolyn','','1972-05-28','1','Individual','','','','',',3,9,11,13,17,','','','','','','','','','2021-10-03 12:31:53','2021-10-06 12:25:55','269-566-121','','Abramowitz Carolyn','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('5','Adamus','Jerzy','','1956-03-04','2','Individual','','','','',',1,3,6,9,16,',',1,4,5,7,','','','','','','','','2021-10-04 06:28:50','2021-10-25 09:10:13','502-800-337','','Adamus Jerzy','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('6','Adu','Akosua','','1989-11-12','1','','','','','',',8,9,12,14,','','','','552-957-581','','No','','','2021-10-05 18:22:20','2021-10-14 07:09:10','','2','Adu Akosua','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('7','Akira','','','','1','','','','','','','','','','','','Yes','','','2021-10-06 12:10:22','2021-10-14 06:58:30','','2','Akira ','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('9','Akhbari','Jafar','','1954-12-05','2','Individual','(416) 226-9335','','371 KENNETH AVENUE Apt #17','--','','','','','','','No','','','2021-10-28 15:36:08','2022-02-28 16:14:16','502-327-653','','Akhbari Jafar','','','','','','maryakhbari@gmail.com','TORONTO, ON, M2N 4V9','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('10','Akhbari','Movarid','','1983-04-29','2','Individual','','','','','','','','','','','No','','','2021-10-28 15:36:55','2021-10-28 15:36:55','502-572-050','','Akhbari Movarid','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('11','Brenda','Siddall','','1948-10-03','2','Individual','416-779-8983','','150 Lake Shore Drive, Toronto, ON, M8V 2A4','CANADA',',2,4,6,9,',',9,11,','','','','','No','','','2021-10-29 09:28:28','2021-10-29 09:37:01','438 874 273','','Brenda Siddall','no','own','','4263','12','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('12','David','Burns','','1953-11-06','2','Individual','416-779-8983','','150 Lake Shore Drive, Toronto, ON, M8V 2A4','CANADA',',2,3,4,6,9,11,',',1,','','','','','No','','','2021-10-29 09:35:18','2021-10-29 09:35:18','449 779 8983','','David Burns','no','own','','','11','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('13','James','Lyons','W','1943-05-22','2','Individual','905-742-7586','','','CANADA',',1,3,4,6,9,11,12,13,',',8,','','','','','No','','','2021-10-29 09:46:11','2022-02-24 21:12:21','420 043 945','','James Lyons','no','own','','','14','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('14','Virginia','Lyons','','1947-02-14','2','Individual','905-742-7586','','54-80 Marsh Ave, Peterborough, ON, K9H0J5,','CANADA',',4,6,9,',',9,11,','','<p>$500 donation to LCF for 2021</p>','','','No','','','2021-10-29 09:48:29','2021-11-12 12:11:40','401 975 735','','Virginia Lyons','no','own','','','13','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('15','Robert','Munro','','1942-08-28','1','Individual','416-521-7437','','40 Dunning Ave, Toronto, M8W 4S8','CANADA',',1,3,4,6,7,9,11,',',1,11,','','','','','No','','','2021-10-29 09:59:37','2021-10-29 09:59:37','409 907 052','','Robert Munro','no','own','','4063','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('16','Ila','Munro','','1967-02-21','1','Individual','416-521-7437','','40 Dunning Ave, Toronto, M8W 4S8','CANADA',',1,7,',',1,2,9,11,','','','','','No','','','2021-10-29 10:01:29','2021-10-29 10:01:29','487 311 441','','Ila Munro','no','own','','4063','15','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('17','Vonda','MacLennan','H','1944-03-29','1','Individual','','','1523 Farr Road, Tory Hill, ON, K0L 2Y0','',',4,6,',',9,','','Express Client. Very quick return.','','','No','','','2021-10-29 10:46:06','2021-10-31 16:05:58','403 056 633','','Vonda MacLennan','no','own','','1762','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('18','Matthew','Robinson','Allan','1975-03-01','1','Individual','639997771983','','Villa EvaMae Bulabog Balabag Boracay Malay Aklan','','','','','mattrob99@hotmail.com','727 808 057','','No','','','2021-10-29 11:30:56','2021-10-29 11:33:13','727 808 057','','Matthew Robinson','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('19','Ian','Hodge','','1992-02-07','1','Individual','647-291-4634','','124-320 Avenue Rd, Toronto, ON','CANADA','','','','','','','No','','','2021-10-29 11:35:52','2021-10-29 11:35:52','538 166 810','','Ian Hodge','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('20','Amanda','Lorefice','A','1981-03-23','1','Individual','','','506-20 Joe Shuster Way, Toronto, ON, M6K 0A3','CANADA',',3,19,','','','','','','No','','','2021-10-31 14:44:31','2021-12-06 10:19:51','517 861 290','','Amanda Lorefice','','own','','1229','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('21','Nick','Platsk','','1961-06-23','1','Individual','416-252-4806','','45 Long Branch Ave, Toronto, Ontario, M8W 3J1','CA',',1,2,3,4,6,11,','','','','','','No','','','2021-11-15 16:54:38','2021-11-15 16:54:38','481-347-615','','Nick Platsk','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('23','Eric','Hall','','0950-01-26','1','Individual','','','58 Bloomingdale Drive, Brampton, ON, L6W 4A6','--','','','','','','','No','','','2021-11-15 17:01:51','2021-11-15 17:01:51','428-834-204','','Eric Hall','','','','','22','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('27','Mary','Amibor','','1955-10-03','1','Individual','','','','--','','','','','','','No','','','2021-11-15 17:12:38','2022-02-16 16:06:40','491-868-352','','Mary Amibor','','','','','49','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('28','Tomas','Sherwood','A','2020-05-30','1','Individual','416-535-6760','','274 Gamma Street, Toronto, ON,  M8W 4H1, Canada','CA',',1,','','','','','','No','','','2021-11-16 11:44:54','2021-11-16 11:44:54','556 803 719','','Tomas Sherwood','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('43','Robert','Jones','','1964-03-31','2','Individual','9056243321','','36 Thirty fifth St., Toronto ON., M8W3K2','CA',',1,2,11,13,',',2,','','','','','No','','','2021-12-02 13:35:24','2021-12-02 13:35:24','','','Robert Jones','no','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('44','Tim','Hogan','','1962-11-19','2','Individual','647-863-9301','','123-1455 Wilson Ave. North York, ON., M3M1H4,','CA',',1,7,12,','','','','','','Yes','','','2021-12-02 13:47:38','2021-12-02 13:47:38','','','Tim Hogan','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('45','Maria','Platsis','','1962-06-23','2','Individual','416-252-4806','','45 Long Branch Ave. Toronto ON, M8W 3J1','CA',',1,2,4,6,7,11,','','','','','','No','','','2021-12-02 14:50:27','2021-12-02 14:55:11','','','Maria Platsis','no','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('46','Elizabeth','Hall','','1961-06-23','2','Individual','416-721-7539','','5B Bloomingdale DR., Brampton, ON L6W 4A6','CA',',2,7,11,','','','','','','No','','','2021-12-02 14:54:04','2021-12-02 14:58:17','','','Elizabeth Hall','no','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('47','Richard','Habinka','','1948-04-30','2','Individual','905-238-9522','','51-2120 Rathburn Rd., E, Mississauga, ON L4W 2S8','CA',',2,3,6,11,','','','','','','No','','','2021-12-02 14:57:51','2021-12-02 14:57:51','','','Richard Habinka','yes','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('48','Susan','Anderson','','1950-03-20','2','Individual','416-252-4056','','','CA',',3,4,6,11,','','','<p>Requested life annuity, immediate payouts, $1M. Waiting results for presenation.</p>','','','No','','','2021-12-02 15:01:36','2022-02-28 13:38:42','441-752-912','','Susan Anderson','no','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('49','Emmanuel','Amibor','','1950-05-13','2','Individual','416-251-9021','','','CA',',1,3,4,11,',',2,10,','','','','','No','','','2021-12-02 15:06:20','2022-02-16 16:11:20','491-868-345','','Emmanuel Amibor','','','','','27','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('50','Tomas','Sherwood','','2000-05-30','2','Individual','416-535-6760','','274 Gamma St. Toronto, ON M8W 4H1','CA',',1,','','','','','','No','','','2021-12-02 15:08:45','2021-12-02 15:08:45','','','Tomas Sherwood','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('51','Lily','Maharaj','','1951-03-02','2','Individual','416-809-5459','','1108-350 Pricess Royal Dr., Mississauga, ON, L5B 4N1','CA',',2,3,4,6,9,',',1,9,','','','','','No','','','2021-12-02 15:13:56','2021-12-02 15:32:14','','','Lily Maharaj','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('52','Alice','Tourout','','1952-04-04','2','Individual','6478631289','','49-1812 Burnathorpe Rd., E. Mississauga, ON, L4X 0A3','--',',3,4,6,11,',',9,','','','','','No','','','2021-12-02 15:20:58','2021-12-02 15:31:51','','','Alice Tourout','yes','','','','53','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('53','Raymond','Tourout','','1950-11-10','2','Individual','647-863-1289','','49-1812 Burnathorpe Rd., E. Mississauga, ON, L4X 0A3','--',',1,','','','','','','No','','','2021-12-02 15:23:49','2021-12-02 15:31:42','','','Raymond Tourout','no','','','','52','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('54','Kevin','Maharaj','','1978-11-25','2','Company','4169978255','','6202 Ford Rd., Mississauga, ON, L5V 1X2','CA',',1,2,11,',',2,15,','','','','','No','','','2021-12-02 15:26:46','2022-03-08 10:38:04','508787876','','Kevin Maharaj','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('55','Martyna','Czub','','1990-09-02','2','Individual','437-333-0988','','220 Lakepromenade #706., Etobicoke ON M8W 1A9','--',',17,','','','','','','No','','','2021-12-02 15:28:56','2021-12-02 15:31:11','','','Martyna Czub','','','','','56','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('56','Lukasz','Tecza','','1989-02-19','2','Individual','416-300-2408','','220 Lakepromenade #706., Etobicoke ON M8W 1A9','CA','','','','','','','No','','','2021-12-02 15:30:36','2021-12-02 15:30:36','','','Lukasz Tecza','','','','','55','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('57','Teresa','Kozel','','','2','','','','','--','','','','','','','No','','','2021-12-02 15:33:54','2021-12-02 15:33:54','','','Teresa Kozel','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('58','ERIKAL','AGNEW','','','1','','(647) 292-6030','','24 LANSING SQ, BRAMPTON, ON, L6Z 1E6','--','','','','','','','No','','','2022-01-23 22:21:05','2022-01-23 22:21:05','490-194-941','','ERIKAL AGNEW','','','','','','agnewerika@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('59','AIDA','ALEJO','','1953-10-11','1','','(647) 285-5257','','187 Symons Street, TORONTO, ON, M8V 1V1','--','','','','','','','No','','','2022-01-23 22:26:35','2022-01-23 22:26:35','588-479-998','','AIDA ALEJO','','','','','','aidaalejo1108@yahoo.com','Apt #3','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('60','FATEMEH','ALI','','1931-05-22','1','','(289) 242-4517','','39 TWENTY FIFTH ST, TORONTO, ON, M8V 3P6','--','','','','','','','No','','','2022-01-23 22:28:38','2022-01-23 22:28:38','550-866-644','','FATEMEH ALI','','','','','','','Apt #1','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('61','PAULSON','AMIBOR','','1983-12-09','1','','(416) 937-5005','','41 JELLICOE AVENUE, ETOBICOKE, ON, M8W 1W2','--','','','','','','','No','','','2022-01-23 22:31:17','2022-01-23 22:31:17','514-453-695','','PAULSON AMIBOR','','','','','','p.amibor@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('62','SUSAN','AMIBOR','','1988-05-17','1','','','','41 JELLICOE AVENUE, ETOBICOKE, ON, M8W 1W2','--','','','','<p>She married someone and is no longer getting her taxes done with the family.</p>','','','No','','','2022-01-23 22:37:19','2022-02-16 16:17:05','523-053-866','','SUSAN AMIBOR','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('63','GLENN','ANDERSON [dead]','','1949-01-19','1','Company','(416) 252-4056','','61 ASH CRESCENT, TORONTO, ON, M8W 1E5','--','','','','','','','No','','','2022-01-23 22:38:41','2022-02-28 13:18:34','426-519-153','','GLENN ANDERSON [dead]','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('64','JAMES PETER','ANDERSON','','1982-10-25','1','','(647) 328-4808','','61 ASH CRES, TORONTO, ON, M8W 1E5','--','','','','','','','No','','','2022-01-23 22:42:19','2022-01-23 22:42:19','511-582-587','','JAMES PETER ANDERSON','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('65','HEATHER','ANDERSON','','1985-07-14','1','','(647) 979-2752','','45 PAISLEY BLVD WEST, MISSISSAUGA, ON, L5B 1E4','--','','','','','','','No','','','2022-01-23 22:43:50','2022-01-23 22:43:50','520-437-393','','HEATHER ANDERSON','','','','','','','Apt #103','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('66','TINA','ANTONOPOULOS','','1968-12-13','1','','(416) 752-1161','','26 ADAIR ROAD, TORONTO, ON, M4B 1V5','--','','','','','','','No','','','2022-01-23 22:45:12','2022-01-23 22:45:12','479-856-791','','TINA ANTONOPOULOS','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('67','TONY','ANTONOPOULOS','','1969-09-15','1','','(416) 752-1161','','26 ADAIR ROAD, TORONTO, ON, M4B 1V5','--','','','','','','','No','','','2022-01-23 22:46:19','2022-01-23 22:46:19','488-619-487','','TONY ANTONOPOULOS','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('68','MICHAEL','ASHTON','','0957-02-01','1','','(416) 503-4713','','1207-38 JOE SHUSTER WAY, TORONTO, ON, M6K 0A5','--','','','','','','','No','','','2022-01-23 22:48:34','2022-01-23 22:48:34','453-673-832','','MICHAEL ASHTON','','','','','','michael.ashton@sympatico.ca','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('69','GURAMRITPAL','AUJLA','SINGH','1997-04-09','1','','(905) 712-9973','','892 PRESTON MANOR DRIVE, MISSISSAUGA, ON, L5V 2L5','--','','','','','','','No','','','2022-01-23 22:51:07','2022-01-23 22:51:07','580-786-770','','GURAMRITPAL AUJLA','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('70','GURKAMAL','AUJLA','KAUR','1999-09-07','1','','(905) 712-9973','','892 PRESTON MANOR DRIVE, MISSISSAUGA, ON, L5V 2L5','--','','','','','','','No','','','2022-01-23 22:52:07','2022-01-23 22:52:07','580-786-820','','GURKAMAL AUJLA','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('71','HELEN','BAILEY','','1951-07-19','1','','(416) 253-0522','','25 NINETEENTH ST, ETOBICOKE, ON, M8V 3L4','--','','','','','','','No','','','2022-01-24 03:02:53','2022-01-24 03:02:53','444-747-703','','HELEN BAILEY','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('72','JAMES','BALDWIN','','1956-03-24','1','','4162526548','','50 THIRTY SEVENTH STREET, TORONTO, ON, M8W 3L8','--','','','','','','','No','','','2022-01-24 05:40:23','2022-01-24 05:40:23','444-738-504','','JAMES BALDWIN','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('73','JODIE','BECKER','','1983-08-17','1','','(416) 568-5167','','410 QUEENS QUAY  WEST, TORONTO, ON, M5V 3T1','--','','','','','','','No','','','2022-01-24 05:41:51','2022-01-24 05:41:51','522-070-788','','JODIE BECKER','','','','','','','Apt #1101','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('74','CINDY','BEDNAR','','1966-10-04','1','','4162531854','','64 VICTORIA STREET, TORONTO, ON, M8V 1M6','--','','','','','','','No','','','2022-01-24 05:45:53','2022-01-24 05:45:53','479-895-666','','CINDY BEDNAR','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('75','MICHAEL','BELLIVEAU','','1970-03-10','1','','4169061712','','5 TWENTY SEVENTH STREET, TORONTO, ON, M8W 2X2','--','','','','','','','No','','','2022-01-24 06:52:08','2022-01-24 06:52:08','490-111-689','','MICHAEL BELLIVEAU','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('76','WILLIAM','BERG','','1930-04-04','1','','4162555952','','27 ARCADIAN CIRCLE, TORONTO, ON, M8W 2Z2','--','','','','','','','No','','','2022-01-24 06:54:07','2022-01-24 06:54:07','424-664-308','','WILLIAM BERG','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('77','RUTH','BERG','S','1935-09-09','1','','(416) 255-5952','','27 Arcadian Cir, ETOBICOKE, ON, M8W 2Z2','--','','','','','','','No','','','2022-01-24 06:55:34','2022-01-24 06:55:34','413-209-743','','RUTH BERG','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('78','NEIL','BLAIS','R','1978-10-19','1','','(705) 822-2672','','555 DEW DROP ROAD, SUDBURY, ON, P3G 1K9','--','','','','','','','No','','','2022-01-24 07:05:01','2022-01-24 07:05:01','505-054-833','','NEIL BLAIS','','','','','','fraserconstruction.inc@gmail.com newtconstruction@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('79','Brenda','Bowen','','1952-06-18','1','','(905) 855-8226','','2440 Bromsgrove RD, Mississauga, ON, L5J 4J7','--','','','','','','','No','','','2022-01-24 07:06:29','2022-01-24 07:06:29','445-936-800','','Brenda Bowen','','','','','','','Apt #110','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('80','Christopher','Boylan','','','1','','','','1232 ELLIS STREET, Kelowna, BC, V1Y 1J6','--','','','','','','','No','','','2022-01-24 07:07:59','2022-01-24 07:07:59','588-854-844','','Christopher Boylan','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('81','TRACI','BRAMLEY','','1962-05-02','1','','(416) 670-1700','','35 THIRTY EIGHTH ST, 35 THIRTY EIGHTH ST, ON, M8W 3M1','--','','','','','','','No','','','2022-01-24 13:06:13','2022-01-24 13:06:13','477-532-956','','TRACI BRAMLEY','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('82','GIORGIO','BRAMUZZO','','1940-03-20','1','','(416) 259-5788','','176 LAKE SHORE DRIVE, ETOBICOKE, ON, M8V 2A9','--','','','','','','','No','','','2022-01-24 13:07:25','2022-01-24 13:07:25','424-068-922','','GIORGIO BRAMUZZO','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('83','ERIC','BREITENEDER','','1960-07-04','1','','(416) 255-3616','','99 NORTH CARSON ST, TORONTO, ON, M8W 4C6','--','','','','','','','No','','','2022-01-24 13:08:57','2022-01-24 13:08:57','483-271-722','','ERIC BREITENEDER','','','','','','ericbreit@hotmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('84','LILL','BREITENEDER','','1968-03-08','1','','(416) 255-3616','','99 NORTH CARSON ST, TORONTO, ON, M8W 4C6','--','','','','','','','No','','','2022-01-24 13:10:13','2022-01-24 13:10:13','485-216-659','','LILL BREITENEDER','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('85','KARINA','BREITENEDER','','','1','','(416) 255-3616','','99 NORTH CARSON ST, TORONTO, ON, M8W 4C6','--','','','','','','','No','','','2022-01-24 13:10:51','2022-01-24 13:10:51','','','KARINA BREITENEDER','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('86','STEPHANIE','BRISTER','','1953-07-06','1','','(416) 716-3049','','1080 LAKESHORE ROAD WEST, ST. CATHARINES, ON, L2R 6P9','--',',4,6,8,',',17,','','<p>Sold house in St. Cats for $1.9M in 2020.</p>','','','No','','','2022-01-24 13:12:00','2022-02-28 12:53:39','441-579-331','','STEPHANIE BRISTER','','','','','91','stephaniejbrister@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('87','Zenebe','Brook','','','1','','','','63 FAIRFIELD AVE, Toronto, ON, M8W 1R6','--','','','','','','','No','','','2022-01-24 13:13:00','2022-01-24 13:13:00','','','Zenebe Brook','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('88','Marc','Bruneau','','1971-05-11','1','','','','73-30 Carnation Ave, TORONTO, ON, M8V 0B8','--','','','','','','','No','','','2022-01-24 13:13:59','2022-01-24 13:13:59','267-975-233','','Marc Bruneau','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('89','Angela','Bruneau','','1981-10-26','1','','','','73-30 Carnation Ave, TORONTO, ON, M8V 0B8','--','','','','','','','No','','','2022-01-24 13:14:51','2022-01-24 13:14:51','734-471-337','','Angela Bruneau','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('90','SASHA','BRUNO','','1979-03-12','1','','(705) 822-2672','','555 DEW DROP ROAD, SUDBURY, ON, P3G 1K9','--','','','','','','','No','','','2022-01-24 13:17:29','2022-01-24 13:17:29','513-350-280','','SASHA BRUNO','','','','','','sashabruno@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('91','MICHAEL','BUCHANAN [dead]','','1943-09-08','1','Company','(905) 937-1313','','','--',',3,4,6,9,23,','','','','','','No','','','2022-01-24 13:46:32','2022-01-26 15:31:18','418-539-771','','MICHAEL BUCHANAN [dead]','','','','','86','lakehouse1080@sympatico.ca','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('92','HEIDI','BUCHANAN','','','1','','(416) 252-1380','','417 LAKE PROMENADE, TORONTO, ON, M8W 1C3','--','','','','','','','No','','','2022-01-24 13:47:49','2022-01-24 13:47:49','420-447732','','HEIDI BUCHANAN','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('93','DAMON','BUCHANAN','MOSS','1976-08-14','1','','(416) 315-6955','','417 LAKE PROMENADE, TORONTO, ON, M8W 1C3','--','','','','','','','No','','','2022-01-24 13:49:13','2022-01-24 13:49:13','483-448-130','','DAMON BUCHANAN','','','','','','mossbuchanan@rogers.com darkarmylogistics@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('94','SARAH','BUCK','MABEL','2002-10-10','1','','(416) 347-7385','','172 OAKRIDGE DR, TORONTO, ON, M1M 2B1','--','','','','','','','No','','','2022-01-24 13:50:57','2022-01-24 13:50:57','540-991-700','','SARAH BUCK','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('95','BISRAM','BUDHWA','','1973-05-31','1','','9056780794','','4024 LONGO CIRCLE, MISSISSAUGA, ON, L4T 4C7','--','','','','','','','No','','','2022-01-24 13:53:03','2022-01-24 13:53:03','495-358-780','','BISRAM BUDHWA','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('96','CARMEN','BURGOA','','1958-02-11','1','','(647) 674-7947','','56 ANNIE CRAIG DRIVE, ETOBICOKE, ON, M8V 0C4','--','','','','','','','No','','','2022-01-24 13:56:22','2022-01-24 13:56:22','250-014-107','','CARMEN BURGOA','','','','','','','APT #502','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('97','Catherine','Bustamante','','1943-03-02','1','','(416) 255-4264','','5-6 Lake Shore Dr, ETOBICOKE, ON, M8V 1Z1','--',',3,','','','','','','No','','','2022-01-24 13:58:51','2022-02-08 11:08:29','415-187-673','','Catherine Bustamante','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('98','KARL','BUSTAMANTE','','1978-03-27','1','','(416) 995-4332','','350 OSLER STREET, TORONTO, ON, M6N 2Z5','--','','','','<p>Karl is a mid-40s professor at Ryerson in Toronto. He manages the books and reporting for this family\'s 4 apartment complexes. He has a boyfriend and a younger sister.</p>','','','No','','','2022-01-24 13:59:55','2022-01-26 14:25:57','506-170-083','','KARL BUSTAMANTE','','','','','','karl.e.bustamante@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('99','Manuel','Bustamante [dead]','','1942-06-25','1','Company','(416) 255-4264','','','--',',23,','','','','','','No','','','2022-01-24 14:01:23','2022-02-11 07:50:48','709-617-542','','Manuel Bustamante [dead]','','','','','','manny.bustamante2@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('100','TONY AND TINA','ANTONOPOULOS','','1969-12-31','1','','','','26 ADAIR ROAD','','','','','','','','','','','','','','','TONY AND TINA ANTONOPOULOS','','','','','','','','','TORONTO','ON','M4B 1V5','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('101','MICHAEL','ASHTON','','1969-12-31','1','','','','1207-38 JOE SHUSTER WAY','','','','','','','','','','','','','','','MICHAEL ASHTON','','','','','','','','','TORONTO','ON','M6K 0A5','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('102','GURAMRITPAL','AUJLA','','1969-12-31','1','Company','','','892 PRESTON MANOR DRIVE','--','','','','','','','','','','','2022-03-08 07:11:20','','','GURAMRITPAL AUJLA','','','','','','','','3222-02-02','MISSISSAUGA','ON','L5V 2L5','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('103','WILLIAM','ROBSON','','1967-08-10','1','individual','4162010600','','36 SILVERCREST AVENUE','Canada','','','','','','','','','','','','484295639','','WILLIAM ROBSON','','','','','','','','','TORONTO','ON','M8W 2S5','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('104','MARA','RUFFOLO','','1963-12-23','1','individual','6472843905','','3380 LAKESHORE BLVD WEST','Canada','','','','','','','','','','','','472690213','','MARA RUFFOLO','','','','','','','','','TORONTO','ON','M8W 1M9','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('105','TIIU','RUGGEIRO','','1950-08-24','1','Company','4162363359','','17 FERNALROY BLVD','--','','','','<p>Test</p>','','','','','','','2022-03-09 08:08:13','441583481','','TIIU RUGGEIRO','','','','','','','','2022-03-01','TORONTO','ON','M8Z 3V9','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('106','Dejan','Pajic','','','1','','0603789306','','Kralja Aleksandra 1. BROJ 19. STAN 10','--',',1,5,',',14,','','','','','Yes','','','2022-03-11 10:08:16','2022-03-11 10:08:16','','18','Dejan Pajic','yes','own','','234234','','pajicdejan09@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('107','Fernando','Tinocoo','','','1','','+381615540585','','Goce Delceva 28 11010 Belgrade, Serbia','--',',1,2,6,','','','','','','No','','','2022-03-11 10:30:51','2022-03-11 10:30:51','','','Fernando Tinocoo','','','','','','web.freelancer215@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('108','Fernando','Tinocoo','','','1','','+381615540585','','Goce Delceva 28 11010 Belgrade, Serbia','--',',1,2,3,8,14,','','','','','','No','','','2022-03-11 10:47:19','2022-03-11 10:47:19','','','Fernando Tinocoo','','','','','','web.freelancer215@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('109','Fernando','Tinocoo','','','1','','+381615540585','','Goce Delceva 28 11010 Belgrade, Serbia','--',',4,5,12,','','','','','','No','','','2022-03-11 10:48:03','2022-03-11 10:48:03','','','Fernando Tinocoo','','','','','','web.freelancer215@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('110','Fernando','Tinocoo','','','1','','+381615540585','','Goce Delceva 28 11010 Belgrade, Serbia','--',',4,5,12,','','','','','','No','','','2022-03-11 11:00:15','2022-03-11 11:00:15','','','Fernando Tinocoo','','','','','','web.freelancer215@gmail.com','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('111','','','','','1','','','','','--',',1,3,','','','','','','No','','','2022-03-11 14:05:11','2022-03-11 14:05:11','','',' ','','','','','','','','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('112','fernando','Tinocoo','','','1','','','','Manhatan','--',',1,8,15,','','','','','','No','','','2022-03-11 14:07:19','2022-03-11 14:07:19','','','fernando Tinocoo','','','','','','deunanknute07@gmail.com','1123','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('113','fernando','Tinocoo','','','1','','','','Manhatan','--',',1,8,15,','','','','','','No','','','2022-03-11 14:07:32','2022-03-11 14:07:32','','','fernando Tinocoo','','','','','','deunanknute07@gmail.com','1123','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('114','fernando','Tinocoo','','','1','','','','Manhatan','--',',14,16,18,19,20,',',7,','','','','','No','','','2022-03-11 22:13:12','2022-03-11 22:13:12','','','fernando Tinocoo','','','','','','deunanknute07@gmail.com','1123','','','','','','');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, user_id, category, primary_phone, other_phone, address1, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, created_at, updated_at, bs_code, dependents_ids, full_name, resident, home_own_status, rent_fee, home_tax_fee, spouse_id, email, address2, dod_date, city, province, postal_code, country, campaign_id) VALUES ('115','','','','','1','','','','','--',',1,3,5,','','','','','','No','','','2022-03-11 22:14:57','2022-03-11 22:14:57','','',' ','','','','','','','','','','','','','');


CREATE TABLE `admin_deduction_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DeductionID` int(11) DEFAULT NULL,
  `Amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DYear` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('1','9','40000','2021','29','2021-11-17 05:47:22','2021-11-17 05:47:22');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('2','15','30000','2021','29','2021-11-17 05:47:22','2021-11-17 05:47:22');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('3','11','350','2021','30','2021-11-17 07:32:37','2021-11-17 07:32:37');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('4','9','200','2020','25','2021-11-17 20:47:12','2021-11-17 20:47:12');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('5','7','3,535','2021','38','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('6','11','4,343','2021','38','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('7','1','','2021','51','2021-12-02 15:18:10','2021-12-02 15:18:10');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('8','9','1,800','2021','51','2021-12-02 15:18:10','2021-12-02 15:18:10');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('9','17','8,030','2020','86','2022-01-26 15:34:44','2022-01-26 15:34:44');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('10','8','','2022','13','2022-02-24 21:12:21','2022-02-24 21:12:21');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('11','14','2,343','2022','106','2022-03-11 10:08:17','2022-03-11 10:08:17');

INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('12','7','234,324','2022','114','2022-03-11 22:13:13','2022-03-11 22:13:13');


CREATE TABLE `admin_deduction_highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('1','Instalments','','2021-09-26 16:56:35','2021-10-29 10:13:32');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('2','RRSP','','2021-09-26 16:56:41','2021-09-26 16:56:41');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('3','Moving Expense','','2021-09-26 16:56:45','2021-09-26 16:56:45');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('4','Union','','2021-09-26 16:59:08','2021-09-26 16:59:08');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('5','Professional Dues','','2021-09-26 16:59:19','2021-09-26 16:59:19');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('6','TL2','','2021-09-26 16:59:22','2021-09-26 16:59:22');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('7','Tuition Fees','','2021-09-26 16:59:29','2021-09-26 16:59:29');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('8','Student Loan','','2021-09-26 16:59:33','2021-09-26 16:59:33');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('9','Medical','','2021-09-26 16:59:42','2021-09-26 16:59:42');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('10','Political Contributions','','2021-09-26 16:59:56','2021-09-26 16:59:56');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('11','Donations','','2021-09-26 17:00:02','2021-09-26 17:00:02');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('12','HBP Payments','','2021-09-26 17:00:24','2021-09-26 17:00:24');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('13','Insurance','','2021-10-29 09:54:36','2021-10-29 09:54:36');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('14','Child Care','','2021-10-29 10:13:37','2021-10-29 10:13:37');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('15','Interest Expense','','2021-10-29 10:13:49','2021-10-29 10:13:49');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('16','Mortgage Interest','','2021-10-29 10:13:55','2021-10-29 10:13:55');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('17','Business Loss','','2022-01-26 15:34:12','2022-01-26 15:34:12');


CREATE TABLE `admin_highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_highlights (id, name, created_at, updated_at) VALUES ('1','Income','2021-09-12 06:30:45','2021-09-12 06:30:45');

INSERT INTO admin_highlights (id, name, created_at, updated_at) VALUES ('2','Deduction','2021-09-12 06:30:45','2021-09-12 06:30:45');


CREATE TABLE `admin_income_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `IncomeID` int(11) DEFAULT NULL,
  `Amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DYear` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('1','1','40,000','2021','30','2021-11-17 07:32:37','2021-11-17 07:32:37');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('2','8','45,555','2021','30','2021-11-17 07:32:37','2021-11-17 07:32:37');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('3','13','123','2021','30','2021-11-17 07:32:37','2021-11-17 07:32:37');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('4','1','12,500','2021','31','2021-11-17 08:58:33','2021-11-17 08:58:33');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('5','17','','2021','33','2021-11-22 11:58:00','2021-11-22 11:58:00');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('6','1','','2021','34','2021-11-22 12:00:48','2021-11-22 12:00:48');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('7','1','40,000','2021','37','2021-11-22 13:45:21','2021-11-22 13:45:21');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('8','3','555','2021','37','2021-11-22 13:45:21','2021-11-22 13:45:21');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('9','6','3,422','2021','37','2021-11-22 13:45:21','2021-11-22 13:45:21');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('10','8','3,422','2021','37','2021-11-22 13:45:21','2021-11-22 13:45:21');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('11','10','4,333','2021','37','2021-11-22 13:45:21','2021-11-22 13:45:21');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('12','3','44,444','2021','38','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('13','8','44,444','2021','38','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('14','13','2,555','2021','38','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('15','17','2,343','2021','38','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('16','1','43,678','2020','53','2021-12-02 15:23:49','2022-01-31 13:48:57');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('17','1','','2021','20','2021-12-06 10:19:22','2021-12-06 10:19:22');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('18','3','','2021','20','2021-12-06 10:19:22','2021-12-06 10:19:22');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('19','19','','2021','20','2021-12-06 10:19:22','2021-12-06 10:19:22');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('20','3','1,672','2020','91','2022-01-26 14:36:26','2022-01-26 15:28:26');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('21','4','7,364','2020','91','2022-01-26 14:36:26','2022-01-26 15:28:26');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('22','6','57,690','2020','91','2022-01-26 14:36:26','2022-01-26 15:28:26');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('23','9','7,364','2020','91','2022-01-26 14:36:26','2022-01-26 14:40:45');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('24','23','2,963','2020','91','2022-01-26 15:31:18','2022-01-26 15:31:18');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('25','4','7,364','2020','86','2022-01-26 15:33:43','2022-01-26 15:33:43');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('26','6','13,237','2020','86','2022-01-26 15:33:43','2022-01-26 15:33:43');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('27','8','149,915','2020','86','2022-01-26 15:33:43','2022-01-26 15:33:43');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('28','3','72,911','2020','52','2022-01-31 13:47:50','2022-01-31 13:47:50');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('29','4','','2020','52','2022-01-31 13:47:50','2022-01-31 13:47:50');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('30','6','','2020','52','2022-01-31 13:47:50','2022-01-31 13:47:50');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('31','11','','2020','52','2022-01-31 13:47:50','2022-01-31 13:47:50');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('32','3','3,999','2022','97','2022-02-08 11:08:29','2022-02-08 11:08:29');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('33','23','25,000','2022','99','2022-02-11 07:50:48','2022-02-11 07:50:48');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('34','1','23,000','2022','106','2022-03-11 10:08:17','2022-03-11 10:08:17');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('35','5','25,000','2022','106','2022-03-11 10:08:17','2022-03-11 10:08:17');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('36','1','223','2022','107','2022-03-11 10:30:51','2022-03-11 10:30:51');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('37','2','2,235','2020','107','2022-03-11 10:30:51','2022-03-11 10:39:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('38','6','25,000','2022','107','2022-03-11 10:39:12','2022-03-11 10:39:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('39','1','223','2022','111','2022-03-11 14:05:11','2022-03-11 14:05:11');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('40','3','','','111','2022-03-11 14:05:12','2022-03-11 14:05:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('41','14','234','2022','114','2022-03-11 22:13:12','2022-03-11 22:13:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('42','16','2,234','2022','114','2022-03-11 22:13:12','2022-03-11 22:13:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('43','18','23,434','2022','114','2022-03-11 22:13:12','2022-03-11 22:13:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('44','19','333','2022','114','2022-03-11 22:13:12','2022-03-11 22:13:12');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('45','20','3,333','2022','114','2022-03-11 22:13:13','2022-03-11 22:13:13');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('46','1','0','2022','115','2022-03-11 22:14:57','2022-03-11 22:14:57');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('47','3','0','2022','115','2022-03-11 22:14:57','2022-03-11 22:14:57');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('48','5','0','2022','115','2022-03-11 22:14:57','2022-03-11 22:14:57');


CREATE TABLE `admin_income_highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('1','T4','4444.00','2021-09-12 11:04:23','2021-09-12 11:04:23');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('2','T3','3500.00','2021-09-23 10:57:11','2021-09-23 10:57:11');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('3','T4A','','2021-09-26 16:45:23','2021-09-26 16:45:23');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('4','T4A (OAS)','','2021-09-26 16:45:36','2021-09-26 16:45:36');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('5','Capital Gains','','2021-09-26 16:45:43','2021-09-26 16:45:43');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('6','T4A (P)','','2021-09-26 16:45:50','2021-09-26 16:45:50');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('7','T4E','','2021-09-26 16:45:57','2021-09-26 16:45:57');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('8','T4RSP','','2021-09-26 16:46:06','2021-09-26 16:46:06');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('9','T4RIF1','','2021-09-26 16:46:15','2022-01-26 14:41:16');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('10','T4PS','','2021-09-26 16:46:22','2021-09-26 16:46:22');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('11','T5','','2021-09-26 16:46:26','2021-09-26 16:46:26');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('12','T5007','','2021-09-26 16:46:34','2021-09-26 16:46:34');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('13','T5008','','2021-09-26 16:46:39','2021-09-26 16:46:39');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('14','Alimony','','2021-09-26 16:46:46','2021-09-26 16:46:46');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('15','Tips','','2021-09-26 16:46:50','2021-09-26 16:46:50');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('16','T776','','2021-09-26 16:46:59','2021-09-26 16:46:59');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('17','T2125','','2021-09-26 16:47:05','2021-09-26 16:47:05');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('18','Expecting an Inheritance','','2021-10-06 10:57:28','2021-10-06 10:57:28');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('19','CERB','','2021-10-31 15:53:16','2021-10-31 15:53:16');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('20','Rental Income','','2021-11-15 17:11:21','2021-11-15 17:11:21');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('21','T4RIF2','','2022-01-26 14:41:11','2022-01-26 14:41:11');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('22','T4A2','','2022-01-26 15:28:45','2022-01-26 15:28:45');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('23','Business Income','','2022-01-26 15:30:59','2022-02-11 09:07:08');


CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('1','--','Not Specified','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('2','CA','Canada','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('3','US','United States','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('4','AF','Afghanistan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('5','AL','Albania','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('6','DZ','Algeria','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('7','AS','American Samoa','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('8','AD','Andorra','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('9','AO','Angola','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('10','AI','Anguilla','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('11','AQ','Antarctica','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('12','AG','Antigua and Barbuda','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('13','AR','Argentina','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('14','AM','Armenia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('15','AW','Aruba','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('16','AU','Australia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('17','AT','Austria','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('18','AZ','Azerbaijan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('19','BS','Bahamas','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('20','BH','Bahrain','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('21','BD','Bangladesh','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('22','BB','Barbados','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('23','BY','Belarus','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('24','BE','Belgium','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('25','BZ','Belize','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('26','BJ','Benin','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('27','BM','Bermuda','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('28','BT','Bhutan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('29','BO','Bolivia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('30','BA','Bosnia and Herzegowina','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('31','BW','Botswana','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('32','BV','Bouvet Island','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('33','BR','Brazil','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('34','IO','British Indian Ocean Territory','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('35','BN','Brunei Darussalam','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('36','BG','Bulgaria','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('37','BF','Burkina Faso','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('38','BI','Burundi','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('39','KH','Cambodia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('40','CM','Cameroon','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('41','CA','Canada','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('42','CV','Cape Verde','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('43','KY','Cayman Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('44','CF','Central African Republic','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('45','TD','Chad','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('46','CL','Chile','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('47','CN','China','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('48','CX','Christmas Island','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('49','CC','Cocos (Keeling) Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('50','CO','Colombia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('51','KM','Comoros','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('52','CG','Congo','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('53','CD','Congo, the Democratic Republic of the','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('54','CK','Cook Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('55','CR','Costa Rica','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('56','CI','Cote d\'Ivoire','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('57','HR','Croatia (Hrvatska)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('58','CU','Cuba','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('59','CY','Cyprus','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('60','CZ','Czech Republic','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('61','DK','Denmark','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('62','DJ','Djibouti','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('63','DM','Dominica','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('64','DO','Dominican Republic','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('65','TP','East Timor','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('66','EC','Ecuador','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('67','EG','Egypt','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('68','SV','El Salvador','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('69','GQ','Equatorial Guinea','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('70','ER','Eritrea','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('71','EE','Estonia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('72','ET','Ethiopia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('73','FK','Falkland Islands (Malvinas)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('74','FO','Faroe Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('75','FJ','Fiji','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('76','FI','Finland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('77','FR','France','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('78','FX','France, Metropolitan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('79','GF','French Guiana','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('80','PF','French Polynesia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('81','TF','French Southern Territories','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('82','GA','Gabon','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('83','GM','Gambia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('84','GE','Georgia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('85','DE','Germany','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('86','GH','Ghana','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('87','GI','Gibraltar','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('88','GR','Greece','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('89','GL','Greenland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('90','GD','Grenada','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('91','GP','Guadeloupe','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('92','GU','Guam','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('93','GT','Guatemala','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('94','GN','Guinea','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('95','GW','Guinea-Bissau','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('96','GY','Guyana','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('97','HT','Haiti','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('98','HM','Heard and Mc Donald Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('99','VA','Holy See (Vatican City State)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('100','HN','Honduras','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('101','HK','Hong Kong','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('102','HU','Hungary','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('103','IS','Iceland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('104','IN','India','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('105','ID','Indonesia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('106','IR','Iran (Islamic Republic of)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('107','IQ','Iraq','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('108','IE','Ireland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('109','IL','Israel','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('110','IT','Italy','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('111','JM','Jamaica','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('112','JP','Japan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('113','JO','Jordan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('114','KZ','Kazakhstan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('115','KE','Kenya','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('116','KI','Kiribati','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('117','KP','Korea, Democratic People\'s Republic of','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('118','KR','Korea, Republic of','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('119','KW','Kuwait','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('120','KG','Kyrgyzstan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('121','LA','Lao People\'s Democratic Republic','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('122','LV','Latvia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('123','LB','Lebanon','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('124','LS','Lesotho','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('125','LR','Liberia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('126','LY','Libyan Arab Jamahiriya','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('127','LI','Liechtenstein','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('128','LT','Lithuania','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('129','LU','Luxembourg','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('130','MO','Macau','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('131','MK','Macedonia, The Former Yugoslav Republic of','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('132','MG','Madagascar','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('133','MW','Malawi','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('134','MY','Malaysia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('135','MV','Maldives','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('136','ML','Mali','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('137','MT','Malta','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('138','MH','Marshall Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('139','MQ','Martinique','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('140','MR','Mauritania','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('141','MU','Mauritius','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('142','YT','Mayotte','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('143','MX','Mexico','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('144','FM','Micronesia, Federated States of','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('145','MD','Moldova, Republic of','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('146','MC','Monaco','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('147','MN','Mongolia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('148','MS','Montserrat','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('149','MA','Morocco','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('150','MZ','Mozambique','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('151','MM','Myanmar','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('152','NA','Namibia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('153','NR','Nauru','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('154','NP','Nepal','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('155','NL','Netherlands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('156','AN','Netherlands Antilles','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('157','NC','New Caledonia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('158','NZ','New Zealand','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('159','NI','Nicaragua','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('160','NE','Niger','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('161','NG','Nigeria','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('162','NU','Niue','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('163','NF','Norfolk Island','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('164','MP','Northern Mariana Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('165','NO','Norway','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('166','OM','Oman','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('167','PK','Pakistan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('168','PW','Palau','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('169','PA','Panama','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('170','PG','Papua New Guinea','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('171','PY','Paraguay','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('172','PE','Peru','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('173','PH','Philippines','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('174','PN','Pitcairn','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('175','PL','Poland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('176','PT','Portugal','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('177','PR','Puerto Rico','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('178','QA','Qatar','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('179','RE','Reunion','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('180','RO','Romania','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('181','RU','Russian Federation','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('182','RW','Rwanda','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('183','KN','Saint Kitts and Nevis','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('184','LC','Saint LUCIA','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('185','VC','Saint Vincent and the Grenadines','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('186','WS','Samoa','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('187','SM','San Marino','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('188','ST','Sao Tome and Principe','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('189','SA','Saudi Arabia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('190','SN','Senegal','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('191','SC','Seychelles','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('192','SL','Sierra Leone','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('193','SG','Singapore','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('194','SK','Slovakia (Slovak Republic)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('195','SI','Slovenia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('196','SB','Solomon Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('197','SO','Somalia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('198','ZA','South Africa','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('199','GS','South Georgia and the South Sandwich Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('200','ES','Spain','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('201','LK','Sri Lanka','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('202','SH','St. Helena','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('203','PM','St. Pierre and Miquelon','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('204','SD','Sudan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('205','SR','Suriname','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('206','SJ','Svalbard and Jan Mayen Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('207','SZ','Swaziland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('208','SE','Sweden','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('209','CH','Switzerland','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('210','SY','Syrian Arab Republic','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('211','TW','Taiwan, Province of China','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('212','TJ','Tajikistan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('213','TZ','Tanzania, United Republic of','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('214','TH','Thailand','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('215','TG','Togo','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('216','TK','Tokelau','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('217','TO','Tonga','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('218','TT','Trinidad and Tobago','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('219','TN','Tunisia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('220','TR','Turkey','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('221','TM','Turkmenistan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('222','TC','Turks and Caicos Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('223','TV','Tuvalu','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('224','UG','Uganda','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('225','UA','Ukraine','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('226','AE','United Arab Emirates','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('227','GB','United Kingdom','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('228','US','United States','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('229','UM','United States Minor Outlying Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('230','UY','Uruguay','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('231','UZ','Uzbekistan','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('232','VU','Vanuatu','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('233','VE','Venezuela','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('234','VN','Viet Nam','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('235','VG','Virgin Islands (British)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('236','VI','Virgin Islands (U.S.)','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('237','WF','Wallis and Futuna Islands','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('238','EH','Western Sahara','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('239','YE','Yemen','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('240','YU','Yugoslavia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('241','ZM','Zambia','','');

INSERT INTO countries (id, country_code, country_name, created_at, updated_at) VALUES ('242','ZW','Zimbabwe','','');


CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `flights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('1','1','29','Edited Sources of Deduction highlights','2021-11-17 05:47:22','2021-11-17 05:47:22');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('2','1','29','Edited Additional Notes','2021-11-17 05:56:29','2021-11-17 05:56:29');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('3','1','29','Edited Additional Notes','2021-11-17 05:56:44','2021-11-17 05:56:44');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('4','1','30','just created','2021-11-17 07:32:37','2021-11-17 07:32:37');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('5','1','31','just created','2021-11-17 08:58:33','2021-11-17 08:58:33');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('6','1','25','Edited Sources of Deduction highlights','2021-11-17 20:47:12','2021-11-17 20:47:12');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('7','1','25','Edited Sources of Deduction highlights','2021-11-17 20:47:21','2021-11-17 20:47:21');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('8','1','25','Edited Sources of Deduction highlights','2021-11-17 20:48:41','2021-11-17 20:48:41');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('9','1','32','just created','2021-11-22 08:55:32','2021-11-22 08:55:32');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('10','1','33','just created','2021-11-22 09:06:37','2021-11-22 09:06:37');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('11','1','34','just created','2021-11-22 09:33:17','2021-11-22 09:33:17');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('12','1','33','Edited Information','2021-11-22 11:57:28','2021-11-22 11:57:28');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('13','1','33','Edited Sources of Incomehighlights','2021-11-22 11:58:00','2021-11-22 11:58:00');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('14','1','33','Edited Sources of Deduction highlights','2021-11-22 11:58:26','2021-11-22 11:58:26');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('15','1','34','Edited Information','2021-11-22 12:00:32','2021-11-22 12:00:32');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('16','1','34','Edited Sources of Incomehighlights','2021-11-22 12:00:48','2021-11-22 12:00:48');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('17','1','34','Edited Sources of Deduction highlights','2021-11-22 12:01:02','2021-11-22 12:01:02');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('18','1','33','Edited Sources of Deduction highlights','2021-11-22 12:01:23','2021-11-22 12:01:23');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('19','1','35','just created','2021-11-22 12:03:13','2021-11-22 12:03:13');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('20','3','36','just created','2021-11-22 13:43:15','2021-11-22 13:43:15');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('21','3','37','just created','2021-11-22 13:45:21','2021-11-22 13:45:21');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('22','2','38','just created','2021-11-22 13:54:45','2021-11-22 13:54:45');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('23','2','39','just created','2021-11-22 14:20:49','2021-11-22 14:20:49');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('24','2','40','just created','2021-11-22 14:35:09','2021-11-22 14:35:09');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('25','2','41','just created','2021-11-22 14:42:44','2021-11-22 14:42:44');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('26','2','42','just created','2021-11-22 14:46:08','2021-11-22 14:46:08');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('27','1','3','Edited Additional Notes','2021-11-30 12:34:25','2021-11-30 12:34:25');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('28','2','43','just created','2021-12-02 13:35:24','2021-12-02 13:35:24');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('29','2','44','just created','2021-12-02 13:47:38','2021-12-02 13:47:38');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('30','2','45','just created','2021-12-02 14:50:27','2021-12-02 14:50:27');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('31','2','46','just created','2021-12-02 14:54:04','2021-12-02 14:54:04');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('32','2','46','Edited spouse','2021-12-02 14:54:23','2021-12-02 14:54:23');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('33','2','45','Edited Information','2021-12-02 14:55:11','2021-12-02 14:55:11');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('34','2','45','Edited spouse','2021-12-02 14:55:17','2021-12-02 14:55:17');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('35','2','45','Edited spouse','2021-12-02 14:55:27','2021-12-02 14:55:27');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('36','2','47','just created','2021-12-02 14:57:51','2021-12-02 14:57:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('37','2','46','Edited Information','2021-12-02 14:58:17','2021-12-02 14:58:17');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('38','2','48','just created','2021-12-02 15:01:36','2021-12-02 15:01:36');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('39','2','49','just created','2021-12-02 15:06:20','2021-12-02 15:06:20');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('40','2','49','Edited spouse','2021-12-02 15:07:05','2021-12-02 15:07:05');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('41','2','50','just created','2021-12-02 15:08:45','2021-12-02 15:08:45');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('42','2','51','just created','2021-12-02 15:13:56','2021-12-02 15:13:56');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('43','2','51','Edited Information','2021-12-02 15:14:15','2021-12-02 15:14:15');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('44','2','51','Edited Sources of Deduction highlights','2021-12-02 15:18:10','2021-12-02 15:18:10');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('45','2','52','just created','2021-12-02 15:20:58','2021-12-02 15:20:58');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('46','2','53','just created','2021-12-02 15:23:49','2021-12-02 15:23:49');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('47','2','54','just created','2021-12-02 15:26:46','2021-12-02 15:26:46');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('48','2','55','just created','2021-12-02 15:28:56','2021-12-02 15:28:56');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('49','2','56','just created','2021-12-02 15:30:36','2021-12-02 15:30:36');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('50','2','55','Edited Information','2021-12-02 15:30:54','2021-12-02 15:30:54');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('51','2','55','Edited Information','2021-12-02 15:31:11','2021-12-02 15:31:11');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('52','2','54','Edited Information','2021-12-02 15:31:24','2021-12-02 15:31:24');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('53','2','53','Edited Information','2021-12-02 15:31:42','2021-12-02 15:31:42');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('54','2','52','Edited Information','2021-12-02 15:31:51','2021-12-02 15:31:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('55','2','51','Edited Information','2021-12-02 15:32:14','2021-12-02 15:32:14');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('56','2','57','just created','2021-12-02 15:33:54','2021-12-02 15:33:54');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('57','1','20','Edited Sources of Incomehighlights','2021-12-06 10:19:22','2021-12-06 10:19:22');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('58','1','20','Edited Sources of Incomehighlights','2021-12-06 10:19:51','2021-12-06 10:19:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('59','1','58','just created by Admin','2022-01-23 22:21:05','2022-01-23 22:21:05');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('60','1','59','just created by Admin','2022-01-23 22:26:35','2022-01-23 22:26:35');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('61','1','60','just created by Admin','2022-01-23 22:28:38','2022-01-23 22:28:38');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('62','1','61','just created by Admin','2022-01-23 22:31:17','2022-01-23 22:31:17');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('63','1','62','just created by Admin','2022-01-23 22:37:19','2022-01-23 22:37:19');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('64','1','63','just created by Admin','2022-01-23 22:38:41','2022-01-23 22:38:41');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('65','1','48','Edited Information by Admin','2022-01-23 22:39:55','2022-01-23 22:39:55');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('66','1','48','Edited Information by Admin','2022-01-23 22:40:48','2022-01-23 22:40:48');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('67','1','64','just created by Admin','2022-01-23 22:42:19','2022-01-23 22:42:19');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('68','1','65','just created by Admin','2022-01-23 22:43:50','2022-01-23 22:43:50');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('69','1','66','just created by Admin','2022-01-23 22:45:12','2022-01-23 22:45:12');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('70','1','67','just created by Admin','2022-01-23 22:46:19','2022-01-23 22:46:19');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('71','1','68','just created by Admin','2022-01-23 22:48:34','2022-01-23 22:48:34');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('72','1','69','just created by Admin','2022-01-23 22:51:07','2022-01-23 22:51:07');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('73','1','70','just created by Admin','2022-01-23 22:52:07','2022-01-23 22:52:07');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('74','1','71','just created by Admin','2022-01-24 03:02:53','2022-01-24 03:02:53');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('75','1','72','just created by Admin','2022-01-24 05:40:23','2022-01-24 05:40:23');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('76','1','73','just created by Admin','2022-01-24 05:41:51','2022-01-24 05:41:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('77','1','74','just created by Admin','2022-01-24 05:45:53','2022-01-24 05:45:53');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('78','1','75','just created by Admin','2022-01-24 06:52:09','2022-01-24 06:52:09');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('79','1','76','just created by Admin','2022-01-24 06:54:07','2022-01-24 06:54:07');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('80','1','77','just created by Admin','2022-01-24 06:55:34','2022-01-24 06:55:34');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('81','1','78','just created by Admin','2022-01-24 07:05:01','2022-01-24 07:05:01');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('82','1','79','just created by Admin','2022-01-24 07:06:29','2022-01-24 07:06:29');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('83','1','80','just created by Admin','2022-01-24 07:07:59','2022-01-24 07:07:59');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('84','1','81','just created by Admin','2022-01-24 13:06:13','2022-01-24 13:06:13');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('85','1','82','just created by Admin','2022-01-24 13:07:25','2022-01-24 13:07:25');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('86','1','83','just created by Admin','2022-01-24 13:08:57','2022-01-24 13:08:57');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('87','1','84','just created by Admin','2022-01-24 13:10:13','2022-01-24 13:10:13');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('88','1','85','just created by Admin','2022-01-24 13:10:51','2022-01-24 13:10:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('89','1','86','just created by Admin','2022-01-24 13:12:00','2022-01-24 13:12:00');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('90','1','87','just created by Admin','2022-01-24 13:13:00','2022-01-24 13:13:00');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('91','1','88','just created by Admin','2022-01-24 13:13:59','2022-01-24 13:13:59');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('92','1','89','just created by Admin','2022-01-24 13:14:51','2022-01-24 13:14:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('93','1','90','just created by Admin','2022-01-24 13:17:29','2022-01-24 13:17:29');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('94','1','91','just created by Admin','2022-01-24 13:46:32','2022-01-24 13:46:32');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('95','1','92','just created by Admin','2022-01-24 13:47:49','2022-01-24 13:47:49');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('96','1','93','just created by Admin','2022-01-24 13:49:13','2022-01-24 13:49:13');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('97','1','94','just created by Admin','2022-01-24 13:50:57','2022-01-24 13:50:57');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('98','1','95','just created by Admin','2022-01-24 13:53:03','2022-01-24 13:53:03');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('99','1','96','just created by Admin','2022-01-24 13:56:22','2022-01-24 13:56:22');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('100','1','97','just created by Admin','2022-01-24 13:58:51','2022-01-24 13:58:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('101','1','98','just created by Admin','2022-01-24 13:59:55','2022-01-24 13:59:55');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('102','1','99','just created by Admin','2022-01-24 14:01:23','2022-01-24 14:01:23');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('103','1','99','Edited Information by Admin','2022-01-24 17:06:12','2022-01-24 17:06:12');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('104','1','98','Edited Additional Notes by Admin','2022-01-26 14:25:57','2022-01-26 14:25:57');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('105','1','91','Edited Information by Admin','2022-01-26 14:30:58','2022-01-26 14:30:58');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('106','1','91','Edited spouse by Admin','2022-01-26 14:32:23','2022-01-26 14:32:23');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('107','1','91','Edited Source of Income by Admin','2022-01-26 14:36:26','2022-01-26 14:36:26');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('108','1','91','Edited Source of Income by Admin','2022-01-26 14:40:45','2022-01-26 14:40:45');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('109','1','91','Edited Source of Income by Admin','2022-01-26 15:28:26','2022-01-26 15:28:26');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('110','1','91','Edited Source of Income by Admin','2022-01-26 15:30:01','2022-01-26 15:30:01');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('111','1','91','Edited Source of Income by Admin','2022-01-26 15:31:18','2022-01-26 15:31:18');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('112','1','86','Edited Source of Income by Admin','2022-01-26 15:33:43','2022-01-26 15:33:43');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('113','1','86','Edited Source of Income by Admin','2022-01-26 15:34:23','2022-01-26 15:34:23');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('114','1','86','Edited Sources of Deduction by Admin','2022-01-26 15:34:44','2022-01-26 15:34:44');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('115','1','91','Edited Source of Income by Admin','2022-01-26 16:03:39','2022-01-26 16:03:39');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('116','1','52','Edited Source of Income by Admin','2022-01-31 13:47:50','2022-01-31 13:47:50');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('117','1','53','Edited Source of Income by Admin','2022-01-31 13:48:57','2022-01-31 13:48:57');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('118','1','97','Edited Source of Income by Admin','2022-02-08 11:08:29','2022-02-08 11:08:29');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('119','1','97','Edited Source of Income by Admin','2022-02-08 11:08:35','2022-02-08 11:08:35');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('120','1','97','Edited Source of Income by Admin','2022-02-08 11:08:49','2022-02-08 11:08:49');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('121','1','99','Edited Source of Income by Admin','2022-02-11 07:50:48','2022-02-11 07:50:48');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('122','1','3','Edited Additional Notes by Admin','2022-02-16 16:06:06','2022-02-16 16:06:06');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('123','1','27','Edited spouse by Admin','2022-02-16 16:06:40','2022-02-16 16:06:40');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('124','1','49','Edited Information by Admin','2022-02-16 16:11:20','2022-02-16 16:11:20');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('125','1','27','Edited Information by Admin','2022-02-16 16:11:30','2022-02-16 16:11:30');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('126','1','27','Edited Information by Admin','2022-02-16 16:11:42','2022-02-16 16:11:42');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('127','1','62','Edited Additional Notes by Admin','2022-02-16 16:17:05','2022-02-16 16:17:05');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('128','1','13','Edited Sources of Deduction by Admin','2022-02-24 21:12:21','2022-02-24 21:12:21');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('129','1','86','Edited Additional Notes by Admin','2022-02-28 12:53:39','2022-02-28 12:53:39');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('130','1','63','Edited Information by Admin','2022-02-28 13:18:34','2022-02-28 13:18:34');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('131','1','48','Edited Additional Notes by Admin','2022-02-28 13:38:42','2022-02-28 13:38:42');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('132','1','9','Edited Information by Admin','2022-02-28 16:13:39','2022-02-28 16:13:39');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('133','1','9','Edited Information by Admin','2022-02-28 16:14:16','2022-02-28 16:14:16');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('134','1','105','Edited Additional Notes by Admin','2022-03-02 10:37:35','2022-03-02 10:37:35');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('135','2','102','Edited Information by Jham','2022-03-08 07:11:20','2022-03-08 07:11:20');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('136','2','54','Edited Information by Jham','2022-03-08 10:38:04','2022-03-08 10:38:04');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('137','2','105','Edited Information by Jham','2022-03-09 08:08:13','2022-03-09 08:08:13');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('138','1','106','just created by Admin','2022-03-11 10:08:17','2022-03-11 10:08:17');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('139','1','107','just created by Admin','2022-03-11 10:30:51','2022-03-11 10:30:51');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('140','1','107','Edited Source of Income by Admin','2022-03-11 10:39:12','2022-03-11 10:39:12');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('141','1','108','just created by Admin','2022-03-11 10:47:19','2022-03-11 10:47:19');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('142','1','109','just created by Admin','2022-03-11 10:48:03','2022-03-11 10:48:03');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('143','1','110','just created by Admin','2022-03-11 11:00:15','2022-03-11 11:00:15');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('144','1','111','just created by Admin','2022-03-11 14:05:11','2022-03-11 14:05:11');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('145','1','112','just created by Admin','2022-03-11 14:07:19','2022-03-11 14:07:19');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('146','1','113','just created by Admin','2022-03-11 14:07:32','2022-03-11 14:07:32');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('147','1','114','just created by Admin','2022-03-11 22:13:12','2022-03-11 22:13:12');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('148','1','115','just created by Admin','2022-03-11 22:14:57','2022-03-11 22:14:57');


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations (id, migration, batch) VALUES ('1','2014_10_12_000000_create_users_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('2','2014_10_12_100000_create_password_resets_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('3','2019_08_19_000000_create_failed_jobs_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('4','2021_07_19_225253_create_flights_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('5','2021_07_20_011126_create_admin_income_highlights','1');

INSERT INTO migrations (id, migration, batch) VALUES ('6','2021_07_20_104038_create_admin_deduction_highlights','1');

INSERT INTO migrations (id, migration, batch) VALUES ('7','2021_07_20_115948_create_admin_highlights_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('8','2021_07_20_202248_create_admin_category_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('9','2021_07_27_145815_create_admin_clients_info','2');

INSERT INTO migrations (id, migration, batch) VALUES ('10','2021_11_01_090056_create_countries_table','3');

INSERT INTO migrations (id, migration, batch) VALUES ('11','2021_11_09_223142_create_log_table','4');

INSERT INTO migrations (id, migration, batch) VALUES ('12','2021_11_13_162226_create_admin_income_detail_table','5');

INSERT INTO migrations (id, migration, batch) VALUES ('13','2021_11_14_002358_create_admin_deduction_detail_table','6');


CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `roll` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO users (id, name, email, email_verified_at, roll, password, remember_token, created_at, updated_at) VALUES ('1','Admin','admin@admin.com','','0','$2y$10$wKRNSWJGG8rXSXW3oDZ7Xu9Fnk28Qm59zXzdLolLyVrBRQN.zlGc2','','2021-09-12 06:30:11','2021-11-22 14:11:38');

INSERT INTO users (id, name, email, email_verified_at, roll, password, remember_token, created_at, updated_at) VALUES ('2','Jham','user@user.com','','1','$2y$10$HEFgfc2YbPr2KDYGxtRJjOF3cfXPT/enGaqXgiLS2U7YJDCReZtbG','','2021-09-12 06:30:11','2022-03-07 14:07:50');

INSERT INTO users (id, name, email, email_verified_at, roll, password, remember_token, created_at, updated_at) VALUES ('3','Seeta','seeta@iceman.com','','1','$2y$10$8VI.hbvcVlPsLOa4DT3KWencrA8AoNgsFwFVq29P0UXKfveliKKYe','','2021-10-29 18:04:05','2021-11-22 13:42:07');

INSERT INTO users (id, name, email, email_verified_at, roll, password, remember_token, created_at, updated_at) VALUES ('4','Teodoro','teodoro@admin.com','','1','$2y$10$c7mIlJ7U9bvTTt3UafqlF.gBkv06Mdptb/4evcERTd3N7e3TOMy3e','','2022-03-02 11:45:51','2022-03-02 11:45:51');
