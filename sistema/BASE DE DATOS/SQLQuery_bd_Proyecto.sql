--
-- Base de datos: `bd_Proyecto_kharas_NM`
--
CREATE DATABASE IF NOT EXISTS `bd_Proyecto_kharas_NM` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_Proyecto_kharas_NM`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda'),
(2, 'admin1', 'e00cf25ad42683b3df678c61f42c6bda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `kd_productos` char(5) NOT NULL,
  `nm_productos` varchar(100) NOT NULL,
  `precio_modal` int(12) NOT NULL,
  `precio_venta` int(12) NOT NULL,
  `stock` int(4) NOT NULL,
  `descripcion` text NOT NULL,
  `marca` varchar(200) NOT NULL,
  `model` varchar(100) NOT NULL,
  `dimension` varchar(100) NOT NULL,
  `liberado` varchar(100) NOT NULL,
  `display` varchar(100) NOT NULL,
  `file_imagen` varchar(100) NOT NULL,
  `kd_categoria` char(4) NOT NULL,
  PRIMARY KEY (`kd_productos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `ciudad` (`kd_productos`, `nm_productos`, `precio_modal`, `precio_venta`, `stock`, `descripcion`, `marca`, `model`, `dimension`, `liberado`, `display`, `file_imagen`, `kd_categoria`) VALUES
