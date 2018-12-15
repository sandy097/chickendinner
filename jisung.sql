-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2016 at 02:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jisung`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('34e7bd19930ffea6bf82de70579b7a303aa3b199', '::1', 1479081459, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038313336383b6c6f676765645f696e7c623a313b),
('ee5de8d6c61a857f3a1c009d24dc359059080f4a', '::1', 1479081782, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038313736303b6c6f676765645f696e7c623a313b),
('38892c09e07bc6986ce075f4d489e0f03e0cdd09', '::1', 1479082251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038323138313b6c6f676765645f696e7c623a313b),
('c5faa6ec0109e227f339b7c672a4a10880e95b09', '::1', 1479082899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038323635313b6c6f676765645f696e7c623a313b),
('9796880df65914d6745f03073c9755ca441b1ce5', '::1', 1479086584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038363439363b6c6f676765645f696e7c623a313b),
('a9e327bcae00cecb343d5ef8c945cbb5714c1c85', '::1', 1479086805, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393038363830333b6c6f676765645f696e7c623a313b),
('ac0156e215e30b5c6e94b5cb4b2f7ef9657ce06f', '::1', 1479170531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393137303436303b6c6f676765645f696e7c623a313b),
('660608fbe46565be26469c2909262c7d5d8e2520', '::1', 1479171055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393137303830393b6c6f676765645f696e7c623a313b),
('3a23480bf60278d2e088637d19ec934334526018', '::1', 1479352926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393335323835343b6c6f676765645f696e7c623a313b),
('7276097baf620f19b09683462971054ae5864fe0', '::1', 1479353349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393335333136323b6c6f676765645f696e7c623a313b),
('9383c4927fe24550d06269c849642f63aafdc356', '::1', 1479354933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393335343633363b),
('f9f7ab925de6edb260f03cc22eb20cc04b023e60', '::1', 1479354989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393335343934313b),
('b5fd79488e2b37aef435193d8cada0660e413b9e', '::1', 1479790019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393738393939313b6c6f676765645f696e7c623a313b),
('06459ac974251b00f0d543a3ed725e350268c21b', '::1', 1479819088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393831393038383b),
('4cc2b546002200e5fe916005cd4a5fb5767c91db', '::1', 1479820281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393832303233373b),
('d5340884c5362beb70cf7b84f121e2c22e18692a', '::1', 1479820718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393832303538323b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a31373139393939393b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b613a363a7b733a323a226964223b733a313a2231223b733a333a22717479223b643a323b733a353a227072696365223b643a363030303030303b733a343a226e616d65223b733a31343a2253616d73756e6720546162205332223b733a353a22726f776964223b733a33323a226334636134323338613062393233383230646363353039613666373538343962223b733a383a22737562746f74616c223b643a31323030303030303b7d733a33323a226338316537323864396434633266363336663036376638396363313438363263223b613a363a7b733a323a226964223b733a313a2232223b733a333a22717479223b643a313b733a353a227072696365223b643a353139393939393b733a343a226e616d65223b733a31313a224e696b6f6e204433333030223b733a353a22726f776964223b733a33323a226338316537323864396434633266363336663036376638396363313438363263223b733a383a22737562746f74616c223b643a353139393939393b7d7d6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nope` varchar(14) NOT NULL,
  `alamat` text NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `status` enum('paid','unpaid','canceled','expired') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `nama`, `nope`, `alamat`, `date`, `due_date`, `status`) VALUES
