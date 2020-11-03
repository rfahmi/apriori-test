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

 Date: 04/11/2020 01:04:22
*/


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
  "qty" int4
)
;

-- ----------------------------
-- Records of cart
-- ----------------------------

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
INSERT INTO "public"."failed_jobs" VALUES (1, '74bb96e0-e5b4-4361-926c-ddfbf7477ed8', 'database', 'default', '{"uuid":"74bb96e0-e5b4-4361-926c-ddfbf7477ed8","displayName":"App\\Jobs\\AprioriTrain","job":"Illuminate\\Queue\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"App\\Jobs\\AprioriTrain","command":"O:21:\"App\\Jobs\\AprioriTrain\":9:{s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";N;s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}', 'Illuminate\Queue\MaxAttemptsExceededException: App\Jobs\AprioriTrain has been attempted too many times or run too long. The job may have previously timed out. in D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Worker.php:713
Stack trace:
#0 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Worker.php(482): Illuminate\Queue\Worker->maxAttemptsExceededException(Object(Illuminate\Queue\Jobs\DatabaseJob))
#1 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Worker.php(396): Illuminate\Queue\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(''database'', Object(Illuminate\Queue\Jobs\DatabaseJob), 1)
#2 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Worker.php(356): Illuminate\Queue\Worker->process(''database'', Object(Illuminate\Queue\Jobs\DatabaseJob), Object(Illuminate\Queue\WorkerOptions))
#3 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Worker.php(158): Illuminate\Queue\Worker->runJob(Object(Illuminate\Queue\Jobs\DatabaseJob), ''database'', Object(Illuminate\Queue\WorkerOptions))
#4 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Console\WorkCommand.php(116): Illuminate\Queue\Worker->daemon(''database'', ''default'', Object(Illuminate\Queue\WorkerOptions))
#5 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Queue\Console\WorkCommand.php(100): Illuminate\Queue\Console\WorkCommand->runWorker(''database'', ''default'')
#6 [internal function]: Illuminate\Queue\Console\WorkCommand->handle()
#7 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Container\BoundMethod.php(37): call_user_func_array(Array, Array)
#8 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Container\Util.php(40): Illuminate\Container\BoundMethod::Illuminate\Container\{closure}()
#9 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Container\BoundMethod.php(95): Illuminate\Container\Util::unwrapIfClosure(Object(Closure))
#10 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Container\BoundMethod.php(39): Illuminate\Container\BoundMethod::callBoundMethod(Object(Illuminate\Foundation\Application), Array, Object(Closure))
#11 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Container\Container.php(596): Illuminate\Container\BoundMethod::call(Object(Illuminate\Foundation\Application), Array, Array, NULL)
#12 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Console\Command.php(136): Illuminate\Container\Container->call(Array)
#13 D:\Projects\Personal-project\api-strarter\vendor\symfony\console\Command\Command.php(258): Illuminate\Console\Command->execute(Object(Symfony\Component\Console\Input\ArgvInput), Object(Illuminate\Console\OutputStyle))
#14 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Console\Command.php(121): Symfony\Component\Console\Command\Command->run(Object(Symfony\Component\Console\Input\ArgvInput), Object(Illuminate\Console\OutputStyle))
#15 D:\Projects\Personal-project\api-strarter\vendor\symfony\console\Application.php(916): Illuminate\Console\Command->run(Object(Symfony\Component\Console\Input\ArgvInput), Object(Symfony\Component\Console\Output\ConsoleOutput))
#16 D:\Projects\Personal-project\api-strarter\vendor\symfony\console\Application.php(264): Symfony\Component\Console\Application->doRunCommand(Object(Illuminate\Queue\Console\WorkCommand), Object(Symfony\Component\Console\Input\ArgvInput), Object(Symfony\Component\Console\Output\ConsoleOutput))
#17 D:\Projects\Personal-project\api-strarter\vendor\symfony\console\Application.php(140): Symfony\Component\Console\Application->doRun(Object(Symfony\Component\Console\Input\ArgvInput), Object(Symfony\Component\Console\Output\ConsoleOutput))
#18 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Console\Application.php(93): Symfony\Component\Console\Application->run(Object(Symfony\Component\Console\Input\ArgvInput), Object(Symfony\Component\Console\Output\ConsoleOutput))
#19 D:\Projects\Personal-project\api-strarter\vendor\laravel\framework\src\Illuminate\Foundation\Console\Kernel.php(129): Illuminate\Console\Application->run(Object(Symfony\Component\Console\Input\ArgvInput), Object(Symfony\Component\Console\Output\ConsoleOutput))
#20 D:\Projects\Personal-project\api-strarter\artisan(37): Illuminate\Foundation\Console\Kernel->handle(Object(Symfony\Component\Console\Input\ArgvInput), Object(Symfony\Component\Console\Output\ConsoleOutput))
#21 {main}', '2020-11-03 15:23:17');

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
INSERT INTO "public"."items" VALUES (356, 'Indomie Kuah Rasa Ayam Bawang 1 Pcs', 2300.00);
INSERT INTO "public"."items" VALUES (1247, 'Nice Tisue 250 Lembar', 15000.00);
INSERT INTO "public"."items" VALUES (6091, 'Yupi Permen Roletto 8.1 gr', 1000.00);
INSERT INTO "public"."items" VALUES (1233, 'Minyak Goreng Sawit Sunco 2 L', 26800.00);
INSERT INTO "public"."items" VALUES (1446, 'Psm Gula Pasir 1 Kg', 12500.00);
INSERT INTO "public"."items" VALUES (2335, 'Tessa Tissue Towel 150 Sheet', 16400.00);
INSERT INTO "public"."items" VALUES (5058, 'Paseo Tissue 250 s - 2 Pcs', 22000.00);
INSERT INTO "public"."items" VALUES (5955, 'Nice Tissue Single Roll - 3pcs', 12000.00);
INSERT INTO "public"."items" VALUES (5988, 'Greenfield Yogurt Drink lychee 250 ml - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (1245, 'Rosebrand Minyak Goreng 2L', 25800.00);
INSERT INTO "public"."items" VALUES (1433, 'Royco Bumbu Rasa Ayam 230gr', 10500.00);
INSERT INTO "public"."items" VALUES (5868, 'Piattos Rumput Laut Snack 80 gr', 8800.00);
INSERT INTO "public"."items" VALUES (3003, 'Rosebrand Gula Tebu 1Kg', 12500.00);
INSERT INTO "public"."items" VALUES (3020, 'Nice Tissue 900Gr', 35600.00);
INSERT INTO "public"."items" VALUES (353, 'Indomie Mie Goreng 1 Pcs ', 2500.00);
INSERT INTO "public"."items" VALUES (5513, 'Potabee rasa Wagyu Beef Steak 68gr', 5800.00);
INSERT INTO "public"."items" VALUES (5949, 'Henis Roti Baso Ayam Sweet Classic 1pcs', 11000.00);
INSERT INTO "public"."items" VALUES (3123, 'CHIKI BALLS Rasa Keju 55gr', 6800.00);
INSERT INTO "public"."items" VALUES (4425, 'Roti Tawar Spesial', 12500.00);
INSERT INTO "public"."items" VALUES (4426, 'Roti Tawar Kupas', 15500.00);
INSERT INTO "public"."items" VALUES (4427, 'Roti Tawar Gandum', 18500.00);
INSERT INTO "public"."items" VALUES (4428, 'Roti Sobek Cokelat', 15500.00);
INSERT INTO "public"."items" VALUES (4429, 'Roti Sobek Cokelat Keju', 15500.00);
INSERT INTO "public"."items" VALUES (4430, 'Roti Sobek Cokelat Srikaya', 15500.00);
INSERT INTO "public"."items" VALUES (4433, 'Roti Sandwich Cokelat  ', 4500.00);
INSERT INTO "public"."items" VALUES (4502, 'Sari Roti Sandwich Srikaya Medan', 5000.00);
INSERT INTO "public"."items" VALUES (4620, 'Sari Roti Sobek Strawberry', 15500.00);
INSERT INTO "public"."items" VALUES (4622, 'Sari Roti Shandwich Blueberry', 5000.00);
INSERT INTO "public"."items" VALUES (4677, 'Sari Roti Isi Cokelat', 6000.00);
INSERT INTO "public"."items" VALUES (4678, 'Sari Roti Isi Keju', 6500.00);
INSERT INTO "public"."items" VALUES (4679, 'Sari Roti Isi Cokelat Keju', 6000.00);
INSERT INTO "public"."items" VALUES (2133, 'Milo Active Go 3in1 300gr', 36600.00);
INSERT INTO "public"."items" VALUES (2528, 'Carnation Krimer Kental Manis Tin 370gr', 11000.00);
INSERT INTO "public"."items" VALUES (5375, 'Cimory UHT Chocolate 250ml - 6pcs', 33300.00);
INSERT INTO "public"."items" VALUES (6035, 'Greenfield UHT Full Cream 1000 ml - 6 Pcs', 108000.00);
INSERT INTO "public"."items" VALUES (976, 'Indomie Mie Goreng Satu Dus isi 40 pcs', 94900.00);
INSERT INTO "public"."items" VALUES (1176, 'Telur Ayam Negeri isi 10 pcs', 17500.00);
INSERT INTO "public"."items" VALUES (1257, 'Bogasari Cakra Kembar Terigu 1 Kg ', 11800.00);
INSERT INTO "public"."items" VALUES (1959, 'La Fonte Spaghetti 450Gr', 16800.00);
INSERT INTO "public"."items" VALUES (4005, 'Super Bihun Kuah 51 Gr', 3800.00);
INSERT INTO "public"."items" VALUES (1294, 'Tessa tisue gulung 6 rol', 29900.00);
INSERT INTO "public"."items" VALUES (1353, 'Kacang Sukro Dua Kelinci Jagung Bakar 100gr', 8500.00);
INSERT INTO "public"."items" VALUES (2066, 'Nabati Richoco Coklat 115 gr', 6800.00);
INSERT INTO "public"."items" VALUES (2304, 'OISHI Sponge Crunch Strawberry 110gr', 5000.00);
INSERT INTO "public"."items" VALUES (2307, 'PRINGLES Original 107gr', 22000.00);
INSERT INTO "public"."items" VALUES (3378, 'Nissin Golden Malkist Coklat 120 gr', 7800.00);
INSERT INTO "public"."items" VALUES (3759, 'Yoichi Kacang Bali 100gr + Manisan Mangga 100gr', 50000.00);
INSERT INTO "public"."items" VALUES (3796, 'JETZ Choco Fiesta Snack 40 gr', 5200.00);
INSERT INTO "public"."items" VALUES (4011, 'Ovaltine Chocomalt Cookies 130 gr', 12600.00);
INSERT INTO "public"."items" VALUES (4450, 'Greenfield UHT Low Fat 1000ml', 19500.00);
INSERT INTO "public"."items" VALUES (4534, 'Momchips Snack Keripik Cabe 50 gr', 19800.00);
INSERT INTO "public"."items" VALUES (4536, 'Momchips Snack Keripik Pisang Oven 70 gr', 17500.00);
INSERT INTO "public"."items" VALUES (4675, 'Telur Negeri 3 Pac+ Cetakan Telur Random ', 50000.00);
INSERT INTO "public"."items" VALUES (4775, 'Nagitoz Rasa Pedas Keripik Talas 50g', 4500.00);
INSERT INTO "public"."items" VALUES (5532, 'Choco Pie Cacao Dark 6 pack', 16000.00);
INSERT INTO "public"."items" VALUES (5775, 'Paseo Tissue Kitchen Towel isi 3 Rolls', 35000.00);
INSERT INTO "public"."items" VALUES (5816, 'Indomie Ayam Geprek - 10 pcs ', 25000.00);
INSERT INTO "public"."items" VALUES (5895, 'Fitbar Tiramizu  22 gr', 5600.00);
INSERT INTO "public"."items" VALUES (928, 'Sunlight Jeruk Nipis 1600 ml Pounch', 34800.00);
INSERT INTO "public"."items" VALUES (1122, 'Soklin Liquid Violet 1600 ml', 26500.00);
INSERT INTO "public"."items" VALUES (1280, 'Wipol Pembersih Lantai Refill 780ml', 15800.00);
INSERT INTO "public"."items" VALUES (5054, 'Lifebouy Sabun Mandi Batang 110 gr', 5200.00);
INSERT INTO "public"."items" VALUES (5826, 'Tini Wini Biti Snack Rasa Cokelat 20 gr', 2200.00);
INSERT INTO "public"."items" VALUES (5928, 'Pepsodent Sikat Gigi Double Care Sensitive Soft', 22500.00);
INSERT INTO "public"."items" VALUES (5374, 'Yakult 5 x 65 ml 2 Pcs', 16000.00);
INSERT INTO "public"."items" VALUES (5779, 'PEPSODENT PASTA GIGI ANAK SWEET STRAWBERRY 50GR', 5500.00);
INSERT INTO "public"."items" VALUES (6165, 'Tolak Angin Permen Herbal - 3 sachet', 0.00);
INSERT INTO "public"."items" VALUES (1915, 'Baygon Aerosol Fruity Breeze 600ml', 37000.00);
INSERT INTO "public"."items" VALUES (1706, 'Gulaku Gula Pasir Tebu 1Kg', 12500.00);
INSERT INTO "public"."items" VALUES (5540, 'Meiji Hello Panda Chocolate 45gr', 7500.00);
INSERT INTO "public"."items" VALUES (5938, 'Nutrijel Jelly Shake Rasa Jambu Botol 340 ml', 5800.00);
INSERT INTO "public"."items" VALUES (1292, 'Nice tisue toilet EMB10s 10 rol', 32900.00);
INSERT INTO "public"."items" VALUES (3192, 'Barco Minyak Goreng Kelapa Jerigen 5 Liter', 135000.00);
INSERT INTO "public"."items" VALUES (3319, 'Dettol Original Protect 65 gr -3pcs', 13600.00);
INSERT INTO "public"."items" VALUES (5997, 'Nice Tisue Wajah 900gr 2ply - 2 pack', 68800.00);
INSERT INTO "public"."items" VALUES (1703, 'Greenfield Uht Fullcream 1000Ml', 19500.00);
INSERT INTO "public"."items" VALUES (5441, 'Paket Susu Mini 125ml', 15500.00);
INSERT INTO "public"."items" VALUES (1267, 'Tong Tji Jasmine Tea 25pcs', 13500.00);
INSERT INTO "public"."items" VALUES (6062, 'Telur Ayam Negeri isi 10 Pcs - 2 PACK', 35000.00);
INSERT INTO "public"."items" VALUES (1290, 'Ekonomi sabun cuci piring Lemon 480gr', 4900.00);
INSERT INTO "public"."items" VALUES (1184, 'Belibis Saus Sambal 340ml', 22200.00);
INSERT INTO "public"."items" VALUES (3804, 'Monde Butter Cookies 150 Gr', 16800.00);
INSERT INTO "public"."items" VALUES (6070, 'Monde Genji Original Pie 70 gr', 8900.00);
INSERT INTO "public"."items" VALUES (2319, 'Sereal Koko Krunch 330gr', 36600.00);
INSERT INTO "public"."items" VALUES (2323, 'Honey Stars Cereal 300gr', 39600.00);
INSERT INTO "public"."items" VALUES (1282, 'Super Pell Fresh Apel 770ml', 12600.00);
INSERT INTO "public"."items" VALUES (1399, 'Lifebuoy Sabun Mandi Cair Mild Care 900ml', 40200.00);
INSERT INTO "public"."items" VALUES (2168, 'Yuri Handsoap Rose Pouch 375ml', 19600.00);
INSERT INTO "public"."items" VALUES (3274, 'Yuri Handwash Strawberry Pouch 375ml', 19600.00);
INSERT INTO "public"."items" VALUES (3609, 'PEPSODENT PASTA GIGI SENSITIVE EXPERT FRESH 100GR', 22500.00);
INSERT INTO "public"."items" VALUES (3726, 'Harpic Pemberih Toilet Orange Botol 450 ml', 20800.00);
INSERT INTO "public"."items" VALUES (4815, 'Greenfields UHT Full Cream 1L - 2pcs', 38000.00);
INSERT INTO "public"."items" VALUES (956, 'Torabika Cappucino bag 25 gr x 10 pcs', 18800.00);
INSERT INTO "public"."items" VALUES (1445, 'Ultra Milk Low Fat Putih 1000ml', 17500.00);
INSERT INTO "public"."items" VALUES (5028, 'Zinc Shampo Hair Fall Treatment 340 ml', 24900.00);
INSERT INTO "public"."items" VALUES (1998, 'Tango Wafer Coklat Pouch 125 gr', 8000.00);
INSERT INTO "public"."items" VALUES (3190, 'Barco Minyak Goreng Kelapa Pouch 2Liter', 58000.00);
INSERT INTO "public"."items" VALUES (3282, 'Astor Vanilla 40 Gr', 6200.00);
INSERT INTO "public"."items" VALUES (1289, 'Ekonomi sabun cuci piring Putih 480gr', 4900.00);
INSERT INTO "public"."items" VALUES (1502, 'Tresemme Shampo Scalp Care 340ml', 37000.00);
INSERT INTO "public"."items" VALUES (1906, 'Dove Silky Dry 45ml', 22600.00);
INSERT INTO "public"."items" VALUES (2087, 'Nutrijel Rasa Cincau 15gr', 5500.00);
INSERT INTO "public"."items" VALUES (2223, 'WPC Pembersih Toilet Fresh Breeze 600ml', 15600.00);
INSERT INTO "public"."items" VALUES (3347, 'King''s FIsher Sarden Kaleng Sambal Hijau 425gr', 25800.00);
INSERT INTO "public"."items" VALUES (3595, 'Listerin Cool mint 250 ml', 23800.00);
INSERT INTO "public"."items" VALUES (3779, 'Bogasari Segitiga Biru untuk Aneka Makanan 1kg', 10200.00);
INSERT INTO "public"."items" VALUES (4006, 'Bunda Bihun Jagung 250 gr', 7000.00);
INSERT INTO "public"."items" VALUES (4015, 'Agarasa Strawberry 10 gr', 3800.00);
INSERT INTO "public"."items" VALUES (4025, 'Kobe Bakwan Kress 210 Gr', 7600.00);
INSERT INTO "public"."items" VALUES (4866, 'Diamond UHT Full Cream 200ml 6+1', 26000.00);
INSERT INTO "public"."items" VALUES (5003, 'Diamond Fresh Milk Plain + Strawberry + Chocholate 946ml', 54000.00);
INSERT INTO "public"."items" VALUES (5008, 'Lifebouy Handwash Total 10 - 2 Pcs', 24800.00);
INSERT INTO "public"."items" VALUES (5452, 'Palmolive Anti Dandruff Shampoo & Conditioner 180 ml', 20377.00);
INSERT INTO "public"."items" VALUES (5697, 'Nagata Pengki Melati Biru - NGT 0406 ', 15900.00);
INSERT INTO "public"."items" VALUES (6046, 'Bo Cabe Mie Goreng 105 gr', 5500.00);
INSERT INTO "public"."items" VALUES (2334, 'Mama Lemon Jeruk Nipis 1600ml Pounch', 32000.00);
INSERT INTO "public"."items" VALUES (3193, 'Snack French Fries 2000 - 68gr', 6700.00);
INSERT INTO "public"."items" VALUES (4229, 'Astor Double Cokelat 150 gr', 11800.00);
INSERT INTO "public"."items" VALUES (4794, 'Baygon Eucalyptus 600 ml ', 37000.00);
INSERT INTO "public"."items" VALUES (5458, 'Pepsodent Fresh Cool Mint 190gr', 12365.00);
INSERT INTO "public"."items" VALUES (5524, 'Kraft Kejucake 16gr', 2200.00);
INSERT INTO "public"."items" VALUES (5847, 'PSM Gula Pasir 1 Kg - 5 Pcs', 60000.00);
INSERT INTO "public"."items" VALUES (5979, 'Monde Snack Gold 25 gr', 2000.00);
INSERT INTO "public"."items" VALUES (5865, 'Nissin Lemonia Biskuit emon Cookies 130 gr', 6800.00);
INSERT INTO "public"."items" VALUES (5618, 'Greenfields Freshmilk Jersey 1000ml', 33000.00);
INSERT INTO "public"."items" VALUES (4432, 'Roti Krim Moka', 5000.00);
INSERT INTO "public"."items" VALUES (4464, 'Sari Roti Roti Cream Keju', 5000.00);
INSERT INTO "public"."items" VALUES (950, 'Kapal Api Special Mix 10x25gr', 12900.00);
INSERT INTO "public"."items" VALUES (3542, 'Indomilk Melon 190 ml', 5600.00);
INSERT INTO "public"."items" VALUES (3543, 'Indomilk Strawberry 190 ml', 4500.00);
INSERT INTO "public"."items" VALUES (1687, 'Diamond Milk Uht Full Cream 1000Ml', 16800.00);
INSERT INTO "public"."items" VALUES (3373, 'Roma Malkist Keju 120 gr', 6400.00);
INSERT INTO "public"."items" VALUES (926, 'Sunlight Jeruk Nipis 750ml Pounch', 15600.00);
INSERT INTO "public"."items" VALUES (1244, 'Filma Minyak Goreng 2L', 26800.00);
INSERT INTO "public"."items" VALUES (4783, 'Better Sandwich Biscuit Vanilla Cream 4 x 22g', 5600.00);
INSERT INTO "public"."items" VALUES (5155, 'Biore Guard Body Foam Lively Refresh 450 ml', 26600.00);
INSERT INTO "public"."items" VALUES (6031, 'Pop Mie Soto Ayam PAke NAsi 1pcs', 6000.00);
INSERT INTO "public"."items" VALUES (1140, 'Mama Lemon Jeruk Nipis 780 ml Pounch', 15300.00);
INSERT INTO "public"."items" VALUES (3985, 'Yakult 65 ml x 5 pcs', 9000.00);
INSERT INTO "public"."items" VALUES (5986, 'Greenfield Yogurt Drink Blueberry 250 ML - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (921, 'Rinso Deterjen Cair Gentle 700 ml', 20600.00);
INSERT INTO "public"."items" VALUES (923, 'Sunlight Sabun Cuci Piring Jeruk Nipis & Habbatussauda 755ml Pounch', 16000.00);
INSERT INTO "public"."items" VALUES (1276, 'Cussons Baby Tisue Basah Naturally 50s', 18000.00);
INSERT INTO "public"."items" VALUES (1429, 'Sasa Tepung Bakwan 235gr', 6600.00);
INSERT INTO "public"."items" VALUES (2555, 'Top Coffeee Mocca 20 x 30 gr', 16200.00);
INSERT INTO "public"."items" VALUES (3458, 'Jepitan Rambut Motif Ranting (6.5 Gr) Silver - 035', 4000.00);
INSERT INTO "public"."items" VALUES (3467, 'Jepit Rambut Motif Geometri Bahan Alloy (10 Gr) Segitiga - 044', 4000.00);
INSERT INTO "public"."items" VALUES (3811, 'Cheetos Cheddar Cheese 60 Gr', 6800.00);
INSERT INTO "public"."items" VALUES (3958, 'Ceres Festive Warna 225 Gr', 22000.00);
INSERT INTO "public"."items" VALUES (4028, 'Sajiku Tepung Bumbu Serbaguna 240 Gr', 7200.00);
INSERT INTO "public"."items" VALUES (4373, 'Diamond Fresh Milk Cokelat 946ml + Diamond Freshmilk Strawberry 946 ml', 42000.00);
INSERT INTO "public"."items" VALUES (5036, 'Ciptadent Whitening With Maxi White 190 gr', 14600.00);
INSERT INTO "public"."items" VALUES (5103, 'Selection Kapas Wajah 35 gr', 7200.00);
INSERT INTO "public"."items" VALUES (5151, 'Lervia Sabun Susu Cair Honey Pouch 400 ml', 17800.00);
INSERT INTO "public"."items" VALUES (5171, 'Emeron Shampo Soft & Smooth Sun Flower 340ml', 30800.00);
INSERT INTO "public"."items" VALUES (5436, 'Pronas Kornet Daging Sapi Pedas 198gr + Original 198gr', 37800.00);
INSERT INTO "public"."items" VALUES (6019, 'Colgate Great Regular Flavour Toothpaste / Pasta Gigi 180 gr', 9500.00);
INSERT INTO "public"."items" VALUES (6020, 'Colgate Maximum Cavity Protection Fresh Cool Mint Toothpaste / Pasta Gigi 180 gr', 9500.00);
INSERT INTO "public"."items" VALUES (973, 'Indomie Kari Ayam Satu Dus Karton 40 Pcs', 95600.00);
INSERT INTO "public"."items" VALUES (1234, 'Sunco Minyak Goreng Sawit 1 L', 10000.00);
INSERT INTO "public"."items" VALUES (5061, 'Ovaltine UHT Cokelat 125ml', 3200.00);
INSERT INTO "public"."items" VALUES (3321, 'Dettol Re energizing 65 gr - 3Pcs', 10000.00);
INSERT INTO "public"."items" VALUES (4221, 'Khong Guan Malkist Crackers 135gr - 2pcs', 10000.00);
INSERT INTO "public"."items" VALUES (3634, 'Tas Penyimpanan Gantung - Beige', 10000.00);
INSERT INTO "public"."items" VALUES (1198, 'Kispray Bluis Box 4x21 ml', 6300.00);
INSERT INTO "public"."items" VALUES (1501, 'Head and Shoulder Shampo Cool Menthol 400ML', 42000.00);
INSERT INTO "public"."items" VALUES (1746, 'Rexona Men Deodorant Roll On Sport Defence 45Ml', 17200.00);
INSERT INTO "public"."items" VALUES (2567, 'Excelso Arabica Gold 100gr', 28000.00);
INSERT INTO "public"."items" VALUES (3366, 'Regal Biskuit Marie 230 gr', 22800.00);
INSERT INTO "public"."items" VALUES (3722, 'Biore Handwash Foaming Fresh Antibacterial Pouch 250 ml', 17200.00);
INSERT INTO "public"."items" VALUES (4057, 'Wei wang Mantau Plain 8 pcs', 19500.00);
INSERT INTO "public"."items" VALUES (4522, 'Manjun Yaki Sushi Nori Double Roasted 22 gr', 27000.00);
INSERT INTO "public"."items" VALUES (4530, 'Tong Garden Salted Pistachios 30 gr', 16000.00);
INSERT INTO "public"."items" VALUES (4830, 'Tong Garden Salted Peanut 42 gr + Honey Peanut 42 gr', 13000.00);
INSERT INTO "public"."items" VALUES (608, 'Teh Kotak Jasmin Less Sugar 300 ml', 4000.00);

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
INSERT INTO "public"."jobs" VALUES (15, 'default', '{"uuid":"e9423177-266c-43e8-8843-dc6a985cb1b1","displayName":"App\\Jobs\\AprioriTrain","job":"Illuminate\\Queue\\CallQueuedHandler@call","maxTries":null,"maxExceptions":null,"backoff":null,"timeout":null,"retryUntil":null,"data":{"commandName":"App\\Jobs\\AprioriTrain","command":"O:21:\"App\\Jobs\\AprioriTrain\":9:{s:3:\"job\";N;s:10:\"connection\";N;s:5:\"queue\";N;s:15:\"chainConnection\";N;s:10:\"chainQueue\";N;s:19:\"chainCatchCallbacks\";N;s:5:\"delay\";N;s:10:\"middleware\";a:0:{}s:7:\"chained\";a:0:{}}"}}', 1, 1604424585, 1604424584, 1604424584);

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
INSERT INTO "public"."transaction_header" VALUES (19390, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19388, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19387, '7221', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19386, '7221', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19383, '11488', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19382, '10705', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19380, '252', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19379, '11473', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19378, '11745', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19377, '4845', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19375, '11307', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19373, '3946', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19372, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19370, '6310', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19367, '7513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19366, '6237', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19364, '10215', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19363, '4761', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19362, '572', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19360, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19358, '10215', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19357, '9044', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19356, '11795', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19355, '11742', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19354, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19351, '9718', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19349, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19347, '10512', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19346, '2188', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19345, '5850', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19343, '3668', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19340, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19339, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19336, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19333, '11724', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19332, '9902', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19331, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19330, '8513', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19328, '7238', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19324, '8631', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19323, '8631', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19320, '4766', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19317, '11797', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19316, '11036', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19315, '11904', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19314, '185', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19313, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19311, '4836', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19310, '11874', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19309, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19308, '1708', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19306, '10319', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19305, '7090', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19304, '11895', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19302, '10331', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19301, '7137', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19299, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19298, '7066', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19297, '9616', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19295, '11895', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19293, '11895', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19292, '5605', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19291, '9912', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19287, '256', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19285, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19283, '5226', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19280, '11470', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19279, '11874', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19278, '11470', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19277, '10945', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19275, '9934', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19273, '7825', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19272, '11128', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19271, '10944', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19263, '10719', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19261, '9704', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19259, '11885', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19258, '11373', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19257, '11837', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19256, '7461', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19255, '10200', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19254, '11489', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19252, '4527', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19251, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19250, '7698', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19249, '11746', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19248, '6567', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19244, '10319', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19243, '148', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19242, '2097', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19240, '1694', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19238, '228', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19231, '7481', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19229, '8463', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19225, '4638', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19224, '8463', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19220, '4684', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19219, '4187', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19218, '11583', 0.00);
INSERT INTO "public"."transaction_header" VALUES (19214, '2188', 0.00);

-- ----------------------------
-- Table structure for transaction_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."transaction_items";
CREATE TABLE "public"."transaction_items" (
  "row_id" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
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
INSERT INTO "public"."transaction_items" VALUES (20563, 19390, 356, 5, 2300.00);
INSERT INTO "public"."transaction_items" VALUES (20565, 19390, 1247, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20572, 19388, 6091, 1, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (20574, 19387, 1233, 2, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20575, 19387, 1446, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20578, 19386, 2335, 1, 16400.00);
INSERT INTO "public"."transaction_items" VALUES (20580, 19386, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20582, 19386, 5955, 3, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (20583, 19383, 5988, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20586, 19382, 1245, 1, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20587, 19382, 1433, 1, 10500.00);
INSERT INTO "public"."transaction_items" VALUES (20588, 19382, 5868, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20591, 19380, 3003, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20592, 19380, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (20597, 19379, 353, 10, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20600, 19379, 5513, 2, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20601, 19379, 5949, 3, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (20602, 19378, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20603, 19378, 3123, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20609, 19375, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20612, 19375, 5868, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20618, 19372, 4425, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20619, 19372, 4426, 2, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20620, 19372, 4427, 3, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (20621, 19372, 4428, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20622, 19372, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20623, 19372, 4430, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20624, 19372, 4433, 3, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (20625, 19372, 4502, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20626, 19372, 4620, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20627, 19372, 4622, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20628, 19372, 4677, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (20629, 19372, 4678, 3, 6500.00);
INSERT INTO "public"."transaction_items" VALUES (20630, 19372, 4679, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (20632, 19370, 2133, 1, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (20633, 19370, 2528, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (20636, 19370, 5375, 1, 33300.00);
INSERT INTO "public"."transaction_items" VALUES (20638, 19370, 6035, 1, 108000.00);
INSERT INTO "public"."transaction_items" VALUES (20639, 19367, 976, 1, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (20640, 19367, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20641, 19367, 1257, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (20648, 19366, 353, 2, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20650, 19366, 1959, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20653, 19366, 4005, 1, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (20656, 19364, 1294, 1, 29900.00);
INSERT INTO "public"."transaction_items" VALUES (20657, 19364, 1353, 1, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (20658, 19364, 2066, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20659, 19364, 2304, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20660, 19364, 2307, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20661, 19364, 3378, 1, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (20662, 19364, 3759, 1, 50000.00);
INSERT INTO "public"."transaction_items" VALUES (20663, 19364, 3796, 1, 5200.00);
INSERT INTO "public"."transaction_items" VALUES (20664, 19364, 4011, 2, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (20665, 19364, 4450, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (20666, 19364, 4534, 1, 19800.00);
INSERT INTO "public"."transaction_items" VALUES (20667, 19364, 4536, 3, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20668, 19364, 4675, 1, 50000.00);
INSERT INTO "public"."transaction_items" VALUES (20669, 19364, 4775, 1, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (20670, 19364, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20671, 19364, 5532, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (20672, 19364, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20673, 19364, 5816, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (20674, 19364, 5895, 2, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20675, 19364, 5895, 2, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20676, 19363, 353, 4, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20678, 19363, 928, 2, 34800.00);
INSERT INTO "public"."transaction_items" VALUES (20679, 19363, 1122, 3, 26500.00);
INSERT INTO "public"."transaction_items" VALUES (20680, 19363, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20681, 19363, 1245, 3, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20682, 19363, 1280, 1, 15800.00);
INSERT INTO "public"."transaction_items" VALUES (20688, 19363, 3003, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20697, 19363, 5054, 3, 5200.00);
INSERT INTO "public"."transaction_items" VALUES (20704, 19363, 5826, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20705, 19363, 5928, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (20710, 19362, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (20712, 19362, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (20720, 19358, 1294, 0, 29900.00);
INSERT INTO "public"."transaction_items" VALUES (20721, 19358, 1353, 0, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (20722, 19358, 2066, 0, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20723, 19358, 2304, 0, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20724, 19358, 2307, 0, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20726, 19358, 3378, 0, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (20727, 19358, 3759, 0, 50000.00);
INSERT INTO "public"."transaction_items" VALUES (20728, 19358, 3796, 0, 5200.00);
INSERT INTO "public"."transaction_items" VALUES (20729, 19358, 4011, 0, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (20730, 19358, 4450, 0, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (20731, 19358, 4534, 0, 19800.00);
INSERT INTO "public"."transaction_items" VALUES (20732, 19358, 4536, 0, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20733, 19358, 4675, 0, 50000.00);
INSERT INTO "public"."transaction_items" VALUES (20734, 19358, 4775, 0, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (20735, 19358, 5058, 0, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20736, 19358, 5532, 0, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (20739, 19358, 5816, 0, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (20740, 19358, 5895, 0, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20741, 19358, 5895, 0, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20744, 19357, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20763, 19355, 5779, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20768, 19355, 6165, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (20769, 19354, 1915, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20773, 19351, 976, 3, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (20774, 19351, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20775, 19349, 5540, 2, 7500.00);
INSERT INTO "public"."transaction_items" VALUES (20777, 19349, 5938, 2, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20778, 19349, 6091, 1, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (20780, 19347, 1292, 1, 32900.00);
INSERT INTO "public"."transaction_items" VALUES (20782, 19347, 3192, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (20783, 19347, 3319, 1, 13600.00);
INSERT INTO "public"."transaction_items" VALUES (20784, 19347, 5997, 1, 68800.00);
INSERT INTO "public"."transaction_items" VALUES (20789, 19346, 1703, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (20792, 19346, 5441, 2, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20795, 19345, 1267, 1, 13500.00);
INSERT INTO "public"."transaction_items" VALUES (20802, 19345, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20804, 19343, 1290, 1, 4900.00);
INSERT INTO "public"."transaction_items" VALUES (20805, 19343, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20807, 19343, 6035, 1, 108000.00);
INSERT INTO "public"."transaction_items" VALUES (20817, 19339, 1703, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (20820, 19336, 1184, 1, 22200.00);
INSERT INTO "public"."transaction_items" VALUES (20823, 19336, 3804, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20829, 19336, 6070, 1, 8900.00);
INSERT INTO "public"."transaction_items" VALUES (20830, 19333, 2319, 2, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (20831, 19333, 2323, 1, 39600.00);
INSERT INTO "public"."transaction_items" VALUES (20833, 19332, 1184, 1, 22200.00);
INSERT INTO "public"."transaction_items" VALUES (20834, 19332, 1282, 2, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (20835, 19332, 1399, 1, 40200.00);
INSERT INTO "public"."transaction_items" VALUES (20836, 19332, 2168, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (20837, 19332, 3274, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (20838, 19332, 3609, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (20839, 19332, 3726, 1, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (20840, 19332, 4675, 1, 50000.00);
INSERT INTO "public"."transaction_items" VALUES (20841, 19332, 4815, 1, 38000.00);
INSERT INTO "public"."transaction_items" VALUES (20843, 19331, 956, 1, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (20845, 19331, 1445, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20847, 19331, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20848, 19331, 5028, 1, 24900.00);
INSERT INTO "public"."transaction_items" VALUES (20851, 19331, 5955, 1, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (20858, 19328, 1267, 1, 13500.00);
INSERT INTO "public"."transaction_items" VALUES (20863, 19328, 1998, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20866, 19328, 3003, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20867, 19328, 3190, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (20869, 19328, 3282, 1, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (20876, 19324, 353, 4, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20877, 19324, 928, 1, 34800.00);
INSERT INTO "public"."transaction_items" VALUES (20878, 19324, 1289, 3, 4900.00);
INSERT INTO "public"."transaction_items" VALUES (20879, 19324, 1445, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20880, 19324, 1502, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20881, 19324, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20882, 19324, 1906, 1, 22600.00);
INSERT INTO "public"."transaction_items" VALUES (20883, 19324, 2087, 2, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20884, 19324, 2223, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (20885, 19324, 3347, 1, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20886, 19324, 3595, 1, 23800.00);
INSERT INTO "public"."transaction_items" VALUES (20887, 19324, 3779, 1, 10200.00);
INSERT INTO "public"."transaction_items" VALUES (20888, 19324, 4006, 1, 7000.00);
INSERT INTO "public"."transaction_items" VALUES (20889, 19324, 4015, 2, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (20890, 19324, 4025, 1, 7600.00);
INSERT INTO "public"."transaction_items" VALUES (20891, 19324, 4866, 1, 26000.00);
INSERT INTO "public"."transaction_items" VALUES (20892, 19324, 5003, 1, 54000.00);
INSERT INTO "public"."transaction_items" VALUES (20893, 19324, 5008, 1, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (20894, 19324, 5452, 1, 20377.00);
INSERT INTO "public"."transaction_items" VALUES (20895, 19324, 5697, 1, 15900.00);
INSERT INTO "public"."transaction_items" VALUES (20897, 19324, 6046, 2, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20898, 19323, 353, 0, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20899, 19323, 1289, 0, 4900.00);
INSERT INTO "public"."transaction_items" VALUES (20900, 19323, 1445, 0, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20901, 19323, 1502, 0, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20902, 19323, 1906, 0, 22600.00);
INSERT INTO "public"."transaction_items" VALUES (20903, 19323, 2087, 0, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20904, 19323, 2223, 0, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (20905, 19323, 2334, 0, 32000.00);
INSERT INTO "public"."transaction_items" VALUES (20906, 19323, 3347, 0, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20907, 19323, 3595, 0, 23800.00);
INSERT INTO "public"."transaction_items" VALUES (20908, 19323, 3779, 0, 10200.00);
INSERT INTO "public"."transaction_items" VALUES (20909, 19323, 4006, 0, 7000.00);
INSERT INTO "public"."transaction_items" VALUES (20910, 19323, 4015, 0, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (20911, 19323, 4025, 0, 7600.00);
INSERT INTO "public"."transaction_items" VALUES (20912, 19323, 4866, 0, 26000.00);
INSERT INTO "public"."transaction_items" VALUES (20913, 19323, 5003, 0, 54000.00);
INSERT INTO "public"."transaction_items" VALUES (20914, 19323, 5008, 0, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (20918, 19323, 5452, 0, 20377.00);
INSERT INTO "public"."transaction_items" VALUES (20919, 19323, 5697, 0, 15900.00);
INSERT INTO "public"."transaction_items" VALUES (20920, 19323, 6046, 0, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20922, 19320, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20925, 19320, 1290, 1, 4900.00);
INSERT INTO "public"."transaction_items" VALUES (20930, 19320, 2334, 2, 32000.00);
INSERT INTO "public"."transaction_items" VALUES (20931, 19320, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (20934, 19320, 3193, 1, 6700.00);
INSERT INTO "public"."transaction_items" VALUES (20936, 19320, 3282, 1, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (20940, 19320, 4229, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (20942, 19320, 4794, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20946, 19320, 5458, 1, 12365.00);
INSERT INTO "public"."transaction_items" VALUES (20950, 19320, 5513, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20952, 19320, 5524, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20955, 19320, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20956, 19320, 5847, 1, 60000.00);
INSERT INTO "public"."transaction_items" VALUES (20957, 19320, 5979, 1, 2000.00);
INSERT INTO "public"."transaction_items" VALUES (20962, 19317, 1445, 4, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20966, 19317, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20968, 19316, 1245, 1, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20970, 19316, 1959, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20972, 19316, 3003, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20974, 19316, 3779, 1, 10200.00);
INSERT INTO "public"."transaction_items" VALUES (20985, 19316, 5865, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20991, 19314, 5618, 3, 33000.00);
INSERT INTO "public"."transaction_items" VALUES (20993, 19313, 4425, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20994, 19313, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20995, 19313, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20996, 19313, 4430, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20997, 19313, 4432, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20998, 19313, 4464, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20999, 19313, 4502, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21000, 19313, 4620, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21001, 19313, 4622, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21002, 19313, 4677, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21003, 19313, 4679, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21004, 19313, 4679, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21005, 19311, 1233, 4, 23900.00);
INSERT INTO "public"."transaction_items" VALUES (21006, 19311, 1233, 2, 23900.00);
INSERT INTO "public"."transaction_items" VALUES (21007, 19311, 1706, 10, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21008, 19310, 950, 2, 12900.00);
INSERT INTO "public"."transaction_items" VALUES (21012, 19309, 3542, 2, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21013, 19309, 3543, 2, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (21015, 19308, 3193, 1, 6700.00);
INSERT INTO "public"."transaction_items" VALUES (21019, 19306, 1687, 2, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21021, 19306, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (21024, 19306, 3373, 1, 6400.00);
INSERT INTO "public"."transaction_items" VALUES (21028, 19306, 4815, 1, 38000.00);
INSERT INTO "public"."transaction_items" VALUES (21032, 19305, 926, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21033, 19305, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (21036, 19305, 1280, 2, 15800.00);
INSERT INTO "public"."transaction_items" VALUES (21037, 19305, 1282, 2, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21038, 19305, 1915, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (21039, 19305, 2133, 1, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (21042, 19305, 3192, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (21045, 19305, 3726, 2, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (21046, 19305, 4794, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (21047, 19305, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21049, 19304, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21050, 19304, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21051, 19304, 4677, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21052, 19304, 4679, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21053, 19302, 1244, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (21054, 19302, 1687, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21057, 19302, 5955, 1, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (21061, 19301, 4005, 3, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (21064, 19301, 4783, 1, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21070, 19301, 6070, 1, 8900.00);
INSERT INTO "public"."transaction_items" VALUES (21071, 19299, 5540, 1, 7500.00);
INSERT INTO "public"."transaction_items" VALUES (21073, 19299, 5938, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (21078, 19298, 5979, 1, 2000.00);
INSERT INTO "public"."transaction_items" VALUES (21081, 19297, 3190, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (21083, 19297, 4427, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21086, 19295, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21087, 19295, 4433, 3, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (21088, 19295, 4677, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21089, 19293, 4426, 0, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21090, 19293, 4429, 0, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21091, 19293, 4432, 0, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21095, 19292, 5155, 1, 26600.00);
INSERT INTO "public"."transaction_items" VALUES (21096, 19292, 5155, 1, 26600.00);
INSERT INTO "public"."transaction_items" VALUES (21098, 19292, 6031, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21101, 19291, 5618, 0, 33000.00);
INSERT INTO "public"."transaction_items" VALUES (21102, 19287, 1140, 2, 15300.00);
INSERT INTO "public"."transaction_items" VALUES (21103, 19287, 1282, 4, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21104, 19287, 1446, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21107, 19287, 3274, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (21114, 19287, 3985, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21115, 19287, 3985, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21117, 19287, 5949, 2, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21119, 19287, 5986, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21121, 19287, 5988, 2, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21123, 19285, 926, 10, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21124, 19285, 1247, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21125, 19285, 1247, 49, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21126, 19285, 1292, 3, 32900.00);
INSERT INTO "public"."transaction_items" VALUES (21127, 19283, 921, 1, 20600.00);
INSERT INTO "public"."transaction_items" VALUES (21128, 19283, 921, 2, 20600.00);
INSERT INTO "public"."transaction_items" VALUES (21129, 19283, 923, 2, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21130, 19283, 1276, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (21131, 19283, 1282, 1, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21133, 19283, 1399, 1, 40200.00);
INSERT INTO "public"."transaction_items" VALUES (21135, 19283, 1706, 3, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21137, 19283, 2319, 1, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (21140, 19283, 3123, 2, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21143, 19283, 3804, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21146, 19283, 4229, 2, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (21147, 19283, 4425, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21148, 19283, 4432, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21149, 19283, 4464, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21152, 19283, 5008, 2, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (21155, 19283, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21156, 19283, 5524, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21157, 19283, 5524, 2, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21158, 19283, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (21159, 19283, 5779, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (21160, 19283, 5826, 2, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21162, 19283, 5865, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21163, 19283, 5997, 2, 68800.00);
INSERT INTO "public"."transaction_items" VALUES (21164, 19280, 1176, 2, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (21165, 19280, 1244, 1, 25500.00);
INSERT INTO "public"."transaction_items" VALUES (21166, 19280, 1429, 2, 6600.00);
INSERT INTO "public"."transaction_items" VALUES (21167, 19280, 2555, 1, 16200.00);
INSERT INTO "public"."transaction_items" VALUES (21168, 19280, 3458, 2, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (21169, 19280, 3467, 2, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (21170, 19280, 3811, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21171, 19280, 3958, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21172, 19280, 3985, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21173, 19280, 4028, 2, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21174, 19280, 4373, 1, 42000.00);
INSERT INTO "public"."transaction_items" VALUES (21175, 19280, 4427, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21176, 19280, 4783, 1, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21177, 19280, 5036, 1, 14600.00);
INSERT INTO "public"."transaction_items" VALUES (21178, 19280, 5103, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21179, 19280, 5151, 1, 17800.00);
INSERT INTO "public"."transaction_items" VALUES (21180, 19280, 5171, 1, 30800.00);
INSERT INTO "public"."transaction_items" VALUES (21181, 19280, 5436, 1, 37800.00);
INSERT INTO "public"."transaction_items" VALUES (21182, 19280, 6019, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21183, 19280, 6020, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21184, 19279, 973, 6, 95600.00);
INSERT INTO "public"."transaction_items" VALUES (21185, 19279, 1706, 12, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21188, 19278, 1176, 0, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (21189, 19278, 1244, 0, 25500.00);
INSERT INTO "public"."transaction_items" VALUES (21190, 19278, 1429, 0, 6600.00);
INSERT INTO "public"."transaction_items" VALUES (21191, 19278, 2555, 0, 16200.00);
INSERT INTO "public"."transaction_items" VALUES (21192, 19278, 3458, 0, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (21193, 19278, 3467, 0, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (21194, 19278, 3811, 0, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21195, 19278, 3958, 0, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21196, 19278, 3985, 0, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21197, 19278, 4028, 0, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21198, 19278, 4373, 0, 42000.00);
INSERT INTO "public"."transaction_items" VALUES (21199, 19278, 4427, 0, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21200, 19278, 4783, 0, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21201, 19278, 5036, 0, 14600.00);
INSERT INTO "public"."transaction_items" VALUES (21202, 19278, 5103, 0, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21203, 19278, 5151, 0, 17800.00);
INSERT INTO "public"."transaction_items" VALUES (21204, 19278, 5171, 0, 30800.00);
INSERT INTO "public"."transaction_items" VALUES (21205, 19278, 5436, 0, 37800.00);
INSERT INTO "public"."transaction_items" VALUES (21206, 19278, 6019, 0, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21207, 19278, 6020, 0, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21209, 19277, 973, 1, 95600.00);
INSERT INTO "public"."transaction_items" VALUES (21215, 19275, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21217, 19273, 950, 1, 12900.00);
INSERT INTO "public"."transaction_items" VALUES (21218, 19273, 956, 1, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (21219, 19273, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21222, 19273, 3319, 1, 13600.00);
INSERT INTO "public"."transaction_items" VALUES (21225, 19273, 5054, 1, 5200.00);
INSERT INTO "public"."transaction_items" VALUES (21228, 19273, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (21230, 19272, 923, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21231, 19272, 926, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21232, 19272, 1140, 1, 15300.00);
INSERT INTO "public"."transaction_items" VALUES (21233, 19272, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21235, 19272, 5061, 4, 3200.00);
INSERT INTO "public"."transaction_items" VALUES (21236, 19272, 5061, 2, 3200.00);
INSERT INTO "public"."transaction_items" VALUES (21238, 19272, 5374, 2, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21239, 19272, 5375, 1, 33300.00);
INSERT INTO "public"."transaction_items" VALUES (21240, 19272, 5441, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21243, 19271, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21244, 19271, 3321, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21246, 19271, 5458, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21248, 19263, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21250, 19261, 356, 2, 1010.00);
INSERT INTO "public"."transaction_items" VALUES (21254, 19261, 4221, 3, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21257, 19261, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21260, 19261, 5979, 3, 2000.00);
INSERT INTO "public"."transaction_items" VALUES (21261, 19259, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21264, 19258, 2528, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21265, 19258, 4425, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21266, 19258, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21268, 19257, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21271, 19256, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21273, 19256, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21274, 19256, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21277, 19255, 4221, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21278, 19255, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21280, 19255, 5028, 1, 24900.00);
INSERT INTO "public"."transaction_items" VALUES (21281, 19255, 5458, 2, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21284, 19254, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21285, 19254, 3321, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21286, 19254, 5458, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21291, 19252, 5103, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21296, 19251, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21297, 19251, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21298, 19251, 3634, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21299, 19250, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21301, 19250, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21303, 19249, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21304, 19249, 1257, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21305, 19249, 5458, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21306, 19248, 956, 2, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (21307, 19248, 3192, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (21308, 19248, 5058, 4, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21309, 19244, 1198, 1, 6300.00);
INSERT INTO "public"."transaction_items" VALUES (21310, 19244, 1198, 1, 6300.00);
INSERT INTO "public"."transaction_items" VALUES (21312, 19244, 1433, 2, 10500.00);
INSERT INTO "public"."transaction_items" VALUES (21316, 19244, 1998, 3, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (21318, 19244, 2323, 1, 39600.00);
INSERT INTO "public"."transaction_items" VALUES (21319, 19244, 3373, 1, 6400.00);
INSERT INTO "public"."transaction_items" VALUES (21327, 19243, 4425, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21328, 19243, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21329, 19243, 4427, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21330, 19243, 4429, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21331, 19243, 4430, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21333, 19243, 4432, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21334, 19243, 4464, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21336, 19243, 4620, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21338, 19243, 4677, 3, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21339, 19243, 4678, 3, 6500.00);
INSERT INTO "public"."transaction_items" VALUES (21340, 19243, 4679, 3, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21344, 19242, 2168, 2, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (21345, 19242, 2304, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21348, 19242, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21357, 19240, 5949, 10, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21358, 19238, 926, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21359, 19238, 1122, 1, 26500.00);
INSERT INTO "public"."transaction_items" VALUES (21360, 19238, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21363, 19238, 1706, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21364, 19231, 3542, 1, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21365, 19231, 3543, 2, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (21366, 19231, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21367, 19231, 5847, 1, 60000.00);
INSERT INTO "public"."transaction_items" VALUES (21368, 19229, 1501, 1, 42000.00);
INSERT INTO "public"."transaction_items" VALUES (21369, 19229, 1746, 1, 17200.00);
INSERT INTO "public"."transaction_items" VALUES (21370, 19229, 2335, 1, 16400.00);
INSERT INTO "public"."transaction_items" VALUES (21371, 19229, 2567, 2, 28000.00);
INSERT INTO "public"."transaction_items" VALUES (21372, 19229, 3366, 1, 22800.00);
INSERT INTO "public"."transaction_items" VALUES (21373, 19229, 3609, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (21374, 19229, 3722, 2, 17200.00);
INSERT INTO "public"."transaction_items" VALUES (21375, 19229, 4057, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (21376, 19229, 4522, 1, 27000.00);
INSERT INTO "public"."transaction_items" VALUES (21377, 19229, 4530, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21378, 19229, 4830, 1, 13000.00);
INSERT INTO "public"."transaction_items" VALUES (21379, 19229, 5928, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (21380, 19229, 6019, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21381, 19225, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21382, 19225, 3321, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21383, 19225, 3634, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21384, 19224, 1501, 0, 42000.00);
INSERT INTO "public"."transaction_items" VALUES (21385, 19224, 1746, 0, 17200.00);
INSERT INTO "public"."transaction_items" VALUES (21386, 19224, 2335, 0, 16400.00);
INSERT INTO "public"."transaction_items" VALUES (21387, 19224, 2567, 0, 28000.00);
INSERT INTO "public"."transaction_items" VALUES (21388, 19224, 3366, 0, 22800.00);
INSERT INTO "public"."transaction_items" VALUES (21389, 19224, 3609, 0, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (21390, 19224, 3722, 0, 17200.00);
INSERT INTO "public"."transaction_items" VALUES (21391, 19224, 4057, 0, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (21392, 19224, 4522, 0, 27000.00);
INSERT INTO "public"."transaction_items" VALUES (21393, 19224, 4530, 0, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21394, 19224, 4830, 0, 13000.00);
INSERT INTO "public"."transaction_items" VALUES (21395, 19224, 5928, 0, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (21396, 19224, 6019, 0, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21397, 19220, 608, 1, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (21398, 19220, 608, 2, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (21399, 19220, 1687, 2, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21403, 19220, 3193, 2, 6700.00);
INSERT INTO "public"."transaction_items" VALUES (21410, 19220, 5008, 1, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (21412, 19220, 5868, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21414, 19220, 6031, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21416, 19219, 1276, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (21420, 19219, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21421, 19219, 5986, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21428, 19218, 6165, 1, 6000.00);

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
