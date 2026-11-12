-- ====================================================================
-- Database: SchoolApp
-- Proyek: Aplikasi SchoolApp (Windows Forms C# .NET)
-- Deskripsi: Skrip pembuatan database dan tabel untuk SchoolApp
-- ====================================================================

CREATE DATABASE IF NOT EXISTS `SchoolApp`
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE `SchoolApp`;

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `nis` VARCHAR(50) NOT NULL UNIQUE COMMENT 'Nomor Induk Siswa (Unique)',
    `name` VARCHAR(100) NOT NULL COMMENT 'Nama Lengkap Siswa',
    `class_name` VARCHAR(50) NOT NULL COMMENT 'Kelas Siswa',
    `address` TEXT DEFAULT NULL COMMENT 'Alamat Tempat Tinggal',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` (`nis`, `name`, `class_name`, `address`) VALUES
('1001', 'Ahmad Pratama', 'XII RPL 1', 'Jl. Merdeka No. 10, Jakarta'),
('1002', 'Budi Santoso', 'XII RPL 1', 'Jl. Sudirman No. 45, Bandung'),
('1003', 'Citra Dewi', 'XII RPL 2', 'Jl. Diponegoro No. 12, Surabaya'),
('1004', 'Dewi Lestari', 'XI RPL 1', 'Jl. Pahlawan No. 7, Semarang'),
('1005', 'Eko Saputra', 'XI RPL 2', 'Jl. Gatot Subroto No. 88, Yogyakarta');

DROP TABLE IF EXISTS `visitors`;

CREATE TABLE `visitors` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `visitors` VARCHAR(100) NOT NULL COMMENT 'Nama Tamu / Pengunjung',
    `institution` VARCHAR(100) NOT NULL COMMENT 'Asal Instansi / Perusahaan',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `visitors` (`visitors`, `institution`) VALUES
('Drs. Hendro Wibowo', 'Dinas Pendidikan Daerah'),
('Siti Rahmawati, M.Pd', 'Universitas Pendidikan Indonesia'),
('Rian Hidayat, S.Kom', 'PT Solusi Teknologi Nusantara');
