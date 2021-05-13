-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 12:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieshopp`
--

-- --------------------------------------------------------

--
-- Table structure for table `animation`
--

CREATE TABLE `animation` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `saleSakht` text COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` text COLLATE utf8_persian_ci NOT NULL,
  `avamel` text COLLATE utf8_persian_ci NOT NULL,
  `forosh` text COLLATE utf8_persian_ci NOT NULL,
  `keshvar` text COLLATE utf8_persian_ci NOT NULL,
  `zaman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `animation`
--

INSERT INTO `animation` (`id`, `name`, `description`, `saleSakht`, `price`, `image_url`, `avamel`, `forosh`, `keshvar`, `zaman`) VALUES
(1, 'The Clockwork Girl', 'انیمیشن دختر ساعت ساز 2021، به تازگی دختر رباتی بی نام از جانب خالق خود هدیه زندگی گرفته است ، در حالی که در جستجوی شگفتی های جهانی معمولی با پسر جهش یافته ی شگفت انگیز آشنا می شود و دوستی مشترک باعث می شود …\r\n\r\n', '2021', 15, 'https://www.sprintairlines.uk/displaycover/medium/2912f6545eeadfe29693f785acb79541', 'کارگردان : Kevin Konrad Hanna\r\n\r\nبازیگران : Carrie-Anne Moss, Alexa PenaVega, Brad Garrett', '200', 'کانادا', 97),
(2, 'Raya and the Last Dragon', 'داستان انیمیشن در سرزمینی به اسم کوماندرا جریان دارد، جایی که 5 قبیله توسط یک اژدها خلق شده و قبایل در آرامش زندگی می کنند. تا اینکه سر و کله فردی شرور و شیطان صفت پیدا می‌شود که قصد نابودی این سرزمین را دارد. جنگجویی تنها به اسم رایا تصمیم می گیرد با پنهان کردن آخرین اژدهای بازمانده، به مردم این سرزمین کمک کند تا در برابر این فرد پلید بایستند...\r\n\r\n', '2021', 20, 'https://sm.mashable.com/t/mashable_in/photo/default/raya-and-the-last-dragon-review-this-kelly-marie-tran-awkwaf_82eb.960.jpg', 'کارگردان : Don Hall, Carlos López Estrada\r\n\r\nبازیگران : Kelly Marie Tran, Awkwafina, Gemma Chan', '600', 'آمریکا', 125),
(3, 'Space Dogs Tropical Adventure', 'انیمیشن سگ های فضایی 2020، هنگامی که گرداب مرموز و خطرناکی در مناطق گرمسیری اقیانوس اطلس ظاهر می شود، محققانی به نام های بلکا و استرلکا برای تحقیق به آنجا اعزام می شوند و ….\r\n\r\n', '2020', 10, 'https://qdvdcover.co/wp-content/uploads/2021/04/Space-Dogs-Tropical-Adventure-2020.jpg', 'کارگردان : Inna Evlannikova\r\n\r\nبازیگران : Mauriett Chayeb, Mari Monge, Paula Andrea Barros', '150', 'روسیه', 95),
(4, 'The Mitchells vs. the Machines', 'سفر جاده‌ای یک خانواده دمدمی مزاج هنگامی که آنها خود را در میان آخرالزمان ربات ها پیدا می کنند ، که آنها امید آخر بشریت می شوند...\r\n\r\n', '2021', 20, 'https://rooziato.com/wp-content/uploads/2021/04/Connected-1.jpg', 'کارگردان : Michael Rianda, Jeff Rowe\r\n\r\nبازیگران : Olivia Colman, Eric André, Maya Rudolph', '210', 'آمریکا', 128),
(5, 'Spirit Untamed', 'خلاصه داستان : زندگی لوک پرسکوت برای همیشه تغییر می کند وقتی که او از خانه خود به یک شهر کوچک مرزی نقل مکان می کند و با یک اسب موستانگ وحشی به نام روحیه دوست می شود...\r\n\r\n', '2020', 25, 'https://cdn.farmjournal.com/s3fs-public/styles/840x600/public/2021-04/jazz%20spirit%20web.png?itok=OHzTiJRB', 'کارگردان : Elaine Bogan, Ennio Torresan\r\n\r\nبازیگران : Eiza González, Jake Gyllenhaal, Isabela Merced', '320', 'آمریکا', 112),
(6, 'Up', ' انیمیشن بالا ، پیرمردی در شهری بزرگ زندگی میکند و از کل جامعه فاصله گرفته است و در تنهایی به سر می برد. خانه ی کوچک او در میان آسمان خراش هایی است که هر روز بلندتر می شوند و اکنون شهرداری میخواهد خانه ی او را تخریب کند و تخلیه کند. اما پیرمرد حاضر نیست خانه اش را به هیچ وجه ترک کند به همین علت با هزاران بادکنک که به خانه اش وصل کرده است به پرواز در می آید تا سفر پر ماجرایی را آغاز کند. اما بر حسب اتفاق پسر شش ساله ی همسایه نیز با او همراه می شود و آنها در سفری به سرزمینی دور افتاده ماجراهای جالبی را تجربه میکنند.\r\n\r\n', '2009', 20, 'https://netnevesht.com/wp-content/uploads/2017/10/%D8%A7%D9%86%DB%8C%D9%85%DB%8C%D8%B4%D9%86-UP-2-992x620.jpg', 'کارگردان : Pete Docter, Bob Peterson\r\n\r\nبازیگران : Edward Asner, Jordan Nagai, John Ratzenberger', '900', 'آمریکا', 126),
(7, 'Chhota Bheem Kung Fu Dhamaka', 'خلاصه داستان : انیمیشن بیم کوچولو کونگ فو کار ۲۰۱۹، بیم تصمیم می‌گیرد در مسابقه هنرهای رزمی شرکت کند که سالانه از طرف امپراتور چین برگزار می‌شود. برترین مبارزان جهان در این مسابقه حضور دارند و بیم نیز با دوست خود در این مسابقه شرکت می‌کند. در میانه مسابقه، شخصیتی شرور ظاهر می‌شود و دختر امپراتور را می‌دزدد. با تصمیم امپراتور، بیم و دوستانش راهی سفری می‌شوند تا شاهزاده را نجات دهند و مردم را از اسارت رها سازند…\r\n\r\n', '2019', 10, 'https://bestshow.co/uploads/akarfilm1986@gmail.com/cropped/1614623525_cropped.jpeg', 'کارگردان : Rajiv Chilaka, Binayak Das\r\n\r\nبازیگران : Urvi Ashar, Asif Ali Beig, Jigna Bhardwaj', '200', 'هندوستان', 90),
(8, 'Scooby-Doo!The Sword and the Scoob', 'خلاصه داستان : انیمیشن اسکوبی دو! شمشیر و اسکوب 2021، جادوگر با نیروهای شیطانی، شخصیت‌های اصلی فیلم اسکوبی دو را به دنیای جادوگران پلید، شوالیه‌های جوانمرد و اژدهای بزرگ و ترسناک در زمان گذشته، منتقل می‌کند. در این میان پادشاه آرتور برای نجات تاج و تخت خود به کمک فوق کارآگاهان محبوب ما نیاز دارد. اما تلاش های شجاعانه آنها فقط اوضاع را از نظر سلطنتی بدتر خواهد کرد! حالا اسکوبی دو و دوستانش باید از این مخمصه فرار کنند و…\r\n\r\n', '2019', 20, 'https://s18.namasha.com/images/preview/7286335478-320x180.jpg', 'کارگردان : Maxwell Atoms, Christina Sotta\r\n\r\nبازیگران : Nick Frost, Jason Isaacs, Matthew Lillard', '300', 'آمریکا', 124);

-- --------------------------------------------------------

--
-- Table structure for table `animationpics`
--

CREATE TABLE `animationpics` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `animationpics`
--

INSERT INTO `animationpics` (`id`, `product_id`, `pic`) VALUES
(1, 1, 'https://www.animationmagazine.net/wordpress/wp-content/uploads/Clockwork-Girl.jpg'),
(2, 1, 'https://wtfdetective.com/wp-content/uploads/2021/04/CWG_Gallery_R005-768x415.jpg'),
(3, 1, 'https://hotcorn-cdn.s3.amazonaws.com/wp-content/uploads/sites/5/2021/01/11110334/sfondo-the-clockwork-girl-1-1152x648.jpg'),
(4, 2, 'https://sm.mashable.com/t/mashable_in/photo/default/raya-and-the-last-dragon-review-this-kelly-marie-tran-awkwaf_82eb.960.jpg'),
(5, 2, 'https://cdn.wionews.com/sites/default/files/styles/story_page/public/2021/03/05/185676-horizons-69.jpg'),
(6, 2, 'https://i.gadgets360cdn.com/large/raya_last_dragon_hotstar_release_date_1614930750814.jpg?downsize=950:*&output-quality=80'),
(7, 3, 'https://qdvdcover.co/wp-content/uploads/2021/04/Space-Dogs-Tropical-Adventure-2020.jpg'),
(8, 3, 'https://epic-pictures.com/up_films/SpaceDogsTropicalAdventure-still-1616030932-sd3%20pi.jpg'),
(9, 3, 'http://russianresurrection.com/images/films/spece-dogs_600_337.jpg'),
(10, 4, 'https://m.media-amazon.com/images/M/MV5BNjU0NTEzZTMtMjk4OC00YWY3LTk2NGUtZmM3MGMxYTI5YTQyXkEyXkFqcGdeQWRvb2xpbmhk._V1_UX477_CR0,0,477,268_AL_.jpg'),
(11, 4, 'https://hamtamovie.cc/wp-content/uploads/2021/05/The-Mitchells-vs-the-Machines-1.jpg'),
(12, 4, 'https://www.movineh.com/wp-content/uploads/2021/02/%D8%AF%D8%A7%D9%86%D9%84%D9%88%D8%AF-%D8%A7%D9%86%DB%8C%D9%85%DB%8C%D8%B4%D9%86-The-Mitchells-vs.-the-Machines-2021.jpg'),
(13, 5, 'https://cdn.zoomg.ir/2021/4/spirit-untamed-animation-girls-horses.jpg'),
(14, 5, 'https://gharbmelody.ir/wp-content/uploads/Spirit-Untamed-2021-2.jpg'),
(15, 5, 'https://emimovie.com/wp-content/uploads/2021/04/Spirit-Untamed-2021-3.jpg'),
(16, 6, 'https://netnevesht.com/wp-content/uploads/2017/10/%D8%A7%D9%86%DB%8C%D9%85%DB%8C%D8%B4%D9%86-UP-2-992x620.jpg'),
(17, 6, 'http://animation.ir/wp-content/uploads/2019/07/Screen-Shot-1398-04-14-at-19.41.31-750x450.jpg'),
(18, 6, 'https://lh3.googleusercontent.com/proxy/MAjk196nHZGk65jdvPC-EhIXtWHvPdowZtUo96Ker40kGbSnDnSrPeIa9d9mjQ2Ry1zlh2M'),
(19, 7, 'https://cdn.fileniko.ir/2021/02/2-23.jpg'),
(20, 7, 'https://bestshow.co/uploads/akarfilm1986@gmail.com/cropped/1614623525_cropped.jpeg'),
(21, 7, 'https://asamovie.ir/wp-content/uploads/2021/02/chhota-bheem-kung-fu-dhamaka-1200-1024x569.jpg'),
(22, 8, 'http://dl.bestshow.co/public/uploads/animasion1986@gmail.com/video/2021/03/2103gh88r/2103gh88r_image.jpeg'),
(23, 8, 'https://static.cdn.asset.aparat.com/lp/17143090-3132-a.jpg'),
(24, 8, 'https://gharbmelody.ir/wp-content/uploads/Scooby-Doo-2021-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL,
  `image_url` text COLLATE utf8_persian_ci NOT NULL,
  `saleSakht` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `name`, `image_url`, `saleSakht`) VALUES
(1, 'گیسو ', 'https://static1.ilna.news/thumbnail/OkS6l5lgu0CI/zD2ly951Lbe1X4vBXmeYxnwvBKd2o-upCBoRpuXWWQ3xVYIwBtE8SJc5CgG8w1SR1HhaeHPcWe7Z4QQxwQ5aCQuC6bW65Yo2vzNA1A_oYcME-xuDHnCGIL88GkvFaMums2lp5Xzk-eHBnhR0v72AGuO13u67dPyuXuOejRjZDSys4NdjIqNZJEQ6csj1vAj0BqGameWF9RI,/dgtrsd.jpg', '1399'),
(2, 'سیاوش', 'http://shahraranews.ir/files/fa/news/1399/12/26/276111_612.jpg', '1399'),
(3, 'دودکش', 'https://tv.yjc.ir/wp-content/uploads/2018/07/unnamed-5.jpg', '1392'),
(4, 'دزد و پلیس', 'https://static3.borna.news/servev2/EKDUH7pvV1lH/KxuoffTghAA,/939761805_139907301405.jpg', '1388'),
(5, 'هیولا', 'https://lh3.googleusercontent.com/proxy/30CwOMYect0QDkHMX7zK4T_2CrQVy1UUnB9NRsL9dwWDF_PPHLzQbosdcOPtaqN60diB-WkBfflzK_NJjCSjWumWnijm6WQaLai7jpuYH2-ZHA3_DyHvToTSgo2w9dkpx4aa0m6J3qW68vnJHIbLsLv024lPdRXuXWJQwAtzp2NCg-UR99vo8pd0i_OFmxNXsqsVwx1Ggi4DrGcfO7pzaQqFY9L6nb5mI1pTRg6rw0mhTA', '1398'),
(6, 'خوب بد جلف', 'https://static3.borna.news/thumbnail/0pPrhvpbF0bb/c-5e-GrpQoxvSUuTA98NsxM4nZ53FJIggXpYEUp0nCDYWGRZzMlxRdOFHbqWJYS5/%D8%B3%D8%B1%DB%8C%D8%A7%D9%84+%D8%AE%D9%88%D8%A8+%D8%A8%D8%AF+%D8%AC%D9%84%D9%81.jpg', '1400'),
(7, 'ساخت ایران', 'http://cdn.bartarinha.ir/files/fa/news/1397/8/2/1854238_528.png', '1395'),
(8, 'میخواهم زنده بمانم', 'https://static.cdn.asset.filimo.com/flmt/mov_83083_292-b.jpg', '1400'),
(9, 'قورباغه ', 'https://www.asaldl.info/wp-content/uploads/2021/01/Ghoorbagheh-Poster.jpg', '1400'),
(10, 'ملکه گدایان', 'https://static2.ilna.news/thumbnail/ef6FweeGMiRa/XWHCw76VBsxV-gjMD_1vCetw5eCq7S04hX6xsI6ISfTD_yl-j66fW7VVozzx0Z7LA6WHLGDD_gA,/image_3beb4fb0bb5237402e5f6beb0c4749c4695b1a4d.jpg', '1400'),
(11, 'ممنوعه', 'https://files.virgool.io/upload/users/13718/posts/x5b6wtllozgq/i3jsflpoebdg.jpeg', '1397');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(255) NOT NULL,
  `username` varchar(225) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(225) COLLATE utf8_persian_ci NOT NULL,
  `content` text COLLATE utf8_persian_ci NOT NULL,
  `comment_id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `time` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `username`, `email`, `content`, `comment_id`, `parent_id`, `status`, `time`) VALUES
