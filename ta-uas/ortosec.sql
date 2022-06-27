-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2022 pada 02.18
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ortosec`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(1, 'Sweater', 'sweater'),
(2, 'Kaos', 'kaos'),
(3, 'Celana', 'celana'),
(4, 'Sepatu', 'sepatu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `drivers`
--

CREATE TABLE `drivers` (
  `id_driver` int(11) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `no_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `drivers`
--

INSERT INTO `drivers` (`id_driver`, `name_driver`, `email`, `password`, `phone_number`, `jurusan`, `no_pegawai`) VALUES
(3, 'faiz', 'faiz@gmail.com', 'faiz123', '08512154', 'SEMARANG', 2147483647),
(4, 'katon', 'katon@gmail.com', '123', '4', 'DEPOK', 3),
(6, 'aji', 'aji@gmail.com', '$2y$10$5zBqUabLTYJ8V7TLOkuJqemwGnEpWCQGhNrw1mr9a42wvH25x6h0m', '3949839483', 'DEPOK', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(1, 'Sweater Adidas', 1000, '120000', '<p>Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '600'),
(2, 'Jeans', 1000, '80000', '<p>Jeans&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '3000'),
(3, 'Kaos', 1000, '110000', '<p>Kaos original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '0'),
(4, 'Sepatu', 1000, '200000', '<p>Sepatu original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '11200'),
(13, 'Kaos Givency', 1000, '110000', '<p>Kaos Givency&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '455'),
(14, 'Kaos Puma', 1000, '100000', '<p>Kaos Puma&nbsp;&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '134'),
(15, 'Kaos A', 1000, '80000', '<p>Kaos Puma&nbsp;&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '134'),
(16, 'Kaos Armani', 1000, '70000', '<p>Kaos Armani&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '426'),
(17, 'Kaos Mochino', 1000, '90000', '<p>Kaos Mochino&nbsp;&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '357'),
(18, 'Kaos Superman', 1000, '60000', '<p>Kaos Superman&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '893'),
(19, 'Kaos Givency', 1000, '120000', '<p>Kaos Givency&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 2, '656'),
(20, 'Sepatu Oblong', 1000, '150000', '<p>Sepatu Oblong&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '242'),
(21, 'Sepatu Convers', 1000, '250000', '<p>Sepatu Convers&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '134'),
(22, 'Sepatu Adidas', 1000, '350000', '<p>Sepatu Adidas&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '132'),
(23, 'Sepatu EA7', 1000, '180000', '<p>Sepatu EA7&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '234'),
(24, 'Sepatu Caterpillar', 1000, '210000', '<p>Sepatu Caterpillar&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '4352'),
(25, 'Sepatu Convers Merah', 1000, '350000', '<p>Sepatu Convers Merah&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 4, '235'),
(26, 'Celana Jean A', 1000, '290000', '<p>Celana Jean A&nbsp;original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '564756'),
(27, 'Celana Jean Bolong', 1000, '140000', '<p>Celana Jean Bolong&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '1353'),
(28, 'Celana Jean B', 1000, '130000', '<p>Celana Jean B&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '1351'),
(29, 'Celana Jean C', 1000, '110000', '<p>Celana Jean C&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '1342'),
(30, 'Celana Jean D', 1000, '90000', '<p>Celana Jean D&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 3, '12412'),
(31, 'Sweater NG', 1000, '135000', '<p>Sweater NG&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '1314'),
(32, 'Sweater Dick Ies', 1000, '110000', '<p>Sweater Dick Ies&nbsp;Sweater Adida original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '325'),
(33, 'Sweater NB', 1000, '120000', '<p>Sweater NB&nbsp;Sweater original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '1341'),
(34, 'Sweater Batik', 1000, '110000', '<p>Sweater Batik&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '1241'),
(35, 'Sweater Outstanding', 1000, '150000', '<p>Sweater Outstanding&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '2352'),
(36, 'SweaterD Dick Ies B', 1000, '140000', '<p>SweaterD Dick Ies B&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '1341'),
(37, 'Sweater SC', 1000, '135000', '<p>Sweater SC&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '4112'),
(38, 'Sweater Adddas', 1000, '155000', '<p>Sweater Adddas&nbsp;Original, dengan bahan yang super halus dan nyaman untuk dipakai</p>\r\n', 1, '2352');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, '62b8ada1853dc.png', 1),
(12, '6002cf749cccf.jpg', 7),
(22, '600ebf6d45187.jpg', 7),
(23, '600ebf80c735f.png', 7),
(33, '62b8ba976b696.png', 13),
(34, '62b8bacad3904.png', 14),
(35, '62b8bae596694.png', 15),
(36, '62b8baf64b962.png', 16),
(37, '62b8bb263a812.png', 17),
(38, '62b8bb3926e8a.png', 18),
(39, '62b8bb53d50d0.png', 19),
(40, '62b8bb7d865c8.png', 20),
(41, '62b8bb8c6b4d0.png', 21),
(42, '62b8bba70ae63.png', 22),
(43, '62b8bbc067935.png', 23),
(44, '62b8bbe32fefc.png', 24),
(45, '62b8bbf8d8c46.png', 25),
(46, '62b8bc47b6dd4.png', 26),
(47, '62b8bc5720590.png', 27),
(48, '62b8bc6a94712.png', 28),
(49, '62b8bd3609d64.png', 29),
(50, '62b8be004bc6c.png', 30),
(51, '62b8be2897dbd.png', 31),
(52, '62b8be37cc665.png', 32),
(53, '62b8be4a78822.png', 33),
(54, '62b8be6d65667.png', 34),
(55, '62b8be7cab2d0.png', 35),
(56, '62b8be9764a50.png', 36),
(57, '62b8beba1c609.png', 37),
(58, '62b8bec8318ce.png', 38),
(59, '62b8c8667a729.png', 2),
(60, '62b8c874da36b.png', 3),
(61, '62b8c88ad62b5.png', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'BCA', '0989878998787', 'Muhammad Iqbal Subagio'),
(2, 'Mandiri', '076543212123', 'Fatkha Kuncoro Aji'),
(3, 'Syariah', '09999977656', 'Katon Pratomo'),
(5, 'Paylater', '23798878', 'Faiz jon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(1, 3, 260000, 'JAKARTA', 3, 'TERKIRIM', 4000, 0, '600d9b95c0711.jpg', 'EZM-57924', '', NULL, '2021-01-24 16:08:32'),
(2, 6, 200000, 'JAKARTA', 1, 'TERKIRIM', 4000, 0, '600d9c6b4e0d8.jpg', 'EZM-9366', '', NULL, '2021-01-24 16:12:13'),
(3, 9, 560000, 'JAKARTA', 1, 'KONFIRMASI', 3000, 0, '600e62cb73e61.png', 'EZM-86335', '', NULL, '2021-01-25 06:17:49'),
(4, 6, 100000, 'JAKARTA', 2, 'KONFIRMASI', 1000, 0, '600eba552a23c.png', 'EZM-81471', '', NULL, '2021-01-25 12:31:43'),
(5, 3, 218000, 'JAKARTA', 2, 'BELUM KONFIRMASI', 6000, 0, '6010cc60e12da.png', 'EZM-51571', '', NULL, '2021-01-25 13:06:50'),
(6, 9, 370000, 'JAKARTA', 1, 'TERKIRIM', 10000, 1, '6010ce5c5fc7f.png', 'EZM-98816', 'Mumun', '2021-01-27 05:26:45', '2021-01-27 02:21:26'),
(7, 14, 120000, 'TANGERANG', 5, 'TERKIRIM', 1000, 0, '62b8decd6d96a.jpg', 'EZM-10471', 'kontrakan', '2022-06-26 22:36:20', '2022-06-26 22:29:52'),
(8, 14, 200000, 'DEPOK', 1, 'TERKIRIM', 1000, 0, '62b8e1b73497c.png', 'EZM-669', 'kontrakan', '2022-06-26 22:49:26', '2022-06-26 22:45:46'),
(9, 14, 80000, 'DEPOK', 1, 'TERKIRIM', 1000, 0, '62b8e2f6dffee.jpg', 'EZM-25919', 'aji', '2022-06-26 22:54:27', '2022-06-26 22:51:15'),
(10, 13, 30000, 'JAKARTA', 1, 'TERKONFIRMASI', 1000, 0, '62b8e63de35a5.jpg', 'EZM-79048', '', NULL, '2022-06-26 23:05:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(1, 1, 1, 50000, 2, 'PRD-12943'),
(2, 1, 2, 80000, 2, 'PRD-12943'),
(3, 2, 1, 50000, 2, 'PRD-13113'),
(4, 2, 1, 50000, 2, 'PRD-13113'),
(5, 3, 2, 80000, 2, 'PRD-40981'),
(6, 3, 6, 400000, 1, 'PRD-40981'),
(7, 4, 3, 100000, 1, 'PRD-60879'),
(8, 5, 5, 20000, 2, 'PRD-71011'),
(9, 5, 10, 75000, 2, 'PRD-71011'),
(10, 5, 12, 14000, 2, 'PRD-71011'),
(11, 6, 4, 36000, 5, 'PRD-94186'),
(12, 6, 1, 30000, 1, 'PRD-94186'),
(13, 6, 2, 40000, 4, 'PRD-94186'),
(14, 7, 1, 120000, 1, 'PRD-39116'),
(15, 8, 4, 200000, 1, 'PRD-75635'),
(16, 9, 2, 80000, 1, 'PRD-36698'),
(17, 10, 1, 120000, 1, 'PRD-81050');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(1, 'Hafizh Maulana Y', 'hafizhmy26@gmail.com', '$2y$10$/v28V4a4hxcdc3KtkVc8huoop7Ir2NKDk2zA2DDFO9O0u7o9xG7Lq', '<p>Jln Gang Hamzah No 22</p>\r\n', '098987898765', '11111111', 'ADMIN'),
(10, 'Muhammad Iqbal Subagio', 'athar@gmail.com', '$2y$10$LGiCeFBz8fFfOTkL8hMJxO1P6e6qq2aW3Vcc2jcc0SbdGHrVPnXX.', '<p>Jln H sanusi Gang Hamzah No 28</p>\r\n', '098777776668', '12345', 'OWNER'),
(11, 'admin123', 'admin123@gmail.com', '$2y$10$B8sCWiTy0FGPO/v2x7ctjeIF2K9H1kiIvcFzm9fs/F2cgIYEgheeC', '', '098765414', '', 'ADMIN'),
(12, 'iqbal', 'iqgal@gmail.com', '$2y$10$4Xnj3nBmrk0xhrj07FhFNeSFcym.8axfyiRjpGAy1QA7f6G4rLlDC', '', '0895465852', '', 'USER'),
(13, 'aji', 'aji123@gmail.com', '$2y$10$R7wPu9M015iYUFrcL5WubOX8jv5BuPsRWiMDh1tBKO7/fC5DGU1PO', '<p>apapun yang terjadi</p>\r\n', '8454654654654', '456', 'USER'),
(14, 'kontrakan', 'kontrakan@gmail.com', '$2y$10$vSdaxJZ6CGn9FDus6abJLuOFwG5K7PhNfLh/UoryQyAB628.r5h.u', '<p>jalan jalan bos</p>\r\n', '08526549364', '54215', 'USER'),
(15, 'biyu', 'biyu@gmail.com', '$2y$10$dY9PEddekp31dzqR750V/.GcM2/OJk7.nQflD3hCjUfNzeQ2q0huW', NULL, '0329536', '', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id_driver`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