('B0001', 'Antena Wifi 2.4-2.4835ghz Wireless Adapter Alfa Pannel Chipset 3070', 140, 150, 7, 'Especificaciones:\n\nChipset: Ralink 3070 antena: 58dbi direccional de potencia de salida: 26dBm (ofdm), 32dBm (cck)\n\nRango de frecuencia: 2.4 GHz (banda ism) interfaz de host: Mini USB de montaje en pared: sí\n\nCantidad: 1 unids Tamaño del paquete: 29.5x19.5x12 (cm)\n\nPeso bruto/paquete: 1 (kg)\n\n \n\nCaracterísticas:\n\nEstándar industrial, estable y duradera\n\n58dbi antena de alta ganancia direccional\n\nRango de más de 3 km con conexión estable\n\n5800 mW alta potencia de salida\n\nRalink 3070 chipset\n\nCable blindado USB Premium 5 metros\n\nIEEE 802.11 b/g/n (hasta 150 mbps)\n\nCompatible con BackTrack12 (beini)', 'HCA', 'Networking Card Alfa', '802.11b,802.11g,802.11n', '2015/12/16', 'USB', 'B0001.antena.jpg', 'K002'),
('B0003', 'Antena Nanostation M5 Loco 5,8 Ghz', 240, 250, 10, '<p>Ubiquiti NanoStation M5 loco Wireless CPE</p>\r\n<p>Performance Breakthrough</p>\r\n<p>150 Mbps real outdoor throughput and up to 15km range. Featuring 2x2 MIMO technology, the new LocoStation M links significantly faster and farther than ever before.</p>\r\n<p>Next-Gen Antenna Design</p>\r\n<p>New antenna array designs featuring 13dBi dual-polarity gain at 5GHz with optimized cross-polarity isolation in a compact form-factor.</p>\r\n<p>Intelligent POE</p>\r\n<p>Remote hardware reset circuitry of LocoStation M allows for device to be reset remotely from power supply location. In addition, any LocoStation can easily become 802.3af 48V compliant through use of Ubiquiti&acute;s Instant 802.3af adapter.</p>\r\n<p>Super Efficient Antenna Performance&nbsp;</p>\r\n<p>Although approximately half the design of the original Ubiquiti Nanostation, NanoStation Loco still exhibits outstanding antenna performance. NanoStation5 Loco was able to maintain 13dBi of dual-polarity antenna gain in a compact form-factor using a highly efficient and innovative patch array antenna design.</p>\r\n<p>&nbsp;</p>\r\n<p>Featuring Powerful AirOS Software and Linux SDK&nbsp;</p>\r\n<p>NanoStation Loco ships standard with the powerful and intuitive AirOS by Ubiquiti Networks. It also is supported by a Linux SDK to encourage open source development.</p>\r\n<p>Reliable System Performance&nbsp;</p>\r\n<p>NanoStation Loco has been proven in extreme temperature and weather conditions. Additionally, it has advanced ESD/EMP immunity design to protect against common outdoor radio and ethernet failures and eliminate truck-rolls for carriers.</p>', 'Ubiquiti', 'Nano Loco M5', '150 mbps', '2015/12/28', '5,8 ghz', 'B0003.B0003.loco.jpg', 'K002'),
('B0002', 'Tarjetas De Video Sin Marca', 80, 100, 4, 'Especificaciones:\n \nChipset: Ralink 3070 antena: 58dbi direccional de potencia de salida: 26dBm (ofdm), 32dBm (cck)\nRango de frecuencia: 2.4 GHz (banda ism) interfaz de host: Mini USB de montaje en pared: sí\nCantidad: 1 unids Tamaño del paquete: 29.5x19.5x12 (cm)\nPeso bruto/paquete: 1 (kg)\n \nCaracterísticas:\n\n\n \nEstándar industrial, estable y duradera\n58dbi antena de alta ganancia direccional\nRango de más de 3 km con conexión estable\n5800 mW alta potencia de salida\nRalink 3070 chipset\nCable blindado USB Premium 5 metros\nIEEE 802.11 b/g/n (hasta 150 mbps)\nCompatible con BackTrack12 (beini)', 'HCA', 'HD6670', '128 Bit', '2015/12/16', 'DirectX 11', 'B0002.video.jpg', 'K003'),
('B0004', 'Celular Sony Z3 Koreano', 250, 300, 1, '<p>Cleuar Sony z3 en buen estado</p>', 'Sony', 'z3', '5 pulgadas', '2015/12/31', '5', 'B0004.374621-sony-xperia-z3-t-mobile-angle.jpg', 'K001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `id_departamento` int(2) NOT NULL,
  `id_ciudad` int(4) NOT NULL,
  `nombre_ciudad` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `kabkot` (`id_departamento`, `id_ciudad`, `nombre_ciudad`) VALUES
(1, 1, 'Tacna'),
(1, 2, 'Candarave'),
(1, 3, 'Jorge Basadre'),
(1, 4, 'Tarata'),
(2, 5, 'Arequipa'),
(2, 6, 'Camana'),
(2, 7, 'Caravelli'),
(2, 8, 'Castilla'),
(2, 9, 'Caylloma'),
(2, 10, 'Condesuyos'),
(2, 11, 'Islay'),
(2, 12, 'La Union'),
(4, 13, 'Juliaca'),
(4, 14, 'Melgar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `kd_categoria` char(4) NOT NULL,
  `nm_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`kd_categoria`, `nm_categoria`) VALUES
('K001', 'Computadoras'),
('K002', 'Antenas'),
('K003', 'Tarjetas de Video'),
('K004', 'Audio y Video'),
('K005', 'Electronicos'),
('K006', 'Cables'),
('K007', 'Telefonos Celulares');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE IF NOT EXISTS `distrito` (
  `id_departamento` int(2) NOT NULL,
  `id_ciudad` int(4) NOT NULL,
  `id_distrito` int(4) NOT NULL,
  `nombre_distrito` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id_departamento`, `id_ciudad`, `id_distrito`, `nombre_distrito`) VALUES
(1, 1, 1, 'Tacna'),
(1, 1, 2, 'Alto del Alianza'),
(1, 1, 3, 'Calana'),
(1, 1, 4, 'Inclan'),
(1, 1, 5, 'Pachia'),
(1, 1, 6, 'Palca'),
(1, 1, 7, 'Pocollay'),
(1, 1, 8, 'Sama'),
(1, 1, 9, 'Ciudad Nueva'),
(1, 1, 10, 'Crnl.Gregorio Albarracin'),
(1, 2, 11, 'Candarave'),
(1, 2, 12, 'Cairani'),
(1, 2, 13, 'Camilaca'),
(1, 2, 14, 'Curibaya'),
(1, 2, 15, 'Huanuara'),
(1, 2, 16, 'Quilahuani'),
(4, 14, 17, 'Ayaviri');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confirmacion`
--

CREATE TABLE IF NOT EXISTS `confirmacion` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_orden` varchar(8) NOT NULL,
  `nm_cliente` varchar(100) NOT NULL,
  `nm_banco` varchar(12) NOT NULL,
  `nm_transferencias` int(12) NOT NULL,
  `informacion` text NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `kd_cliente` char(6) NOT NULL,
  `nm_cliente` varchar(100) NOT NULL,
  `nm_atras` varchar(100) NOT NULL,
  `sexo` enum('Mujer','Hombre') NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `info_extra` text NOT NULL,
  `id_ciudad` int(4) NOT NULL,
  `id_departamento` int(4) NOT NULL,
  `kode_postal` varchar(30) NOT NULL,
  `id_distrito` int(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  `kode_activacion` varchar(100) NOT NULL,
  `tgl_listar` date NOT NULL,
  PRIMARY KEY (`kd_pelanggan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`kd_cliente`, `nm_cliente`, `nm_atras`, `sexo`, `email`, `no_telepon`, `mobile`, `direccion`, `info_extra`, `id_ciudad`, `id_departamento`, `kode_postal`, `id_distrito`, `username`, `password`, `status`, `kode_activacion`, `fecha_listar`) VALUES
('P00001', 'Platea', '21', '', 'gorchor@gmail.com', '995530374', '995530374', 'GAL Tacna, Peru ', '', 1, 1, '00051', 10, 'platea21', '827ccb0eea8a706c4c34a16891f84e7b', 'N', 'FdOtv9Lk8M', '2016-01-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `no_pedido` char(8) NOT NULL,
  `kd_cliente` char(6) NOT NULL,
  `nm_cliente` varchar(100) NOT NULL,
  `fecha_pedido` date NOT NULL DEFAULT '0000-00-00',
  `nombre_destinatario` varchar(60) NOT NULL,
  `direccion_completa` varchar(200) NOT NULL,
  `pago` varchar(100) NOT NULL,
  `id_departamento` int(2) NOT NULL,
  `id_ciudad` int(2) NOT NULL,
  `id_distrito` int(4) NOT NULL,
  `kode_postal` varchar(6) NOT NULL,
  `no_telefono` varchar(20) NOT NULL,
  `estado_pedido` enum('Pendiente','Completo','Nulo') NOT NULL DEFAULT 'Pendiente',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`no_pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_item`
--

CREATE TABLE IF NOT EXISTS `pedido_item` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `no_pedido` char(8) NOT NULL,
  `kd_item` char(5) NOT NULL,
  `pago` varchar(100) NOT NULL,
  `precio` int(12) NOT NULL,
  `cantidad` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departamento` int(2) NOT NULL,
  `nombre_departamento` char(30) NOT NULL,
  `costo_envio` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_departamento`, `costo_envio`) VALUES
(1, 'Tacna', 0),
(2, 'Arequipa', 0),
(3, 'Moquegua', 0),
(4, 'Puno', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
  `kd_provincia` char(3) NOT NULL,
  `nm_provincia` varchar(100) NOT NULL,
  `costo_envio` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_provinsi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE IF NOT EXISTS `registro` (
  `id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nombre` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `direccion` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(12) NOT NULL AUTO_INCREMENT,
  `nm_slide` varchar(20) NOT NULL,
  `foto_slide` varchar(255) NOT NULL,
  PRIMARY KEY (`id_slide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiki`
--

CREATE TABLE IF NOT EXISTS `tiki` (
  `kd_ciudad` char(8) NOT NULL,
  `nm_ciudad` varchar(200) NOT NULL,
  `ons` varchar(30) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `eco` varchar(30) NOT NULL,
  `administracion` varchar(200) NOT NULL,
  PRIMARY KEY (`kd_kota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_cesta`
--

CREATE TABLE IF NOT EXISTS `tmp_cesta` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kd_item` char(5) NOT NULL,
  `precio` int(12) NOT NULL,
  `numero` int(3) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `kd_cliente` char(6) NOT NULL,
  `nm_cliente` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tmp_cesta`
--

INSERT INTO `tmp_cesta` (`id`, `kd_item`, `precio`, `numero`, `fecha`, `kd_cliente`, `nm_cliente`) VALUES
(4, 'B0001', 150, 2, '2015-12-27', 'P00001', 'admin'),
(5, 'B0004', 300, 1, '2016-01-22', 'P00001', 'platea21');