(1, 'علیرضا جهانی', 'ali15@gmail.com', 'به نظرم همه چیز این محصول عالیه فقط از بابت قیمت اگر ارزون تر میشد خیلی بهتر بود', 3, 0, 1, '1398/5/1'),
(2, 'محمدرضا علیزاده', 'mm199@gmail.com', 'اگر مثل من دوست دارید همه چیزتون عالی باشه این محصول رو بهتون پیشنهاد میکنم', 5, 0, 1, '1398/5/1'),
(3, 'محمود ', 'mahi16@hotmail.com', 'این محصول از نظر من اصلا هم خوب نیست', 8, 0, 1, '1398/5/1'),
(4, 'شاهین', 'shahin@gmail.com', 'عالی ممنون ازتون', 8, 0, 0, '1400/2/13'),
(5, 'محمود', 'mahi16@hotmail.com', 'من پولمو میخوام', 15, 0, 1, '1398/5/1'),
(6, 'نرگس', 'narges@gmail.com', 'به همتون پیشنهاد میکنم', 8, 0, 1, '1400/2/10'),
(7, 'علیرضا جهانبخش', 'alirezaK@gmail.com', 'یک محصول کاملا رویایی', 12, 0, 1, '1398/5/1'),
(8, 'نسترن', 'nan@gmail.com', 'آشغال همه چیز جنس چینی آشغاله', 4, 0, 1, '1398/5/1'),
(9, 'کیمیا', 'kimichra@gmail.com', 'منکه خوشم نیومد فقط بلدن الکی جیب مردم رو خالی کنن', 4, 0, 1, '1399/10/25'),
(10, 'عارفه داوری', 'aref@gmail.com', 'خیلی خوب بود پیشنهاد میکنم بخرید', 4, 0, 1, '1399/8/13'),
(11, 'مرجان آقائي', 'mari@yahoo.com', 'خرید خوبی بود', 12, 0, 1, '1399/10/25'),
(12, 'سپهر نعمتی\r\n', 'sepehrNemati@gmail.com', 'بسیار کاربردی', 6, 0, 1, '1398/5/1'),
(13, 'بهروز محمدی', 'beh@gmail.com', 'باهاش کلی طراحی انجام دادم و راضی ام', 6, 0, 1, '1399/10/25'),
(14, 'رحیم پاکدلان فرد', 'rahim@gmail.com', 'سی دیش از همه لحاظ خوب بود', 7, 0, 1, '1398/5/1'),
(15, 'سعید محبی', 'saiied@gmail.com', 'با توجه به قیمت مناسب و بسته بندی خوب و لیست ارایه دروس خوبی که دارد خریدش را پیشنهاد میکنم . البته هنوز استفاده نکردم .', 6, 0, 1, '1400/2/13'),
(16, 'سینا حسینی مقدم', 'sin@gmail.com', 'علاوه بر امکانات خوب نصب نسبتا آسونی داشت..', 7, 0, 1, '1399/10/25'),
(17, 'هادی خرمی', 'hadie@gmail.com', 'عالی بود ر نصب کردنش هم راحت بود مطابق راهنمای نصب داخل نرم افزار', 13, 0, 1, '1398/5/1'),
(18, 'مرتضی چهارمحالی', 'morigher@gmail.com', 'عالی و آموزشی است و ذهن فرزندتان را باز و خلاق میسازد', 11, 0, 1, '1398/5/1'),
(19, 'مهدی جمالی', 'mahdi@gmail.com', 'برای من ۵ یا ۶ تا قطعه کم داشت و کارم گیر افتاد\r\nای کاش یه محصول رو کامل به دستت میرسوندن', 1, 0, 1, '1398/5/1'),
(20, 'جواد مظفرزاده\r\n', 'jevad@gmail.com', 'یه کم پیچیده اس ولی اگر دریت مونتاژ بشه بد نیست', 14, 0, 1, '1398/5/1'),
(21, 'مهدی اصغری', 'mehti@gmail.com', 'سلام\r\nمن خریدم\r\nیک قطعه توش کم بود\r\nای کاش از هر قطعه یه دونه زاپاس تو گذاشته بودند\r\nپیشنهاد می کنم بخرید\r\nچون در کل خوب بود', 5, 0, 1, '1399/10/25'),
(22, 'محمد رعد', 'mohammad@gmail.com', 'حرکت خوبی است ، منتها باید از حالت سنتی فروش کالا یک قدم پا فراتر گذاشته و در مسیر آموزش و هدایت اصولی و دریافت بازخورد آن قدم بگذارد.', 10, 0, 1, '1398/5/1'),
(23, 'امیر علی فتاحی\r\n', 'amiiir@gmail.com', 'باسلام حتما بخوانید\r\nمن الان یک ماه که دارم روش کار میکنم ترانزیستور و یکی از ای سی ها سوخت چرا برای اینکه در در دفترچه ذکر نشده که چه کارهایی باید انجام بدیم تا قطعات سالم بمونن\r\nواما درمورد پشتیبان عالی است تمام سوال ها رو با دقت جواب میده‌', 4, 0, 1, '1399/8/13'),
(24, 'صفدر بربری\r\n', 'barbarSafdar@gmail.com', 'برای من که اولین کیت بود یه کم سخته', 5, 1, 1, '1400/2/10'),
(25, 'امنه رضایی\r\n', 'amene@gmail.com', 'قطعات اصلی کار ناقصه.بنابراین کارمونتاژ ناقص میمونه ....هر قسمت که جلو بری میبینی نقص قطعه داری.از کجا باید تهیه بشه.....سطحش هم برای دبیرستانه', 10, 0, 1, '1400/2/13'),
(26, 'محمد اصل فلاح', 'mohammad@gmail.com', 'من برای دختر هفت ساله ام گرفتم . خیلی راضی ام .\r\nبا سپاس از شما', 10, 0, 1, '1399/10/25'),
(27, 'رضا اسماعیلی', 'reza@gmail.com', 'خیلی خوبه ارزش داره ولی مال من درس کار نمیکنه\r\nخوبیش اینه خیلی راهنما داره و پشتیبانی خوب', 14, 0, 1, '1399/10/25'),
(28, 'بهمن ولی پور', 'tir@gmail.com', 'با سلام\r\nکیت فوق‌العاده آیه.خریدش رو پیشنهاد میدم فقط کاش راهنمای چاپی هم داخل بستش بود\r\n\r\nنقاط قوت\r\nعالی در سطح بالا\r\nوسایل قابل قبول\r\nخوش ساخت\r\nدر سطح دانشگاه\r\nنقاط ضعف\r\nعدم وجود راهنمای چاپی\r\nراهنمایی ناقص\r\nعدم خدمات پس از فروش', 9, 0, 1, '1398/5/1'),
(29, 'مصطفی بهادری', 'faghatbahador@gmail.com', 'خیلی سطح بالا توضیح داده شده است', 9, 0, 1, '1399/10/25'),
(30, 'امیررضا کمالی', 'amirrezaKemal@gmail.com', 'من تا به حال سی دی های آموزشی زیاد خریده بودم ولی این یکی اصلا خوب توضیح نمیده و فرد با حالت توضیحات حوصله شما را سر می برد', 9, 0, 1, '1400/2/13'),
(31, 'رضا صاعدی', 'rez@gmail.com', 'به موقع به دستم رسید .لطفا از اساتیدی اسفاده بشه که قدرت بیانشون مناسب باشه و تن صداشون تحت یک خط صاف نباشه', 12, 0, 1, '1400/2/13'),
(32, 'علی قزلباش', 'ali@gmail.com', 'اگه هیچ اطلاعاتی راجع به بورس ندارید خیلی خوبه\r\nولی اگه مبتدی نیستید زیاد به کارتون نمیاد', 11, 0, 1, '1400/2/13'),
(33, 'متین کمی', 'matinkamikeyfi@gmail.com', 'متاسفانه این نرم افزار رو خریدم که از هرجهت ضعیفه\r\nچه طراحی نرم افزار که فقط یه پاورپوینته و از روی پاورپوینت مطالب رو میخونه تصاویر بسیار نارسا و بی کیفیت مطالب بسیار پراکنده و بدون انسجام و پیش پا افتاده\r\nاصلا جنبه آموزشی نداره و صرفا یه کپی پیست مطالب اینترنت بیشتر نبود', 6, 0, 1, '1400/2/13'),
(34, 'یاسر رضائیان', 'manyaseram@gmail.com', 'میشه گفت یک انتخاب مناسب برای مبتدی هاست ولی خیلی از مطالب ابتر مونده مثل توضیح فیبوناچی و فیلتر ها و ...', 15, 0, 1, '1399/10/25'),
(35, 'محمد ستایش روحی\r\n', 'mohammad@gmail.com', 'همچیزو یاد میده با همه چیز آشنا میشی خیلی خوبه فقط وقت دارید بخرید تو بیکاری آموزش ببیند وقت مرده نداشته باشد من خودم همین کارو کردم پیشنهاد میکنم عالی هستش', 1, 0, 1, '1399/10/25'),
(36, 'فائزه داداشی', 'faeze@gmail.com', 'کتاب خوبیه برای اونایی که هیچ اطلاعاتی راجع به بورس ندارن\r\nتقریبا همه چیو کامل توضیح داده', 1, 0, 1, '1399/8/13'),
(37, 'سروش محمدعلی زاده\r\n', 'soroosh@gmail.com', 'گر هیچ اشنایی با بورس و اصطلاحات معمولی اون ندارین این کتاب شروع خیلی خوبیه', 13, 0, 1, '1399/10/25'),
(38, 'علی رجایی', 'mrrajayi@gmail.com', 'با این قیمت اصلا نمی ارزه خیلی از مطالبش کاربردی نیست و فقط جهت اطلاع و آگاهی هست کتاب کاملی نیست .و نسبت به قیمتش نمی ارزه', 7, 0, 1, '1399/8/13'),
(39, 'مهدی معظمی گودرزی\r\n', 'mehti@gmail.com', 'بسیارعالی ومناسب', 15, 0, 1, '1399/8/13'),
(40, 'سپیده کشاورز', 'sepide@gmail.com', 'برای شروع خوبه اما کافی نیست باید کتاب های دیگر نیز استفاده کنید.', 8, 0, 1, '1400/2/13'),
(41, 'سمانه جباری', 'smjabar@gmail.com', 'خوشحالم از اینکه هر چی میخام با کیفیت میتونم از دیجی کالا تهیه کنم لطفاً محصولات فرهنگی را بیشتر وبا تخفیف ارائه بدید', 2, 0, 1, '1398/5/1'),
(42, 'جواد شعبانی', 'jevad@gmail.com', 'بینید تو این مجموعه 4 تا dvd هستش، یعنی دوتا پک دوتایی، تو هر پک یکی از dvd ها افیس 2019 هستش،یعنی دوتا از ذی دی دی ها فقط نرم افزار افیس هستن، دوتای دیگ هم تقریبا یک پنجم دی وی دی پر شده، بقیه خالیه، به عبارتی میشد چهار تا دی وی دی، بشه دوتا', 13, 0, 1, '1399/8/13'),
(43, 'حامد الماسی\r\n', 'hamed@gmail.com', 'پولتون رو دور نریزین اصلا وقت نذاشتن، یکی برا خودش حرف میزنه انگار ن انگار میخاد آموزش بده\r\nبرا خودش الکی میچرخه میگه اینو بخرین این راحته این سایت قشنگیه اینو ولش کن کلا انگار داره با یکی حرف میزنه ک از خودش بهتر میفهمه و این راه رو کامل رفته.', 2, 0, 1, '1399/10/25'),
(44, 'بهرام خیرنیا\r\n', 'bahram@gmail.com', 'اگه دنبال آموزش بازاریابی دیجیتال و بورس تکنیکال هستید به شدت توصیه می شه', 2, 0, 1, '1399/8/13'),
(45, 'محمد ابراهیم رادمرد', 'mamad@gmail.com', 'خوبه ولی برای من طرح اصلی فوتوشاپ منظم و وسط نیست', 3, 0, 1, '1400/2/13'),
(46, 'اهورا کرمی', 'kerm@gmail.com', 'ps مخفف همون فتوشاپ هستش . این پیکسل طرفدارای خاص خودش رو داره و معمولا گرافیست ها و کسانی که کار تصویر انجام میدن براشون جذابه همچین چیزی .', 3, 0, 1, '1400/2/13'),
(56, 'aaaa', 'aaaaa', 'aaaa', 11, 1, 1, '1399/8/13'),
(57, 'aaaaaa', 'aa', 'aa', 11, 1, 1, '1400/2/10'),
(59, 'aaaa', 'aaaaa', 'aaaaa', 9, 1, 1, '1399/8/13'),
(61, 'aaa', 'aa', 'aaaa', 14, 1, 1, '1400/2/13'),
(62, 'mehrab ‎bozorgi', 'mehrab.bozorgi@gmail.com', ' برنامه ای خوبی هستش', 3, 1, 1, '1399/8/13'),
(79, 'aaaaaaa', 'aaaaaaa', 'aaaaaaa', 2, 1, 1, '1620490974');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` text COLLATE utf8_persian_ci NOT NULL,
  `avamel` text COLLATE utf8_persian_ci NOT NULL,
  `hajm` int(11) NOT NULL,
  `saleSakht` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `name`, `description`, `price`, `image_url`, `avamel`, `hajm`, `saleSakht`) VALUES
(1, 'A Way Out', 'بازی A Way Out از چند نظر اهمیت بسیار زیادی دارد. اولا با ساخته جدید جوزف فارس طرف هستیم که پیش از این بازی تاثیرگذار Broothers: A Tale of Two Sons را ساخته بود و افرادی که آن بازی را تجربه کرده‌اند، قطعا بی‌صبرانه منتظر بازی جدید فارس هستند. از طرف دیگر و حتی اگر ایده خلاقانه بازی را هم کنار بگذاریم، پس از سخنرانی جنجالی جوزف فارس در جریان The Game Awards 2017، وی باعث شد که افراد زیادی برای بازی کردن ساخته جدیدش کنجکاو باشند. اما از این مسائل که بگذریم، ایده بازی A Way Out هم آنقدر جذاب است که بتوان آن را جزو بازی‌های مورد انتظار سال ۲۰۱۸ دانست.', 60, 'https://digiato.com/wp-content/uploads/2018/03/maxresdefault-2.jpg', 'سازنده: استودیو هیزل‌لایت\r\nناشر: الکترونیک آرتز\r\nپلتفرم: پلی‌استیشن 4، ایکس‌باکس وان و پی‌سی', 20, 2017),
(2, 'Anthem', 'درست است که استودیو بایوویر در جدید‌ترین نسخه از سری مس افکت یعنی Andromeda نتوانست آنطور که باید و شاید طرفداران را راضی کند، اما همواره از این استودیو به عنوان بازی‌سازی یاد می‌شود که خیلی کم بازی ضعیف در کارنامه دارد و شاهکار‌هایی مثل Dragon Age یا سه گانه اصلی Mass Effect را تقدیم‌مان کرده است. پس بی‌دلیل نیست که برای پروژه بعدی این استودیو یعنی Anthem هیجان‌زده باشیم. البته که خیلی‌ها دوست داشتند تا در سال ۲۰۱۸ شاهد بازی‌ای مثل نسخه جدید Dragon Age از جانب بایوور باشند، اما شاید بتوان گفت که این استودیو در رفتن به سراغ یک IP کاملا جدید، تصمیم درستی گرفته و قصد دارد تا تجربه‌ای متفاوت از ساخته‌های پیشین خودش ارائه کند.', 40, 'https://cdn.zoomg.ir/2018/5/e8103a79-e303-47d1-ab32-9988cd4a0907.jpg', 'سازنده: بایوور\r\nناشر: الکترونیک آرتز\r\nپلتفرم: پلی‌استیشن 4، ایکس‌باکس وان و پی‌سی', 150, 2018),
(3, 'Crackdown ', 'Crackdown 3 هم کم کم در حال پیوستن به گروه بازی‌هایی است که روند ساخت آن‌ها طولانی می‌شود و چندین بار تاخیر می‌خورند. این بازی اولین بار در جریان نمایشگاه E3 سال ۲۰۱۴ معرفی شد که در آن زمان، در اولین مراحل توسعه بود. یک سال بعد در گیمزکام ۲۰۱۵ رسما از بازی رونمایی و اعلام شد که Crackdown 3 در سال ۲۰۱۶ منتشر خواهد شد. اما بعدا بازی یک سال دیگر هم تاخیر خورد و این بار قرار بود همزمان با کنسول ایکس باکس وان ایکس، در اواخر سال ۲۰۱۷ منتشر شود. ولی سازندگان بازی باز هم نتوانستند Crackdown 3 را برای این تاریخ آماده کنند و حال قرار است بازی در تاریخ نامشخصی از بهار ۲۰۱۸ منتشر شود.', 80, 'https://click.ir/wp-content/uploads/2018/11/crackdown-3.jpg', 'سازنده: ریجنت گیمز - سومو دیجیتال\r\nناشر: الکترونیک آرتز\r\nپلتفرم: ایکس‌باکس وان و ویندوز', 200, 2018),
(4, 'Darksiders', 'کمپانی THQ پیش از آنکه در سال ۲۰۱۲ اعلام ورشکستگی کند، مالک بازی‌های مشهور زیادی بود. یکی از این بازی‌ها، سری Darksiders بود که دو نسخه اول آن، توسط استودیو ویجیل‌گیمز ساخته شده بودند و جزو بازی‌های خوب سبک اکشن ماجراجویی هم به شمار می‌رفتند. اما با تعطیل شدن THQ، این استودیو هم که قرار بود نسخه سوم بازی را بسازد، تعطیل شد و حتی سرنوشت این IP برای مدتی نامعلوم ماند. با این حال در سال ۲۰۱۳، کمپانی نوردیک گیمز همراه با IP‌های Red Faction و MX vs. ATV، مجوز ساخت این بازی را هم خریداری کرد و سال گذشته بود که رسما، ساخته شدن نسخه سوم سری دارک‌سایدرز را تایید کرد.', 45, 'https://www.digikala.com/mag/wp-content/uploads/2018/08/Darksiders_III_Gamecom_2018-Trailer.jpg', 'سازنده: استودیو گان‌فایر\r\nناشر: THQ Nordic\r\nپلتفرم: پلی‌استیشن 4، ایکس‌باکس وان و پی‌سی', 100, 2020),
(5, 'Days Gone', 'سونی در سال ۲۰۱۶، نمایشی طوفانی در جریان E3 داشت و از بازی‌هایی مثل God of War یا Death Stranding رونمایی کرد. اما در این بین یکی دیگر از بازی‌هایی که مخصوصا نظر طرفداران بازی‌های آخرالزمانی و زامبی‌محور را به خود جلب کرد، بازی Days Gone، اثر جدید استودیو بِند سونی بود که پیش از این، آن را با بازی‌هایی چون Syphon Filter می‌شناسیم. این بازی در E3 نمایشی طوفانی داشت و تماشای تلاش شخصیت اصلی آن برای زنده ماندن در میان تعداد بسیار زیادی از موجودات وحشی شبیه به زامبی، هیجان‌انگیز بود. درست است که در سال ۲۰۱۸ بازی‌های انحصاری زیادی برای پلی‌استیشن 4 منتشر خواهند شد، اما قطعا Days Gone هم یکی از مورد انتظار‌ترین بازی‌های این کنسول به شمار می‌رود.', 60, 'https://www.novinspot.com/wp-content/uploads/2019/05/3526526-days-gone-review-thumb-nologo.jpg', 'سازنده: استودیو بند (Bend)\r\nناشر: سونی\r\nپلتفرم: پلی‌استیشن 4', 250, 2015),
(6, 'Detroit: Become Human', 'دیوید کیج نه تنها بازی‌ساز بزرگی است، که از او به عنوان یکی از چهره‌های متفاوت این صنعت نیز یاد می‌شود. چرا که بازی‌های کیج، به نوعی تلفیق بازی و فیلم هستند و با تمرکز زیاد روی داستان‌گویی، سعی می‌کنند تجربه‌ای متفاوت نسبت به بازی‌های رایج به مخاطب ارائه کنند. پیش از این ساخته‌هایی چون فارنهایت و Beyond: Two Souls را از کیج به یاد داریم و البته بازی Heavy Rain وی را هم که شخصا علاقه خاصی به آن دارم و یکی از تاثیرگذار‌ترین بازی‌های ویدیویی است که می‌شناسم، نباید از یاد برد. اما جدید‌ترین ساخته دیوید کیج، اثری بسیار بلندپروازانه‌تر در مقایسه با ساخته‌هایش پیشین او است؛ چرا که این بار دیوید کیج قصد ساخت بازی‌ای را دارد که هر گیمری، بسته به تصمیم‌هایی که می‌گیرد، در آن تجربه متفاوتی داشته باشد.', 75, 'https://par30games.net/wp-content/uploads/2018/09/Detroit-Become-Human.jpg', 'سازنده: کوانتیک دریم\r\nناشر: سونی\r\nپلتفرم: پلی‌استیشن 4', 145, 2016),
(7, 'Dreams', 'تا اینجای لیست، بازی‌های زیادی داشتیم که چندین بار تاخیر خورده‌اند و قرار است در سال ۲۰۱۸ منتشر شوند. Dreams هم یکی از همین دست بازی‌ها است که زمزمه‌های ساخته شدن آن از سال ۲۰۱۳ به گوش می‌رسید و نهایتا، در سال ۲۰۱۵ بود که بازی به صورت کاملا رسمی معرفی شد. در حالی که قرار بود یک نسخه بتا از بازی در سال ۲۰۱۶ منتشر شود، انتشار این بازی تا به امروز به تعویق افتاده و حال قرار است در سال ۲۰۱۸ شاهد انتشار این بازی استودیو مدیا مولکول باشیم.', 0, 'https://www.terabyteco.com/Content/Images/db1b912a-0f5e-46e2-beb1-26febcad027d.jpg', 'سازنده: مدیا مولکول\r\nناشر: سونی\r\nپلتفرم: پلی‌استیشن 4', 100, 2021),
(8, 'Far Cry', 'زمانی که صحبت از Far Cry می‌شود، ناخودآگاه ذهنم به سراغ نسخه‌های قدیمی‌تر مجموعه می‌رود و نمی‌خواهم خیلی به نسخه‌های جدیدتر آن فکر کنم. نه اینکه بگویم نسخه‌هایی مثل Far Cry 4 یا Primal بازی‌های بدی بودند، بلکه نسخه‌های قبل‌تر از آن‌ها، خلاقیت خاصی داشتند که باعث می‌شد فارکرای، با دیگر بازی‌های شوتر آن دوره‌ها تفاوت زیادی داشته باشد. برای مثال، زمانی که اولین نسخه بازی منتشر شد، شبیه به یک انقلاب گرافیکی واقعی بود و از طرف دیگر، گیم‌پلی جذابی هم داشت. نسخه دوم، آنقدر طبیعی بود که در آن زمان باور نمی‌کردیم گیر کردن گلوله در تفنگ هم در بازی‌ای شبیه‌سازی شده باشد یا اینکه علف‌زار‌های خشک آفریقا، بتوانند در اثر یک آتش‌سوزی کوچک، شعله‌ور شوند و جلوه‌ای شدیدا زیبا پدید بیاورند. در مورد نسخه سوم هم تنها اشاره با نام «واس» برای نشان دادن جذابیت‌های بی‌شمار بازی کافی است. با اینکه دو نسخه بعدی سری ایده‌های انقلابی‌ای نداشتند، اما باز هم نمی‌توان منتظر Far Cry 5 نماند و امیدوار نبود که یوبی‌سافت، این بار بتواند اثری لایق نام این مجموعه منتشر کند.', 50, 'https://cdn.zoomg.ir/2018/3/67001d7e-31f2-45b2-9be0-b54e88948705.jpg', 'سازنده: یوبی‌سافت مونترئال\r\nناشر: یوبی‌سافت\r\nپلتفرم: پلی‌استیشن 4، ایکس‌باکس وان و پی‌سی', 75, 2018),
(9, 'Final Fantasy VII Remake', 'یکی از قدیمی‌ترین سری بازی‌های نقش آفرینی ژاپنی، Final Fantasy است که طرفداران بی‌شماری در این کشور و سراسر جهان دارد. زمانی که صحبت از این مجموعه می‌شود، می‌توان به قسمت‌های مختلفی از آن به عنوان بازی‌های باکیفیت اشاره کرد اما در این بین، نسخه هفتم مجموعه یعنی Final Fantasy VII محبوبیت خاصی بین علاقه‌مندان فاینال فانتزی دارد و به همین دلیل هم خیلی‌ها برای مدت طولانی خواستار ساخته شدن یک ریمستر یا بازسازی از این نسخه بودند. نسخه بازسازی این بازی با نام Final Fantasy VII Remake چند سال پیش تایید شد ولی تا به امروز شاهد انتشار آن نبوده‌ایم. همچنین چند وقت پیش سازندگان بازی اعلام کردند که قصد دارند این بازی را در چند بخش منتشر کنند تا مجبور نشوند چیزی از محتویات نسخه اصلی را حذف کنند. پس امیدواریم که حداقل اولین بخش از بازی Final Fantasy VII Remake، در سال ۲۰۱۸ منتشر شود.', 30, 'https://www.terabyteco.com/Content/Images/4828eb12-2c9e-4902-ad25-b474f8b5cc7b.jpg', 'سازنده: اسکوئر انیکس\r\nناشر: اسکوئر انیکس\r\nپلتفرم: پلی‌استیشن 4', 50, 2011),
(10, 'God of War', 'نمی‌توان  راجع به مورد انتظار‌ترین بازی‌های یک سال صحبت کرد و نامی از نسخه جدید God of War که برای آن سال تایید شده باشد، نیاورد. به هر حال خیلی از ما، خاطراتی فراموش‌نشدنی با کریتوس داریم و هرگز یادمان نمی‌رود که چطور با این کچل بی‌اعصاب به حساب خدایان و موجودات افسانه‌ای یونان را رسیدیم و کاری کردیم که با شنیدن نام کریتوس، لرزه بر اندام‌شان بیافتد. از طرف دیگر، هرگز کنفرانس سونی در E3 2016 در ساعت ۵ صبح و رونمایی این شرکت از نسخه جدید بازی با آن نمایش خیره‌کننده را هم فراموش نمی‌کنیم. پس خیلی سخت بتوان از بازی‌های مهم ۲۰۱۸ نوشت و اشاره‌ای به جدید‌ترین ماجراجویی کریتوس نداشت.', 45, 'http://timecity.ir/wp-content/uploads/2019/02/GOW-OG-image-1024x538.jpg', 'سازنده: سانتا مونیکا\r\nناشر: سونی\r\nپلتفرم: پلی‌استیشن 4', 200, 2018),
(11, 'Metro Exodus', 'زمانی که اولین نسخه سری Metro منتشر شد، خیلی‌ها از مشکلات فنی بازی گله داشتند و کمپانی THQ نتوانسته بود آنطور که باید، تجربه‌ای بهینه و روان در اختیار مخاطبان قرار دهد. اما در پس این مشکلات فنی، با اثری رو‌به‌رو بودیم که اولا اتمسفر آخرالزمانی فوق‌العاده‌ای داشت و بعد اینکه در این اتمسفر، داستانی عالی هم روایت می‌کرد؛ داستانی برگرفته از کتاب‌های مترو که آنقدر غنی هستند که بتوان به بهترین شکل آن‌ها را تبدیل به یک بازی ویدیویی کرد. چنین مساله‌ای در رابطه با نسخه بعدی این سری یعنی Last Light هم صدق می‌کرد و یک بار دیگر، با بازی شوتر با‌کیفیتی رو‌به‌رو بودیم که قطعا ترس و وحشت ناشی از شکستن ماسک و تمام شدن فیلتر در آن، از ذهن‌مان پاک نشده است.', 65, 'https://cdn.zoomg.ir/2019/2/62d58326-ca7f-4f37-bd67-728f0b5725bb.jpg', 'سازنده: 4A گیمز\r\nناشر: دیپ سیلور\r\nپلتفرم: پلی‌استیشن 4، ایکس‌باکس وان و پی‌سی', 95, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `gamepics`
--

CREATE TABLE `gamepics` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `gamepics`
--

INSERT INTO `gamepics` (`id`, `product_id`, `img`) VALUES
(1, 1, 'https://digiato.com/wp-content/uploads/2018/03/38018998955_487f230e14_k-w600.jpg'),
(2, 1, 'https://digiato.com/wp-content/uploads/2018/03/a-way2-w600.jpg'),
(3, 1, 'https://cdn.zoomg.ir/2018/4/77b60569-0357-4edc-b171-28c76daf13a6.jpg'),
(4, 2, 'https://cdn.zoomg.ir/2019/4/66517ca3-0063-4ddb-bf06-741cbc242e40.jpg'),
(5, 2, 'https://dl.psarena.ir/wp-content/uploads/2019/02/1.jpg'),
(6, 3, 'https://gameshot.co/wp-content/uploads/2019/02/3501985-cdr7.jpeg'),
(7, 3, 'https://www.novinspot.com/wp-content/uploads/2019/02/20-1.jpg'),
(8, 4, 'https://www.digikala.com/mag/wp-content/uploads/2018/08/Darksiders_III_Gamecom_2018-Trailer.jpg'),
(9, 4, 'https://click.ir/wp-content/uploads/2018/11/Darksiders-III-Wallpaper.jpg'),
(10, 4, 'https://cdn.zoomg.ir/2019/2/c7d4c213-940c-429a-9364-6c043b23831a.png'),
(11, 5, 'https://www.bazicenter.com/wp-content/uploads/2019/05/daysgone.jpg'),
(12, 5, 'https://gameshot.co/wp-content/uploads/2019/03/Days-Gone-Feature.jpg'),
(13, 5, 'https://dl.psarena.ir/wp-content/uploads/2019/04/daysgone1.jpg'),
(14, 6, 'https://www.dbazi.com/wp-content/uploads/2018/04/DetroitBecomeHuman-8.jpg'),
(15, 6, 'https://digiato.com/wp-content/uploads/2018/05/0_uJRNYiruZVJsCN33.jpg'),
(16, 7, 'https://cdn.zoomg.ir/2020/2/96a6e0ca-e7ab-4675-a2ef-6d78e3e25272.jpg'),
(17, 7, 'https://crocogame.com/wp-content/uploads/2019/05/%D8%A8%D8%A7%D8%B2%DB%8C-Dreams.jpg'),
(18, 7, 'https://gamefa.com/wp-content/uploads/2017/12/Dreams_Screen_PSX17_1_1512803136-768x432.jpg'),
(19, 8, 'https://stylestor.ir/wp-content/uploads/2019/11/ST_103367__8.jpg'),
(20, 8, 'https://cdn.zoomg.ir/2019/2/60233227-0565-4b25-8044-f06e83daa80e.jpg'),
(21, 8, 'http://cdn.zoomib.ir/2021/02/d8b3db8cd8b3d8aad985-d985d988d8b1d8af-d986db8cd8a7d8b2-d8a8d8a7d8b2db8c-far-cry-new-dawn-d985d8b4d8aed8b5-d8b4d8af_60377af3d2db4.jpeg'),
(22, 9, 'https://cdn.zoomg.ir/2019/12/f468d1c6-d302-4099-a07e-c9532028bf9f.jpg'),
(23, 9, 'https://cdn.zoomg.ir/2018/6/0efa8bf2-8c96-429f-9827-e17a05520546.jpg'),
(24, 10, 'https://cdn.zoomg.ir/2018/4/ef1b150e-81f7-4fdc-8580-7d8c86a651e5.jpg'),
(25, 10, 'https://cdn.zoomg.ir/2021/2/god-of-war-2018-ps4-1.jpg'),
(26, 10, 'http://shahraranews.ir/files/fa/news/1399/7/23/208756_654.jpg'),
(27, 11, 'https://igamer.ir/wp-content/uploads/2019/02/Metro-Exod-price.jpg'),
(28, 11, 'https://cdn.zoomg.ir/2019/2/62d58326-ca7f-4f37-bd67-728f0b5725bb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `saleSakht` text COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` text COLLATE utf8_persian_ci NOT NULL,
  `avamel` text COLLATE utf8_persian_ci NOT NULL,
  `keshvar` text COLLATE utf8_persian_ci NOT NULL,
  `zaman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `description`, `saleSakht`, `price`, `image_url`, `avamel`, `keshvar`, `zaman`) VALUES
(1, 'La Haine', 'نفرت ، نام فیلمی جنایی و غم‌انگیز محصول سال ۱۹۹۵ به کارگردانی متیو کاسوویتس می‌باشد. این فیلم روایت‌گر داستان بیست و چهار ساعت از زندگی سه مرد جوان فرانسوی در یکی از شهرهای حومه فرانسه را روایت می‌کند ، بعد از یک شروش بزرگ و شدید ، آن‌ها با سرقت یک اسلحه مرتکب کارهایی می‌شوند که عواقب سنگینی برایشان به وجود می‌آورد که…', '1995', 10, 'https://i.pinimg.com/originals/6f/d7/9e/6fd79ea1fddb758c8c53a5f18015bab5.jpg', 'ستارگان : Vincent Cassel, Hubert Kounde, Saïd Taghmaoui, Abdel Ahmed Ghili\r\nکارگردان : Mathieu Kassovitz', 'فرانسه', 97),
(2, ' جدایی نادر از سیمین ', 'جدایی نادر از سیمین ، فیلمی اجتماعی و خانوادگی محصول سال ۱۳۸۹ به کارگردانی اصغر فرهادی می‌باشد. این فیلم داستان زوجی است که در آستانه طلاق هستند و با ترک خانه توسط سیمین ، نادر زنی باردار را برای مراقبت از پدرش که مبتلا به آلزایمر است به خانه می‌آورد با این ورود اتفاقاتی رقم می‌خورد که سرنوشت دو خانواده را تحت شعاع قرار می‌دهد و…', '1389', 15, 'https://static1.borna.news/servev2/13K6yrtUVKPE/KxuoffTghAA,/%D8%A7%DB%8C%D8%B1%D8%A7%D9%86+%D8%B3%DB%8C%D9%86%D9%85%D8%A7-+%D9%BE%D8%B1%D8%B3+%D8%AA%DB%8C+%D9%88%DB%8C-+26+%D8%AF%DB%8C.jpg', 'تهیه‌کننده : اصغر فرهادی\r\nنویسنده : اصغر فرهادی\r\nستارگان : لیلا حاتمی ، پیمان معادی ، شهاب حسینی\r\nکارگردان : اصغر فرهادی', 'ایران', 123),
(3, 'The Silence Of The Lambs', 'سکوت بره‌ها ، فیلمی جنایی و غم‌انگیز محصول سال ۱۹۹۱ به کارگردانی جاناتان دمی می‌باشد. مامور تازه کار اف‌بی‌آی کلاریس استارلینگ توسط جک کرافورد از آکادمی آموزشی اف‌بی‌آی در کوانتیکوو ، ویرجینیا انتخاب می‌شود. او ماموریت می‌یابد تا با هانیبال لکتر که یک روانشناس و قاتل زنجیره‌ای است ، گفتگو نماید چرا که اعتقاد دارد که لکتر ممکن است بتواند به آن‌ها در پیدا کردن بیل بوفالو ، قاتلی زنجیره‌ای که پوست قربانیانش را از تن جدا می‌نماید ، کمک نماید و…', '1991', 50, 'https://consequence.net/wp-content/uploads/2020/12/Hannibal-Lecter-in-The-Silence-of-the-Lambs.jpg?quality=80', 'ستارگان : Jodie Foster, Anthony Hopkins, Lawrence A. Bonney, Lawrence T. Wrentz\r\nکارگردان : Jonathan Demme', 'آمریکا', 139),
(4, 'Schindlers List ', 'فهرست شیندلر ، فیلمی بیوگرافی و غم‌انگیز محصول سال ۱۹۹۳ به کارگردانی استیون اسپیلبرگ می‌باشد. در زمانی که لهستان توسط نازی‌ها اشغال شده ، کارخانه ‎داری به نام اسکار شیندلر سعی می‌کند کارگران یهودی‎اش را از دست نظامیان آلمانی نجات داده و از اعزام آن‌ها به اردوگاه آشویتس جلوگیری کند و…\r\n', '1993', 15, 'https://www.film2movie.asia/content/uploads/Schindlers-List-1993-min.jpg', 'ستارگان : Liam Neeson, Ralph Fiennes, Ben Kingsley, Caroline Goodall\r\nکارگردان : Steven Spielberg', 'آمریکا', 97),
(5, 'V For Vendetta', 'وی مثل وندتا ، نام فیلمی اکشن و علمی تخیلی محصول سال ۲۰۰۵ به کارگردانی جیمز مک‌تیگو می‌باشد. در سال دوهزارو بیست در انگلستان یک رهبر فاشیست به نام آدام ساتلر بر مردم حکومت می‌کند که بر این باور است مردم به آزادی نیازی ندارند و تنها در آرامش بودن برایشان کفایت می‌کند. در همین زمان فرد مرموزی با اسم مستعار وی تصمیم می‌گیرد علیه این نظام فاشیستی برآشوبد. او که نقابی بر چهره دارد جان دختری به اسم ایوی را که مورد هجوم اراذل و اوباش قرار گرفته نجات می‌دهد و سپس از او می‌خواهد که در این راه او را همراهی کند اما ایوی از برخورد حکومت هراس دارد زیرا تلاش‌های گسترده آن‌ها برای کشف هویت واقعی وی آغاز شده است و…\r\n', '2001', 25, 'https://i.dawn.com/large/2013/07/51f269cf50c8d.jpg', 'ستارگان : Hugo Weaving, Natalie Portman, Rupert Graves, Stephen Rea\r\nکارگردان : James McTeigue', 'آمریکا ', 132),
(6, 'Gladiator ', 'گلادیاتور ، فیلمی اکشن و ماجرایی محصول سال ۲۰۰۰ به کارگردانی ریدلی اسکات می‌باشد. یک ژنرال رومی به نام ماکسیموس مورد خیانت قرار می‌گیرد و خانواده‌اش توسط یک شاهزاده فاسد قتل عام می‌شوند. او در پی انتقام‌ ، بعنوان یک گلادیاتور به روم باز می‌گردد و…\r\n', '2000', 15, 'https://www.film2movie.asia/content/uploads/Gladiator-2000-min.jpg', 'ستارگان : Russell Crowe, Joaquin Phoenix, Connie Nielsen, Oliver Reed\r\nکارگردان : Ridley Scott', 'انگلیس ', 154),
(7, 'Pulp Fiction', 'داستان عامه پسند ، فیلمی انیمیشنی محصول سال ۱۹۹۴ به کارگردانی کوئنتین تارانتینو می‌باشد. دو آدم کش به نام‌های وینسنت و جولز از طرف مارسلوس والاس ماموریت می‌یابند تا چمدانی را که دزیده شده ، از سارقان پس بگیرند و در جریان این عملیات به طرز معجزه آسایی نجات پیدا می‌کنند. وینسنت مامور می‌شود تا میا ، همسر والاس را به گردش ببرد ، اما میا بر اثر استفاده‌ی بیش از حد مواد مخدر…\r\n', '1995', 25, 'https://www.film2movie.asia/content/uploads/Pulp-Fiction-1994-min.jpg', 'ستارگان : John Travolta, Uma Thurman, Samuel L. Jackson, Tim Roth\r\nکارگردان : Quentin Tarantino', 'آمریکا', 137),
(8, 'Jurassic Park', 'پارک ژوراسیک ، نام فیلمی اکشن و ماجرایی محصول سال ۱۹۹۳ به کارگردانی استیون اسپیلبرگ می‌باشد. این فیلم داستان تعدادی از دانشمندان است که در یک جزیره پارکی تفریحی ساخته‌اند که در آن دایناسورها را شبیه سازی کرده‌اند. مسئول پروژه تعداد زیادی از دانشمندان را برای بازدید از پارک پیش از بازگشایی فرا می‌خواند. ولی به خاطر خرابکاری و اشتباه ، دایناسورها آزاد می‌شوند و همه تلاش می‌کنند تا از جزیره فرار کنند و…\r\n', '1993', 25, 'https://www.film2movie.asia/content/uploads/Jurassic-Park-1993-min.jpg', 'ستارگان : Sam Neill, Laura Dern, Jeff Goldblum, Bob Peck\r\nکارگردان : Steven Spielberg', 'آمریکا', 154),
(9, 'Wall Street Money Never Sleeps ', 'در حالی‌ که اقتصاد جهانی در آستانه ی فاجعه‌ای بی‌سابقه قرار دارد ، کارگزار جوانی از وال استریت با گوردون جکوِ کهنه‌کار همکار می‌شود تا ماموریت دوجانبه‌ای را به سرانجام برسانند. آن‌ها از یک سو می‌خواهند جامعه ی مالی را از سرنوشت شومی که در راه است مطلع سازند و از سوی دیگر به هویت کسی پی‌ ببرند که مسئول مرگ مربی سابقِ کارگزار جوان بوده است و…\r\n', '2010', 15, 'https://www.film2movie.asia/content/uploads/Wall%20Street%20Money%20Never%20Sleeps%202010.jpg', 'ستارگان : Shia LaBeouf, Michael Douglas, Carey Mulligan, Josh Brolin\r\nکارگردان : Oliver Stone', 'انگبیس', 124),
(10, 'The Transporter', 'ترنسپورتر ، فیلمی اکشن و مهیج محصول سال ۲۰۰۲ به کارگردانی لوییس لتریر و کوری یوئن است. در خلاصه داستان این فیلم آمده است ، فرانک مارتین یک سرباز سابق ارتش است که مهارت‌های زیادی دارد. او که یک مامور انتقال است ، ماموریت می‌گیرد تا یک بسته را تحویل بدهد. او هیچوقت بسته‌هایی را که انتقال می‌دهد باز نمی‌کند ، اما اینبار کنجکاو می‌شود و بسته را باز می‌کند و می‌بیند که یک انسان در آن است و این‌گونه درگیر یکسری مسائل می‌شود و…\r\n', '2002', 20, 'https://www.film2movie.asia/content/uploads/The-Transporter-2002.jpg', '98', 'فرانسه ', 103),
(11, 'Forty Years Of Rocky', 'چهل سالگی راکی تولد یک کلاسیک ، نام فیلمی مستند محصول سال ۲۰۲۰ به کارگردانی درک وین جانسون می‌باشد. بعد از چهل سال از گذشت فیلم راکی، سیلوستر استالونه قصد دارد دوباره نقشی که او را به یک افسانه بدل کرد بازی کند و…\r\n', '2020', 25, 'https://variety.com/wp-content/uploads/2018/11/rocky.jpg?w=681&h=383&crop=1', 'ستارگان : Sylvester Stallone, Carl Weathers, Talia Shire, Burgess Meredith\r\nکارگردان : Derek Wayne Johnson', 'آمریکا', 30),
(12, 'Vanquish ', 'غلبه ، نام فیلمی اکشن و جنایی محصول ۲۰۲۱ به کارگردانی جورج گالو می‌باشد. این فیلم روایت گر داستان زندگی زن جوانی به اسم «ویکتوریا» است که سابقا در یک باند روسی تولید و پخش مواد مخدر کار می کرده اما الان، تمام تلاشش را به کار گرفته تا به خاطر دخترش گذشته تاریکش را پشت سر بگذارد. در این میان، یک افسر پلیس بازنشسته به اسم «دیمون»، با گروگان گرفتن دختر ویکتوریا، او را وادار به انجام خواسته هایش می کند و…\r\n', '2021', 30, 'https://www.film2movie.asia/content/uploads/Vanquish-2021-min.jpg', 'ستارگان : Morgan Freeman, Ruby Rose, Patrick Muldoon, Nick Vallelonga\r\nکارگردان : George Gallo', 'امریکا', 101),
(13, 'The Woman in Black', 'داستان فیلم درباره ی یک وکیل جوان است که هنگام سفر به روستایی دور افتاده متوجه می شود که این روستا بیش از اندازه غیرمعمولی و عجیب است و ظاهراً اتفاقات هولناکی در آنجا رخ داده است. حال این وکیل جوان در تلاش است تا از رازهای هولناک این روستا سر در بیاورد. اما…\r\n', '2012', 15, 'https://www.film2movie.asia/content/uploads/The%20Woman%20in%20Black%202012.jpg', 'ستارگان : Daniel Radcliffe, Janet McTeer, Ciarán Hinds, Emma Shorey\r\nکارگردان : James Watkins', 'انگلیس ', 124),
(14, 'The Twilight Saga', 'گرگ و میش ماه نو ، فیلمی غم‌انگیز و فانتزی محصول سال ۲۰۰۹ به کارگردانی کریس وایتز می‌باشد. بلا اکنون هجده سال دارد ، و در خفا با خود نگران این موضوع است که در حالیکه او پای به سن می‌گذارد ، ادوارد کماکان هفده ساله خواهد ماند. عشق و علاقه آن‌ها هر روز به هم شدیدتر می‌شود. بلا خواهان تبدیل شدن به یک خون‌آشام است تا عشق ابدی ادوارد بماند. از طرفی نیز ادوارد کالن از فرط عشق بی‌حد و حصر به بلا سوان او را ترک می‌کند و…\r\n', '2009', 15, 'https://www.film2movie.asia/content/uploads/The-Twilight-Saga-New-Moon-2009-min.jpg', 'ستارگان : Kristen Stewart, Robert Pattinson, Taylor Lautner, Billy Burke\r\nکارگردان : Chris Weitz', 'آمریکا', 99),
(15, 'The Godfather ', 'پدرخوانده ، فیلمی جنایی و مهیج محصول سال ۱۹۷۲ به کارگردانی فرانسیس فورد کوپولا می‌باشد. در خلاصه داستان این فیلم آمده است ، دون ویتو کورلئونه بزرگ خاندان یک گروه مافیایی پرقدرت به دلیل سالخوردگی و ناتوانی تصمیم می‌گیرد کنترل کارها و اوضاع را به دست پسرش مایکل بسپارد. اما…\r\n', '1972', 25, 'https://www.film2movie.asia/content/uploads/The-Godfather-1972.jpg', 'ستارگان : Marlon Brando, Al Pacino, James Caan, Robert Duvall\r\nکارگردان : Francis Ford Coppola', 'آمریکا', 145);

-- --------------------------------------------------------

--
-- Table structure for table `moviepics`
--

CREATE TABLE `moviepics` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `moviepics`
--

INSERT INTO `moviepics` (`id`, `product_id`, `img`) VALUES
(1, 1, 'http://data.heimat.de/pics/1/a/e/1/5/pic_1506695710_1ae15b1eac2eaf73c575fb98db3d14ce.jpeg'),
(2, 1, 'https://i.guim.co.uk/img/media/7794bf2ddfdb1937a836d348863e7b7ea4647d65/0_198_3364_2020/master/3364.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=e644c4c7e2cadd9fb5b06a01ceb15be3'),
(3, 1, 'https://i.pinimg.com/originals/6f/d7/9e/6fd79ea1fddb758c8c53a5f18015bab5.jpg'),
(4, 2, 'https://static4.donya-e-eqtesad.com/thumbnail/gWp79JTi4iHM/QHn8O9nsSzT8qCU7RegsN6Pbb5v74eEtbKeSOh05RabDhrgImY-jqUt7TZyzEhnm/21+%284%29.jpg'),
(5, 2, 'https://img9.irna.ir/d/r2/2019/07/27/4/156505334.jpg'),
(6, 2, 'https://static.etemaadonline.ir//Image/671fa824-b283-4f4e-b594-3e1eb01d7851.jpeg'),
(7, 3, 'https://consequence.net/wp-content/uploads/2020/12/Hannibal-Lecter-in-The-Silence-of-the-Lambs.jpg?quality=80'),
(8, 3, 'https://images.livemint.com/rf/Image-621x414/LiveMint/Period2/2016/06/03/Photos/Processed/movie-kjvC--621x414@LiveMint.jpg'),
(9, 3, 'https://cdn.theatlantic.com/thumbor/zAuMDJwH44zf3P1rB5bAWkPlIIc=/60x14:1857x1025/720x405/media/img/mt/2018/02/hannibal/original.png'),
(10, 4, 'https://m.media-amazon.com/images/M/MV5BOTIxMTUzMmUtODU2MS00MDhjLTlmMGQtMzNhZTFhOTI5ZjE5XkEyXkFqcGdeQXRoaXJkLXBhcnR5LXZpZGVvLXVwZGF0ZXI@._V1_CR0,45,480,270_AL_UX477_CR0,0,477,268_AL_.jpg'),
(11, 4, 'https://i.guim.co.uk/img/media/208d00c732eeed823ec55afe35faf252843e0c59/0_0_2520_1760/master/2520.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=301f902c383b19fbf4dfc83c289feb57'),
(12, 5, 'https://images-na.ssl-images-amazon.com/images/G/01/digital/video/hero/Movies/Top250/B000I186FW_vforvendetta_UXWB1._SX1080_.jpg'),
(13, 5, 'https://fastly.syfy.com/sites/syfy/files/styles/1200x680/public/2018/11/v_for_vendetta.jpg?offset-x=0'),
(14, 5, 'https://i.dawn.com/large/2013/07/51f269cf50c8d.jpg'),
(15, 6, 'https://i.guim.co.uk/img/media/384faecfbbc32859bc269b915a3f1fdeaa60a266/154_360_2795_1677/master/2795.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=059580cd4914df4339be6116c473ed0c'),
(16, 6, 'https://variety.com/wp-content/uploads/2016/02/gladiator.jpg?w=681&h=383&crop=1'),
(17, 6, 'https://static2.srcdn.com/wordpress/wp-content/uploads/2019/12/Gladiator-BTS-Header.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5'),
(18, 7, 'https://mediaproxy.salon.com/width/1200/https://media.salon.com/2019/07/pulp-fiction.jpg'),
(19, 7, 'https://www.juanvilar.com/wp-content/uploads/2019/09/Pulp-fiction.jpg'),
(20, 8, 'https://images-na.ssl-images-amazon.com/images/G/01/digital/video/hero/Movies/2001/B00003CXXS_JurassicParkIII_UXNB1._V5f7289d9596f3e3c633bad90b8974644_SX1080_.jpg'),
(21, 8, 'https://nofilmschool.com/sites/default/files/styles/facebook/public/jurassic_park_sacle_.jpg?itok=C-j0Auc_'),
(22, 8, 'https://i.redd.it/htkmfq5zszo51.png'),
(23, 9, 'https://amp.thenationalnews.com/image/policy:1.558149:1499933502/image/jpeg.jpg?f=16x9&w=700&$p$f$w=15b47cd'),
(24, 9, 'https://static01.nyt.com/images/2010/09/24/arts/24wallspan/JP-WALL-articleLarge.jpg?quality=75&auto=webp&disable=upscale'),
(25, 9, 'https://i.guim.co.uk/img/static/sys-images/Film/Pix/pictures/2011/1/11/1294755406420/Michael-Douglas-in-Wall-S-007.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctZGVmYXVsdC5wbmc&enable=upscale&s=88e95d97551f39319c23ead3b14b9f81'),
(26, 10, 'http://theactionelite.com/wp-content/uploads/2018/01/the-transporter-4.jpg'),
(27, 10, 'https://townsquare.media/site/442/files/2015/09/transporter-2-298879l.jpg'),
(28, 11, 'https://variety.com/wp-content/uploads/2018/11/rocky.jpg?w=681&h=383&crop=1'),
(29, 11, 'https://icofilm.ir/wp-content/uploads/2020/06/40-Years-of-Rocky-Birth-a-Classic-%D8%AA%D8%B1%DB%8C%D9%84%D8%B1-%D9%81%DB%8C%D9%84%D9%85.jpeg'),
(30, 11, 'https://ts2.tarafdari.com/contents/user389174/content-article/0799e2f1-eb64-4ee0-a839-0cf9aef74feb-r4_rocky_drago_1_1.jpg'),
(31, 12, 'https://static1.srcdn.com/wordpress/wp-content/uploads/2021/04/vanquish-film-review-2021.jpg'),
(32, 12, 'https://static0.srcdn.com/wordpress/wp-content/uploads/2021/04/vanquish-2021-ruby-rose.jpg'),
(33, 13, 'https://upload.wikimedia.org/wikipedia/en/f/f3/Woman_in_black_ver4.jpg'),
(34, 13, 'https://www.pluggedin.com/wp-content/uploads/2019/12/the-woman-in-black-1024x529.jpg'),
(35, 14, 'https://d1nslcd7m2225b.cloudfront.net/Pictures/1024x536/6/8/6/1162686_Breaking-Dawn-part-2.jpg'),
(36, 14, 'https://fastly.syfy.com/sites/syfy/files/styles/1200x680/public/2018/12/the-complete-twilight-saga-movie-poster.jpg?offset-x=0'),
(37, 15, 'https://lh3.googleusercontent.com/proxy/Ld1QhL0cmvfGxsRO8KzRekeMM_GfUamVmKfqkF4RGGEXLP2B6cX_SZmGlBne7IFKW7iPahDm-vNGqIG4Gbi_2CgPGfP2IAbbTMiRJ8XPqPRM18YgmPOSShwa'),
(38, 15, 'https://m.media-amazon.com/images/M/MV5BYWNlN2U4YjQtMzI3NC00ZjkxLWEwMTItYWRlNDUxYTYwYjVlXkEyXkFqcGdeQWpvaG5oYXJ0._V1_UX477_CR0,0,477,268_AL_.jpg'),
(39, 15, 'https://variety.com/wp-content/uploads/2017/01/godfather-part-ii.jpg?w=681&h=383&crop=1');

-- --------------------------------------------------------

--
-- Table structure for table `pageviewgame`
--

CREATE TABLE `pageviewgame` (
  `id` int(11) NOT NULL,
  `img_slide` text COLLATE utf8_persian_ci NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `pageviewgame`
--

INSERT INTO `pageviewgame` (`id`, `img_slide`, `name`) VALUES
(1, 'https://cdn.narestan.com/wp-content/uploads/2020/02/9.jpg', 'Resident Evil 3 Remake'),
(2, 'https://cdn.narestan.com/wp-content/uploads/2020/02/10.jpg', 'Final Fantasy 7 Remake'),
(3, 'https://digiro.ir/wp-content/uploads/2020/09/digiro-2710.jpg', 'Red Dead Redemption 2'),
(4, 'https://digiro.ir/wp-content/webp-express/webp-images/uploads/2020/09/digiro-2954-600x339.jpg.webp', 'Grand Theft Auto V'),
(5, 'https://digiro.ir/wp-content/webp-express/webp-images/uploads/2020/09/digiro-3417-600x339.jpg.webp', 'The Last of Us Remastered\r\n'),
(6, 'https://digiro.ir/wp-content/webp-express/webp-images/uploads/2020/09/digiro-3704-600x339.jpg.webp', 'God of War\r\n'),
(7, 'https://digiro.ir/wp-content/webp-express/webp-images/uploads/2020/09/digiro-4436-600x339.jpg.webp', 'Metal Gear Solid V');

-- --------------------------------------------------------

--
-- Table structure for table `pageviewmovie`
--

CREATE TABLE `pageviewmovie` (
  `id` int(11) NOT NULL,
  `img_slide` text COLLATE utf8_persian_ci NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `pageviewmovie`
--

INSERT INTO `pageviewmovie` (`id`, `img_slide`, `name`) VALUES
(1, 'https://images.squarespace-cdn.com/content/v1/59d7e2c7e45a7c0ce235bb55/1556292830701-LR849KLULMTLSWOSGSX0/ke17ZwdGBToddI8pDm48kFdj1LU3QXNrC7XCDJRXSjl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1US_GH6w34F4AbXQYP1mTMh6WZrJMPe9RIQ00FIMO_YvQxJ-BQGo94klLBA8TVf45lA/Avengers-Endgame-Film-Review.jpg', 'Avengers: Endgame'),
(2, 'https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABRgOyyi-E46mUbVNO_iaGIn3ZLuiRqu2XOJPPL7RLPff_NyxVVouuQEbHFVlrtd548dLd9_9-sj3y5UoUzXZEFcu9Yj6.jpg?r=431', 'twilight saga'),
(3, 'https://supertabthemes.com/wp-content/uploads/2019/03/1-68.jpg', 'rocky'),
(4, 'http://www.kapadokya.edu.tr/MediaUploader/King%20Arthur-555.jpg', 'king arthur'),
(5, 'https://images.tbs.com/tbs/$dyna_params/https%3A%2F%2Fi.cdn.tbs.com%2Fassets%2Fimages%2F2019%2F10%2FHangover-2048x1536.jpg', 'hangover '),
(6, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnQw94_63i0EYams7TM9R94YE8-3sLN-DYydVQWOu0Gq1DJD3Wa_KJFAyEKn5sl19NOHM&usqp=CAU', 'batman '),
(7, 'https://images.theconversation.com/files/81618/original/image-20150514-28626-5j5514.JPG?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip', 'mad max');

-- --------------------------------------------------------

--
-- Table structure for table `pageviewserial`
--

CREATE TABLE `pageviewserial` (
  `id` int(11) NOT NULL,
  `img_slide` text COLLATE utf8_persian_ci NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `pageviewserial`
--

INSERT INTO `pageviewserial` (`id`, `img_slide`, `name`) VALUES
(1, 'https://images.saymedia-content.com/.image/t_share/MTc0NDgzNTY1Mjg1NzQ2MDI0/dexter-season-1-a-retrospective-review.jpg', 'Dexter'),
(2, 'https://www.tvfestival.com/img/news/10-anecdotes-prison-break/prison-break-1.jpg', 'prison break'),
(3, 'https://variety.com/wp-content/uploads/2020/02/friends.jpg?w=681&h=383&crop=1', 'friends'),
(4, 'http://marcfreccero.com/wp-content/uploads/2017/05/MacLarens-Pub-700x457.jpg', 'how imate your mother'),
(5, 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202001/Breaking_Bad.jpeg?Ifrqi.v01Y0KfAlAyY172HCu8HZTJJvy&size=770:433', 'breaking bad '),
(6, 'https://www.whats-on-netflix.com/wp-content/uploads/2018/12/Netflix-Defenders.jpg', 'defenders series'),
(7, 'https://leganerd.com/wp-content/uploads/2017/03/Iron-Fist.jpg', 'iron fist series');

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `id` int(11) NOT NULL,
  `image_url` text COLLATE utf8_persian_ci NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `saleSakht` text COLLATE utf8_persian_ci NOT NULL,
  `price` int(11) NOT NULL,
  `avamel` text COLLATE utf8_persian_ci NOT NULL,
  `keshvar` text COLLATE utf8_persian_ci NOT NULL,
  `zaman` int(11) NOT NULL,
  `fasl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `serial`