(9, 'Fadly', '081213070702', 'pedurenan bekasi', '2016-11-08 16:22:07', '2016-11-09 16:22:07', 'unpaid'),
(10, 'jisung', '081213070702', 'dsfdsfsd', '2016-11-09 01:29:35', '2016-11-10 01:29:35', 'unpaid'),
(11, 'ayu', '081213070702', 'PNJ', '2016-11-09 11:20:23', '2016-11-10 11:20:23', 'unpaid'),
(12, '', '', '', '2016-11-22 14:11:21', '2016-11-23 14:11:21', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(5) NOT NULL,
  `invoice_id` int(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `invoice_id`, `tanggal`, `gambar`) VALUES
(2, 9, '2016-11-12 02:43:41', 'WhatsApp_Image_2016-11-01_at_05_03_431.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `product_id`, `product_name`, `qty`, `price`, `options`) VALUES
(16, 9, 1, 'Samsung Tab S2', 2, 6000000, ''),
(17, 9, 2, 'Nikon D3300', 1, 5199999, ''),
(18, 10, 1, 'Samsung Tab S2', 1, 6000000, ''),
(19, 11, 1, 'Samsung Tab S2', 2, 6000000, ''),
(20, 11, 2, 'Nikon D3300', 1, 5199999, ''),
(21, 12, 1, 'Samsung Tab S2', 1, 6000000, ''),
(22, 12, 2, 'Nikon D3300', 2, 5199999, '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(5) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `dimensi` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(8) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori`, `brand`, `model`, `dimensi`, `keterangan`, `harga`, `gambar`) VALUES
(1, 'Handphone', 'Samsung', 'Tab S2', 'Layar 8.0', '<h5>Features Samsung Tab S2</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer''s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you''re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It''s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm''s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 6000000, 'samsungs22.jpg'),
(2, 'Camera', 'Nikon', 'D3300', '3.0? 921k-Dot LCD Monitor', '<h5>Features Nikon</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer''s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you''re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It''s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm''s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 5199999, 'Nikon-D3300-700x5255.png'),
(3, 'Handphone', 'Lenovo', 'A6000', '141 x 70 x 8.2 mm (5.55 x 2.76 x 0.32 in) ', '<h5>Features Lenovo A6000</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer''s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you''re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It''s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm''s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 1600000, 'samsungs23.jpg'),
(4, 'Camera', 'Asus', 'Zenfone 2', '16x16', '<h5>Features Asus Zenfone 2</h5>14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).<br>OND363338<h4>Editorial Reviews</h4><h5>Manufacturer''s Description</h5>With a generous 18x Fujinon optical zoom lens, the S2950 really packs a punch, especially when matched with its 14 megapixel sensor, large 3.0" LCD screen and 720p HD (30fps) movie capture.<h5>Electric powered Fujinon 18x zoom lens</h5>The S2950 sports an impressive 28mm – 504mm* high precision Fujinon optical zoom lens. Simple to operate with an electric powered zoom lever, the huge zoom range means that you can capture all the detail, even when you''re at a considerable distance away. You can even operate the zoom during video shooting. Unlike a bulky D-SLR, bridge cameras allow you great versatility of zoom, without the hassle of carrying a bag of lenses.<h5>Impressive panoramas</h5>With its easy to use Panoramic shooting mode you can get creative on the S2950, however basic your skills, and rest assured that you will not risk shooting uneven landscapes or shaky horizons. The camera enables you to take three successive shots with a helpful tool which automatically releases the shutter once the images are fully aligned to seamlessly stitch the shots together in-camera. It''s so easy and the results are impressive.<h5>Sharp, clear shots</h5>Even at the longest zoom settings or in the most challenging of lighting conditions, the S2950 is able to produce crisp, clean results. With its mechanically stabilised 1/2 3", 14 megapixel CCD sensor, and high ISO sensitivity settings, Fujifilm''s Dual Image Stabilisation technology combines to reduce the blurring effects of both hand-shake and subject movement to provide superb pictures.', 4000000, 'Nikon-D3300-700x5256.png'),
(6, 'Handphone', 'Nyamnyung', 'S3', '23x56', 'Ini adalah hp nyamyung...<br>Murah meriah hp nya...<br><br><br>', 4000000, 'samsungs24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nama` text NOT NULL,
  `nope` int(14) NOT NULL,
  `alamat` text NOT NULL,
  `status` int(1) NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
