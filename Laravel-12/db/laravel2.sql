-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2025 at 08:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'impedit', '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(2, 'ex', '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(3, 'veniam', '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(4, 'perspiciatis', '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(5, 'provident', '2025-11-23 02:47:35', '2025-11-23 02:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_02_155904_create_categories_table', 1),
(5, '2025_03_03_123459_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Aliquid non impedit sed est tempore hic voluptates.', 'Ad doloremque exercitationem voluptas illo laborum alias dolorem. Et provident a hic doloremque minima. Facilis minima reprehenderit quibusdam consequatur dignissimos nulla quas est. Ex est soluta tempore et harum porro doloremque.\n\nAliquam nisi aut delectus quisquam voluptatem rerum. Officia autem delectus ut qui nam. Excepturi et itaque beatae impedit quisquam. Delectus velit blanditiis dolor sunt aut officia veniam voluptatem.\n\nSed consequatur fugit aut et quo. Corrupti reprehenderit iusto atque voluptatibus nam quae et. Odio quia voluptatem ut est.', 1, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(2, 'Explicabo eligendi debitis dolorem.', 'Velit molestiae rerum libero est labore optio ducimus. Doloribus est quod molestiae et consequuntur in. Ut eligendi eaque qui quasi.\n\nAperiam veritatis autem tempore tempora sit. Eum ullam sed et quia fugiat. Autem exercitationem cupiditate dolores tempora ipsa et. Totam velit natus culpa ullam repellat tempora sint.\n\nAlias ipsa unde rerum ab sapiente hic. Odio deleniti voluptatem quisquam beatae nemo. Vero quaerat corrupti vel voluptate est porro.', 1, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(3, 'Ducimus quam aliquam mollitia consequatur doloribus et molestias eos.', 'Labore quaerat ullam consequatur. Autem amet corrupti accusantium et eligendi. Sit aperiam modi dolores sit. Sed qui est non et. Culpa magnam sit officiis repellendus nulla.\n\nLaboriosam adipisci iusto architecto rerum quia nemo. Optio nisi id sed fugit id est autem. Inventore veritatis reprehenderit nam rerum voluptatum.\n\nIure cum aut corporis eum voluptatem id hic. Repellat officia quia est debitis eos alias deserunt. Enim quia laudantium commodi recusandae provident.', 1, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(4, 'At eligendi quo optio ea sed error harum eligendi.', 'Ea maxime est qui dolore dolore eos voluptas. Qui accusantium labore facere minus eos porro necessitatibus ut. Ut fuga nihil ut rem rerum.\n\nEx placeat eum quis sed qui. Adipisci et voluptatem rem possimus. Maiores quod nihil eos officiis aperiam repudiandae aut.\n\nRerum sint voluptas quae sequi velit quo. Ut fugit quia et et expedita doloribus ut. Consequuntur rem minima vel qui asperiores libero vel. Iure eligendi modi sequi.', 2, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(5, 'Sit dignissimos est sunt perspiciatis voluptatum cum veniam.', 'Doloribus voluptates maiores ut adipisci qui ut dignissimos. Placeat id id ad reprehenderit aperiam corrupti. Occaecati porro facilis quis. Nostrum eum sit omnis ullam et maiores. Aliquid at praesentium assumenda tempora sint earum velit.\n\nDolores ad sed nam aliquam consequuntur. Illum vel rerum et amet iure. Amet eos ab consequatur et nihil.\n\nEarum et qui rerum occaecati blanditiis. Et minus aliquid laborum enim aut ea quis. Nihil itaque sit similique voluptatum accusantium alias quibusdam. Et perspiciatis ipsam omnis adipisci magnam qui.', 2, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(6, 'Et quam qui et aut deleniti.', 'Qui culpa expedita dicta ut earum. Hic commodi blanditiis asperiores. Commodi ducimus ex sit. Sunt quia tempore ipsam quia.\n\nCupiditate reiciendis sunt occaecati sed. Est dolorem dolore qui dicta amet labore aut. Consequatur aut officia facilis deleniti blanditiis dicta qui.\n\nAliquid aspernatur alias quae et non. Doloremque aut cum dolores aliquam culpa et omnis quas. Sed quos commodi earum. Debitis a eveniet alias.', 2, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(7, 'Eaque consequatur fugiat ratione eveniet et perspiciatis.', 'Vel omnis itaque neque nisi. Consequatur eveniet magnam sunt voluptate harum. Vel et harum dolores necessitatibus omnis est asperiores sunt. Et repellat ut vel officia corporis.\n\nAlias sapiente veritatis non reiciendis ut aut voluptatum. Voluptas praesentium numquam sed quis adipisci veritatis at.\n\nEa autem dicta qui accusamus. Dignissimos eos ea sint sit possimus maxime. Expedita cupiditate nobis repudiandae consequuntur beatae velit.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(8, 'Voluptatibus eligendi ad aut ullam.', 'In officia veritatis repudiandae. Quae fugit illo est vitae quo animi. Beatae et quis aut cupiditate voluptas.\n\nFacilis soluta maxime dicta ab consequatur illo ab. Assumenda doloribus iste possimus excepturi iusto quo facilis. Omnis pariatur commodi voluptas nihil et repellat consequatur sed.\n\nDolorem quidem animi facere. Maxime ratione accusantium molestiae dolorem quos architecto eos. Quisquam perferendis maxime corrupti tempora.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(9, 'Tenetur ut a deleniti earum impedit voluptas.', 'Sit aperiam ullam nobis ea omnis dolores et. Porro adipisci inventore animi repudiandae architecto aspernatur. Facilis nisi id nam aut adipisci deserunt.\n\nEt maxime dolor optio enim perferendis dicta. Laudantium hic illum maiores tempore. Molestiae aliquam quasi et dolorum.\n\nAutem quia cumque quam aliquid. Repellendus amet eos laborum magni delectus molestiae veritatis aut.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(10, 'Asperiores qui provident ipsum perspiciatis.', 'Praesentium atque ut reiciendis iste natus debitis. Voluptatum doloremque incidunt saepe et libero non sed. Est iusto repudiandae est. Reiciendis nostrum ipsam ea omnis culpa modi. Laborum aut dolorum cum vel sit perferendis.\n\nUt maxime aut repellat ea dolores. Est minus rem accusamus repudiandae accusantium rerum atque minima. Numquam et sit odit alias recusandae. Consequatur voluptate enim consequatur quia sit ut qui.\n\nDolorum quo nihil optio quam magni laudantium. Quis at soluta voluptas saepe et et. Animi alias perferendis ea corrupti quia. Cum porro nisi animi culpa velit accusamus et repellat.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(11, 'Qui deleniti fugiat modi sapiente velit.', 'Labore placeat totam praesentium similique error quisquam aut. Dicta sunt tenetur eligendi placeat. Quia modi dolorum qui aut porro.\n\nLaborum et eum totam officia modi. Consequuntur impedit accusantium enim id et earum. Perferendis dolores porro similique quia. Doloribus iusto aliquam quod et architecto similique.\n\nPerferendis non illum animi quidem provident iusto aliquam. Sit et labore aperiam vero sunt dignissimos. Quis id sapiente est tenetur.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(12, 'Modi optio saepe veniam molestiae sunt corporis.', 'Qui provident in et et explicabo illum impedit. Cupiditate sed et est ut qui odio illo eaque. Fuga aut quas rem praesentium voluptatem laboriosam velit.\n\nEst reprehenderit et dignissimos sit aliquid excepturi esse. Officiis voluptate laboriosam ducimus dolorum. Fuga aut enim omnis expedita. Rerum quaerat laudantium iusto illo corporis et.\n\nMinima ex dolores maiores porro. Nemo voluptates nisi saepe veritatis assumenda. Et consectetur perspiciatis soluta ut. Quas unde adipisci ut corrupti qui.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(13, 'Laborum excepturi tenetur necessitatibus est.', 'Iste consequatur quaerat nam et quibusdam sunt. Facere veniam odio alias in sit dolores. Eum facilis sed voluptas tempora nihil.\n\nVel consequatur accusantium id quia. Assumenda ut fugiat explicabo libero porro necessitatibus modi et. Veniam recusandae quaerat voluptates ut voluptates aperiam.\n\nPariatur illo velit eius quo. Dolor reprehenderit et blanditiis illum. Pariatur eos non laboriosam officia. Voluptatem eveniet sapiente dolorem est eligendi qui.', 3, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(14, 'Sed eaque voluptatem quia libero dolores.', 'Dolores quia omnis pariatur. Ut non exercitationem neque at minima voluptatem est. Dolore odio laborum atque tenetur dolores.\n\nEius quibusdam sint id est. Consectetur accusamus delectus recusandae ut explicabo sunt aut beatae. Quo sed expedita in qui ipsam ea odio. Dolores ea atque excepturi et.\n\nVoluptatibus in aut qui quaerat non voluptates iste. Nihil consequatur maiores quo deleniti quod. Sapiente eum dolorem modi. Quis atque dolor autem voluptas qui nisi.', 4, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(15, 'Sunt doloribus tempora qui corporis.', 'Error quia necessitatibus nam nobis. Facere eum praesentium assumenda rerum consequatur. Voluptas quia autem aliquid quod maxime.\n\nQuibusdam fugiat optio enim asperiores quos ipsam. Aperiam ullam et exercitationem ad atque et. Eum repellendus sit consequatur in.\n\nDoloremque dolores maiores eos error. Mollitia tempore deleniti saepe ad facere eum. Consequatur et ut dignissimos. Ipsam minus quia corrupti magnam labore expedita possimus consequatur. Sequi impedit similique praesentium perspiciatis autem quia enim dolor.', 4, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(16, 'Est quo recusandae rerum.', 'Deleniti quod quia accusamus beatae nesciunt maiores. Repellat temporibus explicabo molestiae repellendus molestiae. Quam explicabo et consequatur aspernatur voluptatum.\n\nConsequatur sed et similique labore tenetur in. Porro est dolorem nemo aut vel et. Modi ullam deleniti delectus quia consectetur dolor et quaerat. Ea consequatur rerum sit est qui.\n\nIpsa aut modi est culpa laborum ratione. Vel blanditiis consectetur ea minima eum voluptatem recusandae. Voluptatem repudiandae officia occaecati at.', 4, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(17, 'Magnam iure quia quam velit error sequi modi.', 'Dolorem in rerum nesciunt sit. Repellendus voluptas aut quod voluptatem unde. Iste autem et fuga voluptatem.\n\nReiciendis in expedita placeat impedit nobis corporis. Nostrum sed dolor dolor hic labore accusamus. Optio omnis provident dicta. Animi et consequatur neque unde voluptas quisquam. Sit sed suscipit dolorem et quaerat ea.\n\nDebitis qui dolorem similique vel mollitia et velit cumque. Animi et asperiores tempore iure harum modi sapiente. Aut dignissimos soluta rerum deleniti laborum voluptatem quisquam. Consequatur culpa reprehenderit omnis quis illo enim in enim.', 4, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(18, 'Veritatis harum dolor eius necessitatibus dolorum quibusdam aliquid.', 'Vel iusto et ducimus eos ex. Dolore qui doloremque eius aperiam debitis et eaque. Sunt saepe ex non est expedita cumque neque.\n\nEt perferendis nihil ipsa quis reprehenderit praesentium dolor temporibus. Similique inventore perferendis non non corrupti. Ipsam quos sapiente error cupiditate vero quos quo.\n\nNumquam inventore explicabo eaque sunt. Exercitationem reiciendis est consequatur dolor. Optio ut ipsa quis est dolor quis id placeat. Velit velit nemo mollitia ut ut.', 4, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(19, 'Repudiandae natus rem vitae ducimus.', 'Quo ex quaerat officia et occaecati. Dolores beatae sit sed enim. Aut dolores quos nam unde iusto quam libero.\n\nSunt voluptas voluptatem eligendi nobis harum ut deserunt sunt. Aspernatur et sunt hic qui sequi error. Nihil est dolores eius dolor fuga ut rerum.\n\nItaque rerum dicta qui dolorum. Voluptatem rerum molestias est eaque impedit occaecati. Totam rerum dolor assumenda rem iste. Aut ut autem aliquam necessitatibus fugit.', 5, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(20, 'Est consequatur sit exercitationem qui repellendus qui.', 'Voluptatum voluptas voluptatem qui accusamus nemo beatae. Earum delectus id blanditiis commodi libero nemo repellat. Voluptatem impedit incidunt sed occaecati id. Quod occaecati soluta veritatis.\n\nExplicabo ut voluptates facilis magni aspernatur qui. Cumque adipisci reprehenderit sit ratione illum iure fugiat fugit. Eum et porro minus reprehenderit repudiandae. Nisi consequatur omnis ratione velit itaque.\n\nLabore exercitationem nam sunt quos cum qui. Minus qui quam in dignissimos minus temporibus expedita assumenda. Sequi consequuntur expedita reiciendis ratione quia et.', 5, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(21, 'Ab omnis itaque ducimus officiis ut aspernatur.', 'Consequatur in voluptates nobis laboriosam quo voluptatem. Dicta fuga modi unde inventore omnis sunt nam. Porro quo ab sequi sunt expedita.\n\nEarum totam quaerat doloribus fugiat. Est placeat et velit veritatis maiores id. Libero architecto rerum necessitatibus modi.\n\nVelit ut sit quo aut ut nemo est modi. Aut velit inventore ea repellat illo excepturi. Sit quos expedita pariatur eaque quis maiores. Illo et culpa sit ex.', 5, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(22, 'Distinctio possimus beatae et ut ut et voluptate saepe.', 'Quisquam sint occaecati asperiores. A minus repudiandae quam odit non.\n\nConsequatur at aspernatur a maiores eaque et. Ut quo assumenda reprehenderit ut assumenda. Magnam dolor est delectus dolore ipsa unde. Autem perferendis sit excepturi ipsam ad necessitatibus quasi.\n\nDolor reprehenderit ducimus minima velit aut perspiciatis voluptas. Aut vero eum repellendus assumenda distinctio atque reiciendis. Recusandae temporibus eveniet nostrum nulla omnis et dolor. Voluptate eum consequatur est ab et.', 5, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(23, 'Veniam sed dolorum repellat eos optio veritatis.', 'Esse eaque repellat quisquam et dolorem. Soluta eos esse aperiam adipisci esse modi perferendis. Repellendus et non perferendis eligendi eum natus. Labore esse eum qui odio totam similique qui.\n\nAut ea ipsam voluptas est voluptatem ea. Consequatur doloremque dolore adipisci neque ipsam officia harum hic. Impedit autem dolorem consequatur et labore excepturi.\n\nOmnis qui voluptas quasi quod sapiente. Distinctio vitae aut odit. Sed dignissimos tempora non eligendi iste qui.', 5, '2025-11-23 02:47:35', '2025-11-23 02:47:35'),
(24, 'Sed perspiciatis tenetur iure facilis rerum ut ut error.', 'Et recusandae asperiores quo labore similique suscipit omnis ut. Molestias repellendus rerum occaecati omnis molestiae excepturi. Earum quia mollitia vero dicta. Officia impedit qui consequatur. Impedit nemo a et maiores qui.\n\nEveniet debitis fugit est dolorem error cupiditate. Debitis commodi reprehenderit ut est nulla qui sed. Molestiae aliquam qui facere nesciunt hic nam. Ut est sit sit magnam vitae.\n\nSoluta architecto voluptas ipsum cupiditate. Distinctio hic excepturi officiis et sint. Sit ad non ut aut aut assumenda.', 5, '2025-11-23 02:47:35', '2025-11-23 02:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1iYtjdgDWw0Z33SEGFIOMKS3xSA8fogePPOKtwGp', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUV3dDhUdGJkbmdjeGE3M003YlBwOWllQk5wQTRMRzh6YW4wZDB3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvTGFyYXZlbC0xMi1CZWdpbm5lcnMtUHJvamVjdC9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763885890);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
