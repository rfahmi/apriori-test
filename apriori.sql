/*
 Navicat Premium Data Transfer

 Source Server         : Postgres Local
 Source Server Type    : PostgreSQL
 Source Server Version : 120004
 Source Host           : localhost:5432
 Source Catalog        : harnicid
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120004
 File Encoding         : 65001

 Date: 04/11/2020 23:36:43
*/


-- ----------------------------
-- Sequence structure for cart_row_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cart_row_id_seq";
CREATE SEQUENCE "public"."cart_row_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jobs_id_seq";
CREATE SEQUENCE "public"."jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_clients_id_seq";
CREATE SEQUENCE "public"."oauth_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for oauth_personal_access_clients_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."oauth_personal_access_clients_id_seq";
CREATE SEQUENCE "public"."oauth_personal_access_clients_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for transaction_header_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."transaction_header_id_seq";
CREATE SEQUENCE "public"."transaction_header_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for transaction_items_row_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."transaction_items_row_id_seq";
CREATE SEQUENCE "public"."transaction_items_row_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS "public"."cart";
CREATE TABLE "public"."cart" (
  "row_id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
),
  "item_id" int4,
  "qty" int4 DEFAULT 1
)
;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO "public"."cart" VALUES (19, 1706, 1);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS "public"."items";
CREATE TABLE "public"."items" (
  "item_id" int4 NOT NULL,
  "item_name" varchar(255) COLLATE "pg_catalog"."default",
  "item_price" numeric(10,2)
)
;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO "public"."items" VALUES (1176, 'Telur Ayam Negeri isi 10 pcs', 15000.00);
INSERT INTO "public"."items" VALUES (1706, 'Gulaku Gula Pasir Tebu 1Kg', 12500.00);
INSERT INTO "public"."items" VALUES (5334, 'Bimoli 2L 1 Dus - 6pcs', 158800.00);
INSERT INTO "public"."items" VALUES (968, 'Indomie Kuah Rasa Soto Mie Satu Dus isi 40 pcs', 89900.00);
INSERT INTO "public"."items" VALUES (976, 'Indomie Mie Goreng Satu Dus isi 40 pcs', 94900.00);
INSERT INTO "public"."items" VALUES (6091, 'Yupi Permen Roletto 8.1 gr', 1000.00);
INSERT INTO "public"."items" VALUES (587, 'Ultra Milk Rasa Coklat 1000 ML', 16500.00);
INSERT INTO "public"."items" VALUES (1233, 'Minyak Goreng Sawit Sunco 2 L', 26800.00);
INSERT INTO "public"."items" VALUES (1446, 'Psm Gula Pasir 1 Kg', 12500.00);
INSERT INTO "public"."items" VALUES (5058, 'Paseo Tissue 250 s - 2 Pcs', 22000.00);
INSERT INTO "public"."items" VALUES (5988, 'Greenfield Yogurt Drink lychee 250 ml - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (1245, 'Rosebrand Minyak Goreng 2L', 25800.00);
INSERT INTO "public"."items" VALUES (353, 'Indomie Mie Goreng 1 Pcs ', 2500.00);
INSERT INTO "public"."items" VALUES (5949, 'Henis Roti Baso Ayam Sweet Classic 1pcs', 11000.00);
INSERT INTO "public"."items" VALUES (5374, 'Yakult 5 x 65 ml 2 Pcs', 16000.00);
INSERT INTO "public"."items" VALUES (1698, 'Frisian Flag Uht Purefarm Coklat 900Ml', 16800.00);
INSERT INTO "public"."items" VALUES (934, 'Attack Jaz1 Deterjen Bubuk Pesona Segar 1700 gr', 28900.00);
INSERT INTO "public"."items" VALUES (1703, 'Greenfield Uht Fullcream 1000Ml', 19500.00);
INSERT INTO "public"."items" VALUES (1235, 'Tropical Minyak Goreng 2 L', 26800.00);
INSERT INTO "public"."items" VALUES (6062, 'Telur Ayam Negeri isi 10 Pcs - 2 PACK', 35000.00);
INSERT INTO "public"."items" VALUES (5184, 'Harmony Sabun Mandi Batang Melon 70gr', 2500.00);
INSERT INTO "public"."items" VALUES (3981, 'Greenfield Fresh Milk 1000 ml', 28800.00);
INSERT INTO "public"."items" VALUES (950, 'Kapal Api Special Mix 10x25gr', 12900.00);
INSERT INTO "public"."items" VALUES (4426, 'Roti Tawar Kupas', 15500.00);
INSERT INTO "public"."items" VALUES (4429, 'Roti Sobek Cokelat Keju', 15500.00);
INSERT INTO "public"."items" VALUES (1244, 'Filma Minyak Goreng 2L', 26800.00);
INSERT INTO "public"."items" VALUES (1234, 'Sunco Minyak Goreng Sawit 1 L', 10000.00);
INSERT INTO "public"."items" VALUES (2533, 'LAURIER  Super Maxi Wing 20pcs', 18000.00);
INSERT INTO "public"."items" VALUES (4427, 'Roti Tawar Gandum', 18500.00);
INSERT INTO "public"."items" VALUES (4433, 'Roti Sandwich Cokelat  ', 4500.00);
INSERT INTO "public"."items" VALUES (6031, 'Pop Mie Soto Ayam PAke NAsi 1pcs', 6000.00);
INSERT INTO "public"."items" VALUES (4428, 'Roti Sobek Cokelat', 15500.00);
INSERT INTO "public"."items" VALUES (3939, 'Indomie Ayam Bawang - 10 Pcs Free Piring', 23000.00);
INSERT INTO "public"."items" VALUES (966, 'Indomie Rasa Ayam Bawang Satu Dus isi 40 pcs', 89900.00);
INSERT INTO "public"."items" VALUES (5458, 'Pepsodent Fresh Cool Mint 190gr', 10000.00);
INSERT INTO "public"."items" VALUES (3321, 'Dettol Re energizing 65 gr - 3Pcs', 10000.00);
INSERT INTO "public"."items" VALUES (5297, 'Gulaku Gula Tebu 1kg - 8pcs', 100000.00);
INSERT INTO "public"."items" VALUES (3912, 'Greenfield Yogurt Rasa Strawberry 125 Gr', 12500.00);
INSERT INTO "public"."items" VALUES (4424, 'Roti Tawar Double Soft', 18500.00);
INSERT INTO "public"."items" VALUES (1316, 'Indomie Mi Goreng Paket 10pcs', 20000.00);
INSERT INTO "public"."items" VALUES (5093, 'Indomie Mi Goreng 2pcs', 0.00);
INSERT INTO "public"."items" VALUES (4430, 'Roti Sobek Cokelat Srikaya', 15500.00);
INSERT INTO "public"."items" VALUES (4181, 'Roma Malkist Cracker 135gr', 2500.00);
INSERT INTO "public"."items" VALUES (6056, 'Kanzler Crispy Chicken Nugget 450gr - 2pcs', 90000.00);
INSERT INTO "public"."items" VALUES (2532, 'Laurier Super Maxi Wing isi 10pcs', 8200.00);
INSERT INTO "public"."items" VALUES (6055, 'Kanzler Chicken Nugget 450gr - 2pcs', 70000.00);
INSERT INTO "public"."items" VALUES (6057, 'Kanzler Crispy Chicken Nugget 450gr + Chicken Nugget 450gr', 70000.00);
INSERT INTO "public"."items" VALUES (4431, 'Roti Krim Cokelat', 5000.00);
INSERT INTO "public"."items" VALUES (6112, 'Roma Biskuit Kelapa 300gr - 2pcs', 10000.00);
INSERT INTO "public"."items" VALUES (3962, 'Celemek T3 Waterproof - 063', 10000.00);
INSERT INTO "public"."items" VALUES (3984, 'Kin Fresh Milk Chocolate 1000ml', 15000.00);

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."jobs";
CREATE TABLE "public"."jobs" (
  "id" int8 NOT NULL DEFAULT nextval('jobs_id_seq'::regclass),
  "queue" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "attempts" int2 NOT NULL,
  "reserved_at" int4,
  "available_at" int4 NOT NULL,
  "created_at" int4 NOT NULL
)
;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "public"."migrations" VALUES (3, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO "public"."migrations" VALUES (4, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (6, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2020_10_14_095220_create_jobs_table', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_access_tokens";
CREATE TABLE "public"."oauth_access_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "client_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO "public"."oauth_access_tokens" VALUES ('8dfcc13c6dfe8443876f1d9d92cf22359ef9e41b3813891e4c7a51af5034ef7019a7fd56115f9725', 1, 1, 'authToken', '[]', 'f', '2020-09-21 18:35:49', '2020-09-21 18:35:49', '2021-09-21 18:35:49');
INSERT INTO "public"."oauth_access_tokens" VALUES ('77fdd4094b3144deb983611955b2fbc900d8db4dd7f65085403b2eced3eb7d78acc9409e1a60c29a', 1, 1, 'authToken', '[]', 'f', '2020-09-21 18:37:08', '2020-09-21 18:37:08', '2021-09-21 18:37:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('1c23faa8c995a8c5476d90ed71ac2d6c69c2a24ee9b61dbf59d080b3ce7492de832ba349773c27c6', 1, 1, 'authToken', '[]', 'f', '2020-09-21 18:37:42', '2020-09-21 18:37:42', '2021-09-21 18:37:42');
INSERT INTO "public"."oauth_access_tokens" VALUES ('f77c48702d322d3aa37b1a34fff617f53dd5208757356ce0b2dd22efebc9842622eefb800f69ad9d', 1, 1, 'authToken', '[]', 'f', '2020-09-22 07:28:08', '2020-09-22 07:28:08', '2021-09-22 07:28:08');
INSERT INTO "public"."oauth_access_tokens" VALUES ('e92f285ee721eb3b6ecd6d8f22154212bd1aa8f8bc68fa90fdad404248b16ea8e142fb9f4c57244c', 1, 1, 'authToken', '[]', 'f', '2020-09-22 07:28:56', '2020-09-22 07:28:56', '2021-09-22 07:28:56');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_auth_codes";
CREATE TABLE "public"."oauth_auth_codes" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL,
  "client_id" int8 NOT NULL,
  "scopes" text COLLATE "pg_catalog"."default",
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_clients";
CREATE TABLE "public"."oauth_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_clients_id_seq'::regclass),
  "user_id" int8,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(100) COLLATE "pg_catalog"."default",
  "provider" varchar(255) COLLATE "pg_catalog"."default",
  "redirect" text COLLATE "pg_catalog"."default" NOT NULL,
  "personal_access_client" bool NOT NULL,
  "password_client" bool NOT NULL,
  "revoked" bool NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO "public"."oauth_clients" VALUES (1, NULL, 'Laravel Personal Access Client', 'Tiby6sGp67qOD9c0ukSsyjUXyLt3AbeshG3jeDph', NULL, 'http://localhost', 't', 'f', 'f', '2020-09-21 17:13:23', '2020-09-21 17:13:23');
INSERT INTO "public"."oauth_clients" VALUES (2, NULL, 'Laravel Password Grant Client', 'KUFlqQ781OhdguSF6ERfyUoUTVEXOJYnrtSWr1C6', 'users', 'http://localhost', 'f', 't', 'f', '2020-09-21 17:13:23', '2020-09-21 17:13:23');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_personal_access_clients";
CREATE TABLE "public"."oauth_personal_access_clients" (
  "id" int8 NOT NULL DEFAULT nextval('oauth_personal_access_clients_id_seq'::regclass),
  "client_id" int8 NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO "public"."oauth_personal_access_clients" VALUES (1, 1, '2020-09-21 17:13:23', '2020-09-21 17:13:23');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth_refresh_tokens";
CREATE TABLE "public"."oauth_refresh_tokens" (
  "id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "access_token_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "revoked" bool NOT NULL,
  "expires_at" timestamp(0)
)
;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for transaction_header
-- ----------------------------
DROP TABLE IF EXISTS "public"."transaction_header";
CREATE TABLE "public"."transaction_header" (
  "trx_id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
),
  "trx_customer" varchar(255) COLLATE "pg_catalog"."default",
  "trx_amount" numeric(10,2)
)
;

-- ----------------------------
-- Records of transaction_header
-- ----------------------------
INSERT INTO "public"."transaction_header" VALUES (19415, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19412, '11203', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19409, '823', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19408, '10508', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19407, '10281', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19405, '9929', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19402, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19401, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19398, '1667', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19396, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19395, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19394, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19393, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19392, '3859', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19390, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19389, '7825', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19388, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19387, '7221', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19386, '7221', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19385, '10425', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19383, '11488', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19382, '10705', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19380, '252', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19379, '11473', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19378, '11745', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19377, '4845', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19376, '2927', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19375, '11307', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19373, '3946', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19371, '7513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19370, '6310', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19369, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19367, '7513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19366, '6237', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19362, '572', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19360, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19359, '11905', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19357, '9044', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19354, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19353, '823', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19352, '11906', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19351, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19350, '1784', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19349, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19346, '2188', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19343, '3668', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19340, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19339, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19337, '8550', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19333, '11724', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19330, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19329, '11874', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19327, '11642', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19318, '11685', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19317, '11797', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19315, '11904', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19314, '185', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19311, '4836', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19310, '11874', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19309, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19308, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19307, '11491', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19304, '11895', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19302, '10331', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19300, '228', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19299, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19298, '7066', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19297, '9616', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19295, '11895', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19292, '5605', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19286, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19285, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19284, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19281, '11724', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19279, '11874', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19277, '10945', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19275, '9934', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19267, '11885', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19265, '6415', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19263, '10719', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19260, '11773', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19258, '11373', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19257, '11837', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19256, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19255, '10200', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19253, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19252, '4527', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19251, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19250, '7698', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19249, '11746', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19248, '6567', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19241, '10281', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19240, '1694', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19239, '11489', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19238, '228', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19237, '11874', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19236, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19235, '4363', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19232, '11875', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19231, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19228, '4182', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19227, '9097', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19226, '1627', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19223, '11507', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19219, '4187', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19218, '11583', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19214, '2188', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19210, '8681', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19209, '558', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19208, '10719', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19207, '3859', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19206, '1784', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19203, '11551', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19202, '4182', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19201, '11651', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19200, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19198, '11866', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19197, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19196, '2635', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19190, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19189, '1627', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19188, '11487', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19187, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19183, '214', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19180, '8001', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19179, '11857', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19178, '11856', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19177, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19176, '6446', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19175, '9097', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19172, '11197', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19171, '11489', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19170, '11491', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19167, '10386', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19165, '11855', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19164, '11854', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19163, '11853', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19162, '11852', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19161, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19160, '11791', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19159, '4845', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19158, '8731', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19157, '11847', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19155, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19154, '11488', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19152, '823', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19151, '252', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19149, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19146, '10646', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19143, '11840', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19141, '11778', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19140, '11616', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19138, '11841', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19136, '10856', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19135, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19134, '8524', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19133, '11837', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19132, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19130, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19128, '7912', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19127, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19126, '11773', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19125, '11551', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19124, '11834', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19123, '5605', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19121, '572', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19120, '3668', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19117, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19114, '11833', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19113, '7679', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19112, '7090', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19111, '136', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19109, '11689', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19105, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19104, '11791', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19101, '8646', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19100, '177', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19098, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19097, '10508', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19096, '172', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19095, '214', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19094, '2188', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19093, '823', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19091, '11827', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19088, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19086, '11821', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19085, '11791', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19081, '11823', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19080, '11823', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19076, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19067, '11197', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19064, '11814', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19063, '10939', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19062, '5383', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19060, '10330', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19057, '3859', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19056, '11811', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19055, '10705', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19054, '6148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19049, '6442', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19047, '1635', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19044, '9803', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19043, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19042, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19037, '2308', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19035, '11053', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19034, '6885', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19033, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19032, '11197', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19030, '10966', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19029, '6509', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19024, '258', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19022, '11796', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19019, '11793', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19018, '11776', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19017, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19016, '11786', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19015, '11791', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19013, '7980', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19012, '10327', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19010, '8373', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19009, '11786', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19008, '11784', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19007, '11405', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19004, '11427', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19003, '11782', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19002, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19000, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18998, '1002', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18997, '11422', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18992, '7513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18989, '9097', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18988, '10488', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18983, '1627', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18981, '9097', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18980, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18977, '11261', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18975, '11769', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18973, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18971, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18970, '10719', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18968, '258', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18967, '10558', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18966, '11775', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18965, '11491', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18962, '11507', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18961, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18959, '10939', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18956, '11772', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18953, '185', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18951, '9342', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18949, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18948, '4275', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18946, '8816', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18944, '11767', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18943, '11762', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18937, '1002', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18936, '943', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18934, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18932, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18931, '2635', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18930, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18928, '9791', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18925, '11383', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18924, '7825', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18922, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18920, '4187', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18914, '11751', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18913, '11752', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18912, '11753', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18909, '8681', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18905, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18904, '10779', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18902, '7979', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18899, '589', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18897, '11737', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18895, '11573', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18893, '11726', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18892, '144', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18890, '1784', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18889, '11242', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18888, '8681', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18887, '11053', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18886, '479', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18885, '11246', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18884, '11714', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18880, '10159', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18879, '10159', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18875, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18870, '4766', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18866, '1002', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18865, '11736', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18864, '7072', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18863, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18862, '11128', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18859, '11734', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18858, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18856, '11733', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18855, '8550', 0.00);
INSERT INTO "public"."transaction_header" VALUES (18853, '10719', 0.00);

-- ----------------------------
-- Table structure for transaction_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."transaction_items";
CREATE TABLE "public"."transaction_items" (
  "row_id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
),
  "trx_id" int4,
  "item_id" int4,
  "qty" int4,
  "price" numeric(10,2)
)
;

-- ----------------------------
-- Records of transaction_items
-- ----------------------------
INSERT INTO "public"."transaction_items" VALUES (30874, 19402, 1706, 8, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (30875, 19402, 5334, 1, 158800.00);
INSERT INTO "public"."transaction_items" VALUES (30892, 19393, 968, 6, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (30893, 19393, 976, 3, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (30894, 19393, 5334, 1, 158800.00);
INSERT INTO "public"."transaction_items" VALUES (30909, 19387, 587, 2, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (30910, 19387, 1233, 2, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (30911, 19387, 1446, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (30935, 19379, 353, 10, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (30939, 19379, 5949, 3, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (30970, 19367, 976, 1, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (30971, 19367, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (30999, 19359, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31000, 19359, 1698, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (31011, 19351, 968, 5, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31012, 19351, 976, 3, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31013, 19351, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31024, 19343, 1235, 2, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31026, 19343, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31049, 19329, 1233, 6, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31050, 19329, 5334, 3, 158800.00);
INSERT INTO "public"."transaction_items" VALUES (31060, 19315, 1698, 2, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (31061, 19315, 5184, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31067, 19311, 1233, 4, 23900.00);
INSERT INTO "public"."transaction_items" VALUES (31068, 19311, 1233, 2, 23900.00);
INSERT INTO "public"."transaction_items" VALUES (31069, 19311, 1706, 10, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31083, 19304, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31084, 19304, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31103, 19297, 2533, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (31106, 19297, 4427, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31109, 19295, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31110, 19295, 4433, 3, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (31130, 19279, 1706, 12, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31132, 19279, 3939, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (31149, 19260, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31150, 19260, 5458, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31158, 19256, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31160, 19256, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31161, 19256, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31165, 19255, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31168, 19255, 5458, 2, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31182, 19251, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31183, 19251, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31185, 19250, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31187, 19250, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31189, 19249, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31191, 19249, 5458, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31201, 19239, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31202, 19239, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31205, 19238, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31208, 19238, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31209, 19237, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31210, 19237, 5297, 2, 100000.00);
INSERT INTO "public"."transaction_items" VALUES (31211, 19236, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31212, 19236, 5297, 2, 100000.00);
INSERT INTO "public"."transaction_items" VALUES (31213, 19235, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31214, 19235, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31215, 19232, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31216, 19232, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31221, 19228, 976, 2, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31222, 19228, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31225, 19226, 587, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (31226, 19226, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31227, 19223, 950, 1, 12900.00);
INSERT INTO "public"."transaction_items" VALUES (31228, 19223, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31248, 19210, 4424, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31249, 19210, 4424, 2, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31253, 19208, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31254, 19208, 3939, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (31262, 19202, 966, 2, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31263, 19202, 1234, 6, 14600.00);
INSERT INTO "public"."transaction_items" VALUES (31265, 19202, 5334, 2, 152800.00);
INSERT INTO "public"."transaction_items" VALUES (31272, 19198, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31273, 19198, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31308, 19179, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31309, 19179, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31310, 19179, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31311, 19178, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31312, 19178, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31313, 19178, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31321, 19176, 5058, 2, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31322, 19176, 5458, 1, 12365.00);
INSERT INTO "public"."transaction_items" VALUES (31325, 19175, 1235, 1, 26000.00);
INSERT INTO "public"."transaction_items" VALUES (31326, 19175, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31329, 19171, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31330, 19171, 1446, 3, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31335, 19167, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31336, 19167, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31337, 19167, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31339, 19165, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31341, 19165, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31342, 19164, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31343, 19164, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31344, 19164, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31345, 19163, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31346, 19163, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31347, 19163, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31348, 19162, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31349, 19162, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31350, 19162, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31351, 19161, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31352, 19161, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31353, 19160, 966, 4, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31354, 19160, 968, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31355, 19160, 976, 2, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31356, 19160, 1316, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (31359, 19158, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31360, 19158, 4430, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31409, 19138, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31410, 19138, 4433, 1, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (31415, 19135, 968, 3, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31416, 19135, 976, 5, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31418, 19134, 1244, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31422, 19134, 4181, 0, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31425, 19133, 968, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31426, 19133, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31427, 19133, 6031, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (31430, 19132, 1703, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (31434, 19132, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31446, 19128, 5949, 2, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (31447, 19128, 6056, 1, 90000.00);
INSERT INTO "public"."transaction_items" VALUES (31450, 19127, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (31451, 19127, 1245, 2, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (31453, 19127, 1446, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31456, 19127, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (31463, 19125, 353, 5, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31468, 19125, 2532, 1, 8200.00);
INSERT INTO "public"."transaction_items" VALUES (31470, 19124, 1235, 1, 26000.00);
INSERT INTO "public"."transaction_items" VALUES (31471, 19124, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31476, 19123, 4427, 2, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31477, 19123, 4433, 2, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (31495, 19114, 1698, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (31497, 19114, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31500, 19112, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (31501, 19112, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31511, 19109, 587, 2, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (31516, 19109, 5988, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (31519, 19104, 950, 2, 12900.00);
INSERT INTO "public"."transaction_items" VALUES (31520, 19104, 966, 2, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31521, 19104, 968, 4, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31523, 19104, 1706, 7, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31527, 19100, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (31532, 19100, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (31533, 19100, 5949, 4, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (31535, 19098, 968, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31536, 19098, 1233, 6, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (31537, 19098, 1316, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31538, 19098, 3939, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (31547, 19096, 3912, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31548, 19096, 3912, 6, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31564, 19091, 976, 1, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31565, 19091, 5093, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (31572, 19085, 976, 2, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31573, 19085, 1706, 10, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31579, 19080, 6055, 1, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31580, 19080, 6057, 0, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31586, 19067, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31587, 19067, 6057, 1, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31599, 19057, 353, 5, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31601, 19057, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31624, 19044, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31625, 19044, 5949, 5, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (31629, 19042, 4424, 2, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31631, 19042, 4427, 2, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31632, 19042, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31633, 19042, 4429, 2, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31634, 19042, 4430, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31635, 19042, 4431, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31648, 19033, 950, 2, 12900.00);
INSERT INTO "public"."transaction_items" VALUES (31649, 19033, 968, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31652, 19032, 1316, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31653, 19032, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31654, 19030, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31657, 19030, 3981, 2, 26600.00);
INSERT INTO "public"."transaction_items" VALUES (31659, 19029, 976, 1, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31660, 19029, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31663, 19022, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31664, 19022, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31665, 19019, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31666, 19019, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31675, 19017, 6091, 3, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (31676, 19017, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31677, 19016, 1446, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31678, 19016, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31679, 19015, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31680, 19015, 3939, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (31688, 19010, 934, 2, 28900.00);
INSERT INTO "public"."transaction_items" VALUES (31689, 19010, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31692, 19009, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31693, 19009, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31694, 19009, 2533, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31700, 19004, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31702, 19004, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31703, 19003, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31704, 19003, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31705, 19002, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31707, 19002, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31717, 18997, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31718, 18997, 3962, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31719, 18997, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31725, 18989, 1446, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31726, 18989, 3962, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31727, 18989, 6112, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31731, 18983, 1446, 2, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31732, 18983, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31733, 18981, 1446, 3, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31734, 18981, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31738, 18977, 1446, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31739, 18977, 2533, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31742, 18977, 3962, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31745, 18975, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31746, 18975, 1698, 2, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (31747, 18973, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31749, 18973, 4433, 1, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (31753, 18971, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31754, 18971, 3962, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31755, 18971, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31756, 18970, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31758, 18970, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31762, 18967, 587, 2, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (31763, 18967, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31764, 18967, 3962, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31766, 18966, 966, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31767, 18966, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31768, 18965, 1446, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31769, 18965, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31772, 18961, 968, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31773, 18961, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31774, 18959, 1446, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31775, 18959, 6112, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (31781, 18951, 4426, 2, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31782, 18951, 4433, 2, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (31797, 18944, 6055, 1, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31798, 18944, 6056, 1, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31810, 18934, 4429, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31811, 18934, 4430, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31812, 18934, 4431, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31813, 18934, 4431, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31821, 18931, 976, 1, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (31822, 18931, 5297, 1, 100000.00);
INSERT INTO "public"."transaction_items" VALUES (31827, 18928, 3981, 1, 26600.00);
INSERT INTO "public"."transaction_items" VALUES (31828, 18928, 4424, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (31838, 18924, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (31840, 18924, 6057, 1, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31841, 18922, 968, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (31843, 18922, 1245, 1, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (31845, 18922, 4181, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31846, 18922, 6062, 1, 30000.00);
INSERT INTO "public"."transaction_items" VALUES (31854, 18913, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31855, 18913, 4181, 0, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31857, 18912, 3984, 2, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (31858, 18912, 6056, 1, 70000.00);
INSERT INTO "public"."transaction_items" VALUES (31867, 18904, 934, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31869, 18904, 3984, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (31870, 18904, 4181, 2, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31873, 18902, 1244, 2, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31874, 18902, 5184, 2, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (31877, 18897, 1244, 2, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31878, 18897, 2532, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31879, 18897, 4181, 2, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31880, 18897, 5184, 2, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (31892, 18890, 934, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31893, 18890, 2532, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31904, 18885, 934, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31905, 18885, 5297, 1, 100000.00);
INSERT INTO "public"."transaction_items" VALUES (31906, 18884, 2532, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31907, 18884, 4181, 2, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31908, 18884, 5374, 2, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (31909, 18880, 1244, 0, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31910, 18880, 4181, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31911, 18879, 1244, 2, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31912, 18879, 4181, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31913, 18879, 5184, 2, 1010.00);
INSERT INTO "public"."transaction_items" VALUES (31927, 18865, 934, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31928, 18865, 1244, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31929, 18865, 4181, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31930, 18865, 5184, 2, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (31934, 18863, 1244, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (31935, 18863, 2532, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31936, 18863, 4181, 2, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (31938, 18862, 934, 2, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (31942, 18862, 5374, 2, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (31944, 18862, 6062, 1, 30000.00);
INSERT INTO "public"."transaction_items" VALUES (31945, 18859, 587, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (31946, 18859, 2532, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (31948, 18858, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (31950, 18858, 5297, 1, 100000.00);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES (2, 'sa2', 'sa2@mail.com', NULL, '$2y$10$rz.QvjIcQGsnPsNifowVp.HCGUOONKFDJLCEmLUyqmzX0Jtea.8aa', NULL, '2020-09-22 07:50:50', '2020-09-22 07:50:50');
INSERT INTO "public"."users" VALUES (5, 'sa3', 'sa3@mail.com', NULL, '$2y$10$KAbrfbCvSetjLX/t4Z4vlOibgJrcl80vWlzMLedCDysq.Hyun2U8G', NULL, '2020-09-22 07:54:40', '2020-09-22 07:54:40');
INSERT INTO "public"."users" VALUES (1, 'fahmi', 'sa@mail.com', NULL, '$2y$10$.TPKzeRZjP1fcsbZYKe2des9Lu9F72Qc5y9mNpuYLbcFvNSCIy0La', NULL, '2020-09-21 18:35:37', '2020-09-22 07:58:56');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cart_row_id_seq"
OWNED BY "public"."cart"."row_id";
SELECT setval('"public"."cart_row_id_seq"', 20, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."jobs_id_seq"
OWNED BY "public"."jobs"."id";
SELECT setval('"public"."jobs_id_seq"', 30, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_clients_id_seq"
OWNED BY "public"."oauth_clients"."id";
SELECT setval('"public"."oauth_clients_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."oauth_personal_access_clients_id_seq"
OWNED BY "public"."oauth_personal_access_clients"."id";
SELECT setval('"public"."oauth_personal_access_clients_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."transaction_header_id_seq"
OWNED BY "public"."transaction_header"."trx_id";
SELECT setval('"public"."transaction_header_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."transaction_items_row_id_seq"
OWNED BY "public"."transaction_items"."row_id";
SELECT setval('"public"."transaction_items_row_id_seq"', 31957, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 6, true);

-- ----------------------------
-- Primary Key structure for table cart
-- ----------------------------
ALTER TABLE "public"."cart" ADD CONSTRAINT "cart_pkey" PRIMARY KEY ("row_id");

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table items
-- ----------------------------
ALTER TABLE "public"."items" ADD CONSTRAINT "items_pkey" PRIMARY KEY ("item_id");

-- ----------------------------
-- Indexes structure for table jobs
-- ----------------------------
CREATE INDEX "jobs_queue_index" ON "public"."jobs" USING btree (
  "queue" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table jobs
-- ----------------------------
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_access_tokens
-- ----------------------------
CREATE INDEX "oauth_access_tokens_user_id_index" ON "public"."oauth_access_tokens" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_access_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_access_tokens" ADD CONSTRAINT "oauth_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_auth_codes
-- ----------------------------
CREATE INDEX "oauth_auth_codes_user_id_index" ON "public"."oauth_auth_codes" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_auth_codes
-- ----------------------------
ALTER TABLE "public"."oauth_auth_codes" ADD CONSTRAINT "oauth_auth_codes_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_clients
-- ----------------------------
CREATE INDEX "oauth_clients_user_id_index" ON "public"."oauth_clients" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_clients
-- ----------------------------
ALTER TABLE "public"."oauth_clients" ADD CONSTRAINT "oauth_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table oauth_personal_access_clients
-- ----------------------------
ALTER TABLE "public"."oauth_personal_access_clients" ADD CONSTRAINT "oauth_personal_access_clients_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth_refresh_tokens
-- ----------------------------
CREATE INDEX "oauth_refresh_tokens_access_token_id_index" ON "public"."oauth_refresh_tokens" USING btree (
  "access_token_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth_refresh_tokens
-- ----------------------------
ALTER TABLE "public"."oauth_refresh_tokens" ADD CONSTRAINT "oauth_refresh_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table transaction_header
-- ----------------------------
ALTER TABLE "public"."transaction_header" ADD CONSTRAINT "transaction_header_pkey" PRIMARY KEY ("trx_id");

-- ----------------------------
-- Primary Key structure for table transaction_items
-- ----------------------------
ALTER TABLE "public"."transaction_items" ADD CONSTRAINT "transaction_items_pkey" PRIMARY KEY ("row_id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");