--

INSERT INTO `serial` (`id`, `image_url`, `name`, `description`, `saleSakht`, `price`, `avamel`, `keshvar`, `zaman`, `fasl`) VALUES
(1, 'https://static.wikia.nocookie.net/teen-wolf-pack/images/5/50/Wiki-background/revision/latest?cb=20200606011541', 'Teen Wolf', 'پسری است به نام اسکات مک مال که نقش اول این سریال را دارد و در ابتدا ی فصل در نیمه های شب به همراه دوستش به جنگل میروند و یک موجود وحشی اسکات را گاز می گیرد و اسکات بعد از مدتی میفهمد که تبدیل به....', '2011', 50, 'ستارگان : Tyler Posey, Dylan O’Brien, Holland Roden\r\n\r\nکارگردان : Jeff Davis', 'آمریکا', 42, 6),
(2, 'https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/01/dexter-showtime-michael-c-hall-angel-poster-social-featured.png', 'Dexter', 'داستان این سریال درباره قاتلی خونسرد و حرفه ای به نام دکستر می باشد که هم در اداره پلیس مشغول به کار است و هم در زمان مقتضی به قتلهای زنجیرهای خود می پردازد. دکستر دارای ظاهری بسیار آرام و دوست داشتنی است، به گونه ای که همه همکارانش او را بسیار دوست می دارند ولی این ظاهر دوست داشتنی پوششی برای پنهان کردن آن چیزی است که سالها در نهاد او وجود داشته و ان چیزی نیست جز اشتیاق به کشتن، ولی نه کشتن هر کس، بلکه کشتن کسانی که سزاوار مردن هستند...', '2008', 55, 'سازندگان: James Manos, Jr.\r\n\r\nستارگان :Michael C. Hall, Jennifer Carpenter and Lauren Velez\r\n\r\nتماشای این سریال به افراد زیر ۱۷ سال توصیه نمی شود.', 'میامی', 55, 8),
(3, 'https://cdn.zoomg.ir/2016/02/fear-the-walkingf-1.jpg', 'Dare Devil', 'پس از آنکه خطر فیسک از بین می‌رود، بحرانی تازه آغاز می‌شود. مرداک و فاگی شروع به دفاع از موکلی با گذشته رازآلود می‌کنند. در حالی که مرداک در پی یک حمله دچار آسیب شده، و فاگی و کارن تلاش می‌کنند تا موکل جدیدشان را حفاظت کنند و…', '2012', 80, 'ژانر: اکشن، جنایی، درام\r\nسازندگان: Drew Goddard\r\nستارگان: Charlie Cox, Vincent D’Onofrio, Deborah Ann Woll\r\nشبکه پخش کننده: Netflix\r\nسالهای پخش: ۲۰۱۶\r\nامتیاز: ۸٫۸ از ۱۰', 'امریکا', 55, 3),
(4, 'https://metro.co.uk/wp-content/uploads/2020/12/PRI_177521411.jpg?quality=90&strip=all&zoom=1&resize=644%2C338', 'Vikings', 'داستان سریال Vikings (به فارسی: وایکینگ ها) دربارهٔ راگنار لاثبروک (با بازی تراویس فیمل)، یکی از قهرمانان باستانی اسکاندیناوی در عصر وایکینگ‌ها است. راگنار، که یک وایکینگ کشاورز است، برای اولین بار پیشنهاد حمله به غرب و انگلستان را مطرح می‌کند، و همراه برادر جنگجوی خود، رولو (کلایو استندن)، و همسرش لاگرتا (کاترین وینیک)، که یک باکره‌سپر است، به آنجا سفر می‌کنند و ...', '2012', 65, 'ژانر: اکشن ، تاریخی ، درام\r\n\r\nزیرنویس فارسی / English: دارد\r\n\r\nفرمت: MKV\r\n\r\nGustaf Skarsgård - Katheryn Winnick - Alexander Ludwig - Travis Fimmel - Clive Standen - Clive Standen - Maude Hirst - Jordan Patrick Smith - Alyssa Sutherland - Moe Dunford - Linus Roache - Georgia Hirst', 'کانادا', 45, 6),
(5, 'https://pixelz.cc/wp-content/uploads/2019/12/the-witcher-netflix-henry-cavill-portrait-uhd-4k-wallpaper.jpg', 'The Witcher', 'گرالت یک شکارچی هیولای تنهاست که تلاش می‌کند تا جایگاه خود را در دنیایی پیدا کند که از هیولاهای درونش بی‌رحم‌تر است. اما سرنوشت او را به سمت جادوگری قدرتمند (ینفر) و شاهزاده خانمی جوان (سیری) با یک راز بسیار خطرناک می‌کشاند, این سه باید یاد بگیرند تا با یکدیگر از این سرزمینی که هر روز خطرناک‌تر می‌شود عبور کنند .', '2019', 45, 'ستارگان:\r\nHenry Cavill\r\nFreya Allan\r\nAnya Chalotra\r\nMimi Ndiweni\r\n\r\n', 'امریکا', 40, 1),
(6, 'https://tvseriesfinale.com/wp-content/uploads/2018/11/frontier02-590x349.png', 'Frontier', 'سریال مرز (Frontier) دکلان هارپ، یک شرور ایرلندی/کانادایی را که در تلاش برای شکستن انحصار شرکت خلیج هادسون برای تجارت خز است را دنبال می کند...\r\n', '2016 ', 45, 'بازیگران : Greg Bryk، Jason Momoa، Landon Liboiron', 'کانادا', 45, 3),
(7, 'https://static01.nyt.com/images/2017/01/10/arts/10TABOO/10TABOO-superJumbo.jpg', 'Taboo', 'سریال تابو (Taboo) سریالی درام، رازآلود و مهیج محصول سال 2017 محصول مشترک شبکه های بی بی سی وان و اف اکس کشور انگللستان است. «ریدلی اسکات» تهیه کنندگی این سریال را بر عهده داشته است. بازیگرانی چون «تام هاردی»، «اونا چاپلین»، «جاناتان پرایس»، «مایکل کلی»، «دیوید هیمن»، «جفرسون هال» و «جسیکا باکلی» در آن به ایفای نقش پرداخته اند. تابو نقد های مثبتی دریافت کرد و در سایت IMDB در رتبه 135 برترین محصولات تلویزیونی قرار گرفت. اعلام شده است که فصل دوم این سریال در سال 2018 پخش خواهد شد.', '2017 ', 30, 'بازیگران : David Hayman، Jonathan Pryce، Oona Chaplin', 'انگلستان', 30, 1),
(8, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2017/12/lucifer-season-3.jpg', 'Lucifer', 'لوسیفر، فرشته ی طرد شده، از حکمرانی بر جهنم خسته شده است و برای زندگی تازه به لس آنجلس می آید تا در آنجا وارد ماجراجویی های جدید و عجیب شود…', '۲۰۱۵', 55, 'کارگردان :Tom Kapinos\r\n\r\nستارگان :Tom Ellis,Lauren German,D.B. Woodside', 'آمریکا', 40, 5),
(9, 'https://img-www.tf-cdn.com/show/2/godfather-of-harlem.jpeg', 'Godfather of Harlem', 'سریال پدرخوانده هارلم (Godfather of Harlem) داستان در خصوص گانگستری به نام بمپی جانسون می باشد که در دهه 1960 راهی هارلم می شود و ...\r\n\r\n', '2019 ', 35, 'بازیگران : Forest Whitaker، Ilfenesh Hadera، Lucy Fry', 'آمریکا', 45, 1),
(10, 'https://res.cloudinary.com/jerrick/image/upload/v1618488773/60782dc5548215001ff126db.jpg', 'The Flash', 'سریال فلش (The Flash) در واقع اسپین آف سریال «پیکان Arrow» می باشد. داستان در مورد بری آلن است، کسی که بعد از انفجار در آزمایشگاه S.T.A.R و قرار گرفتن در معرض ذرات شتاب دهنده به کما می رود. چند ماه بعد از کما بیرون می آید و متوجه سرعت و قدرتی عجیب درون خود می شود که این امکان را به او می دهد تا در سنترال سیتی مثل یک فرشته ی نگهبان که قابل رویت نمی باشد، حرکت کند. در حال حاضر تنها دوستان بری می دانند که او تبدیل به سریعترین مرد زنده جهان شده است. اما او بزودی متوجه میشود که تنها کسی نیست که در هنگام انفجار، قدرت فرا انسانی به دست آورده و افراد دیگری هم هستند که این قدرت را به دست آورده اما در راه درستی از آن استفاده نمیکنند. بنابراین بری آلن با آزمایشگاه استار همکاری میکند و مامور می شود تا از مظلومان شهر در برابر حوادث دفاع کند...', '2014 ', 50, 'بازیگران : Candice Patton، Carlos Valdes، Danielle Panabaker', 'آمریکا', 55, 7),
(11, 'https://images.indianexpress.com/2020/05/the-walking-dead-1200.jpg', 'Walking Dead', 'سریال مردگان متحرک (The Walking Dead) یک جنگی تمام عیار را برای نیگان و ناجیان به ارمغان می آورد. نجات دهنده ها بزرگتر، مجهز تر و بی رحم تر می باشند ولی ریک و جوامع متحد برای وعده آینده ای روشن تر مبارزه می کنند. همانطور که آنها حمله ای اکشن را شروع می کنند، خطوط نبرد شکل می گیرند.تاکنون، بقاء تنها موضوع مهم برای ریک و گروه بوده ولی این موضوع کافی نبوده است. آنها برای باز پس گرفتن آزادی خود باید مبارزه کنند، و این گونه می توانند زندگی کنند. این گونه می توانند بازسازی کنند. همانند هر نبردی، آنها تلفاتی خواهند داشت. اما از آنجا که ریک نیرو های الکساندریا، مگی نیرو های هیل تاپ و شاه ازکیل نیرو های کینگدوم را رهبری می کنند، احتمالا حضور نیگان و ناجیان در این دنیا در حال رسیدن به پایان است.', '2010 ', 75, 'بازیگران : Andrew Lincoln، Danai Gurira، Melissa McBride', 'آمریکا', 50, 11),
(12, 'https://tnsmedia.imgix.net/2021/03/Resident-Alien.jpeg?auto=compress&fm=pjpg&ixlib=php-3.3.0&s=c751119f4330886ea5834219c9e690dd', 'Resident Alien', 'سریال بیگانه ساکن زمین (Resident Alien) داستان سفر یک موجود فضایی به زمین را به تصویر می کشد که مجبور به ساکن شدن در شهر کلرادوی آمریکا می شود. او برای ادامه زندگی، هویت یک دکتر را جعل می کند و از این طریق به حل پرونده های جنایی می پردازد تا اینکه دکتر واقعی به قتل می رسد و هویت او در خطر افشا شدن قرار می گیرد.', '2021 ', 30, 'بازیگران : Alan Tudyk، Alice Wetterlund، Corey Reynolds', 'آمریکا', 35, 40),
(13, 'https://thedirect.s3.amazonaws.com/media/article_full/pocwv.jpg', 'WandaVision', 'سریال وانداویژن (WandaVision) داستان این سریال درمورد دو ابر قهرمان به نام های «واندا ماکسیموف» و «ویژن» است که زندگی شان را به دور حوادث و مثل 2 انسان معمولی می گذرانند اما همه چیز آنطور که به نظر می رسد، نیست.', '2021', 50, 'بازیگران : Elizabeth Olsen، Kathryn Hahn، Paul Bettany', 'آمریکا', 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `serialpics`
--

CREATE TABLE `serialpics` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `serialpics`
--

INSERT INTO `serialpics` (`id`, `product_id`, `img`) VALUES
(1, 1, 'https://www.tanikal.com/wp-content/uploads/2017/09/TEEN-WOLF-1.jpg'),
(2, 1, 'https://lh3.googleusercontent.com/proxy/_3EiV8HEE5rtIiD9kzJjr1QdjM0Rf_mpSPcENDYIAYDASMtWrSXixn8E-Iebkk2RPome4Q3kcEL3CQLyoucshpmL5tRNsaW6t03oM7SCrN-CnW0qvmOXh1-gktk'),
(3, 1, 'https://static1.srcdn.com/wordpress/wp-content/uploads/2020/03/teen-wolf-season-1-poster.jpg'),
(4, 2, 'https://tvbrics.com/upload/iblock/882/8825f0ae264748acb03538b94385bdd5.jpg'),
(5, 2, 'https://tvline.com/wp-content/uploads/2020/10/dexter-revival.jpg?w=620'),
(6, 2, 'https://tvseriesfinale.com/wp-content/uploads/2021/01/dexter-showtime.jpg'),
(7, 3, 'https://wallpapercave.com/wp/wp2854989.jpg'),
(8, 3, 'https://moviemag.ir/images/phocagallery/Serial/Daredevil/thumbs/phoca_thumb_l_3.jpg'),
(9, 3, 'https://dl.psarena.ir/wp-content/uploads/2018/09/Daredevil-Season-3-Matt-Murdock-Karen-Page.jpg'),
(10, 4, 'https://albalou.com/wp-content/uploads/2018/01/43-3.jpg'),
(11, 4, 'https://www.salamcinama.ir/public/images/usrUploader/vikingowie5.jpg'),
(12, 4, 'https://www.bestshow.co/uploads/bestshow/Eminem_vikings_2.jpg'),
(13, 5, 'https://tvguide1.cbsistatic.com/i/2019/07/01/0d412c89-e259-459c-9c5e-1e3def511177/witcher-reg.jpg'),
(14, 5, 'https://i.pinimg.com/originals/72/dc/5a/72dc5ad642d8ec9ec4648220e5df219d.jpg'),
(15, 5, 'https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F190701125354-01-netflix-the-witcher.jpg'),
(16, 6, 'https://files.virgool.io/upload/users/92055/posts/yibsgtmaz6w4/aagdtqsbvobl.jpeg'),
(17, 6, 'https://varune.com/wp-content/uploads/2019/11/compressed-lrfj.jpg'),
(18, 6, 'https://digiro.ir/wp-content/uploads/2020/09/digiro-0832.jpg'),
(19, 7, 'https://upload.blaxup.tv/img/2017/01/mv5bndc1ndc1mjmtnje3nc00ymfhltkxodetzdi0mwzhymrmy2q0xkeyxkfqcgdeqxvynjuwnzk3ndc_v1__2017-01-08-00:38:42.jpg'),
(20, 7, 'https://upload.blaxup.tv/img/2017/01/mv5bmje4mdq5ndy5mv5bml5banbnxkftztgwmda1nziwmti_v1_sx1500_cr001500999_al__2017-01-08-00:38:39.jpg'),
(21, 7, 'https://s.yimg.com/uu/api/res/1.2/B9bCyFQ8ccMiWZ5SueGuHw--~B/aD00MTI7dz02MTg7YXBwaWQ9eXRhY2h5b24-/http://media.zenfs.com/en_US/News/TheWrap/The_Evolution_of_Tom_Hardy-fb4b021e3f8832f7413c079895874a36'),
(22, 8, 'https://www.comicon.ir/wp-content/uploads/2020/03/lucy-eyes-1.jpg'),
(23, 8, 'https://www.bahook.com/laravel-filemanager/photos/407/%D8%B3%D8%B1%DB%8C%D8%A7%D9%84%20%D9%87%D8%A7%DB%8C%20%D8%B9%DB%8C%D8%AF/L.jpg'),
(24, 8, 'https://www.salamcinama.ir/public/images/usrUploader/Lucifer-best-episode-Who-is-da-New-King-of-Hell.jpg'),
(26, 9, 'https://www.namava.ir/blog/wp-content/uploads/2019/10/cropped-godfather-of-harlem-season-1-2019.jpg'),
(27, 9, 'https://www.namava.ir/blog/wp-content/uploads/2019/10/godfather-of-harlem-2019.jpg'),
(28, 10, 'http://s8.picofile.com/file/8292749126/4841273_flash_wallpapers.jpg'),
(29, 10, 'http://s8.picofile.com/file/8292749192/4841335_flash_wallpapers.jpg'),
(30, 10, 'http://s9.picofile.com/file/8292749134/4841289_flash_wallpapers.jpg'),
(31, 11, 'https://vigiato.net/wp-content/uploads/2021/02/media_comicbook_com-thewalkingdeadhomesweethome3-1255783.jpg'),
(32, 11, 'http://dl.topnaz.com/2017/01/the-walking-dead-3-e1485410974141.jpg'),
(33, 11, 'https://twdiran.xyz/wp-content/uploads/e6c4e7ba-2407-46c3-b2dc-ac988bd345ab.jpg'),
(34, 12, 'https://esubtitle.com/wp-content/uploads/2021/01/Resident-Alien-poster.jpg'),
(35, 12, 'https://cdn.tek-nic.com/media/images/movie-poster/series/episodes/resident-alien/s01e06.jpg'),
(36, 13, 'https://cdn.sargarme.com/uploads/2020/02/Wandavision-Poster.jpg'),
(37, 13, 'https://dl.psarena.ir/wp-content/uploads/2020/11/14.jpg'),
(38, 13, 'https://dl.psarena.ir/wp-content/uploads/2020/11/Wandavision.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_persian_ci NOT NULL,
  `pic` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `name`, `pic`) VALUES
(1, 'هنری کویل', 'https://vigiato.net/wp-content/uploads/2020/06/5LvRmLNHhFcnf6ZE86Zn.jpg'),
(2, 'لیندا کاردلینی', 'https://teletv.plus/wp-content/uploads/2020/07/E01I-300x158.jpg'),
(4, 'مارگو رابی', 'https://gitinews.co/wp-content/uploads/2021/01/%D9%85%D8%A7%D8%B1%DA%AF%D9%88%D8%AA-%D8%B1%D8%A7%D8%A8%DB%8C-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D9%81%DB%8C%D9%84%D9%85-%D8%A8%D8%A7%D8%B1%D8%A8%DB%8C-%D9%BE%DB%8C%D8%B4-%D8%B1%D9%88-%D8%B4%D9%88%D8%AE%DB%8C-%D9%85%DB%8C-%DA%A9%D9%86%D8%AF.jpg'),
(5, 'رابرت دنیرو\r\n', 'https://media.mehrnews.com/d/2018/10/03/3/2915939.jpg'),
(6, 'لئوناردو دی‌کاپریو\r\n', 'https://www.1pezeshk.com/wp-content/uploads/2020/11/TELEMMGLPICT000027014340_trans_NvBQzQNjv4BqM37qcIWR9CtrqmiMdQVx7HKcsGtiuU_lafizKj4PQO0.jpeg'),
(7, 'تام هنکس\r\n', 'https://www.beytoote.com/images/stories/fun/tom-hanks-01.jpg'),
(8, 'کریستین بیل\r\n', 'https://cdn.zoomg.ir/2020/3/c02e4540-8606-476e-83b8-cf493b6e50ae.jpg'),
(9, 'جانی دپ\r\n', 'https://static.etemaadonline.ir//Image/22ef4ca0-bc06-4821-be2c-477178bd779d.jpeg'),
(10, 'تام هاردی\r\n', 'https://www.parsnaz.com/images/2018/10/983427600.jpg'),
(11, 'اسکارلت جوهانسون', 'https://parvaresheafkar.com/wp-content/uploads/2017/12/scarlettjohansson.jpg'),
(12, 'گل گدوت', 'https://minevisam.com/wp-content/uploads/2019/10/Gal-Gadot-pics-61.jpg'),
(13, 'اما استون', 'https://persianv.com/maharat/wp-content/uploads/sites/18/2018/11/%D8%B2%D9%86%D8%AF%DA%AF%DB%8C-%D8%A7%D9%85%D8%A7-%D8%A7%D8%B3%D8%AA%D9%88%D9%86-2.jpg'),
(14, 'ناتالی پورتمن', 'https://cinemodern.ir/wp-content/uploads/-000//1/natalie-portman.jpg'),
(15, 'ساندرا بولاک', 'https://namakstan.net/wp-content/uploads/2015/05/sandra-bullock-2-namakstan.ir-9.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animation`
--
ALTER TABLE `animation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animationpics`
--
ALTER TABLE `animationpics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gamepics`
--
ALTER TABLE `gamepics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moviepics`
--
ALTER TABLE `moviepics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pageviewgame`
--
ALTER TABLE `pageviewgame`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pageviewmovie`
--
ALTER TABLE `pageviewmovie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pageviewserial`
--
ALTER TABLE `pageviewserial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serialpics`
--
ALTER TABLE `serialpics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animation`
--
ALTER TABLE `animation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `animationpics`
--
ALTER TABLE `animationpics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gamepics`
--
ALTER TABLE `gamepics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `moviepics`
--
ALTER TABLE `moviepics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pageviewgame`
--
ALTER TABLE `pageviewgame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pageviewmovie`
--
ALTER TABLE `pageviewmovie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pageviewserial`
--
ALTER TABLE `pageviewserial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `serialpics`
--
ALTER TABLE `serialpics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
