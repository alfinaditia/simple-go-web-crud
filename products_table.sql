	CREATE TABLE `products` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `name` varchar(100) NOT NULL,
 `category_id` int(11) NOT NULL,
 `stock` int(11) NOT NULL,
 `description` text DEFAULT NULL,
 `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
 `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci