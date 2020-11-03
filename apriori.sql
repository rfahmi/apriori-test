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

 Date: 04/11/2020 00:59:19
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
INSERT INTO "public"."items" VALUES (1238, 'Delmonte Saus Tomato 340ml', 12200.00);
INSERT INTO "public"."items" VALUES (1247, 'Nice Tisue 250 Lembar', 15000.00);
INSERT INTO "public"."items" VALUES (3408, 'Kertas Minyak Linen Alami (isi ±50 lembar) Random - 009', 5000.00);
INSERT INTO "public"."items" VALUES (5856, 'Kanzler Singles Mini - 3pcs', 21800.00);
INSERT INTO "public"."items" VALUES (2106, 'Dettol Deep Cleanse 105 gr', 7200.00);
INSERT INTO "public"."items" VALUES (3398, 'Bandana Facial Ear Cat Lucu (18 Gr) Merah Mawar - 004', 8800.00);
INSERT INTO "public"."items" VALUES (3538, 'Ichitan Thai Milk Tea 310 ml', 6750.00);
INSERT INTO "public"."items" VALUES (5106, 'Ellips Vitamin Rambut Nutri Color Isi 6 Pcs', 13200.00);
INSERT INTO "public"."items" VALUES (6091, 'Yupi Permen Roletto 8.1 gr', 1000.00);
INSERT INTO "public"."items" VALUES (587, 'Ultra Milk Rasa Coklat 1000 ML', 16500.00);
INSERT INTO "public"."items" VALUES (1233, 'Minyak Goreng Sawit Sunco 2 L', 26800.00);
INSERT INTO "public"."items" VALUES (1446, 'Psm Gula Pasir 1 Kg', 12500.00);
INSERT INTO "public"."items" VALUES (1132, 'Vanish Pouch 425 ml', 21800.00);
INSERT INTO "public"."items" VALUES (1193, 'Kispray Bluis Reffil 300 ml ', 6100.00);
INSERT INTO "public"."items" VALUES (2335, 'Tessa Tissue Towel 150 Sheet', 16400.00);
INSERT INTO "public"."items" VALUES (3768, 'Nice Tisue Wajah 250gr 2ply - 2 pack', 29000.00);
INSERT INTO "public"."items" VALUES (5058, 'Paseo Tissue 250 s - 2 Pcs', 22000.00);
INSERT INTO "public"."items" VALUES (5551, 'Nagata Sikat Baju Oval Printing Hijau - NGT 0804', 5500.00);
INSERT INTO "public"."items" VALUES (5955, 'Nice Tissue Single Roll - 3pcs', 12000.00);
INSERT INTO "public"."items" VALUES (5988, 'Greenfield Yogurt Drink lychee 250 ml - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (6028, 'Greenfields Yogurt Drink Mix Fruit 250ml - 2pcs', 15000.00);
INSERT INTO "public"."items" VALUES (6029, 'Greenfield Yogurt Drink Peach 250ml - 2pcs', 15000.00);
INSERT INTO "public"."items" VALUES (1245, 'Rosebrand Minyak Goreng 2L', 25800.00);
INSERT INTO "public"."items" VALUES (1433, 'Royco Bumbu Rasa Ayam 230gr', 10500.00);
INSERT INTO "public"."items" VALUES (5868, 'Piattos Rumput Laut Snack 80 gr', 8800.00);
INSERT INTO "public"."items" VALUES (595, 'Ultra Milk Full Cream 1000 ml', 16500.00);
INSERT INTO "public"."items" VALUES (1487, 'CIPTADENT  FRESH MINT 190GR', 10200.00);
INSERT INTO "public"."items" VALUES (3003, 'Rosebrand Gula Tebu 1Kg', 12500.00);
INSERT INTO "public"."items" VALUES (3020, 'Nice Tissue 900Gr', 35600.00);
INSERT INTO "public"."items" VALUES (3107, 'Daia Putih 2700Gr', 42600.00);
INSERT INTO "public"."items" VALUES (5472, 'Pop Mie Rasa Soto Ayam - 2pcs', 8000.00);
INSERT INTO "public"."items" VALUES (5687, 'Doritos Snack Roasted Corn 160 gr', 10600.00);
INSERT INTO "public"."items" VALUES (5815, 'Indomie Soto Mie - 10pcs', 23000.00);
INSERT INTO "public"."items" VALUES (353, 'Indomie Mie Goreng 1 Pcs ', 2500.00);
INSERT INTO "public"."items" VALUES (1186, 'Torabika Kopi 3in1 5 pcs ', 3000.00);
INSERT INTO "public"."items" VALUES (2535, 'Attack Jaz1 Detergent Bubuk Semerbak Cinta 850gr', 15600.00);
INSERT INTO "public"."items" VALUES (5513, 'Potabee rasa Wagyu Beef Steak 68gr', 5800.00);
INSERT INTO "public"."items" VALUES (5949, 'Henis Roti Baso Ayam Sweet Classic 1pcs', 11000.00);
INSERT INTO "public"."items" VALUES (3123, 'CHIKI BALLS Rasa Keju 55gr', 6800.00);
INSERT INTO "public"."items" VALUES (4870, 'BrookFarm Freshmilk Chocolate 946ml + Strawberry 946ml', 55000.00);
INSERT INTO "public"."items" VALUES (2175, 'Fanta Strawberry Botol 1500ml', 13000.00);
INSERT INTO "public"."items" VALUES (2180, 'Sprite Botol 1500ml', 12500.00);
INSERT INTO "public"."items" VALUES (3466, 'Jepit Rambut Motif Geometri Bahan Alloy (10 Gr) Lingkaran - 043', 4000.00);
INSERT INTO "public"."items" VALUES (6125, 'Bandana Rambut Korea (25 Gr) Khaki', 9900.00);
INSERT INTO "public"."items" VALUES (5216, 'Kin Freshmilk Full Cream + Chocolate 1L', 44000.00);
INSERT INTO "public"."items" VALUES (5344, 'Kin Freshmilk Full Cream 1L - 2pcs', 44000.00);
INSERT INTO "public"."items" VALUES (6218, 'Abe Popcorn Caramelo 80 gr', 19000.00);
INSERT INTO "public"."items" VALUES (6219, 'Abe Popcprn Cheese 80 gr', 19000.00);
INSERT INTO "public"."items" VALUES (2234, 'Tempat Beras Kome - Ungu', 55800.00);
INSERT INTO "public"."items" VALUES (6034, 'Emeron Shampoo Hair Fall Control Aloe Vera 170 ml', 16500.00);
INSERT INTO "public"."items" VALUES (6164, 'Fair & Lovely Multivitamin Facial Foam 50gr + Sikat Pembersih Muka SPA Biru', 23500.00);
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
INSERT INTO "public"."items" VALUES (1475, 'PEPSODENT PASTA GIGI HERBAL 190GR', 10800.00);
INSERT INTO "public"."items" VALUES (2133, 'Milo Active Go 3in1 300gr', 36600.00);
INSERT INTO "public"."items" VALUES (2528, 'Carnation Krimer Kental Manis Tin 370gr', 11000.00);
INSERT INTO "public"."items" VALUES (3314, 'Garam Medja Beryodium 500Gr', 4800.00);
INSERT INTO "public"."items" VALUES (4818, 'Greenfields UHT Strawberry 200ml - 6pcs', 30000.00);
INSERT INTO "public"."items" VALUES (5375, 'Cimory UHT Chocolate 250ml - 6pcs', 33300.00);
INSERT INTO "public"."items" VALUES (5417, 'Nina Anion Pembalut Naturally Scented Wing 24cm isi 10pads', 23500.00);
INSERT INTO "public"."items" VALUES (6035, 'Greenfield UHT Full Cream 1000 ml - 6 Pcs', 108000.00);
INSERT INTO "public"."items" VALUES (976, 'Indomie Mie Goreng Satu Dus isi 40 pcs', 94900.00);
INSERT INTO "public"."items" VALUES (1176, 'Telur Ayam Negeri isi 10 pcs', 17500.00);
INSERT INTO "public"."items" VALUES (1257, 'Bogasari Cakra Kembar Terigu 1 Kg ', 11800.00);
INSERT INTO "public"."items" VALUES (2230, 'Nagata Sikat Tile - NGT 0221', 18000.00);
INSERT INTO "public"."items" VALUES (3170, 'Aqua Air Mineral Botol 600ml isi 24 pcs', 58000.00);
INSERT INTO "public"."items" VALUES (4036, 'Bango Kecap Manis 220 ml', 13600.00);
INSERT INTO "public"."items" VALUES (4903, 'Nagata Pengki + Sikat Mini - NGT 641s Pink', 12500.00);
INSERT INTO "public"."items" VALUES (5846, 'Sensodyne Multi Action 2x100gr', 58000.00);
INSERT INTO "public"."items" VALUES (6018, 'Colgate Sensitive Pro-Relief Complete Protection Toothpaste / Pasta Gigi 110 gr', 29800.00);
INSERT INTO "public"."items" VALUES (1259, 'Bogasari Segitiga Biru Tepung 1 Kg ', 11800.00);
INSERT INTO "public"."items" VALUES (1959, 'La Fonte Spaghetti 450Gr', 16800.00);
INSERT INTO "public"."items" VALUES (3908, 'Anchor Butter Unsalted 227 Gr', 45000.00);
INSERT INTO "public"."items" VALUES (3921, 'Nutrijel Silky Puding Coklat 155 Gr', 17000.00);
INSERT INTO "public"."items" VALUES (4005, 'Super Bihun Kuah 51 Gr', 3800.00);
INSERT INTO "public"."items" VALUES (5335, 'Barco Minyak Kelapa 5L + Gula 1kg', 145000.00);
INSERT INTO "public"."items" VALUES (6221, 'Bihunku Rasa Ayam Bawang 55 gr', 3800.00);
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
INSERT INTO "public"."items" VALUES (355, 'Indomie Kuah Rasa Kari Ayam 1 Pcs', 2500.00);
INSERT INTO "public"."items" VALUES (928, 'Sunlight Jeruk Nipis 1600 ml Pounch', 34800.00);
INSERT INTO "public"."items" VALUES (1122, 'Soklin Liquid Violet 1600 ml', 26500.00);
INSERT INTO "public"."items" VALUES (1280, 'Wipol Pembersih Lantai Refill 780ml', 15800.00);
INSERT INTO "public"."items" VALUES (1305, 'ABC Kecap Manis pouch 520ml', 18600.00);
INSERT INTO "public"."items" VALUES (1404, 'Lifebuoy Sabun Mandi Cair Lemon Fresh 450ml', 21200.00);
INSERT INTO "public"."items" VALUES (1749, 'Rexona Deodorant Roll On Dreamy White 40Ml', 17200.00);
INSERT INTO "public"."items" VALUES (2281, 'ABC HEINZ Sarden Saus Ekstra Pedas 155gr', 9500.00);
INSERT INTO "public"."items" VALUES (2516, 'Frisian Flag Full Cream Gold 200gr', 9200.00);
INSERT INTO "public"."items" VALUES (3014, 'Susu Ultra Mimi Strawberry 125ml', 19900.00);
INSERT INTO "public"."items" VALUES (3016, 'Susu Ultra Mimi Full Cream 125ml', 16600.00);
INSERT INTO "public"."items" VALUES (3286, 'Roma Cream Crackers 135 gr', 5500.00);
INSERT INTO "public"."items" VALUES (3574, 'Kodomo Sikat Gigi Anak Zig Zag', 9200.00);
INSERT INTO "public"."items" VALUES (3641, 'Pengharum Lemari Gantung - Ocean', 5000.00);
INSERT INTO "public"."items" VALUES (3729, 'Laurier Relax Night Wing 35 cm isi 16 pads', 32600.00);
INSERT INTO "public"."items" VALUES (4460, 'Fiesta Nugget Dino 500 gr', 59900.00);
INSERT INTO "public"."items" VALUES (4806, 'Bagus Spon Selulosa Warna Random', 6500.00);
INSERT INTO "public"."items" VALUES (5054, 'Lifebouy Sabun Mandi Batang 110 gr', 5200.00);
INSERT INTO "public"."items" VALUES (5055, 'Pepsodent Pencegah Gigi Berlubang 225 GR Isi 2 Pcs', 19800.00);
INSERT INTO "public"."items" VALUES (5778, 'PEPSODENT PASTA GIGI ANAK AWESOME ORANGE 50GR', 5500.00);
INSERT INTO "public"."items" VALUES (5821, 'Tini Wini Biti Snack Rasa Mysterious Black 20 gr', 2200.00);
INSERT INTO "public"."items" VALUES (5822, 'Tini Wini Biti Snack Rasa Asin 20 gr', 2200.00);
INSERT INTO "public"."items" VALUES (5824, 'Tini Wini Biti Snack Rasa Jagung Manis 20 gr', 2200.00);
INSERT INTO "public"."items" VALUES (5825, 'Tini Wini Biti Snack Rasa Sate Ayam 20 gr', 2200.00);
INSERT INTO "public"."items" VALUES (5826, 'Tini Wini Biti Snack Rasa Cokelat 20 gr', 2200.00);
INSERT INTO "public"."items" VALUES (5928, 'Pepsodent Sikat Gigi Double Care Sensitive Soft', 22500.00);
INSERT INTO "public"."items" VALUES (5952, 'Lemonilo Mi Instant Alami rasa Mi Goreng - 4pcs', 24000.00);
INSERT INTO "public"."items" VALUES (5972, 'Swallow Kamper Naphthalene Warna Hati 150 gr', 16500.00);
INSERT INTO "public"."items" VALUES (2321, 'Sereal Koko Krunch Duo Sereal 170gr', 22500.00);
INSERT INTO "public"."items" VALUES (2322, 'Honey Stars Cereal 150gr', 24200.00);
INSERT INTO "public"."items" VALUES (4329, 'Kellogs Froot Loops Sereal 160 gr', 18000.00);
INSERT INTO "public"."items" VALUES (5374, 'Yakult 5 x 65 ml 2 Pcs', 16000.00);
INSERT INTO "public"."items" VALUES (5639, 'Charm Long and Wide Pantyliner Non Perfumed 40 pads', 13741.00);
INSERT INTO "public"."items" VALUES (6209, '', 30000.00);
INSERT INTO "public"."items" VALUES (2184, 'Adem Sari Chingku Botol 350ml', 6800.00);
INSERT INTO "public"."items" VALUES (5056, 'Hemaviton C1000 Dengan Buffered Vitamin C 150 ml', 5800.00);
INSERT INTO "public"."items" VALUES (6043, 'Kara Nata De Coco Ember 1 Kg', 14000.00);
INSERT INTO "public"."items" VALUES (6090, 'Yupi Permen Baby Bear 45 gr', 4600.00);
INSERT INTO "public"."items" VALUES (6098, 'Nutrive Benecol Lychee 100 ml', 7600.00);
INSERT INTO "public"."items" VALUES (3117, 'Cebu Manisan Mangga Kering 100g -2PCS', 80000.00);
INSERT INTO "public"."items" VALUES (5590, 'Momchips Keripik Mangga + Cabai', 38000.00);
INSERT INTO "public"."items" VALUES (5811, 'Paseo Tissue Kitchen Towel 3 Roll - 2 Pak', 66000.00);
INSERT INTO "public"."items" VALUES (934, 'Attack Jaz1 Deterjen Bubuk Pesona Segar 1700 gr', 28900.00);
INSERT INTO "public"."items" VALUES (4562, 'Attack Easy Romantic Flower 1.2 Kg - 2 Pcs', 47800.00);
INSERT INTO "public"."items" VALUES (3829, 'Kunci Mas Minyak goreng Pouch 900 ml', 16800.00);
INSERT INTO "public"."items" VALUES (3973, 'Pastry Blender Alat Pemotong Adonan Stainless Steel - 069', 15000.00);
INSERT INTO "public"."items" VALUES (4361, 'Baterai Alkaline LR06 4B + 2B', 23800.00);
INSERT INTO "public"."items" VALUES (4363, 'Baterai Alkaline LR03 4B+2B', 22800.00);
INSERT INTO "public"."items" VALUES (6124, 'Bandana Rambut Korea (25 Gr) Navy', 9900.00);
INSERT INTO "public"."items" VALUES (6126, 'Scrubber Sikat Punggung Silikon Mandi Dua Sisi Multifungsi (200 Gr) Biru', 15900.00);
INSERT INTO "public"."items" VALUES (6132, 'Set Alat Jahit Mini (60 Gr) ', 9900.00);
INSERT INTO "public"."items" VALUES (265, 'Zebra Spatula Nylon Turner ', 32000.00);
INSERT INTO "public"."items" VALUES (2574, 'NEO Coffee Caramel Mochacino 6x20gr', 5500.00);
INSERT INTO "public"."items" VALUES (2578, 'Ciptadent Cool Mint 120gr', 7800.00);
INSERT INTO "public"."items" VALUES (3591, 'Lifebuoy Lemon Fresh 4x60 gr', 10000.00);
INSERT INTO "public"."items" VALUES (3680, 'Cetakan Nasi Mini 3in1', 8000.00);
INSERT INTO "public"."items" VALUES (3818, 'Oishi Rin Bee Keju 65 Gr', 5800.00);
INSERT INTO "public"."items" VALUES (3826, 'Fullo Vanilla Milk 53 gr', 6200.00);
INSERT INTO "public"."items" VALUES (4889, 'Stand Hp / Penyangga HP Karakter Panda - 091', 8000.00);
INSERT INTO "public"."items" VALUES (5195, 'Rosebrand Bihun Ayam Bawang 55gr - 3pcs', 7000.00);
INSERT INTO "public"."items" VALUES (5223, 'Sendok Kartun Karakter Anak - Melody', 3000.00);
INSERT INTO "public"."items" VALUES (5566, 'Prabu Kerupuk Talas Kuning Matang 200 gr', 16800.00);
INSERT INTO "public"."items" VALUES (5779, 'PEPSODENT PASTA GIGI ANAK SWEET STRAWBERRY 50GR', 5500.00);
INSERT INTO "public"."items" VALUES (5902, 'Johnson Baby Shampo Shiny Drops Shampo 200 ml', 22000.00);
INSERT INTO "public"."items" VALUES (6024, 'Colgate Pasta Gigi Anak Barbie 40 gr', 10000.00);
INSERT INTO "public"."items" VALUES (6140, 'Corong Minyak Silikon 17 GR', 5000.00);
INSERT INTO "public"."items" VALUES (6163, 'Alat Pemotong Sayur Multifunsgsi', 40000.00);
INSERT INTO "public"."items" VALUES (6165, 'Tolak Angin Permen Herbal - 3 sachet', 0.00);
INSERT INTO "public"."items" VALUES (1915, 'Baygon Aerosol Fruity Breeze 600ml', 37000.00);
INSERT INTO "public"."items" VALUES (4634, 'Prochiz Keju Cheddar 170gr', 11500.00);
INSERT INTO "public"."items" VALUES (5831, 'Baygon Wangi Cherry Blossom 600 ml', 37000.00);
INSERT INTO "public"."items" VALUES (968, 'Indomie Kuah Rasa Soto Mie Satu Dus isi 40 pcs', 89900.00);
INSERT INTO "public"."items" VALUES (1706, 'Gulaku Gula Pasir Tebu 1Kg', 12500.00);
INSERT INTO "public"."items" VALUES (5540, 'Meiji Hello Panda Chocolate 45gr', 7500.00);
INSERT INTO "public"."items" VALUES (5872, 'Nyam Nyam Adventure Buble Puff 25 gr', 3800.00);
INSERT INTO "public"."items" VALUES (5938, 'Nutrijel Jelly Shake Rasa Jambu Botol 340 ml', 5800.00);
INSERT INTO "public"."items" VALUES (1270, 'Cussons Tisue Basah SOFT & SMOOTH 50s', 18000.00);
INSERT INTO "public"."items" VALUES (1292, 'Nice tisue toilet EMB10s 10 rol', 32900.00);
INSERT INTO "public"."items" VALUES (1494, 'Zwitsal Hair and Body Aloevera 200ml', 18800.00);
INSERT INTO "public"."items" VALUES (3192, 'Barco Minyak Goreng Kelapa Jerigen 5 Liter', 135000.00);
INSERT INTO "public"."items" VALUES (3319, 'Dettol Original Protect 65 gr -3pcs', 13600.00);
INSERT INTO "public"."items" VALUES (5997, 'Nice Tisue Wajah 900gr 2ply - 2 pack', 68800.00);
INSERT INTO "public"."items" VALUES (6009, 'Palmolive Aromatheraphy Morning Tonic Shower Gel 450 ml', 25000.00);
INSERT INTO "public"."items" VALUES (6100, 'Cussons Sabun Mandi Bar Soft and Smooth 100 gr', 5600.00);
INSERT INTO "public"."items" VALUES (6101, 'Cussons Sabun Mandi Bar Mild and Gentle 100 gr', 5600.00);
INSERT INTO "public"."items" VALUES (6103, 'Zwitsal Sabun Mandi Bar Classick 4 X 70 gr', 14600.00);
INSERT INTO "public"."items" VALUES (1703, 'Greenfield Uht Fullcream 1000Ml', 19500.00);
INSERT INTO "public"."items" VALUES (4343, 'Diamond Milk Fresh Strawberry 946 ml', 23800.00);
INSERT INTO "public"."items" VALUES (4766, 'Greenfield Freshmilk Strawberry 1L', 28800.00);
INSERT INTO "public"."items" VALUES (5441, 'Paket Susu Mini 125ml', 15500.00);
INSERT INTO "public"."items" VALUES (929, 'Sunlight Sabun Cuci Piring Jeruk Nipis & Daun Mint 755 ml Pounch', 16000.00);
INSERT INTO "public"."items" VALUES (937, 'Attack Deterjen Cair Plus Softener 800 ml', 21000.00);
INSERT INTO "public"."items" VALUES (1267, 'Tong Tji Jasmine Tea 25pcs', 13500.00);
INSERT INTO "public"."items" VALUES (2170, 'Yuri Handsoap Lemon Pump 410ml', 28000.00);
INSERT INTO "public"."items" VALUES (2219, 'Harpic Penghancur Kerak Citrus 450ml', 22800.00);
INSERT INTO "public"."items" VALUES (3268, 'Wipol Karbol Lavender 750ml', 17200.00);
INSERT INTO "public"."items" VALUES (4040, 'Bernardi Delicious Sosis Goreng 12 pcs 360gr', 39900.00);
INSERT INTO "public"."items" VALUES (4273, 'Kraft keju Single 10 Slice 167 gr', 20800.00);
INSERT INTO "public"."items" VALUES (5125, 'Palmolive Aroma Therapy Absolute Relax Shower Gel Sabun Mandi Aromatherapy 750ml', 47000.00);
INSERT INTO "public"."items" VALUES (6062, 'Telur Ayam Negeri isi 10 Pcs - 2 PACK', 35000.00);
INSERT INTO "public"."items" VALUES (1235, 'Tropical Minyak Goreng 2 L', 26800.00);
INSERT INTO "public"."items" VALUES (1290, 'Ekonomi sabun cuci piring Lemon 480gr', 4900.00);
INSERT INTO "public"."items" VALUES (4255, 'Kikkoman Kecap Asin Jepang Shoyu 150 ml ', 19600.00);
INSERT INTO "public"."items" VALUES (5272, 'Gandy Roti American Toast', 19000.00);
INSERT INTO "public"."items" VALUES (5273, 'Gandy Roti Butter Cheese', 35000.00);
INSERT INTO "public"."items" VALUES (5274, 'Gandy Roti Butter Pandan', 24000.00);
INSERT INTO "public"."items" VALUES (5275, 'Gandy Roti Dinner Roll', 29000.00);
INSERT INTO "public"."items" VALUES (5276, 'Gandy Roti Tawar Gandum', 22000.00);
INSERT INTO "public"."items" VALUES (5278, 'Holland Roti Tawar Kulit', 15000.00);
INSERT INTO "public"."items" VALUES (5282, 'Holland Roti Tawar Classic Loaf ', 16000.00);
INSERT INTO "public"."items" VALUES (6197, 'Gandys Roti Keset Cokelat', 34000.00);
INSERT INTO "public"."items" VALUES (6200, 'Holland Bakery Roti Pisang Keju', 9500.00);
INSERT INTO "public"."items" VALUES (3877, 'Tolak Angin Herbal Plus Madu Cair 15 ml', 3200.00);
INSERT INTO "public"."items" VALUES (6201, 'Holland Bakery Roti Pisang Cokelat', 9000.00);
INSERT INTO "public"."items" VALUES (1184, 'Belibis Saus Sambal 340ml', 22200.00);
INSERT INTO "public"."items" VALUES (1674, 'Mie Korea Nongshim Sin Ramyun 1Pcs', 13800.00);
INSERT INTO "public"."items" VALUES (3025, 'Monde Eggdrop 110Gr', 7200.00);
INSERT INTO "public"."items" VALUES (3804, 'Monde Butter Cookies 150 Gr', 16800.00);
INSERT INTO "public"."items" VALUES (3882, 'Fresh Care Minyak Angin Aromaterapi Green Tea 10 ml', 12500.00);
INSERT INTO "public"."items" VALUES (3953, 'Garuda Permen Ting Ting 50 pcs', 7200.00);
INSERT INTO "public"."items" VALUES (4100, 'Ikat Rambut Korea Body Jewelery Mix Random 2pcs', 4000.00);
INSERT INTO "public"."items" VALUES (5861, 'Super Bihun Kuah - 5 pcs', 17000.00);
INSERT INTO "public"."items" VALUES (6069, 'Monde Soft Mini Pie 85 gr', 8900.00);
INSERT INTO "public"."items" VALUES (6070, 'Monde Genji Original Pie 70 gr', 8900.00);
INSERT INTO "public"."items" VALUES (2319, 'Sereal Koko Krunch 330gr', 36600.00);
INSERT INTO "public"."items" VALUES (2323, 'Honey Stars Cereal 300gr', 39600.00);
INSERT INTO "public"."items" VALUES (3513, 'Kellogs Sereal Froot Loops 300 gr', 39800.00);
INSERT INTO "public"."items" VALUES (1282, 'Super Pell Fresh Apel 770ml', 12600.00);
INSERT INTO "public"."items" VALUES (1399, 'Lifebuoy Sabun Mandi Cair Mild Care 900ml', 40200.00);
INSERT INTO "public"."items" VALUES (2168, 'Yuri Handsoap Rose Pouch 375ml', 19600.00);
INSERT INTO "public"."items" VALUES (3274, 'Yuri Handwash Strawberry Pouch 375ml', 19600.00);
INSERT INTO "public"."items" VALUES (3609, 'PEPSODENT PASTA GIGI SENSITIVE EXPERT FRESH 100GR', 22500.00);
INSERT INTO "public"."items" VALUES (3726, 'Harpic Pemberih Toilet Orange Botol 450 ml', 20800.00);
INSERT INTO "public"."items" VALUES (4815, 'Greenfields UHT Full Cream 1L - 2pcs', 38000.00);
INSERT INTO "public"."items" VALUES (5227, 'Greenfields Freshmilk 1L + Freshmilk Chocomalt 1L  + Freshmilk Strawberry 1L', 80000.00);
INSERT INTO "public"."items" VALUES (956, 'Torabika Cappucino bag 25 gr x 10 pcs', 18800.00);
INSERT INTO "public"."items" VALUES (1269, 'Cussons Baby Tisue Basah MILD & GENTLE 50s', 18000.00);
INSERT INTO "public"."items" VALUES (1445, 'Ultra Milk Low Fat Putih 1000ml', 17500.00);
INSERT INTO "public"."items" VALUES (2569, 'Torabika Creamy Latte 10x25gr', 19000.00);
INSERT INTO "public"."items" VALUES (5028, 'Zinc Shampo Hair Fall Treatment 340 ml', 24900.00);
INSERT INTO "public"."items" VALUES (5114, 'Korea Glow Soft Glow Refill Body Wash 450ml', 17000.00);
INSERT INTO "public"."items" VALUES (5316, 'Softex Daun Sirih Wings 23cm - 30pads', 23000.00);
INSERT INTO "public"."items" VALUES (6022, 'Colgate Super Flexi Charcoal Toothbrush / Sikat Gigi isi 3 Pcs', 18200.00);
INSERT INTO "public"."items" VALUES (1258, 'Bogasari Kunci Biru Tepung 1 Kg ', 11800.00);
INSERT INTO "public"."items" VALUES (4913, 'Senna Kerupuk Bawang mentah 250 gr', 9000.00);
INSERT INTO "public"."items" VALUES (5030, 'Zinc Shampo Clean Active 340 ml', 24900.00);
INSERT INTO "public"."items" VALUES (944, 'Coffe Filter Long Champ - COF LC 8', 30800.00);
INSERT INTO "public"."items" VALUES (1090, 'Good Day Moccacino 10 X 20 gr', 12800.00);
INSERT INTO "public"."items" VALUES (1356, 'Kacang Sukro Dua Kelinci BBQ 140gr', 9800.00);
INSERT INTO "public"."items" VALUES (1941, 'Good Time Double Chocolate Chocochips Cookies 72Gr', 7800.00);
INSERT INTO "public"."items" VALUES (1977, 'Oreo Chocolate 133Gr', 7300.00);
INSERT INTO "public"."items" VALUES (1992, 'Roma Kelapa 300G', 8500.00);
INSERT INTO "public"."items" VALUES (1998, 'Tango Wafer Coklat Pouch 125 gr', 8000.00);
INSERT INTO "public"."items" VALUES (2062, 'Nabati Richeese 115gr', 8000.00);
INSERT INTO "public"."items" VALUES (2069, 'Oreo Double Stuf 147gr', 8800.00);
INSERT INTO "public"."items" VALUES (3190, 'Barco Minyak Goreng Kelapa Pouch 2Liter', 58000.00);
INSERT INTO "public"."items" VALUES (3223, 'Art Cofie Kopi Java Robusta 200gr', 59800.00);
INSERT INTO "public"."items" VALUES (3282, 'Astor Vanilla 40 Gr', 6200.00);
INSERT INTO "public"."items" VALUES (3288, 'Nabati Richeese Wafer Keju 145 gr', 5500.00);
INSERT INTO "public"."items" VALUES (3290, 'Nissin Sagu Keju 110 gr', 10500.00);
INSERT INTO "public"."items" VALUES (3377, 'Nissin Biskuit Rasa Sapi Panggang 115 gr', 6800.00);
INSERT INTO "public"."items" VALUES (4222, 'Zuperrr Keju Box 20 x 8 Gr', 11000.00);
INSERT INTO "public"."items" VALUES (4223, 'Zuperrr Keju 10 x 27 Gr', 9500.00);
INSERT INTO "public"."items" VALUES (5848, 'Kanzler Sosis Beef Coctail 500 gr', 55500.00);
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
INSERT INTO "public"."items" VALUES (5934, 'Nutrijel Puding Lapis Gula Jawa 100 gr', 9500.00);
INSERT INTO "public"."items" VALUES (6046, 'Bo Cabe Mie Goreng 105 gr', 5500.00);
INSERT INTO "public"."items" VALUES (2334, 'Mama Lemon Jeruk Nipis 1600ml Pounch', 32000.00);
INSERT INTO "public"."items" VALUES (5190, 'Arirang Mie Goreng Ayam 125gr - 2pcs', 22800.00);
INSERT INTO "public"."items" VALUES (5293, 'Arirang Mie Goreng Spicy Bibim Ramyun 125gr - 2pcs', 22800.00);
INSERT INTO "public"."items" VALUES (5423, 'Ultra Milk Full Cream 1L + Cokelat 1L', 32000.00);
INSERT INTO "public"."items" VALUES (938, 'Attack Easy Deterjen Cair Romantic Flowers 800 ml', 18000.00);
INSERT INTO "public"."items" VALUES (1199, 'Kispray Amoris Box 4 X 21 ml', 6300.00);
INSERT INTO "public"."items" VALUES (1281, 'Wipol Pembersih Lantai Lemon Pine Refill 780ml', 15800.00);
INSERT INTO "public"."items" VALUES (1401, 'Lifebuoy Sabun Mandi Cair Mild Care 450ml', 22000.00);
INSERT INTO "public"."items" VALUES (1427, 'Indofood Bumbu Kare 45gr', 6600.00);
INSERT INTO "public"."items" VALUES (1478, 'PEPSODENT PASTA GIGI CHARCOL WHITENING 160GR', 16800.00);
INSERT INTO "public"."items" VALUES (2149, 'Oral-B All Rounder 123 Clean Soft 3Pcs', 18000.00);
INSERT INTO "public"."items" VALUES (3122, 'Dettol Antiseptic Cair 95 ml', 15000.00);
INSERT INTO "public"."items" VALUES (3129, 'POTABEE Rumput Laut 68gr', 5800.00);
INSERT INTO "public"."items" VALUES (3193, 'Snack French Fries 2000 - 68gr', 6700.00);
INSERT INTO "public"."items" VALUES (3194, 'Roma Marie Gold Biscuits 240gr', 21900.00);
INSERT INTO "public"."items" VALUES (3364, 'Khong Guan Malkist Kornet 135 gr', 6800.00);
INSERT INTO "public"."items" VALUES (3718, 'CIF Cream Serbaguna Original Botol 660 ml', 20200.00);
INSERT INTO "public"."items" VALUES (4180, 'Roma Marie Susu 115gr', 6400.00);
INSERT INTO "public"."items" VALUES (4229, 'Astor Double Cokelat 150 gr', 11800.00);
INSERT INTO "public"."items" VALUES (4538, 'Momchips Snack Keripik Ubi Ungu 70 gr', 14000.00);
INSERT INTO "public"."items" VALUES (4794, 'Baygon Eucalyptus 600 ml ', 37000.00);
INSERT INTO "public"."items" VALUES (5116, 'Tresemme Keratin Smooth Shampoo 340ml', 37000.00);
INSERT INTO "public"."items" VALUES (5286, 'Kotex Healthy Protection Maxi Non Wing 23cm 20pads', 14200.00);
INSERT INTO "public"."items" VALUES (5312, 'Sunco Minyak Goreng Sawit 2 Liter  - 6 Pcs', 158800.00);
INSERT INTO "public"."items" VALUES (5458, 'Pepsodent Fresh Cool Mint 190gr', 12365.00);
INSERT INTO "public"."items" VALUES (5460, 'Pepsodent Action 123 Cengkeh 160gr', 18710.00);
INSERT INTO "public"."items" VALUES (5488, 'Intra Jahe Wangi kotak isi 5pcs', 10500.00);
INSERT INTO "public"."items" VALUES (5512, 'Potabee rasa Ayam Bakar 68gr', 5800.00);
INSERT INTO "public"."items" VALUES (5523, 'Nissin Cheese Snack 150 gr', 6800.00);
INSERT INTO "public"."items" VALUES (5524, 'Kraft Kejucake 16gr', 2200.00);
INSERT INTO "public"."items" VALUES (5628, 'Kotex Liners Breathable Fresh Long & Wider 16 Liners', 10376.00);
INSERT INTO "public"."items" VALUES (5745, 'Qtela Snack Barbeque 60gr + Original 60gr', 10000.00);
INSERT INTO "public"."items" VALUES (5847, 'PSM Gula Pasir 1 Kg - 5 Pcs', 60000.00);
INSERT INTO "public"."items" VALUES (5979, 'Monde Snack Gold 25 gr', 2000.00);
INSERT INTO "public"."items" VALUES (5984, 'Yuri Porstex Toilet Bowl Cleaner Botol 500 ml', 13000.00);
INSERT INTO "public"."items" VALUES (6003, 'Bumbu Kitchen Jahe Bubuk 60gr - 2pcs', 27600.00);
INSERT INTO "public"."items" VALUES (6134, 'Sikat Pembersih kloset toilet gagang panjang - 200 gr (HIJAU)', 8000.00);
INSERT INTO "public"."items" VALUES (6172, 'Cap Lang Balsem Lang Aroma Terapi 20 gr', 9500.00);
INSERT INTO "public"."items" VALUES (2291, 'PRONAS Luncheon Ayam 198gr', 17800.00);
INSERT INTO "public"."items" VALUES (3492, 'Ligo Havermout White Oats 500 gr', 17600.00);
INSERT INTO "public"."items" VALUES (6007, 'Telur Kampung isi 10 Pcs - 2 Pak', 53000.00);
INSERT INTO "public"."items" VALUES (1107, 'Excelso Robusta 200 gr', 26500.00);
INSERT INTO "public"."items" VALUES (1367, 'Pronas Abon Original 100gr', 25000.00);
INSERT INTO "public"."items" VALUES (2084, 'Sun Kara Santan Cair 200ml', 8800.00);
INSERT INTO "public"."items" VALUES (3317, 'Yuri Handsoap Lemon Jerigen 3.7 Liter', 135000.00);
INSERT INTO "public"."items" VALUES (3945, 'Kit Kat  Coklat 35 Gr', 8300.00);
INSERT INTO "public"."items" VALUES (4050, 'Wei Wang Minipao Cokelat 430 gr', 29500.00);
INSERT INTO "public"."items" VALUES (4865, 'Diamond UHT Full Cream 1L - 6pcs', 96000.00);
INSERT INTO "public"."items" VALUES (5388, 'Cimory Yogurt Original Botol 250ml - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (5463, 'Pepsodent Siwak Action 123 150gr+40gr', 13150.00);
INSERT INTO "public"."items" VALUES (5481, 'Nissin Walens Choco Soes 100 gr', 8800.00);
INSERT INTO "public"."items" VALUES (5487, 'Kapal Api Kopi Mantab sachet 10pcs', 11000.00);
INSERT INTO "public"."items" VALUES (5604, 'Oishi Pillows rasa Ubi 110gr', 9200.00);
INSERT INTO "public"."items" VALUES (5605, 'Happytos Corn Tortilla Chips 160gr', 8800.00);
INSERT INTO "public"."items" VALUES (5804, 'Kanzler Sosis Beef Weiner 360 gr', 48800.00);
INSERT INTO "public"."items" VALUES (5865, 'Nissin Lemonia Biskuit emon Cookies 130 gr', 6800.00);
INSERT INTO "public"."items" VALUES (1698, 'Frisian Flag Uht Purefarm Coklat 900Ml', 16800.00);
INSERT INTO "public"."items" VALUES (5184, 'Harmony Sabun Mandi Batang Melon 70gr', 2500.00);
INSERT INTO "public"."items" VALUES (5187, 'Harmony Sabun Mandi Batang Lemon 70gr', 2500.00);
INSERT INTO "public"."items" VALUES (3981, 'Greenfield Fresh Milk 1000 ml', 28800.00);
INSERT INTO "public"."items" VALUES (4859, 'Greenfield Yogurt  Blueberry 125 gr', 12500.00);
INSERT INTO "public"."items" VALUES (5618, 'Greenfields Freshmilk Jersey 1000ml', 33000.00);
INSERT INTO "public"."items" VALUES (5762, 'Attack Deterjen Plus Softener 1200gr - 2pcs', 55000.00);
INSERT INTO "public"."items" VALUES (4432, 'Roti Krim Moka', 5000.00);
INSERT INTO "public"."items" VALUES (4464, 'Sari Roti Roti Cream Keju', 5000.00);
INSERT INTO "public"."items" VALUES (950, 'Kapal Api Special Mix 10x25gr', 12900.00);
INSERT INTO "public"."items" VALUES (5541, 'ABC Kopi Susu Sachet 31gr - 20pcs', 21000.00);
INSERT INTO "public"."items" VALUES (6210, 'Gulaku Gula Pasir Tebu 1 Kg - 12 Pcs', 149500.00);
INSERT INTO "public"."items" VALUES (2526, 'Bendera Susu Kental Manis Putih Pouch 560gr', 17800.00);
INSERT INTO "public"."items" VALUES (3542, 'Indomilk Melon 190 ml', 5600.00);
INSERT INTO "public"."items" VALUES (3543, 'Indomilk Strawberry 190 ml', 4500.00);
INSERT INTO "public"."items" VALUES (597, 'Ultra Milk Plain 200 ML ', 5000.00);
INSERT INTO "public"."items" VALUES (6176, 'Hansaplast Elastis Dua Sisi 10 Lembar', 3500.00);
INSERT INTO "public"."items" VALUES (6198, 'Holland Bakery Roti Cokelat', 8500.00);
INSERT INTO "public"."items" VALUES (6199, 'Holland Bakery Roti Keju', 9000.00);
INSERT INTO "public"."items" VALUES (1687, 'Diamond Milk Uht Full Cream 1000Ml', 16800.00);
INSERT INTO "public"."items" VALUES (1702, 'Greenfield Uht Chocomalt 1000Ml', 19500.00);
INSERT INTO "public"."items" VALUES (3136, 'OISHI Popcorn Caramel 100gr', 13200.00);
INSERT INTO "public"."items" VALUES (3294, 'Nissin Crispy Crackers  225 gr', 9800.00);
INSERT INTO "public"."items" VALUES (3373, 'Roma Malkist Keju 120 gr', 6400.00);
INSERT INTO "public"."items" VALUES (4016, 'Nutrijel Anggur 15 gr', 5500.00);
INSERT INTO "public"."items" VALUES (4395, 'Yoichi Kacang Balado 120 gr - 2 Pcs', 25000.00);
INSERT INTO "public"."items" VALUES (4635, 'Chiki Balls Rasa Ayam 55gr', 6800.00);
INSERT INTO "public"."items" VALUES (5518, 'Oishi Pillows rasa Cokelat 110gr', 9000.00);
INSERT INTO "public"."items" VALUES (5754, 'CHITATO Original 68gr - 2pcs', 19000.00);
INSERT INTO "public"."items" VALUES (5943, 'Nutrijel Melon 15 gr', 5500.00);
INSERT INTO "public"."items" VALUES (926, 'Sunlight Jeruk Nipis 750ml Pounch', 15600.00);
INSERT INTO "public"."items" VALUES (1177, 'Rinso Molto Deterjen Bubuk Anti Noda Classic Fresh 1.8kg', 42000.00);
INSERT INTO "public"."items" VALUES (1201, 'Rapika Biang Cool Blue 4 X22 ml ', 6300.00);
INSERT INTO "public"."items" VALUES (2191, 'Buavita Mango 1000ml', 27200.00);
INSERT INTO "public"."items" VALUES (2192, 'Buavita Apple 1000ml', 27200.00);
INSERT INTO "public"."items" VALUES (3306, 'Paseo Baby Pure Soft 3ply x 300s', 16800.00);
INSERT INTO "public"."items" VALUES (3307, 'Multi Tissu Facial 260s', 14800.00);
INSERT INTO "public"."items" VALUES (6143, 'Kotak telur / penyimpanan telur (135gr)', 13800.00);
INSERT INTO "public"."items" VALUES (1244, 'Filma Minyak Goreng 2L', 26800.00);
INSERT INTO "public"."items" VALUES (3907, 'Anchor Butter Salted 227 Gr', 45000.00);
INSERT INTO "public"."items" VALUES (5336, 'Barco Minyak Kelapa Botol 2L - 2pcs', 110000.00);
INSERT INTO "public"."items" VALUES (3108, 'Roma Sari Gandum Coklat 115Gr', 6000.00);
INSERT INTO "public"."items" VALUES (3278, 'Ritz Crackers Original 100gr', 6800.00);
INSERT INTO "public"."items" VALUES (3452, 'Bandana Rambut Korea (25 Gr) Kuning - 032', 9900.00);
INSERT INTO "public"."items" VALUES (4496, 'Kaos Trench Cotton Combed 30s Biru (M)', 27000.00);
INSERT INTO "public"."items" VALUES (4648, 'La Fonte Pasta Spaghetti 1kg + Chicken Sauce 117gr', 30800.00);
INSERT INTO "public"."items" VALUES (4783, 'Better Sandwich Biscuit Vanilla Cream 4 x 22g', 5600.00);
INSERT INTO "public"."items" VALUES (5001, 'Sun Kara Santan Kelapa 1L - 3pcs', 90000.00);
INSERT INTO "public"."items" VALUES (5277, 'Gandy Roty German Bread', 25000.00);
INSERT INTO "public"."items" VALUES (5279, 'Holland Roti Tawar kupas ', 15000.00);
INSERT INTO "public"."items" VALUES (5680, 'Saori Saus Tiram 133 ml', 11800.00);
INSERT INTO "public"."items" VALUES (5870, 'Nyam nyam Buble Puff Choco 18 gr', 3800.00);
INSERT INTO "public"."items" VALUES (5869, 'Nyam Nyam Buble Puff Strawberry 18 gr', 3500.00);
INSERT INTO "public"."items" VALUES (5974, 'Swallow Kamper Toilet Colour Ball Isi 5 Pcs', 16500.00);
INSERT INTO "public"."items" VALUES (6178, 'Cap Lang Minyak Kayu Putih 150 ml', 6500.00);
INSERT INTO "public"."items" VALUES (925, 'Sunlight Jeruk Nipis 400 ml Pounch', 11000.00);
INSERT INTO "public"."items" VALUES (3833, 'Indomie Variasi 10pcs + Telur ayam 10pcs', 40000.00);
INSERT INTO "public"."items" VALUES (6076, 'Chocolito Biskuit Original 19 gr', 2200.00);
INSERT INTO "public"."items" VALUES (2533, 'LAURIER  Super Maxi Wing 20pcs', 18000.00);
INSERT INTO "public"."items" VALUES (3762, 'Laurier Relax Night 35cm isi 12', 37500.00);
INSERT INTO "public"."items" VALUES (5850, 'Palmolive Absolute Relax Shower Gel 450ml', 25000.00);
INSERT INTO "public"."items" VALUES (5858, 'Palmolive Naturals Milk & Orchid Shower Gel/Sabun Mandi 400 ml', 25000.00);
INSERT INTO "public"."items" VALUES (1890, 'Garnier Pure Active Scrub 100ml', 28200.00);
INSERT INTO "public"."items" VALUES (2178, 'Fanta Strawberry Can 330ml', 6200.00);
INSERT INTO "public"."items" VALUES (3516, 'Head And Shoulders Shampoo Lemon 160 ml', 27800.00);
INSERT INTO "public"."items" VALUES (5155, 'Biore Guard Body Foam Lively Refresh 450 ml', 26600.00);
INSERT INTO "public"."items" VALUES (5361, 'Kanzler Single Original 65 gr', 7500.00);
INSERT INTO "public"."items" VALUES (6031, 'Pop Mie Soto Ayam PAke NAsi 1pcs', 6000.00);
INSERT INTO "public"."items" VALUES (913, 'Rinso Matic Deterjen Cair Front Load 1,6 L', 51800.00);
INSERT INTO "public"."items" VALUES (4767, 'Greenfield Freshmilk Low Fat Mochaccino 1L', 27000.00);
INSERT INTO "public"."items" VALUES (1140, 'Mama Lemon Jeruk Nipis 780 ml Pounch', 15300.00);
INSERT INTO "public"."items" VALUES (3110, 'Fanta Anggur Botol 1500Ml', 13000.00);
INSERT INTO "public"."items" VALUES (3269, 'Super pel Lemon Ginger 750ml', 12600.00);
INSERT INTO "public"."items" VALUES (3330, 'Yuri Hand Soap Apple 375ml', 19600.00);
INSERT INTO "public"."items" VALUES (3681, 'Cetakan Telur Stainless - Mickey', 5000.00);
INSERT INTO "public"."items" VALUES (3682, 'Cetakan Telur Stainless - Bintang', 5000.00);
INSERT INTO "public"."items" VALUES (3683, 'Cetakan Telur Stainless - Bunga', 5000.00);
INSERT INTO "public"."items" VALUES (3684, 'Cetakan Telur Stainless - Love', 5000.00);
INSERT INTO "public"."items" VALUES (3751, 'YOUC1000 Orange 140 ml', 8500.00);
INSERT INTO "public"."items" VALUES (3985, 'Yakult 65 ml x 5 pcs', 9000.00);
INSERT INTO "public"."items" VALUES (4152, 'Coca Cola 1500 ml + Fanta Strawberry 1500ml', 26000.00);
INSERT INTO "public"."items" VALUES (5982, 'Vape Liquid Elektrik Set 1 Alat Pemanas + Isi Refill 45 ml', 18500.00);
INSERT INTO "public"."items" VALUES (5986, 'Greenfield Yogurt Drink Blueberry 250 ML - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (5987, 'Greenfield Yogurt Drink Strawberry 250 ml - 2 pcs', 15000.00);
INSERT INTO "public"."items" VALUES (5990, 'Yogurt Greenfield Original 125 gr - 2 Pcs', 23000.00);
INSERT INTO "public"."items" VALUES (921, 'Rinso Deterjen Cair Gentle 700 ml', 20600.00);
INSERT INTO "public"."items" VALUES (923, 'Sunlight Sabun Cuci Piring Jeruk Nipis & Habbatussauda 755ml Pounch', 16000.00);
INSERT INTO "public"."items" VALUES (1276, 'Cussons Baby Tisue Basah Naturally 50s', 18000.00);
INSERT INTO "public"."items" VALUES (1296, 'Refina Garam Meja 500gr', 6900.00);
INSERT INTO "public"."items" VALUES (1449, 'Garuda Kacang Telur 230gr', 15800.00);
INSERT INTO "public"."items" VALUES (2151, 'Oral B Ultrathin Compact Soft 3pcs', 27600.00);
INSERT INTO "public"."items" VALUES (2531, 'Blueband Margarin Serbaguna Bulat 250gr', 13600.00);
INSERT INTO "public"."items" VALUES (2674, 'Bango Kecap Manis Botol 275ml', 21600.00);
INSERT INTO "public"."items" VALUES (3304, 'Multi Facial Tissue 1000gr', 38900.00);
INSERT INTO "public"."items" VALUES (3648, 'Kotak Sepatu Candy - Putih', 5000.00);
INSERT INTO "public"."items" VALUES (4029, 'Kobe Tepung Super Crispy Kentucky  210 Gr', 6800.00);
INSERT INTO "public"."items" VALUES (4042, 'Bernardi Bakso Sapi Kecil 50 pcs', 55400.00);
INSERT INTO "public"."items" VALUES (4479, 'Rinso Anti Noda Classic Fresh Cair 750 ml', 20500.00);
INSERT INTO "public"."items" VALUES (4810, ' Sosro Teh Celup Black Tea Isi 30 Pcs', 7800.00);
INSERT INTO "public"."items" VALUES (5243, 'Charm Body Fit Extra Maxi Wing 23cm 30pads', 17800.00);
INSERT INTO "public"."items" VALUES (5334, 'Bimoli 2L 1 Dus - 6pcs', 152800.00);
INSERT INTO "public"."items" VALUES (5849, 'Palmolive Naturals Milk & Honey Shower Gel 400ml', 21500.00);
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
INSERT INTO "public"."items" VALUES (3758, 'Indomie Goreng 10pcs + Telur 10pcs', 40000.00);
INSERT INTO "public"."items" VALUES (3939, 'Indomie Ayam Bawang - 10 Pcs Free Piring', 23000.00);
INSERT INTO "public"."items" VALUES (966, 'Indomie Rasa Ayam Bawang Satu Dus isi 40 pcs', 89900.00);
INSERT INTO "public"."items" VALUES (1410, 'Zwitsal Shampo Aleovera 300ml', 26800.00);
INSERT INTO "public"."items" VALUES (1411, 'Zwitsal Sabun Mandi Rich Honey 300ml', 24800.00);
INSERT INTO "public"."items" VALUES (3013, 'Indomie Goreng 10 pcs + Sambal Belibis 340ml', 45000.00);
INSERT INTO "public"."items" VALUES (4776, 'Zwitsal Fabric Detergent Cair 750 ml', 20000.00);
INSERT INTO "public"."items" VALUES (3699, 'Parutan Multifungsi', 10000.00);
INSERT INTO "public"."items" VALUES (6190, 'Ultra Milk Cokelat 125ml - 2pcs', 6000.00);
INSERT INTO "public"."items" VALUES (1234, 'Sunco Minyak Goreng Sawit 1 L', 10000.00);
INSERT INTO "public"."items" VALUES (2158, 'Lifeboy Handwash Total 10 Pump 200 ml', 19800.00);
INSERT INTO "public"."items" VALUES (3191, 'Barco minyak Goreng Kelapa Botol 2Liter', 58000.00);
INSERT INTO "public"."items" VALUES (3352, 'Monde Biskuit Milk Marie Regal 225gr', 18500.00);
INSERT INTO "public"."items" VALUES (4124, 'Mitraku Fishroll 500 gr', 27800.00);
INSERT INTO "public"."items" VALUES (5773, 'DARLIE PASTA GIGI DOUBLE ACTION VALUE PACK 2 X 225 GR', 38800.00);
INSERT INTO "public"."items" VALUES (5784, 'Pigeon Pasta Gigi Anak Rasa Orange 45 gr', 14500.00);
INSERT INTO "public"."items" VALUES (922, 'Sunlight Sabun Cuci Piring Extra Power Butiran Biji Zaitun  720 ml Pounch', 19000.00);
INSERT INTO "public"."items" VALUES (4400, 'Paket Susu Anak', 19900.00);
INSERT INTO "public"."items" VALUES (5061, 'Ovaltine UHT Cokelat 125ml', 3200.00);
INSERT INTO "public"."items" VALUES (5337, 'Bimoli 2L + Telur Ayam negeri 10pcs', 42000.00);
INSERT INTO "public"."items" VALUES (5763, 'Lays Sapi Panggang 68gr - 3pcs', 25500.00);
INSERT INTO "public"."items" VALUES (5809, 'Cimory UHT Chocomal 250 ml - 6 Pcs', 33300.00);
INSERT INTO "public"."items" VALUES (3321, 'Dettol Re energizing 65 gr - 3Pcs', 10000.00);
INSERT INTO "public"."items" VALUES (5306, 'LERVIA LOTION AVOCADO 200 ML', 10000.00);
INSERT INTO "public"."items" VALUES (1095, 'Good Day Rock Salt Caramello 5 X 20 gr', 3500.00);
INSERT INTO "public"."items" VALUES (5646, 'Toracafe Kopi Choco Latte Isi 8 Pcs', 9200.00);
INSERT INTO "public"."items" VALUES (1354, 'Kacang Sukro Dua Kelinci Rasa Bawang 100gr', 8500.00);
INSERT INTO "public"."items" VALUES (1357, 'Garuda Rosta Kacang Bawang 200gr', 8800.00);
INSERT INTO "public"."items" VALUES (3737, 'Posh Parfume Body Spray Blaze Pink 150 ml', 19500.00);
INSERT INTO "public"."items" VALUES (4221, 'Khong Guan Malkist Crackers 135gr - 2pcs', 10000.00);
INSERT INTO "public"."items" VALUES (4554, 'LOVE BEAUTY & PLANET Argan Oil & Lavender Body Lotion 400ml', 45000.00);
INSERT INTO "public"."items" VALUES (4790, 'Bhima Kuaci Sunflower Seeds Original Flavor 70g', 6800.00);
INSERT INTO "public"."items" VALUES (5536, 'Kopiko Coffee Candy 165 gr', 7000.00);
INSERT INTO "public"."items" VALUES (5596, 'Leivy Shower Cream Goats Milk Pump 500ml', 36800.00);
INSERT INTO "public"."items" VALUES (2524, 'Bendera Susu Kental Manis Gold 370Gr', 16000.00);
INSERT INTO "public"."items" VALUES (5743, 'Qtela Snack Barbeque 60gr - 2pcs', 10000.00);
INSERT INTO "public"."items" VALUES (6196, 'Kanzler Beef Bratwurst + Kanzler Chicken Nugget + Golden Farm Straightcut', 125000.00);
INSERT INTO "public"."items" VALUES (4465, 'Bango Kecap manis 60 ml', 3000.00);
INSERT INTO "public"."items" VALUES (5965, 'Glade One For All Air Freshener Lemon Squash 70 gr', 10200.00);
INSERT INTO "public"."items" VALUES (1680, 'Delmonte Extra Hot Chilli Sauce Pouch 200Gr', 6500.00);
INSERT INTO "public"."items" VALUES (907, 'Rinso Molto Deterjen Cair Rose Fresh 750 ml', 20800.00);
INSERT INTO "public"."items" VALUES (4182, 'Roma Malkist Abon 250gr', 9000.00);
INSERT INTO "public"."items" VALUES (4563, 'Molto Eau De Parfum Pink Luxurious Rose Pouch - 2 Pcs', 54800.00);
INSERT INTO "public"."items" VALUES (5620, 'Greenfields Freshmilk Jersey 1000ml - 3pcs', 90000.00);
INSERT INTO "public"."items" VALUES (6180, 'Fresh Care Minyak Angin Aromaterapi Citrus 10 ml', 12500.00);
INSERT INTO "public"."items" VALUES (1309, 'Laurier Double Comfort Wings 22cm  28pcs', 19800.00);
INSERT INTO "public"."items" VALUES (2579, 'LAURIER Relax Night Wings 30cm 16pcs', 16800.00);
INSERT INTO "public"."items" VALUES (2582, 'LAURIER Super Slim Guard 22.5 Cm 20''s', 25900.00);
INSERT INTO "public"."items" VALUES (4819, 'Greenfield UHT Chocomalt 200ml - 6pcs', 28800.00);
INSERT INTO "public"."items" VALUES (5120, 'Palmolive Naturals Milk & Honey Shower Gel/Sabun Mandi Susu 1L', 45900.00);
INSERT INTO "public"."items" VALUES (5121, 'Palmolive Naturals Cherry Blossom Shower Gel/Sabun Mandi Susu 1L', 45900.00);
INSERT INTO "public"."items" VALUES (5667, 'Pikopi Kopimix Isi 10 Pcs', 9400.00);
INSERT INTO "public"."items" VALUES (5677, 'Selection Kapas Round 80 pcs', 16500.00);
INSERT INTO "public"."items" VALUES (3634, 'Tas Penyimpanan Gantung - Beige', 10000.00);
INSERT INTO "public"."items" VALUES (4132, 'Bernardi Sosis Goreng isi 12 pcs + Bakso Sapi Besar isi 25 Pcs + Bakso Sapi Kecil Isi 50 Pcs', 145000.00);
INSERT INTO "public"."items" VALUES (4706, 'Paket Bernardi Bakso Sapi Kecil + Sosis Sapi Goreng + Burger Sapi Free Thermal Bag', 126600.00);
INSERT INTO "public"."items" VALUES (1198, 'Kispray Bluis Box 4x21 ml', 6300.00);
INSERT INTO "public"."items" VALUES (1371, 'Sasa 250gr', 11800.00);
INSERT INTO "public"."items" VALUES (1434, 'Royco Bumbu Rasa Sapi 230gr', 10000.00);
INSERT INTO "public"."items" VALUES (1768, 'Soklin Bio Matic Liquid Plus Softener Bubuk Front Load 1Kg', 33500.00);
INSERT INTO "public"."items" VALUES (1981, 'Oreo Original 133Gr', 7800.00);
INSERT INTO "public"."items" VALUES (2164, 'Yuri Handsoap Orange Pouch 375ml', 19600.00);
INSERT INTO "public"."items" VALUES (4027, 'Sajiku Tepung Bakwan Krispy 225 Gr', 6200.00);
INSERT INTO "public"."items" VALUES (4257, 'La Fonte Pasta-Fettucine Long 750gr', 22600.00);
INSERT INTO "public"."items" VALUES (4314, 'Sari Wangi Teh celup Asli isi 30 Pcs', 7200.00);
INSERT INTO "public"."items" VALUES (4382, 'Royco Kaldu Jamur 40 gr', 5800.00);
INSERT INTO "public"."items" VALUES (6072, 'Oreo Biskuit Dark White Chocolate 133 gr', 7300.00);
INSERT INTO "public"."items" VALUES (6073, 'Oreo Biskuit Ice Cream Blueberry 133 gr', 7300.00);
INSERT INTO "public"."items" VALUES (4424, 'Roti Tawar Double Soft', 18500.00);
INSERT INTO "public"."items" VALUES (4431, 'Roti Krim Cokelat', 5000.00);
INSERT INTO "public"."items" VALUES (4501, 'Sari Roti Sandwich Krim Keju', 5000.00);
INSERT INTO "public"."items" VALUES (4621, 'Sari Roti Shandwich Cream Peanut ', 5000.00);
INSERT INTO "public"."items" VALUES (1999, 'Tango Wafer Vanila Pouch 115 gr', 8000.00);
INSERT INTO "public"."items" VALUES (2063, 'Nextar Biskuit Pinaple 112 gr', 7800.00);
INSERT INTO "public"."items" VALUES (2120, 'Nextar Brownies 112gr', 8200.00);
INSERT INTO "public"."items" VALUES (2427, 'Good Time Biscuit Coffee 72Gr', 7500.00);
INSERT INTO "public"."items" VALUES (2525, 'Bendera Susu Kental Manis Coklat Pouch 560gr', 17800.00);
INSERT INTO "public"."items" VALUES (5480, 'Nissin Walens  Cheese Soes 100 gr', 8800.00);
INSERT INTO "public"."items" VALUES (5482, 'Nissin Walens Blueberry 100 gr', 8800.00);
INSERT INTO "public"."items" VALUES (5525, 'Monde Pola Snack rasa kentang 25gr', 3200.00);
INSERT INTO "public"."items" VALUES (5539, 'Meiji Hello Panda Cookies and Cream 45gr', 6000.00);
INSERT INTO "public"."items" VALUES (6167, 'Natur Shampoo Aloe Vera 140 ml', 19000.00);
INSERT INTO "public"."items" VALUES (2228, 'Nagata Sikat Bak Sudut - NGT 215', 28800.00);
INSERT INTO "public"."items" VALUES (4117, 'Hand Blender Heles HL 718', 157000.00);
INSERT INTO "public"."items" VALUES (4232, 'Rosebrand Tepung beras 500 gr', 8800.00);
INSERT INTO "public"."items" VALUES (1386, 'Shinzui Sabun 3 x 110gr', 15600.00);
INSERT INTO "public"."items" VALUES (1485, 'CIPTADENT COOL MINT 190GR', 10200.00);
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
INSERT INTO "public"."items" VALUES (1901, 'Chocolatos Coklat 200ml', 5000.00);
INSERT INTO "public"."items" VALUES (2188, 'Sosro Teh Botol 1000ml', 9800.00);
INSERT INTO "public"."items" VALUES (3131, 'PIATTOS Iga Penyet 78gr', 8500.00);
INSERT INTO "public"."items" VALUES (3537, 'Tango Dring Velluto 250 ml', 7000.00);
INSERT INTO "public"."items" VALUES (3560, 'Hemaviton C1000+Kolagen 1000mg', 12000.00);
INSERT INTO "public"."items" VALUES (3797, 'Mr.Potato Original 85 gr', 13500.00);
INSERT INTO "public"."items" VALUES (4716, 'Filma Minyak Goreng Derigen 5L', 72800.00);
INSERT INTO "public"."items" VALUES (4935, 'Maizenaku Tepung Maizena Kotak 150 gr', 5000.00);
INSERT INTO "public"."items" VALUES (4993, 'Kokiku Emping Manis Special Labuan 250 gr - Mentah', 30000.00);
INSERT INTO "public"."items" VALUES (5866, 'Piattos Snack Ayam Teriyaki 80 gr', 8800.00);
INSERT INTO "public"."items" VALUES (6030, 'Greenfields Yogurt Drink Strawberry+Lychee+Blueberry+Mangga+Peach 250ml', 38000.00);
INSERT INTO "public"."items" VALUES (6175, 'Lo Han Kuo Infusion Minuman Pereda Panas Dalam 1 Box Isi 12 pcs x 14 gr', 20800.00);
INSERT INTO "public"."items" VALUES (3559, 'Dettol Antiseptic Cair 245 ml 2pcs', 65000.00);
INSERT INTO "public"."items" VALUES (4720, 'Pristine Mineral ph 8+ 1500ml - 1 dus', 68000.00);
INSERT INTO "public"."items" VALUES (4894, 'Blue Diamond Susu Almond Vanilla 180 ml', 12000.00);
INSERT INTO "public"."items" VALUES (5989, 'Greenfield Yogurt Drink Mango 250 ml - 2 Pcs', 15000.00);
INSERT INTO "public"."items" VALUES (6058, 'Greenfields Freshmilk 1L - 3pcs', 76000.00);
INSERT INTO "public"."items" VALUES (3549, 'Larutan Penyegar Cap Kaki Tiga 500 ml', 7800.00);
INSERT INTO "public"."items" VALUES (3712, 'Hers Protect Extra Maxi Non Wing isi 24 pcs', 9800.00);
INSERT INTO "public"."items" VALUES (5181, 'Boom Deterjen Bubuk White Atom 315gr', 5000.00);
INSERT INTO "public"."items" VALUES (5793, 'Tolak Linu Cool Minyak Angin Herbal Roll On 10ml', 9500.00);
INSERT INTO "public"."items" VALUES (3912, 'Greenfield Yogurt Rasa Strawberry 125 Gr', 12500.00);
INSERT INTO "public"."items" VALUES (4912, 'Senna Kerupuk Udang Mentah 250 gr', 9000.00);
INSERT INTO "public"."items" VALUES (5565, 'Prabu Kerupuk Koin Original 200 gr -Matang', 14800.00);
INSERT INTO "public"."items" VALUES (5634, 'Teh Pucuk Less Sugar 350ml', 5000.00);
INSERT INTO "public"."items" VALUES (6050, 'Greenfield Yogurt Blueberry 125 gr -  2pcs', 23000.00);
INSERT INTO "public"."items" VALUES (6189, 'Greenfields Yogurt Mango 125gr - 2pcs', 23000.00);

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
INSERT INTO "public"."transaction_items" VALUES (20564, 19390, 1238, 1, 12200.00);
INSERT INTO "public"."transaction_items" VALUES (20565, 19390, 1247, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20566, 19390, 3408, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20567, 19390, 5856, 1, 21800.00);
INSERT INTO "public"."transaction_items" VALUES (20568, 19388, 2106, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (20569, 19388, 3398, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20570, 19388, 3538, 1, 6750.00);
INSERT INTO "public"."transaction_items" VALUES (20571, 19388, 5106, 1, 13200.00);
INSERT INTO "public"."transaction_items" VALUES (20572, 19388, 6091, 1, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (20573, 19387, 587, 2, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (20574, 19387, 1233, 2, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20575, 19387, 1446, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20576, 19386, 1132, 2, 21800.00);
INSERT INTO "public"."transaction_items" VALUES (20577, 19386, 1193, 3, 6100.00);
INSERT INTO "public"."transaction_items" VALUES (20578, 19386, 2335, 1, 16400.00);
INSERT INTO "public"."transaction_items" VALUES (20579, 19386, 3768, 1, 29000.00);
INSERT INTO "public"."transaction_items" VALUES (20580, 19386, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20581, 19386, 5551, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20582, 19386, 5955, 3, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (20583, 19383, 5988, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20584, 19383, 6028, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20585, 19383, 6029, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20586, 19382, 1245, 1, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20587, 19382, 1433, 1, 10500.00);
INSERT INTO "public"."transaction_items" VALUES (20588, 19382, 5868, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20589, 19380, 595, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (20590, 19380, 1487, 1, 10200.00);
INSERT INTO "public"."transaction_items" VALUES (20591, 19380, 3003, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20592, 19380, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (20593, 19380, 3107, 1, 42600.00);
INSERT INTO "public"."transaction_items" VALUES (20594, 19380, 5472, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20595, 19380, 5687, 1, 10600.00);
INSERT INTO "public"."transaction_items" VALUES (20596, 19380, 5815, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (20597, 19379, 353, 10, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20598, 19379, 1186, 1, 3000.00);
INSERT INTO "public"."transaction_items" VALUES (20599, 19379, 2535, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (20600, 19379, 5513, 2, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20601, 19379, 5949, 3, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (20602, 19378, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20603, 19378, 3123, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20604, 19378, 4870, 1, 55000.00);
INSERT INTO "public"."transaction_items" VALUES (20605, 19377, 2175, 1, 13000.00);
INSERT INTO "public"."transaction_items" VALUES (20606, 19377, 2180, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20607, 19377, 3466, 1, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (20608, 19377, 6125, 1, 9900.00);
INSERT INTO "public"."transaction_items" VALUES (20609, 19375, 1233, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20610, 19375, 5216, 1, 44000.00);
INSERT INTO "public"."transaction_items" VALUES (20611, 19375, 5344, 1, 44000.00);
INSERT INTO "public"."transaction_items" VALUES (20612, 19375, 5868, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20613, 19375, 6218, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (20614, 19375, 6219, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (20615, 19373, 2234, 1, 55800.00);
INSERT INTO "public"."transaction_items" VALUES (20616, 19373, 6034, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (20617, 19373, 6164, 1, 23500.00);
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
INSERT INTO "public"."transaction_items" VALUES (20631, 19370, 1475, 1, 10800.00);
INSERT INTO "public"."transaction_items" VALUES (20632, 19370, 2133, 1, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (20633, 19370, 2528, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (20634, 19370, 3314, 1, 4800.00);
INSERT INTO "public"."transaction_items" VALUES (20635, 19370, 4818, 1, 30000.00);
INSERT INTO "public"."transaction_items" VALUES (20636, 19370, 5375, 1, 33300.00);
INSERT INTO "public"."transaction_items" VALUES (20637, 19370, 5417, 2, 23500.00);
INSERT INTO "public"."transaction_items" VALUES (20638, 19370, 6035, 1, 108000.00);
INSERT INTO "public"."transaction_items" VALUES (20639, 19367, 976, 1, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (20640, 19367, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20641, 19367, 1257, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (20642, 19367, 2230, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (20643, 19367, 3170, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (20644, 19367, 4036, 2, 13600.00);
INSERT INTO "public"."transaction_items" VALUES (20645, 19367, 4903, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20646, 19367, 5846, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (20647, 19367, 6018, 1, 29800.00);
INSERT INTO "public"."transaction_items" VALUES (20648, 19366, 353, 2, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20649, 19366, 1259, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (20650, 19366, 1959, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20651, 19366, 3908, 1, 45000.00);
INSERT INTO "public"."transaction_items" VALUES (20652, 19366, 3921, 1, 17000.00);
INSERT INTO "public"."transaction_items" VALUES (20653, 19366, 4005, 1, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (20654, 19366, 5335, 1, 145000.00);
INSERT INTO "public"."transaction_items" VALUES (20655, 19366, 6221, 1, 3800.00);
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
INSERT INTO "public"."transaction_items" VALUES (20677, 19363, 355, 3, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20678, 19363, 928, 2, 34800.00);
INSERT INTO "public"."transaction_items" VALUES (20679, 19363, 1122, 3, 26500.00);
INSERT INTO "public"."transaction_items" VALUES (20680, 19363, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20681, 19363, 1245, 3, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20682, 19363, 1280, 1, 15800.00);
INSERT INTO "public"."transaction_items" VALUES (20683, 19363, 1305, 2, 18600.00);
INSERT INTO "public"."transaction_items" VALUES (20684, 19363, 1404, 4, 21200.00);
INSERT INTO "public"."transaction_items" VALUES (20685, 19363, 1749, 1, 17200.00);
INSERT INTO "public"."transaction_items" VALUES (20686, 19363, 2281, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (20687, 19363, 2516, 1, 9200.00);
INSERT INTO "public"."transaction_items" VALUES (20688, 19363, 3003, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20689, 19363, 3014, 1, 19900.00);
INSERT INTO "public"."transaction_items" VALUES (20690, 19363, 3016, 1, 16600.00);
INSERT INTO "public"."transaction_items" VALUES (20691, 19363, 3286, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20692, 19363, 3574, 2, 9200.00);
INSERT INTO "public"."transaction_items" VALUES (20693, 19363, 3641, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20694, 19363, 3729, 2, 32600.00);
INSERT INTO "public"."transaction_items" VALUES (20695, 19363, 4460, 1, 59900.00);
INSERT INTO "public"."transaction_items" VALUES (20696, 19363, 4806, 1, 6500.00);
INSERT INTO "public"."transaction_items" VALUES (20697, 19363, 5054, 3, 5200.00);
INSERT INTO "public"."transaction_items" VALUES (20698, 19363, 5055, 1, 19800.00);
INSERT INTO "public"."transaction_items" VALUES (20699, 19363, 5778, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20700, 19363, 5821, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20701, 19363, 5822, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20702, 19363, 5824, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20703, 19363, 5825, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20704, 19363, 5826, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20705, 19363, 5928, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (20706, 19363, 5952, 1, 24000.00);
INSERT INTO "public"."transaction_items" VALUES (20707, 19363, 5972, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (20708, 19362, 2321, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (20709, 19362, 2322, 1, 24200.00);
INSERT INTO "public"."transaction_items" VALUES (20710, 19362, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (20711, 19362, 4329, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (20712, 19362, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (20713, 19362, 5639, 1, 13741.00);
INSERT INTO "public"."transaction_items" VALUES (20714, 19362, 6209, 1, 30000.00);
INSERT INTO "public"."transaction_items" VALUES (20715, 19360, 2184, 2, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20716, 19360, 5056, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20717, 19360, 6043, 1, 14000.00);
INSERT INTO "public"."transaction_items" VALUES (20718, 19360, 6090, 1, 4600.00);
INSERT INTO "public"."transaction_items" VALUES (20719, 19360, 6098, 2, 7600.00);
INSERT INTO "public"."transaction_items" VALUES (20720, 19358, 1294, 0, 29900.00);
INSERT INTO "public"."transaction_items" VALUES (20721, 19358, 1353, 0, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (20722, 19358, 2066, 0, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20723, 19358, 2304, 0, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20724, 19358, 2307, 0, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20725, 19358, 3117, 0, 80000.00);
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
INSERT INTO "public"."transaction_items" VALUES (20737, 19358, 5590, 0, 38000.00);
INSERT INTO "public"."transaction_items" VALUES (20738, 19358, 5811, 0, 66000.00);
INSERT INTO "public"."transaction_items" VALUES (20739, 19358, 5816, 0, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (20740, 19358, 5895, 0, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20741, 19358, 5895, 0, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20742, 19357, 934, 2, 28900.00);
INSERT INTO "public"."transaction_items" VALUES (20743, 19357, 4562, 1, 47800.00);
INSERT INTO "public"."transaction_items" VALUES (20744, 19357, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20745, 19356, 3829, 0, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20746, 19356, 3973, 0, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20747, 19356, 4361, 0, 23800.00);
INSERT INTO "public"."transaction_items" VALUES (20748, 19356, 4363, 0, 22800.00);
INSERT INTO "public"."transaction_items" VALUES (20749, 19356, 6124, 0, 9900.00);
INSERT INTO "public"."transaction_items" VALUES (20750, 19356, 6126, 0, 15900.00);
INSERT INTO "public"."transaction_items" VALUES (20751, 19356, 6132, 0, 9900.00);
INSERT INTO "public"."transaction_items" VALUES (20752, 19355, 265, 1, 32000.00);
INSERT INTO "public"."transaction_items" VALUES (20753, 19355, 2574, 2, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20754, 19355, 2578, 1, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (20755, 19355, 3591, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (20756, 19355, 3680, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20757, 19355, 3818, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20758, 19355, 3826, 1, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (20759, 19355, 4889, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20760, 19355, 5195, 1, 7000.00);
INSERT INTO "public"."transaction_items" VALUES (20761, 19355, 5223, 1, 3000.00);
INSERT INTO "public"."transaction_items" VALUES (20762, 19355, 5566, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20763, 19355, 5779, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20764, 19355, 5902, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20765, 19355, 6024, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (20766, 19355, 6140, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (20767, 19355, 6163, 1, 40000.00);
INSERT INTO "public"."transaction_items" VALUES (20768, 19355, 6165, 1, 0.00);
INSERT INTO "public"."transaction_items" VALUES (20769, 19354, 1915, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20770, 19354, 4634, 1, 11500.00);
INSERT INTO "public"."transaction_items" VALUES (20771, 19354, 5831, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20772, 19351, 968, 5, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (20773, 19351, 976, 3, 94900.00);
INSERT INTO "public"."transaction_items" VALUES (20774, 19351, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20775, 19349, 5540, 2, 7500.00);
INSERT INTO "public"."transaction_items" VALUES (20776, 19349, 5872, 3, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (20777, 19349, 5938, 2, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20778, 19349, 6091, 1, 1000.00);
INSERT INTO "public"."transaction_items" VALUES (20779, 19347, 1270, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (20780, 19347, 1292, 1, 32900.00);
INSERT INTO "public"."transaction_items" VALUES (20781, 19347, 1494, 1, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (20782, 19347, 3192, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (20783, 19347, 3319, 1, 13600.00);
INSERT INTO "public"."transaction_items" VALUES (20784, 19347, 5997, 1, 68800.00);
INSERT INTO "public"."transaction_items" VALUES (20785, 19347, 6009, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (20786, 19347, 6100, 2, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20787, 19347, 6101, 2, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (20788, 19347, 6103, 1, 14600.00);
INSERT INTO "public"."transaction_items" VALUES (20789, 19346, 1703, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (20790, 19346, 4343, 1, 23800.00);
INSERT INTO "public"."transaction_items" VALUES (20791, 19346, 4766, 2, 28800.00);
INSERT INTO "public"."transaction_items" VALUES (20792, 19346, 5441, 2, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20793, 19345, 929, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (20794, 19345, 937, 1, 21000.00);
INSERT INTO "public"."transaction_items" VALUES (20795, 19345, 1267, 1, 13500.00);
INSERT INTO "public"."transaction_items" VALUES (20796, 19345, 2170, 1, 28000.00);
INSERT INTO "public"."transaction_items" VALUES (20797, 19345, 2219, 1, 22800.00);
INSERT INTO "public"."transaction_items" VALUES (20798, 19345, 3268, 1, 17200.00);
INSERT INTO "public"."transaction_items" VALUES (20799, 19345, 4040, 1, 39900.00);
INSERT INTO "public"."transaction_items" VALUES (20800, 19345, 4273, 1, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (20801, 19345, 5125, 1, 47000.00);
INSERT INTO "public"."transaction_items" VALUES (20802, 19345, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20803, 19343, 1235, 2, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (20804, 19343, 1290, 1, 4900.00);
INSERT INTO "public"."transaction_items" VALUES (20805, 19343, 1706, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20806, 19343, 4255, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (20807, 19343, 6035, 1, 108000.00);
INSERT INTO "public"."transaction_items" VALUES (20808, 19340, 5272, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (20809, 19340, 5273, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20810, 19340, 5274, 1, 24000.00);
INSERT INTO "public"."transaction_items" VALUES (20811, 19340, 5275, 1, 29000.00);
INSERT INTO "public"."transaction_items" VALUES (20812, 19340, 5276, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20813, 19340, 5278, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20814, 19340, 5282, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (20815, 19340, 6197, 1, 34000.00);
INSERT INTO "public"."transaction_items" VALUES (20816, 19340, 6200, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (20817, 19339, 1703, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (20818, 19339, 3877, 1, 3200.00);
INSERT INTO "public"."transaction_items" VALUES (20819, 19339, 6201, 1, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (20820, 19336, 1184, 1, 22200.00);
INSERT INTO "public"."transaction_items" VALUES (20821, 19336, 1674, 1, 13800.00);
INSERT INTO "public"."transaction_items" VALUES (20822, 19336, 3025, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (20823, 19336, 3804, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20824, 19336, 3882, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20825, 19336, 3953, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (20826, 19336, 4100, 1, 4000.00);
INSERT INTO "public"."transaction_items" VALUES (20827, 19336, 5861, 1, 17000.00);
INSERT INTO "public"."transaction_items" VALUES (20828, 19336, 6069, 1, 8900.00);
INSERT INTO "public"."transaction_items" VALUES (20829, 19336, 6070, 1, 8900.00);
INSERT INTO "public"."transaction_items" VALUES (20830, 19333, 2319, 2, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (20831, 19333, 2323, 1, 39600.00);
INSERT INTO "public"."transaction_items" VALUES (20832, 19333, 3513, 1, 39800.00);
INSERT INTO "public"."transaction_items" VALUES (20833, 19332, 1184, 1, 22200.00);
INSERT INTO "public"."transaction_items" VALUES (20834, 19332, 1282, 2, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (20835, 19332, 1399, 1, 40200.00);
INSERT INTO "public"."transaction_items" VALUES (20836, 19332, 2168, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (20837, 19332, 3274, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (20838, 19332, 3609, 1, 22500.00);
INSERT INTO "public"."transaction_items" VALUES (20839, 19332, 3726, 1, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (20840, 19332, 4675, 1, 50000.00);
INSERT INTO "public"."transaction_items" VALUES (20841, 19332, 4815, 1, 38000.00);
INSERT INTO "public"."transaction_items" VALUES (20842, 19332, 5227, 1, 80000.00);
INSERT INTO "public"."transaction_items" VALUES (20843, 19331, 956, 1, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (20844, 19331, 1269, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (20845, 19331, 1445, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20846, 19331, 2569, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (20847, 19331, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (20848, 19331, 5028, 1, 24900.00);
INSERT INTO "public"."transaction_items" VALUES (20849, 19331, 5114, 4, 17000.00);
INSERT INTO "public"."transaction_items" VALUES (20850, 19331, 5316, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (20851, 19331, 5955, 1, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (20852, 19331, 6022, 1, 18200.00);
INSERT INTO "public"."transaction_items" VALUES (20853, 19330, 1258, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (20854, 19330, 4913, 1, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (20855, 19330, 5030, 2, 24900.00);
INSERT INTO "public"."transaction_items" VALUES (20856, 19328, 944, 1, 30800.00);
INSERT INTO "public"."transaction_items" VALUES (20857, 19328, 1090, 1, 12800.00);
INSERT INTO "public"."transaction_items" VALUES (20858, 19328, 1267, 1, 13500.00);
INSERT INTO "public"."transaction_items" VALUES (20859, 19328, 1356, 1, 9800.00);
INSERT INTO "public"."transaction_items" VALUES (20860, 19328, 1941, 1, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (20861, 19328, 1977, 1, 7300.00);
INSERT INTO "public"."transaction_items" VALUES (20862, 19328, 1992, 1, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (20863, 19328, 1998, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20864, 19328, 2062, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20865, 19328, 2069, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20866, 19328, 3003, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20867, 19328, 3190, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (20868, 19328, 3223, 1, 59800.00);
INSERT INTO "public"."transaction_items" VALUES (20869, 19328, 3282, 1, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (20870, 19328, 3288, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20871, 19328, 3290, 1, 10500.00);
INSERT INTO "public"."transaction_items" VALUES (20872, 19328, 3377, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20873, 19328, 4222, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (20874, 19328, 4223, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (20875, 19328, 5848, 1, 55500.00);
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
INSERT INTO "public"."transaction_items" VALUES (20896, 19324, 5934, 1, 9500.00);
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
INSERT INTO "public"."transaction_items" VALUES (20915, 19323, 5190, 0, 22800.00);
INSERT INTO "public"."transaction_items" VALUES (20916, 19323, 5293, 0, 22800.00);
INSERT INTO "public"."transaction_items" VALUES (20917, 19323, 5423, 0, 32000.00);
INSERT INTO "public"."transaction_items" VALUES (20918, 19323, 5452, 0, 20377.00);
INSERT INTO "public"."transaction_items" VALUES (20919, 19323, 5697, 0, 15900.00);
INSERT INTO "public"."transaction_items" VALUES (20920, 19323, 6046, 0, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (20921, 19320, 938, 5, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (20922, 19320, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20923, 19320, 1199, 1, 6300.00);
INSERT INTO "public"."transaction_items" VALUES (20924, 19320, 1281, 3, 15800.00);
INSERT INTO "public"."transaction_items" VALUES (20925, 19320, 1290, 1, 4900.00);
INSERT INTO "public"."transaction_items" VALUES (20926, 19320, 1401, 2, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (20927, 19320, 1427, 2, 6600.00);
INSERT INTO "public"."transaction_items" VALUES (20928, 19320, 1478, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20929, 19320, 2149, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (20930, 19320, 2334, 2, 32000.00);
INSERT INTO "public"."transaction_items" VALUES (20931, 19320, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (20932, 19320, 3122, 2, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20933, 19320, 3129, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20934, 19320, 3193, 1, 6700.00);
INSERT INTO "public"."transaction_items" VALUES (20935, 19320, 3194, 1, 21900.00);
INSERT INTO "public"."transaction_items" VALUES (20936, 19320, 3282, 1, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (20937, 19320, 3364, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20938, 19320, 3718, 1, 20200.00);
INSERT INTO "public"."transaction_items" VALUES (20939, 19320, 4180, 1, 6400.00);
INSERT INTO "public"."transaction_items" VALUES (20940, 19320, 4229, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (20941, 19320, 4538, 1, 14000.00);
INSERT INTO "public"."transaction_items" VALUES (20942, 19320, 4794, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20943, 19320, 5116, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (20944, 19320, 5286, 1, 14200.00);
INSERT INTO "public"."transaction_items" VALUES (20945, 19320, 5312, 1, 158800.00);
INSERT INTO "public"."transaction_items" VALUES (20946, 19320, 5458, 1, 12365.00);
INSERT INTO "public"."transaction_items" VALUES (20947, 19320, 5460, 1, 18710.00);
INSERT INTO "public"."transaction_items" VALUES (20948, 19320, 5488, 1, 10500.00);
INSERT INTO "public"."transaction_items" VALUES (20949, 19320, 5512, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20950, 19320, 5513, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (20951, 19320, 5523, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20952, 19320, 5524, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (20953, 19320, 5628, 3, 10376.00);
INSERT INTO "public"."transaction_items" VALUES (20954, 19320, 5745, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (20955, 19320, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20956, 19320, 5847, 1, 60000.00);
INSERT INTO "public"."transaction_items" VALUES (20957, 19320, 5979, 1, 2000.00);
INSERT INTO "public"."transaction_items" VALUES (20958, 19320, 5984, 2, 13000.00);
INSERT INTO "public"."transaction_items" VALUES (20959, 19320, 6003, 1, 27600.00);
INSERT INTO "public"."transaction_items" VALUES (20960, 19320, 6134, 2, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (20961, 19320, 6172, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (20962, 19317, 1445, 4, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (20963, 19317, 2291, 1, 17800.00);
INSERT INTO "public"."transaction_items" VALUES (20964, 19317, 3492, 1, 17600.00);
INSERT INTO "public"."transaction_items" VALUES (20965, 19317, 6007, 1, 53000.00);
INSERT INTO "public"."transaction_items" VALUES (20966, 19317, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (20967, 19316, 1107, 2, 26500.00);
INSERT INTO "public"."transaction_items" VALUES (20968, 19316, 1245, 1, 25800.00);
INSERT INTO "public"."transaction_items" VALUES (20969, 19316, 1367, 2, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (20970, 19316, 1959, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20971, 19316, 2084, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20972, 19316, 3003, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20973, 19316, 3317, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (20974, 19316, 3779, 1, 10200.00);
INSERT INTO "public"."transaction_items" VALUES (20975, 19316, 3945, 2, 8300.00);
INSERT INTO "public"."transaction_items" VALUES (20976, 19316, 4050, 1, 29500.00);
INSERT INTO "public"."transaction_items" VALUES (20977, 19316, 4865, 1, 96000.00);
INSERT INTO "public"."transaction_items" VALUES (20978, 19316, 5388, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (20979, 19316, 5463, 1, 13150.00);
INSERT INTO "public"."transaction_items" VALUES (20980, 19316, 5481, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20981, 19316, 5487, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (20982, 19316, 5604, 1, 9200.00);
INSERT INTO "public"."transaction_items" VALUES (20983, 19316, 5605, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (20984, 19316, 5804, 1, 48800.00);
INSERT INTO "public"."transaction_items" VALUES (20985, 19316, 5865, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (20986, 19315, 1698, 2, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (20987, 19315, 5184, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20988, 19315, 5187, 1, 2500.00);
INSERT INTO "public"."transaction_items" VALUES (20989, 19314, 3981, 3, 28800.00);
INSERT INTO "public"."transaction_items" VALUES (20990, 19314, 4859, 3, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (20991, 19314, 5618, 3, 33000.00);
INSERT INTO "public"."transaction_items" VALUES (20992, 19314, 5762, 3, 55000.00);
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
INSERT INTO "public"."transaction_items" VALUES (21009, 19310, 5541, 1, 21000.00);
INSERT INTO "public"."transaction_items" VALUES (21010, 19310, 6210, 2, 149500.00);
INSERT INTO "public"."transaction_items" VALUES (21011, 19309, 2526, 2, 17800.00);
INSERT INTO "public"."transaction_items" VALUES (21012, 19309, 3542, 2, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21013, 19309, 3543, 2, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (21014, 19308, 597, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21015, 19308, 3193, 1, 6700.00);
INSERT INTO "public"."transaction_items" VALUES (21016, 19308, 6176, 1, 3500.00);
INSERT INTO "public"."transaction_items" VALUES (21017, 19308, 6198, 1, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (21018, 19308, 6199, 1, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21019, 19306, 1687, 2, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21020, 19306, 1702, 4, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (21021, 19306, 3020, 1, 35600.00);
INSERT INTO "public"."transaction_items" VALUES (21022, 19306, 3136, 1, 13200.00);
INSERT INTO "public"."transaction_items" VALUES (21023, 19306, 3294, 1, 9800.00);
INSERT INTO "public"."transaction_items" VALUES (21024, 19306, 3373, 1, 6400.00);
INSERT INTO "public"."transaction_items" VALUES (21025, 19306, 4016, 2, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (21026, 19306, 4395, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (21027, 19306, 4635, 2, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21028, 19306, 4815, 1, 38000.00);
INSERT INTO "public"."transaction_items" VALUES (21029, 19306, 5518, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21030, 19306, 5754, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (21031, 19306, 5943, 2, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (21032, 19305, 926, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21033, 19305, 1176, 1, 17500.00);
INSERT INTO "public"."transaction_items" VALUES (21034, 19305, 1177, 1, 42000.00);
INSERT INTO "public"."transaction_items" VALUES (21035, 19305, 1201, 1, 6300.00);
INSERT INTO "public"."transaction_items" VALUES (21036, 19305, 1280, 2, 15800.00);
INSERT INTO "public"."transaction_items" VALUES (21037, 19305, 1282, 2, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21038, 19305, 1915, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (21039, 19305, 2133, 1, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (21040, 19305, 2191, 1, 27200.00);
INSERT INTO "public"."transaction_items" VALUES (21041, 19305, 2192, 1, 27200.00);
INSERT INTO "public"."transaction_items" VALUES (21042, 19305, 3192, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (21043, 19305, 3306, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21044, 19305, 3307, 1, 14800.00);
INSERT INTO "public"."transaction_items" VALUES (21045, 19305, 3726, 2, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (21046, 19305, 4794, 1, 37000.00);
INSERT INTO "public"."transaction_items" VALUES (21047, 19305, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21048, 19305, 6143, 1, 13800.00);
INSERT INTO "public"."transaction_items" VALUES (21049, 19304, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21050, 19304, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21051, 19304, 4677, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21052, 19304, 4679, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21053, 19302, 1244, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (21054, 19302, 1687, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21055, 19302, 3907, 1, 45000.00);
INSERT INTO "public"."transaction_items" VALUES (21056, 19302, 5336, 1, 110000.00);
INSERT INTO "public"."transaction_items" VALUES (21057, 19302, 5955, 1, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (21058, 19301, 3108, 3, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21059, 19301, 3278, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21060, 19301, 3452, 1, 9900.00);
INSERT INTO "public"."transaction_items" VALUES (21061, 19301, 4005, 3, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (21062, 19301, 4496, 1, 27000.00);
INSERT INTO "public"."transaction_items" VALUES (21063, 19301, 4648, 1, 30800.00);
INSERT INTO "public"."transaction_items" VALUES (21064, 19301, 4783, 1, 5600.00);
INSERT INTO "public"."transaction_items" VALUES (21065, 19301, 5001, 1, 90000.00);
INSERT INTO "public"."transaction_items" VALUES (21066, 19301, 5277, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (21067, 19301, 5279, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21068, 19301, 5680, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (21069, 19301, 5870, 1, 3800.00);
INSERT INTO "public"."transaction_items" VALUES (21070, 19301, 6070, 1, 8900.00);
INSERT INTO "public"."transaction_items" VALUES (21071, 19299, 5540, 1, 7500.00);
INSERT INTO "public"."transaction_items" VALUES (21072, 19299, 5869, 1, 3500.00);
INSERT INTO "public"."transaction_items" VALUES (21073, 19299, 5938, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (21074, 19299, 5974, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (21075, 19299, 6178, 1, 6500.00);
INSERT INTO "public"."transaction_items" VALUES (21076, 19298, 925, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21077, 19298, 3833, 1, 40000.00);
INSERT INTO "public"."transaction_items" VALUES (21078, 19298, 5979, 1, 2000.00);
INSERT INTO "public"."transaction_items" VALUES (21079, 19298, 6076, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21080, 19297, 2533, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (21081, 19297, 3190, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (21082, 19297, 3762, 1, 37500.00);
INSERT INTO "public"."transaction_items" VALUES (21083, 19297, 4427, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21084, 19297, 5850, 2, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (21085, 19297, 5858, 1, 25000.00);
INSERT INTO "public"."transaction_items" VALUES (21086, 19295, 4429, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21087, 19295, 4433, 3, 4500.00);
INSERT INTO "public"."transaction_items" VALUES (21088, 19295, 4677, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21089, 19293, 4426, 0, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21090, 19293, 4429, 0, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21091, 19293, 4432, 0, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21092, 19292, 1890, 1, 28200.00);
INSERT INTO "public"."transaction_items" VALUES (21093, 19292, 2178, 1, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (21094, 19292, 3516, 1, 27800.00);
INSERT INTO "public"."transaction_items" VALUES (21095, 19292, 5155, 1, 26600.00);
INSERT INTO "public"."transaction_items" VALUES (21096, 19292, 5155, 1, 26600.00);
INSERT INTO "public"."transaction_items" VALUES (21097, 19292, 5361, 2, 7500.00);
INSERT INTO "public"."transaction_items" VALUES (21098, 19292, 6031, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21099, 19291, 913, 0, 51800.00);
INSERT INTO "public"."transaction_items" VALUES (21100, 19291, 4767, 0, 27000.00);
INSERT INTO "public"."transaction_items" VALUES (21101, 19291, 5618, 0, 33000.00);
INSERT INTO "public"."transaction_items" VALUES (21102, 19287, 1140, 2, 15300.00);
INSERT INTO "public"."transaction_items" VALUES (21103, 19287, 1282, 4, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21104, 19287, 1446, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21105, 19287, 3110, 1, 13000.00);
INSERT INTO "public"."transaction_items" VALUES (21106, 19287, 3269, 3, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21107, 19287, 3274, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (21108, 19287, 3330, 1, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (21109, 19287, 3681, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21110, 19287, 3682, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21111, 19287, 3683, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21112, 19287, 3684, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21113, 19287, 3751, 2, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (21114, 19287, 3985, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21115, 19287, 3985, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21116, 19287, 4152, 1, 26000.00);
INSERT INTO "public"."transaction_items" VALUES (21117, 19287, 5949, 2, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21118, 19287, 5982, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21119, 19287, 5986, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21120, 19287, 5987, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21121, 19287, 5988, 2, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21122, 19287, 5990, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (21123, 19285, 926, 10, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21124, 19285, 1247, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21125, 19285, 1247, 49, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21126, 19285, 1292, 3, 32900.00);
INSERT INTO "public"."transaction_items" VALUES (21127, 19283, 921, 1, 20600.00);
INSERT INTO "public"."transaction_items" VALUES (21128, 19283, 921, 2, 20600.00);
INSERT INTO "public"."transaction_items" VALUES (21129, 19283, 923, 2, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21130, 19283, 1276, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (21131, 19283, 1282, 1, 12600.00);
INSERT INTO "public"."transaction_items" VALUES (21132, 19283, 1296, 1, 6900.00);
INSERT INTO "public"."transaction_items" VALUES (21133, 19283, 1399, 1, 40200.00);
INSERT INTO "public"."transaction_items" VALUES (21134, 19283, 1449, 1, 15800.00);
INSERT INTO "public"."transaction_items" VALUES (21135, 19283, 1706, 3, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21136, 19283, 2151, 1, 27600.00);
INSERT INTO "public"."transaction_items" VALUES (21137, 19283, 2319, 1, 36600.00);
INSERT INTO "public"."transaction_items" VALUES (21138, 19283, 2531, 1, 13600.00);
INSERT INTO "public"."transaction_items" VALUES (21139, 19283, 2674, 2, 21600.00);
INSERT INTO "public"."transaction_items" VALUES (21140, 19283, 3123, 2, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21141, 19283, 3304, 3, 38900.00);
INSERT INTO "public"."transaction_items" VALUES (21142, 19283, 3648, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21143, 19283, 3804, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21144, 19283, 4029, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21145, 19283, 4042, 2, 55400.00);
INSERT INTO "public"."transaction_items" VALUES (21146, 19283, 4229, 2, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (21147, 19283, 4425, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21148, 19283, 4432, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21149, 19283, 4464, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21150, 19283, 4479, 2, 20500.00);
INSERT INTO "public"."transaction_items" VALUES (21151, 19283, 4810, 1, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (21152, 19283, 5008, 2, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (21153, 19283, 5243, 1, 17800.00);
INSERT INTO "public"."transaction_items" VALUES (21154, 19283, 5334, 1, 152800.00);
INSERT INTO "public"."transaction_items" VALUES (21155, 19283, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21156, 19283, 5524, 1, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21157, 19283, 5524, 2, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21158, 19283, 5775, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (21159, 19283, 5779, 1, 5500.00);
INSERT INTO "public"."transaction_items" VALUES (21160, 19283, 5826, 2, 2200.00);
INSERT INTO "public"."transaction_items" VALUES (21161, 19283, 5849, 1, 21500.00);
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
INSERT INTO "public"."transaction_items" VALUES (21186, 19279, 3758, 1, 40000.00);
INSERT INTO "public"."transaction_items" VALUES (21187, 19279, 3939, 1, 23000.00);
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
INSERT INTO "public"."transaction_items" VALUES (21208, 19277, 966, 1, 89900.00);
INSERT INTO "public"."transaction_items" VALUES (21209, 19277, 973, 1, 95600.00);
INSERT INTO "public"."transaction_items" VALUES (21210, 19277, 1410, 1, 26800.00);
INSERT INTO "public"."transaction_items" VALUES (21211, 19277, 1411, 1, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (21212, 19277, 3013, 1, 45000.00);
INSERT INTO "public"."transaction_items" VALUES (21213, 19277, 4776, 1, 20000.00);
INSERT INTO "public"."transaction_items" VALUES (21214, 19275, 3699, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21215, 19275, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21216, 19275, 6190, 6, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21217, 19273, 950, 1, 12900.00);
INSERT INTO "public"."transaction_items" VALUES (21218, 19273, 956, 1, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (21219, 19273, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21220, 19273, 2158, 1, 19800.00);
INSERT INTO "public"."transaction_items" VALUES (21221, 19273, 3191, 1, 58000.00);
INSERT INTO "public"."transaction_items" VALUES (21222, 19273, 3319, 1, 13600.00);
INSERT INTO "public"."transaction_items" VALUES (21223, 19273, 3352, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21224, 19273, 4124, 1, 27800.00);
INSERT INTO "public"."transaction_items" VALUES (21225, 19273, 5054, 1, 5200.00);
INSERT INTO "public"."transaction_items" VALUES (21226, 19273, 5773, 1, 38800.00);
INSERT INTO "public"."transaction_items" VALUES (21227, 19273, 5784, 1, 14500.00);
INSERT INTO "public"."transaction_items" VALUES (21228, 19273, 6062, 1, 35000.00);
INSERT INTO "public"."transaction_items" VALUES (21229, 19272, 922, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (21230, 19272, 923, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21231, 19272, 926, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21232, 19272, 1140, 1, 15300.00);
INSERT INTO "public"."transaction_items" VALUES (21233, 19272, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21234, 19272, 4400, 1, 19900.00);
INSERT INTO "public"."transaction_items" VALUES (21235, 19272, 5061, 4, 3200.00);
INSERT INTO "public"."transaction_items" VALUES (21236, 19272, 5061, 2, 3200.00);
INSERT INTO "public"."transaction_items" VALUES (21237, 19272, 5337, 2, 42000.00);
INSERT INTO "public"."transaction_items" VALUES (21238, 19272, 5374, 2, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21239, 19272, 5375, 1, 33300.00);
INSERT INTO "public"."transaction_items" VALUES (21240, 19272, 5441, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21241, 19272, 5763, 1, 25500.00);
INSERT INTO "public"."transaction_items" VALUES (21242, 19272, 5809, 1, 33300.00);
INSERT INTO "public"."transaction_items" VALUES (21243, 19271, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21244, 19271, 3321, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21245, 19271, 5306, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21246, 19271, 5458, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21247, 19263, 1095, 1, 3500.00);
INSERT INTO "public"."transaction_items" VALUES (21248, 19263, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21249, 19263, 5646, 1, 9200.00);
INSERT INTO "public"."transaction_items" VALUES (21250, 19261, 356, 2, 1010.00);
INSERT INTO "public"."transaction_items" VALUES (21251, 19261, 1354, 1, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (21252, 19261, 1357, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21253, 19261, 3737, 1, 19500.00);
INSERT INTO "public"."transaction_items" VALUES (21254, 19261, 4221, 3, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21255, 19261, 4554, 1, 45000.00);
INSERT INTO "public"."transaction_items" VALUES (21256, 19261, 4790, 1, 6800.00);
INSERT INTO "public"."transaction_items" VALUES (21257, 19261, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21258, 19261, 5536, 2, 7000.00);
INSERT INTO "public"."transaction_items" VALUES (21259, 19261, 5596, 1, 36800.00);
INSERT INTO "public"."transaction_items" VALUES (21260, 19261, 5979, 3, 2000.00);
INSERT INTO "public"."transaction_items" VALUES (21261, 19259, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21262, 19259, 2524, 0, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21263, 19259, 5743, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21264, 19258, 2528, 1, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21265, 19258, 4425, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21266, 19258, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21267, 19258, 6196, 1, 125000.00);
INSERT INTO "public"."transaction_items" VALUES (21268, 19257, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21269, 19257, 4465, 5, 3000.00);
INSERT INTO "public"."transaction_items" VALUES (21270, 19257, 5965, 1, 10200.00);
INSERT INTO "public"."transaction_items" VALUES (21271, 19256, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21272, 19256, 1680, 1, 6500.00);
INSERT INTO "public"."transaction_items" VALUES (21273, 19256, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21274, 19256, 4428, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21275, 19255, 907, 1, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (21276, 19255, 4182, 2, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21277, 19255, 4221, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21278, 19255, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21279, 19255, 4563, 1, 54800.00);
INSERT INTO "public"."transaction_items" VALUES (21280, 19255, 5028, 1, 24900.00);
INSERT INTO "public"."transaction_items" VALUES (21281, 19255, 5458, 2, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21282, 19255, 5620, 1, 90000.00);
INSERT INTO "public"."transaction_items" VALUES (21283, 19255, 6180, 1, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21284, 19254, 1234, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21285, 19254, 3321, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21286, 19254, 5458, 0, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21287, 19252, 1309, 1, 19800.00);
INSERT INTO "public"."transaction_items" VALUES (21288, 19252, 2579, 1, 16800.00);
INSERT INTO "public"."transaction_items" VALUES (21289, 19252, 2582, 1, 25900.00);
INSERT INTO "public"."transaction_items" VALUES (21290, 19252, 4819, 3, 28800.00);
INSERT INTO "public"."transaction_items" VALUES (21291, 19252, 5103, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21292, 19252, 5120, 1, 45900.00);
INSERT INTO "public"."transaction_items" VALUES (21293, 19252, 5121, 1, 45900.00);
INSERT INTO "public"."transaction_items" VALUES (21294, 19252, 5667, 1, 9400.00);
INSERT INTO "public"."transaction_items" VALUES (21295, 19252, 5677, 1, 16500.00);
INSERT INTO "public"."transaction_items" VALUES (21296, 19251, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21297, 19251, 3321, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21298, 19251, 3634, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21299, 19250, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21300, 19250, 4132, 1, 145000.00);
INSERT INTO "public"."transaction_items" VALUES (21301, 19250, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21302, 19250, 4706, 1, 126600.00);
INSERT INTO "public"."transaction_items" VALUES (21303, 19249, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21304, 19249, 1257, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21305, 19249, 5458, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21306, 19248, 956, 2, 18800.00);
INSERT INTO "public"."transaction_items" VALUES (21307, 19248, 3192, 1, 135000.00);
INSERT INTO "public"."transaction_items" VALUES (21308, 19248, 5058, 4, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21309, 19244, 1198, 1, 6300.00);
INSERT INTO "public"."transaction_items" VALUES (21310, 19244, 1198, 1, 6300.00);
INSERT INTO "public"."transaction_items" VALUES (21311, 19244, 1371, 1, 11800.00);
INSERT INTO "public"."transaction_items" VALUES (21312, 19244, 1433, 2, 10500.00);
INSERT INTO "public"."transaction_items" VALUES (21313, 19244, 1434, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21314, 19244, 1768, 1, 33500.00);
INSERT INTO "public"."transaction_items" VALUES (21315, 19244, 1981, 2, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (21316, 19244, 1998, 3, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (21317, 19244, 2164, 2, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (21318, 19244, 2323, 1, 39600.00);
INSERT INTO "public"."transaction_items" VALUES (21319, 19244, 3373, 1, 6400.00);
INSERT INTO "public"."transaction_items" VALUES (21320, 19244, 4027, 2, 6200.00);
INSERT INTO "public"."transaction_items" VALUES (21321, 19244, 4257, 1, 22600.00);
INSERT INTO "public"."transaction_items" VALUES (21322, 19244, 4314, 1, 7200.00);
INSERT INTO "public"."transaction_items" VALUES (21323, 19244, 4382, 1, 5800.00);
INSERT INTO "public"."transaction_items" VALUES (21324, 19244, 6072, 1, 7300.00);
INSERT INTO "public"."transaction_items" VALUES (21325, 19244, 6073, 1, 7300.00);
INSERT INTO "public"."transaction_items" VALUES (21326, 19243, 4424, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21327, 19243, 4425, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21328, 19243, 4426, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21329, 19243, 4427, 1, 18500.00);
INSERT INTO "public"."transaction_items" VALUES (21330, 19243, 4429, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21331, 19243, 4430, 1, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21332, 19243, 4431, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21333, 19243, 4432, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21334, 19243, 4464, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21335, 19243, 4501, 3, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21336, 19243, 4620, 3, 15500.00);
INSERT INTO "public"."transaction_items" VALUES (21337, 19243, 4621, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21338, 19243, 4677, 3, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21339, 19243, 4678, 3, 6500.00);
INSERT INTO "public"."transaction_items" VALUES (21340, 19243, 4679, 3, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21341, 19242, 1999, 1, 8000.00);
INSERT INTO "public"."transaction_items" VALUES (21342, 19242, 2063, 1, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (21343, 19242, 2120, 1, 8200.00);
INSERT INTO "public"."transaction_items" VALUES (21344, 19242, 2168, 2, 19600.00);
INSERT INTO "public"."transaction_items" VALUES (21345, 19242, 2304, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21346, 19242, 2427, 1, 7500.00);
INSERT INTO "public"."transaction_items" VALUES (21347, 19242, 2525, 1, 17800.00);
INSERT INTO "public"."transaction_items" VALUES (21348, 19242, 5374, 1, 16000.00);
INSERT INTO "public"."transaction_items" VALUES (21349, 19242, 5480, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21350, 19242, 5482, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21351, 19242, 5525, 2, 3200.00);
INSERT INTO "public"."transaction_items" VALUES (21352, 19242, 5539, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21353, 19242, 6167, 1, 19000.00);
INSERT INTO "public"."transaction_items" VALUES (21354, 19240, 2228, 1, 28800.00);
INSERT INTO "public"."transaction_items" VALUES (21355, 19240, 4117, 1, 157000.00);
INSERT INTO "public"."transaction_items" VALUES (21356, 19240, 4232, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21357, 19240, 5949, 10, 11000.00);
INSERT INTO "public"."transaction_items" VALUES (21358, 19238, 926, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21359, 19238, 1122, 1, 26500.00);
INSERT INTO "public"."transaction_items" VALUES (21360, 19238, 1234, 1, 10000.00);
INSERT INTO "public"."transaction_items" VALUES (21361, 19238, 1386, 1, 15600.00);
INSERT INTO "public"."transaction_items" VALUES (21362, 19238, 1485, 2, 10200.00);
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
INSERT INTO "public"."transaction_items" VALUES (21400, 19220, 1901, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21401, 19220, 2188, 1, 9800.00);
INSERT INTO "public"."transaction_items" VALUES (21402, 19220, 3131, 1, 8500.00);
INSERT INTO "public"."transaction_items" VALUES (21403, 19220, 3193, 2, 6700.00);
INSERT INTO "public"."transaction_items" VALUES (21404, 19220, 3537, 1, 7000.00);
INSERT INTO "public"."transaction_items" VALUES (21405, 19220, 3560, 1, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (21406, 19220, 3797, 1, 13500.00);
INSERT INTO "public"."transaction_items" VALUES (21407, 19220, 4716, 1, 72800.00);
INSERT INTO "public"."transaction_items" VALUES (21408, 19220, 4935, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21409, 19220, 4993, 1, 30000.00);
INSERT INTO "public"."transaction_items" VALUES (21410, 19220, 5008, 1, 24800.00);
INSERT INTO "public"."transaction_items" VALUES (21411, 19220, 5866, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21412, 19220, 5868, 1, 8800.00);
INSERT INTO "public"."transaction_items" VALUES (21413, 19220, 6030, 1, 38000.00);
INSERT INTO "public"."transaction_items" VALUES (21414, 19220, 6031, 2, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21415, 19220, 6175, 1, 20800.00);
INSERT INTO "public"."transaction_items" VALUES (21416, 19219, 1276, 1, 18000.00);
INSERT INTO "public"."transaction_items" VALUES (21417, 19219, 3559, 1, 65000.00);
INSERT INTO "public"."transaction_items" VALUES (21418, 19219, 4720, 1, 68000.00);
INSERT INTO "public"."transaction_items" VALUES (21419, 19219, 4894, 5, 12000.00);
INSERT INTO "public"."transaction_items" VALUES (21420, 19219, 5058, 1, 22000.00);
INSERT INTO "public"."transaction_items" VALUES (21421, 19219, 5986, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21422, 19219, 5989, 1, 15000.00);
INSERT INTO "public"."transaction_items" VALUES (21423, 19219, 6058, 1, 76000.00);
INSERT INTO "public"."transaction_items" VALUES (21424, 19218, 3549, 1, 7800.00);
INSERT INTO "public"."transaction_items" VALUES (21425, 19218, 3712, 1, 9800.00);
INSERT INTO "public"."transaction_items" VALUES (21426, 19218, 5181, 1, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21427, 19218, 5793, 1, 9500.00);
INSERT INTO "public"."transaction_items" VALUES (21428, 19218, 6165, 1, 6000.00);
INSERT INTO "public"."transaction_items" VALUES (21429, 19214, 3912, 2, 12500.00);
INSERT INTO "public"."transaction_items" VALUES (21430, 19214, 4912, 1, 9000.00);
INSERT INTO "public"."transaction_items" VALUES (21431, 19214, 5565, 1, 14800.00);
INSERT INTO "public"."transaction_items" VALUES (21432, 19214, 5634, 2, 5000.00);
INSERT INTO "public"."transaction_items" VALUES (21433, 19214, 6050, 1, 23000.00);
INSERT INTO "public"."transaction_items" VALUES (21434, 19214, 6189, 1, 23000.00);

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
