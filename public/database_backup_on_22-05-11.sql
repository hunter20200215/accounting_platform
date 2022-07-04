

CREATE TABLE `admin_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_category (id, name, created_at, updated_at) VALUES ('1','Individual','2022-05-10 09:06:38','2022-05-10 09:06:38');


CREATE TABLE `admin_clients_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob_date` date DEFAULT NULL,
  `dod_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `bs_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resident` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_own_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_fee` int(11) DEFAULT NULL,
  `home_tax_fee` int(11) DEFAULT NULL,
  `dependents_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('1','TONY AND TINA','ANTONOPOULOS','','1969-12-31','','1','','','','','26 ADAIR ROAD','','TORONTO','ON','M4B 1V5','','','','','','','','','','','','','TONY AND TINA ANTONOPOULOS','','','','','','','','2022-04-28 00:20:03','2022-04-28 00:20:03');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('2','MICHAEL','ASHTON','','1969-12-31','','1','','','','','1207-38 JOE SHUSTER WAY','','TORONTO','ON','M6K 0A5','','','','','','','','','','','','','MICHAEL ASHTON','','','','','','','','2022-04-28 00:20:03','2022-04-28 00:20:03');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('3','GURAMRITPAL AND GURKAMAL','AUJLA','','1969-12-31','','1','','','','','892 PRESTON MANOR DRIVE','','MISSISSAUGA','ON','L5V 2L5','','','','','','','','','','','','','GURAMRITPAL AND GURKAMAL AUJLA','','','','','','','','2022-04-28 00:20:04','2022-04-28 00:20:04');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('4','MILOSLAV','ABEL','','1968-11-05','','1','','','(416) 824-5879','','225 THE EAST MALL','Apt #1738','TORONTO','ON','M9B 0A9','','','','','','','499-989-929','','','','','','MILOSLAV ABEL','','','','','','lightingmilo@startmail.com','','2022-04-28 00:32:38','2022-04-28 00:32:38');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('5','ERIKA L','AGNEW','','1969-12-31','','1','','','(647) 292-6030','','24 LANSING SQ.','','BRAMPTON','ON','L6Z 1E6','','','','','','','490-194-941','','','','','','ERIKA L AGNEW','','','','','','agnewerika@gmail.com','','2022-04-28 00:32:38','2022-04-28 00:32:38');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('6','JAFAR','AKHBARI','','1954-12-05','','1','','','(416) 226-9335','','371 KENNETH AVENUE','Apt #17','TORONTO','ON','M2N 4V9','','','','','','','502-327-653','','','','','','JAFAR AKHBARI','','','','','','maryakhbari@gmail.com','','2022-04-28 00:32:38','2022-04-28 00:32:38');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('7','MORVARID','AKHBARI','','1983-04-29','','1','','','(416) 226-9335','','371 KENNETH AVENUE','Apt #17','TORONTO','ON','M2N 4V9','','','','','','','502-572-050','','','','','','MORVARID AKHBARI','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('8','AIDA','ALEJO','','1953-10-11','','1','','','(647) 285-5257','','187 Symons Street','Apt #3','TORONTO','ON','M8V 1V1','','','','','','','588-479-998','','','','','','AIDA ALEJO','','','','','','aidaalejo1108@yahoo.com','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('9','FATEMEH','ALI','','1931-05-22','','1','','','(289) 242-4517','','39 TWENTY FIFTH ST','Apt #1','TORONTO','ON','M8V 3P6','','','','','','','550-866-644','','','','','','FATEMEH ALI','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('10','EMMANUEL','AMIBOR','','1950-05-13','','1','','','(416) 251-9021','','41 JELLICOE AVENUE','','ETOBICOKE','ON','M8W 1W2','','','','','','','491-868-345','','','','','','EMMANUEL AMIBOR','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('11','MARY','AMIBOR','','1955-10-03','','1','','','(416) 251-9021','','41 JELLICOE AVENUE','','ETOBICOKE','ON','M8W 1W2','','','','','','','491-868-352','','','','','','MARY AMIBOR','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('12','PAULSON','AMIBOR','','1983-12-09','','1','','','(416) 937-5005','','41 JELLICOE AVENUE','','ETOBICOKE','ON','M8W 1W2','','','','','','','514-453-695','','','','','','PAULSON AMIBOR','','','','','','p.amibor@gmail.com','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('13','SUSAN','AMIBOR','','1988-05-17','','1','','','','','41 JELLICOE AVENUE','','ETOBICOKE','ON','M8W 1W2','','','','','','','523-053-866','','','','','','SUSAN AMIBOR','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('14','GLENN','ANDERSON','','1949-01-19','','1','','','(416) 252-4056','','61 ASH CRESCENT','','TORONTO','ON','M8W 1E5','','','','','','','426-519-153','','','','','','GLENN ANDERSON','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('15','SUSAN','ANDERSON','','1950-03-20','','1','','','(416) 252-4056','','61 ASH CRESCENT','','TORONTO','ON','M8W 1E5','','','','','','','441-752-912','','','','','','SUSAN ANDERSON','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('16','JAMES PETER','ANDERSON','','1982-10-25','','1','','','(647) 328-4808','','61 ASH CRES','','TORONTO','ON','M8W 1E5','','','','','','','511-582-587','','','','','','JAMES PETER ANDERSON','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('17','HEATHER','ANDERSON','','1985-07-15','','1','','','(647) 979-2752','','45 PAISLEY BLVD WEST','Apt #103','MISSISSAUGA','ON','L5B 1E4','','','','','','','520-437-393','','','','','','HEATHER ANDERSON','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('18','TINA','ANTONOPOULOS','','1968-12-13','','1','','','(416) 752-1161','','26 ADAIR ROAD','','TORONTO','ON','M4B 1V5','','','','','','','479-856-791','','','','','','TINA ANTONOPOULOS','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('19','TONY','ANTONOPOULOS','','1969-09-15','','1','','','(416) 752-1161','','26 ADAIR ROAD','','TORONTO','ON','M4B 1V5','','','','','','','488-619-487','','','','','','TONY ANTONOPOULOS','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('20','GURAMRITPAL SINGH','AUJLA','','1997-04-09','','1','','','(905) 712-9973','','892 PRESTON MANOR DRIVE','','MISSISSAUGA','ON','L5V 2L5','','','','','','','580-786-770','','','','','','GURAMRITPAL SINGH AUJLA','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('21','GURKAMAL KAUR','AUJLA','','1999-09-07','','1','','','(905) 712-9973','','892 PRESTON MANOR DRIVE','','MISSISSAUGA','ON','L5V 2L5','','','','','','','580-786-820','','','','','','GURKAMAL KAUR AUJLA','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('22','HELEN','BAILEY','','1951-07-19','','1','','','(416) 253-0522','','25 NINETEENTH ST','','ETOBICOKE','ON','M8V 3L4','','','','','','','444-747-703','','','','','','HELEN BAILEY','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('23','JAMES','BALDWIN','','1956-03-24','','1','','','4162526548','','50 THIRTY SEVENTH STREET','','TORONTO','ON','M8W 3L8','','','','','','','444-738-504','','','','','','JAMES BALDWIN','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('24','JODIE','BECKER','','1983-08-17','','1','','','(416) 568-5167','','410 QUEENS QUAY  WEST','Apt #1101','TORONTO','ON','M5V 3T1','','','','','','','522-070-788','','','','','','JODIE BECKER','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('25','CINDY','BEDNAR','','1966-10-04','','1','','','4162531854','','64 VICTORIA STREET','','TORONTO','ON','M8V 1M6','','','','','','','479-895-666','','','','','','CINDY BEDNAR','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('26','MICHAEL','BELLIVEAU','','1970-03-10','','1','','','4169061712','','5 TWENTY SEVENTH STREET','','TORONTO','ON','M8W 2X2','','','','','','','490-111-689','','','','','','MICHAEL BELLIVEAU','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('27','WILLIAM','BERG','','1930-04-04','','1','','','4162555952','','27 ARCADIAN CIRCLE','','TORONTO','ON','M8W 2Z2','','','','','','','424-664-308','','','','','','WILLIAM BERG','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('28','RUTH S','BERG','','1935-09-09','','1','','','(416) 255-5952','','27 Arcadian Cir','','ETOBICOKE','ON','M8W 2Z2','','','','','','','413-209-743','','','','','','RUTH S BERG','','','','','','','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('29','NEIL R','BLAIS','','1978-10-19','','1','','','(705) 822-2672','','555 DEW DROP ROAD','','SUDBURY','ON','P3G 1K9','','','','','','','505-054-833','','','','','','NEIL R BLAIS','','','','','','fraserconstruction.inc@gmail.com
newtconstruction@gmail.com','','2022-04-28 00:32:39','2022-04-28 00:32:39');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('30','Brenda','Bowen','','1952-06-18','','1','','','(905) 855-8226','','2440 Bromsgrove RD','Apt #110','Mississauga','ON','L5J 4J7','','','','','','','445-936-800','','','','','','Brenda Bowen','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('31','Christopher','Boylan','','1969-12-31','','1','','','31768','','1232 ELLIS STREET','','Kelowna','BC','V1Y 1J6','','','','','','','588-854-844','','','','','','Christopher Boylan','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('32','TRACI','BRAMLEY','','1962-05-02','','1','','','(416) 670-1700','','35 THIRTY EIGHTH ST','','ETOBICOKE','ON','M8W 3M1','','','','','','','477-532-956','','','','','','TRACI BRAMLEY','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('33','GIORGIO','BRAMUZZO','','1940-03-20','','1','','','(416) 259-5788','','176 LAKE SHORE DRIVE','','ETOBICOKE','ON','M8V 2A9','','','','','','','424-068-922','','','','','','GIORGIO BRAMUZZO','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('34','ERIC','BREITENEDER','','1966-07-04','','1','','','(416) 255-3616','','99 NORTH CARSON ST','','TORONTO','ON','M8W 4C6','','','','','','','483-271-722','','','','','','ERIC BREITENEDER','','','','','','ericbreit@hotmail.com','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('35','LILL','BREITENEDER','','1968-03-08','','1','','','(416) 255-3616','','99 NORTH CARSON ST','','TORONTO','ON','M8W 4C6','','','','','','','485-216-659','','','','','','LILL BREITENEDER','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('36','KARINA','BREITENEDER','','1969-12-31','','1','','','(416) 255-3616','','99 NORTH CARSON ST','','TORONTO','ON','M8W 4C6','','','','','','','','','','','','','KARINA BREITENEDER','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('37','STEPHANIE','BRISTER','','1953-07-06','','1','','','(416) 716-3049','','1080 LAKESHORE ROAD WEST','','ST. CATHARINES','ON','L2R 6P9','','','','','','','441-579-331','','','','','','STEPHANIE BRISTER','','','','','','stephaniejbrister@gmail.com','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('38','Zenebe','Brook','','1969-12-31','','1','','','','','63 FAIRFIELD AVE.','','Toronto','ON','M8W 1R6','','','','','','','','','','','','','Zenebe Brook','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('39','Marc','Bruneau','','1971-05-11','','1','','','','','73-30 Carnation Ave','','TORONTO','ON','M8V 0B8','','','','','','','267-975-233','','','','','','Marc Bruneau','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('40','Angela','Bruneau','','1981-10-26','','1','','','','','73-30 Carnation Ave','','TORONTO','ON','M8V 0B8','','','','','','','734-471-337','','','','','','Angela Bruneau','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('41','SASHA','BRUNO','','1979-03-12','','1','','','(705) 822-2672','','555 DEW DROP ROAD','','SUDBURY','ON','P3G 1K9','','','','','','','513-350-280','','','','','','SASHA BRUNO','','','','','','sashabruno@gmail.com','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('42','MICHAEL','BUCHANAN','','1943-09-08','','1','','','(905) 937-1313','','1080 LAKESHORE ROAD WEST','','ST. CATHARINES','ON','L2R 6P9','','','','','','','418-539-771','','','','','','MICHAEL BUCHANAN','','','','','','lakehouse1080@sympatico.ca','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('43','HEIDI','BUCHANAN','','1969-12-31','','1','','','(416) 252-1380','','417 LAKE PROMENADE','','TORONTO','ON','M8W 1C3','','','','','','','420-447732','','','','','','HEIDI BUCHANAN','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('44','DAMON MOSS','BUCHANAN','','1976-08-14','','1','','','(416) 315-6955','','417 LAKE PROMENADE','','TORONTO','ON','M8W 1C3','','','','','','','483-448-130','','','','','','DAMON MOSS BUCHANAN','','','','','','mossbuchanan@rogers.com
darkarmylogistics@gmail.com','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('45','SARAH MABEL','BUCK','','2002-10-10','','1','','','(416) 347-7385','','172 OAKRIDGE DR','','TORONTO','ON','M1M 2B1','','','','','','','540-991-700','','','','','','SARAH MABEL BUCK','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('46','BISRAM','BUDHWA','','1973-05-31','','1','','','9056780794','','4024 LONGO CIRCLE','','MISSISSAUGA','ON','L4T 4C7','','','','','','','495-358-780','','','','','','BISRAM BUDHWA','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('47','CARMEN','BURGOA','','1958-02-11','','1','','','(647) 674-7947','','56 ANNIE CRAIG DRIVE','APT #502','ETOBICOKE','ON','M8V 0C4','','','','','','','250-014-107','','','','','','CARMEN BURGOA','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('48','DAVID','BURNS','','1953-11-06','','1','','','(416) 779-8983','','150 LAKESHORE DRIVE','','ETOBICOKE','ON','M8V 2A4','','','','','','','449-270-206','','','','','','DAVID BURNS','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('49','Catherine','Bustamante','','1943-03-02','','1','','','(416) 255-4264','','5-6 Lake Shore Dr','','ETOBICOKE','ON','M8V 1Z1','','','','','','','415-187-673','','','','','','Catherine Bustamante','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('50','KARL','BUSTAMANTE','','1978-03-27','','1','','','(416) 995-4332','','350 OSLER STREET','','TORONTO','ON','M6N 2Z5','','','','','','','506-170-083','','','','','','KARL BUSTAMANTE','','','','','','karl.e.bustamante@gmail.com','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('51','Manuel','Bustamante','','1942-06-25','','1','','','(416) 255-4264','','5-6 Lake Shore Dr','','ETOBICOKE','ON','M8V 1Z1','','','','','','','709-617-542','','','','','','Manuel Bustamante','','','','','','manny.bustamante2@gmail.com','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('52','TEVICE P','CAMPBELL','','1944-10-26','','1','','','9059564169','','3441 LADDIE CRESCENT','','MISSISSAUGA','ON','L4T 1N2','','','','','','','506-822-477','','','','','','TEVICE P CAMPBELL','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('53','YU','CAO','','1982-12-30','','1','','','(905) 906-7568','','121 HUNTER ST. W','APT #402','HAMILTON','ON','L8P 1R2','','','','','','','562-327-239','','','','','','YU CAO','','','','','','','','2022-04-28 00:32:40','2022-04-28 00:32:40');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('54','RICHARD ALEXANDER','CARDONA','','1977-07-22','','1','','','(647) 896-7424','','24 WINDHILL CRESCENT','','TORONTO','ON','M9M 1Y2','','','','','','','507-515-484','','','','','','RICHARD ALEXANDER CARDONA','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('55','JULIA','CAREY','','1953-09-29','','1','','','(416) 436-4588','','2 ABERFOYLE CRES.','Apt #211','ETOBICOKE','ON','M8X 2Z8','','','','','','','449-139-450','','','','','','JULIA CAREY','','','','','','jcarey2@sympatico.ca','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('56','ADRIAN WAYNE','CARSON','','1956-06-08','','1','','','4162593411','','211 BETA STREET','','TORONTO','ON','M8W 4H5','','','','','','','454-559-667','','','','','','ADRIAN WAYNE CARSON','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('57','WENDY ANN NORA','CARSON','','1982-03-02','','1','','','(416) 892-9115','','211 BETA STREET','','TORONTO','ON','M8W 4H5','','','','','','','515-689-867','','','','','','WENDY ANN NORA CARSON','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('58','JEFF','CARSON','','1984-09-10','','1','','','(416) 540-8398','','24 LANSING SQ.','','BRAMPTON','ON','L6Z 1E6','','','','','','','515-689-966','','','','','','JEFF CARSON','','','','','','jeff.carson@messer-ca.com','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('59','Weijia','Chen','','1996-11-11','','1','','','(647) 936-2098','','763 Bay Street','APT #3801','TORONTO','ON','M5G 2R3','','','','','','','935-043-224','','','','','','Weijia Chen','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('60','PETER','COLLINS','','1936-01-18','','1','','','(416) 251-2707','','37 PARK BLVD','','TORONTO','ON','M8W 1G9','','','','','','','408-252-146','','','','','','PETER COLLINS','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('61','ELIZABETH','COLLINS','','1937-02-02','','1','','','(416) 251-2707','','37 PARK BLVD','','TORONTO','ON','M8W 1G9','','','','','','','436-386-387','','','','','','ELIZABETH COLLINS','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('62','GIANI','CONTARDO','','1940-12-27','','1','','','(416) 259-5788','','176 LAKESHORE DRIVE','','TORONTO','ON','M8V 2A9','','','','','','','427-424-924','','','','','','GIANI CONTARDO','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('63','JANE','CONWAY','','1955-05-24','','1','','','','','4432 CONNORS BAY LN','RR1','COLDWATER','ON','L0K 1E0','','','','','','','450-306-527','','','','','','JANE CONWAY','','','','','','jane.conway24@gmail.com','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('64','GORDON','COWIE','','1939-11-07','','1','','','9054532715','','219 BARONWOOD COURT','','BRAMPTON','ON','L6V 3H9','','','','','','','414-929-182','','','','','','GORDON COWIE','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('65','BORDEN A','COX','','1934-12-31','','1','','','(905) 891-2051','','55 PARK ST E','Apt #407','MISSISSAUGA','ON','L5G 1L9','','','','','','','100-696-236','','','','','','BORDEN A COX','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('66','DONNA','COX','','1949-06-20','','1','','','(905) 891-2051','','55 PARK ST E','Apt #407','MISSISSAUGA','ON','L5G 1L9','','','','','','','433-767-647','','','','','','DONNA COX','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('67','LAWRENCE','CROUCH','','1955-02-08','','1','','','(647) 705-3489','','3 GREY OWL RUN','','GEORGETOWN','ON','L7G 5Z8','','','','','','','449-312-925','','','','','','LAWRENCE CROUCH','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('68','Geraldine','Cruz','','1969-12-31','','1','','','4168265510','','515 Spadina Road','','Toronto','ON','M5P 2W6','','','','','','','493-370-266','','','','','','Geraldine Cruz','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('69','JAMES ANDREW','CUPPLES','','1989-12-31','','1','','','','','6TH LINE','APT #2387','OAKVILLE','ON','L6H 6G8','','','','','','','542-347-059','','','','','','JAMES ANDREW CUPPLES','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('70','JONATHAN','DA SILVA','','1989-01-14','','1','','','(647) 297-6908','','175 THIRTIETH STREET','','ETOBICOKE','ON','M8W 3C6','','','','','','','543-186-712','','','','','','JONATHAN DA SILVA','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('71','MAUREEN','DANIEL','','1939-09-01','','1','','','(416) 251-0508','','118 LAKE CRES','','TORONTO','ON','M8V 1W1','','','','','','','449-982-438','','','','','','MAUREEN DANIEL','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('72','BARRY','DAVIDSON','','1961-06-27','','1','','','(905) 274-6242','','1156 WOODEDEN DRIVE','','Mississauga','ON','L5H 2T6','','','','','','','467-709-796','','','','','','BARRY DAVIDSON','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('73','LISA','D\'AVINO','','1969-09-01','','1','','','(416) 315-0260','','6 MAISONNEUVE BLVD','','BRAMPTON','ON','L6P 1W8','','','','','','','481-165-306','','','','','','LISA D\'AVINO','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('74','PETER','DAVIS','','1969-12-31','','1','','','(416) 892-9115','','211 BETA STREET','','TORONTO','ON','M8W 4H5','','','','','','','520 211 640','','','','','','PETER DAVIS','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('75','DONATO','DIGIOVINE','','1935-08-01','','1','','','(416) 253-4913','','3425 LAKESHORE BLVD WEST','','TORONTO','ON','M8W 1N2','','','','','','','417-971-678','','','','','','DONATO DIGIOVINE','','','','','','','','2022-04-28 00:32:41','2022-04-28 00:32:41');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('76','PETER','DIMITRUK','','1947-12-31','','1','','','(416) 966-3563','','85 BINSCARTH RD','','TORONTO','ON','M4W 1Y3','','','','','','','418-096-509','','','','','','PETER DIMITRUK','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('77','PATRICIA','DINEEN','','1945-03-05','','1','','','(416) 255-6851','','2 SKELTON ST','','ETOBICOKE','ON','M8V 3W4','','','','','','','421-368-382','','','','','','PATRICIA DINEEN','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('78','KARABAS','DIONYSIA','','1973-03-30','','1','','','(647) 895-2315','','99 NEILSON DR.','','ETOBICOKE','ON','M9C 1W1','','','','','','','495-319-436','','','','','','KARABAS DIONYSIA','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('79','NORMAN','DRENNAN','','1968-07-26','','1','','','4162556685','','22 NINETEETH STREET','','ETOBICOKE','ON','M8V 3L3','','','','','','','484-394-200','','','','','','NORMAN DRENNAN','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('80','ADAM','DRURY','','1974-09-19','','1','','','4162594332','','51 HENAN STREET','','TORONTO','ON','M8V 1X4','','','','','','','493-617-005','','','','','','ADAM DRURY','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('81','GYIMAH','DWOMOH','','1983-11-27','','1','','','(416) 662-7838','','35 HERON PARK PLACE','APT #1','SCARBOROUGH','ON','M1E 0B8','','','','','','','507-066-884','','','','','','GYIMAH DWOMOH','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('82','EUGENE','DWYER','','1944-09-08','','1','','','(647) 343-0081','','21 PARK BLVD','APT #501','TORONTO','ON','M8W 1G4','','','','','','','105-281-950','','','','','','EUGENE DWYER','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('83','BENJAMIN','EDELBERG','','1985-12-15','','1','','','(416) 999-3115','','350 OSLER STREET','','TORONTO','ON','M6N 2Z5','','','','','','','572-140-986','','','','','','BENJAMIN EDELBERG','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('84','ROBERT','EDWARDS','','1943-07-09','','1','','','6472860977','','3206 PILCOM CRESCENT','','MISSISSAUGA','ON','L5B 3X6','','','','','','','401-577-358','','','','','','ROBERT EDWARDS','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('85','GRAZIA','FALCONE','','1930-01-01','','1','','','','','4214 GREYBROOK CRESCENT','','MISSISSAUGA','ON','L4W 3G6','','','','','','','480-835-248','','','','','','GRAZIA FALCONE','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('86','BOB','FAULDS','','1936-02-24','','1','','','(416) 236-3363','','90 CORDOVA AVENUE','Apt #1209','TORONTO','ON','M9A 2H8','','','','','','','205-041-445','','','','','','BOB FAULDS','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('87','STEPHEN G','FEARON','','1964-05-24','','1','','','(416) 801-8147','','82 TWENTY SIXTH STREET','','TORONTO','ON','M8V 3R7','','','','','','','481-182-145','','','','','','STEPHEN G FEARON','','','','','','bbfabinc@gmail.com','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('88','TASHA','FISHER','','1983-01-31','','1','','','(647) 861-0771','','1214 Kirstie Court','APT #60','OAKVILLE','ON','L6H 5C8','','','','','','','527-341-267','','','','','','TASHA FISHER','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('89','DOREEN','FITZGERALD','','1937-09-01','','1','','','(905) 891-5598','','1535 LAKESHORE ROAD E','PH 6','MISSISSAUGA','ON','L5E 3E2','','','','','','','410-174-866','','','','','','DOREEN FITZGERALD','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('90','EDWARD','FITZGERALD','','1942-03-15','','1','','','(905) 891-5598','','1535 LAKESHORE ROAD E','PH 6','MISSISSAUGA','ON','L5E 3E2','','','','','','','413-409-806','','','','','','EDWARD FITZGERALD','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('91','GEOFFREY','FITZPATRICK','','1934-07-14','','1','','','(289) 234-7384','','7 BOND CRESCENT','Apt #329','RICHMOND HILL','ON','L4E 1E6','','','','','','','432-104-537','','','','','','GEOFFREY FITZPATRICK','','','','','','geoffitz@rogers.com','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('92','ENID L','FITZPATRICK','','1939-03-23','','1','','','(289) 234-7384','','7 BOND CRESCENT','Apt #329','RICHMOND HILL','ON','L4E 1E6','','','','','','','449-433-416','','','','','','ENID L FITZPATRICK','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('93','WILLIAM','FORD','','1971-04-23','','1','','','(647) 546-5764','','122 WHARNSBY DR','','SCARBOROUGH','ON','M1X 2A2','','','','','','','511-446-031','','','','','','WILLIAM FORD','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('94','DONNA','FOSTER','','1969-12-31','','1','','','(416) 252-6679','','620 EVANS AVE','Apt #7','TORONTO','ON','M8W 2W6','','','','','','','453-918-971','','','','','','DONNA FOSTER','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('95','PATRICK','FREEMAN','','1950-11-23','','1','','','(416) 259-0421','','51-38th Street','','TORONTO','ON','M8W 3M2','','','','','','','616-889-754','','','','','','PATRICK FREEMAN','','','','','','ptfreeman51@gmail.com','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('96','FRANK','FUSTI','','1939-09-05','','1','','','(416) 251-5858','','1059 GORHAM WAY','','MILTON','ON','L9T 6N6','','','','','','','418-151-320','','','','','','FRANK FUSTI','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('97','FRANCOIS','GADOUAS','','1969-12-31','','1','','','(416) 722-0723','','1 - EIGHT STREET','Apt #6','TORONTO','ON','M8V 3C2','','','','','','','485-703-474','','','','','','FRANCOIS GADOUAS','','','','','','fgadouas@hotmail.ca','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('98','Bob','Gainer','','1969-12-31','','1','','','4166921687','','155 Uptown Court','','Toronto','ON','N4T 8W5','','','','','','','','','','','','','Bob Gainer','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('99','RENATO','GALVEZ','','1937-05-10','','1','','','(416) 259-1602','','9 THIRTY SIXTH STREET','','TORONTO','ON','M8W 3K8','','','','','','','452-555-766','','','','','','RENATO GALVEZ','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('100','GUANG YU','GAO','','1973-07-24','','1','','','(647) 342-5343','','176 GLEN SPRINGS DRIVE','','SCARBOROUGH','ON','M1W 1X8','','','','','','','533-275-194','','','','','','GUANG YU GAO','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('101','LESLIE','GAUDET','','1947-06-17','','1','','','(416) 251-7542','','176 DELTA STREET','','TORONTO','ON','M8W 4E5','','','','','','','105-424-873','','','','','','LESLIE GAUDET','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('102','LEONARD','GAUDET','','1973-08-23','','1','','','(905) 216-9494','','66 ROCKY MOUNTAIN CRES.','','BRAMPTON','ON','L6R 1E7','','','','','','','495-058-836','','','','','','LEONARD GAUDET','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('103','JOCELYN','GAVIOLA','','1969-12-31','','1','','','(416) 839-7878','','25 FORTY THIRD STREET','Apt #110','ETOBICOKE','ON','M8W 3P7','','','','','','','581-784-071','','','','','','JOCELYN GAVIOLA','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('104','PRZEMYSLAW','GESIKOWSKI','','1983-05-10','','1','','','(647) 701-9538','','1 BIRCHELA AVENUE','APT #8','TORONTO','ON','M8W 1E8','','','','','','','523-167-930','','','','','','PRZEMYSLAW GESIKOWSKI','','','','','','','','2022-04-28 00:32:42','2022-04-28 00:32:42');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('105','WAYNE','GIBSON','','1950-06-28','','1','','','(416) 255-6851','','2 SKELTON STREET','','ETOBICOKE','ON','M8V 3W4','','','','','','','437-961-931','','','','','','WAYNE GIBSON','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('106','SARAH','GILES','','1972-10-13','','1','','','(416) 521-9944','','62 JUDSON STREET','','TORONTO','ON','M8Z 1A7','','','','','','','122-922-404','','','','','','SARAH GILES','','','','','','giles_sarah@hotmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('107','WILLIAM','GILL','','1958-02-19','','1','','','4164324056','','328 COXWELL AVENUE','','TORONTO','ON','M4L 3B6','','','','','','','461-934-242','','','','','','WILLIAM GILL','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('108','MATTHEW','GISMONDI','','1978-12-14','','1','','','(416) 892-3925','','2313 DELKUS CRESENT','','MISSISSAUGA','ON','L5A 1K8','','','','','','','496-935-438','','','','','','MATTHEW GISMONDI','','','','','','mattgismondi@outlook.com
gismosmail@yahoo.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('109','KATERYNA','GISMONDI','','1986-08-07','','1','','','(416) 892-3925','','2313 DELKUS CRESCENT','','MISSISSAUGA','ON','L5A 1K8','','','','','','','519-226-286','','','','','','KATERYNA GISMONDI','','','','','','gismosmail@yahoo.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('110','ERIC','GODDARD','','1974-01-14','','1','','','(647) 344-0870','','254 Kensington Avenue N','','Hamilton','ON','L8L 7N9','','','','','','','124-895-350','','','','','','ERIC GODDARD','','','','','','egoddard@outlook.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('111','JU PEI','GODDARD','','1977-05-09','','1','','','6473034285','','254 Kensington Avenue N','','Hamilton','ON','L8L 7N9','','','','','','','555-673-201','','','','','','JU PEI GODDARD','','','','','','pgoddard@outlook.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('112','BHAKTI','GORADIA','','1981-07-15','','1','','','(905) 626-6655','','29 CARNATION AVE','','TORONTO','ON','M8V 2J8','','','','','','','575-007-489','','','','','','BHAKTI GORADIA','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('113','DAMIR','GOVIC','','1964-01-10','','1','','','(416) 259-2100','','132 BROWNSLINE AVENUE','','TORONTO','ON','M8W 3T2','','','','','','','475-936-795','','','','','','DAMIR GOVIC','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('114','KATHY','GRAHAM','','1947-08-06','','1','','','(905) 636-5457','','760 BRONTE STREET SOUTH','Apt #234','MILTON','ON','L9T 8X4','','','','','','','417-695-210','','','','','','KATHY GRAHAM','','','','','','kathleenruthgraham@gmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('115','DAVID','GRAHAM','','1943-06-16','','1','','','(905) 636-5457','','760 Bronte Street','APT #234','MILTON','ON','L9T 8X4','','','','','','','434-141-792','','','','','','DAVID GRAHAM','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('116','GRAZIELLA','GROVES','','1972-04-04','','1','','','(416) 451-6460','','326 GLENKINDIE AVE','','MAPLE','ON','L6A 2A2','','','','','','','494-550-650','','','','','','GRAZIELLA GROVES','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('117','JOHN','GROVES','','1971-06-23','','1','','','(416) 970-5471','','326 GLENKINDIE AVE','','MAPLE','ON','L6A 2A2','','','','','','','546-008-269','','','','','','JOHN GROVES','','','','','','bbgcarpentry@gmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('118','CHIHEB','GUEDDOUH','','1977-03-10','','1','','','(647) 771-5031','','92 JAMES ST','Apt #305','TORONTO','ON','M8W 1L6','','','','','','','570-661-496','','','','','','CHIHEB GUEDDOUH','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('119','SHIRLEY','GUINN','','1930-03-23','','1','','','(905) 278-4924','','1095 CHERRIEBELL ROAD','','MISSISSAUGA','ON','L5E 2R2','','','','','','','412-676-454','','','','','','SHIRLEY GUINN','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('120','STEVEN','GUNNING','','1954-03-11','','1','','','(613) 661-9151','','13 SINCLAIR STREET','','BELLVILLE','ON','K8P 3S5','','','','','','','450-396-585','','','','','','STEVEN GUNNING','','','','','','gunningsteven49@gmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('121','RICHARD','HABINKA','','1950-09-06','','1','','','(905) 238-9522','','2120 RATHBURN ROAD EAST','Apt #57','MISSISSAUGA','ON','L4W 2S8','','','','','','','445-274-400','','','','','','RICHARD HABINKA','','','','','','bonkee@hotmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('122','JENNIFER','HABINKA','','1984-02-08','','1','','','(905) 238-9522','','2120 RATHBURN RD. E.','APT #57','MISSISSAUGA','ON','L4W 2S8','','','','','','','526-899-083','','','','','','JENNIFER HABINKA','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('123','ALBERT','HACHFELD','','1971-02-24','','1','','','','','245 LAKESHORE DRIVE','APT #202','TORONTO','ON','M8V 2A8','','','','','','','488-891-235','','','','','','ALBERT HACHFELD','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('124','ERIC','HALL','','1950-01-26','','1','','','(416) 200-9871','','58 BLOOMINGDALE DR','','BRAMPTON','','L6W 4A6','','','','','','','428-834-204','','','','','','ERIC HALL','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('125','ELIZABETH','HALL','','1948-04-30','','1','','','(416) 721-7539','','58 BLOOMINGDALE DR','','BRAMPTON','','L6W 4A6','','','','','','','451-740-039','','','','','','ELIZABETH HALL','','','','','','hall1661@rogers.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('126','WAFIYA','HAMRI','','1969-12-31','','1','','','(647) 771-5031','','92 JAMES ST','Apt #305','TORONTO','ON','M8W 1L6','','','','','','','592-887-954','','','','','','WAFIYA HAMRI','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('127','LINGYU','HAN','','1996-11-12','','1','','','(778) 882-2077','','5 ST. JOSEPH ST','APT #2207','TORONTO','ON','M4Y 0B6','','','','','','','934-446-030','','','','','','LINGYU HAN','','','','','','','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('128','MEREDITH','HARREN','','1975-10-14','','1','','','(416) 503-3010','','1501 Safeway Cres','','Mississauga','ON','L4X 1H8','','','','','','','498-989-953','','','','','','MEREDITH HARREN','','','','','','m_harren@hotmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('129','ANDREA','HARRIS','','1969-12-31','','1','','','(647) 444-0318','','715 DON MILLS ROAD','Apt #705','TORONTO','ON','M3C 1S4','','','','','','','487 570 152','','','','','','ANDREA HARRIS','','','','','','handrea305@gmail.com','','2022-04-28 00:32:43','2022-04-28 00:32:43');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('130','MARIAM U','HASAN','','1968-06-30','','1','','','(416) 706-3653','','66 ELEVENTH ST','','TORONTO','ON','M8V 3G5','','','','','','','488-323-239','','','','','','MARIAM U HASAN','','','','','','mariam.hasan@proquest.com','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('131','ANGELA','HAULER','','1955-08-30','','1','','','(905) 354-8360','','2-9545 SHOVELLER DR.','','NIAGARA FALLS','ON','L2H 0M4','','','','','','','449-690-411','','','','','','ANGELA HAULER','','','','','','angelahaulersq@gmail.com','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('132','ISABEL','HAULER','','1932-03-05','','1','','','(519) 824-6610','','40 ABBEYWOOD CRES','','GUELPH','ON','N1K 1V2','','','','','','','449-383-322','','','','','','ISABEL HAULER','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('133','BLAIR','HAYNES','','1956-04-11','','1','','','(416) 251-6516','','13 SHAMROCK AVE','','TORONTO','ON','M8W 1C7','','','','','','','453-148-553','','','','','','BLAIR HAYNES','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('134','MEHDI','HBALI','','1986-04-22','','1','','','4167953775','','3343 LAKESHORE BLVD WEST','APT 101','TORONTO','ON','M8W 1N1','','','','','','','926-316-829','','','','','','MEHDI HBALI','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('135','DOUG','HENDERSON','','1958-10-27','','1','','','(416) 712-2484','','2547 LAKESHORE BLVD WEST B2','','TORONTO','ON','M8V 1E5','','','','','','','458-543-592','','','','','','DOUG HENDERSON','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('136','PETER J','HIGGINS','','1938-10-02','','1','','','(416) 255-3632','','53 FAIRFIELD AVE.','','TORONTO','ON','M8W 1R6','','','','','','','439-020-389','','','','','','PETER J HIGGINS','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('137','IRIS E','HIGGINS','','1969-12-31','','1','','','(416) 255-3632','','53 FAIRFIELD AVE.','','TORONTO','ON','M8W 1R6','','','','','','','467- 628-988','','','','','','IRIS E HIGGINS','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('138','Matthew','Hines','','1969-12-31','','1','','','4169082070','','','','','','','','','','','','','512-054-016','','','','','','Matthew Hines','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('139','Timothy','Hogan','','1969-12-31','','1','','','6478639301','','1455 Wilson Avenue','','North York','ON','M3M 1H4','','','','','','','','','','','','','Timothy Hogan','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('140','JODY','HOLMES','','1973-07-19','','1','','','4162521844','','115 DELROY DRIVE','','TORONTO','ON','M8Y 1N5','','','','','','','492-674-965','','','','','','JODY HOLMES','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('141','RUBY','HOSEIN','','1969-12-31','','1','','','(416) 732-5896','','5307 BUSHEL GROVE CIRCLE','','MISSISSAUGA','ON','L5M 6C6','','','','','','','449-098-680','','','','','','RUBY HOSEIN','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('142','STEPHANIE','HRICKY','','1946-12-28','','1','','','(905) 816-1219','','6730 FALCONER DRIVE','APT #48','MISSISSAUGA','ON','L5N 1L5','','','','','','','422-163-659','','','','','','STEPHANIE HRICKY','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('143','BRUCE','HUTCHEON','','1947-08-31','','1','','','(416) 259-2967','','161 THIRTIETH STREET','','ETOBICOKE','ON','M8W 3C3','','','','','','','438-861-338','','','','','','BRUCE HUTCHEON','','','','','','bhutche1@gmail.com','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('144','MOSAMMAT','JABUNNESA','','1969-12-31','','1','','','(416) 301-7944','','201-2269 LAKESHORE WEST','','TORONTO','ON','M8V 3X6','','','','','','','555- 816-313','','','','','','MOSAMMAT JABUNNESA','','','','','','jabunnesam@yahoo.com','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('145','DEBBIE','JOHNSON','','1956-12-12','','1','','','(647) 705-3489','','3 GREY OWL RUN','','GEORGETOWN','ON','L7G 5Z8','','','','','','','463-110-221','','','','','','DEBBIE JOHNSON','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('146','ROBERT','JONES','','1964-03-31','','1','','','(416) 231-9156','','46 THIRTY FIFTH ST','','ETOBICOKE','ON','M8W 3K2','','','','','','','482-471-398','','','','','','ROBERT JONES','','','','','','','','2022-04-28 00:32:44','2022-04-28 00:32:44');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('147','EDWARD','JONOKAT','','1959-05-15','','1','','','(416) 565-5211','','THIRTY SECOND STREET','APT #35','TORONTO','ON','M8W 3G3','','','','','','','462-306-176','','','','','','EDWARD JONOKAT','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('148','GENTI','KAMBERI','','1983-08-13','','1','','','(647) 206-5843','','612-2091 Hurontario','','Mississauga','ON','L5V 4E6','','','','','','','562-111-104','','','','','','GENTI KAMBERI','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('149','CLARKE THOMAS','KANE','','1956-06-02','','1','','','(905) 820-1727','','1724 THE CHASE','Apt #46','MISSISSAUGA','ON','L5M 4P2','','','','','','','471-026-625','','','','','','CLARKE THOMAS KANE','','','','','','clkane@trebnet.com','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('150','MARINA','KASTORIS','','1964-03-02','','1','','','(905) 839-3029','','429 PINEVIEW LANE','','PICKERING','ON','L1V 7G9','','','','','','','480-207-372','','','','','','MARINA KASTORIS','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('151','CHRIS','KASTORIS','','1969-01-04','','1','','','(905) 839-3029','','429 PINEVIEW LANE','','PICKERING','ON','L1V 7G9','','','','','','','484-387-998','','','','','','CHRIS KASTORIS','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('152','Zeljko','Katanic','','1969-12-31','','1','','','4168265510','','515 Spadina Road','','Toronto','ON','M5P 2W6','','','','','','','286-429-212','','','','','','Zeljko Katanic','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('153','JAMES','KERR','','1954-03-20','','1','','','(416) 696-9927','','477 PLAINS ROAD','','TORONTO','ON','M4C 2Y5','','','','','','','232-136-176','','','','','','JAMES KERR','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('154','CHRISTINE','KERR','','1966-04-21','','1','','','(416) 696-9927','','477 PLAINS ROAD','','TORONTO','ON','M4C 2Y5','','','','','','','483-575-700','','','','','','CHRISTINE KERR','','','','','','j.kerr@rogers.com','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('155','KRISTAN','KLASSEN','','1979-06-26','','1','','','(416) 660-3353','','16 MERREDIN PLACE','','NORTH YORK','ON','M3B 1S8','','','','','','','507-608-933','','','','','','KRISTAN KLASSEN','','','','','','klassen.k@gmail.com','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('156','BRENT','KLEINSCHMIDT','','1966-09-29','','1','','','(647) 761-1461','','87 42nd Street','B08','TORONTO','ON','M8W 3P5','','','','','','','483-680-658','','','','','','BRENT KLEINSCHMIDT','','','','','','','','2022-04-28 00:32:45','2022-04-28 00:32:45');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('157','LYNDA','KOKOT','','1960-02-02','','1','','','(647) 857-9243','','451 GARDENVILLE RD','','CARRYING PLACE','ON','K0K 1L0','','','','','','','464-737-139','','','','','','LYNDA KOKOT','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('158','MIKHAIL','KOSSILOV','','1968-07-30','','1','','','(416) 836-3748','','235 SHERWAY GARDENS RD.','APR #104','TORONTO','ON','M9C 0A2','','','','','','','541-874-244','','','','','','MIKHAIL KOSSILOV','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('159','MARCEL','KRASA','','1967-12-11','','1','','','4165259981','','3308 LAKESHORE BLVD. WEST','APT. 4B','TORONTO','ON','M8V 1M4','','','','','','','487-377-947','','','','','','MARCEL KRASA','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('160','INGRID','KRAUSE','','1952-12-18','','1','','','9058741714','','9800 MCLAUGHIN ROAD NORTH','APT. 26','BRAMPTON','ON','L6X 4R1','','','','','','','447-720-897','','','','','','INGRID KRAUSE','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('161','Alexandrina','Krisendat','','1969-12-31','','1','','','(416) 536-3238','','1610-3845 Lakeshore Blvd. West','','TORONTO','ON','M8W 4Y3','','','','','','','','','','','','','Alexandrina Krisendat','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('162','MICHAEL','LACEY','','1986-11-20','','1','','','(647) 468-2868','','101 SUBWAY CRESCENT','','TORONTO','ON','M9B 6K4','','','','','','','539-635-227','','','','','','MICHAEL LACEY','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('163','Angela','Lacey','','1988-10-05','','1','','','(647) 762-7643','','176 Delta Street','','TORONTO','ON','M8W 4E5','','','','','','','543-386-478','','','','','','Angela Lacey','','','','','','','','2022-04-28 00:32:46','2022-04-28 00:32:46');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('164','ADRIAN A','LAGINSKI','','1965-09-28','','1','','','(647) 344-5459','','308-230 LAKE PROMENADE','','TORONTO','ON','M8W 1B1','','','','','','','468-942-149','','','','','','ADRIAN A LAGINSKI','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('165','Nishad','Lakhani','','1969-12-31','','1','','','6478994007','','504 Cosburn Avenue','','Toronto','ON','M4J 2P1','','','','','','','','','','','','','Nishad Lakhani','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('166','CHRISTOPHER','LANGILLE','','1983-12-22','','1','','','4166886347','','1190 TUPPER DRIVE','','MILTON','ON','L9T 6T5','','','','','','','521-292-607','','','','','','CHRISTOPHER LANGILLE','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('167','WILLIAM','LAPKO','','1926-10-11','','1','','','9058276849','','2180 MARINE DRIVE','APT. 903','OAKVILLE','ON','L6L 5V2','','','','','','','438-460-479','','','','','','WILLIAM LAPKO','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('168','TREVOR','LARMAN','','1969-12-31','','1','','','(416) 856-6424','','6276 BIGWIND DRIVE','','RAMA','ON','L3V 6H6','','','','','','','524- 374-410','','','','','','TREVOR LARMAN','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('169','CODY','LEAL','','1993-12-16','','1','','','','','2036 KEEN ROAD','','TONOBEE','ON','K9J 6X7','','','','','','','557-563-210','','','','','','CODY LEAL','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('170','DIETMAR','LEIN','','1944-04-14','','1','','','(416) 252-4858','','612-383 MAIN ST EAST','','MILTON','ON','L9T 8K8','','','','','','','429-063-597','','','','','','DIETMAR LEIN','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('171','FRANK','LEIN','','1968-07-19','','1','','','(416) 251-5858','','1059 GORHAM WAY','','MILTON','ON','L9T 6N6','','','','','','','478-086-739','','','','','','FRANK LEIN','','','','','','leincatering@gmail.com','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('172','MARIA','LEIN','','1968-12-07','','1','','','(416) 251-5858','','1059 GORHAM WAY','','MILTON','ON','L9T 6N6','','','','','','','486-192-073','','','','','','MARIA LEIN','','','','','','leinm.2teach@hotmail.com','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('173','Ronald','Lein','','1969-12-31','','1','','','4162204385','','1501 Safeway Crescent','','Mississauga','ON','L4X 1H8','','','','','','','','','','','','','Ronald Lein','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('174','INGEBORG','LEIPOLD','','1939-06-17','','1','','','(416) 820-1001','','103-1800 THE COLLEGEWAY','','TORONTO','ON','L5L 5S4','','','','','','','429-477-409','','','','','','INGEBORG LEIPOLD','','','','','','ingeleipold@icloud.com','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('175','ROBERT','LEMBRYK','','1964-04-26','','1','','','(647) 838-9375','','138 SIXTH STREET','','TORONTO','ON','M8V 3A5','','','','','','','471-157-214','','','','','','ROBERT LEMBRYK','','','','','','rob.lembryk@gmail.com','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('176','PAUL','LIPKA','','1961-09-24','','1','','','(365) 885-1040','','210 THE WEST MALL','','TORONTO','ON','M9C 1C5','','','','','','','470-214-958','','','','','','PAUL LIPKA','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('177','JAY','LLAVE','','1975-08-07','','1','','','(416) 660-8881','','16 MERREDIN PLACE','','TORONTO','ON','M3B 1S8','','','','','','','498-959-667','','','','','','JAY LLAVE','','','','','','jayllave@icloud.com','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('178','FRANK','LO FORTE','','1948-04-30','','1','','','4164877986','','33 JEDBURGH ROAD','','TORONTO','ON','M5M 3J5','','','','','','','427-835-814','','','','','','FRANK LO FORTE','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('179','AMANDA','LOREFICE','','1969-12-31','','1','','','(647) 271-7618','','1386 SHARBOT STREET','','OSHAWA','ON','L1J 6N9','','','','','','','','','','','','','AMANDA LOREFICE','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('180','STEPHANIE','LOW','','1971-10-25','','1','','','4166681443','','75 SHAVER AVENUE NORTH','','TORONTO','ON','M9B 4N6','','','','','','','491-691-630','','','','','','STEPHANIE LOW','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('181','LINDA','LOWERY','','1942-07-19','','1','','','4162528009','','2045 LAKESHORE BLVD. WEST','APT. 311','TORONTO','ON','M8V 2Z6','','','','','','','458-692-084','','','','','','LINDA LOWERY','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('182','YANG','LU','','1996-07-25','','1','','','6478911363','','25 JOHN STIVER CRESCENT','','MARKHAM','ON','L3R 9A9','','','','','','','940-893-811','','','','','','YANG LU','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('183','VIRGINIA','LYONS','','1947-02-14','','1','','','(416) 476-5509','','80 MARSH AVENUE','APT. 54','TORONTO','ON','K9H 0J5','','','','','','','401-975-735','','','','','','VIRGINIA LYONS','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('184','JAMES WILLIAM','LYONS','','1943-05-22','','1','','','(416) 476-5509','','80 MARSH AVENUE','APT. 54','TORONTO','ON','K9H 0J5','','','','','','','420-043-945','','','','','','JAMES WILLIAM LYONS','','','','','','','','2022-04-28 00:32:47','2022-04-28 00:32:47');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('185','JAMES','LYONS','','1969-03-15','','1','','','(647) 717-7806','','1027 ORCHARD ROAD','','TORONTO','ON','L5E 2N7','','','','','','','478-892-920','','','','','','JAMES LYONS','','','','','','muckerlyons@gmail.com','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('186','JAMES ANDREW','LYONS','','1969-03-15','','1','','','6477177806','','1027 Orchard Road','','Mississauga','ON','L5E 2N7','','','','','','','478-892-920','','','','','','JAMES ANDREW LYONS','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('187','HAROLD','MACDONALD','','1942-04-17','','1','','','9026956063','','300 FRASER MOUNTAIN BRANCH RD','','NEW GLASGOW','NS','B2H 5C4','','','','','','','402-089-528','','','','','','HAROLD MACDONALD','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('188','ALAN ROSS','MACDONALD','','1963-07-24','','1','','','(647) 542-1311','','954 NINTH STREET','','TORONTO','ON','L5E 1S3','','','','','','','472-910-421','','','','','','ALAN ROSS MACDONALD','','','','','','alpt131@yahoo.com','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('189','MARTHA','MACDONALD','','1969-07-23','','1','','','(647) 542-1311','','954 NINTH STREET','','TORONTO','ON','L5E 1S3','','','','','','','915-339-568','','','','','','MARTHA MACDONALD','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('190','AARON WILLIAM','MACGREGOR','','1996-01-26','','1','','','6478945445','','2879 LAKESHORE BLVD. WEST','APT. 1602','TORONTO','ON','M8V 1J1','','','','','','','558-842-613','','','','','','AARON WILLIAM MACGREGOR','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('191','ROSELYN','MACHACEK','','1942-10-16','','1','','','4164335930','','19 SHERWOOD FOREST DRIVE','','MARKHAM','ON','L3P 1P5','','','','','','','456-939-669','','','','','','ROSELYN MACHACEK','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('192','VONDA H','MACLENNAN','','1944-03-29','','1','','','(705) 448-9604','','1523 FARR ROAD','','Tory Hill','ON','K0L 2Y0','','','','','','','403-056-633','','','','','','VONDA H MACLENNAN','','','','','','VONDAMACLENNAN@GMAIL.COM','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('193','MELINDA','MAGEE','','1969-12-31','','1','','','6474655104','','6277 21/22 Sideroad','','Stayner','ON','L0M 1S0','','','','','','','481-055-874','','','','','','MELINDA MAGEE','','','','','','melindamagee65@gmail.com','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('194','LILY','MAHARAJ','','1951-03-02','','1','','','(416) 809-5459','','350 PRINCESS ROYAL DRIVE','','TORONTO','ON','L5B 4N1','','','','','','','462-979-311','','','','','','LILY MAHARAJ','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('195','KEVIN','MAHARAJ','','1978-11-25','','1','','','(416) 997-8255','','6202 FORD ROAD','','TORONTO','ON','L5V 1X2','','','','','','','508-787-876','','','','','','KEVIN MAHARAJ','','','','','','wirelessmaharaj@gmail.com','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('196','SHERINE','MAHROUS','','1980-10-09','','1','','','6478924265','','911-1025 FERGUS AVENUE','','MISSISAUGA','ON','L5E 3G7','','','','','','','555-723-287','','','','','','SHERINE MAHROUS','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('197','ABDUL','MALIK','','1949-05-25','','1','','','(905) 820-2898','','2976 VALCOURT CRESCENT','','TORONTO','ON','L5L 5J2','','','','','','','484-040-902','','','','','','ABDUL MALIK','','','','','','allagopasta@gmail.com','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('198','ZAREENA','MALIK','','1960-05-04','','1','','','(905) 820-2898','','2976 VALCOURT CRESCENT','','TORONTO','ON','L5L 5J2','','','','','','','484-040-910','','','','','','ZAREENA MALIK','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('199','FARHAN','MALIK','','1995-11-19','','1','','','(905) 820-2898','','2976 VALCOURT CRESCENT','','TORONTO','ON','L5L 5J2','','','','','','','528-786-981','','','','','','FARHAN MALIK','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('200','YU','MAO','','1997-12-14','','1','','','6475468098','','18 YORKVILLE AVENUE','APT. 2109','TORONTO','ON','M4W 3Y8','','','','','','','937-305-589','','','','','','YU MAO','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('201','J GRANT','MAXWELL','','1941-12-27','','1','','','(416) 252-6571','','20 LAKE PROMENADE','','TORONTO','ON','M8V 2G7','','','','','','','437-988-405','','','','','','J GRANT MAXWELL','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('202','PATRICIA','MAXWELL','','1940-08-03','','1','','','(416) 252-6571','','20 LAKE PROMENADE','','TORONTO','ON','M8V 2G7','','','','','','','446-093-627','','','','','','PATRICIA MAXWELL','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('203','PETER','MAXWELL','','1979-06-06','','1','','','6478876571','','2554 CHALKWELL CLOSE','','MISSISAUGA','ON','L5J 2B9','','','','','','','510-209-257','','','','','','PETER MAXWELL','','','','','','','','2022-04-28 00:32:48','2022-04-28 00:32:48');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('204','JOYCE','MAY','','1940-11-02','','1','','','(905) 793-3993','','24 HEATHCLIFFE SQUARE','','TORONTO','ON','L6S 5P8','','','','','','','425-184-728','','','','','','JOYCE MAY','','','','','','kgmay@rogers.com','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('205','ROBERT','MAYS','','1970-12-20','','1','','','(416) 201-9294','','55-27TH STREET','','TORONTO','ON','M8W 2X2','','','','','','','493-581-409','','','','','','ROBERT MAYS','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('206','JENNIFER','MAYS','','1975-08-11','','1','','','(416) 201-9294','','55-27TH STREET','','TORONTO','ON','M8W 2X2','','','','','','','498-233-618','','','','','','JENNIFER MAYS','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('207','WILLIAM','MCDONALD','','1945-10-30','','1','','','(416) 605-6590','','3400 LAKESHORE BLVD WEST','APT. 104','TORONTO','ON','M8W 4Z9','','','','','','','411-431-778','','','','','','WILLIAM MCDONALD','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('208','RYAN','MCKENNA','','1975-08-15','','1','','','4167079707','','60 Dixon Road','','TORONTO','ON','M4L 1N6','','','','','','','499-205-797','','','','','','RYAN MCKENNA','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('209','PASQUALINA','MERANTE','','1964-08-08','','1','','','(416) 347-6964','','1964 DAVENPORT ROAD','','TORONTO','ON','M6N 1C2','','','','','','','476-323-597','','','','','','PASQUALINA MERANTE','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('210','NELLO','MERANTE','','1965-08-20','','1','','','(416) 527-2290','','24 NEILSON DRIVE','','TORONTO','ON','M9C 1V5','','','','','','','478-675-309','','','','','','NELLO MERANTE','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('211','MELISSA','MERCER','','1987-10-28','','1','','','(647) 865-5552','','60 15TH STREET','','TORONTO','ON','M8V 3J4','','','','','','','545-591-158','','','','','','MELISSA MERCER','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('212','FREEMAN','MERCER','','1963-02-21','','1','','','(416) 253-1854','','64 VICTORIA STREET','','TORONTO','ON','M8V 1M6','','','','','','','566-036-653','','','','','','FREEMAN MERCER','','','','','','freemanmercer63@gmail.com','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('213','Matthew','Mercer','','1994-09-14','','1','','','(416) 253-1854','','64 VICTORIA STREET','','TORONTO','ON','M8V 1M6','','','','','','','566-361-945','','','','','','Matthew Mercer','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('214','Jane','Mercer','','1996-08-18','','1','','','(416) 253-1854','','64 VICTORIA STREET','','TORONTO','ON','M8V 1M6','','','','','','','577-027-949','','','','','','Jane Mercer','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('215','IRMA','MEYN','','1932-04-26','','1','','','(416) 622-4676','','27 NORTHAMPTON DRIVE','','TORONTO','ON','M9B 4S5','','','','','','','406-636-993','','','','','','IRMA MEYN','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('216','FRIEDRICH','MEYN','','1934-03-01','','1','','','(416) 622-4676','','27 NORTHAMPTON DRIVE','','TORONTO','ON','M9B 4S5','','','','','','','407-261-411','','','','','','FRIEDRICH MEYN','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('217','ADAM','MIKICIC','','1969-12-31','','1','','','(905) 999-3389','','20 Bruyeres Mews, Apt #313','','TORONTO','ON','M5V 0G8','','','','','','','','','','','','','ADAM MIKICIC','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('218','BRENT','MIKSTAS','','1951-03-28','','1','','','(416) 550-2188','','15 BOUL PRINCE ALBERT','APT. 404','TORONTO','ON','N2H 0C2','','','','','','','432-727-410','','','','','','BRENT MIKSTAS','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('219','MIAOLEI','MIN','','1989-07-30','','1','','','','','2802-9 BOGERT AVENUE','','TORONTO','ON','M2N 0H3','','','','','','','586-027-831','','','','','','MIAOLEI MIN','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('220','ANNE','MORRIS','','1945-07-25','','1','','','(416) 255-3016','','31-40TH STREET','','TORONTO','ON','M8W 3M8','','','','','','','405-816-190','','','','','','ANNE MORRIS','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('221','BARBARA','MUJKANOVIC','','1958-11-30','','1','','','','','61 FORTH STREET','','TORONTO','ON','M8V 2Y2','','','','','','','456-522-366','','','','','','BARBARA MUJKANOVIC','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('222','ROBERT','MUNRO','','1942-08-28','','1','','','(416) 521-7437','','40 DUNNING AVENUE','','TORONTO','ON','M8W 4S8','','','','','','','409-907-052','','','','','','ROBERT MUNRO','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('223','ILA MAE','MUNRO','','1967-02-21','','1','','','(416) 521-7437','','40 DUNNING AVENUE','','TORONTO','ON','M8W 4S8','','','','','','','487-311-441','','','','','','ILA MAE MUNRO','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('224','MIKLOS','NEMETH','','1957-10-17','','1','','','(647) 560-6808','','39 LABURNHAM AVENUE','','TORONTO','ON','M8W 1S6','','','','','','','117-245-241','','','','','','MIKLOS NEMETH','','','','','','','','2022-04-28 00:32:49','2022-04-28 00:32:49');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('225','MONIKA','NEMETH','','1938-03-08','','1','','','(647) 560-6808','','39 LABURNHAM AVENUE','','TORONTO','ON','M8W 1S6','','','','','','','471-919-738','','','','','','MONIKA NEMETH','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('226','MIKLOS','NEMETH JR','','1930-12-12','','1','','','(416) 255-0396','','40 LABURNHAM AVENUE','','TORONTO','ON','M8W 1S7','','','','','','','117-245-522','','','','','','MIKLOS NEMETH JR','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('227','RONGRONG','NIE','','1969-12-31','','1','','','6475501510','','11 ST. JOSEPH STREET','APT. 604','TORONTO','ON','M4Y 3G4','','','','','','','935-742-191','','','','','','RONGRONG NIE','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('228','CLAUDINE','NIESCHULZE','','1932-01-26','','1','','','(905) 271-3543','','1-37 TWENTY SECOND STREET','','TORONTO','ON','M8V 3M2','','','','','','','424-660-280','','','','','','CLAUDINE NIESCHULZE','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('229','PETER','NIESCHULZE','','1954-06-30','','1','','','(416) 709-2680','','1-37 TWENTY SECOND STREET','','TORONTO','ON','M8V 3M2','','','','','','','451-291-041','','','','','','PETER NIESCHULZE','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('230','GARY','NIESCHULZE','','1958-03-22','','1','','','4162761071','','2017 LORELEI ROAD','','MISSISAUGA','ON','L5A 1C1','','','','','','','457-951-408','','','','','','GARY NIESCHULZE','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('231','GARY','NOTAR','','1969-12-31','','1','','','','','7 Lake Promenade','','Etobicoke','ON','M8V 2G7','','','','','','','','','','','','','GARY NOTAR','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('232','LESLIE','NURSE','','1946-04-24','','1','','','','','23-26TH STREET','','TORONTO','ON','M8V 3R4','','','','','','','420-093-437','','','','','','LESLIE NURSE','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('233','DAVID','O\'BRIEN','','1955-07-15','','1','','','9052704019','','3060 CONSTITUTION BLVD','APT. 257','MISSISAUGA','ON','L4Y 3X8','','','','','','','451-543-862','','','','','','DAVID O\'BRIEN','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('234','JAMES','O\'BRIEN','','1960-02-25','','1','','','9052783598','','1257 LAKESHORE ROAD EAST','APT. 1602','MISSISAUGA','ON','L5E 1G3','','','','','','','469-648-224','','','','','','JAMES O\'BRIEN','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('235','JAROPOLK','OLESNYCKYJ','','1939-10-10','','1','','','4165217391','','118 FOCH AVENUE','APT. 1602','TORONTO','ON','M8W 3Y1','','','','','','','412-624-470','','','','','','JAROPOLK OLESNYCKYJ','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('236','JANET','PARISI','','1968-10-01','','1','','','(416) 259-1949','','42 DUNNING CRESCENT','','TORONTO','ON','M8W 4S8','','','','','','','479-757-916','','','','','','JANET PARISI','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('237','BILL','PARISI','','1974-05-04','','1','','','(416) 259-1949','','42 DUNNING CRESCENT','','TORONTO','ON','M8W 4S8','','','','','','','494-756-703','','','','','','BILL PARISI','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('238','CARL','PAVLOVIC','','1972-01-30','','1','','','4163713175','','1515 LAKESHORE ROAD EAST','APT. 1401','MISSISAUGA','ON','L5E 3E3','','','','','','','488-285-404','','','','','','CARL PAVLOVIC','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('239','PETER','PECZULIS','','1960-11-20','','1','','','','','38 PAULART DRIVE','','TORONTO','ON','M9B 3V7','','','','','','','493-356-364','','','','','','PETER PECZULIS','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('240','ANTONIETTA','PETRACCA','','1953-09-15','','1','','','(905) 277-8193','','2570 CYNARA ROAD','','TORONTO','ON','L5B 2R7','','','','','','','232-091-744','','','','','','ANTONIETTA PETRACCA','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('241','ELVIO','PETRACCA','','1946-09-29','','1','','','(905) 277-8193','','2570 CYNARA ROAD','','TORONTO','ON','L5B 2R7','','','','','','','422-029-355','','','','','','ELVIO PETRACCA','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('242','SHERRY','PIKE','','1967-08-09','','1','','','(416) 347-7385','','172 OAKRIDGE DRIVE','','TORONTO','ON','M1M 2B1','','','','','','','477-301-766','','','','','','SHERRY PIKE','','','','','','Sherry.Pike@tdsb.on.ca','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('243','NIKOLAOS','PLATSIS','','1950-11-08','','1','','','(416) 252-4806','','45 LONG BRANCH AVENUE','','TORONTO','ON','M8W 3J1','','','','','','','441-817-335','','','','','','NIKOLAOS PLATSIS','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('244','MARIA','PLATSIS','','1961-06-23','','1','','','(416) 252-4806','','45 LONG BRANCH AVENUE','','TORONTO','ON','M8W 3J1','','','','','','','481-347-615','','','','','','MARIA PLATSIS','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('245','GLEN','POPLESTONE','','1989-07-11','','1','','','(647) 991-6484','','389 KIPLING AVENUE','','TORONTO','ON','M8V 3L8','','','','','','','519-566-558','','','','','','GLEN POPLESTONE','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('246','JOYCE','POTTIER','','1927-02-06','','1','','','9058938013','','10462 ISLINGTON AVENUE','APT. 202','KLEINBURG','ON','L0J 1C0','','','','','','','447-892-340','','','','','','JOYCE POTTIER','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('247','WILLIAM','POWLESS','','1969-12-31','','1','','','2892339995','','61 FAIRFIELD AVENUE','','TORONTO','ON','M8W 1R6','','','','','','','423-932-169','','','','','','WILLIAM POWLESS','','','','','','','','2022-04-28 00:32:50','2022-04-28 00:32:50');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('248','BERNARD','POZNIAK','','1940-01-19','','1','','','(416) 626-2590','','14 NEILSON DRIVE','','TORONTO','ON','M9C 1V6','','','','','','','411-420-318','','','','','','BERNARD POZNIAK','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('249','HARRIET','PSIHARIS','','1959-04-19','','1','','','(416) 255-8651','','81-7TH STREET','','TORONTO','ON','M8V 3B3','','','','','','','460-054-604','','','','','','HARRIET PSIHARIS','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('250','SAKAAR','PURI','','1985-08-05','','1','','','4169957040','','41 FOCH AVENUE','','TORONTO','ON','M8W 3X3','','','','','','','679-678-367','','','','','','SAKAAR PURI','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('251','MINGHUI','QIAN','','1981-07-01','','1','','','6479944888','','43 SYCAMORE DRIVE','','MARKHAM','ON','L3T 5V3','','','','','','','577-421-852','','','','','','MINGHUI QIAN','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('252','STEVEN','QUENNEVILLE','','1977-12-16','','1','','','9059700696','','22 WHITE ROAD','','CRAMPTON','ON','L7A 1P1','','','','','','','505-288-696','','','','','','STEVEN QUENNEVILLE','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('253','CATHERINE','RAJKOU','','1947-01-30','','1','','','9052723494','','3356 CLANFIELD CRESCENT','','MISSISAUGA','ON','L4Y 3K8','','','','','','','104-633-243','','','','','','CATHERINE RAJKOU','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('254','FANI','RAJKOVSKI','','1926-09-24','','1','','','9052723494','','3356 CLANFIELD CRESCENT','','MISSISAUGA','ON','L4Y 3K8','','','','','','','442-327-243','','','','','','FANI RAJKOVSKI','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('255','AARON D','RAMCHARAN','','1953-09-04','','1','','','6478633963','','25 NINETEENTH STREET','','TORONTO','ON','M8W 3A9','','','','','','','447-894-882','','','','','','AARON D RAMCHARAN','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('256','IMARU','RAMIREZ MARQUEZ','','1983-07-24','','1','','','(416) 823-1625','','24 WINDHILL CRESCENT','','TORONTO','ON','M9M 1Y2','','','','','','','521-254-193','','','','','','IMARU RAMIREZ MARQUEZ','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('257','STEPHEN','RATHWELL','','1955-10-23','','1','','','4169914009','','1260 LAKESHORE RD E','UNIT 4','MISSISSAUGA','ON','L5E 3B8','','','','','','','452-222-854','','','','','','STEPHEN RATHWELL','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('258','CATHERINE','RATHWELL','','1959-11-12','','1','','','4169914009','','1260 LAKESHORE RD E','UNIT 4','MISSISSAUGA','ON','L5E 3B8','','','','','','','252-315-007','','','','','','CATHERINE RATHWELL','','','','','','','','2022-04-28 00:32:51','2022-04-28 00:32:51');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('259','GARY','ROBERTS','','1962-08-04','','1','','','2898306712','','3080 Kirwin Ave','','Mississauga','ON','L5A 2K6','','','','','','','475-519-807','','','','','','GARY ROBERTS','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('260','BERNICE','ROBINSON','','1924-03-28','','1','','','(416) 259-0445','','20 ATHERTON CRESCENT','','TORONTO','ON','M8W 2Y1','','','','','','','473-343-887','','','','','','BERNICE ROBINSON','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('261','WILLIAM','ROBSON','','1967-08-10','','1','','','4162010600','','36 SILVERCREST AVENUE','','TORONTO','ON','M8W 2S5','','','','','','','484-295-639','','','','','','WILLIAM ROBSON','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('262','CHRISTINE','ROMANOWSKY','','1966-01-10','','1','','','(705) 424-0287','','99 DOWNS ROAD','','SEGUIN','ON','P2A 2W8','','','','','','','483-448-627','','','','','','CHRISTINE ROMANOWSKY','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('263','MARA','RUFFOLO','','1963-12-23','','1','','','6472843905','','3380 LAKESHORE BLVD WEST','','TORONTO','ON','M8W 1M9','','','','','','','472-690-213','','','','','','MARA RUFFOLO','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('264','TIIU','RUGGEIRO','','1950-08-24','','1','','','4162363359','','17 FERNALROY BLVD','','TORONTO','ON','M8Z 3V9','','','','','','','441-583-481','','','','','','TIIU RUGGEIRO','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('265','LUCILLE','RUSHTON','','1963-05-18','','1','','','4167124124','','55 LLOYD GEORGE AVENUE','APT. 3','TORONTO','ON','M8W 3W7','','','','','','','477-724-017','','','','','','LUCILLE RUSHTON','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('266','CHRISTINE','RUSSELL','','1953-08-16','','1','','','4162524741','','18 ROBINDALE AVENUE','','TORONTO','ON','M8W 4A9','','','','','','','445-489-107','','','','','','CHRISTINE RUSSELL','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('267','Linda Ann','Sakalaskus','','1973-10-06','','1','','','(647) 223-8879','','115 DELROY DRIVE','','TORONTO','ON','M8Y 1N5','','','','','','','492-543-558','','','','','','Linda Ann Sakalaskus','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('268','ROBERT D','SCHRAM','','1979-06-13','','1','','','(647) 383-6813','','2491 POPLAR CRESCENT','','TORONTO','ON','L5J 4H2','','','','','','','483-448-122','','','','','','ROBERT D SCHRAM','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('269','TYLER','SEPA','','1952-03-06','','1','','','(416) 535-6760','','274 GAMMA STREET','','TORONTO','ON','M8W 4H1','','','','','','','450-823-091','','','','','','TYLER SEPA','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('270','OLGA','SEPA','','1969-12-31','','1','','','(647) 598-9714','','6 Tremblant Crescent','','Kleinburg','ON','L4H 4L2','','','','','','','943-961-532','','','','','','OLGA SEPA','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('271','TEJINDER','SHAH','','1976-09-03','','1','','','4168303701','','45 ROYAL YORK ROAD','','TORONTO','ON','M8V 2T5','','','','','','','505-129-379','','','','','','TEJINDER SHAH','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('272','JOSHUA','SHAW','','1995-10-05','','1','','','(416) 535-6760','','274 GAMMA STREET','','TORONTO','ON','M8W 4H1','','','','','','','556-806-271','','','','','','JOSHUA SHAW','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('273','Koa','Shea','','1979-06-13','','1','','','6473836813','','2491 POPLAR CRESCENT','','Mississauga','ON','L5J 4H2','','','','','','','483-448-122','','','','','','Koa Shea','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('274','PASANG','SHERPA','','1969-12-31','','1','','','(416) 535-6760','','334 KIPLING AVE','','TORONTO','ON','M8V 3K7','','','','','','','943- 961-532','','','','','','PASANG SHERPA','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('275','BIRUTE','SHERWOOD','','1969-12-31','','1','','','(647) 241-1411','','575 BROWNS LINE','','TORONTO','ON','M8W 3V3','','','','','','','115-172-330','','','','','','BIRUTE SHERWOOD','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('276','TOMAS ARNOLD','SHERWOOD','','1969-12-31','','1','','','(416) 877-8601','','205 BEATRICE STREET','','TORONTO','ON','M6G 3E9','','','','','','','539-469-429','','','','','','TOMAS ARNOLD SHERWOOD','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('277','LUKAS','SHERWOOD','','1995-10-05','','1','','','(416) 535-6760','','274 GAMMA STREET','','TORONTO','ON','M8W 4H1','','','','','','','556-806-271','','','','','','LUKAS SHERWOOD','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('278','NEIL','SHERWOOD','','1969-12-31','','1','','','4165229566','','','','','','','','','','','','','','','','','','','NEIL SHERWOOD','','','','','','NSHERWOOD0215@ROGERS.COM','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('279','RONALD','SHORT','','1965-09-08','','1','','','(905) 502-9872','','840 PRESTON MANOR DRIVE','','TORONTO','ON','L5V 2L6','','','','','','','494-822-398','','','','','','RONALD SHORT','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('280','CATHERINE','SHUBERT','','1952-12-06','','1','','','(403) 241-0664','','231 SCANLON GREEN NW','','CALGARY','AB','T3L 1L3','','','','','','','624-684-916','','','','','','CATHERINE SHUBERT','','','','','','','','2022-04-28 00:32:52','2022-04-28 00:32:52');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('281','BRENDA','SIDDALL','','1962-04-20','','1','','','(905) 502-9872','','840 PRESTON MANOR DRIVE','','TORONTO','ON','L5V 2L6','','','','','','','486-837-347','','','','','','BRENDA SIDDALL','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('282','DANIEL','SIMKO','','1966-04-17','','1','','','4168279843','','451 GARDENVILLE ROAD','','CARRYING PLACE','ON','K0K 1L0','','','','','','','479-879-827','','','','','','DANIEL SIMKO','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('283','Laura Maria','Simonetta','','1991-11-14','','1','','','(905) 502-9872','','840 PRESTON MANOR DRIVE','','TORONTO','ON','L5V 2L6','','','','','','','555-332-824','','','','','','Laura Maria Simonetta','','','','','','lauraleetherrien@canadianfoodsafetytraining.com','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('284','GURMUKH','SINGH','','1956-02-08','','1','','','(905) 279-3406','','774 GREYCEDAR CRESCENT','','TORONTO','ON','L4W 3J8','','','','','','','466-228-764','','','','','','GURMUKH SINGH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('285','KALBIR','SINGH','','1963-11-13','','1','','','(416) 264-2131','','43 BROADMEAD AVENUE','','TORONTO','ON','M1M 1C3','','','','','','','474-494-978','','','','','','KALBIR SINGH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('286','JASWINDER','SINGH','','1965-12-11','','1','','','(905) 257-1047','','2219 WINDING WOODS DRIVE','','TORONTO','ON','L6H 5T9','','','','','','','478-514-516','','','','','','JASWINDER SINGH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('287','JASPREET','SINGH','','1965-04-16','','1','','','(905) 257-1047','','2219 WINDING WOODS DRIVE','','TORONTO','ON','L6H 5T9','','','','','','','481-161-891','','','','','','JASPREET SINGH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('288','GURJIT','SINGH','','1967-05-14','','1','','','(905) 712-9973','','892 PRESTON MANOR DRIVE','','TORONTO','ON','L5V 2L5','','','','','','','486-893-191','','','','','','GURJIT SINGH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('289','HARINDERJIT','SINGH','','1973-04-02','','1','','','(905) 712-9973','','892 PRESTON MANOR DRIVE','','TORONTO','ON','L5V 2L5','','','','','','','514-237-536','','','','','','HARINDERJIT SINGH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('290','ROSEMARY','SMART','','1948-02-29','','1','','','9056313029','','2160 LAKESHORE ROAD','APT. 1602','BURLINGTON','ON','L7R 1A7','','','','','','','426-604-732','','','','','','ROSEMARY SMART','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('291','GORDON R','SMITH','','1949-04-13','','1','','','7057622435','','1000 LIONEL LOT 1','P.O. BOX 470','BALA','ON','P0C 1A0','','','','','','','421-953-886','','','','','','GORDON R SMITH','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('292','Angie','Specic','','1969-12-31','','1','','','9052571047','','2219 Winding Woods Drive','','Oakville','ON','L6H 5T9','','','','','','','','','','','','','Angie Specic','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('293','Norman','Specic','','1969-12-31','','1','','','4162642131','','43 Broadmead Avenue','','Toronto','ON','M1M 1C3','','','','','','','','','','','','','Norman Specic','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('294','BRENT','STANLEY','','1969-12-31','','1','','','(416) 666-6872','','701-99 THE DONWAY WEST','','TORONTO','ON','M3C 0N8','','','','','','','','','','','','','BRENT STANLEY','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('295','CHANG','SU','','1990-10-26','','1','','','4163016883','','18 HARRISON GARDEN BLVD','APT. 2007','TORONTO','ON','M2N 7J7','','','','','','','930-769-666','','','','','','CHANG SU','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('296','VASIMEH','Tabatabaei','','1957-04-25','','1','','','(416) 259-0421','','51-38th Street','','TORONTO','ON','M8W 3M2','','','','','','','478-143-738','','','','','','VASIMEH Tabatabaei','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('297','BRANDON','TALBOT','','1993-04-29','','1','','','6475807877','','389 KIPLING AVENUE','APT. 2','TORONTO','ON','M8V 3K8','','','','','','','558-146-759','','','','','','BRANDON TALBOT','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('298','KAIYUAN','TANG','','1996-04-14','','1','','','6478710797','','11 ST JOSEPH STREET','APT. 1211','TORONTO','ON','M4Y 3G4','','','','','','','937-600-138','','','','','','KAIYUAN TANG','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('299','LUKASZ','TECZA','','1989-02-19','','1','','','4163002408','','220 LAKE PROMENADE','APT. 706','TORONTO','ON','M8W 1A9','','','','','','','567-710-942','','','','','','LUKASZ TECZA','','','','','','','','2022-04-28 00:32:53','2022-04-28 00:32:53');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('300','OLGA','TERUYA','','1969-12-31','','1','','','(416) 888-5383','','2 JULIANA SQUARE','','BRAMPTON','ON','L6S 2L4','','','','','','','454-945-635','','','','','','OLGA TERUYA','','','','','','olgateruya@hotmail.com','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('301','MANUEL','TERUYA','','1969-12-31','','1','','','(416) 888-5383','','2 JULIANA SQUARE','','BRAMPTON','ON','L6S 2L4','','','','','','','455-201-400','','','','','','MANUEL TERUYA','','','','','','','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('302','KENNETH','TERUYA','','1969-12-31','','1','','','(416) 888-5383','','2 JULIANA SQUARE','','BRAMPTON','ON','L6S 2L4','','','','','','','496-502-196','','','','','','KENNETH TERUYA','','','','','','','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('303','CHERYL','TERUYA','','1969-12-31','','1','','','(416) 888-5383','','43 WILEY AVE','','TORONTO','ON','M4J 3W3','','','','','','','509-897-906','','','','','','CHERYL TERUYA','','','','','','','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('304','DIANA','THERRIEN','','1950-12-31','','1','','','(416) 627-4169','','3441 LADDIE CRES','','MISSISSAUGA','ON','L4T 1N2','','','','','','','426-384-400','','','','','','DIANA THERRIEN','','','','','','dianatherrien@canadianfoodsafetytraining.com','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('305','LAURA LEE','THERRIEN','','1968-12-26','','1','','','(647) 938-9746','','22 VILLA ROAD','','TORONTO','ON','M8W 1M5','','','','','','','487-042-145','','','','','','LAURA LEE THERRIEN','','','','','','','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('306','THERESA','THOMPSON','','1941-03-01','','1','','','(416) 255-1640','','37 ASH CRESCENT','','TORONTO','ON','M8W 1E4','','','','','','','426-812-749','','','','','','THERESA THOMPSON','','','','','','motyt@sympatico.ca','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('307','CAROLE','THOMPSON','','1941-05-13','','1','','','(416) 921-8352','','364-500 KINGSTON RD','','TORONTO','ON','M4L 1V3','','','','','','','603-030-909','','','','','','CAROLE THOMPSON','','','','','','','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('308','MARGARET','THUELL','','1938-10-19','','1','','','(705) 436-4428','','1928 MILL STREET','','INNISFIL','ON','L9S 2A2','','','','','','','406-065-656','','','','','','MARGARET THUELL','','','','','','','','2022-04-28 00:32:54','2022-04-28 00:32:54');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('309','CLAIRE','THUELL','','1937-11-01','','1','','','(705) 436-4428','','1928 MILL STREET','','INNISFIL','ON','L9S 2A2','','','','','','','421-042-672','','','','','','CLAIRE THUELL','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('310','BRENT','THUELL','','1964-09-17','','1','','','(705) 431-5157','','1955 EMERALD COURT','','INNISFIL','ON','L9S 2A2','','','','','','','478-459-449','','','','','','BRENT THUELL','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('311','LYNDA','TODOROVICH','','1960-01-27','','1','','','6478691768','','20 SOUTHPORT STREET','APT. 204','TORONTO','ON','M6S 4Y8','','','','','','','457-302-685','','','','','','LYNDA TODOROVICH','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('312','RAYMOND','TOUROUT','','1950-11-10','','1','','','(905) 996-0094','','5 GARDENWOOD AVENUE','','CALEDON','ON','L7C 1A9','','','','','','','442-552-618','','','','','','RAYMOND TOUROUT','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('313','ALICE','TOUROUT','','1952-04-04','','1','','','(905) 996-0094','','5 GARDENWOOD AVENUE','','CALEDON','ON','L7C 1A9','','','','','','','447-861-337','','','','','','ALICE TOUROUT','','','','','','alicetourout@hotmail.com','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('314','LISA','TOUROUT','','1980-11-20','','1','','','(416) 319-9755','','5 GARDENWOOD AVENUE','','CALEDON','ON','L7C 1A9','','','','','','','516-256-047','','','','','','LISA TOUROUT','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('315','RENE','TRASIEWICZ','','1969-08-06','','1','','','4166552745','','7 NORGROVE CRESCENT','UNIT 3','TORONTO','ON','M9P 3C7','','','','','','','490-270-899','','','','','','RENE TRASIEWICZ','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('316','KEVIN','TROAKE','','1979-10-15','','1','','','4166021292','','12 WEST STREET','','BRAMPTON','ON','L6X 1V7','','','','','','','509-745-055','','','','','','KEVIN TROAKE','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('317','AGNE','URBONAITE','','1986-05-14','','1','','','4167327544','','115 LONG BRANCH AVENUE','APT. 20','TORONTO','ON','M8W 0A9','','','','','','','580-997-914','','','','','','AGNE URBONAITE','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('318','GRAHAM','URE','','1969-10-06','','1','','','9054715070','','71 SCHOUTEN CRESCENT','','MARKHAM','ON','L3P 7W8','','','','','','','489-585-976','','','','','','GRAHAM URE','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('319','STEVE','VUCKO','','1964-11-14','','1','','','4167086660','','388 RIMILTON AVENUE','','TORONTO','ON','M8W 2G2','','','','','','','478-967-094','','','','','','STEVE VUCKO','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('320','BRADLEY','WALDEN','','1969-12-31','','1','','','(647) 389-0020','','1079 DETRA ROAD','','MISSISSAUGA','ON','L5E 2R6','','','','','','','545-116-956','','','','','','BRADLEY WALDEN','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('321','JOYCE M','WALLACE','','1933-04-10','','1','','','(905) 274-3177','','1060 EASTMOUNT AVENUE','','MISSISSAUGA','ON','L5E 1Z3','','','','','','','439-228-073','','','','','','JOYCE M WALLACE','','','','','','','','2022-04-28 00:32:55','2022-04-28 00:32:55');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('322','ROBERT','WARD','','1984-05-31','','1','','','4165601116','','123 KING STREET','','TORONTO','ON','P8V 8V8','','','','','','','870-015-203','','','','','','ROBERT WARD','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('323','MARY','WHELTON','','1930-11-07','','1','','','4162352819','','2245 LAWRENCE AVE. WEST','','TORONTO','ON','M9P 3W3','','','','','','','420-379-299','','','','','','MARY WHELTON','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('324','Devina','White','','1972-05-18','','1','','','4164097369','','8 Glen Road','','Toronto','ON','M4X 1M5','','','','','','','269-983-573','','','','','','Devina White','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('325','JAMES RICHARD','WIGHT','','1974-06-22','','1','','','','','6 THOMPSON DRIVE','','GEORGETOWN','ON','L7G 4S5','','','','','','','495-704-165','','','','','','JAMES RICHARD WIGHT','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('326','SUSAN','WILLSHER','','1955-10-28','','1','','','4162553531','','87 ALDER CRESCENT','','TORONTO','ON','M8V 2H7','','','','','','','452-459-233','','','','','','SUSAN WILLSHER','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('327','Kendill','Wilson','','1984-01-06','','1','','','(647) 893-1785','','1-53-35th Street','','TORONTO','ON','M8W 3K3','','','','','','','591-587-548','','','','','','Kendill Wilson','','','','','','kendillwilson@icloud.com','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('328','MAUREEN','YALLOP','','1969-12-31','','1','','','(416) 503-9315','','51 THIRTY SIXTH ST','','ETOBICOKE','ON','M9W 3L1','','','','','','','411-182-843','','','','','','MAUREEN YALLOP','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('329','BROOK MEKBEB','ZENEBE','','1985-08-21','','1','','','(437) 215-2058','','63 FAIRFIELD AVE.','','TORONTO','ON','M8W 1R6','','','','','','','942-976-424','','','','','','BROOK MEKBEB ZENEBE','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('330','OLLIE J','ZERN','','1944-10-22','','1','','','4162514839','','58 VICTOR AVENUE','','TORONTO','ON','M8V 2L9','','','','','','','411-493-851','','','','','','OLLIE J ZERN','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('331','XIAODAN','ZHANG','','1992-08-22','','1','','','6473308822','','11 DOERR ROAD','','SCARBOROUGH','ON','M1P 4M7','','','','','','','560-264-640','','','','','','XIAODAN ZHANG','','','','','','','','2022-04-28 00:32:56','2022-04-28 00:32:56');

INSERT INTO admin_clients_info (id, first_name, last_name, middle_name, dob_date, dod_date, user_id, category, campaign_id, primary_phone, other_phone, address1, address2, city, province, postal_code, country, citizenship, income_highlights, deduction_highlights, attached_doc, client_bio, sin, marital_status, dependents, home_status, notes, bs_code, full_name, resident, home_own_status, rent_fee, home_tax_fee, dependents_ids, email, spouse_id, created_at, updated_at) VALUES ('332','ZHENKUN','ZHANG','','1995-10-13','','1','','','6477839695','','38 GRENVILLE STREET','APT. 3804','TORONTO','ON','M4Y 1A5','','--',',1,2,',',1,','','','935-043-158','','','','','','ZHENKUN ZHANG','','','','','','','','2022-04-28 00:32:56','2022-04-28 11:17:50');


CREATE TABLE `admin_deduction_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DeductionID` int(11) DEFAULT NULL,
  `Amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DYear` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_deduction_detail (id, DeductionID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('1','1','2,222','2021','332','2022-04-28 11:17:50','2022-04-28 11:17:50');


CREATE TABLE `admin_deduction_highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('1','D4','','2022-04-28 00:19:03','2022-04-28 00:19:03');

INSERT INTO admin_deduction_highlights (id, name, value, created_at, updated_at) VALUES ('2','D4A','','2022-04-28 00:19:10','2022-04-28 00:19:10');


CREATE TABLE `admin_highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_highlights (id, name, created_at, updated_at) VALUES ('1','Income','2022-04-28 00:16:12','2022-04-28 00:16:12');

INSERT INTO admin_highlights (id, name, created_at, updated_at) VALUES ('2','Deduction','2022-04-28 00:16:12','2022-04-28 00:16:12');


CREATE TABLE `admin_income_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `IncomeID` int(11) DEFAULT NULL,
  `Amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DYear` int(11) DEFAULT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('1','1','0','2022','332','2022-04-28 10:11:35','2022-04-28 10:11:35');

INSERT INTO admin_income_detail (id, IncomeID, Amount, DYear, ClientID, created_at, updated_at) VALUES ('2','2','2,344','2022','332','2022-04-28 10:11:35','2022-04-28 10:11:35');


CREATE TABLE `admin_income_highlights` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('1','T4','','2022-04-28 00:18:28','2022-04-28 00:18:28');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('2','T5A','','2022-04-28 00:18:36','2022-04-28 00:18:36');

INSERT INTO admin_income_highlights (id, name, value, created_at, updated_at) VALUES ('3','Tax56','','2022-04-28 00:18:53','2022-04-28 00:18:53');


CREATE TABLE `campaigns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `campaign_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaigns_campaign_name_unique` (`campaign_name`),
  KEY `campaigns_user_id_foreign` (`user_id`),
  CONSTRAINT `campaigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('1','1','Dejan Pajic','1','2022-05-02 08:41:43','2022-05-02 08:41:43');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('2','1','Test 1~2','1','2022-05-03 20:51:55','2022-05-04 16:43:40');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('3','1','Test 2','0','2022-05-03 20:52:30','2022-05-03 20:52:30');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('4','1','Dejan Pajic copy-1','1','2022-05-09 23:50:23','2022-05-09 23:50:23');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('5','1','Dejan Pajic copy-2','1','2022-05-09 23:55:38','2022-05-09 23:55:38');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('7','1','Dejan Pajic copy-4','1','2022-05-09 23:55:45','2022-05-09 23:55:45');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('8','1','Dejan Pajic copy-5','1','2022-05-09 23:55:45','2022-05-09 23:55:45');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('9','1','Dejan Pajic copy-6','1','2022-05-09 23:55:46','2022-05-09 23:55:46');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('10','1','Test 1~2 copy-1','1','2022-05-09 23:57:06','2022-05-09 23:57:06');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('11','1','Test 1~2 copy-2','1','2022-05-09 23:57:11','2022-05-09 23:57:11');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('12','1','Dejan Pajic copy-7','1','2022-05-09 23:57:16','2022-05-09 23:57:16');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('13','1','Test 2 copy-1','0','2022-05-09 23:57:20','2022-05-09 23:57:20');

INSERT INTO campaigns (id, user_id, campaign_name, action, created_at, updated_at) VALUES ('14','1','Test 1~2 copy-1 copy-1','1','2022-05-09 23:57:23','2022-05-09 23:57:23');


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



CREATE TABLE `insurance_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `insurance_products_client_id_foreign` (`client_id`),
  CONSTRAINT `insurance_products_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `admin_clients_info` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('1','1','332','Edited Information by Admin','2022-04-28 07:05:26','2022-04-28 07:05:26');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('2','1','332','Edited Information by Admin','2022-04-28 07:05:49','2022-04-28 07:05:49');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('3','1','332','Edited Information by Admin','2022-04-28 07:10:20','2022-04-28 07:10:20');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('4','1','332','Edited Source of Income by Admin','2022-04-28 10:11:35','2022-04-28 10:11:35');

INSERT INTO log (id, user_id, client_id, content, created_at, updated_at) VALUES ('5','1','332','Edited Sources of Deduction by Admin','2022-04-28 11:17:50','2022-04-28 11:17:50');


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations (id, migration, batch) VALUES ('26','2014_10_12_000000_create_users_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('27','2014_10_12_100000_create_password_resets_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('28','2019_08_19_000000_create_failed_jobs_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('29','2021_07_19_225253_create_flights_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('30','2021_07_20_011126_create_admin_income_highlights','1');

INSERT INTO migrations (id, migration, batch) VALUES ('31','2021_07_20_104038_create_admin_deduction_highlights','1');

INSERT INTO migrations (id, migration, batch) VALUES ('32','2021_07_20_115948_create_admin_highlights_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('33','2021_07_20_202248_create_admin_category_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('34','2021_07_27_145815_create_admin_clients_info','1');

INSERT INTO migrations (id, migration, batch) VALUES ('35','2021_11_01_090056_create_countries_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('36','2021_11_09_223142_create_log_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('37','2021_11_13_162226_create_admin_income_detail_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('38','2021_11_14_002358_create_admin_deduction_detail_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('39','2022_03_17_143419_create_insurance_products_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('42','2022_04_28_000042_create_campaigns_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('43','2022_04_28_000244_create_muti_campaign','3');


CREATE TABLE `multi_capaign` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `campaign_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `multi_capaign_client_id_foreign` (`client_id`),
  KEY `multi_capaign_campaign_id_foreign` (`campaign_id`),
  CONSTRAINT `multi_capaign_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  CONSTRAINT `multi_capaign_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `admin_clients_info` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO users (id, name, email, email_verified_at, roll, password, remember_token, created_at, updated_at) VALUES ('1','Admin','admin@admin.com','','0','$2y$10$OkQO.Yb.VY.qJ0M65zfZ7OrWTVs0ST2DzUQ0FK9qFbKFVsiMZP7cm','','2022-04-28 00:16:13','2022-04-28 00:16:13');

INSERT INTO users (id, name, email, email_verified_at, roll, password, remember_token, created_at, updated_at) VALUES ('2','User','user@user.com','','1','$2y$10$25ZZz.boEJ2HJnRzEA1w5OZa2j9cXeCSE6EPRJXp8GVzmdYgHHGHC','','2022-04-28 00:16:14','2022-04-28 00:16:14');
